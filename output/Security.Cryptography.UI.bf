using System;

// namespace Security.Cryptography.UI
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CRYTPDLG_FLAGS_MASK = 4278190080;
		public const uint32 CRYPTDLG_REVOCATION_DEFAULT = 0;
		public const uint32 CRYPTDLG_REVOCATION_ONLINE = 2147483648;
		public const uint32 CRYPTDLG_REVOCATION_CACHE = 1073741824;
		public const uint32 CRYPTDLG_REVOCATION_NONE = 536870912;
		public const uint32 CRYPTDLG_CACHE_ONLY_URL_RETRIEVAL = 268435456;
		public const uint32 CRYPTDLG_DISABLE_AIA = 134217728;
		public const uint32 CRYPTDLG_POLICY_MASK = 65535;
		public const uint32 POLICY_IGNORE_NON_CRITICAL_BC = 1;
		public const uint32 CRYPTDLG_ACTION_MASK = 4294901760;
		public const uint32 ACTION_REVOCATION_DEFAULT_ONLINE = 65536;
		public const uint32 ACTION_REVOCATION_DEFAULT_CACHE = 131072;
		public const uint32 CERT_DISPWELL_SELECT = 1;
		public const uint32 CERT_DISPWELL_TRUST_CA_CERT = 2;
		public const uint32 CERT_DISPWELL_TRUST_LEAF_CERT = 3;
		public const uint32 CERT_DISPWELL_TRUST_ADD_CA_CERT = 4;
		public const uint32 CERT_DISPWELL_TRUST_ADD_LEAF_CERT = 5;
		public const uint32 CERT_DISPWELL_DISTRUST_CA_CERT = 6;
		public const uint32 CERT_DISPWELL_DISTRUST_LEAF_CERT = 7;
		public const uint32 CERT_DISPWELL_DISTRUST_ADD_CA_CERT = 8;
		public const uint32 CERT_DISPWELL_DISTRUST_ADD_LEAF_CERT = 9;
		public const uint32 CSS_SELECTCERT_MASK = 16777215;
		public const uint32 SELCERT_PROPERTIES = 100;
		public const uint32 SELCERT_FINEPRINT = 101;
		public const uint32 SELCERT_CERTLIST = 102;
		public const uint32 SELCERT_ISSUED_TO = 103;
		public const uint32 SELCERT_VALIDITY = 104;
		public const uint32 SELCERT_ALGORITHM = 105;
		public const uint32 SELCERT_SERIAL_NUM = 106;
		public const uint32 SELCERT_THUMBPRINT = 107;
		public const uint32 CM_VIEWFLAGS_MASK = 16777215;
		public const uint32 CERTVIEW_CRYPTUI_LPARAM = 8388608;
		public const uint32 CERT_FILTER_OP_EXISTS = 1;
		public const uint32 CERT_FILTER_OP_NOT_EXISTS = 2;
		public const uint32 CERT_FILTER_OP_EQUALITY = 3;
		public const uint32 CERT_FILTER_INCLUDE_V1_CERTS = 1;
		public const uint32 CERT_FILTER_VALID_TIME_RANGE = 2;
		public const uint32 CERT_FILTER_VALID_SIGNATURE = 4;
		public const uint32 CERT_FILTER_LEAF_CERTS_ONLY = 8;
		public const uint32 CERT_FILTER_ISSUER_CERTS_ONLY = 16;
		public const uint32 CERT_FILTER_KEY_EXISTS = 32;
		public const uint32 CERT_VALIDITY_BEFORE_START = 1;
		public const uint32 CERT_VALIDITY_AFTER_END = 2;
		public const uint32 CERT_VALIDITY_SIGNATURE_FAILS = 4;
		public const uint32 CERT_VALIDITY_CERTIFICATE_REVOKED = 8;
		public const uint32 CERT_VALIDITY_KEY_USAGE_EXT_FAILURE = 16;
		public const uint32 CERT_VALIDITY_EXTENDED_USAGE_FAILURE = 32;
		public const uint32 CERT_VALIDITY_NAME_CONSTRAINTS_FAILURE = 64;
		public const uint32 CERT_VALIDITY_UNKNOWN_CRITICAL_EXTENSION = 128;
		public const uint32 CERT_VALIDITY_ISSUER_INVALID = 256;
		public const uint32 CERT_VALIDITY_OTHER_EXTENSION_FAILURE = 512;
		public const uint32 CERT_VALIDITY_PERIOD_NESTING_FAILURE = 1024;
		public const uint32 CERT_VALIDITY_OTHER_ERROR = 2048;
		public const uint32 CERT_VALIDITY_ISSUER_DISTRUST = 33554432;
		public const uint32 CERT_VALIDITY_EXPLICITLY_DISTRUSTED = 16777216;
		public const uint32 CERT_VALIDITY_NO_ISSUER_CERT_FOUND = 268435456;
		public const uint32 CERT_VALIDITY_NO_CRL_FOUND = 536870912;
		public const uint32 CERT_VALIDITY_CRL_OUT_OF_DATE = 1073741824;
		public const uint32 CERT_VALIDITY_NO_TRUST_DATA = 2147483648;
		public const uint32 CERT_VALIDITY_MASK_TRUST = 4294901760;
		public const uint32 CERT_VALIDITY_MASK_VALIDITY = 65535;
		public const uint32 CERT_TRUST_MASK = 16777215;
		public const uint32 CERT_TRUST_DO_FULL_SEARCH = 1;
		public const uint32 CERT_TRUST_PERMIT_MISSING_CRLS = 2;
		public const uint32 CERT_TRUST_DO_FULL_TRUST = 5;
		public const int32 CERT_CREDENTIAL_PROVIDER_ID = -509;
		public const uint64 CRYPTUI_SELECT_ISSUEDTO_COLUMN = 1uL;
		public const uint64 CRYPTUI_SELECT_ISSUEDBY_COLUMN = 2uL;
		public const uint64 CRYPTUI_SELECT_INTENDEDUSE_COLUMN = 4uL;
		public const uint64 CRYPTUI_SELECT_FRIENDLYNAME_COLUMN = 8uL;
		public const uint64 CRYPTUI_SELECT_LOCATION_COLUMN = 16uL;
		public const uint64 CRYPTUI_SELECT_EXPIRATION_COLUMN = 32uL;
		public const uint32 CRYPTUI_CERT_MGR_TAB_MASK = 15;
		public const uint32 CRYPTUI_CERT_MGR_PUBLISHER_TAB = 4;
		public const uint32 CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG = 32768;
		public const uint32 CRYPTUI_WIZ_DIGITAL_SIGN_EXCLUDE_PAGE_HASHES = 2;
		public const uint32 CRYPTUI_WIZ_DIGITAL_SIGN_INCLUDE_PAGE_HASHES = 4;
		public const uint32 CRYPTUI_WIZ_EXPORT_FORMAT_SERIALIZED_CERT_STORE = 5;
		
		// --- Enums ---
		
		public enum CRYPTUI_WIZ_FLAGS : uint32
		{
			NO_UI = 1,
			IGNORE_NO_UI_FLAG_FOR_CSPS = 2,
			NO_UI_EXCEPT_CSP = 3,
			IMPORT_ALLOW_CERT = 131072,
			IMPORT_ALLOW_CRL = 262144,
			IMPORT_ALLOW_CTL = 524288,
			IMPORT_NO_CHANGE_DEST_STORE = 65536,
			IMPORT_TO_LOCALMACHINE = 1048576,
			IMPORT_TO_CURRENTUSER = 2097152,
			IMPORT_REMOTE_DEST_STORE = 4194304,
			EXPORT_PRIVATE_KEY = 256,
			EXPORT_NO_DELETE_PRIVATE_KEY = 512,
		}
		[AllowDuplicates]
		public enum CRYPTUI_VIEWCERTIFICATE_FLAGS : uint32
		{
			HIDE_HIERARCHYPAGE = 1,
			HIDE_DETAILPAGE = 2,
			DISABLE_EDITPROPERTIES = 4,
			ENABLE_EDITPROPERTIES = 8,
			DISABLE_ADDTOSTORE = 16,
			ENABLE_ADDTOSTORE = 32,
			ACCEPT_DECLINE_STYLE = 64,
			IGNORE_UNTRUSTED_ROOT = 128,
			DONT_OPEN_STORES = 256,
			ONLY_OPEN_ROOT_STORE = 512,
			WARN_UNTRUSTED_ROOT = 1024,
			ENABLE_REVOCATION_CHECKING = 2048,
			WARN_REMOTE_TRUST = 4096,
			DISABLE_EXPORT = 8192,
			ENABLE_REVOCATION_CHECK_END_CERT = 16384,
			ENABLE_REVOCATION_CHECK_CHAIN = 32768,
			ENABLE_REVOCATION_CHECK_CHAIN_EXCLUDE_ROOT = 2048,
			DISABLE_HTMLLINK = 65536,
			DISABLE_ISSUERSTATEMENT = 131072,
			CACHE_ONLY_URL_RETRIEVAL = 262144,
		}
		public enum CERT_SELECT_STRUCT_FLAGS : uint32
		{
			HIDE_PROPERTIES = 1,
			ENABLEHOOK = 2,
			ALLOWMULTISELECT = 4,
			SHOW_HELP = 16,
			ENABLETEMPLATE = 32,
			ENABLETEMPLATEHANDLE = 64,
		}
		public enum CRYPTUI_WIZ_IMPORT_SUBJECT_OPTION : uint32
		{
			FILE = 1,
			CERT_CONTEXT = 2,
			CTL_CONTEXT = 3,
			CRL_CONTEXT = 4,
			CERT_STORE = 5,
		}
		public enum CRYPTUI_WIZ_DIGITAL_SIGN_SUBJECT : uint32
		{
			BLOB = 2,
			FILE = 1,
			NONE = 0,
		}
		public enum CRYPTUI_WIZ_DIGITAL_SIGN : uint32
		{
			CERT = 1,
			STORE = 2,
			PVK = 3,
			NONE = 0,
		}
		public enum CRYPTUI_WIZ_EXPORT_SUBJECT : uint32
		{
			CERT_CONTEXT = 1,
			CTL_CONTEXT = 2,
			CRL_CONTEXT = 3,
			CERT_STORE = 4,
			CERT_STORE_CERTIFICATES_ONLY = 5,
		}
		public enum CRYPTUI_WIZ_DIGITAL_SIGN_SIG_TYPE : uint32
		{
			COMMERCIAL = 1,
			INDIVIDUAL = 2,
		}
		public enum CRYPTUI_WIZ_DIGITAL_SIGN_PVK_OPTION : uint32
		{
			FILE = 1,
			PROV = 2,
		}
		public enum CERT_VIEWPROPERTIES_STRUCT_FLAGS : uint32
		{
			ENABLEHOOK = 1,
			SHOW_HELP = 2,
			SHOW_HELPICON = 4,
			ENABLETEMPLATE = 8,
			HIDE_ADVANCEPAGE = 16,
			HIDE_TRUSTPAGE = 32,
			NO_NAMECHANGE = 64,
			NO_EDITTRUST = 128,
			HIDE_DETAILPAGE = 256,
			ADD_CERT_STORES = 512,
		}
		public enum CRYPTUI_WIZ_EXPORT_FORMAT : uint32
		{
			DER = 1,
			PFX = 2,
			PKCS7 = 3,
			BASE64 = 4,
			CRL = 6,
			CTL = 7,
		}
		public enum CRYPTUI_WIZ_DIGITAL_ADDITIONAL_CERT_CHOICE : uint32
		{
			CHAIN = 1,
			CHAIN_NO_ROOT = 2,
			NONE = 0,
		}
		public enum CTL_MODIFY_REQUEST_OPERATION : uint32
		{
			ADD_TRUSTED = 3,
			ADD_NOT_TRUSTED = 1,
			REMOVE = 2,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PFNCMFILTERPROC(in CERT_CONTEXT pCertContext, LPARAM param1, uint32 param2, uint32 param3);
		public function uint32 PFNCMHOOKPROC(HWND hwndDialog, uint32 message, WPARAM wParam, LPARAM lParam);
		public function HRESULT PFNTRUSTHELPER(in CERT_CONTEXT pCertContext, LPARAM lCustData, BOOL fLeafCertificate, out uint8 pbTrustBlob);
		public function BOOL PFNCFILTERPROC(in CERT_CONTEXT pCertContext, out BOOL pfInitialSelectedCert, void* pvCallbackData);
		
		// --- Structs ---
		
		[CRepr]
		public struct CERT_SELECT_STRUCT_A
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public PSTR pTemplateName;
			public CERT_SELECT_STRUCT_FLAGS dwFlags;
			public PSTR szTitle;
			public uint32 cCertStore;
			public void** arrayCertStore;
			public PSTR szPurposeOid;
			public uint32 cCertContext;
			public CERT_CONTEXT** arrayCertContext;
			public LPARAM lCustData;
			public PFNCMHOOKPROC pfnHook;
			public PFNCMFILTERPROC pfnFilter;
			public PSTR szHelpFileName;
			public uint32 dwHelpId;
			public uint hprov;
		}
		[CRepr]
		public struct CERT_SELECT_STRUCT_W
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public PWSTR pTemplateName;
			public CERT_SELECT_STRUCT_FLAGS dwFlags;
			public PWSTR szTitle;
			public uint32 cCertStore;
			public void** arrayCertStore;
			public PSTR szPurposeOid;
			public uint32 cCertContext;
			public CERT_CONTEXT** arrayCertContext;
			public LPARAM lCustData;
			public PFNCMHOOKPROC pfnHook;
			public PFNCMFILTERPROC pfnFilter;
			public PWSTR szHelpFileName;
			public uint32 dwHelpId;
			public uint hprov;
		}
		[CRepr]
		public struct CERT_VIEWPROPERTIES_STRUCT_A
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public CERT_VIEWPROPERTIES_STRUCT_FLAGS dwFlags;
			public PSTR szTitle;
			public CERT_CONTEXT* pCertContext;
			public PSTR* arrayPurposes;
			public uint32 cArrayPurposes;
			public uint32 cRootStores;
			public void** rghstoreRoots;
			public uint32 cStores;
			public void** rghstoreCAs;
			public uint32 cTrustStores;
			public void** rghstoreTrust;
			public uint hprov;
			public LPARAM lCustData;
			public uint32 dwPad;
			public PSTR szHelpFileName;
			public uint32 dwHelpId;
			public uint32 nStartPage;
			public uint32 cArrayPropSheetPages;
			public PROPSHEETPAGEA* arrayPropSheetPages;
		}
		[CRepr]
		public struct CERT_VIEWPROPERTIES_STRUCT_W
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public CERT_VIEWPROPERTIES_STRUCT_FLAGS dwFlags;
			public PWSTR szTitle;
			public CERT_CONTEXT* pCertContext;
			public PSTR* arrayPurposes;
			public uint32 cArrayPurposes;
			public uint32 cRootStores;
			public void** rghstoreRoots;
			public uint32 cStores;
			public void** rghstoreCAs;
			public uint32 cTrustStores;
			public void** rghstoreTrust;
			public uint hprov;
			public LPARAM lCustData;
			public uint32 dwPad;
			public PWSTR szHelpFileName;
			public uint32 dwHelpId;
			public uint32 nStartPage;
			public uint32 cArrayPropSheetPages;
			public PROPSHEETPAGEA* arrayPropSheetPages;
		}
		[CRepr]
		public struct CMOID
		{
			public PSTR szExtensionOID;
			public uint32 dwTestOperation;
			public uint8* pbTestData;
			public uint32 cbTestData;
		}
		[CRepr]
		public struct CMFLTR
		{
			public uint32 dwSize;
			public uint32 cExtensionChecks;
			public CMOID* arrayExtensionChecks;
			public uint32 dwCheckingFlags;
		}
		[CRepr]
		public struct CERT_VERIFY_CERTIFICATE_TRUST
		{
			public uint32 cbSize;
			public CERT_CONTEXT* pccert;
			public uint32 dwFlags;
			public uint32 dwIgnoreErr;
			public uint32* pdwErrors;
			public PSTR pszUsageOid;
			public uint hprov;
			public uint32 cRootStores;
			public void** rghstoreRoots;
			public uint32 cStores;
			public void** rghstoreCAs;
			public uint32 cTrustStores;
			public void** rghstoreTrust;
			public LPARAM lCustData;
			public PFNTRUSTHELPER pfnTrustHelper;
			public uint32* pcChain;
			public CERT_CONTEXT*** prgChain;
			public uint32** prgdwErrors;
			public CRYPTOAPI_BLOB** prgpbTrustInfo;
		}
		[CRepr]
		public struct CTL_MODIFY_REQUEST
		{
			public CERT_CONTEXT* pccert;
			public CTL_MODIFY_REQUEST_OPERATION dwOperation;
			public uint32 dwError;
		}
		[CRepr]
		public struct CERT_SELECTUI_INPUT
		{
			public void* hStore;
			public CERT_CHAIN_CONTEXT** prgpChain;
			public uint32 cChain;
		}
		[CRepr]
		public struct CRYPTUI_CERT_MGR_STRUCT
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public uint32 dwFlags;
			public PWSTR pwszTitle;
			public PSTR pszInitUsageOID;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO
		{
			public uint32 dwSize;
			public Guid* pGuidSubject;
			public uint32 cbBlob;
			public uint8* pbBlob;
			public PWSTR pwszDisplayName;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO
		{
			public uint32 dwSize;
			public uint32 cCertStore;
			public void** rghCertStore;
			public PFNCFILTERPROC pFilterCallback;
			public void* pvCallbackData;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO
		{
			public uint32 dwSize;
			public PWSTR pwszPvkFileName;
			public PWSTR pwszProvName;
			public uint32 dwProvType;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO
		{
			public uint32 dwSize;
			public PWSTR pwszSigningCertFileName;
			public CRYPTUI_WIZ_DIGITAL_SIGN_PVK_OPTION dwPvkChoice;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public CRYPTUI_WIZ_DIGITAL_SIGN_PVK_FILE_INFO* pPvkFileInfo;
				public CRYPT_KEY_PROV_INFO* pPvkProvInfo;
			}
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO
		{
			public uint32 dwSize;
			public CRYPTUI_WIZ_DIGITAL_SIGN_SIG_TYPE dwAttrFlags;
			public PWSTR pwszDescription;
			public PWSTR pwszMoreInfoLocation;
			public PSTR pszHashAlg;
			public PWSTR pwszSigningCertDisplayString;
			public void* hAdditionalCertStore;
			public CRYPT_ATTRIBUTES* psAuthenticated;
			public CRYPT_ATTRIBUTES* psUnauthenticated;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_INFO
		{
			public uint32 dwSize;
			public CRYPTUI_WIZ_DIGITAL_SIGN_SUBJECT dwSubjectChoice;
			public _Anonymous1_e__Union Anonymous1;
			public CRYPTUI_WIZ_DIGITAL_SIGN dwSigningCertChoice;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pwszTimestampURL;
			public CRYPTUI_WIZ_DIGITAL_ADDITIONAL_CERT_CHOICE dwAdditionalCertChoice;
			public CRYPTUI_WIZ_DIGITAL_SIGN_EXTENDED_INFO* pSignExtInfo;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public CERT_CONTEXT* pSigningCertContext;
				public CRYPTUI_WIZ_DIGITAL_SIGN_STORE_INFO* pSigningCertStore;
				public CRYPTUI_WIZ_DIGITAL_SIGN_CERT_PVK_INFO* pSigningCertPvkInfo;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pwszFileName;
				public CRYPTUI_WIZ_DIGITAL_SIGN_BLOB_INFO* pSignBlobInfo;
			}
		}
		[CRepr]
		public struct CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT
		{
			public uint32 dwSize;
			public uint32 cbBlob;
			public uint8* pbBlob;
		}
		[CRepr]
		public struct CRYPTUI_INITDIALOG_STRUCT
		{
			public LPARAM lParam;
			public CERT_CONTEXT* pCertContext;
		}
		[CRepr]
		public struct CRYPTUI_VIEWCERTIFICATE_STRUCTW
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public CRYPTUI_VIEWCERTIFICATE_FLAGS dwFlags;
			public PWSTR szTitle;
			public CERT_CONTEXT* pCertContext;
			public PSTR* rgszPurposes;
			public uint32 cPurposes;
			public _Anonymous_e__Union Anonymous;
			public BOOL fpCryptProviderDataTrustedUsage;
			public uint32 idxSigner;
			public uint32 idxCert;
			public BOOL fCounterSigner;
			public uint32 idxCounterSigner;
			public uint32 cStores;
			public void** rghStores;
			public uint32 cPropSheetPages;
			public PROPSHEETPAGEW* rgPropSheetPages;
			public uint32 nStartPage;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public CRYPT_PROVIDER_DATA* pCryptProviderData;
				public HANDLE hWVTStateData;
			}
		}
		[CRepr]
		public struct CRYPTUI_VIEWCERTIFICATE_STRUCTA
		{
			public uint32 dwSize;
			public HWND hwndParent;
			public CRYPTUI_VIEWCERTIFICATE_FLAGS dwFlags;
			public PSTR szTitle;
			public CERT_CONTEXT* pCertContext;
			public PSTR* rgszPurposes;
			public uint32 cPurposes;
			public _Anonymous_e__Union Anonymous;
			public BOOL fpCryptProviderDataTrustedUsage;
			public uint32 idxSigner;
			public uint32 idxCert;
			public BOOL fCounterSigner;
			public uint32 idxCounterSigner;
			public uint32 cStores;
			public void** rghStores;
			public uint32 cPropSheetPages;
			public PROPSHEETPAGEA* rgPropSheetPages;
			public uint32 nStartPage;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public CRYPT_PROVIDER_DATA* pCryptProviderData;
				public HANDLE hWVTStateData;
			}
		}
		[CRepr]
		public struct CRYPTUI_WIZ_EXPORT_INFO
		{
			public uint32 dwSize;
			public PWSTR pwszExportFileName;
			public CRYPTUI_WIZ_EXPORT_SUBJECT dwSubjectChoice;
			public _Anonymous_e__Union Anonymous;
			public uint32 cStores;
			public void** rghStores;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public CERT_CONTEXT* pCertContext;
				public CTL_CONTEXT* pCTLContext;
				public CRL_CONTEXT* pCRLContext;
				public void* hCertStore;
			}
		}
		[CRepr]
		public struct CRYPTUI_WIZ_EXPORT_CERTCONTEXT_INFO
		{
			public uint32 dwSize;
			public CRYPTUI_WIZ_EXPORT_FORMAT dwExportFormat;
			public BOOL fExportChain;
			public BOOL fExportPrivateKeys;
			public PWSTR pwszPassword;
			public BOOL fStrongEncryption;
		}
		[CRepr]
		public struct CRYPTUI_WIZ_IMPORT_SRC_INFO
		{
			public uint32 dwSize;
			public CRYPTUI_WIZ_IMPORT_SUBJECT_OPTION dwSubjectChoice;
			public _Anonymous_e__Union Anonymous;
			public CRYPT_KEY_FLAGS dwFlags;
			public PWSTR pwszPassword;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR pwszFileName;
				public CERT_CONTEXT* pCertContext;
				public CTL_CONTEXT* pCTLContext;
				public CRL_CONTEXT* pCRLContext;
				public void* hCertStore;
			}
		}
		
		// --- Functions ---
		
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIDlgViewContext(uint32 dwContextType, void* pvContext, HWND hwnd, PWSTR pwszTitle, uint32 dwFlags, void* pvReserved);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CERT_CONTEXT* CryptUIDlgSelectCertificateFromStore(void* hCertStore, HWND hwnd, PWSTR pwszTitle, PWSTR pwszDisplayString, uint32 dwDontUseColumn, uint32 dwFlags, void* pvReserved);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CertSelectionGetSerializedBlob(ref CERT_SELECTUI_INPUT pcsi, void** ppOutBuffer, out uint32 pulOutBufferSize);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIDlgCertMgr(ref CRYPTUI_CERT_MGR_STRUCT pCryptUICertMgr);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIWizDigitalSign(uint32 dwFlags, HWND hwndParent, PWSTR pwszWizardTitle, ref CRYPTUI_WIZ_DIGITAL_SIGN_INFO pDigitalSignInfo, CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT** ppSignContext);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIWizFreeDigitalSignContext(ref CRYPTUI_WIZ_DIGITAL_SIGN_CONTEXT pSignContext);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIDlgViewCertificateW(ref CRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo, out BOOL pfPropertiesChanged);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIDlgViewCertificateA(ref CRYPTUI_VIEWCERTIFICATE_STRUCTA pCertViewInfo, out BOOL pfPropertiesChanged);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIWizExport(CRYPTUI_WIZ_FLAGS dwFlags, HWND hwndParent, PWSTR pwszWizardTitle, ref CRYPTUI_WIZ_EXPORT_INFO pExportInfo, void* pvoid);
		[Import("cryptui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptUIWizImport(CRYPTUI_WIZ_FLAGS dwFlags, HWND hwndParent, PWSTR pwszWizardTitle, CRYPTUI_WIZ_IMPORT_SRC_INFO* pImportSrc, void* hDestCertStore);
	}
}
