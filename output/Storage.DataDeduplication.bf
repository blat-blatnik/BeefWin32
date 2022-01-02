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
			
			public HRESULT ReadBackupFile(BSTR FileFullPath, int64 FileOffset, uint32 SizeToRead, uint8* FileBuffer, out uint32 ReturnedSize, uint32 Flags) mut => VT.ReadBackupFile(ref this, FileFullPath, FileOffset, SizeToRead, FileBuffer, out ReturnedSize, Flags);
			public HRESULT OrderContainersRestore(uint32 NumberOfContainers, BSTR* ContainerPaths, out uint32 ReadPlanEntries, DEDUP_CONTAINER_EXTENT** ReadPlan) mut => VT.OrderContainersRestore(ref this, NumberOfContainers, ContainerPaths, out ReadPlanEntries, ReadPlan);
			public HRESULT PreviewContainerRead(BSTR FileFullPath, uint32 NumberOfReads, DDP_FILE_EXTENT* ReadOffsets) mut => VT.PreviewContainerRead(ref this, FileFullPath, NumberOfReads, ReadOffsets);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupReadFileCallback self, BSTR FileFullPath, int64 FileOffset, uint32 SizeToRead, uint8* FileBuffer, out uint32 ReturnedSize, uint32 Flags) ReadBackupFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupReadFileCallback self, uint32 NumberOfContainers, BSTR* ContainerPaths, out uint32 ReadPlanEntries, DEDUP_CONTAINER_EXTENT** ReadPlan) OrderContainersRestore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupReadFileCallback self, BSTR FileFullPath, uint32 NumberOfReads, DDP_FILE_EXTENT* ReadOffsets) PreviewContainerRead;
			}
		}
		[CRepr]
		public struct IDedupBackupSupport : IUnknown
		{
			public const new Guid IID = .(0xc719d963, 0x2b2d, 0x415e, 0xac, 0xf7, 0x7e, 0xb7, 0xca, 0x59, 0x6f, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestoreFiles(uint32 NumberOfFiles, BSTR* FileFullPaths, ref IDedupReadFileCallback Store, uint32 Flags, HRESULT* FileResults) mut => VT.RestoreFiles(ref this, NumberOfFiles, FileFullPaths, ref Store, Flags, FileResults);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupBackupSupport self, uint32 NumberOfFiles, BSTR* FileFullPaths, ref IDedupReadFileCallback Store, uint32 Flags, HRESULT* FileResults) RestoreFiles;
			}
		}
		[CRepr]
		public struct IDedupChunkLibrary : IUnknown
		{
			public const new Guid IID = .(0xbb5144d7, 0x2720, 0x4dcc, 0x87, 0x77, 0x78, 0x59, 0x74, 0x16, 0xec, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeForPushBuffers() mut => VT.InitializeForPushBuffers(ref this);
			public HRESULT Uninitialize() mut => VT.Uninitialize(ref this);
			public HRESULT SetParameter(uint32 dwParamType, VARIANT vParamValue) mut => VT.SetParameter(ref this, dwParamType, vParamValue);
			public HRESULT StartChunking(Guid iidIteratorInterfaceID, out IUnknown* ppChunksEnum) mut => VT.StartChunking(ref this, iidIteratorInterfaceID, out ppChunksEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupChunkLibrary self) InitializeForPushBuffers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupChunkLibrary self) Uninitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupChunkLibrary self, uint32 dwParamType, VARIANT vParamValue) SetParameter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupChunkLibrary self, Guid iidIteratorInterfaceID, out IUnknown* ppChunksEnum) StartChunking;
			}
		}
		[CRepr]
		public struct IDedupIterateChunksHash32 : IUnknown
		{
			public const new Guid IID = .(0x90b584d3, 0x72aa, 0x400f, 0x97, 0x67, 0xca, 0xd8, 0x66, 0xa5, 0xa2, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PushBuffer(uint8* pBuffer, uint32 ulBufferLength) mut => VT.PushBuffer(ref this, pBuffer, ulBufferLength);
			public HRESULT Next(uint32 ulMaxChunks, DEDUP_CHUNK_INFO_HASH32* pArrChunks, out uint32 pulFetched) mut => VT.Next(ref this, ulMaxChunks, pArrChunks, out pulFetched);
			public HRESULT Drain() mut => VT.Drain(ref this);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupIterateChunksHash32 self, uint8* pBuffer, uint32 ulBufferLength) PushBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupIterateChunksHash32 self, uint32 ulMaxChunks, DEDUP_CHUNK_INFO_HASH32* pArrChunks, out uint32 pulFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupIterateChunksHash32 self) Drain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupIterateChunksHash32 self) Reset;
			}
		}
		[CRepr]
		public struct IDedupDataPort : IUnknown
		{
			public const new Guid IID = .(0x7963d734, 0x40a9, 0x4ea3, 0xbb, 0xf6, 0x5a, 0x89, 0xd2, 0x6f, 0x7a, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(out DedupDataPortVolumeStatus pStatus, out uint32 pDataHeadroomMb) mut => VT.GetStatus(ref this, out pStatus, out pDataHeadroomMb);
			public HRESULT LookupChunks(uint32 Count, DedupHash* pHashes, out Guid pRequestId) mut => VT.LookupChunks(ref this, Count, pHashes, out pRequestId);
			public HRESULT InsertChunks(uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, uint8* pChunkData, out Guid pRequestId) mut => VT.InsertChunks(ref this, ChunkCount, pChunkMetadata, DataByteCount, pChunkData, out pRequestId);
			public HRESULT InsertChunksWithStream(uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, ref IStream pChunkDataStream, out Guid pRequestId) mut => VT.InsertChunksWithStream(ref this, ChunkCount, pChunkMetadata, DataByteCount, ref pChunkDataStream, out pRequestId);
			public HRESULT CommitStreams(uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, DedupStreamEntry* pEntries, out Guid pRequestId) mut => VT.CommitStreams(ref this, StreamCount, pStreams, EntryCount, pEntries, out pRequestId);
			public HRESULT CommitStreamsWithStream(uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, ref IStream pEntriesStream, out Guid pRequestId) mut => VT.CommitStreamsWithStream(ref this, StreamCount, pStreams, EntryCount, ref pEntriesStream, out pRequestId);
			public HRESULT GetStreams(uint32 StreamCount, BSTR* pStreamPaths, out Guid pRequestId) mut => VT.GetStreams(ref this, StreamCount, pStreamPaths, out pRequestId);
			public HRESULT GetStreamsResults(Guid RequestId, uint32 MaxWaitMs, uint32 StreamEntryIndex, out uint32 pStreamCount, DedupStream** ppStreams, out uint32 pEntryCount, DedupStreamEntry** ppEntries, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) mut => VT.GetStreamsResults(ref this, RequestId, MaxWaitMs, StreamEntryIndex, out pStreamCount, ppStreams, out pEntryCount, ppEntries, out pStatus, ppItemResults);
			public HRESULT GetChunks(uint32 Count, DedupHash* pHashes, out Guid pRequestId) mut => VT.GetChunks(ref this, Count, pHashes, out pRequestId);
			public HRESULT GetChunksResults(Guid RequestId, uint32 MaxWaitMs, uint32 ChunkIndex, out uint32 pChunkCount, DedupChunk** ppChunkMetadata, out uint32 pDataByteCount, uint8** ppChunkData, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) mut => VT.GetChunksResults(ref this, RequestId, MaxWaitMs, ChunkIndex, out pChunkCount, ppChunkMetadata, out pDataByteCount, ppChunkData, out pStatus, ppItemResults);
			public HRESULT GetRequestStatus(Guid RequestId, out DedupDataPortRequestStatus pStatus) mut => VT.GetRequestStatus(ref this, RequestId, out pStatus);
			public HRESULT GetRequestResults(Guid RequestId, uint32 MaxWaitMs, out HRESULT pBatchResult, out uint32 pBatchCount, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) mut => VT.GetRequestResults(ref this, RequestId, MaxWaitMs, out pBatchResult, out pBatchCount, out pStatus, ppItemResults);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, out DedupDataPortVolumeStatus pStatus, out uint32 pDataHeadroomMb) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 Count, DedupHash* pHashes, out Guid pRequestId) LookupChunks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, uint8* pChunkData, out Guid pRequestId) InsertChunks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 ChunkCount, DedupChunk* pChunkMetadata, uint32 DataByteCount, ref IStream pChunkDataStream, out Guid pRequestId) InsertChunksWithStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, DedupStreamEntry* pEntries, out Guid pRequestId) CommitStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 StreamCount, DedupStream* pStreams, uint32 EntryCount, ref IStream pEntriesStream, out Guid pRequestId) CommitStreamsWithStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 StreamCount, BSTR* pStreamPaths, out Guid pRequestId) GetStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, Guid RequestId, uint32 MaxWaitMs, uint32 StreamEntryIndex, out uint32 pStreamCount, DedupStream** ppStreams, out uint32 pEntryCount, DedupStreamEntry** ppEntries, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) GetStreamsResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, uint32 Count, DedupHash* pHashes, out Guid pRequestId) GetChunks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, Guid RequestId, uint32 MaxWaitMs, uint32 ChunkIndex, out uint32 pChunkCount, DedupChunk** ppChunkMetadata, out uint32 pDataByteCount, uint8** ppChunkData, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) GetChunksResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, Guid RequestId, out DedupDataPortRequestStatus pStatus) GetRequestStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPort self, Guid RequestId, uint32 MaxWaitMs, out HRESULT pBatchResult, out uint32 pBatchCount, out DedupDataPortRequestStatus pStatus, HRESULT** ppItemResults) GetRequestResults;
			}
		}
		[CRepr]
		public struct IDedupDataPortManager : IUnknown
		{
			public const new Guid IID = .(0x44677452, 0xb90a, 0x445e, 0x81, 0x92, 0xcd, 0xcf, 0xe8, 0x15, 0x11, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConfiguration(out uint32 pMinChunkSize, out uint32 pMaxChunkSize, out DedupChunkingAlgorithm pChunkingAlgorithm, out DedupHashingAlgorithm pHashingAlgorithm, out DedupCompressionAlgorithm pCompressionAlgorithm) mut => VT.GetConfiguration(ref this, out pMinChunkSize, out pMaxChunkSize, out pChunkingAlgorithm, out pHashingAlgorithm, out pCompressionAlgorithm);
			public HRESULT GetVolumeStatus(uint32 Options, BSTR Path, out DedupDataPortVolumeStatus pStatus) mut => VT.GetVolumeStatus(ref this, Options, Path, out pStatus);
			public HRESULT GetVolumeDataPort(uint32 Options, BSTR Path, out IDedupDataPort* ppDataPort) mut => VT.GetVolumeDataPort(ref this, Options, Path, out ppDataPort);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPortManager self, out uint32 pMinChunkSize, out uint32 pMaxChunkSize, out DedupChunkingAlgorithm pChunkingAlgorithm, out DedupHashingAlgorithm pHashingAlgorithm, out DedupCompressionAlgorithm pCompressionAlgorithm) GetConfiguration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPortManager self, uint32 Options, BSTR Path, out DedupDataPortVolumeStatus pStatus) GetVolumeStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDedupDataPortManager self, uint32 Options, BSTR Path, out IDedupDataPort* ppDataPort) GetVolumeDataPort;
			}
		}
		
	}
}
