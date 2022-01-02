using System;

// namespace Security.Credentials
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FILE_DEVICE_SMARTCARD = 49;
		public const Guid GUID_DEVINTERFACE_SMARTCARD_READER = .(0x50dd5230, 0xba8a, 0x11d1, 0xbf, 0x5d, 0x00, 0x00, 0xf8, 0x05, 0xf5, 0x30);
		public const uint32 SCARD_ATR_LENGTH = 33;
		public const uint32 SCARD_PROTOCOL_UNDEFINED = 0;
		public const uint32 SCARD_PROTOCOL_T0 = 1;
		public const uint32 SCARD_PROTOCOL_T1 = 2;
		public const uint32 SCARD_PROTOCOL_RAW = 65536;
		public const uint32 SCARD_PROTOCOL_DEFAULT = 2147483648;
		public const uint32 SCARD_PROTOCOL_OPTIMAL = 0;
		public const uint32 SCARD_POWER_DOWN = 0;
		public const uint32 SCARD_COLD_RESET = 1;
		public const uint32 SCARD_WARM_RESET = 2;
		public const uint32 MAXIMUM_ATTR_STRING_LENGTH = 32;
		public const uint32 MAXIMUM_SMARTCARD_READERS = 10;
		public const uint32 SCARD_CLASS_VENDOR_INFO = 1;
		public const uint32 SCARD_CLASS_COMMUNICATIONS = 2;
		public const uint32 SCARD_CLASS_PROTOCOL = 3;
		public const uint32 SCARD_CLASS_POWER_MGMT = 4;
		public const uint32 SCARD_CLASS_SECURITY = 5;
		public const uint32 SCARD_CLASS_MECHANICAL = 6;
		public const uint32 SCARD_CLASS_VENDOR_DEFINED = 7;
		public const uint32 SCARD_CLASS_IFD_PROTOCOL = 8;
		public const uint32 SCARD_CLASS_ICC_STATE = 9;
		public const uint32 SCARD_CLASS_PERF = 32766;
		public const uint32 SCARD_CLASS_SYSTEM = 32767;
		public const uint32 SCARD_T0_HEADER_LENGTH = 7;
		public const uint32 SCARD_T0_CMD_LENGTH = 5;
		public const uint32 SCARD_T1_PROLOGUE_LENGTH = 3;
		public const uint32 SCARD_T1_EPILOGUE_LENGTH = 2;
		public const uint32 SCARD_T1_EPILOGUE_LENGTH_LRC = 1;
		public const uint32 SCARD_T1_MAX_IFS = 254;
		public const uint32 SCARD_UNKNOWN = 0;
		public const uint32 SCARD_ABSENT = 1;
		public const uint32 SCARD_PRESENT = 2;
		public const uint32 SCARD_SWALLOWED = 3;
		public const uint32 SCARD_POWERED = 4;
		public const uint32 SCARD_NEGOTIABLE = 5;
		public const uint32 SCARD_SPECIFIC = 6;
		public const uint32 SCARD_READER_SWALLOWS = 1;
		public const uint32 SCARD_READER_EJECTS = 2;
		public const uint32 SCARD_READER_CONFISCATES = 4;
		public const uint32 SCARD_READER_CONTACTLESS = 8;
		public const uint32 SCARD_READER_TYPE_SERIAL = 1;
		public const uint32 SCARD_READER_TYPE_PARALELL = 2;
		public const uint32 SCARD_READER_TYPE_KEYBOARD = 4;
		public const uint32 SCARD_READER_TYPE_SCSI = 8;
		public const uint32 SCARD_READER_TYPE_IDE = 16;
		public const uint32 SCARD_READER_TYPE_USB = 32;
		public const uint32 SCARD_READER_TYPE_PCMCIA = 64;
		public const uint32 SCARD_READER_TYPE_TPM = 128;
		public const uint32 SCARD_READER_TYPE_NFC = 256;
		public const uint32 SCARD_READER_TYPE_UICC = 512;
		public const uint32 SCARD_READER_TYPE_NGC = 1024;
		public const uint32 SCARD_READER_TYPE_EMBEDDEDSE = 2048;
		public const uint32 SCARD_READER_TYPE_VENDOR = 240;
		public const NTSTATUS STATUS_LOGON_FAILURE = -1073741715;
		public const NTSTATUS STATUS_WRONG_PASSWORD = -1073741718;
		public const NTSTATUS STATUS_PASSWORD_EXPIRED = -1073741711;
		public const NTSTATUS STATUS_PASSWORD_MUST_CHANGE = -1073741276;
		public const NTSTATUS STATUS_ACCESS_DENIED = -1073741790;
		public const NTSTATUS STATUS_DOWNGRADE_DETECTED = -1073740920;
		public const NTSTATUS STATUS_AUTHENTICATION_FIREWALL_FAILED = -1073740781;
		public const NTSTATUS STATUS_ACCOUNT_DISABLED = -1073741710;
		public const NTSTATUS STATUS_ACCOUNT_RESTRICTION = -1073741714;
		public const NTSTATUS STATUS_ACCOUNT_LOCKED_OUT = -1073741260;
		public const NTSTATUS STATUS_ACCOUNT_EXPIRED = -1073741421;
		public const NTSTATUS STATUS_LOGON_TYPE_NOT_GRANTED = -1073741477;
		public const NTSTATUS STATUS_NO_SUCH_LOGON_SESSION = -1073741729;
		public const NTSTATUS STATUS_NO_SUCH_USER = -1073741724;
		public const uint32 CRED_MAX_STRING_LENGTH = 256;
		public const uint32 CRED_MAX_GENERIC_TARGET_NAME_LENGTH = 32767;
		public const uint32 CRED_MAX_TARGETNAME_NAMESPACE_LENGTH = 256;
		public const uint32 CRED_MAX_TARGETNAME_ATTRIBUTE_LENGTH = 256;
		public const uint32 CRED_MAX_VALUE_SIZE = 256;
		public const uint32 CRED_MAX_ATTRIBUTES = 64;
		public const uint32 CRED_LOGON_TYPES_MASK = 61440;
		public const uint32 CRED_TI_SERVER_FORMAT_UNKNOWN = 1;
		public const uint32 CRED_TI_DOMAIN_FORMAT_UNKNOWN = 2;
		public const uint32 CRED_TI_ONLY_PASSWORD_REQUIRED = 4;
		public const uint32 CRED_TI_USERNAME_TARGET = 8;
		public const uint32 CRED_TI_CREATE_EXPLICIT_CRED = 16;
		public const uint32 CRED_TI_WORKGROUP_MEMBER = 32;
		public const uint32 CRED_TI_DNSTREE_IS_DFS_SERVER = 64;
		public const uint32 CRED_TI_VALID_FLAGS = 61567;
		public const uint32 CERT_HASH_LENGTH = 20;
		public const uint32 CREDUI_MAX_MESSAGE_LENGTH = 1024;
		public const uint32 CREDUI_MAX_CAPTION_LENGTH = 128;
		public const uint32 CREDUI_MAX_GENERIC_TARGET_LENGTH = 32767;
		public const uint32 CREDUIWIN_IGNORE_CLOUDAUTHORITY_NAME = 262144;
		public const uint32 CREDUIWIN_DOWNLEVEL_HELLO_AS_SMART_CARD = 2147483648;
		public const uint32 CRED_PRESERVE_CREDENTIAL_BLOB = 1;
		public const uint32 CRED_CACHE_TARGET_INFORMATION = 1;
		public const uint32 CRED_ALLOW_NAME_RESOLUTION = 1;
		public const uint32 CRED_PROTECT_AS_SELF = 1;
		public const uint32 CRED_PROTECT_TO_SYSTEM = 2;
		public const uint32 CRED_UNPROTECT_AS_SELF = 1;
		public const uint32 CRED_UNPROTECT_ALLOW_TO_SYSTEM = 2;
		public const uint32 SCARD_SCOPE_TERMINAL = 1;
		public const uint32 SCARD_PROVIDER_PRIMARY = 1;
		public const uint32 SCARD_PROVIDER_CSP = 2;
		public const uint32 SCARD_PROVIDER_KSP = 3;
		public const uint32 SCARD_STATE_UNPOWERED = 1024;
		public const uint32 SCARD_SHARE_EXCLUSIVE = 1;
		public const uint32 SCARD_SHARE_SHARED = 2;
		public const uint32 SCARD_SHARE_DIRECT = 3;
		public const uint32 SCARD_LEAVE_CARD = 0;
		public const uint32 SCARD_RESET_CARD = 1;
		public const uint32 SCARD_UNPOWER_CARD = 2;
		public const uint32 SCARD_EJECT_CARD = 3;
		public const uint32 SC_DLG_MINIMAL_UI = 1;
		public const uint32 SC_DLG_NO_UI = 2;
		public const uint32 SC_DLG_FORCE_UI = 4;
		public const uint32 SCERR_NOCARDNAME = 16384;
		public const uint32 SCERR_NOGUIDS = 32768;
		public const uint32 SCARD_AUDIT_CHV_FAILURE = 0;
		public const uint32 SCARD_AUDIT_CHV_SUCCESS = 1;
		public const uint32 CREDSSP_SERVER_AUTH_NEGOTIATE = 1;
		public const uint32 CREDSSP_SERVER_AUTH_CERTIFICATE = 2;
		public const uint32 CREDSSP_SERVER_AUTH_LOOPBACK = 4;
		public const uint32 SECPKG_ALT_ATTR = 2147483648;
		public const uint32 SECPKG_ATTR_C_FULL_IDENT_TOKEN = 2147483781;
		public const uint32 CREDSSP_CRED_EX_VERSION = 0;
		public const uint32 CREDSSP_FLAG_REDIRECT = 1;
		
		// --- Enums ---
		
		public enum CRED_FLAGS : uint32
		{
			PASSWORD_FOR_CERT = 1,
			PROMPT_NOW = 2,
			USERNAME_TARGET = 4,
			OWF_CRED_BLOB = 8,
			REQUIRE_CONFIRMATION = 16,
			WILDCARD_MATCH = 32,
			VSM_PROTECTED = 64,
			NGC_CERT = 128,
			VALID_FLAGS = 61695,
			VALID_INPUT_FLAGS = 61599,
		}
		public enum CRED_TYPE : uint32
		{
			GENERIC = 1,
			DOMAIN_PASSWORD = 2,
			DOMAIN_CERTIFICATE = 3,
			DOMAIN_VISIBLE_PASSWORD = 4,
			GENERIC_CERTIFICATE = 5,
			DOMAIN_EXTENDED = 6,
			MAXIMUM = 7,
			MAXIMUM_EX = 1007,
		}
		public enum CRED_PERSIST : uint32
		{
			NONE = 0,
			SESSION = 1,
			LOCAL_MACHINE = 2,
			ENTERPRISE = 3,
		}
		public enum CREDUI_FLAGS : uint32
		{
			ALWAYS_SHOW_UI = 128,
			COMPLETE_USERNAME = 2048,
			DO_NOT_PERSIST = 2,
			EXCLUDE_CERTIFICATES = 8,
			EXPECT_CONFIRMATION = 131072,
			GENERIC_CREDENTIALS = 262144,
			INCORRECT_PASSWORD = 1,
			KEEP_USERNAME = 1048576,
			PASSWORD_ONLY_OK = 512,
			PERSIST = 4096,
			REQUEST_ADMINISTRATOR = 4,
			REQUIRE_CERTIFICATE = 16,
			REQUIRE_SMARTCARD = 256,
			SERVER_CREDENTIAL = 16384,
			SHOW_SAVE_CHECK_BOX = 64,
			USERNAME_TARGET_CREDENTIALS = 524288,
			VALIDATE_USERNAME = 1024,
		}
		public enum SCARD_SCOPE : uint32
		{
			USER = 0,
			SYSTEM = 2,
		}
		public enum CRED_ENUMERATE_FLAGS : uint32
		{
			ALL_CREDENTIALS = 1,
		}
		public enum CREDUIWIN_FLAGS : uint32
		{
			GENERIC = 1,
			CHECKBOX = 2,
			AUTHPACKAGE_ONLY = 16,
			IN_CRED_ONLY = 32,
			ENUMERATE_ADMINS = 256,
			ENUMERATE_CURRENT_USER = 512,
			SECURE_PROMPT = 4096,
			PREPROMPTING = 8192,
			PACK_32_WOW = 268435456,
		}
		public enum SCARD_STATE : uint32
		{
			UNAWARE = 0,
			IGNORE = 1,
			UNAVAILABLE = 8,
			EMPTY = 16,
			PRESENT = 32,
			ATRMATCH = 64,
			EXCLUSIVE = 128,
			INUSE = 256,
			MUTE = 512,
			CHANGED = 2,
			UNKNOWN = 4,
		}
		public enum CRED_PACK_FLAGS : uint32
		{
			PROTECTED_CREDENTIALS = 1,
			WOW_BUFFER = 2,
			GENERIC_CREDENTIALS = 4,
			ID_PROVIDER_CREDENTIALS = 8,
		}
		public enum KeyCredentialManagerOperationErrorStates : uint32
		{
			None = 0,
			DeviceJoinFailure = 1,
			TokenFailure = 2,
			CertificateFailure = 4,
			RemoteSessionFailure = 8,
			PolicyFailure = 16,
			HardwareFailure = 32,
			PinExistsFailure = 64,
		}
		public enum KeyCredentialManagerOperationType : int32
		{
			Provisioning = 0,
			PinChange = 1,
			PinReset = 2,
		}
		public enum CRED_MARSHAL_TYPE : int32
		{
			CertCredential = 1,
			UsernameTargetCredential = 2,
			BinaryBlobCredential = 3,
			UsernameForPackedCredentials = 4,
			BinaryBlobForSystem = 5,
		}
		public enum CRED_PROTECTION_TYPE : int32
		{
			Unprotected = 0,
			UserProtection = 1,
			TrustedProtection = 2,
			ForSystemProtection = 3,
		}
		public enum READER_SEL_REQUEST_MATCH_TYPE : int32
		{
			READER_AND_CONTAINER = 1,
			SERIAL_NUMBER = 2,
			ALL_CARDS = 3,
		}
		public enum CREDSPP_SUBMIT_TYPE : int32
		{
			PasswordCreds = 2,
			SchannelCreds = 4,
			CertificateCreds = 13,
			SubmitBufferBoth = 50,
			SubmitBufferBothOld = 51,
			CredEx = 100,
		}
		
		// --- Function Pointers ---
		
		public function uint LPOCNCONNPROCA(uint param0, PSTR param1, PSTR param2, void* param3);
		public function uint LPOCNCONNPROCW(uint param0, PWSTR param1, PWSTR param2, void* param3);
		public function BOOL LPOCNCHKPROC(uint param0, uint param1, void* param2);
		public function void LPOCNDSCPROC(uint param0, uint param1, void* param2);
		
		// --- Structs ---
		
		[CRepr]
		public struct KeyCredentialManagerInfo
		{
			public Guid containerId;
		}
		[CRepr]
		public struct SecHandle
		{
			public uint dwLower;
			public uint dwUpper;
		}
		[CRepr]
		public struct CREDENTIAL_ATTRIBUTEA
		{
			public PSTR Keyword;
			public uint32 Flags;
			public uint32 ValueSize;
			public uint8* Value;
		}
		[CRepr]
		public struct CREDENTIAL_ATTRIBUTEW
		{
			public PWSTR Keyword;
			public uint32 Flags;
			public uint32 ValueSize;
			public uint8* Value;
		}
		[CRepr]
		public struct CREDENTIALA
		{
			public CRED_FLAGS Flags;
			public CRED_TYPE Type;
			public PSTR TargetName;
			public PSTR Comment;
			public FILETIME LastWritten;
			public uint32 CredentialBlobSize;
			public uint8* CredentialBlob;
			public CRED_PERSIST Persist;
			public uint32 AttributeCount;
			public CREDENTIAL_ATTRIBUTEA* Attributes;
			public PSTR TargetAlias;
			public PSTR UserName;
		}
		[CRepr]
		public struct CREDENTIALW
		{
			public CRED_FLAGS Flags;
			public CRED_TYPE Type;
			public PWSTR TargetName;
			public PWSTR Comment;
			public FILETIME LastWritten;
			public uint32 CredentialBlobSize;
			public uint8* CredentialBlob;
			public CRED_PERSIST Persist;
			public uint32 AttributeCount;
			public CREDENTIAL_ATTRIBUTEW* Attributes;
			public PWSTR TargetAlias;
			public PWSTR UserName;
		}
		[CRepr]
		public struct CREDENTIAL_TARGET_INFORMATIONA
		{
			public PSTR TargetName;
			public PSTR NetbiosServerName;
			public PSTR DnsServerName;
			public PSTR NetbiosDomainName;
			public PSTR DnsDomainName;
			public PSTR DnsTreeName;
			public PSTR PackageName;
			public uint32 Flags;
			public uint32 CredTypeCount;
			public uint32* CredTypes;
		}
		[CRepr]
		public struct CREDENTIAL_TARGET_INFORMATIONW
		{
			public PWSTR TargetName;
			public PWSTR NetbiosServerName;
			public PWSTR DnsServerName;
			public PWSTR NetbiosDomainName;
			public PWSTR DnsDomainName;
			public PWSTR DnsTreeName;
			public PWSTR PackageName;
			public uint32 Flags;
			public uint32 CredTypeCount;
			public uint32* CredTypes;
		}
		[CRepr]
		public struct CERT_CREDENTIAL_INFO
		{
			public uint32 cbSize;
			public uint8[20] rgbHashOfCert;
		}
		[CRepr]
		public struct USERNAME_TARGET_CREDENTIAL_INFO
		{
			public PWSTR UserName;
		}
		[CRepr]
		public struct BINARY_BLOB_CREDENTIAL_INFO
		{
			public uint32 cbBlob;
			public uint8* pbBlob;
		}
		[CRepr]
		public struct CREDUI_INFOA
		{
			public uint32 cbSize;
			public HWND hwndParent;
			public PSTR pszMessageText;
			public PSTR pszCaptionText;
			public HBITMAP hbmBanner;
		}
		[CRepr]
		public struct CREDUI_INFOW
		{
			public uint32 cbSize;
			public HWND hwndParent;
			public PWSTR pszMessageText;
			public PWSTR pszCaptionText;
			public HBITMAP hbmBanner;
		}
		[CRepr]
		public struct SCARD_IO_REQUEST
		{
			public uint32 dwProtocol;
			public uint32 cbPciLength;
		}
		[CRepr]
		public struct SCARD_T0_COMMAND
		{
			public uint8 bCla;
			public uint8 bIns;
			public uint8 bP1;
			public uint8 bP2;
			public uint8 bP3;
		}
		[CRepr]
		public struct SCARD_T0_REQUEST
		{
			public SCARD_IO_REQUEST ioRequest;
			public uint8 bSw1;
			public uint8 bSw2;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public SCARD_T0_COMMAND CmdBytes;
				public uint8[5] rgbHeader;
			}
		}
		[CRepr]
		public struct SCARD_T1_REQUEST
		{
			public SCARD_IO_REQUEST ioRequest;
		}
		[CRepr]
		public struct SCARD_READERSTATEA
		{
			public PSTR szReader;
			public void* pvUserData;
			public SCARD_STATE dwCurrentState;
			public SCARD_STATE dwEventState;
			public uint32 cbAtr;
			public uint8[36] rgbAtr;
		}
		[CRepr]
		public struct SCARD_READERSTATEW
		{
			public PWSTR szReader;
			public void* pvUserData;
			public SCARD_STATE dwCurrentState;
			public SCARD_STATE dwEventState;
			public uint32 cbAtr;
			public uint8[36] rgbAtr;
		}
		[CRepr]
		public struct SCARD_ATRMASK
		{
			public uint32 cbAtr;
			public uint8[36] rgbAtr;
			public uint8[36] rgbMask;
		}
		[CRepr]
		public struct OPENCARD_SEARCH_CRITERIAA
		{
			public uint32 dwStructSize;
			public PSTR lpstrGroupNames;
			public uint32 nMaxGroupNames;
			public Guid* rgguidInterfaces;
			public uint32 cguidInterfaces;
			public PSTR lpstrCardNames;
			public uint32 nMaxCardNames;
			public LPOCNCHKPROC lpfnCheck;
			public LPOCNCONNPROCA lpfnConnect;
			public LPOCNDSCPROC lpfnDisconnect;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
		}
		[CRepr]
		public struct OPENCARD_SEARCH_CRITERIAW
		{
			public uint32 dwStructSize;
			public PWSTR lpstrGroupNames;
			public uint32 nMaxGroupNames;
			public Guid* rgguidInterfaces;
			public uint32 cguidInterfaces;
			public PWSTR lpstrCardNames;
			public uint32 nMaxCardNames;
			public LPOCNCHKPROC lpfnCheck;
			public LPOCNCONNPROCW lpfnConnect;
			public LPOCNDSCPROC lpfnDisconnect;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
		}
		[CRepr]
		public struct OPENCARDNAME_EXA
		{
			public uint32 dwStructSize;
			public uint hSCardContext;
			public HWND hwndOwner;
			public uint32 dwFlags;
			public PSTR lpstrTitle;
			public PSTR lpstrSearchDesc;
			public HICON hIcon;
			public OPENCARD_SEARCH_CRITERIAA* pOpenCardSearchCriteria;
			public LPOCNCONNPROCA lpfnConnect;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
			public PSTR lpstrRdr;
			public uint32 nMaxRdr;
			public PSTR lpstrCard;
			public uint32 nMaxCard;
			public uint32 dwActiveProtocol;
			public uint hCardHandle;
		}
		[CRepr]
		public struct OPENCARDNAME_EXW
		{
			public uint32 dwStructSize;
			public uint hSCardContext;
			public HWND hwndOwner;
			public uint32 dwFlags;
			public PWSTR lpstrTitle;
			public PWSTR lpstrSearchDesc;
			public HICON hIcon;
			public OPENCARD_SEARCH_CRITERIAW* pOpenCardSearchCriteria;
			public LPOCNCONNPROCW lpfnConnect;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
			public PWSTR lpstrRdr;
			public uint32 nMaxRdr;
			public PWSTR lpstrCard;
			public uint32 nMaxCard;
			public uint32 dwActiveProtocol;
			public uint hCardHandle;
		}
		[CRepr]
		public struct READER_SEL_REQUEST
		{
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
			public READER_SEL_REQUEST_MATCH_TYPE MatchType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _ReaderAndContainerParameter_e__Struct ReaderAndContainerParameter;
				public _SerialNumberParameter_e__Struct SerialNumberParameter;
				
				[CRepr]
				public struct _ReaderAndContainerParameter_e__Struct
				{
					public uint32 cbReaderNameOffset;
					public uint32 cchReaderNameLength;
					public uint32 cbContainerNameOffset;
					public uint32 cchContainerNameLength;
					public uint32 dwDesiredCardModuleVersion;
					public uint32 dwCspFlags;
				}
				[CRepr]
				public struct _SerialNumberParameter_e__Struct
				{
					public uint32 cbSerialNumberOffset;
					public uint32 cbSerialNumberLength;
					public uint32 dwDesiredCardModuleVersion;
				}
			}
		}
		[CRepr]
		public struct READER_SEL_RESPONSE
		{
			public uint32 cbReaderNameOffset;
			public uint32 cchReaderNameLength;
			public uint32 cbCardNameOffset;
			public uint32 cchCardNameLength;
		}
		[CRepr]
		public struct OPENCARDNAMEA
		{
			public uint32 dwStructSize;
			public HWND hwndOwner;
			public uint hSCardContext;
			public PSTR lpstrGroupNames;
			public uint32 nMaxGroupNames;
			public PSTR lpstrCardNames;
			public uint32 nMaxCardNames;
			public Guid* rgguidInterfaces;
			public uint32 cguidInterfaces;
			public PSTR lpstrRdr;
			public uint32 nMaxRdr;
			public PSTR lpstrCard;
			public uint32 nMaxCard;
			public PSTR lpstrTitle;
			public uint32 dwFlags;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
			public uint32 dwActiveProtocol;
			public LPOCNCONNPROCA lpfnConnect;
			public LPOCNCHKPROC lpfnCheck;
			public LPOCNDSCPROC lpfnDisconnect;
			public uint hCardHandle;
		}
		[CRepr]
		public struct OPENCARDNAMEW
		{
			public uint32 dwStructSize;
			public HWND hwndOwner;
			public uint hSCardContext;
			public PWSTR lpstrGroupNames;
			public uint32 nMaxGroupNames;
			public PWSTR lpstrCardNames;
			public uint32 nMaxCardNames;
			public Guid* rgguidInterfaces;
			public uint32 cguidInterfaces;
			public PWSTR lpstrRdr;
			public uint32 nMaxRdr;
			public PWSTR lpstrCard;
			public uint32 nMaxCard;
			public PWSTR lpstrTitle;
			public uint32 dwFlags;
			public void* pvUserData;
			public uint32 dwShareMode;
			public uint32 dwPreferredProtocols;
			public uint32 dwActiveProtocol;
			public LPOCNCONNPROCW lpfnConnect;
			public LPOCNCHKPROC lpfnCheck;
			public LPOCNDSCPROC lpfnDisconnect;
			public uint hCardHandle;
		}
		[CRepr]
		public struct SecPkgContext_ClientCreds
		{
			public uint32 AuthBufferLen;
			public uint8* AuthBuffer;
		}
		[CRepr]
		public struct CREDSSP_CRED
		{
			public CREDSPP_SUBMIT_TYPE Type;
			public void* pSchannelCred;
			public void* pSpnegoCred;
		}
		[CRepr]
		public struct CREDSSP_CRED_EX
		{
			public CREDSPP_SUBMIT_TYPE Type;
			public uint32 Version;
			public uint32 Flags;
			public uint32 Reserved;
			public CREDSSP_CRED Cred;
		}
		
		// --- Functions ---
		
		[Import("keycredmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT KeyCredentialManagerGetOperationErrorStates(KeyCredentialManagerOperationType keyCredentialManagerOperationType, out BOOL isReady, out KeyCredentialManagerOperationErrorStates keyCredentialManagerOperationErrorStates);
		[Import("keycredmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT KeyCredentialManagerShowUIOperation(HWND hWndOwner, KeyCredentialManagerOperationType keyCredentialManagerOperationType);
		[Import("keycredmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT KeyCredentialManagerGetInformation(out KeyCredentialManagerInfo* keyCredentialManagerInfo);
		[Import("keycredmgr.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void KeyCredentialManagerFreeInformation(ref KeyCredentialManagerInfo keyCredentialManagerInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredWriteW(ref CREDENTIALW Credential, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredWriteA(ref CREDENTIALA Credential, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredReadW(PWSTR TargetName, uint32 Type, uint32 Flags, out CREDENTIALW* Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredReadA(PSTR TargetName, uint32 Type, uint32 Flags, out CREDENTIALA* Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredEnumerateW(PWSTR Filter, CRED_ENUMERATE_FLAGS Flags, out uint32 Count, out CREDENTIALW** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredEnumerateA(PSTR Filter, CRED_ENUMERATE_FLAGS Flags, out uint32 Count, out CREDENTIALA** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredWriteDomainCredentialsW(ref CREDENTIAL_TARGET_INFORMATIONW TargetInfo, ref CREDENTIALW Credential, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredWriteDomainCredentialsA(ref CREDENTIAL_TARGET_INFORMATIONA TargetInfo, ref CREDENTIALA Credential, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredReadDomainCredentialsW(ref CREDENTIAL_TARGET_INFORMATIONW TargetInfo, uint32 Flags, out uint32 Count, out CREDENTIALW** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredReadDomainCredentialsA(ref CREDENTIAL_TARGET_INFORMATIONA TargetInfo, uint32 Flags, out uint32 Count, out CREDENTIALA** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredDeleteW(PWSTR TargetName, uint32 Type, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredDeleteA(PSTR TargetName, uint32 Type, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredRenameW(PWSTR OldTargetName, PWSTR NewTargetName, uint32 Type, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredRenameA(PSTR OldTargetName, PSTR NewTargetName, uint32 Type, uint32 Flags);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredGetTargetInfoW(PWSTR TargetName, uint32 Flags, out CREDENTIAL_TARGET_INFORMATIONW* TargetInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredGetTargetInfoA(PSTR TargetName, uint32 Flags, out CREDENTIAL_TARGET_INFORMATIONA* TargetInfo);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredMarshalCredentialW(CRED_MARSHAL_TYPE CredType, void* Credential, out PWSTR MarshaledCredential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredMarshalCredentialA(CRED_MARSHAL_TYPE CredType, void* Credential, out PSTR MarshaledCredential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnmarshalCredentialW(PWSTR MarshaledCredential, out CRED_MARSHAL_TYPE CredType, void** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnmarshalCredentialA(PSTR MarshaledCredential, out CRED_MARSHAL_TYPE CredType, void** Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredIsMarshaledCredentialW(PWSTR MarshaledCredential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredIsMarshaledCredentialA(PSTR MarshaledCredential);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnPackAuthenticationBufferW(CRED_PACK_FLAGS dwFlags, void* pAuthBuffer, uint32 cbAuthBuffer, char16* pszUserName, out uint32 pcchMaxUserName, char16* pszDomainName, uint32* pcchMaxDomainName, char16* pszPassword, out uint32 pcchMaxPassword);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnPackAuthenticationBufferA(CRED_PACK_FLAGS dwFlags, void* pAuthBuffer, uint32 cbAuthBuffer, uint8* pszUserName, out uint32 pcchlMaxUserName, uint8* pszDomainName, uint32* pcchMaxDomainName, uint8* pszPassword, out uint32 pcchMaxPassword);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredPackAuthenticationBufferW(CRED_PACK_FLAGS dwFlags, PWSTR pszUserName, PWSTR pszPassword, uint8* pPackedCredentials, out uint32 pcbPackedCredentials);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredPackAuthenticationBufferA(CRED_PACK_FLAGS dwFlags, PSTR pszUserName, PSTR pszPassword, uint8* pPackedCredentials, out uint32 pcbPackedCredentials);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredProtectW(BOOL fAsSelf, char16* pszCredentials, uint32 cchCredentials, char16* pszProtectedCredentials, out uint32 pcchMaxChars, CRED_PROTECTION_TYPE* ProtectionType);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredProtectA(BOOL fAsSelf, uint8* pszCredentials, uint32 cchCredentials, uint8* pszProtectedCredentials, out uint32 pcchMaxChars, CRED_PROTECTION_TYPE* ProtectionType);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnprotectW(BOOL fAsSelf, char16* pszProtectedCredentials, uint32 cchProtectedCredentials, char16* pszCredentials, out uint32 pcchMaxChars);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredUnprotectA(BOOL fAsSelf, uint8* pszProtectedCredentials, uint32 cchProtectedCredentials, uint8* pszCredentials, out uint32 pcchMaxChars);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredIsProtectedW(PWSTR pszProtectedCredentials, out CRED_PROTECTION_TYPE pProtectionType);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredIsProtectedA(PSTR pszProtectedCredentials, out CRED_PROTECTION_TYPE pProtectionType);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredFindBestCredentialW(PWSTR TargetName, uint32 Type, uint32 Flags, out CREDENTIALW* Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredFindBestCredentialA(PSTR TargetName, uint32 Type, uint32 Flags, out CREDENTIALA* Credential);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CredGetSessionTypes(uint32 MaximumPersistCount, uint32* MaximumPersist);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CredFree(void* Buffer);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIPromptForCredentialsW(CREDUI_INFOW* pUiInfo, PWSTR pszTargetName, out SecHandle pContext, uint32 dwAuthError, char16* pszUserName, uint32 ulUserNameBufferSize, char16* pszPassword, uint32 ulPasswordBufferSize, BOOL* save, CREDUI_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIPromptForCredentialsA(CREDUI_INFOA* pUiInfo, PSTR pszTargetName, out SecHandle pContext, uint32 dwAuthError, uint8* pszUserName, uint32 ulUserNameBufferSize, uint8* pszPassword, uint32 ulPasswordBufferSize, BOOL* save, CREDUI_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIPromptForWindowsCredentialsW(CREDUI_INFOW* pUiInfo, uint32 dwAuthError, out uint32 pulAuthPackage, void* pvInAuthBuffer, uint32 ulInAuthBufferSize, void** ppvOutAuthBuffer, out uint32 pulOutAuthBufferSize, BOOL* pfSave, CREDUIWIN_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIPromptForWindowsCredentialsA(CREDUI_INFOA* pUiInfo, uint32 dwAuthError, out uint32 pulAuthPackage, void* pvInAuthBuffer, uint32 ulInAuthBufferSize, void** ppvOutAuthBuffer, out uint32 pulOutAuthBufferSize, BOOL* pfSave, CREDUIWIN_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIParseUserNameW(PWSTR UserName, char16* user, uint32 userBufferSize, char16* domain, uint32 domainBufferSize);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIParseUserNameA(PSTR userName, uint8* user, uint32 userBufferSize, uint8* domain, uint32 domainBufferSize);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUICmdLinePromptForCredentialsW(PWSTR pszTargetName, out SecHandle pContext, uint32 dwAuthError, char16* UserName, uint32 ulUserBufferSize, char16* pszPassword, uint32 ulPasswordBufferSize, BOOL* pfSave, CREDUI_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUICmdLinePromptForCredentialsA(PSTR pszTargetName, out SecHandle pContext, uint32 dwAuthError, uint8* UserName, uint32 ulUserBufferSize, uint8* pszPassword, uint32 ulPasswordBufferSize, BOOL* pfSave, CREDUI_FLAGS dwFlags);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIConfirmCredentialsW(PWSTR pszTargetName, BOOL bConfirm);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIConfirmCredentialsA(PSTR pszTargetName, BOOL bConfirm);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIStoreSSOCredW(PWSTR pszRealm, PWSTR pszUsername, PWSTR pszPassword, BOOL bPersist);
		[Import("credui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CredUIReadSSOCredW(PWSTR pszRealm, out PWSTR ppszUsername);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardEstablishContext(SCARD_SCOPE dwScope, void* pvReserved1, void* pvReserved2, out uint phContext);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardReleaseContext(uint hContext);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIsValidContext(uint hContext);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReaderGroupsA(uint hContext, uint8* mszGroups, out uint32 pcchGroups);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReaderGroupsW(uint hContext, char16* mszGroups, out uint32 pcchGroups);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReadersA(uint hContext, PSTR mszGroups, PSTR mszReaders, out uint32 pcchReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReadersW(uint hContext, PWSTR mszGroups, PWSTR mszReaders, out uint32 pcchReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListCardsA(uint hContext, uint8* pbAtr, Guid* rgquidInterfaces, uint32 cguidInterfaceCount, PSTR mszCards, out uint32 pcchCards);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListCardsW(uint hContext, uint8* pbAtr, Guid* rgquidInterfaces, uint32 cguidInterfaceCount, PWSTR mszCards, out uint32 pcchCards);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListInterfacesA(uint hContext, PSTR szCard, out Guid pguidInterfaces, out uint32 pcguidInterfaces);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListInterfacesW(uint hContext, PWSTR szCard, out Guid pguidInterfaces, out uint32 pcguidInterfaces);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetProviderIdA(uint hContext, PSTR szCard, out Guid pguidProviderId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetProviderIdW(uint hContext, PWSTR szCard, out Guid pguidProviderId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetCardTypeProviderNameA(uint hContext, PSTR szCardName, uint32 dwProviderId, uint8* szProvider, out uint32 pcchProvider);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetCardTypeProviderNameW(uint hContext, PWSTR szCardName, uint32 dwProviderId, char16* szProvider, out uint32 pcchProvider);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceReaderGroupA(uint hContext, PSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceReaderGroupW(uint hContext, PWSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetReaderGroupA(uint hContext, PSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetReaderGroupW(uint hContext, PWSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceReaderA(uint hContext, PSTR szReaderName, PSTR szDeviceName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceReaderW(uint hContext, PWSTR szReaderName, PWSTR szDeviceName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetReaderA(uint hContext, PSTR szReaderName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetReaderW(uint hContext, PWSTR szReaderName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardAddReaderToGroupA(uint hContext, PSTR szReaderName, PSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardAddReaderToGroupW(uint hContext, PWSTR szReaderName, PWSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardRemoveReaderFromGroupA(uint hContext, PSTR szReaderName, PSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardRemoveReaderFromGroupW(uint hContext, PWSTR szReaderName, PWSTR szGroupName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceCardTypeA(uint hContext, PSTR szCardName, Guid* pguidPrimaryProvider, Guid* rgguidInterfaces, uint32 dwInterfaceCount, ref uint8 pbAtr, ref uint8 pbAtrMask, uint32 cbAtrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardIntroduceCardTypeW(uint hContext, PWSTR szCardName, Guid* pguidPrimaryProvider, Guid* rgguidInterfaces, uint32 dwInterfaceCount, ref uint8 pbAtr, ref uint8 pbAtrMask, uint32 cbAtrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardSetCardTypeProviderNameA(uint hContext, PSTR szCardName, uint32 dwProviderId, PSTR szProvider);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardSetCardTypeProviderNameW(uint hContext, PWSTR szCardName, uint32 dwProviderId, PWSTR szProvider);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetCardTypeA(uint hContext, PSTR szCardName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardForgetCardTypeW(uint hContext, PWSTR szCardName);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardFreeMemory(uint hContext, void* pvMem);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SCardAccessStartedEvent();
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SCardReleaseStartedEvent();
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardLocateCardsA(uint hContext, PSTR mszCards, out SCARD_READERSTATEA rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardLocateCardsW(uint hContext, PWSTR mszCards, out SCARD_READERSTATEW rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardLocateCardsByATRA(uint hContext, ref SCARD_ATRMASK rgAtrMasks, uint32 cAtrs, out SCARD_READERSTATEA rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardLocateCardsByATRW(uint hContext, ref SCARD_ATRMASK rgAtrMasks, uint32 cAtrs, out SCARD_READERSTATEW rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetStatusChangeA(uint hContext, uint32 dwTimeout, out SCARD_READERSTATEA rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetStatusChangeW(uint hContext, uint32 dwTimeout, out SCARD_READERSTATEW rgReaderStates, uint32 cReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardCancel(uint hContext);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardConnectA(uint hContext, PSTR szReader, uint32 dwShareMode, uint32 dwPreferredProtocols, out uint phCard, out uint32 pdwActiveProtocol);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardConnectW(uint hContext, PWSTR szReader, uint32 dwShareMode, uint32 dwPreferredProtocols, out uint phCard, out uint32 pdwActiveProtocol);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardReconnect(uint hCard, uint32 dwShareMode, uint32 dwPreferredProtocols, uint32 dwInitialization, uint32* pdwActiveProtocol);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardDisconnect(uint hCard, uint32 dwDisposition);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardBeginTransaction(uint hCard);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardEndTransaction(uint hCard, uint32 dwDisposition);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardState(uint hCard, out uint32 pdwState, out uint32 pdwProtocol, out uint8 pbAtr, out uint32 pcbAtrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardStatusA(uint hCard, PSTR mszReaderNames, uint32* pcchReaderLen, uint32* pdwState, uint32* pdwProtocol, uint8* pbAtr, uint32* pcbAtrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardStatusW(uint hCard, PWSTR mszReaderNames, uint32* pcchReaderLen, uint32* pdwState, uint32* pdwProtocol, uint8* pbAtr, uint32* pcbAtrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardTransmit(uint hCard, ref SCARD_IO_REQUEST pioSendPci, ref uint8 pbSendBuffer, uint32 cbSendLength, SCARD_IO_REQUEST* pioRecvPci, out uint8 pbRecvBuffer, out uint32 pcbRecvLength);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetTransmitCount(uint hCard, out uint32 pcTransmitCount);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardControl(uint hCard, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, out uint32 lpBytesReturned);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetAttrib(uint hCard, uint32 dwAttrId, uint8* pbAttr, out uint32 pcbAttrLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardSetAttrib(uint hCard, uint32 dwAttrId, ref uint8 pbAttr, uint32 cbAttrLen);
		[Import("scarddlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardUIDlgSelectCardA(out OPENCARDNAME_EXA param0);
		[Import("scarddlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardUIDlgSelectCardW(out OPENCARDNAME_EXW param0);
		[Import("scarddlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetOpenCardNameA(out OPENCARDNAMEA param0);
		[Import("scarddlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetOpenCardNameW(out OPENCARDNAMEW param0);
		[Import("scarddlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardDlgExtendedError();
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardReadCacheA(uint hContext, ref Guid CardIdentifier, uint32 FreshnessCounter, PSTR LookupName, out uint8 Data, out uint32 DataLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardReadCacheW(uint hContext, ref Guid CardIdentifier, uint32 FreshnessCounter, PWSTR LookupName, out uint8 Data, out uint32 DataLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardWriteCacheA(uint hContext, ref Guid CardIdentifier, uint32 FreshnessCounter, PSTR LookupName, ref uint8 Data, uint32 DataLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardWriteCacheW(uint hContext, ref Guid CardIdentifier, uint32 FreshnessCounter, PWSTR LookupName, ref uint8 Data, uint32 DataLen);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetReaderIconA(uint hContext, PSTR szReaderName, uint8* pbIcon, out uint32 pcbIcon);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetReaderIconW(uint hContext, PWSTR szReaderName, uint8* pbIcon, out uint32 pcbIcon);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetDeviceTypeIdA(uint hContext, PSTR szReaderName, out uint32 pdwDeviceTypeId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetDeviceTypeIdW(uint hContext, PWSTR szReaderName, out uint32 pdwDeviceTypeId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetReaderDeviceInstanceIdA(uint hContext, PSTR szReaderName, PSTR szDeviceInstanceId, out uint32 pcchDeviceInstanceId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardGetReaderDeviceInstanceIdW(uint hContext, PWSTR szReaderName, PWSTR szDeviceInstanceId, out uint32 pcchDeviceInstanceId);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReadersWithDeviceInstanceIdA(uint hContext, PSTR szDeviceInstanceId, PSTR mszReaders, out uint32 pcchReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardListReadersWithDeviceInstanceIdW(uint hContext, PWSTR szDeviceInstanceId, PWSTR mszReaders, out uint32 pcchReaders);
		[Import("winscard.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SCardAudit(uint hContext, uint32 dwEvent);
	}
}
