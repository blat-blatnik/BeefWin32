using System;

// namespace System.HostComputeSystem
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HCS_OPERATION = int;
		public typealias HCS_SYSTEM = int;
		public typealias HCS_PROCESS = int;
		
		// --- Enums ---
		
		public enum HCS_OPERATION_TYPE : int32
		{
			None = -1,
			Enumerate = 0,
			Create = 1,
			Start = 2,
			Shutdown = 3,
			Pause = 4,
			Resume = 5,
			Save = 6,
			Terminate = 7,
			Modify = 8,
			GetProperties = 9,
			CreateProcess = 10,
			SignalProcess = 11,
			GetProcessInfo = 12,
			GetProcessProperties = 13,
			ModifyProcess = 14,
			Crash = 15,
		}
		public enum HCS_EVENT_TYPE : int32
		{
			Invalid = 0,
			SystemExited = 1,
			SystemCrashInitiated = 2,
			SystemCrashReport = 3,
			SystemRdpEnhancedModeStateChanged = 4,
			SystemSiloJobCreated = 5,
			SystemGuestConnectionClosed = 6,
			ProcessExited = 65536,
			OperationCallback = 16777216,
			ServiceDisconnect = 33554432,
		}
		public enum HCS_EVENT_OPTIONS : uint32
		{
			None = 0,
			EnableOperationCallbacks = 1,
		}
		public enum HCS_NOTIFICATION_FLAGS : int32
		{
			Success = 0,
			Failure = -2147483648,
		}
		[AllowDuplicates]
		public enum HCS_NOTIFICATIONS : int32
		{
			Invalid = 0,
			SystemExited = 1,
			SystemCreateCompleted = 2,
			SystemStartCompleted = 3,
			SystemPauseCompleted = 4,
			SystemResumeCompleted = 5,
			SystemCrashReport = 6,
			SystemSiloJobCreated = 7,
			SystemSaveCompleted = 8,
			SystemRdpEnhancedModeStateChanged = 9,
			SystemShutdownFailed = 10,
			SystemShutdownCompleted = 10,
			SystemGetPropertiesCompleted = 11,
			SystemModifyCompleted = 12,
			SystemCrashInitiated = 13,
			SystemGuestConnectionClosed = 14,
			SystemOperationCompletion = 15,
			SystemPassThru = 16,
			ProcessExited = 65536,
			ServiceDisconnect = 16777216,
			FlagsReserved = -268435456,
		}
		public enum HCS_CREATE_OPTIONS : int32
		{
			HcsCreateOptions_1 = 65536,
		}
		
		// --- Function Pointers ---
		
		public function void HCS_OPERATION_COMPLETION(HCS_OPERATION operation, void* context);
		public function void HCS_EVENT_CALLBACK(ref HCS_EVENT event, void* context);
		public function void HCS_NOTIFICATION_CALLBACK(uint32 notificationType, void* context, HRESULT notificationStatus, PWSTR notificationData);
		
		// --- Structs ---
		
		[CRepr]
		public struct HCS_EVENT
		{
			public HCS_EVENT_TYPE Type;
			public PWSTR EventData;
			public HCS_OPERATION Operation;
		}
		[CRepr]
		public struct HCS_PROCESS_INFORMATION
		{
			public uint32 ProcessId;
			public uint32 Reserved;
			public HANDLE StdInput;
			public HANDLE StdOutput;
			public HANDLE StdError;
		}
		[CRepr]
		public struct HCS_CREATE_OPTIONS_1
		{
			public HCS_CREATE_OPTIONS Version;
			public HANDLE UserToken;
			public SECURITY_DESCRIPTOR* SecurityDescriptor;
			public HCS_EVENT_OPTIONS CallbackOptions;
			public void* CallbackContext;
			public HCS_EVENT_CALLBACK Callback;
		}
		
		// --- Functions ---
		
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsEnumerateComputeSystems(PWSTR query, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsEnumerateComputeSystemsInNamespace(PWSTR idNamespace, PWSTR query, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_OPERATION HcsCreateOperation(void* context, HCS_OPERATION_COMPLETION callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* HcsGetOperationContext(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetOperationContext(HCS_OPERATION operation, void* context);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_SYSTEM HcsGetComputeSystemFromOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_PROCESS HcsGetProcessFromOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HCS_OPERATION_TYPE HcsGetOperationType(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 HcsGetOperationId(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetOperationResult(HCS_OPERATION operation, PWSTR* resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetOperationResultAndProcessInfo(HCS_OPERATION operation, HCS_PROCESS_INFORMATION* processInformation, PWSTR* resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetProcessorCompatibilityFromSavedState(PWSTR RuntimeFileName, PWSTR* ProcessorFeaturesString);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsWaitForOperationResult(HCS_OPERATION operation, uint32 timeoutMs, PWSTR* resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsWaitForOperationResultAndProcessInfo(HCS_OPERATION operation, uint32 timeoutMs, HCS_PROCESS_INFORMATION* processInformation, PWSTR* resultDocument);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetOperationCallback(HCS_OPERATION operation, void* context, HCS_OPERATION_COMPLETION callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCancelOperation(HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCreateComputeSystem(PWSTR id, PWSTR configuration, HCS_OPERATION operation, SECURITY_DESCRIPTOR* securityDescriptor, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCreateComputeSystemInNamespace(PWSTR idNamespace, PWSTR id, PWSTR configuration, HCS_OPERATION operation, HCS_CREATE_OPTIONS* options, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsOpenComputeSystem(PWSTR id, uint32 requestedAccess, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsOpenComputeSystemInNamespace(PWSTR idNamespace, PWSTR id, uint32 requestedAccess, out HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseComputeSystem(HCS_SYSTEM computeSystem);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsStartComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsShutDownComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsTerminateComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCrashComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsPauseComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsResumeComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSaveComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetComputeSystemProperties(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR propertyQuery);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsModifyComputeSystem(HCS_SYSTEM computeSystem, HCS_OPERATION operation, PWSTR configuration, HANDLE identity);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsWaitForComputeSystemExit(HCS_SYSTEM computeSystem, uint32 timeoutMs, PWSTR* result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetComputeSystemCallback(HCS_SYSTEM computeSystem, HCS_EVENT_OPTIONS callbackOptions, void* context, HCS_EVENT_CALLBACK callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCreateProcess(HCS_SYSTEM computeSystem, PWSTR processParameters, HCS_OPERATION operation, SECURITY_DESCRIPTOR* securityDescriptor, out HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsOpenProcess(HCS_SYSTEM computeSystem, uint32 processId, uint32 requestedAccess, out HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HcsCloseProcess(HCS_PROCESS process);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsTerminateProcess(HCS_PROCESS process, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSignalProcess(HCS_PROCESS process, HCS_OPERATION operation, PWSTR options);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetProcessInfo(HCS_PROCESS process, HCS_OPERATION operation);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetProcessProperties(HCS_PROCESS process, HCS_OPERATION operation, PWSTR propertyQuery);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsModifyProcess(HCS_PROCESS process, HCS_OPERATION operation, PWSTR settings);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetProcessCallback(HCS_PROCESS process, HCS_EVENT_OPTIONS callbackOptions, void* context, HCS_EVENT_CALLBACK callback);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsWaitForProcessExit(HCS_PROCESS computeSystem, uint32 timeoutMs, PWSTR* result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetServiceProperties(PWSTR propertyQuery, out PWSTR result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsModifyServiceSettings(PWSTR settings, PWSTR* result);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSubmitWerReport(PWSTR settings);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCreateEmptyGuestStateFile(PWSTR guestStateFilePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsCreateEmptyRuntimeStateFile(PWSTR runtimeStateFilePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGrantVmAccess(PWSTR vmId, PWSTR filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsRevokeVmAccess(PWSTR vmId, PWSTR filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGrantVmGroupAccess(PWSTR filePath);
		[Import("computecore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsRevokeVmGroupAccess(PWSTR filePath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsImportLayer(PWSTR layerPath, PWSTR sourceFolderPath, PWSTR layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsExportLayer(PWSTR layerPath, PWSTR exportFolderPath, PWSTR layerData, PWSTR options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsExportLegacyWritableLayer(PWSTR writableLayerMountPath, PWSTR writableLayerFolderPath, PWSTR exportFolderPath, PWSTR layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsDestroyLayer(PWSTR layerPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetupBaseOSLayer(PWSTR layerPath, HANDLE vhdHandle, PWSTR options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsInitializeWritableLayer(PWSTR writableLayerPath, PWSTR layerData, PWSTR options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsInitializeLegacyWritableLayer(PWSTR writableLayerMountPath, PWSTR writableLayerFolderPath, PWSTR layerData, PWSTR options);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsAttachLayerStorageFilter(PWSTR layerPath, PWSTR layerData);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsDetachLayerStorageFilter(PWSTR layerPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsFormatWritableLayerVhd(HANDLE vhdHandle);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsGetLayerVhdMountPath(HANDLE vhdHandle, out PWSTR mountPath);
		[Import("computestorage.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HcsSetupBaseOSVolume(PWSTR layerPath, PWSTR volumePath, PWSTR options);
	}
}
