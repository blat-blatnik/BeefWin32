using System;

// namespace Graphics.DXCore
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 _FACDXCORE = 2176;
		public const Guid DXCORE_ADAPTER_ATTRIBUTE_D3D11_GRAPHICS = .(0x8c47866b, 0x7583, 0x450d, 0xf0, 0xf0, 0x6b, 0xad, 0xa8, 0x95, 0xaf, 0x4b);
		public const Guid DXCORE_ADAPTER_ATTRIBUTE_D3D12_GRAPHICS = .(0x0c9ece4d, 0x2f6e, 0x4f01, 0x8c, 0x96, 0xe8, 0x9e, 0x33, 0x1b, 0x47, 0xb1);
		public const Guid DXCORE_ADAPTER_ATTRIBUTE_D3D12_CORE_COMPUTE = .(0x248e2800, 0xa793, 0x4724, 0xab, 0xaa, 0x23, 0xa6, 0xde, 0x1b, 0xe0, 0x90);
		
		// --- Enums ---
		
		public enum DXCoreAdapterProperty : uint32
		{
			InstanceLuid = 0,
			DriverVersion = 1,
			DriverDescription = 2,
			HardwareID = 3,
			KmdModelVersion = 4,
			ComputePreemptionGranularity = 5,
			GraphicsPreemptionGranularity = 6,
			DedicatedAdapterMemory = 7,
			DedicatedSystemMemory = 8,
			SharedSystemMemory = 9,
			AcgCompatible = 10,
			IsHardware = 11,
			IsIntegrated = 12,
			IsDetachable = 13,
			HardwareIDParts = 14,
		}
		public enum DXCoreAdapterState : uint32
		{
			IsDriverUpdateInProgress = 0,
			AdapterMemoryBudget = 1,
		}
		public enum DXCoreSegmentGroup : uint32
		{
			Local = 0,
			NonLocal = 1,
		}
		public enum DXCoreNotificationType : uint32
		{
			ListStale = 0,
			NoLongerValid = 1,
			BudgetChange = 2,
			HardwareContentProtectionTeardown = 3,
		}
		public enum DXCoreAdapterPreference : uint32
		{
			Hardware = 0,
			MinimumPower = 1,
			HighPerformance = 2,
		}
		
		// --- Function Pointers ---
		
		public function void PFN_DXCORE_NOTIFICATION_CALLBACK(DXCoreNotificationType notificationType, ref IUnknown object, void* context);
		
		// --- Structs ---
		
		[CRepr]
		public struct DXCoreHardwareID
		{
			public uint32 vendorID;
			public uint32 deviceID;
			public uint32 subSysID;
			public uint32 revision;
		}
		[CRepr]
		public struct DXCoreHardwareIDParts
		{
			public uint32 vendorID;
			public uint32 deviceID;
			public uint32 subSystemID;
			public uint32 subVendorID;
			public uint32 revisionID;
		}
		[CRepr]
		public struct DXCoreAdapterMemoryBudgetNodeSegmentGroup
		{
			public uint32 nodeIndex;
			public DXCoreSegmentGroup segmentGroup;
		}
		[CRepr]
		public struct DXCoreAdapterMemoryBudget
		{
			public uint64 budget;
			public uint64 currentUsage;
			public uint64 availableForReservation;
			public uint64 currentReservation;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDXCoreAdapter : IUnknown
		{
			public const new Guid IID = .(0xf0db4c7f, 0xfe5a, 0x42a2, 0xbd, 0x62, 0xf2, 0xa6, 0xcf, 0x6f, 0xc8, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public Boolean IsValid() mut => VT.IsValid(ref this);
			public Boolean IsAttributeSupported(in Guid attributeGUID) mut => VT.IsAttributeSupported(ref this, attributeGUID);
			public Boolean IsPropertySupported(DXCoreAdapterProperty property) mut => VT.IsPropertySupported(ref this, property);
			public HRESULT GetProperty(DXCoreAdapterProperty property, uint bufferSize, void* propertyData) mut => VT.GetProperty(ref this, property, bufferSize, propertyData);
			public HRESULT GetPropertySize(DXCoreAdapterProperty property, out uint bufferSize) mut => VT.GetPropertySize(ref this, property, out bufferSize);
			public Boolean IsQueryStateSupported(DXCoreAdapterState property) mut => VT.IsQueryStateSupported(ref this, property);
			public HRESULT QueryState(DXCoreAdapterState state, uint inputStateDetailsSize, void* inputStateDetails, uint outputBufferSize, void* outputBuffer) mut => VT.QueryState(ref this, state, inputStateDetailsSize, inputStateDetails, outputBufferSize, outputBuffer);
			public Boolean IsSetStateSupported(DXCoreAdapterState property) mut => VT.IsSetStateSupported(ref this, property);
			public HRESULT SetState(DXCoreAdapterState state, uint inputStateDetailsSize, void* inputStateDetails, uint inputDataSize, void* inputData) mut => VT.SetState(ref this, state, inputStateDetailsSize, inputStateDetails, inputDataSize, inputData);
			public HRESULT GetFactory(in Guid riid, void** ppvFactory) mut => VT.GetFactory(ref this, riid, ppvFactory);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapter self) IsValid;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapter self, in Guid attributeGUID) IsAttributeSupported;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapter self, DXCoreAdapterProperty property) IsPropertySupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapter self, DXCoreAdapterProperty property, uint bufferSize, void* propertyData) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapter self, DXCoreAdapterProperty property, out uint bufferSize) GetPropertySize;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapter self, DXCoreAdapterState property) IsQueryStateSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapter self, DXCoreAdapterState state, uint inputStateDetailsSize, void* inputStateDetails, uint outputBufferSize, void* outputBuffer) QueryState;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapter self, DXCoreAdapterState property) IsSetStateSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapter self, DXCoreAdapterState state, uint inputStateDetailsSize, void* inputStateDetails, uint inputDataSize, void* inputData) SetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapter self, in Guid riid, void** ppvFactory) GetFactory;
			}
		}
		[CRepr]
		public struct IDXCoreAdapterList : IUnknown
		{
			public const new Guid IID = .(0x526c7776, 0x40e9, 0x459b, 0xb7, 0x11, 0xf3, 0x2a, 0xd7, 0x6d, 0xfc, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdapter(uint32 index, in Guid riid, void** ppvAdapter) mut => VT.GetAdapter(ref this, index, riid, ppvAdapter);
			public uint32 GetAdapterCount() mut => VT.GetAdapterCount(ref this);
			public Boolean IsStale() mut => VT.IsStale(ref this);
			public HRESULT GetFactory(in Guid riid, void** ppvFactory) mut => VT.GetFactory(ref this, riid, ppvFactory);
			public HRESULT Sort(uint32 numPreferences, DXCoreAdapterPreference* preferences) mut => VT.Sort(ref this, numPreferences, preferences);
			public Boolean IsAdapterPreferenceSupported(DXCoreAdapterPreference preference) mut => VT.IsAdapterPreferenceSupported(ref this, preference);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterList self, uint32 index, in Guid riid, void** ppvAdapter) GetAdapter;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDXCoreAdapterList self) GetAdapterCount;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapterList self) IsStale;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterList self, in Guid riid, void** ppvFactory) GetFactory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterList self, uint32 numPreferences, DXCoreAdapterPreference* preferences) Sort;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapterList self, DXCoreAdapterPreference preference) IsAdapterPreferenceSupported;
			}
		}
		[CRepr]
		public struct IDXCoreAdapterFactory : IUnknown
		{
			public const new Guid IID = .(0x78ee5945, 0xc36e, 0x4b13, 0xa6, 0x69, 0x00, 0x5d, 0xd1, 0x1c, 0x0f, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateAdapterList(uint32 numAttributes, Guid* filterAttributes, in Guid riid, void** ppvAdapterList) mut => VT.CreateAdapterList(ref this, numAttributes, filterAttributes, riid, ppvAdapterList);
			public HRESULT GetAdapterByLuid(in LUID adapterLUID, in Guid riid, void** ppvAdapter) mut => VT.GetAdapterByLuid(ref this, adapterLUID, riid, ppvAdapter);
			public Boolean IsNotificationTypeSupported(DXCoreNotificationType notificationType) mut => VT.IsNotificationTypeSupported(ref this, notificationType);
			public HRESULT RegisterEventNotification(ref IUnknown dxCoreObject, DXCoreNotificationType notificationType, PFN_DXCORE_NOTIFICATION_CALLBACK callbackFunction, void* callbackContext, out uint32 eventCookie) mut => VT.RegisterEventNotification(ref this, ref dxCoreObject, notificationType, callbackFunction, callbackContext, out eventCookie);
			public HRESULT UnregisterEventNotification(uint32 eventCookie) mut => VT.UnregisterEventNotification(ref this, eventCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterFactory self, uint32 numAttributes, Guid* filterAttributes, in Guid riid, void** ppvAdapterList) CreateAdapterList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterFactory self, in LUID adapterLUID, in Guid riid, void** ppvAdapter) GetAdapterByLuid;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IDXCoreAdapterFactory self, DXCoreNotificationType notificationType) IsNotificationTypeSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterFactory self, ref IUnknown dxCoreObject, DXCoreNotificationType notificationType, PFN_DXCORE_NOTIFICATION_CALLBACK callbackFunction, void* callbackContext, out uint32 eventCookie) RegisterEventNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDXCoreAdapterFactory self, uint32 eventCookie) UnregisterEventNotification;
			}
		}
		
		// --- Functions ---
		
		[Import("dxcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXCoreCreateAdapterFactory(in Guid riid, void** ppvFactory);
	}
}
