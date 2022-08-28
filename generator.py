import os
import json

INPUT = 'json'
OUTPUT = 'output'

STRIP_ENUM_PREFIXES = True # Strips enum member name prefixes: .ActionKindA + .ActionKindB -> .A + .B

# If you need to completely replace a type name from the Json data into a native Beef type
REPLACE_TYPE_NAMES = {
    'Int8':'int8',
    'Int16':'int16',
    'Int32':'int32',
    'Int64':'int64',
    'UInt8':'uint8',
    'UInt16':'uint16',
    'UInt32':'uint32',
    'UInt64':'uint64',
    'IntPtr':'int',
    'UIntPtr':'uint',
    'Byte':'uint8',
    'SByte':'int8',
    'Char':'char16',
    'Void':'void',
    'Single':'float',
    'Double':'double',

    # These types are referenced in some function parameters, but they're never actually defined in the metadata..
    # But since they're all used as pointers anyway we just replace them with void and they become void* - it's better than nothing.
    'IPropertyValue':'void',
    'IGraphicsEffectSource':'void',
    'ICompositionSurface':'void',
    'CompositionGraphicsDevice':'void',
    'CompositionCapabilities':'void',
    'DesktopWindowTarget':'void',
    'DispatcherQueueController':'void',

    # These are just random enums that used to be typedefs. They're usually
    # used as uints in the metadata because the typedef isn't in there
    '_FILEOPENDIALOGOPTIONS':'FILEOPENDIALOGOPTIONS',
}

# All Beef structs/classes have GetType(), GetFlags(), Equals(), and ToString() implicitly defined.
# But some COM classes also have these methods, so we replace their names.
REPLACE_COM_METHOD_NAMES = {
    'GetType':'ComGetType',
    'GetFlags':'ComGetFlags',
    'Equals':'ComEquals',
    'ToString':'ComToString'
}

# If you want to pull in a function from a .lib file instead of a .dll (dll is default)
USE_LIB_INSTEAD_OF_DLL = {
    'kernel32',
    'user32',
    'opengl32',
    'ole32',
    'oleaut32',
    'gdi32',
    'winspool',
    'comdlg32',
    'advapi32',
    'shell32',
    'shellwapi',
    'uuid',
    'version',
    'odbc32',
    'odbccp32',
    'ws2_32',
    'mswsock',
}

# If a name in the Json data is a Beef keyword, add it to this list and it will be prepended with '@' 
# e.g. void Foo(int var) -> void Foo(int @var)
REPLACE_KEYWORD_NAMES = {
    'as',
    'append',
    'abstract',
    'base',
    'box',
    'default',
    'defer',
    'delete',
    'extension',
    'function',
    'fixed',
    'in',
    'internal',
    'mut',
    'out',
    'override',
    'params',
    'ref',
    'repeat',
    'stack',
    'scope',
    'static',
    'var',
    'where',
}

# Some APIs define the same names. To avoid name conflicts add one of them to this list along with a replacement.
CONFLICTING_NAME_REPLACEMENTS = {
    'System.Mmc.IImageList' : 'IImageListAlt',
    'System.WindowsSync.IRangeException' : 'IRangeExceptionAlt',
    'System.DistributedTransactionCoordinator.IResourceManager' : 'IResourceManagerAlt',
    'NetworkManagement.QoS.POLICY_ELEMENT' : 'POLICY_ELEMENT_ALT',
    'NetworkManagement.NetworkPolicyServer.IDENTITY_TYPE' : 'IDENTITY_TYPE_ALT',
    'System.Mmc.IComponent' : 'IComponentAlt',
    'System.TpmBaseServices.GetDeviceID' : 'GetDeviceIDAlt', # conflicts with Media.Audio.DirectSound.GetDeviceID
}

# These are structs and unions that aren't referenced anywhere. We don't need to generate them.
UNREFERENCED_TYPES = {
    'HSPRITE__',
    'HLSURF__',
    'HSTR__',
    'HUMPD__',
}

