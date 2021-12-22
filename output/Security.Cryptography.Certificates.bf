using System;

// namespace Security.Cryptography.Certificates
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CA_DISP_INCOMPLETE = 0;
		public const uint32 CA_DISP_ERROR = 1;
		public const uint32 CA_DISP_REVOKED = 2;
		public const uint32 CA_DISP_VALID = 3;
		public const uint32 CA_DISP_INVALID = 4;
		public const uint32 CA_DISP_UNDER_SUBMISSION = 5;
		public const uint32 KRA_DISP_EXPIRED = 0;
		public const uint32 KRA_DISP_NOTFOUND = 1;
		public const uint32 KRA_DISP_REVOKED = 2;
		public const uint32 KRA_DISP_VALID = 3;
		public const uint32 KRA_DISP_INVALID = 4;
		public const uint32 KRA_DISP_UNTRUSTED = 5;
		public const uint32 KRA_DISP_NOTLOADED = 6;
		public const uint32 CA_ACCESS_MASKROLES = 255;
		public const uint32 CA_CRL_BASE = 1;
		public const uint32 CA_CRL_DELTA = 2;
		public const uint32 CA_CRL_REPUBLISH = 16;
		public const uint32 ICF_ALLOWFOREIGN = 65536;
		public const uint32 ICF_EXISTINGROW = 131072;
		public const uint32 IKF_OVERWRITE = 65536;
		public const uint32 CSBACKUP_TYPE_MASK = 3;
		public const uint32 CSRESTORE_TYPE_FULL = 1;
		public const uint32 CSRESTORE_TYPE_ONLINE = 2;
		public const uint32 CSRESTORE_TYPE_CATCHUP = 4;
		public const uint32 CSRESTORE_TYPE_MASK = 5;
		public const uint32 CSBACKUP_DISABLE_INCREMENTAL = 4294967295;
		public const uint32 CSBFT_DIRECTORY = 128;
		public const uint32 CSBFT_DATABASE_DIRECTORY = 64;
		public const uint32 CSBFT_LOG_DIRECTORY = 32;
		public const uint64 CSCONTROL_SHUTDOWN = 1uL;
		public const uint64 CSCONTROL_SUSPEND = 2uL;
		public const uint64 CSCONTROL_RESTART = 3uL;
		public const uint32 CAIF_DSENTRY = 1;
		public const uint32 CAIF_SHAREDFOLDERENTRY = 2;
		public const uint32 CAIF_REGISTRY = 4;
		public const uint32 CAIF_LOCAL = 8;
		public const uint32 CAIF_REGISTRYPARENT = 16;
		public const uint32 CR_IN_ENCODEANY = 255;
		public const uint32 CR_IN_ENCODEMASK = 255;
		public const uint32 CR_IN_FORMATANY = 0;
		public const uint32 CR_IN_PKCS10 = 256;
		public const uint32 CR_IN_KEYGEN = 512;
		public const uint32 CR_IN_PKCS7 = 768;
		public const uint32 CR_IN_CMC = 1024;
		public const uint32 CR_IN_CHALLENGERESPONSE = 1280;
		public const uint32 CR_IN_SIGNEDCERTIFICATETIMESTAMPLIST = 1536;
		public const uint32 CR_IN_FORMATMASK = 65280;
		public const uint32 CR_IN_SCEP = 65536;
		public const uint32 CR_IN_RPC = 131072;
		public const uint32 CR_IN_HTTP = 196608;
		public const uint32 CR_IN_FULLRESPONSE = 262144;
		public const uint32 CR_IN_CRLS = 524288;
		public const uint32 CR_IN_MACHINE = 1048576;
		public const uint32 CR_IN_ROBO = 2097152;
		public const uint32 CR_IN_CLIENTIDNONE = 4194304;
		public const uint32 CR_IN_CONNECTONLY = 8388608;
		public const uint32 CR_IN_RETURNCHALLENGE = 16777216;
		public const uint32 CR_IN_SCEPPOST = 33554432;
		public const uint32 CR_IN_CERTIFICATETRANSPARENCY = 67108864;
		public const uint32 CC_UIPICKCONFIGSKIPLOCALCA = 5;
		public const uint32 CR_DISP_REVOKED = 6;
		public const uint32 CR_OUT_BASE64REQUESTHEADER = 3;
		public const uint32 CR_OUT_HEX = 4;
		public const uint32 CR_OUT_HEXASCII = 5;
		public const uint32 CR_OUT_BASE64X509CRLHEADER = 9;
		public const uint32 CR_OUT_HEXADDR = 10;
		public const uint32 CR_OUT_HEXASCIIADDR = 11;
		public const uint32 CR_OUT_HEXRAW = 12;
		public const uint32 CR_OUT_ENCODEMASK = 255;
		public const uint32 CR_OUT_CHAIN = 256;
		public const uint32 CR_OUT_CRLS = 512;
		public const uint32 CR_OUT_NOCRLF = 1073741824;
		public const uint32 CR_OUT_NOCR = 2147483648;
		public const uint32 CR_GEMT_DEFAULT = 0;
		public const uint32 CR_GEMT_HRESULT_STRING = 1;
		public const uint32 CR_GEMT_HTTP_ERROR = 2;
		public const uint32 CR_PROP_NONE = 0;
		public const uint32 CR_PROP_FILEVERSION = 1;
		public const uint32 CR_PROP_PRODUCTVERSION = 2;
		public const uint32 CR_PROP_EXITCOUNT = 3;
		public const uint32 CR_PROP_EXITDESCRIPTION = 4;
		public const uint32 CR_PROP_POLICYDESCRIPTION = 5;
		public const uint32 CR_PROP_CANAME = 6;
		public const uint32 CR_PROP_SANITIZEDCANAME = 7;
		public const uint32 CR_PROP_SHAREDFOLDER = 8;
		public const uint32 CR_PROP_PARENTCA = 9;
		public const uint32 CR_PROP_CATYPE = 10;
		public const uint32 CR_PROP_CASIGCERTCOUNT = 11;
		public const uint32 CR_PROP_CASIGCERT = 12;
		public const uint32 CR_PROP_CASIGCERTCHAIN = 13;
		public const uint32 CR_PROP_CAXCHGCERTCOUNT = 14;
		public const uint32 CR_PROP_CAXCHGCERT = 15;
		public const uint32 CR_PROP_CAXCHGCERTCHAIN = 16;
		public const uint32 CR_PROP_BASECRL = 17;
		public const uint32 CR_PROP_DELTACRL = 18;
		public const uint32 CR_PROP_CACERTSTATE = 19;
		public const uint32 CR_PROP_CRLSTATE = 20;
		public const uint32 CR_PROP_CAPROPIDMAX = 21;
		public const uint32 CR_PROP_DNSNAME = 22;
		public const uint32 CR_PROP_ROLESEPARATIONENABLED = 23;
		public const uint32 CR_PROP_KRACERTUSEDCOUNT = 24;
		public const uint32 CR_PROP_KRACERTCOUNT = 25;
		public const uint32 CR_PROP_KRACERT = 26;
		public const uint32 CR_PROP_KRACERTSTATE = 27;
		public const uint32 CR_PROP_ADVANCEDSERVER = 28;
		public const uint32 CR_PROP_TEMPLATES = 29;
		public const uint32 CR_PROP_BASECRLPUBLISHSTATUS = 30;
		public const uint32 CR_PROP_DELTACRLPUBLISHSTATUS = 31;
		public const uint32 CR_PROP_CASIGCERTCRLCHAIN = 32;
		public const uint32 CR_PROP_CAXCHGCERTCRLCHAIN = 33;
		public const uint32 CR_PROP_CACERTSTATUSCODE = 34;
		public const uint32 CR_PROP_CAFORWARDCROSSCERT = 35;
		public const uint32 CR_PROP_CABACKWARDCROSSCERT = 36;
		public const uint32 CR_PROP_CAFORWARDCROSSCERTSTATE = 37;
		public const uint32 CR_PROP_CABACKWARDCROSSCERTSTATE = 38;
		public const uint32 CR_PROP_CACERTVERSION = 39;
		public const uint32 CR_PROP_SANITIZEDCASHORTNAME = 40;
		public const uint32 CR_PROP_CERTCDPURLS = 41;
		public const uint32 CR_PROP_CERTAIAURLS = 42;
		public const uint32 CR_PROP_CERTAIAOCSPURLS = 43;
		public const uint32 CR_PROP_LOCALENAME = 44;
		public const uint32 CR_PROP_SUBJECTTEMPLATE_OIDS = 45;
		public const uint32 CR_PROP_SCEPSERVERCERTS = 1000;
		public const uint32 CR_PROP_SCEPSERVERCAPABILITIES = 1001;
		public const uint32 CR_PROP_SCEPSERVERCERTSCHAIN = 1002;
		public const uint32 CR_PROP_SCEPMIN = 1000;
		public const uint32 CR_PROP_SCEPMAX = 1002;
		public const uint32 FR_PROP_CLAIMCHALLENGE = 22;
		public const uint32 EAN_NAMEOBJECTID = 2147483648;
		public const uint32 EANR_SUPPRESS_IA5CONVERSION = 2147483648;
		public const uint32 CERTENROLL_INDEX_BASE = 0;
		public const uint32 EXITEVENT_INVALID = 0;
		public const uint32 EXITEVENT_STARTUP = 128;
		public const uint32 EXITEVENT_CERTIMPORTED = 512;
		public const uint32 ENUMEXT_OBJECTID = 1;
		public const uint32 CMM_REFRESHONLY = 1;
		public const uint32 CMM_READONLY = 2;
		public const uint32 DBSESSIONCOUNTDEFAULT = 100;
		public const uint32 DBFLAGS_READONLY = 1;
		public const uint32 DBFLAGS_CREATEIFNEEDED = 2;
		public const uint32 DBFLAGS_CIRCULARLOGGING = 4;
		public const uint32 DBFLAGS_LAZYFLUSH = 8;
		public const uint32 DBFLAGS_MAXCACHESIZEX100 = 16;
		public const uint32 DBFLAGS_CHECKPOINTDEPTH60MB = 32;
		public const uint32 DBFLAGS_LOGBUFFERSLARGE = 64;
		public const uint32 DBFLAGS_LOGBUFFERSHUGE = 128;
		public const uint32 DBFLAGS_LOGFILESIZE16MB = 256;
		public const uint32 DBFLAGS_MULTITHREADTRANSACTIONS = 512;
		public const uint32 DBFLAGS_DISABLESNAPSHOTBACKUP = 1024;
		public const uint32 DBFLAGS_ENABLEVOLATILEREQUESTS = 2048;
		public const uint32 LDAPF_SSLENABLE = 1;
		public const uint32 LDAPF_SIGNDISABLE = 2;
		public const uint32 CSVER_MAJOR_WIN2K = 1;
		public const uint32 CSVER_MINOR_WIN2K = 1;
		public const uint32 CSVER_MAJOR_WHISTLER = 2;
		public const uint32 CSVER_MINOR_WHISTLER_BETA2 = 1;
		public const uint32 CSVER_MINOR_WHISTLER_BETA3 = 2;
		public const uint32 CSVER_MAJOR_LONGHORN = 3;
		public const uint32 CSVER_MINOR_LONGHORN_BETA1 = 1;
		public const uint32 CSVER_MAJOR_WIN7 = 4;
		public const uint32 CSVER_MINOR_WIN7 = 1;
		public const uint32 CSVER_MAJOR_WIN8 = 5;
		public const uint32 CSVER_MINOR_WIN8 = 1;
		public const uint32 CSVER_MAJOR_WINBLUE = 6;
		public const uint32 CSVER_MINOR_WINBLUE = 1;
		public const uint32 CSVER_MAJOR_THRESHOLD = 7;
		public const uint32 CSVER_MINOR_THRESHOLD = 1;
		public const uint32 CSVER_MAJOR = 7;
		public const uint32 CSVER_MINOR = 1;
		public const uint32 CCLOCKSKEWMINUTESDEFAULT = 10;
		public const uint32 CVIEWAGEMINUTESDEFAULT = 16;
		public const uint32 SETUP_SERVER_FLAG = 1;
		public const uint32 SETUP_CLIENT_FLAG = 2;
		public const uint32 SETUP_SUSPEND_FLAG = 4;
		public const uint32 SETUP_REQUEST_FLAG = 8;
		public const uint32 SETUP_ONLINE_FLAG = 16;
		public const uint32 SETUP_DENIED_FLAG = 32;
		public const uint32 SETUP_CREATEDB_FLAG = 64;
		public const uint32 SETUP_ATTEMPT_VROOT_CREATE = 128;
		public const uint32 SETUP_FORCECRL_FLAG = 256;
		public const uint32 SETUP_UPDATE_CAOBJECT_SVRTYPE = 512;
		public const uint32 SETUP_SERVER_UPGRADED_FLAG = 1024;
		public const uint32 SETUP_W2K_SECURITY_NOT_UPGRADED_FLAG = 2048;
		public const uint32 SETUP_SECURITY_CHANGED = 4096;
		public const uint32 SETUP_DCOM_SECURITY_UPDATED_FLAG = 8192;
		public const uint32 SETUP_SERVER_IS_UP_TO_DATE_FLAG = 16384;
		public const uint32 CRLF_DELTA_USE_OLDEST_UNEXPIRED_BASE = 1;
		public const uint32 CRLF_DELETE_EXPIRED_CRLS = 2;
		public const uint32 CRLF_CRLNUMBER_CRITICAL = 4;
		public const uint32 CRLF_REVCHECK_IGNORE_OFFLINE = 8;
		public const uint32 CRLF_IGNORE_INVALID_POLICIES = 16;
		public const uint32 CRLF_REBUILD_MODIFIED_SUBJECT_ONLY = 32;
		public const uint32 CRLF_SAVE_FAILED_CERTS = 64;
		public const uint32 CRLF_IGNORE_UNKNOWN_CMC_ATTRIBUTES = 128;
		public const uint32 CRLF_IGNORE_CROSS_CERT_TRUST_ERROR = 256;
		public const uint32 CRLF_PUBLISH_EXPIRED_CERT_CRLS = 512;
		public const uint32 CRLF_ENFORCE_ENROLLMENT_AGENT = 1024;
		public const uint32 CRLF_DISABLE_RDN_REORDER = 2048;
		public const uint32 CRLF_DISABLE_ROOT_CROSS_CERTS = 4096;
		public const uint32 CRLF_LOG_FULL_RESPONSE = 8192;
		public const uint32 CRLF_USE_XCHG_CERT_TEMPLATE = 16384;
		public const uint32 CRLF_USE_CROSS_CERT_TEMPLATE = 32768;
		public const uint32 CRLF_ALLOW_REQUEST_ATTRIBUTE_SUBJECT = 65536;
		public const uint32 CRLF_REVCHECK_IGNORE_NOREVCHECK = 131072;
		public const uint32 CRLF_PRESERVE_EXPIRED_CA_CERTS = 262144;
		public const uint32 CRLF_PRESERVE_REVOKED_CA_CERTS = 524288;
		public const uint32 CRLF_DISABLE_CHAIN_VERIFICATION = 1048576;
		public const uint32 CRLF_BUILD_ROOTCA_CRLENTRIES_BASEDONKEY = 2097152;
		public const uint32 KRAF_ENABLEFOREIGN = 1;
		public const uint32 KRAF_SAVEBADREQUESTKEY = 2;
		public const uint32 KRAF_ENABLEARCHIVEALL = 4;
		public const uint32 KRAF_DISABLEUSEDEFAULTPROVIDER = 8;
		public const uint32 IF_LOCKICERTREQUEST = 1;
		public const uint32 IF_NOREMOTEICERTREQUEST = 2;
		public const uint32 IF_NOLOCALICERTREQUEST = 4;
		public const uint32 IF_NORPCICERTREQUEST = 8;
		public const uint32 IF_NOREMOTEICERTADMIN = 16;
		public const uint32 IF_NOLOCALICERTADMIN = 32;
		public const uint32 IF_NOREMOTEICERTADMINBACKUP = 64;
		public const uint32 IF_NOLOCALICERTADMINBACKUP = 128;
		public const uint32 IF_NOSNAPSHOTBACKUP = 256;
		public const uint32 IF_ENFORCEENCRYPTICERTREQUEST = 512;
		public const uint32 IF_ENFORCEENCRYPTICERTADMIN = 1024;
		public const uint32 IF_ENABLEEXITKEYRETRIEVAL = 2048;
		public const uint32 IF_ENABLEADMINASAUDITOR = 4096;
		public const uint32 PROCFLG_NONE = 0;
		public const uint32 PROCFLG_ENFORCEGOODKEYS = 1;
		public const uint32 CSURL_SERVERPUBLISH = 1;
		public const uint32 CSURL_ADDTOCERTCDP = 2;
		public const uint32 CSURL_ADDTOFRESHESTCRL = 4;
		public const uint32 CSURL_ADDTOCRLCDP = 8;
		public const uint32 CSURL_PUBLISHRETRY = 16;
		public const uint32 CSURL_ADDTOCERTOCSP = 32;
		public const uint32 CSURL_SERVERPUBLISHDELTA = 64;
		public const uint32 CSURL_ADDTOIDP = 128;
		public const uint32 CAPATHLENGTH_INFINITE = 4294967295;
		public const uint32 REQDISP_PENDING = 0;
		public const uint32 REQDISP_ISSUE = 1;
		public const uint32 REQDISP_DENY = 2;
		public const uint32 REQDISP_USEREQUESTATTRIBUTE = 3;
		public const uint32 REQDISP_MASK = 255;
		public const uint32 REQDISP_PENDINGFIRST = 256;
		public const uint32 REQDISP_DEFAULT_ENTERPRISE = 1;
		public const uint32 REVEXT_CDPLDAPURL_OLD = 1;
		public const uint32 REVEXT_CDPHTTPURL_OLD = 2;
		public const uint32 REVEXT_CDPFTPURL_OLD = 4;
		public const uint32 REVEXT_CDPFILEURL_OLD = 8;
		public const uint32 REVEXT_CDPURLMASK_OLD = 255;
		public const uint32 REVEXT_CDPENABLE = 256;
		public const uint32 REVEXT_ASPENABLE = 512;
		public const uint32 REVEXT_DEFAULT_NODS = 256;
		public const uint32 REVEXT_DEFAULT_DS = 256;
		public const uint32 ISSCERT_LDAPURL_OLD = 1;
		public const uint32 ISSCERT_HTTPURL_OLD = 2;
		public const uint32 ISSCERT_FTPURL_OLD = 4;
		public const uint32 ISSCERT_FILEURL_OLD = 8;
		public const uint32 ISSCERT_URLMASK_OLD = 255;
		public const uint32 ISSCERT_ENABLE = 256;
		public const uint32 ISSCERT_DEFAULT_NODS = 256;
		public const uint32 ISSCERT_DEFAULT_DS = 256;
		public const uint32 EDITF_ENABLEREQUESTEXTENSIONS = 1;
		public const uint32 EDITF_REQUESTEXTENSIONLIST = 2;
		public const uint32 EDITF_DISABLEEXTENSIONLIST = 4;
		public const uint32 EDITF_ADDOLDKEYUSAGE = 8;
		public const uint32 EDITF_ADDOLDCERTTYPE = 16;
		public const uint32 EDITF_ATTRIBUTEENDDATE = 32;
		public const uint32 EDITF_BASICCONSTRAINTSCRITICAL = 64;
		public const uint32 EDITF_BASICCONSTRAINTSCA = 128;
		public const uint32 EDITF_ENABLEAKIKEYID = 256;
		public const uint32 EDITF_ATTRIBUTECA = 512;
		public const uint32 EDITF_IGNOREREQUESTERGROUP = 1024;
		public const uint32 EDITF_ENABLEAKIISSUERNAME = 2048;
		public const uint32 EDITF_ENABLEAKIISSUERSERIAL = 4096;
		public const uint32 EDITF_ENABLEAKICRITICAL = 8192;
		public const uint32 EDITF_SERVERUPGRADED = 16384;
		public const uint32 EDITF_ATTRIBUTEEKU = 32768;
		public const uint32 EDITF_ENABLEDEFAULTSMIME = 65536;
		public const uint32 EDITF_EMAILOPTIONAL = 131072;
		public const uint32 EDITF_ATTRIBUTESUBJECTALTNAME2 = 262144;
		public const uint32 EDITF_ENABLELDAPREFERRALS = 524288;
		public const uint32 EDITF_ENABLECHASECLIENTDC = 1048576;
		public const uint32 EDITF_AUDITCERTTEMPLATELOAD = 2097152;
		public const uint32 EDITF_DISABLEOLDOSCNUPN = 4194304;
		public const uint32 EDITF_DISABLELDAPPACKAGELIST = 8388608;
		public const uint32 EDITF_ENABLEUPNMAP = 16777216;
		public const uint32 EDITF_ENABLEOCSPREVNOCHECK = 33554432;
		public const uint32 EDITF_ENABLERENEWONBEHALFOF = 67108864;
		public const uint32 EDITF_ENABLEKEYENCIPHERMENTCACERT = 134217728;
		public const uint32 EXITPUB_FILE = 1;
		public const uint32 EXITPUB_ACTIVEDIRECTORY = 2;
		public const uint32 EXITPUB_REMOVEOLDCERTS = 16;
		public const uint32 EXITPUB_DEFAULT_ENTERPRISE = 2;
		public const uint32 EXITPUB_DEFAULT_STANDALONE = 1;
		public const uint32 TP_MACHINEPOLICY = 1;
		public const uint32 KR_ENABLE_MACHINE = 1;
		public const uint32 KR_ENABLE_USER = 2;
		public const uint32 EXTENSION_CRITICAL_FLAG = 1;
		public const uint32 EXTENSION_DISABLE_FLAG = 2;
		public const uint32 EXTENSION_DELETE_FLAG = 4;
		public const uint32 EXTENSION_POLICY_MASK = 65535;
		public const uint32 EXTENSION_ORIGIN_REQUEST = 65536;
		public const uint32 EXTENSION_ORIGIN_POLICY = 131072;
		public const uint32 EXTENSION_ORIGIN_ADMIN = 196608;
		public const uint32 EXTENSION_ORIGIN_SERVER = 262144;
		public const uint32 EXTENSION_ORIGIN_RENEWALCERT = 327680;
		public const uint32 EXTENSION_ORIGIN_IMPORTEDCERT = 393216;
		public const uint32 EXTENSION_ORIGIN_PKCS7 = 458752;
		public const uint32 EXTENSION_ORIGIN_CMC = 524288;
		public const uint32 EXTENSION_ORIGIN_CACERT = 589824;
		public const uint32 EXTENSION_ORIGIN_MASK = 983040;
		public const uint32 CPF_BASE = 1;
		public const uint32 CPF_DELTA = 2;
		public const uint32 CPF_COMPLETE = 4;
		public const uint32 CPF_SHADOW = 8;
		public const uint32 CPF_CASTORE_ERROR = 16;
		public const uint32 CPF_BADURL_ERROR = 32;
		public const uint32 CPF_MANUAL = 64;
		public const uint32 CPF_SIGNATURE_ERROR = 128;
		public const uint32 CPF_LDAP_ERROR = 256;
		public const uint32 CPF_FILE_ERROR = 512;
		public const uint32 CPF_FTP_ERROR = 1024;
		public const uint32 CPF_HTTP_ERROR = 2048;
		public const uint32 CPF_POSTPONED_BASE_LDAP_ERROR = 4096;
		public const uint32 CPF_POSTPONED_BASE_FILE_ERROR = 8192;
		public const uint32 PROPTYPE_MASK = 255;
		public const uint32 PROPCALLER_SERVER = 256;
		public const uint32 PROPCALLER_POLICY = 512;
		public const uint32 PROPCALLER_EXIT = 768;
		public const uint32 PROPCALLER_ADMIN = 1024;
		public const uint32 PROPCALLER_REQUEST = 1280;
		public const uint32 PROPCALLER_MASK = 3840;
		public const uint32 PROPFLAGS_INDEXED = 65536;
		public const uint32 CR_FLG_FORCETELETEX = 1;
		public const uint32 CR_FLG_RENEWAL = 2;
		public const uint32 CR_FLG_FORCEUTF8 = 4;
		public const uint32 CR_FLG_CAXCHGCERT = 8;
		public const uint32 CR_FLG_ENROLLONBEHALFOF = 16;
		public const uint32 CR_FLG_SUBJECTUNMODIFIED = 32;
		public const uint32 CR_FLG_VALIDENCRYPTEDKEYHASH = 64;
		public const uint32 CR_FLG_CACROSSCERT = 128;
		public const uint32 CR_FLG_ENFORCEUTF8 = 256;
		public const uint32 CR_FLG_DEFINEDCACERT = 512;
		public const uint32 CR_FLG_CHALLENGEPENDING = 1024;
		public const uint32 CR_FLG_CHALLENGESATISFIED = 2048;
		public const uint32 CR_FLG_TRUSTONUSE = 4096;
		public const uint32 CR_FLG_TRUSTEKCERT = 8192;
		public const uint32 CR_FLG_TRUSTEKKEY = 16384;
		public const uint32 CR_FLG_PUBLISHERROR = 2147483648;
		public const uint32 DB_DISP_ACTIVE = 8;
		public const uint32 DB_DISP_PENDING = 9;
		public const uint32 DB_DISP_QUEUE_MAX = 9;
		public const uint32 DB_DISP_FOREIGN = 12;
		public const uint32 DB_DISP_CA_CERT = 15;
		public const uint32 DB_DISP_CA_CERT_CHAIN = 16;
		public const uint32 DB_DISP_KRA_CERT = 17;
		public const uint32 DB_DISP_LOG_MIN = 20;
		public const uint32 DB_DISP_ISSUED = 20;
		public const uint32 DB_DISP_REVOKED = 21;
		public const uint32 DB_DISP_LOG_FAILED_MIN = 30;
		public const uint32 DB_DISP_ERROR = 30;
		public const uint32 DB_DISP_DENIED = 31;
		public const uint32 VR_PENDING = 0;
		public const uint32 VR_INSTANT_OK = 1;
		public const uint32 VR_INSTANT_BAD = 2;
		public const uint32 CV_OUT_HEXRAW = 12;
		public const uint32 CV_OUT_ENCODEMASK = 255;
		public const uint32 CV_OUT_NOCRLF = 1073741824;
		public const uint32 CV_OUT_NOCR = 2147483648;
		public const uint32 CVR_SEEK_NONE = 0;
		public const uint32 CVR_SEEK_MASK = 255;
		public const uint32 CVR_SEEK_NODELTA = 4096;
		public const uint32 CVR_SORT_NONE = 0;
		public const uint32 CVR_SORT_ASCEND = 1;
		public const uint32 CVR_SORT_DESCEND = 2;
		public const int32 CV_COLUMN_EXTENSION_DEFAULT = -4;
		public const int32 CV_COLUMN_ATTRIBUTE_DEFAULT = -5;
		public const int32 CV_COLUMN_CRL_DEFAULT = -6;
		public const int32 CV_COLUMN_LOG_REVOKED_DEFAULT = -7;
		public const uint32 CVRC_TABLE_MASK = 61440;
		public const uint32 CVRC_TABLE_SHIFT = 12;
		public const uint32 CRYPT_ENUM_ALL_PROVIDERS = 1;
		public const int32 XEPR_ENUM_FIRST = -1;
		public const uint32 XEPR_DATE = 5;
		public const uint32 XEPR_TEMPLATENAME = 6;
		public const uint32 XEPR_VERSION = 7;
		public const uint32 XEPR_V1TEMPLATENAME = 9;
		public const uint32 XEPR_V2TEMPLATEOID = 16;
		public const uint32 XEKL_KEYSIZE_DEFAULT = 4;
		public const uint32 XECP_STRING_PROPERTY = 1;
		public const uint32 XECI_DISABLE = 0;
		public const uint32 XECI_XENROLL = 1;
		public const uint32 XECI_AUTOENROLL = 2;
		public const uint32 XECI_REQWIZARD = 3;
		public const uint32 XECI_CERTREQ = 4;
		public const String wszCMM_PROP_NAME = "Name";
		public const String wszCMM_PROP_DESCRIPTION = "Description";
		public const String wszCMM_PROP_COPYRIGHT = "Copyright";
		public const String wszCMM_PROP_FILEVER = "File Version";
		public const String wszCMM_PROP_PRODUCTVER = "Product Version";
		public const String wszCMM_PROP_DISPLAY_HWND = "HWND";
		public const String wszCMM_PROP_ISMULTITHREADED = "IsMultiThreaded";
		
		// --- Enums ---
		
		public enum CERT_VIEW_COLUMN_INDEX : int32
		{
			LOG_DEFAULT = -2,
			LOG_FAILED_DEFAULT = -3,
			QUEUE_DEFAULT = -1,
		}
		public enum CERT_DELETE_ROW_FLAGS : uint32
		{
			EXPIRED = 1,
			REQUEST_LAST_CHANGED = 2,
		}
		public enum FULL_RESPONSE_PROPERTY_ID : uint32
		{
			NONE = 0,
			FULLRESPONSE = 1,
			STATUSINFOCOUNT = 2,
			BODYPARTSTRING = 3,
			STATUS = 4,
			STATUSSTRING = 5,
			OTHERINFOCHOICE = 6,
			FAILINFO = 7,
			PENDINFOTOKEN = 8,
			PENDINFOTIME = 9,
			ISSUEDCERTIFICATEHASH = 10,
			ISSUEDCERTIFICATE = 11,
			ISSUEDCERTIFICATECHAIN = 12,
			ISSUEDCERTIFICATECRLCHAIN = 13,
			ENCRYPTEDKEYHASH = 14,
			FULLRESPONSENOPKCS7 = 15,
			CAEXCHANGECERTIFICATEHASH = 16,
			CAEXCHANGECERTIFICATE = 17,
			CAEXCHANGECERTIFICATECHAIN = 18,
			CAEXCHANGECERTIFICATECRLCHAIN = 19,
			ATTESTATIONCHALLENGE = 20,
			ATTESTATIONPROVIDERNAME = 21,
		}
		public enum CVRC_COLUMN : uint32
		{
			SCHEMA = 0,
			RESULT = 1,
			VALUE = 2,
			MASK = 4095,
		}
		public enum CERT_IMPORT_FLAGS : uint32
		{
			ASE64HEADER = 0,
			ASE64 = 1,
			INARY = 2,
		}
		public enum CERT_GET_CONFIG_FLAGS : uint32
		{
			DEFAULTCONFIG = 0,
			FIRSTCONFIG = 2,
			LOCALACTIVECONFIG = 4,
			LOCALCONFIG = 3,
			UIPICKCONFIG = 1,
			UIPICKCONFIGSKIPLOCALCA_ = 5,
		}
		public enum ENUM_CERT_COLUMN_VALUE_FLAGS : uint32
		{
			BASE64 = 1,
			BASE64HEADER = 0,
			BASE64REQUESTHEADER = 3,
			BASE64X509CRLHEADER = 9,
			BINARY = 2,
			HEX = 4,
			HEXADDR = 10,
			HEXASCII = 5,
			HEXASCIIADDR = 11,
		}
		public enum PENDING_REQUEST_DESIRED_PROPERTY : uint32
		{
			CADNS = 1,
			CAFRIENDLYNAME = 3,
			CANAME = 2,
			HASH = 8,
			REQUESTID = 4,
		}
		public enum CERTADMIN_GET_ROLES_FLAGS : uint32
		{
			ADMIN = 1,
			AUDITOR = 4,
			ENROLL = 512,
			OFFICER = 2,
			OPERATOR = 8,
			READ = 256,
		}
		public enum CR_DISP : uint32
		{
			DENIED = 2,
			ERROR = 1,
			INCOMPLETE = 0,
			ISSUED = 3,
			ISSUED_OUT_OF_BAND = 4,
			UNDER_SUBMISSION = 5,
		}
		public enum XEKL_KEYSIZE : uint32
		{
			MIN = 1,
			MAX = 2,
			INC = 3,
		}
		public enum CERT_CREATE_REQUEST_FLAGS : uint32
		{
			CMC = 3,
			PKCS10_V1_5 = 4,
			PKCS10_V2_0 = 1,
			PKCS7 = 2,
		}
		public enum CERT_EXIT_EVENT_MASK : uint32
		{
			CERTDENIED = 4,
			CERTISSUED = 1,
			CERTPENDING = 2,
			CERTRETRIEVEPENDING = 16,
			CERTREVOKED = 8,
			CRLISSUED = 32,
			SHUTDOWN = 64,
		}
		public enum ADDED_CERT_TYPE : uint32
		{
			_1 = 1,
			_2 = 2,
		}
		public enum CVRC_TABLE : uint32
		{
			ATTRIBUTES = 16384,
			CRL = 20480,
			EXTENSIONS = 12288,
			REQCERT = 0,
		}
		public enum CERT_PROPERTY_TYPE : uint32
		{
			BINARY = 3,
			DATE = 2,
			LONG = 1,
			STRING = 4,
		}
		public enum CERT_ALT_NAME : uint32
		{
			RFC822_NAME = 2,
			DNS_NAME = 3,
			URL = 7,
			REGISTERED_ID = 9,
			DIRECTORY_NAME = 5,
			IP_ADDRESS = 8,
			OTHER_NAME = 1,
		}
		public enum CSBACKUP_TYPE : uint32
		{
			FULL = 1,
			LOGS_ONLY = 2,
		}
		public enum XEKL_KEYSPEC : uint32
		{
			KEYX = 1,
			SIG = 2,
		}
		public enum CERT_REQUEST_OUT_TYPE : uint32
		{
			ASE64HEADER = 0,
			ASE64 = 1,
			INARY = 2,
		}
		public enum CERT_VIEW_SEEK_OPERATOR_FLAGS : uint32
		{
			EQ = 1,
			LE = 4,
			LT = 2,
			GE = 8,
			GT = 16,
		}
		public enum OCSPSigningFlag : int32
		{
			SILENT = 1,
			USE_CACERT = 2,
			ALLOW_SIGNINGCERT_AUTORENEWAL = 4,
			FORCE_SIGNINGCERT_ISSUER_ISCA = 8,
			AUTODISCOVER_SIGNINGCERT = 16,
			MANUAL_ASSIGN_SIGNINGCERT = 32,
			RESPONDER_ID_KEYHASH = 64,
			RESPONDER_ID_NAME = 128,
			ALLOW_NONCE_EXTENSION = 256,
			ALLOW_SIGNINGCERT_AUTOENROLLMENT = 512,
		}
		public enum OCSPRequestFlag : int32
		{
			OCSP_RF_REJECT_SIGNED_REQUESTS = 1,
		}
		public enum X509EnrollmentAuthFlags : int32
		{
			None = 0,
			Anonymous = 1,
			Kerberos = 2,
			Username = 4,
			Certificate = 8,
		}
		public enum X509SCEPMessageType : int32
		{
			Unknown = -1,
			CertResponse = 3,
			PKCSRequest = 19,
			GetCertInitial = 20,
			GetCert = 21,
			GetCRL = 22,
			ClaimChallengeAnswer = 41,
		}
		public enum X509SCEPDisposition : int32
		{
			Unknown = -1,
			Success = 0,
			Failure = 2,
			Pending = 3,
			PendingChallenge = 11,
		}
		public enum X509SCEPFailInfo : int32
		{
			Unknown = -1,
			BadAlgorithm = 0,
			BadMessageCheck = 1,
			BadRequest = 2,
			BadTime = 3,
			BadCertId = 4,
		}
		public enum CERTENROLL_OBJECTID : int32
		{
			_NONE = 0,
			_RSA = 1,
			_PKCS = 2,
			_RSA_HASH = 3,
			_RSA_ENCRYPT = 4,
			_PKCS_1 = 5,
			_PKCS_2 = 6,
			_PKCS_3 = 7,
			_PKCS_4 = 8,
			_PKCS_5 = 9,
			_PKCS_6 = 10,
			_PKCS_7 = 11,
			_PKCS_8 = 12,
			_PKCS_9 = 13,
			_PKCS_10 = 14,
			_PKCS_12 = 15,
			_RSA_RSA = 16,
			_RSA_MD2RSA = 17,
			_RSA_MD4RSA = 18,
			_RSA_MD5RSA = 19,
			_RSA_SHA1RSA = 20,
			_RSA_SETOAEP_RSA = 21,
			_RSA_DH = 22,
			_RSA_data = 23,
			_RSA_signedData = 24,
			_RSA_envelopedData = 25,
			_RSA_signEnvData = 26,
			_RSA_digestedData = 27,
			_RSA_hashedData = 28,
			_RSA_encryptedData = 29,
			_RSA_emailAddr = 30,
			_RSA_unstructName = 31,
			_RSA_contentType = 32,
			_RSA_messageDigest = 33,
			_RSA_signingTime = 34,
			_RSA_counterSign = 35,
			_RSA_challengePwd = 36,
			_RSA_unstructAddr = 37,
			_RSA_extCertAttrs = 38,
			_RSA_certExtensions = 39,
			_RSA_SMIMECapabilities = 40,
			_RSA_preferSignedData = 41,
			_RSA_SMIMEalg = 42,
			_RSA_SMIMEalgESDH = 43,
			_RSA_SMIMEalgCMS3DESwrap = 44,
			_RSA_SMIMEalgCMSRC2wrap = 45,
			_RSA_MD2 = 46,
			_RSA_MD4 = 47,
			_RSA_MD5 = 48,
			_RSA_RC2CBC = 49,
			_RSA_RC4 = 50,
			_RSA_DES_EDE3_CBC = 51,
			_RSA_RC5_CBCPad = 52,
			_ANSI_X942 = 53,
			_ANSI_X942_DH = 54,
			_X957 = 55,
			_X957_DSA = 56,
			_X957_SHA1DSA = 57,
			_DS = 58,
			_DSALG = 59,
			_DSALG_CRPT = 60,
			_DSALG_HASH = 61,
			_DSALG_SIGN = 62,
			_DSALG_RSA = 63,
			_OIW = 64,
			_OIWSEC = 65,
			_OIWSEC_md4RSA = 66,
			_OIWSEC_md5RSA = 67,
			_OIWSEC_md4RSA2 = 68,
			_OIWSEC_desECB = 69,
			_OIWSEC_desCBC = 70,
			_OIWSEC_desOFB = 71,
			_OIWSEC_desCFB = 72,
			_OIWSEC_desMAC = 73,
			_OIWSEC_rsaSign = 74,
			_OIWSEC_dsa = 75,
			_OIWSEC_shaDSA = 76,
			_OIWSEC_mdc2RSA = 77,
			_OIWSEC_shaRSA = 78,
			_OIWSEC_dhCommMod = 79,
			_OIWSEC_desEDE = 80,
			_OIWSEC_sha = 81,
			_OIWSEC_mdc2 = 82,
			_OIWSEC_dsaComm = 83,
			_OIWSEC_dsaCommSHA = 84,
			_OIWSEC_rsaXchg = 85,
			_OIWSEC_keyHashSeal = 86,
			_OIWSEC_md2RSASign = 87,
			_OIWSEC_md5RSASign = 88,
			_OIWSEC_sha1 = 89,
			_OIWSEC_dsaSHA1 = 90,
			_OIWSEC_dsaCommSHA1 = 91,
			_OIWSEC_sha1RSASign = 92,
			_OIWDIR = 93,
			_OIWDIR_CRPT = 94,
			_OIWDIR_HASH = 95,
			_OIWDIR_SIGN = 96,
			_OIWDIR_md2 = 97,
			_OIWDIR_md2RSA = 98,
			_INFOSEC = 99,
			_INFOSEC_sdnsSignature = 100,
			_INFOSEC_mosaicSignature = 101,
			_INFOSEC_sdnsConfidentiality = 102,
			_INFOSEC_mosaicConfidentiality = 103,
			_INFOSEC_sdnsIntegrity = 104,
			_INFOSEC_mosaicIntegrity = 105,
			_INFOSEC_sdnsTokenProtection = 106,
			_INFOSEC_mosaicTokenProtection = 107,
			_INFOSEC_sdnsKeyManagement = 108,
			_INFOSEC_mosaicKeyManagement = 109,
			_INFOSEC_sdnsKMandSig = 110,
			_INFOSEC_mosaicKMandSig = 111,
			_INFOSEC_SuiteASignature = 112,
			_INFOSEC_SuiteAConfidentiality = 113,
			_INFOSEC_SuiteAIntegrity = 114,
			_INFOSEC_SuiteATokenProtection = 115,
			_INFOSEC_SuiteAKeyManagement = 116,
			_INFOSEC_SuiteAKMandSig = 117,
			_INFOSEC_mosaicUpdatedSig = 118,
			_INFOSEC_mosaicKMandUpdSig = 119,
			_INFOSEC_mosaicUpdatedInteg = 120,
			_COMMON_NAME = 121,
			_SUR_NAME = 122,
			_DEVICE_SERIAL_NUMBER = 123,
			_COUNTRY_NAME = 124,
			_LOCALITY_NAME = 125,
			_STATE_OR_PROVINCE_NAME = 126,
			_STREET_ADDRESS = 127,
			_ORGANIZATION_NAME = 128,
			_ORGANIZATIONAL_UNIT_NAME = 129,
			_TITLE = 130,
			_DESCRIPTION = 131,
			_SEARCH_GUIDE = 132,
			_BUSINESS_CATEGORY = 133,
			_POSTAL_ADDRESS = 134,
			_POSTAL_CODE = 135,
			_POST_OFFICE_BOX = 136,
			_PHYSICAL_DELIVERY_OFFICE_NAME = 137,
			_TELEPHONE_NUMBER = 138,
			_TELEX_NUMBER = 139,
			_TELETEXT_TERMINAL_IDENTIFIER = 140,
			_FACSIMILE_TELEPHONE_NUMBER = 141,
			_X21_ADDRESS = 142,
			_INTERNATIONAL_ISDN_NUMBER = 143,
			_REGISTERED_ADDRESS = 144,
			_DESTINATION_INDICATOR = 145,
			_PREFERRED_DELIVERY_METHOD = 146,
			_PRESENTATION_ADDRESS = 147,
			_SUPPORTED_APPLICATION_CONTEXT = 148,
			_MEMBER = 149,
			_OWNER = 150,
			_ROLE_OCCUPANT = 151,
			_SEE_ALSO = 152,
			_USER_PASSWORD = 153,
			_USER_CERTIFICATE = 154,
			_CA_CERTIFICATE = 155,
			_AUTHORITY_REVOCATION_LIST = 156,
			_CERTIFICATE_REVOCATION_LIST = 157,
			_CROSS_CERTIFICATE_PAIR = 158,
			_GIVEN_NAME = 159,
			_INITIALS = 160,
			_DN_QUALIFIER = 161,
			_DOMAIN_COMPONENT = 162,
			_PKCS_12_FRIENDLY_NAME_ATTR = 163,
			_PKCS_12_LOCAL_KEY_ID = 164,
			_PKCS_12_KEY_PROVIDER_NAME_ATTR = 165,
			_LOCAL_MACHINE_KEYSET = 166,
			_PKCS_12_EXTENDED_ATTRIBUTES = 167,
			_KEYID_RDN = 168,
			_AUTHORITY_KEY_IDENTIFIER = 169,
			_KEY_ATTRIBUTES = 170,
			_CERT_POLICIES_95 = 171,
			_KEY_USAGE_RESTRICTION = 172,
			_SUBJECT_ALT_NAME = 173,
			_ISSUER_ALT_NAME = 174,
			_BASIC_CONSTRAINTS = 175,
			_KEY_USAGE = 176,
			_PRIVATEKEY_USAGE_PERIOD = 177,
			_BASIC_CONSTRAINTS2 = 178,
			_CERT_POLICIES = 179,
			_ANY_CERT_POLICY = 180,
			_AUTHORITY_KEY_IDENTIFIER2 = 181,
			_SUBJECT_KEY_IDENTIFIER = 182,
			_SUBJECT_ALT_NAME2 = 183,
			_ISSUER_ALT_NAME2 = 184,
			_CRL_REASON_CODE = 185,
			_REASON_CODE_HOLD = 186,
			_CRL_DIST_POINTS = 187,
			_ENHANCED_KEY_USAGE = 188,
			_CRL_NUMBER = 189,
			_DELTA_CRL_INDICATOR = 190,
			_ISSUING_DIST_POINT = 191,
			_FRESHEST_CRL = 192,
			_NAME_CONSTRAINTS = 193,
			_POLICY_MAPPINGS = 194,
			_LEGACY_POLICY_MAPPINGS = 195,
			_POLICY_CONSTRAINTS = 196,
			_RENEWAL_CERTIFICATE = 197,
			_ENROLLMENT_NAME_VALUE_PAIR = 198,
			_ENROLLMENT_CSP_PROVIDER = 199,
			_OS_VERSION = 200,
			_ENROLLMENT_AGENT = 201,
			_PKIX = 202,
			_PKIX_PE = 203,
			_AUTHORITY_INFO_ACCESS = 204,
			_BIOMETRIC_EXT = 205,
			_LOGOTYPE_EXT = 206,
			_CERT_EXTENSIONS = 207,
			_NEXT_UPDATE_LOCATION = 208,
			_REMOVE_CERTIFICATE = 209,
			_CROSS_CERT_DIST_POINTS = 210,
			_CTL = 211,
			_SORTED_CTL = 212,
			_SERIALIZED = 213,
			_NT_PRINCIPAL_NAME = 214,
			_PRODUCT_UPDATE = 215,
			_ANY_APPLICATION_POLICY = 216,
			_AUTO_ENROLL_CTL_USAGE = 217,
			_ENROLL_CERTTYPE_EXTENSION = 218,
			_CERT_MANIFOLD = 219,
			_CERTSRV_CA_VERSION = 220,
			_CERTSRV_PREVIOUS_CERT_HASH = 221,
			_CRL_VIRTUAL_BASE = 222,
			_CRL_NEXT_PUBLISH = 223,
			_KP_CA_EXCHANGE = 224,
			_KP_KEY_RECOVERY_AGENT = 225,
			_CERTIFICATE_TEMPLATE = 226,
			_ENTERPRISE_OID_ROOT = 227,
			_RDN_DUMMY_SIGNER = 228,
			_APPLICATION_CERT_POLICIES = 229,
			_APPLICATION_POLICY_MAPPINGS = 230,
			_APPLICATION_POLICY_CONSTRAINTS = 231,
			_ARCHIVED_KEY_ATTR = 232,
			_CRL_SELF_CDP = 233,
			_REQUIRE_CERT_CHAIN_POLICY = 234,
			_ARCHIVED_KEY_CERT_HASH = 235,
			_ISSUED_CERT_HASH = 236,
			_DS_EMAIL_REPLICATION = 237,
			_REQUEST_CLIENT_INFO = 238,
			_ENCRYPTED_KEY_HASH = 239,
			_CERTSRV_CROSSCA_VERSION = 240,
			_NTDS_REPLICATION = 241,
			_SUBJECT_DIR_ATTRS = 242,
			_PKIX_KP = 243,
			_PKIX_KP_SERVER_AUTH = 244,
			_PKIX_KP_CLIENT_AUTH = 245,
			_PKIX_KP_CODE_SIGNING = 246,
			_PKIX_KP_EMAIL_PROTECTION = 247,
			_PKIX_KP_IPSEC_END_SYSTEM = 248,
			_PKIX_KP_IPSEC_TUNNEL = 249,
			_PKIX_KP_IPSEC_USER = 250,
			_PKIX_KP_TIMESTAMP_SIGNING = 251,
			_PKIX_KP_OCSP_SIGNING = 252,
			_PKIX_OCSP_NOCHECK = 253,
			_IPSEC_KP_IKE_INTERMEDIATE = 254,
			_KP_CTL_USAGE_SIGNING = 255,
			_KP_TIME_STAMP_SIGNING = 256,
			_SERVER_GATED_CRYPTO = 257,
			_SGC_NETSCAPE = 258,
			_KP_EFS = 259,
			_EFS_RECOVERY = 260,
			_WHQL_CRYPTO = 261,
			_NT5_CRYPTO = 262,
			_OEM_WHQL_CRYPTO = 263,
			_EMBEDDED_NT_CRYPTO = 264,
			_ROOT_LIST_SIGNER = 265,
			_KP_QUALIFIED_SUBORDINATION = 266,
			_KP_KEY_RECOVERY = 267,
			_KP_DOCUMENT_SIGNING = 268,
			_KP_LIFETIME_SIGNING = 269,
			_KP_MOBILE_DEVICE_SOFTWARE = 270,
			_KP_SMART_DISPLAY = 271,
			_KP_CSP_SIGNATURE = 272,
			_DRM = 273,
			_DRM_INDIVIDUALIZATION = 274,
			_LICENSES = 275,
			_LICENSE_SERVER = 276,
			_KP_SMARTCARD_LOGON = 277,
			_YESNO_TRUST_ATTR = 278,
			_PKIX_POLICY_QUALIFIER_CPS = 279,
			_PKIX_POLICY_QUALIFIER_USERNOTICE = 280,
			_CERT_POLICIES_95_QUALIFIER1 = 281,
			_PKIX_ACC_DESCR = 282,
			_PKIX_OCSP = 283,
			_PKIX_CA_ISSUERS = 284,
			_VERISIGN_PRIVATE_6_9 = 285,
			_VERISIGN_ONSITE_JURISDICTION_HASH = 286,
			_VERISIGN_BITSTRING_6_13 = 287,
			_VERISIGN_ISS_STRONG_CRYPTO = 288,
			_NETSCAPE = 289,
			_NETSCAPE_CERT_EXTENSION = 290,
			_NETSCAPE_CERT_TYPE = 291,
			_NETSCAPE_BASE_URL = 292,
			_NETSCAPE_REVOCATION_URL = 293,
			_NETSCAPE_CA_REVOCATION_URL = 294,
			_NETSCAPE_CERT_RENEWAL_URL = 295,
			_NETSCAPE_CA_POLICY_URL = 296,
			_NETSCAPE_SSL_SERVER_NAME = 297,
			_NETSCAPE_COMMENT = 298,
			_NETSCAPE_DATA_TYPE = 299,
			_NETSCAPE_CERT_SEQUENCE = 300,
			_CT_PKI_DATA = 301,
			_CT_PKI_RESPONSE = 302,
			_PKIX_NO_SIGNATURE = 303,
			_CMC = 304,
			_CMC_STATUS_INFO = 305,
			_CMC_IDENTIFICATION = 306,
			_CMC_IDENTITY_PROOF = 307,
			_CMC_DATA_RETURN = 308,
			_CMC_TRANSACTION_ID = 309,
			_CMC_SENDER_NONCE = 310,
			_CMC_RECIPIENT_NONCE = 311,
			_CMC_ADD_EXTENSIONS = 312,
			_CMC_ENCRYPTED_POP = 313,
			_CMC_DECRYPTED_POP = 314,
			_CMC_LRA_POP_WITNESS = 315,
			_CMC_GET_CERT = 316,
			_CMC_GET_CRL = 317,
			_CMC_REVOKE_REQUEST = 318,
			_CMC_REG_INFO = 319,
			_CMC_RESPONSE_INFO = 320,
			_CMC_QUERY_PENDING = 321,
			_CMC_ID_POP_LINK_RANDOM = 322,
			_CMC_ID_POP_LINK_WITNESS = 323,
			_CMC_ID_CONFIRM_CERT_ACCEPTANCE = 324,
			_CMC_ADD_ATTRIBUTES = 325,
			_LOYALTY_OTHER_LOGOTYPE = 326,
			_BACKGROUND_OTHER_LOGOTYPE = 327,
			_PKIX_OCSP_BASIC_SIGNED_RESPONSE = 328,
			_PKCS_7_DATA = 329,
			_PKCS_7_SIGNED = 330,
			_PKCS_7_ENVELOPED = 331,
			_PKCS_7_SIGNEDANDENVELOPED = 332,
			_PKCS_7_DIGESTED = 333,
			_PKCS_7_ENCRYPTED = 334,
			_PKCS_9_CONTENT_TYPE = 335,
			_PKCS_9_MESSAGE_DIGEST = 336,
			_CERT_PROP_ID_PREFIX = 337,
			_CERT_KEY_IDENTIFIER_PROP_ID = 338,
			_CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 339,
			_CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 340,
			_CERT_MD5_HASH_PROP_ID = 341,
			_RSA_SHA256RSA = 342,
			_RSA_SHA384RSA = 343,
			_RSA_SHA512RSA = 344,
			_NIST_sha256 = 345,
			_NIST_sha384 = 346,
			_NIST_sha512 = 347,
			_RSA_MGF1 = 348,
			_ECC_PUBLIC_KEY = 349,
			_ECDSA_SHA1 = 350,
			_ECDSA_SPECIFIED = 351,
			_ANY_ENHANCED_KEY_USAGE = 352,
			_RSA_SSA_PSS = 353,
			_ATTR_SUPPORTED_ALGORITHMS = 355,
			_ATTR_TPM_SECURITY_ASSERTIONS = 356,
			_ATTR_TPM_SPECIFICATION = 357,
			_CERT_DISALLOWED_FILETIME_PROP_ID = 358,
			_CERT_SIGNATURE_HASH_PROP_ID = 359,
			_CERT_STRONG_KEY_OS_1 = 360,
			_CERT_STRONG_KEY_OS_CURRENT = 361,
			_CERT_STRONG_KEY_OS_PREFIX = 362,
			_CERT_STRONG_SIGN_OS_1 = 363,
			_CERT_STRONG_SIGN_OS_CURRENT = 364,
			_CERT_STRONG_SIGN_OS_PREFIX = 365,
			_DH_SINGLE_PASS_STDDH_SHA1_KDF = 366,
			_DH_SINGLE_PASS_STDDH_SHA256_KDF = 367,
			_DH_SINGLE_PASS_STDDH_SHA384_KDF = 368,
			_DISALLOWED_HASH = 369,
			_DISALLOWED_LIST = 370,
			_ECC_CURVE_P256 = 371,
			_ECC_CURVE_P384 = 372,
			_ECC_CURVE_P521 = 373,
			_ECDSA_SHA256 = 374,
			_ECDSA_SHA384 = 375,
			_ECDSA_SHA512 = 376,
			_ENROLL_CAXCHGCERT_HASH = 377,
			_ENROLL_EK_INFO = 378,
			_ENROLL_EKPUB_CHALLENGE = 379,
			_ENROLL_EKVERIFYCERT = 380,
			_ENROLL_EKVERIFYCREDS = 381,
			_ENROLL_EKVERIFYKEY = 382,
			_EV_RDN_COUNTRY = 383,
			_EV_RDN_LOCALE = 384,
			_EV_RDN_STATE_OR_PROVINCE = 385,
			_INHIBIT_ANY_POLICY = 386,
			_INTERNATIONALIZED_EMAIL_ADDRESS = 387,
			_KP_KERNEL_MODE_CODE_SIGNING = 388,
			_KP_KERNEL_MODE_HAL_EXTENSION_SIGNING = 389,
			_KP_KERNEL_MODE_TRUSTED_BOOT_SIGNING = 390,
			_KP_TPM_AIK_CERTIFICATE = 391,
			_KP_TPM_EK_CERTIFICATE = 392,
			_KP_TPM_PLATFORM_CERTIFICATE = 393,
			_NIST_AES128_CBC = 394,
			_NIST_AES128_WRAP = 395,
			_NIST_AES192_CBC = 396,
			_NIST_AES192_WRAP = 397,
			_NIST_AES256_CBC = 398,
			_NIST_AES256_WRAP = 399,
			_PKCS_12_PbeIds = 400,
			_PKCS_12_pbeWithSHA1And128BitRC2 = 401,
			_PKCS_12_pbeWithSHA1And128BitRC4 = 402,
			_PKCS_12_pbeWithSHA1And2KeyTripleDES = 403,
			_PKCS_12_pbeWithSHA1And3KeyTripleDES = 404,
			_PKCS_12_pbeWithSHA1And40BitRC2 = 405,
			_PKCS_12_pbeWithSHA1And40BitRC4 = 406,
			_PKCS_12_PROTECTED_PASSWORD_SECRET_BAG_TYPE_ID = 407,
			_PKINIT_KP_KDC = 408,
			_PKIX_CA_REPOSITORY = 409,
			_PKIX_OCSP_NONCE = 410,
			_PKIX_TIME_STAMPING = 411,
			_QC_EU_COMPLIANCE = 412,
			_QC_SSCD = 413,
			_QC_STATEMENTS_EXT = 414,
			_RDN_TPM_MANUFACTURER = 415,
			_RDN_TPM_MODEL = 416,
			_RDN_TPM_VERSION = 417,
			_REVOKED_LIST_SIGNER = 418,
			_RFC3161_counterSign = 419,
			_ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION = 420,
			_ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION = 421,
			_ROOT_PROGRAM_FLAGS = 422,
			_ROOT_PROGRAM_NO_OCSP_FAILOVER_TO_CRL = 423,
			_RSA_PSPECIFIED = 424,
			_RSAES_OAEP = 425,
			_SUBJECT_INFO_ACCESS = 426,
			_TIMESTAMP_TOKEN = 427,
			_ENROLL_SCEP_ERROR = 428,
			Verisign_MessageType = 429,
			Verisign_PkiStatus = 430,
			Verisign_FailInfo = 431,
			Verisign_SenderNonce = 432,
			Verisign_RecipientNonce = 433,
			Verisign_TransactionID = 434,
			_ENROLL_ATTESTATION_CHALLENGE = 435,
			_ENROLL_ATTESTATION_STATEMENT = 436,
			_ENROLL_ENCRYPTION_ALGORITHM = 437,
			_ENROLL_KSP_NAME = 438,
		}
		public enum WebSecurityLevel : int32
		{
			Unsafe = 0,
			Safe = 1,
		}
		public enum EncodingType : int32
		{
			BASE64HEADER = 0,
			BASE64 = 1,
			BINARY = 2,
			BASE64REQUESTHEADER = 3,
			HEX = 4,
			HEXASCII = 5,
			BASE64_ANY = 6,
			ANY = 7,
			HEX_ANY = 8,
			BASE64X509CRLHEADER = 9,
			HEXADDR = 10,
			HEXASCIIADDR = 11,
			HEXRAW = 12,
			BASE64URI = 13,
			ENCODEMASK = 255,
			CHAIN = 256,
			TEXT = 512,
			PERCENTESCAPE = 134217728,
			HASHDATA = 268435456,
			STRICT = 536870912,
			NOCRLF = 1073741824,
			NOCR = -2147483648,
		}
		public enum PFXExportOptions : int32
		{
			EEOnly = 0,
			ChainNoRoot = 1,
			ChainWithRoot = 2,
		}
		[AllowDuplicates]
		public enum ObjectIdGroupId : int32
		{
			ANY_GROUP_ID = 0,
			HASH_ALG_OID_GROUP_ID = 1,
			ENCRYPT_ALG_OID_GROUP_ID = 2,
			PUBKEY_ALG_OID_GROUP_ID = 3,
			SIGN_ALG_OID_GROUP_ID = 4,
			RDN_ATTR_OID_GROUP_ID = 5,
			EXT_OR_ATTR_OID_GROUP_ID = 6,
			ENHKEY_USAGE_OID_GROUP_ID = 7,
			POLICY_OID_GROUP_ID = 8,
			TEMPLATE_OID_GROUP_ID = 9,
			KDF_OID_GROUP_ID = 10,
			LAST_OID_GROUP_ID = 10,
			FIRST_ALG_OID_GROUP_ID = 1,
			LAST_ALG_OID_GROUP_ID = 4,
			GROUP_ID_MASK = 65535,
			OID_PREFER_CNG_ALGID_FLAG = 1073741824,
			OID_DISABLE_SEARCH_DS_FLAG = -2147483648,
			OID_INFO_OID_GROUP_BIT_LEN_MASK = 268369920,
			OID_INFO_OID_GROUP_BIT_LEN_SHIFT = 16,
			KEY_LENGTH_MASK = 268369920,
		}
		public enum ObjectIdPublicKeyFlags : int32
		{
			ANY = 0,
			SIGN_KEY_FLAG = -2147483648,
			ENCRYPT_KEY_FLAG = 1073741824,
		}
		public enum AlgorithmFlags : int32
		{
			None = 0,
			Wrap = 1,
		}
		public enum X500NameFlags : int32
		{
			NAME_STR_NONE = 0,
			SIMPLE_NAME_STR = 1,
			OID_NAME_STR = 2,
			X500_NAME_STR = 3,
			XML_NAME_STR = 4,
			NAME_STR_SEMICOLON_FLAG = 1073741824,
			NAME_STR_NO_PLUS_FLAG = 536870912,
			NAME_STR_NO_QUOTING_FLAG = 268435456,
			NAME_STR_CRLF_FLAG = 134217728,
			NAME_STR_COMMA_FLAG = 67108864,
			NAME_STR_REVERSE_FLAG = 33554432,
			NAME_STR_FORWARD_FLAG = 16777216,
			NAME_STR_AMBIGUOUS_SEPARATOR_FLAGS = 1275068416,
			NAME_STR_DISABLE_IE4_UTF8_FLAG = 65536,
			NAME_STR_ENABLE_T61_UNICODE_FLAG = 131072,
			NAME_STR_ENABLE_UTF8_UNICODE_FLAG = 262144,
			NAME_STR_FORCE_UTF8_DIR_STR_FLAG = 524288,
			NAME_STR_DISABLE_UTF8_DIR_STR_FLAG = 1048576,
			NAME_STR_ENABLE_PUNYCODE_FLAG = 2097152,
			NAME_STR_DS_ESCAPED = 8388608,
		}
		public enum X509CertificateEnrollmentContext : int32
		{
			None = 0,
			User = 1,
			Machine = 2,
			AdministratorForceMachine = 3,
		}
		public enum EnrollmentEnrollStatus : int32
		{
			ed = 1,
			Pended = 2,
			UIDeferredEnrollmentRequired = 4,
			Error = 16,
			Unknown = 32,
			Skipped = 64,
			Denied = 256,
		}
		public enum EnrollmentSelectionStatus : int32
		{
			No = 0,
			Yes = 1,
		}
		public enum EnrollmentDisplayStatus : int32
		{
			No = 0,
			Yes = 1,
		}
		public enum X509ProviderType : int32
		{
			NONE = 0,
			RSA_FULL = 1,
			RSA_SIG = 2,
			DSS = 3,
			FORTEZZA = 4,
			MS_EXCHANGE = 5,
			SSL = 6,
			RSA_SCHANNEL = 12,
			DSS_DH = 13,
			EC_ECDSA_SIG = 14,
			EC_ECNRA_SIG = 15,
			EC_ECDSA_FULL = 16,
			EC_ECNRA_FULL = 17,
			DH_SCHANNEL = 18,
			SPYRUS_LYNKS = 20,
			RNG = 21,
			INTEL_SEC = 22,
			REPLACE_OWF = 23,
			RSA_AES = 24,
		}
		public enum AlgorithmType : int32
		{
			UNKNOWN_INTERFACE = 0,
			CIPHER_INTERFACE = 1,
			HASH_INTERFACE = 2,
			ASYMMETRIC_ENCRYPTION_INTERFACE = 3,
			SIGNATURE_INTERFACE = 5,
			SECRET_AGREEMENT_INTERFACE = 4,
			RNG_INTERFACE = 6,
			KEY_DERIVATION_INTERFACE = 7,
		}
		public enum AlgorithmOperationFlags : int32
		{
			NO_OPERATION = 0,
			CIPHER_OPERATION = 1,
			HASH_OPERATION = 2,
			ASYMMETRIC_ENCRYPTION_OPERATION = 4,
			SECRET_AGREEMENT_OPERATION = 8,
			SIGNATURE_OPERATION = 16,
			RNG_OPERATION = 32,
			KEY_DERIVATION_OPERATION = 64,
			ANY_ASYMMETRIC_OPERATION = 28,
			PREFER_SIGNATURE_ONLY_OPERATION = 2097152,
			PREFER_NON_SIGNATURE_OPERATION = 4194304,
			EXACT_MATCH_OPERATION = 8388608,
			PREFERENCE_MASK_OPERATION = 14680064,
		}
		public enum X509KeySpec : int32
		{
			NONE = 0,
			KEYEXCHANGE = 1,
			SIGNATURE = 2,
		}
		public enum KeyIdentifierHashAlgorithm : int32
		{
			Default = 0,
			Sha1 = 1,
			CapiSha1 = 2,
			Sha256 = 3,
			HPKP = 5,
		}
		public enum X509PrivateKeyExportFlags : int32
		{
			EXPORT_NONE = 0,
			EXPORT_FLAG = 1,
			PLAINTEXT_EXPORT_FLAG = 2,
			ARCHIVING_FLAG = 4,
			PLAINTEXT_ARCHIVING_FLAG = 8,
		}
		public enum X509PrivateKeyUsageFlags : int32
		{
			USAGES_NONE = 0,
			DECRYPT_FLAG = 1,
			SIGNING_FLAG = 2,
			KEY_AGREEMENT_FLAG = 4,
			KEY_IMPORT_FLAG = 8,
			ALL_USAGES = 16777215,
		}
		public enum X509PrivateKeyProtection : int32
		{
			NO_PROTECTION_FLAG = 0,
			PROTECT_KEY_FLAG = 1,
			FORCE_HIGH_PROTECTION_FLAG = 2,
			FINGERPRINT_PROTECTION_FLAG = 4,
			APPCONTAINER_ACCESS_MEDIUM_FLAG = 8,
		}
		public enum X509PrivateKeyVerify : int32
		{
			None = 0,
			Silent = 1,
			SmartCardNone = 2,
			SmartCardSilent = 3,
			AllowUI = 4,
		}
		public enum X509HardwareKeyUsageFlags : int32
		{
			PCP_NONE = 0,
			TPM12_PROVIDER = 65536,
			PCP_SIGNATURE_KEY = 1,
			PCP_ENCRYPTION_KEY = 2,
			PCP_GENERIC_KEY = 3,
			PCP_STORAGE_KEY = 4,
			PCP_IDENTITY_KEY = 8,
		}
		public enum X509KeyParametersExportType : int32
		{
			NONE = 0,
			NAME_FOR_ENCODE_FLAG = 536870912,
			PARAMETERS_FOR_ENCODE_FLAG = 268435456,
		}
		[AllowDuplicates]
		public enum X509KeyUsageFlags : int32
		{
			NO_KEY_USAGE = 0,
			DIGITAL_SIGNATURE_KEY_USAGE = 128,
			NON_REPUDIATION_KEY_USAGE = 64,
			KEY_ENCIPHERMENT_KEY_USAGE = 32,
			DATA_ENCIPHERMENT_KEY_USAGE = 16,
			KEY_AGREEMENT_KEY_USAGE = 8,
			KEY_CERT_SIGN_KEY_USAGE = 4,
			OFFLINE_CRL_SIGN_KEY_USAGE = 2,
			CRL_SIGN_KEY_USAGE = 2,
			ENCIPHER_ONLY_KEY_USAGE = 1,
			DECIPHER_ONLY_KEY_USAGE = 32768,
		}
		public enum AlternativeNameType : int32
		{
			UNKNOWN = 0,
			OTHER_NAME = 1,
			RFC822_NAME = 2,
			DNS_NAME = 3,
			X400_ADDRESS = 4,
			DIRECTORY_NAME = 5,
			EDI_PARTY_NAME = 6,
			URL = 7,
			IP_ADDRESS = 8,
			REGISTERED_ID = 9,
			GUID = 10,
			USER_PRINCIPLE_NAME = 11,
		}
		public enum PolicyQualifierType : int32
		{
			Unknown = 0,
			Url = 1,
			UserNotice = 2,
			Flags = 3,
		}
		public enum RequestClientInfoClientId : int32
		{
			None = 0,
			XEnroll2003 = 1,
			AutoEnroll2003 = 2,
			Wizard2003 = 3,
			CertReq2003 = 4,
			DefaultRequest = 5,
			AutoEnroll = 6,
			RequestWizard = 7,
			EOBO = 8,
			CertReq = 9,
			Test = 10,
			WinRT = 11,
			UserStart = 1000,
		}
		[AllowDuplicates]
		public enum CERTENROLL_PROPERTYID : int32
		{
			PROPERTYID_NONE = 0,
			CERT_KEY_PROV_HANDLE_PROP_ID = 1,
			CERT_KEY_PROV_INFO_PROP_ID = 2,
			CERT_SHA1_HASH_PROP_ID = 3,
			CERT_MD5_HASH_PROP_ID = 4,
			CERT_HASH_PROP_ID = 3,
			CERT_KEY_CONTEXT_PROP_ID = 5,
			CERT_KEY_SPEC_PROP_ID = 6,
			CERT_IE30_RESERVED_PROP_ID = 7,
			CERT_PUBKEY_HASH_RESERVED_PROP_ID = 8,
			CERT_ENHKEY_USAGE_PROP_ID = 9,
			CERT_CTL_USAGE_PROP_ID = 9,
			CERT_NEXT_UPDATE_LOCATION_PROP_ID = 10,
			CERT_FRIENDLY_NAME_PROP_ID = 11,
			CERT_PVK_FILE_PROP_ID = 12,
			CERT_DESCRIPTION_PROP_ID = 13,
			CERT_ACCESS_STATE_PROP_ID = 14,
			CERT_SIGNATURE_HASH_PROP_ID = 15,
			CERT_SMART_CARD_DATA_PROP_ID = 16,
			CERT_EFS_PROP_ID = 17,
			CERT_FORTEZZA_DATA_PROP_ID = 18,
			CERT_ARCHIVED_PROP_ID = 19,
			CERT_KEY_IDENTIFIER_PROP_ID = 20,
			CERT_AUTO_ENROLL_PROP_ID = 21,
			CERT_PUBKEY_ALG_PARA_PROP_ID = 22,
			CERT_CROSS_CERT_DIST_POINTS_PROP_ID = 23,
			CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID = 24,
			CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID = 25,
			CERT_ENROLLMENT_PROP_ID = 26,
			CERT_DATE_STAMP_PROP_ID = 27,
			CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 28,
			CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 29,
			CERT_EXTENDED_ERROR_INFO_PROP_ID = 30,
			CERT_RENEWAL_PROP_ID = 64,
			CERT_ARCHIVED_KEY_HASH_PROP_ID = 65,
			CERT_AUTO_ENROLL_RETRY_PROP_ID = 66,
			CERT_AIA_URL_RETRIEVED_PROP_ID = 67,
			CERT_AUTHORITY_INFO_ACCESS_PROP_ID = 68,
			CERT_BACKED_UP_PROP_ID = 69,
			CERT_OCSP_RESPONSE_PROP_ID = 70,
			CERT_REQUEST_ORIGINATOR_PROP_ID = 71,
			CERT_SOURCE_LOCATION_PROP_ID = 72,
			CERT_SOURCE_URL_PROP_ID = 73,
			CERT_NEW_KEY_PROP_ID = 74,
			CERT_OCSP_CACHE_PREFIX_PROP_ID = 75,
			CERT_SMART_CARD_ROOT_INFO_PROP_ID = 76,
			CERT_NO_AUTO_EXPIRE_CHECK_PROP_ID = 77,
			CERT_NCRYPT_KEY_HANDLE_PROP_ID = 78,
			CERT_HCRYPTPROV_OR_NCRYPT_KEY_HANDLE_PROP_ID = 79,
			CERT_SUBJECT_INFO_ACCESS_PROP_ID = 80,
			CERT_CA_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 81,
			CERT_CA_DISABLE_CRL_PROP_ID = 82,
			CERT_ROOT_PROGRAM_CERT_POLICIES_PROP_ID = 83,
			CERT_ROOT_PROGRAM_NAME_CONSTRAINTS_PROP_ID = 84,
			CERT_SUBJECT_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 85,
			CERT_SUBJECT_DISABLE_CRL_PROP_ID = 86,
			CERT_CEP_PROP_ID = 87,
			CERT_SIGN_HASH_CNG_ALG_PROP_ID = 89,
			CERT_SCARD_PIN_ID_PROP_ID = 90,
			CERT_SCARD_PIN_INFO_PROP_ID = 91,
			CERT_SUBJECT_PUB_KEY_BIT_LENGTH_PROP_ID = 92,
			CERT_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 93,
			CERT_ISSUER_PUB_KEY_BIT_LENGTH_PROP_ID = 94,
			CERT_ISSUER_CHAIN_SIGN_HASH_CNG_ALG_PROP_ID = 95,
			CERT_ISSUER_CHAIN_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 96,
			CERT_NO_EXPIRE_NOTIFICATION_PROP_ID = 97,
			CERT_AUTH_ROOT_SHA256_HASH_PROP_ID = 98,
			CERT_NCRYPT_KEY_HANDLE_TRANSFER_PROP_ID = 99,
			CERT_HCRYPTPROV_TRANSFER_PROP_ID = 100,
			CERT_SMART_CARD_READER_PROP_ID = 101,
			CERT_SEND_AS_TRUSTED_ISSUER_PROP_ID = 102,
			CERT_KEY_REPAIR_ATTEMPTED_PROP_ID = 103,
			CERT_DISALLOWED_FILETIME_PROP_ID = 104,
			CERT_ROOT_PROGRAM_CHAIN_POLICIES_PROP_ID = 105,
			CERT_SMART_CARD_READER_NON_REMOVABLE_PROP_ID = 106,
			CERT_SHA256_HASH_PROP_ID = 107,
			CERT_SCEP_SERVER_CERTS_PROP_ID = 108,
			CERT_SCEP_RA_SIGNATURE_CERT_PROP_ID = 109,
			CERT_SCEP_RA_ENCRYPTION_CERT_PROP_ID = 110,
			CERT_SCEP_CA_CERT_PROP_ID = 111,
			CERT_SCEP_SIGNER_CERT_PROP_ID = 112,
			CERT_SCEP_NONCE_PROP_ID = 113,
			CERT_SCEP_ENCRYPT_HASH_CNG_ALG_PROP_ID = 114,
			CERT_SCEP_FLAGS_PROP_ID = 115,
			CERT_SCEP_GUID_PROP_ID = 116,
			CERT_SERIALIZABLE_KEY_CONTEXT_PROP_ID = 117,
			CERT_ISOLATED_KEY_PROP_ID = 118,
			CERT_SERIAL_CHAIN_PROP_ID = 119,
			CERT_KEY_CLASSIFICATION_PROP_ID = 120,
			CERT_DISALLOWED_ENHKEY_USAGE_PROP_ID = 122,
			CERT_NONCOMPLIANT_ROOT_URL_PROP_ID = 123,
			CERT_PIN_SHA256_HASH_PROP_ID = 124,
			CERT_CLR_DELETE_KEY_PROP_ID = 125,
			CERT_NOT_BEFORE_FILETIME_PROP_ID = 126,
			CERT_CERT_NOT_BEFORE_ENHKEY_USAGE_PROP_ID = 127,
			CERT_FIRST_RESERVED_PROP_ID = 128,
			CERT_LAST_RESERVED_PROP_ID = 32767,
			CERT_FIRST_USER_PROP_ID = 32768,
			CERT_LAST_USER_PROP_ID = 65535,
			CERT_STORE_LOCALIZED_NAME_PROP_ID = 4096,
		}
		public enum EnrollmentPolicyServerPropertyFlags : int32
		{
			None = 0,
			PolicyServer = 1,
		}
		public enum PolicyServerUrlFlags : int32
		{
			None = 0,
			LocationGroupPolicy = 1,
			LocationRegistry = 2,
			UseClientId = 4,
			AutoEnrollmentEnabled = 16,
			AllowUnTrustedCA = 32,
		}
		public enum EnrollmentTemplateProperty : int32
		{
			CommonName = 1,
			FriendlyName = 2,
			EKUs = 3,
			CryptoProviders = 4,
			MajorRevision = 5,
			Description = 6,
			KeySpec = 7,
			SchemaVersion = 8,
			MinorRevision = 9,
			RASignatureCount = 10,
			MinimumKeySize = 11,
			OID = 12,
			Supersede = 13,
			RACertificatePolicies = 14,
			RAEKUs = 15,
			CertificatePolicies = 16,
			V1ApplicationPolicy = 17,
			AsymmetricAlgorithm = 18,
			KeySecurityDescriptor = 19,
			SymmetricAlgorithm = 20,
			SymmetricKeyLength = 21,
			HashAlgorithm = 22,
			KeyUsage = 23,
			EnrollmentFlags = 24,
			SubjectNameFlags = 25,
			PrivateKeyFlags = 26,
			GeneralFlags = 27,
			SecurityDescriptor = 28,
			Extensions = 29,
			ValidityPeriod = 30,
			RenewalPeriod = 31,
		}
		public enum CommitTemplateFlags : int32
		{
			SaveTemplateGenerateOID = 1,
			SaveTemplateUseCurrentOID = 2,
			SaveTemplateOverwrite = 3,
			DeleteTemplate = 4,
		}
		public enum EnrollmentCAProperty : int32
		{
			CommonName = 1,
			DistinguishedName = 2,
			SanitizedName = 3,
			SanitizedShortName = 4,
			DNSName = 5,
			CertificateTypes = 6,
			Certificate = 7,
			Description = 8,
			WebServers = 9,
			SiteName = 10,
			Security = 11,
			RenewalOnly = 12,
		}
		public enum X509EnrollmentPolicyLoadOption : int32
		{
			Default = 0,
			CacheOnly = 1,
			Reload = 2,
			RegisterForADChanges = 4,
		}
		public enum EnrollmentPolicyFlags : int32
		{
			GroupPolicyList = 2,
			UserServerList = 4,
		}
		public enum PolicyServerUrlPropertyID : int32
		{
			PolicyID = 0,
			FriendlyName = 1,
		}
		public enum X509EnrollmentPolicyExportFlags : int32
		{
			Templates = 1,
			OIDs = 2,
			CAs = 4,
		}
		public enum X509RequestType : int32
		{
			Any = 0,
			Pkcs10 = 1,
			Pkcs7 = 2,
			Cmc = 3,
			Certificate = 4,
		}
		public enum X509RequestInheritOptions : int32
		{
			Default = 0,
			NewDefaultKey = 1,
			NewSimilarKey = 2,
			PrivateKey = 3,
			PublicKey = 4,
			KeyMask = 15,
			None = 16,
			RenewalCertificateFlag = 32,
			TemplateFlag = 64,
			SubjectFlag = 128,
			ExtensionsFlag = 256,
			SubjectAltNameFlag = 512,
			ValidityPeriodFlag = 1024,
			Reserved80000000 = -2147483648,
		}
		public enum InnerRequestLevel : int32
		{
			Innermost = 0,
			Next = 1,
		}
		public enum Pkcs10AllowedSignatureTypes : int32
		{
			KeySignature = 1,
			NullSignature = 2,
		}
		public enum KeyAttestationClaimType : int32
		{
			NONE = 0,
			AUTHORITY_AND_SUBJECT = 3,
			AUTHORITY_ONLY = 1,
			SUBJECT_ONLY = 2,
			UNKNOWN = 4096,
		}
		public enum InstallResponseRestrictionFlags : int32
		{
			None = 0,
			NoOutstandingRequest = 1,
			UntrustedCertificate = 2,
			UntrustedRoot = 4,
		}
		public enum WebEnrollmentFlags : int32
		{
			EnrollPrompt = 1,
		}
		public enum CRLRevocationReason : int32
		{
			UNSPECIFIED = 0,
			KEY_COMPROMISE = 1,
			CA_COMPROMISE = 2,
			AFFILIATION_CHANGED = 3,
			SUPERSEDED = 4,
			CESSATION_OF_OPERATION = 5,
			CERTIFICATE_HOLD = 6,
			REMOVE_FROM_CRL = 8,
			PRIVILEGE_WITHDRAWN = 9,
			AA_COMPROMISE = 10,
		}
		public enum X509SCEPProcessMessageFlags : int32
		{
			Default = 0,
			SkipCertInstall = 1,
		}
		public enum DelayRetryAction : int32
		{
			Unknown = 0,
			None = 1,
			Short = 2,
			Long = 3,
			Success = 4,
			PastSuccess = 5,
		}
		public enum X509CertificateTemplateGeneralFlag : int32
		{
			MachineType = 64,
			CA = 128,
			CrossCA = 2048,
			Default = 65536,
			Modified = 131072,
			DonotPersist = 4096,
		}
		public enum X509CertificateTemplateEnrollmentFlag : int32
		{
			IncludeSymmetricAlgorithms = 1,
			PendAllRequests = 2,
			PublishToKRAContainer = 4,
			PublishToDS = 8,
			AutoEnrollmentCheckUserDSCertificate = 16,
			AutoEnrollment = 32,
			DomainAuthenticationNotRequired = 128,
			PreviousApprovalValidateReenrollment = 64,
			UserInteractionRequired = 256,
			AddTemplateName = 512,
			RemoveInvalidCertificateFromPersonalStore = 1024,
			AllowEnrollOnBehalfOf = 2048,
			AddOCSPNoCheck = 4096,
			ReuseKeyOnFullSmartCard = 8192,
			NoRevocationInfoInCerts = 16384,
			IncludeBasicConstraintsForEECerts = 32768,
			PreviousApprovalKeyBasedValidateReenrollment = 65536,
			CertificateIssuancePoliciesFromRequest = 131072,
			SkipAutoRenewal = 262144,
		}
		public enum X509CertificateTemplateSubjectNameFlag : int32
		{
			NameEnrolleeSupplies = 1,
			NameRequireDirectoryPath = -2147483648,
			NameRequireCommonName = 1073741824,
			NameRequireEmail = 536870912,
			NameRequireDNS = 268435456,
			NameAndAlternativeNameOldCertSupplies = 8,
			AlternativeNameEnrolleeSupplies = 65536,
			AlternativeNameRequireDirectoryGUID = 16777216,
			AlternativeNameRequireUPN = 33554432,
			AlternativeNameRequireEmail = 67108864,
			AlternativeNameRequireSPN = 8388608,
			AlternativeNameRequireDNS = 134217728,
			AlternativeNameRequireDomainDNS = 4194304,
		}
		[AllowDuplicates]
		public enum X509CertificateTemplatePrivateKeyFlag : int32
		{
			RequireArchival = 1,
			Exportable = 16,
			RequireStrongKeyProtection = 32,
			RequireAlternateSignatureAlgorithm = 64,
			RequireSameKeyRenewal = 128,
			UseLegacyProvider = 256,
			EKTrustOnUse = 512,
			EKValidateCert = 1024,
			EKValidateKey = 2048,
			AttestNone = 0,
			AttestPreferred = 4096,
			AttestRequired = 8192,
			AttestMask = 12288,
			AttestWithoutPolicy = 16384,
			ServerVersionMask = 983040,
			ServerVersionShift = 16,
			HelloKspKey = 1048576,
			HelloLogonKey = 2097152,
			ClientVersionMask = 251658240,
			ClientVersionShift = 24,
		}
		public enum ImportPFXFlags : int32
		{
			None = 0,
			MachineContext = 1,
			ForceOverwrite = 2,
			Silent = 4,
			SaveProperties = 8,
			Exportable = 16,
			ExportableEncrypted = 32,
			NoUserProtected = 64,
			UserProtected = 128,
			UserProtectedHigh = 256,
			InstallCertificate = 512,
			InstallChain = 1024,
			InstallChainAndRoot = 2048,
		}
		public enum ENUM_CATYPES : int32
		{
			ENTERPRISE_ROOTCA = 0,
			ENTERPRISE_SUBCA = 1,
			STANDALONE_ROOTCA = 3,
			STANDALONE_SUBCA = 4,
			UNKNOWN_CA = 5,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT FNCERTSRVISSERVERONLINEW(PWSTR pwszServerName, BOOL* pfServerOnline);
		public function HRESULT FNCERTSRVBACKUPGETDYNAMICFILELISTW(void* hbc, uint16** ppwszzFileList, uint32* pcbSize);
		public function HRESULT FNCERTSRVBACKUPPREPAREW(PWSTR pwszServerName, uint32 grbitJet, uint32 dwBackupFlags, void** phbc);
		public function HRESULT FNCERTSRVBACKUPGETDATABASENAMESW(void* hbc, uint16** ppwszzAttachmentInformation, uint32* pcbSize);
		public function HRESULT FNCERTSRVBACKUPOPENFILEW(void* hbc, PWSTR pwszAttachmentName, uint32 cbReadHintSize, LARGE_INTEGER* pliFileSize);
		public function HRESULT FNCERTSRVBACKUPREAD(void* hbc, void* pvBuffer, uint32 cbBuffer, uint32* pcbRead);
		public function HRESULT FNCERTSRVBACKUPCLOSE(void* hbc);
		public function HRESULT FNCERTSRVBACKUPGETBACKUPLOGSW(void* hbc, uint16** ppwszzBackupLogFiles, uint32* pcbSize);
		public function HRESULT FNCERTSRVBACKUPTRUNCATELOGS(void* hbc);
		public function HRESULT FNCERTSRVBACKUPEND(void* hbc);
		public function void FNCERTSRVBACKUPFREE(void* pv);
		public function HRESULT FNCERTSRVRESTOREGETDATABASELOCATIONSW(void* hbc, uint16** ppwszzDatabaseLocationList, uint32* pcbSize);
		public function HRESULT FNCERTSRVRESTOREPREPAREW(PWSTR pwszServerName, uint32 dwRestoreFlags, void** phbc);
		public function HRESULT FNCERTSRVRESTOREREGISTERW(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, CSEDB_RSTMAPW* rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
		public function HRESULT FNCERTSRVRESTOREREGISTERCOMPLETE(void* hbc, HRESULT hrRestoreState);
		public function HRESULT FNCERTSRVRESTOREEND(void* hbc);
		public function HRESULT FNCERTSRVSERVERCONTROLW(PWSTR pwszServerName, uint32 dwControlFlags, uint32* pcbOut, uint8** ppbOut);
		public function HRESULT FNIMPORTPFXTOPROVIDER(HWND hWndParent, uint8* pbPFX, uint32 cbPFX, ImportPFXFlags ImportFlags, PWSTR pwszPassword, PWSTR pwszProviderName, PWSTR pwszReaderName, PWSTR pwszContainerNamePrefix, PWSTR pwszPin, PWSTR pwszFriendlyName, uint32* pcCertOut, CERT_CONTEXT*** prgpCertOut);
		public function void FNIMPORTPFXTOPROVIDERFREEDATA(uint32 cCert, CERT_CONTEXT** rgpCert);
		
		// --- Structs ---
		
		[CRepr]
		public struct CSEDB_RSTMAPW
		{
			public PWSTR pwszDatabaseName;
			public PWSTR pwszNewDatabaseName;
		}
		[CRepr]
		public struct CERTTRANSBLOB
		{
			public uint32 cb;
			public uint8* pb;
		}
		[CRepr]
		public struct CERTVIEWRESTRICTION
		{
			public uint32 ColumnIndex;
			public int32 SeekOperator;
			public int32 SortOrder;
			public uint8* pbValue;
			public uint32 cbValue;
		}
		[CRepr]
		public struct CAINFO
		{
			public uint32 cbSize;
			public ENUM_CATYPES CAType;
			public uint32 cCASignatureCerts;
			public uint32 cCAExchangeCerts;
			public uint32 cExitModules;
			public int32 lPropIdMax;
			public int32 lRoleSeparationEnabled;
			public uint32 cKRACertUsedCount;
			public uint32 cKRACertCount;
			public uint32 fAdvancedServer;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CCertAdmin = .(0x37eabaf0, 0x7fb6, 0x11d0, 0x88, 0x17, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertView = .(0xa12d0f7a, 0x1e84, 0x11d1, 0x9b, 0xd6, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		public const Guid CLSID_OCSPPropertyCollection = .(0xf935a528, 0xba8a, 0x4dd9, 0xba, 0x79, 0xf2, 0x83, 0x27, 0x5c, 0xb2, 0xde);
		public const Guid CLSID_OCSPAdmin = .(0xd3f73511, 0x92c9, 0x47cb, 0x8f, 0xf2, 0x8d, 0x89, 0x1a, 0x7c, 0x4d, 0xe4);
		public const Guid CLSID_CCertGetConfig = .(0xc6cc49b0, 0xce17, 0x11d0, 0x88, 0x33, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertConfig = .(0x372fce38, 0x4324, 0x11d0, 0x88, 0x10, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertRequest = .(0x98aff3f0, 0x5524, 0x11d0, 0x88, 0x12, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertServerPolicy = .(0xaa000926, 0xffbe, 0x11cf, 0x88, 0x00, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertServerExit = .(0x4c4a5e40, 0x732c, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertEncodeStringArray = .(0x19a76fe0, 0x7494, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertEncodeLongArray = .(0x4e0680a0, 0xa0a2, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertEncodeDateArray = .(0x301f77b0, 0xa470, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertEncodeCRLDistInfo = .(0x01fa60a0, 0xbbff, 0x11d0, 0x88, 0x25, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		public const Guid CLSID_CCertEncodeAltName = .(0x1cfc4cda, 0x1271, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		public const Guid CLSID_CCertEncodeBitString = .(0x6d6b3cd8, 0x1278, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		public const Guid CLSID_CObjectId = .(0x884e2000, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CObjectIds = .(0x884e2001, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CBinaryConverter = .(0x884e2002, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX500DistinguishedName = .(0x884e2003, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCspInformation = .(0x884e2007, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCspInformations = .(0x884e2008, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCspStatus = .(0x884e2009, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509PublicKey = .(0x884e200b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509PrivateKey = .(0x884e200c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509EndorsementKey = .(0x11a25a1d, 0xb9a3, 0x4edd, 0xaf, 0x83, 0x3b, 0x59, 0xad, 0xbe, 0xd3, 0x61);
		public const Guid CLSID_CX509Extension = .(0x884e200d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509Extensions = .(0x884e200e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionKeyUsage = .(0x884e200f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionEnhancedKeyUsage = .(0x884e2010, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionTemplateName = .(0x884e2011, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionTemplate = .(0x884e2012, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CAlternativeName = .(0x884e2013, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CAlternativeNames = .(0x884e2014, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionAlternativeNames = .(0x884e2015, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionBasicConstraints = .(0x884e2016, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionSubjectKeyIdentifier = .(0x884e2017, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionAuthorityKeyIdentifier = .(0x884e2018, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CSmimeCapability = .(0x884e2019, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CSmimeCapabilities = .(0x884e201a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionSmimeCapabilities = .(0x884e201b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CPolicyQualifier = .(0x884e201c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CPolicyQualifiers = .(0x884e201d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertificatePolicy = .(0x884e201e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertificatePolicies = .(0x884e201f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionCertificatePolicies = .(0x884e2020, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509ExtensionMSApplicationPolicies = .(0x884e2021, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509Attribute = .(0x884e2022, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509Attributes = .(0x884e2023, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeExtensions = .(0x884e2024, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeClientId = .(0x884e2025, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeRenewalCertificate = .(0x884e2026, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeArchiveKey = .(0x884e2027, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeArchiveKeyHash = .(0x884e2028, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeOSVersion = .(0x884e202a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509AttributeCspProvider = .(0x884e202b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCryptAttribute = .(0x884e202c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCryptAttributes = .(0x884e202d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertProperty = .(0x884e202e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertProperties = .(0x884e202f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyFriendlyName = .(0x884e2030, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyDescription = .(0x884e2031, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyAutoEnroll = .(0x884e2032, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyRequestOriginator = .(0x884e2033, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertySHA1Hash = .(0x884e2034, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyKeyProvInfo = .(0x884e2036, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyArchived = .(0x884e2037, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyBackedUp = .(0x884e2038, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyEnrollment = .(0x884e2039, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyRenewal = .(0x884e203a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyArchivedKeyHash = .(0x884e203b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertPropertyEnrollmentPolicyServer = .(0x884e204c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CSignerCertificate = .(0x884e203d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509NameValuePair = .(0x884e203f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CCertificateAttestationChallenge = .(0x1362ada1, 0xeb60, 0x456a, 0xb6, 0xe1, 0x11, 0x80, 0x50, 0xdb, 0x74, 0x1b);
		public const Guid CLSID_CX509CertificateRequestPkcs10 = .(0x884e2042, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateRequestCertificate = .(0x884e2043, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateRequestPkcs7 = .(0x884e2044, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateRequestCmc = .(0x884e2045, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509Enrollment = .(0x884e2046, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509EnrollmentWebClassFactory = .(0x884e2049, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509EnrollmentHelper = .(0x884e2050, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509MachineEnrollmentFactory = .(0x884e2051, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509EnrollmentPolicyActiveDirectory = .(0x91f39027, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509EnrollmentPolicyWebService = .(0x91f39028, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509PolicyServerListManager = .(0x91f39029, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509PolicyServerUrl = .(0x91f3902a, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateTemplateADWritable = .(0x8336e323, 0x2e6a, 0x4a04, 0x93, 0x7c, 0x54, 0x8f, 0x68, 0x18, 0x39, 0xb3);
		public const Guid CLSID_CX509CertificateRevocationListEntry = .(0x884e205e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateRevocationListEntries = .(0x884e205f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509CertificateRevocationList = .(0x884e2060, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509SCEPEnrollment = .(0x884e2061, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CX509SCEPEnrollmentHelper = .(0x884e2062, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		public const Guid CLSID_CEnroll2 = .(0x127698e4, 0xe730, 0x4e5c, 0xa2, 0xb1, 0x21, 0x49, 0x0a, 0x70, 0xc8, 0xa1);
		public const Guid CLSID_CEnroll = .(0x43f8f289, 0x7a20, 0x11d0, 0x8f, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IEnumCERTVIEWCOLUMN : IDispatch
		{
			public const new Guid IID = .(0x9c735be2, 0x57a5, 0x11d1, 0x9b, 0xdb, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(int32* pIndex) mut
			{
				return VT.Next(&this, pIndex);
			}
			public HRESULT GetName(BSTR* pstrOut) mut
			{
				return VT.GetName(&this, pstrOut);
			}
			public HRESULT GetDisplayName(BSTR* pstrOut) mut
			{
				return VT.GetDisplayName(&this, pstrOut);
			}
			public HRESULT ComGetType(int32* pType) mut
			{
				return VT.ComGetType(&this, pType);
			}
			public HRESULT IsIndexed(int32* pIndexed) mut
			{
				return VT.IsIndexed(&this, pIndexed);
			}
			public HRESULT GetMaxLength(int32* pMaxLength) mut
			{
				return VT.GetMaxLength(&this, pMaxLength);
			}
			public HRESULT GetValue(ENUM_CERT_COLUMN_VALUE_FLAGS Flags, VARIANT* pvarValue) mut
			{
				return VT.GetValue(&this, Flags, pvarValue);
			}
			public HRESULT Skip(int32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumCERTVIEWCOLUMN** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, int32* pIndex) Next;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, BSTR* pstrOut) GetName;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, BSTR* pstrOut) GetDisplayName;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, int32* pType) ComGetType;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, int32* pIndexed) IsIndexed;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, int32* pMaxLength) GetMaxLength;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, VARIANT* pvarValue) GetValue;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, int32 celt) Skip;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self) Reset;
				public new function HRESULT(IEnumCERTVIEWCOLUMN *self, IEnumCERTVIEWCOLUMN** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCERTVIEWATTRIBUTE : IDispatch
		{
			public const new Guid IID = .(0xe77db656, 0x7653, 0x11d1, 0x9b, 0xde, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(int32* pIndex) mut
			{
				return VT.Next(&this, pIndex);
			}
			public HRESULT GetName(BSTR* pstrOut) mut
			{
				return VT.GetName(&this, pstrOut);
			}
			public HRESULT GetValue(BSTR* pstrOut) mut
			{
				return VT.GetValue(&this, pstrOut);
			}
			public HRESULT Skip(int32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumCERTVIEWATTRIBUTE** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self, int32* pIndex) Next;
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self, BSTR* pstrOut) GetName;
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self, BSTR* pstrOut) GetValue;
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self, int32 celt) Skip;
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self) Reset;
				public new function HRESULT(IEnumCERTVIEWATTRIBUTE *self, IEnumCERTVIEWATTRIBUTE** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCERTVIEWEXTENSION : IDispatch
		{
			public const new Guid IID = .(0xe7dd1466, 0x7653, 0x11d1, 0x9b, 0xde, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(int32* pIndex) mut
			{
				return VT.Next(&this, pIndex);
			}
			public HRESULT GetName(BSTR* pstrOut) mut
			{
				return VT.GetName(&this, pstrOut);
			}
			public HRESULT ComGetFlags(int32* pFlags) mut
			{
				return VT.ComGetFlags(&this, pFlags);
			}
			public HRESULT GetValue(CERT_PROPERTY_TYPE Type, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, VARIANT* pvarValue) mut
			{
				return VT.GetValue(&this, Type, Flags, pvarValue);
			}
			public HRESULT Skip(int32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumCERTVIEWEXTENSION** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, int32* pIndex) Next;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, BSTR* pstrOut) GetName;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, int32* pFlags) ComGetFlags;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, CERT_PROPERTY_TYPE Type, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, VARIANT* pvarValue) GetValue;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, int32 celt) Skip;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self) Reset;
				public new function HRESULT(IEnumCERTVIEWEXTENSION *self, IEnumCERTVIEWEXTENSION** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCERTVIEWROW : IDispatch
		{
			public const new Guid IID = .(0xd1157f4c, 0x5af2, 0x11d1, 0x9b, 0xdc, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(int32* pIndex) mut
			{
				return VT.Next(&this, pIndex);
			}
			public HRESULT EnumCertViewColumn(IEnumCERTVIEWCOLUMN** ppenum) mut
			{
				return VT.EnumCertViewColumn(&this, ppenum);
			}
			public HRESULT EnumCertViewAttribute(int32 Flags, IEnumCERTVIEWATTRIBUTE** ppenum) mut
			{
				return VT.EnumCertViewAttribute(&this, Flags, ppenum);
			}
			public HRESULT EnumCertViewExtension(int32 Flags, IEnumCERTVIEWEXTENSION** ppenum) mut
			{
				return VT.EnumCertViewExtension(&this, Flags, ppenum);
			}
			public HRESULT Skip(int32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumCERTVIEWROW** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			public HRESULT GetMaxIndex(int32* pIndex) mut
			{
				return VT.GetMaxIndex(&this, pIndex);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEnumCERTVIEWROW *self, int32* pIndex) Next;
				public new function HRESULT(IEnumCERTVIEWROW *self, IEnumCERTVIEWCOLUMN** ppenum) EnumCertViewColumn;
				public new function HRESULT(IEnumCERTVIEWROW *self, int32 Flags, IEnumCERTVIEWATTRIBUTE** ppenum) EnumCertViewAttribute;
				public new function HRESULT(IEnumCERTVIEWROW *self, int32 Flags, IEnumCERTVIEWEXTENSION** ppenum) EnumCertViewExtension;
				public new function HRESULT(IEnumCERTVIEWROW *self, int32 celt) Skip;
				public new function HRESULT(IEnumCERTVIEWROW *self) Reset;
				public new function HRESULT(IEnumCERTVIEWROW *self, IEnumCERTVIEWROW** ppenum) Clone;
				public new function HRESULT(IEnumCERTVIEWROW *self, int32* pIndex) GetMaxIndex;
			}
		}
		[CRepr]
		public struct ICertView : IDispatch
		{
			public const new Guid IID = .(0xc3fac344, 0x1e84, 0x11d1, 0x9b, 0xd6, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenConnection(BSTR strConfig) mut
			{
				return VT.OpenConnection(&this, strConfig);
			}
			public HRESULT EnumCertViewColumn(CVRC_COLUMN fResultColumn, IEnumCERTVIEWCOLUMN** ppenum) mut
			{
				return VT.EnumCertViewColumn(&this, fResultColumn, ppenum);
			}
			public HRESULT GetColumnCount(CVRC_COLUMN fResultColumn, int32* pcColumn) mut
			{
				return VT.GetColumnCount(&this, fResultColumn, pcColumn);
			}
			public HRESULT GetColumnIndex(CVRC_COLUMN fResultColumn, BSTR strColumnName, int32* pColumnIndex) mut
			{
				return VT.GetColumnIndex(&this, fResultColumn, strColumnName, pColumnIndex);
			}
			public HRESULT SetResultColumnCount(int32 cResultColumn) mut
			{
				return VT.SetResultColumnCount(&this, cResultColumn);
			}
			public HRESULT SetResultColumn(int32 ColumnIndex) mut
			{
				return VT.SetResultColumn(&this, ColumnIndex);
			}
			public HRESULT SetRestriction(CERT_VIEW_COLUMN_INDEX ColumnIndex, CERT_VIEW_SEEK_OPERATOR_FLAGS SeekOperator, int32 SortOrder, VARIANT* pvarValue) mut
			{
				return VT.SetRestriction(&this, ColumnIndex, SeekOperator, SortOrder, pvarValue);
			}
			public HRESULT OpenView(IEnumCERTVIEWROW** ppenum) mut
			{
				return VT.OpenView(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertView *self, BSTR strConfig) OpenConnection;
				public new function HRESULT(ICertView *self, CVRC_COLUMN fResultColumn, IEnumCERTVIEWCOLUMN** ppenum) EnumCertViewColumn;
				public new function HRESULT(ICertView *self, CVRC_COLUMN fResultColumn, int32* pcColumn) GetColumnCount;
				public new function HRESULT(ICertView *self, CVRC_COLUMN fResultColumn, BSTR strColumnName, int32* pColumnIndex) GetColumnIndex;
				public new function HRESULT(ICertView *self, int32 cResultColumn) SetResultColumnCount;
				public new function HRESULT(ICertView *self, int32 ColumnIndex) SetResultColumn;
				public new function HRESULT(ICertView *self, CERT_VIEW_COLUMN_INDEX ColumnIndex, CERT_VIEW_SEEK_OPERATOR_FLAGS SeekOperator, int32 SortOrder, VARIANT* pvarValue) SetRestriction;
				public new function HRESULT(ICertView *self, IEnumCERTVIEWROW** ppenum) OpenView;
			}
		}
		[CRepr]
		public struct ICertView2 : ICertView
		{
			public const new Guid IID = .(0xd594b282, 0x8851, 0x4b61, 0x9c, 0x66, 0x3e, 0xda, 0xdf, 0x84, 0x88, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTable(CVRC_TABLE Table) mut
			{
				return VT.SetTable(&this, Table);
			}
			[CRepr]
			public struct VTable : ICertView.VTable
			{
				public new function HRESULT(ICertView2 *self, CVRC_TABLE Table) SetTable;
			}
		}
		[CRepr]
		public struct ICertAdmin : IDispatch
		{
			public const new Guid IID = .(0x34df6950, 0x7fb6, 0x11d0, 0x88, 0x17, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsValidCertificate(BSTR strConfig, BSTR strSerialNumber, int32* pDisposition) mut
			{
				return VT.IsValidCertificate(&this, strConfig, strSerialNumber, pDisposition);
			}
			public HRESULT GetRevocationReason(int32* pReason) mut
			{
				return VT.GetRevocationReason(&this, pReason);
			}
			public HRESULT RevokeCertificate(BSTR strConfig, BSTR strSerialNumber, int32 Reason, double Date) mut
			{
				return VT.RevokeCertificate(&this, strConfig, strSerialNumber, Reason, Date);
			}
			public HRESULT SetRequestAttributes(BSTR strConfig, int32 RequestId, BSTR strAttributes) mut
			{
				return VT.SetRequestAttributes(&this, strConfig, RequestId, strAttributes);
			}
			public HRESULT SetCertificateExtension(BSTR strConfig, int32 RequestId, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, int32 Flags, VARIANT* pvarValue) mut
			{
				return VT.SetCertificateExtension(&this, strConfig, RequestId, strExtensionName, Type, Flags, pvarValue);
			}
			public HRESULT DenyRequest(BSTR strConfig, int32 RequestId) mut
			{
				return VT.DenyRequest(&this, strConfig, RequestId);
			}
			public HRESULT ResubmitRequest(BSTR strConfig, int32 RequestId, int32* pDisposition) mut
			{
				return VT.ResubmitRequest(&this, strConfig, RequestId, pDisposition);
			}
			public HRESULT PublishCRL(BSTR strConfig, double Date) mut
			{
				return VT.PublishCRL(&this, strConfig, Date);
			}
			public HRESULT GetCRL(BSTR strConfig, int32 Flags, BSTR* pstrCRL) mut
			{
				return VT.GetCRL(&this, strConfig, Flags, pstrCRL);
			}
			public HRESULT ImportCertificate(BSTR strConfig, BSTR strCertificate, CERT_IMPORT_FLAGS Flags, int32* pRequestId) mut
			{
				return VT.ImportCertificate(&this, strConfig, strCertificate, Flags, pRequestId);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, BSTR strSerialNumber, int32* pDisposition) IsValidCertificate;
				public new function HRESULT(ICertAdmin *self, int32* pReason) GetRevocationReason;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, BSTR strSerialNumber, int32 Reason, double Date) RevokeCertificate;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, int32 RequestId, BSTR strAttributes) SetRequestAttributes;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, int32 RequestId, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, int32 Flags, VARIANT* pvarValue) SetCertificateExtension;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, int32 RequestId) DenyRequest;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, int32 RequestId, int32* pDisposition) ResubmitRequest;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, double Date) PublishCRL;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, int32 Flags, BSTR* pstrCRL) GetCRL;
				public new function HRESULT(ICertAdmin *self, BSTR strConfig, BSTR strCertificate, CERT_IMPORT_FLAGS Flags, int32* pRequestId) ImportCertificate;
			}
		}
		[CRepr]
		public struct ICertAdmin2 : ICertAdmin
		{
			public const new Guid IID = .(0xf7c3ac41, 0xb8ce, 0x4fb4, 0xaa, 0x58, 0x3d, 0x1d, 0xc0, 0xe3, 0x6b, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PublishCRLs(BSTR strConfig, double Date, int32 CRLFlags) mut
			{
				return VT.PublishCRLs(&this, strConfig, Date, CRLFlags);
			}
			public HRESULT GetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetCAProperty(&this, strConfig, PropId, PropIndex, PropType, Flags, pvarPropertyValue);
			}
			public HRESULT SetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, VARIANT* pvarPropertyValue) mut
			{
				return VT.SetCAProperty(&this, strConfig, PropId, PropIndex, PropType, pvarPropertyValue);
			}
			public HRESULT GetCAPropertyFlags(BSTR strConfig, int32 PropId, int32* pPropFlags) mut
			{
				return VT.GetCAPropertyFlags(&this, strConfig, PropId, pPropFlags);
			}
			public HRESULT GetCAPropertyDisplayName(BSTR strConfig, int32 PropId, BSTR* pstrDisplayName) mut
			{
				return VT.GetCAPropertyDisplayName(&this, strConfig, PropId, pstrDisplayName);
			}
			public HRESULT GetArchivedKey(BSTR strConfig, int32 RequestId, int32 Flags, BSTR* pstrArchivedKey) mut
			{
				return VT.GetArchivedKey(&this, strConfig, RequestId, Flags, pstrArchivedKey);
			}
			public HRESULT GetConfigEntry(BSTR strConfig, BSTR strNodePath, BSTR strEntryName, VARIANT* pvarEntry) mut
			{
				return VT.GetConfigEntry(&this, strConfig, strNodePath, strEntryName, pvarEntry);
			}
			public HRESULT SetConfigEntry(BSTR strConfig, BSTR strNodePath, BSTR strEntryName, VARIANT* pvarEntry) mut
			{
				return VT.SetConfigEntry(&this, strConfig, strNodePath, strEntryName, pvarEntry);
			}
			public HRESULT ImportKey(BSTR strConfig, int32 RequestId, BSTR strCertHash, CERT_IMPORT_FLAGS Flags, BSTR strKey) mut
			{
				return VT.ImportKey(&this, strConfig, RequestId, strCertHash, Flags, strKey);
			}
			public HRESULT GetMyRoles(BSTR strConfig, CERTADMIN_GET_ROLES_FLAGS* pRoles) mut
			{
				return VT.GetMyRoles(&this, strConfig, pRoles);
			}
			public HRESULT DeleteRow(BSTR strConfig, CERT_DELETE_ROW_FLAGS Flags, double Date, CVRC_TABLE Table, int32 RowId, int32* pcDeleted) mut
			{
				return VT.DeleteRow(&this, strConfig, Flags, Date, Table, RowId, pcDeleted);
			}
			[CRepr]
			public struct VTable : ICertAdmin.VTable
			{
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, double Date, int32 CRLFlags) PublishCRLs;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, VARIANT* pvarPropertyValue) GetCAProperty;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, VARIANT* pvarPropertyValue) SetCAProperty;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 PropId, int32* pPropFlags) GetCAPropertyFlags;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 PropId, BSTR* pstrDisplayName) GetCAPropertyDisplayName;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 RequestId, int32 Flags, BSTR* pstrArchivedKey) GetArchivedKey;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, BSTR strNodePath, BSTR strEntryName, VARIANT* pvarEntry) GetConfigEntry;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, BSTR strNodePath, BSTR strEntryName, VARIANT* pvarEntry) SetConfigEntry;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, int32 RequestId, BSTR strCertHash, CERT_IMPORT_FLAGS Flags, BSTR strKey) ImportKey;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, CERTADMIN_GET_ROLES_FLAGS* pRoles) GetMyRoles;
				public new function HRESULT(ICertAdmin2 *self, BSTR strConfig, CERT_DELETE_ROW_FLAGS Flags, double Date, CVRC_TABLE Table, int32 RowId, int32* pcDeleted) DeleteRow;
			}
		}
		[CRepr]
		public struct IOCSPProperty : IDispatch
		{
			public const new Guid IID = .(0x66fb7839, 0x5f04, 0x4c25, 0xad, 0x18, 0x9f, 0xf1, 0xa8, 0x37, 0x6e, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pVal) mut
			{
				return VT.get_Name(&this, pVal);
			}
			public HRESULT get_Value(VARIANT* pVal) mut
			{
				return VT.get_Value(&this, pVal);
			}
			public HRESULT put_Value(VARIANT newVal) mut
			{
				return VT.put_Value(&this, newVal);
			}
			public HRESULT get_Modified(int16* pVal) mut
			{
				return VT.get_Modified(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IOCSPProperty *self, BSTR* pVal) get_Name;
				public new function HRESULT(IOCSPProperty *self, VARIANT* pVal) get_Value;
				public new function HRESULT(IOCSPProperty *self, VARIANT newVal) put_Value;
				public new function HRESULT(IOCSPProperty *self, int16* pVal) get_Modified;
			}
		}
		[CRepr]
		public struct IOCSPPropertyCollection : IDispatch
		{
			public const new Guid IID = .(0x2597c18d, 0x54e6, 0x4b74, 0x9f, 0xa9, 0xa6, 0xbf, 0xda, 0x99, 0xcb, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppVal) mut
			{
				return VT.get__NewEnum(&this, ppVal);
			}
			public HRESULT get_Item(int32 Index, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_ItemByName(BSTR bstrPropName, VARIANT* pVal) mut
			{
				return VT.get_ItemByName(&this, bstrPropName, pVal);
			}
			public HRESULT CreateProperty(BSTR bstrPropName, VARIANT* pVarPropValue, IOCSPProperty** ppVal) mut
			{
				return VT.CreateProperty(&this, bstrPropName, pVarPropValue, ppVal);
			}
			public HRESULT DeleteProperty(BSTR bstrPropName) mut
			{
				return VT.DeleteProperty(&this, bstrPropName);
			}
			public HRESULT InitializeFromProperties(VARIANT* pVarProperties) mut
			{
				return VT.InitializeFromProperties(&this, pVarProperties);
			}
			public HRESULT GetAllProperties(VARIANT* pVarProperties) mut
			{
				return VT.GetAllProperties(&this, pVarProperties);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IOCSPPropertyCollection *self, IUnknown** ppVal) get__NewEnum;
				public new function HRESULT(IOCSPPropertyCollection *self, int32 Index, VARIANT* pVal) get_Item;
				public new function HRESULT(IOCSPPropertyCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IOCSPPropertyCollection *self, BSTR bstrPropName, VARIANT* pVal) get_ItemByName;
				public new function HRESULT(IOCSPPropertyCollection *self, BSTR bstrPropName, VARIANT* pVarPropValue, IOCSPProperty** ppVal) CreateProperty;
				public new function HRESULT(IOCSPPropertyCollection *self, BSTR bstrPropName) DeleteProperty;
				public new function HRESULT(IOCSPPropertyCollection *self, VARIANT* pVarProperties) InitializeFromProperties;
				public new function HRESULT(IOCSPPropertyCollection *self, VARIANT* pVarProperties) GetAllProperties;
			}
		}
		[CRepr]
		public struct IOCSPCAConfiguration : IDispatch
		{
			public const new Guid IID = .(0xaec92b40, 0x3d46, 0x433f, 0x87, 0xd1, 0xb8, 0x4d, 0x5c, 0x1e, 0x79, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Identifier(BSTR* pVal) mut
			{
				return VT.get_Identifier(&this, pVal);
			}
			public HRESULT get_CACertificate(VARIANT* pVal) mut
			{
				return VT.get_CACertificate(&this, pVal);
			}
			public HRESULT get_HashAlgorithm(BSTR* pVal) mut
			{
				return VT.get_HashAlgorithm(&this, pVal);
			}
			public HRESULT put_HashAlgorithm(BSTR newVal) mut
			{
				return VT.put_HashAlgorithm(&this, newVal);
			}
			public HRESULT get_SigningFlags(uint32* pVal) mut
			{
				return VT.get_SigningFlags(&this, pVal);
			}
			public HRESULT put_SigningFlags(uint32 newVal) mut
			{
				return VT.put_SigningFlags(&this, newVal);
			}
			public HRESULT get_SigningCertificate(VARIANT* pVal) mut
			{
				return VT.get_SigningCertificate(&this, pVal);
			}
			public HRESULT put_SigningCertificate(VARIANT newVal) mut
			{
				return VT.put_SigningCertificate(&this, newVal);
			}
			public HRESULT get_ReminderDuration(uint32* pVal) mut
			{
				return VT.get_ReminderDuration(&this, pVal);
			}
			public HRESULT put_ReminderDuration(uint32 newVal) mut
			{
				return VT.put_ReminderDuration(&this, newVal);
			}
			public HRESULT get_ErrorCode(uint32* pVal) mut
			{
				return VT.get_ErrorCode(&this, pVal);
			}
			public HRESULT get_CSPName(BSTR* pVal) mut
			{
				return VT.get_CSPName(&this, pVal);
			}
			public HRESULT get_KeySpec(uint32* pVal) mut
			{
				return VT.get_KeySpec(&this, pVal);
			}
			public HRESULT get_ProviderCLSID(BSTR* pVal) mut
			{
				return VT.get_ProviderCLSID(&this, pVal);
			}
			public HRESULT put_ProviderCLSID(BSTR newVal) mut
			{
				return VT.put_ProviderCLSID(&this, newVal);
			}
			public HRESULT get_ProviderProperties(VARIANT* pVal) mut
			{
				return VT.get_ProviderProperties(&this, pVal);
			}
			public HRESULT put_ProviderProperties(VARIANT newVal) mut
			{
				return VT.put_ProviderProperties(&this, newVal);
			}
			public HRESULT get_Modified(int16* pVal) mut
			{
				return VT.get_Modified(&this, pVal);
			}
			public HRESULT get_LocalRevocationInformation(VARIANT* pVal) mut
			{
				return VT.get_LocalRevocationInformation(&this, pVal);
			}
			public HRESULT put_LocalRevocationInformation(VARIANT newVal) mut
			{
				return VT.put_LocalRevocationInformation(&this, newVal);
			}
			public HRESULT get_SigningCertificateTemplate(BSTR* pVal) mut
			{
				return VT.get_SigningCertificateTemplate(&this, pVal);
			}
			public HRESULT put_SigningCertificateTemplate(BSTR newVal) mut
			{
				return VT.put_SigningCertificateTemplate(&this, newVal);
			}
			public HRESULT get_CAConfig(BSTR* pVal) mut
			{
				return VT.get_CAConfig(&this, pVal);
			}
			public HRESULT put_CAConfig(BSTR newVal) mut
			{
				return VT.put_CAConfig(&this, newVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_Identifier;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT* pVal) get_CACertificate;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_HashAlgorithm;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR newVal) put_HashAlgorithm;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32* pVal) get_SigningFlags;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32 newVal) put_SigningFlags;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT* pVal) get_SigningCertificate;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT newVal) put_SigningCertificate;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32* pVal) get_ReminderDuration;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32 newVal) put_ReminderDuration;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32* pVal) get_ErrorCode;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_CSPName;
				public new function HRESULT(IOCSPCAConfiguration *self, uint32* pVal) get_KeySpec;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_ProviderCLSID;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR newVal) put_ProviderCLSID;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT* pVal) get_ProviderProperties;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT newVal) put_ProviderProperties;
				public new function HRESULT(IOCSPCAConfiguration *self, int16* pVal) get_Modified;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT* pVal) get_LocalRevocationInformation;
				public new function HRESULT(IOCSPCAConfiguration *self, VARIANT newVal) put_LocalRevocationInformation;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_SigningCertificateTemplate;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR newVal) put_SigningCertificateTemplate;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR* pVal) get_CAConfig;
				public new function HRESULT(IOCSPCAConfiguration *self, BSTR newVal) put_CAConfig;
			}
		}
		[CRepr]
		public struct IOCSPCAConfigurationCollection : IDispatch
		{
			public const new Guid IID = .(0x2bebea0b, 0x5ece, 0x4f28, 0xa9, 0x1c, 0x86, 0xb4, 0xbb, 0x20, 0xf0, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT get_Item(int32 Index, VARIANT* pVal) mut
			{
				return VT.get_Item(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get_ItemByName(BSTR bstrIdentifier, VARIANT* pVal) mut
			{
				return VT.get_ItemByName(&this, bstrIdentifier, pVal);
			}
			public HRESULT CreateCAConfiguration(BSTR bstrIdentifier, VARIANT varCACert, IOCSPCAConfiguration** ppVal) mut
			{
				return VT.CreateCAConfiguration(&this, bstrIdentifier, varCACert, ppVal);
			}
			public HRESULT DeleteCAConfiguration(BSTR bstrIdentifier) mut
			{
				return VT.DeleteCAConfiguration(&this, bstrIdentifier);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IOCSPCAConfigurationCollection *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IOCSPCAConfigurationCollection *self, int32 Index, VARIANT* pVal) get_Item;
				public new function HRESULT(IOCSPCAConfigurationCollection *self, int32* pVal) get_Count;
				public new function HRESULT(IOCSPCAConfigurationCollection *self, BSTR bstrIdentifier, VARIANT* pVal) get_ItemByName;
				public new function HRESULT(IOCSPCAConfigurationCollection *self, BSTR bstrIdentifier, VARIANT varCACert, IOCSPCAConfiguration** ppVal) CreateCAConfiguration;
				public new function HRESULT(IOCSPCAConfigurationCollection *self, BSTR bstrIdentifier) DeleteCAConfiguration;
			}
		}
		[CRepr]
		public struct IOCSPAdmin : IDispatch
		{
			public const new Guid IID = .(0x322e830d, 0x67db, 0x4fe9, 0x95, 0x77, 0x45, 0x96, 0xd9, 0xf0, 0x92, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_OCSPServiceProperties(IOCSPPropertyCollection** ppVal) mut
			{
				return VT.get_OCSPServiceProperties(&this, ppVal);
			}
			public HRESULT get_OCSPCAConfigurationCollection(IOCSPCAConfigurationCollection** pVal) mut
			{
				return VT.get_OCSPCAConfigurationCollection(&this, pVal);
			}
			public HRESULT GetConfiguration(BSTR bstrServerName, int16 bForce) mut
			{
				return VT.GetConfiguration(&this, bstrServerName, bForce);
			}
			public HRESULT SetConfiguration(BSTR bstrServerName, int16 bForce) mut
			{
				return VT.SetConfiguration(&this, bstrServerName, bForce);
			}
			public HRESULT GetMyRoles(BSTR bstrServerName, int32* pRoles) mut
			{
				return VT.GetMyRoles(&this, bstrServerName, pRoles);
			}
			public HRESULT Ping(BSTR bstrServerName) mut
			{
				return VT.Ping(&this, bstrServerName);
			}
			public HRESULT SetSecurity(BSTR bstrServerName, BSTR bstrVal) mut
			{
				return VT.SetSecurity(&this, bstrServerName, bstrVal);
			}
			public HRESULT GetSecurity(BSTR bstrServerName, BSTR* pVal) mut
			{
				return VT.GetSecurity(&this, bstrServerName, pVal);
			}
			public HRESULT GetSigningCertificates(BSTR bstrServerName, VARIANT* pCACertVar, VARIANT* pVal) mut
			{
				return VT.GetSigningCertificates(&this, bstrServerName, pCACertVar, pVal);
			}
			public HRESULT GetHashAlgorithms(BSTR bstrServerName, BSTR bstrCAId, VARIANT* pVal) mut
			{
				return VT.GetHashAlgorithms(&this, bstrServerName, bstrCAId, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IOCSPAdmin *self, IOCSPPropertyCollection** ppVal) get_OCSPServiceProperties;
				public new function HRESULT(IOCSPAdmin *self, IOCSPCAConfigurationCollection** pVal) get_OCSPCAConfigurationCollection;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, int16 bForce) GetConfiguration;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, int16 bForce) SetConfiguration;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, int32* pRoles) GetMyRoles;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName) Ping;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, BSTR bstrVal) SetSecurity;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, BSTR* pVal) GetSecurity;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, VARIANT* pCACertVar, VARIANT* pVal) GetSigningCertificates;
				public new function HRESULT(IOCSPAdmin *self, BSTR bstrServerName, BSTR bstrCAId, VARIANT* pVal) GetHashAlgorithms;
			}
		}
		[CRepr]
		public struct ICertServerPolicy : IDispatch
		{
			public const new Guid IID = .(0xaa000922, 0xffbe, 0x11cf, 0x88, 0x00, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 Context) mut
			{
				return VT.SetContext(&this, Context);
			}
			public HRESULT GetRequestProperty(BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetRequestProperty(&this, strPropertyName, PropertyType, pvarPropertyValue);
			}
			public HRESULT GetRequestAttribute(BSTR strAttributeName, BSTR* pstrAttributeValue) mut
			{
				return VT.GetRequestAttribute(&this, strAttributeName, pstrAttributeValue);
			}
			public HRESULT GetCertificateProperty(BSTR strPropertyName, CERT_PROPERTY_TYPE PropertyType, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetCertificateProperty(&this, strPropertyName, PropertyType, pvarPropertyValue);
			}
			public HRESULT SetCertificateProperty(BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) mut
			{
				return VT.SetCertificateProperty(&this, strPropertyName, PropertyType, pvarPropertyValue);
			}
			public HRESULT GetCertificateExtension(BSTR strExtensionName, CERT_PROPERTY_TYPE Type, VARIANT* pvarValue) mut
			{
				return VT.GetCertificateExtension(&this, strExtensionName, Type, pvarValue);
			}
			public HRESULT GetCertificateExtensionFlags(int32* pExtFlags) mut
			{
				return VT.GetCertificateExtensionFlags(&this, pExtFlags);
			}
			public HRESULT SetCertificateExtension(BSTR strExtensionName, int32 Type, int32 ExtFlags, VARIANT* pvarValue) mut
			{
				return VT.SetCertificateExtension(&this, strExtensionName, Type, ExtFlags, pvarValue);
			}
			public HRESULT EnumerateExtensionsSetup(int32 Flags) mut
			{
				return VT.EnumerateExtensionsSetup(&this, Flags);
			}
			public HRESULT EnumerateExtensions(BSTR* pstrExtensionName) mut
			{
				return VT.EnumerateExtensions(&this, pstrExtensionName);
			}
			public HRESULT EnumerateExtensionsClose() mut
			{
				return VT.EnumerateExtensionsClose(&this);
			}
			public HRESULT EnumerateAttributesSetup(int32 Flags) mut
			{
				return VT.EnumerateAttributesSetup(&this, Flags);
			}
			public HRESULT EnumerateAttributes(BSTR* pstrAttributeName) mut
			{
				return VT.EnumerateAttributes(&this, pstrAttributeName);
			}
			public HRESULT EnumerateAttributesClose() mut
			{
				return VT.EnumerateAttributesClose(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertServerPolicy *self, int32 Context) SetContext;
				public new function HRESULT(ICertServerPolicy *self, BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) GetRequestProperty;
				public new function HRESULT(ICertServerPolicy *self, BSTR strAttributeName, BSTR* pstrAttributeValue) GetRequestAttribute;
				public new function HRESULT(ICertServerPolicy *self, BSTR strPropertyName, CERT_PROPERTY_TYPE PropertyType, VARIANT* pvarPropertyValue) GetCertificateProperty;
				public new function HRESULT(ICertServerPolicy *self, BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) SetCertificateProperty;
				public new function HRESULT(ICertServerPolicy *self, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, VARIANT* pvarValue) GetCertificateExtension;
				public new function HRESULT(ICertServerPolicy *self, int32* pExtFlags) GetCertificateExtensionFlags;
				public new function HRESULT(ICertServerPolicy *self, BSTR strExtensionName, int32 Type, int32 ExtFlags, VARIANT* pvarValue) SetCertificateExtension;
				public new function HRESULT(ICertServerPolicy *self, int32 Flags) EnumerateExtensionsSetup;
				public new function HRESULT(ICertServerPolicy *self, BSTR* pstrExtensionName) EnumerateExtensions;
				public new function HRESULT(ICertServerPolicy *self) EnumerateExtensionsClose;
				public new function HRESULT(ICertServerPolicy *self, int32 Flags) EnumerateAttributesSetup;
				public new function HRESULT(ICertServerPolicy *self, BSTR* pstrAttributeName) EnumerateAttributes;
				public new function HRESULT(ICertServerPolicy *self) EnumerateAttributesClose;
			}
		}
		[CRepr]
		public struct ICertServerExit : IDispatch
		{
			public const new Guid IID = .(0x4ba9eb90, 0x732c, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(int32 Context) mut
			{
				return VT.SetContext(&this, Context);
			}
			public HRESULT GetRequestProperty(BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetRequestProperty(&this, strPropertyName, PropertyType, pvarPropertyValue);
			}
			public HRESULT GetRequestAttribute(BSTR strAttributeName, BSTR* pstrAttributeValue) mut
			{
				return VT.GetRequestAttribute(&this, strAttributeName, pstrAttributeValue);
			}
			public HRESULT GetCertificateProperty(BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetCertificateProperty(&this, strPropertyName, PropertyType, pvarPropertyValue);
			}
			public HRESULT GetCertificateExtension(BSTR strExtensionName, int32 Type, VARIANT* pvarValue) mut
			{
				return VT.GetCertificateExtension(&this, strExtensionName, Type, pvarValue);
			}
			public HRESULT GetCertificateExtensionFlags(int32* pExtFlags) mut
			{
				return VT.GetCertificateExtensionFlags(&this, pExtFlags);
			}
			public HRESULT EnumerateExtensionsSetup(int32 Flags) mut
			{
				return VT.EnumerateExtensionsSetup(&this, Flags);
			}
			public HRESULT EnumerateExtensions(BSTR* pstrExtensionName) mut
			{
				return VT.EnumerateExtensions(&this, pstrExtensionName);
			}
			public HRESULT EnumerateExtensionsClose() mut
			{
				return VT.EnumerateExtensionsClose(&this);
			}
			public HRESULT EnumerateAttributesSetup(int32 Flags) mut
			{
				return VT.EnumerateAttributesSetup(&this, Flags);
			}
			public HRESULT EnumerateAttributes(BSTR* pstrAttributeName) mut
			{
				return VT.EnumerateAttributes(&this, pstrAttributeName);
			}
			public HRESULT EnumerateAttributesClose() mut
			{
				return VT.EnumerateAttributesClose(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertServerExit *self, int32 Context) SetContext;
				public new function HRESULT(ICertServerExit *self, BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) GetRequestProperty;
				public new function HRESULT(ICertServerExit *self, BSTR strAttributeName, BSTR* pstrAttributeValue) GetRequestAttribute;
				public new function HRESULT(ICertServerExit *self, BSTR strPropertyName, int32 PropertyType, VARIANT* pvarPropertyValue) GetCertificateProperty;
				public new function HRESULT(ICertServerExit *self, BSTR strExtensionName, int32 Type, VARIANT* pvarValue) GetCertificateExtension;
				public new function HRESULT(ICertServerExit *self, int32* pExtFlags) GetCertificateExtensionFlags;
				public new function HRESULT(ICertServerExit *self, int32 Flags) EnumerateExtensionsSetup;
				public new function HRESULT(ICertServerExit *self, BSTR* pstrExtensionName) EnumerateExtensions;
				public new function HRESULT(ICertServerExit *self) EnumerateExtensionsClose;
				public new function HRESULT(ICertServerExit *self, int32 Flags) EnumerateAttributesSetup;
				public new function HRESULT(ICertServerExit *self, BSTR* pstrAttributeName) EnumerateAttributes;
				public new function HRESULT(ICertServerExit *self) EnumerateAttributesClose;
			}
		}
		[CRepr]
		public struct ICertGetConfig : IDispatch
		{
			public const new Guid IID = .(0xc7ea09c0, 0xce17, 0x11d0, 0x88, 0x33, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConfig(CERT_GET_CONFIG_FLAGS Flags, BSTR* pstrOut) mut
			{
				return VT.GetConfig(&this, Flags, pstrOut);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertGetConfig *self, CERT_GET_CONFIG_FLAGS Flags, BSTR* pstrOut) GetConfig;
			}
		}
		[CRepr]
		public struct ICertConfig : IDispatch
		{
			public const new Guid IID = .(0x372fce34, 0x4324, 0x11d0, 0x88, 0x10, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset(int32 Index, int32* pCount) mut
			{
				return VT.Reset(&this, Index, pCount);
			}
			public HRESULT Next(int32* pIndex) mut
			{
				return VT.Next(&this, pIndex);
			}
			public HRESULT GetField(BSTR strFieldName, BSTR* pstrOut) mut
			{
				return VT.GetField(&this, strFieldName, pstrOut);
			}
			public HRESULT GetConfig(int32 Flags, BSTR* pstrOut) mut
			{
				return VT.GetConfig(&this, Flags, pstrOut);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertConfig *self, int32 Index, int32* pCount) Reset;
				public new function HRESULT(ICertConfig *self, int32* pIndex) Next;
				public new function HRESULT(ICertConfig *self, BSTR strFieldName, BSTR* pstrOut) GetField;
				public new function HRESULT(ICertConfig *self, int32 Flags, BSTR* pstrOut) GetConfig;
			}
		}
		[CRepr]
		public struct ICertConfig2 : ICertConfig
		{
			public const new Guid IID = .(0x7a18edde, 0x7e78, 0x4163, 0x8d, 0xed, 0x78, 0xe2, 0xc9, 0xce, 0xe9, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSharedFolder(BSTR strSharedFolder) mut
			{
				return VT.SetSharedFolder(&this, strSharedFolder);
			}
			[CRepr]
			public struct VTable : ICertConfig.VTable
			{
				public new function HRESULT(ICertConfig2 *self, BSTR strSharedFolder) SetSharedFolder;
			}
		}
		[CRepr]
		public struct ICertRequest : IDispatch
		{
			public const new Guid IID = .(0x014e4840, 0x5523, 0x11d0, 0x88, 0x12, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Submit(int32 Flags, BSTR strRequest, BSTR strAttributes, BSTR strConfig, int32* pDisposition) mut
			{
				return VT.Submit(&this, Flags, strRequest, strAttributes, strConfig, pDisposition);
			}
			public HRESULT RetrievePending(int32 RequestId, BSTR strConfig, int32* pDisposition) mut
			{
				return VT.RetrievePending(&this, RequestId, strConfig, pDisposition);
			}
			public HRESULT GetLastStatus(int32* pStatus) mut
			{
				return VT.GetLastStatus(&this, pStatus);
			}
			public HRESULT GetRequestId(int32* pRequestId) mut
			{
				return VT.GetRequestId(&this, pRequestId);
			}
			public HRESULT GetDispositionMessage(BSTR* pstrDispositionMessage) mut
			{
				return VT.GetDispositionMessage(&this, pstrDispositionMessage);
			}
			public HRESULT GetCACertificate(int32 fExchangeCertificate, BSTR strConfig, int32 Flags, BSTR* pstrCertificate) mut
			{
				return VT.GetCACertificate(&this, fExchangeCertificate, strConfig, Flags, pstrCertificate);
			}
			public HRESULT GetCertificate(int32 Flags, BSTR* pstrCertificate) mut
			{
				return VT.GetCertificate(&this, Flags, pstrCertificate);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertRequest *self, int32 Flags, BSTR strRequest, BSTR strAttributes, BSTR strConfig, int32* pDisposition) Submit;
				public new function HRESULT(ICertRequest *self, int32 RequestId, BSTR strConfig, int32* pDisposition) RetrievePending;
				public new function HRESULT(ICertRequest *self, int32* pStatus) GetLastStatus;
				public new function HRESULT(ICertRequest *self, int32* pRequestId) GetRequestId;
				public new function HRESULT(ICertRequest *self, BSTR* pstrDispositionMessage) GetDispositionMessage;
				public new function HRESULT(ICertRequest *self, int32 fExchangeCertificate, BSTR strConfig, int32 Flags, BSTR* pstrCertificate) GetCACertificate;
				public new function HRESULT(ICertRequest *self, int32 Flags, BSTR* pstrCertificate) GetCertificate;
			}
		}
		[CRepr]
		public struct ICertRequest2 : ICertRequest
		{
			public const new Guid IID = .(0xa4772988, 0x4a85, 0x4fa9, 0x82, 0x4e, 0xb5, 0xcf, 0x5c, 0x16, 0x40, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIssuedCertificate(BSTR strConfig, int32 RequestId, BSTR strSerialNumber, CR_DISP* pDisposition) mut
			{
				return VT.GetIssuedCertificate(&this, strConfig, RequestId, strSerialNumber, pDisposition);
			}
			public HRESULT GetErrorMessageText(int32 hrMessage, int32 Flags, BSTR* pstrErrorMessageText) mut
			{
				return VT.GetErrorMessageText(&this, hrMessage, Flags, pstrErrorMessageText);
			}
			public HRESULT GetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetCAProperty(&this, strConfig, PropId, PropIndex, PropType, Flags, pvarPropertyValue);
			}
			public HRESULT GetCAPropertyFlags(BSTR strConfig, int32 PropId, int32* pPropFlags) mut
			{
				return VT.GetCAPropertyFlags(&this, strConfig, PropId, pPropFlags);
			}
			public HRESULT GetCAPropertyDisplayName(BSTR strConfig, int32 PropId, BSTR* pstrDisplayName) mut
			{
				return VT.GetCAPropertyDisplayName(&this, strConfig, PropId, pstrDisplayName);
			}
			public HRESULT GetFullResponseProperty(FULL_RESPONSE_PROPERTY_ID PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, CERT_REQUEST_OUT_TYPE Flags, VARIANT* pvarPropertyValue) mut
			{
				return VT.GetFullResponseProperty(&this, PropId, PropIndex, PropType, Flags, pvarPropertyValue);
			}
			[CRepr]
			public struct VTable : ICertRequest.VTable
			{
				public new function HRESULT(ICertRequest2 *self, BSTR strConfig, int32 RequestId, BSTR strSerialNumber, CR_DISP* pDisposition) GetIssuedCertificate;
				public new function HRESULT(ICertRequest2 *self, int32 hrMessage, int32 Flags, BSTR* pstrErrorMessageText) GetErrorMessageText;
				public new function HRESULT(ICertRequest2 *self, BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, VARIANT* pvarPropertyValue) GetCAProperty;
				public new function HRESULT(ICertRequest2 *self, BSTR strConfig, int32 PropId, int32* pPropFlags) GetCAPropertyFlags;
				public new function HRESULT(ICertRequest2 *self, BSTR strConfig, int32 PropId, BSTR* pstrDisplayName) GetCAPropertyDisplayName;
				public new function HRESULT(ICertRequest2 *self, FULL_RESPONSE_PROPERTY_ID PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, CERT_REQUEST_OUT_TYPE Flags, VARIANT* pvarPropertyValue) GetFullResponseProperty;
			}
		}
		[CRepr]
		public struct ICertRequest3 : ICertRequest2
		{
			public const new Guid IID = .(0xafc8f92b, 0x33a2, 0x4861, 0xbf, 0x36, 0x29, 0x33, 0xb7, 0xcd, 0x67, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCredential(int32 hWnd, X509EnrollmentAuthFlags AuthType, BSTR strCredential, BSTR strPassword) mut
			{
				return VT.SetCredential(&this, hWnd, AuthType, strCredential, strPassword);
			}
			public HRESULT GetRequestIdString(BSTR* pstrRequestId) mut
			{
				return VT.GetRequestIdString(&this, pstrRequestId);
			}
			public HRESULT GetIssuedCertificate2(BSTR strConfig, BSTR strRequestId, BSTR strSerialNumber, CR_DISP* pDisposition) mut
			{
				return VT.GetIssuedCertificate2(&this, strConfig, strRequestId, strSerialNumber, pDisposition);
			}
			public HRESULT GetRefreshPolicy(int16* pValue) mut
			{
				return VT.GetRefreshPolicy(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertRequest2.VTable
			{
				public new function HRESULT(ICertRequest3 *self, int32 hWnd, X509EnrollmentAuthFlags AuthType, BSTR strCredential, BSTR strPassword) SetCredential;
				public new function HRESULT(ICertRequest3 *self, BSTR* pstrRequestId) GetRequestIdString;
				public new function HRESULT(ICertRequest3 *self, BSTR strConfig, BSTR strRequestId, BSTR strSerialNumber, CR_DISP* pDisposition) GetIssuedCertificate2;
				public new function HRESULT(ICertRequest3 *self, int16* pValue) GetRefreshPolicy;
			}
		}
		[CRepr]
		public struct ICertManageModule : IDispatch
		{
			public const new Guid IID = .(0xe7d7ad42, 0xbd3d, 0x11d1, 0x9a, 0x4d, 0x00, 0xc0, 0x4f, 0xc2, 0x97, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, VARIANT* pvarProperty) mut
			{
				return VT.GetProperty(&this, strConfig, strStorageLocation, strPropertyName, Flags, pvarProperty);
			}
			public HRESULT SetProperty(BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, VARIANT* pvarProperty) mut
			{
				return VT.SetProperty(&this, strConfig, strStorageLocation, strPropertyName, Flags, pvarProperty);
			}
			public HRESULT Configure(BSTR strConfig, BSTR strStorageLocation, int32 Flags) mut
			{
				return VT.Configure(&this, strConfig, strStorageLocation, Flags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertManageModule *self, BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, VARIANT* pvarProperty) GetProperty;
				public new function HRESULT(ICertManageModule *self, BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, VARIANT* pvarProperty) SetProperty;
				public new function HRESULT(ICertManageModule *self, BSTR strConfig, BSTR strStorageLocation, int32 Flags) Configure;
			}
		}
		[CRepr]
		public struct ICertPolicy : IDispatch
		{
			public const new Guid IID = .(0x38bb5a00, 0x7636, 0x11d0, 0xb4, 0x13, 0x00, 0xa0, 0xc9, 0x1b, 0xbf, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strConfig) mut
			{
				return VT.Initialize(&this, strConfig);
			}
			public HRESULT VerifyRequest(BSTR strConfig, int32 Context, int32 bNewRequest, int32 Flags, int32* pDisposition) mut
			{
				return VT.VerifyRequest(&this, strConfig, Context, bNewRequest, Flags, pDisposition);
			}
			public HRESULT GetDescription(BSTR* pstrDescription) mut
			{
				return VT.GetDescription(&this, pstrDescription);
			}
			public HRESULT ShutDown() mut
			{
				return VT.ShutDown(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertPolicy *self, BSTR strConfig) Initialize;
				public new function HRESULT(ICertPolicy *self, BSTR strConfig, int32 Context, int32 bNewRequest, int32 Flags, int32* pDisposition) VerifyRequest;
				public new function HRESULT(ICertPolicy *self, BSTR* pstrDescription) GetDescription;
				public new function HRESULT(ICertPolicy *self) ShutDown;
			}
		}
		[CRepr]
		public struct ICertPolicy2 : ICertPolicy
		{
			public const new Guid IID = .(0x3db4910e, 0x8001, 0x4bf1, 0xaa, 0x1b, 0xf4, 0x3a, 0x80, 0x83, 0x17, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetManageModule(ICertManageModule** ppManageModule) mut
			{
				return VT.GetManageModule(&this, ppManageModule);
			}
			[CRepr]
			public struct VTable : ICertPolicy.VTable
			{
				public new function HRESULT(ICertPolicy2 *self, ICertManageModule** ppManageModule) GetManageModule;
			}
		}
		[CRepr]
		public struct INDESPolicy : IUnknown
		{
			public const new Guid IID = .(0x13ca515d, 0x431d, 0x46cc, 0x8c, 0x2e, 0x1d, 0xa2, 0x69, 0xbb, 0xd6, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			public HRESULT Uninitialize() mut
			{
				return VT.Uninitialize(&this);
			}
			public HRESULT GenerateChallenge(PWSTR pwszTemplate, PWSTR pwszParams, PWSTR* ppwszResponse) mut
			{
				return VT.GenerateChallenge(&this, pwszTemplate, pwszParams, ppwszResponse);
			}
			public HRESULT VerifyRequest(CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbSigningCertEncoded, PWSTR pwszTemplate, PWSTR pwszTransactionId, BOOL* pfVerified) mut
			{
				return VT.VerifyRequest(&this, pctbRequest, pctbSigningCertEncoded, pwszTemplate, pwszTransactionId, pfVerified);
			}
			public HRESULT Notify(PWSTR pwszChallenge, PWSTR pwszTransactionId, X509SCEPDisposition disposition, int32 lastHResult, CERTTRANSBLOB* pctbIssuedCertEncoded) mut
			{
				return VT.Notify(&this, pwszChallenge, pwszTransactionId, disposition, lastHResult, pctbIssuedCertEncoded);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INDESPolicy *self) Initialize;
				public new function HRESULT(INDESPolicy *self) Uninitialize;
				public new function HRESULT(INDESPolicy *self, PWSTR pwszTemplate, PWSTR pwszParams, PWSTR* ppwszResponse) GenerateChallenge;
				public new function HRESULT(INDESPolicy *self, CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbSigningCertEncoded, PWSTR pwszTemplate, PWSTR pwszTransactionId, BOOL* pfVerified) VerifyRequest;
				public new function HRESULT(INDESPolicy *self, PWSTR pwszChallenge, PWSTR pwszTransactionId, X509SCEPDisposition disposition, int32 lastHResult, CERTTRANSBLOB* pctbIssuedCertEncoded) Notify;
			}
		}
		[CRepr]
		public struct IObjectId : IDispatch
		{
			public const new Guid IID = .(0x728ab300, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromName(CERTENROLL_OBJECTID Name) mut
			{
				return VT.InitializeFromName(&this, Name);
			}
			public HRESULT InitializeFromValue(BSTR strValue) mut
			{
				return VT.InitializeFromValue(&this, strValue);
			}
			public HRESULT InitializeFromAlgorithmName(ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, AlgorithmFlags AlgFlags, BSTR strAlgorithmName) mut
			{
				return VT.InitializeFromAlgorithmName(&this, GroupId, KeyFlags, AlgFlags, strAlgorithmName);
			}
			public HRESULT get_Name(CERTENROLL_OBJECTID* pValue) mut
			{
				return VT.get_Name(&this, pValue);
			}
			public HRESULT get_FriendlyName(BSTR* pValue) mut
			{
				return VT.get_FriendlyName(&this, pValue);
			}
			public HRESULT put_FriendlyName(BSTR Value) mut
			{
				return VT.put_FriendlyName(&this, Value);
			}
			public HRESULT get_Value(BSTR* pValue) mut
			{
				return VT.get_Value(&this, pValue);
			}
			public HRESULT GetAlgorithmName(ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, BSTR* pstrAlgorithmName) mut
			{
				return VT.GetAlgorithmName(&this, GroupId, KeyFlags, pstrAlgorithmName);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IObjectId *self, CERTENROLL_OBJECTID Name) InitializeFromName;
				public new function HRESULT(IObjectId *self, BSTR strValue) InitializeFromValue;
				public new function HRESULT(IObjectId *self, ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, AlgorithmFlags AlgFlags, BSTR strAlgorithmName) InitializeFromAlgorithmName;
				public new function HRESULT(IObjectId *self, CERTENROLL_OBJECTID* pValue) get_Name;
				public new function HRESULT(IObjectId *self, BSTR* pValue) get_FriendlyName;
				public new function HRESULT(IObjectId *self, BSTR Value) put_FriendlyName;
				public new function HRESULT(IObjectId *self, BSTR* pValue) get_Value;
				public new function HRESULT(IObjectId *self, ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, BSTR* pstrAlgorithmName) GetAlgorithmName;
			}
		}
		[CRepr]
		public struct IObjectIds : IDispatch
		{
			public const new Guid IID = .(0x728ab301, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IObjectId** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IObjectId* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddRange(IObjectIds* pValue) mut
			{
				return VT.AddRange(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IObjectIds *self, int32 Index, IObjectId** pVal) get_ItemByIndex;
				public new function HRESULT(IObjectIds *self, int32* pVal) get_Count;
				public new function HRESULT(IObjectIds *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IObjectIds *self, IObjectId* pVal) Add;
				public new function HRESULT(IObjectIds *self, int32 Index) Remove;
				public new function HRESULT(IObjectIds *self) Clear;
				public new function HRESULT(IObjectIds *self, IObjectIds* pValue) AddRange;
			}
		}
		[CRepr]
		public struct IBinaryConverter : IDispatch
		{
			public const new Guid IID = .(0x728ab302, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StringToString(BSTR strEncodedIn, EncodingType EncodingIn, EncodingType Encoding, BSTR* pstrEncoded) mut
			{
				return VT.StringToString(&this, strEncodedIn, EncodingIn, Encoding, pstrEncoded);
			}
			public HRESULT VariantByteArrayToString(VARIANT* pvarByteArray, EncodingType Encoding, BSTR* pstrEncoded) mut
			{
				return VT.VariantByteArrayToString(&this, pvarByteArray, Encoding, pstrEncoded);
			}
			public HRESULT StringToVariantByteArray(BSTR strEncoded, EncodingType Encoding, VARIANT* pvarByteArray) mut
			{
				return VT.StringToVariantByteArray(&this, strEncoded, Encoding, pvarByteArray);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IBinaryConverter *self, BSTR strEncodedIn, EncodingType EncodingIn, EncodingType Encoding, BSTR* pstrEncoded) StringToString;
				public new function HRESULT(IBinaryConverter *self, VARIANT* pvarByteArray, EncodingType Encoding, BSTR* pstrEncoded) VariantByteArrayToString;
				public new function HRESULT(IBinaryConverter *self, BSTR strEncoded, EncodingType Encoding, VARIANT* pvarByteArray) StringToVariantByteArray;
			}
		}
		[CRepr]
		public struct IBinaryConverter2 : IBinaryConverter
		{
			public const new Guid IID = .(0x8d7928b4, 0x4e17, 0x428d, 0x9a, 0x17, 0x72, 0x8d, 0xf0, 0x0d, 0x1b, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StringArrayToVariantArray(VARIANT* pvarStringArray, VARIANT* pvarVariantArray) mut
			{
				return VT.StringArrayToVariantArray(&this, pvarStringArray, pvarVariantArray);
			}
			public HRESULT VariantArrayToStringArray(VARIANT* pvarVariantArray, VARIANT* pvarStringArray) mut
			{
				return VT.VariantArrayToStringArray(&this, pvarVariantArray, pvarStringArray);
			}
			[CRepr]
			public struct VTable : IBinaryConverter.VTable
			{
				public new function HRESULT(IBinaryConverter2 *self, VARIANT* pvarStringArray, VARIANT* pvarVariantArray) StringArrayToVariantArray;
				public new function HRESULT(IBinaryConverter2 *self, VARIANT* pvarVariantArray, VARIANT* pvarStringArray) VariantArrayToStringArray;
			}
		}
		[CRepr]
		public struct IX500DistinguishedName : IDispatch
		{
			public const new Guid IID = .(0x728ab303, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strEncodedName, EncodingType Encoding, X500NameFlags NameFlags) mut
			{
				return VT.Decode(&this, strEncodedName, Encoding, NameFlags);
			}
			public HRESULT Encode(BSTR strName, X500NameFlags NameFlags) mut
			{
				return VT.Encode(&this, strName, NameFlags);
			}
			public HRESULT get_Name(BSTR* pValue) mut
			{
				return VT.get_Name(&this, pValue);
			}
			public HRESULT get_EncodedName(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncodedName(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX500DistinguishedName *self, BSTR strEncodedName, EncodingType Encoding, X500NameFlags NameFlags) Decode;
				public new function HRESULT(IX500DistinguishedName *self, BSTR strName, X500NameFlags NameFlags) Encode;
				public new function HRESULT(IX500DistinguishedName *self, BSTR* pValue) get_Name;
				public new function HRESULT(IX500DistinguishedName *self, EncodingType Encoding, BSTR* pValue) get_EncodedName;
			}
		}
		[CRepr]
		public struct IX509EnrollmentStatus : IDispatch
		{
			public const new Guid IID = .(0x728ab304, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AppendText(BSTR strText) mut
			{
				return VT.AppendText(&this, strText);
			}
			public HRESULT get_Text(BSTR* pValue) mut
			{
				return VT.get_Text(&this, pValue);
			}
			public HRESULT put_Text(BSTR Value) mut
			{
				return VT.put_Text(&this, Value);
			}
			public HRESULT get_Selected(EnrollmentSelectionStatus* pValue) mut
			{
				return VT.get_Selected(&this, pValue);
			}
			public HRESULT put_Selected(EnrollmentSelectionStatus Value) mut
			{
				return VT.put_Selected(&this, Value);
			}
			public HRESULT get_Display(EnrollmentDisplayStatus* pValue) mut
			{
				return VT.get_Display(&this, pValue);
			}
			public HRESULT put_Display(EnrollmentDisplayStatus Value) mut
			{
				return VT.put_Display(&this, Value);
			}
			public HRESULT get_Status(EnrollmentEnrollStatus* pValue) mut
			{
				return VT.get_Status(&this, pValue);
			}
			public HRESULT put_Status(EnrollmentEnrollStatus Value) mut
			{
				return VT.put_Status(&this, Value);
			}
			public HRESULT get_Error(HRESULT* pValue) mut
			{
				return VT.get_Error(&this, pValue);
			}
			public HRESULT put_Error(HRESULT Value) mut
			{
				return VT.put_Error(&this, Value);
			}
			public HRESULT get_ErrorText(BSTR* pValue) mut
			{
				return VT.get_ErrorText(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509EnrollmentStatus *self, BSTR strText) AppendText;
				public new function HRESULT(IX509EnrollmentStatus *self, BSTR* pValue) get_Text;
				public new function HRESULT(IX509EnrollmentStatus *self, BSTR Value) put_Text;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentSelectionStatus* pValue) get_Selected;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentSelectionStatus Value) put_Selected;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentDisplayStatus* pValue) get_Display;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentDisplayStatus Value) put_Display;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentEnrollStatus* pValue) get_Status;
				public new function HRESULT(IX509EnrollmentStatus *self, EnrollmentEnrollStatus Value) put_Status;
				public new function HRESULT(IX509EnrollmentStatus *self, HRESULT* pValue) get_Error;
				public new function HRESULT(IX509EnrollmentStatus *self, HRESULT Value) put_Error;
				public new function HRESULT(IX509EnrollmentStatus *self, BSTR* pValue) get_ErrorText;
			}
		}
		[CRepr]
		public struct ICspAlgorithm : IDispatch
		{
			public const new Guid IID = .(0x728ab305, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlgorithmOid(int32 Length, AlgorithmFlags AlgFlags, IObjectId** ppValue) mut
			{
				return VT.GetAlgorithmOid(&this, Length, AlgFlags, ppValue);
			}
			public HRESULT get_DefaultLength(int32* pValue) mut
			{
				return VT.get_DefaultLength(&this, pValue);
			}
			public HRESULT get_IncrementLength(int32* pValue) mut
			{
				return VT.get_IncrementLength(&this, pValue);
			}
			public HRESULT get_LongName(BSTR* pValue) mut
			{
				return VT.get_LongName(&this, pValue);
			}
			public HRESULT get_Valid(int16* pValue) mut
			{
				return VT.get_Valid(&this, pValue);
			}
			public HRESULT get_MaxLength(int32* pValue) mut
			{
				return VT.get_MaxLength(&this, pValue);
			}
			public HRESULT get_MinLength(int32* pValue) mut
			{
				return VT.get_MinLength(&this, pValue);
			}
			public HRESULT get_Name(BSTR* pValue) mut
			{
				return VT.get_Name(&this, pValue);
			}
			public HRESULT get_Type(AlgorithmType* pValue) mut
			{
				return VT.get_Type(&this, pValue);
			}
			public HRESULT get_Operations(AlgorithmOperationFlags* pValue) mut
			{
				return VT.get_Operations(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspAlgorithm *self, int32 Length, AlgorithmFlags AlgFlags, IObjectId** ppValue) GetAlgorithmOid;
				public new function HRESULT(ICspAlgorithm *self, int32* pValue) get_DefaultLength;
				public new function HRESULT(ICspAlgorithm *self, int32* pValue) get_IncrementLength;
				public new function HRESULT(ICspAlgorithm *self, BSTR* pValue) get_LongName;
				public new function HRESULT(ICspAlgorithm *self, int16* pValue) get_Valid;
				public new function HRESULT(ICspAlgorithm *self, int32* pValue) get_MaxLength;
				public new function HRESULT(ICspAlgorithm *self, int32* pValue) get_MinLength;
				public new function HRESULT(ICspAlgorithm *self, BSTR* pValue) get_Name;
				public new function HRESULT(ICspAlgorithm *self, AlgorithmType* pValue) get_Type;
				public new function HRESULT(ICspAlgorithm *self, AlgorithmOperationFlags* pValue) get_Operations;
			}
		}
		[CRepr]
		public struct ICspAlgorithms : IDispatch
		{
			public const new Guid IID = .(0x728ab306, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICspAlgorithm** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICspAlgorithm* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_ItemByName(BSTR strName, ICspAlgorithm** ppValue) mut
			{
				return VT.get_ItemByName(&this, strName, ppValue);
			}
			public HRESULT get_IndexByObjectId(IObjectId* pObjectId, int32* pIndex) mut
			{
				return VT.get_IndexByObjectId(&this, pObjectId, pIndex);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspAlgorithms *self, int32 Index, ICspAlgorithm** pVal) get_ItemByIndex;
				public new function HRESULT(ICspAlgorithms *self, int32* pVal) get_Count;
				public new function HRESULT(ICspAlgorithms *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICspAlgorithms *self, ICspAlgorithm* pVal) Add;
				public new function HRESULT(ICspAlgorithms *self, int32 Index) Remove;
				public new function HRESULT(ICspAlgorithms *self) Clear;
				public new function HRESULT(ICspAlgorithms *self, BSTR strName, ICspAlgorithm** ppValue) get_ItemByName;
				public new function HRESULT(ICspAlgorithms *self, IObjectId* pObjectId, int32* pIndex) get_IndexByObjectId;
			}
		}
		[CRepr]
		public struct ICspInformation : IDispatch
		{
			public const new Guid IID = .(0x728ab307, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromName(BSTR strName) mut
			{
				return VT.InitializeFromName(&this, strName);
			}
			public HRESULT InitializeFromType(X509ProviderType Type, IObjectId* pAlgorithm, int16 MachineContext) mut
			{
				return VT.InitializeFromType(&this, Type, pAlgorithm, MachineContext);
			}
			public HRESULT get_CspAlgorithms(ICspAlgorithms** ppValue) mut
			{
				return VT.get_CspAlgorithms(&this, ppValue);
			}
			public HRESULT get_HasHardwareRandomNumberGenerator(int16* pValue) mut
			{
				return VT.get_HasHardwareRandomNumberGenerator(&this, pValue);
			}
			public HRESULT get_IsHardwareDevice(int16* pValue) mut
			{
				return VT.get_IsHardwareDevice(&this, pValue);
			}
			public HRESULT get_IsRemovable(int16* pValue) mut
			{
				return VT.get_IsRemovable(&this, pValue);
			}
			public HRESULT get_IsSoftwareDevice(int16* pValue) mut
			{
				return VT.get_IsSoftwareDevice(&this, pValue);
			}
			public HRESULT get_Valid(int16* pValue) mut
			{
				return VT.get_Valid(&this, pValue);
			}
			public HRESULT get_MaxKeyContainerNameLength(int32* pValue) mut
			{
				return VT.get_MaxKeyContainerNameLength(&this, pValue);
			}
			public HRESULT get_Name(BSTR* pValue) mut
			{
				return VT.get_Name(&this, pValue);
			}
			public HRESULT get_Type(X509ProviderType* pValue) mut
			{
				return VT.get_Type(&this, pValue);
			}
			public HRESULT get_Version(int32* pValue) mut
			{
				return VT.get_Version(&this, pValue);
			}
			public HRESULT get_KeySpec(X509KeySpec* pValue) mut
			{
				return VT.get_KeySpec(&this, pValue);
			}
			public HRESULT get_IsSmartCard(int16* pValue) mut
			{
				return VT.get_IsSmartCard(&this, pValue);
			}
			public HRESULT GetDefaultSecurityDescriptor(int16 MachineContext, BSTR* pValue) mut
			{
				return VT.GetDefaultSecurityDescriptor(&this, MachineContext, pValue);
			}
			public HRESULT get_LegacyCsp(int16* pValue) mut
			{
				return VT.get_LegacyCsp(&this, pValue);
			}
			public HRESULT GetCspStatusFromOperations(IObjectId* pAlgorithm, AlgorithmOperationFlags Operations, ICspStatus** ppValue) mut
			{
				return VT.GetCspStatusFromOperations(&this, pAlgorithm, Operations, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspInformation *self, BSTR strName) InitializeFromName;
				public new function HRESULT(ICspInformation *self, X509ProviderType Type, IObjectId* pAlgorithm, int16 MachineContext) InitializeFromType;
				public new function HRESULT(ICspInformation *self, ICspAlgorithms** ppValue) get_CspAlgorithms;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_HasHardwareRandomNumberGenerator;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_IsHardwareDevice;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_IsRemovable;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_IsSoftwareDevice;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_Valid;
				public new function HRESULT(ICspInformation *self, int32* pValue) get_MaxKeyContainerNameLength;
				public new function HRESULT(ICspInformation *self, BSTR* pValue) get_Name;
				public new function HRESULT(ICspInformation *self, X509ProviderType* pValue) get_Type;
				public new function HRESULT(ICspInformation *self, int32* pValue) get_Version;
				public new function HRESULT(ICspInformation *self, X509KeySpec* pValue) get_KeySpec;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_IsSmartCard;
				public new function HRESULT(ICspInformation *self, int16 MachineContext, BSTR* pValue) GetDefaultSecurityDescriptor;
				public new function HRESULT(ICspInformation *self, int16* pValue) get_LegacyCsp;
				public new function HRESULT(ICspInformation *self, IObjectId* pAlgorithm, AlgorithmOperationFlags Operations, ICspStatus** ppValue) GetCspStatusFromOperations;
			}
		}
		[CRepr]
		public struct ICspInformations : IDispatch
		{
			public const new Guid IID = .(0x728ab308, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICspInformation** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICspInformation* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddAvailableCsps() mut
			{
				return VT.AddAvailableCsps(&this);
			}
			public HRESULT get_ItemByName(BSTR strName, ICspInformation** ppCspInformation) mut
			{
				return VT.get_ItemByName(&this, strName, ppCspInformation);
			}
			public HRESULT GetCspStatusFromProviderName(BSTR strProviderName, X509KeySpec LegacyKeySpec, ICspStatus** ppValue) mut
			{
				return VT.GetCspStatusFromProviderName(&this, strProviderName, LegacyKeySpec, ppValue);
			}
			public HRESULT GetCspStatusesFromOperations(AlgorithmOperationFlags Operations, ICspInformation* pCspInformation, ICspStatuses** ppValue) mut
			{
				return VT.GetCspStatusesFromOperations(&this, Operations, pCspInformation, ppValue);
			}
			public HRESULT GetEncryptionCspAlgorithms(ICspInformation* pCspInformation, ICspAlgorithms** ppValue) mut
			{
				return VT.GetEncryptionCspAlgorithms(&this, pCspInformation, ppValue);
			}
			public HRESULT GetHashAlgorithms(ICspInformation* pCspInformation, IObjectIds** ppValue) mut
			{
				return VT.GetHashAlgorithms(&this, pCspInformation, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspInformations *self, int32 Index, ICspInformation** pVal) get_ItemByIndex;
				public new function HRESULT(ICspInformations *self, int32* pVal) get_Count;
				public new function HRESULT(ICspInformations *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICspInformations *self, ICspInformation* pVal) Add;
				public new function HRESULT(ICspInformations *self, int32 Index) Remove;
				public new function HRESULT(ICspInformations *self) Clear;
				public new function HRESULT(ICspInformations *self) AddAvailableCsps;
				public new function HRESULT(ICspInformations *self, BSTR strName, ICspInformation** ppCspInformation) get_ItemByName;
				public new function HRESULT(ICspInformations *self, BSTR strProviderName, X509KeySpec LegacyKeySpec, ICspStatus** ppValue) GetCspStatusFromProviderName;
				public new function HRESULT(ICspInformations *self, AlgorithmOperationFlags Operations, ICspInformation* pCspInformation, ICspStatuses** ppValue) GetCspStatusesFromOperations;
				public new function HRESULT(ICspInformations *self, ICspInformation* pCspInformation, ICspAlgorithms** ppValue) GetEncryptionCspAlgorithms;
				public new function HRESULT(ICspInformations *self, ICspInformation* pCspInformation, IObjectIds** ppValue) GetHashAlgorithms;
			}
		}
		[CRepr]
		public struct ICspStatus : IDispatch
		{
			public const new Guid IID = .(0x728ab309, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ICspInformation* pCsp, ICspAlgorithm* pAlgorithm) mut
			{
				return VT.Initialize(&this, pCsp, pAlgorithm);
			}
			public HRESULT get_Ordinal(int32* pValue) mut
			{
				return VT.get_Ordinal(&this, pValue);
			}
			public HRESULT put_Ordinal(int32 Value) mut
			{
				return VT.put_Ordinal(&this, Value);
			}
			public HRESULT get_CspAlgorithm(ICspAlgorithm** ppValue) mut
			{
				return VT.get_CspAlgorithm(&this, ppValue);
			}
			public HRESULT get_CspInformation(ICspInformation** ppValue) mut
			{
				return VT.get_CspInformation(&this, ppValue);
			}
			public HRESULT get_EnrollmentStatus(IX509EnrollmentStatus** ppValue) mut
			{
				return VT.get_EnrollmentStatus(&this, ppValue);
			}
			public HRESULT get_DisplayName(BSTR* pValue) mut
			{
				return VT.get_DisplayName(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspStatus *self, ICspInformation* pCsp, ICspAlgorithm* pAlgorithm) Initialize;
				public new function HRESULT(ICspStatus *self, int32* pValue) get_Ordinal;
				public new function HRESULT(ICspStatus *self, int32 Value) put_Ordinal;
				public new function HRESULT(ICspStatus *self, ICspAlgorithm** ppValue) get_CspAlgorithm;
				public new function HRESULT(ICspStatus *self, ICspInformation** ppValue) get_CspInformation;
				public new function HRESULT(ICspStatus *self, IX509EnrollmentStatus** ppValue) get_EnrollmentStatus;
				public new function HRESULT(ICspStatus *self, BSTR* pValue) get_DisplayName;
			}
		}
		[CRepr]
		public struct ICspStatuses : IDispatch
		{
			public const new Guid IID = .(0x728ab30a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICspStatus** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICspStatus* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_ItemByName(BSTR strCspName, BSTR strAlgorithmName, ICspStatus** ppValue) mut
			{
				return VT.get_ItemByName(&this, strCspName, strAlgorithmName, ppValue);
			}
			public HRESULT get_ItemByOrdinal(int32 Ordinal, ICspStatus** ppValue) mut
			{
				return VT.get_ItemByOrdinal(&this, Ordinal, ppValue);
			}
			public HRESULT get_ItemByOperations(BSTR strCspName, BSTR strAlgorithmName, AlgorithmOperationFlags Operations, ICspStatus** ppValue) mut
			{
				return VT.get_ItemByOperations(&this, strCspName, strAlgorithmName, Operations, ppValue);
			}
			public HRESULT get_ItemByProvider(ICspStatus* pCspStatus, ICspStatus** ppValue) mut
			{
				return VT.get_ItemByProvider(&this, pCspStatus, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICspStatuses *self, int32 Index, ICspStatus** pVal) get_ItemByIndex;
				public new function HRESULT(ICspStatuses *self, int32* pVal) get_Count;
				public new function HRESULT(ICspStatuses *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICspStatuses *self, ICspStatus* pVal) Add;
				public new function HRESULT(ICspStatuses *self, int32 Index) Remove;
				public new function HRESULT(ICspStatuses *self) Clear;
				public new function HRESULT(ICspStatuses *self, BSTR strCspName, BSTR strAlgorithmName, ICspStatus** ppValue) get_ItemByName;
				public new function HRESULT(ICspStatuses *self, int32 Ordinal, ICspStatus** ppValue) get_ItemByOrdinal;
				public new function HRESULT(ICspStatuses *self, BSTR strCspName, BSTR strAlgorithmName, AlgorithmOperationFlags Operations, ICspStatus** ppValue) get_ItemByOperations;
				public new function HRESULT(ICspStatuses *self, ICspStatus* pCspStatus, ICspStatus** ppValue) get_ItemByProvider;
			}
		}
		[CRepr]
		public struct IX509PublicKey : IDispatch
		{
			public const new Guid IID = .(0x728ab30b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IObjectId* pObjectId, BSTR strEncodedKey, BSTR strEncodedParameters, EncodingType Encoding) mut
			{
				return VT.Initialize(&this, pObjectId, strEncodedKey, strEncodedParameters, Encoding);
			}
			public HRESULT InitializeFromEncodedPublicKeyInfo(BSTR strEncodedPublicKeyInfo, EncodingType Encoding) mut
			{
				return VT.InitializeFromEncodedPublicKeyInfo(&this, strEncodedPublicKeyInfo, Encoding);
			}
			public HRESULT get_Algorithm(IObjectId** ppValue) mut
			{
				return VT.get_Algorithm(&this, ppValue);
			}
			public HRESULT get_Length(int32* pValue) mut
			{
				return VT.get_Length(&this, pValue);
			}
			public HRESULT get_EncodedKey(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncodedKey(&this, Encoding, pValue);
			}
			public HRESULT get_EncodedParameters(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncodedParameters(&this, Encoding, pValue);
			}
			public HRESULT ComputeKeyIdentifier(KeyIdentifierHashAlgorithm Algorithm, EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.ComputeKeyIdentifier(&this, Algorithm, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509PublicKey *self, IObjectId* pObjectId, BSTR strEncodedKey, BSTR strEncodedParameters, EncodingType Encoding) Initialize;
				public new function HRESULT(IX509PublicKey *self, BSTR strEncodedPublicKeyInfo, EncodingType Encoding) InitializeFromEncodedPublicKeyInfo;
				public new function HRESULT(IX509PublicKey *self, IObjectId** ppValue) get_Algorithm;
				public new function HRESULT(IX509PublicKey *self, int32* pValue) get_Length;
				public new function HRESULT(IX509PublicKey *self, EncodingType Encoding, BSTR* pValue) get_EncodedKey;
				public new function HRESULT(IX509PublicKey *self, EncodingType Encoding, BSTR* pValue) get_EncodedParameters;
				public new function HRESULT(IX509PublicKey *self, KeyIdentifierHashAlgorithm Algorithm, EncodingType Encoding, BSTR* pValue) ComputeKeyIdentifier;
			}
		}
		[CRepr]
		public struct IX509PrivateKey : IDispatch
		{
			public const new Guid IID = .(0x728ab30c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT Create() mut
			{
				return VT.Create(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Verify(X509PrivateKeyVerify VerifyType) mut
			{
				return VT.Verify(&this, VerifyType);
			}
			public HRESULT Import(BSTR strExportType, BSTR strEncodedKey, EncodingType Encoding) mut
			{
				return VT.Import(&this, strExportType, strEncodedKey, Encoding);
			}
			public HRESULT Export(BSTR strExportType, EncodingType Encoding, BSTR* pstrEncodedKey) mut
			{
				return VT.Export(&this, strExportType, Encoding, pstrEncodedKey);
			}
			public HRESULT ExportPublicKey(IX509PublicKey** ppPublicKey) mut
			{
				return VT.ExportPublicKey(&this, ppPublicKey);
			}
			public HRESULT get_ContainerName(BSTR* pValue) mut
			{
				return VT.get_ContainerName(&this, pValue);
			}
			public HRESULT put_ContainerName(BSTR Value) mut
			{
				return VT.put_ContainerName(&this, Value);
			}
			public HRESULT get_ContainerNamePrefix(BSTR* pValue) mut
			{
				return VT.get_ContainerNamePrefix(&this, pValue);
			}
			public HRESULT put_ContainerNamePrefix(BSTR Value) mut
			{
				return VT.put_ContainerNamePrefix(&this, Value);
			}
			public HRESULT get_ReaderName(BSTR* pValue) mut
			{
				return VT.get_ReaderName(&this, pValue);
			}
			public HRESULT put_ReaderName(BSTR Value) mut
			{
				return VT.put_ReaderName(&this, Value);
			}
			public HRESULT get_CspInformations(ICspInformations** ppValue) mut
			{
				return VT.get_CspInformations(&this, ppValue);
			}
			public HRESULT put_CspInformations(ICspInformations* pValue) mut
			{
				return VT.put_CspInformations(&this, pValue);
			}
			public HRESULT get_CspStatus(ICspStatus** ppValue) mut
			{
				return VT.get_CspStatus(&this, ppValue);
			}
			public HRESULT put_CspStatus(ICspStatus* pValue) mut
			{
				return VT.put_CspStatus(&this, pValue);
			}
			public HRESULT get_ProviderName(BSTR* pValue) mut
			{
				return VT.get_ProviderName(&this, pValue);
			}
			public HRESULT put_ProviderName(BSTR Value) mut
			{
				return VT.put_ProviderName(&this, Value);
			}
			public HRESULT get_ProviderType(X509ProviderType* pValue) mut
			{
				return VT.get_ProviderType(&this, pValue);
			}
			public HRESULT put_ProviderType(X509ProviderType Value) mut
			{
				return VT.put_ProviderType(&this, Value);
			}
			public HRESULT get_LegacyCsp(int16* pValue) mut
			{
				return VT.get_LegacyCsp(&this, pValue);
			}
			public HRESULT put_LegacyCsp(int16 Value) mut
			{
				return VT.put_LegacyCsp(&this, Value);
			}
			public HRESULT get_Algorithm(IObjectId** ppValue) mut
			{
				return VT.get_Algorithm(&this, ppValue);
			}
			public HRESULT put_Algorithm(IObjectId* pValue) mut
			{
				return VT.put_Algorithm(&this, pValue);
			}
			public HRESULT get_KeySpec(X509KeySpec* pValue) mut
			{
				return VT.get_KeySpec(&this, pValue);
			}
			public HRESULT put_KeySpec(X509KeySpec Value) mut
			{
				return VT.put_KeySpec(&this, Value);
			}
			public HRESULT get_Length(int32* pValue) mut
			{
				return VT.get_Length(&this, pValue);
			}
			public HRESULT put_Length(int32 Value) mut
			{
				return VT.put_Length(&this, Value);
			}
			public HRESULT get_ExportPolicy(X509PrivateKeyExportFlags* pValue) mut
			{
				return VT.get_ExportPolicy(&this, pValue);
			}
			public HRESULT put_ExportPolicy(X509PrivateKeyExportFlags Value) mut
			{
				return VT.put_ExportPolicy(&this, Value);
			}
			public HRESULT get_KeyUsage(X509PrivateKeyUsageFlags* pValue) mut
			{
				return VT.get_KeyUsage(&this, pValue);
			}
			public HRESULT put_KeyUsage(X509PrivateKeyUsageFlags Value) mut
			{
				return VT.put_KeyUsage(&this, Value);
			}
			public HRESULT get_KeyProtection(X509PrivateKeyProtection* pValue) mut
			{
				return VT.get_KeyProtection(&this, pValue);
			}
			public HRESULT put_KeyProtection(X509PrivateKeyProtection Value) mut
			{
				return VT.put_KeyProtection(&this, Value);
			}
			public HRESULT get_MachineContext(int16* pValue) mut
			{
				return VT.get_MachineContext(&this, pValue);
			}
			public HRESULT put_MachineContext(int16 Value) mut
			{
				return VT.put_MachineContext(&this, Value);
			}
			public HRESULT get_SecurityDescriptor(BSTR* pValue) mut
			{
				return VT.get_SecurityDescriptor(&this, pValue);
			}
			public HRESULT put_SecurityDescriptor(BSTR Value) mut
			{
				return VT.put_SecurityDescriptor(&this, Value);
			}
			public HRESULT get_Certificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Certificate(&this, Encoding, pValue);
			}
			public HRESULT put_Certificate(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_Certificate(&this, Encoding, Value);
			}
			public HRESULT get_UniqueContainerName(BSTR* pValue) mut
			{
				return VT.get_UniqueContainerName(&this, pValue);
			}
			public HRESULT get_Opened(int16* pValue) mut
			{
				return VT.get_Opened(&this, pValue);
			}
			public HRESULT get_DefaultContainer(int16* pValue) mut
			{
				return VT.get_DefaultContainer(&this, pValue);
			}
			public HRESULT get_Existing(int16* pValue) mut
			{
				return VT.get_Existing(&this, pValue);
			}
			public HRESULT put_Existing(int16 Value) mut
			{
				return VT.put_Existing(&this, Value);
			}
			public HRESULT get_Silent(int16* pValue) mut
			{
				return VT.get_Silent(&this, pValue);
			}
			public HRESULT put_Silent(int16 Value) mut
			{
				return VT.put_Silent(&this, Value);
			}
			public HRESULT get_ParentWindow(int32* pValue) mut
			{
				return VT.get_ParentWindow(&this, pValue);
			}
			public HRESULT put_ParentWindow(int32 Value) mut
			{
				return VT.put_ParentWindow(&this, Value);
			}
			public HRESULT get_UIContextMessage(BSTR* pValue) mut
			{
				return VT.get_UIContextMessage(&this, pValue);
			}
			public HRESULT put_UIContextMessage(BSTR Value) mut
			{
				return VT.put_UIContextMessage(&this, Value);
			}
			public HRESULT put_Pin(BSTR Value) mut
			{
				return VT.put_Pin(&this, Value);
			}
			public HRESULT get_FriendlyName(BSTR* pValue) mut
			{
				return VT.get_FriendlyName(&this, pValue);
			}
			public HRESULT put_FriendlyName(BSTR Value) mut
			{
				return VT.put_FriendlyName(&this, Value);
			}
			public HRESULT get_Description(BSTR* pValue) mut
			{
				return VT.get_Description(&this, pValue);
			}
			public HRESULT put_Description(BSTR Value) mut
			{
				return VT.put_Description(&this, Value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509PrivateKey *self) Open;
				public new function HRESULT(IX509PrivateKey *self) Create;
				public new function HRESULT(IX509PrivateKey *self) Close;
				public new function HRESULT(IX509PrivateKey *self) Delete;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyVerify VerifyType) Verify;
				public new function HRESULT(IX509PrivateKey *self, BSTR strExportType, BSTR strEncodedKey, EncodingType Encoding) Import;
				public new function HRESULT(IX509PrivateKey *self, BSTR strExportType, EncodingType Encoding, BSTR* pstrEncodedKey) Export;
				public new function HRESULT(IX509PrivateKey *self, IX509PublicKey** ppPublicKey) ExportPublicKey;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_ContainerName;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_ContainerName;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_ContainerNamePrefix;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_ContainerNamePrefix;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_ReaderName;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_ReaderName;
				public new function HRESULT(IX509PrivateKey *self, ICspInformations** ppValue) get_CspInformations;
				public new function HRESULT(IX509PrivateKey *self, ICspInformations* pValue) put_CspInformations;
				public new function HRESULT(IX509PrivateKey *self, ICspStatus** ppValue) get_CspStatus;
				public new function HRESULT(IX509PrivateKey *self, ICspStatus* pValue) put_CspStatus;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_ProviderName;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_ProviderName;
				public new function HRESULT(IX509PrivateKey *self, X509ProviderType* pValue) get_ProviderType;
				public new function HRESULT(IX509PrivateKey *self, X509ProviderType Value) put_ProviderType;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_LegacyCsp;
				public new function HRESULT(IX509PrivateKey *self, int16 Value) put_LegacyCsp;
				public new function HRESULT(IX509PrivateKey *self, IObjectId** ppValue) get_Algorithm;
				public new function HRESULT(IX509PrivateKey *self, IObjectId* pValue) put_Algorithm;
				public new function HRESULT(IX509PrivateKey *self, X509KeySpec* pValue) get_KeySpec;
				public new function HRESULT(IX509PrivateKey *self, X509KeySpec Value) put_KeySpec;
				public new function HRESULT(IX509PrivateKey *self, int32* pValue) get_Length;
				public new function HRESULT(IX509PrivateKey *self, int32 Value) put_Length;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyExportFlags* pValue) get_ExportPolicy;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyExportFlags Value) put_ExportPolicy;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyUsageFlags* pValue) get_KeyUsage;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyUsageFlags Value) put_KeyUsage;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyProtection* pValue) get_KeyProtection;
				public new function HRESULT(IX509PrivateKey *self, X509PrivateKeyProtection Value) put_KeyProtection;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_MachineContext;
				public new function HRESULT(IX509PrivateKey *self, int16 Value) put_MachineContext;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_SecurityDescriptor;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_SecurityDescriptor;
				public new function HRESULT(IX509PrivateKey *self, EncodingType Encoding, BSTR* pValue) get_Certificate;
				public new function HRESULT(IX509PrivateKey *self, EncodingType Encoding, BSTR Value) put_Certificate;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_UniqueContainerName;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_Opened;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_DefaultContainer;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_Existing;
				public new function HRESULT(IX509PrivateKey *self, int16 Value) put_Existing;
				public new function HRESULT(IX509PrivateKey *self, int16* pValue) get_Silent;
				public new function HRESULT(IX509PrivateKey *self, int16 Value) put_Silent;
				public new function HRESULT(IX509PrivateKey *self, int32* pValue) get_ParentWindow;
				public new function HRESULT(IX509PrivateKey *self, int32 Value) put_ParentWindow;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_UIContextMessage;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_UIContextMessage;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_Pin;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_FriendlyName;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_FriendlyName;
				public new function HRESULT(IX509PrivateKey *self, BSTR* pValue) get_Description;
				public new function HRESULT(IX509PrivateKey *self, BSTR Value) put_Description;
			}
		}
		[CRepr]
		public struct IX509PrivateKey2 : IX509PrivateKey
		{
			public const new Guid IID = .(0x728ab362, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HardwareKeyUsage(X509HardwareKeyUsageFlags* pValue) mut
			{
				return VT.get_HardwareKeyUsage(&this, pValue);
			}
			public HRESULT put_HardwareKeyUsage(X509HardwareKeyUsageFlags Value) mut
			{
				return VT.put_HardwareKeyUsage(&this, Value);
			}
			public HRESULT get_AlternateStorageLocation(BSTR* pValue) mut
			{
				return VT.get_AlternateStorageLocation(&this, pValue);
			}
			public HRESULT put_AlternateStorageLocation(BSTR Value) mut
			{
				return VT.put_AlternateStorageLocation(&this, Value);
			}
			public HRESULT get_AlgorithmName(BSTR* pValue) mut
			{
				return VT.get_AlgorithmName(&this, pValue);
			}
			public HRESULT put_AlgorithmName(BSTR Value) mut
			{
				return VT.put_AlgorithmName(&this, Value);
			}
			public HRESULT get_AlgorithmParameters(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_AlgorithmParameters(&this, Encoding, pValue);
			}
			public HRESULT put_AlgorithmParameters(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_AlgorithmParameters(&this, Encoding, Value);
			}
			public HRESULT get_ParametersExportType(X509KeyParametersExportType* pValue) mut
			{
				return VT.get_ParametersExportType(&this, pValue);
			}
			public HRESULT put_ParametersExportType(X509KeyParametersExportType Value) mut
			{
				return VT.put_ParametersExportType(&this, Value);
			}
			[CRepr]
			public struct VTable : IX509PrivateKey.VTable
			{
				public new function HRESULT(IX509PrivateKey2 *self, X509HardwareKeyUsageFlags* pValue) get_HardwareKeyUsage;
				public new function HRESULT(IX509PrivateKey2 *self, X509HardwareKeyUsageFlags Value) put_HardwareKeyUsage;
				public new function HRESULT(IX509PrivateKey2 *self, BSTR* pValue) get_AlternateStorageLocation;
				public new function HRESULT(IX509PrivateKey2 *self, BSTR Value) put_AlternateStorageLocation;
				public new function HRESULT(IX509PrivateKey2 *self, BSTR* pValue) get_AlgorithmName;
				public new function HRESULT(IX509PrivateKey2 *self, BSTR Value) put_AlgorithmName;
				public new function HRESULT(IX509PrivateKey2 *self, EncodingType Encoding, BSTR* pValue) get_AlgorithmParameters;
				public new function HRESULT(IX509PrivateKey2 *self, EncodingType Encoding, BSTR Value) put_AlgorithmParameters;
				public new function HRESULT(IX509PrivateKey2 *self, X509KeyParametersExportType* pValue) get_ParametersExportType;
				public new function HRESULT(IX509PrivateKey2 *self, X509KeyParametersExportType Value) put_ParametersExportType;
			}
		}
		[CRepr]
		public struct IX509EndorsementKey : IDispatch
		{
			public const new Guid IID = .(0xb11cd855, 0xf4c4, 0x4fc6, 0xb7, 0x10, 0x44, 0x22, 0x23, 0x7f, 0x09, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProviderName(BSTR* pValue) mut
			{
				return VT.get_ProviderName(&this, pValue);
			}
			public HRESULT put_ProviderName(BSTR Value) mut
			{
				return VT.put_ProviderName(&this, Value);
			}
			public HRESULT get_Length(int32* pValue) mut
			{
				return VT.get_Length(&this, pValue);
			}
			public HRESULT get_Opened(int16* pValue) mut
			{
				return VT.get_Opened(&this, pValue);
			}
			public HRESULT AddCertificate(EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.AddCertificate(&this, Encoding, strCertificate);
			}
			public HRESULT RemoveCertificate(EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.RemoveCertificate(&this, Encoding, strCertificate);
			}
			public HRESULT GetCertificateByIndex(int16 ManufacturerOnly, int32 dwIndex, EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.GetCertificateByIndex(&this, ManufacturerOnly, dwIndex, Encoding, pValue);
			}
			public HRESULT GetCertificateCount(int16 ManufacturerOnly, int32* pCount) mut
			{
				return VT.GetCertificateCount(&this, ManufacturerOnly, pCount);
			}
			public HRESULT ExportPublicKey(IX509PublicKey** ppPublicKey) mut
			{
				return VT.ExportPublicKey(&this, ppPublicKey);
			}
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509EndorsementKey *self, BSTR* pValue) get_ProviderName;
				public new function HRESULT(IX509EndorsementKey *self, BSTR Value) put_ProviderName;
				public new function HRESULT(IX509EndorsementKey *self, int32* pValue) get_Length;
				public new function HRESULT(IX509EndorsementKey *self, int16* pValue) get_Opened;
				public new function HRESULT(IX509EndorsementKey *self, EncodingType Encoding, BSTR strCertificate) AddCertificate;
				public new function HRESULT(IX509EndorsementKey *self, EncodingType Encoding, BSTR strCertificate) RemoveCertificate;
				public new function HRESULT(IX509EndorsementKey *self, int16 ManufacturerOnly, int32 dwIndex, EncodingType Encoding, BSTR* pValue) GetCertificateByIndex;
				public new function HRESULT(IX509EndorsementKey *self, int16 ManufacturerOnly, int32* pCount) GetCertificateCount;
				public new function HRESULT(IX509EndorsementKey *self, IX509PublicKey** ppPublicKey) ExportPublicKey;
				public new function HRESULT(IX509EndorsementKey *self) Open;
				public new function HRESULT(IX509EndorsementKey *self) Close;
			}
		}
		[CRepr]
		public struct IX509Extension : IDispatch
		{
			public const new Guid IID = .(0x728ab30d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.Initialize(&this, pObjectId, Encoding, strEncodedData);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			public HRESULT get_Critical(int16* pValue) mut
			{
				return VT.get_Critical(&this, pValue);
			}
			public HRESULT put_Critical(int16 Value) mut
			{
				return VT.put_Critical(&this, Value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509Extension *self, IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) Initialize;
				public new function HRESULT(IX509Extension *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(IX509Extension *self, EncodingType Encoding, BSTR* pValue) get_RawData;
				public new function HRESULT(IX509Extension *self, int16* pValue) get_Critical;
				public new function HRESULT(IX509Extension *self, int16 Value) put_Critical;
			}
		}
		[CRepr]
		public struct IX509Extensions : IDispatch
		{
			public const new Guid IID = .(0x728ab30e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509Extension** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509Extension* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_IndexByObjectId(IObjectId* pObjectId, int32* pIndex) mut
			{
				return VT.get_IndexByObjectId(&this, pObjectId, pIndex);
			}
			public HRESULT AddRange(IX509Extensions* pValue) mut
			{
				return VT.AddRange(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509Extensions *self, int32 Index, IX509Extension** pVal) get_ItemByIndex;
				public new function HRESULT(IX509Extensions *self, int32* pVal) get_Count;
				public new function HRESULT(IX509Extensions *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509Extensions *self, IX509Extension* pVal) Add;
				public new function HRESULT(IX509Extensions *self, int32 Index) Remove;
				public new function HRESULT(IX509Extensions *self) Clear;
				public new function HRESULT(IX509Extensions *self, IObjectId* pObjectId, int32* pIndex) get_IndexByObjectId;
				public new function HRESULT(IX509Extensions *self, IX509Extensions* pValue) AddRange;
			}
		}
		[CRepr]
		public struct IX509ExtensionKeyUsage : IX509Extension
		{
			public const new Guid IID = .(0x728ab30f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(X509KeyUsageFlags UsageFlags) mut
			{
				return VT.InitializeEncode(&this, UsageFlags);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_KeyUsage(X509KeyUsageFlags* pValue) mut
			{
				return VT.get_KeyUsage(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionKeyUsage *self, X509KeyUsageFlags UsageFlags) InitializeEncode;
				public new function HRESULT(IX509ExtensionKeyUsage *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionKeyUsage *self, X509KeyUsageFlags* pValue) get_KeyUsage;
			}
		}
		[CRepr]
		public struct IX509ExtensionEnhancedKeyUsage : IX509Extension
		{
			public const new Guid IID = .(0x728ab310, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(IObjectIds* pValue) mut
			{
				return VT.InitializeEncode(&this, pValue);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_EnhancedKeyUsage(IObjectIds** ppValue) mut
			{
				return VT.get_EnhancedKeyUsage(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionEnhancedKeyUsage *self, IObjectIds* pValue) InitializeEncode;
				public new function HRESULT(IX509ExtensionEnhancedKeyUsage *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionEnhancedKeyUsage *self, IObjectIds** ppValue) get_EnhancedKeyUsage;
			}
		}
		[CRepr]
		public struct IX509ExtensionTemplateName : IX509Extension
		{
			public const new Guid IID = .(0x728ab311, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(BSTR strTemplateName) mut
			{
				return VT.InitializeEncode(&this, strTemplateName);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_TemplateName(BSTR* pValue) mut
			{
				return VT.get_TemplateName(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionTemplateName *self, BSTR strTemplateName) InitializeEncode;
				public new function HRESULT(IX509ExtensionTemplateName *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionTemplateName *self, BSTR* pValue) get_TemplateName;
			}
		}
		[CRepr]
		public struct IX509ExtensionTemplate : IX509Extension
		{
			public const new Guid IID = .(0x728ab312, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(IObjectId* pTemplateOid, int32 MajorVersion, int32 MinorVersion) mut
			{
				return VT.InitializeEncode(&this, pTemplateOid, MajorVersion, MinorVersion);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_TemplateOid(IObjectId** ppValue) mut
			{
				return VT.get_TemplateOid(&this, ppValue);
			}
			public HRESULT get_MajorVersion(int32* pValue) mut
			{
				return VT.get_MajorVersion(&this, pValue);
			}
			public HRESULT get_MinorVersion(int32* pValue) mut
			{
				return VT.get_MinorVersion(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionTemplate *self, IObjectId* pTemplateOid, int32 MajorVersion, int32 MinorVersion) InitializeEncode;
				public new function HRESULT(IX509ExtensionTemplate *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionTemplate *self, IObjectId** ppValue) get_TemplateOid;
				public new function HRESULT(IX509ExtensionTemplate *self, int32* pValue) get_MajorVersion;
				public new function HRESULT(IX509ExtensionTemplate *self, int32* pValue) get_MinorVersion;
			}
		}
		[CRepr]
		public struct IAlternativeName : IDispatch
		{
			public const new Guid IID = .(0x728ab313, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromString(AlternativeNameType Type, BSTR strValue) mut
			{
				return VT.InitializeFromString(&this, Type, strValue);
			}
			public HRESULT InitializeFromRawData(AlternativeNameType Type, EncodingType Encoding, BSTR strRawData) mut
			{
				return VT.InitializeFromRawData(&this, Type, Encoding, strRawData);
			}
			public HRESULT InitializeFromOtherName(IObjectId* pObjectId, EncodingType Encoding, BSTR strRawData, int16 ToBeWrapped) mut
			{
				return VT.InitializeFromOtherName(&this, pObjectId, Encoding, strRawData, ToBeWrapped);
			}
			public HRESULT get_Type(AlternativeNameType* pValue) mut
			{
				return VT.get_Type(&this, pValue);
			}
			public HRESULT get_StrValue(BSTR* pValue) mut
			{
				return VT.get_StrValue(&this, pValue);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAlternativeName *self, AlternativeNameType Type, BSTR strValue) InitializeFromString;
				public new function HRESULT(IAlternativeName *self, AlternativeNameType Type, EncodingType Encoding, BSTR strRawData) InitializeFromRawData;
				public new function HRESULT(IAlternativeName *self, IObjectId* pObjectId, EncodingType Encoding, BSTR strRawData, int16 ToBeWrapped) InitializeFromOtherName;
				public new function HRESULT(IAlternativeName *self, AlternativeNameType* pValue) get_Type;
				public new function HRESULT(IAlternativeName *self, BSTR* pValue) get_StrValue;
				public new function HRESULT(IAlternativeName *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(IAlternativeName *self, EncodingType Encoding, BSTR* pValue) get_RawData;
			}
		}
		[CRepr]
		public struct IAlternativeNames : IDispatch
		{
			public const new Guid IID = .(0x728ab314, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IAlternativeName** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IAlternativeName* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IAlternativeNames *self, int32 Index, IAlternativeName** pVal) get_ItemByIndex;
				public new function HRESULT(IAlternativeNames *self, int32* pVal) get_Count;
				public new function HRESULT(IAlternativeNames *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IAlternativeNames *self, IAlternativeName* pVal) Add;
				public new function HRESULT(IAlternativeNames *self, int32 Index) Remove;
				public new function HRESULT(IAlternativeNames *self) Clear;
			}
		}
		[CRepr]
		public struct IX509ExtensionAlternativeNames : IX509Extension
		{
			public const new Guid IID = .(0x728ab315, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(IAlternativeNames* pValue) mut
			{
				return VT.InitializeEncode(&this, pValue);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_AlternativeNames(IAlternativeNames** ppValue) mut
			{
				return VT.get_AlternativeNames(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionAlternativeNames *self, IAlternativeNames* pValue) InitializeEncode;
				public new function HRESULT(IX509ExtensionAlternativeNames *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionAlternativeNames *self, IAlternativeNames** ppValue) get_AlternativeNames;
			}
		}
		[CRepr]
		public struct IX509ExtensionBasicConstraints : IX509Extension
		{
			public const new Guid IID = .(0x728ab316, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(int16 IsCA, int32 PathLenConstraint) mut
			{
				return VT.InitializeEncode(&this, IsCA, PathLenConstraint);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_IsCA(int16* pValue) mut
			{
				return VT.get_IsCA(&this, pValue);
			}
			public HRESULT get_PathLenConstraint(int32* pValue) mut
			{
				return VT.get_PathLenConstraint(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionBasicConstraints *self, int16 IsCA, int32 PathLenConstraint) InitializeEncode;
				public new function HRESULT(IX509ExtensionBasicConstraints *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionBasicConstraints *self, int16* pValue) get_IsCA;
				public new function HRESULT(IX509ExtensionBasicConstraints *self, int32* pValue) get_PathLenConstraint;
			}
		}
		[CRepr]
		public struct IX509ExtensionSubjectKeyIdentifier : IX509Extension
		{
			public const new Guid IID = .(0x728ab317, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(EncodingType Encoding, BSTR strKeyIdentifier) mut
			{
				return VT.InitializeEncode(&this, Encoding, strKeyIdentifier);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_SubjectKeyIdentifier(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_SubjectKeyIdentifier(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionSubjectKeyIdentifier *self, EncodingType Encoding, BSTR strKeyIdentifier) InitializeEncode;
				public new function HRESULT(IX509ExtensionSubjectKeyIdentifier *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionSubjectKeyIdentifier *self, EncodingType Encoding, BSTR* pValue) get_SubjectKeyIdentifier;
			}
		}
		[CRepr]
		public struct IX509ExtensionAuthorityKeyIdentifier : IX509Extension
		{
			public const new Guid IID = .(0x728ab318, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(EncodingType Encoding, BSTR strKeyIdentifier) mut
			{
				return VT.InitializeEncode(&this, Encoding, strKeyIdentifier);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_AuthorityKeyIdentifier(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_AuthorityKeyIdentifier(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionAuthorityKeyIdentifier *self, EncodingType Encoding, BSTR strKeyIdentifier) InitializeEncode;
				public new function HRESULT(IX509ExtensionAuthorityKeyIdentifier *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionAuthorityKeyIdentifier *self, EncodingType Encoding, BSTR* pValue) get_AuthorityKeyIdentifier;
			}
		}
		[CRepr]
		public struct ISmimeCapability : IDispatch
		{
			public const new Guid IID = .(0x728ab319, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IObjectId* pObjectId, int32 BitCount) mut
			{
				return VT.Initialize(&this, pObjectId, BitCount);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_BitCount(int32* pValue) mut
			{
				return VT.get_BitCount(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISmimeCapability *self, IObjectId* pObjectId, int32 BitCount) Initialize;
				public new function HRESULT(ISmimeCapability *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(ISmimeCapability *self, int32* pValue) get_BitCount;
			}
		}
		[CRepr]
		public struct ISmimeCapabilities : IDispatch
		{
			public const new Guid IID = .(0x728ab31a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ISmimeCapability** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ISmimeCapability* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT AddFromCsp(ICspInformation* pValue) mut
			{
				return VT.AddFromCsp(&this, pValue);
			}
			public HRESULT AddAvailableSmimeCapabilities(int16 MachineContext) mut
			{
				return VT.AddAvailableSmimeCapabilities(&this, MachineContext);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISmimeCapabilities *self, int32 Index, ISmimeCapability** pVal) get_ItemByIndex;
				public new function HRESULT(ISmimeCapabilities *self, int32* pVal) get_Count;
				public new function HRESULT(ISmimeCapabilities *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ISmimeCapabilities *self, ISmimeCapability* pVal) Add;
				public new function HRESULT(ISmimeCapabilities *self, int32 Index) Remove;
				public new function HRESULT(ISmimeCapabilities *self) Clear;
				public new function HRESULT(ISmimeCapabilities *self, ICspInformation* pValue) AddFromCsp;
				public new function HRESULT(ISmimeCapabilities *self, int16 MachineContext) AddAvailableSmimeCapabilities;
			}
		}
		[CRepr]
		public struct IX509ExtensionSmimeCapabilities : IX509Extension
		{
			public const new Guid IID = .(0x728ab31b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(ISmimeCapabilities* pValue) mut
			{
				return VT.InitializeEncode(&this, pValue);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_SmimeCapabilities(ISmimeCapabilities** ppValue) mut
			{
				return VT.get_SmimeCapabilities(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionSmimeCapabilities *self, ISmimeCapabilities* pValue) InitializeEncode;
				public new function HRESULT(IX509ExtensionSmimeCapabilities *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionSmimeCapabilities *self, ISmimeCapabilities** ppValue) get_SmimeCapabilities;
			}
		}
		[CRepr]
		public struct IPolicyQualifier : IDispatch
		{
			public const new Guid IID = .(0x728ab31c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(BSTR strQualifier, PolicyQualifierType Type) mut
			{
				return VT.InitializeEncode(&this, strQualifier, Type);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_Qualifier(BSTR* pValue) mut
			{
				return VT.get_Qualifier(&this, pValue);
			}
			public HRESULT get_Type(PolicyQualifierType* pValue) mut
			{
				return VT.get_Type(&this, pValue);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPolicyQualifier *self, BSTR strQualifier, PolicyQualifierType Type) InitializeEncode;
				public new function HRESULT(IPolicyQualifier *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(IPolicyQualifier *self, BSTR* pValue) get_Qualifier;
				public new function HRESULT(IPolicyQualifier *self, PolicyQualifierType* pValue) get_Type;
				public new function HRESULT(IPolicyQualifier *self, EncodingType Encoding, BSTR* pValue) get_RawData;
			}
		}
		[CRepr]
		public struct IPolicyQualifiers : IDispatch
		{
			public const new Guid IID = .(0x728ab31d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IPolicyQualifier** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IPolicyQualifier* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPolicyQualifiers *self, int32 Index, IPolicyQualifier** pVal) get_ItemByIndex;
				public new function HRESULT(IPolicyQualifiers *self, int32* pVal) get_Count;
				public new function HRESULT(IPolicyQualifiers *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IPolicyQualifiers *self, IPolicyQualifier* pVal) Add;
				public new function HRESULT(IPolicyQualifiers *self, int32 Index) Remove;
				public new function HRESULT(IPolicyQualifiers *self) Clear;
			}
		}
		[CRepr]
		public struct ICertificatePolicy : IDispatch
		{
			public const new Guid IID = .(0x728ab31e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IObjectId* pValue) mut
			{
				return VT.Initialize(&this, pValue);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_PolicyQualifiers(IPolicyQualifiers** ppValue) mut
			{
				return VT.get_PolicyQualifiers(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertificatePolicy *self, IObjectId* pValue) Initialize;
				public new function HRESULT(ICertificatePolicy *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(ICertificatePolicy *self, IPolicyQualifiers** ppValue) get_PolicyQualifiers;
			}
		}
		[CRepr]
		public struct ICertificatePolicies : IDispatch
		{
			public const new Guid IID = .(0x728ab31f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICertificatePolicy** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICertificatePolicy* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertificatePolicies *self, int32 Index, ICertificatePolicy** pVal) get_ItemByIndex;
				public new function HRESULT(ICertificatePolicies *self, int32* pVal) get_Count;
				public new function HRESULT(ICertificatePolicies *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICertificatePolicies *self, ICertificatePolicy* pVal) Add;
				public new function HRESULT(ICertificatePolicies *self, int32 Index) Remove;
				public new function HRESULT(ICertificatePolicies *self) Clear;
			}
		}
		[CRepr]
		public struct IX509ExtensionCertificatePolicies : IX509Extension
		{
			public const new Guid IID = .(0x728ab320, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(ICertificatePolicies* pValue) mut
			{
				return VT.InitializeEncode(&this, pValue);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_Policies(ICertificatePolicies** ppValue) mut
			{
				return VT.get_Policies(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionCertificatePolicies *self, ICertificatePolicies* pValue) InitializeEncode;
				public new function HRESULT(IX509ExtensionCertificatePolicies *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionCertificatePolicies *self, ICertificatePolicies** ppValue) get_Policies;
			}
		}
		[CRepr]
		public struct IX509ExtensionMSApplicationPolicies : IX509Extension
		{
			public const new Guid IID = .(0x728ab321, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(ICertificatePolicies* pValue) mut
			{
				return VT.InitializeEncode(&this, pValue);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_Policies(ICertificatePolicies** ppValue) mut
			{
				return VT.get_Policies(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Extension.VTable
			{
				public new function HRESULT(IX509ExtensionMSApplicationPolicies *self, ICertificatePolicies* pValue) InitializeEncode;
				public new function HRESULT(IX509ExtensionMSApplicationPolicies *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509ExtensionMSApplicationPolicies *self, ICertificatePolicies** ppValue) get_Policies;
			}
		}
		[CRepr]
		public struct IX509Attribute : IDispatch
		{
			public const new Guid IID = .(0x728ab322, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.Initialize(&this, pObjectId, Encoding, strEncodedData);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509Attribute *self, IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) Initialize;
				public new function HRESULT(IX509Attribute *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(IX509Attribute *self, EncodingType Encoding, BSTR* pValue) get_RawData;
			}
		}
		[CRepr]
		public struct IX509Attributes : IDispatch
		{
			public const new Guid IID = .(0x728ab323, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509Attribute** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509Attribute* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509Attributes *self, int32 Index, IX509Attribute** pVal) get_ItemByIndex;
				public new function HRESULT(IX509Attributes *self, int32* pVal) get_Count;
				public new function HRESULT(IX509Attributes *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509Attributes *self, IX509Attribute* pVal) Add;
				public new function HRESULT(IX509Attributes *self, int32 Index) Remove;
				public new function HRESULT(IX509Attributes *self) Clear;
			}
		}
		[CRepr]
		public struct IX509AttributeExtensions : IX509Attribute
		{
			public const new Guid IID = .(0x728ab324, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(IX509Extensions* pExtensions) mut
			{
				return VT.InitializeEncode(&this, pExtensions);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_X509Extensions(IX509Extensions** ppValue) mut
			{
				return VT.get_X509Extensions(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeExtensions *self, IX509Extensions* pExtensions) InitializeEncode;
				public new function HRESULT(IX509AttributeExtensions *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeExtensions *self, IX509Extensions** ppValue) get_X509Extensions;
			}
		}
		[CRepr]
		public struct IX509AttributeClientId : IX509Attribute
		{
			public const new Guid IID = .(0x728ab325, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(RequestClientInfoClientId ClientId, BSTR strMachineDnsName, BSTR strUserSamName, BSTR strProcessName) mut
			{
				return VT.InitializeEncode(&this, ClientId, strMachineDnsName, strUserSamName, strProcessName);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_ClientId(RequestClientInfoClientId* pValue) mut
			{
				return VT.get_ClientId(&this, pValue);
			}
			public HRESULT get_MachineDnsName(BSTR* pValue) mut
			{
				return VT.get_MachineDnsName(&this, pValue);
			}
			public HRESULT get_UserSamName(BSTR* pValue) mut
			{
				return VT.get_UserSamName(&this, pValue);
			}
			public HRESULT get_ProcessName(BSTR* pValue) mut
			{
				return VT.get_ProcessName(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeClientId *self, RequestClientInfoClientId ClientId, BSTR strMachineDnsName, BSTR strUserSamName, BSTR strProcessName) InitializeEncode;
				public new function HRESULT(IX509AttributeClientId *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeClientId *self, RequestClientInfoClientId* pValue) get_ClientId;
				public new function HRESULT(IX509AttributeClientId *self, BSTR* pValue) get_MachineDnsName;
				public new function HRESULT(IX509AttributeClientId *self, BSTR* pValue) get_UserSamName;
				public new function HRESULT(IX509AttributeClientId *self, BSTR* pValue) get_ProcessName;
			}
		}
		[CRepr]
		public struct IX509AttributeRenewalCertificate : IX509Attribute
		{
			public const new Guid IID = .(0x728ab326, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(EncodingType Encoding, BSTR strCert) mut
			{
				return VT.InitializeEncode(&this, Encoding, strCert);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_RenewalCertificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RenewalCertificate(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeRenewalCertificate *self, EncodingType Encoding, BSTR strCert) InitializeEncode;
				public new function HRESULT(IX509AttributeRenewalCertificate *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeRenewalCertificate *self, EncodingType Encoding, BSTR* pValue) get_RenewalCertificate;
			}
		}
		[CRepr]
		public struct IX509AttributeArchiveKey : IX509Attribute
		{
			public const new Guid IID = .(0x728ab327, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(IX509PrivateKey* pKey, EncodingType Encoding, BSTR strCAXCert, IObjectId* pAlgorithm, int32 EncryptionStrength) mut
			{
				return VT.InitializeEncode(&this, pKey, Encoding, strCAXCert, pAlgorithm, EncryptionStrength);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_EncryptedKeyBlob(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncryptedKeyBlob(&this, Encoding, pValue);
			}
			public HRESULT get_EncryptionAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_EncryptionAlgorithm(&this, ppValue);
			}
			public HRESULT get_EncryptionStrength(int32* pValue) mut
			{
				return VT.get_EncryptionStrength(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeArchiveKey *self, IX509PrivateKey* pKey, EncodingType Encoding, BSTR strCAXCert, IObjectId* pAlgorithm, int32 EncryptionStrength) InitializeEncode;
				public new function HRESULT(IX509AttributeArchiveKey *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeArchiveKey *self, EncodingType Encoding, BSTR* pValue) get_EncryptedKeyBlob;
				public new function HRESULT(IX509AttributeArchiveKey *self, IObjectId** ppValue) get_EncryptionAlgorithm;
				public new function HRESULT(IX509AttributeArchiveKey *self, int32* pValue) get_EncryptionStrength;
			}
		}
		[CRepr]
		public struct IX509AttributeArchiveKeyHash : IX509Attribute
		{
			public const new Guid IID = .(0x728ab328, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncodeFromEncryptedKeyBlob(EncodingType Encoding, BSTR strEncryptedKeyBlob) mut
			{
				return VT.InitializeEncodeFromEncryptedKeyBlob(&this, Encoding, strEncryptedKeyBlob);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_EncryptedKeyHashBlob(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncryptedKeyHashBlob(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeArchiveKeyHash *self, EncodingType Encoding, BSTR strEncryptedKeyBlob) InitializeEncodeFromEncryptedKeyBlob;
				public new function HRESULT(IX509AttributeArchiveKeyHash *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeArchiveKeyHash *self, EncodingType Encoding, BSTR* pValue) get_EncryptedKeyHashBlob;
			}
		}
		[CRepr]
		public struct IX509AttributeOSVersion : IX509Attribute
		{
			public const new Guid IID = .(0x728ab32a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(BSTR strOSVersion) mut
			{
				return VT.InitializeEncode(&this, strOSVersion);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_OSVersion(BSTR* pValue) mut
			{
				return VT.get_OSVersion(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeOSVersion *self, BSTR strOSVersion) InitializeEncode;
				public new function HRESULT(IX509AttributeOSVersion *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeOSVersion *self, BSTR* pValue) get_OSVersion;
			}
		}
		[CRepr]
		public struct IX509AttributeCspProvider : IX509Attribute
		{
			public const new Guid IID = .(0x728ab32b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEncode(X509KeySpec KeySpec, BSTR strProviderName, EncodingType Encoding, BSTR strSignature) mut
			{
				return VT.InitializeEncode(&this, KeySpec, strProviderName, Encoding, strSignature);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_KeySpec(X509KeySpec* pValue) mut
			{
				return VT.get_KeySpec(&this, pValue);
			}
			public HRESULT get_ProviderName(BSTR* pValue) mut
			{
				return VT.get_ProviderName(&this, pValue);
			}
			public HRESULT get_Signature(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Signature(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IX509Attribute.VTable
			{
				public new function HRESULT(IX509AttributeCspProvider *self, X509KeySpec KeySpec, BSTR strProviderName, EncodingType Encoding, BSTR strSignature) InitializeEncode;
				public new function HRESULT(IX509AttributeCspProvider *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(IX509AttributeCspProvider *self, X509KeySpec* pValue) get_KeySpec;
				public new function HRESULT(IX509AttributeCspProvider *self, BSTR* pValue) get_ProviderName;
				public new function HRESULT(IX509AttributeCspProvider *self, EncodingType Encoding, BSTR* pValue) get_Signature;
			}
		}
		[CRepr]
		public struct ICryptAttribute : IDispatch
		{
			public const new Guid IID = .(0x728ab32c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromObjectId(IObjectId* pObjectId) mut
			{
				return VT.InitializeFromObjectId(&this, pObjectId);
			}
			public HRESULT InitializeFromValues(IX509Attributes* pAttributes) mut
			{
				return VT.InitializeFromValues(&this, pAttributes);
			}
			public HRESULT get_ObjectId(IObjectId** ppValue) mut
			{
				return VT.get_ObjectId(&this, ppValue);
			}
			public HRESULT get_Values(IX509Attributes** ppValue) mut
			{
				return VT.get_Values(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICryptAttribute *self, IObjectId* pObjectId) InitializeFromObjectId;
				public new function HRESULT(ICryptAttribute *self, IX509Attributes* pAttributes) InitializeFromValues;
				public new function HRESULT(ICryptAttribute *self, IObjectId** ppValue) get_ObjectId;
				public new function HRESULT(ICryptAttribute *self, IX509Attributes** ppValue) get_Values;
			}
		}
		[CRepr]
		public struct ICryptAttributes : IDispatch
		{
			public const new Guid IID = .(0x728ab32d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICryptAttribute** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICryptAttribute* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_IndexByObjectId(IObjectId* pObjectId, int32* pIndex) mut
			{
				return VT.get_IndexByObjectId(&this, pObjectId, pIndex);
			}
			public HRESULT AddRange(ICryptAttributes* pValue) mut
			{
				return VT.AddRange(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICryptAttributes *self, int32 Index, ICryptAttribute** pVal) get_ItemByIndex;
				public new function HRESULT(ICryptAttributes *self, int32* pVal) get_Count;
				public new function HRESULT(ICryptAttributes *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICryptAttributes *self, ICryptAttribute* pVal) Add;
				public new function HRESULT(ICryptAttributes *self, int32 Index) Remove;
				public new function HRESULT(ICryptAttributes *self) Clear;
				public new function HRESULT(ICryptAttributes *self, IObjectId* pObjectId, int32* pIndex) get_IndexByObjectId;
				public new function HRESULT(ICryptAttributes *self, ICryptAttributes* pValue) AddRange;
			}
		}
		[CRepr]
		public struct ICertProperty : IDispatch
		{
			public const new Guid IID = .(0x728ab32e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.InitializeFromCertificate(&this, MachineContext, Encoding, strCertificate);
			}
			public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut
			{
				return VT.InitializeDecode(&this, Encoding, strEncodedData);
			}
			public HRESULT get_PropertyId(CERTENROLL_PROPERTYID* pValue) mut
			{
				return VT.get_PropertyId(&this, pValue);
			}
			public HRESULT put_PropertyId(CERTENROLL_PROPERTYID Value) mut
			{
				return VT.put_PropertyId(&this, Value);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			public HRESULT RemoveFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.RemoveFromCertificate(&this, MachineContext, Encoding, strCertificate);
			}
			public HRESULT SetValueOnCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.SetValueOnCertificate(&this, MachineContext, Encoding, strCertificate);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertProperty *self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificate;
				public new function HRESULT(ICertProperty *self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
				public new function HRESULT(ICertProperty *self, CERTENROLL_PROPERTYID* pValue) get_PropertyId;
				public new function HRESULT(ICertProperty *self, CERTENROLL_PROPERTYID Value) put_PropertyId;
				public new function HRESULT(ICertProperty *self, EncodingType Encoding, BSTR* pValue) get_RawData;
				public new function HRESULT(ICertProperty *self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) RemoveFromCertificate;
				public new function HRESULT(ICertProperty *self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) SetValueOnCertificate;
			}
		}
		[CRepr]
		public struct ICertProperties : IDispatch
		{
			public const new Guid IID = .(0x728ab32f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICertProperty** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICertProperty* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT InitializeFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.InitializeFromCertificate(&this, MachineContext, Encoding, strCertificate);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertProperties *self, int32 Index, ICertProperty** pVal) get_ItemByIndex;
				public new function HRESULT(ICertProperties *self, int32* pVal) get_Count;
				public new function HRESULT(ICertProperties *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICertProperties *self, ICertProperty* pVal) Add;
				public new function HRESULT(ICertProperties *self, int32 Index) Remove;
				public new function HRESULT(ICertProperties *self) Clear;
				public new function HRESULT(ICertProperties *self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificate;
			}
		}
		[CRepr]
		public struct ICertPropertyFriendlyName : ICertProperty
		{
			public const new Guid IID = .(0x728ab330, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strFriendlyName) mut
			{
				return VT.Initialize(&this, strFriendlyName);
			}
			public HRESULT get_FriendlyName(BSTR* pValue) mut
			{
				return VT.get_FriendlyName(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyFriendlyName *self, BSTR strFriendlyName) Initialize;
				public new function HRESULT(ICertPropertyFriendlyName *self, BSTR* pValue) get_FriendlyName;
			}
		}
		[CRepr]
		public struct ICertPropertyDescription : ICertProperty
		{
			public const new Guid IID = .(0x728ab331, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strDescription) mut
			{
				return VT.Initialize(&this, strDescription);
			}
			public HRESULT get_Description(BSTR* pValue) mut
			{
				return VT.get_Description(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyDescription *self, BSTR strDescription) Initialize;
				public new function HRESULT(ICertPropertyDescription *self, BSTR* pValue) get_Description;
			}
		}
		[CRepr]
		public struct ICertPropertyAutoEnroll : ICertProperty
		{
			public const new Guid IID = .(0x728ab332, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strTemplateName) mut
			{
				return VT.Initialize(&this, strTemplateName);
			}
			public HRESULT get_TemplateName(BSTR* pValue) mut
			{
				return VT.get_TemplateName(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyAutoEnroll *self, BSTR strTemplateName) Initialize;
				public new function HRESULT(ICertPropertyAutoEnroll *self, BSTR* pValue) get_TemplateName;
			}
		}
		[CRepr]
		public struct ICertPropertyRequestOriginator : ICertProperty
		{
			public const new Guid IID = .(0x728ab333, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strRequestOriginator) mut
			{
				return VT.Initialize(&this, strRequestOriginator);
			}
			public HRESULT InitializeFromLocalRequestOriginator() mut
			{
				return VT.InitializeFromLocalRequestOriginator(&this);
			}
			public HRESULT get_RequestOriginator(BSTR* pValue) mut
			{
				return VT.get_RequestOriginator(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyRequestOriginator *self, BSTR strRequestOriginator) Initialize;
				public new function HRESULT(ICertPropertyRequestOriginator *self) InitializeFromLocalRequestOriginator;
				public new function HRESULT(ICertPropertyRequestOriginator *self, BSTR* pValue) get_RequestOriginator;
			}
		}
		[CRepr]
		public struct ICertPropertySHA1Hash : ICertProperty
		{
			public const new Guid IID = .(0x728ab334, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EncodingType Encoding, BSTR strRenewalValue) mut
			{
				return VT.Initialize(&this, Encoding, strRenewalValue);
			}
			public HRESULT get_SHA1Hash(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_SHA1Hash(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertySHA1Hash *self, EncodingType Encoding, BSTR strRenewalValue) Initialize;
				public new function HRESULT(ICertPropertySHA1Hash *self, EncodingType Encoding, BSTR* pValue) get_SHA1Hash;
			}
		}
		[CRepr]
		public struct ICertPropertyKeyProvInfo : ICertProperty
		{
			public const new Guid IID = .(0x728ab336, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IX509PrivateKey* pValue) mut
			{
				return VT.Initialize(&this, pValue);
			}
			public HRESULT get_PrivateKey(IX509PrivateKey** ppValue) mut
			{
				return VT.get_PrivateKey(&this, ppValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyKeyProvInfo *self, IX509PrivateKey* pValue) Initialize;
				public new function HRESULT(ICertPropertyKeyProvInfo *self, IX509PrivateKey** ppValue) get_PrivateKey;
			}
		}
		[CRepr]
		public struct ICertPropertyArchived : ICertProperty
		{
			public const new Guid IID = .(0x728ab337, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(int16 ArchivedValue) mut
			{
				return VT.Initialize(&this, ArchivedValue);
			}
			public HRESULT get_Archived(int16* pValue) mut
			{
				return VT.get_Archived(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyArchived *self, int16 ArchivedValue) Initialize;
				public new function HRESULT(ICertPropertyArchived *self, int16* pValue) get_Archived;
			}
		}
		[CRepr]
		public struct ICertPropertyBackedUp : ICertProperty
		{
			public const new Guid IID = .(0x728ab338, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromCurrentTime(int16 BackedUpValue) mut
			{
				return VT.InitializeFromCurrentTime(&this, BackedUpValue);
			}
			public HRESULT Initialize(int16 BackedUpValue, double Date) mut
			{
				return VT.Initialize(&this, BackedUpValue, Date);
			}
			public HRESULT get_BackedUpValue(int16* pValue) mut
			{
				return VT.get_BackedUpValue(&this, pValue);
			}
			public HRESULT get_BackedUpTime(double* pDate) mut
			{
				return VT.get_BackedUpTime(&this, pDate);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyBackedUp *self, int16 BackedUpValue) InitializeFromCurrentTime;
				public new function HRESULT(ICertPropertyBackedUp *self, int16 BackedUpValue, double Date) Initialize;
				public new function HRESULT(ICertPropertyBackedUp *self, int16* pValue) get_BackedUpValue;
				public new function HRESULT(ICertPropertyBackedUp *self, double* pDate) get_BackedUpTime;
			}
		}
		[CRepr]
		public struct ICertPropertyEnrollment : ICertProperty
		{
			public const new Guid IID = .(0x728ab339, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(int32 RequestId, BSTR strCADnsName, BSTR strCAName, BSTR strFriendlyName) mut
			{
				return VT.Initialize(&this, RequestId, strCADnsName, strCAName, strFriendlyName);
			}
			public HRESULT get_RequestId(int32* pValue) mut
			{
				return VT.get_RequestId(&this, pValue);
			}
			public HRESULT get_CADnsName(BSTR* pValue) mut
			{
				return VT.get_CADnsName(&this, pValue);
			}
			public HRESULT get_CAName(BSTR* pValue) mut
			{
				return VT.get_CAName(&this, pValue);
			}
			public HRESULT get_FriendlyName(BSTR* pValue) mut
			{
				return VT.get_FriendlyName(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyEnrollment *self, int32 RequestId, BSTR strCADnsName, BSTR strCAName, BSTR strFriendlyName) Initialize;
				public new function HRESULT(ICertPropertyEnrollment *self, int32* pValue) get_RequestId;
				public new function HRESULT(ICertPropertyEnrollment *self, BSTR* pValue) get_CADnsName;
				public new function HRESULT(ICertPropertyEnrollment *self, BSTR* pValue) get_CAName;
				public new function HRESULT(ICertPropertyEnrollment *self, BSTR* pValue) get_FriendlyName;
			}
		}
		[CRepr]
		public struct ICertPropertyRenewal : ICertProperty
		{
			public const new Guid IID = .(0x728ab33a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EncodingType Encoding, BSTR strRenewalValue) mut
			{
				return VT.Initialize(&this, Encoding, strRenewalValue);
			}
			public HRESULT InitializeFromCertificateHash(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.InitializeFromCertificateHash(&this, MachineContext, Encoding, strCertificate);
			}
			public HRESULT get_Renewal(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Renewal(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyRenewal *self, EncodingType Encoding, BSTR strRenewalValue) Initialize;
				public new function HRESULT(ICertPropertyRenewal *self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificateHash;
				public new function HRESULT(ICertPropertyRenewal *self, EncodingType Encoding, BSTR* pValue) get_Renewal;
			}
		}
		[CRepr]
		public struct ICertPropertyArchivedKeyHash : ICertProperty
		{
			public const new Guid IID = .(0x728ab33b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EncodingType Encoding, BSTR strArchivedKeyHashValue) mut
			{
				return VT.Initialize(&this, Encoding, strArchivedKeyHashValue);
			}
			public HRESULT get_ArchivedKeyHash(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_ArchivedKeyHash(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyArchivedKeyHash *self, EncodingType Encoding, BSTR strArchivedKeyHashValue) Initialize;
				public new function HRESULT(ICertPropertyArchivedKeyHash *self, EncodingType Encoding, BSTR* pValue) get_ArchivedKeyHash;
			}
		}
		[CRepr]
		public struct ICertPropertyEnrollmentPolicyServer : ICertProperty
		{
			public const new Guid IID = .(0x728ab34a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EnrollmentPolicyServerPropertyFlags PropertyFlags, X509EnrollmentAuthFlags AuthFlags, X509EnrollmentAuthFlags EnrollmentServerAuthFlags, PolicyServerUrlFlags UrlFlags, BSTR strRequestId, BSTR strUrl, BSTR strId, BSTR strEnrollmentServerUrl) mut
			{
				return VT.Initialize(&this, PropertyFlags, AuthFlags, EnrollmentServerAuthFlags, UrlFlags, strRequestId, strUrl, strId, strEnrollmentServerUrl);
			}
			public HRESULT GetPolicyServerUrl(BSTR* pValue) mut
			{
				return VT.GetPolicyServerUrl(&this, pValue);
			}
			public HRESULT GetPolicyServerId(BSTR* pValue) mut
			{
				return VT.GetPolicyServerId(&this, pValue);
			}
			public HRESULT GetEnrollmentServerUrl(BSTR* pValue) mut
			{
				return VT.GetEnrollmentServerUrl(&this, pValue);
			}
			public HRESULT GetRequestIdString(BSTR* pValue) mut
			{
				return VT.GetRequestIdString(&this, pValue);
			}
			public HRESULT GetPropertyFlags(EnrollmentPolicyServerPropertyFlags* pValue) mut
			{
				return VT.GetPropertyFlags(&this, pValue);
			}
			public HRESULT GetUrlFlags(PolicyServerUrlFlags* pValue) mut
			{
				return VT.GetUrlFlags(&this, pValue);
			}
			public HRESULT GetAuthentication(X509EnrollmentAuthFlags* pValue) mut
			{
				return VT.GetAuthentication(&this, pValue);
			}
			public HRESULT GetEnrollmentServerAuthentication(X509EnrollmentAuthFlags* pValue) mut
			{
				return VT.GetEnrollmentServerAuthentication(&this, pValue);
			}
			[CRepr]
			public struct VTable : ICertProperty.VTable
			{
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, EnrollmentPolicyServerPropertyFlags PropertyFlags, X509EnrollmentAuthFlags AuthFlags, X509EnrollmentAuthFlags EnrollmentServerAuthFlags, PolicyServerUrlFlags UrlFlags, BSTR strRequestId, BSTR strUrl, BSTR strId, BSTR strEnrollmentServerUrl) Initialize;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, BSTR* pValue) GetPolicyServerUrl;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, BSTR* pValue) GetPolicyServerId;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, BSTR* pValue) GetEnrollmentServerUrl;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, BSTR* pValue) GetRequestIdString;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, EnrollmentPolicyServerPropertyFlags* pValue) GetPropertyFlags;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, PolicyServerUrlFlags* pValue) GetUrlFlags;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, X509EnrollmentAuthFlags* pValue) GetAuthentication;
				public new function HRESULT(ICertPropertyEnrollmentPolicyServer *self, X509EnrollmentAuthFlags* pValue) GetEnrollmentServerAuthentication;
			}
		}
		[CRepr]
		public struct IX509SignatureInformation : IDispatch
		{
			public const new Guid IID = .(0x728ab33c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_HashAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_HashAlgorithm(&this, ppValue);
			}
			public HRESULT put_HashAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_HashAlgorithm(&this, pValue);
			}
			public HRESULT get_PublicKeyAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_PublicKeyAlgorithm(&this, ppValue);
			}
			public HRESULT put_PublicKeyAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_PublicKeyAlgorithm(&this, pValue);
			}
			public HRESULT get_Parameters(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Parameters(&this, Encoding, pValue);
			}
			public HRESULT put_Parameters(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_Parameters(&this, Encoding, Value);
			}
			public HRESULT get_AlternateSignatureAlgorithm(int16* pValue) mut
			{
				return VT.get_AlternateSignatureAlgorithm(&this, pValue);
			}
			public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut
			{
				return VT.put_AlternateSignatureAlgorithm(&this, Value);
			}
			public HRESULT get_AlternateSignatureAlgorithmSet(int16* pValue) mut
			{
				return VT.get_AlternateSignatureAlgorithmSet(&this, pValue);
			}
			public HRESULT get_NullSigned(int16* pValue) mut
			{
				return VT.get_NullSigned(&this, pValue);
			}
			public HRESULT put_NullSigned(int16 Value) mut
			{
				return VT.put_NullSigned(&this, Value);
			}
			public HRESULT GetSignatureAlgorithm(int16 Pkcs7Signature, int16 SignatureKey, IObjectId** ppValue) mut
			{
				return VT.GetSignatureAlgorithm(&this, Pkcs7Signature, SignatureKey, ppValue);
			}
			public HRESULT SetDefaultValues() mut
			{
				return VT.SetDefaultValues(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509SignatureInformation *self, IObjectId** ppValue) get_HashAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, IObjectId* pValue) put_HashAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, IObjectId** ppValue) get_PublicKeyAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, IObjectId* pValue) put_PublicKeyAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, EncodingType Encoding, BSTR* pValue) get_Parameters;
				public new function HRESULT(IX509SignatureInformation *self, EncodingType Encoding, BSTR Value) put_Parameters;
				public new function HRESULT(IX509SignatureInformation *self, int16* pValue) get_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, int16 Value) put_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self, int16* pValue) get_AlternateSignatureAlgorithmSet;
				public new function HRESULT(IX509SignatureInformation *self, int16* pValue) get_NullSigned;
				public new function HRESULT(IX509SignatureInformation *self, int16 Value) put_NullSigned;
				public new function HRESULT(IX509SignatureInformation *self, int16 Pkcs7Signature, int16 SignatureKey, IObjectId** ppValue) GetSignatureAlgorithm;
				public new function HRESULT(IX509SignatureInformation *self) SetDefaultValues;
			}
		}
		[CRepr]
		public struct ISignerCertificate : IDispatch
		{
			public const new Guid IID = .(0x728ab33d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(int16 MachineContext, X509PrivateKeyVerify VerifyType, EncodingType Encoding, BSTR strCertificate) mut
			{
				return VT.Initialize(&this, MachineContext, VerifyType, Encoding, strCertificate);
			}
			public HRESULT get_Certificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Certificate(&this, Encoding, pValue);
			}
			public HRESULT get_PrivateKey(IX509PrivateKey** ppValue) mut
			{
				return VT.get_PrivateKey(&this, ppValue);
			}
			public HRESULT get_Silent(int16* pValue) mut
			{
				return VT.get_Silent(&this, pValue);
			}
			public HRESULT put_Silent(int16 Value) mut
			{
				return VT.put_Silent(&this, Value);
			}
			public HRESULT get_ParentWindow(int32* pValue) mut
			{
				return VT.get_ParentWindow(&this, pValue);
			}
			public HRESULT put_ParentWindow(int32 Value) mut
			{
				return VT.put_ParentWindow(&this, Value);
			}
			public HRESULT get_UIContextMessage(BSTR* pValue) mut
			{
				return VT.get_UIContextMessage(&this, pValue);
			}
			public HRESULT put_UIContextMessage(BSTR Value) mut
			{
				return VT.put_UIContextMessage(&this, Value);
			}
			public HRESULT put_Pin(BSTR Value) mut
			{
				return VT.put_Pin(&this, Value);
			}
			public HRESULT get_SignatureInformation(IX509SignatureInformation** ppValue) mut
			{
				return VT.get_SignatureInformation(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISignerCertificate *self, int16 MachineContext, X509PrivateKeyVerify VerifyType, EncodingType Encoding, BSTR strCertificate) Initialize;
				public new function HRESULT(ISignerCertificate *self, EncodingType Encoding, BSTR* pValue) get_Certificate;
				public new function HRESULT(ISignerCertificate *self, IX509PrivateKey** ppValue) get_PrivateKey;
				public new function HRESULT(ISignerCertificate *self, int16* pValue) get_Silent;
				public new function HRESULT(ISignerCertificate *self, int16 Value) put_Silent;
				public new function HRESULT(ISignerCertificate *self, int32* pValue) get_ParentWindow;
				public new function HRESULT(ISignerCertificate *self, int32 Value) put_ParentWindow;
				public new function HRESULT(ISignerCertificate *self, BSTR* pValue) get_UIContextMessage;
				public new function HRESULT(ISignerCertificate *self, BSTR Value) put_UIContextMessage;
				public new function HRESULT(ISignerCertificate *self, BSTR Value) put_Pin;
				public new function HRESULT(ISignerCertificate *self, IX509SignatureInformation** ppValue) get_SignatureInformation;
			}
		}
		[CRepr]
		public struct ISignerCertificates : IDispatch
		{
			public const new Guid IID = .(0x728ab33e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ISignerCertificate** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ISignerCertificate* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT Find(ISignerCertificate* pSignerCert, int32* piSignerCert) mut
			{
				return VT.Find(&this, pSignerCert, piSignerCert);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ISignerCertificates *self, int32 Index, ISignerCertificate** pVal) get_ItemByIndex;
				public new function HRESULT(ISignerCertificates *self, int32* pVal) get_Count;
				public new function HRESULT(ISignerCertificates *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ISignerCertificates *self, ISignerCertificate* pVal) Add;
				public new function HRESULT(ISignerCertificates *self, int32 Index) Remove;
				public new function HRESULT(ISignerCertificates *self) Clear;
				public new function HRESULT(ISignerCertificates *self, ISignerCertificate* pSignerCert, int32* piSignerCert) Find;
			}
		}
		[CRepr]
		public struct IX509NameValuePair : IDispatch
		{
			public const new Guid IID = .(0x728ab33f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strName, BSTR strValue) mut
			{
				return VT.Initialize(&this, strName, strValue);
			}
			public HRESULT get_Value(BSTR* pValue) mut
			{
				return VT.get_Value(&this, pValue);
			}
			public HRESULT get_Name(BSTR* pValue) mut
			{
				return VT.get_Name(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509NameValuePair *self, BSTR strName, BSTR strValue) Initialize;
				public new function HRESULT(IX509NameValuePair *self, BSTR* pValue) get_Value;
				public new function HRESULT(IX509NameValuePair *self, BSTR* pValue) get_Name;
			}
		}
		[CRepr]
		public struct IX509NameValuePairs : IDispatch
		{
			public const new Guid IID = .(0x728ab340, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509NameValuePair** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509NameValuePair* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509NameValuePairs *self, int32 Index, IX509NameValuePair** pVal) get_ItemByIndex;
				public new function HRESULT(IX509NameValuePairs *self, int32* pVal) get_Count;
				public new function HRESULT(IX509NameValuePairs *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509NameValuePairs *self, IX509NameValuePair* pVal) Add;
				public new function HRESULT(IX509NameValuePairs *self, int32 Index) Remove;
				public new function HRESULT(IX509NameValuePairs *self) Clear;
			}
		}
		[CRepr]
		public struct IX509CertificateTemplate : IDispatch
		{
			public const new Guid IID = .(0x54244a13, 0x555a, 0x4e22, 0x89, 0x6d, 0x1b, 0x0e, 0x52, 0xf7, 0x64, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Property(EnrollmentTemplateProperty property, VARIANT* pValue) mut
			{
				return VT.get_Property(&this, property, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateTemplate *self, EnrollmentTemplateProperty property, VARIANT* pValue) get_Property;
			}
		}
		[CRepr]
		public struct IX509CertificateTemplates : IDispatch
		{
			public const new Guid IID = .(0x13b79003, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509CertificateTemplate** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509CertificateTemplate* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_ItemByName(BSTR bstrName, IX509CertificateTemplate** ppValue) mut
			{
				return VT.get_ItemByName(&this, bstrName, ppValue);
			}
			public HRESULT get_ItemByOid(IObjectId* pOid, IX509CertificateTemplate** ppValue) mut
			{
				return VT.get_ItemByOid(&this, pOid, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateTemplates *self, int32 Index, IX509CertificateTemplate** pVal) get_ItemByIndex;
				public new function HRESULT(IX509CertificateTemplates *self, int32* pVal) get_Count;
				public new function HRESULT(IX509CertificateTemplates *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509CertificateTemplates *self, IX509CertificateTemplate* pVal) Add;
				public new function HRESULT(IX509CertificateTemplates *self, int32 Index) Remove;
				public new function HRESULT(IX509CertificateTemplates *self) Clear;
				public new function HRESULT(IX509CertificateTemplates *self, BSTR bstrName, IX509CertificateTemplate** ppValue) get_ItemByName;
				public new function HRESULT(IX509CertificateTemplates *self, IObjectId* pOid, IX509CertificateTemplate** ppValue) get_ItemByOid;
			}
		}
		[CRepr]
		public struct IX509CertificateTemplateWritable : IDispatch
		{
			public const new Guid IID = .(0xf49466a7, 0x395a, 0x4e9e, 0xb6, 0xe7, 0x32, 0xb3, 0x31, 0x60, 0x0d, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IX509CertificateTemplate* pValue) mut
			{
				return VT.Initialize(&this, pValue);
			}
			public HRESULT Commit(CommitTemplateFlags commitFlags, BSTR strServerContext) mut
			{
				return VT.Commit(&this, commitFlags, strServerContext);
			}
			public HRESULT get_Property(EnrollmentTemplateProperty property, VARIANT* pValue) mut
			{
				return VT.get_Property(&this, property, pValue);
			}
			public HRESULT put_Property(EnrollmentTemplateProperty property, VARIANT value) mut
			{
				return VT.put_Property(&this, property, value);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppValue) mut
			{
				return VT.get_Template(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateTemplateWritable *self, IX509CertificateTemplate* pValue) Initialize;
				public new function HRESULT(IX509CertificateTemplateWritable *self, CommitTemplateFlags commitFlags, BSTR strServerContext) Commit;
				public new function HRESULT(IX509CertificateTemplateWritable *self, EnrollmentTemplateProperty property, VARIANT* pValue) get_Property;
				public new function HRESULT(IX509CertificateTemplateWritable *self, EnrollmentTemplateProperty property, VARIANT value) put_Property;
				public new function HRESULT(IX509CertificateTemplateWritable *self, IX509CertificateTemplate** ppValue) get_Template;
			}
		}
		[CRepr]
		public struct ICertificationAuthority : IDispatch
		{
			public const new Guid IID = .(0x835d1f61, 0x1e95, 0x4bc8, 0xb4, 0xd3, 0x97, 0x6c, 0x42, 0xb9, 0x68, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Property(EnrollmentCAProperty property, VARIANT* pValue) mut
			{
				return VT.get_Property(&this, property, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertificationAuthority *self, EnrollmentCAProperty property, VARIANT* pValue) get_Property;
			}
		}
		[CRepr]
		public struct ICertificationAuthorities : IDispatch
		{
			public const new Guid IID = .(0x13b79005, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, ICertificationAuthority** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(ICertificationAuthority* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT ComputeSiteCosts() mut
			{
				return VT.ComputeSiteCosts(&this);
			}
			public HRESULT get_ItemByName(BSTR strName, ICertificationAuthority** ppValue) mut
			{
				return VT.get_ItemByName(&this, strName, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertificationAuthorities *self, int32 Index, ICertificationAuthority** pVal) get_ItemByIndex;
				public new function HRESULT(ICertificationAuthorities *self, int32* pVal) get_Count;
				public new function HRESULT(ICertificationAuthorities *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(ICertificationAuthorities *self, ICertificationAuthority* pVal) Add;
				public new function HRESULT(ICertificationAuthorities *self, int32 Index) Remove;
				public new function HRESULT(ICertificationAuthorities *self) Clear;
				public new function HRESULT(ICertificationAuthorities *self) ComputeSiteCosts;
				public new function HRESULT(ICertificationAuthorities *self, BSTR strName, ICertificationAuthority** ppValue) get_ItemByName;
			}
		}
		[CRepr]
		public struct IX509EnrollmentPolicyServer : IDispatch
		{
			public const new Guid IID = .(0x13b79026, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrPolicyServerUrl, BSTR bstrPolicyServerId, X509EnrollmentAuthFlags authFlags, int16 fIsUnTrusted, X509CertificateEnrollmentContext context) mut
			{
				return VT.Initialize(&this, bstrPolicyServerUrl, bstrPolicyServerId, authFlags, fIsUnTrusted, context);
			}
			public HRESULT LoadPolicy(X509EnrollmentPolicyLoadOption option) mut
			{
				return VT.LoadPolicy(&this, option);
			}
			public HRESULT GetTemplates(IX509CertificateTemplates** pTemplates) mut
			{
				return VT.GetTemplates(&this, pTemplates);
			}
			public HRESULT GetCAsForTemplate(IX509CertificateTemplate* pTemplate, ICertificationAuthorities** ppCAs) mut
			{
				return VT.GetCAsForTemplate(&this, pTemplate, ppCAs);
			}
			public HRESULT GetCAs(ICertificationAuthorities** ppCAs) mut
			{
				return VT.GetCAs(&this, ppCAs);
			}
			public HRESULT Validate() mut
			{
				return VT.Validate(&this);
			}
			public HRESULT GetCustomOids(IObjectIds** ppObjectIds) mut
			{
				return VT.GetCustomOids(&this, ppObjectIds);
			}
			public HRESULT GetNextUpdateTime(double* pDate) mut
			{
				return VT.GetNextUpdateTime(&this, pDate);
			}
			public HRESULT GetLastUpdateTime(double* pDate) mut
			{
				return VT.GetLastUpdateTime(&this, pDate);
			}
			public HRESULT GetPolicyServerUrl(BSTR* pValue) mut
			{
				return VT.GetPolicyServerUrl(&this, pValue);
			}
			public HRESULT GetPolicyServerId(BSTR* pValue) mut
			{
				return VT.GetPolicyServerId(&this, pValue);
			}
			public HRESULT GetFriendlyName(BSTR* pValue) mut
			{
				return VT.GetFriendlyName(&this, pValue);
			}
			public HRESULT GetIsDefaultCEP(int16* pValue) mut
			{
				return VT.GetIsDefaultCEP(&this, pValue);
			}
			public HRESULT GetUseClientId(int16* pValue) mut
			{
				return VT.GetUseClientId(&this, pValue);
			}
			public HRESULT GetAllowUnTrustedCA(int16* pValue) mut
			{
				return VT.GetAllowUnTrustedCA(&this, pValue);
			}
			public HRESULT GetCachePath(BSTR* pValue) mut
			{
				return VT.GetCachePath(&this, pValue);
			}
			public HRESULT GetCacheDir(BSTR* pValue) mut
			{
				return VT.GetCacheDir(&this, pValue);
			}
			public HRESULT GetAuthFlags(X509EnrollmentAuthFlags* pValue) mut
			{
				return VT.GetAuthFlags(&this, pValue);
			}
			public HRESULT SetCredential(int32 hWndParent, X509EnrollmentAuthFlags flag, BSTR strCredential, BSTR strPassword) mut
			{
				return VT.SetCredential(&this, hWndParent, flag, strCredential, strPassword);
			}
			public HRESULT QueryChanges(int16* pValue) mut
			{
				return VT.QueryChanges(&this, pValue);
			}
			public HRESULT InitializeImport(VARIANT val) mut
			{
				return VT.InitializeImport(&this, val);
			}
			public HRESULT Export(X509EnrollmentPolicyExportFlags exportFlags, VARIANT* pVal) mut
			{
				return VT.Export(&this, exportFlags, pVal);
			}
			public HRESULT get_Cost(uint32* pValue) mut
			{
				return VT.get_Cost(&this, pValue);
			}
			public HRESULT put_Cost(uint32 value) mut
			{
				return VT.put_Cost(&this, value);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR bstrPolicyServerUrl, BSTR bstrPolicyServerId, X509EnrollmentAuthFlags authFlags, int16 fIsUnTrusted, X509CertificateEnrollmentContext context) Initialize;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, X509EnrollmentPolicyLoadOption option) LoadPolicy;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, IX509CertificateTemplates** pTemplates) GetTemplates;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, IX509CertificateTemplate* pTemplate, ICertificationAuthorities** ppCAs) GetCAsForTemplate;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, ICertificationAuthorities** ppCAs) GetCAs;
				public new function HRESULT(IX509EnrollmentPolicyServer *self) Validate;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, IObjectIds** ppObjectIds) GetCustomOids;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, double* pDate) GetNextUpdateTime;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, double* pDate) GetLastUpdateTime;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR* pValue) GetPolicyServerUrl;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR* pValue) GetPolicyServerId;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR* pValue) GetFriendlyName;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, int16* pValue) GetIsDefaultCEP;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, int16* pValue) GetUseClientId;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, int16* pValue) GetAllowUnTrustedCA;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR* pValue) GetCachePath;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, BSTR* pValue) GetCacheDir;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, X509EnrollmentAuthFlags* pValue) GetAuthFlags;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, int32 hWndParent, X509EnrollmentAuthFlags flag, BSTR strCredential, BSTR strPassword) SetCredential;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, int16* pValue) QueryChanges;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, VARIANT val) InitializeImport;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, X509EnrollmentPolicyExportFlags exportFlags, VARIANT* pVal) Export;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, uint32* pValue) get_Cost;
				public new function HRESULT(IX509EnrollmentPolicyServer *self, uint32 value) put_Cost;
			}
		}
		[CRepr]
		public struct IX509PolicyServerUrl : IDispatch
		{
			public const new Guid IID = .(0x884e204a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(X509CertificateEnrollmentContext context) mut
			{
				return VT.Initialize(&this, context);
			}
			public HRESULT get_Url(BSTR* ppValue) mut
			{
				return VT.get_Url(&this, ppValue);
			}
			public HRESULT put_Url(BSTR pValue) mut
			{
				return VT.put_Url(&this, pValue);
			}
			public HRESULT get_Default(int16* pValue) mut
			{
				return VT.get_Default(&this, pValue);
			}
			public HRESULT put_Default(int16 value) mut
			{
				return VT.put_Default(&this, value);
			}
			public HRESULT get_Flags(PolicyServerUrlFlags* pValue) mut
			{
				return VT.get_Flags(&this, pValue);
			}
			public HRESULT put_Flags(PolicyServerUrlFlags Flags) mut
			{
				return VT.put_Flags(&this, Flags);
			}
			public HRESULT get_AuthFlags(X509EnrollmentAuthFlags* pValue) mut
			{
				return VT.get_AuthFlags(&this, pValue);
			}
			public HRESULT put_AuthFlags(X509EnrollmentAuthFlags Flags) mut
			{
				return VT.put_AuthFlags(&this, Flags);
			}
			public HRESULT get_Cost(uint32* pValue) mut
			{
				return VT.get_Cost(&this, pValue);
			}
			public HRESULT put_Cost(uint32 value) mut
			{
				return VT.put_Cost(&this, value);
			}
			public HRESULT GetStringProperty(PolicyServerUrlPropertyID propertyId, BSTR* ppValue) mut
			{
				return VT.GetStringProperty(&this, propertyId, ppValue);
			}
			public HRESULT SetStringProperty(PolicyServerUrlPropertyID propertyId, BSTR pValue) mut
			{
				return VT.SetStringProperty(&this, propertyId, pValue);
			}
			public HRESULT UpdateRegistry(X509CertificateEnrollmentContext context) mut
			{
				return VT.UpdateRegistry(&this, context);
			}
			public HRESULT RemoveFromRegistry(X509CertificateEnrollmentContext context) mut
			{
				return VT.RemoveFromRegistry(&this, context);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509PolicyServerUrl *self, X509CertificateEnrollmentContext context) Initialize;
				public new function HRESULT(IX509PolicyServerUrl *self, BSTR* ppValue) get_Url;
				public new function HRESULT(IX509PolicyServerUrl *self, BSTR pValue) put_Url;
				public new function HRESULT(IX509PolicyServerUrl *self, int16* pValue) get_Default;
				public new function HRESULT(IX509PolicyServerUrl *self, int16 value) put_Default;
				public new function HRESULT(IX509PolicyServerUrl *self, PolicyServerUrlFlags* pValue) get_Flags;
				public new function HRESULT(IX509PolicyServerUrl *self, PolicyServerUrlFlags Flags) put_Flags;
				public new function HRESULT(IX509PolicyServerUrl *self, X509EnrollmentAuthFlags* pValue) get_AuthFlags;
				public new function HRESULT(IX509PolicyServerUrl *self, X509EnrollmentAuthFlags Flags) put_AuthFlags;
				public new function HRESULT(IX509PolicyServerUrl *self, uint32* pValue) get_Cost;
				public new function HRESULT(IX509PolicyServerUrl *self, uint32 value) put_Cost;
				public new function HRESULT(IX509PolicyServerUrl *self, PolicyServerUrlPropertyID propertyId, BSTR* ppValue) GetStringProperty;
				public new function HRESULT(IX509PolicyServerUrl *self, PolicyServerUrlPropertyID propertyId, BSTR pValue) SetStringProperty;
				public new function HRESULT(IX509PolicyServerUrl *self, X509CertificateEnrollmentContext context) UpdateRegistry;
				public new function HRESULT(IX509PolicyServerUrl *self, X509CertificateEnrollmentContext context) RemoveFromRegistry;
			}
		}
		[CRepr]
		public struct IX509PolicyServerListManager : IDispatch
		{
			public const new Guid IID = .(0x884e204b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509PolicyServerUrl** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509PolicyServerUrl* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT Initialize(X509CertificateEnrollmentContext context, PolicyServerUrlFlags Flags) mut
			{
				return VT.Initialize(&this, context, Flags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509PolicyServerListManager *self, int32 Index, IX509PolicyServerUrl** pVal) get_ItemByIndex;
				public new function HRESULT(IX509PolicyServerListManager *self, int32* pVal) get_Count;
				public new function HRESULT(IX509PolicyServerListManager *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509PolicyServerListManager *self, IX509PolicyServerUrl* pVal) Add;
				public new function HRESULT(IX509PolicyServerListManager *self, int32 Index) Remove;
				public new function HRESULT(IX509PolicyServerListManager *self) Clear;
				public new function HRESULT(IX509PolicyServerListManager *self, X509CertificateEnrollmentContext context, PolicyServerUrlFlags Flags) Initialize;
			}
		}
		[CRepr]
		public struct IX509CertificateRequest : IDispatch
		{
			public const new Guid IID = .(0x728ab341, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut
			{
				return VT.Initialize(&this, Context);
			}
			public HRESULT Encode() mut
			{
				return VT.Encode(&this);
			}
			public HRESULT ResetForEncode() mut
			{
				return VT.ResetForEncode(&this);
			}
			public HRESULT GetInnerRequest(InnerRequestLevel Level, IX509CertificateRequest** ppValue) mut
			{
				return VT.GetInnerRequest(&this, Level, ppValue);
			}
			public HRESULT get_Type(X509RequestType* pValue) mut
			{
				return VT.get_Type(&this, pValue);
			}
			public HRESULT get_EnrollmentContext(X509CertificateEnrollmentContext* pValue) mut
			{
				return VT.get_EnrollmentContext(&this, pValue);
			}
			public HRESULT get_Silent(int16* pValue) mut
			{
				return VT.get_Silent(&this, pValue);
			}
			public HRESULT put_Silent(int16 Value) mut
			{
				return VT.put_Silent(&this, Value);
			}
			public HRESULT get_ParentWindow(int32* pValue) mut
			{
				return VT.get_ParentWindow(&this, pValue);
			}
			public HRESULT put_ParentWindow(int32 Value) mut
			{
				return VT.put_ParentWindow(&this, Value);
			}
			public HRESULT get_UIContextMessage(BSTR* pValue) mut
			{
				return VT.get_UIContextMessage(&this, pValue);
			}
			public HRESULT put_UIContextMessage(BSTR Value) mut
			{
				return VT.put_UIContextMessage(&this, Value);
			}
			public HRESULT get_SuppressDefaults(int16* pValue) mut
			{
				return VT.get_SuppressDefaults(&this, pValue);
			}
			public HRESULT put_SuppressDefaults(int16 Value) mut
			{
				return VT.put_SuppressDefaults(&this, Value);
			}
			public HRESULT get_RenewalCertificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RenewalCertificate(&this, Encoding, pValue);
			}
			public HRESULT put_RenewalCertificate(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_RenewalCertificate(&this, Encoding, Value);
			}
			public HRESULT get_ClientId(RequestClientInfoClientId* pValue) mut
			{
				return VT.get_ClientId(&this, pValue);
			}
			public HRESULT put_ClientId(RequestClientInfoClientId Value) mut
			{
				return VT.put_ClientId(&this, Value);
			}
			public HRESULT get_CspInformations(ICspInformations** ppValue) mut
			{
				return VT.get_CspInformations(&this, ppValue);
			}
			public HRESULT put_CspInformations(ICspInformations* pValue) mut
			{
				return VT.put_CspInformations(&this, pValue);
			}
			public HRESULT get_HashAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_HashAlgorithm(&this, ppValue);
			}
			public HRESULT put_HashAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_HashAlgorithm(&this, pValue);
			}
			public HRESULT get_AlternateSignatureAlgorithm(int16* pValue) mut
			{
				return VT.get_AlternateSignatureAlgorithm(&this, pValue);
			}
			public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut
			{
				return VT.put_AlternateSignatureAlgorithm(&this, Value);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateRequest *self, X509CertificateEnrollmentContext Context) Initialize;
				public new function HRESULT(IX509CertificateRequest *self) Encode;
				public new function HRESULT(IX509CertificateRequest *self) ResetForEncode;
				public new function HRESULT(IX509CertificateRequest *self, InnerRequestLevel Level, IX509CertificateRequest** ppValue) GetInnerRequest;
				public new function HRESULT(IX509CertificateRequest *self, X509RequestType* pValue) get_Type;
				public new function HRESULT(IX509CertificateRequest *self, X509CertificateEnrollmentContext* pValue) get_EnrollmentContext;
				public new function HRESULT(IX509CertificateRequest *self, int16* pValue) get_Silent;
				public new function HRESULT(IX509CertificateRequest *self, int16 Value) put_Silent;
				public new function HRESULT(IX509CertificateRequest *self, int32* pValue) get_ParentWindow;
				public new function HRESULT(IX509CertificateRequest *self, int32 Value) put_ParentWindow;
				public new function HRESULT(IX509CertificateRequest *self, BSTR* pValue) get_UIContextMessage;
				public new function HRESULT(IX509CertificateRequest *self, BSTR Value) put_UIContextMessage;
				public new function HRESULT(IX509CertificateRequest *self, int16* pValue) get_SuppressDefaults;
				public new function HRESULT(IX509CertificateRequest *self, int16 Value) put_SuppressDefaults;
				public new function HRESULT(IX509CertificateRequest *self, EncodingType Encoding, BSTR* pValue) get_RenewalCertificate;
				public new function HRESULT(IX509CertificateRequest *self, EncodingType Encoding, BSTR Value) put_RenewalCertificate;
				public new function HRESULT(IX509CertificateRequest *self, RequestClientInfoClientId* pValue) get_ClientId;
				public new function HRESULT(IX509CertificateRequest *self, RequestClientInfoClientId Value) put_ClientId;
				public new function HRESULT(IX509CertificateRequest *self, ICspInformations** ppValue) get_CspInformations;
				public new function HRESULT(IX509CertificateRequest *self, ICspInformations* pValue) put_CspInformations;
				public new function HRESULT(IX509CertificateRequest *self, IObjectId** ppValue) get_HashAlgorithm;
				public new function HRESULT(IX509CertificateRequest *self, IObjectId* pValue) put_HashAlgorithm;
				public new function HRESULT(IX509CertificateRequest *self, int16* pValue) get_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509CertificateRequest *self, int16 Value) put_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509CertificateRequest *self, EncodingType Encoding, BSTR* pValue) get_RawData;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs10 : IX509CertificateRequest
		{
			public const new Guid IID = .(0x728ab342, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut
			{
				return VT.InitializeFromTemplateName(&this, Context, strTemplateName);
			}
			public HRESULT InitializeFromPrivateKey(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, BSTR strTemplateName) mut
			{
				return VT.InitializeFromPrivateKey(&this, Context, pPrivateKey, strTemplateName);
			}
			public HRESULT InitializeFromPublicKey(X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, BSTR strTemplateName) mut
			{
				return VT.InitializeFromPublicKey(&this, Context, pPublicKey, strTemplateName);
			}
			public HRESULT InitializeFromCertificate(X509CertificateEnrollmentContext Context, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) mut
			{
				return VT.InitializeFromCertificate(&this, Context, strCertificate, Encoding, InheritOptions);
			}
			public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.InitializeDecode(&this, strEncodedData, Encoding);
			}
			public HRESULT CheckSignature(Pkcs10AllowedSignatureTypes AllowedSignatureTypes) mut
			{
				return VT.CheckSignature(&this, AllowedSignatureTypes);
			}
			public HRESULT IsSmartCard(int16* pValue) mut
			{
				return VT.IsSmartCard(&this, pValue);
			}
			public HRESULT get_TemplateObjectId(IObjectId** ppValue) mut
			{
				return VT.get_TemplateObjectId(&this, ppValue);
			}
			public HRESULT get_PublicKey(IX509PublicKey** ppValue) mut
			{
				return VT.get_PublicKey(&this, ppValue);
			}
			public HRESULT get_PrivateKey(IX509PrivateKey** ppValue) mut
			{
				return VT.get_PrivateKey(&this, ppValue);
			}
			public HRESULT get_NullSigned(int16* pValue) mut
			{
				return VT.get_NullSigned(&this, pValue);
			}
			public HRESULT get_ReuseKey(int16* pValue) mut
			{
				return VT.get_ReuseKey(&this, pValue);
			}
			public HRESULT get_OldCertificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_OldCertificate(&this, Encoding, pValue);
			}
			public HRESULT get_Subject(IX500DistinguishedName** ppValue) mut
			{
				return VT.get_Subject(&this, ppValue);
			}
			public HRESULT put_Subject(IX500DistinguishedName* pValue) mut
			{
				return VT.put_Subject(&this, pValue);
			}
			public HRESULT get_CspStatuses(ICspStatuses** ppValue) mut
			{
				return VT.get_CspStatuses(&this, ppValue);
			}
			public HRESULT get_SmimeCapabilities(int16* pValue) mut
			{
				return VT.get_SmimeCapabilities(&this, pValue);
			}
			public HRESULT put_SmimeCapabilities(int16 Value) mut
			{
				return VT.put_SmimeCapabilities(&this, Value);
			}
			public HRESULT get_SignatureInformation(IX509SignatureInformation** ppValue) mut
			{
				return VT.get_SignatureInformation(&this, ppValue);
			}
			public HRESULT get_KeyContainerNamePrefix(BSTR* pValue) mut
			{
				return VT.get_KeyContainerNamePrefix(&this, pValue);
			}
			public HRESULT put_KeyContainerNamePrefix(BSTR Value) mut
			{
				return VT.put_KeyContainerNamePrefix(&this, Value);
			}
			public HRESULT get_CryptAttributes(ICryptAttributes** ppValue) mut
			{
				return VT.get_CryptAttributes(&this, ppValue);
			}
			public HRESULT get_X509Extensions(IX509Extensions** ppValue) mut
			{
				return VT.get_X509Extensions(&this, ppValue);
			}
			public HRESULT get_CriticalExtensions(IObjectIds** ppValue) mut
			{
				return VT.get_CriticalExtensions(&this, ppValue);
			}
			public HRESULT get_SuppressOids(IObjectIds** ppValue) mut
			{
				return VT.get_SuppressOids(&this, ppValue);
			}
			public HRESULT get_RawDataToBeSigned(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawDataToBeSigned(&this, Encoding, pValue);
			}
			public HRESULT get_Signature(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Signature(&this, Encoding, pValue);
			}
			public HRESULT GetCspStatuses(X509KeySpec KeySpec, ICspStatuses** ppCspStatuses) mut
			{
				return VT.GetCspStatuses(&this, KeySpec, ppCspStatuses);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequest.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, BSTR strTemplateName) InitializeFromPrivateKey;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, BSTR strTemplateName) InitializeFromPublicKey;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, X509CertificateEnrollmentContext Context, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) InitializeFromCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, Pkcs10AllowedSignatureTypes AllowedSignatureTypes) CheckSignature;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, int16* pValue) IsSmartCard;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IObjectId** ppValue) get_TemplateObjectId;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX509PublicKey** ppValue) get_PublicKey;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX509PrivateKey** ppValue) get_PrivateKey;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, int16* pValue) get_NullSigned;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, int16* pValue) get_ReuseKey;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, EncodingType Encoding, BSTR* pValue) get_OldCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX500DistinguishedName** ppValue) get_Subject;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX500DistinguishedName* pValue) put_Subject;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, ICspStatuses** ppValue) get_CspStatuses;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, int16* pValue) get_SmimeCapabilities;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, int16 Value) put_SmimeCapabilities;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX509SignatureInformation** ppValue) get_SignatureInformation;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, BSTR* pValue) get_KeyContainerNamePrefix;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, BSTR Value) put_KeyContainerNamePrefix;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, ICryptAttributes** ppValue) get_CryptAttributes;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IX509Extensions** ppValue) get_X509Extensions;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IObjectIds** ppValue) get_CriticalExtensions;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, IObjectIds** ppValue) get_SuppressOids;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, EncodingType Encoding, BSTR* pValue) get_RawDataToBeSigned;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, EncodingType Encoding, BSTR* pValue) get_Signature;
				public new function HRESULT(IX509CertificateRequestPkcs10 *self, X509KeySpec KeySpec, ICspStatuses** ppCspStatuses) GetCspStatuses;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs10V2 : IX509CertificateRequestPkcs10
		{
			public const new Guid IID = .(0x728ab35b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromTemplate(&this, context, pPolicyServer, pTemplate);
			}
			public HRESULT InitializeFromPrivateKeyTemplate(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromPrivateKeyTemplate(&this, Context, pPrivateKey, pPolicyServer, pTemplate);
			}
			public HRESULT InitializeFromPublicKeyTemplate(X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromPublicKeyTemplate(&this, Context, pPublicKey, pPolicyServer, pTemplate);
			}
			public HRESULT get_PolicyServer(IX509EnrollmentPolicyServer** ppPolicyServer) mut
			{
				return VT.get_PolicyServer(&this, ppPolicyServer);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppTemplate) mut
			{
				return VT.get_Template(&this, ppTemplate);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs10.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs10V2 *self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
				public new function HRESULT(IX509CertificateRequestPkcs10V2 *self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPrivateKeyTemplate;
				public new function HRESULT(IX509CertificateRequestPkcs10V2 *self, X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPublicKeyTemplate;
				public new function HRESULT(IX509CertificateRequestPkcs10V2 *self, IX509EnrollmentPolicyServer** ppPolicyServer) get_PolicyServer;
				public new function HRESULT(IX509CertificateRequestPkcs10V2 *self, IX509CertificateTemplate** ppTemplate) get_Template;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs10V3 : IX509CertificateRequestPkcs10V2
		{
			public const new Guid IID = .(0x54ea9942, 0x3d66, 0x4530, 0xb7, 0x6e, 0x7c, 0x91, 0x70, 0xd3, 0xec, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AttestPrivateKey(int16* pValue) mut
			{
				return VT.get_AttestPrivateKey(&this, pValue);
			}
			public HRESULT put_AttestPrivateKey(int16 Value) mut
			{
				return VT.put_AttestPrivateKey(&this, Value);
			}
			public HRESULT get_AttestationEncryptionCertificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_AttestationEncryptionCertificate(&this, Encoding, pValue);
			}
			public HRESULT put_AttestationEncryptionCertificate(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_AttestationEncryptionCertificate(&this, Encoding, Value);
			}
			public HRESULT get_EncryptionAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_EncryptionAlgorithm(&this, ppValue);
			}
			public HRESULT put_EncryptionAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_EncryptionAlgorithm(&this, pValue);
			}
			public HRESULT get_EncryptionStrength(int32* pValue) mut
			{
				return VT.get_EncryptionStrength(&this, pValue);
			}
			public HRESULT put_EncryptionStrength(int32 Value) mut
			{
				return VT.put_EncryptionStrength(&this, Value);
			}
			public HRESULT get_ChallengePassword(BSTR* pValue) mut
			{
				return VT.get_ChallengePassword(&this, pValue);
			}
			public HRESULT put_ChallengePassword(BSTR Value) mut
			{
				return VT.put_ChallengePassword(&this, Value);
			}
			public HRESULT get_NameValuePairs(IX509NameValuePairs** ppValue) mut
			{
				return VT.get_NameValuePairs(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs10V2.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, int16* pValue) get_AttestPrivateKey;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, int16 Value) put_AttestPrivateKey;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, EncodingType Encoding, BSTR* pValue) get_AttestationEncryptionCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, EncodingType Encoding, BSTR Value) put_AttestationEncryptionCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, IObjectId** ppValue) get_EncryptionAlgorithm;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, IObjectId* pValue) put_EncryptionAlgorithm;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, int32* pValue) get_EncryptionStrength;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, int32 Value) put_EncryptionStrength;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, BSTR* pValue) get_ChallengePassword;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, BSTR Value) put_ChallengePassword;
				public new function HRESULT(IX509CertificateRequestPkcs10V3 *self, IX509NameValuePairs** ppValue) get_NameValuePairs;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs10V4 : IX509CertificateRequestPkcs10V3
		{
			public const new Guid IID = .(0x728ab363, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ClaimType(KeyAttestationClaimType* pValue) mut
			{
				return VT.get_ClaimType(&this, pValue);
			}
			public HRESULT put_ClaimType(KeyAttestationClaimType Value) mut
			{
				return VT.put_ClaimType(&this, Value);
			}
			public HRESULT get_AttestPrivateKeyPreferred(int16* pValue) mut
			{
				return VT.get_AttestPrivateKeyPreferred(&this, pValue);
			}
			public HRESULT put_AttestPrivateKeyPreferred(int16 Value) mut
			{
				return VT.put_AttestPrivateKeyPreferred(&this, Value);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs10V3.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs10V4 *self, KeyAttestationClaimType* pValue) get_ClaimType;
				public new function HRESULT(IX509CertificateRequestPkcs10V4 *self, KeyAttestationClaimType Value) put_ClaimType;
				public new function HRESULT(IX509CertificateRequestPkcs10V4 *self, int16* pValue) get_AttestPrivateKeyPreferred;
				public new function HRESULT(IX509CertificateRequestPkcs10V4 *self, int16 Value) put_AttestPrivateKeyPreferred;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestCertificate : IX509CertificateRequestPkcs10
		{
			public const new Guid IID = .(0x728ab343, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CheckPublicKeySignature(IX509PublicKey* pPublicKey) mut
			{
				return VT.CheckPublicKeySignature(&this, pPublicKey);
			}
			public HRESULT get_Issuer(IX500DistinguishedName** ppValue) mut
			{
				return VT.get_Issuer(&this, ppValue);
			}
			public HRESULT put_Issuer(IX500DistinguishedName* pValue) mut
			{
				return VT.put_Issuer(&this, pValue);
			}
			public HRESULT get_NotBefore(double* pValue) mut
			{
				return VT.get_NotBefore(&this, pValue);
			}
			public HRESULT put_NotBefore(double Value) mut
			{
				return VT.put_NotBefore(&this, Value);
			}
			public HRESULT get_NotAfter(double* pValue) mut
			{
				return VT.get_NotAfter(&this, pValue);
			}
			public HRESULT put_NotAfter(double Value) mut
			{
				return VT.put_NotAfter(&this, Value);
			}
			public HRESULT get_SerialNumber(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_SerialNumber(&this, Encoding, pValue);
			}
			public HRESULT put_SerialNumber(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_SerialNumber(&this, Encoding, Value);
			}
			public HRESULT get_SignerCertificate(ISignerCertificate** ppValue) mut
			{
				return VT.get_SignerCertificate(&this, ppValue);
			}
			public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut
			{
				return VT.put_SignerCertificate(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs10.VTable
			{
				public new function HRESULT(IX509CertificateRequestCertificate *self, IX509PublicKey* pPublicKey) CheckPublicKeySignature;
				public new function HRESULT(IX509CertificateRequestCertificate *self, IX500DistinguishedName** ppValue) get_Issuer;
				public new function HRESULT(IX509CertificateRequestCertificate *self, IX500DistinguishedName* pValue) put_Issuer;
				public new function HRESULT(IX509CertificateRequestCertificate *self, double* pValue) get_NotBefore;
				public new function HRESULT(IX509CertificateRequestCertificate *self, double Value) put_NotBefore;
				public new function HRESULT(IX509CertificateRequestCertificate *self, double* pValue) get_NotAfter;
				public new function HRESULT(IX509CertificateRequestCertificate *self, double Value) put_NotAfter;
				public new function HRESULT(IX509CertificateRequestCertificate *self, EncodingType Encoding, BSTR* pValue) get_SerialNumber;
				public new function HRESULT(IX509CertificateRequestCertificate *self, EncodingType Encoding, BSTR Value) put_SerialNumber;
				public new function HRESULT(IX509CertificateRequestCertificate *self, ISignerCertificate** ppValue) get_SignerCertificate;
				public new function HRESULT(IX509CertificateRequestCertificate *self, ISignerCertificate* pValue) put_SignerCertificate;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestCertificate2 : IX509CertificateRequestCertificate
		{
			public const new Guid IID = .(0x728ab35a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromTemplate(&this, context, pPolicyServer, pTemplate);
			}
			public HRESULT InitializeFromPrivateKeyTemplate(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromPrivateKeyTemplate(&this, Context, pPrivateKey, pPolicyServer, pTemplate);
			}
			public HRESULT get_PolicyServer(IX509EnrollmentPolicyServer** ppPolicyServer) mut
			{
				return VT.get_PolicyServer(&this, ppPolicyServer);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppTemplate) mut
			{
				return VT.get_Template(&this, ppTemplate);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestCertificate.VTable
			{
				public new function HRESULT(IX509CertificateRequestCertificate2 *self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
				public new function HRESULT(IX509CertificateRequestCertificate2 *self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPrivateKeyTemplate;
				public new function HRESULT(IX509CertificateRequestCertificate2 *self, IX509EnrollmentPolicyServer** ppPolicyServer) get_PolicyServer;
				public new function HRESULT(IX509CertificateRequestCertificate2 *self, IX509CertificateTemplate** ppTemplate) get_Template;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs7 : IX509CertificateRequest
		{
			public const new Guid IID = .(0x728ab344, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut
			{
				return VT.InitializeFromTemplateName(&this, Context, strTemplateName);
			}
			public HRESULT InitializeFromCertificate(X509CertificateEnrollmentContext Context, int16 RenewalRequest, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) mut
			{
				return VT.InitializeFromCertificate(&this, Context, RenewalRequest, strCertificate, Encoding, InheritOptions);
			}
			public HRESULT InitializeFromInnerRequest(IX509CertificateRequest* pInnerRequest) mut
			{
				return VT.InitializeFromInnerRequest(&this, pInnerRequest);
			}
			public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.InitializeDecode(&this, strEncodedData, Encoding);
			}
			public HRESULT get_RequesterName(BSTR* pValue) mut
			{
				return VT.get_RequesterName(&this, pValue);
			}
			public HRESULT put_RequesterName(BSTR Value) mut
			{
				return VT.put_RequesterName(&this, Value);
			}
			public HRESULT get_SignerCertificate(ISignerCertificate** ppValue) mut
			{
				return VT.get_SignerCertificate(&this, ppValue);
			}
			public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut
			{
				return VT.put_SignerCertificate(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequest.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, X509CertificateEnrollmentContext Context, int16 RenewalRequest, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) InitializeFromCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, IX509CertificateRequest* pInnerRequest) InitializeFromInnerRequest;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, BSTR* pValue) get_RequesterName;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, BSTR Value) put_RequesterName;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, ISignerCertificate** ppValue) get_SignerCertificate;
				public new function HRESULT(IX509CertificateRequestPkcs7 *self, ISignerCertificate* pValue) put_SignerCertificate;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestPkcs7V2 : IX509CertificateRequestPkcs7
		{
			public const new Guid IID = .(0x728ab35c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromTemplate(&this, context, pPolicyServer, pTemplate);
			}
			public HRESULT get_PolicyServer(IX509EnrollmentPolicyServer** ppPolicyServer) mut
			{
				return VT.get_PolicyServer(&this, ppPolicyServer);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppTemplate) mut
			{
				return VT.get_Template(&this, ppTemplate);
			}
			public HRESULT CheckCertificateSignature(int16 ValidateCertificateChain) mut
			{
				return VT.CheckCertificateSignature(&this, ValidateCertificateChain);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs7.VTable
			{
				public new function HRESULT(IX509CertificateRequestPkcs7V2 *self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
				public new function HRESULT(IX509CertificateRequestPkcs7V2 *self, IX509EnrollmentPolicyServer** ppPolicyServer) get_PolicyServer;
				public new function HRESULT(IX509CertificateRequestPkcs7V2 *self, IX509CertificateTemplate** ppTemplate) get_Template;
				public new function HRESULT(IX509CertificateRequestPkcs7V2 *self, int16 ValidateCertificateChain) CheckCertificateSignature;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestCmc : IX509CertificateRequestPkcs7
		{
			public const new Guid IID = .(0x728ab345, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromInnerRequestTemplateName(IX509CertificateRequest* pInnerRequest, BSTR strTemplateName) mut
			{
				return VT.InitializeFromInnerRequestTemplateName(&this, pInnerRequest, strTemplateName);
			}
			public HRESULT get_TemplateObjectId(IObjectId** ppValue) mut
			{
				return VT.get_TemplateObjectId(&this, ppValue);
			}
			public HRESULT get_NullSigned(int16* pValue) mut
			{
				return VT.get_NullSigned(&this, pValue);
			}
			public HRESULT get_CryptAttributes(ICryptAttributes** ppValue) mut
			{
				return VT.get_CryptAttributes(&this, ppValue);
			}
			public HRESULT get_NameValuePairs(IX509NameValuePairs** ppValue) mut
			{
				return VT.get_NameValuePairs(&this, ppValue);
			}
			public HRESULT get_X509Extensions(IX509Extensions** ppValue) mut
			{
				return VT.get_X509Extensions(&this, ppValue);
			}
			public HRESULT get_CriticalExtensions(IObjectIds** ppValue) mut
			{
				return VT.get_CriticalExtensions(&this, ppValue);
			}
			public HRESULT get_SuppressOids(IObjectIds** ppValue) mut
			{
				return VT.get_SuppressOids(&this, ppValue);
			}
			public HRESULT get_TransactionId(int32* pValue) mut
			{
				return VT.get_TransactionId(&this, pValue);
			}
			public HRESULT put_TransactionId(int32 Value) mut
			{
				return VT.put_TransactionId(&this, Value);
			}
			public HRESULT get_SenderNonce(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_SenderNonce(&this, Encoding, pValue);
			}
			public HRESULT put_SenderNonce(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_SenderNonce(&this, Encoding, Value);
			}
			public HRESULT get_SignatureInformation(IX509SignatureInformation** ppValue) mut
			{
				return VT.get_SignatureInformation(&this, ppValue);
			}
			public HRESULT get_ArchivePrivateKey(int16* pValue) mut
			{
				return VT.get_ArchivePrivateKey(&this, pValue);
			}
			public HRESULT put_ArchivePrivateKey(int16 Value) mut
			{
				return VT.put_ArchivePrivateKey(&this, Value);
			}
			public HRESULT get_KeyArchivalCertificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_KeyArchivalCertificate(&this, Encoding, pValue);
			}
			public HRESULT put_KeyArchivalCertificate(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_KeyArchivalCertificate(&this, Encoding, Value);
			}
			public HRESULT get_EncryptionAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_EncryptionAlgorithm(&this, ppValue);
			}
			public HRESULT put_EncryptionAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_EncryptionAlgorithm(&this, pValue);
			}
			public HRESULT get_EncryptionStrength(int32* pValue) mut
			{
				return VT.get_EncryptionStrength(&this, pValue);
			}
			public HRESULT put_EncryptionStrength(int32 Value) mut
			{
				return VT.put_EncryptionStrength(&this, Value);
			}
			public HRESULT get_EncryptedKeyHash(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_EncryptedKeyHash(&this, Encoding, pValue);
			}
			public HRESULT get_SignerCertificates(ISignerCertificates** ppValue) mut
			{
				return VT.get_SignerCertificates(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestPkcs7.VTable
			{
				public new function HRESULT(IX509CertificateRequestCmc *self, IX509CertificateRequest* pInnerRequest, BSTR strTemplateName) InitializeFromInnerRequestTemplateName;
				public new function HRESULT(IX509CertificateRequestCmc *self, IObjectId** ppValue) get_TemplateObjectId;
				public new function HRESULT(IX509CertificateRequestCmc *self, int16* pValue) get_NullSigned;
				public new function HRESULT(IX509CertificateRequestCmc *self, ICryptAttributes** ppValue) get_CryptAttributes;
				public new function HRESULT(IX509CertificateRequestCmc *self, IX509NameValuePairs** ppValue) get_NameValuePairs;
				public new function HRESULT(IX509CertificateRequestCmc *self, IX509Extensions** ppValue) get_X509Extensions;
				public new function HRESULT(IX509CertificateRequestCmc *self, IObjectIds** ppValue) get_CriticalExtensions;
				public new function HRESULT(IX509CertificateRequestCmc *self, IObjectIds** ppValue) get_SuppressOids;
				public new function HRESULT(IX509CertificateRequestCmc *self, int32* pValue) get_TransactionId;
				public new function HRESULT(IX509CertificateRequestCmc *self, int32 Value) put_TransactionId;
				public new function HRESULT(IX509CertificateRequestCmc *self, EncodingType Encoding, BSTR* pValue) get_SenderNonce;
				public new function HRESULT(IX509CertificateRequestCmc *self, EncodingType Encoding, BSTR Value) put_SenderNonce;
				public new function HRESULT(IX509CertificateRequestCmc *self, IX509SignatureInformation** ppValue) get_SignatureInformation;
				public new function HRESULT(IX509CertificateRequestCmc *self, int16* pValue) get_ArchivePrivateKey;
				public new function HRESULT(IX509CertificateRequestCmc *self, int16 Value) put_ArchivePrivateKey;
				public new function HRESULT(IX509CertificateRequestCmc *self, EncodingType Encoding, BSTR* pValue) get_KeyArchivalCertificate;
				public new function HRESULT(IX509CertificateRequestCmc *self, EncodingType Encoding, BSTR Value) put_KeyArchivalCertificate;
				public new function HRESULT(IX509CertificateRequestCmc *self, IObjectId** ppValue) get_EncryptionAlgorithm;
				public new function HRESULT(IX509CertificateRequestCmc *self, IObjectId* pValue) put_EncryptionAlgorithm;
				public new function HRESULT(IX509CertificateRequestCmc *self, int32* pValue) get_EncryptionStrength;
				public new function HRESULT(IX509CertificateRequestCmc *self, int32 Value) put_EncryptionStrength;
				public new function HRESULT(IX509CertificateRequestCmc *self, EncodingType Encoding, BSTR* pValue) get_EncryptedKeyHash;
				public new function HRESULT(IX509CertificateRequestCmc *self, ISignerCertificates** ppValue) get_SignerCertificates;
			}
		}
		[CRepr]
		public struct IX509CertificateRequestCmc2 : IX509CertificateRequestCmc
		{
			public const new Guid IID = .(0x728ab35d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromTemplate(&this, context, pPolicyServer, pTemplate);
			}
			public HRESULT InitializeFromInnerRequestTemplate(IX509CertificateRequest* pInnerRequest, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromInnerRequestTemplate(&this, pInnerRequest, pPolicyServer, pTemplate);
			}
			public HRESULT get_PolicyServer(IX509EnrollmentPolicyServer** ppPolicyServer) mut
			{
				return VT.get_PolicyServer(&this, ppPolicyServer);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppTemplate) mut
			{
				return VT.get_Template(&this, ppTemplate);
			}
			public HRESULT CheckSignature(Pkcs10AllowedSignatureTypes AllowedSignatureTypes) mut
			{
				return VT.CheckSignature(&this, AllowedSignatureTypes);
			}
			public HRESULT CheckCertificateSignature(ISignerCertificate* pSignerCertificate, int16 ValidateCertificateChain) mut
			{
				return VT.CheckCertificateSignature(&this, pSignerCertificate, ValidateCertificateChain);
			}
			[CRepr]
			public struct VTable : IX509CertificateRequestCmc.VTable
			{
				public new function HRESULT(IX509CertificateRequestCmc2 *self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
				public new function HRESULT(IX509CertificateRequestCmc2 *self, IX509CertificateRequest* pInnerRequest, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromInnerRequestTemplate;
				public new function HRESULT(IX509CertificateRequestCmc2 *self, IX509EnrollmentPolicyServer** ppPolicyServer) get_PolicyServer;
				public new function HRESULT(IX509CertificateRequestCmc2 *self, IX509CertificateTemplate** ppTemplate) get_Template;
				public new function HRESULT(IX509CertificateRequestCmc2 *self, Pkcs10AllowedSignatureTypes AllowedSignatureTypes) CheckSignature;
				public new function HRESULT(IX509CertificateRequestCmc2 *self, ISignerCertificate* pSignerCertificate, int16 ValidateCertificateChain) CheckCertificateSignature;
			}
		}
		[CRepr]
		public struct IX509Enrollment : IDispatch
		{
			public const new Guid IID = .(0x728ab346, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut
			{
				return VT.Initialize(&this, Context);
			}
			public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut
			{
				return VT.InitializeFromTemplateName(&this, Context, strTemplateName);
			}
			public HRESULT InitializeFromRequest(IX509CertificateRequest* pRequest) mut
			{
				return VT.InitializeFromRequest(&this, pRequest);
			}
			public HRESULT CreateRequest(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreateRequest(&this, Encoding, pValue);
			}
			public HRESULT Enroll() mut
			{
				return VT.Enroll(&this);
			}
			public HRESULT InstallResponse(InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword) mut
			{
				return VT.InstallResponse(&this, Restrictions, strResponse, Encoding, strPassword);
			}
			public HRESULT CreatePFX(BSTR strPassword, PFXExportOptions ExportOptions, EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreatePFX(&this, strPassword, ExportOptions, Encoding, pValue);
			}
			public HRESULT get_Request(IX509CertificateRequest** pValue) mut
			{
				return VT.get_Request(&this, pValue);
			}
			public HRESULT get_Silent(int16* pValue) mut
			{
				return VT.get_Silent(&this, pValue);
			}
			public HRESULT put_Silent(int16 Value) mut
			{
				return VT.put_Silent(&this, Value);
			}
			public HRESULT get_ParentWindow(int32* pValue) mut
			{
				return VT.get_ParentWindow(&this, pValue);
			}
			public HRESULT put_ParentWindow(int32 Value) mut
			{
				return VT.put_ParentWindow(&this, Value);
			}
			public HRESULT get_NameValuePairs(IX509NameValuePairs** ppValue) mut
			{
				return VT.get_NameValuePairs(&this, ppValue);
			}
			public HRESULT get_EnrollmentContext(X509CertificateEnrollmentContext* pValue) mut
			{
				return VT.get_EnrollmentContext(&this, pValue);
			}
			public HRESULT get_Status(IX509EnrollmentStatus** ppValue) mut
			{
				return VT.get_Status(&this, ppValue);
			}
			public HRESULT get_Certificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Certificate(&this, Encoding, pValue);
			}
			public HRESULT get_Response(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Response(&this, Encoding, pValue);
			}
			public HRESULT get_CertificateFriendlyName(BSTR* pValue) mut
			{
				return VT.get_CertificateFriendlyName(&this, pValue);
			}
			public HRESULT put_CertificateFriendlyName(BSTR strValue) mut
			{
				return VT.put_CertificateFriendlyName(&this, strValue);
			}
			public HRESULT get_CertificateDescription(BSTR* pValue) mut
			{
				return VT.get_CertificateDescription(&this, pValue);
			}
			public HRESULT put_CertificateDescription(BSTR strValue) mut
			{
				return VT.put_CertificateDescription(&this, strValue);
			}
			public HRESULT get_RequestId(int32* pValue) mut
			{
				return VT.get_RequestId(&this, pValue);
			}
			public HRESULT get_CAConfigString(BSTR* pValue) mut
			{
				return VT.get_CAConfigString(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509Enrollment *self, X509CertificateEnrollmentContext Context) Initialize;
				public new function HRESULT(IX509Enrollment *self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
				public new function HRESULT(IX509Enrollment *self, IX509CertificateRequest* pRequest) InitializeFromRequest;
				public new function HRESULT(IX509Enrollment *self, EncodingType Encoding, BSTR* pValue) CreateRequest;
				public new function HRESULT(IX509Enrollment *self) Enroll;
				public new function HRESULT(IX509Enrollment *self, InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword) InstallResponse;
				public new function HRESULT(IX509Enrollment *self, BSTR strPassword, PFXExportOptions ExportOptions, EncodingType Encoding, BSTR* pValue) CreatePFX;
				public new function HRESULT(IX509Enrollment *self, IX509CertificateRequest** pValue) get_Request;
				public new function HRESULT(IX509Enrollment *self, int16* pValue) get_Silent;
				public new function HRESULT(IX509Enrollment *self, int16 Value) put_Silent;
				public new function HRESULT(IX509Enrollment *self, int32* pValue) get_ParentWindow;
				public new function HRESULT(IX509Enrollment *self, int32 Value) put_ParentWindow;
				public new function HRESULT(IX509Enrollment *self, IX509NameValuePairs** ppValue) get_NameValuePairs;
				public new function HRESULT(IX509Enrollment *self, X509CertificateEnrollmentContext* pValue) get_EnrollmentContext;
				public new function HRESULT(IX509Enrollment *self, IX509EnrollmentStatus** ppValue) get_Status;
				public new function HRESULT(IX509Enrollment *self, EncodingType Encoding, BSTR* pValue) get_Certificate;
				public new function HRESULT(IX509Enrollment *self, EncodingType Encoding, BSTR* pValue) get_Response;
				public new function HRESULT(IX509Enrollment *self, BSTR* pValue) get_CertificateFriendlyName;
				public new function HRESULT(IX509Enrollment *self, BSTR strValue) put_CertificateFriendlyName;
				public new function HRESULT(IX509Enrollment *self, BSTR* pValue) get_CertificateDescription;
				public new function HRESULT(IX509Enrollment *self, BSTR strValue) put_CertificateDescription;
				public new function HRESULT(IX509Enrollment *self, int32* pValue) get_RequestId;
				public new function HRESULT(IX509Enrollment *self, BSTR* pValue) get_CAConfigString;
			}
		}
		[CRepr]
		public struct IX509Enrollment2 : IX509Enrollment
		{
			public const new Guid IID = .(0x728ab350, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut
			{
				return VT.InitializeFromTemplate(&this, context, pPolicyServer, pTemplate);
			}
			public HRESULT InstallResponse2(InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword, BSTR strEnrollmentPolicyServerUrl, BSTR strEnrollmentPolicyServerID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags) mut
			{
				return VT.InstallResponse2(&this, Restrictions, strResponse, Encoding, strPassword, strEnrollmentPolicyServerUrl, strEnrollmentPolicyServerID, EnrollmentPolicyServerFlags, authFlags);
			}
			public HRESULT get_PolicyServer(IX509EnrollmentPolicyServer** ppPolicyServer) mut
			{
				return VT.get_PolicyServer(&this, ppPolicyServer);
			}
			public HRESULT get_Template(IX509CertificateTemplate** ppTemplate) mut
			{
				return VT.get_Template(&this, ppTemplate);
			}
			public HRESULT get_RequestIdString(BSTR* pValue) mut
			{
				return VT.get_RequestIdString(&this, pValue);
			}
			[CRepr]
			public struct VTable : IX509Enrollment.VTable
			{
				public new function HRESULT(IX509Enrollment2 *self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
				public new function HRESULT(IX509Enrollment2 *self, InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword, BSTR strEnrollmentPolicyServerUrl, BSTR strEnrollmentPolicyServerID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags) InstallResponse2;
				public new function HRESULT(IX509Enrollment2 *self, IX509EnrollmentPolicyServer** ppPolicyServer) get_PolicyServer;
				public new function HRESULT(IX509Enrollment2 *self, IX509CertificateTemplate** ppTemplate) get_Template;
				public new function HRESULT(IX509Enrollment2 *self, BSTR* pValue) get_RequestIdString;
			}
		}
		[CRepr]
		public struct IX509EnrollmentHelper : IDispatch
		{
			public const new Guid IID = .(0x728ab351, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPolicyServer(BSTR strEnrollmentPolicyServerURI, BSTR strEnrollmentPolicyID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) mut
			{
				return VT.AddPolicyServer(&this, strEnrollmentPolicyServerURI, strEnrollmentPolicyID, EnrollmentPolicyServerFlags, authFlags, strCredential, strPassword);
			}
			public HRESULT AddEnrollmentServer(BSTR strEnrollmentServerURI, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) mut
			{
				return VT.AddEnrollmentServer(&this, strEnrollmentServerURI, authFlags, strCredential, strPassword);
			}
			public HRESULT Enroll(BSTR strEnrollmentPolicyServerURI, BSTR strTemplateName, EncodingType Encoding, WebEnrollmentFlags enrollFlags, BSTR* pstrCertificate) mut
			{
				return VT.Enroll(&this, strEnrollmentPolicyServerURI, strTemplateName, Encoding, enrollFlags, pstrCertificate);
			}
			public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut
			{
				return VT.Initialize(&this, Context);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509EnrollmentHelper *self, BSTR strEnrollmentPolicyServerURI, BSTR strEnrollmentPolicyID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) AddPolicyServer;
				public new function HRESULT(IX509EnrollmentHelper *self, BSTR strEnrollmentServerURI, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) AddEnrollmentServer;
				public new function HRESULT(IX509EnrollmentHelper *self, BSTR strEnrollmentPolicyServerURI, BSTR strTemplateName, EncodingType Encoding, WebEnrollmentFlags enrollFlags, BSTR* pstrCertificate) Enroll;
				public new function HRESULT(IX509EnrollmentHelper *self, X509CertificateEnrollmentContext Context) Initialize;
			}
		}
		[CRepr]
		public struct IX509EnrollmentWebClassFactory : IDispatch
		{
			public const new Guid IID = .(0x728ab349, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObject(BSTR strProgID, IUnknown** ppIUnknown) mut
			{
				return VT.CreateObject(&this, strProgID, ppIUnknown);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509EnrollmentWebClassFactory *self, BSTR strProgID, IUnknown** ppIUnknown) CreateObject;
			}
		}
		[CRepr]
		public struct IX509MachineEnrollmentFactory : IDispatch
		{
			public const new Guid IID = .(0x728ab352, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObject(BSTR strProgID, IX509EnrollmentHelper** ppIHelper) mut
			{
				return VT.CreateObject(&this, strProgID, ppIHelper);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509MachineEnrollmentFactory *self, BSTR strProgID, IX509EnrollmentHelper** ppIHelper) CreateObject;
			}
		}
		[CRepr]
		public struct IX509CertificateRevocationListEntry : IDispatch
		{
			public const new Guid IID = .(0x728ab35e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EncodingType Encoding, BSTR SerialNumber, double RevocationDate) mut
			{
				return VT.Initialize(&this, Encoding, SerialNumber, RevocationDate);
			}
			public HRESULT get_SerialNumber(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_SerialNumber(&this, Encoding, pValue);
			}
			public HRESULT get_RevocationDate(double* pValue) mut
			{
				return VT.get_RevocationDate(&this, pValue);
			}
			public HRESULT get_RevocationReason(CRLRevocationReason* pValue) mut
			{
				return VT.get_RevocationReason(&this, pValue);
			}
			public HRESULT put_RevocationReason(CRLRevocationReason Value) mut
			{
				return VT.put_RevocationReason(&this, Value);
			}
			public HRESULT get_X509Extensions(IX509Extensions** ppValue) mut
			{
				return VT.get_X509Extensions(&this, ppValue);
			}
			public HRESULT get_CriticalExtensions(IObjectIds** ppValue) mut
			{
				return VT.get_CriticalExtensions(&this, ppValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateRevocationListEntry *self, EncodingType Encoding, BSTR SerialNumber, double RevocationDate) Initialize;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, EncodingType Encoding, BSTR* pValue) get_SerialNumber;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, double* pValue) get_RevocationDate;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, CRLRevocationReason* pValue) get_RevocationReason;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, CRLRevocationReason Value) put_RevocationReason;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, IX509Extensions** ppValue) get_X509Extensions;
				public new function HRESULT(IX509CertificateRevocationListEntry *self, IObjectIds** ppValue) get_CriticalExtensions;
			}
		}
		[CRepr]
		public struct IX509CertificateRevocationListEntries : IDispatch
		{
			public const new Guid IID = .(0x728ab35f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ItemByIndex(int32 Index, IX509CertificateRevocationListEntry** pVal) mut
			{
				return VT.get_ItemByIndex(&this, Index, pVal);
			}
			public HRESULT get_Count(int32* pVal) mut
			{
				return VT.get_Count(&this, pVal);
			}
			public HRESULT get__NewEnum(IUnknown** pVal) mut
			{
				return VT.get__NewEnum(&this, pVal);
			}
			public HRESULT Add(IX509CertificateRevocationListEntry* pVal) mut
			{
				return VT.Add(&this, pVal);
			}
			public HRESULT Remove(int32 Index) mut
			{
				return VT.Remove(&this, Index);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT get_IndexBySerialNumber(EncodingType Encoding, BSTR SerialNumber, int32* pIndex) mut
			{
				return VT.get_IndexBySerialNumber(&this, Encoding, SerialNumber, pIndex);
			}
			public HRESULT AddRange(IX509CertificateRevocationListEntries* pValue) mut
			{
				return VT.AddRange(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateRevocationListEntries *self, int32 Index, IX509CertificateRevocationListEntry** pVal) get_ItemByIndex;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, int32* pVal) get_Count;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, IUnknown** pVal) get__NewEnum;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, IX509CertificateRevocationListEntry* pVal) Add;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, int32 Index) Remove;
				public new function HRESULT(IX509CertificateRevocationListEntries *self) Clear;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, EncodingType Encoding, BSTR SerialNumber, int32* pIndex) get_IndexBySerialNumber;
				public new function HRESULT(IX509CertificateRevocationListEntries *self, IX509CertificateRevocationListEntries* pValue) AddRange;
			}
		}
		[CRepr]
		public struct IX509CertificateRevocationList : IDispatch
		{
			public const new Guid IID = .(0x728ab360, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.InitializeDecode(&this, strEncodedData, Encoding);
			}
			public HRESULT Encode() mut
			{
				return VT.Encode(&this);
			}
			public HRESULT ResetForEncode() mut
			{
				return VT.ResetForEncode(&this);
			}
			public HRESULT CheckPublicKeySignature(IX509PublicKey* pPublicKey) mut
			{
				return VT.CheckPublicKeySignature(&this, pPublicKey);
			}
			public HRESULT CheckSignature() mut
			{
				return VT.CheckSignature(&this);
			}
			public HRESULT get_Issuer(IX500DistinguishedName** ppValue) mut
			{
				return VT.get_Issuer(&this, ppValue);
			}
			public HRESULT put_Issuer(IX500DistinguishedName* pValue) mut
			{
				return VT.put_Issuer(&this, pValue);
			}
			public HRESULT get_ThisUpdate(double* pValue) mut
			{
				return VT.get_ThisUpdate(&this, pValue);
			}
			public HRESULT put_ThisUpdate(double Value) mut
			{
				return VT.put_ThisUpdate(&this, Value);
			}
			public HRESULT get_NextUpdate(double* pValue) mut
			{
				return VT.get_NextUpdate(&this, pValue);
			}
			public HRESULT put_NextUpdate(double Value) mut
			{
				return VT.put_NextUpdate(&this, Value);
			}
			public HRESULT get_X509CRLEntries(IX509CertificateRevocationListEntries** ppValue) mut
			{
				return VT.get_X509CRLEntries(&this, ppValue);
			}
			public HRESULT get_X509Extensions(IX509Extensions** ppValue) mut
			{
				return VT.get_X509Extensions(&this, ppValue);
			}
			public HRESULT get_CriticalExtensions(IObjectIds** ppValue) mut
			{
				return VT.get_CriticalExtensions(&this, ppValue);
			}
			public HRESULT get_SignerCertificate(ISignerCertificate** ppValue) mut
			{
				return VT.get_SignerCertificate(&this, ppValue);
			}
			public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut
			{
				return VT.put_SignerCertificate(&this, pValue);
			}
			public HRESULT get_CRLNumber(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_CRLNumber(&this, Encoding, pValue);
			}
			public HRESULT put_CRLNumber(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_CRLNumber(&this, Encoding, Value);
			}
			public HRESULT get_CAVersion(int32* pValue) mut
			{
				return VT.get_CAVersion(&this, pValue);
			}
			public HRESULT put_CAVersion(int32 pValue) mut
			{
				return VT.put_CAVersion(&this, pValue);
			}
			public HRESULT get_BaseCRL(int16* pValue) mut
			{
				return VT.get_BaseCRL(&this, pValue);
			}
			public HRESULT get_NullSigned(int16* pValue) mut
			{
				return VT.get_NullSigned(&this, pValue);
			}
			public HRESULT get_HashAlgorithm(IObjectId** ppValue) mut
			{
				return VT.get_HashAlgorithm(&this, ppValue);
			}
			public HRESULT put_HashAlgorithm(IObjectId* pValue) mut
			{
				return VT.put_HashAlgorithm(&this, pValue);
			}
			public HRESULT get_AlternateSignatureAlgorithm(int16* pValue) mut
			{
				return VT.get_AlternateSignatureAlgorithm(&this, pValue);
			}
			public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut
			{
				return VT.put_AlternateSignatureAlgorithm(&this, Value);
			}
			public HRESULT get_SignatureInformation(IX509SignatureInformation** ppValue) mut
			{
				return VT.get_SignatureInformation(&this, ppValue);
			}
			public HRESULT get_RawData(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawData(&this, Encoding, pValue);
			}
			public HRESULT get_RawDataToBeSigned(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_RawDataToBeSigned(&this, Encoding, pValue);
			}
			public HRESULT get_Signature(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Signature(&this, Encoding, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509CertificateRevocationList *self) Initialize;
				public new function HRESULT(IX509CertificateRevocationList *self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
				public new function HRESULT(IX509CertificateRevocationList *self) Encode;
				public new function HRESULT(IX509CertificateRevocationList *self) ResetForEncode;
				public new function HRESULT(IX509CertificateRevocationList *self, IX509PublicKey* pPublicKey) CheckPublicKeySignature;
				public new function HRESULT(IX509CertificateRevocationList *self) CheckSignature;
				public new function HRESULT(IX509CertificateRevocationList *self, IX500DistinguishedName** ppValue) get_Issuer;
				public new function HRESULT(IX509CertificateRevocationList *self, IX500DistinguishedName* pValue) put_Issuer;
				public new function HRESULT(IX509CertificateRevocationList *self, double* pValue) get_ThisUpdate;
				public new function HRESULT(IX509CertificateRevocationList *self, double Value) put_ThisUpdate;
				public new function HRESULT(IX509CertificateRevocationList *self, double* pValue) get_NextUpdate;
				public new function HRESULT(IX509CertificateRevocationList *self, double Value) put_NextUpdate;
				public new function HRESULT(IX509CertificateRevocationList *self, IX509CertificateRevocationListEntries** ppValue) get_X509CRLEntries;
				public new function HRESULT(IX509CertificateRevocationList *self, IX509Extensions** ppValue) get_X509Extensions;
				public new function HRESULT(IX509CertificateRevocationList *self, IObjectIds** ppValue) get_CriticalExtensions;
				public new function HRESULT(IX509CertificateRevocationList *self, ISignerCertificate** ppValue) get_SignerCertificate;
				public new function HRESULT(IX509CertificateRevocationList *self, ISignerCertificate* pValue) put_SignerCertificate;
				public new function HRESULT(IX509CertificateRevocationList *self, EncodingType Encoding, BSTR* pValue) get_CRLNumber;
				public new function HRESULT(IX509CertificateRevocationList *self, EncodingType Encoding, BSTR Value) put_CRLNumber;
				public new function HRESULT(IX509CertificateRevocationList *self, int32* pValue) get_CAVersion;
				public new function HRESULT(IX509CertificateRevocationList *self, int32 pValue) put_CAVersion;
				public new function HRESULT(IX509CertificateRevocationList *self, int16* pValue) get_BaseCRL;
				public new function HRESULT(IX509CertificateRevocationList *self, int16* pValue) get_NullSigned;
				public new function HRESULT(IX509CertificateRevocationList *self, IObjectId** ppValue) get_HashAlgorithm;
				public new function HRESULT(IX509CertificateRevocationList *self, IObjectId* pValue) put_HashAlgorithm;
				public new function HRESULT(IX509CertificateRevocationList *self, int16* pValue) get_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509CertificateRevocationList *self, int16 Value) put_AlternateSignatureAlgorithm;
				public new function HRESULT(IX509CertificateRevocationList *self, IX509SignatureInformation** ppValue) get_SignatureInformation;
				public new function HRESULT(IX509CertificateRevocationList *self, EncodingType Encoding, BSTR* pValue) get_RawData;
				public new function HRESULT(IX509CertificateRevocationList *self, EncodingType Encoding, BSTR* pValue) get_RawDataToBeSigned;
				public new function HRESULT(IX509CertificateRevocationList *self, EncodingType Encoding, BSTR* pValue) get_Signature;
			}
		}
		[CRepr]
		public struct ICertificateAttestationChallenge : IDispatch
		{
			public const new Guid IID = .(0x6f175a7c, 0x4a3a, 0x40ae, 0x9d, 0xba, 0x59, 0x2f, 0xd6, 0xbb, 0xf9, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(EncodingType Encoding, BSTR strPendingFullCmcResponseWithChallenge) mut
			{
				return VT.Initialize(&this, Encoding, strPendingFullCmcResponseWithChallenge);
			}
			public HRESULT DecryptChallenge(EncodingType Encoding, BSTR* pstrEnvelopedPkcs7ReencryptedToCA) mut
			{
				return VT.DecryptChallenge(&this, Encoding, pstrEnvelopedPkcs7ReencryptedToCA);
			}
			public HRESULT get_RequestID(BSTR* pstrRequestID) mut
			{
				return VT.get_RequestID(&this, pstrRequestID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertificateAttestationChallenge *self, EncodingType Encoding, BSTR strPendingFullCmcResponseWithChallenge) Initialize;
				public new function HRESULT(ICertificateAttestationChallenge *self, EncodingType Encoding, BSTR* pstrEnvelopedPkcs7ReencryptedToCA) DecryptChallenge;
				public new function HRESULT(ICertificateAttestationChallenge *self, BSTR* pstrRequestID) get_RequestID;
			}
		}
		[CRepr]
		public struct ICertificateAttestationChallenge2 : ICertificateAttestationChallenge
		{
			public const new Guid IID = .(0x4631334d, 0xe266, 0x47d6, 0xbd, 0x79, 0xbe, 0x53, 0xcb, 0x2e, 0x27, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_KeyContainerName(BSTR Value) mut
			{
				return VT.put_KeyContainerName(&this, Value);
			}
			public HRESULT put_KeyBlob(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_KeyBlob(&this, Encoding, Value);
			}
			[CRepr]
			public struct VTable : ICertificateAttestationChallenge.VTable
			{
				public new function HRESULT(ICertificateAttestationChallenge2 *self, BSTR Value) put_KeyContainerName;
				public new function HRESULT(ICertificateAttestationChallenge2 *self, EncodingType Encoding, BSTR Value) put_KeyBlob;
			}
		}
		[CRepr]
		public struct IX509SCEPEnrollment : IDispatch
		{
			public const new Guid IID = .(0x728ab361, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IX509CertificateRequestPkcs10* pRequest, BSTR strThumbprint, EncodingType ThumprintEncoding, BSTR strServerCertificates, EncodingType Encoding) mut
			{
				return VT.Initialize(&this, pRequest, strThumbprint, ThumprintEncoding, strServerCertificates, Encoding);
			}
			public HRESULT InitializeForPending(X509CertificateEnrollmentContext Context) mut
			{
				return VT.InitializeForPending(&this, Context);
			}
			public HRESULT CreateRequestMessage(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreateRequestMessage(&this, Encoding, pValue);
			}
			public HRESULT CreateRetrievePendingMessage(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreateRetrievePendingMessage(&this, Encoding, pValue);
			}
			public HRESULT CreateRetrieveCertificateMessage(X509CertificateEnrollmentContext Context, BSTR strIssuer, EncodingType IssuerEncoding, BSTR strSerialNumber, EncodingType SerialNumberEncoding, EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreateRetrieveCertificateMessage(&this, Context, strIssuer, IssuerEncoding, strSerialNumber, SerialNumberEncoding, Encoding, pValue);
			}
			public HRESULT ProcessResponseMessage(BSTR strResponse, EncodingType Encoding, X509SCEPDisposition* pDisposition) mut
			{
				return VT.ProcessResponseMessage(&this, strResponse, Encoding, pDisposition);
			}
			public HRESULT put_ServerCapabilities(BSTR Value) mut
			{
				return VT.put_ServerCapabilities(&this, Value);
			}
			public HRESULT get_FailInfo(X509SCEPFailInfo* pValue) mut
			{
				return VT.get_FailInfo(&this, pValue);
			}
			public HRESULT get_SignerCertificate(ISignerCertificate** ppValue) mut
			{
				return VT.get_SignerCertificate(&this, ppValue);
			}
			public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut
			{
				return VT.put_SignerCertificate(&this, pValue);
			}
			public HRESULT get_OldCertificate(ISignerCertificate** ppValue) mut
			{
				return VT.get_OldCertificate(&this, ppValue);
			}
			public HRESULT put_OldCertificate(ISignerCertificate* pValue) mut
			{
				return VT.put_OldCertificate(&this, pValue);
			}
			public HRESULT get_TransactionId(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_TransactionId(&this, Encoding, pValue);
			}
			public HRESULT put_TransactionId(EncodingType Encoding, BSTR Value) mut
			{
				return VT.put_TransactionId(&this, Encoding, Value);
			}
			public HRESULT get_Request(IX509CertificateRequestPkcs10** ppValue) mut
			{
				return VT.get_Request(&this, ppValue);
			}
			public HRESULT get_CertificateFriendlyName(BSTR* pValue) mut
			{
				return VT.get_CertificateFriendlyName(&this, pValue);
			}
			public HRESULT put_CertificateFriendlyName(BSTR Value) mut
			{
				return VT.put_CertificateFriendlyName(&this, Value);
			}
			public HRESULT get_Status(IX509EnrollmentStatus** ppValue) mut
			{
				return VT.get_Status(&this, ppValue);
			}
			public HRESULT get_Certificate(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.get_Certificate(&this, Encoding, pValue);
			}
			public HRESULT get_Silent(int16* pValue) mut
			{
				return VT.get_Silent(&this, pValue);
			}
			public HRESULT put_Silent(int16 Value) mut
			{
				return VT.put_Silent(&this, Value);
			}
			public HRESULT DeleteRequest() mut
			{
				return VT.DeleteRequest(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509SCEPEnrollment *self, IX509CertificateRequestPkcs10* pRequest, BSTR strThumbprint, EncodingType ThumprintEncoding, BSTR strServerCertificates, EncodingType Encoding) Initialize;
				public new function HRESULT(IX509SCEPEnrollment *self, X509CertificateEnrollmentContext Context) InitializeForPending;
				public new function HRESULT(IX509SCEPEnrollment *self, EncodingType Encoding, BSTR* pValue) CreateRequestMessage;
				public new function HRESULT(IX509SCEPEnrollment *self, EncodingType Encoding, BSTR* pValue) CreateRetrievePendingMessage;
				public new function HRESULT(IX509SCEPEnrollment *self, X509CertificateEnrollmentContext Context, BSTR strIssuer, EncodingType IssuerEncoding, BSTR strSerialNumber, EncodingType SerialNumberEncoding, EncodingType Encoding, BSTR* pValue) CreateRetrieveCertificateMessage;
				public new function HRESULT(IX509SCEPEnrollment *self, BSTR strResponse, EncodingType Encoding, X509SCEPDisposition* pDisposition) ProcessResponseMessage;
				public new function HRESULT(IX509SCEPEnrollment *self, BSTR Value) put_ServerCapabilities;
				public new function HRESULT(IX509SCEPEnrollment *self, X509SCEPFailInfo* pValue) get_FailInfo;
				public new function HRESULT(IX509SCEPEnrollment *self, ISignerCertificate** ppValue) get_SignerCertificate;
				public new function HRESULT(IX509SCEPEnrollment *self, ISignerCertificate* pValue) put_SignerCertificate;
				public new function HRESULT(IX509SCEPEnrollment *self, ISignerCertificate** ppValue) get_OldCertificate;
				public new function HRESULT(IX509SCEPEnrollment *self, ISignerCertificate* pValue) put_OldCertificate;
				public new function HRESULT(IX509SCEPEnrollment *self, EncodingType Encoding, BSTR* pValue) get_TransactionId;
				public new function HRESULT(IX509SCEPEnrollment *self, EncodingType Encoding, BSTR Value) put_TransactionId;
				public new function HRESULT(IX509SCEPEnrollment *self, IX509CertificateRequestPkcs10** ppValue) get_Request;
				public new function HRESULT(IX509SCEPEnrollment *self, BSTR* pValue) get_CertificateFriendlyName;
				public new function HRESULT(IX509SCEPEnrollment *self, BSTR Value) put_CertificateFriendlyName;
				public new function HRESULT(IX509SCEPEnrollment *self, IX509EnrollmentStatus** ppValue) get_Status;
				public new function HRESULT(IX509SCEPEnrollment *self, EncodingType Encoding, BSTR* pValue) get_Certificate;
				public new function HRESULT(IX509SCEPEnrollment *self, int16* pValue) get_Silent;
				public new function HRESULT(IX509SCEPEnrollment *self, int16 Value) put_Silent;
				public new function HRESULT(IX509SCEPEnrollment *self) DeleteRequest;
			}
		}
		[CRepr]
		public struct IX509SCEPEnrollment2 : IX509SCEPEnrollment
		{
			public const new Guid IID = .(0x728ab364, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateChallengeAnswerMessage(EncodingType Encoding, BSTR* pValue) mut
			{
				return VT.CreateChallengeAnswerMessage(&this, Encoding, pValue);
			}
			public HRESULT ProcessResponseMessage2(X509SCEPProcessMessageFlags Flags, BSTR strResponse, EncodingType Encoding, X509SCEPDisposition* pDisposition) mut
			{
				return VT.ProcessResponseMessage2(&this, Flags, strResponse, Encoding, pDisposition);
			}
			public HRESULT get_ResultMessageText(BSTR* pValue) mut
			{
				return VT.get_ResultMessageText(&this, pValue);
			}
			public HRESULT get_DelayRetry(DelayRetryAction* pValue) mut
			{
				return VT.get_DelayRetry(&this, pValue);
			}
			public HRESULT get_ActivityId(BSTR* pValue) mut
			{
				return VT.get_ActivityId(&this, pValue);
			}
			public HRESULT put_ActivityId(BSTR Value) mut
			{
				return VT.put_ActivityId(&this, Value);
			}
			[CRepr]
			public struct VTable : IX509SCEPEnrollment.VTable
			{
				public new function HRESULT(IX509SCEPEnrollment2 *self, EncodingType Encoding, BSTR* pValue) CreateChallengeAnswerMessage;
				public new function HRESULT(IX509SCEPEnrollment2 *self, X509SCEPProcessMessageFlags Flags, BSTR strResponse, EncodingType Encoding, X509SCEPDisposition* pDisposition) ProcessResponseMessage2;
				public new function HRESULT(IX509SCEPEnrollment2 *self, BSTR* pValue) get_ResultMessageText;
				public new function HRESULT(IX509SCEPEnrollment2 *self, DelayRetryAction* pValue) get_DelayRetry;
				public new function HRESULT(IX509SCEPEnrollment2 *self, BSTR* pValue) get_ActivityId;
				public new function HRESULT(IX509SCEPEnrollment2 *self, BSTR Value) put_ActivityId;
			}
		}
		[CRepr]
		public struct IX509SCEPEnrollmentHelper : IDispatch
		{
			public const new Guid IID = .(0x728ab365, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strServerUrl, BSTR strRequestHeaders, IX509CertificateRequestPkcs10* pRequest, BSTR strCACertificateThumbprint) mut
			{
				return VT.Initialize(&this, strServerUrl, strRequestHeaders, pRequest, strCACertificateThumbprint);
			}
			public HRESULT InitializeForPending(BSTR strServerUrl, BSTR strRequestHeaders, X509CertificateEnrollmentContext Context, BSTR strTransactionId) mut
			{
				return VT.InitializeForPending(&this, strServerUrl, strRequestHeaders, Context, strTransactionId);
			}
			public HRESULT Enroll(X509SCEPProcessMessageFlags ProcessFlags, X509SCEPDisposition* pDisposition) mut
			{
				return VT.Enroll(&this, ProcessFlags, pDisposition);
			}
			public HRESULT FetchPending(X509SCEPProcessMessageFlags ProcessFlags, X509SCEPDisposition* pDisposition) mut
			{
				return VT.FetchPending(&this, ProcessFlags, pDisposition);
			}
			public HRESULT get_X509SCEPEnrollment(IX509SCEPEnrollment** ppValue) mut
			{
				return VT.get_X509SCEPEnrollment(&this, ppValue);
			}
			public HRESULT get_ResultMessageText(BSTR* pValue) mut
			{
				return VT.get_ResultMessageText(&this, pValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, BSTR strServerUrl, BSTR strRequestHeaders, IX509CertificateRequestPkcs10* pRequest, BSTR strCACertificateThumbprint) Initialize;
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, BSTR strServerUrl, BSTR strRequestHeaders, X509CertificateEnrollmentContext Context, BSTR strTransactionId) InitializeForPending;
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, X509SCEPProcessMessageFlags ProcessFlags, X509SCEPDisposition* pDisposition) Enroll;
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, X509SCEPProcessMessageFlags ProcessFlags, X509SCEPDisposition* pDisposition) FetchPending;
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, IX509SCEPEnrollment** ppValue) get_X509SCEPEnrollment;
				public new function HRESULT(IX509SCEPEnrollmentHelper *self, BSTR* pValue) get_ResultMessageText;
			}
		}
		[CRepr]
		public struct ICertEncodeStringArray : IDispatch
		{
			public const new Guid IID = .(0x12a88820, 0x7494, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetStringType(int32* pStringType) mut
			{
				return VT.GetStringType(&this, pStringType);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetValue(int32 Index, BSTR* pstr) mut
			{
				return VT.GetValue(&this, Index, pstr);
			}
			public HRESULT Reset(int32 Count, CERT_RDN_ATTR_VALUE_TYPE StringType) mut
			{
				return VT.Reset(&this, Count, StringType);
			}
			public HRESULT SetValue(int32 Index, BSTR str) mut
			{
				return VT.SetValue(&this, Index, str);
			}
			public HRESULT Encode(BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeStringArray *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeStringArray *self, int32* pStringType) GetStringType;
				public new function HRESULT(ICertEncodeStringArray *self, int32* pCount) GetCount;
				public new function HRESULT(ICertEncodeStringArray *self, int32 Index, BSTR* pstr) GetValue;
				public new function HRESULT(ICertEncodeStringArray *self, int32 Count, CERT_RDN_ATTR_VALUE_TYPE StringType) Reset;
				public new function HRESULT(ICertEncodeStringArray *self, int32 Index, BSTR str) SetValue;
				public new function HRESULT(ICertEncodeStringArray *self, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeStringArray2 : ICertEncodeStringArray
		{
			public const new Guid IID = .(0x9c680d93, 0x9b7d, 0x4e95, 0x90, 0x18, 0x4f, 0xfe, 0x10, 0xba, 0x5a, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, Encoding, pstrEncodedData);
			}
			[CRepr]
			public struct VTable : ICertEncodeStringArray.VTable
			{
				public new function HRESULT(ICertEncodeStringArray2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeStringArray2 *self, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
			}
		}
		[CRepr]
		public struct ICertEncodeLongArray : IDispatch
		{
			public const new Guid IID = .(0x15e2f230, 0xa0a2, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetValue(int32 Index, int32* pValue) mut
			{
				return VT.GetValue(&this, Index, pValue);
			}
			public HRESULT Reset(int32 Count) mut
			{
				return VT.Reset(&this, Count);
			}
			public HRESULT SetValue(int32 Index, int32 Value) mut
			{
				return VT.SetValue(&this, Index, Value);
			}
			public HRESULT Encode(BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeLongArray *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeLongArray *self, int32* pCount) GetCount;
				public new function HRESULT(ICertEncodeLongArray *self, int32 Index, int32* pValue) GetValue;
				public new function HRESULT(ICertEncodeLongArray *self, int32 Count) Reset;
				public new function HRESULT(ICertEncodeLongArray *self, int32 Index, int32 Value) SetValue;
				public new function HRESULT(ICertEncodeLongArray *self, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeLongArray2 : ICertEncodeLongArray
		{
			public const new Guid IID = .(0x4efde84a, 0xbd9b, 0x4fc2, 0xa1, 0x08, 0xc3, 0x47, 0xd4, 0x78, 0x84, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, Encoding, pstrEncodedData);
			}
			[CRepr]
			public struct VTable : ICertEncodeLongArray.VTable
			{
				public new function HRESULT(ICertEncodeLongArray2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeLongArray2 *self, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
			}
		}
		[CRepr]
		public struct ICertEncodeDateArray : IDispatch
		{
			public const new Guid IID = .(0x2f9469a0, 0xa470, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetCount(int32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetValue(int32 Index, double* pValue) mut
			{
				return VT.GetValue(&this, Index, pValue);
			}
			public HRESULT Reset(int32 Count) mut
			{
				return VT.Reset(&this, Count);
			}
			public HRESULT SetValue(int32 Index, double Value) mut
			{
				return VT.SetValue(&this, Index, Value);
			}
			public HRESULT Encode(BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeDateArray *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeDateArray *self, int32* pCount) GetCount;
				public new function HRESULT(ICertEncodeDateArray *self, int32 Index, double* pValue) GetValue;
				public new function HRESULT(ICertEncodeDateArray *self, int32 Count) Reset;
				public new function HRESULT(ICertEncodeDateArray *self, int32 Index, double Value) SetValue;
				public new function HRESULT(ICertEncodeDateArray *self, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeDateArray2 : ICertEncodeDateArray
		{
			public const new Guid IID = .(0x99a4edb5, 0x2b8e, 0x448d, 0xbf, 0x95, 0xbb, 0xa8, 0xd7, 0x78, 0x9d, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, Encoding, pstrEncodedData);
			}
			[CRepr]
			public struct VTable : ICertEncodeDateArray.VTable
			{
				public new function HRESULT(ICertEncodeDateArray2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeDateArray2 *self, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
			}
		}
		[CRepr]
		public struct ICertEncodeCRLDistInfo : IDispatch
		{
			public const new Guid IID = .(0x01958640, 0xbbff, 0x11d0, 0x88, 0x25, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetDistPointCount(int32* pDistPointCount) mut
			{
				return VT.GetDistPointCount(&this, pDistPointCount);
			}
			public HRESULT GetNameCount(int32 DistPointIndex, int32* pNameCount) mut
			{
				return VT.GetNameCount(&this, DistPointIndex, pNameCount);
			}
			public HRESULT GetNameChoice(int32 DistPointIndex, int32 NameIndex, int32* pNameChoice) mut
			{
				return VT.GetNameChoice(&this, DistPointIndex, NameIndex, pNameChoice);
			}
			public HRESULT GetName(int32 DistPointIndex, int32 NameIndex, BSTR* pstrName) mut
			{
				return VT.GetName(&this, DistPointIndex, NameIndex, pstrName);
			}
			public HRESULT Reset(int32 DistPointCount) mut
			{
				return VT.Reset(&this, DistPointCount);
			}
			public HRESULT SetNameCount(int32 DistPointIndex, int32 NameCount) mut
			{
				return VT.SetNameCount(&this, DistPointIndex, NameCount);
			}
			public HRESULT SetNameEntry(int32 DistPointIndex, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) mut
			{
				return VT.SetNameEntry(&this, DistPointIndex, NameIndex, NameChoice, strName);
			}
			public HRESULT Encode(BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeCRLDistInfo *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32* pDistPointCount) GetDistPointCount;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointIndex, int32* pNameCount) GetNameCount;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointIndex, int32 NameIndex, int32* pNameChoice) GetNameChoice;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointIndex, int32 NameIndex, BSTR* pstrName) GetName;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointCount) Reset;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointIndex, int32 NameCount) SetNameCount;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, int32 DistPointIndex, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) SetNameEntry;
				public new function HRESULT(ICertEncodeCRLDistInfo *self, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeCRLDistInfo2 : ICertEncodeCRLDistInfo
		{
			public const new Guid IID = .(0xb4275d4b, 0x3e30, 0x446f, 0xad, 0x36, 0x09, 0xd0, 0x31, 0x20, 0xb0, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, Encoding, pstrEncodedData);
			}
			[CRepr]
			public struct VTable : ICertEncodeCRLDistInfo.VTable
			{
				public new function HRESULT(ICertEncodeCRLDistInfo2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeCRLDistInfo2 *self, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
			}
		}
		[CRepr]
		public struct ICertEncodeAltName : IDispatch
		{
			public const new Guid IID = .(0x1c9a8c70, 0x1271, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetNameCount(int32* pNameCount) mut
			{
				return VT.GetNameCount(&this, pNameCount);
			}
			public HRESULT GetNameChoice(int32 NameIndex, int32* pNameChoice) mut
			{
				return VT.GetNameChoice(&this, NameIndex, pNameChoice);
			}
			public HRESULT GetName(int32 NameIndex, BSTR* pstrName) mut
			{
				return VT.GetName(&this, NameIndex, pstrName);
			}
			public HRESULT Reset(int32 NameCount) mut
			{
				return VT.Reset(&this, NameCount);
			}
			public HRESULT SetNameEntry(int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) mut
			{
				return VT.SetNameEntry(&this, NameIndex, NameChoice, strName);
			}
			public HRESULT Encode(BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeAltName *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeAltName *self, int32* pNameCount) GetNameCount;
				public new function HRESULT(ICertEncodeAltName *self, int32 NameIndex, int32* pNameChoice) GetNameChoice;
				public new function HRESULT(ICertEncodeAltName *self, int32 NameIndex, BSTR* pstrName) GetName;
				public new function HRESULT(ICertEncodeAltName *self, int32 NameCount) Reset;
				public new function HRESULT(ICertEncodeAltName *self, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) SetNameEntry;
				public new function HRESULT(ICertEncodeAltName *self, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeAltName2 : ICertEncodeAltName
		{
			public const new Guid IID = .(0xf67fe177, 0x5ef1, 0x4535, 0xb4, 0xce, 0x29, 0xdf, 0x15, 0xe2, 0xe0, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, Encoding, pstrEncodedData);
			}
			public HRESULT GetNameBlob(int32 NameIndex, EncodingType Encoding, BSTR* pstrName) mut
			{
				return VT.GetNameBlob(&this, NameIndex, Encoding, pstrName);
			}
			public HRESULT SetNameEntryBlob(int32 NameIndex, int32 NameChoice, BSTR strName, EncodingType Encoding) mut
			{
				return VT.SetNameEntryBlob(&this, NameIndex, NameChoice, strName, Encoding);
			}
			[CRepr]
			public struct VTable : ICertEncodeAltName.VTable
			{
				public new function HRESULT(ICertEncodeAltName2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeAltName2 *self, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
				public new function HRESULT(ICertEncodeAltName2 *self, int32 NameIndex, EncodingType Encoding, BSTR* pstrName) GetNameBlob;
				public new function HRESULT(ICertEncodeAltName2 *self, int32 NameIndex, int32 NameChoice, BSTR strName, EncodingType Encoding) SetNameEntryBlob;
			}
		}
		[CRepr]
		public struct ICertEncodeBitString : IDispatch
		{
			public const new Guid IID = .(0x6db525be, 0x1278, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(BSTR strBinary) mut
			{
				return VT.Decode(&this, strBinary);
			}
			public HRESULT GetBitCount(int32* pBitCount) mut
			{
				return VT.GetBitCount(&this, pBitCount);
			}
			public HRESULT GetBitString(BSTR* pstrBitString) mut
			{
				return VT.GetBitString(&this, pstrBitString);
			}
			public HRESULT Encode(int32 BitCount, BSTR strBitString, BSTR* pstrBinary) mut
			{
				return VT.Encode(&this, BitCount, strBitString, pstrBinary);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertEncodeBitString *self, BSTR strBinary) Decode;
				public new function HRESULT(ICertEncodeBitString *self, int32* pBitCount) GetBitCount;
				public new function HRESULT(ICertEncodeBitString *self, BSTR* pstrBitString) GetBitString;
				public new function HRESULT(ICertEncodeBitString *self, int32 BitCount, BSTR strBitString, BSTR* pstrBinary) Encode;
			}
		}
		[CRepr]
		public struct ICertEncodeBitString2 : ICertEncodeBitString
		{
			public const new Guid IID = .(0xe070d6e7, 0x23ef, 0x4dd2, 0x82, 0x42, 0xeb, 0xd9, 0xc9, 0x28, 0xcb, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut
			{
				return VT.DecodeBlob(&this, strEncodedData, Encoding);
			}
			public HRESULT EncodeBlob(int32 BitCount, BSTR strBitString, EncodingType EncodingIn, EncodingType Encoding, BSTR* pstrEncodedData) mut
			{
				return VT.EncodeBlob(&this, BitCount, strBitString, EncodingIn, Encoding, pstrEncodedData);
			}
			public HRESULT GetBitStringBlob(EncodingType Encoding, BSTR* pstrBitString) mut
			{
				return VT.GetBitStringBlob(&this, Encoding, pstrBitString);
			}
			[CRepr]
			public struct VTable : ICertEncodeBitString.VTable
			{
				public new function HRESULT(ICertEncodeBitString2 *self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
				public new function HRESULT(ICertEncodeBitString2 *self, int32 BitCount, BSTR strBitString, EncodingType EncodingIn, EncodingType Encoding, BSTR* pstrEncodedData) EncodeBlob;
				public new function HRESULT(ICertEncodeBitString2 *self, EncodingType Encoding, BSTR* pstrBitString) GetBitStringBlob;
			}
		}
		[CRepr]
		public struct ICertExit : IDispatch
		{
			public const new Guid IID = .(0xe19ae1a0, 0x7364, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR strConfig, CERT_EXIT_EVENT_MASK* pEventMask) mut
			{
				return VT.Initialize(&this, strConfig, pEventMask);
			}
			public HRESULT Notify(int32 ExitEvent, int32 Context) mut
			{
				return VT.Notify(&this, ExitEvent, Context);
			}
			public HRESULT GetDescription(BSTR* pstrDescription) mut
			{
				return VT.GetDescription(&this, pstrDescription);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICertExit *self, BSTR strConfig, CERT_EXIT_EVENT_MASK* pEventMask) Initialize;
				public new function HRESULT(ICertExit *self, int32 ExitEvent, int32 Context) Notify;
				public new function HRESULT(ICertExit *self, BSTR* pstrDescription) GetDescription;
			}
		}
		[CRepr]
		public struct ICertExit2 : ICertExit
		{
			public const new Guid IID = .(0x0abf484b, 0xd049, 0x464d, 0xa7, 0xed, 0x55, 0x2e, 0x75, 0x29, 0xb0, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetManageModule(ICertManageModule** ppManageModule) mut
			{
				return VT.GetManageModule(&this, ppManageModule);
			}
			[CRepr]
			public struct VTable : ICertExit.VTable
			{
				public new function HRESULT(ICertExit2 *self, ICertManageModule** ppManageModule) GetManageModule;
			}
		}
		[CRepr]
		public struct ICEnroll : IDispatch
		{
			public const new Guid IID = .(0x43f8f288, 0x7a20, 0x11d0, 0x8f, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT createFilePKCS10(BSTR DNName, BSTR Usage, BSTR wszPKCS10FileName) mut
			{
				return VT.createFilePKCS10(&this, DNName, Usage, wszPKCS10FileName);
			}
			public HRESULT acceptFilePKCS7(BSTR wszPKCS7FileName) mut
			{
				return VT.acceptFilePKCS7(&this, wszPKCS7FileName);
			}
			public HRESULT createPKCS10(BSTR DNName, BSTR Usage, BSTR* pPKCS10) mut
			{
				return VT.createPKCS10(&this, DNName, Usage, pPKCS10);
			}
			public HRESULT acceptPKCS7(BSTR PKCS7) mut
			{
				return VT.acceptPKCS7(&this, PKCS7);
			}
			public HRESULT getCertFromPKCS7(BSTR wszPKCS7, BSTR* pbstrCert) mut
			{
				return VT.getCertFromPKCS7(&this, wszPKCS7, pbstrCert);
			}
			public HRESULT enumProviders(int32 dwIndex, int32 dwFlags, BSTR* pbstrProvName) mut
			{
				return VT.enumProviders(&this, dwIndex, dwFlags, pbstrProvName);
			}
			public HRESULT enumContainers(int32 dwIndex, BSTR* pbstr) mut
			{
				return VT.enumContainers(&this, dwIndex, pbstr);
			}
			public HRESULT freeRequestInfo(BSTR PKCS7OrPKCS10) mut
			{
				return VT.freeRequestInfo(&this, PKCS7OrPKCS10);
			}
			public HRESULT get_MyStoreName(BSTR* pbstrName) mut
			{
				return VT.get_MyStoreName(&this, pbstrName);
			}
			public HRESULT put_MyStoreName(BSTR bstrName) mut
			{
				return VT.put_MyStoreName(&this, bstrName);
			}
			public HRESULT get_MyStoreType(BSTR* pbstrType) mut
			{
				return VT.get_MyStoreType(&this, pbstrType);
			}
			public HRESULT put_MyStoreType(BSTR bstrType) mut
			{
				return VT.put_MyStoreType(&this, bstrType);
			}
			public HRESULT get_MyStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_MyStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_MyStoreFlags(int32 dwFlags) mut
			{
				return VT.put_MyStoreFlags(&this, dwFlags);
			}
			public HRESULT get_CAStoreName(BSTR* pbstrName) mut
			{
				return VT.get_CAStoreName(&this, pbstrName);
			}
			public HRESULT put_CAStoreName(BSTR bstrName) mut
			{
				return VT.put_CAStoreName(&this, bstrName);
			}
			public HRESULT get_CAStoreType(BSTR* pbstrType) mut
			{
				return VT.get_CAStoreType(&this, pbstrType);
			}
			public HRESULT put_CAStoreType(BSTR bstrType) mut
			{
				return VT.put_CAStoreType(&this, bstrType);
			}
			public HRESULT get_CAStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_CAStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_CAStoreFlags(int32 dwFlags) mut
			{
				return VT.put_CAStoreFlags(&this, dwFlags);
			}
			public HRESULT get_RootStoreName(BSTR* pbstrName) mut
			{
				return VT.get_RootStoreName(&this, pbstrName);
			}
			public HRESULT put_RootStoreName(BSTR bstrName) mut
			{
				return VT.put_RootStoreName(&this, bstrName);
			}
			public HRESULT get_RootStoreType(BSTR* pbstrType) mut
			{
				return VT.get_RootStoreType(&this, pbstrType);
			}
			public HRESULT put_RootStoreType(BSTR bstrType) mut
			{
				return VT.put_RootStoreType(&this, bstrType);
			}
			public HRESULT get_RootStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_RootStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_RootStoreFlags(int32 dwFlags) mut
			{
				return VT.put_RootStoreFlags(&this, dwFlags);
			}
			public HRESULT get_RequestStoreName(BSTR* pbstrName) mut
			{
				return VT.get_RequestStoreName(&this, pbstrName);
			}
			public HRESULT put_RequestStoreName(BSTR bstrName) mut
			{
				return VT.put_RequestStoreName(&this, bstrName);
			}
			public HRESULT get_RequestStoreType(BSTR* pbstrType) mut
			{
				return VT.get_RequestStoreType(&this, pbstrType);
			}
			public HRESULT put_RequestStoreType(BSTR bstrType) mut
			{
				return VT.put_RequestStoreType(&this, bstrType);
			}
			public HRESULT get_RequestStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_RequestStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_RequestStoreFlags(int32 dwFlags) mut
			{
				return VT.put_RequestStoreFlags(&this, dwFlags);
			}
			public HRESULT get_ContainerName(BSTR* pbstrContainer) mut
			{
				return VT.get_ContainerName(&this, pbstrContainer);
			}
			public HRESULT put_ContainerName(BSTR bstrContainer) mut
			{
				return VT.put_ContainerName(&this, bstrContainer);
			}
			public HRESULT get_ProviderName(BSTR* pbstrProvider) mut
			{
				return VT.get_ProviderName(&this, pbstrProvider);
			}
			public HRESULT put_ProviderName(BSTR bstrProvider) mut
			{
				return VT.put_ProviderName(&this, bstrProvider);
			}
			public HRESULT get_ProviderType(int32* pdwType) mut
			{
				return VT.get_ProviderType(&this, pdwType);
			}
			public HRESULT put_ProviderType(int32 dwType) mut
			{
				return VT.put_ProviderType(&this, dwType);
			}
			public HRESULT get_KeySpec(int32* pdw) mut
			{
				return VT.get_KeySpec(&this, pdw);
			}
			public HRESULT put_KeySpec(int32 dw) mut
			{
				return VT.put_KeySpec(&this, dw);
			}
			public HRESULT get_ProviderFlags(int32* pdwFlags) mut
			{
				return VT.get_ProviderFlags(&this, pdwFlags);
			}
			public HRESULT put_ProviderFlags(int32 dwFlags) mut
			{
				return VT.put_ProviderFlags(&this, dwFlags);
			}
			public HRESULT get_UseExistingKeySet(BOOL* fUseExistingKeys) mut
			{
				return VT.get_UseExistingKeySet(&this, fUseExistingKeys);
			}
			public HRESULT put_UseExistingKeySet(BOOL fUseExistingKeys) mut
			{
				return VT.put_UseExistingKeySet(&this, fUseExistingKeys);
			}
			public HRESULT get_GenKeyFlags(int32* pdwFlags) mut
			{
				return VT.get_GenKeyFlags(&this, pdwFlags);
			}
			public HRESULT put_GenKeyFlags(int32 dwFlags) mut
			{
				return VT.put_GenKeyFlags(&this, dwFlags);
			}
			public HRESULT get_DeleteRequestCert(BOOL* fDelete) mut
			{
				return VT.get_DeleteRequestCert(&this, fDelete);
			}
			public HRESULT put_DeleteRequestCert(BOOL fDelete) mut
			{
				return VT.put_DeleteRequestCert(&this, fDelete);
			}
			public HRESULT get_WriteCertToCSP(BOOL* fBool) mut
			{
				return VT.get_WriteCertToCSP(&this, fBool);
			}
			public HRESULT put_WriteCertToCSP(BOOL fBool) mut
			{
				return VT.put_WriteCertToCSP(&this, fBool);
			}
			public HRESULT get_SPCFileName(BSTR* pbstr) mut
			{
				return VT.get_SPCFileName(&this, pbstr);
			}
			public HRESULT put_SPCFileName(BSTR bstr) mut
			{
				return VT.put_SPCFileName(&this, bstr);
			}
			public HRESULT get_PVKFileName(BSTR* pbstr) mut
			{
				return VT.get_PVKFileName(&this, pbstr);
			}
			public HRESULT put_PVKFileName(BSTR bstr) mut
			{
				return VT.put_PVKFileName(&this, bstr);
			}
			public HRESULT get_HashAlgorithm(BSTR* pbstr) mut
			{
				return VT.get_HashAlgorithm(&this, pbstr);
			}
			public HRESULT put_HashAlgorithm(BSTR bstr) mut
			{
				return VT.put_HashAlgorithm(&this, bstr);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(ICEnroll *self, BSTR DNName, BSTR Usage, BSTR wszPKCS10FileName) createFilePKCS10;
				public new function HRESULT(ICEnroll *self, BSTR wszPKCS7FileName) acceptFilePKCS7;
				public new function HRESULT(ICEnroll *self, BSTR DNName, BSTR Usage, BSTR* pPKCS10) createPKCS10;
				public new function HRESULT(ICEnroll *self, BSTR PKCS7) acceptPKCS7;
				public new function HRESULT(ICEnroll *self, BSTR wszPKCS7, BSTR* pbstrCert) getCertFromPKCS7;
				public new function HRESULT(ICEnroll *self, int32 dwIndex, int32 dwFlags, BSTR* pbstrProvName) enumProviders;
				public new function HRESULT(ICEnroll *self, int32 dwIndex, BSTR* pbstr) enumContainers;
				public new function HRESULT(ICEnroll *self, BSTR PKCS7OrPKCS10) freeRequestInfo;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrName) get_MyStoreName;
				public new function HRESULT(ICEnroll *self, BSTR bstrName) put_MyStoreName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrType) get_MyStoreType;
				public new function HRESULT(ICEnroll *self, BSTR bstrType) put_MyStoreType;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_MyStoreFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_MyStoreFlags;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrName) get_CAStoreName;
				public new function HRESULT(ICEnroll *self, BSTR bstrName) put_CAStoreName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrType) get_CAStoreType;
				public new function HRESULT(ICEnroll *self, BSTR bstrType) put_CAStoreType;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_CAStoreFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_CAStoreFlags;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrName) get_RootStoreName;
				public new function HRESULT(ICEnroll *self, BSTR bstrName) put_RootStoreName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrType) get_RootStoreType;
				public new function HRESULT(ICEnroll *self, BSTR bstrType) put_RootStoreType;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_RootStoreFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_RootStoreFlags;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrName) get_RequestStoreName;
				public new function HRESULT(ICEnroll *self, BSTR bstrName) put_RequestStoreName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrType) get_RequestStoreType;
				public new function HRESULT(ICEnroll *self, BSTR bstrType) put_RequestStoreType;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_RequestStoreFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_RequestStoreFlags;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrContainer) get_ContainerName;
				public new function HRESULT(ICEnroll *self, BSTR bstrContainer) put_ContainerName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstrProvider) get_ProviderName;
				public new function HRESULT(ICEnroll *self, BSTR bstrProvider) put_ProviderName;
				public new function HRESULT(ICEnroll *self, int32* pdwType) get_ProviderType;
				public new function HRESULT(ICEnroll *self, int32 dwType) put_ProviderType;
				public new function HRESULT(ICEnroll *self, int32* pdw) get_KeySpec;
				public new function HRESULT(ICEnroll *self, int32 dw) put_KeySpec;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_ProviderFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_ProviderFlags;
				public new function HRESULT(ICEnroll *self, BOOL* fUseExistingKeys) get_UseExistingKeySet;
				public new function HRESULT(ICEnroll *self, BOOL fUseExistingKeys) put_UseExistingKeySet;
				public new function HRESULT(ICEnroll *self, int32* pdwFlags) get_GenKeyFlags;
				public new function HRESULT(ICEnroll *self, int32 dwFlags) put_GenKeyFlags;
				public new function HRESULT(ICEnroll *self, BOOL* fDelete) get_DeleteRequestCert;
				public new function HRESULT(ICEnroll *self, BOOL fDelete) put_DeleteRequestCert;
				public new function HRESULT(ICEnroll *self, BOOL* fBool) get_WriteCertToCSP;
				public new function HRESULT(ICEnroll *self, BOOL fBool) put_WriteCertToCSP;
				public new function HRESULT(ICEnroll *self, BSTR* pbstr) get_SPCFileName;
				public new function HRESULT(ICEnroll *self, BSTR bstr) put_SPCFileName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstr) get_PVKFileName;
				public new function HRESULT(ICEnroll *self, BSTR bstr) put_PVKFileName;
				public new function HRESULT(ICEnroll *self, BSTR* pbstr) get_HashAlgorithm;
				public new function HRESULT(ICEnroll *self, BSTR bstr) put_HashAlgorithm;
			}
		}
		[CRepr]
		public struct ICEnroll2 : ICEnroll
		{
			public const new Guid IID = .(0x704ca730, 0xc90b, 0x11d1, 0x9b, 0xec, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT addCertTypeToRequest(BSTR CertType) mut
			{
				return VT.addCertTypeToRequest(&this, CertType);
			}
			public HRESULT addNameValuePairToSignature(BSTR Name, BSTR Value) mut
			{
				return VT.addNameValuePairToSignature(&this, Name, Value);
			}
			public HRESULT get_WriteCertToUserDS(BOOL* fBool) mut
			{
				return VT.get_WriteCertToUserDS(&this, fBool);
			}
			public HRESULT put_WriteCertToUserDS(BOOL fBool) mut
			{
				return VT.put_WriteCertToUserDS(&this, fBool);
			}
			public HRESULT get_EnableT61DNEncoding(BOOL* fBool) mut
			{
				return VT.get_EnableT61DNEncoding(&this, fBool);
			}
			public HRESULT put_EnableT61DNEncoding(BOOL fBool) mut
			{
				return VT.put_EnableT61DNEncoding(&this, fBool);
			}
			[CRepr]
			public struct VTable : ICEnroll.VTable
			{
				public new function HRESULT(ICEnroll2 *self, BSTR CertType) addCertTypeToRequest;
				public new function HRESULT(ICEnroll2 *self, BSTR Name, BSTR Value) addNameValuePairToSignature;
				public new function HRESULT(ICEnroll2 *self, BOOL* fBool) get_WriteCertToUserDS;
				public new function HRESULT(ICEnroll2 *self, BOOL fBool) put_WriteCertToUserDS;
				public new function HRESULT(ICEnroll2 *self, BOOL* fBool) get_EnableT61DNEncoding;
				public new function HRESULT(ICEnroll2 *self, BOOL fBool) put_EnableT61DNEncoding;
			}
		}
		[CRepr]
		public struct ICEnroll3 : ICEnroll2
		{
			public const new Guid IID = .(0xc28c2d95, 0xb7de, 0x11d2, 0xa4, 0x21, 0x00, 0xc0, 0x4f, 0x79, 0xfe, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallPKCS7(BSTR PKCS7) mut
			{
				return VT.InstallPKCS7(&this, PKCS7);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT GetSupportedKeySpec(int32* pdwKeySpec) mut
			{
				return VT.GetSupportedKeySpec(&this, pdwKeySpec);
			}
			public HRESULT GetKeyLen(BOOL fMin, BOOL fExchange, int32* pdwKeySize) mut
			{
				return VT.GetKeyLen(&this, fMin, fExchange, pdwKeySize);
			}
			public HRESULT EnumAlgs(int32 dwIndex, int32 algClass, int32* pdwAlgID) mut
			{
				return VT.EnumAlgs(&this, dwIndex, algClass, pdwAlgID);
			}
			public HRESULT GetAlgName(int32 algID, BSTR* pbstr) mut
			{
				return VT.GetAlgName(&this, algID, pbstr);
			}
			public HRESULT put_ReuseHardwareKeyIfUnableToGenNew(BOOL fReuseHardwareKeyIfUnableToGenNew) mut
			{
				return VT.put_ReuseHardwareKeyIfUnableToGenNew(&this, fReuseHardwareKeyIfUnableToGenNew);
			}
			public HRESULT get_ReuseHardwareKeyIfUnableToGenNew(BOOL* fReuseHardwareKeyIfUnableToGenNew) mut
			{
				return VT.get_ReuseHardwareKeyIfUnableToGenNew(&this, fReuseHardwareKeyIfUnableToGenNew);
			}
			public HRESULT put_HashAlgID(int32 hashAlgID) mut
			{
				return VT.put_HashAlgID(&this, hashAlgID);
			}
			public HRESULT get_HashAlgID(int32* hashAlgID) mut
			{
				return VT.get_HashAlgID(&this, hashAlgID);
			}
			public HRESULT put_LimitExchangeKeyToEncipherment(BOOL fLimitExchangeKeyToEncipherment) mut
			{
				return VT.put_LimitExchangeKeyToEncipherment(&this, fLimitExchangeKeyToEncipherment);
			}
			public HRESULT get_LimitExchangeKeyToEncipherment(BOOL* fLimitExchangeKeyToEncipherment) mut
			{
				return VT.get_LimitExchangeKeyToEncipherment(&this, fLimitExchangeKeyToEncipherment);
			}
			public HRESULT put_EnableSMIMECapabilities(BOOL fEnableSMIMECapabilities) mut
			{
				return VT.put_EnableSMIMECapabilities(&this, fEnableSMIMECapabilities);
			}
			public HRESULT get_EnableSMIMECapabilities(BOOL* fEnableSMIMECapabilities) mut
			{
				return VT.get_EnableSMIMECapabilities(&this, fEnableSMIMECapabilities);
			}
			[CRepr]
			public struct VTable : ICEnroll2.VTable
			{
				public new function HRESULT(ICEnroll3 *self, BSTR PKCS7) InstallPKCS7;
				public new function HRESULT(ICEnroll3 *self) Reset;
				public new function HRESULT(ICEnroll3 *self, int32* pdwKeySpec) GetSupportedKeySpec;
				public new function HRESULT(ICEnroll3 *self, BOOL fMin, BOOL fExchange, int32* pdwKeySize) GetKeyLen;
				public new function HRESULT(ICEnroll3 *self, int32 dwIndex, int32 algClass, int32* pdwAlgID) EnumAlgs;
				public new function HRESULT(ICEnroll3 *self, int32 algID, BSTR* pbstr) GetAlgName;
				public new function HRESULT(ICEnroll3 *self, BOOL fReuseHardwareKeyIfUnableToGenNew) put_ReuseHardwareKeyIfUnableToGenNew;
				public new function HRESULT(ICEnroll3 *self, BOOL* fReuseHardwareKeyIfUnableToGenNew) get_ReuseHardwareKeyIfUnableToGenNew;
				public new function HRESULT(ICEnroll3 *self, int32 hashAlgID) put_HashAlgID;
				public new function HRESULT(ICEnroll3 *self, int32* hashAlgID) get_HashAlgID;
				public new function HRESULT(ICEnroll3 *self, BOOL fLimitExchangeKeyToEncipherment) put_LimitExchangeKeyToEncipherment;
				public new function HRESULT(ICEnroll3 *self, BOOL* fLimitExchangeKeyToEncipherment) get_LimitExchangeKeyToEncipherment;
				public new function HRESULT(ICEnroll3 *self, BOOL fEnableSMIMECapabilities) put_EnableSMIMECapabilities;
				public new function HRESULT(ICEnroll3 *self, BOOL* fEnableSMIMECapabilities) get_EnableSMIMECapabilities;
			}
		}
		[CRepr]
		public struct ICEnroll4 : ICEnroll3
		{
			public const new Guid IID = .(0xc1f1188a, 0x2eb5, 0x4a80, 0x84, 0x1b, 0x7e, 0x72, 0x9a, 0x35, 0x6d, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_PrivateKeyArchiveCertificate(BSTR bstrCert) mut
			{
				return VT.put_PrivateKeyArchiveCertificate(&this, bstrCert);
			}
			public HRESULT get_PrivateKeyArchiveCertificate(BSTR* pbstrCert) mut
			{
				return VT.get_PrivateKeyArchiveCertificate(&this, pbstrCert);
			}
			public HRESULT put_ThumbPrint(BSTR bstrThumbPrint) mut
			{
				return VT.put_ThumbPrint(&this, bstrThumbPrint);
			}
			public HRESULT get_ThumbPrint(BSTR* pbstrThumbPrint) mut
			{
				return VT.get_ThumbPrint(&this, pbstrThumbPrint);
			}
			public HRESULT binaryToString(int32 Flags, BSTR strBinary, BSTR* pstrEncoded) mut
			{
				return VT.binaryToString(&this, Flags, strBinary, pstrEncoded);
			}
			public HRESULT stringToBinary(int32 Flags, BSTR strEncoded, BSTR* pstrBinary) mut
			{
				return VT.stringToBinary(&this, Flags, strEncoded, pstrBinary);
			}
			public HRESULT addExtensionToRequest(int32 Flags, BSTR strName, BSTR strValue) mut
			{
				return VT.addExtensionToRequest(&this, Flags, strName, strValue);
			}
			public HRESULT addAttributeToRequest(int32 Flags, BSTR strName, BSTR strValue) mut
			{
				return VT.addAttributeToRequest(&this, Flags, strName, strValue);
			}
			public HRESULT addNameValuePairToRequest(int32 Flags, BSTR strName, BSTR strValue) mut
			{
				return VT.addNameValuePairToRequest(&this, Flags, strName, strValue);
			}
			public HRESULT resetExtensions() mut
			{
				return VT.resetExtensions(&this);
			}
			public HRESULT resetAttributes() mut
			{
				return VT.resetAttributes(&this);
			}
			public HRESULT createRequest(CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR Usage, BSTR* pstrRequest) mut
			{
				return VT.createRequest(&this, Flags, strDNName, Usage, pstrRequest);
			}
			public HRESULT createFileRequest(CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR strUsage, BSTR strRequestFileName) mut
			{
				return VT.createFileRequest(&this, Flags, strDNName, strUsage, strRequestFileName);
			}
			public HRESULT acceptResponse(BSTR strResponse) mut
			{
				return VT.acceptResponse(&this, strResponse);
			}
			public HRESULT acceptFileResponse(BSTR strResponseFileName) mut
			{
				return VT.acceptFileResponse(&this, strResponseFileName);
			}
			public HRESULT getCertFromResponse(BSTR strResponse, BSTR* pstrCert) mut
			{
				return VT.getCertFromResponse(&this, strResponse, pstrCert);
			}
			public HRESULT getCertFromFileResponse(BSTR strResponseFileName, BSTR* pstrCert) mut
			{
				return VT.getCertFromFileResponse(&this, strResponseFileName, pstrCert);
			}
			public HRESULT createPFX(BSTR strPassword, BSTR* pstrPFX) mut
			{
				return VT.createPFX(&this, strPassword, pstrPFX);
			}
			public HRESULT createFilePFX(BSTR strPassword, BSTR strPFXFileName) mut
			{
				return VT.createFilePFX(&this, strPassword, strPFXFileName);
			}
			public HRESULT setPendingRequestInfo(int32 lRequestID, BSTR strCADNS, BSTR strCAName, BSTR strFriendlyName) mut
			{
				return VT.setPendingRequestInfo(&this, lRequestID, strCADNS, strCAName, strFriendlyName);
			}
			public HRESULT enumPendingRequest(int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, VARIANT* pvarProperty) mut
			{
				return VT.enumPendingRequest(&this, lIndex, lDesiredProperty, pvarProperty);
			}
			public HRESULT removePendingRequest(BSTR strThumbprint) mut
			{
				return VT.removePendingRequest(&this, strThumbprint);
			}
			public HRESULT GetKeyLenEx(XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, int32* pdwKeySize) mut
			{
				return VT.GetKeyLenEx(&this, lSizeSpec, lKeySpec, pdwKeySize);
			}
			public HRESULT InstallPKCS7Ex(BSTR PKCS7, int32* plCertInstalled) mut
			{
				return VT.InstallPKCS7Ex(&this, PKCS7, plCertInstalled);
			}
			public HRESULT addCertTypeToRequestEx(ADDED_CERT_TYPE lType, BSTR bstrOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) mut
			{
				return VT.addCertTypeToRequestEx(&this, lType, bstrOIDOrName, lMajorVersion, fMinorVersion, lMinorVersion);
			}
			public HRESULT getProviderType(BSTR strProvName, int32* plProvType) mut
			{
				return VT.getProviderType(&this, strProvName, plProvType);
			}
			public HRESULT put_SignerCertificate(BSTR bstrCert) mut
			{
				return VT.put_SignerCertificate(&this, bstrCert);
			}
			public HRESULT put_ClientId(int32 lClientId) mut
			{
				return VT.put_ClientId(&this, lClientId);
			}
			public HRESULT get_ClientId(int32* plClientId) mut
			{
				return VT.get_ClientId(&this, plClientId);
			}
			public HRESULT addBlobPropertyToCertificate(int32 lPropertyId, int32 lReserved, BSTR bstrProperty) mut
			{
				return VT.addBlobPropertyToCertificate(&this, lPropertyId, lReserved, bstrProperty);
			}
			public HRESULT resetBlobProperties() mut
			{
				return VT.resetBlobProperties(&this);
			}
			public HRESULT put_IncludeSubjectKeyID(BOOL fInclude) mut
			{
				return VT.put_IncludeSubjectKeyID(&this, fInclude);
			}
			public HRESULT get_IncludeSubjectKeyID(BOOL* pfInclude) mut
			{
				return VT.get_IncludeSubjectKeyID(&this, pfInclude);
			}
			[CRepr]
			public struct VTable : ICEnroll3.VTable
			{
				public new function HRESULT(ICEnroll4 *self, BSTR bstrCert) put_PrivateKeyArchiveCertificate;
				public new function HRESULT(ICEnroll4 *self, BSTR* pbstrCert) get_PrivateKeyArchiveCertificate;
				public new function HRESULT(ICEnroll4 *self, BSTR bstrThumbPrint) put_ThumbPrint;
				public new function HRESULT(ICEnroll4 *self, BSTR* pbstrThumbPrint) get_ThumbPrint;
				public new function HRESULT(ICEnroll4 *self, int32 Flags, BSTR strBinary, BSTR* pstrEncoded) binaryToString;
				public new function HRESULT(ICEnroll4 *self, int32 Flags, BSTR strEncoded, BSTR* pstrBinary) stringToBinary;
				public new function HRESULT(ICEnroll4 *self, int32 Flags, BSTR strName, BSTR strValue) addExtensionToRequest;
				public new function HRESULT(ICEnroll4 *self, int32 Flags, BSTR strName, BSTR strValue) addAttributeToRequest;
				public new function HRESULT(ICEnroll4 *self, int32 Flags, BSTR strName, BSTR strValue) addNameValuePairToRequest;
				public new function HRESULT(ICEnroll4 *self) resetExtensions;
				public new function HRESULT(ICEnroll4 *self) resetAttributes;
				public new function HRESULT(ICEnroll4 *self, CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR Usage, BSTR* pstrRequest) createRequest;
				public new function HRESULT(ICEnroll4 *self, CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR strUsage, BSTR strRequestFileName) createFileRequest;
				public new function HRESULT(ICEnroll4 *self, BSTR strResponse) acceptResponse;
				public new function HRESULT(ICEnroll4 *self, BSTR strResponseFileName) acceptFileResponse;
				public new function HRESULT(ICEnroll4 *self, BSTR strResponse, BSTR* pstrCert) getCertFromResponse;
				public new function HRESULT(ICEnroll4 *self, BSTR strResponseFileName, BSTR* pstrCert) getCertFromFileResponse;
				public new function HRESULT(ICEnroll4 *self, BSTR strPassword, BSTR* pstrPFX) createPFX;
				public new function HRESULT(ICEnroll4 *self, BSTR strPassword, BSTR strPFXFileName) createFilePFX;
				public new function HRESULT(ICEnroll4 *self, int32 lRequestID, BSTR strCADNS, BSTR strCAName, BSTR strFriendlyName) setPendingRequestInfo;
				public new function HRESULT(ICEnroll4 *self, int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, VARIANT* pvarProperty) enumPendingRequest;
				public new function HRESULT(ICEnroll4 *self, BSTR strThumbprint) removePendingRequest;
				public new function HRESULT(ICEnroll4 *self, XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, int32* pdwKeySize) GetKeyLenEx;
				public new function HRESULT(ICEnroll4 *self, BSTR PKCS7, int32* plCertInstalled) InstallPKCS7Ex;
				public new function HRESULT(ICEnroll4 *self, ADDED_CERT_TYPE lType, BSTR bstrOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) addCertTypeToRequestEx;
				public new function HRESULT(ICEnroll4 *self, BSTR strProvName, int32* plProvType) getProviderType;
				public new function HRESULT(ICEnroll4 *self, BSTR bstrCert) put_SignerCertificate;
				public new function HRESULT(ICEnroll4 *self, int32 lClientId) put_ClientId;
				public new function HRESULT(ICEnroll4 *self, int32* plClientId) get_ClientId;
				public new function HRESULT(ICEnroll4 *self, int32 lPropertyId, int32 lReserved, BSTR bstrProperty) addBlobPropertyToCertificate;
				public new function HRESULT(ICEnroll4 *self) resetBlobProperties;
				public new function HRESULT(ICEnroll4 *self, BOOL fInclude) put_IncludeSubjectKeyID;
				public new function HRESULT(ICEnroll4 *self, BOOL* pfInclude) get_IncludeSubjectKeyID;
			}
		}
		[CRepr]
		public struct IEnroll : IUnknown
		{
			public const new Guid IID = .(0xacaa7838, 0x4585, 0x11d1, 0xab, 0x57, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT createFilePKCS10WStr(PWSTR DNName, PWSTR Usage, PWSTR wszPKCS10FileName) mut
			{
				return VT.createFilePKCS10WStr(&this, DNName, Usage, wszPKCS10FileName);
			}
			public HRESULT acceptFilePKCS7WStr(PWSTR wszPKCS7FileName) mut
			{
				return VT.acceptFilePKCS7WStr(&this, wszPKCS7FileName);
			}
			public HRESULT createPKCS10WStr(PWSTR DNName, PWSTR Usage, CRYPTOAPI_BLOB* pPkcs10Blob) mut
			{
				return VT.createPKCS10WStr(&this, DNName, Usage, pPkcs10Blob);
			}
			public HRESULT acceptPKCS7Blob(CRYPTOAPI_BLOB* pBlobPKCS7) mut
			{
				return VT.acceptPKCS7Blob(&this, pBlobPKCS7);
			}
			public CERT_CONTEXT* getCertContextFromPKCS7(CRYPTOAPI_BLOB* pBlobPKCS7) mut
			{
				return VT.getCertContextFromPKCS7(&this, pBlobPKCS7);
			}
			public void* getMyStore() mut
			{
				return VT.getMyStore(&this);
			}
			public void* getCAStore() mut
			{
				return VT.getCAStore(&this);
			}
			public void* getROOTHStore() mut
			{
				return VT.getROOTHStore(&this);
			}
			public HRESULT enumProvidersWStr(int32 dwIndex, int32 dwFlags, PWSTR* pbstrProvName) mut
			{
				return VT.enumProvidersWStr(&this, dwIndex, dwFlags, pbstrProvName);
			}
			public HRESULT enumContainersWStr(int32 dwIndex, PWSTR* pbstr) mut
			{
				return VT.enumContainersWStr(&this, dwIndex, pbstr);
			}
			public HRESULT freeRequestInfoBlob(CRYPTOAPI_BLOB pkcs7OrPkcs10) mut
			{
				return VT.freeRequestInfoBlob(&this, pkcs7OrPkcs10);
			}
			public HRESULT get_MyStoreNameWStr(PWSTR* szwName) mut
			{
				return VT.get_MyStoreNameWStr(&this, szwName);
			}
			public HRESULT put_MyStoreNameWStr(PWSTR szwName) mut
			{
				return VT.put_MyStoreNameWStr(&this, szwName);
			}
			public HRESULT get_MyStoreTypeWStr(PWSTR* szwType) mut
			{
				return VT.get_MyStoreTypeWStr(&this, szwType);
			}
			public HRESULT put_MyStoreTypeWStr(PWSTR szwType) mut
			{
				return VT.put_MyStoreTypeWStr(&this, szwType);
			}
			public HRESULT get_MyStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_MyStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_MyStoreFlags(int32 dwFlags) mut
			{
				return VT.put_MyStoreFlags(&this, dwFlags);
			}
			public HRESULT get_CAStoreNameWStr(PWSTR* szwName) mut
			{
				return VT.get_CAStoreNameWStr(&this, szwName);
			}
			public HRESULT put_CAStoreNameWStr(PWSTR szwName) mut
			{
				return VT.put_CAStoreNameWStr(&this, szwName);
			}
			public HRESULT get_CAStoreTypeWStr(PWSTR* szwType) mut
			{
				return VT.get_CAStoreTypeWStr(&this, szwType);
			}
			public HRESULT put_CAStoreTypeWStr(PWSTR szwType) mut
			{
				return VT.put_CAStoreTypeWStr(&this, szwType);
			}
			public HRESULT get_CAStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_CAStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_CAStoreFlags(int32 dwFlags) mut
			{
				return VT.put_CAStoreFlags(&this, dwFlags);
			}
			public HRESULT get_RootStoreNameWStr(PWSTR* szwName) mut
			{
				return VT.get_RootStoreNameWStr(&this, szwName);
			}
			public HRESULT put_RootStoreNameWStr(PWSTR szwName) mut
			{
				return VT.put_RootStoreNameWStr(&this, szwName);
			}
			public HRESULT get_RootStoreTypeWStr(PWSTR* szwType) mut
			{
				return VT.get_RootStoreTypeWStr(&this, szwType);
			}
			public HRESULT put_RootStoreTypeWStr(PWSTR szwType) mut
			{
				return VT.put_RootStoreTypeWStr(&this, szwType);
			}
			public HRESULT get_RootStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_RootStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_RootStoreFlags(int32 dwFlags) mut
			{
				return VT.put_RootStoreFlags(&this, dwFlags);
			}
			public HRESULT get_RequestStoreNameWStr(PWSTR* szwName) mut
			{
				return VT.get_RequestStoreNameWStr(&this, szwName);
			}
			public HRESULT put_RequestStoreNameWStr(PWSTR szwName) mut
			{
				return VT.put_RequestStoreNameWStr(&this, szwName);
			}
			public HRESULT get_RequestStoreTypeWStr(PWSTR* szwType) mut
			{
				return VT.get_RequestStoreTypeWStr(&this, szwType);
			}
			public HRESULT put_RequestStoreTypeWStr(PWSTR szwType) mut
			{
				return VT.put_RequestStoreTypeWStr(&this, szwType);
			}
			public HRESULT get_RequestStoreFlags(int32* pdwFlags) mut
			{
				return VT.get_RequestStoreFlags(&this, pdwFlags);
			}
			public HRESULT put_RequestStoreFlags(int32 dwFlags) mut
			{
				return VT.put_RequestStoreFlags(&this, dwFlags);
			}
			public HRESULT get_ContainerNameWStr(PWSTR* szwContainer) mut
			{
				return VT.get_ContainerNameWStr(&this, szwContainer);
			}
			public HRESULT put_ContainerNameWStr(PWSTR szwContainer) mut
			{
				return VT.put_ContainerNameWStr(&this, szwContainer);
			}
			public HRESULT get_ProviderNameWStr(PWSTR* szwProvider) mut
			{
				return VT.get_ProviderNameWStr(&this, szwProvider);
			}
			public HRESULT put_ProviderNameWStr(PWSTR szwProvider) mut
			{
				return VT.put_ProviderNameWStr(&this, szwProvider);
			}
			public HRESULT get_ProviderType(int32* pdwType) mut
			{
				return VT.get_ProviderType(&this, pdwType);
			}
			public HRESULT put_ProviderType(int32 dwType) mut
			{
				return VT.put_ProviderType(&this, dwType);
			}
			public HRESULT get_KeySpec(int32* pdw) mut
			{
				return VT.get_KeySpec(&this, pdw);
			}
			public HRESULT put_KeySpec(int32 dw) mut
			{
				return VT.put_KeySpec(&this, dw);
			}
			public HRESULT get_ProviderFlags(int32* pdwFlags) mut
			{
				return VT.get_ProviderFlags(&this, pdwFlags);
			}
			public HRESULT put_ProviderFlags(int32 dwFlags) mut
			{
				return VT.put_ProviderFlags(&this, dwFlags);
			}
			public HRESULT get_UseExistingKeySet(BOOL* fUseExistingKeys) mut
			{
				return VT.get_UseExistingKeySet(&this, fUseExistingKeys);
			}
			public HRESULT put_UseExistingKeySet(BOOL fUseExistingKeys) mut
			{
				return VT.put_UseExistingKeySet(&this, fUseExistingKeys);
			}
			public HRESULT get_GenKeyFlags(int32* pdwFlags) mut
			{
				return VT.get_GenKeyFlags(&this, pdwFlags);
			}
			public HRESULT put_GenKeyFlags(int32 dwFlags) mut
			{
				return VT.put_GenKeyFlags(&this, dwFlags);
			}
			public HRESULT get_DeleteRequestCert(BOOL* fDelete) mut
			{
				return VT.get_DeleteRequestCert(&this, fDelete);
			}
			public HRESULT put_DeleteRequestCert(BOOL fDelete) mut
			{
				return VT.put_DeleteRequestCert(&this, fDelete);
			}
			public HRESULT get_WriteCertToUserDS(BOOL* fBool) mut
			{
				return VT.get_WriteCertToUserDS(&this, fBool);
			}
			public HRESULT put_WriteCertToUserDS(BOOL fBool) mut
			{
				return VT.put_WriteCertToUserDS(&this, fBool);
			}
			public HRESULT get_EnableT61DNEncoding(BOOL* fBool) mut
			{
				return VT.get_EnableT61DNEncoding(&this, fBool);
			}
			public HRESULT put_EnableT61DNEncoding(BOOL fBool) mut
			{
				return VT.put_EnableT61DNEncoding(&this, fBool);
			}
			public HRESULT get_WriteCertToCSP(BOOL* fBool) mut
			{
				return VT.get_WriteCertToCSP(&this, fBool);
			}
			public HRESULT put_WriteCertToCSP(BOOL fBool) mut
			{
				return VT.put_WriteCertToCSP(&this, fBool);
			}
			public HRESULT get_SPCFileNameWStr(PWSTR* szw) mut
			{
				return VT.get_SPCFileNameWStr(&this, szw);
			}
			public HRESULT put_SPCFileNameWStr(PWSTR szw) mut
			{
				return VT.put_SPCFileNameWStr(&this, szw);
			}
			public HRESULT get_PVKFileNameWStr(PWSTR* szw) mut
			{
				return VT.get_PVKFileNameWStr(&this, szw);
			}
			public HRESULT put_PVKFileNameWStr(PWSTR szw) mut
			{
				return VT.put_PVKFileNameWStr(&this, szw);
			}
			public HRESULT get_HashAlgorithmWStr(PWSTR* szw) mut
			{
				return VT.get_HashAlgorithmWStr(&this, szw);
			}
			public HRESULT put_HashAlgorithmWStr(PWSTR szw) mut
			{
				return VT.put_HashAlgorithmWStr(&this, szw);
			}
			public HRESULT get_RenewalCertificate(CERT_CONTEXT** ppCertContext) mut
			{
				return VT.get_RenewalCertificate(&this, ppCertContext);
			}
			public HRESULT put_RenewalCertificate(CERT_CONTEXT* pCertContext) mut
			{
				return VT.put_RenewalCertificate(&this, pCertContext);
			}
			public HRESULT AddCertTypeToRequestWStr(PWSTR szw) mut
			{
				return VT.AddCertTypeToRequestWStr(&this, szw);
			}
			public HRESULT AddNameValuePairToSignatureWStr(PWSTR Name, PWSTR Value) mut
			{
				return VT.AddNameValuePairToSignatureWStr(&this, Name, Value);
			}
			public HRESULT AddExtensionsToRequest(CERT_EXTENSIONS* pCertExtensions) mut
			{
				return VT.AddExtensionsToRequest(&this, pCertExtensions);
			}
			public HRESULT AddAuthenticatedAttributesToPKCS7Request(CRYPT_ATTRIBUTES* pAttributes) mut
			{
				return VT.AddAuthenticatedAttributesToPKCS7Request(&this, pAttributes);
			}
			public HRESULT CreatePKCS7RequestFromRequest(CRYPTOAPI_BLOB* pRequest, CERT_CONTEXT* pSigningCertContext, CRYPTOAPI_BLOB* pPkcs7Blob) mut
			{
				return VT.CreatePKCS7RequestFromRequest(&this, pRequest, pSigningCertContext, pPkcs7Blob);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnroll *self, PWSTR DNName, PWSTR Usage, PWSTR wszPKCS10FileName) createFilePKCS10WStr;
				public new function HRESULT(IEnroll *self, PWSTR wszPKCS7FileName) acceptFilePKCS7WStr;
				public new function HRESULT(IEnroll *self, PWSTR DNName, PWSTR Usage, CRYPTOAPI_BLOB* pPkcs10Blob) createPKCS10WStr;
				public new function HRESULT(IEnroll *self, CRYPTOAPI_BLOB* pBlobPKCS7) acceptPKCS7Blob;
				public new function CERT_CONTEXT*(IEnroll *self, CRYPTOAPI_BLOB* pBlobPKCS7) getCertContextFromPKCS7;
				public new function void*(IEnroll *self) getMyStore;
				public new function void*(IEnroll *self) getCAStore;
				public new function void*(IEnroll *self) getROOTHStore;
				public new function HRESULT(IEnroll *self, int32 dwIndex, int32 dwFlags, PWSTR* pbstrProvName) enumProvidersWStr;
				public new function HRESULT(IEnroll *self, int32 dwIndex, PWSTR* pbstr) enumContainersWStr;
				public new function HRESULT(IEnroll *self, CRYPTOAPI_BLOB pkcs7OrPkcs10) freeRequestInfoBlob;
				public new function HRESULT(IEnroll *self, PWSTR* szwName) get_MyStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwName) put_MyStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szwType) get_MyStoreTypeWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwType) put_MyStoreTypeWStr;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_MyStoreFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_MyStoreFlags;
				public new function HRESULT(IEnroll *self, PWSTR* szwName) get_CAStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwName) put_CAStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szwType) get_CAStoreTypeWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwType) put_CAStoreTypeWStr;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_CAStoreFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_CAStoreFlags;
				public new function HRESULT(IEnroll *self, PWSTR* szwName) get_RootStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwName) put_RootStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szwType) get_RootStoreTypeWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwType) put_RootStoreTypeWStr;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_RootStoreFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_RootStoreFlags;
				public new function HRESULT(IEnroll *self, PWSTR* szwName) get_RequestStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwName) put_RequestStoreNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szwType) get_RequestStoreTypeWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwType) put_RequestStoreTypeWStr;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_RequestStoreFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_RequestStoreFlags;
				public new function HRESULT(IEnroll *self, PWSTR* szwContainer) get_ContainerNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwContainer) put_ContainerNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szwProvider) get_ProviderNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szwProvider) put_ProviderNameWStr;
				public new function HRESULT(IEnroll *self, int32* pdwType) get_ProviderType;
				public new function HRESULT(IEnroll *self, int32 dwType) put_ProviderType;
				public new function HRESULT(IEnroll *self, int32* pdw) get_KeySpec;
				public new function HRESULT(IEnroll *self, int32 dw) put_KeySpec;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_ProviderFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_ProviderFlags;
				public new function HRESULT(IEnroll *self, BOOL* fUseExistingKeys) get_UseExistingKeySet;
				public new function HRESULT(IEnroll *self, BOOL fUseExistingKeys) put_UseExistingKeySet;
				public new function HRESULT(IEnroll *self, int32* pdwFlags) get_GenKeyFlags;
				public new function HRESULT(IEnroll *self, int32 dwFlags) put_GenKeyFlags;
				public new function HRESULT(IEnroll *self, BOOL* fDelete) get_DeleteRequestCert;
				public new function HRESULT(IEnroll *self, BOOL fDelete) put_DeleteRequestCert;
				public new function HRESULT(IEnroll *self, BOOL* fBool) get_WriteCertToUserDS;
				public new function HRESULT(IEnroll *self, BOOL fBool) put_WriteCertToUserDS;
				public new function HRESULT(IEnroll *self, BOOL* fBool) get_EnableT61DNEncoding;
				public new function HRESULT(IEnroll *self, BOOL fBool) put_EnableT61DNEncoding;
				public new function HRESULT(IEnroll *self, BOOL* fBool) get_WriteCertToCSP;
				public new function HRESULT(IEnroll *self, BOOL fBool) put_WriteCertToCSP;
				public new function HRESULT(IEnroll *self, PWSTR* szw) get_SPCFileNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szw) put_SPCFileNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szw) get_PVKFileNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR szw) put_PVKFileNameWStr;
				public new function HRESULT(IEnroll *self, PWSTR* szw) get_HashAlgorithmWStr;
				public new function HRESULT(IEnroll *self, PWSTR szw) put_HashAlgorithmWStr;
				public new function HRESULT(IEnroll *self, CERT_CONTEXT** ppCertContext) get_RenewalCertificate;
				public new function HRESULT(IEnroll *self, CERT_CONTEXT* pCertContext) put_RenewalCertificate;
				public new function HRESULT(IEnroll *self, PWSTR szw) AddCertTypeToRequestWStr;
				public new function HRESULT(IEnroll *self, PWSTR Name, PWSTR Value) AddNameValuePairToSignatureWStr;
				public new function HRESULT(IEnroll *self, CERT_EXTENSIONS* pCertExtensions) AddExtensionsToRequest;
				public new function HRESULT(IEnroll *self, CRYPT_ATTRIBUTES* pAttributes) AddAuthenticatedAttributesToPKCS7Request;
				public new function HRESULT(IEnroll *self, CRYPTOAPI_BLOB* pRequest, CERT_CONTEXT* pSigningCertContext, CRYPTOAPI_BLOB* pPkcs7Blob) CreatePKCS7RequestFromRequest;
			}
		}
		[CRepr]
		public struct IEnroll2 : IEnroll
		{
			public const new Guid IID = .(0xc080e199, 0xb7df, 0x11d2, 0xa4, 0x21, 0x00, 0xc0, 0x4f, 0x79, 0xfe, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallPKCS7Blob(CRYPTOAPI_BLOB* pBlobPKCS7) mut
			{
				return VT.InstallPKCS7Blob(&this, pBlobPKCS7);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT GetSupportedKeySpec(int32* pdwKeySpec) mut
			{
				return VT.GetSupportedKeySpec(&this, pdwKeySpec);
			}
			public HRESULT GetKeyLen(BOOL fMin, BOOL fExchange, int32* pdwKeySize) mut
			{
				return VT.GetKeyLen(&this, fMin, fExchange, pdwKeySize);
			}
			public HRESULT EnumAlgs(int32 dwIndex, int32 algClass, int32* pdwAlgID) mut
			{
				return VT.EnumAlgs(&this, dwIndex, algClass, pdwAlgID);
			}
			public HRESULT GetAlgNameWStr(int32 algID, PWSTR* ppwsz) mut
			{
				return VT.GetAlgNameWStr(&this, algID, ppwsz);
			}
			public HRESULT put_ReuseHardwareKeyIfUnableToGenNew(BOOL fReuseHardwareKeyIfUnableToGenNew) mut
			{
				return VT.put_ReuseHardwareKeyIfUnableToGenNew(&this, fReuseHardwareKeyIfUnableToGenNew);
			}
			public HRESULT get_ReuseHardwareKeyIfUnableToGenNew(BOOL* fReuseHardwareKeyIfUnableToGenNew) mut
			{
				return VT.get_ReuseHardwareKeyIfUnableToGenNew(&this, fReuseHardwareKeyIfUnableToGenNew);
			}
			public HRESULT put_HashAlgID(int32 hashAlgID) mut
			{
				return VT.put_HashAlgID(&this, hashAlgID);
			}
			public HRESULT get_HashAlgID(int32* hashAlgID) mut
			{
				return VT.get_HashAlgID(&this, hashAlgID);
			}
			public HRESULT SetHStoreMy(void* hStore) mut
			{
				return VT.SetHStoreMy(&this, hStore);
			}
			public HRESULT SetHStoreCA(void* hStore) mut
			{
				return VT.SetHStoreCA(&this, hStore);
			}
			public HRESULT SetHStoreROOT(void* hStore) mut
			{
				return VT.SetHStoreROOT(&this, hStore);
			}
			public HRESULT SetHStoreRequest(void* hStore) mut
			{
				return VT.SetHStoreRequest(&this, hStore);
			}
			public HRESULT put_LimitExchangeKeyToEncipherment(BOOL fLimitExchangeKeyToEncipherment) mut
			{
				return VT.put_LimitExchangeKeyToEncipherment(&this, fLimitExchangeKeyToEncipherment);
			}
			public HRESULT get_LimitExchangeKeyToEncipherment(BOOL* fLimitExchangeKeyToEncipherment) mut
			{
				return VT.get_LimitExchangeKeyToEncipherment(&this, fLimitExchangeKeyToEncipherment);
			}
			public HRESULT put_EnableSMIMECapabilities(BOOL fEnableSMIMECapabilities) mut
			{
				return VT.put_EnableSMIMECapabilities(&this, fEnableSMIMECapabilities);
			}
			public HRESULT get_EnableSMIMECapabilities(BOOL* fEnableSMIMECapabilities) mut
			{
				return VT.get_EnableSMIMECapabilities(&this, fEnableSMIMECapabilities);
			}
			[CRepr]
			public struct VTable : IEnroll.VTable
			{
				public new function HRESULT(IEnroll2 *self, CRYPTOAPI_BLOB* pBlobPKCS7) InstallPKCS7Blob;
				public new function HRESULT(IEnroll2 *self) Reset;
				public new function HRESULT(IEnroll2 *self, int32* pdwKeySpec) GetSupportedKeySpec;
				public new function HRESULT(IEnroll2 *self, BOOL fMin, BOOL fExchange, int32* pdwKeySize) GetKeyLen;
				public new function HRESULT(IEnroll2 *self, int32 dwIndex, int32 algClass, int32* pdwAlgID) EnumAlgs;
				public new function HRESULT(IEnroll2 *self, int32 algID, PWSTR* ppwsz) GetAlgNameWStr;
				public new function HRESULT(IEnroll2 *self, BOOL fReuseHardwareKeyIfUnableToGenNew) put_ReuseHardwareKeyIfUnableToGenNew;
				public new function HRESULT(IEnroll2 *self, BOOL* fReuseHardwareKeyIfUnableToGenNew) get_ReuseHardwareKeyIfUnableToGenNew;
				public new function HRESULT(IEnroll2 *self, int32 hashAlgID) put_HashAlgID;
				public new function HRESULT(IEnroll2 *self, int32* hashAlgID) get_HashAlgID;
				public new function HRESULT(IEnroll2 *self, void* hStore) SetHStoreMy;
				public new function HRESULT(IEnroll2 *self, void* hStore) SetHStoreCA;
				public new function HRESULT(IEnroll2 *self, void* hStore) SetHStoreROOT;
				public new function HRESULT(IEnroll2 *self, void* hStore) SetHStoreRequest;
				public new function HRESULT(IEnroll2 *self, BOOL fLimitExchangeKeyToEncipherment) put_LimitExchangeKeyToEncipherment;
				public new function HRESULT(IEnroll2 *self, BOOL* fLimitExchangeKeyToEncipherment) get_LimitExchangeKeyToEncipherment;
				public new function HRESULT(IEnroll2 *self, BOOL fEnableSMIMECapabilities) put_EnableSMIMECapabilities;
				public new function HRESULT(IEnroll2 *self, BOOL* fEnableSMIMECapabilities) get_EnableSMIMECapabilities;
			}
		}
		[CRepr]
		public struct IEnroll4 : IEnroll2
		{
			public const new Guid IID = .(0xf8053fe5, 0x78f4, 0x448f, 0xa0, 0xdb, 0x41, 0xd6, 0x1b, 0x73, 0x44, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_ThumbPrintWStr(CRYPTOAPI_BLOB thumbPrintBlob) mut
			{
				return VT.put_ThumbPrintWStr(&this, thumbPrintBlob);
			}
			public HRESULT get_ThumbPrintWStr(CRYPTOAPI_BLOB* thumbPrintBlob) mut
			{
				return VT.get_ThumbPrintWStr(&this, thumbPrintBlob);
			}
			public HRESULT SetPrivateKeyArchiveCertificate(CERT_CONTEXT* pPrivateKeyArchiveCert) mut
			{
				return VT.SetPrivateKeyArchiveCertificate(&this, pPrivateKeyArchiveCert);
			}
			public CERT_CONTEXT* GetPrivateKeyArchiveCertificate() mut
			{
				return VT.GetPrivateKeyArchiveCertificate(&this);
			}
			public HRESULT binaryBlobToString(int32 Flags, CRYPTOAPI_BLOB* pblobBinary, PWSTR* ppwszString) mut
			{
				return VT.binaryBlobToString(&this, Flags, pblobBinary, ppwszString);
			}
			public HRESULT stringToBinaryBlob(int32 Flags, PWSTR pwszString, CRYPTOAPI_BLOB* pblobBinary, int32* pdwSkip, int32* pdwFlags) mut
			{
				return VT.stringToBinaryBlob(&this, Flags, pwszString, pblobBinary, pdwSkip, pdwFlags);
			}
			public HRESULT addExtensionToRequestWStr(int32 Flags, PWSTR pwszName, CRYPTOAPI_BLOB* pblobValue) mut
			{
				return VT.addExtensionToRequestWStr(&this, Flags, pwszName, pblobValue);
			}
			public HRESULT addAttributeToRequestWStr(int32 Flags, PWSTR pwszName, CRYPTOAPI_BLOB* pblobValue) mut
			{
				return VT.addAttributeToRequestWStr(&this, Flags, pwszName, pblobValue);
			}
			public HRESULT addNameValuePairToRequestWStr(int32 Flags, PWSTR pwszName, PWSTR pwszValue) mut
			{
				return VT.addNameValuePairToRequestWStr(&this, Flags, pwszName, pwszValue);
			}
			public HRESULT resetExtensions() mut
			{
				return VT.resetExtensions(&this);
			}
			public HRESULT resetAttributes() mut
			{
				return VT.resetAttributes(&this);
			}
			public HRESULT createRequestWStr(CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, CRYPTOAPI_BLOB* pblobRequest) mut
			{
				return VT.createRequestWStr(&this, Flags, pwszDNName, pwszUsage, pblobRequest);
			}
			public HRESULT createFileRequestWStr(CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, PWSTR pwszRequestFileName) mut
			{
				return VT.createFileRequestWStr(&this, Flags, pwszDNName, pwszUsage, pwszRequestFileName);
			}
			public HRESULT acceptResponseBlob(CRYPTOAPI_BLOB* pblobResponse) mut
			{
				return VT.acceptResponseBlob(&this, pblobResponse);
			}
			public HRESULT acceptFileResponseWStr(PWSTR pwszResponseFileName) mut
			{
				return VT.acceptFileResponseWStr(&this, pwszResponseFileName);
			}
			public HRESULT getCertContextFromResponseBlob(CRYPTOAPI_BLOB* pblobResponse, CERT_CONTEXT** ppCertContext) mut
			{
				return VT.getCertContextFromResponseBlob(&this, pblobResponse, ppCertContext);
			}
			public HRESULT getCertContextFromFileResponseWStr(PWSTR pwszResponseFileName, CERT_CONTEXT** ppCertContext) mut
			{
				return VT.getCertContextFromFileResponseWStr(&this, pwszResponseFileName, ppCertContext);
			}
			public HRESULT createPFXWStr(PWSTR pwszPassword, CRYPTOAPI_BLOB* pblobPFX) mut
			{
				return VT.createPFXWStr(&this, pwszPassword, pblobPFX);
			}
			public HRESULT createFilePFXWStr(PWSTR pwszPassword, PWSTR pwszPFXFileName) mut
			{
				return VT.createFilePFXWStr(&this, pwszPassword, pwszPFXFileName);
			}
			public HRESULT setPendingRequestInfoWStr(int32 lRequestID, PWSTR pwszCADNS, PWSTR pwszCAName, PWSTR pwszFriendlyName) mut
			{
				return VT.setPendingRequestInfoWStr(&this, lRequestID, pwszCADNS, pwszCAName, pwszFriendlyName);
			}
			public HRESULT enumPendingRequestWStr(int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, void* ppProperty) mut
			{
				return VT.enumPendingRequestWStr(&this, lIndex, lDesiredProperty, ppProperty);
			}
			public HRESULT removePendingRequestWStr(CRYPTOAPI_BLOB thumbPrintBlob) mut
			{
				return VT.removePendingRequestWStr(&this, thumbPrintBlob);
			}
			public HRESULT GetKeyLenEx(XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, int32* pdwKeySize) mut
			{
				return VT.GetKeyLenEx(&this, lSizeSpec, lKeySpec, pdwKeySize);
			}
			public HRESULT InstallPKCS7BlobEx(CRYPTOAPI_BLOB* pBlobPKCS7, int32* plCertInstalled) mut
			{
				return VT.InstallPKCS7BlobEx(&this, pBlobPKCS7, plCertInstalled);
			}
			public HRESULT AddCertTypeToRequestWStrEx(ADDED_CERT_TYPE lType, PWSTR pwszOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) mut
			{
				return VT.AddCertTypeToRequestWStrEx(&this, lType, pwszOIDOrName, lMajorVersion, fMinorVersion, lMinorVersion);
			}
			public HRESULT getProviderTypeWStr(PWSTR pwszProvName, int32* plProvType) mut
			{
				return VT.getProviderTypeWStr(&this, pwszProvName, plProvType);
			}
			public HRESULT addBlobPropertyToCertificateWStr(int32 lPropertyId, int32 lReserved, CRYPTOAPI_BLOB* pBlobProperty) mut
			{
				return VT.addBlobPropertyToCertificateWStr(&this, lPropertyId, lReserved, pBlobProperty);
			}
			public HRESULT SetSignerCertificate(CERT_CONTEXT* pSignerCert) mut
			{
				return VT.SetSignerCertificate(&this, pSignerCert);
			}
			public HRESULT put_ClientId(int32 lClientId) mut
			{
				return VT.put_ClientId(&this, lClientId);
			}
			public HRESULT get_ClientId(int32* plClientId) mut
			{
				return VT.get_ClientId(&this, plClientId);
			}
			public HRESULT put_IncludeSubjectKeyID(BOOL fInclude) mut
			{
				return VT.put_IncludeSubjectKeyID(&this, fInclude);
			}
			public HRESULT get_IncludeSubjectKeyID(BOOL* pfInclude) mut
			{
				return VT.get_IncludeSubjectKeyID(&this, pfInclude);
			}
			[CRepr]
			public struct VTable : IEnroll2.VTable
			{
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB thumbPrintBlob) put_ThumbPrintWStr;
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB* thumbPrintBlob) get_ThumbPrintWStr;
				public new function HRESULT(IEnroll4 *self, CERT_CONTEXT* pPrivateKeyArchiveCert) SetPrivateKeyArchiveCertificate;
				public new function CERT_CONTEXT*(IEnroll4 *self) GetPrivateKeyArchiveCertificate;
				public new function HRESULT(IEnroll4 *self, int32 Flags, CRYPTOAPI_BLOB* pblobBinary, PWSTR* ppwszString) binaryBlobToString;
				public new function HRESULT(IEnroll4 *self, int32 Flags, PWSTR pwszString, CRYPTOAPI_BLOB* pblobBinary, int32* pdwSkip, int32* pdwFlags) stringToBinaryBlob;
				public new function HRESULT(IEnroll4 *self, int32 Flags, PWSTR pwszName, CRYPTOAPI_BLOB* pblobValue) addExtensionToRequestWStr;
				public new function HRESULT(IEnroll4 *self, int32 Flags, PWSTR pwszName, CRYPTOAPI_BLOB* pblobValue) addAttributeToRequestWStr;
				public new function HRESULT(IEnroll4 *self, int32 Flags, PWSTR pwszName, PWSTR pwszValue) addNameValuePairToRequestWStr;
				public new function HRESULT(IEnroll4 *self) resetExtensions;
				public new function HRESULT(IEnroll4 *self) resetAttributes;
				public new function HRESULT(IEnroll4 *self, CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, CRYPTOAPI_BLOB* pblobRequest) createRequestWStr;
				public new function HRESULT(IEnroll4 *self, CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, PWSTR pwszRequestFileName) createFileRequestWStr;
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB* pblobResponse) acceptResponseBlob;
				public new function HRESULT(IEnroll4 *self, PWSTR pwszResponseFileName) acceptFileResponseWStr;
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB* pblobResponse, CERT_CONTEXT** ppCertContext) getCertContextFromResponseBlob;
				public new function HRESULT(IEnroll4 *self, PWSTR pwszResponseFileName, CERT_CONTEXT** ppCertContext) getCertContextFromFileResponseWStr;
				public new function HRESULT(IEnroll4 *self, PWSTR pwszPassword, CRYPTOAPI_BLOB* pblobPFX) createPFXWStr;
				public new function HRESULT(IEnroll4 *self, PWSTR pwszPassword, PWSTR pwszPFXFileName) createFilePFXWStr;
				public new function HRESULT(IEnroll4 *self, int32 lRequestID, PWSTR pwszCADNS, PWSTR pwszCAName, PWSTR pwszFriendlyName) setPendingRequestInfoWStr;
				public new function HRESULT(IEnroll4 *self, int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, void* ppProperty) enumPendingRequestWStr;
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB thumbPrintBlob) removePendingRequestWStr;
				public new function HRESULT(IEnroll4 *self, XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, int32* pdwKeySize) GetKeyLenEx;
				public new function HRESULT(IEnroll4 *self, CRYPTOAPI_BLOB* pBlobPKCS7, int32* plCertInstalled) InstallPKCS7BlobEx;
				public new function HRESULT(IEnroll4 *self, ADDED_CERT_TYPE lType, PWSTR pwszOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) AddCertTypeToRequestWStrEx;
				public new function HRESULT(IEnroll4 *self, PWSTR pwszProvName, int32* plProvType) getProviderTypeWStr;
				public new function HRESULT(IEnroll4 *self, int32 lPropertyId, int32 lReserved, CRYPTOAPI_BLOB* pBlobProperty) addBlobPropertyToCertificateWStr;
				public new function HRESULT(IEnroll4 *self, CERT_CONTEXT* pSignerCert) SetSignerCertificate;
				public new function HRESULT(IEnroll4 *self, int32 lClientId) put_ClientId;
				public new function HRESULT(IEnroll4 *self, int32* plClientId) get_ClientId;
				public new function HRESULT(IEnroll4 *self, BOOL fInclude) put_IncludeSubjectKeyID;
				public new function HRESULT(IEnroll4 *self, BOOL* pfInclude) get_IncludeSubjectKeyID;
			}
		}
		[CRepr]
		public struct ICertRequestD : IUnknown
		{
			public const new Guid IID = .(0xd99e6e70, 0xfc88, 0x11d0, 0xb4, 0x98, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Request(uint32 dwFlags, PWSTR pwszAuthority, uint32* pdwRequestId, uint32* pdwDisposition, PWSTR pwszAttributes, CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbCertChain, CERTTRANSBLOB* pctbEncodedCert, CERTTRANSBLOB* pctbDispositionMessage) mut
			{
				return VT.Request(&this, dwFlags, pwszAuthority, pdwRequestId, pdwDisposition, pwszAttributes, pctbRequest, pctbCertChain, pctbEncodedCert, pctbDispositionMessage);
			}
			public HRESULT GetCACert(uint32 fchain, PWSTR pwszAuthority, CERTTRANSBLOB* pctbOut) mut
			{
				return VT.GetCACert(&this, fchain, pwszAuthority, pctbOut);
			}
			public HRESULT Ping(PWSTR pwszAuthority) mut
			{
				return VT.Ping(&this, pwszAuthority);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICertRequestD *self, uint32 dwFlags, PWSTR pwszAuthority, uint32* pdwRequestId, uint32* pdwDisposition, PWSTR pwszAttributes, CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbCertChain, CERTTRANSBLOB* pctbEncodedCert, CERTTRANSBLOB* pctbDispositionMessage) Request;
				public new function HRESULT(ICertRequestD *self, uint32 fchain, PWSTR pwszAuthority, CERTTRANSBLOB* pctbOut) GetCACert;
				public new function HRESULT(ICertRequestD *self, PWSTR pwszAuthority) Ping;
			}
		}
		[CRepr]
		public struct ICertRequestD2 : ICertRequestD
		{
			public const new Guid IID = .(0x5422fd3a, 0xd4b8, 0x4cef, 0xa1, 0x2e, 0xe8, 0x7d, 0x4c, 0xa2, 0x2e, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Request2(PWSTR pwszAuthority, uint32 dwFlags, PWSTR pwszSerialNumber, uint32* pdwRequestId, uint32* pdwDisposition, PWSTR pwszAttributes, CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbFullResponse, CERTTRANSBLOB* pctbEncodedCert, CERTTRANSBLOB* pctbDispositionMessage) mut
			{
				return VT.Request2(&this, pwszAuthority, dwFlags, pwszSerialNumber, pdwRequestId, pdwDisposition, pwszAttributes, pctbRequest, pctbFullResponse, pctbEncodedCert, pctbDispositionMessage);
			}
			public HRESULT GetCAProperty(PWSTR pwszAuthority, int32 PropId, int32 PropIndex, int32 PropType, CERTTRANSBLOB* pctbPropertyValue) mut
			{
				return VT.GetCAProperty(&this, pwszAuthority, PropId, PropIndex, PropType, pctbPropertyValue);
			}
			public HRESULT GetCAPropertyInfo(PWSTR pwszAuthority, int32* pcProperty, CERTTRANSBLOB* pctbPropInfo) mut
			{
				return VT.GetCAPropertyInfo(&this, pwszAuthority, pcProperty, pctbPropInfo);
			}
			public HRESULT Ping2(PWSTR pwszAuthority) mut
			{
				return VT.Ping2(&this, pwszAuthority);
			}
			[CRepr]
			public struct VTable : ICertRequestD.VTable
			{
				public new function HRESULT(ICertRequestD2 *self, PWSTR pwszAuthority, uint32 dwFlags, PWSTR pwszSerialNumber, uint32* pdwRequestId, uint32* pdwDisposition, PWSTR pwszAttributes, CERTTRANSBLOB* pctbRequest, CERTTRANSBLOB* pctbFullResponse, CERTTRANSBLOB* pctbEncodedCert, CERTTRANSBLOB* pctbDispositionMessage) Request2;
				public new function HRESULT(ICertRequestD2 *self, PWSTR pwszAuthority, int32 PropId, int32 PropIndex, int32 PropType, CERTTRANSBLOB* pctbPropertyValue) GetCAProperty;
				public new function HRESULT(ICertRequestD2 *self, PWSTR pwszAuthority, int32* pcProperty, CERTTRANSBLOB* pctbPropInfo) GetCAPropertyInfo;
				public new function HRESULT(ICertRequestD2 *self, PWSTR pwszAuthority) Ping2;
			}
		}
		
		// --- Functions ---
		
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvIsServerOnlineW(PWSTR pwszServerName, BOOL* pfServerOnline);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupGetDynamicFileListW(void* hbc, PWSTR* ppwszzFileList, uint32* pcbSize);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupPrepareW(PWSTR pwszServerName, uint32 grbitJet, CSBACKUP_TYPE dwBackupFlags, void** phbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupGetDatabaseNamesW(void* hbc, PWSTR* ppwszzAttachmentInformation, uint32* pcbSize);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupOpenFileW(void* hbc, PWSTR pwszAttachmentName, uint32 cbReadHintSize, LARGE_INTEGER* pliFileSize);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupRead(void* hbc, void* pvBuffer, uint32 cbBuffer, uint32* pcbRead);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupClose(void* hbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupGetBackupLogsW(void* hbc, PWSTR* ppwszzBackupLogFiles, uint32* pcbSize);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupTruncateLogs(void* hbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvBackupEnd(void* hbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CertSrvBackupFree(void* pv);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestoreGetDatabaseLocationsW(void* hbc, PWSTR* ppwszzDatabaseLocationList, uint32* pcbSize);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestorePrepareW(PWSTR pwszServerName, uint32 dwRestoreFlags, void** phbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestoreRegisterW(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, CSEDB_RSTMAPW* rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestoreRegisterThroughFile(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, CSEDB_RSTMAPW* rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestoreRegisterComplete(void* hbc, HRESULT hrRestoreState);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvRestoreEnd(void* hbc);
		[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSrvServerControlW(PWSTR pwszServerName, uint32 dwControlFlags, uint32* pcbOut, uint8** ppbOut);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstGetTrustAnchors(UNICODE_STRING* pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, SecPkgContext_IssuerListInfoEx** ppTrustedIssuers);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstGetTrustAnchorsEx(UNICODE_STRING* pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, CERT_CONTEXT* pCertContext, SecPkgContext_IssuerListInfoEx** ppTrustedIssuers);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstGetCertificateChain(CERT_CONTEXT* pCert, SecPkgContext_IssuerListInfoEx* pTrustedIssuers, CERT_CHAIN_CONTEXT** ppCertChainContext);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstGetCertificates(UNICODE_STRING* pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, BOOL bIsClient, uint32* pdwCertChainContextCount, CERT_CHAIN_CONTEXT*** ppCertChainContexts);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstAcquirePrivateKey(CERT_CONTEXT* pCert);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstValidate(UNICODE_STRING* pTargetName, BOOL bIsClient, CERT_USAGE_MATCH* pRequestedIssuancePolicy, void** phAdditionalCertStore, CERT_CONTEXT* pCert, Guid* pProvGUID);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstMapCertificate(CERT_CONTEXT* pCert, LSA_TOKEN_INFORMATION_TYPE* pTokenInformationType, void** ppTokenInformation);
		[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PstGetUserNameForCertificate(CERT_CONTEXT* pCertContext, UNICODE_STRING* UserName);
		
	}
}
