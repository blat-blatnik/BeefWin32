using System;

// namespace System.DeveloperLicensing
namespace Win32
{
	extension Win32
	{
		// --- Functions ---
		
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckDeveloperLicense(FILETIME* pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AcquireDeveloperLicense(HWND hwndParent, FILETIME* pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemoveDeveloperLicense(HWND hwndParent);
		
	}
}
