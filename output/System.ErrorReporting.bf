using System;

// namespace System.ErrorReporting
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WER_FAULT_REPORTING_NO_UI = 32;
		public const uint32 WER_FAULT_REPORTING_FLAG_NO_HEAP_ON_QUEUE = 64;
		public const uint32 WER_FAULT_REPORTING_DISABLE_SNAPSHOT_CRASH = 128;
		public const uint32 WER_FAULT_REPORTING_DISABLE_SNAPSHOT_HANG = 256;
		public const uint32 WER_FAULT_REPORTING_CRITICAL = 512;
		public const uint32 WER_FAULT_REPORTING_DURABLE = 1024;
		public const uint32 WER_MAX_TOTAL_PARAM_LENGTH = 1720;
		public const uint32 WER_MAX_PREFERRED_MODULES = 128;
		public const uint32 WER_MAX_PREFERRED_MODULES_BUFFER = 256;
		public const uint32 WER_P0 = 0;
		public const uint32 WER_P1 = 1;
		public const uint32 WER_P2 = 2;
		public const uint32 WER_P3 = 3;
		public const uint32 WER_P4 = 4;
		public const uint32 WER_P5 = 5;
		public const uint32 WER_P6 = 6;
		public const uint32 WER_P7 = 7;
		public const uint32 WER_P8 = 8;
		public const uint32 WER_P9 = 9;
		public const uint32 WER_FILE_COMPRESSED = 4;
		public const uint32 WER_SUBMIT_BYPASS_POWER_THROTTLING = 16384;
		public const uint32 WER_SUBMIT_BYPASS_NETWORK_COST_THROTTLING = 32768;
		public const uint32 WER_DUMP_MASK_START = 1;
		public const uint32 WER_DUMP_NOHEAP_ONQUEUE = 1;
		public const uint32 WER_DUMP_AUXILIARY = 2;
		public const uint32 WER_MAX_REGISTERED_ENTRIES = 512;
		public const uint32 WER_MAX_REGISTERED_METADATA = 8;
		public const uint32 WER_MAX_REGISTERED_DUMPCOLLECTION = 4;
		public const uint32 WER_METADATA_KEY_MAX_LENGTH = 64;
		public const uint32 WER_METADATA_VALUE_MAX_LENGTH = 128;
		public const uint32 WER_MAX_SIGNATURE_NAME_LENGTH = 128;
		public const uint32 WER_MAX_EVENT_NAME_LENGTH = 64;
		public const uint32 WER_MAX_PARAM_LENGTH = 260;
		public const uint32 WER_MAX_PARAM_COUNT = 10;
		public const uint32 WER_MAX_FRIENDLY_EVENT_NAME_LENGTH = 128;
		public const uint32 WER_MAX_APPLICATION_NAME_LENGTH = 128;
		public const uint32 WER_MAX_DESCRIPTION_LENGTH = 512;
		public const uint32 WER_MAX_BUCKET_ID_STRING_LENGTH = 260;
		public const uint32 WER_MAX_LOCAL_DUMP_SUBPATH_LENGTH = 64;
		public const uint32 WER_MAX_REGISTERED_RUNTIME_EXCEPTION_MODULES = 16;
		
		// --- Typedefs ---
		
		public typealias HREPORT = int;
		public typealias HREPORTSTORE = int;
		
		// --- Enums ---
		
		public enum WER_FILE : uint32
		{
			ANONYMOUS_DATA = 2,
			DELETE_WHEN_DONE = 1,
		}
		public enum WER_SUBMIT_FLAGS : uint32
		{
			ADD_REGISTERED_DATA = 16,
			HONOR_RECOVERY = 1,
			HONOR_RESTART = 2,
			NO_ARCHIVE = 256,
			NO_CLOSE_UI = 64,
			NO_QUEUE = 128,
			OUTOFPROCESS = 32,
			OUTOFPROCESS_ASYNC = 1024,
			QUEUE = 4,
			SHOW_DEBUG = 8,
			START_MINIMIZED = 512,
			BYPASS_DATA_THROTTLING = 2048,
			ARCHIVE_PARAMETERS_ONLY = 4096,
			REPORT_MACHINE_ID = 8192,
		}
		public enum WER_FAULT_REPORTING : uint32
		{
			FLAG_DISABLE_THREAD_SUSPENSION = 4,
			FLAG_NOHEAP = 1,
			FLAG_QUEUE = 2,
			FLAG_QUEUE_UPLOAD = 8,
			ALWAYS_SHOW_UI = 16,
		}
		public enum WER_REPORT_UI : int32
		{
			UIAdditionalDataDlgHeader = 1,
			UIIconFilePath = 2,
			UIConsentDlgHeader = 3,
			UIConsentDlgBody = 4,
			UIOnlineSolutionCheckText = 5,
			UIOfflineSolutionCheckText = 6,
			UICloseText = 7,
			UICloseDlgHeader = 8,
			UICloseDlgBody = 9,
			UICloseDlgButtonText = 10,
			UIMax = 11,
		}
		public enum WER_REGISTER_FILE_TYPE : int32
		{
			UserDocument = 1,
			Other = 2,
			Max = 3,
		}
		public enum WER_FILE_TYPE : int32
		{
			Microdump = 1,
			Minidump = 2,
			Heapdump = 3,
			UserDocument = 4,
			Other = 5,
			Triagedump = 6,
			CustomDump = 7,
			AuxiliaryDump = 8,
			EtlTrace = 9,
			Max = 10,
		}
		public enum WER_SUBMIT_RESULT : int32
		{
			ReportQueued = 1,
			ReportUploaded = 2,
			ReportDebug = 3,
			ReportFailed = 4,
			Disabled = 5,
			ReportCancelled = 6,
			DisabledQueue = 7,
			ReportAsync = 8,
			CustomAction = 9,
			Throttled = 10,
			ReportUploadedCab = 11,
			StorageLocationNotFound = 12,
			SubmitResultMax = 13,
		}
		public enum WER_REPORT_TYPE : int32
		{
			NonCritical = 0,
			Critical = 1,
			ApplicationCrash = 2,
			ApplicationHang = 3,
			Kernel = 4,
			Invalid = 5,
		}
		public enum WER_CONSENT : int32
		{
			NotAsked = 1,
			Approved = 2,
			Denied = 3,
			AlwaysPrompt = 4,
			Max = 5,
		}
		public enum WER_DUMP_TYPE : int32
		{
			None = 0,
			MicroDump = 1,
			MiniDump = 2,
			HeapDump = 3,
			TriageDump = 4,
			Max = 5,
		}
		public enum REPORT_STORE_TYPES : int32
		{
			USER_ARCHIVE = 0,
			USER_QUEUE = 1,
			MACHINE_ARCHIVE = 2,
			MACHINE_QUEUE = 3,
			INVALID = 4,
		}
		public enum EFaultRepRetVal : int32
		{
			Ok = 0,
			OkManifest = 1,
			OkQueued = 2,
			Err = 3,
			ErrNoDW = 4,
			ErrTimeout = 5,
			LaunchDebugger = 6,
			OkHeadless = 7,
			ErrAnotherInstance = 8,
			ErrNoMemory = 9,
			ErrDoubleFault = 10,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PFN_WER_RUNTIME_EXCEPTION_EVENT(void* pContext, in WER_RUNTIME_EXCEPTION_INFORMATION pExceptionInformation, out BOOL pbOwnershipClaimed, char16* pwszEventName, out uint32 pchSize, out uint32 pdwSignatureCount);
		public function HRESULT PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE(void* pContext, in WER_RUNTIME_EXCEPTION_INFORMATION pExceptionInformation, uint32 dwIndex, char16* pwszName, out uint32 pchName, char16* pwszValue, out uint32 pchValue);
		public function HRESULT PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH(void* pContext, in WER_RUNTIME_EXCEPTION_INFORMATION pExceptionInformation, out BOOL pbIsCustomDebugger, char16* pwszDebuggerLaunch, out uint32 pchDebuggerLaunch, out BOOL pbIsDebuggerAutolaunch);
		public function EFaultRepRetVal pfn_REPORTFAULT(ref EXCEPTION_POINTERS param0, uint32 param1);
		public function EFaultRepRetVal pfn_ADDEREXCLUDEDAPPLICATIONA(PSTR param0);
		public function EFaultRepRetVal pfn_ADDEREXCLUDEDAPPLICATIONW(PWSTR param0);
		
		// --- Structs ---
		
		[CRepr]
		public struct WER_REPORT_INFORMATION
		{
			public uint32 dwSize;
			public HANDLE hProcess;
			public char16[64] wzConsentKey;
			public char16[128] wzFriendlyEventName;
			public char16[128] wzApplicationName;
			public char16[260] wzApplicationPath;
			public char16[512] wzDescription;
			public HWND hwndParent;
		}
		[CRepr]
		public struct WER_REPORT_INFORMATION_V3
		{
			public uint32 dwSize;
			public HANDLE hProcess;
			public char16[64] wzConsentKey;
			public char16[128] wzFriendlyEventName;
			public char16[128] wzApplicationName;
			public char16[260] wzApplicationPath;
			public char16[512] wzDescription;
			public HWND hwndParent;
			public char16[64] wzNamespacePartner;
			public char16[64] wzNamespaceGroup;
		}
		[CRepr]
		public struct WER_DUMP_CUSTOM_OPTIONS
		{
			public uint32 dwSize;
			public uint32 dwMask;
			public uint32 dwDumpFlags;
			public BOOL bOnlyThisThread;
			public uint32 dwExceptionThreadFlags;
			public uint32 dwOtherThreadFlags;
			public uint32 dwExceptionThreadExFlags;
			public uint32 dwOtherThreadExFlags;
			public uint32 dwPreferredModuleFlags;
			public uint32 dwOtherModuleFlags;
			public char16[256] wzPreferredModuleList;
		}
		[CRepr]
		public struct WER_DUMP_CUSTOM_OPTIONS_V2
		{
			public uint32 dwSize;
			public uint32 dwMask;
			public uint32 dwDumpFlags;
			public BOOL bOnlyThisThread;
			public uint32 dwExceptionThreadFlags;
			public uint32 dwOtherThreadFlags;
			public uint32 dwExceptionThreadExFlags;
			public uint32 dwOtherThreadExFlags;
			public uint32 dwPreferredModuleFlags;
			public uint32 dwOtherModuleFlags;
			public char16[256] wzPreferredModuleList;
			public uint32 dwPreferredModuleResetFlags;
			public uint32 dwOtherModuleResetFlags;
		}
		[CRepr]
		public struct WER_REPORT_INFORMATION_V4
		{
			public uint32 dwSize;
			public HANDLE hProcess;
			public char16[64] wzConsentKey;
			public char16[128] wzFriendlyEventName;
			public char16[128] wzApplicationName;
			public char16[260] wzApplicationPath;
			public char16[512] wzDescription;
			public HWND hwndParent;
			public char16[64] wzNamespacePartner;
			public char16[64] wzNamespaceGroup;
			public uint8[16] rgbApplicationIdentity;
			public HANDLE hSnapshot;
			public HANDLE hDeleteFilesImpersonationToken;
		}
		[CRepr]
		public struct WER_REPORT_INFORMATION_V5
		{
			public uint32 dwSize;
			public HANDLE hProcess;
			public char16[64] wzConsentKey;
			public char16[128] wzFriendlyEventName;
			public char16[128] wzApplicationName;
			public char16[260] wzApplicationPath;
			public char16[512] wzDescription;
			public HWND hwndParent;
			public char16[64] wzNamespacePartner;
			public char16[64] wzNamespaceGroup;
			public uint8[16] rgbApplicationIdentity;
			public HANDLE hSnapshot;
			public HANDLE hDeleteFilesImpersonationToken;
			public WER_SUBMIT_RESULT submitResultMax;
		}
		[CRepr]
		public struct WER_DUMP_CUSTOM_OPTIONS_V3
		{
			public uint32 dwSize;
			public uint32 dwMask;
			public uint32 dwDumpFlags;
			public BOOL bOnlyThisThread;
			public uint32 dwExceptionThreadFlags;
			public uint32 dwOtherThreadFlags;
			public uint32 dwExceptionThreadExFlags;
			public uint32 dwOtherThreadExFlags;
			public uint32 dwPreferredModuleFlags;
			public uint32 dwOtherModuleFlags;
			public char16[256] wzPreferredModuleList;
			public uint32 dwPreferredModuleResetFlags;
			public uint32 dwOtherModuleResetFlags;
			public void* pvDumpKey;
			public HANDLE hSnapshot;
			public uint32 dwThreadID;
		}
		[CRepr]
		public struct WER_EXCEPTION_INFORMATION
		{
			public EXCEPTION_POINTERS* pExceptionPointers;
			public BOOL bClientPointers;
		}
		[CRepr]
		public struct WER_RUNTIME_EXCEPTION_INFORMATION
		{
			public uint32 dwSize;
			public HANDLE hProcess;
			public HANDLE hThread;
			public EXCEPTION_RECORD exceptionRecord;
			public CONTEXT context;
			public PWSTR pwszReportId;
			public BOOL bIsFatal;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct WER_REPORT_PARAMETER
		{
			public char16[129] Name;
			public char16[260] Value;
		}
		[CRepr]
		public struct WER_REPORT_SIGNATURE
		{
			public char16[65] EventName;
			public WER_REPORT_PARAMETER[10] Parameters;
		}
		[CRepr]
		public struct WER_REPORT_METADATA_V2
		{
			public WER_REPORT_SIGNATURE Signature;
			public Guid BucketId;
			public Guid ReportId;
			public FILETIME CreationTime;
			public uint64 SizeInBytes;
			public char16[260] CabId;
			public uint32 ReportStatus;
			public Guid ReportIntegratorId;
			public uint32 NumberOfFiles;
			public uint32 SizeOfFileNames;
			public PWSTR FileNames;
		}
		[CRepr]
		public struct WER_REPORT_METADATA_V3
		{
			public WER_REPORT_SIGNATURE Signature;
			public Guid BucketId;
			public Guid ReportId;
			public FILETIME CreationTime;
			public uint64 SizeInBytes;
			public char16[260] CabId;
			public uint32 ReportStatus;
			public Guid ReportIntegratorId;
			public uint32 NumberOfFiles;
			public uint32 SizeOfFileNames;
			public PWSTR FileNames;
			public char16[128] FriendlyEventName;
			public char16[128] ApplicationName;
			public char16[260] ApplicationPath;
			public char16[512] Description;
			public char16[260] BucketIdString;
			public uint64 LegacyBucketId;
		}
		[CRepr]
		public struct WER_REPORT_METADATA_V1
		{
			public WER_REPORT_SIGNATURE Signature;
			public Guid BucketId;
			public Guid ReportId;
			public FILETIME CreationTime;
			public uint64 SizeInBytes;
		}
		
		// --- Functions ---
		
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportCreate(PWSTR pwzEventType, WER_REPORT_TYPE repType, WER_REPORT_INFORMATION* pReportInformation, out HREPORT phReportHandle);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportSetParameter(HREPORT hReportHandle, uint32 dwparamID, PWSTR pwzName, PWSTR pwzValue);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportAddFile(HREPORT hReportHandle, PWSTR pwzPath, WER_FILE_TYPE repFileType, WER_FILE dwFileFlags);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportSetUIOption(HREPORT hReportHandle, WER_REPORT_UI repUITypeID, PWSTR pwzValue);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportSubmit(HREPORT hReportHandle, WER_CONSENT consent, WER_SUBMIT_FLAGS dwFlags, WER_SUBMIT_RESULT* pSubmitResult);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportAddDump(HREPORT hReportHandle, HANDLE hProcess, HANDLE hThread, WER_DUMP_TYPE dumpType, WER_EXCEPTION_INFORMATION* pExceptionParam, WER_DUMP_CUSTOM_OPTIONS* pDumpCustomOptions, uint32 dwFlags);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportCloseHandle(HREPORT hReportHandle);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterFile(PWSTR pwzFile, WER_REGISTER_FILE_TYPE regFileType, WER_FILE dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterFile(PWSTR pwzFilePath);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterMemoryBlock(void* pvAddress, uint32 dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterMemoryBlock(void* pvAddress);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterExcludedMemoryBlock(void* address, uint32 size);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterExcludedMemoryBlock(void* address);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterCustomMetadata(PWSTR key, PWSTR value);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterCustomMetadata(PWSTR key);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterAdditionalProcess(uint32 processId, uint32 captureExtraInfoForThreadId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterAdditionalProcess(uint32 processId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterAppLocalDump(PWSTR localAppDataRelativePath);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterAppLocalDump();
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerSetFlags(WER_FAULT_REPORTING dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerGetFlags(HANDLE hProcess, out WER_FAULT_REPORTING pdwFlags);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerAddExcludedApplication(PWSTR pwzExeName, BOOL bAllUsers);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRemoveExcludedApplication(PWSTR pwzExeName, BOOL bAllUsers);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerRegisterRuntimeExceptionModule(PWSTR pwszOutOfProcessCallbackDll, void* pContext);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerUnregisterRuntimeExceptionModule(PWSTR pwszOutOfProcessCallbackDll, void* pContext);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreOpen(REPORT_STORE_TYPES repStoreType, out HREPORTSTORE phReportStore);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WerStoreClose(HREPORTSTORE hReportStore);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreGetFirstReportKey(HREPORTSTORE hReportStore, PWSTR* ppszReportKey);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreGetNextReportKey(HREPORTSTORE hReportStore, PWSTR* ppszReportKey);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreQueryReportMetadataV2(HREPORTSTORE hReportStore, PWSTR pszReportKey, out WER_REPORT_METADATA_V2 pReportMetadata);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreQueryReportMetadataV3(HREPORTSTORE hReportStore, PWSTR pszReportKey, out WER_REPORT_METADATA_V3 pReportMetadata);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WerFreeString(PWSTR pwszStr);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStorePurge();
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreGetReportCount(HREPORTSTORE hReportStore, out uint32 pdwReportCount);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreGetSizeOnDisk(HREPORTSTORE hReportStore, out uint64 pqwSizeInBytes);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreQueryReportMetadataV1(HREPORTSTORE hReportStore, PWSTR pszReportKey, out WER_REPORT_METADATA_V1 pReportMetadata);
		[Import("wer.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerStoreUploadReport(HREPORTSTORE hReportStore, PWSTR pszReportKey, uint32 dwFlags, WER_SUBMIT_RESULT* pSubmitResult);
		[Import("faultrep.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern EFaultRepRetVal ReportFault(ref EXCEPTION_POINTERS pep, uint32 dwOpt);
		[Import("faultrep.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddERExcludedApplicationA(PSTR szApplication);
		[Import("faultrep.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddERExcludedApplicationW(PWSTR wszApplication);
		[Import("faultrep.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WerReportHang(HWND hwndHungApp, PWSTR pwzHungApplicationName);
	}
}
