using System;

// namespace System.Diagnostics.Debug.WebApp
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function HRESULT RegisterAuthoringClientFunctionType(IWebApplicationAuthoringMode authoringModeObject, IWebApplicationHost host);
		public function HRESULT UnregisterAuthoringClientFunctionType(IWebApplicationHost host);
		
		// --- COM Interfaces ---
		
		public struct IWebApplicationScriptEvents {}
		public struct IWebApplicationNavigationEvents {}
		public struct IWebApplicationUIEvents {}
		public struct IWebApplicationUpdateEvents {}
		public struct IWebApplicationHost {}
		public struct IWebApplicationActivation {}
		public struct IWebApplicationAuthoringMode {}
		
	}
}
