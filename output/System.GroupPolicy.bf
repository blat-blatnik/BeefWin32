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
			
			public function HRESULT(IGPM *self, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMDomain** pIGPMDomain) GetDomain;
			public function HRESULT(IGPM *self, BSTR bstrBackupDir, IGPMBackupDir** pIGPMBackupDir) GetBackupDir;
			public function HRESULT(IGPM *self, BSTR bstrForest, BSTR bstrDomain, BSTR bstrDomainController, int32 lDCFlags, IGPMSitesContainer** ppIGPMSitesContainer) GetSitesContainer;
			public function HRESULT(IGPM *self, GPMRSOPMode gpmRSoPMode, BSTR bstrNamespace, int32 lFlags, IGPMRSOP** ppIGPMRSOP) GetRSOP;
			public function HRESULT(IGPM *self, BSTR bstrTrustee, GPMPermissionType perm, int16 bInheritable, IGPMPermission** ppPerm) CreatePermission;
			public function HRESULT(IGPM *self, IGPMSearchCriteria** ppIGPMSearchCriteria) CreateSearchCriteria;
			public function HRESULT(IGPM *self, BSTR bstrTrustee, IGPMTrustee** ppIGPMTrustee) CreateTrustee;
			public function HRESULT(IGPM *self, IGPMCSECollection** ppIGPMCSECollection) GetClientSideExtensions;
			public function HRESULT(IGPM *self, IGPMConstants** ppIGPMConstants) GetConstants;
			public function HRESULT(IGPM *self, BSTR bstrMigrationTablePath, IGPMMigrationTable** ppMigrationTable) GetMigrationTable;
			public function HRESULT(IGPM *self, IGPMMigrationTable** ppMigrationTable) CreateMigrationTable;
			public function HRESULT(IGPM *self, BSTR bstrAdmPath) InitializeReporting;
		}
		[CRepr]
		public struct IGPMDomain : IDispatch
		{
			public const new Guid IID = .(0x6b21cc14, 0x5a00, 0x4f44, 0xa7, 0x38, 0xfe, 0xec, 0x8a, 0x94, 0xc7, 0xe3);
			
			public function HRESULT(IGPMDomain *self, BSTR* pVal) get_DomainController;
			public function HRESULT(IGPMDomain *self, BSTR* pVal) get_Domain;
			public function HRESULT(IGPMDomain *self, IGPMGPO** ppNewGPO) CreateGPO;
			public function HRESULT(IGPMDomain *self, BSTR bstrGuid, IGPMGPO** ppGPO) GetGPO;
			public function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMGPOCollection** ppIGPMGPOCollection) SearchGPOs;
			public function HRESULT(IGPMDomain *self, IGPMBackup* pIGPMBackup, int32 lDCFlags, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) RestoreGPO;
			public function HRESULT(IGPMDomain *self, BSTR bstrPath, IGPMSOM** ppSOM) GetSOM;
			public function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) SearchSOMs;
			public function HRESULT(IGPMDomain *self, BSTR bstrPath, IGPMWMIFilter** ppWMIFilter) GetWMIFilter;
			public function HRESULT(IGPMDomain *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMWMIFilterCollection** ppIGPMWMIFilterCollection) SearchWMIFilters;
		}
		[CRepr]
		public struct IGPMBackupDir : IDispatch
		{
			public const new Guid IID = .(0xb1568bed, 0x0a93, 0x4acc, 0x81, 0x0f, 0xaf, 0xe7, 0x08, 0x10, 0x19, 0xb9);
			
			public function HRESULT(IGPMBackupDir *self, BSTR* pVal) get_BackupDirectory;
			public function HRESULT(IGPMBackupDir *self, BSTR bstrID, IGPMBackup** ppBackup) GetBackup;
			public function HRESULT(IGPMBackupDir *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMBackupCollection** ppIGPMBackupCollection) SearchBackups;
		}
		[CRepr]
		public struct IGPMSitesContainer : IDispatch
		{
			public const new Guid IID = .(0x4725a899, 0x2782, 0x4d27, 0xa6, 0xbb, 0xd4, 0x99, 0x24, 0x6f, 0xfd, 0x72);
			
			public function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_DomainController;
			public function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_Domain;
			public function HRESULT(IGPMSitesContainer *self, BSTR* pVal) get_Forest;
			public function HRESULT(IGPMSitesContainer *self, BSTR bstrSiteName, IGPMSOM** ppSOM) GetSite;
			public function HRESULT(IGPMSitesContainer *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMSOMCollection** ppIGPMSOMCollection) SearchSites;
		}
		[CRepr]
		public struct IGPMSearchCriteria : IDispatch
		{
			public const new Guid IID = .(0xd6f11c42, 0x829b, 0x48d4, 0x83, 0xf5, 0x36, 0x15, 0xb6, 0x7d, 0xfc, 0x22);
			
			public function HRESULT(IGPMSearchCriteria *self, GPMSearchProperty searchProperty, GPMSearchOperation searchOperation, VARIANT varValue) Add;
		}
		[CRepr]
		public struct IGPMTrustee : IDispatch
		{
			public const new Guid IID = .(0x3b466da8, 0xc1a4, 0x4b2a, 0x99, 0x9a, 0xbe, 0xfc, 0xdd, 0x56, 0xce, 0xfb);
			
			public function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeSid;
			public function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeName;
			public function HRESULT(IGPMTrustee *self, BSTR* bstrVal) get_TrusteeDomain;
			public function HRESULT(IGPMTrustee *self, BSTR* pVal) get_TrusteeDSPath;
			public function HRESULT(IGPMTrustee *self, int32* lVal) get_TrusteeType;
		}
		[CRepr]
		public struct IGPMPermission : IDispatch
		{
			public const new Guid IID = .(0x35ebca40, 0xe1a1, 0x4a02, 0x89, 0x05, 0xd7, 0x94, 0x16, 0xfb, 0x46, 0x4a);
			
			public function HRESULT(IGPMPermission *self, int16* pVal) get_Inherited;
			public function HRESULT(IGPMPermission *self, int16* pVal) get_Inheritable;
			public function HRESULT(IGPMPermission *self, int16* pVal) get_Denied;
			public function HRESULT(IGPMPermission *self, GPMPermissionType* pVal) get_Permission;
			public function HRESULT(IGPMPermission *self, IGPMTrustee** ppIGPMTrustee) get_Trustee;
		}
		[CRepr]
		public struct IGPMSecurityInfo : IDispatch
		{
			public const new Guid IID = .(0xb6c31ed4, 0x1c93, 0x4d3e, 0xae, 0x84, 0xeb, 0x6d, 0x61, 0x16, 0x1b, 0x60);
			
			public function HRESULT(IGPMSecurityInfo *self, int32* pVal) get_Count;
			public function HRESULT(IGPMSecurityInfo *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMSecurityInfo *self, IEnumVARIANT** ppEnum) get__NewEnum;
			public function HRESULT(IGPMSecurityInfo *self, IGPMPermission* pPerm) Add;
			public function HRESULT(IGPMSecurityInfo *self, IGPMPermission* pPerm) Remove;
			public function HRESULT(IGPMSecurityInfo *self, BSTR bstrTrustee) RemoveTrustee;
		}
		[CRepr]
		public struct IGPMBackup : IDispatch
		{
			public const new Guid IID = .(0xd8a16a35, 0x3b0d, 0x416b, 0x8d, 0x02, 0x4d, 0xf6, 0xf9, 0x5a, 0x71, 0x19);
			
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_ID;
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPOID;
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPODomain;
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_GPODisplayName;
			public function HRESULT(IGPMBackup *self, double* pVal) get_Timestamp;
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_Comment;
			public function HRESULT(IGPMBackup *self, BSTR* pVal) get_BackupDir;
			public function HRESULT(IGPMBackup *self) Delete;
			public function HRESULT(IGPMBackup *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMBackup *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
		}
		[CRepr]
		public struct IGPMBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc786fc0f, 0x26d8, 0x4bab, 0xa7, 0x45, 0x39, 0xca, 0x7e, 0x80, 0x0c, 0xac);
			
			public function HRESULT(IGPMBackupCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMBackupCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMBackupCollection *self, IEnumVARIANT** ppIGPMBackup) get__NewEnum;
		}
		[CRepr]
		public struct IGPMSOM : IDispatch
		{
			public const new Guid IID = .(0xc0a7f09e, 0x05a1, 0x4f0c, 0x81, 0x58, 0x9e, 0x5c, 0x33, 0x68, 0x4f, 0x6b);
			
			public function HRESULT(IGPMSOM *self, int16* pVal) get_GPOInheritanceBlocked;
			public function HRESULT(IGPMSOM *self, int16 newVal) put_GPOInheritanceBlocked;
			public function HRESULT(IGPMSOM *self, BSTR* pVal) get_Name;
			public function HRESULT(IGPMSOM *self, BSTR* pVal) get_Path;
			public function HRESULT(IGPMSOM *self, int32 lLinkPos, IGPMGPO* pGPO, IGPMGPOLink** ppNewGPOLink) CreateGPOLink;
			public function HRESULT(IGPMSOM *self, GPMSOMType* pVal) get_Type;
			public function HRESULT(IGPMSOM *self, IGPMGPOLinksCollection** ppGPOLinks) GetGPOLinks;
			public function HRESULT(IGPMSOM *self, IGPMGPOLinksCollection** ppGPOLinks) GetInheritedGPOLinks;
			public function HRESULT(IGPMSOM *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
			public function HRESULT(IGPMSOM *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
		}
		[CRepr]
		public struct IGPMSOMCollection : IDispatch
		{
			public const new Guid IID = .(0xadc1688e, 0x00e4, 0x4495, 0xab, 0xba, 0xbe, 0xd2, 0x00, 0xdf, 0x0c, 0xab);
			
			public function HRESULT(IGPMSOMCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMSOMCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMSOMCollection *self, IEnumVARIANT** ppIGPMSOM) get__NewEnum;
		}
		[CRepr]
		public struct IGPMWMIFilter : IDispatch
		{
			public const new Guid IID = .(0xef2ff9b4, 0x3c27, 0x459a, 0xb9, 0x79, 0x03, 0x83, 0x05, 0xce, 0xc7, 0x5d);
			
			public function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Path;
			public function HRESULT(IGPMWMIFilter *self, BSTR newVal) put_Name;
			public function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Name;
			public function HRESULT(IGPMWMIFilter *self, BSTR newVal) put_Description;
			public function HRESULT(IGPMWMIFilter *self, BSTR* pVal) get_Description;
			public function HRESULT(IGPMWMIFilter *self, VARIANT* pQryList) GetQueryList;
			public function HRESULT(IGPMWMIFilter *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
			public function HRESULT(IGPMWMIFilter *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
		}
		[CRepr]
		public struct IGPMWMIFilterCollection : IDispatch
		{
			public const new Guid IID = .(0x5782d582, 0x1a36, 0x4661, 0x8a, 0x94, 0xc3, 0xc3, 0x25, 0x51, 0x94, 0x5b);
			
			public function HRESULT(IGPMWMIFilterCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMWMIFilterCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMWMIFilterCollection *self, IEnumVARIANT** pVal) get__NewEnum;
		}
		[CRepr]
		public struct IGPMRSOP : IDispatch
		{
			public const new Guid IID = .(0x49ed785a, 0x3237, 0x4ff2, 0xb1, 0xf0, 0xfd, 0xf5, 0xa8, 0xd5, 0xa1, 0xee);
			
			public function HRESULT(IGPMRSOP *self, GPMRSOPMode* pVal) get_Mode;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_Namespace;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_LoggingComputer;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_LoggingComputer;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_LoggingUser;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_LoggingUser;
			public function HRESULT(IGPMRSOP *self, int32 lVal) put_LoggingFlags;
			public function HRESULT(IGPMRSOP *self, int32* lVal) get_LoggingFlags;
			public function HRESULT(IGPMRSOP *self, int32 lVal) put_PlanningFlags;
			public function HRESULT(IGPMRSOP *self, int32* lVal) get_PlanningFlags;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningDomainController;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningDomainController;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningSiteName;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningSiteName;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningUser;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningUser;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningUserSOM;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningUserSOM;
			public function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningUserWMIFilters;
			public function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningUserWMIFilters;
			public function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningUserSecurityGroups;
			public function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningUserSecurityGroups;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningComputer;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningComputer;
			public function HRESULT(IGPMRSOP *self, BSTR bstrVal) put_PlanningComputerSOM;
			public function HRESULT(IGPMRSOP *self, BSTR* bstrVal) get_PlanningComputerSOM;
			public function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningComputerWMIFilters;
			public function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningComputerWMIFilters;
			public function HRESULT(IGPMRSOP *self, VARIANT varVal) put_PlanningComputerSecurityGroups;
			public function HRESULT(IGPMRSOP *self, VARIANT* varVal) get_PlanningComputerSecurityGroups;
			public function HRESULT(IGPMRSOP *self, VARIANT* varVal) LoggingEnumerateUsers;
			public function HRESULT(IGPMRSOP *self) CreateQueryResults;
			public function HRESULT(IGPMRSOP *self) ReleaseQueryResults;
			public function HRESULT(IGPMRSOP *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMRSOP *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
		}
		[CRepr]
		public struct IGPMGPO : IDispatch
		{
			public const new Guid IID = .(0x58cc4352, 0x1ca3, 0x48e5, 0x98, 0x64, 0x1d, 0xa4, 0xd6, 0xe0, 0xd6, 0x0f);
			
			public function HRESULT(IGPMGPO *self, BSTR* pVal) get_DisplayName;
			public function HRESULT(IGPMGPO *self, BSTR newVal) put_DisplayName;
			public function HRESULT(IGPMGPO *self, BSTR* pVal) get_Path;
			public function HRESULT(IGPMGPO *self, BSTR* pVal) get_ID;
			public function HRESULT(IGPMGPO *self, BSTR* pVal) get_DomainName;
			public function HRESULT(IGPMGPO *self, double* pDate) get_CreationTime;
			public function HRESULT(IGPMGPO *self, double* pDate) get_ModificationTime;
			public function HRESULT(IGPMGPO *self, int32* pVal) get_UserDSVersionNumber;
			public function HRESULT(IGPMGPO *self, int32* pVal) get_ComputerDSVersionNumber;
			public function HRESULT(IGPMGPO *self, int32* pVal) get_UserSysvolVersionNumber;
			public function HRESULT(IGPMGPO *self, int32* pVal) get_ComputerSysvolVersionNumber;
			public function HRESULT(IGPMGPO *self, IGPMWMIFilter** ppIGPMWMIFilter) GetWMIFilter;
			public function HRESULT(IGPMGPO *self, IGPMWMIFilter* pIGPMWMIFilter) SetWMIFilter;
			public function HRESULT(IGPMGPO *self, int16 vbEnabled) SetUserEnabled;
			public function HRESULT(IGPMGPO *self, int16 vbEnabled) SetComputerEnabled;
			public function HRESULT(IGPMGPO *self, int16* pvbEnabled) IsUserEnabled;
			public function HRESULT(IGPMGPO *self, int16* pvbEnabled) IsComputerEnabled;
			public function HRESULT(IGPMGPO *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
			public function HRESULT(IGPMGPO *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
			public function HRESULT(IGPMGPO *self) Delete;
			public function HRESULT(IGPMGPO *self, BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Backup;
			public function HRESULT(IGPMGPO *self, int32 lFlags, IGPMBackup* pIGPMBackup, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Import;
			public function HRESULT(IGPMGPO *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMGPO *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
			public function HRESULT(IGPMGPO *self, int32 lFlags, IGPMDomain* pIGPMDomain, VARIANT* pvarNewDisplayName, VARIANT* pvarMigrationTable, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) CopyTo;
			public function HRESULT(IGPMGPO *self, int32 lFlags, IDispatch* pSD) SetSecurityDescriptor;
			public function HRESULT(IGPMGPO *self, int32 lFlags, IDispatch** ppSD) GetSecurityDescriptor;
			public function HRESULT(IGPMGPO *self, int16* pvbConsistent) IsACLConsistent;
			public function HRESULT(IGPMGPO *self) MakeACLConsistent;
		}
		[CRepr]
		public struct IGPMGPOCollection : IDispatch
		{
			public const new Guid IID = .(0xf0f0d5cf, 0x70ca, 0x4c39, 0x9e, 0x29, 0xb6, 0x42, 0xf8, 0x72, 0x6c, 0x01);
			
			public function HRESULT(IGPMGPOCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMGPOCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMGPOCollection *self, IEnumVARIANT** ppIGPMGPOs) get__NewEnum;
		}
		[CRepr]
		public struct IGPMGPOLink : IDispatch
		{
			public const new Guid IID = .(0x434b99bd, 0x5de7, 0x478a, 0x80, 0x9c, 0xc2, 0x51, 0x72, 0x1d, 0xf7, 0x0c);
			
			public function HRESULT(IGPMGPOLink *self, BSTR* pVal) get_GPOID;
			public function HRESULT(IGPMGPOLink *self, BSTR* pVal) get_GPODomain;
			public function HRESULT(IGPMGPOLink *self, int16* pVal) get_Enabled;
			public function HRESULT(IGPMGPOLink *self, int16 newVal) put_Enabled;
			public function HRESULT(IGPMGPOLink *self, int16* pVal) get_Enforced;
			public function HRESULT(IGPMGPOLink *self, int16 newVal) put_Enforced;
			public function HRESULT(IGPMGPOLink *self, int32* lVal) get_SOMLinkOrder;
			public function HRESULT(IGPMGPOLink *self, IGPMSOM** ppIGPMSOM) get_SOM;
			public function HRESULT(IGPMGPOLink *self) Delete;
		}
		[CRepr]
		public struct IGPMGPOLinksCollection : IDispatch
		{
			public const new Guid IID = .(0x189d7b68, 0x16bd, 0x4d0d, 0xa2, 0xec, 0x2e, 0x6a, 0xa2, 0x28, 0x8c, 0x7f);
			
			public function HRESULT(IGPMGPOLinksCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMGPOLinksCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMGPOLinksCollection *self, IEnumVARIANT** ppIGPMLinks) get__NewEnum;
		}
		[CRepr]
		public struct IGPMCSECollection : IDispatch
		{
			public const new Guid IID = .(0x2e52a97d, 0x0a4a, 0x4a6f, 0x85, 0xdb, 0x20, 0x16, 0x22, 0x45, 0x5d, 0xa0);
			
			public function HRESULT(IGPMCSECollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMCSECollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMCSECollection *self, IEnumVARIANT** ppIGPMCSEs) get__NewEnum;
		}
		[CRepr]
		public struct IGPMClientSideExtension : IDispatch
		{
			public const new Guid IID = .(0x69da7488, 0xb8db, 0x415e, 0x92, 0x66, 0x90, 0x1b, 0xe4, 0xd4, 0x99, 0x28);
			
			public function HRESULT(IGPMClientSideExtension *self, BSTR* pVal) get_ID;
			public function HRESULT(IGPMClientSideExtension *self, BSTR* pVal) get_DisplayName;
			public function HRESULT(IGPMClientSideExtension *self, int16* pvbEnabled) IsUserEnabled;
			public function HRESULT(IGPMClientSideExtension *self, int16* pvbEnabled) IsComputerEnabled;
		}
		[CRepr]
		public struct IGPMAsyncCancel : IDispatch
		{
			public const new Guid IID = .(0xddc67754, 0xbe67, 0x4541, 0x81, 0x66, 0xf4, 0x81, 0x66, 0x86, 0x8c, 0x9c);
			
			public function HRESULT(IGPMAsyncCancel *self) Cancel;
		}
		[CRepr]
		public struct IGPMAsyncProgress : IDispatch
		{
			public const new Guid IID = .(0x6aac29f8, 0x5948, 0x4324, 0xbf, 0x70, 0x42, 0x38, 0x18, 0x94, 0x2d, 0xbc);
			
			public function HRESULT(IGPMAsyncProgress *self, int32 lProgressNumerator, int32 lProgressDenominator, HRESULT hrStatus, VARIANT* pResult, IGPMStatusMsgCollection* ppIGPMStatusMsgCollection) Status;
		}
		[CRepr]
		public struct IGPMStatusMsgCollection : IDispatch
		{
			public const new Guid IID = .(0x9b6e1af0, 0x1a92, 0x40f3, 0xa5, 0x9d, 0xf3, 0x6a, 0xc1, 0xf7, 0x28, 0xb7);
			
			public function HRESULT(IGPMStatusMsgCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMStatusMsgCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMStatusMsgCollection *self, IEnumVARIANT** pVal) get__NewEnum;
		}
		[CRepr]
		public struct IGPMStatusMessage : IDispatch
		{
			public const new Guid IID = .(0x8496c22f, 0xf3de, 0x4a1f, 0x8f, 0x58, 0x60, 0x3c, 0xaa, 0xa9, 0x3d, 0x7b);
			
			public function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_ObjectPath;
			public function HRESULT(IGPMStatusMessage *self) ErrorCode;
			public function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_ExtensionName;
			public function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_SettingsName;
			public function HRESULT(IGPMStatusMessage *self) OperationCode;
			public function HRESULT(IGPMStatusMessage *self, BSTR* pVal) get_Message;
		}
		[CRepr]
		public struct IGPMConstants : IDispatch
		{
			public const new Guid IID = .(0x50ef73e6, 0xd35c, 0x4c8d, 0xbe, 0x63, 0x7e, 0xa5, 0xd2, 0xaa, 0xc5, 0xc4);
			
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOApply;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPORead;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOEdit;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOEditSecurityAndDelete;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermGPOCustom;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterEdit;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterFullControl;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermWMIFilterCustom;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMLink;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMLogging;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMPlanning;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMGPOCreate;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMWMICreate;
			public function HRESULT(IGPMConstants *self, GPMPermissionType* pVal) get_PermSOMWMIFullControl;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOPermissions;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOEffectivePermissions;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPODisplayName;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOWMIFilter;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOID;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOComputerExtensions;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPOUserExtensions;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertySOMLinks;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyGPODomain;
			public function HRESULT(IGPMConstants *self, GPMSearchProperty* pVal) get_SearchPropertyBackupMostRecent;
			public function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpEquals;
			public function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpContains;
			public function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpNotContains;
			public function HRESULT(IGPMConstants *self, GPMSearchOperation* pVal) get_SearchOpNotEquals;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_UsePDC;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_UseAnyDC;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_DoNotUseW2KDC;
			public function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMSite;
			public function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMDomain;
			public function HRESULT(IGPMConstants *self, GPMSOMType* pVal) get_SOMOU;
			public function HRESULT(IGPMConstants *self, int16 vbOwner, int16 vbGroup, int16 vbDACL, int16 vbSACL, int32* pVal) get_SecurityFlags;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_DoNotValidateDC;
			public function HRESULT(IGPMConstants *self, GPMReportType* pVal) get_ReportHTML;
			public function HRESULT(IGPMConstants *self, GPMReportType* pVal) get_ReportXML;
			public function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModeUnknown;
			public function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModePlanning;
			public function HRESULT(IGPMConstants *self, GPMRSOPMode* pVal) get_RSOPModeLogging;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUser;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeComputer;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeLocalGroup;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeGlobalGroup;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUniversalGroup;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUNCPath;
			public function HRESULT(IGPMConstants *self, GPMEntryType* pVal) get_EntryTypeUnknown;
			public function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionSameAsSource;
			public function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionNone;
			public function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionByRelativeName;
			public function HRESULT(IGPMConstants *self, GPMDestinationOption* pVal) get_DestinationOptionSet;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_MigrationTableOnly;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_ProcessSecurity;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_RsopLoggingNoComputer;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_RsopLoggingNoUser;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeSlowLink;
			public function HRESULT(IGPMConstants *self, int16 vbMerge, int32* pVal) get_RsopPlanningLoopbackOption;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeUserWQLFilterTrue;
			public function HRESULT(IGPMConstants *self, int32* pVal) get_RsopPlanningAssumeCompWQLFilterTrue;
		}
		[CRepr]
		public struct IGPMResult : IDispatch
		{
			public const new Guid IID = .(0x86dff7e9, 0xf76f, 0x42ab, 0x95, 0x70, 0xce, 0xbc, 0x6b, 0xe8, 0xa5, 0x2d);
			
			public function HRESULT(IGPMResult *self, IGPMStatusMsgCollection** ppIGPMStatusMsgCollection) get_Status;
			public function HRESULT(IGPMResult *self, VARIANT* pvarResult) get_Result;
			public function HRESULT(IGPMResult *self) OverallStatus;
		}
		[CRepr]
		public struct IGPMMapEntryCollection : IDispatch
		{
			public const new Guid IID = .(0xbb0bf49b, 0xe53f, 0x443f, 0xb8, 0x07, 0x8b, 0xe2, 0x2b, 0xfb, 0x6d, 0x42);
			
			public function HRESULT(IGPMMapEntryCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMMapEntryCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMMapEntryCollection *self, IEnumVARIANT** pVal) get__NewEnum;
		}
		[CRepr]
		public struct IGPMMapEntry : IDispatch
		{
			public const new Guid IID = .(0x8e79ad06, 0x2381, 0x4444, 0xbe, 0x4c, 0xff, 0x69, 0x3e, 0x6e, 0x6f, 0x2b);
			
			public function HRESULT(IGPMMapEntry *self, BSTR* pbstrSource) get_Source;
			public function HRESULT(IGPMMapEntry *self, BSTR* pbstrDestination) get_Destination;
			public function HRESULT(IGPMMapEntry *self, GPMDestinationOption* pgpmDestOption) get_DestinationOption;
			public function HRESULT(IGPMMapEntry *self, GPMEntryType* pgpmEntryType) get_EntryType;
		}
		[CRepr]
		public struct IGPMMigrationTable : IDispatch
		{
			public const new Guid IID = .(0x48f823b1, 0xefaf, 0x470b, 0xb6, 0xed, 0x40, 0xd1, 0x4e, 0xe1, 0xa4, 0xec);
			
			public function HRESULT(IGPMMigrationTable *self, BSTR bstrMigrationTablePath) Save;
			public function HRESULT(IGPMMigrationTable *self, int32 lFlags, VARIANT @var) Add;
			public function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, GPMEntryType gpmEntryType, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) AddEntry;
			public function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, IGPMMapEntry** ppEntry) GetEntry;
			public function HRESULT(IGPMMigrationTable *self, BSTR bstrSource) DeleteEntry;
			public function HRESULT(IGPMMigrationTable *self, BSTR bstrSource, VARIANT* pvarDestination, IGPMMapEntry** ppEntry) UpdateDestination;
			public function HRESULT(IGPMMigrationTable *self, IGPMResult** ppResult) Validate;
			public function HRESULT(IGPMMigrationTable *self, IGPMMapEntryCollection** ppEntries) GetEntries;
		}
		[CRepr]
		public struct IGPMBackupDirEx : IDispatch
		{
			public const new Guid IID = .(0xf8dc55ed, 0x3ba0, 0x4864, 0xaa, 0xd4, 0xd3, 0x65, 0x18, 0x9e, 0xe1, 0xd5);
			
			public function HRESULT(IGPMBackupDirEx *self, BSTR* pbstrBackupDir) get_BackupDir;
			public function HRESULT(IGPMBackupDirEx *self, GPMBackupType* pgpmBackupType) get_BackupType;
			public function HRESULT(IGPMBackupDirEx *self, BSTR bstrID, VARIANT* pvarBackup) GetBackup;
			public function HRESULT(IGPMBackupDirEx *self, IGPMSearchCriteria* pIGPMSearchCriteria, VARIANT* pvarBackupCollection) SearchBackups;
		}
		[CRepr]
		public struct IGPMStarterGPOBackupCollection : IDispatch
		{
			public const new Guid IID = .(0xc998031d, 0xadd0, 0x4bb5, 0x8d, 0xea, 0x29, 0x85, 0x05, 0xd8, 0x42, 0x3b);
			
			public function HRESULT(IGPMStarterGPOBackupCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMStarterGPOBackupCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMStarterGPOBackupCollection *self, IEnumVARIANT** ppIGPMTmplBackup) get__NewEnum;
		}
		[CRepr]
		public struct IGPMStarterGPOBackup : IDispatch
		{
			public const new Guid IID = .(0x51d98eda, 0xa87e, 0x43dd, 0xb8, 0x0a, 0x0b, 0x66, 0xef, 0x19, 0x38, 0xd6);
			
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrBackupDir) get_BackupDir;
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrComment) get_Comment;
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrDisplayName) get_DisplayName;
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrTemplateDomain) get_Domain;
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrTemplateID) get_StarterGPOID;
			public function HRESULT(IGPMStarterGPOBackup *self, BSTR* pbstrID) get_ID;
			public function HRESULT(IGPMStarterGPOBackup *self, double* pTimestamp) get_Timestamp;
			public function HRESULT(IGPMStarterGPOBackup *self, GPMStarterGPOType* pType) get_Type;
			public function HRESULT(IGPMStarterGPOBackup *self) Delete;
			public function HRESULT(IGPMStarterGPOBackup *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMStarterGPOBackup *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
		}
		[CRepr]
		public struct IGPM2 : IGPM
		{
			public const new Guid IID = .(0x00238f8a, 0x3d86, 0x41ac, 0x8f, 0x5e, 0x06, 0xa6, 0x63, 0x8a, 0x63, 0x4a);
			
			public function HRESULT(IGPM2 *self, BSTR bstrBackupDir, GPMBackupType backupDirType, IGPMBackupDirEx** ppIGPMBackupDirEx) GetBackupDirEx;
			public function HRESULT(IGPM2 *self, BSTR bstrAdmPath, int32 reportingOptions) InitializeReportingEx;
		}
		[CRepr]
		public struct IGPMStarterGPO : IDispatch
		{
			public const new Guid IID = .(0xdfc3f61b, 0x8880, 0x4490, 0x93, 0x37, 0xd2, 0x9c, 0x7b, 0xa8, 0xc2, 0xf0);
			
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_DisplayName;
			public function HRESULT(IGPMStarterGPO *self, BSTR newVal) put_DisplayName;
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Description;
			public function HRESULT(IGPMStarterGPO *self, BSTR newVal) put_Description;
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Author;
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_Product;
			public function HRESULT(IGPMStarterGPO *self, double* pVal) get_CreationTime;
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_ID;
			public function HRESULT(IGPMStarterGPO *self, double* pVal) get_ModifiedTime;
			public function HRESULT(IGPMStarterGPO *self, GPMStarterGPOType* pVal) get_Type;
			public function HRESULT(IGPMStarterGPO *self, uint16* pVal) get_ComputerVersion;
			public function HRESULT(IGPMStarterGPO *self, uint16* pVal) get_UserVersion;
			public function HRESULT(IGPMStarterGPO *self, BSTR* pVal) get_StarterGPOVersion;
			public function HRESULT(IGPMStarterGPO *self) Delete;
			public function HRESULT(IGPMStarterGPO *self, BSTR bstrSaveFile, int16 bOverwrite, int16 bSaveAsSystem, VARIANT* bstrLanguage, VARIANT* bstrAuthor, VARIANT* bstrProduct, VARIANT* bstrUniqueID, VARIANT* bstrVersion, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Save;
			public function HRESULT(IGPMStarterGPO *self, BSTR bstrBackupDir, BSTR bstrComment, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) Backup;
			public function HRESULT(IGPMStarterGPO *self, VARIANT* pvarNewDisplayName, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) CopyTo;
			public function HRESULT(IGPMStarterGPO *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMStarterGPO *self, GPMReportType gpmReportType, BSTR bstrTargetFilePath, IGPMResult** ppIGPMResult) GenerateReportToFile;
			public function HRESULT(IGPMStarterGPO *self, IGPMSecurityInfo** ppSecurityInfo) GetSecurityInfo;
			public function HRESULT(IGPMStarterGPO *self, IGPMSecurityInfo* pSecurityInfo) SetSecurityInfo;
		}
		[CRepr]
		public struct IGPMStarterGPOCollection : IDispatch
		{
			public const new Guid IID = .(0x2e522729, 0x2219, 0x44ad, 0x93, 0x3a, 0x64, 0xdf, 0xd6, 0x50, 0xc4, 0x23);
			
			public function HRESULT(IGPMStarterGPOCollection *self, int32* pVal) get_Count;
			public function HRESULT(IGPMStarterGPOCollection *self, int32 lIndex, VARIANT* pVal) get_Item;
			public function HRESULT(IGPMStarterGPOCollection *self, IEnumVARIANT** ppIGPMTemplates) get__NewEnum;
		}
		[CRepr]
		public struct IGPMDomain2 : IGPMDomain
		{
			public const new Guid IID = .(0x7ca6bb8b, 0xf1eb, 0x490a, 0x93, 0x8d, 0x3c, 0x4e, 0x51, 0xc7, 0x68, 0xe6);
			
			public function HRESULT(IGPMDomain2 *self, IGPMStarterGPO** ppnewTemplate) CreateStarterGPO;
			public function HRESULT(IGPMDomain2 *self, IGPMStarterGPO* pGPOTemplate, IGPMGPO** ppnewGPO) CreateGPOFromStarterGPO;
			public function HRESULT(IGPMDomain2 *self, BSTR bstrGuid, IGPMStarterGPO** ppTemplate) GetStarterGPO;
			public function HRESULT(IGPMDomain2 *self, IGPMSearchCriteria* pIGPMSearchCriteria, IGPMStarterGPOCollection** ppIGPMTemplateCollection) SearchStarterGPOs;
			public function HRESULT(IGPMDomain2 *self, BSTR bstrLoadFile, int16 bOverwrite, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) LoadStarterGPO;
			public function HRESULT(IGPMDomain2 *self, IGPMStarterGPOBackup* pIGPMTmplBackup, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) RestoreStarterGPO;
		}
		[CRepr]
		public struct IGPMConstants2 : IGPMConstants
		{
			public const new Guid IID = .(0x05ae21b0, 0xac09, 0x4032, 0xa2, 0x6f, 0x9e, 0x7d, 0xa7, 0x86, 0xdc, 0x19);
			
			public function HRESULT(IGPMConstants2 *self, GPMBackupType* pVal) get_BackupTypeGPO;
			public function HRESULT(IGPMConstants2 *self, GPMBackupType* pVal) get_BackupTypeStarterGPO;
			public function HRESULT(IGPMConstants2 *self, GPMStarterGPOType* pVal) get_StarterGPOTypeSystem;
			public function HRESULT(IGPMConstants2 *self, GPMStarterGPOType* pVal) get_StarterGPOTypeCustom;
			public function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOPermissions;
			public function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOEffectivePermissions;
			public function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPODisplayName;
			public function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPOID;
			public function HRESULT(IGPMConstants2 *self, GPMSearchProperty* pVal) get_SearchPropertyStarterGPODomain;
			public function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPORead;
			public function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOEdit;
			public function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOFullControl;
			public function HRESULT(IGPMConstants2 *self, GPMPermissionType* pVal) get_PermStarterGPOCustom;
			public function HRESULT(IGPMConstants2 *self, GPMReportingOptions* pVal) get_ReportLegacy;
			public function HRESULT(IGPMConstants2 *self, GPMReportingOptions* pVal) get_ReportComments;
		}
		[CRepr]
		public struct IGPMGPO2 : IGPMGPO
		{
			public const new Guid IID = .(0x8a66a210, 0xb78b, 0x4d99, 0x88, 0xe2, 0xc3, 0x06, 0xa8, 0x17, 0xc9, 0x25);
			
			public function HRESULT(IGPMGPO2 *self, BSTR* pVal) get_Description;
			public function HRESULT(IGPMGPO2 *self, BSTR newVal) put_Description;
		}
		[CRepr]
		public struct IGPMDomain3 : IGPMDomain2
		{
			public const new Guid IID = .(0x0077fdfe, 0x88c7, 0x4acf, 0xa1, 0x1d, 0xd1, 0x0a, 0x7c, 0x31, 0x0a, 0x03);
			
			public function HRESULT(IGPMDomain3 *self, GPMReportType gpmReportType, VARIANT* pvarGPMProgress, VARIANT* pvarGPMCancel, IGPMResult** ppIGPMResult) GenerateReport;
			public function HRESULT(IGPMDomain3 *self, BSTR* pVal) get_InfrastructureDC;
			public function HRESULT(IGPMDomain3 *self, BSTR newVal) put_InfrastructureDC;
			public function HRESULT(IGPMDomain3 *self, uint32 dwFlags) put_InfrastructureFlags;
		}
		[CRepr]
		public struct IGPMGPO3 : IGPMGPO2
		{
			public const new Guid IID = .(0x7cf123a1, 0xf94a, 0x4112, 0xbf, 0xae, 0x6a, 0xa1, 0xdb, 0x9c, 0xb2, 0x48);
			
			public function HRESULT(IGPMGPO3 *self, BSTR* pVal) get_InfrastructureDC;
			public function HRESULT(IGPMGPO3 *self, BSTR newVal) put_InfrastructureDC;
			public function HRESULT(IGPMGPO3 *self, uint32 dwFlags) put_InfrastructureFlags;
		}
		[CRepr]
		public struct IGPEInformation : IUnknown
		{
			public const new Guid IID = .(0x8fc0b735, 0xa0e1, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public function HRESULT(IGPEInformation *self, char16* pszName, int32 cchMaxLength) GetName;
			public function HRESULT(IGPEInformation *self, char16* pszName, int32 cchMaxLength) GetDisplayName;
			public function HRESULT(IGPEInformation *self, uint32 dwSection, HKEY* hKey) GetRegistryKey;
			public function HRESULT(IGPEInformation *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
			public function HRESULT(IGPEInformation *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
			public function HRESULT(IGPEInformation *self, uint32* dwOptions) GetOptions;
			public function HRESULT(IGPEInformation *self, GROUP_POLICY_OBJECT_TYPE* gpoType) GetType;
			public function HRESULT(IGPEInformation *self, GROUP_POLICY_HINT_TYPE* gpHint) GetHint;
			public function HRESULT(IGPEInformation *self, BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuidSnapin) PolicyChanged;
		}
		[CRepr]
		public struct IGroupPolicyObject : IUnknown
		{
			public const new Guid IID = .(0xea502723, 0xa23d, 0x11d1, 0xa7, 0xd3, 0x00, 0x00, 0xf8, 0x75, 0x71, 0xe3);
			
			public function HRESULT(IGroupPolicyObject *self, PWSTR pszDomainName, PWSTR pszDisplayName, uint32 dwFlags) New;
			public function HRESULT(IGroupPolicyObject *self, PWSTR pszPath, uint32 dwFlags) OpenDSGPO;
			public function HRESULT(IGroupPolicyObject *self, uint32 dwFlags) OpenLocalMachineGPO;
			public function HRESULT(IGroupPolicyObject *self, PWSTR pszComputerName, uint32 dwFlags) OpenRemoteMachineGPO;
			public function HRESULT(IGroupPolicyObject *self, BOOL bMachine, BOOL bAdd, Guid* pGuidExtension, Guid* pGuid) Save;
			public function HRESULT(IGroupPolicyObject *self) Delete;
			public function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetName;
			public function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetDisplayName;
			public function HRESULT(IGroupPolicyObject *self, PWSTR pszName) SetDisplayName;
			public function HRESULT(IGroupPolicyObject *self, char16* pszPath, int32 cchMaxLength) GetPath;
			public function HRESULT(IGroupPolicyObject *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetDSPath;
			public function HRESULT(IGroupPolicyObject *self, uint32 dwSection, char16* pszPath, int32 cchMaxPath) GetFileSysPath;
			public function HRESULT(IGroupPolicyObject *self, uint32 dwSection, HKEY* hKey) GetRegistryKey;
			public function HRESULT(IGroupPolicyObject *self, uint32* dwOptions) GetOptions;
			public function HRESULT(IGroupPolicyObject *self, uint32 dwOptions, uint32 dwMask) SetOptions;
			public function HRESULT(IGroupPolicyObject *self, GROUP_POLICY_OBJECT_TYPE* gpoType) GetType;
			public function HRESULT(IGroupPolicyObject *self, char16* pszName, int32 cchMaxLength) GetMachineName;
			public function HRESULT(IGroupPolicyObject *self, HPROPSHEETPAGE** hPages, uint32* uPageCount) GetPropertySheetPages;
		}
		[CRepr]
		public struct IRSOPInformation : IUnknown
		{
			public const new Guid IID = .(0x9a5a81b5, 0xd9c7, 0x49ef, 0x9d, 0x11, 0xdd, 0xf5, 0x09, 0x68, 0xc4, 0x8d);
			
			public function HRESULT(IRSOPInformation *self, uint32 dwSection, char16* pszName, int32 cchMaxLength) GetNamespace;
			public function HRESULT(IRSOPInformation *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(IRSOPInformation *self, PWSTR pszEventSource, PWSTR pszEventLogName, PWSTR pszEventTime, uint32 dwEventID, PWSTR* ppszText) GetEventLogEntryText;
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
