using System;

// namespace Security.Tpm
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 TPMVSC_DEFAULT_ADMIN_ALGORITHM_ID = 130;
		
		// --- Enums ---
		
		public enum TPMVSC_ATTESTATION_TYPE : int32
		{
			NONE = 0,
			AIK_ONLY = 1,
			AIK_AND_CERTIFICATE = 2,
		}
		public enum TPMVSCMGR_STATUS : int32
		{
			VTPMSMARTCARD_INITIALIZING = 0,
			VTPMSMARTCARD_CREATING = 1,
			VTPMSMARTCARD_DESTROYING = 2,
			VGIDSSIMULATOR_INITIALIZING = 3,
			VGIDSSIMULATOR_CREATING = 4,
			VGIDSSIMULATOR_DESTROYING = 5,
			VREADER_INITIALIZING = 6,
			VREADER_CREATING = 7,
			VREADER_DESTROYING = 8,
			GENERATE_WAITING = 9,
			GENERATE_AUTHENTICATING = 10,
			GENERATE_RUNNING = 11,
			CARD_CREATED = 12,
			CARD_DESTROYED = 13,
		}
		public enum TPMVSCMGR_ERROR : int32
		{
			IMPERSONATION = 0,
			PIN_COMPLEXITY = 1,
			READER_COUNT_LIMIT = 2,
			TERMINAL_SERVICES_SESSION = 3,
			VTPMSMARTCARD_INITIALIZE = 4,
			VTPMSMARTCARD_CREATE = 5,
			VTPMSMARTCARD_DESTROY = 6,
			VGIDSSIMULATOR_INITIALIZE = 7,
			VGIDSSIMULATOR_CREATE = 8,
			VGIDSSIMULATOR_DESTROY = 9,
			VGIDSSIMULATOR_WRITE_PROPERTY = 10,
			VGIDSSIMULATOR_READ_PROPERTY = 11,
			VREADER_INITIALIZE = 12,
			VREADER_CREATE = 13,
			VREADER_DESTROY = 14,
			GENERATE_LOCATE_READER = 15,
			GENERATE_FILESYSTEM = 16,
			CARD_CREATE = 17,
			CARD_DESTROY = 18,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_TpmVirtualSmartCardManager = .(0x16a18e86, 0x7f6e, 0x4c20, 0xad, 0x89, 0x4f, 0xfc, 0x0d, 0xb7, 0xa9, 0x6a);
		public const Guid CLSID_RemoteTpmVirtualSmartCardManager = .(0x152ea2a8, 0x70dc, 0x4c59, 0x8b, 0x2a, 0x32, 0xaa, 0x3c, 0xa0, 0xdc, 0xac);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ITpmVirtualSmartCardManagerStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x1a1bb35f, 0xabb8, 0x451c, 0xa1, 0xae, 0x33, 0xd9, 0x8f, 0x1b, 0xef, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportProgress(TPMVSCMGR_STATUS Status) mut => VT.ReportProgress(ref this, Status);
			public HRESULT ReportError(TPMVSCMGR_ERROR Error) mut => VT.ReportError(ref this, Error);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManagerStatusCallback self, TPMVSCMGR_STATUS Status) ReportProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManagerStatusCallback self, TPMVSCMGR_ERROR Error) ReportError;
			}
		}
		[CRepr]
		public struct ITpmVirtualSmartCardManager : IUnknown
		{
			public const new Guid IID = .(0x112b1dff, 0xd9dc, 0x41f7, 0x86, 0x9f, 0xd6, 0x7f, 0xee, 0x7c, 0xb5, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVirtualSmartCard(PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId, out BOOL pfNeedReboot) mut => VT.CreateVirtualSmartCard(ref this, pszFriendlyName, bAdminAlgId, pbAdminKey, cbAdminKey, pbAdminKcv, cbAdminKcv, pbPuk, cbPuk, pbPin, cbPin, fGenerate, ref pStatusCallback, out ppszInstanceId, out pfNeedReboot);
			public HRESULT DestroyVirtualSmartCard(PWSTR pszInstanceId, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out BOOL pfNeedReboot) mut => VT.DestroyVirtualSmartCard(ref this, pszInstanceId, ref pStatusCallback, out pfNeedReboot);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManager self, PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId, out BOOL pfNeedReboot) CreateVirtualSmartCard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManager self, PWSTR pszInstanceId, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out BOOL pfNeedReboot) DestroyVirtualSmartCard;
			}
		}
		[CRepr]
		public struct ITpmVirtualSmartCardManager2 : ITpmVirtualSmartCardManager
		{
			public const new Guid IID = .(0xfdf8a2b9, 0x02de, 0x47f4, 0xbc, 0x26, 0xaa, 0x85, 0xab, 0x5e, 0x52, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVirtualSmartCardWithPinPolicy(PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, uint8* pbPinPolicy, uint32 cbPinPolicy, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId, out BOOL pfNeedReboot) mut => VT.CreateVirtualSmartCardWithPinPolicy(ref this, pszFriendlyName, bAdminAlgId, pbAdminKey, cbAdminKey, pbAdminKcv, cbAdminKcv, pbPuk, cbPuk, pbPin, cbPin, pbPinPolicy, cbPinPolicy, fGenerate, ref pStatusCallback, out ppszInstanceId, out pfNeedReboot);

			[CRepr]
			public struct VTable : ITpmVirtualSmartCardManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManager2 self, PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, uint8* pbPinPolicy, uint32 cbPinPolicy, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId, out BOOL pfNeedReboot) CreateVirtualSmartCardWithPinPolicy;
			}
		}
		[CRepr]
		public struct ITpmVirtualSmartCardManager3 : ITpmVirtualSmartCardManager2
		{
			public const new Guid IID = .(0x3c745a97, 0xf375, 0x4150, 0xbe, 0x17, 0x59, 0x50, 0xf6, 0x94, 0xc6, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateVirtualSmartCardWithAttestation(PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, uint8* pbPinPolicy, uint32 cbPinPolicy, TPMVSC_ATTESTATION_TYPE attestationType, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId) mut => VT.CreateVirtualSmartCardWithAttestation(ref this, pszFriendlyName, bAdminAlgId, pbAdminKey, cbAdminKey, pbAdminKcv, cbAdminKcv, pbPuk, cbPuk, pbPin, cbPin, pbPinPolicy, cbPinPolicy, attestationType, fGenerate, ref pStatusCallback, out ppszInstanceId);

			[CRepr]
			public struct VTable : ITpmVirtualSmartCardManager2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITpmVirtualSmartCardManager3 self, PWSTR pszFriendlyName, uint8 bAdminAlgId, uint8* pbAdminKey, uint32 cbAdminKey, uint8* pbAdminKcv, uint32 cbAdminKcv, uint8* pbPuk, uint32 cbPuk, uint8* pbPin, uint32 cbPin, uint8* pbPinPolicy, uint32 cbPinPolicy, TPMVSC_ATTESTATION_TYPE attestationType, BOOL fGenerate, ref ITpmVirtualSmartCardManagerStatusCallback pStatusCallback, out PWSTR ppszInstanceId) CreateVirtualSmartCardWithAttestation;
			}
		}
		
	}
}
