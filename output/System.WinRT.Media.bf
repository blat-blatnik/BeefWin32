using System;

// namespace System.WinRT.Media
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_AudioFrameNativeFactory = .(0x16a0a3b9, 0x9f65, 0x4102, 0x93, 0x67, 0x2c, 0xda, 0x3a, 0x4f, 0x37, 0x2a);
		public const Guid CLSID_VideoFrameNativeFactory = .(0xd194386a, 0x04e3, 0x4814, 0x81, 0x00, 0xb2, 0xb0, 0xae, 0x6d, 0x78, 0xc7);
		
		// --- COM Interfaces ---
		
		public struct IAudioFrameNative {}
		public struct IVideoFrameNative {}
		public struct IAudioFrameNativeFactory {}
		public struct IVideoFrameNativeFactory {}
		
	}
}
