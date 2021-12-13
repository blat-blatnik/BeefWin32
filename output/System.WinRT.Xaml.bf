using System;

// namespace System.WinRT.Xaml
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 E_SURFACE_CONTENTS_LOST = 2150301728;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum XAML_REFERENCETRACKER_DISCONNECT : int32
		{
			XAML_REFERENCETRACKER_DISCONNECT_DEFAULT = 0,
			XAML_REFERENCETRACKER_DISCONNECT_SUSPEND = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TrackerHandle__
		{
			public int32 unused;
		}
		
		// --- COM Interfaces ---
		
		public struct ISurfaceImageSourceNative {}
		public struct IVirtualSurfaceUpdatesCallbackNative {}
		public struct IVirtualSurfaceImageSourceNative {}
		public struct ISwapChainBackgroundPanelNative {}
		public struct ISurfaceImageSourceManagerNative {}
		public struct ISurfaceImageSourceNativeWithD2D {}
		public struct ISwapChainPanelNative {}
		public struct ISwapChainPanelNative2 {}
		public struct IDesktopWindowXamlSourceNative {}
		public struct IDesktopWindowXamlSourceNative2 {}
		public struct IReferenceTrackerTarget {}
		public struct IReferenceTracker {}
		public struct IReferenceTrackerManager {}
		public struct IFindReferenceTargetsCallback {}
		public struct IReferenceTrackerHost {}
		public struct IReferenceTrackerExtension {}
		public struct ITrackerOwner {}
		
	}
}
