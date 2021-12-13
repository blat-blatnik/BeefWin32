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
		
		public struct IEmptyVolumeCacheCallBack {}
		public struct IEmptyVolumeCache {}
		public struct IEmptyVolumeCache2 {}
		public struct IReconcileInitiator {}
		public struct IReconcilableObject {}
		public struct IBriefcaseInitiator {}
		public struct IActiveDesktopP {}
		public struct IADesktopP2 {}
		
	}
}
