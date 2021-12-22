using System;

// namespace UI.LegacyWindowsEnvironmentFeatures
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EVCF_HASSETTINGS = 1;
		public const uint32 EVCF_ENABLEBYDEFAULT = 2;
		public const uint32 EVCF_REMOVEFROMLIST = 4;
		public const uint32 EVCF_ENABLEBYDEFAULT_AUTO = 8;
		public const uint32 EVCF_DONTSHOWIFZERO = 16;
		public const uint32 EVCF_SETTINGSMODE = 32;
		public const uint32 EVCF_OUTOFDISKSPACE = 64;
		public const uint32 EVCF_USERCONSENTOBTAINED = 128;
		public const uint32 EVCF_SYSTEMAUTORUN = 256;
		public const uint32 EVCCBF_LASTNOTIFICATION = 1;
		public const uint32 STATEBITS_FLAT = 1;
		public const HRESULT REC_S_IDIDTHEUPDATES = 266240;
		public const HRESULT REC_S_NOTCOMPLETE = 266241;
		public const HRESULT REC_S_NOTCOMPLETEBUTPROPAGATE = 266242;
		public const HRESULT REC_E_ABORTED = -2147217408;
		public const HRESULT REC_E_NOCALLBACK = -2147217407;
		public const HRESULT REC_E_NORESIDUES = -2147217406;
		public const HRESULT REC_E_TOODIFFERENT = -2147217405;
		public const HRESULT REC_E_INEEDTODOTHEUPDATES = -2147217404;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum _reconcilef : int32
		{
			RECONCILEF_MAYBOTHERUSER = 1,
			RECONCILEF_FEEDBACKWINDOWVALID = 2,
			RECONCILEF_NORESIDUESOK = 4,
			RECONCILEF_OMITSELFRESIDUE = 8,
			RECONCILEF_RESUMERECONCILIATION = 16,
			RECONCILEF_YOUMAYDOTHEUPDATES = 32,
			RECONCILEF_ONLYYOUWERECHANGED = 64,
			ALL_RECONCILE_FLAGS = 127,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IEmptyVolumeCacheCallBack : IUnknown
		{
			public const new Guid IID = .(0x6e793361, 0x73c6, 0x11d0, 0x84, 0x69, 0x00, 0xaa, 0x00, 0x44, 0x29, 0x01);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEmptyVolumeCacheCallBack *self, uint64 dwlSpaceUsed, uint32 dwFlags, PWSTR pcwszStatus) ScanProgress;
				public function HRESULT(IEmptyVolumeCacheCallBack *self, uint64 dwlSpaceFreed, uint64 dwlSpaceToFree, uint32 dwFlags, PWSTR pcwszStatus) PurgeProgress;
			}
		}
		[CRepr]
		public struct IEmptyVolumeCache : IUnknown
		{
			public const new Guid IID = .(0x8fce5227, 0x04da, 0x11d1, 0xa0, 0x04, 0x00, 0x80, 0x5f, 0x8a, 0xbe, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEmptyVolumeCache *self, HKEY hkRegKey, PWSTR pcwszVolume, PWSTR* ppwszDisplayName, PWSTR* ppwszDescription, uint32* pdwFlags) Initialize;
				public function HRESULT(IEmptyVolumeCache *self, uint64* pdwlSpaceUsed, IEmptyVolumeCacheCallBack* picb) GetSpaceUsed;
				public function HRESULT(IEmptyVolumeCache *self, uint64 dwlSpaceToFree, IEmptyVolumeCacheCallBack* picb) Purge;
				public function HRESULT(IEmptyVolumeCache *self, HWND hwnd) ShowProperties;
				public function HRESULT(IEmptyVolumeCache *self, uint32* pdwFlags) Deactivate;
			}
		}
		[CRepr]
		public struct IEmptyVolumeCache2 : IEmptyVolumeCache
		{
			public const new Guid IID = .(0x02b7e3ba, 0x4db3, 0x11d2, 0xb2, 0xd9, 0x00, 0xc0, 0x4f, 0x8e, 0xec, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IEmptyVolumeCache.VTable
			{
				public function HRESULT(IEmptyVolumeCache2 *self, HKEY hkRegKey, PWSTR pcwszVolume, PWSTR pcwszKeyName, PWSTR* ppwszDisplayName, PWSTR* ppwszDescription, PWSTR* ppwszBtnText, uint32* pdwFlags) InitializeEx;
			}
		}
		[CRepr]
		public struct IReconcileInitiator : IUnknown
		{
			public const new Guid IID = .(0x99180161, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IReconcileInitiator *self, IUnknown* punkForAbort) SetAbortCallback;
				public function HRESULT(IReconcileInitiator *self, uint32 ulProgress, uint32 ulProgressMax) SetProgressFeedback;
			}
		}
		[CRepr]
		public struct IReconcilableObject : IUnknown
		{
			public const new Guid IID = .(0x99180162, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IReconcilableObject *self, IReconcileInitiator* pInitiator, uint32 dwFlags, HWND hwndOwner, HWND hwndProgressFeedback, uint32 ulcInput, IMoniker** rgpmkOtherInput, int32* plOutIndex, IStorage* pstgNewResidues, void* pvReserved) Reconcile;
				public function HRESULT(IReconcilableObject *self, uint32* pulProgressMax) GetProgressFeedbackMaxEstimate;
			}
		}
		[CRepr]
		public struct IBriefcaseInitiator : IUnknown
		{
			public const new Guid IID = .(0x99180164, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBriefcaseInitiator *self, IMoniker* pmk) IsMonikerInBriefcase;
			}
		}
		[CRepr]
		public struct IActiveDesktopP : IUnknown
		{
			public const new Guid IID = .(0x52502ee0, 0xec80, 0x11d0, 0x89, 0xab, 0x00, 0xc0, 0x4f, 0xc2, 0x97, 0x2d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActiveDesktopP *self, uint32 dwFlags) SetSafeMode;
				public function HRESULT(IActiveDesktopP *self) EnsureUpdateHTML;
				public function HRESULT(IActiveDesktopP *self, PWSTR pwszSchemeName, uint32 dwFlags) SetScheme;
				public function HRESULT(IActiveDesktopP *self, char16* pwszSchemeName, uint32* pdwcchBuffer, uint32 dwFlags) GetScheme;
			}
		}
		[CRepr]
		public struct IADesktopP2 : IUnknown
		{
			public const new Guid IID = .(0xb22754e2, 0x4574, 0x11d1, 0x98, 0x88, 0x00, 0x60, 0x97, 0xde, 0xac, 0xf9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IADesktopP2 *self) ReReadWallpaper;
				public function HRESULT(IADesktopP2 *self, uint32* pdwFlags, uint32 dwMask) GetADObjectFlags;
				public function HRESULT(IADesktopP2 *self) UpdateAllDesktopSubscriptions;
				public function HRESULT(IADesktopP2 *self, IOleObject* pOleObj) MakeDynamicChanges;
			}
		}
		
	}
}
