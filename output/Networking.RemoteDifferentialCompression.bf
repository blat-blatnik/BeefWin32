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
		
		[CRepr]
		public struct IRdcGeneratorParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a71, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcGeneratorParameters *self, GeneratorParametersType* parametersType) GetGeneratorParametersType;
			public function HRESULT(IRdcGeneratorParameters *self, uint32* currentVersion, uint32* minimumCompatibleAppVersion) GetParametersVersion;
			public function HRESULT(IRdcGeneratorParameters *self, uint32* size) GetSerializeSize;
			public function HRESULT(IRdcGeneratorParameters *self, uint32 size, uint8* parametersBlob, uint32* bytesWritten) Serialize;
		}
		[CRepr]
		public struct IRdcGeneratorFilterMaxParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a72, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32* horizonSize) GetHorizonSize;
			public function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32 horizonSize) SetHorizonSize;
			public function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32* hashWindowSize) GetHashWindowSize;
			public function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32 hashWindowSize) SetHashWindowSize;
		}
		[CRepr]
		public struct IRdcGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a73, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcGenerator *self, uint32 level, IRdcGeneratorParameters** iGeneratorParameters) GetGeneratorParameters;
			public function HRESULT(IRdcGenerator *self, BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, RDC_ErrorCode* rdc_ErrorCode) Process;
		}
		[CRepr]
		public struct IRdcFileReader : IUnknown
		{
			public const new Guid IID = .(0x96236a74, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcFileReader *self, uint64* fileSize) GetFileSize;
			public function HRESULT(IRdcFileReader *self, uint64 offsetFileStart, uint32 bytesToRead, uint32* bytesActuallyRead, uint8* buffer, BOOL* eof) Read;
			public function HRESULT(IRdcFileReader *self, uint64* offsetFromStart) GetFilePosition;
		}
		[CRepr]
		public struct IRdcFileWriter : IRdcFileReader
		{
			public const new Guid IID = .(0x96236a75, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcFileWriter *self, uint64 offsetFileStart, uint32 bytesToWrite, uint8* buffer) Write;
			public function HRESULT(IRdcFileWriter *self) Truncate;
			public function HRESULT(IRdcFileWriter *self) DeleteOnClose;
		}
		[CRepr]
		public struct IRdcSignatureReader : IUnknown
		{
			public const new Guid IID = .(0x96236a76, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcSignatureReader *self, RDC_ErrorCode* rdc_ErrorCode) ReadHeader;
			public function HRESULT(IRdcSignatureReader *self, RdcSignaturePointer* rdcSignaturePointer, BOOL* endOfOutput) ReadSignatures;
		}
		[CRepr]
		public struct IRdcComparator : IUnknown
		{
			public const new Guid IID = .(0x96236a77, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcComparator *self, BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, RdcNeedPointer* outputBuffer, RDC_ErrorCode* rdc_ErrorCode) Process;
		}
		[CRepr]
		public struct IRdcLibrary : IUnknown
		{
			public const new Guid IID = .(0x96236a78, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcLibrary *self, uint64 fileSize, uint32* depth) ComputeDefaultRecursionDepth;
			public function HRESULT(IRdcLibrary *self, GeneratorParametersType parametersType, uint32 level, IRdcGeneratorParameters** iGeneratorParameters) CreateGeneratorParameters;
			public function HRESULT(IRdcLibrary *self, uint32 size, uint8* parametersBlob, IRdcGeneratorParameters** iGeneratorParameters) OpenGeneratorParameters;
			public function HRESULT(IRdcLibrary *self, uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, IRdcGenerator** iGenerator) CreateGenerator;
			public function HRESULT(IRdcLibrary *self, IRdcFileReader* iSeedSignaturesFile, uint32 comparatorBufferSize, IRdcComparator** iComparator) CreateComparator;
			public function HRESULT(IRdcLibrary *self, IRdcFileReader* iFileReader, IRdcSignatureReader** iSignatureReader) CreateSignatureReader;
			public function HRESULT(IRdcLibrary *self, uint32* currentVersion, uint32* minimumCompatibleAppVersion) GetRDCVersion;
		}
		[CRepr]
		public struct ISimilarityReportProgress : IUnknown
		{
			public const new Guid IID = .(0x96236a7a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarityReportProgress *self, uint32 percentCompleted) ReportProgress;
		}
		[CRepr]
		public struct ISimilarityTableDumpState : IUnknown
		{
			public const new Guid IID = .(0x96236a7b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarityTableDumpState *self, uint32 resultsSize, uint32* resultsUsed, BOOL* eof, SimilarityDumpData* results) GetNextData;
		}
		[CRepr]
		public struct ISimilarityTraitsMappedView : IUnknown
		{
			public const new Guid IID = .(0x96236a7c, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarityTraitsMappedView *self) Flush;
			public function HRESULT(ISimilarityTraitsMappedView *self) Unmap;
			public function HRESULT(ISimilarityTraitsMappedView *self, uint64 index, BOOL dirty, uint32 numElements, SimilarityMappedViewInfo* viewInfo) Get;
			public function void(ISimilarityTraitsMappedView *self, uint8** mappedPageBegin, uint8** mappedPageEnd) GetView;
		}
		[CRepr]
		public struct ISimilarityTraitsMapping : IUnknown
		{
			public const new Guid IID = .(0x96236a7d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function void(ISimilarityTraitsMapping *self) CloseMapping;
			public function HRESULT(ISimilarityTraitsMapping *self, uint64 fileSize) SetFileSize;
			public function HRESULT(ISimilarityTraitsMapping *self, uint64* fileSize) GetFileSize;
			public function HRESULT(ISimilarityTraitsMapping *self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) OpenMapping;
			public function HRESULT(ISimilarityTraitsMapping *self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) ResizeMapping;
			public function void(ISimilarityTraitsMapping *self, uint32* pageSize) GetPageSize;
			public function HRESULT(ISimilarityTraitsMapping *self, uint32 minimumMappedPages, RdcMappingAccessMode accessMode, ISimilarityTraitsMappedView** mappedView) CreateView;
		}
		[CRepr]
		public struct ISimilarityTraitsTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarityTraitsTable *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, RdcCreatedTables* isNew) CreateTable;
			public function HRESULT(ISimilarityTraitsTable *self, ISimilarityTraitsMapping* mapping, BOOL truncate, RdcCreatedTables* isNew) CreateTableIndirect;
			public function HRESULT(ISimilarityTraitsTable *self, BOOL isValid) CloseTable;
			public function HRESULT(ISimilarityTraitsTable *self, SimilarityData* data, uint32 fileIndex) Append;
			public function HRESULT(ISimilarityTraitsTable *self, SimilarityData* similarityData, uint16 numberOfMatchesRequired, FindSimilarFileIndexResults* findSimilarFileIndexResults, uint32 resultsSize, uint32* resultsUsed) FindSimilarFileIndex;
			public function HRESULT(ISimilarityTraitsTable *self, ISimilarityTableDumpState** similarityTableDumpState) BeginDump;
			public function HRESULT(ISimilarityTraitsTable *self, uint32* fileIndex) GetLastIndex;
		}
		[CRepr]
		public struct ISimilarityFileIdTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarityFileIdTable *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) CreateTable;
			public function HRESULT(ISimilarityFileIdTable *self, IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) CreateTableIndirect;
			public function HRESULT(ISimilarityFileIdTable *self, BOOL isValid) CloseTable;
			public function HRESULT(ISimilarityFileIdTable *self, SimilarityFileId* similarityFileId, uint32* similarityFileIndex) Append;
			public function HRESULT(ISimilarityFileIdTable *self, uint32 similarityFileIndex, SimilarityFileId* similarityFileId) Lookup;
			public function HRESULT(ISimilarityFileIdTable *self, uint32 similarityFileIndex) Invalidate;
			public function HRESULT(ISimilarityFileIdTable *self, uint32* recordCount) GetRecordCount;
		}
		[CRepr]
		public struct IRdcSimilarityGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a80, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IRdcSimilarityGenerator *self) EnableSimilarity;
			public function HRESULT(IRdcSimilarityGenerator *self, SimilarityData* similarityData) Results;
		}
		[CRepr]
		public struct IFindSimilarResults : IUnknown
		{
			public const new Guid IID = .(0x96236a81, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(IFindSimilarResults *self, uint32* size) GetSize;
			public function HRESULT(IFindSimilarResults *self, uint32* numTraitsMatched, SimilarityFileId* similarityFileId) GetNextFileId;
		}
		[CRepr]
		public struct ISimilarity : IUnknown
		{
			public const new Guid IID = .(0x96236a83, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public function HRESULT(ISimilarity *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) CreateTable;
			public function HRESULT(ISimilarity *self, ISimilarityTraitsMapping* mapping, IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) CreateTableIndirect;
			public function HRESULT(ISimilarity *self, BOOL isValid) CloseTable;
			public function HRESULT(ISimilarity *self, SimilarityFileId* similarityFileId, SimilarityData* similarityData) Append;
			public function HRESULT(ISimilarity *self, SimilarityData* similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, IFindSimilarResults** findSimilarResults) FindSimilarFileId;
			public function HRESULT(ISimilarity *self, ISimilarity* newSimilarityTables, ISimilarityReportProgress* reportProgress) CopyAndSwap;
			public function HRESULT(ISimilarity *self, uint32* recordCount) GetRecordCount;
		}
		
	}
}
