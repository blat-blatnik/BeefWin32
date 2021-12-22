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
		
		[CRepr]
		public struct ITransaction : IUnknown
		{
			public const new Guid IID = .(0x0fb15084, 0xaf41, 0x11ce, 0xbd, 0x2b, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit(BOOL fRetaining, uint32 grfTC, uint32 grfRM) mut
			{
				return VT.Commit(&this, fRetaining, grfTC, grfRM);
			}
			public HRESULT Abort(BOID* pboidReason, BOOL fRetaining, BOOL fAsync) mut
			{
				return VT.Abort(&this, pboidReason, fRetaining, fAsync);
			}
			public HRESULT GetTransactionInfo(XACTTRANSINFO* pinfo) mut
			{
				return VT.GetTransactionInfo(&this, pinfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransaction *self, BOOL fRetaining, uint32 grfTC, uint32 grfRM) Commit;
				public new function HRESULT(ITransaction *self, BOID* pboidReason, BOOL fRetaining, BOOL fAsync) Abort;
				public new function HRESULT(ITransaction *self, XACTTRANSINFO* pinfo) GetTransactionInfo;
			}
		}
		[CRepr]
		public struct ITransactionCloner : ITransaction
		{
			public const new Guid IID = .(0x02656950, 0x2152, 0x11d0, 0x94, 0x4c, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CloneWithCommitDisabled(ITransaction** ppITransaction) mut
			{
				return VT.CloneWithCommitDisabled(&this, ppITransaction);
			}
			[CRepr]
			public struct VTable : ITransaction.VTable
			{
				public new function HRESULT(ITransactionCloner *self, ITransaction** ppITransaction) CloneWithCommitDisabled;
			}
		}
		[CRepr]
		public struct ITransaction2 : ITransactionCloner
		{
			public const new Guid IID = .(0x34021548, 0x0065, 0x11d3, 0xba, 0xc1, 0x00, 0xc0, 0x4f, 0x79, 0x7b, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransactionInfo2(XACTTRANSINFO* pinfo) mut
			{
				return VT.GetTransactionInfo2(&this, pinfo);
			}
			[CRepr]
			public struct VTable : ITransactionCloner.VTable
			{
				public new function HRESULT(ITransaction2 *self, XACTTRANSINFO* pinfo) GetTransactionInfo2;
			}
		}
		[CRepr]
		public struct ITransactionDispenser : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e1, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionsObject(ITransactionOptions** ppOptions) mut
			{
				return VT.GetOptionsObject(&this, ppOptions);
			}
			public HRESULT BeginTransaction(IUnknown* punkOuter, int32 isoLevel, uint32 isoFlags, ITransactionOptions* pOptions, ITransaction** ppTransaction) mut
			{
				return VT.BeginTransaction(&this, punkOuter, isoLevel, isoFlags, pOptions, ppTransaction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionDispenser *self, ITransactionOptions** ppOptions) GetOptionsObject;
				public new function HRESULT(ITransactionDispenser *self, IUnknown* punkOuter, int32 isoLevel, uint32 isoFlags, ITransactionOptions* pOptions, ITransaction** ppTransaction) BeginTransaction;
			}
		}
		[CRepr]
		public struct ITransactionOptions : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e0, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOptions(XACTOPT* pOptions) mut
			{
				return VT.SetOptions(&this, pOptions);
			}
			public HRESULT GetOptions(XACTOPT* pOptions) mut
			{
				return VT.GetOptions(&this, pOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionOptions *self, XACTOPT* pOptions) SetOptions;
				public new function HRESULT(ITransactionOptions *self, XACTOPT* pOptions) GetOptions;
			}
		}
		[CRepr]
		public struct ITransactionOutcomeEvents : IUnknown
		{
			public const new Guid IID = .(0x3a6ad9e2, 0x23b9, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Committed(BOOL fRetaining, BOID* pNewUOW, HRESULT hr) mut
			{
				return VT.Committed(&this, fRetaining, pNewUOW, hr);
			}
			public HRESULT Aborted(BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW, HRESULT hr) mut
			{
				return VT.Aborted(&this, pboidReason, fRetaining, pNewUOW, hr);
			}
			public HRESULT HeuristicDecision(uint32 dwDecision, BOID* pboidReason, HRESULT hr) mut
			{
				return VT.HeuristicDecision(&this, dwDecision, pboidReason, hr);
			}
			public HRESULT Indoubt() mut
			{
				return VT.Indoubt(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionOutcomeEvents *self, BOOL fRetaining, BOID* pNewUOW, HRESULT hr) Committed;
				public new function HRESULT(ITransactionOutcomeEvents *self, BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW, HRESULT hr) Aborted;
				public new function HRESULT(ITransactionOutcomeEvents *self, uint32 dwDecision, BOID* pboidReason, HRESULT hr) HeuristicDecision;
				public new function HRESULT(ITransactionOutcomeEvents *self) Indoubt;
			}
		}
		[CRepr]
		public struct ITmNodeName : IUnknown
		{
			public const new Guid IID = .(0x30274f88, 0x6ee4, 0x474e, 0x9b, 0x95, 0x78, 0x07, 0xbc, 0x9e, 0xf8, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNodeNameSize(uint32* pcbNodeNameSize) mut
			{
				return VT.GetNodeNameSize(&this, pcbNodeNameSize);
			}
			public HRESULT GetNodeName(uint32 cbNodeNameBufferSize, PWSTR pNodeNameBuffer) mut
			{
				return VT.GetNodeName(&this, cbNodeNameBufferSize, pNodeNameBuffer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITmNodeName *self, uint32* pcbNodeNameSize) GetNodeNameSize;
				public new function HRESULT(ITmNodeName *self, uint32 cbNodeNameBufferSize, PWSTR pNodeNameBuffer) GetNodeName;
			}
		}
		[CRepr]
		public struct IKernelTransaction : IUnknown
		{
			public const new Guid IID = .(0x79427a2b, 0xf895, 0x40e0, 0xbe, 0x79, 0xb5, 0x7d, 0xc8, 0x2e, 0xd2, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHandle(HANDLE* pHandle) mut
			{
				return VT.GetHandle(&this, pHandle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IKernelTransaction *self, HANDLE* pHandle) GetHandle;
			}
		}
		[CRepr]
		public struct ITransactionResourceAsync : IUnknown
		{
			public const new Guid IID = .(0x69e971f0, 0x23ce, 0x11cf, 0xad, 0x60, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareRequest(BOOL fRetaining, uint32 grfRM, BOOL fWantMoniker, BOOL fSinglePhase) mut
			{
				return VT.PrepareRequest(&this, fRetaining, grfRM, fWantMoniker, fSinglePhase);
			}
			public HRESULT CommitRequest(uint32 grfRM, BOID* pNewUOW) mut
			{
				return VT.CommitRequest(&this, grfRM, pNewUOW);
			}
			public HRESULT AbortRequest(BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW) mut
			{
				return VT.AbortRequest(&this, pboidReason, fRetaining, pNewUOW);
			}
			public HRESULT TMDown() mut
			{
				return VT.TMDown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionResourceAsync *self, BOOL fRetaining, uint32 grfRM, BOOL fWantMoniker, BOOL fSinglePhase) PrepareRequest;
				public new function HRESULT(ITransactionResourceAsync *self, uint32 grfRM, BOID* pNewUOW) CommitRequest;
				public new function HRESULT(ITransactionResourceAsync *self, BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW) AbortRequest;
				public new function HRESULT(ITransactionResourceAsync *self) TMDown;
			}
		}
		[CRepr]
		public struct ITransactionLastResourceAsync : IUnknown
		{
			public const new Guid IID = .(0xc82bd532, 0x5b30, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DelegateCommit(uint32 grfRM) mut
			{
				return VT.DelegateCommit(&this, grfRM);
			}
			public HRESULT ForgetRequest(BOID* pNewUOW) mut
			{
				return VT.ForgetRequest(&this, pNewUOW);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionLastResourceAsync *self, uint32 grfRM) DelegateCommit;
				public new function HRESULT(ITransactionLastResourceAsync *self, BOID* pNewUOW) ForgetRequest;
			}
		}
		[CRepr]
		public struct ITransactionResource : IUnknown
		{
			public const new Guid IID = .(0xee5ff7b3, 0x4572, 0x11d0, 0x94, 0x52, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareRequest(BOOL fRetaining, uint32 grfRM, BOOL fWantMoniker, BOOL fSinglePhase) mut
			{
				return VT.PrepareRequest(&this, fRetaining, grfRM, fWantMoniker, fSinglePhase);
			}
			public HRESULT CommitRequest(uint32 grfRM, BOID* pNewUOW) mut
			{
				return VT.CommitRequest(&this, grfRM, pNewUOW);
			}
			public HRESULT AbortRequest(BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW) mut
			{
				return VT.AbortRequest(&this, pboidReason, fRetaining, pNewUOW);
			}
			public HRESULT TMDown() mut
			{
				return VT.TMDown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionResource *self, BOOL fRetaining, uint32 grfRM, BOOL fWantMoniker, BOOL fSinglePhase) PrepareRequest;
				public new function HRESULT(ITransactionResource *self, uint32 grfRM, BOID* pNewUOW) CommitRequest;
				public new function HRESULT(ITransactionResource *self, BOID* pboidReason, BOOL fRetaining, BOID* pNewUOW) AbortRequest;
				public new function HRESULT(ITransactionResource *self) TMDown;
			}
		}
		[CRepr]
		public struct ITransactionEnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0x0fb15081, 0xaf41, 0x11ce, 0xbd, 0x2b, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareRequestDone(HRESULT hr, IMoniker* pmk, BOID* pboidReason) mut
			{
				return VT.PrepareRequestDone(&this, hr, pmk, pboidReason);
			}
			public HRESULT CommitRequestDone(HRESULT hr) mut
			{
				return VT.CommitRequestDone(&this, hr);
			}
			public HRESULT AbortRequestDone(HRESULT hr) mut
			{
				return VT.AbortRequestDone(&this, hr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionEnlistmentAsync *self, HRESULT hr, IMoniker* pmk, BOID* pboidReason) PrepareRequestDone;
				public new function HRESULT(ITransactionEnlistmentAsync *self, HRESULT hr) CommitRequestDone;
				public new function HRESULT(ITransactionEnlistmentAsync *self, HRESULT hr) AbortRequestDone;
			}
		}
		[CRepr]
		public struct ITransactionLastEnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0xc82bd533, 0x5b30, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TransactionOutcome(XACTSTAT XactStat, BOID* pboidReason) mut
			{
				return VT.TransactionOutcome(&this, XactStat, pboidReason);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionLastEnlistmentAsync *self, XACTSTAT XactStat, BOID* pboidReason) TransactionOutcome;
			}
		}
		[CRepr]
		public struct ITransactionExportFactory : IUnknown
		{
			public const new Guid IID = .(0xe1cf9b53, 0x8745, 0x11ce, 0xa9, 0xba, 0x00, 0xaa, 0x00, 0x6c, 0x37, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRemoteClassId(Guid* pclsid) mut
			{
				return VT.GetRemoteClassId(&this, pclsid);
			}
			public HRESULT Create(uint32 cbWhereabouts, uint8* rgbWhereabouts, ITransactionExport** ppExport) mut
			{
				return VT.Create(&this, cbWhereabouts, rgbWhereabouts, ppExport);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionExportFactory *self, Guid* pclsid) GetRemoteClassId;
				public new function HRESULT(ITransactionExportFactory *self, uint32 cbWhereabouts, uint8* rgbWhereabouts, ITransactionExport** ppExport) Create;
			}
		}
		[CRepr]
		public struct ITransactionImportWhereabouts : IUnknown
		{
			public const new Guid IID = .(0x0141fda4, 0x8fc0, 0x11ce, 0xbd, 0x18, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWhereaboutsSize(uint32* pcbWhereabouts) mut
			{
				return VT.GetWhereaboutsSize(&this, pcbWhereabouts);
			}
			public HRESULT GetWhereabouts(uint32 cbWhereabouts, uint8* rgbWhereabouts, uint32* pcbUsed) mut
			{
				return VT.GetWhereabouts(&this, cbWhereabouts, rgbWhereabouts, pcbUsed);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionImportWhereabouts *self, uint32* pcbWhereabouts) GetWhereaboutsSize;
				public new function HRESULT(ITransactionImportWhereabouts *self, uint32 cbWhereabouts, uint8* rgbWhereabouts, uint32* pcbUsed) GetWhereabouts;
			}
		}
		[CRepr]
		public struct ITransactionExport : IUnknown
		{
			public const new Guid IID = .(0x0141fda5, 0x8fc0, 0x11ce, 0xbd, 0x18, 0x20, 0x4c, 0x4f, 0x4f, 0x50, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Export(IUnknown* punkTransaction, uint32* pcbTransactionCookie) mut
			{
				return VT.Export(&this, punkTransaction, pcbTransactionCookie);
			}
			public HRESULT GetTransactionCookie(IUnknown* punkTransaction, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, uint32* pcbUsed) mut
			{
				return VT.GetTransactionCookie(&this, punkTransaction, cbTransactionCookie, rgbTransactionCookie, pcbUsed);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionExport *self, IUnknown* punkTransaction, uint32* pcbTransactionCookie) Export;
				public new function HRESULT(ITransactionExport *self, IUnknown* punkTransaction, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, uint32* pcbUsed) GetTransactionCookie;
			}
		}
		[CRepr]
		public struct ITransactionImport : IUnknown
		{
			public const new Guid IID = .(0xe1cf9b5a, 0x8745, 0x11ce, 0xa9, 0xba, 0x00, 0xaa, 0x00, 0x6c, 0x37, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Import(uint32 cbTransactionCookie, uint8* rgbTransactionCookie, Guid* piid, void** ppvTransaction) mut
			{
				return VT.Import(&this, cbTransactionCookie, rgbTransactionCookie, piid, ppvTransaction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionImport *self, uint32 cbTransactionCookie, uint8* rgbTransactionCookie, Guid* piid, void** ppvTransaction) Import;
			}
		}
		[CRepr]
		public struct ITipTransaction : IUnknown
		{
			public const new Guid IID = .(0x17cf72d0, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Push(uint8* i_pszRemoteTmUrl, PSTR* o_ppszRemoteTxUrl) mut
			{
				return VT.Push(&this, i_pszRemoteTmUrl, o_ppszRemoteTxUrl);
			}
			public HRESULT GetTransactionUrl(PSTR* o_ppszLocalTxUrl) mut
			{
				return VT.GetTransactionUrl(&this, o_ppszLocalTxUrl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITipTransaction *self, uint8* i_pszRemoteTmUrl, PSTR* o_ppszRemoteTxUrl) Push;
				public new function HRESULT(ITipTransaction *self, PSTR* o_ppszLocalTxUrl) GetTransactionUrl;
			}
		}
		[CRepr]
		public struct ITipHelper : IUnknown
		{
			public const new Guid IID = .(0x17cf72d1, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Pull(uint8* i_pszTxUrl, ITransaction** o_ppITransaction) mut
			{
				return VT.Pull(&this, i_pszTxUrl, o_ppITransaction);
			}
			public HRESULT PullAsync(uint8* i_pszTxUrl, ITipPullSink* i_pTipPullSink, ITransaction** o_ppITransaction) mut
			{
				return VT.PullAsync(&this, i_pszTxUrl, i_pTipPullSink, o_ppITransaction);
			}
			public HRESULT GetLocalTmUrl(uint8** o_ppszLocalTmUrl) mut
			{
				return VT.GetLocalTmUrl(&this, o_ppszLocalTmUrl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITipHelper *self, uint8* i_pszTxUrl, ITransaction** o_ppITransaction) Pull;
				public new function HRESULT(ITipHelper *self, uint8* i_pszTxUrl, ITipPullSink* i_pTipPullSink, ITransaction** o_ppITransaction) PullAsync;
				public new function HRESULT(ITipHelper *self, uint8** o_ppszLocalTmUrl) GetLocalTmUrl;
			}
		}
		[CRepr]
		public struct ITipPullSink : IUnknown
		{
			public const new Guid IID = .(0x17cf72d2, 0xbac5, 0x11d1, 0xb1, 0xbf, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PullComplete(HRESULT i_hrPull) mut
			{
				return VT.PullComplete(&this, i_hrPull);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITipPullSink *self, HRESULT i_hrPull) PullComplete;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig : IUnknown
		{
			public const new Guid IID = .(0x9797c15d, 0xa428, 0x4291, 0x87, 0xb6, 0x09, 0x95, 0x03, 0x1a, 0x67, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAnyNetworkAccess(BOOL* pbAnyNetworkAccess) mut
			{
				return VT.GetAnyNetworkAccess(&this, pbAnyNetworkAccess);
			}
			public HRESULT SetAnyNetworkAccess(BOOL bAnyNetworkAccess) mut
			{
				return VT.SetAnyNetworkAccess(&this, bAnyNetworkAccess);
			}
			public HRESULT GetNetworkAdministrationAccess(BOOL* pbNetworkAdministrationAccess) mut
			{
				return VT.GetNetworkAdministrationAccess(&this, pbNetworkAdministrationAccess);
			}
			public HRESULT SetNetworkAdministrationAccess(BOOL bNetworkAdministrationAccess) mut
			{
				return VT.SetNetworkAdministrationAccess(&this, bNetworkAdministrationAccess);
			}
			public HRESULT GetNetworkTransactionAccess(BOOL* pbNetworkTransactionAccess) mut
			{
				return VT.GetNetworkTransactionAccess(&this, pbNetworkTransactionAccess);
			}
			public HRESULT SetNetworkTransactionAccess(BOOL bNetworkTransactionAccess) mut
			{
				return VT.SetNetworkTransactionAccess(&this, bNetworkTransactionAccess);
			}
			public HRESULT GetNetworkClientAccess(BOOL* pbNetworkClientAccess) mut
			{
				return VT.GetNetworkClientAccess(&this, pbNetworkClientAccess);
			}
			public HRESULT SetNetworkClientAccess(BOOL bNetworkClientAccess) mut
			{
				return VT.SetNetworkClientAccess(&this, bNetworkClientAccess);
			}
			public HRESULT GetNetworkTIPAccess(BOOL* pbNetworkTIPAccess) mut
			{
				return VT.GetNetworkTIPAccess(&this, pbNetworkTIPAccess);
			}
			public HRESULT SetNetworkTIPAccess(BOOL bNetworkTIPAccess) mut
			{
				return VT.SetNetworkTIPAccess(&this, bNetworkTIPAccess);
			}
			public HRESULT GetXAAccess(BOOL* pbXAAccess) mut
			{
				return VT.GetXAAccess(&this, pbXAAccess);
			}
			public HRESULT SetXAAccess(BOOL bXAAccess) mut
			{
				return VT.SetXAAccess(&this, bXAAccess);
			}
			public HRESULT RestartDtcService() mut
			{
				return VT.RestartDtcService(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbAnyNetworkAccess) GetAnyNetworkAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bAnyNetworkAccess) SetAnyNetworkAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbNetworkAdministrationAccess) GetNetworkAdministrationAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bNetworkAdministrationAccess) SetNetworkAdministrationAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbNetworkTransactionAccess) GetNetworkTransactionAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bNetworkTransactionAccess) SetNetworkTransactionAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbNetworkClientAccess) GetNetworkClientAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bNetworkClientAccess) SetNetworkClientAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbNetworkTIPAccess) GetNetworkTIPAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bNetworkTIPAccess) SetNetworkTIPAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL* pbXAAccess) GetXAAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self, BOOL bXAAccess) SetXAAccess;
				public new function HRESULT(IDtcNetworkAccessConfig *self) RestartDtcService;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig2 : IDtcNetworkAccessConfig
		{
			public const new Guid IID = .(0xa7aa013b, 0xeb7d, 0x4f42, 0xb4, 0x1c, 0xb2, 0xde, 0xc0, 0x9a, 0xe0, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetworkInboundAccess(BOOL* pbInbound) mut
			{
				return VT.GetNetworkInboundAccess(&this, pbInbound);
			}
			public HRESULT GetNetworkOutboundAccess(BOOL* pbOutbound) mut
			{
				return VT.GetNetworkOutboundAccess(&this, pbOutbound);
			}
			public HRESULT SetNetworkInboundAccess(BOOL bInbound) mut
			{
				return VT.SetNetworkInboundAccess(&this, bInbound);
			}
			public HRESULT SetNetworkOutboundAccess(BOOL bOutbound) mut
			{
				return VT.SetNetworkOutboundAccess(&this, bOutbound);
			}
			public HRESULT GetAuthenticationLevel(AUTHENTICATION_LEVEL* pAuthLevel) mut
			{
				return VT.GetAuthenticationLevel(&this, pAuthLevel);
			}
			public HRESULT SetAuthenticationLevel(AUTHENTICATION_LEVEL AuthLevel) mut
			{
				return VT.SetAuthenticationLevel(&this, AuthLevel);
			}
			[CRepr]
			public struct VTable : IDtcNetworkAccessConfig.VTable
			{
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, BOOL* pbInbound) GetNetworkInboundAccess;
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, BOOL* pbOutbound) GetNetworkOutboundAccess;
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, BOOL bInbound) SetNetworkInboundAccess;
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, BOOL bOutbound) SetNetworkOutboundAccess;
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, AUTHENTICATION_LEVEL* pAuthLevel) GetAuthenticationLevel;
				public new function HRESULT(IDtcNetworkAccessConfig2 *self, AUTHENTICATION_LEVEL AuthLevel) SetAuthenticationLevel;
			}
		}
		[CRepr]
		public struct IDtcNetworkAccessConfig3 : IDtcNetworkAccessConfig2
		{
			public const new Guid IID = .(0x76e4b4f3, 0x2ca5, 0x466b, 0x89, 0xd5, 0xfd, 0x21, 0x8e, 0xe7, 0x5b, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLUAccess(BOOL* pbLUAccess) mut
			{
				return VT.GetLUAccess(&this, pbLUAccess);
			}
			public HRESULT SetLUAccess(BOOL bLUAccess) mut
			{
				return VT.SetLUAccess(&this, bLUAccess);
			}
			[CRepr]
			public struct VTable : IDtcNetworkAccessConfig2.VTable
			{
				public new function HRESULT(IDtcNetworkAccessConfig3 *self, BOOL* pbLUAccess) GetLUAccess;
				public new function HRESULT(IDtcNetworkAccessConfig3 *self, BOOL bLUAccess) SetLUAccess;
			}
		}
		[CRepr]
		public struct IDtcToXaMapper : IUnknown
		{
			public const new Guid IID = .(0x64ffabe0, 0x7ce9, 0x11d0, 0x8c, 0xe6, 0x00, 0xc0, 0x4f, 0xdc, 0x87, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestNewResourceManager(PSTR pszDSN, PSTR pszClientDllName, uint32* pdwRMCookie) mut
			{
				return VT.RequestNewResourceManager(&this, pszDSN, pszClientDllName, pdwRMCookie);
			}
			public HRESULT TranslateTridToXid(uint32* pdwITransaction, uint32 dwRMCookie, xid_t* pXid) mut
			{
				return VT.TranslateTridToXid(&this, pdwITransaction, dwRMCookie, pXid);
			}
			public HRESULT EnlistResourceManager(uint32 dwRMCookie, uint32* pdwITransaction) mut
			{
				return VT.EnlistResourceManager(&this, dwRMCookie, pdwITransaction);
			}
			public HRESULT ReleaseResourceManager(uint32 dwRMCookie) mut
			{
				return VT.ReleaseResourceManager(&this, dwRMCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcToXaMapper *self, PSTR pszDSN, PSTR pszClientDllName, uint32* pdwRMCookie) RequestNewResourceManager;
				public new function HRESULT(IDtcToXaMapper *self, uint32* pdwITransaction, uint32 dwRMCookie, xid_t* pXid) TranslateTridToXid;
				public new function HRESULT(IDtcToXaMapper *self, uint32 dwRMCookie, uint32* pdwITransaction) EnlistResourceManager;
				public new function HRESULT(IDtcToXaMapper *self, uint32 dwRMCookie) ReleaseResourceManager;
			}
		}
		[CRepr]
		public struct IDtcToXaHelperFactory : IUnknown
		{
			public const new Guid IID = .(0xa9861610, 0x304a, 0x11d1, 0x98, 0x13, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(PSTR pszDSN, PSTR pszClientDllName, Guid* pguidRm, IDtcToXaHelper** ppXaHelper) mut
			{
				return VT.Create(&this, pszDSN, pszClientDllName, pguidRm, ppXaHelper);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcToXaHelperFactory *self, PSTR pszDSN, PSTR pszClientDllName, Guid* pguidRm, IDtcToXaHelper** ppXaHelper) Create;
			}
		}
		[CRepr]
		public struct IDtcToXaHelper : IUnknown
		{
			public const new Guid IID = .(0xa9861611, 0x304a, 0x11d1, 0x98, 0x13, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close(BOOL i_fDoRecovery) mut
			{
				return VT.Close(&this, i_fDoRecovery);
			}
			public HRESULT TranslateTridToXid(ITransaction* pITransaction, Guid* pguidBqual, xid_t* pXid) mut
			{
				return VT.TranslateTridToXid(&this, pITransaction, pguidBqual, pXid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcToXaHelper *self, BOOL i_fDoRecovery) Close;
				public new function HRESULT(IDtcToXaHelper *self, ITransaction* pITransaction, Guid* pguidBqual, xid_t* pXid) TranslateTridToXid;
			}
		}
		[CRepr]
		public struct IDtcToXaHelperSinglePipe : IUnknown
		{
			public const new Guid IID = .(0x47ed4971, 0x53b3, 0x11d1, 0xbb, 0xb9, 0x00, 0xc0, 0x4f, 0xd6, 0x58, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT XARMCreate(PSTR pszDSN, PSTR pszClientDll, uint32* pdwRMCookie) mut
			{
				return VT.XARMCreate(&this, pszDSN, pszClientDll, pdwRMCookie);
			}
			public HRESULT ConvertTridToXID(uint32* pdwITrans, uint32 dwRMCookie, xid_t* pxid) mut
			{
				return VT.ConvertTridToXID(&this, pdwITrans, dwRMCookie, pxid);
			}
			public HRESULT EnlistWithRM(uint32 dwRMCookie, ITransaction* i_pITransaction, ITransactionResourceAsync* i_pITransRes, ITransactionEnlistmentAsync** o_ppITransEnslitment) mut
			{
				return VT.EnlistWithRM(&this, dwRMCookie, i_pITransaction, i_pITransRes, o_ppITransEnslitment);
			}
			public void ReleaseRMCookie(uint32 i_dwRMCookie, BOOL i_fNormal) mut
			{
				VT.ReleaseRMCookie(&this, i_dwRMCookie, i_fNormal);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcToXaHelperSinglePipe *self, PSTR pszDSN, PSTR pszClientDll, uint32* pdwRMCookie) XARMCreate;
				public new function HRESULT(IDtcToXaHelperSinglePipe *self, uint32* pdwITrans, uint32 dwRMCookie, xid_t* pxid) ConvertTridToXID;
				public new function HRESULT(IDtcToXaHelperSinglePipe *self, uint32 dwRMCookie, ITransaction* i_pITransaction, ITransactionResourceAsync* i_pITransRes, ITransactionEnlistmentAsync** o_ppITransEnslitment) EnlistWithRM;
				public new function void(IDtcToXaHelperSinglePipe *self, uint32 i_dwRMCookie, BOOL i_fNormal) ReleaseRMCookie;
			}
		}
		[CRepr]
		public struct IXATransLookup : IUnknown
		{
			public const new Guid IID = .(0xf3b1f131, 0xeeda, 0x11ce, 0xae, 0xd4, 0x00, 0xaa, 0x00, 0x51, 0xe2, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lookup(ITransaction** ppTransaction) mut
			{
				return VT.Lookup(&this, ppTransaction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXATransLookup *self, ITransaction** ppTransaction) Lookup;
			}
		}
		[CRepr]
		public struct IXATransLookup2 : IUnknown
		{
			public const new Guid IID = .(0xbf193c85, 0x0d1a, 0x4290, 0xb8, 0x8f, 0xd2, 0xcb, 0x88, 0x73, 0xd1, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lookup(xid_t* pXID, ITransaction** ppTransaction) mut
			{
				return VT.Lookup(&this, pXID, ppTransaction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXATransLookup2 *self, xid_t* pXID, ITransaction** ppTransaction) Lookup;
			}
		}
		[CRepr]
		public struct IResourceManagerSink : IUnknown
		{
			public const new Guid IID = .(0x0d563181, 0xdefb, 0x11ce, 0xae, 0xd1, 0x00, 0xaa, 0x00, 0x51, 0xe2, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TMDown() mut
			{
				return VT.TMDown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResourceManagerSink *self) TMDown;
			}
		}
		[CRepr]
		public struct IResourceManagerAlt : IUnknown
		{
			public const new Guid IID = .(0x13741d21, 0x87eb, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Enlist(ITransaction* pTransaction, ITransactionResourceAsync* pRes, BOID* pUOW, int32* pisoLevel, ITransactionEnlistmentAsync** ppEnlist) mut
			{
				return VT.Enlist(&this, pTransaction, pRes, pUOW, pisoLevel, ppEnlist);
			}
			public HRESULT Reenlist(uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, XACTSTAT* pXactStat) mut
			{
				return VT.Reenlist(&this, pPrepInfo, cbPrepInfo, lTimeout, pXactStat);
			}
			public HRESULT ReenlistmentComplete() mut
			{
				return VT.ReenlistmentComplete(&this);
			}
			public HRESULT GetDistributedTransactionManager(Guid* iid, void** ppvObject) mut
			{
				return VT.GetDistributedTransactionManager(&this, iid, ppvObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResourceManagerAlt *self, ITransaction* pTransaction, ITransactionResourceAsync* pRes, BOID* pUOW, int32* pisoLevel, ITransactionEnlistmentAsync** ppEnlist) Enlist;
				public new function HRESULT(IResourceManagerAlt *self, uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, XACTSTAT* pXactStat) Reenlist;
				public new function HRESULT(IResourceManagerAlt *self) ReenlistmentComplete;
				public new function HRESULT(IResourceManagerAlt *self, Guid* iid, void** ppvObject) GetDistributedTransactionManager;
			}
		}
		[CRepr]
		public struct ILastResourceManager : IUnknown
		{
			public const new Guid IID = .(0x4d964ad4, 0x5b33, 0x11d3, 0x8a, 0x91, 0x00, 0xc0, 0x4f, 0x79, 0xeb, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TransactionCommitted(uint8* pPrepInfo, uint32 cbPrepInfo) mut
			{
				return VT.TransactionCommitted(&this, pPrepInfo, cbPrepInfo);
			}
			public HRESULT RecoveryDone() mut
			{
				return VT.RecoveryDone(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILastResourceManager *self, uint8* pPrepInfo, uint32 cbPrepInfo) TransactionCommitted;
				public new function HRESULT(ILastResourceManager *self) RecoveryDone;
			}
		}
		[CRepr]
		public struct IResourceManager2 : IResourceManagerAlt
		{
			public const new Guid IID = .(0xd136c69a, 0xf749, 0x11d1, 0x8f, 0x47, 0x00, 0xc0, 0x4f, 0x8e, 0xe5, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Enlist2(ITransaction* pTransaction, ITransactionResourceAsync* pResAsync, BOID* pUOW, int32* pisoLevel, xid_t* pXid, ITransactionEnlistmentAsync** ppEnlist) mut
			{
				return VT.Enlist2(&this, pTransaction, pResAsync, pUOW, pisoLevel, pXid, ppEnlist);
			}
			public HRESULT Reenlist2(xid_t* pXid, uint32 dwTimeout, XACTSTAT* pXactStat) mut
			{
				return VT.Reenlist2(&this, pXid, dwTimeout, pXactStat);
			}
			[CRepr]
			public struct VTable : IResourceManagerAlt.VTable
			{
				public new function HRESULT(IResourceManager2 *self, ITransaction* pTransaction, ITransactionResourceAsync* pResAsync, BOID* pUOW, int32* pisoLevel, xid_t* pXid, ITransactionEnlistmentAsync** ppEnlist) Enlist2;
				public new function HRESULT(IResourceManager2 *self, xid_t* pXid, uint32 dwTimeout, XACTSTAT* pXactStat) Reenlist2;
			}
		}
		[CRepr]
		public struct IResourceManagerRejoinable : IResourceManager2
		{
			public const new Guid IID = .(0x6f6de620, 0xb5df, 0x4f3e, 0x9c, 0xfa, 0xc8, 0xae, 0xbd, 0x05, 0x17, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Rejoin(uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, XACTSTAT* pXactStat) mut
			{
				return VT.Rejoin(&this, pPrepInfo, cbPrepInfo, lTimeout, pXactStat);
			}
			[CRepr]
			public struct VTable : IResourceManager2.VTable
			{
				public new function HRESULT(IResourceManagerRejoinable *self, uint8* pPrepInfo, uint32 cbPrepInfo, uint32 lTimeout, XACTSTAT* pXactStat) Rejoin;
			}
		}
		[CRepr]
		public struct IXAConfig : IUnknown
		{
			public const new Guid IID = .(0xc8a6e3a1, 0x9a8c, 0x11cf, 0xa3, 0x08, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(Guid clsidHelperDll) mut
			{
				return VT.Initialize(&this, clsidHelperDll);
			}
			public HRESULT Terminate() mut
			{
				return VT.Terminate(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXAConfig *self, Guid clsidHelperDll) Initialize;
				public new function HRESULT(IXAConfig *self) Terminate;
			}
		}
		[CRepr]
		public struct IRMHelper : IUnknown
		{
			public const new Guid IID = .(0xe793f6d1, 0xf53d, 0x11cf, 0xa6, 0x0d, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RMCount(uint32 dwcTotalNumberOfRMs) mut
			{
				return VT.RMCount(&this, dwcTotalNumberOfRMs);
			}
			public HRESULT RMInfo(xa_switch_t* pXa_Switch, BOOL fCDeclCallingConv, PSTR pszOpenString, PSTR pszCloseString, Guid guidRMRecovery) mut
			{
				return VT.RMInfo(&this, pXa_Switch, fCDeclCallingConv, pszOpenString, pszCloseString, guidRMRecovery);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRMHelper *self, uint32 dwcTotalNumberOfRMs) RMCount;
				public new function HRESULT(IRMHelper *self, xa_switch_t* pXa_Switch, BOOL fCDeclCallingConv, PSTR pszOpenString, PSTR pszCloseString, Guid guidRMRecovery) RMInfo;
			}
		}
		[CRepr]
		public struct IXAObtainRMInfo : IUnknown
		{
			public const new Guid IID = .(0xe793f6d2, 0xf53d, 0x11cf, 0xa6, 0x0d, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ObtainRMInfo(IRMHelper* pIRMHelper) mut
			{
				return VT.ObtainRMInfo(&this, pIRMHelper);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXAObtainRMInfo *self, IRMHelper* pIRMHelper) ObtainRMInfo;
			}
		}
		[CRepr]
		public struct IResourceManagerFactory : IUnknown
		{
			public const new Guid IID = .(0x13741d20, 0x87eb, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(Guid* pguidRM, PSTR pszRMName, IResourceManagerSink* pIResMgrSink, IResourceManagerAlt** ppResMgr) mut
			{
				return VT.Create(&this, pguidRM, pszRMName, pIResMgrSink, ppResMgr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResourceManagerFactory *self, Guid* pguidRM, PSTR pszRMName, IResourceManagerSink* pIResMgrSink, IResourceManagerAlt** ppResMgr) Create;
			}
		}
		[CRepr]
		public struct IResourceManagerFactory2 : IResourceManagerFactory
		{
			public const new Guid IID = .(0x6b369c21, 0xfbd2, 0x11d1, 0x8f, 0x47, 0x00, 0xc0, 0x4f, 0x8e, 0xe5, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEx(Guid* pguidRM, PSTR pszRMName, IResourceManagerSink* pIResMgrSink, Guid* riidRequested, void** ppvResMgr) mut
			{
				return VT.CreateEx(&this, pguidRM, pszRMName, pIResMgrSink, riidRequested, ppvResMgr);
			}
			[CRepr]
			public struct VTable : IResourceManagerFactory.VTable
			{
				public new function HRESULT(IResourceManagerFactory2 *self, Guid* pguidRM, PSTR pszRMName, IResourceManagerSink* pIResMgrSink, Guid* riidRequested, void** ppvResMgr) CreateEx;
			}
		}
		[CRepr]
		public struct IPrepareInfo : IUnknown
		{
			public const new Guid IID = .(0x80c7bfd0, 0x87ee, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrepareInfoSize(uint32* pcbPrepInfo) mut
			{
				return VT.GetPrepareInfoSize(&this, pcbPrepInfo);
			}
			public HRESULT GetPrepareInfo(uint8* pPrepInfo) mut
			{
				return VT.GetPrepareInfo(&this, pPrepInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPrepareInfo *self, uint32* pcbPrepInfo) GetPrepareInfoSize;
				public new function HRESULT(IPrepareInfo *self, uint8* pPrepInfo) GetPrepareInfo;
			}
		}
		[CRepr]
		public struct IPrepareInfo2 : IUnknown
		{
			public const new Guid IID = .(0x5fab2547, 0x9779, 0x11d1, 0xb8, 0x86, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrepareInfoSize(uint32* pcbPrepInfo) mut
			{
				return VT.GetPrepareInfoSize(&this, pcbPrepInfo);
			}
			public HRESULT GetPrepareInfo(uint32 cbPrepareInfo, uint8* pPrepInfo) mut
			{
				return VT.GetPrepareInfo(&this, cbPrepareInfo, pPrepInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPrepareInfo2 *self, uint32* pcbPrepInfo) GetPrepareInfoSize;
				public new function HRESULT(IPrepareInfo2 *self, uint32 cbPrepareInfo, uint8* pPrepInfo) GetPrepareInfo;
			}
		}
		[CRepr]
		public struct IGetDispenser : IUnknown
		{
			public const new Guid IID = .(0xc23cc370, 0x87ef, 0x11ce, 0x80, 0x81, 0x00, 0x80, 0xc7, 0x58, 0x52, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDispenser(Guid* iid, void** ppvObject) mut
			{
				return VT.GetDispenser(&this, iid, ppvObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGetDispenser *self, Guid* iid, void** ppvObject) GetDispenser;
			}
		}
		[CRepr]
		public struct ITransactionVoterBallotAsync2 : IUnknown
		{
			public const new Guid IID = .(0x5433376c, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT VoteRequestDone(HRESULT hr, BOID* pboidReason) mut
			{
				return VT.VoteRequestDone(&this, hr, pboidReason);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionVoterBallotAsync2 *self, HRESULT hr, BOID* pboidReason) VoteRequestDone;
			}
		}
		[CRepr]
		public struct ITransactionVoterNotifyAsync2 : ITransactionOutcomeEvents
		{
			public const new Guid IID = .(0x5433376b, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT VoteRequest() mut
			{
				return VT.VoteRequest(&this);
			}
			[CRepr]
			public struct VTable : ITransactionOutcomeEvents.VTable
			{
				public new function HRESULT(ITransactionVoterNotifyAsync2 *self) VoteRequest;
			}
		}
		[CRepr]
		public struct ITransactionVoterFactory2 : IUnknown
		{
			public const new Guid IID = .(0x5433376a, 0x414d, 0x11d3, 0xb2, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0xf3, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(ITransaction* pTransaction, ITransactionVoterNotifyAsync2* pVoterNotify, ITransactionVoterBallotAsync2** ppVoterBallot) mut
			{
				return VT.Create(&this, pTransaction, pVoterNotify, ppVoterBallot);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionVoterFactory2 *self, ITransaction* pTransaction, ITransactionVoterNotifyAsync2* pVoterNotify, ITransactionVoterBallotAsync2** ppVoterBallot) Create;
			}
		}
		[CRepr]
		public struct ITransactionPhase0EnlistmentAsync : IUnknown
		{
			public const new Guid IID = .(0x82dc88e1, 0xa954, 0x11d1, 0x8f, 0x88, 0x00, 0x60, 0x08, 0x95, 0xe7, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Enable() mut
			{
				return VT.Enable(&this);
			}
			public HRESULT WaitForEnlistment() mut
			{
				return VT.WaitForEnlistment(&this);
			}
			public HRESULT Phase0Done() mut
			{
				return VT.Phase0Done(&this);
			}
			public HRESULT Unenlist() mut
			{
				return VT.Unenlist(&this);
			}
			public HRESULT GetTransaction(ITransaction** ppITransaction) mut
			{
				return VT.GetTransaction(&this, ppITransaction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionPhase0EnlistmentAsync *self) Enable;
				public new function HRESULT(ITransactionPhase0EnlistmentAsync *self) WaitForEnlistment;
				public new function HRESULT(ITransactionPhase0EnlistmentAsync *self) Phase0Done;
				public new function HRESULT(ITransactionPhase0EnlistmentAsync *self) Unenlist;
				public new function HRESULT(ITransactionPhase0EnlistmentAsync *self, ITransaction** ppITransaction) GetTransaction;
			}
		}
		[CRepr]
		public struct ITransactionPhase0NotifyAsync : IUnknown
		{
			public const new Guid IID = .(0xef081809, 0x0c76, 0x11d2, 0x87, 0xa6, 0x00, 0xc0, 0x4f, 0x99, 0x0f, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Phase0Request(BOOL fAbortingHint) mut
			{
				return VT.Phase0Request(&this, fAbortingHint);
			}
			public HRESULT EnlistCompleted(HRESULT status) mut
			{
				return VT.EnlistCompleted(&this, status);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionPhase0NotifyAsync *self, BOOL fAbortingHint) Phase0Request;
				public new function HRESULT(ITransactionPhase0NotifyAsync *self, HRESULT status) EnlistCompleted;
			}
		}
		[CRepr]
		public struct ITransactionPhase0Factory : IUnknown
		{
			public const new Guid IID = .(0x82dc88e0, 0xa954, 0x11d1, 0x8f, 0x88, 0x00, 0x60, 0x08, 0x95, 0xe7, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(ITransactionPhase0NotifyAsync* pPhase0Notify, ITransactionPhase0EnlistmentAsync** ppPhase0Enlistment) mut
			{
				return VT.Create(&this, pPhase0Notify, ppPhase0Enlistment);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionPhase0Factory *self, ITransactionPhase0NotifyAsync* pPhase0Notify, ITransactionPhase0EnlistmentAsync** ppPhase0Enlistment) Create;
			}
		}
		[CRepr]
		public struct ITransactionTransmitter : IUnknown
		{
			public const new Guid IID = .(0x59313e01, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Set(ITransaction* pTransaction) mut
			{
				return VT.Set(&this, pTransaction);
			}
			public HRESULT GetPropagationTokenSize(uint32* pcbToken) mut
			{
				return VT.GetPropagationTokenSize(&this, pcbToken);
			}
			public HRESULT MarshalPropagationToken(uint32 cbToken, uint8* rgbToken, uint32* pcbUsed) mut
			{
				return VT.MarshalPropagationToken(&this, cbToken, rgbToken, pcbUsed);
			}
			public HRESULT UnmarshalReturnToken(uint32 cbReturnToken, uint8* rgbReturnToken) mut
			{
				return VT.UnmarshalReturnToken(&this, cbReturnToken, rgbReturnToken);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionTransmitter *self, ITransaction* pTransaction) Set;
				public new function HRESULT(ITransactionTransmitter *self, uint32* pcbToken) GetPropagationTokenSize;
				public new function HRESULT(ITransactionTransmitter *self, uint32 cbToken, uint8* rgbToken, uint32* pcbUsed) MarshalPropagationToken;
				public new function HRESULT(ITransactionTransmitter *self, uint32 cbReturnToken, uint8* rgbReturnToken) UnmarshalReturnToken;
				public new function HRESULT(ITransactionTransmitter *self) Reset;
			}
		}
		[CRepr]
		public struct ITransactionTransmitterFactory : IUnknown
		{
			public const new Guid IID = .(0x59313e00, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(ITransactionTransmitter** ppTransmitter) mut
			{
				return VT.Create(&this, ppTransmitter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionTransmitterFactory *self, ITransactionTransmitter** ppTransmitter) Create;
			}
		}
		[CRepr]
		public struct ITransactionReceiver : IUnknown
		{
			public const new Guid IID = .(0x59313e03, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UnmarshalPropagationToken(uint32 cbToken, uint8* rgbToken, ITransaction** ppTransaction) mut
			{
				return VT.UnmarshalPropagationToken(&this, cbToken, rgbToken, ppTransaction);
			}
			public HRESULT GetReturnTokenSize(uint32* pcbReturnToken) mut
			{
				return VT.GetReturnTokenSize(&this, pcbReturnToken);
			}
			public HRESULT MarshalReturnToken(uint32 cbReturnToken, uint8* rgbReturnToken, uint32* pcbUsed) mut
			{
				return VT.MarshalReturnToken(&this, cbReturnToken, rgbReturnToken, pcbUsed);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionReceiver *self, uint32 cbToken, uint8* rgbToken, ITransaction** ppTransaction) UnmarshalPropagationToken;
				public new function HRESULT(ITransactionReceiver *self, uint32* pcbReturnToken) GetReturnTokenSize;
				public new function HRESULT(ITransactionReceiver *self, uint32 cbReturnToken, uint8* rgbReturnToken, uint32* pcbUsed) MarshalReturnToken;
				public new function HRESULT(ITransactionReceiver *self) Reset;
			}
		}
		[CRepr]
		public struct ITransactionReceiverFactory : IUnknown
		{
			public const new Guid IID = .(0x59313e02, 0xb36c, 0x11cf, 0xa5, 0x39, 0x00, 0xaa, 0x00, 0x68, 0x87, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(ITransactionReceiver** ppReceiver) mut
			{
				return VT.Create(&this, ppReceiver);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransactionReceiverFactory *self, ITransactionReceiver** ppReceiver) Create;
			}
		}
		[CRepr]
		public struct IDtcLuConfigure : IUnknown
		{
			public const new Guid IID = .(0x4131e760, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(uint8* pucLuPair, uint32 cbLuPair) mut
			{
				return VT.Add(&this, pucLuPair, cbLuPair);
			}
			public HRESULT Delete(uint8* pucLuPair, uint32 cbLuPair) mut
			{
				return VT.Delete(&this, pucLuPair, cbLuPair);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuConfigure *self, uint8* pucLuPair, uint32 cbLuPair) Add;
				public new function HRESULT(IDtcLuConfigure *self, uint8* pucLuPair, uint32 cbLuPair) Delete;
			}
		}
		[CRepr]
		public struct IDtcLuRecovery : IUnknown
		{
			public const new Guid IID = .(0xac2b8ad2, 0xd6f0, 0x11d0, 0xb3, 0x86, 0x00, 0xa0, 0xc9, 0x08, 0x33, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e762, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(uint8* pucLuPair, uint32 cbLuPair, IDtcLuRecovery** ppRecovery) mut
			{
				return VT.Create(&this, pucLuPair, cbLuPair, ppRecovery);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryFactory *self, uint8* pucLuPair, uint32 cbLuPair, IDtcLuRecovery** ppRecovery) Create;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtcTransWork : IUnknown
		{
			public const new Guid IID = .(0x4131e765, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLogNameSizes(uint32* pcbOurLogName, uint32* pcbRemoteLogName) mut
			{
				return VT.GetLogNameSizes(&this, pcbOurLogName, pcbRemoteLogName);
			}
			public HRESULT GetOurXln(_DtcLu_Xln* pXln, uint8* pOurLogName, uint8* pRemoteLogName, uint32* pdwProtocol) mut
			{
				return VT.GetOurXln(&this, pXln, pOurLogName, pRemoteLogName, pdwProtocol);
			}
			public HRESULT HandleConfirmationFromOurXln(_DtcLu_Xln_Confirmation Confirmation) mut
			{
				return VT.HandleConfirmationFromOurXln(&this, Confirmation);
			}
			public HRESULT HandleTheirXlnResponse(_DtcLu_Xln Xln, uint8* pRemoteLogName, uint32 cbRemoteLogName, uint32 dwProtocol, _DtcLu_Xln_Confirmation* pConfirmation) mut
			{
				return VT.HandleTheirXlnResponse(&this, Xln, pRemoteLogName, cbRemoteLogName, dwProtocol, pConfirmation);
			}
			public HRESULT HandleErrorFromOurXln(_DtcLu_Xln_Error Error) mut
			{
				return VT.HandleErrorFromOurXln(&this, Error);
			}
			public HRESULT CheckForCompareStates(BOOL* fCompareStates) mut
			{
				return VT.CheckForCompareStates(&this, fCompareStates);
			}
			public HRESULT GetOurTransIdSize(uint32* pcbOurTransId) mut
			{
				return VT.GetOurTransIdSize(&this, pcbOurTransId);
			}
			public HRESULT GetOurCompareStates(uint8* pOurTransId, _DtcLu_CompareState* pCompareState) mut
			{
				return VT.GetOurCompareStates(&this, pOurTransId, pCompareState);
			}
			public HRESULT HandleTheirCompareStatesResponse(_DtcLu_CompareState CompareState, _DtcLu_CompareStates_Confirmation* pConfirmation) mut
			{
				return VT.HandleTheirCompareStatesResponse(&this, CompareState, pConfirmation);
			}
			public HRESULT HandleErrorFromOurCompareStates(_DtcLu_CompareStates_Error Error) mut
			{
				return VT.HandleErrorFromOurCompareStates(&this, Error);
			}
			public HRESULT ConversationLost() mut
			{
				return VT.ConversationLost(&this);
			}
			public HRESULT GetRecoverySeqNum(int32* plRecoverySeqNum) mut
			{
				return VT.GetRecoverySeqNum(&this, plRecoverySeqNum);
			}
			public HRESULT ObsoleteRecoverySeqNum(int32 lNewRecoverySeqNum) mut
			{
				return VT.ObsoleteRecoverySeqNum(&this, lNewRecoverySeqNum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, uint32* pcbOurLogName, uint32* pcbRemoteLogName) GetLogNameSizes;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_Xln* pXln, uint8* pOurLogName, uint8* pRemoteLogName, uint32* pdwProtocol) GetOurXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_Xln_Confirmation Confirmation) HandleConfirmationFromOurXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_Xln Xln, uint8* pRemoteLogName, uint32 cbRemoteLogName, uint32 dwProtocol, _DtcLu_Xln_Confirmation* pConfirmation) HandleTheirXlnResponse;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_Xln_Error Error) HandleErrorFromOurXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, BOOL* fCompareStates) CheckForCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, uint32* pcbOurTransId) GetOurTransIdSize;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, uint8* pOurTransId, _DtcLu_CompareState* pCompareState) GetOurCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_CompareState CompareState, _DtcLu_CompareStates_Confirmation* pConfirmation) HandleTheirCompareStatesResponse;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, _DtcLu_CompareStates_Error Error) HandleErrorFromOurCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self) ConversationLost;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, int32* plRecoverySeqNum) GetRecoverySeqNum;
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcTransWork *self, int32 lNewRecoverySeqNum) ObsoleteRecoverySeqNum;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtcStatusWork : IUnknown
		{
			public const new Guid IID = .(0x4131e766, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleCheckLuStatus(int32 lRecoverySeqNum) mut
			{
				return VT.HandleCheckLuStatus(&this, lRecoverySeqNum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtcStatusWork *self, int32 lRecoverySeqNum) HandleCheckLuStatus;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByDtc : IUnknown
		{
			public const new Guid IID = .(0x4131e764, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWork(_DtcLu_LocalRecovery_Work* pWork, void** ppv) mut
			{
				return VT.GetWork(&this, pWork, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryInitiatedByDtc *self, _DtcLu_LocalRecovery_Work* pWork, void** ppv) GetWork;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByLuWork : IUnknown
		{
			public const new Guid IID = .(0xac2b8ad1, 0xd6f0, 0x11d0, 0xb3, 0x86, 0x00, 0xa0, 0xc9, 0x08, 0x33, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleTheirXln(int32 lRecoverySeqNum, _DtcLu_Xln Xln, uint8* pRemoteLogName, uint32 cbRemoteLogName, uint8* pOurLogName, uint32 cbOurLogName, uint32 dwProtocol, _DtcLu_Xln_Response* pResponse) mut
			{
				return VT.HandleTheirXln(&this, lRecoverySeqNum, Xln, pRemoteLogName, cbRemoteLogName, pOurLogName, cbOurLogName, dwProtocol, pResponse);
			}
			public HRESULT GetOurLogNameSize(uint32* pcbOurLogName) mut
			{
				return VT.GetOurLogNameSize(&this, pcbOurLogName);
			}
			public HRESULT GetOurXln(_DtcLu_Xln* pXln, uint8* pOurLogName, uint32* pdwProtocol) mut
			{
				return VT.GetOurXln(&this, pXln, pOurLogName, pdwProtocol);
			}
			public HRESULT HandleConfirmationOfOurXln(_DtcLu_Xln_Confirmation Confirmation) mut
			{
				return VT.HandleConfirmationOfOurXln(&this, Confirmation);
			}
			public HRESULT HandleTheirCompareStates(uint8* pRemoteTransId, uint32 cbRemoteTransId, _DtcLu_CompareState CompareState, _DtcLu_CompareStates_Response* pResponse, _DtcLu_CompareState* pCompareState) mut
			{
				return VT.HandleTheirCompareStates(&this, pRemoteTransId, cbRemoteTransId, CompareState, pResponse, pCompareState);
			}
			public HRESULT HandleConfirmationOfOurCompareStates(_DtcLu_CompareStates_Confirmation Confirmation) mut
			{
				return VT.HandleConfirmationOfOurCompareStates(&this, Confirmation);
			}
			public HRESULT HandleErrorFromOurCompareStates(_DtcLu_CompareStates_Error Error) mut
			{
				return VT.HandleErrorFromOurCompareStates(&this, Error);
			}
			public HRESULT ConversationLost() mut
			{
				return VT.ConversationLost(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, int32 lRecoverySeqNum, _DtcLu_Xln Xln, uint8* pRemoteLogName, uint32 cbRemoteLogName, uint8* pOurLogName, uint32 cbOurLogName, uint32 dwProtocol, _DtcLu_Xln_Response* pResponse) HandleTheirXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, uint32* pcbOurLogName) GetOurLogNameSize;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, _DtcLu_Xln* pXln, uint8* pOurLogName, uint32* pdwProtocol) GetOurXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, _DtcLu_Xln_Confirmation Confirmation) HandleConfirmationOfOurXln;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, uint8* pRemoteTransId, uint32 cbRemoteTransId, _DtcLu_CompareState CompareState, _DtcLu_CompareStates_Response* pResponse, _DtcLu_CompareState* pCompareState) HandleTheirCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, _DtcLu_CompareStates_Confirmation Confirmation) HandleConfirmationOfOurCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self, _DtcLu_CompareStates_Error Error) HandleErrorFromOurCompareStates;
				public new function HRESULT(IDtcLuRecoveryInitiatedByLuWork *self) ConversationLost;
			}
		}
		[CRepr]
		public struct IDtcLuRecoveryInitiatedByLu : IUnknown
		{
			public const new Guid IID = .(0x4131e768, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectToHandleWorkFromLu(IDtcLuRecoveryInitiatedByLuWork** ppWork) mut
			{
				return VT.GetObjectToHandleWorkFromLu(&this, ppWork);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRecoveryInitiatedByLu *self, IDtcLuRecoveryInitiatedByLuWork** ppWork) GetObjectToHandleWorkFromLu;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistment : IUnknown
		{
			public const new Guid IID = .(0x4131e769, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Unplug(BOOL fConversationLost) mut
			{
				return VT.Unplug(&this, fConversationLost);
			}
			public HRESULT BackedOut() mut
			{
				return VT.BackedOut(&this);
			}
			public HRESULT BackOut() mut
			{
				return VT.BackOut(&this);
			}
			public HRESULT Committed() mut
			{
				return VT.Committed(&this);
			}
			public HRESULT Forget() mut
			{
				return VT.Forget(&this);
			}
			public HRESULT RequestCommit() mut
			{
				return VT.RequestCommit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRmEnlistment *self, BOOL fConversationLost) Unplug;
				public new function HRESULT(IDtcLuRmEnlistment *self) BackedOut;
				public new function HRESULT(IDtcLuRmEnlistment *self) BackOut;
				public new function HRESULT(IDtcLuRmEnlistment *self) Committed;
				public new function HRESULT(IDtcLuRmEnlistment *self) Forget;
				public new function HRESULT(IDtcLuRmEnlistment *self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistmentSink : IUnknown
		{
			public const new Guid IID = .(0x4131e770, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AckUnplug() mut
			{
				return VT.AckUnplug(&this);
			}
			public HRESULT TmDown() mut
			{
				return VT.TmDown(&this);
			}
			public HRESULT SessionLost() mut
			{
				return VT.SessionLost(&this);
			}
			public HRESULT BackedOut() mut
			{
				return VT.BackedOut(&this);
			}
			public HRESULT BackOut() mut
			{
				return VT.BackOut(&this);
			}
			public HRESULT Committed() mut
			{
				return VT.Committed(&this);
			}
			public HRESULT Forget() mut
			{
				return VT.Forget(&this);
			}
			public HRESULT Prepare() mut
			{
				return VT.Prepare(&this);
			}
			public HRESULT RequestCommit() mut
			{
				return VT.RequestCommit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) AckUnplug;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) TmDown;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) SessionLost;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) BackedOut;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) BackOut;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) Committed;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) Forget;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) Prepare;
				public new function HRESULT(IDtcLuRmEnlistmentSink *self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuRmEnlistmentFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e771, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(uint8* pucLuPair, uint32 cbLuPair, ITransaction* pITransaction, uint8* pTransId, uint32 cbTransId, IDtcLuRmEnlistmentSink* pRmEnlistmentSink, IDtcLuRmEnlistment** ppRmEnlistment) mut
			{
				return VT.Create(&this, pucLuPair, cbLuPair, pITransaction, pTransId, cbTransId, pRmEnlistmentSink, ppRmEnlistment);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuRmEnlistmentFactory *self, uint8* pucLuPair, uint32 cbLuPair, ITransaction* pITransaction, uint8* pTransId, uint32 cbTransId, IDtcLuRmEnlistmentSink* pRmEnlistmentSink, IDtcLuRmEnlistment** ppRmEnlistment) Create;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtc : IUnknown
		{
			public const new Guid IID = .(0x4131e773, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Unplug(BOOL fConversationLost) mut
			{
				return VT.Unplug(&this, fConversationLost);
			}
			public HRESULT BackedOut() mut
			{
				return VT.BackedOut(&this);
			}
			public HRESULT BackOut() mut
			{
				return VT.BackOut(&this);
			}
			public HRESULT Committed() mut
			{
				return VT.Committed(&this);
			}
			public HRESULT Forget() mut
			{
				return VT.Forget(&this);
			}
			public HRESULT Prepare() mut
			{
				return VT.Prepare(&this);
			}
			public HRESULT RequestCommit() mut
			{
				return VT.RequestCommit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuSubordinateDtc *self, BOOL fConversationLost) Unplug;
				public new function HRESULT(IDtcLuSubordinateDtc *self) BackedOut;
				public new function HRESULT(IDtcLuSubordinateDtc *self) BackOut;
				public new function HRESULT(IDtcLuSubordinateDtc *self) Committed;
				public new function HRESULT(IDtcLuSubordinateDtc *self) Forget;
				public new function HRESULT(IDtcLuSubordinateDtc *self) Prepare;
				public new function HRESULT(IDtcLuSubordinateDtc *self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtcSink : IUnknown
		{
			public const new Guid IID = .(0x4131e774, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AckUnplug() mut
			{
				return VT.AckUnplug(&this);
			}
			public HRESULT TmDown() mut
			{
				return VT.TmDown(&this);
			}
			public HRESULT SessionLost() mut
			{
				return VT.SessionLost(&this);
			}
			public HRESULT BackedOut() mut
			{
				return VT.BackedOut(&this);
			}
			public HRESULT BackOut() mut
			{
				return VT.BackOut(&this);
			}
			public HRESULT Committed() mut
			{
				return VT.Committed(&this);
			}
			public HRESULT Forget() mut
			{
				return VT.Forget(&this);
			}
			public HRESULT RequestCommit() mut
			{
				return VT.RequestCommit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) AckUnplug;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) TmDown;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) SessionLost;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) BackedOut;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) BackOut;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) Committed;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) Forget;
				public new function HRESULT(IDtcLuSubordinateDtcSink *self) RequestCommit;
			}
		}
		[CRepr]
		public struct IDtcLuSubordinateDtcFactory : IUnknown
		{
			public const new Guid IID = .(0x4131e775, 0x1aea, 0x11d0, 0x94, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(uint8* pucLuPair, uint32 cbLuPair, IUnknown* punkTransactionOuter, int32 isoLevel, uint32 isoFlags, ITransactionOptions* pOptions, ITransaction** ppTransaction, uint8* pTransId, uint32 cbTransId, IDtcLuSubordinateDtcSink* pSubordinateDtcSink, IDtcLuSubordinateDtc** ppSubordinateDtc) mut
			{
				return VT.Create(&this, pucLuPair, cbLuPair, punkTransactionOuter, isoLevel, isoFlags, pOptions, ppTransaction, pTransId, cbTransId, pSubordinateDtcSink, ppSubordinateDtc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDtcLuSubordinateDtcFactory *self, uint8* pucLuPair, uint32 cbLuPair, IUnknown* punkTransactionOuter, int32 isoLevel, uint32 isoFlags, ITransactionOptions* pOptions, ITransaction** ppTransaction, uint8* pTransId, uint32 cbTransId, IDtcLuSubordinateDtcSink* pSubordinateDtcSink, IDtcLuSubordinateDtc** ppSubordinateDtc) Create;
			}
		}
		
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
