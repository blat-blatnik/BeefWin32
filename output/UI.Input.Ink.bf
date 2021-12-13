using System;

// namespace UI.Input.Ink
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum INK_HIGH_CONTRAST_ADJUSTMENT : int32
		{
			USE_SYSTEM_COLORS_WHEN_NECESSARY = 0,
			USE_SYSTEM_COLORS = 1,
			USE_ORIGINAL_COLORS = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InkDesktopHost = .(0x062584a6, 0xf830, 0x4bdc, 0xa4, 0xd2, 0x0a, 0x10, 0xab, 0x06, 0x2b, 0x1d);
		public const Guid CLSID_InkD2DRenderer = .(0x4044e60c, 0x7b01, 0x4671, 0xa9, 0x7c, 0x04, 0xe0, 0x21, 0x0a, 0x07, 0xa5);
		
		// --- COM Interfaces ---
		
		public struct IInkCommitRequestHandler {}
		public struct IInkPresenterDesktop {}
		public struct IInkHostWorkItem {}
		public struct IInkDesktopHost {}
		public struct IInkD2DRenderer {}
		public struct IInkD2DRenderer2 {}
		
	}
}
