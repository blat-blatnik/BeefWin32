using System;

// namespace System.Hypervisor
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 HVSOCKET_CONNECT_TIMEOUT = 1;
		public const uint32 HVSOCKET_CONNECT_TIMEOUT_MAX = 300000;
		public const uint32 HVSOCKET_CONTAINER_PASSTHRU = 2;
		public const uint32 HVSOCKET_CONNECTED_SUSPEND = 4;
		public const uint32 HV_PROTOCOL_RAW = 1;
		public const uint32 HVSOCKET_ADDRESS_FLAG_PASSTHRU = 1;
		public const uint32 WHV_PROCESSOR_FEATURES_BANKS_COUNT = 2;
		public const uint32 WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS_COUNT = 1;
		public const uint32 WHV_READ_WRITE_GPA_RANGE_MAX_SIZE = 16;
		public const uint32 WHV_HYPERCALL_CONTEXT_MAX_XMM_REGISTERS = 6;
		public const uint32 WHV_MAX_DEVICE_ID_SIZE_IN_CHARS = 200;
		public const uint32 WHV_VPCI_TYPE0_BAR_COUNT = 6;
		public const uint32 WHV_ANY_VP = 4294967295;
		public const uint32 WHV_SYNIC_MESSAGE_SIZE = 256;
		public const uint32 IOCTL_VMGENCOUNTER_READ = 3325956;
		public const uint32 HDV_PCI_BAR_COUNT = 6;
		public const Guid HV_GUID_ZERO = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid HV_GUID_BROADCAST = .(0xffffffff, 0xffff, 0xffff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff);
		public const Guid HV_GUID_CHILDREN = .(0x90db8b89, 0x0d35, 0x4f79, 0x8c, 0xe9, 0x49, 0xea, 0x0a, 0xc8, 0xb7, 0xcd);
		public const Guid HV_GUID_LOOPBACK = .(0xe0e16197, 0xdd56, 0x4a10, 0x91, 0x95, 0x5e, 0xe7, 0xa1, 0x55, 0xa8, 0x38);
		public const Guid HV_GUID_PARENT = .(0xa42e7cda, 0xd03f, 0x480c, 0x9c, 0xc2, 0xa4, 0xde, 0x20, 0xab, 0xb8, 0x78);
		public const Guid HV_GUID_SILOHOST = .(0x36bd0c5c, 0x7276, 0x4223, 0x88, 0xba, 0x7d, 0x03, 0xb6, 0x54, 0xc5, 0x68);
		public const Guid HV_GUID_VSOCK_TEMPLATE = .(0x00000000, 0xfacb, 0x11e6, 0xbd, 0x58, 0x64, 0x00, 0x6a, 0x79, 0x86, 0xd3);
		public const Guid GUID_DEVINTERFACE_VM_GENCOUNTER = .(0x3ff2c92b, 0x6598, 0x4e60, 0x8e, 0x1c, 0x0c, 0xcf, 0x49, 0x27, 0xe3, 0x19);
		
		// --- Typedefs ---
		
		public typealias WHV_PARTITION_HANDLE = int;
		
		// --- Enums ---
		
		public enum WHV_CAPABILITY_CODE : int32
		{
			HypervisorPresent = 0,
			Features = 1,
			ExtendedVmExits = 2,
			ExceptionExitBitmap = 3,
			X64MsrExitBitmap = 4,
			GpaRangePopulateFlags = 5,
			SchedulerFeatures = 6,
			ProcessorVendor = 4096,
			ProcessorFeatures = 4097,
			ProcessorClFlushSize = 4098,
			ProcessorXsaveFeatures = 4099,
			ProcessorClockFrequency = 4100,
			InterruptClockFrequency = 4101,
			ProcessorFeaturesBanks = 4102,
			ProcessorFrequencyCap = 4103,
			SyntheticProcessorFeaturesBanks = 4104,
			ProcessorPerfmonFeatures = 4105,
		}
		public enum WHV_PROCESSOR_VENDOR : int32
		{
			Amd = 0,
			Intel = 1,
			Hygon = 2,
		}
		public enum WHV_PARTITION_PROPERTY_CODE : int32
		{
			ExtendedVmExits = 1,
			ExceptionExitBitmap = 2,
			SeparateSecurityDomain = 3,
			NestedVirtualization = 4,
			X64MsrExitBitmap = 5,
			PrimaryNumaNode = 6,
			CpuReserve = 7,
			CpuCap = 8,
			CpuWeight = 9,
			CpuGroupId = 10,
			ProcessorFrequencyCap = 11,
			AllowDeviceAssignment = 12,
			DisableSmt = 13,
			ProcessorFeatures = 4097,
			ProcessorClFlushSize = 4098,
			CpuidExitList = 4099,
			CpuidResultList = 4100,
			LocalApicEmulationMode = 4101,
			ProcessorXsaveFeatures = 4102,
			ProcessorClockFrequency = 4103,
			InterruptClockFrequency = 4104,
			ApicRemoteReadSupport = 4105,
			ProcessorFeaturesBanks = 4106,
			ReferenceTime = 4107,
			SyntheticProcessorFeaturesBanks = 4108,
			CpuidResultList2 = 4109,
			ProcessorPerfmonFeatures = 4110,
			MsrActionList = 4111,
			UnimplementedMsrAction = 4112,
			ProcessorCount = 8191,
		}
		public enum WHV_MEMORY_ACCESS_TYPE : int32
		{
			Read = 0,
			Write = 1,
			Execute = 2,
		}
		public enum WHV_X64_CPUID_RESULT2_FLAGS : uint32
		{
			SubleafSpecific = 1,
			VpSpecific = 2,
		}
		public enum WHV_MSR_ACTION : int32
		{
			ArchitectureDefault = 0,
			IgnoreWriteReadZero = 1,
			Exit = 2,
		}
		public enum WHV_EXCEPTION_TYPE : int32
		{
			DivideErrorFault = 0,
			DebugTrapOrFault = 1,
			BreakpointTrap = 3,
			OverflowTrap = 4,
			BoundRangeFault = 5,
			InvalidOpcodeFault = 6,
			DeviceNotAvailableFault = 7,
			DoubleFaultAbort = 8,
			InvalidTaskStateSegmentFault = 10,
			SegmentNotPresentFault = 11,
			StackFault = 12,
			GeneralProtectionFault = 13,
			PageFault = 14,
			FloatingPointErrorFault = 16,
			AlignmentCheckFault = 17,
			MachineCheckAbort = 18,
			SimdFloatingPointFault = 19,
		}
		public enum WHV_X64_LOCAL_APIC_EMULATION_MODE : int32
		{
			None = 0,
			XApic = 1,
			X2Apic = 2,
		}
		public enum WHV_MAP_GPA_RANGE_FLAGS : uint32
		{
			None = 0,
			Read = 1,
			Write = 2,
			Execute = 4,
			TrackDirtyPages = 8,
		}
		public enum WHV_TRANSLATE_GVA_FLAGS : uint32
		{
			None = 0,
			ValidateRead = 1,
			ValidateWrite = 2,
			ValidateExecute = 4,
			PrivilegeExempt = 8,
			SetPageTableBits = 16,
			EnforceSmap = 256,
			OverrideSmap = 512,
		}
		public enum WHV_TRANSLATE_GVA_RESULT_CODE : int32
		{
			Success = 0,
			PageNotPresent = 1,
			PrivilegeViolation = 2,
			InvalidPageTableFlags = 3,
			GpaUnmapped = 4,
			GpaNoReadAccess = 5,
			GpaNoWriteAccess = 6,
			GpaIllegalOverlayAccess = 7,
			Intercept = 8,
		}
		public enum WHV_CACHE_TYPE : int32
		{
			Uncached = 0,
			WriteCombining = 1,
			WriteThrough = 4,
			WriteProtected = 5,
			WriteBack = 6,
		}
		public enum WHV_REGISTER_NAME : int32
		{
			X64RegisterRax = 0,
			X64RegisterRcx = 1,
			X64RegisterRdx = 2,
			X64RegisterRbx = 3,
			X64RegisterRsp = 4,
			X64RegisterRbp = 5,
			X64RegisterRsi = 6,
			X64RegisterRdi = 7,
			X64RegisterR8 = 8,
			X64RegisterR9 = 9,
			X64RegisterR10 = 10,
			X64RegisterR11 = 11,
			X64RegisterR12 = 12,
			X64RegisterR13 = 13,
			X64RegisterR14 = 14,
			X64RegisterR15 = 15,
			X64RegisterRip = 16,
			X64RegisterRflags = 17,
			X64RegisterEs = 18,
			X64RegisterCs = 19,
			X64RegisterSs = 20,
			X64RegisterDs = 21,
			X64RegisterFs = 22,
			X64RegisterGs = 23,
			X64RegisterLdtr = 24,
			X64RegisterTr = 25,
			X64RegisterIdtr = 26,
			X64RegisterGdtr = 27,
			X64RegisterCr0 = 28,
			X64RegisterCr2 = 29,
			X64RegisterCr3 = 30,
			X64RegisterCr4 = 31,
			X64RegisterCr8 = 32,
			X64RegisterDr0 = 33,
			X64RegisterDr1 = 34,
			X64RegisterDr2 = 35,
			X64RegisterDr3 = 36,
			X64RegisterDr6 = 37,
			X64RegisterDr7 = 38,
			X64RegisterXCr0 = 39,
			X64RegisterVirtualCr0 = 40,
			X64RegisterVirtualCr3 = 41,
			X64RegisterVirtualCr4 = 42,
			X64RegisterVirtualCr8 = 43,
			X64RegisterXmm0 = 4096,
			X64RegisterXmm1 = 4097,
			X64RegisterXmm2 = 4098,
			X64RegisterXmm3 = 4099,
			X64RegisterXmm4 = 4100,
			X64RegisterXmm5 = 4101,
			X64RegisterXmm6 = 4102,
			X64RegisterXmm7 = 4103,
			X64RegisterXmm8 = 4104,
			X64RegisterXmm9 = 4105,
			X64RegisterXmm10 = 4106,
			X64RegisterXmm11 = 4107,
			X64RegisterXmm12 = 4108,
			X64RegisterXmm13 = 4109,
			X64RegisterXmm14 = 4110,
			X64RegisterXmm15 = 4111,
			X64RegisterFpMmx0 = 4112,
			X64RegisterFpMmx1 = 4113,
			X64RegisterFpMmx2 = 4114,
			X64RegisterFpMmx3 = 4115,
			X64RegisterFpMmx4 = 4116,
			X64RegisterFpMmx5 = 4117,
			X64RegisterFpMmx6 = 4118,
			X64RegisterFpMmx7 = 4119,
			X64RegisterFpControlStatus = 4120,
			X64RegisterXmmControlStatus = 4121,
			X64RegisterTsc = 8192,
			X64RegisterEfer = 8193,
			X64RegisterKernelGsBase = 8194,
			X64RegisterApicBase = 8195,
			X64RegisterPat = 8196,
			X64RegisterSysenterCs = 8197,
			X64RegisterSysenterEip = 8198,
			X64RegisterSysenterEsp = 8199,
			X64RegisterStar = 8200,
			X64RegisterLstar = 8201,
			X64RegisterCstar = 8202,
			X64RegisterSfmask = 8203,
			X64RegisterInitialApicId = 8204,
			X64RegisterMsrMtrrCap = 8205,
			X64RegisterMsrMtrrDefType = 8206,
			X64RegisterMsrMtrrPhysBase0 = 8208,
			X64RegisterMsrMtrrPhysBase1 = 8209,
			X64RegisterMsrMtrrPhysBase2 = 8210,
			X64RegisterMsrMtrrPhysBase3 = 8211,
			X64RegisterMsrMtrrPhysBase4 = 8212,
			X64RegisterMsrMtrrPhysBase5 = 8213,
			X64RegisterMsrMtrrPhysBase6 = 8214,
			X64RegisterMsrMtrrPhysBase7 = 8215,
			X64RegisterMsrMtrrPhysBase8 = 8216,
			X64RegisterMsrMtrrPhysBase9 = 8217,
			X64RegisterMsrMtrrPhysBaseA = 8218,
			X64RegisterMsrMtrrPhysBaseB = 8219,
			X64RegisterMsrMtrrPhysBaseC = 8220,
			X64RegisterMsrMtrrPhysBaseD = 8221,
			X64RegisterMsrMtrrPhysBaseE = 8222,
			X64RegisterMsrMtrrPhysBaseF = 8223,
			X64RegisterMsrMtrrPhysMask0 = 8256,
			X64RegisterMsrMtrrPhysMask1 = 8257,
			X64RegisterMsrMtrrPhysMask2 = 8258,
			X64RegisterMsrMtrrPhysMask3 = 8259,
			X64RegisterMsrMtrrPhysMask4 = 8260,
			X64RegisterMsrMtrrPhysMask5 = 8261,
			X64RegisterMsrMtrrPhysMask6 = 8262,
			X64RegisterMsrMtrrPhysMask7 = 8263,
			X64RegisterMsrMtrrPhysMask8 = 8264,
			X64RegisterMsrMtrrPhysMask9 = 8265,
			X64RegisterMsrMtrrPhysMaskA = 8266,
			X64RegisterMsrMtrrPhysMaskB = 8267,
			X64RegisterMsrMtrrPhysMaskC = 8268,
			X64RegisterMsrMtrrPhysMaskD = 8269,
			X64RegisterMsrMtrrPhysMaskE = 8270,
			X64RegisterMsrMtrrPhysMaskF = 8271,
			X64RegisterMsrMtrrFix64k00000 = 8304,
			X64RegisterMsrMtrrFix16k80000 = 8305,
			X64RegisterMsrMtrrFix16kA0000 = 8306,
			X64RegisterMsrMtrrFix4kC0000 = 8307,
			X64RegisterMsrMtrrFix4kC8000 = 8308,
			X64RegisterMsrMtrrFix4kD0000 = 8309,
			X64RegisterMsrMtrrFix4kD8000 = 8310,
			X64RegisterMsrMtrrFix4kE0000 = 8311,
			X64RegisterMsrMtrrFix4kE8000 = 8312,
			X64RegisterMsrMtrrFix4kF0000 = 8313,
			X64RegisterMsrMtrrFix4kF8000 = 8314,
			X64RegisterTscAux = 8315,
			X64RegisterBndcfgs = 8316,
			X64RegisterMCount = 8318,
			X64RegisterACount = 8319,
			X64RegisterSpecCtrl = 8324,
			X64RegisterPredCmd = 8325,
			X64RegisterTscVirtualOffset = 8327,
			X64RegisterTsxCtrl = 8328,
			X64RegisterXss = 8331,
			X64RegisterUCet = 8332,
			X64RegisterSCet = 8333,
			X64RegisterSsp = 8334,
			X64RegisterPl0Ssp = 8335,
			X64RegisterPl1Ssp = 8336,
			X64RegisterPl2Ssp = 8337,
			X64RegisterPl3Ssp = 8338,
			X64RegisterInterruptSspTableAddr = 8339,
			X64RegisterTscDeadline = 8341,
			X64RegisterTscAdjust = 8342,
			X64RegisterUmwaitControl = 8344,
			X64RegisterXfd = 8345,
			X64RegisterXfdErr = 8346,
			X64RegisterApicId = 12290,
			X64RegisterApicVersion = 12291,
			X64RegisterApicTpr = 12296,
			X64RegisterApicPpr = 12298,
			X64RegisterApicEoi = 12299,
			X64RegisterApicLdr = 12301,
			X64RegisterApicSpurious = 12303,
			X64RegisterApicIsr0 = 12304,
			X64RegisterApicIsr1 = 12305,
			X64RegisterApicIsr2 = 12306,
			X64RegisterApicIsr3 = 12307,
			X64RegisterApicIsr4 = 12308,
			X64RegisterApicIsr5 = 12309,
			X64RegisterApicIsr6 = 12310,
			X64RegisterApicIsr7 = 12311,
			X64RegisterApicTmr0 = 12312,
			X64RegisterApicTmr1 = 12313,
			X64RegisterApicTmr2 = 12314,
			X64RegisterApicTmr3 = 12315,
			X64RegisterApicTmr4 = 12316,
			X64RegisterApicTmr5 = 12317,
			X64RegisterApicTmr6 = 12318,
			X64RegisterApicTmr7 = 12319,
			X64RegisterApicIrr0 = 12320,
			X64RegisterApicIrr1 = 12321,
			X64RegisterApicIrr2 = 12322,
			X64RegisterApicIrr3 = 12323,
			X64RegisterApicIrr4 = 12324,
			X64RegisterApicIrr5 = 12325,
			X64RegisterApicIrr6 = 12326,
			X64RegisterApicIrr7 = 12327,
			X64RegisterApicEse = 12328,
			X64RegisterApicIcr = 12336,
			X64RegisterApicLvtTimer = 12338,
			X64RegisterApicLvtThermal = 12339,
			X64RegisterApicLvtPerfmon = 12340,
			X64RegisterApicLvtLint0 = 12341,
			X64RegisterApicLvtLint1 = 12342,
			X64RegisterApicLvtError = 12343,
			X64RegisterApicInitCount = 12344,
			X64RegisterApicCurrentCount = 12345,
			X64RegisterApicDivide = 12350,
			X64RegisterApicSelfIpi = 12351,
			RegisterSint0 = 16384,
			RegisterSint1 = 16385,
			RegisterSint2 = 16386,
			RegisterSint3 = 16387,
			RegisterSint4 = 16388,
			RegisterSint5 = 16389,
			RegisterSint6 = 16390,
			RegisterSint7 = 16391,
			RegisterSint8 = 16392,
			RegisterSint9 = 16393,
			RegisterSint10 = 16394,
			RegisterSint11 = 16395,
			RegisterSint12 = 16396,
			RegisterSint13 = 16397,
			RegisterSint14 = 16398,
			RegisterSint15 = 16399,
			RegisterScontrol = 16400,
			RegisterSversion = 16401,
			RegisterSiefp = 16402,
			RegisterSimp = 16403,
			RegisterEom = 16404,
			RegisterVpRuntime = 20480,
			X64RegisterHypercall = 20481,
			RegisterGuestOsId = 20482,
			RegisterVpAssistPage = 20499,
			RegisterReferenceTsc = 20503,
			RegisterReferenceTscSequence = 20506,
			RegisterPendingInterruption = -2147483648,
			RegisterInterruptState = -2147483647,
			RegisterPendingEvent = -2147483646,
			X64RegisterDeliverabilityNotifications = -2147483644,
			RegisterInternalActivityState = -2147483643,
			X64RegisterPendingDebugException = -2147483642,
		}
		public enum WHV_X64_PENDING_EVENT_TYPE : int32
		{
			Exception = 0,
			ExtInt = 5,
		}
		public enum WHV_RUN_VP_EXIT_REASON : int32
		{
			None = 0,
			MemoryAccess = 1,
			X64IoPortAccess = 2,
			UnrecoverableException = 4,
			InvalidVpRegisterValue = 5,
			UnsupportedFeature = 6,
			X64InterruptWindow = 7,
			X64Halt = 8,
			X64ApicEoi = 9,
			SynicSintDeliverable = 10,
			X64MsrAccess = 4096,
			X64Cpuid = 4097,
			Exception = 4098,
			X64Rdtsc = 4099,
			X64ApicSmiTrap = 4100,
			Hypercall = 4101,
			X64ApicInitSipiTrap = 4102,
			X64ApicWriteTrap = 4103,
			Canceled = 8193,
		}
		public enum WHV_X64_UNSUPPORTED_FEATURE_CODE : int32
		{
			Intercept = 1,
			TaskSwitchTss = 2,
		}
		public enum WHV_RUN_VP_CANCEL_REASON : int32
		{
			WHvRunVpCancelReasonUser = 0,
		}
		public enum WHV_X64_PENDING_INTERRUPTION_TYPE : int32
		{
			Interrupt = 0,
			Nmi = 2,
			Exception = 3,
		}
		public enum WHV_X64_APIC_WRITE_TYPE : int32
		{
			Ldr = 208,
			Dfr = 224,
			Svr = 240,
			Lint0 = 848,
			Lint1 = 864,
		}
		public enum WHV_INTERRUPT_TYPE : int32
		{
			Fixed = 0,
			LowestPriority = 1,
			Nmi = 4,
			Init = 5,
			Sipi = 6,
			LocalInt1 = 9,
		}
		public enum WHV_INTERRUPT_DESTINATION_MODE : int32
		{
			Physical = 0,
			Logical = 1,
		}
		public enum WHV_INTERRUPT_TRIGGER_MODE : int32
		{
			Edge = 0,
			Level = 1,
		}
		public enum WHV_PARTITION_COUNTER_SET : int32
		{
			WHvPartitionCounterSetMemory = 0,
		}
		public enum WHV_PROCESSOR_COUNTER_SET : int32
		{
			Runtime = 0,
			Intercepts = 1,
			Events = 2,
			Apic = 3,
			SyntheticFeatures = 4,
		}
		public enum WHV_ADVISE_GPA_RANGE_CODE : int32
		{
			Populate = 0,
			Pin = 1,
			Unpin = 2,
		}
		public enum WHV_VIRTUAL_PROCESSOR_STATE_TYPE : int32
		{
			SynicMessagePage = 0,
			SynicEventFlagPage = 1,
			SynicTimerState = 2,
			InterruptControllerState2 = 4096,
			XsaveState = 4097,
		}
		public enum WHV_ALLOCATE_VPCI_RESOURCE_FLAGS : uint32
		{
			None = 0,
			AllowDirectP2P = 1,
		}
		public enum WHV_VPCI_DEVICE_NOTIFICATION_TYPE : int32
		{
			Undefined = 0,
			MmioRemapping = 1,
			SurpriseRemoval = 2,
		}
		public enum WHV_CREATE_VPCI_DEVICE_FLAGS : uint32
		{
			None = 0,
			PhysicallyBacked = 1,
			UseLogicalInterrupts = 2,
		}
		public enum WHV_VPCI_DEVICE_PROPERTY_CODE : int32
		{
			Undefined = 0,
			HardwareIDs = 1,
			ProbedBARs = 2,
		}
		public enum WHV_VPCI_MMIO_RANGE_FLAGS : uint32
		{
			ReadAccess = 1,
			WriteAccess = 2,
		}
		public enum WHV_VPCI_DEVICE_REGISTER_SPACE : int32
		{
			ConfigSpace = -1,
			Bar0 = 0,
			Bar1 = 1,
			Bar2 = 2,
			Bar3 = 3,
			Bar4 = 4,
			Bar5 = 5,
		}
		public enum WHV_VPCI_INTERRUPT_TARGET_FLAGS : uint32
		{
			None = 0,
			Multicast = 1,
		}
		public enum WHV_TRIGGER_TYPE : int32
		{
			Interrupt = 0,
			SynicEvent = 1,
			DeviceInterrupt = 2,
		}
		public enum WHV_VIRTUAL_PROCESSOR_PROPERTY_CODE : int32
		{
			WHvVirtualProcessorPropertyCodeNumaNode = 0,
		}
		public enum WHV_NOTIFICATION_PORT_TYPE : int32
		{
			Event = 2,
			Doorbell = 4,
		}
		public enum WHV_NOTIFICATION_PORT_PROPERTY_CODE : int32
		{
			Vp = 1,
			Duration = 5,
		}
		public enum HDV_DEVICE_TYPE : int32
		{
			Undefined = 0,
			PCI = 1,
		}
		public enum HDV_PCI_BAR_SELECTOR : int32
		{
			BAR0 = 0,
			BAR1 = 1,
			BAR2 = 2,
			BAR3 = 3,
			BAR4 = 4,
			BAR5 = 5,
		}
		public enum HDV_DOORBELL_FLAGS : int32
		{
			SIZE_ANY = 0,
			SIZE_BYTE = 1,
			SIZE_WORD = 2,
			SIZE_DWORD = 3,
			SIZE_QWORD = 4,
			ANY_VALUE = -2147483648,
		}
		public enum HDV_MMIO_MAPPING_FLAGS : uint32
		{
			None = 0,
			Writeable = 1,
			Executable = 2,
		}
		public enum HDV_PCI_INTERFACE_VERSION : int32
		{
			VersionInvalid = 0,
			Version1 = 1,
		}
		public enum PAGING_MODE : int32
		{
			Invalid = 0,
			NonPaged = 1,
			_32Bit = 2,
			Pae = 3,
			Long = 4,
			Armv8 = 5,
		}
		public enum VIRTUAL_PROCESSOR_ARCH : int32
		{
			Unknown = 0,
			x86 = 1,
			x64 = 2,
			Armv8 = 3,
		}
		public enum VIRTUAL_PROCESSOR_VENDOR : int32
		{
			Unknown = 0,
			Amd = 1,
			Intel = 2,
			Hygon = 3,
			Arm = 4,
		}
		public enum GUEST_OS_VENDOR : int32
		{
			Undefined = 0,
			Microsoft = 1,
			HPE = 2,
			LANCOM = 512,
		}
		public enum GUEST_OS_MICROSOFT_IDS : int32
		{
			Undefined = 0,
			MSDOS = 1,
			Windows3x = 2,
			Windows9x = 3,
			WindowsNT = 4,
			WindowsCE = 5,
		}
		public enum GUEST_OS_OPENSOURCE_IDS : int32
		{
			Undefined = 0,
			Linux = 1,
			FreeBSD = 2,
			Xen = 3,
			Illumos = 4,
		}
		public enum REGISTER_ID : int32
		{
			X64_RegisterRax = 0,
			X64_RegisterRcx = 1,
			X64_RegisterRdx = 2,
			X64_RegisterRbx = 3,
			X64_RegisterRsp = 4,
			X64_RegisterRbp = 5,
			X64_RegisterRsi = 6,
			X64_RegisterRdi = 7,
			X64_RegisterR8 = 8,
			X64_RegisterR9 = 9,
			X64_RegisterR10 = 10,
			X64_RegisterR11 = 11,
			X64_RegisterR12 = 12,
			X64_RegisterR13 = 13,
			X64_RegisterR14 = 14,
			X64_RegisterR15 = 15,
			X64_RegisterRip = 16,
			X64_RegisterRFlags = 17,
			X64_RegisterXmm0 = 18,
			X64_RegisterXmm1 = 19,
			X64_RegisterXmm2 = 20,
			X64_RegisterXmm3 = 21,
			X64_RegisterXmm4 = 22,
			X64_RegisterXmm5 = 23,
			X64_RegisterXmm6 = 24,
			X64_RegisterXmm7 = 25,
			X64_RegisterXmm8 = 26,
			X64_RegisterXmm9 = 27,
			X64_RegisterXmm10 = 28,
			X64_RegisterXmm11 = 29,
			X64_RegisterXmm12 = 30,
			X64_RegisterXmm13 = 31,
			X64_RegisterXmm14 = 32,
			X64_RegisterXmm15 = 33,
			X64_RegisterFpMmx0 = 34,
			X64_RegisterFpMmx1 = 35,
			X64_RegisterFpMmx2 = 36,
			X64_RegisterFpMmx3 = 37,
			X64_RegisterFpMmx4 = 38,
			X64_RegisterFpMmx5 = 39,
			X64_RegisterFpMmx6 = 40,
			X64_RegisterFpMmx7 = 41,
			X64_RegisterFpControlStatus = 42,
			X64_RegisterXmmControlStatus = 43,
			X64_RegisterCr0 = 44,
			X64_RegisterCr2 = 45,
			X64_RegisterCr3 = 46,
			X64_RegisterCr4 = 47,
			X64_RegisterCr8 = 48,
			X64_RegisterEfer = 49,
			X64_RegisterDr0 = 50,
			X64_RegisterDr1 = 51,
			X64_RegisterDr2 = 52,
			X64_RegisterDr3 = 53,
			X64_RegisterDr6 = 54,
			X64_RegisterDr7 = 55,
			X64_RegisterEs = 56,
			X64_RegisterCs = 57,
			X64_RegisterSs = 58,
			X64_RegisterDs = 59,
			X64_RegisterFs = 60,
			X64_RegisterGs = 61,
			X64_RegisterLdtr = 62,
			X64_RegisterTr = 63,
			X64_RegisterIdtr = 64,
			X64_RegisterGdtr = 65,
			X64_RegisterMax = 66,
			ARM64_RegisterX0 = 67,
			ARM64_RegisterX1 = 68,
			ARM64_RegisterX2 = 69,
			ARM64_RegisterX3 = 70,
			ARM64_RegisterX4 = 71,
			ARM64_RegisterX5 = 72,
			ARM64_RegisterX6 = 73,
			ARM64_RegisterX7 = 74,
			ARM64_RegisterX8 = 75,
			ARM64_RegisterX9 = 76,
			ARM64_RegisterX10 = 77,
			ARM64_RegisterX11 = 78,
			ARM64_RegisterX12 = 79,
			ARM64_RegisterX13 = 80,
			ARM64_RegisterX14 = 81,
			ARM64_RegisterX15 = 82,
			ARM64_RegisterX16 = 83,
			ARM64_RegisterX17 = 84,
			ARM64_RegisterX18 = 85,
			ARM64_RegisterX19 = 86,
			ARM64_RegisterX20 = 87,
			ARM64_RegisterX21 = 88,
			ARM64_RegisterX22 = 89,
			ARM64_RegisterX23 = 90,
			ARM64_RegisterX24 = 91,
			ARM64_RegisterX25 = 92,
			ARM64_RegisterX26 = 93,
			ARM64_RegisterX27 = 94,
			ARM64_RegisterX28 = 95,
			ARM64_RegisterXFp = 96,
			ARM64_RegisterXLr = 97,
			ARM64_RegisterPc = 98,
			ARM64_RegisterSpEl0 = 99,
			ARM64_RegisterSpEl1 = 100,
			ARM64_RegisterCpsr = 101,
			ARM64_RegisterQ0 = 102,
			ARM64_RegisterQ1 = 103,
			ARM64_RegisterQ2 = 104,
			ARM64_RegisterQ3 = 105,
			ARM64_RegisterQ4 = 106,
			ARM64_RegisterQ5 = 107,
			ARM64_RegisterQ6 = 108,
			ARM64_RegisterQ7 = 109,
			ARM64_RegisterQ8 = 110,
			ARM64_RegisterQ9 = 111,
			ARM64_RegisterQ10 = 112,
			ARM64_RegisterQ11 = 113,
			ARM64_RegisterQ12 = 114,
			ARM64_RegisterQ13 = 115,
			ARM64_RegisterQ14 = 116,
			ARM64_RegisterQ15 = 117,
			ARM64_RegisterQ16 = 118,
			ARM64_RegisterQ17 = 119,
			ARM64_RegisterQ18 = 120,
			ARM64_RegisterQ19 = 121,
			ARM64_RegisterQ20 = 122,
			ARM64_RegisterQ21 = 123,
			ARM64_RegisterQ22 = 124,
			ARM64_RegisterQ23 = 125,
			ARM64_RegisterQ24 = 126,
			ARM64_RegisterQ25 = 127,
			ARM64_RegisterQ26 = 128,
			ARM64_RegisterQ27 = 129,
			ARM64_RegisterQ28 = 130,
			ARM64_RegisterQ29 = 131,
			ARM64_RegisterQ30 = 132,
			ARM64_RegisterQ31 = 133,
			ARM64_RegisterFpStatus = 134,
			ARM64_RegisterFpControl = 135,
			ARM64_RegisterEsrEl1 = 136,
			ARM64_RegisterSpsrEl1 = 137,
			ARM64_RegisterFarEl1 = 138,
			ARM64_RegisterParEl1 = 139,
			ARM64_RegisterElrEl1 = 140,
			ARM64_RegisterTtbr0El1 = 141,
			ARM64_RegisterTtbr1El1 = 142,
			ARM64_RegisterVbarEl1 = 143,
			ARM64_RegisterSctlrEl1 = 144,
			ARM64_RegisterActlrEl1 = 145,
			ARM64_RegisterTcrEl1 = 146,
			ARM64_RegisterMairEl1 = 147,
			ARM64_RegisterAmairEl1 = 148,
			ARM64_RegisterTpidrEl0 = 149,
			ARM64_RegisterTpidrroEl0 = 150,
			ARM64_RegisterTpidrEl1 = 151,
			ARM64_RegisterContextIdrEl1 = 152,
			ARM64_RegisterCpacrEl1 = 153,
			ARM64_RegisterCsselrEl1 = 154,
			ARM64_RegisterCntkctlEl1 = 155,
			ARM64_RegisterCntvCvalEl0 = 156,
			ARM64_RegisterCntvCtlEl0 = 157,
			ARM64_RegisterMax = 158,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT WHV_EMULATOR_IO_PORT_CALLBACK(void* Context, out WHV_EMULATOR_IO_ACCESS_INFO IoAccess);
		public function HRESULT WHV_EMULATOR_MEMORY_CALLBACK(void* Context, out WHV_EMULATOR_MEMORY_ACCESS_INFO MemoryAccess);
		public function HRESULT WHV_EMULATOR_GET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK(void* Context, WHV_REGISTER_NAME* RegisterNames, uint32 RegisterCount, WHV_REGISTER_VALUE* RegisterValues);
		public function HRESULT WHV_EMULATOR_SET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK(void* Context, WHV_REGISTER_NAME* RegisterNames, uint32 RegisterCount, WHV_REGISTER_VALUE* RegisterValues);
		public function HRESULT WHV_EMULATOR_TRANSLATE_GVA_PAGE_CALLBACK(void* Context, uint64 Gva, WHV_TRANSLATE_GVA_FLAGS TranslateFlags, out WHV_TRANSLATE_GVA_RESULT_CODE TranslationResult, out uint64 Gpa);
		public function HRESULT HDV_PCI_DEVICE_INITIALIZE(void* deviceContext);
		public function void HDV_PCI_DEVICE_TEARDOWN(void* deviceContext);
		public function HRESULT HDV_PCI_DEVICE_SET_CONFIGURATION(void* deviceContext, uint32 configurationValueCount, PWSTR* configurationValues);
		public function HRESULT HDV_PCI_DEVICE_GET_DETAILS(void* deviceContext, out HDV_PCI_PNP_ID pnpId, uint32 probedBarsCount, uint32* probedBars);
		public function HRESULT HDV_PCI_DEVICE_START(void* deviceContext);
		public function void HDV_PCI_DEVICE_STOP(void* deviceContext);
		public function HRESULT HDV_PCI_READ_CONFIG_SPACE(void* deviceContext, uint32 offset, out uint32 value);
		public function HRESULT HDV_PCI_WRITE_CONFIG_SPACE(void* deviceContext, uint32 offset, uint32 value);
		public function HRESULT HDV_PCI_READ_INTERCEPTED_MEMORY(void* deviceContext, HDV_PCI_BAR_SELECTOR barIndex, uint64 offset, uint64 length, uint8* value);
		public function HRESULT HDV_PCI_WRITE_INTERCEPTED_MEMORY(void* deviceContext, HDV_PCI_BAR_SELECTOR barIndex, uint64 offset, uint64 length, uint8* value);
		public function void GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK(PSTR InfoMessage);
		public function BOOL FOUND_IMAGE_CALLBACK(void* Context, ref DOS_IMAGE_INFO ImageInfo);
		
		// --- Structs ---
		
		[CRepr, Union]
		public struct WHV_CAPABILITY_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_EXTENDED_VM_EXITS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_PROCESSOR_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_PROCESSOR_FEATURES1
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_PROCESSOR_FEATURES_BANKS
		{
			public uint32 BanksCount;
			public uint32 Reserved0;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64[2] AsUINT64;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public WHV_PROCESSOR_FEATURES Bank0;
					public WHV_PROCESSOR_FEATURES1 Bank1;
				}
			}
		}
		[CRepr, Union]
		public struct WHV_SYNTHETIC_PROCESSOR_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS
		{
			public uint32 BanksCount;
			public uint32 Reserved0;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64[0] AsUINT64;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public WHV_SYNTHETIC_PROCESSOR_FEATURES Bank0;
				}
			}
		}
		[CRepr, Union]
		public struct WHV_PROCESSOR_XSAVE_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_PROCESSOR_PERFMON_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_MSR_EXIT_BITMAP
		{
			public uint64 AsUINT64;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_MEMORY_RANGE_ENTRY
		{
			public uint64 GuestAddress;
			public uint64 SizeInBytes;
		}
		[CRepr, Union]
		public struct WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS
		{
			public uint32 AsUINT32;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_ADVISE_GPA_RANGE_POPULATE
		{
			public WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS Flags;
			public WHV_MEMORY_ACCESS_TYPE AccessType;
		}
		[CRepr]
		public struct WHV_CAPABILITY_PROCESSOR_FREQUENCY_CAP
		{
			public uint32 _bitfield;
			public uint32 HighestFrequencyMhz;
			public uint32 NominalFrequencyMhz;
			public uint32 LowestFrequencyMhz;
			public uint32 FrequencyStepMhz;
		}
		[CRepr, Union]
		public struct WHV_SCHEDULER_FEATURES
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_CAPABILITY
		{
			public BOOL HypervisorPresent;
			public WHV_CAPABILITY_FEATURES Features;
			public WHV_EXTENDED_VM_EXITS ExtendedVmExits;
			public WHV_PROCESSOR_VENDOR ProcessorVendor;
			public WHV_PROCESSOR_FEATURES ProcessorFeatures;
			public WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS SyntheticProcessorFeaturesBanks;
			public WHV_PROCESSOR_XSAVE_FEATURES ProcessorXsaveFeatures;
			public uint8 ProcessorClFlushSize;
			public uint64 ExceptionExitBitmap;
			public WHV_X64_MSR_EXIT_BITMAP X64MsrExitBitmap;
			public uint64 ProcessorClockFrequency;
			public uint64 InterruptClockFrequency;
			public WHV_PROCESSOR_FEATURES_BANKS ProcessorFeaturesBanks;
			public WHV_ADVISE_GPA_RANGE_POPULATE_FLAGS GpaRangePopulateFlags;
			public WHV_CAPABILITY_PROCESSOR_FREQUENCY_CAP ProcessorFrequencyCap;
			public WHV_PROCESSOR_PERFMON_FEATURES ProcessorPerfmonFeatures;
			public WHV_SCHEDULER_FEATURES SchedulerFeatures;
		}
		[CRepr]
		public struct WHV_X64_CPUID_RESULT
		{
			public uint32 Function;
			public uint32[3] Reserved;
			public uint32 Eax;
			public uint32 Ebx;
			public uint32 Ecx;
			public uint32 Edx;
		}
		[CRepr]
		public struct WHV_CPUID_OUTPUT
		{
			public uint32 Eax;
			public uint32 Ebx;
			public uint32 Ecx;
			public uint32 Edx;
		}
		[CRepr]
		public struct WHV_X64_CPUID_RESULT2
		{
			public uint32 Function;
			public uint32 Index;
			public uint32 VpIndex;
			public WHV_X64_CPUID_RESULT2_FLAGS Flags;
			public WHV_CPUID_OUTPUT Output;
			public WHV_CPUID_OUTPUT Mask;
		}
		[CRepr]
		public struct WHV_MSR_ACTION_ENTRY
		{
			public uint32 Index;
			public uint8 ReadAction;
			public uint8 WriteAction;
			public uint16 Reserved;
		}
		[CRepr, Union]
		public struct WHV_PARTITION_PROPERTY
		{
			public WHV_EXTENDED_VM_EXITS ExtendedVmExits;
			public WHV_PROCESSOR_FEATURES ProcessorFeatures;
			public WHV_SYNTHETIC_PROCESSOR_FEATURES_BANKS SyntheticProcessorFeaturesBanks;
			public WHV_PROCESSOR_XSAVE_FEATURES ProcessorXsaveFeatures;
			public uint8 ProcessorClFlushSize;
			public uint32 ProcessorCount;
			public uint32[0] CpuidExitList;
			public WHV_X64_CPUID_RESULT[0] CpuidResultList;
			public WHV_X64_CPUID_RESULT2[0] CpuidResultList2;
			public WHV_MSR_ACTION_ENTRY[0] MsrActionList;
			public WHV_MSR_ACTION UnimplementedMsrAction;
			public uint64 ExceptionExitBitmap;
			public WHV_X64_LOCAL_APIC_EMULATION_MODE LocalApicEmulationMode;
			public BOOL SeparateSecurityDomain;
			public BOOL NestedVirtualization;
			public WHV_X64_MSR_EXIT_BITMAP X64MsrExitBitmap;
			public uint64 ProcessorClockFrequency;
			public uint64 InterruptClockFrequency;
			public BOOL ApicRemoteRead;
			public WHV_PROCESSOR_FEATURES_BANKS ProcessorFeaturesBanks;
			public uint64 ReferenceTime;
			public uint16 PrimaryNumaNode;
			public uint32 CpuReserve;
			public uint32 CpuCap;
			public uint32 CpuWeight;
			public uint64 CpuGroupId;
			public uint32 ProcessorFrequencyCap;
			public BOOL AllowDeviceAssignment;
			public WHV_PROCESSOR_PERFMON_FEATURES ProcessorPerfmonFeatures;
			public BOOL DisableSmt;
		}
		[CRepr]
		public struct WHV_TRANSLATE_GVA_RESULT
		{
			public WHV_TRANSLATE_GVA_RESULT_CODE ResultCode;
			public uint32 Reserved;
		}
		[CRepr, Union]
		public struct WHV_ADVISE_GPA_RANGE
		{
			public WHV_ADVISE_GPA_RANGE_POPULATE Populate;
		}
		[CRepr, Union]
		public struct WHV_ACCESS_GPA_CONTROLS
		{
			public uint64 AsUINT64;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public WHV_CACHE_TYPE CacheType;
				public uint32 Reserved;
			}
		}
		[CRepr, Union]
		public struct WHV_UINT128
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32[4] Dword;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 Low64;
				public uint64 High64;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_FP_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public WHV_UINT128 AsUINT128;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 Mantissa;
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_FP_CONTROL_STATUS_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public WHV_UINT128 AsUINT128;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 FpControl;
				public uint16 FpStatus;
				public uint8 FpTag;
				public uint8 Reserved;
				public uint16 LastFpOp;
				public _Anonymous_e__Union Anonymous;
				
				[CRepr, Union]
				public struct _Anonymous_e__Union
				{
					public uint64 LastFpRip;
					public _Anonymous_e__Struct Anonymous;
					
					[CRepr]
					public struct _Anonymous_e__Struct
					{
						public uint32 LastFpEip;
						public uint16 LastFpCs;
						public uint16 Reserved2;
					}
				}
			}
		}
		[CRepr, Union]
		public struct WHV_X64_XMM_CONTROL_STATUS_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public WHV_UINT128 AsUINT128;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public _Anonymous_e__Union Anonymous;
				public uint32 XmmStatusControl;
				public uint32 XmmStatusControlMask;
				
				[CRepr, Union]
				public struct _Anonymous_e__Union
				{
					public uint64 LastFpRdp;
					public _Anonymous_e__Struct Anonymous;
					
					[CRepr]
					public struct _Anonymous_e__Struct
					{
						public uint32 LastFpDp;
						public uint16 LastFpDs;
						public uint16 Reserved;
					}
				}
			}
		}
		[CRepr]
		public struct WHV_X64_SEGMENT_REGISTER
		{
			public uint64 Base;
			public uint32 Limit;
			public uint16 Selector;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint16 Attributes;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 _bitfield;
				}
			}
		}
		[CRepr]
		public struct WHV_X64_TABLE_REGISTER
		{
			public uint16[3] Pad;
			public uint16 Limit;
			public uint64 Base;
		}
		[CRepr, Union]
		public struct WHV_X64_INTERRUPT_STATE_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_PENDING_INTERRUPTION_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
				public uint32 ErrorCode;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_PENDING_EXCEPTION_EVENT
		{
			public _Anonymous_e__Struct Anonymous;
			public WHV_UINT128 AsUINT128;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
				public uint32 ErrorCode;
				public uint64 ExceptionParameter;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_PENDING_EXT_INT_EVENT
		{
			public _Anonymous_e__Struct Anonymous;
			public WHV_UINT128 AsUINT128;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
				public uint64 Reserved2;
			}
		}
		[CRepr, Union]
		public struct WHV_INTERNAL_ACTIVITY_REGISTER
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct WHV_X64_PENDING_DEBUG_EXCEPTION
		{
			public uint64 AsUINT64;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_SYNIC_SINT_DELIVERABLE_CONTEXT
		{
			public uint16 DeliverableSints;
			public uint16 Reserved1;
			public uint32 Reserved2;
		}
		[CRepr, Union]
		public struct WHV_REGISTER_VALUE
		{
			public WHV_UINT128 Reg128;
			public uint64 Reg64;
			public uint32 Reg32;
			public uint16 Reg16;
			public uint8 Reg8;
			public WHV_X64_FP_REGISTER Fp;
			public WHV_X64_FP_CONTROL_STATUS_REGISTER FpControlStatus;
			public WHV_X64_XMM_CONTROL_STATUS_REGISTER XmmControlStatus;
			public WHV_X64_SEGMENT_REGISTER Segment;
			public WHV_X64_TABLE_REGISTER Table;
			public WHV_X64_INTERRUPT_STATE_REGISTER InterruptState;
			public WHV_X64_PENDING_INTERRUPTION_REGISTER PendingInterruption;
			public WHV_X64_DELIVERABILITY_NOTIFICATIONS_REGISTER DeliverabilityNotifications;
			public WHV_X64_PENDING_EXCEPTION_EVENT ExceptionEvent;
			public WHV_X64_PENDING_EXT_INT_EVENT ExtIntEvent;
			public WHV_INTERNAL_ACTIVITY_REGISTER InternalActivity;
			public WHV_X64_PENDING_DEBUG_EXCEPTION PendingDebugException;
		}
		[CRepr, Union]
		public struct WHV_X64_VP_EXECUTION_STATE
		{
			public _Anonymous_e__Struct Anonymous;
			public uint16 AsUINT16;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint16 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_VP_EXIT_CONTEXT
		{
			public WHV_X64_VP_EXECUTION_STATE ExecutionState;
			public uint8 _bitfield;
			public uint8 Reserved;
			public uint32 Reserved2;
			public WHV_X64_SEGMENT_REGISTER Cs;
			public uint64 Rip;
			public uint64 Rflags;
		}
		[CRepr, Union]
		public struct WHV_MEMORY_ACCESS_INFO
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUINT32;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_MEMORY_ACCESS_CONTEXT
		{
			public uint8 InstructionByteCount;
			public uint8[3] Reserved;
			public uint8[16] InstructionBytes;
			public WHV_MEMORY_ACCESS_INFO AccessInfo;
			public uint64 Gpa;
			public uint64 Gva;
		}
		[CRepr, Union]
		public struct WHV_X64_IO_PORT_ACCESS_INFO
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUINT32;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_X64_IO_PORT_ACCESS_CONTEXT
		{
			public uint8 InstructionByteCount;
			public uint8[3] Reserved;
			public uint8[16] InstructionBytes;
			public WHV_X64_IO_PORT_ACCESS_INFO AccessInfo;
			public uint16 PortNumber;
			public uint16[3] Reserved2;
			public uint64 Rax;
			public uint64 Rcx;
			public uint64 Rsi;
			public uint64 Rdi;
			public WHV_X64_SEGMENT_REGISTER Ds;
			public WHV_X64_SEGMENT_REGISTER Es;
		}
		[CRepr, Union]
		public struct WHV_X64_MSR_ACCESS_INFO
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUINT32;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_X64_MSR_ACCESS_CONTEXT
		{
			public WHV_X64_MSR_ACCESS_INFO AccessInfo;
			public uint32 MsrNumber;
			public uint64 Rax;
			public uint64 Rdx;
		}
		[CRepr]
		public struct WHV_X64_CPUID_ACCESS_CONTEXT
		{
			public uint64 Rax;
			public uint64 Rcx;
			public uint64 Rdx;
			public uint64 Rbx;
			public uint64 DefaultResultRax;
			public uint64 DefaultResultRcx;
			public uint64 DefaultResultRdx;
			public uint64 DefaultResultRbx;
		}
		[CRepr, Union]
		public struct WHV_VP_EXCEPTION_INFO
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUINT32;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_VP_EXCEPTION_CONTEXT
		{
			public uint8 InstructionByteCount;
			public uint8[3] Reserved;
			public uint8[16] InstructionBytes;
			public WHV_VP_EXCEPTION_INFO ExceptionInfo;
			public uint8 ExceptionType;
			public uint8[3] Reserved2;
			public uint32 ErrorCode;
			public uint64 ExceptionParameter;
		}
		[CRepr]
		public struct WHV_X64_UNSUPPORTED_FEATURE_CONTEXT
		{
			public WHV_X64_UNSUPPORTED_FEATURE_CODE FeatureCode;
			public uint32 Reserved;
			public uint64 FeatureParameter;
		}
		[CRepr]
		public struct WHV_RUN_VP_CANCELED_CONTEXT
		{
			public WHV_RUN_VP_CANCEL_REASON CancelReason;
		}
		[CRepr]
		public struct WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT
		{
			public WHV_X64_PENDING_INTERRUPTION_TYPE DeliverableType;
		}
		[CRepr]
		public struct WHV_X64_APIC_EOI_CONTEXT
		{
			public uint32 InterruptVector;
		}
		[CRepr, Union]
		public struct WHV_X64_RDTSC_INFO
		{
			public _Anonymous_e__Struct Anonymous;
			public uint64 AsUINT64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_X64_RDTSC_CONTEXT
		{
			public uint64 TscAux;
			public uint64 VirtualOffset;
			public uint64 Tsc;
			public uint64 ReferenceTime;
			public WHV_X64_RDTSC_INFO RdtscInfo;
		}
		[CRepr]
		public struct WHV_X64_APIC_SMI_CONTEXT
		{
			public uint64 ApicIcr;
		}
		[CRepr]
		public struct WHV_HYPERCALL_CONTEXT
		{
			public uint64 Rax;
			public uint64 Rbx;
			public uint64 Rcx;
			public uint64 Rdx;
			public uint64 R8;
			public uint64 Rsi;
			public uint64 Rdi;
			public uint64 Reserved0;
			public WHV_UINT128[6] XmmRegisters;
			public uint64[2] Reserved1;
		}
		[CRepr]
		public struct WHV_X64_APIC_INIT_SIPI_CONTEXT
		{
			public uint64 ApicIcr;
		}
		[CRepr]
		public struct WHV_X64_APIC_WRITE_CONTEXT
		{
			public WHV_X64_APIC_WRITE_TYPE Type;
			public uint32 Reserved;
			public uint64 WriteValue;
		}
		[CRepr]
		public struct WHV_RUN_VP_EXIT_CONTEXT
		{
			public WHV_RUN_VP_EXIT_REASON ExitReason;
			public uint32 Reserved;
			public WHV_VP_EXIT_CONTEXT VpContext;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WHV_MEMORY_ACCESS_CONTEXT MemoryAccess;
				public WHV_X64_IO_PORT_ACCESS_CONTEXT IoPortAccess;
				public WHV_X64_MSR_ACCESS_CONTEXT MsrAccess;
				public WHV_X64_CPUID_ACCESS_CONTEXT CpuidAccess;
				public WHV_VP_EXCEPTION_CONTEXT VpException;
				public WHV_X64_INTERRUPTION_DELIVERABLE_CONTEXT InterruptWindow;
				public WHV_X64_UNSUPPORTED_FEATURE_CONTEXT UnsupportedFeature;
				public WHV_RUN_VP_CANCELED_CONTEXT CancelReason;
				public WHV_X64_APIC_EOI_CONTEXT ApicEoi;
				public WHV_X64_RDTSC_CONTEXT ReadTsc;
				public WHV_X64_APIC_SMI_CONTEXT ApicSmi;
				public WHV_HYPERCALL_CONTEXT Hypercall;
				public WHV_X64_APIC_INIT_SIPI_CONTEXT ApicInitSipi;
				public WHV_X64_APIC_WRITE_CONTEXT ApicWrite;
				public WHV_SYNIC_SINT_DELIVERABLE_CONTEXT SynicSintDeliverable;
			}
		}
		[CRepr]
		public struct WHV_INTERRUPT_CONTROL
		{
			public uint64 _bitfield;
			public uint32 Destination;
			public uint32 Vector;
		}
		[CRepr]
		public struct WHV_DOORBELL_MATCH_DATA
		{
			public uint64 GuestAddress;
			public uint64 Value;
			public uint32 Length;
			public uint32 _bitfield;
		}
		[CRepr]
		public struct WHV_PARTITION_MEMORY_COUNTERS
		{
			public uint64 Mapped4KPageCount;
			public uint64 Mapped2MPageCount;
			public uint64 Mapped1GPageCount;
		}
		[CRepr]
		public struct WHV_PROCESSOR_RUNTIME_COUNTERS
		{
			public uint64 TotalRuntime100ns;
			public uint64 HypervisorRuntime100ns;
		}
		[CRepr]
		public struct WHV_PROCESSOR_INTERCEPT_COUNTER
		{
			public uint64 Count;
			public uint64 Time100ns;
		}
		[CRepr]
		public struct WHV_PROCESSOR_INTERCEPT_COUNTERS
		{
			public WHV_PROCESSOR_INTERCEPT_COUNTER PageInvalidations;
			public WHV_PROCESSOR_INTERCEPT_COUNTER ControlRegisterAccesses;
			public WHV_PROCESSOR_INTERCEPT_COUNTER IoInstructions;
			public WHV_PROCESSOR_INTERCEPT_COUNTER HaltInstructions;
			public WHV_PROCESSOR_INTERCEPT_COUNTER CpuidInstructions;
			public WHV_PROCESSOR_INTERCEPT_COUNTER MsrAccesses;
			public WHV_PROCESSOR_INTERCEPT_COUNTER OtherIntercepts;
			public WHV_PROCESSOR_INTERCEPT_COUNTER PendingInterrupts;
			public WHV_PROCESSOR_INTERCEPT_COUNTER EmulatedInstructions;
			public WHV_PROCESSOR_INTERCEPT_COUNTER DebugRegisterAccesses;
			public WHV_PROCESSOR_INTERCEPT_COUNTER PageFaultIntercepts;
			public WHV_PROCESSOR_INTERCEPT_COUNTER NestedPageFaultIntercepts;
			public WHV_PROCESSOR_INTERCEPT_COUNTER Hypercalls;
			public WHV_PROCESSOR_INTERCEPT_COUNTER RdpmcInstructions;
		}
		[CRepr]
		public struct WHV_PROCESSOR_EVENT_COUNTERS
		{
			public uint64 PageFaultCount;
			public uint64 ExceptionCount;
			public uint64 InterruptCount;
		}
		[CRepr]
		public struct WHV_PROCESSOR_APIC_COUNTERS
		{
			public uint64 MmioAccessCount;
			public uint64 EoiAccessCount;
			public uint64 TprAccessCount;
			public uint64 SentIpiCount;
			public uint64 SelfIpiCount;
		}
		[CRepr]
		public struct WHV_PROCESSOR_SYNTHETIC_FEATURES_COUNTERS
		{
			public uint64 SyntheticInterruptsCount;
			public uint64 LongSpinWaitHypercallsCount;
			public uint64 OtherHypercallsCount;
			public uint64 SyntheticInterruptHypercallsCount;
			public uint64 VirtualInterruptHypercallsCount;
			public uint64 VirtualMmuHypercallsCount;
		}
		[CRepr]
		public struct WHV_SYNIC_EVENT_PARAMETERS
		{
			public uint32 VpIndex;
			public uint8 TargetSint;
			public uint8 Reserved;
			public uint16 FlagNumber;
		}
		[CRepr]
		public struct WHV_SRIOV_RESOURCE_DESCRIPTOR
		{
			public char16[200] PnpInstanceId;
			public LUID VirtualFunctionId;
			public uint16 VirtualFunctionIndex;
			public uint16 Reserved;
		}
		[CRepr]
		public struct WHV_VPCI_DEVICE_NOTIFICATION
		{
			public WHV_VPCI_DEVICE_NOTIFICATION_TYPE NotificationType;
			public uint32 Reserved1;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Reserved2;
			}
		}
		[CRepr]
		public struct WHV_VPCI_HARDWARE_IDS
		{
			public uint16 VendorID;
			public uint16 DeviceID;
			public uint8 RevisionID;
			public uint8 ProgIf;
			public uint8 SubClass;
			public uint8 BaseClass;
			public uint16 SubVendorID;
			public uint16 SubSystemID;
		}
		[CRepr]
		public struct WHV_VPCI_PROBED_BARS
		{
			public uint32[6] Value;
		}
		[CRepr]
		public struct WHV_VPCI_MMIO_MAPPING
		{
			public WHV_VPCI_DEVICE_REGISTER_SPACE Location;
			public WHV_VPCI_MMIO_RANGE_FLAGS Flags;
			public uint64 SizeInBytes;
			public uint64 OffsetInBytes;
			public void* VirtualAddress;
		}
		[CRepr]
		public struct WHV_VPCI_DEVICE_REGISTER
		{
			public WHV_VPCI_DEVICE_REGISTER_SPACE Location;
			public uint32 SizeInBytes;
			public uint64 OffsetInBytes;
		}
		[CRepr]
		public struct WHV_VPCI_INTERRUPT_TARGET
		{
			public uint32 Vector;
			public WHV_VPCI_INTERRUPT_TARGET_FLAGS Flags;
			public uint32 ProcessorCount;
			public uint32[0] Processors;
		}
		[CRepr]
		public struct WHV_TRIGGER_PARAMETERS
		{
			public WHV_TRIGGER_TYPE TriggerType;
			public uint32 Reserved;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WHV_INTERRUPT_CONTROL Interrupt;
				public WHV_SYNIC_EVENT_PARAMETERS SynicEvent;
				public _DeviceInterrupt_e__Struct DeviceInterrupt;
				
				[CRepr]
				public struct _DeviceInterrupt_e__Struct
				{
					public uint64 LogicalDeviceId;
					public uint64 MsiAddress;
					public uint32 MsiData;
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct WHV_VIRTUAL_PROCESSOR_PROPERTY
		{
			public WHV_VIRTUAL_PROCESSOR_PROPERTY_CODE PropertyCode;
			public uint32 Reserved;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint16 NumaNode;
				public uint64 Padding;
			}
		}
		[CRepr]
		public struct WHV_NOTIFICATION_PORT_PARAMETERS
		{
			public WHV_NOTIFICATION_PORT_TYPE NotificationPortType;
			public uint32 Reserved;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WHV_DOORBELL_MATCH_DATA Doorbell;
				public _Event_e__Struct Event;
				
				[CRepr]
				public struct _Event_e__Struct
				{
					public uint32 ConnectionId;
				}
			}
		}
		[CRepr, Union]
		public struct WHV_EMULATOR_STATUS
		{
			public _Anonymous_e__Struct Anonymous;
			public uint32 AsUINT32;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 _bitfield;
			}
		}
		[CRepr]
		public struct WHV_EMULATOR_MEMORY_ACCESS_INFO
		{
			public uint64 GpaAddress;
			public uint8 Direction;
			public uint8 AccessSize;
			public uint8[8] Data;
		}
		[CRepr]
		public struct WHV_EMULATOR_IO_ACCESS_INFO
		{
			public uint8 Direction;
			public uint16 Port;
			public uint16 AccessSize;
			public uint32 Data;
		}
		[CRepr]
		public struct WHV_EMULATOR_CALLBACKS
		{
			public uint32 Size;
			public uint32 Reserved;
			public WHV_EMULATOR_IO_PORT_CALLBACK WHvEmulatorIoPortCallback;
			public WHV_EMULATOR_MEMORY_CALLBACK WHvEmulatorMemoryCallback;
			public WHV_EMULATOR_GET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK WHvEmulatorGetVirtualProcessorRegisters;
			public WHV_EMULATOR_SET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK WHvEmulatorSetVirtualProcessorRegisters;
			public WHV_EMULATOR_TRANSLATE_GVA_PAGE_CALLBACK WHvEmulatorTranslateGvaPage;
		}
		[CRepr]
		public struct SOCKADDR_HV
		{
			public uint16 Family;
			public uint16 Reserved;
			public Guid VmId;
			public Guid ServiceId;
		}
		[CRepr]
		public struct HVSOCKET_ADDRESS_INFO
		{
			public Guid SystemId;
			public Guid VirtualMachineId;
			public Guid SiloId;
			public uint32 Flags;
		}
		[CRepr]
		public struct VM_GENCOUNTER
		{
			public uint64 GenerationCount;
			public uint64 GenerationCountHigh;
		}
		[CRepr]
		public struct HDV_PCI_PNP_ID
		{
			public uint16 VendorID;
			public uint16 DeviceID;
			public uint8 RevisionID;
			public uint8 ProgIf;
			public uint8 SubClass;
			public uint8 BaseClass;
			public uint16 SubVendorID;
			public uint16 SubSystemID;
		}
		[CRepr]
		public struct HDV_PCI_DEVICE_INTERFACE
		{
			public HDV_PCI_INTERFACE_VERSION Version;
			public HDV_PCI_DEVICE_INITIALIZE Initialize;
			public HDV_PCI_DEVICE_TEARDOWN Teardown;
			public HDV_PCI_DEVICE_SET_CONFIGURATION SetConfiguration;
			public HDV_PCI_DEVICE_GET_DETAILS GetDetails;
			public HDV_PCI_DEVICE_START Start;
			public HDV_PCI_DEVICE_STOP Stop;
			public HDV_PCI_READ_CONFIG_SPACE ReadConfigSpace;
			public HDV_PCI_WRITE_CONFIG_SPACE WriteConfigSpace;
			public HDV_PCI_READ_INTERCEPTED_MEMORY ReadInterceptedMemory;
			public HDV_PCI_WRITE_INTERCEPTED_MEMORY WriteInterceptedMemory;
		}
		[CRepr]
		public struct GPA_MEMORY_CHUNK
		{
			public uint64 GuestPhysicalStartPageIndex;
			public uint64 PageCount;
		}
		[CRepr, Union]
		public struct GUEST_OS_INFO
		{
			public uint64 AsUINT64;
			public _ClosedSource_e__Struct ClosedSource;
			public _OpenSource_e__Struct OpenSource;
			
			[CRepr]
			public struct _OpenSource_e__Struct
			{
				public uint64 _bitfield;
			}
			[CRepr]
			public struct _ClosedSource_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr, Union]
		public struct VIRTUAL_PROCESSOR_REGISTER
		{
			public uint64 Reg64;
			public uint32 Reg32;
			public uint16 Reg16;
			public uint8 Reg8;
			public _Reg128_e__Struct Reg128;
			public _X64_e__Union X64;
			
			[CRepr, Union]
			public struct _X64_e__Union
			{
				public _Segment_e__Struct Segment;
				public _Table_e__Struct Table;
				public _FpControlStatus_e__Struct FpControlStatus;
				public _XmmControlStatus_e__Struct XmmControlStatus;
				
				[CRepr]
				public struct _XmmControlStatus_e__Struct
				{
					public _Anonymous_e__Union Anonymous;
					public uint32 XmmStatusControl;
					public uint32 XmmStatusControlMask;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public uint64 LastFpRdp;
						public _Anonymous_e__Struct Anonymous;
						
						[CRepr]
						public struct _Anonymous_e__Struct
						{
							public uint32 LastFpDp;
							public uint16 LastFpDs;
						}
					}
				}
				[CRepr]
				public struct _FpControlStatus_e__Struct
				{
					public uint16 FpControl;
					public uint16 FpStatus;
					public uint8 FpTag;
					public uint8 Reserved;
					public uint16 LastFpOp;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public uint64 LastFpRip;
						public _Anonymous_e__Struct Anonymous;
						
						[CRepr]
						public struct _Anonymous_e__Struct
						{
							public uint32 LastFpEip;
							public uint16 LastFpCs;
						}
					}
				}
				[CRepr]
				public struct _Segment_e__Struct
				{
					public uint64 Base;
					public uint32 Limit;
					public uint16 Selector;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public uint16 Attributes;
						public _Anonymous_e__Struct Anonymous;
						
						[CRepr]
						public struct _Anonymous_e__Struct
						{
							public uint16 _bitfield;
						}
					}
				}
				[CRepr]
				public struct _Table_e__Struct
				{
					public uint16 Limit;
					public uint64 Base;
				}
			}
			[CRepr]
			public struct _Reg128_e__Struct
			{
				public uint64 Low64;
				public uint64 High64;
			}
		}
		[CRepr]
		public struct DOS_IMAGE_INFO
		{
			public PSTR PdbName;
			public uint64 ImageBaseAddress;
			public uint32 ImageSize;
			public uint32 Timestamp;
		}
		[CRepr]
		public struct MODULE_INFO
		{
			public PSTR ProcessImageName;
			public DOS_IMAGE_INFO Image;
		}
		
		// --- Functions ---
		
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetCapability(WHV_CAPABILITY_CODE CapabilityCode, void* CapabilityBuffer, uint32 CapabilityBufferSizeInBytes, uint32* WrittenSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreatePartition(out WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetupPartition(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvResetPartition(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvDeletePartition(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetPartitionProperty(WHV_PARTITION_HANDLE Partition, WHV_PARTITION_PROPERTY_CODE PropertyCode, void* PropertyBuffer, uint32 PropertyBufferSizeInBytes, uint32* WrittenSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetPartitionProperty(WHV_PARTITION_HANDLE Partition, WHV_PARTITION_PROPERTY_CODE PropertyCode, void* PropertyBuffer, uint32 PropertyBufferSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSuspendPartitionTime(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvResumePartitionTime(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvMapGpaRange(WHV_PARTITION_HANDLE Partition, void* SourceAddress, uint64 GuestAddress, uint64 SizeInBytes, WHV_MAP_GPA_RANGE_FLAGS Flags);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvMapGpaRange2(WHV_PARTITION_HANDLE Partition, HANDLE Process, void* SourceAddress, uint64 GuestAddress, uint64 SizeInBytes, WHV_MAP_GPA_RANGE_FLAGS Flags);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvUnmapGpaRange(WHV_PARTITION_HANDLE Partition, uint64 GuestAddress, uint64 SizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvTranslateGva(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint64 Gva, WHV_TRANSLATE_GVA_FLAGS TranslateFlags, out WHV_TRANSLATE_GVA_RESULT TranslationResult, out uint64 Gpa);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreateVirtualProcessor(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint32 Flags);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreateVirtualProcessor2(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_VIRTUAL_PROCESSOR_PROPERTY* Properties, uint32 PropertyCount);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvDeleteVirtualProcessor(WHV_PARTITION_HANDLE Partition, uint32 VpIndex);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvRunVirtualProcessor(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* ExitContext, uint32 ExitContextSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCancelRunVirtualProcessor(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint32 Flags);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorRegisters(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_REGISTER_NAME* RegisterNames, uint32 RegisterCount, WHV_REGISTER_VALUE* RegisterValues);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVirtualProcessorRegisters(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_REGISTER_NAME* RegisterNames, uint32 RegisterCount, WHV_REGISTER_VALUE* RegisterValues);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorInterruptControllerState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* State, uint32 StateSize, uint32* WrittenSize);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVirtualProcessorInterruptControllerState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* State, uint32 StateSize);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvRequestInterrupt(WHV_PARTITION_HANDLE Partition, in WHV_INTERRUPT_CONTROL Interrupt, uint32 InterruptControlSize);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorXsaveState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* Buffer, uint32 BufferSizeInBytes, out uint32 BytesWritten);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVirtualProcessorXsaveState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* Buffer, uint32 BufferSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvQueryGpaRangeDirtyBitmap(WHV_PARTITION_HANDLE Partition, uint64 GuestAddress, uint64 RangeSizeInBytes, uint64* Bitmap, uint32 BitmapSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetPartitionCounters(WHV_PARTITION_HANDLE Partition, WHV_PARTITION_COUNTER_SET CounterSet, void* Buffer, uint32 BufferSizeInBytes, uint32* BytesWritten);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorCounters(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_PROCESSOR_COUNTER_SET CounterSet, void* Buffer, uint32 BufferSizeInBytes, uint32* BytesWritten);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorInterruptControllerState2(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* State, uint32 StateSize, uint32* WrittenSize);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVirtualProcessorInterruptControllerState2(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, void* State, uint32 StateSize);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvRegisterPartitionDoorbellEvent(WHV_PARTITION_HANDLE Partition, in WHV_DOORBELL_MATCH_DATA MatchData, HANDLE EventHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvUnregisterPartitionDoorbellEvent(WHV_PARTITION_HANDLE Partition, in WHV_DOORBELL_MATCH_DATA MatchData);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvAdviseGpaRange(WHV_PARTITION_HANDLE Partition, WHV_MEMORY_RANGE_ENTRY* GpaRanges, uint32 GpaRangesCount, WHV_ADVISE_GPA_RANGE_CODE Advice, void* AdviceBuffer, uint32 AdviceBufferSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvReadGpaRange(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint64 GuestAddress, WHV_ACCESS_GPA_CONTROLS Controls, void* Data, uint32 DataSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvWriteGpaRange(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint64 GuestAddress, WHV_ACCESS_GPA_CONTROLS Controls, void* Data, uint32 DataSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSignalVirtualProcessorSynicEvent(WHV_PARTITION_HANDLE Partition, WHV_SYNIC_EVENT_PARAMETERS SynicEvent, BOOL* NewlySignaled);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_VIRTUAL_PROCESSOR_STATE_TYPE StateType, void* Buffer, uint32 BufferSizeInBytes, uint32* BytesWritten);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVirtualProcessorState(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, WHV_VIRTUAL_PROCESSOR_STATE_TYPE StateType, void* Buffer, uint32 BufferSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvAllocateVpciResource(Guid* ProviderId, WHV_ALLOCATE_VPCI_RESOURCE_FLAGS Flags, void* ResourceDescriptor, uint32 ResourceDescriptorSizeInBytes, out HANDLE VpciResource);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreateVpciDevice(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, HANDLE VpciResource, WHV_CREATE_VPCI_DEVICE_FLAGS Flags, HANDLE NotificationEventHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvDeleteVpciDevice(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVpciDeviceProperty(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, WHV_VPCI_DEVICE_PROPERTY_CODE PropertyCode, void* PropertyBuffer, uint32 PropertyBufferSizeInBytes, uint32* WrittenSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVpciDeviceNotification(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, out WHV_VPCI_DEVICE_NOTIFICATION Notification, uint32 NotificationSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvMapVpciDeviceMmioRanges(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, out uint32 MappingCount, out WHV_VPCI_MMIO_MAPPING* Mappings);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvUnmapVpciDeviceMmioRanges(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetVpciDevicePowerState(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, DEVICE_POWER_STATE PowerState);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvReadVpciDeviceRegister(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, in WHV_VPCI_DEVICE_REGISTER Register, void* Data);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvWriteVpciDeviceRegister(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, in WHV_VPCI_DEVICE_REGISTER Register, void* Data);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvMapVpciDeviceInterrupt(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, uint32 Index, uint32 MessageCount, in WHV_VPCI_INTERRUPT_TARGET Target, out uint64 MsiAddress, out uint32 MsiData);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvUnmapVpciDeviceInterrupt(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, uint32 Index);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvRetargetVpciDeviceInterrupt(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, uint64 MsiAddress, uint32 MsiData, in WHV_VPCI_INTERRUPT_TARGET Target);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvRequestVpciDeviceInterrupt(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, uint64 MsiAddress, uint32 MsiData);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVpciDeviceInterruptTarget(WHV_PARTITION_HANDLE Partition, uint64 LogicalDeviceId, uint32 Index, uint32 MultiMessageNumber, out WHV_VPCI_INTERRUPT_TARGET Target, uint32 TargetSizeInBytes, uint32* BytesWritten);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreateTrigger(WHV_PARTITION_HANDLE Partition, in WHV_TRIGGER_PARAMETERS Parameters, void** TriggerHandle, out HANDLE EventHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvUpdateTriggerParameters(WHV_PARTITION_HANDLE Partition, in WHV_TRIGGER_PARAMETERS Parameters, void* TriggerHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvDeleteTrigger(WHV_PARTITION_HANDLE Partition, void* TriggerHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCreateNotificationPort(WHV_PARTITION_HANDLE Partition, in WHV_NOTIFICATION_PORT_PARAMETERS Parameters, HANDLE EventHandle, void** PortHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvSetNotificationPortProperty(WHV_PARTITION_HANDLE Partition, void* PortHandle, WHV_NOTIFICATION_PORT_PROPERTY_CODE PropertyCode, uint64 PropertyValue);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvDeleteNotificationPort(WHV_PARTITION_HANDLE Partition, void* PortHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvPostVirtualProcessorSynicMessage(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint32 SintIndex, void* Message, uint32 MessageSizeInBytes);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetVirtualProcessorCpuidOutput(WHV_PARTITION_HANDLE Partition, uint32 VpIndex, uint32 Eax, uint32 Ecx, out WHV_CPUID_OUTPUT CpuidOutput);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvGetInterruptTargetVpSet(WHV_PARTITION_HANDLE Partition, uint64 Destination, WHV_INTERRUPT_DESTINATION_MODE DestinationMode, uint32* TargetVps, uint32 VpCount, out uint32 TargetVpCount);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvStartPartitionMigration(WHV_PARTITION_HANDLE Partition, out HANDLE MigrationHandle);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCancelPartitionMigration(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvCompletePartitionMigration(WHV_PARTITION_HANDLE Partition);
		[Import("winhvplatform.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvAcceptPartitionMigration(HANDLE MigrationHandle, out WHV_PARTITION_HANDLE Partition);
		[Import("winhvemulation.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvEmulatorCreateEmulator(in WHV_EMULATOR_CALLBACKS Callbacks, void** Emulator);
		[Import("winhvemulation.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvEmulatorDestroyEmulator(void* Emulator);
		[Import("winhvemulation.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvEmulatorTryIoEmulation(void* Emulator, void* Context, in WHV_VP_EXIT_CONTEXT VpContext, in WHV_X64_IO_PORT_ACCESS_CONTEXT IoInstructionContext, out WHV_EMULATOR_STATUS EmulatorReturnStatus);
		[Import("winhvemulation.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WHvEmulatorTryMmioEmulation(void* Emulator, void* Context, in WHV_VP_EXIT_CONTEXT VpContext, in WHV_MEMORY_ACCESS_CONTEXT MmioInstructionContext, out WHV_EMULATOR_STATUS EmulatorReturnStatus);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvInitializeDeviceHost(HCS_SYSTEM computeSystem, void** deviceHostHandle);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvTeardownDeviceHost(void* deviceHostHandle);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvCreateDeviceInstance(void* deviceHostHandle, HDV_DEVICE_TYPE deviceType, in Guid deviceClassId, in Guid deviceInstanceId, void* deviceInterface, void* deviceContext, void** deviceHandle);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvReadGuestMemory(void* requestor, uint64 guestPhysicalAddress, uint32 byteCount, uint8* buffer);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvWriteGuestMemory(void* requestor, uint64 guestPhysicalAddress, uint32 byteCount, uint8* buffer);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvCreateGuestMemoryAperture(void* requestor, uint64 guestPhysicalAddress, uint32 byteCount, BOOL writeProtected, void** mappedAddress);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvDestroyGuestMemoryAperture(void* requestor, void* mappedAddress);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvDeliverGuestInterrupt(void* requestor, uint64 msiAddress, uint32 msiData);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvRegisterDoorbell(void* requestor, HDV_PCI_BAR_SELECTOR BarIndex, uint64 BarOffset, uint64 TriggerValue, uint64 Flags, HANDLE DoorbellEvent);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvUnregisterDoorbell(void* requestor, HDV_PCI_BAR_SELECTOR BarIndex, uint64 BarOffset, uint64 TriggerValue, uint64 Flags);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvCreateSectionBackedMmioRange(void* requestor, HDV_PCI_BAR_SELECTOR barIndex, uint64 offsetInPages, uint64 lengthInPages, HDV_MMIO_MAPPING_FLAGS MappingFlags, HANDLE sectionHandle, uint64 sectionOffsetInPages);
		[Import("vmdevicehost.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HdvDestroySectionBackedMmioRange(void* requestor, HDV_PCI_BAR_SELECTOR barIndex, uint64 offsetInPages);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LocateSavedStateFiles(PWSTR vmName, PWSTR snapshotName, out PWSTR binPath, out PWSTR vsvPath, out PWSTR vmrsPath);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadSavedStateFile(PWSTR vmrsFile, void** vmSavedStateDumpHandle);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ApplyPendingSavedStateFileReplayLog(PWSTR vmrsFile);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadSavedStateFiles(PWSTR binFile, PWSTR vsvFile, void** vmSavedStateDumpHandle);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReleaseSavedStateFiles(void* vmSavedStateDumpHandle);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGuestEnabledVirtualTrustLevels(void* vmSavedStateDumpHandle, out uint32 virtualTrustLevels);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGuestOsInfo(void* vmSavedStateDumpHandle, uint8 virtualTrustLevel, out GUEST_OS_INFO guestOsInfo);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetVpCount(void* vmSavedStateDumpHandle, out uint32 vpCount);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetArchitecture(void* vmSavedStateDumpHandle, uint32 vpId, out VIRTUAL_PROCESSOR_ARCH architecture);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ForceArchitecture(void* vmSavedStateDumpHandle, uint32 vpId, VIRTUAL_PROCESSOR_ARCH architecture);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetActiveVirtualTrustLevel(void* vmSavedStateDumpHandle, uint32 vpId, out uint8 virtualTrustLevel);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetEnabledVirtualTrustLevels(void* vmSavedStateDumpHandle, uint32 vpId, out uint32 virtualTrustLevels);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ForceActiveVirtualTrustLevel(void* vmSavedStateDumpHandle, uint32 vpId, uint8 virtualTrustLevel);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsActiveVirtualTrustLevelEnabled(void* vmSavedStateDumpHandle, uint32 vpId, out BOOL activeVirtualTrustLevelEnabled);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IsNestedVirtualizationEnabled(void* vmSavedStateDumpHandle, out BOOL enabled);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetNestedVirtualizationMode(void* vmSavedStateDumpHandle, uint32 vpId, out BOOL enabled);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ForceNestedHostMode(void* vmSavedStateDumpHandle, uint32 vpId, BOOL hostMode, BOOL* oldMode);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InKernelSpace(void* vmSavedStateDumpHandle, uint32 vpId, out BOOL inKernelSpace);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRegisterValue(void* vmSavedStateDumpHandle, uint32 vpId, uint32 registerId, out VIRTUAL_PROCESSOR_REGISTER registerValue);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetPagingMode(void* vmSavedStateDumpHandle, uint32 vpId, out PAGING_MODE pagingMode);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ForcePagingMode(void* vmSavedStateDumpHandle, uint32 vpId, PAGING_MODE pagingMode);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadGuestPhysicalAddress(void* vmSavedStateDumpHandle, uint64 physicalAddress, void* buffer, uint32 bufferSize, uint32* bytesRead);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GuestVirtualAddressToPhysicalAddress(void* vmSavedStateDumpHandle, uint32 vpId, uint64 virtualAddress, out uint64 physicalAddress, uint64* unmappedRegionSize);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGuestPhysicalMemoryChunks(void* vmSavedStateDumpHandle, out uint64 memoryChunkPageSize, out GPA_MEMORY_CHUNK memoryChunks, out uint64 memoryChunkCount);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GuestPhysicalAddressToRawSavedMemoryOffset(void* vmSavedStateDumpHandle, uint64 physicalAddress, out uint64 rawSavedMemoryOffset);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadGuestRawSavedMemory(void* vmSavedStateDumpHandle, uint64 rawSavedMemoryOffset, void* buffer, uint32 bufferSize, uint32* bytesRead);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGuestRawSavedMemorySize(void* vmSavedStateDumpHandle, out uint64 guestRawSavedMemorySize);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetMemoryBlockCacheLimit(void* vmSavedStateDumpHandle, uint64 memoryBlockCacheLimit);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetMemoryBlockCacheLimit(void* vmSavedStateDumpHandle, out uint64 memoryBlockCacheLimit);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ApplyGuestMemoryFix(void* vmSavedStateDumpHandle, uint32 vpId, uint64 virtualAddress, void* fixBuffer, uint32 fixBufferSize);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadSavedStateSymbolProvider(void* vmSavedStateDumpHandle, PWSTR userSymbols, BOOL force);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReleaseSavedStateSymbolProvider(void* vmSavedStateDumpHandle);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GetSavedStateSymbolProviderHandle(void* vmSavedStateDumpHandle);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetSavedStateSymbolProviderDebugInfoCallback(void* vmSavedStateDumpHandle, GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK Callback);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadSavedStateModuleSymbols(void* vmSavedStateDumpHandle, PSTR imageName, PSTR moduleName, uint64 baseAddress, uint32 sizeOfBase);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadSavedStateModuleSymbolsEx(void* vmSavedStateDumpHandle, PSTR imageName, uint32 imageTimestamp, PSTR moduleName, uint64 baseAddress, uint32 sizeOfBase);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ResolveSavedStateGlobalVariableAddress(void* vmSavedStateDumpHandle, uint32 vpId, PSTR globalName, out uint64 virtualAddress, uint32* size);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadSavedStateGlobalVariable(void* vmSavedStateDumpHandle, uint32 vpId, PSTR globalName, void* buffer, uint32 bufferSize);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetSavedStateSymbolTypeSize(void* vmSavedStateDumpHandle, uint32 vpId, PSTR typeName, out uint32 size);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FindSavedStateSymbolFieldInType(void* vmSavedStateDumpHandle, uint32 vpId, PSTR typeName, PWSTR fieldName, out uint32 offset, out BOOL found);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetSavedStateSymbolFieldInfo(void* vmSavedStateDumpHandle, uint32 vpId, PSTR typeName, out PWSTR typeFieldInfoMap);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ScanMemoryForDosImages(void* vmSavedStateDumpHandle, uint32 vpId, uint64 startAddress, uint64 endAddress, void* callbackContext, FOUND_IMAGE_CALLBACK foundImageCallback, ref uint64 standaloneAddress, uint32 standaloneAddressCount);
		[Import("vmsavedstatedumpprovider.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CallStackUnwind(void* vmSavedStateDumpHandle, uint32 vpId, ref MODULE_INFO imageInfo, uint32 imageInfoCount, uint32 frameCount, out PWSTR callStack);
	}
}
