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
			rsopUnknown = 0,
			rsopPlanning = 1,
			rsopLogging = 2,
		}
		[AllowDuplicates]
		public enum GPMPermissionType : int32
		{
			permGPOApply = 65536,
			permGPORead = 65792,
			permGPOEdit = 65793,
			permGPOEditSecurityAndDelete = 65794,
			permGPOCustom = 65795,
			permWMIFilterEdit = 131072,
			permWMIFilterFullControl = 131073,
			permWMIFilterCustom = 131074,
			permSOMLink = 1835008,
			permSOMLogging = 1573120,
			permSOMPlanning = 1573376,
			permSOMWMICreate = 1049344,
			permSOMWMIFullControl = 1049345,
			permSOMGPOCreate = 1049600,
			permStarterGPORead = 197888,
			permStarterGPOEdit = 197889,
			permStarterGPOFullControl = 197890,
			permStarterGPOCustom = 197891,
			permSOMStarterGPOCreate = 1049856,
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
			opEquals = 0,
			opContains = 1,
			opNotContains = 2,
			opNotEquals = 3,
		}
		[AllowDuplicates]
		public enum GPMReportType : int32
		{
			repXML = 0,
			repHTML = 1,
			repInfraXML = 2,
			repInfraRefreshXML = 3,
			repClientHealthXML = 4,
			repClientHealthRefreshXML = 5,
		}
		[AllowDuplicates]
		public enum GPMEntryType : int32
		{
			typeUser = 0,
			typeComputer = 1,
			typeLocalGroup = 2,
			typeGlobalGroup = 3,
			typeUniversalGroup = 4,
			typeUNCPath = 5,
			typeUnknown = 6,
		}
		[AllowDuplicates]
		public enum GPMDestinationOption : int32
		{
			opDestinationSameAsSource = 0,
			opDestinationNone = 1,
			opDestinationByRelativeName = 2,
			opDestinationSet = 3,
		}
		[AllowDuplicates]
		public enum GPMReportingOptions : int32
		{
			opReportLegacy = 0,
			opReportComments = 1,
		}
		[AllowDuplicates]
		public enum GPMSOMType : int32
		{
			somSite = 0,
			somDomain = 1,
			somOU = 2,
		}
		[AllowDuplicates]
		public enum GPMBackupType : int32
		{
			typeGPO = 0,
			typeStarterGPO = 1,
		}
		[AllowDuplicates]
		public enum GPMStarterGPOType : int32
		{
			typeSystem = 0,
			typeCustom = 1,
		}
		[AllowDuplicates]
		public enum GPO_LINK : int32
		{
			GPLinkUnknown = 0,
			GPLinkMachine = 1,
			GPLinkSite = 2,
			GPLinkDomain = 3,
			GPLinkOrganizationalUnit = 4,
		}
		[AllowDuplicates]
		public enum SETTINGSTATUS : int32
		{
			RSOPUnspecified = 0,
			RSOPApplied = 1,
			RSOPIgnored = 2,
			RSOPFailed = 3,
			RSOPSubsettingFailed = 4,
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
			GPOTypeLocal = 0,
			GPOTypeRemote = 1,
			GPOTypeDS = 2,
			GPOTypeLocalUser = 3,
			GPOTypeLocalGroup = 4,
		}
		[AllowDuplicates]
		public enum GROUP_POLICY_HINT_TYPE : int32
		{
			GPHintUnknown = 0,
			GPHintMachine = 1,
			GPHintSite = 2,
			GPHintDomain = 3,
			GPHintOrganizationalUnit = 4,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PFNSTATUSMESSAGECALLBACK(BOOL bVerbose, PWSTR lpMessage);
		public function uint32 PFNPROCESSGROUPPOLICY(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, GROUP_POLICY_OBJECTA* pDeletedGPOList, GROUP_POLICY_OBJECTA* pChangedGPOList, uint pHandle, BOOL* pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback);
		public function uint32 PFNPROCESSGROUPPOLICYEX(uint32 dwFlags, HANDLE hToken, HKEY hKeyRoot, GROUP_POLICY_OBJECTA* pDeletedGPOList, GROUP_POLICY_OBJECTA* pChangedGPOList, uint pHandle, BOOL* pbAbort, PFNSTATUSMESSAGECALLBACK pStatusCallback, IWbemServices pWbemServices, HRESULT* pRsopStatus);
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
			public IWbemServices pWbemServices;
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
		
		public struct IGPM {}
		public struct IGPMDomain {}
		public struct IGPMBackupDir {}
		public struct IGPMSitesContainer {}
		public struct IGPMSearchCriteria {}
		public struct IGPMTrustee {}
		public struct IGPMPermission {}
		public struct IGPMSecurityInfo {}
		public struct IGPMBackup {}
		public struct IGPMBackupCollection {}
		public struct IGPMSOM {}
		public struct IGPMSOMCollection {}
		public struct IGPMWMIFilter {}
		public struct IGPMWMIFilterCollection {}
		public struct IGPMRSOP {}
		public struct IGPMGPO {}
		public struct IGPMGPOCollection {}
		public struct IGPMGPOLink {}
		public struct IGPMGPOLinksCollection {}
		public struct IGPMCSECollection {}
		public struct IGPMClientSideExtension {}
		public struct IGPMAsyncCancel {}
		public struct IGPMAsyncProgress {}
		public struct IGPMStatusMsgCollection {}
		public struct IGPMStatusMessage {}
		public struct IGPMConstants {}
		public struct IGPMResult {}
		public struct IGPMMapEntryCollection {}
		public struct IGPMMapEntry {}
		public struct IGPMMigrationTable {}
		public struct IGPMBackupDirEx {}
		public struct IGPMStarterGPOBackupCollection {}
		public struct IGPMStarterGPOBackup {}
		public struct IGPM2 {}
		public struct IGPMStarterGPO {}
		public struct IGPMStarterGPOCollection {}
		public struct IGPMDomain2 {}
		public struct IGPMConstants2 {}
		public struct IGPMGPO2 {}
		public struct IGPMDomain3 {}
		public struct IGPMGPO3 {}
		public struct IGPEInformation {}
		public struct IGroupPolicyObject {}
		public struct IRSOPInformation {}
		
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
		public static extern HRESULT RsopSetPolicySettingStatus(uint32 dwFlags, IWbemServices pServices, IWbemClassObject pSettingInstance, uint32 nInfo, POLICYSETTINGSTATUSINFO* pStatus);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RsopResetPolicySettingStatus(uint32 dwFlags, IWbemServices pServices, IWbemClassObject pSettingInstance);
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
