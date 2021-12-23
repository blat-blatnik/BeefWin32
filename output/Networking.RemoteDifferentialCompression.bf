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
		public enum GeneratorParametersType : int32
		{
			Unused = 0,
			FilterMax = 1,
		}
		public enum RdcNeedType : int32
		{
			SOURCE = 0,
			TARGET = 1,
			SEED = 2,
			SEED_MAX = 255,
		}
		public enum RdcCreatedTables : int32
		{
			InvalidOrUnknown = 0,
			Existing = 1,
			New = 2,
		}
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
			
			public HRESULT GetGeneratorParametersType(out GeneratorParametersType parametersType) mut
			{
				return VT.GetGeneratorParametersType(ref this, out parametersType);
			}
			public HRESULT GetParametersVersion(out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) mut
			{
				return VT.GetParametersVersion(ref this, out currentVersion, out minimumCompatibleAppVersion);
			}
			public HRESULT GetSerializeSize(out uint32 size) mut
			{
				return VT.GetSerializeSize(ref this, out size);
			}
			public HRESULT Serialize(uint32 size, out uint8 parametersBlob, out uint32 bytesWritten) mut
			{
				return VT.Serialize(ref this, size, out parametersBlob, out bytesWritten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcGeneratorParameters self, out GeneratorParametersType parametersType) GetGeneratorParametersType;
				public new function HRESULT(ref IRdcGeneratorParameters self, out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) GetParametersVersion;
				public new function HRESULT(ref IRdcGeneratorParameters self, out uint32 size) GetSerializeSize;
				public new function HRESULT(ref IRdcGeneratorParameters self, uint32 size, out uint8 parametersBlob, out uint32 bytesWritten) Serialize;
			}
		}
		[CRepr]
		public struct IRdcGeneratorFilterMaxParameters : IUnknown
		{
			public const new Guid IID = .(0x96236a72, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHorizonSize(out uint32 horizonSize) mut
			{
				return VT.GetHorizonSize(ref this, out horizonSize);
			}
			public HRESULT SetHorizonSize(uint32 horizonSize) mut
			{
				return VT.SetHorizonSize(ref this, horizonSize);
			}
			public HRESULT GetHashWindowSize(out uint32 hashWindowSize) mut
			{
				return VT.GetHashWindowSize(ref this, out hashWindowSize);
			}
			public HRESULT SetHashWindowSize(uint32 hashWindowSize) mut
			{
				return VT.SetHashWindowSize(ref this, hashWindowSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcGeneratorFilterMaxParameters self, out uint32 horizonSize) GetHorizonSize;
				public new function HRESULT(ref IRdcGeneratorFilterMaxParameters self, uint32 horizonSize) SetHorizonSize;
				public new function HRESULT(ref IRdcGeneratorFilterMaxParameters self, out uint32 hashWindowSize) GetHashWindowSize;
				public new function HRESULT(ref IRdcGeneratorFilterMaxParameters self, uint32 hashWindowSize) SetHashWindowSize;
			}
		}
		[CRepr]
		public struct IRdcGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a73, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGeneratorParameters(uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) mut
			{
				return VT.GetGeneratorParameters(ref this, level, out iGeneratorParameters);
			}
			public HRESULT Process(BOOL endOfInput, out BOOL endOfOutput, out RdcBufferPointer inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, out RDC_ErrorCode rdc_ErrorCode) mut
			{
				return VT.Process(ref this, endOfInput, out endOfOutput, out inputBuffer, depth, outputBuffers, out rdc_ErrorCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcGenerator self, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) GetGeneratorParameters;
				public new function HRESULT(ref IRdcGenerator self, BOOL endOfInput, out BOOL endOfOutput, out RdcBufferPointer inputBuffer, uint32 depth, RdcBufferPointer** outputBuffers, out RDC_ErrorCode rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcFileReader : IUnknown
		{
			public const new Guid IID = .(0x96236a74, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileSize(out uint64 fileSize) mut
			{
				return VT.GetFileSize(ref this, out fileSize);
			}
			public HRESULT Read(uint64 offsetFileStart, uint32 bytesToRead, out uint32 bytesActuallyRead, out uint8 buffer, out BOOL eof) mut
			{
				return VT.Read(ref this, offsetFileStart, bytesToRead, out bytesActuallyRead, out buffer, out eof);
			}
			public HRESULT GetFilePosition(out uint64 offsetFromStart) mut
			{
				return VT.GetFilePosition(ref this, out offsetFromStart);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcFileReader self, out uint64 fileSize) GetFileSize;
				public new function HRESULT(ref IRdcFileReader self, uint64 offsetFileStart, uint32 bytesToRead, out uint32 bytesActuallyRead, out uint8 buffer, out BOOL eof) Read;
				public new function HRESULT(ref IRdcFileReader self, out uint64 offsetFromStart) GetFilePosition;
			}
		}
		[CRepr]
		public struct IRdcFileWriter : IRdcFileReader
		{
			public const new Guid IID = .(0x96236a75, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint64 offsetFileStart, uint32 bytesToWrite, out uint8 buffer) mut
			{
				return VT.Write(ref this, offsetFileStart, bytesToWrite, out buffer);
			}
			public HRESULT Truncate() mut
			{
				return VT.Truncate(ref this);
			}
			public HRESULT DeleteOnClose() mut
			{
				return VT.DeleteOnClose(ref this);
			}
			[CRepr]
			public struct VTable : IRdcFileReader.VTable
			{
				public new function HRESULT(ref IRdcFileWriter self, uint64 offsetFileStart, uint32 bytesToWrite, out uint8 buffer) Write;
				public new function HRESULT(ref IRdcFileWriter self) Truncate;
				public new function HRESULT(ref IRdcFileWriter self) DeleteOnClose;
			}
		}
		[CRepr]
		public struct IRdcSignatureReader : IUnknown
		{
			public const new Guid IID = .(0x96236a76, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadHeader(out RDC_ErrorCode rdc_ErrorCode) mut
			{
				return VT.ReadHeader(ref this, out rdc_ErrorCode);
			}
			public HRESULT ReadSignatures(out RdcSignaturePointer rdcSignaturePointer, out BOOL endOfOutput) mut
			{
				return VT.ReadSignatures(ref this, out rdcSignaturePointer, out endOfOutput);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcSignatureReader self, out RDC_ErrorCode rdc_ErrorCode) ReadHeader;
				public new function HRESULT(ref IRdcSignatureReader self, out RdcSignaturePointer rdcSignaturePointer, out BOOL endOfOutput) ReadSignatures;
			}
		}
		[CRepr]
		public struct IRdcComparator : IUnknown
		{
			public const new Guid IID = .(0x96236a77, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Process(BOOL endOfInput, out BOOL endOfOutput, out RdcBufferPointer inputBuffer, out RdcNeedPointer outputBuffer, out RDC_ErrorCode rdc_ErrorCode) mut
			{
				return VT.Process(ref this, endOfInput, out endOfOutput, out inputBuffer, out outputBuffer, out rdc_ErrorCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcComparator self, BOOL endOfInput, out BOOL endOfOutput, out RdcBufferPointer inputBuffer, out RdcNeedPointer outputBuffer, out RDC_ErrorCode rdc_ErrorCode) Process;
			}
		}
		[CRepr]
		public struct IRdcLibrary : IUnknown
		{
			public const new Guid IID = .(0x96236a78, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComputeDefaultRecursionDepth(uint64 fileSize, out uint32 depth) mut
			{
				return VT.ComputeDefaultRecursionDepth(ref this, fileSize, out depth);
			}
			public HRESULT CreateGeneratorParameters(GeneratorParametersType parametersType, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) mut
			{
				return VT.CreateGeneratorParameters(ref this, parametersType, level, out iGeneratorParameters);
			}
			public HRESULT OpenGeneratorParameters(uint32 size, in uint8 parametersBlob, out IRdcGeneratorParameters* iGeneratorParameters) mut
			{
				return VT.OpenGeneratorParameters(ref this, size, parametersBlob, out iGeneratorParameters);
			}
			public HRESULT CreateGenerator(uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, out IRdcGenerator* iGenerator) mut
			{
				return VT.CreateGenerator(ref this, depth, iGeneratorParametersArray, out iGenerator);
			}
			public HRESULT CreateComparator(ref IRdcFileReader iSeedSignaturesFile, uint32 comparatorBufferSize, out IRdcComparator* iComparator) mut
			{
				return VT.CreateComparator(ref this, ref iSeedSignaturesFile, comparatorBufferSize, out iComparator);
			}
			public HRESULT CreateSignatureReader(ref IRdcFileReader iFileReader, out IRdcSignatureReader* iSignatureReader) mut
			{
				return VT.CreateSignatureReader(ref this, ref iFileReader, out iSignatureReader);
			}
			public HRESULT GetRDCVersion(out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) mut
			{
				return VT.GetRDCVersion(ref this, out currentVersion, out minimumCompatibleAppVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcLibrary self, uint64 fileSize, out uint32 depth) ComputeDefaultRecursionDepth;
				public new function HRESULT(ref IRdcLibrary self, GeneratorParametersType parametersType, uint32 level, out IRdcGeneratorParameters* iGeneratorParameters) CreateGeneratorParameters;
				public new function HRESULT(ref IRdcLibrary self, uint32 size, in uint8 parametersBlob, out IRdcGeneratorParameters* iGeneratorParameters) OpenGeneratorParameters;
				public new function HRESULT(ref IRdcLibrary self, uint32 depth, IRdcGeneratorParameters** iGeneratorParametersArray, out IRdcGenerator* iGenerator) CreateGenerator;
				public new function HRESULT(ref IRdcLibrary self, ref IRdcFileReader iSeedSignaturesFile, uint32 comparatorBufferSize, out IRdcComparator* iComparator) CreateComparator;
				public new function HRESULT(ref IRdcLibrary self, ref IRdcFileReader iFileReader, out IRdcSignatureReader* iSignatureReader) CreateSignatureReader;
				public new function HRESULT(ref IRdcLibrary self, out uint32 currentVersion, out uint32 minimumCompatibleAppVersion) GetRDCVersion;
			}
		}
		[CRepr]
		public struct ISimilarityReportProgress : IUnknown
		{
			public const new Guid IID = .(0x96236a7a, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportProgress(uint32 percentCompleted) mut
			{
				return VT.ReportProgress(ref this, percentCompleted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarityReportProgress self, uint32 percentCompleted) ReportProgress;
			}
		}
		[CRepr]
		public struct ISimilarityTableDumpState : IUnknown
		{
			public const new Guid IID = .(0x96236a7b, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNextData(uint32 resultsSize, out uint32 resultsUsed, out BOOL eof, out SimilarityDumpData results) mut
			{
				return VT.GetNextData(ref this, resultsSize, out resultsUsed, out eof, out results);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarityTableDumpState self, uint32 resultsSize, out uint32 resultsUsed, out BOOL eof, out SimilarityDumpData results) GetNextData;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMappedView : IUnknown
		{
			public const new Guid IID = .(0x96236a7c, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Flush() mut
			{
				return VT.Flush(ref this);
			}
			public HRESULT Unmap() mut
			{
				return VT.Unmap(ref this);
			}
			public HRESULT Get(uint64 index, BOOL dirty, uint32 numElements, out SimilarityMappedViewInfo viewInfo) mut
			{
				return VT.Get(ref this, index, dirty, numElements, out viewInfo);
			}
			public void GetView(out uint8* mappedPageBegin, out uint8* mappedPageEnd) mut
			{
				VT.GetView(ref this, out mappedPageBegin, out mappedPageEnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarityTraitsMappedView self) Flush;
				public new function HRESULT(ref ISimilarityTraitsMappedView self) Unmap;
				public new function HRESULT(ref ISimilarityTraitsMappedView self, uint64 index, BOOL dirty, uint32 numElements, out SimilarityMappedViewInfo viewInfo) Get;
				public new function void(ref ISimilarityTraitsMappedView self, out uint8* mappedPageBegin, out uint8* mappedPageEnd) GetView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsMapping : IUnknown
		{
			public const new Guid IID = .(0x96236a7d, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public void CloseMapping() mut
			{
				VT.CloseMapping(ref this);
			}
			public HRESULT SetFileSize(uint64 fileSize) mut
			{
				return VT.SetFileSize(ref this, fileSize);
			}
			public HRESULT GetFileSize(out uint64 fileSize) mut
			{
				return VT.GetFileSize(ref this, out fileSize);
			}
			public HRESULT OpenMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) mut
			{
				return VT.OpenMapping(ref this, accessMode, begin, end, out actualEnd);
			}
			public HRESULT ResizeMapping(RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) mut
			{
				return VT.ResizeMapping(ref this, accessMode, begin, end, out actualEnd);
			}
			public void GetPageSize(out uint32 pageSize) mut
			{
				VT.GetPageSize(ref this, out pageSize);
			}
			public HRESULT CreateView(uint32 minimumMappedPages, RdcMappingAccessMode accessMode, out ISimilarityTraitsMappedView* mappedView) mut
			{
				return VT.CreateView(ref this, minimumMappedPages, accessMode, out mappedView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(ref ISimilarityTraitsMapping self) CloseMapping;
				public new function HRESULT(ref ISimilarityTraitsMapping self, uint64 fileSize) SetFileSize;
				public new function HRESULT(ref ISimilarityTraitsMapping self, out uint64 fileSize) GetFileSize;
				public new function HRESULT(ref ISimilarityTraitsMapping self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) OpenMapping;
				public new function HRESULT(ref ISimilarityTraitsMapping self, RdcMappingAccessMode accessMode, uint64 begin, uint64 end, out uint64 actualEnd) ResizeMapping;
				public new function void(ref ISimilarityTraitsMapping self, out uint32 pageSize) GetPageSize;
				public new function HRESULT(ref ISimilarityTraitsMapping self, uint32 minimumMappedPages, RdcMappingAccessMode accessMode, out ISimilarityTraitsMappedView* mappedView) CreateView;
			}
		}
		[CRepr]
		public struct ISimilarityTraitsTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7e, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, ref uint8 securityDescriptor, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTable(ref this, path, truncate, ref securityDescriptor, out isNew);
			}
			public HRESULT CreateTableIndirect(ref ISimilarityTraitsMapping mapping, BOOL truncate, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTableIndirect(ref this, ref mapping, truncate, out isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(ref this, isValid);
			}
			public HRESULT Append(ref SimilarityData data, uint32 fileIndex) mut
			{
				return VT.Append(ref this, ref data, fileIndex);
			}
			public HRESULT FindSimilarFileIndex(ref SimilarityData similarityData, uint16 numberOfMatchesRequired, out FindSimilarFileIndexResults findSimilarFileIndexResults, uint32 resultsSize, out uint32 resultsUsed) mut
			{
				return VT.FindSimilarFileIndex(ref this, ref similarityData, numberOfMatchesRequired, out findSimilarFileIndexResults, resultsSize, out resultsUsed);
			}
			public HRESULT BeginDump(out ISimilarityTableDumpState* similarityTableDumpState) mut
			{
				return VT.BeginDump(ref this, out similarityTableDumpState);
			}
			public HRESULT GetLastIndex(out uint32 fileIndex) mut
			{
				return VT.GetLastIndex(ref this, out fileIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarityTraitsTable self, PWSTR path, BOOL truncate, ref uint8 securityDescriptor, out RdcCreatedTables isNew) CreateTable;
				public new function HRESULT(ref ISimilarityTraitsTable self, ref ISimilarityTraitsMapping mapping, BOOL truncate, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function HRESULT(ref ISimilarityTraitsTable self, BOOL isValid) CloseTable;
				public new function HRESULT(ref ISimilarityTraitsTable self, ref SimilarityData data, uint32 fileIndex) Append;
				public new function HRESULT(ref ISimilarityTraitsTable self, ref SimilarityData similarityData, uint16 numberOfMatchesRequired, out FindSimilarFileIndexResults findSimilarFileIndexResults, uint32 resultsSize, out uint32 resultsUsed) FindSimilarFileIndex;
				public new function HRESULT(ref ISimilarityTraitsTable self, out ISimilarityTableDumpState* similarityTableDumpState) BeginDump;
				public new function HRESULT(ref ISimilarityTraitsTable self, out uint32 fileIndex) GetLastIndex;
			}
		}
		[CRepr]
		public struct ISimilarityFileIdTable : IUnknown
		{
			public const new Guid IID = .(0x96236a7f, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTable(ref this, path, truncate, ref securityDescriptor, recordSize, out isNew);
			}
			public HRESULT CreateTableIndirect(ref IRdcFileWriter fileIdFile, BOOL truncate, uint32 recordSize, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTableIndirect(ref this, ref fileIdFile, truncate, recordSize, out isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(ref this, isValid);
			}
			public HRESULT Append(ref SimilarityFileId similarityFileId, out uint32 similarityFileIndex) mut
			{
				return VT.Append(ref this, ref similarityFileId, out similarityFileIndex);
			}
			public HRESULT Lookup(uint32 similarityFileIndex, out SimilarityFileId similarityFileId) mut
			{
				return VT.Lookup(ref this, similarityFileIndex, out similarityFileId);
			}
			public HRESULT Invalidate(uint32 similarityFileIndex) mut
			{
				return VT.Invalidate(ref this, similarityFileIndex);
			}
			public HRESULT GetRecordCount(out uint32 recordCount) mut
			{
				return VT.GetRecordCount(ref this, out recordCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarityFileIdTable self, PWSTR path, BOOL truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) CreateTable;
				public new function HRESULT(ref ISimilarityFileIdTable self, ref IRdcFileWriter fileIdFile, BOOL truncate, uint32 recordSize, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function HRESULT(ref ISimilarityFileIdTable self, BOOL isValid) CloseTable;
				public new function HRESULT(ref ISimilarityFileIdTable self, ref SimilarityFileId similarityFileId, out uint32 similarityFileIndex) Append;
				public new function HRESULT(ref ISimilarityFileIdTable self, uint32 similarityFileIndex, out SimilarityFileId similarityFileId) Lookup;
				public new function HRESULT(ref ISimilarityFileIdTable self, uint32 similarityFileIndex) Invalidate;
				public new function HRESULT(ref ISimilarityFileIdTable self, out uint32 recordCount) GetRecordCount;
			}
		}
		[CRepr]
		public struct IRdcSimilarityGenerator : IUnknown
		{
			public const new Guid IID = .(0x96236a80, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableSimilarity() mut
			{
				return VT.EnableSimilarity(ref this);
			}
			public HRESULT Results(out SimilarityData similarityData) mut
			{
				return VT.Results(ref this, out similarityData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IRdcSimilarityGenerator self) EnableSimilarity;
				public new function HRESULT(ref IRdcSimilarityGenerator self, out SimilarityData similarityData) Results;
			}
		}
		[CRepr]
		public struct IFindSimilarResults : IUnknown
		{
			public const new Guid IID = .(0x96236a81, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSize(out uint32 size) mut
			{
				return VT.GetSize(ref this, out size);
			}
			public HRESULT GetNextFileId(out uint32 numTraitsMatched, out SimilarityFileId similarityFileId) mut
			{
				return VT.GetNextFileId(ref this, out numTraitsMatched, out similarityFileId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IFindSimilarResults self, out uint32 size) GetSize;
				public new function HRESULT(ref IFindSimilarResults self, out uint32 numTraitsMatched, out SimilarityFileId similarityFileId) GetNextFileId;
			}
		}
		[CRepr]
		public struct ISimilarity : IUnknown
		{
			public const new Guid IID = .(0x96236a83, 0x9dbc, 0x11da, 0x9e, 0x3f, 0x00, 0x11, 0x11, 0x4a, 0xe3, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTable(PWSTR path, BOOL truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTable(ref this, path, truncate, ref securityDescriptor, recordSize, out isNew);
			}
			public HRESULT CreateTableIndirect(ref ISimilarityTraitsMapping mapping, ref IRdcFileWriter fileIdFile, BOOL truncate, uint32 recordSize, out RdcCreatedTables isNew) mut
			{
				return VT.CreateTableIndirect(ref this, ref mapping, ref fileIdFile, truncate, recordSize, out isNew);
			}
			public HRESULT CloseTable(BOOL isValid) mut
			{
				return VT.CloseTable(ref this, isValid);
			}
			public HRESULT Append(ref SimilarityFileId similarityFileId, ref SimilarityData similarityData) mut
			{
				return VT.Append(ref this, ref similarityFileId, ref similarityData);
			}
			public HRESULT FindSimilarFileId(ref SimilarityData similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, out IFindSimilarResults* findSimilarResults) mut
			{
				return VT.FindSimilarFileId(ref this, ref similarityData, numberOfMatchesRequired, resultsSize, out findSimilarResults);
			}
			public HRESULT CopyAndSwap(ref ISimilarity newSimilarityTables, ref ISimilarityReportProgress reportProgress) mut
			{
				return VT.CopyAndSwap(ref this, ref newSimilarityTables, ref reportProgress);
			}
			public HRESULT GetRecordCount(out uint32 recordCount) mut
			{
				return VT.GetRecordCount(ref this, out recordCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISimilarity self, PWSTR path, BOOL truncate, ref uint8 securityDescriptor, uint32 recordSize, out RdcCreatedTables isNew) CreateTable;
				public new function HRESULT(ref ISimilarity self, ref ISimilarityTraitsMapping mapping, ref IRdcFileWriter fileIdFile, BOOL truncate, uint32 recordSize, out RdcCreatedTables isNew) CreateTableIndirect;
				public new function HRESULT(ref ISimilarity self, BOOL isValid) CloseTable;
				public new function HRESULT(ref ISimilarity self, ref SimilarityFileId similarityFileId, ref SimilarityData similarityData) Append;
				public new function HRESULT(ref ISimilarity self, ref SimilarityData similarityData, uint16 numberOfMatchesRequired, uint32 resultsSize, out IFindSimilarResults* findSimilarResults) FindSimilarFileId;
				public new function HRESULT(ref ISimilarity self, ref ISimilarity newSimilarityTables, ref ISimilarityReportProgress reportProgress) CopyAndSwap;
				public new function HRESULT(ref ISimilarity self, out uint32 recordCount) GetRecordCount;
			}
		}
		
	}
}
