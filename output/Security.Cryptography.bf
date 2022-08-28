namespace Win32.Security.Cryptography;

using System;
using Win32.Foundation;
using Win32.Security;
using Win32.System.Com;
using Win32.System.Registry;

static
{
	#region Constants
	public const int32 CERT_COMPARE_SHIFT = 16;
	public const uint32 BCRYPT_OBJECT_ALIGNMENT = 16;
	public const uint32 KDF_HASH_ALGORITHM = 0;
	public const uint32 KDF_SECRET_PREPEND = 1;
	public const uint32 KDF_SECRET_APPEND = 2;
	public const uint32 KDF_HMAC_KEY = 3;
	public const uint32 KDF_TLS_PRF_LABEL = 4;
	public const uint32 KDF_TLS_PRF_SEED = 5;
	public const uint32 KDF_SECRET_HANDLE = 6;
	public const uint32 KDF_TLS_PRF_PROTOCOL = 7;
	public const uint32 KDF_ALGORITHMID = 8;
	public const uint32 KDF_PARTYUINFO = 9;
	public const uint32 KDF_PARTYVINFO = 10;
	public const uint32 KDF_SUPPPUBINFO = 11;
	public const uint32 KDF_SUPPPRIVINFO = 12;
	public const uint32 KDF_LABEL = 13;
	public const uint32 KDF_CONTEXT = 14;
	public const uint32 KDF_SALT = 15;
	public const uint32 KDF_ITERATION_COUNT = 16;
	public const uint32 KDF_GENERIC_PARAMETER = 17;
	public const uint32 KDF_KEYBITLENGTH = 18;
	public const uint32 KDF_HKDF_SALT = 19;
	public const uint32 KDF_HKDF_INFO = 20;
	public const uint32 KDF_USE_SECRET_AS_HMAC_KEY_FLAG = 1;
	public const uint32 BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO_VERSION = 1;
	public const uint32 BCRYPT_AUTH_MODE_CHAIN_CALLS_FLAG = 1;
	public const uint32 BCRYPT_AUTH_MODE_IN_PROGRESS_FLAG = 2;
	public const uint32 BCRYPT_SUPPORTED_PAD_ROUTER = 1;
	public const uint32 BCRYPT_SUPPORTED_PAD_PKCS1_ENC = 2;
	public const uint32 BCRYPT_SUPPORTED_PAD_PKCS1_SIG = 4;
	public const uint32 BCRYPT_SUPPORTED_PAD_OAEP = 8;
	public const uint32 BCRYPT_SUPPORTED_PAD_PSS = 16;
	public const uint32 BCRYPT_BLOCK_PADDING = 1;
	public const uint32 BCRYPT_GENERATE_IV = 32;
	public const uint32 BCRYPT_PAD_PKCS1_OPTIONAL_HASH_OID = 16;
	public const uint32 BCRYPTBUFFER_VERSION = 0;
	public const uint32 BCRYPT_ECDH_PUBLIC_P256_MAGIC = 827016005;
	public const uint32 BCRYPT_ECDH_PRIVATE_P256_MAGIC = 843793221;
	public const uint32 BCRYPT_ECDH_PUBLIC_P384_MAGIC = 860570437;
	public const uint32 BCRYPT_ECDH_PRIVATE_P384_MAGIC = 877347653;
	public const uint32 BCRYPT_ECDH_PUBLIC_P521_MAGIC = 894124869;
	public const uint32 BCRYPT_ECDH_PRIVATE_P521_MAGIC = 910902085;
	public const uint32 BCRYPT_ECDH_PUBLIC_GENERIC_MAGIC = 1347109701;
	public const uint32 BCRYPT_ECDH_PRIVATE_GENERIC_MAGIC = 1447772997;
	public const uint32 BCRYPT_ECDSA_PUBLIC_P256_MAGIC = 827540293;
	public const uint32 BCRYPT_ECDSA_PRIVATE_P256_MAGIC = 844317509;
	public const uint32 BCRYPT_ECDSA_PUBLIC_P384_MAGIC = 861094725;
	public const uint32 BCRYPT_ECDSA_PRIVATE_P384_MAGIC = 877871941;
	public const uint32 BCRYPT_ECDSA_PUBLIC_P521_MAGIC = 894649157;
	public const uint32 BCRYPT_ECDSA_PRIVATE_P521_MAGIC = 911426373;
	public const uint32 BCRYPT_ECDSA_PUBLIC_GENERIC_MAGIC = 1346650949;
	public const uint32 BCRYPT_ECDSA_PRIVATE_GENERIC_MAGIC = 1447314245;
	public const uint32 BCRYPT_ECC_FULLKEY_BLOB_V1 = 1;
	public const uint32 BCRYPT_DH_PARAMETERS_MAGIC = 1297107012;
	public const uint32 BCRYPT_DSA_PUBLIC_MAGIC_V2 = 843206724;
	public const uint32 BCRYPT_DSA_PRIVATE_MAGIC_V2 = 844517444;
	public const uint32 BCRYPT_KEY_DATA_BLOB_MAGIC = 1296188491;
	public const uint32 BCRYPT_KEY_DATA_BLOB_VERSION1 = 1;
	public const uint32 BCRYPT_DSA_PARAMETERS_MAGIC = 1297109828;
	public const uint32 BCRYPT_DSA_PARAMETERS_MAGIC_V2 = 843927620;
	public const uint32 BCRYPT_ECC_PARAMETERS_MAGIC = 1346585413;
	public const uint32 BCRYPT_KEY_DERIVATION_INTERFACE = 7;
	public const BCRYPT_ALG_HANDLE BCRYPT_MD2_ALG_HANDLE = 1;
	public const BCRYPT_ALG_HANDLE BCRYPT_MD4_ALG_HANDLE = 17;
	public const BCRYPT_ALG_HANDLE BCRYPT_MD5_ALG_HANDLE = 33;
	public const BCRYPT_ALG_HANDLE BCRYPT_SHA1_ALG_HANDLE = 49;
	public const BCRYPT_ALG_HANDLE BCRYPT_SHA256_ALG_HANDLE = 65;
	public const BCRYPT_ALG_HANDLE BCRYPT_SHA384_ALG_HANDLE = 81;
	public const BCRYPT_ALG_HANDLE BCRYPT_SHA512_ALG_HANDLE = 97;
	public const BCRYPT_ALG_HANDLE BCRYPT_RC4_ALG_HANDLE = 113;
	public const BCRYPT_ALG_HANDLE BCRYPT_RNG_ALG_HANDLE = 129;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_MD5_ALG_HANDLE = 145;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_SHA1_ALG_HANDLE = 161;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_SHA256_ALG_HANDLE = 177;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_SHA384_ALG_HANDLE = 193;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_SHA512_ALG_HANDLE = 209;
	public const BCRYPT_ALG_HANDLE BCRYPT_RSA_ALG_HANDLE = 225;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDSA_ALG_HANDLE = 241;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_CMAC_ALG_HANDLE = 257;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_GMAC_ALG_HANDLE = 273;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_MD2_ALG_HANDLE = 289;
	public const BCRYPT_ALG_HANDLE BCRYPT_HMAC_MD4_ALG_HANDLE = 305;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_CBC_ALG_HANDLE = 321;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_ECB_ALG_HANDLE = 337;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_CFB_ALG_HANDLE = 353;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_112_CBC_ALG_HANDLE = 369;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_112_ECB_ALG_HANDLE = 385;
	public const BCRYPT_ALG_HANDLE BCRYPT_3DES_112_CFB_ALG_HANDLE = 401;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_CBC_ALG_HANDLE = 417;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_ECB_ALG_HANDLE = 433;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_CFB_ALG_HANDLE = 449;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_CCM_ALG_HANDLE = 465;
	public const BCRYPT_ALG_HANDLE BCRYPT_AES_GCM_ALG_HANDLE = 481;
	public const BCRYPT_ALG_HANDLE BCRYPT_DES_CBC_ALG_HANDLE = 497;
	public const BCRYPT_ALG_HANDLE BCRYPT_DES_ECB_ALG_HANDLE = 513;
	public const BCRYPT_ALG_HANDLE BCRYPT_DES_CFB_ALG_HANDLE = 529;
	public const BCRYPT_ALG_HANDLE BCRYPT_DESX_CBC_ALG_HANDLE = 545;
	public const BCRYPT_ALG_HANDLE BCRYPT_DESX_ECB_ALG_HANDLE = 561;
	public const BCRYPT_ALG_HANDLE BCRYPT_DESX_CFB_ALG_HANDLE = 577;
	public const BCRYPT_ALG_HANDLE BCRYPT_RC2_CBC_ALG_HANDLE = 593;
	public const BCRYPT_ALG_HANDLE BCRYPT_RC2_ECB_ALG_HANDLE = 609;
	public const BCRYPT_ALG_HANDLE BCRYPT_RC2_CFB_ALG_HANDLE = 625;
	public const BCRYPT_ALG_HANDLE BCRYPT_DH_ALG_HANDLE = 641;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDH_ALG_HANDLE = 657;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDH_P256_ALG_HANDLE = 673;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDH_P384_ALG_HANDLE = 689;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDH_P521_ALG_HANDLE = 705;
	public const BCRYPT_ALG_HANDLE BCRYPT_DSA_ALG_HANDLE = 721;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDSA_P256_ALG_HANDLE = 737;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDSA_P384_ALG_HANDLE = 753;
	public const BCRYPT_ALG_HANDLE BCRYPT_ECDSA_P521_ALG_HANDLE = 769;
	public const BCRYPT_ALG_HANDLE BCRYPT_RSA_SIGN_ALG_HANDLE = 785;
	public const BCRYPT_ALG_HANDLE BCRYPT_CAPI_KDF_ALG_HANDLE = 801;
	public const BCRYPT_ALG_HANDLE BCRYPT_PBKDF2_ALG_HANDLE = 817;
	public const BCRYPT_ALG_HANDLE BCRYPT_SP800108_CTR_HMAC_ALG_HANDLE = 833;
	public const BCRYPT_ALG_HANDLE BCRYPT_SP80056A_CONCAT_ALG_HANDLE = 849;
	public const BCRYPT_ALG_HANDLE BCRYPT_TLS1_1_KDF_ALG_HANDLE = 865;
	public const BCRYPT_ALG_HANDLE BCRYPT_TLS1_2_KDF_ALG_HANDLE = 881;
	public const BCRYPT_ALG_HANDLE BCRYPT_XTS_AES_ALG_HANDLE = 897;
	public const BCRYPT_ALG_HANDLE BCRYPT_HKDF_ALG_HANDLE = 913;
	public const BCRYPT_ALG_HANDLE BCRYPT_CHACHA20_POLY1305_ALG_HANDLE = 929;
	public const uint32 BCRYPT_CAPI_AES_FLAG = 16;
	public const uint32 BCRYPT_MULTI_FLAG = 64;
	public const uint32 BCRYPT_TLS_CBC_HMAC_VERIFY_FLAG = 4;
	public const uint32 BCRYPT_BUFFERS_LOCKED_FLAG = 64;
	public const uint32 BCRYPT_EXTENDED_KEYSIZE = 128;
	public const uint32 BCRYPT_ENABLE_INCOMPATIBLE_FIPS_CHECKS = 256;
	public const uint32 BCRYPT_KEY_DERIVATION_OPERATION = 64;
	public const uint32 BCRYPT_PUBLIC_KEY_FLAG = 1;
	public const uint32 BCRYPT_PRIVATE_KEY_FLAG = 2;
	public const uint32 BCRYPT_NO_KEY_VALIDATION = 8;
	public const uint32 BCRYPT_KEY_VALIDATION_RANGE = 16;
	public const uint32 BCRYPT_KEY_VALIDATION_RANGE_AND_ORDER = 24;
	public const uint32 BCRYPT_KEY_VALIDATION_REGENERATE = 32;
	public const uint32 BCRYPT_RNG_USE_ENTROPY_IN_BUFFER = 1;
	public const uint32 BCRYPT_USE_SYSTEM_PREFERRED_RNG = 2;
	public const uint32 BCRYPT_HASH_INTERFACE_MAJORVERSION_2 = 2;
	public const uint32 CRYPT_OVERWRITE = 1;
	public const uint32 CRYPT_PRIORITY_TOP = 0;
	public const uint32 CRYPT_PRIORITY_BOTTOM = 4294967295;
	public const uint32 CRYPT_XML_BLOB_MAX = 2147483640;
	public const uint32 CRYPT_XML_ID_MAX = 256;
	public const uint32 CRYPT_XML_SIGNATURES_MAX = 16;
	public const uint32 CRYPT_XML_TRANSFORM_MAX = 16;
	public const uint32 CRYPT_XML_SIGNATURE_VALUE_MAX = 2048;
	public const uint32 CRYPT_XML_DIGEST_VALUE_MAX = 128;
	public const uint32 CRYPT_XML_OBJECTS_MAX = 256;
	public const uint32 CRYPT_XML_REFERENCES_MAX = 32760;
	public const HRESULT CRYPT_XML_E_BASE = -2146885376;
	public const HRESULT CRYPT_XML_E_LARGE = -2146885375;
	public const HRESULT CRYPT_XML_E_TOO_MANY_TRANSFORMS = -2146885374;
	public const HRESULT CRYPT_XML_E_ENCODING = -2146885373;
	public const HRESULT CRYPT_XML_E_ALGORITHM = -2146885372;
	public const HRESULT CRYPT_XML_E_TRANSFORM = -2146885371;
	public const HRESULT CRYPT_XML_E_HANDLE = -2146885370;
	public const HRESULT CRYPT_XML_E_OPERATION = -2146885369;
	public const HRESULT CRYPT_XML_E_UNRESOLVED_REFERENCE = -2146885368;
	public const HRESULT CRYPT_XML_E_INVALID_DIGEST = -2146885367;
	public const HRESULT CRYPT_XML_E_INVALID_SIGNATURE = -2146885366;
	public const HRESULT CRYPT_XML_E_HASH_FAILED = -2146885365;
	public const HRESULT CRYPT_XML_E_SIGN_FAILED = -2146885364;
	public const HRESULT CRYPT_XML_E_VERIFY_FAILED = -2146885363;
	public const HRESULT CRYPT_XML_E_TOO_MANY_SIGNATURES = -2146885362;
	public const HRESULT CRYPT_XML_E_INVALID_KEYVALUE = -2146885361;
	public const HRESULT CRYPT_XML_E_UNEXPECTED_XML = -2146885360;
	public const HRESULT CRYPT_XML_E_SIGNER = -2146885359;
	public const HRESULT CRYPT_XML_E_NON_UNIQUE_ID = -2146885358;
	public const HRESULT CRYPT_XML_E_LAST = -2146885358;
	public const uint32 CRYPT_XML_FLAG_ALWAYS_RETURN_ENCODED_OBJECT = 1073741824;
	public const uint32 CRYPT_XML_FLAG_ENFORCE_ID_NCNAME_FORMAT = 536870912;
	public const uint32 CRYPT_XML_FLAG_ENFORCE_ID_NAME_FORMAT = 134217728;
	public const uint32 CRYPT_XML_FLAG_ECDSA_DSIG11 = 67108864;
	public const uint32 CRYPT_XML_STATUS_NO_ERROR = 0;
	public const uint32 CRYPT_XML_FLAG_ADD_OBJECT_CREATE_COPY = 1;
	public const uint32 CRYPT_XML_FLAG_CREATE_REFERENCE_AS_OBJECT = 1;
	public const uint32 CRYPT_XML_DIGEST_REFERENCE_DATA_TRANSFORMED = 1;
	public const uint32 CRYPT_XML_GROUP_ID_HASH = 1;
	public const uint32 CRYPT_XML_GROUP_ID_SIGN = 2;
	public const uint32 CRYPT_XML_ALGORITHM_INFO_FIND_BY_URI = 1;
	public const uint32 CRYPT_XML_ALGORITHM_INFO_FIND_BY_NAME = 2;
	public const uint32 CRYPT_XML_ALGORITHM_INFO_FIND_BY_CNG_ALGID = 3;
	public const uint32 CRYPT_XML_ALGORITHM_INFO_FIND_BY_CNG_SIGN_ALGID = 4;
	public const uint32 CRYPTPROTECT_PROMPT_ON_UNPROTECT = 1;
	public const uint32 CRYPTPROTECT_PROMPT_ON_PROTECT = 2;
	public const uint32 CRYPTPROTECT_PROMPT_RESERVED = 4;
	public const uint32 CRYPTPROTECT_PROMPT_STRONG = 8;
	public const uint32 CRYPTPROTECT_PROMPT_REQUIRE_STRONG = 16;
	public const uint32 CRYPTPROTECT_UI_FORBIDDEN = 1;
	public const uint32 CRYPTPROTECT_LOCAL_MACHINE = 4;
	public const uint32 CRYPTPROTECT_CRED_SYNC = 8;
	public const uint32 CRYPTPROTECT_AUDIT = 16;
	public const uint32 CRYPTPROTECT_NO_RECOVERY = 32;
	public const uint32 CRYPTPROTECT_VERIFY_PROTECTION = 64;
	public const uint32 CRYPTPROTECT_CRED_REGENERATE = 128;
	public const uint32 CRYPTPROTECT_FIRST_RESERVED_FLAGVAL = 268435455;
	public const uint32 CRYPTPROTECT_LAST_RESERVED_FLAGVAL = 4294967295;
	public const uint32 CRYPTPROTECTMEMORY_BLOCK_SIZE = 16;
	public const uint32 CRYPTPROTECTMEMORY_SAME_PROCESS = 0;
	public const uint32 CRYPTPROTECTMEMORY_CROSS_PROCESS = 1;
	public const uint32 CRYPTPROTECTMEMORY_SAME_LOGON = 2;
	public const uint32 NCRYPT_MAX_KEY_NAME_LENGTH = 512;
	public const uint32 NCRYPT_MAX_ALG_ID_LENGTH = 512;
	public const uint32 NCRYPT_KEY_DERIVATION_INTERFACE = 7;
	public const uint32 NCRYPT_KEY_PROTECTION_INTERFACE = 65540;
	public const uint32 NCRYPTBUFFER_VERSION = 0;
	public const uint32 NCRYPTBUFFER_EMPTY = 0;
	public const uint32 NCRYPTBUFFER_DATA = 1;
	public const uint32 NCRYPTBUFFER_PROTECTION_DESCRIPTOR_STRING = 3;
	public const uint32 NCRYPTBUFFER_PROTECTION_FLAGS = 4;
	public const uint32 NCRYPTBUFFER_SSL_CLIENT_RANDOM = 20;
	public const uint32 NCRYPTBUFFER_SSL_SERVER_RANDOM = 21;
	public const uint32 NCRYPTBUFFER_SSL_HIGHEST_VERSION = 22;
	public const uint32 NCRYPTBUFFER_SSL_CLEAR_KEY = 23;
	public const uint32 NCRYPTBUFFER_SSL_KEY_ARG_DATA = 24;
	public const uint32 NCRYPTBUFFER_SSL_SESSION_HASH = 25;
	public const uint32 NCRYPTBUFFER_PKCS_OID = 40;
	public const uint32 NCRYPTBUFFER_PKCS_ALG_OID = 41;
	public const uint32 NCRYPTBUFFER_PKCS_ALG_PARAM = 42;
	public const uint32 NCRYPTBUFFER_PKCS_ALG_ID = 43;
	public const uint32 NCRYPTBUFFER_PKCS_ATTRS = 44;
	public const uint32 NCRYPTBUFFER_PKCS_KEY_NAME = 45;
	public const uint32 NCRYPTBUFFER_PKCS_SECRET = 46;
	public const uint32 NCRYPTBUFFER_CERT_BLOB = 47;
	public const uint32 NCRYPTBUFFER_CLAIM_IDBINDING_NONCE = 48;
	public const uint32 NCRYPTBUFFER_CLAIM_KEYATTESTATION_NONCE = 49;
	public const uint32 NCRYPTBUFFER_KEY_PROPERTY_FLAGS = 50;
	public const uint32 NCRYPTBUFFER_ATTESTATIONSTATEMENT_BLOB = 51;
	public const uint32 NCRYPTBUFFER_ATTESTATION_CLAIM_TYPE = 52;
	public const uint32 NCRYPTBUFFER_ATTESTATION_CLAIM_CHALLENGE_REQUIRED = 53;
	public const uint32 NCRYPTBUFFER_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS = 54;
	public const uint32 NCRYPTBUFFER_ECC_CURVE_NAME = 60;
	public const uint32 NCRYPTBUFFER_ECC_PARAMETERS = 61;
	public const uint32 NCRYPTBUFFER_TPM_SEAL_PASSWORD = 70;
	public const uint32 NCRYPTBUFFER_TPM_SEAL_POLICYINFO = 71;
	public const uint32 NCRYPTBUFFER_TPM_SEAL_TICKET = 72;
	public const uint32 NCRYPTBUFFER_TPM_SEAL_NO_DA_PROTECTION = 73;
	public const uint32 NCRYPTBUFFER_TPM_PLATFORM_CLAIM_PCR_MASK = 80;
	public const uint32 NCRYPTBUFFER_TPM_PLATFORM_CLAIM_NONCE = 81;
	public const uint32 NCRYPTBUFFER_TPM_PLATFORM_CLAIM_STATIC_CREATE = 82;
	public const uint32 NCRYPT_CIPHER_NO_PADDING_FLAG = 0;
	public const uint32 NCRYPT_CIPHER_BLOCK_PADDING_FLAG = 1;
	public const uint32 NCRYPT_CIPHER_OTHER_PADDING_FLAG = 2;
	public const uint32 NCRYPT_PLATFORM_ATTEST_MAGIC = 1146110288;
	public const uint32 NCRYPT_KEY_ATTEST_MAGIC = 1146110283;
	public const uint32 NCRYPT_CLAIM_AUTHORITY_ONLY = 1;
	public const uint32 NCRYPT_CLAIM_SUBJECT_ONLY = 2;
	public const uint32 NCRYPT_CLAIM_WEB_AUTH_SUBJECT_ONLY = 258;
	public const uint32 NCRYPT_CLAIM_AUTHORITY_AND_SUBJECT = 3;
	public const uint32 NCRYPT_CLAIM_VSM_KEY_ATTESTATION_STATEMENT = 4;
	public const uint32 NCRYPT_CLAIM_UNKNOWN = 4096;
	public const uint32 NCRYPT_CLAIM_PLATFORM = 65536;
	public const uint32 NCRYPT_ISOLATED_KEY_FLAG_CREATED_IN_ISOLATION = 1;
	public const uint32 NCRYPT_ISOLATED_KEY_FLAG_IMPORT_ONLY = 2;
	public const uint32 NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES_V0 = 0;
	public const uint32 NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES_CURRENT_VERSION = 0;
	public const uint32 NCRYPT_VSM_KEY_ATTESTATION_STATEMENT_V0 = 0;
	public const uint32 NCRYPT_VSM_KEY_ATTESTATION_STATEMENT_CURRENT_VERSION = 0;
	public const uint32 NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS_V0 = 0;
	public const uint32 NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS_CURRENT_VERSION = 0;
	public const uint32 NCRYPT_EXPORTED_ISOLATED_KEY_HEADER_V0 = 0;
	public const uint32 NCRYPT_EXPORTED_ISOLATED_KEY_HEADER_CURRENT_VERSION = 0;
	public const uint32 NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT_V0 = 0;
	public const uint32 NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT_CURRENT_VERSION = 0;
	public const uint32 NCRYPT_PAD_CIPHER_FLAG = 16;
	public const uint32 NCRYPT_ATTESTATION_FLAG = 32;
	public const uint32 NCRYPT_SEALING_FLAG = 256;
	public const uint32 NCRYPT_DO_NOT_FINALIZE_FLAG = 1024;
	public const uint32 NCRYPT_EXPORT_LEGACY_FLAG = 2048;
	public const uint32 NCRYPT_IGNORE_DEVICE_STATE_FLAG = 4096;
	public const uint32 NCRYPT_TREAT_NIST_AS_GENERIC_ECC_FLAG = 8192;
	public const uint32 NCRYPT_NO_CACHED_PASSWORD = 16384;
	public const uint32 NCRYPT_PROTECT_TO_LOCAL_SYSTEM = 32768;
	public const uint32 NCRYPT_PREFER_VIRTUAL_ISOLATION_FLAG = 65536;
	public const uint32 NCRYPT_USE_VIRTUAL_ISOLATION_FLAG = 131072;
	public const uint32 NCRYPT_USE_PER_BOOT_KEY_FLAG = 262144;
	public const uint32 NCRYPT_KEY_DERIVATION_OPERATION = 64;
	public const uint32 NCRYPT_AUTHORITY_KEY_FLAG = 256;
	public const uint32 IFX_RSA_KEYGEN_VUL_NOT_AFFECTED = 0;
	public const uint32 IFX_RSA_KEYGEN_VUL_AFFECTED_LEVEL_1 = 1;
	public const uint32 IFX_RSA_KEYGEN_VUL_AFFECTED_LEVEL_2 = 2;
	public const uint32 NCRYPT_TPM_PSS_SALT_SIZE_UNKNOWN = 0;
	public const uint32 NCRYPT_TPM_PSS_SALT_SIZE_MAXIMUM = 1;
	public const uint32 NCRYPT_TPM_PSS_SALT_SIZE_HASHSIZE = 2;
	public const uint32 NCRYPT_TPM_PAD_PSS_IGNORE_SALT = 32;
	public const uint32 NCRYPT_TPM12_PROVIDER = 65536;
	public const uint32 NCRYPT_PCP_SIGNATURE_KEY = 1;
	public const uint32 NCRYPT_PCP_ENCRYPTION_KEY = 2;
	public const uint32 NCRYPT_PCP_STORAGE_KEY = 4;
	public const uint32 NCRYPT_PCP_IDENTITY_KEY = 8;
	public const uint32 NCRYPT_PCP_HMACVERIFICATION_KEY = 16;
	public const uint32 NCRYPT_MAX_PROPERTY_NAME = 64;
	public const uint32 NCRYPT_MAX_PROPERTY_DATA = 1048576;
	public const uint32 NCRYPT_ALLOW_EXPORT_FLAG = 1;
	public const uint32 NCRYPT_ALLOW_PLAINTEXT_EXPORT_FLAG = 2;
	public const uint32 NCRYPT_ALLOW_ARCHIVING_FLAG = 4;
	public const uint32 NCRYPT_ALLOW_PLAINTEXT_ARCHIVING_FLAG = 8;
	public const uint32 NCRYPT_IMPL_HARDWARE_FLAG = 1;
	public const uint32 NCRYPT_IMPL_SOFTWARE_FLAG = 2;
	public const uint32 NCRYPT_IMPL_REMOVABLE_FLAG = 8;
	public const uint32 NCRYPT_IMPL_HARDWARE_RNG_FLAG = 16;
	public const uint32 NCRYPT_IMPL_VIRTUAL_ISOLATION_FLAG = 32;
	public const uint32 NCRYPT_ALLOW_DECRYPT_FLAG = 1;
	public const uint32 NCRYPT_ALLOW_SIGNING_FLAG = 2;
	public const uint32 NCRYPT_ALLOW_KEY_AGREEMENT_FLAG = 4;
	public const uint32 NCRYPT_ALLOW_KEY_IMPORT_FLAG = 8;
	public const uint32 NCRYPT_ALLOW_ALL_USAGES = 16777215;
	public const uint32 NCRYPT_UI_PROTECT_KEY_FLAG = 1;
	public const uint32 NCRYPT_UI_FORCE_HIGH_PROTECTION_FLAG = 2;
	public const uint32 NCRYPT_UI_FINGERPRINT_PROTECTION_FLAG = 4;
	public const uint32 NCRYPT_UI_APPCONTAINER_ACCESS_MEDIUM_FLAG = 8;
	public const uint32 NCRYPT_PIN_CACHE_DISABLE_DPL_FLAG = 1;
	public const uint32 NCRYPT_PIN_CACHE_REQUIRE_GESTURE_FLAG = 1;
	public const uint32 NCRYPT_PIN_CACHE_APPLICATION_TICKET_BYTE_LENGTH = 90;
	public const uint32 NCRYPT_PIN_CACHE_CLEAR_FOR_CALLING_PROCESS_OPTION = 1;
	public const uint32 NCRYPT_KEY_ACCESS_POLICY_VERSION = 1;
	public const uint32 NCRYPT_ALLOW_SILENT_KEY_ACCESS = 1;
	public const uint32 NCRYPT_CIPHER_KEY_BLOB_MAGIC = 1380470851;
	public const uint32 NCRYPT_KDF_KEY_BLOB_MAGIC = 826688587;
	public const uint32 NCRYPT_PROTECTED_KEY_BLOB_MAGIC = 1263817296;
	public const uint32 NCRYPT_TPM_LOADABLE_KEY_BLOB_MAGIC = 1297371211;
	public const uint32 NCRYPT_NAMED_DESCRIPTOR_FLAG = 1;
	public const uint32 NCRYPT_PROTECTION_INFO_TYPE_DESCRIPTOR_STRING = 1;
	public const uint32 ALG_CLASS_ANY = 0;
	public const uint32 ALG_CLASS_SIGNATURE = 8192;
	public const uint32 ALG_CLASS_MSG_ENCRYPT = 16384;
	public const uint32 ALG_CLASS_DATA_ENCRYPT = 24576;
	public const uint32 ALG_CLASS_HASH = 32768;
	public const uint32 ALG_CLASS_KEY_EXCHANGE = 40960;
	public const uint32 ALG_CLASS_ALL = 57344;
	public const uint32 ALG_TYPE_ANY = 0;
	public const uint32 ALG_TYPE_DSS = 512;
	public const uint32 ALG_TYPE_RSA = 1024;
	public const uint32 ALG_TYPE_BLOCK = 1536;
	public const uint32 ALG_TYPE_STREAM = 2048;
	public const uint32 ALG_TYPE_DH = 2560;
	public const uint32 ALG_TYPE_SECURECHANNEL = 3072;
	public const uint32 ALG_TYPE_ECDH = 3584;
	public const uint32 ALG_TYPE_THIRDPARTY = 4096;
	public const uint32 ALG_SID_ANY = 0;
	public const uint32 ALG_SID_THIRDPARTY_ANY = 0;
	public const uint32 ALG_SID_RSA_ANY = 0;
	public const uint32 ALG_SID_RSA_PKCS = 1;
	public const uint32 ALG_SID_RSA_MSATWORK = 2;
	public const uint32 ALG_SID_RSA_ENTRUST = 3;
	public const uint32 ALG_SID_RSA_PGP = 4;
	public const uint32 ALG_SID_DSS_ANY = 0;
	public const uint32 ALG_SID_DSS_PKCS = 1;
	public const uint32 ALG_SID_DSS_DMS = 2;
	public const uint32 ALG_SID_ECDSA = 3;
	public const uint32 ALG_SID_DES = 1;
	public const uint32 ALG_SID_3DES = 3;
	public const uint32 ALG_SID_DESX = 4;
	public const uint32 ALG_SID_IDEA = 5;
	public const uint32 ALG_SID_CAST = 6;
	public const uint32 ALG_SID_SAFERSK64 = 7;
	public const uint32 ALG_SID_SAFERSK128 = 8;
	public const uint32 ALG_SID_3DES_112 = 9;
	public const uint32 ALG_SID_CYLINK_MEK = 12;
	public const uint32 ALG_SID_RC5 = 13;
	public const uint32 ALG_SID_AES_128 = 14;
	public const uint32 ALG_SID_AES_192 = 15;
	public const uint32 ALG_SID_AES_256 = 16;
	public const uint32 ALG_SID_AES = 17;
	public const uint32 ALG_SID_SKIPJACK = 10;
	public const uint32 ALG_SID_TEK = 11;
	public const uint32 CRYPT_MODE_CBCI = 6;
	public const uint32 CRYPT_MODE_CFBP = 7;
	public const uint32 CRYPT_MODE_OFBP = 8;
	public const uint32 CRYPT_MODE_CBCOFM = 9;
	public const uint32 CRYPT_MODE_CBCOFMI = 10;
	public const uint32 ALG_SID_RC2 = 2;
	public const uint32 ALG_SID_RC4 = 1;
	public const uint32 ALG_SID_SEAL = 2;
	public const uint32 ALG_SID_DH_SANDF = 1;
	public const uint32 ALG_SID_DH_EPHEM = 2;
	public const uint32 ALG_SID_AGREED_KEY_ANY = 3;
	public const uint32 ALG_SID_KEA = 4;
	public const uint32 ALG_SID_ECDH = 5;
	public const uint32 ALG_SID_ECDH_EPHEM = 6;
	public const uint32 ALG_SID_MD2 = 1;
	public const uint32 ALG_SID_MD4 = 2;
	public const uint32 ALG_SID_MD5 = 3;
	public const uint32 ALG_SID_SHA = 4;
	public const uint32 ALG_SID_SHA1 = 4;
	public const uint32 ALG_SID_MAC = 5;
	public const uint32 ALG_SID_RIPEMD = 6;
	public const uint32 ALG_SID_RIPEMD160 = 7;
	public const uint32 ALG_SID_SSL3SHAMD5 = 8;
	public const uint32 ALG_SID_HMAC = 9;
	public const uint32 ALG_SID_TLS1PRF = 10;
	public const uint32 ALG_SID_HASH_REPLACE_OWF = 11;
	public const uint32 ALG_SID_SHA_256 = 12;
	public const uint32 ALG_SID_SHA_384 = 13;
	public const uint32 ALG_SID_SHA_512 = 14;
	public const uint32 ALG_SID_SSL3_MASTER = 1;
	public const uint32 ALG_SID_SCHANNEL_MASTER_HASH = 2;
	public const uint32 ALG_SID_SCHANNEL_MAC_KEY = 3;
	public const uint32 ALG_SID_PCT1_MASTER = 4;
	public const uint32 ALG_SID_SSL2_MASTER = 5;
	public const uint32 ALG_SID_TLS1_MASTER = 6;
	public const uint32 ALG_SID_SCHANNEL_ENC_KEY = 7;
	public const uint32 ALG_SID_ECMQV = 1;
	public const uint32 ALG_SID_EXAMPLE = 80;
	public const uint32 SIGNATURE_RESOURCE_NUMBER = 666;
	public const uint32 CRYPT_VERIFYCONTEXT = 4026531840;
	public const uint32 CRYPT_NEWKEYSET = 8;
	public const uint32 CRYPT_DELETEKEYSET = 16;
	public const uint32 CRYPT_SILENT = 64;
	public const uint32 CRYPT_DEFAULT_CONTAINER_OPTIONAL = 128;
	public const uint32 CRYPT_UPDATE_KEY = 8;
	public const uint32 CRYPT_USER_PROTECTED_STRONG = 1048576;
	public const uint32 RSA1024BIT_KEY = 67108864;
	public const uint32 CRYPT_SERVER = 1024;
	public const uint32 KEY_LENGTH_MASK = 4294901760;
	public const uint32 CRYPT_DECRYPT_RSA_NO_PADDING_CHECK = 32;
	public const uint32 CRYPT_SECRETDIGEST = 1;
	public const uint32 CRYPT_OWF_REPL_LM_HASH = 1;
	public const uint32 CRYPT_LITTLE_ENDIAN = 1;
	public const uint32 CRYPT_NOHASHOID = 1;
	public const uint32 CRYPT_TYPE2_FORMAT = 2;
	public const uint32 CRYPT_X931_FORMAT = 4;
	public const uint32 CRYPT_MACHINE_DEFAULT = 1;
	public const uint32 CRYPT_USER_DEFAULT = 2;
	public const uint32 CRYPT_DELETE_DEFAULT = 4;
	public const uint32 SIMPLEBLOB = 1;
	public const uint32 PUBLICKEYBLOB = 6;
	public const uint32 PRIVATEKEYBLOB = 7;
	public const uint32 PLAINTEXTKEYBLOB = 8;
	public const uint32 OPAQUEKEYBLOB = 9;
	public const uint32 PUBLICKEYBLOBEX = 10;
	public const uint32 SYMMETRICWRAPKEYBLOB = 11;
	public const uint32 KEYSTATEBLOB = 12;
	public const uint32 CRYPT_USERDATA = 1;
	public const uint32 KP_IV = 1;
	public const uint32 KP_PADDING = 3;
	public const uint32 KP_MODE = 4;
	public const uint32 KP_MODE_BITS = 5;
	public const uint32 KP_P = 11;
	public const uint32 KP_G = 12;
	public const uint32 KP_Q = 13;
	public const uint32 KP_X = 14;
	public const uint32 KP_Y = 15;
	public const uint32 KP_RA = 16;
	public const uint32 KP_RB = 17;
	public const uint32 KP_INFO = 18;
	public const uint32 KP_EFFECTIVE_KEYLEN = 19;
	public const uint32 KP_SCHANNEL_ALG = 20;
	public const uint32 KP_CLIENT_RANDOM = 21;
	public const uint32 KP_SERVER_RANDOM = 22;
	public const uint32 KP_RP = 23;
	public const uint32 KP_PRECOMP_MD5 = 24;
	public const uint32 KP_PRECOMP_SHA = 25;
	public const uint32 KP_CLEAR_KEY = 27;
	public const uint32 KP_PUB_EX_LEN = 28;
	public const uint32 KP_PUB_EX_VAL = 29;
	public const uint32 KP_KEYVAL = 30;
	public const uint32 KP_ADMIN_PIN = 31;
	public const uint32 KP_KEYEXCHANGE_PIN = 32;
	public const uint32 KP_SIGNATURE_PIN = 33;
	public const uint32 KP_PREHASH = 34;
	public const uint32 KP_ROUNDS = 35;
	public const uint32 KP_OAEP_PARAMS = 36;
	public const uint32 KP_CMS_KEY_INFO = 37;
	public const uint32 KP_CMS_DH_KEY_INFO = 38;
	public const uint32 KP_PUB_PARAMS = 39;
	public const uint32 KP_VERIFY_PARAMS = 40;
	public const uint32 KP_HIGHEST_VERSION = 41;
	public const uint32 KP_PIN_ID = 43;
	public const uint32 KP_PIN_INFO = 44;
	public const uint32 PKCS5_PADDING = 1;
	public const uint32 RANDOM_PADDING = 2;
	public const uint32 ZERO_PADDING = 3;
	public const uint32 CRYPT_MODE_CBC = 1;
	public const uint32 CRYPT_MODE_ECB = 2;
	public const uint32 CRYPT_MODE_OFB = 3;
	public const uint32 CRYPT_MODE_CFB = 4;
	public const uint32 CRYPT_MODE_CTS = 5;
	public const uint32 CRYPT_ENCRYPT = 1;
	public const uint32 CRYPT_DECRYPT = 2;
	public const uint32 CRYPT_EXPORT = 4;
	public const uint32 CRYPT_READ = 8;
	public const uint32 CRYPT_WRITE = 16;
	public const uint32 CRYPT_MAC = 32;
	public const uint32 CRYPT_EXPORT_KEY = 64;
	public const uint32 CRYPT_IMPORT_KEY = 128;
	public const uint32 CRYPT_ARCHIVE = 256;
	public const uint32 HP_ALGID = 1;
	public const uint32 HP_HASHSIZE = 4;
	public const uint32 HP_TLS1PRF_LABEL = 6;
	public const uint32 HP_TLS1PRF_SEED = 7;
	public const uint32 CRYPT_FAILED = 0;
	public const uint32 CRYPT_SUCCEED = 1;
	public const uint32 PP_ENUMALGS = 1;
	public const uint32 PP_ENUMCONTAINERS = 2;
	public const uint32 PP_IMPTYPE = 3;
	public const uint32 PP_NAME = 4;
	public const uint32 PP_VERSION = 5;
	public const uint32 PP_CONTAINER = 6;
	public const uint32 PP_CHANGE_PASSWORD = 7;
	public const uint32 PP_CERTCHAIN = 9;
	public const uint32 PP_KEY_TYPE_SUBTYPE = 10;
	public const uint32 PP_PROVTYPE = 16;
	public const uint32 PP_KEYSTORAGE = 17;
	public const uint32 PP_APPLI_CERT = 18;
	public const uint32 PP_SYM_KEYSIZE = 19;
	public const uint32 PP_SESSION_KEYSIZE = 20;
	public const uint32 PP_ENUMALGS_EX = 22;
	public const uint32 PP_ENUMMANDROOTS = 25;
	public const uint32 PP_ENUMELECTROOTS = 26;
	public const uint32 PP_KEYSET_TYPE = 27;
	public const uint32 PP_ADMIN_PIN = 31;
	public const uint32 PP_SIG_KEYSIZE_INC = 34;
	public const uint32 PP_KEYX_KEYSIZE_INC = 35;
	public const uint32 PP_UNIQUE_CONTAINER = 36;
	public const uint32 PP_SGC_INFO = 37;
	public const uint32 PP_KEYSPEC = 39;
	public const uint32 PP_ENUMEX_SIGNING_PROT = 40;
	public const uint32 PP_CRYPT_COUNT_KEY_USE = 41;
	public const uint32 PP_SMARTCARD_GUID = 45;
	public const uint32 PP_SMARTCARD_READER_ICON = 47;
	public const uint32 CRYPT_FIRST = 1;
	public const uint32 CRYPT_NEXT = 2;
	public const uint32 CRYPT_SGC_ENUM = 4;
	public const uint32 CRYPT_IMPL_HARDWARE = 1;
	public const uint32 CRYPT_IMPL_SOFTWARE = 2;
	public const uint32 CRYPT_IMPL_MIXED = 3;
	public const uint32 CRYPT_IMPL_UNKNOWN = 4;
	public const uint32 CRYPT_IMPL_REMOVABLE = 8;
	public const uint32 CRYPT_SEC_DESCR = 1;
	public const uint32 CRYPT_PSTORE = 2;
	public const uint32 CRYPT_UI_PROMPT = 4;
	public const uint32 CRYPT_FLAG_PCT1 = 1;
	public const uint32 CRYPT_FLAG_SSL2 = 2;
	public const uint32 CRYPT_FLAG_SSL3 = 4;
	public const uint32 CRYPT_FLAG_TLS1 = 8;
	public const uint32 CRYPT_FLAG_IPSEC = 16;
	public const uint32 CRYPT_FLAG_SIGNING = 32;
	public const uint32 CRYPT_SGC = 1;
	public const uint32 CRYPT_FASTSGC = 2;
	public const uint32 PP_CONTEXT_INFO = 11;
	public const uint32 PP_DISMISS_PIN_UI_SEC = 49;
	public const uint32 PROV_RSA_FULL = 1;
	public const uint32 PROV_RSA_SIG = 2;
	public const uint32 PROV_DSS = 3;
	public const uint32 PROV_FORTEZZA = 4;
	public const uint32 PROV_MS_EXCHANGE = 5;
	public const uint32 PROV_SSL = 6;
	public const uint32 PROV_RSA_SCHANNEL = 12;
	public const uint32 PROV_DSS_DH = 13;
	public const uint32 PROV_EC_ECDSA_SIG = 14;
	public const uint32 PROV_EC_ECNRA_SIG = 15;
	public const uint32 PROV_EC_ECDSA_FULL = 16;
	public const uint32 PROV_EC_ECNRA_FULL = 17;
	public const uint32 PROV_DH_SCHANNEL = 18;
	public const uint32 PROV_SPYRUS_LYNKS = 20;
	public const uint32 PROV_RNG = 21;
	public const uint32 PROV_INTEL_SEC = 22;
	public const uint32 PROV_REPLACE_OWF = 23;
	public const uint32 PROV_RSA_AES = 24;
	public const uint32 PROV_STT_MER = 7;
	public const uint32 PROV_STT_ACQ = 8;
	public const uint32 PROV_STT_BRND = 9;
	public const uint32 PROV_STT_ROOT = 10;
	public const uint32 PROV_STT_ISS = 11;
	public const uint32 MAXUIDLEN = 64;
	public const uint32 CUR_BLOB_VERSION = 2;
	public const uint32 SCHANNEL_MAC_KEY = 0;
	public const uint32 SCHANNEL_ENC_KEY = 1;
	public const uint32 INTERNATIONAL_USAGE = 1;
	public const uint32 CERT_RDN_TYPE_MASK = 255;
	public const uint32 CERT_RDN_FLAGS_MASK = 4278190080;
	public const uint32 CERT_RDN_ENABLE_T61_UNICODE_FLAG = 2147483648;
	public const uint32 CERT_RDN_ENABLE_UTF8_UNICODE_FLAG = 536870912;
	public const uint32 CERT_RDN_FORCE_UTF8_UNICODE_FLAG = 268435456;
	public const uint32 CERT_RDN_DISABLE_CHECK_TYPE_FLAG = 1073741824;
	public const uint32 CERT_RDN_DISABLE_IE4_UTF8_FLAG = 16777216;
	public const uint32 CERT_RDN_ENABLE_PUNYCODE_FLAG = 33554432;
	public const uint32 CRYPT_ECC_PRIVATE_KEY_INFO_v1 = 1;
	public const uint32 CERT_V1 = 0;
	public const uint32 CERT_V2 = 1;
	public const uint32 CERT_V3 = 2;
	public const uint32 CERT_INFO_VERSION_FLAG = 1;
	public const uint32 CERT_INFO_SERIAL_NUMBER_FLAG = 2;
	public const uint32 CERT_INFO_SIGNATURE_ALGORITHM_FLAG = 3;
	public const uint32 CERT_INFO_ISSUER_FLAG = 4;
	public const uint32 CERT_INFO_NOT_BEFORE_FLAG = 5;
	public const uint32 CERT_INFO_NOT_AFTER_FLAG = 6;
	public const uint32 CERT_INFO_SUBJECT_FLAG = 7;
	public const uint32 CERT_INFO_SUBJECT_PUBLIC_KEY_INFO_FLAG = 8;
	public const uint32 CERT_INFO_ISSUER_UNIQUE_ID_FLAG = 9;
	public const uint32 CERT_INFO_SUBJECT_UNIQUE_ID_FLAG = 10;
	public const uint32 CERT_INFO_EXTENSION_FLAG = 11;
	public const uint32 CRL_V1 = 0;
	public const uint32 CRL_V2 = 1;
	public const uint32 CERT_BUNDLE_CERTIFICATE = 0;
	public const uint32 CERT_BUNDLE_CRL = 1;
	public const uint32 CERT_REQUEST_V1 = 0;
	public const uint32 CERT_KEYGEN_REQUEST_V1 = 0;
	public const uint32 CTL_V1 = 0;
	public const uint32 CERT_ENCODING_TYPE_MASK = 65535;
	public const uint32 CMSG_ENCODING_TYPE_MASK = 4294901760;
	public const uint32 CRYPT_ASN_ENCODING = 1;
	public const uint32 CRYPT_NDR_ENCODING = 2;
	public const uint32 X509_NDR_ENCODING = 2;
	public const uint32 PKCS_7_NDR_ENCODING = 131072;
	public const uint32 CRYPT_FORMAT_STR_MULTI_LINE = 1;
	public const uint32 CRYPT_FORMAT_STR_NO_HEX = 16;
	public const uint32 CRYPT_FORMAT_SIMPLE = 1;
	public const uint32 CRYPT_FORMAT_X509 = 2;
	public const uint32 CRYPT_FORMAT_OID = 4;
	public const uint32 CRYPT_FORMAT_RDN_SEMICOLON = 256;
	public const uint32 CRYPT_FORMAT_RDN_CRLF = 512;
	public const uint32 CRYPT_FORMAT_RDN_UNQUOTE = 1024;
	public const uint32 CRYPT_FORMAT_RDN_REVERSE = 2048;
	public const uint32 CRYPT_FORMAT_COMMA = 4096;
	public const uint32 CRYPT_FORMAT_SEMICOLON = 256;
	public const uint32 CRYPT_FORMAT_CRLF = 512;
	public const uint32 CRYPT_ENCODE_NO_SIGNATURE_BYTE_REVERSAL_FLAG = 8;
	public const uint32 CRYPT_UNICODE_NAME_ENCODE_FORCE_UTF8_UNICODE_FLAG = 268435456;
	public const uint32 CRYPT_SORTED_CTL_ENCODE_HASHED_SUBJECT_IDENTIFIER_FLAG = 65536;
	public const uint32 CRYPT_ENCODE_ENABLE_UTF8PERCENT_FLAG = 262144;
	public const uint32 CRYPT_DECODE_NOCOPY_FLAG = 1;
	public const uint32 CRYPT_DECODE_TO_BE_SIGNED_FLAG = 2;
	public const uint32 CRYPT_DECODE_SHARE_OID_STRING_FLAG = 4;
	public const uint32 CRYPT_DECODE_NO_SIGNATURE_BYTE_REVERSAL_FLAG = 8;
	public const uint32 CRYPT_DECODE_ALLOC_FLAG = 32768;
	public const uint32 CRYPT_UNICODE_NAME_DECODE_DISABLE_IE4_UTF8_FLAG = 16777216;
	public const uint32 CRYPT_DECODE_ENABLE_PUNYCODE_FLAG = 33554432;
	public const uint32 CRYPT_DECODE_ENABLE_UTF8PERCENT_FLAG = 67108864;
	public const uint32 CRYPT_ENCODE_DECODE_NONE = 0;
	public const uint32 SITE_PIN_RULES_ALL_SUBDOMAINS_FLAG = 1;
	public const uint32 CERT_ROOT_PROGRAM_FLAG_OU = 16;
	public const uint32 CERT_ROOT_PROGRAM_FLAG_ADDRESS = 8;
	public const uint32 CERT_UNICODE_RDN_ERR_INDEX_MASK = 1023;
	public const uint32 CERT_UNICODE_RDN_ERR_INDEX_SHIFT = 22;
	public const uint32 CERT_UNICODE_ATTR_ERR_INDEX_MASK = 63;
	public const uint32 CERT_UNICODE_ATTR_ERR_INDEX_SHIFT = 16;
	public const uint32 CERT_UNICODE_VALUE_ERR_INDEX_MASK = 65535;
	public const uint32 CERT_UNICODE_VALUE_ERR_INDEX_SHIFT = 0;
	public const uint32 CERT_DIGITAL_SIGNATURE_KEY_USAGE = 128;
	public const uint32 CERT_NON_REPUDIATION_KEY_USAGE = 64;
	public const uint32 CERT_KEY_ENCIPHERMENT_KEY_USAGE = 32;
	public const uint32 CERT_DATA_ENCIPHERMENT_KEY_USAGE = 16;
	public const uint32 CERT_KEY_AGREEMENT_KEY_USAGE = 8;
	public const uint32 CERT_KEY_CERT_SIGN_KEY_USAGE = 4;
	public const uint32 CERT_OFFLINE_CRL_SIGN_KEY_USAGE = 2;
	public const uint32 CERT_CRL_SIGN_KEY_USAGE = 2;
	public const uint32 CERT_ENCIPHER_ONLY_KEY_USAGE = 1;
	public const uint32 CERT_DECIPHER_ONLY_KEY_USAGE = 128;
	public const uint32 CERT_ALT_NAME_X400_ADDRESS = 4;
	public const uint32 CERT_ALT_NAME_EDI_PARTY_NAME = 6;
	public const uint32 CERT_ALT_NAME_ENTRY_ERR_INDEX_MASK = 255;
	public const uint32 CERT_ALT_NAME_ENTRY_ERR_INDEX_SHIFT = 16;
	public const uint32 CERT_ALT_NAME_VALUE_ERR_INDEX_MASK = 65535;
	public const uint32 CERT_ALT_NAME_VALUE_ERR_INDEX_SHIFT = 0;
	public const uint32 CERT_CA_SUBJECT_FLAG = 128;
	public const uint32 CERT_END_ENTITY_SUBJECT_FLAG = 64;
	public const uint32 CRL_REASON_PRIVILEGE_WITHDRAWN = 9;
	public const uint32 CRL_REASON_AA_COMPROMISE = 10;
	public const uint32 CRL_DIST_POINT_NO_NAME = 0;
	public const uint32 CRL_DIST_POINT_FULL_NAME = 1;
	public const uint32 CRL_DIST_POINT_ISSUER_RDN_NAME = 2;
	public const uint32 CRL_REASON_UNUSED_FLAG = 128;
	public const uint32 CRL_REASON_KEY_COMPROMISE_FLAG = 64;
	public const uint32 CRL_REASON_CA_COMPROMISE_FLAG = 32;
	public const uint32 CRL_REASON_AFFILIATION_CHANGED_FLAG = 16;
	public const uint32 CRL_REASON_SUPERSEDED_FLAG = 8;
	public const uint32 CRL_REASON_CESSATION_OF_OPERATION_FLAG = 4;
	public const uint32 CRL_REASON_CERTIFICATE_HOLD_FLAG = 2;
	public const uint32 CRL_REASON_PRIVILEGE_WITHDRAWN_FLAG = 1;
	public const uint32 CRL_REASON_AA_COMPROMISE_FLAG = 128;
	public const uint32 CRL_DIST_POINT_ERR_INDEX_MASK = 127;
	public const uint32 CRL_DIST_POINT_ERR_INDEX_SHIFT = 24;
	public const int32 CRL_DIST_POINT_ERR_CRL_ISSUER_BIT = -2147483648;
	public const uint32 CROSS_CERT_DIST_POINT_ERR_INDEX_MASK = 255;
	public const uint32 CROSS_CERT_DIST_POINT_ERR_INDEX_SHIFT = 24;
	public const int32 CERT_EXCLUDED_SUBTREE_BIT = -2147483648;
	public const uint32 SORTED_CTL_EXT_HASHED_SUBJECT_IDENTIFIER_FLAG = 1;
	public const uint32 CERT_DSS_R_LEN = 20;
	public const uint32 CERT_DSS_S_LEN = 20;
	public const uint32 CRYPT_X942_COUNTER_BYTE_LENGTH = 4;
	public const uint32 CRYPT_X942_KEY_LENGTH_BYTE_LENGTH = 4;
	public const uint32 CRYPT_ECC_CMS_SHARED_INFO_SUPPPUBINFO_BYTE_LENGTH = 4;
	public const uint32 CRYPT_RC2_40BIT_VERSION = 160;
	public const uint32 CRYPT_RC2_56BIT_VERSION = 52;
	public const uint32 CRYPT_RC2_64BIT_VERSION = 120;
	public const uint32 CRYPT_RC2_128BIT_VERSION = 58;
	public const uint32 PKCS_RSA_SSA_PSS_TRAILER_FIELD_BC = 1;
	public const uint32 NETSCAPE_SSL_CLIENT_AUTH_CERT_TYPE = 128;
	public const uint32 NETSCAPE_SSL_SERVER_AUTH_CERT_TYPE = 64;
	public const uint32 NETSCAPE_SMIME_CERT_TYPE = 32;
	public const uint32 NETSCAPE_SIGN_CERT_TYPE = 16;
	public const uint32 NETSCAPE_SSL_CA_CERT_TYPE = 4;
	public const uint32 NETSCAPE_SMIME_CA_CERT_TYPE = 2;
	public const uint32 NETSCAPE_SIGN_CA_CERT_TYPE = 1;
	public const uint32 CMC_TAGGED_CERT_REQUEST_CHOICE = 1;
	public const uint32 CMC_OTHER_INFO_NO_CHOICE = 0;
	public const uint32 CMC_OTHER_INFO_FAIL_CHOICE = 1;
	public const uint32 CMC_OTHER_INFO_PEND_CHOICE = 2;
	public const uint32 CMC_STATUS_SUCCESS = 0;
	public const uint32 CMC_STATUS_FAILED = 2;
	public const uint32 CMC_STATUS_PENDING = 3;
	public const uint32 CMC_STATUS_NO_SUPPORT = 4;
	public const uint32 CMC_STATUS_CONFIRM_REQUIRED = 5;
	public const uint32 CMC_FAIL_BAD_ALG = 0;
	public const uint32 CMC_FAIL_BAD_MESSAGE_CHECK = 1;
	public const uint32 CMC_FAIL_BAD_REQUEST = 2;
	public const uint32 CMC_FAIL_BAD_TIME = 3;
	public const uint32 CMC_FAIL_BAD_CERT_ID = 4;
	public const uint32 CMC_FAIL_UNSUPORTED_EXT = 5;
	public const uint32 CMC_FAIL_MUST_ARCHIVE_KEYS = 6;
	public const uint32 CMC_FAIL_BAD_IDENTITY = 7;
	public const uint32 CMC_FAIL_POP_REQUIRED = 8;
	public const uint32 CMC_FAIL_POP_FAILED = 9;
	public const uint32 CMC_FAIL_NO_KEY_REUSE = 10;
	public const uint32 CMC_FAIL_INTERNAL_CA_ERROR = 11;
	public const uint32 CMC_FAIL_TRY_LATER = 12;
	public const uint32 CERT_BIOMETRIC_PICTURE_TYPE = 0;
	public const uint32 CERT_BIOMETRIC_SIGNATURE_TYPE = 1;
	public const uint32 OCSP_REQUEST_V1 = 0;
	public const uint32 OCSP_SUCCESSFUL_RESPONSE = 0;
	public const uint32 OCSP_MALFORMED_REQUEST_RESPONSE = 1;
	public const uint32 OCSP_INTERNAL_ERROR_RESPONSE = 2;
	public const uint32 OCSP_TRY_LATER_RESPONSE = 3;
	public const uint32 OCSP_SIG_REQUIRED_RESPONSE = 5;
	public const uint32 OCSP_UNAUTHORIZED_RESPONSE = 6;
	public const uint32 OCSP_BASIC_GOOD_CERT_STATUS = 0;
	public const uint32 OCSP_BASIC_REVOKED_CERT_STATUS = 1;
	public const uint32 OCSP_BASIC_UNKNOWN_CERT_STATUS = 2;
	public const uint32 OCSP_BASIC_RESPONSE_V1 = 0;
	public const uint32 OCSP_BASIC_BY_NAME_RESPONDER_ID = 1;
	public const uint32 OCSP_BASIC_BY_KEY_RESPONDER_ID = 2;
	public const uint32 CRYPT_INSTALL_OID_FUNC_BEFORE_FLAG = 1;
	public const uint32 CRYPT_GET_INSTALLED_OID_FUNC_FLAG = 1;
	public const uint32 CRYPT_REGISTER_FIRST_INDEX = 0;
	public const uint32 CRYPT_REGISTER_LAST_INDEX = 4294967295;
	public const uint32 CRYPT_MATCH_ANY_ENCODING_TYPE = 4294967295;
	public const uint32 CALG_OID_INFO_CNG_ONLY = 4294967295;
	public const uint32 CALG_OID_INFO_PARAMETERS = 4294967294;
	public const uint32 CRYPT_HASH_ALG_OID_GROUP_ID = 1;
	public const uint32 CRYPT_ENCRYPT_ALG_OID_GROUP_ID = 2;
	public const uint32 CRYPT_PUBKEY_ALG_OID_GROUP_ID = 3;
	public const uint32 CRYPT_SIGN_ALG_OID_GROUP_ID = 4;
	public const uint32 CRYPT_RDN_ATTR_OID_GROUP_ID = 5;
	public const uint32 CRYPT_EXT_OR_ATTR_OID_GROUP_ID = 6;
	public const uint32 CRYPT_ENHKEY_USAGE_OID_GROUP_ID = 7;
	public const uint32 CRYPT_POLICY_OID_GROUP_ID = 8;
	public const uint32 CRYPT_TEMPLATE_OID_GROUP_ID = 9;
	public const uint32 CRYPT_KDF_OID_GROUP_ID = 10;
	public const uint32 CRYPT_LAST_OID_GROUP_ID = 10;
	public const uint32 CRYPT_FIRST_ALG_OID_GROUP_ID = 1;
	public const uint32 CRYPT_LAST_ALG_OID_GROUP_ID = 4;
	public const uint32 CRYPT_OID_INHIBIT_SIGNATURE_FORMAT_FLAG = 1;
	public const uint32 CRYPT_OID_USE_PUBKEY_PARA_FOR_PKCS7_FLAG = 2;
	public const uint32 CRYPT_OID_NO_NULL_ALGORITHM_PARA_FLAG = 4;
	public const uint32 CRYPT_OID_PUBKEY_SIGN_ONLY_FLAG = 2147483648;
	public const uint32 CRYPT_OID_PUBKEY_ENCRYPT_ONLY_FLAG = 1073741824;
	public const uint32 CRYPT_OID_USE_CURVE_NAME_FOR_ENCODE_FLAG = 536870912;
	public const uint32 CRYPT_OID_USE_CURVE_PARAMETERS_FOR_ENCODE_FLAG = 268435456;
	public const uint32 CRYPT_OID_INFO_OID_KEY = 1;
	public const uint32 CRYPT_OID_INFO_NAME_KEY = 2;
	public const uint32 CRYPT_OID_INFO_ALGID_KEY = 3;
	public const uint32 CRYPT_OID_INFO_SIGN_KEY = 4;
	public const uint32 CRYPT_OID_INFO_CNG_ALGID_KEY = 5;
	public const uint32 CRYPT_OID_INFO_CNG_SIGN_KEY = 6;
	public const uint32 CRYPT_OID_INFO_OID_KEY_FLAGS_MASK = 4294901760;
	public const uint32 CRYPT_OID_DISABLE_SEARCH_DS_FLAG = 2147483648;
	public const uint32 CRYPT_OID_PREFER_CNG_ALGID_FLAG = 1073741824;
	public const uint32 CRYPT_OID_INFO_OID_GROUP_BIT_LEN_MASK = 268369920;
	public const uint32 CRYPT_OID_INFO_OID_GROUP_BIT_LEN_SHIFT = 16;
	public const uint32 CRYPT_INSTALL_OID_INFO_BEFORE_FLAG = 1;
	public const uint32 CRYPT_LOCALIZED_NAME_ENCODING_TYPE = 0;
	public const uint32 CERT_STRONG_SIGN_SERIALIZED_INFO_CHOICE = 1;
	public const uint32 CERT_STRONG_SIGN_OID_INFO_CHOICE = 2;
	public const uint32 CMSG_ENCRYPTED = 6;
	public const uint32 CMSG_MAIL_LIST_HANDLE_KEY_CHOICE = 1;
	public const uint32 CMSG_KEY_TRANS_RECIPIENT = 1;
	public const uint32 CMSG_KEY_AGREE_RECIPIENT = 2;
	public const uint32 CMSG_MAIL_LIST_RECIPIENT = 3;
	public const uint32 CMSG_SP3_COMPATIBLE_ENCRYPT_FLAG = 2147483648;
	public const uint32 CMSG_RC4_NO_SALT_FLAG = 1073741824;
	public const uint32 CMSG_INDEFINITE_LENGTH = 4294967295;
	public const uint32 CMSG_BARE_CONTENT_FLAG = 1;
	public const uint32 CMSG_LENGTH_ONLY_FLAG = 2;
	public const uint32 CMSG_DETACHED_FLAG = 4;
	public const uint32 CMSG_AUTHENTICATED_ATTRIBUTES_FLAG = 8;
	public const uint32 CMSG_CONTENTS_OCTETS_FLAG = 16;
	public const uint32 CMSG_MAX_LENGTH_FLAG = 32;
	public const uint32 CMSG_CMS_ENCAPSULATED_CONTENT_FLAG = 64;
	public const uint32 CMSG_SIGNED_DATA_NO_SIGN_FLAG = 128;
	public const uint32 CMSG_CRYPT_RELEASE_CONTEXT_FLAG = 32768;
	public const uint32 CMSG_TYPE_PARAM = 1;
	public const uint32 CMSG_CONTENT_PARAM = 2;
	public const uint32 CMSG_BARE_CONTENT_PARAM = 3;
	public const uint32 CMSG_INNER_CONTENT_TYPE_PARAM = 4;
	public const uint32 CMSG_SIGNER_COUNT_PARAM = 5;
	public const uint32 CMSG_SIGNER_INFO_PARAM = 6;
	public const uint32 CMSG_SIGNER_CERT_INFO_PARAM = 7;
	public const uint32 CMSG_SIGNER_HASH_ALGORITHM_PARAM = 8;
	public const uint32 CMSG_SIGNER_AUTH_ATTR_PARAM = 9;
	public const uint32 CMSG_SIGNER_UNAUTH_ATTR_PARAM = 10;
	public const uint32 CMSG_CERT_COUNT_PARAM = 11;
	public const uint32 CMSG_CERT_PARAM = 12;
	public const uint32 CMSG_CRL_COUNT_PARAM = 13;
	public const uint32 CMSG_CRL_PARAM = 14;
	public const uint32 CMSG_ENVELOPE_ALGORITHM_PARAM = 15;
	public const uint32 CMSG_RECIPIENT_COUNT_PARAM = 17;
	public const uint32 CMSG_RECIPIENT_INDEX_PARAM = 18;
	public const uint32 CMSG_RECIPIENT_INFO_PARAM = 19;
	public const uint32 CMSG_HASH_ALGORITHM_PARAM = 20;
	public const uint32 CMSG_HASH_DATA_PARAM = 21;
	public const uint32 CMSG_COMPUTED_HASH_PARAM = 22;
	public const uint32 CMSG_ENCRYPT_PARAM = 26;
	public const uint32 CMSG_ENCRYPTED_DIGEST = 27;
	public const uint32 CMSG_ENCODED_SIGNER = 28;
	public const uint32 CMSG_ENCODED_MESSAGE = 29;
	public const uint32 CMSG_VERSION_PARAM = 30;
	public const uint32 CMSG_ATTR_CERT_COUNT_PARAM = 31;
	public const uint32 CMSG_ATTR_CERT_PARAM = 32;
	public const uint32 CMSG_CMS_RECIPIENT_COUNT_PARAM = 33;
	public const uint32 CMSG_CMS_RECIPIENT_INDEX_PARAM = 34;
	public const uint32 CMSG_CMS_RECIPIENT_ENCRYPTED_KEY_INDEX_PARAM = 35;
	public const uint32 CMSG_CMS_RECIPIENT_INFO_PARAM = 36;
	public const uint32 CMSG_UNPROTECTED_ATTR_PARAM = 37;
	public const uint32 CMSG_SIGNER_CERT_ID_PARAM = 38;
	public const uint32 CMSG_CMS_SIGNER_INFO_PARAM = 39;
	public const uint32 CMSG_SIGNED_DATA_V1 = 1;
	public const uint32 CMSG_SIGNED_DATA_V3 = 3;
	public const uint32 CMSG_SIGNED_DATA_PKCS_1_5_VERSION = 1;
	public const uint32 CMSG_SIGNED_DATA_CMS_VERSION = 3;
	public const uint32 CMSG_SIGNER_INFO_V1 = 1;
	public const uint32 CMSG_SIGNER_INFO_V3 = 3;
	public const uint32 CMSG_SIGNER_INFO_PKCS_1_5_VERSION = 1;
	public const uint32 CMSG_SIGNER_INFO_CMS_VERSION = 3;
	public const uint32 CMSG_HASHED_DATA_V0 = 0;
	public const uint32 CMSG_HASHED_DATA_V2 = 2;
	public const uint32 CMSG_HASHED_DATA_PKCS_1_5_VERSION = 0;
	public const uint32 CMSG_HASHED_DATA_CMS_VERSION = 2;
	public const uint32 CMSG_ENVELOPED_DATA_V0 = 0;
	public const uint32 CMSG_ENVELOPED_DATA_V2 = 2;
	public const uint32 CMSG_ENVELOPED_DATA_PKCS_1_5_VERSION = 0;
	public const uint32 CMSG_ENVELOPED_DATA_CMS_VERSION = 2;
	public const uint32 CMSG_ENVELOPED_RECIPIENT_V0 = 0;
	public const uint32 CMSG_ENVELOPED_RECIPIENT_V2 = 2;
	public const uint32 CMSG_ENVELOPED_RECIPIENT_V3 = 3;
	public const uint32 CMSG_ENVELOPED_RECIPIENT_V4 = 4;
	public const uint32 CMSG_KEY_TRANS_PKCS_1_5_VERSION = 0;
	public const uint32 CMSG_KEY_TRANS_CMS_VERSION = 2;
	public const uint32 CMSG_KEY_AGREE_VERSION = 3;
	public const uint32 CMSG_MAIL_LIST_VERSION = 4;
	public const uint32 CMSG_CTRL_VERIFY_SIGNATURE = 1;
	public const uint32 CMSG_CTRL_DECRYPT = 2;
	public const uint32 CMSG_CTRL_VERIFY_HASH = 5;
	public const uint32 CMSG_CTRL_ADD_SIGNER = 6;
	public const uint32 CMSG_CTRL_DEL_SIGNER = 7;
	public const uint32 CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR = 8;
	public const uint32 CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR = 9;
	public const uint32 CMSG_CTRL_ADD_CERT = 10;
	public const uint32 CMSG_CTRL_DEL_CERT = 11;
	public const uint32 CMSG_CTRL_ADD_CRL = 12;
	public const uint32 CMSG_CTRL_DEL_CRL = 13;
	public const uint32 CMSG_CTRL_ADD_ATTR_CERT = 14;
	public const uint32 CMSG_CTRL_DEL_ATTR_CERT = 15;
	public const uint32 CMSG_CTRL_KEY_TRANS_DECRYPT = 16;
	public const uint32 CMSG_CTRL_KEY_AGREE_DECRYPT = 17;
	public const uint32 CMSG_CTRL_MAIL_LIST_DECRYPT = 18;
	public const uint32 CMSG_CTRL_VERIFY_SIGNATURE_EX = 19;
	public const uint32 CMSG_CTRL_ADD_CMS_SIGNER_INFO = 20;
	public const uint32 CMSG_CTRL_ENABLE_STRONG_SIGNATURE = 21;
	public const uint32 CMSG_VERIFY_SIGNER_PUBKEY = 1;
	public const uint32 CMSG_VERIFY_SIGNER_CERT = 2;
	public const uint32 CMSG_VERIFY_SIGNER_CHAIN = 3;
	public const uint32 CMSG_VERIFY_SIGNER_NULL = 4;
	public const uint32 CMSG_VERIFY_COUNTER_SIGN_ENABLE_STRONG_FLAG = 1;
	public const uint32 CMSG_CONTENT_ENCRYPT_PAD_ENCODED_LEN_FLAG = 1;
	public const uint32 CMSG_CONTENT_ENCRYPT_FREE_PARA_FLAG = 1;
	public const uint32 CMSG_CONTENT_ENCRYPT_FREE_OBJID_FLAG = 2;
	public const uint32 CMSG_CONTENT_ENCRYPT_RELEASE_CONTEXT_FLAG = 32768;
	public const uint32 CMSG_KEY_TRANS_ENCRYPT_FREE_PARA_FLAG = 1;
	public const uint32 CMSG_KEY_TRANS_ENCRYPT_FREE_OBJID_FLAG = 2;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_PARA_FLAG = 1;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_MATERIAL_FLAG = 2;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_PUBKEY_ALG_FLAG = 4;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_PUBKEY_PARA_FLAG = 8;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_PUBKEY_BITS_FLAG = 16;
	public const uint32 CMSG_KEY_AGREE_ENCRYPT_FREE_OBJID_FLAG = 32;
	public const uint32 CMSG_MAIL_LIST_ENCRYPT_FREE_PARA_FLAG = 1;
	public const uint32 CMSG_MAIL_LIST_ENCRYPT_FREE_OBJID_FLAG = 2;
	public const uint32 CERT_KEY_PROV_HANDLE_PROP_ID = 1;
	public const uint32 CERT_KEY_PROV_INFO_PROP_ID = 2;
	public const uint32 CERT_SHA1_HASH_PROP_ID = 3;
	public const uint32 CERT_MD5_HASH_PROP_ID = 4;
	public const uint32 CERT_HASH_PROP_ID = 3;
	public const uint32 CERT_KEY_CONTEXT_PROP_ID = 5;
	public const uint32 CERT_KEY_SPEC_PROP_ID = 6;
	public const uint32 CERT_IE30_RESERVED_PROP_ID = 7;
	public const uint32 CERT_PUBKEY_HASH_RESERVED_PROP_ID = 8;
	public const uint32 CERT_ENHKEY_USAGE_PROP_ID = 9;
	public const uint32 CERT_CTL_USAGE_PROP_ID = 9;
	public const uint32 CERT_NEXT_UPDATE_LOCATION_PROP_ID = 10;
	public const uint32 CERT_FRIENDLY_NAME_PROP_ID = 11;
	public const uint32 CERT_PVK_FILE_PROP_ID = 12;
	public const uint32 CERT_DESCRIPTION_PROP_ID = 13;
	public const uint32 CERT_ACCESS_STATE_PROP_ID = 14;
	public const uint32 CERT_SIGNATURE_HASH_PROP_ID = 15;
	public const uint32 CERT_SMART_CARD_DATA_PROP_ID = 16;
	public const uint32 CERT_EFS_PROP_ID = 17;
	public const uint32 CERT_FORTEZZA_DATA_PROP_ID = 18;
	public const uint32 CERT_ARCHIVED_PROP_ID = 19;
	public const uint32 CERT_KEY_IDENTIFIER_PROP_ID = 20;
	public const uint32 CERT_AUTO_ENROLL_PROP_ID = 21;
	public const uint32 CERT_PUBKEY_ALG_PARA_PROP_ID = 22;
	public const uint32 CERT_CROSS_CERT_DIST_POINTS_PROP_ID = 23;
	public const uint32 CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID = 24;
	public const uint32 CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID = 25;
	public const uint32 CERT_ENROLLMENT_PROP_ID = 26;
	public const uint32 CERT_DATE_STAMP_PROP_ID = 27;
	public const uint32 CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 28;
	public const uint32 CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 29;
	public const uint32 CERT_EXTENDED_ERROR_INFO_PROP_ID = 30;
	public const uint32 CERT_RENEWAL_PROP_ID = 64;
	public const uint32 CERT_ARCHIVED_KEY_HASH_PROP_ID = 65;
	public const uint32 CERT_AUTO_ENROLL_RETRY_PROP_ID = 66;
	public const uint32 CERT_AIA_URL_RETRIEVED_PROP_ID = 67;
	public const uint32 CERT_AUTHORITY_INFO_ACCESS_PROP_ID = 68;
	public const uint32 CERT_BACKED_UP_PROP_ID = 69;
	public const uint32 CERT_OCSP_RESPONSE_PROP_ID = 70;
	public const uint32 CERT_REQUEST_ORIGINATOR_PROP_ID = 71;
	public const uint32 CERT_SOURCE_LOCATION_PROP_ID = 72;
	public const uint32 CERT_SOURCE_URL_PROP_ID = 73;
	public const uint32 CERT_NEW_KEY_PROP_ID = 74;
	public const uint32 CERT_OCSP_CACHE_PREFIX_PROP_ID = 75;
	public const uint32 CERT_SMART_CARD_ROOT_INFO_PROP_ID = 76;
	public const uint32 CERT_NO_AUTO_EXPIRE_CHECK_PROP_ID = 77;
	public const uint32 CERT_NCRYPT_KEY_HANDLE_PROP_ID = 78;
	public const uint32 CERT_HCRYPTPROV_OR_NCRYPT_KEY_HANDLE_PROP_ID = 79;
	public const uint32 CERT_SUBJECT_INFO_ACCESS_PROP_ID = 80;
	public const uint32 CERT_CA_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 81;
	public const uint32 CERT_CA_DISABLE_CRL_PROP_ID = 82;
	public const uint32 CERT_ROOT_PROGRAM_CERT_POLICIES_PROP_ID = 83;
	public const uint32 CERT_ROOT_PROGRAM_NAME_CONSTRAINTS_PROP_ID = 84;
	public const uint32 CERT_SUBJECT_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 85;
	public const uint32 CERT_SUBJECT_DISABLE_CRL_PROP_ID = 86;
	public const uint32 CERT_CEP_PROP_ID = 87;
	public const uint32 CERT_SIGN_HASH_CNG_ALG_PROP_ID = 89;
	public const uint32 CERT_SCARD_PIN_ID_PROP_ID = 90;
	public const uint32 CERT_SCARD_PIN_INFO_PROP_ID = 91;
	public const uint32 CERT_SUBJECT_PUB_KEY_BIT_LENGTH_PROP_ID = 92;
	public const uint32 CERT_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 93;
	public const uint32 CERT_ISSUER_PUB_KEY_BIT_LENGTH_PROP_ID = 94;
	public const uint32 CERT_ISSUER_CHAIN_SIGN_HASH_CNG_ALG_PROP_ID = 95;
	public const uint32 CERT_ISSUER_CHAIN_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 96;
	public const uint32 CERT_NO_EXPIRE_NOTIFICATION_PROP_ID = 97;
	public const uint32 CERT_AUTH_ROOT_SHA256_HASH_PROP_ID = 98;
	public const uint32 CERT_NCRYPT_KEY_HANDLE_TRANSFER_PROP_ID = 99;
	public const uint32 CERT_HCRYPTPROV_TRANSFER_PROP_ID = 100;
	public const uint32 CERT_SMART_CARD_READER_PROP_ID = 101;
	public const uint32 CERT_SEND_AS_TRUSTED_ISSUER_PROP_ID = 102;
	public const uint32 CERT_KEY_REPAIR_ATTEMPTED_PROP_ID = 103;
	public const uint32 CERT_DISALLOWED_FILETIME_PROP_ID = 104;
	public const uint32 CERT_ROOT_PROGRAM_CHAIN_POLICIES_PROP_ID = 105;
	public const uint32 CERT_SMART_CARD_READER_NON_REMOVABLE_PROP_ID = 106;
	public const uint32 CERT_SHA256_HASH_PROP_ID = 107;
	public const uint32 CERT_SCEP_SERVER_CERTS_PROP_ID = 108;
	public const uint32 CERT_SCEP_RA_SIGNATURE_CERT_PROP_ID = 109;
	public const uint32 CERT_SCEP_RA_ENCRYPTION_CERT_PROP_ID = 110;
	public const uint32 CERT_SCEP_CA_CERT_PROP_ID = 111;
	public const uint32 CERT_SCEP_SIGNER_CERT_PROP_ID = 112;
	public const uint32 CERT_SCEP_NONCE_PROP_ID = 113;
	public const uint32 CERT_SCEP_ENCRYPT_HASH_CNG_ALG_PROP_ID = 114;
	public const uint32 CERT_SCEP_FLAGS_PROP_ID = 115;
	public const uint32 CERT_SCEP_GUID_PROP_ID = 116;
	public const uint32 CERT_SERIALIZABLE_KEY_CONTEXT_PROP_ID = 117;
	public const uint32 CERT_ISOLATED_KEY_PROP_ID = 118;
	public const uint32 CERT_SERIAL_CHAIN_PROP_ID = 119;
	public const uint32 CERT_KEY_CLASSIFICATION_PROP_ID = 120;
	public const uint32 CERT_OCSP_MUST_STAPLE_PROP_ID = 121;
	public const uint32 CERT_DISALLOWED_ENHKEY_USAGE_PROP_ID = 122;
	public const uint32 CERT_NONCOMPLIANT_ROOT_URL_PROP_ID = 123;
	public const uint32 CERT_PIN_SHA256_HASH_PROP_ID = 124;
	public const uint32 CERT_CLR_DELETE_KEY_PROP_ID = 125;
	public const uint32 CERT_NOT_BEFORE_FILETIME_PROP_ID = 126;
	public const uint32 CERT_NOT_BEFORE_ENHKEY_USAGE_PROP_ID = 127;
	public const uint32 CERT_FIRST_RESERVED_PROP_ID = 128;
	public const uint32 CERT_LAST_RESERVED_PROP_ID = 32767;
	public const uint32 CERT_FIRST_USER_PROP_ID = 32768;
	public const uint32 CERT_LAST_USER_PROP_ID = 65535;
	public const uint32 CERT_ACCESS_STATE_WRITE_PERSIST_FLAG = 1;
	public const uint32 CERT_ACCESS_STATE_SYSTEM_STORE_FLAG = 2;
	public const uint32 CERT_ACCESS_STATE_LM_SYSTEM_STORE_FLAG = 4;
	public const uint32 CERT_ACCESS_STATE_GP_SYSTEM_STORE_FLAG = 8;
	public const uint32 CERT_ACCESS_STATE_SHARED_USER_FLAG = 16;
	public const uint32 CERT_STORE_SIGNATURE_FLAG = 1;
	public const uint32 CERT_STORE_TIME_VALIDITY_FLAG = 2;
	public const uint32 CERT_STORE_REVOCATION_FLAG = 4;
	public const uint32 CERT_STORE_NO_CRL_FLAG = 65536;
	public const uint32 CERT_STORE_NO_ISSUER_FLAG = 131072;
	public const uint32 CERT_STORE_BASE_CRL_FLAG = 256;
	public const uint32 CERT_STORE_DELTA_CRL_FLAG = 512;
	public const uint32 CERT_STORE_UNSAFE_PHYSICAL_FLAG = 32;
	public const uint32 CERT_STORE_SHARE_STORE_FLAG = 64;
	public const uint32 CERT_STORE_MANIFOLD_FLAG = 256;
	public const uint32 CERT_SYSTEM_STORE_MASK = 4294901760;
	public const uint32 CERT_SYSTEM_STORE_UNPROTECTED_FLAG = 1073741824;
	public const uint32 CERT_SYSTEM_STORE_DEFER_READ_FLAG = 536870912;
	public const uint32 CERT_SYSTEM_STORE_LOCATION_SHIFT = 16;
	public const uint32 CERT_SYSTEM_STORE_CURRENT_USER_ID = 1;
	public const uint32 CERT_SYSTEM_STORE_LOCAL_MACHINE_ID = 2;
	public const uint32 CERT_SYSTEM_STORE_CURRENT_SERVICE_ID = 4;
	public const uint32 CERT_SYSTEM_STORE_SERVICES_ID = 5;
	public const uint32 CERT_SYSTEM_STORE_USERS_ID = 6;
	public const uint32 CERT_SYSTEM_STORE_CURRENT_USER_GROUP_POLICY_ID = 7;
	public const uint32 CERT_SYSTEM_STORE_LOCAL_MACHINE_GROUP_POLICY_ID = 8;
	public const uint32 CERT_SYSTEM_STORE_LOCAL_MACHINE_ENTERPRISE_ID = 9;
	public const uint32 CERT_SYSTEM_STORE_LOCAL_MACHINE_WCOS_ID = 10;
	public const uint32 CERT_PROT_ROOT_DISABLE_CURRENT_USER_FLAG = 1;
	public const uint32 CERT_PROT_ROOT_INHIBIT_ADD_AT_INIT_FLAG = 2;
	public const uint32 CERT_PROT_ROOT_INHIBIT_PURGE_LM_FLAG = 4;
	public const uint32 CERT_PROT_ROOT_DISABLE_LM_AUTH_FLAG = 8;
	public const uint32 CERT_PROT_ROOT_ONLY_LM_GPT_FLAG = 8;
	public const uint32 CERT_PROT_ROOT_DISABLE_NT_AUTH_REQUIRED_FLAG = 16;
	public const uint32 CERT_PROT_ROOT_DISABLE_NOT_DEFINED_NAME_CONSTRAINT_FLAG = 32;
	public const uint32 CERT_PROT_ROOT_DISABLE_PEER_TRUST = 65536;
	public const uint32 CERT_TRUST_PUB_ALLOW_TRUST_MASK = 3;
	public const uint32 CERT_TRUST_PUB_ALLOW_END_USER_TRUST = 0;
	public const uint32 CERT_TRUST_PUB_ALLOW_MACHINE_ADMIN_TRUST = 1;
	public const uint32 CERT_TRUST_PUB_ALLOW_ENTERPRISE_ADMIN_TRUST = 2;
	public const uint32 CERT_TRUST_PUB_CHECK_PUBLISHER_REV_FLAG = 256;
	public const uint32 CERT_TRUST_PUB_CHECK_TIMESTAMP_REV_FLAG = 512;
	public const uint32 CERT_AUTH_ROOT_AUTO_UPDATE_DISABLE_UNTRUSTED_ROOT_LOGGING_FLAG = 1;
	public const uint32 CERT_AUTH_ROOT_AUTO_UPDATE_DISABLE_PARTIAL_CHAIN_LOGGING_FLAG = 2;
	public const uint32 CERT_AUTO_UPDATE_DISABLE_RANDOM_QUERY_STRING_FLAG = 4;
	public const uint32 CERT_REGISTRY_STORE_REMOTE_FLAG = 65536;
	public const uint32 CERT_REGISTRY_STORE_SERIALIZED_FLAG = 131072;
	public const uint32 CERT_REGISTRY_STORE_CLIENT_GPT_FLAG = 2147483648;
	public const uint32 CERT_REGISTRY_STORE_LM_GPT_FLAG = 16777216;
	public const uint32 CERT_REGISTRY_STORE_ROAMING_FLAG = 262144;
	public const uint32 CERT_REGISTRY_STORE_MY_IE_DIRTY_FLAG = 524288;
	public const uint32 CERT_REGISTRY_STORE_EXTERNAL_FLAG = 1048576;
	public const uint32 CERT_FILE_STORE_COMMIT_ENABLE_FLAG = 65536;
	public const uint32 CERT_LDAP_STORE_SIGN_FLAG = 65536;
	public const uint32 CERT_LDAP_STORE_AREC_EXCLUSIVE_FLAG = 131072;
	public const uint32 CERT_LDAP_STORE_OPENED_FLAG = 262144;
	public const uint32 CERT_LDAP_STORE_UNBIND_FLAG = 524288;
	public const uint32 CERT_STORE_PROV_GP_SYSTEM_STORE_FLAG = 32;
	public const uint32 CERT_STORE_PROV_SHARED_USER_FLAG = 64;
	public const uint32 CERT_STORE_PROV_CLOSE_FUNC = 0;
	public const uint32 CERT_STORE_PROV_READ_CERT_FUNC = 1;
	public const uint32 CERT_STORE_PROV_WRITE_CERT_FUNC = 2;
	public const uint32 CERT_STORE_PROV_DELETE_CERT_FUNC = 3;
	public const uint32 CERT_STORE_PROV_SET_CERT_PROPERTY_FUNC = 4;
	public const uint32 CERT_STORE_PROV_READ_CRL_FUNC = 5;
	public const uint32 CERT_STORE_PROV_WRITE_CRL_FUNC = 6;
	public const uint32 CERT_STORE_PROV_DELETE_CRL_FUNC = 7;
	public const uint32 CERT_STORE_PROV_SET_CRL_PROPERTY_FUNC = 8;
	public const uint32 CERT_STORE_PROV_READ_CTL_FUNC = 9;
	public const uint32 CERT_STORE_PROV_WRITE_CTL_FUNC = 10;
	public const uint32 CERT_STORE_PROV_DELETE_CTL_FUNC = 11;
	public const uint32 CERT_STORE_PROV_SET_CTL_PROPERTY_FUNC = 12;
	public const uint32 CERT_STORE_PROV_CONTROL_FUNC = 13;
	public const uint32 CERT_STORE_PROV_FIND_CERT_FUNC = 14;
	public const uint32 CERT_STORE_PROV_FREE_FIND_CERT_FUNC = 15;
	public const uint32 CERT_STORE_PROV_GET_CERT_PROPERTY_FUNC = 16;
	public const uint32 CERT_STORE_PROV_FIND_CRL_FUNC = 17;
	public const uint32 CERT_STORE_PROV_FREE_FIND_CRL_FUNC = 18;
	public const uint32 CERT_STORE_PROV_GET_CRL_PROPERTY_FUNC = 19;
	public const uint32 CERT_STORE_PROV_FIND_CTL_FUNC = 20;
	public const uint32 CERT_STORE_PROV_FREE_FIND_CTL_FUNC = 21;
	public const uint32 CERT_STORE_PROV_GET_CTL_PROPERTY_FUNC = 22;
	public const uint32 CERT_STORE_PROV_WRITE_ADD_FLAG = 1;
	public const uint32 CERT_STORE_SAVE_AS_PKCS12 = 3;
	public const uint32 CERT_CLOSE_STORE_FORCE_FLAG = 1;
	public const uint32 CERT_CLOSE_STORE_CHECK_FLAG = 2;
	public const uint32 CERT_COMPARE_MASK = 65535;
	public const uint32 CERT_COMPARE_ANY = 0;
	public const uint32 CERT_COMPARE_SHA1_HASH = 1;
	public const uint32 CERT_COMPARE_NAME = 2;
	public const uint32 CERT_COMPARE_ATTR = 3;
	public const uint32 CERT_COMPARE_MD5_HASH = 4;
	public const uint32 CERT_COMPARE_PROPERTY = 5;
	public const uint32 CERT_COMPARE_PUBLIC_KEY = 6;
	public const uint32 CERT_COMPARE_HASH = 1;
	public const uint32 CERT_COMPARE_NAME_STR_A = 7;
	public const uint32 CERT_COMPARE_NAME_STR_W = 8;
	public const uint32 CERT_COMPARE_KEY_SPEC = 9;
	public const uint32 CERT_COMPARE_ENHKEY_USAGE = 10;
	public const uint32 CERT_COMPARE_CTL_USAGE = 10;
	public const uint32 CERT_COMPARE_SUBJECT_CERT = 11;
	public const uint32 CERT_COMPARE_ISSUER_OF = 12;
	public const uint32 CERT_COMPARE_EXISTING = 13;
	public const uint32 CERT_COMPARE_SIGNATURE_HASH = 14;
	public const uint32 CERT_COMPARE_KEY_IDENTIFIER = 15;
	public const uint32 CERT_COMPARE_CERT_ID = 16;
	public const uint32 CERT_COMPARE_CROSS_CERT_DIST_POINTS = 17;
	public const uint32 CERT_COMPARE_PUBKEY_MD5_HASH = 18;
	public const uint32 CERT_COMPARE_SUBJECT_INFO_ACCESS = 19;
	public const uint32 CERT_COMPARE_HASH_STR = 20;
	public const uint32 CERT_COMPARE_HAS_PRIVATE_KEY = 21;
	public const uint32 CERT_SET_PROPERTY_IGNORE_PERSIST_ERROR_FLAG = 2147483648;
	public const uint32 CERT_SET_PROPERTY_INHIBIT_PERSIST_FLAG = 1073741824;
	public const uint32 CTL_ENTRY_FROM_PROP_CHAIN_FLAG = 1;
	public const uint32 CRL_FIND_ANY = 0;
	public const uint32 CRL_FIND_ISSUED_BY = 1;
	public const uint32 CRL_FIND_EXISTING = 2;
	public const uint32 CRL_FIND_ISSUED_FOR = 3;
	public const uint32 CRL_FIND_ISSUED_BY_AKI_FLAG = 1;
	public const uint32 CRL_FIND_ISSUED_BY_SIGNATURE_FLAG = 2;
	public const uint32 CRL_FIND_ISSUED_BY_DELTA_FLAG = 4;
	public const uint32 CRL_FIND_ISSUED_BY_BASE_FLAG = 8;
	public const uint32 CRL_FIND_ISSUED_FOR_SET_STRONG_PROPERTIES_FLAG = 16;
	public const uint32 CERT_STORE_ADD_NEW = 1;
	public const uint32 CERT_STORE_ADD_USE_EXISTING = 2;
	public const uint32 CERT_STORE_ADD_REPLACE_EXISTING = 3;
	public const uint32 CERT_STORE_ADD_ALWAYS = 4;
	public const uint32 CERT_STORE_ADD_REPLACE_EXISTING_INHERIT_PROPERTIES = 5;
	public const uint32 CERT_STORE_ADD_NEWER = 6;
	public const uint32 CERT_STORE_ADD_NEWER_INHERIT_PROPERTIES = 7;
	public const uint32 CERT_STORE_CERTIFICATE_CONTEXT = 1;
	public const uint32 CERT_STORE_CRL_CONTEXT = 2;
	public const uint32 CERT_STORE_CTL_CONTEXT = 3;
	public const uint32 CTL_ANY_SUBJECT_TYPE = 1;
	public const uint32 CTL_CERT_SUBJECT_TYPE = 2;
	public const uint32 CTL_FIND_NO_LIST_ID_CBDATA = 4294967295;
	public const uint32 CERT_STORE_CTRL_RESYNC = 1;
	public const uint32 CERT_STORE_CTRL_NOTIFY_CHANGE = 2;
	public const uint32 CERT_STORE_CTRL_COMMIT = 3;
	public const uint32 CERT_STORE_CTRL_AUTO_RESYNC = 4;
	public const uint32 CERT_STORE_CTRL_CANCEL_NOTIFY = 5;
	public const uint32 CERT_STORE_LOCALIZED_NAME_PROP_ID = 4096;
	public const uint32 CERT_CREATE_CONTEXT_NOCOPY_FLAG = 1;
	public const uint32 CERT_CREATE_CONTEXT_SORTED_FLAG = 2;
	public const uint32 CERT_CREATE_CONTEXT_NO_HCRYPTMSG_FLAG = 4;
	public const uint32 CERT_CREATE_CONTEXT_NO_ENTRY_FLAG = 8;
	public const uint32 CERT_PHYSICAL_STORE_ADD_ENABLE_FLAG = 1;
	public const uint32 CERT_PHYSICAL_STORE_OPEN_DISABLE_FLAG = 2;
	public const uint32 CERT_PHYSICAL_STORE_REMOTE_OPEN_DISABLE_FLAG = 4;
	public const uint32 CERT_PHYSICAL_STORE_INSERT_COMPUTER_NAME_ENABLE_FLAG = 8;
	public const uint32 CERT_PHYSICAL_STORE_PREDEFINED_ENUM_FLAG = 1;
	public const uint32 CMSG_TRUSTED_SIGNER_FLAG = 1;
	public const uint32 CMSG_SIGNER_ONLY_FLAG = 2;
	public const uint32 CMSG_USE_SIGNER_INDEX_FLAG = 4;
	public const uint32 CMSG_CMS_ENCAPSULATED_CTL_FLAG = 32768;
	public const uint32 CMSG_ENCODE_SORTED_CTL_FLAG = 1;
	public const uint32 CMSG_ENCODE_HASHED_SUBJECT_IDENTIFIER_FLAG = 2;
	public const uint32 CERT_VERIFY_INHIBIT_CTL_UPDATE_FLAG = 1;
	public const uint32 CERT_VERIFY_TRUSTED_SIGNERS_FLAG = 2;
	public const uint32 CERT_VERIFY_NO_TIME_CHECK_FLAG = 4;
	public const uint32 CERT_VERIFY_ALLOW_MORE_USAGE_FLAG = 8;
	public const uint32 CERT_VERIFY_UPDATED_CTL_FLAG = 1;
	public const uint32 CERT_CONTEXT_REVOCATION_TYPE = 1;
	public const uint32 CERT_VERIFY_REV_CHAIN_FLAG = 1;
	public const uint32 CERT_VERIFY_CACHE_ONLY_BASED_REVOCATION = 2;
	public const uint32 CERT_VERIFY_REV_ACCUMULATIVE_TIMEOUT_FLAG = 4;
	public const uint32 CERT_VERIFY_REV_SERVER_OCSP_FLAG = 8;
	public const uint32 CERT_VERIFY_REV_NO_OCSP_FAILOVER_TO_CRL_FLAG = 16;
	public const uint32 CERT_VERIFY_REV_SERVER_OCSP_WIRE_ONLY_FLAG = 32;
	public const uint32 CERT_UNICODE_IS_RDN_ATTRS_FLAG = 1;
	public const uint32 CERT_CASE_INSENSITIVE_IS_RDN_ATTRS_FLAG = 2;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB = 1;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_SUBJECT_CERT = 2;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_SUBJECT_CRL = 3;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_SUBJECT_OCSP_BASIC_SIGNED_RESPONSE = 4;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY = 1;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_ISSUER_CERT = 2;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_ISSUER_CHAIN = 3;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL = 4;
	public const uint32 CRYPT_VERIFY_CERT_SIGN_CHECK_WEAK_HASH_FLAG = 8;
	public const uint32 CRYPT_ACQUIRE_WINDOW_HANDLE_FLAG = 128;
	public const uint32 CRYPT_ACQUIRE_NCRYPT_KEY_FLAGS_MASK = 458752;
	public const uint32 CRYPT_ACQUIRE_ALLOW_NCRYPT_KEY_FLAG = 65536;
	public const uint32 CRYPT_ACQUIRE_PREFER_NCRYPT_KEY_FLAG = 131072;
	public const uint32 CRYPT_ACQUIRE_ONLY_NCRYPT_KEY_FLAG = 262144;
	public const uint32 CRYPT_DELETE_KEYSET = 16;
	public const uint32 CERT_XML_NAME_STR = 4;
	public const uint32 CERT_NAME_STR_SEMICOLON_FLAG = 1073741824;
	public const uint32 CERT_NAME_STR_NO_PLUS_FLAG = 536870912;
	public const uint32 CERT_NAME_STR_NO_QUOTING_FLAG = 268435456;
	public const uint32 CERT_NAME_STR_CRLF_FLAG = 134217728;
	public const uint32 CERT_NAME_STR_COMMA_FLAG = 67108864;
	public const uint32 CERT_NAME_STR_REVERSE_FLAG = 33554432;
	public const uint32 CERT_NAME_STR_FORWARD_FLAG = 16777216;
	public const uint32 CERT_NAME_STR_DISABLE_IE4_UTF8_FLAG = 65536;
	public const uint32 CERT_NAME_STR_ENABLE_T61_UNICODE_FLAG = 131072;
	public const uint32 CERT_NAME_STR_ENABLE_UTF8_UNICODE_FLAG = 262144;
	public const uint32 CERT_NAME_STR_FORCE_UTF8_DIR_STR_FLAG = 524288;
	public const uint32 CERT_NAME_STR_DISABLE_UTF8_DIR_STR_FLAG = 1048576;
	public const uint32 CERT_NAME_STR_ENABLE_PUNYCODE_FLAG = 2097152;
	public const uint32 CERT_NAME_EMAIL_TYPE = 1;
	public const uint32 CERT_NAME_RDN_TYPE = 2;
	public const uint32 CERT_NAME_ATTR_TYPE = 3;
	public const uint32 CERT_NAME_SIMPLE_DISPLAY_TYPE = 4;
	public const uint32 CERT_NAME_FRIENDLY_DISPLAY_TYPE = 5;
	public const uint32 CERT_NAME_DNS_TYPE = 6;
	public const uint32 CERT_NAME_URL_TYPE = 7;
	public const uint32 CERT_NAME_UPN_TYPE = 8;
	public const uint32 CERT_NAME_ISSUER_FLAG = 1;
	public const uint32 CERT_NAME_DISABLE_IE4_UTF8_FLAG = 65536;
	public const uint32 CERT_NAME_SEARCH_ALL_NAMES_FLAG = 2;
	public const uint32 CRYPT_MESSAGE_BARE_CONTENT_OUT_FLAG = 1;
	public const uint32 CRYPT_MESSAGE_ENCAPSULATED_CONTENT_OUT_FLAG = 2;
	public const uint32 CRYPT_MESSAGE_KEYID_SIGNER_FLAG = 4;
	public const uint32 CRYPT_MESSAGE_SILENT_KEYSET_FLAG = 64;
	public const uint32 CRYPT_MESSAGE_KEYID_RECIPIENT_FLAG = 4;
	public const uint32 CRYPT_RETRIEVE_MULTIPLE_OBJECTS = 1;
	public const uint32 CRYPT_CACHE_ONLY_RETRIEVAL = 2;
	public const uint32 CRYPT_WIRE_ONLY_RETRIEVAL = 4;
	public const uint32 CRYPT_DONT_CACHE_RESULT = 8;
	public const uint32 CRYPT_ASYNC_RETRIEVAL = 16;
	public const uint32 CRYPT_STICKY_CACHE_RETRIEVAL = 4096;
	public const uint32 CRYPT_LDAP_SCOPE_BASE_ONLY_RETRIEVAL = 8192;
	public const uint32 CRYPT_OFFLINE_CHECK_RETRIEVAL = 16384;
	public const uint32 CRYPT_LDAP_INSERT_ENTRY_ATTRIBUTE = 32768;
	public const uint32 CRYPT_LDAP_SIGN_RETRIEVAL = 65536;
	public const uint32 CRYPT_NO_AUTH_RETRIEVAL = 131072;
	public const uint32 CRYPT_LDAP_AREC_EXCLUSIVE_RETRIEVAL = 262144;
	public const uint32 CRYPT_AIA_RETRIEVAL = 524288;
	public const uint32 CRYPT_HTTP_POST_RETRIEVAL = 1048576;
	public const uint32 CRYPT_PROXY_CACHE_RETRIEVAL = 2097152;
	public const uint32 CRYPT_NOT_MODIFIED_RETRIEVAL = 4194304;
	public const uint32 CRYPT_ENABLE_SSL_REVOCATION_RETRIEVAL = 8388608;
	public const uint32 CRYPT_RANDOM_QUERY_STRING_RETRIEVAL = 67108864;
	public const uint32 CRYPT_ENABLE_FILE_RETRIEVAL = 134217728;
	public const uint32 CRYPT_CREATE_NEW_FLUSH_ENTRY = 268435456;
	public const uint32 CRYPT_VERIFY_CONTEXT_SIGNATURE = 32;
	public const uint32 CRYPT_VERIFY_DATA_HASH = 64;
	public const uint32 CRYPT_KEEP_TIME_VALID = 128;
	public const uint32 CRYPT_DONT_VERIFY_SIGNATURE = 256;
	public const uint32 CRYPT_DONT_CHECK_TIME_VALIDITY = 512;
	public const uint32 CRYPT_CHECK_FRESHNESS_TIME_VALIDITY = 1024;
	public const uint32 CRYPT_ACCUMULATIVE_TIMEOUT = 2048;
	public const uint32 CRYPT_OCSP_ONLY_RETRIEVAL = 16777216;
	public const uint32 CRYPT_NO_OCSP_FAILOVER_TO_CRL_RETRIEVAL = 33554432;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_NONE = 0;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_BLOB = 1;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_CRL = 2;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_OCSP = 3;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_AUTOROOT_CAB = 5;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_DISALLOWED_CERT_CAB = 6;
	public const uint32 CRYPTNET_URL_CACHE_PRE_FETCH_PIN_RULES_CAB = 7;
	public const uint32 CRYPTNET_URL_CACHE_DEFAULT_FLUSH = 0;
	public const uint32 CRYPTNET_URL_CACHE_DISABLE_FLUSH = 4294967295;
	public const uint32 CRYPTNET_URL_CACHE_RESPONSE_NONE = 0;
	public const uint32 CRYPTNET_URL_CACHE_RESPONSE_HTTP = 1;
	public const uint32 CRYPTNET_URL_CACHE_RESPONSE_VALIDATED = 32768;
	public const uint32 CRYPT_RETRIEVE_MAX_ERROR_CONTENT_LENGTH = 4096;
	public const uint32 CRYPT_KEYID_MACHINE_FLAG = 32;
	public const uint32 CRYPT_KEYID_ALLOC_FLAG = 32768;
	public const uint32 CRYPT_KEYID_DELETE_FLAG = 16;
	public const uint32 CRYPT_KEYID_SET_NEW_FLAG = 8192;
	public const uint32 CERT_CHAIN_MAX_AIA_URL_COUNT_IN_CERT_DEFAULT = 5;
	public const uint32 CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_COUNT_PER_CHAIN_DEFAULT = 3;
	public const uint32 CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_BYTE_COUNT_DEFAULT = 100000;
	public const uint32 CERT_CHAIN_MAX_AIA_URL_RETRIEVAL_CERT_COUNT_DEFAULT = 10;
	public const uint32 CERT_CHAIN_MAX_SSL_TIME_UPDATED_EVENT_COUNT_DEFAULT = 5;
	public const uint32 CERT_CHAIN_MAX_SSL_TIME_UPDATED_EVENT_COUNT_DISABLE = 4294967295;
	public const uint32 CERT_CHAIN_ENABLE_MD2_MD4_FLAG = 1;
	public const uint32 CERT_CHAIN_ENABLE_WEAK_RSA_ROOT_FLAG = 2;
	public const uint32 CERT_CHAIN_ENABLE_WEAK_LOGGING_FLAG = 4;
	public const uint32 CERT_CHAIN_ENABLE_ONLY_WEAK_LOGGING_FLAG = 8;
	public const uint32 CERT_CHAIN_MIN_RSA_PUB_KEY_BIT_LENGTH_DEFAULT = 1023;
	public const uint32 CERT_CHAIN_MIN_RSA_PUB_KEY_BIT_LENGTH_DISABLE = 4294967295;
	public const uint32 CERT_CHAIN_MIN_PUB_KEY_BIT_LENGTH_DISABLE = 4294967295;
	public const uint32 CERT_CHAIN_ENABLE_WEAK_SETTINGS_FLAG = 2147483648;
	public const uint32 CERT_CHAIN_DISABLE_ECC_PARA_FLAG = 16;
	public const uint32 CERT_CHAIN_DISABLE_ALL_EKU_WEAK_FLAG = 65536;
	public const uint32 CERT_CHAIN_ENABLE_ALL_EKU_HYGIENE_FLAG = 131072;
	public const uint32 CERT_CHAIN_DISABLE_OPT_IN_SERVER_AUTH_WEAK_FLAG = 262144;
	public const uint32 CERT_CHAIN_DISABLE_SERVER_AUTH_WEAK_FLAG = 1048576;
	public const uint32 CERT_CHAIN_ENABLE_SERVER_AUTH_HYGIENE_FLAG = 2097152;
	public const uint32 CERT_CHAIN_DISABLE_CODE_SIGNING_WEAK_FLAG = 4194304;
	public const uint32 CERT_CHAIN_DISABLE_MOTW_CODE_SIGNING_WEAK_FLAG = 8388608;
	public const uint32 CERT_CHAIN_ENABLE_CODE_SIGNING_HYGIENE_FLAG = 16777216;
	public const uint32 CERT_CHAIN_ENABLE_MOTW_CODE_SIGNING_HYGIENE_FLAG = 33554432;
	public const uint32 CERT_CHAIN_DISABLE_TIMESTAMP_WEAK_FLAG = 67108864;
	public const uint32 CERT_CHAIN_DISABLE_MOTW_TIMESTAMP_WEAK_FLAG = 134217728;
	public const uint32 CERT_CHAIN_ENABLE_TIMESTAMP_HYGIENE_FLAG = 268435456;
	public const uint32 CERT_CHAIN_ENABLE_MOTW_TIMESTAMP_HYGIENE_FLAG = 536870912;
	public const uint32 CERT_CHAIN_MOTW_IGNORE_AFTER_TIME_WEAK_FLAG = 1073741824;
	public const uint32 CERT_CHAIN_DISABLE_FILE_HASH_WEAK_FLAG = 4096;
	public const uint32 CERT_CHAIN_DISABLE_MOTW_FILE_HASH_WEAK_FLAG = 8192;
	public const uint32 CERT_CHAIN_DISABLE_TIMESTAMP_HASH_WEAK_FLAG = 16384;
	public const uint32 CERT_CHAIN_DISABLE_MOTW_TIMESTAMP_HASH_WEAK_FLAG = 32768;
	public const uint32 CERT_CHAIN_OPT_IN_WEAK_FLAGS = 262144;
	public const uint32 CERT_CHAIN_AUTO_CURRENT_USER = 1;
	public const uint32 CERT_CHAIN_AUTO_LOCAL_MACHINE = 2;
	public const uint32 CERT_CHAIN_AUTO_IMPERSONATED = 3;
	public const uint32 CERT_CHAIN_AUTO_PROCESS_INFO = 4;
	public const uint32 CERT_CHAIN_AUTO_PINRULE_INFO = 5;
	public const uint32 CERT_CHAIN_AUTO_NETWORK_INFO = 6;
	public const uint32 CERT_CHAIN_AUTO_SERIAL_LOCAL_MACHINE = 7;
	public const uint32 CERT_CHAIN_AUTO_HPKP_RULE_INFO = 8;
	public const uint32 CERT_CHAIN_AUTO_FLUSH_DISABLE_FLAG = 1;
	public const uint32 CERT_CHAIN_AUTO_LOG_CREATE_FLAG = 2;
	public const uint32 CERT_CHAIN_AUTO_LOG_FREE_FLAG = 4;
	public const uint32 CERT_CHAIN_AUTO_LOG_FLUSH_FLAG = 8;
	public const uint32 CERT_SRV_OCSP_RESP_MIN_SYNC_CERT_FILE_SECONDS_DEFAULT = 5;
	public const uint32 CRYPTNET_MAX_CACHED_OCSP_PER_CRL_COUNT_DEFAULT = 500;
	public const uint32 CRYPTNET_OCSP_AFTER_CRL_DISABLE = 4294967295;
	public const uint32 CRYPTNET_PRE_FETCH_AFTER_PUBLISH_PRE_FETCH_DIVISOR_DEFAULT = 10;
	public const uint32 CRYPTNET_PRE_FETCH_BEFORE_NEXT_UPDATE_PRE_FETCH_DIVISOR_DEFAULT = 20;
	public const uint32 CRYPTNET_PRE_FETCH_VALIDITY_PERIOD_AFTER_NEXT_UPDATE_PRE_FETCH_DIVISOR_DEFAULT = 10;
	public const uint32 CRYPTNET_PRE_FETCH_TRIGGER_DISABLE = 4294967295;
	public const uint32 CRYPTNET_PRE_FETCH_SCAN_AFTER_TRIGGER_DELAY_SECONDS_DEFAULT = 60;
	public const uint32 CRYPTNET_CACHED_OCSP_SWITCH_TO_CRL_COUNT_DEFAULT = 50;
	public const uint32 CRYPTNET_CRL_BEFORE_OCSP_ENABLE = 4294967295;
	public const uint32 CERT_CHAIN_OPTION_DISABLE_AIA_URL_RETRIEVAL = 2;
	public const uint32 CERT_CHAIN_OPTION_ENABLE_SIA_URL_RETRIEVAL = 4;
	public const uint32 CERT_CHAIN_CRL_VALIDITY_EXT_PERIOD_HOURS_DEFAULT = 12;
	public const uint32 CERT_CHAIN_CACHE_END_CERT = 1;
	public const uint32 CERT_CHAIN_THREAD_STORE_SYNC = 2;
	public const uint32 CERT_CHAIN_CACHE_ONLY_URL_RETRIEVAL = 4;
	public const uint32 CERT_CHAIN_USE_LOCAL_MACHINE_STORE = 8;
	public const uint32 CERT_CHAIN_ENABLE_CACHE_AUTO_UPDATE = 16;
	public const uint32 CERT_CHAIN_ENABLE_SHARE_STORE = 32;
	public const uint32 CERT_CHAIN_EXCLUSIVE_ENABLE_CA_FLAG = 1;
	public const uint32 CERT_TRUST_NO_ERROR = 0;
	public const uint32 CERT_TRUST_IS_NOT_TIME_VALID = 1;
	public const uint32 CERT_TRUST_IS_NOT_TIME_NESTED = 2;
	public const uint32 CERT_TRUST_IS_REVOKED = 4;
	public const uint32 CERT_TRUST_IS_NOT_SIGNATURE_VALID = 8;
	public const uint32 CERT_TRUST_IS_NOT_VALID_FOR_USAGE = 16;
	public const uint32 CERT_TRUST_IS_UNTRUSTED_ROOT = 32;
	public const uint32 CERT_TRUST_REVOCATION_STATUS_UNKNOWN = 64;
	public const uint32 CERT_TRUST_IS_CYCLIC = 128;
	public const uint32 CERT_TRUST_INVALID_EXTENSION = 256;
	public const uint32 CERT_TRUST_INVALID_POLICY_CONSTRAINTS = 512;
	public const uint32 CERT_TRUST_INVALID_BASIC_CONSTRAINTS = 1024;
	public const uint32 CERT_TRUST_INVALID_NAME_CONSTRAINTS = 2048;
	public const uint32 CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT = 4096;
	public const uint32 CERT_TRUST_HAS_NOT_DEFINED_NAME_CONSTRAINT = 8192;
	public const uint32 CERT_TRUST_HAS_NOT_PERMITTED_NAME_CONSTRAINT = 16384;
	public const uint32 CERT_TRUST_HAS_EXCLUDED_NAME_CONSTRAINT = 32768;
	public const uint32 CERT_TRUST_IS_OFFLINE_REVOCATION = 16777216;
	public const uint32 CERT_TRUST_NO_ISSUANCE_CHAIN_POLICY = 33554432;
	public const uint32 CERT_TRUST_IS_EXPLICIT_DISTRUST = 67108864;
	public const uint32 CERT_TRUST_HAS_NOT_SUPPORTED_CRITICAL_EXT = 134217728;
	public const uint32 CERT_TRUST_HAS_WEAK_SIGNATURE = 1048576;
	public const uint32 CERT_TRUST_HAS_WEAK_HYGIENE = 2097152;
	public const uint32 CERT_TRUST_IS_PARTIAL_CHAIN = 65536;
	public const uint32 CERT_TRUST_CTL_IS_NOT_TIME_VALID = 131072;
	public const uint32 CERT_TRUST_CTL_IS_NOT_SIGNATURE_VALID = 262144;
	public const uint32 CERT_TRUST_CTL_IS_NOT_VALID_FOR_USAGE = 524288;
	public const uint32 CERT_TRUST_HAS_EXACT_MATCH_ISSUER = 1;
	public const uint32 CERT_TRUST_HAS_KEY_MATCH_ISSUER = 2;
	public const uint32 CERT_TRUST_HAS_NAME_MATCH_ISSUER = 4;
	public const uint32 CERT_TRUST_IS_SELF_SIGNED = 8;
	public const uint32 CERT_TRUST_AUTO_UPDATE_CA_REVOCATION = 16;
	public const uint32 CERT_TRUST_AUTO_UPDATE_END_REVOCATION = 32;
	public const uint32 CERT_TRUST_NO_OCSP_FAILOVER_TO_CRL = 64;
	public const uint32 CERT_TRUST_IS_KEY_ROLLOVER = 128;
	public const uint32 CERT_TRUST_SSL_HANDSHAKE_OCSP = 262144;
	public const uint32 CERT_TRUST_SSL_TIME_VALID_OCSP = 524288;
	public const uint32 CERT_TRUST_SSL_RECONNECT_OCSP = 1048576;
	public const uint32 CERT_TRUST_HAS_PREFERRED_ISSUER = 256;
	public const uint32 CERT_TRUST_HAS_ISSUANCE_CHAIN_POLICY = 512;
	public const uint32 CERT_TRUST_HAS_VALID_NAME_CONSTRAINTS = 1024;
	public const uint32 CERT_TRUST_IS_PEER_TRUSTED = 2048;
	public const uint32 CERT_TRUST_HAS_CRL_VALIDITY_EXTENDED = 4096;
	public const uint32 CERT_TRUST_IS_FROM_EXCLUSIVE_TRUST_STORE = 8192;
	public const uint32 CERT_TRUST_IS_CA_TRUSTED = 16384;
	public const uint32 CERT_TRUST_HAS_AUTO_UPDATE_WEAK_SIGNATURE = 32768;
	public const uint32 CERT_TRUST_HAS_ALLOW_WEAK_SIGNATURE = 131072;
	public const uint32 CERT_TRUST_IS_COMPLEX_CHAIN = 65536;
	public const uint32 CERT_TRUST_SSL_TIME_VALID = 16777216;
	public const uint32 CERT_TRUST_NO_TIME_CHECK = 33554432;
	public const uint32 USAGE_MATCH_TYPE_AND = 0;
	public const uint32 USAGE_MATCH_TYPE_OR = 1;
	public const uint32 CERT_CHAIN_STRONG_SIGN_DISABLE_END_CHECK_FLAG = 1;
	public const uint32 CERT_CHAIN_REVOCATION_CHECK_END_CERT = 268435456;
	public const uint32 CERT_CHAIN_REVOCATION_CHECK_CHAIN = 536870912;
	public const uint32 CERT_CHAIN_REVOCATION_CHECK_CHAIN_EXCLUDE_ROOT = 1073741824;
	public const uint32 CERT_CHAIN_REVOCATION_CHECK_CACHE_ONLY = 2147483648;
	public const uint32 CERT_CHAIN_REVOCATION_ACCUMULATIVE_TIMEOUT = 134217728;
	public const uint32 CERT_CHAIN_REVOCATION_CHECK_OCSP_CERT = 67108864;
	public const uint32 CERT_CHAIN_DISABLE_PASS1_QUALITY_FILTERING = 64;
	public const uint32 CERT_CHAIN_RETURN_LOWER_QUALITY_CONTEXTS = 128;
	public const uint32 CERT_CHAIN_DISABLE_AUTH_ROOT_AUTO_UPDATE = 256;
	public const uint32 CERT_CHAIN_TIMESTAMP_TIME = 512;
	public const uint32 CERT_CHAIN_ENABLE_PEER_TRUST = 1024;
	public const uint32 CERT_CHAIN_DISABLE_MY_PEER_TRUST = 2048;
	public const uint32 CERT_CHAIN_DISABLE_MD2_MD4 = 4096;
	public const uint32 CERT_CHAIN_DISABLE_AIA = 8192;
	public const uint32 CERT_CHAIN_HAS_MOTW = 16384;
	public const uint32 CERT_CHAIN_ONLY_ADDITIONAL_AND_AUTH_ROOT = 32768;
	public const uint32 CERT_CHAIN_OPT_IN_WEAK_SIGNATURE = 65536;
	public const uint32 CERT_CHAIN_FIND_BY_ISSUER = 1;
	public const uint32 CERT_CHAIN_POLICY_IGNORE_WEAK_SIGNATURE_FLAG = 134217728;
	public const uint32 BASIC_CONSTRAINTS_CERT_CHAIN_POLICY_CA_FLAG = 2147483648;
	public const uint32 BASIC_CONSTRAINTS_CERT_CHAIN_POLICY_END_ENTITY_FLAG = 1073741824;
	public const uint32 MICROSOFT_ROOT_CERT_CHAIN_POLICY_ENABLE_TEST_ROOT_FLAG = 65536;
	public const uint32 MICROSOFT_ROOT_CERT_CHAIN_POLICY_CHECK_APPLICATION_ROOT_FLAG = 131072;
	public const uint32 MICROSOFT_ROOT_CERT_CHAIN_POLICY_DISABLE_FLIGHT_ROOT_FLAG = 262144;
	public const uint32 SSL_F12_ERROR_TEXT_LENGTH = 256;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_SUCCESS_LEVEL = 0;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_WARNING_LEVEL = 1;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_ERROR_LEVEL = 2;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_NONE_CATEGORY = 0;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_WEAK_CRYPTO_CATEGORY = 1;
	public const uint32 CERT_CHAIN_POLICY_SSL_F12_ROOT_PROGRAM_CATEGORY = 2;
	public const uint32 SSL_HPKP_PKP_HEADER_INDEX = 0;
	public const uint32 SSL_HPKP_PKP_RO_HEADER_INDEX = 1;
	public const uint32 SSL_HPKP_HEADER_COUNT = 2;
	public const uint32 SSL_KEY_PIN_ERROR_TEXT_LENGTH = 512;
	public const int32 CERT_CHAIN_POLICY_SSL_KEY_PIN_MISMATCH_ERROR = -2;
	public const int32 CERT_CHAIN_POLICY_SSL_KEY_PIN_MITM_ERROR = -1;
	public const uint32 CERT_CHAIN_POLICY_SSL_KEY_PIN_SUCCESS = 0;
	public const uint32 CERT_CHAIN_POLICY_SSL_KEY_PIN_MITM_WARNING = 1;
	public const uint32 CERT_CHAIN_POLICY_SSL_KEY_PIN_MISMATCH_WARNING = 2;
	public const uint32 CRYPT_STRING_BASE64URI = 13;
	public const uint32 CRYPT_STRING_ENCODEMASK = 255;
	public const uint32 CRYPT_STRING_RESERVED100 = 256;
	public const uint32 CRYPT_STRING_RESERVED200 = 512;
	public const uint32 CRYPT_STRING_PERCENTESCAPE = 134217728;
	public const uint32 CRYPT_STRING_HASHDATA = 268435456;
	public const uint32 CRYPT_STRING_NOCRLF = 1073741824;
	public const uint32 CRYPT_STRING_NOCR = 2147483648;
	public const uint32 PKCS12_IMPORT_SILENT = 64;
	public const uint32 PKCS12_ONLY_CERTIFICATES = 1024;
	public const uint32 PKCS12_ONLY_NOT_ENCRYPTED_CERTIFICATES = 2048;
	public const uint32 PKCS12_VIRTUAL_ISOLATION_KEY = 65536;
	public const uint32 PKCS12_IMPORT_RESERVED_MASK = 4294901760;
	public const uint32 PKCS12_ONLY_CERTIFICATES_PROVIDER_TYPE = 0;
	public const uint32 REPORT_NO_PRIVATE_KEY = 1;
	public const uint32 REPORT_NOT_ABLE_TO_EXPORT_PRIVATE_KEY = 2;
	public const uint32 EXPORT_PRIVATE_KEYS = 4;
	public const uint32 PKCS12_PROTECT_TO_DOMAIN_SIDS = 32;
	public const uint32 PKCS12_EXPORT_SILENT = 64;
	public const uint32 PKCS12_EXPORT_PBES2_PARAMS = 128;
	public const uint32 PKCS12_DISABLE_ENCRYPT_CERTIFICATES = 256;
	public const uint32 PKCS12_ENCRYPT_CERTIFICATES = 512;
	public const uint32 PKCS12_EXPORT_ECC_CURVE_PARAMETERS = 4096;
	public const uint32 PKCS12_EXPORT_ECC_CURVE_OID = 8192;
	public const uint32 PKCS12_EXPORT_RESERVED_MASK = 4294901760;
	public const uint32 CERT_SERVER_OCSP_RESPONSE_OPEN_PARA_READ_FLAG = 1;
	public const uint32 CERT_SERVER_OCSP_RESPONSE_OPEN_PARA_WRITE_FLAG = 2;
	public const uint32 CERT_SERVER_OCSP_RESPONSE_ASYNC_FLAG = 1;
	public const uint32 CERT_SELECT_MAX_PARA = 500;
	public const uint32 CERT_SELECT_BY_ISSUER_DISPLAYNAME = 12;
	public const uint32 CERT_SELECT_BY_FRIENDLYNAME = 13;
	public const uint32 CERT_SELECT_BY_THUMBPRINT = 14;
	public const uint32 CERT_SELECT_ALLOW_EXPIRED = 1;
	public const uint32 CERT_SELECT_TRUSTED_ROOT = 2;
	public const uint32 CERT_SELECT_DISALLOW_SELFSIGNED = 4;
	public const uint32 CERT_SELECT_HAS_PRIVATE_KEY = 8;
	public const uint32 CERT_SELECT_HAS_KEY_FOR_SIGNATURE = 16;
	public const uint32 CERT_SELECT_HAS_KEY_FOR_KEY_EXCHANGE = 32;
	public const uint32 CERT_SELECT_HARDWARE_ONLY = 64;
	public const uint32 CERT_SELECT_ALLOW_DUPLICATES = 128;
	public const uint32 CERT_SELECT_IGNORE_AUTOSELECT = 256;
	public const uint32 TIMESTAMP_FAILURE_BAD_ALG = 0;
	public const uint32 TIMESTAMP_FAILURE_BAD_REQUEST = 2;
	public const uint32 TIMESTAMP_FAILURE_BAD_FORMAT = 5;
	public const uint32 TIMESTAMP_FAILURE_TIME_NOT_AVAILABLE = 14;
	public const uint32 TIMESTAMP_FAILURE_POLICY_NOT_SUPPORTED = 15;
	public const uint32 TIMESTAMP_FAILURE_EXTENSION_NOT_SUPPORTED = 16;
	public const uint32 TIMESTAMP_FAILURE_INFO_NOT_AVAILABLE = 17;
	public const uint32 TIMESTAMP_FAILURE_SYSTEM_FAILURE = 25;
	public const uint32 TIMESTAMP_DONT_HASH_DATA = 1;
	public const uint32 TIMESTAMP_VERIFY_CONTEXT_SIGNATURE = 32;
	public const uint32 TIMESTAMP_NO_AUTH_RETRIEVAL = 131072;
	public const uint32 CRYPT_OBJECT_LOCATOR_SPN_NAME_TYPE = 1;
	public const uint32 CRYPT_OBJECT_LOCATOR_LAST_RESERVED_NAME_TYPE = 32;
	public const uint32 CRYPT_OBJECT_LOCATOR_FIRST_RESERVED_USER_NAME_TYPE = 33;
	public const uint32 CRYPT_OBJECT_LOCATOR_LAST_RESERVED_USER_NAME_TYPE = 65535;
	public const uint32 CERT_FILE_HASH_USE_TYPE = 1;
	public const uint32 CERT_TIMESTAMP_HASH_USE_TYPE = 2;
	public const uint32 RECIPIENTPOLICYV1 = 1;
	public const uint32 RECIPIENTPOLICYV2 = 2;
	public const HRESULT E_ICARD_COMMUNICATION = -1073413888;
	public const HRESULT E_ICARD_DATA_ACCESS = -1073413887;
	public const HRESULT E_ICARD_EXPORT = -1073413886;
	public const HRESULT E_ICARD_IDENTITY = -1073413885;
	public const HRESULT E_ICARD_IMPORT = -1073413884;
	public const HRESULT E_ICARD_ARGUMENT = -1073413883;
	public const HRESULT E_ICARD_REQUEST = -1073413882;
	public const HRESULT E_ICARD_INFORMATIONCARD = -1073413881;
	public const HRESULT E_ICARD_STOREKEY = -1073413880;
	public const HRESULT E_ICARD_LOGOVALIDATION = -1073413879;
	public const HRESULT E_ICARD_PASSWORDVALIDATION = -1073413878;
	public const HRESULT E_ICARD_POLICY = -1073413877;
	public const HRESULT E_ICARD_PROCESSDIED = -1073413876;
	public const HRESULT E_ICARD_SERVICEBUSY = -1073413875;
	public const HRESULT E_ICARD_SERVICE = -1073413874;
	public const HRESULT E_ICARD_SHUTTINGDOWN = -1073413873;
	public const HRESULT E_ICARD_TOKENCREATION = -1073413872;
	public const HRESULT E_ICARD_TRUSTEXCHANGE = -1073413871;
	public const HRESULT E_ICARD_UNTRUSTED = -1073413870;
	public const HRESULT E_ICARD_USERCANCELLED = -1073413869;
	public const HRESULT E_ICARD_STORE_IMPORT = -1073413868;
	public const HRESULT E_ICARD_FAIL = -1073413867;
	public const HRESULT E_ICARD_UI_INITIALIZATION = -1073413862;
	public const HRESULT E_ICARD_REFRESH_REQUIRED = -1073413760;
	public const HRESULT E_ICARD_MISSING_APPLIESTO = -1073413759;
	public const HRESULT E_ICARD_INVALID_PROOF_KEY = -1073413758;
	public const HRESULT E_ICARD_UNKNOWN_REFERENCE = -1073413757;
	public const HRESULT E_ICARD_FAILED_REQUIRED_CLAIMS = -1073413756;
	public const HRESULT AUDIT_CARD_WRITTEN = 1074070016;
	public const HRESULT AUDIT_CARD_DELETE = 1074070017;
	public const HRESULT AUDIT_CARD_IMPORT = 1074070018;
	public const HRESULT AUDIT_STORE_IMPORT = 1074070019;
	public const HRESULT AUDIT_STORE_EXPORT = 1074070020;
	public const HRESULT AUDIT_STORE_DELETE = 1074070021;
	public const HRESULT AUDIT_SERVICE_IDLE_STOP = 1074070022;
	#endregion
	
	#region Typedefs
	public typealias HCRYPTASYNC = int;
	public typealias HCERTCHAINENGINE = int;
	public typealias BCRYPT_ALG_HANDLE = int;
	public typealias BCRYPT_KEY_HANDLE = int;
	#endregion
	
	#region Enums
	public enum BCRYPT_OPERATION : uint32
	{
		CIPHER_OPERATION = 1,
		HASH_OPERATION = 2,
		ASYMMETRIC_ENCRYPTION_OPERATION = 4,
		SECRET_AGREEMENT_OPERATION = 8,
		SIGNATURE_OPERATION = 16,
		RNG_OPERATION = 32,
	}
	public enum NCRYPT_OPERATION : uint32
	{
		CIPHER_OPERATION = 1,
		HASH_OPERATION = 2,
		ASYMMETRIC_ENCRYPTION_OPERATION = 4,
		SECRET_AGREEMENT_OPERATION = 8,
		SIGNATURE_OPERATION = 16,
	}
	[AllowDuplicates]
	public enum CERT_FIND_FLAGS : uint32
	{
		ANY = 0,
		CERT_ID = 1048576,
		CTL_USAGE = 655360,
		ENHKEY_USAGE = 655360,
		EXISTING = 851968,
		HASH = 65536,
		HAS_PRIVATE_KEY = 1376256,
		ISSUER_ATTR = 196612,
		ISSUER_NAME = 131076,
		ISSUER_OF = 786432,
		ISSUER_STR = 524292,
		KEY_IDENTIFIER = 983040,
		KEY_SPEC = 589824,
		MD5_HASH = 262144,
		PROPERTY = 327680,
		PUBLIC_KEY = 393216,
		SHA1_HASH = 65536,
		SIGNATURE_HASH = 917504,
		SUBJECT_ATTR = 196615,
		SUBJECT_CERT = 720896,
		SUBJECT_NAME = 131079,
		SUBJECT_STR = 524295,
		CROSS_CERT_DIST_POINTS = 1114112,
		PUBKEY_MD5_HASH = 1179648,
		SUBJECT_STR_A = 458759,
		SUBJECT_STR_W = 524295,
		ISSUER_STR_A = 458756,
		ISSUER_STR_W = 524292,
		SUBJECT_INFO_ACCESS = 1245184,
		HASH_STR = 1310720,
		OPTIONAL_ENHKEY_USAGE_FLAG = 1,
		EXT_ONLY_ENHKEY_USAGE_FLAG = 2,
		PROP_ONLY_ENHKEY_USAGE_FLAG = 4,
		NO_ENHKEY_USAGE_FLAG = 8,
		OR_ENHKEY_USAGE_FLAG = 16,
		VALID_ENHKEY_USAGE_FLAG = 32,
		OPTIONAL_CTL_USAGE_FLAG = 1,
		EXT_ONLY_CTL_USAGE_FLAG = 2,
		PROP_ONLY_CTL_USAGE_FLAG = 4,
		NO_CTL_USAGE_FLAG = 8,
		OR_CTL_USAGE_FLAG = 16,
		VALID_CTL_USAGE_FLAG = 32,
	}
	public enum CERT_QUERY_OBJECT_TYPE : uint32
	{
		FILE = 1,
		BLOB = 2,
	}
	public enum CERT_QUERY_CONTENT_TYPE : uint32
	{
		CERT = 1,
		CTL = 2,
		CRL = 3,
		SERIALIZED_STORE = 4,
		SERIALIZED_CERT = 5,
		SERIALIZED_CTL = 6,
		SERIALIZED_CRL = 7,
		PKCS7_SIGNED = 8,
		PKCS7_UNSIGNED = 9,
		PKCS7_SIGNED_EMBED = 10,
		PKCS10 = 11,
		PFX = 12,
		CERT_PAIR = 13,
		PFX_AND_LOAD = 14,
	}
	public enum CERT_QUERY_CONTENT_TYPE_FLAGS : uint32
	{
		CERT = 2,
		CTL = 4,
		CRL = 8,
		SERIALIZED_STORE = 16,
		SERIALIZED_CERT = 32,
		SERIALIZED_CTL = 64,
		SERIALIZED_CRL = 128,
		PKCS7_SIGNED = 256,
		PKCS7_UNSIGNED = 512,
		PKCS7_SIGNED_EMBED = 1024,
		PKCS10 = 2048,
		PFX = 4096,
		CERT_PAIR = 8192,
		PFX_AND_LOAD = 16384,
		ALL = 16382,
		ALL_ISSUER_CERT = 818,
	}
	public enum CERT_QUERY_FORMAT_TYPE : uint32
	{
		BINARY = 1,
		BASE64_ENCODED = 2,
		ASN_ASCII_HEX_ENCODED = 3,
	}
	public enum CERT_QUERY_FORMAT_TYPE_FLAGS : uint32
	{
		BINARY = 2,
		BASE64_ENCODED = 4,
		ASN_ASCII_HEX_ENCODED = 8,
		ALL = 14,
	}
	public enum CERT_QUERY_ENCODING_TYPE : uint32
	{
		X509_ASN_ENCODING = 1,
		PKCS_7_ASN_ENCODING = 65536,
	}
	[AllowDuplicates]
	public enum CERT_RDN_ATTR_VALUE_TYPE : uint32
	{
		ANY_TYPE = 0,
		NUMERIC_STRING = 3,
		PRINTABLE_STRING = 4,
		T61_STRING = 5,
		VIDEOTEX_STRING = 6,
		IA5_STRING = 7,
		GRAPHIC_STRING = 8,
		ISO646_STRING = 9,
		GENERAL_STRING = 10,
		INT4_STRING = 11,
		UNICODE_STRING = 12,
		BMP_STRING = 12,
		ENCODED_BLOB = 1,
		OCTET_STRING = 2,
		TELETEX_STRING = 5,
		UNIVERSAL_STRING = 11,
		UTF8_STRING = 13,
		VISIBLE_STRING = 9,
	}
	public enum CERT_STRING_TYPE : uint32
	{
		SIMPLE_NAME_STR = 1,
		OID_NAME_STR = 2,
		X500_NAME_STR = 3,
	}
	public enum BCRYPT_TABLE : uint32
	{
		LOCAL = 1,
		DOMAIN = 2,
	}
	public enum CERT_KEY_SPEC : uint32
	{
		AT_KEYEXCHANGE = 1,
		AT_SIGNATURE = 2,
		CERT_NCRYPT_KEY_SPEC = 4294967295,
	}
	public enum BCRYPT_INTERFACE : uint32
	{
		BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE = 3,
		BCRYPT_CIPHER_INTERFACE = 1,
		BCRYPT_HASH_INTERFACE = 2,
		BCRYPT_RNG_INTERFACE = 6,
		BCRYPT_SECRET_AGREEMENT_INTERFACE = 4,
		BCRYPT_SIGNATURE_INTERFACE = 5,
		NCRYPT_KEY_STORAGE_INTERFACE = 65537,
		NCRYPT_SCHANNEL_INTERFACE = 65538,
		NCRYPT_SCHANNEL_SIGNATURE_INTERFACE = 65539,
	}
	[AllowDuplicates]
	public enum NCRYPT_FLAGS : uint32
	{
		BCRYPT_PAD_NONE = 1,
		BCRYPT_PAD_OAEP = 4,
		BCRYPT_PAD_PKCS1 = 2,
		BCRYPT_PAD_PSS = 8,
		NCRYPT_SILENT_FLAG = 64,
		NCRYPT_NO_PADDING_FLAG = 1,
		NCRYPT_PAD_OAEP_FLAG = 4,
		NCRYPT_PAD_PKCS1_FLAG = 2,
		NCRYPT_REGISTER_NOTIFY_FLAG = 1,
		NCRYPT_UNREGISTER_NOTIFY_FLAG = 2,
		NCRYPT_MACHINE_KEY_FLAG = 32,
		NCRYPT_UNPROTECT_NO_DECRYPT = 1,
		NCRYPT_OVERWRITE_KEY_FLAG = 128,
		NCRYPT_NO_KEY_VALIDATION = 8,
		NCRYPT_WRITE_KEY_TO_LEGACY_STORE_FLAG = 512,
		NCRYPT_PAD_PSS_FLAG = 8,
		NCRYPT_PERSIST_FLAG = 2147483648,
		NCRYPT_PERSIST_ONLY_FLAG = 1073741824,
	}
	public enum CRYPT_STRING : uint32
	{
		BASE64HEADER = 0,
		BASE64 = 1,
		BINARY = 2,
		BASE64REQUESTHEADER = 3,
		HEX = 4,
		HEXASCII = 5,
		BASE64X509CRLHEADER = 9,
		HEXADDR = 10,
		HEXASCIIADDR = 11,
		HEXRAW = 12,
		STRICT = 536870912,
		BASE64_ANY = 6,
		ANY = 7,
		HEX_ANY = 8,
	}
	public enum CRYPT_IMPORT_PUBLIC_KEY_FLAGS : uint32
	{
		SIGN_KEY_FLAG = 2147483648,
		ENCRYPT_KEY_FLAG = 1073741824,
	}
	public enum CRYPT_XML_FLAGS : uint32
	{
		FLAG_DISABLE_EXTENSIONS = 268435456,
		FLAG_NO_SERIALIZE = 2147483648,
		SIGN_ADD_KEYVALUE = 1,
	}
	public enum CRYPT_ENCODE_OBJECT_FLAGS : uint32
	{
		ENCODE_ALLOC_FLAG = 32768,
		ENCODE_ENABLE_PUNYCODE_FLAG = 131072,
		UNICODE_NAME_ENCODE_DISABLE_CHECK_TYPE_FLAG = 1073741824,
		UNICODE_NAME_ENCODE_ENABLE_T61_UNICODE_FLAG = 2147483648,
		UNICODE_NAME_ENCODE_ENABLE_UTF8_UNICODE_FLAG = 536870912,
	}
	public enum CRYPT_OBJECT_LOCATOR_RELEASE_REASON : uint32
	{
		SYSTEM_SHUTDOWN = 1,
		SERVICE_STOP = 2,
		PROCESS_EXIT = 3,
		DLL_UNLOAD = 4,
	}
	public enum CRYPT_ACQUIRE_FLAGS : uint32
	{
		CACHE_FLAG = 1,
		COMPARE_KEY_FLAG = 4,
		NO_HEALING = 8,
		SILENT_FLAG = 64,
		USE_PROV_INFO_FLAG = 2,
	}
	public enum CRYPT_GET_URL_FLAGS : uint32
	{
		PROPERTY = 1,
		EXTENSION = 2,
		UNAUTH_ATTRIBUTE = 4,
		AUTH_ATTRIBUTE = 8,
	}
	public enum CERT_STORE_SAVE_AS : uint32
	{
		PKCS7 = 2,
		STORE = 1,
	}
	public enum BCRYPT_QUERY_PROVIDER_MODE : uint32
	{
		ANY = 4,
		UM = 1,
		KM = 2,
		MM = 3,
	}
	public enum CERT_FIND_CHAIN_IN_STORE_FLAGS : uint32
	{
		COMPARE_KEY_FLAG = 1,
		COMPLEX_CHAIN_FLAG = 2,
		CACHE_ONLY_FLAG = 32768,
		CACHE_ONLY_URL_FLAG = 4,
		LOCAL_MACHINE_FLAG = 8,
		NO_KEY_FLAG = 16384,
	}
	[AllowDuplicates]
	public enum CERT_CONTROL_STORE_FLAGS : uint32
	{
		COMMIT_FORCE_FLAG = 1,
		COMMIT_CLEAR_FLAG = 2,
		INHIBIT_DUPLICATE_HANDLE_FLAG = 1,
	}
	public enum BCRYPT_OPEN_ALGORITHM_PROVIDER_FLAGS : uint32
	{
		ALG_HANDLE_HMAC_FLAG = 8,
		PROV_DISPATCH = 1,
		HASH_REUSABLE_FLAG = 32,
	}
	[AllowDuplicates]
	public enum CERT_STORE_SAVE_TO : uint32
	{
		FILE = 1,
		FILENAME = 4,
		FILENAME_A = 3,
		FILENAME_W = 4,
		MEMORY = 2,
	}
	public enum CRYPT_SET_PROV_PARAM_ID : uint32
	{
		CLIENT_HWND = 1,
		DELETEKEY = 24,
		KEYEXCHANGE_ALG = 14,
		KEYEXCHANGE_PIN = 32,
		KEYEXCHANGE_KEYSIZE = 12,
		KEYSET_SEC_DESCR = 8,
		PIN_PROMPT_STRING = 44,
		ROOT_CERTSTORE = 46,
		SIGNATURE_ALG = 15,
		SIGNATURE_PIN = 33,
		SIGNATURE_KEYSIZE = 13,
		UI_PROMPT = 21,
		USE_HARDWARE_RNG = 38,
		USER_CERTSTORE = 42,
		SECURE_KEYEXCHANGE_PIN = 47,
		SECURE_SIGNATURE_PIN = 48,
		SMARTCARD_READER = 43,
	}
	public enum CRYPT_KEY_PARAM_ID : uint32
	{
		ALGID = 7,
		CERTIFICATE = 26,
		PERMISSIONS = 6,
		SALT = 2,
		SALT_EX = 10,
		BLOCKLEN = 8,
		GET_USE_COUNT = 42,
		KEYLEN = 9,
	}
	[AllowDuplicates]
	public enum CRYPT_KEY_FLAGS : uint32
	{
		CRYPT_EXPORTABLE = 1,
		CRYPT_USER_PROTECTED = 2,
		CRYPT_ARCHIVABLE = 16384,
		CRYPT_CREATE_IV = 512,
		CRYPT_CREATE_SALT = 4,
		CRYPT_DATA_KEY = 2048,
		CRYPT_FORCE_KEY_PROTECTION_HIGH = 32768,
		CRYPT_KEK = 1024,
		CRYPT_INITIATOR = 64,
		CRYPT_NO_SALT = 16,
		CRYPT_ONLINE = 128,
		CRYPT_PREGEN = 64,
		CRYPT_RECIPIENT = 16,
		CRYPT_SF = 256,
		CRYPT_SGCKEY = 8192,
		CRYPT_VOLATILE = 4096,
		CRYPT_MACHINE_KEYSET = 32,
		CRYPT_USER_KEYSET = 4096,
		PKCS12_PREFER_CNG_KSP = 256,
		PKCS12_ALWAYS_CNG_KSP = 512,
		PKCS12_ALLOW_OVERWRITE_KEY = 16384,
		PKCS12_NO_PERSIST_KEY = 32768,
		PKCS12_INCLUDE_EXTENDED_PROPERTIES = 16,
		CRYPT_OAEP = 64,
		CRYPT_BLOB_VER3 = 128,
		CRYPT_DESTROYKEY = 4,
		CRYPT_SSL2_FALLBACK = 2,
		CRYPT_Y_ONLY = 1,
		CRYPT_IPSEC_HMAC_KEY = 256,
		CERT_SET_KEY_PROV_HANDLE_PROP_ID = 1,
		CERT_SET_KEY_CONTEXT_PROP_ID = 1,
	}
	public enum CRYPT_MSG_TYPE : uint32
	{
		DATA = 1,
		SIGNED = 2,
		ENVELOPED = 3,
		SIGNED_AND_ENVELOPED = 4,
		HASHED = 5,
	}
	public enum CERT_OPEN_STORE_FLAGS : uint32
	{
		BACKUP_RESTORE_FLAG = 2048,
		CREATE_NEW_FLAG = 8192,
		DEFER_CLOSE_UNTIL_LAST_FREE_FLAG = 4,
		DELETE_FLAG = 16,
		ENUM_ARCHIVED_FLAG = 512,
		MAXIMUM_ALLOWED_FLAG = 4096,
		NO_CRYPT_RELEASE_FLAG = 1,
		OPEN_EXISTING_FLAG = 16384,
		READONLY_FLAG = 32768,
		SET_LOCALIZED_NAME_FLAG = 2,
		SHARE_CONTEXT_FLAG = 128,
		UPDATE_KEYID_FLAG = 1024,
	}
	public enum CRYPT_DEFAULT_CONTEXT_FLAGS : uint32
	{
		AUTO_RELEASE_FLAG = 1,
		PROCESS_FLAG = 2,
	}
	public enum CRYPT_VERIFY_CERT_FLAGS : uint32
	{
		DISABLE_MD2_MD4_FLAG = 1,
		SET_STRONG_PROPERTIES_FLAG = 2,
		RETURN_STRONG_PROPERTIES_FLAG = 4,
	}
	public enum CRYPT_SET_HASH_PARAM : uint32
	{
		HMAC_INFO = 5,
		HASHVAL = 2,
	}
	public enum CERT_SYSTEM_STORE_FLAGS : uint32
	{
		LOCATION_MASK = 16711680,
		RELOCATE_FLAG = 2147483648,
	}
	public enum CERT_CREATE_SELFSIGN_FLAGS : uint32
	{
		KEY_INFO = 2,
		SIGN = 1,
	}
	public enum CRYPT_DEFAULT_CONTEXT_TYPE : uint32
	{
		CERT_SIGN_OID = 1,
		MULTI_CERT_SIGN_OID = 2,
	}
	public enum BCRYPT_RESOLVE_PROVIDERS_FLAGS : uint32
	{
		FUNCTIONS = 1,
		PROVIDERS = 2,
	}
	[AllowDuplicates]
	public enum CERT_FIND_TYPE : uint32
	{
		ANY = 0,
		SHA1_HASH = 1,
		MD5_HASH = 2,
		USAGE = 3,
		SAME_USAGE_FLAG = 1,
		EXISTING = 5,
		SUBJECT = 4,
	}
	public enum CRYPT_FIND_FLAGS : uint32
	{
		USER_KEYSET_FLAG = 1,
		MACHINE_KEYSET_FLAG = 2,
		SILENT_KEYSET_FLAG = 64,
	}
	public enum CRYPT_IMAGE_REF_FLAGS : uint32
	{
		MIN_DEPENDENCIES = 1,
		PROCESS_ISOLATE = 65536,
	}
	public enum CERT_REVOCATION_STATUS_REASON : uint32
	{
		UNSPECIFIED = 0,
		KEY_COMPROMISE = 1,
		CA_COMPROMISE = 2,
		AFFILIATION_CHANGED = 3,
		SUPERSEDED = 4,
		CESSATION_OF_OPERATION = 5,
		CERTIFICATE_HOLD = 6,
		REMOVE_FROM_CRL = 8,
	}
	public enum CERT_ROOT_PROGRAM_FLAGS : uint32
	{
		LSC = 64,
		ORG = 128,
		SUBJECT_LOGO = 32,
	}
	public enum CRYPT_XML_KEY_VALUE_TYPE : uint32
	{
		DSA = 1,
		RSA = 2,
		ECDSA = 3,
		CUSTOM = 4,
	}
	public enum CERT_LOGOTYPE_CHOICE : uint32
	{
		NO_IMAGE_RESOLUTION_CHOICE = 0,
		BITS_IMAGE_RESOLUTION_CHOICE = 1,
		TABLE_SIZE_IMAGE_RESOLUTION_CHOICE = 2,
	}
	public enum CMSG_KEY_AGREE_OPTION : uint32
	{
		EPHEMERAL_KEY_CHOICE = 1,
		STATIC_KEY_CHOICE = 2,
	}
	public enum CERT_LOGOTYPE_OPTION : uint32
	{
		DIRECT_INFO_CHOICE = 1,
		INDIRECT_INFO_CHOICE = 2,
	}
	public enum CERT_STORE_PROV_FLAGS : uint32
	{
		EXTERNAL_FLAG = 1,
		DELETED_FLAG = 2,
		NO_PERSIST_FLAG = 4,
		SYSTEM_STORE_FLAG = 8,
		LM_SYSTEM_STORE_FLAG = 16,
	}
	public enum CMSG_KEY_AGREE_ORIGINATOR : uint32
	{
		CERT = 1,
		PUBLIC_KEY = 2,
	}
	public enum CRYPT_CONTEXT_CONFIG_FLAGS : uint32
	{
		EXCLUSIVE = 1,
		OVERRIDE = 65536,
	}
	public enum BCRYPT_DSA_MAGIC : uint32
	{
		PUBLIC_MAGIC = 1112560452,
		PRIVATE_MAGIC = 1448104772,
	}
	public enum CRYPT_XML_X509DATA_TYPE : uint32
	{
		ISSUER_SERIAL = 1,
		SKI = 2,
		SUBJECT_NAME = 3,
		CERTIFICATE = 4,
		CRL = 5,
		CUSTOM = 6,
	}
	public enum CERT_BIOMETRIC_DATA_TYPE : uint32
	{
		PREDEFINED_DATA_CHOICE = 1,
		OID_DATA_CHOICE = 2,
	}
	public enum CERT_CHAIN_POLICY_FLAGS : uint32
	{
		IGNORE_NOT_TIME_VALID_FLAG = 1,
		IGNORE_CTL_NOT_TIME_VALID_FLAG = 2,
		IGNORE_NOT_TIME_NESTED_FLAG = 4,
		IGNORE_ALL_NOT_TIME_VALID_FLAGS = 7,
		IGNORE_INVALID_BASIC_CONSTRAINTS_FLAG = 8,
		ALLOW_UNKNOWN_CA_FLAG = 16,
		IGNORE_WRONG_USAGE_FLAG = 32,
		IGNORE_INVALID_NAME_FLAG = 64,
		IGNORE_INVALID_POLICY_FLAG = 128,
		IGNORE_END_REV_UNKNOWN_FLAG = 256,
		IGNORE_CTL_SIGNER_REV_UNKNOWN_FLAG = 512,
		IGNORE_CA_REV_UNKNOWN_FLAG = 1024,
		IGNORE_ROOT_REV_UNKNOWN_FLAG = 2048,
		IGNORE_ALL_REV_UNKNOWN_FLAGS = 3840,
		ALLOW_TESTROOT_FLAG = 32768,
		TRUST_TESTROOT_FLAG = 16384,
		IGNORE_NOT_SUPPORTED_CRITICAL_EXT_FLAG = 8192,
		IGNORE_PEER_TRUST_FLAG = 4096,
	}
	public enum CERT_STRONG_SIGN_FLAGS : uint32
	{
		CRL_CHECK = 1,
		OCSP_CHECK = 2,
	}
	public enum CERT_LOGOTYPE_IMAGE_INFO_TYPE : uint32
	{
		GRAY_SCALE_IMAGE_INFO_CHOICE = 1,
		COLOR_IMAGE_INFO_CHOICE = 2,
	}
	public enum CRYPT_XML_STATUS_INFO_STATUS : uint32
	{
		INTERNAL_REFERENCE = 1,
		KEY_AVAILABLE = 2,
		DIGESTING = 4,
		DIGEST_VALID = 8,
		SIGNATURE_VALID = 65536,
		OPENED_TO_ENCODE = 2147483648,
	}
	public enum CRYPT_XML_TRANSFORM_FLAGS : uint32
	{
		ON_STREAM = 1,
		ON_NODESET = 2,
		URI_QUERY_STRING = 3,
	}
	public enum CRYPT_XML_GROUP_ID : uint32
	{
		HASH_________ = 1,
		SIGN_________ = 2,
	}
	public enum CERT_SELECT_CRITERIA_TYPE : uint32
	{
		ENHKEY_USAGE = 1,
		KEY_USAGE = 2,
		POLICY_OID = 3,
		PROV_NAME = 4,
		EXTENSION = 5,
		SUBJECT_HOST_NAME = 6,
		ISSUER_ATTR = 7,
		SUBJECT_ATTR = 8,
		ISSUER_NAME = 9,
		PUBLIC_KEY = 10,
		TLS_SIGNATURES = 11,
	}
	public enum BCRYPT_RSAKEY_BLOB_MAGIC : uint32
	{
		RSAPUBLIC_MAGIC = 826364754,
		RSAPRIVATE_MAGIC = 843141970,
		RSAFULLPRIVATE_MAGIC = 859919186,
	}
	public enum CRYPT_XML_KEYINFO_TYPE : uint32
	{
		KEYNAME = 1,
		KEYVALUE = 2,
		RETRIEVAL = 3,
		X509DATA = 4,
		CUSTOM = 5,
	}
	public enum CRYPT_TIMESTAMP_VERSION : uint32
	{
		TIMESTAMP_VERSION = 1,
	}
	public enum CERT_ID_OPTION : uint32
	{
		ISSUER_SERIAL_NUMBER = 1,
		KEY_IDENTIFIER = 2,
		SHA1_HASH = 3,
	}
	public enum HTTPSPOLICY_CALLBACK_DATA_AUTH_TYPE : uint32
	{
		CLIENT = 1,
		SERVER = 2,
	}
	public enum BCRYPT_DH_KEY_BLOB_MAGIC : uint32
	{
		PUBLIC_MAGIC = 1112557636,
		PRIVATE_MAGIC = 1448101956,
	}
	public enum CRYPT_XML_STATUS_ERROR_STATUS : uint32
	{
		NOT_RESOLVED = 1,
		DIGEST_INVALID = 2,
		NOT_SUPPORTED_ALGORITHM = 5,
		NOT_SUPPORTED_TRANSFORM = 8,
		SIGNATURE_INVALID = 65536,
		KEYINFO_NOT_PARSED = 131072,
	}
	public enum CRYPT_TIMESTAMP_RESPONSE_STATUS : uint32
	{
		GRANTED = 0,
		GRANTED_WITH_MODS = 1,
		REJECTED = 2,
		WAITING = 3,
		REVOCATION_WARNING = 4,
		REVOKED = 5,
	}
	public enum NCRYPT_ALGORITHM_NAME_CLASS : uint32
	{
		ASYMMETRIC_ENCRYPTION_INTERFACE = 3,
		SECRET_AGREEMENT_INTERFACE = 4,
		SIGNATURE_INTERFACE = 5,
	}
	public enum ECC_CURVE_TYPE_ENUM : int32
	{
		SHORT_WEIERSTRASS_CURVE = 1,
		TWISTED_EDWARDS_CURVE = 2,
		MONTGOMERY_CURVE = 3,
	}
	public enum ECC_CURVE_ALG_ID_ENUM : int32
	{
		BCRYPT_NO_CURVE_GENERATION_ALG_ID = 0,
	}
	public enum HASHALGORITHM_ENUM : int32
	{
		SHA1 = 0,
		SHA256 = 1,
		SHA512 = 2,
	}
	public enum DSAFIPSVERSION_ENUM : int32
	{
		_2 = 0,
		_3 = 1,
	}
	public enum BCRYPT_HASH_OPERATION_TYPE : int32
	{
		HASH_DATA = 1,
		FINISH_HASH = 2,
	}
	public enum BCRYPT_MULTI_OPERATION_TYPE : int32
	{
		OPERATION_TYPE_HASH = 1,
	}
	public enum CertKeyType : uint32
	{
		Other = 0,
		VirtualSmartCard = 1,
		PhysicalSmartCard = 2,
		Passport = 3,
		PassportRemote = 4,
		PassportSmartCard = 5,
		Hardware = 6,
		Software = 7,
		SelfSigned = 8,
	}
	public enum CRYPT_XML_CHARSET : int32
	{
		AUTO = 0,
		UTF8 = 1,
		UTF16LE = 2,
		UTF16BE = 3,
	}
	public enum CRYPT_XML_PROPERTY_ID : int32
	{
		MAX_HEAP_SIZE = 1,
		SIGNATURE_LOCATION = 2,
		MAX_SIGNATURES = 3,
		DOC_DECLARATION = 4,
		XML_OUTPUT_CHARSET = 5,
	}
	public enum CRYPT_XML_KEYINFO_SPEC : int32
	{
		NONE = 0,
		ENCODED = 1,
		PARAM = 2,
	}
	public enum HandleType : int32
	{
		Asymmetric = 1,
		Symmetric = 2,
		Transform = 3,
		Hash = 4,
	}
	public enum PaddingMode : int32
	{
		None = 1,
		PKCS7 = 2,
		Zeros = 3,
		ANSIX923 = 4,
		ISO10126 = 5,
	}
	public enum Direction : int32
	{
		Encrypt = 1,
		Decrypt = 2,
	}
	public enum CASetupProperty : int32
	{
		INVALID = -1,
		CATYPE = 0,
		CAKEYINFORMATION = 1,
		INTERACTIVE = 2,
		CANAME = 3,
		CADSSUFFIX = 4,
		VALIDITYPERIOD = 5,
		VALIDITYPERIODUNIT = 6,
		EXPIRATIONDATE = 7,
		PRESERVEDATABASE = 8,
		DATABASEDIRECTORY = 9,
		LOGDIRECTORY = 10,
		SHAREDFOLDER = 11,
		PARENTCAMACHINE = 12,
		PARENTCANAME = 13,
		REQUESTFILE = 14,
		WEBCAMACHINE = 15,
		WEBCANAME = 16,
	}
	public enum MSCEPSetupProperty : int32
	{
		USELOCALSYSTEM = 0,
		USECHALLENGE = 1,
		RANAME_CN = 2,
		RANAME_EMAIL = 3,
		RANAME_COMPANY = 4,
		RANAME_DEPT = 5,
		RANAME_CITY = 6,
		RANAME_STATE = 7,
		RANAME_COUNTRY = 8,
		SIGNINGKEYINFORMATION = 9,
		EXCHANGEKEYINFORMATION = 10,
		CAINFORMATION = 11,
		MSCEPURL = 12,
		CHALLENGEURL = 13,
	}
	public enum CESSetupProperty : int32
	{
		USE_IISAPPPOOLIDENTITY = 0,
		CACONFIG = 1,
		AUTHENTICATION = 2,
		SSLCERTHASH = 3,
		URL = 4,
		RENEWALONLY = 5,
		ALLOW_KEYBASED_RENEWAL = 6,
	}
	public enum CEPSetupProperty : int32
	{
		AUTHENTICATION = 0,
		SSLCERTHASH = 1,
		URL = 2,
		KEYBASED_RENEWAL = 3,
	}
	#endregion
	
	#region Function pointers
	public function void* PFN_NCRYPT_ALLOC(uint cbSize);
	public function void PFN_NCRYPT_FREE(void* pv);
	public function BOOL PCRYPT_DECRYPT_PRIVATE_KEY_FUNC(CRYPT_ALGORITHM_IDENTIFIER Algorithm, CRYPTOAPI_BLOB EncryptedPrivateKey, uint8* pbClearTextKey, out uint32 pcbClearTextKey, void* pVoidDecryptFunc);
	public function BOOL PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC(out CRYPT_ALGORITHM_IDENTIFIER pAlgorithm, ref CRYPTOAPI_BLOB pClearTextPrivateKey, uint8* pbEncryptedKey, out uint32 pcbEncryptedKey, void* pVoidEncryptFunc);
	public function BOOL PCRYPT_RESOLVE_HCRYPTPROV_FUNC(out CRYPT_PRIVATE_KEY_INFO pPrivateKeyInfo, out uint phCryptProv, void* pVoidResolveFunc);
	public function void* PFN_CRYPT_ALLOC(uint cbSize);
	public function void PFN_CRYPT_FREE(void* pv);
	public function BOOL PFN_CRYPT_ENUM_OID_FUNC(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID, uint32 cValue, uint32* rgdwValueType, PWSTR* rgpwszValueName, uint8** rgpbValueData, uint32* rgcbValueData, void* pvArg);
	public function BOOL PFN_CRYPT_ENUM_OID_INFO(ref CRYPT_OID_INFO pInfo, void* pvArg);
	public function BOOL PFN_CMSG_STREAM_OUTPUT(void* pvArg, uint8* pbData, uint32 cbData, BOOL fFinal);
	public function void* PFN_CMSG_ALLOC(uint cb);
	public function void PFN_CMSG_FREE(void* pv);
	public function BOOL PFN_CMSG_GEN_ENCRYPT_KEY(out uint phCryptProv, ref CRYPT_ALGORITHM_IDENTIFIER paiEncrypt, void* pvEncryptAuxInfo, ref CERT_PUBLIC_KEY_INFO pPublicKeyInfo, PFN_CMSG_ALLOC pfnAlloc, out uint phEncryptKey, out uint8* ppbEncryptParameters, out uint32 pcbEncryptParameters);
	public function BOOL PFN_CMSG_EXPORT_ENCRYPT_KEY(uint hCryptProv, uint hEncryptKey, ref CERT_PUBLIC_KEY_INFO pPublicKeyInfo, uint8* pbData, out uint32 pcbData);
	public function BOOL PFN_CMSG_IMPORT_ENCRYPT_KEY(uint hCryptProv, uint32 dwKeySpec, ref CRYPT_ALGORITHM_IDENTIFIER paiEncrypt, ref CRYPT_ALGORITHM_IDENTIFIER paiPubKey, ref uint8 pbEncodedKey, uint32 cbEncodedKey, out uint phEncryptKey);
	public function BOOL PFN_CMSG_GEN_CONTENT_ENCRYPT_KEY(out CMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_EXPORT_KEY_TRANS(ref CMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo, ref CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO pKeyTransEncodeInfo, out CMSG_KEY_TRANS_ENCRYPT_INFO pKeyTransEncryptInfo, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_EXPORT_KEY_AGREE(ref CMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo, ref CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO pKeyAgreeEncodeInfo, out CMSG_KEY_AGREE_ENCRYPT_INFO pKeyAgreeEncryptInfo, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_EXPORT_MAIL_LIST(ref CMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo, ref CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO pMailListEncodeInfo, out CMSG_MAIL_LIST_ENCRYPT_INFO pMailListEncryptInfo, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_IMPORT_KEY_TRANS(ref CRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm, ref CMSG_CTRL_KEY_TRANS_DECRYPT_PARA pKeyTransDecryptPara, uint32 dwFlags, void* pvReserved, out uint phContentEncryptKey);
	public function BOOL PFN_CMSG_IMPORT_KEY_AGREE(ref CRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm, ref CMSG_CTRL_KEY_AGREE_DECRYPT_PARA pKeyAgreeDecryptPara, uint32 dwFlags, void* pvReserved, out uint phContentEncryptKey);
	public function BOOL PFN_CMSG_IMPORT_MAIL_LIST(ref CRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm, ref CMSG_CTRL_MAIL_LIST_DECRYPT_PARA pMailListDecryptPara, uint32 dwFlags, void* pvReserved, out uint phContentEncryptKey);
	public function BOOL PFN_CMSG_CNG_IMPORT_KEY_TRANS(out CMSG_CNG_CONTENT_DECRYPT_INFO pCNGContentDecryptInfo, ref CMSG_CTRL_KEY_TRANS_DECRYPT_PARA pKeyTransDecryptPara, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_CNG_IMPORT_KEY_AGREE(out CMSG_CNG_CONTENT_DECRYPT_INFO pCNGContentDecryptInfo, ref CMSG_CTRL_KEY_AGREE_DECRYPT_PARA pKeyAgreeDecryptPara, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CMSG_CNG_IMPORT_CONTENT_ENCRYPT_KEY(out CMSG_CNG_CONTENT_DECRYPT_INFO pCNGContentDecryptInfo, uint32 dwFlags, void* pvReserved);
	public function BOOL PFN_CERT_DLL_OPEN_STORE_PROV_FUNC(PSTR lpszStoreProvider, CERT_QUERY_ENCODING_TYPE dwEncodingType, uint hCryptProv, CERT_OPEN_STORE_FLAGS dwFlags, void* pvPara, void* hCertStore, out CERT_STORE_PROV_INFO pStoreProvInfo);
	public function void PFN_CERT_STORE_PROV_CLOSE(void* hStoreProv, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_READ_CERT(void* hStoreProv, in CERT_CONTEXT pStoreCertContext, uint32 dwFlags, out CERT_CONTEXT* ppProvCertContext);
	public function BOOL PFN_CERT_STORE_PROV_WRITE_CERT(void* hStoreProv, in CERT_CONTEXT pCertContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_DELETE_CERT(void* hStoreProv, in CERT_CONTEXT pCertContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_SET_CERT_PROPERTY(void* hStoreProv, in CERT_CONTEXT pCertContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	public function BOOL PFN_CERT_STORE_PROV_READ_CRL(void* hStoreProv, ref CRL_CONTEXT pStoreCrlContext, uint32 dwFlags, out CRL_CONTEXT* ppProvCrlContext);
	public function BOOL PFN_CERT_STORE_PROV_WRITE_CRL(void* hStoreProv, ref CRL_CONTEXT pCrlContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_DELETE_CRL(void* hStoreProv, ref CRL_CONTEXT pCrlContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_SET_CRL_PROPERTY(void* hStoreProv, ref CRL_CONTEXT pCrlContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	public function BOOL PFN_CERT_STORE_PROV_READ_CTL(void* hStoreProv, ref CTL_CONTEXT pStoreCtlContext, uint32 dwFlags, out CTL_CONTEXT* ppProvCtlContext);
	public function BOOL PFN_CERT_STORE_PROV_WRITE_CTL(void* hStoreProv, ref CTL_CONTEXT pCtlContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_DELETE_CTL(void* hStoreProv, ref CTL_CONTEXT pCtlContext, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_SET_CTL_PROPERTY(void* hStoreProv, ref CTL_CONTEXT pCtlContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	public function BOOL PFN_CERT_STORE_PROV_CONTROL(void* hStoreProv, uint32 dwFlags, uint32 dwCtrlType, void* pvCtrlPara);
	public function BOOL PFN_CERT_STORE_PROV_FIND_CERT(void* hStoreProv, ref CERT_STORE_PROV_FIND_INFO pFindInfo, in CERT_CONTEXT pPrevCertContext, uint32 dwFlags, void** ppvStoreProvFindInfo, out CERT_CONTEXT* ppProvCertContext);
	public function BOOL PFN_CERT_STORE_PROV_FREE_FIND_CERT(void* hStoreProv, in CERT_CONTEXT pCertContext, void* pvStoreProvFindInfo, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_GET_CERT_PROPERTY(void* hStoreProv, in CERT_CONTEXT pCertContext, uint32 dwPropId, uint32 dwFlags, void* pvData, out uint32 pcbData);
	public function BOOL PFN_CERT_STORE_PROV_FIND_CRL(void* hStoreProv, ref CERT_STORE_PROV_FIND_INFO pFindInfo, ref CRL_CONTEXT pPrevCrlContext, uint32 dwFlags, void** ppvStoreProvFindInfo, out CRL_CONTEXT* ppProvCrlContext);
	public function BOOL PFN_CERT_STORE_PROV_FREE_FIND_CRL(void* hStoreProv, ref CRL_CONTEXT pCrlContext, void* pvStoreProvFindInfo, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_GET_CRL_PROPERTY(void* hStoreProv, ref CRL_CONTEXT pCrlContext, uint32 dwPropId, uint32 dwFlags, void* pvData, out uint32 pcbData);
	public function BOOL PFN_CERT_STORE_PROV_FIND_CTL(void* hStoreProv, ref CERT_STORE_PROV_FIND_INFO pFindInfo, ref CTL_CONTEXT pPrevCtlContext, uint32 dwFlags, void** ppvStoreProvFindInfo, out CTL_CONTEXT* ppProvCtlContext);
	public function BOOL PFN_CERT_STORE_PROV_FREE_FIND_CTL(void* hStoreProv, ref CTL_CONTEXT pCtlContext, void* pvStoreProvFindInfo, uint32 dwFlags);
	public function BOOL PFN_CERT_STORE_PROV_GET_CTL_PROPERTY(void* hStoreProv, ref CTL_CONTEXT pCtlContext, uint32 dwPropId, uint32 dwFlags, void* pvData, out uint32 pcbData);
	public function BOOL PFN_CERT_CREATE_CONTEXT_SORT_FUNC(uint32 cbTotalEncoded, uint32 cbRemainEncoded, uint32 cEntry, void* pvSort);
	public function BOOL PFN_CERT_ENUM_SYSTEM_STORE_LOCATION(PWSTR pwszStoreLocation, uint32 dwFlags, void* pvReserved, void* pvArg);
	public function BOOL PFN_CERT_ENUM_SYSTEM_STORE(void* pvSystemStore, CERT_SYSTEM_STORE_FLAGS dwFlags, ref CERT_SYSTEM_STORE_INFO pStoreInfo, void* pvReserved, void* pvArg);
	public function BOOL PFN_CERT_ENUM_PHYSICAL_STORE(void* pvSystemStore, uint32 dwFlags, PWSTR pwszStoreName, ref CERT_PHYSICAL_STORE_INFO pStoreInfo, void* pvReserved, void* pvArg);
	public function BOOL PFN_CRYPT_EXTRACT_ENCODED_SIGNATURE_PARAMETERS_FUNC(uint32 dwCertEncodingType, ref CRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, void** ppvDecodedSignPara, out PWSTR ppwszCNGHashAlgid);
	public function BOOL PFN_CRYPT_SIGN_AND_ENCODE_HASH_FUNC(uint hKey, uint32 dwCertEncodingType, ref CRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, void* pvDecodedSignPara, PWSTR pwszCNGPubKeyAlgid, PWSTR pwszCNGHashAlgid, ref uint8 pbComputedHash, uint32 cbComputedHash, uint8* pbSignature, out uint32 pcbSignature);
	public function BOOL PFN_CRYPT_VERIFY_ENCODED_SIGNATURE_FUNC(uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pPubKeyInfo, ref CRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, void* pvDecodedSignPara, PWSTR pwszCNGPubKeyAlgid, PWSTR pwszCNGHashAlgid, ref uint8 pbComputedHash, uint32 cbComputedHash, ref uint8 pbSignature, uint32 cbSignature);
	public function BOOL PFN_CRYPT_EXPORT_PUBLIC_KEY_INFO_EX2_FUNC(uint hNCryptKey, uint32 dwCertEncodingType, PSTR pszPublicKeyObjId, uint32 dwFlags, void* pvAuxInfo, CERT_PUBLIC_KEY_INFO* pInfo, out uint32 pcbInfo);
	public function BOOL PFN_CRYPT_EXPORT_PUBLIC_KEY_INFO_FROM_BCRYPT_HANDLE_FUNC(BCRYPT_KEY_HANDLE hBCryptKey, uint32 dwCertEncodingType, PSTR pszPublicKeyObjId, uint32 dwFlags, void* pvAuxInfo, CERT_PUBLIC_KEY_INFO* pInfo, out uint32 pcbInfo);
	public function BOOL PFN_IMPORT_PUBLIC_KEY_INFO_EX2_FUNC(uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pInfo, uint32 dwFlags, void* pvAuxInfo, out BCRYPT_KEY_HANDLE phKey);
	public function BOOL PFN_IMPORT_PRIV_KEY_FUNC(uint hCryptProv, ref CRYPT_PRIVATE_KEY_INFO pPrivateKeyInfo, uint32 dwFlags, void* pvAuxInfo);
	public function BOOL PFN_EXPORT_PRIV_KEY_FUNC(uint hCryptProv, uint32 dwKeySpec, PSTR pszPrivateKeyObjId, uint32 dwFlags, void* pvAuxInfo, CRYPT_PRIVATE_KEY_INFO* pPrivateKeyInfo, out uint32 pcbPrivateKeyInfo);
	public function CERT_CONTEXT* PFN_CRYPT_GET_SIGNER_CERTIFICATE(void* pvGetArg, uint32 dwCertEncodingType, ref CERT_INFO pSignerId, void* hMsgCertStore);
	public function void PFN_CRYPT_ASYNC_PARAM_FREE_FUNC(PSTR pszParamOid, void* pvParam);
	public function void PFN_FREE_ENCODED_OBJECT_FUNC(PSTR pszObjectOid, out CRYPT_BLOB_ARRAY pObject, void* pvFreeContext);
	public function BOOL PFN_CRYPT_CANCEL_RETRIEVAL(uint32 dwFlags, void* pvArg);
	public function void PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC(void* pvCompletion, uint32 dwCompletionCode, PSTR pszUrl, PSTR pszObjectOid, void* pvObject);
	public function BOOL PFN_CANCEL_ASYNC_RETRIEVAL_FUNC(HCRYPTASYNC hAsyncRetrieve);
	public function BOOL PFN_CRYPT_ENUM_KEYID_PROP(in CRYPTOAPI_BLOB pKeyIdentifier, uint32 dwFlags, void* pvReserved, void* pvArg, uint32 cProp, uint32* rgdwPropId, void** rgpvData, uint32* rgcbData);
	public function BOOL PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK(in CERT_CONTEXT pCert, void* pvFindArg);
	public function void PFN_CERT_SERVER_OCSP_RESPONSE_UPDATE_CALLBACK(ref CERT_CHAIN_CONTEXT pChainContext, ref CERT_SERVER_OCSP_RESPONSE_CONTEXT pServerOcspResponseContext, ref CRL_CONTEXT pNewCrlContext, CRL_CONTEXT* pPrevCrlContext, void* pvArg, uint32 dwWriteOcspFileError);
	public function BOOL PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FLUSH(void* pContext, CRYPTOAPI_BLOB** rgIdentifierOrNameList, uint32 dwIdentifierOrNameListCount);
	public function BOOL PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_GET(void* pPluginContext, CRYPTOAPI_BLOB* pIdentifier, uint32 dwNameType, ref CRYPTOAPI_BLOB pNameBlob, out uint8* ppbContent, out uint32 pcbContent, PWSTR* ppwszPassword, CRYPTOAPI_BLOB** ppIdentifier);
	public function void PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_RELEASE(CRYPT_OBJECT_LOCATOR_RELEASE_REASON dwReason, void* pPluginContext);
	public function void PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_PASSWORD(void* pPluginContext, PWSTR pwszPassword);
	public function void PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE(void* pPluginContext, ref uint8 pbData);
	public function void PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_IDENTIFIER(void* pPluginContext, ref CRYPTOAPI_BLOB pIdentifier);
	public function BOOL PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_INITIALIZE(PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FLUSH pfnFlush, void* pContext, out uint32 pdwExpectedObjectCount, out CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE* ppFuncTable, void** ppPluginContext);
	public function BOOL PFN_CERT_IS_WEAK_HASH(uint32 dwHashUseType, PWSTR pwszCNGHashAlgid, uint32 dwChainFlags, CERT_CHAIN_CONTEXT* pSignerChainContext, FILETIME* pTimeStamp, PWSTR pwszFileName);
	public function int32 PFNCryptStreamOutputCallback(void* pvCallbackCtxt, in uint8 pbData, uint cbData, BOOL fFinal);
	public function int32 PFNCryptStreamOutputCallbackEx(void* pvCallbackCtxt, uint8* pbData, uint cbData, NCRYPT_DESCRIPTOR_HANDLE hDescriptor, BOOL fFinal);
	public function HRESULT PFN_CRYPT_XML_WRITE_CALLBACK(void* pvCallbackState, in uint8 pbData, uint32 cbData);
	public function HRESULT PFN_CRYPT_XML_DATA_PROVIDER_READ(void* pvCallbackState, out uint8 pbData, uint32 cbData, out uint32 pcbRead);
	public function HRESULT PFN_CRYPT_XML_DATA_PROVIDER_CLOSE(void* pvCallbackState);
	public function HRESULT PFN_CRYPT_XML_CREATE_TRANSFORM(in CRYPT_XML_ALGORITHM pTransform, ref CRYPT_XML_DATA_PROVIDER pProviderIn, out CRYPT_XML_DATA_PROVIDER pProviderOut);
	public function BOOL PFN_CRYPT_XML_ENUM_ALG_INFO(in CRYPT_XML_ALGORITHM_INFO pInfo, void* pvArg);
	public function HRESULT CryptXmlDllGetInterface(uint32 dwFlags, in CRYPT_XML_ALGORITHM_INFO pMethod, out CRYPT_XML_CRYPTOGRAPHIC_INTERFACE pInterface);
	public function HRESULT CryptXmlDllEncodeAlgorithm(in CRYPT_XML_ALGORITHM_INFO pAlgInfo, CRYPT_XML_CHARSET dwCharset, void* pvCallbackState, PFN_CRYPT_XML_WRITE_CALLBACK pfnWrite);
	public function HRESULT CryptXmlDllCreateDigest(in CRYPT_XML_ALGORITHM pDigestMethod, out uint32 pcbSize, void** phDigest);
	public function HRESULT CryptXmlDllDigestData(void* hDigest, in uint8 pbData, uint32 cbData);
	public function HRESULT CryptXmlDllFinalizeDigest(void* hDigest, out uint8 pbDigest, uint32 cbDigest);
	public function HRESULT CryptXmlDllCloseDigest(void* hDigest);
	public function HRESULT CryptXmlDllSignData(in CRYPT_XML_ALGORITHM pSignatureMethod, uint hCryptProvOrNCryptKey, uint32 dwKeySpec, in uint8 pbInput, uint32 cbInput, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult);
	public function HRESULT CryptXmlDllVerifySignature(in CRYPT_XML_ALGORITHM pSignatureMethod, BCRYPT_KEY_HANDLE hKey, in uint8 pbInput, uint32 cbInput, in uint8 pbSignature, uint32 cbSignature);
	public function HRESULT CryptXmlDllGetAlgorithmInfo(in CRYPT_XML_ALGORITHM pXmlAlgorithm, out CRYPT_XML_ALGORITHM_INFO* ppAlgInfo);
	public function HRESULT CryptXmlDllEncodeKeyValue(uint hKey, CRYPT_XML_CHARSET dwCharset, void* pvCallbackState, PFN_CRYPT_XML_WRITE_CALLBACK pfnWrite);
	public function HRESULT CryptXmlDllCreateKey(in CRYPT_XML_BLOB pEncoded, out BCRYPT_KEY_HANDLE phKey);
	#endregion
	
	#region Structs
	[CRepr]
	public struct CMS_KEY_INFO
	{
		public uint32 dwVersion;
		public uint32 Algid;
		public uint8* pbOID;
		public uint32 cbOID;
	}
	[CRepr]
	public struct HMAC_Info
	{
		public uint32 HashAlgid;
		public uint8* pbInnerString;
		public uint32 cbInnerString;
		public uint8* pbOuterString;
		public uint32 cbOuterString;
	}
	[CRepr]
	public struct SCHANNEL_ALG
	{
		public uint32 dwUse;
		public uint32 Algid;
		public uint32 cBits;
		public uint32 dwFlags;
		public uint32 dwReserved;
	}
	[CRepr]
	public struct PROV_ENUMALGS
	{
		public uint32 aiAlgid;
		public uint32 dwBitLen;
		public uint32 dwNameLen;
		public CHAR[20] szName;
	}
	[CRepr]
	public struct PROV_ENUMALGS_EX
	{
		public uint32 aiAlgid;
		public uint32 dwDefaultLen;
		public uint32 dwMinLen;
		public uint32 dwMaxLen;
		public uint32 dwProtocols;
		public uint32 dwNameLen;
		public CHAR[20] szName;
		public uint32 dwLongNameLen;
		public CHAR[40] szLongName;
	}
	[CRepr]
	public struct PUBLICKEYSTRUC
	{
		public uint8 bType;
		public uint8 bVersion;
		public uint16 reserved;
		public uint32 aiKeyAlg;
	}
	[CRepr]
	public struct RSAPUBKEY
	{
		public uint32 magic;
		public uint32 bitlen;
		public uint32 pubexp;
	}
	[CRepr]
	public struct PUBKEY
	{
		public uint32 magic;
		public uint32 bitlen;
	}
	[CRepr]
	public struct DSSSEED
	{
		public uint32 counter;
		public uint8[20] seed;
	}
	[CRepr]
	public struct PUBKEYVER3
	{
		public uint32 magic;
		public uint32 bitlenP;
		public uint32 bitlenQ;
		public uint32 bitlenJ;
		public DSSSEED DSSSeed;
	}
	[CRepr]
	public struct PRIVKEYVER3
	{
		public uint32 magic;
		public uint32 bitlenP;
		public uint32 bitlenQ;
		public uint32 bitlenJ;
		public uint32 bitlenX;
		public DSSSEED DSSSeed;
	}
	[CRepr]
	public struct KEY_TYPE_SUBTYPE
	{
		public uint32 dwKeySpec;
		public Guid Type;
		public Guid Subtype;
	}
	[CRepr]
	public struct CERT_FORTEZZA_DATA_PROP
	{
		public uint8[8] SerialNumber;
		public int32 CertIndex;
		public uint8[36] CertLabel;
	}
	[CRepr]
	public struct CRYPT_RC4_KEY_STATE
	{
		public uint8[16] Key;
		public uint8[256] SBox;
		public uint8 i;
		public uint8 j;
	}
	[CRepr]
	public struct CRYPT_DES_KEY_STATE
	{
		public uint8[8] Key;
		public uint8[8] IV;
		public uint8[8] Feedback;
	}
	[CRepr]
	public struct CRYPT_3DES_KEY_STATE
	{
		public uint8[24] Key;
		public uint8[8] IV;
		public uint8[8] Feedback;
	}
	[CRepr]
	public struct CRYPT_AES_128_KEY_STATE
	{
		public uint8[16] Key;
		public uint8[16] IV;
		public uint8[176] EncryptionState;
		public uint8[176] DecryptionState;
		public uint8[16] Feedback;
	}
	[CRepr]
	public struct CRYPT_AES_256_KEY_STATE
	{
		public uint8[32] Key;
		public uint8[16] IV;
		public uint8[240] EncryptionState;
		public uint8[240] DecryptionState;
		public uint8[16] Feedback;
	}
	[CRepr]
	public struct CRYPTOAPI_BLOB
	{
		public uint32 cbData;
		public uint8* pbData;
	}
	[CRepr]
	public struct CMS_DH_KEY_INFO
	{
		public uint32 dwVersion;
		public uint32 Algid;
		public PSTR pszContentEncObjId;
		public CRYPTOAPI_BLOB PubInfo;
		public void* pReserved;
	}
	[CRepr]
	public struct BCRYPT_KEY_LENGTHS_STRUCT
	{
		public uint32 dwMinLength;
		public uint32 dwMaxLength;
		public uint32 dwIncrement;
	}
	[CRepr]
	public struct BCRYPT_OID
	{
		public uint32 cbOID;
		public uint8* pbOID;
	}
	[CRepr]
	public struct BCRYPT_OID_LIST
	{
		public uint32 dwOIDCount;
		public BCRYPT_OID* pOIDs;
	}
	[CRepr]
	public struct BCRYPT_PKCS1_PADDING_INFO
	{
		public PWSTR pszAlgId;
	}
	[CRepr]
	public struct BCRYPT_PSS_PADDING_INFO
	{
		public PWSTR pszAlgId;
		public uint32 cbSalt;
	}
	[CRepr]
	public struct BCRYPT_OAEP_PADDING_INFO
	{
		public PWSTR pszAlgId;
		public uint8* pbLabel;
		public uint32 cbLabel;
	}
	[CRepr]
	public struct BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
	{
		public uint32 cbSize;
		public uint32 dwInfoVersion;
		public uint8* pbNonce;
		public uint32 cbNonce;
		public uint8* pbAuthData;
		public uint32 cbAuthData;
		public uint8* pbTag;
		public uint32 cbTag;
		public uint8* pbMacContext;
		public uint32 cbMacContext;
		public uint32 cbAAD;
		public uint64 cbData;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct BCryptBuffer
	{
		public uint32 cbBuffer;
		public uint32 BufferType;
		public void* pvBuffer;
	}
	[CRepr]
	public struct BCryptBufferDesc
	{
		public uint32 ulVersion;
		public uint32 cBuffers;
		public BCryptBuffer* pBuffers;
	}
	[CRepr]
	public struct BCRYPT_KEY_BLOB
	{
		public uint32 Magic;
	}
	[CRepr]
	public struct BCRYPT_RSAKEY_BLOB
	{
		public BCRYPT_RSAKEY_BLOB_MAGIC Magic;
		public uint32 BitLength;
		public uint32 cbPublicExp;
		public uint32 cbModulus;
		public uint32 cbPrime1;
		public uint32 cbPrime2;
	}
	[CRepr]
	public struct BCRYPT_ECCKEY_BLOB
	{
		public uint32 dwMagic;
		public uint32 cbKey;
	}
	[CRepr]
	public struct SSL_ECCKEY_BLOB
	{
		public uint32 dwCurveType;
		public uint32 cbKey;
	}
	[CRepr]
	public struct BCRYPT_ECCFULLKEY_BLOB
	{
		public uint32 dwMagic;
		public uint32 dwVersion;
		public ECC_CURVE_TYPE_ENUM dwCurveType;
		public ECC_CURVE_ALG_ID_ENUM dwCurveGenerationAlgId;
		public uint32 cbFieldLength;
		public uint32 cbSubgroupOrder;
		public uint32 cbCofactor;
		public uint32 cbSeed;
	}
	[CRepr]
	public struct BCRYPT_DH_KEY_BLOB
	{
		public BCRYPT_DH_KEY_BLOB_MAGIC dwMagic;
		public uint32 cbKey;
	}
	[CRepr]
	public struct BCRYPT_DH_PARAMETER_HEADER
	{
		public uint32 cbLength;
		public uint32 dwMagic;
		public uint32 cbKeyLength;
	}
	[CRepr]
	public struct BCRYPT_DSA_KEY_BLOB
	{
		public BCRYPT_DSA_MAGIC dwMagic;
		public uint32 cbKey;
		public uint8[4] Count;
		public uint8[20] Seed;
		public uint8[20] q;
	}
	[CRepr]
	public struct BCRYPT_DSA_KEY_BLOB_V2
	{
		public BCRYPT_DSA_MAGIC dwMagic;
		public uint32 cbKey;
		public HASHALGORITHM_ENUM hashAlgorithm;
		public DSAFIPSVERSION_ENUM standardVersion;
		public uint32 cbSeedLength;
		public uint32 cbGroupSize;
		public uint8[4] Count;
	}
	[CRepr]
	public struct BCRYPT_KEY_DATA_BLOB_HEADER
	{
		public uint32 dwMagic;
		public uint32 dwVersion;
		public uint32 cbKeyData;
	}
	[CRepr]
	public struct BCRYPT_DSA_PARAMETER_HEADER
	{
		public uint32 cbLength;
		public uint32 dwMagic;
		public uint32 cbKeyLength;
		public uint8[4] Count;
		public uint8[20] Seed;
		public uint8[20] q;
	}
	[CRepr]
	public struct BCRYPT_DSA_PARAMETER_HEADER_V2
	{
		public uint32 cbLength;
		public uint32 dwMagic;
		public uint32 cbKeyLength;
		public HASHALGORITHM_ENUM hashAlgorithm;
		public DSAFIPSVERSION_ENUM standardVersion;
		public uint32 cbSeedLength;
		public uint32 cbGroupSize;
		public uint8[4] Count;
	}
	[CRepr]
	public struct BCRYPT_ECC_CURVE_NAMES
	{
		public uint32 dwEccCurveNames;
		public PWSTR* pEccCurveNames;
	}
	[CRepr]
	public struct BCRYPT_MULTI_HASH_OPERATION
	{
		public uint32 iHash;
		public BCRYPT_HASH_OPERATION_TYPE hashOperation;
		public uint8* pbBuffer;
		public uint32 cbBuffer;
	}
	[CRepr]
	public struct BCRYPT_MULTI_OBJECT_LENGTH_STRUCT
	{
		public uint32 cbPerObject;
		public uint32 cbPerElement;
	}
	[CRepr]
	public struct BCRYPT_ALGORITHM_IDENTIFIER
	{
		public PWSTR pszName;
		public uint32 dwClass;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct BCRYPT_PROVIDER_NAME
	{
		public PWSTR pszProviderName;
	}
	[CRepr]
	public struct BCRYPT_INTERFACE_VERSION
	{
		public uint16 MajorVersion;
		public uint16 MinorVersion;
	}
	[CRepr]
	public struct CRYPT_INTERFACE_REG
	{
		public BCRYPT_INTERFACE dwInterface;
		public BCRYPT_TABLE dwFlags;
		public uint32 cFunctions;
		public PWSTR* rgpszFunctions;
	}
	[CRepr]
	public struct CRYPT_IMAGE_REG
	{
		public PWSTR pszImage;
		public uint32 cInterfaces;
		public CRYPT_INTERFACE_REG** rgpInterfaces;
	}
	[CRepr]
	public struct CRYPT_PROVIDER_REG
	{
		public uint32 cAliases;
		public PWSTR* rgpszAliases;
		public CRYPT_IMAGE_REG* pUM;
		public CRYPT_IMAGE_REG* pKM;
	}
	[CRepr]
	public struct CRYPT_PROVIDERS
	{
		public uint32 cProviders;
		public PWSTR* rgpszProviders;
	}
	[CRepr]
	public struct CRYPT_CONTEXT_CONFIG
	{
		public CRYPT_CONTEXT_CONFIG_FLAGS dwFlags;
		public uint32 dwReserved;
	}
	[CRepr]
	public struct CRYPT_CONTEXT_FUNCTION_CONFIG
	{
		public uint32 dwFlags;
		public uint32 dwReserved;
	}
	[CRepr]
	public struct CRYPT_CONTEXTS
	{
		public uint32 cContexts;
		public PWSTR* rgpszContexts;
	}
	[CRepr]
	public struct CRYPT_CONTEXT_FUNCTIONS
	{
		public uint32 cFunctions;
		public PWSTR* rgpszFunctions;
	}
	[CRepr]
	public struct CRYPT_CONTEXT_FUNCTION_PROVIDERS
	{
		public uint32 cProviders;
		public PWSTR* rgpszProviders;
	}
	[CRepr]
	public struct CRYPT_PROPERTY_REF
	{
		public PWSTR pszProperty;
		public uint32 cbValue;
		public uint8* pbValue;
	}
	[CRepr]
	public struct CRYPT_IMAGE_REF
	{
		public PWSTR pszImage;
		public CRYPT_IMAGE_REF_FLAGS dwFlags;
	}
	[CRepr]
	public struct CRYPT_PROVIDER_REF
	{
		public uint32 dwInterface;
		public PWSTR pszFunction;
		public PWSTR pszProvider;
		public uint32 cProperties;
		public CRYPT_PROPERTY_REF** rgpProperties;
		public CRYPT_IMAGE_REF* pUM;
		public CRYPT_IMAGE_REF* pKM;
	}
	[CRepr]
	public struct CRYPT_PROVIDER_REFS
	{
		public uint32 cProviders;
		public CRYPT_PROVIDER_REF** rgpProviders;
	}
	[CRepr]
	public struct NCRYPT_ALLOC_PARA
	{
		public uint32 cbSize;
		public PFN_NCRYPT_ALLOC pfnAlloc;
		public PFN_NCRYPT_FREE pfnFree;
	}
	[CRepr]
	public struct NCRYPT_CIPHER_PADDING_INFO
	{
		public uint32 cbSize;
		public uint32 dwFlags;
		public uint8* pbIV;
		public uint32 cbIV;
		public uint8* pbOtherInfo;
		public uint32 cbOtherInfo;
	}
	[CRepr]
	public struct NCRYPT_PLATFORM_ATTEST_PADDING_INFO
	{
		public uint32 magic;
		public uint32 pcrMask;
	}
	[CRepr]
	public struct NCRYPT_KEY_ATTEST_PADDING_INFO
	{
		public uint32 magic;
		public uint8* pbKeyBlob;
		public uint32 cbKeyBlob;
		public uint8* pbKeyAuth;
		public uint32 cbKeyAuth;
	}
	[CRepr]
	public struct NCRYPT_ISOLATED_KEY_ATTESTED_ATTRIBUTES
	{
		public uint32 Version;
		public uint32 Flags;
		public uint32 cbPublicKeyBlob;
	}
	[CRepr]
	public struct NCRYPT_VSM_KEY_ATTESTATION_STATEMENT
	{
		public uint32 Magic;
		public uint32 Version;
		public uint32 cbSignature;
		public uint32 cbReport;
		public uint32 cbAttributes;
	}
	[CRepr]
	public struct NCRYPT_VSM_KEY_ATTESTATION_CLAIM_RESTRICTIONS
	{
		public uint32 Version;
		public uint64 TrustletId;
		public uint32 MinSvn;
		public uint32 FlagsMask;
		public uint32 FlagsExpected;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct NCRYPT_EXPORTED_ISOLATED_KEY_HEADER
	{
		public uint32 Version;
		public uint32 KeyUsage;
		public uint32 _bitfield;
		public uint32 cbAlgName;
		public uint32 cbNonce;
		public uint32 cbAuthTag;
		public uint32 cbWrappingKey;
		public uint32 cbIsolatedKey;
	}
	[CRepr]
	public struct NCRYPT_EXPORTED_ISOLATED_KEY_ENVELOPE
	{
		public NCRYPT_EXPORTED_ISOLATED_KEY_HEADER Header;
	}
	[CRepr]
	public struct __NCRYPT_PCP_TPM_WEB_AUTHN_ATTESTATION_STATEMENT
	{
		public uint32 Magic;
		public uint32 Version;
		public uint32 HeaderSize;
		public uint32 cbCertifyInfo;
		public uint32 cbSignature;
		public uint32 cbTpmPublic;
	}
	[CRepr]
	public struct NCRYPT_TPM_PLATFORM_ATTESTATION_STATEMENT
	{
		public uint32 Magic;
		public uint32 Version;
		public uint32 pcrAlg;
		public uint32 cbSignature;
		public uint32 cbQuote;
		public uint32 cbPcrs;
	}
	[CRepr]
	public struct NCryptAlgorithmName
	{
		public PWSTR pszName;
		public NCRYPT_ALGORITHM_NAME_CLASS dwClass;
		public NCRYPT_OPERATION dwAlgOperations;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct NCryptKeyName
	{
		public PWSTR pszName;
		public PWSTR pszAlgid;
		public CERT_KEY_SPEC dwLegacyKeySpec;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct NCryptProviderName
	{
		public PWSTR pszName;
		public PWSTR pszComment;
	}
	[CRepr]
	public struct NCRYPT_UI_POLICY
	{
		public uint32 dwVersion;
		public uint32 dwFlags;
		public PWSTR pszCreationTitle;
		public PWSTR pszFriendlyName;
		public PWSTR pszDescription;
	}
	[CRepr]
	public struct NCRYPT_KEY_ACCESS_POLICY_BLOB
	{
		public uint32 dwVersion;
		public uint32 dwPolicyFlags;
		public uint32 cbUserSid;
		public uint32 cbApplicationSid;
	}
	[CRepr]
	public struct NCRYPT_SUPPORTED_LENGTHS
	{
		public uint32 dwMinLength;
		public uint32 dwMaxLength;
		public uint32 dwIncrement;
		public uint32 dwDefaultLength;
	}
	[CRepr]
	public struct NCRYPT_PCP_HMAC_AUTH_SIGNATURE_INFO
	{
		public uint32 dwVersion;
		public int32 iExpiration;
		public uint8[32] pabNonce;
		public uint8[32] pabPolicyRef;
		public uint8[32] pabHMAC;
	}
	[CRepr]
	public struct NCRYPT_PCP_TPM_FW_VERSION_INFO
	{
		public uint16 major1;
		public uint16 major2;
		public uint16 minor1;
		public uint16 minor2;
	}
	[CRepr]
	public struct NCRYPT_PCP_RAW_POLICYDIGEST
	{
		public uint32 dwVersion;
		public uint32 cbDigest;
	}
	[CRepr]
	public struct NCRYPT_KEY_BLOB_HEADER
	{
		public uint32 cbSize;
		public uint32 dwMagic;
		public uint32 cbAlgName;
		public uint32 cbKeyData;
	}
	[CRepr]
	public struct NCRYPT_TPM_LOADABLE_KEY_BLOB_HEADER
	{
		public uint32 magic;
		public uint32 cbHeader;
		public uint32 cbPublic;
		public uint32 cbPrivate;
		public uint32 cbName;
	}
	[CRepr]
	public struct CRYPT_BIT_BLOB
	{
		public uint32 cbData;
		public uint8* pbData;
		public uint32 cUnusedBits;
	}
	[CRepr]
	public struct CRYPT_ALGORITHM_IDENTIFIER
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Parameters;
	}
	[CRepr]
	public struct CRYPT_OBJID_TABLE
	{
		public uint32 dwAlgId;
		public PSTR pszObjId;
	}
	[CRepr]
	public struct CRYPT_HASH_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPTOAPI_BLOB Hash;
	}
	[CRepr]
	public struct CERT_EXTENSION
	{
		public PSTR pszObjId;
		public BOOL fCritical;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CRYPT_ATTRIBUTE_TYPE_VALUE
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CRYPT_ATTRIBUTE
	{
		public PSTR pszObjId;
		public uint32 cValue;
		public CRYPTOAPI_BLOB* rgValue;
	}
	[CRepr]
	public struct CRYPT_ATTRIBUTES
	{
		public uint32 cAttr;
		public CRYPT_ATTRIBUTE* rgAttr;
	}
	[CRepr]
	public struct CERT_RDN_ATTR
	{
		public PSTR pszObjId;
		public CERT_RDN_ATTR_VALUE_TYPE dwValueType;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CERT_RDN
	{
		public uint32 cRDNAttr;
		public CERT_RDN_ATTR* rgRDNAttr;
	}
	[CRepr]
	public struct CERT_NAME_INFO
	{
		public uint32 cRDN;
		public CERT_RDN* rgRDN;
	}
	[CRepr]
	public struct CERT_NAME_VALUE
	{
		public uint32 dwValueType;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CERT_PUBLIC_KEY_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER Algorithm;
		public CRYPT_BIT_BLOB PublicKey;
	}
	[CRepr]
	public struct CRYPT_ECC_PRIVATE_KEY_INFO
	{
		public uint32 dwVersion;
		public CRYPTOAPI_BLOB PrivateKey;
		public PSTR szCurveOid;
		public CRYPT_BIT_BLOB PublicKey;
	}
	[CRepr]
	public struct CRYPT_PRIVATE_KEY_INFO
	{
		public uint32 Version;
		public CRYPT_ALGORITHM_IDENTIFIER Algorithm;
		public CRYPTOAPI_BLOB PrivateKey;
		public CRYPT_ATTRIBUTES* pAttributes;
	}
	[CRepr]
	public struct CRYPT_ENCRYPTED_PRIVATE_KEY_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER EncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedPrivateKey;
	}
	[CRepr]
	public struct CRYPT_PKCS8_IMPORT_PARAMS
	{
		public CRYPTOAPI_BLOB PrivateKey;
		public PCRYPT_RESOLVE_HCRYPTPROV_FUNC pResolvehCryptProvFunc;
		public void* pVoidResolveFunc;
		public PCRYPT_DECRYPT_PRIVATE_KEY_FUNC pDecryptPrivateKeyFunc;
		public void* pVoidDecryptFunc;
	}
	[CRepr]
	public struct CRYPT_PKCS8_EXPORT_PARAMS
	{
		public uint hCryptProv;
		public uint32 dwKeySpec;
		public PSTR pszPrivateKeyObjId;
		public PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC pEncryptPrivateKeyFunc;
		public void* pVoidEncryptFunc;
	}
	[CRepr]
	public struct CERT_INFO
	{
		public uint32 dwVersion;
		public CRYPTOAPI_BLOB SerialNumber;
		public CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
		public CRYPTOAPI_BLOB Issuer;
		public FILETIME NotBefore;
		public FILETIME NotAfter;
		public CRYPTOAPI_BLOB Subject;
		public CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
		public CRYPT_BIT_BLOB IssuerUniqueId;
		public CRYPT_BIT_BLOB SubjectUniqueId;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRL_ENTRY
	{
		public CRYPTOAPI_BLOB SerialNumber;
		public FILETIME RevocationDate;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRL_INFO
	{
		public uint32 dwVersion;
		public CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
		public CRYPTOAPI_BLOB Issuer;
		public FILETIME ThisUpdate;
		public FILETIME NextUpdate;
		public uint32 cCRLEntry;
		public CRL_ENTRY* rgCRLEntry;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CERT_OR_CRL_BLOB
	{
		public uint32 dwChoice;
		public uint32 cbEncoded;
		public uint8* pbEncoded;
	}
	[CRepr]
	public struct CERT_OR_CRL_BUNDLE
	{
		public uint32 cItem;
		public CERT_OR_CRL_BLOB* rgItem;
	}
	[CRepr]
	public struct CERT_REQUEST_INFO
	{
		public uint32 dwVersion;
		public CRYPTOAPI_BLOB Subject;
		public CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
		public uint32 cAttribute;
		public CRYPT_ATTRIBUTE* rgAttribute;
	}
	[CRepr]
	public struct CERT_KEYGEN_REQUEST_INFO
	{
		public uint32 dwVersion;
		public CERT_PUBLIC_KEY_INFO SubjectPublicKeyInfo;
		public PWSTR pwszChallengeString;
	}
	[CRepr]
	public struct CERT_SIGNED_CONTENT_INFO
	{
		public CRYPTOAPI_BLOB ToBeSigned;
		public CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
		public CRYPT_BIT_BLOB Signature;
	}
	[CRepr]
	public struct CTL_USAGE
	{
		public uint32 cUsageIdentifier;
		public PSTR* rgpszUsageIdentifier;
	}
	[CRepr]
	public struct CTL_ENTRY
	{
		public CRYPTOAPI_BLOB SubjectIdentifier;
		public uint32 cAttribute;
		public CRYPT_ATTRIBUTE* rgAttribute;
	}
	[CRepr]
	public struct CTL_INFO
	{
		public uint32 dwVersion;
		public CTL_USAGE SubjectUsage;
		public CRYPTOAPI_BLOB ListIdentifier;
		public CRYPTOAPI_BLOB SequenceNumber;
		public FILETIME ThisUpdate;
		public FILETIME NextUpdate;
		public CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;
		public uint32 cCTLEntry;
		public CTL_ENTRY* rgCTLEntry;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRYPT_TIME_STAMP_REQUEST_INFO
	{
		public PSTR pszTimeStampAlgorithm;
		public PSTR pszContentType;
		public CRYPTOAPI_BLOB Content;
		public uint32 cAttribute;
		public CRYPT_ATTRIBUTE* rgAttribute;
	}
	[CRepr]
	public struct CRYPT_ENROLLMENT_NAME_VALUE_PAIR
	{
		public PWSTR pwszName;
		public PWSTR pwszValue;
	}
	[CRepr]
	public struct CRYPT_CSP_PROVIDER
	{
		public uint32 dwKeySpec;
		public PWSTR pwszProviderName;
		public CRYPT_BIT_BLOB Signature;
	}
	[CRepr]
	public struct CRYPT_ENCODE_PARA
	{
		public uint32 cbSize;
		public PFN_CRYPT_ALLOC pfnAlloc;
		public PFN_CRYPT_FREE pfnFree;
	}
	[CRepr]
	public struct CRYPT_DECODE_PARA
	{
		public uint32 cbSize;
		public PFN_CRYPT_ALLOC pfnAlloc;
		public PFN_CRYPT_FREE pfnFree;
	}
	[CRepr]
	public struct CERT_EXTENSIONS
	{
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CERT_AUTHORITY_KEY_ID_INFO
	{
		public CRYPTOAPI_BLOB KeyId;
		public CRYPTOAPI_BLOB CertIssuer;
		public CRYPTOAPI_BLOB CertSerialNumber;
	}
	[CRepr]
	public struct CERT_PRIVATE_KEY_VALIDITY
	{
		public FILETIME NotBefore;
		public FILETIME NotAfter;
	}
	[CRepr]
	public struct CERT_KEY_ATTRIBUTES_INFO
	{
		public CRYPTOAPI_BLOB KeyId;
		public CRYPT_BIT_BLOB IntendedKeyUsage;
		public CERT_PRIVATE_KEY_VALIDITY* pPrivateKeyUsagePeriod;
	}
	[CRepr]
	public struct CERT_POLICY_ID
	{
		public uint32 cCertPolicyElementId;
		public PSTR* rgpszCertPolicyElementId;
	}
	[CRepr]
	public struct CERT_KEY_USAGE_RESTRICTION_INFO
	{
		public uint32 cCertPolicyId;
		public CERT_POLICY_ID* rgCertPolicyId;
		public CRYPT_BIT_BLOB RestrictedKeyUsage;
	}
	[CRepr]
	public struct CERT_OTHER_NAME
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CERT_ALT_NAME_ENTRY
	{
		public uint32 dwAltNameChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_OTHER_NAME* pOtherName;
			public PWSTR pwszRfc822Name;
			public PWSTR pwszDNSName;
			public CRYPTOAPI_BLOB DirectoryName;
			public PWSTR pwszURL;
			public CRYPTOAPI_BLOB IPAddress;
			public PSTR pszRegisteredID;
		}
	}
	[CRepr]
	public struct CERT_ALT_NAME_INFO
	{
		public uint32 cAltEntry;
		public CERT_ALT_NAME_ENTRY* rgAltEntry;
	}
	[CRepr]
	public struct CERT_BASIC_CONSTRAINTS_INFO
	{
		public CRYPT_BIT_BLOB SubjectType;
		public BOOL fPathLenConstraint;
		public uint32 dwPathLenConstraint;
		public uint32 cSubtreesConstraint;
		public CRYPTOAPI_BLOB* rgSubtreesConstraint;
	}
	[CRepr]
	public struct CERT_BASIC_CONSTRAINTS2_INFO
	{
		public BOOL fCA;
		public BOOL fPathLenConstraint;
		public uint32 dwPathLenConstraint;
	}
	[CRepr]
	public struct CERT_POLICY_QUALIFIER_INFO
	{
		public PSTR pszPolicyQualifierId;
		public CRYPTOAPI_BLOB Qualifier;
	}
	[CRepr]
	public struct CERT_POLICY_INFO
	{
		public PSTR pszPolicyIdentifier;
		public uint32 cPolicyQualifier;
		public CERT_POLICY_QUALIFIER_INFO* rgPolicyQualifier;
	}
	[CRepr]
	public struct CERT_POLICIES_INFO
	{
		public uint32 cPolicyInfo;
		public CERT_POLICY_INFO* rgPolicyInfo;
	}
	[CRepr]
	public struct CERT_POLICY_QUALIFIER_NOTICE_REFERENCE
	{
		public PSTR pszOrganization;
		public uint32 cNoticeNumbers;
		public int32* rgNoticeNumbers;
	}
	[CRepr]
	public struct CERT_POLICY_QUALIFIER_USER_NOTICE
	{
		public CERT_POLICY_QUALIFIER_NOTICE_REFERENCE* pNoticeReference;
		public PWSTR pszDisplayText;
	}
	[CRepr]
	public struct CPS_URLS
	{
		public PWSTR pszURL;
		public CRYPT_ALGORITHM_IDENTIFIER* pAlgorithm;
		public CRYPTOAPI_BLOB* pDigest;
	}
	[CRepr]
	public struct CERT_POLICY95_QUALIFIER1
	{
		public PWSTR pszPracticesReference;
		public PSTR pszNoticeIdentifier;
		public PSTR pszNSINoticeIdentifier;
		public uint32 cCPSURLs;
		public CPS_URLS* rgCPSURLs;
	}
	[CRepr]
	public struct CERT_POLICY_MAPPING
	{
		public PSTR pszIssuerDomainPolicy;
		public PSTR pszSubjectDomainPolicy;
	}
	[CRepr]
	public struct CERT_POLICY_MAPPINGS_INFO
	{
		public uint32 cPolicyMapping;
		public CERT_POLICY_MAPPING* rgPolicyMapping;
	}
	[CRepr]
	public struct CERT_POLICY_CONSTRAINTS_INFO
	{
		public BOOL fRequireExplicitPolicy;
		public uint32 dwRequireExplicitPolicySkipCerts;
		public BOOL fInhibitPolicyMapping;
		public uint32 dwInhibitPolicyMappingSkipCerts;
	}
	[CRepr]
	public struct CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY
	{
		public PSTR pszObjId;
		public uint32 cValue;
		public CRYPTOAPI_BLOB* rgValue;
	}
	[CRepr]
	public struct CRYPT_CONTENT_INFO
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Content;
	}
	[CRepr]
	public struct CRYPT_SEQUENCE_OF_ANY
	{
		public uint32 cValue;
		public CRYPTOAPI_BLOB* rgValue;
	}
	[CRepr]
	public struct CERT_AUTHORITY_KEY_ID2_INFO
	{
		public CRYPTOAPI_BLOB KeyId;
		public CERT_ALT_NAME_INFO AuthorityCertIssuer;
		public CRYPTOAPI_BLOB AuthorityCertSerialNumber;
	}
	[CRepr]
	public struct CERT_ACCESS_DESCRIPTION
	{
		public PSTR pszAccessMethod;
		public CERT_ALT_NAME_ENTRY AccessLocation;
	}
	[CRepr]
	public struct CERT_AUTHORITY_INFO_ACCESS
	{
		public uint32 cAccDescr;
		public CERT_ACCESS_DESCRIPTION* rgAccDescr;
	}
	[CRepr]
	public struct CRL_DIST_POINT_NAME
	{
		public uint32 dwDistPointNameChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_ALT_NAME_INFO FullName;
		}
	}
	[CRepr]
	public struct CRL_DIST_POINT
	{
		public CRL_DIST_POINT_NAME DistPointName;
		public CRYPT_BIT_BLOB ReasonFlags;
		public CERT_ALT_NAME_INFO CRLIssuer;
	}
	[CRepr]
	public struct CRL_DIST_POINTS_INFO
	{
		public uint32 cDistPoint;
		public CRL_DIST_POINT* rgDistPoint;
	}
	[CRepr]
	public struct CROSS_CERT_DIST_POINTS_INFO
	{
		public uint32 dwSyncDeltaTime;
		public uint32 cDistPoint;
		public CERT_ALT_NAME_INFO* rgDistPoint;
	}
	[CRepr]
	public struct CERT_PAIR
	{
		public CRYPTOAPI_BLOB Forward;
		public CRYPTOAPI_BLOB Reverse;
	}
	[CRepr]
	public struct CRL_ISSUING_DIST_POINT
	{
		public CRL_DIST_POINT_NAME DistPointName;
		public BOOL fOnlyContainsUserCerts;
		public BOOL fOnlyContainsCACerts;
		public CRYPT_BIT_BLOB OnlySomeReasonFlags;
		public BOOL fIndirectCRL;
	}
	[CRepr]
	public struct CERT_GENERAL_SUBTREE
	{
		public CERT_ALT_NAME_ENTRY Base;
		public uint32 dwMinimum;
		public BOOL fMaximum;
		public uint32 dwMaximum;
	}
	[CRepr]
	public struct CERT_NAME_CONSTRAINTS_INFO
	{
		public uint32 cPermittedSubtree;
		public CERT_GENERAL_SUBTREE* rgPermittedSubtree;
		public uint32 cExcludedSubtree;
		public CERT_GENERAL_SUBTREE* rgExcludedSubtree;
	}
	[CRepr]
	public struct CERT_DSS_PARAMETERS
	{
		public CRYPTOAPI_BLOB p;
		public CRYPTOAPI_BLOB q;
		public CRYPTOAPI_BLOB g;
	}
	[CRepr]
	public struct CERT_DH_PARAMETERS
	{
		public CRYPTOAPI_BLOB p;
		public CRYPTOAPI_BLOB g;
	}
	[CRepr]
	public struct CERT_ECC_SIGNATURE
	{
		public CRYPTOAPI_BLOB r;
		public CRYPTOAPI_BLOB s;
	}
	[CRepr]
	public struct CERT_X942_DH_VALIDATION_PARAMS
	{
		public CRYPT_BIT_BLOB seed;
		public uint32 pgenCounter;
	}
	[CRepr]
	public struct CERT_X942_DH_PARAMETERS
	{
		public CRYPTOAPI_BLOB p;
		public CRYPTOAPI_BLOB g;
		public CRYPTOAPI_BLOB q;
		public CRYPTOAPI_BLOB j;
		public CERT_X942_DH_VALIDATION_PARAMS* pValidationParams;
	}
	[CRepr]
	public struct CRYPT_X942_OTHER_INFO
	{
		public PSTR pszContentEncryptionObjId;
		public uint8[4] rgbCounter;
		public uint8[4] rgbKeyLength;
		public CRYPTOAPI_BLOB PubInfo;
	}
	[CRepr]
	public struct CRYPT_ECC_CMS_SHARED_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER Algorithm;
		public CRYPTOAPI_BLOB EntityUInfo;
		public uint8[4] rgbSuppPubInfo;
	}
	[CRepr]
	public struct CRYPT_RC2_CBC_PARAMETERS
	{
		public uint32 dwVersion;
		public BOOL fIV;
		public uint8[8] rgbIV;
	}
	[CRepr]
	public struct CRYPT_SMIME_CAPABILITY
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Parameters;
	}
	[CRepr]
	public struct CRYPT_SMIME_CAPABILITIES
	{
		public uint32 cCapability;
		public CRYPT_SMIME_CAPABILITY* rgCapability;
	}
	[CRepr]
	public struct CERT_QC_STATEMENT
	{
		public PSTR pszStatementId;
		public CRYPTOAPI_BLOB StatementInfo;
	}
	[CRepr]
	public struct CERT_QC_STATEMENTS_EXT_INFO
	{
		public uint32 cStatement;
		public CERT_QC_STATEMENT* rgStatement;
	}
	[CRepr]
	public struct CRYPT_MASK_GEN_ALGORITHM
	{
		public PSTR pszObjId;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
	}
	[CRepr]
	public struct CRYPT_RSA_SSA_PSS_PARAMETERS
	{
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;
		public uint32 dwSaltLength;
		public uint32 dwTrailerField;
	}
	[CRepr]
	public struct CRYPT_PSOURCE_ALGORITHM
	{
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB EncodingParameters;
	}
	[CRepr]
	public struct CRYPT_RSAES_OAEP_PARAMETERS
	{
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPT_MASK_GEN_ALGORITHM MaskGenAlgorithm;
		public CRYPT_PSOURCE_ALGORITHM PSourceAlgorithm;
	}
	[CRepr]
	public struct CMC_TAGGED_ATTRIBUTE
	{
		public uint32 dwBodyPartID;
		public CRYPT_ATTRIBUTE Attribute;
	}
	[CRepr]
	public struct CMC_TAGGED_CERT_REQUEST
	{
		public uint32 dwBodyPartID;
		public CRYPTOAPI_BLOB SignedCertRequest;
	}
	[CRepr]
	public struct CMC_TAGGED_REQUEST
	{
		public uint32 dwTaggedRequestChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CMC_TAGGED_CERT_REQUEST* pTaggedCertRequest;
		}
	}
	[CRepr]
	public struct CMC_TAGGED_CONTENT_INFO
	{
		public uint32 dwBodyPartID;
		public CRYPTOAPI_BLOB EncodedContentInfo;
	}
	[CRepr]
	public struct CMC_TAGGED_OTHER_MSG
	{
		public uint32 dwBodyPartID;
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct CMC_DATA_INFO
	{
		public uint32 cTaggedAttribute;
		public CMC_TAGGED_ATTRIBUTE* rgTaggedAttribute;
		public uint32 cTaggedRequest;
		public CMC_TAGGED_REQUEST* rgTaggedRequest;
		public uint32 cTaggedContentInfo;
		public CMC_TAGGED_CONTENT_INFO* rgTaggedContentInfo;
		public uint32 cTaggedOtherMsg;
		public CMC_TAGGED_OTHER_MSG* rgTaggedOtherMsg;
	}
	[CRepr]
	public struct CMC_RESPONSE_INFO
	{
		public uint32 cTaggedAttribute;
		public CMC_TAGGED_ATTRIBUTE* rgTaggedAttribute;
		public uint32 cTaggedContentInfo;
		public CMC_TAGGED_CONTENT_INFO* rgTaggedContentInfo;
		public uint32 cTaggedOtherMsg;
		public CMC_TAGGED_OTHER_MSG* rgTaggedOtherMsg;
	}
	[CRepr]
	public struct CMC_PEND_INFO
	{
		public CRYPTOAPI_BLOB PendToken;
		public FILETIME PendTime;
	}
	[CRepr]
	public struct CMC_STATUS_INFO
	{
		public uint32 dwStatus;
		public uint32 cBodyList;
		public uint32* rgdwBodyList;
		public PWSTR pwszStatusString;
		public uint32 dwOtherInfoChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint32 dwFailInfo;
			public CMC_PEND_INFO* pPendInfo;
		}
	}
	[CRepr]
	public struct CMC_ADD_EXTENSIONS_INFO
	{
		public uint32 dwCmcDataReference;
		public uint32 cCertReference;
		public uint32* rgdwCertReference;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CMC_ADD_ATTRIBUTES_INFO
	{
		public uint32 dwCmcDataReference;
		public uint32 cCertReference;
		public uint32* rgdwCertReference;
		public uint32 cAttribute;
		public CRYPT_ATTRIBUTE* rgAttribute;
	}
	[CRepr]
	public struct CERT_TEMPLATE_EXT
	{
		public PSTR pszObjId;
		public uint32 dwMajorVersion;
		public BOOL fMinorVersion;
		public uint32 dwMinorVersion;
	}
	[CRepr]
	public struct CERT_HASHED_URL
	{
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPTOAPI_BLOB Hash;
		public PWSTR pwszUrl;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_DETAILS
	{
		public PWSTR pwszMimeType;
		public uint32 cHashedUrl;
		public CERT_HASHED_URL* rgHashedUrl;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_REFERENCE
	{
		public uint32 cHashedUrl;
		public CERT_HASHED_URL* rgHashedUrl;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_IMAGE_INFO
	{
		public CERT_LOGOTYPE_IMAGE_INFO_TYPE dwLogotypeImageInfoChoice;
		public uint32 dwFileSize;
		public uint32 dwXSize;
		public uint32 dwYSize;
		public CERT_LOGOTYPE_CHOICE dwLogotypeImageResolutionChoice;
		public using _Anonymous_e__Union Anonymous;
		public PWSTR pwszLanguage;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint32 dwNumBits;
			public uint32 dwTableSize;
		}
	}
	[CRepr]
	public struct CERT_LOGOTYPE_IMAGE
	{
		public CERT_LOGOTYPE_DETAILS LogotypeDetails;
		public CERT_LOGOTYPE_IMAGE_INFO* pLogotypeImageInfo;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_AUDIO_INFO
	{
		public uint32 dwFileSize;
		public uint32 dwPlayTime;
		public uint32 dwChannels;
		public uint32 dwSampleRate;
		public PWSTR pwszLanguage;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_AUDIO
	{
		public CERT_LOGOTYPE_DETAILS LogotypeDetails;
		public CERT_LOGOTYPE_AUDIO_INFO* pLogotypeAudioInfo;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_DATA
	{
		public uint32 cLogotypeImage;
		public CERT_LOGOTYPE_IMAGE* rgLogotypeImage;
		public uint32 cLogotypeAudio;
		public CERT_LOGOTYPE_AUDIO* rgLogotypeAudio;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_INFO
	{
		public CERT_LOGOTYPE_OPTION dwLogotypeInfoChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_LOGOTYPE_DATA* pLogotypeDirectInfo;
			public CERT_LOGOTYPE_REFERENCE* pLogotypeIndirectInfo;
		}
	}
	[CRepr]
	public struct CERT_OTHER_LOGOTYPE_INFO
	{
		public PSTR pszObjId;
		public CERT_LOGOTYPE_INFO LogotypeInfo;
	}
	[CRepr]
	public struct CERT_LOGOTYPE_EXT_INFO
	{
		public uint32 cCommunityLogo;
		public CERT_LOGOTYPE_INFO* rgCommunityLogo;
		public CERT_LOGOTYPE_INFO* pIssuerLogo;
		public CERT_LOGOTYPE_INFO* pSubjectLogo;
		public uint32 cOtherLogo;
		public CERT_OTHER_LOGOTYPE_INFO* rgOtherLogo;
	}
	[CRepr]
	public struct CERT_BIOMETRIC_DATA
	{
		public CERT_BIOMETRIC_DATA_TYPE dwTypeOfBiometricDataChoice;
		public using _Anonymous_e__Union Anonymous;
		public CERT_HASHED_URL HashedUrl;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint32 dwPredefined;
			public PSTR pszObjId;
		}
	}
	[CRepr]
	public struct CERT_BIOMETRIC_EXT_INFO
	{
		public uint32 cBiometricData;
		public CERT_BIOMETRIC_DATA* rgBiometricData;
	}
	[CRepr]
	public struct OCSP_SIGNATURE_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER SignatureAlgorithm;
		public CRYPT_BIT_BLOB Signature;
		public uint32 cCertEncoded;
		public CRYPTOAPI_BLOB* rgCertEncoded;
	}
	[CRepr]
	public struct OCSP_SIGNED_REQUEST_INFO
	{
		public CRYPTOAPI_BLOB ToBeSigned;
		public OCSP_SIGNATURE_INFO* pOptionalSignatureInfo;
	}
	[CRepr]
	public struct OCSP_CERT_ID
	{
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPTOAPI_BLOB IssuerNameHash;
		public CRYPTOAPI_BLOB IssuerKeyHash;
		public CRYPTOAPI_BLOB SerialNumber;
	}
	[CRepr]
	public struct OCSP_REQUEST_ENTRY
	{
		public OCSP_CERT_ID CertId;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct OCSP_REQUEST_INFO
	{
		public uint32 dwVersion;
		public CERT_ALT_NAME_ENTRY* pRequestorName;
		public uint32 cRequestEntry;
		public OCSP_REQUEST_ENTRY* rgRequestEntry;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct OCSP_RESPONSE_INFO
	{
		public uint32 dwStatus;
		public PSTR pszObjId;
		public CRYPTOAPI_BLOB Value;
	}
	[CRepr]
	public struct OCSP_BASIC_SIGNED_RESPONSE_INFO
	{
		public CRYPTOAPI_BLOB ToBeSigned;
		public OCSP_SIGNATURE_INFO SignatureInfo;
	}
	[CRepr]
	public struct OCSP_BASIC_REVOKED_INFO
	{
		public FILETIME RevocationDate;
		public CERT_REVOCATION_STATUS_REASON dwCrlReasonCode;
	}
	[CRepr]
	public struct OCSP_BASIC_RESPONSE_ENTRY
	{
		public OCSP_CERT_ID CertId;
		public uint32 dwCertStatus;
		public using _Anonymous_e__Union Anonymous;
		public FILETIME ThisUpdate;
		public FILETIME NextUpdate;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public OCSP_BASIC_REVOKED_INFO* pRevokedInfo;
		}
	}
	[CRepr]
	public struct OCSP_BASIC_RESPONSE_INFO
	{
		public uint32 dwVersion;
		public uint32 dwResponderIdChoice;
		public using _Anonymous_e__Union Anonymous;
		public FILETIME ProducedAt;
		public uint32 cResponseEntry;
		public OCSP_BASIC_RESPONSE_ENTRY* rgResponseEntry;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CRYPTOAPI_BLOB ByNameResponderId;
			public CRYPTOAPI_BLOB ByKeyResponderId;
		}
	}
	[CRepr]
	public struct CERT_SUPPORTED_ALGORITHM_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER Algorithm;
		public CRYPT_BIT_BLOB IntendedKeyUsage;
		public CERT_POLICIES_INFO IntendedCertPolicies;
	}
	[CRepr]
	public struct CERT_TPM_SPECIFICATION_INFO
	{
		public PWSTR pwszFamily;
		public uint32 dwLevel;
		public uint32 dwRevision;
	}
	[CRepr]
	public struct CRYPT_OID_FUNC_ENTRY
	{
		public PSTR pszOID;
		public void* pvFuncAddr;
	}
	[CRepr]
	public struct CRYPT_OID_INFO
	{
		public uint32 cbSize;
		public PSTR pszOID;
		public PWSTR pwszName;
		public uint32 dwGroupId;
		public using _Anonymous_e__Union Anonymous;
		public CRYPTOAPI_BLOB ExtraInfo;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint32 dwValue;
			public uint32 Algid;
			public uint32 dwLength;
		}
	}
	[CRepr]
	public struct CERT_STRONG_SIGN_SERIALIZED_INFO
	{
		public CERT_STRONG_SIGN_FLAGS dwFlags;
		public PWSTR pwszCNGSignHashAlgids;
		public PWSTR pwszCNGPubKeyMinBitLengths;
	}
	[CRepr]
	public struct CERT_STRONG_SIGN_PARA
	{
		public uint32 cbSize;
		public uint32 dwInfoChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public void* pvInfo;
			public CERT_STRONG_SIGN_SERIALIZED_INFO* pSerializedInfo;
			public PSTR pszOID;
		}
	}
	[CRepr]
	public struct CERT_ISSUER_SERIAL_NUMBER
	{
		public CRYPTOAPI_BLOB Issuer;
		public CRYPTOAPI_BLOB SerialNumber;
	}
	[CRepr]
	public struct CERT_ID
	{
		public CERT_ID_OPTION dwIdChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_ISSUER_SERIAL_NUMBER IssuerSerialNumber;
			public CRYPTOAPI_BLOB KeyId;
			public CRYPTOAPI_BLOB HashId;
		}
	}
	[CRepr]
	public struct CMSG_SIGNER_ENCODE_INFO
	{
		public uint32 cbSize;
		public CERT_INFO* pCertInfo;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwKeySpec;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public void* pvHashAuxInfo;
		public uint32 cAuthAttr;
		public CRYPT_ATTRIBUTE* rgAuthAttr;
		public uint32 cUnauthAttr;
		public CRYPT_ATTRIBUTE* rgUnauthAttr;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct CMSG_SIGNED_ENCODE_INFO
	{
		public uint32 cbSize;
		public uint32 cSigners;
		public CMSG_SIGNER_ENCODE_INFO* rgSigners;
		public uint32 cCertEncoded;
		public CRYPTOAPI_BLOB* rgCertEncoded;
		public uint32 cCrlEncoded;
		public CRYPTOAPI_BLOB* rgCrlEncoded;
	}
	[CRepr]
	public struct CMSG_ENVELOPED_ENCODE_INFO
	{
		public uint32 cbSize;
		public uint hCryptProv;
		public CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
		public void* pvEncryptionAuxInfo;
		public uint32 cRecipients;
		public CERT_INFO** rgpRecipients;
	}
	[CRepr]
	public struct CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO
	{
		public uint32 cbSize;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public void* pvKeyEncryptionAuxInfo;
		public uint hCryptProv;
		public CRYPT_BIT_BLOB RecipientPublicKey;
		public CERT_ID RecipientId;
	}
	[CRepr]
	public struct CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO
	{
		public uint32 cbSize;
		public CRYPT_BIT_BLOB RecipientPublicKey;
		public CERT_ID RecipientId;
		public FILETIME Date;
		public CRYPT_ATTRIBUTE_TYPE_VALUE* pOtherAttr;
	}
	[CRepr]
	public struct CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO
	{
		public uint32 cbSize;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public void* pvKeyEncryptionAuxInfo;
		public CRYPT_ALGORITHM_IDENTIFIER KeyWrapAlgorithm;
		public void* pvKeyWrapAuxInfo;
		public uint hCryptProv;
		public uint32 dwKeySpec;
		public CMSG_KEY_AGREE_OPTION dwKeyChoice;
		public using _Anonymous_e__Union Anonymous;
		public CRYPTOAPI_BLOB UserKeyingMaterial;
		public uint32 cRecipientEncryptedKeys;
		public CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO** rgpRecipientEncryptedKeys;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CRYPT_ALGORITHM_IDENTIFIER* pEphemeralAlgorithm;
			public CERT_ID* pSenderId;
		}
	}
	[CRepr]
	public struct CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO
	{
		public uint32 cbSize;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public void* pvKeyEncryptionAuxInfo;
		public uint hCryptProv;
		public uint32 dwKeyChoice;
		public using _Anonymous_e__Union Anonymous;
		public CRYPTOAPI_BLOB KeyId;
		public FILETIME Date;
		public CRYPT_ATTRIBUTE_TYPE_VALUE* pOtherAttr;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hKeyEncryptionKey;
			public void* pvKeyEncryptionKey;
		}
	}
	[CRepr]
	public struct CMSG_RECIPIENT_ENCODE_INFO
	{
		public uint32 dwRecipientChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO* pKeyTrans;
			public CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO* pKeyAgree;
			public CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO* pMailList;
		}
	}
	[CRepr]
	public struct CMSG_RC2_AUX_INFO
	{
		public uint32 cbSize;
		public uint32 dwBitLen;
	}
	[CRepr]
	public struct CMSG_SP3_COMPATIBLE_AUX_INFO
	{
		public uint32 cbSize;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct CMSG_RC4_AUX_INFO
	{
		public uint32 cbSize;
		public uint32 dwBitLen;
	}
	[CRepr]
	public struct CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO
	{
		public uint32 cbSize;
		public CMSG_SIGNED_ENCODE_INFO SignedInfo;
		public CMSG_ENVELOPED_ENCODE_INFO EnvelopedInfo;
	}
	[CRepr]
	public struct CMSG_HASHED_ENCODE_INFO
	{
		public uint32 cbSize;
		public uint hCryptProv;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public void* pvHashAuxInfo;
	}
	[CRepr]
	public struct CMSG_ENCRYPTED_ENCODE_INFO
	{
		public uint32 cbSize;
		public CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
		public void* pvEncryptionAuxInfo;
	}
	[CRepr]
	public struct CMSG_STREAM_INFO
	{
		public uint32 cbContent;
		public PFN_CMSG_STREAM_OUTPUT pfnStreamOutput;
		public void* pvArg;
	}
	[CRepr]
	public struct CMSG_SIGNER_INFO
	{
		public uint32 dwVersion;
		public CRYPTOAPI_BLOB Issuer;
		public CRYPTOAPI_BLOB SerialNumber;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedHash;
		public CRYPT_ATTRIBUTES AuthAttrs;
		public CRYPT_ATTRIBUTES UnauthAttrs;
	}
	[CRepr]
	public struct CMSG_CMS_SIGNER_INFO
	{
		public uint32 dwVersion;
		public CERT_ID SignerId;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPT_ALGORITHM_IDENTIFIER HashEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedHash;
		public CRYPT_ATTRIBUTES AuthAttrs;
		public CRYPT_ATTRIBUTES UnauthAttrs;
	}
	[CRepr]
	public struct CMSG_KEY_TRANS_RECIPIENT_INFO
	{
		public uint32 dwVersion;
		public CERT_ID RecipientId;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedKey;
	}
	[CRepr]
	public struct CMSG_RECIPIENT_ENCRYPTED_KEY_INFO
	{
		public CERT_ID RecipientId;
		public CRYPTOAPI_BLOB EncryptedKey;
		public FILETIME Date;
		public CRYPT_ATTRIBUTE_TYPE_VALUE* pOtherAttr;
	}
	[CRepr]
	public struct CMSG_KEY_AGREE_RECIPIENT_INFO
	{
		public uint32 dwVersion;
		public CMSG_KEY_AGREE_ORIGINATOR dwOriginatorChoice;
		public using _Anonymous_e__Union Anonymous;
		public CRYPTOAPI_BLOB UserKeyingMaterial;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public uint32 cRecipientEncryptedKeys;
		public CMSG_RECIPIENT_ENCRYPTED_KEY_INFO** rgpRecipientEncryptedKeys;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_ID OriginatorCertId;
			public CERT_PUBLIC_KEY_INFO OriginatorPublicKeyInfo;
		}
	}
	[CRepr]
	public struct CMSG_MAIL_LIST_RECIPIENT_INFO
	{
		public uint32 dwVersion;
		public CRYPTOAPI_BLOB KeyId;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedKey;
		public FILETIME Date;
		public CRYPT_ATTRIBUTE_TYPE_VALUE* pOtherAttr;
	}
	[CRepr]
	public struct CMSG_CMS_RECIPIENT_INFO
	{
		public uint32 dwRecipientChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CMSG_KEY_TRANS_RECIPIENT_INFO* pKeyTrans;
			public CMSG_KEY_AGREE_RECIPIENT_INFO* pKeyAgree;
			public CMSG_MAIL_LIST_RECIPIENT_INFO* pMailList;
		}
	}
	[CRepr]
	public struct CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA
	{
		public uint32 cbSize;
		public uint hCryptProv;
		public uint32 dwSignerIndex;
		public uint32 dwSignerType;
		public void* pvSigner;
	}
	[CRepr]
	public struct CMSG_CTRL_DECRYPT_PARA
	{
		public uint32 cbSize;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwKeySpec;
		public uint32 dwRecipientIndex;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct CMSG_CTRL_KEY_TRANS_DECRYPT_PARA
	{
		public uint32 cbSize;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwKeySpec;
		public CMSG_KEY_TRANS_RECIPIENT_INFO* pKeyTrans;
		public uint32 dwRecipientIndex;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct CMSG_CTRL_KEY_AGREE_DECRYPT_PARA
	{
		public uint32 cbSize;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwKeySpec;
		public CMSG_KEY_AGREE_RECIPIENT_INFO* pKeyAgree;
		public uint32 dwRecipientIndex;
		public uint32 dwRecipientEncryptedKeyIndex;
		public CRYPT_BIT_BLOB OriginatorPublicKey;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct CMSG_CTRL_MAIL_LIST_DECRYPT_PARA
	{
		public uint32 cbSize;
		public uint hCryptProv;
		public CMSG_MAIL_LIST_RECIPIENT_INFO* pMailList;
		public uint32 dwRecipientIndex;
		public uint32 dwKeyChoice;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hKeyEncryptionKey;
			public void* pvKeyEncryptionKey;
		}
	}
	[CRepr]
	public struct CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA
	{
		public uint32 cbSize;
		public uint32 dwSignerIndex;
		public CRYPTOAPI_BLOB blob;
	}
	[CRepr]
	public struct CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA
	{
		public uint32 cbSize;
		public uint32 dwSignerIndex;
		public uint32 dwUnauthAttrIndex;
	}
	[CRepr]
	public struct CMSG_CONTENT_ENCRYPT_INFO
	{
		public uint32 cbSize;
		public uint hCryptProv;
		public CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
		public void* pvEncryptionAuxInfo;
		public uint32 cRecipients;
		public CMSG_RECIPIENT_ENCODE_INFO* rgCmsRecipients;
		public PFN_CMSG_ALLOC pfnAlloc;
		public PFN_CMSG_FREE pfnFree;
		public uint32 dwEncryptFlags;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwFlags;
		public BOOL fCNG;
		public uint8* pbCNGContentEncryptKeyObject;
		public uint8* pbContentEncryptKey;
		public uint32 cbContentEncryptKey;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hContentEncryptKey;
			public BCRYPT_KEY_HANDLE hCNGContentEncryptKey;
		}
	}
	[CRepr]
	public struct CMSG_KEY_TRANS_ENCRYPT_INFO
	{
		public uint32 cbSize;
		public uint32 dwRecipientIndex;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedKey;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct CMSG_KEY_AGREE_KEY_ENCRYPT_INFO
	{
		public uint32 cbSize;
		public CRYPTOAPI_BLOB EncryptedKey;
	}
	[CRepr]
	public struct CMSG_KEY_AGREE_ENCRYPT_INFO
	{
		public uint32 cbSize;
		public uint32 dwRecipientIndex;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public CRYPTOAPI_BLOB UserKeyingMaterial;
		public CMSG_KEY_AGREE_ORIGINATOR dwOriginatorChoice;
		public using _Anonymous_e__Union Anonymous;
		public uint32 cKeyAgreeKeyEncryptInfo;
		public CMSG_KEY_AGREE_KEY_ENCRYPT_INFO** rgpKeyAgreeKeyEncryptInfo;
		public uint32 dwFlags;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CERT_ID OriginatorCertId;
			public CERT_PUBLIC_KEY_INFO OriginatorPublicKeyInfo;
		}
	}
	[CRepr]
	public struct CMSG_MAIL_LIST_ENCRYPT_INFO
	{
		public uint32 cbSize;
		public uint32 dwRecipientIndex;
		public CRYPT_ALGORITHM_IDENTIFIER KeyEncryptionAlgorithm;
		public CRYPTOAPI_BLOB EncryptedKey;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct CMSG_CNG_CONTENT_DECRYPT_INFO
	{
		public uint32 cbSize;
		public CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
		public PFN_CMSG_ALLOC pfnAlloc;
		public PFN_CMSG_FREE pfnFree;
		public uint hNCryptKey;
		public uint8* pbContentEncryptKey;
		public uint32 cbContentEncryptKey;
		public BCRYPT_KEY_HANDLE hCNGContentEncryptKey;
		public uint8* pbCNGContentEncryptKeyObject;
	}
	[CRepr]
	public struct CERT_CONTEXT
	{
		public uint32 dwCertEncodingType;
		public uint8* pbCertEncoded;
		public uint32 cbCertEncoded;
		public CERT_INFO* pCertInfo;
		public void* hCertStore;
	}
	[CRepr]
	public struct CRL_CONTEXT
	{
		public uint32 dwCertEncodingType;
		public uint8* pbCrlEncoded;
		public uint32 cbCrlEncoded;
		public CRL_INFO* pCrlInfo;
		public void* hCertStore;
	}
	[CRepr]
	public struct CTL_CONTEXT
	{
		public uint32 dwMsgAndCertEncodingType;
		public uint8* pbCtlEncoded;
		public uint32 cbCtlEncoded;
		public CTL_INFO* pCtlInfo;
		public void* hCertStore;
		public void* hCryptMsg;
		public uint8* pbCtlContent;
		public uint32 cbCtlContent;
	}
	[CRepr]
	public struct CRYPT_KEY_PROV_PARAM
	{
		public uint32 dwParam;
		public uint8* pbData;
		public uint32 cbData;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct CRYPT_KEY_PROV_INFO
	{
		public PWSTR pwszContainerName;
		public PWSTR pwszProvName;
		public uint32 dwProvType;
		public CRYPT_KEY_FLAGS dwFlags;
		public uint32 cProvParam;
		public CRYPT_KEY_PROV_PARAM* rgProvParam;
		public uint32 dwKeySpec;
	}
	[CRepr]
	public struct CERT_KEY_CONTEXT
	{
		public uint32 cbSize;
		public using _Anonymous_e__Union Anonymous;
		public uint32 dwKeySpec;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct ROOT_INFO_LUID
	{
		public uint32 LowPart;
		public int32 HighPart;
	}
	[CRepr]
	public struct CRYPT_SMART_CARD_ROOT_INFO
	{
		public uint8[16] rgbCardID;
		public ROOT_INFO_LUID luid;
	}
	[CRepr]
	public struct CERT_SYSTEM_STORE_RELOCATE_PARA
	{
		public _Anonymous1_e__Union Anonymous1;
		public _Anonymous2_e__Union Anonymous2;
		
		[CRepr, Union]
		public struct _Anonymous2_e__Union
		{
			public void* pvSystemStore;
			public PSTR pszSystemStore;
			public PWSTR pwszSystemStore;
		}
		[CRepr, Union]
		public struct _Anonymous1_e__Union
		{
			public HKEY hKeyBase;
			public void* pvBase;
		}
	}
	[CRepr]
	public struct CERT_REGISTRY_STORE_CLIENT_GPT_PARA
	{
		public HKEY hKeyBase;
		public PWSTR pwszRegPath;
	}
	[CRepr]
	public struct CERT_REGISTRY_STORE_ROAMING_PARA
	{
		public HKEY hKey;
		public PWSTR pwszStoreDirectory;
	}
	[CRepr]
	public struct CERT_LDAP_STORE_OPENED_PARA
	{
		public void* pvLdapSessionHandle;
		public PWSTR pwszLdapUrl;
	}
	[CRepr]
	public struct CERT_STORE_PROV_INFO
	{
		public uint32 cbSize;
		public uint32 cStoreProvFunc;
		public void** rgpvStoreProvFunc;
		public void* hStoreProv;
		public CERT_STORE_PROV_FLAGS dwStoreProvFlags;
		public void* hStoreProvFuncAddr2;
	}
	[CRepr]
	public struct CERT_STORE_PROV_FIND_INFO
	{
		public uint32 cbSize;
		public uint32 dwMsgAndCertEncodingType;
		public uint32 dwFindFlags;
		public uint32 dwFindType;
		public void* pvFindPara;
	}
	[CRepr]
	public struct CRL_FIND_ISSUED_FOR_PARA
	{
		public CERT_CONTEXT* pSubjectCert;
		public CERT_CONTEXT* pIssuerCert;
	}
	[CRepr]
	public struct CTL_ANY_SUBJECT_INFO
	{
		public CRYPT_ALGORITHM_IDENTIFIER SubjectAlgorithm;
		public CRYPTOAPI_BLOB SubjectIdentifier;
	}
	[CRepr]
	public struct CTL_FIND_USAGE_PARA
	{
		public uint32 cbSize;
		public CTL_USAGE SubjectUsage;
		public CRYPTOAPI_BLOB ListIdentifier;
		public CERT_INFO* pSigner;
	}
	[CRepr]
	public struct CTL_FIND_SUBJECT_PARA
	{
		public uint32 cbSize;
		public CTL_FIND_USAGE_PARA* pUsagePara;
		public uint32 dwSubjectType;
		public void* pvSubject;
	}
	[CRepr]
	public struct CERT_CREATE_CONTEXT_PARA
	{
		public uint32 cbSize;
		public PFN_CRYPT_FREE pfnFree;
		public void* pvFree;
		public PFN_CERT_CREATE_CONTEXT_SORT_FUNC pfnSort;
		public void* pvSort;
	}
	[CRepr]
	public struct CERT_SYSTEM_STORE_INFO
	{
		public uint32 cbSize;
	}
	[CRepr]
	public struct CERT_PHYSICAL_STORE_INFO
	{
		public uint32 cbSize;
		public PSTR pszOpenStoreProvider;
		public uint32 dwOpenEncodingType;
		public uint32 dwOpenFlags;
		public CRYPTOAPI_BLOB OpenParameters;
		public uint32 dwFlags;
		public uint32 dwPriority;
	}
	[CRepr]
	public struct CTL_VERIFY_USAGE_PARA
	{
		public uint32 cbSize;
		public CRYPTOAPI_BLOB ListIdentifier;
		public uint32 cCtlStore;
		public void** rghCtlStore;
		public uint32 cSignerStore;
		public void** rghSignerStore;
	}
	[CRepr]
	public struct CTL_VERIFY_USAGE_STATUS
	{
		public uint32 cbSize;
		public uint32 dwError;
		public uint32 dwFlags;
		public CTL_CONTEXT** ppCtl;
		public uint32 dwCtlEntryIndex;
		public CERT_CONTEXT** ppSigner;
		public uint32 dwSignerIndex;
	}
	[CRepr]
	public struct CERT_REVOCATION_CRL_INFO
	{
		public uint32 cbSize;
		public CRL_CONTEXT* pBaseCrlContext;
		public CRL_CONTEXT* pDeltaCrlContext;
		public CRL_ENTRY* pCrlEntry;
		public BOOL fDeltaCrlEntry;
	}
	[CRepr]
	public struct CERT_REVOCATION_PARA
	{
		public uint32 cbSize;
		public CERT_CONTEXT* pIssuerCert;
		public uint32 cCertStore;
		public void** rgCertStore;
		public void* hCrlStore;
		public FILETIME* pftTimeToUse;
	}
	[CRepr]
	public struct CERT_REVOCATION_STATUS
	{
		public uint32 cbSize;
		public uint32 dwIndex;
		public uint32 dwError;
		public CERT_REVOCATION_STATUS_REASON dwReason;
		public BOOL fHasFreshnessTime;
		public uint32 dwFreshnessTime;
	}
	[CRepr]
	public struct CRYPT_VERIFY_CERT_SIGN_STRONG_PROPERTIES_INFO
	{
		public CRYPTOAPI_BLOB CertSignHashCNGAlgPropData;
		public CRYPTOAPI_BLOB CertIssuerPubKeyBitLengthPropData;
	}
	[CRepr]
	public struct CRYPT_VERIFY_CERT_SIGN_WEAK_HASH_INFO
	{
		public uint32 cCNGHashAlgid;
		public PWSTR* rgpwszCNGHashAlgid;
		public uint32 dwWeakIndex;
	}
	[CRepr]
	public struct CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA
	{
		public uint32 cOID;
		public PSTR* rgpszOID;
	}
	[CRepr]
	public struct CRYPT_SIGN_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgEncodingType;
		public CERT_CONTEXT* pSigningCert;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public void* pvHashAuxInfo;
		public uint32 cMsgCert;
		public CERT_CONTEXT** rgpMsgCert;
		public uint32 cMsgCrl;
		public CRL_CONTEXT** rgpMsgCrl;
		public uint32 cAuthAttr;
		public CRYPT_ATTRIBUTE* rgAuthAttr;
		public uint32 cUnauthAttr;
		public CRYPT_ATTRIBUTE* rgUnauthAttr;
		public uint32 dwFlags;
		public uint32 dwInnerContentType;
	}
	[CRepr]
	public struct CRYPT_VERIFY_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgAndCertEncodingType;
		public uint hCryptProv;
		public PFN_CRYPT_GET_SIGNER_CERTIFICATE pfnGetSignerCertificate;
		public void* pvGetArg;
	}
	[CRepr]
	public struct CRYPT_ENCRYPT_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgEncodingType;
		public uint hCryptProv;
		public CRYPT_ALGORITHM_IDENTIFIER ContentEncryptionAlgorithm;
		public void* pvEncryptionAuxInfo;
		public uint32 dwFlags;
		public uint32 dwInnerContentType;
	}
	[CRepr]
	public struct CRYPT_DECRYPT_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgAndCertEncodingType;
		public uint32 cCertStore;
		public void** rghCertStore;
	}
	[CRepr]
	public struct CRYPT_HASH_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgEncodingType;
		public uint hCryptProv;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public void* pvHashAuxInfo;
	}
	[CRepr]
	public struct CRYPT_KEY_SIGN_MESSAGE_PARA
	{
		public uint32 cbSize;
		public CERT_QUERY_ENCODING_TYPE dwMsgAndCertEncodingType;
		public using _Anonymous_e__Union Anonymous;
		public CERT_KEY_SPEC dwKeySpec;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public void* pvHashAuxInfo;
		public CRYPT_ALGORITHM_IDENTIFIER PubKeyAlgorithm;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint hCryptProv;
			public uint hNCryptKey;
		}
	}
	[CRepr]
	public struct CRYPT_KEY_VERIFY_MESSAGE_PARA
	{
		public uint32 cbSize;
		public uint32 dwMsgEncodingType;
		public uint hCryptProv;
	}
	[CRepr]
	public struct CERT_CHAIN
	{
		public uint32 cCerts;
		public CRYPTOAPI_BLOB* certs;
		public CRYPT_KEY_PROV_INFO keyLocatorInfo;
	}
	[CRepr]
	public struct CRYPT_BLOB_ARRAY
	{
		public uint32 cBlob;
		public CRYPTOAPI_BLOB* rgBlob;
	}
	[CRepr]
	public struct CRYPT_CREDENTIALS
	{
		public uint32 cbSize;
		public PSTR pszCredentialsOid;
		public void* pvCredentials;
	}
	[CRepr]
	public struct CRYPT_PASSWORD_CREDENTIALSA
	{
		public uint32 cbSize;
		public PSTR pszUsername;
		public PSTR pszPassword;
	}
	[CRepr]
	public struct CRYPT_PASSWORD_CREDENTIALSW
	{
		public uint32 cbSize;
		public PWSTR pszUsername;
		public PWSTR pszPassword;
	}
	[CRepr]
	public struct CRYPTNET_URL_CACHE_PRE_FETCH_INFO
	{
		public uint32 cbSize;
		public uint32 dwObjectType;
		public uint32 dwError;
		public uint32 dwReserved;
		public FILETIME ThisUpdateTime;
		public FILETIME NextUpdateTime;
		public FILETIME PublishTime;
	}
	[CRepr]
	public struct CRYPTNET_URL_CACHE_FLUSH_INFO
	{
		public uint32 cbSize;
		public uint32 dwExemptSeconds;
		public FILETIME ExpireTime;
	}
	[CRepr]
	public struct CRYPTNET_URL_CACHE_RESPONSE_INFO
	{
		public uint32 cbSize;
		public uint16 wResponseType;
		public uint16 wResponseFlags;
		public FILETIME LastModifiedTime;
		public uint32 dwMaxAge;
		public PWSTR pwszETag;
		public uint32 dwProxyId;
	}
	[CRepr]
	public struct CRYPT_RETRIEVE_AUX_INFO
	{
		public uint32 cbSize;
		public FILETIME* pLastSyncTime;
		public uint32 dwMaxUrlRetrievalByteCount;
		public CRYPTNET_URL_CACHE_PRE_FETCH_INFO* pPreFetchInfo;
		public CRYPTNET_URL_CACHE_FLUSH_INFO* pFlushInfo;
		public CRYPTNET_URL_CACHE_RESPONSE_INFO** ppResponseInfo;
		public PWSTR pwszCacheFileNamePrefix;
		public FILETIME* pftCacheResync;
		public BOOL fProxyCacheRetrieval;
		public uint32 dwHttpStatusCode;
		public PWSTR* ppwszErrorResponseHeaders;
		public CRYPTOAPI_BLOB** ppErrorContentBlob;
	}
	[CRepr]
	public struct CRYPT_ASYNC_RETRIEVAL_COMPLETION
	{
		public PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC pfnCompletion;
		public void* pvCompletion;
	}
	[CRepr]
	public struct CRYPT_URL_ARRAY
	{
		public uint32 cUrl;
		public PWSTR* rgwszUrl;
	}
	[CRepr]
	public struct CRYPT_URL_INFO
	{
		public uint32 cbSize;
		public uint32 dwSyncDeltaTime;
		public uint32 cGroup;
		public uint32* rgcGroupEntry;
	}
	[CRepr]
	public struct CERT_CRL_CONTEXT_PAIR
	{
		public CERT_CONTEXT* pCertContext;
		public CRL_CONTEXT* pCrlContext;
	}
	[CRepr]
	public struct CRYPT_GET_TIME_VALID_OBJECT_EXTRA_INFO
	{
		public uint32 cbSize;
		public int32 iDeltaCrlIndicator;
		public FILETIME* pftCacheResync;
		public FILETIME* pLastSyncTime;
		public FILETIME* pMaxAgeTime;
		public CERT_REVOCATION_CHAIN_PARA* pChainPara;
		public CRYPTOAPI_BLOB* pDeltaCrlIndicator;
	}
	[CRepr]
	public struct CERT_CHAIN_ENGINE_CONFIG
	{
		public uint32 cbSize;
		public void* hRestrictedRoot;
		public void* hRestrictedTrust;
		public void* hRestrictedOther;
		public uint32 cAdditionalStore;
		public void** rghAdditionalStore;
		public uint32 dwFlags;
		public uint32 dwUrlRetrievalTimeout;
		public uint32 MaximumCachedCertificates;
		public uint32 CycleDetectionModulus;
		public void* hExclusiveRoot;
		public void* hExclusiveTrustedPeople;
		public uint32 dwExclusiveFlags;
	}
	[CRepr]
	public struct CERT_TRUST_STATUS
	{
		public uint32 dwErrorStatus;
		public uint32 dwInfoStatus;
	}
	[CRepr]
	public struct CERT_REVOCATION_INFO
	{
		public uint32 cbSize;
		public uint32 dwRevocationResult;
		public PSTR pszRevocationOid;
		public void* pvOidSpecificInfo;
		public BOOL fHasFreshnessTime;
		public uint32 dwFreshnessTime;
		public CERT_REVOCATION_CRL_INFO* pCrlInfo;
	}
	[CRepr]
	public struct CERT_TRUST_LIST_INFO
	{
		public uint32 cbSize;
		public CTL_ENTRY* pCtlEntry;
		public CTL_CONTEXT* pCtlContext;
	}
	[CRepr]
	public struct CERT_CHAIN_ELEMENT
	{
		public uint32 cbSize;
		public CERT_CONTEXT* pCertContext;
		public CERT_TRUST_STATUS TrustStatus;
		public CERT_REVOCATION_INFO* pRevocationInfo;
		public CTL_USAGE* pIssuanceUsage;
		public CTL_USAGE* pApplicationUsage;
		public PWSTR pwszExtendedErrorInfo;
	}
	[CRepr]
	public struct CERT_SIMPLE_CHAIN
	{
		public uint32 cbSize;
		public CERT_TRUST_STATUS TrustStatus;
		public uint32 cElement;
		public CERT_CHAIN_ELEMENT** rgpElement;
		public CERT_TRUST_LIST_INFO* pTrustListInfo;
		public BOOL fHasRevocationFreshnessTime;
		public uint32 dwRevocationFreshnessTime;
	}
	[CRepr]
	public struct CERT_CHAIN_CONTEXT
	{
		public uint32 cbSize;
		public CERT_TRUST_STATUS TrustStatus;
		public uint32 cChain;
		public CERT_SIMPLE_CHAIN** rgpChain;
		public uint32 cLowerQualityChainContext;
		public CERT_CHAIN_CONTEXT** rgpLowerQualityChainContext;
		public BOOL fHasRevocationFreshnessTime;
		public uint32 dwRevocationFreshnessTime;
		public uint32 dwCreateFlags;
		public Guid ChainId;
	}
	[CRepr]
	public struct CERT_USAGE_MATCH
	{
		public uint32 dwType;
		public CTL_USAGE Usage;
	}
	[CRepr]
	public struct CTL_USAGE_MATCH
	{
		public uint32 dwType;
		public CTL_USAGE Usage;
	}
	[CRepr]
	public struct CERT_CHAIN_PARA
	{
		public uint32 cbSize;
		public CERT_USAGE_MATCH RequestedUsage;
	}
	[CRepr]
	public struct CERT_REVOCATION_CHAIN_PARA
	{
		public uint32 cbSize;
		public HCERTCHAINENGINE hChainEngine;
		public void* hAdditionalStore;
		public uint32 dwChainFlags;
		public uint32 dwUrlRetrievalTimeout;
		public FILETIME* pftCurrentTime;
		public FILETIME* pftCacheResync;
		public uint32 cbMaxUrlRetrievalByteCount;
	}
	[CRepr]
	public struct CRL_REVOCATION_INFO
	{
		public CRL_ENTRY* pCrlEntry;
		public CRL_CONTEXT* pCrlContext;
		public CERT_CHAIN_CONTEXT* pCrlIssuerChain;
	}
	[CRepr]
	public struct CERT_CHAIN_FIND_BY_ISSUER_PARA
	{
		public uint32 cbSize;
		public PSTR pszUsageIdentifier;
		public uint32 dwKeySpec;
		public uint32 dwAcquirePrivateKeyFlags;
		public uint32 cIssuer;
		public CRYPTOAPI_BLOB* rgIssuer;
		public PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK pfnFindCallback;
		public void* pvFindArg;
	}
	[CRepr]
	public struct CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public CERT_CHAIN_POLICY_FLAGS dwFlags;
		public void* pvExtraPolicyPara;
	}
	[CRepr]
	public struct CERT_CHAIN_POLICY_STATUS
	{
		public uint32 cbSize;
		public uint32 dwError;
		public int32 lChainIndex;
		public int32 lElementIndex;
		public void* pvExtraPolicyStatus;
	}
	[CRepr]
	public struct AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public uint32 dwRegPolicySettings;
		public CMSG_SIGNER_INFO* pSignerInfo;
	}
	[CRepr]
	public struct AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS
	{
		public uint32 cbSize;
		public BOOL fCommercial;
	}
	[CRepr]
	public struct AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public uint32 dwRegPolicySettings;
		public BOOL fCommercial;
	}
	[CRepr]
	public struct HTTPSPolicyCallbackData
	{
		public using _Anonymous_e__Union Anonymous;
		public HTTPSPOLICY_CALLBACK_DATA_AUTH_TYPE dwAuthType;
		public uint32 fdwChecks;
		public PWSTR pwszServerName;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint32 cbStruct;
			public uint32 cbSize;
		}
	}
	[CRepr]
	public struct EV_EXTRA_CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public CERT_ROOT_PROGRAM_FLAGS dwRootProgramQualifierFlags;
	}
	[CRepr]
	public struct EV_EXTRA_CERT_CHAIN_POLICY_STATUS
	{
		public uint32 cbSize;
		public uint32 dwQualifiers;
		public uint32 dwIssuanceUsageIndex;
	}
	[CRepr]
	public struct SSL_F12_EXTRA_CERT_CHAIN_POLICY_STATUS
	{
		public uint32 cbSize;
		public uint32 dwErrorLevel;
		public uint32 dwErrorCategory;
		public uint32 dwReserved;
		public char16[256] wszErrorText;
	}
	[CRepr]
	public struct SSL_HPKP_HEADER_EXTRA_CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public uint32 dwReserved;
		public PWSTR pwszServerName;
		public PSTR[2] rgpszHpkpValue;
	}
	[CRepr]
	public struct SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_PARA
	{
		public uint32 cbSize;
		public uint32 dwReserved;
		public PWSTR pwszServerName;
	}
	[CRepr]
	public struct SSL_KEY_PIN_EXTRA_CERT_CHAIN_POLICY_STATUS
	{
		public uint32 cbSize;
		public int32 lError;
		public char16[512] wszErrorText;
	}
	[CRepr]
	public struct CRYPT_PKCS12_PBE_PARAMS
	{
		public int32 iIterations;
		public uint32 cbSalt;
	}
	[CRepr]
	public struct PKCS12_PBES2_EXPORT_PARAMS
	{
		public uint32 dwSize;
		public void* hNcryptDescriptor;
		public PWSTR pwszPbes2Alg;
	}
	[CRepr]
	public struct CERT_SERVER_OCSP_RESPONSE_CONTEXT
	{
		public uint32 cbSize;
		public uint8* pbEncodedOcspResponse;
		public uint32 cbEncodedOcspResponse;
	}
	[CRepr]
	public struct CERT_SERVER_OCSP_RESPONSE_OPEN_PARA
	{
		public uint32 cbSize;
		public uint32 dwFlags;
		public uint32* pcbUsedSize;
		public PWSTR pwszOcspDirectory;
		public PFN_CERT_SERVER_OCSP_RESPONSE_UPDATE_CALLBACK pfnUpdateCallback;
		public void* pvUpdateCallbackArg;
	}
	[CRepr]
	public struct CERT_SELECT_CHAIN_PARA
	{
		public HCERTCHAINENGINE hChainEngine;
		public FILETIME* pTime;
		public void* hAdditionalStore;
		public CERT_CHAIN_PARA* pChainPara;
		public uint32 dwFlags;
	}
	[CRepr]
	public struct CERT_SELECT_CRITERIA
	{
		public CERT_SELECT_CRITERIA_TYPE dwType;
		public uint32 cPara;
		public void** ppPara;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_REQUEST
	{
		public CRYPT_TIMESTAMP_VERSION dwVersion;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPTOAPI_BLOB HashedMessage;
		public PSTR pszTSAPolicyId;
		public CRYPTOAPI_BLOB Nonce;
		public BOOL fCertReq;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_RESPONSE
	{
		public CRYPT_TIMESTAMP_RESPONSE_STATUS dwStatus;
		public uint32 cFreeText;
		public PWSTR* rgFreeText;
		public CRYPT_BIT_BLOB FailureInfo;
		public CRYPTOAPI_BLOB ContentInfo;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_ACCURACY
	{
		public uint32 dwSeconds;
		public uint32 dwMillis;
		public uint32 dwMicros;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_INFO
	{
		public uint32 dwVersion;
		public PSTR pszTSAPolicyId;
		public CRYPT_ALGORITHM_IDENTIFIER HashAlgorithm;
		public CRYPTOAPI_BLOB HashedMessage;
		public CRYPTOAPI_BLOB SerialNumber;
		public FILETIME ftTime;
		public CRYPT_TIMESTAMP_ACCURACY* pvAccuracy;
		public BOOL fOrdering;
		public CRYPTOAPI_BLOB Nonce;
		public CRYPTOAPI_BLOB Tsa;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_CONTEXT
	{
		public uint32 cbEncoded;
		public uint8* pbEncoded;
		public CRYPT_TIMESTAMP_INFO* pTimeStamp;
	}
	[CRepr]
	public struct CRYPT_TIMESTAMP_PARA
	{
		public PSTR pszTSAPolicyId;
		public BOOL fRequestCerts;
		public CRYPTOAPI_BLOB Nonce;
		public uint32 cExtension;
		public CERT_EXTENSION* rgExtension;
	}
	[CRepr]
	public struct CRYPT_OBJECT_LOCATOR_PROVIDER_TABLE
	{
		public uint32 cbSize;
		public PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_GET pfnGet;
		public PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_RELEASE pfnRelease;
		public PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_PASSWORD pfnFreePassword;
		public PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE pfnFree;
		public PFN_CRYPT_OBJECT_LOCATOR_PROVIDER_FREE_IDENTIFIER pfnFreeIdentifier;
	}
	[CRepr]
	public struct CRYPTPROTECT_PROMPTSTRUCT
	{
		public uint32 cbSize;
		public uint32 dwPromptFlags;
		public HWND hwndApp;
		public PWSTR szPrompt;
	}
	[CRepr]
	public struct NCRYPT_PROTECT_STREAM_INFO
	{
		public PFNCryptStreamOutputCallback pfnStreamOutput;
		public void* pvCallbackCtxt;
	}
	[CRepr]
	public struct NCRYPT_PROTECT_STREAM_INFO_EX
	{
		public PFNCryptStreamOutputCallbackEx pfnStreamOutput;
		public void* pvCallbackCtxt;
	}
	[CRepr]
	public struct CRYPT_XML_BLOB
	{
		public CRYPT_XML_CHARSET dwCharset;
		public uint32 cbData;
		public uint8* pbData;
	}
	[CRepr]
	public struct CRYPT_XML_DATA_BLOB
	{
		public uint32 cbData;
		public uint8* pbData;
	}
	[CRepr]
	public struct CRYPT_XML_PROPERTY
	{
		public CRYPT_XML_PROPERTY_ID dwPropId;
		public void* pvValue;
		public uint32 cbValue;
	}
	[CRepr]
	public struct CRYPT_XML_DATA_PROVIDER
	{
		public void* pvCallbackState;
		public uint32 cbBufferSize;
		public PFN_CRYPT_XML_DATA_PROVIDER_READ pfnRead;
		public PFN_CRYPT_XML_DATA_PROVIDER_CLOSE pfnClose;
	}
	[CRepr]
	public struct CRYPT_XML_STATUS
	{
		public uint32 cbSize;
		public CRYPT_XML_STATUS_ERROR_STATUS dwErrorStatus;
		public CRYPT_XML_STATUS_INFO_STATUS dwInfoStatus;
	}
	[CRepr]
	public struct CRYPT_XML_ALGORITHM
	{
		public uint32 cbSize;
		public PWSTR wszAlgorithm;
		public CRYPT_XML_BLOB Encoded;
	}
	[CRepr]
	public struct CRYPT_XML_TRANSFORM_INFO
	{
		public uint32 cbSize;
		public PWSTR wszAlgorithm;
		public uint32 cbBufferSize;
		public CRYPT_XML_TRANSFORM_FLAGS dwFlags;
		public PFN_CRYPT_XML_CREATE_TRANSFORM pfnCreateTransform;
	}
	[CRepr]
	public struct CRYPT_XML_TRANSFORM_CHAIN_CONFIG
	{
		public uint32 cbSize;
		public uint32 cTransformInfo;
		public CRYPT_XML_TRANSFORM_INFO** rgpTransformInfo;
	}
	[CRepr]
	public struct CRYPT_XML_KEY_DSA_KEY_VALUE
	{
		public CRYPT_XML_DATA_BLOB P;
		public CRYPT_XML_DATA_BLOB Q;
		public CRYPT_XML_DATA_BLOB G;
		public CRYPT_XML_DATA_BLOB Y;
		public CRYPT_XML_DATA_BLOB J;
		public CRYPT_XML_DATA_BLOB Seed;
		public CRYPT_XML_DATA_BLOB Counter;
	}
	[CRepr]
	public struct CRYPT_XML_KEY_ECDSA_KEY_VALUE
	{
		public PWSTR wszNamedCurve;
		public CRYPT_XML_DATA_BLOB X;
		public CRYPT_XML_DATA_BLOB Y;
		public CRYPT_XML_BLOB ExplicitPara;
	}
	[CRepr]
	public struct CRYPT_XML_KEY_RSA_KEY_VALUE
	{
		public CRYPT_XML_DATA_BLOB Modulus;
		public CRYPT_XML_DATA_BLOB Exponent;
	}
	[CRepr]
	public struct CRYPT_XML_KEY_VALUE
	{
		public CRYPT_XML_KEY_VALUE_TYPE dwType;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CRYPT_XML_KEY_DSA_KEY_VALUE DSAKeyValue;
			public CRYPT_XML_KEY_RSA_KEY_VALUE RSAKeyValue;
			public CRYPT_XML_KEY_ECDSA_KEY_VALUE ECDSAKeyValue;
			public CRYPT_XML_BLOB Custom;
		}
	}
	[CRepr]
	public struct CRYPT_XML_ISSUER_SERIAL
	{
		public PWSTR wszIssuer;
		public PWSTR wszSerial;
	}
	[CRepr]
	public struct CRYPT_XML_X509DATA_ITEM
	{
		public CRYPT_XML_X509DATA_TYPE dwType;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CRYPT_XML_ISSUER_SERIAL IssuerSerial;
			public CRYPT_XML_DATA_BLOB SKI;
			public PWSTR wszSubjectName;
			public CRYPT_XML_DATA_BLOB Certificate;
			public CRYPT_XML_DATA_BLOB CRL;
			public CRYPT_XML_BLOB Custom;
		}
	}
	[CRepr]
	public struct CRYPT_XML_X509DATA
	{
		public uint32 cX509Data;
		public CRYPT_XML_X509DATA_ITEM* rgX509Data;
	}
	[CRepr]
	public struct CRYPT_XML_KEY_INFO_ITEM
	{
		public CRYPT_XML_KEYINFO_TYPE dwType;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public PWSTR wszKeyName;
			public CRYPT_XML_KEY_VALUE KeyValue;
			public CRYPT_XML_BLOB RetrievalMethod;
			public CRYPT_XML_X509DATA X509Data;
			public CRYPT_XML_BLOB Custom;
		}
	}
	[CRepr]
	public struct CRYPT_XML_KEY_INFO
	{
		public uint32 cbSize;
		public PWSTR wszId;
		public uint32 cKeyInfo;
		public CRYPT_XML_KEY_INFO_ITEM* rgKeyInfo;
		public BCRYPT_KEY_HANDLE hVerifyKey;
	}
	[CRepr]
	public struct CRYPT_XML_REFERENCE
	{
		public uint32 cbSize;
		public void* hReference;
		public PWSTR wszId;
		public PWSTR wszUri;
		public PWSTR wszType;
		public CRYPT_XML_ALGORITHM DigestMethod;
		public CRYPTOAPI_BLOB DigestValue;
		public uint32 cTransform;
		public CRYPT_XML_ALGORITHM* rgTransform;
	}
	[CRepr]
	public struct CRYPT_XML_REFERENCES
	{
		public uint32 cReference;
		public CRYPT_XML_REFERENCE** rgpReference;
	}
	[CRepr]
	public struct CRYPT_XML_SIGNED_INFO
	{
		public uint32 cbSize;
		public PWSTR wszId;
		public CRYPT_XML_ALGORITHM Canonicalization;
		public CRYPT_XML_ALGORITHM SignatureMethod;
		public uint32 cReference;
		public CRYPT_XML_REFERENCE** rgpReference;
		public CRYPT_XML_BLOB Encoded;
	}
	[CRepr]
	public struct CRYPT_XML_OBJECT
	{
		public uint32 cbSize;
		public void* hObject;
		public PWSTR wszId;
		public PWSTR wszMimeType;
		public PWSTR wszEncoding;
		public CRYPT_XML_REFERENCES Manifest;
		public CRYPT_XML_BLOB Encoded;
	}
	[CRepr]
	public struct CRYPT_XML_SIGNATURE
	{
		public uint32 cbSize;
		public void* hSignature;
		public PWSTR wszId;
		public CRYPT_XML_SIGNED_INFO SignedInfo;
		public CRYPTOAPI_BLOB SignatureValue;
		public CRYPT_XML_KEY_INFO* pKeyInfo;
		public uint32 cObject;
		public CRYPT_XML_OBJECT** rgpObject;
	}
	[CRepr]
	public struct CRYPT_XML_DOC_CTXT
	{
		public uint32 cbSize;
		public void* hDocCtxt;
		public CRYPT_XML_TRANSFORM_CHAIN_CONFIG* pTransformsConfig;
		public uint32 cSignature;
		public CRYPT_XML_SIGNATURE** rgpSignature;
	}
	[CRepr]
	public struct CRYPT_XML_KEYINFO_PARAM
	{
		public PWSTR wszId;
		public PWSTR wszKeyName;
		public CRYPTOAPI_BLOB SKI;
		public PWSTR wszSubjectName;
		public uint32 cCertificate;
		public CRYPTOAPI_BLOB* rgCertificate;
		public uint32 cCRL;
		public CRYPTOAPI_BLOB* rgCRL;
	}
	[CRepr]
	public struct CRYPT_XML_ALGORITHM_INFO
	{
		public uint32 cbSize;
		public PWSTR wszAlgorithmURI;
		public PWSTR wszName;
		public CRYPT_XML_GROUP_ID dwGroupId;
		public PWSTR wszCNGAlgid;
		public PWSTR wszCNGExtraAlgid;
		public uint32 dwSignFlags;
		public uint32 dwVerifyFlags;
		public void* pvPaddingInfo;
		public void* pvExtraInfo;
	}
	[CRepr]
	public struct CRYPT_XML_CRYPTOGRAPHIC_INTERFACE
	{
		public uint32 cbSize;
		public CryptXmlDllEncodeAlgorithm fpCryptXmlEncodeAlgorithm;
		public CryptXmlDllCreateDigest fpCryptXmlCreateDigest;
		public CryptXmlDllDigestData fpCryptXmlDigestData;
		public CryptXmlDllFinalizeDigest fpCryptXmlFinalizeDigest;
		public CryptXmlDllCloseDigest fpCryptXmlCloseDigest;
		public CryptXmlDllSignData fpCryptXmlSignData;
		public CryptXmlDllVerifySignature fpCryptXmlVerifySignature;
		public CryptXmlDllGetAlgorithmInfo fpCryptXmlGetAlgorithmInfo;
	}
	[CRepr]
	public struct INFORMATIONCARD_ASYMMETRIC_CRYPTO_PARAMETERS
	{
		public int32 keySize;
		public PWSTR keyExchangeAlgorithm;
		public PWSTR signatureAlgorithm;
	}
	[CRepr]
	public struct INFORMATIONCARD_SYMMETRIC_CRYPTO_PARAMETERS
	{
		public int32 keySize;
		public int32 blockSize;
		public int32 feedbackSize;
	}
	[CRepr]
	public struct INFORMATIONCARD_TRANSFORM_CRYPTO_PARAMETERS
	{
		public int32 inputBlockSize;
		public int32 outputBlockSize;
		public BOOL canTransformMultipleBlocks;
		public BOOL canReuseTransform;
	}
	[CRepr]
	public struct INFORMATIONCARD_HASH_CRYPTO_PARAMETERS
	{
		public int32 hashSize;
		public INFORMATIONCARD_TRANSFORM_CRYPTO_PARAMETERS transform;
	}
	[CRepr]
	public struct INFORMATIONCARD_CRYPTO_HANDLE
	{
		public HandleType type;
		public int64 expiration;
		public void* cryptoParameters;
	}
	[CRepr, Packed(1)]
	public struct GENERIC_XML_TOKEN
	{
		public FILETIME createDate;
		public FILETIME expiryDate;
		public PWSTR xmlToken;
		public PWSTR internalTokenReference;
		public PWSTR externalTokenReference;
	}
	[CRepr]
	public struct POLICY_ELEMENT
	{
		public PWSTR targetEndpointAddress;
		public PWSTR issuerEndpointAddress;
		public PWSTR issuedTokenParameters;
		public PWSTR privacyNoticeLink;
		public uint32 privacyNoticeVersion;
		public BOOL useManagedPresentation;
	}
	[CRepr]
	public struct ENDPOINTADDRESS
	{
		public PWSTR serviceUrl;
		public PWSTR policyUrl;
		public CRYPTOAPI_BLOB rawCertificate;
	}
	[CRepr]
	public struct ENDPOINTADDRESS2
	{
		public PWSTR serviceUrl;
		public PWSTR policyUrl;
		public uint32 identityType;
		public void* identityBytes;
	}
	[CRepr]
	public struct CERTIFICATE_CHAIN_BLOB
	{
		public uint32 certCount;
		public CRYPTOAPI_BLOB* rawCertificates;
	}
	[CRepr]
	public struct CLAIMLIST
	{
		public uint32 count;
		public PWSTR* claims;
	}
	[CRepr]
	public struct RECIPIENTPOLICY
	{
		public ENDPOINTADDRESS recipient;
		public ENDPOINTADDRESS issuer;
		public PWSTR tokenType;
		public CLAIMLIST requiredClaims;
		public CLAIMLIST optionalClaims;
		public PWSTR privacyUrl;
		public uint32 privacyVersion;
	}
	[CRepr]
	public struct RECIPIENTPOLICY2
	{
		public ENDPOINTADDRESS2 recipient;
		public ENDPOINTADDRESS2 issuer;
		public PWSTR tokenType;
		public CLAIMLIST requiredClaims;
		public CLAIMLIST optionalClaims;
		public PWSTR privacyUrl;
		public uint32 privacyVersion;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_CCertSrvSetupKeyInformation = .(0x38373906, 0x5433, 0x4633, 0xb0, 0xfb, 0x29, 0xb7, 0xe7, 0x82, 0x62, 0xe1);
	public const Guid CLSID_CCertSrvSetup = .(0x961f180f, 0xf55c, 0x413d, 0xa9, 0xb3, 0x7d, 0x2a, 0xf4, 0xd8, 0xe4, 0x2f);
	public const Guid CLSID_CMSCEPSetup = .(0xaa4f5c02, 0x8e7c, 0x49c4, 0x94, 0xfa, 0x67, 0xa5, 0xcc, 0x5e, 0xad, 0xb4);
	public const Guid CLSID_CCertificateEnrollmentServerSetup = .(0x9902f3bc, 0x88af, 0x4cf8, 0xae, 0x62, 0x71, 0x40, 0x53, 0x15, 0x52, 0xb6);
	public const Guid CLSID_CCertificateEnrollmentPolicyServerSetup = .(0xafe2fa32, 0x41b1, 0x459d, 0xa5, 0xde, 0x49, 0xad, 0xd8, 0xa7, 0x21, 0x82);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct ICertSrvSetupKeyInformation : IDispatch
	{
		public const new Guid IID = .(0x6ba73778, 0x36da, 0x4c39, 0x8a, 0x85, 0xbc, 0xfa, 0x7d, 0x00, 0x07, 0x93);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ProviderName(out BSTR pVal) mut => VT.get_ProviderName(ref this, out pVal);
		public HRESULT put_ProviderName(BSTR bstrVal) mut => VT.put_ProviderName(ref this, bstrVal);
		public HRESULT get_Length(out int32 pVal) mut => VT.get_Length(ref this, out pVal);
		public HRESULT put_Length(int32 lVal) mut => VT.put_Length(ref this, lVal);
		public HRESULT get_Existing(out int16 pVal) mut => VT.get_Existing(ref this, out pVal);
		public HRESULT put_Existing(int16 bVal) mut => VT.put_Existing(ref this, bVal);
		public HRESULT get_ContainerName(out BSTR pVal) mut => VT.get_ContainerName(ref this, out pVal);
		public HRESULT put_ContainerName(BSTR bstrVal) mut => VT.put_ContainerName(ref this, bstrVal);
		public HRESULT get_HashAlgorithm(out BSTR pVal) mut => VT.get_HashAlgorithm(ref this, out pVal);
		public HRESULT put_HashAlgorithm(BSTR bstrVal) mut => VT.put_HashAlgorithm(ref this, bstrVal);
		public HRESULT get_ExistingCACertificate(out VARIANT pVal) mut => VT.get_ExistingCACertificate(ref this, out pVal);
		public HRESULT put_ExistingCACertificate(VARIANT varVal) mut => VT.put_ExistingCACertificate(ref this, varVal);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out BSTR pVal) get_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, BSTR bstrVal) put_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out int32 pVal) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, int32 lVal) put_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out int16 pVal) get_Existing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, int16 bVal) put_Existing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out BSTR pVal) get_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, BSTR bstrVal) put_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out BSTR pVal) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, BSTR bstrVal) put_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, out VARIANT pVal) get_ExistingCACertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformation self, VARIANT varVal) put_ExistingCACertificate;
		}
	}
	[CRepr]
	public struct ICertSrvSetupKeyInformationCollection : IDispatch
	{
		public const new Guid IID = .(0xe65c8b00, 0xe58f, 0x41f9, 0xa9, 0xec, 0xa2, 0x8d, 0x74, 0x27, 0xc8, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get__NewEnum(out IUnknown* ppVal) mut => VT.get__NewEnum(ref this, out ppVal);
		public HRESULT get_Item(int32 Index, out VARIANT pVal) mut => VT.get_Item(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT Add(ref ICertSrvSetupKeyInformation pIKeyInformation) mut => VT.Add(ref this, ref pIKeyInformation);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformationCollection self, out IUnknown* ppVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformationCollection self, int32 Index, out VARIANT pVal) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformationCollection self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetupKeyInformationCollection self, ref ICertSrvSetupKeyInformation pIKeyInformation) Add;
		}
	}
	[CRepr]
	public struct ICertSrvSetup : IDispatch
	{
		public const new Guid IID = .(0xb760a1bb, 0x4784, 0x44c0, 0x8f, 0x12, 0x55, 0x5f, 0x07, 0x80, 0xff, 0x25);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CAErrorId(out int32 pVal) mut => VT.get_CAErrorId(ref this, out pVal);
		public HRESULT get_CAErrorString(out BSTR pVal) mut => VT.get_CAErrorString(ref this, out pVal);
		public HRESULT InitializeDefaults(int16 bServer, int16 bClient) mut => VT.InitializeDefaults(ref this, bServer, bClient);
		public HRESULT GetCASetupProperty(CASetupProperty propertyId, out VARIANT pPropertyValue) mut => VT.GetCASetupProperty(ref this, propertyId, out pPropertyValue);
		public HRESULT SetCASetupProperty(CASetupProperty propertyId, ref VARIANT pPropertyValue) mut => VT.SetCASetupProperty(ref this, propertyId, ref pPropertyValue);
		public HRESULT IsPropertyEditable(CASetupProperty propertyId, out int16 pbEditable) mut => VT.IsPropertyEditable(ref this, propertyId, out pbEditable);
		public HRESULT GetSupportedCATypes(out VARIANT pCATypes) mut => VT.GetSupportedCATypes(ref this, out pCATypes);
		public HRESULT GetProviderNameList(out VARIANT pVal) mut => VT.GetProviderNameList(ref this, out pVal);
		public HRESULT GetKeyLengthList(BSTR bstrProviderName, out VARIANT pVal) mut => VT.GetKeyLengthList(ref this, bstrProviderName, out pVal);
		public HRESULT GetHashAlgorithmList(BSTR bstrProviderName, out VARIANT pVal) mut => VT.GetHashAlgorithmList(ref this, bstrProviderName, out pVal);
		public HRESULT GetPrivateKeyContainerList(BSTR bstrProviderName, out VARIANT pVal) mut => VT.GetPrivateKeyContainerList(ref this, bstrProviderName, out pVal);
		public HRESULT GetExistingCACertificates(out ICertSrvSetupKeyInformationCollection* ppVal) mut => VT.GetExistingCACertificates(ref this, out ppVal);
		public HRESULT CAImportPFX(BSTR bstrFileName, BSTR bstrPasswd, int16 bOverwriteExistingKey, out ICertSrvSetupKeyInformation* ppVal) mut => VT.CAImportPFX(ref this, bstrFileName, bstrPasswd, bOverwriteExistingKey, out ppVal);
		public HRESULT SetCADistinguishedName(BSTR bstrCADN, int16 bIgnoreUnicode, int16 bOverwriteExistingKey, int16 bOverwriteExistingCAInDS) mut => VT.SetCADistinguishedName(ref this, bstrCADN, bIgnoreUnicode, bOverwriteExistingKey, bOverwriteExistingCAInDS);
		public HRESULT SetDatabaseInformation(BSTR bstrDBDirectory, BSTR bstrLogDirectory, BSTR bstrSharedFolder, int16 bForceOverwrite) mut => VT.SetDatabaseInformation(ref this, bstrDBDirectory, bstrLogDirectory, bstrSharedFolder, bForceOverwrite);
		public HRESULT SetParentCAInformation(BSTR bstrCAConfiguration) mut => VT.SetParentCAInformation(ref this, bstrCAConfiguration);
		public HRESULT SetWebCAInformation(BSTR bstrCAConfiguration) mut => VT.SetWebCAInformation(ref this, bstrCAConfiguration);
		public HRESULT Install() mut => VT.Install(ref this);
		public HRESULT PreUnInstall(int16 bClientOnly) mut => VT.PreUnInstall(ref this, bClientOnly);
		public HRESULT PostUnInstall() mut => VT.PostUnInstall(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, out int32 pVal) get_CAErrorId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, out BSTR pVal) get_CAErrorString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, int16 bServer, int16 bClient) InitializeDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, CASetupProperty propertyId, out VARIANT pPropertyValue) GetCASetupProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, CASetupProperty propertyId, ref VARIANT pPropertyValue) SetCASetupProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, CASetupProperty propertyId, out int16 pbEditable) IsPropertyEditable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, out VARIANT pCATypes) GetSupportedCATypes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, out VARIANT pVal) GetProviderNameList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrProviderName, out VARIANT pVal) GetKeyLengthList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrProviderName, out VARIANT pVal) GetHashAlgorithmList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrProviderName, out VARIANT pVal) GetPrivateKeyContainerList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, out ICertSrvSetupKeyInformationCollection* ppVal) GetExistingCACertificates;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrFileName, BSTR bstrPasswd, int16 bOverwriteExistingKey, out ICertSrvSetupKeyInformation* ppVal) CAImportPFX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrCADN, int16 bIgnoreUnicode, int16 bOverwriteExistingKey, int16 bOverwriteExistingCAInDS) SetCADistinguishedName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrDBDirectory, BSTR bstrLogDirectory, BSTR bstrSharedFolder, int16 bForceOverwrite) SetDatabaseInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrCAConfiguration) SetParentCAInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, BSTR bstrCAConfiguration) SetWebCAInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self) Install;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self, int16 bClientOnly) PreUnInstall;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertSrvSetup self) PostUnInstall;
		}
	}
	[CRepr]
	public struct IMSCEPSetup : IDispatch
	{
		public const new Guid IID = .(0x4f7761bb, 0x9f3b, 0x4592, 0x9e, 0xe0, 0x9a, 0x73, 0x25, 0x9c, 0x31, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_MSCEPErrorId(out int32 pVal) mut => VT.get_MSCEPErrorId(ref this, out pVal);
		public HRESULT get_MSCEPErrorString(out BSTR pVal) mut => VT.get_MSCEPErrorString(ref this, out pVal);
		public HRESULT InitializeDefaults() mut => VT.InitializeDefaults(ref this);
		public HRESULT GetMSCEPSetupProperty(MSCEPSetupProperty propertyId, out VARIANT pVal) mut => VT.GetMSCEPSetupProperty(ref this, propertyId, out pVal);
		public HRESULT SetMSCEPSetupProperty(MSCEPSetupProperty propertyId, ref VARIANT pPropertyValue) mut => VT.SetMSCEPSetupProperty(ref this, propertyId, ref pPropertyValue);
		public HRESULT SetAccountInformation(BSTR bstrUserName, BSTR bstrPassword) mut => VT.SetAccountInformation(ref this, bstrUserName, bstrPassword);
		public HRESULT IsMSCEPStoreEmpty(out int16 pbEmpty) mut => VT.IsMSCEPStoreEmpty(ref this, out pbEmpty);
		public HRESULT GetProviderNameList(int16 bExchange, out VARIANT pVal) mut => VT.GetProviderNameList(ref this, bExchange, out pVal);
		public HRESULT GetKeyLengthList(int16 bExchange, BSTR bstrProviderName, out VARIANT pVal) mut => VT.GetKeyLengthList(ref this, bExchange, bstrProviderName, out pVal);
		public HRESULT Install() mut => VT.Install(ref this);
		public HRESULT PreUnInstall() mut => VT.PreUnInstall(ref this);
		public HRESULT PostUnInstall() mut => VT.PostUnInstall(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, out int32 pVal) get_MSCEPErrorId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, out BSTR pVal) get_MSCEPErrorString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self) InitializeDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, MSCEPSetupProperty propertyId, out VARIANT pVal) GetMSCEPSetupProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, MSCEPSetupProperty propertyId, ref VARIANT pPropertyValue) SetMSCEPSetupProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, BSTR bstrUserName, BSTR bstrPassword) SetAccountInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, out int16 pbEmpty) IsMSCEPStoreEmpty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, int16 bExchange, out VARIANT pVal) GetProviderNameList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self, int16 bExchange, BSTR bstrProviderName, out VARIANT pVal) GetKeyLengthList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self) Install;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self) PreUnInstall;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMSCEPSetup self) PostUnInstall;
		}
	}
	[CRepr]
	public struct ICertificateEnrollmentServerSetup : IDispatch
	{
		public const new Guid IID = .(0x70027fdb, 0x9dd9, 0x4921, 0x89, 0x44, 0xb3, 0x5c, 0xb3, 0x1b, 0xd2, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ErrorString(out BSTR pVal) mut => VT.get_ErrorString(ref this, out pVal);
		public HRESULT InitializeInstallDefaults() mut => VT.InitializeInstallDefaults(ref this);
		public HRESULT GetProperty(CESSetupProperty propertyId, out VARIANT pPropertyValue) mut => VT.GetProperty(ref this, propertyId, out pPropertyValue);
		public HRESULT SetProperty(CESSetupProperty propertyId, ref VARIANT pPropertyValue) mut => VT.SetProperty(ref this, propertyId, ref pPropertyValue);
		public HRESULT SetApplicationPoolCredentials(BSTR bstrUsername, BSTR bstrPassword) mut => VT.SetApplicationPoolCredentials(ref this, bstrUsername, bstrPassword);
		public HRESULT Install() mut => VT.Install(ref this);
		public HRESULT UnInstall(ref VARIANT pCAConfig, ref VARIANT pAuthentication) mut => VT.UnInstall(ref this, ref pCAConfig, ref pAuthentication);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self, out BSTR pVal) get_ErrorString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self) InitializeInstallDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self, CESSetupProperty propertyId, out VARIANT pPropertyValue) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self, CESSetupProperty propertyId, ref VARIANT pPropertyValue) SetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self, BSTR bstrUsername, BSTR bstrPassword) SetApplicationPoolCredentials;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self) Install;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentServerSetup self, ref VARIANT pCAConfig, ref VARIANT pAuthentication) UnInstall;
		}
	}
	[CRepr]
	public struct ICertificateEnrollmentPolicyServerSetup : IDispatch
	{
		public const new Guid IID = .(0x859252cc, 0x238c, 0x4a88, 0xb8, 0xfd, 0xa3, 0x7e, 0x7d, 0x04, 0xe6, 0x8b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ErrorString(out BSTR pVal) mut => VT.get_ErrorString(ref this, out pVal);
		public HRESULT InitializeInstallDefaults() mut => VT.InitializeInstallDefaults(ref this);
		public HRESULT GetProperty(CEPSetupProperty propertyId, out VARIANT pPropertyValue) mut => VT.GetProperty(ref this, propertyId, out pPropertyValue);
		public HRESULT SetProperty(CEPSetupProperty propertyId, ref VARIANT pPropertyValue) mut => VT.SetProperty(ref this, propertyId, ref pPropertyValue);
		public HRESULT Install() mut => VT.Install(ref this);
		public HRESULT UnInstall(ref VARIANT pAuthKeyBasedRenewal) mut => VT.UnInstall(ref this, ref pAuthKeyBasedRenewal);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self, out BSTR pVal) get_ErrorString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self) InitializeInstallDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self, CEPSetupProperty propertyId, out VARIANT pPropertyValue) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self, CEPSetupProperty propertyId, ref VARIANT pPropertyValue) SetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self) Install;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateEnrollmentPolicyServerSetup self, ref VARIANT pAuthKeyBasedRenewal) UnInstall;
		}
	}
	#endregion
	
	#region Functions
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptAcquireContextA(out uint phProv, PSTR szContainer, PSTR szProvider, uint32 dwProvType, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptAcquireContextW(out uint phProv, PWSTR szContainer, PWSTR szProvider, uint32 dwProvType, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptReleaseContext(uint hProv, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGenKey(uint hProv, uint32 Algid, CRYPT_KEY_FLAGS dwFlags, out uint phKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDeriveKey(uint hProv, uint32 Algid, uint hBaseData, uint32 dwFlags, out uint phKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDestroyKey(uint hKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetKeyParam(uint hKey, CRYPT_KEY_PARAM_ID dwParam, in uint8 pbData, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetKeyParam(uint hKey, CRYPT_KEY_PARAM_ID dwParam, uint8* pbData, out uint32 pdwDataLen, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetHashParam(uint hHash, CRYPT_SET_HASH_PARAM dwParam, in uint8 pbData, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetHashParam(uint hHash, uint32 dwParam, uint8* pbData, out uint32 pdwDataLen, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetProvParam(uint hProv, CRYPT_SET_PROV_PARAM_ID dwParam, in uint8 pbData, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetProvParam(uint hProv, uint32 dwParam, uint8* pbData, out uint32 pdwDataLen, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGenRandom(uint hProv, uint32 dwLen, out uint8 pbBuffer);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetUserKey(uint hProv, uint32 dwKeySpec, out uint phUserKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptExportKey(uint hKey, uint hExpKey, uint32 dwBlobType, CRYPT_KEY_FLAGS dwFlags, uint8* pbData, out uint32 pdwDataLen);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptImportKey(uint hProv, in uint8 pbData, uint32 dwDataLen, uint hPubKey, CRYPT_KEY_FLAGS dwFlags, out uint phKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEncrypt(uint hKey, uint hHash, BOOL Final, uint32 dwFlags, uint8* pbData, out uint32 pdwDataLen, uint32 dwBufLen);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecrypt(uint hKey, uint hHash, BOOL Final, uint32 dwFlags, out uint8 pbData, out uint32 pdwDataLen);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptCreateHash(uint hProv, uint32 Algid, uint hKey, uint32 dwFlags, out uint phHash);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashData(uint hHash, in uint8 pbData, uint32 dwDataLen, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashSessionKey(uint hHash, uint hKey, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDestroyHash(uint hHash);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignHashA(uint hHash, uint32 dwKeySpec, PSTR szDescription, uint32 dwFlags, uint8* pbSignature, out uint32 pdwSigLen);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignHashW(uint hHash, uint32 dwKeySpec, PWSTR szDescription, uint32 dwFlags, uint8* pbSignature, out uint32 pdwSigLen);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifySignatureA(uint hHash, in uint8 pbSignature, uint32 dwSigLen, uint hPubKey, PSTR szDescription, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifySignatureW(uint hHash, in uint8 pbSignature, uint32 dwSigLen, uint hPubKey, PWSTR szDescription, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetProviderA(PSTR pszProvName, uint32 dwProvType);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetProviderW(PWSTR pszProvName, uint32 dwProvType);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetProviderExA(PSTR pszProvName, uint32 dwProvType, out uint32 pdwReserved, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetProviderExW(PWSTR pszProvName, uint32 dwProvType, out uint32 pdwReserved, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetDefaultProviderA(uint32 dwProvType, out uint32 pdwReserved, uint32 dwFlags, PSTR pszProvName, out uint32 pcbProvName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetDefaultProviderW(uint32 dwProvType, out uint32 pdwReserved, uint32 dwFlags, PWSTR pszProvName, out uint32 pcbProvName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumProviderTypesA(uint32 dwIndex, out uint32 pdwReserved, uint32 dwFlags, out uint32 pdwProvType, PSTR szTypeName, out uint32 pcbTypeName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumProviderTypesW(uint32 dwIndex, out uint32 pdwReserved, uint32 dwFlags, out uint32 pdwProvType, PWSTR szTypeName, out uint32 pcbTypeName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumProvidersA(uint32 dwIndex, out uint32 pdwReserved, uint32 dwFlags, out uint32 pdwProvType, PSTR szProvName, out uint32 pcbProvName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumProvidersW(uint32 dwIndex, out uint32 pdwReserved, uint32 dwFlags, out uint32 pdwProvType, PWSTR szProvName, out uint32 pcbProvName);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptContextAddRef(uint hProv, out uint32 pdwReserved, uint32 dwFlags);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDuplicateKey(uint hKey, out uint32 pdwReserved, uint32 dwFlags, out uint phKey);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDuplicateHash(uint hHash, out uint32 pdwReserved, uint32 dwFlags, out uint phHash);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptOpenAlgorithmProvider(out BCRYPT_ALG_HANDLE phAlgorithm, PWSTR pszAlgId, PWSTR pszImplementation, BCRYPT_OPEN_ALGORITHM_PROVIDER_FLAGS dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumAlgorithms(BCRYPT_OPERATION dwAlgOperations, out uint32 pAlgCount, out BCRYPT_ALGORITHM_IDENTIFIER* ppAlgList, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumProviders(PWSTR pszAlgId, out uint32 pImplCount, out BCRYPT_PROVIDER_NAME* ppImplList, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptGetProperty(void* hObject, PWSTR pszProperty, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptSetProperty(void* hObject, PWSTR pszProperty, ref uint8 pbInput, uint32 cbInput, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptCloseAlgorithmProvider(BCRYPT_ALG_HANDLE hAlgorithm, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void BCryptFreeBuffer(void* pvBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptGenerateSymmetricKey(BCRYPT_ALG_HANDLE hAlgorithm, out BCRYPT_KEY_HANDLE phKey, uint8* pbKeyObject, uint32 cbKeyObject, ref uint8 pbSecret, uint32 cbSecret, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptGenerateKeyPair(BCRYPT_ALG_HANDLE hAlgorithm, out BCRYPT_KEY_HANDLE phKey, uint32 dwLength, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEncrypt(BCRYPT_KEY_HANDLE hKey, uint8* pbInput, uint32 cbInput, void* pPaddingInfo, uint8* pbIV, uint32 cbIV, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDecrypt(BCRYPT_KEY_HANDLE hKey, uint8* pbInput, uint32 cbInput, void* pPaddingInfo, uint8* pbIV, uint32 cbIV, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptExportKey(BCRYPT_KEY_HANDLE hKey, BCRYPT_KEY_HANDLE hExportKey, PWSTR pszBlobType, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptImportKey(BCRYPT_ALG_HANDLE hAlgorithm, BCRYPT_KEY_HANDLE hImportKey, PWSTR pszBlobType, out BCRYPT_KEY_HANDLE phKey, uint8* pbKeyObject, uint32 cbKeyObject, ref uint8 pbInput, uint32 cbInput, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptImportKeyPair(BCRYPT_ALG_HANDLE hAlgorithm, BCRYPT_KEY_HANDLE hImportKey, PWSTR pszBlobType, out BCRYPT_KEY_HANDLE phKey, ref uint8 pbInput, uint32 cbInput, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDuplicateKey(BCRYPT_KEY_HANDLE hKey, out BCRYPT_KEY_HANDLE phNewKey, uint8* pbKeyObject, uint32 cbKeyObject, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptFinalizeKeyPair(BCRYPT_KEY_HANDLE hKey, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDestroyKey(BCRYPT_KEY_HANDLE hKey);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDestroySecret(void* hSecret);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptSignHash(BCRYPT_KEY_HANDLE hKey, void* pPaddingInfo, ref uint8 pbInput, uint32 cbInput, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptVerifySignature(BCRYPT_KEY_HANDLE hKey, void* pPaddingInfo, ref uint8 pbHash, uint32 cbHash, ref uint8 pbSignature, uint32 cbSignature, NCRYPT_FLAGS dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptSecretAgreement(BCRYPT_KEY_HANDLE hPrivKey, BCRYPT_KEY_HANDLE hPubKey, void** phAgreedSecret, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDeriveKey(void* hSharedSecret, PWSTR pwszKDF, BCryptBufferDesc* pParameterList, uint8* pbDerivedKey, uint32 cbDerivedKey, out uint32 pcbResult, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptKeyDerivation(BCRYPT_KEY_HANDLE hKey, BCryptBufferDesc* pParameterList, out uint8 pbDerivedKey, uint32 cbDerivedKey, out uint32 pcbResult, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptCreateHash(BCRYPT_ALG_HANDLE hAlgorithm, void** phHash, uint8* pbHashObject, uint32 cbHashObject, uint8* pbSecret, uint32 cbSecret, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptHashData(void* hHash, ref uint8 pbInput, uint32 cbInput, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptFinishHash(void* hHash, out uint8 pbOutput, uint32 cbOutput, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptCreateMultiHash(BCRYPT_ALG_HANDLE hAlgorithm, void** phHash, uint32 nHashes, uint8* pbHashObject, uint32 cbHashObject, uint8* pbSecret, uint32 cbSecret, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptProcessMultiOperations(void* hObject, BCRYPT_MULTI_OPERATION_TYPE operationType, void* pOperations, uint32 cbOperations, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDuplicateHash(void* hHash, void** phNewHash, uint8* pbHashObject, uint32 cbHashObject, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDestroyHash(void* hHash);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptHash(BCRYPT_ALG_HANDLE hAlgorithm, uint8* pbSecret, uint32 cbSecret, ref uint8 pbInput, uint32 cbInput, out uint8 pbOutput, uint32 cbOutput);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptGenRandom(BCRYPT_ALG_HANDLE hAlgorithm, out uint8 pbBuffer, uint32 cbBuffer, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDeriveKeyCapi(void* hHash, BCRYPT_ALG_HANDLE hTargetAlg, out uint8 pbDerivedKey, uint32 cbDerivedKey, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDeriveKeyPBKDF2(BCRYPT_ALG_HANDLE hPrf, uint8* pbPassword, uint32 cbPassword, uint8* pbSalt, uint32 cbSalt, uint64 cIterations, out uint8 pbDerivedKey, uint32 cbDerivedKey, uint32 dwFlags);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptQueryProviderRegistration(PWSTR pszProvider, BCRYPT_QUERY_PROVIDER_MODE dwMode, BCRYPT_INTERFACE dwInterface, out uint32 pcbBuffer, out CRYPT_PROVIDER_REG* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumRegisteredProviders(out uint32 pcbBuffer, out CRYPT_PROVIDERS* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptCreateContext(BCRYPT_TABLE dwTable, PWSTR pszContext, CRYPT_CONTEXT_CONFIG* pConfig);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptDeleteContext(BCRYPT_TABLE dwTable, PWSTR pszContext);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumContexts(BCRYPT_TABLE dwTable, out uint32 pcbBuffer, out CRYPT_CONTEXTS* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptConfigureContext(BCRYPT_TABLE dwTable, PWSTR pszContext, ref CRYPT_CONTEXT_CONFIG pConfig);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptQueryContextConfiguration(BCRYPT_TABLE dwTable, PWSTR pszContext, out uint32 pcbBuffer, out CRYPT_CONTEXT_CONFIG* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptAddContextFunction(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, uint32 dwPosition);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptRemoveContextFunction(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumContextFunctions(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, out uint32 pcbBuffer, out CRYPT_CONTEXT_FUNCTIONS* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptConfigureContextFunction(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, ref CRYPT_CONTEXT_FUNCTION_CONFIG pConfig);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptQueryContextFunctionConfiguration(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, out uint32 pcbBuffer, out CRYPT_CONTEXT_FUNCTION_CONFIG* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptEnumContextFunctionProviders(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, out uint32 pcbBuffer, out CRYPT_CONTEXT_FUNCTION_PROVIDERS* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptSetContextFunctionProperty(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, PWSTR pszProperty, uint32 cbValue, uint8* pbValue);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptQueryContextFunctionProperty(BCRYPT_TABLE dwTable, PWSTR pszContext, BCRYPT_INTERFACE dwInterface, PWSTR pszFunction, PWSTR pszProperty, out uint32 pcbValue, out uint8* ppbValue);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptRegisterConfigChangeNotify(out HANDLE phEvent);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptUnregisterConfigChangeNotify(HANDLE hEvent);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptResolveProviders(PWSTR pszContext, uint32 dwInterface, PWSTR pszFunction, PWSTR pszProvider, BCRYPT_QUERY_PROVIDER_MODE dwMode, BCRYPT_RESOLVE_PROVIDERS_FLAGS dwFlags, out uint32 pcbBuffer, out CRYPT_PROVIDER_REFS* ppBuffer);
	[Import("bcrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS BCryptGetFipsAlgorithmMode(out uint8 pfEnabled);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptOpenStorageProvider(out uint phProvider, PWSTR pszProviderName, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptEnumAlgorithms(uint hProvider, NCRYPT_OPERATION dwAlgOperations, out uint32 pdwAlgCount, out NCryptAlgorithmName* ppAlgList, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptIsAlgSupported(uint hProvider, PWSTR pszAlgId, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptEnumKeys(uint hProvider, PWSTR pszScope, out NCryptKeyName* ppKeyName, void** ppEnumState, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptEnumStorageProviders(out uint32 pdwProviderCount, out NCryptProviderName* ppProviderList, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptFreeBuffer(void* pvInput);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptOpenKey(uint hProvider, out uint phKey, PWSTR pszKeyName, CERT_KEY_SPEC dwLegacyKeySpec, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptCreatePersistedKey(uint hProvider, out uint phKey, PWSTR pszAlgId, PWSTR pszKeyName, CERT_KEY_SPEC dwLegacyKeySpec, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptGetProperty(uint hObject, PWSTR pszProperty, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, OBJECT_SECURITY_INFORMATION dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptSetProperty(uint hObject, PWSTR pszProperty, ref uint8 pbInput, uint32 cbInput, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptFinalizeKey(uint hKey, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptEncrypt(uint hKey, uint8* pbInput, uint32 cbInput, void* pPaddingInfo, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptDecrypt(uint hKey, uint8* pbInput, uint32 cbInput, void* pPaddingInfo, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptImportKey(uint hProvider, uint hImportKey, PWSTR pszBlobType, BCryptBufferDesc* pParameterList, out uint phKey, ref uint8 pbData, uint32 cbData, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptExportKey(uint hKey, uint hExportKey, PWSTR pszBlobType, BCryptBufferDesc* pParameterList, uint8* pbOutput, uint32 cbOutput, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptSignHash(uint hKey, void* pPaddingInfo, ref uint8 pbHashValue, uint32 cbHashValue, uint8* pbSignature, uint32 cbSignature, out uint32 pcbResult, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptVerifySignature(uint hKey, void* pPaddingInfo, ref uint8 pbHashValue, uint32 cbHashValue, ref uint8 pbSignature, uint32 cbSignature, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptDeleteKey(uint hKey, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptFreeObject(uint hObject);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL NCryptIsKeyHandle(uint hKey);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptTranslateHandle(uint* phProvider, out uint phKey, uint hLegacyProv, uint hLegacyKey, CERT_KEY_SPEC dwLegacyKeySpec, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptNotifyChangeKey(uint hProvider, out HANDLE phEvent, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptSecretAgreement(uint hPrivKey, uint hPubKey, out uint phAgreedSecret, NCRYPT_FLAGS dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptDeriveKey(uint hSharedSecret, PWSTR pwszKDF, BCryptBufferDesc* pParameterList, uint8* pbDerivedKey, uint32 cbDerivedKey, out uint32 pcbResult, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptKeyDerivation(uint hKey, BCryptBufferDesc* pParameterList, out uint8 pbDerivedKey, uint32 cbDerivedKey, out uint32 pcbResult, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptCreateClaim(uint hSubjectKey, uint hAuthorityKey, uint32 dwClaimType, BCryptBufferDesc* pParameterList, uint8* pbClaimBlob, uint32 cbClaimBlob, out uint32 pcbResult, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptVerifyClaim(uint hSubjectKey, uint hAuthorityKey, uint32 dwClaimType, BCryptBufferDesc* pParameterList, ref uint8 pbClaimBlob, uint32 cbClaimBlob, out BCryptBufferDesc pOutput, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptFormatObject(uint32 dwCertEncodingType, uint32 dwFormatType, uint32 dwFormatStrType, void* pFormatStruct, PSTR lpszStructType, in uint8 pbEncoded, uint32 cbEncoded, void* pbFormat, out uint32 pcbFormat);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEncodeObjectEx(CERT_QUERY_ENCODING_TYPE dwCertEncodingType, PSTR lpszStructType, void* pvStructInfo, CRYPT_ENCODE_OBJECT_FLAGS dwFlags, CRYPT_ENCODE_PARA* pEncodePara, void* pvEncoded, out uint32 pcbEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEncodeObject(uint32 dwCertEncodingType, PSTR lpszStructType, void* pvStructInfo, uint8* pbEncoded, out uint32 pcbEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecodeObjectEx(uint32 dwCertEncodingType, PSTR lpszStructType, in uint8 pbEncoded, uint32 cbEncoded, uint32 dwFlags, CRYPT_DECODE_PARA* pDecodePara, void* pvStructInfo, out uint32 pcbStructInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecodeObject(uint32 dwCertEncodingType, PSTR lpszStructType, in uint8 pbEncoded, uint32 cbEncoded, uint32 dwFlags, void* pvStructInfo, out uint32 pcbStructInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptInstallOIDFunctionAddress(HINSTANCE hModule, uint32 dwEncodingType, PSTR pszFuncName, uint32 cFuncEntry, CRYPT_OID_FUNC_ENTRY* rgFuncEntry, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptInitOIDFunctionSet(PSTR pszFuncName, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetOIDFunctionAddress(void* hFuncSet, uint32 dwEncodingType, PSTR pszOID, uint32 dwFlags, void** ppvFuncAddr, void** phFuncAddr);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetDefaultOIDDllList(void* hFuncSet, uint32 dwEncodingType, char16* pwszDllList, out uint32 pcchDllList);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetDefaultOIDFunctionAddress(void* hFuncSet, uint32 dwEncodingType, PWSTR pwszDll, uint32 dwFlags, void** ppvFuncAddr, void** phFuncAddr);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptFreeOIDFunctionAddress(void* hFuncAddr, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRegisterOIDFunction(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID, PWSTR pwszDll, PSTR pszOverrideFuncName);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUnregisterOIDFunction(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRegisterDefaultOIDFunction(uint32 dwEncodingType, PSTR pszFuncName, uint32 dwIndex, PWSTR pwszDll);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUnregisterDefaultOIDFunction(uint32 dwEncodingType, PSTR pszFuncName, PWSTR pwszDll);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetOIDFunctionValue(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID, PWSTR pwszValueName, REG_VALUE_TYPE dwValueType, uint8* pbValueData, uint32 cbValueData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetOIDFunctionValue(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID, PWSTR pwszValueName, uint32* pdwValueType, uint8* pbValueData, uint32* pcbValueData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumOIDFunction(uint32 dwEncodingType, PSTR pszFuncName, PSTR pszOID, uint32 dwFlags, void* pvArg, PFN_CRYPT_ENUM_OID_FUNC pfnEnumOIDFunc);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRYPT_OID_INFO* CryptFindOIDInfo(uint32 dwKeyType, void* pvKey, uint32 dwGroupId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRegisterOIDInfo(ref CRYPT_OID_INFO pInfo, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUnregisterOIDInfo(ref CRYPT_OID_INFO pInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumOIDInfo(uint32 dwGroupId, uint32 dwFlags, void* pvArg, PFN_CRYPT_ENUM_OID_INFO pfnEnumOIDInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR CryptFindLocalizedName(PWSTR pwszCryptName);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptMsgOpenToEncode(uint32 dwMsgEncodingType, uint32 dwFlags, CRYPT_MSG_TYPE dwMsgType, void* pvMsgEncodeInfo, PSTR pszInnerContentObjID, CMSG_STREAM_INFO* pStreamInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CryptMsgCalculateEncodedLength(uint32 dwMsgEncodingType, uint32 dwFlags, uint32 dwMsgType, void* pvMsgEncodeInfo, PSTR pszInnerContentObjID, uint32 cbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptMsgOpenToDecode(uint32 dwMsgEncodingType, uint32 dwFlags, uint32 dwMsgType, uint hCryptProv, out CERT_INFO pRecipientInfo, CMSG_STREAM_INFO* pStreamInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptMsgDuplicate(void* hCryptMsg);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgClose(void* hCryptMsg);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgUpdate(void* hCryptMsg, uint8* pbData, uint32 cbData, BOOL fFinal);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgGetParam(void* hCryptMsg, uint32 dwParamType, uint32 dwIndex, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgControl(void* hCryptMsg, uint32 dwFlags, uint32 dwCtrlType, void* pvCtrlPara);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgVerifyCountersignatureEncoded(uint hCryptProv, uint32 dwEncodingType, ref uint8 pbSignerInfo, uint32 cbSignerInfo, ref uint8 pbSignerInfoCountersignature, uint32 cbSignerInfoCountersignature, ref CERT_INFO pciCountersigner);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgVerifyCountersignatureEncodedEx(uint hCryptProv, uint32 dwEncodingType, ref uint8 pbSignerInfo, uint32 cbSignerInfo, ref uint8 pbSignerInfoCountersignature, uint32 cbSignerInfoCountersignature, uint32 dwSignerType, void* pvSigner, uint32 dwFlags, void* pvExtra);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgCountersign(void* hCryptMsg, uint32 dwIndex, uint32 cCountersigners, CMSG_SIGNER_ENCODE_INFO* rgCountersigners);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgCountersignEncoded(uint32 dwEncodingType, ref uint8 pbSignerInfo, uint32 cbSignerInfo, uint32 cCountersigners, CMSG_SIGNER_ENCODE_INFO* rgCountersigners, uint8* pbCountersignature, out uint32 pcbCountersignature);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertOpenStore(PSTR lpszStoreProvider, CERT_QUERY_ENCODING_TYPE dwEncodingType, uint hCryptProv, CERT_OPEN_STORE_FLAGS dwFlags, void* pvPara);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertDuplicateStore(void* hCertStore);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSaveStore(void* hCertStore, CERT_QUERY_ENCODING_TYPE dwEncodingType, CERT_STORE_SAVE_AS dwSaveAs, CERT_STORE_SAVE_TO dwSaveTo, void* pvSaveToPara, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCloseStore(void* hCertStore, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertGetSubjectCertificateFromStore(void* hCertStore, uint32 dwCertEncodingType, ref CERT_INFO pCertId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertEnumCertificatesInStore(void* hCertStore, CERT_CONTEXT* pPrevCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertFindCertificateInStore(void* hCertStore, uint32 dwCertEncodingType, uint32 dwFindFlags, CERT_FIND_FLAGS dwFindType, void* pvFindPara, CERT_CONTEXT* pPrevCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertGetIssuerCertificateFromStore(void* hCertStore, in CERT_CONTEXT pSubjectContext, CERT_CONTEXT* pPrevIssuerContext, out uint32 pdwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifySubjectCertificateContext(in CERT_CONTEXT pSubject, CERT_CONTEXT* pIssuer, out uint32 pdwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertDuplicateCertificateContext(CERT_CONTEXT* pCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertCreateCertificateContext(uint32 dwCertEncodingType, in uint8 pbCertEncoded, uint32 cbCertEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertFreeCertificateContext(CERT_CONTEXT* pCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetCertificateContextProperty(in CERT_CONTEXT pCertContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetCertificateContextProperty(in CERT_CONTEXT pCertContext, uint32 dwPropId, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertEnumCertificateContextProperties(in CERT_CONTEXT pCertContext, uint32 dwPropId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCreateCTLEntryFromCertificateContextProperties(in CERT_CONTEXT pCertContext, uint32 cOptAttr, CRYPT_ATTRIBUTE* rgOptAttr, uint32 dwFlags, void* pvReserved, CTL_ENTRY* pCtlEntry, out uint32 pcbCtlEntry);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetCertificateContextPropertiesFromCTLEntry(in CERT_CONTEXT pCertContext, ref CTL_ENTRY pCtlEntry, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRL_CONTEXT* CertGetCRLFromStore(void* hCertStore, CERT_CONTEXT* pIssuerContext, CRL_CONTEXT* pPrevCrlContext, out uint32 pdwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRL_CONTEXT* CertEnumCRLsInStore(void* hCertStore, CRL_CONTEXT* pPrevCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRL_CONTEXT* CertFindCRLInStore(void* hCertStore, uint32 dwCertEncodingType, uint32 dwFindFlags, uint32 dwFindType, void* pvFindPara, CRL_CONTEXT* pPrevCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRL_CONTEXT* CertDuplicateCRLContext(CRL_CONTEXT* pCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRL_CONTEXT* CertCreateCRLContext(uint32 dwCertEncodingType, in uint8 pbCrlEncoded, uint32 cbCrlEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertFreeCRLContext(CRL_CONTEXT* pCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetCRLContextProperty(ref CRL_CONTEXT pCrlContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetCRLContextProperty(ref CRL_CONTEXT pCrlContext, uint32 dwPropId, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertEnumCRLContextProperties(ref CRL_CONTEXT pCrlContext, uint32 dwPropId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertFindCertificateInCRL(in CERT_CONTEXT pCert, ref CRL_CONTEXT pCrlContext, uint32 dwFlags, void* pvReserved, CRL_ENTRY** ppCrlEntry);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertIsValidCRLForCertificate(in CERT_CONTEXT pCert, ref CRL_CONTEXT pCrl, uint32 dwFlags, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEncodedCertificateToStore(void* hCertStore, uint32 dwCertEncodingType, in uint8 pbCertEncoded, uint32 cbCertEncoded, uint32 dwAddDisposition, CERT_CONTEXT** ppCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCertificateContextToStore(void* hCertStore, in CERT_CONTEXT pCertContext, uint32 dwAddDisposition, CERT_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddSerializedElementToStore(void* hCertStore, in uint8 pbElement, uint32 cbElement, uint32 dwAddDisposition, uint32 dwFlags, uint32 dwContextTypeFlags, uint32* pdwContextType, void** ppvContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertDeleteCertificateFromStore(in CERT_CONTEXT pCertContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEncodedCRLToStore(void* hCertStore, uint32 dwCertEncodingType, in uint8 pbCrlEncoded, uint32 cbCrlEncoded, uint32 dwAddDisposition, CRL_CONTEXT** ppCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCRLContextToStore(void* hCertStore, ref CRL_CONTEXT pCrlContext, uint32 dwAddDisposition, CRL_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertDeleteCRLFromStore(ref CRL_CONTEXT pCrlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSerializeCertificateStoreElement(in CERT_CONTEXT pCertContext, uint32 dwFlags, uint8* pbElement, out uint32 pcbElement);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSerializeCRLStoreElement(ref CRL_CONTEXT pCrlContext, uint32 dwFlags, uint8* pbElement, out uint32 pcbElement);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CTL_CONTEXT* CertDuplicateCTLContext(CTL_CONTEXT* pCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CTL_CONTEXT* CertCreateCTLContext(uint32 dwMsgAndCertEncodingType, in uint8 pbCtlEncoded, uint32 cbCtlEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertFreeCTLContext(CTL_CONTEXT* pCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetCTLContextProperty(ref CTL_CONTEXT pCtlContext, uint32 dwPropId, uint32 dwFlags, void* pvData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetCTLContextProperty(ref CTL_CONTEXT pCtlContext, uint32 dwPropId, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertEnumCTLContextProperties(ref CTL_CONTEXT pCtlContext, uint32 dwPropId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CTL_CONTEXT* CertEnumCTLsInStore(void* hCertStore, CTL_CONTEXT* pPrevCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CTL_ENTRY* CertFindSubjectInCTL(uint32 dwEncodingType, uint32 dwSubjectType, void* pvSubject, ref CTL_CONTEXT pCtlContext, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CTL_CONTEXT* CertFindCTLInStore(void* hCertStore, uint32 dwMsgAndCertEncodingType, uint32 dwFindFlags, CERT_FIND_TYPE dwFindType, void* pvFindPara, CTL_CONTEXT* pPrevCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEncodedCTLToStore(void* hCertStore, uint32 dwMsgAndCertEncodingType, in uint8 pbCtlEncoded, uint32 cbCtlEncoded, uint32 dwAddDisposition, CTL_CONTEXT** ppCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCTLContextToStore(void* hCertStore, ref CTL_CONTEXT pCtlContext, uint32 dwAddDisposition, CTL_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSerializeCTLStoreElement(ref CTL_CONTEXT pCtlContext, uint32 dwFlags, uint8* pbElement, out uint32 pcbElement);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertDeleteCTLFromStore(ref CTL_CONTEXT pCtlContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCertificateLinkToStore(void* hCertStore, in CERT_CONTEXT pCertContext, uint32 dwAddDisposition, CERT_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCRLLinkToStore(void* hCertStore, ref CRL_CONTEXT pCrlContext, uint32 dwAddDisposition, CRL_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddCTLLinkToStore(void* hCertStore, ref CTL_CONTEXT pCtlContext, uint32 dwAddDisposition, CTL_CONTEXT** ppStoreContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddStoreToCollection(void* hCollectionStore, void* hSiblingStore, uint32 dwUpdateFlags, uint32 dwPriority);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertRemoveStoreFromCollection(void* hCollectionStore, void* hSiblingStore);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertControlStore(void* hCertStore, CERT_CONTROL_STORE_FLAGS dwFlags, uint32 dwCtrlType, void* pvCtrlPara);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetStoreProperty(void* hCertStore, uint32 dwPropId, uint32 dwFlags, void* pvData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetStoreProperty(void* hCertStore, uint32 dwPropId, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertCreateContext(uint32 dwContextType, uint32 dwEncodingType, in uint8 pbEncoded, uint32 cbEncoded, uint32 dwFlags, CERT_CREATE_CONTEXT_PARA* pCreatePara);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertRegisterSystemStore(void* pvSystemStore, uint32 dwFlags, CERT_SYSTEM_STORE_INFO* pStoreInfo, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertRegisterPhysicalStore(void* pvSystemStore, uint32 dwFlags, PWSTR pwszStoreName, ref CERT_PHYSICAL_STORE_INFO pStoreInfo, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertUnregisterSystemStore(void* pvSystemStore, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertUnregisterPhysicalStore(void* pvSystemStore, uint32 dwFlags, PWSTR pwszStoreName);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertEnumSystemStoreLocation(uint32 dwFlags, void* pvArg, PFN_CERT_ENUM_SYSTEM_STORE_LOCATION pfnEnum);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertEnumSystemStore(uint32 dwFlags, void* pvSystemStoreLocationPara, void* pvArg, PFN_CERT_ENUM_SYSTEM_STORE pfnEnum);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertEnumPhysicalStore(void* pvSystemStore, uint32 dwFlags, void* pvArg, PFN_CERT_ENUM_PHYSICAL_STORE pfnEnum);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetEnhancedKeyUsage(in CERT_CONTEXT pCertContext, uint32 dwFlags, CTL_USAGE* pUsage, out uint32 pcbUsage);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSetEnhancedKeyUsage(in CERT_CONTEXT pCertContext, CTL_USAGE* pUsage);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEnhancedKeyUsageIdentifier(in CERT_CONTEXT pCertContext, PSTR pszUsageIdentifier);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertRemoveEnhancedKeyUsageIdentifier(in CERT_CONTEXT pCertContext, PSTR pszUsageIdentifier);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetValidUsages(uint32 cCerts, CERT_CONTEXT** rghCerts, out int32 cNumOIDs, PSTR* rghOIDs, out uint32 pcbOIDs);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgGetAndVerifySigner(void* hCryptMsg, uint32 cSignerStore, void** rghSignerStore, uint32 dwFlags, CERT_CONTEXT** ppSigner, uint32* pdwSignerIndex);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgSignCTL(uint32 dwMsgEncodingType, ref uint8 pbCtlContent, uint32 cbCtlContent, ref CMSG_SIGNED_ENCODE_INFO pSignInfo, uint32 dwFlags, uint8* pbEncoded, out uint32 pcbEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptMsgEncodeAndSignCTL(uint32 dwMsgEncodingType, ref CTL_INFO pCtlInfo, ref CMSG_SIGNED_ENCODE_INFO pSignInfo, uint32 dwFlags, uint8* pbEncoded, out uint32 pcbEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertFindSubjectInSortedCTL(ref CRYPTOAPI_BLOB pSubjectIdentifier, ref CTL_CONTEXT pCtlContext, uint32 dwFlags, void* pvReserved, CRYPTOAPI_BLOB* pEncodedAttributes);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertEnumSubjectInSortedCTL(ref CTL_CONTEXT pCtlContext, void** ppvNextSubject, CRYPTOAPI_BLOB* pSubjectIdentifier, CRYPTOAPI_BLOB* pEncodedAttributes);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifyCTLUsage(uint32 dwEncodingType, uint32 dwSubjectType, void* pvSubject, ref CTL_USAGE pSubjectUsage, uint32 dwFlags, CTL_VERIFY_USAGE_PARA* pVerifyUsagePara, out CTL_VERIFY_USAGE_STATUS pVerifyUsageStatus);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifyRevocation(uint32 dwEncodingType, uint32 dwRevType, uint32 cContext, void** rgpvContext, uint32 dwFlags, CERT_REVOCATION_PARA* pRevPara, out CERT_REVOCATION_STATUS pRevStatus);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCompareIntegerBlob(ref CRYPTOAPI_BLOB pInt1, ref CRYPTOAPI_BLOB pInt2);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCompareCertificate(uint32 dwCertEncodingType, ref CERT_INFO pCertId1, ref CERT_INFO pCertId2);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCompareCertificateName(uint32 dwCertEncodingType, ref CRYPTOAPI_BLOB pCertName1, ref CRYPTOAPI_BLOB pCertName2);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertIsRDNAttrsInCertificateName(uint32 dwCertEncodingType, uint32 dwFlags, ref CRYPTOAPI_BLOB pCertName, ref CERT_RDN pRDN);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertComparePublicKeyInfo(uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pPublicKey1, ref CERT_PUBLIC_KEY_INFO pPublicKey2);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertGetPublicKeyLength(uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pPublicKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyCertificateSignature(uint hCryptProv, uint32 dwCertEncodingType, in uint8 pbEncoded, uint32 cbEncoded, ref CERT_PUBLIC_KEY_INFO pPublicKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyCertificateSignatureEx(uint hCryptProv, uint32 dwCertEncodingType, uint32 dwSubjectType, void* pvSubject, uint32 dwIssuerType, void* pvIssuer, CRYPT_VERIFY_CERT_FLAGS dwFlags, void* pvExtra);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertIsStrongHashToSign(ref CERT_STRONG_SIGN_PARA pStrongSignPara, PWSTR pwszCNGHashAlgid, CERT_CONTEXT* pSigningCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashToBeSigned(uint hCryptProv, uint32 dwCertEncodingType, in uint8 pbEncoded, uint32 cbEncoded, uint8* pbComputedHash, out uint32 pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashCertificate(uint hCryptProv, uint32 Algid, uint32 dwFlags, in uint8 pbEncoded, uint32 cbEncoded, uint8* pbComputedHash, out uint32 pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashCertificate2(PWSTR pwszCNGHashAlgid, uint32 dwFlags, void* pvReserved, uint8* pbEncoded, uint32 cbEncoded, uint8* pbComputedHash, out uint32 pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignCertificate(uint hCryptProvOrNCryptKey, uint32 dwKeySpec, uint32 dwCertEncodingType, in uint8 pbEncodedToBeSigned, uint32 cbEncodedToBeSigned, ref CRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, void* pvHashAuxInfo, uint8* pbSignature, out uint32 pcbSignature);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignAndEncodeCertificate(uint hCryptProvOrNCryptKey, CERT_KEY_SPEC dwKeySpec, uint32 dwCertEncodingType, PSTR lpszStructType, void* pvStructInfo, ref CRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, void* pvHashAuxInfo, uint8* pbEncoded, out uint32 pcbEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CertVerifyTimeValidity(FILETIME* pTimeToVerify, ref CERT_INFO pCertInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CertVerifyCRLTimeValidity(FILETIME* pTimeToVerify, ref CRL_INFO pCrlInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifyValidityNesting(ref CERT_INFO pSubjectInfo, ref CERT_INFO pIssuerInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifyCRLRevocation(uint32 dwCertEncodingType, ref CERT_INFO pCertId, uint32 cCrlInfo, CRL_INFO** rgpCrlInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CertAlgIdToOID(uint32 dwAlgId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertOIDToAlgId(PSTR pszObjId);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_EXTENSION* CertFindExtension(PSTR pszObjId, uint32 cExtensions, CERT_EXTENSION* rgExtensions);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRYPT_ATTRIBUTE* CertFindAttribute(PSTR pszObjId, uint32 cAttr, CRYPT_ATTRIBUTE* rgAttr);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_RDN_ATTR* CertFindRDNAttr(PSTR pszObjId, ref CERT_NAME_INFO pName);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetIntendedKeyUsage(uint32 dwCertEncodingType, ref CERT_INFO pCertInfo, out uint8 pbKeyUsage, uint32 cbKeyUsage);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptInstallDefaultContext(uint hCryptProv, CRYPT_DEFAULT_CONTEXT_TYPE dwDefaultType, void* pvDefaultPara, CRYPT_DEFAULT_CONTEXT_FLAGS dwFlags, void* pvReserved, void** phDefaultContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUninstallDefaultContext(void* hDefaultContext, uint32 dwFlags, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptExportPublicKeyInfo(uint hCryptProvOrNCryptKey, uint32 dwKeySpec, uint32 dwCertEncodingType, CERT_PUBLIC_KEY_INFO* pInfo, out uint32 pcbInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptExportPublicKeyInfoEx(uint hCryptProvOrNCryptKey, uint32 dwKeySpec, uint32 dwCertEncodingType, PSTR pszPublicKeyObjId, uint32 dwFlags, void* pvAuxInfo, CERT_PUBLIC_KEY_INFO* pInfo, out uint32 pcbInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptExportPublicKeyInfoFromBCryptKeyHandle(BCRYPT_KEY_HANDLE hBCryptKey, uint32 dwCertEncodingType, PSTR pszPublicKeyObjId, uint32 dwFlags, void* pvAuxInfo, CERT_PUBLIC_KEY_INFO* pInfo, out uint32 pcbInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptImportPublicKeyInfo(uint hCryptProv, uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pInfo, out uint phKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptImportPublicKeyInfoEx(uint hCryptProv, uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pInfo, uint32 aiKeyAlg, uint32 dwFlags, void* pvAuxInfo, out uint phKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptImportPublicKeyInfoEx2(uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pInfo, CRYPT_IMPORT_PUBLIC_KEY_FLAGS dwFlags, void* pvAuxInfo, out BCRYPT_KEY_HANDLE phKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptAcquireCertificatePrivateKey(in CERT_CONTEXT pCert, CRYPT_ACQUIRE_FLAGS dwFlags, void* pvParameters, out uint phCryptProvOrNCryptKey, CERT_KEY_SPEC* pdwKeySpec, BOOL* pfCallerFreeProvOrNCryptKey);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptFindCertificateKeyProvInfo(in CERT_CONTEXT pCert, CRYPT_FIND_FLAGS dwFlags, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptImportPKCS8(CRYPT_PKCS8_IMPORT_PARAMS sPrivateKeyAndParams, CRYPT_KEY_FLAGS dwFlags, uint* phCryptProv, void* pvAuxInfo);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptExportPKCS8(uint hCryptProv, uint32 dwKeySpec, PSTR pszPrivateKeyObjId, uint32 dwFlags, void* pvAuxInfo, uint8* pbPrivateKeyBlob, out uint32 pcbPrivateKeyBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashPublicKeyInfo(uint hCryptProv, uint32 Algid, uint32 dwFlags, uint32 dwCertEncodingType, ref CERT_PUBLIC_KEY_INFO pInfo, uint8* pbComputedHash, out uint32 pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertRDNValueToStrA(uint32 dwValueType, ref CRYPTOAPI_BLOB pValue, uint8* psz, uint32 csz);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertRDNValueToStrW(uint32 dwValueType, ref CRYPTOAPI_BLOB pValue, char16* psz, uint32 csz);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertNameToStrA(uint32 dwCertEncodingType, ref CRYPTOAPI_BLOB pName, CERT_STRING_TYPE dwStrType, uint8* psz, uint32 csz);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertNameToStrW(uint32 dwCertEncodingType, ref CRYPTOAPI_BLOB pName, CERT_STRING_TYPE dwStrType, char16* psz, uint32 csz);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertStrToNameA(uint32 dwCertEncodingType, PSTR pszX500, CERT_STRING_TYPE dwStrType, void* pvReserved, uint8* pbEncoded, out uint32 pcbEncoded, PSTR* ppszError);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertStrToNameW(uint32 dwCertEncodingType, PWSTR pszX500, CERT_STRING_TYPE dwStrType, void* pvReserved, uint8* pbEncoded, out uint32 pcbEncoded, PWSTR* ppszError);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertGetNameStringA(in CERT_CONTEXT pCertContext, uint32 dwType, uint32 dwFlags, void* pvTypePara, uint8* pszNameString, uint32 cchNameString);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CertGetNameStringW(in CERT_CONTEXT pCertContext, uint32 dwType, uint32 dwFlags, void* pvTypePara, char16* pszNameString, uint32 cchNameString);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignMessage(ref CRYPT_SIGN_MESSAGE_PARA pSignPara, BOOL fDetachedSignature, uint32 cToBeSigned, uint8** rgpbToBeSigned, uint32* rgcbToBeSigned, uint8* pbSignedBlob, out uint32 pcbSignedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyMessageSignature(ref CRYPT_VERIFY_MESSAGE_PARA pVerifyPara, uint32 dwSignerIndex, in uint8 pbSignedBlob, uint32 cbSignedBlob, uint8* pbDecoded, uint32* pcbDecoded, CERT_CONTEXT** ppSignerCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CryptGetMessageSignerCount(uint32 dwMsgEncodingType, in uint8 pbSignedBlob, uint32 cbSignedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptGetMessageCertificates(uint32 dwMsgAndCertEncodingType, uint hCryptProv, uint32 dwFlags, in uint8 pbSignedBlob, uint32 cbSignedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyDetachedMessageSignature(ref CRYPT_VERIFY_MESSAGE_PARA pVerifyPara, uint32 dwSignerIndex, in uint8 pbDetachedSignBlob, uint32 cbDetachedSignBlob, uint32 cToBeSigned, uint8** rgpbToBeSigned, uint32* rgcbToBeSigned, CERT_CONTEXT** ppSignerCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEncryptMessage(ref CRYPT_ENCRYPT_MESSAGE_PARA pEncryptPara, uint32 cRecipientCert, CERT_CONTEXT** rgpRecipientCert, uint8* pbToBeEncrypted, uint32 cbToBeEncrypted, uint8* pbEncryptedBlob, out uint32 pcbEncryptedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecryptMessage(ref CRYPT_DECRYPT_MESSAGE_PARA pDecryptPara, in uint8 pbEncryptedBlob, uint32 cbEncryptedBlob, uint8* pbDecrypted, uint32* pcbDecrypted, CERT_CONTEXT** ppXchgCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignAndEncryptMessage(ref CRYPT_SIGN_MESSAGE_PARA pSignPara, ref CRYPT_ENCRYPT_MESSAGE_PARA pEncryptPara, uint32 cRecipientCert, CERT_CONTEXT** rgpRecipientCert, in uint8 pbToBeSignedAndEncrypted, uint32 cbToBeSignedAndEncrypted, uint8* pbSignedAndEncryptedBlob, out uint32 pcbSignedAndEncryptedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecryptAndVerifyMessageSignature(ref CRYPT_DECRYPT_MESSAGE_PARA pDecryptPara, ref CRYPT_VERIFY_MESSAGE_PARA pVerifyPara, uint32 dwSignerIndex, in uint8 pbEncryptedBlob, uint32 cbEncryptedBlob, uint8* pbDecrypted, uint32* pcbDecrypted, CERT_CONTEXT** ppXchgCert, CERT_CONTEXT** ppSignerCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptDecodeMessage(uint32 dwMsgTypeFlags, CRYPT_DECRYPT_MESSAGE_PARA* pDecryptPara, CRYPT_VERIFY_MESSAGE_PARA* pVerifyPara, uint32 dwSignerIndex, in uint8 pbEncodedBlob, uint32 cbEncodedBlob, uint32 dwPrevInnerContentType, uint32* pdwMsgType, uint32* pdwInnerContentType, uint8* pbDecoded, uint32* pcbDecoded, CERT_CONTEXT** ppXchgCert, CERT_CONTEXT** ppSignerCert);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptHashMessage(ref CRYPT_HASH_MESSAGE_PARA pHashPara, BOOL fDetachedHash, uint32 cToBeHashed, uint8** rgpbToBeHashed, uint32* rgcbToBeHashed, uint8* pbHashedBlob, uint32* pcbHashedBlob, uint8* pbComputedHash, uint32* pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyMessageHash(ref CRYPT_HASH_MESSAGE_PARA pHashPara, ref uint8 pbHashedBlob, uint32 cbHashedBlob, uint8* pbToBeHashed, uint32* pcbToBeHashed, uint8* pbComputedHash, uint32* pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyDetachedMessageHash(ref CRYPT_HASH_MESSAGE_PARA pHashPara, ref uint8 pbDetachedHashBlob, uint32 cbDetachedHashBlob, uint32 cToBeHashed, uint8** rgpbToBeHashed, uint32* rgcbToBeHashed, uint8* pbComputedHash, uint32* pcbComputedHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSignMessageWithKey(ref CRYPT_KEY_SIGN_MESSAGE_PARA pSignPara, in uint8 pbToBeSigned, uint32 cbToBeSigned, uint8* pbSignedBlob, out uint32 pcbSignedBlob);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyMessageSignatureWithKey(ref CRYPT_KEY_VERIFY_MESSAGE_PARA pVerifyPara, CERT_PUBLIC_KEY_INFO* pPublicKeyInfo, in uint8 pbSignedBlob, uint32 cbSignedBlob, uint8* pbDecoded, uint32* pcbDecoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertOpenSystemStoreA(uint hProv, PSTR szSubsystemProtocol);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertOpenSystemStoreW(uint hProv, PWSTR szSubsystemProtocol);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEncodedCertificateToSystemStoreA(PSTR szCertStoreName, in uint8 pbCertEncoded, uint32 cbCertEncoded);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertAddEncodedCertificateToSystemStoreW(PWSTR szCertStoreName, in uint8 pbCertEncoded, uint32 cbCertEncoded);
	[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT FindCertsByIssuer(CERT_CHAIN* pCertChains, out uint32 pcbCertChains, out uint32 pcCertChains, uint8* pbEncodedIssuerName, uint32 cbEncodedIssuerName, PWSTR pwszPurpose, uint32 dwKeySpec);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptQueryObject(CERT_QUERY_OBJECT_TYPE dwObjectType, void* pvObject, CERT_QUERY_CONTENT_TYPE_FLAGS dwExpectedContentTypeFlags, CERT_QUERY_FORMAT_TYPE_FLAGS dwExpectedFormatTypeFlags, uint32 dwFlags, CERT_QUERY_ENCODING_TYPE* pdwMsgAndCertEncodingType, CERT_QUERY_CONTENT_TYPE* pdwContentType, CERT_QUERY_FORMAT_TYPE* pdwFormatType, void** phCertStore, void** phMsg, void** ppvContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptMemAlloc(uint32 cbSize);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CryptMemRealloc(void* pv, uint32 cbSize);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CryptMemFree(void* pv);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptCreateAsyncHandle(uint32 dwFlags, out HCRYPTASYNC phAsync);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetAsyncParam(HCRYPTASYNC hAsync, PSTR pszParamOid, void* pvParam, PFN_CRYPT_ASYNC_PARAM_FREE_FUNC pfnFree);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetAsyncParam(HCRYPTASYNC hAsync, PSTR pszParamOid, void** ppvParam, PFN_CRYPT_ASYNC_PARAM_FREE_FUNC* ppfnFree);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptCloseAsyncHandle(HCRYPTASYNC hAsync);
	[Import("cryptnet.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRetrieveObjectByUrlA(PSTR pszUrl, PSTR pszObjectOid, uint32 dwRetrievalFlags, uint32 dwTimeout, void** ppvObject, HCRYPTASYNC hAsyncRetrieve, CRYPT_CREDENTIALS* pCredentials, void* pvVerify, CRYPT_RETRIEVE_AUX_INFO* pAuxInfo);
	[Import("cryptnet.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRetrieveObjectByUrlW(PWSTR pszUrl, PSTR pszObjectOid, uint32 dwRetrievalFlags, uint32 dwTimeout, void** ppvObject, HCRYPTASYNC hAsyncRetrieve, CRYPT_CREDENTIALS* pCredentials, void* pvVerify, CRYPT_RETRIEVE_AUX_INFO* pAuxInfo);
	[Import("cryptnet.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptInstallCancelRetrieval(PFN_CRYPT_CANCEL_RETRIEVAL pfnCancel, void* pvArg, uint32 dwFlags, void* pvReserved);
	[Import("cryptnet.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUninstallCancelRetrieval(uint32 dwFlags, void* pvReserved);
	[Import("cryptnet.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetObjectUrl(PSTR pszUrlOid, void* pvPara, CRYPT_GET_URL_FLAGS dwFlags, CRYPT_URL_ARRAY* pUrlArray, out uint32 pcbUrlArray, CRYPT_URL_INFO* pUrlInfo, uint32* pcbUrlInfo, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CONTEXT* CertCreateSelfSignCertificate(uint hCryptProvOrNCryptKey, ref CRYPTOAPI_BLOB pSubjectIssuerBlob, CERT_CREATE_SELFSIGN_FLAGS dwFlags, CRYPT_KEY_PROV_INFO* pKeyProvInfo, CRYPT_ALGORITHM_IDENTIFIER* pSignatureAlgorithm, SYSTEMTIME* pStartTime, SYSTEMTIME* pEndTime, CERT_EXTENSIONS* pExtensions);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptGetKeyIdentifierProperty(in CRYPTOAPI_BLOB pKeyIdentifier, uint32 dwPropId, uint32 dwFlags, PWSTR pwszComputerName, void* pvReserved, void* pvData, out uint32 pcbData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptSetKeyIdentifierProperty(in CRYPTOAPI_BLOB pKeyIdentifier, uint32 dwPropId, uint32 dwFlags, PWSTR pwszComputerName, void* pvReserved, void* pvData);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptEnumKeyIdentifierProperties(CRYPTOAPI_BLOB* pKeyIdentifier, uint32 dwPropId, uint32 dwFlags, PWSTR pwszComputerName, void* pvReserved, void* pvArg, PFN_CRYPT_ENUM_KEYID_PROP pfnEnum);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptCreateKeyIdentifierFromCSP(uint32 dwCertEncodingType, PSTR pszPubKeyOID, in PUBLICKEYSTRUC pPubKeyStruc, uint32 cbPubKeyStruc, uint32 dwFlags, void* pvReserved, uint8* pbHash, out uint32 pcbHash);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertCreateCertificateChainEngine(ref CERT_CHAIN_ENGINE_CONFIG pConfig, out HCERTCHAINENGINE phChainEngine);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertFreeCertificateChainEngine(HCERTCHAINENGINE hChainEngine);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertResyncCertificateChainEngine(HCERTCHAINENGINE hChainEngine);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertGetCertificateChain(HCERTCHAINENGINE hChainEngine, in CERT_CONTEXT pCertContext, FILETIME* pTime, void* hAdditionalStore, ref CERT_CHAIN_PARA pChainPara, uint32 dwFlags, void* pvReserved, out CERT_CHAIN_CONTEXT* ppChainContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertFreeCertificateChain(ref CERT_CHAIN_CONTEXT pChainContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CHAIN_CONTEXT* CertDuplicateCertificateChain(ref CERT_CHAIN_CONTEXT pChainContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_CHAIN_CONTEXT* CertFindChainInStore(void* hCertStore, uint32 dwCertEncodingType, CERT_FIND_CHAIN_IN_STORE_FLAGS dwFindFlags, uint32 dwFindType, void* pvFindPara, CERT_CHAIN_CONTEXT* pPrevChainContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertVerifyCertificateChainPolicy(PSTR pszPolicyOID, ref CERT_CHAIN_CONTEXT pChainContext, ref CERT_CHAIN_POLICY_PARA pPolicyPara, out CERT_CHAIN_POLICY_STATUS pPolicyStatus);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptStringToBinaryA(uint8* pszString, uint32 cchString, CRYPT_STRING dwFlags, uint8* pbBinary, out uint32 pcbBinary, uint32* pdwSkip, uint32* pdwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptStringToBinaryW(char16* pszString, uint32 cchString, CRYPT_STRING dwFlags, uint8* pbBinary, out uint32 pcbBinary, uint32* pdwSkip, uint32* pdwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptBinaryToStringA(in uint8 pbBinary, uint32 cbBinary, CRYPT_STRING dwFlags, uint8* pszString, out uint32 pcchString);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptBinaryToStringW(in uint8 pbBinary, uint32 cbBinary, CRYPT_STRING dwFlags, char16* pszString, out uint32 pcchString);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* PFXImportCertStore(ref CRYPTOAPI_BLOB pPFX, PWSTR szPassword, CRYPT_KEY_FLAGS dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PFXIsPFXBlob(ref CRYPTOAPI_BLOB pPFX);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PFXVerifyPassword(ref CRYPTOAPI_BLOB pPFX, PWSTR szPassword, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PFXExportCertStoreEx(void* hStore, out CRYPTOAPI_BLOB pPFX, PWSTR szPassword, void* pvPara, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PFXExportCertStore(void* hStore, out CRYPTOAPI_BLOB pPFX, PWSTR szPassword, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* CertOpenServerOcspResponse(ref CERT_CHAIN_CONTEXT pChainContext, uint32 dwFlags, CERT_SERVER_OCSP_RESPONSE_OPEN_PARA* pOpenPara);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertAddRefServerOcspResponse(void* hServerOcspResponse);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertCloseServerOcspResponse(void* hServerOcspResponse, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CERT_SERVER_OCSP_RESPONSE_CONTEXT* CertGetServerOcspResponseContext(void* hServerOcspResponse, uint32 dwFlags, void* pvReserved);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertAddRefServerOcspResponseContext(CERT_SERVER_OCSP_RESPONSE_CONTEXT* pServerOcspResponseContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertFreeServerOcspResponseContext(CERT_SERVER_OCSP_RESPONSE_CONTEXT* pServerOcspResponseContext);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertRetrieveLogoOrBiometricInfo(in CERT_CONTEXT pCertContext, PSTR lpszLogoOrBiometricType, uint32 dwRetrievalFlags, uint32 dwTimeout, uint32 dwFlags, void* pvReserved, out uint8* ppbData, out uint32 pcbData, PWSTR* ppwszMimeType);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertSelectCertificateChains(Guid* pSelectionContext, uint32 dwFlags, CERT_SELECT_CHAIN_PARA* pChainParameters, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, void* hStore, out uint32 pcSelection, out CERT_CHAIN_CONTEXT** pprgpSelection);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertFreeCertificateChainList(ref CERT_CHAIN_CONTEXT* prgpSelection);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptRetrieveTimeStamp(PWSTR wszUrl, uint32 dwRetrievalFlags, uint32 dwTimeout, PSTR pszHashId, CRYPT_TIMESTAMP_PARA* pPara, in uint8 pbData, uint32 cbData, out CRYPT_TIMESTAMP_CONTEXT* ppTsContext, CERT_CONTEXT** ppTsSigner, void** phStore);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptVerifyTimeStampSignature(in uint8 pbTSContentInfo, uint32 cbTSContentInfo, uint8* pbData, uint32 cbData, void* hAdditionalStore, out CRYPT_TIMESTAMP_CONTEXT* ppTsContext, CERT_CONTEXT** ppTsSigner, void** phStore);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CertIsWeakHash(uint32 dwHashUseType, PWSTR pwszCNGHashAlgid, uint32 dwChainFlags, CERT_CHAIN_CONTEXT* pSignerChainContext, FILETIME* pTimeStamp, PWSTR pwszFileName);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptProtectData(ref CRYPTOAPI_BLOB pDataIn, PWSTR szDataDescr, CRYPTOAPI_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, uint32 dwFlags, out CRYPTOAPI_BLOB pDataOut);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUnprotectData(ref CRYPTOAPI_BLOB pDataIn, PWSTR* ppszDataDescr, CRYPTOAPI_BLOB* pOptionalEntropy, void* pvReserved, CRYPTPROTECT_PROMPTSTRUCT* pPromptStruct, uint32 dwFlags, out CRYPTOAPI_BLOB pDataOut);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUpdateProtectedState(PSID pOldSid, PWSTR pwszOldPassword, uint32 dwFlags, uint32* pdwSuccessCount, uint32* pdwFailureCount);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptProtectMemory(void* pDataIn, uint32 cbDataIn, uint32 dwFlags);
	[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CryptUnprotectMemory(void* pDataIn, uint32 cbDataIn, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptRegisterProtectionDescriptorName(PWSTR pwszName, PWSTR pwszDescriptorString, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptQueryProtectionDescriptorName(PWSTR pwszName, char16* pwszDescriptorString, out uint pcDescriptorString, uint32 dwFlags);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptCreateProtectionDescriptor(PWSTR pwszDescriptorString, uint32 dwFlags, out NCRYPT_DESCRIPTOR_HANDLE phDescriptor);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptCloseProtectionDescriptor(NCRYPT_DESCRIPTOR_HANDLE hDescriptor);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptGetProtectionDescriptorInfo(NCRYPT_DESCRIPTOR_HANDLE hDescriptor, NCRYPT_ALLOC_PARA* pMemPara, uint32 dwInfoType, void** ppvInfo);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptProtectSecret(NCRYPT_DESCRIPTOR_HANDLE hDescriptor, uint32 dwFlags, in uint8 pbData, uint32 cbData, NCRYPT_ALLOC_PARA* pMemPara, HWND hWnd, out uint8* ppbProtectedBlob, out uint32 pcbProtectedBlob);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptUnprotectSecret(NCRYPT_DESCRIPTOR_HANDLE* phDescriptor, NCRYPT_FLAGS dwFlags, in uint8 pbProtectedBlob, uint32 cbProtectedBlob, NCRYPT_ALLOC_PARA* pMemPara, HWND hWnd, out uint8* ppbData, out uint32 pcbData);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptStreamOpenToProtect(NCRYPT_DESCRIPTOR_HANDLE hDescriptor, uint32 dwFlags, HWND hWnd, ref NCRYPT_PROTECT_STREAM_INFO pStreamInfo, out NCRYPT_STREAM_HANDLE phStream);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptStreamOpenToUnprotect(ref NCRYPT_PROTECT_STREAM_INFO pStreamInfo, uint32 dwFlags, HWND hWnd, out NCRYPT_STREAM_HANDLE phStream);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptStreamOpenToUnprotectEx(ref NCRYPT_PROTECT_STREAM_INFO_EX pStreamInfo, uint32 dwFlags, HWND hWnd, out NCRYPT_STREAM_HANDLE phStream);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptStreamUpdate(NCRYPT_STREAM_HANDLE hStream, in uint8 pbData, uint cbData, BOOL fFinal);
	[Import("ncrypt.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NCryptStreamClose(NCRYPT_STREAM_HANDLE hStream);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlClose(void* hCryptXml);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetTransforms(out CRYPT_XML_TRANSFORM_CHAIN_CONFIG* ppConfig);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlOpenToEncode(CRYPT_XML_TRANSFORM_CHAIN_CONFIG* pConfig, CRYPT_XML_FLAGS dwFlags, PWSTR wszId, CRYPT_XML_PROPERTY* rgProperty, uint32 cProperty, CRYPT_XML_BLOB* pEncoded, void** phSignature);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlOpenToDecode(CRYPT_XML_TRANSFORM_CHAIN_CONFIG* pConfig, CRYPT_XML_FLAGS dwFlags, CRYPT_XML_PROPERTY* rgProperty, uint32 cProperty, in CRYPT_XML_BLOB pEncoded, void** phCryptXml);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlAddObject(void* hSignatureOrObject, uint32 dwFlags, CRYPT_XML_PROPERTY* rgProperty, uint32 cProperty, in CRYPT_XML_BLOB pEncoded, CRYPT_XML_OBJECT** ppObject);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlCreateReference(void* hCryptXml, uint32 dwFlags, PWSTR wszId, PWSTR wszURI, PWSTR wszType, in CRYPT_XML_ALGORITHM pDigestMethod, uint32 cTransform, CRYPT_XML_ALGORITHM* rgTransform, void** phReference);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlDigestReference(void* hReference, uint32 dwFlags, ref CRYPT_XML_DATA_PROVIDER pDataProviderIn);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlSetHMACSecret(void* hSignature, in uint8 pbSecret, uint32 cbSecret);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlSign(void* hSignature, uint hKey, CERT_KEY_SPEC dwKeySpec, CRYPT_XML_FLAGS dwFlags, CRYPT_XML_KEYINFO_SPEC dwKeyInfoSpec, void* pvKeyInfoSpec, in CRYPT_XML_ALGORITHM pSignatureMethod, in CRYPT_XML_ALGORITHM pCanonicalization);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlImportPublicKey(CRYPT_XML_FLAGS dwFlags, in CRYPT_XML_KEY_VALUE pKeyValue, out BCRYPT_KEY_HANDLE phKey);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlVerifySignature(void* hSignature, BCRYPT_KEY_HANDLE hKey, CRYPT_XML_FLAGS dwFlags);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetDocContext(void* hCryptXml, out CRYPT_XML_DOC_CTXT* ppStruct);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetSignature(void* hCryptXml, out CRYPT_XML_SIGNATURE* ppStruct);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetReference(void* hCryptXml, out CRYPT_XML_REFERENCE* ppStruct);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetStatus(void* hCryptXml, out CRYPT_XML_STATUS pStatus);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlEncode(void* hCryptXml, CRYPT_XML_CHARSET dwCharset, CRYPT_XML_PROPERTY* rgProperty, uint32 cProperty, void* pvCallbackState, PFN_CRYPT_XML_WRITE_CALLBACK pfnWrite);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlGetAlgorithmInfo(in CRYPT_XML_ALGORITHM pXmlAlgorithm, CRYPT_XML_FLAGS dwFlags, out CRYPT_XML_ALGORITHM_INFO* ppAlgInfo);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CRYPT_XML_ALGORITHM_INFO* CryptXmlFindAlgorithmInfo(uint32 dwFindByType, void* pvFindBy, uint32 dwGroupId, uint32 dwFlags);
	[Import("cryptxml.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CryptXmlEnumAlgorithmInfo(uint32 dwGroupId, uint32 dwFlags, void* pvArg, PFN_CRYPT_XML_ENUM_ALG_INFO pfnEnumAlgInfo);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetToken(uint32 cPolicyChain, POLICY_ELEMENT* pPolicyChain, out GENERIC_XML_TOKEN* securityToken, out INFORMATIONCARD_CRYPTO_HANDLE* phProofTokenCrypto);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ManageCardSpace();
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ImportInformationCard(PWSTR fileName);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT Encrypt(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, BOOL fOAEP, uint32 cbInData, ref uint8 pInData, out uint32 pcbOutData, out uint8* ppOutData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT Decrypt(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, BOOL fOAEP, uint32 cbInData, ref uint8 pInData, out uint32 pcbOutData, out uint8* ppOutData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SignHash(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbHash, ref uint8 pHash, PWSTR hashAlgOid, out uint32 pcbSig, out uint8* ppSig);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VerifyHash(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbHash, ref uint8 pHash, PWSTR hashAlgOid, uint32 cbSig, ref uint8 pSig, out BOOL pfVerified);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetCryptoTransform(ref INFORMATIONCARD_CRYPTO_HANDLE hSymmetricCrypto, uint32 mode, PaddingMode padding, uint32 feedbackSize, Direction direction, uint32 cbIV, ref uint8 pIV, out INFORMATIONCARD_CRYPTO_HANDLE* pphTransform);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetKeyedHash(ref INFORMATIONCARD_CRYPTO_HANDLE hSymmetricCrypto, out INFORMATIONCARD_CRYPTO_HANDLE* pphHash);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT TransformBlock(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbInData, ref uint8 pInData, out uint32 pcbOutData, out uint8* ppOutData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT TransformFinalBlock(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbInData, ref uint8 pInData, out uint32 pcbOutData, out uint8* ppOutData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HashCore(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbInData, ref uint8 pInData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HashFinal(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbInData, ref uint8 pInData, out uint32 pcbOutData, out uint8* ppOutData);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL FreeToken(ref GENERIC_XML_TOKEN pAllocMemory);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CloseCryptoHandle(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GenerateDerivedKey(ref INFORMATIONCARD_CRYPTO_HANDLE hCrypto, uint32 cbLabel, ref uint8 pLabel, uint32 cbNonce, ref uint8 pNonce, uint32 derivedKeyLength, uint32 offset, PWSTR algId, out uint32 pcbKey, out uint8* ppKey);
	[Import("infocardapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetBrowserToken(uint32 dwParamType, void* pParam, uint32* pcbToken, uint8** ppToken);
	#endregion
}
