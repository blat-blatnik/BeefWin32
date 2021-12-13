using System;

// namespace System.SecurityCenter
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WSC_SECURITY_PRODUCT_SUBSTATUS : int32
		{
			WSC_SECURITY_PRODUCT_SUBSTATUS_NOT_SET = 0,
			WSC_SECURITY_PRODUCT_SUBSTATUS_NO_ACTION = 1,
			WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_RECOMMENDED = 2,
			WSC_SECURITY_PRODUCT_SUBSTATUS_ACTION_NEEDED = 3,
		}
		[AllowDuplicates]
		public enum WSC_SECURITY_PRODUCT_STATE : int32
		{
			WSC_SECURITY_PRODUCT_STATE_ON = 0,
			WSC_SECURITY_PRODUCT_STATE_OFF = 1,
			WSC_SECURITY_PRODUCT_STATE_SNOOZED = 2,
			WSC_SECURITY_PRODUCT_STATE_EXPIRED = 3,
		}
		[AllowDuplicates]
		public enum SECURITY_PRODUCT_TYPE : int32
		{
			SECURITY_PRODUCT_TYPE_ANTIVIRUS = 0,
			SECURITY_PRODUCT_TYPE_FIREWALL = 1,
			SECURITY_PRODUCT_TYPE_ANTISPYWARE = 2,
		}
		[AllowDuplicates]
		public enum WSC_SECURITY_SIGNATURE_STATUS : int32
		{
			WSC_SECURITY_PRODUCT_OUT_OF_DATE = 0,
			WSC_SECURITY_PRODUCT_UP_TO_DATE = 1,
		}
		[AllowDuplicates]
		public enum WSC_SECURITY_PROVIDER : int32
		{
			WSC_SECURITY_PROVIDER_FIREWALL = 1,
			WSC_SECURITY_PROVIDER_AUTOUPDATE_SETTINGS = 2,
			WSC_SECURITY_PROVIDER_ANTIVIRUS = 4,
			WSC_SECURITY_PROVIDER_ANTISPYWARE = 8,
			WSC_SECURITY_PROVIDER_INTERNET_SETTINGS = 16,
			WSC_SECURITY_PROVIDER_USER_ACCOUNT_CONTROL = 32,
			WSC_SECURITY_PROVIDER_SERVICE = 64,
			WSC_SECURITY_PROVIDER_NONE = 0,
			WSC_SECURITY_PROVIDER_ALL = 127,
		}
		[AllowDuplicates]
		public enum WSC_SECURITY_PROVIDER_HEALTH : int32
		{
			WSC_SECURITY_PROVIDER_HEALTH_GOOD = 0,
			WSC_SECURITY_PROVIDER_HEALTH_NOTMONITORED = 1,
			WSC_SECURITY_PROVIDER_HEALTH_POOR = 2,
			WSC_SECURITY_PROVIDER_HEALTH_SNOOZE = 3,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WSCProductList = .(0x17072f7b, 0x9abe, 0x4a74, 0xa2, 0x61, 0x1e, 0xb7, 0x6b, 0x55, 0x10, 0x7a);
		public const Guid CLSID_WSCDefaultProduct = .(0x2981a36e, 0xf22d, 0x11e5, 0x9c, 0xe9, 0x5e, 0x55, 0x17, 0x50, 0x7c, 0x66);
		
		// --- COM Interfaces ---
		
		public struct IWscProduct {}
		public struct IWscProduct2 {}
		public struct IWscProduct3 {}
		public struct IWSCProductList {}
		public struct IWSCDefaultProduct {}
		
		// --- Functions ---
		
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscRegisterForChanges(void* Reserved, HANDLE* phCallbackRegistration, LPTHREAD_START_ROUTINE lpCallbackAddress, void* pContext);
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscUnRegisterChanges(HANDLE hRegistrationHandle);
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscRegisterForUserNotifications();
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscGetSecurityProviderHealth(uint32 Providers, WSC_SECURITY_PROVIDER_HEALTH* pHealth);
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscQueryAntiMalwareUri();
		[Import("wscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WscGetAntiMalwareUri(PWSTR* ppszUri);
		
	}
}
