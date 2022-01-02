using System;

// namespace NetworkManagement.WebDav
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DAV_AUTHN_SCHEME_BASIC = 1;
		public const uint32 DAV_AUTHN_SCHEME_NTLM = 2;
		public const uint32 DAV_AUTHN_SCHEME_PASSPORT = 4;
		public const uint32 DAV_AUTHN_SCHEME_DIGEST = 8;
		public const uint32 DAV_AUTHN_SCHEME_NEGOTIATE = 16;
		public const uint32 DAV_AUTHN_SCHEME_CERT = 65536;
		public const uint32 DAV_AUTHN_SCHEME_FBA = 1048576;
		
		// --- Enums ---
		
		public enum AUTHNEXTSTEP : int32
		{
			DefaultBehavior = 0,
			RetryRequest = 1,
			CancelRequest = 2,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PFNDAVAUTHCALLBACK_FREECRED(void* pbuffer);
		public function uint32 PFNDAVAUTHCALLBACK(PWSTR lpwzServerName, PWSTR lpwzRemoteName, uint32 dwAuthScheme, uint32 dwFlags, out DAV_CALLBACK_CRED pCallbackCred, out AUTHNEXTSTEP NextStep, out PFNDAVAUTHCALLBACK_FREECRED pFreeCred);
		
		// --- Structs ---
		
		[CRepr]
		public struct DAV_CALLBACK_AUTH_BLOB
		{
			public void* pBuffer;
			public uint32 ulSize;
			public uint32 ulType;
		}
		[CRepr]
		public struct DAV_CALLBACK_AUTH_UNP
		{
			public PWSTR pszUserName;
			public uint32 ulUserNameLength;
			public PWSTR pszPassword;
			public uint32 ulPasswordLength;
		}
		[CRepr]
		public struct DAV_CALLBACK_CRED
		{
			public DAV_CALLBACK_AUTH_BLOB AuthBlob;
			public DAV_CALLBACK_AUTH_UNP UNPBlob;
			public BOOL bAuthBlobValid;
			public BOOL bSave;
		}
		
		// --- Functions ---
		
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavAddConnection(out HANDLE ConnectionHandle, PWSTR RemoteName, PWSTR UserName, PWSTR Password, ref uint8 ClientCert, uint32 CertSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavDeleteConnection(HANDLE ConnectionHandle);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetUNCFromHTTPPath(PWSTR Url, char16* UncPath, out uint32 lpSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetHTTPFromUNCPath(PWSTR UncPath, char16* Url, out uint32 lpSize);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetTheLockOwnerOfTheFile(PWSTR FileName, PWSTR LockOwnerName, out uint32 LockOwnerNameLengthInBytes);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavGetExtendedError(HANDLE hFile, out uint32 ExtError, char16* ExtErrorString, out uint32 cChSize);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavFlushFile(HANDLE hFile);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavInvalidateCache(PWSTR URLName);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavCancelConnectionsToServer(PWSTR lpName, BOOL fForce);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DavRegisterAuthCallback(PFNDAVAUTHCALLBACK CallBack, uint32 Version);
		[Import("davclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DavUnregisterAuthCallback(uint32 hCallback);
	}
}
