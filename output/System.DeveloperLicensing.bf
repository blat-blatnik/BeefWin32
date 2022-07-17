using System;

// namespace System.DeveloperLicensing
namespace Win32
{
	extension Win32
	{
		#region Functions
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckDeveloperLicense(out FILETIME pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AcquireDeveloperLicense(HWND hwndParent, out FILETIME pExpiration);
		[Import("wsclient.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemoveDeveloperLicense(HWND hwndParent);
		#endregion
	}
}
