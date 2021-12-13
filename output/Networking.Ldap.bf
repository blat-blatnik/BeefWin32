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
			LDAP_SUCCESS = 0,
			LDAP_OPERATIONS_ERROR = 1,
			LDAP_PROTOCOL_ERROR = 2,
			LDAP_TIMELIMIT_EXCEEDED = 3,
			LDAP_SIZELIMIT_EXCEEDED = 4,
			LDAP_COMPARE_FALSE = 5,
			LDAP_COMPARE_TRUE = 6,
			LDAP_AUTH_METHOD_NOT_SUPPORTED = 7,
			LDAP_STRONG_AUTH_REQUIRED = 8,
			LDAP_REFERRAL_V2 = 9,
			LDAP_PARTIAL_RESULTS = 9,
			LDAP_REFERRAL = 10,
			LDAP_ADMIN_LIMIT_EXCEEDED = 11,
			LDAP_UNAVAILABLE_CRIT_EXTENSION = 12,
			LDAP_CONFIDENTIALITY_REQUIRED = 13,
			LDAP_SASL_BIND_IN_PROGRESS = 14,
			LDAP_NO_SUCH_ATTRIBUTE = 16,
			LDAP_UNDEFINED_TYPE = 17,
			LDAP_INAPPROPRIATE_MATCHING = 18,
			LDAP_CONSTRAINT_VIOLATION = 19,
			LDAP_ATTRIBUTE_OR_VALUE_EXISTS = 20,
			LDAP_INVALID_SYNTAX = 21,
			LDAP_NO_SUCH_OBJECT = 32,
			LDAP_ALIAS_PROBLEM = 33,
			LDAP_INVALID_DN_SYNTAX = 34,
			LDAP_IS_LEAF = 35,
			LDAP_ALIAS_DEREF_PROBLEM = 36,
			LDAP_INAPPROPRIATE_AUTH = 48,
			LDAP_INVALID_CREDENTIALS = 49,
			LDAP_INSUFFICIENT_RIGHTS = 50,
			LDAP_BUSY = 51,
			LDAP_UNAVAILABLE = 52,
			LDAP_UNWILLING_TO_PERFORM = 53,
			LDAP_LOOP_DETECT = 54,
			LDAP_SORT_CONTROL_MISSING = 60,
			LDAP_OFFSET_RANGE_ERROR = 61,
			LDAP_NAMING_VIOLATION = 64,
			LDAP_OBJECT_CLASS_VIOLATION = 65,
			LDAP_NOT_ALLOWED_ON_NONLEAF = 66,
			LDAP_NOT_ALLOWED_ON_RDN = 67,
			LDAP_ALREADY_EXISTS = 68,
			LDAP_NO_OBJECT_CLASS_MODS = 69,
			LDAP_RESULTS_TOO_LARGE = 70,
			LDAP_AFFECTS_MULTIPLE_DSAS = 71,
			LDAP_VIRTUAL_LIST_VIEW_ERROR = 76,
			LDAP_OTHER = 80,
			LDAP_SERVER_DOWN = 81,
			LDAP_LOCAL_ERROR = 82,
			LDAP_ENCODING_ERROR = 83,
			LDAP_DECODING_ERROR = 84,
			LDAP_TIMEOUT = 85,
			LDAP_AUTH_UNKNOWN = 86,
			LDAP_FILTER_ERROR = 87,
			LDAP_USER_CANCELLED = 88,
			LDAP_PARAM_ERROR = 89,
			LDAP_NO_MEMORY = 90,
			LDAP_CONNECT_ERROR = 91,
			LDAP_NOT_SUPPORTED = 92,
			LDAP_NO_RESULTS_RETURNED = 94,
			LDAP_CONTROL_NOT_FOUND = 93,
			LDAP_MORE_RESULTS_TO_RETURN = 95,
			LDAP_CLIENT_LOOP = 96,
			LDAP_REFERRAL_LIMIT_EXCEEDED = 97,
		}
		
		// --- Function Pointers ---
		
		public function uint32 DBGPRINT(PSTR Format);
		public function uint32 QUERYFORCONNECTION(ldap* PrimaryConnection, ldap* ReferralFromConnection, PWSTR NewDN, PSTR HostName, uint32 PortNumber, void* SecAuthIdentity, void* CurrentUserToken, ldap** ConnectionToUse);
		public function BOOLEAN NOTIFYOFNEWCONNECTION(ldap* PrimaryConnection, ldap* ReferralFromConnection, PWSTR NewDN, PSTR HostName, ldap* NewConnection, uint32 PortNumber, void* SecAuthIdentity, void* CurrentUser, uint32 ErrorCodeFromBind);
		public function uint32 DEREFERENCECONNECTION(ldap* PrimaryConnection, ldap* ConnectionToDereference);
		public function BOOLEAN QUERYCLIENTCERT(ldap* Connection, SecPkgContext_IssuerListInfoEx* trusted_CAs, CERT_CONTEXT** ppCertificate);
		public function BOOLEAN VERIFYSERVERCERT(ldap* Connection, CERT_CONTEXT** pServerCert);
		
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
		public struct ldapsearch
		{
		}
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
		public static extern uint32 ldap_connect(ldap* ld, LDAP_TIMEVAL* timeout);
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
		public static extern uint32 ldap_unbind(ldap* ld);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_unbind_s(ldap* ld);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_option(ldap* ld, int32 option, void* outvalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_optionW(ldap* ld, int32 option, void* outvalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_set_option(ldap* ld, int32 option, void* invalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_set_optionW(ldap* ld, int32 option, void* invalue);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bindW(ldap* ld, PWSTR dn, PWSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bindA(ldap* ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_sW(ldap* ld, PWSTR dn, PWSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_sA(ldap* ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bindW(ldap* ld, PWSTR dn, PWSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bindA(ldap* ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_sW(ldap* ld, PWSTR dn, PWSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_sA(ldap* ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bindA(ldap* ExternalHandle, PSTR DistName, PSTR AuthMechanism, LDAP_BERVAL* cred, ldapcontrolA** ServerCtrls, ldapcontrolA** ClientCtrls, int32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bindW(ldap* ExternalHandle, PWSTR DistName, PWSTR AuthMechanism, LDAP_BERVAL* cred, ldapcontrolW** ServerCtrls, ldapcontrolW** ClientCtrls, int32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bind_sA(ldap* ExternalHandle, PSTR DistName, PSTR AuthMechanism, LDAP_BERVAL* cred, ldapcontrolA** ServerCtrls, ldapcontrolA** ClientCtrls, LDAP_BERVAL** ServerData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_sasl_bind_sW(ldap* ExternalHandle, PWSTR DistName, PWSTR AuthMechanism, LDAP_BERVAL* cred, ldapcontrolW** ServerCtrls, ldapcontrolW** ClientCtrls, LDAP_BERVAL** ServerData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind(ldap* ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_simple_bind_s(ldap* ld, PSTR dn, PSTR passwd);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind(ldap* ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_bind_s(ldap* ld, PSTR dn, PSTR cred, uint32 method);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_searchW(ldap* ld, PWSTR @base, uint32 @scope, PWSTR filter, uint16** attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_searchA(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_sW(ldap* ld, PWSTR @base, uint32 @scope, PWSTR filter, uint16** attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_sA(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_stW(ldap* ld, PWSTR @base, uint32 @scope, PWSTR filter, uint16** attrs, uint32 attrsonly, LDAP_TIMEVAL* timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_stA(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, LDAP_TIMEVAL* timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_extW(ldap* ld, PWSTR @base, uint32 @scope, PWSTR filter, uint16** attrs, uint32 attrsonly, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32 TimeLimit, uint32 SizeLimit, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_extA(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 TimeLimit, uint32 SizeLimit, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_sW(ldap* ld, PWSTR @base, uint32 @scope, PWSTR filter, uint16** attrs, uint32 attrsonly, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, LDAP_TIMEVAL* timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_sA(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, LDAP_TIMEVAL* timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_s(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_st(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, LDAP_TIMEVAL* timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 TimeLimit, uint32 SizeLimit, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_ext_s(ldap* ld, PSTR @base, uint32 @scope, PSTR filter, int8** attrs, uint32 attrsonly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, LDAP_TIMEVAL* timeout, uint32 SizeLimit, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_check_filterW(ldap* ld, PWSTR SearchFilter);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_check_filterA(ldap* ld, PSTR SearchFilter);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modifyW(ldap* ld, PWSTR dn, ldapmodW** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modifyA(ldap* ld, PSTR dn, ldapmodA** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_sW(ldap* ld, PWSTR dn, ldapmodW** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_sA(ldap* ld, PSTR dn, ldapmodA** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_extW(ldap* ld, PWSTR dn, ldapmodW** mods, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_extA(ldap* ld, PSTR dn, ldapmodA** mods, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_sW(ldap* ld, PWSTR dn, ldapmodW** mods, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_sA(ldap* ld, PSTR dn, ldapmodA** mods, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify(ldap* ld, PSTR dn, ldapmodA** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_s(ldap* ld, PSTR dn, ldapmodA** mods);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext(ldap* ld, PSTR dn, ldapmodA** mods, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modify_ext_s(ldap* ld, PSTR dn, ldapmodA** mods, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2W(ldap* ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2A(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdnW(ldap* ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdnA(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_sW(ldap* ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_sA(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_sW(ldap* ExternalHandle, PWSTR DistinguishedName, PWSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_sA(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn2_s(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName, int32 DeleteOldRdn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_modrdn_s(ldap* ExternalHandle, PSTR DistinguishedName, PSTR NewDistinguishedName);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_extW(ldap* ld, PWSTR dn, PWSTR NewRDN, PWSTR NewParent, int32 DeleteOldRdn, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_extA(ldap* ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_sW(ldap* ld, PWSTR dn, PWSTR NewRDN, PWSTR NewParent, int32 DeleteOldRdn, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_sA(ldap* ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext(ldap* ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_rename_ext_s(ldap* ld, PSTR dn, PSTR NewRDN, PSTR NewParent, int32 DeleteOldRdn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_addW(ldap* ld, PWSTR dn, ldapmodW** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_addA(ldap* ld, PSTR dn, ldapmodA** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_sW(ldap* ld, PWSTR dn, ldapmodW** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_sA(ldap* ld, PSTR dn, ldapmodA** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_extW(ldap* ld, PWSTR dn, ldapmodW** attrs, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_extA(ldap* ld, PSTR dn, ldapmodA** attrs, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_sW(ldap* ld, PWSTR dn, ldapmodW** attrs, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_sA(ldap* ld, PSTR dn, ldapmodA** attrs, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add(ldap* ld, PSTR dn, ldapmodA** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_s(ldap* ld, PSTR dn, ldapmodA** attrs);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext(ldap* ld, PSTR dn, ldapmodA** attrs, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_add_ext_s(ldap* ld, PSTR dn, ldapmodA** attrs, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compareW(ldap* ld, PWSTR dn, PWSTR attr, PWSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compareA(ldap* ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_sW(ldap* ld, PWSTR dn, PWSTR attr, PWSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_sA(ldap* ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare(ldap* ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_s(ldap* ld, PSTR dn, PSTR attr, PSTR value);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_extW(ldap* ld, PWSTR dn, PWSTR Attr, PWSTR Value, LDAP_BERVAL* Data, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_extA(ldap* ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_sW(ldap* ld, PWSTR dn, PWSTR Attr, PWSTR Value, LDAP_BERVAL* Data, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_sA(ldap* ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext(ldap* ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_compare_ext_s(ldap* ld, PSTR dn, PSTR Attr, PSTR Value, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_deleteW(ldap* ld, PWSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_deleteA(ldap* ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_sW(ldap* ld, PWSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_sA(ldap* ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_extW(ldap* ld, PWSTR dn, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_extA(ldap* ld, PSTR dn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_sW(ldap* ld, PWSTR dn, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_sA(ldap* ld, PSTR dn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete(ldap* ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_s(ldap* ld, PSTR dn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext(ldap* ld, PSTR dn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_delete_ext_s(ldap* ld, PSTR dn, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_abandon(ldap* ld, uint32 msgid);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_result(ldap* ld, uint32 msgid, uint32 all, LDAP_TIMEVAL* timeout, LDAPMessage** res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_msgfree(LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_result2error(ldap* ld, LDAPMessage* res, uint32 freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_resultW(ldap* Connection, LDAPMessage* ResultMessage, uint32* ReturnCode, PWSTR* MatchedDNs, PWSTR* ErrorMessage, uint16*** Referrals, ldapcontrolW*** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_resultA(ldap* Connection, LDAPMessage* ResultMessage, uint32* ReturnCode, PSTR* MatchedDNs, PSTR* ErrorMessage, int8*** Referrals, ldapcontrolA*** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_extended_resultA(ldap* Connection, LDAPMessage* ResultMessage, PSTR* ResultOID, LDAP_BERVAL** ResultData, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_extended_resultW(ldap* Connection, LDAPMessage* ResultMessage, PWSTR* ResultOID, LDAP_BERVAL** ResultData, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_freeA(ldapcontrolA** Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_freeA(ldapcontrolA* Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_freeW(ldapcontrolW** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_freeW(ldapcontrolW* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controlsW(ldapcontrolW** Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controlsA(ldapcontrolA** Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_result(ldap* Connection, LDAPMessage* ResultMessage, uint32* ReturnCode, PSTR* MatchedDNs, PSTR* ErrorMessage, PSTR** Referrals, ldapcontrolA*** ServerControls, BOOLEAN Freeit);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_controls_free(ldapcontrolA** Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_control_free(ldapcontrolA* Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_free_controls(ldapcontrolA** Controls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_err2stringW(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_err2stringA(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_err2string(uint32 err);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_perror(ldap* ld, PSTR msg);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_first_entry(ldap* ld, LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_next_entry(ldap* ld, LDAPMessage* entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_entries(ldap* ld, LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_first_attributeW(ldap* ld, LDAPMessage* entry, berelement** ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_first_attributeA(ldap* ld, LDAPMessage* entry, berelement** ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_first_attribute(ldap* ld, LDAPMessage* entry, berelement** ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_next_attributeW(ldap* ld, LDAPMessage* entry, berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_next_attributeA(ldap* ld, LDAPMessage* entry, berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_next_attribute(ldap* ld, LDAPMessage* entry, berelement* ptr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR* ldap_get_valuesW(ldap* ld, LDAPMessage* entry, PWSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_get_valuesA(ldap* ld, LDAPMessage* entry, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR* ldap_get_values(ldap* ld, LDAPMessage* entry, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_lenW(ldap* ExternalHandle, LDAPMessage* Message, PWSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_lenA(ldap* ExternalHandle, LDAPMessage* Message, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL** ldap_get_values_len(ldap* ExternalHandle, LDAPMessage* Message, PSTR attr);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_valuesW(PWSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_valuesA(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_values(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_values_len(LDAP_BERVAL** vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_freeW(PWSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_freeA(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_free(PSTR* vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_value_free_len(LDAP_BERVAL** vals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR ldap_get_dnW(ldap* ld, LDAPMessage* entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_get_dnA(ldap* ld, LDAPMessage* entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR ldap_get_dn(ldap* ld, LDAPMessage* entry);
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
		public static extern void ber_bvfree(LDAP_BERVAL* bv);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ldap_memfree(PSTR Block);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dnW(PWSTR ufn, PWSTR* pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dnA(PSTR ufn, PSTR* pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_ufn2dn(PSTR ufn, PSTR* pDn);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_startup(ldap_version_info* version, HANDLE* Instance);
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
		public static extern uint32 ldap_create_sort_controlA(ldap* ExternalHandle, ldapsortkeyA** SortKeys, uint8 IsCritical, ldapcontrolA** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_sort_controlW(ldap* ExternalHandle, ldapsortkeyW** SortKeys, uint8 IsCritical, ldapcontrolW** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_controlA(ldap* ExternalHandle, ldapcontrolA** Control, uint32* Result, PSTR* Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_controlW(ldap* ExternalHandle, ldapcontrolW** Control, uint32* Result, PWSTR* Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_sort_control(ldap* ExternalHandle, ldapsortkeyA** SortKeys, uint8 IsCritical, ldapcontrolA** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_sort_control(ldap* ExternalHandle, ldapcontrolA** Control, uint32* Result, PSTR* Attribute);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_encode_sort_controlW(ldap* ExternalHandle, ldapsortkeyW** SortKeys, ldapcontrolW* Control, BOOLEAN Criticality);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_encode_sort_controlA(ldap* ExternalHandle, ldapsortkeyA** SortKeys, ldapcontrolA* Control, BOOLEAN Criticality);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_controlW(ldap* ExternalHandle, uint32 PageSize, LDAP_BERVAL* Cookie, uint8 IsCritical, ldapcontrolW** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_controlA(ldap* ExternalHandle, uint32 PageSize, LDAP_BERVAL* Cookie, uint8 IsCritical, ldapcontrolA** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_controlW(ldap* ExternalHandle, ldapcontrolW** ServerControls, uint32* TotalCount, LDAP_BERVAL** Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_controlA(ldap* ExternalHandle, ldapcontrolA** ServerControls, uint32* TotalCount, LDAP_BERVAL** Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_create_page_control(ldap* ExternalHandle, uint32 PageSize, LDAP_BERVAL* Cookie, uint8 IsCritical, ldapcontrolA** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_page_control(ldap* ExternalHandle, ldapcontrolA** ServerControls, uint32* TotalCount, LDAP_BERVAL** Cookie);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_pageW(ldap* ExternalHandle, PWSTR DistinguishedName, uint32 ScopeOfSearch, PWSTR SearchFilter, uint16** AttributeList, uint32 AttributesOnly, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, ldapsortkeyW** SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_pageA(ldap* ExternalHandle, PSTR DistinguishedName, uint32 ScopeOfSearch, PSTR SearchFilter, int8** AttributeList, uint32 AttributesOnly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, ldapsortkeyA** SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldapsearch* ldap_search_init_page(ldap* ExternalHandle, PSTR DistinguishedName, uint32 ScopeOfSearch, PSTR SearchFilter, int8** AttributeList, uint32 AttributesOnly, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32 PageTimeLimit, uint32 TotalSizeLimit, ldapsortkeyA** SortKeys);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_next_page(ldap* ExternalHandle, ldapsearch* SearchHandle, uint32 PageSize, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_next_page_s(ldap* ExternalHandle, ldapsearch* SearchHandle, LDAP_TIMEVAL* timeout, uint32 PageSize, uint32* TotalCount, LDAPMessage** Results);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_get_paged_count(ldap* ExternalHandle, ldapsearch* SearchBlock, uint32* TotalCount, LDAPMessage* Results);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_search_abandon_page(ldap* ExternalHandle, ldapsearch* SearchBlock);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_create_vlv_controlW(ldap* ExternalHandle, ldapvlvinfo* VlvInfo, uint8 IsCritical, ldapcontrolW** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_create_vlv_controlA(ldap* ExternalHandle, ldapvlvinfo* VlvInfo, uint8 IsCritical, ldapcontrolA** Control);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_parse_vlv_controlW(ldap* ExternalHandle, ldapcontrolW** Control, uint32* TargetPos, uint32* ListCount, LDAP_BERVAL** Context, int32* ErrCode);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ldap_parse_vlv_controlA(ldap* ExternalHandle, ldapcontrolA** Control, uint32* TargetPos, uint32* ListCount, LDAP_BERVAL** Context, int32* ErrCode);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_start_tls_sW(ldap* ExternalHandle, uint32* ServerReturnValue, LDAPMessage** result, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_start_tls_sA(ldap* ExternalHandle, uint32* ServerReturnValue, LDAPMessage** result, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN ldap_stop_tls_s(ldap* ExternalHandle);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_first_reference(ldap* ld, LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAPMessage* ldap_next_reference(ldap* ld, LDAPMessage* entry);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_count_references(ldap* ld, LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_referenceW(ldap* Connection, LDAPMessage* ResultMessage, PWSTR** Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_referenceA(ldap* Connection, LDAPMessage* ResultMessage, PSTR** Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_parse_reference(ldap* Connection, LDAPMessage* ResultMessage, PSTR** Referrals);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operationW(ldap* ld, PWSTR Oid, LDAP_BERVAL* Data, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operationA(ldap* ld, PSTR Oid, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation_sA(ldap* ExternalHandle, PSTR Oid, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, PSTR* ReturnedOid, LDAP_BERVAL** ReturnedData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation_sW(ldap* ExternalHandle, PWSTR Oid, LDAP_BERVAL* Data, ldapcontrolW** ServerControls, ldapcontrolW** ClientControls, PWSTR* ReturnedOid, LDAP_BERVAL** ReturnedData);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_extended_operation(ldap* ld, PSTR Oid, LDAP_BERVAL* Data, ldapcontrolA** ServerControls, ldapcontrolA** ClientControls, uint32* MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ldap_close_extended_op(ldap* ld, uint32 MessageNumber);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LdapGetLastError();
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LdapMapErrorToWin32(uint32 LdapError);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern ldap* ldap_conn_from_msg(ldap* PrimaryConn, LDAPMessage* res);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern berelement* ber_init(LDAP_BERVAL* pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ber_free(berelement* pBerElement, int32 fbuf);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ber_bvecfree(LDAP_BERVAL** pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LDAP_BERVAL* ber_bvdup(LDAP_BERVAL* pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern berelement* ber_alloc_t(int32 options);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_skip_tag(berelement* pBerElement, uint32* pLen);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_peek_tag(berelement* pBerElement, uint32* pLen);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_first_element(berelement* pBerElement, uint32* pLen, CHAR** ppOpaque);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_next_element(berelement* pBerElement, uint32* pLen, PSTR opaque);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ber_flatten(berelement* pBerElement, LDAP_BERVAL** pBerVal);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ber_printf(berelement* pBerElement, PSTR fmt);
		[Import("wldap32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ber_scanf(berelement* pBerElement, PSTR fmt);
		
	}
}