def replace_name(name: str, namespace: str = '') -> str:
    qualified_name = f'{namespace}.{name}'
    if qualified_name in CONFLICTING_NAME_REPLACEMENTS:
        name = CONFLICTING_NAME_REPLACEMENTS[qualified_name]
    if name in REPLACE_KEYWORD_NAMES:
        return '@' + name
    else:
        return name

def replace_type_name(typename: str, namespace: str = '') -> str:
    typename = REPLACE_TYPE_NAMES.get(typename, typename)
    return replace_name(typename, namespace)

def find_common_enum_prefix(enum_name: str, value_names: list[str]) -> str:
    if not STRIP_ENUM_PREFIXES:
        return ''
    if len(value_names) == 0:
        return ''
    
    def split_name_into_parts(name: str) -> list[str]:
        # A_B_C -> [A, B, C]
        # AbcAbc -> [Abc, Abc]
        # A_AbcAbc -> [A, Abc, Abc]
        split_points = []
        prev = ''
        for i, curr in enumerate(name):
            if prev.islower() and curr.isupper():
                split_points.append(i)
            elif prev == '_' and curr != '_':
                split_points.append(i)
            prev = curr
        if len(split_points) == 0:
            return [name]
        parts = []
        for i, curr in enumerate(split_points):
            prev = 0 if i == 0 else split_points[i - 1]
            parts.append(name[prev:curr])
        parts.append(name[split_points[-1]:])
        return parts

    if len(value_names) == 1:
        parts_to_match = [split_name_into_parts(enum_name), split_name_into_parts(value_names[0])]
    else:
        parts_to_match = [split_name_into_parts(name) for name in value_names]

    first_parts = parts_to_match[0]
    index = 0
    while all(index + 1 < len(parts) and parts[index] == first_parts[index] for parts in parts_to_match):
        index += 1
    return ''.join(first_parts[:index])


def get_type_name(type: dict) -> str:
    kind = type['Kind']
    if kind == 'Native' or kind == 'MissingClrType':
        name = type['Name']
        return replace_type_name(name)
    elif kind == 'ApiRef':
        namespace = type['Api']
        name = type['Name']
        target_kind = type['TargetKind']
        if target_kind == 'Com':
            return replace_type_name(name, namespace) + '*'
        elif target_kind != 'Default' and target_kind != 'FunctionPointer':
            raise RuntimeError(f'Unknown TargetKind "{target_kind}"')
        else:
            return replace_type_name(name, namespace)
    elif kind == 'PointerTo' or kind == 'LPArray': # TODO: Not exactly sure what LPArray is.. maybe it's just a *, maybe not..
        child = type['Child']
        return get_type_name(child) + '*'
    elif kind == 'Array':
        child = type['Child']
        shape = type['Shape']
        if shape != None:
            count = type['Shape']['Size']
            return f'{get_type_name(child)}[{count}]'
        else:
            # This is a C flexible array member.
            # In C: struct { int x[]; }
            # In Beef, an array of size 0 compiles just fine, but it's illegal to take it's address or do anything with it.
            return f'{get_type_name(child)}[0]'
    else:
        raise RuntimeError(f'Unexpected type kind "{kind}"')

def get_param_type(param: dict) -> str:
    type = param['Type']
    kind = type['Kind']
    attribs = param['Attrs']
    type_name = get_type_name(type)
    # The problem with replacing raw pointers is that you lose the ability to
    # cast the "wrong" pointer type to the correct one.
    if type_name.endswith('*') and kind != 'LPArray' and 'void' not in type_name:
        if 'Optional' in attribs:
            return type_name #TODO: If this is the last parameter we could default it to null.
        if 'Const' in attribs and 'In' in attribs:
            return 'in ' + type_name[:-1]
        if 'Out' in attribs:
            return 'out ' + type_name[:-1]
        else:
            return 'ref ' + type_name[:-1]
    else:
        return type_name

