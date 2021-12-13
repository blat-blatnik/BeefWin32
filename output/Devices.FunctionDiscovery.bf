using System;

// namespace Devices.FunctionDiscovery
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FD_EVENTID_PRIVATE = 100;
		public const uint32 FD_EVENTID = 1000;
		public const uint32 FD_EVENTID_SEARCHCOMPLETE = 1000;
		public const uint32 FD_EVENTID_ASYNCTHREADEXIT = 1001;
		public const uint32 FD_EVENTID_SEARCHSTART = 1002;
		public const uint32 FD_EVENTID_IPADDRESSCHANGE = 1003;
		public const uint32 FD_EVENTID_QUERYREFRESH = 1004;
		public const Guid SID_PnpProvider = .(0x8101368e, 0xcabb, 0x4426, 0xac, 0xff, 0x96, 0xc4, 0x10, 0x81, 0x20, 0x00);
		public const Guid SID_UPnPActivator = .(0x0d0d66eb, 0xcf74, 0x4164, 0xb5, 0x2f, 0x08, 0x34, 0x46, 0x72, 0xdd, 0x46);
		public const Guid SID_EnumInterface = .(0x40eab0b9, 0x4d7f, 0x4b53, 0xa3, 0x34, 0x15, 0x81, 0xdd, 0x90, 0x41, 0xf4);
		public const Guid SID_PNPXPropertyStore = .(0xa86530b1, 0x542f, 0x439f, 0xb7, 0x1c, 0xb0, 0x75, 0x6b, 0x13, 0x67, 0x7a);
		public const Guid SID_PNPXAssociation = .(0xcee8ccc9, 0x4f6b, 0x4469, 0xa2, 0x35, 0x5a, 0x22, 0x86, 0x9e, 0xef, 0x03);
		public const Guid SID_PNPXServiceCollection = .(0x439e80ee, 0xa217, 0x4712, 0x9f, 0xa6, 0xde, 0xab, 0xd9, 0xc2, 0xa7, 0x27);
		public const Guid SID_FDPairingHandler = .(0x383b69fa, 0x5486, 0x49da, 0x91, 0xf5, 0xd6, 0x3c, 0x24, 0xc8, 0xe9, 0xd0);
		public const Guid SID_EnumDeviceFunction = .(0x13e0e9e2, 0xc3fa, 0x4e3c, 0x90, 0x6e, 0x64, 0x50, 0x2f, 0xa4, 0xdc, 0x95);
		public const Guid SID_UnpairProvider = .(0x89a502fc, 0x857b, 0x4698, 0xa0, 0xb7, 0x02, 0x71, 0x92, 0x00, 0x2f, 0x9e);
		public const Guid SID_DeviceDisplayStatusManager = .(0xf59aa553, 0x8309, 0x46ca, 0x97, 0x36, 0x1a, 0xc3, 0xc6, 0x2d, 0x60, 0x31);
		public const Guid SID_FunctionDiscoveryProviderRefresh = .(0x2b4cbdc9, 0x31c4, 0x40d4, 0xa6, 0x2d, 0x77, 0x2a, 0xa1, 0x74, 0xed, 0x52);
		public const Guid SID_UninstallDeviceFunction = .(0xc920566e, 0x5671, 0x4496, 0x80, 0x25, 0xbf, 0x0b, 0x89, 0xbd, 0x44, 0xcd);
		public const Guid FMTID_FD = .(0x904b03a2, 0x471d, 0x423c, 0xa5, 0x84, 0xf3, 0x48, 0x32, 0x38, 0xa1, 0x46);
		public const uint32 FD_Visibility_Default = 0;
		public const uint32 FD_Visibility_Hidden = 1;
		public const Guid FMTID_Device = .(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57);
		public const Guid FMTID_DeviceInterface = .(0x53808008, 0x07bb, 0x4661, 0xbc, 0x3c, 0xb5, 0x95, 0x3e, 0x70, 0x85, 0x60);
		public const Guid FMTID_Pairing = .(0x8807cae6, 0x7db6, 0x4f10, 0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc);
		public const Guid FMTID_WSD = .(0x92506491, 0xff95, 0x4724, 0xa0, 0x5a, 0x5b, 0x81, 0x88, 0x5a, 0x7c, 0x92);
		public const Guid FMTID_PNPX = .(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd);
		public const Guid FMTID_PNPXDynamicProperty = .(0x4fc5077e, 0xb686, 0x44be, 0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd);
		public const uint32 PNPX_INSTALLSTATE_NOTINSTALLED = 0;
		public const uint32 PNPX_INSTALLSTATE_INSTALLED = 1;
		public const uint32 PNPX_INSTALLSTATE_INSTALLING = 2;
		public const uint32 PNPX_INSTALLSTATE_FAILED = 3;
		public const uint32 FD_LONGHORN = 1;
		public const uint32 MAX_FDCONSTRAINTNAME_LENGTH = 100;
		public const uint32 MAX_FDCONSTRAINTVALUE_LENGTH = 1000;
		public const HRESULT E_FDPAIRING_NOCONNECTION = -1882193919;
		public const HRESULT E_FDPAIRING_HWFAILURE = -1882193918;
		public const HRESULT E_FDPAIRING_AUTHFAILURE = -1882193917;
		public const HRESULT E_FDPAIRING_CONNECTTIMEOUT = -1882193916;
		public const HRESULT E_FDPAIRING_TOOMANYCONNECTIONS = -1882193915;
		public const HRESULT E_FDPAIRING_AUTHNOTALLOWED = -1882193914;
		public const HRESULT E_FDPAIRING_IPBUSDISABLED = -1882193913;
		public const HRESULT E_FDPAIRING_NOPROFILES = -1882193912;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PropertyConstraint : int32
		{
			QC_EQUALS = 0,
			QC_NOTEQUAL = 1,
			QC_LESSTHAN = 2,
			QC_LESSTHANOREQUAL = 3,
			QC_GREATERTHAN = 4,
			QC_GREATERTHANOREQUAL = 5,
			QC_STARTSWITH = 6,
			QC_EXISTS = 7,
			QC_DOESNOTEXIST = 8,
			QC_CONTAINS = 9,
		}
		[AllowDuplicates]
		public enum SystemVisibilityFlags : int32
		{
			SVF_SYSTEM = 0,
			SVF_USER = 1,
		}
		[AllowDuplicates]
		public enum QueryUpdateAction : int32
		{
			QUA_ADD = 0,
			QUA_REMOVE = 1,
			QUA_CHANGE = 2,
		}
		[AllowDuplicates]
		public enum QueryCategoryType : int32
		{
			QCT_PROVIDER = 0,
			QCT_LAYERED = 1,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_PNPXAssociation = .(0xcee8ccc9, 0x4f6b, 0x4469, 0xa2, 0x35, 0x5a, 0x22, 0x86, 0x9e, 0xef, 0x03);
		public const Guid CLSID_PNPXPairingHandler = .(0xb8a27942, 0xade7, 0x4085, 0xaa, 0x6e, 0x4f, 0xad, 0xc7, 0xad, 0xa1, 0xef);
		public const Guid CLSID_FunctionDiscovery = .(0xc72be2ec, 0x8e90, 0x452c, 0xb2, 0x9a, 0xab, 0x8f, 0xf1, 0xc0, 0x71, 0xfc);
		public const Guid CLSID_PropertyStore = .(0xe4796550, 0xdf61, 0x448b, 0x91, 0x93, 0x13, 0xfc, 0x13, 0x41, 0xb1, 0x63);
		public const Guid CLSID_FunctionInstanceCollection = .(0xba818ce5, 0xb55f, 0x443f, 0xad, 0x39, 0x2f, 0xe8, 0x9b, 0xe6, 0x19, 0x1f);
		public const Guid CLSID_PropertyStoreCollection = .(0xedd36029, 0xd753, 0x4862, 0xaa, 0x5b, 0x5b, 0xcc, 0xad, 0x2a, 0x4d, 0x29);
		
		// --- COM Interfaces ---
		
		public struct IFunctionDiscoveryNotification {}
		public struct IFunctionDiscovery {}
		public struct IFunctionInstance {}
		public struct IFunctionInstanceCollection {}
		public struct IPropertyStoreCollection {}
		public struct IFunctionInstanceQuery {}
		public struct IFunctionInstanceCollectionQuery {}
		public struct IFunctionDiscoveryProvider {}
		public struct IProviderProperties {}
		public struct IProviderPublishing {}
		public struct IFunctionDiscoveryProviderFactory {}
		public struct IFunctionDiscoveryProviderQuery {}
		public struct IProviderQueryConstraintCollection {}
		public struct IProviderPropertyConstraintCollection {}
		public struct IFunctionDiscoveryServiceProvider {}
		public struct IPNPXAssociation {}
		public struct IPNPXDeviceAssociation {}
		
	}
}
