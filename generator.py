import os
import json

INPUT = 'json'
OUTPUT = 'output'

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
    'ref',
    'var',
    'override',
    'as',
    'append',
    'scope',
    'params',
    'base',
    'in',
    'out',
    'function',
    'internal',
    'defer',
    'mut',
}

CONFLICTING_NAME_REPLACEMENTS = {
    'System.Mmc.IImageList' : 'IImageListAlt',
    'System.WindowsSync.IRangeException' : 'IRangeExceptionAlt',
    'System.DistributedTransactionCoordinator.IResourceManager' : 'IResourceManagerAlt',
    'NetworkManagement.QoS.POLICY_ELEMENT' : 'POLICY_ELEMENT_ALT',
    'NetworkManagement.NetworkPolicyServer.IDENTITY_TYPE' : 'IDENTITY_TYPE_ALT',
    'System.Mmc.IComponent' : 'IComponentAlt',
}

def replace_type_name(typename: str, namespace: str = '') -> str:
    if typename in REPLACE_TYPE_NAMES:
        typename = REPLACE_TYPE_NAMES[typename]
    qualified_name = f'{namespace}.{typename}'
    if qualified_name in CONFLICTING_NAME_REPLACEMENTS:
        typename = CONFLICTING_NAME_REPLACEMENTS[qualified_name]
    return typename

def replace_name(name: str) -> str:
    if name in REPLACE_KEYWORD_NAMES:
        return '@' + name
    else:
        return name

def remove_common_prefix(prefix: str, name: str):
    if name.startswith(prefix + '_'):
        return name.removeprefix(prefix + '_')
    
    initials = ''
    for i in range(len(prefix)):
        if i == 0 or prefix[i - 1] == '_':
            initials += prefix[i].upper()

    if name.startswith(initials + '_'):
        return name.removeprefix(initials + '_')

    return name

def get_type_name(type: dict) -> str:
    kind = type['Kind']
    if kind == 'Native' or kind == 'MissingClrType':
        name = type['Name']
        return replace_type_name(name)
    elif kind == 'ApiRef':
        namespace = type['Api']
        name = type['Name']
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
            return f'{get_type_name(child)}[]'
    else:
        raise RuntimeError(f'Unexpected type kind "{kind}"')

def remove_duplicate_names(objects: list[dict]) -> dict:
    existing_names = set()
    result = []
    for object in objects:
        name = object['Name']
        if name not in existing_names:
            existing_names.add(name)
            result.append(object)
    return result

def process_guid(guid: str) -> str:
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
    return f'{a}, {b}, {c}, {d}, {e}, {f}, {g}, {h}, {i}, {j}, {k}'


try: os.mkdir(OUTPUT)
except: pass

