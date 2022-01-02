using System;

// namespace NetworkManagement.NetShell
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NETSH_ERROR_BASE = 15000;
		public const uint32 ERROR_NO_ENTRIES = 15000;
		public const uint32 ERROR_INVALID_SYNTAX = 15001;
		public const uint32 ERROR_PROTOCOL_NOT_IN_TRANSPORT = 15002;
		public const uint32 ERROR_NO_CHANGE = 15003;
		public const uint32 ERROR_CMD_NOT_FOUND = 15004;
		public const uint32 ERROR_ENTRY_PT_NOT_FOUND = 15005;
		public const uint32 ERROR_DLL_LOAD_FAILED = 15006;
		public const uint32 ERROR_INIT_DISPLAY = 15007;
		public const uint32 ERROR_TAG_ALREADY_PRESENT = 15008;
		public const uint32 ERROR_INVALID_OPTION_TAG = 15009;
		public const uint32 ERROR_NO_TAG = 15010;
		public const uint32 ERROR_MISSING_OPTION = 15011;
		public const uint32 ERROR_TRANSPORT_NOT_PRESENT = 15012;
		public const uint32 ERROR_SHOW_USAGE = 15013;
		public const uint32 ERROR_INVALID_OPTION_VALUE = 15014;
		public const uint32 ERROR_OKAY = 15015;
		public const uint32 ERROR_CONTINUE_IN_PARENT_CONTEXT = 15016;
		public const uint32 ERROR_SUPPRESS_OUTPUT = 15017;
		public const uint32 ERROR_HELPER_ALREADY_REGISTERED = 15018;
		public const uint32 ERROR_CONTEXT_ALREADY_REGISTERED = 15019;
		public const uint32 ERROR_PARSING_FAILURE = 15020;
		public const uint32 NETSH_ERROR_END = 15019;
		public const uint32 MAX_NAME_LEN = 48;
		public const uint32 NETSH_VERSION_50 = 20480;
		public const uint32 NETSH_MAX_TOKEN_LENGTH = 64;
		public const uint32 NETSH_MAX_CMD_TOKEN_LENGTH = 128;
		public const uint32 DEFAULT_CONTEXT_PRIORITY = 100;
		
		// --- Enums ---
		
		public enum NS_CMD_FLAGS : int32
		{
			PRIVATE = 1,
			INTERACTIVE = 2,
			LOCAL = 8,
			ONLINE = 16,
			HIDDEN = 32,
			LIMIT_MASK = 65535,
			PRIORITY = -2147483648,
		}
		public enum NS_REQS : int32
		{
			ZERO = 0,
			PRESENT = 1,
			ALLOW_MULTIPLE = 2,
			ONE_OR_MORE = 3,
		}
		public enum NS_EVENTS : int32
		{
			LOOP = 65536,
			LAST_N = 1,
			LAST_SECS = 2,
			FROM_N = 4,
			FROM_START = 8,
		}
		public enum NS_MODE_CHANGE : int32
		{
			COMMIT = 0,
			UNCOMMIT = 1,
			FLUSH = 2,
			COMMIT_STATE = 3,
			SAVE = 4,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PGET_RESOURCE_STRING_FN(uint32 dwMsgID, PWSTR lpBuffer, uint32 nBufferMax);
		public function uint32 PNS_CONTEXT_COMMIT_FN(uint32 dwAction);
		public function uint32 PNS_CONTEXT_CONNECT_FN(PWSTR pwszMachine);
		public function uint32 PNS_CONTEXT_DUMP_FN(PWSTR pwszRouter, PWSTR* ppwcArguments, uint32 dwArgCount, void* pvData);
		public function uint32 PNS_DLL_STOP_FN(uint32 dwReserved);
		public function uint32 PNS_HELPER_START_FN(in Guid pguidParent, uint32 dwVersion);
		public function uint32 PNS_HELPER_STOP_FN(uint32 dwReserved);
		public function uint32 PFN_HANDLE_CMD(PWSTR pwszMachine, PWSTR* ppwcArguments, uint32 dwCurrentIndex, uint32 dwArgCount, uint32 dwFlags, void* pvData, out BOOL pbDone);
		public function BOOL PNS_OSVERSIONCHECK(uint32 CIMOSType, uint32 CIMOSProductSuite, PWSTR CIMOSVersion, PWSTR CIMOSBuildNumber, PWSTR CIMServicePackMajorVersion, PWSTR CIMServicePackMinorVersion, uint32 uiReserved, uint32 dwReserved);
		public function uint32 PNS_DLL_INIT_FN(uint32 dwNetshVersion, void* pReserved);
		
		// --- Structs ---
		
		[CRepr]
		public struct TOKEN_VALUE
		{
			public PWSTR pwszToken;
			public uint32 dwValue;
		}
		[CRepr]
		public struct NS_HELPER_ATTRIBUTES
		{
			public _Anonymous_e__Union Anonymous;
			public Guid guidHelper;
			public PNS_HELPER_START_FN pfnStart;
			public PNS_HELPER_STOP_FN pfnStop;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64 _ullAlign;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 dwVersion;
					public uint32 dwReserved;
				}
			}
		}
		[CRepr]
		public struct CMD_ENTRY
		{
			public PWSTR pwszCmdToken;
			public PFN_HANDLE_CMD pfnCmdHandler;
			public uint32 dwShortCmdHelpToken;
			public uint32 dwCmdHlpToken;
			public uint32 dwFlags;
			public PNS_OSVERSIONCHECK pOsVersionCheck;
		}
		[CRepr]
		public struct CMD_GROUP_ENTRY
		{
			public PWSTR pwszCmdGroupToken;
			public uint32 dwShortCmdHelpToken;
			public uint32 ulCmdGroupSize;
			public uint32 dwFlags;
			public CMD_ENTRY* pCmdGroup;
			public PNS_OSVERSIONCHECK pOsVersionCheck;
		}
		[CRepr]
		public struct NS_CONTEXT_ATTRIBUTES
		{
			public _Anonymous_e__Union Anonymous;
			public PWSTR pwszContext;
			public Guid guidHelper;
			public uint32 dwFlags;
			public uint32 ulPriority;
			public uint32 ulNumTopCmds;
			public CMD_ENTRY* pTopCmds;
			public uint32 ulNumGroups;
			public CMD_GROUP_ENTRY* pCmdGroups;
			public PNS_CONTEXT_COMMIT_FN pfnCommitFn;
			public PNS_CONTEXT_DUMP_FN pfnDumpFn;
			public PNS_CONTEXT_CONNECT_FN pfnConnectFn;
			public void* pReserved;
			public PNS_OSVERSIONCHECK pfnOsVersionCheck;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint64 _ullAlign;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 dwVersion;
					public uint32 dwReserved;
				}
			}
		}
		[CRepr]
		public struct TAG_TYPE
		{
			public PWSTR pwszTag;
			public uint32 dwRequired;
			public BOOL bPresent;
		}
		
		// --- Functions ---
		
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MatchEnumTag(HANDLE hModule, PWSTR pwcArg, uint32 dwNumArg, in TOKEN_VALUE pEnumTable, out uint32 pdwValue);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MatchToken(PWSTR pwszUserToken, PWSTR pwszCmdToken);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PreprocessCommand(HANDLE hModule, PWSTR* ppwcArguments, uint32 dwCurrentIndex, uint32 dwArgCount, TAG_TYPE* pttTags, uint32 dwTagCount, uint32 dwMinArgs, uint32 dwMaxArgs, uint32* pdwTagType);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrintError(HANDLE hModule, uint32 dwErrId);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrintMessageFromModule(HANDLE hModule, uint32 dwMsgId);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrintMessage(PWSTR pwszFormat);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterContext(in NS_CONTEXT_ATTRIBUTES pChildContext);
		[Import("netsh.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterHelper(in Guid pguidParentContext, in NS_HELPER_ATTRIBUTES pfnRegisterSubContext);
	}
}