def remove_duplicate_and_unreferenced_names(objects: list[dict], unreferenced: set[str] = set()) -> list[dict]:
    existing_names = set()
    result = []
    for object in objects:
        name = object['Name']
        if name not in existing_names and name not in unreferenced:
            existing_names.add(name)
            result.append(object)
    return result

def guid_literal(guid: str) -> str:
    guid_hex = ''
    for char in guid:
        if char != '-':
            guid_hex += char
    a = '0x' + guid_hex[0:8]
    b = '0x' + guid_hex[8:12]
    c = '0x' + guid_hex[12:16]
    d = '0x' + guid_hex[16:18]
    e = '0x' + guid_hex[18:20]
    f = '0x' + guid_hex[20:22]
    g = '0x' + guid_hex[22:24]
    h = '0x' + guid_hex[24:26]
    i = '0x' + guid_hex[26:28]
    j = '0x' + guid_hex[28:30]
    k = '0x' + guid_hex[30:32]
    return f'.({a}, {b}, {c}, {d}, {e}, {f}, {g}, {h}, {i}, {j}, {k})'

def needs_return_via_out_parameter(com_method: dict, enums_and_native_typedefs: set[str]) -> bool:
    # https://github.com/microsoft/CsWin32/issues/167
    # COM methods that return C++ structs actually return it via an out pointer 
    # instead of in RAX, even if the struct would fit into 8 bytes.
    # The out parameter needs to come right after the 'this' pointer, so its always parameter number 2.
    # Enums and typedefs to native types don't count as structs here.
    return_type = com_method['ReturnType']
    type_name = get_type_name(return_type)
    if type_name in enums_and_native_typedefs:
        return False
    if return_type['Kind'] != 'ApiRef':
        return False
    if return_type['TargetKind'] == 'Com': # pointer to a COM interface
        return False
    return True

try: os.mkdir(OUTPUT)
except: pass

filenames = os.listdir(INPUT)

# Need to do a prepass to determine what types are native typedefs.
# COM method calling convention returns structs differently than native types.
# So we need to know which types are native and which aren't before we go through COM stuff.
native_typedefs_and_enums = set()
for filename in filenames:
    with open(f'{INPUT}/{filename}') as input:
        content = json.load(input)
        for type in content['Types']:
            kind = type['Kind']
            if kind == 'NativeTypedef' or kind == 'Enum':
                native_typedefs_and_enums.add(type['Name'])

