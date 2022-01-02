using System;

// namespace System.MixedReality
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid PERCEPTIONFIELD_StateStream_TimeStamps = .(0xaa886119, 0xf32f, 0x49bf, 0x92, 0xca, 0xf9, 0xdd, 0xf7, 0x84, 0xd2, 0x97);
		
		// --- Structs ---
		
		[CRepr]
		public struct PERCEPTION_PAYLOAD_FIELD
		{
			public Guid FieldId;
			public uint32 OffsetInBytes;
			public uint32 SizeInBytes;
		}
		[CRepr]
		public struct PERCEPTION_STATE_STREAM_TIMESTAMPS
		{
			public int64 InputTimestampInQpcCounts;
			public int64 AvailableTimestampInQpcCounts;
		}
		
	}
}
