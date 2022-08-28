namespace Win32.System.DeveloperLicensing;

using System;
using Win32.Foundation;

static
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
