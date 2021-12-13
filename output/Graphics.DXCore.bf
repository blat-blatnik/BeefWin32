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
		
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DXCoreAdapterState : uint32
		{
			IsDriverUpdateInProgress = 0,
			AdapterMemoryBudget = 1,
		}
		[AllowDuplicates]
		public enum DXCoreSegmentGroup : uint32
		{
			Local = 0,
			NonLocal = 1,
		}
		[AllowDuplicates]
		public enum DXCoreNotificationType : uint32
		{
			AdapterListStale = 0,
			AdapterNoLongerValid = 1,
			AdapterBudgetChange = 2,
			AdapterHardwareContentProtectionTeardown = 3,
		}
		[AllowDuplicates]
		public enum DXCoreAdapterPreference : uint32
		{
			Hardware = 0,
			MinimumPower = 1,
			HighPerformance = 2,
		}
		
		// --- Function Pointers ---
		
		public function void PFN_DXCORE_NOTIFICATION_CALLBACK(DXCoreNotificationType notificationType, IUnknown object, void* context);
		
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
		
		public struct IDXCoreAdapter {}
		public struct IDXCoreAdapterList {}
		public struct IDXCoreAdapterFactory {}
		
		// --- Functions ---
		
		[Import("dxcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DXCoreCreateAdapterFactory(Guid* riid, void** ppvFactory);
		
	}
}
