using System;

// namespace System.Com
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MARSHALINTERFACE_MIN = 500;
		public const int32 ASYNC_MODE_COMPATIBILITY = 1;
		public const int32 ASYNC_MODE_DEFAULT = 0;
		public const int32 STGTY_REPEAT = 256;
		public const int32 STG_TOEND = -1;
		public const int32 STG_LAYOUT_SEQUENTIAL = 0;
		public const int32 STG_LAYOUT_INTERLEAVED = 1;
		public const uint32 COM_RIGHTS_EXECUTE = 1;
		public const uint32 COM_RIGHTS_EXECUTE_LOCAL = 2;
		public const uint32 COM_RIGHTS_EXECUTE_REMOTE = 4;
		public const uint32 COM_RIGHTS_ACTIVATE_LOCAL = 8;
		public const uint32 COM_RIGHTS_ACTIVATE_REMOTE = 16;
		public const uint32 COM_RIGHTS_RESERVED1 = 32;
		public const uint32 COM_RIGHTS_RESERVED2 = 64;
		public const uint32 CWMO_MAX_HANDLES = 56;
		public const uint32 ROTREGFLAGS_ALLOWANYCLIENT = 1;
		public const uint32 APPIDREGFLAGS_ACTIVATE_IUSERVER_INDESKTOP = 1;
		public const uint32 APPIDREGFLAGS_SECURE_SERVER_PROCESS_SD_AND_BIND = 2;
		public const uint32 APPIDREGFLAGS_ISSUE_ACTIVATION_RPC_AT_IDENTIFY = 4;
		public const uint32 APPIDREGFLAGS_IUSERVER_UNMODIFIED_LOGON_TOKEN = 8;
		public const uint32 APPIDREGFLAGS_IUSERVER_SELF_SID_IN_LAUNCH_PERMISSION = 16;
		public const uint32 APPIDREGFLAGS_IUSERVER_ACTIVATE_IN_CLIENT_SESSION_ONLY = 32;
		public const uint32 APPIDREGFLAGS_RESERVED1 = 64;
		public const uint32 APPIDREGFLAGS_RESERVED2 = 128;
		public const uint32 APPIDREGFLAGS_RESERVED3 = 256;
		public const uint32 APPIDREGFLAGS_RESERVED4 = 512;
		public const uint32 APPIDREGFLAGS_RESERVED5 = 1024;
		public const uint32 APPIDREGFLAGS_AAA_NO_IMPLICIT_ACTIVATE_AS_IU = 2048;
		public const uint32 APPIDREGFLAGS_RESERVED7 = 4096;
		public const uint32 APPIDREGFLAGS_RESERVED8 = 8192;
		public const uint32 APPIDREGFLAGS_RESERVED9 = 16384;
		public const uint32 DCOMSCM_ACTIVATION_USE_ALL_AUTHNSERVICES = 1;
		public const uint32 DCOMSCM_ACTIVATION_DISALLOW_UNSECURE_CALL = 2;
		public const uint32 DCOMSCM_RESOLVE_USE_ALL_AUTHNSERVICES = 4;
		public const uint32 DCOMSCM_RESOLVE_DISALLOW_UNSECURE_CALL = 8;
		public const uint32 DCOMSCM_PING_USE_MID_AUTHNSERVICE = 16;
		public const uint32 DCOMSCM_PING_DISALLOW_UNSECURE_CALL = 32;
		public const uint64 MAXLSN = 9223372036854775807uL;
		public const uint32 DMUS_ERRBASE = 4096;
		
		// --- Typedefs ---
		
		public typealias CO_MTA_USAGE_COOKIE = int;
		public typealias CO_DEVICE_CATALOG_COOKIE = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum URI_CREATE_FLAGS : uint32
		{
			Uri_CREATE_ALLOW_RELATIVE = 1,
			Uri_CREATE_ALLOW_IMPLICIT_WILDCARD_SCHEME = 2,
			Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME = 4,
			Uri_CREATE_NOFRAG = 8,
			Uri_CREATE_NO_CANONICALIZE = 16,
			Uri_CREATE_CANONICALIZE = 256,
			Uri_CREATE_FILE_USE_DOS_PATH = 32,
			Uri_CREATE_DECODE_EXTRA_INFO = 64,
			Uri_CREATE_NO_DECODE_EXTRA_INFO = 128,
			Uri_CREATE_CRACK_UNKNOWN_SCHEMES = 512,
			Uri_CREATE_NO_CRACK_UNKNOWN_SCHEMES = 1024,
			Uri_CREATE_PRE_PROCESS_HTML_URI = 2048,
			Uri_CREATE_NO_PRE_PROCESS_HTML_URI = 4096,
			Uri_CREATE_IE_SETTINGS = 8192,
			Uri_CREATE_NO_IE_SETTINGS = 16384,
			Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = 32768,
			Uri_CREATE_NORMALIZE_INTL_CHARACTERS = 65536,
			Uri_CREATE_CANONICALIZE_ABSOLUTE = 131072,
		}
		[AllowDuplicates]
		public enum RPC_C_AUTHN_LEVEL : uint32
		{
			RPC_C_AUTHN_LEVEL_DEFAULT = 0,
			RPC_C_AUTHN_LEVEL_NONE = 1,
			RPC_C_AUTHN_LEVEL_CONNECT = 2,
			RPC_C_AUTHN_LEVEL_CALL = 3,
			RPC_C_AUTHN_LEVEL_PKT = 4,
			RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = 5,
			RPC_C_AUTHN_LEVEL_PKT_PRIVACY = 6,
		}
		[AllowDuplicates]
		public enum RPC_C_IMP_LEVEL : uint32
		{
			RPC_C_IMP_LEVEL_DEFAULT = 0,
			RPC_C_IMP_LEVEL_ANONYMOUS = 1,
			RPC_C_IMP_LEVEL_IDENTIFY = 2,
			RPC_C_IMP_LEVEL_IMPERSONATE = 3,
			RPC_C_IMP_LEVEL_DELEGATE = 4,
		}
		[AllowDuplicates]
		public enum DVASPECT : int32
		{
			DVASPECT_CONTENT = 1,
			DVASPECT_THUMBNAIL = 2,
			DVASPECT_ICON = 4,
			DVASPECT_DOCPRINT = 8,
		}
		[AllowDuplicates]
		public enum TYSPEC : int32
		{
			TYSPEC_CLSID = 0,
			TYSPEC_FILEEXT = 1,
			TYSPEC_MIMETYPE = 2,
			TYSPEC_FILENAME = 3,
			TYSPEC_PROGID = 4,
			TYSPEC_PACKAGENAME = 5,
			TYSPEC_OBJECTID = 6,
		}
		[AllowDuplicates]
		public enum REGCLS : int32
		{
			REGCLS_SINGLEUSE = 0,
			REGCLS_MULTIPLEUSE = 1,
			REGCLS_MULTI_SEPARATE = 2,
			REGCLS_SUSPENDED = 4,
			REGCLS_SURROGATE = 8,
			REGCLS_AGILE = 16,
		}
		[AllowDuplicates]
		public enum COINITBASE : int32
		{
			COINITBASE_MULTITHREADED = 0,
		}
		[AllowDuplicates]
		public enum MEMCTX : int32
		{
			MEMCTX_TASK = 1,
			MEMCTX_SHARED = 2,
			MEMCTX_MACSYSTEM = 3,
			MEMCTX_UNKNOWN = -1,
			MEMCTX_SAME = -2,
		}
		[AllowDuplicates]
		public enum CLSCTX : uint32
		{
			CLSCTX_INPROC_SERVER = 1,
			CLSCTX_INPROC_HANDLER = 2,
			CLSCTX_LOCAL_SERVER = 4,
			CLSCTX_INPROC_SERVER16 = 8,
			CLSCTX_REMOTE_SERVER = 16,
			CLSCTX_INPROC_HANDLER16 = 32,
			CLSCTX_RESERVED1 = 64,
			CLSCTX_RESERVED2 = 128,
			CLSCTX_RESERVED3 = 256,
			CLSCTX_RESERVED4 = 512,
			CLSCTX_NO_CODE_DOWNLOAD = 1024,
			CLSCTX_RESERVED5 = 2048,
			CLSCTX_NO_CUSTOM_MARSHAL = 4096,
			CLSCTX_ENABLE_CODE_DOWNLOAD = 8192,
			CLSCTX_NO_FAILURE_LOG = 16384,
			CLSCTX_DISABLE_AAA = 32768,
			CLSCTX_ENABLE_AAA = 65536,
			CLSCTX_FROM_DEFAULT_CONTEXT = 131072,
			CLSCTX_ACTIVATE_X86_SERVER = 262144,
			CLSCTX_ACTIVATE_32_BIT_SERVER = 262144,
			CLSCTX_ACTIVATE_64_BIT_SERVER = 524288,
			CLSCTX_ENABLE_CLOAKING = 1048576,
			CLSCTX_APPCONTAINER = 4194304,
			CLSCTX_ACTIVATE_AAA_AS_IU = 8388608,
			CLSCTX_RESERVED6 = 16777216,
			CLSCTX_ACTIVATE_ARM32_SERVER = 33554432,
			CLSCTX_PS_DLL = 2147483648,
			CLSCTX_ALL = 23,
			CLSCTX_SERVER = 21,
		}
		[AllowDuplicates]
		public enum MSHLFLAGS : int32
		{
			MSHLFLAGS_NORMAL = 0,
			MSHLFLAGS_TABLESTRONG = 1,
			MSHLFLAGS_TABLEWEAK = 2,
			MSHLFLAGS_NOPING = 4,
			MSHLFLAGS_RESERVED1 = 8,
			MSHLFLAGS_RESERVED2 = 16,
			MSHLFLAGS_RESERVED3 = 32,
			MSHLFLAGS_RESERVED4 = 64,
		}
		[AllowDuplicates]
		public enum MSHCTX : int32
		{
			MSHCTX_LOCAL = 0,
			MSHCTX_NOSHAREDMEM = 1,
			MSHCTX_DIFFERENTMACHINE = 2,
			MSHCTX_INPROC = 3,
			MSHCTX_CROSSCTX = 4,
			MSHCTX_CONTAINER = 5,
		}
		[AllowDuplicates]
		public enum EXTCONN : int32
		{
			EXTCONN_STRONG = 1,
			EXTCONN_WEAK = 2,
			EXTCONN_CALLABLE = 4,
		}
		[AllowDuplicates]
		public enum STGTY : int32
		{
			STGTY_STORAGE = 1,
			STGTY_STREAM = 2,
			STGTY_LOCKBYTES = 3,
			STGTY_PROPERTY = 4,
		}
		[AllowDuplicates]
		public enum STREAM_SEEK : uint32
		{
			STREAM_SEEK_SET = 0,
			STREAM_SEEK_CUR = 1,
			STREAM_SEEK_END = 2,
		}
		[AllowDuplicates]
		public enum EOLE_AUTHENTICATION_CAPABILITIES : int32
		{
			EOAC_NONE = 0,
			EOAC_MUTUAL_AUTH = 1,
			EOAC_STATIC_CLOAKING = 32,
			EOAC_DYNAMIC_CLOAKING = 64,
			EOAC_ANY_AUTHORITY = 128,
			EOAC_MAKE_FULLSIC = 256,
			EOAC_DEFAULT = 2048,
			EOAC_SECURE_REFS = 2,
			EOAC_ACCESS_CONTROL = 4,
			EOAC_APPID = 8,
			EOAC_DYNAMIC = 16,
			EOAC_REQUIRE_FULLSIC = 512,
			EOAC_AUTO_IMPERSONATE = 1024,
			EOAC_DISABLE_AAA = 4096,
			EOAC_NO_CUSTOM_MARSHAL = 8192,
			EOAC_RESERVED1 = 16384,
		}
		[AllowDuplicates]
		public enum RPCOPT_PROPERTIES : int32
		{
			COMBND_RPCTIMEOUT = 1,
			COMBND_SERVER_LOCALITY = 2,
			COMBND_RESERVED1 = 4,
			COMBND_RESERVED2 = 5,
			COMBND_RESERVED3 = 8,
			COMBND_RESERVED4 = 16,
		}
		[AllowDuplicates]
		public enum RPCOPT_SERVER_LOCALITY_VALUES : int32
		{
			SERVER_LOCALITY_PROCESS_LOCAL = 0,
			SERVER_LOCALITY_MACHINE_LOCAL = 1,
			SERVER_LOCALITY_REMOTE = 2,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_PROPERTIES : int32
		{
			COMGLB_EXCEPTION_HANDLING = 1,
			COMGLB_APPID = 2,
			COMGLB_RPC_THREADPOOL_SETTING = 3,
			COMGLB_RO_SETTINGS = 4,
			COMGLB_UNMARSHALING_POLICY = 5,
			COMGLB_PROPERTIES_RESERVED1 = 6,
			COMGLB_PROPERTIES_RESERVED2 = 7,
			COMGLB_PROPERTIES_RESERVED3 = 8,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_EH_VALUES : int32
		{
			COMGLB_EXCEPTION_HANDLE = 0,
			COMGLB_EXCEPTION_DONOT_HANDLE_FATAL = 1,
			COMGLB_EXCEPTION_DONOT_HANDLE = 1,
			COMGLB_EXCEPTION_DONOT_HANDLE_ANY = 2,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_RPCTP_VALUES : int32
		{
			COMGLB_RPC_THREADPOOL_SETTING_DEFAULT_POOL = 0,
			COMGLB_RPC_THREADPOOL_SETTING_PRIVATE_POOL = 1,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_RO_FLAGS : int32
		{
			COMGLB_STA_MODALLOOP_REMOVE_TOUCH_MESSAGES = 1,
			COMGLB_STA_MODALLOOP_SHARED_QUEUE_REMOVE_INPUT_MESSAGES = 2,
			COMGLB_STA_MODALLOOP_SHARED_QUEUE_DONOT_REMOVE_INPUT_MESSAGES = 4,
			COMGLB_FAST_RUNDOWN = 8,
			COMGLB_RESERVED1 = 16,
			COMGLB_RESERVED2 = 32,
			COMGLB_RESERVED3 = 64,
			COMGLB_STA_MODALLOOP_SHARED_QUEUE_REORDER_POINTER_MESSAGES = 128,
			COMGLB_RESERVED4 = 256,
			COMGLB_RESERVED5 = 512,
			COMGLB_RESERVED6 = 1024,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_UNMARSHALING_POLICY_VALUES : int32
		{
			COMGLB_UNMARSHALING_POLICY_NORMAL = 0,
			COMGLB_UNMARSHALING_POLICY_STRONG = 1,
			COMGLB_UNMARSHALING_POLICY_HYBRID = 2,
		}
		[AllowDuplicates]
		public enum DCOM_CALL_STATE : int32
		{
			DCOM_NONE = 0,
			DCOM_CALL_COMPLETE = 1,
			DCOM_CALL_CANCELED = 2,
		}
		[AllowDuplicates]
		public enum APTTYPEQUALIFIER : int32
		{
			APTTYPEQUALIFIER_NONE = 0,
			APTTYPEQUALIFIER_IMPLICIT_MTA = 1,
			APTTYPEQUALIFIER_NA_ON_MTA = 2,
			APTTYPEQUALIFIER_NA_ON_STA = 3,
			APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA = 4,
			APTTYPEQUALIFIER_NA_ON_MAINSTA = 5,
			APTTYPEQUALIFIER_APPLICATION_STA = 6,
			APTTYPEQUALIFIER_RESERVED_1 = 7,
		}
		[AllowDuplicates]
		public enum APTTYPE : int32
		{
			APTTYPE_CURRENT = -1,
			APTTYPE_STA = 0,
			APTTYPE_MTA = 1,
			APTTYPE_NA = 2,
			APTTYPE_MAINSTA = 3,
		}
		[AllowDuplicates]
		public enum THDTYPE : int32
		{
			THDTYPE_BLOCKMESSAGES = 0,
			THDTYPE_PROCESSMESSAGES = 1,
		}
		[AllowDuplicates]
		public enum CO_MARSHALING_CONTEXT_ATTRIBUTES : int32
		{
			CO_MARSHALING_SOURCE_IS_APP_CONTAINER = 0,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_1 = -2147483648,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_2 = -2147483647,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_3 = -2147483646,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_4 = -2147483645,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_5 = -2147483644,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_6 = -2147483643,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_7 = -2147483642,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_8 = -2147483641,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_9 = -2147483640,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_10 = -2147483639,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_11 = -2147483638,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_12 = -2147483637,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_13 = -2147483636,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_14 = -2147483635,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_15 = -2147483634,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_16 = -2147483633,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_17 = -2147483632,
			CO_MARSHALING_CONTEXT_ATTRIBUTE_RESERVED_18 = -2147483631,
		}
		[AllowDuplicates]
		public enum BIND_FLAGS : int32
		{
			BIND_MAYBOTHERUSER = 1,
			BIND_JUSTTESTEXISTENCE = 2,
		}
		[AllowDuplicates]
		public enum MKSYS : int32
		{
			MKSYS_NONE = 0,
			MKSYS_GENERICCOMPOSITE = 1,
			MKSYS_FILEMONIKER = 2,
			MKSYS_ANTIMONIKER = 3,
			MKSYS_ITEMMONIKER = 4,
			MKSYS_POINTERMONIKER = 5,
			MKSYS_CLASSMONIKER = 7,
			MKSYS_OBJREFMONIKER = 8,
			MKSYS_SESSIONMONIKER = 9,
			MKSYS_LUAMONIKER = 10,
		}
		[AllowDuplicates]
		public enum MKREDUCE : int32
		{
			MKRREDUCE_ONE = 196608,
			MKRREDUCE_TOUSER = 131072,
			MKRREDUCE_THROUGHUSER = 65536,
			MKRREDUCE_ALL = 0,
		}
		[AllowDuplicates]
		public enum ADVF : int32
		{
			ADVF_NODATA = 1,
			ADVF_PRIMEFIRST = 2,
			ADVF_ONLYONCE = 4,
			ADVF_DATAONSTOP = 64,
			ADVFCACHE_NOHANDLER = 8,
			ADVFCACHE_FORCEBUILTIN = 16,
			ADVFCACHE_ONSAVE = 32,
		}
		[AllowDuplicates]
		public enum TYMED : int32
		{
			TYMED_HGLOBAL = 1,
			TYMED_FILE = 2,
			TYMED_ISTREAM = 4,
			TYMED_ISTORAGE = 8,
			TYMED_GDI = 16,
			TYMED_MFPICT = 32,
			TYMED_ENHMF = 64,
			TYMED_NULL = 0,
		}
		[AllowDuplicates]
		public enum DATADIR : int32
		{
			DATADIR_GET = 1,
			DATADIR_SET = 2,
		}
		[AllowDuplicates]
		public enum CALLTYPE : int32
		{
			CALLTYPE_TOPLEVEL = 1,
			CALLTYPE_NESTED = 2,
			CALLTYPE_ASYNC = 3,
			CALLTYPE_TOPLEVEL_CALLPENDING = 4,
			CALLTYPE_ASYNC_CALLPENDING = 5,
		}
		[AllowDuplicates]
		public enum SERVERCALL : int32
		{
			SERVERCALL_ISHANDLED = 0,
			SERVERCALL_REJECTED = 1,
			SERVERCALL_RETRYLATER = 2,
		}
		[AllowDuplicates]
		public enum PENDINGTYPE : int32
		{
			PENDINGTYPE_TOPLEVEL = 1,
			PENDINGTYPE_NESTED = 2,
		}
		[AllowDuplicates]
		public enum PENDINGMSG : int32
		{
			PENDINGMSG_CANCELCALL = 0,
			PENDINGMSG_WAITNOPROCESS = 1,
			PENDINGMSG_WAITDEFPROCESS = 2,
		}
		[AllowDuplicates]
		public enum ApplicationType : int32
		{
			ServerApplication = 0,
			LibraryApplication = 1,
		}
		[AllowDuplicates]
		public enum ShutdownType : int32
		{
			IdleShutdown = 0,
			ForcedShutdown = 1,
		}
		[AllowDuplicates]
		public enum COINIT : uint32
		{
			COINIT_APARTMENTTHREADED = 2,
			COINIT_MULTITHREADED = 0,
			COINIT_DISABLE_OLE1DDE = 4,
			COINIT_SPEED_OVER_MEMORY = 8,
		}
		[AllowDuplicates]
		public enum COMSD : int32
		{
			SD_LAUNCHPERMISSIONS = 0,
			SD_ACCESSPERMISSIONS = 1,
			SD_LAUNCHRESTRICTIONS = 2,
			SD_ACCESSRESTRICTIONS = 3,
		}
		[AllowDuplicates]
		public enum COWAIT_FLAGS : int32
		{
			COWAIT_DEFAULT = 0,
			COWAIT_WAITALL = 1,
			COWAIT_ALERTABLE = 2,
			COWAIT_INPUTAVAILABLE = 4,
			COWAIT_DISPATCH_CALLS = 8,
			COWAIT_DISPATCH_WINDOW_MESSAGES = 16,
		}
		[AllowDuplicates]
		public enum CWMO_FLAGS : int32
		{
			CWMO_DEFAULT = 0,
			CWMO_DISPATCH_CALLS = 1,
			CWMO_DISPATCH_WINDOW_MESSAGES = 2,
		}
		[AllowDuplicates]
		public enum BINDINFOF : int32
		{
			BINDINFOF_URLENCODESTGMEDDATA = 1,
			BINDINFOF_URLENCODEDEXTRAINFO = 2,
		}
		[AllowDuplicates]
		public enum Uri_PROPERTY : int32
		{
			Uri_PROPERTY_ABSOLUTE_URI = 0,
			Uri_PROPERTY_STRING_START = 0,
			Uri_PROPERTY_AUTHORITY = 1,
			Uri_PROPERTY_DISPLAY_URI = 2,
			Uri_PROPERTY_DOMAIN = 3,
			Uri_PROPERTY_EXTENSION = 4,
			Uri_PROPERTY_FRAGMENT = 5,
			Uri_PROPERTY_HOST = 6,
			Uri_PROPERTY_PASSWORD = 7,
			Uri_PROPERTY_PATH = 8,
			Uri_PROPERTY_PATH_AND_QUERY = 9,
			Uri_PROPERTY_QUERY = 10,
			Uri_PROPERTY_RAW_URI = 11,
			Uri_PROPERTY_SCHEME_NAME = 12,
			Uri_PROPERTY_USER_INFO = 13,
			Uri_PROPERTY_USER_NAME = 14,
			Uri_PROPERTY_STRING_LAST = 14,
			Uri_PROPERTY_HOST_TYPE = 15,
			Uri_PROPERTY_DWORD_START = 15,
			Uri_PROPERTY_PORT = 16,
			Uri_PROPERTY_SCHEME = 17,
			Uri_PROPERTY_ZONE = 18,
			Uri_PROPERTY_DWORD_LAST = 18,
		}
		[AllowDuplicates]
		public enum TYPEKIND : int32
		{
			TKIND_ENUM = 0,
			TKIND_RECORD = 1,
			TKIND_MODULE = 2,
			TKIND_INTERFACE = 3,
			TKIND_DISPATCH = 4,
			TKIND_COCLASS = 5,
			TKIND_ALIAS = 6,
			TKIND_UNION = 7,
			TKIND_MAX = 8,
		}
		[AllowDuplicates]
		public enum CALLCONV : int32
		{
			CC_FASTCALL = 0,
			CC_CDECL = 1,
			CC_MSCPASCAL = 2,
			CC_PASCAL = 2,
			CC_MACPASCAL = 3,
			CC_STDCALL = 4,
			CC_FPFASTCALL = 5,
			CC_SYSCALL = 6,
			CC_MPWCDECL = 7,
			CC_MPWPASCAL = 8,
			CC_MAX = 9,
		}
		[AllowDuplicates]
		public enum FUNCKIND : int32
		{
			FUNC_VIRTUAL = 0,
			FUNC_PUREVIRTUAL = 1,
			FUNC_NONVIRTUAL = 2,
			FUNC_STATIC = 3,
			FUNC_DISPATCH = 4,
		}
		[AllowDuplicates]
		public enum INVOKEKIND : int32
		{
			INVOKE_FUNC = 1,
			INVOKE_PROPERTYGET = 2,
			INVOKE_PROPERTYPUT = 4,
			INVOKE_PROPERTYPUTREF = 8,
		}
		[AllowDuplicates]
		public enum VARKIND : int32
		{
			VAR_PERINSTANCE = 0,
			VAR_STATIC = 1,
			VAR_CONST = 2,
			VAR_DISPATCH = 3,
		}
		[AllowDuplicates]
		public enum DESCKIND : int32
		{
			DESCKIND_NONE = 0,
			DESCKIND_FUNCDESC = 1,
			DESCKIND_VARDESC = 2,
			DESCKIND_TYPECOMP = 3,
			DESCKIND_IMPLICITAPPOBJ = 4,
			DESCKIND_MAX = 5,
		}
		[AllowDuplicates]
		public enum SYSKIND : int32
		{
			SYS_WIN16 = 0,
			SYS_WIN32 = 1,
			SYS_MAC = 2,
			SYS_WIN64 = 3,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT LPEXCEPFINO_DEFERRED_FILLIN(EXCEPINFO* pExcepInfo);
		public function HRESULT LPFNGETCLASSOBJECT(Guid* param0, Guid* param1, void** param2);
		public function HRESULT LPFNCANUNLOADNOW();
		public function HRESULT PFNCONTEXTCALL(ComCallData* pParam);
		
		// --- Structs ---
		
		[CRepr, Union]
		public struct CY
		{
			public _Anonymous_e__Struct Anonymous;
			public int64 int64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 Lo;
				public int32 Hi;
			}
		}
		[CRepr]
		public struct CSPLATFORM
		{
			public uint32 dwPlatformId;
			public uint32 dwVersionHi;
			public uint32 dwVersionLo;
			public uint32 dwProcessorArch;
		}
		[CRepr]
		public struct QUERYCONTEXT
		{
			public uint32 dwContext;
			public CSPLATFORM Platform;
			public uint32 Locale;
			public uint32 dwVersionHi;
			public uint32 dwVersionLo;
		}
		[CRepr]
		public struct uCLSSPEC
		{
			public uint32 tyspec;
			public _tagged_union_e__Struct tagged_union;
			
			[CRepr, Union]
			public struct _tagged_union_e__Struct
			{
				public Guid clsid;
				public PWSTR pFileExt;
				public PWSTR pMimeType;
				public PWSTR pProgId;
				public PWSTR pFileName;
				public _ByName_e__Struct ByName;
				public _ByObjectId_e__Struct ByObjectId;
				
				[CRepr]
				public struct _ByName_e__Struct
				{
					public PWSTR pPackageName;
					public Guid PolicyId;
				}
				[CRepr]
				public struct _ByObjectId_e__Struct
				{
					public Guid ObjectId;
					public Guid PolicyId;
				}
			}
		}
		[CRepr]
		public struct COAUTHIDENTITY
		{
			public uint16* User;
			public uint32 UserLength;
			public uint16* Domain;
			public uint32 DomainLength;
			public uint16* Password;
			public uint32 PasswordLength;
			public uint32 Flags;
		}
		[CRepr]
		public struct COAUTHINFO
		{
			public uint32 dwAuthnSvc;
			public uint32 dwAuthzSvc;
			public PWSTR pwszServerPrincName;
			public uint32 dwAuthnLevel;
			public uint32 dwImpersonationLevel;
			public COAUTHIDENTITY* pAuthIdentityData;
			public uint32 dwCapabilities;
		}
		[CRepr]
		public struct BYTE_BLOB
		{
			public uint32 clSize;
			public uint8[] abData;
		}
		[CRepr]
		public struct WORD_BLOB
		{
			public uint32 clSize;
			public uint16[] asData;
		}
		[CRepr]
		public struct DWORD_BLOB
		{
			public uint32 clSize;
			public uint32[] alData;
		}
		[CRepr]
		public struct FLAGGED_BYTE_BLOB
		{
			public uint32 fFlags;
			public uint32 clSize;
			public uint8[] abData;
		}
		[CRepr]
		public struct FLAGGED_WORD_BLOB
		{
			public uint32 fFlags;
			public uint32 clSize;
			public uint16[] asData;
		}
		[CRepr]
		public struct BYTE_SIZEDARR
		{
			public uint32 clSize;
			public uint8* pData;
		}
		[CRepr]
		public struct SHORT_SIZEDARR
		{
			public uint32 clSize;
			public uint16* pData;
		}
		[CRepr]
		public struct LONG_SIZEDARR
		{
			public uint32 clSize;
			public uint32* pData;
		}
		[CRepr]
		public struct HYPER_SIZEDARR
		{
			public uint32 clSize;
			public int64* pData;
		}
		[CRepr]
		public struct BLOB
		{
			public uint32 cbSize;
			public uint8* pBlobData;
		}
		[CRepr]
		public struct IEnumContextProps
		{
		}
		[CRepr]
		public struct IContext
		{
		}
		[CRepr]
		public struct COSERVERINFO
		{
			public uint32 dwReserved1;
			public PWSTR pwszName;
			public COAUTHINFO* pAuthInfo;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct MULTI_QI
		{
			public Guid* pIID;
			public IUnknown* pItf;
			public HRESULT hr;
		}
		[CRepr]
		public struct STATSTG
		{
			public PWSTR pwcsName;
			public uint32 type;
			public ULARGE_INTEGER cbSize;
			public FILETIME mtime;
			public FILETIME ctime;
			public FILETIME atime;
			public uint32 grfMode;
			public uint32 grfLocksSupported;
			public Guid clsid;
			public uint32 grfStateBits;
			public uint32 reserved;
		}
		[CRepr]
		public struct RPCOLEMESSAGE
		{
			public void* reserved1;
			public uint32 dataRepresentation;
			public void* Buffer;
			public uint32 cbBuffer;
			public uint32 iMethod;
			public void*[5] reserved2;
			public uint32 rpcFlags;
		}
		[CRepr]
		public struct SChannelHookCallInfo
		{
			public Guid iid;
			public uint32 cbSize;
			public Guid uCausality;
			public uint32 dwServerPid;
			public uint32 iMethod;
			public void* pObject;
		}
		[CRepr]
		public struct SOLE_AUTHENTICATION_SERVICE
		{
			public uint32 dwAuthnSvc;
			public uint32 dwAuthzSvc;
			public PWSTR pPrincipalName;
			public HRESULT hr;
		}
		[CRepr]
		public struct SOLE_AUTHENTICATION_INFO
		{
			public uint32 dwAuthnSvc;
			public uint32 dwAuthzSvc;
			public void* pAuthInfo;
		}
		[CRepr]
		public struct SOLE_AUTHENTICATION_LIST
		{
			public uint32 cAuthInfo;
			public SOLE_AUTHENTICATION_INFO* aAuthInfo;
		}
		[CRepr]
		public struct MachineGlobalObjectTableRegistrationToken__
		{
			public int32 unused;
		}
		[CRepr]
		public struct BIND_OPTS
		{
			public uint32 cbStruct;
			public uint32 grfFlags;
			public uint32 grfMode;
			public uint32 dwTickCountDeadline;
		}
		[CRepr]
		public struct BIND_OPTS2
		{
			public BIND_OPTS __AnonymousBase_objidl_L9017_C36;
			public uint32 dwTrackFlags;
			public uint32 dwClassContext;
			public uint32 locale;
			public COSERVERINFO* pServerInfo;
		}
		[CRepr]
		public struct BIND_OPTS3
		{
			public BIND_OPTS2 __AnonymousBase_objidl_L9041_C36;
			public HWND hwnd;
		}
		[CRepr]
		public struct DVTARGETDEVICE
		{
			public uint32 tdSize;
			public uint16 tdDriverNameOffset;
			public uint16 tdDeviceNameOffset;
			public uint16 tdPortNameOffset;
			public uint16 tdExtDevmodeOffset;
			public uint8[] tdData;
		}
		[CRepr]
		public struct FORMATETC
		{
			public uint16 cfFormat;
			public DVTARGETDEVICE* ptd;
			public uint32 dwAspect;
			public int32 lindex;
			public uint32 tymed;
		}
		[CRepr]
		public struct STATDATA
		{
			public FORMATETC formatetc;
			public uint32 advf;
			public IAdviseSink* pAdvSink;
			public uint32 dwConnection;
		}
		[CRepr]
		public struct RemSTGMEDIUM
		{
			public uint32 tymed;
			public uint32 dwHandleType;
			public uint32 pData;
			public uint32 pUnkForRelease;
			public uint32 cbData;
			public uint8[] data;
		}
		[CRepr]
		public struct STGMEDIUM
		{
			public uint32 tymed;
			public _Anonymous_e__Union Anonymous;
			public IUnknown* pUnkForRelease;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HBITMAP hBitmap;
				public void* hMetaFilePict;
				public HENHMETAFILE hEnhMetaFile;
				public int hGlobal;
				public PWSTR lpszFileName;
				public IStream* pstm;
				public IStorage* pstg;
			}
		}
		[CRepr]
		public struct GDI_OBJECT
		{
			public uint32 ObjectType;
			public _u_e__Struct u;
			
			[CRepr, Union]
			public struct _u_e__Struct
			{
				public userHBITMAP* hBitmap;
				public userHPALETTE* hPalette;
				public userHGLOBAL* hGeneric;
			}
		}
		[CRepr]
		public struct userSTGMEDIUM
		{
			public IUnknown* pUnkForRelease;
			
			[CRepr]
			public struct _STGMEDIUM_UNION
			{
				public uint32 tymed;
				public _u_e__Struct u;
				
				[CRepr, Union]
				public struct _u_e__Struct
				{
					public userHMETAFILEPICT* hMetaFilePict;
					public userHENHMETAFILE* hHEnhMetaFile;
					public GDI_OBJECT* hGdiHandle;
					public userHGLOBAL* hGlobal;
					public PWSTR lpszFileName;
					public BYTE_BLOB* pstm;
					public BYTE_BLOB* pstg;
				}
			}
		}
		[CRepr]
		public struct userFLAG_STGMEDIUM
		{
			public int32 ContextFlags;
			public int32 fPassOwnership;
			public userSTGMEDIUM Stgmed;
		}
		[CRepr]
		public struct FLAG_STGMEDIUM
		{
			public int32 ContextFlags;
			public int32 fPassOwnership;
			public STGMEDIUM Stgmed;
		}
		[CRepr]
		public struct INTERFACEINFO
		{
			public IUnknown* pUnk;
			public Guid iid;
			public uint16 wMethod;
		}
		[CRepr]
		public struct StorageLayout
		{
			public uint32 LayoutType;
			public PWSTR pwcsElementName;
			public LARGE_INTEGER cOffset;
			public LARGE_INTEGER cBytes;
		}
		[CRepr]
		public struct CATEGORYINFO
		{
			public Guid catid;
			public uint32 lcid;
			public char16[128] szDescription;
		}
		[CRepr]
		public struct ComCallData
		{
			public uint32 dwDispid;
			public uint32 dwReserved;
			public void* pUserDefined;
		}
		[CRepr]
		public struct BINDINFO
		{
			public uint32 cbSize;
			public PWSTR szExtraInfo;
			public STGMEDIUM stgmedData;
			public uint32 grfBindInfoF;
			public uint32 dwBindVerb;
			public PWSTR szCustomVerb;
			public uint32 cbstgmedData;
			public uint32 dwOptions;
			public uint32 dwOptionsFlags;
			public uint32 dwCodePage;
			public SECURITY_ATTRIBUTES securityAttributes;
			public Guid iid;
			public IUnknown* pUnk;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct AUTHENTICATEINFO
		{
			public uint32 dwFlags;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct SAFEARRAYBOUND
		{
			public uint32 cElements;
			public int32 lLbound;
		}
		[CRepr]
		public struct SAFEARRAY
		{
			public uint16 cDims;
			public uint16 fFeatures;
			public uint32 cbElements;
			public uint32 cLocks;
			public void* pvData;
			public SAFEARRAYBOUND[] rgsabound;
		}
		[CRepr]
		public struct VARIANT
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public DECIMAL decVal;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 vt;
					public uint16 wReserved1;
					public uint16 wReserved2;
					public uint16 wReserved3;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public int64 llVal;
						public int32 lVal;
						public uint8 bVal;
						public int16 iVal;
						public float fltVal;
						public double dblVal;
						public int16 boolVal;
						public int16 __OBSOLETE__VARIANT_BOOL;
						public int32 scode;
						public CY cyVal;
						public double date;
						public BSTR bstrVal;
						public IUnknown* punkVal;
						public IDispatch* pdispVal;
						public SAFEARRAY* parray;
						public uint8* pbVal;
						public int16* piVal;
						public int32* plVal;
						public int64* pllVal;
						public float* pfltVal;
						public double* pdblVal;
						public int16* pboolVal;
						public int16* __OBSOLETE__VARIANT_PBOOL;
						public int32* pscode;
						public CY* pcyVal;
						public double* pdate;
						public BSTR* pbstrVal;
						public IUnknown** ppunkVal;
						public IDispatch** ppdispVal;
						public SAFEARRAY** pparray;
						public VARIANT* pvarVal;
						public void* byref;
						public CHAR cVal;
						public uint16 uiVal;
						public uint32 ulVal;
						public uint64 ullVal;
						public int32 intVal;
						public uint32 uintVal;
						public DECIMAL* pdecVal;
						public PSTR pcVal;
						public uint16* puiVal;
						public uint32* pulVal;
						public uint64* pullVal;
						public int32* pintVal;
						public uint32* puintVal;
						public _Anonymous_e__Struct Anonymous;
						
						[CRepr]
						public struct _Anonymous_e__Struct
						{
							public void* pvRecord;
							public IRecordInfo* pRecInfo;
						}
					}
				}
			}
		}
		[CRepr]
		public struct TYPEDESC
		{
			public _Anonymous_e__Union Anonymous;
			public uint16 vt;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public TYPEDESC* lptdesc;
				public ARRAYDESC* lpadesc;
				public uint32 hreftype;
			}
		}
		[CRepr]
		public struct IDLDESC
		{
			public uint dwReserved;
			public uint16 wIDLFlags;
		}
		[CRepr]
		public struct ELEMDESC
		{
			public TYPEDESC tdesc;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public IDLDESC idldesc;
				public PARAMDESC paramdesc;
			}
		}
		[CRepr]
		public struct TYPEATTR
		{
			public Guid guid;
			public uint32 lcid;
			public uint32 dwReserved;
			public int32 memidConstructor;
			public int32 memidDestructor;
			public PWSTR lpstrSchema;
			public uint32 cbSizeInstance;
			public TYPEKIND typekind;
			public uint16 cFuncs;
			public uint16 cVars;
			public uint16 cImplTypes;
			public uint16 cbSizeVft;
			public uint16 cbAlignment;
			public uint16 wTypeFlags;
			public uint16 wMajorVerNum;
			public uint16 wMinorVerNum;
			public TYPEDESC tdescAlias;
			public IDLDESC idldescType;
		}
		[CRepr]
		public struct DISPPARAMS
		{
			public VARIANT* rgvarg;
			public int32* rgdispidNamedArgs;
			public uint32 cArgs;
			public uint32 cNamedArgs;
		}
		[CRepr]
		public struct EXCEPINFO
		{
			public uint16 wCode;
			public uint16 wReserved;
			public BSTR bstrSource;
			public BSTR bstrDescription;
			public BSTR bstrHelpFile;
			public uint32 dwHelpContext;
			public void* pvReserved;
			public LPEXCEPFINO_DEFERRED_FILLIN pfnDeferredFillIn;
			public int32 scode;
		}
		[CRepr]
		public struct FUNCDESC
		{
			public int32 memid;
			public int32* lprgscode;
			public ELEMDESC* lprgelemdescParam;
			public FUNCKIND funckind;
			public INVOKEKIND invkind;
			public CALLCONV callconv;
			public int16 cParams;
			public int16 cParamsOpt;
			public int16 oVft;
			public int16 cScodes;
			public ELEMDESC elemdescFunc;
			public uint16 wFuncFlags;
		}
		[CRepr]
		public struct VARDESC
		{
			public int32 memid;
			public PWSTR lpstrSchema;
			public _Anonymous_e__Union Anonymous;
			public ELEMDESC elemdescVar;
			public uint16 wVarFlags;
			public VARKIND varkind;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 oInst;
				public VARIANT* lpvarValue;
			}
		}
		[CRepr]
		public struct CUSTDATAITEM
		{
			public Guid guid;
			public VARIANT varValue;
		}
		[CRepr]
		public struct CUSTDATA
		{
			public uint32 cCustData;
			public CUSTDATAITEM* prgCustData;
		}
		[CRepr, Union]
		public struct BINDPTR
		{
			public FUNCDESC* lpfuncdesc;
			public VARDESC* lpvardesc;
			public ITypeComp* lptcomp;
		}
		[CRepr]
		public struct TLIBATTR
		{
			public Guid guid;
			public uint32 lcid;
			public SYSKIND syskind;
			public uint16 wMajorVerNum;
			public uint16 wMinorVerNum;
			public uint16 wLibFlags;
		}
		[CRepr]
		public struct CONNECTDATA
		{
			public IUnknown* pUnk;
			public uint32 dwCookie;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUnknown
		{
			public const new Guid IID = .(0x00000000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			protected VTable* vt;
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable
			{
				public function HRESULT(IUnknown *self, Guid* riid, void** ppvObject) QueryInterface;
				public function uint32(IUnknown *self) AddRef;
				public function uint32(IUnknown *self) Release;
			}
		}
		[CRepr]
		public struct AsyncIUnknown : IUnknown
		{
			public const new Guid IID = .(0x000e0000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIUnknown *self, Guid* riid) Begin_QueryInterface;
				public function HRESULT(AsyncIUnknown *self, void** ppvObject) Finish_QueryInterface;
				public function HRESULT(AsyncIUnknown *self) Begin_AddRef;
				public function uint32(AsyncIUnknown *self) Finish_AddRef;
				public function HRESULT(AsyncIUnknown *self) Begin_Release;
				public function uint32(AsyncIUnknown *self) Finish_Release;
			}
		}
		[CRepr]
		public struct IClassFactory : IUnknown
		{
			public const new Guid IID = .(0x00000001, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IClassFactory *self, IUnknown* pUnkOuter, Guid* riid, void** ppvObject) CreateInstance;
				public function HRESULT(IClassFactory *self, BOOL fLock) LockServer;
			}
		}
		[CRepr]
		public struct INoMarshal : IUnknown
		{
			public const new Guid IID = .(0xecc8691b, 0xc1db, 0x4dc0, 0x85, 0x5e, 0x65, 0xf6, 0xc5, 0x51, 0xaf, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IAgileObject : IUnknown
		{
			public const new Guid IID = .(0x94ea2b94, 0xe9cc, 0x49e0, 0xc0, 0xff, 0xee, 0x64, 0xca, 0x8f, 0x5b, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IActivationFilter : IUnknown
		{
			public const new Guid IID = .(0x00000017, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IActivationFilter *self, uint32 dwActivationType, Guid* rclsid, Guid* pReplacementClsId) HandleActivation;
			}
		}
		[CRepr]
		public struct IMalloc : IUnknown
		{
			public const new Guid IID = .(0x00000002, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void*(IMalloc *self, uint cb) Alloc;
				public function void*(IMalloc *self, void* pv, uint cb) Realloc;
				public function void(IMalloc *self, void* pv) Free;
				public function uint(IMalloc *self, void* pv) GetSize;
				public function int32(IMalloc *self, void* pv) DidAlloc;
				public function void(IMalloc *self) HeapMinimize;
			}
		}
		[CRepr]
		public struct IStdMarshalInfo : IUnknown
		{
			public const new Guid IID = .(0x00000018, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IStdMarshalInfo *self, uint32 dwDestContext, void* pvDestContext, Guid* pClsid) GetClassForHandler;
			}
		}
		[CRepr]
		public struct IExternalConnection : IUnknown
		{
			public const new Guid IID = .(0x00000019, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint32(IExternalConnection *self, uint32 extconn, uint32 reserved) AddConnection;
				public function uint32(IExternalConnection *self, uint32 extconn, uint32 reserved, BOOL fLastReleaseCloses) ReleaseConnection;
			}
		}
		[CRepr]
		public struct IMultiQI : IUnknown
		{
			public const new Guid IID = .(0x00000020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMultiQI *self, uint32 cMQIs, MULTI_QI* pMQIs) QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct AsyncIMultiQI : IUnknown
		{
			public const new Guid IID = .(0x000e0020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIMultiQI *self, uint32 cMQIs, MULTI_QI* pMQIs) Begin_QueryMultipleInterfaces;
				public function HRESULT(AsyncIMultiQI *self, MULTI_QI* pMQIs) Finish_QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct IInternalUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000021, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInternalUnknown *self, Guid* riid, void** ppv) QueryInternalInterface;
			}
		}
		[CRepr]
		public struct IEnumUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000100, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumUnknown *self, uint32 celt, IUnknown** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumUnknown *self, uint32 celt) Skip;
				public function HRESULT(IEnumUnknown *self) Reset;
				public function HRESULT(IEnumUnknown *self, IEnumUnknown** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumString : IUnknown
		{
			public const new Guid IID = .(0x00000101, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumString *self, uint32 celt, PWSTR* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumString *self, uint32 celt) Skip;
				public function HRESULT(IEnumString *self) Reset;
				public function HRESULT(IEnumString *self, IEnumString** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISequentialStream : IUnknown
		{
			public const new Guid IID = .(0x0c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISequentialStream *self, void* pv, uint32 cb, uint32* pcbRead) Read;
				public function HRESULT(ISequentialStream *self, void* pv, uint32 cb, uint32* pcbWritten) Write;
			}
		}
		[CRepr]
		public struct IStream : ISequentialStream
		{
			public const new Guid IID = .(0x0000000c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISequentialStream.VTable
			{
				public function HRESULT(IStream *self, LARGE_INTEGER dlibMove, STREAM_SEEK dwOrigin, ULARGE_INTEGER* plibNewPosition) Seek;
				public function HRESULT(IStream *self, ULARGE_INTEGER libNewSize) SetSize;
				public function HRESULT(IStream *self, IStream* pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten) CopyTo;
				public function HRESULT(IStream *self, uint32 grfCommitFlags) Commit;
				public function HRESULT(IStream *self) Revert;
				public function HRESULT(IStream *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public function HRESULT(IStream *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public function HRESULT(IStream *self, STATSTG* pstatstg, uint32 grfStatFlag) Stat;
				public function HRESULT(IStream *self, IStream** ppstm) Clone;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56b60, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage, Guid* riid) GetBuffer;
				public function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage, uint32* pStatus) SendReceive;
				public function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage) FreeBuffer;
				public function HRESULT(IRpcChannelBuffer *self, uint32* pdwDestContext, void** ppvDestContext) GetDestCtx;
				public function HRESULT(IRpcChannelBuffer *self) IsConnected;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer2 : IRpcChannelBuffer
		{
			public const new Guid IID = .(0x594f31d0, 0x7f19, 0x11d0, 0xb1, 0x94, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0xbf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRpcChannelBuffer.VTable
			{
				public function HRESULT(IRpcChannelBuffer2 *self, uint32* pdwVersion) GetProtocolVersion;
			}
		}
		[CRepr]
		public struct IAsyncRpcChannelBuffer : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0xa5029fb6, 0x3c34, 0x11d1, 0x9c, 0x99, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, ISynchronize* pSync, uint32* pulStatus) Send;
				public function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, uint32* pulStatus) Receive;
				public function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) GetDestCtxEx;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer3 : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0x25b15600, 0x0115, 0x11d0, 0xbf, 0x0d, 0x00, 0xaa, 0x00, 0xb8, 0xdf, 0xd2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pulStatus) Send;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32 ulSize, uint32* pulStatus) Receive;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg) Cancel;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, Guid* riid, void** pInterface) GetCallContext;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) GetDestCtxEx;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pState) GetState;
				public function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, IAsyncManager* pAsyncMgr) RegisterAsync;
			}
		}
		[CRepr]
		public struct IRpcSyntaxNegotiate : IUnknown
		{
			public const new Guid IID = .(0x58a08519, 0x24c8, 0x4935, 0xb4, 0x82, 0x3f, 0xd8, 0x23, 0x33, 0x3a, 0x4f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcSyntaxNegotiate *self, RPCOLEMESSAGE* pMsg) NegotiateSyntax;
			}
		}
		[CRepr]
		public struct IRpcProxyBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56a34, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcProxyBuffer *self, IRpcChannelBuffer* pRpcChannelBuffer) Connect;
				public function void(IRpcProxyBuffer *self) Disconnect;
			}
		}
		[CRepr]
		public struct IRpcStubBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56afc, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcStubBuffer *self, IUnknown* pUnkServer) Connect;
				public function void(IRpcStubBuffer *self) Disconnect;
				public function HRESULT(IRpcStubBuffer *self, RPCOLEMESSAGE* _prpcmsg, IRpcChannelBuffer* _pRpcChannelBuffer) Invoke;
				public function IRpcStubBuffer*(IRpcStubBuffer *self, Guid* riid) IsIIDSupported;
				public function uint32(IRpcStubBuffer *self) CountRefs;
				public function HRESULT(IRpcStubBuffer *self, void** ppv) DebugServerQueryInterface;
				public function void(IRpcStubBuffer *self, void* pv) DebugServerRelease;
			}
		}
		[CRepr]
		public struct IPSFactoryBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f569d0, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPSFactoryBuffer *self, IUnknown* pUnkOuter, Guid* riid, IRpcProxyBuffer** ppProxy, void** ppv) CreateProxy;
				public function HRESULT(IPSFactoryBuffer *self, Guid* riid, IUnknown* pUnkServer, IRpcStubBuffer** ppStub) CreateStub;
			}
		}
		[CRepr]
		public struct IChannelHook : IUnknown
		{
			public const new Guid IID = .(0x1008c4a0, 0x7613, 0x11cf, 0x9a, 0xf1, 0x00, 0x20, 0xaf, 0x6e, 0x72, 0xf4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize) ClientGetSize;
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer) ClientFillBuffer;
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep, HRESULT hrFault) ClientNotify;
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep) ServerNotify;
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, HRESULT hrFault, uint32* pDataSize) ServerGetSize;
				public function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer, HRESULT hrFault) ServerFillBuffer;
			}
		}
		[CRepr]
		public struct IClientSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IClientSecurity *self, IUnknown* pProxy, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, RPC_C_AUTHN_LEVEL* pAuthnLevel, RPC_C_IMP_LEVEL* pImpLevel, void** pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES* pCapabilites) QueryBlanket;
				public function HRESULT(IClientSecurity *self, IUnknown* pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities) SetBlanket;
				public function HRESULT(IClientSecurity *self, IUnknown* pProxy, IUnknown** ppCopy) CopyProxy;
			}
		}
		[CRepr]
		public struct IServerSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IServerSecurity *self, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities) QueryBlanket;
				public function HRESULT(IServerSecurity *self) ImpersonateClient;
				public function HRESULT(IServerSecurity *self) RevertToSelf;
				public function BOOL(IServerSecurity *self) IsImpersonating;
			}
		}
		[CRepr]
		public struct IRpcOptions : IUnknown
		{
			public const new Guid IID = .(0x00000144, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcOptions *self, IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public function HRESULT(IRpcOptions *self, IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint* pdwValue) Query;
			}
		}
		[CRepr]
		public struct IGlobalOptions : IUnknown
		{
			public const new Guid IID = .(0x0000015b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGlobalOptions *self, GLOBALOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public function HRESULT(IGlobalOptions *self, GLOBALOPT_PROPERTIES dwProperty, uint* pdwValue) Query;
			}
		}
		[CRepr]
		public struct ISurrogate : IUnknown
		{
			public const new Guid IID = .(0x00000022, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISurrogate *self, Guid* Clsid) LoadDllServer;
				public function HRESULT(ISurrogate *self) FreeSurrogate;
			}
		}
		[CRepr]
		public struct IGlobalInterfaceTable : IUnknown
		{
			public const new Guid IID = .(0x00000146, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGlobalInterfaceTable *self, IUnknown* pUnk, Guid* riid, uint32* pdwCookie) RegisterInterfaceInGlobal;
				public function HRESULT(IGlobalInterfaceTable *self, uint32 dwCookie) RevokeInterfaceFromGlobal;
				public function HRESULT(IGlobalInterfaceTable *self, uint32 dwCookie, Guid* riid, void** ppv) GetInterfaceFromGlobal;
			}
		}
		[CRepr]
		public struct ISynchronize : IUnknown
		{
			public const new Guid IID = .(0x00000030, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISynchronize *self, uint32 dwFlags, uint32 dwMilliseconds) Wait;
				public function HRESULT(ISynchronize *self) Signal;
				public function HRESULT(ISynchronize *self) Reset;
			}
		}
		[CRepr]
		public struct ISynchronizeHandle : IUnknown
		{
			public const new Guid IID = .(0x00000031, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISynchronizeHandle *self, HANDLE* ph) GetHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeEvent : ISynchronizeHandle
		{
			public const new Guid IID = .(0x00000032, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISynchronizeHandle.VTable
			{
				public function HRESULT(ISynchronizeEvent *self, HANDLE* ph) SetEventHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeContainer : IUnknown
		{
			public const new Guid IID = .(0x00000033, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISynchronizeContainer *self, ISynchronize* pSync) AddSynchronize;
				public function HRESULT(ISynchronizeContainer *self, uint32 dwFlags, uint32 dwTimeOut, ISynchronize** ppSync) WaitMultiple;
			}
		}
		[CRepr]
		public struct ISynchronizeMutex : ISynchronize
		{
			public const new Guid IID = .(0x00000025, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISynchronize.VTable
			{
				public function HRESULT(ISynchronizeMutex *self) ReleaseMutex;
			}
		}
		[CRepr]
		public struct ICancelMethodCalls : IUnknown
		{
			public const new Guid IID = .(0x00000029, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICancelMethodCalls *self, uint32 ulSeconds) Cancel;
				public function HRESULT(ICancelMethodCalls *self) TestCancel;
			}
		}
		[CRepr]
		public struct IAsyncManager : IUnknown
		{
			public const new Guid IID = .(0x0000002a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAsyncManager *self, HRESULT Result) CompleteCall;
				public function HRESULT(IAsyncManager *self, Guid* riid, void** pInterface) GetCallContext;
				public function HRESULT(IAsyncManager *self, uint32* pulStateFlags) GetState;
			}
		}
		[CRepr]
		public struct ICallFactory : IUnknown
		{
			public const new Guid IID = .(0x1c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallFactory *self, Guid* riid, IUnknown* pCtrlUnk, Guid* riid2, IUnknown** ppv) CreateCall;
			}
		}
		[CRepr]
		public struct IRpcHelper : IUnknown
		{
			public const new Guid IID = .(0x00000149, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRpcHelper *self, uint32* pComVersion) GetDCOMProtocolVersion;
				public function HRESULT(IRpcHelper *self, void* pObjRef, Guid** piid) GetIIDFromOBJREF;
			}
		}
		[CRepr]
		public struct IReleaseMarshalBuffers : IUnknown
		{
			public const new Guid IID = .(0xeb0cb9e8, 0x7996, 0x11d2, 0x87, 0x2e, 0x00, 0x00, 0xf8, 0x08, 0x08, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IReleaseMarshalBuffers *self, RPCOLEMESSAGE* pMsg, uint32 dwFlags, IUnknown* pChnl) ReleaseMarshalBuffer;
			}
		}
		[CRepr]
		public struct IWaitMultiple : IUnknown
		{
			public const new Guid IID = .(0x0000002b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWaitMultiple *self, uint32 timeout, ISynchronize** pSync) WaitMultiple;
				public function HRESULT(IWaitMultiple *self, ISynchronize* pSync) AddSynchronize;
			}
		}
		[CRepr]
		public struct IAddrTrackingControl : IUnknown
		{
			public const new Guid IID = .(0x00000147, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAddrTrackingControl *self) EnableCOMDynamicAddrTracking;
				public function HRESULT(IAddrTrackingControl *self) DisableCOMDynamicAddrTracking;
			}
		}
		[CRepr]
		public struct IAddrExclusionControl : IUnknown
		{
			public const new Guid IID = .(0x00000148, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAddrExclusionControl *self, Guid* riid, void** ppEnumerator) GetCurrentAddrExclusionList;
				public function HRESULT(IAddrExclusionControl *self, IUnknown* pEnumerator) UpdateAddrExclusionList;
			}
		}
		[CRepr]
		public struct IPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3aca, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPipeByte *self, uint8* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public function HRESULT(IPipeByte *self, uint8* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acb, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIPipeByte *self, uint32 cRequest) Begin_Pull;
				public function HRESULT(AsyncIPipeByte *self, uint8* buf, uint32* pcReturned) Finish_Pull;
				public function HRESULT(AsyncIPipeByte *self, uint8* buf, uint32 cSent) Begin_Push;
				public function HRESULT(AsyncIPipeByte *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acc, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPipeLong *self, int32* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public function HRESULT(IPipeLong *self, int32* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acd, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIPipeLong *self, uint32 cRequest) Begin_Pull;
				public function HRESULT(AsyncIPipeLong *self, int32* buf, uint32* pcReturned) Finish_Pull;
				public function HRESULT(AsyncIPipeLong *self, int32* buf, uint32 cSent) Begin_Push;
				public function HRESULT(AsyncIPipeLong *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3ace, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPipeDouble *self, double* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public function HRESULT(IPipeDouble *self, double* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acf, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIPipeDouble *self, uint32 cRequest) Begin_Pull;
				public function HRESULT(AsyncIPipeDouble *self, double* buf, uint32* pcReturned) Finish_Pull;
				public function HRESULT(AsyncIPipeDouble *self, double* buf, uint32 cSent) Begin_Push;
				public function HRESULT(AsyncIPipeDouble *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IComThreadingInfo : IUnknown
		{
			public const new Guid IID = .(0x000001ce, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IComThreadingInfo *self, APTTYPE* pAptType) GetCurrentApartmentType;
				public function HRESULT(IComThreadingInfo *self, THDTYPE* pThreadType) GetCurrentThreadType;
				public function HRESULT(IComThreadingInfo *self, Guid* pguidLogicalThreadId) GetCurrentLogicalThreadId;
				public function HRESULT(IComThreadingInfo *self, Guid* rguid) SetCurrentLogicalThreadId;
			}
		}
		[CRepr]
		public struct IProcessInitControl : IUnknown
		{
			public const new Guid IID = .(0x72380d55, 0x8d2b, 0x43a3, 0x85, 0x13, 0x2b, 0x6e, 0xf3, 0x14, 0x34, 0xe9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProcessInitControl *self, uint32 dwSecondsRemaining) ResetInitializerTimeout;
			}
		}
		[CRepr]
		public struct IFastRundown : IUnknown
		{
			public const new Guid IID = .(0x00000040, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IMachineGlobalObjectTable : IUnknown
		{
			public const new Guid IID = .(0x26d709ac, 0xf70b, 0x4421, 0xa9, 0x6f, 0xd2, 0x87, 0x8f, 0xaf, 0xb0, 0x0d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMachineGlobalObjectTable *self, Guid* clsid, PWSTR identifier, IUnknown* object, MachineGlobalObjectTableRegistrationToken__** token) RegisterObject;
				public function HRESULT(IMachineGlobalObjectTable *self, Guid* clsid, PWSTR identifier, Guid* riid, void** ppv) GetObject;
				public function HRESULT(IMachineGlobalObjectTable *self, MachineGlobalObjectTableRegistrationToken__* token) RevokeObject;
			}
		}
		[CRepr]
		public struct IMallocSpy : IUnknown
		{
			public const new Guid IID = .(0x0000001d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint(IMallocSpy *self, uint cbRequest) PreAlloc;
				public function void*(IMallocSpy *self, void* pActual) PostAlloc;
				public function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreFree;
				public function void(IMallocSpy *self, BOOL fSpyed) PostFree;
				public function uint(IMallocSpy *self, void* pRequest, uint cbRequest, void** ppNewRequest, BOOL fSpyed) PreRealloc;
				public function void*(IMallocSpy *self, void* pActual, BOOL fSpyed) PostRealloc;
				public function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreGetSize;
				public function uint(IMallocSpy *self, uint cbActual, BOOL fSpyed) PostGetSize;
				public function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreDidAlloc;
				public function int32(IMallocSpy *self, void* pRequest, BOOL fSpyed, int32 fActual) PostDidAlloc;
				public function void(IMallocSpy *self) PreHeapMinimize;
				public function void(IMallocSpy *self) PostHeapMinimize;
			}
		}
		[CRepr]
		public struct IBindCtx : IUnknown
		{
			public const new Guid IID = .(0x0000000e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBindCtx *self, IUnknown* punk) RegisterObjectBound;
				public function HRESULT(IBindCtx *self, IUnknown* punk) RevokeObjectBound;
				public function HRESULT(IBindCtx *self) ReleaseBoundObjects;
				public function HRESULT(IBindCtx *self, BIND_OPTS* pbindopts) SetBindOptions;
				public function HRESULT(IBindCtx *self, BIND_OPTS* pbindopts) GetBindOptions;
				public function HRESULT(IBindCtx *self, IRunningObjectTable** pprot) GetRunningObjectTable;
				public function HRESULT(IBindCtx *self, PWSTR pszKey, IUnknown* punk) RegisterObjectParam;
				public function HRESULT(IBindCtx *self, PWSTR pszKey, IUnknown** ppunk) GetObjectParam;
				public function HRESULT(IBindCtx *self, IEnumString** ppenum) EnumObjectParam;
				public function HRESULT(IBindCtx *self, PWSTR pszKey) RevokeObjectParam;
			}
		}
		[CRepr]
		public struct IEnumMoniker : IUnknown
		{
			public const new Guid IID = .(0x00000102, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumMoniker *self, uint32 celt, IMoniker** rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumMoniker *self, uint32 celt) Skip;
				public function HRESULT(IEnumMoniker *self) Reset;
				public function HRESULT(IEnumMoniker *self, IEnumMoniker** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IRunnableObject : IUnknown
		{
			public const new Guid IID = .(0x00000126, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRunnableObject *self, Guid* lpClsid) GetRunningClass;
				public function HRESULT(IRunnableObject *self, IBindCtx* pbc) Run;
				public function BOOL(IRunnableObject *self) IsRunning;
				public function HRESULT(IRunnableObject *self, BOOL fLock, BOOL fLastUnlockCloses) LockRunning;
				public function HRESULT(IRunnableObject *self, BOOL fContained) SetContainedObject;
			}
		}
		[CRepr]
		public struct IRunningObjectTable : IUnknown
		{
			public const new Guid IID = .(0x00000010, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRunningObjectTable *self, uint32 grfFlags, IUnknown* punkObject, IMoniker* pmkObjectName, uint32* pdwRegister) Register;
				public function HRESULT(IRunningObjectTable *self, uint32 dwRegister) Revoke;
				public function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName) IsRunning;
				public function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName, IUnknown** ppunkObject) GetObject;
				public function HRESULT(IRunningObjectTable *self, uint32 dwRegister, FILETIME* pfiletime) NoteChangeTime;
				public function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName, FILETIME* pfiletime) GetTimeOfLastChange;
				public function HRESULT(IRunningObjectTable *self, IEnumMoniker** ppenumMoniker) EnumRunning;
			}
		}
		[CRepr]
		public struct IPersist : IUnknown
		{
			public const new Guid IID = .(0x0000010c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPersist *self, Guid* pClassID) GetClassID;
			}
		}
		[CRepr]
		public struct IPersistStream : IPersist
		{
			public const new Guid IID = .(0x00000109, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistStream *self) IsDirty;
				public function HRESULT(IPersistStream *self, IStream* pStm) Load;
				public function HRESULT(IPersistStream *self, IStream* pStm, BOOL fClearDirty) Save;
				public function HRESULT(IPersistStream *self, ULARGE_INTEGER* pcbSize) GetSizeMax;
			}
		}
		[CRepr]
		public struct IMoniker : IPersistStream
		{
			public const new Guid IID = .(0x0000000f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersistStream.VTable
			{
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riidResult, void** ppvResult) BindToObject;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riid, void** ppvObj) BindToStorage;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, uint32 dwReduceHowFar, IMoniker** ppmkToLeft, IMoniker** ppmkReduced) Reduce;
				public function HRESULT(IMoniker *self, IMoniker* pmkRight, BOOL fOnlyIfNotGeneric, IMoniker** ppmkComposite) ComposeWith;
				public function HRESULT(IMoniker *self, BOOL fForward, IEnumMoniker** ppenumMoniker) Enum;
				public function HRESULT(IMoniker *self, IMoniker* pmkOtherMoniker) IsEqual;
				public function HRESULT(IMoniker *self, uint32* pdwHash) Hash;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, IMoniker* pmkNewlyRunning) IsRunning;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, FILETIME* pFileTime) GetTimeOfLastChange;
				public function HRESULT(IMoniker *self, IMoniker** ppmk) Inverse;
				public function HRESULT(IMoniker *self, IMoniker* pmkOther, IMoniker** ppmkPrefix) CommonPrefixWith;
				public function HRESULT(IMoniker *self, IMoniker* pmkOther, IMoniker** ppmkRelPath) RelativePathTo;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR* ppszDisplayName) GetDisplayName;
				public function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR pszDisplayName, uint32* pchEaten, IMoniker** ppmkOut) ParseDisplayName;
				public function HRESULT(IMoniker *self, uint32* pdwMksys) IsSystemMoniker;
			}
		}
		[CRepr]
		public struct IROTData : IUnknown
		{
			public const new Guid IID = .(0xf29f6bc0, 0x5021, 0x11ce, 0xaa, 0x15, 0x00, 0x00, 0x69, 0x01, 0x29, 0x3f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IROTData *self, uint8* pbData, uint32 cbMax, uint32* pcbData) GetComparisonData;
			}
		}
		[CRepr]
		public struct IPersistFile : IPersist
		{
			public const new Guid IID = .(0x0000010b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistFile *self) IsDirty;
				public function HRESULT(IPersistFile *self, PWSTR pszFileName, uint32 dwMode) Load;
				public function HRESULT(IPersistFile *self, PWSTR pszFileName, BOOL fRemember) Save;
				public function HRESULT(IPersistFile *self, PWSTR pszFileName) SaveCompleted;
				public function HRESULT(IPersistFile *self, PWSTR* ppszFileName) GetCurFile;
			}
		}
		[CRepr]
		public struct IEnumFORMATETC : IUnknown
		{
			public const new Guid IID = .(0x00000103, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumFORMATETC *self, uint32 celt, FORMATETC* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumFORMATETC *self, uint32 celt) Skip;
				public function HRESULT(IEnumFORMATETC *self) Reset;
				public function HRESULT(IEnumFORMATETC *self, IEnumFORMATETC** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATDATA : IUnknown
		{
			public const new Guid IID = .(0x00000105, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumSTATDATA *self, uint32 celt, STATDATA* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumSTATDATA *self, uint32 celt) Skip;
				public function HRESULT(IEnumSTATDATA *self) Reset;
				public function HRESULT(IEnumSTATDATA *self, IEnumSTATDATA** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x0000010f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(IAdviseSink *self, FORMATETC* pFormatetc, STGMEDIUM* pStgmed) OnDataChange;
				public function void(IAdviseSink *self, uint32 dwAspect, int32 lindex) OnViewChange;
				public function void(IAdviseSink *self, IMoniker* pmk) OnRename;
				public function void(IAdviseSink *self) OnSave;
				public function void(IAdviseSink *self) OnClose;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x00000150, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(AsyncIAdviseSink *self, FORMATETC* pFormatetc, STGMEDIUM* pStgmed) Begin_OnDataChange;
				public function void(AsyncIAdviseSink *self) Finish_OnDataChange;
				public function void(AsyncIAdviseSink *self, uint32 dwAspect, int32 lindex) Begin_OnViewChange;
				public function void(AsyncIAdviseSink *self) Finish_OnViewChange;
				public function void(AsyncIAdviseSink *self, IMoniker* pmk) Begin_OnRename;
				public function void(AsyncIAdviseSink *self) Finish_OnRename;
				public function void(AsyncIAdviseSink *self) Begin_OnSave;
				public function void(AsyncIAdviseSink *self) Finish_OnSave;
				public function void(AsyncIAdviseSink *self) Begin_OnClose;
				public function void(AsyncIAdviseSink *self) Finish_OnClose;
			}
		}
		[CRepr]
		public struct IAdviseSink2 : IAdviseSink
		{
			public const new Guid IID = .(0x00000125, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAdviseSink.VTable
			{
				public function void(IAdviseSink2 *self, IMoniker* pmk) OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink2 : AsyncIAdviseSink
		{
			public const new Guid IID = .(0x00000151, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : AsyncIAdviseSink.VTable
			{
				public function void(AsyncIAdviseSink2 *self, IMoniker* pmk) Begin_OnLinkSrcChange;
				public function void(AsyncIAdviseSink2 *self) Finish_OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct IDataObject : IUnknown
		{
			public const new Guid IID = .(0x0000010e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataObject *self, FORMATETC* pformatetcIn, STGMEDIUM* pmedium) GetData;
				public function HRESULT(IDataObject *self, FORMATETC* pformatetc, STGMEDIUM* pmedium) GetDataHere;
				public function HRESULT(IDataObject *self, FORMATETC* pformatetc) QueryGetData;
				public function HRESULT(IDataObject *self, FORMATETC* pformatectIn, FORMATETC* pformatetcOut) GetCanonicalFormatEtc;
				public function HRESULT(IDataObject *self, FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease) SetData;
				public function HRESULT(IDataObject *self, uint32 dwDirection, IEnumFORMATETC** ppenumFormatEtc) EnumFormatEtc;
				public function HRESULT(IDataObject *self, FORMATETC* pformatetc, uint32 advf, IAdviseSink* pAdvSink, uint32* pdwConnection) DAdvise;
				public function HRESULT(IDataObject *self, uint32 dwConnection) DUnadvise;
				public function HRESULT(IDataObject *self, IEnumSTATDATA** ppenumAdvise) EnumDAdvise;
			}
		}
		[CRepr]
		public struct IDataAdviseHolder : IUnknown
		{
			public const new Guid IID = .(0x00000110, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDataAdviseHolder *self, IDataObject* pDataObject, FORMATETC* pFetc, uint32 advf, IAdviseSink* pAdvise, uint32* pdwConnection) Advise;
				public function HRESULT(IDataAdviseHolder *self, uint32 dwConnection) Unadvise;
				public function HRESULT(IDataAdviseHolder *self, IEnumSTATDATA** ppenumAdvise) EnumAdvise;
				public function HRESULT(IDataAdviseHolder *self, IDataObject* pDataObject, uint32 dwReserved, uint32 advf) SendOnDataChange;
			}
		}
		[CRepr]
		public struct IClassActivator : IUnknown
		{
			public const new Guid IID = .(0x00000140, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IClassActivator *self, Guid* rclsid, uint32 dwClassContext, uint32 locale, Guid* riid, void** ppv) GetClassObject;
			}
		}
		[CRepr]
		public struct IProgressNotify : IUnknown
		{
			public const new Guid IID = .(0xa9d758a0, 0x4617, 0x11cf, 0x95, 0xfc, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProgressNotify *self, uint32 dwProgressCurrent, uint32 dwProgressMaximum, BOOL fAccurate, BOOL fOwner) OnProgress;
			}
		}
		[CRepr]
		public struct IBlockingLock : IUnknown
		{
			public const new Guid IID = .(0x30f3d47a, 0x6447, 0x11d1, 0x8e, 0x3c, 0x00, 0xc0, 0x4f, 0xb9, 0x38, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBlockingLock *self, uint32 dwTimeout) Lock;
				public function HRESULT(IBlockingLock *self) Unlock;
			}
		}
		[CRepr]
		public struct ITimeAndNoticeControl : IUnknown
		{
			public const new Guid IID = .(0xbc0bf6ae, 0x8878, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITimeAndNoticeControl *self, uint32 res1, uint32 res2) SuppressChanges;
			}
		}
		[CRepr]
		public struct IOplockStorage : IUnknown
		{
			public const new Guid IID = .(0x8d19c834, 0x8879, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IOplockStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) CreateStorageEx;
				public function HRESULT(IOplockStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) OpenStorageEx;
			}
		}
		[CRepr]
		public struct IUrlMon : IUnknown
		{
			public const new Guid IID = .(0x00000026, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUrlMon *self, Guid* rclsid, PWSTR pszTYPE, PWSTR pszExt, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR pszCodeBase, IBindCtx* pbc, uint32 dwClassContext, Guid* riid, uint32 flags) AsyncGetClassBits;
			}
		}
		[CRepr]
		public struct IForegroundTransfer : IUnknown
		{
			public const new Guid IID = .(0x00000145, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IForegroundTransfer *self, void* lpvReserved) AllowForegroundTransfer;
			}
		}
		[CRepr]
		public struct IProcessLock : IUnknown
		{
			public const new Guid IID = .(0x000001d5, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint32(IProcessLock *self) AddRefOnProcess;
				public function uint32(IProcessLock *self) ReleaseRefOnProcess;
			}
		}
		[CRepr]
		public struct ISurrogateService : IUnknown
		{
			public const new Guid IID = .(0x000001d4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISurrogateService *self, Guid* rguidProcessID, IProcessLock* pProcessLock, BOOL* pfApplicationAware) Init;
				public function HRESULT(ISurrogateService *self, Guid* rguidApplID, ApplicationType appType) ApplicationLaunch;
				public function HRESULT(ISurrogateService *self, Guid* rguidApplID) ApplicationFree;
				public function HRESULT(ISurrogateService *self, uint32 ulReserved) CatalogRefresh;
				public function HRESULT(ISurrogateService *self, ShutdownType shutdownType) ProcessShutdown;
			}
		}
		[CRepr]
		public struct IInitializeSpy : IUnknown
		{
			public const new Guid IID = .(0x00000034, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInitializeSpy *self, uint32 dwCoInit, uint32 dwCurThreadAptRefs) PreInitialize;
				public function HRESULT(IInitializeSpy *self, HRESULT hrCoInit, uint32 dwCoInit, uint32 dwNewThreadAptRefs) PostInitialize;
				public function HRESULT(IInitializeSpy *self, uint32 dwCurThreadAptRefs) PreUninitialize;
				public function HRESULT(IInitializeSpy *self, uint32 dwNewThreadAptRefs) PostUninitialize;
			}
		}
		[CRepr]
		public struct IServiceProvider : IUnknown
		{
			public const new Guid IID = .(0x6d5140c1, 0x7436, 0x11ce, 0x80, 0x34, 0x00, 0xaa, 0x00, 0x60, 0x09, 0xfa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IServiceProvider *self, Guid* guidService, Guid* riid, void** ppvObject) QueryService;
			}
		}
		[CRepr]
		public struct IEnumGUID : IUnknown
		{
			public const new Guid IID = .(0x0002e000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumGUID *self, uint32 celt, Guid* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumGUID *self, uint32 celt) Skip;
				public function HRESULT(IEnumGUID *self) Reset;
				public function HRESULT(IEnumGUID *self, IEnumGUID** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCATEGORYINFO : IUnknown
		{
			public const new Guid IID = .(0x0002e011, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumCATEGORYINFO *self, uint32 celt, CATEGORYINFO* rgelt, uint32* pceltFetched) Next;
				public function HRESULT(IEnumCATEGORYINFO *self, uint32 celt) Skip;
				public function HRESULT(IEnumCATEGORYINFO *self) Reset;
				public function HRESULT(IEnumCATEGORYINFO *self, IEnumCATEGORYINFO** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ICatRegister : IUnknown
		{
			public const new Guid IID = .(0x0002e012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICatRegister *self, uint32 cCategories, CATEGORYINFO* rgCategoryInfo) RegisterCategories;
				public function HRESULT(ICatRegister *self, uint32 cCategories, Guid* rgcatid) UnRegisterCategories;
				public function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassImplCategories;
				public function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassImplCategories;
				public function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassReqCategories;
				public function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassReqCategories;
			}
		}
		[CRepr]
		public struct ICatInformation : IUnknown
		{
			public const new Guid IID = .(0x0002e013, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICatInformation *self, uint32 lcid, IEnumCATEGORYINFO** ppenumCategoryInfo) EnumCategories;
				public function HRESULT(ICatInformation *self, Guid* rcatid, uint32 lcid, PWSTR* pszDesc) GetCategoryDesc;
				public function HRESULT(ICatInformation *self, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq, IEnumGUID** ppenumClsid) EnumClassesOfCategories;
				public function HRESULT(ICatInformation *self, Guid* rclsid, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq) IsClassOfCategories;
				public function HRESULT(ICatInformation *self, Guid* rclsid, IEnumGUID** ppenumCatid) EnumImplCategoriesOfClass;
				public function HRESULT(ICatInformation *self, Guid* rclsid, IEnumGUID** ppenumCatid) EnumReqCategoriesOfClass;
			}
		}
		[CRepr]
		public struct IContextCallback : IUnknown
		{
			public const new Guid IID = .(0x000001da, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContextCallback *self, PFNCONTEXTCALL pfnCallback, ComCallData* pParam, Guid* riid, int32 iMethod, IUnknown* pUnk) ContextCallback;
			}
		}
		[CRepr]
		public struct IBinding : IUnknown
		{
			public const new Guid IID = .(0x79eac9c0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBinding *self) Abort;
				public function HRESULT(IBinding *self) Suspend;
				public function HRESULT(IBinding *self) Resume;
				public function HRESULT(IBinding *self, int32 nPriority) SetPriority;
				public function HRESULT(IBinding *self, int32* pnPriority) GetPriority;
				public function HRESULT(IBinding *self, Guid* pclsidProtocol, uint32* pdwResult, PWSTR* pszResult, uint32* pdwReserved) GetBindResult;
			}
		}
		[CRepr]
		public struct IBindStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x79eac9c1, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBindStatusCallback *self, uint32 dwReserved, IBinding* pib) OnStartBinding;
				public function HRESULT(IBindStatusCallback *self, int32* pnPriority) GetPriority;
				public function HRESULT(IBindStatusCallback *self, uint32 reserved) OnLowResource;
				public function HRESULT(IBindStatusCallback *self, uint32 ulProgress, uint32 ulProgressMax, uint32 ulStatusCode, PWSTR szStatusText) OnProgress;
				public function HRESULT(IBindStatusCallback *self, HRESULT hresult, PWSTR szError) OnStopBinding;
				public function HRESULT(IBindStatusCallback *self, uint32* grfBINDF, BINDINFO* pbindinfo) GetBindInfo;
				public function HRESULT(IBindStatusCallback *self, uint32 grfBSCF, uint32 dwSize, FORMATETC* pformatetc, STGMEDIUM* pstgmed) OnDataAvailable;
				public function HRESULT(IBindStatusCallback *self, Guid* riid, IUnknown* punk) OnObjectAvailable;
			}
		}
		[CRepr]
		public struct IBindStatusCallbackEx : IBindStatusCallback
		{
			public const new Guid IID = .(0xaaa74ef9, 0x8ee7, 0x4659, 0x88, 0xd9, 0xf8, 0xc5, 0x04, 0xda, 0x73, 0xcc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IBindStatusCallback.VTable
			{
				public function HRESULT(IBindStatusCallbackEx *self, uint32* grfBINDF, BINDINFO* pbindinfo, uint32* grfBINDF2, uint32* pdwReserved) GetBindInfoEx;
			}
		}
		[CRepr]
		public struct IAuthenticate : IUnknown
		{
			public const new Guid IID = .(0x79eac9d0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAuthenticate *self, HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword) Authenticate;
			}
		}
		[CRepr]
		public struct IAuthenticateEx : IAuthenticate
		{
			public const new Guid IID = .(0x2ad1edaf, 0xd83d, 0x48b5, 0x9a, 0xdf, 0x03, 0xdb, 0xe1, 0x9f, 0x53, 0xbd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAuthenticate.VTable
			{
				public function HRESULT(IAuthenticateEx *self, HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword, AUTHENTICATEINFO* pauthinfo) AuthenticateEx;
			}
		}
		[CRepr]
		public struct IUri : IUnknown
		{
			public const new Guid IID = .(0xa39ee748, 0x6a27, 0x4817, 0xa6, 0xf2, 0x13, 0x91, 0x4b, 0xef, 0x58, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUri *self, Uri_PROPERTY uriProp, BSTR* pbstrProperty, uint32 dwFlags) GetPropertyBSTR;
				public function HRESULT(IUri *self, Uri_PROPERTY uriProp, uint32* pcchProperty, uint32 dwFlags) GetPropertyLength;
				public function HRESULT(IUri *self, Uri_PROPERTY uriProp, uint32* pdwProperty, uint32 dwFlags) GetPropertyDWORD;
				public function HRESULT(IUri *self, Uri_PROPERTY uriProp, BOOL* pfHasProperty) HasProperty;
				public function HRESULT(IUri *self, BSTR* pbstrAbsoluteUri) GetAbsoluteUri;
				public function HRESULT(IUri *self, BSTR* pbstrAuthority) GetAuthority;
				public function HRESULT(IUri *self, BSTR* pbstrDisplayString) GetDisplayUri;
				public function HRESULT(IUri *self, BSTR* pbstrDomain) GetDomain;
				public function HRESULT(IUri *self, BSTR* pbstrExtension) GetExtension;
				public function HRESULT(IUri *self, BSTR* pbstrFragment) GetFragment;
				public function HRESULT(IUri *self, BSTR* pbstrHost) GetHost;
				public function HRESULT(IUri *self, BSTR* pbstrPassword) GetPassword;
				public function HRESULT(IUri *self, BSTR* pbstrPath) GetPath;
				public function HRESULT(IUri *self, BSTR* pbstrPathAndQuery) GetPathAndQuery;
				public function HRESULT(IUri *self, BSTR* pbstrQuery) GetQuery;
				public function HRESULT(IUri *self, BSTR* pbstrRawUri) GetRawUri;
				public function HRESULT(IUri *self, BSTR* pbstrSchemeName) GetSchemeName;
				public function HRESULT(IUri *self, BSTR* pbstrUserInfo) GetUserInfo;
				public function HRESULT(IUri *self, BSTR* pbstrUserName) GetUserName;
				public function HRESULT(IUri *self, uint32* pdwHostType) GetHostType;
				public function HRESULT(IUri *self, uint32* pdwPort) GetPort;
				public function HRESULT(IUri *self, uint32* pdwScheme) GetScheme;
				public function HRESULT(IUri *self, uint32* pdwZone) GetZone;
				public function HRESULT(IUri *self, uint32* pdwFlags) GetProperties;
				public function HRESULT(IUri *self, IUri* pUri, BOOL* pfEqual) IsEqual;
			}
		}
		[CRepr]
		public struct IUriBuilder : IUnknown
		{
			public const new Guid IID = .(0x4221b2e1, 0x8955, 0x46c0, 0xbd, 0x5b, 0xde, 0x98, 0x97, 0x56, 0x5d, 0xe7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUriBuilder *self, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUriSimple;
				public function HRESULT(IUriBuilder *self, uint32 dwCreateFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUri;
				public function HRESULT(IUriBuilder *self, uint32 dwCreateFlags, uint32 dwUriBuilderFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUriWithFlags;
				public function HRESULT(IUriBuilder *self, IUri** ppIUri) GetIUri;
				public function HRESULT(IUriBuilder *self, IUri* pIUri) SetIUri;
				public function HRESULT(IUriBuilder *self, uint32* pcchFragment, PWSTR* ppwzFragment) GetFragment;
				public function HRESULT(IUriBuilder *self, uint32* pcchHost, PWSTR* ppwzHost) GetHost;
				public function HRESULT(IUriBuilder *self, uint32* pcchPassword, PWSTR* ppwzPassword) GetPassword;
				public function HRESULT(IUriBuilder *self, uint32* pcchPath, PWSTR* ppwzPath) GetPath;
				public function HRESULT(IUriBuilder *self, BOOL* pfHasPort, uint32* pdwPort) GetPort;
				public function HRESULT(IUriBuilder *self, uint32* pcchQuery, PWSTR* ppwzQuery) GetQuery;
				public function HRESULT(IUriBuilder *self, uint32* pcchSchemeName, PWSTR* ppwzSchemeName) GetSchemeName;
				public function HRESULT(IUriBuilder *self, uint32* pcchUserName, PWSTR* ppwzUserName) GetUserName;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetFragment;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetHost;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetPassword;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetPath;
				public function HRESULT(IUriBuilder *self, BOOL fHasPort, uint32 dwNewValue) SetPort;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetQuery;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetSchemeName;
				public function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetUserName;
				public function HRESULT(IUriBuilder *self, uint32 dwPropertyMask) RemoveProperties;
				public function HRESULT(IUriBuilder *self, BOOL* pfModified) HasBeenModified;
			}
		}
		[CRepr]
		public struct IBindHost : IUnknown
		{
			public const new Guid IID = .(0xfc4801a1, 0x2ba9, 0x11cf, 0xa2, 0x29, 0x00, 0xaa, 0x00, 0x3d, 0x73, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBindHost *self, PWSTR szName, IBindCtx* pBC, IMoniker** ppmk, uint32 dwReserved) CreateMoniker;
				public function HRESULT(IBindHost *self, IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) MonikerBindToStorage;
				public function HRESULT(IBindHost *self, IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) MonikerBindToObject;
			}
		}
		[CRepr]
		public struct IDispatch : IUnknown
		{
			public const new Guid IID = .(0x00020400, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IDispatch *self, uint32* pctinfo) GetTypeInfoCount;
				public function HRESULT(IDispatch *self, uint32 iTInfo, uint32 lcid, ITypeInfo** ppTInfo) GetTypeInfo;
				public function HRESULT(IDispatch *self, Guid* riid, PWSTR* rgszNames, uint32 cNames, uint32 lcid, int32* rgDispId) GetIDsOfNames;
				public function HRESULT(IDispatch *self, int32 dispIdMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) Invoke;
			}
		}
		[CRepr]
		public struct ITypeComp : IUnknown
		{
			public const new Guid IID = .(0x00020403, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITypeComp *self, PWSTR szName, uint32 lHashVal, uint16 wFlags, ITypeInfo** ppTInfo, DESCKIND* pDescKind, BINDPTR* pBindPtr) Bind;
				public function HRESULT(ITypeComp *self, PWSTR szName, uint32 lHashVal, ITypeInfo** ppTInfo, ITypeComp** ppTComp) BindType;
			}
		}
		[CRepr]
		public struct ITypeInfo : IUnknown
		{
			public const new Guid IID = .(0x00020401, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITypeInfo *self, TYPEATTR** ppTypeAttr) GetTypeAttr;
				public function HRESULT(ITypeInfo *self, ITypeComp** ppTComp) GetTypeComp;
				public function HRESULT(ITypeInfo *self, uint32 index, FUNCDESC** ppFuncDesc) GetFuncDesc;
				public function HRESULT(ITypeInfo *self, uint32 index, VARDESC** ppVarDesc) GetVarDesc;
				public function HRESULT(ITypeInfo *self, int32 memid, BSTR* rgBstrNames, uint32 cMaxNames, uint32* pcNames) GetNames;
				public function HRESULT(ITypeInfo *self, uint32 index, uint32* pRefType) GetRefTypeOfImplType;
				public function HRESULT(ITypeInfo *self, uint32 index, int32* pImplTypeFlags) GetImplTypeFlags;
				public function HRESULT(ITypeInfo *self, PWSTR* rgszNames, uint32 cNames, int32* pMemId) GetIDsOfNames;
				public function HRESULT(ITypeInfo *self, void* pvInstance, int32 memid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) Invoke;
				public function HRESULT(ITypeInfo *self, int32 memid, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public function HRESULT(ITypeInfo *self, int32 memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, uint16* pwOrdinal) GetDllEntry;
				public function HRESULT(ITypeInfo *self, uint32 hRefType, ITypeInfo** ppTInfo) GetRefTypeInfo;
				public function HRESULT(ITypeInfo *self, int32 memid, INVOKEKIND invKind, void** ppv) AddressOfMember;
				public function HRESULT(ITypeInfo *self, IUnknown* pUnkOuter, Guid* riid, void** ppvObj) CreateInstance;
				public function HRESULT(ITypeInfo *self, int32 memid, BSTR* pBstrMops) GetMops;
				public function HRESULT(ITypeInfo *self, ITypeLib** ppTLib, uint32* pIndex) GetContainingTypeLib;
				public function void(ITypeInfo *self, TYPEATTR* pTypeAttr) ReleaseTypeAttr;
				public function void(ITypeInfo *self, FUNCDESC* pFuncDesc) ReleaseFuncDesc;
				public function void(ITypeInfo *self, VARDESC* pVarDesc) ReleaseVarDesc;
			}
		}
		[CRepr]
		public struct ITypeInfo2 : ITypeInfo
		{
			public const new Guid IID = .(0x00020412, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITypeInfo.VTable
			{
				public function HRESULT(ITypeInfo2 *self, TYPEKIND* pTypeKind) GetTypeKind;
				public function HRESULT(ITypeInfo2 *self, uint32* pTypeFlags) GetTypeFlags;
				public function HRESULT(ITypeInfo2 *self, int32 memid, INVOKEKIND invKind, uint32* pFuncIndex) GetFuncIndexOfMemId;
				public function HRESULT(ITypeInfo2 *self, int32 memid, uint32* pVarIndex) GetVarIndexOfMemId;
				public function HRESULT(ITypeInfo2 *self, Guid* guid, VARIANT* pVarVal) GetCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetFuncCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 indexFunc, uint32 indexParam, Guid* guid, VARIANT* pVarVal) GetParamCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetVarCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetImplTypeCustData;
				public function HRESULT(ITypeInfo2 *self, int32 memid, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public function HRESULT(ITypeInfo2 *self, CUSTDATA* pCustData) GetAllCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllFuncCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 indexFunc, uint32 indexParam, CUSTDATA* pCustData) GetAllParamCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllVarCustData;
				public function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllImplTypeCustData;
			}
		}
		[CRepr]
		public struct ITypeLib : IUnknown
		{
			public const new Guid IID = .(0x00020402, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function uint32(ITypeLib *self) GetTypeInfoCount;
				public function HRESULT(ITypeLib *self, uint32 index, ITypeInfo** ppTInfo) GetTypeInfo;
				public function HRESULT(ITypeLib *self, uint32 index, TYPEKIND* pTKind) GetTypeInfoType;
				public function HRESULT(ITypeLib *self, Guid* guid, ITypeInfo** ppTinfo) GetTypeInfoOfGuid;
				public function HRESULT(ITypeLib *self, TLIBATTR** ppTLibAttr) GetLibAttr;
				public function HRESULT(ITypeLib *self, ITypeComp** ppTComp) GetTypeComp;
				public function HRESULT(ITypeLib *self, int32 index, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public function HRESULT(ITypeLib *self, PWSTR szNameBuf, uint32 lHashVal, BOOL* pfName) IsName;
				public function HRESULT(ITypeLib *self, PWSTR szNameBuf, uint32 lHashVal, ITypeInfo** ppTInfo, int32* rgMemId, uint16* pcFound) FindName;
				public function void(ITypeLib *self, TLIBATTR* pTLibAttr) ReleaseTLibAttr;
			}
		}
		[CRepr]
		public struct ITypeLib2 : ITypeLib
		{
			public const new Guid IID = .(0x00020411, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ITypeLib.VTable
			{
				public function HRESULT(ITypeLib2 *self, Guid* guid, VARIANT* pVarVal) GetCustData;
				public function HRESULT(ITypeLib2 *self, uint32* pcUniqueNames, uint32* pcchUniqueNames) GetLibStatistics;
				public function HRESULT(ITypeLib2 *self, int32 index, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public function HRESULT(ITypeLib2 *self, CUSTDATA* pCustData) GetAllCustData;
			}
		}
		[CRepr]
		public struct IErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x1cf2b120, 0x547d, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IErrorInfo *self, Guid* pGUID) GetGUID;
				public function HRESULT(IErrorInfo *self, BSTR* pBstrSource) GetSource;
				public function HRESULT(IErrorInfo *self, BSTR* pBstrDescription) GetDescription;
				public function HRESULT(IErrorInfo *self, BSTR* pBstrHelpFile) GetHelpFile;
				public function HRESULT(IErrorInfo *self, uint32* pdwHelpContext) GetHelpContext;
			}
		}
		[CRepr]
		public struct ISupportErrorInfo : IUnknown
		{
			public const new Guid IID = .(0xdf0b3d60, 0x548f, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISupportErrorInfo *self, Guid* riid) InterfaceSupportsErrorInfo;
			}
		}
		[CRepr]
		public struct IErrorLog : IUnknown
		{
			public const new Guid IID = .(0x3127ca40, 0x446e, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IErrorLog *self, PWSTR pszPropName, EXCEPINFO* pExcepInfo) AddError;
			}
		}
		[CRepr]
		public struct ITypeLibRegistrationReader : IUnknown
		{
			public const new Guid IID = .(0xed6a8a2a, 0xb160, 0x4e77, 0x8f, 0x73, 0xaa, 0x74, 0x35, 0xcd, 0x5c, 0x27);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITypeLibRegistrationReader *self, IEnumUnknown** ppEnumUnknown) EnumTypeLibRegistrations;
			}
		}
		[CRepr]
		public struct ITypeLibRegistration : IUnknown
		{
			public const new Guid IID = .(0x76a3e735, 0x02df, 0x4a12, 0x98, 0xeb, 0x04, 0x3a, 0xd3, 0x60, 0x0a, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITypeLibRegistration *self, Guid* pGuid) GetGuid;
				public function HRESULT(ITypeLibRegistration *self, BSTR* pVersion) GetVersion;
				public function HRESULT(ITypeLibRegistration *self, uint32* pLcid) GetLcid;
				public function HRESULT(ITypeLibRegistration *self, BSTR* pWin32Path) GetWin32Path;
				public function HRESULT(ITypeLibRegistration *self, BSTR* pWin64Path) GetWin64Path;
				public function HRESULT(ITypeLibRegistration *self, BSTR* pDisplayName) GetDisplayName;
				public function HRESULT(ITypeLibRegistration *self, uint32* pFlags) GetFlags;
				public function HRESULT(ITypeLibRegistration *self, BSTR* pHelpDir) GetHelpDir;
			}
		}
		[CRepr]
		public struct IEnumConnections : IUnknown
		{
			public const new Guid IID = .(0xb196b287, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumConnections *self, uint32 cConnections, CONNECTDATA* rgcd, uint32* pcFetched) Next;
				public function HRESULT(IEnumConnections *self, uint32 cConnections) Skip;
				public function HRESULT(IEnumConnections *self) Reset;
				public function HRESULT(IEnumConnections *self, IEnumConnections** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPoint : IUnknown
		{
			public const new Guid IID = .(0xb196b286, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConnectionPoint *self, Guid* pIID) GetConnectionInterface;
				public function HRESULT(IConnectionPoint *self, IConnectionPointContainer** ppCPC) GetConnectionPointContainer;
				public function HRESULT(IConnectionPoint *self, IUnknown* pUnkSink, uint32* pdwCookie) Advise;
				public function HRESULT(IConnectionPoint *self, uint32 dwCookie) Unadvise;
				public function HRESULT(IConnectionPoint *self, IEnumConnections** ppEnum) EnumConnections;
			}
		}
		[CRepr]
		public struct IEnumConnectionPoints : IUnknown
		{
			public const new Guid IID = .(0xb196b285, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IEnumConnectionPoints *self, uint32 cConnections, IConnectionPoint** ppCP, uint32* pcFetched) Next;
				public function HRESULT(IEnumConnectionPoints *self, uint32 cConnections) Skip;
				public function HRESULT(IEnumConnectionPoints *self) Reset;
				public function HRESULT(IEnumConnectionPoints *self, IEnumConnectionPoints** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPointContainer : IUnknown
		{
			public const new Guid IID = .(0xb196b284, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConnectionPointContainer *self, IEnumConnectionPoints** ppEnum) EnumConnectionPoints;
				public function HRESULT(IConnectionPointContainer *self, Guid* riid, IConnectionPoint** ppCP) FindConnectionPoint;
			}
		}
		[CRepr]
		public struct IPersistMemory : IPersist
		{
			public const new Guid IID = .(0xbd1ae5e0, 0xa6ae, 0x11ce, 0xbd, 0x37, 0x50, 0x42, 0x00, 0xc1, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistMemory *self) IsDirty;
				public function HRESULT(IPersistMemory *self, void* pMem, uint32 cbSize) Load;
				public function HRESULT(IPersistMemory *self, void* pMem, BOOL fClearDirty, uint32 cbSize) Save;
				public function HRESULT(IPersistMemory *self, uint32* pCbSize) GetSizeMax;
				public function HRESULT(IPersistMemory *self) InitNew;
			}
		}
		[CRepr]
		public struct IPersistStreamInit : IPersist
		{
			public const new Guid IID = .(0x7fd52380, 0x4e07, 0x101b, 0xae, 0x2d, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public function HRESULT(IPersistStreamInit *self) IsDirty;
				public function HRESULT(IPersistStreamInit *self, IStream* pStm) Load;
				public function HRESULT(IPersistStreamInit *self, IStream* pStm, BOOL fClearDirty) Save;
				public function HRESULT(IPersistStreamInit *self, ULARGE_INTEGER* pCbSize) GetSizeMax;
				public function HRESULT(IPersistStreamInit *self) InitNew;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoBuildVersion();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitialize(void* pvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterMallocSpy(IMallocSpy* pMallocSpy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeMallocSpy();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterInitializeSpy(IInitializeSpy* pSpy, ULARGE_INTEGER* puliCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeInitializeSpy(ULARGE_INTEGER uliCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetSystemSecurityPermissions(COMSD comSDType, SECURITY_DESCRIPTOR** ppSD);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE CoLoadLibrary(PWSTR lpszLibName, BOOL bAutoFree);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeLibrary(HINSTANCE hInst);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeAllLibraries();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoAllowSetForegroundWindow(IUnknown* pUnk, void* lpvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DcomChannelSetHResult(void* pvReserved, uint32* pulReserved, HRESULT appsHR);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoIsOle1Class(Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromProgIDEx(PWSTR lpszProgID, Guid* lpclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoFileTimeToDosDateTime(FILETIME* lpFileTime, uint16* lpDosDate, uint16* lpDosTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoDosDateTimeToFileTime(uint16 nDosDate, uint16 nDosTime, FILETIME* lpFileTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoFileTimeNow(FILETIME* lpFileTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterChannelHook(Guid* ExtensionUuid, IChannelHook* pChannelHook);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoTreatAsClass(Guid* clsidOld, Guid* clsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataAdviseHolder(IDataAdviseHolder** ppDAHolder);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataCache(IUnknown* pUnkOuter, Guid* rclsid, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInstall(IBindCtx* pbc, uint32 dwFlags, uCLSSPEC* pClassSpec, QUERYCONTEXT* pQuery, PWSTR pszCodeBase);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BindMoniker(IMoniker* pmk, uint32 grfOpt, Guid* iidResult, void** ppvResult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetObject(PWSTR pszName, BIND_OPTS* pBindOptions, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MkParseDisplayName(IBindCtx* pbc, PWSTR szUserName, uint32* pchEaten, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerRelativePathTo(IMoniker* pmkSrc, IMoniker* pmkDest, IMoniker** ppmkRelPath, BOOL dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerCommonPrefixWith(IMoniker* pmkThis, IMoniker* pmkOther, IMoniker** ppmkCommon);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateBindCtx(uint32 reserved, IBindCtx** ppbc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateGenericComposite(IMoniker* pmkFirst, IMoniker* pmkRest, IMoniker** ppmkComposite);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetClassFile(PWSTR szFilename, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateClassMoniker(Guid* rclsid, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateFileMoniker(PWSTR lpszPathName, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateItemMoniker(PWSTR lpszDelim, PWSTR lpszItem, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAntiMoniker(IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePointerMoniker(IUnknown* punk, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateObjrefMoniker(IUnknown* punk, IMoniker** ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRunningObjectTable(uint32 reserved, IRunningObjectTable** pprot);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdProgressIndicator(HWND hwndParent, PWSTR pszTitle, IBindStatusCallback* pIbscCaller, IBindStatusCallback** ppIbsc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetMalloc(uint32 dwMemContext, IMalloc** ppMalloc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoUninitialize();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoGetCurrentProcess();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitializeEx(void* pvReserved, COINIT dwCoInit);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCallerTID(uint32* lpdwTID);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCurrentLogicalThreadId(Guid* pguid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetContextToken(uint* pToken);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetApartmentType(APTTYPE* pAptType, APTTYPEQUALIFIER* pAptQualifier);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoIncrementMTAUsage(CO_MTA_USAGE_COOKIE* pCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDecrementMTAUsage(CO_MTA_USAGE_COOKIE Cookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoAllowUnmarshalerCLSID(Guid* clsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetObjectContext(Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetClassObject(Guid* rclsid, CLSCTX dwClsContext, void* pvReserved, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterClassObject(Guid* rclsid, IUnknown* pUnk, CLSCTX dwClsContext, uint32 flags, uint32* lpdwRegister);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeClassObject(uint32 dwRegister);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoResumeClassObjects();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSuspendClassObjects();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoAddRefServerProcess();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoReleaseServerProcess();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetPSClsid(Guid* riid, Guid* pClsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterPSClsid(Guid* riid, Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterSurrogate(ISurrogate* pSurrogate);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisconnectObject(IUnknown* pUnk, uint32 dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoLockObjectExternal(IUnknown* pUnk, BOOL fLock, BOOL fLastUnlockReleases);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoIsHandlerConnected(IUnknown* pUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateFreeThreadedMarshaler(IUnknown* punkOuter, IUnknown** ppunkMarshal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeUnusedLibraries();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeUnusedLibrariesEx(uint32 dwUnloadDelay, uint32 dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisconnectContext(uint32 dwTimeout);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitializeSecurity(SECURITY_DESCRIPTOR* pSecDesc, int32 cAuthSvc, SOLE_AUTHENTICATION_SERVICE* asAuthSvc, void* pReserved1, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthList, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities, void* pReserved3);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCallContext(Guid* riid, void** ppInterface);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryProxyBlanket(IUnknown* pProxy, uint32* pwAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pAuthInfo, uint32* pCapabilites);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSetProxyBlanket(IUnknown* pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCopyProxy(IUnknown* pProxy, IUnknown** ppCopy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryClientBlanket(uint32* pAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoImpersonateClient();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevertToSelf();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryAuthenticationServices(uint32* pcAuthSvc, SOLE_AUTHENTICATION_SERVICE** asAuthSvc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSwitchCallContext(IUnknown* pNewObject, IUnknown** ppOldObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstance(Guid* rclsid, IUnknown* pUnkOuter, CLSCTX dwClsContext, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceEx(Guid* Clsid, IUnknown* punkOuter, CLSCTX dwClsCtx, COSERVERINFO* pServerInfo, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceFromApp(Guid* Clsid, IUnknown* punkOuter, CLSCTX dwClsCtx, void* reserved, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterActivationFilter(IActivationFilter* pActivationFilter);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCancelObject(uint32 dwThreadId, Guid* iid, void** ppUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSetCancelObject(IUnknown* pUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCancelCall(uint32 dwThreadId, uint32 ulTimeout);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoTestCancel();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoEnableCallCancellation(void* pReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisableCallCancellation(void* pReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StringFromCLSID(Guid* rclsid, PWSTR* lplpsz);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromString(PWSTR lpsz, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StringFromIID(Guid* rclsid, PWSTR* lplpsz);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IIDFromString(PWSTR lpsz, Guid* lpiid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProgIDFromCLSID(Guid* clsid, PWSTR* lplpszProgID);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromProgID(PWSTR lpszProgID, Guid* lpclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StringFromGUID2(Guid* rguid, char16* lpsz, int32 cchMax);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateGuid(Guid* pguid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoWaitForMultipleHandles(uint32 dwFlags, uint32 dwTimeout, uint32 cHandles, HANDLE* pHandles, uint32* lpdwindex);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoWaitForMultipleObjects(uint32 dwFlags, uint32 dwTimeout, uint32 cHandles, HANDLE* pHandles, uint32* lpdwindex);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetTreatAsClass(Guid* clsidOld, Guid* pClsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInvalidateRemoteMachineBindings(PWSTR pszMachineName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CoTaskMemAlloc(uint cb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CoTaskMemRealloc(void* pv, uint cb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoTaskMemFree(void* pv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterDeviceCatalog(PWSTR deviceInstanceId, CO_DEVICE_CATALOG_COOKIE* cookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeDeviceCatalog(CO_DEVICE_CATALOG_COOKIE cookie);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUri(PWSTR pwzURI, URI_CREATE_FLAGS dwFlags, uint dwReserved, IUri** ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriWithFragment(PWSTR pwzURI, PWSTR pwzFragment, uint32 dwFlags, uint dwReserved, IUri** ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriFromMultiByteString(PSTR pszANSIInputUri, uint32 dwEncodingFlags, uint32 dwCodePage, uint32 dwCreateFlags, uint dwReserved, IUri** ppUri);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateIUriBuilder(IUri* pIUri, uint32 dwFlags, uint dwReserved, IUriBuilder** ppIUriBuilder);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetErrorInfo(uint32 dwReserved, IErrorInfo* perrinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetErrorInfo(uint32 dwReserved, IErrorInfo** pperrinfo);
		
	}
}
