using System;

// namespace Security.WinTrust
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WINTRUST_MAX_HEADER_BYTES_TO_MAP_DEFAULT = 10485760;
		public const uint32 WINTRUST_MAX_HASH_BYTES_TO_MAP_DEFAULT = 1048576;
		public const uint32 WSS_VERIFY_SEALING = 4;
		public const uint32 WSS_INPUT_FLAG_MASK = 7;
		public const uint32 WSS_OUT_SEALING_STATUS_VERIFIED = 2147483648;
		public const uint32 WSS_OUT_HAS_SEALING_INTENT = 1073741824;
		public const uint32 WSS_OUT_FILE_SUPPORTS_SEAL = 536870912;
		public const uint32 WSS_OUTPUT_FLAG_MASK = 3758096384;
		public const uint32 TRUSTERROR_STEP_WVTPARAMS = 0;
		public const uint32 TRUSTERROR_STEP_FILEIO = 2;
		public const uint32 TRUSTERROR_STEP_SIP = 3;
		public const uint32 TRUSTERROR_STEP_SIPSUBJINFO = 5;
		public const uint32 TRUSTERROR_STEP_CATALOGFILE = 6;
		public const uint32 TRUSTERROR_STEP_CERTSTORE = 7;
		public const uint32 TRUSTERROR_STEP_MESSAGE = 8;
		public const uint32 TRUSTERROR_STEP_MSG_SIGNERCOUNT = 9;
		public const uint32 TRUSTERROR_STEP_MSG_INNERCNTTYPE = 10;
		public const uint32 TRUSTERROR_STEP_MSG_INNERCNT = 11;
		public const uint32 TRUSTERROR_STEP_MSG_STORE = 12;
		public const uint32 TRUSTERROR_STEP_MSG_SIGNERINFO = 13;
		public const uint32 TRUSTERROR_STEP_MSG_SIGNERCERT = 14;
		public const uint32 TRUSTERROR_STEP_MSG_CERTCHAIN = 15;
		public const uint32 TRUSTERROR_STEP_MSG_COUNTERSIGINFO = 16;
		public const uint32 TRUSTERROR_STEP_MSG_COUNTERSIGCERT = 17;
		public const uint32 TRUSTERROR_STEP_VERIFY_MSGHASH = 18;
		public const uint32 TRUSTERROR_STEP_VERIFY_MSGINDIRECTDATA = 19;
		public const uint32 TRUSTERROR_STEP_FINAL_WVTINIT = 30;
		public const uint32 TRUSTERROR_STEP_FINAL_INITPROV = 31;
		public const uint32 TRUSTERROR_STEP_FINAL_OBJPROV = 32;
		public const uint32 TRUSTERROR_STEP_FINAL_SIGPROV = 33;
		public const uint32 TRUSTERROR_STEP_FINAL_CERTPROV = 34;
		public const uint32 TRUSTERROR_STEP_FINAL_CERTCHKPROV = 35;
		public const uint32 TRUSTERROR_STEP_FINAL_POLICYPROV = 36;
		public const uint32 TRUSTERROR_STEP_FINAL_UIPROV = 37;
		public const uint32 TRUSTERROR_MAX_STEPS = 38;
		public const uint32 WSS_OBJTRUST_SUPPORT = 1;
		public const uint32 WSS_SIGTRUST_SUPPORT = 2;
		public const uint32 WSS_CERTTRUST_SUPPORT = 4;
		public const uint32 WT_CURRENT_VERSION = 512;
		public const uint32 WT_ADD_ACTION_ID_RET_RESULT_FLAG = 1;
		public const uint32 SPC_UUID_LENGTH = 16;
		public const uint32 WIN_CERT_REVISION_1_0 = 256;
		public const uint32 WIN_CERT_REVISION_2_0 = 512;
		public const uint32 WIN_CERT_TYPE_X509 = 1;
		public const uint32 WIN_CERT_TYPE_PKCS_SIGNED_DATA = 2;
		public const uint32 WIN_CERT_TYPE_RESERVED_1 = 3;
		public const uint32 WIN_CERT_TYPE_TS_STACK_SIGNED = 4;
		public const uint32 WT_TRUSTDBDIALOG_NO_UI_FLAG = 1;
		public const uint32 WT_TRUSTDBDIALOG_ONLY_PUB_TAB_FLAG = 2;
		public const uint32 WT_TRUSTDBDIALOG_WRITE_LEGACY_REG_FLAG = 256;
		public const uint32 WT_TRUSTDBDIALOG_WRITE_IEAK_STORE_FLAG = 512;
		
		// --- Enums ---
		
		public enum WINTRUST_GET_DEFAULT_FOR_USAGE_ACTION : uint32
		{
			ALLOCANDFILL = 1,
			FREE = 2,
		}
		public enum WINTRUST_POLICY_FLAGS : uint32
		{
			TRUSTTEST = 32,
			TESTCANBEVALID = 128,
			IGNOREEXPIRATION = 256,
			IGNOREREVOKATION = 512,
			OFFLINEOK_IND = 1024,
			OFFLINEOK_COM = 2048,
			OFFLINEOKNBU_IND = 4096,
			OFFLINEOKNBU_COM = 8192,
			VERIFY_V1_OFF = 65536,
			IGNOREREVOCATIONONTS = 131072,
			ALLOWONLYPERTRUST = 262144,
		}
		public enum WINTRUST_DATA_UICHOICE : uint32
		{
			ALL = 1,
			NONE = 2,
			NOBAD = 3,
			NOGOOD = 4,
		}
		public enum WINTRUST_SIGNATURE_SETTINGS_FLAGS : uint32
		{
			VERIFY_SPECIFIC = 1,
			GET_SECONDARY_SIG_COUNT = 2,
		}
		public enum WINTRUST_DATA_STATE_ACTION : uint32
		{
			IGNORE = 0,
			VERIFY = 1,
			CLOSE = 2,
			AUTO_CACHE = 3,
			AUTO_CACHE_FLUSH = 4,
		}
		public enum WINTRUST_DATA_UNION_CHOICE : uint32
		{
			FILE = 1,
			CATALOG = 2,
			BLOB = 3,
			SIGNER = 4,
			CERT = 5,
		}
		public enum WINTRUST_DATA_REVOCATION_CHECKS : uint32
		{
			NONE = 0,
			WHOLECHAIN = 1,
		}
		public enum WINTRUST_DATA_UICONTEXT : uint32
		{
			EXECUTE = 0,
			INSTALL = 1,
		}
		
		// --- Function Pointers ---
		
		public function void* PFN_CPD_MEM_ALLOC(uint32 cbSize);
		public function void PFN_CPD_MEM_FREE(void* pvMem2Free);
		public function BOOL PFN_CPD_ADD_STORE(ref CRYPT_PROVIDER_DATA pProvData, void* hStore2Add);
		public function BOOL PFN_CPD_ADD_SGNR(ref CRYPT_PROVIDER_DATA pProvData, BOOL fCounterSigner, uint32 idxSigner, ref CRYPT_PROVIDER_SGNR pSgnr2Add);
		public function BOOL PFN_CPD_ADD_CERT(ref CRYPT_PROVIDER_DATA pProvData, uint32 idxSigner, BOOL fCounterSigner, uint32 idxCounterSigner, in CERT_CONTEXT pCert2Add);
		public function BOOL PFN_CPD_ADD_PRIVDATA(ref CRYPT_PROVIDER_DATA pProvData, ref CRYPT_PROVIDER_PRIVDATA pPrivData2Add);
		public function HRESULT PFN_PROVIDER_INIT_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_OBJTRUST_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_SIGTRUST_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_CERTTRUST_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_FINALPOLICY_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_TESTFINALPOLICY_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function HRESULT PFN_PROVIDER_CLEANUP_CALL(out CRYPT_PROVIDER_DATA pProvData);
		public function BOOL PFN_PROVIDER_CERTCHKPOLICY_CALL(ref CRYPT_PROVIDER_DATA pProvData, uint32 idxSigner, BOOL fCounterSignerChain, uint32 idxCounterSigner);
		public function BOOL PFN_PROVUI_CALL(HWND hWndSecurityDialog, ref CRYPT_PROVIDER_DATA pProvData);
		public function BOOL PFN_ALLOCANDFILLDEFUSAGE(PSTR pszUsageOID, ref CRYPT_PROVIDER_DEFUSAGE psDefUsage);
		public function BOOL PFN_FREEDEFUSAGE(PSTR pszUsageOID, ref CRYPT_PROVIDER_DEFUSAGE psDefUsage);
		public function HRESULT PFN_WTD_GENERIC_CHAIN_POLICY_CALLBACK(out CRYPT_PROVIDER_DATA pProvData, uint32 dwStepError, uint32 dwRegPolicySettings, uint32 cSigner, out WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO* rgpSigner, void* pvPolicyArg);
		
		// --- Structs ---
		
		[CRepr]
		public struct WINTRUST_DATA
		{
			public uint32 cbStruct;
			public void* pPolicyCallbackData;
			public void* pSIPClientData;
			public WINTRUST_DATA_UICHOICE dwUIChoice;
			public WINTRUST_DATA_REVOCATION_CHECKS fdwRevocationChecks;
			public WINTRUST_DATA_UNION_CHOICE dwUnionChoice;
			public _Anonymous_e__Union Anonymous;
			public WINTRUST_DATA_STATE_ACTION dwStateAction;
			public HANDLE hWVTStateData;
			public PWSTR pwszURLReference;
			public uint32 dwProvFlags;
			public WINTRUST_DATA_UICONTEXT dwUIContext;
			public WINTRUST_SIGNATURE_SETTINGS* pSignatureSettings;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WINTRUST_FILE_INFO* pFile;
				public WINTRUST_CATALOG_INFO* pCatalog;
				public WINTRUST_BLOB_INFO* pBlob;
				public WINTRUST_SGNR_INFO* pSgnr;
				public WINTRUST_CERT_INFO* pCert;
			}
		}
		[CRepr]
		public struct WINTRUST_SIGNATURE_SETTINGS
		{
			public uint32 cbStruct;
			public uint32 dwIndex;
			public WINTRUST_SIGNATURE_SETTINGS_FLAGS dwFlags;
			public uint32 cSecondarySigs;
			public uint32 dwVerifiedSigIndex;
			public CERT_STRONG_SIGN_PARA* pCryptoPolicy;
		}
		[CRepr]
		public struct WINTRUST_FILE_INFO
		{
			public uint32 cbStruct;
			public PWSTR pcwszFilePath;
			public HANDLE hFile;
			public Guid* pgKnownSubject;
		}
		[CRepr]
		public struct WINTRUST_CATALOG_INFO
		{
			public uint32 cbStruct;
			public uint32 dwCatalogVersion;
			public PWSTR pcwszCatalogFilePath;
			public PWSTR pcwszMemberTag;
			public PWSTR pcwszMemberFilePath;
			public HANDLE hMemberFile;
			public uint8* pbCalculatedFileHash;
			public uint32 cbCalculatedFileHash;
			public CTL_CONTEXT* pcCatalogContext;
			public int hCatAdmin;
		}
		[CRepr]
		public struct WINTRUST_BLOB_INFO
		{
			public uint32 cbStruct;
			public Guid gSubject;
			public PWSTR pcwszDisplayName;
			public uint32 cbMemObject;
			public uint8* pbMemObject;
			public uint32 cbMemSignedMsg;
			public uint8* pbMemSignedMsg;
		}
		[CRepr]
		public struct WINTRUST_SGNR_INFO
		{
			public uint32 cbStruct;
			public PWSTR pcwszDisplayName;
			public CMSG_SIGNER_INFO* psSignerInfo;
			public uint32 chStores;
			public void** pahStores;
		}
		[CRepr]
		public struct WINTRUST_CERT_INFO
		{
			public uint32 cbStruct;
			public PWSTR pcwszDisplayName;
			public CERT_CONTEXT* psCertContext;
			public uint32 chStores;
			public void** pahStores;
			public uint32 dwFlags;
			public FILETIME* psftVerifyAsOf;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_DATA
		{
			public uint32 cbStruct;
			public WINTRUST_DATA* pWintrustData;
			public BOOL fOpenedFile;
			public HWND hWndParent;
			public Guid* pgActionID;
			public uint hProv;
			public uint32 dwError;
			public uint32 dwRegSecuritySettings;
			public uint32 dwRegPolicySettings;
			public CRYPT_PROVIDER_FUNCTIONS* psPfns;
			public uint32 cdwTrustStepErrors;
			public uint32* padwTrustStepErrors;
			public uint32 chStores;
			public void** pahStores;
			public uint32 dwEncoding;
			public void* hMsg;
			public uint32 csSigners;
			public CRYPT_PROVIDER_SGNR* pasSigners;
			public uint32 csProvPrivData;
			public CRYPT_PROVIDER_PRIVDATA* pasProvPrivData;
			public uint32 dwSubjectChoice;
			public _Anonymous_e__Union Anonymous;
			public PSTR pszUsageOID;
			public BOOL fRecallWithState;
			public FILETIME sftSystemTime;
			public PSTR pszCTLSignerUsageOID;
			public uint32 dwProvFlags;
			public uint32 dwFinalError;
			public CERT_USAGE_MATCH* pRequestUsage;
			public uint32 dwTrustPubSettings;
			public uint32 dwUIStateFlags;
			public CRYPT_PROVIDER_SIGSTATE* pSigState;
			public WINTRUST_SIGNATURE_SETTINGS* pSigSettings;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PROVDATA_SIP* pPDSip;
			}
		}
		[CRepr]
		public struct CRYPT_PROVIDER_SIGSTATE
		{
			public uint32 cbStruct;
			public void** rhSecondarySigs;
			public void* hPrimarySig;
			public BOOL fFirstAttemptMade;
			public BOOL fNoMoreSigs;
			public uint32 cSecondarySigs;
			public uint32 dwCurrentIndex;
			public BOOL fSupportMultiSig;
			public uint32 dwCryptoPolicySupport;
			public uint32 iAttemptCount;
			public BOOL fCheckedSealing;
			public SEALING_SIGNATURE_ATTRIBUTE* pSealingSignature;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_FUNCTIONS
		{
			public uint32 cbStruct;
			public PFN_CPD_MEM_ALLOC pfnAlloc;
			public PFN_CPD_MEM_FREE pfnFree;
			public PFN_CPD_ADD_STORE pfnAddStore2Chain;
			public PFN_CPD_ADD_SGNR pfnAddSgnr2Chain;
			public PFN_CPD_ADD_CERT pfnAddCert2Chain;
			public PFN_CPD_ADD_PRIVDATA pfnAddPrivData2Chain;
			public PFN_PROVIDER_INIT_CALL pfnInitialize;
			public PFN_PROVIDER_OBJTRUST_CALL pfnObjectTrust;
			public PFN_PROVIDER_SIGTRUST_CALL pfnSignatureTrust;
			public PFN_PROVIDER_CERTTRUST_CALL pfnCertificateTrust;
			public PFN_PROVIDER_FINALPOLICY_CALL pfnFinalPolicy;
			public PFN_PROVIDER_CERTCHKPOLICY_CALL pfnCertCheckPolicy;
			public PFN_PROVIDER_TESTFINALPOLICY_CALL pfnTestFinalPolicy;
			public CRYPT_PROVUI_FUNCS* psUIpfns;
			public PFN_PROVIDER_CLEANUP_CALL pfnCleanupPolicy;
		}
		[CRepr]
		public struct CRYPT_PROVUI_FUNCS
		{
			public uint32 cbStruct;
			public CRYPT_PROVUI_DATA* psUIData;
			public PFN_PROVUI_CALL pfnOnMoreInfoClick;
			public PFN_PROVUI_CALL pfnOnMoreInfoClickDefault;
			public PFN_PROVUI_CALL pfnOnAdvancedClick;
			public PFN_PROVUI_CALL pfnOnAdvancedClickDefault;
		}
		[CRepr]
		public struct CRYPT_PROVUI_DATA
		{
			public uint32 cbStruct;
			public uint32 dwFinalError;
			public PWSTR pYesButtonText;
			public PWSTR pNoButtonText;
			public PWSTR pMoreInfoButtonText;
			public PWSTR pAdvancedLinkText;
			public PWSTR pCopyActionText;
			public PWSTR pCopyActionTextNoTS;
			public PWSTR pCopyActionTextNotSigned;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_SGNR
		{
			public uint32 cbStruct;
			public FILETIME sftVerifyAsOf;
			public uint32 csCertChain;
			public CRYPT_PROVIDER_CERT* pasCertChain;
			public uint32 dwSignerType;
			public CMSG_SIGNER_INFO* psSigner;
			public uint32 dwError;
			public uint32 csCounterSigners;
			public CRYPT_PROVIDER_SGNR* pasCounterSigners;
			public CERT_CHAIN_CONTEXT* pChainContext;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_CERT
		{
			public uint32 cbStruct;
			public CERT_CONTEXT* pCert;
			public BOOL fCommercial;
			public BOOL fTrustedRoot;
			public BOOL fSelfSigned;
			public BOOL fTestCert;
			public uint32 dwRevokedReason;
			public uint32 dwConfidence;
			public uint32 dwError;
			public CTL_CONTEXT* pTrustListContext;
			public BOOL fTrustListSignerCert;
			public CTL_CONTEXT* pCtlContext;
			public uint32 dwCtlError;
			public BOOL fIsCyclic;
			public CERT_CHAIN_ELEMENT* pChainElement;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_PRIVDATA
		{
			public uint32 cbStruct;
			public Guid gProviderID;
			public uint32 cbProvData;
			public void* pvProvData;
		}
		[CRepr]
		public struct PROVDATA_SIP
		{
			public uint32 cbStruct;
			public Guid gSubject;
			public SIP_DISPATCH_INFO* pSip;
			public SIP_DISPATCH_INFO* pCATSip;
			public SIP_SUBJECTINFO* psSipSubjectInfo;
			public SIP_SUBJECTINFO* psSipCATSubjectInfo;
			public SIP_INDIRECT_DATA* psIndirectData;
		}
		[CRepr]
		public struct CRYPT_TRUST_REG_ENTRY
		{
			public uint32 cbStruct;
			public PWSTR pwszDLLName;
			public PWSTR pwszFunctionName;
		}
		[CRepr]
		public struct CRYPT_REGISTER_ACTIONID
		{
			public uint32 cbStruct;
			public CRYPT_TRUST_REG_ENTRY sInitProvider;
			public CRYPT_TRUST_REG_ENTRY sObjectProvider;
			public CRYPT_TRUST_REG_ENTRY sSignatureProvider;
			public CRYPT_TRUST_REG_ENTRY sCertificateProvider;
			public CRYPT_TRUST_REG_ENTRY sCertificatePolicyProvider;
			public CRYPT_TRUST_REG_ENTRY sFinalPolicyProvider;
			public CRYPT_TRUST_REG_ENTRY sTestPolicyProvider;
			public CRYPT_TRUST_REG_ENTRY sCleanupProvider;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_REGDEFUSAGE
		{
			public uint32 cbStruct;
			public Guid* pgActionID;
			public PWSTR pwszDllName;
			public PSTR pwszLoadCallbackDataFunctionName;
			public PSTR pwszFreeCallbackDataFunctionName;
		}
		[CRepr]
		public struct CRYPT_PROVIDER_DEFUSAGE
		{
			public uint32 cbStruct;
			public Guid gActionID;
			public void* pDefPolicyCallbackData;
			public void* pDefSIPClientData;
		}
		[CRepr]
		public struct SPC_SERIALIZED_OBJECT
		{
			public uint8[16] ClassId;
			public CRYPTOAPI_BLOB SerializedData;
		}
		[CRepr]
		public struct SPC_SIGINFO
		{
			public uint32 dwSipVersion;
			public Guid gSIPGuid;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
			public uint32 dwReserved3;
			public uint32 dwReserved4;
			public uint32 dwReserved5;
		}
		[CRepr]
		public struct SPC_LINK
		{
			public uint32 dwLinkChoice;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR pwszUrl;
				public SPC_SERIALIZED_OBJECT Moniker;
				public PWSTR pwszFile;
			}
		}
		[CRepr]
		public struct SPC_PE_IMAGE_DATA
		{
			public CRYPT_BIT_BLOB Flags;
			public SPC_LINK* pFile;
		}
		[CRepr]
		public struct SPC_INDIRECT_DATA_CONTENT
		{
			public CRYPT_ATTRIBUTE_TYPE_VALUE Data;
			public CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
			public CRYPTOAPI_BLOB Digest;
		}
		[CRepr]
		public struct SPC_FINANCIAL_CRITERIA
		{
			public BOOL fFinancialInfoAvailable;
			public BOOL fMeetsCriteria;
		}
		[CRepr]
		public struct SPC_IMAGE
		{
			public SPC_LINK* pImageLink;
			public CRYPTOAPI_BLOB Bitmap;
			public CRYPTOAPI_BLOB Metafile;
			public CRYPTOAPI_BLOB EnhancedMetafile;
			public CRYPTOAPI_BLOB GifFile;
		}
		[CRepr]
		public struct SPC_SP_AGENCY_INFO
		{
			public SPC_LINK* pPolicyInformation;
			public PWSTR pwszPolicyDisplayText;
			public SPC_IMAGE* pLogoImage;
			public SPC_LINK* pLogoLink;
		}
		[CRepr]
		public struct SPC_STATEMENT_TYPE
		{
			public uint32 cKeyPurposeId;
			public PSTR* rgpszKeyPurposeId;
		}
		[CRepr]
		public struct SPC_SP_OPUS_INFO
		{
			public PWSTR pwszProgramName;
			public SPC_LINK* pMoreInfo;
			public SPC_LINK* pPublisherInfo;
		}
		[CRepr]
		public struct CAT_NAMEVALUE
		{
			public PWSTR pwszTag;
			public uint32 fdwFlags;
			public CRYPTOAPI_BLOB Value;
		}
		[CRepr]
		public struct CAT_MEMBERINFO
		{
			public PWSTR pwszSubjGuid;
			public uint32 dwCertVersion;
		}
		[CRepr]
		public struct CAT_MEMBERINFO2
		{
			public Guid SubjectGuid;
			public uint32 dwCertVersion;
		}
		[CRepr]
		public struct INTENT_TO_SEAL_ATTRIBUTE
		{
			public uint32 version;
			public BOOLEAN seal;
		}
		[CRepr]
		public struct SEALING_SIGNATURE_ATTRIBUTE
		{
			public uint32 version;
			public uint32 signerIndex;
			public CRYPT_ALGORITHM_IDENTIFIER signatureAlgorithm;
			public CRYPTOAPI_BLOB encryptedDigest;
		}
		[CRepr]
		public struct SEALING_TIMESTAMP_ATTRIBUTE
		{
			public uint32 version;
			public uint32 signerIndex;
			public CRYPTOAPI_BLOB sealTimeStampToken;
		}
		[CRepr]
		public struct WIN_CERTIFICATE
		{
			public uint32 dwLength;
			public uint16 wRevision;
			public uint16 wCertificateType;
			public uint8[0] bCertificate;
		}
		[CRepr]
		public struct WIN_TRUST_ACTDATA_CONTEXT_WITH_SUBJECT
		{
			public HANDLE hClientToken;
			public Guid* SubjectType;
			public void* Subject;
		}
		[CRepr]
		public struct WIN_TRUST_ACTDATA_SUBJECT_ONLY
		{
			public Guid* SubjectType;
			public void* Subject;
		}
		[CRepr]
		public struct WIN_TRUST_SUBJECT_FILE
		{
			public HANDLE hFile;
			public PWSTR lpPath;
		}
		[CRepr]
		public struct WIN_TRUST_SUBJECT_FILE_AND_DISPLAY
		{
			public HANDLE hFile;
			public PWSTR lpPath;
			public PWSTR lpDisplayName;
		}
		[CRepr]
		public struct WIN_SPUB_TRUSTED_PUBLISHER_DATA
		{
			public HANDLE hClientToken;
			public WIN_CERTIFICATE* lpCertificate;
		}
		[CRepr]
		public struct WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO
		{
			public _Anonymous_e__Union Anonymous;
			public CERT_CHAIN_CONTEXT* pChainContext;
			public uint32 dwSignerType;
			public CMSG_SIGNER_INFO* pMsgSignerInfo;
			public uint32 dwError;
			public uint32 cCounterSigner;
			public WTD_GENERIC_CHAIN_POLICY_SIGNER_INFO** rgpCounterSigner;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 cbStruct;
				public uint32 cbSize;
			}
		}
		[CRepr]
		public struct WTD_GENERIC_CHAIN_POLICY_CREATE_INFO
		{
			public _Anonymous_e__Union Anonymous;
			public HCERTCHAINENGINE hChainEngine;
			public CERT_CHAIN_PARA* pChainPara;
			public uint32 dwFlags;
			public void* pvReserved;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 cbStruct;
				public uint32 cbSize;
			}
		}
		[CRepr]
		public struct WTD_GENERIC_CHAIN_POLICY_DATA
		{
			public _Anonymous_e__Union Anonymous;
			public WTD_GENERIC_CHAIN_POLICY_CREATE_INFO* pSignerChainInfo;
			public WTD_GENERIC_CHAIN_POLICY_CREATE_INFO* pCounterSignerChainInfo;
			public PFN_WTD_GENERIC_CHAIN_POLICY_CALLBACK pfnPolicyCallback;
			public void* pvPolicyArg;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 cbStruct;
				public uint32 cbSize;
			}
		}
		[CRepr]
		public struct DRIVER_VER_MAJORMINOR
		{
			public uint32 dwMajor;
			public uint32 dwMinor;
		}
		[CRepr]
		public struct DRIVER_VER_INFO
		{
			public uint32 cbStruct;
			public uint dwReserved1;
			public uint dwReserved2;
			public uint32 dwPlatform;
			public uint32 dwVersion;
			public char16[260] wszVersion;
			public char16[260] wszSignedBy;
			public CERT_CONTEXT* pcSignerCertContext;
			public DRIVER_VER_MAJORMINOR sOSVersionLow;
			public DRIVER_VER_MAJORMINOR sOSVersionHigh;
			public uint32 dwBuildNumberLow;
			public uint32 dwBuildNumberHigh;
		}
		[CRepr]
		public struct CONFIG_CI_PROV_INFO_RESULT
		{
			public HRESULT hr;
			public uint32 dwResult;
			public uint32 dwPolicyIndex;
			public BOOLEAN fIsExplicitDeny;
		}
		[CRepr]
		public struct CONFIG_CI_PROV_INFO
		{
			public uint32 cbSize;
			public uint32 dwPolicies;
			public CRYPTOAPI_BLOB* pPolicies;
			public CONFIG_CI_PROV_INFO_RESULT result;
			public uint32 dwScenario;
		}
		
		// --- Functions ---
		
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WinVerifyTrust(HWND hwnd, out Guid pgActionID, void* pWVTData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WinVerifyTrustEx(HWND hwnd, out Guid pgActionID, out WINTRUST_DATA pWinTrustData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WintrustGetRegPolicyFlags(out WINTRUST_POLICY_FLAGS pdwPolicyFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustSetRegPolicyFlags(WINTRUST_POLICY_FLAGS dwPolicyFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustAddActionID(ref Guid pgActionID, uint32 fdwFlags, ref CRYPT_REGISTER_ACTIONID psProvInfo);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustRemoveActionID(ref Guid pgActionID);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustLoadFunctionPointers(out Guid pgActionID, out CRYPT_PROVIDER_FUNCTIONS pPfns);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustAddDefaultForUsage(PSTR pszUsageOID, ref CRYPT_PROVIDER_REGDEFUSAGE psDefUsage);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WintrustGetDefaultForUsage(WINTRUST_GET_DEFAULT_FOR_USAGE_ACTION dwAction, PSTR pszUsageOID, out CRYPT_PROVIDER_DEFUSAGE psUsage);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPT_PROVIDER_SGNR* WTHelperGetProvSignerFromChain(out CRYPT_PROVIDER_DATA pProvData, uint32 idxSigner, BOOL fCounterSigner, uint32 idxCounterSigner);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPT_PROVIDER_CERT* WTHelperGetProvCertFromChain(out CRYPT_PROVIDER_SGNR pSgnr, uint32 idxCert);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPT_PROVIDER_DATA* WTHelperProvDataFromStateData(HANDLE hStateData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPT_PROVIDER_PRIVDATA* WTHelperGetProvPrivateDataFromChain(out CRYPT_PROVIDER_DATA pProvData, out Guid pgProviderID);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WTHelperCertIsSelfSigned(uint32 dwEncoding, out CERT_INFO pCert);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WTHelperCertCheckValidSignature(out CRYPT_PROVIDER_DATA pProvData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPersonalTrustDBDialogEx(HWND hwndParent, uint32 dwFlags, void** pvReserved);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPersonalTrustDBDialog(HWND hwndParent);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WintrustSetDefaultIncludePEPageHashes(BOOL fIncludePEPageHashes);
	}
}
