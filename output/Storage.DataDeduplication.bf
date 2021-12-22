using System;

// namespace Storage.DataDeduplication
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DEDUP_CHUNKLIB_MAX_CHUNKS_ENUM = 1024;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DEDUP_BACKUP_SUPPORT_PARAM_TYPE : int32
		{
			DEDUP_RECONSTRUCT_UNOPTIMIZED = 1,
			DEDUP_RECONSTRUCT_OPTIMIZED = 2,
		}
		[AllowDuplicates]
		public enum DEDUP_SET_PARAM_TYPE : int32
		{
			DEDUP_PT_MinChunkSizeBytes = 1,
			DEDUP_PT_MaxChunkSizeBytes = 2,
			DEDUP_PT_AvgChunkSizeBytes = 3,
			DEDUP_PT_InvariantChunking = 4,
			DEDUP_PT_DisableStrongHashComputation = 5,
		}
		[AllowDuplicates]
		public enum DedupDataPortManagerOption : int32
		{
			DedupDataPortManagerOption_None = 0,
			DedupDataPortManagerOption_AutoStart = 1,
			DedupDataPortManagerOption_SkipReconciliation = 2,
		}
		[AllowDuplicates]
		public enum DedupDataPortVolumeStatus : int32
		{
			DedupDataPortVolumeStatus_Unknown = 0,
			DedupDataPortVolumeStatus_NotEnabled = 1,
			DedupDataPortVolumeStatus_NotAvailable = 2,
			DedupDataPortVolumeStatus_Initializing = 3,
			DedupDataPortVolumeStatus_Ready = 4,
			DedupDataPortVolumeStatus_Maintenance = 5,
			DedupDataPortVolumeStatus_Shutdown = 6,
		}
		[AllowDuplicates]
		public enum DedupDataPortRequestStatus : int32
		{
			DedupDataPortRequestStatus_Unknown = 0,
			DedupDataPortRequestStatus_Queued = 1,
			DedupDataPortRequestStatus_Processing = 2,
			DedupDataPortRequestStatus_Partial = 3,
			DedupDataPortRequestStatus_Complete = 4,
			DedupDataPortRequestStatus_Failed = 5,
		}
		[AllowDuplicates]
		public enum DedupChunkFlags : int32
		{
			DedupChunkFlags_None = 0,
			DedupChunkFlags_Compressed = 1,
		}
		[AllowDuplicates]
		public enum DedupChunkingAlgorithm : int32
		{
			DedupChunkingAlgorithm_Unknonwn = 0,
			DedupChunkingAlgorithm_V1 = 1,
		}
		[AllowDuplicates]
		public enum DedupHashingAlgorithm : int32
		{
			DedupHashingAlgorithm_Unknonwn = 0,
			DedupHashingAlgorithm_V1 = 1,
		}
		[AllowDuplicates]
		public enum DedupCompressionAlgorithm : int32
		{
			DedupCompressionAlgorithm_Unknonwn = 0,
			DedupCompressionAlgorithm_Xpress = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DEDUP_CONTAINER_EXTENT
		{
			public uint32 ContainerIndex;
			public int64 StartOffset;
			public int64 Length;
		}
		[CRepr]
		public struct DDP_FILE_EXTENT
		{
			public int64 Length;
			public int64 Offset;
		}
		[CRepr]
		public struct DEDUP_CHUNK_INFO_HASH32
		{
			public uint32 ChunkFlags;
			public uint64 ChunkOffsetInStream;
			public uint64 ChunkSize;
			public uint8[32] HashVal;
		}
		[CRepr]
		public struct DedupHash
		{
			public uint8[32] Hash;
		}
		[CRepr]
		public struct DedupChunk
		{
			public DedupHash Hash;
			public DedupChunkFlags Flags;
			public uint32 LogicalSize;
			public uint32 DataSize;
		}
		[CRepr]
		public struct DedupStreamEntry
		{
			public DedupHash Hash;
			public uint32 LogicalSize;
			public uint64 Offset;
		}
		[CRepr]
		public struct DedupStream
		{
			public BSTR Path;
			public uint64 Offset;
			public uint64 Length;
			public uint32 ChunkCount;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_DedupBackupSupport = .(0x73d6b2ad, 0x2984, 0x4715, 0xb2, 0xe3, 0x92, 0x4c, 0x14, 0x97, 0x44, 0xdd);
		public const Guid CLSID_DedupDataPort = .(0x8f107207, 0x1829, 0x48b2, 0xa6, 0x4b, 0xe6, 0x1f, 0x8e, 0x0d, 0x9a, 0xcb);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDedupReadFileCallback : IUnknown
		{
			public const new Guid IID = .(0x7bacc67a, 0x2f1d, 0x42d0, 0x89, 0x7e, 0x6f, 0xf6, 0x2d, 0xd5, 0x33, 0xbb);
			
			public function HRESULT(IDedupReadFileCallback *self, BSTR FileFullPath, int64 FileOffset, uint32 SizeToRead, uint8* FileBuffer, uint32* ReturnedSize, uint32 Flags) ReadBackupFile;
			public function HRESULT(IDedupReadFileCallback *self, uint32 NumberOfContainers, BSTR* ContainerPaths, uint32* ReadPlanEntries, DEDUP_CONTAINER_EXTENT** ReadPlan) OrderContainersRestore;
			public function HRESULT(IDedupReadFileCallback *self, BSTR FileFullPath, uint32 NumberOfReads, DDP_FILE_EXTENT* ReadOffsets) PreviewContainerRead;
		}
		[CRepr]
		public struct IDedupBackupSupport : IUnknown
		{
			public const new Guid IID = .(0xc719d963, 0x2b2d, 0x415e, 0xac, 0xf7, 0x7e, 0xb7, 0xca, 0x59, 0x6f, 0xf4);
			
			public function HRESULT(IDedupBackupSupport *self, uint32 NumberOfFiles, BSTR* FileFullPaths, IDedupReadFileCallback* Store, uint32 Flags, HRESULT* FileResults) RestoreFiles;
		}
		[CRepr]
		public struct IDedupChunkLibrary : IUnknown
		{
			public const new Guid IID = .(0xbb5144d7, 0x2720, 0x4dcc, 0x87, 0x77, 0x78, 0x59, 0x74, 0x16, 0xec, 0x23);
			
			public function HRESULT(IDedupChunkLibrary *self) InitializeForPushBuffers;
			public function HRESULT(IDedupChunkLibrary *self) Uninitialize;
			public function HRESULT(IDedupChunkLibrary *self, uint32 dwParamType, VARIANT vParamValue) SetParameter;
			public function HRESULT(IDedupChunkLibrary *self, Guid iidIteratorInterfaceID, IUnknown** ppChunksEnum) StartChunking;
		}
		[CRepr]
		public struct IDedupIterateChunksHash32 : IUnknown
		{
			public const new Guid IID = .(0x90b584d3, 0x72aa, 0x400f, 0x97, 0x67, 0xca, 0xd8, 0x66, 0xa5, 0xa2, 0xd8);
			
			public function HRESULT(IDedupIterateChunksHash32 *self, uint8* pBuffer, uint32 ulBufferLength) PushBuffer;
			public function HRESULT(IDedupIterateChunksHash32 *self, uint32 ulMaxChunks, DEDUP_CHUNK_INFO_HASH32* pArrChunks, uint32* pulFetched) Next;
			public function HRESULT(IDedupIterateChunksHash32 *self) Drain;
			public function HRESULT(IDedupIterateChunksHash32 *self) Reset;
		}
		[CRepr]
		public struct IDedupDataPort : IUnknown
		{
			public const new Guid IID = .(0x7963d734, 0x40a9, 0x4ea3, 0xbb, 0xf6, 0x5a, 0x89, 0xd2, 0x6f, 0x7a, 0xe8);
			
			public function HRESULT(IDedupDataPort *self, DedupDataPortVolumeStatus* pStatus, uint32* pDataHeadroomMb) GetStatus;
			public function HRESULT(IDedupDataPort *self, uint32 Count, DedupHash* pHashes, Guid* pRequestId) LookupChunks;
			public function HRESULT(IDedupDataPort *self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, uint8* pChunkData, Guid* pRequestId) InsertChunks;
			public function HRESULT(IDedupDataPort *self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, IStream* pChunkDataStream, Guid* pRequestId) InsertChunksWithStream;
			public function HRESULT(IDedupDataPort *self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, DedupStreamEntry* pEntries, Guid* pRequestId) CommitStreams;
			public function HRESULT(IDedupDataPort *self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, IStream* pEntriesStream, Guid* pRequestId) CommitStreamsWithStream;
			public function HRESULT(IDedupDataPort *self, uint32 StreamCount, BSTR* pStreamPaths, Guid* pRequestId) GetStreams;
			public function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, uint32 StreamEntryIndex, uint32* pStreamCount, DedupStream** ppStreams, uint32* pEntryCount, DedupStreamEntry** ppEntries, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetStreamsResults;
			public function HRESULT(IDedupDataPort *self, uint32 Count, DedupHash* pHashes, Guid* pRequestId) GetChunks;
			public function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, uint32 ChunkIndex, uint32* pChunkCount, DedupChunk** ppChunkMetadata, uint32* pDataByteCount, uint8** ppChunkData, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetChunksResults;
			public function HRESULT(IDedupDataPort *self, Guid RequestId, DedupDataPortRequestStatus* pStatus) GetRequestStatus;
			public function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, HRESULT* pBatchResult, uint32* pBatchCount, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetRequestResults;
		}
		[CRepr]
		public struct IDedupDataPortManager : IUnknown
		{
			public const new Guid IID = .(0x44677452, 0xb90a, 0x445e, 0x81, 0x92, 0xcd, 0xcf, 0xe8, 0x15, 0x11, 0xfb);
			
			public function HRESULT(IDedupDataPortManager *self, uint32* pMinChunkSize, uint32* pMaxChunkSize, DedupChunkingAlgorithm* pChunkingAlgorithm, DedupHashingAlgorithm* pHashingAlgorithm, DedupCompressionAlgorithm* pCompressionAlgorithm) GetConfiguration;
			public function HRESULT(IDedupDataPortManager *self, uint32 Options, BSTR Path, DedupDataPortVolumeStatus* pStatus) GetVolumeStatus;
			public function HRESULT(IDedupDataPortManager *self, uint32 Options, BSTR Path, IDedupDataPort** ppDataPort) GetVolumeDataPort;
		}
		
	}
}
