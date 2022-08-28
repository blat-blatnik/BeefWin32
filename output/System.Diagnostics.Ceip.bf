namespace Win32.System.Diagnostics.Ceip;

using System;
using Win32.Foundation;

static
{
	#region Functions
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CeipIsOptedIn();
	#endregion
}