with open('namespaces.txt', 'wt') as namespace_map:
    for filename in filenames:
        with open(f'{INPUT}/{filename}') as input:
            content = json.load(input)
            namespace, ext = os.path.splitext(filename)
            print(namespace)
            with open(f'{OUTPUT}/{namespace}.bf', 'wt') as output:
                constants = content['Constants']
                types = content['Types']
                functions = content['Functions']
                typedefs = []
                function_pointers = []
                enums = []
                structs_and_unions = []
                com_interfaces = []
                com_class_ids = []
                for type in types:
                    kind = type['Kind']
                    if kind == 'NativeTypedef':
                        typedefs.append(type)
                    elif kind == 'Enum':
                        enums.append(type)
                    elif kind == 'Struct' or kind == 'Union':
                        structs_and_unions.append(type)
                    elif kind == 'FunctionPointer':
                        function_pointers.append(type)
                    elif kind == 'Com' or kind == 'ComClassID':
                        if kind == 'ComClassID':
                            com_class_ids.append(type)
                        else:
                            com_interfaces.append(type)
                    else:
                        raise RuntimeError(f'Unhandled type kind "{kind}"')

                # Aparently sometimes the same symbols are present twice in the same interface - and they are exactly the same
                # So we manually de-duplicate them...
                constants          = remove_duplicate_and_unreferenced_names(constants)
                functions          = remove_duplicate_and_unreferenced_names(functions)
                typedefs           = remove_duplicate_and_unreferenced_names(typedefs)
                function_pointers  = remove_duplicate_and_unreferenced_names(function_pointers)
                enums              = remove_duplicate_and_unreferenced_names(enums)
                structs_and_unions = remove_duplicate_and_unreferenced_names(structs_and_unions, UNREFERENCED_TYPES)
                com_interfaces     = remove_duplicate_and_unreferenced_names(com_interfaces)
                com_class_ids      = remove_duplicate_and_unreferenced_names(com_class_ids)

                # Figure out which namespaces we need to include.
                # Step 1: Gather all the types used.
                # Step 2: Check where those types were defined.
                referenced_types = []
                for constant in constants:
                    referenced_types.append(constant['Type'])
                for typedef in typedefs:
                    referenced_types.append(typedef['Def'])
                for function in functions:
                    referenced_types.append(function['ReturnType'])
                    for param in function['Params']:
                        referenced_types.append(param['Type'])
                for function_pointer in function_pointers:
                    referenced_types.append(function_pointer['ReturnType'])
                    for param in function_pointer['Params']:
                        referenced_types.append(param['Type'])
                for struct in structs_and_unions:
                    stack = [struct]
                    while len(stack) > 0:
                        struct = stack.pop()
                        for nested in struct['NestedTypes']:
                            stack.append(nested)
                        for field in struct['Fields']:
                            referenced_types.append(field['Type'])
                for interface in com_interfaces:
                    if interface['Interface'] != None:
                        referenced_types.append(interface['Interface'])
                    for method in interface['Methods']:
                        referenced_types.append(method['ReturnType'])
                        for param in method['Params']:
                            referenced_types.append(param['Type'])

                used_namespaces = set()
                for type in referenced_types:
                    while type['Kind'] == 'PointerTo' or type['Kind'] == 'Array' or type['Kind'] == 'LPArray':
                        type = type['Child']
                    if type['Kind'] == 'ApiRef':
                        used_namespaces.add(type['Api'])
                used_namespaces.discard(namespace) # No need to add using for your own namespace.

                indent = ''
                output.write(f'{indent}namespace Win32.{namespace};\n')
                output.write(f'\n')
                output.write(f'{indent}using System;\n') # Needed for Guid
                for reference in sorted(list(used_namespaces)):
                    output.write(f'{indent}using Win32.{reference};\n')
                output.write(f'\n')
                output.write(f'{indent}static\n')
                output.write(f'{indent}{{\n')
                indent += '\t'

                if len(constants) > 0:
                    output.write(f'{indent}#region Constants\n')

                    for constant in constants:
                        type = get_type_name(constant['Type'])
                        name = replace_name(constant['Name'])
                        value = constant['Value']
                        namespace_map.write(f'{name}, {namespace}\n')
                        if type == 'Guid':
                            guid = guid_literal(value)
                            output.write(f'{indent}public const {type} {name} = {guid};\n')
                        elif type == 'PROPERTYKEY':
                            fmtid = guid_literal(value['Fmtid'])
                            pid = value['Pid']
                            output.write(f'{indent}public const {type} {name} = .({fmtid}, {pid});\n')
                        elif type == 'String':
                            output.write(f'{indent}public const {type} {name} = "{value}";\n')
                        elif type == 'float':
                            output.write(f'{indent}public const {type} {name} = {value}f;\n')
                        elif type == 'uint64':
                            output.write(f'{indent}public const {type} {name} = {value}uL;\n')
                        elif type == 'PWSTR':
                            output.write(f'{indent}public const {type} {name} = (PWSTR)(void*){value};\n')
                        else:
                            output.write(f'{indent}public const {type} {name} = {value};\n')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(typedefs) > 0:
                    output.write(f'{indent}#region Typedefs\n')

                    for type in typedefs:
                        name = type['Name']
                        typedef = type['Def']
                        kind = typedef['Kind']
                        namespace_map.write(f'{name}, {namespace}\n')
                        if kind == 'Native' or kind == 'PointerTo':
                            typedef_name = get_type_name(typedef)
                            output.write(f'{indent}public typealias {name} = {typedef_name};\n')
                        else:
                            raise RuntimeError(f'Unhandled typedef kind "{kind}"')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(enums) > 0:
                    output.write(f'{indent}#region Enums\n')

                    for type in enums:
                        name = replace_type_name(type['Name'], namespace)
                        base_type = replace_type_name(type['IntegerBase'])
                        values = type['Values']
                        value_values = [value['Value'] for value in values]
                        namespace_map.write(f'{name}, {namespace}\n')
                        if len(set(value_values)) != len(value_values):
                            output.write(f'{indent}[AllowDuplicates]\n')
                        if base_type is not None:
                            output.write(f'{indent}public enum {name} : {base_type}')
                        else:
                            output.write(f'{indent}public enum {name}')
                        if len(values) == 0:
                            output.write(' {}\n')
                        else:
                            output.write('\n')
                            output.write(f'{indent}{{\n')
                            indent += '\t'
                            common_prefix = find_common_enum_prefix(name, [value['Name'] for value in values])
                            for value in values:
                                # Sometimes stripping the prefix leaves names that start with numbers - we prefix those with '_'.
                                value_name = value['Name'].removeprefix(common_prefix)
                                if value_name[0].isnumeric():
                                    value_name = f'_{value_name}'
                                value_name = replace_name(value_name)
                                if value_name == 'void':
                                    # There is ONE enum value that when stripped is just 'void'..
                                    value_name = '@void'
                                if base_type is not None and base_type == 'uint64':
                                    output.write(f'{indent}{value_name} = {value["Value"]}uL,\n')
                                else:
                                    output.write(f'{indent}{value_name} = {value["Value"]},\n')
                            indent = indent[:-1]
                            output.write(f'{indent}}}\n')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(function_pointers) > 0:
                    output.write(f'{indent}#region Function pointers\n')

                    for type in function_pointers:
                        name = replace_type_name(type['Name'], namespace)
                        qualified_name = f'{namespace}.{name}'
                        namespace_map.write(f'{name}, {namespace}\n')
                        if qualified_name in CONFLICTING_NAME_REPLACEMENTS:
                            name = CONFLICTING_NAME_REPLACEMENTS[qualified_name]

                        return_type = get_type_name(type['ReturnType'])
                        output.write(f'{indent}public function {return_type} {name}(')
                        parameters = type['Params']
                        for i, param in enumerate(parameters):
                            param_name = replace_name(param['Name'])
                            param_type = get_param_type(param)
                            output.write(f'{param_type} {param_name}')
                            if i < len(parameters) - 1:
                                output.write(f', ')
                        output.write(f');\n')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(structs_and_unions) > 0:
                    output.write(f'{indent}#region Structs\n')

                    for type in structs_and_unions:
                        namespace_map.write(f'{type["Name"]}, {namespace}\n')
                        def process_type(type):
                            global indent
                            name = replace_type_name(type['Name'], namespace)
                            kind = type['Kind']
                            pack = type['PackingSize']
                            attribs = ['CRepr']
                            if kind == 'Union':
                                attribs.append('Union')
                            if pack != 0:
                                attribs.append(f'Packed({pack})')

                            output.write(f'{indent}[{", ".join(attribs)}]\n')
                            output.write(f'{indent}public struct {name}')

                            fields = type['Fields']
                            if len(fields) == 0:
                                output.write(' {}\n')
                            else:
                                output.write('\n')
                                output.write(f'{indent}{{\n')
                                indent += '\t'
                                fams = []
                                for field in fields:
                                    field_name = replace_name(field['Name'])
                                    if field_name == '_bitfield':
                                        x = 123 # I don't think we can do anything with bitfields because there aren't any names for them in the metadata.
                                    field_type = get_type_name(field['Type'])
                                    if field_type.endswith('[0]'): # Is this a flexible array member?
                                        field_type = field_type.removesuffix('[0]')
                                        fams.append((field_type, field_name))
                                        field_type = field_type + '[1]' # Can't take address of 0 sized array in Beef.
                                        field_name = field_name + '_array'
                                    if '_Anonymous_' in field_type and 'Anonymous' in field_name:
                                        output.write(f'{indent}public using {field_type} {field_name};\n')
                                    else:
                                        output.write(f'{indent}public {field_type} {field_name};\n')
                                if len(fams) > 0:
                                    output.write(f'{indent}\n')
                                    for (field_type, field_name) in fams:
                                        fam_name = field_name + '_array'
                                        output.write(f'{indent}public {field_type}* {field_name} mut => &{fam_name}[0];\n')
                                nested_types = type['NestedTypes']
                                if len(nested_types) > 0:
                                    output.write(f'{indent}\n')
                                    for nested_type in nested_types:
                                        process_type(nested_type)
                                # This struct is used as a constant - ideally we would initialize a PROPERTYKEY const like this:
                                #   public const PROPERTYKEY pk = .{ fmtid=..., pid=... };
                                # However constants currently can't be brace initialized, see https://github.com/beefytech/Beef/issues/1278.
                                # So instead we initialize them with a constructor.
                                if name == 'PROPERTYKEY':
                                    output.write(f'{indent}public this(Guid fmtid, uint32 pid)\n')
                                    output.write(f'{indent}{{\n')
                                    indent += '\t'
                                    output.write(f'{indent}this.fmtid = fmtid;\n')    
                                    output.write(f'{indent}this.pid = pid;\n')    
                                    indent = indent[:-1]
                                    output.write(f'{indent}}}\n')
                                indent = indent[:-1]
                                output.write(f'{indent}}}\n')
                        process_type(type)

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(com_class_ids) > 0:
                    output.write(f'{indent}#region COM class IDs\n')

                    for class_id in com_class_ids:
                        name = replace_type_name(class_id['Name'], namespace)
                        guid = guid_literal(class_id['Guid'])
                        namespace_map.write(f'{name}, {namespace}\n')
                        output.write(f'{indent}public const Guid CLSID_{name} = {guid};\n')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(com_interfaces) > 0:
                    output.write(f'{indent}#region COM interfaces\n')

                    for com in com_interfaces:
                        name = replace_type_name(com['Name'], namespace)
                        kind = com['Kind']
                        namespace_map.write(f'{name}, {namespace}\n')
                        if kind != 'Com':
                            raise RuntimeError(f'Encountered COM interface "{name}" of kind "{kind}". We don\'t know how to handle those.')
                        base = com['Interface']
                        base_name = ''
                        if base != None:
                            base_namespace = base['Api']
                            base_name = replace_type_name(base['Name'], base_namespace)
                            if len(base['Parents']) > 0:
                                raise RuntimeError(f'Encountered COM interface "{name}" with parents. We don\'t know how to handle those.')

                        output.write(f'{indent}[CRepr]\n')
                        if base != None:
                            output.write(f'{indent}public struct {name} : {base_name}\n')
                        else:
                            output.write(f'{indent}public struct {name}\n')
                        output.write(f'{indent}{{\n')
                        indent += '\t'

                        guid = com['Guid']
                        if guid != None:
                            output.write(f'{indent}public const new Guid IID = {guid_literal(guid)};\n')
                            output.write(f'{indent}\n')

                        if base == None:
                            output.write(f'{indent}protected VTable* vt;\n')
                        output.write(f'{indent}public new VTable* VT {{ get => (.)vt; }}\n')
                        output.write(f'{indent}\n')

                        methods = com['Methods']
                        if len(methods) > 0:
                            # Functions could be overloaded here, so we need to mangle the names somehow.
                            encountered_names = set()
                            for method in methods:
                                method_name = REPLACE_COM_METHOD_NAMES.get(method['Name'], method['Name'])
                                mangled_name = method_name
                                if mangled_name in encountered_names:
                                    i = 2
                                    while f'{method_name}{i}' in encountered_names:
                                        i += 1
                                    mangled_name = f'{method_name}{i}'
                                encountered_names.add(mangled_name)
                                return_type = get_type_name(method['ReturnType'])
                                parameters = method['Params']
                                output.write(f'{indent}public {return_type} {method_name}(')
                                for i, param in enumerate(parameters):
                                    param_name = replace_name(param['Name'])
                                    param_type = get_param_type(param)
                                    output.write(f'{param_type} {param_name}')
                                    if i != len(parameters) - 1:
                                        output.write(', ')

                                # https://github.com/microsoft/CsWin32/issues/167
                                if needs_return_via_out_parameter(method, native_typedefs_and_enums):
                                    output.write(f') mut => VT.{mangled_name}(ref this, .. var _')
                                else:
                                    output.write(f') mut => VT.{mangled_name}(ref this')

                                for param in parameters:
                                    param_name = replace_name(param['Name'])
                                    param_type = get_param_type(param)
                                    if param_type.startswith('ref'):
                                        output.write(f', ref {param_name}')
                                    elif param_type.startswith('out'):
                                        output.write(f', out {param_name}')
                                    else:
                                        output.write(f', {param_name}')
                                output.write(');\n')
                            output.write(f'\n')

                        output.write(f'{indent}[CRepr]\n')
                        if base != None:
                            output.write(f'{indent}public struct VTable : {base_name}.VTable')
                        else:
                            output.write(f'{indent}public struct VTable')

                        if len(methods) == 0:
                            output.write(' {}\n')
                        else:
                            output.write('\n')
                            output.write(f'{indent}{{\n')
                            indent += '\t'
                            # Functions could be overloaded here, so we need to mangle the names somehow.
                            encountered_names = set()
                            for method in methods:
                                method_name = REPLACE_COM_METHOD_NAMES.get(method['Name'], method['Name'])
                                if method_name in encountered_names:
                                    i = 2
                                    while f'{method_name}{i}' in encountered_names:
                                        i += 1
                                    method_name = f'{method_name}{i}'
                                encountered_names.add(method_name)
                                return_type = get_type_name(method['ReturnType'])
                                parameters = method['Params']

                                # https://github.com/microsoft/CsWin32/issues/167
                                if needs_return_via_out_parameter(method, native_typedefs_and_enums):
                                    output.write(f'{indent}public new function [CallingConvention(.Stdcall)] void(ref {name} self, out {return_type} ret')
                                else:
                                    output.write(f'{indent}public new function [CallingConvention(.Stdcall)] {return_type}(ref {name} self')

                                for param in parameters:
                                    param_name = replace_name(param['Name'])
                                    param_type = get_param_type(param)
                                    output.write(f', {param_type} {param_name}')
                                output.write(f') {method_name};\n')
                            indent = indent[:-1]
                            output.write(f'{indent}}}\n')

                        indent = indent[:-1]
                        output.write(f'{indent}}}\n')

                    output.write(f'{indent}#endregion\n')
                    output.write(f'{indent}\n')

                if len(functions) > 0:
                    output.write(f'{indent}#region Functions\n')

                    for function in functions:
                        name = replace_name(function['Name'])
                        import_name = function['DllImport'].lower()
                        namespace_map.write(f'{name}, {namespace}\n')
                        if import_name in USE_LIB_INSTEAD_OF_DLL:
                            import_name += '.lib'
                        else:
                            import_name += '.dll'
                        return_type = get_type_name(function['ReturnType'])
                        output.write(f'{indent}[Import("{import_name}"), CLink, CallingConvention(.Stdcall)]\n')
                        output.write(f'{indent}public static extern {return_type} {name}(')
                        parameters = function['Params']
                        for i, param in enumerate(parameters):
                            param_name = replace_name(param['Name'])
                            param_type = get_param_type(param)
                            output.write(f'{param_type} {param_name}')
                            if i < len(parameters) - 1:
                                output.write(f', ')
                        output.write(f');\n')

                    output.write(f'{indent}#endregion\n')

                indent = indent[:-1]
                output.write(f'{indent}}}\n') # Close "static {" block.
