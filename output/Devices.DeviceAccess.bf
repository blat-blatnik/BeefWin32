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
		
		[CRepr]
		public struct IDeviceRequestCompletionCallback : IUnknown
		{
			public const new Guid IID = .(0x999bad24, 0x9acd, 0x45bb, 0x86, 0x69, 0x2a, 0x2f, 0xc0, 0x28, 0x8b, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke(HRESULT requestResult, uint32 bytesReturned) mut => VT.Invoke(ref this, requestResult, bytesReturned);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceRequestCompletionCallback self, HRESULT requestResult, uint32 bytesReturned) Invoke;
			}
		}
		[CRepr]
		public struct IDeviceIoControl : IUnknown
		{
			public const new Guid IID = .(0x9eefe161, 0x23ab, 0x4f18, 0x9b, 0x49, 0x99, 0x1b, 0x58, 0x6a, 0xe9, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeviceIoControlSync(uint32 ioControlCode, uint8* inputBuffer, uint32 inputBufferSize, uint8* outputBuffer, uint32 outputBufferSize, out uint32 bytesReturned) mut => VT.DeviceIoControlSync(ref this, ioControlCode, inputBuffer, inputBufferSize, outputBuffer, outputBufferSize, out bytesReturned);
			public HRESULT DeviceIoControlAsync(uint32 ioControlCode, uint8* inputBuffer, uint32 inputBufferSize, uint8* outputBuffer, uint32 outputBufferSize, ref IDeviceRequestCompletionCallback requestCompletionCallback, uint* cancelContext) mut => VT.DeviceIoControlAsync(ref this, ioControlCode, inputBuffer, inputBufferSize, outputBuffer, outputBufferSize, ref requestCompletionCallback, cancelContext);
			public HRESULT CancelOperation(uint cancelContext) mut => VT.CancelOperation(ref this, cancelContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceIoControl self, uint32 ioControlCode, uint8* inputBuffer, uint32 inputBufferSize, uint8* outputBuffer, uint32 outputBufferSize, out uint32 bytesReturned) DeviceIoControlSync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceIoControl self, uint32 ioControlCode, uint8* inputBuffer, uint32 inputBufferSize, uint8* outputBuffer, uint32 outputBufferSize, ref IDeviceRequestCompletionCallback requestCompletionCallback, uint* cancelContext) DeviceIoControlAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceIoControl self, uint cancelContext) CancelOperation;
			}
		}
		[CRepr]
		public struct ICreateDeviceAccessAsync : IUnknown
		{
			public const new Guid IID = .(0x3474628f, 0x683d, 0x42d2, 0xab, 0xcb, 0xdb, 0x01, 0x8c, 0x65, 0x03, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Wait(uint32 timeout) mut => VT.Wait(ref this, timeout);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT GetResult(in Guid riid, void** deviceAccess) mut => VT.GetResult(ref this, riid, deviceAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateDeviceAccessAsync self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateDeviceAccessAsync self, uint32 timeout) Wait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateDeviceAccessAsync self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateDeviceAccessAsync self, in Guid riid, void** deviceAccess) GetResult;
			}
		}
		
		// --- Functions ---
		
		[Import("deviceaccess.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDeviceAccessInstance(PWSTR deviceInterfacePath, uint32 desiredAccess, out ICreateDeviceAccessAsync* createAsync);
	}
}
