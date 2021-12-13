using System;

// namespace System.DistributedTransactionCoordinator
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 DTCINSTALL_E_CLIENT_ALREADY_INSTALLED = 384;
		public const int32 DTCINSTALL_E_SERVER_ALREADY_INSTALLED = 385;
		public const uint32 XA_SWITCH_F_DTC = 1;
		public const uint32 XA_FMTID_DTC = 4478019;
		public const uint32 XA_FMTID_DTC_VER1 = 21255235;
		public const uint32 XIDDATASIZE = 128;
		public const uint32 MAXGTRIDSIZE = 64;
		public const uint32 MAXBQUALSIZE = 64;
		public const uint32 RMNAMESZ = 32;
		public const uint32 MAXINFOSIZE = 256;
		public const int32 TMNOFLAGS = 0;
		public const int32 TMREGISTER = 1;
		public const int32 TMNOMIGRATE = 2;
		public const int32 TMUSEASYNC = 4;
		public const int32 TMASYNC = -2147483648;
		public const int32 TMONEPHASE = 1073741824;
		public const int32 TMFAIL = 536870912;
		public const int32 TMNOWAIT = 268435456;
		public const int32 TMRESUME = 134217728;
		public const int32 TMSUCCESS = 67108864;
		public const int32 TMSUSPEND = 33554432;
		public const int32 TMSTARTRSCAN = 16777216;
		public const int32 TMENDRSCAN = 8388608;
		public const int32 TMMULTIPLE = 4194304;
		public const int32 TMJOIN = 2097152;
		public const int32 TMMIGRATE = 1048576;
		public const uint32 TM_JOIN = 2;
		public const uint32 TM_RESUME = 1;
		public const uint32 TM_OK = 0;
		public const int32 TMER_TMERR = -1;
		public const int32 TMER_INVAL = -2;
		public const int32 TMER_PROTO = -3;
		public const uint32 XA_RBBASE = 100;
		public const uint32 XA_RBROLLBACK = 100;
		public const uint32 XA_RBCOMMFAIL = 101;
		public const uint32 XA_RBDEADLOCK = 102;
		public const uint32 XA_RBINTEGRITY = 103;
		public const uint32 XA_RBOTHER = 104;
		public const uint32 XA_RBPROTO = 105;
		public const uint32 XA_RBTIMEOUT = 106;
		public const uint32 XA_RBTRANSIENT = 107;
		public const uint32 XA_RBEND = 107;
		public const uint32 XA_NOMIGRATE = 9;
		public const uint32 XA_HEURHAZ = 8;
		public const uint32 XA_HEURCOM = 7;
		public const uint32 XA_HEURRB = 6;
		public const uint32 XA_HEURMIX = 5;
		public const uint32 XA_RETRY = 4;
		public const uint32 XA_RDONLY = 3;
		public const uint32 XA_OK = 0;
		public const int32 XAER_ASYNC = -2;
		public const int32 XAER_RMERR = -3;
		public const int32 XAER_NOTA = -4;
		public const int32 XAER_INVAL = -5;
		public const int32 XAER_PROTO = -6;
		public const int32 XAER_RMFAIL = -7;
		public const int32 XAER_DUPID = -8;
		public const int32 XAER_OUTSIDE = -9;
		public const uint32 DTC_INSTALL_OVERWRITE_CLIENT = 1;
		public const uint32 DTC_INSTALL_OVERWRITE_SERVER = 2;
		public const uint32 OLE_TM_CONFIG_VERSION_1 = 1;
		public const uint32 OLE_TM_CONFIG_VERSION_2 = 2;
		public const uint32 OLE_TM_FLAG_NONE = 0;
		public const uint32 OLE_TM_FLAG_NODEMANDSTART = 1;
		public const uint32 OLE_TM_FLAG_NOAGILERECOVERY = 2;
		public const uint32 OLE_TM_FLAG_QUERY_SERVICE_LOCKSTATUS = 2147483648;
		public const uint32 OLE_TM_FLAG_INTERNAL_TO_TM = 1073741824;
		public const Guid CLSID_MSDtcTransactionManager = .(0x5b18ab61, 0x091d, 0x11d1, 0x97, 0xdf, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
		public const Guid CLSID_MSDtcTransaction = .(0x39f8d76b, 0x0928, 0x11d1, 0x97, 0xdf, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DTC_STATUS_ : int32
		{
			DTC_STATUS_UNKNOWN = 0,
			DTC_STATUS_STARTING = 1,
			DTC_STATUS_STARTED = 2,
			DTC_STATUS_PAUSING = 3,
			DTC_STATUS_PAUSED = 4,
			DTC_STATUS_CONTINUING = 5,
			DTC_STATUS_STOPPING = 6,
			DTC_STATUS_STOPPED = 7,
			DTC_STATUS_E_CANTCONTROL = 8,
			DTC_STATUS_FAILED = 9,
		}
		[AllowDuplicates]
		public enum TX_MISC_CONSTANTS : int32
		{
			MAX_TRAN_DESC = 40,
		}
		[AllowDuplicates]
		public enum ISOLATIONLEVEL : int32
		{
			ISOLATIONLEVEL_UNSPECIFIED = -1,
			ISOLATIONLEVEL_CHAOS = 16,
			ISOLATIONLEVEL_READUNCOMMITTED = 256,
			ISOLATIONLEVEL_BROWSE = 256,
			ISOLATIONLEVEL_CURSORSTABILITY = 4096,
			ISOLATIONLEVEL_READCOMMITTED = 4096,
			ISOLATIONLEVEL_REPEATABLEREAD = 65536,
			ISOLATIONLEVEL_SERIALIZABLE = 1048576,
			ISOLATIONLEVEL_ISOLATED = 1048576,
		}
		[AllowDuplicates]
		public enum ISOFLAG : int32
		{
			ISOFLAG_RETAIN_COMMIT_DC = 1,
			ISOFLAG_RETAIN_COMMIT = 2,
			ISOFLAG_RETAIN_COMMIT_NO = 3,
			ISOFLAG_RETAIN_ABORT_DC = 4,
			ISOFLAG_RETAIN_ABORT = 8,
			ISOFLAG_RETAIN_ABORT_NO = 12,
			ISOFLAG_RETAIN_DONTCARE = 5,
			ISOFLAG_RETAIN_BOTH = 10,
			ISOFLAG_RETAIN_NONE = 15,
			ISOFLAG_OPTIMISTIC = 16,
			ISOFLAG_READONLY = 32,
		}
		[AllowDuplicates]
		public enum XACTTC : int32
		{
			XACTTC_NONE = 0,
			XACTTC_SYNC_PHASEONE = 1,
			XACTTC_SYNC_PHASETWO = 2,
			XACTTC_SYNC = 2,
			XACTTC_ASYNC_PHASEONE = 4,
			XACTTC_ASYNC = 4,
		}
		[AllowDuplicates]
		public enum XACTRM : int32
		{
			XACTRM_OPTIMISTICLASTWINS = 1,
			XACTRM_NOREADONLYPREPARES = 2,
		}
		[AllowDuplicates]
		public enum XACTCONST : int32
		{
			XACTCONST_TIMEOUTINFINITE = 0,
		}
		[AllowDuplicates]
		public enum XACTHEURISTIC : int32
		{
			XACTHEURISTIC_ABORT = 1,
			XACTHEURISTIC_COMMIT = 2,
			XACTHEURISTIC_DAMAGE = 3,
			XACTHEURISTIC_DANGER = 4,
		}
		[AllowDuplicates]
		public enum XACTSTAT : int32
		{
			XACTSTAT_NONE = 0,
			XACTSTAT_OPENNORMAL = 1,
			XACTSTAT_OPENREFUSED = 2,
			XACTSTAT_PREPARING = 4,
			XACTSTAT_PREPARED = 8,
			XACTSTAT_PREPARERETAINING = 16,
			XACTSTAT_PREPARERETAINED = 32,
			XACTSTAT_COMMITTING = 64,
			XACTSTAT_COMMITRETAINING = 128,
			XACTSTAT_ABORTING = 256,
			XACTSTAT_ABORTED = 512,
			XACTSTAT_COMMITTED = 1024,
			XACTSTAT_HEURISTIC_ABORT = 2048,
			XACTSTAT_HEURISTIC_COMMIT = 4096,
			XACTSTAT_HEURISTIC_DAMAGE = 8192,
			XACTSTAT_HEURISTIC_DANGER = 16384,
			XACTSTAT_FORCED_ABORT = 32768,
			XACTSTAT_FORCED_COMMIT = 65536,
			XACTSTAT_INDOUBT = 131072,
			XACTSTAT_CLOSED = 262144,
			XACTSTAT_OPEN = 3,
			XACTSTAT_NOTPREPARED = 524227,
			XACTSTAT_ALL = 524287,
		}
		[AllowDuplicates]
		public enum AUTHENTICATION_LEVEL : int32
		{
			NO_AUTHENTICATION_REQUIRED = 0,
			INCOMING_AUTHENTICATION_REQUIRED = 1,
			MUTUAL_AUTHENTICATION_REQUIRED = 2,
		}
		[AllowDuplicates]
		public enum APPLICATIONTYPE : int32
		{
			LOCAL_APPLICATIONTYPE = 0,
			CLUSTERRESOURCE_APPLICATIONTYPE = 1,
		}
		[AllowDuplicates]
		public enum XACT_DTC_CONSTANTS : int32
		{
			XACT_E_CONNECTION_REQUEST_DENIED = -2147168000,
			XACT_E_TOOMANY_ENLISTMENTS = -2147167999,
			XACT_E_DUPLICATE_GUID = -2147167998,
			XACT_E_NOTSINGLEPHASE = -2147167997,
			XACT_E_RECOVERYALREADYDONE = -2147167996,
			XACT_E_PROTOCOL = -2147167995,
			XACT_E_RM_FAILURE = -2147167994,
			XACT_E_RECOVERY_FAILED = -2147167993,
			XACT_E_LU_NOT_FOUND = -2147167992,
			XACT_E_DUPLICATE_LU = -2147167991,
			XACT_E_LU_NOT_CONNECTED = -2147167990,
			XACT_E_DUPLICATE_TRANSID = -2147167989,
			XACT_E_LU_BUSY = -2147167988,
			XACT_E_LU_NO_RECOVERY_PROCESS = -2147167987,
			XACT_E_LU_DOWN = -2147167986,
			XACT_E_LU_RECOVERING = -2147167985,
			XACT_E_LU_RECOVERY_MISMATCH = -2147167984,
			XACT_E_RM_UNAVAILABLE = -2147167983,
			XACT_E_LRMRECOVERYALREADYDONE = -2147167982,
			XACT_E_NOLASTRESOURCEINTERFACE = -2147167981,
			XACT_S_NONOTIFY = 315648,
			XACT_OK_NONOTIFY = 315649,
			dwUSER_MS_SQLSERVER = 65535,
		}
		[AllowDuplicates]
		public enum _DtcLu_LocalRecovery_Work : int32
		{
			DTCINITIATEDRECOVERYWORK_CHECKLUSTATUS = 1,
			DTCINITIATEDRECOVERYWORK_TRANS = 2,
			DTCINITIATEDRECOVERYWORK_TMDOWN = 3,
		}
		[AllowDuplicates]
		public enum _DtcLu_Xln : int32
		{
			DTCLUXLN_COLD = 1,
			DTCLUXLN_WARM = 2,
		}
		[AllowDuplicates]
		public enum _DtcLu_Xln_Confirmation : int32
		{
			DTCLUXLNCONFIRMATION_CONFIRM = 1,
			DTCLUXLNCONFIRMATION_LOGNAMEMISMATCH = 2,
			DTCLUXLNCONFIRMATION_COLDWARMMISMATCH = 3,
			DTCLUXLNCONFIRMATION_OBSOLETE = 4,
		}
		[AllowDuplicates]
		public enum _DtcLu_Xln_Response : int32
		{
			DTCLUXLNRESPONSE_OK_SENDOURXLNBACK = 1,
			DTCLUXLNRESPONSE_OK_SENDCONFIRMATION = 2,
			DTCLUXLNRESPONSE_LOGNAMEMISMATCH = 3,
			DTCLUXLNRESPONSE_COLDWARMMISMATCH = 4,
		}
		[AllowDuplicates]
		public enum _DtcLu_Xln_Error : int32
		{
			DTCLUXLNERROR_PROTOCOL = 1,
			DTCLUXLNERROR_LOGNAMEMISMATCH = 2,
			DTCLUXLNERROR_COLDWARMMISMATCH = 3,
		}
		[AllowDuplicates]
		public enum _DtcLu_CompareState : int32
		{
			DTCLUCOMPARESTATE_COMMITTED = 1,
			DTCLUCOMPARESTATE_HEURISTICCOMMITTED = 2,
			DTCLUCOMPARESTATE_HEURISTICMIXED = 3,
			DTCLUCOMPARESTATE_HEURISTICRESET = 4,
			DTCLUCOMPARESTATE_INDOUBT = 5,
			DTCLUCOMPARESTATE_RESET = 6,
		}
		[AllowDuplicates]
		public enum _DtcLu_CompareStates_Confirmation : int32
		{
			DTCLUCOMPARESTATESCONFIRMATION_CONFIRM = 1,
			DTCLUCOMPARESTATESCONFIRMATION_PROTOCOL = 2,
		}
		[AllowDuplicates]
		public enum _DtcLu_CompareStates_Error : int32
		{
			DTCLUCOMPARESTATESERROR_PROTOCOL = 1,
		}
		[AllowDuplicates]
		public enum _DtcLu_CompareStates_Response : int32
		{
			DTCLUCOMPARESTATESRESPONSE_OK = 1,
			DTCLUCOMPARESTATESRESPONSE_PROTOCOL = 2,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT DTC_GET_TRANSACTION_MANAGER(PSTR pszHost, PSTR pszTmName, Guid* rid, uint32 dwReserved1, uint16 wcbReserved2, void* pvReserved2, void** ppvObject);
		public function HRESULT DTC_GET_TRANSACTION_MANAGER_EX_A(PSTR i_pszHost, PSTR i_pszTmName, Guid* i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		public function HRESULT DTC_GET_TRANSACTION_MANAGER_EX_W(PWSTR i_pwszHost, PWSTR i_pwszTmName, Guid* i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		public function HRESULT DTC_INSTALL_CLIENT(int8* i_pszRemoteTmHostName, uint32 i_dwProtocol, uint32 i_dwOverwrite);
		public function int32 XA_OPEN_EPT(PSTR param0, int32 param1, int32 param2);
		public function int32 XA_CLOSE_EPT(PSTR param0, int32 param1, int32 param2);
		public function int32 XA_START_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_END_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_ROLLBACK_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_PREPARE_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_COMMIT_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_RECOVER_EPT(xid_t* param0, int32 param1, int32 param2, int32 param3);
		public function int32 XA_FORGET_EPT(xid_t* param0, int32 param1, int32 param2);
		public function int32 XA_COMPLETE_EPT(int32* param0, int32* param1, int32 param2, int32 param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct BOID
		{
			public uint8[16] rgb;
		}
		[CRepr]
		public struct XACTTRANSINFO
		{
			public BOID uow;
			public int32 isoLevel;
			public uint32 isoFlags;
			public uint32 grfTCSupported;
			public uint32 grfRMSupported;
			public uint32 grfTCSupportedRetaining;
			public uint32 grfRMSupportedRetaining;
		}
		[CRepr]
		public struct XACTSTATS
		{
			public uint32 cOpen;
			public uint32 cCommitting;
			public uint32 cCommitted;
			public uint32 cAborting;
			public uint32 cAborted;
			public uint32 cInDoubt;
			public uint32 cHeuristicDecision;
			public FILETIME timeTransactionsUp;
		}
		[CRepr]
		public struct XACTOPT
		{
			public uint32 ulTimeout;
			public uint8[40] szDescription;
		}
		[CRepr]
		public struct xid_t
		{
			public int32 formatID;
			public int32 gtrid_length;
			public int32 bqual_length;
			public CHAR[128] data;
		}
		[CRepr]
		public struct xa_switch_t
		{
			public CHAR[32] name;
			public int32 flags;
			public int32 version;
			public int xa_open_entry;
			public int xa_close_entry;
			public int xa_start_entry;
			public int xa_end_entry;
			public int xa_rollback_entry;
			public int xa_prepare_entry;
			public int xa_commit_entry;
			public int xa_recover_entry;
			public int xa_forget_entry;
			public int xa_complete_entry;
		}
		[CRepr]
		public struct OLE_TM_CONFIG_PARAMS_V1
		{
			public uint32 dwVersion;
			public uint32 dwcConcurrencyHint;
		}
		[CRepr]
		public struct OLE_TM_CONFIG_PARAMS_V2
		{
			public uint32 dwVersion;
			public uint32 dwcConcurrencyHint;
			public APPLICATIONTYPE applicationType;
			public Guid clusterResourceId;
		}
		[CRepr]
		public struct _ProxyConfigParams
		{
			public uint16 wcThreadsMax;
		}
		
		// --- COM Interfaces ---
		
		public struct ITransaction {}
		public struct ITransactionCloner {}
		public struct ITransaction2 {}
		public struct ITransactionDispenser {}
		public struct ITransactionOptions {}
		public struct ITransactionOutcomeEvents {}
		public struct ITmNodeName {}
		public struct IKernelTransaction {}
		public struct ITransactionResourceAsync {}
		public struct ITransactionLastResourceAsync {}
		public struct ITransactionResource {}
		public struct ITransactionEnlistmentAsync {}
		public struct ITransactionLastEnlistmentAsync {}
		public struct ITransactionExportFactory {}
		public struct ITransactionImportWhereabouts {}
		public struct ITransactionExport {}
		public struct ITransactionImport {}
		public struct ITipTransaction {}
		public struct ITipHelper {}
		public struct ITipPullSink {}
		public struct IDtcNetworkAccessConfig {}
		public struct IDtcNetworkAccessConfig2 {}
		public struct IDtcNetworkAccessConfig3 {}
		public struct IDtcToXaMapper {}
		public struct IDtcToXaHelperFactory {}
		public struct IDtcToXaHelper {}
		public struct IDtcToXaHelperSinglePipe {}
		public struct IXATransLookup {}
		public struct IXATransLookup2 {}
		public struct IResourceManagerSink {}
		public struct IResourceManagerAlt {}
		public struct ILastResourceManager {}
		public struct IResourceManager2 {}
		public struct IResourceManagerRejoinable {}
		public struct IXAConfig {}
		public struct IRMHelper {}
		public struct IXAObtainRMInfo {}
		public struct IResourceManagerFactory {}
		public struct IResourceManagerFactory2 {}
		public struct IPrepareInfo {}
		public struct IPrepareInfo2 {}
		public struct IGetDispenser {}
		public struct ITransactionVoterBallotAsync2 {}
		public struct ITransactionVoterNotifyAsync2 {}
		public struct ITransactionVoterFactory2 {}
		public struct ITransactionPhase0EnlistmentAsync {}
		public struct ITransactionPhase0NotifyAsync {}
		public struct ITransactionPhase0Factory {}
		public struct ITransactionTransmitter {}
		public struct ITransactionTransmitterFactory {}
		public struct ITransactionReceiver {}
		public struct ITransactionReceiverFactory {}
		public struct IDtcLuConfigure {}
		public struct IDtcLuRecovery {}
		public struct IDtcLuRecoveryFactory {}
		public struct IDtcLuRecoveryInitiatedByDtcTransWork {}
		public struct IDtcLuRecoveryInitiatedByDtcStatusWork {}
		public struct IDtcLuRecoveryInitiatedByDtc {}
		public struct IDtcLuRecoveryInitiatedByLuWork {}
		public struct IDtcLuRecoveryInitiatedByLu {}
		public struct IDtcLuRmEnlistment {}
		public struct IDtcLuRmEnlistmentSink {}
		public struct IDtcLuRmEnlistmentFactory {}
		public struct IDtcLuSubordinateDtc {}
		public struct IDtcLuSubordinateDtcSink {}
		public struct IDtcLuSubordinateDtcFactory {}
		
		// --- Functions ---
		
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DtcGetTransactionManager(PSTR i_pszHost, PSTR i_pszTmName, Guid* i_riid, uint32 i_dwReserved1, uint16 i_wcbReserved2, void* i_pvReserved2, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DtcGetTransactionManagerC(PSTR i_pszHost, PSTR i_pszTmName, Guid* i_riid, uint32 i_dwReserved1, uint16 i_wcbReserved2, void* i_pvReserved2, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DtcGetTransactionManagerExA(PSTR i_pszHost, PSTR i_pszTmName, Guid* i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		[Import("xolehlp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DtcGetTransactionManagerExW(PWSTR i_pwszHost, PWSTR i_pwszTmName, Guid* i_riid, uint32 i_grfOptions, void* i_pvConfigParams, void** o_ppvObject);
		
	}
}
