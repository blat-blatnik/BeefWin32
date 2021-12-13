using System;

// namespace Devices.Properties
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DEVPROP_TYPEMOD_ARRAY = 4096;
		public const uint32 DEVPROP_TYPEMOD_LIST = 8192;
		public const uint32 DEVPROP_TYPE_EMPTY = 0;
		public const uint32 DEVPROP_TYPE_NULL = 1;
		public const uint32 DEVPROP_TYPE_SBYTE = 2;
		public const uint32 DEVPROP_TYPE_BYTE = 3;
		public const uint32 DEVPROP_TYPE_INT16 = 4;
		public const uint32 DEVPROP_TYPE_UINT16 = 5;
		public const uint32 DEVPROP_TYPE_INT32 = 6;
		public const uint32 DEVPROP_TYPE_UINT32 = 7;
		public const uint32 DEVPROP_TYPE_INT64 = 8;
		public const uint32 DEVPROP_TYPE_UINT64 = 9;
		public const uint32 DEVPROP_TYPE_FLOAT = 10;
		public const uint32 DEVPROP_TYPE_DOUBLE = 11;
		public const uint32 DEVPROP_TYPE_DECIMAL = 12;
		public const uint32 DEVPROP_TYPE_GUID = 13;
		public const uint32 DEVPROP_TYPE_CURRENCY = 14;
		public const uint32 DEVPROP_TYPE_DATE = 15;
		public const uint32 DEVPROP_TYPE_FILETIME = 16;
		public const uint32 DEVPROP_TYPE_BOOLEAN = 17;
		public const uint32 DEVPROP_TYPE_STRING = 18;
		public const uint32 DEVPROP_TYPE_SECURITY_DESCRIPTOR = 19;
		public const uint32 DEVPROP_TYPE_SECURITY_DESCRIPTOR_STRING = 20;
		public const uint32 DEVPROP_TYPE_DEVPROPKEY = 21;
		public const uint32 DEVPROP_TYPE_DEVPROPTYPE = 22;
		public const uint32 DEVPROP_TYPE_ERROR = 23;
		public const uint32 DEVPROP_TYPE_NTSTATUS = 24;
		public const uint32 DEVPROP_TYPE_STRING_INDIRECT = 25;
		public const uint32 MAX_DEVPROP_TYPE = 25;
		public const uint32 MAX_DEVPROP_TYPEMOD = 8192;
		public const uint32 DEVPROP_MASK_TYPE = 4095;
		public const uint32 DEVPROP_MASK_TYPEMOD = 61440;
		public const uint32 DEVPROPID_FIRST_USABLE = 2;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DEVPROPSTORE : int32
		{
			DEVPROP_STORE_SYSTEM = 0,
			DEVPROP_STORE_USER = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DEVPROPKEY
		{
			public Guid fmtid;
			public uint32 pid;
		}
		[CRepr]
		public struct DEVPROPCOMPKEY
		{
			public DEVPROPKEY Key;
			public DEVPROPSTORE Store;
			public PWSTR LocaleName;
		}
		[CRepr]
		public struct DEVPROPERTY
		{
			public DEVPROPCOMPKEY CompKey;
			public uint32 Type;
			public uint32 BufferSize;
			public void* Buffer;
		}
		
	}
}
