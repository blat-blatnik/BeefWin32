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
		
		[AllowDuplicates]
		public enum GPMRSOPMode : int32
		{
			Unknown = 0,
			Planning = 1,
			Logging = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum GPMSearchOperation : int32
		{
			Equals = 0,
			Contains = 1,
			NotContains = 2,
			NotEquals = 3,
		}
		[AllowDuplicates]
		public enum GPMReportType : int32
		{
			XML = 0,
			HTML = 1,
			InfraXML = 2,
			InfraRefreshXML = 3,
			ClientHealthXML = 4,
			ClientHealthRefreshXML = 5,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum GPMDestinationOption : int32
		{
			SameAsSource = 0,
			None = 1,
			ByRelativeName = 2,
			Set = 3,
		}
		[AllowDuplicates]
		public enum GPMReportingOptions : int32
		{
			Legacy = 0,
			Comments = 1,
		}
		[AllowDuplicates]
		public enum GPMSOMType : int32
		{
			Site = 0,
			Domain = 1,
			OU = 2,
		}
		[AllowDuplicates]
		public enum GPMBackupType : int32
		{
			GPO = 0,
			StarterGPO = 1,
		}
		[AllowDuplicates]
		public enum GPMStarterGPOType : int32
		{
			System = 0,
			Custom = 1,
		}
		[AllowDuplicates]
		public enum GPO_LINK : int32
		{
			Unknown = 0,
			Machine = 1,
			Site = 2,
			Domain = 3,
			OrganizationalUnit = 4,
		}
		[AllowDuplicates]
		public enum SETTINGSTATUS : int32
		{
			Unspecified = 0,
			Applied = 1,
			Ignored = 2,
			Failed = 3,
			SubsettingFailed = 4,
		}
		[AllowDuplicates]
		public enum INSTALLSPECTYPE : int32
		{
			APPNAME = 1,
			FILEEXT = 2,
			PROGID = 3,
			COMCLASS = 4,
		}
		[AllowDuplicates]
		public enum APPSTATE : int32
		{
			ABSENT = 0,
			ASSIGNED = 1,
			PUBLISHED = 2,
		}
		[AllowDuplicates]
		public enum GROUP_POLICY_OBJECT_TYPE : int32
		{
			Local = 0,
			Remote = 1,
			DS = 2,
			LocalUser = 3,
			LocalGroup = 4,
		}
		[AllowDuplicates]
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
		public function uint32 PFNPROCESSGROUPPOLICY(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, GROUP_POLICY_OBJECTA* pDeletedGPOList, GROUP_POLICY_OBJECTA* pChangedGPOList, uint pHandle, BOOL* pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback);
		public function uint32 PFNPROCESSGROUPPOLICYEX(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, GROUP_POLICY_OBJECTA* pDeletedGPOList, GROUP_POLICY_OBJECTA* pChangedGPOList, uint pHandle, BOOL* pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback, IWbemServices* pWbemServices, HRESULT* pRsopStatus);
		public function uint32 PFNGENERATEGROUPPOLICY(uint32 dwFlags, BOOL* pbAbort, PWSTR pwszSite, RSOP_TARGET* pComputerTarget, RSOP_TARGET* pUserTarget);
		
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
			
			public HRESULT GetDomain(BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMDomain** pIGPMDomain) mut
			{
				return VT.GetDomain(&this, bstrDomain, bstrDomainController, lDCFlags, pIGPMDomain);
			}
			public HRESULT GetBackupDir(BSTR bstrBackupDir, IGPMBackupDir** pIGPMBackupDir) mut
			{
				return VT.GetBackupDir(&this, bstrBackupDir, pIGPMBackupDir);
			}
			public HRESULT GetSitesContainer(BSTR bstrForest, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMSitesContainer** ppIGPMSitesContainer) mut
			{
				return VT.GetSitesContainer(&this, bstrForest, bstrDomain, bstrDomainController, lDCFlags, ppIGPMSitesContainer);
			}
			public HRESULT GetRSOP(GPMRSOPMode gpmRSoPMode, BSTR bstrNamespace, int32 lFlags, IGPMRSOP** ppIGPMRSOP) mut
			{
				return VT.GetRSOP(&this, gpmRSoPMode, bstrNamespace, lFlags, ppIGPMRSOP);
			}
			public HRESULT CreatePermission(BSTR bstrTrustee, GPMPermissionType perm, int16 bInheritable, IGPMPermission** ppPerm) mut
			{
				return VT.CreatePermission(&this, bstrTrustee, perm, bInheritable, ppPerm);
			}
			public HRESULT CreateSearchCriteria(IGPMSearchCriteria** ppIGPMSearchCriteria) mut
			{
				return VT.CreateSearchCriteria(&this, ppIGPMSearchCriteria);
			}
			public HRESULT CreateTrustee(BSTR bstrTrustee, IGPMTrustee** ppIGPMTrustee) mut
			{
				return VT.CreateTrustee(&this, bstrTrustee, ppIGPMTrustee);
			}
			public HRESULT GetClientSideExtensions(IGPMCSECollection** ppIGPMCSECollection) mut
			{
				return VT.GetClientSideExtensions(&this, ppIGPMCSECollection);
			}
			public HRESULT GetConstants(IGPMConstants** ppIGPMConstants) mut
			{
				return VT.GetConstants(&this, ppIGPMConstants);
			}
			public HRESULT GetMigrationTable(BSTR bstrMigrationTablePath, IGPMMigrationTable** ppMigrationTable) mut
			{
				return VT.GetMigrationTable(&this, bstrMigrationTablePath, ppMigrationTable);
			}
			public HRESULT CreateMigrationTable(IGPMMigrationTable** ppMigrationTable) mut
			{
				return VT.CreateMigrationTable(&this, ppMigrationTable);
			}
			public HRESULT InitializeReporting(BSTR bstrAdmPath) mut
			{
				return VT.InitializeReporting(&this, bstrAdmPath);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPM *self, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMDomain** pIGPMDomain) GetDomain;
				public new function HRESULT(IGPM *self, BSTR bstrBackupDir, IGPMBackupDir** pIGPMBackupDir) GetBackupDir;
				public new function HRESULT(IGPM *self, BSTR bstrForest, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMSitesContainer** ppIGPMSitesContainer) GetSitesContainer;
				public new function HRESULT(IGPM *self, GPMRSOPMode gpmRSoPMode, BSTR bstrNamespace, int32 lFlags, IGPMRSOP** ppIGPMRSOP) GetRSOP;
				public new function HRESULT(IGPM *self, BSTR bstrTrustee, GPMPermissionType perm, int16 bInheritable, IGPMPermission** ppPerm) CreatePermission;
				public new function HRESULT(IGPM *self, IGPMSearchCriteria** ppIGPMSearchCriteria) CreateSearchCriteria;
				public new function HRESULT(IGPM *self, BSTR bstrTrustee, IGPMTrustee** ppIGPMTrustee) CreateTrustee;
				public new function HRESULT(IGPM *self, IGPMCSECollection** ppIGPMCSECollection) GetClientSideExtensions;
				public new function HRESULT(IGPM *self, IGPMConstants** ppIGPMConstants) GetConstants;
				public new function HRESULT(IGPM *self, BSTR bstrMigrationTablePath, IGPMMigrationTable** ppMigrationTable) GetMigrationTable;
				public new function HRESULT(IGPM *self, IGPMMigrationTable** ppMigrationTable) CreateMigrationTable;
				public new function HRESULT(IGPM *self, BSTR bstrAdmPath) InitializeReporting;
			}
		}
		[CRepr]
		public struct IGPMDomain : IDispatch
		{
			public const new Guid IID = .(0x6b21cc14, 0x5a00, 0x4f44, 0xa7, 0x38, 0xfe, 0xec, 0x8a, 0x94, 0xc7, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DomainController(BSTR* pVal) mut
			{
				return VT.get_DomainController(&this, pVal);
			}
			public HRESULT get_Domain(BSTR* pVal) mut
			{
				return VT.get_Domain(&this, pVal);
			}
			public HRESULT CreateGPO(IGPMGPO** ppNewGPO) mut
			{
				return VT.CreateGPO(&this, ppNewGPO);
			}
			public HRESULT GetGPO(BSTR bstrGuid, IGPMGPO** ppGPO) mut
			{
				return VT.GetGPO(&this, bstrGuid, ppGPO);
			}
			public HRESULT SearchGPOs(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMGPOCollection** ppIGPMGPOCollection) mut
			{
				return VT.SearchGPOs(&this, pIGPMSearchCriteria, ppIGPMGPOCollection);
			}
			public HRESULT RestoreGPO(IGPMBackup* pIGPMBackup, int32 lDCFlags, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.RestoreGPO(&this, pIGPMBackup, lDCFlags, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GetSOM(BSTR bstrPath, IGPMSOM** ppSOM) mut
			{
				return VT.GetSOM(&this, bstrPath, ppSOM);
			}
			public HRESULT SearchSOMs(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) mut
			{
				return VT.SearchSOMs(&this, pIGPMSearchCriteria, ppIGPMSOMCollection);
			}
			public HRESULT GetWMIFilter(BSTR bstrPath, IGPMWMIFilter** ppWMIFilter) mut
			{
				return VT.GetWMIFilter(&this, bstrPath, ppWMIFilter);
			}
			public HRESULT SearchWMIFilters(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMWMIFilterCollection** ppIGPMWMIFilterCollection) mut
			{
				return VT.SearchWMIFilters(&this, pIGPMSearchCriteria, ppIGPMWMIFilterCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMDomain *self, BSTR* pVal) get_DomainController;
				public new function HRESULT(IGPMDomain *self, BSTR* pVal) get_Domain;
				public new function HRESULT(IGPMDomain *self, IGPMGPO** ppNewGPO) CreateGPO;
				public new function HRESULT(IGPMDomain *self, BSTR bstrGuid, IGPMGPO** ppGPO) GetGPO;
				public new function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMGPOCollection** ppIGPMGPOCollection) SearchGPOs;
				public new function HRESULT(IGPMDomain *self, IGPMBackup* pIGPMBackup, int32 lDCFlags, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) RestoreGPO;
				public new function HRESULT(IGPMDomain *self, BSTR bstrPath, IGPMSOM** ppSOM) GetSOM;
				public new function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) SearchSOMs;
				public new function HRESULT(IGPMDomain *self, BSTR bstrPath, IGPMWMIFilter** ppWMIFilter) GetWMIFilter;
				public new function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMWMIFilterCollection** ppIGPMWMIFilterCollection) SearchWMIFilters;
			}
		}
		[CRepr]
		public struct IGPMBackupDir : IDispatch
		{
			public const new Guid IID = .(0xb1568bed, 0x0a93, 0x4acc, 0x81, 0x0f, 0xaf, 0xe7, 0x08, 0x10, 0x19, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDirectory(BSTR* pVal) mut
			{
				return VT.get_BackupDirectory(&this, pVal);
			}
			public HRESULT GetBackup(BSTR bstrID, IGPMBackup** ppBackup) mut
			{
				return VT.GetBackup(&this, bstrID, ppBackup);
			}
			public HRESULT SearchBackups(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMBackupCollection** ppIGPMBackupCollection) mut
			{
				return VT.SearchBackups(&this, pIGPMSearchCriteria, ppIGPMBackupCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMBackupDir *self, BSTR* pVal) get_BackupDirectory;
				public new function HRESULT(IGPMBackupDir *self, BSTR bstrID, IGPMBackup** ppBackup) GetBackup;
				public new function HRESULT(IGPMBackupDir *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMBackupCollection** ppIGPMBackupCollection) SearchBackups;
			}
		}
		[CRepr]
		public struct IGPMSitesContainer : IDispatch
		{
			public const new Guid IID = .(0x4725a899, 0x2782, 0x4d27, 0xa6, 0xbb, 0xd4, 0x99, 0x24, 0x6f, 0xfd, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DomainController(BSTR* pVal) mut
			{
				return VT.get_DomainController(&this, pVal);
			}
			public HRESULT get_Domain(BSTR* pVal) mut
			{
				return VT.get_Domain(&this, pVal);
			}
			public HRESULT get_Forest(BSTR* pVal) mut
			{
				return VT.get_Forest(&this, pVal);
			}
			public HRESULT GetSite(BSTR bstrSiteName, IGPMSOM** ppSOM) mut
			{
				return VT.GetSite(&this, bstrSiteName, ppSOM);
			}
			public HRESULT SearchSites(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) mut
			{
				return VT.SearchSites(&this, pIGPMSearchCriteria, ppIGPMSOMCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_DomainController;
				public new function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_Domain;
				public new function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_Forest;
				public new function HRESULT(IGPMSitesContainer *self, BSTR bstrSiteName, IGPMSOM** ppSOM) GetSite;
				public new function HRESULT(IGPMSitesContainer *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) SearchSites;
			}
		}
		[CRepr]
		public struct IGPMSearchCriteria : IDispatch
		{
			public const new Guid IID = .(0xd6f11c42, 0x829b, 0x48d4, 0x83, 0xf5, 0x36, 0x15, 0xb6, 0x7d, 0xfc, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(GPMSearchProperty searchProperty, GPMSearchOperation searchOperation, VARIANT varValue) mut
			{
				return VT.Add(&this, searchProperty, searchOperation, varValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMSearchCriteria *self, GPMSearchProperty searchProperty, GPMSearchOperation searchOperation, VARIANT varValue) Add;
			}
		}
		[CRepr]
		public struct IGPMTrustee : IDispatch
		{
			public const new Guid IID = .(0x3b466da8, 0xc1a4, 0x4b2a, 0x99, 0x9a, 0xbe, 0xfc, 0xdd, 0x56, 0xce, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TrusteeSid(BSTR* bstrVal) mut
			{
				return VT.get_TrusteeSid(&this, bstrVal);
			}
			public HRESULT get_TrusteeName(BSTR* bstrVal) mut
			{
				return VT.get_TrusteeName(&this, bstrVal);
			}
			public HRESULT get_TrusteeDomain(BSTR* bstrVal) mut
			{
				return VT.get_TrusteeDomain(&this, bstrVal);
			}
			public HRESULT get_TrusteeDSPath(BSTR* pVal) mut
			{
				return VT.get_TrusteeDSPath(&this, pVal);
			}
			public HRESULT get_TrusteeType(int32* lVal) mut
			{
				return VT.get_TrusteeType(&this, lVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeSid;
				public new function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeName;
				public new function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeDomain;
				public new function HRESULT(IGPMTrustee *self, BSTR* pVal) get_TrusteeDSPath;
				public new function HRESULT(IGPMTrustee *self, int32* lVal) get_TrusteeType;
			}
		}
		[CRepr]
		public struct IGPMPermission : IDispatch
		{
			public const new Guid IID = .(0x35ebca40, 0xe1a1, 0x4a02, 0x89, 0x05, 0xd7, 0x94, 0x16, 0xfb, 0x46, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Inherited(int16* pVal) mut
			{
				return VT.get_Inherited(&this, pVal);
			}
			public HRESULT get_Inheritable(int16* pVal) mut
			{
				return VT.get_Inheritable(&this, pVal);
			}
			public HRESULT get_Denied(int16* pVal) mut
			{
				return VT.get_Denied(&this, pVal);
			}
			public HRESULT get_Permission(GPMPermissionType* pVal) mut
			{
				return VT.get_Permission(&this, pVal);
			}
			public HRESULT get_Trustee(IGPMTrustee** ppIGPMTrustee) mut
			{
				return VT.get_Trustee(&this, ppIGPMTrustee);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMPermission *self, int16* pVal) get_Inherited;
				public new function HRESULT(IGPMPermission *self, int16* pVal) get_Inheritable;
				public new function HRESULT(IGPMPermission *self, int16* pVal) get_Denied;
				public new function HRESULT(IGPMPermission *self, GPMPermissionType* pVal) get_Permission;
				public new function HRESULT(IGPMPermission *self, IGPMTrustee** ppIGPMTrustee) get_Trustee;
			}
		}
		[CRepr]
		public struct IGPMSecurityInfo : IDispatch
		{
			public const new Guid IID = .(0xb6c31ed4, 0x1c93, 0x4d3e, 0xae, 0x84, 0xeb, 0x6d, 0x61, 0x16, 0x1b, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppEnum) mut
			{
				return VT.get__NewEnum(&this, ppEnum);
			}
			public HRESULT Add(IGPMPermission* pPerm) mut
			{
				return VT.Add(&this, pPerm);
			}
			public HRESULT Remove(IGPMPermission* pPerm) mut
			{
				return VT.Remove(&this, pPerm);
			}
			public HRESULT RemoveTrustee(BSTR bstrTrustee) mut
			{
				return VT.RemoveTrustee(&this, bstrTrustee);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMSecurityInfo *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMSecurityInfo *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMSecurityInfo *self, IEnumVARIANT** ppEnum) get__NewEnum;
				public new function HRESULT(IGPMSecurityInfo *self, IGPMPermission* pPerm) Add;
				public new function HRESULT(IGPMSecurityInfo *self, IGPMPermission* pPerm) Remove;
				public new function HRESULT(IGPMSecurityInfo *self, BSTR bstrTrustee) RemoveTrustee;
			}
		}
		[CRepr]
		public struct IGPMBackup : IDispatch
		{
			public const new Guid IID = .(0xd8a16a35, 0x3b0d, 0x416b, 0x8d, 0x02, 0x4d, 0xf6, 0xf9, 0x5a, 0x71, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ID(BSTR* pVal) mut
			{
				return VT.get_ID(&this, pVal);
			}
			public HRESULT get_GPOID(BSTR* pVal) mut
			{
				return VT.get_GPOID(&this, pVal);
			}
			public HRESULT get_GPODomain(BSTR* pVal) mut
			{
				return VT.get_GPODomain(&this, pVal);
			}
			public HRESULT get_GPODisplayName(BSTR* pVal) mut
			{
				return VT.get_GPODisplayName(&this, pVal);
			}
			public HRESULT get_Timestamp(double* pVal) mut
			{
				return VT.get_Timestamp(&this, pVal);
			}
			public HRESULT get_Comment(BSTR* pVal) mut
			{
				return VT.get_Comment(&this, pVal);
			}
			public HRESULT get_BackupDir(BSTR* pVal) mut
			{
				return VT.get_BackupDir(&this, pVal);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReportToFile(&this, gpmReportType, bstrTargetFilePath, ppIGPMResult);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_ID;
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPOID;
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPODomain;
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPODisplayName;
				public new function HRESULT(IGPMBackup *self, double* pVal) get_Timestamp;
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_Comment;
				public new function HRESULT(IGPMBackup *self, BSTR* pVal) get_BackupDir;
				public new function HRESULT(IGPMBackup *self) Delete;
				public new function HRESULT(IGPMBackup *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMBackup *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPMBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc786fc0f, 0x26d8, 0x4bab, 0xa7, 0x45, 0x39, 0xca, 0x7e, 0x80, 0x0c, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMBackup) mut
			{
				return VT.get__NewEnum(&this, ppIGPMBackup);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMBackupCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMBackupCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMBackupCollection *self, IEnumVARIANT** ppIGPMBackup) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMSOM : IDispatch
		{
			public const new Guid IID = .(0xc0a7f09e, 0x05a1, 0x4f0c, 0x81, 0x58, 0x9e, 0x5c, 0x33, 0x68, 0x4f, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GPOInheritanceBlocked(int16* pVal) mut
			{
				return VT.get_GPOInheritanceBlocked(&this, pVal);
			}
			public HRESULT put_GPOInheritanceBlocked(int16 newVal) mut
			{
				return VT.put_GPOInheritanceBlocked(&this, newVal);
			}
			public HRESULT get_Name(BSTR* pVal) mut
			{
				return VT.get_Name(&this, pVal);
			}
			public HRESULT get_Path(BSTR* pVal) mut
			{
				return VT.get_Path(&this, pVal);
			}
			public HRESULT CreateGPOLink(int32 lLinkPos, IGPMGPO* pGPO, IGPMGPOLink** ppNewGPOLink) mut
			{
				return VT.CreateGPOLink(&this, lLinkPos, pGPO, ppNewGPOLink);
			}
			public HRESULT get_Type(GPMSOMType* pVal) mut
			{
				return VT.get_Type(&this, pVal);
			}
			public HRESULT GetGPOLinks(IGPMGPOLinksCollection** ppGPOLinks) mut
			{
				return VT.GetGPOLinks(&this, ppGPOLinks);
			}
			public HRESULT GetInheritedGPOLinks(IGPMGPOLinksCollection** ppGPOLinks) mut
			{
				return VT.GetInheritedGPOLinks(&this, ppGPOLinks);
			}
			public HRESULT GetSecurityInfo(IGPMSecurityInfo** ppSecurityInfo) mut
			{
				return VT.GetSecurityInfo(&this, ppSecurityInfo);
			}
			public HRESULT SetSecurityInfo(IGPMSecurityInfo* pSecurityInfo) mut
			{
				return VT.SetSecurityInfo(&this, pSecurityInfo);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMSOM *self, int16* pVal) get_GPOInheritanceBlocked;
				public new function HRESULT(IGPMSOM *self, int16 newVal) put_GPOInheritanceBlocked;
				public new function HRESULT(IGPMSOM *self, BSTR* pVal) get_Name;
				public new function HRESULT(IGPMSOM *self, BSTR* pVal) get_Path;
				public new function HRESULT(IGPMSOM *self, int32 lLinkPos, IGPMGPO* pGPO, IGPMGPOLink** ppNewGPOLink) CreateGPOLink;
				public new function HRESULT(IGPMSOM *self, GPMSOMType* pVal) get_Type;
				public new function HRESULT(IGPMSOM *self, IGPMGPOLinksCollection** ppGPOLinks) GetGPOLinks;
				public new function HRESULT(IGPMSOM *self, IGPMGPOLinksCollection** ppGPOLinks) GetInheritedGPOLinks;
				public new function HRESULT(IGPMSOM *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
				public new function HRESULT(IGPMSOM *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMSOMCollection : IDispatch
		{
			public const new Guid IID = .(0xadc1688e, 0x00e4, 0x4495, 0xab, 0xba, 0xbe, 0xd2, 0x00, 0xdf, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMSOM) mut
			{
				return VT.get__NewEnum(&this, ppIGPMSOM);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMSOMCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMSOMCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMSOMCollection *self, IEnumVARIANT** ppIGPMSOM) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMWMIFilter : IDispatch
		{
			public const new Guid IID = .(0xef2ff9b4, 0x3c27, 0x459a, 0xb9, 0x79, 0x03, 0x83, 0x05, 0xce, 0xc7, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pVal) mut
			{
				return VT.get_Path(&this, pVal);
			}
			public HRESULT put_Name(BSTR newVal) mut
			{
				return VT.put_Name(&this, newVal);
			}
			public HRESULT get_Name(BSTR* pVal) mut
			{
				return VT.get_Name(&this, pVal);
			}
			public HRESULT put_Description(BSTR newVal) mut
			{
				return VT.put_Description(&this, newVal);
			}
			public HRESULT get_Description(BSTR* pVal) mut
			{
				return VT.get_Description(&this, pVal);
			}
			public HRESULT GetQueryList(VARIANT* pQryList) mut
			{
				return VT.GetQueryList(&this, pQryList);
			}
			public HRESULT GetSecurityInfo(IGPMSecurityInfo** ppSecurityInfo) mut
			{
				return VT.GetSecurityInfo(&this, ppSecurityInfo);
			}
			public HRESULT SetSecurityInfo(IGPMSecurityInfo* pSecurityInfo) mut
			{
				return VT.SetSecurityInfo(&this, pSecurityInfo);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Path;
				public new function HRESULT(IGPMWMIFilter *self, BSTR newVal) put_Name;
				public new function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Name;
				public new function HRESULT(IGPMWMIFilter *self, BSTR newVal) put_Description;
				public new function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Description;
				public new function HRESULT(IGPMWMIFilter *self, VARIANT* pQryList) GetQueryList;
				public new function HRESULT(IGPMWMIFilter *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
				public new function HRESULT(IGPMWMIFilter *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMWMIFilterCollection : IDispatch
		{
			public const new Guid IID = .(0x5782d582, 0x1a36, 0x4661, 0x8a, 0x94, 0xc3, 0xc3, 0x25, 0x51, 0x94, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMWMIFilterCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMWMIFilterCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMWMIFilterCollection *self, IEnumVARIANT** pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMRSOP : IDispatch
		{
			public const new Guid IID = .(0x49ed785a, 0x3237, 0x4ff2, 0xb1, 0xf0, 0xfd, 0xf5, 0xa8, 0xd5, 0xa1, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Mode(GPMRSOPMode* pVal) mut
			{
				return VT.get_Mode(&this, pVal);
			}
			public HRESULT get_Namespace(BSTR* bstrVal) mut
			{
				return VT.get_Namespace(&this, bstrVal);
			}
			public HRESULT put_LoggingComputer(BSTR bstrVal) mut
			{
				return VT.put_LoggingComputer(&this, bstrVal);
			}
			public HRESULT get_LoggingComputer(BSTR* bstrVal) mut
			{
				return VT.get_LoggingComputer(&this, bstrVal);
			}
			public HRESULT put_LoggingUser(BSTR bstrVal) mut
			{
				return VT.put_LoggingUser(&this, bstrVal);
			}
			public HRESULT get_LoggingUser(BSTR* bstrVal) mut
			{
				return VT.get_LoggingUser(&this, bstrVal);
			}
			public HRESULT put_LoggingFlags(int32 lVal) mut
			{
				return VT.put_LoggingFlags(&this, lVal);
			}
			public HRESULT get_LoggingFlags(int32* lVal) mut
			{
				return VT.get_LoggingFlags(&this, lVal);
			}
			public HRESULT put_PlanningFlags(int32 lVal) mut
			{
				return VT.put_PlanningFlags(&this, lVal);
			}
			public HRESULT get_PlanningFlags(int32* lVal) mut
			{
				return VT.get_PlanningFlags(&this, lVal);
			}
			public HRESULT put_PlanningDomainController(BSTR bstrVal) mut
			{
				return VT.put_PlanningDomainController(&this, bstrVal);
			}
			public HRESULT get_PlanningDomainController(BSTR* bstrVal) mut
			{
				return VT.get_PlanningDomainController(&this, bstrVal);
			}
			public HRESULT put_PlanningSiteName(BSTR bstrVal) mut
			{
				return VT.put_PlanningSiteName(&this, bstrVal);
			}
			public HRESULT get_PlanningSiteName(BSTR* bstrVal) mut
			{
				return VT.get_PlanningSiteName(&this, bstrVal);
			}
			public HRESULT put_PlanningUser(BSTR bstrVal) mut
			{
				return VT.put_PlanningUser(&this, bstrVal);
			}
			public HRESULT get_PlanningUser(BSTR* bstrVal) mut
			{
				return VT.get_PlanningUser(&this, bstrVal);
			}
			public HRESULT put_PlanningUserSOM(BSTR bstrVal) mut
			{
				return VT.put_PlanningUserSOM(&this, bstrVal);
			}
			public HRESULT get_PlanningUserSOM(BSTR* bstrVal) mut
			{
				return VT.get_PlanningUserSOM(&this, bstrVal);
			}
			public HRESULT put_PlanningUserWMIFilters(VARIANT varVal) mut
			{
				return VT.put_PlanningUserWMIFilters(&this, varVal);
			}
			public HRESULT get_PlanningUserWMIFilters(VARIANT* varVal) mut
			{
				return VT.get_PlanningUserWMIFilters(&this, varVal);
			}
			public HRESULT put_PlanningUserSecurityGroups(VARIANT varVal) mut
			{
				return VT.put_PlanningUserSecurityGroups(&this, varVal);
			}
			public HRESULT get_PlanningUserSecurityGroups(VARIANT* varVal) mut
			{
				return VT.get_PlanningUserSecurityGroups(&this, varVal);
			}
			public HRESULT put_PlanningComputer(BSTR bstrVal) mut
			{
				return VT.put_PlanningComputer(&this, bstrVal);
			}
			public HRESULT get_PlanningComputer(BSTR* bstrVal) mut
			{
				return VT.get_PlanningComputer(&this, bstrVal);
			}
			public HRESULT put_PlanningComputerSOM(BSTR bstrVal) mut
			{
				return VT.put_PlanningComputerSOM(&this, bstrVal);
			}
			public HRESULT get_PlanningComputerSOM(BSTR* bstrVal) mut
			{
				return VT.get_PlanningComputerSOM(&this, bstrVal);
			}
			public HRESULT put_PlanningComputerWMIFilters(VARIANT varVal) mut
			{
				return VT.put_PlanningComputerWMIFilters(&this, varVal);
			}
			public HRESULT get_PlanningComputerWMIFilters(VARIANT* varVal) mut
			{
				return VT.get_PlanningComputerWMIFilters(&this, varVal);
			}
			public HRESULT put_PlanningComputerSecurityGroups(VARIANT varVal) mut
			{
				return VT.put_PlanningComputerSecurityGroups(&this, varVal);
			}
			public HRESULT get_PlanningComputerSecurityGroups(VARIANT* varVal) mut
			{
				return VT.get_PlanningComputerSecurityGroups(&this, varVal);
			}
			public HRESULT LoggingEnumerateUsers(VARIANT* varVal) mut
			{
				return VT.LoggingEnumerateUsers(&this, varVal);
			}
			public HRESULT CreateQueryResults() mut
			{
				return VT.CreateQueryResults(&this);
			}
			public HRESULT ReleaseQueryResults() mut
			{
				return VT.ReleaseQueryResults(&this);
			}
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReportToFile(&this, gpmReportType, bstrTargetFilePath, ppIGPMResult);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMRSOP *self, GPMRSOPMode* pVal) get_Mode;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_Namespace;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_LoggingComputer;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_LoggingComputer;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_LoggingUser;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_LoggingUser;
				public new function HRESULT(IGPMRSOP *self, int32 lVal) put_LoggingFlags;
				public new function HRESULT(IGPMRSOP *self, int32* lVal) get_LoggingFlags;
				public new function HRESULT(IGPMRSOP *self, int32 lVal) put_PlanningFlags;
				public new function HRESULT(IGPMRSOP *self, int32* lVal) get_PlanningFlags;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningDomainController;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningDomainController;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningSiteName;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningSiteName;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningUser;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningUser;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningUserSOM;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningUserSOM;
				public new function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningUserWMIFilters;
				public new function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningUserWMIFilters;
				public new function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningUserSecurityGroups;
				public new function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningUserSecurityGroups;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningComputer;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningComputer;
				public new function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningComputerSOM;
				public new function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningComputerSOM;
				public new function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningComputerWMIFilters;
				public new function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningComputerWMIFilters;
				public new function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningComputerSecurityGroups;
				public new function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningComputerSecurityGroups;
				public new function HRESULT(IGPMRSOP *self, VARIANT* varVal) LoggingEnumerateUsers;
				public new function HRESULT(IGPMRSOP *self) CreateQueryResults;
				public new function HRESULT(IGPMRSOP *self) ReleaseQueryResults;
				public new function HRESULT(IGPMRSOP *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMRSOP *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPMGPO : IDispatch
		{
			public const new Guid IID = .(0x58cc4352, 0x1ca3, 0x48e5, 0x98, 0x64, 0x1d, 0xa4, 0xd6, 0xe0, 0xd6, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(BSTR* pVal) mut
			{
				return VT.get_DisplayName(&this, pVal);
			}
			public HRESULT put_DisplayName(BSTR newVal) mut
			{
				return VT.put_DisplayName(&this, newVal);
			}
			public HRESULT get_Path(BSTR* pVal) mut
			{
				return VT.get_Path(&this, pVal);
			}
			public HRESULT get_ID(BSTR* pVal) mut
			{
				return VT.get_ID(&this, pVal);
			}
			public HRESULT get_DomainName(BSTR* pVal) mut
			{
				return VT.get_DomainName(&this, pVal);
			}
			public HRESULT get_CreationTime(double* pDate) mut
			{
				return VT.get_CreationTime(&this, pDate);
			}
			public HRESULT get_ModificationTime(double* pDate) mut
			{
				return VT.get_ModificationTime(&this, pDate);
			}
			public HRESULT get_UserDSVersionNumber(int32* pVal) mut
			{
				return VT.get_UserDSVersionNumber(&this, pVal);
			}
			public HRESULT get_ComputerDSVersionNumber(int32* pVal) mut
			{
				return VT.get_ComputerDSVersionNumber(&this, pVal);
			}
			public HRESULT get_UserSysvolVersionNumber(int32* pVal) mut
			{
				return VT.get_UserSysvolVersionNumber(&this, pVal);
			}
			public HRESULT get_ComputerSysvolVersionNumber(int32* pVal) mut
			{
				return VT.get_ComputerSysvolVersionNumber(&this, pVal);
			}
			public HRESULT GetWMIFilter(IGPMWMIFilter** ppIGPMWMIFilter) mut
			{
				return VT.GetWMIFilter(&this, ppIGPMWMIFilter);
			}
			public HRESULT SetWMIFilter(IGPMWMIFilter* pIGPMWMIFilter) mut
			{
				return VT.SetWMIFilter(&this, pIGPMWMIFilter);
			}
			public HRESULT SetUserEnabled(int16 vbEnabled) mut
			{
				return VT.SetUserEnabled(&this, vbEnabled);
			}
			public HRESULT SetComputerEnabled(int16 vbEnabled) mut
			{
				return VT.SetComputerEnabled(&this, vbEnabled);
			}
			public HRESULT IsUserEnabled(int16* pvbEnabled) mut
			{
				return VT.IsUserEnabled(&this, pvbEnabled);
			}
			public HRESULT IsComputerEnabled(int16* pvbEnabled) mut
			{
				return VT.IsComputerEnabled(&this, pvbEnabled);
			}
			public HRESULT GetSecurityInfo(IGPMSecurityInfo** ppSecurityInfo) mut
			{
				return VT.GetSecurityInfo(&this, ppSecurityInfo);
			}
			public HRESULT SetSecurityInfo(IGPMSecurityInfo* pSecurityInfo) mut
			{
				return VT.SetSecurityInfo(&this, pSecurityInfo);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Backup(BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.Backup(&this, bstrBackupDir, bstrComment, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT Import(int32 lFlags, IGPMBackup* pIGPMBackup, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.Import(&this, lFlags, pIGPMBackup, pvarMigrationTable, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReportToFile(&this, gpmReportType, bstrTargetFilePath, ppIGPMResult);
			}
			public HRESULT CopyTo(int32 lFlags, IGPMDomain* pIGPMDomain, VARIANT* pvarNewDisplayName, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.CopyTo(&this, lFlags, pIGPMDomain, pvarNewDisplayName, pvarMigrationTable, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT SetSecurityDescriptor(int32 lFlags, IDispatch* pSD) mut
			{
				return VT.SetSecurityDescriptor(&this, lFlags, pSD);
			}
			public HRESULT GetSecurityDescriptor(int32 lFlags, IDispatch** ppSD) mut
			{
				return VT.GetSecurityDescriptor(&this, lFlags, ppSD);
			}
			public HRESULT IsACLConsistent(int16* pvbConsistent) mut
			{
				return VT.IsACLConsistent(&this, pvbConsistent);
			}
			public HRESULT MakeACLConsistent() mut
			{
				return VT.MakeACLConsistent(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMGPO *self, BSTR* pVal) get_DisplayName;
				public new function HRESULT(IGPMGPO *self, BSTR newVal) put_DisplayName;
				public new function HRESULT(IGPMGPO *self, BSTR* pVal) get_Path;
				public new function HRESULT(IGPMGPO *self, BSTR* pVal) get_ID;
				public new function HRESULT(IGPMGPO *self, BSTR* pVal) get_DomainName;
				public new function HRESULT(IGPMGPO *self, double* pDate) get_CreationTime;
				public new function HRESULT(IGPMGPO *self, double* pDate) get_ModificationTime;
				public new function HRESULT(IGPMGPO *self, int32* pVal) get_UserDSVersionNumber;
				public new function HRESULT(IGPMGPO *self, int32* pVal) get_ComputerDSVersionNumber;
				public new function HRESULT(IGPMGPO *self, int32* pVal) get_UserSysvolVersionNumber;
				public new function HRESULT(IGPMGPO *self, int32* pVal) get_ComputerSysvolVersionNumber;
				public new function HRESULT(IGPMGPO *self, IGPMWMIFilter** ppIGPMWMIFilter) GetWMIFilter;
				public new function HRESULT(IGPMGPO *self, IGPMWMIFilter* pIGPMWMIFilter) SetWMIFilter;
				public new function HRESULT(IGPMGPO *self, int16 vbEnabled) SetUserEnabled;
				public new function HRESULT(IGPMGPO *self, int16 vbEnabled) SetComputerEnabled;
				public new function HRESULT(IGPMGPO *self, int16* pvbEnabled) IsUserEnabled;
				public new function HRESULT(IGPMGPO *self, int16* pvbEnabled) IsComputerEnabled;
				public new function HRESULT(IGPMGPO *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
				public new function HRESULT(IGPMGPO *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
				public new function HRESULT(IGPMGPO *self) Delete;
				public new function HRESULT(IGPMGPO *self, BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Backup;
				public new function HRESULT(IGPMGPO *self, int32 lFlags, IGPMBackup* pIGPMBackup, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Import;
				public new function HRESULT(IGPMGPO *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMGPO *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
				public new function HRESULT(IGPMGPO *self, int32 lFlags, IGPMDomain* pIGPMDomain, VARIANT* pvarNewDisplayName, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) CopyTo;
				public new function HRESULT(IGPMGPO *self, int32 lFlags, IDispatch* pSD) SetSecurityDescriptor;
				public new function HRESULT(IGPMGPO *self, int32 lFlags, IDispatch** ppSD) GetSecurityDescriptor;
				public new function HRESULT(IGPMGPO *self, int16* pvbConsistent) IsACLConsistent;
				public new function HRESULT(IGPMGPO *self) MakeACLConsistent;
			}
		}
		[CRepr]
		public struct IGPMGPOCollection : IDispatch
		{
			public const new Guid IID = .(0xf0f0d5cf, 0x70ca, 0x4c39, 0x9e, 0x29, 0xb6, 0x42, 0xf8, 0x72, 0x6c, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMGPOs) mut
			{
				return VT.get__NewEnum(&this, ppIGPMGPOs);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMGPOCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMGPOCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMGPOCollection *self, IEnumVARIANT** ppIGPMGPOs) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMGPOLink : IDispatch
		{
			public const new Guid IID = .(0x434b99bd, 0x5de7, 0x478a, 0x80, 0x9c, 0xc2, 0x51, 0x72, 0x1d, 0xf7, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GPOID(BSTR* pVal) mut
			{
				return VT.get_GPOID(&this, pVal);
			}
			public HRESULT get_GPODomain(BSTR* pVal) mut
			{
				return VT.get_GPODomain(&this, pVal);
			}
			public HRESULT get_Enabled(int16* pVal) mut
			{
				return VT.get_Enabled(&this, pVal);
			}
			public HRESULT put_Enabled(int16 newVal) mut
			{
				return VT.put_Enabled(&this, newVal);
			}
			public HRESULT get_Enforced(int16* pVal) mut
			{
				return VT.get_Enforced(&this, pVal);
			}
			public HRESULT put_Enforced(int16 newVal) mut
			{
				return VT.put_Enforced(&this, newVal);
			}
			public HRESULT get_SOMLinkOrder(int32* lVal) mut
			{
				return VT.get_SOMLinkOrder(&this, lVal);
			}
			public HRESULT get_SOM(IGPMSOM** ppIGPMSOM) mut
			{
				return VT.get_SOM(&this, ppIGPMSOM);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMGPOLink *self, BSTR* pVal) get_GPOID;
				public new function HRESULT(IGPMGPOLink *self, BSTR* pVal) get_GPODomain;
				public new function HRESULT(IGPMGPOLink *self, int16* pVal) get_Enabled;
				public new function HRESULT(IGPMGPOLink *self, int16 newVal) put_Enabled;
				public new function HRESULT(IGPMGPOLink *self, int16* pVal) get_Enforced;
				public new function HRESULT(IGPMGPOLink *self, int16 newVal) put_Enforced;
				public new function HRESULT(IGPMGPOLink *self, int32* lVal) get_SOMLinkOrder;
				public new function HRESULT(IGPMGPOLink *self, IGPMSOM** ppIGPMSOM) get_SOM;
				public new function HRESULT(IGPMGPOLink *self) Delete;
			}
		}
		[CRepr]
		public struct IGPMGPOLinksCollection : IDispatch
		{
			public const new Guid IID = .(0x189d7b68, 0x16bd, 0x4d0d, 0xa2, 0xec, 0x2e, 0x6a, 0xa2, 0x28, 0x8c, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMLinks) mut
			{
				return VT.get__NewEnum(&this, ppIGPMLinks);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMGPOLinksCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMGPOLinksCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMGPOLinksCollection *self, IEnumVARIANT** ppIGPMLinks) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMCSECollection : IDispatch
		{
			public const new Guid IID = .(0x2e52a97d, 0x0a4a, 0x4a6f, 0x85, 0xdb, 0x20, 0x16, 0x22, 0x45, 0x5d, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMCSEs) mut
			{
				return VT.get__NewEnum(&this, ppIGPMCSEs);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMCSECollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMCSECollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMCSECollection *self, IEnumVARIANT** ppIGPMCSEs) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMClientSideExtension : IDispatch
		{
			public const new Guid IID = .(0x69da7488, 0xb8db, 0x415e, 0x92, 0x66, 0x90, 0x1b, 0xe4, 0xd4, 0x99, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ID(BSTR* pVal) mut
			{
				return VT.get_ID(&this, pVal);
			}
			public HRESULT get_DisplayName(BSTR* pVal) mut
			{
				return VT.get_DisplayName(&this, pVal);
			}
			public HRESULT IsUserEnabled(int16* pvbEnabled) mut
			{
				return VT.IsUserEnabled(&this, pvbEnabled);
			}
			public HRESULT IsComputerEnabled(int16* pvbEnabled) mut
			{
				return VT.IsComputerEnabled(&this, pvbEnabled);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMClientSideExtension *self, BSTR* pVal) get_ID;
				public new function HRESULT(IGPMClientSideExtension *self, BSTR* pVal) get_DisplayName;
				public new function HRESULT(IGPMClientSideExtension *self, int16* pvbEnabled) IsUserEnabled;
				public new function HRESULT(IGPMClientSideExtension *self, int16* pvbEnabled) IsComputerEnabled;
			}
		}
		[CRepr]
		public struct IGPMAsyncCancel : IDispatch
		{
			public const new Guid IID = .(0xddc67754, 0xbe67, 0x4541, 0x81, 0x66, 0xf4, 0x81, 0x66, 0x86, 0x8c, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMAsyncCancel *self) Cancel;
			}
		}
		[CRepr]
		public struct IGPMAsyncProgress : IDispatch
		{
			public const new Guid IID = .(0x6aac29f8, 0x5948, 0x4324, 0xbf, 0x70, 0x42, 0x38, 0x18, 0x94, 0x2d, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Status(int32 lProgressNumerator, int32 lProgressDenominator, HRESULT hrStatus, VARIANT* pResult, IGPMStatusMsgCollection* ppIGPMStatusMsgCollection) mut
			{
				return VT.Status(&this, lProgressNumerator, lProgressDenominator, hrStatus, pResult, ppIGPMStatusMsgCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMAsyncProgress *self, int32 lProgressNumerator, int32 lProgressDenominator, HRESULT hrStatus, VARIANT* pResult, IGPMStatusMsgCollection* ppIGPMStatusMsgCollection) Status;
			}
		}
		[CRepr]
		public struct IGPMStatusMsgCollection : IDispatch
		{
			public const new Guid IID = .(0x9b6e1af0, 0x1a92, 0x40f3, 0xa5, 0x9d, 0xf3, 0x6a, 0xc1, 0xf7, 0x28, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStatusMsgCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMStatusMsgCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMStatusMsgCollection *self, IEnumVARIANT** pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMStatusMessage : IDispatch
		{
			public const new Guid IID = .(0x8496c22f, 0xf3de, 0x4a1f, 0x8f, 0x58, 0x60, 0x3c, 0xaa, 0xa9, 0x3d, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectPath(BSTR* pVal) mut
			{
				return VT.get_ObjectPath(&this, pVal);
			}
			public HRESULT ErrorCode() mut
			{
				return VT.ErrorCode(&this);
			}
			public HRESULT get_ExtensionName(BSTR* pVal) mut
			{
				return VT.get_ExtensionName(&this, pVal);
			}
			public HRESULT get_SettingsName(BSTR* pVal) mut
			{
				return VT.get_SettingsName(&this, pVal);
			}
			public HRESULT OperationCode() mut
			{
				return VT.OperationCode(&this);
			}
			public HRESULT get_Message(BSTR* pVal) mut
			{
				return VT.get_Message(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_ObjectPath;
				public new function HRESULT(IGPMStatusMessage *self) ErrorCode;
				public new function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_ExtensionName;
				public new function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_SettingsName;
				public new function HRESULT(IGPMStatusMessage *self) OperationCode;
				public new function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_Message;
			}
		}
		[CRepr]
		public struct IGPMConstants : IDispatch
		{
			public const new Guid IID = .(0x50ef73e6, 0xd35c, 0x4c8d, 0xbe, 0x63, 0x7e, 0xa5, 0xd2, 0xaa, 0xc5, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PermGPOApply(GPMPermissionType* pVal) mut
			{
				return VT.get_PermGPOApply(&this, pVal);
			}
			public HRESULT get_PermGPORead(GPMPermissionType* pVal) mut
			{
				return VT.get_PermGPORead(&this, pVal);
			}
			public HRESULT get_PermGPOEdit(GPMPermissionType* pVal) mut
			{
				return VT.get_PermGPOEdit(&this, pVal);
			}
			public HRESULT get_PermGPOEditSecurityAndDelete(GPMPermissionType* pVal) mut
			{
				return VT.get_PermGPOEditSecurityAndDelete(&this, pVal);
			}
			public HRESULT get_PermGPOCustom(GPMPermissionType* pVal) mut
			{
				return VT.get_PermGPOCustom(&this, pVal);
			}
			public HRESULT get_PermWMIFilterEdit(GPMPermissionType* pVal) mut
			{
				return VT.get_PermWMIFilterEdit(&this, pVal);
			}
			public HRESULT get_PermWMIFilterFullControl(GPMPermissionType* pVal) mut
			{
				return VT.get_PermWMIFilterFullControl(&this, pVal);
			}
			public HRESULT get_PermWMIFilterCustom(GPMPermissionType* pVal) mut
			{
				return VT.get_PermWMIFilterCustom(&this, pVal);
			}
			public HRESULT get_PermSOMLink(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMLink(&this, pVal);
			}
			public HRESULT get_PermSOMLogging(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMLogging(&this, pVal);
			}
			public HRESULT get_PermSOMPlanning(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMPlanning(&this, pVal);
			}
			public HRESULT get_PermSOMGPOCreate(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMGPOCreate(&this, pVal);
			}
			public HRESULT get_PermSOMWMICreate(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMWMICreate(&this, pVal);
			}
			public HRESULT get_PermSOMWMIFullControl(GPMPermissionType* pVal) mut
			{
				return VT.get_PermSOMWMIFullControl(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOPermissions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOPermissions(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOEffectivePermissions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOEffectivePermissions(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPODisplayName(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPODisplayName(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOWMIFilter(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOWMIFilter(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOID(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOID(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOComputerExtensions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOComputerExtensions(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPOUserExtensions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPOUserExtensions(&this, pVal);
			}
			public HRESULT get_SearchPropertySOMLinks(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertySOMLinks(&this, pVal);
			}
			public HRESULT get_SearchPropertyGPODomain(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyGPODomain(&this, pVal);
			}
			public HRESULT get_SearchPropertyBackupMostRecent(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyBackupMostRecent(&this, pVal);
			}
			public HRESULT get_SearchOpEquals(GPMSearchOperation* pVal) mut
			{
				return VT.get_SearchOpEquals(&this, pVal);
			}
			public HRESULT get_SearchOpContains(GPMSearchOperation* pVal) mut
			{
				return VT.get_SearchOpContains(&this, pVal);
			}
			public HRESULT get_SearchOpNotContains(GPMSearchOperation* pVal) mut
			{
				return VT.get_SearchOpNotContains(&this, pVal);
			}
			public HRESULT get_SearchOpNotEquals(GPMSearchOperation* pVal) mut
			{
				return VT.get_SearchOpNotEquals(&this, pVal);
			}
			public HRESULT get_UsePDC(int32* pVal) mut
			{
				return VT.get_UsePDC(&this, pVal);
			}
			public HRESULT get_UseAnyDC(int32* pVal) mut
			{
				return VT.get_UseAnyDC(&this, pVal);
			}
			public HRESULT get_DoNotUseW2KDC(int32* pVal) mut
			{
				return VT.get_DoNotUseW2KDC(&this, pVal);
			}
			public HRESULT get_SOMSite(GPMSOMType* pVal) mut
			{
				return VT.get_SOMSite(&this, pVal);
			}
			public HRESULT get_SOMDomain(GPMSOMType* pVal) mut
			{
				return VT.get_SOMDomain(&this, pVal);
			}
			public HRESULT get_SOMOU(GPMSOMType* pVal) mut
			{
				return VT.get_SOMOU(&this, pVal);
			}
			public HRESULT get_SecurityFlags(int16 vbOwner, int16 vbGroup, int16 vbDACL, int16 vbSACL, int32* pVal) mut
			{
				return VT.get_SecurityFlags(&this, vbOwner, vbGroup, vbDACL, vbSACL, pVal);
			}
			public HRESULT get_DoNotValidateDC(int32* pVal) mut
			{
				return VT.get_DoNotValidateDC(&this, pVal);
			}
			public HRESULT get_ReportHTML(GPMReportType* pVal) mut
			{
				return VT.get_ReportHTML(&this, pVal);
			}
			public HRESULT get_ReportXML(GPMReportType* pVal) mut
			{
				return VT.get_ReportXML(&this, pVal);
			}
			public HRESULT get_RSOPModeUnknown(GPMRSOPMode* pVal) mut
			{
				return VT.get_RSOPModeUnknown(&this, pVal);
			}
			public HRESULT get_RSOPModePlanning(GPMRSOPMode* pVal) mut
			{
				return VT.get_RSOPModePlanning(&this, pVal);
			}
			public HRESULT get_RSOPModeLogging(GPMRSOPMode* pVal) mut
			{
				return VT.get_RSOPModeLogging(&this, pVal);
			}
			public HRESULT get_EntryTypeUser(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeUser(&this, pVal);
			}
			public HRESULT get_EntryTypeComputer(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeComputer(&this, pVal);
			}
			public HRESULT get_EntryTypeLocalGroup(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeLocalGroup(&this, pVal);
			}
			public HRESULT get_EntryTypeGlobalGroup(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeGlobalGroup(&this, pVal);
			}
			public HRESULT get_EntryTypeUniversalGroup(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeUniversalGroup(&this, pVal);
			}
			public HRESULT get_EntryTypeUNCPath(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeUNCPath(&this, pVal);
			}
			public HRESULT get_EntryTypeUnknown(GPMEntryType* pVal) mut
			{
				return VT.get_EntryTypeUnknown(&this, pVal);
			}
			public HRESULT get_DestinationOptionSameAsSource(GPMDestinationOption* pVal) mut
			{
				return VT.get_DestinationOptionSameAsSource(&this, pVal);
			}
			public HRESULT get_DestinationOptionNone(GPMDestinationOption* pVal) mut
			{
				return VT.get_DestinationOptionNone(&this, pVal);
			}
			public HRESULT get_DestinationOptionByRelativeName(GPMDestinationOption* pVal) mut
			{
				return VT.get_DestinationOptionByRelativeName(&this, pVal);
			}
			public HRESULT get_DestinationOptionSet(GPMDestinationOption* pVal) mut
			{
				return VT.get_DestinationOptionSet(&this, pVal);
			}
			public HRESULT get_MigrationTableOnly(int32* pVal) mut
			{
				return VT.get_MigrationTableOnly(&this, pVal);
			}
			public HRESULT get_ProcessSecurity(int32* pVal) mut
			{
				return VT.get_ProcessSecurity(&this, pVal);
			}
			public HRESULT get_RsopLoggingNoComputer(int32* pVal) mut
			{
				return VT.get_RsopLoggingNoComputer(&this, pVal);
			}
			public HRESULT get_RsopLoggingNoUser(int32* pVal) mut
			{
				return VT.get_RsopLoggingNoUser(&this, pVal);
			}
			public HRESULT get_RsopPlanningAssumeSlowLink(int32* pVal) mut
			{
				return VT.get_RsopPlanningAssumeSlowLink(&this, pVal);
			}
			public HRESULT get_RsopPlanningLoopbackOption(int16 vbMerge, int32* pVal) mut
			{
				return VT.get_RsopPlanningLoopbackOption(&this, vbMerge, pVal);
			}
			public HRESULT get_RsopPlanningAssumeUserWQLFilterTrue(int32* pVal) mut
			{
				return VT.get_RsopPlanningAssumeUserWQLFilterTrue(&this, pVal);
			}
			public HRESULT get_RsopPlanningAssumeCompWQLFilterTrue(int32* pVal) mut
			{
				return VT.get_RsopPlanningAssumeCompWQLFilterTrue(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOApply;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPORead;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOEdit;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOEditSecurityAndDelete;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOCustom;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterEdit;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterFullControl;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterCustom;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMLink;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMLogging;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMPlanning;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMGPOCreate;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMWMICreate;
				public new function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMWMIFullControl;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOPermissions;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOEffectivePermissions;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPODisplayName;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOWMIFilter;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOID;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOComputerExtensions;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOUserExtensions;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertySOMLinks;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPODomain;
				public new function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyBackupMostRecent;
				public new function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpEquals;
				public new function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpContains;
				public new function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpNotContains;
				public new function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpNotEquals;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_UsePDC;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_UseAnyDC;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_DoNotUseW2KDC;
				public new function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMSite;
				public new function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMDomain;
				public new function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMOU;
				public new function HRESULT(IGPMConstants *self, int16 vbOwner, int16 vbGroup, int16 vbDACL, int16 vbSACL, int32* pVal) get_SecurityFlags;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_DoNotValidateDC;
				public new function HRESULT(IGPMConstants *self, GPMReportType* pVal) get_ReportHTML;
				public new function HRESULT(IGPMConstants *self, GPMReportType* pVal) get_ReportXML;
				public new function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModeUnknown;
				public new function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModePlanning;
				public new function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModeLogging;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUser;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeComputer;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeLocalGroup;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeGlobalGroup;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUniversalGroup;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUNCPath;
				public new function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUnknown;
				public new function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionSameAsSource;
				public new function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionNone;
				public new function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionByRelativeName;
				public new function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionSet;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_MigrationTableOnly;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_ProcessSecurity;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_RsopLoggingNoComputer;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_RsopLoggingNoUser;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeSlowLink;
				public new function HRESULT(IGPMConstants *self, int16 vbMerge, int32* pVal) get_RsopPlanningLoopbackOption;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeUserWQLFilterTrue;
				public new function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeCompWQLFilterTrue;
			}
		}
		[CRepr]
		public struct IGPMResult : IDispatch
		{
			public const new Guid IID = .(0x86dff7e9, 0xf76f, 0x42ab, 0x95, 0x70, 0xce, 0xbc, 0x6b, 0xe8, 0xa5, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(IGPMStatusMsgCollection** ppIGPMStatusMsgCollection) mut
			{
				return VT.get_Status(&this, ppIGPMStatusMsgCollection);
			}
			public HRESULT get_Result(VARIANT* pvarResult) mut
			{
				return VT.get_Result(&this, pvarResult);
			}
			public HRESULT OverallStatus() mut
			{
				return VT.OverallStatus(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMResult *self, IGPMStatusMsgCollection** ppIGPMStatusMsgCollection) get_Status;
				public new function HRESULT(IGPMResult *self, VARIANT* pvarResult) get_Result;
				public new function HRESULT(IGPMResult *self) OverallStatus;
			}
		}
		[CRepr]
		public struct IGPMMapEntryCollection : IDispatch
		{
			public const new Guid IID = .(0xbb0bf49b, 0xe53f, 0x443f, 0xb8, 0x07, 0x8b, 0xe2, 0x2b, 0xfb, 0x6d, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMMapEntryCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMMapEntryCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMMapEntryCollection *self, IEnumVARIANT** pVal) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMMapEntry : IDispatch
		{
			public const new Guid IID = .(0x8e79ad06, 0x2381, 0x4444, 0xbe, 0x4c, 0xff, 0x69, 0x3e, 0x6e, 0x6f, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Source(BSTR* pbstrSource) mut
			{
				return VT.get_Source(&this, pbstrSource);
			}
			public HRESULT get_Destination(BSTR* pbstrDestination) mut
			{
				return VT.get_Destination(&this, pbstrDestination);
			}
			public HRESULT get_DestinationOption(GPMDestinationOption* pgpmDestOption) mut
			{
				return VT.get_DestinationOption(&this, pgpmDestOption);
			}
			public HRESULT get_EntryType(GPMEntryType* pgpmEntryType) mut
			{
				return VT.get_EntryType(&this, pgpmEntryType);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMMapEntry *self, BSTR* pbstrSource) get_Source;
				public new function HRESULT(IGPMMapEntry *self, BSTR* pbstrDestination) get_Destination;
				public new function HRESULT(IGPMMapEntry *self, GPMDestinationOption* pgpmDestOption) get_DestinationOption;
				public new function HRESULT(IGPMMapEntry *self, GPMEntryType* pgpmEntryType) get_EntryType;
			}
		}
		[CRepr]
		public struct IGPMMigrationTable : IDispatch
		{
			public const new Guid IID = .(0x48f823b1, 0xefaf, 0x470b, 0xb6, 0xed, 0x40, 0xd1, 0x4e, 0xe1, 0xa4, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save(BSTR bstrMigrationTablePath) mut
			{
				return VT.Save(&this, bstrMigrationTablePath);
			}
			public HRESULT Add(int32 lFlags, VARIANT @var) mut
			{
				return VT.Add(&this, lFlags, @var);
			}
			public HRESULT AddEntry(BSTR bstrSource, GPMEntryType gpmEntryType, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) mut
			{
				return VT.AddEntry(&this, bstrSource, gpmEntryType, pvarDestination, ppEntry);
			}
			public HRESULT GetEntry(BSTR bstrSource, IGPMMapEntry** ppEntry) mut
			{
				return VT.GetEntry(&this, bstrSource, ppEntry);
			}
			public HRESULT DeleteEntry(BSTR bstrSource) mut
			{
				return VT.DeleteEntry(&this, bstrSource);
			}
			public HRESULT UpdateDestination(BSTR bstrSource, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) mut
			{
				return VT.UpdateDestination(&this, bstrSource, pvarDestination, ppEntry);
			}
			public HRESULT Validate(IGPMResult** ppResult) mut
			{
				return VT.Validate(&this, ppResult);
			}
			public HRESULT GetEntries(IGPMMapEntryCollection** ppEntries) mut
			{
				return VT.GetEntries(&this, ppEntries);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMMigrationTable *self, BSTR bstrMigrationTablePath) Save;
				public new function HRESULT(IGPMMigrationTable *self, int32 lFlags, VARIANT @var) Add;
				public new function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, GPMEntryType gpmEntryType, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) AddEntry;
				public new function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, IGPMMapEntry** ppEntry) GetEntry;
				public new function HRESULT(IGPMMigrationTable *self, BSTR bstrSource) DeleteEntry;
				public new function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) UpdateDestination;
				public new function HRESULT(IGPMMigrationTable *self, IGPMResult** ppResult) Validate;
				public new function HRESULT(IGPMMigrationTable *self, IGPMMapEntryCollection** ppEntries) GetEntries;
			}
		}
		[CRepr]
		public struct IGPMBackupDirEx : IDispatch
		{
			public const new Guid IID = .(0xf8dc55ed, 0x3ba0, 0x4864, 0xaa, 0xd4, 0xd3, 0x65, 0x18, 0x9e, 0xe1, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDir(BSTR* pbstrBackupDir) mut
			{
				return VT.get_BackupDir(&this, pbstrBackupDir);
			}
			public HRESULT get_BackupType(GPMBackupType* pgpmBackupType) mut
			{
				return VT.get_BackupType(&this, pgpmBackupType);
			}
			public HRESULT GetBackup(BSTR bstrID, VARIANT* pvarBackup) mut
			{
				return VT.GetBackup(&this, bstrID, pvarBackup);
			}
			public HRESULT SearchBackups(IGPMSearchCriteria* pIGPMSearchCriteria, VARIANT* pvarBackupCollection) mut
			{
				return VT.SearchBackups(&this, pIGPMSearchCriteria, pvarBackupCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMBackupDirEx *self, BSTR* pbstrBackupDir) get_BackupDir;
				public new function HRESULT(IGPMBackupDirEx *self, GPMBackupType* pgpmBackupType) get_BackupType;
				public new function HRESULT(IGPMBackupDirEx *self, BSTR bstrID, VARIANT* pvarBackup) GetBackup;
				public new function HRESULT(IGPMBackupDirEx *self, IGPMSearchCriteria* pIGPMSearchCriteria, VARIANT* pvarBackupCollection) SearchBackups;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc998031d, 0xadd0, 0x4bb5, 0x8d, 0xea, 0x29, 0x85, 0x05, 0xd8, 0x42, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMTmplBackup) mut
			{
				return VT.get__NewEnum(&this, ppIGPMTmplBackup);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStarterGPOBackupCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMStarterGPOBackupCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMStarterGPOBackupCollection *self, IEnumVARIANT** ppIGPMTmplBackup) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOBackup : IDispatch
		{
			public const new Guid IID = .(0x51d98eda, 0xa87e, 0x43dd, 0xb8, 0x0a, 0x0b, 0x66, 0xef, 0x19, 0x38, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupDir(BSTR* pbstrBackupDir) mut
			{
				return VT.get_BackupDir(&this, pbstrBackupDir);
			}
			public HRESULT get_Comment(BSTR* pbstrComment) mut
			{
				return VT.get_Comment(&this, pbstrComment);
			}
			public HRESULT get_DisplayName(BSTR* pbstrDisplayName) mut
			{
				return VT.get_DisplayName(&this, pbstrDisplayName);
			}
			public HRESULT get_Domain(BSTR* pbstrTemplateDomain) mut
			{
				return VT.get_Domain(&this, pbstrTemplateDomain);
			}
			public HRESULT get_StarterGPOID(BSTR* pbstrTemplateID) mut
			{
				return VT.get_StarterGPOID(&this, pbstrTemplateID);
			}
			public HRESULT get_ID(BSTR* pbstrID) mut
			{
				return VT.get_ID(&this, pbstrID);
			}
			public HRESULT get_Timestamp(double* pTimestamp) mut
			{
				return VT.get_Timestamp(&this, pTimestamp);
			}
			public HRESULT get_Type(GPMStarterGPOType* pType) mut
			{
				return VT.get_Type(&this, pType);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReportToFile(&this, gpmReportType, bstrTargetFilePath, ppIGPMResult);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrBackupDir) get_BackupDir;
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrComment) get_Comment;
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrDisplayName) get_DisplayName;
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrTemplateDomain) get_Domain;
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrTemplateID) get_StarterGPOID;
				public new function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrID) get_ID;
				public new function HRESULT(IGPMStarterGPOBackup *self, double* pTimestamp) get_Timestamp;
				public new function HRESULT(IGPMStarterGPOBackup *self, GPMStarterGPOType* pType) get_Type;
				public new function HRESULT(IGPMStarterGPOBackup *self) Delete;
				public new function HRESULT(IGPMStarterGPOBackup *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMStarterGPOBackup *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
			}
		}
		[CRepr]
		public struct IGPM2 : IGPM
		{
			public const new Guid IID = .(0x00238f8a, 0x3d86, 0x41ac, 0x8f, 0x5e, 0x06, 0xa6, 0x63, 0x8a, 0x63, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBackupDirEx(BSTR bstrBackupDir, GPMBackupType backupDirType, IGPMBackupDirEx** ppIGPMBackupDirEx) mut
			{
				return VT.GetBackupDirEx(&this, bstrBackupDir, backupDirType, ppIGPMBackupDirEx);
			}
			public HRESULT InitializeReportingEx(BSTR bstrAdmPath, int32 reportingOptions) mut
			{
				return VT.InitializeReportingEx(&this, bstrAdmPath, reportingOptions);
			}
			[CRepr]
			public struct VTable : IGPM.VTable
			{
				public new function HRESULT(IGPM2 *self, BSTR bstrBackupDir, GPMBackupType backupDirType, IGPMBackupDirEx** ppIGPMBackupDirEx) GetBackupDirEx;
				public new function HRESULT(IGPM2 *self, BSTR bstrAdmPath, int32 reportingOptions) InitializeReportingEx;
			}
		}
		[CRepr]
		public struct IGPMStarterGPO : IDispatch
		{
			public const new Guid IID = .(0xdfc3f61b, 0x8880, 0x4490, 0x93, 0x37, 0xd2, 0x9c, 0x7b, 0xa8, 0xc2, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(BSTR* pVal) mut
			{
				return VT.get_DisplayName(&this, pVal);
			}
			public HRESULT put_DisplayName(BSTR newVal) mut
			{
				return VT.put_DisplayName(&this, newVal);
			}
			public HRESULT get_Description(BSTR* pVal) mut
			{
				return VT.get_Description(&this, pVal);
			}
			public HRESULT put_Description(BSTR newVal) mut
			{
				return VT.put_Description(&this, newVal);
			}
			public HRESULT get_Author(BSTR* pVal) mut
			{
				return VT.get_Author(&this, pVal);
			}
			public HRESULT get_Product(BSTR* pVal) mut
			{
				return VT.get_Product(&this, pVal);
			}
			public HRESULT get_CreationTime(double* pVal) mut
			{
				return VT.get_CreationTime(&this, pVal);
			}
			public HRESULT get_ID(BSTR* pVal) mut
			{
				return VT.get_ID(&this, pVal);
			}
			public HRESULT get_ModifiedTime(double* pVal) mut
			{
				return VT.get_ModifiedTime(&this, pVal);
			}
			public HRESULT get_Type(GPMStarterGPOType* pVal) mut
			{
				return VT.get_Type(&this, pVal);
			}
			public HRESULT get_ComputerVersion(uint16* pVal) mut
			{
				return VT.get_ComputerVersion(&this, pVal);
			}
			public HRESULT get_UserVersion(uint16* pVal) mut
			{
				return VT.get_UserVersion(&this, pVal);
			}
			public HRESULT get_StarterGPOVersion(BSTR* pVal) mut
			{
				return VT.get_StarterGPOVersion(&this, pVal);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Save(BSTR bstrSaveFile, int16 bOverwrite, int16 bSaveAsSystem, VARIANT* bstrLanguage, VARIANT* bstrAuthor, VARIANT* bstrProduct, VARIANT* bstrUniqueID, VARIANT* bstrVersion, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.Save(&this, bstrSaveFile, bOverwrite, bSaveAsSystem, bstrLanguage, bstrAuthor, bstrProduct, bstrUniqueID, bstrVersion, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT Backup(BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.Backup(&this, bstrBackupDir, bstrComment, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT CopyTo(VARIANT* pvarNewDisplayName, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.CopyTo(&this, pvarNewDisplayName, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT GenerateReportToFile(GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReportToFile(&this, gpmReportType, bstrTargetFilePath, ppIGPMResult);
			}
			public HRESULT GetSecurityInfo(IGPMSecurityInfo** ppSecurityInfo) mut
			{
				return VT.GetSecurityInfo(&this, ppSecurityInfo);
			}
			public HRESULT SetSecurityInfo(IGPMSecurityInfo* pSecurityInfo) mut
			{
				return VT.SetSecurityInfo(&this, pSecurityInfo);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_DisplayName;
				public new function HRESULT(IGPMStarterGPO *self, BSTR newVal) put_DisplayName;
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Description;
				public new function HRESULT(IGPMStarterGPO *self, BSTR newVal) put_Description;
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Author;
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Product;
				public new function HRESULT(IGPMStarterGPO *self, double* pVal) get_CreationTime;
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_ID;
				public new function HRESULT(IGPMStarterGPO *self, double* pVal) get_ModifiedTime;
				public new function HRESULT(IGPMStarterGPO *self, GPMStarterGPOType* pVal) get_Type;
				public new function HRESULT(IGPMStarterGPO *self, uint16* pVal) get_ComputerVersion;
				public new function HRESULT(IGPMStarterGPO *self, uint16* pVal) get_UserVersion;
				public new function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_StarterGPOVersion;
				public new function HRESULT(IGPMStarterGPO *self) Delete;
				public new function HRESULT(IGPMStarterGPO *self, BSTR bstrSaveFile, int16 bOverwrite, int16 bSaveAsSystem, VARIANT* bstrLanguage, VARIANT* bstrAuthor, VARIANT* bstrProduct, VARIANT* bstrUniqueID, VARIANT* bstrVersion, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Save;
				public new function HRESULT(IGPMStarterGPO *self, BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Backup;
				public new function HRESULT(IGPMStarterGPO *self, VARIANT* pvarNewDisplayName, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) CopyTo;
				public new function HRESULT(IGPMStarterGPO *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMStarterGPO *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
				public new function HRESULT(IGPMStarterGPO *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
				public new function HRESULT(IGPMStarterGPO *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
			}
		}
		[CRepr]
		public struct IGPMStarterGPOCollection : IDispatch
		{
			public const new Guid IID = .(0x2e522729, 0x2219, 0x44ad, 0x93, 0x3a, 0x64, 0xdf, 0xd6, 0x50, 0xc4, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_Item(int32 lIndex, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, lIndex, pVal);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** ppIGPMTemplates) mut
			{
				return VT.get__NewEnum(&this, ppIGPMTemplates);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IGPMStarterGPOCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IGPMStarterGPOCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
				public new function HRESULT(IGPMStarterGPOCollection *self, IEnumVARIANT** ppIGPMTemplates) get__NewEnum;
			}
		}
		[CRepr]
		public struct IGPMDomain2 : IGPMDomain
		{
			public const new Guid IID = .(0x7ca6bb8b, 0xf1eb, 0x490a, 0x93, 0x8d, 0x3c, 0x4e, 0x51, 0xc7, 0x68, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStarterGPO(IGPMStarterGPO** ppnewTemplate) mut
			{
				return VT.CreateStarterGPO(&this, ppnewTemplate);
			}
			public HRESULT CreateGPOFromStarterGPO(IGPMStarterGPO* pGPOTemplate, IGPMGPO** ppnewGPO) mut
			{
				return VT.CreateGPOFromStarterGPO(&this, pGPOTemplate, ppnewGPO);
			}
			public HRESULT GetStarterGPO(BSTR bstrGuid, IGPMStarterGPO** ppTemplate) mut
			{
				return VT.GetStarterGPO(&this, bstrGuid, ppTemplate);
			}
			public HRESULT SearchStarterGPOs(IGPMSearchCriteria* pIGPMSearchCriteria, IGPMStarterGPOCollection** ppIGPMTemplateCollection) mut
			{
				return VT.SearchStarterGPOs(&this, pIGPMSearchCriteria, ppIGPMTemplateCollection);
			}
			public HRESULT LoadStarterGPO(BSTR bstrLoadFile, int16 bOverwrite, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.LoadStarterGPO(&this, bstrLoadFile, bOverwrite, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT RestoreStarterGPO(IGPMStarterGPOBackup* pIGPMTmplBackup, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.RestoreStarterGPO(&this, pIGPMTmplBackup, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			[CRepr]
			public struct VTable : IGPMDomain.VTable
			{
				public new function HRESULT(IGPMDomain2 *self, IGPMStarterGPO** ppnewTemplate) CreateStarterGPO;
				public new function HRESULT(IGPMDomain2 *self, IGPMStarterGPO* pGPOTemplate, IGPMGPO** ppnewGPO) CreateGPOFromStarterGPO;
				public new function HRESULT(IGPMDomain2 *self, BSTR bstrGuid, IGPMStarterGPO** ppTemplate) GetStarterGPO;
				public new function HRESULT(IGPMDomain2 *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMStarterGPOCollection** ppIGPMTemplateCollection) SearchStarterGPOs;
				public new function HRESULT(IGPMDomain2 *self, BSTR bstrLoadFile, int16 bOverwrite, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) LoadStarterGPO;
				public new function HRESULT(IGPMDomain2 *self, IGPMStarterGPOBackup* pIGPMTmplBackup, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) RestoreStarterGPO;
			}
		}
		[CRepr]
		public struct IGPMConstants2 : IGPMConstants
		{
			public const new Guid IID = .(0x05ae21b0, 0xac09, 0x4032, 0xa2, 0x6f, 0x9e, 0x7d, 0xa7, 0x86, 0xdc, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BackupTypeGPO(GPMBackupType* pVal) mut
			{
				return VT.get_BackupTypeGPO(&this, pVal);
			}
			public HRESULT get_BackupTypeStarterGPO(GPMBackupType* pVal) mut
			{
				return VT.get_BackupTypeStarterGPO(&this, pVal);
			}
			public HRESULT get_StarterGPOTypeSystem(GPMStarterGPOType* pVal) mut
			{
				return VT.get_StarterGPOTypeSystem(&this, pVal);
			}
			public HRESULT get_StarterGPOTypeCustom(GPMStarterGPOType* pVal) mut
			{
				return VT.get_StarterGPOTypeCustom(&this, pVal);
			}
			public HRESULT get_SearchPropertyStarterGPOPermissions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyStarterGPOPermissions(&this, pVal);
			}
			public HRESULT get_SearchPropertyStarterGPOEffectivePermissions(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyStarterGPOEffectivePermissions(&this, pVal);
			}
			public HRESULT get_SearchPropertyStarterGPODisplayName(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyStarterGPODisplayName(&this, pVal);
			}
			public HRESULT get_SearchPropertyStarterGPOID(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyStarterGPOID(&this, pVal);
			}
			public HRESULT get_SearchPropertyStarterGPODomain(GPMSearchProperty* pVal) mut
			{
				return VT.get_SearchPropertyStarterGPODomain(&this, pVal);
			}
			public HRESULT get_PermStarterGPORead(GPMPermissionType* pVal) mut
			{
				return VT.get_PermStarterGPORead(&this, pVal);
			}
			public HRESULT get_PermStarterGPOEdit(GPMPermissionType* pVal) mut
			{
				return VT.get_PermStarterGPOEdit(&this, pVal);
			}
			public HRESULT get_PermStarterGPOFullControl(GPMPermissionType* pVal) mut
			{
				return VT.get_PermStarterGPOFullControl(&this, pVal);
			}
			public HRESULT get_PermStarterGPOCustom(GPMPermissionType* pVal) mut
			{
				return VT.get_PermStarterGPOCustom(&this, pVal);
			}
			public HRESULT get_ReportLegacy(GPMReportingOptions* pVal) mut
			{
				return VT.get_ReportLegacy(&this, pVal);
			}
			public HRESULT get_ReportComments(GPMReportingOptions* pVal) mut
			{
				return VT.get_ReportComments(&this, pVal);
			}
			[CRepr]
			public struct VTable : IGPMConstants.VTable
			{
				public new function HRESULT(IGPMConstants2 *self, GPMBackupType* pVal) get_BackupTypeGPO;
				public new function HRESULT(IGPMConstants2 *self, GPMBackupType* pVal) get_BackupTypeStarterGPO;
				public new function HRESULT(IGPMConstants2 *self, GPMStarterGPOType* pVal) get_StarterGPOTypeSystem;
				public new function HRESULT(IGPMConstants2 *self, GPMStarterGPOType* pVal) get_StarterGPOTypeCustom;
				public new function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOPermissions;
				public new function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOEffectivePermissions;
				public new function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPODisplayName;
				public new function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOID;
				public new function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPODomain;
				public new function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPORead;
				public new function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOEdit;
				public new function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOFullControl;
				public new function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOCustom;
				public new function HRESULT(IGPMConstants2 *self, GPMReportingOptions* pVal) get_ReportLegacy;
				public new function HRESULT(IGPMConstants2 *self, GPMReportingOptions* pVal) get_ReportComments;
			}
		}
		[CRepr]
		public struct IGPMGPO2 : IGPMGPO
		{
			public const new Guid IID = .(0x8a66a210, 0xb78b, 0x4d99, 0x88, 0xe2, 0xc3, 0x06, 0xa8, 0x17, 0xc9, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* pVal) mut
			{
				return VT.get_Description(&this, pVal);
			}
			public HRESULT put_Description(BSTR newVal) mut
			{
				return VT.put_Description(&this, newVal);
			}
			[CRepr]
			public struct VTable : IGPMGPO.VTable
			{
				public new function HRESULT(IGPMGPO2 *self, BSTR* pVal) get_Description;
				public new function HRESULT(IGPMGPO2 *self, BSTR newVal) put_Description;
			}
		}
		[CRepr]
		public struct IGPMDomain3 : IGPMDomain2
		{
			public const new Guid IID = .(0x0077fdfe, 0x88c7, 0x4acf, 0xa1, 0x1d, 0xd1, 0x0a, 0x7c, 0x31, 0x0a, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateReport(GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) mut
			{
				return VT.GenerateReport(&this, gpmReportType, pvarGPMProgress, pvarGPMCancel, ppIGPMResult);
			}
			public HRESULT get_InfrastructureDC(BSTR* pVal) mut
			{
				return VT.get_InfrastructureDC(&this, pVal);
			}
			public HRESULT put_InfrastructureDC(BSTR newVal) mut
			{
				return VT.put_InfrastructureDC(&this, newVal);
			}
			public HRESULT put_InfrastructureFlags(uint32 dwFlags) mut
			{
				return VT.put_InfrastructureFlags(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IGPMDomain2.VTable
			{
				public new function HRESULT(IGPMDomain3 *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
				public new function HRESULT(IGPMDomain3 *self, BSTR* pVal) get_InfrastructureDC;
				public new function HRESULT(IGPMDomain3 *self, BSTR newVal) put_InfrastructureDC;
				public new function HRESULT(IGPMDomain3 *self, uint32 dwFlags) put_InfrastructureFlags;
			}
		}
		[CRepr]
		public struct IGPMGPO3 : IGPMGPO2
		{
			public const new Guid IID = .(0x7cf123a1, 0xf94a, 0x4112, 0xbf, 0xae, 0x6a, 0xa1, 0xdb, 0x9c, 0xb2, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InfrastructureDC(BSTR* pVal) mut
			{
				return VT.get_InfrastructureDC(&this, pVal);
			}
			public HRESULT put_InfrastructureDC(BSTR newVal) mut
			{
				return VT.put_InfrastructureDC(&this, newVal);
			}
			public HRESULT put_InfrastructureFlags(uint32 dwFlags) mut
			{
				return VT.put_InfrastructureFlags(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IGPMGPO2.VTable
			{
				public new function HRESULT(IGPMGPO3 *self, BSTR* pVal) get_InfrastructureDC;
				public new function HRESULT(IGPMGPO3 *self, BSTR newVal) put_InfrastructureDC;
				public new function HRESULT(IGPMGPO3 *self, uint32 dwFlags) put_InfrastructureFlags;
			}
		}
		[CRepr]
		public struct IGPEInformation : IUnknown
		{
			public const new Guid IID = .(0x8fc0b735, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetName(&this, pszName, cchMaxLength);
			}
			public HRESULT GetDisplayName(char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetDisplayName(&this, pszName, cchMaxLength);
			}
			public HRESULT GetRegistryKey(uint32 dwSection, HKEY* hKey) mut
			{
				return VT.GetRegistryKey(&this, dwSection, hKey);
			}
			public HRESULT GetDSPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut
			{
				return VT.GetDSPath(&this, dwSection, pszPath, cchMaxPath);
			}
			public HRESULT GetFileSysPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut
			{
				return VT.GetFileSysPath(&this, dwSection, pszPath, cchMaxPath);
			}
			public HRESULT GetOptions(uint32* dwOptions) mut
			{
				return VT.GetOptions(&this, dwOptions);
			}
			public HRESULT ComGetType(GROUP_POLICY_OBJECT_TYPE* gpoType) mut
			{
				return VT.ComGetType(&this, gpoType);
			}
			public HRESULT GetHint(GROUP_POLICY_HINT_TYPE* gpHint) mut
			{
				return VT.GetHint(&this, gpHint);
			}
			public HRESULT PolicyChanged(BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuidSnapin) mut
			{
				return VT.PolicyChanged(&this, bMachine, bAdd, pGuidExtension, pGuidSnapin);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGPEInformation *self, char16* pszName, int32 cchMaxLength) GetName;
				public new function HRESULT(IGPEInformation *self, char16* pszName, int32 cchMaxLength) GetDisplayName;
				public new function HRESULT(IGPEInformation *self, uint32 dwSection, HKEY* hKey) GetRegistryKey;
				public new function HRESULT(IGPEInformation *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
				public new function HRESULT(IGPEInformation *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
				public new function HRESULT(IGPEInformation *self, uint32* dwOptions) GetOptions;
				public new function HRESULT(IGPEInformation *self, GROUP_POLICY_OBJECT_TYPE* gpoType) ComGetType;
				public new function HRESULT(IGPEInformation *self, GROUP_POLICY_HINT_TYPE* gpHint) GetHint;
				public new function HRESULT(IGPEInformation *self, BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuidSnapin) PolicyChanged;
			}
		}
		[CRepr]
		public struct IGroupPolicyObject : IUnknown
		{
			public const new Guid IID = .(0xea502723, 0xa23d, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT New(PWSTR pszDomainName, PWSTR pszDisplayName, uint32 dwFlags) mut
			{
				return VT.New(&this, pszDomainName, pszDisplayName, dwFlags);
			}
			public HRESULT OpenDSGPO(PWSTR pszPath, uint32 dwFlags) mut
			{
				return VT.OpenDSGPO(&this, pszPath, dwFlags);
			}
			public HRESULT OpenLocalMachineGPO(uint32 dwFlags) mut
			{
				return VT.OpenLocalMachineGPO(&this, dwFlags);
			}
			public HRESULT OpenRemoteMachineGPO(PWSTR pszComputerName, uint32 dwFlags) mut
			{
				return VT.OpenRemoteMachineGPO(&this, pszComputerName, dwFlags);
			}
			public HRESULT Save(BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuid) mut
			{
				return VT.Save(&this, bMachine, bAdd, pGuidExtension, pGuid);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT GetName(char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetName(&this, pszName, cchMaxLength);
			}
			public HRESULT GetDisplayName(char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetDisplayName(&this, pszName, cchMaxLength);
			}
			public HRESULT SetDisplayName(PWSTR pszName) mut
			{
				return VT.SetDisplayName(&this, pszName);
			}
			public HRESULT GetPath(char16* pszPath, int32 cchMaxLength) mut
			{
				return VT.GetPath(&this, pszPath, cchMaxLength);
			}
			public HRESULT GetDSPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut
			{
				return VT.GetDSPath(&this, dwSection, pszPath, cchMaxPath);
			}
			public HRESULT GetFileSysPath(uint32 dwSection, char16* pszPath, int32 cchMaxPath) mut
			{
				return VT.GetFileSysPath(&this, dwSection, pszPath, cchMaxPath);
			}
			public HRESULT GetRegistryKey(uint32 dwSection, HKEY* hKey) mut
			{
				return VT.GetRegistryKey(&this, dwSection, hKey);
			}
			public HRESULT GetOptions(uint32* dwOptions) mut
			{
				return VT.GetOptions(&this, dwOptions);
			}
			public HRESULT SetOptions(uint32 dwOptions, uint32 dwMask) mut
			{
				return VT.SetOptions(&this, dwOptions, dwMask);
			}
			public HRESULT ComGetType(GROUP_POLICY_OBJECT_TYPE* gpoType) mut
			{
				return VT.ComGetType(&this, gpoType);
			}
			public HRESULT GetMachineName(char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetMachineName(&this, pszName, cchMaxLength);
			}
			public HRESULT GetPropertySheetPages(HPROPSHEETPAGE** hPages, uint32* uPageCount) mut
			{
				return VT.GetPropertySheetPages(&this, hPages, uPageCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGroupPolicyObject *self, PWSTR pszDomainName, PWSTR pszDisplayName, uint32 dwFlags) New;
				public new function HRESULT(IGroupPolicyObject *self, PWSTR pszPath, uint32 dwFlags) OpenDSGPO;
				public new function HRESULT(IGroupPolicyObject *self, uint32 dwFlags) OpenLocalMachineGPO;
				public new function HRESULT(IGroupPolicyObject *self, PWSTR pszComputerName, uint32 dwFlags) OpenRemoteMachineGPO;
				public new function HRESULT(IGroupPolicyObject *self, BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuid) Save;
				public new function HRESULT(IGroupPolicyObject *self) Delete;
				public new function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetName;
				public new function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetDisplayName;
				public new function HRESULT(IGroupPolicyObject *self, PWSTR pszName) SetDisplayName;
				public new function HRESULT(IGroupPolicyObject *self, char16* pszPath, int32 cchMaxLength) GetPath;
				public new function HRESULT(IGroupPolicyObject *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
				public new function HRESULT(IGroupPolicyObject *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
				public new function HRESULT(IGroupPolicyObject *self, uint32 dwSection, HKEY* hKey) GetRegistryKey;
				public new function HRESULT(IGroupPolicyObject *self, uint32* dwOptions) GetOptions;
				public new function HRESULT(IGroupPolicyObject *self, uint32 dwOptions, uint32 dwMask) SetOptions;
				public new function HRESULT(IGroupPolicyObject *self, GROUP_POLICY_OBJECT_TYPE* gpoType) ComGetType;
				public new function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetMachineName;
				public new function HRESULT(IGroupPolicyObject *self, HPROPSHEETPAGE** hPages, uint32* uPageCount) GetPropertySheetPages;
			}
		}
		[CRepr]
		public struct IRSOPInformation : IUnknown
		{
			public const new Guid IID = .(0x9a5a81b5, 0xd9c7, 0x49ef, 0x9d, 0x11, 0xdd, 0xf5, 0x09, 0x68, 0xc4, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamespace(uint32 dwSection, char16* pszName, int32 cchMaxLength) mut
			{
				return VT.GetNamespace(&this, dwSection, pszName, cchMaxLength);
			}
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			public HRESULT GetEventLogEntryText(PWSTR pszEventSource, PWSTR pszEventLogName, PWSTR pszEventTime, uint32 dwEventID, PWSTR* ppszText) mut
			{
				return VT.GetEventLogEntryText(&this, pszEventSource, pszEventLogName, pszEventTime, dwEventID, ppszText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRSOPInformation *self, uint32 dwSection, char16* pszName, int32 cchMaxLength) GetNamespace;
				public new function HRESULT(IRSOPInformation *self, uint32* pdwFlags) ComGetFlags;
				public new function HRESULT(IRSOPInformation *self, PWSTR pszEventSource, PWSTR pszEventLogName, PWSTR pszEventTime, uint32 dwEventID, PWSTR* ppszText) GetEventLogEntryText;
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
		public static extern BOOL GetGPOListA(HANDLE hToken, PSTR lpName, PSTR lpHostName, PSTR lpComputerName, uint32 dwFlags, GROUP_POLICY_OBJECTA** pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetGPOListW(HANDLE hToken, PWSTR lpName, PWSTR lpHostName, PWSTR lpComputerName, uint32 dwFlags, GROUP_POLICY_OBJECTW** pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeGPOListA(GROUP_POLICY_OBJECTA* pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeGPOListW(GROUP_POLICY_OBJECTW* pGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAppliedGPOListA(uint32 dwFlags, PSTR pMachineName, PSID pSidUser, Guid* pGuidExtension, GROUP_POLICY_OBJECTA** ppGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAppliedGPOListW(uint32 dwFlags, PWSTR pMachineName, PSID pSidUser, Guid* pGuidExtension, GROUP_POLICY_OBJECTW** ppGPOList);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessGroupPolicyCompleted(Guid* extensionId, uint pAsyncHandle, uint32 dwStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessGroupPolicyCompletedEx(Guid* extensionId, uint pAsyncHandle, uint32 dwStatus, HRESULT RsopStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopAccessCheckByType(SECURITY_DESCRIPTOR* pSecurityDescriptor, PSID pPrincipalSelfSid, void* pRsopToken, uint32 dwDesiredAccessMask, OBJECT_TYPE_LIST* pObjectTypeList, uint32 ObjectTypeListLength, GENERIC_MAPPING* pGenericMapping, PRIVILEGE_SET* pPrivilegeSet, uint32* pdwPrivilegeSetLength, uint32* pdwGrantedAccessMask, int32* pbAccessStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopFileAccessCheck(PWSTR pszFileName, void* pRsopToken, uint32 dwDesiredAccessMask, uint32* pdwGrantedAccessMask, int32* pbAccessStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopSetPolicySettingStatus(uint32 dwFlags, IWbemServices* pServices, IWbemClassObject* pSettingInstance, uint32 nInfo, POLICYSETTINGSTATUSINFO* pStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopResetPolicySettingStatus(uint32 dwFlags, IWbemServices* pServices, IWbemClassObject* pSettingInstance);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GenerateGPNotification(BOOL bMachine, PWSTR lpwszMgmtProduct, uint32 dwMgmtProductOptions);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 InstallApplication(INSTALLDATA* pInstallInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UninstallApplication(PWSTR ProductCode, uint32 dwStatus);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CommandLineFromMsiDescriptor(PWSTR Descriptor, char16* CommandLine, uint32* CommandLineLength);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetManagedApplications(Guid* pCategory, uint32 dwQueryFlags, uint32 dwInfoLevel, uint32* pdwApps, MANAGEDAPPLICATION** prgManagedApps);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetLocalManagedApplications(BOOL bUserApps, uint32* pdwApps, LOCALMANAGEDAPPLICATION** prgLocalApps);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetLocalManagedApplicationData(PWSTR ProductCode, PWSTR* DisplayName, PWSTR* SupportUrl);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetManagedApplicationCategories(uint32 dwReserved, APPCATEGORYINFOLIST* pAppCategory);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateGPOLink(PWSTR lpGPO, PWSTR lpContainer, BOOL fHighPriority);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteGPOLink(PWSTR lpGPO, PWSTR lpContainer);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeleteAllGPOLinks(PWSTR lpContainer);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BrowseForGPO(GPOBROWSEINFO* lpBrowseInfo);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ImportRSoPData(PWSTR lpNameSpace, PWSTR lpFileName);
		[Import("gpedit.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ExportRSoPData(PWSTR lpNameSpace, PWSTR lpFileName);
		
	}
}
