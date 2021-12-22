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
		
		public enum URI_CREATE_FLAGS : uint32
		{
			ALLOW_RELATIVE = 1,
			ALLOW_IMPLICIT_WILDCARD_SCHEME = 2,
			ALLOW_IMPLICIT_FILE_SCHEME = 4,
			NOFRAG = 8,
			NO_CANONICALIZE = 16,
			CANONICALIZE = 256,
			FILE_USE_DOS_PATH = 32,
			DECODE_EXTRA_INFO = 64,
			NO_DECODE_EXTRA_INFO = 128,
			CRACK_UNKNOWN_SCHEMES = 512,
			NO_CRACK_UNKNOWN_SCHEMES = 1024,
			PRE_PROCESS_HTML_URI = 2048,
			NO_PRE_PROCESS_HTML_URI = 4096,
			IE_SETTINGS = 8192,
			NO_IE_SETTINGS = 16384,
			NO_ENCODE_FORBIDDEN_CHARACTERS = 32768,
			NORMALIZE_INTL_CHARACTERS = 65536,
			CANONICALIZE_ABSOLUTE = 131072,
		}
		public enum RPC_C_AUTHN_LEVEL : uint32
		{
			DEFAULT = 0,
			NONE = 1,
			CONNECT = 2,
			CALL = 3,
			PKT = 4,
			PKT_INTEGRITY = 5,
			PKT_PRIVACY = 6,
		}
		public enum RPC_C_IMP_LEVEL : uint32
		{
			DEFAULT = 0,
			ANONYMOUS = 1,
			IDENTIFY = 2,
			IMPERSONATE = 3,
			DELEGATE = 4,
		}
		public enum DVASPECT : int32
		{
			CONTENT = 1,
			THUMBNAIL = 2,
			ICON = 4,
			DOCPRINT = 8,
		}
		public enum TYSPEC : int32
		{
			CLSID = 0,
			FILEEXT = 1,
			MIMETYPE = 2,
			FILENAME = 3,
			PROGID = 4,
			PACKAGENAME = 5,
			OBJECTID = 6,
		}
		public enum REGCLS : int32
		{
			SINGLEUSE = 0,
			MULTIPLEUSE = 1,
			MULTI_SEPARATE = 2,
			SUSPENDED = 4,
			SURROGATE = 8,
			AGILE = 16,
		}
		public enum COINITBASE : int32
		{
			COINITBASE_MULTITHREADED = 0,
		}
		public enum MEMCTX : int32
		{
			TASK = 1,
			SHARED = 2,
			MACSYSTEM = 3,
			UNKNOWN = -1,
			SAME = -2,
		}
		[AllowDuplicates]
		public enum CLSCTX : uint32
		{
			INPROC_SERVER = 1,
			INPROC_HANDLER = 2,
			LOCAL_SERVER = 4,
			INPROC_SERVER16 = 8,
			REMOTE_SERVER = 16,
			INPROC_HANDLER16 = 32,
			RESERVED1 = 64,
			RESERVED2 = 128,
			RESERVED3 = 256,
			RESERVED4 = 512,
			NO_CODE_DOWNLOAD = 1024,
			RESERVED5 = 2048,
			NO_CUSTOM_MARSHAL = 4096,
			ENABLE_CODE_DOWNLOAD = 8192,
			NO_FAILURE_LOG = 16384,
			DISABLE_AAA = 32768,
			ENABLE_AAA = 65536,
			FROM_DEFAULT_CONTEXT = 131072,
			ACTIVATE_X86_SERVER = 262144,
			ACTIVATE_32_BIT_SERVER = 262144,
			ACTIVATE_64_BIT_SERVER = 524288,
			ENABLE_CLOAKING = 1048576,
			APPCONTAINER = 4194304,
			ACTIVATE_AAA_AS_IU = 8388608,
			RESERVED6 = 16777216,
			ACTIVATE_ARM32_SERVER = 33554432,
			PS_DLL = 2147483648,
			ALL = 23,
			SERVER = 21,
		}
		public enum MSHLFLAGS : int32
		{
			NORMAL = 0,
			TABLESTRONG = 1,
			TABLEWEAK = 2,
			NOPING = 4,
			RESERVED1 = 8,
			RESERVED2 = 16,
			RESERVED3 = 32,
			RESERVED4 = 64,
		}
		public enum MSHCTX : int32
		{
			LOCAL = 0,
			NOSHAREDMEM = 1,
			DIFFERENTMACHINE = 2,
			INPROC = 3,
			CROSSCTX = 4,
			CONTAINER = 5,
		}
		public enum EXTCONN : int32
		{
			STRONG = 1,
			WEAK = 2,
			CALLABLE = 4,
		}
		public enum STGTY : int32
		{
			STORAGE = 1,
			STREAM = 2,
			LOCKBYTES = 3,
			PROPERTY = 4,
		}
		public enum STREAM_SEEK : uint32
		{
			SET = 0,
			CUR = 1,
			END = 2,
		}
		public enum EOLE_AUTHENTICATION_CAPABILITIES : int32
		{
			NONE = 0,
			MUTUAL_AUTH = 1,
			STATIC_CLOAKING = 32,
			DYNAMIC_CLOAKING = 64,
			ANY_AUTHORITY = 128,
			MAKE_FULLSIC = 256,
			DEFAULT = 2048,
			SECURE_REFS = 2,
			ACCESS_CONTROL = 4,
			APPID = 8,
			DYNAMIC = 16,
			REQUIRE_FULLSIC = 512,
			AUTO_IMPERSONATE = 1024,
			DISABLE_AAA = 4096,
			NO_CUSTOM_MARSHAL = 8192,
			RESERVED1 = 16384,
		}
		public enum RPCOPT_PROPERTIES : int32
		{
			RPCTIMEOUT = 1,
			SERVER_LOCALITY = 2,
			RESERVED1 = 4,
			RESERVED2 = 5,
			RESERVED3 = 8,
			RESERVED4 = 16,
		}
		public enum RPCOPT_SERVER_LOCALITY_VALUES : int32
		{
			PROCESS_LOCAL = 0,
			MACHINE_LOCAL = 1,
			REMOTE = 2,
		}
		public enum GLOBALOPT_PROPERTIES : int32
		{
			EXCEPTION_HANDLING = 1,
			APPID = 2,
			RPC_THREADPOOL_SETTING = 3,
			RO_SETTINGS = 4,
			UNMARSHALING_POLICY = 5,
			PROPERTIES_RESERVED1 = 6,
			PROPERTIES_RESERVED2 = 7,
			PROPERTIES_RESERVED3 = 8,
		}
		[AllowDuplicates]
		public enum GLOBALOPT_EH_VALUES : int32
		{
			HANDLE = 0,
			DONOT_HANDLE_FATAL = 1,
			DONOT_HANDLE = 1,
			DONOT_HANDLE_ANY = 2,
		}
		public enum GLOBALOPT_RPCTP_VALUES : int32
		{
			DEFAULT_POOL = 0,
			PRIVATE_POOL = 1,
		}
		public enum GLOBALOPT_RO_FLAGS : int32
		{
			STA_MODALLOOP_REMOVE_TOUCH_MESSAGES = 1,
			STA_MODALLOOP_SHARED_QUEUE_REMOVE_INPUT_MESSAGES = 2,
			STA_MODALLOOP_SHARED_QUEUE_DONOT_REMOVE_INPUT_MESSAGES = 4,
			FAST_RUNDOWN = 8,
			RESERVED1 = 16,
			RESERVED2 = 32,
			RESERVED3 = 64,
			STA_MODALLOOP_SHARED_QUEUE_REORDER_POINTER_MESSAGES = 128,
			RESERVED4 = 256,
			RESERVED5 = 512,
			RESERVED6 = 1024,
		}
		public enum GLOBALOPT_UNMARSHALING_POLICY_VALUES : int32
		{
			NORMAL = 0,
			STRONG = 1,
			HYBRID = 2,
		}
		public enum DCOM_CALL_STATE : int32
		{
			NONE = 0,
			CALL_COMPLETE = 1,
			CALL_CANCELED = 2,
		}
		public enum APTTYPEQUALIFIER : int32
		{
			NONE = 0,
			IMPLICIT_MTA = 1,
			NA_ON_MTA = 2,
			NA_ON_STA = 3,
			NA_ON_IMPLICIT_MTA = 4,
			NA_ON_MAINSTA = 5,
			APPLICATION_STA = 6,
			RESERVED_1 = 7,
		}
		public enum APTTYPE : int32
		{
			CURRENT = -1,
			STA = 0,
			MTA = 1,
			NA = 2,
			MAINSTA = 3,
		}
		public enum THDTYPE : int32
		{
			BLOCKMESSAGES = 0,
			PROCESSMESSAGES = 1,
		}
		public enum CO_MARSHALING_CONTEXT_ATTRIBUTES : int32
		{
			SOURCE_IS_APP_CONTAINER = 0,
			CONTEXT_ATTRIBUTE_RESERVED_1 = -2147483648,
			CONTEXT_ATTRIBUTE_RESERVED_2 = -2147483647,
			CONTEXT_ATTRIBUTE_RESERVED_3 = -2147483646,
			CONTEXT_ATTRIBUTE_RESERVED_4 = -2147483645,
			CONTEXT_ATTRIBUTE_RESERVED_5 = -2147483644,
			CONTEXT_ATTRIBUTE_RESERVED_6 = -2147483643,
			CONTEXT_ATTRIBUTE_RESERVED_7 = -2147483642,
			CONTEXT_ATTRIBUTE_RESERVED_8 = -2147483641,
			CONTEXT_ATTRIBUTE_RESERVED_9 = -2147483640,
			CONTEXT_ATTRIBUTE_RESERVED_10 = -2147483639,
			CONTEXT_ATTRIBUTE_RESERVED_11 = -2147483638,
			CONTEXT_ATTRIBUTE_RESERVED_12 = -2147483637,
			CONTEXT_ATTRIBUTE_RESERVED_13 = -2147483636,
			CONTEXT_ATTRIBUTE_RESERVED_14 = -2147483635,
			CONTEXT_ATTRIBUTE_RESERVED_15 = -2147483634,
			CONTEXT_ATTRIBUTE_RESERVED_16 = -2147483633,
			CONTEXT_ATTRIBUTE_RESERVED_17 = -2147483632,
			CONTEXT_ATTRIBUTE_RESERVED_18 = -2147483631,
		}
		public enum BIND_FLAGS : int32
		{
			MAYBOTHERUSER = 1,
			JUSTTESTEXISTENCE = 2,
		}
		public enum MKSYS : int32
		{
			NONE = 0,
			GENERICCOMPOSITE = 1,
			FILEMONIKER = 2,
			ANTIMONIKER = 3,
			ITEMMONIKER = 4,
			POINTERMONIKER = 5,
			CLASSMONIKER = 7,
			OBJREFMONIKER = 8,
			SESSIONMONIKER = 9,
			LUAMONIKER = 10,
		}
		public enum MKREDUCE : int32
		{
			ONE = 196608,
			TOUSER = 131072,
			THROUGHUSER = 65536,
			ALL = 0,
		}
		public enum ADVF : int32
		{
			_NODATA = 1,
			_PRIMEFIRST = 2,
			_ONLYONCE = 4,
			_DATAONSTOP = 64,
			CACHE_NOHANDLER = 8,
			CACHE_FORCEBUILTIN = 16,
			CACHE_ONSAVE = 32,
		}
		public enum TYMED : int32
		{
			HGLOBAL = 1,
			FILE = 2,
			ISTREAM = 4,
			ISTORAGE = 8,
			GDI = 16,
			MFPICT = 32,
			ENHMF = 64,
			NULL = 0,
		}
		public enum DATADIR : int32
		{
			GET = 1,
			SET = 2,
		}
		public enum CALLTYPE : int32
		{
			TOPLEVEL = 1,
			NESTED = 2,
			ASYNC = 3,
			TOPLEVEL_CALLPENDING = 4,
			ASYNC_CALLPENDING = 5,
		}
		public enum SERVERCALL : int32
		{
			ISHANDLED = 0,
			REJECTED = 1,
			RETRYLATER = 2,
		}
		public enum PENDINGTYPE : int32
		{
			TOPLEVEL = 1,
			NESTED = 2,
		}
		public enum PENDINGMSG : int32
		{
			CANCELCALL = 0,
			WAITNOPROCESS = 1,
			WAITDEFPROCESS = 2,
		}
		public enum ApplicationType : int32
		{
			ServerApplication = 0,
			LibraryApplication = 1,
		}
		public enum ShutdownType : int32
		{
			IdleShutdown = 0,
			ForcedShutdown = 1,
		}
		public enum COINIT : uint32
		{
			APARTMENTTHREADED = 2,
			MULTITHREADED = 0,
			DISABLE_OLE1DDE = 4,
			SPEED_OVER_MEMORY = 8,
		}
		public enum COMSD : int32
		{
			LAUNCHPERMISSIONS = 0,
			ACCESSPERMISSIONS = 1,
			LAUNCHRESTRICTIONS = 2,
			ACCESSRESTRICTIONS = 3,
		}
		public enum COWAIT_FLAGS : int32
		{
			DEFAULT = 0,
			WAITALL = 1,
			ALERTABLE = 2,
			INPUTAVAILABLE = 4,
			DISPATCH_CALLS = 8,
			DISPATCH_WINDOW_MESSAGES = 16,
		}
		public enum CWMO_FLAGS : int32
		{
			EFAULT = 0,
			ISPATCH_CALLS = 1,
			ISPATCH_WINDOW_MESSAGES = 2,
		}
		public enum BINDINFOF : int32
		{
			STGMEDDATA = 1,
			DEXTRAINFO = 2,
		}
		[AllowDuplicates]
		public enum Uri_PROPERTY : int32
		{
			ABSOLUTE_URI = 0,
			STRING_START = 0,
			AUTHORITY = 1,
			DISPLAY_URI = 2,
			DOMAIN = 3,
			EXTENSION = 4,
			FRAGMENT = 5,
			HOST = 6,
			PASSWORD = 7,
			PATH = 8,
			PATH_AND_QUERY = 9,
			QUERY = 10,
			RAW_URI = 11,
			SCHEME_NAME = 12,
			USER_INFO = 13,
			USER_NAME = 14,
			STRING_LAST = 14,
			HOST_TYPE = 15,
			DWORD_START = 15,
			PORT = 16,
			SCHEME = 17,
			ZONE = 18,
			DWORD_LAST = 18,
		}
		public enum TYPEKIND : int32
		{
			ENUM = 0,
			RECORD = 1,
			MODULE = 2,
			INTERFACE = 3,
			DISPATCH = 4,
			COCLASS = 5,
			ALIAS = 6,
			UNION = 7,
			MAX = 8,
		}
		[AllowDuplicates]
		public enum CALLCONV : int32
		{
			FASTCALL = 0,
			CDECL = 1,
			MSCPASCAL = 2,
			PASCAL = 2,
			MACPASCAL = 3,
			STDCALL = 4,
			FPFASTCALL = 5,
			SYSCALL = 6,
			MPWCDECL = 7,
			MPWPASCAL = 8,
			MAX = 9,
		}
		public enum FUNCKIND : int32
		{
			VIRTUAL = 0,
			PUREVIRTUAL = 1,
			NONVIRTUAL = 2,
			STATIC = 3,
			DISPATCH = 4,
		}
		public enum INVOKEKIND : int32
		{
			FUNC = 1,
			PROPERTYGET = 2,
			PROPERTYPUT = 4,
			PROPERTYPUTREF = 8,
		}
		public enum VARKIND : int32
		{
			PERINSTANCE = 0,
			STATIC = 1,
			CONST = 2,
			DISPATCH = 3,
		}
		public enum DESCKIND : int32
		{
			NONE = 0,
			FUNCDESC = 1,
			VARDESC = 2,
			TYPECOMP = 3,
			IMPLICITAPPOBJ = 4,
			MAX = 5,
		}
		public enum SYSKIND : int32
		{
			WIN16 = 0,
			WIN32 = 1,
			MAC = 2,
			WIN64 = 3,
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
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInterface(Guid* riid, void** ppvObject) mut
			{
				return VT.QueryInterface(&this, riid, ppvObject);
			}
			public uint32 AddRef() mut
			{
				return VT.AddRef(&this);
			}
			public uint32 Release() mut
			{
				return VT.Release(&this);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(IUnknown *self, Guid* riid, void** ppvObject) QueryInterface;
				public new function uint32(IUnknown *self) AddRef;
				public new function uint32(IUnknown *self) Release;
			}
		}
		[CRepr]
		public struct AsyncIUnknown : IUnknown
		{
			public const new Guid IID = .(0x000e0000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_QueryInterface(Guid* riid) mut
			{
				return VT.Begin_QueryInterface(&this, riid);
			}
			public HRESULT Finish_QueryInterface(void** ppvObject) mut
			{
				return VT.Finish_QueryInterface(&this, ppvObject);
			}
			public HRESULT Begin_AddRef() mut
			{
				return VT.Begin_AddRef(&this);
			}
			public uint32 Finish_AddRef() mut
			{
				return VT.Finish_AddRef(&this);
			}
			public HRESULT Begin_Release() mut
			{
				return VT.Begin_Release(&this);
			}
			public uint32 Finish_Release() mut
			{
				return VT.Finish_Release(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIUnknown *self, Guid* riid) Begin_QueryInterface;
				public new function HRESULT(AsyncIUnknown *self, void** ppvObject) Finish_QueryInterface;
				public new function HRESULT(AsyncIUnknown *self) Begin_AddRef;
				public new function uint32(AsyncIUnknown *self) Finish_AddRef;
				public new function HRESULT(AsyncIUnknown *self) Begin_Release;
				public new function uint32(AsyncIUnknown *self) Finish_Release;
			}
		}
		[CRepr]
		public struct IClassFactory : IUnknown
		{
			public const new Guid IID = .(0x00000001, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(IUnknown* pUnkOuter, Guid* riid, void** ppvObject) mut
			{
				return VT.CreateInstance(&this, pUnkOuter, riid, ppvObject);
			}
			public HRESULT LockServer(BOOL fLock) mut
			{
				return VT.LockServer(&this, fLock);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClassFactory *self, IUnknown* pUnkOuter, Guid* riid, void** ppvObject) CreateInstance;
				public new function HRESULT(IClassFactory *self, BOOL fLock) LockServer;
			}
		}
		[CRepr]
		public struct INoMarshal : IUnknown
		{
			public const new Guid IID = .(0xecc8691b, 0xc1db, 0x4dc0, 0x85, 0x5e, 0x65, 0xf6, 0xc5, 0x51, 0xaf, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IAgileObject : IUnknown
		{
			public const new Guid IID = .(0x94ea2b94, 0xe9cc, 0x49e0, 0xc0, 0xff, 0xee, 0x64, 0xca, 0x8f, 0x5b, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IActivationFilter : IUnknown
		{
			public const new Guid IID = .(0x00000017, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleActivation(uint32 dwActivationType, Guid* rclsid, Guid* pReplacementClsId) mut
			{
				return VT.HandleActivation(&this, dwActivationType, rclsid, pReplacementClsId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActivationFilter *self, uint32 dwActivationType, Guid* rclsid, Guid* pReplacementClsId) HandleActivation;
			}
		}
		[CRepr]
		public struct IMalloc : IUnknown
		{
			public const new Guid IID = .(0x00000002, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void* Alloc(uint cb) mut
			{
				return VT.Alloc(&this, cb);
			}
			public void* Realloc(void* pv, uint cb) mut
			{
				return VT.Realloc(&this, pv, cb);
			}
			public void Free(void* pv) mut
			{
				VT.Free(&this, pv);
			}
			public uint GetSize(void* pv) mut
			{
				return VT.GetSize(&this, pv);
			}
			public int32 DidAlloc(void* pv) mut
			{
				return VT.DidAlloc(&this, pv);
			}
			public void HeapMinimize() mut
			{
				VT.HeapMinimize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void*(IMalloc *self, uint cb) Alloc;
				public new function void*(IMalloc *self, void* pv, uint cb) Realloc;
				public new function void(IMalloc *self, void* pv) Free;
				public new function uint(IMalloc *self, void* pv) GetSize;
				public new function int32(IMalloc *self, void* pv) DidAlloc;
				public new function void(IMalloc *self) HeapMinimize;
			}
		}
		[CRepr]
		public struct IStdMarshalInfo : IUnknown
		{
			public const new Guid IID = .(0x00000018, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassForHandler(uint32 dwDestContext, void* pvDestContext, Guid* pClsid) mut
			{
				return VT.GetClassForHandler(&this, dwDestContext, pvDestContext, pClsid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStdMarshalInfo *self, uint32 dwDestContext, void* pvDestContext, Guid* pClsid) GetClassForHandler;
			}
		}
		[CRepr]
		public struct IExternalConnection : IUnknown
		{
			public const new Guid IID = .(0x00000019, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddConnection(uint32 extconn, uint32 reserved) mut
			{
				return VT.AddConnection(&this, extconn, reserved);
			}
			public uint32 ReleaseConnection(uint32 extconn, uint32 reserved, BOOL fLastReleaseCloses) mut
			{
				return VT.ReleaseConnection(&this, extconn, reserved, fLastReleaseCloses);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IExternalConnection *self, uint32 extconn, uint32 reserved) AddConnection;
				public new function uint32(IExternalConnection *self, uint32 extconn, uint32 reserved, BOOL fLastReleaseCloses) ReleaseConnection;
			}
		}
		[CRepr]
		public struct IMultiQI : IUnknown
		{
			public const new Guid IID = .(0x00000020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryMultipleInterfaces(uint32 cMQIs, MULTI_QI* pMQIs) mut
			{
				return VT.QueryMultipleInterfaces(&this, cMQIs, pMQIs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMultiQI *self, uint32 cMQIs, MULTI_QI* pMQIs) QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct AsyncIMultiQI : IUnknown
		{
			public const new Guid IID = .(0x000e0020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_QueryMultipleInterfaces(uint32 cMQIs, MULTI_QI* pMQIs) mut
			{
				return VT.Begin_QueryMultipleInterfaces(&this, cMQIs, pMQIs);
			}
			public HRESULT Finish_QueryMultipleInterfaces(MULTI_QI* pMQIs) mut
			{
				return VT.Finish_QueryMultipleInterfaces(&this, pMQIs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIMultiQI *self, uint32 cMQIs, MULTI_QI* pMQIs) Begin_QueryMultipleInterfaces;
				public new function HRESULT(AsyncIMultiQI *self, MULTI_QI* pMQIs) Finish_QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct IInternalUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000021, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInternalInterface(Guid* riid, void** ppv) mut
			{
				return VT.QueryInternalInterface(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInternalUnknown *self, Guid* riid, void** ppv) QueryInternalInterface;
			}
		}
		[CRepr]
		public struct IEnumUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000100, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IUnknown** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumUnknown** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumUnknown *self, uint32 celt, IUnknown** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumUnknown *self, uint32 celt) Skip;
				public new function HRESULT(IEnumUnknown *self) Reset;
				public new function HRESULT(IEnumUnknown *self, IEnumUnknown** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumString : IUnknown
		{
			public const new Guid IID = .(0x00000101, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, PWSTR* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumString** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumString *self, uint32 celt, PWSTR* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumString *self, uint32 celt) Skip;
				public new function HRESULT(IEnumString *self) Reset;
				public new function HRESULT(IEnumString *self, IEnumString** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISequentialStream : IUnknown
		{
			public const new Guid IID = .(0x0c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(void* pv, uint32 cb, uint32* pcbRead) mut
			{
				return VT.Read(&this, pv, cb, pcbRead);
			}
			public HRESULT Write(void* pv, uint32 cb, uint32* pcbWritten) mut
			{
				return VT.Write(&this, pv, cb, pcbWritten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISequentialStream *self, void* pv, uint32 cb, uint32* pcbRead) Read;
				public new function HRESULT(ISequentialStream *self, void* pv, uint32 cb, uint32* pcbWritten) Write;
			}
		}
		[CRepr]
		public struct IStream : ISequentialStream
		{
			public const new Guid IID = .(0x0000000c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Seek(LARGE_INTEGER dlibMove, STREAM_SEEK dwOrigin, ULARGE_INTEGER* plibNewPosition) mut
			{
				return VT.Seek(&this, dlibMove, dwOrigin, plibNewPosition);
			}
			public HRESULT SetSize(ULARGE_INTEGER libNewSize) mut
			{
				return VT.SetSize(&this, libNewSize);
			}
			public HRESULT CopyTo(IStream* pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten) mut
			{
				return VT.CopyTo(&this, pstm, cb, pcbRead, pcbWritten);
			}
			public HRESULT Commit(uint32 grfCommitFlags) mut
			{
				return VT.Commit(&this, grfCommitFlags);
			}
			public HRESULT Revert() mut
			{
				return VT.Revert(&this);
			}
			public HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut
			{
				return VT.LockRegion(&this, libOffset, cb, dwLockType);
			}
			public HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut
			{
				return VT.UnlockRegion(&this, libOffset, cb, dwLockType);
			}
			public HRESULT Stat(STATSTG* pstatstg, uint32 grfStatFlag) mut
			{
				return VT.Stat(&this, pstatstg, grfStatFlag);
			}
			public HRESULT Clone(IStream** ppstm) mut
			{
				return VT.Clone(&this, ppstm);
			}
			[CRepr]
			public struct VTable : ISequentialStream.VTable
			{
				public new function HRESULT(IStream *self, LARGE_INTEGER dlibMove, STREAM_SEEK dwOrigin, ULARGE_INTEGER* plibNewPosition) Seek;
				public new function HRESULT(IStream *self, ULARGE_INTEGER libNewSize) SetSize;
				public new function HRESULT(IStream *self, IStream* pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten) CopyTo;
				public new function HRESULT(IStream *self, uint32 grfCommitFlags) Commit;
				public new function HRESULT(IStream *self) Revert;
				public new function HRESULT(IStream *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public new function HRESULT(IStream *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public new function HRESULT(IStream *self, STATSTG* pstatstg, uint32 grfStatFlag) Stat;
				public new function HRESULT(IStream *self, IStream** ppstm) Clone;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56b60, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(RPCOLEMESSAGE* pMessage, Guid* riid) mut
			{
				return VT.GetBuffer(&this, pMessage, riid);
			}
			public HRESULT SendReceive(RPCOLEMESSAGE* pMessage, uint32* pStatus) mut
			{
				return VT.SendReceive(&this, pMessage, pStatus);
			}
			public HRESULT FreeBuffer(RPCOLEMESSAGE* pMessage) mut
			{
				return VT.FreeBuffer(&this, pMessage);
			}
			public HRESULT GetDestCtx(uint32* pdwDestContext, void** ppvDestContext) mut
			{
				return VT.GetDestCtx(&this, pdwDestContext, ppvDestContext);
			}
			public HRESULT IsConnected() mut
			{
				return VT.IsConnected(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage, Guid* riid) GetBuffer;
				public new function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage, uint32* pStatus) SendReceive;
				public new function HRESULT(IRpcChannelBuffer *self, RPCOLEMESSAGE* pMessage) FreeBuffer;
				public new function HRESULT(IRpcChannelBuffer *self, uint32* pdwDestContext, void** ppvDestContext) GetDestCtx;
				public new function HRESULT(IRpcChannelBuffer *self) IsConnected;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer2 : IRpcChannelBuffer
		{
			public const new Guid IID = .(0x594f31d0, 0x7f19, 0x11d0, 0xb1, 0x94, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProtocolVersion(uint32* pdwVersion) mut
			{
				return VT.GetProtocolVersion(&this, pdwVersion);
			}
			[CRepr]
			public struct VTable : IRpcChannelBuffer.VTable
			{
				public new function HRESULT(IRpcChannelBuffer2 *self, uint32* pdwVersion) GetProtocolVersion;
			}
		}
		[CRepr]
		public struct IAsyncRpcChannelBuffer : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0xa5029fb6, 0x3c34, 0x11d1, 0x9c, 0x99, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Send(RPCOLEMESSAGE* pMsg, ISynchronize* pSync, uint32* pulStatus) mut
			{
				return VT.Send(&this, pMsg, pSync, pulStatus);
			}
			public HRESULT Receive(RPCOLEMESSAGE* pMsg, uint32* pulStatus) mut
			{
				return VT.Receive(&this, pMsg, pulStatus);
			}
			public HRESULT GetDestCtxEx(RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) mut
			{
				return VT.GetDestCtxEx(&this, pMsg, pdwDestContext, ppvDestContext);
			}
			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public new function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, ISynchronize* pSync, uint32* pulStatus) Send;
				public new function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, uint32* pulStatus) Receive;
				public new function HRESULT(IAsyncRpcChannelBuffer *self, RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) GetDestCtxEx;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer3 : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0x25b15600, 0x0115, 0x11d0, 0xbf, 0x0d, 0x00, 0xaa, 0x00, 0xb8, 0xdf, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Send(RPCOLEMESSAGE* pMsg, uint32* pulStatus) mut
			{
				return VT.Send(&this, pMsg, pulStatus);
			}
			public HRESULT Receive(RPCOLEMESSAGE* pMsg, uint32 ulSize, uint32* pulStatus) mut
			{
				return VT.Receive(&this, pMsg, ulSize, pulStatus);
			}
			public HRESULT Cancel(RPCOLEMESSAGE* pMsg) mut
			{
				return VT.Cancel(&this, pMsg);
			}
			public HRESULT GetCallContext(RPCOLEMESSAGE* pMsg, Guid* riid, void** pInterface) mut
			{
				return VT.GetCallContext(&this, pMsg, riid, pInterface);
			}
			public HRESULT GetDestCtxEx(RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) mut
			{
				return VT.GetDestCtxEx(&this, pMsg, pdwDestContext, ppvDestContext);
			}
			public HRESULT GetState(RPCOLEMESSAGE* pMsg, uint32* pState) mut
			{
				return VT.GetState(&this, pMsg, pState);
			}
			public HRESULT RegisterAsync(RPCOLEMESSAGE* pMsg, IAsyncManager* pAsyncMgr) mut
			{
				return VT.RegisterAsync(&this, pMsg, pAsyncMgr);
			}
			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pulStatus) Send;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32 ulSize, uint32* pulStatus) Receive;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg) Cancel;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, Guid* riid, void** pInterface) GetCallContext;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pdwDestContext, void** ppvDestContext) GetDestCtxEx;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, uint32* pState) GetState;
				public new function HRESULT(IRpcChannelBuffer3 *self, RPCOLEMESSAGE* pMsg, IAsyncManager* pAsyncMgr) RegisterAsync;
			}
		}
		[CRepr]
		public struct IRpcSyntaxNegotiate : IUnknown
		{
			public const new Guid IID = .(0x58a08519, 0x24c8, 0x4935, 0xb4, 0x82, 0x3f, 0xd8, 0x23, 0x33, 0x3a, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NegotiateSyntax(RPCOLEMESSAGE* pMsg) mut
			{
				return VT.NegotiateSyntax(&this, pMsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcSyntaxNegotiate *self, RPCOLEMESSAGE* pMsg) NegotiateSyntax;
			}
		}
		[CRepr]
		public struct IRpcProxyBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56a34, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(IRpcChannelBuffer* pRpcChannelBuffer) mut
			{
				return VT.Connect(&this, pRpcChannelBuffer);
			}
			public void Disconnect() mut
			{
				VT.Disconnect(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcProxyBuffer *self, IRpcChannelBuffer* pRpcChannelBuffer) Connect;
				public new function void(IRpcProxyBuffer *self) Disconnect;
			}
		}
		[CRepr]
		public struct IRpcStubBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56afc, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(IUnknown* pUnkServer) mut
			{
				return VT.Connect(&this, pUnkServer);
			}
			public void Disconnect() mut
			{
				VT.Disconnect(&this);
			}
			public HRESULT Invoke(RPCOLEMESSAGE* _prpcmsg, IRpcChannelBuffer* _pRpcChannelBuffer) mut
			{
				return VT.Invoke(&this, _prpcmsg, _pRpcChannelBuffer);
			}
			public IRpcStubBuffer* IsIIDSupported(Guid* riid) mut
			{
				return VT.IsIIDSupported(&this, riid);
			}
			public uint32 CountRefs() mut
			{
				return VT.CountRefs(&this);
			}
			public HRESULT DebugServerQueryInterface(void** ppv) mut
			{
				return VT.DebugServerQueryInterface(&this, ppv);
			}
			public void DebugServerRelease(void* pv) mut
			{
				VT.DebugServerRelease(&this, pv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcStubBuffer *self, IUnknown* pUnkServer) Connect;
				public new function void(IRpcStubBuffer *self) Disconnect;
				public new function HRESULT(IRpcStubBuffer *self, RPCOLEMESSAGE* _prpcmsg, IRpcChannelBuffer* _pRpcChannelBuffer) Invoke;
				public new function IRpcStubBuffer*(IRpcStubBuffer *self, Guid* riid) IsIIDSupported;
				public new function uint32(IRpcStubBuffer *self) CountRefs;
				public new function HRESULT(IRpcStubBuffer *self, void** ppv) DebugServerQueryInterface;
				public new function void(IRpcStubBuffer *self, void* pv) DebugServerRelease;
			}
		}
		[CRepr]
		public struct IPSFactoryBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f569d0, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProxy(IUnknown* pUnkOuter, Guid* riid, IRpcProxyBuffer** ppProxy, void** ppv) mut
			{
				return VT.CreateProxy(&this, pUnkOuter, riid, ppProxy, ppv);
			}
			public HRESULT CreateStub(Guid* riid, IUnknown* pUnkServer, IRpcStubBuffer** ppStub) mut
			{
				return VT.CreateStub(&this, riid, pUnkServer, ppStub);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPSFactoryBuffer *self, IUnknown* pUnkOuter, Guid* riid, IRpcProxyBuffer** ppProxy, void** ppv) CreateProxy;
				public new function HRESULT(IPSFactoryBuffer *self, Guid* riid, IUnknown* pUnkServer, IRpcStubBuffer** ppStub) CreateStub;
			}
		}
		[CRepr]
		public struct IChannelHook : IUnknown
		{
			public const new Guid IID = .(0x1008c4a0, 0x7613, 0x11cf, 0x9a, 0xf1, 0x00, 0x20, 0xaf, 0x6e, 0x72, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public void ClientGetSize(Guid* uExtent, Guid* riid, uint32* pDataSize) mut
			{
				VT.ClientGetSize(&this, uExtent, riid, pDataSize);
			}
			public void ClientFillBuffer(Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer) mut
			{
				VT.ClientFillBuffer(&this, uExtent, riid, pDataSize, pDataBuffer);
			}
			public void ClientNotify(Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep, HRESULT hrFault) mut
			{
				VT.ClientNotify(&this, uExtent, riid, cbDataSize, pDataBuffer, lDataRep, hrFault);
			}
			public void ServerNotify(Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep) mut
			{
				VT.ServerNotify(&this, uExtent, riid, cbDataSize, pDataBuffer, lDataRep);
			}
			public void ServerGetSize(Guid* uExtent, Guid* riid, HRESULT hrFault, uint32* pDataSize) mut
			{
				VT.ServerGetSize(&this, uExtent, riid, hrFault, pDataSize);
			}
			public void ServerFillBuffer(Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer, HRESULT hrFault) mut
			{
				VT.ServerFillBuffer(&this, uExtent, riid, pDataSize, pDataBuffer, hrFault);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize) ClientGetSize;
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer) ClientFillBuffer;
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep, HRESULT hrFault) ClientNotify;
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep) ServerNotify;
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, HRESULT hrFault, uint32* pDataSize) ServerGetSize;
				public new function void(IChannelHook *self, Guid* uExtent, Guid* riid, uint32* pDataSize, void* pDataBuffer, HRESULT hrFault) ServerFillBuffer;
			}
		}
		[CRepr]
		public struct IClientSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryBlanket(IUnknown* pProxy, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, RPC_C_AUTHN_LEVEL* pAuthnLevel, RPC_C_IMP_LEVEL* pImpLevel, void** pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES* pCapabilites) mut
			{
				return VT.QueryBlanket(&this, pProxy, pAuthnSvc, pAuthzSvc, pServerPrincName, pAuthnLevel, pImpLevel, pAuthInfo, pCapabilites);
			}
			public HRESULT SetBlanket(IUnknown* pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities) mut
			{
				return VT.SetBlanket(&this, pProxy, dwAuthnSvc, dwAuthzSvc, pServerPrincName, dwAuthnLevel, dwImpLevel, pAuthInfo, dwCapabilities);
			}
			public HRESULT CopyProxy(IUnknown* pProxy, IUnknown** ppCopy) mut
			{
				return VT.CopyProxy(&this, pProxy, ppCopy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClientSecurity *self, IUnknown* pProxy, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, RPC_C_AUTHN_LEVEL* pAuthnLevel, RPC_C_IMP_LEVEL* pImpLevel, void** pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES* pCapabilites) QueryBlanket;
				public new function HRESULT(IClientSecurity *self, IUnknown* pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities) SetBlanket;
				public new function HRESULT(IClientSecurity *self, IUnknown* pProxy, IUnknown** ppCopy) CopyProxy;
			}
		}
		[CRepr]
		public struct IServerSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryBlanket(uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities) mut
			{
				return VT.QueryBlanket(&this, pAuthnSvc, pAuthzSvc, pServerPrincName, pAuthnLevel, pImpLevel, pPrivs, pCapabilities);
			}
			public HRESULT ImpersonateClient() mut
			{
				return VT.ImpersonateClient(&this);
			}
			public HRESULT RevertToSelf() mut
			{
				return VT.RevertToSelf(&this);
			}
			public BOOL IsImpersonating() mut
			{
				return VT.IsImpersonating(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IServerSecurity *self, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities) QueryBlanket;
				public new function HRESULT(IServerSecurity *self) ImpersonateClient;
				public new function HRESULT(IServerSecurity *self) RevertToSelf;
				public new function BOOL(IServerSecurity *self) IsImpersonating;
			}
		}
		[CRepr]
		public struct IRpcOptions : IUnknown
		{
			public const new Guid IID = .(0x00000144, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint dwValue) mut
			{
				return VT.Set(&this, pPrx, dwProperty, dwValue);
			}
			public HRESULT Query(IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint* pdwValue) mut
			{
				return VT.Query(&this, pPrx, dwProperty, pdwValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcOptions *self, IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public new function HRESULT(IRpcOptions *self, IUnknown* pPrx, RPCOPT_PROPERTIES dwProperty, uint* pdwValue) Query;
			}
		}
		[CRepr]
		public struct IGlobalOptions : IUnknown
		{
			public const new Guid IID = .(0x0000015b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(GLOBALOPT_PROPERTIES dwProperty, uint dwValue) mut
			{
				return VT.Set(&this, dwProperty, dwValue);
			}
			public HRESULT Query(GLOBALOPT_PROPERTIES dwProperty, uint* pdwValue) mut
			{
				return VT.Query(&this, dwProperty, pdwValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGlobalOptions *self, GLOBALOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public new function HRESULT(IGlobalOptions *self, GLOBALOPT_PROPERTIES dwProperty, uint* pdwValue) Query;
			}
		}
		[CRepr]
		public struct ISurrogate : IUnknown
		{
			public const new Guid IID = .(0x00000022, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadDllServer(Guid* Clsid) mut
			{
				return VT.LoadDllServer(&this, Clsid);
			}
			public HRESULT FreeSurrogate() mut
			{
				return VT.FreeSurrogate(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISurrogate *self, Guid* Clsid) LoadDllServer;
				public new function HRESULT(ISurrogate *self) FreeSurrogate;
			}
		}
		[CRepr]
		public struct IGlobalInterfaceTable : IUnknown
		{
			public const new Guid IID = .(0x00000146, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterInterfaceInGlobal(IUnknown* pUnk, Guid* riid, uint32* pdwCookie) mut
			{
				return VT.RegisterInterfaceInGlobal(&this, pUnk, riid, pdwCookie);
			}
			public HRESULT RevokeInterfaceFromGlobal(uint32 dwCookie) mut
			{
				return VT.RevokeInterfaceFromGlobal(&this, dwCookie);
			}
			public HRESULT GetInterfaceFromGlobal(uint32 dwCookie, Guid* riid, void** ppv) mut
			{
				return VT.GetInterfaceFromGlobal(&this, dwCookie, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGlobalInterfaceTable *self, IUnknown* pUnk, Guid* riid, uint32* pdwCookie) RegisterInterfaceInGlobal;
				public new function HRESULT(IGlobalInterfaceTable *self, uint32 dwCookie) RevokeInterfaceFromGlobal;
				public new function HRESULT(IGlobalInterfaceTable *self, uint32 dwCookie, Guid* riid, void** ppv) GetInterfaceFromGlobal;
			}
		}
		[CRepr]
		public struct ISynchronize : IUnknown
		{
			public const new Guid IID = .(0x00000030, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Wait(uint32 dwFlags, uint32 dwMilliseconds) mut
			{
				return VT.Wait(&this, dwFlags, dwMilliseconds);
			}
			public HRESULT Signal() mut
			{
				return VT.Signal(&this);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISynchronize *self, uint32 dwFlags, uint32 dwMilliseconds) Wait;
				public new function HRESULT(ISynchronize *self) Signal;
				public new function HRESULT(ISynchronize *self) Reset;
			}
		}
		[CRepr]
		public struct ISynchronizeHandle : IUnknown
		{
			public const new Guid IID = .(0x00000031, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHandle(HANDLE* ph) mut
			{
				return VT.GetHandle(&this, ph);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISynchronizeHandle *self, HANDLE* ph) GetHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeEvent : ISynchronizeHandle
		{
			public const new Guid IID = .(0x00000032, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEventHandle(HANDLE* ph) mut
			{
				return VT.SetEventHandle(&this, ph);
			}
			[CRepr]
			public struct VTable : ISynchronizeHandle.VTable
			{
				public new function HRESULT(ISynchronizeEvent *self, HANDLE* ph) SetEventHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeContainer : IUnknown
		{
			public const new Guid IID = .(0x00000033, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddSynchronize(ISynchronize* pSync) mut
			{
				return VT.AddSynchronize(&this, pSync);
			}
			public HRESULT WaitMultiple(uint32 dwFlags, uint32 dwTimeOut, ISynchronize** ppSync) mut
			{
				return VT.WaitMultiple(&this, dwFlags, dwTimeOut, ppSync);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISynchronizeContainer *self, ISynchronize* pSync) AddSynchronize;
				public new function HRESULT(ISynchronizeContainer *self, uint32 dwFlags, uint32 dwTimeOut, ISynchronize** ppSync) WaitMultiple;
			}
		}
		[CRepr]
		public struct ISynchronizeMutex : ISynchronize
		{
			public const new Guid IID = .(0x00000025, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReleaseMutex() mut
			{
				return VT.ReleaseMutex(&this);
			}
			[CRepr]
			public struct VTable : ISynchronize.VTable
			{
				public new function HRESULT(ISynchronizeMutex *self) ReleaseMutex;
			}
		}
		[CRepr]
		public struct ICancelMethodCalls : IUnknown
		{
			public const new Guid IID = .(0x00000029, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel(uint32 ulSeconds) mut
			{
				return VT.Cancel(&this, ulSeconds);
			}
			public HRESULT TestCancel() mut
			{
				return VT.TestCancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICancelMethodCalls *self, uint32 ulSeconds) Cancel;
				public new function HRESULT(ICancelMethodCalls *self) TestCancel;
			}
		}
		[CRepr]
		public struct IAsyncManager : IUnknown
		{
			public const new Guid IID = .(0x0000002a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompleteCall(HRESULT Result) mut
			{
				return VT.CompleteCall(&this, Result);
			}
			public HRESULT GetCallContext(Guid* riid, void** pInterface) mut
			{
				return VT.GetCallContext(&this, riid, pInterface);
			}
			public HRESULT GetState(uint32* pulStateFlags) mut
			{
				return VT.GetState(&this, pulStateFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAsyncManager *self, HRESULT Result) CompleteCall;
				public new function HRESULT(IAsyncManager *self, Guid* riid, void** pInterface) GetCallContext;
				public new function HRESULT(IAsyncManager *self, uint32* pulStateFlags) GetState;
			}
		}
		[CRepr]
		public struct ICallFactory : IUnknown
		{
			public const new Guid IID = .(0x1c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateCall(Guid* riid, IUnknown* pCtrlUnk, Guid* riid2, IUnknown** ppv) mut
			{
				return VT.CreateCall(&this, riid, pCtrlUnk, riid2, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallFactory *self, Guid* riid, IUnknown* pCtrlUnk, Guid* riid2, IUnknown** ppv) CreateCall;
			}
		}
		[CRepr]
		public struct IRpcHelper : IUnknown
		{
			public const new Guid IID = .(0x00000149, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDCOMProtocolVersion(uint32* pComVersion) mut
			{
				return VT.GetDCOMProtocolVersion(&this, pComVersion);
			}
			public HRESULT GetIIDFromOBJREF(void* pObjRef, Guid** piid) mut
			{
				return VT.GetIIDFromOBJREF(&this, pObjRef, piid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRpcHelper *self, uint32* pComVersion) GetDCOMProtocolVersion;
				public new function HRESULT(IRpcHelper *self, void* pObjRef, Guid** piid) GetIIDFromOBJREF;
			}
		}
		[CRepr]
		public struct IReleaseMarshalBuffers : IUnknown
		{
			public const new Guid IID = .(0xeb0cb9e8, 0x7996, 0x11d2, 0x87, 0x2e, 0x00, 0x00, 0xf8, 0x08, 0x08, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReleaseMarshalBuffer(RPCOLEMESSAGE* pMsg, uint32 dwFlags, IUnknown* pChnl) mut
			{
				return VT.ReleaseMarshalBuffer(&this, pMsg, dwFlags, pChnl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IReleaseMarshalBuffers *self, RPCOLEMESSAGE* pMsg, uint32 dwFlags, IUnknown* pChnl) ReleaseMarshalBuffer;
			}
		}
		[CRepr]
		public struct IWaitMultiple : IUnknown
		{
			public const new Guid IID = .(0x0000002b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WaitMultiple(uint32 timeout, ISynchronize** pSync) mut
			{
				return VT.WaitMultiple(&this, timeout, pSync);
			}
			public HRESULT AddSynchronize(ISynchronize* pSync) mut
			{
				return VT.AddSynchronize(&this, pSync);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWaitMultiple *self, uint32 timeout, ISynchronize** pSync) WaitMultiple;
				public new function HRESULT(IWaitMultiple *self, ISynchronize* pSync) AddSynchronize;
			}
		}
		[CRepr]
		public struct IAddrTrackingControl : IUnknown
		{
			public const new Guid IID = .(0x00000147, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableCOMDynamicAddrTracking() mut
			{
				return VT.EnableCOMDynamicAddrTracking(&this);
			}
			public HRESULT DisableCOMDynamicAddrTracking() mut
			{
				return VT.DisableCOMDynamicAddrTracking(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAddrTrackingControl *self) EnableCOMDynamicAddrTracking;
				public new function HRESULT(IAddrTrackingControl *self) DisableCOMDynamicAddrTracking;
			}
		}
		[CRepr]
		public struct IAddrExclusionControl : IUnknown
		{
			public const new Guid IID = .(0x00000148, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentAddrExclusionList(Guid* riid, void** ppEnumerator) mut
			{
				return VT.GetCurrentAddrExclusionList(&this, riid, ppEnumerator);
			}
			public HRESULT UpdateAddrExclusionList(IUnknown* pEnumerator) mut
			{
				return VT.UpdateAddrExclusionList(&this, pEnumerator);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAddrExclusionControl *self, Guid* riid, void** ppEnumerator) GetCurrentAddrExclusionList;
				public new function HRESULT(IAddrExclusionControl *self, IUnknown* pEnumerator) UpdateAddrExclusionList;
			}
		}
		[CRepr]
		public struct IPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3aca, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(uint8* buf, uint32 cRequest, uint32* pcReturned) mut
			{
				return VT.Pull(&this, buf, cRequest, pcReturned);
			}
			public HRESULT Push(uint8* buf, uint32 cSent) mut
			{
				return VT.Push(&this, buf, cSent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPipeByte *self, uint8* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public new function HRESULT(IPipeByte *self, uint8* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acb, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut
			{
				return VT.Begin_Pull(&this, cRequest);
			}
			public HRESULT Finish_Pull(uint8* buf, uint32* pcReturned) mut
			{
				return VT.Finish_Pull(&this, buf, pcReturned);
			}
			public HRESULT Begin_Push(uint8* buf, uint32 cSent) mut
			{
				return VT.Begin_Push(&this, buf, cSent);
			}
			public HRESULT Finish_Push() mut
			{
				return VT.Finish_Push(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIPipeByte *self, uint32 cRequest) Begin_Pull;
				public new function HRESULT(AsyncIPipeByte *self, uint8* buf, uint32* pcReturned) Finish_Pull;
				public new function HRESULT(AsyncIPipeByte *self, uint8* buf, uint32 cSent) Begin_Push;
				public new function HRESULT(AsyncIPipeByte *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acc, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(int32* buf, uint32 cRequest, uint32* pcReturned) mut
			{
				return VT.Pull(&this, buf, cRequest, pcReturned);
			}
			public HRESULT Push(int32* buf, uint32 cSent) mut
			{
				return VT.Push(&this, buf, cSent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPipeLong *self, int32* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public new function HRESULT(IPipeLong *self, int32* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acd, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut
			{
				return VT.Begin_Pull(&this, cRequest);
			}
			public HRESULT Finish_Pull(int32* buf, uint32* pcReturned) mut
			{
				return VT.Finish_Pull(&this, buf, pcReturned);
			}
			public HRESULT Begin_Push(int32* buf, uint32 cSent) mut
			{
				return VT.Begin_Push(&this, buf, cSent);
			}
			public HRESULT Finish_Push() mut
			{
				return VT.Finish_Push(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIPipeLong *self, uint32 cRequest) Begin_Pull;
				public new function HRESULT(AsyncIPipeLong *self, int32* buf, uint32* pcReturned) Finish_Pull;
				public new function HRESULT(AsyncIPipeLong *self, int32* buf, uint32 cSent) Begin_Push;
				public new function HRESULT(AsyncIPipeLong *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3ace, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(double* buf, uint32 cRequest, uint32* pcReturned) mut
			{
				return VT.Pull(&this, buf, cRequest, pcReturned);
			}
			public HRESULT Push(double* buf, uint32 cSent) mut
			{
				return VT.Push(&this, buf, cSent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPipeDouble *self, double* buf, uint32 cRequest, uint32* pcReturned) Pull;
				public new function HRESULT(IPipeDouble *self, double* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acf, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut
			{
				return VT.Begin_Pull(&this, cRequest);
			}
			public HRESULT Finish_Pull(double* buf, uint32* pcReturned) mut
			{
				return VT.Finish_Pull(&this, buf, pcReturned);
			}
			public HRESULT Begin_Push(double* buf, uint32 cSent) mut
			{
				return VT.Begin_Push(&this, buf, cSent);
			}
			public HRESULT Finish_Push() mut
			{
				return VT.Finish_Push(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIPipeDouble *self, uint32 cRequest) Begin_Pull;
				public new function HRESULT(AsyncIPipeDouble *self, double* buf, uint32* pcReturned) Finish_Pull;
				public new function HRESULT(AsyncIPipeDouble *self, double* buf, uint32 cSent) Begin_Push;
				public new function HRESULT(AsyncIPipeDouble *self) Finish_Push;
			}
		}
		[CRepr]
		public struct IComThreadingInfo : IUnknown
		{
			public const new Guid IID = .(0x000001ce, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentApartmentType(APTTYPE* pAptType) mut
			{
				return VT.GetCurrentApartmentType(&this, pAptType);
			}
			public HRESULT GetCurrentThreadType(THDTYPE* pThreadType) mut
			{
				return VT.GetCurrentThreadType(&this, pThreadType);
			}
			public HRESULT GetCurrentLogicalThreadId(Guid* pguidLogicalThreadId) mut
			{
				return VT.GetCurrentLogicalThreadId(&this, pguidLogicalThreadId);
			}
			public HRESULT SetCurrentLogicalThreadId(Guid* rguid) mut
			{
				return VT.SetCurrentLogicalThreadId(&this, rguid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IComThreadingInfo *self, APTTYPE* pAptType) GetCurrentApartmentType;
				public new function HRESULT(IComThreadingInfo *self, THDTYPE* pThreadType) GetCurrentThreadType;
				public new function HRESULT(IComThreadingInfo *self, Guid* pguidLogicalThreadId) GetCurrentLogicalThreadId;
				public new function HRESULT(IComThreadingInfo *self, Guid* rguid) SetCurrentLogicalThreadId;
			}
		}
		[CRepr]
		public struct IProcessInitControl : IUnknown
		{
			public const new Guid IID = .(0x72380d55, 0x8d2b, 0x43a3, 0x85, 0x13, 0x2b, 0x6e, 0xf3, 0x14, 0x34, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetInitializerTimeout(uint32 dwSecondsRemaining) mut
			{
				return VT.ResetInitializerTimeout(&this, dwSecondsRemaining);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProcessInitControl *self, uint32 dwSecondsRemaining) ResetInitializerTimeout;
			}
		}
		[CRepr]
		public struct IFastRundown : IUnknown
		{
			public const new Guid IID = .(0x00000040, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IMachineGlobalObjectTable : IUnknown
		{
			public const new Guid IID = .(0x26d709ac, 0xf70b, 0x4421, 0xa9, 0x6f, 0xd2, 0x87, 0x8f, 0xaf, 0xb0, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterObject(Guid* clsid, PWSTR identifier, IUnknown* object, MachineGlobalObjectTableRegistrationToken__** token) mut
			{
				return VT.RegisterObject(&this, clsid, identifier, object, token);
			}
			public HRESULT GetObject(Guid* clsid, PWSTR identifier, Guid* riid, void** ppv) mut
			{
				return VT.GetObject(&this, clsid, identifier, riid, ppv);
			}
			public HRESULT RevokeObject(MachineGlobalObjectTableRegistrationToken__* token) mut
			{
				return VT.RevokeObject(&this, token);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMachineGlobalObjectTable *self, Guid* clsid, PWSTR identifier, IUnknown* object, MachineGlobalObjectTableRegistrationToken__** token) RegisterObject;
				public new function HRESULT(IMachineGlobalObjectTable *self, Guid* clsid, PWSTR identifier, Guid* riid, void** ppv) GetObject;
				public new function HRESULT(IMachineGlobalObjectTable *self, MachineGlobalObjectTableRegistrationToken__* token) RevokeObject;
			}
		}
		[CRepr]
		public struct IMallocSpy : IUnknown
		{
			public const new Guid IID = .(0x0000001d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint PreAlloc(uint cbRequest) mut
			{
				return VT.PreAlloc(&this, cbRequest);
			}
			public void* PostAlloc(void* pActual) mut
			{
				return VT.PostAlloc(&this, pActual);
			}
			public void* PreFree(void* pRequest, BOOL fSpyed) mut
			{
				return VT.PreFree(&this, pRequest, fSpyed);
			}
			public void PostFree(BOOL fSpyed) mut
			{
				VT.PostFree(&this, fSpyed);
			}
			public uint PreRealloc(void* pRequest, uint cbRequest, void** ppNewRequest, BOOL fSpyed) mut
			{
				return VT.PreRealloc(&this, pRequest, cbRequest, ppNewRequest, fSpyed);
			}
			public void* PostRealloc(void* pActual, BOOL fSpyed) mut
			{
				return VT.PostRealloc(&this, pActual, fSpyed);
			}
			public void* PreGetSize(void* pRequest, BOOL fSpyed) mut
			{
				return VT.PreGetSize(&this, pRequest, fSpyed);
			}
			public uint PostGetSize(uint cbActual, BOOL fSpyed) mut
			{
				return VT.PostGetSize(&this, cbActual, fSpyed);
			}
			public void* PreDidAlloc(void* pRequest, BOOL fSpyed) mut
			{
				return VT.PreDidAlloc(&this, pRequest, fSpyed);
			}
			public int32 PostDidAlloc(void* pRequest, BOOL fSpyed, int32 fActual) mut
			{
				return VT.PostDidAlloc(&this, pRequest, fSpyed, fActual);
			}
			public void PreHeapMinimize() mut
			{
				VT.PreHeapMinimize(&this);
			}
			public void PostHeapMinimize() mut
			{
				VT.PostHeapMinimize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint(IMallocSpy *self, uint cbRequest) PreAlloc;
				public new function void*(IMallocSpy *self, void* pActual) PostAlloc;
				public new function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreFree;
				public new function void(IMallocSpy *self, BOOL fSpyed) PostFree;
				public new function uint(IMallocSpy *self, void* pRequest, uint cbRequest, void** ppNewRequest, BOOL fSpyed) PreRealloc;
				public new function void*(IMallocSpy *self, void* pActual, BOOL fSpyed) PostRealloc;
				public new function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreGetSize;
				public new function uint(IMallocSpy *self, uint cbActual, BOOL fSpyed) PostGetSize;
				public new function void*(IMallocSpy *self, void* pRequest, BOOL fSpyed) PreDidAlloc;
				public new function int32(IMallocSpy *self, void* pRequest, BOOL fSpyed, int32 fActual) PostDidAlloc;
				public new function void(IMallocSpy *self) PreHeapMinimize;
				public new function void(IMallocSpy *self) PostHeapMinimize;
			}
		}
		[CRepr]
		public struct IBindCtx : IUnknown
		{
			public const new Guid IID = .(0x0000000e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterObjectBound(IUnknown* punk) mut
			{
				return VT.RegisterObjectBound(&this, punk);
			}
			public HRESULT RevokeObjectBound(IUnknown* punk) mut
			{
				return VT.RevokeObjectBound(&this, punk);
			}
			public HRESULT ReleaseBoundObjects() mut
			{
				return VT.ReleaseBoundObjects(&this);
			}
			public HRESULT SetBindOptions(BIND_OPTS* pbindopts) mut
			{
				return VT.SetBindOptions(&this, pbindopts);
			}
			public HRESULT GetBindOptions(BIND_OPTS* pbindopts) mut
			{
				return VT.GetBindOptions(&this, pbindopts);
			}
			public HRESULT GetRunningObjectTable(IRunningObjectTable** pprot) mut
			{
				return VT.GetRunningObjectTable(&this, pprot);
			}
			public HRESULT RegisterObjectParam(PWSTR pszKey, IUnknown* punk) mut
			{
				return VT.RegisterObjectParam(&this, pszKey, punk);
			}
			public HRESULT GetObjectParam(PWSTR pszKey, IUnknown** ppunk) mut
			{
				return VT.GetObjectParam(&this, pszKey, ppunk);
			}
			public HRESULT EnumObjectParam(IEnumString** ppenum) mut
			{
				return VT.EnumObjectParam(&this, ppenum);
			}
			public HRESULT RevokeObjectParam(PWSTR pszKey) mut
			{
				return VT.RevokeObjectParam(&this, pszKey);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBindCtx *self, IUnknown* punk) RegisterObjectBound;
				public new function HRESULT(IBindCtx *self, IUnknown* punk) RevokeObjectBound;
				public new function HRESULT(IBindCtx *self) ReleaseBoundObjects;
				public new function HRESULT(IBindCtx *self, BIND_OPTS* pbindopts) SetBindOptions;
				public new function HRESULT(IBindCtx *self, BIND_OPTS* pbindopts) GetBindOptions;
				public new function HRESULT(IBindCtx *self, IRunningObjectTable** pprot) GetRunningObjectTable;
				public new function HRESULT(IBindCtx *self, PWSTR pszKey, IUnknown* punk) RegisterObjectParam;
				public new function HRESULT(IBindCtx *self, PWSTR pszKey, IUnknown** ppunk) GetObjectParam;
				public new function HRESULT(IBindCtx *self, IEnumString** ppenum) EnumObjectParam;
				public new function HRESULT(IBindCtx *self, PWSTR pszKey) RevokeObjectParam;
			}
		}
		[CRepr]
		public struct IEnumMoniker : IUnknown
		{
			public const new Guid IID = .(0x00000102, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IMoniker** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumMoniker** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumMoniker *self, uint32 celt, IMoniker** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumMoniker *self, uint32 celt) Skip;
				public new function HRESULT(IEnumMoniker *self) Reset;
				public new function HRESULT(IEnumMoniker *self, IEnumMoniker** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IRunnableObject : IUnknown
		{
			public const new Guid IID = .(0x00000126, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRunningClass(Guid* lpClsid) mut
			{
				return VT.GetRunningClass(&this, lpClsid);
			}
			public HRESULT Run(IBindCtx* pbc) mut
			{
				return VT.Run(&this, pbc);
			}
			public BOOL IsRunning() mut
			{
				return VT.IsRunning(&this);
			}
			public HRESULT LockRunning(BOOL fLock, BOOL fLastUnlockCloses) mut
			{
				return VT.LockRunning(&this, fLock, fLastUnlockCloses);
			}
			public HRESULT SetContainedObject(BOOL fContained) mut
			{
				return VT.SetContainedObject(&this, fContained);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRunnableObject *self, Guid* lpClsid) GetRunningClass;
				public new function HRESULT(IRunnableObject *self, IBindCtx* pbc) Run;
				public new function BOOL(IRunnableObject *self) IsRunning;
				public new function HRESULT(IRunnableObject *self, BOOL fLock, BOOL fLastUnlockCloses) LockRunning;
				public new function HRESULT(IRunnableObject *self, BOOL fContained) SetContainedObject;
			}
		}
		[CRepr]
		public struct IRunningObjectTable : IUnknown
		{
			public const new Guid IID = .(0x00000010, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(uint32 grfFlags, IUnknown* punkObject, IMoniker* pmkObjectName, uint32* pdwRegister) mut
			{
				return VT.Register(&this, grfFlags, punkObject, pmkObjectName, pdwRegister);
			}
			public HRESULT Revoke(uint32 dwRegister) mut
			{
				return VT.Revoke(&this, dwRegister);
			}
			public HRESULT IsRunning(IMoniker* pmkObjectName) mut
			{
				return VT.IsRunning(&this, pmkObjectName);
			}
			public HRESULT GetObject(IMoniker* pmkObjectName, IUnknown** ppunkObject) mut
			{
				return VT.GetObject(&this, pmkObjectName, ppunkObject);
			}
			public HRESULT NoteChangeTime(uint32 dwRegister, FILETIME* pfiletime) mut
			{
				return VT.NoteChangeTime(&this, dwRegister, pfiletime);
			}
			public HRESULT GetTimeOfLastChange(IMoniker* pmkObjectName, FILETIME* pfiletime) mut
			{
				return VT.GetTimeOfLastChange(&this, pmkObjectName, pfiletime);
			}
			public HRESULT EnumRunning(IEnumMoniker** ppenumMoniker) mut
			{
				return VT.EnumRunning(&this, ppenumMoniker);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRunningObjectTable *self, uint32 grfFlags, IUnknown* punkObject, IMoniker* pmkObjectName, uint32* pdwRegister) Register;
				public new function HRESULT(IRunningObjectTable *self, uint32 dwRegister) Revoke;
				public new function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName) IsRunning;
				public new function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName, IUnknown** ppunkObject) GetObject;
				public new function HRESULT(IRunningObjectTable *self, uint32 dwRegister, FILETIME* pfiletime) NoteChangeTime;
				public new function HRESULT(IRunningObjectTable *self, IMoniker* pmkObjectName, FILETIME* pfiletime) GetTimeOfLastChange;
				public new function HRESULT(IRunningObjectTable *self, IEnumMoniker** ppenumMoniker) EnumRunning;
			}
		}
		[CRepr]
		public struct IPersist : IUnknown
		{
			public const new Guid IID = .(0x0000010c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassID(Guid* pClassID) mut
			{
				return VT.GetClassID(&this, pClassID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPersist *self, Guid* pClassID) GetClassID;
			}
		}
		[CRepr]
		public struct IPersistStream : IPersist
		{
			public const new Guid IID = .(0x00000109, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			public HRESULT Load(IStream* pStm) mut
			{
				return VT.Load(&this, pStm);
			}
			public HRESULT Save(IStream* pStm, BOOL fClearDirty) mut
			{
				return VT.Save(&this, pStm, fClearDirty);
			}
			public HRESULT GetSizeMax(ULARGE_INTEGER* pcbSize) mut
			{
				return VT.GetSizeMax(&this, pcbSize);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistStream *self) IsDirty;
				public new function HRESULT(IPersistStream *self, IStream* pStm) Load;
				public new function HRESULT(IPersistStream *self, IStream* pStm, BOOL fClearDirty) Save;
				public new function HRESULT(IPersistStream *self, ULARGE_INTEGER* pcbSize) GetSizeMax;
			}
		}
		[CRepr]
		public struct IMoniker : IPersistStream
		{
			public const new Guid IID = .(0x0000000f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindToObject(IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riidResult, void** ppvResult) mut
			{
				return VT.BindToObject(&this, pbc, pmkToLeft, riidResult, ppvResult);
			}
			public HRESULT BindToStorage(IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riid, void** ppvObj) mut
			{
				return VT.BindToStorage(&this, pbc, pmkToLeft, riid, ppvObj);
			}
			public HRESULT Reduce(IBindCtx* pbc, uint32 dwReduceHowFar, IMoniker** ppmkToLeft, IMoniker** ppmkReduced) mut
			{
				return VT.Reduce(&this, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);
			}
			public HRESULT ComposeWith(IMoniker* pmkRight, BOOL fOnlyIfNotGeneric, IMoniker** ppmkComposite) mut
			{
				return VT.ComposeWith(&this, pmkRight, fOnlyIfNotGeneric, ppmkComposite);
			}
			public HRESULT Enum(BOOL fForward, IEnumMoniker** ppenumMoniker) mut
			{
				return VT.Enum(&this, fForward, ppenumMoniker);
			}
			public HRESULT IsEqual(IMoniker* pmkOtherMoniker) mut
			{
				return VT.IsEqual(&this, pmkOtherMoniker);
			}
			public HRESULT Hash(uint32* pdwHash) mut
			{
				return VT.Hash(&this, pdwHash);
			}
			public HRESULT IsRunning(IBindCtx* pbc, IMoniker* pmkToLeft, IMoniker* pmkNewlyRunning) mut
			{
				return VT.IsRunning(&this, pbc, pmkToLeft, pmkNewlyRunning);
			}
			public HRESULT GetTimeOfLastChange(IBindCtx* pbc, IMoniker* pmkToLeft, FILETIME* pFileTime) mut
			{
				return VT.GetTimeOfLastChange(&this, pbc, pmkToLeft, pFileTime);
			}
			public HRESULT Inverse(IMoniker** ppmk) mut
			{
				return VT.Inverse(&this, ppmk);
			}
			public HRESULT CommonPrefixWith(IMoniker* pmkOther, IMoniker** ppmkPrefix) mut
			{
				return VT.CommonPrefixWith(&this, pmkOther, ppmkPrefix);
			}
			public HRESULT RelativePathTo(IMoniker* pmkOther, IMoniker** ppmkRelPath) mut
			{
				return VT.RelativePathTo(&this, pmkOther, ppmkRelPath);
			}
			public HRESULT GetDisplayName(IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR* ppszDisplayName) mut
			{
				return VT.GetDisplayName(&this, pbc, pmkToLeft, ppszDisplayName);
			}
			public HRESULT ParseDisplayName(IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR pszDisplayName, uint32* pchEaten, IMoniker** ppmkOut) mut
			{
				return VT.ParseDisplayName(&this, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);
			}
			public HRESULT IsSystemMoniker(uint32* pdwMksys) mut
			{
				return VT.IsSystemMoniker(&this, pdwMksys);
			}
			[CRepr]
			public struct VTable : IPersistStream.VTable
			{
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riidResult, void** ppvResult) BindToObject;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, Guid* riid, void** ppvObj) BindToStorage;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, uint32 dwReduceHowFar, IMoniker** ppmkToLeft, IMoniker** ppmkReduced) Reduce;
				public new function HRESULT(IMoniker *self, IMoniker* pmkRight, BOOL fOnlyIfNotGeneric, IMoniker** ppmkComposite) ComposeWith;
				public new function HRESULT(IMoniker *self, BOOL fForward, IEnumMoniker** ppenumMoniker) Enum;
				public new function HRESULT(IMoniker *self, IMoniker* pmkOtherMoniker) IsEqual;
				public new function HRESULT(IMoniker *self, uint32* pdwHash) Hash;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, IMoniker* pmkNewlyRunning) IsRunning;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, FILETIME* pFileTime) GetTimeOfLastChange;
				public new function HRESULT(IMoniker *self, IMoniker** ppmk) Inverse;
				public new function HRESULT(IMoniker *self, IMoniker* pmkOther, IMoniker** ppmkPrefix) CommonPrefixWith;
				public new function HRESULT(IMoniker *self, IMoniker* pmkOther, IMoniker** ppmkRelPath) RelativePathTo;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR* ppszDisplayName) GetDisplayName;
				public new function HRESULT(IMoniker *self, IBindCtx* pbc, IMoniker* pmkToLeft, PWSTR pszDisplayName, uint32* pchEaten, IMoniker** ppmkOut) ParseDisplayName;
				public new function HRESULT(IMoniker *self, uint32* pdwMksys) IsSystemMoniker;
			}
		}
		[CRepr]
		public struct IROTData : IUnknown
		{
			public const new Guid IID = .(0xf29f6bc0, 0x5021, 0x11ce, 0xaa, 0x15, 0x00, 0x00, 0x69, 0x01, 0x29, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetComparisonData(uint8* pbData, uint32 cbMax, uint32* pcbData) mut
			{
				return VT.GetComparisonData(&this, pbData, cbMax, pcbData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IROTData *self, uint8* pbData, uint32 cbMax, uint32* pcbData) GetComparisonData;
			}
		}
		[CRepr]
		public struct IPersistFile : IPersist
		{
			public const new Guid IID = .(0x0000010b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			public HRESULT Load(PWSTR pszFileName, uint32 dwMode) mut
			{
				return VT.Load(&this, pszFileName, dwMode);
			}
			public HRESULT Save(PWSTR pszFileName, BOOL fRemember) mut
			{
				return VT.Save(&this, pszFileName, fRemember);
			}
			public HRESULT SaveCompleted(PWSTR pszFileName) mut
			{
				return VT.SaveCompleted(&this, pszFileName);
			}
			public HRESULT GetCurFile(PWSTR* ppszFileName) mut
			{
				return VT.GetCurFile(&this, ppszFileName);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistFile *self) IsDirty;
				public new function HRESULT(IPersistFile *self, PWSTR pszFileName, uint32 dwMode) Load;
				public new function HRESULT(IPersistFile *self, PWSTR pszFileName, BOOL fRemember) Save;
				public new function HRESULT(IPersistFile *self, PWSTR pszFileName) SaveCompleted;
				public new function HRESULT(IPersistFile *self, PWSTR* ppszFileName) GetCurFile;
			}
		}
		[CRepr]
		public struct IEnumFORMATETC : IUnknown
		{
			public const new Guid IID = .(0x00000103, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, FORMATETC* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumFORMATETC** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumFORMATETC *self, uint32 celt, FORMATETC* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumFORMATETC *self, uint32 celt) Skip;
				public new function HRESULT(IEnumFORMATETC *self) Reset;
				public new function HRESULT(IEnumFORMATETC *self, IEnumFORMATETC** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATDATA : IUnknown
		{
			public const new Guid IID = .(0x00000105, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATDATA* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSTATDATA** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSTATDATA *self, uint32 celt, STATDATA* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSTATDATA *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSTATDATA *self) Reset;
				public new function HRESULT(IEnumSTATDATA *self, IEnumSTATDATA** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x0000010f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnDataChange(FORMATETC* pFormatetc, STGMEDIUM* pStgmed) mut
			{
				VT.OnDataChange(&this, pFormatetc, pStgmed);
			}
			public void OnViewChange(uint32 dwAspect, int32 lindex) mut
			{
				VT.OnViewChange(&this, dwAspect, lindex);
			}
			public void OnRename(IMoniker* pmk) mut
			{
				VT.OnRename(&this, pmk);
			}
			public void OnSave() mut
			{
				VT.OnSave(&this);
			}
			public void OnClose() mut
			{
				VT.OnClose(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IAdviseSink *self, FORMATETC* pFormatetc, STGMEDIUM* pStgmed) OnDataChange;
				public new function void(IAdviseSink *self, uint32 dwAspect, int32 lindex) OnViewChange;
				public new function void(IAdviseSink *self, IMoniker* pmk) OnRename;
				public new function void(IAdviseSink *self) OnSave;
				public new function void(IAdviseSink *self) OnClose;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x00000150, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Begin_OnDataChange(FORMATETC* pFormatetc, STGMEDIUM* pStgmed) mut
			{
				VT.Begin_OnDataChange(&this, pFormatetc, pStgmed);
			}
			public void Finish_OnDataChange() mut
			{
				VT.Finish_OnDataChange(&this);
			}
			public void Begin_OnViewChange(uint32 dwAspect, int32 lindex) mut
			{
				VT.Begin_OnViewChange(&this, dwAspect, lindex);
			}
			public void Finish_OnViewChange() mut
			{
				VT.Finish_OnViewChange(&this);
			}
			public void Begin_OnRename(IMoniker* pmk) mut
			{
				VT.Begin_OnRename(&this, pmk);
			}
			public void Finish_OnRename() mut
			{
				VT.Finish_OnRename(&this);
			}
			public void Begin_OnSave() mut
			{
				VT.Begin_OnSave(&this);
			}
			public void Finish_OnSave() mut
			{
				VT.Finish_OnSave(&this);
			}
			public void Begin_OnClose() mut
			{
				VT.Begin_OnClose(&this);
			}
			public void Finish_OnClose() mut
			{
				VT.Finish_OnClose(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(AsyncIAdviseSink *self, FORMATETC* pFormatetc, STGMEDIUM* pStgmed) Begin_OnDataChange;
				public new function void(AsyncIAdviseSink *self) Finish_OnDataChange;
				public new function void(AsyncIAdviseSink *self, uint32 dwAspect, int32 lindex) Begin_OnViewChange;
				public new function void(AsyncIAdviseSink *self) Finish_OnViewChange;
				public new function void(AsyncIAdviseSink *self, IMoniker* pmk) Begin_OnRename;
				public new function void(AsyncIAdviseSink *self) Finish_OnRename;
				public new function void(AsyncIAdviseSink *self) Begin_OnSave;
				public new function void(AsyncIAdviseSink *self) Finish_OnSave;
				public new function void(AsyncIAdviseSink *self) Begin_OnClose;
				public new function void(AsyncIAdviseSink *self) Finish_OnClose;
			}
		}
		[CRepr]
		public struct IAdviseSink2 : IAdviseSink
		{
			public const new Guid IID = .(0x00000125, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnLinkSrcChange(IMoniker* pmk) mut
			{
				VT.OnLinkSrcChange(&this, pmk);
			}
			[CRepr]
			public struct VTable : IAdviseSink.VTable
			{
				public new function void(IAdviseSink2 *self, IMoniker* pmk) OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink2 : AsyncIAdviseSink
		{
			public const new Guid IID = .(0x00000151, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Begin_OnLinkSrcChange(IMoniker* pmk) mut
			{
				VT.Begin_OnLinkSrcChange(&this, pmk);
			}
			public void Finish_OnLinkSrcChange() mut
			{
				VT.Finish_OnLinkSrcChange(&this);
			}
			[CRepr]
			public struct VTable : AsyncIAdviseSink.VTable
			{
				public new function void(AsyncIAdviseSink2 *self, IMoniker* pmk) Begin_OnLinkSrcChange;
				public new function void(AsyncIAdviseSink2 *self) Finish_OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct IDataObject : IUnknown
		{
			public const new Guid IID = .(0x0000010e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(FORMATETC* pformatetcIn, STGMEDIUM* pmedium) mut
			{
				return VT.GetData(&this, pformatetcIn, pmedium);
			}
			public HRESULT GetDataHere(FORMATETC* pformatetc, STGMEDIUM* pmedium) mut
			{
				return VT.GetDataHere(&this, pformatetc, pmedium);
			}
			public HRESULT QueryGetData(FORMATETC* pformatetc) mut
			{
				return VT.QueryGetData(&this, pformatetc);
			}
			public HRESULT GetCanonicalFormatEtc(FORMATETC* pformatectIn, FORMATETC* pformatetcOut) mut
			{
				return VT.GetCanonicalFormatEtc(&this, pformatectIn, pformatetcOut);
			}
			public HRESULT SetData(FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease) mut
			{
				return VT.SetData(&this, pformatetc, pmedium, fRelease);
			}
			public HRESULT EnumFormatEtc(uint32 dwDirection, IEnumFORMATETC** ppenumFormatEtc) mut
			{
				return VT.EnumFormatEtc(&this, dwDirection, ppenumFormatEtc);
			}
			public HRESULT DAdvise(FORMATETC* pformatetc, uint32 advf, IAdviseSink* pAdvSink, uint32* pdwConnection) mut
			{
				return VT.DAdvise(&this, pformatetc, advf, pAdvSink, pdwConnection);
			}
			public HRESULT DUnadvise(uint32 dwConnection) mut
			{
				return VT.DUnadvise(&this, dwConnection);
			}
			public HRESULT EnumDAdvise(IEnumSTATDATA** ppenumAdvise) mut
			{
				return VT.EnumDAdvise(&this, ppenumAdvise);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataObject *self, FORMATETC* pformatetcIn, STGMEDIUM* pmedium) GetData;
				public new function HRESULT(IDataObject *self, FORMATETC* pformatetc, STGMEDIUM* pmedium) GetDataHere;
				public new function HRESULT(IDataObject *self, FORMATETC* pformatetc) QueryGetData;
				public new function HRESULT(IDataObject *self, FORMATETC* pformatectIn, FORMATETC* pformatetcOut) GetCanonicalFormatEtc;
				public new function HRESULT(IDataObject *self, FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease) SetData;
				public new function HRESULT(IDataObject *self, uint32 dwDirection, IEnumFORMATETC** ppenumFormatEtc) EnumFormatEtc;
				public new function HRESULT(IDataObject *self, FORMATETC* pformatetc, uint32 advf, IAdviseSink* pAdvSink, uint32* pdwConnection) DAdvise;
				public new function HRESULT(IDataObject *self, uint32 dwConnection) DUnadvise;
				public new function HRESULT(IDataObject *self, IEnumSTATDATA** ppenumAdvise) EnumDAdvise;
			}
		}
		[CRepr]
		public struct IDataAdviseHolder : IUnknown
		{
			public const new Guid IID = .(0x00000110, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IDataObject* pDataObject, FORMATETC* pFetc, uint32 advf, IAdviseSink* pAdvise, uint32* pdwConnection) mut
			{
				return VT.Advise(&this, pDataObject, pFetc, advf, pAdvise, pdwConnection);
			}
			public HRESULT Unadvise(uint32 dwConnection) mut
			{
				return VT.Unadvise(&this, dwConnection);
			}
			public HRESULT EnumAdvise(IEnumSTATDATA** ppenumAdvise) mut
			{
				return VT.EnumAdvise(&this, ppenumAdvise);
			}
			public HRESULT SendOnDataChange(IDataObject* pDataObject, uint32 dwReserved, uint32 advf) mut
			{
				return VT.SendOnDataChange(&this, pDataObject, dwReserved, advf);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataAdviseHolder *self, IDataObject* pDataObject, FORMATETC* pFetc, uint32 advf, IAdviseSink* pAdvise, uint32* pdwConnection) Advise;
				public new function HRESULT(IDataAdviseHolder *self, uint32 dwConnection) Unadvise;
				public new function HRESULT(IDataAdviseHolder *self, IEnumSTATDATA** ppenumAdvise) EnumAdvise;
				public new function HRESULT(IDataAdviseHolder *self, IDataObject* pDataObject, uint32 dwReserved, uint32 advf) SendOnDataChange;
			}
		}
		[CRepr]
		public struct IClassActivator : IUnknown
		{
			public const new Guid IID = .(0x00000140, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassObject(Guid* rclsid, uint32 dwClassContext, uint32 locale, Guid* riid, void** ppv) mut
			{
				return VT.GetClassObject(&this, rclsid, dwClassContext, locale, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClassActivator *self, Guid* rclsid, uint32 dwClassContext, uint32 locale, Guid* riid, void** ppv) GetClassObject;
			}
		}
		[CRepr]
		public struct IProgressNotify : IUnknown
		{
			public const new Guid IID = .(0xa9d758a0, 0x4617, 0x11cf, 0x95, 0xfc, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProgress(uint32 dwProgressCurrent, uint32 dwProgressMaximum, BOOL fAccurate, BOOL fOwner) mut
			{
				return VT.OnProgress(&this, dwProgressCurrent, dwProgressMaximum, fAccurate, fOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProgressNotify *self, uint32 dwProgressCurrent, uint32 dwProgressMaximum, BOOL fAccurate, BOOL fOwner) OnProgress;
			}
		}
		[CRepr]
		public struct IBlockingLock : IUnknown
		{
			public const new Guid IID = .(0x30f3d47a, 0x6447, 0x11d1, 0x8e, 0x3c, 0x00, 0xc0, 0x4f, 0xb9, 0x38, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock(uint32 dwTimeout) mut
			{
				return VT.Lock(&this, dwTimeout);
			}
			public HRESULT Unlock() mut
			{
				return VT.Unlock(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBlockingLock *self, uint32 dwTimeout) Lock;
				public new function HRESULT(IBlockingLock *self) Unlock;
			}
		}
		[CRepr]
		public struct ITimeAndNoticeControl : IUnknown
		{
			public const new Guid IID = .(0xbc0bf6ae, 0x8878, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuppressChanges(uint32 res1, uint32 res2) mut
			{
				return VT.SuppressChanges(&this, res1, res2);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITimeAndNoticeControl *self, uint32 res1, uint32 res2) SuppressChanges;
			}
		}
		[CRepr]
		public struct IOplockStorage : IUnknown
		{
			public const new Guid IID = .(0x8d19c834, 0x8879, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) mut
			{
				return VT.CreateStorageEx(&this, pwcsName, grfMode, stgfmt, grfAttrs, riid, ppstgOpen);
			}
			public HRESULT OpenStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) mut
			{
				return VT.OpenStorageEx(&this, pwcsName, grfMode, stgfmt, grfAttrs, riid, ppstgOpen);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOplockStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) CreateStorageEx;
				public new function HRESULT(IOplockStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, Guid* riid, void** ppstgOpen) OpenStorageEx;
			}
		}
		[CRepr]
		public struct IUrlMon : IUnknown
		{
			public const new Guid IID = .(0x00000026, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncGetClassBits(Guid* rclsid, PWSTR pszTYPE, PWSTR pszExt, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR pszCodeBase, IBindCtx* pbc, uint32 dwClassContext, Guid* riid, uint32 flags) mut
			{
				return VT.AsyncGetClassBits(&this, rclsid, pszTYPE, pszExt, dwFileVersionMS, dwFileVersionLS, pszCodeBase, pbc, dwClassContext, riid, flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUrlMon *self, Guid* rclsid, PWSTR pszTYPE, PWSTR pszExt, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR pszCodeBase, IBindCtx* pbc, uint32 dwClassContext, Guid* riid, uint32 flags) AsyncGetClassBits;
			}
		}
		[CRepr]
		public struct IForegroundTransfer : IUnknown
		{
			public const new Guid IID = .(0x00000145, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllowForegroundTransfer(void* lpvReserved) mut
			{
				return VT.AllowForegroundTransfer(&this, lpvReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IForegroundTransfer *self, void* lpvReserved) AllowForegroundTransfer;
			}
		}
		[CRepr]
		public struct IProcessLock : IUnknown
		{
			public const new Guid IID = .(0x000001d5, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddRefOnProcess() mut
			{
				return VT.AddRefOnProcess(&this);
			}
			public uint32 ReleaseRefOnProcess() mut
			{
				return VT.ReleaseRefOnProcess(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IProcessLock *self) AddRefOnProcess;
				public new function uint32(IProcessLock *self) ReleaseRefOnProcess;
			}
		}
		[CRepr]
		public struct ISurrogateService : IUnknown
		{
			public const new Guid IID = .(0x000001d4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(Guid* rguidProcessID, IProcessLock* pProcessLock, BOOL* pfApplicationAware) mut
			{
				return VT.Init(&this, rguidProcessID, pProcessLock, pfApplicationAware);
			}
			public HRESULT ApplicationLaunch(Guid* rguidApplID, ApplicationType appType) mut
			{
				return VT.ApplicationLaunch(&this, rguidApplID, appType);
			}
			public HRESULT ApplicationFree(Guid* rguidApplID) mut
			{
				return VT.ApplicationFree(&this, rguidApplID);
			}
			public HRESULT CatalogRefresh(uint32 ulReserved) mut
			{
				return VT.CatalogRefresh(&this, ulReserved);
			}
			public HRESULT ProcessShutdown(ShutdownType shutdownType) mut
			{
				return VT.ProcessShutdown(&this, shutdownType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISurrogateService *self, Guid* rguidProcessID, IProcessLock* pProcessLock, BOOL* pfApplicationAware) Init;
				public new function HRESULT(ISurrogateService *self, Guid* rguidApplID, ApplicationType appType) ApplicationLaunch;
				public new function HRESULT(ISurrogateService *self, Guid* rguidApplID) ApplicationFree;
				public new function HRESULT(ISurrogateService *self, uint32 ulReserved) CatalogRefresh;
				public new function HRESULT(ISurrogateService *self, ShutdownType shutdownType) ProcessShutdown;
			}
		}
		[CRepr]
		public struct IInitializeSpy : IUnknown
		{
			public const new Guid IID = .(0x00000034, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreInitialize(uint32 dwCoInit, uint32 dwCurThreadAptRefs) mut
			{
				return VT.PreInitialize(&this, dwCoInit, dwCurThreadAptRefs);
			}
			public HRESULT PostInitialize(HRESULT hrCoInit, uint32 dwCoInit, uint32 dwNewThreadAptRefs) mut
			{
				return VT.PostInitialize(&this, hrCoInit, dwCoInit, dwNewThreadAptRefs);
			}
			public HRESULT PreUninitialize(uint32 dwCurThreadAptRefs) mut
			{
				return VT.PreUninitialize(&this, dwCurThreadAptRefs);
			}
			public HRESULT PostUninitialize(uint32 dwNewThreadAptRefs) mut
			{
				return VT.PostUninitialize(&this, dwNewThreadAptRefs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeSpy *self, uint32 dwCoInit, uint32 dwCurThreadAptRefs) PreInitialize;
				public new function HRESULT(IInitializeSpy *self, HRESULT hrCoInit, uint32 dwCoInit, uint32 dwNewThreadAptRefs) PostInitialize;
				public new function HRESULT(IInitializeSpy *self, uint32 dwCurThreadAptRefs) PreUninitialize;
				public new function HRESULT(IInitializeSpy *self, uint32 dwNewThreadAptRefs) PostUninitialize;
			}
		}
		[CRepr]
		public struct IServiceProvider : IUnknown
		{
			public const new Guid IID = .(0x6d5140c1, 0x7436, 0x11ce, 0x80, 0x34, 0x00, 0xaa, 0x00, 0x60, 0x09, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryService(Guid* guidService, Guid* riid, void** ppvObject) mut
			{
				return VT.QueryService(&this, guidService, riid, ppvObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IServiceProvider *self, Guid* guidService, Guid* riid, void** ppvObject) QueryService;
			}
		}
		[CRepr]
		public struct IEnumGUID : IUnknown
		{
			public const new Guid IID = .(0x0002e000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, Guid* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumGUID** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumGUID *self, uint32 celt, Guid* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumGUID *self, uint32 celt) Skip;
				public new function HRESULT(IEnumGUID *self) Reset;
				public new function HRESULT(IEnumGUID *self, IEnumGUID** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCATEGORYINFO : IUnknown
		{
			public const new Guid IID = .(0x0002e011, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, CATEGORYINFO* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumCATEGORYINFO** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumCATEGORYINFO *self, uint32 celt, CATEGORYINFO* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumCATEGORYINFO *self, uint32 celt) Skip;
				public new function HRESULT(IEnumCATEGORYINFO *self) Reset;
				public new function HRESULT(IEnumCATEGORYINFO *self, IEnumCATEGORYINFO** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ICatRegister : IUnknown
		{
			public const new Guid IID = .(0x0002e012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCategories(uint32 cCategories, CATEGORYINFO* rgCategoryInfo) mut
			{
				return VT.RegisterCategories(&this, cCategories, rgCategoryInfo);
			}
			public HRESULT UnRegisterCategories(uint32 cCategories, Guid* rgcatid) mut
			{
				return VT.UnRegisterCategories(&this, cCategories, rgcatid);
			}
			public HRESULT RegisterClassImplCategories(Guid* rclsid, uint32 cCategories, Guid* rgcatid) mut
			{
				return VT.RegisterClassImplCategories(&this, rclsid, cCategories, rgcatid);
			}
			public HRESULT UnRegisterClassImplCategories(Guid* rclsid, uint32 cCategories, Guid* rgcatid) mut
			{
				return VT.UnRegisterClassImplCategories(&this, rclsid, cCategories, rgcatid);
			}
			public HRESULT RegisterClassReqCategories(Guid* rclsid, uint32 cCategories, Guid* rgcatid) mut
			{
				return VT.RegisterClassReqCategories(&this, rclsid, cCategories, rgcatid);
			}
			public HRESULT UnRegisterClassReqCategories(Guid* rclsid, uint32 cCategories, Guid* rgcatid) mut
			{
				return VT.UnRegisterClassReqCategories(&this, rclsid, cCategories, rgcatid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICatRegister *self, uint32 cCategories, CATEGORYINFO* rgCategoryInfo) RegisterCategories;
				public new function HRESULT(ICatRegister *self, uint32 cCategories, Guid* rgcatid) UnRegisterCategories;
				public new function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassImplCategories;
				public new function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassImplCategories;
				public new function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassReqCategories;
				public new function HRESULT(ICatRegister *self, Guid* rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassReqCategories;
			}
		}
		[CRepr]
		public struct ICatInformation : IUnknown
		{
			public const new Guid IID = .(0x0002e013, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumCategories(uint32 lcid, IEnumCATEGORYINFO** ppenumCategoryInfo) mut
			{
				return VT.EnumCategories(&this, lcid, ppenumCategoryInfo);
			}
			public HRESULT GetCategoryDesc(Guid* rcatid, uint32 lcid, PWSTR* pszDesc) mut
			{
				return VT.GetCategoryDesc(&this, rcatid, lcid, pszDesc);
			}
			public HRESULT EnumClassesOfCategories(uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq, IEnumGUID** ppenumClsid) mut
			{
				return VT.EnumClassesOfCategories(&this, cImplemented, rgcatidImpl, cRequired, rgcatidReq, ppenumClsid);
			}
			public HRESULT IsClassOfCategories(Guid* rclsid, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq) mut
			{
				return VT.IsClassOfCategories(&this, rclsid, cImplemented, rgcatidImpl, cRequired, rgcatidReq);
			}
			public HRESULT EnumImplCategoriesOfClass(Guid* rclsid, IEnumGUID** ppenumCatid) mut
			{
				return VT.EnumImplCategoriesOfClass(&this, rclsid, ppenumCatid);
			}
			public HRESULT EnumReqCategoriesOfClass(Guid* rclsid, IEnumGUID** ppenumCatid) mut
			{
				return VT.EnumReqCategoriesOfClass(&this, rclsid, ppenumCatid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICatInformation *self, uint32 lcid, IEnumCATEGORYINFO** ppenumCategoryInfo) EnumCategories;
				public new function HRESULT(ICatInformation *self, Guid* rcatid, uint32 lcid, PWSTR* pszDesc) GetCategoryDesc;
				public new function HRESULT(ICatInformation *self, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq, IEnumGUID** ppenumClsid) EnumClassesOfCategories;
				public new function HRESULT(ICatInformation *self, Guid* rclsid, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq) IsClassOfCategories;
				public new function HRESULT(ICatInformation *self, Guid* rclsid, IEnumGUID** ppenumCatid) EnumImplCategoriesOfClass;
				public new function HRESULT(ICatInformation *self, Guid* rclsid, IEnumGUID** ppenumCatid) EnumReqCategoriesOfClass;
			}
		}
		[CRepr]
		public struct IContextCallback : IUnknown
		{
			public const new Guid IID = .(0x000001da, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ContextCallback(PFNCONTEXTCALL pfnCallback, ComCallData* pParam, Guid* riid, int32 iMethod, IUnknown* pUnk) mut
			{
				return VT.ContextCallback(&this, pfnCallback, pParam, riid, iMethod, pUnk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextCallback *self, PFNCONTEXTCALL pfnCallback, ComCallData* pParam, Guid* riid, int32 iMethod, IUnknown* pUnk) ContextCallback;
			}
		}
		[CRepr]
		public struct IBinding : IUnknown
		{
			public const new Guid IID = .(0x79eac9c0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Abort() mut
			{
				return VT.Abort(&this);
			}
			public HRESULT Suspend() mut
			{
				return VT.Suspend(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT SetPriority(int32 nPriority) mut
			{
				return VT.SetPriority(&this, nPriority);
			}
			public HRESULT GetPriority(int32* pnPriority) mut
			{
				return VT.GetPriority(&this, pnPriority);
			}
			public HRESULT GetBindResult(Guid* pclsidProtocol, uint32* pdwResult, PWSTR* pszResult, uint32* pdwReserved) mut
			{
				return VT.GetBindResult(&this, pclsidProtocol, pdwResult, pszResult, pdwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBinding *self) Abort;
				public new function HRESULT(IBinding *self) Suspend;
				public new function HRESULT(IBinding *self) Resume;
				public new function HRESULT(IBinding *self, int32 nPriority) SetPriority;
				public new function HRESULT(IBinding *self, int32* pnPriority) GetPriority;
				public new function HRESULT(IBinding *self, Guid* pclsidProtocol, uint32* pdwResult, PWSTR* pszResult, uint32* pdwReserved) GetBindResult;
			}
		}
		[CRepr]
		public struct IBindStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x79eac9c1, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartBinding(uint32 dwReserved, IBinding* pib) mut
			{
				return VT.OnStartBinding(&this, dwReserved, pib);
			}
			public HRESULT GetPriority(int32* pnPriority) mut
			{
				return VT.GetPriority(&this, pnPriority);
			}
			public HRESULT OnLowResource(uint32 reserved) mut
			{
				return VT.OnLowResource(&this, reserved);
			}
			public HRESULT OnProgress(uint32 ulProgress, uint32 ulProgressMax, uint32 ulStatusCode, PWSTR szStatusText) mut
			{
				return VT.OnProgress(&this, ulProgress, ulProgressMax, ulStatusCode, szStatusText);
			}
			public HRESULT OnStopBinding(HRESULT hresult, PWSTR szError) mut
			{
				return VT.OnStopBinding(&this, hresult, szError);
			}
			public HRESULT GetBindInfo(uint32* grfBINDF, BINDINFO* pbindinfo) mut
			{
				return VT.GetBindInfo(&this, grfBINDF, pbindinfo);
			}
			public HRESULT OnDataAvailable(uint32 grfBSCF, uint32 dwSize, FORMATETC* pformatetc, STGMEDIUM* pstgmed) mut
			{
				return VT.OnDataAvailable(&this, grfBSCF, dwSize, pformatetc, pstgmed);
			}
			public HRESULT OnObjectAvailable(Guid* riid, IUnknown* punk) mut
			{
				return VT.OnObjectAvailable(&this, riid, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBindStatusCallback *self, uint32 dwReserved, IBinding* pib) OnStartBinding;
				public new function HRESULT(IBindStatusCallback *self, int32* pnPriority) GetPriority;
				public new function HRESULT(IBindStatusCallback *self, uint32 reserved) OnLowResource;
				public new function HRESULT(IBindStatusCallback *self, uint32 ulProgress, uint32 ulProgressMax, uint32 ulStatusCode, PWSTR szStatusText) OnProgress;
				public new function HRESULT(IBindStatusCallback *self, HRESULT hresult, PWSTR szError) OnStopBinding;
				public new function HRESULT(IBindStatusCallback *self, uint32* grfBINDF, BINDINFO* pbindinfo) GetBindInfo;
				public new function HRESULT(IBindStatusCallback *self, uint32 grfBSCF, uint32 dwSize, FORMATETC* pformatetc, STGMEDIUM* pstgmed) OnDataAvailable;
				public new function HRESULT(IBindStatusCallback *self, Guid* riid, IUnknown* punk) OnObjectAvailable;
			}
		}
		[CRepr]
		public struct IBindStatusCallbackEx : IBindStatusCallback
		{
			public const new Guid IID = .(0xaaa74ef9, 0x8ee7, 0x4659, 0x88, 0xd9, 0xf8, 0xc5, 0x04, 0xda, 0x73, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBindInfoEx(uint32* grfBINDF, BINDINFO* pbindinfo, uint32* grfBINDF2, uint32* pdwReserved) mut
			{
				return VT.GetBindInfoEx(&this, grfBINDF, pbindinfo, grfBINDF2, pdwReserved);
			}
			[CRepr]
			public struct VTable : IBindStatusCallback.VTable
			{
				public new function HRESULT(IBindStatusCallbackEx *self, uint32* grfBINDF, BINDINFO* pbindinfo, uint32* grfBINDF2, uint32* pdwReserved) GetBindInfoEx;
			}
		}
		[CRepr]
		public struct IAuthenticate : IUnknown
		{
			public const new Guid IID = .(0x79eac9d0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Authenticate(HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword) mut
			{
				return VT.Authenticate(&this, phwnd, pszUsername, pszPassword);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAuthenticate *self, HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword) Authenticate;
			}
		}
		[CRepr]
		public struct IAuthenticateEx : IAuthenticate
		{
			public const new Guid IID = .(0x2ad1edaf, 0xd83d, 0x48b5, 0x9a, 0xdf, 0x03, 0xdb, 0xe1, 0x9f, 0x53, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthenticateEx(HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword, AUTHENTICATEINFO* pauthinfo) mut
			{
				return VT.AuthenticateEx(&this, phwnd, pszUsername, pszPassword, pauthinfo);
			}
			[CRepr]
			public struct VTable : IAuthenticate.VTable
			{
				public new function HRESULT(IAuthenticateEx *self, HWND* phwnd, PWSTR* pszUsername, PWSTR* pszPassword, AUTHENTICATEINFO* pauthinfo) AuthenticateEx;
			}
		}
		[CRepr]
		public struct IUri : IUnknown
		{
			public const new Guid IID = .(0xa39ee748, 0x6a27, 0x4817, 0xa6, 0xf2, 0x13, 0x91, 0x4b, 0xef, 0x58, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyBSTR(Uri_PROPERTY uriProp, BSTR* pbstrProperty, uint32 dwFlags) mut
			{
				return VT.GetPropertyBSTR(&this, uriProp, pbstrProperty, dwFlags);
			}
			public HRESULT GetPropertyLength(Uri_PROPERTY uriProp, uint32* pcchProperty, uint32 dwFlags) mut
			{
				return VT.GetPropertyLength(&this, uriProp, pcchProperty, dwFlags);
			}
			public HRESULT GetPropertyDWORD(Uri_PROPERTY uriProp, uint32* pdwProperty, uint32 dwFlags) mut
			{
				return VT.GetPropertyDWORD(&this, uriProp, pdwProperty, dwFlags);
			}
			public HRESULT HasProperty(Uri_PROPERTY uriProp, BOOL* pfHasProperty) mut
			{
				return VT.HasProperty(&this, uriProp, pfHasProperty);
			}
			public HRESULT GetAbsoluteUri(BSTR* pbstrAbsoluteUri) mut
			{
				return VT.GetAbsoluteUri(&this, pbstrAbsoluteUri);
			}
			public HRESULT GetAuthority(BSTR* pbstrAuthority) mut
			{
				return VT.GetAuthority(&this, pbstrAuthority);
			}
			public HRESULT GetDisplayUri(BSTR* pbstrDisplayString) mut
			{
				return VT.GetDisplayUri(&this, pbstrDisplayString);
			}
			public HRESULT GetDomain(BSTR* pbstrDomain) mut
			{
				return VT.GetDomain(&this, pbstrDomain);
			}
			public HRESULT GetExtension(BSTR* pbstrExtension) mut
			{
				return VT.GetExtension(&this, pbstrExtension);
			}
			public HRESULT GetFragment(BSTR* pbstrFragment) mut
			{
				return VT.GetFragment(&this, pbstrFragment);
			}
			public HRESULT GetHost(BSTR* pbstrHost) mut
			{
				return VT.GetHost(&this, pbstrHost);
			}
			public HRESULT GetPassword(BSTR* pbstrPassword) mut
			{
				return VT.GetPassword(&this, pbstrPassword);
			}
			public HRESULT GetPath(BSTR* pbstrPath) mut
			{
				return VT.GetPath(&this, pbstrPath);
			}
			public HRESULT GetPathAndQuery(BSTR* pbstrPathAndQuery) mut
			{
				return VT.GetPathAndQuery(&this, pbstrPathAndQuery);
			}
			public HRESULT GetQuery(BSTR* pbstrQuery) mut
			{
				return VT.GetQuery(&this, pbstrQuery);
			}
			public HRESULT GetRawUri(BSTR* pbstrRawUri) mut
			{
				return VT.GetRawUri(&this, pbstrRawUri);
			}
			public HRESULT GetSchemeName(BSTR* pbstrSchemeName) mut
			{
				return VT.GetSchemeName(&this, pbstrSchemeName);
			}
			public HRESULT GetUserInfo(BSTR* pbstrUserInfo) mut
			{
				return VT.GetUserInfo(&this, pbstrUserInfo);
			}
			public HRESULT GetUserName(BSTR* pbstrUserName) mut
			{
				return VT.GetUserName(&this, pbstrUserName);
			}
			public HRESULT GetHostType(uint32* pdwHostType) mut
			{
				return VT.GetHostType(&this, pdwHostType);
			}
			public HRESULT GetPort(uint32* pdwPort) mut
			{
				return VT.GetPort(&this, pdwPort);
			}
			public HRESULT GetScheme(uint32* pdwScheme) mut
			{
				return VT.GetScheme(&this, pdwScheme);
			}
			public HRESULT GetZone(uint32* pdwZone) mut
			{
				return VT.GetZone(&this, pdwZone);
			}
			public HRESULT GetProperties(uint32* pdwFlags) mut
			{
				return VT.GetProperties(&this, pdwFlags);
			}
			public HRESULT IsEqual(IUri* pUri, BOOL* pfEqual) mut
			{
				return VT.IsEqual(&this, pUri, pfEqual);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUri *self, Uri_PROPERTY uriProp, BSTR* pbstrProperty, uint32 dwFlags) GetPropertyBSTR;
				public new function HRESULT(IUri *self, Uri_PROPERTY uriProp, uint32* pcchProperty, uint32 dwFlags) GetPropertyLength;
				public new function HRESULT(IUri *self, Uri_PROPERTY uriProp, uint32* pdwProperty, uint32 dwFlags) GetPropertyDWORD;
				public new function HRESULT(IUri *self, Uri_PROPERTY uriProp, BOOL* pfHasProperty) HasProperty;
				public new function HRESULT(IUri *self, BSTR* pbstrAbsoluteUri) GetAbsoluteUri;
				public new function HRESULT(IUri *self, BSTR* pbstrAuthority) GetAuthority;
				public new function HRESULT(IUri *self, BSTR* pbstrDisplayString) GetDisplayUri;
				public new function HRESULT(IUri *self, BSTR* pbstrDomain) GetDomain;
				public new function HRESULT(IUri *self, BSTR* pbstrExtension) GetExtension;
				public new function HRESULT(IUri *self, BSTR* pbstrFragment) GetFragment;
				public new function HRESULT(IUri *self, BSTR* pbstrHost) GetHost;
				public new function HRESULT(IUri *self, BSTR* pbstrPassword) GetPassword;
				public new function HRESULT(IUri *self, BSTR* pbstrPath) GetPath;
				public new function HRESULT(IUri *self, BSTR* pbstrPathAndQuery) GetPathAndQuery;
				public new function HRESULT(IUri *self, BSTR* pbstrQuery) GetQuery;
				public new function HRESULT(IUri *self, BSTR* pbstrRawUri) GetRawUri;
				public new function HRESULT(IUri *self, BSTR* pbstrSchemeName) GetSchemeName;
				public new function HRESULT(IUri *self, BSTR* pbstrUserInfo) GetUserInfo;
				public new function HRESULT(IUri *self, BSTR* pbstrUserName) GetUserName;
				public new function HRESULT(IUri *self, uint32* pdwHostType) GetHostType;
				public new function HRESULT(IUri *self, uint32* pdwPort) GetPort;
				public new function HRESULT(IUri *self, uint32* pdwScheme) GetScheme;
				public new function HRESULT(IUri *self, uint32* pdwZone) GetZone;
				public new function HRESULT(IUri *self, uint32* pdwFlags) GetProperties;
				public new function HRESULT(IUri *self, IUri* pUri, BOOL* pfEqual) IsEqual;
			}
		}
		[CRepr]
		public struct IUriBuilder : IUnknown
		{
			public const new Guid IID = .(0x4221b2e1, 0x8955, 0x46c0, 0xbd, 0x5b, 0xde, 0x98, 0x97, 0x56, 0x5d, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateUriSimple(uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) mut
			{
				return VT.CreateUriSimple(&this, dwAllowEncodingPropertyMask, dwReserved, ppIUri);
			}
			public HRESULT CreateUri(uint32 dwCreateFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) mut
			{
				return VT.CreateUri(&this, dwCreateFlags, dwAllowEncodingPropertyMask, dwReserved, ppIUri);
			}
			public HRESULT CreateUriWithFlags(uint32 dwCreateFlags, uint32 dwUriBuilderFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) mut
			{
				return VT.CreateUriWithFlags(&this, dwCreateFlags, dwUriBuilderFlags, dwAllowEncodingPropertyMask, dwReserved, ppIUri);
			}
			public HRESULT GetIUri(IUri** ppIUri) mut
			{
				return VT.GetIUri(&this, ppIUri);
			}
			public HRESULT SetIUri(IUri* pIUri) mut
			{
				return VT.SetIUri(&this, pIUri);
			}
			public HRESULT GetFragment(uint32* pcchFragment, PWSTR* ppwzFragment) mut
			{
				return VT.GetFragment(&this, pcchFragment, ppwzFragment);
			}
			public HRESULT GetHost(uint32* pcchHost, PWSTR* ppwzHost) mut
			{
				return VT.GetHost(&this, pcchHost, ppwzHost);
			}
			public HRESULT GetPassword(uint32* pcchPassword, PWSTR* ppwzPassword) mut
			{
				return VT.GetPassword(&this, pcchPassword, ppwzPassword);
			}
			public HRESULT GetPath(uint32* pcchPath, PWSTR* ppwzPath) mut
			{
				return VT.GetPath(&this, pcchPath, ppwzPath);
			}
			public HRESULT GetPort(BOOL* pfHasPort, uint32* pdwPort) mut
			{
				return VT.GetPort(&this, pfHasPort, pdwPort);
			}
			public HRESULT GetQuery(uint32* pcchQuery, PWSTR* ppwzQuery) mut
			{
				return VT.GetQuery(&this, pcchQuery, ppwzQuery);
			}
			public HRESULT GetSchemeName(uint32* pcchSchemeName, PWSTR* ppwzSchemeName) mut
			{
				return VT.GetSchemeName(&this, pcchSchemeName, ppwzSchemeName);
			}
			public HRESULT GetUserName(uint32* pcchUserName, PWSTR* ppwzUserName) mut
			{
				return VT.GetUserName(&this, pcchUserName, ppwzUserName);
			}
			public HRESULT SetFragment(PWSTR pwzNewValue) mut
			{
				return VT.SetFragment(&this, pwzNewValue);
			}
			public HRESULT SetHost(PWSTR pwzNewValue) mut
			{
				return VT.SetHost(&this, pwzNewValue);
			}
			public HRESULT SetPassword(PWSTR pwzNewValue) mut
			{
				return VT.SetPassword(&this, pwzNewValue);
			}
			public HRESULT SetPath(PWSTR pwzNewValue) mut
			{
				return VT.SetPath(&this, pwzNewValue);
			}
			public HRESULT SetPort(BOOL fHasPort, uint32 dwNewValue) mut
			{
				return VT.SetPort(&this, fHasPort, dwNewValue);
			}
			public HRESULT SetQuery(PWSTR pwzNewValue) mut
			{
				return VT.SetQuery(&this, pwzNewValue);
			}
			public HRESULT SetSchemeName(PWSTR pwzNewValue) mut
			{
				return VT.SetSchemeName(&this, pwzNewValue);
			}
			public HRESULT SetUserName(PWSTR pwzNewValue) mut
			{
				return VT.SetUserName(&this, pwzNewValue);
			}
			public HRESULT RemoveProperties(uint32 dwPropertyMask) mut
			{
				return VT.RemoveProperties(&this, dwPropertyMask);
			}
			public HRESULT HasBeenModified(BOOL* pfModified) mut
			{
				return VT.HasBeenModified(&this, pfModified);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUriBuilder *self, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUriSimple;
				public new function HRESULT(IUriBuilder *self, uint32 dwCreateFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUri;
				public new function HRESULT(IUriBuilder *self, uint32 dwCreateFlags, uint32 dwUriBuilderFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, IUri** ppIUri) CreateUriWithFlags;
				public new function HRESULT(IUriBuilder *self, IUri** ppIUri) GetIUri;
				public new function HRESULT(IUriBuilder *self, IUri* pIUri) SetIUri;
				public new function HRESULT(IUriBuilder *self, uint32* pcchFragment, PWSTR* ppwzFragment) GetFragment;
				public new function HRESULT(IUriBuilder *self, uint32* pcchHost, PWSTR* ppwzHost) GetHost;
				public new function HRESULT(IUriBuilder *self, uint32* pcchPassword, PWSTR* ppwzPassword) GetPassword;
				public new function HRESULT(IUriBuilder *self, uint32* pcchPath, PWSTR* ppwzPath) GetPath;
				public new function HRESULT(IUriBuilder *self, BOOL* pfHasPort, uint32* pdwPort) GetPort;
				public new function HRESULT(IUriBuilder *self, uint32* pcchQuery, PWSTR* ppwzQuery) GetQuery;
				public new function HRESULT(IUriBuilder *self, uint32* pcchSchemeName, PWSTR* ppwzSchemeName) GetSchemeName;
				public new function HRESULT(IUriBuilder *self, uint32* pcchUserName, PWSTR* ppwzUserName) GetUserName;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetFragment;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetHost;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetPassword;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetPath;
				public new function HRESULT(IUriBuilder *self, BOOL fHasPort, uint32 dwNewValue) SetPort;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetQuery;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetSchemeName;
				public new function HRESULT(IUriBuilder *self, PWSTR pwzNewValue) SetUserName;
				public new function HRESULT(IUriBuilder *self, uint32 dwPropertyMask) RemoveProperties;
				public new function HRESULT(IUriBuilder *self, BOOL* pfModified) HasBeenModified;
			}
		}
		[CRepr]
		public struct IBindHost : IUnknown
		{
			public const new Guid IID = .(0xfc4801a1, 0x2ba9, 0x11cf, 0xa2, 0x29, 0x00, 0xaa, 0x00, 0x3d, 0x73, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMoniker(PWSTR szName, IBindCtx* pBC, IMoniker** ppmk, uint32 dwReserved) mut
			{
				return VT.CreateMoniker(&this, szName, pBC, ppmk, dwReserved);
			}
			public HRESULT MonikerBindToStorage(IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) mut
			{
				return VT.MonikerBindToStorage(&this, pMk, pBC, pBSC, riid, ppvObj);
			}
			public HRESULT MonikerBindToObject(IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) mut
			{
				return VT.MonikerBindToObject(&this, pMk, pBC, pBSC, riid, ppvObj);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBindHost *self, PWSTR szName, IBindCtx* pBC, IMoniker** ppmk, uint32 dwReserved) CreateMoniker;
				public new function HRESULT(IBindHost *self, IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) MonikerBindToStorage;
				public new function HRESULT(IBindHost *self, IMoniker* pMk, IBindCtx* pBC, IBindStatusCallback* pBSC, Guid* riid, void** ppvObj) MonikerBindToObject;
			}
		}
		[CRepr]
		public struct IDispatch : IUnknown
		{
			public const new Guid IID = .(0x00020400, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeInfoCount(uint32* pctinfo) mut
			{
				return VT.GetTypeInfoCount(&this, pctinfo);
			}
			public HRESULT GetTypeInfo(uint32 iTInfo, uint32 lcid, ITypeInfo** ppTInfo) mut
			{
				return VT.GetTypeInfo(&this, iTInfo, lcid, ppTInfo);
			}
			public HRESULT GetIDsOfNames(Guid* riid, PWSTR* rgszNames, uint32 cNames, uint32 lcid, int32* rgDispId) mut
			{
				return VT.GetIDsOfNames(&this, riid, rgszNames, cNames, lcid, rgDispId);
			}
			public HRESULT Invoke(int32 dispIdMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) mut
			{
				return VT.Invoke(&this, dispIdMember, riid, lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDispatch *self, uint32* pctinfo) GetTypeInfoCount;
				public new function HRESULT(IDispatch *self, uint32 iTInfo, uint32 lcid, ITypeInfo** ppTInfo) GetTypeInfo;
				public new function HRESULT(IDispatch *self, Guid* riid, PWSTR* rgszNames, uint32 cNames, uint32 lcid, int32* rgDispId) GetIDsOfNames;
				public new function HRESULT(IDispatch *self, int32 dispIdMember, Guid* riid, uint32 lcid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) Invoke;
			}
		}
		[CRepr]
		public struct ITypeComp : IUnknown
		{
			public const new Guid IID = .(0x00020403, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Bind(PWSTR szName, uint32 lHashVal, uint16 wFlags, ITypeInfo** ppTInfo, DESCKIND* pDescKind, BINDPTR* pBindPtr) mut
			{
				return VT.Bind(&this, szName, lHashVal, wFlags, ppTInfo, pDescKind, pBindPtr);
			}
			public HRESULT BindType(PWSTR szName, uint32 lHashVal, ITypeInfo** ppTInfo, ITypeComp** ppTComp) mut
			{
				return VT.BindType(&this, szName, lHashVal, ppTInfo, ppTComp);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeComp *self, PWSTR szName, uint32 lHashVal, uint16 wFlags, ITypeInfo** ppTInfo, DESCKIND* pDescKind, BINDPTR* pBindPtr) Bind;
				public new function HRESULT(ITypeComp *self, PWSTR szName, uint32 lHashVal, ITypeInfo** ppTInfo, ITypeComp** ppTComp) BindType;
			}
		}
		[CRepr]
		public struct ITypeInfo : IUnknown
		{
			public const new Guid IID = .(0x00020401, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeAttr(TYPEATTR** ppTypeAttr) mut
			{
				return VT.GetTypeAttr(&this, ppTypeAttr);
			}
			public HRESULT GetTypeComp(ITypeComp** ppTComp) mut
			{
				return VT.GetTypeComp(&this, ppTComp);
			}
			public HRESULT GetFuncDesc(uint32 index, FUNCDESC** ppFuncDesc) mut
			{
				return VT.GetFuncDesc(&this, index, ppFuncDesc);
			}
			public HRESULT GetVarDesc(uint32 index, VARDESC** ppVarDesc) mut
			{
				return VT.GetVarDesc(&this, index, ppVarDesc);
			}
			public HRESULT GetNames(int32 memid, BSTR* rgBstrNames, uint32 cMaxNames, uint32* pcNames) mut
			{
				return VT.GetNames(&this, memid, rgBstrNames, cMaxNames, pcNames);
			}
			public HRESULT GetRefTypeOfImplType(uint32 index, uint32* pRefType) mut
			{
				return VT.GetRefTypeOfImplType(&this, index, pRefType);
			}
			public HRESULT GetImplTypeFlags(uint32 index, int32* pImplTypeFlags) mut
			{
				return VT.GetImplTypeFlags(&this, index, pImplTypeFlags);
			}
			public HRESULT GetIDsOfNames(PWSTR* rgszNames, uint32 cNames, int32* pMemId) mut
			{
				return VT.GetIDsOfNames(&this, rgszNames, cNames, pMemId);
			}
			public HRESULT Invoke(void* pvInstance, int32 memid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) mut
			{
				return VT.Invoke(&this, pvInstance, memid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);
			}
			public HRESULT GetDocumentation(int32 memid, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) mut
			{
				return VT.GetDocumentation(&this, memid, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile);
			}
			public HRESULT GetDllEntry(int32 memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, uint16* pwOrdinal) mut
			{
				return VT.GetDllEntry(&this, memid, invKind, pBstrDllName, pBstrName, pwOrdinal);
			}
			public HRESULT GetRefTypeInfo(uint32 hRefType, ITypeInfo** ppTInfo) mut
			{
				return VT.GetRefTypeInfo(&this, hRefType, ppTInfo);
			}
			public HRESULT AddressOfMember(int32 memid, INVOKEKIND invKind, void** ppv) mut
			{
				return VT.AddressOfMember(&this, memid, invKind, ppv);
			}
			public HRESULT CreateInstance(IUnknown* pUnkOuter, Guid* riid, void** ppvObj) mut
			{
				return VT.CreateInstance(&this, pUnkOuter, riid, ppvObj);
			}
			public HRESULT GetMops(int32 memid, BSTR* pBstrMops) mut
			{
				return VT.GetMops(&this, memid, pBstrMops);
			}
			public HRESULT GetContainingTypeLib(ITypeLib** ppTLib, uint32* pIndex) mut
			{
				return VT.GetContainingTypeLib(&this, ppTLib, pIndex);
			}
			public void ReleaseTypeAttr(TYPEATTR* pTypeAttr) mut
			{
				VT.ReleaseTypeAttr(&this, pTypeAttr);
			}
			public void ReleaseFuncDesc(FUNCDESC* pFuncDesc) mut
			{
				VT.ReleaseFuncDesc(&this, pFuncDesc);
			}
			public void ReleaseVarDesc(VARDESC* pVarDesc) mut
			{
				VT.ReleaseVarDesc(&this, pVarDesc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeInfo *self, TYPEATTR** ppTypeAttr) GetTypeAttr;
				public new function HRESULT(ITypeInfo *self, ITypeComp** ppTComp) GetTypeComp;
				public new function HRESULT(ITypeInfo *self, uint32 index, FUNCDESC** ppFuncDesc) GetFuncDesc;
				public new function HRESULT(ITypeInfo *self, uint32 index, VARDESC** ppVarDesc) GetVarDesc;
				public new function HRESULT(ITypeInfo *self, int32 memid, BSTR* rgBstrNames, uint32 cMaxNames, uint32* pcNames) GetNames;
				public new function HRESULT(ITypeInfo *self, uint32 index, uint32* pRefType) GetRefTypeOfImplType;
				public new function HRESULT(ITypeInfo *self, uint32 index, int32* pImplTypeFlags) GetImplTypeFlags;
				public new function HRESULT(ITypeInfo *self, PWSTR* rgszNames, uint32 cNames, int32* pMemId) GetIDsOfNames;
				public new function HRESULT(ITypeInfo *self, void* pvInstance, int32 memid, uint16 wFlags, DISPPARAMS* pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) Invoke;
				public new function HRESULT(ITypeInfo *self, int32 memid, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public new function HRESULT(ITypeInfo *self, int32 memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, uint16* pwOrdinal) GetDllEntry;
				public new function HRESULT(ITypeInfo *self, uint32 hRefType, ITypeInfo** ppTInfo) GetRefTypeInfo;
				public new function HRESULT(ITypeInfo *self, int32 memid, INVOKEKIND invKind, void** ppv) AddressOfMember;
				public new function HRESULT(ITypeInfo *self, IUnknown* pUnkOuter, Guid* riid, void** ppvObj) CreateInstance;
				public new function HRESULT(ITypeInfo *self, int32 memid, BSTR* pBstrMops) GetMops;
				public new function HRESULT(ITypeInfo *self, ITypeLib** ppTLib, uint32* pIndex) GetContainingTypeLib;
				public new function void(ITypeInfo *self, TYPEATTR* pTypeAttr) ReleaseTypeAttr;
				public new function void(ITypeInfo *self, FUNCDESC* pFuncDesc) ReleaseFuncDesc;
				public new function void(ITypeInfo *self, VARDESC* pVarDesc) ReleaseVarDesc;
			}
		}
		[CRepr]
		public struct ITypeInfo2 : ITypeInfo
		{
			public const new Guid IID = .(0x00020412, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeKind(TYPEKIND* pTypeKind) mut
			{
				return VT.GetTypeKind(&this, pTypeKind);
			}
			public HRESULT GetTypeFlags(uint32* pTypeFlags) mut
			{
				return VT.GetTypeFlags(&this, pTypeFlags);
			}
			public HRESULT GetFuncIndexOfMemId(int32 memid, INVOKEKIND invKind, uint32* pFuncIndex) mut
			{
				return VT.GetFuncIndexOfMemId(&this, memid, invKind, pFuncIndex);
			}
			public HRESULT GetVarIndexOfMemId(int32 memid, uint32* pVarIndex) mut
			{
				return VT.GetVarIndexOfMemId(&this, memid, pVarIndex);
			}
			public HRESULT GetCustData(Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetCustData(&this, guid, pVarVal);
			}
			public HRESULT GetFuncCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetFuncCustData(&this, index, guid, pVarVal);
			}
			public HRESULT GetParamCustData(uint32 indexFunc, uint32 indexParam, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetParamCustData(&this, indexFunc, indexParam, guid, pVarVal);
			}
			public HRESULT GetVarCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetVarCustData(&this, index, guid, pVarVal);
			}
			public HRESULT GetImplTypeCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetImplTypeCustData(&this, index, guid, pVarVal);
			}
			public HRESULT GetDocumentation2(int32 memid, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) mut
			{
				return VT.GetDocumentation2(&this, memid, lcid, pbstrHelpString, pdwHelpStringContext, pbstrHelpStringDll);
			}
			public HRESULT GetAllCustData(CUSTDATA* pCustData) mut
			{
				return VT.GetAllCustData(&this, pCustData);
			}
			public HRESULT GetAllFuncCustData(uint32 index, CUSTDATA* pCustData) mut
			{
				return VT.GetAllFuncCustData(&this, index, pCustData);
			}
			public HRESULT GetAllParamCustData(uint32 indexFunc, uint32 indexParam, CUSTDATA* pCustData) mut
			{
				return VT.GetAllParamCustData(&this, indexFunc, indexParam, pCustData);
			}
			public HRESULT GetAllVarCustData(uint32 index, CUSTDATA* pCustData) mut
			{
				return VT.GetAllVarCustData(&this, index, pCustData);
			}
			public HRESULT GetAllImplTypeCustData(uint32 index, CUSTDATA* pCustData) mut
			{
				return VT.GetAllImplTypeCustData(&this, index, pCustData);
			}
			[CRepr]
			public struct VTable : ITypeInfo.VTable
			{
				public new function HRESULT(ITypeInfo2 *self, TYPEKIND* pTypeKind) GetTypeKind;
				public new function HRESULT(ITypeInfo2 *self, uint32* pTypeFlags) GetTypeFlags;
				public new function HRESULT(ITypeInfo2 *self, int32 memid, INVOKEKIND invKind, uint32* pFuncIndex) GetFuncIndexOfMemId;
				public new function HRESULT(ITypeInfo2 *self, int32 memid, uint32* pVarIndex) GetVarIndexOfMemId;
				public new function HRESULT(ITypeInfo2 *self, Guid* guid, VARIANT* pVarVal) GetCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetFuncCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 indexFunc, uint32 indexParam, Guid* guid, VARIANT* pVarVal) GetParamCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetVarCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) GetImplTypeCustData;
				public new function HRESULT(ITypeInfo2 *self, int32 memid, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public new function HRESULT(ITypeInfo2 *self, CUSTDATA* pCustData) GetAllCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllFuncCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 indexFunc, uint32 indexParam, CUSTDATA* pCustData) GetAllParamCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllVarCustData;
				public new function HRESULT(ITypeInfo2 *self, uint32 index, CUSTDATA* pCustData) GetAllImplTypeCustData;
			}
		}
		[CRepr]
		public struct ITypeLib : IUnknown
		{
			public const new Guid IID = .(0x00020402, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetTypeInfoCount() mut
			{
				return VT.GetTypeInfoCount(&this);
			}
			public HRESULT GetTypeInfo(uint32 index, ITypeInfo** ppTInfo) mut
			{
				return VT.GetTypeInfo(&this, index, ppTInfo);
			}
			public HRESULT GetTypeInfoType(uint32 index, TYPEKIND* pTKind) mut
			{
				return VT.GetTypeInfoType(&this, index, pTKind);
			}
			public HRESULT GetTypeInfoOfGuid(Guid* guid, ITypeInfo** ppTinfo) mut
			{
				return VT.GetTypeInfoOfGuid(&this, guid, ppTinfo);
			}
			public HRESULT GetLibAttr(TLIBATTR** ppTLibAttr) mut
			{
				return VT.GetLibAttr(&this, ppTLibAttr);
			}
			public HRESULT GetTypeComp(ITypeComp** ppTComp) mut
			{
				return VT.GetTypeComp(&this, ppTComp);
			}
			public HRESULT GetDocumentation(int32 index, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) mut
			{
				return VT.GetDocumentation(&this, index, pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile);
			}
			public HRESULT IsName(PWSTR szNameBuf, uint32 lHashVal, BOOL* pfName) mut
			{
				return VT.IsName(&this, szNameBuf, lHashVal, pfName);
			}
			public HRESULT FindName(PWSTR szNameBuf, uint32 lHashVal, ITypeInfo** ppTInfo, int32* rgMemId, uint16* pcFound) mut
			{
				return VT.FindName(&this, szNameBuf, lHashVal, ppTInfo, rgMemId, pcFound);
			}
			public void ReleaseTLibAttr(TLIBATTR* pTLibAttr) mut
			{
				VT.ReleaseTLibAttr(&this, pTLibAttr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ITypeLib *self) GetTypeInfoCount;
				public new function HRESULT(ITypeLib *self, uint32 index, ITypeInfo** ppTInfo) GetTypeInfo;
				public new function HRESULT(ITypeLib *self, uint32 index, TYPEKIND* pTKind) GetTypeInfoType;
				public new function HRESULT(ITypeLib *self, Guid* guid, ITypeInfo** ppTinfo) GetTypeInfoOfGuid;
				public new function HRESULT(ITypeLib *self, TLIBATTR** ppTLibAttr) GetLibAttr;
				public new function HRESULT(ITypeLib *self, ITypeComp** ppTComp) GetTypeComp;
				public new function HRESULT(ITypeLib *self, int32 index, BSTR* pBstrName, BSTR* pBstrDocString, uint32* pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public new function HRESULT(ITypeLib *self, PWSTR szNameBuf, uint32 lHashVal, BOOL* pfName) IsName;
				public new function HRESULT(ITypeLib *self, PWSTR szNameBuf, uint32 lHashVal, ITypeInfo** ppTInfo, int32* rgMemId, uint16* pcFound) FindName;
				public new function void(ITypeLib *self, TLIBATTR* pTLibAttr) ReleaseTLibAttr;
			}
		}
		[CRepr]
		public struct ITypeLib2 : ITypeLib
		{
			public const new Guid IID = .(0x00020411, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCustData(Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.GetCustData(&this, guid, pVarVal);
			}
			public HRESULT GetLibStatistics(uint32* pcUniqueNames, uint32* pcchUniqueNames) mut
			{
				return VT.GetLibStatistics(&this, pcUniqueNames, pcchUniqueNames);
			}
			public HRESULT GetDocumentation2(int32 index, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) mut
			{
				return VT.GetDocumentation2(&this, index, lcid, pbstrHelpString, pdwHelpStringContext, pbstrHelpStringDll);
			}
			public HRESULT GetAllCustData(CUSTDATA* pCustData) mut
			{
				return VT.GetAllCustData(&this, pCustData);
			}
			[CRepr]
			public struct VTable : ITypeLib.VTable
			{
				public new function HRESULT(ITypeLib2 *self, Guid* guid, VARIANT* pVarVal) GetCustData;
				public new function HRESULT(ITypeLib2 *self, uint32* pcUniqueNames, uint32* pcchUniqueNames) GetLibStatistics;
				public new function HRESULT(ITypeLib2 *self, int32 index, uint32 lcid, BSTR* pbstrHelpString, uint32* pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public new function HRESULT(ITypeLib2 *self, CUSTDATA* pCustData) GetAllCustData;
			}
		}
		[CRepr]
		public struct IErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x1cf2b120, 0x547d, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGUID(Guid* pGUID) mut
			{
				return VT.GetGUID(&this, pGUID);
			}
			public HRESULT GetSource(BSTR* pBstrSource) mut
			{
				return VT.GetSource(&this, pBstrSource);
			}
			public HRESULT GetDescription(BSTR* pBstrDescription) mut
			{
				return VT.GetDescription(&this, pBstrDescription);
			}
			public HRESULT GetHelpFile(BSTR* pBstrHelpFile) mut
			{
				return VT.GetHelpFile(&this, pBstrHelpFile);
			}
			public HRESULT GetHelpContext(uint32* pdwHelpContext) mut
			{
				return VT.GetHelpContext(&this, pdwHelpContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IErrorInfo *self, Guid* pGUID) GetGUID;
				public new function HRESULT(IErrorInfo *self, BSTR* pBstrSource) GetSource;
				public new function HRESULT(IErrorInfo *self, BSTR* pBstrDescription) GetDescription;
				public new function HRESULT(IErrorInfo *self, BSTR* pBstrHelpFile) GetHelpFile;
				public new function HRESULT(IErrorInfo *self, uint32* pdwHelpContext) GetHelpContext;
			}
		}
		[CRepr]
		public struct ISupportErrorInfo : IUnknown
		{
			public const new Guid IID = .(0xdf0b3d60, 0x548f, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InterfaceSupportsErrorInfo(Guid* riid) mut
			{
				return VT.InterfaceSupportsErrorInfo(&this, riid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISupportErrorInfo *self, Guid* riid) InterfaceSupportsErrorInfo;
			}
		}
		[CRepr]
		public struct IErrorLog : IUnknown
		{
			public const new Guid IID = .(0x3127ca40, 0x446e, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddError(PWSTR pszPropName, EXCEPINFO* pExcepInfo) mut
			{
				return VT.AddError(&this, pszPropName, pExcepInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IErrorLog *self, PWSTR pszPropName, EXCEPINFO* pExcepInfo) AddError;
			}
		}
		[CRepr]
		public struct ITypeLibRegistrationReader : IUnknown
		{
			public const new Guid IID = .(0xed6a8a2a, 0xb160, 0x4e77, 0x8f, 0x73, 0xaa, 0x74, 0x35, 0xcd, 0x5c, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumTypeLibRegistrations(IEnumUnknown** ppEnumUnknown) mut
			{
				return VT.EnumTypeLibRegistrations(&this, ppEnumUnknown);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeLibRegistrationReader *self, IEnumUnknown** ppEnumUnknown) EnumTypeLibRegistrations;
			}
		}
		[CRepr]
		public struct ITypeLibRegistration : IUnknown
		{
			public const new Guid IID = .(0x76a3e735, 0x02df, 0x4a12, 0x98, 0xeb, 0x04, 0x3a, 0xd3, 0x60, 0x0a, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGuid(Guid* pGuid) mut
			{
				return VT.GetGuid(&this, pGuid);
			}
			public HRESULT GetVersion(BSTR* pVersion) mut
			{
				return VT.GetVersion(&this, pVersion);
			}
			public HRESULT GetLcid(uint32* pLcid) mut
			{
				return VT.GetLcid(&this, pLcid);
			}
			public HRESULT GetWin32Path(BSTR* pWin32Path) mut
			{
				return VT.GetWin32Path(&this, pWin32Path);
			}
			public HRESULT GetWin64Path(BSTR* pWin64Path) mut
			{
				return VT.GetWin64Path(&this, pWin64Path);
			}
			public HRESULT GetDisplayName(BSTR* pDisplayName) mut
			{
				return VT.GetDisplayName(&this, pDisplayName);
			}
			public HRESULT ComGetFlags(uint32* pFlags) mut
			{
				return VT.ComGetFlags(&this, pFlags);
			}
			public HRESULT GetHelpDir(BSTR* pHelpDir) mut
			{
				return VT.GetHelpDir(&this, pHelpDir);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeLibRegistration *self, Guid* pGuid) GetGuid;
				public new function HRESULT(ITypeLibRegistration *self, BSTR* pVersion) GetVersion;
				public new function HRESULT(ITypeLibRegistration *self, uint32* pLcid) GetLcid;
				public new function HRESULT(ITypeLibRegistration *self, BSTR* pWin32Path) GetWin32Path;
				public new function HRESULT(ITypeLibRegistration *self, BSTR* pWin64Path) GetWin64Path;
				public new function HRESULT(ITypeLibRegistration *self, BSTR* pDisplayName) GetDisplayName;
				public new function HRESULT(ITypeLibRegistration *self, uint32* pFlags) ComGetFlags;
				public new function HRESULT(ITypeLibRegistration *self, BSTR* pHelpDir) GetHelpDir;
			}
		}
		[CRepr]
		public struct IEnumConnections : IUnknown
		{
			public const new Guid IID = .(0xb196b287, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cConnections, CONNECTDATA* rgcd, uint32* pcFetched) mut
			{
				return VT.Next(&this, cConnections, rgcd, pcFetched);
			}
			public HRESULT Skip(uint32 cConnections) mut
			{
				return VT.Skip(&this, cConnections);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumConnections** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumConnections *self, uint32 cConnections, CONNECTDATA* rgcd, uint32* pcFetched) Next;
				public new function HRESULT(IEnumConnections *self, uint32 cConnections) Skip;
				public new function HRESULT(IEnumConnections *self) Reset;
				public new function HRESULT(IEnumConnections *self, IEnumConnections** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPoint : IUnknown
		{
			public const new Guid IID = .(0xb196b286, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionInterface(Guid* pIID) mut
			{
				return VT.GetConnectionInterface(&this, pIID);
			}
			public HRESULT GetConnectionPointContainer(IConnectionPointContainer** ppCPC) mut
			{
				return VT.GetConnectionPointContainer(&this, ppCPC);
			}
			public HRESULT Advise(IUnknown* pUnkSink, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pUnkSink, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT EnumConnections(IEnumConnections** ppEnum) mut
			{
				return VT.EnumConnections(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConnectionPoint *self, Guid* pIID) GetConnectionInterface;
				public new function HRESULT(IConnectionPoint *self, IConnectionPointContainer** ppCPC) GetConnectionPointContainer;
				public new function HRESULT(IConnectionPoint *self, IUnknown* pUnkSink, uint32* pdwCookie) Advise;
				public new function HRESULT(IConnectionPoint *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(IConnectionPoint *self, IEnumConnections** ppEnum) EnumConnections;
			}
		}
		[CRepr]
		public struct IEnumConnectionPoints : IUnknown
		{
			public const new Guid IID = .(0xb196b285, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cConnections, IConnectionPoint** ppCP, uint32* pcFetched) mut
			{
				return VT.Next(&this, cConnections, ppCP, pcFetched);
			}
			public HRESULT Skip(uint32 cConnections) mut
			{
				return VT.Skip(&this, cConnections);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumConnectionPoints** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumConnectionPoints *self, uint32 cConnections, IConnectionPoint** ppCP, uint32* pcFetched) Next;
				public new function HRESULT(IEnumConnectionPoints *self, uint32 cConnections) Skip;
				public new function HRESULT(IEnumConnectionPoints *self) Reset;
				public new function HRESULT(IEnumConnectionPoints *self, IEnumConnectionPoints** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPointContainer : IUnknown
		{
			public const new Guid IID = .(0xb196b284, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumConnectionPoints(IEnumConnectionPoints** ppEnum) mut
			{
				return VT.EnumConnectionPoints(&this, ppEnum);
			}
			public HRESULT FindConnectionPoint(Guid* riid, IConnectionPoint** ppCP) mut
			{
				return VT.FindConnectionPoint(&this, riid, ppCP);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConnectionPointContainer *self, IEnumConnectionPoints** ppEnum) EnumConnectionPoints;
				public new function HRESULT(IConnectionPointContainer *self, Guid* riid, IConnectionPoint** ppCP) FindConnectionPoint;
			}
		}
		[CRepr]
		public struct IPersistMemory : IPersist
		{
			public const new Guid IID = .(0xbd1ae5e0, 0xa6ae, 0x11ce, 0xbd, 0x37, 0x50, 0x42, 0x00, 0xc1, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			public HRESULT Load(void* pMem, uint32 cbSize) mut
			{
				return VT.Load(&this, pMem, cbSize);
			}
			public HRESULT Save(void* pMem, BOOL fClearDirty, uint32 cbSize) mut
			{
				return VT.Save(&this, pMem, fClearDirty, cbSize);
			}
			public HRESULT GetSizeMax(uint32* pCbSize) mut
			{
				return VT.GetSizeMax(&this, pCbSize);
			}
			public HRESULT InitNew() mut
			{
				return VT.InitNew(&this);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistMemory *self) IsDirty;
				public new function HRESULT(IPersistMemory *self, void* pMem, uint32 cbSize) Load;
				public new function HRESULT(IPersistMemory *self, void* pMem, BOOL fClearDirty, uint32 cbSize) Save;
				public new function HRESULT(IPersistMemory *self, uint32* pCbSize) GetSizeMax;
				public new function HRESULT(IPersistMemory *self) InitNew;
			}
		}
		[CRepr]
		public struct IPersistStreamInit : IPersist
		{
			public const new Guid IID = .(0x7fd52380, 0x4e07, 0x101b, 0xae, 0x2d, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			public HRESULT Load(IStream* pStm) mut
			{
				return VT.Load(&this, pStm);
			}
			public HRESULT Save(IStream* pStm, BOOL fClearDirty) mut
			{
				return VT.Save(&this, pStm, fClearDirty);
			}
			public HRESULT GetSizeMax(ULARGE_INTEGER* pCbSize) mut
			{
				return VT.GetSizeMax(&this, pCbSize);
			}
			public HRESULT InitNew() mut
			{
				return VT.InitNew(&this);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistStreamInit *self) IsDirty;
				public new function HRESULT(IPersistStreamInit *self, IStream* pStm) Load;
				public new function HRESULT(IPersistStreamInit *self, IStream* pStm, BOOL fClearDirty) Save;
				public new function HRESULT(IPersistStreamInit *self, ULARGE_INTEGER* pCbSize) GetSizeMax;
				public new function HRESULT(IPersistStreamInit *self) InitNew;
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
