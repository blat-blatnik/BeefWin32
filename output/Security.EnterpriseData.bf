using System;

// namespace Security.EnterpriseData
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum ENTERPRISE_DATA_POLICIES : uint32
		{
			ENTERPRISE_POLICY_NONE = 0,
			ENTERPRISE_POLICY_ALLOWED = 1,
			ENTERPRISE_POLICY_ENLIGHTENED = 2,
			ENTERPRISE_POLICY_EXEMPT = 4,
		}
		[AllowDuplicates]
		public enum SRPHOSTING_TYPE : int32
		{
			SRPHOSTING_TYPE_NONE = 0,
			SRPHOSTING_TYPE_WINHTTP = 1,
			SRPHOSTING_TYPE_WININET = 2,
		}
		[AllowDuplicates]
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
		
		public struct IProtectionPolicyManagerInterop {}
		public struct IProtectionPolicyManagerInterop2 {}
		public struct IProtectionPolicyManagerInterop3 {}
		
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
