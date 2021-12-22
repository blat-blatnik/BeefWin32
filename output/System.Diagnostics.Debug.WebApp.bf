using System;

// namespace System.Diagnostics.Debug.WebApp
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT RegisterAuthoringClientFunctionType(IWebApplicationAuthoringMode* authoringModeObject, IWebApplicationHost* host);
		public function HRESULT UnregisterAuthoringClientFunctionType(IWebApplicationHost* host);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWebApplicationScriptEvents : IUnknown
		{
			public const new Guid IID = .(0x7c3f6998, 0x1567, 0x4bba, 0xb5, 0x2b, 0x48, 0xd3, 0x21, 0x41, 0xd6, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationScriptEvents *self, IHTMLWindow2* htmlWindow) BeforeScriptExecute;
				public function HRESULT(IWebApplicationScriptEvents *self, IHTMLWindow2* htmlWindow, IActiveScriptError* scriptError, PWSTR url, BOOL errorHandled) ScriptError;
			}
		}
		[CRepr]
		public struct IWebApplicationNavigationEvents : IUnknown
		{
			public const new Guid IID = .(0xc22615d2, 0xd318, 0x4da2, 0x84, 0x22, 0x1f, 0xca, 0xf7, 0x7b, 0x10, 0xe4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url, uint32 navigationFlags, PWSTR targetFrameName) BeforeNavigate;
				public function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url) NavigateComplete;
				public function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url, PWSTR targetFrameName, uint32 statusCode) NavigateError;
				public function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url) DocumentComplete;
				public function HRESULT(IWebApplicationNavigationEvents *self) DownloadBegin;
				public function HRESULT(IWebApplicationNavigationEvents *self) DownloadComplete;
			}
		}
		[CRepr]
		public struct IWebApplicationUIEvents : IUnknown
		{
			public const new Guid IID = .(0x5b2b3f99, 0x328c, 0x41d5, 0xa6, 0xf7, 0x74, 0x83, 0xed, 0x8e, 0x71, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationUIEvents *self, uint32 securityProblem, HRESULT* result) SecurityProblem;
			}
		}
		[CRepr]
		public struct IWebApplicationUpdateEvents : IUnknown
		{
			public const new Guid IID = .(0x3e59e6b7, 0xc652, 0x4daf, 0xad, 0x5e, 0x16, 0xfe, 0xb3, 0x50, 0xcd, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationUpdateEvents *self) OnPaint;
				public function HRESULT(IWebApplicationUpdateEvents *self) OnCssChanged;
			}
		}
		[CRepr]
		public struct IWebApplicationHost : IUnknown
		{
			public const new Guid IID = .(0xcecbd2c3, 0xa3a5, 0x4749, 0x96, 0x81, 0x20, 0xe9, 0x16, 0x1c, 0x67, 0x94);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationHost *self, HWND* hwnd) get_HWND;
				public function HRESULT(IWebApplicationHost *self, IHTMLDocument2** htmlDocument) get_Document;
				public function HRESULT(IWebApplicationHost *self) Refresh;
				public function HRESULT(IWebApplicationHost *self, Guid* interfaceId, IUnknown* callback, uint32* cookie) Advise;
				public function HRESULT(IWebApplicationHost *self, uint32 cookie) Unadvise;
			}
		}
		[CRepr]
		public struct IWebApplicationActivation : IUnknown
		{
			public const new Guid IID = .(0xbcdcd0de, 0x330e, 0x481b, 0xb8, 0x43, 0x48, 0x98, 0xa6, 0xa8, 0xeb, 0xac);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWebApplicationActivation *self) CancelPendingActivation;
			}
		}
		[CRepr]
		public struct IWebApplicationAuthoringMode : IServiceProvider
		{
			public const new Guid IID = .(0x720aea93, 0x1964, 0x4db0, 0xb0, 0x05, 0x29, 0xeb, 0x9e, 0x2b, 0x18, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public function HRESULT(IWebApplicationAuthoringMode *self, BSTR* designModeDllPath) get_AuthoringClientBinary;
			}
		}
		
	}
}
