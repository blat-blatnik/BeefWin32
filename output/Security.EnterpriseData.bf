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
			VERSION1 = 1,
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
			
			public HRESULT RequestAccessForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, in Guid riid, void** asyncOperation) mut => VT.RequestAccessForWindowAsync(ref this, appWindow, sourceIdentity, targetIdentity, riid, asyncOperation);
			public HRESULT GetForWindow(HWND appWindow, in Guid riid, void** result) mut => VT.GetForWindow(ref this, appWindow, riid, result);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, in Guid riid, void** asyncOperation) RequestAccessForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop self, HWND appWindow, in Guid riid, void** result) GetForWindow;
			}
		}
		[CRepr]
		public struct IProtectionPolicyManagerInterop2 : IInspectable
		{
			public const new Guid IID = .(0x157cfbe4, 0xa78d, 0x4156, 0xb3, 0x84, 0x61, 0xfd, 0xac, 0x41, 0xe6, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestAccessForAppWithWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, in Guid riid, void** asyncOperation) mut => VT.RequestAccessForAppWithWindowAsync(ref this, appWindow, sourceIdentity, appPackageFamilyName, riid, asyncOperation);
			public HRESULT RequestAccessWithAuditingInfoForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) mut => VT.RequestAccessWithAuditingInfoForWindowAsync(ref this, appWindow, sourceIdentity, targetIdentity, ref auditInfoUnk, riid, asyncOperation);
			public HRESULT RequestAccessWithMessageForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, HSTRING messageFromApp, in Guid riid, void** asyncOperation) mut => VT.RequestAccessWithMessageForWindowAsync(ref this, appWindow, sourceIdentity, targetIdentity, ref auditInfoUnk, messageFromApp, riid, asyncOperation);
			public HRESULT RequestAccessForAppWithAuditingInfoForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) mut => VT.RequestAccessForAppWithAuditingInfoForWindowAsync(ref this, appWindow, sourceIdentity, appPackageFamilyName, ref auditInfoUnk, riid, asyncOperation);
			public HRESULT RequestAccessForAppWithMessageForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, in Guid riid, void** asyncOperation) mut => VT.RequestAccessForAppWithMessageForWindowAsync(ref this, appWindow, sourceIdentity, appPackageFamilyName, ref auditInfoUnk, messageFromApp, riid, asyncOperation);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop2 self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, in Guid riid, void** asyncOperation) RequestAccessForAppWithWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop2 self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) RequestAccessWithAuditingInfoForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop2 self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, HSTRING messageFromApp, in Guid riid, void** asyncOperation) RequestAccessWithMessageForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop2 self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) RequestAccessForAppWithAuditingInfoForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop2 self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, in Guid riid, void** asyncOperation) RequestAccessForAppWithMessageForWindowAsync;
			}
		}
		[CRepr]
		public struct IProtectionPolicyManagerInterop3 : IInspectable
		{
			public const new Guid IID = .(0xc1c03933, 0xb398, 0x4d93, 0xb0, 0xfd, 0x29, 0x72, 0xad, 0xf8, 0x02, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestAccessWithBehaviorForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) mut => VT.RequestAccessWithBehaviorForWindowAsync(ref this, appWindow, sourceIdentity, targetIdentity, ref auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			public HRESULT RequestAccessForAppWithBehaviorForWindowAsync(HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) mut => VT.RequestAccessForAppWithBehaviorForWindowAsync(ref this, appWindow, sourceIdentity, appPackageFamilyName, ref auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			public HRESULT RequestAccessToFilesForAppForWindowAsync(HWND appWindow, ref IUnknown sourceItemListUnk, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) mut => VT.RequestAccessToFilesForAppForWindowAsync(ref this, appWindow, ref sourceItemListUnk, appPackageFamilyName, ref auditInfoUnk, riid, asyncOperation);
			public HRESULT RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(HWND appWindow, ref IUnknown sourceItemListUnk, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) mut => VT.RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(ref this, appWindow, ref sourceItemListUnk, appPackageFamilyName, ref auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);
			public HRESULT RequestAccessToFilesForProcessForWindowAsync(HWND appWindow, ref IUnknown sourceItemListUnk, uint32 processId, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) mut => VT.RequestAccessToFilesForProcessForWindowAsync(ref this, appWindow, ref sourceItemListUnk, processId, ref auditInfoUnk, riid, asyncOperation);
			public HRESULT RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(HWND appWindow, ref IUnknown sourceItemListUnk, uint32 processId, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) mut => VT.RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(ref this, appWindow, ref sourceItemListUnk, processId, ref auditInfoUnk, messageFromApp, behavior, riid, asyncOperation);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, HSTRING sourceIdentity, HSTRING targetIdentity, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) RequestAccessWithBehaviorForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, HSTRING sourceIdentity, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) RequestAccessForAppWithBehaviorForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, ref IUnknown sourceItemListUnk, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) RequestAccessToFilesForAppForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, ref IUnknown sourceItemListUnk, HSTRING appPackageFamilyName, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, ref IUnknown sourceItemListUnk, uint32 processId, ref IUnknown auditInfoUnk, in Guid riid, void** asyncOperation) RequestAccessToFilesForProcessForWindowAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectionPolicyManagerInterop3 self, HWND appWindow, ref IUnknown sourceItemListUnk, uint32 processId, ref IUnknown auditInfoUnk, HSTRING messageFromApp, uint32 behavior, in Guid riid, void** asyncOperation) RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync;
			}
		}
		
		// --- Functions ---
		
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpCreateThreadNetworkContext(PWSTR enterpriseId, out HTHREAD_NETWORK_CONTEXT threadNetworkContext);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpCloseThreadNetworkContext(out HTHREAD_NETWORK_CONTEXT threadNetworkContext);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpSetTokenEnterpriseId(HANDLE tokenHandle, PWSTR enterpriseId);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpGetEnterpriseIds(HANDLE tokenHandle, uint32* numberOfBytes, PWSTR* enterpriseIds, out uint32 enterpriseIdCount);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpEnablePermissiveModeFileEncryption(PWSTR enterpriseId);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpDisablePermissiveModeFileEncryption();
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpGetEnterprisePolicy(HANDLE tokenHandle, out ENTERPRISE_DATA_POLICIES policyFlags);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SrpIsTokenService(HANDLE TokenHandle, out uint8 IsTokenService);
		[Import("srpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SrpDoesPolicyAllowAppExecution(in PACKAGE_ID packageId, out BOOL isAllowed);
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
