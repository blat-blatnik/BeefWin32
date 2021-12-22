using System;

// namespace System.SecurityCenter
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum WSC_SECURITY_PRODUCT_SUBSTATUS : int32
		{
			NOT_SET = 0,
			NO_ACTION = 1,
			ACTION_RECOMMENDED = 2,
			ACTION_NEEDED = 3,
		}
		public enum WSC_SECURITY_PRODUCT_STATE : int32
		{
			ON = 0,
			OFF = 1,
			SNOOZED = 2,
			EXPIRED = 3,
		}
		public enum SECURITY_PRODUCT_TYPE : int32
		{
			ANTIVIRUS = 0,
			FIREWALL = 1,
			ANTISPYWARE = 2,
		}
		public enum WSC_SECURITY_SIGNATURE_STATUS : int32
		{
			OUT_OF_DATE = 0,
			UP_TO_DATE = 1,
		}
		public enum WSC_SECURITY_PROVIDER : int32
		{
			FIREWALL = 1,
			AUTOUPDATE_SETTINGS = 2,
			ANTIVIRUS = 4,
			ANTISPYWARE = 8,
			INTERNET_SETTINGS = 16,
			USER_ACCOUNT_CONTROL = 32,
			SERVICE = 64,
			NONE = 0,
			ALL = 127,
		}
		public enum WSC_SECURITY_PROVIDER_HEALTH : int32
		{
			GOOD = 0,
			NOTMONITORED = 1,
			POOR = 2,
			SNOOZE = 3,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WSCProductList = .(0x17072f7b, 0x9abe, 0x4a74, 0xa2, 0x61, 0x1e, 0xb7, 0x6b, 0x55, 0x10, 0x7a);
		public const Guid CLSID_WSCDefaultProduct = .(0x2981a36e, 0xf22d, 0x11e5, 0x9c, 0xe9, 0x5e, 0x55, 0x17, 0x50, 0x7c, 0x66);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWscProduct : IDispatch
		{
			public const new Guid IID = .(0x8c38232e, 0x3a45, 0x4a27, 0x92, 0xb0, 0x1a, 0x16, 0xa9, 0x75, 0xf6, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductName(BSTR* pVal) mut
			{
				return VT.get_ProductName(&this, pVal);
			}
			public HRESULT get_ProductState(WSC_SECURITY_PRODUCT_STATE* pVal) mut
			{
				return VT.get_ProductState(&this, pVal);
			}
			public HRESULT get_SignatureStatus(WSC_SECURITY_SIGNATURE_STATUS* pVal) mut
			{
				return VT.get_SignatureStatus(&this, pVal);
			}
			public HRESULT get_RemediationPath(BSTR* pVal) mut
			{
				return VT.get_RemediationPath(&this, pVal);
			}
			public HRESULT get_ProductStateTimestamp(BSTR* pVal) mut
			{
				return VT.get_ProductStateTimestamp(&this, pVal);
			}
			public HRESULT get_ProductGuid(BSTR* pVal) mut
			{
				return VT.get_ProductGuid(&this, pVal);
			}
			public HRESULT get_ProductIsDefault(BOOL* pVal) mut
			{
				return VT.get_ProductIsDefault(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductName;
				public new function HRESULT(IWscProduct *self, WSC_SECURITY_PRODUCT_STATE* pVal) get_ProductState;
				public new function HRESULT(IWscProduct *self, WSC_SECURITY_SIGNATURE_STATUS* pVal) get_SignatureStatus;
				public new function HRESULT(IWscProduct *self, BSTR* pVal) get_RemediationPath;
				public new function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductStateTimestamp;
				public new function HRESULT(IWscProduct *self, BSTR* pVal) get_ProductGuid;
				public new function HRESULT(IWscProduct *self, BOOL* pVal) get_ProductIsDefault;
			}
		}
		[CRepr]
		public struct IWscProduct2 : IWscProduct
		{
			public const new Guid IID = .(0xf896ca54, 0xfe09, 0x4403, 0x86, 0xd4, 0x23, 0xcb, 0x48, 0x8d, 0x81, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AntivirusScanSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_AntivirusScanSubstatus(&this, peStatus);
			}
			public HRESULT get_AntivirusSettingsSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_AntivirusSettingsSubstatus(&this, peStatus);
			}
			public HRESULT get_AntivirusProtectionUpdateSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_AntivirusProtectionUpdateSubstatus(&this, peStatus);
			}
			public HRESULT get_FirewallDomainProfileSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_FirewallDomainProfileSubstatus(&this, peStatus);
			}
			public HRESULT get_FirewallPrivateProfileSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_FirewallPrivateProfileSubstatus(&this, peStatus);
			}
			public HRESULT get_FirewallPublicProfileSubstatus(WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) mut
			{
				return VT.get_FirewallPublicProfileSubstatus(&this, peStatus);
			}
			[CRepr]
			public struct VTable : IWscProduct.VTable
			{
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusScanSubstatus;
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusSettingsSubstatus;
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_AntivirusProtectionUpdateSubstatus;
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallDomainProfileSubstatus;
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallPrivateProfileSubstatus;
				public new function HRESULT(IWscProduct2 *self, WSC_SECURITY_PRODUCT_SUBSTATUS* peStatus) get_FirewallPublicProfileSubstatus;
			}
		}
		[CRepr]
		public struct IWscProduct3 : IWscProduct2
		{
			public const new Guid IID = .(0x55536524, 0xd1d1, 0x4726, 0x8c, 0x7c, 0x04, 0x99, 0x6a, 0x19, 0x04, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AntivirusDaysUntilExpired(uint32* pdwDays) mut
			{
				return VT.get_AntivirusDaysUntilExpired(&this, pdwDays);
			}
			[CRepr]
			public struct VTable : IWscProduct2.VTable
			{
				public new function HRESULT(IWscProduct3 *self, uint32* pdwDays) get_AntivirusDaysUntilExpired;
			}
		}
		[CRepr]
		public struct IWSCProductList : IDispatch
		{
			public const new Guid IID = .(0x722a338c, 0x6e8e, 0x4e72, 0xac, 0x27, 0x14, 0x17, 0xfb, 0x0c, 0x81, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(WSC_SECURITY_PROVIDER provider) mut
			{
				return VT.Initialize(&this, provider);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(uint32 index, IWscProduct** pVal) mut
			{
				return VT.get_Item(&this, index, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWSCProductList *self, WSC_SECURITY_PROVIDER provider) Initialize;
				public new function HRESULT(IWSCProductList *self, int32* pVal) get_Count;
				public new function HRESULT(IWSCProductList *self, uint32 index, IWscProduct** pVal) get_Item;
			}
		}
		[CRepr]
		public struct IWSCDefaultProduct : IDispatch
		{
			public const new Guid IID = .(0x0476d69c, 0xf21a, 0x11e5, 0x9c, 0xe9, 0x5e, 0x55, 0x17, 0x50, 0x7c, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDefaultProduct(SECURITY_PRODUCT_TYPE eType, BSTR pGuid) mut
			{
				return VT.SetDefaultProduct(&this, eType, pGuid);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWSCDefaultProduct *self, SECURITY_PRODUCT_TYPE eType, BSTR pGuid) SetDefaultProduct;
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
