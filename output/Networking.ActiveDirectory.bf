using System;

// namespace Networking.ActiveDirectory
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WM_ADSPROP_NOTIFY_PAGEINIT = 2125;
		public const uint32 WM_ADSPROP_NOTIFY_PAGEHWND = 2126;
		public const uint32 WM_ADSPROP_NOTIFY_CHANGE = 2127;
		public const uint32 WM_ADSPROP_NOTIFY_APPLY = 2128;
		public const uint32 WM_ADSPROP_NOTIFY_SETFOCUS = 2129;
		public const uint32 WM_ADSPROP_NOTIFY_FOREGROUND = 2130;
		public const uint32 WM_ADSPROP_NOTIFY_EXIT = 2131;
		public const uint32 WM_ADSPROP_NOTIFY_ERROR = 2134;
		public const Guid CLSID_CommonQuery = .(0x83bc5ec0, 0x6f2a, 0x11d0, 0xa1, 0xc4, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const uint64 QUERYFORM_CHANGESFORMLIST = 1uL;
		public const uint64 QUERYFORM_CHANGESOPTFORMLIST = 2uL;
		public const uint32 CQFF_NOGLOBALPAGES = 1;
		public const uint32 CQFF_ISOPTIONAL = 2;
		public const uint32 CQPM_INITIALIZE = 1;
		public const uint32 CQPM_RELEASE = 2;
		public const uint32 CQPM_ENABLE = 3;
		public const uint32 CQPM_GETPARAMETERS = 5;
		public const uint32 CQPM_CLEARFORM = 6;
		public const uint32 CQPM_PERSIST = 7;
		public const uint32 CQPM_HELP = 8;
		public const uint32 CQPM_SETDEFAULTPARAMETERS = 9;
		public const uint32 CQPM_HANDLERSPECIFIC = 268435456;
		public const uint32 OQWF_OKCANCEL = 1;
		public const uint32 OQWF_DEFAULTFORM = 2;
		public const uint32 OQWF_SINGLESELECT = 4;
		public const uint32 OQWF_LOADQUERY = 8;
		public const uint32 OQWF_REMOVESCOPES = 16;
		public const uint32 OQWF_REMOVEFORMS = 32;
		public const uint32 OQWF_ISSUEONOPEN = 64;
		public const uint32 OQWF_SHOWOPTIONAL = 128;
		public const uint32 OQWF_SAVEQUERYONOK = 512;
		public const uint32 OQWF_HIDEMENUS = 1024;
		public const uint32 OQWF_HIDESEARCHUI = 2048;
		public const uint32 OQWF_PARAMISPROPERTYBAG = 2147483648;
		public const Guid CLSID_DsAdminCreateObj = .(0xe301a009, 0xf901, 0x11d2, 0x82, 0xb9, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
		public const uint32 DSA_NEWOBJ_CTX_PRECOMMIT = 1;
		public const uint32 DSA_NEWOBJ_CTX_COMMIT = 2;
		public const uint32 DSA_NEWOBJ_CTX_POSTCOMMIT = 3;
		public const uint32 DSA_NEWOBJ_CTX_CLEANUP = 4;
		public const uint32 DSA_NOTIFY_DEL = 1;
		public const uint32 DSA_NOTIFY_REN = 2;
		public const uint32 DSA_NOTIFY_MOV = 4;
		public const uint32 DSA_NOTIFY_PROP = 8;
		public const uint32 DSA_NOTIFY_FLAG_ADDITIONAL_DATA = 2;
		public const uint32 DSA_NOTIFY_FLAG_FORCE_ADDITIONAL_DATA = 1;
		public const Guid CLSID_MicrosoftDS = .(0xfe1290f0, 0xcfbd, 0x11cf, 0xa3, 0x30, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsPropertyPages = .(0x0d45d530, 0x764b, 0x11d0, 0xa1, 0xca, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsDomainTreeBrowser = .(0x1698790a, 0xe2b4, 0x11d0, 0xb0, 0xb1, 0x00, 0xc0, 0x4f, 0xd8, 0xdc, 0xa6);
		public const Guid CLSID_DsDisplaySpecifier = .(0x1ab4a8c0, 0x6a0b, 0x11d2, 0xad, 0x49, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
		public const Guid CLSID_DsFolderProperties = .(0x9e51e0d0, 0x6e0f, 0x11d2, 0x96, 0x01, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
		public const uint32 DSOBJECT_ISCONTAINER = 1;
		public const uint32 DSOBJECT_READONLYPAGES = 2147483648;
		public const uint32 DSPROVIDER_UNUSED_0 = 1;
		public const uint32 DSPROVIDER_UNUSED_1 = 2;
		public const uint32 DSPROVIDER_UNUSED_2 = 4;
		public const uint32 DSPROVIDER_UNUSED_3 = 8;
		public const uint32 DSPROVIDER_ADVANCED = 16;
		public const uint32 DSPROVIDER_AD_LDS = 32;
		public const uint32 DSDSOF_HASUSERANDSERVERINFO = 1;
		public const uint32 DSDSOF_SIMPLEAUTHENTICATE = 2;
		public const uint32 DSDSOF_DONTSIGNSEAL = 4;
		public const uint32 DSDSOF_DSAVAILABLE = 1073741824;
		public const uint32 DBDTF_RETURNFQDN = 1;
		public const uint32 DBDTF_RETURNMIXEDDOMAINS = 2;
		public const uint32 DBDTF_RETURNEXTERNAL = 4;
		public const uint32 DBDTF_RETURNINBOUND = 8;
		public const uint32 DBDTF_RETURNINOUTBOUND = 16;
		public const uint32 DSSSF_SIMPLEAUTHENTICATE = 1;
		public const uint32 DSSSF_DONTSIGNSEAL = 2;
		public const uint32 DSSSF_DSAVAILABLE = 2147483648;
		public const uint32 DSGIF_ISNORMAL = 0;
		public const uint32 DSGIF_ISOPEN = 1;
		public const uint32 DSGIF_ISDISABLED = 2;
		public const uint32 DSGIF_ISMASK = 15;
		public const uint32 DSGIF_GETDEFAULTICON = 16;
		public const uint32 DSGIF_DEFAULTISCONTAINER = 32;
		public const uint32 DSICCF_IGNORETREATASLEAF = 1;
		public const uint32 DSECAF_NOTLISTED = 1;
		public const uint32 DSCCIF_HASWIZARDDIALOG = 1;
		public const uint32 DSCCIF_HASWIZARDPRIMARYPAGE = 2;
		public const uint32 DSBI_NOBUTTONS = 1;
		public const uint32 DSBI_NOLINES = 2;
		public const uint32 DSBI_NOLINESATROOT = 4;
		public const uint32 DSBI_CHECKBOXES = 256;
		public const uint32 DSBI_NOROOT = 65536;
		public const uint32 DSBI_INCLUDEHIDDEN = 131072;
		public const uint32 DSBI_EXPANDONOPEN = 262144;
		public const uint32 DSBI_ENTIREDIRECTORY = 589824;
		public const uint32 DSBI_RETURN_FORMAT = 1048576;
		public const uint32 DSBI_HASCREDENTIALS = 2097152;
		public const uint32 DSBI_IGNORETREATASLEAF = 4194304;
		public const uint32 DSBI_SIMPLEAUTHENTICATE = 8388608;
		public const uint32 DSBI_RETURNOBJECTCLASS = 16777216;
		public const uint32 DSBI_DONTSIGNSEAL = 33554432;
		public const uint32 DSB_MAX_DISPLAYNAME_CHARS = 64;
		public const uint32 DSBF_STATE = 1;
		public const uint32 DSBF_ICONLOCATION = 2;
		public const uint32 DSBF_DISPLAYNAME = 4;
		public const uint32 DSBS_CHECKED = 1;
		public const uint32 DSBS_HIDDEN = 2;
		public const uint32 DSBS_ROOT = 4;
		public const uint32 DSBM_QUERYINSERTW = 100;
		public const uint32 DSBM_QUERYINSERTA = 101;
		public const uint32 DSBM_QUERYINSERT = 100;
		public const uint32 DSBM_CHANGEIMAGESTATE = 102;
		public const uint32 DSBM_HELP = 103;
		public const uint32 DSBM_CONTEXTMENU = 104;
		public const uint32 DSBID_BANNER = 256;
		public const uint32 DSBID_CONTAINERLIST = 257;
		public const uint32 DS_FORCE_REDISCOVERY = 1;
		public const uint32 DS_DIRECTORY_SERVICE_REQUIRED = 16;
		public const uint32 DS_DIRECTORY_SERVICE_PREFERRED = 32;
		public const uint32 DS_GC_SERVER_REQUIRED = 64;
		public const uint32 DS_PDC_REQUIRED = 128;
		public const uint32 DS_BACKGROUND_ONLY = 256;
		public const uint32 DS_IP_REQUIRED = 512;
		public const uint32 DS_KDC_REQUIRED = 1024;
		public const uint32 DS_TIMESERV_REQUIRED = 2048;
		public const uint32 DS_WRITABLE_REQUIRED = 4096;
		public const uint32 DS_GOOD_TIMESERV_PREFERRED = 8192;
		public const uint32 DS_AVOID_SELF = 16384;
		public const uint32 DS_ONLY_LDAP_NEEDED = 32768;
		public const uint32 DS_IS_FLAT_NAME = 65536;
		public const uint32 DS_IS_DNS_NAME = 131072;
		public const uint32 DS_TRY_NEXTCLOSEST_SITE = 262144;
		public const uint32 DS_DIRECTORY_SERVICE_6_REQUIRED = 524288;
		public const uint32 DS_WEB_SERVICE_REQUIRED = 1048576;
		public const uint32 DS_DIRECTORY_SERVICE_8_REQUIRED = 2097152;
		public const uint32 DS_DIRECTORY_SERVICE_9_REQUIRED = 4194304;
		public const uint32 DS_DIRECTORY_SERVICE_10_REQUIRED = 8388608;
		public const uint32 DS_KEY_LIST_SUPPORT_REQUIRED = 16777216;
		public const uint32 DS_RETURN_DNS_NAME = 1073741824;
		public const uint32 DS_RETURN_FLAT_NAME = 2147483648;
		public const uint32 DS_PDC_FLAG = 1;
		public const uint32 DS_GC_FLAG = 4;
		public const uint32 DS_LDAP_FLAG = 8;
		public const uint32 DS_DS_FLAG = 16;
		public const uint32 DS_KDC_FLAG = 32;
		public const uint32 DS_TIMESERV_FLAG = 64;
		public const uint32 DS_CLOSEST_FLAG = 128;
		public const uint32 DS_WRITABLE_FLAG = 256;
		public const uint32 DS_GOOD_TIMESERV_FLAG = 512;
		public const uint32 DS_NDNC_FLAG = 1024;
		public const uint32 DS_SELECT_SECRET_DOMAIN_6_FLAG = 2048;
		public const uint32 DS_FULL_SECRET_DOMAIN_6_FLAG = 4096;
		public const uint32 DS_WS_FLAG = 8192;
		public const uint32 DS_DS_8_FLAG = 16384;
		public const uint32 DS_DS_9_FLAG = 32768;
		public const uint32 DS_DS_10_FLAG = 65536;
		public const uint32 DS_KEY_LIST_FLAG = 131072;
		public const uint32 DS_PING_FLAGS = 1048575;
		public const uint32 DS_DNS_CONTROLLER_FLAG = 536870912;
		public const uint32 DS_DNS_DOMAIN_FLAG = 1073741824;
		public const uint32 DS_DNS_FOREST_FLAG = 2147483648;
		public const uint32 DS_DOMAIN_IN_FOREST = 1;
		public const uint32 DS_DOMAIN_DIRECT_OUTBOUND = 2;
		public const uint32 DS_DOMAIN_TREE_ROOT = 4;
		public const uint32 DS_DOMAIN_PRIMARY = 8;
		public const uint32 DS_DOMAIN_NATIVE_MODE = 16;
		public const uint32 DS_DOMAIN_DIRECT_INBOUND = 32;
		public const uint32 DS_GFTI_UPDATE_TDO = 1;
		public const uint32 DS_GFTI_VALID_FLAGS = 1;
		public const uint32 DS_ONLY_DO_SITE_NAME = 1;
		public const uint32 DS_NOTIFY_AFTER_SITE_RECORDS = 2;
		public const Guid CLSID_DsQuery = .(0x8a23e65e, 0x31c2, 0x11d0, 0x89, 0x1c, 0x00, 0xa0, 0x24, 0xab, 0x2d, 0xbb);
		public const Guid CLSID_DsFindObjects = .(0x83ee3fe1, 0x57d9, 0x11d0, 0xb9, 0x32, 0x00, 0xa0, 0x24, 0xab, 0x2d, 0xbb);
		public const Guid CLSID_DsFindPeople = .(0x83ee3fe2, 0x57d9, 0x11d0, 0xb9, 0x32, 0x00, 0xa0, 0x24, 0xab, 0x2d, 0xbb);
		public const Guid CLSID_DsFindPrinter = .(0xb577f070, 0x7ee2, 0x11d0, 0x91, 0x3f, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsFindComputer = .(0x16006700, 0x87ad, 0x11d0, 0x91, 0x40, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsFindVolume = .(0xc1b3cbf1, 0x886a, 0x11d0, 0x91, 0x40, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsFindContainer = .(0xc1b3cbf2, 0x886a, 0x11d0, 0x91, 0x40, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
		public const Guid CLSID_DsFindAdvanced = .(0x83ee3fe3, 0x57d9, 0x11d0, 0xb9, 0x32, 0x00, 0xa0, 0x24, 0xab, 0x2d, 0xbb);
		public const Guid CLSID_DsFindDomainController = .(0x538c7b7e, 0xd25e, 0x11d0, 0x97, 0x42, 0x00, 0xa0, 0xc9, 0x06, 0xaf, 0x45);
		public const Guid CLSID_DsFindWriteableDomainController = .(0x7cbef079, 0xaa84, 0x444b, 0xbc, 0x70, 0x68, 0xe4, 0x12, 0x83, 0xea, 0xbc);
		public const Guid CLSID_DsFindFrsMembers = .(0x94ce4b18, 0xb3d3, 0x11d1, 0xb9, 0xb4, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xb0);
		public const uint32 DSQPF_NOSAVE = 1;
		public const uint32 DSQPF_SAVELOCATION = 2;
		public const uint32 DSQPF_SHOWHIDDENOBJECTS = 4;
		public const uint32 DSQPF_ENABLEADMINFEATURES = 8;
		public const uint32 DSQPF_ENABLEADVANCEDFEATURES = 16;
		public const uint32 DSQPF_HASCREDENTIALS = 32;
		public const uint32 DSQPF_NOCHOOSECOLUMNS = 64;
		public const uint32 DSQPM_GETCLASSLIST = 268435456;
		public const uint32 DSQPM_HELPTOPICS = 268435457;
		public const uint32 DSROLE_PRIMARY_DS_RUNNING = 1;
		public const uint32 DSROLE_PRIMARY_DS_MIXED_MODE = 2;
		public const uint32 DSROLE_UPGRADE_IN_PROGRESS = 4;
		public const uint32 DSROLE_PRIMARY_DS_READONLY = 8;
		public const uint32 DSROLE_PRIMARY_DOMAIN_GUID_PRESENT = 16777216;
		public const uint32 ADS_ATTR_CLEAR = 1;
		public const uint32 ADS_ATTR_UPDATE = 2;
		public const uint32 ADS_ATTR_APPEND = 3;
		public const uint32 ADS_ATTR_DELETE = 4;
		public const uint32 ADS_EXT_MINEXTDISPID = 1;
		public const uint32 ADS_EXT_MAXEXTDISPID = 16777215;
		public const uint32 ADS_EXT_INITCREDENTIALS = 1;
		public const uint32 ADS_EXT_INITIALIZE_COMPLETE = 2;
		public const uint32 DS_BEHAVIOR_WIN2000 = 0;
		public const uint32 DS_BEHAVIOR_WIN2003_WITH_MIXED_DOMAINS = 1;
		public const uint32 DS_BEHAVIOR_WIN2003 = 2;
		public const uint32 DS_BEHAVIOR_WIN2008 = 3;
		public const uint32 DS_BEHAVIOR_WIN2008R2 = 4;
		public const uint32 DS_BEHAVIOR_WIN2012 = 5;
		public const uint32 DS_BEHAVIOR_WIN2012R2 = 6;
		public const uint32 DS_BEHAVIOR_WIN2016 = 7;
		public const uint32 DS_BEHAVIOR_LONGHORN = 3;
		public const uint32 DS_BEHAVIOR_WIN7 = 4;
		public const uint32 DS_BEHAVIOR_WIN8 = 5;
		public const uint32 DS_BEHAVIOR_WINBLUE = 6;
		public const uint32 DS_BEHAVIOR_WINTHRESHOLD = 7;
		public const uint32 ACTRL_DS_OPEN = 0;
		public const uint32 ACTRL_DS_CREATE_CHILD = 1;
		public const uint32 ACTRL_DS_DELETE_CHILD = 2;
		public const uint32 ACTRL_DS_LIST = 4;
		public const uint32 ACTRL_DS_SELF = 8;
		public const uint32 ACTRL_DS_READ_PROP = 16;
		public const uint32 ACTRL_DS_WRITE_PROP = 32;
		public const uint32 ACTRL_DS_DELETE_TREE = 64;
		public const uint32 ACTRL_DS_LIST_OBJECT = 128;
		public const uint32 ACTRL_DS_CONTROL_ACCESS = 256;
		public const uint32 NTDSAPI_BIND_ALLOW_DELEGATION = 1;
		public const uint32 NTDSAPI_BIND_FIND_BINDING = 2;
		public const uint32 NTDSAPI_BIND_FORCE_KERBEROS = 4;
		public const uint32 DS_REPSYNC_ASYNCHRONOUS_OPERATION = 1;
		public const uint32 DS_REPSYNC_WRITEABLE = 2;
		public const uint32 DS_REPSYNC_PERIODIC = 4;
		public const uint32 DS_REPSYNC_INTERSITE_MESSAGING = 8;
		public const uint32 DS_REPSYNC_FULL = 32;
		public const uint32 DS_REPSYNC_URGENT = 64;
		public const uint32 DS_REPSYNC_NO_DISCARD = 128;
		public const uint32 DS_REPSYNC_FORCE = 256;
		public const uint32 DS_REPSYNC_ADD_REFERENCE = 512;
		public const uint32 DS_REPSYNC_NEVER_COMPLETED = 1024;
		public const uint32 DS_REPSYNC_TWO_WAY = 2048;
		public const uint32 DS_REPSYNC_NEVER_NOTIFY = 4096;
		public const uint32 DS_REPSYNC_INITIAL = 8192;
		public const uint32 DS_REPSYNC_USE_COMPRESSION = 16384;
		public const uint32 DS_REPSYNC_ABANDONED = 32768;
		public const uint32 DS_REPSYNC_SELECT_SECRETS = 32768;
		public const uint32 DS_REPSYNC_INITIAL_IN_PROGRESS = 65536;
		public const uint32 DS_REPSYNC_PARTIAL_ATTRIBUTE_SET = 131072;
		public const uint32 DS_REPSYNC_REQUEUE = 262144;
		public const uint32 DS_REPSYNC_NOTIFICATION = 524288;
		public const uint32 DS_REPSYNC_ASYNCHRONOUS_REPLICA = 1048576;
		public const uint32 DS_REPSYNC_CRITICAL = 2097152;
		public const uint32 DS_REPSYNC_FULL_IN_PROGRESS = 4194304;
		public const uint32 DS_REPSYNC_PREEMPTED = 8388608;
		public const uint32 DS_REPSYNC_NONGC_RO_REPLICA = 16777216;
		public const uint32 DS_REPADD_ASYNCHRONOUS_OPERATION = 1;
		public const uint32 DS_REPADD_WRITEABLE = 2;
		public const uint32 DS_REPADD_INITIAL = 4;
		public const uint32 DS_REPADD_PERIODIC = 8;
		public const uint32 DS_REPADD_INTERSITE_MESSAGING = 16;
		public const uint32 DS_REPADD_ASYNCHRONOUS_REPLICA = 32;
		public const uint32 DS_REPADD_DISABLE_NOTIFICATION = 64;
		public const uint32 DS_REPADD_DISABLE_PERIODIC = 128;
		public const uint32 DS_REPADD_USE_COMPRESSION = 256;
		public const uint32 DS_REPADD_NEVER_NOTIFY = 512;
		public const uint32 DS_REPADD_TWO_WAY = 1024;
		public const uint32 DS_REPADD_CRITICAL = 2048;
		public const uint32 DS_REPADD_SELECT_SECRETS = 4096;
		public const uint32 DS_REPADD_NONGC_RO_REPLICA = 16777216;
		public const uint32 DS_REPDEL_ASYNCHRONOUS_OPERATION = 1;
		public const uint32 DS_REPDEL_WRITEABLE = 2;
		public const uint32 DS_REPDEL_INTERSITE_MESSAGING = 4;
		public const uint32 DS_REPDEL_IGNORE_ERRORS = 8;
		public const uint32 DS_REPDEL_LOCAL_ONLY = 16;
		public const uint32 DS_REPDEL_NO_SOURCE = 32;
		public const uint32 DS_REPDEL_REF_OK = 64;
		public const uint32 DS_REPMOD_ASYNCHRONOUS_OPERATION = 1;
		public const uint32 DS_REPMOD_WRITEABLE = 2;
		public const uint32 DS_REPMOD_UPDATE_FLAGS = 1;
		public const uint32 DS_REPMOD_UPDATE_INSTANCE = 2;
		public const uint32 DS_REPMOD_UPDATE_ADDRESS = 2;
		public const uint32 DS_REPMOD_UPDATE_SCHEDULE = 4;
		public const uint32 DS_REPMOD_UPDATE_RESULT = 8;
		public const uint32 DS_REPMOD_UPDATE_TRANSPORT = 16;
		public const uint32 DS_REPUPD_ASYNCHRONOUS_OPERATION = 1;
		public const uint32 DS_REPUPD_WRITEABLE = 2;
		public const uint32 DS_REPUPD_ADD_REFERENCE = 4;
		public const uint32 DS_REPUPD_DELETE_REFERENCE = 8;
		public const uint32 DS_REPUPD_REFERENCE_GCSPN = 16;
		public const uint32 DS_INSTANCETYPE_IS_NC_HEAD = 1;
		public const uint32 DS_INSTANCETYPE_NC_IS_WRITEABLE = 4;
		public const uint32 DS_INSTANCETYPE_NC_COMING = 16;
		public const uint32 DS_INSTANCETYPE_NC_GOING = 32;
		public const uint32 NTDSDSA_OPT_IS_GC = 1;
		public const uint32 NTDSDSA_OPT_DISABLE_INBOUND_REPL = 2;
		public const uint32 NTDSDSA_OPT_DISABLE_OUTBOUND_REPL = 4;
		public const uint32 NTDSDSA_OPT_DISABLE_NTDSCONN_XLATE = 8;
		public const uint32 NTDSDSA_OPT_DISABLE_SPN_REGISTRATION = 16;
		public const uint32 NTDSDSA_OPT_GENERATE_OWN_TOPO = 32;
		public const uint32 NTDSDSA_OPT_BLOCK_RPC = 64;
		public const uint32 NTDSCONN_OPT_IS_GENERATED = 1;
		public const uint32 NTDSCONN_OPT_TWOWAY_SYNC = 2;
		public const uint32 NTDSCONN_OPT_OVERRIDE_NOTIFY_DEFAULT = 4;
		public const uint32 NTDSCONN_OPT_USE_NOTIFY = 8;
		public const uint32 NTDSCONN_OPT_DISABLE_INTERSITE_COMPRESSION = 16;
		public const uint32 NTDSCONN_OPT_USER_OWNED_SCHEDULE = 32;
		public const uint32 NTDSCONN_OPT_RODC_TOPOLOGY = 64;
		public const uint32 NTDSCONN_KCC_NO_REASON = 0;
		public const uint32 NTDSCONN_KCC_GC_TOPOLOGY = 1;
		public const uint32 NTDSCONN_KCC_RING_TOPOLOGY = 2;
		public const uint32 NTDSCONN_KCC_MINIMIZE_HOPS_TOPOLOGY = 4;
		public const uint32 NTDSCONN_KCC_STALE_SERVERS_TOPOLOGY = 8;
		public const uint32 NTDSCONN_KCC_OSCILLATING_CONNECTION_TOPOLOGY = 16;
		public const uint32 NTDSCONN_KCC_INTERSITE_GC_TOPOLOGY = 32;
		public const uint32 NTDSCONN_KCC_INTERSITE_TOPOLOGY = 64;
		public const uint32 NTDSCONN_KCC_SERVER_FAILOVER_TOPOLOGY = 128;
		public const uint32 NTDSCONN_KCC_SITE_FAILOVER_TOPOLOGY = 256;
		public const uint32 NTDSCONN_KCC_REDUNDANT_SERVER_TOPOLOGY = 512;
		public const uint32 FRSCONN_PRIORITY_MASK = 1879048192;
		public const uint32 FRSCONN_MAX_PRIORITY = 8;
		public const uint32 NTDSCONN_OPT_IGNORE_SCHEDULE_MASK = 2147483648;
		public const uint32 NTDSSETTINGS_OPT_IS_AUTO_TOPOLOGY_DISABLED = 1;
		public const uint32 NTDSSETTINGS_OPT_IS_TOPL_CLEANUP_DISABLED = 2;
		public const uint32 NTDSSETTINGS_OPT_IS_TOPL_MIN_HOPS_DISABLED = 4;
		public const uint32 NTDSSETTINGS_OPT_IS_TOPL_DETECT_STALE_DISABLED = 8;
		public const uint32 NTDSSETTINGS_OPT_IS_INTER_SITE_AUTO_TOPOLOGY_DISABLED = 16;
		public const uint32 NTDSSETTINGS_OPT_IS_GROUP_CACHING_ENABLED = 32;
		public const uint32 NTDSSETTINGS_OPT_FORCE_KCC_WHISTLER_BEHAVIOR = 64;
		public const uint32 NTDSSETTINGS_OPT_FORCE_KCC_W2K_ELECTION = 128;
		public const uint32 NTDSSETTINGS_OPT_IS_RAND_BH_SELECTION_DISABLED = 256;
		public const uint32 NTDSSETTINGS_OPT_IS_SCHEDULE_HASHING_ENABLED = 512;
		public const uint32 NTDSSETTINGS_OPT_IS_REDUNDANT_SERVER_TOPOLOGY_ENABLED = 1024;
		public const uint32 NTDSSETTINGS_OPT_W2K3_IGNORE_SCHEDULES = 2048;
		public const uint32 NTDSSETTINGS_OPT_W2K3_BRIDGES_REQUIRED = 4096;
		public const uint32 NTDSSETTINGS_DEFAULT_SERVER_REDUNDANCY = 2;
		public const uint32 NTDSTRANSPORT_OPT_IGNORE_SCHEDULES = 1;
		public const uint32 NTDSTRANSPORT_OPT_BRIDGES_REQUIRED = 2;
		public const uint32 NTDSSITECONN_OPT_USE_NOTIFY = 1;
		public const uint32 NTDSSITECONN_OPT_TWOWAY_SYNC = 2;
		public const uint32 NTDSSITECONN_OPT_DISABLE_COMPRESSION = 4;
		public const uint32 NTDSSITELINK_OPT_USE_NOTIFY = 1;
		public const uint32 NTDSSITELINK_OPT_TWOWAY_SYNC = 2;
		public const uint32 NTDSSITELINK_OPT_DISABLE_COMPRESSION = 4;
		public const uint32 DS_REPSYNCALL_NO_OPTIONS = 0;
		public const uint32 DS_REPSYNCALL_ABORT_IF_SERVER_UNAVAILABLE = 1;
		public const uint32 DS_REPSYNCALL_SYNC_ADJACENT_SERVERS_ONLY = 2;
		public const uint32 DS_REPSYNCALL_ID_SERVERS_BY_DN = 4;
		public const uint32 DS_REPSYNCALL_DO_NOT_SYNC = 8;
		public const uint32 DS_REPSYNCALL_SKIP_INITIAL_CHECK = 16;
		public const uint32 DS_REPSYNCALL_PUSH_CHANGES_OUTWARD = 32;
		public const uint32 DS_REPSYNCALL_CROSS_SITE_BOUNDARIES = 64;
		public const uint32 DS_LIST_DSA_OBJECT_FOR_SERVER = 0;
		public const uint32 DS_LIST_DNS_HOST_NAME_FOR_SERVER = 1;
		public const uint32 DS_LIST_ACCOUNT_OBJECT_FOR_SERVER = 2;
		public const uint32 DS_ROLE_SCHEMA_OWNER = 0;
		public const uint32 DS_ROLE_DOMAIN_OWNER = 1;
		public const uint32 DS_ROLE_PDC_OWNER = 2;
		public const uint32 DS_ROLE_RID_OWNER = 3;
		public const uint32 DS_ROLE_INFRASTRUCTURE_OWNER = 4;
		public const uint32 DS_SCHEMA_GUID_NOT_FOUND = 0;
		public const uint32 DS_SCHEMA_GUID_ATTR = 1;
		public const uint32 DS_SCHEMA_GUID_ATTR_SET = 2;
		public const uint32 DS_SCHEMA_GUID_CLASS = 3;
		public const uint32 DS_SCHEMA_GUID_CONTROL_RIGHT = 4;
		public const uint32 DS_KCC_FLAG_ASYNC_OP = 1;
		public const uint32 DS_KCC_FLAG_DAMPED = 2;
		public const uint32 DS_EXIST_ADVISORY_MODE = 1;
		public const uint32 DS_REPL_INFO_FLAG_IMPROVE_LINKED_ATTRS = 1;
		public const uint32 DS_REPL_NBR_WRITEABLE = 16;
		public const uint32 DS_REPL_NBR_SYNC_ON_STARTUP = 32;
		public const uint32 DS_REPL_NBR_DO_SCHEDULED_SYNCS = 64;
		public const uint32 DS_REPL_NBR_USE_ASYNC_INTERSITE_TRANSPORT = 128;
		public const uint32 DS_REPL_NBR_TWO_WAY_SYNC = 512;
		public const uint32 DS_REPL_NBR_NONGC_RO_REPLICA = 1024;
		public const uint32 DS_REPL_NBR_RETURN_OBJECT_PARENTS = 2048;
		public const uint32 DS_REPL_NBR_SELECT_SECRETS = 4096;
		public const uint32 DS_REPL_NBR_FULL_SYNC_IN_PROGRESS = 65536;
		public const uint32 DS_REPL_NBR_FULL_SYNC_NEXT_PACKET = 131072;
		public const uint32 DS_REPL_NBR_GCSPN = 1048576;
		public const uint32 DS_REPL_NBR_NEVER_SYNCED = 2097152;
		public const uint32 DS_REPL_NBR_PREEMPTED = 16777216;
		public const uint32 DS_REPL_NBR_IGNORE_CHANGE_NOTIFICATIONS = 67108864;
		public const uint32 DS_REPL_NBR_DISABLE_SCHEDULED_SYNC = 134217728;
		public const uint32 DS_REPL_NBR_COMPRESS_CHANGES = 268435456;
		public const uint32 DS_REPL_NBR_NO_CHANGE_NOTIFICATIONS = 536870912;
		public const uint32 DS_REPL_NBR_PARTIAL_ATTRIBUTE_SET = 1073741824;
		public const uint32 ADAM_REPL_AUTHENTICATION_MODE_NEGOTIATE_PASS_THROUGH = 0;
		public const uint32 ADAM_REPL_AUTHENTICATION_MODE_NEGOTIATE = 1;
		public const uint32 ADAM_REPL_AUTHENTICATION_MODE_MUTUAL_AUTH_REQUIRED = 2;
		public const uint32 FLAG_FOREST_OPTIONAL_FEATURE = 1;
		public const uint32 FLAG_DOMAIN_OPTIONAL_FEATURE = 2;
		public const uint32 FLAG_DISABLABLE_OPTIONAL_FEATURE = 4;
		public const uint32 FLAG_SERVER_OPTIONAL_FEATURE = 8;
		public const uint32 DSOP_SCOPE_TYPE_TARGET_COMPUTER = 1;
		public const uint32 DSOP_SCOPE_TYPE_UPLEVEL_JOINED_DOMAIN = 2;
		public const uint32 DSOP_SCOPE_TYPE_DOWNLEVEL_JOINED_DOMAIN = 4;
		public const uint32 DSOP_SCOPE_TYPE_ENTERPRISE_DOMAIN = 8;
		public const uint32 DSOP_SCOPE_TYPE_GLOBAL_CATALOG = 16;
		public const uint32 DSOP_SCOPE_TYPE_EXTERNAL_UPLEVEL_DOMAIN = 32;
		public const uint32 DSOP_SCOPE_TYPE_EXTERNAL_DOWNLEVEL_DOMAIN = 64;
		public const uint32 DSOP_SCOPE_TYPE_WORKGROUP = 128;
		public const uint32 DSOP_SCOPE_TYPE_USER_ENTERED_UPLEVEL_SCOPE = 256;
		public const uint32 DSOP_SCOPE_TYPE_USER_ENTERED_DOWNLEVEL_SCOPE = 512;
		public const uint32 DSOP_SCOPE_FLAG_STARTING_SCOPE = 1;
		public const uint32 DSOP_SCOPE_FLAG_WANT_PROVIDER_WINNT = 2;
		public const uint32 DSOP_SCOPE_FLAG_WANT_PROVIDER_LDAP = 4;
		public const uint32 DSOP_SCOPE_FLAG_WANT_PROVIDER_GC = 8;
		public const uint32 DSOP_SCOPE_FLAG_WANT_SID_PATH = 16;
		public const uint32 DSOP_SCOPE_FLAG_WANT_DOWNLEVEL_BUILTIN_PATH = 32;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_USERS = 64;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_GROUPS = 128;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_COMPUTERS = 256;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_CONTACTS = 512;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_SERVICE_ACCOUNTS = 1024;
		public const uint32 DSOP_SCOPE_FLAG_DEFAULT_FILTER_PASSWORDSETTINGS_OBJECTS = 2048;
		public const uint32 DSOP_FILTER_INCLUDE_ADVANCED_VIEW = 1;
		public const uint32 DSOP_FILTER_USERS = 2;
		public const uint32 DSOP_FILTER_BUILTIN_GROUPS = 4;
		public const uint32 DSOP_FILTER_WELL_KNOWN_PRINCIPALS = 8;
		public const uint32 DSOP_FILTER_UNIVERSAL_GROUPS_DL = 16;
		public const uint32 DSOP_FILTER_UNIVERSAL_GROUPS_SE = 32;
		public const uint32 DSOP_FILTER_GLOBAL_GROUPS_DL = 64;
		public const uint32 DSOP_FILTER_GLOBAL_GROUPS_SE = 128;
		public const uint32 DSOP_FILTER_DOMAIN_LOCAL_GROUPS_DL = 256;
		public const uint32 DSOP_FILTER_DOMAIN_LOCAL_GROUPS_SE = 512;
		public const uint32 DSOP_FILTER_CONTACTS = 1024;
		public const uint32 DSOP_FILTER_COMPUTERS = 2048;
		public const uint32 DSOP_FILTER_SERVICE_ACCOUNTS = 4096;
		public const uint32 DSOP_FILTER_PASSWORDSETTINGS_OBJECTS = 8192;
		public const uint32 DSOP_DOWNLEVEL_FILTER_USERS = 2147483649;
		public const uint32 DSOP_DOWNLEVEL_FILTER_LOCAL_GROUPS = 2147483650;
		public const uint32 DSOP_DOWNLEVEL_FILTER_GLOBAL_GROUPS = 2147483652;
		public const uint32 DSOP_DOWNLEVEL_FILTER_COMPUTERS = 2147483656;
		public const uint32 DSOP_DOWNLEVEL_FILTER_WORLD = 2147483664;
		public const uint32 DSOP_DOWNLEVEL_FILTER_AUTHENTICATED_USER = 2147483680;
		public const uint32 DSOP_DOWNLEVEL_FILTER_ANONYMOUS = 2147483712;
		public const uint32 DSOP_DOWNLEVEL_FILTER_BATCH = 2147483776;
		public const uint32 DSOP_DOWNLEVEL_FILTER_CREATOR_OWNER = 2147483904;
		public const uint32 DSOP_DOWNLEVEL_FILTER_CREATOR_GROUP = 2147484160;
		public const uint32 DSOP_DOWNLEVEL_FILTER_DIALUP = 2147484672;
		public const uint32 DSOP_DOWNLEVEL_FILTER_INTERACTIVE = 2147485696;
		public const uint32 DSOP_DOWNLEVEL_FILTER_NETWORK = 2147487744;
		public const uint32 DSOP_DOWNLEVEL_FILTER_SERVICE = 2147491840;
		public const uint32 DSOP_DOWNLEVEL_FILTER_SYSTEM = 2147500032;
		public const uint32 DSOP_DOWNLEVEL_FILTER_EXCLUDE_BUILTIN_GROUPS = 2147516416;
		public const uint32 DSOP_DOWNLEVEL_FILTER_TERMINAL_SERVER = 2147549184;
		public const uint32 DSOP_DOWNLEVEL_FILTER_ALL_WELLKNOWN_SIDS = 2147614720;
		public const uint32 DSOP_DOWNLEVEL_FILTER_LOCAL_SERVICE = 2147745792;
		public const uint32 DSOP_DOWNLEVEL_FILTER_NETWORK_SERVICE = 2148007936;
		public const uint32 DSOP_DOWNLEVEL_FILTER_REMOTE_LOGON = 2148532224;
		public const uint32 DSOP_DOWNLEVEL_FILTER_INTERNET_USER = 2149580800;
		public const uint32 DSOP_DOWNLEVEL_FILTER_OWNER_RIGHTS = 2151677952;
		public const uint32 DSOP_DOWNLEVEL_FILTER_SERVICES = 2155872256;
		public const uint32 DSOP_DOWNLEVEL_FILTER_LOCAL_LOGON = 2164260864;
		public const uint32 DSOP_DOWNLEVEL_FILTER_THIS_ORG_CERT = 2181038080;
		public const uint32 DSOP_DOWNLEVEL_FILTER_IIS_APP_POOL = 2214592512;
		public const uint32 DSOP_DOWNLEVEL_FILTER_ALL_APP_PACKAGES = 2281701376;
		public const uint32 DSOP_DOWNLEVEL_FILTER_LOCAL_ACCOUNTS = 2415919104;
		public const uint32 DSOP_FLAG_MULTISELECT = 1;
		public const uint32 DSOP_FLAG_SKIP_TARGET_COMPUTER_DC_CHECK = 2;
		public const uint32 SCHEDULE_INTERVAL = 0;
		public const uint32 SCHEDULE_BANDWIDTH = 1;
		public const uint32 SCHEDULE_PRIORITY = 2;
		public const uint32 FACILITY_NTDSB = 2048;
		public const uint32 FACILITY_BACKUP = 2047;
		public const uint32 FACILITY_SYSTEM = 0;
		public const uint32 STATUS_SEVERITY_SUCCESS = 0;
		public const uint32 STATUS_SEVERITY_INFORMATIONAL = 1;
		public const uint32 STATUS_SEVERITY_WARNING = 2;
		public const uint32 STATUS_SEVERITY_ERROR = 3;
		public const Guid CLSID_DsObjectPicker = .(0x17d6ccd8, 0x3b7b, 0x11d2, 0xb9, 0xe0, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xf7);
		
		// --- Typedefs ---
		
		public typealias GetDcContextHandle = int;
		
		// --- Enums ---
		
		public enum ADSTYPEENUM : int32
		{
			INVALID = 0,
			DN_STRING = 1,
			CASE_EXACT_STRING = 2,
			CASE_IGNORE_STRING = 3,
			PRINTABLE_STRING = 4,
			NUMERIC_STRING = 5,
			BOOLEAN = 6,
			INTEGER = 7,
			OCTET_STRING = 8,
			UTC_TIME = 9,
			LARGE_INTEGER = 10,
			PROV_SPECIFIC = 11,
			OBJECT_CLASS = 12,
			CASEIGNORE_LIST = 13,
			OCTET_LIST = 14,
			PATH = 15,
			POSTALADDRESS = 16,
			TIMESTAMP = 17,
			BACKLINK = 18,
			TYPEDNAME = 19,
			HOLD = 20,
			NETADDRESS = 21,
			REPLICAPOINTER = 22,
			FAXNUMBER = 23,
			EMAIL = 24,
			NT_SECURITY_DESCRIPTOR = 25,
			UNKNOWN = 26,
			DN_WITH_BINARY = 27,
			DN_WITH_STRING = 28,
		}
		[AllowDuplicates]
		public enum ADS_AUTHENTICATION_ENUM : uint32
		{
			SECURE_AUTHENTICATION = 1,
			USE_ENCRYPTION = 2,
			USE_SSL = 2,
			READONLY_SERVER = 4,
			PROMPT_CREDENTIALS = 8,
			NO_AUTHENTICATION = 16,
			FAST_BIND = 32,
			USE_SIGNING = 64,
			USE_SEALING = 128,
			USE_DELEGATION = 256,
			SERVER_BIND = 512,
			NO_REFERRAL_CHASING = 1024,
			AUTH_RESERVED = 2147483648,
		}
		public enum ADS_STATUSENUM : int32
		{
			S_OK = 0,
			INVALID_SEARCHPREF = 1,
			INVALID_SEARCHPREFVALUE = 2,
		}
		public enum ADS_DEREFENUM : int32
		{
			NEVER = 0,
			SEARCHING = 1,
			FINDING = 2,
			ALWAYS = 3,
		}
		public enum ADS_SCOPEENUM : int32
		{
			BASE = 0,
			ONELEVEL = 1,
			SUBTREE = 2,
		}
		public enum ADS_PREFERENCES_ENUM : int32
		{
			ASYNCHRONOUS = 0,
			DEREF_ALIASES = 1,
			SIZE_LIMIT = 2,
			TIME_LIMIT = 3,
			ATTRIBTYPES_ONLY = 4,
			SEARCH_SCOPE = 5,
			TIMEOUT = 6,
			PAGESIZE = 7,
			PAGED_TIME_LIMIT = 8,
			CHASE_REFERRALS = 9,
			SORT_ON = 10,
			CACHE_RESULTS = 11,
			ADSIFLAG = 12,
		}
		public enum ADSI_DIALECT_ENUM : int32
		{
			LDAP = 0,
			SQL = 1,
		}
		public enum ADS_CHASE_REFERRALS_ENUM : int32
		{
			NEVER = 0,
			SUBORDINATE = 32,
			EXTERNAL = 64,
			ALWAYS = 96,
		}
		public enum ADS_SEARCHPREF_ENUM : int32
		{
			ASYNCHRONOUS = 0,
			DEREF_ALIASES = 1,
			SIZE_LIMIT = 2,
			TIME_LIMIT = 3,
			ATTRIBTYPES_ONLY = 4,
			SEARCH_SCOPE = 5,
			TIMEOUT = 6,
			PAGESIZE = 7,
			PAGED_TIME_LIMIT = 8,
			CHASE_REFERRALS = 9,
			SORT_ON = 10,
			CACHE_RESULTS = 11,
			DIRSYNC = 12,
			TOMBSTONE = 13,
			VLV = 14,
			ATTRIBUTE_QUERY = 15,
			SECURITY_MASK = 16,
			DIRSYNC_FLAG = 17,
			EXTENDED_DN = 18,
		}
		public enum ADS_PASSWORD_ENCODING_ENUM : int32
		{
			REQUIRE_SSL = 0,
			CLEAR = 1,
		}
		public enum ADS_PROPERTY_OPERATION_ENUM : int32
		{
			CLEAR = 1,
			UPDATE = 2,
			APPEND = 3,
			DELETE = 4,
		}
		[AllowDuplicates]
		public enum ADS_SYSTEMFLAG_ENUM : int32
		{
			DISALLOW_DELETE = -2147483648,
			CONFIG_ALLOW_RENAME = 1073741824,
			CONFIG_ALLOW_MOVE = 536870912,
			CONFIG_ALLOW_LIMITED_MOVE = 268435456,
			DOMAIN_DISALLOW_RENAME = 134217728,
			DOMAIN_DISALLOW_MOVE = 67108864,
			CR_NTDS_NC = 1,
			CR_NTDS_DOMAIN = 2,
			ATTR_NOT_REPLICATED = 1,
			ATTR_IS_CONSTRUCTED = 4,
		}
		[AllowDuplicates]
		public enum ADS_GROUP_TYPE_ENUM : int32
		{
			GLOBAL_GROUP = 2,
			DOMAIN_LOCAL_GROUP = 4,
			LOCAL_GROUP = 4,
			UNIVERSAL_GROUP = 8,
			SECURITY_ENABLED = -2147483648,
		}
		public enum ADS_USER_FLAG_ENUM : int32
		{
			SCRIPT = 1,
			ACCOUNTDISABLE = 2,
			HOMEDIR_REQUIRED = 8,
			LOCKOUT = 16,
			PASSWD_NOTREQD = 32,
			PASSWD_CANT_CHANGE = 64,
			ENCRYPTED_TEXT_PASSWORD_ALLOWED = 128,
			TEMP_DUPLICATE_ACCOUNT = 256,
			NORMAL_ACCOUNT = 512,
			INTERDOMAIN_TRUST_ACCOUNT = 2048,
			WORKSTATION_TRUST_ACCOUNT = 4096,
			SERVER_TRUST_ACCOUNT = 8192,
			DONT_EXPIRE_PASSWD = 65536,
			MNS_LOGON_ACCOUNT = 131072,
			SMARTCARD_REQUIRED = 262144,
			TRUSTED_FOR_DELEGATION = 524288,
			NOT_DELEGATED = 1048576,
			USE_DES_KEY_ONLY = 2097152,
			DONT_REQUIRE_PREAUTH = 4194304,
			PASSWORD_EXPIRED = 8388608,
			TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION = 16777216,
		}
		public enum ADS_RIGHTS_ENUM : int32
		{
			DELETE = 65536,
			READ_CONTROL = 131072,
			WRITE_DAC = 262144,
			WRITE_OWNER = 524288,
			SYNCHRONIZE = 1048576,
			ACCESS_SYSTEM_SECURITY = 16777216,
			GENERIC_READ = -2147483648,
			GENERIC_WRITE = 1073741824,
			GENERIC_EXECUTE = 536870912,
			GENERIC_ALL = 268435456,
			DS_CREATE_CHILD = 1,
			DS_DELETE_CHILD = 2,
			ACTRL_DS_LIST = 4,
			DS_SELF = 8,
			DS_READ_PROP = 16,
			DS_WRITE_PROP = 32,
			DS_DELETE_TREE = 64,
			DS_LIST_OBJECT = 128,
			DS_CONTROL_ACCESS = 256,
		}
		public enum ADS_ACETYPE_ENUM : int32
		{
			ACCESS_ALLOWED = 0,
			ACCESS_DENIED = 1,
			SYSTEM_AUDIT = 2,
			ACCESS_ALLOWED_OBJECT = 5,
			ACCESS_DENIED_OBJECT = 6,
			SYSTEM_AUDIT_OBJECT = 7,
			SYSTEM_ALARM_OBJECT = 8,
			ACCESS_ALLOWED_CALLBACK = 9,
			ACCESS_DENIED_CALLBACK = 10,
			ACCESS_ALLOWED_CALLBACK_OBJECT = 11,
			ACCESS_DENIED_CALLBACK_OBJECT = 12,
			SYSTEM_AUDIT_CALLBACK = 13,
			SYSTEM_ALARM_CALLBACK = 14,
			SYSTEM_AUDIT_CALLBACK_OBJECT = 15,
			SYSTEM_ALARM_CALLBACK_OBJECT = 16,
		}
		public enum ADS_ACEFLAG_ENUM : int32
		{
			INHERIT_ACE = 2,
			NO_PROPAGATE_INHERIT_ACE = 4,
			INHERIT_ONLY_ACE = 8,
			INHERITED_ACE = 16,
			VALID_INHERIT_FLAGS = 31,
			SUCCESSFUL_ACCESS = 64,
			FAILED_ACCESS = 128,
		}
		public enum ADS_FLAGTYPE_ENUM : int32
		{
			OBJECT_TYPE_PRESENT = 1,
			INHERITED_OBJECT_TYPE_PRESENT = 2,
		}
		public enum ADS_SD_CONTROL_ENUM : int32
		{
			OWNER_DEFAULTED = 1,
			GROUP_DEFAULTED = 2,
			DACL_PRESENT = 4,
			DACL_DEFAULTED = 8,
			SACL_PRESENT = 16,
			SACL_DEFAULTED = 32,
			DACL_AUTO_INHERIT_REQ = 256,
			SACL_AUTO_INHERIT_REQ = 512,
			DACL_AUTO_INHERITED = 1024,
			SACL_AUTO_INHERITED = 2048,
			DACL_PROTECTED = 4096,
			SACL_PROTECTED = 8192,
			SELF_RELATIVE = 32768,
		}
		public enum ADS_SD_REVISION_ENUM : int32
		{
			DS = 4,
		}
		public enum ADS_NAME_TYPE_ENUM : int32
		{
			_1779 = 1,
			CANONICAL = 2,
			NT4 = 3,
			DISPLAY = 4,
			DOMAIN_SIMPLE = 5,
			ENTERPRISE_SIMPLE = 6,
			GUID = 7,
			UNKNOWN = 8,
			USER_PRINCIPAL_NAME = 9,
			CANONICAL_EX = 10,
			SERVICE_PRINCIPAL_NAME = 11,
			SID_OR_SID_HISTORY_NAME = 12,
		}
		public enum ADS_NAME_INITTYPE_ENUM : int32
		{
			DOMAIN = 1,
			SERVER = 2,
			GC = 3,
		}
		public enum ADS_OPTION_ENUM : int32
		{
			SERVERNAME = 0,
			REFERRALS = 1,
			PAGE_SIZE = 2,
			SECURITY_MASK = 3,
			MUTUAL_AUTH_STATUS = 4,
			QUOTA = 5,
			PASSWORD_PORTNUMBER = 6,
			PASSWORD_METHOD = 7,
			ACCUMULATIVE_MODIFICATION = 8,
			SKIP_SID_LOOKUP = 9,
		}
		public enum ADS_SECURITY_INFO_ENUM : int32
		{
			OWNER = 1,
			GROUP = 2,
			DACL = 4,
			SACL = 8,
		}
		public enum ADS_SETTYPE_ENUM : int32
		{
			FULL = 1,
			PROVIDER = 2,
			SERVER = 3,
			DN = 4,
		}
		public enum ADS_FORMAT_ENUM : int32
		{
			WINDOWS = 1,
			WINDOWS_NO_SERVER = 2,
			WINDOWS_DN = 3,
			WINDOWS_PARENT = 4,
			X500 = 5,
			X500_NO_SERVER = 6,
			X500_DN = 7,
			X500_PARENT = 8,
			SERVER = 9,
			PROVIDER = 10,
			LEAF = 11,
		}
		public enum ADS_DISPLAY_ENUM : int32
		{
			FULL = 1,
			VALUE_ONLY = 2,
		}
		public enum ADS_ESCAPE_MODE_ENUM : int32
		{
			DEFAULT = 1,
			ON = 2,
			OFF = 3,
			OFF_EX = 4,
		}
		public enum ADS_PATHTYPE_ENUM : int32
		{
			FILE = 1,
			FILESHARE = 2,
			REGISTRY = 3,
		}
		public enum ADS_SD_FORMAT_ENUM : int32
		{
			IID = 1,
			RAW = 2,
			HEXSTRING = 3,
		}
		public enum DS_MANGLE_FOR : int32
		{
			UNKNOWN = 0,
			OBJECT_RDN_FOR_DELETION = 1,
			OBJECT_RDN_FOR_NAME_CONFLICT = 2,
		}
		public enum DS_NAME_FORMAT : int32
		{
			UNKNOWN_NAME = 0,
			FQDN_1779_NAME = 1,
			NT4_ACCOUNT_NAME = 2,
			DISPLAY_NAME = 3,
			UNIQUE_ID_NAME = 6,
			CANONICAL_NAME = 7,
			USER_PRINCIPAL_NAME = 8,
			CANONICAL_NAME_EX = 9,
			SERVICE_PRINCIPAL_NAME = 10,
			SID_OR_SID_HISTORY_NAME = 11,
			DNS_DOMAIN_NAME = 12,
		}
		public enum DS_NAME_FLAGS : int32
		{
			NO_FLAGS = 0,
			FLAG_SYNTACTICAL_ONLY = 1,
			FLAG_EVAL_AT_DC = 2,
			FLAG_GCVERIFY = 4,
			FLAG_TRUST_REFERRAL = 8,
		}
		public enum DS_NAME_ERROR : int32
		{
			NO_ERROR = 0,
			ERROR_RESOLVING = 1,
			ERROR_NOT_FOUND = 2,
			ERROR_NOT_UNIQUE = 3,
			ERROR_NO_MAPPING = 4,
			ERROR_DOMAIN_ONLY = 5,
			ERROR_NO_SYNTACTICAL_MAPPING = 6,
			ERROR_TRUST_REFERRAL = 7,
		}
		public enum DS_SPN_NAME_TYPE : int32
		{
			DNS_HOST = 0,
			DN_HOST = 1,
			NB_HOST = 2,
			DOMAIN = 3,
			NB_DOMAIN = 4,
			SERVICE = 5,
		}
		public enum DS_SPN_WRITE_OP : int32
		{
			ADD_SPN_OP = 0,
			REPLACE_SPN_OP = 1,
			DELETE_SPN_OP = 2,
		}
		public enum DS_REPSYNCALL_ERROR : int32
		{
			WIN32_ERROR_CONTACTING_SERVER = 0,
			WIN32_ERROR_REPLICATING = 1,
			SERVER_UNREACHABLE = 2,
		}
		public enum DS_REPSYNCALL_EVENT : int32
		{
			ERROR = 0,
			SYNC_STARTED = 1,
			SYNC_COMPLETED = 2,
			FINISHED = 3,
		}
		public enum DS_KCC_TASKID : int32
		{
			TASKID_UPDATE_TOPOLOGY = 0,
		}
		public enum DS_REPL_INFO_TYPE : int32
		{
			NEIGHBORS = 0,
			CURSORS_FOR_NC = 1,
			METADATA_FOR_OBJ = 2,
			KCC_DSA_CONNECT_FAILURES = 3,
			KCC_DSA_LINK_FAILURES = 4,
			PENDING_OPS = 5,
			METADATA_FOR_ATTR_VALUE = 6,
			CURSORS_2_FOR_NC = 7,
			CURSORS_3_FOR_NC = 8,
			METADATA_2_FOR_OBJ = 9,
			METADATA_2_FOR_ATTR_VALUE = 10,
			METADATA_EXT_FOR_ATTR_VALUE = 11,
			TYPE_MAX = 12,
		}
		public enum DS_REPL_OP_TYPE : int32
		{
			SYNC = 0,
			ADD = 1,
			DELETE = 2,
			MODIFY = 3,
			UPDATE_REFS = 4,
		}
		public enum DSROLE_MACHINE_ROLE : int32
		{
			StandaloneWorkstation = 0,
			MemberWorkstation = 1,
			StandaloneServer = 2,
			MemberServer = 3,
			BackupDomainController = 4,
			PrimaryDomainController = 5,
		}
		public enum DSROLE_SERVER_STATE : int32
		{
			Unknown = 0,
			Primary = 1,
			Backup = 2,
		}
		public enum DSROLE_PRIMARY_DOMAIN_INFO_LEVEL : int32
		{
			PrimaryDomainInfoBasic = 1,
			UpgradeStatus = 2,
			OperationState = 3,
		}
		public enum DSROLE_OPERATION_STATE : int32
		{
			Idle = 0,
			Active = 1,
			NeedReboot = 2,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT LPCQADDFORMSPROC(LPARAM lParam, out CQFORM pForm);
		public function HRESULT LPCQADDPAGESPROC(LPARAM lParam, in Guid clsidForm, out CQPAGE pPage);
		public function HRESULT LPCQPAGEPROC(out CQPAGE pPage, HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function HRESULT LPDSENUMATTRIBUTES(LPARAM lParam, PWSTR pszAttributeName, PWSTR pszDisplayName, uint32 dwFlags);
		
		// --- Structs ---
		
		[CRepr]
		public struct CQFORM
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public Guid clsid;
			public HICON hIcon;
			public PWSTR pszTitle;
		}
		[CRepr]
		public struct CQPAGE
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public LPCQPAGEPROC pPageProc;
			public HINSTANCE hInstance;
			public int32 idPageName;
			public int32 idPageTemplate;
			public DLGPROC pDlgProc;
			public LPARAM lParam;
		}
		[CRepr]
		public struct OPENQUERYWINDOW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public Guid clsidHandler;
			public void* pHandlerParameters;
			public Guid clsidDefaultForm;
			public IPersistQuery* pPersistQuery;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* pFormParameters;
				public IPropertyBag* ppbFormParameters;
			}
		}
		[CRepr]
		public struct ADS_OCTET_STRING
		{
			public uint32 dwLength;
			public uint8* lpValue;
		}
		[CRepr]
		public struct ADS_NT_SECURITY_DESCRIPTOR
		{
			public uint32 dwLength;
			public uint8* lpValue;
		}
		[CRepr]
		public struct ADS_PROV_SPECIFIC
		{
			public uint32 dwLength;
			public uint8* lpValue;
		}
		[CRepr]
		public struct ADS_CASEIGNORE_LIST
		{
			public ADS_CASEIGNORE_LIST* Next;
			public PWSTR String;
		}
		[CRepr]
		public struct ADS_OCTET_LIST
		{
			public ADS_OCTET_LIST* Next;
			public uint32 Length;
			public uint8* Data;
		}
		[CRepr]
		public struct ADS_PATH
		{
			public uint32 Type;
			public PWSTR VolumeName;
			public PWSTR Path;
		}
		[CRepr]
		public struct ADS_POSTALADDRESS
		{
			public PWSTR[6] PostalAddress;
		}
		[CRepr]
		public struct ADS_TIMESTAMP
		{
			public uint32 WholeSeconds;
			public uint32 EventID;
		}
		[CRepr]
		public struct ADS_BACKLINK
		{
			public uint32 RemoteID;
			public PWSTR ObjectName;
		}
		[CRepr]
		public struct ADS_TYPEDNAME
		{
			public PWSTR ObjectName;
			public uint32 Level;
			public uint32 Interval;
		}
		[CRepr]
		public struct ADS_HOLD
		{
			public PWSTR ObjectName;
			public uint32 Amount;
		}
		[CRepr]
		public struct ADS_NETADDRESS
		{
			public uint32 AddressType;
			public uint32 AddressLength;
			public uint8* Address;
		}
		[CRepr]
		public struct ADS_REPLICAPOINTER
		{
			public PWSTR ServerName;
			public uint32 ReplicaType;
			public uint32 ReplicaNumber;
			public uint32 Count;
			public ADS_NETADDRESS* ReplicaAddressHints;
		}
		[CRepr]
		public struct ADS_FAXNUMBER
		{
			public PWSTR TelephoneNumber;
			public uint32 NumberOfBits;
			public uint8* Parameters;
		}
		[CRepr]
		public struct ADS_EMAIL
		{
			public PWSTR Address;
			public uint32 Type;
		}
		[CRepr]
		public struct ADS_DN_WITH_BINARY
		{
			public uint32 dwLength;
			public uint8* lpBinaryValue;
			public PWSTR pszDNString;
		}
		[CRepr]
		public struct ADS_DN_WITH_STRING
		{
			public PWSTR pszStringValue;
			public PWSTR pszDNString;
		}
		[CRepr]
		public struct ADSVALUE
		{
			public ADSTYPEENUM dwType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint16* DNString;
				public uint16* CaseExactString;
				public uint16* CaseIgnoreString;
				public uint16* PrintableString;
				public uint16* NumericString;
				public uint32 Boolean;
				public uint32 Integer;
				public ADS_OCTET_STRING OctetString;
				public SYSTEMTIME UTCTime;
				public LARGE_INTEGER LargeInteger;
				public uint16* ClassName;
				public ADS_PROV_SPECIFIC ProviderSpecific;
				public ADS_CASEIGNORE_LIST* pCaseIgnoreList;
				public ADS_OCTET_LIST* pOctetList;
				public ADS_PATH* pPath;
				public ADS_POSTALADDRESS* pPostalAddress;
				public ADS_TIMESTAMP Timestamp;
				public ADS_BACKLINK BackLink;
				public ADS_TYPEDNAME* pTypedName;
				public ADS_HOLD Hold;
				public ADS_NETADDRESS* pNetAddress;
				public ADS_REPLICAPOINTER* pReplicaPointer;
				public ADS_FAXNUMBER* pFaxNumber;
				public ADS_EMAIL Email;
				public ADS_NT_SECURITY_DESCRIPTOR SecurityDescriptor;
				public ADS_DN_WITH_BINARY* pDNWithBinary;
				public ADS_DN_WITH_STRING* pDNWithString;
			}
		}
		[CRepr]
		public struct ADS_ATTR_INFO
		{
			public PWSTR pszAttrName;
			public uint32 dwControlCode;
			public ADSTYPEENUM dwADsType;
			public ADSVALUE* pADsValues;
			public uint32 dwNumValues;
		}
		[CRepr]
		public struct ADS_OBJECT_INFO
		{
			public PWSTR pszRDN;
			public PWSTR pszObjectDN;
			public PWSTR pszParentDN;
			public PWSTR pszSchemaDN;
			public PWSTR pszClassName;
		}
		[CRepr]
		public struct ads_searchpref_info
		{
			public ADS_SEARCHPREF_ENUM dwSearchPref;
			public ADSVALUE vValue;
			public ADS_STATUSENUM dwStatus;
		}
		[CRepr]
		public struct ads_search_column
		{
			public PWSTR pszAttrName;
			public ADSTYPEENUM dwADsType;
			public ADSVALUE* pADsValues;
			public uint32 dwNumValues;
			public HANDLE hReserved;
		}
		[CRepr]
		public struct ADS_ATTR_DEF
		{
			public PWSTR pszAttrName;
			public ADSTYPEENUM dwADsType;
			public uint32 dwMinRange;
			public uint32 dwMaxRange;
			public BOOL fMultiValued;
		}
		[CRepr]
		public struct ADS_CLASS_DEF
		{
			public PWSTR pszClassName;
			public uint32 dwMandatoryAttrs;
			public PWSTR* ppszMandatoryAttrs;
			public uint32 optionalAttrs;
			public PWSTR** ppszOptionalAttrs;
			public uint32 dwNamingAttrs;
			public PWSTR** ppszNamingAttrs;
			public uint32 dwSuperClasses;
			public PWSTR** ppszSuperClasses;
			public BOOL fIsContainer;
		}
		[CRepr]
		public struct ADS_SORTKEY
		{
			public PWSTR pszAttrType;
			public PWSTR pszReserved;
			public BOOLEAN fReverseorder;
		}
		[CRepr]
		public struct ADS_VLV
		{
			public uint32 dwBeforeCount;
			public uint32 dwAfterCount;
			public uint32 dwOffset;
			public uint32 dwContentCount;
			public PWSTR pszTarget;
			public uint32 dwContextIDLength;
			public uint8* lpContextID;
		}
		[CRepr]
		public struct DSOBJECT
		{
			public uint32 dwFlags;
			public uint32 dwProviderFlags;
			public uint32 offsetName;
			public uint32 offsetClass;
		}
		[CRepr]
		public struct DSOBJECTNAMES
		{
			public Guid clsidNamespace;
			public uint32 cItems;
			public DSOBJECT[0] aObjects;
		}
		[CRepr]
		public struct DSDISPLAYSPECOPTIONS
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 offsetAttribPrefix;
			public uint32 offsetUserName;
			public uint32 offsetPassword;
			public uint32 offsetServer;
			public uint32 offsetServerConfigPath;
		}
		[CRepr]
		public struct DSPROPERTYPAGEINFO
		{
			public uint32 offsetString;
		}
		[CRepr]
		public struct DOMAINDESC
		{
			public PWSTR pszName;
			public PWSTR pszPath;
			public PWSTR pszNCName;
			public PWSTR pszTrustParent;
			public PWSTR pszObjectClass;
			public uint32 ulFlags;
			public BOOL fDownLevel;
			public DOMAINDESC* pdChildList;
			public DOMAINDESC* pdNextSibling;
		}
		[CRepr]
		public struct DOMAIN_TREE
		{
			public uint32 dsSize;
			public uint32 dwCount;
			public DOMAINDESC[0] aDomains;
		}
		[CRepr]
		public struct DSCLASSCREATIONINFO
		{
			public uint32 dwFlags;
			public Guid clsidWizardDialog;
			public Guid clsidWizardPrimaryPage;
			public uint32 cWizardExtensions;
			public Guid[0] aWizardExtensions;
		}
		[CRepr]
		public struct DSBROWSEINFOW
		{
			public uint32 cbStruct;
			public HWND hwndOwner;
			public PWSTR pszCaption;
			public PWSTR pszTitle;
			public PWSTR pszRoot;
			public PWSTR pszPath;
			public uint32 cchPath;
			public uint32 dwFlags;
			public BFFCALLBACK pfnCallback;
			public LPARAM lParam;
			public uint32 dwReturnFormat;
			public PWSTR pUserName;
			public PWSTR pPassword;
			public PWSTR pszObjectClass;
			public uint32 cchObjectClass;
		}
		[CRepr]
		public struct DSBROWSEINFOA
		{
			public uint32 cbStruct;
			public HWND hwndOwner;
			public PSTR pszCaption;
			public PSTR pszTitle;
			public PWSTR pszRoot;
			public PWSTR pszPath;
			public uint32 cchPath;
			public uint32 dwFlags;
			public BFFCALLBACK pfnCallback;
			public LPARAM lParam;
			public uint32 dwReturnFormat;
			public PWSTR pUserName;
			public PWSTR pPassword;
			public PWSTR pszObjectClass;
			public uint32 cchObjectClass;
		}
		[CRepr]
		public struct DSBITEMW
		{
			public uint32 cbStruct;
			public PWSTR pszADsPath;
			public PWSTR pszClass;
			public uint32 dwMask;
			public uint32 dwState;
			public uint32 dwStateMask;
			public char16[64] szDisplayName;
			public char16[260] szIconLocation;
			public int32 iIconResID;
		}
		[CRepr]
		public struct DSBITEMA
		{
			public uint32 cbStruct;
			public PWSTR pszADsPath;
			public PWSTR pszClass;
			public uint32 dwMask;
			public uint32 dwState;
			public uint32 dwStateMask;
			public CHAR[64] szDisplayName;
			public CHAR[260] szIconLocation;
			public int32 iIconResID;
		}
		[CRepr]
		public struct DSOP_UPLEVEL_FILTER_FLAGS
		{
			public uint32 flBothModes;
			public uint32 flMixedModeOnly;
			public uint32 flNativeModeOnly;
		}
		[CRepr]
		public struct DSOP_FILTER_FLAGS
		{
			public DSOP_UPLEVEL_FILTER_FLAGS Uplevel;
			public uint32 flDownlevel;
		}
		[CRepr]
		public struct DSOP_SCOPE_INIT_INFO
		{
			public uint32 cbSize;
			public uint32 flType;
			public uint32 flScope;
			public DSOP_FILTER_FLAGS FilterFlags;
			public PWSTR pwzDcName;
			public PWSTR pwzADsPath;
			public HRESULT hr;
		}
		[CRepr]
		public struct DSOP_INIT_INFO
		{
			public uint32 cbSize;
			public PWSTR pwzTargetComputer;
			public uint32 cDsScopeInfos;
			public DSOP_SCOPE_INIT_INFO* aDsScopeInfos;
			public uint32 flOptions;
			public uint32 cAttributesToFetch;
			public PWSTR* apwzAttributeNames;
		}
		[CRepr]
		public struct DS_SELECTION
		{
			public PWSTR pwzName;
			public PWSTR pwzADsPath;
			public PWSTR pwzClass;
			public PWSTR pwzUPN;
			public VARIANT* pvarFetchedAttributes;
			public uint32 flScopeType;
		}
		[CRepr]
		public struct DS_SELECTION_LIST
		{
			public uint32 cItems;
			public uint32 cFetchedAttributes;
			public DS_SELECTION[0] aDsSelection;
		}
		[CRepr]
		public struct DSQUERYINITPARAMS
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public PWSTR pDefaultScope;
			public PWSTR pDefaultSaveLocation;
			public PWSTR pUserName;
			public PWSTR pPassword;
			public PWSTR pServer;
		}
		[CRepr]
		public struct DSCOLUMN
		{
			public uint32 dwFlags;
			public int32 fmt;
			public int32 cx;
			public int32 idsName;
			public int32 offsetProperty;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct DSQUERYPARAMS
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public int32 offsetQuery;
			public int32 iColumns;
			public uint32 dwReserved;
			public DSCOLUMN[0] aColumns;
		}
		[CRepr]
		public struct DSQUERYCLASSLIST
		{
			public uint32 cbStruct;
			public int32 cClasses;
			public uint32[0] offsetClass;
		}
		[CRepr]
		public struct DSA_NEWOBJ_DISPINFO
		{
			public uint32 dwSize;
			public HICON hObjClassIcon;
			public PWSTR lpszWizTitle;
			public PWSTR lpszContDisplayName;
		}
		[CRepr]
		public struct ADSPROPINITPARAMS
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HRESULT hr;
			public IDirectoryObject* pDsObj;
			public PWSTR pwzCN;
			public ADS_ATTR_INFO* pWritableAttrs;
		}
		[CRepr]
		public struct ADSPROPERROR
		{
			public HWND hwndPage;
			public PWSTR pszPageTitle;
			public PWSTR pszObjPath;
			public PWSTR pszObjClass;
			public HRESULT hr;
			public PWSTR pszError;
		}
		[CRepr]
		public struct SCHEDULE_HEADER
		{
			public uint32 Type;
			public uint32 Offset;
		}
		[CRepr]
		public struct SCHEDULE
		{
			public uint32 Size;
			public uint32 Bandwidth;
			public uint32 NumberOfSchedules;
			public SCHEDULE_HEADER[0] Schedules;
		}
		[CRepr]
		public struct DS_NAME_RESULT_ITEMA
		{
			public uint32 status;
			public PSTR pDomain;
			public PSTR pName;
		}
		[CRepr]
		public struct DS_NAME_RESULTA
		{
			public uint32 cItems;
			public DS_NAME_RESULT_ITEMA* rItems;
		}
		[CRepr]
		public struct DS_NAME_RESULT_ITEMW
		{
			public uint32 status;
			public PWSTR pDomain;
			public PWSTR pName;
		}
		[CRepr]
		public struct DS_NAME_RESULTW
		{
			public uint32 cItems;
			public DS_NAME_RESULT_ITEMW* rItems;
		}
		[CRepr]
		public struct DS_REPSYNCALL_SYNCA
		{
			public PSTR pszSrcId;
			public PSTR pszDstId;
			public PSTR pszNC;
			public Guid* pguidSrc;
			public Guid* pguidDst;
		}
		[CRepr]
		public struct DS_REPSYNCALL_SYNCW
		{
			public PWSTR pszSrcId;
			public PWSTR pszDstId;
			public PWSTR pszNC;
			public Guid* pguidSrc;
			public Guid* pguidDst;
		}
		[CRepr]
		public struct DS_REPSYNCALL_ERRINFOA
		{
			public PSTR pszSvrId;
			public DS_REPSYNCALL_ERROR error;
			public uint32 dwWin32Err;
			public PSTR pszSrcId;
		}
		[CRepr]
		public struct DS_REPSYNCALL_ERRINFOW
		{
			public PWSTR pszSvrId;
			public DS_REPSYNCALL_ERROR error;
			public uint32 dwWin32Err;
			public PWSTR pszSrcId;
		}
		[CRepr]
		public struct DS_REPSYNCALL_UPDATEA
		{
			public DS_REPSYNCALL_EVENT event;
			public DS_REPSYNCALL_ERRINFOA* pErrInfo;
			public DS_REPSYNCALL_SYNCA* pSync;
		}
		[CRepr]
		public struct DS_REPSYNCALL_UPDATEW
		{
			public DS_REPSYNCALL_EVENT event;
			public DS_REPSYNCALL_ERRINFOW* pErrInfo;
			public DS_REPSYNCALL_SYNCW* pSync;
		}
		[CRepr]
		public struct DS_SITE_COST_INFO
		{
			public uint32 errorCode;
			public uint32 cost;
		}
		[CRepr]
		public struct DS_SCHEMA_GUID_MAPA
		{
			public Guid guid;
			public uint32 guidType;
			public PSTR pName;
		}
		[CRepr]
		public struct DS_SCHEMA_GUID_MAPW
		{
			public Guid guid;
			public uint32 guidType;
			public PWSTR pName;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_1A
		{
			public PSTR NetbiosName;
			public PSTR DnsHostName;
			public PSTR SiteName;
			public PSTR ComputerObjectName;
			public PSTR ServerObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_1W
		{
			public PWSTR NetbiosName;
			public PWSTR DnsHostName;
			public PWSTR SiteName;
			public PWSTR ComputerObjectName;
			public PWSTR ServerObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_2A
		{
			public PSTR NetbiosName;
			public PSTR DnsHostName;
			public PSTR SiteName;
			public PSTR SiteObjectName;
			public PSTR ComputerObjectName;
			public PSTR ServerObjectName;
			public PSTR NtdsDsaObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
			public BOOL fIsGc;
			public Guid SiteObjectGuid;
			public Guid ComputerObjectGuid;
			public Guid ServerObjectGuid;
			public Guid NtdsDsaObjectGuid;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_2W
		{
			public PWSTR NetbiosName;
			public PWSTR DnsHostName;
			public PWSTR SiteName;
			public PWSTR SiteObjectName;
			public PWSTR ComputerObjectName;
			public PWSTR ServerObjectName;
			public PWSTR NtdsDsaObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
			public BOOL fIsGc;
			public Guid SiteObjectGuid;
			public Guid ComputerObjectGuid;
			public Guid ServerObjectGuid;
			public Guid NtdsDsaObjectGuid;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_3A
		{
			public PSTR NetbiosName;
			public PSTR DnsHostName;
			public PSTR SiteName;
			public PSTR SiteObjectName;
			public PSTR ComputerObjectName;
			public PSTR ServerObjectName;
			public PSTR NtdsDsaObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
			public BOOL fIsGc;
			public BOOL fIsRodc;
			public Guid SiteObjectGuid;
			public Guid ComputerObjectGuid;
			public Guid ServerObjectGuid;
			public Guid NtdsDsaObjectGuid;
		}
		[CRepr]
		public struct DS_DOMAIN_CONTROLLER_INFO_3W
		{
			public PWSTR NetbiosName;
			public PWSTR DnsHostName;
			public PWSTR SiteName;
			public PWSTR SiteObjectName;
			public PWSTR ComputerObjectName;
			public PWSTR ServerObjectName;
			public PWSTR NtdsDsaObjectName;
			public BOOL fIsPdc;
			public BOOL fDsEnabled;
			public BOOL fIsGc;
			public BOOL fIsRodc;
			public Guid SiteObjectGuid;
			public Guid ComputerObjectGuid;
			public Guid ServerObjectGuid;
			public Guid NtdsDsaObjectGuid;
		}
		[CRepr]
		public struct DS_REPL_NEIGHBORW
		{
			public PWSTR pszNamingContext;
			public PWSTR pszSourceDsaDN;
			public PWSTR pszSourceDsaAddress;
			public PWSTR pszAsyncIntersiteTransportDN;
			public uint32 dwReplicaFlags;
			public uint32 dwReserved;
			public Guid uuidNamingContextObjGuid;
			public Guid uuidSourceDsaObjGuid;
			public Guid uuidSourceDsaInvocationID;
			public Guid uuidAsyncIntersiteTransportObjGuid;
			public int64 usnLastObjChangeSynced;
			public int64 usnAttributeFilter;
			public FILETIME ftimeLastSyncSuccess;
			public FILETIME ftimeLastSyncAttempt;
			public uint32 dwLastSyncResult;
			public uint32 cNumConsecutiveSyncFailures;
		}
		[CRepr]
		public struct DS_REPL_NEIGHBORW_BLOB
		{
			public uint32 oszNamingContext;
			public uint32 oszSourceDsaDN;
			public uint32 oszSourceDsaAddress;
			public uint32 oszAsyncIntersiteTransportDN;
			public uint32 dwReplicaFlags;
			public uint32 dwReserved;
			public Guid uuidNamingContextObjGuid;
			public Guid uuidSourceDsaObjGuid;
			public Guid uuidSourceDsaInvocationID;
			public Guid uuidAsyncIntersiteTransportObjGuid;
			public int64 usnLastObjChangeSynced;
			public int64 usnAttributeFilter;
			public FILETIME ftimeLastSyncSuccess;
			public FILETIME ftimeLastSyncAttempt;
			public uint32 dwLastSyncResult;
			public uint32 cNumConsecutiveSyncFailures;
		}
		[CRepr]
		public struct DS_REPL_NEIGHBORSW
		{
			public uint32 cNumNeighbors;
			public uint32 dwReserved;
			public DS_REPL_NEIGHBORW[0] rgNeighbor;
		}
		[CRepr]
		public struct DS_REPL_CURSOR
		{
			public Guid uuidSourceDsaInvocationID;
			public int64 usnAttributeFilter;
		}
		[CRepr]
		public struct DS_REPL_CURSOR_2
		{
			public Guid uuidSourceDsaInvocationID;
			public int64 usnAttributeFilter;
			public FILETIME ftimeLastSyncSuccess;
		}
		[CRepr]
		public struct DS_REPL_CURSOR_3W
		{
			public Guid uuidSourceDsaInvocationID;
			public int64 usnAttributeFilter;
			public FILETIME ftimeLastSyncSuccess;
			public PWSTR pszSourceDsaDN;
		}
		[CRepr]
		public struct DS_REPL_CURSOR_BLOB
		{
			public Guid uuidSourceDsaInvocationID;
			public int64 usnAttributeFilter;
			public FILETIME ftimeLastSyncSuccess;
			public uint32 oszSourceDsaDN;
		}
		[CRepr]
		public struct DS_REPL_CURSORS
		{
			public uint32 cNumCursors;
			public uint32 dwReserved;
			public DS_REPL_CURSOR[0] rgCursor;
		}
		[CRepr]
		public struct DS_REPL_CURSORS_2
		{
			public uint32 cNumCursors;
			public uint32 dwEnumerationContext;
			public DS_REPL_CURSOR_2[0] rgCursor;
		}
		[CRepr]
		public struct DS_REPL_CURSORS_3W
		{
			public uint32 cNumCursors;
			public uint32 dwEnumerationContext;
			public DS_REPL_CURSOR_3W[0] rgCursor;
		}
		[CRepr]
		public struct DS_REPL_ATTR_META_DATA
		{
			public PWSTR pszAttributeName;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
		}
		[CRepr]
		public struct DS_REPL_ATTR_META_DATA_2
		{
			public PWSTR pszAttributeName;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public PWSTR pszLastOriginatingDsaDN;
		}
		[CRepr]
		public struct DS_REPL_ATTR_META_DATA_BLOB
		{
			public uint32 oszAttributeName;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public uint32 oszLastOriginatingDsaDN;
		}
		[CRepr]
		public struct DS_REPL_OBJ_META_DATA
		{
			public uint32 cNumEntries;
			public uint32 dwReserved;
			public DS_REPL_ATTR_META_DATA[0] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_OBJ_META_DATA_2
		{
			public uint32 cNumEntries;
			public uint32 dwReserved;
			public DS_REPL_ATTR_META_DATA_2[0] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_KCC_DSA_FAILUREW
		{
			public PWSTR pszDsaDN;
			public Guid uuidDsaObjGuid;
			public FILETIME ftimeFirstFailure;
			public uint32 cNumFailures;
			public uint32 dwLastResult;
		}
		[CRepr]
		public struct DS_REPL_KCC_DSA_FAILUREW_BLOB
		{
			public uint32 oszDsaDN;
			public Guid uuidDsaObjGuid;
			public FILETIME ftimeFirstFailure;
			public uint32 cNumFailures;
			public uint32 dwLastResult;
		}
		[CRepr]
		public struct DS_REPL_KCC_DSA_FAILURESW
		{
			public uint32 cNumEntries;
			public uint32 dwReserved;
			public DS_REPL_KCC_DSA_FAILUREW[0] rgDsaFailure;
		}
		[CRepr]
		public struct DS_REPL_OPW
		{
			public FILETIME ftimeEnqueued;
			public uint32 ulSerialNumber;
			public uint32 ulPriority;
			public DS_REPL_OP_TYPE OpType;
			public uint32 ulOptions;
			public PWSTR pszNamingContext;
			public PWSTR pszDsaDN;
			public PWSTR pszDsaAddress;
			public Guid uuidNamingContextObjGuid;
			public Guid uuidDsaObjGuid;
		}
		[CRepr]
		public struct DS_REPL_OPW_BLOB
		{
			public FILETIME ftimeEnqueued;
			public uint32 ulSerialNumber;
			public uint32 ulPriority;
			public DS_REPL_OP_TYPE OpType;
			public uint32 ulOptions;
			public uint32 oszNamingContext;
			public uint32 oszDsaDN;
			public uint32 oszDsaAddress;
			public Guid uuidNamingContextObjGuid;
			public Guid uuidDsaObjGuid;
		}
		[CRepr]
		public struct DS_REPL_PENDING_OPSW
		{
			public FILETIME ftimeCurrentOpStarted;
			public uint32 cNumPendingOps;
			public DS_REPL_OPW[0] rgPendingOp;
		}
		[CRepr]
		public struct DS_REPL_VALUE_META_DATA
		{
			public PWSTR pszAttributeName;
			public PWSTR pszObjectDn;
			public uint32 cbData;
			public uint8* pbData;
			public FILETIME ftimeDeleted;
			public FILETIME ftimeCreated;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
		}
		[CRepr]
		public struct DS_REPL_VALUE_META_DATA_2
		{
			public PWSTR pszAttributeName;
			public PWSTR pszObjectDn;
			public uint32 cbData;
			public uint8* pbData;
			public FILETIME ftimeDeleted;
			public FILETIME ftimeCreated;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public PWSTR pszLastOriginatingDsaDN;
		}
		[CRepr]
		public struct DS_REPL_VALUE_META_DATA_EXT
		{
			public PWSTR pszAttributeName;
			public PWSTR pszObjectDn;
			public uint32 cbData;
			public uint8* pbData;
			public FILETIME ftimeDeleted;
			public FILETIME ftimeCreated;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public PWSTR pszLastOriginatingDsaDN;
			public uint32 dwUserIdentifier;
			public uint32 dwPriorLinkState;
			public uint32 dwCurrentLinkState;
		}
		[CRepr]
		public struct DS_REPL_VALUE_META_DATA_BLOB
		{
			public uint32 oszAttributeName;
			public uint32 oszObjectDn;
			public uint32 cbData;
			public uint32 obData;
			public FILETIME ftimeDeleted;
			public FILETIME ftimeCreated;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public uint32 oszLastOriginatingDsaDN;
		}
		[CRepr]
		public struct DS_REPL_VALUE_META_DATA_BLOB_EXT
		{
			public uint32 oszAttributeName;
			public uint32 oszObjectDn;
			public uint32 cbData;
			public uint32 obData;
			public FILETIME ftimeDeleted;
			public FILETIME ftimeCreated;
			public uint32 dwVersion;
			public FILETIME ftimeLastOriginatingChange;
			public Guid uuidLastOriginatingDsaInvocationID;
			public int64 usnOriginatingChange;
			public int64 usnLocalChange;
			public uint32 oszLastOriginatingDsaDN;
			public uint32 dwUserIdentifier;
			public uint32 dwPriorLinkState;
			public uint32 dwCurrentLinkState;
		}
		[CRepr]
		public struct DS_REPL_ATTR_VALUE_META_DATA
		{
			public uint32 cNumEntries;
			public uint32 dwEnumerationContext;
			public DS_REPL_VALUE_META_DATA[0] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_ATTR_VALUE_META_DATA_2
		{
			public uint32 cNumEntries;
			public uint32 dwEnumerationContext;
			public DS_REPL_VALUE_META_DATA_2[0] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_ATTR_VALUE_META_DATA_EXT
		{
			public uint32 cNumEntries;
			public uint32 dwEnumerationContext;
			public DS_REPL_VALUE_META_DATA_EXT[0] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_QUEUE_STATISTICSW
		{
			public FILETIME ftimeCurrentOpStarted;
			public uint32 cNumPendingOps;
			public FILETIME ftimeOldestSync;
			public FILETIME ftimeOldestAdd;
			public FILETIME ftimeOldestMod;
			public FILETIME ftimeOldestDel;
			public FILETIME ftimeOldestUpdRefs;
		}
		[CRepr]
		public struct DSROLE_PRIMARY_DOMAIN_INFO_BASIC
		{
			public DSROLE_MACHINE_ROLE MachineRole;
			public uint32 Flags;
			public PWSTR DomainNameFlat;
			public PWSTR DomainNameDns;
			public PWSTR DomainForestName;
			public Guid DomainGuid;
		}
		[CRepr]
		public struct DSROLE_UPGRADE_STATUS_INFO
		{
			public uint32 OperationState;
			public DSROLE_SERVER_STATE PreviousServerState;
		}
		[CRepr]
		public struct DSROLE_OPERATION_STATE_INFO
		{
			public DSROLE_OPERATION_STATE OperationState;
		}
		[CRepr]
		public struct DOMAIN_CONTROLLER_INFOA
		{
			public PSTR DomainControllerName;
			public PSTR DomainControllerAddress;
			public uint32 DomainControllerAddressType;
			public Guid DomainGuid;
			public PSTR DomainName;
			public PSTR DnsForestName;
			public uint32 Flags;
			public PSTR DcSiteName;
			public PSTR ClientSiteName;
		}
		[CRepr]
		public struct DOMAIN_CONTROLLER_INFOW
		{
			public PWSTR DomainControllerName;
			public PWSTR DomainControllerAddress;
			public uint32 DomainControllerAddressType;
			public Guid DomainGuid;
			public PWSTR DomainName;
			public PWSTR DnsForestName;
			public uint32 Flags;
			public PWSTR DcSiteName;
			public PWSTR ClientSiteName;
		}
		[CRepr]
		public struct DS_DOMAIN_TRUSTSW
		{
			public PWSTR NetbiosDomainName;
			public PWSTR DnsDomainName;
			public uint32 Flags;
			public uint32 ParentIndex;
			public uint32 TrustType;
			public uint32 TrustAttributes;
			public PSID DomainSid;
			public Guid DomainGuid;
		}
		[CRepr]
		public struct DS_DOMAIN_TRUSTSA
		{
			public PSTR NetbiosDomainName;
			public PSTR DnsDomainName;
			public uint32 Flags;
			public uint32 ParentIndex;
			public uint32 TrustType;
			public uint32 TrustAttributes;
			public PSID DomainSid;
			public Guid DomainGuid;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_PropertyEntry = .(0x72d3edc2, 0xa4c4, 0x11d0, 0x85, 0x33, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_PropertyValue = .(0x7b9e38b0, 0xa97c, 0x11d0, 0x85, 0x34, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_AccessControlEntry = .(0xb75ac000, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_AccessControlList = .(0xb85ea052, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_SecurityDescriptor = .(0xb958f73c, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_LargeInteger = .(0x927971f5, 0x0939, 0x11d1, 0x8b, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
		public const Guid CLSID_NameTranslate = .(0x274fae1f, 0x3626, 0x11d1, 0xa3, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_CaseIgnoreList = .(0x15f88a55, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_FaxNumber = .(0xa5062215, 0x4681, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_NetAddress = .(0xb0b71247, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_OctetList = .(0x1241400f, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_Email = .(0x8f92a857, 0x478e, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_Path = .(0xb2538919, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_ReplicaPointer = .(0xf5d1badf, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_Timestamp = .(0xb2bed2eb, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_PostalAddress = .(0x0a75afcd, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_BackLink = .(0xfcbf906f, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_TypedName = .(0xb33143cb, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_Hold = .(0xb3ad3e13, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_Pathname = .(0x080d0d78, 0xf421, 0x11d0, 0xa3, 0x6e, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
		public const Guid CLSID_ADSystemInfo = .(0x50b6327f, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
		public const Guid CLSID_WinNTSystemInfo = .(0x66182ec4, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
		public const Guid CLSID_DNWithBinary = .(0x7e99c0a3, 0xf935, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
		public const Guid CLSID_DNWithString = .(0x334857cc, 0xf934, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
		public const Guid CLSID_ADsSecurityUtility = .(0xf270c64a, 0xffb8, 0x4ae4, 0x85, 0xfe, 0x3a, 0x75, 0xe5, 0x34, 0x79, 0x66);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IQueryForm : IUnknown
		{
			public const new Guid IID = .(0x8cfcee30, 0x39bd, 0x11d0, 0xb8, 0xd1, 0x00, 0xa0, 0x24, 0xab, 0x2d, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HKEY hkForm) mut => VT.Initialize(ref this, hkForm);
			public HRESULT AddForms(LPCQADDFORMSPROC pAddFormsProc, LPARAM lParam) mut => VT.AddForms(ref this, pAddFormsProc, lParam);
			public HRESULT AddPages(LPCQADDPAGESPROC pAddPagesProc, LPARAM lParam) mut => VT.AddPages(ref this, pAddPagesProc, lParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryForm self, HKEY hkForm) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryForm self, LPCQADDFORMSPROC pAddFormsProc, LPARAM lParam) AddForms;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryForm self, LPCQADDPAGESPROC pAddPagesProc, LPARAM lParam) AddPages;
			}
		}
		[CRepr]
		public struct IPersistQuery : IPersist
		{
			public const new Guid IID = .(0x1a3114b8, 0xa62e, 0x11d0, 0xa6, 0xc5, 0x00, 0xa0, 0xc9, 0x06, 0xaf, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteString(PWSTR pSection, PWSTR pValueName, PWSTR pValue) mut => VT.WriteString(ref this, pSection, pValueName, pValue);
			public HRESULT ReadString(PWSTR pSection, PWSTR pValueName, PWSTR pBuffer, int32 cchBuffer) mut => VT.ReadString(ref this, pSection, pValueName, pBuffer, cchBuffer);
			public HRESULT WriteInt(PWSTR pSection, PWSTR pValueName, int32 value) mut => VT.WriteInt(ref this, pSection, pValueName, value);
			public HRESULT ReadInt(PWSTR pSection, PWSTR pValueName, out int32 pValue) mut => VT.ReadInt(ref this, pSection, pValueName, out pValue);
			public HRESULT WriteStruct(PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) mut => VT.WriteStruct(ref this, pSection, pValueName, pStruct, cbStruct);
			public HRESULT ReadStruct(PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) mut => VT.ReadStruct(ref this, pSection, pValueName, pStruct, cbStruct);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, PWSTR pValue) WriteString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, PWSTR pBuffer, int32 cchBuffer) ReadString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, int32 value) WriteInt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, out int32 pValue) ReadInt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) WriteStruct;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self, PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) ReadStruct;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistQuery self) Clear;
			}
		}
		[CRepr]
		public struct ICommonQuery : IUnknown
		{
			public const new Guid IID = .(0xab50dec0, 0x6f1d, 0x11d0, 0xa1, 0xc4, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenQueryWindow(HWND hwndParent, out OPENQUERYWINDOW pQueryWnd, out IDataObject* ppDataObject) mut => VT.OpenQueryWindow(ref this, hwndParent, out pQueryWnd, out ppDataObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommonQuery self, HWND hwndParent, out OPENQUERYWINDOW pQueryWnd, out IDataObject* ppDataObject) OpenQueryWindow;
			}
		}
		[CRepr]
		public struct IADs : IDispatch
		{
			public const new Guid IID = .(0xfd8256d0, 0xfd15, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* retval) mut => VT.get_Name(ref this, retval);
			public HRESULT get_Class(BSTR* retval) mut => VT.get_Class(ref this, retval);
			public HRESULT get_GUID(BSTR* retval) mut => VT.get_GUID(ref this, retval);
			public HRESULT get_ADsPath(BSTR* retval) mut => VT.get_ADsPath(ref this, retval);
			public HRESULT get_Parent(BSTR* retval) mut => VT.get_Parent(ref this, retval);
			public HRESULT get_Schema(BSTR* retval) mut => VT.get_Schema(ref this, retval);
			public HRESULT GetInfo() mut => VT.GetInfo(ref this);
			public HRESULT SetInfo() mut => VT.SetInfo(ref this);
			public HRESULT Get(BSTR bstrName, out VARIANT pvProp) mut => VT.Get(ref this, bstrName, out pvProp);
			public HRESULT Put(BSTR bstrName, VARIANT vProp) mut => VT.Put(ref this, bstrName, vProp);
			public HRESULT GetEx(BSTR bstrName, out VARIANT pvProp) mut => VT.GetEx(ref this, bstrName, out pvProp);
			public HRESULT PutEx(int32 lnControlCode, BSTR bstrName, VARIANT vProp) mut => VT.PutEx(ref this, lnControlCode, bstrName, vProp);
			public HRESULT GetInfoEx(VARIANT vProperties, int32 lnReserved) mut => VT.GetInfoEx(ref this, vProperties, lnReserved);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_Class;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_GUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_ADsPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR* retval) get_Schema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self) SetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR bstrName, out VARIANT pvProp) Get;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR bstrName, VARIANT vProp) Put;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, BSTR bstrName, out VARIANT pvProp) GetEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, int32 lnControlCode, BSTR bstrName, VARIANT vProp) PutEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADs self, VARIANT vProperties, int32 lnReserved) GetInfoEx;
			}
		}
		[CRepr]
		public struct IADsContainer : IDispatch
		{
			public const new Guid IID = .(0x001677d0, 0xfd16, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);
			public HRESULT get__NewEnum(IUnknown** retval) mut => VT.get__NewEnum(ref this, retval);
			public HRESULT get_Filter(out VARIANT pVar) mut => VT.get_Filter(ref this, out pVar);
			public HRESULT put_Filter(VARIANT Var) mut => VT.put_Filter(ref this, Var);
			public HRESULT get_Hints(out VARIANT pvFilter) mut => VT.get_Hints(ref this, out pvFilter);
			public HRESULT put_Hints(VARIANT vHints) mut => VT.put_Hints(ref this, vHints);
			public HRESULT GetObject(BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) mut => VT.GetObject(ref this, ClassName, RelativeName, ppObject);
			public HRESULT Create(BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) mut => VT.Create(ref this, ClassName, RelativeName, ppObject);
			public HRESULT Delete(BSTR bstrClassName, BSTR bstrRelativeName) mut => VT.Delete(ref this, bstrClassName, bstrRelativeName);
			public HRESULT CopyHere(BSTR SourceName, BSTR NewName, IDispatch** ppObject) mut => VT.CopyHere(ref this, SourceName, NewName, ppObject);
			public HRESULT MoveHere(BSTR SourceName, BSTR NewName, IDispatch** ppObject) mut => VT.MoveHere(ref this, SourceName, NewName, ppObject);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, out int32 retval) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, IUnknown** retval) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, out VARIANT pVar) get_Filter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, VARIANT Var) put_Filter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, out VARIANT pvFilter) get_Hints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, VARIANT vHints) put_Hints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, BSTR bstrClassName, BSTR bstrRelativeName) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, BSTR SourceName, BSTR NewName, IDispatch** ppObject) CopyHere;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsContainer self, BSTR SourceName, BSTR NewName, IDispatch** ppObject) MoveHere;
			}
		}
		[CRepr]
		public struct IADsCollection : IDispatch
		{
			public const new Guid IID = .(0x72b945e0, 0x253b, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppEnumerator) mut => VT.get__NewEnum(ref this, ppEnumerator);
			public HRESULT Add(BSTR bstrName, VARIANT vItem) mut => VT.Add(ref this, bstrName, vItem);
			public HRESULT Remove(BSTR bstrItemToBeRemoved) mut => VT.Remove(ref this, bstrItemToBeRemoved);
			public HRESULT GetObject(BSTR bstrName, out VARIANT pvItem) mut => VT.GetObject(ref this, bstrName, out pvItem);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCollection self, IUnknown** ppEnumerator) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCollection self, BSTR bstrName, VARIANT vItem) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCollection self, BSTR bstrItemToBeRemoved) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCollection self, BSTR bstrName, out VARIANT pvItem) GetObject;
			}
		}
		[CRepr]
		public struct IADsMembers : IDispatch
		{
			public const new Guid IID = .(0x451a0030, 0x72ec, 0x11cf, 0xb0, 0x3b, 0x00, 0xaa, 0x00, 0x6e, 0x09, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get__NewEnum(IUnknown** ppEnumerator) mut => VT.get__NewEnum(ref this, ppEnumerator);
			public HRESULT get_Filter(out VARIANT pvFilter) mut => VT.get_Filter(ref this, out pvFilter);
			public HRESULT put_Filter(VARIANT pvFilter) mut => VT.put_Filter(ref this, pvFilter);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsMembers self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsMembers self, IUnknown** ppEnumerator) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsMembers self, out VARIANT pvFilter) get_Filter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsMembers self, VARIANT pvFilter) put_Filter;
			}
		}
		[CRepr]
		public struct IADsPropertyList : IDispatch
		{
			public const new Guid IID = .(0xc6f602b6, 0x8f69, 0x11d0, 0x85, 0x28, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyCount(out int32 plCount) mut => VT.get_PropertyCount(ref this, out plCount);
			public HRESULT Next(out VARIANT pVariant) mut => VT.Next(ref this, out pVariant);
			public HRESULT Skip(int32 cElements) mut => VT.Skip(ref this, cElements);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Item(VARIANT varIndex, out VARIANT pVariant) mut => VT.Item(ref this, varIndex, out pVariant);
			public HRESULT GetPropertyItem(BSTR bstrName, int32 lnADsType, out VARIANT pVariant) mut => VT.GetPropertyItem(ref this, bstrName, lnADsType, out pVariant);
			public HRESULT PutPropertyItem(VARIANT varData) mut => VT.PutPropertyItem(ref this, varData);
			public HRESULT ResetPropertyItem(VARIANT varEntry) mut => VT.ResetPropertyItem(ref this, varEntry);
			public HRESULT PurgePropertyList() mut => VT.PurgePropertyList(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, out int32 plCount) get_PropertyCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, out VARIANT pVariant) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, int32 cElements) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, VARIANT varIndex, out VARIANT pVariant) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, BSTR bstrName, int32 lnADsType, out VARIANT pVariant) GetPropertyItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, VARIANT varData) PutPropertyItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self, VARIANT varEntry) ResetPropertyItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyList self) PurgePropertyList;
			}
		}
		[CRepr]
		public struct IADsPropertyEntry : IDispatch
		{
			public const new Guid IID = .(0x05792c8e, 0x941f, 0x11d0, 0x85, 0x29, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT get_Name(BSTR* retval) mut => VT.get_Name(ref this, retval);
			public HRESULT put_Name(BSTR bstrName) mut => VT.put_Name(ref this, bstrName);
			public HRESULT get_ADsType(out int32 retval) mut => VT.get_ADsType(ref this, out retval);
			public HRESULT put_ADsType(int32 lnADsType) mut => VT.put_ADsType(ref this, lnADsType);
			public HRESULT get_ControlCode(out int32 retval) mut => VT.get_ControlCode(ref this, out retval);
			public HRESULT put_ControlCode(int32 lnControlCode) mut => VT.put_ControlCode(ref this, lnControlCode);
			public HRESULT get_Values(out VARIANT retval) mut => VT.get_Values(ref this, out retval);
			public HRESULT put_Values(VARIANT vValues) mut => VT.put_Values(ref this, vValues);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, BSTR* retval) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, BSTR bstrName) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, out int32 retval) get_ADsType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, int32 lnADsType) put_ADsType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, out int32 retval) get_ControlCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, int32 lnControlCode) put_ControlCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, out VARIANT retval) get_Values;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyEntry self, VARIANT vValues) put_Values;
			}
		}
		[CRepr]
		public struct IADsPropertyValue : IDispatch
		{
			public const new Guid IID = .(0x79fa9ad0, 0xa97c, 0x11d0, 0x85, 0x34, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT get_ADsType(out int32 retval) mut => VT.get_ADsType(ref this, out retval);
			public HRESULT put_ADsType(int32 lnADsType) mut => VT.put_ADsType(ref this, lnADsType);
			public HRESULT get_DNString(BSTR* retval) mut => VT.get_DNString(ref this, retval);
			public HRESULT put_DNString(BSTR bstrDNString) mut => VT.put_DNString(ref this, bstrDNString);
			public HRESULT get_CaseExactString(BSTR* retval) mut => VT.get_CaseExactString(ref this, retval);
			public HRESULT put_CaseExactString(BSTR bstrCaseExactString) mut => VT.put_CaseExactString(ref this, bstrCaseExactString);
			public HRESULT get_CaseIgnoreString(BSTR* retval) mut => VT.get_CaseIgnoreString(ref this, retval);
			public HRESULT put_CaseIgnoreString(BSTR bstrCaseIgnoreString) mut => VT.put_CaseIgnoreString(ref this, bstrCaseIgnoreString);
			public HRESULT get_PrintableString(BSTR* retval) mut => VT.get_PrintableString(ref this, retval);
			public HRESULT put_PrintableString(BSTR bstrPrintableString) mut => VT.put_PrintableString(ref this, bstrPrintableString);
			public HRESULT get_NumericString(BSTR* retval) mut => VT.get_NumericString(ref this, retval);
			public HRESULT put_NumericString(BSTR bstrNumericString) mut => VT.put_NumericString(ref this, bstrNumericString);
			public HRESULT get_Boolean(out int32 retval) mut => VT.get_Boolean(ref this, out retval);
			public HRESULT put_Boolean(int32 lnBoolean) mut => VT.put_Boolean(ref this, lnBoolean);
			public HRESULT get_Integer(out int32 retval) mut => VT.get_Integer(ref this, out retval);
			public HRESULT put_Integer(int32 lnInteger) mut => VT.put_Integer(ref this, lnInteger);
			public HRESULT get_OctetString(out VARIANT retval) mut => VT.get_OctetString(ref this, out retval);
			public HRESULT put_OctetString(VARIANT vOctetString) mut => VT.put_OctetString(ref this, vOctetString);
			public HRESULT get_SecurityDescriptor(IDispatch** retval) mut => VT.get_SecurityDescriptor(ref this, retval);
			public HRESULT put_SecurityDescriptor(IDispatch* pSecurityDescriptor) mut => VT.put_SecurityDescriptor(ref this, pSecurityDescriptor);
			public HRESULT get_LargeInteger(IDispatch** retval) mut => VT.get_LargeInteger(ref this, retval);
			public HRESULT put_LargeInteger(IDispatch* pLargeInteger) mut => VT.put_LargeInteger(ref this, pLargeInteger);
			public HRESULT get_UTCTime(out double retval) mut => VT.get_UTCTime(ref this, out retval);
			public HRESULT put_UTCTime(double daUTCTime) mut => VT.put_UTCTime(ref this, daUTCTime);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, out int32 retval) get_ADsType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, int32 lnADsType) put_ADsType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR* retval) get_DNString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR bstrDNString) put_DNString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR* retval) get_CaseExactString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR bstrCaseExactString) put_CaseExactString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR* retval) get_CaseIgnoreString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR bstrCaseIgnoreString) put_CaseIgnoreString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR* retval) get_PrintableString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR bstrPrintableString) put_PrintableString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR* retval) get_NumericString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, BSTR bstrNumericString) put_NumericString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, out int32 retval) get_Boolean;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, int32 lnBoolean) put_Boolean;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, out int32 retval) get_Integer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, int32 lnInteger) put_Integer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, out VARIANT retval) get_OctetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, VARIANT vOctetString) put_OctetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, IDispatch** retval) get_SecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, IDispatch* pSecurityDescriptor) put_SecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, IDispatch** retval) get_LargeInteger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, IDispatch* pLargeInteger) put_LargeInteger;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, out double retval) get_UTCTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue self, double daUTCTime) put_UTCTime;
			}
		}
		[CRepr]
		public struct IADsPropertyValue2 : IDispatch
		{
			public const new Guid IID = .(0x306e831c, 0x5bc7, 0x11d1, 0xa3, 0xb8, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectProperty(out int32 lnADsType, out VARIANT pvProp) mut => VT.GetObjectProperty(ref this, out lnADsType, out pvProp);
			public HRESULT PutObjectProperty(int32 lnADsType, VARIANT vProp) mut => VT.PutObjectProperty(ref this, lnADsType, vProp);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue2 self, out int32 lnADsType, out VARIANT pvProp) GetObjectProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPropertyValue2 self, int32 lnADsType, VARIANT vProp) PutObjectProperty;
			}
		}
		[CRepr]
		public struct IPrivateDispatch : IUnknown
		{
			public const new Guid IID = .(0x86ab4bbe, 0x65f6, 0x11d1, 0x8c, 0x13, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ADSIInitializeDispatchManager(int32 dwExtensionId) mut => VT.ADSIInitializeDispatchManager(ref this, dwExtensionId);
			public HRESULT ADSIGetTypeInfoCount(out uint32 pctinfo) mut => VT.ADSIGetTypeInfoCount(ref this, out pctinfo);
			public HRESULT ADSIGetTypeInfo(uint32 itinfo, uint32 lcid, ITypeInfo** pptinfo) mut => VT.ADSIGetTypeInfo(ref this, itinfo, lcid, pptinfo);
			public HRESULT ADSIGetIDsOfNames(in Guid riid, uint16** rgszNames, uint32 cNames, uint32 lcid, out int32 rgdispid) mut => VT.ADSIGetIDsOfNames(ref this, riid, rgszNames, cNames, lcid, out rgdispid);
			public HRESULT ADSIInvoke(int32 dispidMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pvarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) mut => VT.ADSIInvoke(ref this, dispidMember, riid, lcid, wFlags, ref pdispparams, out pvarResult, out pexcepinfo, out puArgErr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateDispatch self, int32 dwExtensionId) ADSIInitializeDispatchManager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateDispatch self, out uint32 pctinfo) ADSIGetTypeInfoCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateDispatch self, uint32 itinfo, uint32 lcid, ITypeInfo** pptinfo) ADSIGetTypeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateDispatch self, in Guid riid, uint16** rgszNames, uint32 cNames, uint32 lcid, out int32 rgdispid) ADSIGetIDsOfNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateDispatch self, int32 dispidMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pvarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) ADSIInvoke;
			}
		}
		[CRepr]
		public struct IPrivateUnknown : IUnknown
		{
			public const new Guid IID = .(0x89126bab, 0x6ead, 0x11d1, 0x8c, 0x18, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ADSIInitializeObject(BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved) mut => VT.ADSIInitializeObject(ref this, lpszUserName, lpszPassword, lnReserved);
			public HRESULT ADSIReleaseObject() mut => VT.ADSIReleaseObject(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateUnknown self, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved) ADSIInitializeObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrivateUnknown self) ADSIReleaseObject;
			}
		}
		[CRepr]
		public struct IADsExtension : IUnknown
		{
			public const new Guid IID = .(0x3d35553c, 0xd2b0, 0x11d1, 0xb1, 0x7b, 0x00, 0x00, 0xf8, 0x75, 0x93, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Operate(uint32 dwCode, VARIANT varData1, VARIANT varData2, VARIANT varData3) mut => VT.Operate(ref this, dwCode, varData1, varData2, varData3);
			public HRESULT PrivateGetIDsOfNames(in Guid riid, uint16** rgszNames, uint32 cNames, uint32 lcid, out int32 rgDispid) mut => VT.PrivateGetIDsOfNames(ref this, riid, rgszNames, cNames, lcid, out rgDispid);
			public HRESULT PrivateInvoke(int32 dispidMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pvarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) mut => VT.PrivateInvoke(ref this, dispidMember, riid, lcid, wFlags, ref pdispparams, out pvarResult, out pexcepinfo, out puArgErr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsExtension self, uint32 dwCode, VARIANT varData1, VARIANT varData2, VARIANT varData3) Operate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsExtension self, in Guid riid, uint16** rgszNames, uint32 cNames, uint32 lcid, out int32 rgDispid) PrivateGetIDsOfNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsExtension self, int32 dispidMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pvarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) PrivateInvoke;
			}
		}
		[CRepr]
		public struct IADsDeleteOps : IDispatch
		{
			public const new Guid IID = .(0xb2bd0902, 0x8878, 0x11d1, 0x8c, 0x21, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeleteObject(int32 lnFlags) mut => VT.DeleteObject(ref this, lnFlags);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDeleteOps self, int32 lnFlags) DeleteObject;
			}
		}
		[CRepr]
		public struct IADsNamespaces : IADs
		{
			public const new Guid IID = .(0x28b96ba0, 0xb330, 0x11cf, 0xa9, 0xad, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DefaultContainer(BSTR* retval) mut => VT.get_DefaultContainer(ref this, retval);
			public HRESULT put_DefaultContainer(BSTR bstrDefaultContainer) mut => VT.put_DefaultContainer(ref this, bstrDefaultContainer);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNamespaces self, BSTR* retval) get_DefaultContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNamespaces self, BSTR bstrDefaultContainer) put_DefaultContainer;
			}
		}
		[CRepr]
		public struct IADsClass : IADs
		{
			public const new Guid IID = .(0xc8f93dd0, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrimaryInterface(BSTR* retval) mut => VT.get_PrimaryInterface(ref this, retval);
			public HRESULT get_CLSID(BSTR* retval) mut => VT.get_CLSID(ref this, retval);
			public HRESULT put_CLSID(BSTR bstrCLSID) mut => VT.put_CLSID(ref this, bstrCLSID);
			public HRESULT get_OID(BSTR* retval) mut => VT.get_OID(ref this, retval);
			public HRESULT put_OID(BSTR bstrOID) mut => VT.put_OID(ref this, bstrOID);
			public HRESULT get_Abstract(out int16 retval) mut => VT.get_Abstract(ref this, out retval);
			public HRESULT put_Abstract(int16 fAbstract) mut => VT.put_Abstract(ref this, fAbstract);
			public HRESULT get_Auxiliary(out int16 retval) mut => VT.get_Auxiliary(ref this, out retval);
			public HRESULT put_Auxiliary(int16 fAuxiliary) mut => VT.put_Auxiliary(ref this, fAuxiliary);
			public HRESULT get_MandatoryProperties(out VARIANT retval) mut => VT.get_MandatoryProperties(ref this, out retval);
			public HRESULT put_MandatoryProperties(VARIANT vMandatoryProperties) mut => VT.put_MandatoryProperties(ref this, vMandatoryProperties);
			public HRESULT get_OptionalProperties(out VARIANT retval) mut => VT.get_OptionalProperties(ref this, out retval);
			public HRESULT put_OptionalProperties(VARIANT vOptionalProperties) mut => VT.put_OptionalProperties(ref this, vOptionalProperties);
			public HRESULT get_NamingProperties(out VARIANT retval) mut => VT.get_NamingProperties(ref this, out retval);
			public HRESULT put_NamingProperties(VARIANT vNamingProperties) mut => VT.put_NamingProperties(ref this, vNamingProperties);
			public HRESULT get_DerivedFrom(out VARIANT retval) mut => VT.get_DerivedFrom(ref this, out retval);
			public HRESULT put_DerivedFrom(VARIANT vDerivedFrom) mut => VT.put_DerivedFrom(ref this, vDerivedFrom);
			public HRESULT get_AuxDerivedFrom(out VARIANT retval) mut => VT.get_AuxDerivedFrom(ref this, out retval);
			public HRESULT put_AuxDerivedFrom(VARIANT vAuxDerivedFrom) mut => VT.put_AuxDerivedFrom(ref this, vAuxDerivedFrom);
			public HRESULT get_PossibleSuperiors(out VARIANT retval) mut => VT.get_PossibleSuperiors(ref this, out retval);
			public HRESULT put_PossibleSuperiors(VARIANT vPossibleSuperiors) mut => VT.put_PossibleSuperiors(ref this, vPossibleSuperiors);
			public HRESULT get_Containment(out VARIANT retval) mut => VT.get_Containment(ref this, out retval);
			public HRESULT put_Containment(VARIANT vContainment) mut => VT.put_Containment(ref this, vContainment);
			public HRESULT get_Container(out int16 retval) mut => VT.get_Container(ref this, out retval);
			public HRESULT put_Container(int16 fContainer) mut => VT.put_Container(ref this, fContainer);
			public HRESULT get_HelpFileName(BSTR* retval) mut => VT.get_HelpFileName(ref this, retval);
			public HRESULT put_HelpFileName(BSTR bstrHelpFileName) mut => VT.put_HelpFileName(ref this, bstrHelpFileName);
			public HRESULT get_HelpFileContext(out int32 retval) mut => VT.get_HelpFileContext(ref this, out retval);
			public HRESULT put_HelpFileContext(int32 lnHelpFileContext) mut => VT.put_HelpFileContext(ref this, lnHelpFileContext);
			public HRESULT Qualifiers(IADsCollection** ppQualifiers) mut => VT.Qualifiers(ref this, ppQualifiers);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR* retval) get_PrimaryInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR* retval) get_CLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR bstrCLSID) put_CLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR* retval) get_OID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR bstrOID) put_OID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out int16 retval) get_Abstract;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, int16 fAbstract) put_Abstract;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out int16 retval) get_Auxiliary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, int16 fAuxiliary) put_Auxiliary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_MandatoryProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vMandatoryProperties) put_MandatoryProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_OptionalProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vOptionalProperties) put_OptionalProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_NamingProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vNamingProperties) put_NamingProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_DerivedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vDerivedFrom) put_DerivedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_AuxDerivedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vAuxDerivedFrom) put_AuxDerivedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_PossibleSuperiors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vPossibleSuperiors) put_PossibleSuperiors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out VARIANT retval) get_Containment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, VARIANT vContainment) put_Containment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out int16 retval) get_Container;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, int16 fContainer) put_Container;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR* retval) get_HelpFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, BSTR bstrHelpFileName) put_HelpFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, out int32 retval) get_HelpFileContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, int32 lnHelpFileContext) put_HelpFileContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsClass self, IADsCollection** ppQualifiers) Qualifiers;
			}
		}
		[CRepr]
		public struct IADsProperty : IADs
		{
			public const new Guid IID = .(0xc8f93dd3, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OID(BSTR* retval) mut => VT.get_OID(ref this, retval);
			public HRESULT put_OID(BSTR bstrOID) mut => VT.put_OID(ref this, bstrOID);
			public HRESULT get_Syntax(BSTR* retval) mut => VT.get_Syntax(ref this, retval);
			public HRESULT put_Syntax(BSTR bstrSyntax) mut => VT.put_Syntax(ref this, bstrSyntax);
			public HRESULT get_MaxRange(out int32 retval) mut => VT.get_MaxRange(ref this, out retval);
			public HRESULT put_MaxRange(int32 lnMaxRange) mut => VT.put_MaxRange(ref this, lnMaxRange);
			public HRESULT get_MinRange(out int32 retval) mut => VT.get_MinRange(ref this, out retval);
			public HRESULT put_MinRange(int32 lnMinRange) mut => VT.put_MinRange(ref this, lnMinRange);
			public HRESULT get_MultiValued(out int16 retval) mut => VT.get_MultiValued(ref this, out retval);
			public HRESULT put_MultiValued(int16 fMultiValued) mut => VT.put_MultiValued(ref this, fMultiValued);
			public HRESULT Qualifiers(IADsCollection** ppQualifiers) mut => VT.Qualifiers(ref this, ppQualifiers);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, BSTR* retval) get_OID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, BSTR bstrOID) put_OID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, BSTR* retval) get_Syntax;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, BSTR bstrSyntax) put_Syntax;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, out int32 retval) get_MaxRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, int32 lnMaxRange) put_MaxRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, out int32 retval) get_MinRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, int32 lnMinRange) put_MinRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, out int16 retval) get_MultiValued;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, int16 fMultiValued) put_MultiValued;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsProperty self, IADsCollection** ppQualifiers) Qualifiers;
			}
		}
		[CRepr]
		public struct IADsSyntax : IADs
		{
			public const new Guid IID = .(0xc8f93dd2, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OleAutoDataType(out int32 retval) mut => VT.get_OleAutoDataType(ref this, out retval);
			public HRESULT put_OleAutoDataType(int32 lnOleAutoDataType) mut => VT.put_OleAutoDataType(ref this, lnOleAutoDataType);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSyntax self, out int32 retval) get_OleAutoDataType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSyntax self, int32 lnOleAutoDataType) put_OleAutoDataType;
			}
		}
		[CRepr]
		public struct IADsLocality : IADs
		{
			public const new Guid IID = .(0xa05e03a2, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_LocalityName(BSTR* retval) mut => VT.get_LocalityName(ref this, retval);
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut => VT.put_LocalityName(ref this, bstrLocalityName);
			public HRESULT get_PostalAddress(BSTR* retval) mut => VT.get_PostalAddress(ref this, retval);
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut => VT.put_PostalAddress(ref this, bstrPostalAddress);
			public HRESULT get_SeeAlso(out VARIANT retval) mut => VT.get_SeeAlso(ref this, out retval);
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut => VT.put_SeeAlso(ref this, vSeeAlso);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR* retval) get_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR bstrLocalityName) put_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR* retval) get_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, out VARIANT retval) get_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLocality self, VARIANT vSeeAlso) put_SeeAlso;
			}
		}
		[CRepr]
		public struct IADsO : IADs
		{
			public const new Guid IID = .(0xa1cd2dc6, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_LocalityName(BSTR* retval) mut => VT.get_LocalityName(ref this, retval);
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut => VT.put_LocalityName(ref this, bstrLocalityName);
			public HRESULT get_PostalAddress(BSTR* retval) mut => VT.get_PostalAddress(ref this, retval);
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut => VT.put_PostalAddress(ref this, bstrPostalAddress);
			public HRESULT get_TelephoneNumber(BSTR* retval) mut => VT.get_TelephoneNumber(ref this, retval);
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut => VT.put_TelephoneNumber(ref this, bstrTelephoneNumber);
			public HRESULT get_FaxNumber(BSTR* retval) mut => VT.get_FaxNumber(ref this, retval);
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut => VT.put_FaxNumber(ref this, bstrFaxNumber);
			public HRESULT get_SeeAlso(out VARIANT retval) mut => VT.get_SeeAlso(ref this, out retval);
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut => VT.put_SeeAlso(ref this, vSeeAlso);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR* retval) get_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR bstrLocalityName) put_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR* retval) get_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR* retval) get_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR* retval) get_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, out VARIANT retval) get_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsO self, VARIANT vSeeAlso) put_SeeAlso;
			}
		}
		[CRepr]
		public struct IADsOU : IADs
		{
			public const new Guid IID = .(0xa2f733b8, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_LocalityName(BSTR* retval) mut => VT.get_LocalityName(ref this, retval);
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut => VT.put_LocalityName(ref this, bstrLocalityName);
			public HRESULT get_PostalAddress(BSTR* retval) mut => VT.get_PostalAddress(ref this, retval);
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut => VT.put_PostalAddress(ref this, bstrPostalAddress);
			public HRESULT get_TelephoneNumber(BSTR* retval) mut => VT.get_TelephoneNumber(ref this, retval);
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut => VT.put_TelephoneNumber(ref this, bstrTelephoneNumber);
			public HRESULT get_FaxNumber(BSTR* retval) mut => VT.get_FaxNumber(ref this, retval);
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut => VT.put_FaxNumber(ref this, bstrFaxNumber);
			public HRESULT get_SeeAlso(out VARIANT retval) mut => VT.get_SeeAlso(ref this, out retval);
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut => VT.put_SeeAlso(ref this, vSeeAlso);
			public HRESULT get_BusinessCategory(BSTR* retval) mut => VT.get_BusinessCategory(ref this, retval);
			public HRESULT put_BusinessCategory(BSTR bstrBusinessCategory) mut => VT.put_BusinessCategory(ref this, bstrBusinessCategory);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrLocalityName) put_LocalityName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, out VARIANT retval) get_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, VARIANT vSeeAlso) put_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR* retval) get_BusinessCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOU self, BSTR bstrBusinessCategory) put_BusinessCategory;
			}
		}
		[CRepr]
		public struct IADsDomain : IADs
		{
			public const new Guid IID = .(0x00e4c220, 0xfd16, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsWorkgroup(out int16 retval) mut => VT.get_IsWorkgroup(ref this, out retval);
			public HRESULT get_MinPasswordLength(out int32 retval) mut => VT.get_MinPasswordLength(ref this, out retval);
			public HRESULT put_MinPasswordLength(int32 lnMinPasswordLength) mut => VT.put_MinPasswordLength(ref this, lnMinPasswordLength);
			public HRESULT get_MinPasswordAge(out int32 retval) mut => VT.get_MinPasswordAge(ref this, out retval);
			public HRESULT put_MinPasswordAge(int32 lnMinPasswordAge) mut => VT.put_MinPasswordAge(ref this, lnMinPasswordAge);
			public HRESULT get_MaxPasswordAge(out int32 retval) mut => VT.get_MaxPasswordAge(ref this, out retval);
			public HRESULT put_MaxPasswordAge(int32 lnMaxPasswordAge) mut => VT.put_MaxPasswordAge(ref this, lnMaxPasswordAge);
			public HRESULT get_MaxBadPasswordsAllowed(out int32 retval) mut => VT.get_MaxBadPasswordsAllowed(ref this, out retval);
			public HRESULT put_MaxBadPasswordsAllowed(int32 lnMaxBadPasswordsAllowed) mut => VT.put_MaxBadPasswordsAllowed(ref this, lnMaxBadPasswordsAllowed);
			public HRESULT get_PasswordHistoryLength(out int32 retval) mut => VT.get_PasswordHistoryLength(ref this, out retval);
			public HRESULT put_PasswordHistoryLength(int32 lnPasswordHistoryLength) mut => VT.put_PasswordHistoryLength(ref this, lnPasswordHistoryLength);
			public HRESULT get_PasswordAttributes(out int32 retval) mut => VT.get_PasswordAttributes(ref this, out retval);
			public HRESULT put_PasswordAttributes(int32 lnPasswordAttributes) mut => VT.put_PasswordAttributes(ref this, lnPasswordAttributes);
			public HRESULT get_AutoUnlockInterval(out int32 retval) mut => VT.get_AutoUnlockInterval(ref this, out retval);
			public HRESULT put_AutoUnlockInterval(int32 lnAutoUnlockInterval) mut => VT.put_AutoUnlockInterval(ref this, lnAutoUnlockInterval);
			public HRESULT get_LockoutObservationInterval(out int32 retval) mut => VT.get_LockoutObservationInterval(ref this, out retval);
			public HRESULT put_LockoutObservationInterval(int32 lnLockoutObservationInterval) mut => VT.put_LockoutObservationInterval(ref this, lnLockoutObservationInterval);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int16 retval) get_IsWorkgroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_MinPasswordLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnMinPasswordLength) put_MinPasswordLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_MinPasswordAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnMinPasswordAge) put_MinPasswordAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_MaxPasswordAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnMaxPasswordAge) put_MaxPasswordAge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_MaxBadPasswordsAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnMaxBadPasswordsAllowed) put_MaxBadPasswordsAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_PasswordHistoryLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnPasswordHistoryLength) put_PasswordHistoryLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_PasswordAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnPasswordAttributes) put_PasswordAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_AutoUnlockInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnAutoUnlockInterval) put_AutoUnlockInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, out int32 retval) get_LockoutObservationInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDomain self, int32 lnLockoutObservationInterval) put_LockoutObservationInterval;
			}
		}
		[CRepr]
		public struct IADsComputer : IADs
		{
			public const new Guid IID = .(0xefe3cc70, 0x1d9f, 0x11cf, 0xb1, 0xf3, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ComputerID(BSTR* retval) mut => VT.get_ComputerID(ref this, retval);
			public HRESULT get_Site(BSTR* retval) mut => VT.get_Site(ref this, retval);
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_Location(BSTR* retval) mut => VT.get_Location(ref this, retval);
			public HRESULT put_Location(BSTR bstrLocation) mut => VT.put_Location(ref this, bstrLocation);
			public HRESULT get_PrimaryUser(BSTR* retval) mut => VT.get_PrimaryUser(ref this, retval);
			public HRESULT put_PrimaryUser(BSTR bstrPrimaryUser) mut => VT.put_PrimaryUser(ref this, bstrPrimaryUser);
			public HRESULT get_Owner(BSTR* retval) mut => VT.get_Owner(ref this, retval);
			public HRESULT put_Owner(BSTR bstrOwner) mut => VT.put_Owner(ref this, bstrOwner);
			public HRESULT get_Division(BSTR* retval) mut => VT.get_Division(ref this, retval);
			public HRESULT put_Division(BSTR bstrDivision) mut => VT.put_Division(ref this, bstrDivision);
			public HRESULT get_Department(BSTR* retval) mut => VT.get_Department(ref this, retval);
			public HRESULT put_Department(BSTR bstrDepartment) mut => VT.put_Department(ref this, bstrDepartment);
			public HRESULT get_Role(BSTR* retval) mut => VT.get_Role(ref this, retval);
			public HRESULT put_Role(BSTR bstrRole) mut => VT.put_Role(ref this, bstrRole);
			public HRESULT get_OperatingSystem(BSTR* retval) mut => VT.get_OperatingSystem(ref this, retval);
			public HRESULT put_OperatingSystem(BSTR bstrOperatingSystem) mut => VT.put_OperatingSystem(ref this, bstrOperatingSystem);
			public HRESULT get_OperatingSystemVersion(BSTR* retval) mut => VT.get_OperatingSystemVersion(ref this, retval);
			public HRESULT put_OperatingSystemVersion(BSTR bstrOperatingSystemVersion) mut => VT.put_OperatingSystemVersion(ref this, bstrOperatingSystemVersion);
			public HRESULT get_Model(BSTR* retval) mut => VT.get_Model(ref this, retval);
			public HRESULT put_Model(BSTR bstrModel) mut => VT.put_Model(ref this, bstrModel);
			public HRESULT get_Processor(BSTR* retval) mut => VT.get_Processor(ref this, retval);
			public HRESULT put_Processor(BSTR bstrProcessor) mut => VT.put_Processor(ref this, bstrProcessor);
			public HRESULT get_ProcessorCount(BSTR* retval) mut => VT.get_ProcessorCount(ref this, retval);
			public HRESULT put_ProcessorCount(BSTR bstrProcessorCount) mut => VT.put_ProcessorCount(ref this, bstrProcessorCount);
			public HRESULT get_MemorySize(BSTR* retval) mut => VT.get_MemorySize(ref this, retval);
			public HRESULT put_MemorySize(BSTR bstrMemorySize) mut => VT.put_MemorySize(ref this, bstrMemorySize);
			public HRESULT get_StorageCapacity(BSTR* retval) mut => VT.get_StorageCapacity(ref this, retval);
			public HRESULT put_StorageCapacity(BSTR bstrStorageCapacity) mut => VT.put_StorageCapacity(ref this, bstrStorageCapacity);
			public HRESULT get_NetAddresses(out VARIANT retval) mut => VT.get_NetAddresses(ref this, out retval);
			public HRESULT put_NetAddresses(VARIANT vNetAddresses) mut => VT.put_NetAddresses(ref this, vNetAddresses);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_ComputerID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Site;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Location;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrLocation) put_Location;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_PrimaryUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrPrimaryUser) put_PrimaryUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Owner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrOwner) put_Owner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Division;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrDivision) put_Division;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrDepartment) put_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Role;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrRole) put_Role;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_OperatingSystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrOperatingSystem) put_OperatingSystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_OperatingSystemVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrOperatingSystemVersion) put_OperatingSystemVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Model;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrModel) put_Model;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_Processor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrProcessor) put_Processor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_ProcessorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrProcessorCount) put_ProcessorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_MemorySize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrMemorySize) put_MemorySize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR* retval) get_StorageCapacity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, BSTR bstrStorageCapacity) put_StorageCapacity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, out VARIANT retval) get_NetAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputer self, VARIANT vNetAddresses) put_NetAddresses;
			}
		}
		[CRepr]
		public struct IADsComputerOperations : IADs
		{
			public const new Guid IID = .(0xef497680, 0x1d9f, 0x11cf, 0xb1, 0xf3, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Status(IDispatch** ppObject) mut => VT.Status(ref this, ppObject);
			public HRESULT Shutdown(int16 bReboot) mut => VT.Shutdown(ref this, bReboot);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputerOperations self, IDispatch** ppObject) Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsComputerOperations self, int16 bReboot) Shutdown;
			}
		}
		[CRepr]
		public struct IADsGroup : IADs
		{
			public const new Guid IID = .(0x27636b00, 0x410f, 0x11cf, 0xb1, 0xff, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT Members(IADsMembers** ppMembers) mut => VT.Members(ref this, ppMembers);
			public HRESULT IsMember(BSTR bstrMember, out int16 bMember) mut => VT.IsMember(ref this, bstrMember, out bMember);
			public HRESULT Add(BSTR bstrNewItem) mut => VT.Add(ref this, bstrNewItem);
			public HRESULT Remove(BSTR bstrItemToBeRemoved) mut => VT.Remove(ref this, bstrItemToBeRemoved);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, IADsMembers** ppMembers) Members;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, BSTR bstrMember, out int16 bMember) IsMember;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, BSTR bstrNewItem) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsGroup self, BSTR bstrItemToBeRemoved) Remove;
			}
		}
		[CRepr]
		public struct IADsUser : IADs
		{
			public const new Guid IID = .(0x3e37e320, 0x17e2, 0x11cf, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BadLoginAddress(BSTR* retval) mut => VT.get_BadLoginAddress(ref this, retval);
			public HRESULT get_BadLoginCount(out int32 retval) mut => VT.get_BadLoginCount(ref this, out retval);
			public HRESULT get_LastLogin(out double retval) mut => VT.get_LastLogin(ref this, out retval);
			public HRESULT get_LastLogoff(out double retval) mut => VT.get_LastLogoff(ref this, out retval);
			public HRESULT get_LastFailedLogin(out double retval) mut => VT.get_LastFailedLogin(ref this, out retval);
			public HRESULT get_PasswordLastChanged(out double retval) mut => VT.get_PasswordLastChanged(ref this, out retval);
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_Division(BSTR* retval) mut => VT.get_Division(ref this, retval);
			public HRESULT put_Division(BSTR bstrDivision) mut => VT.put_Division(ref this, bstrDivision);
			public HRESULT get_Department(BSTR* retval) mut => VT.get_Department(ref this, retval);
			public HRESULT put_Department(BSTR bstrDepartment) mut => VT.put_Department(ref this, bstrDepartment);
			public HRESULT get_EmployeeID(BSTR* retval) mut => VT.get_EmployeeID(ref this, retval);
			public HRESULT put_EmployeeID(BSTR bstrEmployeeID) mut => VT.put_EmployeeID(ref this, bstrEmployeeID);
			public HRESULT get_FullName(BSTR* retval) mut => VT.get_FullName(ref this, retval);
			public HRESULT put_FullName(BSTR bstrFullName) mut => VT.put_FullName(ref this, bstrFullName);
			public HRESULT get_FirstName(BSTR* retval) mut => VT.get_FirstName(ref this, retval);
			public HRESULT put_FirstName(BSTR bstrFirstName) mut => VT.put_FirstName(ref this, bstrFirstName);
			public HRESULT get_LastName(BSTR* retval) mut => VT.get_LastName(ref this, retval);
			public HRESULT put_LastName(BSTR bstrLastName) mut => VT.put_LastName(ref this, bstrLastName);
			public HRESULT get_OtherName(BSTR* retval) mut => VT.get_OtherName(ref this, retval);
			public HRESULT put_OtherName(BSTR bstrOtherName) mut => VT.put_OtherName(ref this, bstrOtherName);
			public HRESULT get_NamePrefix(BSTR* retval) mut => VT.get_NamePrefix(ref this, retval);
			public HRESULT put_NamePrefix(BSTR bstrNamePrefix) mut => VT.put_NamePrefix(ref this, bstrNamePrefix);
			public HRESULT get_NameSuffix(BSTR* retval) mut => VT.get_NameSuffix(ref this, retval);
			public HRESULT put_NameSuffix(BSTR bstrNameSuffix) mut => VT.put_NameSuffix(ref this, bstrNameSuffix);
			public HRESULT get_Title(BSTR* retval) mut => VT.get_Title(ref this, retval);
			public HRESULT put_Title(BSTR bstrTitle) mut => VT.put_Title(ref this, bstrTitle);
			public HRESULT get_Manager(BSTR* retval) mut => VT.get_Manager(ref this, retval);
			public HRESULT put_Manager(BSTR bstrManager) mut => VT.put_Manager(ref this, bstrManager);
			public HRESULT get_TelephoneHome(out VARIANT retval) mut => VT.get_TelephoneHome(ref this, out retval);
			public HRESULT put_TelephoneHome(VARIANT vTelephoneHome) mut => VT.put_TelephoneHome(ref this, vTelephoneHome);
			public HRESULT get_TelephoneMobile(out VARIANT retval) mut => VT.get_TelephoneMobile(ref this, out retval);
			public HRESULT put_TelephoneMobile(VARIANT vTelephoneMobile) mut => VT.put_TelephoneMobile(ref this, vTelephoneMobile);
			public HRESULT get_TelephoneNumber(out VARIANT retval) mut => VT.get_TelephoneNumber(ref this, out retval);
			public HRESULT put_TelephoneNumber(VARIANT vTelephoneNumber) mut => VT.put_TelephoneNumber(ref this, vTelephoneNumber);
			public HRESULT get_TelephonePager(out VARIANT retval) mut => VT.get_TelephonePager(ref this, out retval);
			public HRESULT put_TelephonePager(VARIANT vTelephonePager) mut => VT.put_TelephonePager(ref this, vTelephonePager);
			public HRESULT get_FaxNumber(out VARIANT retval) mut => VT.get_FaxNumber(ref this, out retval);
			public HRESULT put_FaxNumber(VARIANT vFaxNumber) mut => VT.put_FaxNumber(ref this, vFaxNumber);
			public HRESULT get_OfficeLocations(out VARIANT retval) mut => VT.get_OfficeLocations(ref this, out retval);
			public HRESULT put_OfficeLocations(VARIANT vOfficeLocations) mut => VT.put_OfficeLocations(ref this, vOfficeLocations);
			public HRESULT get_PostalAddresses(out VARIANT retval) mut => VT.get_PostalAddresses(ref this, out retval);
			public HRESULT put_PostalAddresses(VARIANT vPostalAddresses) mut => VT.put_PostalAddresses(ref this, vPostalAddresses);
			public HRESULT get_PostalCodes(out VARIANT retval) mut => VT.get_PostalCodes(ref this, out retval);
			public HRESULT put_PostalCodes(VARIANT vPostalCodes) mut => VT.put_PostalCodes(ref this, vPostalCodes);
			public HRESULT get_SeeAlso(out VARIANT retval) mut => VT.get_SeeAlso(ref this, out retval);
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut => VT.put_SeeAlso(ref this, vSeeAlso);
			public HRESULT get_AccountDisabled(out int16 retval) mut => VT.get_AccountDisabled(ref this, out retval);
			public HRESULT put_AccountDisabled(int16 fAccountDisabled) mut => VT.put_AccountDisabled(ref this, fAccountDisabled);
			public HRESULT get_AccountExpirationDate(out double retval) mut => VT.get_AccountExpirationDate(ref this, out retval);
			public HRESULT put_AccountExpirationDate(double daAccountExpirationDate) mut => VT.put_AccountExpirationDate(ref this, daAccountExpirationDate);
			public HRESULT get_GraceLoginsAllowed(out int32 retval) mut => VT.get_GraceLoginsAllowed(ref this, out retval);
			public HRESULT put_GraceLoginsAllowed(int32 lnGraceLoginsAllowed) mut => VT.put_GraceLoginsAllowed(ref this, lnGraceLoginsAllowed);
			public HRESULT get_GraceLoginsRemaining(out int32 retval) mut => VT.get_GraceLoginsRemaining(ref this, out retval);
			public HRESULT put_GraceLoginsRemaining(int32 lnGraceLoginsRemaining) mut => VT.put_GraceLoginsRemaining(ref this, lnGraceLoginsRemaining);
			public HRESULT get_IsAccountLocked(out int16 retval) mut => VT.get_IsAccountLocked(ref this, out retval);
			public HRESULT put_IsAccountLocked(int16 fIsAccountLocked) mut => VT.put_IsAccountLocked(ref this, fIsAccountLocked);
			public HRESULT get_LoginHours(out VARIANT retval) mut => VT.get_LoginHours(ref this, out retval);
			public HRESULT put_LoginHours(VARIANT vLoginHours) mut => VT.put_LoginHours(ref this, vLoginHours);
			public HRESULT get_LoginWorkstations(out VARIANT retval) mut => VT.get_LoginWorkstations(ref this, out retval);
			public HRESULT put_LoginWorkstations(VARIANT vLoginWorkstations) mut => VT.put_LoginWorkstations(ref this, vLoginWorkstations);
			public HRESULT get_MaxLogins(out int32 retval) mut => VT.get_MaxLogins(ref this, out retval);
			public HRESULT put_MaxLogins(int32 lnMaxLogins) mut => VT.put_MaxLogins(ref this, lnMaxLogins);
			public HRESULT get_MaxStorage(out int32 retval) mut => VT.get_MaxStorage(ref this, out retval);
			public HRESULT put_MaxStorage(int32 lnMaxStorage) mut => VT.put_MaxStorage(ref this, lnMaxStorage);
			public HRESULT get_PasswordExpirationDate(out double retval) mut => VT.get_PasswordExpirationDate(ref this, out retval);
			public HRESULT put_PasswordExpirationDate(double daPasswordExpirationDate) mut => VT.put_PasswordExpirationDate(ref this, daPasswordExpirationDate);
			public HRESULT get_PasswordMinimumLength(out int32 retval) mut => VT.get_PasswordMinimumLength(ref this, out retval);
			public HRESULT put_PasswordMinimumLength(int32 lnPasswordMinimumLength) mut => VT.put_PasswordMinimumLength(ref this, lnPasswordMinimumLength);
			public HRESULT get_PasswordRequired(out int16 retval) mut => VT.get_PasswordRequired(ref this, out retval);
			public HRESULT put_PasswordRequired(int16 fPasswordRequired) mut => VT.put_PasswordRequired(ref this, fPasswordRequired);
			public HRESULT get_RequireUniquePassword(out int16 retval) mut => VT.get_RequireUniquePassword(ref this, out retval);
			public HRESULT put_RequireUniquePassword(int16 fRequireUniquePassword) mut => VT.put_RequireUniquePassword(ref this, fRequireUniquePassword);
			public HRESULT get_EmailAddress(BSTR* retval) mut => VT.get_EmailAddress(ref this, retval);
			public HRESULT put_EmailAddress(BSTR bstrEmailAddress) mut => VT.put_EmailAddress(ref this, bstrEmailAddress);
			public HRESULT get_HomeDirectory(BSTR* retval) mut => VT.get_HomeDirectory(ref this, retval);
			public HRESULT put_HomeDirectory(BSTR bstrHomeDirectory) mut => VT.put_HomeDirectory(ref this, bstrHomeDirectory);
			public HRESULT get_Languages(out VARIANT retval) mut => VT.get_Languages(ref this, out retval);
			public HRESULT put_Languages(VARIANT vLanguages) mut => VT.put_Languages(ref this, vLanguages);
			public HRESULT get_Profile(BSTR* retval) mut => VT.get_Profile(ref this, retval);
			public HRESULT put_Profile(BSTR bstrProfile) mut => VT.put_Profile(ref this, bstrProfile);
			public HRESULT get_LoginScript(BSTR* retval) mut => VT.get_LoginScript(ref this, retval);
			public HRESULT put_LoginScript(BSTR bstrLoginScript) mut => VT.put_LoginScript(ref this, bstrLoginScript);
			public HRESULT get_Picture(out VARIANT retval) mut => VT.get_Picture(ref this, out retval);
			public HRESULT put_Picture(VARIANT vPicture) mut => VT.put_Picture(ref this, vPicture);
			public HRESULT get_HomePage(BSTR* retval) mut => VT.get_HomePage(ref this, retval);
			public HRESULT put_HomePage(BSTR bstrHomePage) mut => VT.put_HomePage(ref this, bstrHomePage);
			public HRESULT Groups(IADsMembers** ppGroups) mut => VT.Groups(ref this, ppGroups);
			public HRESULT SetPassword(BSTR NewPassword) mut => VT.SetPassword(ref this, NewPassword);
			public HRESULT ChangePassword(BSTR bstrOldPassword, BSTR bstrNewPassword) mut => VT.ChangePassword(ref this, bstrOldPassword, bstrNewPassword);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_BadLoginAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_BadLoginCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_LastLogin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_LastLogoff;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_LastFailedLogin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_PasswordLastChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Division;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrDivision) put_Division;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrDepartment) put_Department;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_EmployeeID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrEmployeeID) put_EmployeeID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_FullName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrFullName) put_FullName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_FirstName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrFirstName) put_FirstName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_LastName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrLastName) put_LastName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_OtherName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrOtherName) put_OtherName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_NamePrefix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrNamePrefix) put_NamePrefix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_NameSuffix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrNameSuffix) put_NameSuffix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrTitle) put_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Manager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrManager) put_Manager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_TelephoneHome;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vTelephoneHome) put_TelephoneHome;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_TelephoneMobile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vTelephoneMobile) put_TelephoneMobile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vTelephoneNumber) put_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_TelephonePager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vTelephonePager) put_TelephonePager;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vFaxNumber) put_FaxNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_OfficeLocations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vOfficeLocations) put_OfficeLocations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_PostalAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vPostalAddresses) put_PostalAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_PostalCodes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vPostalCodes) put_PostalCodes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vSeeAlso) put_SeeAlso;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int16 retval) get_AccountDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int16 fAccountDisabled) put_AccountDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_AccountExpirationDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, double daAccountExpirationDate) put_AccountExpirationDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_GraceLoginsAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int32 lnGraceLoginsAllowed) put_GraceLoginsAllowed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_GraceLoginsRemaining;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int32 lnGraceLoginsRemaining) put_GraceLoginsRemaining;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int16 retval) get_IsAccountLocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int16 fIsAccountLocked) put_IsAccountLocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_LoginHours;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vLoginHours) put_LoginHours;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_LoginWorkstations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vLoginWorkstations) put_LoginWorkstations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_MaxLogins;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int32 lnMaxLogins) put_MaxLogins;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_MaxStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int32 lnMaxStorage) put_MaxStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out double retval) get_PasswordExpirationDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, double daPasswordExpirationDate) put_PasswordExpirationDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int32 retval) get_PasswordMinimumLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int32 lnPasswordMinimumLength) put_PasswordMinimumLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int16 retval) get_PasswordRequired;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int16 fPasswordRequired) put_PasswordRequired;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out int16 retval) get_RequireUniquePassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, int16 fRequireUniquePassword) put_RequireUniquePassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_EmailAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrEmailAddress) put_EmailAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_HomeDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrHomeDirectory) put_HomeDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_Languages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vLanguages) put_Languages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrProfile) put_Profile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_LoginScript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrLoginScript) put_LoginScript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, out VARIANT retval) get_Picture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, VARIANT vPicture) put_Picture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR* retval) get_HomePage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrHomePage) put_HomePage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, IADsMembers** ppGroups) Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR NewPassword) SetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsUser self, BSTR bstrOldPassword, BSTR bstrNewPassword) ChangePassword;
			}
		}
		[CRepr]
		public struct IADsPrintQueue : IADs
		{
			public const new Guid IID = .(0xb15160d0, 0x1226, 0x11cf, 0xa9, 0x85, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrinterPath(BSTR* retval) mut => VT.get_PrinterPath(ref this, retval);
			public HRESULT put_PrinterPath(BSTR bstrPrinterPath) mut => VT.put_PrinterPath(ref this, bstrPrinterPath);
			public HRESULT get_Model(BSTR* retval) mut => VT.get_Model(ref this, retval);
			public HRESULT put_Model(BSTR bstrModel) mut => VT.put_Model(ref this, bstrModel);
			public HRESULT get_Datatype(BSTR* retval) mut => VT.get_Datatype(ref this, retval);
			public HRESULT put_Datatype(BSTR bstrDatatype) mut => VT.put_Datatype(ref this, bstrDatatype);
			public HRESULT get_PrintProcessor(BSTR* retval) mut => VT.get_PrintProcessor(ref this, retval);
			public HRESULT put_PrintProcessor(BSTR bstrPrintProcessor) mut => VT.put_PrintProcessor(ref this, bstrPrintProcessor);
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_Location(BSTR* retval) mut => VT.get_Location(ref this, retval);
			public HRESULT put_Location(BSTR bstrLocation) mut => VT.put_Location(ref this, bstrLocation);
			public HRESULT get_StartTime(out double retval) mut => VT.get_StartTime(ref this, out retval);
			public HRESULT put_StartTime(double daStartTime) mut => VT.put_StartTime(ref this, daStartTime);
			public HRESULT get_UntilTime(out double retval) mut => VT.get_UntilTime(ref this, out retval);
			public HRESULT put_UntilTime(double daUntilTime) mut => VT.put_UntilTime(ref this, daUntilTime);
			public HRESULT get_DefaultJobPriority(out int32 retval) mut => VT.get_DefaultJobPriority(ref this, out retval);
			public HRESULT put_DefaultJobPriority(int32 lnDefaultJobPriority) mut => VT.put_DefaultJobPriority(ref this, lnDefaultJobPriority);
			public HRESULT get_Priority(out int32 retval) mut => VT.get_Priority(ref this, out retval);
			public HRESULT put_Priority(int32 lnPriority) mut => VT.put_Priority(ref this, lnPriority);
			public HRESULT get_BannerPage(BSTR* retval) mut => VT.get_BannerPage(ref this, retval);
			public HRESULT put_BannerPage(BSTR bstrBannerPage) mut => VT.put_BannerPage(ref this, bstrBannerPage);
			public HRESULT get_PrintDevices(out VARIANT retval) mut => VT.get_PrintDevices(ref this, out retval);
			public HRESULT put_PrintDevices(VARIANT vPrintDevices) mut => VT.put_PrintDevices(ref this, vPrintDevices);
			public HRESULT get_NetAddresses(out VARIANT retval) mut => VT.get_NetAddresses(ref this, out retval);
			public HRESULT put_NetAddresses(VARIANT vNetAddresses) mut => VT.put_NetAddresses(ref this, vNetAddresses);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_PrinterPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrPrinterPath) put_PrinterPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_Model;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrModel) put_Model;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_Datatype;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrDatatype) put_Datatype;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_PrintProcessor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrPrintProcessor) put_PrintProcessor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_Location;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrLocation) put_Location;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out double retval) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, double daStartTime) put_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out double retval) get_UntilTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, double daUntilTime) put_UntilTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out int32 retval) get_DefaultJobPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, int32 lnDefaultJobPriority) put_DefaultJobPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out int32 retval) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, int32 lnPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR* retval) get_BannerPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, BSTR bstrBannerPage) put_BannerPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out VARIANT retval) get_PrintDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, VARIANT vPrintDevices) put_PrintDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, out VARIANT retval) get_NetAddresses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueue self, VARIANT vNetAddresses) put_NetAddresses;
			}
		}
		[CRepr]
		public struct IADsPrintQueueOperations : IADs
		{
			public const new Guid IID = .(0x124be5c0, 0x156e, 0x11cf, 0xa9, 0x86, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out int32 retval) mut => VT.get_Status(ref this, out retval);
			public HRESULT PrintJobs(IADsCollection** pObject) mut => VT.PrintJobs(ref this, pObject);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT Purge() mut => VT.Purge(ref this);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueueOperations self, out int32 retval) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueueOperations self, IADsCollection** pObject) PrintJobs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueueOperations self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueueOperations self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintQueueOperations self) Purge;
			}
		}
		[CRepr]
		public struct IADsPrintJob : IADs
		{
			public const new Guid IID = .(0x32fb6780, 0x1ed0, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HostPrintQueue(BSTR* retval) mut => VT.get_HostPrintQueue(ref this, retval);
			public HRESULT get_User(BSTR* retval) mut => VT.get_User(ref this, retval);
			public HRESULT get_UserPath(BSTR* retval) mut => VT.get_UserPath(ref this, retval);
			public HRESULT get_TimeSubmitted(out double retval) mut => VT.get_TimeSubmitted(ref this, out retval);
			public HRESULT get_TotalPages(out int32 retval) mut => VT.get_TotalPages(ref this, out retval);
			public HRESULT get_Size(out int32 retval) mut => VT.get_Size(ref this, out retval);
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_Priority(out int32 retval) mut => VT.get_Priority(ref this, out retval);
			public HRESULT put_Priority(int32 lnPriority) mut => VT.put_Priority(ref this, lnPriority);
			public HRESULT get_StartTime(out double retval) mut => VT.get_StartTime(ref this, out retval);
			public HRESULT put_StartTime(double daStartTime) mut => VT.put_StartTime(ref this, daStartTime);
			public HRESULT get_UntilTime(out double retval) mut => VT.get_UntilTime(ref this, out retval);
			public HRESULT put_UntilTime(double daUntilTime) mut => VT.put_UntilTime(ref this, daUntilTime);
			public HRESULT get_Notify(BSTR* retval) mut => VT.get_Notify(ref this, retval);
			public HRESULT put_Notify(BSTR bstrNotify) mut => VT.put_Notify(ref this, bstrNotify);
			public HRESULT get_NotifyPath(BSTR* retval) mut => VT.get_NotifyPath(ref this, retval);
			public HRESULT put_NotifyPath(BSTR bstrNotifyPath) mut => VT.put_NotifyPath(ref this, bstrNotifyPath);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_HostPrintQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_User;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_UserPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out double retval) get_TimeSubmitted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out int32 retval) get_TotalPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out int32 retval) get_Size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out int32 retval) get_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, int32 lnPriority) put_Priority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out double retval) get_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, double daStartTime) put_StartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, out double retval) get_UntilTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, double daUntilTime) put_UntilTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR bstrNotify) put_Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR* retval) get_NotifyPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJob self, BSTR bstrNotifyPath) put_NotifyPath;
			}
		}
		[CRepr]
		public struct IADsPrintJobOperations : IADs
		{
			public const new Guid IID = .(0x9a52db30, 0x1ecf, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out int32 retval) mut => VT.get_Status(ref this, out retval);
			public HRESULT get_TimeElapsed(out int32 retval) mut => VT.get_TimeElapsed(ref this, out retval);
			public HRESULT get_PagesPrinted(out int32 retval) mut => VT.get_PagesPrinted(ref this, out retval);
			public HRESULT get_Position(out int32 retval) mut => VT.get_Position(ref this, out retval);
			public HRESULT put_Position(int32 lnPosition) mut => VT.put_Position(ref this, lnPosition);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self, out int32 retval) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self, out int32 retval) get_TimeElapsed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self, out int32 retval) get_PagesPrinted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self, out int32 retval) get_Position;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self, int32 lnPosition) put_Position;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPrintJobOperations self) Resume;
			}
		}
		[CRepr]
		public struct IADsService : IADs
		{
			public const new Guid IID = .(0x68af66e0, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HostComputer(BSTR* retval) mut => VT.get_HostComputer(ref this, retval);
			public HRESULT put_HostComputer(BSTR bstrHostComputer) mut => VT.put_HostComputer(ref this, bstrHostComputer);
			public HRESULT get_DisplayName(BSTR* retval) mut => VT.get_DisplayName(ref this, retval);
			public HRESULT put_DisplayName(BSTR bstrDisplayName) mut => VT.put_DisplayName(ref this, bstrDisplayName);
			public HRESULT get_Version(BSTR* retval) mut => VT.get_Version(ref this, retval);
			public HRESULT put_Version(BSTR bstrVersion) mut => VT.put_Version(ref this, bstrVersion);
			public HRESULT get_ServiceType(out int32 retval) mut => VT.get_ServiceType(ref this, out retval);
			public HRESULT put_ServiceType(int32 lnServiceType) mut => VT.put_ServiceType(ref this, lnServiceType);
			public HRESULT get_StartType(out int32 retval) mut => VT.get_StartType(ref this, out retval);
			public HRESULT put_StartType(int32 lnStartType) mut => VT.put_StartType(ref this, lnStartType);
			public HRESULT get_Path(BSTR* retval) mut => VT.get_Path(ref this, retval);
			public HRESULT put_Path(BSTR bstrPath) mut => VT.put_Path(ref this, bstrPath);
			public HRESULT get_StartupParameters(BSTR* retval) mut => VT.get_StartupParameters(ref this, retval);
			public HRESULT put_StartupParameters(BSTR bstrStartupParameters) mut => VT.put_StartupParameters(ref this, bstrStartupParameters);
			public HRESULT get_ErrorControl(out int32 retval) mut => VT.get_ErrorControl(ref this, out retval);
			public HRESULT put_ErrorControl(int32 lnErrorControl) mut => VT.put_ErrorControl(ref this, lnErrorControl);
			public HRESULT get_LoadOrderGroup(BSTR* retval) mut => VT.get_LoadOrderGroup(ref this, retval);
			public HRESULT put_LoadOrderGroup(BSTR bstrLoadOrderGroup) mut => VT.put_LoadOrderGroup(ref this, bstrLoadOrderGroup);
			public HRESULT get_ServiceAccountName(BSTR* retval) mut => VT.get_ServiceAccountName(ref this, retval);
			public HRESULT put_ServiceAccountName(BSTR bstrServiceAccountName) mut => VT.put_ServiceAccountName(ref this, bstrServiceAccountName);
			public HRESULT get_ServiceAccountPath(BSTR* retval) mut => VT.get_ServiceAccountPath(ref this, retval);
			public HRESULT put_ServiceAccountPath(BSTR bstrServiceAccountPath) mut => VT.put_ServiceAccountPath(ref this, bstrServiceAccountPath);
			public HRESULT get_Dependencies(out VARIANT retval) mut => VT.get_Dependencies(ref this, out retval);
			public HRESULT put_Dependencies(VARIANT vDependencies) mut => VT.put_Dependencies(ref this, vDependencies);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_HostComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrHostComputer) put_HostComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrDisplayName) put_DisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrVersion) put_Version;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, out int32 retval) get_ServiceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, int32 lnServiceType) put_ServiceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, out int32 retval) get_StartType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, int32 lnStartType) put_StartType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrPath) put_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_StartupParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrStartupParameters) put_StartupParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, out int32 retval) get_ErrorControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, int32 lnErrorControl) put_ErrorControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_LoadOrderGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrLoadOrderGroup) put_LoadOrderGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_ServiceAccountName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrServiceAccountName) put_ServiceAccountName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR* retval) get_ServiceAccountPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, BSTR bstrServiceAccountPath) put_ServiceAccountPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, out VARIANT retval) get_Dependencies;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsService self, VARIANT vDependencies) put_Dependencies;
			}
		}
		[CRepr]
		public struct IADsServiceOperations : IADs
		{
			public const new Guid IID = .(0x5d7b33f0, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(out int32 retval) mut => VT.get_Status(ref this, out retval);
			public HRESULT Start() mut => VT.Start(ref this);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Continue() mut => VT.Continue(ref this);
			public HRESULT SetPassword(BSTR bstrNewPassword) mut => VT.SetPassword(ref this, bstrNewPassword);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self, out int32 retval) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self) Continue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsServiceOperations self, BSTR bstrNewPassword) SetPassword;
			}
		}
		[CRepr]
		public struct IADsFileService : IADsService
		{
			public const new Guid IID = .(0xa89d1900, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_MaxUserCount(out int32 retval) mut => VT.get_MaxUserCount(ref this, out retval);
			public HRESULT put_MaxUserCount(int32 lnMaxUserCount) mut => VT.put_MaxUserCount(ref this, lnMaxUserCount);

			[CRepr]
			public struct VTable : IADsService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileService self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileService self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileService self, out int32 retval) get_MaxUserCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileService self, int32 lnMaxUserCount) put_MaxUserCount;
			}
		}
		[CRepr]
		public struct IADsFileServiceOperations : IADsServiceOperations
		{
			public const new Guid IID = .(0xa02ded10, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Sessions(IADsCollection** ppSessions) mut => VT.Sessions(ref this, ppSessions);
			public HRESULT Resources(IADsCollection** ppResources) mut => VT.Resources(ref this, ppResources);

			[CRepr]
			public struct VTable : IADsServiceOperations.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileServiceOperations self, IADsCollection** ppSessions) Sessions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileServiceOperations self, IADsCollection** ppResources) Resources;
			}
		}
		[CRepr]
		public struct IADsFileShare : IADs
		{
			public const new Guid IID = .(0xeb6dcaf0, 0x4b83, 0x11cf, 0xa9, 0x95, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentUserCount(out int32 retval) mut => VT.get_CurrentUserCount(ref this, out retval);
			public HRESULT get_Description(BSTR* retval) mut => VT.get_Description(ref this, retval);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_HostComputer(BSTR* retval) mut => VT.get_HostComputer(ref this, retval);
			public HRESULT put_HostComputer(BSTR bstrHostComputer) mut => VT.put_HostComputer(ref this, bstrHostComputer);
			public HRESULT get_Path(BSTR* retval) mut => VT.get_Path(ref this, retval);
			public HRESULT put_Path(BSTR bstrPath) mut => VT.put_Path(ref this, bstrPath);
			public HRESULT get_MaxUserCount(out int32 retval) mut => VT.get_MaxUserCount(ref this, out retval);
			public HRESULT put_MaxUserCount(int32 lnMaxUserCount) mut => VT.put_MaxUserCount(ref this, lnMaxUserCount);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, out int32 retval) get_CurrentUserCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR* retval) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR* retval) get_HostComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR bstrHostComputer) put_HostComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR* retval) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, BSTR bstrPath) put_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, out int32 retval) get_MaxUserCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFileShare self, int32 lnMaxUserCount) put_MaxUserCount;
			}
		}
		[CRepr]
		public struct IADsSession : IADs
		{
			public const new Guid IID = .(0x398b7da0, 0x4aab, 0x11cf, 0xae, 0x2c, 0x00, 0xaa, 0x00, 0x6e, 0xbf, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_User(BSTR* retval) mut => VT.get_User(ref this, retval);
			public HRESULT get_UserPath(BSTR* retval) mut => VT.get_UserPath(ref this, retval);
			public HRESULT get_Computer(BSTR* retval) mut => VT.get_Computer(ref this, retval);
			public HRESULT get_ComputerPath(BSTR* retval) mut => VT.get_ComputerPath(ref this, retval);
			public HRESULT get_ConnectTime(out int32 retval) mut => VT.get_ConnectTime(ref this, out retval);
			public HRESULT get_IdleTime(out int32 retval) mut => VT.get_IdleTime(ref this, out retval);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, BSTR* retval) get_User;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, BSTR* retval) get_UserPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, BSTR* retval) get_Computer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, BSTR* retval) get_ComputerPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, out int32 retval) get_ConnectTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSession self, out int32 retval) get_IdleTime;
			}
		}
		[CRepr]
		public struct IADsResource : IADs
		{
			public const new Guid IID = .(0x34a05b20, 0x4aab, 0x11cf, 0xae, 0x2c, 0x00, 0xaa, 0x00, 0x6e, 0xbf, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_User(BSTR* retval) mut => VT.get_User(ref this, retval);
			public HRESULT get_UserPath(BSTR* retval) mut => VT.get_UserPath(ref this, retval);
			public HRESULT get_Path(BSTR* retval) mut => VT.get_Path(ref this, retval);
			public HRESULT get_LockCount(out int32 retval) mut => VT.get_LockCount(ref this, out retval);

			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsResource self, BSTR* retval) get_User;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsResource self, BSTR* retval) get_UserPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsResource self, BSTR* retval) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsResource self, out int32 retval) get_LockCount;
			}
		}
		[CRepr]
		public struct IADsOpenDSObject : IDispatch
		{
			public const new Guid IID = .(0xddf2891e, 0x0f9c, 0x11d0, 0x8a, 0xd4, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenDSObject(BSTR lpszDNName, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved, IDispatch** ppOleDsObj) mut => VT.OpenDSObject(ref this, lpszDNName, lpszUserName, lpszPassword, lnReserved, ppOleDsObj);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOpenDSObject self, BSTR lpszDNName, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved, IDispatch** ppOleDsObj) OpenDSObject;
			}
		}
		[CRepr]
		public struct IDirectoryObject : IUnknown
		{
			public const new Guid IID = .(0xe798de2c, 0x22e4, 0x11d0, 0x84, 0xfe, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectInformation(ADS_OBJECT_INFO** ppObjInfo) mut => VT.GetObjectInformation(ref this, ppObjInfo);
			public HRESULT GetObjectAttributes(PWSTR* pAttributeNames, uint32 dwNumberAttributes, ADS_ATTR_INFO** ppAttributeEntries, out uint32 pdwNumAttributesReturned) mut => VT.GetObjectAttributes(ref this, pAttributeNames, dwNumberAttributes, ppAttributeEntries, out pdwNumAttributesReturned);
			public HRESULT SetObjectAttributes(ref ADS_ATTR_INFO pAttributeEntries, uint32 dwNumAttributes, out uint32 pdwNumAttributesModified) mut => VT.SetObjectAttributes(ref this, ref pAttributeEntries, dwNumAttributes, out pdwNumAttributesModified);
			public HRESULT CreateDSObject(PWSTR pszRDNName, ref ADS_ATTR_INFO pAttributeEntries, uint32 dwNumAttributes, IDispatch** ppObject) mut => VT.CreateDSObject(ref this, pszRDNName, ref pAttributeEntries, dwNumAttributes, ppObject);
			public HRESULT DeleteDSObject(PWSTR pszRDNName) mut => VT.DeleteDSObject(ref this, pszRDNName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectoryObject self, ADS_OBJECT_INFO** ppObjInfo) GetObjectInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectoryObject self, PWSTR* pAttributeNames, uint32 dwNumberAttributes, ADS_ATTR_INFO** ppAttributeEntries, out uint32 pdwNumAttributesReturned) GetObjectAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectoryObject self, ref ADS_ATTR_INFO pAttributeEntries, uint32 dwNumAttributes, out uint32 pdwNumAttributesModified) SetObjectAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectoryObject self, PWSTR pszRDNName, ref ADS_ATTR_INFO pAttributeEntries, uint32 dwNumAttributes, IDispatch** ppObject) CreateDSObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectoryObject self, PWSTR pszRDNName) DeleteDSObject;
			}
		}
		[CRepr]
		public struct IDirectorySearch : IUnknown
		{
			public const new Guid IID = .(0x109ba8ec, 0x92f0, 0x11d0, 0xa7, 0x90, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSearchPreference(ref ads_searchpref_info pSearchPrefs, uint32 dwNumPrefs) mut => VT.SetSearchPreference(ref this, ref pSearchPrefs, dwNumPrefs);
			public HRESULT ExecuteSearch(PWSTR pszSearchFilter, PWSTR* pAttributeNames, uint32 dwNumberAttributes, int* phSearchResult) mut => VT.ExecuteSearch(ref this, pszSearchFilter, pAttributeNames, dwNumberAttributes, phSearchResult);
			public HRESULT AbandonSearch(int phSearchResult) mut => VT.AbandonSearch(ref this, phSearchResult);
			public HRESULT GetFirstRow(int hSearchResult) mut => VT.GetFirstRow(ref this, hSearchResult);
			public HRESULT GetNextRow(int hSearchResult) mut => VT.GetNextRow(ref this, hSearchResult);
			public HRESULT GetPreviousRow(int hSearchResult) mut => VT.GetPreviousRow(ref this, hSearchResult);
			public HRESULT GetNextColumnName(int hSearchHandle, PWSTR* ppszColumnName) mut => VT.GetNextColumnName(ref this, hSearchHandle, ppszColumnName);
			public HRESULT GetColumn(int hSearchResult, PWSTR szColumnName, out ads_search_column pSearchColumn) mut => VT.GetColumn(ref this, hSearchResult, szColumnName, out pSearchColumn);
			public HRESULT FreeColumn(ref ads_search_column pSearchColumn) mut => VT.FreeColumn(ref this, ref pSearchColumn);
			public HRESULT CloseSearchHandle(int hSearchResult) mut => VT.CloseSearchHandle(ref this, hSearchResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, ref ads_searchpref_info pSearchPrefs, uint32 dwNumPrefs) SetSearchPreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, PWSTR pszSearchFilter, PWSTR* pAttributeNames, uint32 dwNumberAttributes, int* phSearchResult) ExecuteSearch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int phSearchResult) AbandonSearch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchResult) GetFirstRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchResult) GetNextRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchResult) GetPreviousRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchHandle, PWSTR* ppszColumnName) GetNextColumnName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchResult, PWSTR szColumnName, out ads_search_column pSearchColumn) GetColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, ref ads_search_column pSearchColumn) FreeColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySearch self, int hSearchResult) CloseSearchHandle;
			}
		}
		[CRepr]
		public struct IDirectorySchemaMgmt : IUnknown
		{
			public const new Guid IID = .(0x75db3b9c, 0xa4d8, 0x11d0, 0xa7, 0x9c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumAttributes(PWSTR* ppszAttrNames, uint32 dwNumAttributes, ADS_ATTR_DEF** ppAttrDefinition, ref uint32 pdwNumAttributes) mut => VT.EnumAttributes(ref this, ppszAttrNames, dwNumAttributes, ppAttrDefinition, ref pdwNumAttributes);
			public HRESULT CreateAttributeDefinition(PWSTR pszAttributeName, ref ADS_ATTR_DEF pAttributeDefinition) mut => VT.CreateAttributeDefinition(ref this, pszAttributeName, ref pAttributeDefinition);
			public HRESULT WriteAttributeDefinition(PWSTR pszAttributeName, ref ADS_ATTR_DEF pAttributeDefinition) mut => VT.WriteAttributeDefinition(ref this, pszAttributeName, ref pAttributeDefinition);
			public HRESULT DeleteAttributeDefinition(PWSTR pszAttributeName) mut => VT.DeleteAttributeDefinition(ref this, pszAttributeName);
			public HRESULT EnumClasses(PWSTR* ppszClassNames, uint32 dwNumClasses, ADS_CLASS_DEF** ppClassDefinition, ref uint32 pdwNumClasses) mut => VT.EnumClasses(ref this, ppszClassNames, dwNumClasses, ppClassDefinition, ref pdwNumClasses);
			public HRESULT WriteClassDefinition(PWSTR pszClassName, ref ADS_CLASS_DEF pClassDefinition) mut => VT.WriteClassDefinition(ref this, pszClassName, ref pClassDefinition);
			public HRESULT CreateClassDefinition(PWSTR pszClassName, ref ADS_CLASS_DEF pClassDefinition) mut => VT.CreateClassDefinition(ref this, pszClassName, ref pClassDefinition);
			public HRESULT DeleteClassDefinition(PWSTR pszClassName) mut => VT.DeleteClassDefinition(ref this, pszClassName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR* ppszAttrNames, uint32 dwNumAttributes, ADS_ATTR_DEF** ppAttrDefinition, ref uint32 pdwNumAttributes) EnumAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszAttributeName, ref ADS_ATTR_DEF pAttributeDefinition) CreateAttributeDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszAttributeName, ref ADS_ATTR_DEF pAttributeDefinition) WriteAttributeDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszAttributeName) DeleteAttributeDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR* ppszClassNames, uint32 dwNumClasses, ADS_CLASS_DEF** ppClassDefinition, ref uint32 pdwNumClasses) EnumClasses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszClassName, ref ADS_CLASS_DEF pClassDefinition) WriteClassDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszClassName, ref ADS_CLASS_DEF pClassDefinition) CreateClassDefinition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectorySchemaMgmt self, PWSTR pszClassName) DeleteClassDefinition;
			}
		}
		[CRepr]
		public struct IADsAggregatee : IUnknown
		{
			public const new Guid IID = .(0x1346ce8c, 0x9039, 0x11d0, 0x85, 0x28, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectAsAggregatee(IUnknown* pOuterUnknown) mut => VT.ConnectAsAggregatee(ref this, pOuterUnknown);
			public HRESULT DisconnectAsAggregatee() mut => VT.DisconnectAsAggregatee(ref this);
			public HRESULT RelinquishInterface(in Guid riid) mut => VT.RelinquishInterface(ref this, riid);
			public HRESULT RestoreInterface(in Guid riid) mut => VT.RestoreInterface(ref this, riid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregatee self, IUnknown* pOuterUnknown) ConnectAsAggregatee;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregatee self) DisconnectAsAggregatee;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregatee self, in Guid riid) RelinquishInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregatee self, in Guid riid) RestoreInterface;
			}
		}
		[CRepr]
		public struct IADsAggregator : IUnknown
		{
			public const new Guid IID = .(0x52db5fb0, 0x941f, 0x11d0, 0x85, 0x29, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectAsAggregator(IUnknown* pAggregatee) mut => VT.ConnectAsAggregator(ref this, pAggregatee);
			public HRESULT DisconnectAsAggregator() mut => VT.DisconnectAsAggregator(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregator self, IUnknown* pAggregatee) ConnectAsAggregator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAggregator self) DisconnectAsAggregator;
			}
		}
		[CRepr]
		public struct IADsAccessControlEntry : IDispatch
		{
			public const new Guid IID = .(0xb4f3a14c, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AccessMask(out int32 retval) mut => VT.get_AccessMask(ref this, out retval);
			public HRESULT put_AccessMask(int32 lnAccessMask) mut => VT.put_AccessMask(ref this, lnAccessMask);
			public HRESULT get_AceType(out int32 retval) mut => VT.get_AceType(ref this, out retval);
			public HRESULT put_AceType(int32 lnAceType) mut => VT.put_AceType(ref this, lnAceType);
			public HRESULT get_AceFlags(out int32 retval) mut => VT.get_AceFlags(ref this, out retval);
			public HRESULT put_AceFlags(int32 lnAceFlags) mut => VT.put_AceFlags(ref this, lnAceFlags);
			public HRESULT get_Flags(out int32 retval) mut => VT.get_Flags(ref this, out retval);
			public HRESULT put_Flags(int32 lnFlags) mut => VT.put_Flags(ref this, lnFlags);
			public HRESULT get_ObjectType(BSTR* retval) mut => VT.get_ObjectType(ref this, retval);
			public HRESULT put_ObjectType(BSTR bstrObjectType) mut => VT.put_ObjectType(ref this, bstrObjectType);
			public HRESULT get_InheritedObjectType(BSTR* retval) mut => VT.get_InheritedObjectType(ref this, retval);
			public HRESULT put_InheritedObjectType(BSTR bstrInheritedObjectType) mut => VT.put_InheritedObjectType(ref this, bstrInheritedObjectType);
			public HRESULT get_Trustee(BSTR* retval) mut => VT.get_Trustee(ref this, retval);
			public HRESULT put_Trustee(BSTR bstrTrustee) mut => VT.put_Trustee(ref this, bstrTrustee);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, out int32 retval) get_AccessMask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, int32 lnAccessMask) put_AccessMask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, out int32 retval) get_AceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, int32 lnAceType) put_AceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, out int32 retval) get_AceFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, int32 lnAceFlags) put_AceFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, out int32 retval) get_Flags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, int32 lnFlags) put_Flags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR* retval) get_ObjectType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR bstrObjectType) put_ObjectType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR* retval) get_InheritedObjectType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR bstrInheritedObjectType) put_InheritedObjectType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR* retval) get_Trustee;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlEntry self, BSTR bstrTrustee) put_Trustee;
			}
		}
		[CRepr]
		public struct IADsAccessControlList : IDispatch
		{
			public const new Guid IID = .(0xb7ee91cc, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AclRevision(out int32 retval) mut => VT.get_AclRevision(ref this, out retval);
			public HRESULT put_AclRevision(int32 lnAclRevision) mut => VT.put_AclRevision(ref this, lnAclRevision);
			public HRESULT get_AceCount(out int32 retval) mut => VT.get_AceCount(ref this, out retval);
			public HRESULT put_AceCount(int32 lnAceCount) mut => VT.put_AceCount(ref this, lnAceCount);
			public HRESULT AddAce(IDispatch* pAccessControlEntry) mut => VT.AddAce(ref this, pAccessControlEntry);
			public HRESULT RemoveAce(IDispatch* pAccessControlEntry) mut => VT.RemoveAce(ref this, pAccessControlEntry);
			public HRESULT CopyAccessList(IDispatch** ppAccessControlList) mut => VT.CopyAccessList(ref this, ppAccessControlList);
			public HRESULT get__NewEnum(IUnknown** retval) mut => VT.get__NewEnum(ref this, retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, out int32 retval) get_AclRevision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, int32 lnAclRevision) put_AclRevision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, out int32 retval) get_AceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, int32 lnAceCount) put_AceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, IDispatch* pAccessControlEntry) AddAce;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, IDispatch* pAccessControlEntry) RemoveAce;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, IDispatch** ppAccessControlList) CopyAccessList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAccessControlList self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct IADsSecurityDescriptor : IDispatch
		{
			public const new Guid IID = .(0xb8c787ca, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Revision(out int32 retval) mut => VT.get_Revision(ref this, out retval);
			public HRESULT put_Revision(int32 lnRevision) mut => VT.put_Revision(ref this, lnRevision);
			public HRESULT get_Control(out int32 retval) mut => VT.get_Control(ref this, out retval);
			public HRESULT put_Control(int32 lnControl) mut => VT.put_Control(ref this, lnControl);
			public HRESULT get_Owner(BSTR* retval) mut => VT.get_Owner(ref this, retval);
			public HRESULT put_Owner(BSTR bstrOwner) mut => VT.put_Owner(ref this, bstrOwner);
			public HRESULT get_OwnerDefaulted(out int16 retval) mut => VT.get_OwnerDefaulted(ref this, out retval);
			public HRESULT put_OwnerDefaulted(int16 fOwnerDefaulted) mut => VT.put_OwnerDefaulted(ref this, fOwnerDefaulted);
			public HRESULT get_Group(BSTR* retval) mut => VT.get_Group(ref this, retval);
			public HRESULT put_Group(BSTR bstrGroup) mut => VT.put_Group(ref this, bstrGroup);
			public HRESULT get_GroupDefaulted(out int16 retval) mut => VT.get_GroupDefaulted(ref this, out retval);
			public HRESULT put_GroupDefaulted(int16 fGroupDefaulted) mut => VT.put_GroupDefaulted(ref this, fGroupDefaulted);
			public HRESULT get_DiscretionaryAcl(IDispatch** retval) mut => VT.get_DiscretionaryAcl(ref this, retval);
			public HRESULT put_DiscretionaryAcl(IDispatch* pDiscretionaryAcl) mut => VT.put_DiscretionaryAcl(ref this, pDiscretionaryAcl);
			public HRESULT get_DaclDefaulted(out int16 retval) mut => VT.get_DaclDefaulted(ref this, out retval);
			public HRESULT put_DaclDefaulted(int16 fDaclDefaulted) mut => VT.put_DaclDefaulted(ref this, fDaclDefaulted);
			public HRESULT get_SystemAcl(IDispatch** retval) mut => VT.get_SystemAcl(ref this, retval);
			public HRESULT put_SystemAcl(IDispatch* pSystemAcl) mut => VT.put_SystemAcl(ref this, pSystemAcl);
			public HRESULT get_SaclDefaulted(out int16 retval) mut => VT.get_SaclDefaulted(ref this, out retval);
			public HRESULT put_SaclDefaulted(int16 fSaclDefaulted) mut => VT.put_SaclDefaulted(ref this, fSaclDefaulted);
			public HRESULT CopySecurityDescriptor(IDispatch** ppSecurityDescriptor) mut => VT.CopySecurityDescriptor(ref this, ppSecurityDescriptor);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int32 retval) get_Revision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int32 lnRevision) put_Revision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int32 retval) get_Control;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int32 lnControl) put_Control;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, BSTR* retval) get_Owner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, BSTR bstrOwner) put_Owner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int16 retval) get_OwnerDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int16 fOwnerDefaulted) put_OwnerDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, BSTR* retval) get_Group;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, BSTR bstrGroup) put_Group;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int16 retval) get_GroupDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int16 fGroupDefaulted) put_GroupDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, IDispatch** retval) get_DiscretionaryAcl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, IDispatch* pDiscretionaryAcl) put_DiscretionaryAcl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int16 retval) get_DaclDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int16 fDaclDefaulted) put_DaclDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, IDispatch** retval) get_SystemAcl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, IDispatch* pSystemAcl) put_SystemAcl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, out int16 retval) get_SaclDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, int16 fSaclDefaulted) put_SaclDefaulted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityDescriptor self, IDispatch** ppSecurityDescriptor) CopySecurityDescriptor;
			}
		}
		[CRepr]
		public struct IADsLargeInteger : IDispatch
		{
			public const new Guid IID = .(0x9068270b, 0x0939, 0x11d1, 0x8b, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HighPart(out int32 retval) mut => VT.get_HighPart(ref this, out retval);
			public HRESULT put_HighPart(int32 lnHighPart) mut => VT.put_HighPart(ref this, lnHighPart);
			public HRESULT get_LowPart(out int32 retval) mut => VT.get_LowPart(ref this, out retval);
			public HRESULT put_LowPart(int32 lnLowPart) mut => VT.put_LowPart(ref this, lnLowPart);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLargeInteger self, out int32 retval) get_HighPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLargeInteger self, int32 lnHighPart) put_HighPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLargeInteger self, out int32 retval) get_LowPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsLargeInteger self, int32 lnLowPart) put_LowPart;
			}
		}
		[CRepr]
		public struct IADsNameTranslate : IDispatch
		{
			public const new Guid IID = .(0xb1b272a3, 0x3625, 0x11d1, 0xa3, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ChaseReferral(int32 lnChaseReferral) mut => VT.put_ChaseReferral(ref this, lnChaseReferral);
			public HRESULT Init(int32 lnSetType, BSTR bstrADsPath) mut => VT.Init(ref this, lnSetType, bstrADsPath);
			public HRESULT InitEx(int32 lnSetType, BSTR bstrADsPath, BSTR bstrUserID, BSTR bstrDomain, BSTR bstrPassword) mut => VT.InitEx(ref this, lnSetType, bstrADsPath, bstrUserID, bstrDomain, bstrPassword);
			public HRESULT Set(int32 lnSetType, BSTR bstrADsPath) mut => VT.Set(ref this, lnSetType, bstrADsPath);
			public HRESULT Get(int32 lnFormatType, BSTR* pbstrADsPath) mut => VT.Get(ref this, lnFormatType, pbstrADsPath);
			public HRESULT SetEx(int32 lnFormatType, VARIANT pvar) mut => VT.SetEx(ref this, lnFormatType, pvar);
			public HRESULT GetEx(int32 lnFormatType, out VARIANT pvar) mut => VT.GetEx(ref this, lnFormatType, out pvar);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnChaseReferral) put_ChaseReferral;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnSetType, BSTR bstrADsPath) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnSetType, BSTR bstrADsPath, BSTR bstrUserID, BSTR bstrDomain, BSTR bstrPassword) InitEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnSetType, BSTR bstrADsPath) Set;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnFormatType, BSTR* pbstrADsPath) Get;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnFormatType, VARIANT pvar) SetEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNameTranslate self, int32 lnFormatType, out VARIANT pvar) GetEx;
			}
		}
		[CRepr]
		public struct IADsCaseIgnoreList : IDispatch
		{
			public const new Guid IID = .(0x7b66b533, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CaseIgnoreList(out VARIANT retval) mut => VT.get_CaseIgnoreList(ref this, out retval);
			public HRESULT put_CaseIgnoreList(VARIANT vCaseIgnoreList) mut => VT.put_CaseIgnoreList(ref this, vCaseIgnoreList);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCaseIgnoreList self, out VARIANT retval) get_CaseIgnoreList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsCaseIgnoreList self, VARIANT vCaseIgnoreList) put_CaseIgnoreList;
			}
		}
		[CRepr]
		public struct IADsFaxNumber : IDispatch
		{
			public const new Guid IID = .(0xa910dea9, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TelephoneNumber(BSTR* retval) mut => VT.get_TelephoneNumber(ref this, retval);
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut => VT.put_TelephoneNumber(ref this, bstrTelephoneNumber);
			public HRESULT get_Parameters(out VARIANT retval) mut => VT.get_Parameters(ref this, out retval);
			public HRESULT put_Parameters(VARIANT vParameters) mut => VT.put_Parameters(ref this, vParameters);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFaxNumber self, BSTR* retval) get_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFaxNumber self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFaxNumber self, out VARIANT retval) get_Parameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsFaxNumber self, VARIANT vParameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IADsNetAddress : IDispatch
		{
			public const new Guid IID = .(0xb21a50a9, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AddressType(out int32 retval) mut => VT.get_AddressType(ref this, out retval);
			public HRESULT put_AddressType(int32 lnAddressType) mut => VT.put_AddressType(ref this, lnAddressType);
			public HRESULT get_Address(out VARIANT retval) mut => VT.get_Address(ref this, out retval);
			public HRESULT put_Address(VARIANT vAddress) mut => VT.put_Address(ref this, vAddress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNetAddress self, out int32 retval) get_AddressType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNetAddress self, int32 lnAddressType) put_AddressType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNetAddress self, out VARIANT retval) get_Address;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsNetAddress self, VARIANT vAddress) put_Address;
			}
		}
		[CRepr]
		public struct IADsOctetList : IDispatch
		{
			public const new Guid IID = .(0x7b28b80f, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OctetList(out VARIANT retval) mut => VT.get_OctetList(ref this, out retval);
			public HRESULT put_OctetList(VARIANT vOctetList) mut => VT.put_OctetList(ref this, vOctetList);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOctetList self, out VARIANT retval) get_OctetList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsOctetList self, VARIANT vOctetList) put_OctetList;
			}
		}
		[CRepr]
		public struct IADsEmail : IDispatch
		{
			public const new Guid IID = .(0x97af011a, 0x478e, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out int32 retval) mut => VT.get_Type(ref this, out retval);
			public HRESULT put_Type(int32 lnType) mut => VT.put_Type(ref this, lnType);
			public HRESULT get_Address(BSTR* retval) mut => VT.get_Address(ref this, retval);
			public HRESULT put_Address(BSTR bstrAddress) mut => VT.put_Address(ref this, bstrAddress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsEmail self, out int32 retval) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsEmail self, int32 lnType) put_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsEmail self, BSTR* retval) get_Address;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsEmail self, BSTR bstrAddress) put_Address;
			}
		}
		[CRepr]
		public struct IADsPath : IDispatch
		{
			public const new Guid IID = .(0xb287fcd5, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(out int32 retval) mut => VT.get_Type(ref this, out retval);
			public HRESULT put_Type(int32 lnType) mut => VT.put_Type(ref this, lnType);
			public HRESULT get_VolumeName(BSTR* retval) mut => VT.get_VolumeName(ref this, retval);
			public HRESULT put_VolumeName(BSTR bstrVolumeName) mut => VT.put_VolumeName(ref this, bstrVolumeName);
			public HRESULT get_Path(BSTR* retval) mut => VT.get_Path(ref this, retval);
			public HRESULT put_Path(BSTR bstrPath) mut => VT.put_Path(ref this, bstrPath);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, out int32 retval) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, int32 lnType) put_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, BSTR* retval) get_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, BSTR bstrVolumeName) put_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, BSTR* retval) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPath self, BSTR bstrPath) put_Path;
			}
		}
		[CRepr]
		public struct IADsReplicaPointer : IDispatch
		{
			public const new Guid IID = .(0xf60fb803, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ServerName(BSTR* retval) mut => VT.get_ServerName(ref this, retval);
			public HRESULT put_ServerName(BSTR bstrServerName) mut => VT.put_ServerName(ref this, bstrServerName);
			public HRESULT get_ReplicaType(out int32 retval) mut => VT.get_ReplicaType(ref this, out retval);
			public HRESULT put_ReplicaType(int32 lnReplicaType) mut => VT.put_ReplicaType(ref this, lnReplicaType);
			public HRESULT get_ReplicaNumber(out int32 retval) mut => VT.get_ReplicaNumber(ref this, out retval);
			public HRESULT put_ReplicaNumber(int32 lnReplicaNumber) mut => VT.put_ReplicaNumber(ref this, lnReplicaNumber);
			public HRESULT get_Count(out int32 retval) mut => VT.get_Count(ref this, out retval);
			public HRESULT put_Count(int32 lnCount) mut => VT.put_Count(ref this, lnCount);
			public HRESULT get_ReplicaAddressHints(out VARIANT retval) mut => VT.get_ReplicaAddressHints(ref this, out retval);
			public HRESULT put_ReplicaAddressHints(VARIANT vReplicaAddressHints) mut => VT.put_ReplicaAddressHints(ref this, vReplicaAddressHints);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, BSTR* retval) get_ServerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, BSTR bstrServerName) put_ServerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, out int32 retval) get_ReplicaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, int32 lnReplicaType) put_ReplicaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, out int32 retval) get_ReplicaNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, int32 lnReplicaNumber) put_ReplicaNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, out int32 retval) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, int32 lnCount) put_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, out VARIANT retval) get_ReplicaAddressHints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsReplicaPointer self, VARIANT vReplicaAddressHints) put_ReplicaAddressHints;
			}
		}
		[CRepr]
		public struct IADsAcl : IDispatch
		{
			public const new Guid IID = .(0x8452d3ab, 0x0869, 0x11d1, 0xa3, 0x77, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProtectedAttrName(BSTR* retval) mut => VT.get_ProtectedAttrName(ref this, retval);
			public HRESULT put_ProtectedAttrName(BSTR bstrProtectedAttrName) mut => VT.put_ProtectedAttrName(ref this, bstrProtectedAttrName);
			public HRESULT get_SubjectName(BSTR* retval) mut => VT.get_SubjectName(ref this, retval);
			public HRESULT put_SubjectName(BSTR bstrSubjectName) mut => VT.put_SubjectName(ref this, bstrSubjectName);
			public HRESULT get_Privileges(out int32 retval) mut => VT.get_Privileges(ref this, out retval);
			public HRESULT put_Privileges(int32 lnPrivileges) mut => VT.put_Privileges(ref this, lnPrivileges);
			public HRESULT CopyAcl(IDispatch** ppAcl) mut => VT.CopyAcl(ref this, ppAcl);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, BSTR* retval) get_ProtectedAttrName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, BSTR bstrProtectedAttrName) put_ProtectedAttrName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, BSTR* retval) get_SubjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, BSTR bstrSubjectName) put_SubjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, out int32 retval) get_Privileges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, int32 lnPrivileges) put_Privileges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsAcl self, IDispatch** ppAcl) CopyAcl;
			}
		}
		[CRepr]
		public struct IADsTimestamp : IDispatch
		{
			public const new Guid IID = .(0xb2f5a901, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WholeSeconds(out int32 retval) mut => VT.get_WholeSeconds(ref this, out retval);
			public HRESULT put_WholeSeconds(int32 lnWholeSeconds) mut => VT.put_WholeSeconds(ref this, lnWholeSeconds);
			public HRESULT get_EventID(out int32 retval) mut => VT.get_EventID(ref this, out retval);
			public HRESULT put_EventID(int32 lnEventID) mut => VT.put_EventID(ref this, lnEventID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTimestamp self, out int32 retval) get_WholeSeconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTimestamp self, int32 lnWholeSeconds) put_WholeSeconds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTimestamp self, out int32 retval) get_EventID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTimestamp self, int32 lnEventID) put_EventID;
			}
		}
		[CRepr]
		public struct IADsPostalAddress : IDispatch
		{
			public const new Guid IID = .(0x7adecf29, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PostalAddress(out VARIANT retval) mut => VT.get_PostalAddress(ref this, out retval);
			public HRESULT put_PostalAddress(VARIANT vPostalAddress) mut => VT.put_PostalAddress(ref this, vPostalAddress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPostalAddress self, out VARIANT retval) get_PostalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPostalAddress self, VARIANT vPostalAddress) put_PostalAddress;
			}
		}
		[CRepr]
		public struct IADsBackLink : IDispatch
		{
			public const new Guid IID = .(0xfd1302bd, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RemoteID(out int32 retval) mut => VT.get_RemoteID(ref this, out retval);
			public HRESULT put_RemoteID(int32 lnRemoteID) mut => VT.put_RemoteID(ref this, lnRemoteID);
			public HRESULT get_ObjectName(BSTR* retval) mut => VT.get_ObjectName(ref this, retval);
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut => VT.put_ObjectName(ref this, bstrObjectName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsBackLink self, out int32 retval) get_RemoteID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsBackLink self, int32 lnRemoteID) put_RemoteID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsBackLink self, BSTR* retval) get_ObjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsBackLink self, BSTR bstrObjectName) put_ObjectName;
			}
		}
		[CRepr]
		public struct IADsTypedName : IDispatch
		{
			public const new Guid IID = .(0xb371a349, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectName(BSTR* retval) mut => VT.get_ObjectName(ref this, retval);
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut => VT.put_ObjectName(ref this, bstrObjectName);
			public HRESULT get_Level(out int32 retval) mut => VT.get_Level(ref this, out retval);
			public HRESULT put_Level(int32 lnLevel) mut => VT.put_Level(ref this, lnLevel);
			public HRESULT get_Interval(out int32 retval) mut => VT.get_Interval(ref this, out retval);
			public HRESULT put_Interval(int32 lnInterval) mut => VT.put_Interval(ref this, lnInterval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, BSTR* retval) get_ObjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, BSTR bstrObjectName) put_ObjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, out int32 retval) get_Level;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, int32 lnLevel) put_Level;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, out int32 retval) get_Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsTypedName self, int32 lnInterval) put_Interval;
			}
		}
		[CRepr]
		public struct IADsHold : IDispatch
		{
			public const new Guid IID = .(0xb3eb3b37, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectName(BSTR* retval) mut => VT.get_ObjectName(ref this, retval);
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut => VT.put_ObjectName(ref this, bstrObjectName);
			public HRESULT get_Amount(out int32 retval) mut => VT.get_Amount(ref this, out retval);
			public HRESULT put_Amount(int32 lnAmount) mut => VT.put_Amount(ref this, lnAmount);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsHold self, BSTR* retval) get_ObjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsHold self, BSTR bstrObjectName) put_ObjectName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsHold self, out int32 retval) get_Amount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsHold self, int32 lnAmount) put_Amount;
			}
		}
		[CRepr]
		public struct IADsObjectOptions : IDispatch
		{
			public const new Guid IID = .(0x46f14fda, 0x232b, 0x11d1, 0xa8, 0x08, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOption(int32 lnOption, out VARIANT pvValue) mut => VT.GetOption(ref this, lnOption, out pvValue);
			public HRESULT SetOption(int32 lnOption, VARIANT vValue) mut => VT.SetOption(ref this, lnOption, vValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsObjectOptions self, int32 lnOption, out VARIANT pvValue) GetOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsObjectOptions self, int32 lnOption, VARIANT vValue) SetOption;
			}
		}
		[CRepr]
		public struct IADsPathname : IDispatch
		{
			public const new Guid IID = .(0xd592aed4, 0xf420, 0x11d0, 0xa3, 0x6e, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(BSTR bstrADsPath, int32 lnSetType) mut => VT.Set(ref this, bstrADsPath, lnSetType);
			public HRESULT SetDisplayType(int32 lnDisplayType) mut => VT.SetDisplayType(ref this, lnDisplayType);
			public HRESULT Retrieve(int32 lnFormatType, BSTR* pbstrADsPath) mut => VT.Retrieve(ref this, lnFormatType, pbstrADsPath);
			public HRESULT GetNumElements(out int32 plnNumPathElements) mut => VT.GetNumElements(ref this, out plnNumPathElements);
			public HRESULT GetElement(int32 lnElementIndex, BSTR* pbstrElement) mut => VT.GetElement(ref this, lnElementIndex, pbstrElement);
			public HRESULT AddLeafElement(BSTR bstrLeafElement) mut => VT.AddLeafElement(ref this, bstrLeafElement);
			public HRESULT RemoveLeafElement() mut => VT.RemoveLeafElement(ref this);
			public HRESULT CopyPath(IDispatch** ppAdsPath) mut => VT.CopyPath(ref this, ppAdsPath);
			public HRESULT GetEscapedElement(int32 lnReserved, BSTR bstrInStr, BSTR* pbstrOutStr) mut => VT.GetEscapedElement(ref this, lnReserved, bstrInStr, pbstrOutStr);
			public HRESULT get_EscapedMode(out int32 retval) mut => VT.get_EscapedMode(ref this, out retval);
			public HRESULT put_EscapedMode(int32 lnEscapedMode) mut => VT.put_EscapedMode(ref this, lnEscapedMode);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, BSTR bstrADsPath, int32 lnSetType) Set;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, int32 lnDisplayType) SetDisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, int32 lnFormatType, BSTR* pbstrADsPath) Retrieve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, out int32 plnNumPathElements) GetNumElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, int32 lnElementIndex, BSTR* pbstrElement) GetElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, BSTR bstrLeafElement) AddLeafElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self) RemoveLeafElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, IDispatch** ppAdsPath) CopyPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, int32 lnReserved, BSTR bstrInStr, BSTR* pbstrOutStr) GetEscapedElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, out int32 retval) get_EscapedMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsPathname self, int32 lnEscapedMode) put_EscapedMode;
			}
		}
		[CRepr]
		public struct IADsADSystemInfo : IDispatch
		{
			public const new Guid IID = .(0x5bb11929, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(BSTR* retval) mut => VT.get_UserName(ref this, retval);
			public HRESULT get_ComputerName(BSTR* retval) mut => VT.get_ComputerName(ref this, retval);
			public HRESULT get_SiteName(BSTR* retval) mut => VT.get_SiteName(ref this, retval);
			public HRESULT get_DomainShortName(BSTR* retval) mut => VT.get_DomainShortName(ref this, retval);
			public HRESULT get_DomainDNSName(BSTR* retval) mut => VT.get_DomainDNSName(ref this, retval);
			public HRESULT get_ForestDNSName(BSTR* retval) mut => VT.get_ForestDNSName(ref this, retval);
			public HRESULT get_PDCRoleOwner(BSTR* retval) mut => VT.get_PDCRoleOwner(ref this, retval);
			public HRESULT get_SchemaRoleOwner(BSTR* retval) mut => VT.get_SchemaRoleOwner(ref this, retval);
			public HRESULT get_IsNativeMode(out int16 retval) mut => VT.get_IsNativeMode(ref this, out retval);
			public HRESULT GetAnyDCName(BSTR* pszDCName) mut => VT.GetAnyDCName(ref this, pszDCName);
			public HRESULT GetDCSiteName(BSTR szServer, BSTR* pszSiteName) mut => VT.GetDCSiteName(ref this, szServer, pszSiteName);
			public HRESULT RefreshSchemaCache() mut => VT.RefreshSchemaCache(ref this);
			public HRESULT GetTrees(out VARIANT pvTrees) mut => VT.GetTrees(ref this, out pvTrees);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_UserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_ComputerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_SiteName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_DomainShortName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_DomainDNSName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_ForestDNSName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_PDCRoleOwner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* retval) get_SchemaRoleOwner;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, out int16 retval) get_IsNativeMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR* pszDCName) GetAnyDCName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, BSTR szServer, BSTR* pszSiteName) GetDCSiteName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self) RefreshSchemaCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsADSystemInfo self, out VARIANT pvTrees) GetTrees;
			}
		}
		[CRepr]
		public struct IADsWinNTSystemInfo : IDispatch
		{
			public const new Guid IID = .(0x6c6d65dc, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(BSTR* retval) mut => VT.get_UserName(ref this, retval);
			public HRESULT get_ComputerName(BSTR* retval) mut => VT.get_ComputerName(ref this, retval);
			public HRESULT get_DomainName(BSTR* retval) mut => VT.get_DomainName(ref this, retval);
			public HRESULT get_PDC(BSTR* retval) mut => VT.get_PDC(ref this, retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsWinNTSystemInfo self, BSTR* retval) get_UserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsWinNTSystemInfo self, BSTR* retval) get_ComputerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsWinNTSystemInfo self, BSTR* retval) get_DomainName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsWinNTSystemInfo self, BSTR* retval) get_PDC;
			}
		}
		[CRepr]
		public struct IADsDNWithBinary : IDispatch
		{
			public const new Guid IID = .(0x7e99c0a2, 0xf935, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BinaryValue(out VARIANT retval) mut => VT.get_BinaryValue(ref this, out retval);
			public HRESULT put_BinaryValue(VARIANT vBinaryValue) mut => VT.put_BinaryValue(ref this, vBinaryValue);
			public HRESULT get_DNString(BSTR* retval) mut => VT.get_DNString(ref this, retval);
			public HRESULT put_DNString(BSTR bstrDNString) mut => VT.put_DNString(ref this, bstrDNString);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithBinary self, out VARIANT retval) get_BinaryValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithBinary self, VARIANT vBinaryValue) put_BinaryValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithBinary self, BSTR* retval) get_DNString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithBinary self, BSTR bstrDNString) put_DNString;
			}
		}
		[CRepr]
		public struct IADsDNWithString : IDispatch
		{
			public const new Guid IID = .(0x370df02e, 0xf934, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StringValue(BSTR* retval) mut => VT.get_StringValue(ref this, retval);
			public HRESULT put_StringValue(BSTR bstrStringValue) mut => VT.put_StringValue(ref this, bstrStringValue);
			public HRESULT get_DNString(BSTR* retval) mut => VT.get_DNString(ref this, retval);
			public HRESULT put_DNString(BSTR bstrDNString) mut => VT.put_DNString(ref this, bstrDNString);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithString self, BSTR* retval) get_StringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithString self, BSTR bstrStringValue) put_StringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithString self, BSTR* retval) get_DNString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsDNWithString self, BSTR bstrDNString) put_DNString;
			}
		}
		[CRepr]
		public struct IADsSecurityUtility : IDispatch
		{
			public const new Guid IID = .(0xa63251b2, 0x5f21, 0x474b, 0xab, 0x52, 0x4a, 0x8e, 0xfa, 0xd1, 0x08, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecurityDescriptor(VARIANT varPath, int32 lPathFormat, int32 lFormat, out VARIANT pVariant) mut => VT.GetSecurityDescriptor(ref this, varPath, lPathFormat, lFormat, out pVariant);
			public HRESULT SetSecurityDescriptor(VARIANT varPath, int32 lPathFormat, VARIANT varData, int32 lDataFormat) mut => VT.SetSecurityDescriptor(ref this, varPath, lPathFormat, varData, lDataFormat);
			public HRESULT ConvertSecurityDescriptor(VARIANT varSD, int32 lDataFormat, int32 lOutFormat, out VARIANT pResult) mut => VT.ConvertSecurityDescriptor(ref this, varSD, lDataFormat, lOutFormat, out pResult);
			public HRESULT get_SecurityMask(out int32 retval) mut => VT.get_SecurityMask(ref this, out retval);
			public HRESULT put_SecurityMask(int32 lnSecurityMask) mut => VT.put_SecurityMask(ref this, lnSecurityMask);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityUtility self, VARIANT varPath, int32 lPathFormat, int32 lFormat, out VARIANT pVariant) GetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityUtility self, VARIANT varPath, int32 lPathFormat, VARIANT varData, int32 lDataFormat) SetSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityUtility self, VARIANT varSD, int32 lDataFormat, int32 lOutFormat, out VARIANT pResult) ConvertSecurityDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityUtility self, out int32 retval) get_SecurityMask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IADsSecurityUtility self, int32 lnSecurityMask) put_SecurityMask;
			}
		}
		[CRepr]
		public struct IDsBrowseDomainTree : IUnknown
		{
			public const new Guid IID = .(0x7cabcf1e, 0x78f5, 0x11d2, 0x96, 0x0c, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BrowseTo(HWND hwndParent, out PWSTR ppszTargetPath, uint32 dwFlags) mut => VT.BrowseTo(ref this, hwndParent, out ppszTargetPath, dwFlags);
			public HRESULT GetDomains(out DOMAIN_TREE* ppDomainTree, uint32 dwFlags) mut => VT.GetDomains(ref this, out ppDomainTree, dwFlags);
			public HRESULT FreeDomains(out DOMAIN_TREE* ppDomainTree) mut => VT.FreeDomains(ref this, out ppDomainTree);
			public HRESULT FlushCachedDomains() mut => VT.FlushCachedDomains(ref this);
			public HRESULT SetComputer(PWSTR pszComputerName, PWSTR pszUserName, PWSTR pszPassword) mut => VT.SetComputer(ref this, pszComputerName, pszUserName, pszPassword);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsBrowseDomainTree self, HWND hwndParent, out PWSTR ppszTargetPath, uint32 dwFlags) BrowseTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsBrowseDomainTree self, out DOMAIN_TREE* ppDomainTree, uint32 dwFlags) GetDomains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsBrowseDomainTree self, out DOMAIN_TREE* ppDomainTree) FreeDomains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsBrowseDomainTree self) FlushCachedDomains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsBrowseDomainTree self, PWSTR pszComputerName, PWSTR pszUserName, PWSTR pszPassword) SetComputer;
			}
		}
		[CRepr]
		public struct IDsDisplaySpecifier : IUnknown
		{
			public const new Guid IID = .(0x1ab4a8c0, 0x6a0b, 0x11d2, 0xad, 0x49, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetServer(PWSTR pszServer, PWSTR pszUserName, PWSTR pszPassword, uint32 dwFlags) mut => VT.SetServer(ref this, pszServer, pszUserName, pszPassword, dwFlags);
			public HRESULT SetLanguageID(uint16 langid) mut => VT.SetLanguageID(ref this, langid);
			public HRESULT GetDisplaySpecifier(PWSTR pszObjectClass, in Guid riid, void** ppv) mut => VT.GetDisplaySpecifier(ref this, pszObjectClass, riid, ppv);
			public HRESULT GetIconLocation(PWSTR pszObjectClass, uint32 dwFlags, char16* pszBuffer, int32 cchBuffer, out int32 presid) mut => VT.GetIconLocation(ref this, pszObjectClass, dwFlags, pszBuffer, cchBuffer, out presid);
			public HICON GetIcon(PWSTR pszObjectClass, uint32 dwFlags, int32 cxIcon, int32 cyIcon) mut => VT.GetIcon(ref this, pszObjectClass, dwFlags, cxIcon, cyIcon);
			public HRESULT GetFriendlyClassName(PWSTR pszObjectClass, char16* pszBuffer, int32 cchBuffer) mut => VT.GetFriendlyClassName(ref this, pszObjectClass, pszBuffer, cchBuffer);
			public HRESULT GetFriendlyAttributeName(PWSTR pszObjectClass, PWSTR pszAttributeName, char16* pszBuffer, uint32 cchBuffer) mut => VT.GetFriendlyAttributeName(ref this, pszObjectClass, pszAttributeName, pszBuffer, cchBuffer);
			public BOOL IsClassContainer(PWSTR pszObjectClass, PWSTR pszADsPath, uint32 dwFlags) mut => VT.IsClassContainer(ref this, pszObjectClass, pszADsPath, dwFlags);
			public HRESULT GetClassCreationInfo(PWSTR pszObjectClass, out DSCLASSCREATIONINFO* ppdscci) mut => VT.GetClassCreationInfo(ref this, pszObjectClass, out ppdscci);
			public HRESULT EnumClassAttributes(PWSTR pszObjectClass, LPDSENUMATTRIBUTES pcbEnum, LPARAM lParam) mut => VT.EnumClassAttributes(ref this, pszObjectClass, pcbEnum, lParam);
			public ADSTYPEENUM GetAttributeADsType(PWSTR pszAttributeName) mut => VT.GetAttributeADsType(ref this, pszAttributeName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszServer, PWSTR pszUserName, PWSTR pszPassword, uint32 dwFlags) SetServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, uint16 langid) SetLanguageID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, in Guid riid, void** ppv) GetDisplaySpecifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, uint32 dwFlags, char16* pszBuffer, int32 cchBuffer, out int32 presid) GetIconLocation;
				public new function [CallingConvention(.Stdcall)] HICON(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, uint32 dwFlags, int32 cxIcon, int32 cyIcon) GetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, char16* pszBuffer, int32 cchBuffer) GetFriendlyClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, PWSTR pszAttributeName, char16* pszBuffer, uint32 cchBuffer) GetFriendlyAttributeName;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, PWSTR pszADsPath, uint32 dwFlags) IsClassContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, out DSCLASSCREATIONINFO* ppdscci) GetClassCreationInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsDisplaySpecifier self, PWSTR pszObjectClass, LPDSENUMATTRIBUTES pcbEnum, LPARAM lParam) EnumClassAttributes;
				public new function [CallingConvention(.Stdcall)] ADSTYPEENUM(ref IDsDisplaySpecifier self, PWSTR pszAttributeName) GetAttributeADsType;
			}
		}
		[CRepr]
		public struct IDsObjectPicker : IUnknown
		{
			public const new Guid IID = .(0x0c87e64e, 0x3b7a, 0x11d2, 0xb9, 0xe0, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(out DSOP_INIT_INFO pInitInfo) mut => VT.Initialize(ref this, out pInitInfo);
			public HRESULT InvokeDialog(HWND hwndParent, out IDataObject* ppdoSelections) mut => VT.InvokeDialog(ref this, hwndParent, out ppdoSelections);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsObjectPicker self, out DSOP_INIT_INFO pInitInfo) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsObjectPicker self, HWND hwndParent, out IDataObject* ppdoSelections) InvokeDialog;
			}
		}
		[CRepr]
		public struct IDsObjectPickerCredentials : IDsObjectPicker
		{
			public const new Guid IID = .(0xe2d3ec9b, 0xd041, 0x445a, 0x8f, 0x16, 0x47, 0x48, 0xde, 0x8f, 0xb1, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCredentials(PWSTR szUserName, PWSTR szPassword) mut => VT.SetCredentials(ref this, szUserName, szPassword);

			[CRepr]
			public struct VTable : IDsObjectPicker.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsObjectPickerCredentials self, PWSTR szUserName, PWSTR szPassword) SetCredentials;
			}
		}
		[CRepr]
		public struct IDsAdminCreateObj : IUnknown
		{
			public const new Guid IID = .(0x53554a38, 0xf902, 0x11d2, 0x82, 0xb9, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IADsContainer pADsContainerObj, ref IADs pADsCopySource, PWSTR lpszClassName) mut => VT.Initialize(ref this, ref pADsContainerObj, ref pADsCopySource, lpszClassName);
			public HRESULT CreateModal(HWND hwndParent, out IADs* ppADsObj) mut => VT.CreateModal(ref this, hwndParent, out ppADsObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminCreateObj self, ref IADsContainer pADsContainerObj, ref IADs pADsCopySource, PWSTR lpszClassName) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminCreateObj self, HWND hwndParent, out IADs* ppADsObj) CreateModal;
			}
		}
		[CRepr]
		public struct IDsAdminNewObj : IUnknown
		{
			public const new Guid IID = .(0xf2573587, 0xe6fc, 0x11d2, 0x82, 0xaf, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetButtons(uint32 nCurrIndex, BOOL bValid) mut => VT.SetButtons(ref this, nCurrIndex, bValid);
			public HRESULT GetPageCounts(out int32 pnTotal, out int32 pnStartIndex) mut => VT.GetPageCounts(ref this, out pnTotal, out pnStartIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObj self, uint32 nCurrIndex, BOOL bValid) SetButtons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObj self, out int32 pnTotal, out int32 pnStartIndex) GetPageCounts;
			}
		}
		[CRepr]
		public struct IDsAdminNewObjPrimarySite : IUnknown
		{
			public const new Guid IID = .(0xbe2b487e, 0xf904, 0x11d2, 0x82, 0xb9, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateNew(PWSTR pszName) mut => VT.CreateNew(ref this, pszName);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjPrimarySite self, PWSTR pszName) CreateNew;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjPrimarySite self) Commit;
			}
		}
		[CRepr]
		public struct IDsAdminNewObjExt : IUnknown
		{
			public const new Guid IID = .(0x6088eae2, 0xe7bf, 0x11d2, 0x82, 0xaf, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IADsContainer pADsContainerObj, ref IADs pADsCopySource, PWSTR lpszClassName, ref IDsAdminNewObj pDsAdminNewObj, out DSA_NEWOBJ_DISPINFO pDispInfo) mut => VT.Initialize(ref this, ref pADsContainerObj, ref pADsCopySource, lpszClassName, ref pDsAdminNewObj, out pDispInfo);
			public HRESULT AddPages(LPFNSVADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam) mut => VT.AddPages(ref this, lpfnAddPage, lParam);
			public HRESULT SetObject(ref IADs pADsObj) mut => VT.SetObject(ref this, ref pADsObj);
			public HRESULT WriteData(HWND hWnd, uint32 uContext) mut => VT.WriteData(ref this, hWnd, uContext);
			public HRESULT OnError(HWND hWnd, HRESULT hr, uint32 uContext) mut => VT.OnError(ref this, hWnd, hr, uContext);
			public HRESULT GetSummaryInfo(out BSTR pBstrText) mut => VT.GetSummaryInfo(ref this, out pBstrText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, ref IADsContainer pADsContainerObj, ref IADs pADsCopySource, PWSTR lpszClassName, ref IDsAdminNewObj pDsAdminNewObj, out DSA_NEWOBJ_DISPINFO pDispInfo) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, LPFNSVADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam) AddPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, ref IADs pADsObj) SetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, HWND hWnd, uint32 uContext) WriteData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, HWND hWnd, HRESULT hr, uint32 uContext) OnError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNewObjExt self, out BSTR pBstrText) GetSummaryInfo;
			}
		}
		[CRepr]
		public struct IDsAdminNotifyHandler : IUnknown
		{
			public const new Guid IID = .(0xe4a2b8b3, 0x5a18, 0x11d2, 0x97, 0xc1, 0x00, 0xa0, 0xc9, 0xa0, 0x6d, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IDataObject pExtraInfo, out uint32 puEventFlags) mut => VT.Initialize(ref this, ref pExtraInfo, out puEventFlags);
			public HRESULT Begin(uint32 uEvent, ref IDataObject pArg1, ref IDataObject pArg2, out uint32 puFlags, out BSTR pBstr) mut => VT.Begin(ref this, uEvent, ref pArg1, ref pArg2, out puFlags, out pBstr);
			public HRESULT Notify(uint32 nItem, uint32 uFlags) mut => VT.Notify(ref this, nItem, uFlags);
			public HRESULT End() mut => VT.End(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNotifyHandler self, ref IDataObject pExtraInfo, out uint32 puEventFlags) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNotifyHandler self, uint32 uEvent, ref IDataObject pArg1, ref IDataObject pArg2, out uint32 puFlags, out BSTR pBstr) Begin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNotifyHandler self, uint32 nItem, uint32 uFlags) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDsAdminNotifyHandler self) End;
			}
		}
		
		// --- Functions ---
		
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsGetObject(PWSTR lpszPathName, in Guid riid, void** ppObject);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildEnumerator(ref IADsContainer pADsContainer, out IEnumVARIANT* ppEnumVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsFreeEnumerator(ref IEnumVARIANT pEnumVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsEnumerateNext(ref IEnumVARIANT pEnumVariant, uint32 cElements, out VARIANT pvar, out uint32 pcElementsFetched);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildVarArrayStr(PWSTR* lppPathNames, uint32 dwPathNames, out VARIANT pVar);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildVarArrayInt(out uint32 lpdwObjectTypes, uint32 dwObjectTypes, out VARIANT pVar);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsOpenObject(PWSTR lpszPathName, PWSTR lpszUserName, PWSTR lpszPassword, ADS_AUTHENTICATION_ENUM dwReserved, in Guid riid, void** ppObject);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsGetLastError(out uint32 lpError, char16* lpErrorBuf, uint32 dwErrorBufLen, char16* lpNameBuf, uint32 dwNameBufLen);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ADsSetLastError(uint32 dwErr, PWSTR pszError, PWSTR pszProvider);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* AllocADsMem(uint32 cb);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeADsMem(void* pMem);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ReallocADsMem(void* pOldMem, uint32 cbOld, uint32 cbNew);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR AllocADsStr(PWSTR pStr);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeADsStr(PWSTR pStr);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReallocADsStr(out PWSTR ppStr, PWSTR pStr);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsEncodeBinaryData(out uint8 pbSrcData, uint32 dwSrcLen, out PWSTR ppszDestData);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsDecodeBinaryData(PWSTR szSrcData, out uint8* ppbDestData, out uint32 pdwDestLen);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToAdsType(out VARIANT pVariant, uint32 dwNumVariant, out ADSVALUE* ppAdsValues, out uint32 pdwNumValues);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AdsTypeToPropVariant(out ADSVALUE pAdsValues, uint32 dwNumValues, out VARIANT pVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void AdsFreeAdsValues(out ADSVALUE pAdsValues, uint32 dwNumValues);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BinarySDToSecurityDescriptor(out SECURITY_DESCRIPTOR pSecurityDescriptor, out VARIANT pVarsec, PWSTR pszServerName, PWSTR userName, PWSTR passWord, uint32 dwFlags);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SecurityDescriptorToBinarySD(VARIANT vVarSecDes, out SECURITY_DESCRIPTOR* ppSecurityDescriptor, out uint32 pdwSDLength, PWSTR pszServerName, PWSTR userName, PWSTR passWord, uint32 dwFlags);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DsBrowseForContainerW(out DSBROWSEINFOW pInfo);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DsBrowseForContainerA(out DSBROWSEINFOA pInfo);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON DsGetIcon(uint32 dwFlags, PWSTR pszObjectClass, int32 cxImage, int32 cyImage);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DsGetFriendlyClassName(PWSTR pszObjectClass, char16* pszBuffer, uint32 cchBuffer);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsPropCreateNotifyObj(ref IDataObject pAppThdDataObj, PWSTR pwzADsObjName, out HWND phNotifyObj);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropGetInitInfo(HWND hNotifyObj, out ADSPROPINITPARAMS pInitParams);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSetHwndWithTitle(HWND hNotifyObj, HWND hPage, ref int8 ptzTitle);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSetHwnd(HWND hNotifyObj, HWND hPage);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropCheckIfWritable(PWSTR pwzAttr, in ADS_ATTR_INFO pWritableAttrs);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSendErrorMessage(HWND hNotifyObj, out ADSPROPERROR pError);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropShowErrorDialog(HWND hNotifyObj, HWND hPage);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakeSpnW(PWSTR ServiceClass, PWSTR ServiceName, PWSTR InstanceName, uint16 InstancePort, PWSTR Referrer, out uint32 pcSpnLength, char16* pszSpn);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakeSpnA(PSTR ServiceClass, PSTR ServiceName, PSTR InstanceName, uint16 InstancePort, PSTR Referrer, out uint32 pcSpnLength, uint8* pszSpn);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpnA(PSTR pszSpn, uint32* pcServiceClass, uint8* ServiceClass, uint32* pcServiceName, uint8* ServiceName, uint32* pcInstanceName, uint8* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpnW(PWSTR pszSpn, uint32* pcServiceClass, char16* ServiceClass, uint32* pcServiceName, char16* ServiceName, uint32* pcInstanceName, char16* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuoteRdnValueW(uint32 cUnquotedRdnValueLength, char16* psUnquotedRdnValue, out uint32 pcQuotedRdnValueLength, char16* psQuotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuoteRdnValueA(uint32 cUnquotedRdnValueLength, uint8* psUnquotedRdnValue, out uint32 pcQuotedRdnValueLength, uint8* psQuotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnquoteRdnValueW(uint32 cQuotedRdnValueLength, char16* psQuotedRdnValue, out uint32 pcUnquotedRdnValueLength, char16* psUnquotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnquoteRdnValueA(uint32 cQuotedRdnValueLength, uint8* psQuotedRdnValue, out uint32 pcUnquotedRdnValueLength, uint8* psUnquotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetRdnW(PWSTR* ppDN, out uint32 pcDN, out PWSTR ppKey, out uint32 pcKey, out PWSTR ppVal, out uint32 pcVal);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsCrackUnquotedMangledRdnW(char16* pszRDN, uint32 cchRDN, Guid* pGuid, DS_MANGLE_FOR* peDsMangleFor);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsCrackUnquotedMangledRdnA(uint8* pszRDN, uint32 cchRDN, Guid* pGuid, DS_MANGLE_FOR* peDsMangleFor);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsIsMangledRdnValueW(char16* pszRdn, uint32 cRdn, DS_MANGLE_FOR eDsMangleForDesired);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsIsMangledRdnValueA(uint8* pszRdn, uint32 cRdn, DS_MANGLE_FOR eDsMangleForDesired);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsIsMangledDnA(PSTR pszDn, DS_MANGLE_FOR eDsMangleFor);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DsIsMangledDnW(PWSTR pszDn, DS_MANGLE_FOR eDsMangleFor);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpn2A(uint8* pszSpn, uint32 cSpn, uint32* pcServiceClass, uint8* ServiceClass, uint32* pcServiceName, uint8* ServiceName, uint32* pcInstanceName, uint8* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpn2W(char16* pszSpn, uint32 cSpn, uint32* pcServiceClass, char16* ServiceClass, uint32* pcServiceName, char16* ServiceName, uint32* pcInstanceName, char16* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpn3W(PWSTR pszSpn, uint32 cSpn, out uint32 pcHostName, char16* HostName, out uint32 pcInstanceName, char16* InstanceName, out uint16 pPortNumber, out uint32 pcDomainName, char16* DomainName, out uint32 pcRealmName, char16* RealmName);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpn4W(PWSTR pszSpn, uint32 cSpn, out uint32 pcHostName, char16* HostName, out uint32 pcInstanceName, char16* InstanceName, out uint32 pcPortName, char16* PortName, out uint32 pcDomainName, char16* DomainName, out uint32 pcRealmName, char16* RealmName);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindW(PWSTR DomainControllerName, PWSTR DnsDomainName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindA(PSTR DomainControllerName, PSTR DnsDomainName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithCredW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithCredA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnExW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, uint32 BindFlags, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnExA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, uint32 BindFlags, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindByInstanceW(PWSTR ServerName, PWSTR Annotation, Guid* InstanceGuid, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, uint32 BindFlags, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindByInstanceA(PSTR ServerName, PSTR Annotation, Guid* InstanceGuid, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, uint32 BindFlags, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindToISTGW(PWSTR SiteName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindToISTGA(PSTR SiteName, out HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindingSetTimeout(HANDLE hDS, uint32 cTimeoutSecs);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnBindW(ref HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnBindA(ref HANDLE phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakePasswordCredentialsW(PWSTR User, PWSTR Domain, PWSTR Password, void** pAuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakePasswordCredentialsA(PSTR User, PSTR Domain, PSTR Password, void** pAuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreePasswordCredentials(void* AuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackNamesW(HANDLE hDS, DS_NAME_FLAGS flags, DS_NAME_FORMAT formatOffered, DS_NAME_FORMAT formatDesired, uint32 cNames, PWSTR* rpNames, out DS_NAME_RESULTW* ppResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackNamesA(HANDLE hDS, DS_NAME_FLAGS flags, DS_NAME_FORMAT formatOffered, DS_NAME_FORMAT formatDesired, uint32 cNames, PSTR* rpNames, out DS_NAME_RESULTA* ppResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeNameResultW(ref DS_NAME_RESULTW pResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeNameResultA(ref DS_NAME_RESULTA pResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSpnA(DS_SPN_NAME_TYPE ServiceType, PSTR ServiceClass, PSTR ServiceName, uint16 InstancePort, uint16 cInstanceNames, PSTR* pInstanceNames, uint16* pInstancePorts, out uint32 pcSpn, out PSTR* prpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSpnW(DS_SPN_NAME_TYPE ServiceType, PWSTR ServiceClass, PWSTR ServiceName, uint16 InstancePort, uint16 cInstanceNames, PWSTR* pInstanceNames, uint16* pInstancePorts, out uint32 pcSpn, out PWSTR* prpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSpnArrayA(uint32 cSpn, PSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSpnArrayW(uint32 cSpn, PWSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsWriteAccountSpnA(HANDLE hDS, DS_SPN_WRITE_OP Operation, PSTR pszAccount, uint32 cSpn, PSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsWriteAccountSpnW(HANDLE hDS, DS_SPN_WRITE_OP Operation, PWSTR pszAccount, uint32 cSpn, PWSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsClientMakeSpnForTargetServerW(PWSTR ServiceClass, PWSTR ServiceName, out uint32 pcSpnLength, char16* pszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsClientMakeSpnForTargetServerA(PSTR ServiceClass, PSTR ServiceName, out uint32 pcSpnLength, uint8* pszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsServerRegisterSpnA(DS_SPN_WRITE_OP Operation, PSTR ServiceClass, PSTR UserObjectDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsServerRegisterSpnW(DS_SPN_WRITE_OP Operation, PWSTR ServiceClass, PWSTR UserObjectDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncA(HANDLE hDS, PSTR NameContext, in Guid pUuidDsaSrc, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncW(HANDLE hDS, PWSTR NameContext, in Guid pUuidDsaSrc, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaAddA(HANDLE hDS, PSTR NameContext, PSTR SourceDsaDn, PSTR TransportDn, PSTR SourceDsaAddress, SCHEDULE* pSchedule, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaAddW(HANDLE hDS, PWSTR NameContext, PWSTR SourceDsaDn, PWSTR TransportDn, PWSTR SourceDsaAddress, SCHEDULE* pSchedule, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaDelA(HANDLE hDS, PSTR NameContext, PSTR DsaSrc, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaDelW(HANDLE hDS, PWSTR NameContext, PWSTR DsaSrc, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaModifyA(HANDLE hDS, PSTR NameContext, Guid* pUuidSourceDsa, PSTR TransportDn, PSTR SourceDsaAddress, SCHEDULE* pSchedule, uint32 ReplicaFlags, uint32 ModifyFields, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaModifyW(HANDLE hDS, PWSTR NameContext, Guid* pUuidSourceDsa, PWSTR TransportDn, PWSTR SourceDsaAddress, SCHEDULE* pSchedule, uint32 ReplicaFlags, uint32 ModifyFields, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaUpdateRefsA(HANDLE hDS, PSTR NameContext, PSTR DsaDest, in Guid pUuidDsaDest, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaUpdateRefsW(HANDLE hDS, PWSTR NameContext, PWSTR DsaDest, in Guid pUuidDsaDest, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncAllA(HANDLE hDS, PSTR pszNameContext, uint32 ulFlags, int pFnCallBack, void* pCallbackData, DS_REPSYNCALL_ERRINFOA*** pErrors);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncAllW(HANDLE hDS, PWSTR pszNameContext, uint32 ulFlags, int pFnCallBack, void* pCallbackData, DS_REPSYNCALL_ERRINFOW*** pErrors);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsRemoveDsServerW(HANDLE hDs, PWSTR ServerDN, PWSTR DomainDN, BOOL* fLastDcInDomain, BOOL fCommit);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsRemoveDsServerA(HANDLE hDs, PSTR ServerDN, PSTR DomainDN, BOOL* fLastDcInDomain, BOOL fCommit);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsRemoveDsDomainW(HANDLE hDs, PWSTR DomainDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsRemoveDsDomainA(HANDLE hDs, PSTR DomainDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListSitesA(HANDLE hDs, out DS_NAME_RESULTA* ppSites);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListSitesW(HANDLE hDs, out DS_NAME_RESULTW* ppSites);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersInSiteA(HANDLE hDs, PSTR site, out DS_NAME_RESULTA* ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersInSiteW(HANDLE hDs, PWSTR site, out DS_NAME_RESULTW* ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListDomainsInSiteA(HANDLE hDs, PSTR site, out DS_NAME_RESULTA* ppDomains);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListDomainsInSiteW(HANDLE hDs, PWSTR site, out DS_NAME_RESULTW* ppDomains);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersForDomainInSiteA(HANDLE hDs, PSTR domain, PSTR site, out DS_NAME_RESULTA* ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersForDomainInSiteW(HANDLE hDs, PWSTR domain, PWSTR site, out DS_NAME_RESULTW* ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListInfoForServerA(HANDLE hDs, PSTR server, out DS_NAME_RESULTA* ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListInfoForServerW(HANDLE hDs, PWSTR server, out DS_NAME_RESULTW* ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListRolesA(HANDLE hDs, out DS_NAME_RESULTA* ppRoles);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListRolesW(HANDLE hDs, out DS_NAME_RESULTW* ppRoles);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuerySitesByCostW(HANDLE hDS, PWSTR pwszFromSite, PWSTR* rgwszToSites, uint32 cToSites, uint32 dwFlags, out DS_SITE_COST_INFO* prgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuerySitesByCostA(HANDLE hDS, PSTR pszFromSite, PSTR* rgszToSites, uint32 cToSites, uint32 dwFlags, out DS_SITE_COST_INFO* prgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsQuerySitesFree(ref DS_SITE_COST_INFO rgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMapSchemaGuidsA(HANDLE hDs, uint32 cGuids, Guid* rGuids, out DS_SCHEMA_GUID_MAPA* ppGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSchemaGuidMapA(ref DS_SCHEMA_GUID_MAPA pGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMapSchemaGuidsW(HANDLE hDs, uint32 cGuids, Guid* rGuids, out DS_SCHEMA_GUID_MAPW* ppGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSchemaGuidMapW(ref DS_SCHEMA_GUID_MAPW pGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDomainControllerInfoA(HANDLE hDs, PSTR DomainName, uint32 InfoLevel, out uint32 pcOut, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDomainControllerInfoW(HANDLE hDs, PWSTR DomainName, uint32 InfoLevel, out uint32 pcOut, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeDomainControllerInfoA(uint32 InfoLevel, uint32 cInfo, void* pInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeDomainControllerInfoW(uint32 InfoLevel, uint32 cInfo, void* pInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaConsistencyCheck(HANDLE hDS, DS_KCC_TASKID TaskID, uint32 dwFlags);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaVerifyObjectsW(HANDLE hDS, PWSTR NameContext, in Guid pUuidDsaSrc, uint32 ulOptions);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaVerifyObjectsA(HANDLE hDS, PSTR NameContext, in Guid pUuidDsaSrc, uint32 ulOptions);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaGetInfoW(HANDLE hDS, DS_REPL_INFO_TYPE InfoType, PWSTR pszObject, Guid* puuidForSourceDsaObjGuid, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaGetInfo2W(HANDLE hDS, DS_REPL_INFO_TYPE InfoType, PWSTR pszObject, Guid* puuidForSourceDsaObjGuid, PWSTR pszAttributeName, PWSTR pszValue, uint32 dwFlags, uint32 dwEnumerationContext, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsReplicaFreeInfo(DS_REPL_INFO_TYPE InfoType, void* pInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddSidHistoryW(HANDLE hDS, uint32 Flags, PWSTR SrcDomain, PWSTR SrcPrincipal, PWSTR SrcDomainController, void* SrcDomainCreds, PWSTR DstDomain, PWSTR DstPrincipal);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddSidHistoryA(HANDLE hDS, uint32 Flags, PSTR SrcDomain, PSTR SrcPrincipal, PSTR SrcDomainController, void* SrcDomainCreds, PSTR DstDomain, PSTR DstPrincipal);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsInheritSecurityIdentityW(HANDLE hDS, uint32 Flags, PWSTR SrcPrincipal, PWSTR DstPrincipal);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsInheritSecurityIdentityA(HANDLE hDS, uint32 Flags, PSTR SrcPrincipal, PSTR DstPrincipal);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsRoleGetPrimaryDomainInformation(PWSTR lpServer, DSROLE_PRIMARY_DOMAIN_INFO_LEVEL InfoLevel, out uint8* Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsRoleFreeMemory(void* Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNameA(PSTR ComputerName, PSTR DomainName, Guid* DomainGuid, PSTR SiteName, uint32 Flags, out DOMAIN_CONTROLLER_INFOA* DomainControllerInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNameW(PWSTR ComputerName, PWSTR DomainName, Guid* DomainGuid, PWSTR SiteName, uint32 Flags, out DOMAIN_CONTROLLER_INFOW* DomainControllerInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSiteNameA(PSTR ComputerName, out PSTR SiteName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSiteNameW(PWSTR ComputerName, out PWSTR SiteName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsValidateSubnetNameW(PWSTR SubnetName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsValidateSubnetNameA(PSTR SubnetName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesW(PWSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, out PWSTR* SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesA(PSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, out PSTR* SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesExW(PWSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, out PWSTR* SiteNames, out PWSTR* SubnetNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesExA(PSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, out PSTR* SiteNames, out PSTR* SubnetNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsEnumerateDomainTrustsW(PWSTR ServerName, uint32 Flags, out DS_DOMAIN_TRUSTSW* Domains, out uint32 DomainCount);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsEnumerateDomainTrustsA(PSTR ServerName, uint32 Flags, out DS_DOMAIN_TRUSTSA* Domains, out uint32 DomainCount);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetForestTrustInformationW(PWSTR ServerName, PWSTR TrustedDomainName, uint32 Flags, out LSA_FOREST_TRUST_INFORMATION* ForestTrustInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMergeForestTrustInformationW(PWSTR DomainName, ref LSA_FOREST_TRUST_INFORMATION NewForestTrustInfo, LSA_FOREST_TRUST_INFORMATION* OldForestTrustInfo, out LSA_FOREST_TRUST_INFORMATION* MergedForestTrustInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcSiteCoverageW(PWSTR ServerName, out uint32 EntryCount, out PWSTR* SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcSiteCoverageA(PSTR ServerName, out uint32 EntryCount, out PSTR* SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsDeregisterDnsHostRecordsW(PWSTR ServerName, PWSTR DnsDomainName, Guid* DomainGuid, Guid* DsaGuid, PWSTR DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsDeregisterDnsHostRecordsA(PSTR ServerName, PSTR DnsDomainName, Guid* DomainGuid, Guid* DsaGuid, PSTR DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcOpenW(PWSTR DnsName, uint32 OptionFlags, PWSTR SiteName, Guid* DomainGuid, PWSTR DnsForestName, uint32 DcFlags, out GetDcContextHandle RetGetDcContext);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcOpenA(PSTR DnsName, uint32 OptionFlags, PSTR SiteName, Guid* DomainGuid, PSTR DnsForestName, uint32 DcFlags, out GetDcContextHandle RetGetDcContext);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNextW(HANDLE GetDcContextHandle, uint32* SockAddressCount, SOCKET_ADDRESS** SockAddresses, PWSTR* DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNextA(HANDLE GetDcContextHandle, uint32* SockAddressCount, SOCKET_ADDRESS** SockAddresses, PSTR* DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsGetDcCloseW(GetDcContextHandle GetDcContextHandle);
	}
}
