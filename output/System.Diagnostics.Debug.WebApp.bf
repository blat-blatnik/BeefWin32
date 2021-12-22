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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeforeScriptExecute(IHTMLWindow2* htmlWindow) mut
			{
				return VT.BeforeScriptExecute(&this, htmlWindow);
			}
			public HRESULT ScriptError(IHTMLWindow2* htmlWindow, IActiveScriptError* scriptError, PWSTR url, BOOL errorHandled) mut
			{
				return VT.ScriptError(&this, htmlWindow, scriptError, url, errorHandled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationScriptEvents *self, IHTMLWindow2* htmlWindow) BeforeScriptExecute;
				public new function HRESULT(IWebApplicationScriptEvents *self, IHTMLWindow2* htmlWindow, IActiveScriptError* scriptError, PWSTR url, BOOL errorHandled) ScriptError;
			}
		}
		[CRepr]
		public struct IWebApplicationNavigationEvents : IUnknown
		{
			public const new Guid IID = .(0xc22615d2, 0xd318, 0x4da2, 0x84, 0x22, 0x1f, 0xca, 0xf7, 0x7b, 0x10, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeforeNavigate(IHTMLWindow2* htmlWindow, PWSTR url, uint32 navigationFlags, PWSTR targetFrameName) mut
			{
				return VT.BeforeNavigate(&this, htmlWindow, url, navigationFlags, targetFrameName);
			}
			public HRESULT NavigateComplete(IHTMLWindow2* htmlWindow, PWSTR url) mut
			{
				return VT.NavigateComplete(&this, htmlWindow, url);
			}
			public HRESULT NavigateError(IHTMLWindow2* htmlWindow, PWSTR url, PWSTR targetFrameName, uint32 statusCode) mut
			{
				return VT.NavigateError(&this, htmlWindow, url, targetFrameName, statusCode);
			}
			public HRESULT DocumentComplete(IHTMLWindow2* htmlWindow, PWSTR url) mut
			{
				return VT.DocumentComplete(&this, htmlWindow, url);
			}
			public HRESULT DownloadBegin() mut
			{
				return VT.DownloadBegin(&this);
			}
			public HRESULT DownloadComplete() mut
			{
				return VT.DownloadComplete(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url, uint32 navigationFlags, PWSTR targetFrameName) BeforeNavigate;
				public new function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url) NavigateComplete;
				public new function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url, PWSTR targetFrameName, uint32 statusCode) NavigateError;
				public new function HRESULT(IWebApplicationNavigationEvents *self, IHTMLWindow2* htmlWindow, PWSTR url) DocumentComplete;
				public new function HRESULT(IWebApplicationNavigationEvents *self) DownloadBegin;
				public new function HRESULT(IWebApplicationNavigationEvents *self) DownloadComplete;
			}
		}
		[CRepr]
		public struct IWebApplicationUIEvents : IUnknown
		{
			public const new Guid IID = .(0x5b2b3f99, 0x328c, 0x41d5, 0xa6, 0xf7, 0x74, 0x83, 0xed, 0x8e, 0x71, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SecurityProblem(uint32 securityProblem, HRESULT* result) mut
			{
				return VT.SecurityProblem(&this, securityProblem, result);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationUIEvents *self, uint32 securityProblem, HRESULT* result) SecurityProblem;
			}
		}
		[CRepr]
		public struct IWebApplicationUpdateEvents : IUnknown
		{
			public const new Guid IID = .(0x3e59e6b7, 0xc652, 0x4daf, 0xad, 0x5e, 0x16, 0xfe, 0xb3, 0x50, 0xcd, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPaint() mut
			{
				return VT.OnPaint(&this);
			}
			public HRESULT OnCssChanged() mut
			{
				return VT.OnCssChanged(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationUpdateEvents *self) OnPaint;
				public new function HRESULT(IWebApplicationUpdateEvents *self) OnCssChanged;
			}
		}
		[CRepr]
		public struct IWebApplicationHost : IUnknown
		{
			public const new Guid IID = .(0xcecbd2c3, 0xa3a5, 0x4749, 0x96, 0x81, 0x20, 0xe9, 0x16, 0x1c, 0x67, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HWND(HWND* hwnd) mut
			{
				return VT.get_HWND(&this, hwnd);
			}
			public HRESULT get_Document(IHTMLDocument2** htmlDocument) mut
			{
				return VT.get_Document(&this, htmlDocument);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT Advise(Guid* interfaceId, IUnknown* callback, uint32* cookie) mut
			{
				return VT.Advise(&this, interfaceId, callback, cookie);
			}
			public HRESULT Unadvise(uint32 cookie) mut
			{
				return VT.Unadvise(&this, cookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationHost *self, HWND* hwnd) get_HWND;
				public new function HRESULT(IWebApplicationHost *self, IHTMLDocument2** htmlDocument) get_Document;
				public new function HRESULT(IWebApplicationHost *self) Refresh;
				public new function HRESULT(IWebApplicationHost *self, Guid* interfaceId, IUnknown* callback, uint32* cookie) Advise;
				public new function HRESULT(IWebApplicationHost *self, uint32 cookie) Unadvise;
			}
		}
		[CRepr]
		public struct IWebApplicationActivation : IUnknown
		{
			public const new Guid IID = .(0xbcdcd0de, 0x330e, 0x481b, 0xb8, 0x43, 0x48, 0x98, 0xa6, 0xa8, 0xeb, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CancelPendingActivation() mut
			{
				return VT.CancelPendingActivation(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWebApplicationActivation *self) CancelPendingActivation;
			}
		}
		[CRepr]
		public struct IWebApplicationAuthoringMode : IServiceProvider
		{
			public const new Guid IID = .(0x720aea93, 0x1964, 0x4db0, 0xb0, 0x05, 0x29, 0xeb, 0x9e, 0x2b, 0x18, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AuthoringClientBinary(BSTR* designModeDllPath) mut
			{
				return VT.get_AuthoringClientBinary(&this, designModeDllPath);
			}
			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public new function HRESULT(IWebApplicationAuthoringMode *self, BSTR* designModeDllPath) get_AuthoringClientBinary;
			}
		}
		
	}
}
