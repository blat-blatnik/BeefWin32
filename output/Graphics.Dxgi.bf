using System;

// namespace Graphics.Dxgi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DXGI_USAGE_SHADER_INPUT = 16;
		public const uint32 DXGI_USAGE_RENDER_TARGET_OUTPUT = 32;
		public const uint32 DXGI_USAGE_BACK_BUFFER = 64;
		public const uint32 DXGI_USAGE_SHARED = 128;
		public const uint32 DXGI_USAGE_READ_ONLY = 256;
		public const uint32 DXGI_USAGE_DISCARD_ON_PRESENT = 512;
		public const uint32 DXGI_USAGE_UNORDERED_ACCESS = 1024;
		public const uint32 DXGI_MAP_READ = 1;
		public const uint32 DXGI_MAP_WRITE = 2;
		public const uint32 DXGI_MAP_DISCARD = 4;
		public const uint32 DXGI_ENUM_MODES_INTERLACED = 1;
		public const uint32 DXGI_ENUM_MODES_SCALING = 2;
		public const uint32 DXGI_MAX_SWAP_CHAIN_BUFFERS = 16;
		public const uint32 DXGI_PRESENT_TEST = 1;
		public const uint32 DXGI_PRESENT_DO_NOT_SEQUENCE = 2;
		public const uint32 DXGI_PRESENT_RESTART = 4;
		public const uint32 DXGI_PRESENT_DO_NOT_WAIT = 8;
		public const uint32 DXGI_PRESENT_STEREO_PREFER_RIGHT = 16;
		public const uint32 DXGI_PRESENT_STEREO_TEMPORARY_MONO = 32;
		public const uint32 DXGI_PRESENT_RESTRICT_TO_OUTPUT = 64;
		public const uint32 DXGI_PRESENT_USE_DURATION = 256;
		public const uint32 DXGI_PRESENT_ALLOW_TEARING = 512;
		public const uint32 DXGI_MWA_NO_WINDOW_CHANGES = 1;
		public const uint32 DXGI_MWA_NO_ALT_ENTER = 2;
		public const uint32 DXGI_MWA_NO_PRINT_SCREEN = 4;
		public const uint32 DXGI_MWA_VALID = 7;
		public const uint32 DXGI_ENUM_MODES_STEREO = 4;
		public const uint32 DXGI_ENUM_MODES_DISABLED_STEREO = 8;
		public const uint32 DXGI_SHARED_RESOURCE_READ = 2147483648;
		public const uint32 DXGI_SHARED_RESOURCE_WRITE = 1;
		public const uint32 DXGI_DEBUG_BINARY_VERSION = 1;
		public const Guid DXGI_DEBUG_ALL = .(0xe48ae283, 0xda80, 0x490b, 0x87, 0xe6, 0x43, 0xe9, 0xa9, 0xcf, 0xda, 0x08);
		public const Guid DXGI_DEBUG_DX = .(0x35cdd7fc, 0x13b2, 0x421d, 0xa5, 0xd7, 0x7e, 0x44, 0x51, 0x28, 0x7d, 0x64);
		public const Guid DXGI_DEBUG_DXGI = .(0x25cddaa4, 0xb1c6, 0x47e1, 0xac, 0x3e, 0x98, 0x87, 0x5b, 0x5a, 0x2e, 0x2a);
		public const Guid DXGI_DEBUG_APP = .(0x06cd6e01, 0x4219, 0x4ebd, 0x87, 0x09, 0x27, 0xed, 0x23, 0x36, 0x0c, 0x62);
		public const uint32 DXGI_INFO_QUEUE_MESSAGE_ID_STRING_FROM_APPLICATION = 0;
		public const uint32 DXGI_INFO_QUEUE_DEFAULT_MESSAGE_COUNT_LIMIT = 1024;
		public const uint32 DXGI_CREATE_FACTORY_DEBUG = 1;
		public const HRESULT DXGI_ERROR_INVALID_CALL = -2005270527;
		public const HRESULT DXGI_ERROR_NOT_FOUND = -2005270526;
		public const HRESULT DXGI_ERROR_MORE_DATA = -2005270525;
		public const HRESULT DXGI_ERROR_UNSUPPORTED = -2005270524;
		public const HRESULT DXGI_ERROR_DEVICE_REMOVED = -2005270523;
		public const HRESULT DXGI_ERROR_DEVICE_HUNG = -2005270522;
		public const HRESULT DXGI_ERROR_DEVICE_RESET = -2005270521;
		public const HRESULT DXGI_ERROR_WAS_STILL_DRAWING = -2005270518;
		public const HRESULT DXGI_ERROR_FRAME_STATISTICS_DISJOINT = -2005270517;
		public const HRESULT DXGI_ERROR_GRAPHICS_VIDPN_SOURCE_IN_USE = -2005270516;
		public const HRESULT DXGI_ERROR_DRIVER_INTERNAL_ERROR = -2005270496;
		public const HRESULT DXGI_ERROR_NONEXCLUSIVE = -2005270495;
		public const HRESULT DXGI_ERROR_NOT_CURRENTLY_AVAILABLE = -2005270494;
		public const HRESULT DXGI_ERROR_REMOTE_CLIENT_DISCONNECTED = -2005270493;
		public const HRESULT DXGI_ERROR_REMOTE_OUTOFMEMORY = -2005270492;
		public const HRESULT DXGI_ERROR_ACCESS_LOST = -2005270490;
		public const HRESULT DXGI_ERROR_WAIT_TIMEOUT = -2005270489;
		public const HRESULT DXGI_ERROR_SESSION_DISCONNECTED = -2005270488;
		public const HRESULT DXGI_ERROR_RESTRICT_TO_OUTPUT_STALE = -2005270487;
		public const HRESULT DXGI_ERROR_CANNOT_PROTECT_CONTENT = -2005270486;
		public const HRESULT DXGI_ERROR_ACCESS_DENIED = -2005270485;
		public const HRESULT DXGI_ERROR_NAME_ALREADY_EXISTS = -2005270484;
		public const HRESULT DXGI_ERROR_SDK_COMPONENT_MISSING = -2005270483;
		public const HRESULT DXGI_ERROR_NOT_CURRENT = -2005270482;
		public const HRESULT DXGI_ERROR_HW_PROTECTION_OUTOFMEMORY = -2005270480;
		public const HRESULT DXGI_ERROR_DYNAMIC_CODE_POLICY_VIOLATION = -2005270479;
		public const HRESULT DXGI_ERROR_NON_COMPOSITED_UI = -2005270478;
		public const HRESULT DXGI_ERROR_MODE_CHANGE_IN_PROGRESS = -2005270491;
		public const HRESULT DXGI_ERROR_CACHE_CORRUPT = -2005270477;
		public const HRESULT DXGI_ERROR_CACHE_FULL = -2005270476;
		public const HRESULT DXGI_ERROR_CACHE_HASH_COLLISION = -2005270475;
		public const HRESULT DXGI_ERROR_ALREADY_EXISTS = -2005270474;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DXGI_RESOURCE_PRIORITY : uint32
		{
			DXGI_RESOURCE_PRIORITY_MINIMUM = 671088640,
			DXGI_RESOURCE_PRIORITY_LOW = 1342177280,
			DXGI_RESOURCE_PRIORITY_NORMAL = 2013265920,
			DXGI_RESOURCE_PRIORITY_HIGH = 2684354560,
			DXGI_RESOURCE_PRIORITY_MAXIMUM = 3355443200,
		}
		[AllowDuplicates]
		public enum DXGI_RESIDENCY : int32
		{
			DXGI_RESIDENCY_FULLY_RESIDENT = 1,
			DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY = 2,
			DXGI_RESIDENCY_EVICTED_TO_DISK = 3,
		}
		[AllowDuplicates]
		public enum DXGI_SWAP_EFFECT : int32
		{
			DXGI_SWAP_EFFECT_DISCARD = 0,
			DXGI_SWAP_EFFECT_SEQUENTIAL = 1,
			DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL = 3,
			DXGI_SWAP_EFFECT_FLIP_DISCARD = 4,
		}
		[AllowDuplicates]
		public enum DXGI_SWAP_CHAIN_FLAG : int32
		{
			DXGI_SWAP_CHAIN_FLAG_NONPREROTATED = 1,
			DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 2,
			DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE = 4,
			DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT = 8,
			DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER = 16,
			DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY = 32,
			DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT = 64,
			DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER = 128,
			DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO = 256,
			DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO = 512,
			DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED = 1024,
			DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING = 2048,
			DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 4096,
		}
		[AllowDuplicates]
		public enum DXGI_ADAPTER_FLAG : uint32
		{
			DXGI_ADAPTER_FLAG_NONE = 0,
			DXGI_ADAPTER_FLAG_REMOTE = 1,
			DXGI_ADAPTER_FLAG_SOFTWARE = 2,
		}
		[AllowDuplicates]
		public enum DXGI_OUTDUPL_POINTER_SHAPE_TYPE : int32
		{
			DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME = 1,
			DXGI_OUTDUPL_POINTER_SHAPE_TYPE_COLOR = 2,
			DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR = 4,
		}
		[AllowDuplicates]
		public enum DXGI_OFFER_RESOURCE_PRIORITY : int32
		{
			DXGI_OFFER_RESOURCE_PRIORITY_LOW = 1,
			DXGI_OFFER_RESOURCE_PRIORITY_NORMAL = 2,
			DXGI_OFFER_RESOURCE_PRIORITY_HIGH = 3,
		}
		[AllowDuplicates]
		public enum DXGI_SCALING : int32
		{
			DXGI_SCALING_STRETCH = 0,
			DXGI_SCALING_NONE = 1,
			DXGI_SCALING_ASPECT_RATIO_STRETCH = 2,
		}
		[AllowDuplicates]
		public enum DXGI_GRAPHICS_PREEMPTION_GRANULARITY : int32
		{
			DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY = 0,
			DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY = 1,
			DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY = 2,
			DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY = 3,
			DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY = 4,
		}
		[AllowDuplicates]
		public enum DXGI_COMPUTE_PREEMPTION_GRANULARITY : int32
		{
			DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY = 0,
			DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY = 1,
			DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY = 2,
			DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY = 3,
			DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY = 4,
		}
		[AllowDuplicates]
		public enum DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS : int32
		{
			DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE = 1,
			DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709 = 2,
			DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC = 4,
		}
		[AllowDuplicates]
		public enum DXGI_FRAME_PRESENTATION_MODE : int32
		{
			DXGI_FRAME_PRESENTATION_MODE_COMPOSED = 0,
			DXGI_FRAME_PRESENTATION_MODE_OVERLAY = 1,
			DXGI_FRAME_PRESENTATION_MODE_NONE = 2,
			DXGI_FRAME_PRESENTATION_MODE_COMPOSITION_FAILURE = 3,
		}
		[AllowDuplicates]
		public enum DXGI_OVERLAY_SUPPORT_FLAG : int32
		{
			DXGI_OVERLAY_SUPPORT_FLAG_DIRECT = 1,
			DXGI_OVERLAY_SUPPORT_FLAG_SCALING = 2,
		}
		[AllowDuplicates]
		public enum DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG : int32
		{
			DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_PRESENT = 1,
			DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_OVERLAY_PRESENT = 2,
		}
		[AllowDuplicates]
		public enum DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG : int32
		{
			DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG_PRESENT = 1,
		}
		[AllowDuplicates]
		public enum DXGI_MEMORY_SEGMENT_GROUP : int32
		{
			DXGI_MEMORY_SEGMENT_GROUP_LOCAL = 0,
			DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL = 1,
		}
		[AllowDuplicates]
		public enum DXGI_OUTDUPL_FLAG : int32
		{
			DXGI_OUTDUPL_COMPOSITED_UI_CAPTURE_ONLY = 1,
		}
		[AllowDuplicates]
		public enum DXGI_HDR_METADATA_TYPE : int32
		{
			DXGI_HDR_METADATA_TYPE_NONE = 0,
			DXGI_HDR_METADATA_TYPE_HDR10 = 1,
			DXGI_HDR_METADATA_TYPE_HDR10PLUS = 2,
		}
		[AllowDuplicates]
		public enum DXGI_OFFER_RESOURCE_FLAGS : int32
		{
			DXGI_OFFER_RESOURCE_FLAG_ALLOW_DECOMMIT = 1,
		}
		[AllowDuplicates]
		public enum DXGI_RECLAIM_RESOURCE_RESULTS : int32
		{
			DXGI_RECLAIM_RESOURCE_RESULT_OK = 0,
			DXGI_RECLAIM_RESOURCE_RESULT_DISCARDED = 1,
			DXGI_RECLAIM_RESOURCE_RESULT_NOT_COMMITTED = 2,
		}
		[AllowDuplicates]
		public enum DXGI_FEATURE : int32
		{
			DXGI_FEATURE_PRESENT_ALLOW_TEARING = 0,
		}
		[AllowDuplicates]
		public enum DXGI_ADAPTER_FLAG3 : uint32
		{
			DXGI_ADAPTER_FLAG3_NONE = 0,
			DXGI_ADAPTER_FLAG3_REMOTE = 1,
			DXGI_ADAPTER_FLAG3_SOFTWARE = 2,
			DXGI_ADAPTER_FLAG3_ACG_COMPATIBLE = 4,
			DXGI_ADAPTER_FLAG3_SUPPORT_MONITORED_FENCES = 8,
			DXGI_ADAPTER_FLAG3_SUPPORT_NON_MONITORED_FENCES = 16,
			DXGI_ADAPTER_FLAG3_KEYED_MUTEX_CONFORMANCE = 32,
			DXGI_ADAPTER_FLAG3_FORCE_DWORD = 4294967295,
		}
		[AllowDuplicates]
		public enum DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAGS : uint32
		{
			DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_FULLSCREEN = 1,
			DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_WINDOWED = 2,
			DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_CURSOR_STRETCHED = 4,
		}
		[AllowDuplicates]
		public enum DXGI_GPU_PREFERENCE : int32
		{
			DXGI_GPU_PREFERENCE_UNSPECIFIED = 0,
			DXGI_GPU_PREFERENCE_MINIMUM_POWER = 1,
			DXGI_GPU_PREFERENCE_HIGH_PERFORMANCE = 2,
		}
		[AllowDuplicates]
		public enum DXGI_DEBUG_RLO_FLAGS : uint32
		{
			DXGI_DEBUG_RLO_SUMMARY = 1,
			DXGI_DEBUG_RLO_DETAIL = 2,
			DXGI_DEBUG_RLO_IGNORE_INTERNAL = 4,
			DXGI_DEBUG_RLO_ALL = 7,
		}
		[AllowDuplicates]
		public enum DXGI_INFO_QUEUE_MESSAGE_CATEGORY : int32
		{
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN = 0,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS = 1,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION = 2,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP = 3,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION = 4,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION = 5,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING = 6,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING = 7,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION = 8,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION = 9,
			DXGI_INFO_QUEUE_MESSAGE_CATEGORY_SHADER = 10,
		}
		[AllowDuplicates]
		public enum DXGI_INFO_QUEUE_MESSAGE_SEVERITY : int32
		{
			DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION = 0,
			DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR = 1,
			DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING = 2,
			DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO = 3,
			DXGI_INFO_QUEUE_MESSAGE_SEVERITY_MESSAGE = 4,
		}
		[AllowDuplicates]
		public enum DXGI_Message_Id : int32
		{
			DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_InvalidOutputWindow = 0,
			DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferWidthInferred = 1,
			DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferHeightInferred = 2,
			DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_NoScanoutFlagChanged = 3,
			DXGI_MSG_IDXGISwapChain_Creation_MaxBufferCountExceeded = 4,
			DXGI_MSG_IDXGISwapChain_Creation_TooFewBuffers = 5,
			DXGI_MSG_IDXGISwapChain_Creation_NoOutputWindow = 6,
			DXGI_MSG_IDXGISwapChain_Destruction_OtherMethodsCalled = 7,
			DXGI_MSG_IDXGISwapChain_GetDesc_pDescIsNULL = 8,
			DXGI_MSG_IDXGISwapChain_GetBuffer_ppSurfaceIsNULL = 9,
			DXGI_MSG_IDXGISwapChain_GetBuffer_NoAllocatedBuffers = 10,
			DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferMustBeZero = 11,
			DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferOOB = 12,
			DXGI_MSG_IDXGISwapChain_GetContainingOutput_ppOutputIsNULL = 13,
			DXGI_MSG_IDXGISwapChain_Present_SyncIntervalOOB = 14,
			DXGI_MSG_IDXGISwapChain_Present_InvalidNonPreRotatedFlag = 15,
			DXGI_MSG_IDXGISwapChain_Present_NoAllocatedBuffers = 16,
			DXGI_MSG_IDXGISwapChain_Present_GetDXGIAdapterFailed = 17,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOB = 18,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_UnreleasedReferences = 19,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidSwapChainFlag = 20,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidNonPreRotatedFlag = 21,
			DXGI_MSG_IDXGISwapChain_ResizeTarget_RefreshRateDivideByZero = 22,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_InvalidTarget = 23,
			DXGI_MSG_IDXGISwapChain_GetFrameStatistics_pStatsIsNULL = 24,
			DXGI_MSG_IDXGISwapChain_GetLastPresentCount_pLastPresentCountIsNULL = 25,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_RemoteNotSupported = 26,
			DXGI_MSG_IDXGIOutput_TakeOwnership_FailedToAcquireFullscreenMutex = 27,
			DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ppAdapterInterfaceIsNULL = 28,
			DXGI_MSG_IDXGIFactory_EnumAdapters_ppAdapterInterfaceIsNULL = 29,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ppSwapChainIsNULL = 30,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_pDescIsNULL = 31,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_UnknownSwapEffect = 32,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFlags = 33,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedFlagAndWindowed = 34,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_NullDeviceInterface = 35,
			DXGI_MSG_IDXGIFactory_GetWindowAssociation_phWndIsNULL = 36,
			DXGI_MSG_IDXGIFactory_MakeWindowAssociation_InvalidFlags = 37,
			DXGI_MSG_IDXGISurface_Map_InvalidSurface = 38,
			DXGI_MSG_IDXGISurface_Map_FlagsSetToZero = 39,
			DXGI_MSG_IDXGISurface_Map_DiscardAndReadFlagSet = 40,
			DXGI_MSG_IDXGISurface_Map_DiscardButNotWriteFlagSet = 41,
			DXGI_MSG_IDXGISurface_Map_NoCPUAccess = 42,
			DXGI_MSG_IDXGISurface_Map_ReadFlagSetButCPUAccessIsDynamic = 43,
			DXGI_MSG_IDXGISurface_Map_DiscardFlagSetButCPUAccessIsNotDynamic = 44,
			DXGI_MSG_IDXGIOutput_GetDisplayModeList_pNumModesIsNULL = 45,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasInvalidWidthOrHeight = 46,
			DXGI_MSG_IDXGIOutput_GetCammaControlCapabilities_NoOwnerDevice = 47,
			DXGI_MSG_IDXGIOutput_TakeOwnership_pDeviceIsNULL = 48,
			DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_NoOwnerDevice = 49,
			DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_pDestinationIsNULL = 50,
			DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_MapOfDestinationFailed = 51,
			DXGI_MSG_IDXGIOutput_GetFrameStatistics_NoOwnerDevice = 52,
			DXGI_MSG_IDXGIOutput_GetFrameStatistics_pStatsIsNULL = 53,
			DXGI_MSG_IDXGIOutput_SetGammaControl_NoOwnerDevice = 54,
			DXGI_MSG_IDXGIOutput_GetGammaControl_NoOwnerDevice = 55,
			DXGI_MSG_IDXGIOutput_GetGammaControl_NoGammaControls = 56,
			DXGI_MSG_IDXGIOutput_SetDisplaySurface_IDXGIResourceNotSupportedBypPrimary = 57,
			DXGI_MSG_IDXGIOutput_SetDisplaySurface_pPrimaryIsInvalid = 58,
			DXGI_MSG_IDXGIOutput_SetDisplaySurface_NoOwnerDevice = 59,
			DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteDeviceNotSupported = 60,
			DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteDeviceNotSupported = 61,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteDeviceNotSupported = 62,
			DXGI_MSG_IDXGIDevice_CreateSurface_InvalidParametersWithpSharedResource = 63,
			DXGI_MSG_IDXGIObject_GetPrivateData_puiDataSizeIsNULL = 64,
			DXGI_MSG_IDXGISwapChain_Creation_InvalidOutputWindow = 65,
			DXGI_MSG_IDXGISwapChain_Release_SwapChainIsFullscreen = 66,
			DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_InvalidTargetSurfaceFormat = 67,
			DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ModuleIsNULL = 68,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_IDXGIDeviceNotSupportedBypConcernedDevice = 69,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_pModeToMatchOrpClosestMatchIsNULL = 70,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasRefreshRateDenominatorZero = 71,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_UnknownFormatIsInvalidForConfiguration = 72,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScanlineOrdering = 73,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScaling = 74,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeFormatAndDeviceCombination = 75,
			DXGI_MSG_IDXGIFactory_Creation_CalledFromDllMain = 76,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_OutputNotOwnedBySwapChainDevice = 77,
			DXGI_MSG_IDXGISwapChain_Creation_InvalidWindowStyle = 78,
			DXGI_MSG_IDXGISwapChain_GetFrameStatistics_UnsupportedStatistics = 79,
			DXGI_MSG_IDXGISwapChain_GetContainingOutput_SwapchainAdapterDoesNotControlOutput = 80,
			DXGI_MSG_IDXGIOutput_SetOrGetGammaControl_pArrayIsNULL = 81,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_FullscreenInvalidForChildWindows = 82,
			DXGI_MSG_IDXGIFactory_Release_CalledFromDllMain = 83,
			DXGI_MSG_IDXGISwapChain_Present_UnreleasedHDC = 84,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_NonPreRotatedAndGDICompatibleFlags = 85,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedAndGDICompatibleFlags = 86,
			DXGI_MSG_IDXGISurface1_GetDC_pHdcIsNULL = 87,
			DXGI_MSG_IDXGISurface1_GetDC_SurfaceNotTexture2D = 88,
			DXGI_MSG_IDXGISurface1_GetDC_GDICompatibleFlagNotSet = 89,
			DXGI_MSG_IDXGISurface1_GetDC_UnreleasedHDC = 90,
			DXGI_MSG_IDXGISurface_Map_NoCPUAccess2 = 91,
			DXGI_MSG_IDXGISurface1_ReleaseDC_GetDCNotCalled = 92,
			DXGI_MSG_IDXGISurface1_ReleaseDC_InvalidRectangleDimensions = 93,
			DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteOutputNotSupported = 94,
			DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteOutputNotSupported = 95,
			DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteOutputNotSupported = 96,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_pDeviceHasMismatchedDXGIFactory = 97,
			DXGI_MSG_IDXGISwapChain_Present_NonOptimalFSConfiguration = 98,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSequentialNotSupportedOnD3D10 = 99,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_BufferCountOOBForFlipSequential = 100,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFormatForFlipSequential = 101,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_MultiSamplingNotSupportedForFlipSequential = 102,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOBForFlipSequential = 103,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidFormatForFlipSequential = 104,
			DXGI_MSG_IDXGISwapChain_Present_PartialPresentationBeforeStandardPresentation = 105,
			DXGI_MSG_IDXGISwapChain_Present_FullscreenPartialPresentIsInvalid = 106,
			DXGI_MSG_IDXGISwapChain_Present_InvalidPresentTestOrDoNotSequenceFlag = 107,
			DXGI_MSG_IDXGISwapChain_Present_ScrollInfoWithNoDirtyRectsSpecified = 108,
			DXGI_MSG_IDXGISwapChain_Present_EmptyScrollRect = 109,
			DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBounds = 110,
			DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBoundsWithOffset = 111,
			DXGI_MSG_IDXGISwapChain_Present_EmptyDirtyRect = 112,
			DXGI_MSG_IDXGISwapChain_Present_DirtyRectOutOfBackbufferBounds = 113,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_UnsupportedBufferUsageFlags = 114,
			DXGI_MSG_IDXGISwapChain_Present_DoNotSequenceFlagSetButPreviousBufferIsUndefined = 115,
			DXGI_MSG_IDXGISwapChain_Present_UnsupportedFlags = 116,
			DXGI_MSG_IDXGISwapChain_Present_FlipModelChainMustResizeOrCreateOnFSTransition = 117,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_pRestrictToOutputFromOtherIDXGIFactory = 118,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictOutputNotSupportedOnAdapter = 119,
			DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagSetButInvalidpRestrictToOutput = 120,
			DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagdWithFullscreen = 121,
			DXGI_MSG_IDXGISwapChain_Present_RestrictOutputFlagWithStaleSwapChain = 122,
			DXGI_MSG_IDXGISwapChain_Present_OtherFlagsCausingInvalidPresentTestFlag = 123,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_UnavailableInSession0 = 124,
			DXGI_MSG_IDXGIFactory_MakeWindowAssociation_UnavailableInSession0 = 125,
			DXGI_MSG_IDXGIFactory_GetWindowAssociation_UnavailableInSession0 = 126,
			DXGI_MSG_IDXGIAdapter_EnumOutputs_UnavailableInSession0 = 127,
			DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_StereoDisabled = 128,
			DXGI_MSG_IDXGIFactory2_UnregisterStatus_CookieNotFound = 129,
			DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFSOrOverlay = 130,
			DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFlipSequential = 131,
			DXGI_MSG_IDXGISwapChain_Present_ProtectedContentWithRDPDriver = 132,
			DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithDWMOffOrInvalidDisplayAffinity = 133,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_WidthOrHeightIsZero = 134,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_OnlyFlipSequentialSupported = 135,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnAdapter = 136,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnWindows7 = 137,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSTransitionWithCompositionSwapChain = 138,
			DXGI_MSG_IDXGISwapChain_ResizeTarget_InvalidWithCompositionSwapChain = 139,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_WidthOrHeightIsZero = 140,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneIsFlipModelOnly = 141,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingUnrecognized = 142,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyFullscreenUnsupported = 143,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyUnsupported = 144,
			DXGI_MSG_IDXGISwapChain_Present_RestartIsFullscreenOnly = 145,
			DXGI_MSG_IDXGISwapChain_Present_ProtectedWindowlessPresentationRequiresDisplayOnly = 146,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_DisplayOnlyUnsupported = 147,
			DXGI_MSG_IDXGISwapChain1_SetBackgroundColor_OutOfRange = 148,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyFullscreenUnsupported = 149,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyUnsupported = 150,
			DXGI_MSG_IDXGISwapchain_Present_ScrollUnsupported = 151,
			DXGI_MSG_IDXGISwapChain1_SetRotation_UnsupportedOS = 152,
			DXGI_MSG_IDXGISwapChain1_GetRotation_UnsupportedOS = 153,
			DXGI_MSG_IDXGISwapchain_Present_FullscreenRotation = 154,
			DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithMSAABuffers = 155,
			DXGI_MSG_IDXGISwapChain1_SetRotation_FlipSequentialRequired = 156,
			DXGI_MSG_IDXGISwapChain1_SetRotation_InvalidRotation = 157,
			DXGI_MSG_IDXGISwapChain1_GetRotation_FlipSequentialRequired = 158,
			DXGI_MSG_IDXGISwapChain_GetHwnd_WrongType = 159,
			DXGI_MSG_IDXGISwapChain_GetCompositionSurface_WrongType = 160,
			DXGI_MSG_IDXGISwapChain_GetCoreWindow_WrongType = 161,
			DXGI_MSG_IDXGISwapChain_GetFullscreenDesc_NonHwnd = 162,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_CoreWindow = 163,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_UnsupportedOnWindows7 = 164,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsNULL = 165,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_FSUnsupportedForModernApps = 166,
			DXGI_MSG_IDXGIFactory_MakeWindowAssociation_ModernApp = 167,
			DXGI_MSG_IDXGISwapChain_ResizeTarget_ModernApp = 168,
			DXGI_MSG_IDXGISwapChain_ResizeTarget_pNewTargetParametersIsNULL = 169,
			DXGI_MSG_IDXGIOutput_SetDisplaySurface_ModernApp = 170,
			DXGI_MSG_IDXGIOutput_TakeOwnership_ModernApp = 171,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsInvalid = 172,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCompositionSurface_InvalidHandle = 173,
			DXGI_MSG_IDXGISurface1_GetDC_ModernApp = 174,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneRequiresWindows8OrNewer = 175,
			DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoAndPreferRight = 176,
			DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithDoNotSequence = 177,
			DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithoutStereo = 178,
			DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoUnsupported = 179,
			DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_ArraySizeMismatch = 180,
			DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithSwapEffectDiscard = 181,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaUnrecognized = 182,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsWindowlessOnly = 183,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsFlipModelOnly = 184,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictToOutputAdapterMismatch = 185,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyOnLegacy = 186,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyOnLegacy = 187,
			DXGI_MSG_IDXGIResource1_CreateSubresourceSurface_InvalidIndex = 188,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidScaling = 189,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForCoreWindow_InvalidSwapEffect = 190,
			DXGI_MSG_IDXGIResource1_CreateSharedHandle_UnsupportedOS = 191,
			DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusWindow_UnsupportedOS = 192,
			DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusEvent_UnsupportedOS = 193,
			DXGI_MSG_IDXGIOutput1_DuplicateOutput_UnsupportedOS = 194,
			DXGI_MSG_IDXGIDisplayControl_IsStereoEnabled_UnsupportedOS = 195,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidAlphaMode = 196,
			DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidResource = 197,
			DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidLUID = 198,
			DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_UnsupportedOS = 199,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_2DOnly = 200,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_StagingOnly = 201,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NeedCPUAccessWrite = 202,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NoShared = 203,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_OnlyMipLevels1 = 204,
			DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_MappedOrOfferedResource = 205,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSUnsupportedForModernApps = 206,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_FailedToGoFSButNonPreRotated = 207,
			DXGI_MSG_IDXGIFactory_CreateSwapChainOrRegisterOcclusionStatus_BlitModelUsedWhileRegisteredForOcclusionStatusEvents = 208,
			DXGI_MSG_IDXGISwapChain_Present_BlitModelUsedWhileRegisteredForOcclusionStatusEvents = 209,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreFlipModelOnly = 210,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreNotFullscreen = 211,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_Waitable = 212,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveWaitableFlag = 213,
			DXGI_MSG_IDXGISwapChain_GetFrameLatencyWaitableObject_OnlyWaitable = 214,
			DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_OnlyWaitable = 215,
			DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_pMaxLatencyIsNULL = 216,
			DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_OnlyWaitable = 217,
			DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_MaxLatencyIsOutOfBounds = 218,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ForegroundIsCoreWindowOnly = 219,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_ForegroundUnsupportedOnAdapter = 220,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidScaling = 221,
			DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidAlphaMode = 222,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveForegroundFlag = 223,
			DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixPointerCannotBeNull = 224,
			DXGI_MSG_IDXGISwapChain_SetMatrixTransform_RequiresCompositionSwapChain = 225,
			DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeFinite = 226,
			DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeTranslateAndOrScale = 227,
			DXGI_MSG_IDXGISwapChain_GetMatrixTransform_MatrixPointerCannotBeNull = 228,
			DXGI_MSG_IDXGISwapChain_GetMatrixTransform_RequiresCompositionSwapChain = 229,
			DXGI_MSG_DXGIGetDebugInterface1_NULL_ppDebug = 230,
			DXGI_MSG_DXGIGetDebugInterface1_InvalidFlags = 231,
			DXGI_MSG_IDXGISwapChain_Present_Decode = 232,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_Decode = 233,
			DXGI_MSG_IDXGISwapChain_SetSourceSize_FlipModel = 234,
			DXGI_MSG_IDXGISwapChain_SetSourceSize_Decode = 235,
			DXGI_MSG_IDXGISwapChain_SetSourceSize_WidthHeight = 236,
			DXGI_MSG_IDXGISwapChain_GetSourceSize_NullPointers = 237,
			DXGI_MSG_IDXGISwapChain_GetSourceSize_Decode = 238,
			DXGI_MSG_IDXGIDecodeSwapChain_SetColorSpace_InvalidFlags = 239,
			DXGI_MSG_IDXGIDecodeSwapChain_SetSourceRect_InvalidRect = 240,
			DXGI_MSG_IDXGIDecodeSwapChain_SetTargetRect_InvalidRect = 241,
			DXGI_MSG_IDXGIDecodeSwapChain_SetDestSize_InvalidSize = 242,
			DXGI_MSG_IDXGIDecodeSwapChain_GetSourceRect_InvalidPointer = 243,
			DXGI_MSG_IDXGIDecodeSwapChain_GetTargetRect_InvalidPointer = 244,
			DXGI_MSG_IDXGIDecodeSwapChain_GetDestSize_InvalidPointer = 245,
			DXGI_MSG_IDXGISwapChain_PresentBuffer_YUV = 246,
			DXGI_MSG_IDXGISwapChain_SetSourceSize_YUV = 247,
			DXGI_MSG_IDXGISwapChain_GetSourceSize_YUV = 248,
			DXGI_MSG_IDXGISwapChain_SetMatrixTransform_YUV = 249,
			DXGI_MSG_IDXGISwapChain_GetMatrixTransform_YUV = 250,
			DXGI_MSG_IDXGISwapChain_Present_PartialPresentation_YUV = 251,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveFlag_YUV = 252,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_Alignment_YUV = 253,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_ShaderInputUnsupported_YUV = 254,
			DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_NullPointers = 255,
			DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_IDXGIDeviceNotSupportedBypConcernedDevice = 256,
			DXGI_MSG_IDXGIAdapter_EnumOutputs2_InvalidEnumOutputs2Flag = 257,
			DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_FSUnsupportedForFlipDiscard = 258,
			DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_NullPointers = 259,
			DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_IDXGIDeviceNotSupportedBypConcernedDevice = 260,
			DXGI_MSG_IDXGISwapChain3_CheckColorSpaceSupport_NullPointers = 261,
			DXGI_MSG_IDXGISwapChain3_SetColorSpace1_InvalidColorSpace = 262,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidHwProtect = 263,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_HwProtectUnsupported = 264,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtect = 265,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_HwProtectUnsupported = 266,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers1_D3D12Only = 267,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers1_FlipModel = 268,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers1_NodeMaskAndQueueRequired = 269,
			DXGI_MSG_IDXGISwapChain_CreateSwapChain_InvalidHwProtectGdiFlag = 270,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtectGdiFlag = 271,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_10BitFormatNotSupported = 272,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSwapEffectRequired = 273,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidDevice = 274,
			DXGI_MSG_IDXGIOutput_TakeOwnership_Unsupported = 275,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidQueue = 276,
			DXGI_MSG_IDXGISwapChain3_ResizeBuffers1_InvalidQueue = 277,
			DXGI_MSG_IDXGIFactory_CreateSwapChainForHwnd_InvalidScaling = 278,
			DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidSize = 279,
			DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidPointer = 280,
			DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidType = 281,
			DXGI_MSG_IDXGISwapChain_Present_FullscreenAllowTearingIsInvalid = 282,
			DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresPresentIntervalZero = 283,
			DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresCreationFlag = 284,
			DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveAllowTearingFlag = 285,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_AllowTearingFlagIsFlipModelOnly = 286,
			DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidFeature = 287,
			DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidSize = 288,
			DXGI_MSG_IDXGIOutput6_CheckHardwareCompositionSupport_NullPointer = 289,
			DXGI_MSG_IDXGISwapChain_SetFullscreenState_PerMonitorDpiShimApplied = 290,
			DXGI_MSG_IDXGIOutput_DuplicateOutput_PerMonitorDpiShimApplied = 291,
			DXGI_MSG_IDXGIOutput_DuplicateOutput1_PerMonitorDpiRequired = 292,
			DXGI_MSG_IDXGIFactory7_UnregisterAdaptersChangedEvent_CookieNotFound = 293,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_LegacyBltModelSwapEffect = 294,
			DXGI_MSG_IDXGISwapChain4_SetHDRMetaData_MetadataUnchanged = 295,
			DXGI_MSG_IDXGISwapChain_Present_11On12_Released_Resource = 296,
			DXGI_MSG_IDXGIFactory_CreateSwapChain_MultipleSwapchainRefToSurface_DeferredDtr = 297,
			DXGI_MSG_IDXGIFactory_MakeWindowAssociation_NoOpBehavior = 298,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow = 1000,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_DISCARD_BufferCount = 1001,
			DXGI_MSG_Phone_IDXGISwapChain_SetFullscreenState_NotAvailable = 1002,
			DXGI_MSG_Phone_IDXGISwapChain_ResizeBuffers_NotAvailable = 1003,
			DXGI_MSG_Phone_IDXGISwapChain_ResizeTarget_NotAvailable = 1004,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerIndex = 1005,
			DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleLayerIndex = 1006,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerFlag = 1007,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidRotation = 1008,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidBlend = 1009,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidResource = 1010,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidMultiPlaneOverlayResource = 1011,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForPrimary = 1012,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForOverlay = 1013,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSubResourceIndex = 1014,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSourceRect = 1015,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidDestinationRect = 1016,
			DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleResource = 1017,
			DXGI_MSG_Phone_IDXGISwapChain_Present_NotSharedResource = 1018,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidFlag = 1019,
			DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidInterval = 1020,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_MSAA_NotSupported = 1021,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_ScalingAspectRatioStretch_Supported_ModernApp = 1022,
			DXGI_MSG_Phone_IDXGISwapChain_GetFrameStatistics_NotAvailable_ModernApp = 1023,
			DXGI_MSG_Phone_IDXGISwapChain_Present_ReplaceInterval0With1 = 1024,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FailedRegisterWithCompositor = 1025,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow_AtRendering = 1026,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_SEQUENTIAL_BufferCount = 1027,
			DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_Modern_CoreWindow_Only = 1028,
			DXGI_MSG_Phone_IDXGISwapChain_Present1_RequiresOverlays = 1029,
			DXGI_MSG_Phone_IDXGISwapChain_SetBackgroundColor_FlipSequentialRequired = 1030,
			DXGI_MSG_Phone_IDXGISwapChain_GetBackgroundColor_FlipSequentialRequired = 1031,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DXGI_RGBA
		{
			public float r;
			public float g;
			public float b;
			public float a;
		}
		[CRepr]
		public struct DXGI_FRAME_STATISTICS
		{
			public uint32 PresentCount;
			public uint32 PresentRefreshCount;
			public uint32 SyncRefreshCount;
			public LARGE_INTEGER SyncQPCTime;
			public LARGE_INTEGER SyncGPUTime;
		}
		[CRepr]
		public struct DXGI_MAPPED_RECT
		{
			public int32 Pitch;
			public uint8* pBits;
		}
		[CRepr]
		public struct DXGI_ADAPTER_DESC
		{
			public char16[128] Description;
			public uint32 VendorId;
			public uint32 DeviceId;
			public uint32 SubSysId;
			public uint32 Revision;
			public uint DedicatedVideoMemory;
			public uint DedicatedSystemMemory;
			public uint SharedSystemMemory;
			public LUID AdapterLuid;
		}
		[CRepr]
		public struct DXGI_OUTPUT_DESC
		{
			public char16[32] DeviceName;
			public RECT DesktopCoordinates;
			public BOOL AttachedToDesktop;
			public DXGI_MODE_ROTATION Rotation;
			public HMONITOR Monitor;
		}
		[CRepr]
		public struct DXGI_SHARED_RESOURCE
		{
			public HANDLE Handle;
		}
		[CRepr]
		public struct DXGI_SURFACE_DESC
		{
			public uint32 Width;
			public uint32 Height;
			public DXGI_FORMAT Format;
			public DXGI_SAMPLE_DESC SampleDesc;
		}
		[CRepr]
		public struct DXGI_SWAP_CHAIN_DESC
		{
			public DXGI_MODE_DESC BufferDesc;
			public DXGI_SAMPLE_DESC SampleDesc;
			public uint32 BufferUsage;
			public uint32 BufferCount;
			public HWND OutputWindow;
			public BOOL Windowed;
			public DXGI_SWAP_EFFECT SwapEffect;
			public uint32 Flags;
		}
		[CRepr]
		public struct DXGI_ADAPTER_DESC1
		{
			public char16[128] Description;
			public uint32 VendorId;
			public uint32 DeviceId;
			public uint32 SubSysId;
			public uint32 Revision;
			public uint DedicatedVideoMemory;
			public uint DedicatedSystemMemory;
			public uint SharedSystemMemory;
			public LUID AdapterLuid;
			public uint32 Flags;
		}
		[CRepr]
		public struct DXGI_DISPLAY_COLOR_SPACE
		{
			public float[16] PrimaryCoordinates;
			public float[32] WhitePoints;
		}
		[CRepr]
		public struct DXGI_OUTDUPL_MOVE_RECT
		{
			public POINT SourcePoint;
			public RECT DestinationRect;
		}
		[CRepr]
		public struct DXGI_OUTDUPL_DESC
		{
			public DXGI_MODE_DESC ModeDesc;
			public DXGI_MODE_ROTATION Rotation;
			public BOOL DesktopImageInSystemMemory;
		}
		[CRepr]
		public struct DXGI_OUTDUPL_POINTER_POSITION
		{
			public POINT Position;
			public BOOL Visible;
		}
		[CRepr]
		public struct DXGI_OUTDUPL_POINTER_SHAPE_INFO
		{
			public uint32 Type;
			public uint32 Width;
			public uint32 Height;
			public uint32 Pitch;
			public POINT HotSpot;
		}
		[CRepr]
		public struct DXGI_OUTDUPL_FRAME_INFO
		{
			public LARGE_INTEGER LastPresentTime;
			public LARGE_INTEGER LastMouseUpdateTime;
			public uint32 AccumulatedFrames;
			public BOOL RectsCoalesced;
			public BOOL ProtectedContentMaskedOut;
			public DXGI_OUTDUPL_POINTER_POSITION PointerPosition;
			public uint32 TotalMetadataBufferSize;
			public uint32 PointerShapeBufferSize;
		}
		[CRepr]
		public struct DXGI_MODE_DESC1
		{
			public uint32 Width;
			public uint32 Height;
			public DXGI_RATIONAL RefreshRate;
			public DXGI_FORMAT Format;
			public DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
			public DXGI_MODE_SCALING Scaling;
			public BOOL Stereo;
		}
		[CRepr]
		public struct DXGI_SWAP_CHAIN_DESC1
		{
			public uint32 Width;
			public uint32 Height;
			public DXGI_FORMAT Format;
			public BOOL Stereo;
			public DXGI_SAMPLE_DESC SampleDesc;
			public uint32 BufferUsage;
			public uint32 BufferCount;
			public DXGI_SCALING Scaling;
			public DXGI_SWAP_EFFECT SwapEffect;
			public DXGI_ALPHA_MODE AlphaMode;
			public uint32 Flags;
		}
		[CRepr]
		public struct DXGI_SWAP_CHAIN_FULLSCREEN_DESC
		{
			public DXGI_RATIONAL RefreshRate;
			public DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
			public DXGI_MODE_SCALING Scaling;
			public BOOL Windowed;
		}
		[CRepr]
		public struct DXGI_PRESENT_PARAMETERS
		{
			public uint32 DirtyRectsCount;
			public RECT* pDirtyRects;
			public RECT* pScrollRect;
			public POINT* pScrollOffset;
		}
		[CRepr]
		public struct DXGI_ADAPTER_DESC2
		{
			public char16[128] Description;
			public uint32 VendorId;
			public uint32 DeviceId;
			public uint32 SubSysId;
			public uint32 Revision;
			public uint DedicatedVideoMemory;
			public uint DedicatedSystemMemory;
			public uint SharedSystemMemory;
			public LUID AdapterLuid;
			public uint32 Flags;
			public DXGI_GRAPHICS_PREEMPTION_GRANULARITY GraphicsPreemptionGranularity;
			public DXGI_COMPUTE_PREEMPTION_GRANULARITY ComputePreemptionGranularity;
		}
		[CRepr]
		public struct DXGI_MATRIX_3X2_F
		{
			public float _11;
			public float _12;
			public float _21;
			public float _22;
			public float _31;
			public float _32;
		}
		[CRepr]
		public struct DXGI_DECODE_SWAP_CHAIN_DESC
		{
			public uint32 Flags;
		}
		[CRepr]
		public struct DXGI_FRAME_STATISTICS_MEDIA
		{
			public uint32 PresentCount;
			public uint32 PresentRefreshCount;
			public uint32 SyncRefreshCount;
			public LARGE_INTEGER SyncQPCTime;
			public LARGE_INTEGER SyncGPUTime;
			public DXGI_FRAME_PRESENTATION_MODE CompositionMode;
			public uint32 ApprovedPresentDuration;
		}
		[CRepr]
		public struct DXGI_QUERY_VIDEO_MEMORY_INFO
		{
			public uint64 Budget;
			public uint64 CurrentUsage;
			public uint64 AvailableForReservation;
			public uint64 CurrentReservation;
		}
		[CRepr]
		public struct DXGI_HDR_METADATA_HDR10
		{
			public uint16[2] RedPrimary;
			public uint16[2] GreenPrimary;
			public uint16[2] BluePrimary;
			public uint16[2] WhitePoint;
			public uint32 MaxMasteringLuminance;
			public uint32 MinMasteringLuminance;
			public uint16 MaxContentLightLevel;
			public uint16 MaxFrameAverageLightLevel;
		}
		[CRepr]
		public struct DXGI_HDR_METADATA_HDR10PLUS
		{
			public uint8[72] Data;
		}
		[CRepr]
		public struct DXGI_ADAPTER_DESC3
		{
			public char16[128] Description;
			public uint32 VendorId;
			public uint32 DeviceId;
			public uint32 SubSysId;
			public uint32 Revision;
			public uint DedicatedVideoMemory;
			public uint DedicatedSystemMemory;
			public uint SharedSystemMemory;
			public LUID AdapterLuid;
			public DXGI_ADAPTER_FLAG3 Flags;
			public DXGI_GRAPHICS_PREEMPTION_GRANULARITY GraphicsPreemptionGranularity;
			public DXGI_COMPUTE_PREEMPTION_GRANULARITY ComputePreemptionGranularity;
		}
		[CRepr]
		public struct DXGI_OUTPUT_DESC1
		{
			public char16[32] DeviceName;
			public RECT DesktopCoordinates;
			public BOOL AttachedToDesktop;
			public DXGI_MODE_ROTATION Rotation;
			public HMONITOR Monitor;
			public uint32 BitsPerColor;
			public DXGI_COLOR_SPACE_TYPE ColorSpace;
			public float[2] RedPrimary;
			public float[2] GreenPrimary;
			public float[2] BluePrimary;
			public float[2] WhitePoint;
			public float MinLuminance;
			public float MaxLuminance;
			public float MaxFullFrameLuminance;
		}
		[CRepr]
		public struct DXGI_INFO_QUEUE_MESSAGE
		{
			public Guid Producer;
			public DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category;
			public DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity;
			public int32 ID;
			public uint8* pDescription;
			public uint DescriptionByteLength;
		}
		[CRepr]
		public struct DXGI_INFO_QUEUE_FILTER_DESC
		{
			public uint32 NumCategories;
			public DXGI_INFO_QUEUE_MESSAGE_CATEGORY* pCategoryList;
			public uint32 NumSeverities;
			public DXGI_INFO_QUEUE_MESSAGE_SEVERITY* pSeverityList;
			public uint32 NumIDs;
			public int32* pIDList;
		}
		[CRepr]
		public struct DXGI_INFO_QUEUE_FILTER
		{
			public DXGI_INFO_QUEUE_FILTER_DESC AllowList;
			public DXGI_INFO_QUEUE_FILTER_DESC DenyList;
		}
		
		// --- COM Interfaces ---
		
		public struct IDXGIObject {}
		public struct IDXGIDeviceSubObject {}
		public struct IDXGIResource {}
		public struct IDXGIKeyedMutex {}
		public struct IDXGISurface {}
		public struct IDXGISurface1 {}
		public struct IDXGIAdapter {}
		public struct IDXGIOutput {}
		public struct IDXGISwapChain {}
		public struct IDXGIFactory {}
		public struct IDXGIDevice {}
		public struct IDXGIFactory1 {}
		public struct IDXGIAdapter1 {}
		public struct IDXGIDevice1 {}
		public struct IDXGIDisplayControl {}
		public struct IDXGIOutputDuplication {}
		public struct IDXGISurface2 {}
		public struct IDXGIResource1 {}
		public struct IDXGIDevice2 {}
		public struct IDXGISwapChain1 {}
		public struct IDXGIFactory2 {}
		public struct IDXGIAdapter2 {}
		public struct IDXGIOutput1 {}
		public struct IDXGIDevice3 {}
		public struct IDXGISwapChain2 {}
		public struct IDXGIOutput2 {}
		public struct IDXGIFactory3 {}
		public struct IDXGIDecodeSwapChain {}
		public struct IDXGIFactoryMedia {}
		public struct IDXGISwapChainMedia {}
		public struct IDXGIOutput3 {}
		public struct IDXGISwapChain3 {}
		public struct IDXGIOutput4 {}
		public struct IDXGIFactory4 {}
		public struct IDXGIAdapter3 {}
		public struct IDXGIOutput5 {}
		public struct IDXGISwapChain4 {}
		public struct IDXGIDevice4 {}
		public struct IDXGIFactory5 {}
		public struct IDXGIAdapter4 {}
		public struct IDXGIOutput6 {}
		public struct IDXGIFactory6 {}
		public struct IDXGIFactory7 {}
		public struct IDXGIInfoQueue {}
		public struct IDXGIDebug {}
		public struct IDXGIDebug1 {}
		public struct IDXGraphicsAnalysis {}
		
		// --- Functions ---
		
		[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDXGIFactory(Guid* riid, void** ppFactory);
		[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDXGIFactory1(Guid* riid, void** ppFactory);
		[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDXGIFactory2(uint32 Flags, Guid* riid, void** ppFactory);
		[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXGIGetDebugInterface1(uint32 Flags, Guid* riid, void** pDebug);
		[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXGIDeclareAdapterRemovalSupport();
		
	}
}
