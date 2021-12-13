using System;

// namespace Media.LibrarySharingServices
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WindowsMediaLibrarySharingDeviceAuthorizationStatus : int32
		{
			DEVICE_AUTHORIZATION_UNKNOWN = 0,
			DEVICE_AUTHORIZATION_ALLOWED = 1,
			DEVICE_AUTHORIZATION_DENIED = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WindowsMediaLibrarySharingServices = .(0xad581b00, 0x7b64, 0x4e59, 0xa3, 0x8d, 0xd2, 0xc5, 0xbf, 0x51, 0xdd, 0xb3);
		
		// --- COM Interfaces ---
		
		public struct IWindowsMediaLibrarySharingDeviceProperty {}
		public struct IWindowsMediaLibrarySharingDeviceProperties {}
		public struct IWindowsMediaLibrarySharingDevice {}
		public struct IWindowsMediaLibrarySharingDevices {}
		public struct IWindowsMediaLibrarySharingServices {}
		
	}
}
