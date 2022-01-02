using System;

// namespace Networking.Ldap
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 LBER_ERROR = -1;
		public const int32 LBER_DEFAULT = -1;
		public const uint32 LDAP_UNICODE = 1;
		public const uint32 LDAP_PORT = 389;
		public const uint32 LDAP_SSL_PORT = 636;
		public const uint32 LDAP_GC_PORT = 3268;
		public const uint32 LDAP_SSL_GC_PORT = 3269;
		public const uint32 LDAP_VERSION1 = 1;
		public const uint32 LDAP_VERSION2 = 2;
		public const uint32 LDAP_VERSION3 = 3;
		public const uint32 LDAP_VERSION = 2;
		public const int32 LDAP_BIND_CMD = 96;
		public const int32 LDAP_UNBIND_CMD = 66;
		public const int32 LDAP_SEARCH_CMD = 99;
		public const int32 LDAP_MODIFY_CMD = 102;
		public const int32 LDAP_ADD_CMD = 104;
		public const int32 LDAP_DELETE_CMD = 74;
		public const int32 LDAP_MODRDN_CMD = 108;
		public const int32 LDAP_COMPARE_CMD = 110;
		public const int32 LDAP_ABANDON_CMD = 80;
		public const int32 LDAP_SESSION_CMD = 113;
		public const int32 LDAP_EXTENDED_CMD = 119;
		public const int32 LDAP_RES_BIND = 97;
		public const int32 LDAP_RES_SEARCH_ENTRY = 100;
		public const int32 LDAP_RES_SEARCH_RESULT = 101;
		public const int32 LDAP_RES_MODIFY = 103;
		public const int32 LDAP_RES_ADD = 105;
		public const int32 LDAP_RES_DELETE = 107;
		public const int32 LDAP_RES_MODRDN = 109;
		public const int32 LDAP_RES_COMPARE = 111;
		public const int32 LDAP_RES_SESSION = 114;
		public const int32 LDAP_RES_REFERRAL = 115;
		public const int32 LDAP_RES_EXTENDED = 120;
		public const int32 LDAP_RES_ANY = -1;
		public const uint32 LDAP_INVALID_CMD = 255;
		public const uint32 LDAP_INVALID_RES = 255;
		public const int32 LDAP_AUTH_SIMPLE = 128;
		public const int32 LDAP_AUTH_SASL = 131;
		public const int32 LDAP_AUTH_OTHERKIND = 134;
		public const uint32 LDAP_FILTER_AND = 160;
		public const uint32 LDAP_FILTER_OR = 161;
		public const uint32 LDAP_FILTER_NOT = 162;
		public const uint32 LDAP_FILTER_EQUALITY = 163;
		public const uint32 LDAP_FILTER_SUBSTRINGS = 164;
		public const uint32 LDAP_FILTER_GE = 165;
		public const uint32 LDAP_FILTER_LE = 166;
		public const uint32 LDAP_FILTER_PRESENT = 135;
		public const uint32 LDAP_FILTER_APPROX = 168;
		public const uint32 LDAP_FILTER_EXTENSIBLE = 169;
		public const int32 LDAP_SUBSTRING_INITIAL = 128;
		public const int32 LDAP_SUBSTRING_ANY = 129;
		public const int32 LDAP_SUBSTRING_FINAL = 130;
		public const uint32 LDAP_DEREF_NEVER = 0;
		public const uint32 LDAP_DEREF_SEARCHING = 1;
		public const uint32 LDAP_DEREF_FINDING = 2;
		public const uint32 LDAP_DEREF_ALWAYS = 3;
		public const uint32 LDAP_NO_LIMIT = 0;
		public const uint32 LDAP_OPT_DNS = 1;
		public const uint32 LDAP_OPT_CHASE_REFERRALS = 2;
		public const uint32 LDAP_OPT_RETURN_REFS = 4;
		public const uint32 LDAP_MOD_ADD = 0;
		public const uint32 LDAP_MOD_DELETE = 1;
		public const uint32 LDAP_MOD_REPLACE = 2;
		public const uint32 LDAP_MOD_BVALUES = 128;
		public const uint32 LDAP_OPT_API_INFO = 0;
		public const uint32 LDAP_OPT_DESC = 1;
		public const uint32 LDAP_OPT_DEREF = 2;
		public const uint32 LDAP_OPT_SIZELIMIT = 3;
		public const uint32 LDAP_OPT_TIMELIMIT = 4;
		public const uint32 LDAP_OPT_THREAD_FN_PTRS = 5;
		public const uint32 LDAP_OPT_REBIND_FN = 6;
		public const uint32 LDAP_OPT_REBIND_ARG = 7;
		public const uint32 LDAP_OPT_REFERRALS = 8;
		public const uint32 LDAP_OPT_RESTART = 9;
		public const uint32 LDAP_OPT_SSL = 10;
		public const uint32 LDAP_OPT_IO_FN_PTRS = 11;
		public const uint32 LDAP_OPT_CACHE_FN_PTRS = 13;
		public const uint32 LDAP_OPT_CACHE_STRATEGY = 14;
		public const uint32 LDAP_OPT_CACHE_ENABLE = 15;
		public const uint32 LDAP_OPT_REFERRAL_HOP_LIMIT = 16;
		public const uint32 LDAP_OPT_PROTOCOL_VERSION = 17;
		public const uint32 LDAP_OPT_VERSION = 17;
		public const uint32 LDAP_OPT_API_FEATURE_INFO = 21;
		public const uint32 LDAP_OPT_HOST_NAME = 48;
		public const uint32 LDAP_OPT_ERROR_NUMBER = 49;
		public const uint32 LDAP_OPT_ERROR_STRING = 50;
		public const uint32 LDAP_OPT_SERVER_ERROR = 51;
		public const uint32 LDAP_OPT_SERVER_EXT_ERROR = 52;
		public const uint32 LDAP_OPT_HOST_REACHABLE = 62;
		public const uint32 LDAP_OPT_PING_KEEP_ALIVE = 54;
		public const uint32 LDAP_OPT_PING_WAIT_TIME = 55;
		public const uint32 LDAP_OPT_PING_LIMIT = 56;
		public const uint32 LDAP_OPT_DNSDOMAIN_NAME = 59;
		public const uint32 LDAP_OPT_GETDSNAME_FLAGS = 61;
		public const uint32 LDAP_OPT_PROMPT_CREDENTIALS = 63;
		public const uint32 LDAP_OPT_AUTO_RECONNECT = 145;
		public const uint32 LDAP_OPT_SSPI_FLAGS = 146;
		public const uint32 LDAP_OPT_SSL_INFO = 147;
		public const uint32 LDAP_OPT_TLS = 10;
		public const uint32 LDAP_OPT_TLS_INFO = 147;
		public const uint32 LDAP_OPT_SIGN = 149;
		public const uint32 LDAP_OPT_ENCRYPT = 150;
		public const uint32 LDAP_OPT_SASL_METHOD = 151;
		public const uint32 LDAP_OPT_AREC_EXCLUSIVE = 152;
		public const uint32 LDAP_OPT_SECURITY_CONTEXT = 153;
		public const uint32 LDAP_OPT_ROOTDSE_CACHE = 154;
		public const uint32 LDAP_OPT_TCP_KEEPALIVE = 64;
		public const uint32 LDAP_OPT_FAST_CONCURRENT_BIND = 65;
		public const uint32 LDAP_OPT_SEND_TIMEOUT = 66;
		public const uint32 LDAP_OPT_SCH_FLAGS = 67;
		public const uint32 LDAP_OPT_SOCKET_BIND_ADDRESSES = 68;
		public const uint32 LDAP_CHASE_SUBORDINATE_REFERRALS = 32;
		public const uint32 LDAP_CHASE_EXTERNAL_REFERRALS = 64;
		public const uint32 LDAP_SCOPE_BASE = 0;
		public const uint32 LDAP_SCOPE_ONELEVEL = 1;
		public const uint32 LDAP_SCOPE_SUBTREE = 2;
		public const uint32 LDAP_MSG_ONE = 0;
		public const uint32 LDAP_MSG_ALL = 1;
		public const uint32 LDAP_MSG_RECEIVED = 2;
		public const uint32 LBER_USE_DER = 1;
		public const uint32 LBER_USE_INDEFINITE_LEN = 2;
		public const uint32 LBER_TRANSLATE_STRINGS = 4;
		public const uint32 LAPI_MAJOR_VER1 = 1;
		public const uint32 LAPI_MINOR_VER1 = 1;
		public const uint32 LDAP_API_INFO_VERSION = 1;
		public const uint32 LDAP_API_VERSION = 2004;
		public const uint32 LDAP_VERSION_MIN = 2;
		public const uint32 LDAP_VERSION_MAX = 3;
		public const uint32 LDAP_VENDOR_VERSION = 510;
		public const uint32 LDAP_FEATURE_INFO_VERSION = 1;
		public const uint32 LDAP_API_FEATURE_VIRTUAL_LIST_VIEW = 1001;
		public const uint32 LDAP_VLVINFO_VERSION = 1;
		public const uint32 LDAP_OPT_REFERRAL_CALLBACK = 112;
		public const uint32 LDAP_OPT_CLIENT_CERTIFICATE = 128;
		public const uint32 LDAP_OPT_SERVER_CERTIFICATE = 129;
		public const uint32 LDAP_OPT_REF_DEREF_CONN_PER_MSG = 148;
		public const uint32 SERVER_SEARCH_FLAG_DOMAIN_SCOPE = 1;
		public const uint32 SERVER_SEARCH_FLAG_PHANTOM_ROOT = 2;
		public const uint32 LDAP_DIRSYNC_OBJECT_SECURITY = 1;
		public const uint32 LDAP_DIRSYNC_ANCESTORS_FIRST_ORDER = 2048;
		public const uint32 LDAP_DIRSYNC_PUBLIC_DATA_ONLY = 8192;
		public const uint32 LDAP_DIRSYNC_INCREMENTAL_VALUES = 2147483648;
		public const uint32 LDAP_DIRSYNC_ROPAS_DATA_ONLY = 1073741824;
		public const uint32 LDAP_POLICYHINT_APPLY_FULLPWDPOLICY = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum LDAP_RETCODE : int32
		{
			SUCCESS = 0,
			OPERATIONS_ERROR = 1,
			PROTOCOL_ERROR = 2,
			TIMELIMIT_EXCEEDED = 3,
			SIZELIMIT_EXCEEDED = 4,
			COMPARE_FALSE = 5,
			COMPARE_TRUE = 6,
			AUTH_METHOD_NOT_SUPPORTED = 7,
			STRONG_AUTH_REQUIRED = 8,
			REFERRAL_V2 = 9,
			PARTIAL_RESULTS = 9,
			REFERRAL = 10,
			ADMIN_LIMIT_EXCEEDED = 11,
			UNAVAILABLE_CRIT_EXTENSION = 12,
			CONFIDENTIALITY_REQUIRED = 13,
			SASL_BIND_IN_PROGRESS = 14,
			NO_SUCH_ATTRIBUTE = 16,
			UNDEFINED_TYPE = 17,
			INAPPROPRIATE_MATCHING = 18,
			CONSTRAINT_VIOLATION = 19,
			ATTRIBUTE_OR_VALUE_EXISTS = 20,
			INVALID_SYNTAX = 21,
			NO_SUCH_OBJECT = 32,
			ALIAS_PROBLEM = 33,
			INVALID_DN_SYNTAX = 34,
			IS_LEAF = 35,
			ALIAS_DEREF_PROBLEM = 36,
			INAPPROPRIATE_AUTH = 48,
			INVALID_CREDENTIALS = 49,
			INSUFFICIENT_RIGHTS = 50,
			BUSY = 51,
			UNAVAILABLE = 52,
			UNWILLING_TO_PERFORM = 53,
			LOOP_DETECT = 54,
			SORT_CONTROL_MISSING = 60,
			OFFSET_RANGE_ERROR = 61,
			NAMING_VIOLATION = 64,
			OBJECT_CLASS_VIOLATION = 65,
			NOT_ALLOWED_ON_NONLEAF = 66,
			NOT_ALLOWED_ON_RDN = 67,
			ALREADY_EXISTS = 68,
			NO_OBJECT_CLASS_MODS = 69,
			RESULTS_TOO_LARGE = 70,
			AFFECTS_MULTIPLE_DSAS = 71,
			VIRTUAL_LIST_VIEW_ERROR = 76,
			OTHER = 80,
			SERVER_DOWN = 81,
			LOCAL_ERROR = 82,
			ENCODING_ERROR = 83,
			DECODING_ERROR = 84,
			TIMEOUT = 85,
			AUTH_UNKNOWN = 86,
			FILTER_ERROR = 87,
			USER_CANCELLED = 88,
			PARAM_ERROR = 89,
			NO_MEMORY = 90,
			CONNECT_ERROR = 91,
			NOT_SUPPORTED = 92,
			NO_RESULTS_RETURNED = 94,
			CONTROL_NOT_FOUND = 93,
			MORE_RESULTS_TO_RETURN = 95,
			CLIENT_LOOP = 96,
			REFERRAL_LIMIT_EXCEEDED = 97,
		}
		
		// --- Function Pointers ---
		
		public function uint32 DBGPRINT(PSTR Format);
		public function uint32 QUERYFORCONNECTION(out ldap PrimaryConnection, out ldap ReferralFromConnection, PWSTR NewDN, PSTR HostName, uint32 PortNumber, void* SecAuthIdentity, void* CurrentUserToken, out ldap* ConnectionToUse);
		public function BOOLEAN NOTIFYOFNEWCONNECTION(out ldap PrimaryConnection, out ldap ReferralFromConnection, PWSTR NewDN, PSTR HostName, out ldap NewConnection, uint32 PortNumber, void* SecAuthIdentity, void* CurrentUser, uint32 ErrorCodeFromBind);
		public function uint32 DEREFERENCECONNECTION(out ldap PrimaryConnection, out ldap ConnectionToDereference);
		public function BOOLEAN QUERYCLIENTCERT(out ldap Connection, out SecPkgContext_IssuerListInfoEx trusted_CAs, out CERT_CONTEXT* ppCertificate);
		public function BOOLEAN VERIFYSERVERCERT(out ldap Connection, out CERT_CONTEXT* pServerCert);
		
		// --- Structs ---
		
		[CRepr]
		public struct ldap
		{
			public _ld_sb_e__Struct ld_sb;
			public PSTR ld_host;
			public uint32 ld_version;
			public uint8 ld_lberoptions;
			public uint32 ld_deref;
			public uint32 ld_timelimit;
			public uint32 ld_sizelimit;
			public uint32 ld_errno;
			public PSTR ld_matched;
			public PSTR ld_error;
			public uint32 ld_msgid;
			public uint8[25] Reserved3;
			public uint32 ld_cldaptries;
			public uint32 ld_cldaptimeout;
			public uint32 ld_refhoplimit;
			public uint32 ld_options;
			
			[CRepr]
			public struct _ld_sb_e__Struct
			{
				public uint sb_sd;
				public uint8[41] Reserved1;
				public uint sb_naddr;
				public uint8[24] Reserved2;
			}
		}
		[CRepr]
		public struct LDAP_TIMEVAL
		{
			public int32 tv_sec;
			public int32 tv_usec;
		}
		[CRepr]
		public struct LDAP_BERVAL
		{
			public uint32 bv_len;
			public PSTR bv_val;
		}
		[CRepr]
		public struct LDAPMessage
		{
			public uint32 lm_msgid;
			public uint32 lm_msgtype;
			public void* lm_ber;
			public LDAPMessage* lm_chain;
			public LDAPMessage* lm_next;
			public uint32 lm_time;
			public ldap* Connection;
			public void* Request;
			public uint32 lm_returncode;
			public uint16 lm_referral;
			public BOOLEAN lm_chased;
			public BOOLEAN lm_eom;
			public BOOLEAN ConnectionReferenced;
		}
		[CRepr]
		public struct ldapcontrolA
		{
			public PSTR ldctl_oid;
			public LDAP_BERVAL ldctl_value;
			public BOOLEAN ldctl_iscritical;
		}
		[CRepr]
		public struct ldapcontrolW
		{
			public PWSTR ldctl_oid;
			public LDAP_BERVAL ldctl_value;
			public BOOLEAN ldctl_iscritical;
		}
		[CRepr]
		public struct ldapmodW
		{
			public uint32 mod_op;
			public PWSTR mod_type;
			public _mod_vals_e__Union mod_vals;
			
			[CRepr, Union]
			public struct _mod_vals_e__Union
			{
				public PWSTR* modv_strvals;
				public LDAP_BERVAL** modv_bvals;
			}
		}
		[CRepr]
		public struct ldapmodA
		{
			public uint32 mod_op;
			public PSTR mod_type;
			public _mod_vals_e__Union mod_vals;
			
			[CRepr, Union]
			public struct _mod_vals_e__Union
			{
				public PSTR* modv_strvals;
				public LDAP_BERVAL** modv_bvals;
			}
		}
		[CRepr]
		public struct berelement
		{
			public PSTR opaque;
		}
		[CRepr]
		public struct ldap_version_info
		{
			public uint32 lv_size;
			public uint32 lv_major;
			public uint32 lv_minor;
		}
		[CRepr]
		public struct ldapapiinfoA
		{
			public int32 ldapai_info_version;
			public int32 ldapai_api_version;
			public int32 ldapai_protocol_version;
			public int8** ldapai_extensions;
			public PSTR ldapai_vendor_name;
			public int32 ldapai_vendor_version;
		}
		[CRepr]
		public struct ldapapiinfoW
		{
			public int32 ldapai_info_version;
			public int32 ldapai_api_version;
			public int32 ldapai_protocol_version;
			public PWSTR* ldapai_extensions;
			public PWSTR ldapai_vendor_name;
			public int32 ldapai_vendor_version;
		}
		[CRepr]
		public struct LDAPAPIFeatureInfoA
		{
			public int32 ldapaif_info_version;
			public PSTR ldapaif_name;
			public int32 ldapaif_version;
		}
		[CRepr]
		public struct LDAPAPIFeatureInfoW
		{
			public int32 ldapaif_info_version;
			public PWSTR ldapaif_name;
			public int32 ldapaif_version;
		}
		[CRepr]
		public struct ldapsearch {}
		[CRepr]
		public struct ldapsortkeyW
		{
			public PWSTR sk_attrtype;
			public PWSTR sk_matchruleoid;
			public BOOLEAN sk_reverseorder;
		}
		[CRepr]
		public struct ldapsortkeyA
		{
			public PSTR sk_attrtype;
			public PSTR sk_matchruleoid;
			public BOOLEAN sk_reverseorder;
		}
		[CRepr]
		public struct ldapvlvinfo
		{
			public int32 ldvlv_version;
			public uint32 ldvlv_before_count;
			public uint32 ldvlv_after_count;
			public uint32 ldvlv_offset;
			public uint32 ldvlv_count;
			public LDAP_BERVAL* ldvlv_attrvalue;
			public LDAP_BERVAL* ldvlv_context;
			public void* ldvlv_extradata;
		}
		[CRepr]
		public struct LDAP_REFERRAL_CALLBACK
		{
			public uint32 SizeOfCallbacks;
			public QUERYFORCONNECTION QueryForConnection;
			public NOTIFYOFNEWCONNECTION NotifyRoutine;
			public DEREFERENCECONNECTION DereferenceRoutine;
		}
		
		// --- Functions ---
		
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_openW(PWSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_openA(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_initW(PWSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_initA(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_sslinitW(PWSTR HostName, uint32 PortNumber, int32 secure);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_sslinitA(PSTR HostName, uint32 PortNumber, int32 secure);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_connect(out ldap ld, out LDAP_TIMEVAL timeout);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_open(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_init(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_sslinit(PSTR HostName, uint32 PortNumber, int32 secure);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* cldap_openW(PWSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* cldap_openA(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* cldap_open(PSTR HostName, uint32 PortNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_unbind(out ldap ld);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_unbind_s(out ldap ld);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_option(out ldap ld, int32 option, void* outvalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_optionW(out ldap ld, int32 option, void* outvalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_set_option(out ldap ld, int32 option, void* invalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_set_optionW(out ldap ld, int32 option, void* invalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bindW(out ldap ld, PWSTR dn, PWSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bindA(out ldap ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_sW(out ldap ld, PWSTR dn, PWSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_sA(out ldap ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bindW(out ldap ld, PWSTR dn, PWSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bindA(out ldap ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_sW(out ldap ld, PWSTR dn, PWSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_sA(out ldap ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bindA(out ldap ExternalHandle, PSTR DistName, PSTR AuthMechanism, in LDAP_BERVAL cred, out ldapcontrolA* ServerCtrls, out ldapcontrolA* ClientCtrls, out int32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bindW(out ldap ExternalHandle, PWSTR DistName, PWSTR AuthMechanism, in LDAP_BERVAL cred, out ldapcontrolW* ServerCtrls, out ldapcontrolW* ClientCtrls, out int32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bind_sA(out ldap ExternalHandle, PSTR DistName, PSTR AuthMechanism, in LDAP_BERVAL cred, out ldapcontrolA* ServerCtrls, out ldapcontrolA* ClientCtrls, out LDAP_BERVAL* ServerData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bind_sW(out ldap ExternalHandle, PWSTR DistName, PWSTR AuthMechanism, in LDAP_BERVAL cred, out ldapcontrolW* ServerCtrls, out ldapcontrolW* ClientCtrls, out LDAP_BERVAL* ServerData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind(out ldap ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_s(out ldap ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind(out ldap ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_s(out ldap ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_searchW(out ldap ld, PWSTR @base, uint32 @scope, PWSTR filter, ref uint16* attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_searchA(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_sW(out ldap ld, PWSTR @base, uint32 @scope, PWSTR filter, ref uint16* attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_sA(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_stW(out ldap ld, PWSTR @base, uint32 @scope, PWSTR filter, ref uint16* attrs, uint32 attrsonly, out LDAP_TIMEVAL timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_stA(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, out LDAP_TIMEVAL timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_extW(out ldap ld, PWSTR @base, uint32 @scope, PWSTR filter, ref uint16* attrs, uint32 attrsonly, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32 TimeLimit, uint32 SizeLimit, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_extA(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 TimeLimit, uint32 SizeLimit, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_sW(out ldap ld, PWSTR @base, uint32 @scope, PWSTR filter, ref uint16* attrs, uint32 attrsonly, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, out LDAP_TIMEVAL timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_sA(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, out LDAP_TIMEVAL timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_s(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_st(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, out LDAP_TIMEVAL timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 TimeLimit, uint32 SizeLimit, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_s(out ldap ld, PSTR @base, uint32 @scope, PSTR filter, ref int8* attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, out LDAP_TIMEVAL timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_check_filterW(out ldap ld, PWSTR SearchFilter);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_check_filterA(out ldap ld, PSTR SearchFilter);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modifyW(out ldap ld, PWSTR dn, out ldapmodW* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modifyA(out ldap ld, PSTR dn, out ldapmodA* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_sW(out ldap ld, PWSTR dn, out ldapmodW* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_sA(out ldap ld, PSTR dn, out ldapmodA* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_extW(out ldap ld, PWSTR dn, out ldapmodW* mods, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_extA(out ldap ld, PSTR dn, out ldapmodA* mods, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_sW(out ldap ld, PWSTR dn, out ldapmodW* mods, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_sA(out ldap ld, PSTR dn, out ldapmodA* mods, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify(out ldap ld, PSTR dn, out ldapmodA* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_s(out ldap ld, PSTR dn, out ldapmodA* mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext(out ldap ld, PSTR dn, out ldapmodA* mods, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_s(out ldap ld, PSTR dn, out ldapmodA* mods, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2W(out ldap ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2A(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdnW(out ldap ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdnA(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_sW(out ldap ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_sA(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_sW(out ldap ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_sA(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_s(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_s(out ldap ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_extW(out ldap ld, PWSTR dn, PWSTR NewRDN, PWSTR NewParent, int32 DeleteOldRdn, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_extA(out ldap ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_sW(out ldap ld, PWSTR dn, PWSTR NewRDN, PWSTR NewParent, int32 DeleteOldRdn, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_sA(out ldap ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext(out ldap ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_s(out ldap ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_addW(out ldap ld, PWSTR dn, out ldapmodW* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_addA(out ldap ld, PSTR dn, out ldapmodA* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_sW(out ldap ld, PWSTR dn, out ldapmodW* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_sA(out ldap ld, PSTR dn, out ldapmodA* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_extW(out ldap ld, PWSTR dn, out ldapmodW* attrs, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_extA(out ldap ld, PSTR dn, out ldapmodA* attrs, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_sW(out ldap ld, PWSTR dn, out ldapmodW* attrs, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_sA(out ldap ld, PSTR dn, out ldapmodA* attrs, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add(out ldap ld, PSTR dn, out ldapmodA* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_s(out ldap ld, PSTR dn, out ldapmodA* attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext(out ldap ld, PSTR dn, out ldapmodA* attrs, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_s(out ldap ld, PSTR dn, out ldapmodA* attrs, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compareW(out ldap ld, PWSTR dn, PWSTR attr, PWSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compareA(out ldap ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_sW(out ldap ld, PWSTR dn, PWSTR attr, PWSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_sA(out ldap ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare(out ldap ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_s(out ldap ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_extW(out ldap ld, PWSTR dn, PWSTR Attr, PWSTR Value, LDAP_BERVAL* Data, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_extA(out ldap ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_sW(out ldap ld, PWSTR dn, PWSTR Attr, PWSTR Value, LDAP_BERVAL* Data, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_sA(out ldap ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext(out ldap ld, PSTR dn, PSTR Attr, PSTR Value, out LDAP_BERVAL Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_s(out ldap ld, PSTR dn, PSTR Attr, PSTR Value, out LDAP_BERVAL Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_deleteW(out ldap ld, PWSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_deleteA(out ldap ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_sW(out ldap ld, PWSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_sA(out ldap ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_extW(out ldap ld, PWSTR dn, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_extA(out ldap ld, PSTR dn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_sW(out ldap ld, PWSTR dn, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_sA(out ldap ld, PSTR dn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete(out ldap ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_s(out ldap ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext(out ldap ld, PSTR dn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_s(out ldap ld, PSTR dn, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_abandon(out ldap ld, uint32 msgid);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_result(out ldap ld, uint32 msgid, uint32 all, LDAP_TIMEVAL* timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_msgfree(out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_result2error(out ldap ld, out LDAPMessage res, uint32 freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_resultW(out ldap Connection, out LDAPMessage ResultMessage, out uint32 ReturnCode, PWSTR* MatchedDNs, PWSTR* ErrorMessage, uint16*** Referrals, out ldapcontrolW** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_resultA(out ldap Connection, out LDAPMessage ResultMessage, out uint32 ReturnCode, PSTR* MatchedDNs, PSTR* ErrorMessage, int8*** Referrals, out ldapcontrolA** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_extended_resultA(out ldap Connection, out LDAPMessage ResultMessage, PSTR* ResultOID, out LDAP_BERVAL* ResultData, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_extended_resultW(out ldap Connection, out LDAPMessage ResultMessage, PWSTR* ResultOID, out LDAP_BERVAL* ResultData, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_freeA(out ldapcontrolA* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_freeA(out ldapcontrolA Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_freeW(out ldapcontrolW* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_freeW(out ldapcontrolW Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controlsW(out ldapcontrolW* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controlsA(out ldapcontrolA* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_result(out ldap Connection, out LDAPMessage ResultMessage, out uint32 ReturnCode, PSTR* MatchedDNs, PSTR* ErrorMessage, PSTR** Referrals, out ldapcontrolA** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_free(out ldapcontrolA* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_free(out ldapcontrolA Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controls(out ldapcontrolA* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_err2stringW(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_err2stringA(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_err2string(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_perror(out ldap ld, PSTR msg);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_first_entry(out ldap ld, out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_next_entry(out ldap ld, out LDAPMessage entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_entries(out ldap ld, out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_first_attributeW(out ldap ld, out LDAPMessage entry, out berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_first_attributeA(out ldap ld, out LDAPMessage entry, out berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_first_attribute(out ldap ld, out LDAPMessage entry, out berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_next_attributeW(out ldap ld, out LDAPMessage entry, out berelement ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_next_attributeA(out ldap ld, out LDAPMessage entry, out berelement ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_next_attribute(out ldap ld, out LDAPMessage entry, out berelement ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR* ldap_get_valuesW(out ldap ld, out LDAPMessage entry, PWSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_get_valuesA(out ldap ld, out LDAPMessage entry, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_get_values(out ldap ld, out LDAPMessage entry, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_lenW(out ldap ExternalHandle, out LDAPMessage Message, PWSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_lenA(out ldap ExternalHandle, out LDAPMessage Message, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_len(out ldap ExternalHandle, out LDAPMessage Message, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_valuesW(PWSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_valuesA(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_values(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_values_len(out LDAP_BERVAL* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_freeW(PWSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_freeA(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_free(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_free_len(out LDAP_BERVAL* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_get_dnW(out ldap ld, out LDAPMessage entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_get_dnA(out ldap ld, out LDAPMessage entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_get_dn(out ldap ld, out LDAPMessage entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR* ldap_explode_dnW(PWSTR dn, uint32 notypes);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_explode_dnA(PSTR dn, uint32 notypes);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_explode_dn(PSTR dn, uint32 notypes);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_dn2ufnW(PWSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_dn2ufnA(PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_dn2ufn(PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_memfreeW(PWSTR Block);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_memfreeA(PSTR Block);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ber_bvfree(out LDAP_BERVAL bv);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_memfree(PSTR Block);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dnW(PWSTR ufn, out PWSTR pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dnA(PSTR ufn, out PSTR pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dn(PSTR ufn, out PSTR pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_startup(out ldap_version_info version, out HANDLE Instance);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_cleanup(HANDLE hInstance);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_escape_filter_elementW(PSTR sourceFilterElement, uint32 sourceLength, PWSTR destFilterElement, uint32 destLength);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_escape_filter_elementA(PSTR sourceFilterElement, uint32 sourceLength, PSTR destFilterElement, uint32 destLength);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_escape_filter_element(PSTR sourceFilterElement, uint32 sourceLength, PSTR destFilterElement, uint32 destLength);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_set_dbg_flags(uint32 NewFlags);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_set_dbg_routine(DBGPRINT DebugPrintRoutine);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LdapUTF8ToUnicode(uint8* lpSrcStr, int32 cchSrc, char16* lpDestStr, int32 cchDest);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LdapUnicodeToUTF8(char16* lpSrcStr, int32 cchSrc, uint8* lpDestStr, int32 cchDest);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_sort_controlA(out ldap ExternalHandle, out ldapsortkeyA* SortKeys, uint8 IsCritical, out ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_sort_controlW(out ldap ExternalHandle, out ldapsortkeyW* SortKeys, uint8 IsCritical, out ldapcontrolW* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_controlA(out ldap ExternalHandle, out ldapcontrolA* Control, out uint32 Result, PSTR* Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_controlW(out ldap ExternalHandle, out ldapcontrolW* Control, out uint32 Result, PWSTR* Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_sort_control(out ldap ExternalHandle, out ldapsortkeyA* SortKeys, uint8 IsCritical, out ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_control(out ldap ExternalHandle, out ldapcontrolA* Control, out uint32 Result, out PSTR Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_encode_sort_controlW(out ldap ExternalHandle, out ldapsortkeyW* SortKeys, out ldapcontrolW Control, BOOLEAN Criticality);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_encode_sort_controlA(out ldap ExternalHandle, out ldapsortkeyA* SortKeys, out ldapcontrolA Control, BOOLEAN Criticality);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_controlW(out ldap ExternalHandle, uint32 PageSize, out LDAP_BERVAL Cookie, uint8 IsCritical, out ldapcontrolW* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_controlA(out ldap ExternalHandle, uint32 PageSize, out LDAP_BERVAL Cookie, uint8 IsCritical, out ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_controlW(out ldap ExternalHandle, out ldapcontrolW* ServerControls, out uint32 TotalCount, out LDAP_BERVAL* Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_controlA(out ldap ExternalHandle, out ldapcontrolA* ServerControls, out uint32 TotalCount, out LDAP_BERVAL* Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_control(out ldap ExternalHandle, uint32 PageSize, out LDAP_BERVAL Cookie, uint8 IsCritical, out ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_control(out ldap ExternalHandle, out ldapcontrolA* ServerControls, out uint32 TotalCount, out LDAP_BERVAL* Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_pageW(out ldap ExternalHandle, PWSTR DistinguishedName, uint32 ScopeOfSearch, PWSTR SearchFilter, ref uint16* AttributeList, uint32 AttributesOnly, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, out ldapsortkeyW* SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_pageA(out ldap ExternalHandle, PSTR DistinguishedName, uint32 ScopeOfSearch, PSTR SearchFilter, ref int8* AttributeList, uint32 AttributesOnly, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, out ldapsortkeyA* SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_page(out ldap ExternalHandle, PSTR DistinguishedName, uint32 ScopeOfSearch, PSTR SearchFilter, out int8* AttributeList, uint32 AttributesOnly, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, out ldapsortkeyA* SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_next_page(out ldap ExternalHandle, out ldapsearch SearchHandle, uint32 PageSize, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_next_page_s(out ldap ExternalHandle, out ldapsearch SearchHandle, out LDAP_TIMEVAL timeout, uint32 PageSize, out uint32 TotalCount, out LDAPMessage* Results);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_paged_count(out ldap ExternalHandle, out ldapsearch SearchBlock, out uint32 TotalCount, out LDAPMessage Results);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_abandon_page(out ldap ExternalHandle, out ldapsearch SearchBlock);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_create_vlv_controlW(out ldap ExternalHandle, out ldapvlvinfo VlvInfo, uint8 IsCritical, out ldapcontrolW* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_create_vlv_controlA(out ldap ExternalHandle, out ldapvlvinfo VlvInfo, uint8 IsCritical, out ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_parse_vlv_controlW(out ldap ExternalHandle, out ldapcontrolW* Control, out uint32 TargetPos, out uint32 ListCount, out LDAP_BERVAL* Context, out int32 ErrCode);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_parse_vlv_controlA(out ldap ExternalHandle, out ldapcontrolA* Control, out uint32 TargetPos, out uint32 ListCount, out LDAP_BERVAL* Context, out int32 ErrCode);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_start_tls_sW(out ldap ExternalHandle, out uint32 ServerReturnValue, out LDAPMessage* result, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_start_tls_sA(out ldap ExternalHandle, out uint32 ServerReturnValue, out LDAPMessage* result, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN ldap_stop_tls_s(out ldap ExternalHandle);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_first_reference(out ldap ld, out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_next_reference(out ldap ld, out LDAPMessage entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_references(out ldap ld, out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_referenceW(out ldap Connection, out LDAPMessage ResultMessage, out PWSTR* Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_referenceA(out ldap Connection, out LDAPMessage ResultMessage, out PSTR* Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_reference(out ldap Connection, out LDAPMessage ResultMessage, out PSTR* Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operationW(out ldap ld, PWSTR Oid, out LDAP_BERVAL Data, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operationA(out ldap ld, PSTR Oid, out LDAP_BERVAL Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation_sA(out ldap ExternalHandle, PSTR Oid, out LDAP_BERVAL Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out PSTR ReturnedOid, out LDAP_BERVAL* ReturnedData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation_sW(out ldap ExternalHandle, PWSTR Oid, out LDAP_BERVAL Data, out ldapcontrolW* ServerControls, out ldapcontrolW* ClientControls, out PWSTR ReturnedOid, out LDAP_BERVAL* ReturnedData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation(out ldap ld, PSTR Oid, out LDAP_BERVAL Data, out ldapcontrolA* ServerControls, out ldapcontrolA* ClientControls, out uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_close_extended_op(out ldap ld, uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LdapGetLastError();
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LdapMapErrorToWin32(uint32 LdapError);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_conn_from_msg(out ldap PrimaryConn, out LDAPMessage res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern berelement* ber_init(out LDAP_BERVAL pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ber_free(out berelement pBerElement, int32 fbuf);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ber_bvecfree(out LDAP_BERVAL* pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL* ber_bvdup(out LDAP_BERVAL pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern berelement* ber_alloc_t(int32 options);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_skip_tag(out berelement pBerElement, out uint32 pLen);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_peek_tag(out berelement pBerElement, out uint32 pLen);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_first_element(out berelement pBerElement, out uint32 pLen, out CHAR* ppOpaque);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_next_element(out berelement pBerElement, out uint32 pLen, PSTR opaque);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ber_flatten(out berelement pBerElement, out LDAP_BERVAL* pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ber_printf(out berelement pBerElement, PSTR fmt);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_scanf(out berelement pBerElement, PSTR fmt);
	}
}
