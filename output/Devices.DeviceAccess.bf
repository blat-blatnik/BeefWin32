using System;

// namespace Devices.DeviceAccess
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 ED_BASE = 4096;
		public const uint32 DEV_PORT_SIM = 1;
		public const uint32 DEV_PORT_COM1 = 2;
		public const uint32 DEV_PORT_COM2 = 3;
		public const uint32 DEV_PORT_COM3 = 4;
		public const uint32 DEV_PORT_COM4 = 5;
		public const uint32 DEV_PORT_DIAQ = 6;
		public const uint32 DEV_PORT_ARTI = 7;
		public const uint32 DEV_PORT_1394 = 8;
		public const uint32 DEV_PORT_USB = 9;
		public const uint32 DEV_PORT_MIN = 1;
		public const uint32 DEV_PORT_MAX = 9;
		public const uint32 ED_TOP = 1;
		public const uint32 ED_MIDDLE = 2;
		public const uint32 ED_BOTTOM = 4;
		public const uint32 ED_LEFT = 256;
		public const uint32 ED_CENTER = 512;
		public const uint32 ED_RIGHT = 1024;
		public const uint32 ED_AUDIO_ALL = 268435456;
		public const int32 ED_AUDIO_1 = 1;
		public const int32 ED_AUDIO_2 = 2;
		public const int32 ED_AUDIO_3 = 4;
		public const int32 ED_AUDIO_4 = 8;
		public const int32 ED_AUDIO_5 = 16;
		public const int32 ED_AUDIO_6 = 32;
		public const int32 ED_AUDIO_7 = 64;
		public const int32 ED_AUDIO_8 = 128;
		public const int32 ED_AUDIO_9 = 256;
		public const int32 ED_AUDIO_10 = 512;
		public const int32 ED_AUDIO_11 = 1024;
		public const int32 ED_AUDIO_12 = 2048;
		public const int32 ED_AUDIO_13 = 4096;
		public const int32 ED_AUDIO_14 = 8192;
		public const int32 ED_AUDIO_15 = 16384;
		public const int32 ED_AUDIO_16 = 32768;
		public const int32 ED_AUDIO_17 = 65536;
		public const int32 ED_AUDIO_18 = 131072;
		public const int32 ED_AUDIO_19 = 262144;
		public const int32 ED_AUDIO_20 = 524288;
		public const int32 ED_AUDIO_21 = 1048576;
		public const int32 ED_AUDIO_22 = 2097152;
		public const int32 ED_AUDIO_23 = 4194304;
		public const int32 ED_AUDIO_24 = 8388608;
		public const int32 ED_VIDEO = 33554432;
		public const Guid CLSID_DeviceIoControl = .(0x12d3e372, 0x874b, 0x457d, 0x9f, 0xdf, 0x73, 0x97, 0x77, 0x78, 0x68, 0x6c);
		
		// --- COM Interfaces ---
		
		public struct IDeviceRequestCompletionCallback {}
		public struct IDeviceIoControl {}
		public struct ICreateDeviceAccessAsync {}
		
		// --- Functions ---
		
		[Import("deviceaccess.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDeviceAccessInstance(PWSTR deviceInterfacePath, uint32 desiredAccess, ICreateDeviceAccessAsync* createAsync);
		
	}
}
