namespace Win32.System.UserAccessLogging;

using System;
using Win32.Foundation;
using Win32.Networking.WinSock;

static
{
	#region Structs
	[CRepr]
	public struct UAL_DATA_BLOB
	{
		public uint32 Size;
		public Guid RoleGuid;
		public Guid TenantId;
		public SOCKADDR_STORAGE Address;
		public char16[260] UserName;
	}
	#endregion
	
	#region Functions
	[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UalStart(ref UAL_DATA_BLOB Data);
	[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UalStop(ref UAL_DATA_BLOB Data);
	[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UalInstrument(ref UAL_DATA_BLOB Data);
	[Import("ualapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UalRegisterProduct(PWSTR wszProductName, PWSTR wszRoleName, PWSTR wszGuid);
	#endregion
}
