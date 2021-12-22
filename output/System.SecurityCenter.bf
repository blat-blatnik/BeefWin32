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
		
		[CRepr]
		public struct IWscProduct : IDispatch
		{
			public const new Guid IID = .(0x8c38232e, 0x3a45, 0x4a27, 0x92, 0xb0, 0x1a, 0x16, 0xa9, 0x75, 0xf6, 0x69);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductName;
				public function HRESULT(IWscProduct *self, WSC_SECURITY_PRODUCT_STATE* pVal) get_ProductState;
				public function HRESULT(IWscProduct *self, WSC_SECURITY_SIGNATURE_STATUS* pVal) get_SignatureStatus;
				public function HRESULT(IWscProduct *self, BSTR* pVal) get_RemediationPath;
				public function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductStateTimestamp;
				public function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductGuid;
				public function HRESULT(IWscProduct *self, BOOL* pVal) get_ProductIsDefault;
			}
		}
		[CRepr]
		public struct IWscProduct2 : IWscProduct
		{
			public const new Guid IID = .(0xf896ca54, 0xfe09, 0x4403, 0x86, 0xd4, 0x23, 0xcb, 0x48, 0x8d, 0x81, 0xd8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWscProduct.VTable
			{
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusScanSubstatus;
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusSettingsSubstatus;
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusProtectionUpdateSubstatus;
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallDomainProfileSubstatus;
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallPrivateProfileSubstatus;
				public function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallPublicProfileSubstatus;
			}
		}
		[CRepr]
		public struct IWscProduct3 : IWscProduct2
		{
			public const new Guid IID = .(0x55536524, 0xd1d1, 0x4726, 0x8c, 0x7c, 0x04, 0x99, 0x6a, 0x19, 0x04, 0xe7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWscProduct2.VTable
			{
				public function HRESULT(IWscProduct3 *self, uint32* pdwDays) get_AntivirusDaysUntilExpired;
			}
		}
		[CRepr]
		public struct IWSCProductList : IDispatch
		{
			public const new Guid IID = .(0x722a338c, 0x6e8e, 0x4e72, 0xac, 0x27, 0x14, 0x17, 0xfb, 0x0c, 0x81, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWSCProductList *self, WSC_SECURITY_PROVIDER provider) Initialize;
				public function HRESULT(IWSCProductList *self, int32* pVal) get_Count;
				public function HRESULT(IWSCProductList *self, uint32 index, IWscProduct** pVal) get_Item;
			}
		}
		[CRepr]
		public struct IWSCDefaultProduct : IDispatch
		{
			public const new Guid IID = .(0x0476d69c, 0xf21a, 0x11e5, 0x9c, 0xe9, 0x5e, 0x55, 0x17, 0x50, 0x7c, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWSCDefaultProduct *self, SECURITY_PRODUCT_TYPE eType, BSTR pGuid) SetDefaultProduct;
			}
		}
		
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
