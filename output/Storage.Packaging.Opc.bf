using System;

// namespace Storage.Packaging.Opc
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
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
		
		// --- Enums ---
		
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
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_OpcFactory = .(0x6b2d6ba0, 0x9f3e, 0x4f27, 0x92, 0x0b, 0x31, 0x3c, 0xc4, 0x26, 0xa3, 0x9e);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IOpcUri : IUri
		{
			public const new Guid IID = .(0xbc9c1b9b, 0xd62c, 0x49eb, 0xae, 0xf0, 0x3b, 0x4e, 0x0b, 0x28, 0xeb, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelationshipsPartUri(IOpcPartUri** relationshipPartUri) mut
			{
				return VT.GetRelationshipsPartUri(&this, relationshipPartUri);
			}
			public HRESULT GetRelativeUri(IOpcPartUri* targetPartUri, IUri** relativeUri) mut
			{
				return VT.GetRelativeUri(&this, targetPartUri, relativeUri);
			}
			public HRESULT CombinePartUri(IUri* relativeUri, IOpcPartUri** combinedUri) mut
			{
				return VT.CombinePartUri(&this, relativeUri, combinedUri);
			}
			[CRepr]
			public struct VTable : IUri.VTable
			{
				public new function HRESULT(IOpcUri *self, IOpcPartUri** relationshipPartUri) GetRelationshipsPartUri;
				public new function HRESULT(IOpcUri *self, IOpcPartUri* targetPartUri, IUri** relativeUri) GetRelativeUri;
				public new function HRESULT(IOpcUri *self, IUri* relativeUri, IOpcPartUri** combinedUri) CombinePartUri;
			}
		}
		[CRepr]
		public struct IOpcPartUri : IOpcUri
		{
			public const new Guid IID = .(0x7d3babe7, 0x88b2, 0x46ba, 0x85, 0xcb, 0x42, 0x03, 0xcb, 0x01, 0x6c, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComparePartUri(IOpcPartUri* partUri, int32* comparisonResult) mut
			{
				return VT.ComparePartUri(&this, partUri, comparisonResult);
			}
			public HRESULT GetSourceUri(IOpcUri** sourceUri) mut
			{
				return VT.GetSourceUri(&this, sourceUri);
			}
			public HRESULT IsRelationshipsPartUri(BOOL* isRelationshipUri) mut
			{
				return VT.IsRelationshipsPartUri(&this, isRelationshipUri);
			}
			[CRepr]
			public struct VTable : IOpcUri.VTable
			{
				public new function HRESULT(IOpcPartUri *self, IOpcPartUri* partUri, int32* comparisonResult) ComparePartUri;
				public new function HRESULT(IOpcPartUri *self, IOpcUri** sourceUri) GetSourceUri;
				public new function HRESULT(IOpcPartUri *self, BOOL* isRelationshipUri) IsRelationshipsPartUri;
			}
		}
		[CRepr]
		public struct IOpcPackage : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPartSet(IOpcPartSet** partSet) mut
			{
				return VT.GetPartSet(&this, partSet);
			}
			public HRESULT GetRelationshipSet(IOpcRelationshipSet** relationshipSet) mut
			{
				return VT.GetRelationshipSet(&this, relationshipSet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcPackage *self, IOpcPartSet** partSet) GetPartSet;
				public new function HRESULT(IOpcPackage *self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
			}
		}
		[CRepr]
		public struct IOpcPart : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelationshipSet(IOpcRelationshipSet** relationshipSet) mut
			{
				return VT.GetRelationshipSet(&this, relationshipSet);
			}
			public HRESULT GetContentStream(IStream** stream) mut
			{
				return VT.GetContentStream(&this, stream);
			}
			public HRESULT GetName(IOpcPartUri** name) mut
			{
				return VT.GetName(&this, name);
			}
			public HRESULT GetContentType(PWSTR* contentType) mut
			{
				return VT.GetContentType(&this, contentType);
			}
			public HRESULT GetCompressionOptions(OPC_COMPRESSION_OPTIONS* compressionOptions) mut
			{
				return VT.GetCompressionOptions(&this, compressionOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcPart *self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
				public new function HRESULT(IOpcPart *self, IStream** stream) GetContentStream;
				public new function HRESULT(IOpcPart *self, IOpcPartUri** name) GetName;
				public new function HRESULT(IOpcPart *self, PWSTR* contentType) GetContentType;
				public new function HRESULT(IOpcPart *self, OPC_COMPRESSION_OPTIONS* compressionOptions) GetCompressionOptions;
			}
		}
		[CRepr]
		public struct IOpcRelationship : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetId(PWSTR* relationshipIdentifier) mut
			{
				return VT.GetId(&this, relationshipIdentifier);
			}
			public HRESULT GetRelationshipType(PWSTR* relationshipType) mut
			{
				return VT.GetRelationshipType(&this, relationshipType);
			}
			public HRESULT GetSourceUri(IOpcUri** sourceUri) mut
			{
				return VT.GetSourceUri(&this, sourceUri);
			}
			public HRESULT GetTargetUri(IUri** targetUri) mut
			{
				return VT.GetTargetUri(&this, targetUri);
			}
			public HRESULT GetTargetMode(OPC_URI_TARGET_MODE* targetMode) mut
			{
				return VT.GetTargetMode(&this, targetMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationship *self, PWSTR* relationshipIdentifier) GetId;
				public new function HRESULT(IOpcRelationship *self, PWSTR* relationshipType) GetRelationshipType;
				public new function HRESULT(IOpcRelationship *self, IOpcUri** sourceUri) GetSourceUri;
				public new function HRESULT(IOpcRelationship *self, IUri** targetUri) GetTargetUri;
				public new function HRESULT(IOpcRelationship *self, OPC_URI_TARGET_MODE* targetMode) GetTargetMode;
			}
		}
		[CRepr]
		public struct IOpcPartSet : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPart(IOpcPartUri* name, IOpcPart** part) mut
			{
				return VT.GetPart(&this, name, part);
			}
			public HRESULT CreatePart(IOpcPartUri* name, PWSTR contentType, OPC_COMPRESSION_OPTIONS compressionOptions, IOpcPart** part) mut
			{
				return VT.CreatePart(&this, name, contentType, compressionOptions, part);
			}
			public HRESULT DeletePart(IOpcPartUri* name) mut
			{
				return VT.DeletePart(&this, name);
			}
			public HRESULT PartExists(IOpcPartUri* name, BOOL* partExists) mut
			{
				return VT.PartExists(&this, name, partExists);
			}
			public HRESULT GetEnumerator(IOpcPartEnumerator** partEnumerator) mut
			{
				return VT.GetEnumerator(&this, partEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcPartSet *self, IOpcPartUri* name, IOpcPart** part) GetPart;
				public new function HRESULT(IOpcPartSet *self, IOpcPartUri* name, PWSTR contentType, OPC_COMPRESSION_OPTIONS compressionOptions, IOpcPart** part) CreatePart;
				public new function HRESULT(IOpcPartSet *self, IOpcPartUri* name) DeletePart;
				public new function HRESULT(IOpcPartSet *self, IOpcPartUri* name, BOOL* partExists) PartExists;
				public new function HRESULT(IOpcPartSet *self, IOpcPartEnumerator** partEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSet : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelationship(PWSTR relationshipIdentifier, IOpcRelationship** relationship) mut
			{
				return VT.GetRelationship(&this, relationshipIdentifier, relationship);
			}
			public HRESULT CreateRelationship(PWSTR relationshipIdentifier, PWSTR relationshipType, IUri* targetUri, OPC_URI_TARGET_MODE targetMode, IOpcRelationship** relationship) mut
			{
				return VT.CreateRelationship(&this, relationshipIdentifier, relationshipType, targetUri, targetMode, relationship);
			}
			public HRESULT DeleteRelationship(PWSTR relationshipIdentifier) mut
			{
				return VT.DeleteRelationship(&this, relationshipIdentifier);
			}
			public HRESULT RelationshipExists(PWSTR relationshipIdentifier, BOOL* relationshipExists) mut
			{
				return VT.RelationshipExists(&this, relationshipIdentifier, relationshipExists);
			}
			public HRESULT GetEnumerator(IOpcRelationshipEnumerator** relationshipEnumerator) mut
			{
				return VT.GetEnumerator(&this, relationshipEnumerator);
			}
			public HRESULT GetEnumeratorForType(PWSTR relationshipType, IOpcRelationshipEnumerator** relationshipEnumerator) mut
			{
				return VT.GetEnumeratorForType(&this, relationshipType, relationshipEnumerator);
			}
			public HRESULT GetRelationshipsContentStream(IStream** contents) mut
			{
				return VT.GetRelationshipsContentStream(&this, contents);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, IOpcRelationship** relationship) GetRelationship;
				public new function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, PWSTR relationshipType, IUri* targetUri, OPC_URI_TARGET_MODE targetMode, IOpcRelationship** relationship) CreateRelationship;
				public new function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier) DeleteRelationship;
				public new function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, BOOL* relationshipExists) RelationshipExists;
				public new function HRESULT(IOpcRelationshipSet *self, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumerator;
				public new function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipType, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumeratorForType;
				public new function HRESULT(IOpcRelationshipSet *self, IStream** contents) GetRelationshipsContentStream;
			}
		}
		[CRepr]
		public struct IOpcPartEnumerator : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcPart** part) mut
			{
				return VT.GetCurrent(&this, part);
			}
			public HRESULT Clone(IOpcPartEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcPartEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcPartEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcPartEnumerator *self, IOpcPart** part) GetCurrent;
				public new function HRESULT(IOpcPartEnumerator *self, IOpcPartEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcRelationshipEnumerator : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcRelationship** relationship) mut
			{
				return VT.GetCurrent(&this, relationship);
			}
			public HRESULT Clone(IOpcRelationshipEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationshipEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcRelationshipEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcRelationshipEnumerator *self, IOpcRelationship** relationship) GetCurrent;
				public new function HRESULT(IOpcRelationshipEnumerator *self, IOpcRelationshipEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReference : IUnknown
		{
			public const new Guid IID = .(0xe24231ca, 0x59f4, 0x484e, 0xb6, 0x4b, 0x36, 0xee, 0xda, 0x36, 0x07, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPartName(IOpcPartUri** partName) mut
			{
				return VT.GetPartName(&this, partName);
			}
			public HRESULT GetContentType(PWSTR* contentType) mut
			{
				return VT.GetContentType(&this, contentType);
			}
			public HRESULT GetDigestMethod(PWSTR* digestMethod) mut
			{
				return VT.GetDigestMethod(&this, digestMethod);
			}
			public HRESULT GetDigestValue(uint8** digestValue, uint32* count) mut
			{
				return VT.GetDigestValue(&this, digestValue, count);
			}
			public HRESULT GetTransformMethod(OPC_CANONICALIZATION_METHOD* transformMethod) mut
			{
				return VT.GetTransformMethod(&this, transformMethod);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignaturePartReference *self, IOpcPartUri** partName) GetPartName;
				public new function HRESULT(IOpcSignaturePartReference *self, PWSTR* contentType) GetContentType;
				public new function HRESULT(IOpcSignaturePartReference *self, PWSTR* digestMethod) GetDigestMethod;
				public new function HRESULT(IOpcSignaturePartReference *self, uint8** digestValue, uint32* count) GetDigestValue;
				public new function HRESULT(IOpcSignaturePartReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReference : IUnknown
		{
			public const new Guid IID = .(0x57babac6, 0x9d4a, 0x4e50, 0x8b, 0x86, 0xe5, 0xd4, 0x05, 0x1e, 0xae, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSourceUri(IOpcUri** sourceUri) mut
			{
				return VT.GetSourceUri(&this, sourceUri);
			}
			public HRESULT GetDigestMethod(PWSTR* digestMethod) mut
			{
				return VT.GetDigestMethod(&this, digestMethod);
			}
			public HRESULT GetDigestValue(uint8** digestValue, uint32* count) mut
			{
				return VT.GetDigestValue(&this, digestValue, count);
			}
			public HRESULT GetTransformMethod(OPC_CANONICALIZATION_METHOD* transformMethod) mut
			{
				return VT.GetTransformMethod(&this, transformMethod);
			}
			public HRESULT GetRelationshipSigningOption(OPC_RELATIONSHIPS_SIGNING_OPTION* relationshipSigningOption) mut
			{
				return VT.GetRelationshipSigningOption(&this, relationshipSigningOption);
			}
			public HRESULT GetRelationshipSelectorEnumerator(IOpcRelationshipSelectorEnumerator** selectorEnumerator) mut
			{
				return VT.GetRelationshipSelectorEnumerator(&this, selectorEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureRelationshipReference *self, IOpcUri** sourceUri) GetSourceUri;
				public new function HRESULT(IOpcSignatureRelationshipReference *self, PWSTR* digestMethod) GetDigestMethod;
				public new function HRESULT(IOpcSignatureRelationshipReference *self, uint8** digestValue, uint32* count) GetDigestValue;
				public new function HRESULT(IOpcSignatureRelationshipReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
				public new function HRESULT(IOpcSignatureRelationshipReference *self, OPC_RELATIONSHIPS_SIGNING_OPTION* relationshipSigningOption) GetRelationshipSigningOption;
				public new function HRESULT(IOpcSignatureRelationshipReference *self, IOpcRelationshipSelectorEnumerator** selectorEnumerator) GetRelationshipSelectorEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelector : IUnknown
		{
			public const new Guid IID = .(0xf8f26c7f, 0xb28f, 0x4899, 0x84, 0xc8, 0x5d, 0x56, 0x39, 0xed, 0xe7, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelectorType(OPC_RELATIONSHIP_SELECTOR* selector) mut
			{
				return VT.GetSelectorType(&this, selector);
			}
			public HRESULT GetSelectionCriterion(PWSTR* selectionCriterion) mut
			{
				return VT.GetSelectionCriterion(&this, selectionCriterion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationshipSelector *self, OPC_RELATIONSHIP_SELECTOR* selector) GetSelectorType;
				public new function HRESULT(IOpcRelationshipSelector *self, PWSTR* selectionCriterion) GetSelectionCriterion;
			}
		}
		[CRepr]
		public struct IOpcSignatureReference : IUnknown
		{
			public const new Guid IID = .(0x1b47005e, 0x3011, 0x4edc, 0xbe, 0x6f, 0x0f, 0x65, 0xe5, 0xab, 0x03, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetId(PWSTR* referenceId) mut
			{
				return VT.GetId(&this, referenceId);
			}
			public HRESULT GetUri(IUri** referenceUri) mut
			{
				return VT.GetUri(&this, referenceUri);
			}
			public HRESULT ComGetType(PWSTR* type) mut
			{
				return VT.ComGetType(&this, type);
			}
			public HRESULT GetTransformMethod(OPC_CANONICALIZATION_METHOD* transformMethod) mut
			{
				return VT.GetTransformMethod(&this, transformMethod);
			}
			public HRESULT GetDigestMethod(PWSTR* digestMethod) mut
			{
				return VT.GetDigestMethod(&this, digestMethod);
			}
			public HRESULT GetDigestValue(uint8** digestValue, uint32* count) mut
			{
				return VT.GetDigestValue(&this, digestValue, count);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureReference *self, PWSTR* referenceId) GetId;
				public new function HRESULT(IOpcSignatureReference *self, IUri** referenceUri) GetUri;
				public new function HRESULT(IOpcSignatureReference *self, PWSTR* type) ComGetType;
				public new function HRESULT(IOpcSignatureReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
				public new function HRESULT(IOpcSignatureReference *self, PWSTR* digestMethod) GetDigestMethod;
				public new function HRESULT(IOpcSignatureReference *self, uint8** digestValue, uint32* count) GetDigestValue;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObject : IUnknown
		{
			public const new Guid IID = .(0x5d77a19e, 0x62c1, 0x44e7, 0xbe, 0xcd, 0x45, 0xda, 0x5a, 0xe5, 0x1a, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetXml(uint8** xmlMarkup, uint32* count) mut
			{
				return VT.GetXml(&this, xmlMarkup, count);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureCustomObject *self, uint8** xmlMarkup, uint32* count) GetXml;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignature : IUnknown
		{
			public const new Guid IID = .(0x52ab21dd, 0x1cd0, 0x4949, 0xbc, 0x80, 0x0c, 0x12, 0x32, 0xd0, 0x0c, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamespaces(PWSTR** prefixes, PWSTR** namespaces, uint32* count) mut
			{
				return VT.GetNamespaces(&this, prefixes, namespaces, count);
			}
			public HRESULT GetSignatureId(PWSTR* signatureId) mut
			{
				return VT.GetSignatureId(&this, signatureId);
			}
			public HRESULT GetSignaturePartName(IOpcPartUri** signaturePartName) mut
			{
				return VT.GetSignaturePartName(&this, signaturePartName);
			}
			public HRESULT GetSignatureMethod(PWSTR* signatureMethod) mut
			{
				return VT.GetSignatureMethod(&this, signatureMethod);
			}
			public HRESULT GetCanonicalizationMethod(OPC_CANONICALIZATION_METHOD* canonicalizationMethod) mut
			{
				return VT.GetCanonicalizationMethod(&this, canonicalizationMethod);
			}
			public HRESULT GetSignatureValue(uint8** signatureValue, uint32* count) mut
			{
				return VT.GetSignatureValue(&this, signatureValue, count);
			}
			public HRESULT GetSignaturePartReferenceEnumerator(IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) mut
			{
				return VT.GetSignaturePartReferenceEnumerator(&this, partReferenceEnumerator);
			}
			public HRESULT GetSignatureRelationshipReferenceEnumerator(IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) mut
			{
				return VT.GetSignatureRelationshipReferenceEnumerator(&this, relationshipReferenceEnumerator);
			}
			public HRESULT GetSigningTime(PWSTR* signingTime) mut
			{
				return VT.GetSigningTime(&this, signingTime);
			}
			public HRESULT GetTimeFormat(OPC_SIGNATURE_TIME_FORMAT* timeFormat) mut
			{
				return VT.GetTimeFormat(&this, timeFormat);
			}
			public HRESULT GetPackageObjectReference(IOpcSignatureReference** packageObjectReference) mut
			{
				return VT.GetPackageObjectReference(&this, packageObjectReference);
			}
			public HRESULT GetCertificateEnumerator(IOpcCertificateEnumerator** certificateEnumerator) mut
			{
				return VT.GetCertificateEnumerator(&this, certificateEnumerator);
			}
			public HRESULT GetCustomReferenceEnumerator(IOpcSignatureReferenceEnumerator** customReferenceEnumerator) mut
			{
				return VT.GetCustomReferenceEnumerator(&this, customReferenceEnumerator);
			}
			public HRESULT GetCustomObjectEnumerator(IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) mut
			{
				return VT.GetCustomObjectEnumerator(&this, customObjectEnumerator);
			}
			public HRESULT GetSignatureXml(uint8** signatureXml, uint32* count) mut
			{
				return VT.GetSignatureXml(&this, signatureXml, count);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcDigitalSignature *self, PWSTR** prefixes, PWSTR** namespaces, uint32* count) GetNamespaces;
				public new function HRESULT(IOpcDigitalSignature *self, PWSTR* signatureId) GetSignatureId;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public new function HRESULT(IOpcDigitalSignature *self, PWSTR* signatureMethod) GetSignatureMethod;
				public new function HRESULT(IOpcDigitalSignature *self, OPC_CANONICALIZATION_METHOD* canonicalizationMethod) GetCanonicalizationMethod;
				public new function HRESULT(IOpcDigitalSignature *self, uint8** signatureValue, uint32* count) GetSignatureValue;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) GetSignaturePartReferenceEnumerator;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) GetSignatureRelationshipReferenceEnumerator;
				public new function HRESULT(IOpcDigitalSignature *self, PWSTR* signingTime) GetSigningTime;
				public new function HRESULT(IOpcDigitalSignature *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetTimeFormat;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcSignatureReference** packageObjectReference) GetPackageObjectReference;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcCertificateEnumerator** certificateEnumerator) GetCertificateEnumerator;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcSignatureReferenceEnumerator** customReferenceEnumerator) GetCustomReferenceEnumerator;
				public new function HRESULT(IOpcDigitalSignature *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetCustomObjectEnumerator;
				public new function HRESULT(IOpcDigitalSignature *self, uint8** signatureXml, uint32* count) GetSignatureXml;
			}
		}
		[CRepr]
		public struct IOpcSigningOptions : IUnknown
		{
			public const new Guid IID = .(0x50d2d6a5, 0x7aeb, 0x46c0, 0xb2, 0x41, 0x43, 0xab, 0x0e, 0x9b, 0x40, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignatureId(PWSTR* signatureId) mut
			{
				return VT.GetSignatureId(&this, signatureId);
			}
			public HRESULT SetSignatureId(PWSTR signatureId) mut
			{
				return VT.SetSignatureId(&this, signatureId);
			}
			public HRESULT GetSignatureMethod(PWSTR* signatureMethod) mut
			{
				return VT.GetSignatureMethod(&this, signatureMethod);
			}
			public HRESULT SetSignatureMethod(PWSTR signatureMethod) mut
			{
				return VT.SetSignatureMethod(&this, signatureMethod);
			}
			public HRESULT GetDefaultDigestMethod(PWSTR* digestMethod) mut
			{
				return VT.GetDefaultDigestMethod(&this, digestMethod);
			}
			public HRESULT SetDefaultDigestMethod(PWSTR digestMethod) mut
			{
				return VT.SetDefaultDigestMethod(&this, digestMethod);
			}
			public HRESULT GetCertificateEmbeddingOption(OPC_CERTIFICATE_EMBEDDING_OPTION* embeddingOption) mut
			{
				return VT.GetCertificateEmbeddingOption(&this, embeddingOption);
			}
			public HRESULT SetCertificateEmbeddingOption(OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) mut
			{
				return VT.SetCertificateEmbeddingOption(&this, embeddingOption);
			}
			public HRESULT GetTimeFormat(OPC_SIGNATURE_TIME_FORMAT* timeFormat) mut
			{
				return VT.GetTimeFormat(&this, timeFormat);
			}
			public HRESULT SetTimeFormat(OPC_SIGNATURE_TIME_FORMAT timeFormat) mut
			{
				return VT.SetTimeFormat(&this, timeFormat);
			}
			public HRESULT GetSignaturePartReferenceSet(IOpcSignaturePartReferenceSet** partReferenceSet) mut
			{
				return VT.GetSignaturePartReferenceSet(&this, partReferenceSet);
			}
			public HRESULT GetSignatureRelationshipReferenceSet(IOpcSignatureRelationshipReferenceSet** relationshipReferenceSet) mut
			{
				return VT.GetSignatureRelationshipReferenceSet(&this, relationshipReferenceSet);
			}
			public HRESULT GetCustomObjectSet(IOpcSignatureCustomObjectSet** customObjectSet) mut
			{
				return VT.GetCustomObjectSet(&this, customObjectSet);
			}
			public HRESULT GetCustomReferenceSet(IOpcSignatureReferenceSet** customReferenceSet) mut
			{
				return VT.GetCustomReferenceSet(&this, customReferenceSet);
			}
			public HRESULT GetCertificateSet(IOpcCertificateSet** certificateSet) mut
			{
				return VT.GetCertificateSet(&this, certificateSet);
			}
			public HRESULT GetSignaturePartName(IOpcPartUri** signaturePartName) mut
			{
				return VT.GetSignaturePartName(&this, signaturePartName);
			}
			public HRESULT SetSignaturePartName(IOpcPartUri* signaturePartName) mut
			{
				return VT.SetSignaturePartName(&this, signaturePartName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSigningOptions *self, PWSTR* signatureId) GetSignatureId;
				public new function HRESULT(IOpcSigningOptions *self, PWSTR signatureId) SetSignatureId;
				public new function HRESULT(IOpcSigningOptions *self, PWSTR* signatureMethod) GetSignatureMethod;
				public new function HRESULT(IOpcSigningOptions *self, PWSTR signatureMethod) SetSignatureMethod;
				public new function HRESULT(IOpcSigningOptions *self, PWSTR* digestMethod) GetDefaultDigestMethod;
				public new function HRESULT(IOpcSigningOptions *self, PWSTR digestMethod) SetDefaultDigestMethod;
				public new function HRESULT(IOpcSigningOptions *self, OPC_CERTIFICATE_EMBEDDING_OPTION* embeddingOption) GetCertificateEmbeddingOption;
				public new function HRESULT(IOpcSigningOptions *self, OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) SetCertificateEmbeddingOption;
				public new function HRESULT(IOpcSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetTimeFormat;
				public new function HRESULT(IOpcSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetTimeFormat;
				public new function HRESULT(IOpcSigningOptions *self, IOpcSignaturePartReferenceSet** partReferenceSet) GetSignaturePartReferenceSet;
				public new function HRESULT(IOpcSigningOptions *self, IOpcSignatureRelationshipReferenceSet** relationshipReferenceSet) GetSignatureRelationshipReferenceSet;
				public new function HRESULT(IOpcSigningOptions *self, IOpcSignatureCustomObjectSet** customObjectSet) GetCustomObjectSet;
				public new function HRESULT(IOpcSigningOptions *self, IOpcSignatureReferenceSet** customReferenceSet) GetCustomReferenceSet;
				public new function HRESULT(IOpcSigningOptions *self, IOpcCertificateSet** certificateSet) GetCertificateSet;
				public new function HRESULT(IOpcSigningOptions *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public new function HRESULT(IOpcSigningOptions *self, IOpcPartUri* signaturePartName) SetSignaturePartName;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignatureManager : IUnknown
		{
			public const new Guid IID = .(0xd5e62a0b, 0x696d, 0x462f, 0x94, 0xdf, 0x72, 0xe3, 0x3c, 0xef, 0x26, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSignatureOriginPartName(IOpcPartUri** signatureOriginPartName) mut
			{
				return VT.GetSignatureOriginPartName(&this, signatureOriginPartName);
			}
			public HRESULT SetSignatureOriginPartName(IOpcPartUri* signatureOriginPartName) mut
			{
				return VT.SetSignatureOriginPartName(&this, signatureOriginPartName);
			}
			public HRESULT GetSignatureEnumerator(IOpcDigitalSignatureEnumerator** signatureEnumerator) mut
			{
				return VT.GetSignatureEnumerator(&this, signatureEnumerator);
			}
			public HRESULT RemoveSignature(IOpcPartUri* signaturePartName) mut
			{
				return VT.RemoveSignature(&this, signaturePartName);
			}
			public HRESULT CreateSigningOptions(IOpcSigningOptions** signingOptions) mut
			{
				return VT.CreateSigningOptions(&this, signingOptions);
			}
			public HRESULT Validate(IOpcDigitalSignature* signature, CERT_CONTEXT* certificate, OPC_SIGNATURE_VALIDATION_RESULT* validationResult) mut
			{
				return VT.Validate(&this, signature, certificate, validationResult);
			}
			public HRESULT Sign(CERT_CONTEXT* certificate, IOpcSigningOptions* signingOptions, IOpcDigitalSignature** digitalSignature) mut
			{
				return VT.Sign(&this, certificate, signingOptions, digitalSignature);
			}
			public HRESULT ReplaceSignatureXml(IOpcPartUri* signaturePartName, uint8* newSignatureXml, uint32 count, IOpcDigitalSignature** digitalSignature) mut
			{
				return VT.ReplaceSignatureXml(&this, signaturePartName, newSignatureXml, count, digitalSignature);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri** signatureOriginPartName) GetSignatureOriginPartName;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signatureOriginPartName) SetSignatureOriginPartName;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcDigitalSignatureEnumerator** signatureEnumerator) GetSignatureEnumerator;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signaturePartName) RemoveSignature;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcSigningOptions** signingOptions) CreateSigningOptions;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcDigitalSignature* signature, CERT_CONTEXT* certificate, OPC_SIGNATURE_VALIDATION_RESULT* validationResult) Validate;
				public new function HRESULT(IOpcDigitalSignatureManager *self, CERT_CONTEXT* certificate, IOpcSigningOptions* signingOptions, IOpcDigitalSignature** digitalSignature) Sign;
				public new function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signaturePartName, uint8* newSignatureXml, uint32 count, IOpcDigitalSignature** digitalSignature) ReplaceSignatureXml;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0x80eb1561, 0x8c77, 0x49cf, 0x82, 0x66, 0x45, 0x9b, 0x35, 0x6e, 0xe9, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcSignaturePartReference** partReference) mut
			{
				return VT.GetCurrent(&this, partReference);
			}
			public HRESULT Clone(IOpcSignaturePartReferenceEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignaturePartReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcSignaturePartReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcSignaturePartReferenceEnumerator *self, IOpcSignaturePartReference** partReference) GetCurrent;
				public new function HRESULT(IOpcSignaturePartReferenceEnumerator *self, IOpcSignaturePartReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0x773ba3e4, 0xf021, 0x48e4, 0xaa, 0x04, 0x98, 0x16, 0xdb, 0x5d, 0x34, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcSignatureRelationshipReference** relationshipReference) mut
			{
				return VT.GetCurrent(&this, relationshipReference);
			}
			public HRESULT Clone(IOpcSignatureRelationshipReferenceEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, IOpcSignatureRelationshipReference** relationshipReference) GetCurrent;
				public new function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, IOpcSignatureRelationshipReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelectorEnumerator : IUnknown
		{
			public const new Guid IID = .(0x5e50a181, 0xa91b, 0x48ac, 0x88, 0xd2, 0xbc, 0xa3, 0xd8, 0xf8, 0xc0, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcRelationshipSelector** relationshipSelector) mut
			{
				return VT.GetCurrent(&this, relationshipSelector);
			}
			public HRESULT Clone(IOpcRelationshipSelectorEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationshipSelectorEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcRelationshipSelectorEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcRelationshipSelectorEnumerator *self, IOpcRelationshipSelector** relationshipSelector) GetCurrent;
				public new function HRESULT(IOpcRelationshipSelectorEnumerator *self, IOpcRelationshipSelectorEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0xcfa59a45, 0x28b1, 0x4868, 0x96, 0x9e, 0xfa, 0x80, 0x97, 0xfd, 0xc1, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcSignatureReference** reference) mut
			{
				return VT.GetCurrent(&this, reference);
			}
			public HRESULT Clone(IOpcSignatureReferenceEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcSignatureReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcSignatureReferenceEnumerator *self, IOpcSignatureReference** reference) GetCurrent;
				public new function HRESULT(IOpcSignatureReferenceEnumerator *self, IOpcSignatureReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObjectEnumerator : IUnknown
		{
			public const new Guid IID = .(0x5ee4fe1d, 0xe1b0, 0x4683, 0x80, 0x79, 0x7e, 0xa0, 0xfc, 0xf8, 0x0b, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcSignatureCustomObject** customObject) mut
			{
				return VT.GetCurrent(&this, customObject);
			}
			public HRESULT Clone(IOpcSignatureCustomObjectEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureCustomObjectEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcSignatureCustomObjectEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcSignatureCustomObjectEnumerator *self, IOpcSignatureCustomObject** customObject) GetCurrent;
				public new function HRESULT(IOpcSignatureCustomObjectEnumerator *self, IOpcSignatureCustomObjectEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcCertificateEnumerator : IUnknown
		{
			public const new Guid IID = .(0x85131937, 0x8f24, 0x421f, 0xb4, 0x39, 0x59, 0xab, 0x24, 0xd1, 0x40, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(CERT_CONTEXT** certificate) mut
			{
				return VT.GetCurrent(&this, certificate);
			}
			public HRESULT Clone(IOpcCertificateEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcCertificateEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcCertificateEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcCertificateEnumerator *self, CERT_CONTEXT** certificate) GetCurrent;
				public new function HRESULT(IOpcCertificateEnumerator *self, IOpcCertificateEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignatureEnumerator : IUnknown
		{
			public const new Guid IID = .(0x967b6882, 0x0ba3, 0x4358, 0xb9, 0xe7, 0xb6, 0x4c, 0x75, 0x06, 0x3c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveNext(BOOL* hasNext) mut
			{
				return VT.MoveNext(&this, hasNext);
			}
			public HRESULT MovePrevious(BOOL* hasPrevious) mut
			{
				return VT.MovePrevious(&this, hasPrevious);
			}
			public HRESULT GetCurrent(IOpcDigitalSignature** digitalSignature) mut
			{
				return VT.GetCurrent(&this, digitalSignature);
			}
			public HRESULT Clone(IOpcDigitalSignatureEnumerator** copy) mut
			{
				return VT.Clone(&this, copy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcDigitalSignatureEnumerator *self, BOOL* hasNext) MoveNext;
				public new function HRESULT(IOpcDigitalSignatureEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public new function HRESULT(IOpcDigitalSignatureEnumerator *self, IOpcDigitalSignature** digitalSignature) GetCurrent;
				public new function HRESULT(IOpcDigitalSignatureEnumerator *self, IOpcDigitalSignatureEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReferenceSet : IUnknown
		{
			public const new Guid IID = .(0x6c9fe28c, 0xecd9, 0x4b22, 0x9d, 0x36, 0x7f, 0xdd, 0xe6, 0x70, 0xfe, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(IOpcPartUri* partUri, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignaturePartReference** partReference) mut
			{
				return VT.Create(&this, partUri, digestMethod, transformMethod, partReference);
			}
			public HRESULT Delete(IOpcSignaturePartReference* partReference) mut
			{
				return VT.Delete(&this, partReference);
			}
			public HRESULT GetEnumerator(IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) mut
			{
				return VT.GetEnumerator(&this, partReferenceEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcPartUri* partUri, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignaturePartReference** partReference) Create;
				public new function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcSignaturePartReference* partReference) Delete;
				public new function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReferenceSet : IUnknown
		{
			public const new Guid IID = .(0x9f863ca5, 0x3631, 0x404c, 0x82, 0x8d, 0x80, 0x7e, 0x07, 0x15, 0x06, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(IOpcUri* sourceUri, PWSTR digestMethod, OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption, IOpcRelationshipSelectorSet* selectorSet, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureRelationshipReference** relationshipReference) mut
			{
				return VT.Create(&this, sourceUri, digestMethod, relationshipSigningOption, selectorSet, transformMethod, relationshipReference);
			}
			public HRESULT CreateRelationshipSelectorSet(IOpcRelationshipSelectorSet** selectorSet) mut
			{
				return VT.CreateRelationshipSelectorSet(&this, selectorSet);
			}
			public HRESULT Delete(IOpcSignatureRelationshipReference* relationshipReference) mut
			{
				return VT.Delete(&this, relationshipReference);
			}
			public HRESULT GetEnumerator(IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) mut
			{
				return VT.GetEnumerator(&this, relationshipReferenceEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcUri* sourceUri, PWSTR digestMethod, OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption, IOpcRelationshipSelectorSet* selectorSet, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureRelationshipReference** relationshipReference) Create;
				public new function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcRelationshipSelectorSet** selectorSet) CreateRelationshipSelectorSet;
				public new function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcSignatureRelationshipReference* relationshipReference) Delete;
				public new function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelectorSet : IUnknown
		{
			public const new Guid IID = .(0x6e34c269, 0xa4d3, 0x47c0, 0xb5, 0xc4, 0x87, 0xff, 0x2b, 0x3b, 0x61, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(OPC_RELATIONSHIP_SELECTOR selector, PWSTR selectionCriterion, IOpcRelationshipSelector** relationshipSelector) mut
			{
				return VT.Create(&this, selector, selectionCriterion, relationshipSelector);
			}
			public HRESULT Delete(IOpcRelationshipSelector* relationshipSelector) mut
			{
				return VT.Delete(&this, relationshipSelector);
			}
			public HRESULT GetEnumerator(IOpcRelationshipSelectorEnumerator** relationshipSelectorEnumerator) mut
			{
				return VT.GetEnumerator(&this, relationshipSelectorEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcRelationshipSelectorSet *self, OPC_RELATIONSHIP_SELECTOR selector, PWSTR selectionCriterion, IOpcRelationshipSelector** relationshipSelector) Create;
				public new function HRESULT(IOpcRelationshipSelectorSet *self, IOpcRelationshipSelector* relationshipSelector) Delete;
				public new function HRESULT(IOpcRelationshipSelectorSet *self, IOpcRelationshipSelectorEnumerator** relationshipSelectorEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureReferenceSet : IUnknown
		{
			public const new Guid IID = .(0xf3b02d31, 0xab12, 0x42dd, 0x9e, 0x2f, 0x2b, 0x16, 0x76, 0x1c, 0x3c, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(IUri* referenceUri, PWSTR referenceId, PWSTR type, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureReference** reference) mut
			{
				return VT.Create(&this, referenceUri, referenceId, type, digestMethod, transformMethod, reference);
			}
			public HRESULT Delete(IOpcSignatureReference* reference) mut
			{
				return VT.Delete(&this, reference);
			}
			public HRESULT GetEnumerator(IOpcSignatureReferenceEnumerator** referenceEnumerator) mut
			{
				return VT.GetEnumerator(&this, referenceEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureReferenceSet *self, IUri* referenceUri, PWSTR referenceId, PWSTR type, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureReference** reference) Create;
				public new function HRESULT(IOpcSignatureReferenceSet *self, IOpcSignatureReference* reference) Delete;
				public new function HRESULT(IOpcSignatureReferenceSet *self, IOpcSignatureReferenceEnumerator** referenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObjectSet : IUnknown
		{
			public const new Guid IID = .(0x8f792ac5, 0x7947, 0x4e11, 0xbc, 0x3d, 0x26, 0x59, 0xff, 0x04, 0x6a, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(uint8* xmlMarkup, uint32 count, IOpcSignatureCustomObject** customObject) mut
			{
				return VT.Create(&this, xmlMarkup, count, customObject);
			}
			public HRESULT Delete(IOpcSignatureCustomObject* customObject) mut
			{
				return VT.Delete(&this, customObject);
			}
			public HRESULT GetEnumerator(IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) mut
			{
				return VT.GetEnumerator(&this, customObjectEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcSignatureCustomObjectSet *self, uint8* xmlMarkup, uint32 count, IOpcSignatureCustomObject** customObject) Create;
				public new function HRESULT(IOpcSignatureCustomObjectSet *self, IOpcSignatureCustomObject* customObject) Delete;
				public new function HRESULT(IOpcSignatureCustomObjectSet *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcCertificateSet : IUnknown
		{
			public const new Guid IID = .(0x56ea4325, 0x8e2d, 0x4167, 0xb1, 0xa4, 0xe4, 0x86, 0xd2, 0x4c, 0x8f, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(CERT_CONTEXT* certificate) mut
			{
				return VT.Add(&this, certificate);
			}
			public HRESULT Remove(CERT_CONTEXT* certificate) mut
			{
				return VT.Remove(&this, certificate);
			}
			public HRESULT GetEnumerator(IOpcCertificateEnumerator** certificateEnumerator) mut
			{
				return VT.GetEnumerator(&this, certificateEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcCertificateSet *self, CERT_CONTEXT* certificate) Add;
				public new function HRESULT(IOpcCertificateSet *self, CERT_CONTEXT* certificate) Remove;
				public new function HRESULT(IOpcCertificateSet *self, IOpcCertificateEnumerator** certificateEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcFactory : IUnknown
		{
			public const new Guid IID = .(0x6d0b4446, 0xcd73, 0x4ab3, 0x94, 0xf4, 0x8c, 0xcd, 0xf6, 0x11, 0x61, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePackageRootUri(IOpcUri** rootUri) mut
			{
				return VT.CreatePackageRootUri(&this, rootUri);
			}
			public HRESULT CreatePartUri(PWSTR pwzUri, IOpcPartUri** partUri) mut
			{
				return VT.CreatePartUri(&this, pwzUri, partUri);
			}
			public HRESULT CreateStreamOnFile(PWSTR filename, OPC_STREAM_IO_MODE ioMode, SECURITY_ATTRIBUTES* securityAttributes, uint32 dwFlagsAndAttributes, IStream** stream) mut
			{
				return VT.CreateStreamOnFile(&this, filename, ioMode, securityAttributes, dwFlagsAndAttributes, stream);
			}
			public HRESULT CreatePackage(IOpcPackage** package) mut
			{
				return VT.CreatePackage(&this, package);
			}
			public HRESULT ReadPackageFromStream(IStream* stream, OPC_READ_FLAGS flags, IOpcPackage** package) mut
			{
				return VT.ReadPackageFromStream(&this, stream, flags, package);
			}
			public HRESULT WritePackageToStream(IOpcPackage* package, OPC_WRITE_FLAGS flags, IStream* stream) mut
			{
				return VT.WritePackageToStream(&this, package, flags, stream);
			}
			public HRESULT CreateDigitalSignatureManager(IOpcPackage* package, IOpcDigitalSignatureManager** signatureManager) mut
			{
				return VT.CreateDigitalSignatureManager(&this, package, signatureManager);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpcFactory *self, IOpcUri** rootUri) CreatePackageRootUri;
				public new function HRESULT(IOpcFactory *self, PWSTR pwzUri, IOpcPartUri** partUri) CreatePartUri;
				public new function HRESULT(IOpcFactory *self, PWSTR filename, OPC_STREAM_IO_MODE ioMode, SECURITY_ATTRIBUTES* securityAttributes, uint32 dwFlagsAndAttributes, IStream** stream) CreateStreamOnFile;
				public new function HRESULT(IOpcFactory *self, IOpcPackage** package) CreatePackage;
				public new function HRESULT(IOpcFactory *self, IStream* stream, OPC_READ_FLAGS flags, IOpcPackage** package) ReadPackageFromStream;
				public new function HRESULT(IOpcFactory *self, IOpcPackage* package, OPC_WRITE_FLAGS flags, IStream* stream) WritePackageToStream;
				public new function HRESULT(IOpcFactory *self, IOpcPackage* package, IOpcDigitalSignatureManager** signatureManager) CreateDigitalSignatureManager;
			}
		}
		
	}
}
