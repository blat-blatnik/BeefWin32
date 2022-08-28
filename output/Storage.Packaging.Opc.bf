namespace Win32.Storage.Packaging.Opc;

using System;
using Win32.Foundation;
using Win32.Security;
using Win32.Security.Cryptography;
using Win32.System.Com;

static
{
	#region Constants
	public const HRESULT OPC_E_NONCONFORMING_URI = -2142175231;
	public const HRESULT OPC_E_RELATIVE_URI_REQUIRED = -2142175230;
	public const HRESULT OPC_E_RELATIONSHIP_URI_REQUIRED = -2142175229;
	public const HRESULT OPC_E_PART_CANNOT_BE_DIRECTORY = -2142175228;
	public const HRESULT OPC_E_UNEXPECTED_CONTENT_TYPE = -2142175227;
	public const HRESULT OPC_E_INVALID_CONTENT_TYPE_XML = -2142175226;
	public const HRESULT OPC_E_MISSING_CONTENT_TYPES = -2142175225;
	public const HRESULT OPC_E_NONCONFORMING_CONTENT_TYPES_XML = -2142175224;
	public const HRESULT OPC_E_NONCONFORMING_RELS_XML = -2142175223;
	public const HRESULT OPC_E_INVALID_RELS_XML = -2142175222;
	public const HRESULT OPC_E_DUPLICATE_PART = -2142175221;
	public const HRESULT OPC_E_INVALID_OVERRIDE_PART_NAME = -2142175220;
	public const HRESULT OPC_E_DUPLICATE_OVERRIDE_PART = -2142175219;
	public const HRESULT OPC_E_INVALID_DEFAULT_EXTENSION = -2142175218;
	public const HRESULT OPC_E_DUPLICATE_DEFAULT_EXTENSION = -2142175217;
	public const HRESULT OPC_E_INVALID_RELATIONSHIP_ID = -2142175216;
	public const HRESULT OPC_E_INVALID_RELATIONSHIP_TYPE = -2142175215;
	public const HRESULT OPC_E_INVALID_RELATIONSHIP_TARGET = -2142175214;
	public const HRESULT OPC_E_DUPLICATE_RELATIONSHIP = -2142175213;
	public const HRESULT OPC_E_CONFLICTING_SETTINGS = -2142175212;
	public const HRESULT OPC_E_DUPLICATE_PIECE = -2142175211;
	public const HRESULT OPC_E_INVALID_PIECE = -2142175210;
	public const HRESULT OPC_E_MISSING_PIECE = -2142175209;
	public const HRESULT OPC_E_NO_SUCH_PART = -2142175208;
	public const HRESULT OPC_E_DS_SIGNATURE_CORRUPT = -2142175207;
	public const HRESULT OPC_E_DS_DIGEST_VALUE_ERROR = -2142175206;
	public const HRESULT OPC_E_DS_DUPLICATE_SIGNATURE_ORIGIN_RELATIONSHIP = -2142175205;
	public const HRESULT OPC_E_DS_INVALID_SIGNATURE_ORIGIN_RELATIONSHIP = -2142175204;
	public const HRESULT OPC_E_DS_INVALID_CERTIFICATE_RELATIONSHIP = -2142175203;
	public const HRESULT OPC_E_DS_EXTERNAL_SIGNATURE = -2142175202;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_ORIGIN_PART = -2142175201;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_PART = -2142175200;
	public const HRESULT OPC_E_DS_INVALID_RELATIONSHIP_TRANSFORM_XML = -2142175199;
	public const HRESULT OPC_E_DS_INVALID_CANONICALIZATION_METHOD = -2142175198;
	public const HRESULT OPC_E_DS_INVALID_RELATIONSHIPS_SIGNING_OPTION = -2142175197;
	public const HRESULT OPC_E_DS_INVALID_OPC_SIGNATURE_TIME_FORMAT = -2142175196;
	public const HRESULT OPC_E_DS_PACKAGE_REFERENCE_URI_RESERVED = -2142175195;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_PROPERTIES_ELEMENT = -2142175194;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_PROPERTY_ELEMENT = -2142175193;
	public const HRESULT OPC_E_DS_DUPLICATE_SIGNATURE_PROPERTY_ELEMENT = -2142175192;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_TIME_PROPERTY = -2142175191;
	public const HRESULT OPC_E_DS_INVALID_SIGNATURE_XML = -2142175190;
	public const HRESULT OPC_E_DS_INVALID_SIGNATURE_COUNT = -2142175189;
	public const HRESULT OPC_E_DS_MISSING_SIGNATURE_ALGORITHM = -2142175188;
	public const HRESULT OPC_E_DS_DUPLICATE_PACKAGE_OBJECT_REFERENCES = -2142175187;
	public const HRESULT OPC_E_DS_MISSING_PACKAGE_OBJECT_REFERENCE = -2142175186;
	public const HRESULT OPC_E_DS_EXTERNAL_SIGNATURE_REFERENCE = -2142175185;
	public const HRESULT OPC_E_DS_REFERENCE_MISSING_CONTENT_TYPE = -2142175184;
	public const HRESULT OPC_E_DS_MULTIPLE_RELATIONSHIP_TRANSFORMS = -2142175183;
	public const HRESULT OPC_E_DS_MISSING_CANONICALIZATION_TRANSFORM = -2142175182;
	public const HRESULT OPC_E_MC_UNEXPECTED_ELEMENT = -2142175181;
	public const HRESULT OPC_E_MC_UNEXPECTED_REQUIRES_ATTR = -2142175180;
	public const HRESULT OPC_E_MC_MISSING_REQUIRES_ATTR = -2142175179;
	public const HRESULT OPC_E_MC_UNEXPECTED_ATTR = -2142175178;
	public const HRESULT OPC_E_MC_INVALID_PREFIX_LIST = -2142175177;
	public const HRESULT OPC_E_MC_INVALID_QNAME_LIST = -2142175176;
	public const HRESULT OPC_E_MC_NESTED_ALTERNATE_CONTENT = -2142175175;
	public const HRESULT OPC_E_MC_UNEXPECTED_CHOICE = -2142175174;
	public const HRESULT OPC_E_MC_MISSING_CHOICE = -2142175173;
	public const HRESULT OPC_E_MC_INVALID_ENUM_TYPE = -2142175172;
	public const HRESULT OPC_E_MC_UNKNOWN_NAMESPACE = -2142175170;
	public const HRESULT OPC_E_MC_UNKNOWN_PREFIX = -2142175169;
	public const HRESULT OPC_E_MC_INVALID_ATTRIBUTES_ON_IGNORABLE_ELEMENT = -2142175168;
	public const HRESULT OPC_E_MC_INVALID_XMLNS_ATTRIBUTE = -2142175167;
	public const HRESULT OPC_E_INVALID_XML_ENCODING = -2142175166;
	public const HRESULT OPC_E_DS_SIGNATURE_REFERENCE_MISSING_URI = -2142175165;
	public const HRESULT OPC_E_INVALID_CONTENT_TYPE = -2142175164;
	public const HRESULT OPC_E_DS_SIGNATURE_PROPERTY_MISSING_TARGET = -2142175163;
	public const HRESULT OPC_E_DS_SIGNATURE_METHOD_NOT_SET = -2142175162;
	public const HRESULT OPC_E_DS_DEFAULT_DIGEST_METHOD_NOT_SET = -2142175161;
	public const HRESULT OPC_E_NO_SUCH_RELATIONSHIP = -2142175160;
	public const HRESULT OPC_E_MC_MULTIPLE_FALLBACK_ELEMENTS = -2142175159;
	public const HRESULT OPC_E_MC_INCONSISTENT_PROCESS_CONTENT = -2142175158;
	public const HRESULT OPC_E_MC_INCONSISTENT_PRESERVE_ATTRIBUTES = -2142175157;
	public const HRESULT OPC_E_MC_INCONSISTENT_PRESERVE_ELEMENTS = -2142175156;
	public const HRESULT OPC_E_INVALID_RELATIONSHIP_TARGET_MODE = -2142175155;
	public const HRESULT OPC_E_COULD_NOT_RECOVER = -2142175154;
	public const HRESULT OPC_E_UNSUPPORTED_PACKAGE = -2142175153;
	public const HRESULT OPC_E_ENUM_COLLECTION_CHANGED = -2142175152;
	public const HRESULT OPC_E_ENUM_CANNOT_MOVE_NEXT = -2142175151;
	public const HRESULT OPC_E_ENUM_CANNOT_MOVE_PREVIOUS = -2142175150;
	public const HRESULT OPC_E_ENUM_INVALID_POSITION = -2142175149;
	public const HRESULT OPC_E_DS_SIGNATURE_ORIGIN_EXISTS = -2142175148;
	public const HRESULT OPC_E_DS_UNSIGNED_PACKAGE = -2142175147;
	public const HRESULT OPC_E_DS_MISSING_CERTIFICATE_PART = -2142175146;
	public const HRESULT OPC_E_NO_SUCH_SETTINGS = -2142175145;
	public const HRESULT OPC_E_ZIP_INCORRECT_DATA_SIZE = -2142171135;
	public const HRESULT OPC_E_ZIP_CORRUPTED_ARCHIVE = -2142171134;
	public const HRESULT OPC_E_ZIP_COMPRESSION_FAILED = -2142171133;
	public const HRESULT OPC_E_ZIP_DECOMPRESSION_FAILED = -2142171132;
	public const HRESULT OPC_E_ZIP_INCONSISTENT_FILEITEM = -2142171131;
	public const HRESULT OPC_E_ZIP_INCONSISTENT_DIRECTORY = -2142171130;
	public const HRESULT OPC_E_ZIP_MISSING_DATA_DESCRIPTOR = -2142171129;
	public const HRESULT OPC_E_ZIP_UNSUPPORTEDARCHIVE = -2142171128;
	public const HRESULT OPC_E_ZIP_CENTRAL_DIRECTORY_TOO_LARGE = -2142171127;
	public const HRESULT OPC_E_ZIP_NAME_TOO_LARGE = -2142171126;
	public const HRESULT OPC_E_ZIP_DUPLICATE_NAME = -2142171125;
	public const HRESULT OPC_E_ZIP_COMMENT_TOO_LARGE = -2142171124;
	public const HRESULT OPC_E_ZIP_EXTRA_FIELDS_TOO_LARGE = -2142171123;
	public const HRESULT OPC_E_ZIP_FILE_HEADER_TOO_LARGE = -2142171122;
	public const HRESULT OPC_E_ZIP_MISSING_END_OF_CENTRAL_DIRECTORY = -2142171121;
	public const HRESULT OPC_E_ZIP_REQUIRES_64_BIT = -2142171120;
	#endregion
	
	#region Enums
	public enum OPC_URI_TARGET_MODE : int32
	{
		INTERNAL = 0,
		EXTERNAL = 1,
	}
	public enum OPC_COMPRESSION_OPTIONS : int32
	{
		NONE = -1,
		NORMAL = 0,
		MAXIMUM = 1,
		FAST = 2,
		SUPERFAST = 3,
	}
	public enum OPC_STREAM_IO_MODE : int32
	{
		READ = 1,
		WRITE = 2,
	}
	public enum OPC_READ_FLAGS : uint32
	{
		READ_DEFAULT = 0,
		VALIDATE_ON_LOAD = 1,
		CACHE_ON_ACCESS = 2,
	}
	public enum OPC_WRITE_FLAGS : uint32
	{
		DEFAULT = 0,
		FORCE_ZIP32 = 1,
	}
	public enum OPC_SIGNATURE_VALIDATION_RESULT : int32
	{
		VALID = 0,
		INVALID = -1,
	}
	public enum OPC_CANONICALIZATION_METHOD : int32
	{
		NONE = 0,
		C14N = 1,
		C14N_WITH_COMMENTS = 2,
	}
	public enum OPC_RELATIONSHIP_SELECTOR : int32
	{
		ID = 0,
		TYPE = 1,
	}
	public enum OPC_RELATIONSHIPS_SIGNING_OPTION : int32
	{
		USING_SELECTORS = 0,
		PART = 1,
	}
	public enum OPC_CERTIFICATE_EMBEDDING_OPTION : int32
	{
		IN_CERTIFICATE_PART = 0,
		IN_SIGNATURE_PART = 1,
		NOT_EMBEDDED = 2,
	}
	public enum OPC_SIGNATURE_TIME_FORMAT : int32
	{
		MILLISECONDS = 0,
		SECONDS = 1,
		MINUTES = 2,
		DAYS = 3,
		MONTHS = 4,
		YEARS = 5,
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_OpcFactory = .(0x6b2d6ba0, 0x9f3e, 0x4f27, 0x92, 0x0b, 0x31, 0x3c, 0xc4, 0x26, 0xa3, 0x9e);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IOpcUri : IUri
	{
		public const new Guid IID = .(0xbc9c1b9b, 0xd62c, 0x49eb, 0xae, 0xf0, 0x3b, 0x4e, 0x0b, 0x28, 0xeb, 0xed);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRelationshipsPartUri(IOpcPartUri** relationshipPartUri) mut => VT.GetRelationshipsPartUri(ref this, relationshipPartUri);
		public HRESULT GetRelativeUri(IOpcPartUri* targetPartUri, IUri** relativeUri) mut => VT.GetRelativeUri(ref this, targetPartUri, relativeUri);
		public HRESULT CombinePartUri(IUri* relativeUri, IOpcPartUri** combinedUri) mut => VT.CombinePartUri(ref this, relativeUri, combinedUri);

		[CRepr]
		public struct VTable : IUri.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcUri self, IOpcPartUri** relationshipPartUri) GetRelationshipsPartUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcUri self, IOpcPartUri* targetPartUri, IUri** relativeUri) GetRelativeUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcUri self, IUri* relativeUri, IOpcPartUri** combinedUri) CombinePartUri;
		}
	}
	[CRepr]
	public struct IOpcPartUri : IOpcUri
	{
		public const new Guid IID = .(0x7d3babe7, 0x88b2, 0x46ba, 0x85, 0xcb, 0x42, 0x03, 0xcb, 0x01, 0x6c, 0x87);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComparePartUri(IOpcPartUri* partUri, out int32 comparisonResult) mut => VT.ComparePartUri(ref this, partUri, out comparisonResult);
		public HRESULT GetSourceUri(IOpcUri** sourceUri) mut => VT.GetSourceUri(ref this, sourceUri);
		public HRESULT IsRelationshipsPartUri(out BOOL isRelationshipUri) mut => VT.IsRelationshipsPartUri(ref this, out isRelationshipUri);

		[CRepr]
		public struct VTable : IOpcUri.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartUri self, IOpcPartUri* partUri, out int32 comparisonResult) ComparePartUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartUri self, IOpcUri** sourceUri) GetSourceUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartUri self, out BOOL isRelationshipUri) IsRelationshipsPartUri;
		}
	}
	[CRepr]
	public struct IOpcPackage : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPartSet(IOpcPartSet** partSet) mut => VT.GetPartSet(ref this, partSet);
		public HRESULT GetRelationshipSet(IOpcRelationshipSet** relationshipSet) mut => VT.GetRelationshipSet(ref this, relationshipSet);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPackage self, IOpcPartSet** partSet) GetPartSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPackage self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
		}
	}
	[CRepr]
	public struct IOpcPart : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x71);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRelationshipSet(IOpcRelationshipSet** relationshipSet) mut => VT.GetRelationshipSet(ref this, relationshipSet);
		public HRESULT GetContentStream(IStream** stream) mut => VT.GetContentStream(ref this, stream);
		public HRESULT GetName(IOpcPartUri** name) mut => VT.GetName(ref this, name);
		public HRESULT GetContentType(PWSTR* contentType) mut => VT.GetContentType(ref this, contentType);
		public HRESULT GetCompressionOptions(out OPC_COMPRESSION_OPTIONS compressionOptions) mut => VT.GetCompressionOptions(ref this, out compressionOptions);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPart self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPart self, IStream** stream) GetContentStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPart self, IOpcPartUri** name) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPart self, PWSTR* contentType) GetContentType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPart self, out OPC_COMPRESSION_OPTIONS compressionOptions) GetCompressionOptions;
		}
	}
	[CRepr]
	public struct IOpcRelationship : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x72);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetId(PWSTR* relationshipIdentifier) mut => VT.GetId(ref this, relationshipIdentifier);
		public HRESULT GetRelationshipType(PWSTR* relationshipType) mut => VT.GetRelationshipType(ref this, relationshipType);
		public HRESULT GetSourceUri(IOpcUri** sourceUri) mut => VT.GetSourceUri(ref this, sourceUri);
		public HRESULT GetTargetUri(IUri** targetUri) mut => VT.GetTargetUri(ref this, targetUri);
		public HRESULT GetTargetMode(out OPC_URI_TARGET_MODE targetMode) mut => VT.GetTargetMode(ref this, out targetMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationship self, PWSTR* relationshipIdentifier) GetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationship self, PWSTR* relationshipType) GetRelationshipType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationship self, IOpcUri** sourceUri) GetSourceUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationship self, IUri** targetUri) GetTargetUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationship self, out OPC_URI_TARGET_MODE targetMode) GetTargetMode;
		}
	}
	[CRepr]
	public struct IOpcPartSet : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x73);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPart(IOpcPartUri* name, IOpcPart** part) mut => VT.GetPart(ref this, name, part);
		public HRESULT CreatePart(IOpcPartUri* name, PWSTR contentType, OPC_COMPRESSION_OPTIONS compressionOptions, IOpcPart** part) mut => VT.CreatePart(ref this, name, contentType, compressionOptions, part);
		public HRESULT DeletePart(IOpcPartUri* name) mut => VT.DeletePart(ref this, name);
		public HRESULT PartExists(IOpcPartUri* name, out BOOL partExists) mut => VT.PartExists(ref this, name, out partExists);
		public HRESULT GetEnumerator(IOpcPartEnumerator** partEnumerator) mut => VT.GetEnumerator(ref this, partEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartSet self, IOpcPartUri* name, IOpcPart** part) GetPart;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartSet self, IOpcPartUri* name, PWSTR contentType, OPC_COMPRESSION_OPTIONS compressionOptions, IOpcPart** part) CreatePart;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartSet self, IOpcPartUri* name) DeletePart;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartSet self, IOpcPartUri* name, out BOOL partExists) PartExists;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartSet self, IOpcPartEnumerator** partEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcRelationshipSet : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x74);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRelationship(PWSTR relationshipIdentifier, IOpcRelationship** relationship) mut => VT.GetRelationship(ref this, relationshipIdentifier, relationship);
		public HRESULT CreateRelationship(PWSTR relationshipIdentifier, PWSTR relationshipType, IUri* targetUri, OPC_URI_TARGET_MODE targetMode, IOpcRelationship** relationship) mut => VT.CreateRelationship(ref this, relationshipIdentifier, relationshipType, targetUri, targetMode, relationship);
		public HRESULT DeleteRelationship(PWSTR relationshipIdentifier) mut => VT.DeleteRelationship(ref this, relationshipIdentifier);
		public HRESULT RelationshipExists(PWSTR relationshipIdentifier, out BOOL relationshipExists) mut => VT.RelationshipExists(ref this, relationshipIdentifier, out relationshipExists);
		public HRESULT GetEnumerator(IOpcRelationshipEnumerator** relationshipEnumerator) mut => VT.GetEnumerator(ref this, relationshipEnumerator);
		public HRESULT GetEnumeratorForType(PWSTR relationshipType, IOpcRelationshipEnumerator** relationshipEnumerator) mut => VT.GetEnumeratorForType(ref this, relationshipType, relationshipEnumerator);
		public HRESULT GetRelationshipsContentStream(IStream** contents) mut => VT.GetRelationshipsContentStream(ref this, contents);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, PWSTR relationshipIdentifier, IOpcRelationship** relationship) GetRelationship;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, PWSTR relationshipIdentifier, PWSTR relationshipType, IUri* targetUri, OPC_URI_TARGET_MODE targetMode, IOpcRelationship** relationship) CreateRelationship;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, PWSTR relationshipIdentifier) DeleteRelationship;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, PWSTR relationshipIdentifier, out BOOL relationshipExists) RelationshipExists;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, PWSTR relationshipType, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumeratorForType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSet self, IStream** contents) GetRelationshipsContentStream;
		}
	}
	[CRepr]
	public struct IOpcPartEnumerator : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x75);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcPart** part) mut => VT.GetCurrent(ref this, part);
		public HRESULT Clone(IOpcPartEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartEnumerator self, IOpcPart** part) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcPartEnumerator self, IOpcPartEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcRelationshipEnumerator : IUnknown
	{
		public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x76);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcRelationship** relationship) mut => VT.GetCurrent(ref this, relationship);
		public HRESULT Clone(IOpcRelationshipEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipEnumerator self, IOpcRelationship** relationship) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipEnumerator self, IOpcRelationshipEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcSignaturePartReference : IUnknown
	{
		public const new Guid IID = .(0xe24231ca, 0x59f4, 0x484e, 0xb6, 0x4b, 0x36, 0xee, 0xda, 0x36, 0x07, 0x2c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPartName(IOpcPartUri** partName) mut => VT.GetPartName(ref this, partName);
		public HRESULT GetContentType(PWSTR* contentType) mut => VT.GetContentType(ref this, contentType);
		public HRESULT GetDigestMethod(PWSTR* digestMethod) mut => VT.GetDigestMethod(ref this, digestMethod);
		public HRESULT GetDigestValue(uint8** digestValue, out uint32 count) mut => VT.GetDigestValue(ref this, digestValue, out count);
		public HRESULT GetTransformMethod(out OPC_CANONICALIZATION_METHOD transformMethod) mut => VT.GetTransformMethod(ref this, out transformMethod);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReference self, IOpcPartUri** partName) GetPartName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReference self, PWSTR* contentType) GetContentType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReference self, PWSTR* digestMethod) GetDigestMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReference self, uint8** digestValue, out uint32 count) GetDigestValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReference self, out OPC_CANONICALIZATION_METHOD transformMethod) GetTransformMethod;
		}
	}
	[CRepr]
	public struct IOpcSignatureRelationshipReference : IUnknown
	{
		public const new Guid IID = .(0x57babac6, 0x9d4a, 0x4e50, 0x8b, 0x86, 0xe5, 0xd4, 0x05, 0x1e, 0xae, 0x7c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSourceUri(IOpcUri** sourceUri) mut => VT.GetSourceUri(ref this, sourceUri);
		public HRESULT GetDigestMethod(PWSTR* digestMethod) mut => VT.GetDigestMethod(ref this, digestMethod);
		public HRESULT GetDigestValue(uint8** digestValue, out uint32 count) mut => VT.GetDigestValue(ref this, digestValue, out count);
		public HRESULT GetTransformMethod(out OPC_CANONICALIZATION_METHOD transformMethod) mut => VT.GetTransformMethod(ref this, out transformMethod);
		public HRESULT GetRelationshipSigningOption(out OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption) mut => VT.GetRelationshipSigningOption(ref this, out relationshipSigningOption);
		public HRESULT GetRelationshipSelectorEnumerator(IOpcRelationshipSelectorEnumerator** selectorEnumerator) mut => VT.GetRelationshipSelectorEnumerator(ref this, selectorEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, IOpcUri** sourceUri) GetSourceUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, PWSTR* digestMethod) GetDigestMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, uint8** digestValue, out uint32 count) GetDigestValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, out OPC_CANONICALIZATION_METHOD transformMethod) GetTransformMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, out OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption) GetRelationshipSigningOption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReference self, IOpcRelationshipSelectorEnumerator** selectorEnumerator) GetRelationshipSelectorEnumerator;
		}
	}
	[CRepr]
	public struct IOpcRelationshipSelector : IUnknown
	{
		public const new Guid IID = .(0xf8f26c7f, 0xb28f, 0x4899, 0x84, 0xc8, 0x5d, 0x56, 0x39, 0xed, 0xe7, 0x5f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSelectorType(out OPC_RELATIONSHIP_SELECTOR selector) mut => VT.GetSelectorType(ref this, out selector);
		public HRESULT GetSelectionCriterion(PWSTR* selectionCriterion) mut => VT.GetSelectionCriterion(ref this, selectionCriterion);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelector self, out OPC_RELATIONSHIP_SELECTOR selector) GetSelectorType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelector self, PWSTR* selectionCriterion) GetSelectionCriterion;
		}
	}
	[CRepr]
	public struct IOpcSignatureReference : IUnknown
	{
		public const new Guid IID = .(0x1b47005e, 0x3011, 0x4edc, 0xbe, 0x6f, 0x0f, 0x65, 0xe5, 0xab, 0x03, 0x42);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetId(PWSTR* referenceId) mut => VT.GetId(ref this, referenceId);
		public HRESULT GetUri(IUri** referenceUri) mut => VT.GetUri(ref this, referenceUri);
		public HRESULT ComGetType(PWSTR* type) mut => VT.ComGetType(ref this, type);
		public HRESULT GetTransformMethod(out OPC_CANONICALIZATION_METHOD transformMethod) mut => VT.GetTransformMethod(ref this, out transformMethod);
		public HRESULT GetDigestMethod(PWSTR* digestMethod) mut => VT.GetDigestMethod(ref this, digestMethod);
		public HRESULT GetDigestValue(uint8** digestValue, out uint32 count) mut => VT.GetDigestValue(ref this, digestValue, out count);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, PWSTR* referenceId) GetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, IUri** referenceUri) GetUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, PWSTR* type) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, out OPC_CANONICALIZATION_METHOD transformMethod) GetTransformMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, PWSTR* digestMethod) GetDigestMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReference self, uint8** digestValue, out uint32 count) GetDigestValue;
		}
	}
	[CRepr]
	public struct IOpcSignatureCustomObject : IUnknown
	{
		public const new Guid IID = .(0x5d77a19e, 0x62c1, 0x44e7, 0xbe, 0xcd, 0x45, 0xda, 0x5a, 0xe5, 0x1a, 0x56);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetXml(uint8** xmlMarkup, out uint32 count) mut => VT.GetXml(ref this, xmlMarkup, out count);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObject self, uint8** xmlMarkup, out uint32 count) GetXml;
		}
	}
	[CRepr]
	public struct IOpcDigitalSignature : IUnknown
	{
		public const new Guid IID = .(0x52ab21dd, 0x1cd0, 0x4949, 0xbc, 0x80, 0x0c, 0x12, 0x32, 0xd0, 0x0c, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetNamespaces(PWSTR** prefixes, PWSTR** namespaces, out uint32 count) mut => VT.GetNamespaces(ref this, prefixes, namespaces, out count);
		public HRESULT GetSignatureId(PWSTR* signatureId) mut => VT.GetSignatureId(ref this, signatureId);
		public HRESULT GetSignaturePartName(out IOpcPartUri* signaturePartName) mut => VT.GetSignaturePartName(ref this, out signaturePartName);
		public HRESULT GetSignatureMethod(PWSTR* signatureMethod) mut => VT.GetSignatureMethod(ref this, signatureMethod);
		public HRESULT GetCanonicalizationMethod(out OPC_CANONICALIZATION_METHOD canonicalizationMethod) mut => VT.GetCanonicalizationMethod(ref this, out canonicalizationMethod);
		public HRESULT GetSignatureValue(uint8** signatureValue, out uint32 count) mut => VT.GetSignatureValue(ref this, signatureValue, out count);
		public HRESULT GetSignaturePartReferenceEnumerator(out IOpcSignaturePartReferenceEnumerator* partReferenceEnumerator) mut => VT.GetSignaturePartReferenceEnumerator(ref this, out partReferenceEnumerator);
		public HRESULT GetSignatureRelationshipReferenceEnumerator(out IOpcSignatureRelationshipReferenceEnumerator* relationshipReferenceEnumerator) mut => VT.GetSignatureRelationshipReferenceEnumerator(ref this, out relationshipReferenceEnumerator);
		public HRESULT GetSigningTime(PWSTR* signingTime) mut => VT.GetSigningTime(ref this, signingTime);
		public HRESULT GetTimeFormat(out OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.GetTimeFormat(ref this, out timeFormat);
		public HRESULT GetPackageObjectReference(out IOpcSignatureReference* packageObjectReference) mut => VT.GetPackageObjectReference(ref this, out packageObjectReference);
		public HRESULT GetCertificateEnumerator(out IOpcCertificateEnumerator* certificateEnumerator) mut => VT.GetCertificateEnumerator(ref this, out certificateEnumerator);
		public HRESULT GetCustomReferenceEnumerator(out IOpcSignatureReferenceEnumerator* customReferenceEnumerator) mut => VT.GetCustomReferenceEnumerator(ref this, out customReferenceEnumerator);
		public HRESULT GetCustomObjectEnumerator(out IOpcSignatureCustomObjectEnumerator* customObjectEnumerator) mut => VT.GetCustomObjectEnumerator(ref this, out customObjectEnumerator);
		public HRESULT GetSignatureXml(out uint8* signatureXml, out uint32 count) mut => VT.GetSignatureXml(ref this, out signatureXml, out count);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, PWSTR** prefixes, PWSTR** namespaces, out uint32 count) GetNamespaces;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, PWSTR* signatureId) GetSignatureId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcPartUri* signaturePartName) GetSignaturePartName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, PWSTR* signatureMethod) GetSignatureMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out OPC_CANONICALIZATION_METHOD canonicalizationMethod) GetCanonicalizationMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, uint8** signatureValue, out uint32 count) GetSignatureValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcSignaturePartReferenceEnumerator* partReferenceEnumerator) GetSignaturePartReferenceEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcSignatureRelationshipReferenceEnumerator* relationshipReferenceEnumerator) GetSignatureRelationshipReferenceEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, PWSTR* signingTime) GetSigningTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out OPC_SIGNATURE_TIME_FORMAT timeFormat) GetTimeFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcSignatureReference* packageObjectReference) GetPackageObjectReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcCertificateEnumerator* certificateEnumerator) GetCertificateEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcSignatureReferenceEnumerator* customReferenceEnumerator) GetCustomReferenceEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out IOpcSignatureCustomObjectEnumerator* customObjectEnumerator) GetCustomObjectEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignature self, out uint8* signatureXml, out uint32 count) GetSignatureXml;
		}
	}
	[CRepr]
	public struct IOpcSigningOptions : IUnknown
	{
		public const new Guid IID = .(0x50d2d6a5, 0x7aeb, 0x46c0, 0xb2, 0x41, 0x43, 0xab, 0x0e, 0x9b, 0x40, 0x7e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSignatureId(PWSTR* signatureId) mut => VT.GetSignatureId(ref this, signatureId);
		public HRESULT SetSignatureId(PWSTR signatureId) mut => VT.SetSignatureId(ref this, signatureId);
		public HRESULT GetSignatureMethod(PWSTR* signatureMethod) mut => VT.GetSignatureMethod(ref this, signatureMethod);
		public HRESULT SetSignatureMethod(PWSTR signatureMethod) mut => VT.SetSignatureMethod(ref this, signatureMethod);
		public HRESULT GetDefaultDigestMethod(PWSTR* digestMethod) mut => VT.GetDefaultDigestMethod(ref this, digestMethod);
		public HRESULT SetDefaultDigestMethod(PWSTR digestMethod) mut => VT.SetDefaultDigestMethod(ref this, digestMethod);
		public HRESULT GetCertificateEmbeddingOption(out OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) mut => VT.GetCertificateEmbeddingOption(ref this, out embeddingOption);
		public HRESULT SetCertificateEmbeddingOption(OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) mut => VT.SetCertificateEmbeddingOption(ref this, embeddingOption);
		public HRESULT GetTimeFormat(out OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.GetTimeFormat(ref this, out timeFormat);
		public HRESULT SetTimeFormat(OPC_SIGNATURE_TIME_FORMAT timeFormat) mut => VT.SetTimeFormat(ref this, timeFormat);
		public HRESULT GetSignaturePartReferenceSet(IOpcSignaturePartReferenceSet** partReferenceSet) mut => VT.GetSignaturePartReferenceSet(ref this, partReferenceSet);
		public HRESULT GetSignatureRelationshipReferenceSet(IOpcSignatureRelationshipReferenceSet** relationshipReferenceSet) mut => VT.GetSignatureRelationshipReferenceSet(ref this, relationshipReferenceSet);
		public HRESULT GetCustomObjectSet(IOpcSignatureCustomObjectSet** customObjectSet) mut => VT.GetCustomObjectSet(ref this, customObjectSet);
		public HRESULT GetCustomReferenceSet(IOpcSignatureReferenceSet** customReferenceSet) mut => VT.GetCustomReferenceSet(ref this, customReferenceSet);
		public HRESULT GetCertificateSet(IOpcCertificateSet** certificateSet) mut => VT.GetCertificateSet(ref this, certificateSet);
		public HRESULT GetSignaturePartName(IOpcPartUri** signaturePartName) mut => VT.GetSignaturePartName(ref this, signaturePartName);
		public HRESULT SetSignaturePartName(IOpcPartUri* signaturePartName) mut => VT.SetSignaturePartName(ref this, signaturePartName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR* signatureId) GetSignatureId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR signatureId) SetSignatureId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR* signatureMethod) GetSignatureMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR signatureMethod) SetSignatureMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR* digestMethod) GetDefaultDigestMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, PWSTR digestMethod) SetDefaultDigestMethod;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, out OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) GetCertificateEmbeddingOption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) SetCertificateEmbeddingOption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, out OPC_SIGNATURE_TIME_FORMAT timeFormat) GetTimeFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetTimeFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcSignaturePartReferenceSet** partReferenceSet) GetSignaturePartReferenceSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcSignatureRelationshipReferenceSet** relationshipReferenceSet) GetSignatureRelationshipReferenceSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcSignatureCustomObjectSet** customObjectSet) GetCustomObjectSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcSignatureReferenceSet** customReferenceSet) GetCustomReferenceSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcCertificateSet** certificateSet) GetCertificateSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcPartUri** signaturePartName) GetSignaturePartName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSigningOptions self, IOpcPartUri* signaturePartName) SetSignaturePartName;
		}
	}
	[CRepr]
	public struct IOpcDigitalSignatureManager : IUnknown
	{
		public const new Guid IID = .(0xd5e62a0b, 0x696d, 0x462f, 0x94, 0xdf, 0x72, 0xe3, 0x3c, 0xef, 0x26, 0x59);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSignatureOriginPartName(out IOpcPartUri* signatureOriginPartName) mut => VT.GetSignatureOriginPartName(ref this, out signatureOriginPartName);
		public HRESULT SetSignatureOriginPartName(ref IOpcPartUri signatureOriginPartName) mut => VT.SetSignatureOriginPartName(ref this, ref signatureOriginPartName);
		public HRESULT GetSignatureEnumerator(out IOpcDigitalSignatureEnumerator* signatureEnumerator) mut => VT.GetSignatureEnumerator(ref this, out signatureEnumerator);
		public HRESULT RemoveSignature(ref IOpcPartUri signaturePartName) mut => VT.RemoveSignature(ref this, ref signaturePartName);
		public HRESULT CreateSigningOptions(out IOpcSigningOptions* signingOptions) mut => VT.CreateSigningOptions(ref this, out signingOptions);
		public HRESULT Validate(ref IOpcDigitalSignature signature, in CERT_CONTEXT certificate, out OPC_SIGNATURE_VALIDATION_RESULT validationResult) mut => VT.Validate(ref this, ref signature, certificate, out validationResult);
		public HRESULT Sign(in CERT_CONTEXT certificate, ref IOpcSigningOptions signingOptions, out IOpcDigitalSignature* digitalSignature) mut => VT.Sign(ref this, certificate, ref signingOptions, out digitalSignature);
		public HRESULT ReplaceSignatureXml(ref IOpcPartUri signaturePartName, in uint8 newSignatureXml, uint32 count, out IOpcDigitalSignature* digitalSignature) mut => VT.ReplaceSignatureXml(ref this, ref signaturePartName, newSignatureXml, count, out digitalSignature);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, out IOpcPartUri* signatureOriginPartName) GetSignatureOriginPartName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, ref IOpcPartUri signatureOriginPartName) SetSignatureOriginPartName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, out IOpcDigitalSignatureEnumerator* signatureEnumerator) GetSignatureEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, ref IOpcPartUri signaturePartName) RemoveSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, out IOpcSigningOptions* signingOptions) CreateSigningOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, ref IOpcDigitalSignature signature, in CERT_CONTEXT certificate, out OPC_SIGNATURE_VALIDATION_RESULT validationResult) Validate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, in CERT_CONTEXT certificate, ref IOpcSigningOptions signingOptions, out IOpcDigitalSignature* digitalSignature) Sign;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureManager self, ref IOpcPartUri signaturePartName, in uint8 newSignatureXml, uint32 count, out IOpcDigitalSignature* digitalSignature) ReplaceSignatureXml;
		}
	}
	[CRepr]
	public struct IOpcSignaturePartReferenceEnumerator : IUnknown
	{
		public const new Guid IID = .(0x80eb1561, 0x8c77, 0x49cf, 0x82, 0x66, 0x45, 0x9b, 0x35, 0x6e, 0xe9, 0x9a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcSignaturePartReference** partReference) mut => VT.GetCurrent(ref this, partReference);
		public HRESULT Clone(IOpcSignaturePartReferenceEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceEnumerator self, IOpcSignaturePartReference** partReference) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceEnumerator self, IOpcSignaturePartReferenceEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcSignatureRelationshipReferenceEnumerator : IUnknown
	{
		public const new Guid IID = .(0x773ba3e4, 0xf021, 0x48e4, 0xaa, 0x04, 0x98, 0x16, 0xdb, 0x5d, 0x34, 0x95);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcSignatureRelationshipReference** relationshipReference) mut => VT.GetCurrent(ref this, relationshipReference);
		public HRESULT Clone(IOpcSignatureRelationshipReferenceEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceEnumerator self, IOpcSignatureRelationshipReference** relationshipReference) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceEnumerator self, IOpcSignatureRelationshipReferenceEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcRelationshipSelectorEnumerator : IUnknown
	{
		public const new Guid IID = .(0x5e50a181, 0xa91b, 0x48ac, 0x88, 0xd2, 0xbc, 0xa3, 0xd8, 0xf8, 0xc0, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcRelationshipSelector** relationshipSelector) mut => VT.GetCurrent(ref this, relationshipSelector);
		public HRESULT Clone(IOpcRelationshipSelectorEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorEnumerator self, IOpcRelationshipSelector** relationshipSelector) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorEnumerator self, IOpcRelationshipSelectorEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcSignatureReferenceEnumerator : IUnknown
	{
		public const new Guid IID = .(0xcfa59a45, 0x28b1, 0x4868, 0x96, 0x9e, 0xfa, 0x80, 0x97, 0xfd, 0xc1, 0x2a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcSignatureReference** reference) mut => VT.GetCurrent(ref this, reference);
		public HRESULT Clone(IOpcSignatureReferenceEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceEnumerator self, IOpcSignatureReference** reference) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceEnumerator self, IOpcSignatureReferenceEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcSignatureCustomObjectEnumerator : IUnknown
	{
		public const new Guid IID = .(0x5ee4fe1d, 0xe1b0, 0x4683, 0x80, 0x79, 0x7e, 0xa0, 0xfc, 0xf8, 0x0b, 0x4c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcSignatureCustomObject** customObject) mut => VT.GetCurrent(ref this, customObject);
		public HRESULT Clone(IOpcSignatureCustomObjectEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectEnumerator self, IOpcSignatureCustomObject** customObject) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectEnumerator self, IOpcSignatureCustomObjectEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcCertificateEnumerator : IUnknown
	{
		public const new Guid IID = .(0x85131937, 0x8f24, 0x421f, 0xb4, 0x39, 0x59, 0xab, 0x24, 0xd1, 0x40, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(in CERT_CONTEXT* certificate) mut => VT.GetCurrent(ref this, certificate);
		public HRESULT Clone(out IOpcCertificateEnumerator* copy) mut => VT.Clone(ref this, out copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateEnumerator self, in CERT_CONTEXT* certificate) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateEnumerator self, out IOpcCertificateEnumerator* copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcDigitalSignatureEnumerator : IUnknown
	{
		public const new Guid IID = .(0x967b6882, 0x0ba3, 0x4358, 0xb9, 0xe7, 0xb6, 0x4c, 0x75, 0x06, 0x3c, 0x5e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveNext(out BOOL hasNext) mut => VT.MoveNext(ref this, out hasNext);
		public HRESULT MovePrevious(out BOOL hasPrevious) mut => VT.MovePrevious(ref this, out hasPrevious);
		public HRESULT GetCurrent(IOpcDigitalSignature** digitalSignature) mut => VT.GetCurrent(ref this, digitalSignature);
		public HRESULT Clone(IOpcDigitalSignatureEnumerator** copy) mut => VT.Clone(ref this, copy);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureEnumerator self, out BOOL hasNext) MoveNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureEnumerator self, out BOOL hasPrevious) MovePrevious;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureEnumerator self, IOpcDigitalSignature** digitalSignature) GetCurrent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcDigitalSignatureEnumerator self, IOpcDigitalSignatureEnumerator** copy) Clone;
		}
	}
	[CRepr]
	public struct IOpcSignaturePartReferenceSet : IUnknown
	{
		public const new Guid IID = .(0x6c9fe28c, 0xecd9, 0x4b22, 0x9d, 0x36, 0x7f, 0xdd, 0xe6, 0x70, 0xfe, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Create(IOpcPartUri* partUri, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignaturePartReference** partReference) mut => VT.Create(ref this, partUri, digestMethod, transformMethod, partReference);
		public HRESULT Delete(IOpcSignaturePartReference* partReference) mut => VT.Delete(ref this, partReference);
		public HRESULT GetEnumerator(IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) mut => VT.GetEnumerator(ref this, partReferenceEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceSet self, IOpcPartUri* partUri, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignaturePartReference** partReference) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceSet self, IOpcSignaturePartReference* partReference) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignaturePartReferenceSet self, IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcSignatureRelationshipReferenceSet : IUnknown
	{
		public const new Guid IID = .(0x9f863ca5, 0x3631, 0x404c, 0x82, 0x8d, 0x80, 0x7e, 0x07, 0x15, 0x06, 0x9b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Create(IOpcUri* sourceUri, PWSTR digestMethod, OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption, IOpcRelationshipSelectorSet* selectorSet, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureRelationshipReference** relationshipReference) mut => VT.Create(ref this, sourceUri, digestMethod, relationshipSigningOption, selectorSet, transformMethod, relationshipReference);
		public HRESULT CreateRelationshipSelectorSet(IOpcRelationshipSelectorSet** selectorSet) mut => VT.CreateRelationshipSelectorSet(ref this, selectorSet);
		public HRESULT Delete(IOpcSignatureRelationshipReference* relationshipReference) mut => VT.Delete(ref this, relationshipReference);
		public HRESULT GetEnumerator(IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) mut => VT.GetEnumerator(ref this, relationshipReferenceEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceSet self, IOpcUri* sourceUri, PWSTR digestMethod, OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption, IOpcRelationshipSelectorSet* selectorSet, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureRelationshipReference** relationshipReference) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceSet self, IOpcRelationshipSelectorSet** selectorSet) CreateRelationshipSelectorSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceSet self, IOpcSignatureRelationshipReference* relationshipReference) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureRelationshipReferenceSet self, IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcRelationshipSelectorSet : IUnknown
	{
		public const new Guid IID = .(0x6e34c269, 0xa4d3, 0x47c0, 0xb5, 0xc4, 0x87, 0xff, 0x2b, 0x3b, 0x61, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Create(OPC_RELATIONSHIP_SELECTOR selector, PWSTR selectionCriterion, IOpcRelationshipSelector** relationshipSelector) mut => VT.Create(ref this, selector, selectionCriterion, relationshipSelector);
		public HRESULT Delete(IOpcRelationshipSelector* relationshipSelector) mut => VT.Delete(ref this, relationshipSelector);
		public HRESULT GetEnumerator(IOpcRelationshipSelectorEnumerator** relationshipSelectorEnumerator) mut => VT.GetEnumerator(ref this, relationshipSelectorEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorSet self, OPC_RELATIONSHIP_SELECTOR selector, PWSTR selectionCriterion, IOpcRelationshipSelector** relationshipSelector) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorSet self, IOpcRelationshipSelector* relationshipSelector) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcRelationshipSelectorSet self, IOpcRelationshipSelectorEnumerator** relationshipSelectorEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcSignatureReferenceSet : IUnknown
	{
		public const new Guid IID = .(0xf3b02d31, 0xab12, 0x42dd, 0x9e, 0x2f, 0x2b, 0x16, 0x76, 0x1c, 0x3c, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Create(IUri* referenceUri, PWSTR referenceId, PWSTR type, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureReference** reference) mut => VT.Create(ref this, referenceUri, referenceId, type, digestMethod, transformMethod, reference);
		public HRESULT Delete(IOpcSignatureReference* reference) mut => VT.Delete(ref this, reference);
		public HRESULT GetEnumerator(IOpcSignatureReferenceEnumerator** referenceEnumerator) mut => VT.GetEnumerator(ref this, referenceEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceSet self, IUri* referenceUri, PWSTR referenceId, PWSTR type, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureReference** reference) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceSet self, IOpcSignatureReference* reference) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureReferenceSet self, IOpcSignatureReferenceEnumerator** referenceEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcSignatureCustomObjectSet : IUnknown
	{
		public const new Guid IID = .(0x8f792ac5, 0x7947, 0x4e11, 0xbc, 0x3d, 0x26, 0x59, 0xff, 0x04, 0x6a, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Create(uint8* xmlMarkup, uint32 count, IOpcSignatureCustomObject** customObject) mut => VT.Create(ref this, xmlMarkup, count, customObject);
		public HRESULT Delete(IOpcSignatureCustomObject* customObject) mut => VT.Delete(ref this, customObject);
		public HRESULT GetEnumerator(IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) mut => VT.GetEnumerator(ref this, customObjectEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectSet self, uint8* xmlMarkup, uint32 count, IOpcSignatureCustomObject** customObject) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectSet self, IOpcSignatureCustomObject* customObject) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcSignatureCustomObjectSet self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcCertificateSet : IUnknown
	{
		public const new Guid IID = .(0x56ea4325, 0x8e2d, 0x4167, 0xb1, 0xa4, 0xe4, 0x86, 0xd2, 0x4c, 0x8f, 0xa7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Add(in CERT_CONTEXT certificate) mut => VT.Add(ref this, certificate);
		public HRESULT Remove(in CERT_CONTEXT certificate) mut => VT.Remove(ref this, certificate);
		public HRESULT GetEnumerator(out IOpcCertificateEnumerator* certificateEnumerator) mut => VT.GetEnumerator(ref this, out certificateEnumerator);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateSet self, in CERT_CONTEXT certificate) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateSet self, in CERT_CONTEXT certificate) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcCertificateSet self, out IOpcCertificateEnumerator* certificateEnumerator) GetEnumerator;
		}
	}
	[CRepr]
	public struct IOpcFactory : IUnknown
	{
		public const new Guid IID = .(0x6d0b4446, 0xcd73, 0x4ab3, 0x94, 0xf4, 0x8c, 0xcd, 0xf6, 0x11, 0x61, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreatePackageRootUri(out IOpcUri* rootUri) mut => VT.CreatePackageRootUri(ref this, out rootUri);
		public HRESULT CreatePartUri(PWSTR pwzUri, out IOpcPartUri* partUri) mut => VT.CreatePartUri(ref this, pwzUri, out partUri);
		public HRESULT CreateStreamOnFile(PWSTR filename, OPC_STREAM_IO_MODE ioMode, ref SECURITY_ATTRIBUTES securityAttributes, uint32 dwFlagsAndAttributes, out IStream* stream) mut => VT.CreateStreamOnFile(ref this, filename, ioMode, ref securityAttributes, dwFlagsAndAttributes, out stream);
		public HRESULT CreatePackage(out IOpcPackage* package) mut => VT.CreatePackage(ref this, out package);
		public HRESULT ReadPackageFromStream(ref IStream stream, OPC_READ_FLAGS flags, out IOpcPackage* package) mut => VT.ReadPackageFromStream(ref this, ref stream, flags, out package);
		public HRESULT WritePackageToStream(ref IOpcPackage package, OPC_WRITE_FLAGS flags, ref IStream stream) mut => VT.WritePackageToStream(ref this, ref package, flags, ref stream);
		public HRESULT CreateDigitalSignatureManager(ref IOpcPackage package, out IOpcDigitalSignatureManager* signatureManager) mut => VT.CreateDigitalSignatureManager(ref this, ref package, out signatureManager);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, out IOpcUri* rootUri) CreatePackageRootUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, PWSTR pwzUri, out IOpcPartUri* partUri) CreatePartUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, PWSTR filename, OPC_STREAM_IO_MODE ioMode, ref SECURITY_ATTRIBUTES securityAttributes, uint32 dwFlagsAndAttributes, out IStream* stream) CreateStreamOnFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, out IOpcPackage* package) CreatePackage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, ref IStream stream, OPC_READ_FLAGS flags, out IOpcPackage* package) ReadPackageFromStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, ref IOpcPackage package, OPC_WRITE_FLAGS flags, ref IStream stream) WritePackageToStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpcFactory self, ref IOpcPackage package, out IOpcDigitalSignatureManager* signatureManager) CreateDigitalSignatureManager;
		}
	}
	#endregion
	
}
