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
		
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_STATUSENUM : int32
		{
			S_OK = 0,
			INVALID_SEARCHPREF = 1,
			INVALID_SEARCHPREFVALUE = 2,
		}
		[AllowDuplicates]
		public enum ADS_DEREFENUM : int32
		{
			NEVER = 0,
			SEARCHING = 1,
			FINDING = 2,
			ALWAYS = 3,
		}
		[AllowDuplicates]
		public enum ADS_SCOPEENUM : int32
		{
			BASE = 0,
			ONELEVEL = 1,
			SUBTREE = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADSI_DIALECT_ENUM : int32
		{
			LDAP = 0,
			SQL = 1,
		}
		[AllowDuplicates]
		public enum ADS_CHASE_REFERRALS_ENUM : int32
		{
			NEVER = 0,
			SUBORDINATE = 32,
			EXTERNAL = 64,
			ALWAYS = 96,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_PASSWORD_ENCODING_ENUM : int32
		{
			REQUIRE_SSL = 0,
			CLEAR = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_FLAGTYPE_ENUM : int32
		{
			OBJECT_TYPE_PRESENT = 1,
			INHERITED_OBJECT_TYPE_PRESENT = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_SD_REVISION_ENUM : int32
		{
			ADS_SD_REVISION_DS = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_NAME_INITTYPE_ENUM : int32
		{
			DOMAIN = 1,
			SERVER = 2,
			GC = 3,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_SECURITY_INFO_ENUM : int32
		{
			OWNER = 1,
			GROUP = 2,
			DACL = 4,
			SACL = 8,
		}
		[AllowDuplicates]
		public enum ADS_SETTYPE_ENUM : int32
		{
			FULL = 1,
			PROVIDER = 2,
			SERVER = 3,
			DN = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum ADS_DISPLAY_ENUM : int32
		{
			FULL = 1,
			VALUE_ONLY = 2,
		}
		[AllowDuplicates]
		public enum ADS_ESCAPE_MODE_ENUM : int32
		{
			DEFAULT = 1,
			ON = 2,
			OFF = 3,
			OFF_EX = 4,
		}
		[AllowDuplicates]
		public enum ADS_PATHTYPE_ENUM : int32
		{
			FILE = 1,
			FILESHARE = 2,
			REGISTRY = 3,
		}
		[AllowDuplicates]
		public enum ADS_SD_FORMAT_ENUM : int32
		{
			IID = 1,
			RAW = 2,
			HEXSTRING = 3,
		}
		[AllowDuplicates]
		public enum DS_MANGLE_FOR : int32
		{
			UNKNOWN = 0,
			OBJECT_RDN_FOR_DELETION = 1,
			OBJECT_RDN_FOR_NAME_CONFLICT = 2,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DS_NAME_FLAGS : int32
		{
			NO_FLAGS = 0,
			FLAG_SYNTACTICAL_ONLY = 1,
			FLAG_EVAL_AT_DC = 2,
			FLAG_GCVERIFY = 4,
			FLAG_TRUST_REFERRAL = 8,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DS_SPN_NAME_TYPE : int32
		{
			DNS_HOST = 0,
			DN_HOST = 1,
			NB_HOST = 2,
			DOMAIN = 3,
			NB_DOMAIN = 4,
			SERVICE = 5,
		}
		[AllowDuplicates]
		public enum DS_SPN_WRITE_OP : int32
		{
			ADD_SPN_OP = 0,
			REPLACE_SPN_OP = 1,
			DELETE_SPN_OP = 2,
		}
		[AllowDuplicates]
		public enum DS_REPSYNCALL_ERROR : int32
		{
			WIN32_ERROR_CONTACTING_SERVER = 0,
			WIN32_ERROR_REPLICATING = 1,
			SERVER_UNREACHABLE = 2,
		}
		[AllowDuplicates]
		public enum DS_REPSYNCALL_EVENT : int32
		{
			ERROR = 0,
			SYNC_STARTED = 1,
			SYNC_COMPLETED = 2,
			FINISHED = 3,
		}
		[AllowDuplicates]
		public enum DS_KCC_TASKID : int32
		{
			DS_KCC_TASKID_UPDATE_TOPOLOGY = 0,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum DS_REPL_OP_TYPE : int32
		{
			SYNC = 0,
			ADD = 1,
			DELETE = 2,
			MODIFY = 3,
			UPDATE_REFS = 4,
		}
		[AllowDuplicates]
		public enum DSROLE_MACHINE_ROLE : int32
		{
			StandaloneWorkstation = 0,
			MemberWorkstation = 1,
			StandaloneServer = 2,
			MemberServer = 3,
			BackupDomainController = 4,
			PrimaryDomainController = 5,
		}
		[AllowDuplicates]
		public enum DSROLE_SERVER_STATE : int32
		{
			Unknown = 0,
			Primary = 1,
			Backup = 2,
		}
		[AllowDuplicates]
		public enum DSROLE_PRIMARY_DOMAIN_INFO_LEVEL : int32
		{
			PrimaryDomainInfoBasic = 1,
			UpgradeStatus = 2,
			OperationState = 3,
		}
		[AllowDuplicates]
		public enum DSROLE_OPERATION_STATE : int32
		{
			Idle = 0,
			Active = 1,
			NeedReboot = 2,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT LPCQADDFORMSPROC(LPARAM lParam, CQFORM* pForm);
		public function HRESULT LPCQADDPAGESPROC(LPARAM lParam, Guid* clsidForm, CQPAGE* pPage);
		public function HRESULT LPCQPAGEPROC(CQPAGE* pPage, HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
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
			public DSOBJECT[] aObjects;
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
			public DOMAINDESC[] aDomains;
		}
		[CRepr]
		public struct DSCLASSCREATIONINFO
		{
			public uint32 dwFlags;
			public Guid clsidWizardDialog;
			public Guid clsidWizardPrimaryPage;
			public uint32 cWizardExtensions;
			public Guid[] aWizardExtensions;
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
			public DS_SELECTION[] aDsSelection;
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
			public DSCOLUMN[] aColumns;
		}
		[CRepr]
		public struct DSQUERYCLASSLIST
		{
			public uint32 cbStruct;
			public int32 cClasses;
			public uint32[] offsetClass;
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
			public SCHEDULE_HEADER[] Schedules;
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
			public DS_REPL_NEIGHBORW[] rgNeighbor;
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
			public DS_REPL_CURSOR[] rgCursor;
		}
		[CRepr]
		public struct DS_REPL_CURSORS_2
		{
			public uint32 cNumCursors;
			public uint32 dwEnumerationContext;
			public DS_REPL_CURSOR_2[] rgCursor;
		}
		[CRepr]
		public struct DS_REPL_CURSORS_3W
		{
			public uint32 cNumCursors;
			public uint32 dwEnumerationContext;
			public DS_REPL_CURSOR_3W[] rgCursor;
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
			public DS_REPL_ATTR_META_DATA[] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_OBJ_META_DATA_2
		{
			public uint32 cNumEntries;
			public uint32 dwReserved;
			public DS_REPL_ATTR_META_DATA_2[] rgMetaData;
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
			public DS_REPL_KCC_DSA_FAILUREW[] rgDsaFailure;
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
			public DS_REPL_OPW[] rgPendingOp;
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
			public DS_REPL_VALUE_META_DATA[] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_ATTR_VALUE_META_DATA_2
		{
			public uint32 cNumEntries;
			public uint32 dwEnumerationContext;
			public DS_REPL_VALUE_META_DATA_2[] rgMetaData;
		}
		[CRepr]
		public struct DS_REPL_ATTR_VALUE_META_DATA_EXT
		{
			public uint32 cNumEntries;
			public uint32 dwEnumerationContext;
			public DS_REPL_VALUE_META_DATA_EXT[] rgMetaData;
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
			
			public HRESULT Initialize(HKEY hkForm) mut
			{
				return VT.Initialize(&this, hkForm);
			}
			public HRESULT AddForms(LPCQADDFORMSPROC pAddFormsProc, LPARAM lParam) mut
			{
				return VT.AddForms(&this, pAddFormsProc, lParam);
			}
			public HRESULT AddPages(LPCQADDPAGESPROC pAddPagesProc, LPARAM lParam) mut
			{
				return VT.AddPages(&this, pAddPagesProc, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryForm *self, HKEY hkForm) Initialize;
				public new function HRESULT(IQueryForm *self, LPCQADDFORMSPROC pAddFormsProc, LPARAM lParam) AddForms;
				public new function HRESULT(IQueryForm *self, LPCQADDPAGESPROC pAddPagesProc, LPARAM lParam) AddPages;
			}
		}
		[CRepr]
		public struct IPersistQuery : IPersist
		{
			public const new Guid IID = .(0x1a3114b8, 0xa62e, 0x11d0, 0xa6, 0xc5, 0x00, 0xa0, 0xc9, 0x06, 0xaf, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteString(PWSTR pSection, PWSTR pValueName, PWSTR pValue) mut
			{
				return VT.WriteString(&this, pSection, pValueName, pValue);
			}
			public HRESULT ReadString(PWSTR pSection, PWSTR pValueName, PWSTR pBuffer, int32 cchBuffer) mut
			{
				return VT.ReadString(&this, pSection, pValueName, pBuffer, cchBuffer);
			}
			public HRESULT WriteInt(PWSTR pSection, PWSTR pValueName, int32 value) mut
			{
				return VT.WriteInt(&this, pSection, pValueName, value);
			}
			public HRESULT ReadInt(PWSTR pSection, PWSTR pValueName, int32* pValue) mut
			{
				return VT.ReadInt(&this, pSection, pValueName, pValue);
			}
			public HRESULT WriteStruct(PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) mut
			{
				return VT.WriteStruct(&this, pSection, pValueName, pStruct, cbStruct);
			}
			public HRESULT ReadStruct(PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) mut
			{
				return VT.ReadStruct(&this, pSection, pValueName, pStruct, cbStruct);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, PWSTR pValue) WriteString;
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, PWSTR pBuffer, int32 cchBuffer) ReadString;
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, int32 value) WriteInt;
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, int32* pValue) ReadInt;
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) WriteStruct;
				public new function HRESULT(IPersistQuery *self, PWSTR pSection, PWSTR pValueName, void* pStruct, uint32 cbStruct) ReadStruct;
				public new function HRESULT(IPersistQuery *self) Clear;
			}
		}
		[CRepr]
		public struct ICommonQuery : IUnknown
		{
			public const new Guid IID = .(0xab50dec0, 0x6f1d, 0x11d0, 0xa1, 0xc4, 0x00, 0xaa, 0x00, 0xc1, 0x6e, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenQueryWindow(HWND hwndParent, OPENQUERYWINDOW* pQueryWnd, IDataObject** ppDataObject) mut
			{
				return VT.OpenQueryWindow(&this, hwndParent, pQueryWnd, ppDataObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICommonQuery *self, HWND hwndParent, OPENQUERYWINDOW* pQueryWnd, IDataObject** ppDataObject) OpenQueryWindow;
			}
		}
		[CRepr]
		public struct IADs : IDispatch
		{
			public const new Guid IID = .(0xfd8256d0, 0xfd15, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* retval) mut
			{
				return VT.get_Name(&this, retval);
			}
			public HRESULT get_Class(BSTR* retval) mut
			{
				return VT.get_Class(&this, retval);
			}
			public HRESULT get_GUID(BSTR* retval) mut
			{
				return VT.get_GUID(&this, retval);
			}
			public HRESULT get_ADsPath(BSTR* retval) mut
			{
				return VT.get_ADsPath(&this, retval);
			}
			public HRESULT get_Parent(BSTR* retval) mut
			{
				return VT.get_Parent(&this, retval);
			}
			public HRESULT get_Schema(BSTR* retval) mut
			{
				return VT.get_Schema(&this, retval);
			}
			public HRESULT GetInfo() mut
			{
				return VT.GetInfo(&this);
			}
			public HRESULT SetInfo() mut
			{
				return VT.SetInfo(&this);
			}
			public HRESULT Get(BSTR bstrName, VARIANT* pvProp) mut
			{
				return VT.Get(&this, bstrName, pvProp);
			}
			public HRESULT Put(BSTR bstrName, VARIANT vProp) mut
			{
				return VT.Put(&this, bstrName, vProp);
			}
			public HRESULT GetEx(BSTR bstrName, VARIANT* pvProp) mut
			{
				return VT.GetEx(&this, bstrName, pvProp);
			}
			public HRESULT PutEx(int32 lnControlCode, BSTR bstrName, VARIANT vProp) mut
			{
				return VT.PutEx(&this, lnControlCode, bstrName, vProp);
			}
			public HRESULT GetInfoEx(VARIANT vProperties, int32 lnReserved) mut
			{
				return VT.GetInfoEx(&this, vProperties, lnReserved);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADs *self, BSTR* retval) get_Name;
				public new function HRESULT(IADs *self, BSTR* retval) get_Class;
				public new function HRESULT(IADs *self, BSTR* retval) get_GUID;
				public new function HRESULT(IADs *self, BSTR* retval) get_ADsPath;
				public new function HRESULT(IADs *self, BSTR* retval) get_Parent;
				public new function HRESULT(IADs *self, BSTR* retval) get_Schema;
				public new function HRESULT(IADs *self) GetInfo;
				public new function HRESULT(IADs *self) SetInfo;
				public new function HRESULT(IADs *self, BSTR bstrName, VARIANT* pvProp) Get;
				public new function HRESULT(IADs *self, BSTR bstrName, VARIANT vProp) Put;
				public new function HRESULT(IADs *self, BSTR bstrName, VARIANT* pvProp) GetEx;
				public new function HRESULT(IADs *self, int32 lnControlCode, BSTR bstrName, VARIANT vProp) PutEx;
				public new function HRESULT(IADs *self, VARIANT vProperties, int32 lnReserved) GetInfoEx;
			}
		}
		[CRepr]
		public struct IADsContainer : IDispatch
		{
			public const new Guid IID = .(0x001677d0, 0xfd16, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* retval) mut
			{
				return VT.get_Count(&this, retval);
			}
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Filter(VARIANT* pVar) mut
			{
				return VT.get_Filter(&this, pVar);
			}
			public HRESULT put_Filter(VARIANT Var) mut
			{
				return VT.put_Filter(&this, Var);
			}
			public HRESULT get_Hints(VARIANT* pvFilter) mut
			{
				return VT.get_Hints(&this, pvFilter);
			}
			public HRESULT put_Hints(VARIANT vHints) mut
			{
				return VT.put_Hints(&this, vHints);
			}
			public HRESULT GetObject(BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) mut
			{
				return VT.GetObject(&this, ClassName, RelativeName, ppObject);
			}
			public HRESULT Create(BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) mut
			{
				return VT.Create(&this, ClassName, RelativeName, ppObject);
			}
			public HRESULT Delete(BSTR bstrClassName, BSTR bstrRelativeName) mut
			{
				return VT.Delete(&this, bstrClassName, bstrRelativeName);
			}
			public HRESULT CopyHere(BSTR SourceName, BSTR NewName, IDispatch** ppObject) mut
			{
				return VT.CopyHere(&this, SourceName, NewName, ppObject);
			}
			public HRESULT MoveHere(BSTR SourceName, BSTR NewName, IDispatch** ppObject) mut
			{
				return VT.MoveHere(&this, SourceName, NewName, ppObject);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsContainer *self, int32* retval) get_Count;
				public new function HRESULT(IADsContainer *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IADsContainer *self, VARIANT* pVar) get_Filter;
				public new function HRESULT(IADsContainer *self, VARIANT Var) put_Filter;
				public new function HRESULT(IADsContainer *self, VARIANT* pvFilter) get_Hints;
				public new function HRESULT(IADsContainer *self, VARIANT vHints) put_Hints;
				public new function HRESULT(IADsContainer *self, BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) GetObject;
				public new function HRESULT(IADsContainer *self, BSTR ClassName, BSTR RelativeName, IDispatch** ppObject) Create;
				public new function HRESULT(IADsContainer *self, BSTR bstrClassName, BSTR bstrRelativeName) Delete;
				public new function HRESULT(IADsContainer *self, BSTR SourceName, BSTR NewName, IDispatch** ppObject) CopyHere;
				public new function HRESULT(IADsContainer *self, BSTR SourceName, BSTR NewName, IDispatch** ppObject) MoveHere;
			}
		}
		[CRepr]
		public struct IADsCollection : IDispatch
		{
			public const new Guid IID = .(0x72b945e0, 0x253b, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppEnumerator) mut
			{
				return VT.get__NewEnum(&this, ppEnumerator);
			}
			public HRESULT Add(BSTR bstrName, VARIANT vItem) mut
			{
				return VT.Add(&this, bstrName, vItem);
			}
			public HRESULT Remove(BSTR bstrItemToBeRemoved) mut
			{
				return VT.Remove(&this, bstrItemToBeRemoved);
			}
			public HRESULT GetObject(BSTR bstrName, VARIANT* pvItem) mut
			{
				return VT.GetObject(&this, bstrName, pvItem);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsCollection *self, IUnknown** ppEnumerator) get__NewEnum;
				public new function HRESULT(IADsCollection *self, BSTR bstrName, VARIANT vItem) Add;
				public new function HRESULT(IADsCollection *self, BSTR bstrItemToBeRemoved) Remove;
				public new function HRESULT(IADsCollection *self, BSTR bstrName, VARIANT* pvItem) GetObject;
			}
		}
		[CRepr]
		public struct IADsMembers : IDispatch
		{
			public const new Guid IID = .(0x451a0030, 0x72ec, 0x11cf, 0xb0, 0x3b, 0x00, 0xaa, 0x00, 0x6e, 0x09, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get__NewEnum(IUnknown** ppEnumerator) mut
			{
				return VT.get__NewEnum(&this, ppEnumerator);
			}
			public HRESULT get_Filter(VARIANT* pvFilter) mut
			{
				return VT.get_Filter(&this, pvFilter);
			}
			public HRESULT put_Filter(VARIANT pvFilter) mut
			{
				return VT.put_Filter(&this, pvFilter);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsMembers *self, int32* plCount) get_Count;
				public new function HRESULT(IADsMembers *self, IUnknown** ppEnumerator) get__NewEnum;
				public new function HRESULT(IADsMembers *self, VARIANT* pvFilter) get_Filter;
				public new function HRESULT(IADsMembers *self, VARIANT pvFilter) put_Filter;
			}
		}
		[CRepr]
		public struct IADsPropertyList : IDispatch
		{
			public const new Guid IID = .(0xc6f602b6, 0x8f69, 0x11d0, 0x85, 0x28, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyCount(int32* plCount) mut
			{
				return VT.get_PropertyCount(&this, plCount);
			}
			public HRESULT Next(VARIANT* pVariant) mut
			{
				return VT.Next(&this, pVariant);
			}
			public HRESULT Skip(int32 cElements) mut
			{
				return VT.Skip(&this, cElements);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Item(VARIANT varIndex, VARIANT* pVariant) mut
			{
				return VT.Item(&this, varIndex, pVariant);
			}
			public HRESULT GetPropertyItem(BSTR bstrName, int32 lnADsType, VARIANT* pVariant) mut
			{
				return VT.GetPropertyItem(&this, bstrName, lnADsType, pVariant);
			}
			public HRESULT PutPropertyItem(VARIANT varData) mut
			{
				return VT.PutPropertyItem(&this, varData);
			}
			public HRESULT ResetPropertyItem(VARIANT varEntry) mut
			{
				return VT.ResetPropertyItem(&this, varEntry);
			}
			public HRESULT PurgePropertyList() mut
			{
				return VT.PurgePropertyList(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPropertyList *self, int32* plCount) get_PropertyCount;
				public new function HRESULT(IADsPropertyList *self, VARIANT* pVariant) Next;
				public new function HRESULT(IADsPropertyList *self, int32 cElements) Skip;
				public new function HRESULT(IADsPropertyList *self) Reset;
				public new function HRESULT(IADsPropertyList *self, VARIANT varIndex, VARIANT* pVariant) Item;
				public new function HRESULT(IADsPropertyList *self, BSTR bstrName, int32 lnADsType, VARIANT* pVariant) GetPropertyItem;
				public new function HRESULT(IADsPropertyList *self, VARIANT varData) PutPropertyItem;
				public new function HRESULT(IADsPropertyList *self, VARIANT varEntry) ResetPropertyItem;
				public new function HRESULT(IADsPropertyList *self) PurgePropertyList;
			}
		}
		[CRepr]
		public struct IADsPropertyEntry : IDispatch
		{
			public const new Guid IID = .(0x05792c8e, 0x941f, 0x11d0, 0x85, 0x29, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_Name(BSTR* retval) mut
			{
				return VT.get_Name(&this, retval);
			}
			public HRESULT put_Name(BSTR bstrName) mut
			{
				return VT.put_Name(&this, bstrName);
			}
			public HRESULT get_ADsType(int32* retval) mut
			{
				return VT.get_ADsType(&this, retval);
			}
			public HRESULT put_ADsType(int32 lnADsType) mut
			{
				return VT.put_ADsType(&this, lnADsType);
			}
			public HRESULT get_ControlCode(int32* retval) mut
			{
				return VT.get_ControlCode(&this, retval);
			}
			public HRESULT put_ControlCode(int32 lnControlCode) mut
			{
				return VT.put_ControlCode(&this, lnControlCode);
			}
			public HRESULT get_Values(VARIANT* retval) mut
			{
				return VT.get_Values(&this, retval);
			}
			public HRESULT put_Values(VARIANT vValues) mut
			{
				return VT.put_Values(&this, vValues);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPropertyEntry *self) Clear;
				public new function HRESULT(IADsPropertyEntry *self, BSTR* retval) get_Name;
				public new function HRESULT(IADsPropertyEntry *self, BSTR bstrName) put_Name;
				public new function HRESULT(IADsPropertyEntry *self, int32* retval) get_ADsType;
				public new function HRESULT(IADsPropertyEntry *self, int32 lnADsType) put_ADsType;
				public new function HRESULT(IADsPropertyEntry *self, int32* retval) get_ControlCode;
				public new function HRESULT(IADsPropertyEntry *self, int32 lnControlCode) put_ControlCode;
				public new function HRESULT(IADsPropertyEntry *self, VARIANT* retval) get_Values;
				public new function HRESULT(IADsPropertyEntry *self, VARIANT vValues) put_Values;
			}
		}
		[CRepr]
		public struct IADsPropertyValue : IDispatch
		{
			public const new Guid IID = .(0x79fa9ad0, 0xa97c, 0x11d0, 0x85, 0x34, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_ADsType(int32* retval) mut
			{
				return VT.get_ADsType(&this, retval);
			}
			public HRESULT put_ADsType(int32 lnADsType) mut
			{
				return VT.put_ADsType(&this, lnADsType);
			}
			public HRESULT get_DNString(BSTR* retval) mut
			{
				return VT.get_DNString(&this, retval);
			}
			public HRESULT put_DNString(BSTR bstrDNString) mut
			{
				return VT.put_DNString(&this, bstrDNString);
			}
			public HRESULT get_CaseExactString(BSTR* retval) mut
			{
				return VT.get_CaseExactString(&this, retval);
			}
			public HRESULT put_CaseExactString(BSTR bstrCaseExactString) mut
			{
				return VT.put_CaseExactString(&this, bstrCaseExactString);
			}
			public HRESULT get_CaseIgnoreString(BSTR* retval) mut
			{
				return VT.get_CaseIgnoreString(&this, retval);
			}
			public HRESULT put_CaseIgnoreString(BSTR bstrCaseIgnoreString) mut
			{
				return VT.put_CaseIgnoreString(&this, bstrCaseIgnoreString);
			}
			public HRESULT get_PrintableString(BSTR* retval) mut
			{
				return VT.get_PrintableString(&this, retval);
			}
			public HRESULT put_PrintableString(BSTR bstrPrintableString) mut
			{
				return VT.put_PrintableString(&this, bstrPrintableString);
			}
			public HRESULT get_NumericString(BSTR* retval) mut
			{
				return VT.get_NumericString(&this, retval);
			}
			public HRESULT put_NumericString(BSTR bstrNumericString) mut
			{
				return VT.put_NumericString(&this, bstrNumericString);
			}
			public HRESULT get_Boolean(int32* retval) mut
			{
				return VT.get_Boolean(&this, retval);
			}
			public HRESULT put_Boolean(int32 lnBoolean) mut
			{
				return VT.put_Boolean(&this, lnBoolean);
			}
			public HRESULT get_Integer(int32* retval) mut
			{
				return VT.get_Integer(&this, retval);
			}
			public HRESULT put_Integer(int32 lnInteger) mut
			{
				return VT.put_Integer(&this, lnInteger);
			}
			public HRESULT get_OctetString(VARIANT* retval) mut
			{
				return VT.get_OctetString(&this, retval);
			}
			public HRESULT put_OctetString(VARIANT vOctetString) mut
			{
				return VT.put_OctetString(&this, vOctetString);
			}
			public HRESULT get_SecurityDescriptor(IDispatch** retval) mut
			{
				return VT.get_SecurityDescriptor(&this, retval);
			}
			public HRESULT put_SecurityDescriptor(IDispatch* pSecurityDescriptor) mut
			{
				return VT.put_SecurityDescriptor(&this, pSecurityDescriptor);
			}
			public HRESULT get_LargeInteger(IDispatch** retval) mut
			{
				return VT.get_LargeInteger(&this, retval);
			}
			public HRESULT put_LargeInteger(IDispatch* pLargeInteger) mut
			{
				return VT.put_LargeInteger(&this, pLargeInteger);
			}
			public HRESULT get_UTCTime(double* retval) mut
			{
				return VT.get_UTCTime(&this, retval);
			}
			public HRESULT put_UTCTime(double daUTCTime) mut
			{
				return VT.put_UTCTime(&this, daUTCTime);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPropertyValue *self) Clear;
				public new function HRESULT(IADsPropertyValue *self, int32* retval) get_ADsType;
				public new function HRESULT(IADsPropertyValue *self, int32 lnADsType) put_ADsType;
				public new function HRESULT(IADsPropertyValue *self, BSTR* retval) get_DNString;
				public new function HRESULT(IADsPropertyValue *self, BSTR bstrDNString) put_DNString;
				public new function HRESULT(IADsPropertyValue *self, BSTR* retval) get_CaseExactString;
				public new function HRESULT(IADsPropertyValue *self, BSTR bstrCaseExactString) put_CaseExactString;
				public new function HRESULT(IADsPropertyValue *self, BSTR* retval) get_CaseIgnoreString;
				public new function HRESULT(IADsPropertyValue *self, BSTR bstrCaseIgnoreString) put_CaseIgnoreString;
				public new function HRESULT(IADsPropertyValue *self, BSTR* retval) get_PrintableString;
				public new function HRESULT(IADsPropertyValue *self, BSTR bstrPrintableString) put_PrintableString;
				public new function HRESULT(IADsPropertyValue *self, BSTR* retval) get_NumericString;
				public new function HRESULT(IADsPropertyValue *self, BSTR bstrNumericString) put_NumericString;
				public new function HRESULT(IADsPropertyValue *self, int32* retval) get_Boolean;
				public new function HRESULT(IADsPropertyValue *self, int32 lnBoolean) put_Boolean;
				public new function HRESULT(IADsPropertyValue *self, int32* retval) get_Integer;
				public new function HRESULT(IADsPropertyValue *self, int32 lnInteger) put_Integer;
				public new function HRESULT(IADsPropertyValue *self, VARIANT* retval) get_OctetString;
				public new function HRESULT(IADsPropertyValue *self, VARIANT vOctetString) put_OctetString;
				public new function HRESULT(IADsPropertyValue *self, IDispatch** retval) get_SecurityDescriptor;
				public new function HRESULT(IADsPropertyValue *self, IDispatch* pSecurityDescriptor) put_SecurityDescriptor;
				public new function HRESULT(IADsPropertyValue *self, IDispatch** retval) get_LargeInteger;
				public new function HRESULT(IADsPropertyValue *self, IDispatch* pLargeInteger) put_LargeInteger;
				public new function HRESULT(IADsPropertyValue *self, double* retval) get_UTCTime;
				public new function HRESULT(IADsPropertyValue *self, double daUTCTime) put_UTCTime;
			}
		}
		[CRepr]
		public struct IADsPropertyValue2 : IDispatch
		{
			public const new Guid IID = .(0x306e831c, 0x5bc7, 0x11d1, 0xa3, 0xb8, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectProperty(int32* lnADsType, VARIANT* pvProp) mut
			{
				return VT.GetObjectProperty(&this, lnADsType, pvProp);
			}
			public HRESULT PutObjectProperty(int32 lnADsType, VARIANT vProp) mut
			{
				return VT.PutObjectProperty(&this, lnADsType, vProp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPropertyValue2 *self, int32* lnADsType, VARIANT* pvProp) GetObjectProperty;
				public new function HRESULT(IADsPropertyValue2 *self, int32 lnADsType, VARIANT vProp) PutObjectProperty;
			}
		}
		[CRepr]
		public struct IPrivateDispatch : IUnknown
		{
			public const new Guid IID = .(0x86ab4bbe, 0x65f6, 0x11d1, 0x8c, 0x13, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ADSIInitializeDispatchManager(int32 dwExtensionId) mut
			{
				return VT.ADSIInitializeDispatchManager(&this, dwExtensionId);
			}
			public HRESULT ADSIGetTypeInfoCount(uint32* pctinfo) mut
			{
				return VT.ADSIGetTypeInfoCount(&this, pctinfo);
			}
			public HRESULT ADSIGetTypeInfo(uint32 itinfo, uint32 lcid, ITypeInfo** pptinfo) mut
			{
				return VT.ADSIGetTypeInfo(&this, itinfo, lcid, pptinfo);
			}
			public HRESULT ADSIGetIDsOfNames(Guid* riid, uint16** rgszNames, uint32 cNames, uint32 lcid, int32* rgdispid) mut
			{
				return VT.ADSIGetIDsOfNames(&this, riid, rgszNames, cNames, lcid, rgdispid);
			}
			public HRESULT ADSIInvoke(int32 dispidMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) mut
			{
				return VT.ADSIInvoke(&this, dispidMember, riid, lcid, wFlags, pdispparams, pvarResult, pexcepinfo, puArgErr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPrivateDispatch *self, int32 dwExtensionId) ADSIInitializeDispatchManager;
				public new function HRESULT(IPrivateDispatch *self, uint32* pctinfo) ADSIGetTypeInfoCount;
				public new function HRESULT(IPrivateDispatch *self, uint32 itinfo, uint32 lcid, ITypeInfo** pptinfo) ADSIGetTypeInfo;
				public new function HRESULT(IPrivateDispatch *self, Guid* riid, uint16** rgszNames, uint32 cNames, uint32 lcid, int32* rgdispid) ADSIGetIDsOfNames;
				public new function HRESULT(IPrivateDispatch *self, int32 dispidMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) ADSIInvoke;
			}
		}
		[CRepr]
		public struct IPrivateUnknown : IUnknown
		{
			public const new Guid IID = .(0x89126bab, 0x6ead, 0x11d1, 0x8c, 0x18, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ADSIInitializeObject(BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved) mut
			{
				return VT.ADSIInitializeObject(&this, lpszUserName, lpszPassword, lnReserved);
			}
			public HRESULT ADSIReleaseObject() mut
			{
				return VT.ADSIReleaseObject(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPrivateUnknown *self, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved) ADSIInitializeObject;
				public new function HRESULT(IPrivateUnknown *self) ADSIReleaseObject;
			}
		}
		[CRepr]
		public struct IADsExtension : IUnknown
		{
			public const new Guid IID = .(0x3d35553c, 0xd2b0, 0x11d1, 0xb1, 0x7b, 0x00, 0x00, 0xf8, 0x75, 0x93, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Operate(uint32 dwCode, VARIANT varData1, VARIANT varData2, VARIANT varData3) mut
			{
				return VT.Operate(&this, dwCode, varData1, varData2, varData3);
			}
			public HRESULT PrivateGetIDsOfNames(Guid* riid, uint16** rgszNames, uint32 cNames, uint32 lcid, int32* rgDispid) mut
			{
				return VT.PrivateGetIDsOfNames(&this, riid, rgszNames, cNames, lcid, rgDispid);
			}
			public HRESULT PrivateInvoke(int32 dispidMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) mut
			{
				return VT.PrivateInvoke(&this, dispidMember, riid, lcid, wFlags, pdispparams, pvarResult, pexcepinfo, puArgErr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IADsExtension *self, uint32 dwCode, VARIANT varData1, VARIANT varData2, VARIANT varData3) Operate;
				public new function HRESULT(IADsExtension *self, Guid* riid, uint16** rgszNames, uint32 cNames, uint32 lcid, int32* rgDispid) PrivateGetIDsOfNames;
				public new function HRESULT(IADsExtension *self, int32 dispidMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) PrivateInvoke;
			}
		}
		[CRepr]
		public struct IADsDeleteOps : IDispatch
		{
			public const new Guid IID = .(0xb2bd0902, 0x8878, 0x11d1, 0x8c, 0x21, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeleteObject(int32 lnFlags) mut
			{
				return VT.DeleteObject(&this, lnFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsDeleteOps *self, int32 lnFlags) DeleteObject;
			}
		}
		[CRepr]
		public struct IADsNamespaces : IADs
		{
			public const new Guid IID = .(0x28b96ba0, 0xb330, 0x11cf, 0xa9, 0xad, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DefaultContainer(BSTR* retval) mut
			{
				return VT.get_DefaultContainer(&this, retval);
			}
			public HRESULT put_DefaultContainer(BSTR bstrDefaultContainer) mut
			{
				return VT.put_DefaultContainer(&this, bstrDefaultContainer);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsNamespaces *self, BSTR* retval) get_DefaultContainer;
				public new function HRESULT(IADsNamespaces *self, BSTR bstrDefaultContainer) put_DefaultContainer;
			}
		}
		[CRepr]
		public struct IADsClass : IADs
		{
			public const new Guid IID = .(0xc8f93dd0, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrimaryInterface(BSTR* retval) mut
			{
				return VT.get_PrimaryInterface(&this, retval);
			}
			public HRESULT get_CLSID(BSTR* retval) mut
			{
				return VT.get_CLSID(&this, retval);
			}
			public HRESULT put_CLSID(BSTR bstrCLSID) mut
			{
				return VT.put_CLSID(&this, bstrCLSID);
			}
			public HRESULT get_OID(BSTR* retval) mut
			{
				return VT.get_OID(&this, retval);
			}
			public HRESULT put_OID(BSTR bstrOID) mut
			{
				return VT.put_OID(&this, bstrOID);
			}
			public HRESULT get_Abstract(int16* retval) mut
			{
				return VT.get_Abstract(&this, retval);
			}
			public HRESULT put_Abstract(int16 fAbstract) mut
			{
				return VT.put_Abstract(&this, fAbstract);
			}
			public HRESULT get_Auxiliary(int16* retval) mut
			{
				return VT.get_Auxiliary(&this, retval);
			}
			public HRESULT put_Auxiliary(int16 fAuxiliary) mut
			{
				return VT.put_Auxiliary(&this, fAuxiliary);
			}
			public HRESULT get_MandatoryProperties(VARIANT* retval) mut
			{
				return VT.get_MandatoryProperties(&this, retval);
			}
			public HRESULT put_MandatoryProperties(VARIANT vMandatoryProperties) mut
			{
				return VT.put_MandatoryProperties(&this, vMandatoryProperties);
			}
			public HRESULT get_OptionalProperties(VARIANT* retval) mut
			{
				return VT.get_OptionalProperties(&this, retval);
			}
			public HRESULT put_OptionalProperties(VARIANT vOptionalProperties) mut
			{
				return VT.put_OptionalProperties(&this, vOptionalProperties);
			}
			public HRESULT get_NamingProperties(VARIANT* retval) mut
			{
				return VT.get_NamingProperties(&this, retval);
			}
			public HRESULT put_NamingProperties(VARIANT vNamingProperties) mut
			{
				return VT.put_NamingProperties(&this, vNamingProperties);
			}
			public HRESULT get_DerivedFrom(VARIANT* retval) mut
			{
				return VT.get_DerivedFrom(&this, retval);
			}
			public HRESULT put_DerivedFrom(VARIANT vDerivedFrom) mut
			{
				return VT.put_DerivedFrom(&this, vDerivedFrom);
			}
			public HRESULT get_AuxDerivedFrom(VARIANT* retval) mut
			{
				return VT.get_AuxDerivedFrom(&this, retval);
			}
			public HRESULT put_AuxDerivedFrom(VARIANT vAuxDerivedFrom) mut
			{
				return VT.put_AuxDerivedFrom(&this, vAuxDerivedFrom);
			}
			public HRESULT get_PossibleSuperiors(VARIANT* retval) mut
			{
				return VT.get_PossibleSuperiors(&this, retval);
			}
			public HRESULT put_PossibleSuperiors(VARIANT vPossibleSuperiors) mut
			{
				return VT.put_PossibleSuperiors(&this, vPossibleSuperiors);
			}
			public HRESULT get_Containment(VARIANT* retval) mut
			{
				return VT.get_Containment(&this, retval);
			}
			public HRESULT put_Containment(VARIANT vContainment) mut
			{
				return VT.put_Containment(&this, vContainment);
			}
			public HRESULT get_Container(int16* retval) mut
			{
				return VT.get_Container(&this, retval);
			}
			public HRESULT put_Container(int16 fContainer) mut
			{
				return VT.put_Container(&this, fContainer);
			}
			public HRESULT get_HelpFileName(BSTR* retval) mut
			{
				return VT.get_HelpFileName(&this, retval);
			}
			public HRESULT put_HelpFileName(BSTR bstrHelpFileName) mut
			{
				return VT.put_HelpFileName(&this, bstrHelpFileName);
			}
			public HRESULT get_HelpFileContext(int32* retval) mut
			{
				return VT.get_HelpFileContext(&this, retval);
			}
			public HRESULT put_HelpFileContext(int32 lnHelpFileContext) mut
			{
				return VT.put_HelpFileContext(&this, lnHelpFileContext);
			}
			public HRESULT Qualifiers(IADsCollection** ppQualifiers) mut
			{
				return VT.Qualifiers(&this, ppQualifiers);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsClass *self, BSTR* retval) get_PrimaryInterface;
				public new function HRESULT(IADsClass *self, BSTR* retval) get_CLSID;
				public new function HRESULT(IADsClass *self, BSTR bstrCLSID) put_CLSID;
				public new function HRESULT(IADsClass *self, BSTR* retval) get_OID;
				public new function HRESULT(IADsClass *self, BSTR bstrOID) put_OID;
				public new function HRESULT(IADsClass *self, int16* retval) get_Abstract;
				public new function HRESULT(IADsClass *self, int16 fAbstract) put_Abstract;
				public new function HRESULT(IADsClass *self, int16* retval) get_Auxiliary;
				public new function HRESULT(IADsClass *self, int16 fAuxiliary) put_Auxiliary;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_MandatoryProperties;
				public new function HRESULT(IADsClass *self, VARIANT vMandatoryProperties) put_MandatoryProperties;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_OptionalProperties;
				public new function HRESULT(IADsClass *self, VARIANT vOptionalProperties) put_OptionalProperties;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_NamingProperties;
				public new function HRESULT(IADsClass *self, VARIANT vNamingProperties) put_NamingProperties;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_DerivedFrom;
				public new function HRESULT(IADsClass *self, VARIANT vDerivedFrom) put_DerivedFrom;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_AuxDerivedFrom;
				public new function HRESULT(IADsClass *self, VARIANT vAuxDerivedFrom) put_AuxDerivedFrom;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_PossibleSuperiors;
				public new function HRESULT(IADsClass *self, VARIANT vPossibleSuperiors) put_PossibleSuperiors;
				public new function HRESULT(IADsClass *self, VARIANT* retval) get_Containment;
				public new function HRESULT(IADsClass *self, VARIANT vContainment) put_Containment;
				public new function HRESULT(IADsClass *self, int16* retval) get_Container;
				public new function HRESULT(IADsClass *self, int16 fContainer) put_Container;
				public new function HRESULT(IADsClass *self, BSTR* retval) get_HelpFileName;
				public new function HRESULT(IADsClass *self, BSTR bstrHelpFileName) put_HelpFileName;
				public new function HRESULT(IADsClass *self, int32* retval) get_HelpFileContext;
				public new function HRESULT(IADsClass *self, int32 lnHelpFileContext) put_HelpFileContext;
				public new function HRESULT(IADsClass *self, IADsCollection** ppQualifiers) Qualifiers;
			}
		}
		[CRepr]
		public struct IADsProperty : IADs
		{
			public const new Guid IID = .(0xc8f93dd3, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OID(BSTR* retval) mut
			{
				return VT.get_OID(&this, retval);
			}
			public HRESULT put_OID(BSTR bstrOID) mut
			{
				return VT.put_OID(&this, bstrOID);
			}
			public HRESULT get_Syntax(BSTR* retval) mut
			{
				return VT.get_Syntax(&this, retval);
			}
			public HRESULT put_Syntax(BSTR bstrSyntax) mut
			{
				return VT.put_Syntax(&this, bstrSyntax);
			}
			public HRESULT get_MaxRange(int32* retval) mut
			{
				return VT.get_MaxRange(&this, retval);
			}
			public HRESULT put_MaxRange(int32 lnMaxRange) mut
			{
				return VT.put_MaxRange(&this, lnMaxRange);
			}
			public HRESULT get_MinRange(int32* retval) mut
			{
				return VT.get_MinRange(&this, retval);
			}
			public HRESULT put_MinRange(int32 lnMinRange) mut
			{
				return VT.put_MinRange(&this, lnMinRange);
			}
			public HRESULT get_MultiValued(int16* retval) mut
			{
				return VT.get_MultiValued(&this, retval);
			}
			public HRESULT put_MultiValued(int16 fMultiValued) mut
			{
				return VT.put_MultiValued(&this, fMultiValued);
			}
			public HRESULT Qualifiers(IADsCollection** ppQualifiers) mut
			{
				return VT.Qualifiers(&this, ppQualifiers);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsProperty *self, BSTR* retval) get_OID;
				public new function HRESULT(IADsProperty *self, BSTR bstrOID) put_OID;
				public new function HRESULT(IADsProperty *self, BSTR* retval) get_Syntax;
				public new function HRESULT(IADsProperty *self, BSTR bstrSyntax) put_Syntax;
				public new function HRESULT(IADsProperty *self, int32* retval) get_MaxRange;
				public new function HRESULT(IADsProperty *self, int32 lnMaxRange) put_MaxRange;
				public new function HRESULT(IADsProperty *self, int32* retval) get_MinRange;
				public new function HRESULT(IADsProperty *self, int32 lnMinRange) put_MinRange;
				public new function HRESULT(IADsProperty *self, int16* retval) get_MultiValued;
				public new function HRESULT(IADsProperty *self, int16 fMultiValued) put_MultiValued;
				public new function HRESULT(IADsProperty *self, IADsCollection** ppQualifiers) Qualifiers;
			}
		}
		[CRepr]
		public struct IADsSyntax : IADs
		{
			public const new Guid IID = .(0xc8f93dd2, 0x4ae0, 0x11cf, 0x9e, 0x73, 0x00, 0xaa, 0x00, 0x4a, 0x56, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OleAutoDataType(int32* retval) mut
			{
				return VT.get_OleAutoDataType(&this, retval);
			}
			public HRESULT put_OleAutoDataType(int32 lnOleAutoDataType) mut
			{
				return VT.put_OleAutoDataType(&this, lnOleAutoDataType);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsSyntax *self, int32* retval) get_OleAutoDataType;
				public new function HRESULT(IADsSyntax *self, int32 lnOleAutoDataType) put_OleAutoDataType;
			}
		}
		[CRepr]
		public struct IADsLocality : IADs
		{
			public const new Guid IID = .(0xa05e03a2, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_LocalityName(BSTR* retval) mut
			{
				return VT.get_LocalityName(&this, retval);
			}
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut
			{
				return VT.put_LocalityName(&this, bstrLocalityName);
			}
			public HRESULT get_PostalAddress(BSTR* retval) mut
			{
				return VT.get_PostalAddress(&this, retval);
			}
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut
			{
				return VT.put_PostalAddress(&this, bstrPostalAddress);
			}
			public HRESULT get_SeeAlso(VARIANT* retval) mut
			{
				return VT.get_SeeAlso(&this, retval);
			}
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut
			{
				return VT.put_SeeAlso(&this, vSeeAlso);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsLocality *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsLocality *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsLocality *self, BSTR* retval) get_LocalityName;
				public new function HRESULT(IADsLocality *self, BSTR bstrLocalityName) put_LocalityName;
				public new function HRESULT(IADsLocality *self, BSTR* retval) get_PostalAddress;
				public new function HRESULT(IADsLocality *self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function HRESULT(IADsLocality *self, VARIANT* retval) get_SeeAlso;
				public new function HRESULT(IADsLocality *self, VARIANT vSeeAlso) put_SeeAlso;
			}
		}
		[CRepr]
		public struct IADsO : IADs
		{
			public const new Guid IID = .(0xa1cd2dc6, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_LocalityName(BSTR* retval) mut
			{
				return VT.get_LocalityName(&this, retval);
			}
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut
			{
				return VT.put_LocalityName(&this, bstrLocalityName);
			}
			public HRESULT get_PostalAddress(BSTR* retval) mut
			{
				return VT.get_PostalAddress(&this, retval);
			}
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut
			{
				return VT.put_PostalAddress(&this, bstrPostalAddress);
			}
			public HRESULT get_TelephoneNumber(BSTR* retval) mut
			{
				return VT.get_TelephoneNumber(&this, retval);
			}
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut
			{
				return VT.put_TelephoneNumber(&this, bstrTelephoneNumber);
			}
			public HRESULT get_FaxNumber(BSTR* retval) mut
			{
				return VT.get_FaxNumber(&this, retval);
			}
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut
			{
				return VT.put_FaxNumber(&this, bstrFaxNumber);
			}
			public HRESULT get_SeeAlso(VARIANT* retval) mut
			{
				return VT.get_SeeAlso(&this, retval);
			}
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut
			{
				return VT.put_SeeAlso(&this, vSeeAlso);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsO *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsO *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsO *self, BSTR* retval) get_LocalityName;
				public new function HRESULT(IADsO *self, BSTR bstrLocalityName) put_LocalityName;
				public new function HRESULT(IADsO *self, BSTR* retval) get_PostalAddress;
				public new function HRESULT(IADsO *self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function HRESULT(IADsO *self, BSTR* retval) get_TelephoneNumber;
				public new function HRESULT(IADsO *self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function HRESULT(IADsO *self, BSTR* retval) get_FaxNumber;
				public new function HRESULT(IADsO *self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function HRESULT(IADsO *self, VARIANT* retval) get_SeeAlso;
				public new function HRESULT(IADsO *self, VARIANT vSeeAlso) put_SeeAlso;
			}
		}
		[CRepr]
		public struct IADsOU : IADs
		{
			public const new Guid IID = .(0xa2f733b8, 0xeffe, 0x11cf, 0x8a, 0xbc, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_LocalityName(BSTR* retval) mut
			{
				return VT.get_LocalityName(&this, retval);
			}
			public HRESULT put_LocalityName(BSTR bstrLocalityName) mut
			{
				return VT.put_LocalityName(&this, bstrLocalityName);
			}
			public HRESULT get_PostalAddress(BSTR* retval) mut
			{
				return VT.get_PostalAddress(&this, retval);
			}
			public HRESULT put_PostalAddress(BSTR bstrPostalAddress) mut
			{
				return VT.put_PostalAddress(&this, bstrPostalAddress);
			}
			public HRESULT get_TelephoneNumber(BSTR* retval) mut
			{
				return VT.get_TelephoneNumber(&this, retval);
			}
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut
			{
				return VT.put_TelephoneNumber(&this, bstrTelephoneNumber);
			}
			public HRESULT get_FaxNumber(BSTR* retval) mut
			{
				return VT.get_FaxNumber(&this, retval);
			}
			public HRESULT put_FaxNumber(BSTR bstrFaxNumber) mut
			{
				return VT.put_FaxNumber(&this, bstrFaxNumber);
			}
			public HRESULT get_SeeAlso(VARIANT* retval) mut
			{
				return VT.get_SeeAlso(&this, retval);
			}
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut
			{
				return VT.put_SeeAlso(&this, vSeeAlso);
			}
			public HRESULT get_BusinessCategory(BSTR* retval) mut
			{
				return VT.get_BusinessCategory(&this, retval);
			}
			public HRESULT put_BusinessCategory(BSTR bstrBusinessCategory) mut
			{
				return VT.put_BusinessCategory(&this, bstrBusinessCategory);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsOU *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsOU *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsOU *self, BSTR* retval) get_LocalityName;
				public new function HRESULT(IADsOU *self, BSTR bstrLocalityName) put_LocalityName;
				public new function HRESULT(IADsOU *self, BSTR* retval) get_PostalAddress;
				public new function HRESULT(IADsOU *self, BSTR bstrPostalAddress) put_PostalAddress;
				public new function HRESULT(IADsOU *self, BSTR* retval) get_TelephoneNumber;
				public new function HRESULT(IADsOU *self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function HRESULT(IADsOU *self, BSTR* retval) get_FaxNumber;
				public new function HRESULT(IADsOU *self, BSTR bstrFaxNumber) put_FaxNumber;
				public new function HRESULT(IADsOU *self, VARIANT* retval) get_SeeAlso;
				public new function HRESULT(IADsOU *self, VARIANT vSeeAlso) put_SeeAlso;
				public new function HRESULT(IADsOU *self, BSTR* retval) get_BusinessCategory;
				public new function HRESULT(IADsOU *self, BSTR bstrBusinessCategory) put_BusinessCategory;
			}
		}
		[CRepr]
		public struct IADsDomain : IADs
		{
			public const new Guid IID = .(0x00e4c220, 0xfd16, 0x11ce, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsWorkgroup(int16* retval) mut
			{
				return VT.get_IsWorkgroup(&this, retval);
			}
			public HRESULT get_MinPasswordLength(int32* retval) mut
			{
				return VT.get_MinPasswordLength(&this, retval);
			}
			public HRESULT put_MinPasswordLength(int32 lnMinPasswordLength) mut
			{
				return VT.put_MinPasswordLength(&this, lnMinPasswordLength);
			}
			public HRESULT get_MinPasswordAge(int32* retval) mut
			{
				return VT.get_MinPasswordAge(&this, retval);
			}
			public HRESULT put_MinPasswordAge(int32 lnMinPasswordAge) mut
			{
				return VT.put_MinPasswordAge(&this, lnMinPasswordAge);
			}
			public HRESULT get_MaxPasswordAge(int32* retval) mut
			{
				return VT.get_MaxPasswordAge(&this, retval);
			}
			public HRESULT put_MaxPasswordAge(int32 lnMaxPasswordAge) mut
			{
				return VT.put_MaxPasswordAge(&this, lnMaxPasswordAge);
			}
			public HRESULT get_MaxBadPasswordsAllowed(int32* retval) mut
			{
				return VT.get_MaxBadPasswordsAllowed(&this, retval);
			}
			public HRESULT put_MaxBadPasswordsAllowed(int32 lnMaxBadPasswordsAllowed) mut
			{
				return VT.put_MaxBadPasswordsAllowed(&this, lnMaxBadPasswordsAllowed);
			}
			public HRESULT get_PasswordHistoryLength(int32* retval) mut
			{
				return VT.get_PasswordHistoryLength(&this, retval);
			}
			public HRESULT put_PasswordHistoryLength(int32 lnPasswordHistoryLength) mut
			{
				return VT.put_PasswordHistoryLength(&this, lnPasswordHistoryLength);
			}
			public HRESULT get_PasswordAttributes(int32* retval) mut
			{
				return VT.get_PasswordAttributes(&this, retval);
			}
			public HRESULT put_PasswordAttributes(int32 lnPasswordAttributes) mut
			{
				return VT.put_PasswordAttributes(&this, lnPasswordAttributes);
			}
			public HRESULT get_AutoUnlockInterval(int32* retval) mut
			{
				return VT.get_AutoUnlockInterval(&this, retval);
			}
			public HRESULT put_AutoUnlockInterval(int32 lnAutoUnlockInterval) mut
			{
				return VT.put_AutoUnlockInterval(&this, lnAutoUnlockInterval);
			}
			public HRESULT get_LockoutObservationInterval(int32* retval) mut
			{
				return VT.get_LockoutObservationInterval(&this, retval);
			}
			public HRESULT put_LockoutObservationInterval(int32 lnLockoutObservationInterval) mut
			{
				return VT.put_LockoutObservationInterval(&this, lnLockoutObservationInterval);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsDomain *self, int16* retval) get_IsWorkgroup;
				public new function HRESULT(IADsDomain *self, int32* retval) get_MinPasswordLength;
				public new function HRESULT(IADsDomain *self, int32 lnMinPasswordLength) put_MinPasswordLength;
				public new function HRESULT(IADsDomain *self, int32* retval) get_MinPasswordAge;
				public new function HRESULT(IADsDomain *self, int32 lnMinPasswordAge) put_MinPasswordAge;
				public new function HRESULT(IADsDomain *self, int32* retval) get_MaxPasswordAge;
				public new function HRESULT(IADsDomain *self, int32 lnMaxPasswordAge) put_MaxPasswordAge;
				public new function HRESULT(IADsDomain *self, int32* retval) get_MaxBadPasswordsAllowed;
				public new function HRESULT(IADsDomain *self, int32 lnMaxBadPasswordsAllowed) put_MaxBadPasswordsAllowed;
				public new function HRESULT(IADsDomain *self, int32* retval) get_PasswordHistoryLength;
				public new function HRESULT(IADsDomain *self, int32 lnPasswordHistoryLength) put_PasswordHistoryLength;
				public new function HRESULT(IADsDomain *self, int32* retval) get_PasswordAttributes;
				public new function HRESULT(IADsDomain *self, int32 lnPasswordAttributes) put_PasswordAttributes;
				public new function HRESULT(IADsDomain *self, int32* retval) get_AutoUnlockInterval;
				public new function HRESULT(IADsDomain *self, int32 lnAutoUnlockInterval) put_AutoUnlockInterval;
				public new function HRESULT(IADsDomain *self, int32* retval) get_LockoutObservationInterval;
				public new function HRESULT(IADsDomain *self, int32 lnLockoutObservationInterval) put_LockoutObservationInterval;
			}
		}
		[CRepr]
		public struct IADsComputer : IADs
		{
			public const new Guid IID = .(0xefe3cc70, 0x1d9f, 0x11cf, 0xb1, 0xf3, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ComputerID(BSTR* retval) mut
			{
				return VT.get_ComputerID(&this, retval);
			}
			public HRESULT get_Site(BSTR* retval) mut
			{
				return VT.get_Site(&this, retval);
			}
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_Location(BSTR* retval) mut
			{
				return VT.get_Location(&this, retval);
			}
			public HRESULT put_Location(BSTR bstrLocation) mut
			{
				return VT.put_Location(&this, bstrLocation);
			}
			public HRESULT get_PrimaryUser(BSTR* retval) mut
			{
				return VT.get_PrimaryUser(&this, retval);
			}
			public HRESULT put_PrimaryUser(BSTR bstrPrimaryUser) mut
			{
				return VT.put_PrimaryUser(&this, bstrPrimaryUser);
			}
			public HRESULT get_Owner(BSTR* retval) mut
			{
				return VT.get_Owner(&this, retval);
			}
			public HRESULT put_Owner(BSTR bstrOwner) mut
			{
				return VT.put_Owner(&this, bstrOwner);
			}
			public HRESULT get_Division(BSTR* retval) mut
			{
				return VT.get_Division(&this, retval);
			}
			public HRESULT put_Division(BSTR bstrDivision) mut
			{
				return VT.put_Division(&this, bstrDivision);
			}
			public HRESULT get_Department(BSTR* retval) mut
			{
				return VT.get_Department(&this, retval);
			}
			public HRESULT put_Department(BSTR bstrDepartment) mut
			{
				return VT.put_Department(&this, bstrDepartment);
			}
			public HRESULT get_Role(BSTR* retval) mut
			{
				return VT.get_Role(&this, retval);
			}
			public HRESULT put_Role(BSTR bstrRole) mut
			{
				return VT.put_Role(&this, bstrRole);
			}
			public HRESULT get_OperatingSystem(BSTR* retval) mut
			{
				return VT.get_OperatingSystem(&this, retval);
			}
			public HRESULT put_OperatingSystem(BSTR bstrOperatingSystem) mut
			{
				return VT.put_OperatingSystem(&this, bstrOperatingSystem);
			}
			public HRESULT get_OperatingSystemVersion(BSTR* retval) mut
			{
				return VT.get_OperatingSystemVersion(&this, retval);
			}
			public HRESULT put_OperatingSystemVersion(BSTR bstrOperatingSystemVersion) mut
			{
				return VT.put_OperatingSystemVersion(&this, bstrOperatingSystemVersion);
			}
			public HRESULT get_Model(BSTR* retval) mut
			{
				return VT.get_Model(&this, retval);
			}
			public HRESULT put_Model(BSTR bstrModel) mut
			{
				return VT.put_Model(&this, bstrModel);
			}
			public HRESULT get_Processor(BSTR* retval) mut
			{
				return VT.get_Processor(&this, retval);
			}
			public HRESULT put_Processor(BSTR bstrProcessor) mut
			{
				return VT.put_Processor(&this, bstrProcessor);
			}
			public HRESULT get_ProcessorCount(BSTR* retval) mut
			{
				return VT.get_ProcessorCount(&this, retval);
			}
			public HRESULT put_ProcessorCount(BSTR bstrProcessorCount) mut
			{
				return VT.put_ProcessorCount(&this, bstrProcessorCount);
			}
			public HRESULT get_MemorySize(BSTR* retval) mut
			{
				return VT.get_MemorySize(&this, retval);
			}
			public HRESULT put_MemorySize(BSTR bstrMemorySize) mut
			{
				return VT.put_MemorySize(&this, bstrMemorySize);
			}
			public HRESULT get_StorageCapacity(BSTR* retval) mut
			{
				return VT.get_StorageCapacity(&this, retval);
			}
			public HRESULT put_StorageCapacity(BSTR bstrStorageCapacity) mut
			{
				return VT.put_StorageCapacity(&this, bstrStorageCapacity);
			}
			public HRESULT get_NetAddresses(VARIANT* retval) mut
			{
				return VT.get_NetAddresses(&this, retval);
			}
			public HRESULT put_NetAddresses(VARIANT vNetAddresses) mut
			{
				return VT.put_NetAddresses(&this, vNetAddresses);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_ComputerID;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Site;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsComputer *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Location;
				public new function HRESULT(IADsComputer *self, BSTR bstrLocation) put_Location;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_PrimaryUser;
				public new function HRESULT(IADsComputer *self, BSTR bstrPrimaryUser) put_PrimaryUser;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Owner;
				public new function HRESULT(IADsComputer *self, BSTR bstrOwner) put_Owner;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Division;
				public new function HRESULT(IADsComputer *self, BSTR bstrDivision) put_Division;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Department;
				public new function HRESULT(IADsComputer *self, BSTR bstrDepartment) put_Department;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Role;
				public new function HRESULT(IADsComputer *self, BSTR bstrRole) put_Role;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_OperatingSystem;
				public new function HRESULT(IADsComputer *self, BSTR bstrOperatingSystem) put_OperatingSystem;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_OperatingSystemVersion;
				public new function HRESULT(IADsComputer *self, BSTR bstrOperatingSystemVersion) put_OperatingSystemVersion;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Model;
				public new function HRESULT(IADsComputer *self, BSTR bstrModel) put_Model;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_Processor;
				public new function HRESULT(IADsComputer *self, BSTR bstrProcessor) put_Processor;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_ProcessorCount;
				public new function HRESULT(IADsComputer *self, BSTR bstrProcessorCount) put_ProcessorCount;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_MemorySize;
				public new function HRESULT(IADsComputer *self, BSTR bstrMemorySize) put_MemorySize;
				public new function HRESULT(IADsComputer *self, BSTR* retval) get_StorageCapacity;
				public new function HRESULT(IADsComputer *self, BSTR bstrStorageCapacity) put_StorageCapacity;
				public new function HRESULT(IADsComputer *self, VARIANT* retval) get_NetAddresses;
				public new function HRESULT(IADsComputer *self, VARIANT vNetAddresses) put_NetAddresses;
			}
		}
		[CRepr]
		public struct IADsComputerOperations : IADs
		{
			public const new Guid IID = .(0xef497680, 0x1d9f, 0x11cf, 0xb1, 0xf3, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Status(IDispatch** ppObject) mut
			{
				return VT.Status(&this, ppObject);
			}
			public HRESULT Shutdown(int16 bReboot) mut
			{
				return VT.Shutdown(&this, bReboot);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsComputerOperations *self, IDispatch** ppObject) Status;
				public new function HRESULT(IADsComputerOperations *self, int16 bReboot) Shutdown;
			}
		}
		[CRepr]
		public struct IADsGroup : IADs
		{
			public const new Guid IID = .(0x27636b00, 0x410f, 0x11cf, 0xb1, 0xff, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT Members(IADsMembers** ppMembers) mut
			{
				return VT.Members(&this, ppMembers);
			}
			public HRESULT IsMember(BSTR bstrMember, int16* bMember) mut
			{
				return VT.IsMember(&this, bstrMember, bMember);
			}
			public HRESULT Add(BSTR bstrNewItem) mut
			{
				return VT.Add(&this, bstrNewItem);
			}
			public HRESULT Remove(BSTR bstrItemToBeRemoved) mut
			{
				return VT.Remove(&this, bstrItemToBeRemoved);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsGroup *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsGroup *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsGroup *self, IADsMembers** ppMembers) Members;
				public new function HRESULT(IADsGroup *self, BSTR bstrMember, int16* bMember) IsMember;
				public new function HRESULT(IADsGroup *self, BSTR bstrNewItem) Add;
				public new function HRESULT(IADsGroup *self, BSTR bstrItemToBeRemoved) Remove;
			}
		}
		[CRepr]
		public struct IADsUser : IADs
		{
			public const new Guid IID = .(0x3e37e320, 0x17e2, 0x11cf, 0xab, 0xc4, 0x02, 0x60, 0x8c, 0x9e, 0x75, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BadLoginAddress(BSTR* retval) mut
			{
				return VT.get_BadLoginAddress(&this, retval);
			}
			public HRESULT get_BadLoginCount(int32* retval) mut
			{
				return VT.get_BadLoginCount(&this, retval);
			}
			public HRESULT get_LastLogin(double* retval) mut
			{
				return VT.get_LastLogin(&this, retval);
			}
			public HRESULT get_LastLogoff(double* retval) mut
			{
				return VT.get_LastLogoff(&this, retval);
			}
			public HRESULT get_LastFailedLogin(double* retval) mut
			{
				return VT.get_LastFailedLogin(&this, retval);
			}
			public HRESULT get_PasswordLastChanged(double* retval) mut
			{
				return VT.get_PasswordLastChanged(&this, retval);
			}
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_Division(BSTR* retval) mut
			{
				return VT.get_Division(&this, retval);
			}
			public HRESULT put_Division(BSTR bstrDivision) mut
			{
				return VT.put_Division(&this, bstrDivision);
			}
			public HRESULT get_Department(BSTR* retval) mut
			{
				return VT.get_Department(&this, retval);
			}
			public HRESULT put_Department(BSTR bstrDepartment) mut
			{
				return VT.put_Department(&this, bstrDepartment);
			}
			public HRESULT get_EmployeeID(BSTR* retval) mut
			{
				return VT.get_EmployeeID(&this, retval);
			}
			public HRESULT put_EmployeeID(BSTR bstrEmployeeID) mut
			{
				return VT.put_EmployeeID(&this, bstrEmployeeID);
			}
			public HRESULT get_FullName(BSTR* retval) mut
			{
				return VT.get_FullName(&this, retval);
			}
			public HRESULT put_FullName(BSTR bstrFullName) mut
			{
				return VT.put_FullName(&this, bstrFullName);
			}
			public HRESULT get_FirstName(BSTR* retval) mut
			{
				return VT.get_FirstName(&this, retval);
			}
			public HRESULT put_FirstName(BSTR bstrFirstName) mut
			{
				return VT.put_FirstName(&this, bstrFirstName);
			}
			public HRESULT get_LastName(BSTR* retval) mut
			{
				return VT.get_LastName(&this, retval);
			}
			public HRESULT put_LastName(BSTR bstrLastName) mut
			{
				return VT.put_LastName(&this, bstrLastName);
			}
			public HRESULT get_OtherName(BSTR* retval) mut
			{
				return VT.get_OtherName(&this, retval);
			}
			public HRESULT put_OtherName(BSTR bstrOtherName) mut
			{
				return VT.put_OtherName(&this, bstrOtherName);
			}
			public HRESULT get_NamePrefix(BSTR* retval) mut
			{
				return VT.get_NamePrefix(&this, retval);
			}
			public HRESULT put_NamePrefix(BSTR bstrNamePrefix) mut
			{
				return VT.put_NamePrefix(&this, bstrNamePrefix);
			}
			public HRESULT get_NameSuffix(BSTR* retval) mut
			{
				return VT.get_NameSuffix(&this, retval);
			}
			public HRESULT put_NameSuffix(BSTR bstrNameSuffix) mut
			{
				return VT.put_NameSuffix(&this, bstrNameSuffix);
			}
			public HRESULT get_Title(BSTR* retval) mut
			{
				return VT.get_Title(&this, retval);
			}
			public HRESULT put_Title(BSTR bstrTitle) mut
			{
				return VT.put_Title(&this, bstrTitle);
			}
			public HRESULT get_Manager(BSTR* retval) mut
			{
				return VT.get_Manager(&this, retval);
			}
			public HRESULT put_Manager(BSTR bstrManager) mut
			{
				return VT.put_Manager(&this, bstrManager);
			}
			public HRESULT get_TelephoneHome(VARIANT* retval) mut
			{
				return VT.get_TelephoneHome(&this, retval);
			}
			public HRESULT put_TelephoneHome(VARIANT vTelephoneHome) mut
			{
				return VT.put_TelephoneHome(&this, vTelephoneHome);
			}
			public HRESULT get_TelephoneMobile(VARIANT* retval) mut
			{
				return VT.get_TelephoneMobile(&this, retval);
			}
			public HRESULT put_TelephoneMobile(VARIANT vTelephoneMobile) mut
			{
				return VT.put_TelephoneMobile(&this, vTelephoneMobile);
			}
			public HRESULT get_TelephoneNumber(VARIANT* retval) mut
			{
				return VT.get_TelephoneNumber(&this, retval);
			}
			public HRESULT put_TelephoneNumber(VARIANT vTelephoneNumber) mut
			{
				return VT.put_TelephoneNumber(&this, vTelephoneNumber);
			}
			public HRESULT get_TelephonePager(VARIANT* retval) mut
			{
				return VT.get_TelephonePager(&this, retval);
			}
			public HRESULT put_TelephonePager(VARIANT vTelephonePager) mut
			{
				return VT.put_TelephonePager(&this, vTelephonePager);
			}
			public HRESULT get_FaxNumber(VARIANT* retval) mut
			{
				return VT.get_FaxNumber(&this, retval);
			}
			public HRESULT put_FaxNumber(VARIANT vFaxNumber) mut
			{
				return VT.put_FaxNumber(&this, vFaxNumber);
			}
			public HRESULT get_OfficeLocations(VARIANT* retval) mut
			{
				return VT.get_OfficeLocations(&this, retval);
			}
			public HRESULT put_OfficeLocations(VARIANT vOfficeLocations) mut
			{
				return VT.put_OfficeLocations(&this, vOfficeLocations);
			}
			public HRESULT get_PostalAddresses(VARIANT* retval) mut
			{
				return VT.get_PostalAddresses(&this, retval);
			}
			public HRESULT put_PostalAddresses(VARIANT vPostalAddresses) mut
			{
				return VT.put_PostalAddresses(&this, vPostalAddresses);
			}
			public HRESULT get_PostalCodes(VARIANT* retval) mut
			{
				return VT.get_PostalCodes(&this, retval);
			}
			public HRESULT put_PostalCodes(VARIANT vPostalCodes) mut
			{
				return VT.put_PostalCodes(&this, vPostalCodes);
			}
			public HRESULT get_SeeAlso(VARIANT* retval) mut
			{
				return VT.get_SeeAlso(&this, retval);
			}
			public HRESULT put_SeeAlso(VARIANT vSeeAlso) mut
			{
				return VT.put_SeeAlso(&this, vSeeAlso);
			}
			public HRESULT get_AccountDisabled(int16* retval) mut
			{
				return VT.get_AccountDisabled(&this, retval);
			}
			public HRESULT put_AccountDisabled(int16 fAccountDisabled) mut
			{
				return VT.put_AccountDisabled(&this, fAccountDisabled);
			}
			public HRESULT get_AccountExpirationDate(double* retval) mut
			{
				return VT.get_AccountExpirationDate(&this, retval);
			}
			public HRESULT put_AccountExpirationDate(double daAccountExpirationDate) mut
			{
				return VT.put_AccountExpirationDate(&this, daAccountExpirationDate);
			}
			public HRESULT get_GraceLoginsAllowed(int32* retval) mut
			{
				return VT.get_GraceLoginsAllowed(&this, retval);
			}
			public HRESULT put_GraceLoginsAllowed(int32 lnGraceLoginsAllowed) mut
			{
				return VT.put_GraceLoginsAllowed(&this, lnGraceLoginsAllowed);
			}
			public HRESULT get_GraceLoginsRemaining(int32* retval) mut
			{
				return VT.get_GraceLoginsRemaining(&this, retval);
			}
			public HRESULT put_GraceLoginsRemaining(int32 lnGraceLoginsRemaining) mut
			{
				return VT.put_GraceLoginsRemaining(&this, lnGraceLoginsRemaining);
			}
			public HRESULT get_IsAccountLocked(int16* retval) mut
			{
				return VT.get_IsAccountLocked(&this, retval);
			}
			public HRESULT put_IsAccountLocked(int16 fIsAccountLocked) mut
			{
				return VT.put_IsAccountLocked(&this, fIsAccountLocked);
			}
			public HRESULT get_LoginHours(VARIANT* retval) mut
			{
				return VT.get_LoginHours(&this, retval);
			}
			public HRESULT put_LoginHours(VARIANT vLoginHours) mut
			{
				return VT.put_LoginHours(&this, vLoginHours);
			}
			public HRESULT get_LoginWorkstations(VARIANT* retval) mut
			{
				return VT.get_LoginWorkstations(&this, retval);
			}
			public HRESULT put_LoginWorkstations(VARIANT vLoginWorkstations) mut
			{
				return VT.put_LoginWorkstations(&this, vLoginWorkstations);
			}
			public HRESULT get_MaxLogins(int32* retval) mut
			{
				return VT.get_MaxLogins(&this, retval);
			}
			public HRESULT put_MaxLogins(int32 lnMaxLogins) mut
			{
				return VT.put_MaxLogins(&this, lnMaxLogins);
			}
			public HRESULT get_MaxStorage(int32* retval) mut
			{
				return VT.get_MaxStorage(&this, retval);
			}
			public HRESULT put_MaxStorage(int32 lnMaxStorage) mut
			{
				return VT.put_MaxStorage(&this, lnMaxStorage);
			}
			public HRESULT get_PasswordExpirationDate(double* retval) mut
			{
				return VT.get_PasswordExpirationDate(&this, retval);
			}
			public HRESULT put_PasswordExpirationDate(double daPasswordExpirationDate) mut
			{
				return VT.put_PasswordExpirationDate(&this, daPasswordExpirationDate);
			}
			public HRESULT get_PasswordMinimumLength(int32* retval) mut
			{
				return VT.get_PasswordMinimumLength(&this, retval);
			}
			public HRESULT put_PasswordMinimumLength(int32 lnPasswordMinimumLength) mut
			{
				return VT.put_PasswordMinimumLength(&this, lnPasswordMinimumLength);
			}
			public HRESULT get_PasswordRequired(int16* retval) mut
			{
				return VT.get_PasswordRequired(&this, retval);
			}
			public HRESULT put_PasswordRequired(int16 fPasswordRequired) mut
			{
				return VT.put_PasswordRequired(&this, fPasswordRequired);
			}
			public HRESULT get_RequireUniquePassword(int16* retval) mut
			{
				return VT.get_RequireUniquePassword(&this, retval);
			}
			public HRESULT put_RequireUniquePassword(int16 fRequireUniquePassword) mut
			{
				return VT.put_RequireUniquePassword(&this, fRequireUniquePassword);
			}
			public HRESULT get_EmailAddress(BSTR* retval) mut
			{
				return VT.get_EmailAddress(&this, retval);
			}
			public HRESULT put_EmailAddress(BSTR bstrEmailAddress) mut
			{
				return VT.put_EmailAddress(&this, bstrEmailAddress);
			}
			public HRESULT get_HomeDirectory(BSTR* retval) mut
			{
				return VT.get_HomeDirectory(&this, retval);
			}
			public HRESULT put_HomeDirectory(BSTR bstrHomeDirectory) mut
			{
				return VT.put_HomeDirectory(&this, bstrHomeDirectory);
			}
			public HRESULT get_Languages(VARIANT* retval) mut
			{
				return VT.get_Languages(&this, retval);
			}
			public HRESULT put_Languages(VARIANT vLanguages) mut
			{
				return VT.put_Languages(&this, vLanguages);
			}
			public HRESULT get_Profile(BSTR* retval) mut
			{
				return VT.get_Profile(&this, retval);
			}
			public HRESULT put_Profile(BSTR bstrProfile) mut
			{
				return VT.put_Profile(&this, bstrProfile);
			}
			public HRESULT get_LoginScript(BSTR* retval) mut
			{
				return VT.get_LoginScript(&this, retval);
			}
			public HRESULT put_LoginScript(BSTR bstrLoginScript) mut
			{
				return VT.put_LoginScript(&this, bstrLoginScript);
			}
			public HRESULT get_Picture(VARIANT* retval) mut
			{
				return VT.get_Picture(&this, retval);
			}
			public HRESULT put_Picture(VARIANT vPicture) mut
			{
				return VT.put_Picture(&this, vPicture);
			}
			public HRESULT get_HomePage(BSTR* retval) mut
			{
				return VT.get_HomePage(&this, retval);
			}
			public HRESULT put_HomePage(BSTR bstrHomePage) mut
			{
				return VT.put_HomePage(&this, bstrHomePage);
			}
			public HRESULT Groups(IADsMembers** ppGroups) mut
			{
				return VT.Groups(&this, ppGroups);
			}
			public HRESULT SetPassword(BSTR NewPassword) mut
			{
				return VT.SetPassword(&this, NewPassword);
			}
			public HRESULT ChangePassword(BSTR bstrOldPassword, BSTR bstrNewPassword) mut
			{
				return VT.ChangePassword(&this, bstrOldPassword, bstrNewPassword);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsUser *self, BSTR* retval) get_BadLoginAddress;
				public new function HRESULT(IADsUser *self, int32* retval) get_BadLoginCount;
				public new function HRESULT(IADsUser *self, double* retval) get_LastLogin;
				public new function HRESULT(IADsUser *self, double* retval) get_LastLogoff;
				public new function HRESULT(IADsUser *self, double* retval) get_LastFailedLogin;
				public new function HRESULT(IADsUser *self, double* retval) get_PasswordLastChanged;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsUser *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Division;
				public new function HRESULT(IADsUser *self, BSTR bstrDivision) put_Division;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Department;
				public new function HRESULT(IADsUser *self, BSTR bstrDepartment) put_Department;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_EmployeeID;
				public new function HRESULT(IADsUser *self, BSTR bstrEmployeeID) put_EmployeeID;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_FullName;
				public new function HRESULT(IADsUser *self, BSTR bstrFullName) put_FullName;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_FirstName;
				public new function HRESULT(IADsUser *self, BSTR bstrFirstName) put_FirstName;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_LastName;
				public new function HRESULT(IADsUser *self, BSTR bstrLastName) put_LastName;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_OtherName;
				public new function HRESULT(IADsUser *self, BSTR bstrOtherName) put_OtherName;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_NamePrefix;
				public new function HRESULT(IADsUser *self, BSTR bstrNamePrefix) put_NamePrefix;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_NameSuffix;
				public new function HRESULT(IADsUser *self, BSTR bstrNameSuffix) put_NameSuffix;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Title;
				public new function HRESULT(IADsUser *self, BSTR bstrTitle) put_Title;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Manager;
				public new function HRESULT(IADsUser *self, BSTR bstrManager) put_Manager;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_TelephoneHome;
				public new function HRESULT(IADsUser *self, VARIANT vTelephoneHome) put_TelephoneHome;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_TelephoneMobile;
				public new function HRESULT(IADsUser *self, VARIANT vTelephoneMobile) put_TelephoneMobile;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_TelephoneNumber;
				public new function HRESULT(IADsUser *self, VARIANT vTelephoneNumber) put_TelephoneNumber;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_TelephonePager;
				public new function HRESULT(IADsUser *self, VARIANT vTelephonePager) put_TelephonePager;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_FaxNumber;
				public new function HRESULT(IADsUser *self, VARIANT vFaxNumber) put_FaxNumber;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_OfficeLocations;
				public new function HRESULT(IADsUser *self, VARIANT vOfficeLocations) put_OfficeLocations;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_PostalAddresses;
				public new function HRESULT(IADsUser *self, VARIANT vPostalAddresses) put_PostalAddresses;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_PostalCodes;
				public new function HRESULT(IADsUser *self, VARIANT vPostalCodes) put_PostalCodes;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_SeeAlso;
				public new function HRESULT(IADsUser *self, VARIANT vSeeAlso) put_SeeAlso;
				public new function HRESULT(IADsUser *self, int16* retval) get_AccountDisabled;
				public new function HRESULT(IADsUser *self, int16 fAccountDisabled) put_AccountDisabled;
				public new function HRESULT(IADsUser *self, double* retval) get_AccountExpirationDate;
				public new function HRESULT(IADsUser *self, double daAccountExpirationDate) put_AccountExpirationDate;
				public new function HRESULT(IADsUser *self, int32* retval) get_GraceLoginsAllowed;
				public new function HRESULT(IADsUser *self, int32 lnGraceLoginsAllowed) put_GraceLoginsAllowed;
				public new function HRESULT(IADsUser *self, int32* retval) get_GraceLoginsRemaining;
				public new function HRESULT(IADsUser *self, int32 lnGraceLoginsRemaining) put_GraceLoginsRemaining;
				public new function HRESULT(IADsUser *self, int16* retval) get_IsAccountLocked;
				public new function HRESULT(IADsUser *self, int16 fIsAccountLocked) put_IsAccountLocked;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_LoginHours;
				public new function HRESULT(IADsUser *self, VARIANT vLoginHours) put_LoginHours;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_LoginWorkstations;
				public new function HRESULT(IADsUser *self, VARIANT vLoginWorkstations) put_LoginWorkstations;
				public new function HRESULT(IADsUser *self, int32* retval) get_MaxLogins;
				public new function HRESULT(IADsUser *self, int32 lnMaxLogins) put_MaxLogins;
				public new function HRESULT(IADsUser *self, int32* retval) get_MaxStorage;
				public new function HRESULT(IADsUser *self, int32 lnMaxStorage) put_MaxStorage;
				public new function HRESULT(IADsUser *self, double* retval) get_PasswordExpirationDate;
				public new function HRESULT(IADsUser *self, double daPasswordExpirationDate) put_PasswordExpirationDate;
				public new function HRESULT(IADsUser *self, int32* retval) get_PasswordMinimumLength;
				public new function HRESULT(IADsUser *self, int32 lnPasswordMinimumLength) put_PasswordMinimumLength;
				public new function HRESULT(IADsUser *self, int16* retval) get_PasswordRequired;
				public new function HRESULT(IADsUser *self, int16 fPasswordRequired) put_PasswordRequired;
				public new function HRESULT(IADsUser *self, int16* retval) get_RequireUniquePassword;
				public new function HRESULT(IADsUser *self, int16 fRequireUniquePassword) put_RequireUniquePassword;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_EmailAddress;
				public new function HRESULT(IADsUser *self, BSTR bstrEmailAddress) put_EmailAddress;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_HomeDirectory;
				public new function HRESULT(IADsUser *self, BSTR bstrHomeDirectory) put_HomeDirectory;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_Languages;
				public new function HRESULT(IADsUser *self, VARIANT vLanguages) put_Languages;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_Profile;
				public new function HRESULT(IADsUser *self, BSTR bstrProfile) put_Profile;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_LoginScript;
				public new function HRESULT(IADsUser *self, BSTR bstrLoginScript) put_LoginScript;
				public new function HRESULT(IADsUser *self, VARIANT* retval) get_Picture;
				public new function HRESULT(IADsUser *self, VARIANT vPicture) put_Picture;
				public new function HRESULT(IADsUser *self, BSTR* retval) get_HomePage;
				public new function HRESULT(IADsUser *self, BSTR bstrHomePage) put_HomePage;
				public new function HRESULT(IADsUser *self, IADsMembers** ppGroups) Groups;
				public new function HRESULT(IADsUser *self, BSTR NewPassword) SetPassword;
				public new function HRESULT(IADsUser *self, BSTR bstrOldPassword, BSTR bstrNewPassword) ChangePassword;
			}
		}
		[CRepr]
		public struct IADsPrintQueue : IADs
		{
			public const new Guid IID = .(0xb15160d0, 0x1226, 0x11cf, 0xa9, 0x85, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrinterPath(BSTR* retval) mut
			{
				return VT.get_PrinterPath(&this, retval);
			}
			public HRESULT put_PrinterPath(BSTR bstrPrinterPath) mut
			{
				return VT.put_PrinterPath(&this, bstrPrinterPath);
			}
			public HRESULT get_Model(BSTR* retval) mut
			{
				return VT.get_Model(&this, retval);
			}
			public HRESULT put_Model(BSTR bstrModel) mut
			{
				return VT.put_Model(&this, bstrModel);
			}
			public HRESULT get_Datatype(BSTR* retval) mut
			{
				return VT.get_Datatype(&this, retval);
			}
			public HRESULT put_Datatype(BSTR bstrDatatype) mut
			{
				return VT.put_Datatype(&this, bstrDatatype);
			}
			public HRESULT get_PrintProcessor(BSTR* retval) mut
			{
				return VT.get_PrintProcessor(&this, retval);
			}
			public HRESULT put_PrintProcessor(BSTR bstrPrintProcessor) mut
			{
				return VT.put_PrintProcessor(&this, bstrPrintProcessor);
			}
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_Location(BSTR* retval) mut
			{
				return VT.get_Location(&this, retval);
			}
			public HRESULT put_Location(BSTR bstrLocation) mut
			{
				return VT.put_Location(&this, bstrLocation);
			}
			public HRESULT get_StartTime(double* retval) mut
			{
				return VT.get_StartTime(&this, retval);
			}
			public HRESULT put_StartTime(double daStartTime) mut
			{
				return VT.put_StartTime(&this, daStartTime);
			}
			public HRESULT get_UntilTime(double* retval) mut
			{
				return VT.get_UntilTime(&this, retval);
			}
			public HRESULT put_UntilTime(double daUntilTime) mut
			{
				return VT.put_UntilTime(&this, daUntilTime);
			}
			public HRESULT get_DefaultJobPriority(int32* retval) mut
			{
				return VT.get_DefaultJobPriority(&this, retval);
			}
			public HRESULT put_DefaultJobPriority(int32 lnDefaultJobPriority) mut
			{
				return VT.put_DefaultJobPriority(&this, lnDefaultJobPriority);
			}
			public HRESULT get_Priority(int32* retval) mut
			{
				return VT.get_Priority(&this, retval);
			}
			public HRESULT put_Priority(int32 lnPriority) mut
			{
				return VT.put_Priority(&this, lnPriority);
			}
			public HRESULT get_BannerPage(BSTR* retval) mut
			{
				return VT.get_BannerPage(&this, retval);
			}
			public HRESULT put_BannerPage(BSTR bstrBannerPage) mut
			{
				return VT.put_BannerPage(&this, bstrBannerPage);
			}
			public HRESULT get_PrintDevices(VARIANT* retval) mut
			{
				return VT.get_PrintDevices(&this, retval);
			}
			public HRESULT put_PrintDevices(VARIANT vPrintDevices) mut
			{
				return VT.put_PrintDevices(&this, vPrintDevices);
			}
			public HRESULT get_NetAddresses(VARIANT* retval) mut
			{
				return VT.get_NetAddresses(&this, retval);
			}
			public HRESULT put_NetAddresses(VARIANT vNetAddresses) mut
			{
				return VT.put_NetAddresses(&this, vNetAddresses);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_PrinterPath;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrPrinterPath) put_PrinterPath;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_Model;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrModel) put_Model;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_Datatype;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrDatatype) put_Datatype;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_PrintProcessor;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrPrintProcessor) put_PrintProcessor;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_Location;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrLocation) put_Location;
				public new function HRESULT(IADsPrintQueue *self, double* retval) get_StartTime;
				public new function HRESULT(IADsPrintQueue *self, double daStartTime) put_StartTime;
				public new function HRESULT(IADsPrintQueue *self, double* retval) get_UntilTime;
				public new function HRESULT(IADsPrintQueue *self, double daUntilTime) put_UntilTime;
				public new function HRESULT(IADsPrintQueue *self, int32* retval) get_DefaultJobPriority;
				public new function HRESULT(IADsPrintQueue *self, int32 lnDefaultJobPriority) put_DefaultJobPriority;
				public new function HRESULT(IADsPrintQueue *self, int32* retval) get_Priority;
				public new function HRESULT(IADsPrintQueue *self, int32 lnPriority) put_Priority;
				public new function HRESULT(IADsPrintQueue *self, BSTR* retval) get_BannerPage;
				public new function HRESULT(IADsPrintQueue *self, BSTR bstrBannerPage) put_BannerPage;
				public new function HRESULT(IADsPrintQueue *self, VARIANT* retval) get_PrintDevices;
				public new function HRESULT(IADsPrintQueue *self, VARIANT vPrintDevices) put_PrintDevices;
				public new function HRESULT(IADsPrintQueue *self, VARIANT* retval) get_NetAddresses;
				public new function HRESULT(IADsPrintQueue *self, VARIANT vNetAddresses) put_NetAddresses;
			}
		}
		[CRepr]
		public struct IADsPrintQueueOperations : IADs
		{
			public const new Guid IID = .(0x124be5c0, 0x156e, 0x11cf, 0xa9, 0x86, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(int32* retval) mut
			{
				return VT.get_Status(&this, retval);
			}
			public HRESULT PrintJobs(IADsCollection** pObject) mut
			{
				return VT.PrintJobs(&this, pObject);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT Purge() mut
			{
				return VT.Purge(&this);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsPrintQueueOperations *self, int32* retval) get_Status;
				public new function HRESULT(IADsPrintQueueOperations *self, IADsCollection** pObject) PrintJobs;
				public new function HRESULT(IADsPrintQueueOperations *self) Pause;
				public new function HRESULT(IADsPrintQueueOperations *self) Resume;
				public new function HRESULT(IADsPrintQueueOperations *self) Purge;
			}
		}
		[CRepr]
		public struct IADsPrintJob : IADs
		{
			public const new Guid IID = .(0x32fb6780, 0x1ed0, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HostPrintQueue(BSTR* retval) mut
			{
				return VT.get_HostPrintQueue(&this, retval);
			}
			public HRESULT get_User(BSTR* retval) mut
			{
				return VT.get_User(&this, retval);
			}
			public HRESULT get_UserPath(BSTR* retval) mut
			{
				return VT.get_UserPath(&this, retval);
			}
			public HRESULT get_TimeSubmitted(double* retval) mut
			{
				return VT.get_TimeSubmitted(&this, retval);
			}
			public HRESULT get_TotalPages(int32* retval) mut
			{
				return VT.get_TotalPages(&this, retval);
			}
			public HRESULT get_Size(int32* retval) mut
			{
				return VT.get_Size(&this, retval);
			}
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_Priority(int32* retval) mut
			{
				return VT.get_Priority(&this, retval);
			}
			public HRESULT put_Priority(int32 lnPriority) mut
			{
				return VT.put_Priority(&this, lnPriority);
			}
			public HRESULT get_StartTime(double* retval) mut
			{
				return VT.get_StartTime(&this, retval);
			}
			public HRESULT put_StartTime(double daStartTime) mut
			{
				return VT.put_StartTime(&this, daStartTime);
			}
			public HRESULT get_UntilTime(double* retval) mut
			{
				return VT.get_UntilTime(&this, retval);
			}
			public HRESULT put_UntilTime(double daUntilTime) mut
			{
				return VT.put_UntilTime(&this, daUntilTime);
			}
			public HRESULT get_Notify(BSTR* retval) mut
			{
				return VT.get_Notify(&this, retval);
			}
			public HRESULT put_Notify(BSTR bstrNotify) mut
			{
				return VT.put_Notify(&this, bstrNotify);
			}
			public HRESULT get_NotifyPath(BSTR* retval) mut
			{
				return VT.get_NotifyPath(&this, retval);
			}
			public HRESULT put_NotifyPath(BSTR bstrNotifyPath) mut
			{
				return VT.put_NotifyPath(&this, bstrNotifyPath);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_HostPrintQueue;
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_User;
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_UserPath;
				public new function HRESULT(IADsPrintJob *self, double* retval) get_TimeSubmitted;
				public new function HRESULT(IADsPrintJob *self, int32* retval) get_TotalPages;
				public new function HRESULT(IADsPrintJob *self, int32* retval) get_Size;
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsPrintJob *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsPrintJob *self, int32* retval) get_Priority;
				public new function HRESULT(IADsPrintJob *self, int32 lnPriority) put_Priority;
				public new function HRESULT(IADsPrintJob *self, double* retval) get_StartTime;
				public new function HRESULT(IADsPrintJob *self, double daStartTime) put_StartTime;
				public new function HRESULT(IADsPrintJob *self, double* retval) get_UntilTime;
				public new function HRESULT(IADsPrintJob *self, double daUntilTime) put_UntilTime;
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_Notify;
				public new function HRESULT(IADsPrintJob *self, BSTR bstrNotify) put_Notify;
				public new function HRESULT(IADsPrintJob *self, BSTR* retval) get_NotifyPath;
				public new function HRESULT(IADsPrintJob *self, BSTR bstrNotifyPath) put_NotifyPath;
			}
		}
		[CRepr]
		public struct IADsPrintJobOperations : IADs
		{
			public const new Guid IID = .(0x9a52db30, 0x1ecf, 0x11cf, 0xa9, 0x88, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(int32* retval) mut
			{
				return VT.get_Status(&this, retval);
			}
			public HRESULT get_TimeElapsed(int32* retval) mut
			{
				return VT.get_TimeElapsed(&this, retval);
			}
			public HRESULT get_PagesPrinted(int32* retval) mut
			{
				return VT.get_PagesPrinted(&this, retval);
			}
			public HRESULT get_Position(int32* retval) mut
			{
				return VT.get_Position(&this, retval);
			}
			public HRESULT put_Position(int32 lnPosition) mut
			{
				return VT.put_Position(&this, lnPosition);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsPrintJobOperations *self, int32* retval) get_Status;
				public new function HRESULT(IADsPrintJobOperations *self, int32* retval) get_TimeElapsed;
				public new function HRESULT(IADsPrintJobOperations *self, int32* retval) get_PagesPrinted;
				public new function HRESULT(IADsPrintJobOperations *self, int32* retval) get_Position;
				public new function HRESULT(IADsPrintJobOperations *self, int32 lnPosition) put_Position;
				public new function HRESULT(IADsPrintJobOperations *self) Pause;
				public new function HRESULT(IADsPrintJobOperations *self) Resume;
			}
		}
		[CRepr]
		public struct IADsService : IADs
		{
			public const new Guid IID = .(0x68af66e0, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HostComputer(BSTR* retval) mut
			{
				return VT.get_HostComputer(&this, retval);
			}
			public HRESULT put_HostComputer(BSTR bstrHostComputer) mut
			{
				return VT.put_HostComputer(&this, bstrHostComputer);
			}
			public HRESULT get_DisplayName(BSTR* retval) mut
			{
				return VT.get_DisplayName(&this, retval);
			}
			public HRESULT put_DisplayName(BSTR bstrDisplayName) mut
			{
				return VT.put_DisplayName(&this, bstrDisplayName);
			}
			public HRESULT get_Version(BSTR* retval) mut
			{
				return VT.get_Version(&this, retval);
			}
			public HRESULT put_Version(BSTR bstrVersion) mut
			{
				return VT.put_Version(&this, bstrVersion);
			}
			public HRESULT get_ServiceType(int32* retval) mut
			{
				return VT.get_ServiceType(&this, retval);
			}
			public HRESULT put_ServiceType(int32 lnServiceType) mut
			{
				return VT.put_ServiceType(&this, lnServiceType);
			}
			public HRESULT get_StartType(int32* retval) mut
			{
				return VT.get_StartType(&this, retval);
			}
			public HRESULT put_StartType(int32 lnStartType) mut
			{
				return VT.put_StartType(&this, lnStartType);
			}
			public HRESULT get_Path(BSTR* retval) mut
			{
				return VT.get_Path(&this, retval);
			}
			public HRESULT put_Path(BSTR bstrPath) mut
			{
				return VT.put_Path(&this, bstrPath);
			}
			public HRESULT get_StartupParameters(BSTR* retval) mut
			{
				return VT.get_StartupParameters(&this, retval);
			}
			public HRESULT put_StartupParameters(BSTR bstrStartupParameters) mut
			{
				return VT.put_StartupParameters(&this, bstrStartupParameters);
			}
			public HRESULT get_ErrorControl(int32* retval) mut
			{
				return VT.get_ErrorControl(&this, retval);
			}
			public HRESULT put_ErrorControl(int32 lnErrorControl) mut
			{
				return VT.put_ErrorControl(&this, lnErrorControl);
			}
			public HRESULT get_LoadOrderGroup(BSTR* retval) mut
			{
				return VT.get_LoadOrderGroup(&this, retval);
			}
			public HRESULT put_LoadOrderGroup(BSTR bstrLoadOrderGroup) mut
			{
				return VT.put_LoadOrderGroup(&this, bstrLoadOrderGroup);
			}
			public HRESULT get_ServiceAccountName(BSTR* retval) mut
			{
				return VT.get_ServiceAccountName(&this, retval);
			}
			public HRESULT put_ServiceAccountName(BSTR bstrServiceAccountName) mut
			{
				return VT.put_ServiceAccountName(&this, bstrServiceAccountName);
			}
			public HRESULT get_ServiceAccountPath(BSTR* retval) mut
			{
				return VT.get_ServiceAccountPath(&this, retval);
			}
			public HRESULT put_ServiceAccountPath(BSTR bstrServiceAccountPath) mut
			{
				return VT.put_ServiceAccountPath(&this, bstrServiceAccountPath);
			}
			public HRESULT get_Dependencies(VARIANT* retval) mut
			{
				return VT.get_Dependencies(&this, retval);
			}
			public HRESULT put_Dependencies(VARIANT vDependencies) mut
			{
				return VT.put_Dependencies(&this, vDependencies);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsService *self, BSTR* retval) get_HostComputer;
				public new function HRESULT(IADsService *self, BSTR bstrHostComputer) put_HostComputer;
				public new function HRESULT(IADsService *self, BSTR* retval) get_DisplayName;
				public new function HRESULT(IADsService *self, BSTR bstrDisplayName) put_DisplayName;
				public new function HRESULT(IADsService *self, BSTR* retval) get_Version;
				public new function HRESULT(IADsService *self, BSTR bstrVersion) put_Version;
				public new function HRESULT(IADsService *self, int32* retval) get_ServiceType;
				public new function HRESULT(IADsService *self, int32 lnServiceType) put_ServiceType;
				public new function HRESULT(IADsService *self, int32* retval) get_StartType;
				public new function HRESULT(IADsService *self, int32 lnStartType) put_StartType;
				public new function HRESULT(IADsService *self, BSTR* retval) get_Path;
				public new function HRESULT(IADsService *self, BSTR bstrPath) put_Path;
				public new function HRESULT(IADsService *self, BSTR* retval) get_StartupParameters;
				public new function HRESULT(IADsService *self, BSTR bstrStartupParameters) put_StartupParameters;
				public new function HRESULT(IADsService *self, int32* retval) get_ErrorControl;
				public new function HRESULT(IADsService *self, int32 lnErrorControl) put_ErrorControl;
				public new function HRESULT(IADsService *self, BSTR* retval) get_LoadOrderGroup;
				public new function HRESULT(IADsService *self, BSTR bstrLoadOrderGroup) put_LoadOrderGroup;
				public new function HRESULT(IADsService *self, BSTR* retval) get_ServiceAccountName;
				public new function HRESULT(IADsService *self, BSTR bstrServiceAccountName) put_ServiceAccountName;
				public new function HRESULT(IADsService *self, BSTR* retval) get_ServiceAccountPath;
				public new function HRESULT(IADsService *self, BSTR bstrServiceAccountPath) put_ServiceAccountPath;
				public new function HRESULT(IADsService *self, VARIANT* retval) get_Dependencies;
				public new function HRESULT(IADsService *self, VARIANT vDependencies) put_Dependencies;
			}
		}
		[CRepr]
		public struct IADsServiceOperations : IADs
		{
			public const new Guid IID = .(0x5d7b33f0, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Status(int32* retval) mut
			{
				return VT.get_Status(&this, retval);
			}
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Continue() mut
			{
				return VT.Continue(&this);
			}
			public HRESULT SetPassword(BSTR bstrNewPassword) mut
			{
				return VT.SetPassword(&this, bstrNewPassword);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsServiceOperations *self, int32* retval) get_Status;
				public new function HRESULT(IADsServiceOperations *self) Start;
				public new function HRESULT(IADsServiceOperations *self) Stop;
				public new function HRESULT(IADsServiceOperations *self) Pause;
				public new function HRESULT(IADsServiceOperations *self) Continue;
				public new function HRESULT(IADsServiceOperations *self, BSTR bstrNewPassword) SetPassword;
			}
		}
		[CRepr]
		public struct IADsFileService : IADsService
		{
			public const new Guid IID = .(0xa89d1900, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_MaxUserCount(int32* retval) mut
			{
				return VT.get_MaxUserCount(&this, retval);
			}
			public HRESULT put_MaxUserCount(int32 lnMaxUserCount) mut
			{
				return VT.put_MaxUserCount(&this, lnMaxUserCount);
			}
			[CRepr]
			public struct VTable : IADsService.VTable
			{
				public new function HRESULT(IADsFileService *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsFileService *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsFileService *self, int32* retval) get_MaxUserCount;
				public new function HRESULT(IADsFileService *self, int32 lnMaxUserCount) put_MaxUserCount;
			}
		}
		[CRepr]
		public struct IADsFileServiceOperations : IADsServiceOperations
		{
			public const new Guid IID = .(0xa02ded10, 0x31ca, 0x11cf, 0xa9, 0x8a, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Sessions(IADsCollection** ppSessions) mut
			{
				return VT.Sessions(&this, ppSessions);
			}
			public HRESULT Resources(IADsCollection** ppResources) mut
			{
				return VT.Resources(&this, ppResources);
			}
			[CRepr]
			public struct VTable : IADsServiceOperations.VTable
			{
				public new function HRESULT(IADsFileServiceOperations *self, IADsCollection** ppSessions) Sessions;
				public new function HRESULT(IADsFileServiceOperations *self, IADsCollection** ppResources) Resources;
			}
		}
		[CRepr]
		public struct IADsFileShare : IADs
		{
			public const new Guid IID = .(0xeb6dcaf0, 0x4b83, 0x11cf, 0xa9, 0x95, 0x00, 0xaa, 0x00, 0x6b, 0xc1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentUserCount(int32* retval) mut
			{
				return VT.get_CurrentUserCount(&this, retval);
			}
			public HRESULT get_Description(BSTR* retval) mut
			{
				return VT.get_Description(&this, retval);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_HostComputer(BSTR* retval) mut
			{
				return VT.get_HostComputer(&this, retval);
			}
			public HRESULT put_HostComputer(BSTR bstrHostComputer) mut
			{
				return VT.put_HostComputer(&this, bstrHostComputer);
			}
			public HRESULT get_Path(BSTR* retval) mut
			{
				return VT.get_Path(&this, retval);
			}
			public HRESULT put_Path(BSTR bstrPath) mut
			{
				return VT.put_Path(&this, bstrPath);
			}
			public HRESULT get_MaxUserCount(int32* retval) mut
			{
				return VT.get_MaxUserCount(&this, retval);
			}
			public HRESULT put_MaxUserCount(int32 lnMaxUserCount) mut
			{
				return VT.put_MaxUserCount(&this, lnMaxUserCount);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsFileShare *self, int32* retval) get_CurrentUserCount;
				public new function HRESULT(IADsFileShare *self, BSTR* retval) get_Description;
				public new function HRESULT(IADsFileShare *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IADsFileShare *self, BSTR* retval) get_HostComputer;
				public new function HRESULT(IADsFileShare *self, BSTR bstrHostComputer) put_HostComputer;
				public new function HRESULT(IADsFileShare *self, BSTR* retval) get_Path;
				public new function HRESULT(IADsFileShare *self, BSTR bstrPath) put_Path;
				public new function HRESULT(IADsFileShare *self, int32* retval) get_MaxUserCount;
				public new function HRESULT(IADsFileShare *self, int32 lnMaxUserCount) put_MaxUserCount;
			}
		}
		[CRepr]
		public struct IADsSession : IADs
		{
			public const new Guid IID = .(0x398b7da0, 0x4aab, 0x11cf, 0xae, 0x2c, 0x00, 0xaa, 0x00, 0x6e, 0xbf, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_User(BSTR* retval) mut
			{
				return VT.get_User(&this, retval);
			}
			public HRESULT get_UserPath(BSTR* retval) mut
			{
				return VT.get_UserPath(&this, retval);
			}
			public HRESULT get_Computer(BSTR* retval) mut
			{
				return VT.get_Computer(&this, retval);
			}
			public HRESULT get_ComputerPath(BSTR* retval) mut
			{
				return VT.get_ComputerPath(&this, retval);
			}
			public HRESULT get_ConnectTime(int32* retval) mut
			{
				return VT.get_ConnectTime(&this, retval);
			}
			public HRESULT get_IdleTime(int32* retval) mut
			{
				return VT.get_IdleTime(&this, retval);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsSession *self, BSTR* retval) get_User;
				public new function HRESULT(IADsSession *self, BSTR* retval) get_UserPath;
				public new function HRESULT(IADsSession *self, BSTR* retval) get_Computer;
				public new function HRESULT(IADsSession *self, BSTR* retval) get_ComputerPath;
				public new function HRESULT(IADsSession *self, int32* retval) get_ConnectTime;
				public new function HRESULT(IADsSession *self, int32* retval) get_IdleTime;
			}
		}
		[CRepr]
		public struct IADsResource : IADs
		{
			public const new Guid IID = .(0x34a05b20, 0x4aab, 0x11cf, 0xae, 0x2c, 0x00, 0xaa, 0x00, 0x6e, 0xbf, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_User(BSTR* retval) mut
			{
				return VT.get_User(&this, retval);
			}
			public HRESULT get_UserPath(BSTR* retval) mut
			{
				return VT.get_UserPath(&this, retval);
			}
			public HRESULT get_Path(BSTR* retval) mut
			{
				return VT.get_Path(&this, retval);
			}
			public HRESULT get_LockCount(int32* retval) mut
			{
				return VT.get_LockCount(&this, retval);
			}
			[CRepr]
			public struct VTable : IADs.VTable
			{
				public new function HRESULT(IADsResource *self, BSTR* retval) get_User;
				public new function HRESULT(IADsResource *self, BSTR* retval) get_UserPath;
				public new function HRESULT(IADsResource *self, BSTR* retval) get_Path;
				public new function HRESULT(IADsResource *self, int32* retval) get_LockCount;
			}
		}
		[CRepr]
		public struct IADsOpenDSObject : IDispatch
		{
			public const new Guid IID = .(0xddf2891e, 0x0f9c, 0x11d0, 0x8a, 0xd4, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenDSObject(BSTR lpszDNName, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved, IDispatch** ppOleDsObj) mut
			{
				return VT.OpenDSObject(&this, lpszDNName, lpszUserName, lpszPassword, lnReserved, ppOleDsObj);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsOpenDSObject *self, BSTR lpszDNName, BSTR lpszUserName, BSTR lpszPassword, int32 lnReserved, IDispatch** ppOleDsObj) OpenDSObject;
			}
		}
		[CRepr]
		public struct IDirectoryObject : IUnknown
		{
			public const new Guid IID = .(0xe798de2c, 0x22e4, 0x11d0, 0x84, 0xfe, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectInformation(ADS_OBJECT_INFO** ppObjInfo) mut
			{
				return VT.GetObjectInformation(&this, ppObjInfo);
			}
			public HRESULT GetObjectAttributes(PWSTR* pAttributeNames, uint32 dwNumberAttributes, ADS_ATTR_INFO** ppAttributeEntries, uint32* pdwNumAttributesReturned) mut
			{
				return VT.GetObjectAttributes(&this, pAttributeNames, dwNumberAttributes, ppAttributeEntries, pdwNumAttributesReturned);
			}
			public HRESULT SetObjectAttributes(ADS_ATTR_INFO* pAttributeEntries, uint32 dwNumAttributes, uint32* pdwNumAttributesModified) mut
			{
				return VT.SetObjectAttributes(&this, pAttributeEntries, dwNumAttributes, pdwNumAttributesModified);
			}
			public HRESULT CreateDSObject(PWSTR pszRDNName, ADS_ATTR_INFO* pAttributeEntries, uint32 dwNumAttributes, IDispatch** ppObject) mut
			{
				return VT.CreateDSObject(&this, pszRDNName, pAttributeEntries, dwNumAttributes, ppObject);
			}
			public HRESULT DeleteDSObject(PWSTR pszRDNName) mut
			{
				return VT.DeleteDSObject(&this, pszRDNName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectoryObject *self, ADS_OBJECT_INFO** ppObjInfo) GetObjectInformation;
				public new function HRESULT(IDirectoryObject *self, PWSTR* pAttributeNames, uint32 dwNumberAttributes, ADS_ATTR_INFO** ppAttributeEntries, uint32* pdwNumAttributesReturned) GetObjectAttributes;
				public new function HRESULT(IDirectoryObject *self, ADS_ATTR_INFO* pAttributeEntries, uint32 dwNumAttributes, uint32* pdwNumAttributesModified) SetObjectAttributes;
				public new function HRESULT(IDirectoryObject *self, PWSTR pszRDNName, ADS_ATTR_INFO* pAttributeEntries, uint32 dwNumAttributes, IDispatch** ppObject) CreateDSObject;
				public new function HRESULT(IDirectoryObject *self, PWSTR pszRDNName) DeleteDSObject;
			}
		}
		[CRepr]
		public struct IDirectorySearch : IUnknown
		{
			public const new Guid IID = .(0x109ba8ec, 0x92f0, 0x11d0, 0xa7, 0x90, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSearchPreference(ads_searchpref_info* pSearchPrefs, uint32 dwNumPrefs) mut
			{
				return VT.SetSearchPreference(&this, pSearchPrefs, dwNumPrefs);
			}
			public HRESULT ExecuteSearch(PWSTR pszSearchFilter, PWSTR* pAttributeNames, uint32 dwNumberAttributes, int* phSearchResult) mut
			{
				return VT.ExecuteSearch(&this, pszSearchFilter, pAttributeNames, dwNumberAttributes, phSearchResult);
			}
			public HRESULT AbandonSearch(int phSearchResult) mut
			{
				return VT.AbandonSearch(&this, phSearchResult);
			}
			public HRESULT GetFirstRow(int hSearchResult) mut
			{
				return VT.GetFirstRow(&this, hSearchResult);
			}
			public HRESULT GetNextRow(int hSearchResult) mut
			{
				return VT.GetNextRow(&this, hSearchResult);
			}
			public HRESULT GetPreviousRow(int hSearchResult) mut
			{
				return VT.GetPreviousRow(&this, hSearchResult);
			}
			public HRESULT GetNextColumnName(int hSearchHandle, PWSTR* ppszColumnName) mut
			{
				return VT.GetNextColumnName(&this, hSearchHandle, ppszColumnName);
			}
			public HRESULT GetColumn(int hSearchResult, PWSTR szColumnName, ads_search_column* pSearchColumn) mut
			{
				return VT.GetColumn(&this, hSearchResult, szColumnName, pSearchColumn);
			}
			public HRESULT FreeColumn(ads_search_column* pSearchColumn) mut
			{
				return VT.FreeColumn(&this, pSearchColumn);
			}
			public HRESULT CloseSearchHandle(int hSearchResult) mut
			{
				return VT.CloseSearchHandle(&this, hSearchResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectorySearch *self, ads_searchpref_info* pSearchPrefs, uint32 dwNumPrefs) SetSearchPreference;
				public new function HRESULT(IDirectorySearch *self, PWSTR pszSearchFilter, PWSTR* pAttributeNames, uint32 dwNumberAttributes, int* phSearchResult) ExecuteSearch;
				public new function HRESULT(IDirectorySearch *self, int phSearchResult) AbandonSearch;
				public new function HRESULT(IDirectorySearch *self, int hSearchResult) GetFirstRow;
				public new function HRESULT(IDirectorySearch *self, int hSearchResult) GetNextRow;
				public new function HRESULT(IDirectorySearch *self, int hSearchResult) GetPreviousRow;
				public new function HRESULT(IDirectorySearch *self, int hSearchHandle, PWSTR* ppszColumnName) GetNextColumnName;
				public new function HRESULT(IDirectorySearch *self, int hSearchResult, PWSTR szColumnName, ads_search_column* pSearchColumn) GetColumn;
				public new function HRESULT(IDirectorySearch *self, ads_search_column* pSearchColumn) FreeColumn;
				public new function HRESULT(IDirectorySearch *self, int hSearchResult) CloseSearchHandle;
			}
		}
		[CRepr]
		public struct IDirectorySchemaMgmt : IUnknown
		{
			public const new Guid IID = .(0x75db3b9c, 0xa4d8, 0x11d0, 0xa7, 0x9c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumAttributes(PWSTR* ppszAttrNames, uint32 dwNumAttributes, ADS_ATTR_DEF** ppAttrDefinition, uint32* pdwNumAttributes) mut
			{
				return VT.EnumAttributes(&this, ppszAttrNames, dwNumAttributes, ppAttrDefinition, pdwNumAttributes);
			}
			public HRESULT CreateAttributeDefinition(PWSTR pszAttributeName, ADS_ATTR_DEF* pAttributeDefinition) mut
			{
				return VT.CreateAttributeDefinition(&this, pszAttributeName, pAttributeDefinition);
			}
			public HRESULT WriteAttributeDefinition(PWSTR pszAttributeName, ADS_ATTR_DEF* pAttributeDefinition) mut
			{
				return VT.WriteAttributeDefinition(&this, pszAttributeName, pAttributeDefinition);
			}
			public HRESULT DeleteAttributeDefinition(PWSTR pszAttributeName) mut
			{
				return VT.DeleteAttributeDefinition(&this, pszAttributeName);
			}
			public HRESULT EnumClasses(PWSTR* ppszClassNames, uint32 dwNumClasses, ADS_CLASS_DEF** ppClassDefinition, uint32* pdwNumClasses) mut
			{
				return VT.EnumClasses(&this, ppszClassNames, dwNumClasses, ppClassDefinition, pdwNumClasses);
			}
			public HRESULT WriteClassDefinition(PWSTR pszClassName, ADS_CLASS_DEF* pClassDefinition) mut
			{
				return VT.WriteClassDefinition(&this, pszClassName, pClassDefinition);
			}
			public HRESULT CreateClassDefinition(PWSTR pszClassName, ADS_CLASS_DEF* pClassDefinition) mut
			{
				return VT.CreateClassDefinition(&this, pszClassName, pClassDefinition);
			}
			public HRESULT DeleteClassDefinition(PWSTR pszClassName) mut
			{
				return VT.DeleteClassDefinition(&this, pszClassName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR* ppszAttrNames, uint32 dwNumAttributes, ADS_ATTR_DEF** ppAttrDefinition, uint32* pdwNumAttributes) EnumAttributes;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszAttributeName, ADS_ATTR_DEF* pAttributeDefinition) CreateAttributeDefinition;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszAttributeName, ADS_ATTR_DEF* pAttributeDefinition) WriteAttributeDefinition;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszAttributeName) DeleteAttributeDefinition;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR* ppszClassNames, uint32 dwNumClasses, ADS_CLASS_DEF** ppClassDefinition, uint32* pdwNumClasses) EnumClasses;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszClassName, ADS_CLASS_DEF* pClassDefinition) WriteClassDefinition;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszClassName, ADS_CLASS_DEF* pClassDefinition) CreateClassDefinition;
				public new function HRESULT(IDirectorySchemaMgmt *self, PWSTR pszClassName) DeleteClassDefinition;
			}
		}
		[CRepr]
		public struct IADsAggregatee : IUnknown
		{
			public const new Guid IID = .(0x1346ce8c, 0x9039, 0x11d0, 0x85, 0x28, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectAsAggregatee(IUnknown* pOuterUnknown) mut
			{
				return VT.ConnectAsAggregatee(&this, pOuterUnknown);
			}
			public HRESULT DisconnectAsAggregatee() mut
			{
				return VT.DisconnectAsAggregatee(&this);
			}
			public HRESULT RelinquishInterface(Guid* riid) mut
			{
				return VT.RelinquishInterface(&this, riid);
			}
			public HRESULT RestoreInterface(Guid* riid) mut
			{
				return VT.RestoreInterface(&this, riid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IADsAggregatee *self, IUnknown* pOuterUnknown) ConnectAsAggregatee;
				public new function HRESULT(IADsAggregatee *self) DisconnectAsAggregatee;
				public new function HRESULT(IADsAggregatee *self, Guid* riid) RelinquishInterface;
				public new function HRESULT(IADsAggregatee *self, Guid* riid) RestoreInterface;
			}
		}
		[CRepr]
		public struct IADsAggregator : IUnknown
		{
			public const new Guid IID = .(0x52db5fb0, 0x941f, 0x11d0, 0x85, 0x29, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectAsAggregator(IUnknown* pAggregatee) mut
			{
				return VT.ConnectAsAggregator(&this, pAggregatee);
			}
			public HRESULT DisconnectAsAggregator() mut
			{
				return VT.DisconnectAsAggregator(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IADsAggregator *self, IUnknown* pAggregatee) ConnectAsAggregator;
				public new function HRESULT(IADsAggregator *self) DisconnectAsAggregator;
			}
		}
		[CRepr]
		public struct IADsAccessControlEntry : IDispatch
		{
			public const new Guid IID = .(0xb4f3a14c, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AccessMask(int32* retval) mut
			{
				return VT.get_AccessMask(&this, retval);
			}
			public HRESULT put_AccessMask(int32 lnAccessMask) mut
			{
				return VT.put_AccessMask(&this, lnAccessMask);
			}
			public HRESULT get_AceType(int32* retval) mut
			{
				return VT.get_AceType(&this, retval);
			}
			public HRESULT put_AceType(int32 lnAceType) mut
			{
				return VT.put_AceType(&this, lnAceType);
			}
			public HRESULT get_AceFlags(int32* retval) mut
			{
				return VT.get_AceFlags(&this, retval);
			}
			public HRESULT put_AceFlags(int32 lnAceFlags) mut
			{
				return VT.put_AceFlags(&this, lnAceFlags);
			}
			public HRESULT get_Flags(int32* retval) mut
			{
				return VT.get_Flags(&this, retval);
			}
			public HRESULT put_Flags(int32 lnFlags) mut
			{
				return VT.put_Flags(&this, lnFlags);
			}
			public HRESULT get_ObjectType(BSTR* retval) mut
			{
				return VT.get_ObjectType(&this, retval);
			}
			public HRESULT put_ObjectType(BSTR bstrObjectType) mut
			{
				return VT.put_ObjectType(&this, bstrObjectType);
			}
			public HRESULT get_InheritedObjectType(BSTR* retval) mut
			{
				return VT.get_InheritedObjectType(&this, retval);
			}
			public HRESULT put_InheritedObjectType(BSTR bstrInheritedObjectType) mut
			{
				return VT.put_InheritedObjectType(&this, bstrInheritedObjectType);
			}
			public HRESULT get_Trustee(BSTR* retval) mut
			{
				return VT.get_Trustee(&this, retval);
			}
			public HRESULT put_Trustee(BSTR bstrTrustee) mut
			{
				return VT.put_Trustee(&this, bstrTrustee);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsAccessControlEntry *self, int32* retval) get_AccessMask;
				public new function HRESULT(IADsAccessControlEntry *self, int32 lnAccessMask) put_AccessMask;
				public new function HRESULT(IADsAccessControlEntry *self, int32* retval) get_AceType;
				public new function HRESULT(IADsAccessControlEntry *self, int32 lnAceType) put_AceType;
				public new function HRESULT(IADsAccessControlEntry *self, int32* retval) get_AceFlags;
				public new function HRESULT(IADsAccessControlEntry *self, int32 lnAceFlags) put_AceFlags;
				public new function HRESULT(IADsAccessControlEntry *self, int32* retval) get_Flags;
				public new function HRESULT(IADsAccessControlEntry *self, int32 lnFlags) put_Flags;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR* retval) get_ObjectType;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR bstrObjectType) put_ObjectType;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR* retval) get_InheritedObjectType;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR bstrInheritedObjectType) put_InheritedObjectType;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR* retval) get_Trustee;
				public new function HRESULT(IADsAccessControlEntry *self, BSTR bstrTrustee) put_Trustee;
			}
		}
		[CRepr]
		public struct IADsAccessControlList : IDispatch
		{
			public const new Guid IID = .(0xb7ee91cc, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AclRevision(int32* retval) mut
			{
				return VT.get_AclRevision(&this, retval);
			}
			public HRESULT put_AclRevision(int32 lnAclRevision) mut
			{
				return VT.put_AclRevision(&this, lnAclRevision);
			}
			public HRESULT get_AceCount(int32* retval) mut
			{
				return VT.get_AceCount(&this, retval);
			}
			public HRESULT put_AceCount(int32 lnAceCount) mut
			{
				return VT.put_AceCount(&this, lnAceCount);
			}
			public HRESULT AddAce(IDispatch* pAccessControlEntry) mut
			{
				return VT.AddAce(&this, pAccessControlEntry);
			}
			public HRESULT RemoveAce(IDispatch* pAccessControlEntry) mut
			{
				return VT.RemoveAce(&this, pAccessControlEntry);
			}
			public HRESULT CopyAccessList(IDispatch** ppAccessControlList) mut
			{
				return VT.CopyAccessList(&this, ppAccessControlList);
			}
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsAccessControlList *self, int32* retval) get_AclRevision;
				public new function HRESULT(IADsAccessControlList *self, int32 lnAclRevision) put_AclRevision;
				public new function HRESULT(IADsAccessControlList *self, int32* retval) get_AceCount;
				public new function HRESULT(IADsAccessControlList *self, int32 lnAceCount) put_AceCount;
				public new function HRESULT(IADsAccessControlList *self, IDispatch* pAccessControlEntry) AddAce;
				public new function HRESULT(IADsAccessControlList *self, IDispatch* pAccessControlEntry) RemoveAce;
				public new function HRESULT(IADsAccessControlList *self, IDispatch** ppAccessControlList) CopyAccessList;
				public new function HRESULT(IADsAccessControlList *self, IUnknown** retval) get__NewEnum;
			}
		}
		[CRepr]
		public struct IADsSecurityDescriptor : IDispatch
		{
			public const new Guid IID = .(0xb8c787ca, 0x9bdd, 0x11d0, 0x85, 0x2c, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Revision(int32* retval) mut
			{
				return VT.get_Revision(&this, retval);
			}
			public HRESULT put_Revision(int32 lnRevision) mut
			{
				return VT.put_Revision(&this, lnRevision);
			}
			public HRESULT get_Control(int32* retval) mut
			{
				return VT.get_Control(&this, retval);
			}
			public HRESULT put_Control(int32 lnControl) mut
			{
				return VT.put_Control(&this, lnControl);
			}
			public HRESULT get_Owner(BSTR* retval) mut
			{
				return VT.get_Owner(&this, retval);
			}
			public HRESULT put_Owner(BSTR bstrOwner) mut
			{
				return VT.put_Owner(&this, bstrOwner);
			}
			public HRESULT get_OwnerDefaulted(int16* retval) mut
			{
				return VT.get_OwnerDefaulted(&this, retval);
			}
			public HRESULT put_OwnerDefaulted(int16 fOwnerDefaulted) mut
			{
				return VT.put_OwnerDefaulted(&this, fOwnerDefaulted);
			}
			public HRESULT get_Group(BSTR* retval) mut
			{
				return VT.get_Group(&this, retval);
			}
			public HRESULT put_Group(BSTR bstrGroup) mut
			{
				return VT.put_Group(&this, bstrGroup);
			}
			public HRESULT get_GroupDefaulted(int16* retval) mut
			{
				return VT.get_GroupDefaulted(&this, retval);
			}
			public HRESULT put_GroupDefaulted(int16 fGroupDefaulted) mut
			{
				return VT.put_GroupDefaulted(&this, fGroupDefaulted);
			}
			public HRESULT get_DiscretionaryAcl(IDispatch** retval) mut
			{
				return VT.get_DiscretionaryAcl(&this, retval);
			}
			public HRESULT put_DiscretionaryAcl(IDispatch* pDiscretionaryAcl) mut
			{
				return VT.put_DiscretionaryAcl(&this, pDiscretionaryAcl);
			}
			public HRESULT get_DaclDefaulted(int16* retval) mut
			{
				return VT.get_DaclDefaulted(&this, retval);
			}
			public HRESULT put_DaclDefaulted(int16 fDaclDefaulted) mut
			{
				return VT.put_DaclDefaulted(&this, fDaclDefaulted);
			}
			public HRESULT get_SystemAcl(IDispatch** retval) mut
			{
				return VT.get_SystemAcl(&this, retval);
			}
			public HRESULT put_SystemAcl(IDispatch* pSystemAcl) mut
			{
				return VT.put_SystemAcl(&this, pSystemAcl);
			}
			public HRESULT get_SaclDefaulted(int16* retval) mut
			{
				return VT.get_SaclDefaulted(&this, retval);
			}
			public HRESULT put_SaclDefaulted(int16 fSaclDefaulted) mut
			{
				return VT.put_SaclDefaulted(&this, fSaclDefaulted);
			}
			public HRESULT CopySecurityDescriptor(IDispatch** ppSecurityDescriptor) mut
			{
				return VT.CopySecurityDescriptor(&this, ppSecurityDescriptor);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsSecurityDescriptor *self, int32* retval) get_Revision;
				public new function HRESULT(IADsSecurityDescriptor *self, int32 lnRevision) put_Revision;
				public new function HRESULT(IADsSecurityDescriptor *self, int32* retval) get_Control;
				public new function HRESULT(IADsSecurityDescriptor *self, int32 lnControl) put_Control;
				public new function HRESULT(IADsSecurityDescriptor *self, BSTR* retval) get_Owner;
				public new function HRESULT(IADsSecurityDescriptor *self, BSTR bstrOwner) put_Owner;
				public new function HRESULT(IADsSecurityDescriptor *self, int16* retval) get_OwnerDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, int16 fOwnerDefaulted) put_OwnerDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, BSTR* retval) get_Group;
				public new function HRESULT(IADsSecurityDescriptor *self, BSTR bstrGroup) put_Group;
				public new function HRESULT(IADsSecurityDescriptor *self, int16* retval) get_GroupDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, int16 fGroupDefaulted) put_GroupDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, IDispatch** retval) get_DiscretionaryAcl;
				public new function HRESULT(IADsSecurityDescriptor *self, IDispatch* pDiscretionaryAcl) put_DiscretionaryAcl;
				public new function HRESULT(IADsSecurityDescriptor *self, int16* retval) get_DaclDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, int16 fDaclDefaulted) put_DaclDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, IDispatch** retval) get_SystemAcl;
				public new function HRESULT(IADsSecurityDescriptor *self, IDispatch* pSystemAcl) put_SystemAcl;
				public new function HRESULT(IADsSecurityDescriptor *self, int16* retval) get_SaclDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, int16 fSaclDefaulted) put_SaclDefaulted;
				public new function HRESULT(IADsSecurityDescriptor *self, IDispatch** ppSecurityDescriptor) CopySecurityDescriptor;
			}
		}
		[CRepr]
		public struct IADsLargeInteger : IDispatch
		{
			public const new Guid IID = .(0x9068270b, 0x0939, 0x11d1, 0x8b, 0xe1, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HighPart(int32* retval) mut
			{
				return VT.get_HighPart(&this, retval);
			}
			public HRESULT put_HighPart(int32 lnHighPart) mut
			{
				return VT.put_HighPart(&this, lnHighPart);
			}
			public HRESULT get_LowPart(int32* retval) mut
			{
				return VT.get_LowPart(&this, retval);
			}
			public HRESULT put_LowPart(int32 lnLowPart) mut
			{
				return VT.put_LowPart(&this, lnLowPart);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsLargeInteger *self, int32* retval) get_HighPart;
				public new function HRESULT(IADsLargeInteger *self, int32 lnHighPart) put_HighPart;
				public new function HRESULT(IADsLargeInteger *self, int32* retval) get_LowPart;
				public new function HRESULT(IADsLargeInteger *self, int32 lnLowPart) put_LowPart;
			}
		}
		[CRepr]
		public struct IADsNameTranslate : IDispatch
		{
			public const new Guid IID = .(0xb1b272a3, 0x3625, 0x11d1, 0xa3, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ChaseReferral(int32 lnChaseReferral) mut
			{
				return VT.put_ChaseReferral(&this, lnChaseReferral);
			}
			public HRESULT Init(int32 lnSetType, BSTR bstrADsPath) mut
			{
				return VT.Init(&this, lnSetType, bstrADsPath);
			}
			public HRESULT InitEx(int32 lnSetType, BSTR bstrADsPath, BSTR bstrUserID, BSTR bstrDomain, BSTR bstrPassword) mut
			{
				return VT.InitEx(&this, lnSetType, bstrADsPath, bstrUserID, bstrDomain, bstrPassword);
			}
			public HRESULT Set(int32 lnSetType, BSTR bstrADsPath) mut
			{
				return VT.Set(&this, lnSetType, bstrADsPath);
			}
			public HRESULT Get(int32 lnFormatType, BSTR* pbstrADsPath) mut
			{
				return VT.Get(&this, lnFormatType, pbstrADsPath);
			}
			public HRESULT SetEx(int32 lnFormatType, VARIANT pvar) mut
			{
				return VT.SetEx(&this, lnFormatType, pvar);
			}
			public HRESULT GetEx(int32 lnFormatType, VARIANT* pvar) mut
			{
				return VT.GetEx(&this, lnFormatType, pvar);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsNameTranslate *self, int32 lnChaseReferral) put_ChaseReferral;
				public new function HRESULT(IADsNameTranslate *self, int32 lnSetType, BSTR bstrADsPath) Init;
				public new function HRESULT(IADsNameTranslate *self, int32 lnSetType, BSTR bstrADsPath, BSTR bstrUserID, BSTR bstrDomain, BSTR bstrPassword) InitEx;
				public new function HRESULT(IADsNameTranslate *self, int32 lnSetType, BSTR bstrADsPath) Set;
				public new function HRESULT(IADsNameTranslate *self, int32 lnFormatType, BSTR* pbstrADsPath) Get;
				public new function HRESULT(IADsNameTranslate *self, int32 lnFormatType, VARIANT pvar) SetEx;
				public new function HRESULT(IADsNameTranslate *self, int32 lnFormatType, VARIANT* pvar) GetEx;
			}
		}
		[CRepr]
		public struct IADsCaseIgnoreList : IDispatch
		{
			public const new Guid IID = .(0x7b66b533, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CaseIgnoreList(VARIANT* retval) mut
			{
				return VT.get_CaseIgnoreList(&this, retval);
			}
			public HRESULT put_CaseIgnoreList(VARIANT vCaseIgnoreList) mut
			{
				return VT.put_CaseIgnoreList(&this, vCaseIgnoreList);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsCaseIgnoreList *self, VARIANT* retval) get_CaseIgnoreList;
				public new function HRESULT(IADsCaseIgnoreList *self, VARIANT vCaseIgnoreList) put_CaseIgnoreList;
			}
		}
		[CRepr]
		public struct IADsFaxNumber : IDispatch
		{
			public const new Guid IID = .(0xa910dea9, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TelephoneNumber(BSTR* retval) mut
			{
				return VT.get_TelephoneNumber(&this, retval);
			}
			public HRESULT put_TelephoneNumber(BSTR bstrTelephoneNumber) mut
			{
				return VT.put_TelephoneNumber(&this, bstrTelephoneNumber);
			}
			public HRESULT get_Parameters(VARIANT* retval) mut
			{
				return VT.get_Parameters(&this, retval);
			}
			public HRESULT put_Parameters(VARIANT vParameters) mut
			{
				return VT.put_Parameters(&this, vParameters);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsFaxNumber *self, BSTR* retval) get_TelephoneNumber;
				public new function HRESULT(IADsFaxNumber *self, BSTR bstrTelephoneNumber) put_TelephoneNumber;
				public new function HRESULT(IADsFaxNumber *self, VARIANT* retval) get_Parameters;
				public new function HRESULT(IADsFaxNumber *self, VARIANT vParameters) put_Parameters;
			}
		}
		[CRepr]
		public struct IADsNetAddress : IDispatch
		{
			public const new Guid IID = .(0xb21a50a9, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AddressType(int32* retval) mut
			{
				return VT.get_AddressType(&this, retval);
			}
			public HRESULT put_AddressType(int32 lnAddressType) mut
			{
				return VT.put_AddressType(&this, lnAddressType);
			}
			public HRESULT get_Address(VARIANT* retval) mut
			{
				return VT.get_Address(&this, retval);
			}
			public HRESULT put_Address(VARIANT vAddress) mut
			{
				return VT.put_Address(&this, vAddress);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsNetAddress *self, int32* retval) get_AddressType;
				public new function HRESULT(IADsNetAddress *self, int32 lnAddressType) put_AddressType;
				public new function HRESULT(IADsNetAddress *self, VARIANT* retval) get_Address;
				public new function HRESULT(IADsNetAddress *self, VARIANT vAddress) put_Address;
			}
		}
		[CRepr]
		public struct IADsOctetList : IDispatch
		{
			public const new Guid IID = .(0x7b28b80f, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OctetList(VARIANT* retval) mut
			{
				return VT.get_OctetList(&this, retval);
			}
			public HRESULT put_OctetList(VARIANT vOctetList) mut
			{
				return VT.put_OctetList(&this, vOctetList);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsOctetList *self, VARIANT* retval) get_OctetList;
				public new function HRESULT(IADsOctetList *self, VARIANT vOctetList) put_OctetList;
			}
		}
		[CRepr]
		public struct IADsEmail : IDispatch
		{
			public const new Guid IID = .(0x97af011a, 0x478e, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(int32* retval) mut
			{
				return VT.get_Type(&this, retval);
			}
			public HRESULT put_Type(int32 lnType) mut
			{
				return VT.put_Type(&this, lnType);
			}
			public HRESULT get_Address(BSTR* retval) mut
			{
				return VT.get_Address(&this, retval);
			}
			public HRESULT put_Address(BSTR bstrAddress) mut
			{
				return VT.put_Address(&this, bstrAddress);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsEmail *self, int32* retval) get_Type;
				public new function HRESULT(IADsEmail *self, int32 lnType) put_Type;
				public new function HRESULT(IADsEmail *self, BSTR* retval) get_Address;
				public new function HRESULT(IADsEmail *self, BSTR bstrAddress) put_Address;
			}
		}
		[CRepr]
		public struct IADsPath : IDispatch
		{
			public const new Guid IID = .(0xb287fcd5, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(int32* retval) mut
			{
				return VT.get_Type(&this, retval);
			}
			public HRESULT put_Type(int32 lnType) mut
			{
				return VT.put_Type(&this, lnType);
			}
			public HRESULT get_VolumeName(BSTR* retval) mut
			{
				return VT.get_VolumeName(&this, retval);
			}
			public HRESULT put_VolumeName(BSTR bstrVolumeName) mut
			{
				return VT.put_VolumeName(&this, bstrVolumeName);
			}
			public HRESULT get_Path(BSTR* retval) mut
			{
				return VT.get_Path(&this, retval);
			}
			public HRESULT put_Path(BSTR bstrPath) mut
			{
				return VT.put_Path(&this, bstrPath);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPath *self, int32* retval) get_Type;
				public new function HRESULT(IADsPath *self, int32 lnType) put_Type;
				public new function HRESULT(IADsPath *self, BSTR* retval) get_VolumeName;
				public new function HRESULT(IADsPath *self, BSTR bstrVolumeName) put_VolumeName;
				public new function HRESULT(IADsPath *self, BSTR* retval) get_Path;
				public new function HRESULT(IADsPath *self, BSTR bstrPath) put_Path;
			}
		}
		[CRepr]
		public struct IADsReplicaPointer : IDispatch
		{
			public const new Guid IID = .(0xf60fb803, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ServerName(BSTR* retval) mut
			{
				return VT.get_ServerName(&this, retval);
			}
			public HRESULT put_ServerName(BSTR bstrServerName) mut
			{
				return VT.put_ServerName(&this, bstrServerName);
			}
			public HRESULT get_ReplicaType(int32* retval) mut
			{
				return VT.get_ReplicaType(&this, retval);
			}
			public HRESULT put_ReplicaType(int32 lnReplicaType) mut
			{
				return VT.put_ReplicaType(&this, lnReplicaType);
			}
			public HRESULT get_ReplicaNumber(int32* retval) mut
			{
				return VT.get_ReplicaNumber(&this, retval);
			}
			public HRESULT put_ReplicaNumber(int32 lnReplicaNumber) mut
			{
				return VT.put_ReplicaNumber(&this, lnReplicaNumber);
			}
			public HRESULT get_Count(int32* retval) mut
			{
				return VT.get_Count(&this, retval);
			}
			public HRESULT put_Count(int32 lnCount) mut
			{
				return VT.put_Count(&this, lnCount);
			}
			public HRESULT get_ReplicaAddressHints(VARIANT* retval) mut
			{
				return VT.get_ReplicaAddressHints(&this, retval);
			}
			public HRESULT put_ReplicaAddressHints(VARIANT vReplicaAddressHints) mut
			{
				return VT.put_ReplicaAddressHints(&this, vReplicaAddressHints);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsReplicaPointer *self, BSTR* retval) get_ServerName;
				public new function HRESULT(IADsReplicaPointer *self, BSTR bstrServerName) put_ServerName;
				public new function HRESULT(IADsReplicaPointer *self, int32* retval) get_ReplicaType;
				public new function HRESULT(IADsReplicaPointer *self, int32 lnReplicaType) put_ReplicaType;
				public new function HRESULT(IADsReplicaPointer *self, int32* retval) get_ReplicaNumber;
				public new function HRESULT(IADsReplicaPointer *self, int32 lnReplicaNumber) put_ReplicaNumber;
				public new function HRESULT(IADsReplicaPointer *self, int32* retval) get_Count;
				public new function HRESULT(IADsReplicaPointer *self, int32 lnCount) put_Count;
				public new function HRESULT(IADsReplicaPointer *self, VARIANT* retval) get_ReplicaAddressHints;
				public new function HRESULT(IADsReplicaPointer *self, VARIANT vReplicaAddressHints) put_ReplicaAddressHints;
			}
		}
		[CRepr]
		public struct IADsAcl : IDispatch
		{
			public const new Guid IID = .(0x8452d3ab, 0x0869, 0x11d1, 0xa3, 0x77, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProtectedAttrName(BSTR* retval) mut
			{
				return VT.get_ProtectedAttrName(&this, retval);
			}
			public HRESULT put_ProtectedAttrName(BSTR bstrProtectedAttrName) mut
			{
				return VT.put_ProtectedAttrName(&this, bstrProtectedAttrName);
			}
			public HRESULT get_SubjectName(BSTR* retval) mut
			{
				return VT.get_SubjectName(&this, retval);
			}
			public HRESULT put_SubjectName(BSTR bstrSubjectName) mut
			{
				return VT.put_SubjectName(&this, bstrSubjectName);
			}
			public HRESULT get_Privileges(int32* retval) mut
			{
				return VT.get_Privileges(&this, retval);
			}
			public HRESULT put_Privileges(int32 lnPrivileges) mut
			{
				return VT.put_Privileges(&this, lnPrivileges);
			}
			public HRESULT CopyAcl(IDispatch** ppAcl) mut
			{
				return VT.CopyAcl(&this, ppAcl);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsAcl *self, BSTR* retval) get_ProtectedAttrName;
				public new function HRESULT(IADsAcl *self, BSTR bstrProtectedAttrName) put_ProtectedAttrName;
				public new function HRESULT(IADsAcl *self, BSTR* retval) get_SubjectName;
				public new function HRESULT(IADsAcl *self, BSTR bstrSubjectName) put_SubjectName;
				public new function HRESULT(IADsAcl *self, int32* retval) get_Privileges;
				public new function HRESULT(IADsAcl *self, int32 lnPrivileges) put_Privileges;
				public new function HRESULT(IADsAcl *self, IDispatch** ppAcl) CopyAcl;
			}
		}
		[CRepr]
		public struct IADsTimestamp : IDispatch
		{
			public const new Guid IID = .(0xb2f5a901, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WholeSeconds(int32* retval) mut
			{
				return VT.get_WholeSeconds(&this, retval);
			}
			public HRESULT put_WholeSeconds(int32 lnWholeSeconds) mut
			{
				return VT.put_WholeSeconds(&this, lnWholeSeconds);
			}
			public HRESULT get_EventID(int32* retval) mut
			{
				return VT.get_EventID(&this, retval);
			}
			public HRESULT put_EventID(int32 lnEventID) mut
			{
				return VT.put_EventID(&this, lnEventID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsTimestamp *self, int32* retval) get_WholeSeconds;
				public new function HRESULT(IADsTimestamp *self, int32 lnWholeSeconds) put_WholeSeconds;
				public new function HRESULT(IADsTimestamp *self, int32* retval) get_EventID;
				public new function HRESULT(IADsTimestamp *self, int32 lnEventID) put_EventID;
			}
		}
		[CRepr]
		public struct IADsPostalAddress : IDispatch
		{
			public const new Guid IID = .(0x7adecf29, 0x4680, 0x11d1, 0xa3, 0xb4, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PostalAddress(VARIANT* retval) mut
			{
				return VT.get_PostalAddress(&this, retval);
			}
			public HRESULT put_PostalAddress(VARIANT vPostalAddress) mut
			{
				return VT.put_PostalAddress(&this, vPostalAddress);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPostalAddress *self, VARIANT* retval) get_PostalAddress;
				public new function HRESULT(IADsPostalAddress *self, VARIANT vPostalAddress) put_PostalAddress;
			}
		}
		[CRepr]
		public struct IADsBackLink : IDispatch
		{
			public const new Guid IID = .(0xfd1302bd, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RemoteID(int32* retval) mut
			{
				return VT.get_RemoteID(&this, retval);
			}
			public HRESULT put_RemoteID(int32 lnRemoteID) mut
			{
				return VT.put_RemoteID(&this, lnRemoteID);
			}
			public HRESULT get_ObjectName(BSTR* retval) mut
			{
				return VT.get_ObjectName(&this, retval);
			}
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut
			{
				return VT.put_ObjectName(&this, bstrObjectName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsBackLink *self, int32* retval) get_RemoteID;
				public new function HRESULT(IADsBackLink *self, int32 lnRemoteID) put_RemoteID;
				public new function HRESULT(IADsBackLink *self, BSTR* retval) get_ObjectName;
				public new function HRESULT(IADsBackLink *self, BSTR bstrObjectName) put_ObjectName;
			}
		}
		[CRepr]
		public struct IADsTypedName : IDispatch
		{
			public const new Guid IID = .(0xb371a349, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectName(BSTR* retval) mut
			{
				return VT.get_ObjectName(&this, retval);
			}
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut
			{
				return VT.put_ObjectName(&this, bstrObjectName);
			}
			public HRESULT get_Level(int32* retval) mut
			{
				return VT.get_Level(&this, retval);
			}
			public HRESULT put_Level(int32 lnLevel) mut
			{
				return VT.put_Level(&this, lnLevel);
			}
			public HRESULT get_Interval(int32* retval) mut
			{
				return VT.get_Interval(&this, retval);
			}
			public HRESULT put_Interval(int32 lnInterval) mut
			{
				return VT.put_Interval(&this, lnInterval);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsTypedName *self, BSTR* retval) get_ObjectName;
				public new function HRESULT(IADsTypedName *self, BSTR bstrObjectName) put_ObjectName;
				public new function HRESULT(IADsTypedName *self, int32* retval) get_Level;
				public new function HRESULT(IADsTypedName *self, int32 lnLevel) put_Level;
				public new function HRESULT(IADsTypedName *self, int32* retval) get_Interval;
				public new function HRESULT(IADsTypedName *self, int32 lnInterval) put_Interval;
			}
		}
		[CRepr]
		public struct IADsHold : IDispatch
		{
			public const new Guid IID = .(0xb3eb3b37, 0x4080, 0x11d1, 0xa3, 0xac, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ObjectName(BSTR* retval) mut
			{
				return VT.get_ObjectName(&this, retval);
			}
			public HRESULT put_ObjectName(BSTR bstrObjectName) mut
			{
				return VT.put_ObjectName(&this, bstrObjectName);
			}
			public HRESULT get_Amount(int32* retval) mut
			{
				return VT.get_Amount(&this, retval);
			}
			public HRESULT put_Amount(int32 lnAmount) mut
			{
				return VT.put_Amount(&this, lnAmount);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsHold *self, BSTR* retval) get_ObjectName;
				public new function HRESULT(IADsHold *self, BSTR bstrObjectName) put_ObjectName;
				public new function HRESULT(IADsHold *self, int32* retval) get_Amount;
				public new function HRESULT(IADsHold *self, int32 lnAmount) put_Amount;
			}
		}
		[CRepr]
		public struct IADsObjectOptions : IDispatch
		{
			public const new Guid IID = .(0x46f14fda, 0x232b, 0x11d1, 0xa8, 0x08, 0x00, 0xc0, 0x4f, 0xd8, 0xd5, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOption(int32 lnOption, VARIANT* pvValue) mut
			{
				return VT.GetOption(&this, lnOption, pvValue);
			}
			public HRESULT SetOption(int32 lnOption, VARIANT vValue) mut
			{
				return VT.SetOption(&this, lnOption, vValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsObjectOptions *self, int32 lnOption, VARIANT* pvValue) GetOption;
				public new function HRESULT(IADsObjectOptions *self, int32 lnOption, VARIANT vValue) SetOption;
			}
		}
		[CRepr]
		public struct IADsPathname : IDispatch
		{
			public const new Guid IID = .(0xd592aed4, 0xf420, 0x11d0, 0xa3, 0x6e, 0x00, 0xc0, 0x4f, 0xb9, 0x50, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(BSTR bstrADsPath, int32 lnSetType) mut
			{
				return VT.Set(&this, bstrADsPath, lnSetType);
			}
			public HRESULT SetDisplayType(int32 lnDisplayType) mut
			{
				return VT.SetDisplayType(&this, lnDisplayType);
			}
			public HRESULT Retrieve(int32 lnFormatType, BSTR* pbstrADsPath) mut
			{
				return VT.Retrieve(&this, lnFormatType, pbstrADsPath);
			}
			public HRESULT GetNumElements(int32* plnNumPathElements) mut
			{
				return VT.GetNumElements(&this, plnNumPathElements);
			}
			public HRESULT GetElement(int32 lnElementIndex, BSTR* pbstrElement) mut
			{
				return VT.GetElement(&this, lnElementIndex, pbstrElement);
			}
			public HRESULT AddLeafElement(BSTR bstrLeafElement) mut
			{
				return VT.AddLeafElement(&this, bstrLeafElement);
			}
			public HRESULT RemoveLeafElement() mut
			{
				return VT.RemoveLeafElement(&this);
			}
			public HRESULT CopyPath(IDispatch** ppAdsPath) mut
			{
				return VT.CopyPath(&this, ppAdsPath);
			}
			public HRESULT GetEscapedElement(int32 lnReserved, BSTR bstrInStr, BSTR* pbstrOutStr) mut
			{
				return VT.GetEscapedElement(&this, lnReserved, bstrInStr, pbstrOutStr);
			}
			public HRESULT get_EscapedMode(int32* retval) mut
			{
				return VT.get_EscapedMode(&this, retval);
			}
			public HRESULT put_EscapedMode(int32 lnEscapedMode) mut
			{
				return VT.put_EscapedMode(&this, lnEscapedMode);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsPathname *self, BSTR bstrADsPath, int32 lnSetType) Set;
				public new function HRESULT(IADsPathname *self, int32 lnDisplayType) SetDisplayType;
				public new function HRESULT(IADsPathname *self, int32 lnFormatType, BSTR* pbstrADsPath) Retrieve;
				public new function HRESULT(IADsPathname *self, int32* plnNumPathElements) GetNumElements;
				public new function HRESULT(IADsPathname *self, int32 lnElementIndex, BSTR* pbstrElement) GetElement;
				public new function HRESULT(IADsPathname *self, BSTR bstrLeafElement) AddLeafElement;
				public new function HRESULT(IADsPathname *self) RemoveLeafElement;
				public new function HRESULT(IADsPathname *self, IDispatch** ppAdsPath) CopyPath;
				public new function HRESULT(IADsPathname *self, int32 lnReserved, BSTR bstrInStr, BSTR* pbstrOutStr) GetEscapedElement;
				public new function HRESULT(IADsPathname *self, int32* retval) get_EscapedMode;
				public new function HRESULT(IADsPathname *self, int32 lnEscapedMode) put_EscapedMode;
			}
		}
		[CRepr]
		public struct IADsADSystemInfo : IDispatch
		{
			public const new Guid IID = .(0x5bb11929, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(BSTR* retval) mut
			{
				return VT.get_UserName(&this, retval);
			}
			public HRESULT get_ComputerName(BSTR* retval) mut
			{
				return VT.get_ComputerName(&this, retval);
			}
			public HRESULT get_SiteName(BSTR* retval) mut
			{
				return VT.get_SiteName(&this, retval);
			}
			public HRESULT get_DomainShortName(BSTR* retval) mut
			{
				return VT.get_DomainShortName(&this, retval);
			}
			public HRESULT get_DomainDNSName(BSTR* retval) mut
			{
				return VT.get_DomainDNSName(&this, retval);
			}
			public HRESULT get_ForestDNSName(BSTR* retval) mut
			{
				return VT.get_ForestDNSName(&this, retval);
			}
			public HRESULT get_PDCRoleOwner(BSTR* retval) mut
			{
				return VT.get_PDCRoleOwner(&this, retval);
			}
			public HRESULT get_SchemaRoleOwner(BSTR* retval) mut
			{
				return VT.get_SchemaRoleOwner(&this, retval);
			}
			public HRESULT get_IsNativeMode(int16* retval) mut
			{
				return VT.get_IsNativeMode(&this, retval);
			}
			public HRESULT GetAnyDCName(BSTR* pszDCName) mut
			{
				return VT.GetAnyDCName(&this, pszDCName);
			}
			public HRESULT GetDCSiteName(BSTR szServer, BSTR* pszSiteName) mut
			{
				return VT.GetDCSiteName(&this, szServer, pszSiteName);
			}
			public HRESULT RefreshSchemaCache() mut
			{
				return VT.RefreshSchemaCache(&this);
			}
			public HRESULT GetTrees(VARIANT* pvTrees) mut
			{
				return VT.GetTrees(&this, pvTrees);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_UserName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_ComputerName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_SiteName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_DomainShortName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_DomainDNSName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_ForestDNSName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_PDCRoleOwner;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* retval) get_SchemaRoleOwner;
				public new function HRESULT(IADsADSystemInfo *self, int16* retval) get_IsNativeMode;
				public new function HRESULT(IADsADSystemInfo *self, BSTR* pszDCName) GetAnyDCName;
				public new function HRESULT(IADsADSystemInfo *self, BSTR szServer, BSTR* pszSiteName) GetDCSiteName;
				public new function HRESULT(IADsADSystemInfo *self) RefreshSchemaCache;
				public new function HRESULT(IADsADSystemInfo *self, VARIANT* pvTrees) GetTrees;
			}
		}
		[CRepr]
		public struct IADsWinNTSystemInfo : IDispatch
		{
			public const new Guid IID = .(0x6c6d65dc, 0xafd1, 0x11d2, 0x9c, 0xb9, 0x00, 0x00, 0xf8, 0x7a, 0x36, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserName(BSTR* retval) mut
			{
				return VT.get_UserName(&this, retval);
			}
			public HRESULT get_ComputerName(BSTR* retval) mut
			{
				return VT.get_ComputerName(&this, retval);
			}
			public HRESULT get_DomainName(BSTR* retval) mut
			{
				return VT.get_DomainName(&this, retval);
			}
			public HRESULT get_PDC(BSTR* retval) mut
			{
				return VT.get_PDC(&this, retval);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsWinNTSystemInfo *self, BSTR* retval) get_UserName;
				public new function HRESULT(IADsWinNTSystemInfo *self, BSTR* retval) get_ComputerName;
				public new function HRESULT(IADsWinNTSystemInfo *self, BSTR* retval) get_DomainName;
				public new function HRESULT(IADsWinNTSystemInfo *self, BSTR* retval) get_PDC;
			}
		}
		[CRepr]
		public struct IADsDNWithBinary : IDispatch
		{
			public const new Guid IID = .(0x7e99c0a2, 0xf935, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BinaryValue(VARIANT* retval) mut
			{
				return VT.get_BinaryValue(&this, retval);
			}
			public HRESULT put_BinaryValue(VARIANT vBinaryValue) mut
			{
				return VT.put_BinaryValue(&this, vBinaryValue);
			}
			public HRESULT get_DNString(BSTR* retval) mut
			{
				return VT.get_DNString(&this, retval);
			}
			public HRESULT put_DNString(BSTR bstrDNString) mut
			{
				return VT.put_DNString(&this, bstrDNString);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsDNWithBinary *self, VARIANT* retval) get_BinaryValue;
				public new function HRESULT(IADsDNWithBinary *self, VARIANT vBinaryValue) put_BinaryValue;
				public new function HRESULT(IADsDNWithBinary *self, BSTR* retval) get_DNString;
				public new function HRESULT(IADsDNWithBinary *self, BSTR bstrDNString) put_DNString;
			}
		}
		[CRepr]
		public struct IADsDNWithString : IDispatch
		{
			public const new Guid IID = .(0x370df02e, 0xf934, 0x11d2, 0xba, 0x96, 0x00, 0xc0, 0x4f, 0xb6, 0xd0, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StringValue(BSTR* retval) mut
			{
				return VT.get_StringValue(&this, retval);
			}
			public HRESULT put_StringValue(BSTR bstrStringValue) mut
			{
				return VT.put_StringValue(&this, bstrStringValue);
			}
			public HRESULT get_DNString(BSTR* retval) mut
			{
				return VT.get_DNString(&this, retval);
			}
			public HRESULT put_DNString(BSTR bstrDNString) mut
			{
				return VT.put_DNString(&this, bstrDNString);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsDNWithString *self, BSTR* retval) get_StringValue;
				public new function HRESULT(IADsDNWithString *self, BSTR bstrStringValue) put_StringValue;
				public new function HRESULT(IADsDNWithString *self, BSTR* retval) get_DNString;
				public new function HRESULT(IADsDNWithString *self, BSTR bstrDNString) put_DNString;
			}
		}
		[CRepr]
		public struct IADsSecurityUtility : IDispatch
		{
			public const new Guid IID = .(0xa63251b2, 0x5f21, 0x474b, 0xab, 0x52, 0x4a, 0x8e, 0xfa, 0xd1, 0x08, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecurityDescriptor(VARIANT varPath, int32 lPathFormat, int32 lFormat, VARIANT* pVariant) mut
			{
				return VT.GetSecurityDescriptor(&this, varPath, lPathFormat, lFormat, pVariant);
			}
			public HRESULT SetSecurityDescriptor(VARIANT varPath, int32 lPathFormat, VARIANT varData, int32 lDataFormat) mut
			{
				return VT.SetSecurityDescriptor(&this, varPath, lPathFormat, varData, lDataFormat);
			}
			public HRESULT ConvertSecurityDescriptor(VARIANT varSD, int32 lDataFormat, int32 lOutFormat, VARIANT* pResult) mut
			{
				return VT.ConvertSecurityDescriptor(&this, varSD, lDataFormat, lOutFormat, pResult);
			}
			public HRESULT get_SecurityMask(int32* retval) mut
			{
				return VT.get_SecurityMask(&this, retval);
			}
			public HRESULT put_SecurityMask(int32 lnSecurityMask) mut
			{
				return VT.put_SecurityMask(&this, lnSecurityMask);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IADsSecurityUtility *self, VARIANT varPath, int32 lPathFormat, int32 lFormat, VARIANT* pVariant) GetSecurityDescriptor;
				public new function HRESULT(IADsSecurityUtility *self, VARIANT varPath, int32 lPathFormat, VARIANT varData, int32 lDataFormat) SetSecurityDescriptor;
				public new function HRESULT(IADsSecurityUtility *self, VARIANT varSD, int32 lDataFormat, int32 lOutFormat, VARIANT* pResult) ConvertSecurityDescriptor;
				public new function HRESULT(IADsSecurityUtility *self, int32* retval) get_SecurityMask;
				public new function HRESULT(IADsSecurityUtility *self, int32 lnSecurityMask) put_SecurityMask;
			}
		}
		[CRepr]
		public struct IDsBrowseDomainTree : IUnknown
		{
			public const new Guid IID = .(0x7cabcf1e, 0x78f5, 0x11d2, 0x96, 0x0c, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BrowseTo(HWND hwndParent, PWSTR* ppszTargetPath, uint32 dwFlags) mut
			{
				return VT.BrowseTo(&this, hwndParent, ppszTargetPath, dwFlags);
			}
			public HRESULT GetDomains(DOMAIN_TREE** ppDomainTree, uint32 dwFlags) mut
			{
				return VT.GetDomains(&this, ppDomainTree, dwFlags);
			}
			public HRESULT FreeDomains(DOMAIN_TREE** ppDomainTree) mut
			{
				return VT.FreeDomains(&this, ppDomainTree);
			}
			public HRESULT FlushCachedDomains() mut
			{
				return VT.FlushCachedDomains(&this);
			}
			public HRESULT SetComputer(PWSTR pszComputerName, PWSTR pszUserName, PWSTR pszPassword) mut
			{
				return VT.SetComputer(&this, pszComputerName, pszUserName, pszPassword);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsBrowseDomainTree *self, HWND hwndParent, PWSTR* ppszTargetPath, uint32 dwFlags) BrowseTo;
				public new function HRESULT(IDsBrowseDomainTree *self, DOMAIN_TREE** ppDomainTree, uint32 dwFlags) GetDomains;
				public new function HRESULT(IDsBrowseDomainTree *self, DOMAIN_TREE** ppDomainTree) FreeDomains;
				public new function HRESULT(IDsBrowseDomainTree *self) FlushCachedDomains;
				public new function HRESULT(IDsBrowseDomainTree *self, PWSTR pszComputerName, PWSTR pszUserName, PWSTR pszPassword) SetComputer;
			}
		}
		[CRepr]
		public struct IDsDisplaySpecifier : IUnknown
		{
			public const new Guid IID = .(0x1ab4a8c0, 0x6a0b, 0x11d2, 0xad, 0x49, 0x00, 0xc0, 0x4f, 0xa3, 0x1a, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetServer(PWSTR pszServer, PWSTR pszUserName, PWSTR pszPassword, uint32 dwFlags) mut
			{
				return VT.SetServer(&this, pszServer, pszUserName, pszPassword, dwFlags);
			}
			public HRESULT SetLanguageID(uint16 langid) mut
			{
				return VT.SetLanguageID(&this, langid);
			}
			public HRESULT GetDisplaySpecifier(PWSTR pszObjectClass, Guid* riid, void** ppv) mut
			{
				return VT.GetDisplaySpecifier(&this, pszObjectClass, riid, ppv);
			}
			public HRESULT GetIconLocation(PWSTR pszObjectClass, uint32 dwFlags, char16* pszBuffer, int32 cchBuffer, int32* presid) mut
			{
				return VT.GetIconLocation(&this, pszObjectClass, dwFlags, pszBuffer, cchBuffer, presid);
			}
			public HICON GetIcon(PWSTR pszObjectClass, uint32 dwFlags, int32 cxIcon, int32 cyIcon) mut
			{
				return VT.GetIcon(&this, pszObjectClass, dwFlags, cxIcon, cyIcon);
			}
			public HRESULT GetFriendlyClassName(PWSTR pszObjectClass, char16* pszBuffer, int32 cchBuffer) mut
			{
				return VT.GetFriendlyClassName(&this, pszObjectClass, pszBuffer, cchBuffer);
			}
			public HRESULT GetFriendlyAttributeName(PWSTR pszObjectClass, PWSTR pszAttributeName, char16* pszBuffer, uint32 cchBuffer) mut
			{
				return VT.GetFriendlyAttributeName(&this, pszObjectClass, pszAttributeName, pszBuffer, cchBuffer);
			}
			public BOOL IsClassContainer(PWSTR pszObjectClass, PWSTR pszADsPath, uint32 dwFlags) mut
			{
				return VT.IsClassContainer(&this, pszObjectClass, pszADsPath, dwFlags);
			}
			public HRESULT GetClassCreationInfo(PWSTR pszObjectClass, DSCLASSCREATIONINFO** ppdscci) mut
			{
				return VT.GetClassCreationInfo(&this, pszObjectClass, ppdscci);
			}
			public HRESULT EnumClassAttributes(PWSTR pszObjectClass, LPDSENUMATTRIBUTES pcbEnum, LPARAM lParam) mut
			{
				return VT.EnumClassAttributes(&this, pszObjectClass, pcbEnum, lParam);
			}
			public ADSTYPEENUM GetAttributeADsType(PWSTR pszAttributeName) mut
			{
				return VT.GetAttributeADsType(&this, pszAttributeName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszServer, PWSTR pszUserName, PWSTR pszPassword, uint32 dwFlags) SetServer;
				public new function HRESULT(IDsDisplaySpecifier *self, uint16 langid) SetLanguageID;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, Guid* riid, void** ppv) GetDisplaySpecifier;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, uint32 dwFlags, char16* pszBuffer, int32 cchBuffer, int32* presid) GetIconLocation;
				public new function HICON(IDsDisplaySpecifier *self, PWSTR pszObjectClass, uint32 dwFlags, int32 cxIcon, int32 cyIcon) GetIcon;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, char16* pszBuffer, int32 cchBuffer) GetFriendlyClassName;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, PWSTR pszAttributeName, char16* pszBuffer, uint32 cchBuffer) GetFriendlyAttributeName;
				public new function BOOL(IDsDisplaySpecifier *self, PWSTR pszObjectClass, PWSTR pszADsPath, uint32 dwFlags) IsClassContainer;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, DSCLASSCREATIONINFO** ppdscci) GetClassCreationInfo;
				public new function HRESULT(IDsDisplaySpecifier *self, PWSTR pszObjectClass, LPDSENUMATTRIBUTES pcbEnum, LPARAM lParam) EnumClassAttributes;
				public new function ADSTYPEENUM(IDsDisplaySpecifier *self, PWSTR pszAttributeName) GetAttributeADsType;
			}
		}
		[CRepr]
		public struct IDsObjectPicker : IUnknown
		{
			public const new Guid IID = .(0x0c87e64e, 0x3b7a, 0x11d2, 0xb9, 0xe0, 0x00, 0xc0, 0x4f, 0xd8, 0xdb, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(DSOP_INIT_INFO* pInitInfo) mut
			{
				return VT.Initialize(&this, pInitInfo);
			}
			public HRESULT InvokeDialog(HWND hwndParent, IDataObject** ppdoSelections) mut
			{
				return VT.InvokeDialog(&this, hwndParent, ppdoSelections);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsObjectPicker *self, DSOP_INIT_INFO* pInitInfo) Initialize;
				public new function HRESULT(IDsObjectPicker *self, HWND hwndParent, IDataObject** ppdoSelections) InvokeDialog;
			}
		}
		[CRepr]
		public struct IDsObjectPickerCredentials : IDsObjectPicker
		{
			public const new Guid IID = .(0xe2d3ec9b, 0xd041, 0x445a, 0x8f, 0x16, 0x47, 0x48, 0xde, 0x8f, 0xb1, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCredentials(PWSTR szUserName, PWSTR szPassword) mut
			{
				return VT.SetCredentials(&this, szUserName, szPassword);
			}
			[CRepr]
			public struct VTable : IDsObjectPicker.VTable
			{
				public new function HRESULT(IDsObjectPickerCredentials *self, PWSTR szUserName, PWSTR szPassword) SetCredentials;
			}
		}
		[CRepr]
		public struct IDsAdminCreateObj : IUnknown
		{
			public const new Guid IID = .(0x53554a38, 0xf902, 0x11d2, 0x82, 0xb9, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IADsContainer* pADsContainerObj, IADs* pADsCopySource, PWSTR lpszClassName) mut
			{
				return VT.Initialize(&this, pADsContainerObj, pADsCopySource, lpszClassName);
			}
			public HRESULT CreateModal(HWND hwndParent, IADs** ppADsObj) mut
			{
				return VT.CreateModal(&this, hwndParent, ppADsObj);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsAdminCreateObj *self, IADsContainer* pADsContainerObj, IADs* pADsCopySource, PWSTR lpszClassName) Initialize;
				public new function HRESULT(IDsAdminCreateObj *self, HWND hwndParent, IADs** ppADsObj) CreateModal;
			}
		}
		[CRepr]
		public struct IDsAdminNewObj : IUnknown
		{
			public const new Guid IID = .(0xf2573587, 0xe6fc, 0x11d2, 0x82, 0xaf, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetButtons(uint32 nCurrIndex, BOOL bValid) mut
			{
				return VT.SetButtons(&this, nCurrIndex, bValid);
			}
			public HRESULT GetPageCounts(int32* pnTotal, int32* pnStartIndex) mut
			{
				return VT.GetPageCounts(&this, pnTotal, pnStartIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsAdminNewObj *self, uint32 nCurrIndex, BOOL bValid) SetButtons;
				public new function HRESULT(IDsAdminNewObj *self, int32* pnTotal, int32* pnStartIndex) GetPageCounts;
			}
		}
		[CRepr]
		public struct IDsAdminNewObjPrimarySite : IUnknown
		{
			public const new Guid IID = .(0xbe2b487e, 0xf904, 0x11d2, 0x82, 0xb9, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateNew(PWSTR pszName) mut
			{
				return VT.CreateNew(&this, pszName);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsAdminNewObjPrimarySite *self, PWSTR pszName) CreateNew;
				public new function HRESULT(IDsAdminNewObjPrimarySite *self) Commit;
			}
		}
		[CRepr]
		public struct IDsAdminNewObjExt : IUnknown
		{
			public const new Guid IID = .(0x6088eae2, 0xe7bf, 0x11d2, 0x82, 0xaf, 0x00, 0xc0, 0x4f, 0x68, 0x92, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IADsContainer* pADsContainerObj, IADs* pADsCopySource, PWSTR lpszClassName, IDsAdminNewObj* pDsAdminNewObj, DSA_NEWOBJ_DISPINFO* pDispInfo) mut
			{
				return VT.Initialize(&this, pADsContainerObj, pADsCopySource, lpszClassName, pDsAdminNewObj, pDispInfo);
			}
			public HRESULT AddPages(LPFNSVADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam) mut
			{
				return VT.AddPages(&this, lpfnAddPage, lParam);
			}
			public HRESULT SetObject(IADs* pADsObj) mut
			{
				return VT.SetObject(&this, pADsObj);
			}
			public HRESULT WriteData(HWND hWnd, uint32 uContext) mut
			{
				return VT.WriteData(&this, hWnd, uContext);
			}
			public HRESULT OnError(HWND hWnd, HRESULT hr, uint32 uContext) mut
			{
				return VT.OnError(&this, hWnd, hr, uContext);
			}
			public HRESULT GetSummaryInfo(BSTR* pBstrText) mut
			{
				return VT.GetSummaryInfo(&this, pBstrText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsAdminNewObjExt *self, IADsContainer* pADsContainerObj, IADs* pADsCopySource, PWSTR lpszClassName, IDsAdminNewObj* pDsAdminNewObj, DSA_NEWOBJ_DISPINFO* pDispInfo) Initialize;
				public new function HRESULT(IDsAdminNewObjExt *self, LPFNSVADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam) AddPages;
				public new function HRESULT(IDsAdminNewObjExt *self, IADs* pADsObj) SetObject;
				public new function HRESULT(IDsAdminNewObjExt *self, HWND hWnd, uint32 uContext) WriteData;
				public new function HRESULT(IDsAdminNewObjExt *self, HWND hWnd, HRESULT hr, uint32 uContext) OnError;
				public new function HRESULT(IDsAdminNewObjExt *self, BSTR* pBstrText) GetSummaryInfo;
			}
		}
		[CRepr]
		public struct IDsAdminNotifyHandler : IUnknown
		{
			public const new Guid IID = .(0xe4a2b8b3, 0x5a18, 0x11d2, 0x97, 0xc1, 0x00, 0xa0, 0xc9, 0xa0, 0x6d, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IDataObject* pExtraInfo, uint32* puEventFlags) mut
			{
				return VT.Initialize(&this, pExtraInfo, puEventFlags);
			}
			public HRESULT Begin(uint32 uEvent, IDataObject* pArg1, IDataObject* pArg2, uint32* puFlags, BSTR* pBstr) mut
			{
				return VT.Begin(&this, uEvent, pArg1, pArg2, puFlags, pBstr);
			}
			public HRESULT Notify(uint32 nItem, uint32 uFlags) mut
			{
				return VT.Notify(&this, nItem, uFlags);
			}
			public HRESULT End() mut
			{
				return VT.End(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDsAdminNotifyHandler *self, IDataObject* pExtraInfo, uint32* puEventFlags) Initialize;
				public new function HRESULT(IDsAdminNotifyHandler *self, uint32 uEvent, IDataObject* pArg1, IDataObject* pArg2, uint32* puFlags, BSTR* pBstr) Begin;
				public new function HRESULT(IDsAdminNotifyHandler *self, uint32 nItem, uint32 uFlags) Notify;
				public new function HRESULT(IDsAdminNotifyHandler *self) End;
			}
		}
		
		// --- Functions ---
		
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsGetObject(PWSTR lpszPathName, Guid* riid, void** ppObject);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildEnumerator(IADsContainer* pADsContainer, IEnumVARIANT** ppEnumVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsFreeEnumerator(IEnumVARIANT* pEnumVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsEnumerateNext(IEnumVARIANT* pEnumVariant, uint32 cElements, VARIANT* pvar, uint32* pcElementsFetched);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildVarArrayStr(PWSTR* lppPathNames, uint32 dwPathNames, VARIANT* pVar);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsBuildVarArrayInt(uint32* lpdwObjectTypes, uint32 dwObjectTypes, VARIANT* pVar);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsOpenObject(PWSTR lpszPathName, PWSTR lpszUserName, PWSTR lpszPassword, ADS_AUTHENTICATION_ENUM dwReserved, Guid* riid, void** ppObject);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsGetLastError(uint32* lpError, char16* lpErrorBuf, uint32 dwErrorBufLen, char16* lpNameBuf, uint32 dwNameBufLen);
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
		public static extern BOOL ReallocADsStr(PWSTR* ppStr, PWSTR pStr);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsEncodeBinaryData(uint8* pbSrcData, uint32 dwSrcLen, PWSTR* ppszDestData);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsDecodeBinaryData(PWSTR szSrcData, uint8** ppbDestData, uint32* pdwDestLen);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToAdsType(VARIANT* pVariant, uint32 dwNumVariant, ADSVALUE** ppAdsValues, uint32* pdwNumValues);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AdsTypeToPropVariant(ADSVALUE* pAdsValues, uint32 dwNumValues, VARIANT* pVariant);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void AdsFreeAdsValues(ADSVALUE* pAdsValues, uint32 dwNumValues);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BinarySDToSecurityDescriptor(SECURITY_DESCRIPTOR* pSecurityDescriptor, VARIANT* pVarsec, PWSTR pszServerName, PWSTR userName, PWSTR passWord, uint32 dwFlags);
		[Import("activeds.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SecurityDescriptorToBinarySD(VARIANT vVarSecDes, SECURITY_DESCRIPTOR** ppSecurityDescriptor, uint32* pdwSDLength, PWSTR pszServerName, PWSTR userName, PWSTR passWord, uint32 dwFlags);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DsBrowseForContainerW(DSBROWSEINFOW* pInfo);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DsBrowseForContainerA(DSBROWSEINFOA* pInfo);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON DsGetIcon(uint32 dwFlags, PWSTR pszObjectClass, int32 cxImage, int32 cyImage);
		[Import("dsuiext.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DsGetFriendlyClassName(PWSTR pszObjectClass, char16* pszBuffer, uint32 cchBuffer);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ADsPropCreateNotifyObj(IDataObject* pAppThdDataObj, PWSTR pwzADsObjName, HWND* phNotifyObj);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropGetInitInfo(HWND hNotifyObj, ADSPROPINITPARAMS* pInitParams);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSetHwndWithTitle(HWND hNotifyObj, HWND hPage, int8* ptzTitle);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSetHwnd(HWND hNotifyObj, HWND hPage);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropCheckIfWritable(PWSTR pwzAttr, ADS_ATTR_INFO* pWritableAttrs);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropSendErrorMessage(HWND hNotifyObj, ADSPROPERROR* pError);
		[Import("dsprop.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ADsPropShowErrorDialog(HWND hNotifyObj, HWND hPage);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakeSpnW(PWSTR ServiceClass, PWSTR ServiceName, PWSTR InstanceName, uint16 InstancePort, PWSTR Referrer, uint32* pcSpnLength, char16* pszSpn);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakeSpnA(PSTR ServiceClass, PSTR ServiceName, PSTR InstanceName, uint16 InstancePort, PSTR Referrer, uint32* pcSpnLength, uint8* pszSpn);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpnA(PSTR pszSpn, uint32* pcServiceClass, uint8* ServiceClass, uint32* pcServiceName, uint8* ServiceName, uint32* pcInstanceName, uint8* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpnW(PWSTR pszSpn, uint32* pcServiceClass, char16* ServiceClass, uint32* pcServiceName, char16* ServiceName, uint32* pcInstanceName, char16* InstanceName, uint16* pInstancePort);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuoteRdnValueW(uint32 cUnquotedRdnValueLength, char16* psUnquotedRdnValue, uint32* pcQuotedRdnValueLength, char16* psQuotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuoteRdnValueA(uint32 cUnquotedRdnValueLength, uint8* psUnquotedRdnValue, uint32* pcQuotedRdnValueLength, uint8* psQuotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnquoteRdnValueW(uint32 cQuotedRdnValueLength, char16* psQuotedRdnValue, uint32* pcUnquotedRdnValueLength, char16* psUnquotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnquoteRdnValueA(uint32 cQuotedRdnValueLength, uint8* psQuotedRdnValue, uint32* pcUnquotedRdnValueLength, uint8* psUnquotedRdnValue);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetRdnW(PWSTR* ppDN, uint32* pcDN, PWSTR* ppKey, uint32* pcKey, PWSTR* ppVal, uint32* pcVal);
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
		public static extern uint32 DsCrackSpn3W(PWSTR pszSpn, uint32 cSpn, uint32* pcHostName, char16* HostName, uint32* pcInstanceName, char16* InstanceName, uint16* pPortNumber, uint32* pcDomainName, char16* DomainName, uint32* pcRealmName, char16* RealmName);
		[Import("dsparse.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackSpn4W(PWSTR pszSpn, uint32 cSpn, uint32* pcHostName, char16* HostName, uint32* pcInstanceName, char16* InstanceName, uint32* pcPortName, char16* PortName, uint32* pcDomainName, char16* DomainName, uint32* pcRealmName, char16* RealmName);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindW(PWSTR DomainControllerName, PWSTR DnsDomainName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindA(PSTR DomainControllerName, PSTR DnsDomainName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithCredW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithCredA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnExW(PWSTR DomainControllerName, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, uint32 BindFlags, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindWithSpnExA(PSTR DomainControllerName, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, uint32 BindFlags, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindByInstanceW(PWSTR ServerName, PWSTR Annotation, Guid* InstanceGuid, PWSTR DnsDomainName, void* AuthIdentity, PWSTR ServicePrincipalName, uint32 BindFlags, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindByInstanceA(PSTR ServerName, PSTR Annotation, Guid* InstanceGuid, PSTR DnsDomainName, void* AuthIdentity, PSTR ServicePrincipalName, uint32 BindFlags, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindToISTGW(PWSTR SiteName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindToISTGA(PSTR SiteName, HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsBindingSetTimeout(HANDLE hDS, uint32 cTimeoutSecs);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnBindW(HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsUnBindA(HANDLE* phDS);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakePasswordCredentialsW(PWSTR User, PWSTR Domain, PWSTR Password, void** pAuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMakePasswordCredentialsA(PSTR User, PSTR Domain, PSTR Password, void** pAuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreePasswordCredentials(void* AuthIdentity);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackNamesW(HANDLE hDS, DS_NAME_FLAGS flags, DS_NAME_FORMAT formatOffered, DS_NAME_FORMAT formatDesired, uint32 cNames, PWSTR* rpNames, DS_NAME_RESULTW** ppResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsCrackNamesA(HANDLE hDS, DS_NAME_FLAGS flags, DS_NAME_FORMAT formatOffered, DS_NAME_FORMAT formatDesired, uint32 cNames, PSTR* rpNames, DS_NAME_RESULTA** ppResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeNameResultW(DS_NAME_RESULTW* pResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeNameResultA(DS_NAME_RESULTA* pResult);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSpnA(DS_SPN_NAME_TYPE ServiceType, PSTR ServiceClass, PSTR ServiceName, uint16 InstancePort, uint16 cInstanceNames, PSTR* pInstanceNames, uint16* pInstancePorts, uint32* pcSpn, PSTR** prpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSpnW(DS_SPN_NAME_TYPE ServiceType, PWSTR ServiceClass, PWSTR ServiceName, uint16 InstancePort, uint16 cInstanceNames, PWSTR* pInstanceNames, uint16* pInstancePorts, uint32* pcSpn, PWSTR** prpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSpnArrayA(uint32 cSpn, PSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSpnArrayW(uint32 cSpn, PWSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsWriteAccountSpnA(HANDLE hDS, DS_SPN_WRITE_OP Operation, PSTR pszAccount, uint32 cSpn, PSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsWriteAccountSpnW(HANDLE hDS, DS_SPN_WRITE_OP Operation, PWSTR pszAccount, uint32 cSpn, PWSTR* rpszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsClientMakeSpnForTargetServerW(PWSTR ServiceClass, PWSTR ServiceName, uint32* pcSpnLength, char16* pszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsClientMakeSpnForTargetServerA(PSTR ServiceClass, PSTR ServiceName, uint32* pcSpnLength, uint8* pszSpn);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsServerRegisterSpnA(DS_SPN_WRITE_OP Operation, PSTR ServiceClass, PSTR UserObjectDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsServerRegisterSpnW(DS_SPN_WRITE_OP Operation, PWSTR ServiceClass, PWSTR UserObjectDN);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncA(HANDLE hDS, PSTR NameContext, Guid* pUuidDsaSrc, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaSyncW(HANDLE hDS, PWSTR NameContext, Guid* pUuidDsaSrc, uint32 Options);
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
		public static extern uint32 DsReplicaUpdateRefsA(HANDLE hDS, PSTR NameContext, PSTR DsaDest, Guid* pUuidDsaDest, uint32 Options);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaUpdateRefsW(HANDLE hDS, PWSTR NameContext, PWSTR DsaDest, Guid* pUuidDsaDest, uint32 Options);
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
		public static extern uint32 DsListSitesA(HANDLE hDs, DS_NAME_RESULTA** ppSites);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListSitesW(HANDLE hDs, DS_NAME_RESULTW** ppSites);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersInSiteA(HANDLE hDs, PSTR site, DS_NAME_RESULTA** ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersInSiteW(HANDLE hDs, PWSTR site, DS_NAME_RESULTW** ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListDomainsInSiteA(HANDLE hDs, PSTR site, DS_NAME_RESULTA** ppDomains);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListDomainsInSiteW(HANDLE hDs, PWSTR site, DS_NAME_RESULTW** ppDomains);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersForDomainInSiteA(HANDLE hDs, PSTR domain, PSTR site, DS_NAME_RESULTA** ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListServersForDomainInSiteW(HANDLE hDs, PWSTR domain, PWSTR site, DS_NAME_RESULTW** ppServers);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListInfoForServerA(HANDLE hDs, PSTR server, DS_NAME_RESULTA** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListInfoForServerW(HANDLE hDs, PWSTR server, DS_NAME_RESULTW** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListRolesA(HANDLE hDs, DS_NAME_RESULTA** ppRoles);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsListRolesW(HANDLE hDs, DS_NAME_RESULTW** ppRoles);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuerySitesByCostW(HANDLE hDS, PWSTR pwszFromSite, PWSTR* rgwszToSites, uint32 cToSites, uint32 dwFlags, DS_SITE_COST_INFO** prgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsQuerySitesByCostA(HANDLE hDS, PSTR pszFromSite, PSTR* rgszToSites, uint32 cToSites, uint32 dwFlags, DS_SITE_COST_INFO** prgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsQuerySitesFree(DS_SITE_COST_INFO* rgSiteInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMapSchemaGuidsA(HANDLE hDs, uint32 cGuids, Guid* rGuids, DS_SCHEMA_GUID_MAPA** ppGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSchemaGuidMapA(DS_SCHEMA_GUID_MAPA* pGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMapSchemaGuidsW(HANDLE hDs, uint32 cGuids, Guid* rGuids, DS_SCHEMA_GUID_MAPW** ppGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeSchemaGuidMapW(DS_SCHEMA_GUID_MAPW* pGuidMap);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDomainControllerInfoA(HANDLE hDs, PSTR DomainName, uint32 InfoLevel, uint32* pcOut, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDomainControllerInfoW(HANDLE hDs, PWSTR DomainName, uint32 InfoLevel, uint32* pcOut, void** ppInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeDomainControllerInfoA(uint32 InfoLevel, uint32 cInfo, void* pInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsFreeDomainControllerInfoW(uint32 InfoLevel, uint32 cInfo, void* pInfo);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaConsistencyCheck(HANDLE hDS, DS_KCC_TASKID TaskID, uint32 dwFlags);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaVerifyObjectsW(HANDLE hDS, PWSTR NameContext, Guid* pUuidDsaSrc, uint32 ulOptions);
		[Import("ntdsapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsReplicaVerifyObjectsA(HANDLE hDS, PSTR NameContext, Guid* pUuidDsaSrc, uint32 ulOptions);
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
		public static extern uint32 DsRoleGetPrimaryDomainInformation(PWSTR lpServer, DSROLE_PRIMARY_DOMAIN_INFO_LEVEL InfoLevel, uint8** Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsRoleFreeMemory(void* Buffer);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNameA(PSTR ComputerName, PSTR DomainName, Guid* DomainGuid, PSTR SiteName, uint32 Flags, DOMAIN_CONTROLLER_INFOA** DomainControllerInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNameW(PWSTR ComputerName, PWSTR DomainName, Guid* DomainGuid, PWSTR SiteName, uint32 Flags, DOMAIN_CONTROLLER_INFOW** DomainControllerInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSiteNameA(PSTR ComputerName, PSTR* SiteName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetSiteNameW(PWSTR ComputerName, PWSTR* SiteName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsValidateSubnetNameW(PWSTR SubnetName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsValidateSubnetNameA(PSTR SubnetName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesW(PWSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, PWSTR** SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesA(PSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, PSTR** SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesExW(PWSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, PWSTR** SiteNames, PWSTR** SubnetNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsAddressToSiteNamesExA(PSTR ComputerName, uint32 EntryCount, SOCKET_ADDRESS* SocketAddresses, PSTR** SiteNames, PSTR** SubnetNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsEnumerateDomainTrustsW(PWSTR ServerName, uint32 Flags, DS_DOMAIN_TRUSTSW** Domains, uint32* DomainCount);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsEnumerateDomainTrustsA(PSTR ServerName, uint32 Flags, DS_DOMAIN_TRUSTSA** Domains, uint32* DomainCount);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetForestTrustInformationW(PWSTR ServerName, PWSTR TrustedDomainName, uint32 Flags, LSA_FOREST_TRUST_INFORMATION** ForestTrustInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsMergeForestTrustInformationW(PWSTR DomainName, LSA_FOREST_TRUST_INFORMATION* NewForestTrustInfo, LSA_FOREST_TRUST_INFORMATION* OldForestTrustInfo, LSA_FOREST_TRUST_INFORMATION** MergedForestTrustInfo);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcSiteCoverageW(PWSTR ServerName, uint32* EntryCount, PWSTR** SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcSiteCoverageA(PSTR ServerName, uint32* EntryCount, PSTR** SiteNames);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsDeregisterDnsHostRecordsW(PWSTR ServerName, PWSTR DnsDomainName, Guid* DomainGuid, Guid* DsaGuid, PWSTR DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsDeregisterDnsHostRecordsA(PSTR ServerName, PSTR DnsDomainName, Guid* DomainGuid, Guid* DsaGuid, PSTR DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcOpenW(PWSTR DnsName, uint32 OptionFlags, PWSTR SiteName, Guid* DomainGuid, PWSTR DnsForestName, uint32 DcFlags, GetDcContextHandle* RetGetDcContext);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcOpenA(PSTR DnsName, uint32 OptionFlags, PSTR SiteName, Guid* DomainGuid, PSTR DnsForestName, uint32 DcFlags, GetDcContextHandle* RetGetDcContext);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNextW(HANDLE GetDcContextHandle, uint32* SockAddressCount, SOCKET_ADDRESS** SockAddresses, PWSTR* DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DsGetDcNextA(HANDLE GetDcContextHandle, uint32* SockAddressCount, SOCKET_ADDRESS** SockAddresses, PSTR* DnsHostName);
		[Import("netapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DsGetDcCloseW(GetDcContextHandle GetDcContextHandle);
		
	}
}
