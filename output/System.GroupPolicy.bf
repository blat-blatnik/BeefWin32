using System;

// namespace System.GroupPolicy
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 GPM_USE_PDC = 0;
		public const uint32 GPM_USE_ANYDC = 1;
		public const uint32 GPM_DONOTUSE_W2KDC = 2;
		public const uint32 GPM_DONOT_VALIDATEDC = 1;
		public const uint32 GPM_MIGRATIONTABLE_ONLY = 1;
		public const uint32 GPM_PROCESS_SECURITY = 2;
		public const uint32 RSOP_NO_COMPUTER = 65536;
		public const uint32 RSOP_NO_USER = 131072;
		public const uint32 RSOP_PLANNING_ASSUME_SLOW_LINK = 1;
		public const uint32 RSOP_PLANNING_ASSUME_LOOPBACK_MERGE = 2;
		public const uint32 RSOP_PLANNING_ASSUME_LOOPBACK_REPLACE = 4;
		public const uint32 RSOP_PLANNING_ASSUME_USER_WQLFILTER_TRUE = 8;
		public const uint32 RSOP_PLANNING_ASSUME_COMP_WQLFILTER_TRUE = 16;
		public const uint32 PI_NOUI = 1;
		public const uint32 PI_APPLYPOLICY = 2;
		public const uint32 PT_TEMPORARY = 1;
		public const uint32 PT_ROAMING = 2;
		public const uint32 PT_MANDATORY = 4;
		public const uint32 PT_ROAMING_PREEXISTING = 8;
		public const uint32 RP_FORCE = 1;
		public const uint32 RP_SYNC = 2;
		public const uint32 GPC_BLOCK_POLICY = 1;
		public const uint32 GPO_FLAG_DISABLE = 1;
		public const uint32 GPO_FLAG_FORCE = 2;
		public const uint32 GPO_LIST_FLAG_MACHINE = 1;
		public const uint32 GPO_LIST_FLAG_SITEONLY = 2;
		public const uint32 GPO_LIST_FLAG_NO_WMIFILTERS = 4;
		public const uint32 GPO_LIST_FLAG_NO_SECURITYFILTERS = 8;
		public const uint32 GPO_INFO_FLAG_MACHINE = 1;
		public const uint32 GPO_INFO_FLAG_BACKGROUND = 16;
		public const uint32 GPO_INFO_FLAG_SLOWLINK = 32;
		public const uint32 GPO_INFO_FLAG_VERBOSE = 64;
		public const uint32 GPO_INFO_FLAG_NOCHANGES = 128;
		public const uint32 GPO_INFO_FLAG_LINKTRANSITION = 256;
		public const uint32 GPO_INFO_FLAG_LOGRSOP_TRANSITION = 512;
		public const uint32 GPO_INFO_FLAG_FORCED_REFRESH = 1024;
		public const uint32 GPO_INFO_FLAG_SAFEMODE_BOOT = 2048;
		public const uint32 GPO_INFO_FLAG_ASYNC_FOREGROUND = 4096;
		public const uint32 FLAG_NO_GPO_FILTER = 2147483648;
		public const uint32 FLAG_NO_CSE_INVOKE = 1073741824;
		public const uint32 FLAG_ASSUME_SLOW_LINK = 536870912;
		public const uint32 FLAG_LOOPBACK_MERGE = 268435456;
		public const uint32 FLAG_LOOPBACK_REPLACE = 134217728;
		public const uint32 FLAG_ASSUME_USER_WQLFILTER_TRUE = 67108864;
		public const uint32 FLAG_ASSUME_COMP_WQLFILTER_TRUE = 33554432;
		public const uint32 FLAG_PLANNING_MODE = 16777216;
		public const uint32 FLAG_NO_USER = 1;
		public const uint32 FLAG_NO_COMPUTER = 2;
		public const uint32 FLAG_FORCE_CREATENAMESPACE = 4;
		public const uint32 RSOP_USER_ACCESS_DENIED = 1;
		public const uint32 RSOP_COMPUTER_ACCESS_DENIED = 2;
		public const uint32 RSOP_TEMPNAMESPACE_EXISTS = 4;
		public const uint32 LOCALSTATE_ASSIGNED = 1;
		public const uint32 LOCALSTATE_PUBLISHED = 2;
		public const uint32 LOCALSTATE_UNINSTALL_UNMANAGED = 4;
		public const uint32 LOCALSTATE_POLICYREMOVE_ORPHAN = 8;
		public const uint32 LOCALSTATE_POLICYREMOVE_UNINSTALL = 16;
		public const uint32 LOCALSTATE_ORPHANED = 32;
		public const uint32 LOCALSTATE_UNINSTALLED = 64;
		public const uint32 MANAGED_APPS_USERAPPLICATIONS = 1;
		public const uint32 MANAGED_APPS_FROMCATEGORY = 2;
		public const uint32 MANAGED_APPS_INFOLEVEL_DEFAULT = 65536;
		public const uint32 MANAGED_APPTYPE_WINDOWSINSTALLER = 1;
		public const uint32 MANAGED_APPTYPE_SETUPEXE = 2;
		public const uint32 MANAGED_APPTYPE_UNSUPPORTED = 3;
		public const Guid CLSID_GPESnapIn = .(0x8fc0b734, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid NODEID_Machine = .(0x8fc0b737, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid NODEID_MachineSWSettings = .(0x8fc0b73a, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid NODEID_User = .(0x8fc0b738, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid NODEID_UserSWSettings = .(0x8fc0b73c, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid CLSID_GroupPolicyObject = .(0xea502722, 0xa23d, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
		public const Guid CLSID_RSOPSnapIn = .(0x6dc3804b, 0x7212, 0x458d, 0xad, 0xb0, 0x9a, 0x07, 0xe2, 0xae, 0x1f, 0xa2);
		public const Guid NODEID_RSOPMachine = .(0xbd4c1a2e, 0x0b7a, 0x4a62, 0xa6, 0xb0, 0xc0, 0x57, 0x75, 0x39, 0xc9, 0x7e);
		public const Guid NODEID_RSOPMachineSWSettings = .(0x6a76273e, 0xeb8e, 0x45db, 0x94, 0xc5, 0x25, 0x66, 0x3a, 0x5f, 0x2c, 0x1a);
		public const Guid NODEID_RSOPUser = .(0xab87364f, 0x0cec, 0x4cd8, 0x9b, 0xf8, 0x89, 0x8f, 0x34, 0x62, 0x8f, 0xb8);
		public const Guid NODEID_RSOPUserSWSettings = .(0xe52c5ce3, 0xfd27, 0x4402, 0x84, 0xde, 0xd9, 0xa5, 0xf2, 0x85, 0x89, 0x10);
		public const uint32 GPO_SECTION_ROOT = 0;
		public const uint32 GPO_SECTION_USER = 1;
		public const uint32 GPO_SECTION_MACHINE = 2;
		public const uint32 GPO_OPEN_LOAD_REGISTRY = 1;
		public const uint32 GPO_OPEN_READ_ONLY = 2;
		public const uint32 GPO_OPTION_DISABLE_USER = 1;
		public const uint32 GPO_OPTION_DISABLE_MACHINE = 2;
		public const uint32 RSOP_INFO_FLAG_DIAGNOSTIC_MODE = 1;
		public const uint32 GPO_BROWSE_DISABLENEW = 1;
		public const uint32 GPO_BROWSE_NOCOMPUTERS = 2;
		public const uint32 GPO_BROWSE_NODSGPOS = 4;
		public const uint32 GPO_BROWSE_OPENBUTTON = 8;
		public const uint32 GPO_BROWSE_INITTOALL = 16;
		public const uint32 GPO_BROWSE_NOUSERGPOS = 32;
		public const uint32 GPO_BROWSE_SENDAPPLYONEDIT = 64;
		
		// --- Typedefs ---
		
		public typealias CriticalPolicySectionHandle = int;
		
		// --- Enums ---
		
		public enum GPMRSOPMode : int32
		{
			Unknown = 0,
			Planning = 1,
			Logging = 2,
		}
		public enum GPMPermissionType : int32
		{
			GPOApply = 65536,
			GPORead = 65792,
			GPOEdit = 65793,
			GPOEditSecurityAndDelete = 65794,
			GPOCustom = 65795,
			WMIFilterEdit = 131072,
			WMIFilterFullControl = 131073,
			WMIFilterCustom = 131074,
			SOMLink = 1835008,
			SOMLogging = 1573120,
			SOMPlanning = 1573376,
			SOMWMICreate = 1049344,
			SOMWMIFullControl = 1049345,
			SOMGPOCreate = 1049600,
			StarterGPORead = 197888,
			StarterGPOEdit = 197889,
			StarterGPOFullControl = 197890,
			StarterGPOCustom = 197891,
			SOMStarterGPOCreate = 1049856,
		}
		public enum GPMSearchProperty : int32
		{
			gpoPermissions = 0,
			gpoEffectivePermissions = 1,
			gpoDisplayName = 2,
			gpoWMIFilter = 3,
			gpoID = 4,
			gpoComputerExtensions = 5,
			gpoUserExtensions = 6,
			somLinks = 7,
			gpoDomain = 8,
			backupMostRecent = 9,
			starterGPOPermissions = 10,
			starterGPOEffectivePermissions = 11,
			starterGPODisplayName = 12,
			starterGPOID = 13,
			starterGPODomain = 14,
		}
		public enum GPMSearchOperation : int32
		{
			Equals = 0,
			Contains = 1,
			NotContains = 2,
			NotEquals = 3,
		}
		public enum GPMReportType : int32
		{
			XML = 0,
			HTML = 1,
			InfraXML = 2,
			InfraRefreshXML = 3,
			ClientHealthXML = 4,
			ClientHealthRefreshXML = 5,
		}
		public enum GPMEntryType : int32
		{
			User = 0,
			Computer = 1,
			LocalGroup = 2,
			GlobalGroup = 3,
			UniversalGroup = 4,
			UNCPath = 5,
			Unknown = 6,
		}
		public enum GPMDestinationOption : int32
		{
			SameAsSource = 0,
			None = 1,
			ByRelativeName = 2,
			Set = 3,
		}
		public enum GPMReportingOptions : int32
		{
			Legacy = 0,
			Comments = 1,
		}
		public enum GPMSOMType : int32
		{
			Site = 0,
			Domain = 1,
			OU = 2,
		}
		public enum GPMBackupType : int32
		{
			GPO = 0,
			StarterGPO = 1,
		}
		public enum GPMStarterGPOType : int32
		{
			System = 0,
			Custom = 1,
		}
		public enum GPO_LINK : int32
		{
			Unknown = 0,
			Machine = 1,
			Site = 2,
			Domain = 3,
			OrganizationalUnit = 4,
		}
		public enum SETTINGSTATUS : int32
		{
			RSOPUnspecified = 0,
			RSOPApplied = 1,
			RSOPIgnored = 2,
			RSOPFailed = 3,
			RSOPSubsettingFailed = 4,
		}
		public enum INSTALLSPECTYPE : int32
		{
			APPNAME = 1,
			FILEEXT = 2,
			PROGID = 3,
			COMCLASS = 4,
		}
		public enum APPSTATE : int32
		{
			ABSENT = 0,
			ASSIGNED = 1,
			PUBLISHED = 2,
		}
		public enum GROUP_POLICY_OBJECT_TYPE : int32
		{
			Local = 0,
			Remote = 1,
			DS = 2,
			LocalUser = 3,
			LocalGroup = 4,
		}
		public enum GROUP_POLICY_HINT_TYPE : int32
		{
			Unknown = 0,
			Machine = 1,
			Site = 2,
			Domain = 3,
			OrganizationalUnit = 4,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PFNSTATUSMESSAGECALLBACK(BOOL bVerbose, PWSTR lpMessage);
		public function uint32 PFNPROCESSGROUPPOLICY(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, ref GROUP_POLICY_OBJECTA pDeletedGPOList, ref GROUP_POLICY_OBJECTA pChangedGPOList, uint pHandle, out BOOL pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback);
		public function uint32 PFNPROCESSGROUPPOLICYEX(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, ref GROUP_POLICY_OBJECTA pDeletedGPOList, ref GROUP_POLICY_OBJECTA pChangedGPOList, uint pHandle, out BOOL pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback, IWbemServices* pWbemServices, out HRESULT pRsopStatus);
		public function uint32 PFNGENERATEGROUPPOLICY(uint32 dwFlags, out BOOL pbAbort, PWSTR pwszSite, RSOP_TARGET* pComputerTarget, RSOP_TARGET* pUserTarget);
		
		// --- Structs ---
		
		[CRepr]
		public struct GROUP_POLICY_OBJECTA
		{
			public uint32 dwOptions;
			public uint32 dwVersion;
			public PSTR lpDSPath;
			public PSTR lpFileSysPath;
			public PSTR lpDisplayName;
			public CHAR[50] szGPOName;
			public GPO_LINK GPOLink;
			public LPARAM lParam;
			public GROUP_POLICY_OBJECTA* pNext;
			public GROUP_POLICY_OBJECTA* pPrev;
			public PSTR lpExtensions;
			public LPARAM lParam2;
			public PSTR lpLink;
		}
		[CRepr]
		public struct GROUP_POLICY_OBJECTW
		{
			public uint32 dwOptions;
			public uint32 dwVersion;
			public PWSTR lpDSPath;
			public PWSTR lpFileSysPath;
			public PWSTR lpDisplayName;
			public char16[50] szGPOName;
			public GPO_LINK GPOLink;
			public LPARAM lParam;
			public GROUP_POLICY_OBJECTW* pNext;
			public GROUP_POLICY_OBJECTW* pPrev;
			public PWSTR lpExtensions;
			public LPARAM lParam2;
			public PWSTR lpLink;
		}
		[CRepr]
		public struct RSOP_TARGET
		{
			public PWSTR pwszAccountName;
			public PWSTR pwszNewSOM;
			public SAFEARRAY* psaSecurityGroups;
			public void* pRsopToken;
			public GROUP_POLICY_OBJECTA* pGPOList;
			public IWbemServices* pWbemServices;
		}
		[CRepr]
		public struct POLICYSETTINGSTATUSINFO
		{
			public PWSTR szKey;
			public PWSTR szEventSource;
			public PWSTR szEventLogName;
			public uint32 dwEventID;
			public uint32 dwErrorCode;
			public SETTINGSTATUS status;
			public SYSTEMTIME timeLogged;
		}
		[CRepr, Union]
		public struct INSTALLSPEC
		{
			public _AppName_e__Struct AppName;
			public PWSTR FileExt;
			public PWSTR ProgId;
			public _COMClass_e__Struct COMClass;
			
			[CRepr]
			public struct _AppName_e__Struct
			{
				public PWSTR Name;
				public Guid GPOId;
			}
			[CRepr]
			public struct _COMClass_e__Struct
			{
				public Guid Clsid;
				public uint32 ClsCtx;
			}
		}
		[CRepr]
		public struct INSTALLDATA
		{
			public INSTALLSPECTYPE Type;
			public INSTALLSPEC Spec;
		}
		[CRepr]
		public struct LOCALMANAGEDAPPLICATION
		{
			public PWSTR pszDeploymentName;
			public PWSTR pszPolicyName;
			public PWSTR pszProductId;
			public uint32 dwState;
		}
		[CRepr]
		public struct MANAGEDAPPLICATION
		{
			public PWSTR pszPackageName;
			public PWSTR pszPublisher;
			public uint32 dwVersionHi;
			public uint32 dwVersionLo;
			public uint32 dwRevision;
			public Guid GpoId;
			public PWSTR pszPolicyName;
			public Guid ProductId;
			public uint16 Language;
			public PWSTR pszOwner;
			public PWSTR pszCompany;
			public PWSTR pszComments;
			public PWSTR pszContact;
			public PWSTR pszSupportUrl;
			public uint32 dwPathType;
			public BOOL bInstalled;
		}
		[CRepr]
		public struct GPOBROWSEINFO
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HWND hwndOwner;
			public PWSTR lpTitle;
			public PWSTR lpInitialOU;
			public PWSTR lpDSPath;
			public uint32 dwDSPathSize;
			public PWSTR lpName;
			public uint32 dwNameSize;
			public GROUP_POLICY_OBJECT_TYPE gpoType;
			public GROUP_POLICY_HINT_TYPE gpoHint;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_GPM = .(0xf5694708, 0x88fe, 0x4b35, 0xba, 0xbf, 0xe5, 0x61, 0x62, 0xd5, 0xfb, 0xc8);
		public const Guid CLSID_GPMDomain = .(0x710901be, 0x1050, 0x4cb1, 0x83, 0x8a, 0xc5, 0xcf, 0xf2, 0x59, 0xe1, 0x83);
		public const Guid CLSID_GPMSitesContainer = .(0x229f5c42, 0x852c, 0x4b30, 0x94, 0x5f, 0xc5, 0x22, 0xbe, 0x9b, 0xd3, 0x86);
		public const Guid CLSID_GPMBackupDir = .(0xfce4a59d, 0x0f21, 0x4afa, 0xb8, 0x59, 0xe6, 0xd0, 0xc6, 0x2c, 0xd1, 0x0c);
		public const Guid CLSID_GPMSOM = .(0x32d93fac, 0x450e, 0x44cf, 0x82, 0x9c, 0x8b, 0x22, 0xff, 0x6b, 0xda, 0xe1);
		public const Guid CLSID_GPMSearchCriteria = .(0x17aaca26, 0x5ce0, 0x44fa, 0x8c, 0xc0, 0x52, 0x59, 0xe6, 0x48, 0x35, 0x66);
		public const Guid CLSID_GPMPermission = .(0x5871a40a, 0xe9c0, 0x46ec, 0x91, 0x3e, 0x94, 0x4e, 0xf9, 0x22, 0x5a, 0x94);
		public const Guid CLSID_GPMSecurityInfo = .(0x547a5e8f, 0x9162, 0x4516, 0xa4, 0xdf, 0x9d, 0xdb, 0x96, 0x86, 0xd8, 0x46);
		public const Guid CLSID_GPMBackup = .(0xed1a54b8, 0x5efa, 0x482a, 0x93, 0xc0, 0x8a, 0xd8, 0x6f, 0x0d, 0x68, 0xc3);
		public const Guid CLSID_GPMBackupCollection = .(0xeb8f035b, 0x70db, 0x4a9f, 0x96, 0x76, 0x37, 0xc2, 0x59, 0x94, 0xe9, 0xdc);
		public const Guid CLSID_GPMSOMCollection = .(0x24c1f147, 0x3720, 0x4f5b, 0xa9, 0xc3, 0x06, 0xb4, 0xe4, 0xf9, 0x31, 0xd2);
		public const Guid CLSID_GPMWMIFilter = .(0x626745d8, 0x0dea, 0x4062, 0xbf, 0x60, 0xcf, 0xc5, 0xb1, 0xca, 0x12, 0x86);
		public const Guid CLSID_GPMWMIFilterCollection = .(0x74dc6d28, 0xe820, 0x47d6, 0xa0, 0xb8, 0xf0, 0x8d, 0x93, 0xd7, 0xfa, 0x33);
		public const Guid CLSID_GPMRSOP = .(0x489b0caf, 0x9ec2, 0x4eb7, 0x91, 0xf5, 0xb6, 0xf7, 0x1d, 0x43, 0xda, 0x8c);
		public const Guid CLSID_GPMGPO = .(0xd2ce2994, 0x59b5, 0x4064, 0xb5, 0x81, 0x4d, 0x68, 0x48, 0x6a, 0x16, 0xc4);
		public const Guid CLSID_GPMGPOCollection = .(0x7a057325, 0x832d, 0x4de3, 0xa4, 0x1f, 0xc7, 0x80, 0x43, 0x6a, 0x4e, 0x09);
		public const Guid CLSID_GPMGPOLink = .(0xc1df9880, 0x5303, 0x42c6, 0x8a, 0x3c, 0x04, 0x88, 0xe1, 0xbf, 0x73, 0x64);
		public const Guid CLSID_GPMGPOLinksCollection = .(0xf6ed581a, 0x49a5, 0x47e2, 0xb7, 0x71, 0xfd, 0x8d, 0xc0, 0x2b, 0x62, 0x59);
		public const Guid CLSID_GPMAsyncCancel = .(0x372796a9, 0x76ec, 0x479d, 0xad, 0x6c, 0x55, 0x63, 0x18, 0xed, 0x5f, 0x9d);
		public const Guid CLSID_GPMStatusMsgCollection = .(0x2824e4be, 0x4bcc, 0x4cac, 0x9e, 0x60, 0x0e, 0x3e, 0xd7, 0xf1, 0x24, 0x96);
		public const Guid CLSID_GPMStatusMessage = .(0x4b77cc94, 0xd255, 0x409b, 0xbc, 0x62, 0x37, 0x08, 0x81, 0x71, 0x5a, 0x19);
		public const Guid CLSID_GPMTrustee = .(0xc54a700d, 0x19b6, 0x4211, 0xbc, 0xb0, 0xe8, 0xe2, 0x47, 0x5e, 0x47, 0x1e);
		public const Guid CLSID_GPMClientSideExtension = .(0xc1a2e70e, 0x659c, 0x4b1a, 0x94, 0x0b, 0xf8, 0x8b, 0x0a, 0xf9, 0xc8, 0xa4);
		public const Guid CLSID_GPMCSECollection = .(0xcf92b828, 0x2d44, 0x4b61, 0xb1, 0x0a, 0xb3, 0x27, 0xaf, 0xd4, 0x2d, 0xa8);
		public const Guid CLSID_GPMConstants = .(0x3855e880, 0xcd9e, 0x4d0c, 0x9e, 0xaf, 0x15, 0x79, 0x28, 0x3a, 0x18, 0x88);
		public const Guid CLSID_GPMResult = .(0x92101ac0, 0x9287, 0x4206, 0xa3, 0xb2, 0x4b, 0xdb, 0x73, 0xd2, 0x25, 0xf6);
		public const Guid CLSID_GPMMapEntryCollection = .(0x0cf75d5b, 0xa3a1, 0x4c55, 0xb4, 0xfe, 0x9e, 0x14, 0x9c, 0x41, 0xf6, 0x6d);
		public const Guid CLSID_GPMMapEntry = .(0x8c975253, 0x5431, 0x4471, 0xb3, 0x5d, 0x06, 0x26, 0xc9, 0x28, 0x25, 0x8a);
		public const Guid CLSID_GPMMigrationTable = .(0x55af4043, 0x2a06, 0x4f72, 0xab, 0xef, 0x63, 0x1b, 0x44, 0x07, 0x9c, 0x76);
		public const Guid CLSID_GPMBackupDirEx = .(0xe8c0988a, 0xcf03, 0x4c5b, 0x8b, 0xe2, 0x2a, 0xa9, 0xad, 0x32, 0xaa, 0xda);
		public const Guid CLSID_GPMStarterGPOBackupCollection = .(0xe75ea59d, 0x1aeb, 0x4cb5, 0xa7, 0x8a, 0x28, 0x1d, 0xaa, 0x58, 0x24, 0x06);
		public const Guid CLSID_GPMStarterGPOBackup = .(0x389e400a, 0xd8ef, 0x455b, 0xa8, 0x61, 0x5f, 0x9c, 0xa3, 0x4a, 0x6a, 0x02);
		public const Guid CLSID_GPMTemplate = .(0xecf1d454, 0x71da, 0x4e2f, 0xa8, 0xc0, 0x81, 0x85, 0x46, 0x59, 0x11, 0xd9);
		public const Guid CLSID_GPMStarterGPOCollection = .(0x82f8aa8b, 0x49ba, 0x43b2, 0x95, 0x6e, 0x33, 0x97, 0xf9, 0xb9, 0x4c, 0x3a);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IGPM : IDispatch
		{
			public const new Guid IID = .(0xf5fae809, 0x3bd6, 0x4da9, 0xa6, 0x5e, 0x17, 0x66, 0x5b, 0x41, 0xd7, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDomain(BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, out IGPMDomain* pIGPMDomain) mut => VT.GetDomain(ref this, bstrDomain, bstrDomainController, lDCFlags, out pIGPMDomain);
			public HRESULT GetBackupDir(BSTR bstrBackupDir, out IGPMBackupDir* pIGPMBackupDir) mut => VT.GetBackupDir(ref this, bstrBackupDir, out pIGPMBackupDir);
			public HRESULT GetSitesContainer(BSTR bstrForest, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, out IGPMSitesContainer* ppIGPMSitesContainer) mut => VT.GetSitesContainer(ref this, bstrForest, bstrDomain, bstrDomainController, lDCFlags, out ppIGPMSitesContainer);
			public HRESULT GetRSOP(GPMRSOPMode gpmRSoPMode, BSTR bstrNamespace, int32 lFlags, out IGPMRSOP* ppIGPMRSOP) mut => VT.GetRSOP(ref this, gpmRSoPMode, bstrNamespace, lFlags, out ppIGPMRSOP);
			public HRESULT CreatePermission(BSTR bstrTrustee, GPMPermissionType perm, int16 bInheritable, out IGPMPermission* ppPerm) mut => VT.CreatePermission(ref this, bstrTrustee, perm, bInheritable, out ppPerm);
			public HRESULT CreateSearchCriteria(out IGPMSearchCriteria* ppIGPMSearchCriteria) mut => VT.CreateSearchCriteria(ref this, out ppIGPMSearchCriteria);
			public HRESULT CreateTrustee(BSTR bstrTrustee, out IGPMTrustee* ppIGPMTrustee) mut => VT.CreateTrustee(ref this, bstrTrustee, out ppIGPMTrustee);
			public HRESULT GetClientSideExtensions(out IGPMCSECollection* ppIGPMCSECollection) mut => VT.GetClientSideExtensions(ref this, out ppIGPMCSECollection);
			public HRESULT GetConstants(out IGPMConstants* ppIGPMConstants) mut => VT.GetConstants(ref this, out ppIGPMConstants);
			public HRESULT GetMigrationTable(BSTR bstrMigrationTablePath, out IGPMMigrationTable* ppMigrationTable) mut => VT.GetMigrationTable(ref this, bstrMigrationTablePath, out ppMigrationTable);
			public HRESULT CreateMigrationTable(out IGPMMigrationTable* ppMigrationTable) mut => VT.CreateMigrationTable(ref this, out ppMigrationTable);
			public HRESULT InitializeReporting(BSTR bstrAdmPath) mut => VT.InitializeReporting(ref this, bstrAdmPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, out IGPMDomain* pIGPMDomain) GetDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrBackupDir, out IGPMBackupDir* pIGPMBackupDir) GetBackupDir;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrForest, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, out IGPMSitesContainer* ppIGPMSitesContainer) GetSitesContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, GPMRSOPMode gpmRSoPMode, BSTR bstrNamespace, int32 lFlags, out IGPMRSOP* ppIGPMRSOP) GetRSOP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrTrustee, GPMPermissionType perm, int16 bInheritable, out IGPMPermission* ppPerm) CreatePermission;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, out IGPMSearchCriteria* ppIGPMSearchCriteria) CreateSearchCriteria;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrTrustee, out IGPMTrustee* ppIGPMTrustee) CreateTrustee;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, out IGPMCSECollection* ppIGPMCSECollection) GetClientSideExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, out IGPMConstants* ppIGPMConstants) GetConstants;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrMigrationTablePath, out IGPMMigrationTable* ppMigrationTable) GetMigrationTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, out IGPMMigrationTable* ppMigrationTable) CreateMigrationTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM self, BSTR bstrAdmPath) InitializeReporting;
			}
		}
		[CRepr]
		public struct IGPMDomain : IDispatch
		{
			public const new Guid IID = .(0x6b21cc14, 0x5a00, 0x4f44, 0xa7, 0x38, 0xfe, 0xec, 0x8a, 0x94, 0xc7, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DomainController(out BSTR pVal) mut => VT.get_DomainController(ref this, out pVal);
			public HRESULT get_Domain(out BSTR pVal) mut => VT.get_Domain(ref this, out pVal);
			public HRESULT CreateGPO(out IGPMGPO* ppNewGPO) mut => VT.CreateGPO(ref this, out ppNewGPO);
			public HRESULT GetGPO(BSTR bstrGuid, out IGPMGPO* ppGPO) mut => VT.GetGPO(ref this, bstrGuid, out ppGPO);
			public HRESULT SearchGPOs(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMGPOCollection* ppIGPMGPOCollection) mut => VT.SearchGPOs(ref this, ref pIGPMSearchCriteria, out ppIGPMGPOCollection);
			public HRESULT RestoreGPO(ref IGPMBackup pIGPMBackup, int32 lDCFlags, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.RestoreGPO(ref this, ref pIGPMBackup, lDCFlags, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GetSOM(BSTR bstrPath, out IGPMSOM* ppSOM) mut => VT.GetSOM(ref this, bstrPath, out ppSOM);
			public HRESULT SearchSOMs(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMSOMCollection* ppIGPMSOMCollection) mut => VT.SearchSOMs(ref this, ref pIGPMSearchCriteria, out ppIGPMSOMCollection);
			public HRESULT GetWMIFilter(BSTR bstrPath, out IGPMWMIFilter* ppWMIFilter) mut => VT.GetWMIFilter(ref this, bstrPath, out ppWMIFilter);
			public HRESULT SearchWMIFilters(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMWMIFilterCollection* ppIGPMWMIFilterCollection) mut => VT.SearchWMIFilters(ref this, ref pIGPMSearchCriteria, out ppIGPMWMIFilterCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, out BSTR pVal) get_DomainController;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, out BSTR pVal) get_Domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, out IGPMGPO* ppNewGPO) CreateGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, BSTR bstrGuid, out IGPMGPO* ppGPO) GetGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMGPOCollection* ppIGPMGPOCollection) SearchGPOs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, ref IGPMBackup pIGPMBackup, int32 lDCFlags, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) RestoreGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, BSTR bstrPath, out IGPMSOM* ppSOM) GetSOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMSOMCollection* ppIGPMSOMCollection) SearchSOMs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, BSTR bstrPath, out IGPMWMIFilter* ppWMIFilter) GetWMIFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMWMIFilterCollection* ppIGPMWMIFilterCollection) SearchWMIFilters;
			}
		}
		[CRepr]
		public struct IGPMBackupDir : IDispatch
		{
			public const new Guid IID = .(0xb1568bed, 0x0a93, 0x4acc, 0x81, 0x0f, 0xaf, 0xe7, 0x08, 0x10, 0x19, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDirectory(out BSTR pVal) mut => VT.get_BackupDirectory(ref this, out pVal);
			public HRESULT GetBackup(BSTR bstrID, out IGPMBackup* ppBackup) mut => VT.GetBackup(ref this, bstrID, out ppBackup);
			public HRESULT SearchBackups(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMBackupCollection* ppIGPMBackupCollection) mut => VT.SearchBackups(ref this, ref pIGPMSearchCriteria, out ppIGPMBackupCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDir self, out BSTR pVal) get_BackupDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDir self, BSTR bstrID, out IGPMBackup* ppBackup) GetBackup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDir self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMBackupCollection* ppIGPMBackupCollection) SearchBackups;
			}
		}
		[CRepr]
		public struct IGPMSitesContainer : IDispatch
		{
			public const new Guid IID = .(0x4725a899, 0x2782, 0x4d27, 0xa6, 0xbb, 0xd4, 0x99, 0x24, 0x6f, 0xfd, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DomainController(out BSTR pVal) mut => VT.get_DomainController(ref this, out pVal);
			public HRESULT get_Domain(out BSTR pVal) mut => VT.get_Domain(ref this, out pVal);
			public HRESULT get_Forest(out BSTR pVal) mut => VT.get_Forest(ref this, out pVal);
			public HRESULT GetSite(BSTR bstrSiteName, out IGPMSOM* ppSOM) mut => VT.GetSite(ref this, bstrSiteName, out ppSOM);
			public HRESULT SearchSites(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMSOMCollection* ppIGPMSOMCollection) mut => VT.SearchSites(ref this, ref pIGPMSearchCriteria, out ppIGPMSOMCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSitesContainer self, out BSTR pVal) get_DomainController;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSitesContainer self, out BSTR pVal) get_Domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSitesContainer self, out BSTR pVal) get_Forest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSitesContainer self, BSTR bstrSiteName, out IGPMSOM* ppSOM) GetSite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSitesContainer self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMSOMCollection* ppIGPMSOMCollection) SearchSites;
			}
		}
		[CRepr]
		public struct IGPMSearchCriteria : IDispatch
		{
			public const new Guid IID = .(0xd6f11c42, 0x829b, 0x48d4, 0x83, 0xf5, 0x36, 0x15, 0xb6, 0x7d, 0xfc, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(GPMSearchProperty searchProperty, GPMSearchOperation searchOperation, VARIANT varValue) mut => VT.Add(ref this, searchProperty, searchOperation, varValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSearchCriteria self, GPMSearchProperty searchProperty, GPMSearchOperation searchOperation, VARIANT varValue) Add;
			}
		}
		[CRepr]
		public struct IGPMTrustee : IDispatch
		{
			public const new Guid IID = .(0x3b466da8, 0xc1a4, 0x4b2a, 0x99, 0x9a, 0xbe, 0xfc, 0xdd, 0x56, 0xce, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TrusteeSid(out BSTR bstrVal) mut => VT.get_TrusteeSid(ref this, out bstrVal);
			public HRESULT get_TrusteeName(out BSTR bstrVal) mut => VT.get_TrusteeName(ref this, out bstrVal);
			public HRESULT get_TrusteeDomain(out BSTR bstrVal) mut => VT.get_TrusteeDomain(ref this, out bstrVal);
			public HRESULT get_TrusteeDSPath(out BSTR pVal) mut => VT.get_TrusteeDSPath(ref this, out pVal);
			public HRESULT get_TrusteeType(out int32 lVal) mut => VT.get_TrusteeType(ref this, out lVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMTrustee self, out BSTR bstrVal) get_TrusteeSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMTrustee self, out BSTR bstrVal) get_TrusteeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMTrustee self, out BSTR bstrVal) get_TrusteeDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMTrustee self, out BSTR pVal) get_TrusteeDSPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMTrustee self, out int32 lVal) get_TrusteeType;
			}
		}
		[CRepr]
		public struct IGPMPermission : IDispatch
		{
			public const new Guid IID = .(0x35ebca40, 0xe1a1, 0x4a02, 0x89, 0x05, 0xd7, 0x94, 0x16, 0xfb, 0x46, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Inherited(out int16 pVal) mut => VT.get_Inherited(ref this, out pVal);
			public HRESULT get_Inheritable(out int16 pVal) mut => VT.get_Inheritable(ref this, out pVal);
			public HRESULT get_Denied(out int16 pVal) mut => VT.get_Denied(ref this, out pVal);
			public HRESULT get_Permission(out GPMPermissionType pVal) mut => VT.get_Permission(ref this, out pVal);
			public HRESULT get_Trustee(out IGPMTrustee* ppIGPMTrustee) mut => VT.get_Trustee(ref this, out ppIGPMTrustee);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMPermission self, out int16 pVal) get_Inherited;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMPermission self, out int16 pVal) get_Inheritable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMPermission self, out int16 pVal) get_Denied;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMPermission self, out GPMPermissionType pVal) get_Permission;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMPermission self, out IGPMTrustee* ppIGPMTrustee) get_Trustee;
			}
		}
		[CRepr]
		public struct IGPMSecurityInfo : IDispatch
		{
			public const new Guid IID = .(0xb6c31ed4, 0x1c93, 0x4d3e, 0xae, 0x84, 0xeb, 0x6d, 0x61, 0x16, 0x1b, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppEnum) mut => VT.get__NewEnum(ref this, out ppEnum);
			public HRESULT Add(ref IGPMPermission pPerm) mut => VT.Add(ref this, ref pPerm);
			public HRESULT Remove(ref IGPMPermission pPerm) mut => VT.Remove(ref this, ref pPerm);
			public HRESULT RemoveTrustee(BSTR bstrTrustee) mut => VT.RemoveTrustee(ref this, bstrTrustee);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, out IEnumVARIANT* ppEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, ref IGPMPermission pPerm) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, ref IGPMPermission pPerm) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSecurityInfo self, BSTR bstrTrustee) RemoveTrustee;
			}
		}
		[CRepr]
		public struct IGPMBackup : IDispatch
		{
			public const new Guid IID = .(0xd8a16a35, 0x3b0d, 0x416b, 0x8d, 0x02, 0x4d, 0xf6, 0xf9, 0x5a, 0x71, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ID(out BSTR pVal) mut => VT.get_ID(ref this, out pVal);
			public HRESULT get_GPOID(out BSTR pVal) mut => VT.get_GPOID(ref this, out pVal);
			public HRESULT get_GPODomain(out BSTR pVal) mut => VT.get_GPODomain(ref this, out pVal);
			public HRESULT get_GPODisplayName(out BSTR pVal) mut => VT.get_GPODisplayName(ref this, out pVal);
			public HRESULT get_Timestamp(out double pVal) mut => VT.get_Timestamp(ref this, out pVal);
			public HRESULT get_Comment(out BSTR pVal) mut => VT.get_Comment(ref this, out pVal);
			public HRESULT get_BackupDir(out BSTR pVal) mut => VT.get_BackupDir(ref this, out pVal);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) mut => VT.GenerateReportToFile(ref this, gpmReportType, bstrTargetFilePath, out ppIGPMResult);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_ID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_GPOID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_GPODomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_GPODisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out double pVal) get_Timestamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_Comment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, out BSTR pVal) get_BackupDir;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackup self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPMBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc786fc0f, 0x26d8, 0x4bab, 0xa7, 0x45, 0x39, 0xca, 0x7e, 0x80, 0x0c, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMBackup) mut => VT.get__NewEnum(ref this, out ppIGPMBackup);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupCollection self, out IEnumVARIANT* ppIGPMBackup) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMSOM : IDispatch
		{
			public const new Guid IID = .(0xc0a7f09e, 0x05a1, 0x4f0c, 0x81, 0x58, 0x9e, 0x5c, 0x33, 0x68, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GPOInheritanceBlocked(out int16 pVal) mut => VT.get_GPOInheritanceBlocked(ref this, out pVal);
			public HRESULT put_GPOInheritanceBlocked(int16 newVal) mut => VT.put_GPOInheritanceBlocked(ref this, newVal);
			public HRESULT get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
			public HRESULT get_Path(out BSTR pVal) mut => VT.get_Path(ref this, out pVal);
			public HRESULT CreateGPOLink(int32 lLinkPos, ref IGPMGPO pGPO, out IGPMGPOLink* ppNewGPOLink) mut => VT.CreateGPOLink(ref this, lLinkPos, ref pGPO, out ppNewGPOLink);
			public HRESULT get_Type(out GPMSOMType pVal) mut => VT.get_Type(ref this, out pVal);
			public HRESULT GetGPOLinks(out IGPMGPOLinksCollection* ppGPOLinks) mut => VT.GetGPOLinks(ref this, out ppGPOLinks);
			public HRESULT GetInheritedGPOLinks(out IGPMGPOLinksCollection* ppGPOLinks) mut => VT.GetInheritedGPOLinks(ref this, out ppGPOLinks);
			public HRESULT GetSecurityInfo(out IGPMSecurityInfo* ppSecurityInfo) mut => VT.GetSecurityInfo(ref this, out ppSecurityInfo);
			public HRESULT SetSecurityInfo(ref IGPMSecurityInfo pSecurityInfo) mut => VT.SetSecurityInfo(ref this, ref pSecurityInfo);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out int16 pVal) get_GPOInheritanceBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, int16 newVal) put_GPOInheritanceBlocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out BSTR pVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out BSTR pVal) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, int32 lLinkPos, ref IGPMGPO pGPO, out IGPMGPOLink* ppNewGPOLink) CreateGPOLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out GPMSOMType pVal) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out IGPMGPOLinksCollection* ppGPOLinks) GetGPOLinks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out IGPMGPOLinksCollection* ppGPOLinks) GetInheritedGPOLinks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, out IGPMSecurityInfo* ppSecurityInfo) GetSecurityInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOM self, ref IGPMSecurityInfo pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMSOMCollection : IDispatch
		{
			public const new Guid IID = .(0xadc1688e, 0x00e4, 0x4495, 0xab, 0xba, 0xbe, 0xd2, 0x00, 0xdf, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMSOM) mut => VT.get__NewEnum(ref this, out ppIGPMSOM);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOMCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOMCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMSOMCollection self, out IEnumVARIANT* ppIGPMSOM) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMWMIFilter : IDispatch
		{
			public const new Guid IID = .(0xef2ff9b4, 0x3c27, 0x459a, 0xb9, 0x79, 0x03, 0x83, 0x05, 0xce, 0xc7, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(out BSTR pVal) mut => VT.get_Path(ref this, out pVal);
			public HRESULT put_Name(BSTR newVal) mut => VT.put_Name(ref this, newVal);
			public HRESULT get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
			public HRESULT put_Description(BSTR newVal) mut => VT.put_Description(ref this, newVal);
			public HRESULT get_Description(out BSTR pVal) mut => VT.get_Description(ref this, out pVal);
			public HRESULT GetQueryList(out VARIANT pQryList) mut => VT.GetQueryList(ref this, out pQryList);
			public HRESULT GetSecurityInfo(out IGPMSecurityInfo* ppSecurityInfo) mut => VT.GetSecurityInfo(ref this, out ppSecurityInfo);
			public HRESULT SetSecurityInfo(ref IGPMSecurityInfo pSecurityInfo) mut => VT.SetSecurityInfo(ref this, ref pSecurityInfo);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, out BSTR pVal) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, BSTR newVal) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, out BSTR pVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, BSTR newVal) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, out BSTR pVal) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, out VARIANT pQryList) GetQueryList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, out IGPMSecurityInfo* ppSecurityInfo) GetSecurityInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilter self, ref IGPMSecurityInfo pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMWMIFilterCollection : IDispatch
		{
			public const new Guid IID = .(0x5782d582, 0x1a36, 0x4661, 0x8a, 0x94, 0xc3, 0xc3, 0x25, 0x51, 0x94, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* pVal) mut => VT.get__NewEnum(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilterCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilterCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMWMIFilterCollection self, out IEnumVARIANT* pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMRSOP : IDispatch
		{
			public const new Guid IID = .(0x49ed785a, 0x3237, 0x4ff2, 0xb1, 0xf0, 0xfd, 0xf5, 0xa8, 0xd5, 0xa1, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Mode(out GPMRSOPMode pVal) mut => VT.get_Mode(ref this, out pVal);
			public HRESULT get_Namespace(out BSTR bstrVal) mut => VT.get_Namespace(ref this, out bstrVal);
			public HRESULT put_LoggingComputer(BSTR bstrVal) mut => VT.put_LoggingComputer(ref this, bstrVal);
			public HRESULT get_LoggingComputer(out BSTR bstrVal) mut => VT.get_LoggingComputer(ref this, out bstrVal);
			public HRESULT put_LoggingUser(BSTR bstrVal) mut => VT.put_LoggingUser(ref this, bstrVal);
			public HRESULT get_LoggingUser(out BSTR bstrVal) mut => VT.get_LoggingUser(ref this, out bstrVal);
			public HRESULT put_LoggingFlags(int32 lVal) mut => VT.put_LoggingFlags(ref this, lVal);
			public HRESULT get_LoggingFlags(out int32 lVal) mut => VT.get_LoggingFlags(ref this, out lVal);
			public HRESULT put_PlanningFlags(int32 lVal) mut => VT.put_PlanningFlags(ref this, lVal);
			public HRESULT get_PlanningFlags(out int32 lVal) mut => VT.get_PlanningFlags(ref this, out lVal);
			public HRESULT put_PlanningDomainController(BSTR bstrVal) mut => VT.put_PlanningDomainController(ref this, bstrVal);
			public HRESULT get_PlanningDomainController(out BSTR bstrVal) mut => VT.get_PlanningDomainController(ref this, out bstrVal);
			public HRESULT put_PlanningSiteName(BSTR bstrVal) mut => VT.put_PlanningSiteName(ref this, bstrVal);
			public HRESULT get_PlanningSiteName(out BSTR bstrVal) mut => VT.get_PlanningSiteName(ref this, out bstrVal);
			public HRESULT put_PlanningUser(BSTR bstrVal) mut => VT.put_PlanningUser(ref this, bstrVal);
			public HRESULT get_PlanningUser(out BSTR bstrVal) mut => VT.get_PlanningUser(ref this, out bstrVal);
			public HRESULT put_PlanningUserSOM(BSTR bstrVal) mut => VT.put_PlanningUserSOM(ref this, bstrVal);
			public HRESULT get_PlanningUserSOM(out BSTR bstrVal) mut => VT.get_PlanningUserSOM(ref this, out bstrVal);
			public HRESULT put_PlanningUserWMIFilters(VARIANT varVal) mut => VT.put_PlanningUserWMIFilters(ref this, varVal);
			public HRESULT get_PlanningUserWMIFilters(out VARIANT varVal) mut => VT.get_PlanningUserWMIFilters(ref this, out varVal);
			public HRESULT put_PlanningUserSecurityGroups(VARIANT varVal) mut => VT.put_PlanningUserSecurityGroups(ref this, varVal);
			public HRESULT get_PlanningUserSecurityGroups(out VARIANT varVal) mut => VT.get_PlanningUserSecurityGroups(ref this, out varVal);
			public HRESULT put_PlanningComputer(BSTR bstrVal) mut => VT.put_PlanningComputer(ref this, bstrVal);
			public HRESULT get_PlanningComputer(out BSTR bstrVal) mut => VT.get_PlanningComputer(ref this, out bstrVal);
			public HRESULT put_PlanningComputerSOM(BSTR bstrVal) mut => VT.put_PlanningComputerSOM(ref this, bstrVal);
			public HRESULT get_PlanningComputerSOM(out BSTR bstrVal) mut => VT.get_PlanningComputerSOM(ref this, out bstrVal);
			public HRESULT put_PlanningComputerWMIFilters(VARIANT varVal) mut => VT.put_PlanningComputerWMIFilters(ref this, varVal);
			public HRESULT get_PlanningComputerWMIFilters(out VARIANT varVal) mut => VT.get_PlanningComputerWMIFilters(ref this, out varVal);
			public HRESULT put_PlanningComputerSecurityGroups(VARIANT varVal) mut => VT.put_PlanningComputerSecurityGroups(ref this, varVal);
			public HRESULT get_PlanningComputerSecurityGroups(out VARIANT varVal) mut => VT.get_PlanningComputerSecurityGroups(ref this, out varVal);
			public HRESULT LoggingEnumerateUsers(out VARIANT varVal) mut => VT.LoggingEnumerateUsers(ref this, out varVal);
			public HRESULT CreateQueryResults() mut => VT.CreateQueryResults(ref this);
			public HRESULT ReleaseQueryResults() mut => VT.ReleaseQueryResults(ref this);
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) mut => VT.GenerateReportToFile(ref this, gpmReportType, bstrTargetFilePath, out ppIGPMResult);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out GPMRSOPMode pVal) get_Mode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_Namespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_LoggingComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_LoggingComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_LoggingUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_LoggingUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, int32 lVal) put_LoggingFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out int32 lVal) get_LoggingFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, int32 lVal) put_PlanningFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out int32 lVal) get_PlanningFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningDomainController;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningDomainController;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningSiteName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningSiteName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningUserSOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningUserSOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, VARIANT varVal) put_PlanningUserWMIFilters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out VARIANT varVal) get_PlanningUserWMIFilters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, VARIANT varVal) put_PlanningUserSecurityGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out VARIANT varVal) get_PlanningUserSecurityGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, BSTR bstrVal) put_PlanningComputerSOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out BSTR bstrVal) get_PlanningComputerSOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, VARIANT varVal) put_PlanningComputerWMIFilters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out VARIANT varVal) get_PlanningComputerWMIFilters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, VARIANT varVal) put_PlanningComputerSecurityGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out VARIANT varVal) get_PlanningComputerSecurityGroups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, out VARIANT varVal) LoggingEnumerateUsers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self) CreateQueryResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self) ReleaseQueryResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMRSOP self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPMGPO : IDispatch
		{
			public const new Guid IID = .(0x58cc4352, 0x1ca3, 0x48e5, 0x98, 0x64, 0x1d, 0xa4, 0xd6, 0xe0, 0xd6, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(out BSTR pVal) mut => VT.get_DisplayName(ref this, out pVal);
			public HRESULT put_DisplayName(BSTR newVal) mut => VT.put_DisplayName(ref this, newVal);
			public HRESULT get_Path(out BSTR pVal) mut => VT.get_Path(ref this, out pVal);
			public HRESULT get_ID(out BSTR pVal) mut => VT.get_ID(ref this, out pVal);
			public HRESULT get_DomainName(out BSTR pVal) mut => VT.get_DomainName(ref this, out pVal);
			public HRESULT get_CreationTime(out double pDate) mut => VT.get_CreationTime(ref this, out pDate);
			public HRESULT get_ModificationTime(out double pDate) mut => VT.get_ModificationTime(ref this, out pDate);
			public HRESULT get_UserDSVersionNumber(out int32 pVal) mut => VT.get_UserDSVersionNumber(ref this, out pVal);
			public HRESULT get_ComputerDSVersionNumber(out int32 pVal) mut => VT.get_ComputerDSVersionNumber(ref this, out pVal);
			public HRESULT get_UserSysvolVersionNumber(out int32 pVal) mut => VT.get_UserSysvolVersionNumber(ref this, out pVal);
			public HRESULT get_ComputerSysvolVersionNumber(out int32 pVal) mut => VT.get_ComputerSysvolVersionNumber(ref this, out pVal);
			public HRESULT GetWMIFilter(out IGPMWMIFilter* ppIGPMWMIFilter) mut => VT.GetWMIFilter(ref this, out ppIGPMWMIFilter);
			public HRESULT SetWMIFilter(ref IGPMWMIFilter pIGPMWMIFilter) mut => VT.SetWMIFilter(ref this, ref pIGPMWMIFilter);
			public HRESULT SetUserEnabled(int16 vbEnabled) mut => VT.SetUserEnabled(ref this, vbEnabled);
			public HRESULT SetComputerEnabled(int16 vbEnabled) mut => VT.SetComputerEnabled(ref this, vbEnabled);
			public HRESULT IsUserEnabled(out int16 pvbEnabled) mut => VT.IsUserEnabled(ref this, out pvbEnabled);
			public HRESULT IsComputerEnabled(out int16 pvbEnabled) mut => VT.IsComputerEnabled(ref this, out pvbEnabled);
			public HRESULT GetSecurityInfo(out IGPMSecurityInfo* ppSecurityInfo) mut => VT.GetSecurityInfo(ref this, out ppSecurityInfo);
			public HRESULT SetSecurityInfo(ref IGPMSecurityInfo pSecurityInfo) mut => VT.SetSecurityInfo(ref this, ref pSecurityInfo);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Backup(BSTR bstrBackupDir, BSTR bstrComment, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.Backup(ref this, bstrBackupDir, bstrComment, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT Import(int32 lFlags, ref IGPMBackup pIGPMBackup, ref VARIANT pvarMigrationTable, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.Import(ref this, lFlags, ref pIGPMBackup, ref pvarMigrationTable, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) mut => VT.GenerateReportToFile(ref this, gpmReportType, bstrTargetFilePath, out ppIGPMResult);
			public HRESULT CopyTo(int32 lFlags, ref IGPMDomain pIGPMDomain, ref VARIANT pvarNewDisplayName, ref VARIANT pvarMigrationTable, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.CopyTo(ref this, lFlags, ref pIGPMDomain, ref pvarNewDisplayName, ref pvarMigrationTable, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT SetSecurityDescriptor(int32 lFlags, ref IDispatch pSD) mut => VT.SetSecurityDescriptor(ref this, lFlags, ref pSD);
			public HRESULT GetSecurityDescriptor(int32 lFlags, out IDispatch* ppSD) mut => VT.GetSecurityDescriptor(ref this, lFlags, out ppSD);
			public HRESULT IsACLConsistent(out int16 pvbConsistent) mut => VT.IsACLConsistent(ref this, out pvbConsistent);
			public HRESULT MakeACLConsistent() mut => VT.MakeACLConsistent(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out BSTR pVal) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, BSTR newVal) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out BSTR pVal) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out BSTR pVal) get_ID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out BSTR pVal) get_DomainName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out double pDate) get_CreationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out double pDate) get_ModificationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int32 pVal) get_UserDSVersionNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int32 pVal) get_ComputerDSVersionNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int32 pVal) get_UserSysvolVersionNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int32 pVal) get_ComputerSysvolVersionNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out IGPMWMIFilter* ppIGPMWMIFilter) GetWMIFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, ref IGPMWMIFilter pIGPMWMIFilter) SetWMIFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int16 vbEnabled) SetUserEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int16 vbEnabled) SetComputerEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int16 pvbEnabled) IsUserEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int16 pvbEnabled) IsComputerEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out IGPMSecurityInfo* ppSecurityInfo) GetSecurityInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, ref IGPMSecurityInfo pSecurityInfo) SetSecurityInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, BSTR bstrBackupDir, BSTR bstrComment, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) Backup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int32 lFlags, ref IGPMBackup pIGPMBackup, ref VARIANT pvarMigrationTable, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) GenerateReportToFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int32 lFlags, ref IGPMDomain pIGPMDomain, ref VARIANT pvarNewDisplayName, ref VARIANT pvarMigrationTable, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) CopyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int32 lFlags, ref IDispatch pSD) SetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, int32 lFlags, out IDispatch* ppSD) GetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self, out int16 pvbConsistent) IsACLConsistent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO self) MakeACLConsistent;
			}
		}
		[CRepr]
		public struct IGPMGPOCollection : IDispatch
		{
			public const new Guid IID = .(0xf0f0d5cf, 0x70ca, 0x4c39, 0x9e, 0x29, 0xb6, 0x42, 0xf8, 0x72, 0x6c, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMGPOs) mut => VT.get__NewEnum(ref this, out ppIGPMGPOs);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOCollection self, out IEnumVARIANT* ppIGPMGPOs) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMGPOLink : IDispatch
		{
			public const new Guid IID = .(0x434b99bd, 0x5de7, 0x478a, 0x80, 0x9c, 0xc2, 0x51, 0x72, 0x1d, 0xf7, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GPOID(out BSTR pVal) mut => VT.get_GPOID(ref this, out pVal);
			public HRESULT get_GPODomain(out BSTR pVal) mut => VT.get_GPODomain(ref this, out pVal);
			public HRESULT get_Enabled(out int16 pVal) mut => VT.get_Enabled(ref this, out pVal);
			public HRESULT put_Enabled(int16 newVal) mut => VT.put_Enabled(ref this, newVal);
			public HRESULT get_Enforced(out int16 pVal) mut => VT.get_Enforced(ref this, out pVal);
			public HRESULT put_Enforced(int16 newVal) mut => VT.put_Enforced(ref this, newVal);
			public HRESULT get_SOMLinkOrder(out int32 lVal) mut => VT.get_SOMLinkOrder(ref this, out lVal);
			public HRESULT get_SOM(out IGPMSOM* ppIGPMSOM) mut => VT.get_SOM(ref this, out ppIGPMSOM);
			public HRESULT Delete() mut => VT.Delete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out BSTR pVal) get_GPOID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out BSTR pVal) get_GPODomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out int16 pVal) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, int16 newVal) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out int16 pVal) get_Enforced;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, int16 newVal) put_Enforced;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out int32 lVal) get_SOMLinkOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self, out IGPMSOM* ppIGPMSOM) get_SOM;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLink self) Delete;
			}
		}
		[CRepr]
		public struct IGPMGPOLinksCollection : IDispatch
		{
			public const new Guid IID = .(0x189d7b68, 0x16bd, 0x4d0d, 0xa2, 0xec, 0x2e, 0x6a, 0xa2, 0x28, 0x8c, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMLinks) mut => VT.get__NewEnum(ref this, out ppIGPMLinks);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLinksCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLinksCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPOLinksCollection self, out IEnumVARIANT* ppIGPMLinks) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMCSECollection : IDispatch
		{
			public const new Guid IID = .(0x2e52a97d, 0x0a4a, 0x4a6f, 0x85, 0xdb, 0x20, 0x16, 0x22, 0x45, 0x5d, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMCSEs) mut => VT.get__NewEnum(ref this, out ppIGPMCSEs);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMCSECollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMCSECollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMCSECollection self, out IEnumVARIANT* ppIGPMCSEs) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMClientSideExtension : IDispatch
		{
			public const new Guid IID = .(0x69da7488, 0xb8db, 0x415e, 0x92, 0x66, 0x90, 0x1b, 0xe4, 0xd4, 0x99, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ID(out BSTR pVal) mut => VT.get_ID(ref this, out pVal);
			public HRESULT get_DisplayName(out BSTR pVal) mut => VT.get_DisplayName(ref this, out pVal);
			public HRESULT IsUserEnabled(out int16 pvbEnabled) mut => VT.IsUserEnabled(ref this, out pvbEnabled);
			public HRESULT IsComputerEnabled(out int16 pvbEnabled) mut => VT.IsComputerEnabled(ref this, out pvbEnabled);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMClientSideExtension self, out BSTR pVal) get_ID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMClientSideExtension self, out BSTR pVal) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMClientSideExtension self, out int16 pvbEnabled) IsUserEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMClientSideExtension self, out int16 pvbEnabled) IsComputerEnabled;
			}
		}
		[CRepr]
		public struct IGPMAsyncCancel : IDispatch
		{
			public const new Guid IID = .(0xddc67754, 0xbe67, 0x4541, 0x81, 0x66, 0xf4, 0x81, 0x66, 0x86, 0x8c, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMAsyncCancel self) Cancel;
			}
		}
		[CRepr]
		public struct IGPMAsyncProgress : IDispatch
		{
			public const new Guid IID = .(0x6aac29f8, 0x5948, 0x4324, 0xbf, 0x70, 0x42, 0x38, 0x18, 0x94, 0x2d, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Status(int32 lProgressNumerator, int32 lProgressDenominator, HRESULT hrStatus, ref VARIANT pResult, ref IGPMStatusMsgCollection ppIGPMStatusMsgCollection) mut => VT.Status(ref this, lProgressNumerator, lProgressDenominator, hrStatus, ref pResult, ref ppIGPMStatusMsgCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMAsyncProgress self, int32 lProgressNumerator, int32 lProgressDenominator, HRESULT hrStatus, ref VARIANT pResult, ref IGPMStatusMsgCollection ppIGPMStatusMsgCollection) Status;
			}
		}
		[CRepr]
		public struct IGPMStatusMsgCollection : IDispatch
		{
			public const new Guid IID = .(0x9b6e1af0, 0x1a92, 0x40f3, 0xa5, 0x9d, 0xf3, 0x6a, 0xc1, 0xf7, 0x28, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* pVal) mut => VT.get__NewEnum(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMsgCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMsgCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMsgCollection self, out IEnumVARIANT* pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMStatusMessage : IDispatch
		{
			public const new Guid IID = .(0x8496c22f, 0xf3de, 0x4a1f, 0x8f, 0x58, 0x60, 0x3c, 0xaa, 0xa9, 0x3d, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectPath(out BSTR pVal) mut => VT.get_ObjectPath(ref this, out pVal);
			public HRESULT ErrorCode() mut => VT.ErrorCode(ref this);
			public HRESULT get_ExtensionName(out BSTR pVal) mut => VT.get_ExtensionName(ref this, out pVal);
			public HRESULT get_SettingsName(out BSTR pVal) mut => VT.get_SettingsName(ref this, out pVal);
			public HRESULT OperationCode() mut => VT.OperationCode(ref this);
			public HRESULT get_Message(out BSTR pVal) mut => VT.get_Message(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self, out BSTR pVal) get_ObjectPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self) ErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self, out BSTR pVal) get_ExtensionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self, out BSTR pVal) get_SettingsName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self) OperationCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStatusMessage self, out BSTR pVal) get_Message;
			}
		}
		[CRepr]
		public struct IGPMConstants : IDispatch
		{
			public const new Guid IID = .(0x50ef73e6, 0xd35c, 0x4c8d, 0xbe, 0x63, 0x7e, 0xa5, 0xd2, 0xaa, 0xc5, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PermGPOApply(out GPMPermissionType pVal) mut => VT.get_PermGPOApply(ref this, out pVal);
			public HRESULT get_PermGPORead(out GPMPermissionType pVal) mut => VT.get_PermGPORead(ref this, out pVal);
			public HRESULT get_PermGPOEdit(out GPMPermissionType pVal) mut => VT.get_PermGPOEdit(ref this, out pVal);
			public HRESULT get_PermGPOEditSecurityAndDelete(out GPMPermissionType pVal) mut => VT.get_PermGPOEditSecurityAndDelete(ref this, out pVal);
			public HRESULT get_PermGPOCustom(out GPMPermissionType pVal) mut => VT.get_PermGPOCustom(ref this, out pVal);
			public HRESULT get_PermWMIFilterEdit(out GPMPermissionType pVal) mut => VT.get_PermWMIFilterEdit(ref this, out pVal);
			public HRESULT get_PermWMIFilterFullControl(out GPMPermissionType pVal) mut => VT.get_PermWMIFilterFullControl(ref this, out pVal);
			public HRESULT get_PermWMIFilterCustom(out GPMPermissionType pVal) mut => VT.get_PermWMIFilterCustom(ref this, out pVal);
			public HRESULT get_PermSOMLink(out GPMPermissionType pVal) mut => VT.get_PermSOMLink(ref this, out pVal);
			public HRESULT get_PermSOMLogging(out GPMPermissionType pVal) mut => VT.get_PermSOMLogging(ref this, out pVal);
			public HRESULT get_PermSOMPlanning(out GPMPermissionType pVal) mut => VT.get_PermSOMPlanning(ref this, out pVal);
			public HRESULT get_PermSOMGPOCreate(out GPMPermissionType pVal) mut => VT.get_PermSOMGPOCreate(ref this, out pVal);
			public HRESULT get_PermSOMWMICreate(out GPMPermissionType pVal) mut => VT.get_PermSOMWMICreate(ref this, out pVal);
			public HRESULT get_PermSOMWMIFullControl(out GPMPermissionType pVal) mut => VT.get_PermSOMWMIFullControl(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOPermissions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOPermissions(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOEffectivePermissions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOEffectivePermissions(ref this, out pVal);
			public HRESULT get_SearchPropertyGPODisplayName(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPODisplayName(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOWMIFilter(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOWMIFilter(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOID(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOID(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOComputerExtensions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOComputerExtensions(ref this, out pVal);
			public HRESULT get_SearchPropertyGPOUserExtensions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPOUserExtensions(ref this, out pVal);
			public HRESULT get_SearchPropertySOMLinks(out GPMSearchProperty pVal) mut => VT.get_SearchPropertySOMLinks(ref this, out pVal);
			public HRESULT get_SearchPropertyGPODomain(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyGPODomain(ref this, out pVal);
			public HRESULT get_SearchPropertyBackupMostRecent(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyBackupMostRecent(ref this, out pVal);
			public HRESULT get_SearchOpEquals(out GPMSearchOperation pVal) mut => VT.get_SearchOpEquals(ref this, out pVal);
			public HRESULT get_SearchOpContains(out GPMSearchOperation pVal) mut => VT.get_SearchOpContains(ref this, out pVal);
			public HRESULT get_SearchOpNotContains(out GPMSearchOperation pVal) mut => VT.get_SearchOpNotContains(ref this, out pVal);
			public HRESULT get_SearchOpNotEquals(out GPMSearchOperation pVal) mut => VT.get_SearchOpNotEquals(ref this, out pVal);
			public HRESULT get_UsePDC(out int32 pVal) mut => VT.get_UsePDC(ref this, out pVal);
			public HRESULT get_UseAnyDC(out int32 pVal) mut => VT.get_UseAnyDC(ref this, out pVal);
			public HRESULT get_DoNotUseW2KDC(out int32 pVal) mut => VT.get_DoNotUseW2KDC(ref this, out pVal);
			public HRESULT get_SOMSite(out GPMSOMType pVal) mut => VT.get_SOMSite(ref this, out pVal);
			public HRESULT get_SOMDomain(out GPMSOMType pVal) mut => VT.get_SOMDomain(ref this, out pVal);
			public HRESULT get_SOMOU(out GPMSOMType pVal) mut => VT.get_SOMOU(ref this, out pVal);
			public HRESULT get_SecurityFlags(int16 vbOwner, int16 vbGroup, int16 vbDACL, int16 vbSACL, out int32 pVal) mut => VT.get_SecurityFlags(ref this, vbOwner, vbGroup, vbDACL, vbSACL, out pVal);
			public HRESULT get_DoNotValidateDC(out int32 pVal) mut => VT.get_DoNotValidateDC(ref this, out pVal);
			public HRESULT get_ReportHTML(out GPMReportType pVal) mut => VT.get_ReportHTML(ref this, out pVal);
			public HRESULT get_ReportXML(out GPMReportType pVal) mut => VT.get_ReportXML(ref this, out pVal);
			public HRESULT get_RSOPModeUnknown(out GPMRSOPMode pVal) mut => VT.get_RSOPModeUnknown(ref this, out pVal);
			public HRESULT get_RSOPModePlanning(out GPMRSOPMode pVal) mut => VT.get_RSOPModePlanning(ref this, out pVal);
			public HRESULT get_RSOPModeLogging(out GPMRSOPMode pVal) mut => VT.get_RSOPModeLogging(ref this, out pVal);
			public HRESULT get_EntryTypeUser(out GPMEntryType pVal) mut => VT.get_EntryTypeUser(ref this, out pVal);
			public HRESULT get_EntryTypeComputer(out GPMEntryType pVal) mut => VT.get_EntryTypeComputer(ref this, out pVal);
			public HRESULT get_EntryTypeLocalGroup(out GPMEntryType pVal) mut => VT.get_EntryTypeLocalGroup(ref this, out pVal);
			public HRESULT get_EntryTypeGlobalGroup(out GPMEntryType pVal) mut => VT.get_EntryTypeGlobalGroup(ref this, out pVal);
			public HRESULT get_EntryTypeUniversalGroup(out GPMEntryType pVal) mut => VT.get_EntryTypeUniversalGroup(ref this, out pVal);
			public HRESULT get_EntryTypeUNCPath(out GPMEntryType pVal) mut => VT.get_EntryTypeUNCPath(ref this, out pVal);
			public HRESULT get_EntryTypeUnknown(out GPMEntryType pVal) mut => VT.get_EntryTypeUnknown(ref this, out pVal);
			public HRESULT get_DestinationOptionSameAsSource(out GPMDestinationOption pVal) mut => VT.get_DestinationOptionSameAsSource(ref this, out pVal);
			public HRESULT get_DestinationOptionNone(out GPMDestinationOption pVal) mut => VT.get_DestinationOptionNone(ref this, out pVal);
			public HRESULT get_DestinationOptionByRelativeName(out GPMDestinationOption pVal) mut => VT.get_DestinationOptionByRelativeName(ref this, out pVal);
			public HRESULT get_DestinationOptionSet(out GPMDestinationOption pVal) mut => VT.get_DestinationOptionSet(ref this, out pVal);
			public HRESULT get_MigrationTableOnly(out int32 pVal) mut => VT.get_MigrationTableOnly(ref this, out pVal);
			public HRESULT get_ProcessSecurity(out int32 pVal) mut => VT.get_ProcessSecurity(ref this, out pVal);
			public HRESULT get_RsopLoggingNoComputer(out int32 pVal) mut => VT.get_RsopLoggingNoComputer(ref this, out pVal);
			public HRESULT get_RsopLoggingNoUser(out int32 pVal) mut => VT.get_RsopLoggingNoUser(ref this, out pVal);
			public HRESULT get_RsopPlanningAssumeSlowLink(out int32 pVal) mut => VT.get_RsopPlanningAssumeSlowLink(ref this, out pVal);
			public HRESULT get_RsopPlanningLoopbackOption(int16 vbMerge, out int32 pVal) mut => VT.get_RsopPlanningLoopbackOption(ref this, vbMerge, out pVal);
			public HRESULT get_RsopPlanningAssumeUserWQLFilterTrue(out int32 pVal) mut => VT.get_RsopPlanningAssumeUserWQLFilterTrue(ref this, out pVal);
			public HRESULT get_RsopPlanningAssumeCompWQLFilterTrue(out int32 pVal) mut => VT.get_RsopPlanningAssumeCompWQLFilterTrue(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermGPOApply;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermGPORead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermGPOEdit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermGPOEditSecurityAndDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermGPOCustom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermWMIFilterEdit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermWMIFilterFullControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermWMIFilterCustom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMLogging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMPlanning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMGPOCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMWMICreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMPermissionType pVal) get_PermSOMWMIFullControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOPermissions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOEffectivePermissions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPODisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOWMIFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOComputerExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPOUserExtensions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertySOMLinks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyGPODomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchProperty pVal) get_SearchPropertyBackupMostRecent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchOperation pVal) get_SearchOpEquals;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchOperation pVal) get_SearchOpContains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchOperation pVal) get_SearchOpNotContains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSearchOperation pVal) get_SearchOpNotEquals;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_UsePDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_UseAnyDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_DoNotUseW2KDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSOMType pVal) get_SOMSite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSOMType pVal) get_SOMDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMSOMType pVal) get_SOMOU;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, int16 vbOwner, int16 vbGroup, int16 vbDACL, int16 vbSACL, out int32 pVal) get_SecurityFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_DoNotValidateDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMReportType pVal) get_ReportHTML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMReportType pVal) get_ReportXML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMRSOPMode pVal) get_RSOPModeUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMRSOPMode pVal) get_RSOPModePlanning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMRSOPMode pVal) get_RSOPModeLogging;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeLocalGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeGlobalGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeUniversalGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeUNCPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMEntryType pVal) get_EntryTypeUnknown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMDestinationOption pVal) get_DestinationOptionSameAsSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMDestinationOption pVal) get_DestinationOptionNone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMDestinationOption pVal) get_DestinationOptionByRelativeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out GPMDestinationOption pVal) get_DestinationOptionSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_MigrationTableOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_ProcessSecurity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_RsopLoggingNoComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_RsopLoggingNoUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_RsopPlanningAssumeSlowLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, int16 vbMerge, out int32 pVal) get_RsopPlanningLoopbackOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_RsopPlanningAssumeUserWQLFilterTrue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants self, out int32 pVal) get_RsopPlanningAssumeCompWQLFilterTrue;
			}
		}
		[CRepr]
		public struct IGPMResult : IDispatch
		{
			public const new Guid IID = .(0x86dff7e9, 0xf76f, 0x42ab, 0x95, 0x70, 0xce, 0xbc, 0x6b, 0xe8, 0xa5, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out IGPMStatusMsgCollection* ppIGPMStatusMsgCollection) mut => VT.get_Status(ref this, out ppIGPMStatusMsgCollection);
			public HRESULT get_Result(out VARIANT pvarResult) mut => VT.get_Result(ref this, out pvarResult);
			public HRESULT OverallStatus() mut => VT.OverallStatus(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMResult self, out IGPMStatusMsgCollection* ppIGPMStatusMsgCollection) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMResult self, out VARIANT pvarResult) get_Result;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMResult self) OverallStatus;
			}
		}
		[CRepr]
		public struct IGPMMapEntryCollection : IDispatch
		{
			public const new Guid IID = .(0xbb0bf49b, 0xe53f, 0x443f, 0xb8, 0x07, 0x8b, 0xe2, 0x2b, 0xfb, 0x6d, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* pVal) mut => VT.get__NewEnum(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntryCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntryCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntryCollection self, out IEnumVARIANT* pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMMapEntry : IDispatch
		{
			public const new Guid IID = .(0x8e79ad06, 0x2381, 0x4444, 0xbe, 0x4c, 0xff, 0x69, 0x3e, 0x6e, 0x6f, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Source(out BSTR pbstrSource) mut => VT.get_Source(ref this, out pbstrSource);
			public HRESULT get_Destination(out BSTR pbstrDestination) mut => VT.get_Destination(ref this, out pbstrDestination);
			public HRESULT get_DestinationOption(out GPMDestinationOption pgpmDestOption) mut => VT.get_DestinationOption(ref this, out pgpmDestOption);
			public HRESULT get_EntryType(out GPMEntryType pgpmEntryType) mut => VT.get_EntryType(ref this, out pgpmEntryType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntry self, out BSTR pbstrSource) get_Source;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntry self, out BSTR pbstrDestination) get_Destination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntry self, out GPMDestinationOption pgpmDestOption) get_DestinationOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMapEntry self, out GPMEntryType pgpmEntryType) get_EntryType;
			}
		}
		[CRepr]
		public struct IGPMMigrationTable : IDispatch
		{
			public const new Guid IID = .(0x48f823b1, 0xefaf, 0x470b, 0xb6, 0xed, 0x40, 0xd1, 0x4e, 0xe1, 0xa4, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save(BSTR bstrMigrationTablePath) mut => VT.Save(ref this, bstrMigrationTablePath);
			public HRESULT Add(int32 lFlags, VARIANT @var) mut => VT.Add(ref this, lFlags, @var);
			public HRESULT AddEntry(BSTR bstrSource, GPMEntryType gpmEntryType, ref VARIANT pvarDestination, out IGPMMapEntry* ppEntry) mut => VT.AddEntry(ref this, bstrSource, gpmEntryType, ref pvarDestination, out ppEntry);
			public HRESULT GetEntry(BSTR bstrSource, out IGPMMapEntry* ppEntry) mut => VT.GetEntry(ref this, bstrSource, out ppEntry);
			public HRESULT DeleteEntry(BSTR bstrSource) mut => VT.DeleteEntry(ref this, bstrSource);
			public HRESULT UpdateDestination(BSTR bstrSource, ref VARIANT pvarDestination, out IGPMMapEntry* ppEntry) mut => VT.UpdateDestination(ref this, bstrSource, ref pvarDestination, out ppEntry);
			public HRESULT Validate(out IGPMResult* ppResult) mut => VT.Validate(ref this, out ppResult);
			public HRESULT GetEntries(out IGPMMapEntryCollection* ppEntries) mut => VT.GetEntries(ref this, out ppEntries);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, BSTR bstrMigrationTablePath) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, int32 lFlags, VARIANT @var) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, BSTR bstrSource, GPMEntryType gpmEntryType, ref VARIANT pvarDestination, out IGPMMapEntry* ppEntry) AddEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, BSTR bstrSource, out IGPMMapEntry* ppEntry) GetEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, BSTR bstrSource) DeleteEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, BSTR bstrSource, ref VARIANT pvarDestination, out IGPMMapEntry* ppEntry) UpdateDestination;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, out IGPMResult* ppResult) Validate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMMigrationTable self, out IGPMMapEntryCollection* ppEntries) GetEntries;
			}
		}
		[CRepr]
		public struct IGPMBackupDirEx : IDispatch
		{
			public const new Guid IID = .(0xf8dc55ed, 0x3ba0, 0x4864, 0xaa, 0xd4, 0xd3, 0x65, 0x18, 0x9e, 0xe1, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDir(out BSTR pbstrBackupDir) mut => VT.get_BackupDir(ref this, out pbstrBackupDir);
			public HRESULT get_BackupType(out GPMBackupType pgpmBackupType) mut => VT.get_BackupType(ref this, out pgpmBackupType);
			public HRESULT GetBackup(BSTR bstrID, out VARIANT pvarBackup) mut => VT.GetBackup(ref this, bstrID, out pvarBackup);
			public HRESULT SearchBackups(ref IGPMSearchCriteria pIGPMSearchCriteria, out VARIANT pvarBackupCollection) mut => VT.SearchBackups(ref this, ref pIGPMSearchCriteria, out pvarBackupCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDirEx self, out BSTR pbstrBackupDir) get_BackupDir;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDirEx self, out GPMBackupType pgpmBackupType) get_BackupType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDirEx self, BSTR bstrID, out VARIANT pvarBackup) GetBackup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMBackupDirEx self, ref IGPMSearchCriteria pIGPMSearchCriteria, out VARIANT pvarBackupCollection) SearchBackups;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc998031d, 0xadd0, 0x4bb5, 0x8d, 0xea, 0x29, 0x85, 0x05, 0xd8, 0x42, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMTmplBackup) mut => VT.get__NewEnum(ref this, out ppIGPMTmplBackup);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackupCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackupCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackupCollection self, out IEnumVARIANT* ppIGPMTmplBackup) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOBackup : IDispatch
		{
			public const new Guid IID = .(0x51d98eda, 0xa87e, 0x43dd, 0xb8, 0x0a, 0x0b, 0x66, 0xef, 0x19, 0x38, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDir(out BSTR pbstrBackupDir) mut => VT.get_BackupDir(ref this, out pbstrBackupDir);
			public HRESULT get_Comment(out BSTR pbstrComment) mut => VT.get_Comment(ref this, out pbstrComment);
			public HRESULT get_DisplayName(out BSTR pbstrDisplayName) mut => VT.get_DisplayName(ref this, out pbstrDisplayName);
			public HRESULT get_Domain(out BSTR pbstrTemplateDomain) mut => VT.get_Domain(ref this, out pbstrTemplateDomain);
			public HRESULT get_StarterGPOID(out BSTR pbstrTemplateID) mut => VT.get_StarterGPOID(ref this, out pbstrTemplateID);
			public HRESULT get_ID(out BSTR pbstrID) mut => VT.get_ID(ref this, out pbstrID);
			public HRESULT get_Timestamp(out double pTimestamp) mut => VT.get_Timestamp(ref this, out pTimestamp);
			public HRESULT get_Type(out GPMStarterGPOType pType) mut => VT.get_Type(ref this, out pType);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) mut => VT.GenerateReportToFile(ref this, gpmReportType, bstrTargetFilePath, out ppIGPMResult);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrBackupDir) get_BackupDir;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrComment) get_Comment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrDisplayName) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrTemplateDomain) get_Domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrTemplateID) get_StarterGPOID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out BSTR pbstrID) get_ID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out double pTimestamp) get_Timestamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, out GPMStarterGPOType pType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOBackup self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPM2 : IGPM
		{
			public const new Guid IID = .(0x00238f8a, 0x3d86, 0x41ac, 0x8f, 0x5e, 0x06, 0xa6, 0x63, 0x8a, 0x63, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBackupDirEx(BSTR bstrBackupDir, GPMBackupType backupDirType, out IGPMBackupDirEx* ppIGPMBackupDirEx) mut => VT.GetBackupDirEx(ref this, bstrBackupDir, backupDirType, out ppIGPMBackupDirEx);
			public HRESULT InitializeReportingEx(BSTR bstrAdmPath, int32 reportingOptions) mut => VT.InitializeReportingEx(ref this, bstrAdmPath, reportingOptions);

			[CRepr]
			public struct VTable : IGPM.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM2 self, BSTR bstrBackupDir, GPMBackupType backupDirType, out IGPMBackupDirEx* ppIGPMBackupDirEx) GetBackupDirEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPM2 self, BSTR bstrAdmPath, int32 reportingOptions) InitializeReportingEx;
			}
		}
		[CRepr]
		public struct IGPMStarterGPO : IDispatch
		{
			public const new Guid IID = .(0xdfc3f61b, 0x8880, 0x4490, 0x93, 0x37, 0xd2, 0x9c, 0x7b, 0xa8, 0xc2, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(out BSTR pVal) mut => VT.get_DisplayName(ref this, out pVal);
			public HRESULT put_DisplayName(BSTR newVal) mut => VT.put_DisplayName(ref this, newVal);
			public HRESULT get_Description(out BSTR pVal) mut => VT.get_Description(ref this, out pVal);
			public HRESULT put_Description(BSTR newVal) mut => VT.put_Description(ref this, newVal);
			public HRESULT get_Author(out BSTR pVal) mut => VT.get_Author(ref this, out pVal);
			public HRESULT get_Product(out BSTR pVal) mut => VT.get_Product(ref this, out pVal);
			public HRESULT get_CreationTime(out double pVal) mut => VT.get_CreationTime(ref this, out pVal);
			public HRESULT get_ID(out BSTR pVal) mut => VT.get_ID(ref this, out pVal);
			public HRESULT get_ModifiedTime(out double pVal) mut => VT.get_ModifiedTime(ref this, out pVal);
			public HRESULT get_Type(out GPMStarterGPOType pVal) mut => VT.get_Type(ref this, out pVal);
			public HRESULT get_ComputerVersion(out uint16 pVal) mut => VT.get_ComputerVersion(ref this, out pVal);
			public HRESULT get_UserVersion(out uint16 pVal) mut => VT.get_UserVersion(ref this, out pVal);
			public HRESULT get_StarterGPOVersion(out BSTR pVal) mut => VT.get_StarterGPOVersion(ref this, out pVal);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Save(BSTR bstrSaveFile, int16 bOverwrite, int16 bSaveAsSystem, ref VARIANT bstrLanguage, ref VARIANT bstrAuthor, ref VARIANT bstrProduct, ref VARIANT bstrUniqueID, ref VARIANT bstrVersion, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.Save(ref this, bstrSaveFile, bOverwrite, bSaveAsSystem, ref bstrLanguage, ref bstrAuthor, ref bstrProduct, ref bstrUniqueID, ref bstrVersion, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT Backup(BSTR bstrBackupDir, BSTR bstrComment, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.Backup(ref this, bstrBackupDir, bstrComment, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT CopyTo(ref VARIANT pvarNewDisplayName, ref VARIANT pvarGPMProgress, ref VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.CopyTo(ref this, ref pvarNewDisplayName, ref pvarGPMProgress, ref pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, ref VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, ref pvarGPMCancel, out ppIGPMResult);
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) mut => VT.GenerateReportToFile(ref this, gpmReportType, bstrTargetFilePath, out ppIGPMResult);
			public HRESULT GetSecurityInfo(out IGPMSecurityInfo* ppSecurityInfo) mut => VT.GetSecurityInfo(ref this, out ppSecurityInfo);
			public HRESULT SetSecurityInfo(ref IGPMSecurityInfo pSecurityInfo) mut => VT.SetSecurityInfo(ref this, ref pSecurityInfo);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, BSTR newVal) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, BSTR newVal) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_Product;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out double pVal) get_CreationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_ID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out double pVal) get_ModifiedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out GPMStarterGPOType pVal) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out uint16 pVal) get_ComputerVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out uint16 pVal) get_UserVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out BSTR pVal) get_StarterGPOVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, BSTR bstrSaveFile, int16 bOverwrite, int16 bSaveAsSystem, ref VARIANT bstrLanguage, ref VARIANT bstrAuthor, ref VARIANT bstrProduct, ref VARIANT bstrUniqueID, ref VARIANT bstrVersion, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, BSTR bstrBackupDir, BSTR bstrComment, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) Backup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, ref VARIANT pvarNewDisplayName, ref VARIANT pvarGPMProgress, ref VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) CopyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, ref VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, out IGPMResult* ppIGPMResult) GenerateReportToFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, out IGPMSecurityInfo* ppSecurityInfo) GetSecurityInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPO self, ref IGPMSecurityInfo pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOCollection : IDispatch
		{
			public const new Guid IID = .(0x2e522729, 0x2219, 0x44ad, 0x93, 0x3a, 0x64, 0xdf, 0xd6, 0x50, 0xc4, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
			public HRESULT get_Item(int32 lIndex, out VARIANT pVal) mut => VT.get_Item(ref this, lIndex, out pVal);
			public HRESULT get__NewEnum(out IEnumVARIANT* ppIGPMTemplates) mut => VT.get__NewEnum(ref this, out ppIGPMTemplates);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOCollection self, out int32 pVal) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOCollection self, int32 lIndex, out VARIANT pVal) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMStarterGPOCollection self, out IEnumVARIANT* ppIGPMTemplates) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMDomain2 : IGPMDomain
		{
			public const new Guid IID = .(0x7ca6bb8b, 0xf1eb, 0x490a, 0x93, 0x8d, 0x3c, 0x4e, 0x51, 0xc7, 0x68, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStarterGPO(out IGPMStarterGPO* ppnewTemplate) mut => VT.CreateStarterGPO(ref this, out ppnewTemplate);
			public HRESULT CreateGPOFromStarterGPO(ref IGPMStarterGPO pGPOTemplate, out IGPMGPO* ppnewGPO) mut => VT.CreateGPOFromStarterGPO(ref this, ref pGPOTemplate, out ppnewGPO);
			public HRESULT GetStarterGPO(BSTR bstrGuid, out IGPMStarterGPO* ppTemplate) mut => VT.GetStarterGPO(ref this, bstrGuid, out ppTemplate);
			public HRESULT SearchStarterGPOs(ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMStarterGPOCollection* ppIGPMTemplateCollection) mut => VT.SearchStarterGPOs(ref this, ref pIGPMSearchCriteria, out ppIGPMTemplateCollection);
			public HRESULT LoadStarterGPO(BSTR bstrLoadFile, int16 bOverwrite, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.LoadStarterGPO(ref this, bstrLoadFile, bOverwrite, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT RestoreStarterGPO(ref IGPMStarterGPOBackup pIGPMTmplBackup, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.RestoreStarterGPO(ref this, ref pIGPMTmplBackup, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);

			[CRepr]
			public struct VTable : IGPMDomain.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, out IGPMStarterGPO* ppnewTemplate) CreateStarterGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, ref IGPMStarterGPO pGPOTemplate, out IGPMGPO* ppnewGPO) CreateGPOFromStarterGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, BSTR bstrGuid, out IGPMStarterGPO* ppTemplate) GetStarterGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, ref IGPMSearchCriteria pIGPMSearchCriteria, out IGPMStarterGPOCollection* ppIGPMTemplateCollection) SearchStarterGPOs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, BSTR bstrLoadFile, int16 bOverwrite, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) LoadStarterGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain2 self, ref IGPMStarterGPOBackup pIGPMTmplBackup, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) RestoreStarterGPO;
			}
		}
		[CRepr]
		public struct IGPMConstants2 : IGPMConstants
		{
			public const new Guid IID = .(0x05ae21b0, 0xac09, 0x4032, 0xa2, 0x6f, 0x9e, 0x7d, 0xa7, 0x86, 0xdc, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupTypeGPO(out GPMBackupType pVal) mut => VT.get_BackupTypeGPO(ref this, out pVal);
			public HRESULT get_BackupTypeStarterGPO(out GPMBackupType pVal) mut => VT.get_BackupTypeStarterGPO(ref this, out pVal);
			public HRESULT get_StarterGPOTypeSystem(out GPMStarterGPOType pVal) mut => VT.get_StarterGPOTypeSystem(ref this, out pVal);
			public HRESULT get_StarterGPOTypeCustom(out GPMStarterGPOType pVal) mut => VT.get_StarterGPOTypeCustom(ref this, out pVal);
			public HRESULT get_SearchPropertyStarterGPOPermissions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyStarterGPOPermissions(ref this, out pVal);
			public HRESULT get_SearchPropertyStarterGPOEffectivePermissions(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyStarterGPOEffectivePermissions(ref this, out pVal);
			public HRESULT get_SearchPropertyStarterGPODisplayName(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyStarterGPODisplayName(ref this, out pVal);
			public HRESULT get_SearchPropertyStarterGPOID(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyStarterGPOID(ref this, out pVal);
			public HRESULT get_SearchPropertyStarterGPODomain(out GPMSearchProperty pVal) mut => VT.get_SearchPropertyStarterGPODomain(ref this, out pVal);
			public HRESULT get_PermStarterGPORead(out GPMPermissionType pVal) mut => VT.get_PermStarterGPORead(ref this, out pVal);
			public HRESULT get_PermStarterGPOEdit(out GPMPermissionType pVal) mut => VT.get_PermStarterGPOEdit(ref this, out pVal);
			public HRESULT get_PermStarterGPOFullControl(out GPMPermissionType pVal) mut => VT.get_PermStarterGPOFullControl(ref this, out pVal);
			public HRESULT get_PermStarterGPOCustom(out GPMPermissionType pVal) mut => VT.get_PermStarterGPOCustom(ref this, out pVal);
			public HRESULT get_ReportLegacy(out GPMReportingOptions pVal) mut => VT.get_ReportLegacy(ref this, out pVal);
			public HRESULT get_ReportComments(out GPMReportingOptions pVal) mut => VT.get_ReportComments(ref this, out pVal);

			[CRepr]
			public struct VTable : IGPMConstants.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMBackupType pVal) get_BackupTypeGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMBackupType pVal) get_BackupTypeStarterGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMStarterGPOType pVal) get_StarterGPOTypeSystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMStarterGPOType pVal) get_StarterGPOTypeCustom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMSearchProperty pVal) get_SearchPropertyStarterGPOPermissions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMSearchProperty pVal) get_SearchPropertyStarterGPOEffectivePermissions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMSearchProperty pVal) get_SearchPropertyStarterGPODisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMSearchProperty pVal) get_SearchPropertyStarterGPOID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMSearchProperty pVal) get_SearchPropertyStarterGPODomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMPermissionType pVal) get_PermStarterGPORead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMPermissionType pVal) get_PermStarterGPOEdit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMPermissionType pVal) get_PermStarterGPOFullControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMPermissionType pVal) get_PermStarterGPOCustom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMReportingOptions pVal) get_ReportLegacy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMConstants2 self, out GPMReportingOptions pVal) get_ReportComments;
			}
		}
		[CRepr]
		public struct IGPMGPO2 : IGPMGPO
		{
			public const new Guid IID = .(0x8a66a210, 0xb78b, 0x4d99, 0x88, 0xe2, 0xc3, 0x06, 0xa8, 0x17, 0xc9, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(out BSTR pVal) mut => VT.get_Description(ref this, out pVal);
			public HRESULT put_Description(BSTR newVal) mut => VT.put_Description(ref this, newVal);

			[CRepr]
			public struct VTable : IGPMGPO.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO2 self, out BSTR pVal) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO2 self, BSTR newVal) put_Description;
			}
		}
		[CRepr]
		public struct IGPMDomain3 : IGPMDomain2
		{
			public const new Guid IID = .(0x0077fdfe, 0x88c7, 0x4acf, 0xa1, 0x1d, 0xd1, 0x0a, 0x7c, 0x31, 0x0a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateReport(GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) mut => VT.GenerateReport(ref this, gpmReportType, ref pvarGPMProgress, out pvarGPMCancel, out ppIGPMResult);
			public HRESULT get_InfrastructureDC(out BSTR pVal) mut => VT.get_InfrastructureDC(ref this, out pVal);
			public HRESULT put_InfrastructureDC(BSTR newVal) mut => VT.put_InfrastructureDC(ref this, newVal);
			public HRESULT put_InfrastructureFlags(uint32 dwFlags) mut => VT.put_InfrastructureFlags(ref this, dwFlags);

			[CRepr]
			public struct VTable : IGPMDomain2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain3 self, GPMReportType gpmReportType, ref VARIANT pvarGPMProgress, out VARIANT pvarGPMCancel, out IGPMResult* ppIGPMResult) GenerateReport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain3 self, out BSTR pVal) get_InfrastructureDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain3 self, BSTR newVal) put_InfrastructureDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMDomain3 self, uint32 dwFlags) put_InfrastructureFlags;
			}
		}
		[CRepr]
		public struct IGPMGPO3 : IGPMGPO2
		{
			public const new Guid IID = .(0x7cf123a1, 0xf94a, 0x4112, 0xbf, 0xae, 0x6a, 0xa1, 0xdb, 0x9c, 0xb2, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InfrastructureDC(out BSTR pVal) mut => VT.get_InfrastructureDC(ref this, out pVal);
			public HRESULT put_InfrastructureDC(BSTR newVal) mut => VT.put_InfrastructureDC(ref this, newVal);
			public HRESULT put_InfrastructureFlags(uint32 dwFlags) mut => VT.put_InfrastructureFlags(ref this, dwFlags);

			[CRepr]
			public struct VTable : IGPMGPO2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO3 self, out BSTR pVal) get_InfrastructureDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO3 self, BSTR newVal) put_InfrastructureDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPMGPO3 self, uint32 dwFlags) put_InfrastructureFlags;
			}
		}
		[CRepr]
		public struct IGPEInformation : IUnknown
		{
			public const new Guid IID = .(0x8fc0b735, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(char16* pszName, int32 cchMaxLength) mut => VT.GetName(ref this, pszName, cchMaxLength);
			public HRESULT GetDisplayName(char16* pszName, int32 cchMaxLength) mut => VT.GetDisplayName(ref this, pszName, cchMaxLength);
			public HRESULT GetRegistryKey(uint32 dwSection, out HKEY hKey) mut => VT.GetRegistryKey(ref this, dwSection, out hKey);
			public HRESULT GetDSPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut => VT.GetDSPath(ref this, dwSection, pszPath, cchMaxPath);
			public HRESULT GetFileSysPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut => VT.GetFileSysPath(ref this, dwSection, pszPath, cchMaxPath);
			public HRESULT GetOptions(out uint32 dwOptions) mut => VT.GetOptions(ref this, out dwOptions);
			public HRESULT ComGetType(out GROUP_POLICY_OBJECT_TYPE gpoType) mut => VT.ComGetType(ref this, out gpoType);
			public HRESULT GetHint(out GROUP_POLICY_HINT_TYPE gpHint) mut => VT.GetHint(ref this, out gpHint);
			public HRESULT PolicyChanged(BOOL bMachine, BOOL bAdd, out Guid pGuidExtension, out Guid pGuidSnapin) mut => VT.PolicyChanged(ref this, bMachine, bAdd, out pGuidExtension, out pGuidSnapin);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, char16* pszName, int32 cchMaxLength) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, char16* pszName, int32 cchMaxLength) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, uint32 dwSection, out HKEY hKey) GetRegistryKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, out uint32 dwOptions) GetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, out GROUP_POLICY_OBJECT_TYPE gpoType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, out GROUP_POLICY_HINT_TYPE gpHint) GetHint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGPEInformation self, BOOL bMachine, BOOL bAdd, out Guid pGuidExtension, out Guid pGuidSnapin) PolicyChanged;
			}
		}
		[CRepr]
		public struct IGroupPolicyObject : IUnknown
		{
			public const new Guid IID = .(0xea502723, 0xa23d, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT New(PWSTR pszDomainName, PWSTR pszDisplayName, uint32 dwFlags) mut => VT.New(ref this, pszDomainName, pszDisplayName, dwFlags);
			public HRESULT OpenDSGPO(PWSTR pszPath, uint32 dwFlags) mut => VT.OpenDSGPO(ref this, pszPath, dwFlags);
			public HRESULT OpenLocalMachineGPO(uint32 dwFlags) mut => VT.OpenLocalMachineGPO(ref this, dwFlags);
			public HRESULT OpenRemoteMachineGPO(PWSTR pszComputerName, uint32 dwFlags) mut => VT.OpenRemoteMachineGPO(ref this, pszComputerName, dwFlags);
			public HRESULT Save(BOOL bMachine, BOOL bAdd, out Guid pGuidExtension, out Guid pGuid) mut => VT.Save(ref this, bMachine, bAdd, out pGuidExtension, out pGuid);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT GetName(char16* pszName, int32 cchMaxLength) mut => VT.GetName(ref this, pszName, cchMaxLength);
			public HRESULT GetDisplayName(char16* pszName, int32 cchMaxLength) mut => VT.GetDisplayName(ref this, pszName, cchMaxLength);
			public HRESULT SetDisplayName(PWSTR pszName) mut => VT.SetDisplayName(ref this, pszName);
			public HRESULT GetPath(char16* pszPath, int32 cchMaxLength) mut => VT.GetPath(ref this, pszPath, cchMaxLength);
			public HRESULT GetDSPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut => VT.GetDSPath(ref this, dwSection, pszPath, cchMaxPath);
			public HRESULT GetFileSysPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut => VT.GetFileSysPath(ref this, dwSection, pszPath, cchMaxPath);
			public HRESULT GetRegistryKey(uint32 dwSection, out HKEY hKey) mut => VT.GetRegistryKey(ref this, dwSection, out hKey);
			public HRESULT GetOptions(out uint32 dwOptions) mut => VT.GetOptions(ref this, out dwOptions);
			public HRESULT SetOptions(uint32 dwOptions, uint32 dwMask) mut => VT.SetOptions(ref this, dwOptions, dwMask);
			public HRESULT ComGetType(out GROUP_POLICY_OBJECT_TYPE gpoType) mut => VT.ComGetType(ref this, out gpoType);
			public HRESULT GetMachineName(char16* pszName, int32 cchMaxLength) mut => VT.GetMachineName(ref this, pszName, cchMaxLength);
			public HRESULT GetPropertySheetPages(out HPROPSHEETPAGE* hPages, out uint32 uPageCount) mut => VT.GetPropertySheetPages(ref this, out hPages, out uPageCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, PWSTR pszDomainName, PWSTR pszDisplayName, uint32 dwFlags) New;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, PWSTR pszPath, uint32 dwFlags) OpenDSGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, uint32 dwFlags) OpenLocalMachineGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, PWSTR pszComputerName, uint32 dwFlags) OpenRemoteMachineGPO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, BOOL bMachine, BOOL bAdd, out Guid pGuidExtension, out Guid pGuid) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, char16* pszName, int32 cchMaxLength) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, char16* pszName, int32 cchMaxLength) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, PWSTR pszName) SetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, char16* pszPath, int32 cchMaxLength) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, uint32 dwSection, out HKEY hKey) GetRegistryKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, out uint32 dwOptions) GetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, uint32 dwOptions, uint32 dwMask) SetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, out GROUP_POLICY_OBJECT_TYPE gpoType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, char16* pszName, int32 cchMaxLength) GetMachineName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGroupPolicyObject self, out HPROPSHEETPAGE* hPages, out uint32 uPageCount) GetPropertySheetPages;
			}
		}
		[CRepr]
		public struct IRSOPInformation : IUnknown
		{
			public const new Guid IID = .(0x9a5a81b5, 0xd9c7, 0x49ef, 0x9d, 0x11, 0xdd, 0xf5, 0x09, 0x68, 0xc4, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamespace(uint32 dwSection, char16* pszName, int32 cchMaxLength) mut => VT.GetNamespace(ref this, dwSection, pszName, cchMaxLength);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT GetEventLogEntryText(PWSTR pszEventSource, PWSTR pszEventLogName, PWSTR pszEventTime, uint32 dwEventID, out PWSTR ppszText) mut => VT.GetEventLogEntryText(ref this, pszEventSource, pszEventLogName, pszEventTime, dwEventID, out ppszText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRSOPInformation self, uint32 dwSection, char16* pszName, int32 cchMaxLength) GetNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRSOPInformation self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRSOPInformation self, PWSTR pszEventSource, PWSTR pszEventLogName, PWSTR pszEventTime, uint32 dwEventID, out PWSTR ppszText) GetEventLogEntryText;
			}
		}
		
		// --- Functions ---
		
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RefreshPolicy(BOOL bMachine);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RefreshPolicyEx(BOOL bMachine, uint32 dwOptions);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE EnterCriticalPolicySection(BOOL bMachine);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LeaveCriticalPolicySection(HANDLE hSection);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterGPNotification(HANDLE hEvent, BOOL bMachine);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterGPNotification(HANDLE hEvent);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGPOListA(HANDLE hToken, PSTR lpName, PSTR lpHostName, PSTR lpComputerName, uint32 dwFlags, out GROUP_POLICY_OBJECTA* pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGPOListW(HANDLE hToken, PWSTR lpName, PWSTR lpHostName, PWSTR lpComputerName, uint32 dwFlags, out GROUP_POLICY_OBJECTW* pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeGPOListA(ref GROUP_POLICY_OBJECTA pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeGPOListW(ref GROUP_POLICY_OBJECTW pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAppliedGPOListA(uint32 dwFlags, PSTR pMachineName, PSID pSidUser, ref Guid pGuidExtension, out GROUP_POLICY_OBJECTA* ppGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAppliedGPOListW(uint32 dwFlags, PWSTR pMachineName, PSID pSidUser, ref Guid pGuidExtension, out GROUP_POLICY_OBJECTW* ppGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessGroupPolicyCompleted(ref Guid extensionId, uint pAsyncHandle, uint32 dwStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessGroupPolicyCompletedEx(ref Guid extensionId, uint pAsyncHandle, uint32 dwStatus, HRESULT RsopStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopAccessCheckByType(ref SECURITY_DESCRIPTOR pSecurityDescriptor, PSID pPrincipalSelfSid, void* pRsopToken, uint32 dwDesiredAccessMask, OBJECT_TYPE_LIST* pObjectTypeList, uint32 ObjectTypeListLength, ref GENERIC_MAPPING pGenericMapping, PRIVILEGE_SET* pPrivilegeSet, uint32* pdwPrivilegeSetLength, out uint32 pdwGrantedAccessMask, out int32 pbAccessStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopFileAccessCheck(PWSTR pszFileName, void* pRsopToken, uint32 dwDesiredAccessMask, out uint32 pdwGrantedAccessMask, out int32 pbAccessStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopSetPolicySettingStatus(uint32 dwFlags, ref IWbemServices pServices, ref IWbemClassObject pSettingInstance, uint32 nInfo, POLICYSETTINGSTATUSINFO* pStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopResetPolicySettingStatus(uint32 dwFlags, ref IWbemServices pServices, ref IWbemClassObject pSettingInstance);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GenerateGPNotification(BOOL bMachine, PWSTR lpwszMgmtProduct, uint32 dwMgmtProductOptions);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InstallApplication(ref INSTALLDATA pInstallInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UninstallApplication(PWSTR ProductCode, uint32 dwStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CommandLineFromMsiDescriptor(PWSTR Descriptor, char16* CommandLine, out uint32 CommandLineLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetManagedApplications(ref Guid pCategory, uint32 dwQueryFlags, uint32 dwInfoLevel, out uint32 pdwApps, out MANAGEDAPPLICATION* prgManagedApps);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLocalManagedApplications(BOOL bUserApps, out uint32 pdwApps, out LOCALMANAGEDAPPLICATION* prgLocalApps);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetLocalManagedApplicationData(PWSTR ProductCode, out PWSTR DisplayName, out PWSTR SupportUrl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetManagedApplicationCategories(uint32 dwReserved, out APPCATEGORYINFOLIST pAppCategory);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateGPOLink(PWSTR lpGPO, PWSTR lpContainer, BOOL fHighPriority);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteGPOLink(PWSTR lpGPO, PWSTR lpContainer);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteAllGPOLinks(PWSTR lpContainer);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BrowseForGPO(out GPOBROWSEINFO lpBrowseInfo);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ImportRSoPData(PWSTR lpNameSpace, PWSTR lpFileName);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ExportRSoPData(PWSTR lpNameSpace, PWSTR lpFileName);
	}
}
