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
			ADVF_NODATA = 1,
			ADVF_PRIMEFIRST = 2,
			ADVF_ONLYONCE = 4,
			ADVF_DATAONSTOP = 64,
			ADVFCACHE_NOHANDLER = 8,
			ADVFCACHE_FORCEBUILTIN = 16,
			ADVFCACHE_ONSAVE = 32,
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
			DEFAULT = 0,
			DISPATCH_CALLS = 1,
			DISPATCH_WINDOW_MESSAGES = 2,
		}
		public enum BINDINFOF : int32
		{
			URLENCODESTGMEDDATA = 1,
			URLENCODEDEXTRAINFO = 2,
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
		
		public function HRESULT LPEXCEPFINO_DEFERRED_FILLIN(out EXCEPINFO pExcepInfo);
		public function HRESULT LPFNGETCLASSOBJECT(in Guid param0, in Guid param1, void** param2);
		public function HRESULT LPFNCANUNLOADNOW();
		public function HRESULT PFNCONTEXTCALL(out ComCallData pParam);
		
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
			public uint8[0] abData;
		}
		[CRepr]
		public struct WORD_BLOB
		{
			public uint32 clSize;
			public uint16[0] asData;
		}
		[CRepr]
		public struct DWORD_BLOB
		{
			public uint32 clSize;
			public uint32[0] alData;
		}
		[CRepr]
		public struct FLAGGED_BYTE_BLOB
		{
			public uint32 fFlags;
			public uint32 clSize;
			public uint8[0] abData;
		}
		[CRepr]
		public struct FLAGGED_WORD_BLOB
		{
			public uint32 fFlags;
			public uint32 clSize;
			public uint16[0] asData;
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
		public struct IEnumContextProps {}
		[CRepr]
		public struct IContext {}
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
			public uint8[0] tdData;
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
			public uint8[0] data;
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
			public SAFEARRAYBOUND[0] rgsabound;
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
			
			public HRESULT QueryInterface(in Guid riid, void** ppvObject) mut => VT.QueryInterface(ref this, riid, ppvObject);
			public uint32 AddRef() mut => VT.AddRef(ref this);
			public uint32 Release() mut => VT.Release(ref this);

			[CRepr]
			public struct VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUnknown self, in Guid riid, void** ppvObject) QueryInterface;
				public new function [CallingConvention(.Stdcall)] uint32(ref IUnknown self) AddRef;
				public new function [CallingConvention(.Stdcall)] uint32(ref IUnknown self) Release;
			}
		}
		[CRepr]
		public struct AsyncIUnknown : IUnknown
		{
			public const new Guid IID = .(0x000e0000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_QueryInterface(in Guid riid) mut => VT.Begin_QueryInterface(ref this, riid);
			public HRESULT Finish_QueryInterface(void** ppvObject) mut => VT.Finish_QueryInterface(ref this, ppvObject);
			public HRESULT Begin_AddRef() mut => VT.Begin_AddRef(ref this);
			public uint32 Finish_AddRef() mut => VT.Finish_AddRef(ref this);
			public HRESULT Begin_Release() mut => VT.Begin_Release(ref this);
			public uint32 Finish_Release() mut => VT.Finish_Release(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIUnknown self, in Guid riid) Begin_QueryInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIUnknown self, void** ppvObject) Finish_QueryInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIUnknown self) Begin_AddRef;
				public new function [CallingConvention(.Stdcall)] uint32(ref AsyncIUnknown self) Finish_AddRef;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIUnknown self) Begin_Release;
				public new function [CallingConvention(.Stdcall)] uint32(ref AsyncIUnknown self) Finish_Release;
			}
		}
		[CRepr]
		public struct IClassFactory : IUnknown
		{
			public const new Guid IID = .(0x00000001, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstance(IUnknown* pUnkOuter, in Guid riid, void** ppvObject) mut => VT.CreateInstance(ref this, pUnkOuter, riid, ppvObject);
			public HRESULT LockServer(BOOL fLock) mut => VT.LockServer(ref this, fLock);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassFactory self, IUnknown* pUnkOuter, in Guid riid, void** ppvObject) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassFactory self, BOOL fLock) LockServer;
			}
		}
		[CRepr]
		public struct INoMarshal : IUnknown
		{
			public const new Guid IID = .(0xecc8691b, 0xc1db, 0x4dc0, 0x85, 0x5e, 0x65, 0xf6, 0xc5, 0x51, 0xaf, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IAgileObject : IUnknown
		{
			public const new Guid IID = .(0x94ea2b94, 0xe9cc, 0x49e0, 0xc0, 0xff, 0xee, 0x64, 0xca, 0x8f, 0x5b, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IActivationFilter : IUnknown
		{
			public const new Guid IID = .(0x00000017, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleActivation(uint32 dwActivationType, in Guid rclsid, out Guid pReplacementClsId) mut => VT.HandleActivation(ref this, dwActivationType, rclsid, out pReplacementClsId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IActivationFilter self, uint32 dwActivationType, in Guid rclsid, out Guid pReplacementClsId) HandleActivation;
			}
		}
		[CRepr]
		public struct IMalloc : IUnknown
		{
			public const new Guid IID = .(0x00000002, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void* Alloc(uint cb) mut => VT.Alloc(ref this, cb);
			public void* Realloc(void* pv, uint cb) mut => VT.Realloc(ref this, pv, cb);
			public void Free(void* pv) mut => VT.Free(ref this, pv);
			public uint GetSize(void* pv) mut => VT.GetSize(ref this, pv);
			public int32 DidAlloc(void* pv) mut => VT.DidAlloc(ref this, pv);
			public void HeapMinimize() mut => VT.HeapMinimize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void*(ref IMalloc self, uint cb) Alloc;
				public new function [CallingConvention(.Stdcall)] void*(ref IMalloc self, void* pv, uint cb) Realloc;
				public new function [CallingConvention(.Stdcall)] void(ref IMalloc self, void* pv) Free;
				public new function [CallingConvention(.Stdcall)] uint(ref IMalloc self, void* pv) GetSize;
				public new function [CallingConvention(.Stdcall)] int32(ref IMalloc self, void* pv) DidAlloc;
				public new function [CallingConvention(.Stdcall)] void(ref IMalloc self) HeapMinimize;
			}
		}
		[CRepr]
		public struct IStdMarshalInfo : IUnknown
		{
			public const new Guid IID = .(0x00000018, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassForHandler(uint32 dwDestContext, void* pvDestContext, out Guid pClsid) mut => VT.GetClassForHandler(ref this, dwDestContext, pvDestContext, out pClsid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStdMarshalInfo self, uint32 dwDestContext, void* pvDestContext, out Guid pClsid) GetClassForHandler;
			}
		}
		[CRepr]
		public struct IExternalConnection : IUnknown
		{
			public const new Guid IID = .(0x00000019, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddConnection(uint32 extconn, uint32 reserved) mut => VT.AddConnection(ref this, extconn, reserved);
			public uint32 ReleaseConnection(uint32 extconn, uint32 reserved, BOOL fLastReleaseCloses) mut => VT.ReleaseConnection(ref this, extconn, reserved, fLastReleaseCloses);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IExternalConnection self, uint32 extconn, uint32 reserved) AddConnection;
				public new function [CallingConvention(.Stdcall)] uint32(ref IExternalConnection self, uint32 extconn, uint32 reserved, BOOL fLastReleaseCloses) ReleaseConnection;
			}
		}
		[CRepr]
		public struct IMultiQI : IUnknown
		{
			public const new Guid IID = .(0x00000020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryMultipleInterfaces(uint32 cMQIs, MULTI_QI* pMQIs) mut => VT.QueryMultipleInterfaces(ref this, cMQIs, pMQIs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiQI self, uint32 cMQIs, MULTI_QI* pMQIs) QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct AsyncIMultiQI : IUnknown
		{
			public const new Guid IID = .(0x000e0020, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_QueryMultipleInterfaces(uint32 cMQIs, MULTI_QI* pMQIs) mut => VT.Begin_QueryMultipleInterfaces(ref this, cMQIs, pMQIs);
			public HRESULT Finish_QueryMultipleInterfaces(out MULTI_QI pMQIs) mut => VT.Finish_QueryMultipleInterfaces(ref this, out pMQIs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMultiQI self, uint32 cMQIs, MULTI_QI* pMQIs) Begin_QueryMultipleInterfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIMultiQI self, out MULTI_QI pMQIs) Finish_QueryMultipleInterfaces;
			}
		}
		[CRepr]
		public struct IInternalUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000021, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInternalInterface(in Guid riid, void** ppv) mut => VT.QueryInternalInterface(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternalUnknown self, in Guid riid, void** ppv) QueryInternalInterface;
			}
		}
		[CRepr]
		public struct IEnumUnknown : IUnknown
		{
			public const new Guid IID = .(0x00000100, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IUnknown** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumUnknown* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumUnknown self, uint32 celt, IUnknown** rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumUnknown self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumUnknown self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumUnknown self, out IEnumUnknown* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumString : IUnknown
		{
			public const new Guid IID = .(0x00000101, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, PWSTR* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumString* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumString self, uint32 celt, PWSTR* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumString self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumString self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumString self, out IEnumString* ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISequentialStream : IUnknown
		{
			public const new Guid IID = .(0x0c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(void* pv, uint32 cb, uint32* pcbRead) mut => VT.Read(ref this, pv, cb, pcbRead);
			public HRESULT Write(void* pv, uint32 cb, uint32* pcbWritten) mut => VT.Write(ref this, pv, cb, pcbWritten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISequentialStream self, void* pv, uint32 cb, uint32* pcbRead) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISequentialStream self, void* pv, uint32 cb, uint32* pcbWritten) Write;
			}
		}
		[CRepr]
		public struct IStream : ISequentialStream
		{
			public const new Guid IID = .(0x0000000c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Seek(LARGE_INTEGER dlibMove, STREAM_SEEK dwOrigin, ULARGE_INTEGER* plibNewPosition) mut => VT.Seek(ref this, dlibMove, dwOrigin, plibNewPosition);
			public HRESULT SetSize(ULARGE_INTEGER libNewSize) mut => VT.SetSize(ref this, libNewSize);
			public HRESULT CopyTo(ref IStream pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten) mut => VT.CopyTo(ref this, ref pstm, cb, pcbRead, pcbWritten);
			public HRESULT Commit(uint32 grfCommitFlags) mut => VT.Commit(ref this, grfCommitFlags);
			public HRESULT Revert() mut => VT.Revert(ref this);
			public HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.LockRegion(ref this, libOffset, cb, dwLockType);
			public HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.UnlockRegion(ref this, libOffset, cb, dwLockType);
			public HRESULT Stat(out STATSTG pstatstg, uint32 grfStatFlag) mut => VT.Stat(ref this, out pstatstg, grfStatFlag);
			public HRESULT Clone(out IStream* ppstm) mut => VT.Clone(ref this, out ppstm);

			[CRepr]
			public struct VTable : ISequentialStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, LARGE_INTEGER dlibMove, STREAM_SEEK dwOrigin, ULARGE_INTEGER* plibNewPosition) Seek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, ULARGE_INTEGER libNewSize) SetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, ref IStream pstm, ULARGE_INTEGER cb, ULARGE_INTEGER* pcbRead, ULARGE_INTEGER* pcbWritten) CopyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, uint32 grfCommitFlags) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self) Revert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, out STATSTG pstatstg, uint32 grfStatFlag) Stat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStream self, out IStream* ppstm) Clone;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56b60, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(out RPCOLEMESSAGE pMessage, in Guid riid) mut => VT.GetBuffer(ref this, out pMessage, riid);
			public HRESULT SendReceive(out RPCOLEMESSAGE pMessage, uint32* pStatus) mut => VT.SendReceive(ref this, out pMessage, pStatus);
			public HRESULT FreeBuffer(out RPCOLEMESSAGE pMessage) mut => VT.FreeBuffer(ref this, out pMessage);
			public HRESULT GetDestCtx(out uint32 pdwDestContext, void** ppvDestContext) mut => VT.GetDestCtx(ref this, out pdwDestContext, ppvDestContext);
			public HRESULT IsConnected() mut => VT.IsConnected(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer self, out RPCOLEMESSAGE pMessage, in Guid riid) GetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer self, out RPCOLEMESSAGE pMessage, uint32* pStatus) SendReceive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer self, out RPCOLEMESSAGE pMessage) FreeBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer self, out uint32 pdwDestContext, void** ppvDestContext) GetDestCtx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer self) IsConnected;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer2 : IRpcChannelBuffer
		{
			public const new Guid IID = .(0x594f31d0, 0x7f19, 0x11d0, 0xb1, 0x94, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProtocolVersion(out uint32 pdwVersion) mut => VT.GetProtocolVersion(ref this, out pdwVersion);

			[CRepr]
			public struct VTable : IRpcChannelBuffer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer2 self, out uint32 pdwVersion) GetProtocolVersion;
			}
		}
		[CRepr]
		public struct IAsyncRpcChannelBuffer : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0xa5029fb6, 0x3c34, 0x11d1, 0x9c, 0x99, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Send(out RPCOLEMESSAGE pMsg, ref ISynchronize pSync, out uint32 pulStatus) mut => VT.Send(ref this, out pMsg, ref pSync, out pulStatus);
			public HRESULT Receive(out RPCOLEMESSAGE pMsg, out uint32 pulStatus) mut => VT.Receive(ref this, out pMsg, out pulStatus);
			public HRESULT GetDestCtxEx(ref RPCOLEMESSAGE pMsg, out uint32 pdwDestContext, void** ppvDestContext) mut => VT.GetDestCtxEx(ref this, ref pMsg, out pdwDestContext, ppvDestContext);

			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncRpcChannelBuffer self, out RPCOLEMESSAGE pMsg, ref ISynchronize pSync, out uint32 pulStatus) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncRpcChannelBuffer self, out RPCOLEMESSAGE pMsg, out uint32 pulStatus) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncRpcChannelBuffer self, ref RPCOLEMESSAGE pMsg, out uint32 pdwDestContext, void** ppvDestContext) GetDestCtxEx;
			}
		}
		[CRepr]
		public struct IRpcChannelBuffer3 : IRpcChannelBuffer2
		{
			public const new Guid IID = .(0x25b15600, 0x0115, 0x11d0, 0xbf, 0x0d, 0x00, 0xaa, 0x00, 0xb8, 0xdf, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Send(out RPCOLEMESSAGE pMsg, out uint32 pulStatus) mut => VT.Send(ref this, out pMsg, out pulStatus);
			public HRESULT Receive(out RPCOLEMESSAGE pMsg, uint32 ulSize, out uint32 pulStatus) mut => VT.Receive(ref this, out pMsg, ulSize, out pulStatus);
			public HRESULT Cancel(out RPCOLEMESSAGE pMsg) mut => VT.Cancel(ref this, out pMsg);
			public HRESULT GetCallContext(ref RPCOLEMESSAGE pMsg, in Guid riid, void** pInterface) mut => VT.GetCallContext(ref this, ref pMsg, riid, pInterface);
			public HRESULT GetDestCtxEx(ref RPCOLEMESSAGE pMsg, out uint32 pdwDestContext, void** ppvDestContext) mut => VT.GetDestCtxEx(ref this, ref pMsg, out pdwDestContext, ppvDestContext);
			public HRESULT GetState(ref RPCOLEMESSAGE pMsg, out uint32 pState) mut => VT.GetState(ref this, ref pMsg, out pState);
			public HRESULT RegisterAsync(out RPCOLEMESSAGE pMsg, ref IAsyncManager pAsyncMgr) mut => VT.RegisterAsync(ref this, out pMsg, ref pAsyncMgr);

			[CRepr]
			public struct VTable : IRpcChannelBuffer2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, out RPCOLEMESSAGE pMsg, out uint32 pulStatus) Send;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, out RPCOLEMESSAGE pMsg, uint32 ulSize, out uint32 pulStatus) Receive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, out RPCOLEMESSAGE pMsg) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, ref RPCOLEMESSAGE pMsg, in Guid riid, void** pInterface) GetCallContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, ref RPCOLEMESSAGE pMsg, out uint32 pdwDestContext, void** ppvDestContext) GetDestCtxEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, ref RPCOLEMESSAGE pMsg, out uint32 pState) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcChannelBuffer3 self, out RPCOLEMESSAGE pMsg, ref IAsyncManager pAsyncMgr) RegisterAsync;
			}
		}
		[CRepr]
		public struct IRpcSyntaxNegotiate : IUnknown
		{
			public const new Guid IID = .(0x58a08519, 0x24c8, 0x4935, 0xb4, 0x82, 0x3f, 0xd8, 0x23, 0x33, 0x3a, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NegotiateSyntax(out RPCOLEMESSAGE pMsg) mut => VT.NegotiateSyntax(ref this, out pMsg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcSyntaxNegotiate self, out RPCOLEMESSAGE pMsg) NegotiateSyntax;
			}
		}
		[CRepr]
		public struct IRpcProxyBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56a34, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(ref IRpcChannelBuffer pRpcChannelBuffer) mut => VT.Connect(ref this, ref pRpcChannelBuffer);
			public void Disconnect() mut => VT.Disconnect(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcProxyBuffer self, ref IRpcChannelBuffer pRpcChannelBuffer) Connect;
				public new function [CallingConvention(.Stdcall)] void(ref IRpcProxyBuffer self) Disconnect;
			}
		}
		[CRepr]
		public struct IRpcStubBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f56afc, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(ref IUnknown pUnkServer) mut => VT.Connect(ref this, ref pUnkServer);
			public void Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT Invoke(out RPCOLEMESSAGE _prpcmsg, ref IRpcChannelBuffer _pRpcChannelBuffer) mut => VT.Invoke(ref this, out _prpcmsg, ref _pRpcChannelBuffer);
			public IRpcStubBuffer* IsIIDSupported(in Guid riid) mut => VT.IsIIDSupported(ref this, riid);
			public uint32 CountRefs() mut => VT.CountRefs(ref this);
			public HRESULT DebugServerQueryInterface(void** ppv) mut => VT.DebugServerQueryInterface(ref this, ppv);
			public void DebugServerRelease(void* pv) mut => VT.DebugServerRelease(ref this, pv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcStubBuffer self, ref IUnknown pUnkServer) Connect;
				public new function [CallingConvention(.Stdcall)] void(ref IRpcStubBuffer self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcStubBuffer self, out RPCOLEMESSAGE _prpcmsg, ref IRpcChannelBuffer _pRpcChannelBuffer) Invoke;
				public new function [CallingConvention(.Stdcall)] IRpcStubBuffer*(ref IRpcStubBuffer self, in Guid riid) IsIIDSupported;
				public new function [CallingConvention(.Stdcall)] uint32(ref IRpcStubBuffer self) CountRefs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcStubBuffer self, void** ppv) DebugServerQueryInterface;
				public new function [CallingConvention(.Stdcall)] void(ref IRpcStubBuffer self, void* pv) DebugServerRelease;
			}
		}
		[CRepr]
		public struct IPSFactoryBuffer : IUnknown
		{
			public const new Guid IID = .(0xd5f569d0, 0x593b, 0x101a, 0xb5, 0x69, 0x08, 0x00, 0x2b, 0x2d, 0xbf, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProxy(ref IUnknown pUnkOuter, in Guid riid, out IRpcProxyBuffer* ppProxy, void** ppv) mut => VT.CreateProxy(ref this, ref pUnkOuter, riid, out ppProxy, ppv);
			public HRESULT CreateStub(in Guid riid, IUnknown* pUnkServer, out IRpcStubBuffer* ppStub) mut => VT.CreateStub(ref this, riid, pUnkServer, out ppStub);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPSFactoryBuffer self, ref IUnknown pUnkOuter, in Guid riid, out IRpcProxyBuffer* ppProxy, void** ppv) CreateProxy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPSFactoryBuffer self, in Guid riid, IUnknown* pUnkServer, out IRpcStubBuffer* ppStub) CreateStub;
			}
		}
		[CRepr]
		public struct IChannelHook : IUnknown
		{
			public const new Guid IID = .(0x1008c4a0, 0x7613, 0x11cf, 0x9a, 0xf1, 0x00, 0x20, 0xaf, 0x6e, 0x72, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public void ClientGetSize(in Guid uExtent, in Guid riid, out uint32 pDataSize) mut => VT.ClientGetSize(ref this, uExtent, riid, out pDataSize);
			public void ClientFillBuffer(in Guid uExtent, in Guid riid, out uint32 pDataSize, void* pDataBuffer) mut => VT.ClientFillBuffer(ref this, uExtent, riid, out pDataSize, pDataBuffer);
			public void ClientNotify(in Guid uExtent, in Guid riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep, HRESULT hrFault) mut => VT.ClientNotify(ref this, uExtent, riid, cbDataSize, pDataBuffer, lDataRep, hrFault);
			public void ServerNotify(in Guid uExtent, in Guid riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep) mut => VT.ServerNotify(ref this, uExtent, riid, cbDataSize, pDataBuffer, lDataRep);
			public void ServerGetSize(in Guid uExtent, in Guid riid, HRESULT hrFault, out uint32 pDataSize) mut => VT.ServerGetSize(ref this, uExtent, riid, hrFault, out pDataSize);
			public void ServerFillBuffer(in Guid uExtent, in Guid riid, out uint32 pDataSize, void* pDataBuffer, HRESULT hrFault) mut => VT.ServerFillBuffer(ref this, uExtent, riid, out pDataSize, pDataBuffer, hrFault);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, out uint32 pDataSize) ClientGetSize;
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, out uint32 pDataSize, void* pDataBuffer) ClientFillBuffer;
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep, HRESULT hrFault) ClientNotify;
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, uint32 cbDataSize, void* pDataBuffer, uint32 lDataRep) ServerNotify;
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, HRESULT hrFault, out uint32 pDataSize) ServerGetSize;
				public new function [CallingConvention(.Stdcall)] void(ref IChannelHook self, in Guid uExtent, in Guid riid, out uint32 pDataSize, void* pDataBuffer, HRESULT hrFault) ServerFillBuffer;
			}
		}
		[CRepr]
		public struct IClientSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryBlanket(ref IUnknown pProxy, out uint32 pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, RPC_C_AUTHN_LEVEL* pAuthnLevel, RPC_C_IMP_LEVEL* pImpLevel, void** pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES* pCapabilites) mut => VT.QueryBlanket(ref this, ref pProxy, out pAuthnSvc, pAuthzSvc, pServerPrincName, pAuthnLevel, pImpLevel, pAuthInfo, pCapabilites);
			public HRESULT SetBlanket(ref IUnknown pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities) mut => VT.SetBlanket(ref this, ref pProxy, dwAuthnSvc, dwAuthzSvc, pServerPrincName, dwAuthnLevel, dwImpLevel, pAuthInfo, dwCapabilities);
			public HRESULT CopyProxy(ref IUnknown pProxy, out IUnknown* ppCopy) mut => VT.CopyProxy(ref this, ref pProxy, out ppCopy);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClientSecurity self, ref IUnknown pProxy, out uint32 pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, RPC_C_AUTHN_LEVEL* pAuthnLevel, RPC_C_IMP_LEVEL* pImpLevel, void** pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES* pCapabilites) QueryBlanket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClientSecurity self, ref IUnknown pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities) SetBlanket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClientSecurity self, ref IUnknown pProxy, out IUnknown* ppCopy) CopyProxy;
			}
		}
		[CRepr]
		public struct IServerSecurity : IUnknown
		{
			public const new Guid IID = .(0x0000013e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryBlanket(uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities) mut => VT.QueryBlanket(ref this, pAuthnSvc, pAuthzSvc, pServerPrincName, pAuthnLevel, pImpLevel, pPrivs, pCapabilities);
			public HRESULT ImpersonateClient() mut => VT.ImpersonateClient(ref this);
			public HRESULT RevertToSelf() mut => VT.RevertToSelf(ref this);
			public BOOL IsImpersonating() mut => VT.IsImpersonating(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServerSecurity self, uint32* pAuthnSvc, uint32* pAuthzSvc, uint16** pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities) QueryBlanket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServerSecurity self) ImpersonateClient;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServerSecurity self) RevertToSelf;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IServerSecurity self) IsImpersonating;
			}
		}
		[CRepr]
		public struct IRpcOptions : IUnknown
		{
			public const new Guid IID = .(0x00000144, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(ref IUnknown pPrx, RPCOPT_PROPERTIES dwProperty, uint dwValue) mut => VT.Set(ref this, ref pPrx, dwProperty, dwValue);
			public HRESULT Query(ref IUnknown pPrx, RPCOPT_PROPERTIES dwProperty, out uint pdwValue) mut => VT.Query(ref this, ref pPrx, dwProperty, out pdwValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcOptions self, ref IUnknown pPrx, RPCOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcOptions self, ref IUnknown pPrx, RPCOPT_PROPERTIES dwProperty, out uint pdwValue) Query;
			}
		}
		[CRepr]
		public struct IGlobalOptions : IUnknown
		{
			public const new Guid IID = .(0x0000015b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(GLOBALOPT_PROPERTIES dwProperty, uint dwValue) mut => VT.Set(ref this, dwProperty, dwValue);
			public HRESULT Query(GLOBALOPT_PROPERTIES dwProperty, out uint pdwValue) mut => VT.Query(ref this, dwProperty, out pdwValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGlobalOptions self, GLOBALOPT_PROPERTIES dwProperty, uint dwValue) Set;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGlobalOptions self, GLOBALOPT_PROPERTIES dwProperty, out uint pdwValue) Query;
			}
		}
		[CRepr]
		public struct ISurrogate : IUnknown
		{
			public const new Guid IID = .(0x00000022, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadDllServer(in Guid Clsid) mut => VT.LoadDllServer(ref this, Clsid);
			public HRESULT FreeSurrogate() mut => VT.FreeSurrogate(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogate self, in Guid Clsid) LoadDllServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogate self) FreeSurrogate;
			}
		}
		[CRepr]
		public struct IGlobalInterfaceTable : IUnknown
		{
			public const new Guid IID = .(0x00000146, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterInterfaceInGlobal(ref IUnknown pUnk, in Guid riid, out uint32 pdwCookie) mut => VT.RegisterInterfaceInGlobal(ref this, ref pUnk, riid, out pdwCookie);
			public HRESULT RevokeInterfaceFromGlobal(uint32 dwCookie) mut => VT.RevokeInterfaceFromGlobal(ref this, dwCookie);
			public HRESULT GetInterfaceFromGlobal(uint32 dwCookie, in Guid riid, void** ppv) mut => VT.GetInterfaceFromGlobal(ref this, dwCookie, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGlobalInterfaceTable self, ref IUnknown pUnk, in Guid riid, out uint32 pdwCookie) RegisterInterfaceInGlobal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGlobalInterfaceTable self, uint32 dwCookie) RevokeInterfaceFromGlobal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGlobalInterfaceTable self, uint32 dwCookie, in Guid riid, void** ppv) GetInterfaceFromGlobal;
			}
		}
		[CRepr]
		public struct ISynchronize : IUnknown
		{
			public const new Guid IID = .(0x00000030, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Wait(uint32 dwFlags, uint32 dwMilliseconds) mut => VT.Wait(ref this, dwFlags, dwMilliseconds);
			public HRESULT Signal() mut => VT.Signal(ref this);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronize self, uint32 dwFlags, uint32 dwMilliseconds) Wait;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronize self) Signal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronize self) Reset;
			}
		}
		[CRepr]
		public struct ISynchronizeHandle : IUnknown
		{
			public const new Guid IID = .(0x00000031, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHandle(out HANDLE ph) mut => VT.GetHandle(ref this, out ph);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizeHandle self, out HANDLE ph) GetHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeEvent : ISynchronizeHandle
		{
			public const new Guid IID = .(0x00000032, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEventHandle(ref HANDLE ph) mut => VT.SetEventHandle(ref this, ref ph);

			[CRepr]
			public struct VTable : ISynchronizeHandle.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizeEvent self, ref HANDLE ph) SetEventHandle;
			}
		}
		[CRepr]
		public struct ISynchronizeContainer : IUnknown
		{
			public const new Guid IID = .(0x00000033, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddSynchronize(ref ISynchronize pSync) mut => VT.AddSynchronize(ref this, ref pSync);
			public HRESULT WaitMultiple(uint32 dwFlags, uint32 dwTimeOut, out ISynchronize* ppSync) mut => VT.WaitMultiple(ref this, dwFlags, dwTimeOut, out ppSync);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizeContainer self, ref ISynchronize pSync) AddSynchronize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizeContainer self, uint32 dwFlags, uint32 dwTimeOut, out ISynchronize* ppSync) WaitMultiple;
			}
		}
		[CRepr]
		public struct ISynchronizeMutex : ISynchronize
		{
			public const new Guid IID = .(0x00000025, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReleaseMutex() mut => VT.ReleaseMutex(ref this);

			[CRepr]
			public struct VTable : ISynchronize.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizeMutex self) ReleaseMutex;
			}
		}
		[CRepr]
		public struct ICancelMethodCalls : IUnknown
		{
			public const new Guid IID = .(0x00000029, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel(uint32 ulSeconds) mut => VT.Cancel(ref this, ulSeconds);
			public HRESULT TestCancel() mut => VT.TestCancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICancelMethodCalls self, uint32 ulSeconds) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICancelMethodCalls self) TestCancel;
			}
		}
		[CRepr]
		public struct IAsyncManager : IUnknown
		{
			public const new Guid IID = .(0x0000002a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompleteCall(HRESULT Result) mut => VT.CompleteCall(ref this, Result);
			public HRESULT GetCallContext(in Guid riid, void** pInterface) mut => VT.GetCallContext(ref this, riid, pInterface);
			public HRESULT GetState(out uint32 pulStateFlags) mut => VT.GetState(ref this, out pulStateFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncManager self, HRESULT Result) CompleteCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncManager self, in Guid riid, void** pInterface) GetCallContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncManager self, out uint32 pulStateFlags) GetState;
			}
		}
		[CRepr]
		public struct ICallFactory : IUnknown
		{
			public const new Guid IID = .(0x1c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateCall(in Guid riid, IUnknown* pCtrlUnk, in Guid riid2, out IUnknown* ppv) mut => VT.CreateCall(ref this, riid, pCtrlUnk, riid2, out ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICallFactory self, in Guid riid, IUnknown* pCtrlUnk, in Guid riid2, out IUnknown* ppv) CreateCall;
			}
		}
		[CRepr]
		public struct IRpcHelper : IUnknown
		{
			public const new Guid IID = .(0x00000149, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDCOMProtocolVersion(out uint32 pComVersion) mut => VT.GetDCOMProtocolVersion(ref this, out pComVersion);
			public HRESULT GetIIDFromOBJREF(void* pObjRef, out Guid* piid) mut => VT.GetIIDFromOBJREF(ref this, pObjRef, out piid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcHelper self, out uint32 pComVersion) GetDCOMProtocolVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRpcHelper self, void* pObjRef, out Guid* piid) GetIIDFromOBJREF;
			}
		}
		[CRepr]
		public struct IReleaseMarshalBuffers : IUnknown
		{
			public const new Guid IID = .(0xeb0cb9e8, 0x7996, 0x11d2, 0x87, 0x2e, 0x00, 0x00, 0xf8, 0x08, 0x08, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReleaseMarshalBuffer(out RPCOLEMESSAGE pMsg, uint32 dwFlags, IUnknown* pChnl) mut => VT.ReleaseMarshalBuffer(ref this, out pMsg, dwFlags, pChnl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReleaseMarshalBuffers self, out RPCOLEMESSAGE pMsg, uint32 dwFlags, IUnknown* pChnl) ReleaseMarshalBuffer;
			}
		}
		[CRepr]
		public struct IWaitMultiple : IUnknown
		{
			public const new Guid IID = .(0x0000002b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WaitMultiple(uint32 timeout, out ISynchronize* pSync) mut => VT.WaitMultiple(ref this, timeout, out pSync);
			public HRESULT AddSynchronize(ref ISynchronize pSync) mut => VT.AddSynchronize(ref this, ref pSync);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWaitMultiple self, uint32 timeout, out ISynchronize* pSync) WaitMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWaitMultiple self, ref ISynchronize pSync) AddSynchronize;
			}
		}
		[CRepr]
		public struct IAddrTrackingControl : IUnknown
		{
			public const new Guid IID = .(0x00000147, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableCOMDynamicAddrTracking() mut => VT.EnableCOMDynamicAddrTracking(ref this);
			public HRESULT DisableCOMDynamicAddrTracking() mut => VT.DisableCOMDynamicAddrTracking(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAddrTrackingControl self) EnableCOMDynamicAddrTracking;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAddrTrackingControl self) DisableCOMDynamicAddrTracking;
			}
		}
		[CRepr]
		public struct IAddrExclusionControl : IUnknown
		{
			public const new Guid IID = .(0x00000148, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentAddrExclusionList(in Guid riid, void** ppEnumerator) mut => VT.GetCurrentAddrExclusionList(ref this, riid, ppEnumerator);
			public HRESULT UpdateAddrExclusionList(ref IUnknown pEnumerator) mut => VT.UpdateAddrExclusionList(ref this, ref pEnumerator);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAddrExclusionControl self, in Guid riid, void** ppEnumerator) GetCurrentAddrExclusionList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAddrExclusionControl self, ref IUnknown pEnumerator) UpdateAddrExclusionList;
			}
		}
		[CRepr]
		public struct IPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3aca, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(uint8* buf, uint32 cRequest, out uint32 pcReturned) mut => VT.Pull(ref this, buf, cRequest, out pcReturned);
			public HRESULT Push(uint8* buf, uint32 cSent) mut => VT.Push(ref this, buf, cSent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeByte self, uint8* buf, uint32 cRequest, out uint32 pcReturned) Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeByte self, uint8* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeByte : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acb, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut => VT.Begin_Pull(ref this, cRequest);
			public HRESULT Finish_Pull(uint8* buf, out uint32 pcReturned) mut => VT.Finish_Pull(ref this, buf, out pcReturned);
			public HRESULT Begin_Push(uint8* buf, uint32 cSent) mut => VT.Begin_Push(ref this, buf, cSent);
			public HRESULT Finish_Push() mut => VT.Finish_Push(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeByte self, uint32 cRequest) Begin_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeByte self, uint8* buf, out uint32 pcReturned) Finish_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeByte self, uint8* buf, uint32 cSent) Begin_Push;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeByte self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acc, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(int32* buf, uint32 cRequest, out uint32 pcReturned) mut => VT.Pull(ref this, buf, cRequest, out pcReturned);
			public HRESULT Push(int32* buf, uint32 cSent) mut => VT.Push(ref this, buf, cSent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeLong self, int32* buf, uint32 cRequest, out uint32 pcReturned) Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeLong self, int32* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeLong : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acd, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut => VT.Begin_Pull(ref this, cRequest);
			public HRESULT Finish_Pull(int32* buf, out uint32 pcReturned) mut => VT.Finish_Pull(ref this, buf, out pcReturned);
			public HRESULT Begin_Push(int32* buf, uint32 cSent) mut => VT.Begin_Push(ref this, buf, cSent);
			public HRESULT Finish_Push() mut => VT.Finish_Push(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeLong self, uint32 cRequest) Begin_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeLong self, int32* buf, out uint32 pcReturned) Finish_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeLong self, int32* buf, uint32 cSent) Begin_Push;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeLong self) Finish_Push;
			}
		}
		[CRepr]
		public struct IPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3ace, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(double* buf, uint32 cRequest, out uint32 pcReturned) mut => VT.Pull(ref this, buf, cRequest, out pcReturned);
			public HRESULT Push(double* buf, uint32 cSent) mut => VT.Push(ref this, buf, cSent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeDouble self, double* buf, uint32 cRequest, out uint32 pcReturned) Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPipeDouble self, double* buf, uint32 cSent) Push;
			}
		}
		[CRepr]
		public struct AsyncIPipeDouble : IUnknown
		{
			public const new Guid IID = .(0xdb2f3acf, 0x2f86, 0x11d1, 0x8e, 0x04, 0x00, 0xc0, 0x4f, 0xb9, 0x98, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_Pull(uint32 cRequest) mut => VT.Begin_Pull(ref this, cRequest);
			public HRESULT Finish_Pull(double* buf, out uint32 pcReturned) mut => VT.Finish_Pull(ref this, buf, out pcReturned);
			public HRESULT Begin_Push(double* buf, uint32 cSent) mut => VT.Begin_Push(ref this, buf, cSent);
			public HRESULT Finish_Push() mut => VT.Finish_Push(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeDouble self, uint32 cRequest) Begin_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeDouble self, double* buf, out uint32 pcReturned) Finish_Pull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeDouble self, double* buf, uint32 cSent) Begin_Push;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIPipeDouble self) Finish_Push;
			}
		}
		[CRepr]
		public struct IComThreadingInfo : IUnknown
		{
			public const new Guid IID = .(0x000001ce, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentApartmentType(out APTTYPE pAptType) mut => VT.GetCurrentApartmentType(ref this, out pAptType);
			public HRESULT GetCurrentThreadType(out THDTYPE pThreadType) mut => VT.GetCurrentThreadType(ref this, out pThreadType);
			public HRESULT GetCurrentLogicalThreadId(out Guid pguidLogicalThreadId) mut => VT.GetCurrentLogicalThreadId(ref this, out pguidLogicalThreadId);
			public HRESULT SetCurrentLogicalThreadId(in Guid rguid) mut => VT.SetCurrentLogicalThreadId(ref this, rguid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadingInfo self, out APTTYPE pAptType) GetCurrentApartmentType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadingInfo self, out THDTYPE pThreadType) GetCurrentThreadType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadingInfo self, out Guid pguidLogicalThreadId) GetCurrentLogicalThreadId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComThreadingInfo self, in Guid rguid) SetCurrentLogicalThreadId;
			}
		}
		[CRepr]
		public struct IProcessInitControl : IUnknown
		{
			public const new Guid IID = .(0x72380d55, 0x8d2b, 0x43a3, 0x85, 0x13, 0x2b, 0x6e, 0xf3, 0x14, 0x34, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetInitializerTimeout(uint32 dwSecondsRemaining) mut => VT.ResetInitializerTimeout(ref this, dwSecondsRemaining);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProcessInitControl self, uint32 dwSecondsRemaining) ResetInitializerTimeout;
			}
		}
		[CRepr]
		public struct IFastRundown : IUnknown
		{
			public const new Guid IID = .(0x00000040, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IMachineGlobalObjectTable : IUnknown
		{
			public const new Guid IID = .(0x26d709ac, 0xf70b, 0x4421, 0xa9, 0x6f, 0xd2, 0x87, 0x8f, 0xaf, 0xb0, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterObject(in Guid clsid, PWSTR identifier, ref IUnknown object, out MachineGlobalObjectTableRegistrationToken__* token) mut => VT.RegisterObject(ref this, clsid, identifier, ref object, out token);
			public HRESULT GetObject(in Guid clsid, PWSTR identifier, in Guid riid, void** ppv) mut => VT.GetObject(ref this, clsid, identifier, riid, ppv);
			public HRESULT RevokeObject(ref MachineGlobalObjectTableRegistrationToken__ token) mut => VT.RevokeObject(ref this, ref token);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMachineGlobalObjectTable self, in Guid clsid, PWSTR identifier, ref IUnknown object, out MachineGlobalObjectTableRegistrationToken__* token) RegisterObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMachineGlobalObjectTable self, in Guid clsid, PWSTR identifier, in Guid riid, void** ppv) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMachineGlobalObjectTable self, ref MachineGlobalObjectTableRegistrationToken__ token) RevokeObject;
			}
		}
		[CRepr]
		public struct IMallocSpy : IUnknown
		{
			public const new Guid IID = .(0x0000001d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint PreAlloc(uint cbRequest) mut => VT.PreAlloc(ref this, cbRequest);
			public void* PostAlloc(void* pActual) mut => VT.PostAlloc(ref this, pActual);
			public void* PreFree(void* pRequest, BOOL fSpyed) mut => VT.PreFree(ref this, pRequest, fSpyed);
			public void PostFree(BOOL fSpyed) mut => VT.PostFree(ref this, fSpyed);
			public uint PreRealloc(void* pRequest, uint cbRequest, void** ppNewRequest, BOOL fSpyed) mut => VT.PreRealloc(ref this, pRequest, cbRequest, ppNewRequest, fSpyed);
			public void* PostRealloc(void* pActual, BOOL fSpyed) mut => VT.PostRealloc(ref this, pActual, fSpyed);
			public void* PreGetSize(void* pRequest, BOOL fSpyed) mut => VT.PreGetSize(ref this, pRequest, fSpyed);
			public uint PostGetSize(uint cbActual, BOOL fSpyed) mut => VT.PostGetSize(ref this, cbActual, fSpyed);
			public void* PreDidAlloc(void* pRequest, BOOL fSpyed) mut => VT.PreDidAlloc(ref this, pRequest, fSpyed);
			public int32 PostDidAlloc(void* pRequest, BOOL fSpyed, int32 fActual) mut => VT.PostDidAlloc(ref this, pRequest, fSpyed, fActual);
			public void PreHeapMinimize() mut => VT.PreHeapMinimize(ref this);
			public void PostHeapMinimize() mut => VT.PostHeapMinimize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint(ref IMallocSpy self, uint cbRequest) PreAlloc;
				public new function [CallingConvention(.Stdcall)] void*(ref IMallocSpy self, void* pActual) PostAlloc;
				public new function [CallingConvention(.Stdcall)] void*(ref IMallocSpy self, void* pRequest, BOOL fSpyed) PreFree;
				public new function [CallingConvention(.Stdcall)] void(ref IMallocSpy self, BOOL fSpyed) PostFree;
				public new function [CallingConvention(.Stdcall)] uint(ref IMallocSpy self, void* pRequest, uint cbRequest, void** ppNewRequest, BOOL fSpyed) PreRealloc;
				public new function [CallingConvention(.Stdcall)] void*(ref IMallocSpy self, void* pActual, BOOL fSpyed) PostRealloc;
				public new function [CallingConvention(.Stdcall)] void*(ref IMallocSpy self, void* pRequest, BOOL fSpyed) PreGetSize;
				public new function [CallingConvention(.Stdcall)] uint(ref IMallocSpy self, uint cbActual, BOOL fSpyed) PostGetSize;
				public new function [CallingConvention(.Stdcall)] void*(ref IMallocSpy self, void* pRequest, BOOL fSpyed) PreDidAlloc;
				public new function [CallingConvention(.Stdcall)] int32(ref IMallocSpy self, void* pRequest, BOOL fSpyed, int32 fActual) PostDidAlloc;
				public new function [CallingConvention(.Stdcall)] void(ref IMallocSpy self) PreHeapMinimize;
				public new function [CallingConvention(.Stdcall)] void(ref IMallocSpy self) PostHeapMinimize;
			}
		}
		[CRepr]
		public struct IBindCtx : IUnknown
		{
			public const new Guid IID = .(0x0000000e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterObjectBound(ref IUnknown punk) mut => VT.RegisterObjectBound(ref this, ref punk);
			public HRESULT RevokeObjectBound(ref IUnknown punk) mut => VT.RevokeObjectBound(ref this, ref punk);
			public HRESULT ReleaseBoundObjects() mut => VT.ReleaseBoundObjects(ref this);
			public HRESULT SetBindOptions(ref BIND_OPTS pbindopts) mut => VT.SetBindOptions(ref this, ref pbindopts);
			public HRESULT GetBindOptions(out BIND_OPTS pbindopts) mut => VT.GetBindOptions(ref this, out pbindopts);
			public HRESULT GetRunningObjectTable(out IRunningObjectTable* pprot) mut => VT.GetRunningObjectTable(ref this, out pprot);
			public HRESULT RegisterObjectParam(PWSTR pszKey, ref IUnknown punk) mut => VT.RegisterObjectParam(ref this, pszKey, ref punk);
			public HRESULT GetObjectParam(PWSTR pszKey, out IUnknown* ppunk) mut => VT.GetObjectParam(ref this, pszKey, out ppunk);
			public HRESULT EnumObjectParam(out IEnumString* ppenum) mut => VT.EnumObjectParam(ref this, out ppenum);
			public HRESULT RevokeObjectParam(PWSTR pszKey) mut => VT.RevokeObjectParam(ref this, pszKey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, ref IUnknown punk) RegisterObjectBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, ref IUnknown punk) RevokeObjectBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self) ReleaseBoundObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, ref BIND_OPTS pbindopts) SetBindOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, out BIND_OPTS pbindopts) GetBindOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, out IRunningObjectTable* pprot) GetRunningObjectTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, PWSTR pszKey, ref IUnknown punk) RegisterObjectParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, PWSTR pszKey, out IUnknown* ppunk) GetObjectParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, out IEnumString* ppenum) EnumObjectParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindCtx self, PWSTR pszKey) RevokeObjectParam;
			}
		}
		[CRepr]
		public struct IEnumMoniker : IUnknown
		{
			public const new Guid IID = .(0x00000102, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IMoniker** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumMoniker* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumMoniker self, uint32 celt, IMoniker** rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumMoniker self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumMoniker self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumMoniker self, out IEnumMoniker* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IRunnableObject : IUnknown
		{
			public const new Guid IID = .(0x00000126, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRunningClass(out Guid lpClsid) mut => VT.GetRunningClass(ref this, out lpClsid);
			public HRESULT Run(ref IBindCtx pbc) mut => VT.Run(ref this, ref pbc);
			public BOOL IsRunning() mut => VT.IsRunning(ref this);
			public HRESULT LockRunning(BOOL fLock, BOOL fLastUnlockCloses) mut => VT.LockRunning(ref this, fLock, fLastUnlockCloses);
			public HRESULT SetContainedObject(BOOL fContained) mut => VT.SetContainedObject(ref this, fContained);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableObject self, out Guid lpClsid) GetRunningClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableObject self, ref IBindCtx pbc) Run;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IRunnableObject self) IsRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableObject self, BOOL fLock, BOOL fLastUnlockCloses) LockRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableObject self, BOOL fContained) SetContainedObject;
			}
		}
		[CRepr]
		public struct IRunningObjectTable : IUnknown
		{
			public const new Guid IID = .(0x00000010, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(uint32 grfFlags, ref IUnknown punkObject, ref IMoniker pmkObjectName, out uint32 pdwRegister) mut => VT.Register(ref this, grfFlags, ref punkObject, ref pmkObjectName, out pdwRegister);
			public HRESULT Revoke(uint32 dwRegister) mut => VT.Revoke(ref this, dwRegister);
			public HRESULT IsRunning(ref IMoniker pmkObjectName) mut => VT.IsRunning(ref this, ref pmkObjectName);
			public HRESULT GetObject(ref IMoniker pmkObjectName, out IUnknown* ppunkObject) mut => VT.GetObject(ref this, ref pmkObjectName, out ppunkObject);
			public HRESULT NoteChangeTime(uint32 dwRegister, ref FILETIME pfiletime) mut => VT.NoteChangeTime(ref this, dwRegister, ref pfiletime);
			public HRESULT GetTimeOfLastChange(ref IMoniker pmkObjectName, out FILETIME pfiletime) mut => VT.GetTimeOfLastChange(ref this, ref pmkObjectName, out pfiletime);
			public HRESULT EnumRunning(out IEnumMoniker* ppenumMoniker) mut => VT.EnumRunning(ref this, out ppenumMoniker);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, uint32 grfFlags, ref IUnknown punkObject, ref IMoniker pmkObjectName, out uint32 pdwRegister) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, uint32 dwRegister) Revoke;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, ref IMoniker pmkObjectName) IsRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, ref IMoniker pmkObjectName, out IUnknown* ppunkObject) GetObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, uint32 dwRegister, ref FILETIME pfiletime) NoteChangeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, ref IMoniker pmkObjectName, out FILETIME pfiletime) GetTimeOfLastChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunningObjectTable self, out IEnumMoniker* ppenumMoniker) EnumRunning;
			}
		}
		[CRepr]
		public struct IPersist : IUnknown
		{
			public const new Guid IID = .(0x0000010c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassID(out Guid pClassID) mut => VT.GetClassID(ref this, out pClassID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersist self, out Guid pClassID) GetClassID;
			}
		}
		[CRepr]
		public struct IPersistStream : IPersist
		{
			public const new Guid IID = .(0x00000109, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut => VT.IsDirty(ref this);
			public HRESULT Load(ref IStream pStm) mut => VT.Load(ref this, ref pStm);
			public HRESULT Save(ref IStream pStm, BOOL fClearDirty) mut => VT.Save(ref this, ref pStm, fClearDirty);
			public HRESULT GetSizeMax(out ULARGE_INTEGER pcbSize) mut => VT.GetSizeMax(ref this, out pcbSize);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStream self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStream self, ref IStream pStm) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStream self, ref IStream pStm, BOOL fClearDirty) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStream self, out ULARGE_INTEGER pcbSize) GetSizeMax;
			}
		}
		[CRepr]
		public struct IMoniker : IPersistStream
		{
			public const new Guid IID = .(0x0000000f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindToObject(ref IBindCtx pbc, IMoniker* pmkToLeft, in Guid riidResult, void** ppvResult) mut => VT.BindToObject(ref this, ref pbc, pmkToLeft, riidResult, ppvResult);
			public HRESULT BindToStorage(ref IBindCtx pbc, IMoniker* pmkToLeft, in Guid riid, void** ppvObj) mut => VT.BindToStorage(ref this, ref pbc, pmkToLeft, riid, ppvObj);
			public HRESULT Reduce(ref IBindCtx pbc, uint32 dwReduceHowFar, out IMoniker* ppmkToLeft, out IMoniker* ppmkReduced) mut => VT.Reduce(ref this, ref pbc, dwReduceHowFar, out ppmkToLeft, out ppmkReduced);
			public HRESULT ComposeWith(ref IMoniker pmkRight, BOOL fOnlyIfNotGeneric, out IMoniker* ppmkComposite) mut => VT.ComposeWith(ref this, ref pmkRight, fOnlyIfNotGeneric, out ppmkComposite);
			public HRESULT Enum(BOOL fForward, out IEnumMoniker* ppenumMoniker) mut => VT.Enum(ref this, fForward, out ppenumMoniker);
			public HRESULT IsEqual(ref IMoniker pmkOtherMoniker) mut => VT.IsEqual(ref this, ref pmkOtherMoniker);
			public HRESULT Hash(out uint32 pdwHash) mut => VT.Hash(ref this, out pdwHash);
			public HRESULT IsRunning(ref IBindCtx pbc, ref IMoniker pmkToLeft, ref IMoniker pmkNewlyRunning) mut => VT.IsRunning(ref this, ref pbc, ref pmkToLeft, ref pmkNewlyRunning);
			public HRESULT GetTimeOfLastChange(ref IBindCtx pbc, ref IMoniker pmkToLeft, out FILETIME pFileTime) mut => VT.GetTimeOfLastChange(ref this, ref pbc, ref pmkToLeft, out pFileTime);
			public HRESULT Inverse(out IMoniker* ppmk) mut => VT.Inverse(ref this, out ppmk);
			public HRESULT CommonPrefixWith(ref IMoniker pmkOther, out IMoniker* ppmkPrefix) mut => VT.CommonPrefixWith(ref this, ref pmkOther, out ppmkPrefix);
			public HRESULT RelativePathTo(ref IMoniker pmkOther, out IMoniker* ppmkRelPath) mut => VT.RelativePathTo(ref this, ref pmkOther, out ppmkRelPath);
			public HRESULT GetDisplayName(ref IBindCtx pbc, ref IMoniker pmkToLeft, out PWSTR ppszDisplayName) mut => VT.GetDisplayName(ref this, ref pbc, ref pmkToLeft, out ppszDisplayName);
			public HRESULT ParseDisplayName(ref IBindCtx pbc, ref IMoniker pmkToLeft, PWSTR pszDisplayName, out uint32 pchEaten, out IMoniker* ppmkOut) mut => VT.ParseDisplayName(ref this, ref pbc, ref pmkToLeft, pszDisplayName, out pchEaten, out ppmkOut);
			public HRESULT IsSystemMoniker(out uint32 pdwMksys) mut => VT.IsSystemMoniker(ref this, out pdwMksys);

			[CRepr]
			public struct VTable : IPersistStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, IMoniker* pmkToLeft, in Guid riidResult, void** ppvResult) BindToObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, IMoniker* pmkToLeft, in Guid riid, void** ppvObj) BindToStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, uint32 dwReduceHowFar, out IMoniker* ppmkToLeft, out IMoniker* ppmkReduced) Reduce;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IMoniker pmkRight, BOOL fOnlyIfNotGeneric, out IMoniker* ppmkComposite) ComposeWith;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, BOOL fForward, out IEnumMoniker* ppenumMoniker) Enum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IMoniker pmkOtherMoniker) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, out uint32 pdwHash) Hash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, ref IMoniker pmkToLeft, ref IMoniker pmkNewlyRunning) IsRunning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, ref IMoniker pmkToLeft, out FILETIME pFileTime) GetTimeOfLastChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, out IMoniker* ppmk) Inverse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IMoniker pmkOther, out IMoniker* ppmkPrefix) CommonPrefixWith;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IMoniker pmkOther, out IMoniker* ppmkRelPath) RelativePathTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, ref IMoniker pmkToLeft, out PWSTR ppszDisplayName) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, ref IBindCtx pbc, ref IMoniker pmkToLeft, PWSTR pszDisplayName, out uint32 pchEaten, out IMoniker* ppmkOut) ParseDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMoniker self, out uint32 pdwMksys) IsSystemMoniker;
			}
		}
		[CRepr]
		public struct IROTData : IUnknown
		{
			public const new Guid IID = .(0xf29f6bc0, 0x5021, 0x11ce, 0xaa, 0x15, 0x00, 0x00, 0x69, 0x01, 0x29, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetComparisonData(uint8* pbData, uint32 cbMax, out uint32 pcbData) mut => VT.GetComparisonData(ref this, pbData, cbMax, out pcbData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IROTData self, uint8* pbData, uint32 cbMax, out uint32 pcbData) GetComparisonData;
			}
		}
		[CRepr]
		public struct IPersistFile : IPersist
		{
			public const new Guid IID = .(0x0000010b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut => VT.IsDirty(ref this);
			public HRESULT Load(PWSTR pszFileName, uint32 dwMode) mut => VT.Load(ref this, pszFileName, dwMode);
			public HRESULT Save(PWSTR pszFileName, BOOL fRemember) mut => VT.Save(ref this, pszFileName, fRemember);
			public HRESULT SaveCompleted(PWSTR pszFileName) mut => VT.SaveCompleted(ref this, pszFileName);
			public HRESULT GetCurFile(out PWSTR ppszFileName) mut => VT.GetCurFile(ref this, out ppszFileName);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFile self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFile self, PWSTR pszFileName, uint32 dwMode) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFile self, PWSTR pszFileName, BOOL fRemember) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFile self, PWSTR pszFileName) SaveCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFile self, out PWSTR ppszFileName) GetCurFile;
			}
		}
		[CRepr]
		public struct IEnumFORMATETC : IUnknown
		{
			public const new Guid IID = .(0x00000103, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, FORMATETC* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumFORMATETC* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFORMATETC self, uint32 celt, FORMATETC* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFORMATETC self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFORMATETC self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFORMATETC self, out IEnumFORMATETC* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATDATA : IUnknown
		{
			public const new Guid IID = .(0x00000105, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATDATA* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSTATDATA* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATDATA self, uint32 celt, STATDATA* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATDATA self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATDATA self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATDATA self, out IEnumSTATDATA* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x0000010f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnDataChange(ref FORMATETC pFormatetc, ref STGMEDIUM pStgmed) mut => VT.OnDataChange(ref this, ref pFormatetc, ref pStgmed);
			public void OnViewChange(uint32 dwAspect, int32 lindex) mut => VT.OnViewChange(ref this, dwAspect, lindex);
			public void OnRename(ref IMoniker pmk) mut => VT.OnRename(ref this, ref pmk);
			public void OnSave() mut => VT.OnSave(ref this);
			public void OnClose() mut => VT.OnClose(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink self, ref FORMATETC pFormatetc, ref STGMEDIUM pStgmed) OnDataChange;
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink self, uint32 dwAspect, int32 lindex) OnViewChange;
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink self, ref IMoniker pmk) OnRename;
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink self) OnSave;
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink self) OnClose;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink : IUnknown
		{
			public const new Guid IID = .(0x00000150, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Begin_OnDataChange(ref FORMATETC pFormatetc, ref STGMEDIUM pStgmed) mut => VT.Begin_OnDataChange(ref this, ref pFormatetc, ref pStgmed);
			public void Finish_OnDataChange() mut => VT.Finish_OnDataChange(ref this);
			public void Begin_OnViewChange(uint32 dwAspect, int32 lindex) mut => VT.Begin_OnViewChange(ref this, dwAspect, lindex);
			public void Finish_OnViewChange() mut => VT.Finish_OnViewChange(ref this);
			public void Begin_OnRename(ref IMoniker pmk) mut => VT.Begin_OnRename(ref this, ref pmk);
			public void Finish_OnRename() mut => VT.Finish_OnRename(ref this);
			public void Begin_OnSave() mut => VT.Begin_OnSave(ref this);
			public void Finish_OnSave() mut => VT.Finish_OnSave(ref this);
			public void Begin_OnClose() mut => VT.Begin_OnClose(ref this);
			public void Finish_OnClose() mut => VT.Finish_OnClose(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self, ref FORMATETC pFormatetc, ref STGMEDIUM pStgmed) Begin_OnDataChange;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Finish_OnDataChange;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self, uint32 dwAspect, int32 lindex) Begin_OnViewChange;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Finish_OnViewChange;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self, ref IMoniker pmk) Begin_OnRename;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Finish_OnRename;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Begin_OnSave;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Finish_OnSave;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Begin_OnClose;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink self) Finish_OnClose;
			}
		}
		[CRepr]
		public struct IAdviseSink2 : IAdviseSink
		{
			public const new Guid IID = .(0x00000125, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnLinkSrcChange(ref IMoniker pmk) mut => VT.OnLinkSrcChange(ref this, ref pmk);

			[CRepr]
			public struct VTable : IAdviseSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IAdviseSink2 self, ref IMoniker pmk) OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct AsyncIAdviseSink2 : AsyncIAdviseSink
		{
			public const new Guid IID = .(0x00000151, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public void Begin_OnLinkSrcChange(ref IMoniker pmk) mut => VT.Begin_OnLinkSrcChange(ref this, ref pmk);
			public void Finish_OnLinkSrcChange() mut => VT.Finish_OnLinkSrcChange(ref this);

			[CRepr]
			public struct VTable : AsyncIAdviseSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink2 self, ref IMoniker pmk) Begin_OnLinkSrcChange;
				public new function [CallingConvention(.Stdcall)] void(ref AsyncIAdviseSink2 self) Finish_OnLinkSrcChange;
			}
		}
		[CRepr]
		public struct IDataObject : IUnknown
		{
			public const new Guid IID = .(0x0000010e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(ref FORMATETC pformatetcIn, out STGMEDIUM pmedium) mut => VT.GetData(ref this, ref pformatetcIn, out pmedium);
			public HRESULT GetDataHere(ref FORMATETC pformatetc, out STGMEDIUM pmedium) mut => VT.GetDataHere(ref this, ref pformatetc, out pmedium);
			public HRESULT QueryGetData(ref FORMATETC pformatetc) mut => VT.QueryGetData(ref this, ref pformatetc);
			public HRESULT GetCanonicalFormatEtc(ref FORMATETC pformatectIn, out FORMATETC pformatetcOut) mut => VT.GetCanonicalFormatEtc(ref this, ref pformatectIn, out pformatetcOut);
			public HRESULT SetData(ref FORMATETC pformatetc, ref STGMEDIUM pmedium, BOOL fRelease) mut => VT.SetData(ref this, ref pformatetc, ref pmedium, fRelease);
			public HRESULT EnumFormatEtc(uint32 dwDirection, out IEnumFORMATETC* ppenumFormatEtc) mut => VT.EnumFormatEtc(ref this, dwDirection, out ppenumFormatEtc);
			public HRESULT DAdvise(ref FORMATETC pformatetc, uint32 advf, ref IAdviseSink pAdvSink, out uint32 pdwConnection) mut => VT.DAdvise(ref this, ref pformatetc, advf, ref pAdvSink, out pdwConnection);
			public HRESULT DUnadvise(uint32 dwConnection) mut => VT.DUnadvise(ref this, dwConnection);
			public HRESULT EnumDAdvise(out IEnumSTATDATA* ppenumAdvise) mut => VT.EnumDAdvise(ref this, out ppenumAdvise);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatetcIn, out STGMEDIUM pmedium) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatetc, out STGMEDIUM pmedium) GetDataHere;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatetc) QueryGetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatectIn, out FORMATETC pformatetcOut) GetCanonicalFormatEtc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatetc, ref STGMEDIUM pmedium, BOOL fRelease) SetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, uint32 dwDirection, out IEnumFORMATETC* ppenumFormatEtc) EnumFormatEtc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, ref FORMATETC pformatetc, uint32 advf, ref IAdviseSink pAdvSink, out uint32 pdwConnection) DAdvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, uint32 dwConnection) DUnadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObject self, out IEnumSTATDATA* ppenumAdvise) EnumDAdvise;
			}
		}
		[CRepr]
		public struct IDataAdviseHolder : IUnknown
		{
			public const new Guid IID = .(0x00000110, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IDataObject* pDataObject, ref FORMATETC pFetc, uint32 advf, ref IAdviseSink pAdvise, out uint32 pdwConnection) mut => VT.Advise(ref this, pDataObject, ref pFetc, advf, ref pAdvise, out pdwConnection);
			public HRESULT Unadvise(uint32 dwConnection) mut => VT.Unadvise(ref this, dwConnection);
			public HRESULT EnumAdvise(out IEnumSTATDATA* ppenumAdvise) mut => VT.EnumAdvise(ref this, out ppenumAdvise);
			public HRESULT SendOnDataChange(ref IDataObject pDataObject, uint32 dwReserved, uint32 advf) mut => VT.SendOnDataChange(ref this, ref pDataObject, dwReserved, advf);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataAdviseHolder self, IDataObject* pDataObject, ref FORMATETC pFetc, uint32 advf, ref IAdviseSink pAdvise, out uint32 pdwConnection) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataAdviseHolder self, uint32 dwConnection) Unadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataAdviseHolder self, out IEnumSTATDATA* ppenumAdvise) EnumAdvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataAdviseHolder self, ref IDataObject pDataObject, uint32 dwReserved, uint32 advf) SendOnDataChange;
			}
		}
		[CRepr]
		public struct IClassActivator : IUnknown
		{
			public const new Guid IID = .(0x00000140, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassObject(in Guid rclsid, uint32 dwClassContext, uint32 locale, in Guid riid, void** ppv) mut => VT.GetClassObject(ref this, rclsid, dwClassContext, locale, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassActivator self, in Guid rclsid, uint32 dwClassContext, uint32 locale, in Guid riid, void** ppv) GetClassObject;
			}
		}
		[CRepr]
		public struct IProgressNotify : IUnknown
		{
			public const new Guid IID = .(0xa9d758a0, 0x4617, 0x11cf, 0x95, 0xfc, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProgress(uint32 dwProgressCurrent, uint32 dwProgressMaximum, BOOL fAccurate, BOOL fOwner) mut => VT.OnProgress(ref this, dwProgressCurrent, dwProgressMaximum, fAccurate, fOwner);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressNotify self, uint32 dwProgressCurrent, uint32 dwProgressMaximum, BOOL fAccurate, BOOL fOwner) OnProgress;
			}
		}
		[CRepr]
		public struct IBlockingLock : IUnknown
		{
			public const new Guid IID = .(0x30f3d47a, 0x6447, 0x11d1, 0x8e, 0x3c, 0x00, 0xc0, 0x4f, 0xb9, 0x38, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock(uint32 dwTimeout) mut => VT.Lock(ref this, dwTimeout);
			public HRESULT Unlock() mut => VT.Unlock(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBlockingLock self, uint32 dwTimeout) Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBlockingLock self) Unlock;
			}
		}
		[CRepr]
		public struct ITimeAndNoticeControl : IUnknown
		{
			public const new Guid IID = .(0xbc0bf6ae, 0x8878, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuppressChanges(uint32 res1, uint32 res2) mut => VT.SuppressChanges(ref this, res1, res2);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITimeAndNoticeControl self, uint32 res1, uint32 res2) SuppressChanges;
			}
		}
		[CRepr]
		public struct IOplockStorage : IUnknown
		{
			public const new Guid IID = .(0x8d19c834, 0x8879, 0x11d1, 0x83, 0xe9, 0x00, 0xc0, 0x4f, 0xc2, 0xc6, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, in Guid riid, void** ppstgOpen) mut => VT.CreateStorageEx(ref this, pwcsName, grfMode, stgfmt, grfAttrs, riid, ppstgOpen);
			public HRESULT OpenStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, in Guid riid, void** ppstgOpen) mut => VT.OpenStorageEx(ref this, pwcsName, grfMode, stgfmt, grfAttrs, riid, ppstgOpen);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOplockStorage self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, in Guid riid, void** ppstgOpen) CreateStorageEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOplockStorage self, PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, in Guid riid, void** ppstgOpen) OpenStorageEx;
			}
		}
		[CRepr]
		public struct IUrlMon : IUnknown
		{
			public const new Guid IID = .(0x00000026, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncGetClassBits(in Guid rclsid, PWSTR pszTYPE, PWSTR pszExt, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR pszCodeBase, ref IBindCtx pbc, uint32 dwClassContext, in Guid riid, uint32 flags) mut => VT.AsyncGetClassBits(ref this, rclsid, pszTYPE, pszExt, dwFileVersionMS, dwFileVersionLS, pszCodeBase, ref pbc, dwClassContext, riid, flags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUrlMon self, in Guid rclsid, PWSTR pszTYPE, PWSTR pszExt, uint32 dwFileVersionMS, uint32 dwFileVersionLS, PWSTR pszCodeBase, ref IBindCtx pbc, uint32 dwClassContext, in Guid riid, uint32 flags) AsyncGetClassBits;
			}
		}
		[CRepr]
		public struct IForegroundTransfer : IUnknown
		{
			public const new Guid IID = .(0x00000145, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllowForegroundTransfer(void* lpvReserved) mut => VT.AllowForegroundTransfer(ref this, lpvReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IForegroundTransfer self, void* lpvReserved) AllowForegroundTransfer;
			}
		}
		[CRepr]
		public struct IProcessLock : IUnknown
		{
			public const new Guid IID = .(0x000001d5, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 AddRefOnProcess() mut => VT.AddRefOnProcess(ref this);
			public uint32 ReleaseRefOnProcess() mut => VT.ReleaseRefOnProcess(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IProcessLock self) AddRefOnProcess;
				public new function [CallingConvention(.Stdcall)] uint32(ref IProcessLock self) ReleaseRefOnProcess;
			}
		}
		[CRepr]
		public struct ISurrogateService : IUnknown
		{
			public const new Guid IID = .(0x000001d4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(in Guid rguidProcessID, ref IProcessLock pProcessLock, out BOOL pfApplicationAware) mut => VT.Init(ref this, rguidProcessID, ref pProcessLock, out pfApplicationAware);
			public HRESULT ApplicationLaunch(in Guid rguidApplID, ApplicationType appType) mut => VT.ApplicationLaunch(ref this, rguidApplID, appType);
			public HRESULT ApplicationFree(in Guid rguidApplID) mut => VT.ApplicationFree(ref this, rguidApplID);
			public HRESULT CatalogRefresh(uint32 ulReserved) mut => VT.CatalogRefresh(ref this, ulReserved);
			public HRESULT ProcessShutdown(ShutdownType shutdownType) mut => VT.ProcessShutdown(ref this, shutdownType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogateService self, in Guid rguidProcessID, ref IProcessLock pProcessLock, out BOOL pfApplicationAware) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogateService self, in Guid rguidApplID, ApplicationType appType) ApplicationLaunch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogateService self, in Guid rguidApplID) ApplicationFree;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogateService self, uint32 ulReserved) CatalogRefresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISurrogateService self, ShutdownType shutdownType) ProcessShutdown;
			}
		}
		[CRepr]
		public struct IInitializeSpy : IUnknown
		{
			public const new Guid IID = .(0x00000034, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreInitialize(uint32 dwCoInit, uint32 dwCurThreadAptRefs) mut => VT.PreInitialize(ref this, dwCoInit, dwCurThreadAptRefs);
			public HRESULT PostInitialize(HRESULT hrCoInit, uint32 dwCoInit, uint32 dwNewThreadAptRefs) mut => VT.PostInitialize(ref this, hrCoInit, dwCoInit, dwNewThreadAptRefs);
			public HRESULT PreUninitialize(uint32 dwCurThreadAptRefs) mut => VT.PreUninitialize(ref this, dwCurThreadAptRefs);
			public HRESULT PostUninitialize(uint32 dwNewThreadAptRefs) mut => VT.PostUninitialize(ref this, dwNewThreadAptRefs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeSpy self, uint32 dwCoInit, uint32 dwCurThreadAptRefs) PreInitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeSpy self, HRESULT hrCoInit, uint32 dwCoInit, uint32 dwNewThreadAptRefs) PostInitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeSpy self, uint32 dwCurThreadAptRefs) PreUninitialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeSpy self, uint32 dwNewThreadAptRefs) PostUninitialize;
			}
		}
		[CRepr]
		public struct IServiceProvider : IUnknown
		{
			public const new Guid IID = .(0x6d5140c1, 0x7436, 0x11ce, 0x80, 0x34, 0x00, 0xaa, 0x00, 0x60, 0x09, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryService(in Guid guidService, in Guid riid, void** ppvObject) mut => VT.QueryService(ref this, guidService, riid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IServiceProvider self, in Guid guidService, in Guid riid, void** ppvObject) QueryService;
			}
		}
		[CRepr]
		public struct IEnumGUID : IUnknown
		{
			public const new Guid IID = .(0x0002e000, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, Guid* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumGUID* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumGUID self, uint32 celt, Guid* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumGUID self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumGUID self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumGUID self, out IEnumGUID* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumCATEGORYINFO : IUnknown
		{
			public const new Guid IID = .(0x0002e011, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, CATEGORYINFO* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumCATEGORYINFO* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCATEGORYINFO self, uint32 celt, CATEGORYINFO* rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCATEGORYINFO self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCATEGORYINFO self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCATEGORYINFO self, out IEnumCATEGORYINFO* ppenum) Clone;
			}
		}
		[CRepr]
		public struct ICatRegister : IUnknown
		{
			public const new Guid IID = .(0x0002e012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCategories(uint32 cCategories, CATEGORYINFO* rgCategoryInfo) mut => VT.RegisterCategories(ref this, cCategories, rgCategoryInfo);
			public HRESULT UnRegisterCategories(uint32 cCategories, Guid* rgcatid) mut => VT.UnRegisterCategories(ref this, cCategories, rgcatid);
			public HRESULT RegisterClassImplCategories(in Guid rclsid, uint32 cCategories, Guid* rgcatid) mut => VT.RegisterClassImplCategories(ref this, rclsid, cCategories, rgcatid);
			public HRESULT UnRegisterClassImplCategories(in Guid rclsid, uint32 cCategories, Guid* rgcatid) mut => VT.UnRegisterClassImplCategories(ref this, rclsid, cCategories, rgcatid);
			public HRESULT RegisterClassReqCategories(in Guid rclsid, uint32 cCategories, Guid* rgcatid) mut => VT.RegisterClassReqCategories(ref this, rclsid, cCategories, rgcatid);
			public HRESULT UnRegisterClassReqCategories(in Guid rclsid, uint32 cCategories, Guid* rgcatid) mut => VT.UnRegisterClassReqCategories(ref this, rclsid, cCategories, rgcatid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, uint32 cCategories, CATEGORYINFO* rgCategoryInfo) RegisterCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, uint32 cCategories, Guid* rgcatid) UnRegisterCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, in Guid rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassImplCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, in Guid rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassImplCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, in Guid rclsid, uint32 cCategories, Guid* rgcatid) RegisterClassReqCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatRegister self, in Guid rclsid, uint32 cCategories, Guid* rgcatid) UnRegisterClassReqCategories;
			}
		}
		[CRepr]
		public struct ICatInformation : IUnknown
		{
			public const new Guid IID = .(0x0002e013, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumCategories(uint32 lcid, out IEnumCATEGORYINFO* ppenumCategoryInfo) mut => VT.EnumCategories(ref this, lcid, out ppenumCategoryInfo);
			public HRESULT GetCategoryDesc(ref Guid rcatid, uint32 lcid, out PWSTR pszDesc) mut => VT.GetCategoryDesc(ref this, ref rcatid, lcid, out pszDesc);
			public HRESULT EnumClassesOfCategories(uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq, out IEnumGUID* ppenumClsid) mut => VT.EnumClassesOfCategories(ref this, cImplemented, rgcatidImpl, cRequired, rgcatidReq, out ppenumClsid);
			public HRESULT IsClassOfCategories(in Guid rclsid, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq) mut => VT.IsClassOfCategories(ref this, rclsid, cImplemented, rgcatidImpl, cRequired, rgcatidReq);
			public HRESULT EnumImplCategoriesOfClass(in Guid rclsid, out IEnumGUID* ppenumCatid) mut => VT.EnumImplCategoriesOfClass(ref this, rclsid, out ppenumCatid);
			public HRESULT EnumReqCategoriesOfClass(in Guid rclsid, out IEnumGUID* ppenumCatid) mut => VT.EnumReqCategoriesOfClass(ref this, rclsid, out ppenumCatid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, uint32 lcid, out IEnumCATEGORYINFO* ppenumCategoryInfo) EnumCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, ref Guid rcatid, uint32 lcid, out PWSTR pszDesc) GetCategoryDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq, out IEnumGUID* ppenumClsid) EnumClassesOfCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, in Guid rclsid, uint32 cImplemented, Guid* rgcatidImpl, uint32 cRequired, Guid* rgcatidReq) IsClassOfCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, in Guid rclsid, out IEnumGUID* ppenumCatid) EnumImplCategoriesOfClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatInformation self, in Guid rclsid, out IEnumGUID* ppenumCatid) EnumReqCategoriesOfClass;
			}
		}
		[CRepr]
		public struct IContextCallback : IUnknown
		{
			public const new Guid IID = .(0x000001da, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ContextCallback(PFNCONTEXTCALL pfnCallback, ref ComCallData pParam, in Guid riid, int32 iMethod, ref IUnknown pUnk) mut => VT.ContextCallback(ref this, pfnCallback, ref pParam, riid, iMethod, ref pUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextCallback self, PFNCONTEXTCALL pfnCallback, ref ComCallData pParam, in Guid riid, int32 iMethod, ref IUnknown pUnk) ContextCallback;
			}
		}
		[CRepr]
		public struct IBinding : IUnknown
		{
			public const new Guid IID = .(0x79eac9c0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Abort() mut => VT.Abort(ref this);
			public HRESULT Suspend() mut => VT.Suspend(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT SetPriority(int32 nPriority) mut => VT.SetPriority(ref this, nPriority);
			public HRESULT GetPriority(out int32 pnPriority) mut => VT.GetPriority(ref this, out pnPriority);
			public HRESULT GetBindResult(out Guid pclsidProtocol, out uint32 pdwResult, out PWSTR pszResult, out uint32 pdwReserved) mut => VT.GetBindResult(ref this, out pclsidProtocol, out pdwResult, out pszResult, out pdwReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self) Abort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self) Suspend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self, int32 nPriority) SetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self, out int32 pnPriority) GetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinding self, out Guid pclsidProtocol, out uint32 pdwResult, out PWSTR pszResult, out uint32 pdwReserved) GetBindResult;
			}
		}
		[CRepr]
		public struct IBindStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x79eac9c1, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartBinding(uint32 dwReserved, ref IBinding pib) mut => VT.OnStartBinding(ref this, dwReserved, ref pib);
			public HRESULT GetPriority(out int32 pnPriority) mut => VT.GetPriority(ref this, out pnPriority);
			public HRESULT OnLowResource(uint32 reserved) mut => VT.OnLowResource(ref this, reserved);
			public HRESULT OnProgress(uint32 ulProgress, uint32 ulProgressMax, uint32 ulStatusCode, PWSTR szStatusText) mut => VT.OnProgress(ref this, ulProgress, ulProgressMax, ulStatusCode, szStatusText);
			public HRESULT OnStopBinding(HRESULT hresult, PWSTR szError) mut => VT.OnStopBinding(ref this, hresult, szError);
			public HRESULT GetBindInfo(out uint32 grfBINDF, out BINDINFO pbindinfo) mut => VT.GetBindInfo(ref this, out grfBINDF, out pbindinfo);
			public HRESULT OnDataAvailable(uint32 grfBSCF, uint32 dwSize, ref FORMATETC pformatetc, ref STGMEDIUM pstgmed) mut => VT.OnDataAvailable(ref this, grfBSCF, dwSize, ref pformatetc, ref pstgmed);
			public HRESULT OnObjectAvailable(in Guid riid, ref IUnknown punk) mut => VT.OnObjectAvailable(ref this, riid, ref punk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, uint32 dwReserved, ref IBinding pib) OnStartBinding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, out int32 pnPriority) GetPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, uint32 reserved) OnLowResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, uint32 ulProgress, uint32 ulProgressMax, uint32 ulStatusCode, PWSTR szStatusText) OnProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, HRESULT hresult, PWSTR szError) OnStopBinding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, out uint32 grfBINDF, out BINDINFO pbindinfo) GetBindInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, uint32 grfBSCF, uint32 dwSize, ref FORMATETC pformatetc, ref STGMEDIUM pstgmed) OnDataAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallback self, in Guid riid, ref IUnknown punk) OnObjectAvailable;
			}
		}
		[CRepr]
		public struct IBindStatusCallbackEx : IBindStatusCallback
		{
			public const new Guid IID = .(0xaaa74ef9, 0x8ee7, 0x4659, 0x88, 0xd9, 0xf8, 0xc5, 0x04, 0xda, 0x73, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBindInfoEx(out uint32 grfBINDF, out BINDINFO pbindinfo, out uint32 grfBINDF2, out uint32 pdwReserved) mut => VT.GetBindInfoEx(ref this, out grfBINDF, out pbindinfo, out grfBINDF2, out pdwReserved);

			[CRepr]
			public struct VTable : IBindStatusCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindStatusCallbackEx self, out uint32 grfBINDF, out BINDINFO pbindinfo, out uint32 grfBINDF2, out uint32 pdwReserved) GetBindInfoEx;
			}
		}
		[CRepr]
		public struct IAuthenticate : IUnknown
		{
			public const new Guid IID = .(0x79eac9d0, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Authenticate(out HWND phwnd, out PWSTR pszUsername, out PWSTR pszPassword) mut => VT.Authenticate(ref this, out phwnd, out pszUsername, out pszPassword);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticate self, out HWND phwnd, out PWSTR pszUsername, out PWSTR pszPassword) Authenticate;
			}
		}
		[CRepr]
		public struct IAuthenticateEx : IAuthenticate
		{
			public const new Guid IID = .(0x2ad1edaf, 0xd83d, 0x48b5, 0x9a, 0xdf, 0x03, 0xdb, 0xe1, 0x9f, 0x53, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AuthenticateEx(out HWND phwnd, out PWSTR pszUsername, out PWSTR pszPassword, ref AUTHENTICATEINFO pauthinfo) mut => VT.AuthenticateEx(ref this, out phwnd, out pszUsername, out pszPassword, ref pauthinfo);

			[CRepr]
			public struct VTable : IAuthenticate.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAuthenticateEx self, out HWND phwnd, out PWSTR pszUsername, out PWSTR pszPassword, ref AUTHENTICATEINFO pauthinfo) AuthenticateEx;
			}
		}
		[CRepr]
		public struct IUri : IUnknown
		{
			public const new Guid IID = .(0xa39ee748, 0x6a27, 0x4817, 0xa6, 0xf2, 0x13, 0x91, 0x4b, 0xef, 0x58, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyBSTR(Uri_PROPERTY uriProp, out BSTR pbstrProperty, uint32 dwFlags) mut => VT.GetPropertyBSTR(ref this, uriProp, out pbstrProperty, dwFlags);
			public HRESULT GetPropertyLength(Uri_PROPERTY uriProp, out uint32 pcchProperty, uint32 dwFlags) mut => VT.GetPropertyLength(ref this, uriProp, out pcchProperty, dwFlags);
			public HRESULT GetPropertyDWORD(Uri_PROPERTY uriProp, out uint32 pdwProperty, uint32 dwFlags) mut => VT.GetPropertyDWORD(ref this, uriProp, out pdwProperty, dwFlags);
			public HRESULT HasProperty(Uri_PROPERTY uriProp, out BOOL pfHasProperty) mut => VT.HasProperty(ref this, uriProp, out pfHasProperty);
			public HRESULT GetAbsoluteUri(out BSTR pbstrAbsoluteUri) mut => VT.GetAbsoluteUri(ref this, out pbstrAbsoluteUri);
			public HRESULT GetAuthority(out BSTR pbstrAuthority) mut => VT.GetAuthority(ref this, out pbstrAuthority);
			public HRESULT GetDisplayUri(out BSTR pbstrDisplayString) mut => VT.GetDisplayUri(ref this, out pbstrDisplayString);
			public HRESULT GetDomain(out BSTR pbstrDomain) mut => VT.GetDomain(ref this, out pbstrDomain);
			public HRESULT GetExtension(out BSTR pbstrExtension) mut => VT.GetExtension(ref this, out pbstrExtension);
			public HRESULT GetFragment(out BSTR pbstrFragment) mut => VT.GetFragment(ref this, out pbstrFragment);
			public HRESULT GetHost(out BSTR pbstrHost) mut => VT.GetHost(ref this, out pbstrHost);
			public HRESULT GetPassword(out BSTR pbstrPassword) mut => VT.GetPassword(ref this, out pbstrPassword);
			public HRESULT GetPath(out BSTR pbstrPath) mut => VT.GetPath(ref this, out pbstrPath);
			public HRESULT GetPathAndQuery(out BSTR pbstrPathAndQuery) mut => VT.GetPathAndQuery(ref this, out pbstrPathAndQuery);
			public HRESULT GetQuery(out BSTR pbstrQuery) mut => VT.GetQuery(ref this, out pbstrQuery);
			public HRESULT GetRawUri(out BSTR pbstrRawUri) mut => VT.GetRawUri(ref this, out pbstrRawUri);
			public HRESULT GetSchemeName(out BSTR pbstrSchemeName) mut => VT.GetSchemeName(ref this, out pbstrSchemeName);
			public HRESULT GetUserInfo(out BSTR pbstrUserInfo) mut => VT.GetUserInfo(ref this, out pbstrUserInfo);
			public HRESULT GetUserName(out BSTR pbstrUserName) mut => VT.GetUserName(ref this, out pbstrUserName);
			public HRESULT GetHostType(out uint32 pdwHostType) mut => VT.GetHostType(ref this, out pdwHostType);
			public HRESULT GetPort(out uint32 pdwPort) mut => VT.GetPort(ref this, out pdwPort);
			public HRESULT GetScheme(out uint32 pdwScheme) mut => VT.GetScheme(ref this, out pdwScheme);
			public HRESULT GetZone(out uint32 pdwZone) mut => VT.GetZone(ref this, out pdwZone);
			public HRESULT GetProperties(out uint32 pdwFlags) mut => VT.GetProperties(ref this, out pdwFlags);
			public HRESULT IsEqual(ref IUri pUri, out BOOL pfEqual) mut => VT.IsEqual(ref this, ref pUri, out pfEqual);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, Uri_PROPERTY uriProp, out BSTR pbstrProperty, uint32 dwFlags) GetPropertyBSTR;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, Uri_PROPERTY uriProp, out uint32 pcchProperty, uint32 dwFlags) GetPropertyLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, Uri_PROPERTY uriProp, out uint32 pdwProperty, uint32 dwFlags) GetPropertyDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, Uri_PROPERTY uriProp, out BOOL pfHasProperty) HasProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrAbsoluteUri) GetAbsoluteUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrAuthority) GetAuthority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrDisplayString) GetDisplayUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrDomain) GetDomain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrExtension) GetExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrFragment) GetFragment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrHost) GetHost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrPassword) GetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrPathAndQuery) GetPathAndQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrQuery) GetQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrRawUri) GetRawUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrSchemeName) GetSchemeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrUserInfo) GetUserInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out BSTR pbstrUserName) GetUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out uint32 pdwHostType) GetHostType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out uint32 pdwPort) GetPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out uint32 pdwScheme) GetScheme;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out uint32 pdwZone) GetZone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, out uint32 pdwFlags) GetProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUri self, ref IUri pUri, out BOOL pfEqual) IsEqual;
			}
		}
		[CRepr]
		public struct IUriBuilder : IUnknown
		{
			public const new Guid IID = .(0x4221b2e1, 0x8955, 0x46c0, 0xbd, 0x5b, 0xde, 0x98, 0x97, 0x56, 0x5d, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateUriSimple(uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) mut => VT.CreateUriSimple(ref this, dwAllowEncodingPropertyMask, dwReserved, out ppIUri);
			public HRESULT CreateUri(uint32 dwCreateFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) mut => VT.CreateUri(ref this, dwCreateFlags, dwAllowEncodingPropertyMask, dwReserved, out ppIUri);
			public HRESULT CreateUriWithFlags(uint32 dwCreateFlags, uint32 dwUriBuilderFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) mut => VT.CreateUriWithFlags(ref this, dwCreateFlags, dwUriBuilderFlags, dwAllowEncodingPropertyMask, dwReserved, out ppIUri);
			public HRESULT GetIUri(IUri** ppIUri) mut => VT.GetIUri(ref this, ppIUri);
			public HRESULT SetIUri(IUri* pIUri) mut => VT.SetIUri(ref this, pIUri);
			public HRESULT GetFragment(out uint32 pcchFragment, PWSTR* ppwzFragment) mut => VT.GetFragment(ref this, out pcchFragment, ppwzFragment);
			public HRESULT GetHost(out uint32 pcchHost, PWSTR* ppwzHost) mut => VT.GetHost(ref this, out pcchHost, ppwzHost);
			public HRESULT GetPassword(out uint32 pcchPassword, PWSTR* ppwzPassword) mut => VT.GetPassword(ref this, out pcchPassword, ppwzPassword);
			public HRESULT GetPath(out uint32 pcchPath, PWSTR* ppwzPath) mut => VT.GetPath(ref this, out pcchPath, ppwzPath);
			public HRESULT GetPort(out BOOL pfHasPort, out uint32 pdwPort) mut => VT.GetPort(ref this, out pfHasPort, out pdwPort);
			public HRESULT GetQuery(out uint32 pcchQuery, PWSTR* ppwzQuery) mut => VT.GetQuery(ref this, out pcchQuery, ppwzQuery);
			public HRESULT GetSchemeName(out uint32 pcchSchemeName, PWSTR* ppwzSchemeName) mut => VT.GetSchemeName(ref this, out pcchSchemeName, ppwzSchemeName);
			public HRESULT GetUserName(out uint32 pcchUserName, PWSTR* ppwzUserName) mut => VT.GetUserName(ref this, out pcchUserName, ppwzUserName);
			public HRESULT SetFragment(PWSTR pwzNewValue) mut => VT.SetFragment(ref this, pwzNewValue);
			public HRESULT SetHost(PWSTR pwzNewValue) mut => VT.SetHost(ref this, pwzNewValue);
			public HRESULT SetPassword(PWSTR pwzNewValue) mut => VT.SetPassword(ref this, pwzNewValue);
			public HRESULT SetPath(PWSTR pwzNewValue) mut => VT.SetPath(ref this, pwzNewValue);
			public HRESULT SetPort(BOOL fHasPort, uint32 dwNewValue) mut => VT.SetPort(ref this, fHasPort, dwNewValue);
			public HRESULT SetQuery(PWSTR pwzNewValue) mut => VT.SetQuery(ref this, pwzNewValue);
			public HRESULT SetSchemeName(PWSTR pwzNewValue) mut => VT.SetSchemeName(ref this, pwzNewValue);
			public HRESULT SetUserName(PWSTR pwzNewValue) mut => VT.SetUserName(ref this, pwzNewValue);
			public HRESULT RemoveProperties(uint32 dwPropertyMask) mut => VT.RemoveProperties(ref this, dwPropertyMask);
			public HRESULT HasBeenModified(out BOOL pfModified) mut => VT.HasBeenModified(ref this, out pfModified);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) CreateUriSimple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, uint32 dwCreateFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) CreateUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, uint32 dwCreateFlags, uint32 dwUriBuilderFlags, uint32 dwAllowEncodingPropertyMask, uint dwReserved, out IUri* ppIUri) CreateUriWithFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, IUri** ppIUri) GetIUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, IUri* pIUri) SetIUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchFragment, PWSTR* ppwzFragment) GetFragment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchHost, PWSTR* ppwzHost) GetHost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchPassword, PWSTR* ppwzPassword) GetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchPath, PWSTR* ppwzPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out BOOL pfHasPort, out uint32 pdwPort) GetPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchQuery, PWSTR* ppwzQuery) GetQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchSchemeName, PWSTR* ppwzSchemeName) GetSchemeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out uint32 pcchUserName, PWSTR* ppwzUserName) GetUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetFragment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetHost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, BOOL fHasPort, uint32 dwNewValue) SetPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetSchemeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, PWSTR pwzNewValue) SetUserName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, uint32 dwPropertyMask) RemoveProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUriBuilder self, out BOOL pfModified) HasBeenModified;
			}
		}
		[CRepr]
		public struct IBindHost : IUnknown
		{
			public const new Guid IID = .(0xfc4801a1, 0x2ba9, 0x11cf, 0xa2, 0x29, 0x00, 0xaa, 0x00, 0x3d, 0x73, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMoniker(PWSTR szName, ref IBindCtx pBC, out IMoniker* ppmk, uint32 dwReserved) mut => VT.CreateMoniker(ref this, szName, ref pBC, out ppmk, dwReserved);
			public HRESULT MonikerBindToStorage(ref IMoniker pMk, ref IBindCtx pBC, ref IBindStatusCallback pBSC, in Guid riid, void** ppvObj) mut => VT.MonikerBindToStorage(ref this, ref pMk, ref pBC, ref pBSC, riid, ppvObj);
			public HRESULT MonikerBindToObject(ref IMoniker pMk, ref IBindCtx pBC, ref IBindStatusCallback pBSC, in Guid riid, void** ppvObj) mut => VT.MonikerBindToObject(ref this, ref pMk, ref pBC, ref pBSC, riid, ppvObj);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindHost self, PWSTR szName, ref IBindCtx pBC, out IMoniker* ppmk, uint32 dwReserved) CreateMoniker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindHost self, ref IMoniker pMk, ref IBindCtx pBC, ref IBindStatusCallback pBSC, in Guid riid, void** ppvObj) MonikerBindToStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBindHost self, ref IMoniker pMk, ref IBindCtx pBC, ref IBindStatusCallback pBSC, in Guid riid, void** ppvObj) MonikerBindToObject;
			}
		}
		[CRepr]
		public struct IDispatch : IUnknown
		{
			public const new Guid IID = .(0x00020400, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeInfoCount(out uint32 pctinfo) mut => VT.GetTypeInfoCount(ref this, out pctinfo);
			public HRESULT GetTypeInfo(uint32 iTInfo, uint32 lcid, out ITypeInfo* ppTInfo) mut => VT.GetTypeInfo(ref this, iTInfo, lcid, out ppTInfo);
			public HRESULT GetIDsOfNames(in Guid riid, PWSTR* rgszNames, uint32 cNames, uint32 lcid, int32* rgDispId) mut => VT.GetIDsOfNames(ref this, riid, rgszNames, cNames, lcid, rgDispId);
			public HRESULT Invoke(int32 dispIdMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) mut => VT.Invoke(ref this, dispIdMember, riid, lcid, wFlags, ref pDispParams, pVarResult, pExcepInfo, puArgErr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatch self, out uint32 pctinfo) GetTypeInfoCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatch self, uint32 iTInfo, uint32 lcid, out ITypeInfo* ppTInfo) GetTypeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatch self, in Guid riid, PWSTR* rgszNames, uint32 cNames, uint32 lcid, int32* rgDispId) GetIDsOfNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatch self, int32 dispIdMember, in Guid riid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pDispParams, VARIANT* pVarResult, EXCEPINFO* pExcepInfo, uint32* puArgErr) Invoke;
			}
		}
		[CRepr]
		public struct ITypeComp : IUnknown
		{
			public const new Guid IID = .(0x00020403, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Bind(PWSTR szName, uint32 lHashVal, uint16 wFlags, out ITypeInfo* ppTInfo, out DESCKIND pDescKind, out BINDPTR pBindPtr) mut => VT.Bind(ref this, szName, lHashVal, wFlags, out ppTInfo, out pDescKind, out pBindPtr);
			public HRESULT BindType(PWSTR szName, uint32 lHashVal, out ITypeInfo* ppTInfo, out ITypeComp* ppTComp) mut => VT.BindType(ref this, szName, lHashVal, out ppTInfo, out ppTComp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeComp self, PWSTR szName, uint32 lHashVal, uint16 wFlags, out ITypeInfo* ppTInfo, out DESCKIND pDescKind, out BINDPTR pBindPtr) Bind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeComp self, PWSTR szName, uint32 lHashVal, out ITypeInfo* ppTInfo, out ITypeComp* ppTComp) BindType;
			}
		}
		[CRepr]
		public struct ITypeInfo : IUnknown
		{
			public const new Guid IID = .(0x00020401, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeAttr(out TYPEATTR* ppTypeAttr) mut => VT.GetTypeAttr(ref this, out ppTypeAttr);
			public HRESULT GetTypeComp(out ITypeComp* ppTComp) mut => VT.GetTypeComp(ref this, out ppTComp);
			public HRESULT GetFuncDesc(uint32 index, out FUNCDESC* ppFuncDesc) mut => VT.GetFuncDesc(ref this, index, out ppFuncDesc);
			public HRESULT GetVarDesc(uint32 index, out VARDESC* ppVarDesc) mut => VT.GetVarDesc(ref this, index, out ppVarDesc);
			public HRESULT GetNames(int32 memid, BSTR* rgBstrNames, uint32 cMaxNames, out uint32 pcNames) mut => VT.GetNames(ref this, memid, rgBstrNames, cMaxNames, out pcNames);
			public HRESULT GetRefTypeOfImplType(uint32 index, out uint32 pRefType) mut => VT.GetRefTypeOfImplType(ref this, index, out pRefType);
			public HRESULT GetImplTypeFlags(uint32 index, out int32 pImplTypeFlags) mut => VT.GetImplTypeFlags(ref this, index, out pImplTypeFlags);
			public HRESULT GetIDsOfNames(PWSTR* rgszNames, uint32 cNames, int32* pMemId) mut => VT.GetIDsOfNames(ref this, rgszNames, cNames, pMemId);
			public HRESULT Invoke(void* pvInstance, int32 memid, uint16 wFlags, out DISPPARAMS pDispParams, out VARIANT pVarResult, out EXCEPINFO pExcepInfo, out uint32 puArgErr) mut => VT.Invoke(ref this, pvInstance, memid, wFlags, out pDispParams, out pVarResult, out pExcepInfo, out puArgErr);
			public HRESULT GetDocumentation(int32 memid, BSTR* pBstrName, BSTR* pBstrDocString, out uint32 pdwHelpContext, BSTR* pBstrHelpFile) mut => VT.GetDocumentation(ref this, memid, pBstrName, pBstrDocString, out pdwHelpContext, pBstrHelpFile);
			public HRESULT GetDllEntry(int32 memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, out uint16 pwOrdinal) mut => VT.GetDllEntry(ref this, memid, invKind, pBstrDllName, pBstrName, out pwOrdinal);
			public HRESULT GetRefTypeInfo(uint32 hRefType, out ITypeInfo* ppTInfo) mut => VT.GetRefTypeInfo(ref this, hRefType, out ppTInfo);
			public HRESULT AddressOfMember(int32 memid, INVOKEKIND invKind, void** ppv) mut => VT.AddressOfMember(ref this, memid, invKind, ppv);
			public HRESULT CreateInstance(ref IUnknown pUnkOuter, in Guid riid, void** ppvObj) mut => VT.CreateInstance(ref this, ref pUnkOuter, riid, ppvObj);
			public HRESULT GetMops(int32 memid, out BSTR pBstrMops) mut => VT.GetMops(ref this, memid, out pBstrMops);
			public HRESULT GetContainingTypeLib(out ITypeLib* ppTLib, out uint32 pIndex) mut => VT.GetContainingTypeLib(ref this, out ppTLib, out pIndex);
			public void ReleaseTypeAttr(ref TYPEATTR pTypeAttr) mut => VT.ReleaseTypeAttr(ref this, ref pTypeAttr);
			public void ReleaseFuncDesc(ref FUNCDESC pFuncDesc) mut => VT.ReleaseFuncDesc(ref this, ref pFuncDesc);
			public void ReleaseVarDesc(ref VARDESC pVarDesc) mut => VT.ReleaseVarDesc(ref this, ref pVarDesc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, out TYPEATTR* ppTypeAttr) GetTypeAttr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, out ITypeComp* ppTComp) GetTypeComp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, uint32 index, out FUNCDESC* ppFuncDesc) GetFuncDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, uint32 index, out VARDESC* ppVarDesc) GetVarDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, int32 memid, BSTR* rgBstrNames, uint32 cMaxNames, out uint32 pcNames) GetNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, uint32 index, out uint32 pRefType) GetRefTypeOfImplType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, uint32 index, out int32 pImplTypeFlags) GetImplTypeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, PWSTR* rgszNames, uint32 cNames, int32* pMemId) GetIDsOfNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, void* pvInstance, int32 memid, uint16 wFlags, out DISPPARAMS pDispParams, out VARIANT pVarResult, out EXCEPINFO pExcepInfo, out uint32 puArgErr) Invoke;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, int32 memid, BSTR* pBstrName, BSTR* pBstrDocString, out uint32 pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, int32 memid, INVOKEKIND invKind, BSTR* pBstrDllName, BSTR* pBstrName, out uint16 pwOrdinal) GetDllEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, uint32 hRefType, out ITypeInfo* ppTInfo) GetRefTypeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, int32 memid, INVOKEKIND invKind, void** ppv) AddressOfMember;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, ref IUnknown pUnkOuter, in Guid riid, void** ppvObj) CreateInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, int32 memid, out BSTR pBstrMops) GetMops;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo self, out ITypeLib* ppTLib, out uint32 pIndex) GetContainingTypeLib;
				public new function [CallingConvention(.Stdcall)] void(ref ITypeInfo self, ref TYPEATTR pTypeAttr) ReleaseTypeAttr;
				public new function [CallingConvention(.Stdcall)] void(ref ITypeInfo self, ref FUNCDESC pFuncDesc) ReleaseFuncDesc;
				public new function [CallingConvention(.Stdcall)] void(ref ITypeInfo self, ref VARDESC pVarDesc) ReleaseVarDesc;
			}
		}
		[CRepr]
		public struct ITypeInfo2 : ITypeInfo
		{
			public const new Guid IID = .(0x00020412, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeKind(out TYPEKIND pTypeKind) mut => VT.GetTypeKind(ref this, out pTypeKind);
			public HRESULT GetTypeFlags(out uint32 pTypeFlags) mut => VT.GetTypeFlags(ref this, out pTypeFlags);
			public HRESULT GetFuncIndexOfMemId(int32 memid, INVOKEKIND invKind, out uint32 pFuncIndex) mut => VT.GetFuncIndexOfMemId(ref this, memid, invKind, out pFuncIndex);
			public HRESULT GetVarIndexOfMemId(int32 memid, out uint32 pVarIndex) mut => VT.GetVarIndexOfMemId(ref this, memid, out pVarIndex);
			public HRESULT GetCustData(in Guid guid, out VARIANT pVarVal) mut => VT.GetCustData(ref this, guid, out pVarVal);
			public HRESULT GetFuncCustData(uint32 index, in Guid guid, out VARIANT pVarVal) mut => VT.GetFuncCustData(ref this, index, guid, out pVarVal);
			public HRESULT GetParamCustData(uint32 indexFunc, uint32 indexParam, in Guid guid, out VARIANT pVarVal) mut => VT.GetParamCustData(ref this, indexFunc, indexParam, guid, out pVarVal);
			public HRESULT GetVarCustData(uint32 index, in Guid guid, out VARIANT pVarVal) mut => VT.GetVarCustData(ref this, index, guid, out pVarVal);
			public HRESULT GetImplTypeCustData(uint32 index, in Guid guid, out VARIANT pVarVal) mut => VT.GetImplTypeCustData(ref this, index, guid, out pVarVal);
			public HRESULT GetDocumentation2(int32 memid, uint32 lcid, BSTR* pbstrHelpString, out uint32 pdwHelpStringContext, BSTR* pbstrHelpStringDll) mut => VT.GetDocumentation2(ref this, memid, lcid, pbstrHelpString, out pdwHelpStringContext, pbstrHelpStringDll);
			public HRESULT GetAllCustData(out CUSTDATA pCustData) mut => VT.GetAllCustData(ref this, out pCustData);
			public HRESULT GetAllFuncCustData(uint32 index, out CUSTDATA pCustData) mut => VT.GetAllFuncCustData(ref this, index, out pCustData);
			public HRESULT GetAllParamCustData(uint32 indexFunc, uint32 indexParam, out CUSTDATA pCustData) mut => VT.GetAllParamCustData(ref this, indexFunc, indexParam, out pCustData);
			public HRESULT GetAllVarCustData(uint32 index, out CUSTDATA pCustData) mut => VT.GetAllVarCustData(ref this, index, out pCustData);
			public HRESULT GetAllImplTypeCustData(uint32 index, out CUSTDATA pCustData) mut => VT.GetAllImplTypeCustData(ref this, index, out pCustData);

			[CRepr]
			public struct VTable : ITypeInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, out TYPEKIND pTypeKind) GetTypeKind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, out uint32 pTypeFlags) GetTypeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, int32 memid, INVOKEKIND invKind, out uint32 pFuncIndex) GetFuncIndexOfMemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, int32 memid, out uint32 pVarIndex) GetVarIndexOfMemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, in Guid guid, out VARIANT pVarVal) GetCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, in Guid guid, out VARIANT pVarVal) GetFuncCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 indexFunc, uint32 indexParam, in Guid guid, out VARIANT pVarVal) GetParamCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, in Guid guid, out VARIANT pVarVal) GetVarCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, in Guid guid, out VARIANT pVarVal) GetImplTypeCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, int32 memid, uint32 lcid, BSTR* pbstrHelpString, out uint32 pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, out CUSTDATA pCustData) GetAllCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, out CUSTDATA pCustData) GetAllFuncCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 indexFunc, uint32 indexParam, out CUSTDATA pCustData) GetAllParamCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, out CUSTDATA pCustData) GetAllVarCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeInfo2 self, uint32 index, out CUSTDATA pCustData) GetAllImplTypeCustData;
			}
		}
		[CRepr]
		public struct ITypeLib : IUnknown
		{
			public const new Guid IID = .(0x00020402, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetTypeInfoCount() mut => VT.GetTypeInfoCount(ref this);
			public HRESULT GetTypeInfo(uint32 index, out ITypeInfo* ppTInfo) mut => VT.GetTypeInfo(ref this, index, out ppTInfo);
			public HRESULT GetTypeInfoType(uint32 index, out TYPEKIND pTKind) mut => VT.GetTypeInfoType(ref this, index, out pTKind);
			public HRESULT GetTypeInfoOfGuid(in Guid guid, out ITypeInfo* ppTinfo) mut => VT.GetTypeInfoOfGuid(ref this, guid, out ppTinfo);
			public HRESULT GetLibAttr(out TLIBATTR* ppTLibAttr) mut => VT.GetLibAttr(ref this, out ppTLibAttr);
			public HRESULT GetTypeComp(out ITypeComp* ppTComp) mut => VT.GetTypeComp(ref this, out ppTComp);
			public HRESULT GetDocumentation(int32 index, BSTR* pBstrName, BSTR* pBstrDocString, out uint32 pdwHelpContext, BSTR* pBstrHelpFile) mut => VT.GetDocumentation(ref this, index, pBstrName, pBstrDocString, out pdwHelpContext, pBstrHelpFile);
			public HRESULT IsName(PWSTR szNameBuf, uint32 lHashVal, out BOOL pfName) mut => VT.IsName(ref this, szNameBuf, lHashVal, out pfName);
			public HRESULT FindName(PWSTR szNameBuf, uint32 lHashVal, ITypeInfo** ppTInfo, int32* rgMemId, out uint16 pcFound) mut => VT.FindName(ref this, szNameBuf, lHashVal, ppTInfo, rgMemId, out pcFound);
			public void ReleaseTLibAttr(ref TLIBATTR pTLibAttr) mut => VT.ReleaseTLibAttr(ref this, ref pTLibAttr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref ITypeLib self) GetTypeInfoCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, uint32 index, out ITypeInfo* ppTInfo) GetTypeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, uint32 index, out TYPEKIND pTKind) GetTypeInfoType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, in Guid guid, out ITypeInfo* ppTinfo) GetTypeInfoOfGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, out TLIBATTR* ppTLibAttr) GetLibAttr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, out ITypeComp* ppTComp) GetTypeComp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, int32 index, BSTR* pBstrName, BSTR* pBstrDocString, out uint32 pdwHelpContext, BSTR* pBstrHelpFile) GetDocumentation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, PWSTR szNameBuf, uint32 lHashVal, out BOOL pfName) IsName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib self, PWSTR szNameBuf, uint32 lHashVal, ITypeInfo** ppTInfo, int32* rgMemId, out uint16 pcFound) FindName;
				public new function [CallingConvention(.Stdcall)] void(ref ITypeLib self, ref TLIBATTR pTLibAttr) ReleaseTLibAttr;
			}
		}
		[CRepr]
		public struct ITypeLib2 : ITypeLib
		{
			public const new Guid IID = .(0x00020411, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCustData(in Guid guid, out VARIANT pVarVal) mut => VT.GetCustData(ref this, guid, out pVarVal);
			public HRESULT GetLibStatistics(out uint32 pcUniqueNames, out uint32 pcchUniqueNames) mut => VT.GetLibStatistics(ref this, out pcUniqueNames, out pcchUniqueNames);
			public HRESULT GetDocumentation2(int32 index, uint32 lcid, BSTR* pbstrHelpString, out uint32 pdwHelpStringContext, BSTR* pbstrHelpStringDll) mut => VT.GetDocumentation2(ref this, index, lcid, pbstrHelpString, out pdwHelpStringContext, pbstrHelpStringDll);
			public HRESULT GetAllCustData(out CUSTDATA pCustData) mut => VT.GetAllCustData(ref this, out pCustData);

			[CRepr]
			public struct VTable : ITypeLib.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib2 self, in Guid guid, out VARIANT pVarVal) GetCustData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib2 self, out uint32 pcUniqueNames, out uint32 pcchUniqueNames) GetLibStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib2 self, int32 index, uint32 lcid, BSTR* pbstrHelpString, out uint32 pdwHelpStringContext, BSTR* pbstrHelpStringDll) GetDocumentation2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLib2 self, out CUSTDATA pCustData) GetAllCustData;
			}
		}
		[CRepr]
		public struct IErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x1cf2b120, 0x547d, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGUID(out Guid pGUID) mut => VT.GetGUID(ref this, out pGUID);
			public HRESULT GetSource(out BSTR pBstrSource) mut => VT.GetSource(ref this, out pBstrSource);
			public HRESULT GetDescription(out BSTR pBstrDescription) mut => VT.GetDescription(ref this, out pBstrDescription);
			public HRESULT GetHelpFile(out BSTR pBstrHelpFile) mut => VT.GetHelpFile(ref this, out pBstrHelpFile);
			public HRESULT GetHelpContext(out uint32 pdwHelpContext) mut => VT.GetHelpContext(ref this, out pdwHelpContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorInfo self, out Guid pGUID) GetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorInfo self, out BSTR pBstrSource) GetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorInfo self, out BSTR pBstrDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorInfo self, out BSTR pBstrHelpFile) GetHelpFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorInfo self, out uint32 pdwHelpContext) GetHelpContext;
			}
		}
		[CRepr]
		public struct ISupportErrorInfo : IUnknown
		{
			public const new Guid IID = .(0xdf0b3d60, 0x548f, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InterfaceSupportsErrorInfo(in Guid riid) mut => VT.InterfaceSupportsErrorInfo(ref this, riid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISupportErrorInfo self, in Guid riid) InterfaceSupportsErrorInfo;
			}
		}
		[CRepr]
		public struct IErrorLog : IUnknown
		{
			public const new Guid IID = .(0x3127ca40, 0x446e, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddError(PWSTR pszPropName, ref EXCEPINFO pExcepInfo) mut => VT.AddError(ref this, pszPropName, ref pExcepInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IErrorLog self, PWSTR pszPropName, ref EXCEPINFO pExcepInfo) AddError;
			}
		}
		[CRepr]
		public struct ITypeLibRegistrationReader : IUnknown
		{
			public const new Guid IID = .(0xed6a8a2a, 0xb160, 0x4e77, 0x8f, 0x73, 0xaa, 0x74, 0x35, 0xcd, 0x5c, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumTypeLibRegistrations(out IEnumUnknown* ppEnumUnknown) mut => VT.EnumTypeLibRegistrations(ref this, out ppEnumUnknown);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistrationReader self, out IEnumUnknown* ppEnumUnknown) EnumTypeLibRegistrations;
			}
		}
		[CRepr]
		public struct ITypeLibRegistration : IUnknown
		{
			public const new Guid IID = .(0x76a3e735, 0x02df, 0x4a12, 0x98, 0xeb, 0x04, 0x3a, 0xd3, 0x60, 0x0a, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGuid(out Guid pGuid) mut => VT.GetGuid(ref this, out pGuid);
			public HRESULT GetVersion(out BSTR pVersion) mut => VT.GetVersion(ref this, out pVersion);
			public HRESULT GetLcid(out uint32 pLcid) mut => VT.GetLcid(ref this, out pLcid);
			public HRESULT GetWin32Path(out BSTR pWin32Path) mut => VT.GetWin32Path(ref this, out pWin32Path);
			public HRESULT GetWin64Path(out BSTR pWin64Path) mut => VT.GetWin64Path(ref this, out pWin64Path);
			public HRESULT GetDisplayName(out BSTR pDisplayName) mut => VT.GetDisplayName(ref this, out pDisplayName);
			public HRESULT ComGetFlags(out uint32 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
			public HRESULT GetHelpDir(out BSTR pHelpDir) mut => VT.GetHelpDir(ref this, out pHelpDir);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out Guid pGuid) GetGuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out BSTR pVersion) GetVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out uint32 pLcid) GetLcid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out BSTR pWin32Path) GetWin32Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out BSTR pWin64Path) GetWin64Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out BSTR pDisplayName) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out uint32 pFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeLibRegistration self, out BSTR pHelpDir) GetHelpDir;
			}
		}
		[CRepr]
		public struct IEnumConnections : IUnknown
		{
			public const new Guid IID = .(0xb196b287, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cConnections, CONNECTDATA* rgcd, out uint32 pcFetched) mut => VT.Next(ref this, cConnections, rgcd, out pcFetched);
			public HRESULT Skip(uint32 cConnections) mut => VT.Skip(ref this, cConnections);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumConnections* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnections self, uint32 cConnections, CONNECTDATA* rgcd, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnections self, uint32 cConnections) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnections self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnections self, out IEnumConnections* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPoint : IUnknown
		{
			public const new Guid IID = .(0xb196b286, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionInterface(out Guid pIID) mut => VT.GetConnectionInterface(ref this, out pIID);
			public HRESULT GetConnectionPointContainer(out IConnectionPointContainer* ppCPC) mut => VT.GetConnectionPointContainer(ref this, out ppCPC);
			public HRESULT Advise(ref IUnknown pUnkSink, out uint32 pdwCookie) mut => VT.Advise(ref this, ref pUnkSink, out pdwCookie);
			public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
			public HRESULT EnumConnections(out IEnumConnections* ppEnum) mut => VT.EnumConnections(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPoint self, out Guid pIID) GetConnectionInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPoint self, out IConnectionPointContainer* ppCPC) GetConnectionPointContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPoint self, ref IUnknown pUnkSink, out uint32 pdwCookie) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPoint self, uint32 dwCookie) Unadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPoint self, out IEnumConnections* ppEnum) EnumConnections;
			}
		}
		[CRepr]
		public struct IEnumConnectionPoints : IUnknown
		{
			public const new Guid IID = .(0xb196b285, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cConnections, IConnectionPoint** ppCP, out uint32 pcFetched) mut => VT.Next(ref this, cConnections, ppCP, out pcFetched);
			public HRESULT Skip(uint32 cConnections) mut => VT.Skip(ref this, cConnections);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumConnectionPoints* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnectionPoints self, uint32 cConnections, IConnectionPoint** ppCP, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnectionPoints self, uint32 cConnections) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnectionPoints self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumConnectionPoints self, out IEnumConnectionPoints* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IConnectionPointContainer : IUnknown
		{
			public const new Guid IID = .(0xb196b284, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumConnectionPoints(out IEnumConnectionPoints* ppEnum) mut => VT.EnumConnectionPoints(ref this, out ppEnum);
			public HRESULT FindConnectionPoint(in Guid riid, out IConnectionPoint* ppCP) mut => VT.FindConnectionPoint(ref this, riid, out ppCP);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPointContainer self, out IEnumConnectionPoints* ppEnum) EnumConnectionPoints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionPointContainer self, in Guid riid, out IConnectionPoint* ppCP) FindConnectionPoint;
			}
		}
		[CRepr]
		public struct IPersistMemory : IPersist
		{
			public const new Guid IID = .(0xbd1ae5e0, 0xa6ae, 0x11ce, 0xbd, 0x37, 0x50, 0x42, 0x00, 0xc1, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut => VT.IsDirty(ref this);
			public HRESULT Load(void* pMem, uint32 cbSize) mut => VT.Load(ref this, pMem, cbSize);
			public HRESULT Save(void* pMem, BOOL fClearDirty, uint32 cbSize) mut => VT.Save(ref this, pMem, fClearDirty, cbSize);
			public HRESULT GetSizeMax(out uint32 pCbSize) mut => VT.GetSizeMax(ref this, out pCbSize);
			public HRESULT InitNew() mut => VT.InitNew(ref this);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMemory self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMemory self, void* pMem, uint32 cbSize) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMemory self, void* pMem, BOOL fClearDirty, uint32 cbSize) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMemory self, out uint32 pCbSize) GetSizeMax;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistMemory self) InitNew;
			}
		}
		[CRepr]
		public struct IPersistStreamInit : IPersist
		{
			public const new Guid IID = .(0x7fd52380, 0x4e07, 0x101b, 0xae, 0x2d, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut => VT.IsDirty(ref this);
			public HRESULT Load(ref IStream pStm) mut => VT.Load(ref this, ref pStm);
			public HRESULT Save(ref IStream pStm, BOOL fClearDirty) mut => VT.Save(ref this, ref pStm, fClearDirty);
			public HRESULT GetSizeMax(out ULARGE_INTEGER pCbSize) mut => VT.GetSizeMax(ref this, out pCbSize);
			public HRESULT InitNew() mut => VT.InitNew(ref this);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStreamInit self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStreamInit self, ref IStream pStm) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStreamInit self, ref IStream pStm, BOOL fClearDirty) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStreamInit self, out ULARGE_INTEGER pCbSize) GetSizeMax;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStreamInit self) InitNew;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoBuildVersion();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitialize(void* pvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterMallocSpy(ref IMallocSpy pMallocSpy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeMallocSpy();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterInitializeSpy(ref IInitializeSpy pSpy, out ULARGE_INTEGER puliCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeInitializeSpy(ULARGE_INTEGER uliCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetSystemSecurityPermissions(COMSD comSDType, out SECURITY_DESCRIPTOR* ppSD);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE CoLoadLibrary(PWSTR lpszLibName, BOOL bAutoFree);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeLibrary(HINSTANCE hInst);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeAllLibraries();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoAllowSetForegroundWindow(ref IUnknown pUnk, void* lpvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DcomChannelSetHResult(void* pvReserved, uint32* pulReserved, HRESULT appsHR);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoIsOle1Class(in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromProgIDEx(PWSTR lpszProgID, out Guid lpclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoFileTimeToDosDateTime(ref FILETIME lpFileTime, out uint16 lpDosDate, out uint16 lpDosTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoDosDateTimeToFileTime(uint16 nDosDate, uint16 nDosTime, out FILETIME lpFileTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoFileTimeNow(out FILETIME lpFileTime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterChannelHook(in Guid ExtensionUuid, ref IChannelHook pChannelHook);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoTreatAsClass(in Guid clsidOld, in Guid clsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataAdviseHolder(out IDataAdviseHolder* ppDAHolder);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDataCache(IUnknown* pUnkOuter, in Guid rclsid, in Guid iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInstall(ref IBindCtx pbc, uint32 dwFlags, ref uCLSSPEC pClassSpec, ref QUERYCONTEXT pQuery, PWSTR pszCodeBase);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BindMoniker(ref IMoniker pmk, uint32 grfOpt, in Guid iidResult, void** ppvResult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetObject(PWSTR pszName, BIND_OPTS* pBindOptions, in Guid riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MkParseDisplayName(ref IBindCtx pbc, PWSTR szUserName, out uint32 pchEaten, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerRelativePathTo(ref IMoniker pmkSrc, ref IMoniker pmkDest, out IMoniker* ppmkRelPath, BOOL dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MonikerCommonPrefixWith(ref IMoniker pmkThis, ref IMoniker pmkOther, out IMoniker* ppmkCommon);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateBindCtx(uint32 reserved, out IBindCtx* ppbc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateGenericComposite(IMoniker* pmkFirst, IMoniker* pmkRest, out IMoniker* ppmkComposite);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetClassFile(PWSTR szFilename, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateClassMoniker(in Guid rclsid, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateFileMoniker(PWSTR lpszPathName, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateItemMoniker(PWSTR lpszDelim, PWSTR lpszItem, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateAntiMoniker(out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePointerMoniker(IUnknown* punk, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateObjrefMoniker(IUnknown* punk, out IMoniker* ppmk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRunningObjectTable(uint32 reserved, out IRunningObjectTable* pprot);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdProgressIndicator(HWND hwndParent, PWSTR pszTitle, ref IBindStatusCallback pIbscCaller, out IBindStatusCallback* ppIbsc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetMalloc(uint32 dwMemContext, out IMalloc* ppMalloc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoUninitialize();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CoGetCurrentProcess();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitializeEx(void* pvReserved, COINIT dwCoInit);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCallerTID(out uint32 lpdwTID);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCurrentLogicalThreadId(out Guid pguid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetContextToken(out uint pToken);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetApartmentType(out APTTYPE pAptType, out APTTYPEQUALIFIER pAptQualifier);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoIncrementMTAUsage(out CO_MTA_USAGE_COOKIE pCookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDecrementMTAUsage(CO_MTA_USAGE_COOKIE Cookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoAllowUnmarshalerCLSID(in Guid clsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetObjectContext(in Guid riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetClassObject(in Guid rclsid, CLSCTX dwClsContext, void* pvReserved, in Guid riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterClassObject(in Guid rclsid, ref IUnknown pUnk, CLSCTX dwClsContext, uint32 flags, out uint32 lpdwRegister);
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
		public static extern HRESULT CoGetPSClsid(in Guid riid, out Guid pClsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterPSClsid(in Guid riid, in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterSurrogate(ref ISurrogate pSurrogate);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisconnectObject(ref IUnknown pUnk, uint32 dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoLockObjectExternal(ref IUnknown pUnk, BOOL fLock, BOOL fLastUnlockReleases);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CoIsHandlerConnected(ref IUnknown pUnk);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateFreeThreadedMarshaler(IUnknown* punkOuter, out IUnknown* ppunkMarshal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeUnusedLibraries();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoFreeUnusedLibrariesEx(uint32 dwUnloadDelay, uint32 dwReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDisconnectContext(uint32 dwTimeout);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInitializeSecurity(SECURITY_DESCRIPTOR* pSecDesc, int32 cAuthSvc, SOLE_AUTHENTICATION_SERVICE* asAuthSvc, void* pReserved1, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthList, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities, void* pReserved3);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCallContext(in Guid riid, void** ppInterface);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryProxyBlanket(ref IUnknown pProxy, uint32* pwAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pAuthInfo, uint32* pCapabilites);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSetProxyBlanket(ref IUnknown pProxy, uint32 dwAuthnSvc, uint32 dwAuthzSvc, PWSTR pServerPrincName, RPC_C_AUTHN_LEVEL dwAuthnLevel, RPC_C_IMP_LEVEL dwImpLevel, void* pAuthInfo, EOLE_AUTHENTICATION_CAPABILITIES dwCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCopyProxy(ref IUnknown pProxy, out IUnknown* ppCopy);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryClientBlanket(uint32* pAuthnSvc, uint32* pAuthzSvc, PWSTR* pServerPrincName, uint32* pAuthnLevel, uint32* pImpLevel, void** pPrivs, uint32* pCapabilities);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoImpersonateClient();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevertToSelf();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoQueryAuthenticationServices(out uint32 pcAuthSvc, out SOLE_AUTHENTICATION_SERVICE* asAuthSvc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoSwitchCallContext(IUnknown* pNewObject, out IUnknown* ppOldObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstance(in Guid rclsid, IUnknown* pUnkOuter, CLSCTX dwClsContext, in Guid riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceEx(in Guid Clsid, IUnknown* punkOuter, CLSCTX dwClsCtx, COSERVERINFO* pServerInfo, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateInstanceFromApp(in Guid Clsid, IUnknown* punkOuter, CLSCTX dwClsCtx, void* reserved, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterActivationFilter(ref IActivationFilter pActivationFilter);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetCancelObject(uint32 dwThreadId, in Guid iid, void** ppUnk);
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
		public static extern HRESULT StringFromCLSID(in Guid rclsid, out PWSTR lplpsz);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromString(PWSTR lpsz, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StringFromIID(in Guid rclsid, out PWSTR lplpsz);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IIDFromString(PWSTR lpsz, out Guid lpiid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProgIDFromCLSID(in Guid clsid, out PWSTR lplpszProgID);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CLSIDFromProgID(PWSTR lpszProgID, out Guid lpclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StringFromGUID2(in Guid rguid, char16* lpsz, int32 cchMax);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoCreateGuid(out Guid pguid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoWaitForMultipleHandles(uint32 dwFlags, uint32 dwTimeout, uint32 cHandles, HANDLE* pHandles, out uint32 lpdwindex);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoWaitForMultipleObjects(uint32 dwFlags, uint32 dwTimeout, uint32 cHandles, HANDLE* pHandles, out uint32 lpdwindex);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetTreatAsClass(in Guid clsidOld, out Guid pClsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoInvalidateRemoteMachineBindings(PWSTR pszMachineName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CoTaskMemAlloc(uint cb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* CoTaskMemRealloc(void* pv, uint cb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CoTaskMemFree(void* pv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRegisterDeviceCatalog(PWSTR deviceInstanceId, out CO_DEVICE_CATALOG_COOKIE cookie);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoRevokeDeviceCatalog(CO_DEVICE_CATALOG_COOKIE cookie);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUri(PWSTR pwzURI, URI_CREATE_FLAGS dwFlags, uint dwReserved, out IUri* ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriWithFragment(PWSTR pwzURI, PWSTR pwzFragment, uint32 dwFlags, uint dwReserved, out IUri* ppURI);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateUriFromMultiByteString(PSTR pszANSIInputUri, uint32 dwEncodingFlags, uint32 dwCodePage, uint32 dwCreateFlags, uint dwReserved, out IUri* ppUri);
		[Import("urlmon.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateIUriBuilder(IUri* pIUri, uint32 dwFlags, uint dwReserved, out IUriBuilder* ppIUriBuilder);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetErrorInfo(uint32 dwReserved, IErrorInfo* perrinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetErrorInfo(uint32 dwReserved, out IErrorInfo* pperrinfo);
	}
}
