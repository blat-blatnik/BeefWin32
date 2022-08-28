namespace Win32.Graphics.Dxgi;

using System;
using Win32.Foundation;
using Win32.Graphics.Dxgi.Common;
using Win32.Graphics.Gdi;
using Win32.Security;
using Win32.System.Com;

static
{
	#region Constants
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
	#endregion
	
	#region Enums
	public enum DXGI_RESOURCE_PRIORITY : uint32
	{
		MINIMUM = 671088640,
		LOW = 1342177280,
		NORMAL = 2013265920,
		HIGH = 2684354560,
		MAXIMUM = 3355443200,
	}
	public enum DXGI_RESIDENCY : int32
	{
		FULLY_RESIDENT = 1,
		RESIDENT_IN_SHARED_MEMORY = 2,
		EVICTED_TO_DISK = 3,
	}
	public enum DXGI_SWAP_EFFECT : int32
	{
		DISCARD = 0,
		SEQUENTIAL = 1,
		FLIP_SEQUENTIAL = 3,
		FLIP_DISCARD = 4,
	}
	public enum DXGI_SWAP_CHAIN_FLAG : int32
	{
		NONPREROTATED = 1,
		ALLOW_MODE_SWITCH = 2,
		GDI_COMPATIBLE = 4,
		RESTRICTED_CONTENT = 8,
		RESTRICT_SHARED_RESOURCE_DRIVER = 16,
		DISPLAY_ONLY = 32,
		FRAME_LATENCY_WAITABLE_OBJECT = 64,
		FOREGROUND_LAYER = 128,
		FULLSCREEN_VIDEO = 256,
		YUV_VIDEO = 512,
		HW_PROTECTED = 1024,
		ALLOW_TEARING = 2048,
		RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 4096,
	}
	public enum DXGI_ADAPTER_FLAG : uint32
	{
		NONE = 0,
		REMOTE = 1,
		SOFTWARE = 2,
	}
	public enum DXGI_OUTDUPL_POINTER_SHAPE_TYPE : int32
	{
		MONOCHROME = 1,
		COLOR = 2,
		MASKED_COLOR = 4,
	}
	public enum DXGI_OFFER_RESOURCE_PRIORITY : int32
	{
		LOW = 1,
		NORMAL = 2,
		HIGH = 3,
	}
	public enum DXGI_SCALING : int32
	{
		STRETCH = 0,
		NONE = 1,
		ASPECT_RATIO_STRETCH = 2,
	}
	public enum DXGI_GRAPHICS_PREEMPTION_GRANULARITY : int32
	{
		DMA_BUFFER_BOUNDARY = 0,
		PRIMITIVE_BOUNDARY = 1,
		TRIANGLE_BOUNDARY = 2,
		PIXEL_BOUNDARY = 3,
		INSTRUCTION_BOUNDARY = 4,
	}
	public enum DXGI_COMPUTE_PREEMPTION_GRANULARITY : int32
	{
		DMA_BUFFER_BOUNDARY = 0,
		DISPATCH_BOUNDARY = 1,
		THREAD_GROUP_BOUNDARY = 2,
		THREAD_BOUNDARY = 3,
		INSTRUCTION_BOUNDARY = 4,
	}
	public enum DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS : int32
	{
		NOMINAL_RANGE = 1,
		BT709 = 2,
		xvYCC = 4,
	}
	public enum DXGI_FRAME_PRESENTATION_MODE : int32
	{
		COMPOSED = 0,
		OVERLAY = 1,
		NONE = 2,
		COMPOSITION_FAILURE = 3,
	}
	public enum DXGI_OVERLAY_SUPPORT_FLAG : int32
	{
		DIRECT = 1,
		SCALING = 2,
	}
	public enum DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG : int32
	{
		PRESENT = 1,
		OVERLAY_PRESENT = 2,
	}
	public enum DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG : int32
	{
		FLAG_PRESENT = 1,
	}
	public enum DXGI_MEMORY_SEGMENT_GROUP : int32
	{
		LOCAL = 0,
		NON_LOCAL = 1,
	}
	public enum DXGI_OUTDUPL_FLAG : int32
	{
		COMPOSITED_UI_CAPTURE_ONLY = 1,
	}
	public enum DXGI_HDR_METADATA_TYPE : int32
	{
		NONE = 0,
		HDR10 = 1,
		HDR10PLUS = 2,
	}
	public enum DXGI_OFFER_RESOURCE_FLAGS : int32
	{
		FLAG_ALLOW_DECOMMIT = 1,
	}
	public enum DXGI_RECLAIM_RESOURCE_RESULTS : int32
	{
		OK = 0,
		DISCARDED = 1,
		NOT_COMMITTED = 2,
	}
	public enum DXGI_FEATURE : int32
	{
		FEATURE_PRESENT_ALLOW_TEARING = 0,
	}
	public enum DXGI_ADAPTER_FLAG3 : uint32
	{
		NONE = 0,
		REMOTE = 1,
		SOFTWARE = 2,
		ACG_COMPATIBLE = 4,
		SUPPORT_MONITORED_FENCES = 8,
		SUPPORT_NON_MONITORED_FENCES = 16,
		KEYED_MUTEX_CONFORMANCE = 32,
		FORCE_DWORD = 4294967295,
	}
	public enum DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAGS : uint32
	{
		FULLSCREEN = 1,
		WINDOWED = 2,
		CURSOR_STRETCHED = 4,
	}
	public enum DXGI_GPU_PREFERENCE : int32
	{
		UNSPECIFIED = 0,
		MINIMUM_POWER = 1,
		HIGH_PERFORMANCE = 2,
	}
	public enum DXGI_DEBUG_RLO_FLAGS : uint32
	{
		SUMMARY = 1,
		DETAIL = 2,
		IGNORE_INTERNAL = 4,
		ALL = 7,
	}
	public enum DXGI_INFO_QUEUE_MESSAGE_CATEGORY : int32
	{
		UNKNOWN = 0,
		MISCELLANEOUS = 1,
		INITIALIZATION = 2,
		CLEANUP = 3,
		COMPILATION = 4,
		STATE_CREATION = 5,
		STATE_SETTING = 6,
		STATE_GETTING = 7,
		RESOURCE_MANIPULATION = 8,
		EXECUTION = 9,
		SHADER = 10,
	}
	public enum DXGI_INFO_QUEUE_MESSAGE_SEVERITY : int32
	{
		CORRUPTION = 0,
		ERROR = 1,
		WARNING = 2,
		INFO = 3,
		MESSAGE = 4,
	}
	public enum DXGI_Message_Id : int32
	{
		IDXGISwapChain_CreationOrResizeBuffers_InvalidOutputWindow = 0,
		IDXGISwapChain_CreationOrResizeBuffers_BufferWidthInferred = 1,
		IDXGISwapChain_CreationOrResizeBuffers_BufferHeightInferred = 2,
		IDXGISwapChain_CreationOrResizeBuffers_NoScanoutFlagChanged = 3,
		IDXGISwapChain_Creation_MaxBufferCountExceeded = 4,
		IDXGISwapChain_Creation_TooFewBuffers = 5,
		IDXGISwapChain_Creation_NoOutputWindow = 6,
		IDXGISwapChain_Destruction_OtherMethodsCalled = 7,
		IDXGISwapChain_GetDesc_pDescIsNULL = 8,
		IDXGISwapChain_GetBuffer_ppSurfaceIsNULL = 9,
		IDXGISwapChain_GetBuffer_NoAllocatedBuffers = 10,
		IDXGISwapChain_GetBuffer_iBufferMustBeZero = 11,
		IDXGISwapChain_GetBuffer_iBufferOOB = 12,
		IDXGISwapChain_GetContainingOutput_ppOutputIsNULL = 13,
		IDXGISwapChain_Present_SyncIntervalOOB = 14,
		IDXGISwapChain_Present_InvalidNonPreRotatedFlag = 15,
		IDXGISwapChain_Present_NoAllocatedBuffers = 16,
		IDXGISwapChain_Present_GetDXGIAdapterFailed = 17,
		IDXGISwapChain_ResizeBuffers_BufferCountOOB = 18,
		IDXGISwapChain_ResizeBuffers_UnreleasedReferences = 19,
		IDXGISwapChain_ResizeBuffers_InvalidSwapChainFlag = 20,
		IDXGISwapChain_ResizeBuffers_InvalidNonPreRotatedFlag = 21,
		IDXGISwapChain_ResizeTarget_RefreshRateDivideByZero = 22,
		IDXGISwapChain_SetFullscreenState_InvalidTarget = 23,
		IDXGISwapChain_GetFrameStatistics_pStatsIsNULL = 24,
		IDXGISwapChain_GetLastPresentCount_pLastPresentCountIsNULL = 25,
		IDXGISwapChain_SetFullscreenState_RemoteNotSupported = 26,
		IDXGIOutput_TakeOwnership_FailedToAcquireFullscreenMutex = 27,
		IDXGIFactory_CreateSoftwareAdapter_ppAdapterInterfaceIsNULL = 28,
		IDXGIFactory_EnumAdapters_ppAdapterInterfaceIsNULL = 29,
		IDXGIFactory_CreateSwapChain_ppSwapChainIsNULL = 30,
		IDXGIFactory_CreateSwapChain_pDescIsNULL = 31,
		IDXGIFactory_CreateSwapChain_UnknownSwapEffect = 32,
		IDXGIFactory_CreateSwapChain_InvalidFlags = 33,
		IDXGIFactory_CreateSwapChain_NonPreRotatedFlagAndWindowed = 34,
		IDXGIFactory_CreateSwapChain_NullDeviceInterface = 35,
		IDXGIFactory_GetWindowAssociation_phWndIsNULL = 36,
		IDXGIFactory_MakeWindowAssociation_InvalidFlags = 37,
		IDXGISurface_Map_InvalidSurface = 38,
		IDXGISurface_Map_FlagsSetToZero = 39,
		IDXGISurface_Map_DiscardAndReadFlagSet = 40,
		IDXGISurface_Map_DiscardButNotWriteFlagSet = 41,
		IDXGISurface_Map_NoCPUAccess = 42,
		IDXGISurface_Map_ReadFlagSetButCPUAccessIsDynamic = 43,
		IDXGISurface_Map_DiscardFlagSetButCPUAccessIsNotDynamic = 44,
		IDXGIOutput_GetDisplayModeList_pNumModesIsNULL = 45,
		IDXGIOutput_FindClosestMatchingMode_ModeHasInvalidWidthOrHeight = 46,
		IDXGIOutput_GetCammaControlCapabilities_NoOwnerDevice = 47,
		IDXGIOutput_TakeOwnership_pDeviceIsNULL = 48,
		IDXGIOutput_GetDisplaySurfaceData_NoOwnerDevice = 49,
		IDXGIOutput_GetDisplaySurfaceData_pDestinationIsNULL = 50,
		IDXGIOutput_GetDisplaySurfaceData_MapOfDestinationFailed = 51,
		IDXGIOutput_GetFrameStatistics_NoOwnerDevice = 52,
		IDXGIOutput_GetFrameStatistics_pStatsIsNULL = 53,
		IDXGIOutput_SetGammaControl_NoOwnerDevice = 54,
		IDXGIOutput_GetGammaControl_NoOwnerDevice = 55,
		IDXGIOutput_GetGammaControl_NoGammaControls = 56,
		IDXGIOutput_SetDisplaySurface_IDXGIResourceNotSupportedBypPrimary = 57,
		IDXGIOutput_SetDisplaySurface_pPrimaryIsInvalid = 58,
		IDXGIOutput_SetDisplaySurface_NoOwnerDevice = 59,
		IDXGIOutput_TakeOwnership_RemoteDeviceNotSupported = 60,
		IDXGIOutput_GetDisplayModeList_RemoteDeviceNotSupported = 61,
		IDXGIOutput_FindClosestMatchingMode_RemoteDeviceNotSupported = 62,
		IDXGIDevice_CreateSurface_InvalidParametersWithpSharedResource = 63,
		IDXGIObject_GetPrivateData_puiDataSizeIsNULL = 64,
		IDXGISwapChain_Creation_InvalidOutputWindow = 65,
		IDXGISwapChain_Release_SwapChainIsFullscreen = 66,
		IDXGIOutput_GetDisplaySurfaceData_InvalidTargetSurfaceFormat = 67,
		IDXGIFactory_CreateSoftwareAdapter_ModuleIsNULL = 68,
		IDXGIOutput_FindClosestMatchingMode_IDXGIDeviceNotSupportedBypConcernedDevice = 69,
		IDXGIOutput_FindClosestMatchingMode_pModeToMatchOrpClosestMatchIsNULL = 70,
		IDXGIOutput_FindClosestMatchingMode_ModeHasRefreshRateDenominatorZero = 71,
		IDXGIOutput_FindClosestMatchingMode_UnknownFormatIsInvalidForConfiguration = 72,
		IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScanlineOrdering = 73,
		IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScaling = 74,
		IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeFormatAndDeviceCombination = 75,
		IDXGIFactory_Creation_CalledFromDllMain = 76,
		IDXGISwapChain_SetFullscreenState_OutputNotOwnedBySwapChainDevice = 77,
		IDXGISwapChain_Creation_InvalidWindowStyle = 78,
		IDXGISwapChain_GetFrameStatistics_UnsupportedStatistics = 79,
		IDXGISwapChain_GetContainingOutput_SwapchainAdapterDoesNotControlOutput = 80,
		IDXGIOutput_SetOrGetGammaControl_pArrayIsNULL = 81,
		IDXGISwapChain_SetFullscreenState_FullscreenInvalidForChildWindows = 82,
		IDXGIFactory_Release_CalledFromDllMain = 83,
		IDXGISwapChain_Present_UnreleasedHDC = 84,
		IDXGISwapChain_ResizeBuffers_NonPreRotatedAndGDICompatibleFlags = 85,
		IDXGIFactory_CreateSwapChain_NonPreRotatedAndGDICompatibleFlags = 86,
		IDXGISurface1_GetDC_pHdcIsNULL = 87,
		IDXGISurface1_GetDC_SurfaceNotTexture2D = 88,
		IDXGISurface1_GetDC_GDICompatibleFlagNotSet = 89,
		IDXGISurface1_GetDC_UnreleasedHDC = 90,
		IDXGISurface_Map_NoCPUAccess2 = 91,
		IDXGISurface1_ReleaseDC_GetDCNotCalled = 92,
		IDXGISurface1_ReleaseDC_InvalidRectangleDimensions = 93,
		IDXGIOutput_TakeOwnership_RemoteOutputNotSupported = 94,
		IDXGIOutput_FindClosestMatchingMode_RemoteOutputNotSupported = 95,
		IDXGIOutput_GetDisplayModeList_RemoteOutputNotSupported = 96,
		IDXGIFactory_CreateSwapChain_pDeviceHasMismatchedDXGIFactory = 97,
		IDXGISwapChain_Present_NonOptimalFSConfiguration = 98,
		IDXGIFactory_CreateSwapChain_FlipSequentialNotSupportedOnD3D10 = 99,
		IDXGIFactory_CreateSwapChain_BufferCountOOBForFlipSequential = 100,
		IDXGIFactory_CreateSwapChain_InvalidFormatForFlipSequential = 101,
		IDXGIFactory_CreateSwapChain_MultiSamplingNotSupportedForFlipSequential = 102,
		IDXGISwapChain_ResizeBuffers_BufferCountOOBForFlipSequential = 103,
		IDXGISwapChain_ResizeBuffers_InvalidFormatForFlipSequential = 104,
		IDXGISwapChain_Present_PartialPresentationBeforeStandardPresentation = 105,
		IDXGISwapChain_Present_FullscreenPartialPresentIsInvalid = 106,
		IDXGISwapChain_Present_InvalidPresentTestOrDoNotSequenceFlag = 107,
		IDXGISwapChain_Present_ScrollInfoWithNoDirtyRectsSpecified = 108,
		IDXGISwapChain_Present_EmptyScrollRect = 109,
		IDXGISwapChain_Present_ScrollRectOutOfBackbufferBounds = 110,
		IDXGISwapChain_Present_ScrollRectOutOfBackbufferBoundsWithOffset = 111,
		IDXGISwapChain_Present_EmptyDirtyRect = 112,
		IDXGISwapChain_Present_DirtyRectOutOfBackbufferBounds = 113,
		IDXGIFactory_CreateSwapChain_UnsupportedBufferUsageFlags = 114,
		IDXGISwapChain_Present_DoNotSequenceFlagSetButPreviousBufferIsUndefined = 115,
		IDXGISwapChain_Present_UnsupportedFlags = 116,
		IDXGISwapChain_Present_FlipModelChainMustResizeOrCreateOnFSTransition = 117,
		IDXGIFactory_CreateSwapChain_pRestrictToOutputFromOtherIDXGIFactory = 118,
		IDXGIFactory_CreateSwapChain_RestrictOutputNotSupportedOnAdapter = 119,
		IDXGISwapChain_Present_RestrictToOutputFlagSetButInvalidpRestrictToOutput = 120,
		IDXGISwapChain_Present_RestrictToOutputFlagdWithFullscreen = 121,
		IDXGISwapChain_Present_RestrictOutputFlagWithStaleSwapChain = 122,
		IDXGISwapChain_Present_OtherFlagsCausingInvalidPresentTestFlag = 123,
		IDXGIFactory_CreateSwapChain_UnavailableInSession0 = 124,
		IDXGIFactory_MakeWindowAssociation_UnavailableInSession0 = 125,
		IDXGIFactory_GetWindowAssociation_UnavailableInSession0 = 126,
		IDXGIAdapter_EnumOutputs_UnavailableInSession0 = 127,
		IDXGISwapChain_CreationOrSetFullscreenState_StereoDisabled = 128,
		IDXGIFactory2_UnregisterStatus_CookieNotFound = 129,
		IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFSOrOverlay = 130,
		IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFlipSequential = 131,
		IDXGISwapChain_Present_ProtectedContentWithRDPDriver = 132,
		IDXGISwapChain_Present_ProtectedContentInWindowedModeWithDWMOffOrInvalidDisplayAffinity = 133,
		IDXGIFactory_CreateSwapChainForComposition_WidthOrHeightIsZero = 134,
		IDXGIFactory_CreateSwapChainForComposition_OnlyFlipSequentialSupported = 135,
		IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnAdapter = 136,
		IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnWindows7 = 137,
		IDXGISwapChain_SetFullscreenState_FSTransitionWithCompositionSwapChain = 138,
		IDXGISwapChain_ResizeTarget_InvalidWithCompositionSwapChain = 139,
		IDXGISwapChain_ResizeBuffers_WidthOrHeightIsZero = 140,
		IDXGIFactory_CreateSwapChain_ScalingNoneIsFlipModelOnly = 141,
		IDXGIFactory_CreateSwapChain_ScalingUnrecognized = 142,
		IDXGIFactory_CreateSwapChain_DisplayOnlyFullscreenUnsupported = 143,
		IDXGIFactory_CreateSwapChain_DisplayOnlyUnsupported = 144,
		IDXGISwapChain_Present_RestartIsFullscreenOnly = 145,
		IDXGISwapChain_Present_ProtectedWindowlessPresentationRequiresDisplayOnly = 146,
		IDXGISwapChain_SetFullscreenState_DisplayOnlyUnsupported = 147,
		IDXGISwapChain1_SetBackgroundColor_OutOfRange = 148,
		IDXGISwapChain_ResizeBuffers_DisplayOnlyFullscreenUnsupported = 149,
		IDXGISwapChain_ResizeBuffers_DisplayOnlyUnsupported = 150,
		IDXGISwapchain_Present_ScrollUnsupported = 151,
		IDXGISwapChain1_SetRotation_UnsupportedOS = 152,
		IDXGISwapChain1_GetRotation_UnsupportedOS = 153,
		IDXGISwapchain_Present_FullscreenRotation = 154,
		IDXGISwapChain_Present_PartialPresentationWithMSAABuffers = 155,
		IDXGISwapChain1_SetRotation_FlipSequentialRequired = 156,
		IDXGISwapChain1_SetRotation_InvalidRotation = 157,
		IDXGISwapChain1_GetRotation_FlipSequentialRequired = 158,
		IDXGISwapChain_GetHwnd_WrongType = 159,
		IDXGISwapChain_GetCompositionSurface_WrongType = 160,
		IDXGISwapChain_GetCoreWindow_WrongType = 161,
		IDXGISwapChain_GetFullscreenDesc_NonHwnd = 162,
		IDXGISwapChain_SetFullscreenState_CoreWindow = 163,
		IDXGIFactory2_CreateSwapChainForCoreWindow_UnsupportedOnWindows7 = 164,
		IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsNULL = 165,
		IDXGIFactory_CreateSwapChain_FSUnsupportedForModernApps = 166,
		IDXGIFactory_MakeWindowAssociation_ModernApp = 167,
		IDXGISwapChain_ResizeTarget_ModernApp = 168,
		IDXGISwapChain_ResizeTarget_pNewTargetParametersIsNULL = 169,
		IDXGIOutput_SetDisplaySurface_ModernApp = 170,
		IDXGIOutput_TakeOwnership_ModernApp = 171,
		IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsInvalid = 172,
		IDXGIFactory2_CreateSwapChainForCompositionSurface_InvalidHandle = 173,
		IDXGISurface1_GetDC_ModernApp = 174,
		IDXGIFactory_CreateSwapChain_ScalingNoneRequiresWindows8OrNewer = 175,
		IDXGISwapChain_Present_TemporaryMonoAndPreferRight = 176,
		IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithDoNotSequence = 177,
		IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithoutStereo = 178,
		IDXGISwapChain_Present_TemporaryMonoUnsupported = 179,
		IDXGIOutput_GetDisplaySurfaceData_ArraySizeMismatch = 180,
		IDXGISwapChain_Present_PartialPresentationWithSwapEffectDiscard = 181,
		IDXGIFactory_CreateSwapChain_AlphaUnrecognized = 182,
		IDXGIFactory_CreateSwapChain_AlphaIsWindowlessOnly = 183,
		IDXGIFactory_CreateSwapChain_AlphaIsFlipModelOnly = 184,
		IDXGIFactory_CreateSwapChain_RestrictToOutputAdapterMismatch = 185,
		IDXGIFactory_CreateSwapChain_DisplayOnlyOnLegacy = 186,
		IDXGISwapChain_ResizeBuffers_DisplayOnlyOnLegacy = 187,
		IDXGIResource1_CreateSubresourceSurface_InvalidIndex = 188,
		IDXGIFactory_CreateSwapChainForComposition_InvalidScaling = 189,
		IDXGIFactory_CreateSwapChainForCoreWindow_InvalidSwapEffect = 190,
		IDXGIResource1_CreateSharedHandle_UnsupportedOS = 191,
		IDXGIFactory2_RegisterOcclusionStatusWindow_UnsupportedOS = 192,
		IDXGIFactory2_RegisterOcclusionStatusEvent_UnsupportedOS = 193,
		IDXGIOutput1_DuplicateOutput_UnsupportedOS = 194,
		IDXGIDisplayControl_IsStereoEnabled_UnsupportedOS = 195,
		IDXGIFactory_CreateSwapChainForComposition_InvalidAlphaMode = 196,
		IDXGIFactory_GetSharedResourceAdapterLuid_InvalidResource = 197,
		IDXGIFactory_GetSharedResourceAdapterLuid_InvalidLUID = 198,
		IDXGIFactory_GetSharedResourceAdapterLuid_UnsupportedOS = 199,
		IDXGIOutput1_GetDisplaySurfaceData1_2DOnly = 200,
		IDXGIOutput1_GetDisplaySurfaceData1_StagingOnly = 201,
		IDXGIOutput1_GetDisplaySurfaceData1_NeedCPUAccessWrite = 202,
		IDXGIOutput1_GetDisplaySurfaceData1_NoShared = 203,
		IDXGIOutput1_GetDisplaySurfaceData1_OnlyMipLevels1 = 204,
		IDXGIOutput1_GetDisplaySurfaceData1_MappedOrOfferedResource = 205,
		IDXGISwapChain_SetFullscreenState_FSUnsupportedForModernApps = 206,
		IDXGIFactory_CreateSwapChain_FailedToGoFSButNonPreRotated = 207,
		IDXGIFactory_CreateSwapChainOrRegisterOcclusionStatus_BlitModelUsedWhileRegisteredForOcclusionStatusEvents = 208,
		IDXGISwapChain_Present_BlitModelUsedWhileRegisteredForOcclusionStatusEvents = 209,
		IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreFlipModelOnly = 210,
		IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreNotFullscreen = 211,
		IDXGISwapChain_SetFullscreenState_Waitable = 212,
		IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveWaitableFlag = 213,
		IDXGISwapChain_GetFrameLatencyWaitableObject_OnlyWaitable = 214,
		IDXGISwapChain_GetMaximumFrameLatency_OnlyWaitable = 215,
		IDXGISwapChain_GetMaximumFrameLatency_pMaxLatencyIsNULL = 216,
		IDXGISwapChain_SetMaximumFrameLatency_OnlyWaitable = 217,
		IDXGISwapChain_SetMaximumFrameLatency_MaxLatencyIsOutOfBounds = 218,
		IDXGIFactory_CreateSwapChain_ForegroundIsCoreWindowOnly = 219,
		IDXGIFactory2_CreateSwapChainForCoreWindow_ForegroundUnsupportedOnAdapter = 220,
		IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidScaling = 221,
		IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidAlphaMode = 222,
		IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveForegroundFlag = 223,
		IDXGISwapChain_SetMatrixTransform_MatrixPointerCannotBeNull = 224,
		IDXGISwapChain_SetMatrixTransform_RequiresCompositionSwapChain = 225,
		IDXGISwapChain_SetMatrixTransform_MatrixMustBeFinite = 226,
		IDXGISwapChain_SetMatrixTransform_MatrixMustBeTranslateAndOrScale = 227,
		IDXGISwapChain_GetMatrixTransform_MatrixPointerCannotBeNull = 228,
		IDXGISwapChain_GetMatrixTransform_RequiresCompositionSwapChain = 229,
		DXGIGetDebugInterface1_NULL_ppDebug = 230,
		DXGIGetDebugInterface1_InvalidFlags = 231,
		IDXGISwapChain_Present_Decode = 232,
		IDXGISwapChain_ResizeBuffers_Decode = 233,
		IDXGISwapChain_SetSourceSize_FlipModel = 234,
		IDXGISwapChain_SetSourceSize_Decode = 235,
		IDXGISwapChain_SetSourceSize_WidthHeight = 236,
		IDXGISwapChain_GetSourceSize_NullPointers = 237,
		IDXGISwapChain_GetSourceSize_Decode = 238,
		IDXGIDecodeSwapChain_SetColorSpace_InvalidFlags = 239,
		IDXGIDecodeSwapChain_SetSourceRect_InvalidRect = 240,
		IDXGIDecodeSwapChain_SetTargetRect_InvalidRect = 241,
		IDXGIDecodeSwapChain_SetDestSize_InvalidSize = 242,
		IDXGIDecodeSwapChain_GetSourceRect_InvalidPointer = 243,
		IDXGIDecodeSwapChain_GetTargetRect_InvalidPointer = 244,
		IDXGIDecodeSwapChain_GetDestSize_InvalidPointer = 245,
		IDXGISwapChain_PresentBuffer_YUV = 246,
		IDXGISwapChain_SetSourceSize_YUV = 247,
		IDXGISwapChain_GetSourceSize_YUV = 248,
		IDXGISwapChain_SetMatrixTransform_YUV = 249,
		IDXGISwapChain_GetMatrixTransform_YUV = 250,
		IDXGISwapChain_Present_PartialPresentation_YUV = 251,
		IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveFlag_YUV = 252,
		IDXGISwapChain_ResizeBuffers_Alignment_YUV = 253,
		IDXGIFactory_CreateSwapChain_ShaderInputUnsupported_YUV = 254,
		IDXGIOutput3_CheckOverlaySupport_NullPointers = 255,
		IDXGIOutput3_CheckOverlaySupport_IDXGIDeviceNotSupportedBypConcernedDevice = 256,
		IDXGIAdapter_EnumOutputs2_InvalidEnumOutputs2Flag = 257,
		IDXGISwapChain_CreationOrSetFullscreenState_FSUnsupportedForFlipDiscard = 258,
		IDXGIOutput4_CheckOverlayColorSpaceSupport_NullPointers = 259,
		IDXGIOutput4_CheckOverlayColorSpaceSupport_IDXGIDeviceNotSupportedBypConcernedDevice = 260,
		IDXGISwapChain3_CheckColorSpaceSupport_NullPointers = 261,
		IDXGISwapChain3_SetColorSpace1_InvalidColorSpace = 262,
		IDXGIFactory_CreateSwapChain_InvalidHwProtect = 263,
		IDXGIFactory_CreateSwapChain_HwProtectUnsupported = 264,
		IDXGISwapChain_ResizeBuffers_InvalidHwProtect = 265,
		IDXGISwapChain_ResizeBuffers_HwProtectUnsupported = 266,
		IDXGISwapChain_ResizeBuffers1_D3D12Only = 267,
		IDXGISwapChain_ResizeBuffers1_FlipModel = 268,
		IDXGISwapChain_ResizeBuffers1_NodeMaskAndQueueRequired = 269,
		IDXGISwapChain_CreateSwapChain_InvalidHwProtectGdiFlag = 270,
		IDXGISwapChain_ResizeBuffers_InvalidHwProtectGdiFlag = 271,
		IDXGIFactory_CreateSwapChain_10BitFormatNotSupported = 272,
		IDXGIFactory_CreateSwapChain_FlipSwapEffectRequired = 273,
		IDXGIFactory_CreateSwapChain_InvalidDevice = 274,
		IDXGIOutput_TakeOwnership_Unsupported = 275,
		IDXGIFactory_CreateSwapChain_InvalidQueue = 276,
		IDXGISwapChain3_ResizeBuffers1_InvalidQueue = 277,
		IDXGIFactory_CreateSwapChainForHwnd_InvalidScaling = 278,
		IDXGISwapChain3_SetHDRMetaData_InvalidSize = 279,
		IDXGISwapChain3_SetHDRMetaData_InvalidPointer = 280,
		IDXGISwapChain3_SetHDRMetaData_InvalidType = 281,
		IDXGISwapChain_Present_FullscreenAllowTearingIsInvalid = 282,
		IDXGISwapChain_Present_AllowTearingRequiresPresentIntervalZero = 283,
		IDXGISwapChain_Present_AllowTearingRequiresCreationFlag = 284,
		IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveAllowTearingFlag = 285,
		IDXGIFactory_CreateSwapChain_AllowTearingFlagIsFlipModelOnly = 286,
		IDXGIFactory_CheckFeatureSupport_InvalidFeature = 287,
		IDXGIFactory_CheckFeatureSupport_InvalidSize = 288,
		IDXGIOutput6_CheckHardwareCompositionSupport_NullPointer = 289,
		IDXGISwapChain_SetFullscreenState_PerMonitorDpiShimApplied = 290,
		IDXGIOutput_DuplicateOutput_PerMonitorDpiShimApplied = 291,
		IDXGIOutput_DuplicateOutput1_PerMonitorDpiRequired = 292,
		IDXGIFactory7_UnregisterAdaptersChangedEvent_CookieNotFound = 293,
		IDXGIFactory_CreateSwapChain_LegacyBltModelSwapEffect = 294,
		IDXGISwapChain4_SetHDRMetaData_MetadataUnchanged = 295,
		IDXGISwapChain_Present_11On12_Released_Resource = 296,
		IDXGIFactory_CreateSwapChain_MultipleSwapchainRefToSurface_DeferredDtr = 297,
		IDXGIFactory_MakeWindowAssociation_NoOpBehavior = 298,
		Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow = 1000,
		Phone_IDXGIFactory_CreateSwapChain_DISCARD_BufferCount = 1001,
		Phone_IDXGISwapChain_SetFullscreenState_NotAvailable = 1002,
		Phone_IDXGISwapChain_ResizeBuffers_NotAvailable = 1003,
		Phone_IDXGISwapChain_ResizeTarget_NotAvailable = 1004,
		Phone_IDXGISwapChain_Present_InvalidLayerIndex = 1005,
		Phone_IDXGISwapChain_Present_MultipleLayerIndex = 1006,
		Phone_IDXGISwapChain_Present_InvalidLayerFlag = 1007,
		Phone_IDXGISwapChain_Present_InvalidRotation = 1008,
		Phone_IDXGISwapChain_Present_InvalidBlend = 1009,
		Phone_IDXGISwapChain_Present_InvalidResource = 1010,
		Phone_IDXGISwapChain_Present_InvalidMultiPlaneOverlayResource = 1011,
		Phone_IDXGISwapChain_Present_InvalidIndexForPrimary = 1012,
		Phone_IDXGISwapChain_Present_InvalidIndexForOverlay = 1013,
		Phone_IDXGISwapChain_Present_InvalidSubResourceIndex = 1014,
		Phone_IDXGISwapChain_Present_InvalidSourceRect = 1015,
		Phone_IDXGISwapChain_Present_InvalidDestinationRect = 1016,
		Phone_IDXGISwapChain_Present_MultipleResource = 1017,
		Phone_IDXGISwapChain_Present_NotSharedResource = 1018,
		Phone_IDXGISwapChain_Present_InvalidFlag = 1019,
		Phone_IDXGISwapChain_Present_InvalidInterval = 1020,
		Phone_IDXGIFactory_CreateSwapChain_MSAA_NotSupported = 1021,
		Phone_IDXGIFactory_CreateSwapChain_ScalingAspectRatioStretch_Supported_ModernApp = 1022,
		Phone_IDXGISwapChain_GetFrameStatistics_NotAvailable_ModernApp = 1023,
		Phone_IDXGISwapChain_Present_ReplaceInterval0With1 = 1024,
		Phone_IDXGIFactory_CreateSwapChain_FailedRegisterWithCompositor = 1025,
		Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow_AtRendering = 1026,
		Phone_IDXGIFactory_CreateSwapChain_FLIP_SEQUENTIAL_BufferCount = 1027,
		Phone_IDXGIFactory_CreateSwapChain_FLIP_Modern_CoreWindow_Only = 1028,
		Phone_IDXGISwapChain_Present1_RequiresOverlays = 1029,
		Phone_IDXGISwapChain_SetBackgroundColor_FlipSequentialRequired = 1030,
		Phone_IDXGISwapChain_GetBackgroundColor_FlipSequentialRequired = 1031,
	}
	#endregion
	
	#region Structs
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
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IDXGIObject : IUnknown
	{
		public const new Guid IID = .(0xaec22fb8, 0x76f3, 0x4639, 0x9b, 0xe0, 0x28, 0xeb, 0x43, 0xa6, 0x7a, 0x2e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPrivateData(in Guid Name, uint32 DataSize, void* pData) mut => VT.SetPrivateData(ref this, Name, DataSize, pData);
		public HRESULT SetPrivateDataInterface(in Guid Name, IUnknown* pUnknown) mut => VT.SetPrivateDataInterface(ref this, Name, pUnknown);
		public HRESULT GetPrivateData(in Guid Name, out uint32 pDataSize, void* pData) mut => VT.GetPrivateData(ref this, Name, out pDataSize, pData);
		public HRESULT GetParent(in Guid riid, void** ppParent) mut => VT.GetParent(ref this, riid, ppParent);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIObject self, in Guid Name, uint32 DataSize, void* pData) SetPrivateData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIObject self, in Guid Name, IUnknown* pUnknown) SetPrivateDataInterface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIObject self, in Guid Name, out uint32 pDataSize, void* pData) GetPrivateData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIObject self, in Guid riid, void** ppParent) GetParent;
		}
	}
	[CRepr]
	public struct IDXGIDeviceSubObject : IDXGIObject
	{
		public const new Guid IID = .(0x3d3e0379, 0xf9de, 0x4d58, 0xbb, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDevice(in Guid riid, void** ppDevice) mut => VT.GetDevice(ref this, riid, ppDevice);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDeviceSubObject self, in Guid riid, void** ppDevice) GetDevice;
		}
	}
	[CRepr]
	public struct IDXGIResource : IDXGIDeviceSubObject
	{
		public const new Guid IID = .(0x035f3ab4, 0x482e, 0x4e50, 0xb4, 0x1f, 0x8a, 0x7f, 0x8b, 0xd8, 0x96, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSharedHandle(out HANDLE pSharedHandle) mut => VT.GetSharedHandle(ref this, out pSharedHandle);
		public HRESULT GetUsage(out uint32 pUsage) mut => VT.GetUsage(ref this, out pUsage);
		public HRESULT SetEvictionPriority(DXGI_RESOURCE_PRIORITY EvictionPriority) mut => VT.SetEvictionPriority(ref this, EvictionPriority);
		public HRESULT GetEvictionPriority(out uint32 pEvictionPriority) mut => VT.GetEvictionPriority(ref this, out pEvictionPriority);

		[CRepr]
		public struct VTable : IDXGIDeviceSubObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource self, out HANDLE pSharedHandle) GetSharedHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource self, out uint32 pUsage) GetUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource self, DXGI_RESOURCE_PRIORITY EvictionPriority) SetEvictionPriority;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource self, out uint32 pEvictionPriority) GetEvictionPriority;
		}
	}
	[CRepr]
	public struct IDXGIKeyedMutex : IDXGIDeviceSubObject
	{
		public const new Guid IID = .(0x9d8e1289, 0xd7b3, 0x465f, 0x81, 0x26, 0x25, 0x0e, 0x34, 0x9a, 0xf8, 0x5d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AcquireSync(uint64 Key, uint32 dwMilliseconds) mut => VT.AcquireSync(ref this, Key, dwMilliseconds);
		public HRESULT ReleaseSync(uint64 Key) mut => VT.ReleaseSync(ref this, Key);

		[CRepr]
		public struct VTable : IDXGIDeviceSubObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIKeyedMutex self, uint64 Key, uint32 dwMilliseconds) AcquireSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIKeyedMutex self, uint64 Key) ReleaseSync;
		}
	}
	[CRepr]
	public struct IDXGISurface : IDXGIDeviceSubObject
	{
		public const new Guid IID = .(0xcafcb56c, 0x6ac3, 0x4889, 0xbf, 0x47, 0x9e, 0x23, 0xbb, 0xd2, 0x60, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc(out DXGI_SURFACE_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
		public HRESULT Map(out DXGI_MAPPED_RECT pLockedRect, uint32 MapFlags) mut => VT.Map(ref this, out pLockedRect, MapFlags);
		public HRESULT Unmap() mut => VT.Unmap(ref this);

		[CRepr]
		public struct VTable : IDXGIDeviceSubObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface self, out DXGI_SURFACE_DESC pDesc) GetDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface self, out DXGI_MAPPED_RECT pLockedRect, uint32 MapFlags) Map;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface self) Unmap;
		}
	}
	[CRepr]
	public struct IDXGISurface1 : IDXGISurface
	{
		public const new Guid IID = .(0x4ae63092, 0x6327, 0x4c1b, 0x80, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDC(BOOL Discard, out HDC phdc) mut => VT.GetDC(ref this, Discard, out phdc);
		public HRESULT ReleaseDC(RECT* pDirtyRect) mut => VT.ReleaseDC(ref this, pDirtyRect);

		[CRepr]
		public struct VTable : IDXGISurface.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface1 self, BOOL Discard, out HDC phdc) GetDC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface1 self, RECT* pDirtyRect) ReleaseDC;
		}
	}
	[CRepr]
	public struct IDXGIAdapter : IDXGIObject
	{
		public const new Guid IID = .(0x2411e7e1, 0x12ac, 0x4ccf, 0xbd, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumOutputs(uint32 Output, out IDXGIOutput* ppOutput) mut => VT.EnumOutputs(ref this, Output, out ppOutput);
		public HRESULT GetDesc(out DXGI_ADAPTER_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
		public HRESULT CheckInterfaceSupport(in Guid InterfaceName, out LARGE_INTEGER pUMDVersion) mut => VT.CheckInterfaceSupport(ref this, InterfaceName, out pUMDVersion);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter self, uint32 Output, out IDXGIOutput* ppOutput) EnumOutputs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter self, out DXGI_ADAPTER_DESC pDesc) GetDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter self, in Guid InterfaceName, out LARGE_INTEGER pUMDVersion) CheckInterfaceSupport;
		}
	}
	[CRepr]
	public struct IDXGIOutput : IDXGIObject
	{
		public const new Guid IID = .(0xae02eedb, 0xc735, 0x4690, 0x8d, 0x52, 0x5a, 0x8d, 0xc2, 0x02, 0x13, 0xaa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc(out DXGI_OUTPUT_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
		public HRESULT GetDisplayModeList(DXGI_FORMAT EnumFormat, uint32 Flags, out uint32 pNumModes, DXGI_MODE_DESC* pDesc) mut => VT.GetDisplayModeList(ref this, EnumFormat, Flags, out pNumModes, pDesc);
		public HRESULT FindClosestMatchingMode(in DXGI_MODE_DESC pModeToMatch, out DXGI_MODE_DESC pClosestMatch, IUnknown* pConcernedDevice) mut => VT.FindClosestMatchingMode(ref this, pModeToMatch, out pClosestMatch, pConcernedDevice);
		public HRESULT WaitForVBlank() mut => VT.WaitForVBlank(ref this);
		public HRESULT TakeOwnership(ref IUnknown pDevice, BOOL Exclusive) mut => VT.TakeOwnership(ref this, ref pDevice, Exclusive);
		public void ReleaseOwnership() mut => VT.ReleaseOwnership(ref this);
		public HRESULT GetGammaControlCapabilities(out DXGI_GAMMA_CONTROL_CAPABILITIES pGammaCaps) mut => VT.GetGammaControlCapabilities(ref this, out pGammaCaps);
		public HRESULT SetGammaControl(in DXGI_GAMMA_CONTROL pArray) mut => VT.SetGammaControl(ref this, pArray);
		public HRESULT GetGammaControl(out DXGI_GAMMA_CONTROL pArray) mut => VT.GetGammaControl(ref this, out pArray);
		public HRESULT SetDisplaySurface(ref IDXGISurface pScanoutSurface) mut => VT.SetDisplaySurface(ref this, ref pScanoutSurface);
		public HRESULT GetDisplaySurfaceData(ref IDXGISurface pDestination) mut => VT.GetDisplaySurfaceData(ref this, ref pDestination);
		public HRESULT GetFrameStatistics(out DXGI_FRAME_STATISTICS pStats) mut => VT.GetFrameStatistics(ref this, out pStats);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, out DXGI_OUTPUT_DESC pDesc) GetDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, DXGI_FORMAT EnumFormat, uint32 Flags, out uint32 pNumModes, DXGI_MODE_DESC* pDesc) GetDisplayModeList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, in DXGI_MODE_DESC pModeToMatch, out DXGI_MODE_DESC pClosestMatch, IUnknown* pConcernedDevice) FindClosestMatchingMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self) WaitForVBlank;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, ref IUnknown pDevice, BOOL Exclusive) TakeOwnership;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIOutput self) ReleaseOwnership;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, out DXGI_GAMMA_CONTROL_CAPABILITIES pGammaCaps) GetGammaControlCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, in DXGI_GAMMA_CONTROL pArray) SetGammaControl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, out DXGI_GAMMA_CONTROL pArray) GetGammaControl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, ref IDXGISurface pScanoutSurface) SetDisplaySurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, ref IDXGISurface pDestination) GetDisplaySurfaceData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput self, out DXGI_FRAME_STATISTICS pStats) GetFrameStatistics;
		}
	}
	[CRepr]
	public struct IDXGISwapChain : IDXGIDeviceSubObject
	{
		public const new Guid IID = .(0x310d36a0, 0xd2e7, 0x4c0a, 0xaa, 0x04, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Present(uint32 SyncInterval, uint32 Flags) mut => VT.Present(ref this, SyncInterval, Flags);
		public HRESULT GetBuffer(uint32 Buffer, in Guid riid, void** ppSurface) mut => VT.GetBuffer(ref this, Buffer, riid, ppSurface);
		public HRESULT SetFullscreenState(BOOL Fullscreen, IDXGIOutput* pTarget) mut => VT.SetFullscreenState(ref this, Fullscreen, pTarget);
		public HRESULT GetFullscreenState(BOOL* pFullscreen, IDXGIOutput** ppTarget) mut => VT.GetFullscreenState(ref this, pFullscreen, ppTarget);
		public HRESULT GetDesc(out DXGI_SWAP_CHAIN_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
		public HRESULT ResizeBuffers(uint32 BufferCount, uint32 Width, uint32 Height, DXGI_FORMAT NewFormat, uint32 SwapChainFlags) mut => VT.ResizeBuffers(ref this, BufferCount, Width, Height, NewFormat, SwapChainFlags);
		public HRESULT ResizeTarget(in DXGI_MODE_DESC pNewTargetParameters) mut => VT.ResizeTarget(ref this, pNewTargetParameters);
		public HRESULT GetContainingOutput(out IDXGIOutput* ppOutput) mut => VT.GetContainingOutput(ref this, out ppOutput);
		public HRESULT GetFrameStatistics(out DXGI_FRAME_STATISTICS pStats) mut => VT.GetFrameStatistics(ref this, out pStats);
		public HRESULT GetLastPresentCount(out uint32 pLastPresentCount) mut => VT.GetLastPresentCount(ref this, out pLastPresentCount);

		[CRepr]
		public struct VTable : IDXGIDeviceSubObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, uint32 SyncInterval, uint32 Flags) Present;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, uint32 Buffer, in Guid riid, void** ppSurface) GetBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, BOOL Fullscreen, IDXGIOutput* pTarget) SetFullscreenState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, BOOL* pFullscreen, IDXGIOutput** ppTarget) GetFullscreenState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, out DXGI_SWAP_CHAIN_DESC pDesc) GetDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, uint32 BufferCount, uint32 Width, uint32 Height, DXGI_FORMAT NewFormat, uint32 SwapChainFlags) ResizeBuffers;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, in DXGI_MODE_DESC pNewTargetParameters) ResizeTarget;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, out IDXGIOutput* ppOutput) GetContainingOutput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, out DXGI_FRAME_STATISTICS pStats) GetFrameStatistics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain self, out uint32 pLastPresentCount) GetLastPresentCount;
		}
	}
	[CRepr]
	public struct IDXGIFactory : IDXGIObject
	{
		public const new Guid IID = .(0x7b7166ec, 0x21c7, 0x44ae, 0xb2, 0x1a, 0xc9, 0xae, 0x32, 0x1a, 0xe3, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumAdapters(uint32 Adapter, out IDXGIAdapter* ppAdapter) mut => VT.EnumAdapters(ref this, Adapter, out ppAdapter);
		public HRESULT MakeWindowAssociation(HWND WindowHandle, uint32 Flags) mut => VT.MakeWindowAssociation(ref this, WindowHandle, Flags);
		public HRESULT GetWindowAssociation(out HWND pWindowHandle) mut => VT.GetWindowAssociation(ref this, out pWindowHandle);
		public HRESULT CreateSwapChain(ref IUnknown pDevice, ref DXGI_SWAP_CHAIN_DESC pDesc, out IDXGISwapChain* ppSwapChain) mut => VT.CreateSwapChain(ref this, ref pDevice, ref pDesc, out ppSwapChain);
		public HRESULT CreateSoftwareAdapter(HINSTANCE Module, out IDXGIAdapter* ppAdapter) mut => VT.CreateSoftwareAdapter(ref this, Module, out ppAdapter);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory self, uint32 Adapter, out IDXGIAdapter* ppAdapter) EnumAdapters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory self, HWND WindowHandle, uint32 Flags) MakeWindowAssociation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory self, out HWND pWindowHandle) GetWindowAssociation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory self, ref IUnknown pDevice, ref DXGI_SWAP_CHAIN_DESC pDesc, out IDXGISwapChain* ppSwapChain) CreateSwapChain;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory self, HINSTANCE Module, out IDXGIAdapter* ppAdapter) CreateSoftwareAdapter;
		}
	}
	[CRepr]
	public struct IDXGIDevice : IDXGIObject
	{
		public const new Guid IID = .(0x54ec77fa, 0x1377, 0x44e6, 0x8c, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAdapter(out IDXGIAdapter* pAdapter) mut => VT.GetAdapter(ref this, out pAdapter);
		public HRESULT CreateSurface(in DXGI_SURFACE_DESC pDesc, uint32 NumSurfaces, uint32 Usage, DXGI_SHARED_RESOURCE* pSharedResource, IDXGISurface** ppSurface) mut => VT.CreateSurface(ref this, pDesc, NumSurfaces, Usage, pSharedResource, ppSurface);
		public HRESULT QueryResourceResidency(IUnknown** ppResources, DXGI_RESIDENCY* pResidencyStatus, uint32 NumResources) mut => VT.QueryResourceResidency(ref this, ppResources, pResidencyStatus, NumResources);
		public HRESULT SetGPUThreadPriority(int32 Priority) mut => VT.SetGPUThreadPriority(ref this, Priority);
		public HRESULT GetGPUThreadPriority(out int32 pPriority) mut => VT.GetGPUThreadPriority(ref this, out pPriority);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice self, out IDXGIAdapter* pAdapter) GetAdapter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice self, in DXGI_SURFACE_DESC pDesc, uint32 NumSurfaces, uint32 Usage, DXGI_SHARED_RESOURCE* pSharedResource, IDXGISurface** ppSurface) CreateSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice self, IUnknown** ppResources, DXGI_RESIDENCY* pResidencyStatus, uint32 NumResources) QueryResourceResidency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice self, int32 Priority) SetGPUThreadPriority;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice self, out int32 pPriority) GetGPUThreadPriority;
		}
	}
	[CRepr]
	public struct IDXGIFactory1 : IDXGIFactory
	{
		public const new Guid IID = .(0x770aae78, 0xf26f, 0x4dba, 0xa8, 0x29, 0x25, 0x3c, 0x83, 0xd1, 0xb3, 0x87);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumAdapters1(uint32 Adapter, out IDXGIAdapter1* ppAdapter) mut => VT.EnumAdapters1(ref this, Adapter, out ppAdapter);
		public BOOL IsCurrent() mut => VT.IsCurrent(ref this);

		[CRepr]
		public struct VTable : IDXGIFactory.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory1 self, uint32 Adapter, out IDXGIAdapter1* ppAdapter) EnumAdapters1;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIFactory1 self) IsCurrent;
		}
	}
	[CRepr]
	public struct IDXGIAdapter1 : IDXGIAdapter
	{
		public const new Guid IID = .(0x29038f61, 0x3839, 0x4626, 0x91, 0xfd, 0x08, 0x68, 0x79, 0x01, 0x1a, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc1(out DXGI_ADAPTER_DESC1 pDesc) mut => VT.GetDesc1(ref this, out pDesc);

		[CRepr]
		public struct VTable : IDXGIAdapter.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter1 self, out DXGI_ADAPTER_DESC1 pDesc) GetDesc1;
		}
	}
	[CRepr]
	public struct IDXGIDevice1 : IDXGIDevice
	{
		public const new Guid IID = .(0x77db970f, 0x6276, 0x48ba, 0xba, 0x28, 0x07, 0x01, 0x43, 0xb4, 0x39, 0x2c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMaximumFrameLatency(uint32 MaxLatency) mut => VT.SetMaximumFrameLatency(ref this, MaxLatency);
		public HRESULT GetMaximumFrameLatency(out uint32 pMaxLatency) mut => VT.GetMaximumFrameLatency(ref this, out pMaxLatency);

		[CRepr]
		public struct VTable : IDXGIDevice.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice1 self, uint32 MaxLatency) SetMaximumFrameLatency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice1 self, out uint32 pMaxLatency) GetMaximumFrameLatency;
		}
	}
	[CRepr]
	public struct IDXGIDisplayControl : IUnknown
	{
		public const new Guid IID = .(0xea9dbf1a, 0xc88e, 0x4486, 0x85, 0x4a, 0x98, 0xaa, 0x01, 0x38, 0xf3, 0x0c);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL IsStereoEnabled() mut => VT.IsStereoEnabled(ref this);
		public void SetStereoEnabled(BOOL enabled) mut => VT.SetStereoEnabled(ref this, enabled);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIDisplayControl self) IsStereoEnabled;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIDisplayControl self, BOOL enabled) SetStereoEnabled;
		}
	}
	[CRepr]
	public struct IDXGIOutputDuplication : IDXGIObject
	{
		public const new Guid IID = .(0x191cfac3, 0xa341, 0x470d, 0xb2, 0x6e, 0xa8, 0x64, 0xf4, 0x28, 0x31, 0x9c);
		
		public new VTable* VT { get => (.)vt; }
		
		public void GetDesc(out DXGI_OUTDUPL_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
		public HRESULT AcquireNextFrame(uint32 TimeoutInMilliseconds, out DXGI_OUTDUPL_FRAME_INFO pFrameInfo, out IDXGIResource* ppDesktopResource) mut => VT.AcquireNextFrame(ref this, TimeoutInMilliseconds, out pFrameInfo, out ppDesktopResource);
		public HRESULT GetFrameDirtyRects(uint32 DirtyRectsBufferSize, out RECT pDirtyRectsBuffer, out uint32 pDirtyRectsBufferSizeRequired) mut => VT.GetFrameDirtyRects(ref this, DirtyRectsBufferSize, out pDirtyRectsBuffer, out pDirtyRectsBufferSizeRequired);
		public HRESULT GetFrameMoveRects(uint32 MoveRectsBufferSize, out DXGI_OUTDUPL_MOVE_RECT pMoveRectBuffer, out uint32 pMoveRectsBufferSizeRequired) mut => VT.GetFrameMoveRects(ref this, MoveRectsBufferSize, out pMoveRectBuffer, out pMoveRectsBufferSizeRequired);
		public HRESULT GetFramePointerShape(uint32 PointerShapeBufferSize, void* pPointerShapeBuffer, out uint32 pPointerShapeBufferSizeRequired, out DXGI_OUTDUPL_POINTER_SHAPE_INFO pPointerShapeInfo) mut => VT.GetFramePointerShape(ref this, PointerShapeBufferSize, pPointerShapeBuffer, out pPointerShapeBufferSizeRequired, out pPointerShapeInfo);
		public HRESULT MapDesktopSurface(out DXGI_MAPPED_RECT pLockedRect) mut => VT.MapDesktopSurface(ref this, out pLockedRect);
		public HRESULT UnMapDesktopSurface() mut => VT.UnMapDesktopSurface(ref this);
		public HRESULT ReleaseFrame() mut => VT.ReleaseFrame(ref this);

		[CRepr]
		public struct VTable : IDXGIObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIOutputDuplication self, out DXGI_OUTDUPL_DESC pDesc) GetDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self, uint32 TimeoutInMilliseconds, out DXGI_OUTDUPL_FRAME_INFO pFrameInfo, out IDXGIResource* ppDesktopResource) AcquireNextFrame;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self, uint32 DirtyRectsBufferSize, out RECT pDirtyRectsBuffer, out uint32 pDirtyRectsBufferSizeRequired) GetFrameDirtyRects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self, uint32 MoveRectsBufferSize, out DXGI_OUTDUPL_MOVE_RECT pMoveRectBuffer, out uint32 pMoveRectsBufferSizeRequired) GetFrameMoveRects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self, uint32 PointerShapeBufferSize, void* pPointerShapeBuffer, out uint32 pPointerShapeBufferSizeRequired, out DXGI_OUTDUPL_POINTER_SHAPE_INFO pPointerShapeInfo) GetFramePointerShape;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self, out DXGI_MAPPED_RECT pLockedRect) MapDesktopSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self) UnMapDesktopSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutputDuplication self) ReleaseFrame;
		}
	}
	[CRepr]
	public struct IDXGISurface2 : IDXGISurface1
	{
		public const new Guid IID = .(0xaba496dd, 0xb617, 0x4cb8, 0xa8, 0x66, 0xbc, 0x44, 0xd7, 0xeb, 0x1f, 0xa2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetResource(in Guid riid, void** ppParentResource, out uint32 pSubresourceIndex) mut => VT.GetResource(ref this, riid, ppParentResource, out pSubresourceIndex);

		[CRepr]
		public struct VTable : IDXGISurface1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISurface2 self, in Guid riid, void** ppParentResource, out uint32 pSubresourceIndex) GetResource;
		}
	}
	[CRepr]
	public struct IDXGIResource1 : IDXGIResource
	{
		public const new Guid IID = .(0x30961379, 0x4609, 0x4a41, 0x99, 0x8e, 0x54, 0xfe, 0x56, 0x7e, 0xe0, 0xc1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateSubresourceSurface(uint32 index, out IDXGISurface2* ppSurface) mut => VT.CreateSubresourceSurface(ref this, index, out ppSurface);
		public HRESULT CreateSharedHandle(SECURITY_ATTRIBUTES* pAttributes, uint32 dwAccess, PWSTR lpName, out HANDLE pHandle) mut => VT.CreateSharedHandle(ref this, pAttributes, dwAccess, lpName, out pHandle);

		[CRepr]
		public struct VTable : IDXGIResource.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource1 self, uint32 index, out IDXGISurface2* ppSurface) CreateSubresourceSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIResource1 self, SECURITY_ATTRIBUTES* pAttributes, uint32 dwAccess, PWSTR lpName, out HANDLE pHandle) CreateSharedHandle;
		}
	}
	[CRepr]
	public struct IDXGIDevice2 : IDXGIDevice1
	{
		public const new Guid IID = .(0x05008617, 0xfbfd, 0x4051, 0xa7, 0x90, 0x14, 0x48, 0x84, 0xb4, 0xf6, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OfferResources(uint32 NumResources, IDXGIResource** ppResources, DXGI_OFFER_RESOURCE_PRIORITY Priority) mut => VT.OfferResources(ref this, NumResources, ppResources, Priority);
		public HRESULT ReclaimResources(uint32 NumResources, IDXGIResource** ppResources, BOOL* pDiscarded) mut => VT.ReclaimResources(ref this, NumResources, ppResources, pDiscarded);
		public HRESULT EnqueueSetEvent(HANDLE hEvent) mut => VT.EnqueueSetEvent(ref this, hEvent);

		[CRepr]
		public struct VTable : IDXGIDevice1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice2 self, uint32 NumResources, IDXGIResource** ppResources, DXGI_OFFER_RESOURCE_PRIORITY Priority) OfferResources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice2 self, uint32 NumResources, IDXGIResource** ppResources, BOOL* pDiscarded) ReclaimResources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice2 self, HANDLE hEvent) EnqueueSetEvent;
		}
	}
	[CRepr]
	public struct IDXGISwapChain1 : IDXGISwapChain
	{
		public const new Guid IID = .(0x790a45f7, 0x0d42, 0x4876, 0x98, 0x3a, 0x0a, 0x55, 0xcf, 0xe6, 0xf4, 0xaa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc1(out DXGI_SWAP_CHAIN_DESC1 pDesc) mut => VT.GetDesc1(ref this, out pDesc);
		public HRESULT GetFullscreenDesc(out DXGI_SWAP_CHAIN_FULLSCREEN_DESC pDesc) mut => VT.GetFullscreenDesc(ref this, out pDesc);
		public HRESULT GetHwnd(out HWND pHwnd) mut => VT.GetHwnd(ref this, out pHwnd);
		public HRESULT GetCoreWindow(in Guid refiid, void** ppUnk) mut => VT.GetCoreWindow(ref this, refiid, ppUnk);
		public HRESULT Present1(uint32 SyncInterval, uint32 PresentFlags, in DXGI_PRESENT_PARAMETERS pPresentParameters) mut => VT.Present1(ref this, SyncInterval, PresentFlags, pPresentParameters);
		public BOOL IsTemporaryMonoSupported() mut => VT.IsTemporaryMonoSupported(ref this);
		public HRESULT GetRestrictToOutput(out IDXGIOutput* ppRestrictToOutput) mut => VT.GetRestrictToOutput(ref this, out ppRestrictToOutput);
		public HRESULT SetBackgroundColor(in DXGI_RGBA pColor) mut => VT.SetBackgroundColor(ref this, pColor);
		public HRESULT GetBackgroundColor(out DXGI_RGBA pColor) mut => VT.GetBackgroundColor(ref this, out pColor);
		public HRESULT SetRotation(DXGI_MODE_ROTATION Rotation) mut => VT.SetRotation(ref this, Rotation);
		public HRESULT GetRotation(out DXGI_MODE_ROTATION pRotation) mut => VT.GetRotation(ref this, out pRotation);

		[CRepr]
		public struct VTable : IDXGISwapChain.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out DXGI_SWAP_CHAIN_DESC1 pDesc) GetDesc1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out DXGI_SWAP_CHAIN_FULLSCREEN_DESC pDesc) GetFullscreenDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out HWND pHwnd) GetHwnd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, in Guid refiid, void** ppUnk) GetCoreWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, uint32 SyncInterval, uint32 PresentFlags, in DXGI_PRESENT_PARAMETERS pPresentParameters) Present1;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGISwapChain1 self) IsTemporaryMonoSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out IDXGIOutput* ppRestrictToOutput) GetRestrictToOutput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, in DXGI_RGBA pColor) SetBackgroundColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out DXGI_RGBA pColor) GetBackgroundColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, DXGI_MODE_ROTATION Rotation) SetRotation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain1 self, out DXGI_MODE_ROTATION pRotation) GetRotation;
		}
	}
	[CRepr]
	public struct IDXGIFactory2 : IDXGIFactory1
	{
		public const new Guid IID = .(0x50c83a1c, 0xe072, 0x4c48, 0x87, 0xb0, 0x36, 0x30, 0xfa, 0x36, 0xa6, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL IsWindowedStereoEnabled() mut => VT.IsWindowedStereoEnabled(ref this);
		public HRESULT CreateSwapChainForHwnd(ref IUnknown pDevice, HWND hWnd, in DXGI_SWAP_CHAIN_DESC1 pDesc, DXGI_SWAP_CHAIN_FULLSCREEN_DESC* pFullscreenDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) mut => VT.CreateSwapChainForHwnd(ref this, ref pDevice, hWnd, pDesc, pFullscreenDesc, pRestrictToOutput, out ppSwapChain);
		public HRESULT CreateSwapChainForCoreWindow(ref IUnknown pDevice, ref IUnknown pWindow, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) mut => VT.CreateSwapChainForCoreWindow(ref this, ref pDevice, ref pWindow, pDesc, pRestrictToOutput, out ppSwapChain);
		public HRESULT GetSharedResourceAdapterLuid(HANDLE hResource, out LUID pLuid) mut => VT.GetSharedResourceAdapterLuid(ref this, hResource, out pLuid);
		public HRESULT RegisterStereoStatusWindow(HWND WindowHandle, uint32 wMsg, out uint32 pdwCookie) mut => VT.RegisterStereoStatusWindow(ref this, WindowHandle, wMsg, out pdwCookie);
		public HRESULT RegisterStereoStatusEvent(HANDLE hEvent, out uint32 pdwCookie) mut => VT.RegisterStereoStatusEvent(ref this, hEvent, out pdwCookie);
		public void UnregisterStereoStatus(uint32 dwCookie) mut => VT.UnregisterStereoStatus(ref this, dwCookie);
		public HRESULT RegisterOcclusionStatusWindow(HWND WindowHandle, uint32 wMsg, out uint32 pdwCookie) mut => VT.RegisterOcclusionStatusWindow(ref this, WindowHandle, wMsg, out pdwCookie);
		public HRESULT RegisterOcclusionStatusEvent(HANDLE hEvent, out uint32 pdwCookie) mut => VT.RegisterOcclusionStatusEvent(ref this, hEvent, out pdwCookie);
		public void UnregisterOcclusionStatus(uint32 dwCookie) mut => VT.UnregisterOcclusionStatus(ref this, dwCookie);
		public HRESULT CreateSwapChainForComposition(ref IUnknown pDevice, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) mut => VT.CreateSwapChainForComposition(ref this, ref pDevice, pDesc, pRestrictToOutput, out ppSwapChain);

		[CRepr]
		public struct VTable : IDXGIFactory1.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIFactory2 self) IsWindowedStereoEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, ref IUnknown pDevice, HWND hWnd, in DXGI_SWAP_CHAIN_DESC1 pDesc, DXGI_SWAP_CHAIN_FULLSCREEN_DESC* pFullscreenDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) CreateSwapChainForHwnd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, ref IUnknown pDevice, ref IUnknown pWindow, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) CreateSwapChainForCoreWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, HANDLE hResource, out LUID pLuid) GetSharedResourceAdapterLuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, HWND WindowHandle, uint32 wMsg, out uint32 pdwCookie) RegisterStereoStatusWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, HANDLE hEvent, out uint32 pdwCookie) RegisterStereoStatusEvent;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIFactory2 self, uint32 dwCookie) UnregisterStereoStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, HWND WindowHandle, uint32 wMsg, out uint32 pdwCookie) RegisterOcclusionStatusWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, HANDLE hEvent, out uint32 pdwCookie) RegisterOcclusionStatusEvent;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIFactory2 self, uint32 dwCookie) UnregisterOcclusionStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory2 self, ref IUnknown pDevice, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) CreateSwapChainForComposition;
		}
	}
	[CRepr]
	public struct IDXGIAdapter2 : IDXGIAdapter1
	{
		public const new Guid IID = .(0x0aa1ae0a, 0xfa0e, 0x4b84, 0x86, 0x44, 0xe0, 0x5f, 0xf8, 0xe5, 0xac, 0xb5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc2(out DXGI_ADAPTER_DESC2 pDesc) mut => VT.GetDesc2(ref this, out pDesc);

		[CRepr]
		public struct VTable : IDXGIAdapter1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter2 self, out DXGI_ADAPTER_DESC2 pDesc) GetDesc2;
		}
	}
	[CRepr]
	public struct IDXGIOutput1 : IDXGIOutput
	{
		public const new Guid IID = .(0x00cddea8, 0x939b, 0x4b83, 0xa3, 0x40, 0xa6, 0x85, 0x22, 0x66, 0x66, 0xcc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDisplayModeList1(DXGI_FORMAT EnumFormat, uint32 Flags, out uint32 pNumModes, DXGI_MODE_DESC1* pDesc) mut => VT.GetDisplayModeList1(ref this, EnumFormat, Flags, out pNumModes, pDesc);
		public HRESULT FindClosestMatchingMode1(in DXGI_MODE_DESC1 pModeToMatch, out DXGI_MODE_DESC1 pClosestMatch, IUnknown* pConcernedDevice) mut => VT.FindClosestMatchingMode1(ref this, pModeToMatch, out pClosestMatch, pConcernedDevice);
		public HRESULT GetDisplaySurfaceData1(ref IDXGIResource pDestination) mut => VT.GetDisplaySurfaceData1(ref this, ref pDestination);
		public HRESULT DuplicateOutput(ref IUnknown pDevice, out IDXGIOutputDuplication* ppOutputDuplication) mut => VT.DuplicateOutput(ref this, ref pDevice, out ppOutputDuplication);

		[CRepr]
		public struct VTable : IDXGIOutput.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput1 self, DXGI_FORMAT EnumFormat, uint32 Flags, out uint32 pNumModes, DXGI_MODE_DESC1* pDesc) GetDisplayModeList1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput1 self, in DXGI_MODE_DESC1 pModeToMatch, out DXGI_MODE_DESC1 pClosestMatch, IUnknown* pConcernedDevice) FindClosestMatchingMode1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput1 self, ref IDXGIResource pDestination) GetDisplaySurfaceData1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput1 self, ref IUnknown pDevice, out IDXGIOutputDuplication* ppOutputDuplication) DuplicateOutput;
		}
	}
	[CRepr]
	public struct IDXGIDevice3 : IDXGIDevice2
	{
		public const new Guid IID = .(0x6007896c, 0x3244, 0x4afd, 0xbf, 0x18, 0xa6, 0xd3, 0xbe, 0xda, 0x50, 0x23);
		
		public new VTable* VT { get => (.)vt; }
		
		public void Trim() mut => VT.Trim(ref this);

		[CRepr]
		public struct VTable : IDXGIDevice2.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIDevice3 self) Trim;
		}
	}
	[CRepr]
	public struct IDXGISwapChain2 : IDXGISwapChain1
	{
		public const new Guid IID = .(0xa8be2ac4, 0x199f, 0x4946, 0xb3, 0x31, 0x79, 0x59, 0x9f, 0xb9, 0x8d, 0xe7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSourceSize(uint32 Width, uint32 Height) mut => VT.SetSourceSize(ref this, Width, Height);
		public HRESULT GetSourceSize(out uint32 pWidth, out uint32 pHeight) mut => VT.GetSourceSize(ref this, out pWidth, out pHeight);
		public HRESULT SetMaximumFrameLatency(uint32 MaxLatency) mut => VT.SetMaximumFrameLatency(ref this, MaxLatency);
		public HRESULT GetMaximumFrameLatency(out uint32 pMaxLatency) mut => VT.GetMaximumFrameLatency(ref this, out pMaxLatency);
		public HANDLE GetFrameLatencyWaitableObject() mut => VT.GetFrameLatencyWaitableObject(ref this);
		public HRESULT SetMatrixTransform(in DXGI_MATRIX_3X2_F pMatrix) mut => VT.SetMatrixTransform(ref this, pMatrix);
		public HRESULT GetMatrixTransform(out DXGI_MATRIX_3X2_F pMatrix) mut => VT.GetMatrixTransform(ref this, out pMatrix);

		[CRepr]
		public struct VTable : IDXGISwapChain1.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, uint32 Width, uint32 Height) SetSourceSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, out uint32 pWidth, out uint32 pHeight) GetSourceSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, uint32 MaxLatency) SetMaximumFrameLatency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, out uint32 pMaxLatency) GetMaximumFrameLatency;
			public new function [CallingConvention(.Stdcall)] HANDLE(ref IDXGISwapChain2 self) GetFrameLatencyWaitableObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, in DXGI_MATRIX_3X2_F pMatrix) SetMatrixTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain2 self, out DXGI_MATRIX_3X2_F pMatrix) GetMatrixTransform;
		}
	}
	[CRepr]
	public struct IDXGIOutput2 : IDXGIOutput1
	{
		public const new Guid IID = .(0x595e39d1, 0x2724, 0x4663, 0x99, 0xb1, 0xda, 0x96, 0x9d, 0xe2, 0x83, 0x64);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL SupportsOverlays() mut => VT.SupportsOverlays(ref this);

		[CRepr]
		public struct VTable : IDXGIOutput1.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIOutput2 self) SupportsOverlays;
		}
	}
	[CRepr]
	public struct IDXGIFactory3 : IDXGIFactory2
	{
		public const new Guid IID = .(0x25483823, 0xcd46, 0x4c7d, 0x86, 0xca, 0x47, 0xaa, 0x95, 0xb8, 0x37, 0xbd);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetCreationFlags() mut => VT.GetCreationFlags(ref this);

		[CRepr]
		public struct VTable : IDXGIFactory2.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDXGIFactory3 self) GetCreationFlags;
		}
	}
	[CRepr]
	public struct IDXGIDecodeSwapChain : IUnknown
	{
		public const new Guid IID = .(0x2633066b, 0x4514, 0x4c7a, 0x8f, 0xd8, 0x12, 0xea, 0x98, 0x05, 0x9d, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PresentBuffer(uint32 BufferToPresent, uint32 SyncInterval, uint32 Flags) mut => VT.PresentBuffer(ref this, BufferToPresent, SyncInterval, Flags);
		public HRESULT SetSourceRect(in RECT pRect) mut => VT.SetSourceRect(ref this, pRect);
		public HRESULT SetTargetRect(in RECT pRect) mut => VT.SetTargetRect(ref this, pRect);
		public HRESULT SetDestSize(uint32 Width, uint32 Height) mut => VT.SetDestSize(ref this, Width, Height);
		public HRESULT GetSourceRect(out RECT pRect) mut => VT.GetSourceRect(ref this, out pRect);
		public HRESULT GetTargetRect(out RECT pRect) mut => VT.GetTargetRect(ref this, out pRect);
		public HRESULT GetDestSize(out uint32 pWidth, out uint32 pHeight) mut => VT.GetDestSize(ref this, out pWidth, out pHeight);
		public HRESULT SetColorSpace(DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS ColorSpace) mut => VT.SetColorSpace(ref this, ColorSpace);
		public DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS GetColorSpace() mut => VT.GetColorSpace(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, uint32 BufferToPresent, uint32 SyncInterval, uint32 Flags) PresentBuffer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, in RECT pRect) SetSourceRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, in RECT pRect) SetTargetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, uint32 Width, uint32 Height) SetDestSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, out RECT pRect) GetSourceRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, out RECT pRect) GetTargetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, out uint32 pWidth, out uint32 pHeight) GetDestSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDecodeSwapChain self, DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS ColorSpace) SetColorSpace;
			public new function [CallingConvention(.Stdcall)] DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS(ref IDXGIDecodeSwapChain self) GetColorSpace;
		}
	}
	[CRepr]
	public struct IDXGIFactoryMedia : IUnknown
	{
		public const new Guid IID = .(0x41e7d1f2, 0xa591, 0x4f7b, 0xa2, 0xe5, 0xfa, 0x9c, 0x84, 0x3e, 0x1c, 0x12);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateSwapChainForCompositionSurfaceHandle(ref IUnknown pDevice, HANDLE hSurface, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) mut => VT.CreateSwapChainForCompositionSurfaceHandle(ref this, ref pDevice, hSurface, pDesc, pRestrictToOutput, out ppSwapChain);
		public HRESULT CreateDecodeSwapChainForCompositionSurfaceHandle(ref IUnknown pDevice, HANDLE hSurface, ref DXGI_DECODE_SWAP_CHAIN_DESC pDesc, ref IDXGIResource pYuvDecodeBuffers, IDXGIOutput* pRestrictToOutput, out IDXGIDecodeSwapChain* ppSwapChain) mut => VT.CreateDecodeSwapChainForCompositionSurfaceHandle(ref this, ref pDevice, hSurface, ref pDesc, ref pYuvDecodeBuffers, pRestrictToOutput, out ppSwapChain);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactoryMedia self, ref IUnknown pDevice, HANDLE hSurface, in DXGI_SWAP_CHAIN_DESC1 pDesc, IDXGIOutput* pRestrictToOutput, out IDXGISwapChain1* ppSwapChain) CreateSwapChainForCompositionSurfaceHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactoryMedia self, ref IUnknown pDevice, HANDLE hSurface, ref DXGI_DECODE_SWAP_CHAIN_DESC pDesc, ref IDXGIResource pYuvDecodeBuffers, IDXGIOutput* pRestrictToOutput, out IDXGIDecodeSwapChain* ppSwapChain) CreateDecodeSwapChainForCompositionSurfaceHandle;
		}
	}
	[CRepr]
	public struct IDXGISwapChainMedia : IUnknown
	{
		public const new Guid IID = .(0xdd95b90b, 0xf05f, 0x4f6a, 0xbd, 0x65, 0x25, 0xbf, 0xb2, 0x64, 0xbd, 0x84);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFrameStatisticsMedia(out DXGI_FRAME_STATISTICS_MEDIA pStats) mut => VT.GetFrameStatisticsMedia(ref this, out pStats);
		public HRESULT SetPresentDuration(uint32 Duration) mut => VT.SetPresentDuration(ref this, Duration);
		public HRESULT CheckPresentDurationSupport(uint32 DesiredPresentDuration, out uint32 pClosestSmallerPresentDuration, out uint32 pClosestLargerPresentDuration) mut => VT.CheckPresentDurationSupport(ref this, DesiredPresentDuration, out pClosestSmallerPresentDuration, out pClosestLargerPresentDuration);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChainMedia self, out DXGI_FRAME_STATISTICS_MEDIA pStats) GetFrameStatisticsMedia;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChainMedia self, uint32 Duration) SetPresentDuration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChainMedia self, uint32 DesiredPresentDuration, out uint32 pClosestSmallerPresentDuration, out uint32 pClosestLargerPresentDuration) CheckPresentDurationSupport;
		}
	}
	[CRepr]
	public struct IDXGIOutput3 : IDXGIOutput2
	{
		public const new Guid IID = .(0x8a6bb301, 0x7e7e, 0x41f4, 0xa8, 0xe0, 0x5b, 0x32, 0xf7, 0xf9, 0x9b, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CheckOverlaySupport(DXGI_FORMAT EnumFormat, ref IUnknown pConcernedDevice, out uint32 pFlags) mut => VT.CheckOverlaySupport(ref this, EnumFormat, ref pConcernedDevice, out pFlags);

		[CRepr]
		public struct VTable : IDXGIOutput2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput3 self, DXGI_FORMAT EnumFormat, ref IUnknown pConcernedDevice, out uint32 pFlags) CheckOverlaySupport;
		}
	}
	[CRepr]
	public struct IDXGISwapChain3 : IDXGISwapChain2
	{
		public const new Guid IID = .(0x94d99bdb, 0xf1f8, 0x4ab0, 0xb2, 0x36, 0x7d, 0xa0, 0x17, 0x0e, 0xda, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetCurrentBackBufferIndex() mut => VT.GetCurrentBackBufferIndex(ref this);
		public HRESULT CheckColorSpaceSupport(DXGI_COLOR_SPACE_TYPE ColorSpace, out uint32 pColorSpaceSupport) mut => VT.CheckColorSpaceSupport(ref this, ColorSpace, out pColorSpaceSupport);
		public HRESULT SetColorSpace1(DXGI_COLOR_SPACE_TYPE ColorSpace) mut => VT.SetColorSpace1(ref this, ColorSpace);
		public HRESULT ResizeBuffers1(uint32 BufferCount, uint32 Width, uint32 Height, DXGI_FORMAT Format, uint32 SwapChainFlags, uint32* pCreationNodeMask, IUnknown** ppPresentQueue) mut => VT.ResizeBuffers1(ref this, BufferCount, Width, Height, Format, SwapChainFlags, pCreationNodeMask, ppPresentQueue);

		[CRepr]
		public struct VTable : IDXGISwapChain2.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IDXGISwapChain3 self) GetCurrentBackBufferIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain3 self, DXGI_COLOR_SPACE_TYPE ColorSpace, out uint32 pColorSpaceSupport) CheckColorSpaceSupport;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain3 self, DXGI_COLOR_SPACE_TYPE ColorSpace) SetColorSpace1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain3 self, uint32 BufferCount, uint32 Width, uint32 Height, DXGI_FORMAT Format, uint32 SwapChainFlags, uint32* pCreationNodeMask, IUnknown** ppPresentQueue) ResizeBuffers1;
		}
	}
	[CRepr]
	public struct IDXGIOutput4 : IDXGIOutput3
	{
		public const new Guid IID = .(0xdc7dca35, 0x2196, 0x414d, 0x9f, 0x53, 0x61, 0x78, 0x84, 0x03, 0x2a, 0x60);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CheckOverlayColorSpaceSupport(DXGI_FORMAT Format, DXGI_COLOR_SPACE_TYPE ColorSpace, ref IUnknown pConcernedDevice, out uint32 pFlags) mut => VT.CheckOverlayColorSpaceSupport(ref this, Format, ColorSpace, ref pConcernedDevice, out pFlags);

		[CRepr]
		public struct VTable : IDXGIOutput3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput4 self, DXGI_FORMAT Format, DXGI_COLOR_SPACE_TYPE ColorSpace, ref IUnknown pConcernedDevice, out uint32 pFlags) CheckOverlayColorSpaceSupport;
		}
	}
	[CRepr]
	public struct IDXGIFactory4 : IDXGIFactory3
	{
		public const new Guid IID = .(0x1bc6ea02, 0xef36, 0x464f, 0xbf, 0x0c, 0x21, 0xca, 0x39, 0xe5, 0x16, 0x8a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumAdapterByLuid(LUID AdapterLuid, in Guid riid, void** ppvAdapter) mut => VT.EnumAdapterByLuid(ref this, AdapterLuid, riid, ppvAdapter);
		public HRESULT EnumWarpAdapter(in Guid riid, void** ppvAdapter) mut => VT.EnumWarpAdapter(ref this, riid, ppvAdapter);

		[CRepr]
		public struct VTable : IDXGIFactory3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory4 self, LUID AdapterLuid, in Guid riid, void** ppvAdapter) EnumAdapterByLuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory4 self, in Guid riid, void** ppvAdapter) EnumWarpAdapter;
		}
	}
	[CRepr]
	public struct IDXGIAdapter3 : IDXGIAdapter2
	{
		public const new Guid IID = .(0x645967a4, 0x1392, 0x4310, 0xa7, 0x98, 0x80, 0x53, 0xce, 0x3e, 0x93, 0xfd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterHardwareContentProtectionTeardownStatusEvent(HANDLE hEvent, out uint32 pdwCookie) mut => VT.RegisterHardwareContentProtectionTeardownStatusEvent(ref this, hEvent, out pdwCookie);
		public void UnregisterHardwareContentProtectionTeardownStatus(uint32 dwCookie) mut => VT.UnregisterHardwareContentProtectionTeardownStatus(ref this, dwCookie);
		public HRESULT QueryVideoMemoryInfo(uint32 NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, out DXGI_QUERY_VIDEO_MEMORY_INFO pVideoMemoryInfo) mut => VT.QueryVideoMemoryInfo(ref this, NodeIndex, MemorySegmentGroup, out pVideoMemoryInfo);
		public HRESULT SetVideoMemoryReservation(uint32 NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, uint64 Reservation) mut => VT.SetVideoMemoryReservation(ref this, NodeIndex, MemorySegmentGroup, Reservation);
		public HRESULT RegisterVideoMemoryBudgetChangeNotificationEvent(HANDLE hEvent, out uint32 pdwCookie) mut => VT.RegisterVideoMemoryBudgetChangeNotificationEvent(ref this, hEvent, out pdwCookie);
		public void UnregisterVideoMemoryBudgetChangeNotification(uint32 dwCookie) mut => VT.UnregisterVideoMemoryBudgetChangeNotification(ref this, dwCookie);

		[CRepr]
		public struct VTable : IDXGIAdapter2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter3 self, HANDLE hEvent, out uint32 pdwCookie) RegisterHardwareContentProtectionTeardownStatusEvent;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIAdapter3 self, uint32 dwCookie) UnregisterHardwareContentProtectionTeardownStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter3 self, uint32 NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, out DXGI_QUERY_VIDEO_MEMORY_INFO pVideoMemoryInfo) QueryVideoMemoryInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter3 self, uint32 NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, uint64 Reservation) SetVideoMemoryReservation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter3 self, HANDLE hEvent, out uint32 pdwCookie) RegisterVideoMemoryBudgetChangeNotificationEvent;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIAdapter3 self, uint32 dwCookie) UnregisterVideoMemoryBudgetChangeNotification;
		}
	}
	[CRepr]
	public struct IDXGIOutput5 : IDXGIOutput4
	{
		public const new Guid IID = .(0x80a07424, 0xab52, 0x42eb, 0x83, 0x3c, 0x0c, 0x42, 0xfd, 0x28, 0x2d, 0x98);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DuplicateOutput1(ref IUnknown pDevice, uint32 Flags, uint32 SupportedFormatsCount, DXGI_FORMAT* pSupportedFormats, out IDXGIOutputDuplication* ppOutputDuplication) mut => VT.DuplicateOutput1(ref this, ref pDevice, Flags, SupportedFormatsCount, pSupportedFormats, out ppOutputDuplication);

		[CRepr]
		public struct VTable : IDXGIOutput4.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput5 self, ref IUnknown pDevice, uint32 Flags, uint32 SupportedFormatsCount, DXGI_FORMAT* pSupportedFormats, out IDXGIOutputDuplication* ppOutputDuplication) DuplicateOutput1;
		}
	}
	[CRepr]
	public struct IDXGISwapChain4 : IDXGISwapChain3
	{
		public const new Guid IID = .(0x3d585d5a, 0xbd4a, 0x489e, 0xb1, 0xf4, 0x3d, 0xbc, 0xb6, 0x45, 0x2f, 0xfb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetHDRMetaData(DXGI_HDR_METADATA_TYPE Type, uint32 Size, void* pMetaData) mut => VT.SetHDRMetaData(ref this, Type, Size, pMetaData);

		[CRepr]
		public struct VTable : IDXGISwapChain3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGISwapChain4 self, DXGI_HDR_METADATA_TYPE Type, uint32 Size, void* pMetaData) SetHDRMetaData;
		}
	}
	[CRepr]
	public struct IDXGIDevice4 : IDXGIDevice3
	{
		public const new Guid IID = .(0x95b4f95f, 0xd8da, 0x4ca4, 0x9e, 0xe6, 0x3b, 0x76, 0xd5, 0x96, 0x8a, 0x10);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OfferResources1(uint32 NumResources, IDXGIResource** ppResources, DXGI_OFFER_RESOURCE_PRIORITY Priority, uint32 Flags) mut => VT.OfferResources1(ref this, NumResources, ppResources, Priority, Flags);
		public HRESULT ReclaimResources1(uint32 NumResources, IDXGIResource** ppResources, out DXGI_RECLAIM_RESOURCE_RESULTS pResults) mut => VT.ReclaimResources1(ref this, NumResources, ppResources, out pResults);

		[CRepr]
		public struct VTable : IDXGIDevice3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice4 self, uint32 NumResources, IDXGIResource** ppResources, DXGI_OFFER_RESOURCE_PRIORITY Priority, uint32 Flags) OfferResources1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDevice4 self, uint32 NumResources, IDXGIResource** ppResources, out DXGI_RECLAIM_RESOURCE_RESULTS pResults) ReclaimResources1;
		}
	}
	[CRepr]
	public struct IDXGIFactory5 : IDXGIFactory4
	{
		public const new Guid IID = .(0x7632e1f5, 0xee65, 0x4dca, 0x87, 0xfd, 0x84, 0xcd, 0x75, 0xf8, 0x83, 0x8d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CheckFeatureSupport(DXGI_FEATURE Feature, void* pFeatureSupportData, uint32 FeatureSupportDataSize) mut => VT.CheckFeatureSupport(ref this, Feature, pFeatureSupportData, FeatureSupportDataSize);

		[CRepr]
		public struct VTable : IDXGIFactory4.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory5 self, DXGI_FEATURE Feature, void* pFeatureSupportData, uint32 FeatureSupportDataSize) CheckFeatureSupport;
		}
	}
	[CRepr]
	public struct IDXGIAdapter4 : IDXGIAdapter3
	{
		public const new Guid IID = .(0x3c8d99d1, 0x4fbf, 0x4181, 0xa8, 0x2c, 0xaf, 0x66, 0xbf, 0x7b, 0xd2, 0x4e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc3(out DXGI_ADAPTER_DESC3 pDesc) mut => VT.GetDesc3(ref this, out pDesc);

		[CRepr]
		public struct VTable : IDXGIAdapter3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIAdapter4 self, out DXGI_ADAPTER_DESC3 pDesc) GetDesc3;
		}
	}
	[CRepr]
	public struct IDXGIOutput6 : IDXGIOutput5
	{
		public const new Guid IID = .(0x068346e8, 0xaaec, 0x4b84, 0xad, 0xd7, 0x13, 0x7f, 0x51, 0x3f, 0x77, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDesc1(out DXGI_OUTPUT_DESC1 pDesc) mut => VT.GetDesc1(ref this, out pDesc);
		public HRESULT CheckHardwareCompositionSupport(out uint32 pFlags) mut => VT.CheckHardwareCompositionSupport(ref this, out pFlags);

		[CRepr]
		public struct VTable : IDXGIOutput5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput6 self, out DXGI_OUTPUT_DESC1 pDesc) GetDesc1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIOutput6 self, out uint32 pFlags) CheckHardwareCompositionSupport;
		}
	}
	[CRepr]
	public struct IDXGIFactory6 : IDXGIFactory5
	{
		public const new Guid IID = .(0xc1b6694f, 0xff09, 0x44a9, 0xb0, 0x3c, 0x77, 0x90, 0x0a, 0x0a, 0x1d, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumAdapterByGpuPreference(uint32 Adapter, DXGI_GPU_PREFERENCE GpuPreference, in Guid riid, void** ppvAdapter) mut => VT.EnumAdapterByGpuPreference(ref this, Adapter, GpuPreference, riid, ppvAdapter);

		[CRepr]
		public struct VTable : IDXGIFactory5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory6 self, uint32 Adapter, DXGI_GPU_PREFERENCE GpuPreference, in Guid riid, void** ppvAdapter) EnumAdapterByGpuPreference;
		}
	}
	[CRepr]
	public struct IDXGIFactory7 : IDXGIFactory6
	{
		public const new Guid IID = .(0xa4966eed, 0x76db, 0x44da, 0x84, 0xc1, 0xee, 0x9a, 0x7a, 0xfb, 0x20, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterAdaptersChangedEvent(HANDLE hEvent, out uint32 pdwCookie) mut => VT.RegisterAdaptersChangedEvent(ref this, hEvent, out pdwCookie);
		public HRESULT UnregisterAdaptersChangedEvent(uint32 dwCookie) mut => VT.UnregisterAdaptersChangedEvent(ref this, dwCookie);

		[CRepr]
		public struct VTable : IDXGIFactory6.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory7 self, HANDLE hEvent, out uint32 pdwCookie) RegisterAdaptersChangedEvent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIFactory7 self, uint32 dwCookie) UnregisterAdaptersChangedEvent;
		}
	}
	[CRepr]
	public struct IDXGIInfoQueue : IUnknown
	{
		public const new Guid IID = .(0xd67441c7, 0x672a, 0x476f, 0x9e, 0x82, 0xcd, 0x55, 0xb4, 0x49, 0x49, 0xce);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMessageCountLimit(Guid Producer, uint64 MessageCountLimit) mut => VT.SetMessageCountLimit(ref this, Producer, MessageCountLimit);
		public void ClearStoredMessages(Guid Producer) mut => VT.ClearStoredMessages(ref this, Producer);
		public HRESULT GetMessage(Guid Producer, uint64 MessageIndex, DXGI_INFO_QUEUE_MESSAGE* pMessage, out uint pMessageByteLength) mut => VT.GetMessage(ref this, Producer, MessageIndex, pMessage, out pMessageByteLength);
		public uint64 GetNumStoredMessagesAllowedByRetrievalFilters(Guid Producer) mut => VT.GetNumStoredMessagesAllowedByRetrievalFilters(ref this, Producer);
		public uint64 GetNumStoredMessages(Guid Producer) mut => VT.GetNumStoredMessages(ref this, Producer);
		public uint64 GetNumMessagesDiscardedByMessageCountLimit(Guid Producer) mut => VT.GetNumMessagesDiscardedByMessageCountLimit(ref this, Producer);
		public uint64 GetMessageCountLimit(Guid Producer) mut => VT.GetMessageCountLimit(ref this, Producer);
		public uint64 GetNumMessagesAllowedByStorageFilter(Guid Producer) mut => VT.GetNumMessagesAllowedByStorageFilter(ref this, Producer);
		public uint64 GetNumMessagesDeniedByStorageFilter(Guid Producer) mut => VT.GetNumMessagesDeniedByStorageFilter(ref this, Producer);
		public HRESULT AddStorageFilterEntries(Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) mut => VT.AddStorageFilterEntries(ref this, Producer, ref pFilter);
		public HRESULT GetStorageFilter(Guid Producer, DXGI_INFO_QUEUE_FILTER* pFilter, out uint pFilterByteLength) mut => VT.GetStorageFilter(ref this, Producer, pFilter, out pFilterByteLength);
		public void ClearStorageFilter(Guid Producer) mut => VT.ClearStorageFilter(ref this, Producer);
		public HRESULT PushEmptyStorageFilter(Guid Producer) mut => VT.PushEmptyStorageFilter(ref this, Producer);
		public HRESULT PushDenyAllStorageFilter(Guid Producer) mut => VT.PushDenyAllStorageFilter(ref this, Producer);
		public HRESULT PushCopyOfStorageFilter(Guid Producer) mut => VT.PushCopyOfStorageFilter(ref this, Producer);
		public HRESULT PushStorageFilter(Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) mut => VT.PushStorageFilter(ref this, Producer, ref pFilter);
		public void PopStorageFilter(Guid Producer) mut => VT.PopStorageFilter(ref this, Producer);
		public uint32 GetStorageFilterStackSize(Guid Producer) mut => VT.GetStorageFilterStackSize(ref this, Producer);
		public HRESULT AddRetrievalFilterEntries(Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) mut => VT.AddRetrievalFilterEntries(ref this, Producer, ref pFilter);
		public HRESULT GetRetrievalFilter(Guid Producer, DXGI_INFO_QUEUE_FILTER* pFilter, out uint pFilterByteLength) mut => VT.GetRetrievalFilter(ref this, Producer, pFilter, out pFilterByteLength);
		public void ClearRetrievalFilter(Guid Producer) mut => VT.ClearRetrievalFilter(ref this, Producer);
		public HRESULT PushEmptyRetrievalFilter(Guid Producer) mut => VT.PushEmptyRetrievalFilter(ref this, Producer);
		public HRESULT PushDenyAllRetrievalFilter(Guid Producer) mut => VT.PushDenyAllRetrievalFilter(ref this, Producer);
		public HRESULT PushCopyOfRetrievalFilter(Guid Producer) mut => VT.PushCopyOfRetrievalFilter(ref this, Producer);
		public HRESULT PushRetrievalFilter(Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) mut => VT.PushRetrievalFilter(ref this, Producer, ref pFilter);
		public void PopRetrievalFilter(Guid Producer) mut => VT.PopRetrievalFilter(ref this, Producer);
		public uint32 GetRetrievalFilterStackSize(Guid Producer) mut => VT.GetRetrievalFilterStackSize(ref this, Producer);
		public HRESULT AddMessage(Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, int32 ID, PSTR pDescription) mut => VT.AddMessage(ref this, Producer, Category, Severity, ID, pDescription);
		public HRESULT AddApplicationMessage(DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, PSTR pDescription) mut => VT.AddApplicationMessage(ref this, Severity, pDescription);
		public HRESULT SetBreakOnCategory(Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category, BOOL bEnable) mut => VT.SetBreakOnCategory(ref this, Producer, Category, bEnable);
		public HRESULT SetBreakOnSeverity(Guid Producer, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, BOOL bEnable) mut => VT.SetBreakOnSeverity(ref this, Producer, Severity, bEnable);
		public HRESULT SetBreakOnID(Guid Producer, int32 ID, BOOL bEnable) mut => VT.SetBreakOnID(ref this, Producer, ID, bEnable);
		public BOOL GetBreakOnCategory(Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category) mut => VT.GetBreakOnCategory(ref this, Producer, Category);
		public BOOL GetBreakOnSeverity(Guid Producer, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity) mut => VT.GetBreakOnSeverity(ref this, Producer, Severity);
		public BOOL GetBreakOnID(Guid Producer, int32 ID) mut => VT.GetBreakOnID(ref this, Producer, ID);
		public void SetMuteDebugOutput(Guid Producer, BOOL bMute) mut => VT.SetMuteDebugOutput(ref this, Producer, bMute);
		public BOOL GetMuteDebugOutput(Guid Producer) mut => VT.GetMuteDebugOutput(ref this, Producer);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, uint64 MessageCountLimit) SetMessageCountLimit;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer) ClearStoredMessages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, uint64 MessageIndex, DXGI_INFO_QUEUE_MESSAGE* pMessage, out uint pMessageByteLength) GetMessage;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetNumStoredMessagesAllowedByRetrievalFilters;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetNumStoredMessages;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetNumMessagesDiscardedByMessageCountLimit;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetMessageCountLimit;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetNumMessagesAllowedByStorageFilter;
			public new function [CallingConvention(.Stdcall)] uint64(ref IDXGIInfoQueue self, Guid Producer) GetNumMessagesDeniedByStorageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) AddStorageFilterEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_FILTER* pFilter, out uint pFilterByteLength) GetStorageFilter;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer) ClearStorageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushEmptyStorageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushDenyAllStorageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushCopyOfStorageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) PushStorageFilter;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer) PopStorageFilter;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDXGIInfoQueue self, Guid Producer) GetStorageFilterStackSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) AddRetrievalFilterEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_FILTER* pFilter, out uint pFilterByteLength) GetRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer) ClearRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushEmptyRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushDenyAllRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer) PushCopyOfRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, ref DXGI_INFO_QUEUE_FILTER pFilter) PushRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer) PopRetrievalFilter;
			public new function [CallingConvention(.Stdcall)] uint32(ref IDXGIInfoQueue self, Guid Producer) GetRetrievalFilterStackSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, int32 ID, PSTR pDescription) AddMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, PSTR pDescription) AddApplicationMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category, BOOL bEnable) SetBreakOnCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity, BOOL bEnable) SetBreakOnSeverity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIInfoQueue self, Guid Producer, int32 ID, BOOL bEnable) SetBreakOnID;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_MESSAGE_CATEGORY Category) GetBreakOnCategory;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIInfoQueue self, Guid Producer, DXGI_INFO_QUEUE_MESSAGE_SEVERITY Severity) GetBreakOnSeverity;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIInfoQueue self, Guid Producer, int32 ID) GetBreakOnID;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIInfoQueue self, Guid Producer, BOOL bMute) SetMuteDebugOutput;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIInfoQueue self, Guid Producer) GetMuteDebugOutput;
		}
	}
	[CRepr]
	public struct IDXGIDebug : IUnknown
	{
		public const new Guid IID = .(0x119e7452, 0xde9e, 0x40fe, 0x88, 0x06, 0x88, 0xf9, 0x0c, 0x12, 0xb4, 0x41);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ReportLiveObjects(Guid apiid, DXGI_DEBUG_RLO_FLAGS flags) mut => VT.ReportLiveObjects(ref this, apiid, flags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXGIDebug self, Guid apiid, DXGI_DEBUG_RLO_FLAGS flags) ReportLiveObjects;
		}
	}
	[CRepr]
	public struct IDXGIDebug1 : IDXGIDebug
	{
		public const new Guid IID = .(0xc5a05f0c, 0x16f2, 0x4adf, 0x9f, 0x4d, 0xa8, 0xc4, 0xd5, 0x8a, 0xc5, 0x50);
		
		public new VTable* VT { get => (.)vt; }
		
		public void EnableLeakTrackingForThread() mut => VT.EnableLeakTrackingForThread(ref this);
		public void DisableLeakTrackingForThread() mut => VT.DisableLeakTrackingForThread(ref this);
		public BOOL IsLeakTrackingEnabledForThread() mut => VT.IsLeakTrackingEnabledForThread(ref this);

		[CRepr]
		public struct VTable : IDXGIDebug.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIDebug1 self) EnableLeakTrackingForThread;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGIDebug1 self) DisableLeakTrackingForThread;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IDXGIDebug1 self) IsLeakTrackingEnabledForThread;
		}
	}
	[CRepr]
	public struct IDXGraphicsAnalysis : IUnknown
	{
		public const new Guid IID = .(0x9f251514, 0x9d4d, 0x4902, 0x9d, 0x60, 0x18, 0x98, 0x8a, 0xb7, 0xd4, 0xb5);
		
		public new VTable* VT { get => (.)vt; }
		
		public void BeginCapture() mut => VT.BeginCapture(ref this);
		public void EndCapture() mut => VT.EndCapture(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IDXGraphicsAnalysis self) BeginCapture;
			public new function [CallingConvention(.Stdcall)] void(ref IDXGraphicsAnalysis self) EndCapture;
		}
	}
	#endregion
	
	#region Functions
	[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDXGIFactory(in Guid riid, void** ppFactory);
	[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDXGIFactory1(in Guid riid, void** ppFactory);
	[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDXGIFactory2(uint32 Flags, in Guid riid, void** ppFactory);
	[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DXGIGetDebugInterface1(uint32 Flags, in Guid riid, void** pDebug);
	[Import("dxgi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DXGIDeclareAdapterRemovalSupport();
	#endregion
}
