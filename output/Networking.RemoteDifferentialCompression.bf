using System;

// namespace Networking.RemoteDifferentialCompression
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RDCE_TABLE_FULL = 2147745793;
		public const uint32 RDCE_TABLE_CORRUPT = 2147745794;
		public const uint32 MSRDC_SIGNATURE_HASHSIZE = 16;
		public const uint32 SimilarityFileIdMinSize = 4;
		public const uint32 SimilarityFileIdMaxSize = 32;
		public const uint32 MSRDC_VERSION = 65536;
		public const uint32 MSRDC_MINIMUM_COMPATIBLE_APP_VERSION = 65536;
		public const uint32 MSRDC_MINIMUM_DEPTH = 1;
		public const uint32 MSRDC_MAXIMUM_DEPTH = 8;
		public const uint32 MSRDC_MINIMUM_COMPAREBUFFER = 100000;
		public const uint32 MSRDC_MAXIMUM_COMPAREBUFFER = 1073741824;
		public const uint32 MSRDC_DEFAULT_COMPAREBUFFER = 3200000;
		public const uint32 MSRDC_MINIMUM_INPUTBUFFERSIZE = 1024;
		public const uint32 MSRDC_MINIMUM_HORIZONSIZE = 128;
		public const uint32 MSRDC_MAXIMUM_HORIZONSIZE = 16384;
		public const uint32 MSRDC_MINIMUM_HASHWINDOWSIZE = 2;
		public const uint32 MSRDC_MAXIMUM_HASHWINDOWSIZE = 96;
		public const uint32 MSRDC_DEFAULT_HASHWINDOWSIZE_1 = 48;
		public const uint32 MSRDC_DEFAULT_HORIZONSIZE_1 = 1024;
		public const uint32 MSRDC_DEFAULT_HASHWINDOWSIZE_N = 2;
		public const uint32 MSRDC_DEFAULT_HORIZONSIZE_N = 128;
		public const uint32 MSRDC_MAXIMUM_TRAITVALUE = 63;
		public const uint32 MSRDC_MINIMUM_MATCHESREQUIRED = 1;
		public const uint32 MSRDC_MAXIMUM_MATCHESREQUIRED = 16;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum RDC_ErrorCode : int32
		{
			RDC_NoError = 0,
			RDC_HeaderVersionNewer = 1,
			RDC_HeaderVersionOlder = 2,
			RDC_HeaderMissingOrCorrupt = 3,
			RDC_HeaderWrongType = 4,
			RDC_DataMissingOrCorrupt = 5,
			RDC_DataTooManyRecords = 6,
			RDC_FileChecksumMismatch = 7,
			RDC_ApplicationError = 8,
			RDC_Aborted = 9,
			RDC_Win32Error = 10,
		}
		[AllowDuplicates]
		public enum GeneratorParametersType : int32
		{
			RDCGENTYPE_Unused = 0,
			RDCGENTYPE_FilterMax = 1,
		}
		[AllowDuplicates]
		public enum RdcNeedType : int32
		{
			RDCNEED_SOURCE = 0,
			RDCNEED_TARGET = 1,
			RDCNEED_SEED = 2,
			RDCNEED_SEED_MAX = 255,
		}
		[AllowDuplicates]
		public enum RdcCreatedTables : int32
		{
			RDCTABLE_InvalidOrUnknown = 0,
			RDCTABLE_Existing = 1,
			RDCTABLE_New = 2,
		}
		[AllowDuplicates]
		public enum RdcMappingAccessMode : int32
		{
			RDCMAPPING_Undefined = 0,
			RDCMAPPING_ReadOnly = 1,
			RDCMAPPING_ReadWrite = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct RdcNeed
		{
			public RdcNeedType m_BlockType;
			public uint64 m_FileOffset;
			public uint64 m_BlockLength;
		}
		[CRepr]
		public struct RdcBufferPointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public uint8* m_Data;
		}
		[CRepr]
		public struct RdcNeedPointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public RdcNeed* m_Data;
		}
		[CRepr]
		public struct RdcSignature
		{
			public uint8[16] m_Signature;
			public uint16 m_BlockLength;
		}
		[CRepr]
		public struct RdcSignaturePointer
		{
			public uint32 m_Size;
			public uint32 m_Used;
			public RdcSignature* m_Data;
		}
		[CRepr]
		public struct SimilarityMappedViewInfo
		{
			public uint8* m_Data;
			public uint32 m_Length;
		}
		[CRepr]
		public struct SimilarityData
		{
			public uint8[16] m_Data;
		}
		[CRepr]
		public struct FindSimilarFileIndexResults
		{
			public uint32 m_FileIndex;
			public uint32 m_MatchCount;
		}
		[CRepr]
		public struct SimilarityDumpData
		{
			public uint32 m_FileIndex;
			public SimilarityData m_Data;
		}
		[CRepr]
		public struct SimilarityFileId
		{
			public uint8[32] m_FileId;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RdcLibrary = .(0x96236a85, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGeneratorParameters = .(0x96236a86, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGeneratorFilterMaxParameters = .(0x96236a87, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcGenerator = .(0x96236a88, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcFileReader = .(0x96236a89, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcSignatureReader = .(0x96236a8a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcComparator = .(0x96236a8b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityReportProgress = .(0x96236a8d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTableDumpState = .(0x96236a8e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsTable = .(0x96236a8f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityFileIdTable = .(0x96236a90, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_Similarity = .(0x96236a91, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_RdcSimilarityGenerator = .(0x96236a92, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_FindSimilarResults = .(0x96236a93, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsMapping = .(0x96236a94, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		public const Guid CLSID_SimilarityTraitsMappedView = .(0x96236a95, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
		
		// --- COM Interfaces ---
		
		public struct IRdcGeneratorParameters {}
		public struct IRdcGeneratorFilterMaxParameters {}
		public struct IRdcGenerator {}
		public struct IRdcFileReader {}
		public struct IRdcFileWriter {}
		public struct IRdcSignatureReader {}
		public struct IRdcComparator {}
		public struct IRdcLibrary {}
		public struct ISimilarityReportProgress {}
		public struct ISimilarityTableDumpState {}
		public struct ISimilarityTraitsMappedView {}
		public struct ISimilarityTraitsMapping {}
		public struct ISimilarityTraitsTable {}
		public struct ISimilarityFileIdTable {}
		public struct IRdcSimilarityGenerator {}
		public struct IFindSimilarResults {}
		public struct ISimilarity {}
		
	}
}
