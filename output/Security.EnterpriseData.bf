using System;

// namespace Security.EnterpriseData
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum ENTERPRISE_DATA_POLICIES : uint32
		{
			NONE = 0,
			ALLOWED = 1,
			ENLIGHTENED = 2,
			EXEMPT = 4,
		}
		public enum SRPHOSTING_TYPE : int32
		{
			NONE = 0,
			WINHTTP = 1,
			WININET = 2,
		}
		public enum SRPHOSTING_VERSION : int32
		{
			SRPHOSTING_VERSION1 = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct HTHREAD_NETWORK_CONTEXT
		{
			public uint32 ThreadId;
			public HANDLE ThreadContext;
		}
		[CRepr]
		public struct FILE_UNPROTECT_OPTIONS
		{
			public Boolean audit;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IProtectionPolicyManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x4652651d, 0xc1fe, 0x4ba1, 0x9f, 0x0a, 0xc0, 0xf5, 0x65, 0x96, 0xf7, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestAccessForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessForWindowAsync(&this, appWindow, sourceIdentity, targetIdentity, riid, asyncOperation);
			}
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** result) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, result);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IProtectionPolicyManagerInterop *self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, Guid* riid, void** asyncOperation) RequestAccessForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop *self, HWND appWindow, Guid* riid, void** result) GetForWindow;
			}
		}
		[CRepr]
		public struct IProtectionPolicyManagerInterop2 : IInspectable
		{
			public const new Guid IID = .(0x157cfbe4, 0xa78d, 0x4156, 0xb3, 0x84, 0x61, 0xfd, 0xac, 0x41, 0xe6, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestAccessForAppWithWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessForAppWithWindowAsync(&this, appWindow, sourceIdentity, appPackageFamilyName, riid, asyncOperation);
			}
			public HRESULT RequestAccessWithAuditingInfoForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessWithAuditingInfoForWindowAsync(&this, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, riid, asyncOperation);
			}
			public HRESULT RequestAccessWithMessageForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, HSTRING messageFromApp, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessWithMessageForWindowAsync(&this, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, messageFromApp, riid, asyncOperation);
			}
			public HRESULT RequestAccessForAppWithAuditingInfoForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessForAppWithAuditingInfoForWindowAsync(&this, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, riid, asyncOperation);
			}
			public HRESULT RequestAccessForAppWithMessageForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessForAppWithMessageForWindowAsync(&this, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, messageFromApp, riid, asyncOperation);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IProtectionPolicyManagerInterop2 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, Guid* riid, void** asyncOperation) RequestAccessForAppWithWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop2 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) RequestAccessWithAuditingInfoForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop2 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, HSTRING messageFromApp, Guid* riid, void** asyncOperation) RequestAccessWithMessageForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop2 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) RequestAccessForAppWithAuditingInfoForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop2 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, Guid* riid, void** asyncOperation) RequestAccessForAppWithMessageForWindowAsync;
			}
		}
		[CRepr]
		public struct IProtectionPolicyManagerInterop3 : IInspectable
		{
			public const new Guid IID = .(0xc1c03933, 0xb398, 0x4d93, 0xb0, 0xfd, 0x29, 0x72, 0xad, 0xf8, 0x02, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestAccessWithBehaviorForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessWithBehaviorForWindowAsync(&this, appWindow, sourceIdentity, targetIdentity, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			}
			public HRESULT RequestAccessForAppWithBehaviorForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessForAppWithBehaviorForWindowAsync(&this, appWindow, sourceIdentity, appPackageFamilyName, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			}
			public HRESULT RequestAccessToFilesForAppForWindowAsync(HWND appWindow, IUnknown* sourceItemListUnk, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessToFilesForAppForWindowAsync(&this, appWindow, sourceItemListUnk, appPackageFamilyName, auditInfoUnk, riid, asyncOperation);
			}
			public HRESULT RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(HWND appWindow, IUnknown* sourceItemListUnk, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(&this, appWindow, sourceItemListUnk, appPackageFamilyName, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			}
			public HRESULT RequestAccessToFilesForProcessForWindowAsync(HWND appWindow, IUnknown* sourceItemListUnk, uint32 processId, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessToFilesForProcessForWindowAsync(&this, appWindow, sourceItemListUnk, processId, auditInfoUnk, riid, asyncOperation);
			}
			public HRESULT RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(HWND appWindow, IUnknown* sourceItemListUnk, uint32 processId, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(&this, appWindow, sourceItemListUnk, processId, auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) RequestAccessWithBehaviorForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) RequestAccessForAppWithBehaviorForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, IUnknown* sourceItemListUnk, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) RequestAccessToFilesForAppForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, IUnknown* sourceItemListUnk, HSTRING appPackageFamilyName, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, IUnknown* sourceItemListUnk, uint32 processId, IUnknown* auditInfoUnk, Guid* riid, void** asyncOperation) RequestAccessToFilesForProcessForWindowAsync;
				public new function HRESULT(IProtectionPolicyManagerInterop3 *self, HWND appWindow, IUnknown* sourceItemListUnk, uint32 processId, IUnknown* auditInfoUnk, HSTRING messageFromApp, uint32 behavior, Guid* riid, void** asyncOperation) RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync;
			}
		}
		
		// --- Functions ---
		
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpCreateThreadNetworkContext(PWSTR enterpriseId, HTHREAD_NETWORK_CONTEXT* threadNetworkContext);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpCloseThreadNetworkContext(HTHREAD_NETWORK_CONTEXT* threadNetworkContext);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpSetTokenEnterpriseId(HANDLE tokenHandle, PWSTR enterpriseId);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpGetEnterpriseIds(HANDLE tokenHandle, uint32* numberOfBytes, PWSTR* enterpriseIds, uint32* enterpriseIdCount);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpEnablePermissiveModeFileEncryption(PWSTR enterpriseId);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpDisablePermissiveModeFileEncryption();
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpGetEnterprisePolicy(HANDLE tokenHandle, ENTERPRISE_DATA_POLICIES* policyFlags);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SrpIsTokenService(HANDLE TokenHandle, uint8* IsTokenService);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpDoesPolicyAllowAppExecution(PACKAGE_ID* packageId, BOOL* isAllowed);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpHostingInitialize(SRPHOSTING_VERSION Version, SRPHOSTING_TYPE Type, void* pvData, uint32 cbData);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SrpHostingTerminate(SRPHOSTING_TYPE Type);
		[Import("efswrt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProtectFileToEnterpriseIdentity(PWSTR fileOrFolderPath, PWSTR identity);
		[Import("efswrt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnprotectFile(PWSTR fileOrFolderPath, FILE_UNPROTECT_OPTIONS* options);
		
	}
}
