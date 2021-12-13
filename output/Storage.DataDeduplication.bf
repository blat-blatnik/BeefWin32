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
		
		public struct IDedupReadFileCallback {}
		public struct IDedupBackupSupport {}
		public struct IDedupChunkLibrary {}
		public struct IDedupIterateChunksHash32 {}
		public struct IDedupDataPort {}
		public struct IDedupDataPortManager {}
		
	}
}
