using System;

// namespace NetworkManagement.NetworkPolicyServer
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 RADIUS_EXTENSION_VERSION = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum ATTRIBUTEID : uint32
		{
			ATTRIBUTE_UNDEFINED = 0,
			ATTRIBUTE_MIN_VALUE = 1,
			RADIUS_ATTRIBUTE_USER_NAME = 1,
			RADIUS_ATTRIBUTE_USER_PASSWORD = 2,
			RADIUS_ATTRIBUTE_CHAP_PASSWORD = 3,
			RADIUS_ATTRIBUTE_NAS_IP_ADDRESS = 4,
			RADIUS_ATTRIBUTE_NAS_PORT = 5,
			RADIUS_ATTRIBUTE_SERVICE_TYPE = 6,
			RADIUS_ATTRIBUTE_FRAMED_PROTOCOL = 7,
			RADIUS_ATTRIBUTE_FRAMED_IP_ADDRESS = 8,
			RADIUS_ATTRIBUTE_FRAMED_IP_NETMASK = 9,
			RADIUS_ATTRIBUTE_FRAMED_ROUTING = 10,
			RADIUS_ATTRIBUTE_FILTER_ID = 11,
			RADIUS_ATTRIBUTE_FRAMED_MTU = 12,
			RADIUS_ATTRIBUTE_FRAMED_COMPRESSION = 13,
			RADIUS_ATTRIBUTE_LOGIN_IP_HOST = 14,
			RADIUS_ATTRIBUTE_LOGIN_SERVICE = 15,
			RADIUS_ATTRIBUTE_LOGIN_TCP_PORT = 16,
			RADIUS_ATTRIBUTE_UNASSIGNED1 = 17,
			RADIUS_ATTRIBUTE_REPLY_MESSAGE = 18,
			RADIUS_ATTRIBUTE_CALLBACK_NUMBER = 19,
			RADIUS_ATTRIBUTE_CALLBACK_ID = 20,
			RADIUS_ATTRIBUTE_UNASSIGNED2 = 21,
			RADIUS_ATTRIBUTE_FRAMED_ROUTE = 22,
			RADIUS_ATTRIBUTE_FRAMED_IPX_NETWORK = 23,
			RADIUS_ATTRIBUTE_STATE = 24,
			RADIUS_ATTRIBUTE_CLASS = 25,
			RADIUS_ATTRIBUTE_VENDOR_SPECIFIC = 26,
			RADIUS_ATTRIBUTE_SESSION_TIMEOUT = 27,
			RADIUS_ATTRIBUTE_IDLE_TIMEOUT = 28,
			RADIUS_ATTRIBUTE_TERMINATION_ACTION = 29,
			RADIUS_ATTRIBUTE_CALLED_STATION_ID = 30,
			RADIUS_ATTRIBUTE_CALLING_STATION_ID = 31,
			RADIUS_ATTRIBUTE_NAS_IDENTIFIER = 32,
			RADIUS_ATTRIBUTE_PROXY_STATE = 33,
			RADIUS_ATTRIBUTE_LOGIN_LAT_SERVICE = 34,
			RADIUS_ATTRIBUTE_LOGIN_LAT_NODE = 35,
			RADIUS_ATTRIBUTE_LOGIN_LAT_GROUP = 36,
			RADIUS_ATTRIBUTE_FRAMED_APPLETALK_LINK = 37,
			RADIUS_ATTRIBUTE_FRAMED_APPLETALK_NET = 38,
			RADIUS_ATTRIBUTE_FRAMED_APPLETALK_ZONE = 39,
			RADIUS_ATTRIBUTE_ACCT_STATUS_TYPE = 40,
			RADIUS_ATTRIBUTE_ACCT_DELAY_TIME = 41,
			RADIUS_ATTRIBUTE_ACCT_INPUT_OCTETS = 42,
			RADIUS_ATTRIBUTE_ACCT_OUTPUT_OCTETS = 43,
			RADIUS_ATTRIBUTE_ACCT_SESSION_ID = 44,
			RADIUS_ATTRIBUTE_ACCT_AUTHENTIC = 45,
			RADIUS_ATTRIBUTE_ACCT_SESSION_TIME = 46,
			RADIUS_ATTRIBUTE_ACCT_INPUT_PACKETS = 47,
			RADIUS_ATTRIBUTE_ACCT_OUTPUT_PACKETS = 48,
			RADIUS_ATTRIBUTE_ACCT_TERMINATE_CAUSE = 49,
			RADIUS_ATTRIBUTE_ACCT_MULTI_SSN_ID = 50,
			RADIUS_ATTRIBUTE_ACCT_LINK_COUNT = 51,
			RADIUS_ATTRIBUTE_CHAP_CHALLENGE = 60,
			RADIUS_ATTRIBUTE_NAS_PORT_TYPE = 61,
			RADIUS_ATTRIBUTE_PORT_LIMIT = 62,
			RADIUS_ATTRIBUTE_LOGIN_LAT_PORT = 63,
			RADIUS_ATTRIBUTE_TUNNEL_TYPE = 64,
			RADIUS_ATTRIBUTE_TUNNEL_MEDIUM_TYPE = 65,
			RADIUS_ATTRIBUTE_TUNNEL_CLIENT_ENDPT = 66,
			RADIUS_ATTRIBUTE_TUNNEL_SERVER_ENDPT = 67,
			RADIUS_ATTRIBUTE_ACCT_TUNNEL_CONN = 68,
			RADIUS_ATTRIBUTE_TUNNEL_PASSWORD = 69,
			RADIUS_ATTRIBUTE_ARAP_PASSWORD = 70,
			RADIUS_ATTRIBUTE_ARAP_FEATURES = 71,
			RADIUS_ATTRIBUTE_ARAP_ZONE_ACCESS = 72,
			RADIUS_ATTRIBUTE_ARAP_SECURITY = 73,
			RADIUS_ATTRIBUTE_ARAP_SECURITY_DATA = 74,
			RADIUS_ATTRIBUTE_PASSWORD_RETRY = 75,
			RADIUS_ATTRIBUTE_PROMPT = 76,
			RADIUS_ATTRIBUTE_CONNECT_INFO = 77,
			RADIUS_ATTRIBUTE_CONFIGURATION_TOKEN = 78,
			RADIUS_ATTRIBUTE_EAP_MESSAGE = 79,
			RADIUS_ATTRIBUTE_SIGNATURE = 80,
			RADIUS_ATTRIBUTE_TUNNEL_PVT_GROUP_ID = 81,
			RADIUS_ATTRIBUTE_TUNNEL_ASSIGNMENT_ID = 82,
			RADIUS_ATTRIBUTE_TUNNEL_PREFERENCE = 83,
			RADIUS_ATTRIBUTE_ARAP_CHALLENGE_RESPONSE = 84,
			RADIUS_ATTRIBUTE_ACCT_INTERIM_INTERVAL = 85,
			RADIUS_ATTRIBUTE_NAS_IPv6_ADDRESS = 95,
			RADIUS_ATTRIBUTE_FRAMED_INTERFACE_ID = 96,
			RADIUS_ATTRIBUTE_FRAMED_IPv6_PREFIX = 97,
			RADIUS_ATTRIBUTE_LOGIN_IPv6_HOST = 98,
			RADIUS_ATTRIBUTE_FRAMED_IPv6_ROUTE = 99,
			RADIUS_ATTRIBUTE_FRAMED_IPv6_POOL = 100,
			IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IP_ADDRESS = 4096,
			IAS_ATTRIBUTE_SAVED_RADIUS_CALLBACK_NUMBER = 4097,
			IAS_ATTRIBUTE_NP_CALLING_STATION_ID = 4098,
			IAS_ATTRIBUTE_SAVED_NP_CALLING_STATION_ID = 4099,
			IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_ROUTE = 4100,
			IAS_ATTRIBUTE_IGNORE_USER_DIALIN_PROPERTIES = 4101,
			IAS_ATTRIBUTE_NP_TIME_OF_DAY = 4102,
			IAS_ATTRIBUTE_NP_CALLED_STATION_ID = 4103,
			IAS_ATTRIBUTE_NP_ALLOWED_PORT_TYPES = 4104,
			IAS_ATTRIBUTE_NP_AUTHENTICATION_TYPE = 4105,
			IAS_ATTRIBUTE_NP_ALLOWED_EAP_TYPE = 4106,
			IAS_ATTRIBUTE_SHARED_SECRET = 4107,
			IAS_ATTRIBUTE_CLIENT_IP_ADDRESS = 4108,
			IAS_ATTRIBUTE_CLIENT_PACKET_HEADER = 4109,
			IAS_ATTRIBUTE_TOKEN_GROUPS = 4110,
			IAS_ATTRIBUTE_ALLOW_DIALIN = 4111,
			IAS_ATTRIBUTE_REQUEST_ID = 4112,
			IAS_ATTRIBUTE_MANIPULATION_TARGET = 4113,
			IAS_ATTRIBUTE_MANIPULATION_RULE = 4114,
			IAS_ATTRIBUTE_ORIGINAL_USER_NAME = 4115,
			IAS_ATTRIBUTE_CLIENT_VENDOR_TYPE = 4116,
			IAS_ATTRIBUTE_CLIENT_UDP_PORT = 4117,
			MS_ATTRIBUTE_CHAP_CHALLENGE = 4118,
			MS_ATTRIBUTE_CHAP_RESPONSE = 4119,
			MS_ATTRIBUTE_CHAP_DOMAIN = 4120,
			MS_ATTRIBUTE_CHAP_ERROR = 4121,
			MS_ATTRIBUTE_CHAP_CPW1 = 4122,
			MS_ATTRIBUTE_CHAP_CPW2 = 4123,
			MS_ATTRIBUTE_CHAP_LM_ENC_PW = 4124,
			MS_ATTRIBUTE_CHAP_NT_ENC_PW = 4125,
			MS_ATTRIBUTE_CHAP_MPPE_KEYS = 4126,
			IAS_ATTRIBUTE_AUTHENTICATION_TYPE = 4127,
			IAS_ATTRIBUTE_CLIENT_NAME = 4128,
			IAS_ATTRIBUTE_NT4_ACCOUNT_NAME = 4129,
			IAS_ATTRIBUTE_FULLY_QUALIFIED_USER_NAME = 4130,
			IAS_ATTRIBUTE_NTGROUPS = 4131,
			IAS_ATTRIBUTE_EAP_FRIENDLY_NAME = 4132,
			IAS_ATTRIBUTE_AUTH_PROVIDER_TYPE = 4133,
			MS_ATTRIBUTE_ACCT_AUTH_TYPE = 4134,
			MS_ATTRIBUTE_ACCT_EAP_TYPE = 4135,
			IAS_ATTRIBUTE_PACKET_TYPE = 4136,
			IAS_ATTRIBUTE_AUTH_PROVIDER_NAME = 4137,
			IAS_ATTRIBUTE_ACCT_PROVIDER_TYPE = 4138,
			IAS_ATTRIBUTE_ACCT_PROVIDER_NAME = 4139,
			MS_ATTRIBUTE_MPPE_SEND_KEY = 4140,
			MS_ATTRIBUTE_MPPE_RECV_KEY = 4141,
			IAS_ATTRIBUTE_REASON_CODE = 4142,
			MS_ATTRIBUTE_FILTER = 4143,
			MS_ATTRIBUTE_CHAP2_RESPONSE = 4144,
			MS_ATTRIBUTE_CHAP2_SUCCESS = 4145,
			MS_ATTRIBUTE_CHAP2_CPW = 4146,
			MS_ATTRIBUTE_RAS_VENDOR = 4147,
			MS_ATTRIBUTE_RAS_VERSION = 4148,
			IAS_ATTRIBUTE_NP_NAME = 4149,
			MS_ATTRIBUTE_PRIMARY_DNS_SERVER = 4150,
			MS_ATTRIBUTE_SECONDARY_DNS_SERVER = 4151,
			MS_ATTRIBUTE_PRIMARY_NBNS_SERVER = 4152,
			MS_ATTRIBUTE_SECONDARY_NBNS_SERVER = 4153,
			IAS_ATTRIBUTE_PROXY_POLICY_NAME = 4154,
			IAS_ATTRIBUTE_PROVIDER_TYPE = 4155,
			IAS_ATTRIBUTE_PROVIDER_NAME = 4156,
			IAS_ATTRIBUTE_REMOTE_SERVER_ADDRESS = 4157,
			IAS_ATTRIBUTE_GENERATE_CLASS_ATTRIBUTE = 4158,
			MS_ATTRIBUTE_RAS_CLIENT_NAME = 4159,
			MS_ATTRIBUTE_RAS_CLIENT_VERSION = 4160,
			IAS_ATTRIBUTE_ALLOWED_CERTIFICATE_EKU = 4161,
			IAS_ATTRIBUTE_EXTENSION_STATE = 4162,
			IAS_ATTRIBUTE_GENERATE_SESSION_TIMEOUT = 4163,
			IAS_ATTRIBUTE_SESSION_TIMEOUT = 4164,
			MS_ATTRIBUTE_QUARANTINE_IPFILTER = 4165,
			MS_ATTRIBUTE_QUARANTINE_SESSION_TIMEOUT = 4166,
			MS_ATTRIBUTE_USER_SECURITY_IDENTITY = 4167,
			IAS_ATTRIBUTE_REMOTE_RADIUS_TO_WINDOWS_USER_MAPPING = 4168,
			IAS_ATTRIBUTE_PASSPORT_USER_MAPPING_UPN_SUFFIX = 4169,
			IAS_ATTRIBUTE_TUNNEL_TAG = 4170,
			IAS_ATTRIBUTE_NP_PEAPUPFRONT_ENABLED = 4171,
			IAS_ATTRIBUTE_CERTIFICATE_EKU = 8097,
			IAS_ATTRIBUTE_EAP_CONFIG = 8098,
			IAS_ATTRIBUTE_PEAP_EMBEDDED_EAP_TYPEID = 8099,
			IAS_ATTRIBUTE_PEAP_FAST_ROAMED_SESSION = 8100,
			IAS_ATTRIBUTE_EAP_TYPEID = 8101,
			MS_ATTRIBUTE_EAP_TLV = 8102,
			IAS_ATTRIBUTE_REJECT_REASON_CODE = 8103,
			IAS_ATTRIBUTE_PROXY_EAP_CONFIG = 8104,
			IAS_ATTRIBUTE_EAP_SESSION = 8105,
			IAS_ATTRIBUTE_IS_REPLAY = 8106,
			IAS_ATTRIBUTE_CLEAR_TEXT_PASSWORD = 8107,
			MS_ATTRIBUTE_IDENTITY_TYPE = 8108,
			MS_ATTRIBUTE_SERVICE_CLASS = 8109,
			MS_ATTRIBUTE_QUARANTINE_USER_CLASS = 8110,
			MS_ATTRIBUTE_QUARANTINE_STATE = 8111,
			IAS_ATTRIBUTE_OVERRIDE_RAP_AUTH = 8112,
			IAS_ATTRIBUTE_PEAP_CHANNEL_UP = 8113,
			IAS_ATTRIBUTE_NAME_MAPPED = 8114,
			IAS_ATTRIBUTE_POLICY_ENFORCED = 8115,
			IAS_ATTRIBUTE_MACHINE_NTGROUPS = 8116,
			IAS_ATTRIBUTE_USER_NTGROUPS = 8117,
			IAS_ATTRIBUTE_MACHINE_TOKEN_GROUPS = 8118,
			IAS_ATTRIBUTE_USER_TOKEN_GROUPS = 8119,
			MS_ATTRIBUTE_QUARANTINE_GRACE_TIME = 8120,
			IAS_ATTRIBUTE_QUARANTINE_URL = 8121,
			IAS_ATTRIBUTE_QUARANTINE_FIXUP_SERVERS = 8122,
			MS_ATTRIBUTE_NOT_QUARANTINE_CAPABLE = 8123,
			IAS_ATTRIBUTE_QUARANTINE_SYSTEM_HEALTH_RESULT = 8124,
			IAS_ATTRIBUTE_QUARANTINE_SYSTEM_HEALTH_VALIDATORS = 8125,
			IAS_ATTRIBUTE_MACHINE_NAME = 8126,
			IAS_ATTRIBUTE_NT4_MACHINE_NAME = 8127,
			IAS_ATTRIBUTE_QUARANTINE_SESSION_HANDLE = 8128,
			IAS_ATTRIBUTE_FULLY_QUALIFIED_MACHINE_NAME = 8129,
			IAS_ATTRIBUTE_QUARANTINE_FIXUP_SERVERS_CONFIGURATION = 8130,
			IAS_ATTRIBUTE_CLIENT_QUARANTINE_COMPATIBLE = 8131,
			MS_ATTRIBUTE_NETWORK_ACCESS_SERVER_TYPE = 8132,
			IAS_ATTRIBUTE_QUARANTINE_SESSION_ID = 8133,
			MS_ATTRIBUTE_AFW_QUARANTINE_ZONE = 8134,
			MS_ATTRIBUTE_AFW_PROTECTION_LEVEL = 8135,
			IAS_ATTRIBUTE_QUARANTINE_UPDATE_NON_COMPLIANT = 8136,
			IAS_ATTRIBUTE_REQUEST_START_TIME = 8137,
			MS_ATTRIBUTE_MACHINE_NAME = 8138,
			IAS_ATTRIBUTE_CLIENT_IPv6_ADDRESS = 8139,
			IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_INTERFACE_ID = 8140,
			IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IPv6_PREFIX = 8141,
			IAS_ATTRIBUTE_SAVED_RADIUS_FRAMED_IPv6_ROUTE = 8142,
			MS_ATTRIBUTE_QUARANTINE_GRACE_TIME_CONFIGURATION = 8143,
			MS_ATTRIBUTE_IPv6_FILTER = 8144,
			MS_ATTRIBUTE_IPV4_REMEDIATION_SERVERS = 8145,
			MS_ATTRIBUTE_IPV6_REMEDIATION_SERVERS = 8146,
			IAS_ATTRIBUTE_PROXY_RETRY_COUNT = 8147,
			IAS_ATTRIBUTE_MACHINE_INVENTORY = 8148,
			IAS_ATTRIBUTE_ABSOLUTE_TIME = 8149,
			MS_ATTRIBUTE_QUARANTINE_SOH = 8150,
			IAS_ATTRIBUTE_EAP_TYPES_CONFIGURED_IN_PROXYPOLICY = 8151,
			MS_ATTRIBUTE_HCAP_LOCATION_GROUP_NAME = 8152,
			MS_ATTRIBUTE_EXTENDED_QUARANTINE_STATE = 8153,
			IAS_ATTRIBUTE_SOH_CARRIER_EAPTLV = 8154,
			MS_ATTRIBUTE_HCAP_USER_GROUPS = 8155,
			IAS_ATTRIBUTE_SAVED_MACHINE_HEALTHCHECK_ONLY = 8156,
			IAS_ATTRIBUTE_POLICY_EVALUATED_SHV = 8157,
			MS_ATTRIBUTE_RAS_CORRELATION_ID = 8158,
			MS_ATTRIBUTE_HCAP_USER_NAME = 8159,
			IAS_ATTRIBUTE_NT4_HCAP_ACCOUNT_NAME = 8160,
			IAS_ATTRIBUTE_USER_TOKEN_SID = 8161,
			IAS_ATTRIBUTE_MACHINE_TOKEN_SID = 8162,
			IAS_ATTRIBUTE_MACHINE_VALIDATED = 8163,
			MS_ATTRIBUTE_USER_IPv4_ADDRESS = 8164,
			MS_ATTRIBUTE_USER_IPv6_ADDRESS = 8165,
			MS_ATTRIBUTE_TSG_DEVICE_REDIRECTION = 8166,
			IAS_ATTRIBUTE_ACCEPT_REASON_CODE = 8167,
			IAS_ATTRIBUTE_LOGGING_RESULT = 8168,
			IAS_ATTRIBUTE_SERVER_IP_ADDRESS = 8169,
			IAS_ATTRIBUTE_SERVER_IPv6_ADDRESS = 8170,
			IAS_ATTRIBUTE_RADIUS_USERNAME_ENCODING_ASCII = 8171,
			MS_ATTRIBUTE_RAS_ROUTING_DOMAIN_ID = 8172,
			IAS_ATTRIBUTE_CERTIFICATE_THUMBPRINT = 8250,
			RAS_ATTRIBUTE_ENCRYPTION_TYPE = 4294967206,
			RAS_ATTRIBUTE_ENCRYPTION_POLICY = 4294967207,
			RAS_ATTRIBUTE_BAP_REQUIRED = 4294967208,
			RAS_ATTRIBUTE_BAP_LINE_DOWN_TIME = 4294967209,
			RAS_ATTRIBUTE_BAP_LINE_DOWN_LIMIT = 4294967210,
		}
		public enum NEW_LOG_FILE_FREQUENCY : int32
		{
			UNLIMITED_SIZE = 0,
			DAILY = 1,
			WEEKLY = 2,
			MONTHLY = 3,
			WHEN_FILE_SIZE_REACHES = 4,
		}
		public enum AUTHENTICATION_TYPE : int32
		{
			INVALID = 0,
			PAP = 1,
			MD5CHAP = 2,
			MSCHAP = 3,
			MSCHAP2 = 4,
			EAP = 5,
			ARAP = 6,
			NONE = 7,
			CUSTOM = 8,
			MSCHAP_CPW = 9,
			MSCHAP2_CPW = 10,
			PEAP = 11,
		}
		public enum IDENTITY_TYPE_ALT : int32
		{
			IAS_IDENTITY_NO_DEFAULT = 1,
		}
		public enum ATTRIBUTESYNTAX : int32
		{
			BOOLEAN = 1,
			INTEGER = 2,
			ENUMERATOR = 3,
			INETADDR = 4,
			STRING = 5,
			OCTETSTRING = 6,
			UTCTIME = 7,
			PROVIDERSPECIFIC = 8,
			UNSIGNEDINTEGER = 9,
			INETADDR6 = 10,
		}
		public enum ATTRIBUTERESTRICTIONS : int32
		{
			MULTIVALUED = 1,
			ALLOWEDINPROFILE = 2,
			ALLOWEDINCONDITION = 4,
			ALLOWEDINPROXYPROFILE = 8,
			ALLOWEDINPROXYCONDITION = 16,
			ALLOWEDINVPNDIALUP = 32,
			ALLOWEDIN8021X = 64,
		}
		public enum ATTRIBUTEFILTER : int32
		{
			NONE = 0,
			VPN_DIALUP = 1,
			IEEE_802_1x = 2,
		}
		public enum ATTRIBUTEINFO : int32
		{
			NAME = 1,
			SYNTAX = 2,
			RESTRICTIONS = 3,
			DESCRIPTION = 4,
			VENDORID = 5,
			LDAPNAME = 6,
			VENDORTYPE = 7,
		}
		public enum IASCOMMONPROPERTIES : int32
		{
			RESERVED = 0,
			CLASS = 1,
			NAME = 2,
			DESCRIPTION = 3,
			ID = 4,
			DATASTORE_NAME = 5,
			TEMPLATE_GUID = 6,
			OPAQUE = 7,
			START = 1024,
		}
		public enum USERPROPERTIES : int32
		{
			CALLING_STATION_ID = 1024,
			SAVED_CALLING_STATION_ID = 1025,
			RADIUS_CALLBACK_NUMBER = 1026,
			RADIUS_FRAMED_ROUTE = 1027,
			RADIUS_FRAMED_IP_ADDRESS = 1028,
			SAVED_RADIUS_CALLBACK_NUMBER = 1029,
			SAVED_RADIUS_FRAMED_ROUTE = 1030,
			SAVED_RADIUS_FRAMED_IP_ADDRESS = 1031,
			ALLOW_DIALIN = 1032,
			SERVICE_TYPE = 1033,
			RADIUS_FRAMED_IPV6_ROUTE = 1034,
			SAVED_RADIUS_FRAMED_IPV6_ROUTE = 1035,
			RADIUS_FRAMED_INTERFACE_ID = 1036,
			SAVED_RADIUS_FRAMED_INTERFACE_ID = 1037,
			RADIUS_FRAMED_IPV6_PREFIX = 1038,
			SAVED_RADIUS_FRAMED_IPV6_PREFIX = 1039,
		}
		public enum DICTIONARYPROPERTIES : int32
		{
			ATTRIBUTES_COLLECTION = 1024,
			LOCATION = 1025,
		}
		public enum ATTRIBUTEPROPERTIES : int32
		{
			ID = 1024,
			VENDOR_ID = 1025,
			VENDOR_TYPE_ID = 1026,
			IS_ENUMERABLE = 1027,
			ENUM_NAMES = 1028,
			ENUM_VALUES = 1029,
			SYNTAX = 1030,
			ALLOW_MULTIPLE = 1031,
			ALLOW_LOG_ORDINAL = 1032,
			ALLOW_IN_PROFILE = 1033,
			ALLOW_IN_CONDITION = 1034,
			DISPLAY_NAME = 1035,
			VALUE = 1036,
			ALLOW_IN_PROXY_PROFILE = 1037,
			ALLOW_IN_PROXY_CONDITION = 1038,
			ALLOW_IN_VPNDIALUP = 1039,
			ALLOW_IN_8021X = 1040,
			ENUM_FILTERS = 1041,
		}
		public enum IASPROPERTIES : int32
		{
			RADIUSSERVERGROUPS_COLLECTION = 1024,
			POLICIES_COLLECTION = 1025,
			PROFILES_COLLECTION = 1026,
			PROTOCOLS_COLLECTION = 1027,
			AUDITORS_COLLECTION = 1028,
			REQUESTHANDLERS_COLLECTION = 1029,
			PROXYPOLICIES_COLLECTION = 1030,
			PROXYPROFILES_COLLECTION = 1031,
			REMEDIATIONSERVERGROUPS_COLLECTION = 1032,
			SHVTEMPLATES_COLLECTION = 1033,
		}
		public enum TEMPLATESPROPERTIES : int32
		{
			POLICIES_TEMPLATES = 1024,
			PROFILES_TEMPLATES = 1025,
			PROFILES_COLLECTION = 1026,
			PROXYPOLICIES_TEMPLATES = 1027,
			PROXYPROFILES_TEMPLATES = 1028,
			PROXYPROFILES_COLLECTION = 1029,
			REMEDIATIONSERVERGROUPS_TEMPLATES = 1030,
			SHVTEMPLATES_TEMPLATES = 1031,
			CLIENTS_TEMPLATES = 1032,
			RADIUSSERVERS_TEMPLATES = 1033,
			SHAREDSECRETS_TEMPLATES = 1034,
			IPFILTERS_TEMPLATES = 1035,
		}
		public enum CLIENTPROPERTIES : int32
		{
			REQUIRE_SIGNATURE = 1024,
			UNUSED = 1025,
			SHARED_SECRET = 1026,
			NAS_MANUFACTURER = 1027,
			ADDRESS = 1028,
			QUARANTINE_COMPATIBLE = 1029,
			ENABLED = 1030,
			SECRET_TEMPLATE_GUID = 1031,
		}
		public enum VENDORPROPERTIES : int32
		{
			PROPERTY_NAS_VENDOR_ID = 1024,
		}
		public enum PROFILEPROPERTIES : int32
		{
			ATTRIBUTES_COLLECTION = 1024,
			IPFILTER_TEMPLATE_GUID = 1025,
		}
		public enum POLICYPROPERTIES : int32
		{
			CONSTRAINT = 1024,
			MERIT = 1025,
			UNUSED0 = 1026,
			UNUSED1 = 1027,
			PROFILE_NAME = 1028,
			ACTION = 1029,
			CONDITIONS_COLLECTION = 1030,
			ENABLED = 1031,
			SOURCETAG = 1032,
		}
		public enum CONDITIONPROPERTIES : int32
		{
			PROPERTY_CONDITION_TEXT = 1024,
		}
		public enum RADIUSSERVERGROUPPROPERTIES : int32
		{
			PROPERTY_RADIUSSERVERGROUP_SERVERS_COLLECTION = 1024,
		}
		public enum RADIUSSERVERPROPERTIES : int32
		{
			AUTH_PORT = 1024,
			AUTH_SECRET = 1025,
			ACCT_PORT = 1026,
			ACCT_SECRET = 1027,
			ADDRESS = 1028,
			FORWARD_ACCT_ONOFF = 1029,
			PRIORITY = 1030,
			WEIGHT = 1031,
			TIMEOUT = 1032,
			MAX_LOST = 1033,
			BLACKOUT = 1034,
			SEND_SIGNATURE = 1035,
			AUTH_SECRET_TEMPLATE_GUID = 1036,
			ACCT_SECRET_TEMPLATE_GUID = 1037,
		}
		public enum REMEDIATIONSERVERGROUPPROPERTIES : int32
		{
			PROPERTY_REMEDIATIONSERVERGROUP_SERVERS_COLLECTION = 1024,
		}
		public enum REMEDIATIONSERVERPROPERTIES : int32
		{
			ADDRESS = 1024,
			FRIENDLY_NAME = 1025,
		}
		public enum SHVTEMPLATEPROPERTIES : int32
		{
			SHV_COMBINATION_TYPE = 1024,
			SHV_LIST = 1025,
			SHVCONFIG_LIST = 1026,
		}
		public enum IPFILTERPROPERTIES : int32
		{
			PROPERTY_IPFILTER_ATTRIBUTES_COLLECTION = 1024,
		}
		public enum SHAREDSECRETPROPERTIES : int32
		{
			PROPERTY_SHAREDSECRET_STRING = 1024,
		}
		public enum IASCOMPONENTPROPERTIES : int32
		{
			ID = 1024,
			PROG_ID = 1025,
			START = 1026,
		}
		public enum PROTOCOLPROPERTIES : int32
		{
			REQUEST_HANDLER = 1026,
			START = 1027,
		}
		public enum RADIUSPROPERTIES : int32
		{
			ACCOUNTING_PORT = 1027,
			AUTHENTICATION_PORT = 1028,
			CLIENTS_COLLECTION = 1029,
			VENDORS_COLLECTION = 1030,
		}
		public enum NTEVENTLOGPROPERTIES : int32
		{
			APPLICATION_EVENTS = 1026,
			MALFORMED = 1027,
			DEBUG = 1028,
		}
		public enum NAMESPROPERTIES : int32
		{
			PROPERTY_NAMES_REALMS = 1026,
		}
		public enum NTSAMPROPERTIES : int32
		{
			PROPERTY_NTSAM_ALLOW_LM_AUTHENTICATION = 1026,
		}
		public enum ACCOUNTINGPROPERTIES : int32
		{
			LOG_ACCOUNTING = 1026,
			LOG_ACCOUNTING_INTERIM = 1027,
			LOG_AUTHENTICATION = 1028,
			LOG_OPEN_NEW_FREQUENCY = 1029,
			LOG_OPEN_NEW_SIZE = 1030,
			LOG_FILE_DIRECTORY = 1031,
			LOG_IAS1_FORMAT = 1032,
			LOG_ENABLE_LOGGING = 1033,
			LOG_DELETE_IF_FULL = 1034,
			SQL_MAX_SESSIONS = 1035,
			LOG_AUTHENTICATION_INTERIM = 1036,
			LOG_FILE_IS_BACKUP = 1037,
			DISCARD_REQUEST_ON_FAILURE = 1038,
		}
		public enum NAPPROPERTIES : int32
		{
			NAP_POLICIES_COLLECTION = 1026,
			SHV_TEMPLATES_COLLECTION = 1027,
		}
		public enum RADIUSPROXYPROPERTIES : int32
		{
			PROPERTY_RADIUSPROXY_SERVERGROUPS = 1026,
		}
		public enum REMEDIATIONSERVERSPROPERTIES : int32
		{
			PROPERTY_REMEDIATIONSERVERS_SERVERGROUPS = 1026,
		}
		public enum SHV_COMBINATION_TYPE : int32
		{
			ALL_PASS = 0,
			ALL_FAIL = 1,
			ONE_OR_MORE_PASS = 2,
			ONE_OR_MORE_FAIL = 3,
			ONE_OR_MORE_INFECTED = 4,
			ONE_OR_MORE_TRANSITIONAL = 5,
			ONE_OR_MORE_UNKNOWN = 6,
			MAX = 7,
		}
		public enum SERVICE_TYPE : int32
		{
			IAS = 0,
			RAS = 1,
			RAMGMTSVC = 2,
			MAX = 3,
		}
		public enum IASOSTYPE : int32
		{
			NT4_WORKSTATION = 0,
			NT5_WORKSTATION = 1,
			NT6_WORKSTATION = 2,
			NT6_1_WORKSTATION = 3,
			NT6_2_WORKSTATION = 4,
			NT6_3_WORKSTATION = 5,
			NT10_0_WORKSTATION = 6,
			NT4_SERVER = 7,
			NT5_SERVER = 8,
			NT6_SERVER = 9,
			NT6_1_SERVER = 10,
			NT6_2_SERVER = 11,
			NT6_3_SERVER = 12,
			NT10_0_SERVER = 13,
		}
		public enum IASDOMAINTYPE : int32
		{
			NONE = 0,
			NT4 = 1,
			NT5 = 2,
			MIXED = 3,
		}
		public enum IASDATASTORE : int32
		{
			LOCAL = 0,
			DIRECTORY = 1,
		}
		public enum RADIUS_ATTRIBUTE_TYPE : int32
		{
			Minimum = 0,
			UserName = 1,
			UserPassword = 2,
			CHAPPassword = 3,
			NASIPAddress = 4,
			NASPort = 5,
			ServiceType = 6,
			FramedProtocol = 7,
			FramedIPAddress = 8,
			FramedIPNetmask = 9,
			FramedRouting = 10,
			FilterId = 11,
			FramedMTU = 12,
			FramedCompression = 13,
			LoginIPHost = 14,
			LoginService = 15,
			LoginPort = 16,
			ReplyMessage = 18,
			CallbackNumber = 19,
			CallbackId = 20,
			FramedRoute = 22,
			FramedIPXNetwork = 23,
			State = 24,
			Class = 25,
			VendorSpecific = 26,
			SessionTimeout = 27,
			IdleTimeout = 28,
			TerminationAction = 29,
			CalledStationId = 30,
			CallingStationId = 31,
			NASIdentifier = 32,
			ProxyState = 33,
			LoginLATService = 34,
			LoginLATNode = 35,
			LoginLATGroup = 36,
			FramedAppleTalkLink = 37,
			FramedAppleTalkNetwork = 38,
			FramedAppleTalkZone = 39,
			AcctStatusType = 40,
			AcctDelayTime = 41,
			AcctInputOctets = 42,
			AcctOutputOctets = 43,
			AcctSessionId = 44,
			AcctAuthentic = 45,
			AcctSessionTime = 46,
			AcctInputPackets = 47,
			AcctOutputPackets = 48,
			AcctTerminationCause = 49,
			CHAPChallenge = 60,
			NASPortType = 61,
			PortLimit = 62,
			TunnelType = 64,
			MediumType = 65,
			TunnelPassword = 69,
			TunnelPrivateGroupID = 81,
			NASIPv6Address = 95,
			FramedInterfaceId = 96,
			FramedIPv6Prefix = 97,
			LoginIPv6Host = 98,
			FramedIPv6Route = 99,
			FramedIPv6Pool = 100,
			Code = 262,
			Identifier = 263,
			Authenticator = 264,
			SrcIPAddress = 265,
			SrcPort = 266,
			Provider = 267,
			StrippedUserName = 268,
			FQUserName = 269,
			PolicyName = 270,
			UniqueId = 271,
			ExtensionState = 272,
			EAPTLV = 273,
			RejectReasonCode = 274,
			CRPPolicyName = 275,
			ProviderName = 276,
			ClearTextPassword = 277,
			SrcIPv6Address = 278,
			CertificateThumbprint = 279,
		}
		public enum RADIUS_CODE : int32
		{
			Unknown = 0,
			AccessRequest = 1,
			AccessAccept = 2,
			AccessReject = 3,
			AccountingRequest = 4,
			AccountingResponse = 5,
			AccessChallenge = 11,
			Discard = 256,
		}
		public enum RADIUS_AUTHENTICATION_PROVIDER : int32
		{
			Unknown = 0,
			UsersFile = 1,
			Proxy = 2,
			WindowsNT = 3,
			MCIS = 4,
			ODBC = 5,
			None = 6,
		}
		public enum RADIUS_REJECT_REASON_CODE : int32
		{
			Undefined = 0,
			AccountUnknown = 1,
			AccountDisabled = 2,
			AccountExpired = 3,
			AuthenticationFailure = 4,
		}
		public enum RADIUS_DATA_TYPE : int32
		{
			Unknown = 0,
			String = 1,
			Address = 2,
			Integer = 3,
			Time = 4,
			Ipv6Address = 5,
		}
		public enum RADIUS_ACTION : int32
		{
			Continue = 0,
			Reject = 1,
			Accept = 2,
		}
		public enum RADIUS_EXTENSION_POINT : int32
		{
			Authentication = 0,
			Authorization = 1,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PRADIUS_EXTENSION_INIT();
		public function void PRADIUS_EXTENSION_TERM();
		public function uint32 PRADIUS_EXTENSION_PROCESS(in RADIUS_ATTRIBUTE pAttrs, out RADIUS_ACTION pfAction);
		public function uint32 PRADIUS_EXTENSION_PROCESS_EX(in RADIUS_ATTRIBUTE pInAttrs, out RADIUS_ATTRIBUTE* pOutAttrs, out RADIUS_ACTION pfAction);
		public function void PRADIUS_EXTENSION_FREE_ATTRIBUTES(out RADIUS_ATTRIBUTE pAttrs);
		public function uint32 PRADIUS_EXTENSION_PROCESS_2(out RADIUS_EXTENSION_CONTROL_BLOCK pECB);
		
		// --- Structs ---
		
		[CRepr]
		public struct RADIUS_ATTRIBUTE
		{
			public uint32 dwAttrType;
			public RADIUS_DATA_TYPE fDataType;
			public uint32 cbDataLength;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwValue;
				public uint8* lpValue;
			}
		}
		[CRepr]
		public struct RADIUS_VSA_FORMAT
		{
			public uint8[4] VendorId;
			public uint8 VendorType;
			public uint8 VendorLength;
			public uint8[0] AttributeSpecific;
		}
		[CRepr]
		public struct RADIUS_ATTRIBUTE_ARRAY
		{
			public uint32 cbSize;
			public int Add;
			public RADIUS_ATTRIBUTE********** AttributeAt;
			public int GetSize;
			public int InsertAt;
			public int RemoveAt;
			public int SetAt;
		}
		[CRepr]
		public struct RADIUS_EXTENSION_CONTROL_BLOCK
		{
			public uint32 cbSize;
			public uint32 dwVersion;
			public RADIUS_EXTENSION_POINT repPoint;
			public RADIUS_CODE rcRequestType;
			public RADIUS_CODE rcResponseType;
			public int GetRequest;
			public int GetResponse;
			public int SetResponseType;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SdoMachine = .(0xe9218ae7, 0x9e91, 0x11d1, 0xbf, 0x60, 0x00, 0x80, 0xc7, 0x84, 0x6b, 0xc0);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISdoMachine : IDispatch
		{
			public const new Guid IID = .(0x479f6e75, 0x49a2, 0x11d2, 0x8e, 0xca, 0x00, 0xc0, 0x4f, 0xc2, 0xf5, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Attach(BSTR bstrComputerName) mut => VT.Attach(ref this, bstrComputerName);
			public HRESULT GetDictionarySDO(out IUnknown* ppDictionarySDO) mut => VT.GetDictionarySDO(ref this, out ppDictionarySDO);
			public HRESULT GetServiceSDO(IASDATASTORE eDataStore, BSTR bstrServiceName, out IUnknown* ppServiceSDO) mut => VT.GetServiceSDO(ref this, eDataStore, bstrServiceName, out ppServiceSDO);
			public HRESULT GetUserSDO(IASDATASTORE eDataStore, BSTR bstrUserName, out IUnknown* ppUserSDO) mut => VT.GetUserSDO(ref this, eDataStore, bstrUserName, out ppUserSDO);
			public HRESULT GetOSType(out IASOSTYPE eOSType) mut => VT.GetOSType(ref this, out eOSType);
			public HRESULT GetDomainType(out IASDOMAINTYPE eDomainType) mut => VT.GetDomainType(ref this, out eDomainType);
			public HRESULT IsDirectoryAvailable(out int16 boolDirectoryAvailable) mut => VT.IsDirectoryAvailable(ref this, out boolDirectoryAvailable);
			public HRESULT GetAttachedComputer(out BSTR bstrComputerName) mut => VT.GetAttachedComputer(ref this, out bstrComputerName);
			public HRESULT GetSDOSchema(out IUnknown* ppSDOSchema) mut => VT.GetSDOSchema(ref this, out ppSDOSchema);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, BSTR bstrComputerName) Attach;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out IUnknown* ppDictionarySDO) GetDictionarySDO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, IASDATASTORE eDataStore, BSTR bstrServiceName, out IUnknown* ppServiceSDO) GetServiceSDO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, IASDATASTORE eDataStore, BSTR bstrUserName, out IUnknown* ppUserSDO) GetUserSDO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out IASOSTYPE eOSType) GetOSType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out IASDOMAINTYPE eDomainType) GetDomainType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out int16 boolDirectoryAvailable) IsDirectoryAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out BSTR bstrComputerName) GetAttachedComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine self, out IUnknown* ppSDOSchema) GetSDOSchema;
			}
		}
		[CRepr]
		public struct ISdoMachine2 : ISdoMachine
		{
			public const new Guid IID = .(0x518e5ffe, 0xd8ce, 0x4f7e, 0xa5, 0xdb, 0xb4, 0x0a, 0x35, 0x41, 0x9d, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTemplatesSDO(BSTR bstrServiceName, out IUnknown* ppTemplatesSDO) mut => VT.GetTemplatesSDO(ref this, bstrServiceName, out ppTemplatesSDO);
			public HRESULT EnableTemplates() mut => VT.EnableTemplates(ref this);
			public HRESULT SyncConfigAgainstTemplates(BSTR bstrServiceName, out IUnknown* ppConfigRoot, out IUnknown* ppTemplatesRoot, int16 bForcedSync) mut => VT.SyncConfigAgainstTemplates(ref this, bstrServiceName, out ppConfigRoot, out ppTemplatesRoot, bForcedSync);
			public HRESULT ImportRemoteTemplates(IUnknown* pLocalTemplatesRoot, BSTR bstrRemoteMachineName) mut => VT.ImportRemoteTemplates(ref this, pLocalTemplatesRoot, bstrRemoteMachineName);
			public HRESULT Reload() mut => VT.Reload(ref this);

			[CRepr]
			public struct VTable : ISdoMachine.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine2 self, BSTR bstrServiceName, out IUnknown* ppTemplatesSDO) GetTemplatesSDO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine2 self) EnableTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine2 self, BSTR bstrServiceName, out IUnknown* ppConfigRoot, out IUnknown* ppTemplatesRoot, int16 bForcedSync) SyncConfigAgainstTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine2 self, IUnknown* pLocalTemplatesRoot, BSTR bstrRemoteMachineName) ImportRemoteTemplates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoMachine2 self) Reload;
			}
		}
		[CRepr]
		public struct ISdoServiceControl : IDispatch
		{
			public const new Guid IID = .(0x479f6e74, 0x49a2, 0x11d2, 0x8e, 0xca, 0x00, 0xc0, 0x4f, 0xc2, 0xf5, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartService() mut => VT.StartService(ref this);
			public HRESULT StopService() mut => VT.StopService(ref this);
			public HRESULT GetServiceStatus(out int32 status) mut => VT.GetServiceStatus(ref this, out status);
			public HRESULT ResetService() mut => VT.ResetService(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoServiceControl self) StartService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoServiceControl self) StopService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoServiceControl self, out int32 status) GetServiceStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoServiceControl self) ResetService;
			}
		}
		[CRepr]
		public struct ISdo : IDispatch
		{
			public const new Guid IID = .(0x56bc53de, 0x96db, 0x11d1, 0xbf, 0x3f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyInfo(int32 Id, out IUnknown* ppPropertyInfo) mut => VT.GetPropertyInfo(ref this, Id, out ppPropertyInfo);
			public HRESULT GetProperty(int32 Id, out VARIANT pValue) mut => VT.GetProperty(ref this, Id, out pValue);
			public HRESULT PutProperty(int32 Id, ref VARIANT pValue) mut => VT.PutProperty(ref this, Id, ref pValue);
			public HRESULT ResetProperty(int32 Id) mut => VT.ResetProperty(ref this, Id);
			public HRESULT Apply() mut => VT.Apply(ref this);
			public HRESULT Restore() mut => VT.Restore(ref this);
			public HRESULT get__NewEnum(out IUnknown* ppEnumVARIANT) mut => VT.get__NewEnum(ref this, out ppEnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self, int32 Id, out IUnknown* ppPropertyInfo) GetPropertyInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self, int32 Id, out VARIANT pValue) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self, int32 Id, ref VARIANT pValue) PutProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self, int32 Id) ResetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self) Apply;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self) Restore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdo self, out IUnknown* ppEnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ISdoCollection : IDispatch
		{
			public const new Guid IID = .(0x56bc53e2, 0x96db, 0x11d1, 0xbf, 0x3f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT Add(BSTR bstrName, out IDispatch* ppItem) mut => VT.Add(ref this, bstrName, out ppItem);
			public HRESULT Remove(ref IDispatch pItem) mut => VT.Remove(ref this, ref pItem);
			public HRESULT RemoveAll() mut => VT.RemoveAll(ref this);
			public HRESULT Reload() mut => VT.Reload(ref this);
			public HRESULT IsNameUnique(BSTR bstrName, out int16 pBool) mut => VT.IsNameUnique(ref this, bstrName, out pBool);
			public HRESULT Item(ref VARIANT Name, out IDispatch* pItem) mut => VT.Item(ref this, ref Name, out pItem);
			public HRESULT get__NewEnum(out IUnknown* ppEnumVARIANT) mut => VT.get__NewEnum(ref this, out ppEnumVARIANT);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, BSTR bstrName, out IDispatch* ppItem) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, ref IDispatch pItem) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self) RemoveAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self) Reload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, BSTR bstrName, out int16 pBool) IsNameUnique;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, ref VARIANT Name, out IDispatch* pItem) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoCollection self, out IUnknown* ppEnumVARIANT) get__NewEnum;
			}
		}
		[CRepr]
		public struct ITemplateSdo : ISdo
		{
			public const new Guid IID = .(0x8aa85302, 0xd2e2, 0x4e20, 0x8b, 0x1f, 0xa5, 0x71, 0xe4, 0x37, 0xd6, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddToCollection(BSTR bstrName, ref IDispatch pCollection, out IDispatch* ppItem) mut => VT.AddToCollection(ref this, bstrName, ref pCollection, out ppItem);
			public HRESULT AddToSdo(BSTR bstrName, ref IDispatch pSdoTarget, out IDispatch* ppItem) mut => VT.AddToSdo(ref this, bstrName, ref pSdoTarget, out ppItem);
			public HRESULT AddToSdoAsProperty(ref IDispatch pSdoTarget, int32 id) mut => VT.AddToSdoAsProperty(ref this, ref pSdoTarget, id);

			[CRepr]
			public struct VTable : ISdo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITemplateSdo self, BSTR bstrName, ref IDispatch pCollection, out IDispatch* ppItem) AddToCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITemplateSdo self, BSTR bstrName, ref IDispatch pSdoTarget, out IDispatch* ppItem) AddToSdo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITemplateSdo self, ref IDispatch pSdoTarget, int32 id) AddToSdoAsProperty;
			}
		}
		[CRepr]
		public struct ISdoDictionaryOld : IDispatch
		{
			public const new Guid IID = .(0xd432e5f4, 0x53d8, 0x11d2, 0x9a, 0x3a, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumAttributes(out VARIANT Id, out VARIANT pValues) mut => VT.EnumAttributes(ref this, out Id, out pValues);
			public HRESULT GetAttributeInfo(ATTRIBUTEID Id, ref VARIANT pInfoIDs, out VARIANT pInfoValues) mut => VT.GetAttributeInfo(ref this, Id, ref pInfoIDs, out pInfoValues);
			public HRESULT EnumAttributeValues(ATTRIBUTEID Id, out VARIANT pValueIds, out VARIANT pValuesDesc) mut => VT.EnumAttributeValues(ref this, Id, out pValueIds, out pValuesDesc);
			public HRESULT CreateAttribute(ATTRIBUTEID Id, out IDispatch* ppAttributeObject) mut => VT.CreateAttribute(ref this, Id, out ppAttributeObject);
			public HRESULT GetAttributeID(BSTR bstrAttributeName, out ATTRIBUTEID pId) mut => VT.GetAttributeID(ref this, bstrAttributeName, out pId);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoDictionaryOld self, out VARIANT Id, out VARIANT pValues) EnumAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoDictionaryOld self, ATTRIBUTEID Id, ref VARIANT pInfoIDs, out VARIANT pInfoValues) GetAttributeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoDictionaryOld self, ATTRIBUTEID Id, out VARIANT pValueIds, out VARIANT pValuesDesc) EnumAttributeValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoDictionaryOld self, ATTRIBUTEID Id, out IDispatch* ppAttributeObject) CreateAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISdoDictionaryOld self, BSTR bstrAttributeName, out ATTRIBUTEID pId) GetAttributeID;
			}
		}
		
	}
}
