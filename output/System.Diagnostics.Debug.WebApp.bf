using System;

// namespace System.Diagnostics.Debug.WebApp
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT RegisterAuthoringClientFunctionType(ref IWebApplicationAuthoringMode authoringModeObject, ref IWebApplicationHost host);
		public function HRESULT UnregisterAuthoringClientFunctionType(ref IWebApplicationHost host);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWebApplicationScriptEvents : IUnknown
		{
			public const new Guid IID = .(0x7c3f6998, 0x1567, 0x4bba, 0xb5, 0x2b, 0x48, 0xd3, 0x21, 0x41, 0xd6, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeforeScriptExecute(ref IHTMLWindow2 htmlWindow) mut => VT.BeforeScriptExecute(ref this, ref htmlWindow);
			public HRESULT ScriptError(IHTMLWindow2* htmlWindow, ref IActiveScriptError scriptError, PWSTR url, BOOL errorHandled) mut => VT.ScriptError(ref this, htmlWindow, ref scriptError, url, errorHandled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationScriptEvents self, ref IHTMLWindow2 htmlWindow) BeforeScriptExecute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationScriptEvents self, IHTMLWindow2* htmlWindow, ref IActiveScriptError scriptError, PWSTR url, BOOL errorHandled) ScriptError;
			}
		}
		[CRepr]
		public struct IWebApplicationNavigationEvents : IUnknown
		{
			public const new Guid IID = .(0xc22615d2, 0xd318, 0x4da2, 0x84, 0x22, 0x1f, 0xca, 0xf7, 0x7b, 0x10, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeforeNavigate(ref IHTMLWindow2 htmlWindow, PWSTR url, uint32 navigationFlags, PWSTR targetFrameName) mut => VT.BeforeNavigate(ref this, ref htmlWindow, url, navigationFlags, targetFrameName);
			public HRESULT NavigateComplete(ref IHTMLWindow2 htmlWindow, PWSTR url) mut => VT.NavigateComplete(ref this, ref htmlWindow, url);
			public HRESULT NavigateError(ref IHTMLWindow2 htmlWindow, PWSTR url, PWSTR targetFrameName, uint32 statusCode) mut => VT.NavigateError(ref this, ref htmlWindow, url, targetFrameName, statusCode);
			public HRESULT DocumentComplete(ref IHTMLWindow2 htmlWindow, PWSTR url) mut => VT.DocumentComplete(ref this, ref htmlWindow, url);
			public HRESULT DownloadBegin() mut => VT.DownloadBegin(ref this);
			public HRESULT DownloadComplete() mut => VT.DownloadComplete(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, PWSTR url, uint32 navigationFlags, PWSTR targetFrameName) BeforeNavigate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, PWSTR url) NavigateComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, PWSTR url, PWSTR targetFrameName, uint32 statusCode) NavigateError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self, ref IHTMLWindow2 htmlWindow, PWSTR url) DocumentComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self) DownloadBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationNavigationEvents self) DownloadComplete;
			}
		}
		[CRepr]
		public struct IWebApplicationUIEvents : IUnknown
		{
			public const new Guid IID = .(0x5b2b3f99, 0x328c, 0x41d5, 0xa6, 0xf7, 0x74, 0x83, 0xed, 0x8e, 0x71, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SecurityProblem(uint32 securityProblem, out HRESULT result) mut => VT.SecurityProblem(ref this, securityProblem, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationUIEvents self, uint32 securityProblem, out HRESULT result) SecurityProblem;
			}
		}
		[CRepr]
		public struct IWebApplicationUpdateEvents : IUnknown
		{
			public const new Guid IID = .(0x3e59e6b7, 0xc652, 0x4daf, 0xad, 0x5e, 0x16, 0xfe, 0xb3, 0x50, 0xcd, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPaint() mut => VT.OnPaint(ref this);
			public HRESULT OnCssChanged() mut => VT.OnCssChanged(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationUpdateEvents self) OnPaint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationUpdateEvents self) OnCssChanged;
			}
		}
		[CRepr]
		public struct IWebApplicationHost : IUnknown
		{
			public const new Guid IID = .(0xcecbd2c3, 0xa3a5, 0x4749, 0x96, 0x81, 0x20, 0xe9, 0x16, 0x1c, 0x67, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HWND(out HWND hwnd) mut => VT.get_HWND(ref this, out hwnd);
			public HRESULT get_Document(out IHTMLDocument2* htmlDocument) mut => VT.get_Document(ref this, out htmlDocument);
			public HRESULT Refresh() mut => VT.Refresh(ref this);
			public HRESULT Advise(in Guid interfaceId, ref IUnknown callback, out uint32 cookie) mut => VT.Advise(ref this, interfaceId, ref callback, out cookie);
			public HRESULT Unadvise(uint32 cookie) mut => VT.Unadvise(ref this, cookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationHost self, out HWND hwnd) get_HWND;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationHost self, out IHTMLDocument2* htmlDocument) get_Document;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationHost self) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationHost self, in Guid interfaceId, ref IUnknown callback, out uint32 cookie) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationHost self, uint32 cookie) Unadvise;
			}
		}
		[CRepr]
		public struct IWebApplicationActivation : IUnknown
		{
			public const new Guid IID = .(0xbcdcd0de, 0x330e, 0x481b, 0xb8, 0x43, 0x48, 0x98, 0xa6, 0xa8, 0xeb, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CancelPendingActivation() mut => VT.CancelPendingActivation(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationActivation self) CancelPendingActivation;
			}
		}
		[CRepr]
		public struct IWebApplicationAuthoringMode : IServiceProvider
		{
			public const new Guid IID = .(0x720aea93, 0x1964, 0x4db0, 0xb0, 0x05, 0x29, 0xeb, 0x9e, 0x2b, 0x18, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AuthoringClientBinary(BSTR* designModeDllPath) mut => VT.get_AuthoringClientBinary(ref this, designModeDllPath);

			[CRepr]
			public struct VTable : IServiceProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebApplicationAuthoringMode self, BSTR* designModeDllPath) get_AuthoringClientBinary;
			}
		}
		
	}
}