filenames = os.listdir(INPUT)
for filename in filenames:
    with open(f'{INPUT}/{filename}') as input:
        content = json.load(input)
        namespace_name, ext = os.path.splitext(filename)
        print(namespace_name)
        with open(f'{OUTPUT}/{namespace_name}.bf', 'wt') as output:
            indent = ''
            output.write(f'{indent}using System;\n') # Needed for Guid
            output.write(f'\n')
            output.write(f'{indent}// namespace {namespace_name}\n')
            output.write(f'{indent}namespace Win32\n')
            output.write(f'{indent}{{\n')
            indent += '\t'
            if namespace_name == 'Foundation':
                output.write(f'{indent}static class Win32\n')
            else:
                output.write(f'{indent}extension Win32\n')
            output.write(f'{indent}{{\n')
            indent += '\t'

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
            constants          = remove_duplicate_names(constants)
            functions          = remove_duplicate_names(functions)
            typedefs           = remove_duplicate_names(typedefs)
            function_pointers  = remove_duplicate_names(function_pointers)
            enums              = remove_duplicate_names(enums)
            structs_and_unions = remove_duplicate_names(structs_and_unions)
            com_interfaces     = remove_duplicate_names(com_interfaces)
            com_class_ids      = remove_duplicate_names(com_class_ids)

            if len(constants) > 0:
                output.write(f'{indent}// --- Constants ---\n')
                output.write(f'{indent}\n')

                for constant in constants:
                    type = get_type_name(constant['Type'])
                    name = replace_name(constant['Name'])
                    value = constant['Value']
                    if type == 'Guid':
                        guid = process_guid(value)
                        output.write(f'{indent}public const {type} {name} = .({guid});\n')
                    elif type == 'PROPERTYKEY':
                        pass #TODO: Need to figure out how to handle this one.
                    elif type == 'String':
                        output.write(f'{indent}public const {type} {name} = "{value}";\n')
                    elif type == 'float':
                        output.write(f'{indent}public const {type} {name} = {value}f;\n')
                    elif type == 'uint64':
                        output.write(f'{indent}public const {type} {name} = {value}uL;\n')
                    elif type == 'PWSTR': # There's a bug that doesn't allow initializing const typed pointers (issue #1264).
                        output.write(f'{indent}public const void* {name} = (void*){value};\n')
                    else:
                        output.write(f'{indent}public const {type} {name} = {value};\n')

                output.write(f'{indent}\n')

            if len(typedefs) > 0:
                output.write(f'{indent}// --- Typedefs ---\n')
                output.write(f'{indent}\n')

                for type in typedefs:
                    name = type['Name']
                    typedef = type['Def']
                    kind = typedef['Kind']
                    if kind == 'Native' or kind == 'PointerTo':
                        typedef_name = get_type_name(typedef)
                        output.write(f'{indent}public typealias {name} = {typedef_name};\n')
                    else:
                        raise RuntimeError(f'Unhandled typedef kind "{kind}"')

                output.write(f'{indent}\n')

            if len(enums) > 0:
                output.write(f'{indent}// --- Enums ---\n')
                output.write(f'{indent}\n')

                for type in enums:
                    name = replace_type_name(type['Name'], namespace_name)
                    base_type = replace_type_name(type['IntegerBase'])
                    output.write(f'{indent}[AllowDuplicates]\n')
                    if base_type is not None:
                        output.write(f'{indent}public enum {name} : {base_type}\n')
                    else:
                        output.write(f'{indent}public enum {name}\n')
                    output.write(f'{indent}{{\n')
                    indent += '\t'

                    values = type['Values']
                    for value in values:
                        #value_name = remove_common_prefix(name, value['Name'])
                        value_name = value['Name']
                        if base_type is not None and base_type == 'uint64':
                            output.write(f'{indent}{value_name} = {value["Value"]}uL,\n')
                        else:
                            output.write(f'{indent}{value_name} = {value["Value"]},\n')
                    
                    indent = indent[:-1]
                    output.write(f'{indent}}}\n')

                output.write(f'{indent}\n')

            if len(function_pointers) > 0:
                output.write(f'{indent}// --- Function Pointers ---\n')
                output.write(f'{indent}\n')

                for type in function_pointers:
                    name = replace_type_name(type['Name'], namespace_name)
                    qualified_name = f'{namespace_name}.{name}'
                    if qualified_name in CONFLICTING_NAME_REPLACEMENTS:
                        name = CONFLICTING_NAME_REPLACEMENTS[qualified_name]

                    return_type = get_type_name(type['ReturnType'])
                    output.write(f'{indent}public function {return_type} {name}(')
                    parameters = type['Params']
                    for i, param in enumerate(parameters):
                        param_name = replace_name(param['Name'])
                        param_type = get_type_name(param['Type'])
                        output.write(f'{param_type} {param_name}')
                        if i < len(parameters) - 1:
                            output.write(f', ')
                    output.write(f');\n')

                output.write(f'{indent}\n')

            if len(structs_and_unions) > 0:
                output.write(f'{indent}// --- Structs ---\n')
                output.write(f'{indent}\n')

                for type in structs_and_unions:
                    def process_type(type):
                        global indent
                        name = replace_type_name(type['Name'], namespace_name)
                        kind = type['Kind']

                        if kind == 'Struct':
                            output.write(f'{indent}[CRepr]\n')
                        elif kind == 'Union':
                            output.write(f'{indent}[CRepr, Union]\n')
                        output.write(f'{indent}public struct {name}\n')
                        output.write(f'{indent}{{\n')
                        indent += '\t'

                        fields = type['Fields']
                        for field in fields:
                            field_name = replace_name(field['Name'])
                            field_type = get_type_name(field['Type'])
                            output.write(f'{indent}public {field_type} {field_name};\n')

                        nested_types = type['NestedTypes']
                        if len(nested_types) > 0:
                            output.write(f'{indent}\n')
                            for nested_type in nested_types:
                                process_type(nested_type)

                        indent = indent[:-1]
                        output.write(f'{indent}}}\n')
                    process_type(type)

                output.write(f'{indent}\n')

            if len(com_class_ids) > 0:
                output.write(f'{indent}// --- COM Class IDs ---\n')
                output.write(f'{indent}\n')

                for class_id in com_class_ids:
                    name = replace_type_name(class_id['Name'], namespace_name)
                    guid = process_guid(class_id['Guid'])
                    output.write(f'{indent}public const Guid CLSID_{name} = .({guid});\n')

                output.write(f'{indent}\n')

            if len(com_interfaces) > 0:
                output.write(f'{indent}// --- COM Interfaces ---\n')
                output.write(f'{indent}\n')

                for interface in com_interfaces:
                    name = replace_type_name(interface['Name'], namespace_name)
                    output.write(f'{indent}public struct {name} {{}}\n')

                output.write(f'{indent}\n')

            if len(functions) > 0:
                output.write(f'{indent}// --- Functions ---\n')
                output.write(f'{indent}\n')

                for function in functions:
                    name = function['Name']

                    # CreateDispatcherQueueController uses a type that's never defined anywhere (DispatcherQueueController)
                    # So we just skip this function completely.. who needs it anyways :)
                    if name == 'CreateDispatcherQueueController':
                        continue

                    # System.TpmBaseServices and Media.Audio.DirectSound both define GetDeviceID...
                    # So we just have to skip one of them?
                    # TODO: Check if we separate the namespaces if we still need to skip one of them. 
                    if name == 'GetDeviceID' and namespace_name == 'System.TpmBaseServices':
                        continue

                    import_name = function['DllImport'].lower()
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
                        param_type = get_type_name(param['Type'])
                        output.write(f'{param_type} {param_name}')
                        if i < len(parameters) - 1:
                            output.write(f', ')
                    output.write(f');\n')
                
                output.write(f'{indent}\n')
            
            indent = indent[:-1]
            output.write(f'{indent}}}\n')
            indent = indent[:-1]
            output.write(f'{indent}}}\n')
