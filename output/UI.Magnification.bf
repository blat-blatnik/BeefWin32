using System;

// namespace UI.Magnification
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 MS_SHOWMAGNIFIEDCURSOR = 1;
		public const int32 MS_CLIPAROUNDCURSOR = 2;
		public const int32 MS_INVERTCOLORS = 4;
		public const uint32 MW_FILTERMODE_EXCLUDE = 0;
		public const uint32 MW_FILTERMODE_INCLUDE = 1;
		
		// --- Function Pointers ---
		
		public function BOOL MagImageScalingCallback(HWND hwnd, void* srcdata, MAGIMAGEHEADER srcheader, void* destdata, MAGIMAGEHEADER destheader, RECT unclipped, RECT clipped, HRGN dirty);
		
		// --- Structs ---
		
		[CRepr]
		public struct MAGTRANSFORM
		{
			public float[9] v;
		}
		[CRepr]
		public struct MAGIMAGEHEADER
		{
			public uint32 width;
			public uint32 height;
			public Guid format;
			public uint32 stride;
			public uint32 offset;
			public uint cbSize;
		}
		[CRepr]
		public struct MAGCOLOREFFECT
		{
			public float[25] transform;
		}
		
		// --- Functions ---
		
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagInitialize();
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagUninitialize();
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetWindowSource(HWND hwnd, RECT rect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetWindowSource(HWND hwnd, out RECT pRect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetWindowTransform(HWND hwnd, out MAGTRANSFORM pTransform);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetWindowTransform(HWND hwnd, out MAGTRANSFORM pTransform);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetWindowFilterList(HWND hwnd, uint32 dwFilterMode, int32 count, out HWND pHWND);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MagGetWindowFilterList(HWND hwnd, out uint32 pdwFilterMode, int32 count, out HWND pHWND);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetImageScalingCallback(HWND hwnd, MagImageScalingCallback callback);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MagImageScalingCallback MagGetImageScalingCallback(HWND hwnd);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetColorEffect(HWND hwnd, out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetColorEffect(HWND hwnd, out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetFullscreenTransform(float magLevel, int32 xOffset, int32 yOffset);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetFullscreenTransform(out float pMagLevel, out int32 pxOffset, out int32 pyOffset);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetFullscreenColorEffect(ref MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetFullscreenColorEffect(out MAGCOLOREFFECT pEffect);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagSetInputTransform(BOOL fEnabled, in RECT pRectSource, in RECT pRectDest);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagGetInputTransform(out BOOL pfEnabled, out RECT pRectSource, out RECT pRectDest);
		[Import("magnification.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MagShowSystemCursor(BOOL fShowCursor);
	}
}
