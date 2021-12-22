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
			NoError = 0,
			HeaderVersionNewer = 1,
			HeaderVersionOlder = 2,
			HeaderMissingOrCorrupt = 3,
			HeaderWrongType = 4,
			DataMissingOrCorrupt = 5,
			DataTooManyRecords = 6,
			FileChecksumMismatch = 7,
			ApplicationError = 8,
			Aborted = 9,
			Win32Error = 10,
		}
		[AllowDuplicates]
		public enum GeneratorParametersType : int32
		{
			Unused = 0,
			FilterMax = 1,
		}
		[AllowDuplicates]
		public enum RdcNeedType : int32
		{
			SOURCE = 0,
			TARGET = 1,
			SEED = 2,
			SEED_MAX = 255,
		}
		[AllowDuplicates]
		public enum RdcCreatedTables : int32
		{
			InvalidOrUnknown = 0,
			Existing = 1,
			New = 2,
		}
		[AllowDuplicates]
		public enum RdcMappingAccessMode : int32
		{
			Undefined = 0,
			ReadOnly = 1,
			ReadWrite = 2,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeneratorParametersType(GeneratorParametersType* parametersType) mut
			{
				return VT.GetGeneratorParametersType(&this, parametersType);
			}
			public HRESULT GetParametersVersion(uint32* currentVersion, uint32* minimumCompatibleAppVersion) mut
			{
				return VT.GetParametersVersion(&this, currentVersion, minimumCompatibleAppVersion);
			}
			public HRESULT GetSerializeSize(uint32* size) mut
			{
				return VT.GetSerializeSize(&this, size);
			}
			public HRESULT Serialize(uint32 size, uint8* parametersBlob, uint32* bytesWritten) mut
			{
				return VT.Serialize(&this, size, parametersBlob, bytesWritten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcGeneratorParameters *self, GeneratorParametersType* parametersType) GetGeneratorParametersType;
				public new function HRESULT(IRdcGeneratorParameters *self, uint32* currentVersion, uint32* minimumCompatibleAppVersion) GetParametersVersion;
				public new function HRESULT(IRdcGeneratorParameters *self, uint32* size) GetSerializeSize;
				public new function HRESULT(IRdcGeneratorParameters *self, uint32 size, uint8* parametersBlob, uint32* bytesWritten) Serialize;
			}
		}
		[CRepr]
		public struct IRdcGeneratorFilterMaxParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a72, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHorizonSize(uint32* horizonSize) mut
			{
				return VT.GetHorizonSize(&this, horizonSize);
			}
			public HRESULT SetHorizonSize(uint32 horizonSize) mut
			{
				return VT.SetHorizonSize(&this, horizonSize);
			}
			public HRESULT GetHashWindowSize(uint32* hashWindowSize) mut
			{
				return VT.GetHashWindowSize(&this, hashWindowSize);
			}
			public HRESULT SetHashWindowSize(uint32 hashWindowSize) mut
			{
				return VT.SetHashWindowSize(&this, hashWindowSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32* horizonSize) GetHorizonSize;
				public new function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32 horizonSize) SetHorizonSize;
				public new function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32* hashWindowSize) GetHashWindowSize;
				public new function HRESULT(IRdcGeneratorFilterMaxParameters *self, uint32 hashWindowSize) SetHashWindowSize;
			}
		}
		[CRepr]
		public struct IRdcGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a73, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeneratorParameters(uint32 level, IRdcGeneratorParameters** iGeneratorParameters) mut
			{
				return VT.GetGeneratorParameters(&this, level, iGeneratorParameters);
			}
			public HRESULT Process(BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, RDC_ErrorCode* rdc_ErrorCode) mut
			{
				return VT.Process(&this, endOfInput, endOfOutput, inputBuffer, depth, outputBuffers, rdc_ErrorCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcGenerator *self, uint32 level, IRdcGeneratorParameters** iGeneratorParameters) GetGeneratorParameters;
				public new function HRESULT(IRdcGenerator *self, BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, RDC_ErrorCode* rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcFileReader : IUnknown
		{
			public const new Guid IID = .(0x96236a74, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileSize(uint64* fileSize) mut
			{
				return VT.GetFileSize(&this, fileSize);
			}
			public HRESULT Read(uint64 offsetFileStart, uint32 bytesToRead, uint32* bytesActuallyRead, uint8* buffer, BOOL* eof) mut
			{
				return VT.Read(&this, offsetFileStart, bytesToRead, bytesActuallyRead, buffer, eof);
			}
			public HRESULT GetFilePosition(uint64* offsetFromStart) mut
			{
				return VT.GetFilePosition(&this, offsetFromStart);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcFileReader *self, uint64* fileSize) GetFileSize;
				public new function HRESULT(IRdcFileReader *self, uint64 offsetFileStart, uint32 bytesToRead, uint32* bytesActuallyRead, uint8* buffer, BOOL* eof) Read;
				public new function HRESULT(IRdcFileReader *self, uint64* offsetFromStart) GetFilePosition;
			}
		}
		[CRepr]
		public struct IRdcFileWriter : IRdcFileReader
		{
			public const new Guid IID = .(0x96236a75, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint64 offsetFileStart, uint32 bytesToWrite, uint8* buffer) mut
			{
				return VT.Write(&this, offsetFileStart, bytesToWrite, buffer);
			}
			public HRESULT Truncate() mut
			{
				return VT.Truncate(&this);
			}
			public HRESULT DeleteOnClose() mut
			{
				return VT.DeleteOnClose(&this);
			}
			[CRepr]
			public struct VTable : IRdcFileReader.VTable
			{
				public new function HRESULT(IRdcFileWriter *self, uint64 offsetFileStart, uint32 bytesToWrite, uint8* buffer) Write;
				public new function HRESULT(IRdcFileWriter *self) Truncate;
				public new function HRESULT(IRdcFileWriter *self) DeleteOnClose;
			}
		}
		[CRepr]
		public struct IRdcSignatureReader : IUnknown
		{
			public const new Guid IID = .(0x96236a76, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadHeader(RDC_ErrorCode* rdc_ErrorCode) mut
			{
				return VT.ReadHeader(&this, rdc_ErrorCode);
			}
			public HRESULT ReadSignatures(RdcSignaturePointer* rdcSignaturePointer, BOOL* endOfOutput) mut
			{
				return VT.ReadSignatures(&this, rdcSignaturePointer, endOfOutput);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcSignatureReader *self, RDC_ErrorCode* rdc_ErrorCode) ReadHeader;
				public new function HRESULT(IRdcSignatureReader *self, RdcSignaturePointer* rdcSignaturePointer, BOOL* endOfOutput) ReadSignatures;
			}
		}
		[CRepr]
		public struct IRdcComparator : IUnknown
		{
			public const new Guid IID = .(0x96236a77, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Process(BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, RdcNeedPointer* outputBuffer, RDC_ErrorCode* rdc_ErrorCode) mut
			{
				return VT.Process(&this, endOfInput, endOfOutput, inputBuffer, outputBuffer, rdc_ErrorCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcComparator *self, BOOL endOfInput, BOOL* endOfOutput, RdcBufferPointer* inputBuffer, RdcNeedPointer* outputBuffer, RDC_ErrorCode* rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcLibrary : IUnknown
		{
			public const new Guid IID = .(0x96236a78, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComputeDefaultRecursionDepth(uint64 fileSize, uint32* depth) mut
			{
				return VT.ComputeDefaultRecursionDepth(&this, fileSize, depth);
			}
			public HRESULT CreateGeneratorParameters(GeneratorParametersType parametersType, uint32 level, IRdcGeneratorParameters** iGeneratorParameters) mut
			{
				return VT.CreateGeneratorParameters(&this, parametersType, level, iGeneratorParameters);
			}
			public HRESULT OpenGeneratorParameters(uint32 size, uint8* parametersBlob, IRdcGeneratorParameters** iGeneratorParameters) mut
			{
				return VT.OpenGeneratorParameters(&this, size, parametersBlob, iGeneratorParameters);
			}
			public HRESULT CreateGenerator(uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, IRdcGenerator** iGenerator) mut
			{
				return VT.CreateGenerator(&this, depth, iGeneratorParametersArray, iGenerator);
			}
			public HRESULT CreateComparator(IRdcFileReader* iSeedSignaturesFile, uint32 comparatorBufferSize, IRdcComparator** iComparator) mut
			{
				return VT.CreateComparator(&this, iSeedSignaturesFile, comparatorBufferSize, iComparator);
			}
			public HRESULT CreateSignatureReader(IRdcFileReader* iFileReader, IRdcSignatureReader** iSignatureReader) mut
			{
				return VT.CreateSignatureReader(&this, iFileReader, iSignatureReader);
			}
			public HRESULT GetRDCVersion(uint32* currentVersion, uint32* minimumCompatibleAppVersion) mut
			{
				return VT.GetRDCVersion(&this, currentVersion, minimumCompatibleAppVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcLibrary *self, uint64 fileSize, uint32* depth) ComputeDefaultRecursionDepth;
				public new function HRESULT(IRdcLibrary *self, GeneratorParametersType parametersType, uint32 level, IRdcGeneratorParameters** iGeneratorParameters) CreateGeneratorParameters;
				public new function HRESULT(IRdcLibrary *self, uint32 size, uint8* parametersBlob, IRdcGeneratorParameters** iGeneratorParameters) OpenGeneratorParameters;
				public new function HRESULT(IRdcLibrary *self, uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, IRdcGenerator** iGenerator) CreateGenerator;
				public new function HRESULT(IRdcLibrary *self, IRdcFileReader* iSeedSignaturesFile, uint32 comparatorBufferSize, IRdcComparator** iComparator) CreateComparator;
				public new function HRESULT(IRdcLibrary *self, IRdcFileReader* iFileReader, IRdcSignatureReader** iSignatureReader) CreateSignatureReader;
				public new function HRESULT(IRdcLibrary *self, uint32* currentVersion, uint32* minimumCompatibleAppVersion) GetRDCVersion;
			}
		}
		[CRepr]
		public struct ISimilarityReportProgress : IUnknown
		{
			public const new Guid IID = .(0x96236a7a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportProgress(uint32 percentCompleted) mut
			{
				return VT.ReportProgress(&this, percentCompleted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarityReportProgress *self, uint32 percentCompleted) ReportProgress;
			}
		}
		[CRepr]
		public struct ISimilarityTableDumpState : IUnknown
		{
			public const new Guid IID = .(0x96236a7b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNextData(uint32 resultsSize, uint32* resultsUsed, BOOL* eof, SimilarityDumpData* results) mut
			{
				return VT.GetNextData(&this, resultsSize, resultsUsed, eof, results);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarityTableDumpState *self, uint32 resultsSize, uint32* resultsUsed, BOOL* eof, SimilarityDumpData* results) GetNextData;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMappedView : IUnknown
		{
			public const new Guid IID = .(0x96236a7c, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			public HRESULT Unmap() mut
			{
				return VT.Unmap(&this);
			}
			public HRESULT Get(uint64 index, BOOL dirty, uint32 numElements, SimilarityMappedViewInfo* viewInfo) mut
			{
				return VT.Get(&this, index, dirty, numElements, viewInfo);
			}
			public void GetView(uint8** mappedPageBegin, uint8** mappedPageEnd) mut
			{
				VT.GetView(&this, mappedPageBegin, mappedPageEnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarityTraitsMappedView *self) Flush;
				public new function HRESULT(ISimilarityTraitsMappedView *self) Unmap;
				public new function HRESULT(ISimilarityTraitsMappedView *self, uint64 index, BOOL dirty, uint32 numElements, SimilarityMappedViewInfo* viewInfo) Get;
				public new function void(ISimilarityTraitsMappedView *self, uint8** mappedPageBegin, uint8** mappedPageEnd) GetView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMapping : IUnknown
		{
			public const new Guid IID = .(0x96236a7d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public void CloseMapping() mut
			{
				VT.CloseMapping(&this);
			}
			public HRESULT SetFileSize(uint64 fileSize) mut
			{
				return VT.SetFileSize(&this, fileSize);
			}
			public HRESULT GetFileSize(uint64* fileSize) mut
			{
				return VT.GetFileSize(&this, fileSize);
			}
			public HRESULT OpenMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) mut
			{
				return VT.OpenMapping(&this, accessMode, begin, end, actualEnd);
			}
			public HRESULT ResizeMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) mut
			{
				return VT.ResizeMapping(&this, accessMode, begin, end, actualEnd);
			}
			public void GetPageSize(uint32* pageSize) mut
			{
				VT.GetPageSize(&this, pageSize);
			}
			public HRESULT CreateView(uint32 minimumMappedPages, RdcMappingAccessMode accessMode, ISimilarityTraitsMappedView** mappedView) mut
			{
				return VT.CreateView(&this, minimumMappedPages, accessMode, mappedView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ISimilarityTraitsMapping *self) CloseMapping;
				public new function HRESULT(ISimilarityTraitsMapping *self, uint64 fileSize) SetFileSize;
				public new function HRESULT(ISimilarityTraitsMapping *self, uint64* fileSize) GetFileSize;
				public new function HRESULT(ISimilarityTraitsMapping *self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) OpenMapping;
				public new function HRESULT(ISimilarityTraitsMapping *self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, uint64* actualEnd) ResizeMapping;
				public new function void(ISimilarityTraitsMapping *self, uint32* pageSize) GetPageSize;
				public new function HRESULT(ISimilarityTraitsMapping *self, uint32 minimumMappedPages, RdcMappingAccessMode accessMode, ISimilarityTraitsMappedView** mappedView) CreateView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, uint8* securityDescriptor, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTable(&this, path, truncate, securityDescriptor, isNew);
			}
			public HRESULT CreateTableIndirect(ISimilarityTraitsMapping* mapping, BOOL truncate, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTableIndirect(&this, mapping, truncate, isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(&this, isValid);
			}
			public HRESULT Append(SimilarityData* data, uint32 fileIndex) mut
			{
				return VT.Append(&this, data, fileIndex);
			}
			public HRESULT FindSimilarFileIndex(SimilarityData* similarityData, uint16 numberOfMatchesRequired, FindSimilarFileIndexResults* findSimilarFileIndexResults, uint32 resultsSize, uint32* resultsUsed) mut
			{
				return VT.FindSimilarFileIndex(&this, similarityData, numberOfMatchesRequired, findSimilarFileIndexResults, resultsSize, resultsUsed);
			}
			public HRESULT BeginDump(ISimilarityTableDumpState** similarityTableDumpState) mut
			{
				return VT.BeginDump(&this, similarityTableDumpState);
			}
			public HRESULT GetLastIndex(uint32* fileIndex) mut
			{
				return VT.GetLastIndex(&this, fileIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarityTraitsTable *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, RdcCreatedTables* isNew) CreateTable;
				public new function HRESULT(ISimilarityTraitsTable *self, ISimilarityTraitsMapping* mapping, BOOL truncate, RdcCreatedTables* isNew) CreateTableIndirect;
				public new function HRESULT(ISimilarityTraitsTable *self, BOOL isValid) CloseTable;
				public new function HRESULT(ISimilarityTraitsTable *self, SimilarityData* data, uint32 fileIndex) Append;
				public new function HRESULT(ISimilarityTraitsTable *self, SimilarityData* similarityData, uint16 numberOfMatchesRequired, FindSimilarFileIndexResults* findSimilarFileIndexResults, uint32 resultsSize, uint32* resultsUsed) FindSimilarFileIndex;
				public new function HRESULT(ISimilarityTraitsTable *self, ISimilarityTableDumpState** similarityTableDumpState) BeginDump;
				public new function HRESULT(ISimilarityTraitsTable *self, uint32* fileIndex) GetLastIndex;
			}
		}
		[CRepr]
		public struct ISimilarityFileIdTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTable(&this, path, truncate, securityDescriptor, recordSize, isNew);
			}
			public HRESULT CreateTableIndirect(IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTableIndirect(&this, fileIdFile, truncate, recordSize, isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(&this, isValid);
			}
			public HRESULT Append(SimilarityFileId* similarityFileId, uint32* similarityFileIndex) mut
			{
				return VT.Append(&this, similarityFileId, similarityFileIndex);
			}
			public HRESULT Lookup(uint32 similarityFileIndex, SimilarityFileId* similarityFileId) mut
			{
				return VT.Lookup(&this, similarityFileIndex, similarityFileId);
			}
			public HRESULT Invalidate(uint32 similarityFileIndex) mut
			{
				return VT.Invalidate(&this, similarityFileIndex);
			}
			public HRESULT GetRecordCount(uint32* recordCount) mut
			{
				return VT.GetRecordCount(&this, recordCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarityFileIdTable *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) CreateTable;
				public new function HRESULT(ISimilarityFileIdTable *self, IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) CreateTableIndirect;
				public new function HRESULT(ISimilarityFileIdTable *self, BOOL isValid) CloseTable;
				public new function HRESULT(ISimilarityFileIdTable *self, SimilarityFileId* similarityFileId, uint32* similarityFileIndex) Append;
				public new function HRESULT(ISimilarityFileIdTable *self, uint32 similarityFileIndex, SimilarityFileId* similarityFileId) Lookup;
				public new function HRESULT(ISimilarityFileIdTable *self, uint32 similarityFileIndex) Invalidate;
				public new function HRESULT(ISimilarityFileIdTable *self, uint32* recordCount) GetRecordCount;
			}
		}
		[CRepr]
		public struct IRdcSimilarityGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a80, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableSimilarity() mut
			{
				return VT.EnableSimilarity(&this);
			}
			public HRESULT Results(SimilarityData* similarityData) mut
			{
				return VT.Results(&this, similarityData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRdcSimilarityGenerator *self) EnableSimilarity;
				public new function HRESULT(IRdcSimilarityGenerator *self, SimilarityData* similarityData) Results;
			}
		}
		[CRepr]
		public struct IFindSimilarResults : IUnknown
		{
			public const new Guid IID = .(0x96236a81, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSize(uint32* size) mut
			{
				return VT.GetSize(&this, size);
			}
			public HRESULT GetNextFileId(uint32* numTraitsMatched, SimilarityFileId* similarityFileId) mut
			{
				return VT.GetNextFileId(&this, numTraitsMatched, similarityFileId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFindSimilarResults *self, uint32* size) GetSize;
				public new function HRESULT(IFindSimilarResults *self, uint32* numTraitsMatched, SimilarityFileId* similarityFileId) GetNextFileId;
			}
		}
		[CRepr]
		public struct ISimilarity : IUnknown
		{
			public const new Guid IID = .(0x96236a83, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTable(&this, path, truncate, securityDescriptor, recordSize, isNew);
			}
			public HRESULT CreateTableIndirect(ISimilarityTraitsMapping* mapping, IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) mut
			{
				return VT.CreateTableIndirect(&this, mapping, fileIdFile, truncate, recordSize, isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(&this, isValid);
			}
			public HRESULT Append(SimilarityFileId* similarityFileId, SimilarityData* similarityData) mut
			{
				return VT.Append(&this, similarityFileId, similarityData);
			}
			public HRESULT FindSimilarFileId(SimilarityData* similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, IFindSimilarResults** findSimilarResults) mut
			{
				return VT.FindSimilarFileId(&this, similarityData, numberOfMatchesRequired, resultsSize, findSimilarResults);
			}
			public HRESULT CopyAndSwap(ISimilarity* newSimilarityTables, ISimilarityReportProgress* reportProgress) mut
			{
				return VT.CopyAndSwap(&this, newSimilarityTables, reportProgress);
			}
			public HRESULT GetRecordCount(uint32* recordCount) mut
			{
				return VT.GetRecordCount(&this, recordCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimilarity *self, PWSTR path, BOOL truncate, uint8* securityDescriptor, uint32 recordSize, RdcCreatedTables* isNew) CreateTable;
				public new function HRESULT(ISimilarity *self, ISimilarityTraitsMapping* mapping, IRdcFileWriter* fileIdFile, BOOL truncate, uint32 recordSize, RdcCreatedTables* isNew) CreateTableIndirect;
				public new function HRESULT(ISimilarity *self, BOOL isValid) CloseTable;
				public new function HRESULT(ISimilarity *self, SimilarityFileId* similarityFileId, SimilarityData* similarityData) Append;
				public new function HRESULT(ISimilarity *self, SimilarityData* similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, IFindSimilarResults** findSimilarResults) FindSimilarFileId;
				public new function HRESULT(ISimilarity *self, ISimilarity* newSimilarityTables, ISimilarityReportProgress* reportProgress) CopyAndSwap;
				public new function HRESULT(ISimilarity *self, uint32* recordCount) GetRecordCount;
			}
		}
		
	}
}
