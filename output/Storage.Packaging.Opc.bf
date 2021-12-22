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
		
		[AllowDuplicates]
		public enum OPC_URI_TARGET_MODE : int32
		{
			OPC_URI_TARGET_MODE_INTERNAL = 0,
			OPC_URI_TARGET_MODE_EXTERNAL = 1,
		}
		[AllowDuplicates]
		public enum OPC_COMPRESSION_OPTIONS : int32
		{
			OPC_COMPRESSION_NONE = -1,
			OPC_COMPRESSION_NORMAL = 0,
			OPC_COMPRESSION_MAXIMUM = 1,
			OPC_COMPRESSION_FAST = 2,
			OPC_COMPRESSION_SUPERFAST = 3,
		}
		[AllowDuplicates]
		public enum OPC_STREAM_IO_MODE : int32
		{
			OPC_STREAM_IO_READ = 1,
			OPC_STREAM_IO_WRITE = 2,
		}
		[AllowDuplicates]
		public enum OPC_READ_FLAGS : uint32
		{
			OPC_READ_DEFAULT = 0,
			OPC_VALIDATE_ON_LOAD = 1,
			OPC_CACHE_ON_ACCESS = 2,
		}
		[AllowDuplicates]
		public enum OPC_WRITE_FLAGS : uint32
		{
			OPC_WRITE_DEFAULT = 0,
			OPC_WRITE_FORCE_ZIP32 = 1,
		}
		[AllowDuplicates]
		public enum OPC_SIGNATURE_VALIDATION_RESULT : int32
		{
			OPC_SIGNATURE_VALID = 0,
			OPC_SIGNATURE_INVALID = -1,
		}
		[AllowDuplicates]
		public enum OPC_CANONICALIZATION_METHOD : int32
		{
			OPC_CANONICALIZATION_NONE = 0,
			OPC_CANONICALIZATION_C14N = 1,
			OPC_CANONICALIZATION_C14N_WITH_COMMENTS = 2,
		}
		[AllowDuplicates]
		public enum OPC_RELATIONSHIP_SELECTOR : int32
		{
			OPC_RELATIONSHIP_SELECT_BY_ID = 0,
			OPC_RELATIONSHIP_SELECT_BY_TYPE = 1,
		}
		[AllowDuplicates]
		public enum OPC_RELATIONSHIPS_SIGNING_OPTION : int32
		{
			OPC_RELATIONSHIP_SIGN_USING_SELECTORS = 0,
			OPC_RELATIONSHIP_SIGN_PART = 1,
		}
		[AllowDuplicates]
		public enum OPC_CERTIFICATE_EMBEDDING_OPTION : int32
		{
			OPC_CERTIFICATE_IN_CERTIFICATE_PART = 0,
			OPC_CERTIFICATE_IN_SIGNATURE_PART = 1,
			OPC_CERTIFICATE_NOT_EMBEDDED = 2,
		}
		[AllowDuplicates]
		public enum OPC_SIGNATURE_TIME_FORMAT : int32
		{
			OPC_SIGNATURE_TIME_FORMAT_MILLISECONDS = 0,
			OPC_SIGNATURE_TIME_FORMAT_SECONDS = 1,
			OPC_SIGNATURE_TIME_FORMAT_MINUTES = 2,
			OPC_SIGNATURE_TIME_FORMAT_DAYS = 3,
			OPC_SIGNATURE_TIME_FORMAT_MONTHS = 4,
			OPC_SIGNATURE_TIME_FORMAT_YEARS = 5,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_OpcFactory = .(0x6b2d6ba0, 0x9f3e, 0x4f27, 0x92, 0x0b, 0x31, 0x3c, 0xc4, 0x26, 0xa3, 0x9e);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IOpcUri : IUri
		{
			public const new Guid IID = .(0xbc9c1b9b, 0xd62c, 0x49eb, 0xae, 0xf0, 0x3b, 0x4e, 0x0b, 0x28, 0xeb, 0xed);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUri.VTable
			{
				public function HRESULT(IOpcUri *self, IOpcPartUri** relationshipPartUri) GetRelationshipsPartUri;
				public function HRESULT(IOpcUri *self, IOpcPartUri* targetPartUri, IUri** relativeUri) GetRelativeUri;
				public function HRESULT(IOpcUri *self, IUri* relativeUri, IOpcPartUri** combinedUri) CombinePartUri;
			}
		}
		[CRepr]
		public struct IOpcPartUri : IOpcUri
		{
			public const new Guid IID = .(0x7d3babe7, 0x88b2, 0x46ba, 0x85, 0xcb, 0x42, 0x03, 0xcb, 0x01, 0x6c, 0x87);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IOpcUri.VTable
			{
				public function HRESULT(IOpcPartUri *self, IOpcPartUri* partUri, int32* comparisonResult) ComparePartUri;
				public function HRESULT(IOpcPartUri *self, IOpcUri** sourceUri) GetSourceUri;
				public function HRESULT(IOpcPartUri *self, BOOL* isRelationshipUri) IsRelationshipsPartUri;
			}
		}
		[CRepr]
		public struct IOpcPackage : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcPackage *self, IOpcPartSet** partSet) GetPartSet;
				public function HRESULT(IOpcPackage *self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
			}
		}
		[CRepr]
		public struct IOpcPart : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x71);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcPart *self, IOpcRelationshipSet** relationshipSet) GetRelationshipSet;
				public function HRESULT(IOpcPart *self, IStream** stream) GetContentStream;
				public function HRESULT(IOpcPart *self, IOpcPartUri** name) GetName;
				public function HRESULT(IOpcPart *self, PWSTR* contentType) GetContentType;
				public function HRESULT(IOpcPart *self, OPC_COMPRESSION_OPTIONS* compressionOptions) GetCompressionOptions;
			}
		}
		[CRepr]
		public struct IOpcRelationship : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x72);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationship *self, PWSTR* relationshipIdentifier) GetId;
				public function HRESULT(IOpcRelationship *self, PWSTR* relationshipType) GetRelationshipType;
				public function HRESULT(IOpcRelationship *self, IOpcUri** sourceUri) GetSourceUri;
				public function HRESULT(IOpcRelationship *self, IUri** targetUri) GetTargetUri;
				public function HRESULT(IOpcRelationship *self, OPC_URI_TARGET_MODE* targetMode) GetTargetMode;
			}
		}
		[CRepr]
		public struct IOpcPartSet : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x73);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcPartSet *self, IOpcPartUri* name, IOpcPart** part) GetPart;
				public function HRESULT(IOpcPartSet *self, IOpcPartUri* name, PWSTR contentType, OPC_COMPRESSION_OPTIONS compressionOptions, IOpcPart** part) CreatePart;
				public function HRESULT(IOpcPartSet *self, IOpcPartUri* name) DeletePart;
				public function HRESULT(IOpcPartSet *self, IOpcPartUri* name, BOOL* partExists) PartExists;
				public function HRESULT(IOpcPartSet *self, IOpcPartEnumerator** partEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSet : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, IOpcRelationship** relationship) GetRelationship;
				public function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, PWSTR relationshipType, IUri* targetUri, OPC_URI_TARGET_MODE targetMode, IOpcRelationship** relationship) CreateRelationship;
				public function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier) DeleteRelationship;
				public function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipIdentifier, BOOL* relationshipExists) RelationshipExists;
				public function HRESULT(IOpcRelationshipSet *self, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumerator;
				public function HRESULT(IOpcRelationshipSet *self, PWSTR relationshipType, IOpcRelationshipEnumerator** relationshipEnumerator) GetEnumeratorForType;
				public function HRESULT(IOpcRelationshipSet *self, IStream** contents) GetRelationshipsContentStream;
			}
		}
		[CRepr]
		public struct IOpcPartEnumerator : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcPartEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcPartEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcPartEnumerator *self, IOpcPart** part) GetCurrent;
				public function HRESULT(IOpcPartEnumerator *self, IOpcPartEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcRelationshipEnumerator : IUnknown
		{
			public const new Guid IID = .(0x42195949, 0x3b79, 0x4fc8, 0x89, 0xc6, 0xfc, 0x7f, 0xb9, 0x79, 0xee, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationshipEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcRelationshipEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcRelationshipEnumerator *self, IOpcRelationship** relationship) GetCurrent;
				public function HRESULT(IOpcRelationshipEnumerator *self, IOpcRelationshipEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReference : IUnknown
		{
			public const new Guid IID = .(0xe24231ca, 0x59f4, 0x484e, 0xb6, 0x4b, 0x36, 0xee, 0xda, 0x36, 0x07, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignaturePartReference *self, IOpcPartUri** partName) GetPartName;
				public function HRESULT(IOpcSignaturePartReference *self, PWSTR* contentType) GetContentType;
				public function HRESULT(IOpcSignaturePartReference *self, PWSTR* digestMethod) GetDigestMethod;
				public function HRESULT(IOpcSignaturePartReference *self, uint8** digestValue, uint32* count) GetDigestValue;
				public function HRESULT(IOpcSignaturePartReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReference : IUnknown
		{
			public const new Guid IID = .(0x57babac6, 0x9d4a, 0x4e50, 0x8b, 0x86, 0xe5, 0xd4, 0x05, 0x1e, 0xae, 0x7c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureRelationshipReference *self, IOpcUri** sourceUri) GetSourceUri;
				public function HRESULT(IOpcSignatureRelationshipReference *self, PWSTR* digestMethod) GetDigestMethod;
				public function HRESULT(IOpcSignatureRelationshipReference *self, uint8** digestValue, uint32* count) GetDigestValue;
				public function HRESULT(IOpcSignatureRelationshipReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
				public function HRESULT(IOpcSignatureRelationshipReference *self, OPC_RELATIONSHIPS_SIGNING_OPTION* relationshipSigningOption) GetRelationshipSigningOption;
				public function HRESULT(IOpcSignatureRelationshipReference *self, IOpcRelationshipSelectorEnumerator** selectorEnumerator) GetRelationshipSelectorEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelector : IUnknown
		{
			public const new Guid IID = .(0xf8f26c7f, 0xb28f, 0x4899, 0x84, 0xc8, 0x5d, 0x56, 0x39, 0xed, 0xe7, 0x5f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationshipSelector *self, OPC_RELATIONSHIP_SELECTOR* selector) GetSelectorType;
				public function HRESULT(IOpcRelationshipSelector *self, PWSTR* selectionCriterion) GetSelectionCriterion;
			}
		}
		[CRepr]
		public struct IOpcSignatureReference : IUnknown
		{
			public const new Guid IID = .(0x1b47005e, 0x3011, 0x4edc, 0xbe, 0x6f, 0x0f, 0x65, 0xe5, 0xab, 0x03, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureReference *self, PWSTR* referenceId) GetId;
				public function HRESULT(IOpcSignatureReference *self, IUri** referenceUri) GetUri;
				public function HRESULT(IOpcSignatureReference *self, PWSTR* type) GetType;
				public function HRESULT(IOpcSignatureReference *self, OPC_CANONICALIZATION_METHOD* transformMethod) GetTransformMethod;
				public function HRESULT(IOpcSignatureReference *self, PWSTR* digestMethod) GetDigestMethod;
				public function HRESULT(IOpcSignatureReference *self, uint8** digestValue, uint32* count) GetDigestValue;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObject : IUnknown
		{
			public const new Guid IID = .(0x5d77a19e, 0x62c1, 0x44e7, 0xbe, 0xcd, 0x45, 0xda, 0x5a, 0xe5, 0x1a, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureCustomObject *self, uint8** xmlMarkup, uint32* count) GetXml;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignature : IUnknown
		{
			public const new Guid IID = .(0x52ab21dd, 0x1cd0, 0x4949, 0xbc, 0x80, 0x0c, 0x12, 0x32, 0xd0, 0x0c, 0xb4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcDigitalSignature *self, PWSTR** prefixes, PWSTR** namespaces, uint32* count) GetNamespaces;
				public function HRESULT(IOpcDigitalSignature *self, PWSTR* signatureId) GetSignatureId;
				public function HRESULT(IOpcDigitalSignature *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public function HRESULT(IOpcDigitalSignature *self, PWSTR* signatureMethod) GetSignatureMethod;
				public function HRESULT(IOpcDigitalSignature *self, OPC_CANONICALIZATION_METHOD* canonicalizationMethod) GetCanonicalizationMethod;
				public function HRESULT(IOpcDigitalSignature *self, uint8** signatureValue, uint32* count) GetSignatureValue;
				public function HRESULT(IOpcDigitalSignature *self, IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) GetSignaturePartReferenceEnumerator;
				public function HRESULT(IOpcDigitalSignature *self, IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) GetSignatureRelationshipReferenceEnumerator;
				public function HRESULT(IOpcDigitalSignature *self, PWSTR* signingTime) GetSigningTime;
				public function HRESULT(IOpcDigitalSignature *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetTimeFormat;
				public function HRESULT(IOpcDigitalSignature *self, IOpcSignatureReference** packageObjectReference) GetPackageObjectReference;
				public function HRESULT(IOpcDigitalSignature *self, IOpcCertificateEnumerator** certificateEnumerator) GetCertificateEnumerator;
				public function HRESULT(IOpcDigitalSignature *self, IOpcSignatureReferenceEnumerator** customReferenceEnumerator) GetCustomReferenceEnumerator;
				public function HRESULT(IOpcDigitalSignature *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetCustomObjectEnumerator;
				public function HRESULT(IOpcDigitalSignature *self, uint8** signatureXml, uint32* count) GetSignatureXml;
			}
		}
		[CRepr]
		public struct IOpcSigningOptions : IUnknown
		{
			public const new Guid IID = .(0x50d2d6a5, 0x7aeb, 0x46c0, 0xb2, 0x41, 0x43, 0xab, 0x0e, 0x9b, 0x40, 0x7e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSigningOptions *self, PWSTR* signatureId) GetSignatureId;
				public function HRESULT(IOpcSigningOptions *self, PWSTR signatureId) SetSignatureId;
				public function HRESULT(IOpcSigningOptions *self, PWSTR* signatureMethod) GetSignatureMethod;
				public function HRESULT(IOpcSigningOptions *self, PWSTR signatureMethod) SetSignatureMethod;
				public function HRESULT(IOpcSigningOptions *self, PWSTR* digestMethod) GetDefaultDigestMethod;
				public function HRESULT(IOpcSigningOptions *self, PWSTR digestMethod) SetDefaultDigestMethod;
				public function HRESULT(IOpcSigningOptions *self, OPC_CERTIFICATE_EMBEDDING_OPTION* embeddingOption) GetCertificateEmbeddingOption;
				public function HRESULT(IOpcSigningOptions *self, OPC_CERTIFICATE_EMBEDDING_OPTION embeddingOption) SetCertificateEmbeddingOption;
				public function HRESULT(IOpcSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT* timeFormat) GetTimeFormat;
				public function HRESULT(IOpcSigningOptions *self, OPC_SIGNATURE_TIME_FORMAT timeFormat) SetTimeFormat;
				public function HRESULT(IOpcSigningOptions *self, IOpcSignaturePartReferenceSet** partReferenceSet) GetSignaturePartReferenceSet;
				public function HRESULT(IOpcSigningOptions *self, IOpcSignatureRelationshipReferenceSet** relationshipReferenceSet) GetSignatureRelationshipReferenceSet;
				public function HRESULT(IOpcSigningOptions *self, IOpcSignatureCustomObjectSet** customObjectSet) GetCustomObjectSet;
				public function HRESULT(IOpcSigningOptions *self, IOpcSignatureReferenceSet** customReferenceSet) GetCustomReferenceSet;
				public function HRESULT(IOpcSigningOptions *self, IOpcCertificateSet** certificateSet) GetCertificateSet;
				public function HRESULT(IOpcSigningOptions *self, IOpcPartUri** signaturePartName) GetSignaturePartName;
				public function HRESULT(IOpcSigningOptions *self, IOpcPartUri* signaturePartName) SetSignaturePartName;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignatureManager : IUnknown
		{
			public const new Guid IID = .(0xd5e62a0b, 0x696d, 0x462f, 0x94, 0xdf, 0x72, 0xe3, 0x3c, 0xef, 0x26, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri** signatureOriginPartName) GetSignatureOriginPartName;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signatureOriginPartName) SetSignatureOriginPartName;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcDigitalSignatureEnumerator** signatureEnumerator) GetSignatureEnumerator;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signaturePartName) RemoveSignature;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcSigningOptions** signingOptions) CreateSigningOptions;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcDigitalSignature* signature, CERT_CONTEXT* certificate, OPC_SIGNATURE_VALIDATION_RESULT* validationResult) Validate;
				public function HRESULT(IOpcDigitalSignatureManager *self, CERT_CONTEXT* certificate, IOpcSigningOptions* signingOptions, IOpcDigitalSignature** digitalSignature) Sign;
				public function HRESULT(IOpcDigitalSignatureManager *self, IOpcPartUri* signaturePartName, uint8* newSignatureXml, uint32 count, IOpcDigitalSignature** digitalSignature) ReplaceSignatureXml;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0x80eb1561, 0x8c77, 0x49cf, 0x82, 0x66, 0x45, 0x9b, 0x35, 0x6e, 0xe9, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignaturePartReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcSignaturePartReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcSignaturePartReferenceEnumerator *self, IOpcSignaturePartReference** partReference) GetCurrent;
				public function HRESULT(IOpcSignaturePartReferenceEnumerator *self, IOpcSignaturePartReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0x773ba3e4, 0xf021, 0x48e4, 0xaa, 0x04, 0x98, 0x16, 0xdb, 0x5d, 0x34, 0x95);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, IOpcSignatureRelationshipReference** relationshipReference) GetCurrent;
				public function HRESULT(IOpcSignatureRelationshipReferenceEnumerator *self, IOpcSignatureRelationshipReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelectorEnumerator : IUnknown
		{
			public const new Guid IID = .(0x5e50a181, 0xa91b, 0x48ac, 0x88, 0xd2, 0xbc, 0xa3, 0xd8, 0xf8, 0xc0, 0xb1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationshipSelectorEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcRelationshipSelectorEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcRelationshipSelectorEnumerator *self, IOpcRelationshipSelector** relationshipSelector) GetCurrent;
				public function HRESULT(IOpcRelationshipSelectorEnumerator *self, IOpcRelationshipSelectorEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureReferenceEnumerator : IUnknown
		{
			public const new Guid IID = .(0xcfa59a45, 0x28b1, 0x4868, 0x96, 0x9e, 0xfa, 0x80, 0x97, 0xfd, 0xc1, 0x2a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureReferenceEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcSignatureReferenceEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcSignatureReferenceEnumerator *self, IOpcSignatureReference** reference) GetCurrent;
				public function HRESULT(IOpcSignatureReferenceEnumerator *self, IOpcSignatureReferenceEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObjectEnumerator : IUnknown
		{
			public const new Guid IID = .(0x5ee4fe1d, 0xe1b0, 0x4683, 0x80, 0x79, 0x7e, 0xa0, 0xfc, 0xf8, 0x0b, 0x4c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureCustomObjectEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcSignatureCustomObjectEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcSignatureCustomObjectEnumerator *self, IOpcSignatureCustomObject** customObject) GetCurrent;
				public function HRESULT(IOpcSignatureCustomObjectEnumerator *self, IOpcSignatureCustomObjectEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcCertificateEnumerator : IUnknown
		{
			public const new Guid IID = .(0x85131937, 0x8f24, 0x421f, 0xb4, 0x39, 0x59, 0xab, 0x24, 0xd1, 0x40, 0xb8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcCertificateEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcCertificateEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcCertificateEnumerator *self, CERT_CONTEXT** certificate) GetCurrent;
				public function HRESULT(IOpcCertificateEnumerator *self, IOpcCertificateEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcDigitalSignatureEnumerator : IUnknown
		{
			public const new Guid IID = .(0x967b6882, 0x0ba3, 0x4358, 0xb9, 0xe7, 0xb6, 0x4c, 0x75, 0x06, 0x3c, 0x5e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcDigitalSignatureEnumerator *self, BOOL* hasNext) MoveNext;
				public function HRESULT(IOpcDigitalSignatureEnumerator *self, BOOL* hasPrevious) MovePrevious;
				public function HRESULT(IOpcDigitalSignatureEnumerator *self, IOpcDigitalSignature** digitalSignature) GetCurrent;
				public function HRESULT(IOpcDigitalSignatureEnumerator *self, IOpcDigitalSignatureEnumerator** copy) Clone;
			}
		}
		[CRepr]
		public struct IOpcSignaturePartReferenceSet : IUnknown
		{
			public const new Guid IID = .(0x6c9fe28c, 0xecd9, 0x4b22, 0x9d, 0x36, 0x7f, 0xdd, 0xe6, 0x70, 0xfe, 0xc0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcPartUri* partUri, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignaturePartReference** partReference) Create;
				public function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcSignaturePartReference* partReference) Delete;
				public function HRESULT(IOpcSignaturePartReferenceSet *self, IOpcSignaturePartReferenceEnumerator** partReferenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureRelationshipReferenceSet : IUnknown
		{
			public const new Guid IID = .(0x9f863ca5, 0x3631, 0x404c, 0x82, 0x8d, 0x80, 0x7e, 0x07, 0x15, 0x06, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcUri* sourceUri, PWSTR digestMethod, OPC_RELATIONSHIPS_SIGNING_OPTION relationshipSigningOption, IOpcRelationshipSelectorSet* selectorSet, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureRelationshipReference** relationshipReference) Create;
				public function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcRelationshipSelectorSet** selectorSet) CreateRelationshipSelectorSet;
				public function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcSignatureRelationshipReference* relationshipReference) Delete;
				public function HRESULT(IOpcSignatureRelationshipReferenceSet *self, IOpcSignatureRelationshipReferenceEnumerator** relationshipReferenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcRelationshipSelectorSet : IUnknown
		{
			public const new Guid IID = .(0x6e34c269, 0xa4d3, 0x47c0, 0xb5, 0xc4, 0x87, 0xff, 0x2b, 0x3b, 0x61, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcRelationshipSelectorSet *self, OPC_RELATIONSHIP_SELECTOR selector, PWSTR selectionCriterion, IOpcRelationshipSelector** relationshipSelector) Create;
				public function HRESULT(IOpcRelationshipSelectorSet *self, IOpcRelationshipSelector* relationshipSelector) Delete;
				public function HRESULT(IOpcRelationshipSelectorSet *self, IOpcRelationshipSelectorEnumerator** relationshipSelectorEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureReferenceSet : IUnknown
		{
			public const new Guid IID = .(0xf3b02d31, 0xab12, 0x42dd, 0x9e, 0x2f, 0x2b, 0x16, 0x76, 0x1c, 0x3c, 0x1e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureReferenceSet *self, IUri* referenceUri, PWSTR referenceId, PWSTR type, PWSTR digestMethod, OPC_CANONICALIZATION_METHOD transformMethod, IOpcSignatureReference** reference) Create;
				public function HRESULT(IOpcSignatureReferenceSet *self, IOpcSignatureReference* reference) Delete;
				public function HRESULT(IOpcSignatureReferenceSet *self, IOpcSignatureReferenceEnumerator** referenceEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcSignatureCustomObjectSet : IUnknown
		{
			public const new Guid IID = .(0x8f792ac5, 0x7947, 0x4e11, 0xbc, 0x3d, 0x26, 0x59, 0xff, 0x04, 0x6a, 0xe1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcSignatureCustomObjectSet *self, uint8* xmlMarkup, uint32 count, IOpcSignatureCustomObject** customObject) Create;
				public function HRESULT(IOpcSignatureCustomObjectSet *self, IOpcSignatureCustomObject* customObject) Delete;
				public function HRESULT(IOpcSignatureCustomObjectSet *self, IOpcSignatureCustomObjectEnumerator** customObjectEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcCertificateSet : IUnknown
		{
			public const new Guid IID = .(0x56ea4325, 0x8e2d, 0x4167, 0xb1, 0xa4, 0xe4, 0x86, 0xd2, 0x4c, 0x8f, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcCertificateSet *self, CERT_CONTEXT* certificate) Add;
				public function HRESULT(IOpcCertificateSet *self, CERT_CONTEXT* certificate) Remove;
				public function HRESULT(IOpcCertificateSet *self, IOpcCertificateEnumerator** certificateEnumerator) GetEnumerator;
			}
		}
		[CRepr]
		public struct IOpcFactory : IUnknown
		{
			public const new Guid IID = .(0x6d0b4446, 0xcd73, 0x4ab3, 0x94, 0xf4, 0x8c, 0xcd, 0xf6, 0x11, 0x61, 0x54);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOpcFactory *self, IOpcUri** rootUri) CreatePackageRootUri;
				public function HRESULT(IOpcFactory *self, PWSTR pwzUri, IOpcPartUri** partUri) CreatePartUri;
				public function HRESULT(IOpcFactory *self, PWSTR filename, OPC_STREAM_IO_MODE ioMode, SECURITY_ATTRIBUTES* securityAttributes, uint32 dwFlagsAndAttributes, IStream** stream) CreateStreamOnFile;
				public function HRESULT(IOpcFactory *self, IOpcPackage** package) CreatePackage;
				public function HRESULT(IOpcFactory *self, IStream* stream, OPC_READ_FLAGS flags, IOpcPackage** package) ReadPackageFromStream;
				public function HRESULT(IOpcFactory *self, IOpcPackage* package, OPC_WRITE_FLAGS flags, IStream* stream) WritePackageToStream;
				public function HRESULT(IOpcFactory *self, IOpcPackage* package, IOpcDigitalSignatureManager** signatureManager) CreateDigitalSignatureManager;
			}
		}
		
	}
}
