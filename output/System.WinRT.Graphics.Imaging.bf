using System;

// namespace System.WinRT.Graphics.Imaging
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_SoftwareBitmapNativeFactory = .(0x84e65691, 0x8602, 0x4a84, 0xbe, 0x46, 0x70, 0x8b, 0xe9, 0xcd, 0x4b, 0x74);
		
		// --- COM Interfaces ---
		
		public struct ISoftwareBitmapNative {}
		public struct ISoftwareBitmapNativeFactory {}
		
	}
}
