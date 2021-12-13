using System;

// namespace UI.HiDpi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_UNAWARE = -1;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = -2;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = -3;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = -4;
		public const DPI_AWARENESS_CONTEXT DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = -5;
		
		// --- Typedefs ---
		
		public typealias DPI_AWARENESS_CONTEXT = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DPI_AWARENESS : int32
		{
			DPI_AWARENESS_INVALID = -1,
			DPI_AWARENESS_UNAWARE = 0,
			DPI_AWARENESS_SYSTEM_AWARE = 1,
			DPI_AWARENESS_PER_MONITOR_AWARE = 2,
		}
		[AllowDuplicates]
		public enum DPI_HOSTING_BEHAVIOR : int32
		{
			DPI_HOSTING_BEHAVIOR_INVALID = -1,
			DPI_HOSTING_BEHAVIOR_DEFAULT = 0,
			DPI_HOSTING_BEHAVIOR_MIXED = 1,
		}
		[AllowDuplicates]
		public enum DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS : uint32
		{
			DCDC_DEFAULT = 0,
			DCDC_DISABLE_FONT_UPDATE = 1,
			DCDC_DISABLE_RELAYOUT = 2,
		}
		[AllowDuplicates]
		public enum DIALOG_DPI_CHANGE_BEHAVIORS : uint32
		{
			DDC_DEFAULT = 0,
			DDC_DISABLE_ALL = 1,
			DDC_DISABLE_RESIZE = 2,
			DDC_DISABLE_CONTROL_RELAYOUT = 4,
		}
		[AllowDuplicates]
		public enum PROCESS_DPI_AWARENESS : int32
		{
			PROCESS_DPI_UNAWARE = 0,
			PROCESS_SYSTEM_DPI_AWARE = 1,
			PROCESS_PER_MONITOR_DPI_AWARE = 2,
		}
		[AllowDuplicates]
		public enum MONITOR_DPI_TYPE : int32
		{
			MDT_EFFECTIVE_DPI = 0,
			MDT_ANGULAR_DPI = 1,
			MDT_RAW_DPI = 2,
			MDT_DEFAULT = 0,
		}
		
		// --- Functions ---
		
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenThemeDataForDpi(HWND hwnd, PWSTR pszClassList, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDialogControlDpiChangeBehavior(HWND hWnd, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS mask, DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS values);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS GetDialogControlDpiChangeBehavior(HWND hWnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDialogDpiChangeBehavior(HWND hDlg, DIALOG_DPI_CHANGE_BEHAVIORS mask, DIALOG_DPI_CHANGE_BEHAVIORS values);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DIALOG_DPI_CHANGE_BEHAVIORS GetDialogDpiChangeBehavior(HWND hDlg);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetSystemMetricsForDpi(int32 nIndex, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AdjustWindowRectExForDpi(RECT* lpRect, uint32 dwStyle, BOOL bMenu, uint32 dwExStyle, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LogicalToPhysicalPointForPerMonitorDPI(HWND hWnd, POINT* lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PhysicalToLogicalPointForPerMonitorDPI(HWND hWnd, POINT* lpPoint);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SystemParametersInfoForDpi(uint32 uiAction, uint32 uiParam, void* pvParam, uint32 fWinIni, uint32 dpi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT SetThreadDpiAwarenessContext(DPI_AWARENESS_CONTEXT dpiContext);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetThreadDpiAwarenessContext();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetWindowDpiAwarenessContext(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiFromDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AreDpiAwarenessContextsEqual(DPI_AWARENESS_CONTEXT dpiContextA, DPI_AWARENESS_CONTEXT dpiContextB);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsValidDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiForWindow(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiForSystem();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSystemDpiForProcess(HANDLE hProcess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnableNonClientDpiScaling(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_AWARENESS_CONTEXT GetDpiAwarenessContextForProcess(HANDLE hProcess);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR SetThreadDpiHostingBehavior(DPI_HOSTING_BEHAVIOR value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR GetThreadDpiHostingBehavior();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(HWND hwnd);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetProcessDpiAwareness(PROCESS_DPI_AWARENESS value);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetProcessDpiAwareness(HANDLE hprocess, PROCESS_DPI_AWARENESS* value);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetDpiForMonitor(HMONITOR hmonitor, MONITOR_DPI_TYPE dpiType, uint32* dpiX, uint32* dpiY);
		
	}
}
