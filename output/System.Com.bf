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
			public IUnknown pItf;
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
			public IAdviseSink pAdvSink;
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
			public IUnknown pUnkForRelease;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HBITMAP hBitmap;
				public void* hMetaFilePict;
				public HENHMETAFILE hEnhMetaFile;
				public int hGlobal;
				public PWSTR lpszFileName;
				public IStream pstm;
				public IStorage pstg;
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
			public IUnknown pUnkForRelease;
			
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
			public IUnknown pUnk;
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
			public IUnknown pUnk;
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
						public IUnknown punkVal;
						public IDispatch pdispVal;
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
						public IUnknown* ppunkVal;
						public IDispatch* ppdispVal;
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
							public IRecordInfo pRecInfo;
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
			public ITypeComp lptcomp;
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
			public IUnknown pUnk;
			public uint32 dwCookie;
		}
		
		// --- COM Interfaces ---
		
		public struct IUnknown {}
		public struct AsyncIUnknown {}
		public struct IClassFactory {}
		public struct INoMarshal {}
		public struct IAgileObject {}
		public struct IActivationFilter {}
		public struct IMalloc {}
		public struct IStdMarshalInfo {}
		public struct IExternalConnection {}
		public struct IMultiQI {}
		public struct AsyncIMultiQI {}
		public struct IInternalUnknown {}
		public struct IEnumUnknown {}
		public struct IEnumString {}
		public struct ISequentialStream {}
		public struct IStream {}
		public struct IRpcChannelBuffer {}
		public struct IRpcChannelBuffer2 {}
		public struct IAsyncRpcChannelBuffer {}
		public struct IRpcChannelBuffer3 {}
		public struct IRpcSyntaxNegotiate {}
		public struct IRpcProxyBuffer {}
		public struct IRpcStubBuffer {}
		public struct IPSFactoryBuffer {}
		public struct IChannelHook {}
		public struct IClientSecurity {}
		public struct IServerSecurity {}
		public struct IRpcOptions {}
		public struct IGlobalOptions {}
		public struct ISurrogate {}
		public struct IGlobalInterfaceTable {}
		public struct ISynchronize {}
		public struct ISynchronizeHandle {}
		public struct ISynchronizeEvent {}
		public struct ISynchronizeContainer {}
		public struct ISynchronizeMutex {}
		public struct ICancelMethodCalls {}
		public struct IAsyncManager {}
		public struct ICallFactory {}
		public struct IRpcHelper {}
		public struct IReleaseMarshalBuffers {}
		public struct IWaitMultiple {}
		public struct IAddrTrackingControl {}
		public struct IAddrExclusionControl {}
		public struct IPipeByte {}
		public struct AsyncIPipeByte {}
		public struct IPipeLong {}
		public struct AsyncIPipeLong {}
		public struct IPipeDouble {}
		public struct AsyncIPipeDouble {}
		public struct IComThreadingInfo {}
		public struct IProcessInitControl {}
		public struct IFastRundown {}
		public struct IMachineGlobalObjectTable {}
		public struct IMallocSpy {}
		public struct IBindCtx {}
		public struct IEnumMoniker {}
		public struct IRunnableObject {}
		public struct IRunningObjectTable {}
		public struct IPersist {}
		public struct IPersistStream {}
		public struct IMoniker {}
		public struct IROTData {}
		public struct IPersistFile {}
		public struct IEnumFORMATETC {}
		public struct IEnumSTATDATA {}
		public struct IAdviseSink {}
		public struct AsyncIAdviseSink {}
		public struct IAdviseSink2 {}
		public struct AsyncIAdviseSink2 {}
		public struct IDataObject {}
		public struct IDataAdviseHolder {}
		public struct IClassActivator {}
		public struct IProgressNotify {}
		public struct IBlockingLock {}
		public struct ITimeAndNoticeControl {}
		public struct IOplockStorage {}
		public struct IUrlMon {}
		public struct IForegroundTransfer {}
		public struct IProcessLock {}
		public struct ISurrogateService {}
		public struct IInitializeSpy {}
		public struct IServiceProvider {}
		public struct IEnumGUID {}
		public struct IEnumCATEGORYINFO {}
		public struct ICatRegister {}
		public struct ICatInformation {}
		public struct IContextCallback {}
		public struct IBinding {}
		public struct IBindStatusCallback {}
		public struct IBindStatusCallbackEx {}
		public struct IAuthenticate {}
		public struct IAuthenticateEx {}
		public struct IUri {}
		public struct IUriBuilder {}
		public struct IBindHost {}
		public struct IDispatch {}
		public struct ITypeComp {}
		public struct ITypeInfo {}
		public struct ITypeInfo2 {}
		public struct ITypeLib {}
		public struct ITypeLib2 {}
		public struct IErrorInfo {}
		public struct ISupportErrorInfo {}
		public struct IErrorLog {}
		public struct ITypeLibRegistrationReader {}
		public struct ITypeLibRegistration {}
		public struct IEnumConnections {}
		public struct IConnectionPoint {}
		public struct IEnumConnectionPoints {}
		public struct IConnectionPointContainer {}
		public struct IPersistMemory {}
		public struct IPersistStreamInit {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoBuildVersion();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitialize(void* pvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterMallocSpy(IMallocSpy pMallocSpy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeMallocSpy();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterInitializeSpy(IInitializeSpy pSpy, ULARGE_INTEGER* puliCookie);
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
		public static extern HRESULT CoAllowSetForegroundWindow(IUnknown pUnk, void* lpvReserved);
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
		public static extern HRESULT CoRegisterChannelHook(Guid* ExtensionUuid, IChannelHook pChannelHook);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoTreatAsClass(Guid* clsidOld, Guid* clsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataAdviseHolder(IDataAdviseHolder* ppDAHolder);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataCache(IUnknown pUnkOuter, Guid* rclsid, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInstall(IBindCtx pbc, uint32 dwFlags, uCLSSPEC* pClassSpec, QUERYCONTEXT* pQuery, PWSTR pszCodeBase);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BindMoniker(IMoniker pmk, uint32 grfOpt, Guid* iidResult, void** ppvResult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetObject(PWSTR pszName, BIND_OPTS* pBindOptions, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MkParseDisplayName(IBindCtx pbc, PWSTR szUserName, uint32* pchEaten, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerRelativePathTo(IMoniker pmkSrc, IMoniker pmkDest, IMoniker* ppmkRelPath, BOOL dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerCommonPrefixWith(IMoniker pmkThis, IMoniker pmkOther, IMoniker* ppmkCommon);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateBindCtx(uint32 reserved, IBindCtx* ppbc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateGenericComposite(IMoniker pmkFirst, IMoniker pmkRest, IMoniker* ppmkComposite);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetClassFile(PWSTR szFilename, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateClassMoniker(Guid* rclsid, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateFileMoniker(PWSTR lpszPathName, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateItemMoniker(PWSTR lpszDelim, PWSTR lpszItem, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAntiMoniker(IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePointerMoniker(IUnknown punk, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateObjrefMoniker(IUnknown punk, IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRunningObjectTable(uint32 reserved, IRunningObjectTable* pprot);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdProgressIndicator(HWND hwndParent, PWSTR pszTitle, IBindStatusCallback pIbscCaller, IBindStatusCallback* ppIbsc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetMalloc(uint32 dwMemContext, IMalloc* ppMalloc);
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
		public static extern HRESULT CoRegisterClassObject(Guid* rclsid, IUnknown pUnk, CLSCTX dwClsContext, uint32 flags, uint32* lpdwRegister);
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
		public static extern HRESULT CoRegisterSurrogate(ISurrogate pSurrogate);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisconnectObject(IUnknown pUnk, uint32 dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoLockObjectExternal(IUnknown pUnk, BOOL fLock, BOOL fLastUnlockReleases);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoIsHandlerConnected(IUnknown pUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateFreeThreadedMarshaler(IUnknown punkOuter, IUnknown* ppunkMarshal);
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
		public static extern HRESULT CoQueryProxyBlanket(IUnknown pProxy, uint32* pwAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pAuthInfo, uint32* pCapabilites);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSetProxyBlanket(IUnknown pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCopyProxy(IUnknown pProxy, IUnknown* ppCopy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryClientBlanket(uint32* pAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoImpersonateClient();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevertToSelf();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryAuthenticationServices(uint32* pcAuthSvc, SOLE_AUTHENTICATION_SERVICE** asAuthSvc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSwitchCallContext(IUnknown pNewObject, IUnknown* ppOldObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstance(Guid* rclsid, IUnknown pUnkOuter, CLSCTX dwClsContext, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceEx(Guid* Clsid, IUnknown punkOuter, CLSCTX dwClsCtx, COSERVERINFO* pServerInfo, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceFromApp(Guid* Clsid, IUnknown punkOuter, CLSCTX dwClsCtx, void* reserved, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterActivationFilter(IActivationFilter pActivationFilter);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCancelObject(uint32 dwThreadId, Guid* iid, void** ppUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSetCancelObject(IUnknown pUnk);
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
		public static extern HRESULT CreateUri(PWSTR pwzURI, URI_CREATE_FLAGS dwFlags, uint dwReserved, IUri* ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriWithFragment(PWSTR pwzURI, PWSTR pwzFragment, uint32 dwFlags, uint dwReserved, IUri* ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriFromMultiByteString(PSTR pszANSIInputUri, uint32 dwEncodingFlags, uint32 dwCodePage, uint32 dwCreateFlags, uint dwReserved, IUri* ppUri);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateIUriBuilder(IUri pIUri, uint32 dwFlags, uint dwReserved, IUriBuilder* ppIUriBuilder);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetErrorInfo(uint32 dwReserved, IErrorInfo perrinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetErrorInfo(uint32 dwReserved, IErrorInfo* pperrinfo);
		
	}
}
