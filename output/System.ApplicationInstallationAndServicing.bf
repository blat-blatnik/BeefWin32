using System;

// namespace System.ApplicationInstallationAndServicing
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 UIALL = 32768;
		public const uint32 LOGTOKEN_TYPE_MASK = 3;
		public const uint32 LOGTOKEN_UNSPECIFIED = 0;
		public const uint32 LOGTOKEN_NO_LOG = 1;
		public const uint32 LOGTOKEN_SETUPAPI_APPLOG = 2;
		public const uint32 LOGTOKEN_SETUPAPI_DEVLOG = 3;
		public const uint32 TXTLOG_SETUPAPI_DEVLOG = 1;
		public const uint32 TXTLOG_SETUPAPI_CMDLINE = 2;
		public const uint32 TXTLOG_SETUPAPI_BITS = 3;
		public const uint32 TXTLOG_ERROR = 1;
		public const uint32 TXTLOG_WARNING = 2;
		public const uint32 TXTLOG_SYSTEM_STATE_CHANGE = 3;
		public const uint32 TXTLOG_SUMMARY = 4;
		public const uint32 TXTLOG_DETAILS = 5;
		public const uint32 TXTLOG_VERBOSE = 6;
		public const uint32 TXTLOG_VERY_VERBOSE = 7;
		public const uint32 TXTLOG_RESERVED_FLAGS = 65520;
		public const uint32 TXTLOG_TIMESTAMP = 65536;
		public const uint32 TXTLOG_DEPTH_INCR = 131072;
		public const uint32 TXTLOG_DEPTH_DECR = 262144;
		public const uint32 TXTLOG_TAB_1 = 524288;
		public const uint32 TXTLOG_FLUSH_FILE = 1048576;
		public const uint32 TXTLOG_DEVINST = 1;
		public const uint32 TXTLOG_INF = 2;
		public const uint32 TXTLOG_FILEQ = 4;
		public const uint32 TXTLOG_COPYFILES = 8;
		public const uint32 TXTLOG_SIGVERIF = 32;
		public const uint32 TXTLOG_BACKUP = 128;
		public const uint32 TXTLOG_UI = 256;
		public const uint32 TXTLOG_UTIL = 512;
		public const uint32 TXTLOG_INFDB = 1024;
		public const uint32 TXTLOG_DRVSETUP = 4194304;
		public const uint32 TXTLOG_POLICY = 8388608;
		public const uint32 TXTLOG_NEWDEV = 16777216;
		public const uint32 TXTLOG_UMPNPMGR = 33554432;
		public const uint32 TXTLOG_DRIVER_STORE = 67108864;
		public const uint32 TXTLOG_SETUP = 134217728;
		public const uint32 TXTLOG_CMI = 268435456;
		public const uint32 TXTLOG_DEVMGR = 536870912;
		public const uint32 TXTLOG_INSTALLER = 1073741824;
		public const uint32 TXTLOG_VENDOR = 2147483648;
		public const Guid CLSID_EvalCom2 = .(0x6e5e1910, 0x8053, 0x4660, 0xb7, 0x95, 0x6b, 0x61, 0x2e, 0x29, 0xbc, 0x58);
		public const uint32 _WIN32_MSM = 100;
		public const Guid LIBID_MsmMergeTypeLib = .(0x0adda82f, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
		public const Guid CLSID_MsmMerge2 = .(0xf94985d5, 0x29f9, 0x4743, 0x98, 0x05, 0x99, 0xbc, 0x3f, 0x35, 0xb6, 0x78);
		public const uint32 _WIN32_MSI = 500;
		public const uint32 MAX_GUID_CHARS = 38;
		public const uint32 MAX_FEATURE_CHARS = 38;
		public const uint32 MSI_INVALID_HASH_IS_FATAL = 1;
		public const uint32 ERROR_ROLLBACK_DISABLED = 1653;
		public const uint32 MSI_NULL_INTEGER = 2147483648;
		public const int32 INSTALLMESSAGE_TYPEMASK = -16777216;
		public const uint32 STREAM_FORMAT_COMPLIB_MODULE = 0;
		public const uint32 STREAM_FORMAT_COMPLIB_MANIFEST = 1;
		public const uint32 STREAM_FORMAT_WIN32_MODULE = 2;
		public const uint32 STREAM_FORMAT_WIN32_MANIFEST = 4;
		public const uint32 IASSEMBLYCACHEITEM_COMMIT_FLAG_REFRESH = 1;
		public const uint32 ASSEMBLYINFO_FLAG_INSTALLED = 1;
		public const uint32 ASSEMBLYINFO_FLAG_PAYLOADRESIDENT = 2;
		public const uint32 IASSEMBLYCACHEITEM_COMMIT_DISPOSITION_INSTALLED = 1;
		public const uint32 IASSEMBLYCACHEITEM_COMMIT_DISPOSITION_REFRESHED = 2;
		public const uint32 IASSEMBLYCACHEITEM_COMMIT_DISPOSITION_ALREADY_INSTALLED = 3;
		public const Guid FUSION_REFCOUNT_UNINSTALL_SUBKEY_GUID = .(0x8cedc215, 0xac4b, 0x488b, 0x93, 0xc0, 0xa5, 0x0a, 0x49, 0xcb, 0x2f, 0xb8);
		public const Guid FUSION_REFCOUNT_FILEPATH_GUID = .(0xb02f9d65, 0xfb77, 0x4f7a, 0xaf, 0xa5, 0xb3, 0x91, 0x30, 0x9f, 0x11, 0xc9);
		public const Guid FUSION_REFCOUNT_OPAQUE_STRING_GUID = .(0x2ec93463, 0xb0c3, 0x45e1, 0x83, 0x64, 0x32, 0x7e, 0x96, 0xae, 0xa8, 0x56);
		public const uint32 SFC_DISABLE_NORMAL = 0;
		public const uint32 SFC_DISABLE_ASK = 1;
		public const uint32 SFC_DISABLE_ONCE = 2;
		public const uint32 SFC_DISABLE_SETUP = 3;
		public const uint32 SFC_DISABLE_NOPOPUPS = 4;
		public const uint32 SFC_SCAN_NORMAL = 0;
		public const uint32 SFC_SCAN_ALWAYS = 1;
		public const uint32 SFC_SCAN_ONCE = 2;
		public const uint32 SFC_SCAN_IMMEDIATE = 3;
		public const uint32 SFC_QUOTA_DEFAULT = 50;
		public const uint32 PID_TITLE = 2;
		public const uint32 PID_SUBJECT = 3;
		public const uint32 PID_AUTHOR = 4;
		public const uint32 PID_KEYWORDS = 5;
		public const uint32 PID_COMMENTS = 6;
		public const uint32 PID_TEMPLATE = 7;
		public const uint32 PID_LASTAUTHOR = 8;
		public const uint32 PID_REVNUMBER = 9;
		public const uint32 PID_EDITTIME = 10;
		public const uint32 PID_LASTPRINTED = 11;
		public const uint32 PID_CREATE_DTM = 12;
		public const uint32 PID_LASTSAVE_DTM = 13;
		public const uint32 PID_PAGECOUNT = 14;
		public const uint32 PID_WORDCOUNT = 15;
		public const uint32 PID_CHARCOUNT = 16;
		public const uint32 PID_THUMBNAIL = 17;
		public const uint32 PID_APPNAME = 18;
		public const uint32 PID_MSIVERSION = 14;
		public const uint32 PID_MSISOURCE = 15;
		public const uint32 PID_MSIRESTRICT = 16;
		public const uint32 PATCH_OPTION_USE_BEST = 0;
		public const uint32 PATCH_OPTION_USE_LZX_BEST = 3;
		public const uint32 PATCH_OPTION_USE_LZX_A = 1;
		public const uint32 PATCH_OPTION_USE_LZX_B = 2;
		public const uint32 PATCH_OPTION_USE_LZX_LARGE = 4;
		public const uint32 PATCH_OPTION_NO_BINDFIX = 65536;
		public const uint32 PATCH_OPTION_NO_LOCKFIX = 131072;
		public const uint32 PATCH_OPTION_NO_REBASE = 262144;
		public const uint32 PATCH_OPTION_FAIL_IF_SAME_FILE = 524288;
		public const uint32 PATCH_OPTION_FAIL_IF_BIGGER = 1048576;
		public const uint32 PATCH_OPTION_NO_CHECKSUM = 2097152;
		public const uint32 PATCH_OPTION_NO_RESTIMEFIX = 4194304;
		public const uint32 PATCH_OPTION_NO_TIMESTAMP = 8388608;
		public const uint32 PATCH_OPTION_SIGNATURE_MD5 = 16777216;
		public const uint32 PATCH_OPTION_INTERLEAVE_FILES = 1073741824;
		public const uint32 PATCH_OPTION_RESERVED1 = 2147483648;
		public const uint32 PATCH_OPTION_VALID_FLAGS = 3237937159;
		public const uint32 PATCH_SYMBOL_NO_IMAGEHLP = 1;
		public const uint32 PATCH_SYMBOL_NO_FAILURES = 2;
		public const uint32 PATCH_SYMBOL_UNDECORATED_TOO = 4;
		public const uint32 PATCH_SYMBOL_RESERVED1 = 2147483648;
		public const uint32 PATCH_TRANSFORM_PE_RESOURCE_2 = 256;
		public const uint32 PATCH_TRANSFORM_PE_IRELOC_2 = 512;
		public const uint32 APPLY_OPTION_FAIL_IF_EXACT = 1;
		public const uint32 APPLY_OPTION_FAIL_IF_CLOSE = 2;
		public const uint32 APPLY_OPTION_TEST_ONLY = 4;
		public const uint32 APPLY_OPTION_VALID_FLAGS = 7;
		public const uint32 ERROR_PATCH_ENCODE_FAILURE = 3222155521;
		public const uint32 ERROR_PATCH_INVALID_OPTIONS = 3222155522;
		public const uint32 ERROR_PATCH_SAME_FILE = 3222155523;
		public const uint32 ERROR_PATCH_RETAIN_RANGES_DIFFER = 3222155524;
		public const uint32 ERROR_PATCH_BIGGER_THAN_COMPRESSED = 3222155525;
		public const uint32 ERROR_PATCH_IMAGEHLP_FAILURE = 3222155526;
		public const uint32 ERROR_PATCH_DECODE_FAILURE = 3222159617;
		public const uint32 ERROR_PATCH_CORRUPT = 3222159618;
		public const uint32 ERROR_PATCH_NEWER_FORMAT = 3222159619;
		public const uint32 ERROR_PATCH_WRONG_FILE = 3222159620;
		public const uint32 ERROR_PATCH_NOT_NECESSARY = 3222159621;
		public const uint32 ERROR_PATCH_NOT_AVAILABLE = 3222159622;
		public const uint32 ERROR_PCW_BASE = 3222163713;
		public const uint32 ERROR_PCW_PCP_DOESNT_EXIST = 3222163713;
		public const uint32 ERROR_PCW_PCP_BAD_FORMAT = 3222163714;
		public const uint32 ERROR_PCW_CANT_CREATE_TEMP_FOLDER = 3222163715;
		public const uint32 ERROR_PCW_MISSING_PATCH_PATH = 3222163716;
		public const uint32 ERROR_PCW_CANT_OVERWRITE_PATCH = 3222163717;
		public const uint32 ERROR_PCW_CANT_CREATE_PATCH_FILE = 3222163718;
		public const uint32 ERROR_PCW_MISSING_PATCH_GUID = 3222163719;
		public const uint32 ERROR_PCW_BAD_PATCH_GUID = 3222163720;
		public const uint32 ERROR_PCW_BAD_GUIDS_TO_REPLACE = 3222163721;
		public const uint32 ERROR_PCW_BAD_TARGET_PRODUCT_CODE_LIST = 3222163722;
		public const uint32 ERROR_PCW_NO_UPGRADED_IMAGES_TO_PATCH = 3222163723;
		public const uint32 ERROR_PCW_BAD_API_PATCHING_SYMBOL_FLAGS = 3222163725;
		public const uint32 ERROR_PCW_OODS_COPYING_MSI = 3222163726;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_NAME_TOO_LONG = 3222163727;
		public const uint32 ERROR_PCW_BAD_UPGRADED_IMAGE_NAME = 3222163728;
		public const uint32 ERROR_PCW_DUP_UPGRADED_IMAGE_NAME = 3222163729;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATH_TOO_LONG = 3222163730;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATH_EMPTY = 3222163731;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATH_NOT_EXIST = 3222163732;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATH_NOT_MSI = 3222163733;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_COMPRESSED = 3222163734;
		public const uint32 ERROR_PCW_TARGET_IMAGE_NAME_TOO_LONG = 3222163735;
		public const uint32 ERROR_PCW_BAD_TARGET_IMAGE_NAME = 3222163736;
		public const uint32 ERROR_PCW_DUP_TARGET_IMAGE_NAME = 3222163737;
		public const uint32 ERROR_PCW_TARGET_IMAGE_PATH_TOO_LONG = 3222163738;
		public const uint32 ERROR_PCW_TARGET_IMAGE_PATH_EMPTY = 3222163739;
		public const uint32 ERROR_PCW_TARGET_IMAGE_PATH_NOT_EXIST = 3222163740;
		public const uint32 ERROR_PCW_TARGET_IMAGE_PATH_NOT_MSI = 3222163741;
		public const uint32 ERROR_PCW_TARGET_IMAGE_COMPRESSED = 3222163742;
		public const uint32 ERROR_PCW_TARGET_BAD_PROD_VALIDATE = 3222163743;
		public const uint32 ERROR_PCW_TARGET_BAD_PROD_CODE_VAL = 3222163744;
		public const uint32 ERROR_PCW_UPGRADED_MISSING_SRC_FILES = 3222163745;
		public const uint32 ERROR_PCW_TARGET_MISSING_SRC_FILES = 3222163746;
		public const uint32 ERROR_PCW_IMAGE_FAMILY_NAME_TOO_LONG = 3222163747;
		public const uint32 ERROR_PCW_BAD_IMAGE_FAMILY_NAME = 3222163748;
		public const uint32 ERROR_PCW_DUP_IMAGE_FAMILY_NAME = 3222163749;
		public const uint32 ERROR_PCW_BAD_IMAGE_FAMILY_SRC_PROP = 3222163750;
		public const uint32 ERROR_PCW_UFILEDATA_LONG_FILE_TABLE_KEY = 3222163751;
		public const uint32 ERROR_PCW_UFILEDATA_BLANK_FILE_TABLE_KEY = 3222163752;
		public const uint32 ERROR_PCW_UFILEDATA_MISSING_FILE_TABLE_KEY = 3222163753;
		public const uint32 ERROR_PCW_EXTFILE_LONG_FILE_TABLE_KEY = 3222163754;
		public const uint32 ERROR_PCW_EXTFILE_BLANK_FILE_TABLE_KEY = 3222163755;
		public const uint32 ERROR_PCW_EXTFILE_BAD_FAMILY_FIELD = 3222163756;
		public const uint32 ERROR_PCW_EXTFILE_LONG_PATH_TO_FILE = 3222163757;
		public const uint32 ERROR_PCW_EXTFILE_BLANK_PATH_TO_FILE = 3222163758;
		public const uint32 ERROR_PCW_EXTFILE_MISSING_FILE = 3222163759;
		public const uint32 ERROR_PCW_BAD_FILE_SEQUENCE_START = 3222163770;
		public const uint32 ERROR_PCW_CANT_COPY_FILE_TO_TEMP_FOLDER = 3222163771;
		public const uint32 ERROR_PCW_CANT_CREATE_ONE_PATCH_FILE = 3222163772;
		public const uint32 ERROR_PCW_BAD_IMAGE_FAMILY_DISKID = 3222163773;
		public const uint32 ERROR_PCW_BAD_IMAGE_FAMILY_FILESEQSTART = 3222163774;
		public const uint32 ERROR_PCW_BAD_UPGRADED_IMAGE_FAMILY = 3222163775;
		public const uint32 ERROR_PCW_BAD_TARGET_IMAGE_UPGRADED = 3222163776;
		public const uint32 ERROR_PCW_DUP_TARGET_IMAGE_PACKCODE = 3222163777;
		public const uint32 ERROR_PCW_UFILEDATA_BAD_UPGRADED_FIELD = 3222163778;
		public const uint32 ERROR_PCW_MISMATCHED_PRODUCT_CODES = 3222163779;
		public const uint32 ERROR_PCW_MISMATCHED_PRODUCT_VERSIONS = 3222163780;
		public const uint32 ERROR_PCW_CANNOT_WRITE_DDF = 3222163781;
		public const uint32 ERROR_PCW_CANNOT_RUN_MAKECAB = 3222163782;
		public const uint32 ERROR_PCW_WRITE_SUMMARY_PROPERTIES = 3222163787;
		public const uint32 ERROR_PCW_TFILEDATA_LONG_FILE_TABLE_KEY = 3222163788;
		public const uint32 ERROR_PCW_TFILEDATA_BLANK_FILE_TABLE_KEY = 3222163789;
		public const uint32 ERROR_PCW_TFILEDATA_MISSING_FILE_TABLE_KEY = 3222163790;
		public const uint32 ERROR_PCW_TFILEDATA_BAD_TARGET_FIELD = 3222163791;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATCH_PATH_TOO_LONG = 3222163792;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATCH_PATH_NOT_EXIST = 3222163793;
		public const uint32 ERROR_PCW_UPGRADED_IMAGE_PATCH_PATH_NOT_MSI = 3222163794;
		public const uint32 ERROR_PCW_DUP_UPGRADED_IMAGE_PACKCODE = 3222163795;
		public const uint32 ERROR_PCW_UFILEIGNORE_BAD_UPGRADED_FIELD = 3222163796;
		public const uint32 ERROR_PCW_UFILEIGNORE_LONG_FILE_TABLE_KEY = 3222163797;
		public const uint32 ERROR_PCW_UFILEIGNORE_BLANK_FILE_TABLE_KEY = 3222163798;
		public const uint32 ERROR_PCW_UFILEIGNORE_BAD_FILE_TABLE_KEY = 3222163799;
		public const uint32 ERROR_PCW_FAMILY_RANGE_NAME_TOO_LONG = 3222163800;
		public const uint32 ERROR_PCW_BAD_FAMILY_RANGE_NAME = 3222163801;
		public const uint32 ERROR_PCW_FAMILY_RANGE_LONG_FILE_TABLE_KEY = 3222163802;
		public const uint32 ERROR_PCW_FAMILY_RANGE_BLANK_FILE_TABLE_KEY = 3222163803;
		public const uint32 ERROR_PCW_FAMILY_RANGE_LONG_RETAIN_OFFSETS = 3222163804;
		public const uint32 ERROR_PCW_FAMILY_RANGE_BLANK_RETAIN_OFFSETS = 3222163805;
		public const uint32 ERROR_PCW_FAMILY_RANGE_BAD_RETAIN_OFFSETS = 3222163806;
		public const uint32 ERROR_PCW_FAMILY_RANGE_LONG_RETAIN_LENGTHS = 3222163807;
		public const uint32 ERROR_PCW_FAMILY_RANGE_BLANK_RETAIN_LENGTHS = 3222163808;
		public const uint32 ERROR_PCW_FAMILY_RANGE_BAD_RETAIN_LENGTHS = 3222163809;
		public const uint32 ERROR_PCW_FAMILY_RANGE_COUNT_MISMATCH = 3222163810;
		public const uint32 ERROR_PCW_EXTFILE_LONG_IGNORE_OFFSETS = 3222163811;
		public const uint32 ERROR_PCW_EXTFILE_BAD_IGNORE_OFFSETS = 3222163812;
		public const uint32 ERROR_PCW_EXTFILE_LONG_IGNORE_LENGTHS = 3222163813;
		public const uint32 ERROR_PCW_EXTFILE_BAD_IGNORE_LENGTHS = 3222163814;
		public const uint32 ERROR_PCW_EXTFILE_IGNORE_COUNT_MISMATCH = 3222163815;
		public const uint32 ERROR_PCW_EXTFILE_LONG_RETAIN_OFFSETS = 3222163816;
		public const uint32 ERROR_PCW_EXTFILE_BAD_RETAIN_OFFSETS = 3222163817;
		public const uint32 ERROR_PCW_TFILEDATA_LONG_IGNORE_OFFSETS = 3222163819;
		public const uint32 ERROR_PCW_TFILEDATA_BAD_IGNORE_OFFSETS = 3222163820;
		public const uint32 ERROR_PCW_TFILEDATA_LONG_IGNORE_LENGTHS = 3222163821;
		public const uint32 ERROR_PCW_TFILEDATA_BAD_IGNORE_LENGTHS = 3222163822;
		public const uint32 ERROR_PCW_TFILEDATA_IGNORE_COUNT_MISMATCH = 3222163823;
		public const uint32 ERROR_PCW_TFILEDATA_LONG_RETAIN_OFFSETS = 3222163824;
		public const uint32 ERROR_PCW_TFILEDATA_BAD_RETAIN_OFFSETS = 3222163825;
		public const uint32 ERROR_PCW_CANT_GENERATE_TRANSFORM = 3222163827;
		public const uint32 ERROR_PCW_CANT_CREATE_SUMMARY_INFO = 3222163828;
		public const uint32 ERROR_PCW_CANT_GENERATE_TRANSFORM_POUND = 3222163829;
		public const uint32 ERROR_PCW_CANT_CREATE_SUMMARY_INFO_POUND = 3222163830;
		public const uint32 ERROR_PCW_BAD_UPGRADED_IMAGE_PRODUCT_CODE = 3222163831;
		public const uint32 ERROR_PCW_BAD_UPGRADED_IMAGE_PRODUCT_VERSION = 3222163832;
		public const uint32 ERROR_PCW_BAD_UPGRADED_IMAGE_UPGRADE_CODE = 3222163833;
		public const uint32 ERROR_PCW_BAD_TARGET_IMAGE_PRODUCT_CODE = 3222163834;
		public const uint32 ERROR_PCW_BAD_TARGET_IMAGE_PRODUCT_VERSION = 3222163835;
		public const uint32 ERROR_PCW_BAD_TARGET_IMAGE_UPGRADE_CODE = 3222163836;
		public const uint32 ERROR_PCW_MATCHED_PRODUCT_VERSIONS = 3222163837;
		public const uint32 ERROR_PCW_OBSOLETION_WITH_SEQUENCE_DATA = 3222163838;
		public const uint32 ERROR_PCW_OBSOLETION_WITH_MSI30 = 3222163839;
		public const uint32 ERROR_PCW_OBSOLETION_WITH_PATCHSEQUENCE = 3222163840;
		public const uint32 ERROR_PCW_CANNOT_CREATE_TABLE = 3222163841;
		public const uint32 ERROR_PCW_CANT_GENERATE_SEQUENCEINFO_MAJORUPGD = 3222163842;
		public const uint32 ERROR_PCW_MAJOR_UPGD_WITHOUT_SEQUENCING = 3222163843;
		public const uint32 ERROR_PCW_BAD_PRODUCTVERSION_VALIDATION = 3222163844;
		public const uint32 ERROR_PCW_BAD_TRANSFORMSET = 3222163845;
		public const uint32 ERROR_PCW_BAD_TGT_UPD_IMAGES = 3222163846;
		public const uint32 ERROR_PCW_BAD_SUPERCEDENCE = 3222163847;
		public const uint32 ERROR_PCW_BAD_SEQUENCE = 3222163848;
		public const uint32 ERROR_PCW_BAD_TARGET = 3222163849;
		public const uint32 ERROR_PCW_NULL_PATCHFAMILY = 3222163850;
		public const uint32 ERROR_PCW_NULL_SEQUENCE_NUMBER = 3222163851;
		public const uint32 ERROR_PCW_BAD_VERSION_STRING = 3222163852;
		public const uint32 ERROR_PCW_BAD_MAJOR_VERSION = 3222163853;
		public const uint32 ERROR_PCW_SEQUENCING_BAD_TARGET = 3222163854;
		public const uint32 ERROR_PCW_PATCHMETADATA_PROP_NOT_SET = 3222163855;
		public const uint32 ERROR_PCW_INVALID_PATCHMETADATA_PROP = 3222163856;
		public const uint32 ERROR_PCW_INVALID_SUPERCEDENCE = 3222163857;
		public const uint32 ERROR_PCW_DUPLICATE_SEQUENCE_RECORD = 3222163858;
		public const uint32 ERROR_PCW_WRONG_PATCHMETADATA_STRD_PROP = 3222163859;
		public const uint32 ERROR_PCW_INVALID_PARAMETER = 3222163860;
		public const uint32 ERROR_PCW_CREATEFILE_LOG_FAILED = 3222163861;
		public const uint32 ERROR_PCW_INVALID_LOG_LEVEL = 3222163862;
		public const uint32 ERROR_PCW_INVALID_UI_LEVEL = 3222163863;
		public const uint32 ERROR_PCW_ERROR_WRITING_TO_LOG = 3222163864;
		public const uint32 ERROR_PCW_OUT_OF_MEMORY = 3222163865;
		public const uint32 ERROR_PCW_UNKNOWN_ERROR = 3222163866;
		public const uint32 ERROR_PCW_UNKNOWN_INFO = 3222163867;
		public const uint32 ERROR_PCW_UNKNOWN_WARN = 3222163868;
		public const uint32 ERROR_PCW_OPEN_VIEW = 3222163869;
		public const uint32 ERROR_PCW_EXECUTE_VIEW = 3222163870;
		public const uint32 ERROR_PCW_VIEW_FETCH = 3222163871;
		public const uint32 ERROR_PCW_FAILED_EXPAND_PATH = 3222163872;
		public const uint32 ERROR_PCW_INTERNAL_ERROR = 3222163969;
		public const uint32 ERROR_PCW_INVALID_PCP_PROPERTY = 3222163970;
		public const uint32 ERROR_PCW_INVALID_PCP_TARGETIMAGES = 3222163971;
		public const uint32 ERROR_PCW_LAX_VALIDATION_FLAGS = 3222163972;
		public const uint32 ERROR_PCW_FAILED_CREATE_TRANSFORM = 3222163973;
		public const uint32 ERROR_PCW_CANT_DELETE_TEMP_FOLDER = 3222163974;
		public const uint32 ERROR_PCW_MISSING_DIRECTORY_TABLE = 3222163975;
		public const uint32 ERROR_PCW_INVALID_SUPERSEDENCE_VALUE = 3222163976;
		public const uint32 ERROR_PCW_INVALID_PATCH_TYPE_SEQUENCING = 3222163977;
		public const uint32 ERROR_PCW_CANT_READ_FILE = 3222163978;
		public const uint32 ERROR_PCW_TARGET_WRONG_PRODUCT_VERSION_COMP = 3222163979;
		public const uint32 ERROR_PCW_INVALID_PCP_UPGRADEDFILESTOIGNORE = 3222163980;
		public const uint32 ERROR_PCW_INVALID_PCP_UPGRADEDIMAGES = 3222163981;
		public const uint32 ERROR_PCW_INVALID_PCP_EXTERNALFILES = 3222163982;
		public const uint32 ERROR_PCW_INVALID_PCP_IMAGEFAMILIES = 3222163983;
		public const uint32 ERROR_PCW_INVALID_PCP_PATCHSEQUENCE = 3222163984;
		public const uint32 ERROR_PCW_INVALID_PCP_TARGETFILES_OPTIONALDATA = 3222163985;
		public const uint32 ERROR_PCW_INVALID_PCP_UPGRADEDFILES_OPTIONALDATA = 3222163986;
		public const uint32 ERROR_PCW_MISSING_PATCHMETADATA = 3222163987;
		public const uint32 ERROR_PCW_IMAGE_PATH_NOT_EXIST = 3222163988;
		public const uint32 ERROR_PCW_INVALID_RANGE_ELEMENT = 3222163989;
		public const uint32 ERROR_PCW_INVALID_MAJOR_VERSION = 3222163990;
		public const uint32 ERROR_PCW_INVALID_PCP_PROPERTIES = 3222163991;
		public const uint32 ERROR_PCW_INVALID_PCP_FAMILYFILERANGES = 3222163992;
		public const uint32 INFO_BASE = 3222229249;
		public const uint32 INFO_PASSED_MAIN_CONTROL = 3222229249;
		public const uint32 INFO_ENTERING_PHASE_I_VALIDATION = 3222229250;
		public const uint32 INFO_ENTERING_PHASE_I = 3222229251;
		public const uint32 INFO_PCP_PATH = 3222229252;
		public const uint32 INFO_TEMP_DIR = 3222229253;
		public const uint32 INFO_SET_OPTIONS = 3222229254;
		public const uint32 INFO_PROPERTY = 3222229255;
		public const uint32 INFO_ENTERING_PHASE_II = 3222229256;
		public const uint32 INFO_ENTERING_PHASE_III = 3222229257;
		public const uint32 INFO_ENTERING_PHASE_IV = 3222229258;
		public const uint32 INFO_ENTERING_PHASE_V = 3222229259;
		public const uint32 INFO_GENERATING_METADATA = 3222229265;
		public const uint32 INFO_TEMP_DIR_CLEANUP = 3222229266;
		public const uint32 INFO_PATCHCACHE_FILEINFO_FAILURE = 3222229267;
		public const uint32 INFO_PATCHCACHE_PCI_READFAILURE = 3222229268;
		public const uint32 INFO_PATCHCACHE_PCI_WRITEFAILURE = 3222229269;
		public const uint32 INFO_USING_USER_MSI_FOR_PATCH_TABLES = 3222229270;
		public const uint32 INFO_SUCCESSFUL_PATCH_CREATION = 3222229271;
		public const uint32 WARN_BASE = 3222294785;
		public const uint32 WARN_MAJOR_UPGRADE_PATCH = 3222294785;
		public const uint32 WARN_SEQUENCE_DATA_GENERATION_DISABLED = 3222294786;
		public const uint32 WARN_SEQUENCE_DATA_SUPERSEDENCE_IGNORED = 3222294787;
		public const uint32 WARN_IMPROPER_TRANSFORM_VALIDATION = 3222294788;
		public const uint32 WARN_PCW_MISMATCHED_PRODUCT_CODES = 3222294789;
		public const uint32 WARN_PCW_MISMATCHED_PRODUCT_VERSIONS = 3222294790;
		public const uint32 WARN_INVALID_TRANSFORM_VALIDATION = 3222294791;
		public const uint32 WARN_BAD_MAJOR_VERSION = 3222294792;
		public const uint32 WARN_FILE_VERSION_DOWNREV = 3222294793;
		public const uint32 WARN_EQUAL_FILE_VERSION = 3222294794;
		public const uint32 WARN_PATCHPROPERTYNOTSET = 3222294795;
		public const uint32 WARN_OBSOLETION_WITH_SEQUENCE_DATA = 3222294802;
		public const uint32 WARN_OBSOLETION_WITH_MSI30 = 3222294801;
		public const uint32 WARN_OBSOLETION_WITH_PATCHSEQUENCE = 3222294803;
		public const uint32 DELTA_MAX_HASH_SIZE = 32;
		public const int32 cchMaxInteger = 12;
		public const uint32 LOGNONE = 0;
		public const uint32 LOGINFO = 1;
		public const uint32 LOGWARN = 2;
		public const uint32 LOGERR = 4;
		public const uint32 LOGPERFMESSAGES = 8;
		public const uint32 LOGALL = 15;
		public const uint32 UINONE = 0;
		public const uint32 UILOGBITS = 15;
		public const uint32 DEFAULT_MINIMUM_REQUIRED_MSI_VERSION = 100;
		public const uint32 DEFAULT_FILE_SEQUENCE_START = 2;
		public const uint32 DEFAULT_DISK_ID = 2;
		
		// --- Typedefs ---
		
		public typealias MSIHANDLE = uint32;
		
		// --- Enums ---
		
		public enum MSIASSEMBLYINFO : uint32
		{
			NETASSEMBLY = 0,
			WIN32ASSEMBLY = 1,
		}
		public enum IASSEMBLYCACHE_UNINSTALL_DISPOSITION : uint32
		{
			UNINSTALLED = 1,
			STILL_IN_USE = 2,
			ALREADY_UNINSTALLED = 3,
			DELETE_PENDING = 4,
		}
		public enum QUERYASMINFO_FLAGS : uint32
		{
			QUERYASMINFO_FLAG_VALIDATE = 1,
		}
		public enum RESULTTYPES : int32
		{
			Unknown = 0,
			Error = 1,
			Warning = 2,
			Info = 3,
		}
		public enum STATUSTYPES : int32
		{
			GetCUB = 0,
			ICECount = 1,
			Merge = 2,
			SummaryInfo = 3,
			CreateEngine = 4,
			Starting = 5,
			RunICE = 6,
			Shutdown = 7,
			Success = 8,
			Fail = 9,
			Cancel = 10,
		}
		public enum msmErrorType : int32
		{
			LanguageUnsupported = 1,
			LanguageFailed = 2,
			Exclusion = 3,
			TableMerge = 4,
			ResequenceMerge = 5,
			FileCreate = 6,
			DirCreate = 7,
			FeatureRequired = 8,
		}
		public enum INSTALLMESSAGE : int32
		{
			FATALEXIT = 0,
			ERROR = 16777216,
			WARNING = 33554432,
			USER = 50331648,
			INFO = 67108864,
			FILESINUSE = 83886080,
			RESOLVESOURCE = 100663296,
			OUTOFDISKSPACE = 117440512,
			ACTIONSTART = 134217728,
			ACTIONDATA = 150994944,
			PROGRESS = 167772160,
			COMMONDATA = 184549376,
			INITIALIZE = 201326592,
			TERMINATE = 218103808,
			SHOWDIALOG = 234881024,
			PERFORMANCE = 251658240,
			RMFILESINUSE = 419430400,
			INSTALLSTART = 436207616,
			INSTALLEND = 452984832,
		}
		public enum INSTALLUILEVEL : int32
		{
			NOCHANGE = 0,
			DEFAULT = 1,
			NONE = 2,
			BASIC = 3,
			REDUCED = 4,
			FULL = 5,
			ENDDIALOG = 128,
			PROGRESSONLY = 64,
			HIDECANCEL = 32,
			SOURCERESONLY = 256,
			UACONLY = 512,
		}
		[AllowDuplicates]
		public enum INSTALLSTATE : int32
		{
			NOTUSED = -7,
			BADCONFIG = -6,
			INCOMPLETE = -5,
			SOURCEABSENT = -4,
			MOREDATA = -3,
			INVALIDARG = -2,
			UNKNOWN = -1,
			BROKEN = 0,
			ADVERTISED = 1,
			REMOVED = 1,
			ABSENT = 2,
			LOCAL = 3,
			SOURCE = 4,
			DEFAULT = 5,
		}
		public enum USERINFOSTATE : int32
		{
			MOREDATA = -3,
			INVALIDARG = -2,
			UNKNOWN = -1,
			ABSENT = 0,
			PRESENT = 1,
		}
		public enum INSTALLLEVEL : int32
		{
			DEFAULT = 0,
			MINIMUM = 1,
			MAXIMUM = 65535,
		}
		public enum REINSTALLMODE : int32
		{
			REPAIR = 1,
			FILEMISSING = 2,
			FILEOLDERVERSION = 4,
			FILEEQUALVERSION = 8,
			FILEEXACT = 16,
			FILEVERIFY = 32,
			FILEREPLACE = 64,
			MACHINEDATA = 128,
			USERDATA = 256,
			SHORTCUT = 512,
			PACKAGE = 1024,
		}
		[AllowDuplicates]
		public enum INSTALLOGMODE : int32
		{
			FATALEXIT = 1,
			ERROR = 2,
			WARNING = 4,
			USER = 8,
			INFO = 16,
			RESOLVESOURCE = 64,
			OUTOFDISKSPACE = 128,
			ACTIONSTART = 256,
			ACTIONDATA = 512,
			COMMONDATA = 2048,
			PROPERTYDUMP = 1024,
			VERBOSE = 4096,
			EXTRADEBUG = 8192,
			LOGONLYONERROR = 16384,
			LOGPERFORMANCE = 32768,
			PROGRESS = 1024,
			INITIALIZE = 4096,
			TERMINATE = 8192,
			SHOWDIALOG = 16384,
			FILESINUSE = 32,
			RMFILESINUSE = 33554432,
			INSTALLSTART = 67108864,
			INSTALLEND = 134217728,
		}
		public enum INSTALLLOGATTRIBUTES : int32
		{
			APPEND = 1,
			FLUSHEACHLINE = 2,
		}
		public enum INSTALLFEATUREATTRIBUTE : int32
		{
			FAVORLOCAL = 1,
			FAVORSOURCE = 2,
			FOLLOWPARENT = 4,
			FAVORADVERTISE = 8,
			DISALLOWADVERTISE = 16,
			NOUNSUPPORTEDADVERTISE = 32,
		}
		public enum INSTALLMODE : int32
		{
			NODETECTION_ANY = -4,
			NOSOURCERESOLUTION = -3,
			NODETECTION = -2,
			EXISTING = -1,
			DEFAULT = 0,
		}
		public enum MSIPATCHSTATE : int32
		{
			INVALID = 0,
			APPLIED = 1,
			SUPERSEDED = 2,
			OBSOLETED = 4,
			REGISTERED = 8,
			ALL = 15,
		}
		[AllowDuplicates]
		public enum MSIINSTALLCONTEXT : int32
		{
			FIRSTVISIBLE = 0,
			NONE = 0,
			USERMANAGED = 1,
			USERUNMANAGED = 2,
			MACHINE = 4,
			ALL = 7,
			ALLUSERMANAGED = 8,
		}
		public enum MSIPATCHDATATYPE : int32
		{
			PATCHFILE = 0,
			XMLPATH = 1,
			XMLBLOB = 2,
		}
		public enum SCRIPTFLAGS : int32
		{
			CACHEINFO = 1,
			SHORTCUTS = 4,
			MACHINEASSIGN = 8,
			REGDATA_CNFGINFO = 32,
			VALIDATE_TRANSFORMS_LIST = 64,
			REGDATA_CLASSINFO = 128,
			REGDATA_EXTENSIONINFO = 256,
			REGDATA_APPINFO = 384,
			REGDATA = 416,
		}
		public enum ADVERTISEFLAGS : int32
		{
			MACHINEASSIGN = 0,
			USERASSIGN = 1,
		}
		public enum INSTALLTYPE : int32
		{
			DEFAULT = 0,
			NETWORK_IMAGE = 1,
			SINGLE_INSTANCE = 2,
		}
		public enum MSIARCHITECTUREFLAGS : int32
		{
			X86 = 1,
			IA64 = 2,
			AMD64 = 4,
			ARM = 8,
		}
		public enum MSIOPENPACKAGEFLAGS : int32
		{
			MSIOPENPACKAGEFLAGS_IGNOREMACHINESTATE = 1,
		}
		public enum MSIADVERTISEOPTIONFLAGS : int32
		{
			MSIADVERTISEOPTIONFLAGS_INSTANCE = 1,
		}
		public enum MSISOURCETYPE : int32
		{
			UNKNOWN = 0,
			NETWORK = 1,
			URL = 2,
			MEDIA = 4,
		}
		public enum MSICODE : int32
		{
			RODUCT = 0,
			ATCH = 1073741824,
		}
		public enum MSITRANSACTION : int32
		{
			CHAIN_EMBEDDEDUI = 1,
			JOIN_EXISTING_EMBEDDEDUI = 2,
		}
		public enum MSITRANSACTIONSTATE : uint32
		{
			ROLLBACK = 0,
			COMMIT = 1,
		}
		public enum MSIDBSTATE : int32
		{
			ERROR = -1,
			READ = 0,
			WRITE = 1,
		}
		public enum MSIMODIFY : int32
		{
			SEEK = -1,
			REFRESH = 0,
			INSERT = 1,
			UPDATE = 2,
			ASSIGN = 3,
			REPLACE = 4,
			MERGE = 5,
			DELETE = 6,
			INSERT_TEMPORARY = 7,
			VALIDATE = 8,
			VALIDATE_NEW = 9,
			VALIDATE_FIELD = 10,
			VALIDATE_DELETE = 11,
		}
		public enum MSICOLINFO : int32
		{
			NAMES = 0,
			TYPES = 1,
		}
		public enum MSICONDITION : int32
		{
			FALSE = 0,
			TRUE = 1,
			NONE = 2,
			ERROR = 3,
		}
		public enum MSICOSTTREE : int32
		{
			SELFONLY = 0,
			CHILDREN = 1,
			PARENTS = 2,
			RESERVED = 3,
		}
		public enum MSIDBERROR : int32
		{
			INVALIDARG = -3,
			MOREDATA = -2,
			FUNCTIONERROR = -1,
			NOERROR = 0,
			DUPLICATEKEY = 1,
			REQUIRED = 2,
			BADLINK = 3,
			OVERFLOW = 4,
			UNDERFLOW = 5,
			NOTINSET = 6,
			BADVERSION = 7,
			BADCASE = 8,
			BADGUID = 9,
			BADWILDCARD = 10,
			BADIDENTIFIER = 11,
			BADLANGUAGE = 12,
			BADFILENAME = 13,
			BADPATH = 14,
			BADCONDITION = 15,
			BADFORMATTED = 16,
			BADTEMPLATE = 17,
			BADDEFAULTDIR = 18,
			BADREGPATH = 19,
			BADCUSTOMSOURCE = 20,
			BADPROPERTY = 21,
			MISSINGDATA = 22,
			BADCATEGORY = 23,
			BADKEYTABLE = 24,
			BADMAXMINVALUES = 25,
			BADCABINET = 26,
			BADSHORTCUT = 27,
			STRINGOVERFLOW = 28,
			BADLOCALIZEATTRIB = 29,
		}
		public enum MSIRUNMODE : int32
		{
			ADMIN = 0,
			ADVERTISE = 1,
			MAINTENANCE = 2,
			ROLLBACKENABLED = 3,
			LOGENABLED = 4,
			OPERATIONS = 5,
			REBOOTATEND = 6,
			REBOOTNOW = 7,
			CABINET = 8,
			SOURCESHORTNAMES = 9,
			TARGETSHORTNAMES = 10,
			RESERVED11 = 11,
			WINDOWS9X = 12,
			ZAWENABLED = 13,
			RESERVED14 = 14,
			RESERVED15 = 15,
			SCHEDULED = 16,
			ROLLBACK = 17,
			COMMIT = 18,
		}
		public enum MSITRANSFORM_ERROR : int32
		{
			ADDEXISTINGROW = 1,
			DELMISSINGROW = 2,
			ADDEXISTINGTABLE = 4,
			DELMISSINGTABLE = 8,
			UPDATEMISSINGROW = 16,
			CHANGECODEPAGE = 32,
			VIEWTRANSFORM = 256,
			NONE = 0,
		}
		public enum MSITRANSFORM_VALIDATE : int32
		{
			LANGUAGE = 1,
			PRODUCT = 2,
			PLATFORM = 4,
			MAJORVERSION = 8,
			MINORVERSION = 16,
			UPDATEVERSION = 32,
			NEWLESSBASEVERSION = 64,
			NEWLESSEQUALBASEVERSION = 128,
			NEWEQUALBASEVERSION = 256,
			NEWGREATEREQUALBASEVERSION = 512,
			NEWGREATERBASEVERSION = 1024,
			UPGRADECODE = 2048,
		}
		public enum ASM_NAME : int32
		{
			PUBLIC_KEY = 0,
			PUBLIC_KEY_TOKEN = 1,
			HASH_VALUE = 2,
			NAME = 3,
			MAJOR_VERSION = 4,
			MINOR_VERSION = 5,
			BUILD_NUMBER = 6,
			REVISION_NUMBER = 7,
			CULTURE = 8,
			PROCESSOR_ID_ARRAY = 9,
			OSINFO_ARRAY = 10,
			HASH_ALGID = 11,
			ALIAS = 12,
			CODEBASE_URL = 13,
			CODEBASE_LASTMOD = 14,
			NULL_PUBLIC_KEY = 15,
			NULL_PUBLIC_KEY_TOKEN = 16,
			CUSTOM = 17,
			NULL_CUSTOM = 18,
			MVID = 19,
			MAX_PARAMS = 20,
		}
		public enum ASM_BIND_FLAGS : uint32
		{
			FORCE_CACHE_INSTALL = 1,
			RFS_INTEGRITY_CHECK = 2,
			RFS_MODULE_CHECK = 4,
			BINPATH_PROBE_ONLY = 8,
			SHARED_BINPATH_HINT = 16,
			PARENT_ASM_HINT = 32,
		}
		public enum ASM_DISPLAY_FLAGS : int32
		{
			VERSION = 1,
			CULTURE = 2,
			PUBLIC_KEY_TOKEN = 4,
			PUBLIC_KEY = 8,
			CUSTOM = 16,
			PROCESSORARCHITECTURE = 32,
			LANGUAGEID = 64,
		}
		public enum ASM_CMP_FLAGS : int32
		{
			NAME = 1,
			MAJOR_VERSION = 2,
			MINOR_VERSION = 4,
			BUILD_NUMBER = 8,
			REVISION_NUMBER = 16,
			PUBLIC_KEY_TOKEN = 32,
			CULTURE = 64,
			CUSTOM = 128,
			ALL = 255,
			DEFAULT = 256,
		}
		public enum CREATE_ASM_NAME_OBJ_FLAGS : int32
		{
			PARSE_DISPLAY_NAME = 1,
			SET_DEFAULT_VALUES = 2,
		}
		[AllowDuplicates]
		public enum msidbControlAttributes : int32
		{
			AttributesVisible = 1,
			AttributesEnabled = 2,
			AttributesSunken = 4,
			AttributesIndirect = 8,
			AttributesInteger = 16,
			AttributesRTLRO = 32,
			AttributesRightAligned = 64,
			AttributesLeftScroll = 128,
			AttributesBiDi = 224,
			AttributesTransparent = 65536,
			AttributesNoPrefix = 131072,
			AttributesNoWrap = 262144,
			AttributesFormatSize = 524288,
			AttributesUsersLanguage = 1048576,
			AttributesMultiline = 65536,
			AttributesPasswordInput = 2097152,
			AttributesProgress95 = 65536,
			AttributesRemovableVolume = 65536,
			AttributesFixedVolume = 131072,
			AttributesRemoteVolume = 262144,
			AttributesCDROMVolume = 524288,
			AttributesRAMDiskVolume = 1048576,
			AttributesFloppyVolume = 2097152,
			ShowRollbackCost = 4194304,
			AttributesSorted = 65536,
			AttributesComboList = 131072,
			AttributesImageHandle = 65536,
			AttributesPushLike = 131072,
			AttributesBitmap = 262144,
			AttributesIcon = 524288,
			AttributesFixedSize = 1048576,
			AttributesIconSize16 = 2097152,
			AttributesIconSize32 = 4194304,
			AttributesIconSize48 = 6291456,
			AttributesElevationShield = 8388608,
			AttributesHasBorder = 16777216,
		}
		public enum msidbLocatorType : int32
		{
			Directory = 0,
			FileName = 1,
			RawValue = 2,
			_64bit = 16,
		}
		public enum msidbComponentAttributes : int32
		{
			LocalOnly = 0,
			SourceOnly = 1,
			Optional = 2,
			RegistryKeyPath = 4,
			SharedDllRefCount = 8,
			Permanent = 16,
			ODBCDataSource = 32,
			Transitive = 64,
			NeverOverwrite = 128,
			_64bit = 256,
			DisableRegistryReflection = 512,
			UninstallOnSupersedence = 1024,
			Shared = 2048,
		}
		public enum msidbAssemblyAttributes : int32
		{
			URT = 0,
			Win32 = 1,
		}
		[AllowDuplicates]
		public enum msidbCustomActionType : int32
		{
			Dll = 1,
			Exe = 2,
			TextData = 3,
			JScript = 5,
			VBScript = 6,
			Install = 7,
			BinaryData = 0,
			SourceFile = 16,
			Directory = 32,
			Property = 48,
			Continue = 64,
			Async = 128,
			FirstSequence = 256,
			OncePerProcess = 512,
			ClientRepeat = 768,
			InScript = 1024,
			Rollback = 256,
			Commit = 512,
			NoImpersonate = 2048,
			TSAware = 16384,
			_64BitScript = 4096,
			HideTarget = 8192,
			PatchUninstall = 32768,
		}
		public enum msidbDialogAttributes : int32
		{
			Visible = 1,
			Modal = 2,
			Minimize = 4,
			SysModal = 8,
			KeepModeless = 16,
			TrackDiskSpace = 32,
			UseCustomPalette = 64,
			RTLRO = 128,
			RightAligned = 256,
			LeftScroll = 512,
			BiDi = 896,
			Error = 65536,
		}
		public enum msidbFeatureAttributes : int32
		{
			FavorLocal = 0,
			FavorSource = 1,
			FollowParent = 2,
			FavorAdvertise = 4,
			DisallowAdvertise = 8,
			UIDisallowAbsent = 16,
			NoUnsupportedAdvertise = 32,
		}
		public enum msidbFileAttributes : int32
		{
			ReadOnly = 1,
			Hidden = 2,
			System = 4,
			Reserved0 = 8,
			IsolatedComp = 16,
			Reserved1 = 64,
			Reserved2 = 128,
			Reserved3 = 256,
			Vital = 512,
			Checksum = 1024,
			PatchAdded = 4096,
			Noncompressed = 8192,
			Compressed = 16384,
			Reserved4 = 32768,
		}
		public enum msidbIniFileAction : int32
		{
			AddLine = 0,
			CreateLine = 1,
			RemoveLine = 2,
			AddTag = 3,
			RemoveTag = 4,
		}
		public enum msidbMoveFileOptions : int32
		{
			msidbMoveFileOptionsMove = 1,
		}
		public enum msidbODBCDataSourceRegistration : int32
		{
			Machine = 0,
			User = 1,
		}
		public enum msidbClassAttributes : int32
		{
			msidbClassAttributesRelativePath = 1,
		}
		public enum msidbPatchAttributes : int32
		{
			msidbPatchAttributesNonVital = 1,
		}
		public enum msidbRegistryRoot : int32
		{
			ClassesRoot = 0,
			CurrentUser = 1,
			LocalMachine = 2,
			Users = 3,
		}
		public enum msidbRemoveFileInstallMode : int32
		{
			Install = 1,
			Remove = 2,
			Both = 3,
		}
		public enum msidbServiceControlEvent : int32
		{
			Start = 1,
			Stop = 2,
			Delete = 8,
			UninstallStart = 16,
			UninstallStop = 32,
			UninstallDelete = 128,
		}
		public enum msidbServiceConfigEvent : int32
		{
			Install = 1,
			Uninstall = 2,
			Reinstall = 4,
		}
		public enum msidbServiceInstallErrorControl : int32
		{
			msidbServiceInstallErrorControlVital = 32768,
		}
		public enum msidbTextStyleStyleBits : int32
		{
			Bold = 1,
			Italic = 2,
			Underline = 4,
			Strike = 8,
		}
		public enum msidbUpgradeAttributes : int32
		{
			MigrateFeatures = 1,
			OnlyDetect = 2,
			IgnoreRemoveFailure = 4,
			VersionMinInclusive = 256,
			VersionMaxInclusive = 512,
			LanguagesExclusive = 1024,
		}
		public enum msidbEmbeddedUIAttributes : int32
		{
			UI = 1,
			HandlesBasic = 2,
		}
		public enum msidbSumInfoSourceType : int32
		{
			SFN = 1,
			Compressed = 2,
			AdminImage = 4,
			LUAPackage = 8,
		}
		public enum msirbRebootType : int32
		{
			Immediate = 1,
			Deferred = 2,
		}
		public enum msirbRebootReason : int32
		{
			UndeterminedReason = 0,
			InUseFilesReason = 1,
			ScheduleRebootReason = 2,
			ForceRebootReason = 3,
			CustomActionReason = 4,
		}
		public enum msifiFastInstallBits : int32
		{
			NoSR = 1,
			QuickCosting = 2,
			LessPrgMsg = 4,
		}
		public enum TILE_TEMPLATE_TYPE : int32
		{
			INVALID = 0,
			FLIP = 5,
			DEEPLINK = 13,
			CYCLE = 14,
			METROCOUNT = 1,
			AGILESTORE = 2,
			GAMES = 3,
			CALENDAR = 4,
			MUSICVIDEO = 7,
			PEOPLE = 10,
			CONTACT = 11,
			GROUP = 12,
			DEFAULT = 15,
			BADGE = 16,
			BLOCK = 17,
			TEXT01 = 18,
			TEXT02 = 19,
			TEXT03 = 20,
			TEXT04 = 21,
			TEXT05 = 22,
			TEXT06 = 23,
			TEXT07 = 24,
			TEXT08 = 25,
			TEXT09 = 26,
			TEXT10 = 27,
			TEXT11 = 28,
			IMAGE = 29,
			IMAGECOLLECTION = 30,
			IMAGEANDTEXT01 = 31,
			IMAGEANDTEXT02 = 32,
			BLOCKANDTEXT01 = 33,
			BLOCKANDTEXT02 = 34,
			PEEKIMAGEANDTEXT01 = 35,
			PEEKIMAGEANDTEXT02 = 36,
			PEEKIMAGEANDTEXT03 = 37,
			PEEKIMAGEANDTEXT04 = 38,
			PEEKIMAGE01 = 39,
			PEEKIMAGE02 = 40,
			PEEKIMAGE03 = 41,
			PEEKIMAGE04 = 42,
			PEEKIMAGE05 = 43,
			PEEKIMAGE06 = 44,
			PEEKIMAGECOLLECTION01 = 45,
			PEEKIMAGECOLLECTION02 = 46,
			PEEKIMAGECOLLECTION03 = 47,
			PEEKIMAGECOLLECTION04 = 48,
			PEEKIMAGECOLLECTION05 = 49,
			PEEKIMAGECOLLECTION06 = 50,
			SMALLIMAGEANDTEXT01 = 51,
			SMALLIMAGEANDTEXT02 = 52,
			SMALLIMAGEANDTEXT03 = 53,
			SMALLIMAGEANDTEXT04 = 54,
			SMALLIMAGEANDTEXT05 = 55,
			METROCOUNTQUEUE = 56,
			SEARCH = 57,
			TILEFLYOUT01 = 58,
			FOLDER = 59,
			ALL = 100,
		}
		public enum PM_APP_GENRE : int32
		{
			GAMES = 0,
			OTHER = 1,
			INVALID = 2,
		}
		public enum PM_APPLICATION_INSTALL_TYPE : int32
		{
			NORMAL = 0,
			IN_ROM = 1,
			PA = 2,
			DEBUG = 3,
			ENTERPRISE = 4,
			INVALID = 5,
		}
		[AllowDuplicates]
		public enum PM_APPLICATION_STATE : int32
		{
			MIN = 0,
			INSTALLED = 1,
			INSTALLING = 2,
			UPDATING = 3,
			UNINSTALLING = 4,
			LICENSE_UPDATING = 5,
			MOVING = 6,
			DISABLED_SD_CARD = 7,
			DISABLED_ENTERPRISE = 8,
			DISABLED_BACKING_UP = 9,
			DISABLED_MDIL_BINDING = 10,
			MAX = 10,
			INVALID = 11,
		}
		public enum PM_APPLICATION_HUBTYPE : int32
		{
			NONMUSIC = 0,
			MUSIC = 1,
			INVALID = 2,
		}
		public enum PM_TILE_HUBTYPE : int32
		{
			MUSIC = 1,
			MOSETTINGS = 268435456,
			GAMES = 536870912,
			APPLIST = 1073741824,
			STARTMENU = -2147483648,
			LOCKSCREEN = 16777216,
			KIDZONE = 33554432,
			CACHED = 67108864,
			INVALID = 67108865,
		}
		public enum PM_STARTTILE_TYPE : int32
		{
			PRIMARY = 1,
			SECONDARY = 2,
			APPLIST = 3,
			APPLISTPRIMARY = 4,
			INVALID = 5,
		}
		public enum PM_TASK_TYPE : int32
		{
			NORMAL = 0,
			DEFAULT = 1,
			SETTINGS = 2,
			BACKGROUNDSERVICEAGENT = 3,
			BACKGROUNDWORKER = 4,
			INVALID = 5,
		}
		public enum PACKMAN_RUNTIME : int32
		{
			NATIVE = 1,
			SILVERLIGHTMOBILE = 2,
			XNA = 3,
			MODERN_NATIVE = 4,
			JUPITER = 5,
			INVALID = 6,
		}
		public enum PM_ACTIVATION_POLICY : int32
		{
			RESUME = 0,
			RESUMESAMEPARAMS = 1,
			REPLACE = 2,
			REPLACESAMEPARAMS = 3,
			MULTISESSION = 4,
			REPLACE_IGNOREFOREGROUND = 5,
			UNKNOWN = 6,
			INVALID = 7,
		}
		public enum PM_TASK_TRANSITION : int32
		{
			DEFAULT = 0,
			NONE = 1,
			TURNSTILE = 2,
			SLIDE = 3,
			SWIVEL = 4,
			READERBOARD = 5,
			CUSTOM = 6,
			INVALID = 7,
		}
		public enum PM_ENUM_APP_FILTER : int32
		{
			ALL = 0,
			VISIBLE = 1,
			GENRE = 2,
			NONGAMES = 3,
			HUBTYPE = 4,
			PINABLEONKIDZONE = 5,
			ALL_INCLUDE_MODERN = 6,
			FRAMEWORK = 7,
			MAX = 8,
		}
		public enum PM_ENUM_TILE_FILTER : int32
		{
			APPLIST = 8,
			PINNED = 9,
			HUBTYPE = 10,
			APP_ALL = 11,
			MAX = 12,
		}
		public enum PM_ENUM_TASK_FILTER : int32
		{
			APP_ALL = 12,
			TASK_TYPE = 13,
			DEHYD_SUPRESSING = 14,
			APP_TASK_TYPE = 15,
			BGEXECUTION = 16,
			MAX = 17,
		}
		[AllowDuplicates]
		public enum PM_ENUM_EXTENSION_FILTER : int32
		{
			BY_CONSUMER = 17,
			APPCONNECT = 17,
			PROTOCOL_ALL = 18,
			FTASSOC_FILETYPE_ALL = 19,
			FTASSOC_CONTENTTYPE_ALL = 20,
			FTASSOC_APPLICATION_ALL = 21,
			SHARETARGET_ALL = 22,
			FILEOPENPICKER_ALL = 23,
			FILESAVEPICKER_ALL = 24,
			CACHEDFILEUPDATER_ALL = 25,
			MAX = 26,
		}
		public enum PM_ENUM_BSA_FILTER : int32
		{
			ALL = 26,
			BY_TASKID = 27,
			BY_PRODUCTID = 28,
			BY_PERIODIC = 29,
			BY_ALL_LAUNCHONBOOT = 30,
			MAX = 31,
		}
		public enum PM_ENUM_BW_FILTER : int32
		{
			BOOTWORKER_ALL = 31,
			BY_TASKID = 32,
			MAX = 33,
		}
		[AllowDuplicates]
		public enum PM_LIVETILE_RECURRENCE_TYPE : int32
		{
			INSTANT = 0,
			ONETIME = 1,
			INTERVAL = 2,
			MAX = 2,
		}
		public enum PM_TILE_SIZE : int32
		{
			SMALL = 0,
			MEDIUM = 1,
			LARGE = 2,
			SQUARE310X310 = 3,
			TALL150X310 = 4,
			INVALID = 5,
		}
		public enum PM_LOGO_SIZE : int32
		{
			SMALL = 0,
			MEDIUM = 1,
			LARGE = 2,
			INVALID = 3,
		}
		public enum ACTCTX_REQUESTED_RUN_LEVEL : int32
		{
			UNSPECIFIED = 0,
			AS_INVOKER = 1,
			HIGHEST_AVAILABLE = 2,
			REQUIRE_ADMIN = 3,
			NUMBERS = 4,
		}
		public enum ACTCTX_COMPATIBILITY_ELEMENT_TYPE : int32
		{
			UNKNOWN = 0,
			OS = 1,
			MITIGATION = 2,
			MAXVERSIONTESTED = 3,
		}
		
		// --- Function Pointers ---
		
		public function BOOL LPDISPLAYVAL(void* pContext, RESULTTYPES uiType, PWSTR szwVal, PWSTR szwDescription, PWSTR szwLocation);
		public function BOOL LPEVALCOMCALLBACK(STATUSTYPES iStatus, PWSTR szData, void* pContext);
		public function int32 INSTALLUI_HANDLERA(void* pvContext, uint32 iMessageType, PSTR szMessage);
		public function int32 INSTALLUI_HANDLERW(void* pvContext, uint32 iMessageType, PWSTR szMessage);
		public function int32 PINSTALLUI_HANDLER_RECORD(void* pvContext, uint32 iMessageType, MSIHANDLE hRecord);
		public function BOOL PPATCH_PROGRESS_CALLBACK(void* CallbackContext, uint32 CurrentPosition, uint32 MaximumPosition);
		public function BOOL PPATCH_SYMLOAD_CALLBACK(uint32 WhichFile, PSTR SymbolFileName, uint32 SymType, uint32 SymbolFileCheckSum, uint32 SymbolFileTimeDate, uint32 ImageFileCheckSum, uint32 ImageFileTimeDate, void* CallbackContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct PMSIHANDLE
		{
			public MSIHANDLE m_h;
		}
		[CRepr]
		public struct MSIPATCHSEQUENCEINFOA
		{
			public PSTR szPatchData;
			public MSIPATCHDATATYPE ePatchDataType;
			public uint32 dwOrder;
			public uint32 uStatus;
		}
		[CRepr]
		public struct MSIPATCHSEQUENCEINFOW
		{
			public PWSTR szPatchData;
			public MSIPATCHDATATYPE ePatchDataType;
			public uint32 dwOrder;
			public uint32 uStatus;
		}
		[CRepr]
		public struct MSIFILEHASHINFO
		{
			public uint32 dwFileHashInfoSize;
			public uint32[4] dwData;
		}
		[CRepr]
		public struct ASSEMBLY_INFO
		{
			public uint32 cbAssemblyInfo;
			public uint32 dwAssemblyFlags;
			public ULARGE_INTEGER uliAssemblySizeInKB;
			public PWSTR pszCurrentAssemblyPathBuf;
			public uint32 cchBuf;
		}
		[CRepr]
		public struct FUSION_INSTALL_REFERENCE
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public Guid guidScheme;
			public PWSTR szIdentifier;
			public PWSTR szNonCannonicalData;
		}
		[CRepr]
		public struct PROTECTED_FILE_DATA
		{
			public char16[260] FileName;
			public uint32 FileNumber;
		}
		[CRepr]
		public struct _tagAPPTASKTYPE
		{
			public Guid ProductID;
			public PM_TASK_TYPE TaskType;
		}
		[CRepr]
		public struct PM_EXTENSIONCONSUMER
		{
			public Guid ConsumerPID;
			public BSTR ExtensionID;
		}
		[CRepr]
		public struct PM_BSATASKID
		{
			public Guid ProductID;
			public BSTR TaskID;
		}
		[CRepr]
		public struct PM_BWTASKID
		{
			public Guid ProductID;
			public BSTR TaskID;
		}
		[CRepr]
		public struct PM_ENUM_FILTER
		{
			public int32 FilterType;
			public _FilterParameter_e__Union FilterParameter;
			
			[CRepr, Union]
			public struct _FilterParameter_e__Union
			{
				public int32 Dummy;
				public PM_APP_GENRE Genre;
				public PM_APPLICATION_HUBTYPE AppHubType;
				public PM_TILE_HUBTYPE HubType;
				public PM_TASK_TYPE Tasktype;
				public Guid TaskProductID;
				public Guid TileProductID;
				public _tagAPPTASKTYPE AppTaskType;
				public PM_EXTENSIONCONSUMER Consumer;
				public PM_BSATASKID BSATask;
				public Guid BSAProductID;
				public PM_BWTASKID BWTask;
				public BSTR ProtocolName;
				public BSTR FileType;
				public BSTR ContentType;
				public Guid AppSupportedFileExtPID;
				public BSTR ShareTargetFileType;
			}
		}
		[CRepr]
		public struct PM_STARTAPPBLOB
		{
			public uint32 cbSize;
			public Guid ProductID;
			public BSTR AppTitle;
			public BSTR IconPath;
			public BOOL IsUninstallable;
			public PM_APPLICATION_INSTALL_TYPE AppInstallType;
			public Guid InstanceID;
			public PM_APPLICATION_STATE State;
			public BOOL IsModern;
			public BOOL IsModernLightUp;
			public uint16 LightUpSupportMask;
		}
		[CRepr]
		public struct PM_INVOCATIONINFO
		{
			public BSTR URIBaseOrAUMID;
			public BSTR URIFragmentOrArgs;
		}
		[CRepr]
		public struct PM_STARTTILEBLOB
		{
			public uint32 cbSize;
			public Guid ProductID;
			public BSTR TileID;
			public TILE_TEMPLATE_TYPE TemplateType;
			public uint32[32] HubPosition;
			public uint32 HubVisibilityBitmask;
			public BOOL IsDefault;
			public PM_STARTTILE_TYPE TileType;
			public uint8* pbPropBlob;
			public uint32 cbPropBlob;
			public BOOL IsRestoring;
			public BOOL IsModern;
			public PM_INVOCATIONINFO InvocationInfo;
		}
		[CRepr]
		public struct PM_INSTALLINFO
		{
			public Guid ProductID;
			public BSTR PackagePath;
			public Guid InstanceID;
			public uint8* pbLicense;
			public uint32 cbLicense;
			public BOOL IsUninstallDisabled;
			public uint32 DeploymentOptions;
			public Guid OfferID;
			public BSTR MarketplaceAppVersion;
		}
		[CRepr]
		public struct PM_UPDATEINFO_LEGACY
		{
			public Guid ProductID;
			public BSTR PackagePath;
			public Guid InstanceID;
			public uint8* pbLicense;
			public uint32 cbLicense;
			public BSTR MarketplaceAppVersion;
		}
		[CRepr]
		public struct PM_UPDATEINFO
		{
			public Guid ProductID;
			public BSTR PackagePath;
			public Guid InstanceID;
			public uint8* pbLicense;
			public uint32 cbLicense;
			public BSTR MarketplaceAppVersion;
			public uint32 DeploymentOptions;
		}
		[CRepr]
		public struct PATCH_IGNORE_RANGE
		{
			public uint32 OffsetInOldFile;
			public uint32 LengthInBytes;
		}
		[CRepr]
		public struct PATCH_RETAIN_RANGE
		{
			public uint32 OffsetInOldFile;
			public uint32 LengthInBytes;
			public uint32 OffsetInNewFile;
		}
		[CRepr]
		public struct PATCH_OLD_FILE_INFO_A
		{
			public uint32 SizeOfThisStruct;
			public PSTR OldFileName;
			public uint32 IgnoreRangeCount;
			public PATCH_IGNORE_RANGE* IgnoreRangeArray;
			public uint32 RetainRangeCount;
			public PATCH_RETAIN_RANGE* RetainRangeArray;
		}
		[CRepr]
		public struct PATCH_OLD_FILE_INFO_W
		{
			public uint32 SizeOfThisStruct;
			public PWSTR OldFileName;
			public uint32 IgnoreRangeCount;
			public PATCH_IGNORE_RANGE* IgnoreRangeArray;
			public uint32 RetainRangeCount;
			public PATCH_RETAIN_RANGE* RetainRangeArray;
		}
		[CRepr]
		public struct PATCH_OLD_FILE_INFO_H
		{
			public uint32 SizeOfThisStruct;
			public HANDLE OldFileHandle;
			public uint32 IgnoreRangeCount;
			public PATCH_IGNORE_RANGE* IgnoreRangeArray;
			public uint32 RetainRangeCount;
			public PATCH_RETAIN_RANGE* RetainRangeArray;
		}
		[CRepr]
		public struct PATCH_OLD_FILE_INFO
		{
			public uint32 SizeOfThisStruct;
			public _Anonymous_e__Union Anonymous;
			public uint32 IgnoreRangeCount;
			public PATCH_IGNORE_RANGE* IgnoreRangeArray;
			public uint32 RetainRangeCount;
			public PATCH_RETAIN_RANGE* RetainRangeArray;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PSTR OldFileNameA;
				public PWSTR OldFileNameW;
				public HANDLE OldFileHandle;
			}
		}
		[CRepr]
		public struct PATCH_INTERLEAVE_MAP
		{
			public uint32 CountRanges;
			public _Anonymous_e__Struct[] Range;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 OldOffset;
				public uint32 OldLength;
				public uint32 NewLength;
			}
		}
		[CRepr]
		public struct PATCH_OPTION_DATA
		{
			public uint32 SizeOfThisStruct;
			public uint32 SymbolOptionFlags;
			public PSTR NewFileSymbolPath;
			public PSTR* OldFileSymbolPathArray;
			public uint32 ExtendedOptionFlags;
			public PPATCH_SYMLOAD_CALLBACK SymLoadCallback;
			public void* SymLoadContext;
			public PATCH_INTERLEAVE_MAP** InterleaveMapArray;
			public uint32 MaxLzxWindowSize;
		}
		[CRepr]
		public struct DELTA_INPUT
		{
			public _Anonymous_e__Union Anonymous;
			public uint uSize;
			public BOOL Editable;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* lpcStart;
				public void* lpStart;
			}
		}
		[CRepr]
		public struct DELTA_OUTPUT
		{
			public void* lpStart;
			public uint uSize;
		}
		[CRepr]
		public struct DELTA_HASH
		{
			public uint32 HashSize;
			public uint8[32] HashValue;
		}
		[CRepr]
		public struct DELTA_HEADER_INFO
		{
			public int64 FileTypeSet;
			public int64 FileType;
			public int64 Flags;
			public uint TargetSize;
			public FILETIME TargetFileTime;
			public uint32 TargetHashAlgId;
			public DELTA_HASH TargetHash;
		}
		[CRepr]
		public struct ACTIVATION_CONTEXT_QUERY_INDEX
		{
			public uint32 ulAssemblyIndex;
			public uint32 ulFileIndexInAssembly;
		}
		[CRepr]
		public struct ASSEMBLY_FILE_DETAILED_INFORMATION
		{
			public uint32 ulFlags;
			public uint32 ulFilenameLength;
			public uint32 ulPathLength;
			public PWSTR lpFileName;
			public PWSTR lpFilePath;
		}
		[CRepr]
		public struct ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION
		{
			public uint32 ulFlags;
			public uint32 ulEncodedAssemblyIdentityLength;
			public uint32 ulManifestPathType;
			public uint32 ulManifestPathLength;
			public LARGE_INTEGER liManifestLastWriteTime;
			public uint32 ulPolicyPathType;
			public uint32 ulPolicyPathLength;
			public LARGE_INTEGER liPolicyLastWriteTime;
			public uint32 ulMetadataSatelliteRosterIndex;
			public uint32 ulManifestVersionMajor;
			public uint32 ulManifestVersionMinor;
			public uint32 ulPolicyVersionMajor;
			public uint32 ulPolicyVersionMinor;
			public uint32 ulAssemblyDirectoryNameLength;
			public PWSTR lpAssemblyEncodedAssemblyIdentity;
			public PWSTR lpAssemblyManifestPath;
			public PWSTR lpAssemblyPolicyPath;
			public PWSTR lpAssemblyDirectoryName;
			public uint32 ulFileCount;
		}
		[CRepr]
		public struct ACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION
		{
			public uint32 ulFlags;
			public ACTCTX_REQUESTED_RUN_LEVEL RunLevel;
			public uint32 UiAccess;
		}
		[CRepr]
		public struct COMPATIBILITY_CONTEXT_ELEMENT
		{
			public Guid Id;
			public ACTCTX_COMPATIBILITY_ELEMENT_TYPE Type;
			public uint64 MaxVersionTested;
		}
		[CRepr]
		public struct ACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION
		{
			public uint32 ElementCount;
			public COMPATIBILITY_CONTEXT_ELEMENT[] Elements;
		}
		[CRepr]
		public struct ACTIVATION_CONTEXT_DETAILED_INFORMATION
		{
			public uint32 dwFlags;
			public uint32 ulFormatVersion;
			public uint32 ulAssemblyCount;
			public uint32 ulRootManifestPathType;
			public uint32 ulRootManifestPathChars;
			public uint32 ulRootConfigurationPathType;
			public uint32 ulRootConfigurationPathChars;
			public uint32 ulAppDirPathType;
			public uint32 ulAppDirPathChars;
			public PWSTR lpRootManifestPath;
			public PWSTR lpRootConfigurationPath;
			public PWSTR lpAppDirPath;
		}
		[CRepr]
		public struct ACTCTXA
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public PSTR lpSource;
			public uint16 wProcessorArchitecture;
			public uint16 wLangId;
			public PSTR lpAssemblyDirectory;
			public PSTR lpResourceName;
			public PSTR lpApplicationName;
			public HINSTANCE hModule;
		}
		[CRepr]
		public struct ACTCTXW
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public PWSTR lpSource;
			public uint16 wProcessorArchitecture;
			public uint16 wLangId;
			public PWSTR lpAssemblyDirectory;
			public PWSTR lpResourceName;
			public PWSTR lpApplicationName;
			public HINSTANCE hModule;
		}
		[CRepr]
		public struct ACTCTX_SECTION_KEYED_DATA
		{
			public uint32 cbSize;
			public uint32 ulDataFormatVersion;
			public void* lpData;
			public uint32 ulLength;
			public void* lpSectionGlobalData;
			public uint32 ulSectionGlobalDataLength;
			public void* lpSectionBase;
			public uint32 ulSectionTotalLength;
			public HANDLE hActCtx;
			public uint32 ulAssemblyRosterIndex;
			public uint32 ulFlags;
			public ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA AssemblyMetadata;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MsmMerge = .(0x0adda830, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
		public const Guid CLSID_PMSvc = .(0xb9e511fc, 0xe364, 0x497a, 0xa1, 0x21, 0xb7, 0xb3, 0x61, 0x2c, 0xed, 0xce);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IValidate : IUnknown
		{
			public const new Guid IID = .(0xe482e5c6, 0xe31e, 0x4143, 0xa2, 0xe6, 0xdb, 0xc3, 0xd8, 0xe4, 0xb8, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenDatabase(PWSTR szDatabase) mut
			{
				return VT.OpenDatabase(&this, szDatabase);
			}
			public HRESULT OpenCUB(PWSTR szCUBFile) mut
			{
				return VT.OpenCUB(&this, szCUBFile);
			}
			public HRESULT CloseDatabase() mut
			{
				return VT.CloseDatabase(&this);
			}
			public HRESULT CloseCUB() mut
			{
				return VT.CloseCUB(&this);
			}
			public HRESULT SetDisplay(LPDISPLAYVAL pDisplayFunction, void* pContext) mut
			{
				return VT.SetDisplay(&this, pDisplayFunction, pContext);
			}
			public HRESULT SetStatus(LPEVALCOMCALLBACK pStatusFunction, void* pContext) mut
			{
				return VT.SetStatus(&this, pStatusFunction, pContext);
			}
			public HRESULT Validate(PWSTR wzICEs) mut
			{
				return VT.Validate(&this, wzICEs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IValidate *self, PWSTR szDatabase) OpenDatabase;
				public new function HRESULT(IValidate *self, PWSTR szCUBFile) OpenCUB;
				public new function HRESULT(IValidate *self) CloseDatabase;
				public new function HRESULT(IValidate *self) CloseCUB;
				public new function HRESULT(IValidate *self, LPDISPLAYVAL pDisplayFunction, void* pContext) SetDisplay;
				public new function HRESULT(IValidate *self, LPEVALCOMCALLBACK pStatusFunction, void* pContext) SetStatus;
				public new function HRESULT(IValidate *self, PWSTR wzICEs) Validate;
			}
		}
		[CRepr]
		public struct IEnumMsmString : IUnknown
		{
			public const new Guid IID = .(0x0adda826, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFetch, BSTR* rgbstrStrings, uint32* pcFetched) mut
			{
				return VT.Next(&this, cFetch, rgbstrStrings, pcFetched);
			}
			public HRESULT Skip(uint32 cSkip) mut
			{
				return VT.Skip(&this, cSkip);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumMsmString** pemsmStrings) mut
			{
				return VT.Clone(&this, pemsmStrings);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumMsmString *self, uint32 cFetch, BSTR* rgbstrStrings, uint32* pcFetched) Next;
				public new function HRESULT(IEnumMsmString *self, uint32 cSkip) Skip;
				public new function HRESULT(IEnumMsmString *self) Reset;
				public new function HRESULT(IEnumMsmString *self, IEnumMsmString** pemsmStrings) Clone;
			}
		}
		[CRepr]
		public struct IMsmStrings : IDispatch
		{
			public const new Guid IID = .(0x0adda827, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Item, BSTR* Return) mut
			{
				return VT.get_Item(&this, Item, Return);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** NewEnum) mut
			{
				return VT.get__NewEnum(&this, NewEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmStrings *self, int32 Item, BSTR* Return) get_Item;
				public new function HRESULT(IMsmStrings *self, int32* Count) get_Count;
				public new function HRESULT(IMsmStrings *self, IUnknown** NewEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IMsmError : IDispatch
		{
			public const new Guid IID = .(0x0adda828, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Type(msmErrorType* ErrorType) mut
			{
				return VT.get_Type(&this, ErrorType);
			}
			public HRESULT get_Path(BSTR* ErrorPath) mut
			{
				return VT.get_Path(&this, ErrorPath);
			}
			public HRESULT get_Language(int16* ErrorLanguage) mut
			{
				return VT.get_Language(&this, ErrorLanguage);
			}
			public HRESULT get_DatabaseTable(BSTR* ErrorTable) mut
			{
				return VT.get_DatabaseTable(&this, ErrorTable);
			}
			public HRESULT get_DatabaseKeys(IMsmStrings** ErrorKeys) mut
			{
				return VT.get_DatabaseKeys(&this, ErrorKeys);
			}
			public HRESULT get_ModuleTable(BSTR* ErrorTable) mut
			{
				return VT.get_ModuleTable(&this, ErrorTable);
			}
			public HRESULT get_ModuleKeys(IMsmStrings** ErrorKeys) mut
			{
				return VT.get_ModuleKeys(&this, ErrorKeys);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmError *self, msmErrorType* ErrorType) get_Type;
				public new function HRESULT(IMsmError *self, BSTR* ErrorPath) get_Path;
				public new function HRESULT(IMsmError *self, int16* ErrorLanguage) get_Language;
				public new function HRESULT(IMsmError *self, BSTR* ErrorTable) get_DatabaseTable;
				public new function HRESULT(IMsmError *self, IMsmStrings** ErrorKeys) get_DatabaseKeys;
				public new function HRESULT(IMsmError *self, BSTR* ErrorTable) get_ModuleTable;
				public new function HRESULT(IMsmError *self, IMsmStrings** ErrorKeys) get_ModuleKeys;
			}
		}
		[CRepr]
		public struct IEnumMsmError : IUnknown
		{
			public const new Guid IID = .(0x0adda829, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFetch, IMsmError** rgmsmErrors, uint32* pcFetched) mut
			{
				return VT.Next(&this, cFetch, rgmsmErrors, pcFetched);
			}
			public HRESULT Skip(uint32 cSkip) mut
			{
				return VT.Skip(&this, cSkip);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumMsmError** pemsmErrors) mut
			{
				return VT.Clone(&this, pemsmErrors);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumMsmError *self, uint32 cFetch, IMsmError** rgmsmErrors, uint32* pcFetched) Next;
				public new function HRESULT(IEnumMsmError *self, uint32 cSkip) Skip;
				public new function HRESULT(IEnumMsmError *self) Reset;
				public new function HRESULT(IEnumMsmError *self, IEnumMsmError** pemsmErrors) Clone;
			}
		}
		[CRepr]
		public struct IMsmErrors : IDispatch
		{
			public const new Guid IID = .(0x0adda82a, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Item, IMsmError** Return) mut
			{
				return VT.get_Item(&this, Item, Return);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** NewEnum) mut
			{
				return VT.get__NewEnum(&this, NewEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmErrors *self, int32 Item, IMsmError** Return) get_Item;
				public new function HRESULT(IMsmErrors *self, int32* Count) get_Count;
				public new function HRESULT(IMsmErrors *self, IUnknown** NewEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IMsmDependency : IDispatch
		{
			public const new Guid IID = .(0x0adda82b, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Module(BSTR* Module) mut
			{
				return VT.get_Module(&this, Module);
			}
			public HRESULT get_Language(int16* Language) mut
			{
				return VT.get_Language(&this, Language);
			}
			public HRESULT get_Version(BSTR* Version) mut
			{
				return VT.get_Version(&this, Version);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmDependency *self, BSTR* Module) get_Module;
				public new function HRESULT(IMsmDependency *self, int16* Language) get_Language;
				public new function HRESULT(IMsmDependency *self, BSTR* Version) get_Version;
			}
		}
		[CRepr]
		public struct IEnumMsmDependency : IUnknown
		{
			public const new Guid IID = .(0x0adda82c, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFetch, IMsmDependency** rgmsmDependencies, uint32* pcFetched) mut
			{
				return VT.Next(&this, cFetch, rgmsmDependencies, pcFetched);
			}
			public HRESULT Skip(uint32 cSkip) mut
			{
				return VT.Skip(&this, cSkip);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumMsmDependency** pemsmDependencies) mut
			{
				return VT.Clone(&this, pemsmDependencies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumMsmDependency *self, uint32 cFetch, IMsmDependency** rgmsmDependencies, uint32* pcFetched) Next;
				public new function HRESULT(IEnumMsmDependency *self, uint32 cSkip) Skip;
				public new function HRESULT(IEnumMsmDependency *self) Reset;
				public new function HRESULT(IEnumMsmDependency *self, IEnumMsmDependency** pemsmDependencies) Clone;
			}
		}
		[CRepr]
		public struct IMsmDependencies : IDispatch
		{
			public const new Guid IID = .(0x0adda82d, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Item(int32 Item, IMsmDependency** Return) mut
			{
				return VT.get_Item(&this, Item, Return);
			}
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT get__NewEnum(IUnknown** NewEnum) mut
			{
				return VT.get__NewEnum(&this, NewEnum);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmDependencies *self, int32 Item, IMsmDependency** Return) get_Item;
				public new function HRESULT(IMsmDependencies *self, int32* Count) get_Count;
				public new function HRESULT(IMsmDependencies *self, IUnknown** NewEnum) get__NewEnum;
			}
		}
		[CRepr]
		public struct IMsmMerge : IDispatch
		{
			public const new Guid IID = .(0x0adda82e, 0x2c26, 0x11d2, 0xad, 0x65, 0x00, 0xa0, 0xc9, 0xaf, 0x11, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenDatabase(BSTR Path) mut
			{
				return VT.OpenDatabase(&this, Path);
			}
			public HRESULT OpenModule(BSTR Path, int16 Language) mut
			{
				return VT.OpenModule(&this, Path, Language);
			}
			public HRESULT CloseDatabase(int16 Commit) mut
			{
				return VT.CloseDatabase(&this, Commit);
			}
			public HRESULT CloseModule() mut
			{
				return VT.CloseModule(&this);
			}
			public HRESULT OpenLog(BSTR Path) mut
			{
				return VT.OpenLog(&this, Path);
			}
			public HRESULT CloseLog() mut
			{
				return VT.CloseLog(&this);
			}
			public HRESULT Log(BSTR Message) mut
			{
				return VT.Log(&this, Message);
			}
			public HRESULT get_Errors(IMsmErrors** Errors) mut
			{
				return VT.get_Errors(&this, Errors);
			}
			public HRESULT get_Dependencies(IMsmDependencies** Dependencies) mut
			{
				return VT.get_Dependencies(&this, Dependencies);
			}
			public HRESULT Merge(BSTR Feature, BSTR RedirectDir) mut
			{
				return VT.Merge(&this, Feature, RedirectDir);
			}
			public HRESULT Connect(BSTR Feature) mut
			{
				return VT.Connect(&this, Feature);
			}
			public HRESULT ExtractCAB(BSTR FileName) mut
			{
				return VT.ExtractCAB(&this, FileName);
			}
			public HRESULT ExtractFiles(BSTR Path) mut
			{
				return VT.ExtractFiles(&this, Path);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmMerge *self, BSTR Path) OpenDatabase;
				public new function HRESULT(IMsmMerge *self, BSTR Path, int16 Language) OpenModule;
				public new function HRESULT(IMsmMerge *self, int16 Commit) CloseDatabase;
				public new function HRESULT(IMsmMerge *self) CloseModule;
				public new function HRESULT(IMsmMerge *self, BSTR Path) OpenLog;
				public new function HRESULT(IMsmMerge *self) CloseLog;
				public new function HRESULT(IMsmMerge *self, BSTR Message) Log;
				public new function HRESULT(IMsmMerge *self, IMsmErrors** Errors) get_Errors;
				public new function HRESULT(IMsmMerge *self, IMsmDependencies** Dependencies) get_Dependencies;
				public new function HRESULT(IMsmMerge *self, BSTR Feature, BSTR RedirectDir) Merge;
				public new function HRESULT(IMsmMerge *self, BSTR Feature) Connect;
				public new function HRESULT(IMsmMerge *self, BSTR FileName) ExtractCAB;
				public new function HRESULT(IMsmMerge *self, BSTR Path) ExtractFiles;
			}
		}
		[CRepr]
		public struct IMsmGetFiles : IDispatch
		{
			public const new Guid IID = .(0x7041ae26, 0x2d78, 0x11d2, 0x88, 0x8a, 0x00, 0xa0, 0xc9, 0x81, 0xb0, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModuleFiles(IMsmStrings** Files) mut
			{
				return VT.get_ModuleFiles(&this, Files);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IMsmGetFiles *self, IMsmStrings** Files) get_ModuleFiles;
			}
		}
		[CRepr]
		public struct IAssemblyName : IUnknown
		{
			public const new Guid IID = .(0xcd193bc0, 0xb4bc, 0x11d2, 0x98, 0x33, 0x00, 0xc0, 0x4f, 0xc3, 0x1d, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProperty(uint32 PropertyId, void* pvProperty, uint32 cbProperty) mut
			{
				return VT.SetProperty(&this, PropertyId, pvProperty, cbProperty);
			}
			public HRESULT GetProperty(uint32 PropertyId, void* pvProperty, uint32* pcbProperty) mut
			{
				return VT.GetProperty(&this, PropertyId, pvProperty, pcbProperty);
			}
			public HRESULT Finalize() mut
			{
				return VT.Finalize(&this);
			}
			public HRESULT GetDisplayName(char16* szDisplayName, uint32* pccDisplayName, uint32 dwDisplayFlags) mut
			{
				return VT.GetDisplayName(&this, szDisplayName, pccDisplayName, dwDisplayFlags);
			}
			public HRESULT Reserved(Guid* refIID, IUnknown* pUnkReserved1, IUnknown* pUnkReserved2, PWSTR szReserved, int64 llReserved, void* pvReserved, uint32 cbReserved, void** ppReserved) mut
			{
				return VT.Reserved(&this, refIID, pUnkReserved1, pUnkReserved2, szReserved, llReserved, pvReserved, cbReserved, ppReserved);
			}
			public HRESULT GetName(uint32* lpcwBuffer, char16* pwzName) mut
			{
				return VT.GetName(&this, lpcwBuffer, pwzName);
			}
			public HRESULT GetVersion(uint32* pdwVersionHi, uint32* pdwVersionLow) mut
			{
				return VT.GetVersion(&this, pdwVersionHi, pdwVersionLow);
			}
			public HRESULT IsEqual(IAssemblyName* pName, uint32 dwCmpFlags) mut
			{
				return VT.IsEqual(&this, pName, dwCmpFlags);
			}
			public HRESULT Clone(IAssemblyName** pName) mut
			{
				return VT.Clone(&this, pName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssemblyName *self, uint32 PropertyId, void* pvProperty, uint32 cbProperty) SetProperty;
				public new function HRESULT(IAssemblyName *self, uint32 PropertyId, void* pvProperty, uint32* pcbProperty) GetProperty;
				public new function HRESULT(IAssemblyName *self) Finalize;
				public new function HRESULT(IAssemblyName *self, char16* szDisplayName, uint32* pccDisplayName, uint32 dwDisplayFlags) GetDisplayName;
				public new function HRESULT(IAssemblyName *self, Guid* refIID, IUnknown* pUnkReserved1, IUnknown* pUnkReserved2, PWSTR szReserved, int64 llReserved, void* pvReserved, uint32 cbReserved, void** ppReserved) Reserved;
				public new function HRESULT(IAssemblyName *self, uint32* lpcwBuffer, char16* pwzName) GetName;
				public new function HRESULT(IAssemblyName *self, uint32* pdwVersionHi, uint32* pdwVersionLow) GetVersion;
				public new function HRESULT(IAssemblyName *self, IAssemblyName* pName, uint32 dwCmpFlags) IsEqual;
				public new function HRESULT(IAssemblyName *self, IAssemblyName** pName) Clone;
			}
		}
		[CRepr]
		public struct IAssemblyCacheItem : IUnknown
		{
			public const new Guid IID = .(0x9e3aaeb4, 0xd1cd, 0x11d2, 0xba, 0xb9, 0x00, 0xc0, 0x4f, 0x8e, 0xce, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStream(uint32 dwFlags, PWSTR pszStreamName, uint32 dwFormat, uint32 dwFormatFlags, IStream** ppIStream, ULARGE_INTEGER* puliMaxSize) mut
			{
				return VT.CreateStream(&this, dwFlags, pszStreamName, dwFormat, dwFormatFlags, ppIStream, puliMaxSize);
			}
			public HRESULT Commit(uint32 dwFlags, uint32* pulDisposition) mut
			{
				return VT.Commit(&this, dwFlags, pulDisposition);
			}
			public HRESULT AbortItem() mut
			{
				return VT.AbortItem(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssemblyCacheItem *self, uint32 dwFlags, PWSTR pszStreamName, uint32 dwFormat, uint32 dwFormatFlags, IStream** ppIStream, ULARGE_INTEGER* puliMaxSize) CreateStream;
				public new function HRESULT(IAssemblyCacheItem *self, uint32 dwFlags, uint32* pulDisposition) Commit;
				public new function HRESULT(IAssemblyCacheItem *self) AbortItem;
			}
		}
		[CRepr]
		public struct IAssemblyCache : IUnknown
		{
			public const new Guid IID = .(0xe707dcde, 0xd1cd, 0x11d2, 0xba, 0xb9, 0x00, 0xc0, 0x4f, 0x8e, 0xce, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UninstallAssembly(uint32 dwFlags, PWSTR pszAssemblyName, FUSION_INSTALL_REFERENCE* pRefData, IASSEMBLYCACHE_UNINSTALL_DISPOSITION* pulDisposition) mut
			{
				return VT.UninstallAssembly(&this, dwFlags, pszAssemblyName, pRefData, pulDisposition);
			}
			public HRESULT QueryAssemblyInfo(QUERYASMINFO_FLAGS dwFlags, PWSTR pszAssemblyName, ASSEMBLY_INFO* pAsmInfo) mut
			{
				return VT.QueryAssemblyInfo(&this, dwFlags, pszAssemblyName, pAsmInfo);
			}
			public HRESULT CreateAssemblyCacheItem(uint32 dwFlags, void* pvReserved, IAssemblyCacheItem** ppAsmItem, PWSTR pszAssemblyName) mut
			{
				return VT.CreateAssemblyCacheItem(&this, dwFlags, pvReserved, ppAsmItem, pszAssemblyName);
			}
			public HRESULT Reserved(IUnknown** ppUnk) mut
			{
				return VT.Reserved(&this, ppUnk);
			}
			public HRESULT InstallAssembly(uint32 dwFlags, PWSTR pszManifestFilePath, FUSION_INSTALL_REFERENCE* pRefData) mut
			{
				return VT.InstallAssembly(&this, dwFlags, pszManifestFilePath, pRefData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssemblyCache *self, uint32 dwFlags, PWSTR pszAssemblyName, FUSION_INSTALL_REFERENCE* pRefData, IASSEMBLYCACHE_UNINSTALL_DISPOSITION* pulDisposition) UninstallAssembly;
				public new function HRESULT(IAssemblyCache *self, QUERYASMINFO_FLAGS dwFlags, PWSTR pszAssemblyName, ASSEMBLY_INFO* pAsmInfo) QueryAssemblyInfo;
				public new function HRESULT(IAssemblyCache *self, uint32 dwFlags, void* pvReserved, IAssemblyCacheItem** ppAsmItem, PWSTR pszAssemblyName) CreateAssemblyCacheItem;
				public new function HRESULT(IAssemblyCache *self, IUnknown** ppUnk) Reserved;
				public new function HRESULT(IAssemblyCache *self, uint32 dwFlags, PWSTR pszManifestFilePath, FUSION_INSTALL_REFERENCE* pRefData) InstallAssembly;
			}
		}
		[CRepr]
		public struct IPMApplicationInfo : IUnknown
		{
			public const new Guid IID = .(0x50afb58a, 0x438c, 0x4088, 0x97, 0x89, 0xf8, 0xc4, 0x89, 0x98, 0x29, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_InstanceID(Guid* pInstanceID) mut
			{
				return VT.get_InstanceID(&this, pInstanceID);
			}
			public HRESULT get_OfferID(Guid* pOfferID) mut
			{
				return VT.get_OfferID(&this, pOfferID);
			}
			public HRESULT get_DefaultTask(BSTR* pDefaultTask) mut
			{
				return VT.get_DefaultTask(&this, pDefaultTask);
			}
			public HRESULT get_AppTitle(BSTR* pAppTitle) mut
			{
				return VT.get_AppTitle(&this, pAppTitle);
			}
			public HRESULT get_IconPath(BSTR* pAppIconPath) mut
			{
				return VT.get_IconPath(&this, pAppIconPath);
			}
			public HRESULT get_NotificationState(BOOL* pIsNotified) mut
			{
				return VT.get_NotificationState(&this, pIsNotified);
			}
			public HRESULT get_AppInstallType(PM_APPLICATION_INSTALL_TYPE* pAppInstallType) mut
			{
				return VT.get_AppInstallType(&this, pAppInstallType);
			}
			public HRESULT get_State(PM_APPLICATION_STATE* pState) mut
			{
				return VT.get_State(&this, pState);
			}
			public HRESULT get_IsRevoked(BOOL* pIsRevoked) mut
			{
				return VT.get_IsRevoked(&this, pIsRevoked);
			}
			public HRESULT get_UpdateAvailable(BOOL* pIsUpdateAvailable) mut
			{
				return VT.get_UpdateAvailable(&this, pIsUpdateAvailable);
			}
			public HRESULT get_InstallDate(FILETIME* pInstallDate) mut
			{
				return VT.get_InstallDate(&this, pInstallDate);
			}
			public HRESULT get_IsUninstallable(BOOL* pIsUninstallable) mut
			{
				return VT.get_IsUninstallable(&this, pIsUninstallable);
			}
			public HRESULT get_IsThemable(BOOL* pIsThemable) mut
			{
				return VT.get_IsThemable(&this, pIsThemable);
			}
			public HRESULT get_IsTrial(BOOL* pIsTrial) mut
			{
				return VT.get_IsTrial(&this, pIsTrial);
			}
			public HRESULT get_InstallPath(BSTR* pInstallPath) mut
			{
				return VT.get_InstallPath(&this, pInstallPath);
			}
			public HRESULT get_DataRoot(BSTR* pDataRoot) mut
			{
				return VT.get_DataRoot(&this, pDataRoot);
			}
			public HRESULT get_Genre(PM_APP_GENRE* pGenre) mut
			{
				return VT.get_Genre(&this, pGenre);
			}
			public HRESULT get_Publisher(BSTR* pPublisher) mut
			{
				return VT.get_Publisher(&this, pPublisher);
			}
			public HRESULT get_Author(BSTR* pAuthor) mut
			{
				return VT.get_Author(&this, pAuthor);
			}
			public HRESULT get_Description(BSTR* pDescription) mut
			{
				return VT.get_Description(&this, pDescription);
			}
			public HRESULT get_Version(BSTR* pVersion) mut
			{
				return VT.get_Version(&this, pVersion);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			public HRESULT get_AppPlatMajorVersion(uint8* pMajorVer) mut
			{
				return VT.get_AppPlatMajorVersion(&this, pMajorVer);
			}
			public HRESULT get_AppPlatMinorVersion(uint8* pMinorVer) mut
			{
				return VT.get_AppPlatMinorVersion(&this, pMinorVer);
			}
			public HRESULT get_PublisherID(Guid* pPublisherID) mut
			{
				return VT.get_PublisherID(&this, pPublisherID);
			}
			public HRESULT get_IsMultiCore(BOOL* pIsMultiCore) mut
			{
				return VT.get_IsMultiCore(&this, pIsMultiCore);
			}
			public HRESULT get_SID(BSTR* pSID) mut
			{
				return VT.get_SID(&this, pSID);
			}
			public HRESULT get_AppPlatMajorVersionLightUp(uint8* pMajorVer) mut
			{
				return VT.get_AppPlatMajorVersionLightUp(&this, pMajorVer);
			}
			public HRESULT get_AppPlatMinorVersionLightUp(uint8* pMinorVer) mut
			{
				return VT.get_AppPlatMinorVersionLightUp(&this, pMinorVer);
			}
			public HRESULT set_UpdateAvailable(BOOL IsUpdateAvailable) mut
			{
				return VT.set_UpdateAvailable(&this, IsUpdateAvailable);
			}
			public HRESULT set_NotificationState(BOOL IsNotified) mut
			{
				return VT.set_NotificationState(&this, IsNotified);
			}
			public HRESULT set_IconPath(BSTR AppIconPath) mut
			{
				return VT.set_IconPath(&this, AppIconPath);
			}
			public HRESULT set_UninstallableState(BOOL IsUninstallable) mut
			{
				return VT.set_UninstallableState(&this, IsUninstallable);
			}
			public HRESULT get_IsPinableOnKidZone(BOOL* pIsPinable) mut
			{
				return VT.get_IsPinableOnKidZone(&this, pIsPinable);
			}
			public HRESULT get_IsOriginallyPreInstalled(BOOL* pIsPreinstalled) mut
			{
				return VT.get_IsOriginallyPreInstalled(&this, pIsPreinstalled);
			}
			public HRESULT get_IsInstallOnSD(BOOL* pIsInstallOnSD) mut
			{
				return VT.get_IsInstallOnSD(&this, pIsInstallOnSD);
			}
			public HRESULT get_IsOptoutOnSD(BOOL* pIsOptoutOnSD) mut
			{
				return VT.get_IsOptoutOnSD(&this, pIsOptoutOnSD);
			}
			public HRESULT get_IsOptoutBackupRestore(BOOL* pIsOptoutBackupRestore) mut
			{
				return VT.get_IsOptoutBackupRestore(&this, pIsOptoutBackupRestore);
			}
			public HRESULT set_EnterpriseDisabled(BOOL IsDisabled) mut
			{
				return VT.set_EnterpriseDisabled(&this, IsDisabled);
			}
			public HRESULT set_EnterpriseUninstallable(BOOL IsUninstallable) mut
			{
				return VT.set_EnterpriseUninstallable(&this, IsUninstallable);
			}
			public HRESULT get_EnterpriseDisabled(BOOL* IsDisabled) mut
			{
				return VT.get_EnterpriseDisabled(&this, IsDisabled);
			}
			public HRESULT get_EnterpriseUninstallable(BOOL* IsUninstallable) mut
			{
				return VT.get_EnterpriseUninstallable(&this, IsUninstallable);
			}
			public HRESULT get_IsVisibleOnAppList(BOOL* pIsVisible) mut
			{
				return VT.get_IsVisibleOnAppList(&this, pIsVisible);
			}
			public HRESULT get_IsInboxApp(BOOL* pIsInboxApp) mut
			{
				return VT.get_IsInboxApp(&this, pIsInboxApp);
			}
			public HRESULT get_StorageID(Guid* pStorageID) mut
			{
				return VT.get_StorageID(&this, pStorageID);
			}
			public HRESULT get_StartAppBlob(PM_STARTAPPBLOB* pBlob) mut
			{
				return VT.get_StartAppBlob(&this, pBlob);
			}
			public HRESULT get_IsMovable(BOOL* pIsMovable) mut
			{
				return VT.get_IsMovable(&this, pIsMovable);
			}
			public HRESULT get_DeploymentAppEnumerationHubFilter(PM_TILE_HUBTYPE* HubType) mut
			{
				return VT.get_DeploymentAppEnumerationHubFilter(&this, HubType);
			}
			public HRESULT get_ModifiedDate(FILETIME* pModifiedDate) mut
			{
				return VT.get_ModifiedDate(&this, pModifiedDate);
			}
			public HRESULT get_IsOriginallyRestored(BOOL* pIsRestored) mut
			{
				return VT.get_IsOriginallyRestored(&this, pIsRestored);
			}
			public HRESULT get_ShouldDeferMdilBind(BOOL* pfDeferMdilBind) mut
			{
				return VT.get_ShouldDeferMdilBind(&this, pfDeferMdilBind);
			}
			public HRESULT get_IsFullyPreInstall(BOOL* pfIsFullyPreInstall) mut
			{
				return VT.get_IsFullyPreInstall(&this, pfIsFullyPreInstall);
			}
			public HRESULT set_IsMdilMaintenanceNeeded(BOOL fIsMdilMaintenanceNeeded) mut
			{
				return VT.set_IsMdilMaintenanceNeeded(&this, fIsMdilMaintenanceNeeded);
			}
			public HRESULT set_Title(BSTR AppTitle) mut
			{
				return VT.set_Title(&this, AppTitle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMApplicationInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMApplicationInfo *self, Guid* pInstanceID) get_InstanceID;
				public new function HRESULT(IPMApplicationInfo *self, Guid* pOfferID) get_OfferID;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pDefaultTask) get_DefaultTask;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pAppTitle) get_AppTitle;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pAppIconPath) get_IconPath;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsNotified) get_NotificationState;
				public new function HRESULT(IPMApplicationInfo *self, PM_APPLICATION_INSTALL_TYPE* pAppInstallType) get_AppInstallType;
				public new function HRESULT(IPMApplicationInfo *self, PM_APPLICATION_STATE* pState) get_State;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsRevoked) get_IsRevoked;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsUpdateAvailable) get_UpdateAvailable;
				public new function HRESULT(IPMApplicationInfo *self, FILETIME* pInstallDate) get_InstallDate;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsUninstallable) get_IsUninstallable;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsThemable) get_IsThemable;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsTrial) get_IsTrial;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pInstallPath) get_InstallPath;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pDataRoot) get_DataRoot;
				public new function HRESULT(IPMApplicationInfo *self, PM_APP_GENRE* pGenre) get_Genre;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pPublisher) get_Publisher;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pAuthor) get_Author;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pDescription) get_Description;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pVersion) get_Version;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
				public new function HRESULT(IPMApplicationInfo *self, uint8* pMajorVer) get_AppPlatMajorVersion;
				public new function HRESULT(IPMApplicationInfo *self, uint8* pMinorVer) get_AppPlatMinorVersion;
				public new function HRESULT(IPMApplicationInfo *self, Guid* pPublisherID) get_PublisherID;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsMultiCore) get_IsMultiCore;
				public new function HRESULT(IPMApplicationInfo *self, BSTR* pSID) get_SID;
				public new function HRESULT(IPMApplicationInfo *self, uint8* pMajorVer) get_AppPlatMajorVersionLightUp;
				public new function HRESULT(IPMApplicationInfo *self, uint8* pMinorVer) get_AppPlatMinorVersionLightUp;
				public new function HRESULT(IPMApplicationInfo *self, BOOL IsUpdateAvailable) set_UpdateAvailable;
				public new function HRESULT(IPMApplicationInfo *self, BOOL IsNotified) set_NotificationState;
				public new function HRESULT(IPMApplicationInfo *self, BSTR AppIconPath) set_IconPath;
				public new function HRESULT(IPMApplicationInfo *self, BOOL IsUninstallable) set_UninstallableState;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsPinable) get_IsPinableOnKidZone;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsPreinstalled) get_IsOriginallyPreInstalled;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsInstallOnSD) get_IsInstallOnSD;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsOptoutOnSD) get_IsOptoutOnSD;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsOptoutBackupRestore) get_IsOptoutBackupRestore;
				public new function HRESULT(IPMApplicationInfo *self, BOOL IsDisabled) set_EnterpriseDisabled;
				public new function HRESULT(IPMApplicationInfo *self, BOOL IsUninstallable) set_EnterpriseUninstallable;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* IsDisabled) get_EnterpriseDisabled;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* IsUninstallable) get_EnterpriseUninstallable;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsVisible) get_IsVisibleOnAppList;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsInboxApp) get_IsInboxApp;
				public new function HRESULT(IPMApplicationInfo *self, Guid* pStorageID) get_StorageID;
				public new function HRESULT(IPMApplicationInfo *self, PM_STARTAPPBLOB* pBlob) get_StartAppBlob;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsMovable) get_IsMovable;
				public new function HRESULT(IPMApplicationInfo *self, PM_TILE_HUBTYPE* HubType) get_DeploymentAppEnumerationHubFilter;
				public new function HRESULT(IPMApplicationInfo *self, FILETIME* pModifiedDate) get_ModifiedDate;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pIsRestored) get_IsOriginallyRestored;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pfDeferMdilBind) get_ShouldDeferMdilBind;
				public new function HRESULT(IPMApplicationInfo *self, BOOL* pfIsFullyPreInstall) get_IsFullyPreInstall;
				public new function HRESULT(IPMApplicationInfo *self, BOOL fIsMdilMaintenanceNeeded) set_IsMdilMaintenanceNeeded;
				public new function HRESULT(IPMApplicationInfo *self, BSTR AppTitle) set_Title;
			}
		}
		[CRepr]
		public struct IPMTilePropertyInfo : IUnknown
		{
			public const new Guid IID = .(0x6c2b8017, 0x1efa, 0x42a7, 0x86, 0xc0, 0x6d, 0x4b, 0x64, 0x0b, 0xf5, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyID(uint32* pPropID) mut
			{
				return VT.get_PropertyID(&this, pPropID);
			}
			public HRESULT get_PropertyValue(BSTR* pPropValue) mut
			{
				return VT.get_PropertyValue(&this, pPropValue);
			}
			public HRESULT set_Property(BSTR PropValue) mut
			{
				return VT.set_Property(&this, PropValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTilePropertyInfo *self, uint32* pPropID) get_PropertyID;
				public new function HRESULT(IPMTilePropertyInfo *self, BSTR* pPropValue) get_PropertyValue;
				public new function HRESULT(IPMTilePropertyInfo *self, BSTR PropValue) set_Property;
			}
		}
		[CRepr]
		public struct IPMTilePropertyEnumerator : IUnknown
		{
			public const new Guid IID = .(0xcc4cd629, 0x9047, 0x4250, 0xaa, 0xc8, 0x93, 0x0e, 0x47, 0x81, 0x24, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMTilePropertyInfo** ppPropInfo) mut
			{
				return VT.get_Next(&this, ppPropInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTilePropertyEnumerator *self, IPMTilePropertyInfo** ppPropInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMTileInfo : IUnknown
		{
			public const new Guid IID = .(0xd1604833, 0x2b08, 0x4001, 0x82, 0xcd, 0x18, 0x3a, 0xd7, 0x34, 0xf7, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_TileID(BSTR* pTileID) mut
			{
				return VT.get_TileID(&this, pTileID);
			}
			public HRESULT get_TemplateType(TILE_TEMPLATE_TYPE* pTemplateType) mut
			{
				return VT.get_TemplateType(&this, pTemplateType);
			}
			public HRESULT get_HubPinnedState(PM_TILE_HUBTYPE HubType, BOOL* pPinned) mut
			{
				return VT.get_HubPinnedState(&this, HubType, pPinned);
			}
			public HRESULT get_HubPosition(PM_TILE_HUBTYPE HubType, uint32* pPosition) mut
			{
				return VT.get_HubPosition(&this, HubType, pPosition);
			}
			public HRESULT get_IsNotified(BOOL* pIsNotified) mut
			{
				return VT.get_IsNotified(&this, pIsNotified);
			}
			public HRESULT get_IsDefault(BOOL* pIsDefault) mut
			{
				return VT.get_IsDefault(&this, pIsDefault);
			}
			public HRESULT get_TaskID(BSTR* pTaskID) mut
			{
				return VT.get_TaskID(&this, pTaskID);
			}
			public HRESULT get_TileType(PM_STARTTILE_TYPE* pStartTileType) mut
			{
				return VT.get_TileType(&this, pStartTileType);
			}
			public HRESULT get_IsThemable(BOOL* pIsThemable) mut
			{
				return VT.get_IsThemable(&this, pIsThemable);
			}
			public HRESULT get_PropertyById(uint32 PropID, IPMTilePropertyInfo** ppPropInfo) mut
			{
				return VT.get_PropertyById(&this, PropID, ppPropInfo);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			public HRESULT get_PropertyEnum(IPMTilePropertyEnumerator** ppTilePropEnum) mut
			{
				return VT.get_PropertyEnum(&this, ppTilePropEnum);
			}
			public HRESULT get_HubTileSize(PM_TILE_HUBTYPE HubType, PM_TILE_SIZE* pSize) mut
			{
				return VT.get_HubTileSize(&this, HubType, pSize);
			}
			public HRESULT set_HubPosition(PM_TILE_HUBTYPE HubType, uint32 Position) mut
			{
				return VT.set_HubPosition(&this, HubType, Position);
			}
			public HRESULT set_NotifiedState(BOOL Notified) mut
			{
				return VT.set_NotifiedState(&this, Notified);
			}
			public HRESULT set_HubPinnedState(PM_TILE_HUBTYPE HubType, BOOL Pinned) mut
			{
				return VT.set_HubPinnedState(&this, HubType, Pinned);
			}
			public HRESULT set_HubTileSize(PM_TILE_HUBTYPE HubType, PM_TILE_SIZE Size) mut
			{
				return VT.set_HubTileSize(&this, HubType, Size);
			}
			public HRESULT set_InvocationInfo(BSTR TaskName, BSTR TaskParameters) mut
			{
				return VT.set_InvocationInfo(&this, TaskName, TaskParameters);
			}
			public HRESULT get_StartTileBlob(PM_STARTTILEBLOB* pBlob) mut
			{
				return VT.get_StartTileBlob(&this, pBlob);
			}
			public HRESULT get_IsRestoring(BOOL* pIsRestoring) mut
			{
				return VT.get_IsRestoring(&this, pIsRestoring);
			}
			public HRESULT get_IsAutoRestoreDisabled(BOOL* pIsAutoRestoreDisabled) mut
			{
				return VT.get_IsAutoRestoreDisabled(&this, pIsAutoRestoreDisabled);
			}
			public HRESULT set_IsRestoring(BOOL Restoring) mut
			{
				return VT.set_IsRestoring(&this, Restoring);
			}
			public HRESULT set_IsAutoRestoreDisabled(BOOL AutoRestoreDisabled) mut
			{
				return VT.set_IsAutoRestoreDisabled(&this, AutoRestoreDisabled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTileInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMTileInfo *self, BSTR* pTileID) get_TileID;
				public new function HRESULT(IPMTileInfo *self, TILE_TEMPLATE_TYPE* pTemplateType) get_TemplateType;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, BOOL* pPinned) get_HubPinnedState;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, uint32* pPosition) get_HubPosition;
				public new function HRESULT(IPMTileInfo *self, BOOL* pIsNotified) get_IsNotified;
				public new function HRESULT(IPMTileInfo *self, BOOL* pIsDefault) get_IsDefault;
				public new function HRESULT(IPMTileInfo *self, BSTR* pTaskID) get_TaskID;
				public new function HRESULT(IPMTileInfo *self, PM_STARTTILE_TYPE* pStartTileType) get_TileType;
				public new function HRESULT(IPMTileInfo *self, BOOL* pIsThemable) get_IsThemable;
				public new function HRESULT(IPMTileInfo *self, uint32 PropID, IPMTilePropertyInfo** ppPropInfo) get_PropertyById;
				public new function HRESULT(IPMTileInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
				public new function HRESULT(IPMTileInfo *self, IPMTilePropertyEnumerator** ppTilePropEnum) get_PropertyEnum;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, PM_TILE_SIZE* pSize) get_HubTileSize;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, uint32 Position) set_HubPosition;
				public new function HRESULT(IPMTileInfo *self, BOOL Notified) set_NotifiedState;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, BOOL Pinned) set_HubPinnedState;
				public new function HRESULT(IPMTileInfo *self, PM_TILE_HUBTYPE HubType, PM_TILE_SIZE Size) set_HubTileSize;
				public new function HRESULT(IPMTileInfo *self, BSTR TaskName, BSTR TaskParameters) set_InvocationInfo;
				public new function HRESULT(IPMTileInfo *self, PM_STARTTILEBLOB* pBlob) get_StartTileBlob;
				public new function HRESULT(IPMTileInfo *self, BOOL* pIsRestoring) get_IsRestoring;
				public new function HRESULT(IPMTileInfo *self, BOOL* pIsAutoRestoreDisabled) get_IsAutoRestoreDisabled;
				public new function HRESULT(IPMTileInfo *self, BOOL Restoring) set_IsRestoring;
				public new function HRESULT(IPMTileInfo *self, BOOL AutoRestoreDisabled) set_IsAutoRestoreDisabled;
			}
		}
		[CRepr]
		public struct IPMTileInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0xded83065, 0xe462, 0x4b2c, 0xac, 0xb5, 0xe3, 0x9c, 0xea, 0x61, 0xc8, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMTileInfo** ppTileInfo) mut
			{
				return VT.get_Next(&this, ppTileInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTileInfoEnumerator *self, IPMTileInfo** ppTileInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMApplicationInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x0ec42a96, 0x4d46, 0x4dc6, 0xa3, 0xd9, 0xa7, 0xac, 0xaa, 0xc0, 0xf5, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMApplicationInfo** ppAppInfo) mut
			{
				return VT.get_Next(&this, ppAppInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMApplicationInfoEnumerator *self, IPMApplicationInfo** ppAppInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMLiveTileJobInfo : IUnknown
		{
			public const new Guid IID = .(0x6009a81f, 0x4710, 0x4697, 0xb5, 0xf6, 0x22, 0x08, 0xf6, 0x05, 0x7b, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_TileID(BSTR* pTileID) mut
			{
				return VT.get_TileID(&this, pTileID);
			}
			public HRESULT get_NextSchedule(FILETIME* pNextSchedule) mut
			{
				return VT.get_NextSchedule(&this, pNextSchedule);
			}
			public HRESULT set_NextSchedule(FILETIME ftNextSchedule) mut
			{
				return VT.set_NextSchedule(&this, ftNextSchedule);
			}
			public HRESULT get_StartSchedule(FILETIME* pStartSchedule) mut
			{
				return VT.get_StartSchedule(&this, pStartSchedule);
			}
			public HRESULT set_StartSchedule(FILETIME ftStartSchedule) mut
			{
				return VT.set_StartSchedule(&this, ftStartSchedule);
			}
			public HRESULT get_IntervalDuration(uint32* pIntervalDuration) mut
			{
				return VT.get_IntervalDuration(&this, pIntervalDuration);
			}
			public HRESULT set_IntervalDuration(uint32 ulIntervalDuration) mut
			{
				return VT.set_IntervalDuration(&this, ulIntervalDuration);
			}
			public HRESULT get_RunForever(BOOL* IsRunForever) mut
			{
				return VT.get_RunForever(&this, IsRunForever);
			}
			public HRESULT set_RunForever(BOOL fRunForever) mut
			{
				return VT.set_RunForever(&this, fRunForever);
			}
			public HRESULT get_MaxRunCount(uint32* pMaxRunCount) mut
			{
				return VT.get_MaxRunCount(&this, pMaxRunCount);
			}
			public HRESULT set_MaxRunCount(uint32 ulMaxRunCount) mut
			{
				return VT.set_MaxRunCount(&this, ulMaxRunCount);
			}
			public HRESULT get_RunCount(uint32* pRunCount) mut
			{
				return VT.get_RunCount(&this, pRunCount);
			}
			public HRESULT set_RunCount(uint32 ulRunCount) mut
			{
				return VT.set_RunCount(&this, ulRunCount);
			}
			public HRESULT get_RecurrenceType(uint32* pRecurrenceType) mut
			{
				return VT.get_RecurrenceType(&this, pRecurrenceType);
			}
			public HRESULT set_RecurrenceType(uint32 ulRecurrenceType) mut
			{
				return VT.set_RecurrenceType(&this, ulRecurrenceType);
			}
			public HRESULT get_TileXML(uint8** pTileXml, uint32* pcbTileXml) mut
			{
				return VT.get_TileXML(&this, pTileXml, pcbTileXml);
			}
			public HRESULT set_TileXML(uint8* pTileXml, uint32 cbTileXml) mut
			{
				return VT.set_TileXML(&this, pTileXml, cbTileXml);
			}
			public HRESULT get_UrlXML(uint8** pUrlXML, uint32* pcbUrlXML) mut
			{
				return VT.get_UrlXML(&this, pUrlXML, pcbUrlXML);
			}
			public HRESULT set_UrlXML(uint8* pUrlXML, uint32 cbUrlXML) mut
			{
				return VT.set_UrlXML(&this, pUrlXML, cbUrlXML);
			}
			public HRESULT get_AttemptCount(uint32* pAttemptCount) mut
			{
				return VT.get_AttemptCount(&this, pAttemptCount);
			}
			public HRESULT set_AttemptCount(uint32 ulAttemptCount) mut
			{
				return VT.set_AttemptCount(&this, ulAttemptCount);
			}
			public HRESULT get_DownloadState(uint32* pDownloadState) mut
			{
				return VT.get_DownloadState(&this, pDownloadState);
			}
			public HRESULT set_DownloadState(uint32 ulDownloadState) mut
			{
				return VT.set_DownloadState(&this, ulDownloadState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMLiveTileJobInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMLiveTileJobInfo *self, BSTR* pTileID) get_TileID;
				public new function HRESULT(IPMLiveTileJobInfo *self, FILETIME* pNextSchedule) get_NextSchedule;
				public new function HRESULT(IPMLiveTileJobInfo *self, FILETIME ftNextSchedule) set_NextSchedule;
				public new function HRESULT(IPMLiveTileJobInfo *self, FILETIME* pStartSchedule) get_StartSchedule;
				public new function HRESULT(IPMLiveTileJobInfo *self, FILETIME ftStartSchedule) set_StartSchedule;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pIntervalDuration) get_IntervalDuration;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulIntervalDuration) set_IntervalDuration;
				public new function HRESULT(IPMLiveTileJobInfo *self, BOOL* IsRunForever) get_RunForever;
				public new function HRESULT(IPMLiveTileJobInfo *self, BOOL fRunForever) set_RunForever;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pMaxRunCount) get_MaxRunCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulMaxRunCount) set_MaxRunCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pRunCount) get_RunCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulRunCount) set_RunCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pRecurrenceType) get_RecurrenceType;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulRecurrenceType) set_RecurrenceType;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint8** pTileXml, uint32* pcbTileXml) get_TileXML;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint8* pTileXml, uint32 cbTileXml) set_TileXML;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint8** pUrlXML, uint32* pcbUrlXML) get_UrlXML;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint8* pUrlXML, uint32 cbUrlXML) set_UrlXML;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pAttemptCount) get_AttemptCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulAttemptCount) set_AttemptCount;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32* pDownloadState) get_DownloadState;
				public new function HRESULT(IPMLiveTileJobInfo *self, uint32 ulDownloadState) set_DownloadState;
			}
		}
		[CRepr]
		public struct IPMLiveTileJobInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0xbc042582, 0x9415, 0x4f36, 0x9f, 0x99, 0x06, 0xf1, 0x04, 0xc0, 0x7c, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMLiveTileJobInfo** ppLiveTileJobInfo) mut
			{
				return VT.get_Next(&this, ppLiveTileJobInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMLiveTileJobInfoEnumerator *self, IPMLiveTileJobInfo** ppLiveTileJobInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMDeploymentManager : IUnknown
		{
			public const new Guid IID = .(0x35f785fa, 0x1979, 0x4a8b, 0xbc, 0x8f, 0xfd, 0x70, 0xeb, 0x0d, 0x15, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportDownloadBegin(Guid productID) mut
			{
				return VT.ReportDownloadBegin(&this, productID);
			}
			public HRESULT ReportDownloadProgress(Guid productID, uint16 usProgress) mut
			{
				return VT.ReportDownloadProgress(&this, productID, usProgress);
			}
			public HRESULT ReportDownloadComplete(Guid productID, HRESULT hrResult) mut
			{
				return VT.ReportDownloadComplete(&this, productID, hrResult);
			}
			public HRESULT BeginInstall(PM_INSTALLINFO* pInstallInfo) mut
			{
				return VT.BeginInstall(&this, pInstallInfo);
			}
			public HRESULT BeginUpdate(PM_UPDATEINFO* pUpdateInfo) mut
			{
				return VT.BeginUpdate(&this, pUpdateInfo);
			}
			public HRESULT BeginDeployPackage(PM_INSTALLINFO* pInstallInfo) mut
			{
				return VT.BeginDeployPackage(&this, pInstallInfo);
			}
			public HRESULT BeginUpdateDeployedPackageLegacy(PM_UPDATEINFO_LEGACY* pUpdateInfo) mut
			{
				return VT.BeginUpdateDeployedPackageLegacy(&this, pUpdateInfo);
			}
			public HRESULT BeginUninstall(Guid productID) mut
			{
				return VT.BeginUninstall(&this, productID);
			}
			public HRESULT BeginEnterpriseAppInstall(PM_INSTALLINFO* pInstallInfo) mut
			{
				return VT.BeginEnterpriseAppInstall(&this, pInstallInfo);
			}
			public HRESULT BeginEnterpriseAppUpdate(PM_UPDATEINFO* pUpdateInfo) mut
			{
				return VT.BeginEnterpriseAppUpdate(&this, pUpdateInfo);
			}
			public HRESULT BeginUpdateLicense(Guid productID, Guid offerID, uint8* pbLicense, uint32 cbLicense) mut
			{
				return VT.BeginUpdateLicense(&this, productID, offerID, pbLicense, cbLicense);
			}
			public HRESULT GetLicenseChallenge(BSTR PackagePath, uint8** ppbChallenge, uint32* pcbChallenge, uint8** ppbKID, uint32* pcbKID, uint8** ppbDeviceID, uint32* pcbDeviceID, uint8** ppbSaltValue, uint32* pcbSaltValue, uint8** ppbKGVValue, uint32* pcbKGVValue) mut
			{
				return VT.GetLicenseChallenge(&this, PackagePath, ppbChallenge, pcbChallenge, ppbKID, pcbKID, ppbDeviceID, pcbDeviceID, ppbSaltValue, pcbSaltValue, ppbKGVValue, pcbKGVValue);
			}
			public HRESULT GetLicenseChallengeByProductID(Guid ProductID, uint8** ppbChallenge, uint32* pcbLicense) mut
			{
				return VT.GetLicenseChallengeByProductID(&this, ProductID, ppbChallenge, pcbLicense);
			}
			public HRESULT GetLicenseChallengeByProductID2(Guid ProductID, uint8** ppbChallenge, uint32* pcbLicense, uint8** ppbKID, uint32* pcbKID, uint8** ppbDeviceID, uint32* pcbDeviceID, uint8** ppbSaltValue, uint32* pcbSaltValue, uint8** ppbKGVValue, uint32* pcbKGVValue) mut
			{
				return VT.GetLicenseChallengeByProductID2(&this, ProductID, ppbChallenge, pcbLicense, ppbKID, pcbKID, ppbDeviceID, pcbDeviceID, ppbSaltValue, pcbSaltValue, ppbKGVValue, pcbKGVValue);
			}
			public HRESULT RevokeLicense(Guid productID) mut
			{
				return VT.RevokeLicense(&this, productID);
			}
			public HRESULT RebindMdilBinaries(Guid ProductID, SAFEARRAY* FileNames) mut
			{
				return VT.RebindMdilBinaries(&this, ProductID, FileNames);
			}
			public HRESULT RebindAllMdilBinaries(Guid ProductID, Guid InstanceID) mut
			{
				return VT.RebindAllMdilBinaries(&this, ProductID, InstanceID);
			}
			public HRESULT RegenerateXbf(Guid ProductID, SAFEARRAY* AssemblyPaths) mut
			{
				return VT.RegenerateXbf(&this, ProductID, AssemblyPaths);
			}
			public HRESULT GenerateXbfForCurrentLocale(Guid ProductID) mut
			{
				return VT.GenerateXbfForCurrentLocale(&this, ProductID);
			}
			public HRESULT BeginProvision(Guid ProductID, BSTR XMLpath) mut
			{
				return VT.BeginProvision(&this, ProductID, XMLpath);
			}
			public HRESULT BeginDeprovision(Guid ProductID) mut
			{
				return VT.BeginDeprovision(&this, ProductID);
			}
			public HRESULT ReindexSQLCEDatabases(Guid ProductID) mut
			{
				return VT.ReindexSQLCEDatabases(&this, ProductID);
			}
			public HRESULT SetApplicationsNeedMaintenance(uint32 RequiredMaintenanceOperations, uint32* pcApplications) mut
			{
				return VT.SetApplicationsNeedMaintenance(&this, RequiredMaintenanceOperations, pcApplications);
			}
			public HRESULT UpdateChamberProfile(Guid ProductID) mut
			{
				return VT.UpdateChamberProfile(&this, ProductID);
			}
			public HRESULT EnterprisePolicyIsApplicationAllowed(Guid productId, PWSTR publisherName, BOOL* pIsAllowed) mut
			{
				return VT.EnterprisePolicyIsApplicationAllowed(&this, productId, publisherName, pIsAllowed);
			}
			public HRESULT BeginUpdateDeployedPackage(PM_UPDATEINFO* pUpdateInfo) mut
			{
				return VT.BeginUpdateDeployedPackage(&this, pUpdateInfo);
			}
			public HRESULT ReportRestoreCancelled(Guid productID) mut
			{
				return VT.ReportRestoreCancelled(&this, productID);
			}
			public HRESULT ResolveResourceString(PWSTR resourceString, BSTR* pResolvedResourceString) mut
			{
				return VT.ResolveResourceString(&this, resourceString, pResolvedResourceString);
			}
			public HRESULT UpdateCapabilitiesForModernApps() mut
			{
				return VT.UpdateCapabilitiesForModernApps(&this);
			}
			public HRESULT ReportDownloadStatusUpdate(Guid productId) mut
			{
				return VT.ReportDownloadStatusUpdate(&this, productId);
			}
			public HRESULT BeginUninstallWithOptions(Guid productID, uint32 removalOptions) mut
			{
				return VT.BeginUninstallWithOptions(&this, productID, removalOptions);
			}
			public HRESULT BindDeferredMdilBinaries() mut
			{
				return VT.BindDeferredMdilBinaries(&this);
			}
			public HRESULT GenerateXamlLightupXbfForCurrentLocale(BSTR PackageFamilyName) mut
			{
				return VT.GenerateXamlLightupXbfForCurrentLocale(&this, PackageFamilyName);
			}
			public HRESULT AddLicenseForAppx(Guid productID, uint8* pbLicense, uint32 cbLicense, uint8* pbPlayReadyHeader, uint32 cbPlayReadyHeader) mut
			{
				return VT.AddLicenseForAppx(&this, productID, pbLicense, cbLicense, pbPlayReadyHeader, cbPlayReadyHeader);
			}
			public HRESULT FixJunctionsForAppsOnSDCard() mut
			{
				return VT.FixJunctionsForAppsOnSDCard(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMDeploymentManager *self, Guid productID) ReportDownloadBegin;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID, uint16 usProgress) ReportDownloadProgress;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID, HRESULT hrResult) ReportDownloadComplete;
				public new function HRESULT(IPMDeploymentManager *self, PM_INSTALLINFO* pInstallInfo) BeginInstall;
				public new function HRESULT(IPMDeploymentManager *self, PM_UPDATEINFO* pUpdateInfo) BeginUpdate;
				public new function HRESULT(IPMDeploymentManager *self, PM_INSTALLINFO* pInstallInfo) BeginDeployPackage;
				public new function HRESULT(IPMDeploymentManager *self, PM_UPDATEINFO_LEGACY* pUpdateInfo) BeginUpdateDeployedPackageLegacy;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID) BeginUninstall;
				public new function HRESULT(IPMDeploymentManager *self, PM_INSTALLINFO* pInstallInfo) BeginEnterpriseAppInstall;
				public new function HRESULT(IPMDeploymentManager *self, PM_UPDATEINFO* pUpdateInfo) BeginEnterpriseAppUpdate;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID, Guid offerID, uint8* pbLicense, uint32 cbLicense) BeginUpdateLicense;
				public new function HRESULT(IPMDeploymentManager *self, BSTR PackagePath, uint8** ppbChallenge, uint32* pcbChallenge, uint8** ppbKID, uint32* pcbKID, uint8** ppbDeviceID, uint32* pcbDeviceID, uint8** ppbSaltValue, uint32* pcbSaltValue, uint8** ppbKGVValue, uint32* pcbKGVValue) GetLicenseChallenge;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, uint8** ppbChallenge, uint32* pcbLicense) GetLicenseChallengeByProductID;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, uint8** ppbChallenge, uint32* pcbLicense, uint8** ppbKID, uint32* pcbKID, uint8** ppbDeviceID, uint32* pcbDeviceID, uint8** ppbSaltValue, uint32* pcbSaltValue, uint8** ppbKGVValue, uint32* pcbKGVValue) GetLicenseChallengeByProductID2;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID) RevokeLicense;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, SAFEARRAY* FileNames) RebindMdilBinaries;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, Guid InstanceID) RebindAllMdilBinaries;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, SAFEARRAY* AssemblyPaths) RegenerateXbf;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID) GenerateXbfForCurrentLocale;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID, BSTR XMLpath) BeginProvision;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID) BeginDeprovision;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID) ReindexSQLCEDatabases;
				public new function HRESULT(IPMDeploymentManager *self, uint32 RequiredMaintenanceOperations, uint32* pcApplications) SetApplicationsNeedMaintenance;
				public new function HRESULT(IPMDeploymentManager *self, Guid ProductID) UpdateChamberProfile;
				public new function HRESULT(IPMDeploymentManager *self, Guid productId, PWSTR publisherName, BOOL* pIsAllowed) EnterprisePolicyIsApplicationAllowed;
				public new function HRESULT(IPMDeploymentManager *self, PM_UPDATEINFO* pUpdateInfo) BeginUpdateDeployedPackage;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID) ReportRestoreCancelled;
				public new function HRESULT(IPMDeploymentManager *self, PWSTR resourceString, BSTR* pResolvedResourceString) ResolveResourceString;
				public new function HRESULT(IPMDeploymentManager *self) UpdateCapabilitiesForModernApps;
				public new function HRESULT(IPMDeploymentManager *self, Guid productId) ReportDownloadStatusUpdate;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID, uint32 removalOptions) BeginUninstallWithOptions;
				public new function HRESULT(IPMDeploymentManager *self) BindDeferredMdilBinaries;
				public new function HRESULT(IPMDeploymentManager *self, BSTR PackageFamilyName) GenerateXamlLightupXbfForCurrentLocale;
				public new function HRESULT(IPMDeploymentManager *self, Guid productID, uint8* pbLicense, uint32 cbLicense, uint8* pbPlayReadyHeader, uint32 cbPlayReadyHeader) AddLicenseForAppx;
				public new function HRESULT(IPMDeploymentManager *self) FixJunctionsForAppsOnSDCard;
			}
		}
		[CRepr]
		public struct IPMEnumerationManager : IUnknown
		{
			public const new Guid IID = .(0x698d57c2, 0x292d, 0x4cf3, 0xb7, 0x3c, 0xd9, 0x5a, 0x69, 0x22, 0xed, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllApplications(IPMApplicationInfoEnumerator** ppAppEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllApplications(&this, ppAppEnum, Filter);
			}
			public HRESULT get_AllTiles(IPMTileInfoEnumerator** ppTileEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllTiles(&this, ppTileEnum, Filter);
			}
			public HRESULT get_AllTasks(IPMTaskInfoEnumerator** ppTaskEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllTasks(&this, ppTaskEnum, Filter);
			}
			public HRESULT get_AllExtensions(IPMExtensionInfoEnumerator** ppExtensionEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllExtensions(&this, ppExtensionEnum, Filter);
			}
			public HRESULT get_AllBackgroundServiceAgents(IPMBackgroundServiceAgentInfoEnumerator** ppBSAEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllBackgroundServiceAgents(&this, ppBSAEnum, Filter);
			}
			public HRESULT get_AllBackgroundWorkers(IPMBackgroundWorkerInfoEnumerator** ppBSWEnum, PM_ENUM_FILTER Filter) mut
			{
				return VT.get_AllBackgroundWorkers(&this, ppBSWEnum, Filter);
			}
			public HRESULT get_ApplicationInfo(Guid ProductID, IPMApplicationInfo** ppAppInfo) mut
			{
				return VT.get_ApplicationInfo(&this, ProductID, ppAppInfo);
			}
			public HRESULT get_TileInfo(Guid ProductID, BSTR TileID, IPMTileInfo** ppTileInfo) mut
			{
				return VT.get_TileInfo(&this, ProductID, TileID, ppTileInfo);
			}
			public HRESULT get_TaskInfo(Guid ProductID, BSTR TaskID, IPMTaskInfo** ppTaskInfo) mut
			{
				return VT.get_TaskInfo(&this, ProductID, TaskID, ppTaskInfo);
			}
			public HRESULT get_TaskInfoEx(Guid ProductID, PWSTR TaskID, IPMTaskInfo** ppTaskInfo) mut
			{
				return VT.get_TaskInfoEx(&this, ProductID, TaskID, ppTaskInfo);
			}
			public HRESULT get_BackgroundServiceAgentInfo(uint32 BSAID, IPMBackgroundServiceAgentInfo** ppTaskInfo) mut
			{
				return VT.get_BackgroundServiceAgentInfo(&this, BSAID, ppTaskInfo);
			}
			public HRESULT get_AllLiveTileJobs(IPMLiveTileJobInfoEnumerator** ppLiveTileJobEnum) mut
			{
				return VT.get_AllLiveTileJobs(&this, ppLiveTileJobEnum);
			}
			public HRESULT get_LiveTileJob(Guid ProductID, BSTR TileID, PM_LIVETILE_RECURRENCE_TYPE RecurrenceType, IPMLiveTileJobInfo** ppLiveTileJobInfo) mut
			{
				return VT.get_LiveTileJob(&this, ProductID, TileID, RecurrenceType, ppLiveTileJobInfo);
			}
			public HRESULT get_ApplicationInfoExternal(Guid ProductID, IPMApplicationInfo** ppAppInfo) mut
			{
				return VT.get_ApplicationInfoExternal(&this, ProductID, ppAppInfo);
			}
			public HRESULT get_FileHandlerGenericLogo(BSTR FileType, PM_LOGO_SIZE LogoSize, BSTR* pLogo) mut
			{
				return VT.get_FileHandlerGenericLogo(&this, FileType, LogoSize, pLogo);
			}
			public HRESULT get_ApplicationInfoFromAccessClaims(BSTR SysAppID0, BSTR SysAppID1, IPMApplicationInfo** ppAppInfo) mut
			{
				return VT.get_ApplicationInfoFromAccessClaims(&this, SysAppID0, SysAppID1, ppAppInfo);
			}
			public HRESULT get_StartTileEnumeratorBlob(PM_ENUM_FILTER Filter, uint32* pcTiles, PM_STARTTILEBLOB** ppTileBlobs) mut
			{
				return VT.get_StartTileEnumeratorBlob(&this, Filter, pcTiles, ppTileBlobs);
			}
			public HRESULT get_StartAppEnumeratorBlob(PM_ENUM_FILTER Filter, uint32* pcApps, PM_STARTAPPBLOB** ppAppBlobs) mut
			{
				return VT.get_StartAppEnumeratorBlob(&this, Filter, pcApps, ppAppBlobs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMEnumerationManager *self, IPMApplicationInfoEnumerator** ppAppEnum, PM_ENUM_FILTER Filter) get_AllApplications;
				public new function HRESULT(IPMEnumerationManager *self, IPMTileInfoEnumerator** ppTileEnum, PM_ENUM_FILTER Filter) get_AllTiles;
				public new function HRESULT(IPMEnumerationManager *self, IPMTaskInfoEnumerator** ppTaskEnum, PM_ENUM_FILTER Filter) get_AllTasks;
				public new function HRESULT(IPMEnumerationManager *self, IPMExtensionInfoEnumerator** ppExtensionEnum, PM_ENUM_FILTER Filter) get_AllExtensions;
				public new function HRESULT(IPMEnumerationManager *self, IPMBackgroundServiceAgentInfoEnumerator** ppBSAEnum, PM_ENUM_FILTER Filter) get_AllBackgroundServiceAgents;
				public new function HRESULT(IPMEnumerationManager *self, IPMBackgroundWorkerInfoEnumerator** ppBSWEnum, PM_ENUM_FILTER Filter) get_AllBackgroundWorkers;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, IPMApplicationInfo** ppAppInfo) get_ApplicationInfo;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, BSTR TileID, IPMTileInfo** ppTileInfo) get_TileInfo;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, BSTR TaskID, IPMTaskInfo** ppTaskInfo) get_TaskInfo;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, PWSTR TaskID, IPMTaskInfo** ppTaskInfo) get_TaskInfoEx;
				public new function HRESULT(IPMEnumerationManager *self, uint32 BSAID, IPMBackgroundServiceAgentInfo** ppTaskInfo) get_BackgroundServiceAgentInfo;
				public new function HRESULT(IPMEnumerationManager *self, IPMLiveTileJobInfoEnumerator** ppLiveTileJobEnum) get_AllLiveTileJobs;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, BSTR TileID, PM_LIVETILE_RECURRENCE_TYPE RecurrenceType, IPMLiveTileJobInfo** ppLiveTileJobInfo) get_LiveTileJob;
				public new function HRESULT(IPMEnumerationManager *self, Guid ProductID, IPMApplicationInfo** ppAppInfo) get_ApplicationInfoExternal;
				public new function HRESULT(IPMEnumerationManager *self, BSTR FileType, PM_LOGO_SIZE LogoSize, BSTR* pLogo) get_FileHandlerGenericLogo;
				public new function HRESULT(IPMEnumerationManager *self, BSTR SysAppID0, BSTR SysAppID1, IPMApplicationInfo** ppAppInfo) get_ApplicationInfoFromAccessClaims;
				public new function HRESULT(IPMEnumerationManager *self, PM_ENUM_FILTER Filter, uint32* pcTiles, PM_STARTTILEBLOB** ppTileBlobs) get_StartTileEnumeratorBlob;
				public new function HRESULT(IPMEnumerationManager *self, PM_ENUM_FILTER Filter, uint32* pcApps, PM_STARTAPPBLOB** ppAppBlobs) get_StartAppEnumeratorBlob;
			}
		}
		[CRepr]
		public struct IPMTaskInfo : IUnknown
		{
			public const new Guid IID = .(0xbf1d8c33, 0x1bf5, 0x4ee0, 0xb5, 0x49, 0x6b, 0x9d, 0xd3, 0x83, 0x49, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_TaskID(BSTR* pTaskID) mut
			{
				return VT.get_TaskID(&this, pTaskID);
			}
			public HRESULT get_NavigationPage(BSTR* pNavigationPage) mut
			{
				return VT.get_NavigationPage(&this, pNavigationPage);
			}
			public HRESULT get_TaskTransition(PM_TASK_TRANSITION* pTaskTransition) mut
			{
				return VT.get_TaskTransition(&this, pTaskTransition);
			}
			public HRESULT get_RuntimeType(PACKMAN_RUNTIME* pRuntimetype) mut
			{
				return VT.get_RuntimeType(&this, pRuntimetype);
			}
			public HRESULT get_ActivationPolicy(PM_ACTIVATION_POLICY* pActivationPolicy) mut
			{
				return VT.get_ActivationPolicy(&this, pActivationPolicy);
			}
			public HRESULT get_TaskType(PM_TASK_TYPE* pTaskType) mut
			{
				return VT.get_TaskType(&this, pTaskType);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			public HRESULT get_ImagePath(BSTR* pImagePath) mut
			{
				return VT.get_ImagePath(&this, pImagePath);
			}
			public HRESULT get_ImageParams(BSTR* pImageParams) mut
			{
				return VT.get_ImageParams(&this, pImageParams);
			}
			public HRESULT get_InstallRootFolder(BSTR* pInstallRootFolder) mut
			{
				return VT.get_InstallRootFolder(&this, pInstallRootFolder);
			}
			public HRESULT get_DataRootFolder(BSTR* pDataRootFolder) mut
			{
				return VT.get_DataRootFolder(&this, pDataRootFolder);
			}
			public HRESULT get_IsSingleInstanceHost(BOOL* pIsSingleInstanceHost) mut
			{
				return VT.get_IsSingleInstanceHost(&this, pIsSingleInstanceHost);
			}
			public HRESULT get_IsInteropEnabled(BOOL* pIsInteropEnabled) mut
			{
				return VT.get_IsInteropEnabled(&this, pIsInteropEnabled);
			}
			public HRESULT get_ApplicationState(PM_APPLICATION_STATE* pApplicationState) mut
			{
				return VT.get_ApplicationState(&this, pApplicationState);
			}
			public HRESULT get_InstallType(PM_APPLICATION_INSTALL_TYPE* pInstallType) mut
			{
				return VT.get_InstallType(&this, pInstallType);
			}
			public HRESULT get_Version(uint8* pTargetMajorVersion, uint8* pTargetMinorVersion) mut
			{
				return VT.get_Version(&this, pTargetMajorVersion, pTargetMinorVersion);
			}
			public HRESULT get_BitsPerPixel(uint16* pBitsPerPixel) mut
			{
				return VT.get_BitsPerPixel(&this, pBitsPerPixel);
			}
			public HRESULT get_SuppressesDehydration(BOOL* pSuppressesDehydration) mut
			{
				return VT.get_SuppressesDehydration(&this, pSuppressesDehydration);
			}
			public HRESULT get_BackgroundExecutionAbilities(BSTR* pBackgroundExecutionAbilities) mut
			{
				return VT.get_BackgroundExecutionAbilities(&this, pBackgroundExecutionAbilities);
			}
			public HRESULT get_IsOptedForExtendedMem(BOOL* pIsOptedIn) mut
			{
				return VT.get_IsOptedForExtendedMem(&this, pIsOptedIn);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTaskInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pTaskID) get_TaskID;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pNavigationPage) get_NavigationPage;
				public new function HRESULT(IPMTaskInfo *self, PM_TASK_TRANSITION* pTaskTransition) get_TaskTransition;
				public new function HRESULT(IPMTaskInfo *self, PACKMAN_RUNTIME* pRuntimetype) get_RuntimeType;
				public new function HRESULT(IPMTaskInfo *self, PM_ACTIVATION_POLICY* pActivationPolicy) get_ActivationPolicy;
				public new function HRESULT(IPMTaskInfo *self, PM_TASK_TYPE* pTaskType) get_TaskType;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pImagePath) get_ImagePath;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pImageParams) get_ImageParams;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pInstallRootFolder) get_InstallRootFolder;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pDataRootFolder) get_DataRootFolder;
				public new function HRESULT(IPMTaskInfo *self, BOOL* pIsSingleInstanceHost) get_IsSingleInstanceHost;
				public new function HRESULT(IPMTaskInfo *self, BOOL* pIsInteropEnabled) get_IsInteropEnabled;
				public new function HRESULT(IPMTaskInfo *self, PM_APPLICATION_STATE* pApplicationState) get_ApplicationState;
				public new function HRESULT(IPMTaskInfo *self, PM_APPLICATION_INSTALL_TYPE* pInstallType) get_InstallType;
				public new function HRESULT(IPMTaskInfo *self, uint8* pTargetMajorVersion, uint8* pTargetMinorVersion) get_Version;
				public new function HRESULT(IPMTaskInfo *self, uint16* pBitsPerPixel) get_BitsPerPixel;
				public new function HRESULT(IPMTaskInfo *self, BOOL* pSuppressesDehydration) get_SuppressesDehydration;
				public new function HRESULT(IPMTaskInfo *self, BSTR* pBackgroundExecutionAbilities) get_BackgroundExecutionAbilities;
				public new function HRESULT(IPMTaskInfo *self, BOOL* pIsOptedIn) get_IsOptedForExtendedMem;
			}
		}
		[CRepr]
		public struct IPMTaskInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x0630b0f8, 0x0bbc, 0x4821, 0xbe, 0x74, 0xc7, 0x99, 0x51, 0x66, 0xed, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMTaskInfo** ppTaskInfo) mut
			{
				return VT.get_Next(&this, ppTaskInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMTaskInfoEnumerator *self, IPMTaskInfo** ppTaskInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMExtensionInfo : IUnknown
		{
			public const new Guid IID = .(0x49acde79, 0x9788, 0x4d0a, 0x8a, 0xa0, 0x17, 0x46, 0xaf, 0xdb, 0x9e, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SupplierPID(Guid* pSupplierPID) mut
			{
				return VT.get_SupplierPID(&this, pSupplierPID);
			}
			public HRESULT get_SupplierTaskID(BSTR* pSupplierTID) mut
			{
				return VT.get_SupplierTaskID(&this, pSupplierTID);
			}
			public HRESULT get_Title(BSTR* pTitle) mut
			{
				return VT.get_Title(&this, pTitle);
			}
			public HRESULT get_IconPath(BSTR* pIconPath) mut
			{
				return VT.get_IconPath(&this, pIconPath);
			}
			public HRESULT get_ExtraFile(BSTR* pFilePath) mut
			{
				return VT.get_ExtraFile(&this, pFilePath);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionInfo *self, Guid* pSupplierPID) get_SupplierPID;
				public new function HRESULT(IPMExtensionInfo *self, BSTR* pSupplierTID) get_SupplierTaskID;
				public new function HRESULT(IPMExtensionInfo *self, BSTR* pTitle) get_Title;
				public new function HRESULT(IPMExtensionInfo *self, BSTR* pIconPath) get_IconPath;
				public new function HRESULT(IPMExtensionInfo *self, BSTR* pFilePath) get_ExtraFile;
				public new function HRESULT(IPMExtensionInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
			}
		}
		[CRepr]
		public struct IPMExtensionFileExtensionInfo : IUnknown
		{
			public const new Guid IID = .(0x6b87cb6c, 0x0b88, 0x4989, 0xa4, 0xec, 0x03, 0x37, 0x14, 0xf7, 0x10, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT get_DisplayName(BSTR* pDisplayName) mut
			{
				return VT.get_DisplayName(&this, pDisplayName);
			}
			public HRESULT get_Logo(PM_LOGO_SIZE LogoSize, BSTR* pLogo) mut
			{
				return VT.get_Logo(&this, LogoSize, pLogo);
			}
			public HRESULT get_ContentType(BSTR FileType, BSTR* pContentType) mut
			{
				return VT.get_ContentType(&this, FileType, pContentType);
			}
			public HRESULT get_FileType(BSTR ContentType, BSTR* pFileType) mut
			{
				return VT.get_FileType(&this, ContentType, pFileType);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			public HRESULT get_AllFileTypes(uint32* pcbTypes, BSTR** ppTypes) mut
			{
				return VT.get_AllFileTypes(&this, pcbTypes, ppTypes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, BSTR* pName) get_Name;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, BSTR* pDisplayName) get_DisplayName;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, PM_LOGO_SIZE LogoSize, BSTR* pLogo) get_Logo;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, BSTR FileType, BSTR* pContentType) get_ContentType;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, BSTR ContentType, BSTR* pFileType) get_FileType;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
				public new function HRESULT(IPMExtensionFileExtensionInfo *self, uint32* pcbTypes, BSTR** ppTypes) get_AllFileTypes;
			}
		}
		[CRepr]
		public struct IPMExtensionProtocolInfo : IUnknown
		{
			public const new Guid IID = .(0x1e3fa036, 0x51eb, 0x4453, 0xba, 0xff, 0xb8, 0xd8, 0xe4, 0xb4, 0x6c, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Protocol(BSTR* pProtocol) mut
			{
				return VT.get_Protocol(&this, pProtocol);
			}
			public HRESULT get_InvocationInfo(BSTR* pImageUrn, BSTR* pParameters) mut
			{
				return VT.get_InvocationInfo(&this, pImageUrn, pParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionProtocolInfo *self, BSTR* pProtocol) get_Protocol;
				public new function HRESULT(IPMExtensionProtocolInfo *self, BSTR* pImageUrn, BSTR* pParameters) get_InvocationInfo;
			}
		}
		[CRepr]
		public struct IPMExtensionShareTargetInfo : IUnknown
		{
			public const new Guid IID = .(0x5471f48b, 0xc65c, 0x4656, 0x8c, 0x70, 0x24, 0x2e, 0x31, 0x19, 0x5f, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllFileTypes(uint32* pcTypes, BSTR** ppTypes) mut
			{
				return VT.get_AllFileTypes(&this, pcTypes, ppTypes);
			}
			public HRESULT get_AllDataFormats(uint32* pcDataFormats, BSTR** ppDataFormats) mut
			{
				return VT.get_AllDataFormats(&this, pcDataFormats, ppDataFormats);
			}
			public HRESULT get_SupportsAllFileTypes(BOOL* pSupportsAllTypes) mut
			{
				return VT.get_SupportsAllFileTypes(&this, pSupportsAllTypes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionShareTargetInfo *self, uint32* pcTypes, BSTR** ppTypes) get_AllFileTypes;
				public new function HRESULT(IPMExtensionShareTargetInfo *self, uint32* pcDataFormats, BSTR** ppDataFormats) get_AllDataFormats;
				public new function HRESULT(IPMExtensionShareTargetInfo *self, BOOL* pSupportsAllTypes) get_SupportsAllFileTypes;
			}
		}
		[CRepr]
		public struct IPMExtensionContractInfo : IUnknown
		{
			public const new Guid IID = .(0xe5666373, 0x7ba1, 0x467c, 0xb8, 0x19, 0xb1, 0x75, 0xdb, 0x1c, 0x29, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_InvocationInfo(BSTR* pAUMID, BSTR* pArgs) mut
			{
				return VT.get_InvocationInfo(&this, pAUMID, pArgs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionContractInfo *self, BSTR* pAUMID, BSTR* pArgs) get_InvocationInfo;
			}
		}
		[CRepr]
		public struct IPMExtensionFileOpenPickerInfo : IUnknown
		{
			public const new Guid IID = .(0x6dc91d25, 0x9606, 0x420c, 0x9a, 0x78, 0xe0, 0x34, 0xa3, 0x41, 0x83, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllFileTypes(uint32* pcTypes, BSTR** ppTypes) mut
			{
				return VT.get_AllFileTypes(&this, pcTypes, ppTypes);
			}
			public HRESULT get_SupportsAllFileTypes(BOOL* pSupportsAllTypes) mut
			{
				return VT.get_SupportsAllFileTypes(&this, pSupportsAllTypes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionFileOpenPickerInfo *self, uint32* pcTypes, BSTR** ppTypes) get_AllFileTypes;
				public new function HRESULT(IPMExtensionFileOpenPickerInfo *self, BOOL* pSupportsAllTypes) get_SupportsAllFileTypes;
			}
		}
		[CRepr]
		public struct IPMExtensionFileSavePickerInfo : IUnknown
		{
			public const new Guid IID = .(0x38005cba, 0xf81a, 0x493e, 0xa0, 0xf8, 0x92, 0x2c, 0x86, 0x80, 0xda, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AllFileTypes(uint32* pcTypes, BSTR** ppTypes) mut
			{
				return VT.get_AllFileTypes(&this, pcTypes, ppTypes);
			}
			public HRESULT get_SupportsAllFileTypes(BOOL* pSupportsAllTypes) mut
			{
				return VT.get_SupportsAllFileTypes(&this, pSupportsAllTypes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionFileSavePickerInfo *self, uint32* pcTypes, BSTR** ppTypes) get_AllFileTypes;
				public new function HRESULT(IPMExtensionFileSavePickerInfo *self, BOOL* pSupportsAllTypes) get_SupportsAllFileTypes;
			}
		}
		[CRepr]
		public struct IPMExtensionCachedFileUpdaterInfo : IUnknown
		{
			public const new Guid IID = .(0xe2d77509, 0x4e58, 0x4ba9, 0xaf, 0x7e, 0xb6, 0x42, 0xe3, 0x70, 0xe1, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SupportsUpdates(BOOL* pSupportsUpdates) mut
			{
				return VT.get_SupportsUpdates(&this, pSupportsUpdates);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionCachedFileUpdaterInfo *self, BOOL* pSupportsUpdates) get_SupportsUpdates;
			}
		}
		[CRepr]
		public struct IPMExtensionInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x403b9e82, 0x1171, 0x4573, 0x8e, 0x6f, 0x6f, 0x33, 0xf3, 0x9b, 0x83, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMExtensionInfo** ppExtensionInfo) mut
			{
				return VT.get_Next(&this, ppExtensionInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMExtensionInfoEnumerator *self, IPMExtensionInfo** ppExtensionInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMBackgroundServiceAgentInfo : IUnknown
		{
			public const new Guid IID = .(0x3a8b46da, 0x928c, 0x4879, 0x99, 0x8c, 0x09, 0xdc, 0x96, 0xf3, 0xd4, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_TaskID(BSTR* pTaskID) mut
			{
				return VT.get_TaskID(&this, pTaskID);
			}
			public HRESULT get_BSAID(uint32* pBSAID) mut
			{
				return VT.get_BSAID(&this, pBSAID);
			}
			public HRESULT get_BGSpecifier(BSTR* pBGSpecifier) mut
			{
				return VT.get_BGSpecifier(&this, pBGSpecifier);
			}
			public HRESULT get_BGName(BSTR* pBGName) mut
			{
				return VT.get_BGName(&this, pBGName);
			}
			public HRESULT get_BGSource(BSTR* pBGSource) mut
			{
				return VT.get_BGSource(&this, pBGSource);
			}
			public HRESULT get_BGType(BSTR* pBGType) mut
			{
				return VT.get_BGType(&this, pBGType);
			}
			public HRESULT get_IsPeriodic(BOOL* pIsPeriodic) mut
			{
				return VT.get_IsPeriodic(&this, pIsPeriodic);
			}
			public HRESULT get_IsScheduled(BOOL* pIsScheduled) mut
			{
				return VT.get_IsScheduled(&this, pIsScheduled);
			}
			public HRESULT get_IsScheduleAllowed(BOOL* pIsScheduleAllowed) mut
			{
				return VT.get_IsScheduleAllowed(&this, pIsScheduleAllowed);
			}
			public HRESULT get_Description(BSTR* pDescription) mut
			{
				return VT.get_Description(&this, pDescription);
			}
			public HRESULT get_IsLaunchOnBoot(BOOL* pLaunchOnBoot) mut
			{
				return VT.get_IsLaunchOnBoot(&this, pLaunchOnBoot);
			}
			public HRESULT set_IsScheduled(BOOL IsScheduled) mut
			{
				return VT.set_IsScheduled(&this, IsScheduled);
			}
			public HRESULT set_IsScheduleAllowed(BOOL IsScheduleAllowed) mut
			{
				return VT.set_IsScheduleAllowed(&this, IsScheduleAllowed);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pTaskID) get_TaskID;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, uint32* pBSAID) get_BSAID;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pBGSpecifier) get_BGSpecifier;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pBGName) get_BGName;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pBGSource) get_BGSource;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pBGType) get_BGType;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL* pIsPeriodic) get_IsPeriodic;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL* pIsScheduled) get_IsScheduled;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL* pIsScheduleAllowed) get_IsScheduleAllowed;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BSTR* pDescription) get_Description;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL* pLaunchOnBoot) get_IsLaunchOnBoot;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL IsScheduled) set_IsScheduled;
				public new function HRESULT(IPMBackgroundServiceAgentInfo *self, BOOL IsScheduleAllowed) set_IsScheduleAllowed;
			}
		}
		[CRepr]
		public struct IPMBackgroundWorkerInfo : IUnknown
		{
			public const new Guid IID = .(0x7dd4531b, 0xd3bf, 0x4b6b, 0x94, 0xf3, 0x69, 0xc0, 0x98, 0xb1, 0x49, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProductID(Guid* pProductID) mut
			{
				return VT.get_ProductID(&this, pProductID);
			}
			public HRESULT get_TaskID(BSTR* pTaskID) mut
			{
				return VT.get_TaskID(&this, pTaskID);
			}
			public HRESULT get_BGName(BSTR* pBGName) mut
			{
				return VT.get_BGName(&this, pBGName);
			}
			public HRESULT get_MaxStartupLatency(uint32* pMaxStartupLatency) mut
			{
				return VT.get_MaxStartupLatency(&this, pMaxStartupLatency);
			}
			public HRESULT get_ExpectedRuntime(uint32* pExpectedRuntime) mut
			{
				return VT.get_ExpectedRuntime(&this, pExpectedRuntime);
			}
			public HRESULT get_IsBootWorker(BOOL* pIsBootWorker) mut
			{
				return VT.get_IsBootWorker(&this, pIsBootWorker);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMBackgroundWorkerInfo *self, Guid* pProductID) get_ProductID;
				public new function HRESULT(IPMBackgroundWorkerInfo *self, BSTR* pTaskID) get_TaskID;
				public new function HRESULT(IPMBackgroundWorkerInfo *self, BSTR* pBGName) get_BGName;
				public new function HRESULT(IPMBackgroundWorkerInfo *self, uint32* pMaxStartupLatency) get_MaxStartupLatency;
				public new function HRESULT(IPMBackgroundWorkerInfo *self, uint32* pExpectedRuntime) get_ExpectedRuntime;
				public new function HRESULT(IPMBackgroundWorkerInfo *self, BOOL* pIsBootWorker) get_IsBootWorker;
			}
		}
		[CRepr]
		public struct IPMBackgroundServiceAgentInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x18eb2072, 0xab56, 0x43b3, 0x87, 0x2c, 0xbe, 0xaf, 0xb7, 0xa6, 0xb3, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMBackgroundServiceAgentInfo** ppBSAInfo) mut
			{
				return VT.get_Next(&this, ppBSAInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMBackgroundServiceAgentInfoEnumerator *self, IPMBackgroundServiceAgentInfo** ppBSAInfo) get_Next;
			}
		}
		[CRepr]
		public struct IPMBackgroundWorkerInfoEnumerator : IUnknown
		{
			public const new Guid IID = .(0x87f479f8, 0x90d8, 0x4ec7, 0x92, 0xb9, 0x72, 0x78, 0x7e, 0x2f, 0x63, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Next(IPMBackgroundWorkerInfo** ppBWInfo) mut
			{
				return VT.get_Next(&this, ppBWInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPMBackgroundWorkerInfoEnumerator *self, IPMBackgroundWorkerInfo** ppBWInfo) get_Next;
			}
		}
		
		// --- Functions ---
		
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCloseHandle(MSIHANDLE hAny);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCloseAllHandles();
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLUILEVEL MsiSetInternalUI(INSTALLUILEVEL dwUILevel, HWND* phWnd);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLUI_HANDLERA MsiSetExternalUIA(INSTALLUI_HANDLERA puiHandler, uint32 dwMessageFilter, void* pvContext);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLUI_HANDLERW MsiSetExternalUIW(INSTALLUI_HANDLERW puiHandler, uint32 dwMessageFilter, void* pvContext);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetExternalUIRecord(PINSTALLUI_HANDLER_RECORD puiHandler, uint32 dwMessageFilter, void* pvContext, PINSTALLUI_HANDLER_RECORD ppuiPrevHandler);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnableLogA(INSTALLOGMODE dwLogMode, PSTR szLogFile, uint32 dwLogAttributes);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnableLogW(INSTALLOGMODE dwLogMode, PWSTR szLogFile, uint32 dwLogAttributes);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiQueryProductStateA(PSTR szProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiQueryProductStateW(PWSTR szProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoA(PSTR szProduct, PSTR szAttribute, uint8* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoW(PWSTR szProduct, PWSTR szAttribute, char16* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoExA(PSTR szProductCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, PSTR szProperty, uint8* szValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoExW(PWSTR szProductCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, PWSTR szProperty, char16* szValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallProductA(PSTR szPackagePath, PSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallProductW(PWSTR szPackagePath, PWSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureProductA(PSTR szProduct, INSTALLLEVEL iInstallLevel, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureProductW(PWSTR szProduct, INSTALLLEVEL iInstallLevel, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureProductExA(PSTR szProduct, INSTALLLEVEL iInstallLevel, INSTALLSTATE eInstallState, PSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureProductExW(PWSTR szProduct, INSTALLLEVEL iInstallLevel, INSTALLSTATE eInstallState, PWSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiReinstallProductA(PSTR szProduct, REINSTALLMODE szReinstallMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiReinstallProductW(PWSTR szProduct, REINSTALLMODE szReinstallMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseProductExA(PSTR szPackagePath, PSTR szScriptfilePath, PSTR szTransforms, uint16 lgidLanguage, uint32 dwPlatform, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseProductExW(PWSTR szPackagePath, PWSTR szScriptfilePath, PWSTR szTransforms, uint16 lgidLanguage, uint32 dwPlatform, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseProductA(PSTR szPackagePath, PSTR szScriptfilePath, PSTR szTransforms, uint16 lgidLanguage);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseProductW(PWSTR szPackagePath, PWSTR szScriptfilePath, PWSTR szTransforms, uint16 lgidLanguage);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProcessAdvertiseScriptA(PSTR szScriptFile, PSTR szIconFolder, HKEY hRegData, BOOL fShortcuts, BOOL fRemoveItems);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProcessAdvertiseScriptW(PWSTR szScriptFile, PWSTR szIconFolder, HKEY hRegData, BOOL fShortcuts, BOOL fRemoveItems);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseScriptA(PSTR szScriptFile, uint32 dwFlags, HKEY* phRegData, BOOL fRemoveItems);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiAdvertiseScriptW(PWSTR szScriptFile, uint32 dwFlags, HKEY* phRegData, BOOL fRemoveItems);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoFromScriptA(PSTR szScriptFile, PSTR lpProductBuf39, uint16* plgidLanguage, uint32* pdwVersion, uint8* lpNameBuf, uint32* pcchNameBuf, uint8* lpPackageBuf, uint32* pcchPackageBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductInfoFromScriptW(PWSTR szScriptFile, PWSTR lpProductBuf39, uint16* plgidLanguage, uint32* pdwVersion, char16* lpNameBuf, uint32* pcchNameBuf, char16* lpPackageBuf, uint32* pcchPackageBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductCodeA(PSTR szComponent, PSTR lpBuf39);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductCodeW(PWSTR szComponent, PWSTR lpBuf39);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern USERINFOSTATE MsiGetUserInfoA(PSTR szProduct, uint8* lpUserNameBuf, uint32* pcchUserNameBuf, uint8* lpOrgNameBuf, uint32* pcchOrgNameBuf, uint8* lpSerialBuf, uint32* pcchSerialBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern USERINFOSTATE MsiGetUserInfoW(PWSTR szProduct, char16* lpUserNameBuf, uint32* pcchUserNameBuf, char16* lpOrgNameBuf, uint32* pcchOrgNameBuf, char16* lpSerialBuf, uint32* pcchSerialBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCollectUserInfoA(PSTR szProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCollectUserInfoW(PWSTR szProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiApplyPatchA(PSTR szPatchPackage, PSTR szInstallPackage, INSTALLTYPE eInstallType, PSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiApplyPatchW(PWSTR szPatchPackage, PWSTR szInstallPackage, INSTALLTYPE eInstallType, PWSTR szCommandLine);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchInfoA(PSTR szPatch, PSTR szAttribute, uint8* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchInfoW(PWSTR szPatch, PWSTR szAttribute, char16* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumPatchesA(PSTR szProduct, uint32 iPatchIndex, PSTR lpPatchBuf, uint8* lpTransformsBuf, uint32* pcchTransformsBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumPatchesW(PWSTR szProduct, uint32 iPatchIndex, PWSTR lpPatchBuf, char16* lpTransformsBuf, uint32* pcchTransformsBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRemovePatchesA(PSTR szPatchList, PSTR szProductCode, INSTALLTYPE eUninstallType, PSTR szPropertyList);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRemovePatchesW(PWSTR szPatchList, PWSTR szProductCode, INSTALLTYPE eUninstallType, PWSTR szPropertyList);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiExtractPatchXMLDataA(PSTR szPatchPath, uint32 dwReserved, uint8* szXMLData, uint32* pcchXMLData);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiExtractPatchXMLDataW(PWSTR szPatchPath, uint32 dwReserved, char16* szXMLData, uint32* pcchXMLData);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchInfoExA(PSTR szPatchCode, PSTR szProductCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, PSTR szProperty, uint8* lpValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchInfoExW(PWSTR szPatchCode, PWSTR szProductCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, PWSTR szProperty, char16* lpValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiApplyMultiplePatchesA(PSTR szPatchPackages, PSTR szProductCode, PSTR szPropertiesList);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiApplyMultiplePatchesW(PWSTR szPatchPackages, PWSTR szProductCode, PWSTR szPropertiesList);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDeterminePatchSequenceA(PSTR szProductCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 cPatchInfo, MSIPATCHSEQUENCEINFOA* pPatchInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDeterminePatchSequenceW(PWSTR szProductCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 cPatchInfo, MSIPATCHSEQUENCEINFOW* pPatchInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDetermineApplicablePatchesA(PSTR szProductPackagePath, uint32 cPatchInfo, MSIPATCHSEQUENCEINFOA* pPatchInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDetermineApplicablePatchesW(PWSTR szProductPackagePath, uint32 cPatchInfo, MSIPATCHSEQUENCEINFOW* pPatchInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumPatchesExA(PSTR szProductCode, PSTR szUserSid, uint32 dwContext, uint32 dwFilter, uint32 dwIndex, PSTR szPatchCode, PSTR szTargetProductCode, MSIINSTALLCONTEXT* pdwTargetProductContext, uint8* szTargetUserSid, uint32* pcchTargetUserSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumPatchesExW(PWSTR szProductCode, PWSTR szUserSid, uint32 dwContext, uint32 dwFilter, uint32 dwIndex, PWSTR szPatchCode, PWSTR szTargetProductCode, MSIINSTALLCONTEXT* pdwTargetProductContext, char16* szTargetUserSid, uint32* pcchTargetUserSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiQueryFeatureStateA(PSTR szProduct, PSTR szFeature);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiQueryFeatureStateW(PWSTR szProduct, PWSTR szFeature);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiQueryFeatureStateExA(PSTR szProductCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, PSTR szFeature, INSTALLSTATE* pdwState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiQueryFeatureStateExW(PWSTR szProductCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, PWSTR szFeature, INSTALLSTATE* pdwState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiUseFeatureA(PSTR szProduct, PSTR szFeature);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiUseFeatureW(PWSTR szProduct, PWSTR szFeature);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiUseFeatureExA(PSTR szProduct, PSTR szFeature, uint32 dwInstallMode, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiUseFeatureExW(PWSTR szProduct, PWSTR szFeature, uint32 dwInstallMode, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureUsageA(PSTR szProduct, PSTR szFeature, uint32* pdwUseCount, uint16* pwDateUsed);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureUsageW(PWSTR szProduct, PWSTR szFeature, uint32* pdwUseCount, uint16* pwDateUsed);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureFeatureA(PSTR szProduct, PSTR szFeature, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiConfigureFeatureW(PWSTR szProduct, PWSTR szFeature, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiReinstallFeatureA(PSTR szProduct, PSTR szFeature, REINSTALLMODE dwReinstallMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiReinstallFeatureW(PWSTR szProduct, PWSTR szFeature, REINSTALLMODE dwReinstallMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideComponentA(PSTR szProduct, PSTR szFeature, PSTR szComponent, INSTALLMODE dwInstallMode, uint8* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideComponentW(PWSTR szProduct, PWSTR szFeature, PWSTR szComponent, INSTALLMODE dwInstallMode, char16* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideQualifiedComponentA(PSTR szCategory, PSTR szQualifier, INSTALLMODE dwInstallMode, uint8* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideQualifiedComponentW(PWSTR szCategory, PWSTR szQualifier, INSTALLMODE dwInstallMode, char16* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideQualifiedComponentExA(PSTR szCategory, PSTR szQualifier, INSTALLMODE dwInstallMode, PSTR szProduct, uint32 dwUnused1, uint32 dwUnused2, uint8* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideQualifiedComponentExW(PWSTR szCategory, PWSTR szQualifier, INSTALLMODE dwInstallMode, PWSTR szProduct, uint32 dwUnused1, uint32 dwUnused2, char16* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiGetComponentPathA(PSTR szProduct, PSTR szComponent, uint8* lpPathBuf, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiGetComponentPathW(PWSTR szProduct, PWSTR szComponent, char16* lpPathBuf, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiGetComponentPathExA(PSTR szProductCode, PSTR szComponentCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint8* lpOutPathBuffer, uint32* pcchOutPathBuffer);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiGetComponentPathExW(PWSTR szProductCode, PWSTR szComponentCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, char16* lpOutPathBuffer, uint32* pcchOutPathBuffer);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideAssemblyA(PSTR szAssemblyName, PSTR szAppContext, INSTALLMODE dwInstallMode, MSIASSEMBLYINFO dwAssemblyInfo, uint8* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiProvideAssemblyW(PWSTR szAssemblyName, PWSTR szAppContext, INSTALLMODE dwInstallMode, MSIASSEMBLYINFO dwAssemblyInfo, char16* lpPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiQueryComponentStateA(PSTR szProductCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, PSTR szComponentCode, INSTALLSTATE* pdwState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiQueryComponentStateW(PWSTR szProductCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, PWSTR szComponentCode, INSTALLSTATE* pdwState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumProductsA(uint32 iProductIndex, PSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumProductsW(uint32 iProductIndex, PWSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumProductsExA(PSTR szProductCode, PSTR szUserSid, uint32 dwContext, uint32 dwIndex, PSTR szInstalledProductCode, MSIINSTALLCONTEXT* pdwInstalledContext, uint8* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumProductsExW(PWSTR szProductCode, PWSTR szUserSid, uint32 dwContext, uint32 dwIndex, PWSTR szInstalledProductCode, MSIINSTALLCONTEXT* pdwInstalledContext, char16* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumRelatedProductsA(PSTR lpUpgradeCode, uint32 dwReserved, uint32 iProductIndex, PSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumRelatedProductsW(PWSTR lpUpgradeCode, uint32 dwReserved, uint32 iProductIndex, PWSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumFeaturesA(PSTR szProduct, uint32 iFeatureIndex, PSTR lpFeatureBuf, PSTR lpParentBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumFeaturesW(PWSTR szProduct, uint32 iFeatureIndex, PWSTR lpFeatureBuf, PWSTR lpParentBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentsA(uint32 iComponentIndex, PSTR lpComponentBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentsW(uint32 iComponentIndex, PWSTR lpComponentBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentsExA(PSTR szUserSid, uint32 dwContext, uint32 dwIndex, PSTR szInstalledComponentCode, MSIINSTALLCONTEXT* pdwInstalledContext, uint8* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentsExW(PWSTR szUserSid, uint32 dwContext, uint32 dwIndex, PWSTR szInstalledComponentCode, MSIINSTALLCONTEXT* pdwInstalledContext, char16* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumClientsA(PSTR szComponent, uint32 iProductIndex, PSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumClientsW(PWSTR szComponent, uint32 iProductIndex, PWSTR lpProductBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumClientsExA(PSTR szComponent, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwProductIndex, PSTR szProductBuf, MSIINSTALLCONTEXT* pdwInstalledContext, uint8* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumClientsExW(PWSTR szComponent, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwProductIndex, PWSTR szProductBuf, MSIINSTALLCONTEXT* pdwInstalledContext, char16* szSid, uint32* pcchSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentQualifiersA(PSTR szComponent, uint32 iIndex, uint8* lpQualifierBuf, uint32* pcchQualifierBuf, uint8* lpApplicationDataBuf, uint32* pcchApplicationDataBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentQualifiersW(PWSTR szComponent, uint32 iIndex, char16* lpQualifierBuf, uint32* pcchQualifierBuf, char16* lpApplicationDataBuf, uint32* pcchApplicationDataBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenProductA(PSTR szProduct, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenProductW(PWSTR szProduct, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenPackageA(PSTR szPackagePath, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenPackageW(PWSTR szPackagePath, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenPackageExA(PSTR szPackagePath, uint32 dwOptions, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenPackageExW(PWSTR szPackagePath, uint32 dwOptions, MSIHANDLE* hProduct);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchFileListA(PSTR szProductCode, PSTR szPatchPackages, uint32* pcFiles, MSIHANDLE** pphFileRecords);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPatchFileListW(PWSTR szProductCode, PWSTR szPatchPackages, uint32* pcFiles, MSIHANDLE** pphFileRecords);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductPropertyA(MSIHANDLE hProduct, PSTR szProperty, uint8* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetProductPropertyW(MSIHANDLE hProduct, PWSTR szProperty, char16* lpValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiVerifyPackageA(PSTR szPackagePath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiVerifyPackageW(PWSTR szPackagePath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureInfoA(MSIHANDLE hProduct, PSTR szFeature, uint32* lpAttributes, uint8* lpTitleBuf, uint32* pcchTitleBuf, uint8* lpHelpBuf, uint32* pcchHelpBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureInfoW(MSIHANDLE hProduct, PWSTR szFeature, uint32* lpAttributes, char16* lpTitleBuf, uint32* pcchTitleBuf, char16* lpHelpBuf, uint32* pcchHelpBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallMissingComponentA(PSTR szProduct, PSTR szComponent, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallMissingComponentW(PWSTR szProduct, PWSTR szComponent, INSTALLSTATE eInstallState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallMissingFileA(PSTR szProduct, PSTR szFile);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiInstallMissingFileW(PWSTR szProduct, PWSTR szFile);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiLocateComponentA(PSTR szComponent, uint8* lpPathBuf, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INSTALLSTATE MsiLocateComponentW(PWSTR szComponent, char16* lpPathBuf, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearAllA(PSTR szProduct, PSTR szUserName, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearAllW(PWSTR szProduct, PWSTR szUserName, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddSourceA(PSTR szProduct, PSTR szUserName, uint32 dwReserved, PSTR szSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddSourceW(PWSTR szProduct, PWSTR szUserName, uint32 dwReserved, PWSTR szSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListForceResolutionA(PSTR szProduct, PSTR szUserName, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListForceResolutionW(PWSTR szProduct, PWSTR szUserName, uint32 dwReserved);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddSourceExA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PSTR szSource, uint32 dwIndex);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddSourceExW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PWSTR szSource, uint32 dwIndex);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddMediaDiskA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwDiskId, PSTR szVolumeLabel, PSTR szDiskPrompt);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListAddMediaDiskW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwDiskId, PWSTR szVolumeLabel, PWSTR szDiskPrompt);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearSourceA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PSTR szSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearSourceW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PWSTR szSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearMediaDiskA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwDiskId);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearMediaDiskW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwDiskId);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearAllExA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListClearAllExW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListForceResolutionExA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListForceResolutionExW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListSetInfoA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PSTR szProperty, PSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListSetInfoW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PWSTR szProperty, PWSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListGetInfoA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PSTR szProperty, uint8* szValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListGetInfoW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, PWSTR szProperty, char16* szValue, uint32* pcchValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListEnumSourcesA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwIndex, uint8* szSource, uint32* pcchSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListEnumSourcesW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwIndex, char16* szSource, uint32* pcchSource);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListEnumMediaDisksA(PSTR szProductCodeOrPatchCode, PSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwIndex, uint32* pdwDiskId, uint8* szVolumeLabel, uint32* pcchVolumeLabel, uint8* szDiskPrompt, uint32* pcchDiskPrompt);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSourceListEnumMediaDisksW(PWSTR szProductCodeOrPatchCode, PWSTR szUserSid, MSIINSTALLCONTEXT dwContext, uint32 dwOptions, uint32 dwIndex, uint32* pdwDiskId, char16* szVolumeLabel, uint32* pcchVolumeLabel, char16* szDiskPrompt, uint32* pcchDiskPrompt);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFileVersionA(PSTR szFilePath, uint8* lpVersionBuf, uint32* pcchVersionBuf, uint8* lpLangBuf, uint32* pcchLangBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFileVersionW(PWSTR szFilePath, char16* lpVersionBuf, uint32* pcchVersionBuf, char16* lpLangBuf, uint32* pcchLangBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFileHashA(PSTR szFilePath, uint32 dwOptions, MSIFILEHASHINFO* pHash);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFileHashW(PWSTR szFilePath, uint32 dwOptions, MSIFILEHASHINFO* pHash);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MsiGetFileSignatureInformationA(PSTR szSignedObjectPath, uint32 dwFlags, CERT_CONTEXT** ppcCertContext, uint8* pbHashData, uint32* pcbHashData);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MsiGetFileSignatureInformationW(PWSTR szSignedObjectPath, uint32 dwFlags, CERT_CONTEXT** ppcCertContext, uint8* pbHashData, uint32* pcbHashData);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetShortcutTargetA(PSTR szShortcutPath, PSTR szProductCode, PSTR szFeatureId, PSTR szComponentCode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetShortcutTargetW(PWSTR szShortcutPath, PWSTR szProductCode, PWSTR szFeatureId, PWSTR szComponentCode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiIsProductElevatedA(PSTR szProduct, BOOL* pfElevated);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiIsProductElevatedW(PWSTR szProduct, BOOL* pfElevated);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiNotifySidChangeA(PSTR pOldSid, PSTR pNewSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiNotifySidChangeW(PWSTR pOldSid, PWSTR pNewSid);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiBeginTransactionA(PSTR szName, uint32 dwTransactionAttributes, MSIHANDLE* phTransactionHandle, HANDLE* phChangeOfOwnerEvent);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiBeginTransactionW(PWSTR szName, uint32 dwTransactionAttributes, MSIHANDLE* phTransactionHandle, HANDLE* phChangeOfOwnerEvent);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEndTransaction(MSITRANSACTIONSTATE dwTransactionState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiJoinTransaction(MSIHANDLE hTransactionHandle, uint32 dwTransactionAttributes, HANDLE* phChangeOfOwnerEvent);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseOpenViewA(MSIHANDLE hDatabase, PSTR szQuery, MSIHANDLE* phView);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseOpenViewW(MSIHANDLE hDatabase, PWSTR szQuery, MSIHANDLE* phView);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIDBERROR MsiViewGetErrorA(MSIHANDLE hView, uint8* szColumnNameBuffer, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIDBERROR MsiViewGetErrorW(MSIHANDLE hView, char16* szColumnNameBuffer, uint32* pcchBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiViewExecute(MSIHANDLE hView, MSIHANDLE hRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiViewFetch(MSIHANDLE hView, MSIHANDLE* phRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiViewModify(MSIHANDLE hView, MSIMODIFY eModifyMode, MSIHANDLE hRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiViewGetColumnInfo(MSIHANDLE hView, MSICOLINFO eColumnInfo, MSIHANDLE* phRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiViewClose(MSIHANDLE hView);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseGetPrimaryKeysA(MSIHANDLE hDatabase, PSTR szTableName, MSIHANDLE* phRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseGetPrimaryKeysW(MSIHANDLE hDatabase, PWSTR szTableName, MSIHANDLE* phRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSICONDITION MsiDatabaseIsTablePersistentA(MSIHANDLE hDatabase, PSTR szTableName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSICONDITION MsiDatabaseIsTablePersistentW(MSIHANDLE hDatabase, PWSTR szTableName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetSummaryInformationA(MSIHANDLE hDatabase, PSTR szDatabasePath, uint32 uiUpdateCount, MSIHANDLE* phSummaryInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetSummaryInformationW(MSIHANDLE hDatabase, PWSTR szDatabasePath, uint32 uiUpdateCount, MSIHANDLE* phSummaryInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoGetPropertyCount(MSIHANDLE hSummaryInfo, uint32* puiPropertyCount);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoSetPropertyA(MSIHANDLE hSummaryInfo, uint32 uiProperty, uint32 uiDataType, int32 iValue, FILETIME* pftValue, PSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoSetPropertyW(MSIHANDLE hSummaryInfo, uint32 uiProperty, uint32 uiDataType, int32 iValue, FILETIME* pftValue, PWSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoGetPropertyA(MSIHANDLE hSummaryInfo, uint32 uiProperty, uint32* puiDataType, int32* piValue, FILETIME* pftValue, uint8* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoGetPropertyW(MSIHANDLE hSummaryInfo, uint32 uiProperty, uint32* puiDataType, int32* piValue, FILETIME* pftValue, char16* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSummaryInfoPersist(MSIHANDLE hSummaryInfo);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenDatabaseA(PSTR szDatabasePath, PSTR szPersist, MSIHANDLE* phDatabase);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiOpenDatabaseW(PWSTR szDatabasePath, PWSTR szPersist, MSIHANDLE* phDatabase);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseImportA(MSIHANDLE hDatabase, PSTR szFolderPath, PSTR szFileName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseImportW(MSIHANDLE hDatabase, PWSTR szFolderPath, PWSTR szFileName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseExportA(MSIHANDLE hDatabase, PSTR szTableName, PSTR szFolderPath, PSTR szFileName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseExportW(MSIHANDLE hDatabase, PWSTR szTableName, PWSTR szFolderPath, PWSTR szFileName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseMergeA(MSIHANDLE hDatabase, MSIHANDLE hDatabaseMerge, PSTR szTableName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseMergeW(MSIHANDLE hDatabase, MSIHANDLE hDatabaseMerge, PWSTR szTableName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseGenerateTransformA(MSIHANDLE hDatabase, MSIHANDLE hDatabaseReference, PSTR szTransformFile, int32 iReserved1, int32 iReserved2);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseGenerateTransformW(MSIHANDLE hDatabase, MSIHANDLE hDatabaseReference, PWSTR szTransformFile, int32 iReserved1, int32 iReserved2);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseApplyTransformA(MSIHANDLE hDatabase, PSTR szTransformFile, MSITRANSFORM_ERROR iErrorConditions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseApplyTransformW(MSIHANDLE hDatabase, PWSTR szTransformFile, MSITRANSFORM_ERROR iErrorConditions);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCreateTransformSummaryInfoA(MSIHANDLE hDatabase, MSIHANDLE hDatabaseReference, PSTR szTransformFile, MSITRANSFORM_ERROR iErrorConditions, MSITRANSFORM_VALIDATE iValidation);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiCreateTransformSummaryInfoW(MSIHANDLE hDatabase, MSIHANDLE hDatabaseReference, PWSTR szTransformFile, MSITRANSFORM_ERROR iErrorConditions, MSITRANSFORM_VALIDATE iValidation);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDatabaseCommit(MSIHANDLE hDatabase);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIDBSTATE MsiGetDatabaseState(MSIHANDLE hDatabase);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIHANDLE MsiCreateRecord(uint32 cParams);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MsiRecordIsNull(MSIHANDLE hRecord, uint32 iField);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordDataSize(MSIHANDLE hRecord, uint32 iField);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordSetInteger(MSIHANDLE hRecord, uint32 iField, int32 iValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordSetStringA(MSIHANDLE hRecord, uint32 iField, PSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordSetStringW(MSIHANDLE hRecord, uint32 iField, PWSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MsiRecordGetInteger(MSIHANDLE hRecord, uint32 iField);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordGetStringA(MSIHANDLE hRecord, uint32 iField, uint8* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordGetStringW(MSIHANDLE hRecord, uint32 iField, char16* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordGetFieldCount(MSIHANDLE hRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordSetStreamA(MSIHANDLE hRecord, uint32 iField, PSTR szFilePath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordSetStreamW(MSIHANDLE hRecord, uint32 iField, PWSTR szFilePath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordReadStream(MSIHANDLE hRecord, uint32 iField, PSTR szDataBuf, uint32* pcbDataBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiRecordClearData(MSIHANDLE hRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIHANDLE MsiGetActiveDatabase(MSIHANDLE hInstall);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetPropertyA(MSIHANDLE hInstall, PSTR szName, PSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetPropertyW(MSIHANDLE hInstall, PWSTR szName, PWSTR szValue);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPropertyA(MSIHANDLE hInstall, PSTR szName, uint8* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetPropertyW(MSIHANDLE hInstall, PWSTR szName, char16* szValueBuf, uint32* pcchValueBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 MsiGetLanguage(MSIHANDLE hInstall);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MsiGetMode(MSIHANDLE hInstall, MSIRUNMODE eRunMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetMode(MSIHANDLE hInstall, MSIRUNMODE eRunMode, BOOL fState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiFormatRecordA(MSIHANDLE hInstall, MSIHANDLE hRecord, uint8* szResultBuf, uint32* pcchResultBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiFormatRecordW(MSIHANDLE hInstall, MSIHANDLE hRecord, char16* szResultBuf, uint32* pcchResultBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDoActionA(MSIHANDLE hInstall, PSTR szAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiDoActionW(MSIHANDLE hInstall, PWSTR szAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSequenceA(MSIHANDLE hInstall, PSTR szTable, int32 iSequenceMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSequenceW(MSIHANDLE hInstall, PWSTR szTable, int32 iSequenceMode);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MsiProcessMessage(MSIHANDLE hInstall, INSTALLMESSAGE eMessageType, MSIHANDLE hRecord);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSICONDITION MsiEvaluateConditionA(MSIHANDLE hInstall, PSTR szCondition);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSICONDITION MsiEvaluateConditionW(MSIHANDLE hInstall, PWSTR szCondition);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureStateA(MSIHANDLE hInstall, PSTR szFeature, INSTALLSTATE* piInstalled, INSTALLSTATE* piAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureStateW(MSIHANDLE hInstall, PWSTR szFeature, INSTALLSTATE* piInstalled, INSTALLSTATE* piAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetFeatureStateA(MSIHANDLE hInstall, PSTR szFeature, INSTALLSTATE iState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetFeatureStateW(MSIHANDLE hInstall, PWSTR szFeature, INSTALLSTATE iState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetFeatureAttributesA(MSIHANDLE hInstall, PSTR szFeature, uint32 dwAttributes);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetFeatureAttributesW(MSIHANDLE hInstall, PWSTR szFeature, uint32 dwAttributes);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetComponentStateA(MSIHANDLE hInstall, PSTR szComponent, INSTALLSTATE* piInstalled, INSTALLSTATE* piAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetComponentStateW(MSIHANDLE hInstall, PWSTR szComponent, INSTALLSTATE* piInstalled, INSTALLSTATE* piAction);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetComponentStateA(MSIHANDLE hInstall, PSTR szComponent, INSTALLSTATE iState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetComponentStateW(MSIHANDLE hInstall, PWSTR szComponent, INSTALLSTATE iState);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureCostA(MSIHANDLE hInstall, PSTR szFeature, MSICOSTTREE iCostTree, INSTALLSTATE iState, int32* piCost);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureCostW(MSIHANDLE hInstall, PWSTR szFeature, MSICOSTTREE iCostTree, INSTALLSTATE iState, int32* piCost);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentCostsA(MSIHANDLE hInstall, PSTR szComponent, uint32 dwIndex, INSTALLSTATE iState, uint8* szDriveBuf, uint32* pcchDriveBuf, int32* piCost, int32* piTempCost);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnumComponentCostsW(MSIHANDLE hInstall, PWSTR szComponent, uint32 dwIndex, INSTALLSTATE iState, char16* szDriveBuf, uint32* pcchDriveBuf, int32* piCost, int32* piTempCost);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetInstallLevel(MSIHANDLE hInstall, int32 iInstallLevel);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureValidStatesA(MSIHANDLE hInstall, PSTR szFeature, uint32* lpInstallStates);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetFeatureValidStatesW(MSIHANDLE hInstall, PWSTR szFeature, uint32* lpInstallStates);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetSourcePathA(MSIHANDLE hInstall, PSTR szFolder, uint8* szPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetSourcePathW(MSIHANDLE hInstall, PWSTR szFolder, char16* szPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetTargetPathA(MSIHANDLE hInstall, PSTR szFolder, uint8* szPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiGetTargetPathW(MSIHANDLE hInstall, PWSTR szFolder, char16* szPathBuf, uint32* pcchPathBuf);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetTargetPathA(MSIHANDLE hInstall, PSTR szFolder, PSTR szFolderPath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiSetTargetPathW(MSIHANDLE hInstall, PWSTR szFolder, PWSTR szFolderPath);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiVerifyDiskSpace(MSIHANDLE hInstall);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiEnableUIPreview(MSIHANDLE hDatabase, MSIHANDLE* phPreview);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiPreviewDialogA(MSIHANDLE hPreview, PSTR szDialogName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiPreviewDialogW(MSIHANDLE hPreview, PWSTR szDialogName);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiPreviewBillboardA(MSIHANDLE hPreview, PSTR szControlName, PSTR szBillboard);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MsiPreviewBillboardW(MSIHANDLE hPreview, PWSTR szControlName, PWSTR szBillboard);
		[Import("msi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern MSIHANDLE MsiGetLastErrorRecord();
		[Import("sfc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SfcGetNextProtectedFile(HANDLE RpcHandle, PROTECTED_FILE_DATA* ProtFileData);
		[Import("sfc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SfcIsFileProtected(HANDLE RpcHandle, PWSTR ProtFileName);
		[Import("sfc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SfcIsKeyProtected(HKEY KeyHandle, PWSTR SubKeyName, uint32 KeySam);
		[Import("sfc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SfpVerifyFile(PSTR pszFileName, uint8* pszError, uint32 dwErrSize);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileA(PSTR OldFileName, PSTR NewFileName, PSTR PatchFileName, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileW(PWSTR OldFileName, PWSTR NewFileName, PWSTR PatchFileName, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileByHandles(HANDLE OldFileHandle, HANDLE NewFileHandle, HANDLE PatchFileHandle, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileExA(uint32 OldFileCount, PATCH_OLD_FILE_INFO_A* OldFileInfoArray, PSTR NewFileName, PSTR PatchFileName, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileExW(uint32 OldFileCount, PATCH_OLD_FILE_INFO_W* OldFileInfoArray, PWSTR NewFileName, PWSTR PatchFileName, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreatePatchFileByHandlesEx(uint32 OldFileCount, PATCH_OLD_FILE_INFO_H* OldFileInfoArray, HANDLE NewFileHandle, HANDLE PatchFileHandle, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtractPatchHeaderToFileA(PSTR PatchFileName, PSTR PatchHeaderFileName);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtractPatchHeaderToFileW(PWSTR PatchFileName, PWSTR PatchHeaderFileName);
		[Import("mspatchc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ExtractPatchHeaderToFileByHandles(HANDLE PatchFileHandle, HANDLE PatchHeaderFileHandle);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TestApplyPatchToFileA(PSTR PatchFileName, PSTR OldFileName, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TestApplyPatchToFileW(PWSTR PatchFileName, PWSTR OldFileName, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TestApplyPatchToFileByHandles(HANDLE PatchFileHandle, HANDLE OldFileHandle, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TestApplyPatchToFileByBuffers(uint8* PatchFileBuffer, uint32 PatchFileSize, uint8* OldFileBuffer, uint32 OldFileSize, uint32* NewFileSize, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileA(PSTR PatchFileName, PSTR OldFileName, PSTR NewFileName, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileW(PWSTR PatchFileName, PWSTR OldFileName, PWSTR NewFileName, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileByHandles(HANDLE PatchFileHandle, HANDLE OldFileHandle, HANDLE NewFileHandle, uint32 ApplyOptionFlags);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileExA(PSTR PatchFileName, PSTR OldFileName, PSTR NewFileName, uint32 ApplyOptionFlags, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileExW(PWSTR PatchFileName, PWSTR OldFileName, PWSTR NewFileName, uint32 ApplyOptionFlags, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileByHandlesEx(HANDLE PatchFileHandle, HANDLE OldFileHandle, HANDLE NewFileHandle, uint32 ApplyOptionFlags, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyPatchToFileByBuffers(uint8* PatchFileMapped, uint32 PatchFileSize, uint8* OldFileMapped, uint32 OldFileSize, uint8** NewFileBuffer, uint32 NewFileBufferSize, uint32* NewFileActualSize, FILETIME* NewFileTime, uint32 ApplyOptionFlags, PPATCH_PROGRESS_CALLBACK ProgressCallback, void* CallbackContext);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFilePatchSignatureA(PSTR FileName, uint32 OptionFlags, void* OptionData, uint32 IgnoreRangeCount, PATCH_IGNORE_RANGE* IgnoreRangeArray, uint32 RetainRangeCount, PATCH_RETAIN_RANGE* RetainRangeArray, uint32 SignatureBufferSize, PSTR SignatureBuffer);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFilePatchSignatureW(PWSTR FileName, uint32 OptionFlags, void* OptionData, uint32 IgnoreRangeCount, PATCH_IGNORE_RANGE* IgnoreRangeArray, uint32 RetainRangeCount, PATCH_RETAIN_RANGE* RetainRangeArray, uint32 SignatureBufferSize, PWSTR SignatureBuffer);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFilePatchSignatureByHandle(HANDLE FileHandle, uint32 OptionFlags, void* OptionData, uint32 IgnoreRangeCount, PATCH_IGNORE_RANGE* IgnoreRangeArray, uint32 RetainRangeCount, PATCH_RETAIN_RANGE* RetainRangeArray, uint32 SignatureBufferSize, PSTR SignatureBuffer);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFilePatchSignatureByBuffer(uint8* FileBufferWritable, uint32 FileSize, uint32 OptionFlags, void* OptionData, uint32 IgnoreRangeCount, PATCH_IGNORE_RANGE* IgnoreRangeArray, uint32 RetainRangeCount, PATCH_RETAIN_RANGE* RetainRangeArray, uint32 SignatureBufferSize, PSTR SignatureBuffer);
		[Import("mspatcha.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 NormalizeFileForPatchSignature(void* FileBuffer, uint32 FileSize, uint32 OptionFlags, PATCH_OPTION_DATA* OptionData, uint32 NewFileCoffBase, uint32 NewFileCoffTime, uint32 IgnoreRangeCount, PATCH_IGNORE_RANGE* IgnoreRangeArray, uint32 RetainRangeCount, PATCH_RETAIN_RANGE* RetainRangeArray);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaInfoB(DELTA_INPUT Delta, DELTA_HEADER_INFO* lpHeaderInfo);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaInfoA(PSTR lpDeltaName, DELTA_HEADER_INFO* lpHeaderInfo);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaInfoW(PWSTR lpDeltaName, DELTA_HEADER_INFO* lpHeaderInfo);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyDeltaGetReverseB(int64 ApplyFlags, DELTA_INPUT Source, DELTA_INPUT Delta, FILETIME* lpReverseFileTime, DELTA_OUTPUT* lpTarget, DELTA_OUTPUT* lpTargetReverse);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyDeltaB(int64 ApplyFlags, DELTA_INPUT Source, DELTA_INPUT Delta, DELTA_OUTPUT* lpTarget);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyDeltaProvidedB(int64 ApplyFlags, DELTA_INPUT Source, DELTA_INPUT Delta, void* lpTarget, uint uTargetSize);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyDeltaA(int64 ApplyFlags, PSTR lpSourceName, PSTR lpDeltaName, PSTR lpTargetName);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ApplyDeltaW(int64 ApplyFlags, PWSTR lpSourceName, PWSTR lpDeltaName, PWSTR lpTargetName);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDeltaB(int64 FileTypeSet, int64 SetFlags, int64 ResetFlags, DELTA_INPUT Source, DELTA_INPUT Target, DELTA_INPUT SourceOptions, DELTA_INPUT TargetOptions, DELTA_INPUT GlobalOptions, FILETIME* lpTargetFileTime, uint32 HashAlgId, DELTA_OUTPUT* lpDelta);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDeltaA(int64 FileTypeSet, int64 SetFlags, int64 ResetFlags, PSTR lpSourceName, PSTR lpTargetName, PSTR lpSourceOptionsName, PSTR lpTargetOptionsName, DELTA_INPUT GlobalOptions, FILETIME* lpTargetFileTime, uint32 HashAlgId, PSTR lpDeltaName);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDeltaW(int64 FileTypeSet, int64 SetFlags, int64 ResetFlags, PWSTR lpSourceName, PWSTR lpTargetName, PWSTR lpSourceOptionsName, PWSTR lpTargetOptionsName, DELTA_INPUT GlobalOptions, FILETIME* lpTargetFileTime, uint32 HashAlgId, PWSTR lpDeltaName);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaSignatureB(int64 FileTypeSet, uint32 HashAlgId, DELTA_INPUT Source, DELTA_HASH* lpHash);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaSignatureA(int64 FileTypeSet, uint32 HashAlgId, PSTR lpSourceName, DELTA_HASH* lpHash);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeltaSignatureW(int64 FileTypeSet, uint32 HashAlgId, PWSTR lpSourceName, DELTA_HASH* lpHash);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeltaNormalizeProvidedB(int64 FileTypeSet, int64 NormalizeFlags, DELTA_INPUT NormalizeOptions, void* lpSource, uint uSourceSize);
		[Import("msdelta.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeltaFree(void* lpMemory);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateActCtxA(ACTCTXA* pActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateActCtxW(ACTCTXW* pActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void AddRefActCtx(HANDLE hActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseActCtx(HANDLE hActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ZombifyActCtx(HANDLE hActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ActivateActCtx(HANDLE hActCtx, uint* lpCookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeactivateActCtx(uint32 dwFlags, uint ulCookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCurrentActCtx(HANDLE* lphActCtx);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindActCtxSectionStringA(uint32 dwFlags, Guid* lpExtensionGuid, uint32 ulSectionId, PSTR lpStringToFind, ACTCTX_SECTION_KEYED_DATA* ReturnedData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindActCtxSectionStringW(uint32 dwFlags, Guid* lpExtensionGuid, uint32 ulSectionId, PWSTR lpStringToFind, ACTCTX_SECTION_KEYED_DATA* ReturnedData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindActCtxSectionGuid(uint32 dwFlags, Guid* lpExtensionGuid, uint32 ulSectionId, Guid* lpGuidToFind, ACTCTX_SECTION_KEYED_DATA* ReturnedData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryActCtxW(uint32 dwFlags, HANDLE hActCtx, void* pvSubInstance, uint32 ulInfoClass, void* pvBuffer, uint cbBuffer, uint* pcbWrittenOrRequired);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryActCtxSettingsW(uint32 dwFlags, HANDLE hActCtx, PWSTR settingsNameSpace, PWSTR settingName, PWSTR pvBuffer, uint dwBuffer, uint* pdwWrittenOrRequired);
		
	}
}
