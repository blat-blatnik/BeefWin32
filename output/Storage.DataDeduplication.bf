using System;

// namespace Storage.DataDeduplication
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DEDUP_CHUNKLIB_MAX_CHUNKS_ENUM = 1024;
		
		// --- Enums ---
		
		public enum DEDUP_BACKUP_SUPPORT_PARAM_TYPE : int32
		{
			UNOPTIMIZED = 1,
			OPTIMIZED = 2,
		}
		public enum DEDUP_SET_PARAM_TYPE : int32
		{
			MinChunkSizeBytes = 1,
			MaxChunkSizeBytes = 2,
			AvgChunkSizeBytes = 3,
			InvariantChunking = 4,
			DisableStrongHashComputation = 5,
		}
		public enum DedupDataPortManagerOption : int32
		{
			None = 0,
			AutoStart = 1,
			SkipReconciliation = 2,
		}
		public enum DedupDataPortVolumeStatus : int32
		{
			Unknown = 0,
			NotEnabled = 1,
			NotAvailable = 2,
			Initializing = 3,
			Ready = 4,
			Maintenance = 5,
			Shutdown = 6,
		}
		public enum DedupDataPortRequestStatus : int32
		{
			Unknown = 0,
			Queued = 1,
			Processing = 2,
			Partial = 3,
			Complete = 4,
			Failed = 5,
		}
		public enum DedupChunkFlags : int32
		{
			None = 0,
			Compressed = 1,
		}
		public enum DedupChunkingAlgorithm : int32
		{
			Unknonwn = 0,
			V1 = 1,
		}
		public enum DedupHashingAlgorithm : int32
		{
			Unknonwn = 0,
			V1 = 1,
		}
		public enum DedupCompressionAlgorithm : int32
		{
			Unknonwn = 0,
			Xpress = 1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadBackupFile(BSTR FileFullPath, int64 FileOffset, uint32 SizeToRead, uint8* FileBuffer, uint32* ReturnedSize, uint32 Flags) mut
			{
				return VT.ReadBackupFile(&this, FileFullPath, FileOffset, SizeToRead, FileBuffer, ReturnedSize, Flags);
			}
			public HRESULT OrderContainersRestore(uint32 NumberOfContainers, BSTR* ContainerPaths, uint32* ReadPlanEntries, DEDUP_CONTAINER_EXTENT** ReadPlan) mut
			{
				return VT.OrderContainersRestore(&this, NumberOfContainers, ContainerPaths, ReadPlanEntries, ReadPlan);
			}
			public HRESULT PreviewContainerRead(BSTR FileFullPath, uint32 NumberOfReads, DDP_FILE_EXTENT* ReadOffsets) mut
			{
				return VT.PreviewContainerRead(&this, FileFullPath, NumberOfReads, ReadOffsets);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupReadFileCallback *self, BSTR FileFullPath, int64 FileOffset, uint32 SizeToRead, uint8* FileBuffer, uint32* ReturnedSize, uint32 Flags) ReadBackupFile;
				public new function HRESULT(IDedupReadFileCallback *self, uint32 NumberOfContainers, BSTR* ContainerPaths, uint32* ReadPlanEntries, DEDUP_CONTAINER_EXTENT** ReadPlan) OrderContainersRestore;
				public new function HRESULT(IDedupReadFileCallback *self, BSTR FileFullPath, uint32 NumberOfReads, DDP_FILE_EXTENT* ReadOffsets) PreviewContainerRead;
			}
		}
		[CRepr]
		public struct IDedupBackupSupport : IUnknown
		{
			public const new Guid IID = .(0xc719d963, 0x2b2d, 0x415e, 0xac, 0xf7, 0x7e, 0xb7, 0xca, 0x59, 0x6f, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestoreFiles(uint32 NumberOfFiles, BSTR* FileFullPaths, IDedupReadFileCallback* Store, uint32 Flags, HRESULT* FileResults) mut
			{
				return VT.RestoreFiles(&this, NumberOfFiles, FileFullPaths, Store, Flags, FileResults);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupBackupSupport *self, uint32 NumberOfFiles, BSTR* FileFullPaths, IDedupReadFileCallback* Store, uint32 Flags, HRESULT* FileResults) RestoreFiles;
			}
		}
		[CRepr]
		public struct IDedupChunkLibrary : IUnknown
		{
			public const new Guid IID = .(0xbb5144d7, 0x2720, 0x4dcc, 0x87, 0x77, 0x78, 0x59, 0x74, 0x16, 0xec, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeForPushBuffers() mut
			{
				return VT.InitializeForPushBuffers(&this);
			}
			public HRESULT Uninitialize() mut
			{
				return VT.Uninitialize(&this);
			}
			public HRESULT SetParameter(uint32 dwParamType, VARIANT vParamValue) mut
			{
				return VT.SetParameter(&this, dwParamType, vParamValue);
			}
			public HRESULT StartChunking(Guid iidIteratorInterfaceID, IUnknown** ppChunksEnum) mut
			{
				return VT.StartChunking(&this, iidIteratorInterfaceID, ppChunksEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupChunkLibrary *self) InitializeForPushBuffers;
				public new function HRESULT(IDedupChunkLibrary *self) Uninitialize;
				public new function HRESULT(IDedupChunkLibrary *self, uint32 dwParamType, VARIANT vParamValue) SetParameter;
				public new function HRESULT(IDedupChunkLibrary *self, Guid iidIteratorInterfaceID, IUnknown** ppChunksEnum) StartChunking;
			}
		}
		[CRepr]
		public struct IDedupIterateChunksHash32 : IUnknown
		{
			public const new Guid IID = .(0x90b584d3, 0x72aa, 0x400f, 0x97, 0x67, 0xca, 0xd8, 0x66, 0xa5, 0xa2, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PushBuffer(uint8* pBuffer, uint32 ulBufferLength) mut
			{
				return VT.PushBuffer(&this, pBuffer, ulBufferLength);
			}
			public HRESULT Next(uint32 ulMaxChunks, DEDUP_CHUNK_INFO_HASH32* pArrChunks, uint32* pulFetched) mut
			{
				return VT.Next(&this, ulMaxChunks, pArrChunks, pulFetched);
			}
			public HRESULT Drain() mut
			{
				return VT.Drain(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupIterateChunksHash32 *self, uint8* pBuffer, uint32 ulBufferLength) PushBuffer;
				public new function HRESULT(IDedupIterateChunksHash32 *self, uint32 ulMaxChunks, DEDUP_CHUNK_INFO_HASH32* pArrChunks, uint32* pulFetched) Next;
				public new function HRESULT(IDedupIterateChunksHash32 *self) Drain;
				public new function HRESULT(IDedupIterateChunksHash32 *self) Reset;
			}
		}
		[CRepr]
		public struct IDedupDataPort : IUnknown
		{
			public const new Guid IID = .(0x7963d734, 0x40a9, 0x4ea3, 0xbb, 0xf6, 0x5a, 0x89, 0xd2, 0x6f, 0x7a, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(DedupDataPortVolumeStatus* pStatus, uint32* pDataHeadroomMb) mut
			{
				return VT.GetStatus(&this, pStatus, pDataHeadroomMb);
			}
			public HRESULT LookupChunks(uint32 Count, DedupHash* pHashes, Guid* pRequestId) mut
			{
				return VT.LookupChunks(&this, Count, pHashes, pRequestId);
			}
			public HRESULT InsertChunks(uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, uint8* pChunkData, Guid* pRequestId) mut
			{
				return VT.InsertChunks(&this, ChunkCount, pChunkMetadata, DataByteCount, pChunkData, pRequestId);
			}
			public HRESULT InsertChunksWithStream(uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, IStream* pChunkDataStream, Guid* pRequestId) mut
			{
				return VT.InsertChunksWithStream(&this, ChunkCount, pChunkMetadata, DataByteCount, pChunkDataStream, pRequestId);
			}
			public HRESULT CommitStreams(uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, DedupStreamEntry* pEntries, Guid* pRequestId) mut
			{
				return VT.CommitStreams(&this, StreamCount, pStreams, EntryCount, pEntries, pRequestId);
			}
			public HRESULT CommitStreamsWithStream(uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, IStream* pEntriesStream, Guid* pRequestId) mut
			{
				return VT.CommitStreamsWithStream(&this, StreamCount, pStreams, EntryCount, pEntriesStream, pRequestId);
			}
			public HRESULT GetStreams(uint32 StreamCount, BSTR* pStreamPaths, Guid* pRequestId) mut
			{
				return VT.GetStreams(&this, StreamCount, pStreamPaths, pRequestId);
			}
			public HRESULT GetStreamsResults(Guid RequestId, uint32 MaxWaitMs, uint32 StreamEntryIndex, uint32* pStreamCount, DedupStream** ppStreams, uint32* pEntryCount, DedupStreamEntry** ppEntries, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) mut
			{
				return VT.GetStreamsResults(&this, RequestId, MaxWaitMs, StreamEntryIndex, pStreamCount, ppStreams, pEntryCount, ppEntries, pStatus, ppItemResults);
			}
			public HRESULT GetChunks(uint32 Count, DedupHash* pHashes, Guid* pRequestId) mut
			{
				return VT.GetChunks(&this, Count, pHashes, pRequestId);
			}
			public HRESULT GetChunksResults(Guid RequestId, uint32 MaxWaitMs, uint32 ChunkIndex, uint32* pChunkCount, DedupChunk** ppChunkMetadata, uint32* pDataByteCount, uint8** ppChunkData, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) mut
			{
				return VT.GetChunksResults(&this, RequestId, MaxWaitMs, ChunkIndex, pChunkCount, ppChunkMetadata, pDataByteCount, ppChunkData, pStatus, ppItemResults);
			}
			public HRESULT GetRequestStatus(Guid RequestId, DedupDataPortRequestStatus* pStatus) mut
			{
				return VT.GetRequestStatus(&this, RequestId, pStatus);
			}
			public HRESULT GetRequestResults(Guid RequestId, uint32 MaxWaitMs, HRESULT* pBatchResult, uint32* pBatchCount, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) mut
			{
				return VT.GetRequestResults(&this, RequestId, MaxWaitMs, pBatchResult, pBatchCount, pStatus, ppItemResults);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupDataPort *self, DedupDataPortVolumeStatus* pStatus, uint32* pDataHeadroomMb) GetStatus;
				public new function HRESULT(IDedupDataPort *self, uint32 Count, DedupHash* pHashes, Guid* pRequestId) LookupChunks;
				public new function HRESULT(IDedupDataPort *self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, uint8* pChunkData, Guid* pRequestId) InsertChunks;
				public new function HRESULT(IDedupDataPort *self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, IStream* pChunkDataStream, Guid* pRequestId) InsertChunksWithStream;
				public new function HRESULT(IDedupDataPort *self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, DedupStreamEntry* pEntries, Guid* pRequestId) CommitStreams;
				public new function HRESULT(IDedupDataPort *self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, IStream* pEntriesStream, Guid* pRequestId) CommitStreamsWithStream;
				public new function HRESULT(IDedupDataPort *self, uint32 StreamCount, BSTR* pStreamPaths, Guid* pRequestId) GetStreams;
				public new function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, uint32 StreamEntryIndex, uint32* pStreamCount, DedupStream** ppStreams, uint32* pEntryCount, DedupStreamEntry** ppEntries, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetStreamsResults;
				public new function HRESULT(IDedupDataPort *self, uint32 Count, DedupHash* pHashes, Guid* pRequestId) GetChunks;
				public new function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, uint32 ChunkIndex, uint32* pChunkCount, DedupChunk** ppChunkMetadata, uint32* pDataByteCount, uint8** ppChunkData, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetChunksResults;
				public new function HRESULT(IDedupDataPort *self, Guid RequestId, DedupDataPortRequestStatus* pStatus) GetRequestStatus;
				public new function HRESULT(IDedupDataPort *self, Guid RequestId, uint32 MaxWaitMs, HRESULT* pBatchResult, uint32* pBatchCount, DedupDataPortRequestStatus* pStatus, HRESULT** ppItemResults) GetRequestResults;
			}
		}
		[CRepr]
		public struct IDedupDataPortManager : IUnknown
		{
			public const new Guid IID = .(0x44677452, 0xb90a, 0x445e, 0x81, 0x92, 0xcd, 0xcf, 0xe8, 0x15, 0x11, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConfiguration(uint32* pMinChunkSize, uint32* pMaxChunkSize, DedupChunkingAlgorithm* pChunkingAlgorithm, DedupHashingAlgorithm* pHashingAlgorithm, DedupCompressionAlgorithm* pCompressionAlgorithm) mut
			{
				return VT.GetConfiguration(&this, pMinChunkSize, pMaxChunkSize, pChunkingAlgorithm, pHashingAlgorithm, pCompressionAlgorithm);
			}
			public HRESULT GetVolumeStatus(uint32 Options, BSTR Path, DedupDataPortVolumeStatus* pStatus) mut
			{
				return VT.GetVolumeStatus(&this, Options, Path, pStatus);
			}
			public HRESULT GetVolumeDataPort(uint32 Options, BSTR Path, IDedupDataPort** ppDataPort) mut
			{
				return VT.GetVolumeDataPort(&this, Options, Path, ppDataPort);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDedupDataPortManager *self, uint32* pMinChunkSize, uint32* pMaxChunkSize, DedupChunkingAlgorithm* pChunkingAlgorithm, DedupHashingAlgorithm* pHashingAlgorithm, DedupCompressionAlgorithm* pCompressionAlgorithm) GetConfiguration;
				public new function HRESULT(IDedupDataPortManager *self, uint32 Options, BSTR Path, DedupDataPortVolumeStatus* pStatus) GetVolumeStatus;
				public new function HRESULT(IDedupDataPortManager *self, uint32 Options, BSTR Path, IDedupDataPort** ppDataPort) GetVolumeDataPort;
			}
		}
		
	}
}
