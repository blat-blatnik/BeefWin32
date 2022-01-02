using System;

// namespace Security.ExtensibleAuthenticationProtocol
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FACILITY_EAP_MESSAGE = 2114;
		public const int32 EAP_GROUP_MASK = 65280;
		public const int32 EAP_E_EAPHOST_FIRST = -2143158272;
		public const int32 EAP_E_EAPHOST_LAST = -2143158017;
		public const int32 EAP_I_EAPHOST_FIRST = -2143158272;
		public const int32 EAP_I_EAPHOST_LAST = -2143158017;
		public const uint32 EAP_E_CERT_STORE_INACCESSIBLE = 2151809040;
		public const uint32 EAP_E_EAPHOST_METHOD_NOT_INSTALLED = 2151809041;
		public const uint32 EAP_E_EAPHOST_THIRDPARTY_METHOD_HOST_RESET = 2151809042;
		public const uint32 EAP_E_EAPHOST_EAPQEC_INACCESSIBLE = 2151809043;
		public const uint32 EAP_E_EAPHOST_IDENTITY_UNKNOWN = 2151809044;
		public const uint32 EAP_E_AUTHENTICATION_FAILED = 2151809045;
		public const uint32 EAP_I_EAPHOST_EAP_NEGOTIATION_FAILED = 1078067222;
		public const uint32 EAP_E_EAPHOST_METHOD_INVALID_PACKET = 2151809047;
		public const uint32 EAP_E_EAPHOST_REMOTE_INVALID_PACKET = 2151809048;
		public const uint32 EAP_E_EAPHOST_XML_MALFORMED = 2151809049;
		public const uint32 EAP_E_METHOD_CONFIG_DOES_NOT_SUPPORT_SSO = 2151809050;
		public const uint32 EAP_E_EAPHOST_METHOD_OPERATION_NOT_SUPPORTED = 2151809056;
		public const int32 EAP_E_USER_FIRST = -2143158016;
		public const int32 EAP_E_USER_LAST = -2143157761;
		public const int32 EAP_I_USER_FIRST = 1078067456;
		public const int32 EAP_I_USER_LAST = 1078067711;
		public const uint32 EAP_E_USER_CERT_NOT_FOUND = 2151809280;
		public const uint32 EAP_E_USER_CERT_INVALID = 2151809281;
		public const uint32 EAP_E_USER_CERT_EXPIRED = 2151809282;
		public const uint32 EAP_E_USER_CERT_REVOKED = 2151809283;
		public const uint32 EAP_E_USER_CERT_OTHER_ERROR = 2151809284;
		public const uint32 EAP_E_USER_CERT_REJECTED = 2151809285;
		public const uint32 EAP_I_USER_ACCOUNT_OTHER_ERROR = 1078067472;
		public const uint32 EAP_E_USER_CREDENTIALS_REJECTED = 2151809297;
		public const uint32 EAP_E_USER_NAME_PASSWORD_REJECTED = 2151809298;
		public const uint32 EAP_E_NO_SMART_CARD_READER = 2151809299;
		public const int32 EAP_E_SERVER_FIRST = -2143157760;
		public const int32 EAP_E_SERVER_LAST = -2143157505;
		public const uint32 EAP_E_SERVER_CERT_NOT_FOUND = 2151809536;
		public const uint32 EAP_E_SERVER_CERT_INVALID = 2151809537;
		public const uint32 EAP_E_SERVER_CERT_EXPIRED = 2151809538;
		public const uint32 EAP_E_SERVER_CERT_REVOKED = 2151809539;
		public const uint32 EAP_E_SERVER_CERT_OTHER_ERROR = 2151809540;
		public const int32 EAP_E_USER_ROOT_CERT_FIRST = -2143157504;
		public const int32 EAP_E_USER_ROOT_CERT_LAST = -2143157249;
		public const uint32 EAP_E_USER_ROOT_CERT_NOT_FOUND = 2151809792;
		public const uint32 EAP_E_USER_ROOT_CERT_INVALID = 2151809793;
		public const uint32 EAP_E_USER_ROOT_CERT_EXPIRED = 2151809794;
		public const int32 EAP_E_SERVER_ROOT_CERT_FIRST = -2143157248;
		public const int32 EAP_E_SERVER_ROOT_CERT_LAST = -2143156993;
		public const uint32 EAP_E_SERVER_ROOT_CERT_NOT_FOUND = 2151810048;
		public const uint32 EAP_E_SERVER_ROOT_CERT_INVALID = 2151810049;
		public const uint32 EAP_E_SERVER_ROOT_CERT_NAME_REQUIRED = 2151810054;
		public const uint32 EAP_E_SIM_NOT_VALID = 2151810304;
		public const uint32 EAP_METHOD_INVALID_PACKET = 2151809047;
		public const uint32 EAP_INVALID_PACKET = 2151809048;
		public const uint32 EAP_PEER_FLAG_GUEST_ACCESS = 64;
		public const uint32 EAP_FLAG_Reserved1 = 1;
		public const uint32 EAP_FLAG_NON_INTERACTIVE = 2;
		public const uint32 EAP_FLAG_LOGON = 4;
		public const uint32 EAP_FLAG_PREVIEW = 8;
		public const uint32 EAP_FLAG_Reserved2 = 16;
		public const uint32 EAP_FLAG_MACHINE_AUTH = 32;
		public const uint32 EAP_FLAG_GUEST_ACCESS = 64;
		public const uint32 EAP_FLAG_Reserved3 = 128;
		public const uint32 EAP_FLAG_Reserved4 = 256;
		public const uint32 EAP_FLAG_RESUME_FROM_HIBERNATE = 512;
		public const uint32 EAP_FLAG_Reserved5 = 1024;
		public const uint32 EAP_FLAG_Reserved6 = 2048;
		public const uint32 EAP_FLAG_FULL_AUTH = 4096;
		public const uint32 EAP_FLAG_PREFER_ALT_CREDENTIALS = 8192;
		public const uint32 EAP_FLAG_Reserved7 = 16384;
		public const uint32 EAP_PEER_FLAG_HEALTH_STATE_CHANGE = 32768;
		public const uint32 EAP_FLAG_SUPRESS_UI = 65536;
		public const uint32 EAP_FLAG_PRE_LOGON = 131072;
		public const uint32 EAP_FLAG_USER_AUTH = 262144;
		public const uint32 EAP_FLAG_CONFG_READONLY = 524288;
		public const uint32 EAP_FLAG_Reserved8 = 1048576;
		public const uint32 EAP_FLAG_Reserved9 = 4194304;
		public const uint32 EAP_FLAG_VPN = 8388608;
		public const uint32 EAP_FLAG_ONLY_EAP_TLS = 16777216;
		public const uint32 EAP_FLAG_SERVER_VALIDATION_REQUIRED = 33554432;
		public const uint32 EAP_CONFIG_INPUT_FIELD_PROPS_DEFAULT = 0;
		public const uint32 EAP_CONFIG_INPUT_FIELD_PROPS_NON_DISPLAYABLE = 1;
		public const uint32 EAP_CONFIG_INPUT_FIELD_PROPS_NON_PERSIST = 2;
		public const uint32 EAP_UI_INPUT_FIELD_PROPS_DEFAULT = 0;
		public const uint32 EAP_UI_INPUT_FIELD_PROPS_NON_DISPLAYABLE = 1;
		public const uint32 EAP_UI_INPUT_FIELD_PROPS_NON_PERSIST = 2;
		public const uint32 EAP_UI_INPUT_FIELD_PROPS_READ_ONLY = 4;
		public const uint32 EAP_CREDENTIAL_VERSION = 1;
		public const uint32 EAP_INTERACTIVE_UI_DATA_VERSION = 1;
		public const uint32 EAPHOST_PEER_API_VERSION = 1;
		public const uint32 EAPHOST_METHOD_API_VERSION = 1;
		public const uint32 MAX_EAP_CONFIG_INPUT_FIELD_LENGTH = 256;
		public const uint32 MAX_EAP_CONFIG_INPUT_FIELD_VALUE_LENGTH = 1024;
		public const uint32 CERTIFICATE_HASH_LENGTH = 20;
		public const uint32 NCRYPT_PIN_CACHE_PIN_BYTE_LENGTH = 90;
		public const uint32 EAP_METHOD_AUTHENTICATOR_CONFIG_IS_IDENTITY_PRIVACY = 1;
		public const uint32 RAS_EAP_ROLE_AUTHENTICATOR = 1;
		public const uint32 RAS_EAP_ROLE_AUTHENTICATEE = 2;
		public const uint32 RAS_EAP_ROLE_EXCLUDE_IN_EAP = 4;
		public const uint32 RAS_EAP_ROLE_EXCLUDE_IN_PEAP = 8;
		public const uint32 RAS_EAP_ROLE_EXCLUDE_IN_VPN = 16;
		public const uint32 EAPCODE_Request = 1;
		public const uint32 EAPCODE_Response = 2;
		public const uint32 EAPCODE_Success = 3;
		public const uint32 EAPCODE_Failure = 4;
		public const uint32 MAXEAPCODE = 4;
		public const uint32 RAS_EAP_FLAG_ROUTER = 1;
		public const uint32 RAS_EAP_FLAG_NON_INTERACTIVE = 2;
		public const uint32 RAS_EAP_FLAG_LOGON = 4;
		public const uint32 RAS_EAP_FLAG_PREVIEW = 8;
		public const uint32 RAS_EAP_FLAG_FIRST_LINK = 16;
		public const uint32 RAS_EAP_FLAG_MACHINE_AUTH = 32;
		public const uint32 RAS_EAP_FLAG_GUEST_ACCESS = 64;
		public const uint32 RAS_EAP_FLAG_8021X_AUTH = 128;
		public const uint32 RAS_EAP_FLAG_HOSTED_IN_PEAP = 256;
		public const uint32 RAS_EAP_FLAG_RESUME_FROM_HIBERNATE = 512;
		public const uint32 RAS_EAP_FLAG_PEAP_UPFRONT = 1024;
		public const uint32 RAS_EAP_FLAG_ALTERNATIVE_USER_DB = 2048;
		public const uint32 RAS_EAP_FLAG_PEAP_FORCE_FULL_AUTH = 4096;
		public const uint32 RAS_EAP_FLAG_PRE_LOGON = 131072;
		public const uint32 RAS_EAP_FLAG_CONFG_READONLY = 524288;
		public const uint32 RAS_EAP_FLAG_RESERVED = 1048576;
		public const uint32 RAS_EAP_FLAG_SAVE_CREDMAN = 2097152;
		public const uint32 RAS_EAP_FLAG_SERVER_VALIDATION_REQUIRED = 33554432;
		public const Guid GUID_EapHost_Default = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid GUID_EapHost_Cause_MethodDLLNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x01);
		public const Guid GUID_EapHost_Repair_ContactSysadmin = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x02);
		public const Guid GUID_EapHost_Cause_CertStoreInaccessible = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x04);
		public const Guid GUID_EapHost_Cause_Generic_AuthFailure = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x01, 0x04);
		public const Guid GUID_EapHost_Cause_IdentityUnknown = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x02, 0x04);
		public const Guid GUID_EapHost_Cause_SimNotValid = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x03, 0x04);
		public const Guid GUID_EapHost_Cause_Server_CertExpired = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x05);
		public const Guid GUID_EapHost_Cause_Server_CertInvalid = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x06);
		public const Guid GUID_EapHost_Cause_Server_CertNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x07);
		public const Guid GUID_EapHost_Cause_Server_CertRevoked = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x08);
		public const Guid GUID_EapHost_Cause_Server_CertOtherError = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x01, 0x08);
		public const Guid GUID_EapHost_Cause_User_CertExpired = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x09);
		public const Guid GUID_EapHost_Cause_User_CertInvalid = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0a);
		public const Guid GUID_EapHost_Cause_User_CertNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0b);
		public const Guid GUID_EapHost_Cause_User_CertOtherError = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0c);
		public const Guid GUID_EapHost_Cause_User_CertRejected = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0d);
		public const Guid GUID_EapHost_Cause_User_CertRevoked = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0e);
		public const Guid GUID_EapHost_Cause_User_Account_OtherProblem = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x01, 0x0e);
		public const Guid GUID_EapHost_Cause_User_CredsRejected = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x02, 0x0e);
		public const Guid GUID_EapHost_Cause_User_Root_CertExpired = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x0f);
		public const Guid GUID_EapHost_Cause_User_Root_CertInvalid = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x10);
		public const Guid GUID_EapHost_Cause_User_Root_CertNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x11);
		public const Guid GUID_EapHost_Cause_Server_Root_CertNameRequired = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x12);
		public const Guid GUID_EapHost_Cause_Server_Root_CertNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x01, 0x12);
		public const Guid GUID_EapHost_Cause_ThirdPartyMethod_Host_Reset = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x02, 0x12);
		public const Guid GUID_EapHost_Cause_EapQecInaccessible = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x03, 0x12);
		public const Guid GUID_EapHost_Repair_Server_ClientSelectServerCert = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x18);
		public const Guid GUID_EapHost_Repair_User_AuthFailure = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x19);
		public const Guid GUID_EapHost_Repair_User_GetNewCert = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1a);
		public const Guid GUID_EapHost_Repair_User_SelectValidCert = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1b);
		public const Guid GUID_EapHost_Repair_Retry_Authentication = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x01, 0x1b);
		public const Guid GUID_EapHost_Cause_EapNegotiationFailed = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1c);
		public const Guid GUID_EapHost_Cause_XmlMalformed = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1d);
		public const Guid GUID_EapHost_Cause_MethodDoesNotSupportOperation = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1e);
		public const Guid GUID_EapHost_Repair_ContactAdmin_AuthFailure = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x1f);
		public const Guid GUID_EapHost_Repair_ContactAdmin_IdentityUnknown = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x20);
		public const Guid GUID_EapHost_Repair_ContactAdmin_NegotiationFailed = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x21);
		public const Guid GUID_EapHost_Repair_ContactAdmin_MethodNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x22);
		public const Guid GUID_EapHost_Repair_RestartNap = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x23);
		public const Guid GUID_EapHost_Repair_ContactAdmin_CertStoreInaccessible = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x24);
		public const Guid GUID_EapHost_Repair_ContactAdmin_InvalidUserAccount = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x25);
		public const Guid GUID_EapHost_Repair_ContactAdmin_RootCertInvalid = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x26);
		public const Guid GUID_EapHost_Repair_ContactAdmin_RootCertNotFound = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x27);
		public const Guid GUID_EapHost_Repair_ContactAdmin_RootExpired = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x28);
		public const Guid GUID_EapHost_Repair_ContactAdmin_CertNameAbsent = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x29);
		public const Guid GUID_EapHost_Repair_ContactAdmin_NoSmartCardReader = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x2a);
		public const Guid GUID_EapHost_Cause_No_SmartCardReader_Found = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x2b);
		public const Guid GUID_EapHost_Repair_ContactAdmin_InvalidUserCert = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x2c);
		public const Guid GUID_EapHost_Repair_Method_Not_Support_Sso = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x2d);
		public const Guid GUID_EapHost_Repair_No_ValidSim_Found = .(0x9612fc67, 0x6150, 0x4209, 0xa8, 0x5e, 0xa8, 0xd8, 0x00, 0x00, 0x00, 0x2e);
		public const Guid GUID_EapHost_Help_ObtainingCerts = .(0xf535eea3, 0x1bdd, 0x46ca, 0xa2, 0xfc, 0xa6, 0x65, 0x59, 0x39, 0xb7, 0xe8);
		public const Guid GUID_EapHost_Help_Troubleshooting = .(0x33307acf, 0x0698, 0x41ba, 0xb0, 0x14, 0xea, 0x0a, 0x2e, 0xb8, 0xd0, 0xa8);
		public const Guid GUID_EapHost_Cause_Method_Config_Does_Not_Support_Sso = .(0xda18bd32, 0x004f, 0x41fa, 0xae, 0x08, 0x0b, 0xc8, 0x5e, 0x58, 0x45, 0xac);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum RAS_AUTH_ATTRIBUTE_TYPE : int32
		{
			Minimum = 0,
			UserName = 1,
			UserPassword = 2,
			MD5CHAPPassword = 3,
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
			LoginTCPPort = 16,
			Unassigned17 = 17,
			ReplyMessage = 18,
			CallbackNumber = 19,
			CallbackId = 20,
			Unassigned21 = 21,
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
			AcctTerminateCause = 49,
			AcctMultiSessionId = 50,
			AcctLinkCount = 51,
			AcctEventTimeStamp = 55,
			MD5CHAPChallenge = 60,
			NASPortType = 61,
			PortLimit = 62,
			LoginLATPort = 63,
			TunnelType = 64,
			TunnelMediumType = 65,
			TunnelClientEndpoint = 66,
			TunnelServerEndpoint = 67,
			ARAPPassword = 70,
			ARAPFeatures = 71,
			ARAPZoneAccess = 72,
			ARAPSecurity = 73,
			ARAPSecurityData = 74,
			PasswordRetry = 75,
			Prompt = 76,
			ConnectInfo = 77,
			ConfigurationToken = 78,
			EAPMessage = 79,
			Signature = 80,
			ARAPChallengeResponse = 84,
			AcctInterimInterval = 85,
			NASIPv6Address = 95,
			FramedInterfaceId = 96,
			FramedIPv6Prefix = 97,
			LoginIPv6Host = 98,
			FramedIPv6Route = 99,
			FramedIPv6Pool = 100,
			ARAPGuestLogon = 8096,
			CertificateOID = 8097,
			EAPConfiguration = 8098,
			PEAPEmbeddedEAPTypeId = 8099,
			InnerEAPTypeId = 8099,
			PEAPFastRoamedSession = 8100,
			FastRoamedSession = 8100,
			EAPTLV = 8102,
			CredentialsChanged = 8103,
			CertificateThumbprint = 8250,
			PeerId = 9000,
			ServerId = 9001,
			MethodId = 9002,
			EMSK = 9003,
			SessionId = 9004,
			Reserved = -1,
		}
		public enum PPP_EAP_ACTION : int32
		{
			NoAction = 0,
			Authenticate = 1,
			Done = 2,
			SendAndDone = 3,
			Send = 4,
			SendWithTimeout = 5,
			SendWithTimeoutInteractive = 6,
			IndicateTLV = 7,
			IndicateIdentity = 8,
		}
		[AllowDuplicates]
		public enum EAP_ATTRIBUTE_TYPE : int32
		{
			Minimum = 0,
			UserName = 1,
			UserPassword = 2,
			MD5CHAPPassword = 3,
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
			LoginTCPPort = 16,
			Unassigned17 = 17,
			ReplyMessage = 18,
			CallbackNumber = 19,
			CallbackId = 20,
			Unassigned21 = 21,
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
			AcctTerminateCause = 49,
			AcctMultiSessionId = 50,
			AcctLinkCount = 51,
			AcctEventTimeStamp = 55,
			MD5CHAPChallenge = 60,
			NASPortType = 61,
			PortLimit = 62,
			LoginLATPort = 63,
			TunnelType = 64,
			TunnelMediumType = 65,
			TunnelClientEndpoint = 66,
			TunnelServerEndpoint = 67,
			ARAPPassword = 70,
			ARAPFeatures = 71,
			ARAPZoneAccess = 72,
			ARAPSecurity = 73,
			ARAPSecurityData = 74,
			PasswordRetry = 75,
			Prompt = 76,
			ConnectInfo = 77,
			ConfigurationToken = 78,
			EAPMessage = 79,
			Signature = 80,
			ARAPChallengeResponse = 84,
			AcctInterimInterval = 85,
			NASIPv6Address = 95,
			FramedInterfaceId = 96,
			FramedIPv6Prefix = 97,
			LoginIPv6Host = 98,
			FramedIPv6Route = 99,
			FramedIPv6Pool = 100,
			ARAPGuestLogon = 8096,
			CertificateOID = 8097,
			EAPConfiguration = 8098,
			PEAPEmbeddedEAPTypeId = 8099,
			PEAPFastRoamedSession = 8100,
			FastRoamedSession = 8100,
			EAPTLV = 8102,
			CredentialsChanged = 8103,
			InnerEapMethodType = 8104,
			ClearTextPassword = 8107,
			QuarantineSoH = 8150,
			CertificateThumbprint = 8250,
			PeerId = 9000,
			ServerId = 9001,
			MethodId = 9002,
			EMSK = 9003,
			SessionId = 9004,
			Reserved = -1,
		}
		public enum EAP_CONFIG_INPUT_FIELD_TYPE : int32
		{
			InputUsername = 0,
			InputPassword = 1,
			InputNetworkUsername = 2,
			InputNetworkPassword = 3,
			InputPin = 4,
			InputPSK = 5,
			InputEdit = 6,
			SmartCardUsername = 7,
			SmartCardError = 8,
		}
		public enum EAP_INTERACTIVE_UI_DATA_TYPE : int32
		{
			Req = 0,
			Resp = 1,
			ExpiryReq = 2,
			ExpiryResp = 3,
			LogonReq = 4,
			LogonResp = 5,
		}
		public enum EAP_METHOD_PROPERTY_TYPE : int32
		{
			PropCipherSuiteNegotiation = 0,
			PropMutualAuth = 1,
			PropIntegrity = 2,
			PropReplayProtection = 3,
			PropConfidentiality = 4,
			PropKeyDerivation = 5,
			PropKeyStrength64 = 6,
			PropKeyStrength128 = 7,
			PropKeyStrength256 = 8,
			PropKeyStrength512 = 9,
			PropKeyStrength1024 = 10,
			PropDictionaryAttackResistance = 11,
			PropFastReconnect = 12,
			PropCryptoBinding = 13,
			PropSessionIndependence = 14,
			PropFragmentation = 15,
			PropChannelBinding = 16,
			PropNap = 17,
			PropStandalone = 18,
			PropMppeEncryption = 19,
			PropTunnelMethod = 20,
			PropSupportsConfig = 21,
			PropCertifiedMethod = 22,
			PropHiddenMethod = 23,
			PropMachineAuth = 24,
			PropUserAuth = 25,
			PropIdentityPrivacy = 26,
			PropMethodChaining = 27,
			PropSharedStateEquivalence = 28,
			LegacyMethodPropertyFlag = 31,
			PropVendorSpecific = 255,
		}
		public enum EAP_METHOD_PROPERTY_VALUE_TYPE : int32
		{
			Bool = 0,
			Dword = 1,
			String = 2,
		}
		public enum EapCredentialType : int32
		{
			EMPTY_CREDENTIAL = 0,
			USERNAME_PASSWORD_CREDENTIAL = 1,
			WINLOGON_CREDENTIAL = 2,
			CERTIFICATE_CREDENTIAL = 3,
			SIM_CREDENTIAL = 4,
		}
		public enum EapHostPeerMethodResultReason : int32
		{
			AltSuccessReceived = 1,
			Timeout = 2,
			FromMethod = 3,
		}
		public enum EapHostPeerResponseAction : int32
		{
			Discard = 0,
			Send = 1,
			Result = 2,
			InvokeUi = 3,
			Respond = 4,
			StartAuthentication = 5,
			None = 6,
		}
		public enum EapHostPeerAuthParams : int32
		{
			PeerAuthStatus = 1,
			PeerIdentity = 2,
			PeerIdentityExtendedInfo = 3,
			NapInfo = 4,
		}
		public enum EAPHOST_AUTH_STATUS : int32
		{
			InvalidSession = 0,
			AuthNotStarted = 1,
			AuthIdentityExchange = 2,
			AuthNegotiatingType = 3,
			AuthInProgress = 4,
			AuthSucceeded = 5,
			AuthFailed = 6,
		}
		public enum ISOLATION_STATE : int32
		{
			UNKNOWN = 0,
			NOT_RESTRICTED = 1,
			IN_PROBATION = 2,
			RESTRICTED_ACCESS = 3,
		}
		[AllowDuplicates]
		public enum EapCode : int32
		{
			Minimum = 1,
			Request = 1,
			Response = 2,
			Success = 3,
			Failure = 4,
			Maximum = 4,
		}
		public enum EAP_METHOD_AUTHENTICATOR_RESPONSE_ACTION : int32
		{
			DISCARD = 0,
			SEND = 1,
			RESULT = 2,
			RESPOND = 3,
			AUTHENTICATE = 4,
			HANDLE_IDENTITY = 5,
		}
		public enum EapPeerMethodResponseAction : int32
		{
			Discard = 0,
			Send = 1,
			Result = 2,
			InvokeUI = 3,
			Respond = 4,
			None = 5,
		}
		public enum EapPeerMethodResultReason : int32
		{
			Unknown = 1,
			Success = 2,
			Failure = 3,
		}
		public enum EAP_AUTHENTICATOR_SEND_TIMEOUT : int32
		{
			NONE = 0,
			BASIC = 1,
			INTERACTIVE = 2,
		}
		
		// --- Function Pointers ---
		
		public function void NotificationHandler(Guid connectionId, void* pContextData);
		
		// --- Structs ---
		
		[CRepr]
		public struct NgcTicketContext
		{
			public char16[45] wszTicket;
			public uint hKey;
			public HANDLE hImpersonateToken;
		}
		[CRepr]
		public struct RAS_AUTH_ATTRIBUTE
		{
			public RAS_AUTH_ATTRIBUTE_TYPE raaType;
			public uint32 dwLength;
			public void* Value;
		}
		[CRepr]
		public struct PPP_EAP_PACKET
		{
			public uint8 Code;
			public uint8 Id;
			public uint8[2] Length;
			public uint8[0] Data;
		}
		[CRepr]
		public struct PPP_EAP_INPUT
		{
			public uint32 dwSizeInBytes;
			public uint32 fFlags;
			public BOOL fAuthenticator;
			public PWSTR pwszIdentity;
			public PWSTR pwszPassword;
			public uint8 bInitialId;
			public RAS_AUTH_ATTRIBUTE* pUserAttributes;
			public BOOL fAuthenticationComplete;
			public uint32 dwAuthResultCode;
			public HANDLE hTokenImpersonateUser;
			public BOOL fSuccessPacketReceived;
			public BOOL fDataReceivedFromInteractiveUI;
			public uint8* pDataFromInteractiveUI;
			public uint32 dwSizeOfDataFromInteractiveUI;
			public uint8* pConnectionData;
			public uint32 dwSizeOfConnectionData;
			public uint8* pUserData;
			public uint32 dwSizeOfUserData;
			public HANDLE hReserved;
			public Guid guidConnectionId;
			public BOOL isVpn;
		}
		[CRepr]
		public struct PPP_EAP_OUTPUT
		{
			public uint32 dwSizeInBytes;
			public PPP_EAP_ACTION Action;
			public uint32 dwAuthResultCode;
			public RAS_AUTH_ATTRIBUTE* pUserAttributes;
			public BOOL fInvokeInteractiveUI;
			public uint8* pUIContextData;
			public uint32 dwSizeOfUIContextData;
			public BOOL fSaveConnectionData;
			public uint8* pConnectionData;
			public uint32 dwSizeOfConnectionData;
			public BOOL fSaveUserData;
			public uint8* pUserData;
			public uint32 dwSizeOfUserData;
			public NgcTicketContext* pNgcKerbTicket;
			public BOOL fSaveToCredMan;
		}
		[CRepr]
		public struct PPP_EAP_INFO
		{
			public uint32 dwSizeInBytes;
			public uint32 dwEapTypeId;
			public int RasEapInitialize;
			public int RasEapBegin;
			public int RasEapEnd;
			public int RasEapMakeMessage;
		}
		[CRepr]
		public struct LEGACY_IDENTITY_UI_PARAMS
		{
			public uint32 eapType;
			public uint32 dwFlags;
			public uint32 dwSizeofConnectionData;
			public uint8* pConnectionData;
			public uint32 dwSizeofUserData;
			public uint8* pUserData;
			public uint32 dwSizeofUserDataOut;
			public uint8* pUserDataOut;
			public PWSTR pwszIdentity;
			public uint32 dwError;
		}
		[CRepr]
		public struct LEGACY_INTERACTIVE_UI_PARAMS
		{
			public uint32 eapType;
			public uint32 dwSizeofContextData;
			public uint8* pContextData;
			public uint32 dwSizeofInteractiveUIData;
			public uint8* pInteractiveUIData;
			public uint32 dwError;
		}
		[CRepr]
		public struct EAP_TYPE
		{
			public uint8 type;
			public uint32 dwVendorId;
			public uint32 dwVendorType;
		}
		[CRepr]
		public struct EAP_METHOD_TYPE
		{
			public EAP_TYPE eapType;
			public uint32 dwAuthorId;
		}
		[CRepr]
		public struct EAP_METHOD_INFO
		{
			public EAP_METHOD_TYPE eaptype;
			public PWSTR pwszAuthorName;
			public PWSTR pwszFriendlyName;
			public uint32 eapProperties;
			public EAP_METHOD_INFO* pInnerMethodInfo;
		}
		[CRepr]
		public struct EAP_METHOD_INFO_EX
		{
			public EAP_METHOD_TYPE eaptype;
			public PWSTR pwszAuthorName;
			public PWSTR pwszFriendlyName;
			public uint32 eapProperties;
			public EAP_METHOD_INFO_ARRAY_EX* pInnerMethodInfoArray;
		}
		[CRepr]
		public struct EAP_METHOD_INFO_ARRAY
		{
			public uint32 dwNumberOfMethods;
			public EAP_METHOD_INFO* pEapMethods;
		}
		[CRepr]
		public struct EAP_METHOD_INFO_ARRAY_EX
		{
			public uint32 dwNumberOfMethods;
			public EAP_METHOD_INFO_EX* pEapMethods;
		}
		[CRepr]
		public struct EAP_ERROR
		{
			public uint32 dwWinError;
			public EAP_METHOD_TYPE type;
			public uint32 dwReasonCode;
			public Guid rootCauseGuid;
			public Guid repairGuid;
			public Guid helpLinkGuid;
			public PWSTR pRootCauseString;
			public PWSTR pRepairString;
		}
		[CRepr]
		public struct EAP_ATTRIBUTE
		{
			public EAP_ATTRIBUTE_TYPE eaType;
			public uint32 dwLength;
			public uint8* pValue;
		}
		[CRepr]
		public struct EAP_ATTRIBUTES
		{
			public uint32 dwNumberOfAttributes;
			public EAP_ATTRIBUTE* pAttribs;
		}
		[CRepr]
		public struct EAP_CONFIG_INPUT_FIELD_DATA
		{
			public uint32 dwSize;
			public EAP_CONFIG_INPUT_FIELD_TYPE Type;
			public uint32 dwFlagProps;
			public PWSTR pwszLabel;
			public PWSTR pwszData;
			public uint32 dwMinDataLength;
			public uint32 dwMaxDataLength;
		}
		[CRepr]
		public struct EAP_CONFIG_INPUT_FIELD_ARRAY
		{
			public uint32 dwVersion;
			public uint32 dwNumberOfFields;
			public EAP_CONFIG_INPUT_FIELD_DATA* pFields;
		}
		[CRepr]
		public struct EAP_CRED_EXPIRY_REQ
		{
			public EAP_CONFIG_INPUT_FIELD_ARRAY curCreds;
			public EAP_CONFIG_INPUT_FIELD_ARRAY newCreds;
		}
		[CRepr, Union]
		public struct EAP_UI_DATA_FORMAT
		{
			public EAP_CONFIG_INPUT_FIELD_ARRAY* credData;
			public EAP_CRED_EXPIRY_REQ* credExpiryData;
			public EAP_CONFIG_INPUT_FIELD_ARRAY* credLogonData;
		}
		[CRepr]
		public struct EAP_INTERACTIVE_UI_DATA
		{
			public uint32 dwVersion;
			public uint32 dwSize;
			public EAP_INTERACTIVE_UI_DATA_TYPE dwDataType;
			public uint32 cbUiData;
			public EAP_UI_DATA_FORMAT pbUiData;
		}
		[CRepr]
		public struct EAP_METHOD_PROPERTY_VALUE_BOOL
		{
			public uint32 length;
			public BOOL value;
		}
		[CRepr]
		public struct EAP_METHOD_PROPERTY_VALUE_DWORD
		{
			public uint32 length;
			public uint32 value;
		}
		[CRepr]
		public struct EAP_METHOD_PROPERTY_VALUE_STRING
		{
			public uint32 length;
			public uint8* value;
		}
		[CRepr, Union]
		public struct EAP_METHOD_PROPERTY_VALUE
		{
			public EAP_METHOD_PROPERTY_VALUE_BOOL empvBool;
			public EAP_METHOD_PROPERTY_VALUE_DWORD empvDword;
			public EAP_METHOD_PROPERTY_VALUE_STRING empvString;
		}
		[CRepr]
		public struct EAP_METHOD_PROPERTY
		{
			public EAP_METHOD_PROPERTY_TYPE eapMethodPropertyType;
			public EAP_METHOD_PROPERTY_VALUE_TYPE eapMethodPropertyValueType;
			public EAP_METHOD_PROPERTY_VALUE eapMethodPropertyValue;
		}
		[CRepr]
		public struct EAP_METHOD_PROPERTY_ARRAY
		{
			public uint32 dwNumberOfProperties;
			public EAP_METHOD_PROPERTY* pMethodProperty;
		}
		[CRepr]
		public struct EAPHOST_IDENTITY_UI_PARAMS
		{
			public EAP_METHOD_TYPE eapMethodType;
			public uint32 dwFlags;
			public uint32 dwSizeofConnectionData;
			public uint8* pConnectionData;
			public uint32 dwSizeofUserData;
			public uint8* pUserData;
			public uint32 dwSizeofUserDataOut;
			public uint8* pUserDataOut;
			public PWSTR pwszIdentity;
			public uint32 dwError;
			public EAP_ERROR* pEapError;
		}
		[CRepr]
		public struct EAPHOST_INTERACTIVE_UI_PARAMS
		{
			public uint32 dwSizeofContextData;
			public uint8* pContextData;
			public uint32 dwSizeofInteractiveUIData;
			public uint8* pInteractiveUIData;
			public uint32 dwError;
			public EAP_ERROR* pEapError;
		}
		[CRepr]
		public struct EapUsernamePasswordCredential
		{
			public PWSTR username;
			public PWSTR password;
		}
		[CRepr]
		public struct EapCertificateCredential
		{
			public uint8[20] certHash;
			public PWSTR password;
		}
		[CRepr]
		public struct EapSimCredential
		{
			public PWSTR iccID;
		}
		[CRepr, Union]
		public struct EapCredentialTypeData
		{
			public EapUsernamePasswordCredential username_password;
			public EapCertificateCredential certificate;
			public EapSimCredential sim;
		}
		[CRepr]
		public struct EapCredential
		{
			public EapCredentialType credType;
			public EapCredentialTypeData credData;
		}
		[CRepr]
		public struct EAPHOST_AUTH_INFO
		{
			public EAPHOST_AUTH_STATUS status;
			public uint32 dwErrorCode;
			public uint32 dwReasonCode;
		}
		[CRepr]
		public struct EapHostPeerMethodResult
		{
			public BOOL fIsSuccess;
			public uint32 dwFailureReasonCode;
			public BOOL fSaveConnectionData;
			public uint32 dwSizeofConnectionData;
			public uint8* pConnectionData;
			public BOOL fSaveUserData;
			public uint32 dwSizeofUserData;
			public uint8* pUserData;
			public EAP_ATTRIBUTES* pAttribArray;
			public ISOLATION_STATE isolationState;
			public EAP_METHOD_INFO* pEapMethodInfo;
			public EAP_ERROR* pEapError;
		}
		[CRepr]
		public struct EapPacket
		{
			public uint8 Code;
			public uint8 Id;
			public uint8[2] Length;
			public uint8[0] Data;
		}
		[CRepr]
		public struct EAP_METHOD_AUTHENTICATOR_RESULT
		{
			public BOOL fIsSuccess;
			public uint32 dwFailureReason;
			public EAP_ATTRIBUTES* pAuthAttribs;
		}
		[CRepr]
		public struct EapPeerMethodOutput
		{
			public EapPeerMethodResponseAction action;
			public BOOL fAllowNotifications;
		}
		[CRepr]
		public struct EapPeerMethodResult
		{
			public BOOL fIsSuccess;
			public uint32 dwFailureReasonCode;
			public BOOL fSaveConnectionData;
			public uint32 dwSizeofConnectionData;
			public uint8* pConnectionData;
			public BOOL fSaveUserData;
			public uint32 dwSizeofUserData;
			public uint8* pUserData;
			public EAP_ATTRIBUTES* pAttribArray;
			public EAP_ERROR* pEapError;
			public NgcTicketContext* pNgcKerbTicket;
			public BOOL fSaveToCredMan;
		}
		[CRepr]
		public struct EAP_PEER_METHOD_ROUTINES
		{
			public uint32 dwVersion;
			public EAP_TYPE* pEapType;
			public int EapPeerInitialize;
			public int EapPeerGetIdentity;
			public int EapPeerBeginSession;
			public int EapPeerSetCredentials;
			public int EapPeerProcessRequestPacket;
			public int EapPeerGetResponsePacket;
			public int EapPeerGetResult;
			public int EapPeerGetUIContext;
			public int EapPeerSetUIContext;
			public int EapPeerGetResponseAttributes;
			public int EapPeerSetResponseAttributes;
			public int EapPeerEndSession;
			public int EapPeerShutdown;
		}
		[CRepr]
		public struct EAP_AUTHENTICATOR_METHOD_ROUTINES
		{
			public uint32 dwSizeInBytes;
			public EAP_METHOD_TYPE* pEapType;
			public int EapMethodAuthenticatorInitialize;
			public int EapMethodAuthenticatorBeginSession;
			public int EapMethodAuthenticatorUpdateInnerMethodParams;
			public int EapMethodAuthenticatorReceivePacket;
			public int EapMethodAuthenticatorSendPacket;
			public int EapMethodAuthenticatorGetAttributes;
			public int EapMethodAuthenticatorSetAttributes;
			public int EapMethodAuthenticatorGetResult;
			public int EapMethodAuthenticatorEndSession;
			public int EapMethodAuthenticatorShutdown;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRouterProtocolConfig : IUnknown
		{
			public const new Guid IID = .(0x66a2db16, 0xd706, 0x11d0, 0xa3, 0x7b, 0x00, 0xc0, 0x4f, 0xc9, 0xda, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddProtocol(PWSTR pszMachineName, uint32 dwTransportId, uint32 dwProtocolId, HWND hWnd, uint32 dwFlags, ref IUnknown pRouter, uint uReserved1) mut => VT.AddProtocol(ref this, pszMachineName, dwTransportId, dwProtocolId, hWnd, dwFlags, ref pRouter, uReserved1);
			public HRESULT RemoveProtocol(PWSTR pszMachineName, uint32 dwTransportId, uint32 dwProtocolId, HWND hWnd, uint32 dwFlags, ref IUnknown pRouter, uint uReserved1) mut => VT.RemoveProtocol(ref this, pszMachineName, dwTransportId, dwProtocolId, hWnd, dwFlags, ref pRouter, uReserved1);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRouterProtocolConfig self, PWSTR pszMachineName, uint32 dwTransportId, uint32 dwProtocolId, HWND hWnd, uint32 dwFlags, ref IUnknown pRouter, uint uReserved1) AddProtocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRouterProtocolConfig self, PWSTR pszMachineName, uint32 dwTransportId, uint32 dwProtocolId, HWND hWnd, uint32 dwFlags, ref IUnknown pRouter, uint uReserved1) RemoveProtocol;
			}
		}
		[CRepr]
		public struct IAuthenticationProviderConfig : IUnknown
		{
			public const new Guid IID = .(0x66a2db17, 0xd706, 0x11d0, 0xa3, 0x7b, 0x00, 0xc0, 0x4f, 0xc9, 0xda, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszMachineName, out uint puConnectionParam) mut => VT.Initialize(ref this, pszMachineName, out puConnectionParam);
			public HRESULT Uninitialize(uint uConnectionParam) mut => VT.Uninitialize(ref this, uConnectionParam);
			public HRESULT Configure(uint uConnectionParam, HWND hWnd, uint32 dwFlags, uint uReserved1, uint uReserved2) mut => VT.Configure(ref this, uConnectionParam, hWnd, dwFlags, uReserved1, uReserved2);
			public HRESULT Activate(uint uConnectionParam, uint uReserved1, uint uReserved2) mut => VT.Activate(ref this, uConnectionParam, uReserved1, uReserved2);
			public HRESULT Deactivate(uint uConnectionParam, uint uReserved1, uint uReserved2) mut => VT.Deactivate(ref this, uConnectionParam, uReserved1, uReserved2);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticationProviderConfig self, PWSTR pszMachineName, out uint puConnectionParam) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticationProviderConfig self, uint uConnectionParam) Uninitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticationProviderConfig self, uint uConnectionParam, HWND hWnd, uint32 dwFlags, uint uReserved1, uint uReserved2) Configure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticationProviderConfig self, uint uConnectionParam, uint uReserved1, uint uReserved2) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticationProviderConfig self, uint uConnectionParam, uint uReserved1, uint uReserved2) Deactivate;
			}
		}
		[CRepr]
		public struct IAccountingProviderConfig : IUnknown
		{
			public const new Guid IID = .(0x66a2db18, 0xd706, 0x11d0, 0xa3, 0x7b, 0x00, 0xc0, 0x4f, 0xc9, 0xda, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszMachineName, out uint puConnectionParam) mut => VT.Initialize(ref this, pszMachineName, out puConnectionParam);
			public HRESULT Uninitialize(uint uConnectionParam) mut => VT.Uninitialize(ref this, uConnectionParam);
			public HRESULT Configure(uint uConnectionParam, HWND hWnd, uint32 dwFlags, uint uReserved1, uint uReserved2) mut => VT.Configure(ref this, uConnectionParam, hWnd, dwFlags, uReserved1, uReserved2);
			public HRESULT Activate(uint uConnectionParam, uint uReserved1, uint uReserved2) mut => VT.Activate(ref this, uConnectionParam, uReserved1, uReserved2);
			public HRESULT Deactivate(uint uConnectionParam, uint uReserved1, uint uReserved2) mut => VT.Deactivate(ref this, uConnectionParam, uReserved1, uReserved2);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccountingProviderConfig self, PWSTR pszMachineName, out uint puConnectionParam) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccountingProviderConfig self, uint uConnectionParam) Uninitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccountingProviderConfig self, uint uConnectionParam, HWND hWnd, uint32 dwFlags, uint uReserved1, uint uReserved2) Configure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccountingProviderConfig self, uint uConnectionParam, uint uReserved1, uint uReserved2) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccountingProviderConfig self, uint uConnectionParam, uint uReserved1, uint uReserved2) Deactivate;
			}
		}
		[CRepr]
		public struct IEAPProviderConfig : IUnknown
		{
			public const new Guid IID = .(0x66a2db19, 0xd706, 0x11d0, 0xa3, 0x7b, 0x00, 0xc0, 0x4f, 0xc9, 0xda, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszMachineName, uint32 dwEapTypeId, out uint puConnectionParam) mut => VT.Initialize(ref this, pszMachineName, dwEapTypeId, out puConnectionParam);
			public HRESULT Uninitialize(uint32 dwEapTypeId, uint uConnectionParam) mut => VT.Uninitialize(ref this, dwEapTypeId, uConnectionParam);
			public HRESULT ServerInvokeConfigUI(uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, uint uReserved1, uint uReserved2) mut => VT.ServerInvokeConfigUI(ref this, dwEapTypeId, uConnectionParam, hWnd, uReserved1, uReserved2);
			public HRESULT RouterInvokeConfigUI(uint32 dwEapTypeId, uint uConnectionParam, HWND hwndParent, uint32 dwFlags, uint8* pConnectionDataIn, uint32 dwSizeOfConnectionDataIn, uint8** ppConnectionDataOut, out uint32 pdwSizeOfConnectionDataOut) mut => VT.RouterInvokeConfigUI(ref this, dwEapTypeId, uConnectionParam, hwndParent, dwFlags, pConnectionDataIn, dwSizeOfConnectionDataIn, ppConnectionDataOut, out pdwSizeOfConnectionDataOut);
			public HRESULT RouterInvokeCredentialsUI(uint32 dwEapTypeId, uint uConnectionParam, HWND hwndParent, uint32 dwFlags, uint8* pConnectionDataIn, uint32 dwSizeOfConnectionDataIn, uint8* pUserDataIn, uint32 dwSizeOfUserDataIn, uint8** ppUserDataOut, out uint32 pdwSizeOfUserDataOut) mut => VT.RouterInvokeCredentialsUI(ref this, dwEapTypeId, uConnectionParam, hwndParent, dwFlags, pConnectionDataIn, dwSizeOfConnectionDataIn, pUserDataIn, dwSizeOfUserDataIn, ppUserDataOut, out pdwSizeOfUserDataOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig self, PWSTR pszMachineName, uint32 dwEapTypeId, out uint puConnectionParam) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig self, uint32 dwEapTypeId, uint uConnectionParam) Uninitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig self, uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, uint uReserved1, uint uReserved2) ServerInvokeConfigUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig self, uint32 dwEapTypeId, uint uConnectionParam, HWND hwndParent, uint32 dwFlags, uint8* pConnectionDataIn, uint32 dwSizeOfConnectionDataIn, uint8** ppConnectionDataOut, out uint32 pdwSizeOfConnectionDataOut) RouterInvokeConfigUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig self, uint32 dwEapTypeId, uint uConnectionParam, HWND hwndParent, uint32 dwFlags, uint8* pConnectionDataIn, uint32 dwSizeOfConnectionDataIn, uint8* pUserDataIn, uint32 dwSizeOfUserDataIn, uint8** ppUserDataOut, out uint32 pdwSizeOfUserDataOut) RouterInvokeCredentialsUI;
			}
		}
		[CRepr]
		public struct IEAPProviderConfig2 : IEAPProviderConfig
		{
			public const new Guid IID = .(0xd565917a, 0x85c4, 0x4466, 0x85, 0x6e, 0x67, 0x1c, 0x37, 0x42, 0xea, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ServerInvokeConfigUI2(uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, in uint8 pConfigDataIn, uint32 dwSizeOfConfigDataIn, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut) mut => VT.ServerInvokeConfigUI2(ref this, dwEapTypeId, uConnectionParam, hWnd, pConfigDataIn, dwSizeOfConfigDataIn, out ppConfigDataOut, out pdwSizeOfConfigDataOut);
			public HRESULT GetGlobalConfig(uint32 dwEapTypeId, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut) mut => VT.GetGlobalConfig(ref this, dwEapTypeId, out ppConfigDataOut, out pdwSizeOfConfigDataOut);

			[CRepr]
			public struct VTable : IEAPProviderConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig2 self, uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, in uint8 pConfigDataIn, uint32 dwSizeOfConfigDataIn, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut) ServerInvokeConfigUI2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig2 self, uint32 dwEapTypeId, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut) GetGlobalConfig;
			}
		}
		[CRepr]
		public struct IEAPProviderConfig3 : IEAPProviderConfig2
		{
			public const new Guid IID = .(0xb78ecd12, 0x68bb, 0x4f86, 0x9b, 0xf0, 0x84, 0x38, 0xdd, 0x3b, 0xe9, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ServerInvokeCertificateConfigUI(uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, in uint8 pConfigDataIn, uint32 dwSizeOfConfigDataIn, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut, uint uReserved) mut => VT.ServerInvokeCertificateConfigUI(ref this, dwEapTypeId, uConnectionParam, hWnd, pConfigDataIn, dwSizeOfConfigDataIn, out ppConfigDataOut, out pdwSizeOfConfigDataOut, uReserved);

			[CRepr]
			public struct VTable : IEAPProviderConfig2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEAPProviderConfig3 self, uint32 dwEapTypeId, uint uConnectionParam, HWND hWnd, in uint8 pConfigDataIn, uint32 dwSizeOfConfigDataIn, out uint8* ppConfigDataOut, out uint32 pdwSizeOfConfigDataOut, uint uReserved) ServerInvokeCertificateConfigUI;
			}
		}
		
		// --- Functions ---
		
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetMethods(out EAP_METHOD_INFO_ARRAY pEapMethodInfoArray, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetMethodProperties(uint32 dwVersion, uint32 dwFlags, EAP_METHOD_TYPE eapMethodType, HANDLE hUserImpersonationToken, uint32 dwEapConnDataSize, uint8* pbEapConnData, uint32 dwUserDataSize, uint8* pbUserData, out EAP_METHOD_PROPERTY_ARRAY pMethodPropertyArray, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerInvokeConfigUI(HWND hwndParent, uint32 dwFlags, EAP_METHOD_TYPE eapMethodType, uint32 dwSizeOfConfigIn, uint8* pConfigIn, out uint32 pdwSizeOfConfigOut, out uint8* ppConfigOut, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerQueryCredentialInputFields(HANDLE hUserImpersonationToken, EAP_METHOD_TYPE eapMethodType, uint32 dwFlags, uint32 dwEapConnDataSize, uint8* pbEapConnData, out EAP_CONFIG_INPUT_FIELD_ARRAY pEapConfigInputFieldArray, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerQueryUserBlobFromCredentialInputFields(HANDLE hUserImpersonationToken, EAP_METHOD_TYPE eapMethodType, uint32 dwFlags, uint32 dwEapConnDataSize, uint8* pbEapConnData, in EAP_CONFIG_INPUT_FIELD_ARRAY pEapConfigInputFieldArray, out uint32 pdwUserBlobSize, uint8** ppbUserBlob, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerInvokeIdentityUI(uint32 dwVersion, EAP_METHOD_TYPE eapMethodType, uint32 dwFlags, HWND hwndParent, uint32 dwSizeofConnectionData, uint8* pConnectionData, uint32 dwSizeofUserData, uint8* pUserData, out uint32 pdwSizeOfUserDataOut, out uint8* ppUserDataOut, out PWSTR ppwszIdentity, out EAP_ERROR* ppEapError, void** ppvReserved);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerInvokeInteractiveUI(HWND hwndParent, uint32 dwSizeofUIContextData, uint8* pUIContextData, out uint32 pdwSizeOfDataFromInteractiveUI, out uint8* ppDataFromInteractiveUI, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerQueryInteractiveUIInputFields(uint32 dwVersion, uint32 dwFlags, uint32 dwSizeofUIContextData, uint8* pUIContextData, out EAP_INTERACTIVE_UI_DATA pEapInteractiveUIData, out EAP_ERROR* ppEapError, void** ppvReserved);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerQueryUIBlobFromInteractiveUIInputFields(uint32 dwVersion, uint32 dwFlags, uint32 dwSizeofUIContextData, uint8* pUIContextData, in EAP_INTERACTIVE_UI_DATA pEapInteractiveUIData, out uint32 pdwSizeOfDataFromInteractiveUI, out uint8* ppDataFromInteractiveUI, out EAP_ERROR* ppEapError, void** ppvReserved);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerConfigXml2Blob(uint32 dwFlags, ref IXMLDOMNode pConfigDoc, out uint32 pdwSizeOfConfigOut, out uint8* ppConfigOut, out EAP_METHOD_TYPE pEapMethodType, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerCredentialsXml2Blob(uint32 dwFlags, ref IXMLDOMNode pCredentialsDoc, uint32 dwSizeOfConfigIn, uint8* pConfigIn, out uint32 pdwSizeOfCredentialsOut, out uint8* ppCredentialsOut, out EAP_METHOD_TYPE pEapMethodType, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerConfigBlob2Xml(uint32 dwFlags, EAP_METHOD_TYPE eapMethodType, uint32 dwSizeOfConfigIn, uint8* pConfigIn, out IXMLDOMDocument2* ppConfigDoc, out EAP_ERROR* ppEapError);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EapHostPeerFreeMemory(out uint8 pData);
		[Import("eappcfg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EapHostPeerFreeErrorMemory(out EAP_ERROR pEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerInitialize();
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EapHostPeerUninitialize();
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerBeginSession(uint32 dwFlags, EAP_METHOD_TYPE eapType, in EAP_ATTRIBUTES pAttributeArray, HANDLE hTokenImpersonateUser, uint32 dwSizeofConnectionData, in uint8 pConnectionData, uint32 dwSizeofUserData, in uint8 pUserData, uint32 dwMaxSendPacketSize, in Guid pConnectionId, NotificationHandler func, void* pContextData, out uint32 pSessionId, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerProcessReceivedPacket(uint32 sessionHandle, uint32 cbReceivePacket, in uint8 pReceivePacket, out EapHostPeerResponseAction pEapOutput, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetSendPacket(uint32 sessionHandle, out uint32 pcbSendPacket, out uint8* ppSendPacket, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetResult(uint32 sessionHandle, EapHostPeerMethodResultReason reason, out EapHostPeerMethodResult ppResult, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetUIContext(uint32 sessionHandle, out uint32 pdwSizeOfUIContextData, out uint8* ppUIContextData, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerSetUIContext(uint32 sessionHandle, uint32 dwSizeOfUIContextData, in uint8 pUIContextData, out EapHostPeerResponseAction pEapOutput, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetResponseAttributes(uint32 sessionHandle, out EAP_ATTRIBUTES pAttribs, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerSetResponseAttributes(uint32 sessionHandle, in EAP_ATTRIBUTES pAttribs, out EapHostPeerResponseAction pEapOutput, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetAuthStatus(uint32 sessionHandle, EapHostPeerAuthParams authParam, out uint32 pcbAuthData, out uint8* ppAuthData, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerEndSession(uint32 sessionHandle, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetDataToUnplumbCredentials(out Guid pConnectionIdThatLastSavedCreds, out int phCredentialImpersonationToken, uint32 sessionHandle, out EAP_ERROR* ppEapError, out BOOL fSaveToCredMan);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerClearConnection(out Guid pConnectionId, out EAP_ERROR* ppEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EapHostPeerFreeEapError(out EAP_ERROR pEapError);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetIdentity(uint32 dwVersion, uint32 dwFlags, EAP_METHOD_TYPE eapMethodType, uint32 dwSizeofConnectionData, uint8* pConnectionData, uint32 dwSizeofUserData, uint8* pUserData, HANDLE hTokenImpersonateUser, out BOOL pfInvokeUI, out uint32 pdwSizeOfUserDataOut, out uint8* ppUserDataOut, out PWSTR ppwszIdentity, out EAP_ERROR* ppEapError, out uint8* ppvReserved);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EapHostPeerGetEncryptedPassword(uint32 dwSizeofPassword, PWSTR szPassword, out PWSTR ppszEncPassword);
		[Import("eappprxy.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void EapHostPeerFreeRuntimeMemory(out uint8 pData);
	}
}
