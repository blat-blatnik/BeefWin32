using System;

// namespace System.DataExchange
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WM_DDE_FIRST = 992;
		public const uint32 WM_DDE_INITIATE = 992;
		public const uint32 WM_DDE_TERMINATE = 993;
		public const uint32 WM_DDE_ADVISE = 994;
		public const uint32 WM_DDE_UNADVISE = 995;
		public const uint32 WM_DDE_ACK = 996;
		public const uint32 WM_DDE_DATA = 997;
		public const uint32 WM_DDE_REQUEST = 998;
		public const uint32 WM_DDE_POKE = 999;
		public const uint32 WM_DDE_EXECUTE = 1000;
		public const uint32 WM_DDE_LAST = 1000;
		public const uint32 CADV_LATEACK = 65535;
		public const uint32 DDE_FACK = 32768;
		public const uint32 DDE_FBUSY = 16384;
		public const uint32 DDE_FDEFERUPD = 16384;
		public const uint32 DDE_FACKREQ = 32768;
		public const uint32 DDE_FRELEASE = 8192;
		public const uint32 DDE_FREQUESTED = 4096;
		public const uint32 DDE_FAPPSTATUS = 255;
		public const uint32 DDE_FNOTPROCESSED = 0;
		public const uint32 MSGF_DDEMGR = 32769;
		public const int32 CP_WINANSI = 1004;
		public const int32 CP_WINUNICODE = 1200;
		public const int32 CP_WINNEUTRAL = 1200;
		public const uint32 XTYPF_NOBLOCK = 2;
		public const uint32 XTYPF_NODATA = 4;
		public const uint32 XTYPF_ACKREQ = 8;
		public const uint32 XCLASS_MASK = 64512;
		public const uint32 XCLASS_BOOL = 4096;
		public const uint32 XCLASS_DATA = 8192;
		public const uint32 XCLASS_FLAGS = 16384;
		public const uint32 XCLASS_NOTIFICATION = 32768;
		public const uint32 XTYP_MASK = 240;
		public const uint32 XTYP_SHIFT = 4;
		public const uint32 TIMEOUT_ASYNC = 4294967295;
		public const uint32 QID_SYNC = 4294967295;
		public const int32 APPCMD_MASK = 4080;
		public const int32 APPCLASS_MASK = 15;
		public const uint32 HDATA_APPOWNED = 1;
		public const uint32 DMLERR_NO_ERROR = 0;
		public const uint32 DMLERR_FIRST = 16384;
		public const uint32 DMLERR_ADVACKTIMEOUT = 16384;
		public const uint32 DMLERR_BUSY = 16385;
		public const uint32 DMLERR_DATAACKTIMEOUT = 16386;
		public const uint32 DMLERR_DLL_NOT_INITIALIZED = 16387;
		public const uint32 DMLERR_DLL_USAGE = 16388;
		public const uint32 DMLERR_EXECACKTIMEOUT = 16389;
		public const uint32 DMLERR_INVALIDPARAMETER = 16390;
		public const uint32 DMLERR_LOW_MEMORY = 16391;
		public const uint32 DMLERR_MEMORY_ERROR = 16392;
		public const uint32 DMLERR_NOTPROCESSED = 16393;
		public const uint32 DMLERR_NO_CONV_ESTABLISHED = 16394;
		public const uint32 DMLERR_POKEACKTIMEOUT = 16395;
		public const uint32 DMLERR_POSTMSG_FAILED = 16396;
		public const uint32 DMLERR_REENTRANCY = 16397;
		public const uint32 DMLERR_SERVER_DIED = 16398;
		public const uint32 DMLERR_SYS_ERROR = 16399;
		public const uint32 DMLERR_UNADVACKTIMEOUT = 16400;
		public const uint32 DMLERR_UNFOUND_QUEUE_ID = 16401;
		public const uint32 DMLERR_LAST = 16401;
		public const uint32 MH_CREATE = 1;
		public const uint32 MH_KEEP = 2;
		public const uint32 MH_DELETE = 3;
		public const uint32 MH_CLEANUP = 4;
		public const uint32 MAX_MONITORS = 4;
		public const uint32 MF_MASK = 4278190080;
		
		// --- Typedefs ---
		
		public typealias HSZ = int;
		public typealias HCONV = int;
		public typealias HCONVLIST = int;
		public typealias HDDEDATA = int;
		
		// --- Enums ---
		
		public enum DDE_ENABLE_CALLBACK_CMD : uint32
		{
			ENABLEALL = 0,
			ENABLEONE = 128,
			DISABLE = 8,
			QUERYWAITING = 2,
		}
		public enum DDE_INITIALIZE_COMMAND : uint32
		{
			APPCLASS_MONITOR = 1,
			APPCLASS_STANDARD = 0,
			APPCMD_CLIENTONLY = 16,
			APPCMD_FILTERINITS = 32,
			CBF_FAIL_ALLSVRXACTIONS = 258048,
			CBF_FAIL_ADVISES = 16384,
			CBF_FAIL_CONNECTIONS = 8192,
			CBF_FAIL_EXECUTES = 32768,
			CBF_FAIL_POKES = 65536,
			CBF_FAIL_REQUESTS = 131072,
			CBF_FAIL_SELFCONNECTIONS = 4096,
			CBF_SKIP_ALLNOTIFICATIONS = 3932160,
			CBF_SKIP_CONNECT_CONFIRMS = 262144,
			CBF_SKIP_DISCONNECTS = 2097152,
			CBF_SKIP_REGISTRATIONS = 524288,
			CBF_SKIP_UNREGISTRATIONS = 1048576,
			MF_CALLBACKS = 134217728,
			MF_CONV = 1073741824,
			MF_ERRORS = 268435456,
			MF_HSZ_INFO = 16777216,
			MF_LINKS = 536870912,
			MF_POSTMSGS = 67108864,
			MF_SENDMSGS = 33554432,
		}
		public enum DDE_NAME_SERVICE_CMD : uint32
		{
			REGISTER = 1,
			UNREGISTER = 2,
			FILTERON = 4,
			FILTEROFF = 8,
		}
		public enum DDE_CLIENT_TRANSACTION_TYPE : uint32
		{
			ADVSTART = 4144,
			ADVSTOP = 32832,
			EXECUTE = 16464,
			POKE = 16528,
			REQUEST = 8368,
			ADVDATA = 16400,
			ADVREQ = 8226,
			CONNECT = 4194,
			CONNECT_CONFIRM = 32882,
			DISCONNECT = 32962,
			MONITOR = 33010,
			REGISTER = 32930,
			UNREGISTER = 32978,
			WILDCONNECT = 8418,
			XACT_COMPLETE = 32896,
		}
		public enum CONVINFO_CONVERSATION_STATE : uint32
		{
			ADVACKRCVD = 13,
			ADVDATAACKRCVD = 16,
			ADVDATASENT = 15,
			ADVSENT = 11,
			CONNECTED = 2,
			DATARCVD = 6,
			EXECACKRCVD = 10,
			EXECSENT = 9,
			INCOMPLETE = 1,
			INIT1 = 3,
			INIT2 = 4,
			NULL = 0,
			POKEACKRCVD = 8,
			POKESENT = 7,
			REQSENT = 5,
			UNADVACKRCVD = 14,
			UNADVSENT = 12,
		}
		public enum CONVINFO_STATUS : uint32
		{
			ADVISE = 2,
			BLOCKED = 8,
			BLOCKNEXT = 128,
			CLIENT = 16,
			CONNECTED = 1,
			INLIST = 64,
			ISLOCAL = 4,
			ISSELF = 256,
			TERMINATED = 32,
		}
		
		// --- Function Pointers ---
		
		public function HDDEDATA PFNCALLBACK(uint32 wType, uint32 wFmt, HCONV hConv, HSZ hsz1, HSZ hsz2, HDDEDATA hData, uint dwData1, uint dwData2);
		
		// --- Structs ---
		
		[CRepr]
		public struct DDEACK
		{
			public uint16 _bitfield;
		}
		[CRepr]
		public struct DDEADVISE
		{
			public uint16 _bitfield;
			public int16 cfFormat;
		}
		[CRepr]
		public struct DDEDATA
		{
			public uint16 _bitfield;
			public int16 cfFormat;
			public uint8[0] Value;
		}
		[CRepr]
		public struct DDEPOKE
		{
			public uint16 _bitfield;
			public int16 cfFormat;
			public uint8[0] Value;
		}
		[CRepr]
		public struct DDELN
		{
			public uint16 _bitfield;
			public int16 cfFormat;
		}
		[CRepr]
		public struct DDEUP
		{
			public uint16 _bitfield;
			public int16 cfFormat;
			public uint8[0] rgb;
		}
		[CRepr]
		public struct HSZPAIR
		{
			public HSZ hszSvc;
			public HSZ hszTopic;
		}
		[CRepr]
		public struct CONVCONTEXT
		{
			public uint32 cb;
			public uint32 wFlags;
			public uint32 wCountryID;
			public int32 iCodePage;
			public uint32 dwLangID;
			public uint32 dwSecurity;
			public SECURITY_QUALITY_OF_SERVICE qos;
		}
		[CRepr]
		public struct CONVINFO
		{
			public uint32 cb;
			public uint hUser;
			public HCONV hConvPartner;
			public HSZ hszSvcPartner;
			public HSZ hszServiceReq;
			public HSZ hszTopic;
			public HSZ hszItem;
			public uint32 wFmt;
			public DDE_CLIENT_TRANSACTION_TYPE wType;
			public CONVINFO_STATUS wStatus;
			public CONVINFO_CONVERSATION_STATE wConvst;
			public uint32 wLastError;
			public HCONVLIST hConvList;
			public CONVCONTEXT ConvCtxt;
			public HWND hwnd;
			public HWND hwndPartner;
		}
		[CRepr]
		public struct DDEML_MSG_HOOK_DATA
		{
			public uint uiLo;
			public uint uiHi;
			public uint32 cbData;
			public uint32[8] Data;
		}
		[CRepr]
		public struct MONMSGSTRUCT
		{
			public uint32 cb;
			public HWND hwndTo;
			public uint32 dwTime;
			public HANDLE hTask;
			public uint32 wMsg;
			public WPARAM wParam;
			public LPARAM lParam;
			public DDEML_MSG_HOOK_DATA dmhd;
		}
		[CRepr]
		public struct MONCBSTRUCT
		{
			public uint32 cb;
			public uint32 dwTime;
			public HANDLE hTask;
			public uint32 dwRet;
			public uint32 wType;
			public uint32 wFmt;
			public HCONV hConv;
			public HSZ hsz1;
			public HSZ hsz2;
			public HDDEDATA hData;
			public uint dwData1;
			public uint dwData2;
			public CONVCONTEXT cc;
			public uint32 cbData;
			public uint32[8] Data;
		}
		[CRepr]
		public struct MONHSZSTRUCTA
		{
			public uint32 cb;
			public BOOL fsAction;
			public uint32 dwTime;
			public HSZ hsz;
			public HANDLE hTask;
			public CHAR[0] str;
		}
		[CRepr]
		public struct MONHSZSTRUCTW
		{
			public uint32 cb;
			public BOOL fsAction;
			public uint32 dwTime;
			public HSZ hsz;
			public HANDLE hTask;
			public char16[0] str;
		}
		[CRepr]
		public struct MONERRSTRUCT
		{
			public uint32 cb;
			public uint32 wLastError;
			public uint32 dwTime;
			public HANDLE hTask;
		}
		[CRepr]
		public struct MONLINKSTRUCT
		{
			public uint32 cb;
			public uint32 dwTime;
			public HANDLE hTask;
			public BOOL fEstablished;
			public BOOL fNoData;
			public HSZ hszSvc;
			public HSZ hszTopic;
			public HSZ hszItem;
			public uint32 wFmt;
			public BOOL fServer;
			public HCONV hConvServer;
			public HCONV hConvClient;
		}
		[CRepr]
		public struct MONCONVSTRUCT
		{
			public uint32 cb;
			public BOOL fConnect;
			public uint32 dwTime;
			public HANDLE hTask;
			public HSZ hszSvc;
			public HSZ hszTopic;
			public HCONV hConvClient;
			public HCONV hConvServer;
		}
		[CRepr]
		public struct METAFILEPICT
		{
			public int32 mm;
			public int32 xExt;
			public int32 yExt;
			public HMETAFILE hMF;
		}
		[CRepr]
		public struct COPYDATASTRUCT
		{
			public uint dwData;
			public uint32 cbData;
			public void* lpData;
		}
		
		// --- Functions ---
		
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeSetQualityOfService(HWND hwndClient, in SECURITY_QUALITY_OF_SERVICE pqosNew, out SECURITY_QUALITY_OF_SERVICE pqosPrev);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImpersonateDdeClientWindow(HWND hWndClient, HWND hWndServer);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LPARAM PackDDElParam(uint32 msg, uint uiLo, uint uiHi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnpackDDElParam(uint32 msg, LPARAM lParam, out uint puiLo, out uint puiHi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeDDElParam(uint32 msg, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LPARAM ReuseDDElParam(LPARAM lParam, uint32 msgIn, uint32 msgOut, uint uiLo, uint uiHi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeInitializeA(out uint32 pidInst, PFNCALLBACK pfnCallback, DDE_INITIALIZE_COMMAND afCmd, uint32 ulRes);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeInitializeW(out uint32 pidInst, PFNCALLBACK pfnCallback, DDE_INITIALIZE_COMMAND afCmd, uint32 ulRes);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeUninitialize(uint32 idInst);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCONVLIST DdeConnectList(uint32 idInst, HSZ hszService, HSZ hszTopic, HCONVLIST hConvList, CONVCONTEXT* pCC);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCONV DdeQueryNextServer(HCONVLIST hConvList, HCONV hConvPrev);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeDisconnectList(HCONVLIST hConvList);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCONV DdeConnect(uint32 idInst, HSZ hszService, HSZ hszTopic, CONVCONTEXT* pCC);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeDisconnect(HCONV hConv);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCONV DdeReconnect(HCONV hConv);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeQueryConvInfo(HCONV hConv, uint32 idTransaction, out CONVINFO pConvInfo);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeSetUserHandle(HCONV hConv, uint32 id, uint hUser);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeAbandonTransaction(uint32 idInst, HCONV hConv, uint32 idTransaction);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdePostAdvise(uint32 idInst, HSZ hszTopic, HSZ hszItem);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeEnableCallback(uint32 idInst, HCONV hConv, DDE_ENABLE_CALLBACK_CMD wCmd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeImpersonateClient(HCONV hConv);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDDEDATA DdeNameService(uint32 idInst, HSZ hsz1, HSZ hsz2, DDE_NAME_SERVICE_CMD afCmd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDDEDATA DdeClientTransaction(uint8* pData, uint32 cbData, HCONV hConv, HSZ hszItem, uint32 wFmt, DDE_CLIENT_TRANSACTION_TYPE wType, uint32 dwTimeout, uint32* pdwResult);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDDEDATA DdeCreateDataHandle(uint32 idInst, uint8* pSrc, uint32 cb, uint32 cbOff, HSZ hszItem, uint32 wFmt, uint32 afCmd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDDEDATA DdeAddData(HDDEDATA hData, ref uint8 pSrc, uint32 cb, uint32 cbOff);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeGetData(HDDEDATA hData, uint8* pDst, uint32 cbMax, uint32 cbOff);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* DdeAccessData(HDDEDATA hData, uint32* pcbDataSize);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeUnaccessData(HDDEDATA hData);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeFreeDataHandle(HDDEDATA hData);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeGetLastError(uint32 idInst);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HSZ DdeCreateStringHandleA(uint32 idInst, PSTR psz, int32 iCodePage);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HSZ DdeCreateStringHandleW(uint32 idInst, PWSTR psz, int32 iCodePage);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeQueryStringA(uint32 idInst, HSZ hsz, uint8* psz, uint32 cchMax, int32 iCodePage);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DdeQueryStringW(uint32 idInst, HSZ hsz, char16* psz, uint32 cchMax, int32 iCodePage);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeFreeStringHandle(uint32 idInst, HSZ hsz);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DdeKeepStringHandle(uint32 idInst, HSZ hsz);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DdeCmpStringHandles(HSZ hsz1, HSZ hsz2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HENHMETAFILE SetWinMetaFileBits(uint32 nSize, in uint8 lpMeta16Data, HDC hdcRef, METAFILEPICT* lpMFP);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenClipboard(HWND hWndNewOwner);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseClipboard();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetClipboardSequenceNumber();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetClipboardOwner();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND SetClipboardViewer(HWND hWndNewViewer);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetClipboardViewer();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChangeClipboardChain(HWND hWndRemove, HWND hWndNewNext);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SetClipboardData(uint32 uFormat, HANDLE hMem);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GetClipboardData(uint32 uFormat);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterClipboardFormatA(PSTR lpszFormat);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterClipboardFormatW(PWSTR lpszFormat);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CountClipboardFormats();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumClipboardFormats(uint32 format);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetClipboardFormatNameA(uint32 format, uint8* lpszFormatName, int32 cchMaxCount);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetClipboardFormatNameW(uint32 format, char16* lpszFormatName, int32 cchMaxCount);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EmptyClipboard();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsClipboardFormatAvailable(uint32 format);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetPriorityClipboardFormat(uint32* paFormatPriorityList, int32 cFormats);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND GetOpenClipboardWindow();
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddClipboardFormatListener(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveClipboardFormatListener(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetUpdatedClipboardFormats(uint32* lpuiFormats, uint32 cFormats, out uint32 pcFormatsOut);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalDeleteAtom(uint16 nAtom);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitAtomTable(uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 DeleteAtom(uint16 nAtom);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalAddAtomA(PSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalAddAtomW(PWSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalAddAtomExA(PSTR lpString, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalAddAtomExW(PWSTR lpString, uint32 Flags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalFindAtomA(PSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GlobalFindAtomW(PWSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GlobalGetAtomNameA(uint16 nAtom, uint8* lpBuffer, int32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GlobalGetAtomNameW(uint16 nAtom, char16* lpBuffer, int32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 AddAtomA(PSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 AddAtomW(PWSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 FindAtomA(PSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 FindAtomW(PWSTR lpString);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAtomNameA(uint16 nAtom, uint8* lpBuffer, int32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAtomNameW(uint16 nAtom, char16* lpBuffer, int32 nSize);
	}
}
