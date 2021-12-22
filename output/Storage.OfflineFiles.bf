using System;

// namespace Storage.OfflineFiles
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 OFFLINEFILES_SYNC_STATE_LOCAL_KNOWN = 1;
		public const uint32 OFFLINEFILES_SYNC_STATE_REMOTE_KNOWN = 2;
		public const uint32 OFFLINEFILES_CHANGES_NONE = 0;
		public const uint32 OFFLINEFILES_CHANGES_LOCAL_SIZE = 1;
		public const uint32 OFFLINEFILES_CHANGES_LOCAL_ATTRIBUTES = 2;
		public const uint32 OFFLINEFILES_CHANGES_LOCAL_TIME = 4;
		public const uint32 OFFLINEFILES_CHANGES_REMOTE_SIZE = 8;
		public const uint32 OFFLINEFILES_CHANGES_REMOTE_ATTRIBUTES = 16;
		public const uint32 OFFLINEFILES_CHANGES_REMOTE_TIME = 32;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_MODIFIED_DATA = 1;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_MODIFIED_ATTRIBUTES = 2;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_MODIFIED = 4;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_CREATED = 8;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_DELETED = 16;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_DIRTY = 32;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_SPARSE = 64;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_FILE = 128;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_DIRECTORY = 256;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_PINNED_USER = 512;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_PINNED_OTHERS = 1024;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_PINNED_COMPUTER = 2048;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_PINNED = 4096;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_GHOST = 8192;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_SUSPENDED = 16384;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_OFFLINE = 32768;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_ONLINE = 65536;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_USER_WRITE = 131072;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_USER_READ = 262144;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_USER_ANYACCESS = 524288;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_OTHER_WRITE = 1048576;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_OTHER_READ = 2097152;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_OTHER_ANYACCESS = 4194304;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_GUEST_WRITE = 8388608;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_GUEST_READ = 16777216;
		public const uint32 OFFLINEFILES_ITEM_FILTER_FLAG_GUEST_ANYACCESS = 33554432;
		public const uint32 OFFLINEFILES_ITEM_QUERY_REMOTEINFO = 1;
		public const uint32 OFFLINEFILES_ITEM_QUERY_CONNECTIONSTATE = 2;
		public const uint32 OFFLINEFILES_ITEM_QUERY_LOCALDIRTYBYTECOUNT = 4;
		public const uint32 OFFLINEFILES_ITEM_QUERY_REMOTEDIRTYBYTECOUNT = 8;
		public const uint32 OFFLINEFILES_ITEM_QUERY_INCLUDETRANSPARENTCACHE = 16;
		public const uint32 OFFLINEFILES_ITEM_QUERY_ATTEMPT_TRANSITIONONLINE = 32;
		public const uint32 OFFLINEFILES_ITEM_QUERY_ADMIN = 2147483648;
		public const uint32 OFFLINEFILES_ENUM_FLAT = 1;
		public const uint32 OFFLINEFILES_ENUM_FLAT_FILESONLY = 2;
		public const uint32 OFFLINEFILES_SETTING_SCOPE_USER = 1;
		public const uint32 OFFLINEFILES_SETTING_SCOPE_COMPUTER = 2;
		public const uint32 OFFLINEFILES_PINLINKTARGETS_NEVER = 0;
		public const uint32 OFFLINEFILES_PINLINKTARGETS_EXPLICIT = 1;
		public const uint32 OFFLINEFILES_PINLINKTARGETS_ALWAYS = 2;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_FILLSPARSE = 1;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_SYNCIN = 2;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_SYNCOUT = 4;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINNEWFILES = 8;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINLINKTARGETS = 16;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINFORUSER = 32;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINFORUSER_POLICY = 64;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINFORALL = 128;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_PINFORREDIR = 256;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_LOWPRIORITY = 512;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_ASYNCPROGRESS = 1024;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_INTERACTIVE = 2048;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_CONSOLE = 4096;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_SKIPSUSPENDEDDIRS = 8192;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_BACKGROUND = 65536;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_FLAG_NONEWFILESOUT = 131072;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_CR_MASK = 4026531840;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_CR_DEFAULT = 0;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_CR_KEEPLOCAL = 268435456;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_CR_KEEPREMOTE = 536870912;
		public const uint32 OFFLINEFILES_SYNC_CONTROL_CR_KEEPLATEST = 805306368;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_FORUSER = 32;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_FORUSER_POLICY = 64;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_FORALL = 128;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_FORREDIR = 256;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_FILL = 1;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_LOWPRIORITY = 512;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_ASYNCPROGRESS = 1024;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_INTERACTIVE = 2048;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_CONSOLE = 4096;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_PINLINKTARGETS = 16;
		public const uint32 OFFLINEFILES_PIN_CONTROL_FLAG_BACKGROUND = 65536;
		public const uint32 OFFLINEFILES_ENCRYPTION_CONTROL_FLAG_LOWPRIORITY = 512;
		public const uint32 OFFLINEFILES_ENCRYPTION_CONTROL_FLAG_ASYNCPROGRESS = 1024;
		public const uint32 OFFLINEFILES_ENCRYPTION_CONTROL_FLAG_INTERACTIVE = 2048;
		public const uint32 OFFLINEFILES_ENCRYPTION_CONTROL_FLAG_CONSOLE = 4096;
		public const uint32 OFFLINEFILES_ENCRYPTION_CONTROL_FLAG_BACKGROUND = 65536;
		public const uint32 OFFLINEFILES_DELETE_FLAG_NOAUTOCACHED = 1;
		public const uint32 OFFLINEFILES_DELETE_FLAG_NOPINNED = 2;
		public const uint32 OFFLINEFILES_DELETE_FLAG_DELMODIFIED = 4;
		public const uint32 OFFLINEFILES_DELETE_FLAG_ADMIN = 2147483648;
		public const uint32 OFFLINEFILES_TRANSITION_FLAG_INTERACTIVE = 1;
		public const uint32 OFFLINEFILES_TRANSITION_FLAG_CONSOLE = 2;
		public const uint32 OFFLINEFILES_SYNC_ITEM_CHANGE_NONE = 0;
		public const uint32 OFFLINEFILES_SYNC_ITEM_CHANGE_CHANGETIME = 1;
		public const uint32 OFFLINEFILES_SYNC_ITEM_CHANGE_WRITETIME = 2;
		public const uint32 OFFLINEFILES_SYNC_ITEM_CHANGE_FILESIZE = 4;
		public const uint32 OFFLINEFILES_SYNC_ITEM_CHANGE_ATTRIBUTES = 8;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum OFFLINEFILES_ITEM_TYPE : int32
		{
			OFFLINEFILES_ITEM_TYPE_FILE = 0,
			OFFLINEFILES_ITEM_TYPE_DIRECTORY = 1,
			OFFLINEFILES_ITEM_TYPE_SHARE = 2,
			OFFLINEFILES_ITEM_TYPE_SERVER = 3,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_ITEM_COPY : int32
		{
			OFFLINEFILES_ITEM_COPY_LOCAL = 0,
			OFFLINEFILES_ITEM_COPY_REMOTE = 1,
			OFFLINEFILES_ITEM_COPY_ORIGINAL = 2,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_CONNECT_STATE : int32
		{
			OFFLINEFILES_CONNECT_STATE_UNKNOWN = 0,
			OFFLINEFILES_CONNECT_STATE_OFFLINE = 1,
			OFFLINEFILES_CONNECT_STATE_ONLINE = 2,
			OFFLINEFILES_CONNECT_STATE_TRANSPARENTLY_CACHED = 3,
			OFFLINEFILES_CONNECT_STATE_PARTLY_TRANSPARENTLY_CACHED = 4,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_OFFLINE_REASON : int32
		{
			OFFLINEFILES_OFFLINE_REASON_UNKNOWN = 0,
			OFFLINEFILES_OFFLINE_REASON_NOT_APPLICABLE = 1,
			OFFLINEFILES_OFFLINE_REASON_CONNECTION_FORCED = 2,
			OFFLINEFILES_OFFLINE_REASON_CONNECTION_SLOW = 3,
			OFFLINEFILES_OFFLINE_REASON_CONNECTION_ERROR = 4,
			OFFLINEFILES_OFFLINE_REASON_ITEM_VERSION_CONFLICT = 5,
			OFFLINEFILES_OFFLINE_REASON_ITEM_SUSPENDED = 6,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_CACHING_MODE : int32
		{
			OFFLINEFILES_CACHING_MODE_NONE = 0,
			OFFLINEFILES_CACHING_MODE_NOCACHING = 1,
			OFFLINEFILES_CACHING_MODE_MANUAL = 2,
			OFFLINEFILES_CACHING_MODE_AUTO_DOC = 3,
			OFFLINEFILES_CACHING_MODE_AUTO_PROGANDDOC = 4,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_OP_RESPONSE : int32
		{
			OFFLINEFILES_OP_CONTINUE = 0,
			OFFLINEFILES_OP_RETRY = 1,
			OFFLINEFILES_OP_ABORT = 2,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_EVENTS : int32
		{
			OFFLINEFILES_EVENT_CACHEMOVED = 0,
			OFFLINEFILES_EVENT_CACHEISFULL = 1,
			OFFLINEFILES_EVENT_CACHEISCORRUPTED = 2,
			OFFLINEFILES_EVENT_ENABLED = 3,
			OFFLINEFILES_EVENT_ENCRYPTIONCHANGED = 4,
			OFFLINEFILES_EVENT_SYNCBEGIN = 5,
			OFFLINEFILES_EVENT_SYNCFILERESULT = 6,
			OFFLINEFILES_EVENT_SYNCCONFLICTRECADDED = 7,
			OFFLINEFILES_EVENT_SYNCCONFLICTRECUPDATED = 8,
			OFFLINEFILES_EVENT_SYNCCONFLICTRECREMOVED = 9,
			OFFLINEFILES_EVENT_SYNCEND = 10,
			OFFLINEFILES_EVENT_BACKGROUNDSYNCBEGIN = 11,
			OFFLINEFILES_EVENT_BACKGROUNDSYNCEND = 12,
			OFFLINEFILES_EVENT_NETTRANSPORTARRIVED = 13,
			OFFLINEFILES_EVENT_NONETTRANSPORTS = 14,
			OFFLINEFILES_EVENT_ITEMDISCONNECTED = 15,
			OFFLINEFILES_EVENT_ITEMRECONNECTED = 16,
			OFFLINEFILES_EVENT_ITEMAVAILABLEOFFLINE = 17,
			OFFLINEFILES_EVENT_ITEMNOTAVAILABLEOFFLINE = 18,
			OFFLINEFILES_EVENT_ITEMPINNED = 19,
			OFFLINEFILES_EVENT_ITEMNOTPINNED = 20,
			OFFLINEFILES_EVENT_ITEMMODIFIED = 21,
			OFFLINEFILES_EVENT_ITEMADDEDTOCACHE = 22,
			OFFLINEFILES_EVENT_ITEMDELETEDFROMCACHE = 23,
			OFFLINEFILES_EVENT_ITEMRENAMED = 24,
			OFFLINEFILES_EVENT_DATALOST = 25,
			OFFLINEFILES_EVENT_PING = 26,
			OFFLINEFILES_EVENT_ITEMRECONNECTBEGIN = 27,
			OFFLINEFILES_EVENT_ITEMRECONNECTEND = 28,
			OFFLINEFILES_EVENT_CACHEEVICTBEGIN = 29,
			OFFLINEFILES_EVENT_CACHEEVICTEND = 30,
			OFFLINEFILES_EVENT_POLICYCHANGEDETECTED = 31,
			OFFLINEFILES_EVENT_PREFERENCECHANGEDETECTED = 32,
			OFFLINEFILES_EVENT_SETTINGSCHANGESAPPLIED = 33,
			OFFLINEFILES_EVENT_TRANSPARENTCACHEITEMNOTIFY = 34,
			OFFLINEFILES_EVENT_PREFETCHFILEBEGIN = 35,
			OFFLINEFILES_EVENT_PREFETCHFILEEND = 36,
			OFFLINEFILES_EVENT_PREFETCHCLOSEHANDLEBEGIN = 37,
			OFFLINEFILES_EVENT_PREFETCHCLOSEHANDLEEND = 38,
			OFFLINEFILES_NUM_EVENTS = 39,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_PATHFILTER_MATCH : int32
		{
			OFFLINEFILES_PATHFILTER_SELF = 0,
			OFFLINEFILES_PATHFILTER_CHILD = 1,
			OFFLINEFILES_PATHFILTER_DESCENDENT = 2,
			OFFLINEFILES_PATHFILTER_SELFORCHILD = 3,
			OFFLINEFILES_PATHFILTER_SELFORDESCENDENT = 4,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_SYNC_CONFLICT_RESOLVE : int32
		{
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_NONE = 0,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_KEEPLOCAL = 1,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_KEEPREMOTE = 2,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_KEEPALLCHANGES = 3,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_KEEPLATEST = 4,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_LOG = 5,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_SKIP = 6,
			OFFLINEFILES_SYNC_CONFLICT_ABORT = 7,
			OFFLINEFILES_SYNC_CONFLICT_RESOLVE_NUMCODES = 8,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_ITEM_TIME : int32
		{
			OFFLINEFILES_ITEM_TIME_CREATION = 0,
			OFFLINEFILES_ITEM_TIME_LASTACCESS = 1,
			OFFLINEFILES_ITEM_TIME_LASTWRITE = 2,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_COMPARE : int32
		{
			OFFLINEFILES_COMPARE_EQ = 0,
			OFFLINEFILES_COMPARE_NEQ = 1,
			OFFLINEFILES_COMPARE_LT = 2,
			OFFLINEFILES_COMPARE_GT = 3,
			OFFLINEFILES_COMPARE_LTE = 4,
			OFFLINEFILES_COMPARE_GTE = 5,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_SETTING_VALUE_TYPE : int32
		{
			OFFLINEFILES_SETTING_VALUE_UI4 = 0,
			OFFLINEFILES_SETTING_VALUE_BSTR = 1,
			OFFLINEFILES_SETTING_VALUE_BSTR_DBLNULTERM = 2,
			OFFLINEFILES_SETTING_VALUE_2DIM_ARRAY_BSTR_UI4 = 3,
			OFFLINEFILES_SETTING_VALUE_2DIM_ARRAY_BSTR_BSTR = 4,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_SYNC_OPERATION : int32
		{
			OFFLINEFILES_SYNC_OPERATION_CREATE_COPY_ON_SERVER = 0,
			OFFLINEFILES_SYNC_OPERATION_CREATE_COPY_ON_CLIENT = 1,
			OFFLINEFILES_SYNC_OPERATION_SYNC_TO_SERVER = 2,
			OFFLINEFILES_SYNC_OPERATION_SYNC_TO_CLIENT = 3,
			OFFLINEFILES_SYNC_OPERATION_DELETE_SERVER_COPY = 4,
			OFFLINEFILES_SYNC_OPERATION_DELETE_CLIENT_COPY = 5,
			OFFLINEFILES_SYNC_OPERATION_PIN = 6,
			OFFLINEFILES_SYNC_OPERATION_PREPARE = 7,
		}
		[AllowDuplicates]
		public enum OFFLINEFILES_SYNC_STATE : int32
		{
			OFFLINEFILES_SYNC_STATE_Stable = 0,
			OFFLINEFILES_SYNC_STATE_FileOnClient_DirOnServer = 1,
			OFFLINEFILES_SYNC_STATE_FileOnClient_NoServerCopy = 2,
			OFFLINEFILES_SYNC_STATE_DirOnClient_FileOnServer = 3,
			OFFLINEFILES_SYNC_STATE_DirOnClient_FileChangedOnServer = 4,
			OFFLINEFILES_SYNC_STATE_DirOnClient_NoServerCopy = 5,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_NoServerCopy = 6,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_FileChangedOnServer = 7,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_DirChangedOnServer = 8,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_FileOnServer = 9,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_DirOnServer = 10,
			OFFLINEFILES_SYNC_STATE_FileCreatedOnClient_DeletedOnServer = 11,
			OFFLINEFILES_SYNC_STATE_FileChangedOnClient_ChangedOnServer = 12,
			OFFLINEFILES_SYNC_STATE_FileChangedOnClient_DirOnServer = 13,
			OFFLINEFILES_SYNC_STATE_FileChangedOnClient_DirChangedOnServer = 14,
			OFFLINEFILES_SYNC_STATE_FileChangedOnClient_DeletedOnServer = 15,
			OFFLINEFILES_SYNC_STATE_FileSparseOnClient_ChangedOnServer = 16,
			OFFLINEFILES_SYNC_STATE_FileSparseOnClient_DeletedOnServer = 17,
			OFFLINEFILES_SYNC_STATE_FileSparseOnClient_DirOnServer = 18,
			OFFLINEFILES_SYNC_STATE_FileSparseOnClient_DirChangedOnServer = 19,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_NoServerCopy = 20,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_DirOnServer = 21,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_FileOnServer = 22,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_FileChangedOnServer = 23,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_DirChangedOnServer = 24,
			OFFLINEFILES_SYNC_STATE_DirCreatedOnClient_DeletedOnServer = 25,
			OFFLINEFILES_SYNC_STATE_DirChangedOnClient_FileOnServer = 26,
			OFFLINEFILES_SYNC_STATE_DirChangedOnClient_FileChangedOnServer = 27,
			OFFLINEFILES_SYNC_STATE_DirChangedOnClient_ChangedOnServer = 28,
			OFFLINEFILES_SYNC_STATE_DirChangedOnClient_DeletedOnServer = 29,
			OFFLINEFILES_SYNC_STATE_NoClientCopy_FileOnServer = 30,
			OFFLINEFILES_SYNC_STATE_NoClientCopy_DirOnServer = 31,
			OFFLINEFILES_SYNC_STATE_NoClientCopy_FileChangedOnServer = 32,
			OFFLINEFILES_SYNC_STATE_NoClientCopy_DirChangedOnServer = 33,
			OFFLINEFILES_SYNC_STATE_DeletedOnClient_FileOnServer = 34,
			OFFLINEFILES_SYNC_STATE_DeletedOnClient_DirOnServer = 35,
			OFFLINEFILES_SYNC_STATE_DeletedOnClient_FileChangedOnServer = 36,
			OFFLINEFILES_SYNC_STATE_DeletedOnClient_DirChangedOnServer = 37,
			OFFLINEFILES_SYNC_STATE_FileSparseOnClient = 38,
			OFFLINEFILES_SYNC_STATE_FileChangedOnClient = 39,
			OFFLINEFILES_SYNC_STATE_FileRenamedOnClient = 40,
			OFFLINEFILES_SYNC_STATE_DirSparseOnClient = 41,
			OFFLINEFILES_SYNC_STATE_DirChangedOnClient = 42,
			OFFLINEFILES_SYNC_STATE_DirRenamedOnClient = 43,
			OFFLINEFILES_SYNC_STATE_FileChangedOnServer = 44,
			OFFLINEFILES_SYNC_STATE_FileRenamedOnServer = 45,
			OFFLINEFILES_SYNC_STATE_FileDeletedOnServer = 46,
			OFFLINEFILES_SYNC_STATE_DirChangedOnServer = 47,
			OFFLINEFILES_SYNC_STATE_DirRenamedOnServer = 48,
			OFFLINEFILES_SYNC_STATE_DirDeletedOnServer = 49,
			OFFLINEFILES_SYNC_STATE_FileReplacedAndDeletedOnClient_FileOnServer = 50,
			OFFLINEFILES_SYNC_STATE_FileReplacedAndDeletedOnClient_FileChangedOnServer = 51,
			OFFLINEFILES_SYNC_STATE_FileReplacedAndDeletedOnClient_DirOnServer = 52,
			OFFLINEFILES_SYNC_STATE_FileReplacedAndDeletedOnClient_DirChangedOnServer = 53,
			OFFLINEFILES_SYNC_STATE_NUMSTATES = 54,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_OfflineFilesSetting = .(0xfd3659e9, 0xa920, 0x4123, 0xad, 0x64, 0x7f, 0xc7, 0x6c, 0x7a, 0xac, 0xdf);
		public const Guid CLSID_OfflineFilesCache = .(0x48c6be7c, 0x3871, 0x43cc, 0xb4, 0x6f, 0x14, 0x49, 0xa1, 0xbb, 0x2f, 0xf3);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IOfflineFilesEvents : IUnknown
		{
			public const new Guid IID = .(0xe25585c1, 0x0caa, 0x4eb1, 0x87, 0x3b, 0x1c, 0xae, 0x5b, 0x77, 0xc3, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CacheMoved(PWSTR pszOldPath, PWSTR pszNewPath) mut
			{
				return VT.CacheMoved(&this, pszOldPath, pszNewPath);
			}
			public HRESULT CacheIsFull() mut
			{
				return VT.CacheIsFull(&this);
			}
			public HRESULT CacheIsCorrupted() mut
			{
				return VT.CacheIsCorrupted(&this);
			}
			public HRESULT Enabled(BOOL bEnabled) mut
			{
				return VT.Enabled(&this, bEnabled);
			}
			public HRESULT EncryptionChanged(BOOL bWasEncrypted, BOOL bWasPartial, BOOL bIsEncrypted, BOOL bIsPartial) mut
			{
				return VT.EncryptionChanged(&this, bWasEncrypted, bWasPartial, bIsEncrypted, bIsPartial);
			}
			public HRESULT SyncBegin(Guid* rSyncId) mut
			{
				return VT.SyncBegin(&this, rSyncId);
			}
			public HRESULT SyncFileResult(Guid* rSyncId, PWSTR pszFile, HRESULT hrResult) mut
			{
				return VT.SyncFileResult(&this, rSyncId, pszFile, hrResult);
			}
			public HRESULT SyncConflictRecAdded(PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut
			{
				return VT.SyncConflictRecAdded(&this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			}
			public HRESULT SyncConflictRecUpdated(PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut
			{
				return VT.SyncConflictRecUpdated(&this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			}
			public HRESULT SyncConflictRecRemoved(PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut
			{
				return VT.SyncConflictRecRemoved(&this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			}
			public HRESULT SyncEnd(Guid* rSyncId, HRESULT hrResult) mut
			{
				return VT.SyncEnd(&this, rSyncId, hrResult);
			}
			public HRESULT NetTransportArrived() mut
			{
				return VT.NetTransportArrived(&this);
			}
			public HRESULT NoNetTransports() mut
			{
				return VT.NoNetTransports(&this);
			}
			public HRESULT ItemDisconnected(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemDisconnected(&this, pszPath, ItemType);
			}
			public HRESULT ItemReconnected(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemReconnected(&this, pszPath, ItemType);
			}
			public HRESULT ItemAvailableOffline(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemAvailableOffline(&this, pszPath, ItemType);
			}
			public HRESULT ItemNotAvailableOffline(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemNotAvailableOffline(&this, pszPath, ItemType);
			}
			public HRESULT ItemPinned(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemPinned(&this, pszPath, ItemType);
			}
			public HRESULT ItemNotPinned(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemNotPinned(&this, pszPath, ItemType);
			}
			public HRESULT ItemModified(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes) mut
			{
				return VT.ItemModified(&this, pszPath, ItemType, bModifiedData, bModifiedAttributes);
			}
			public HRESULT ItemAddedToCache(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemAddedToCache(&this, pszPath, ItemType);
			}
			public HRESULT ItemDeletedFromCache(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemDeletedFromCache(&this, pszPath, ItemType);
			}
			public HRESULT ItemRenamed(PWSTR pszOldPath, PWSTR pszNewPath, OFFLINEFILES_ITEM_TYPE ItemType) mut
			{
				return VT.ItemRenamed(&this, pszOldPath, pszNewPath, ItemType);
			}
			public HRESULT DataLost() mut
			{
				return VT.DataLost(&this);
			}
			public HRESULT Ping() mut
			{
				return VT.Ping(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszOldPath, PWSTR pszNewPath) CacheMoved;
				public new function HRESULT(IOfflineFilesEvents *self) CacheIsFull;
				public new function HRESULT(IOfflineFilesEvents *self) CacheIsCorrupted;
				public new function HRESULT(IOfflineFilesEvents *self, BOOL bEnabled) Enabled;
				public new function HRESULT(IOfflineFilesEvents *self, BOOL bWasEncrypted, BOOL bWasPartial, BOOL bIsEncrypted, BOOL bIsPartial) EncryptionChanged;
				public new function HRESULT(IOfflineFilesEvents *self, Guid* rSyncId) SyncBegin;
				public new function HRESULT(IOfflineFilesEvents *self, Guid* rSyncId, PWSTR pszFile, HRESULT hrResult) SyncFileResult;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecAdded;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecUpdated;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszConflictPath, FILETIME* pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecRemoved;
				public new function HRESULT(IOfflineFilesEvents *self, Guid* rSyncId, HRESULT hrResult) SyncEnd;
				public new function HRESULT(IOfflineFilesEvents *self) NetTransportArrived;
				public new function HRESULT(IOfflineFilesEvents *self) NoNetTransports;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemDisconnected;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemReconnected;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemAvailableOffline;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemNotAvailableOffline;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemPinned;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemNotPinned;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes) ItemModified;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemAddedToCache;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemDeletedFromCache;
				public new function HRESULT(IOfflineFilesEvents *self, PWSTR pszOldPath, PWSTR pszNewPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemRenamed;
				public new function HRESULT(IOfflineFilesEvents *self) DataLost;
				public new function HRESULT(IOfflineFilesEvents *self) Ping;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents2 : IOfflineFilesEvents
		{
			public const new Guid IID = .(0x1ead8f56, 0xff76, 0x4faa, 0xa7, 0x95, 0x6f, 0x6e, 0xf7, 0x92, 0x49, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ItemReconnectBegin() mut
			{
				return VT.ItemReconnectBegin(&this);
			}
			public HRESULT ItemReconnectEnd() mut
			{
				return VT.ItemReconnectEnd(&this);
			}
			public HRESULT CacheEvictBegin() mut
			{
				return VT.CacheEvictBegin(&this);
			}
			public HRESULT CacheEvictEnd() mut
			{
				return VT.CacheEvictEnd(&this);
			}
			public HRESULT BackgroundSyncBegin(uint32 dwSyncControlFlags) mut
			{
				return VT.BackgroundSyncBegin(&this, dwSyncControlFlags);
			}
			public HRESULT BackgroundSyncEnd(uint32 dwSyncControlFlags) mut
			{
				return VT.BackgroundSyncEnd(&this, dwSyncControlFlags);
			}
			public HRESULT PolicyChangeDetected() mut
			{
				return VT.PolicyChangeDetected(&this);
			}
			public HRESULT PreferenceChangeDetected() mut
			{
				return VT.PreferenceChangeDetected(&this);
			}
			public HRESULT SettingsChangesApplied() mut
			{
				return VT.SettingsChangesApplied(&this);
			}
			[CRepr]
			public struct VTable : IOfflineFilesEvents.VTable
			{
				public new function HRESULT(IOfflineFilesEvents2 *self) ItemReconnectBegin;
				public new function HRESULT(IOfflineFilesEvents2 *self) ItemReconnectEnd;
				public new function HRESULT(IOfflineFilesEvents2 *self) CacheEvictBegin;
				public new function HRESULT(IOfflineFilesEvents2 *self) CacheEvictEnd;
				public new function HRESULT(IOfflineFilesEvents2 *self, uint32 dwSyncControlFlags) BackgroundSyncBegin;
				public new function HRESULT(IOfflineFilesEvents2 *self, uint32 dwSyncControlFlags) BackgroundSyncEnd;
				public new function HRESULT(IOfflineFilesEvents2 *self) PolicyChangeDetected;
				public new function HRESULT(IOfflineFilesEvents2 *self) PreferenceChangeDetected;
				public new function HRESULT(IOfflineFilesEvents2 *self) SettingsChangesApplied;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents3 : IOfflineFilesEvents2
		{
			public const new Guid IID = .(0x9ba04a45, 0xee69, 0x42f0, 0x9a, 0xb1, 0x7d, 0xb5, 0xc8, 0x80, 0x58, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TransparentCacheItemNotify(PWSTR pszPath, OFFLINEFILES_EVENTS EventType, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes, PWSTR pzsOldPath) mut
			{
				return VT.TransparentCacheItemNotify(&this, pszPath, EventType, ItemType, bModifiedData, bModifiedAttributes, pzsOldPath);
			}
			public HRESULT PrefetchFileBegin(PWSTR pszPath) mut
			{
				return VT.PrefetchFileBegin(&this, pszPath);
			}
			public HRESULT PrefetchFileEnd(PWSTR pszPath, HRESULT hrResult) mut
			{
				return VT.PrefetchFileEnd(&this, pszPath, hrResult);
			}
			[CRepr]
			public struct VTable : IOfflineFilesEvents2.VTable
			{
				public new function HRESULT(IOfflineFilesEvents3 *self, PWSTR pszPath, OFFLINEFILES_EVENTS EventType, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes, PWSTR pzsOldPath) TransparentCacheItemNotify;
				public new function HRESULT(IOfflineFilesEvents3 *self, PWSTR pszPath) PrefetchFileBegin;
				public new function HRESULT(IOfflineFilesEvents3 *self, PWSTR pszPath, HRESULT hrResult) PrefetchFileEnd;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents4 : IOfflineFilesEvents3
		{
			public const new Guid IID = .(0xdbd69b1e, 0xc7d2, 0x473e, 0xb3, 0x5f, 0x9d, 0x8c, 0x24, 0xc0, 0xc4, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrefetchCloseHandleBegin() mut
			{
				return VT.PrefetchCloseHandleBegin(&this);
			}
			public HRESULT PrefetchCloseHandleEnd(uint32 dwClosedHandleCount, uint32 dwOpenHandleCount, HRESULT hrResult) mut
			{
				return VT.PrefetchCloseHandleEnd(&this, dwClosedHandleCount, dwOpenHandleCount, hrResult);
			}
			[CRepr]
			public struct VTable : IOfflineFilesEvents3.VTable
			{
				public new function HRESULT(IOfflineFilesEvents4 *self) PrefetchCloseHandleBegin;
				public new function HRESULT(IOfflineFilesEvents4 *self, uint32 dwClosedHandleCount, uint32 dwOpenHandleCount, HRESULT hrResult) PrefetchCloseHandleEnd;
			}
		}
		[CRepr]
		public struct IOfflineFilesEventsFilter : IUnknown
		{
			public const new Guid IID = .(0x33fc4e1b, 0x0716, 0x40fa, 0xba, 0x65, 0x6e, 0x62, 0xa8, 0x4a, 0x84, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPathFilter(PWSTR* ppszFilter, OFFLINEFILES_PATHFILTER_MATCH* pMatch) mut
			{
				return VT.GetPathFilter(&this, ppszFilter, pMatch);
			}
			public HRESULT GetIncludedEvents(uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, uint32* pcEvents) mut
			{
				return VT.GetIncludedEvents(&this, cElements, prgEvents, pcEvents);
			}
			public HRESULT GetExcludedEvents(uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, uint32* pcEvents) mut
			{
				return VT.GetExcludedEvents(&this, cElements, prgEvents, pcEvents);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesEventsFilter *self, PWSTR* ppszFilter, OFFLINEFILES_PATHFILTER_MATCH* pMatch) GetPathFilter;
				public new function HRESULT(IOfflineFilesEventsFilter *self, uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, uint32* pcEvents) GetIncludedEvents;
				public new function HRESULT(IOfflineFilesEventsFilter *self, uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, uint32* pcEvents) GetExcludedEvents;
			}
		}
		[CRepr]
		public struct IOfflineFilesErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x7112fa5f, 0x7571, 0x435a, 0x8e, 0xb7, 0x19, 0x5c, 0x7c, 0x14, 0x29, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRawData(BYTE_BLOB** ppBlob) mut
			{
				return VT.GetRawData(&this, ppBlob);
			}
			public HRESULT GetDescription(PWSTR* ppszDescription) mut
			{
				return VT.GetDescription(&this, ppszDescription);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesErrorInfo *self, BYTE_BLOB** ppBlob) GetRawData;
				public new function HRESULT(IOfflineFilesErrorInfo *self, PWSTR* ppszDescription) GetDescription;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncErrorItemInfo : IUnknown
		{
			public const new Guid IID = .(0xecdbaf0d, 0x6a18, 0x4d55, 0x80, 0x17, 0x10, 0x8f, 0x76, 0x60, 0xba, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileAttributes(uint32* pdwAttributes) mut
			{
				return VT.GetFileAttributes(&this, pdwAttributes);
			}
			public HRESULT GetFileTimes(FILETIME* pftLastWrite, FILETIME* pftChange) mut
			{
				return VT.GetFileTimes(&this, pftLastWrite, pftChange);
			}
			public HRESULT GetFileSize(LARGE_INTEGER* pSize) mut
			{
				return VT.GetFileSize(&this, pSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesSyncErrorItemInfo *self, uint32* pdwAttributes) GetFileAttributes;
				public new function HRESULT(IOfflineFilesSyncErrorItemInfo *self, FILETIME* pftLastWrite, FILETIME* pftChange) GetFileTimes;
				public new function HRESULT(IOfflineFilesSyncErrorItemInfo *self, LARGE_INTEGER* pSize) GetFileSize;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncErrorInfo : IOfflineFilesErrorInfo
		{
			public const new Guid IID = .(0x59f95e46, 0xeb54, 0x49d1, 0xbe, 0x76, 0xde, 0x95, 0x45, 0x8d, 0x01, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncOperation(OFFLINEFILES_SYNC_OPERATION* pSyncOp) mut
			{
				return VT.GetSyncOperation(&this, pSyncOp);
			}
			public HRESULT GetItemChangeFlags(uint32* pdwItemChangeFlags) mut
			{
				return VT.GetItemChangeFlags(&this, pdwItemChangeFlags);
			}
			public HRESULT InfoEnumerated(BOOL* pbLocalEnumerated, BOOL* pbRemoteEnumerated, BOOL* pbOriginalEnumerated) mut
			{
				return VT.InfoEnumerated(&this, pbLocalEnumerated, pbRemoteEnumerated, pbOriginalEnumerated);
			}
			public HRESULT InfoAvailable(BOOL* pbLocalInfo, BOOL* pbRemoteInfo, BOOL* pbOriginalInfo) mut
			{
				return VT.InfoAvailable(&this, pbLocalInfo, pbRemoteInfo, pbOriginalInfo);
			}
			public HRESULT GetLocalInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut
			{
				return VT.GetLocalInfo(&this, ppInfo);
			}
			public HRESULT GetRemoteInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut
			{
				return VT.GetRemoteInfo(&this, ppInfo);
			}
			public HRESULT GetOriginalInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut
			{
				return VT.GetOriginalInfo(&this, ppInfo);
			}
			[CRepr]
			public struct VTable : IOfflineFilesErrorInfo.VTable
			{
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, OFFLINEFILES_SYNC_OPERATION* pSyncOp) GetSyncOperation;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, uint32* pdwItemChangeFlags) GetItemChangeFlags;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, BOOL* pbLocalEnumerated, BOOL* pbRemoteEnumerated, BOOL* pbOriginalEnumerated) InfoEnumerated;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, BOOL* pbLocalInfo, BOOL* pbRemoteInfo, BOOL* pbOriginalInfo) InfoAvailable;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetLocalInfo;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetRemoteInfo;
				public new function HRESULT(IOfflineFilesSyncErrorInfo *self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetOriginalInfo;
			}
		}
		[CRepr]
		public struct IOfflineFilesProgress : IUnknown
		{
			public const new Guid IID = .(0xfad63237, 0xc55b, 0x4911, 0x98, 0x50, 0xbc, 0xf9, 0x6d, 0x4c, 0x97, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin(BOOL* pbAbort) mut
			{
				return VT.Begin(&this, pbAbort);
			}
			public HRESULT QueryAbort(BOOL* pbAbort) mut
			{
				return VT.QueryAbort(&this, pbAbort);
			}
			public HRESULT End(HRESULT hrResult) mut
			{
				return VT.End(&this, hrResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesProgress *self, BOOL* pbAbort) Begin;
				public new function HRESULT(IOfflineFilesProgress *self, BOOL* pbAbort) QueryAbort;
				public new function HRESULT(IOfflineFilesProgress *self, HRESULT hrResult) End;
			}
		}
		[CRepr]
		public struct IOfflineFilesSimpleProgress : IOfflineFilesProgress
		{
			public const new Guid IID = .(0xc34f7f9b, 0xc43d, 0x4f9d, 0xa7, 0x76, 0xc0, 0xeb, 0x6d, 0xe5, 0xd4, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ItemBegin(PWSTR pszFile, OFFLINEFILES_OP_RESPONSE* pResponse) mut
			{
				return VT.ItemBegin(&this, pszFile, pResponse);
			}
			public HRESULT ItemResult(PWSTR pszFile, HRESULT hrResult, OFFLINEFILES_OP_RESPONSE* pResponse) mut
			{
				return VT.ItemResult(&this, pszFile, hrResult, pResponse);
			}
			[CRepr]
			public struct VTable : IOfflineFilesProgress.VTable
			{
				public new function HRESULT(IOfflineFilesSimpleProgress *self, PWSTR pszFile, OFFLINEFILES_OP_RESPONSE* pResponse) ItemBegin;
				public new function HRESULT(IOfflineFilesSimpleProgress *self, PWSTR pszFile, HRESULT hrResult, OFFLINEFILES_OP_RESPONSE* pResponse) ItemResult;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncProgress : IOfflineFilesProgress
		{
			public const new Guid IID = .(0x6931f49a, 0x6fc7, 0x4c1b, 0xb2, 0x65, 0x56, 0x79, 0x3f, 0xc4, 0x51, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SyncItemBegin(PWSTR pszFile, OFFLINEFILES_OP_RESPONSE* pResponse) mut
			{
				return VT.SyncItemBegin(&this, pszFile, pResponse);
			}
			public HRESULT SyncItemResult(PWSTR pszFile, HRESULT hrResult, IOfflineFilesSyncErrorInfo* pErrorInfo, OFFLINEFILES_OP_RESPONSE* pResponse) mut
			{
				return VT.SyncItemResult(&this, pszFile, hrResult, pErrorInfo, pResponse);
			}
			[CRepr]
			public struct VTable : IOfflineFilesProgress.VTable
			{
				public new function HRESULT(IOfflineFilesSyncProgress *self, PWSTR pszFile, OFFLINEFILES_OP_RESPONSE* pResponse) SyncItemBegin;
				public new function HRESULT(IOfflineFilesSyncProgress *self, PWSTR pszFile, HRESULT hrResult, IOfflineFilesSyncErrorInfo* pErrorInfo, OFFLINEFILES_OP_RESPONSE* pResponse) SyncItemResult;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncConflictHandler : IUnknown
		{
			public const new Guid IID = .(0xb6dd5092, 0xc65c, 0x46b6, 0x97, 0xb8, 0xfa, 0xdd, 0x08, 0xe7, 0xe1, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResolveConflict(PWSTR pszPath, uint32 fStateKnown, OFFLINEFILES_SYNC_STATE state, uint32 fChangeDetails, OFFLINEFILES_SYNC_CONFLICT_RESOLVE* pConflictResolution, PWSTR* ppszNewName) mut
			{
				return VT.ResolveConflict(&this, pszPath, fStateKnown, state, fChangeDetails, pConflictResolution, ppszNewName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesSyncConflictHandler *self, PWSTR pszPath, uint32 fStateKnown, OFFLINEFILES_SYNC_STATE state, uint32 fChangeDetails, OFFLINEFILES_SYNC_CONFLICT_RESOLVE* pConflictResolution, PWSTR* ppszNewName) ResolveConflict;
			}
		}
		[CRepr]
		public struct IOfflineFilesItemFilter : IUnknown
		{
			public const new Guid IID = .(0xf4b5a26c, 0xdc05, 0x4f20, 0xad, 0xa4, 0x55, 0x1f, 0x10, 0x77, 0xbe, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterFlags(uint64* pullFlags, uint64* pullMask) mut
			{
				return VT.GetFilterFlags(&this, pullFlags, pullMask);
			}
			public HRESULT GetTimeFilter(FILETIME* pftTime, BOOL* pbEvalTimeOfDay, OFFLINEFILES_ITEM_TIME* pTimeType, OFFLINEFILES_COMPARE* pCompare) mut
			{
				return VT.GetTimeFilter(&this, pftTime, pbEvalTimeOfDay, pTimeType, pCompare);
			}
			public HRESULT GetPatternFilter(char16* pszPattern, uint32 cchPattern) mut
			{
				return VT.GetPatternFilter(&this, pszPattern, cchPattern);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesItemFilter *self, uint64* pullFlags, uint64* pullMask) GetFilterFlags;
				public new function HRESULT(IOfflineFilesItemFilter *self, FILETIME* pftTime, BOOL* pbEvalTimeOfDay, OFFLINEFILES_ITEM_TIME* pTimeType, OFFLINEFILES_COMPARE* pCompare) GetTimeFilter;
				public new function HRESULT(IOfflineFilesItemFilter *self, char16* pszPattern, uint32 cchPattern) GetPatternFilter;
			}
		}
		[CRepr]
		public struct IOfflineFilesItem : IUnknown
		{
			public const new Guid IID = .(0x4a753da6, 0xe044, 0x4f12, 0xa7, 0x18, 0x5d, 0x14, 0xd0, 0x79, 0xa9, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemType(OFFLINEFILES_ITEM_TYPE* pItemType) mut
			{
				return VT.GetItemType(&this, pItemType);
			}
			public HRESULT GetPath(PWSTR* ppszPath) mut
			{
				return VT.GetPath(&this, ppszPath);
			}
			public HRESULT GetParentItem(IOfflineFilesItem** ppItem) mut
			{
				return VT.GetParentItem(&this, ppItem);
			}
			public HRESULT Refresh(uint32 dwQueryFlags) mut
			{
				return VT.Refresh(&this, dwQueryFlags);
			}
			public HRESULT IsMarkedForDeletion(BOOL* pbMarkedForDeletion) mut
			{
				return VT.IsMarkedForDeletion(&this, pbMarkedForDeletion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesItem *self, OFFLINEFILES_ITEM_TYPE* pItemType) GetItemType;
				public new function HRESULT(IOfflineFilesItem *self, PWSTR* ppszPath) GetPath;
				public new function HRESULT(IOfflineFilesItem *self, IOfflineFilesItem** ppItem) GetParentItem;
				public new function HRESULT(IOfflineFilesItem *self, uint32 dwQueryFlags) Refresh;
				public new function HRESULT(IOfflineFilesItem *self, BOOL* pbMarkedForDeletion) IsMarkedForDeletion;
			}
		}
		[CRepr]
		public struct IOfflineFilesServerItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x9b1c9576, 0xa92b, 0x4151, 0x8e, 0x9e, 0x7c, 0x7b, 0x3e, 0xc2, 0xe0, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable
			{
			}
		}
		[CRepr]
		public struct IOfflineFilesShareItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0xbab7e48d, 0x4804, 0x41b5, 0xa4, 0x4d, 0x0f, 0x19, 0x9b, 0x06, 0xb1, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable
			{
			}
		}
		[CRepr]
		public struct IOfflineFilesDirectoryItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x2273597a, 0xa08c, 0x4a00, 0xa3, 0x7a, 0xc1, 0xae, 0x4e, 0x9a, 0x1c, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable
			{
			}
		}
		[CRepr]
		public struct IOfflineFilesFileItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x8dfadead, 0x26c2, 0x4eff, 0x8a, 0x72, 0x6b, 0x50, 0x72, 0x3d, 0x9a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSparse(BOOL* pbIsSparse) mut
			{
				return VT.IsSparse(&this, pbIsSparse);
			}
			public HRESULT IsEncrypted(BOOL* pbIsEncrypted) mut
			{
				return VT.IsEncrypted(&this, pbIsEncrypted);
			}
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable
			{
				public new function HRESULT(IOfflineFilesFileItem *self, BOOL* pbIsSparse) IsSparse;
				public new function HRESULT(IOfflineFilesFileItem *self, BOOL* pbIsEncrypted) IsEncrypted;
			}
		}
		[CRepr]
		public struct IEnumOfflineFilesItems : IUnknown
		{
			public const new Guid IID = .(0xda70e815, 0xc361, 0x4407, 0xbc, 0x0b, 0x0d, 0x70, 0x46, 0xe5, 0xf2, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IOfflineFilesItem** rgelt, uint32* pceltFetched) mut
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
			public HRESULT Clone(IEnumOfflineFilesItems** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumOfflineFilesItems *self, uint32 celt, IOfflineFilesItem** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumOfflineFilesItems *self, uint32 celt) Skip;
				public new function HRESULT(IEnumOfflineFilesItems *self) Reset;
				public new function HRESULT(IEnumOfflineFilesItems *self, IEnumOfflineFilesItems** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IOfflineFilesItemContainer : IUnknown
		{
			public const new Guid IID = .(0x3836f049, 0x9413, 0x45dd, 0xbf, 0x46, 0xb5, 0xaa, 0xa8, 0x2d, 0xc3, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumItems(uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) mut
			{
				return VT.EnumItems(&this, dwQueryFlags, ppenum);
			}
			public HRESULT EnumItemsEx(IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwEnumFlags, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) mut
			{
				return VT.EnumItemsEx(&this, pIncludeFileFilter, pIncludeDirFilter, pExcludeFileFilter, pExcludeDirFilter, dwEnumFlags, dwQueryFlags, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesItemContainer *self, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) EnumItems;
				public new function HRESULT(IOfflineFilesItemContainer *self, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwEnumFlags, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) EnumItemsEx;
			}
		}
		[CRepr]
		public struct IOfflineFilesChangeInfo : IUnknown
		{
			public const new Guid IID = .(0xa96e6fa4, 0xe0d1, 0x4c29, 0x96, 0x0b, 0xee, 0x50, 0x8f, 0xe6, 0x8c, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty(BOOL* pbDirty) mut
			{
				return VT.IsDirty(&this, pbDirty);
			}
			public HRESULT IsDeletedOffline(BOOL* pbDeletedOffline) mut
			{
				return VT.IsDeletedOffline(&this, pbDeletedOffline);
			}
			public HRESULT IsCreatedOffline(BOOL* pbCreatedOffline) mut
			{
				return VT.IsCreatedOffline(&this, pbCreatedOffline);
			}
			public HRESULT IsLocallyModifiedData(BOOL* pbLocallyModifiedData) mut
			{
				return VT.IsLocallyModifiedData(&this, pbLocallyModifiedData);
			}
			public HRESULT IsLocallyModifiedAttributes(BOOL* pbLocallyModifiedAttributes) mut
			{
				return VT.IsLocallyModifiedAttributes(&this, pbLocallyModifiedAttributes);
			}
			public HRESULT IsLocallyModifiedTime(BOOL* pbLocallyModifiedTime) mut
			{
				return VT.IsLocallyModifiedTime(&this, pbLocallyModifiedTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbDirty) IsDirty;
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbDeletedOffline) IsDeletedOffline;
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbCreatedOffline) IsCreatedOffline;
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbLocallyModifiedData) IsLocallyModifiedData;
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbLocallyModifiedAttributes) IsLocallyModifiedAttributes;
				public new function HRESULT(IOfflineFilesChangeInfo *self, BOOL* pbLocallyModifiedTime) IsLocallyModifiedTime;
			}
		}
		[CRepr]
		public struct IOfflineFilesDirtyInfo : IUnknown
		{
			public const new Guid IID = .(0x0f50ce33, 0xbac9, 0x4eaa, 0xa1, 0x1d, 0xda, 0x0e, 0x52, 0x7d, 0x04, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LocalDirtyByteCount(LARGE_INTEGER* pDirtyByteCount) mut
			{
				return VT.LocalDirtyByteCount(&this, pDirtyByteCount);
			}
			public HRESULT RemoteDirtyByteCount(LARGE_INTEGER* pDirtyByteCount) mut
			{
				return VT.RemoteDirtyByteCount(&this, pDirtyByteCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesDirtyInfo *self, LARGE_INTEGER* pDirtyByteCount) LocalDirtyByteCount;
				public new function HRESULT(IOfflineFilesDirtyInfo *self, LARGE_INTEGER* pDirtyByteCount) RemoteDirtyByteCount;
			}
		}
		[CRepr]
		public struct IOfflineFilesFileSysInfo : IUnknown
		{
			public const new Guid IID = .(0xbc1a163f, 0x7bfd, 0x4d88, 0x9c, 0x66, 0x96, 0xea, 0x9a, 0x6a, 0x3d, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributes(OFFLINEFILES_ITEM_COPY copy, uint32* pdwAttributes) mut
			{
				return VT.GetAttributes(&this, copy, pdwAttributes);
			}
			public HRESULT GetTimes(OFFLINEFILES_ITEM_COPY copy, FILETIME* pftCreationTime, FILETIME* pftLastWriteTime, FILETIME* pftChangeTime, FILETIME* pftLastAccessTime) mut
			{
				return VT.GetTimes(&this, copy, pftCreationTime, pftLastWriteTime, pftChangeTime, pftLastAccessTime);
			}
			public HRESULT GetFileSize(OFFLINEFILES_ITEM_COPY copy, LARGE_INTEGER* pSize) mut
			{
				return VT.GetFileSize(&this, copy, pSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesFileSysInfo *self, OFFLINEFILES_ITEM_COPY copy, uint32* pdwAttributes) GetAttributes;
				public new function HRESULT(IOfflineFilesFileSysInfo *self, OFFLINEFILES_ITEM_COPY copy, FILETIME* pftCreationTime, FILETIME* pftLastWriteTime, FILETIME* pftChangeTime, FILETIME* pftLastAccessTime) GetTimes;
				public new function HRESULT(IOfflineFilesFileSysInfo *self, OFFLINEFILES_ITEM_COPY copy, LARGE_INTEGER* pSize) GetFileSize;
			}
		}
		[CRepr]
		public struct IOfflineFilesPinInfo : IUnknown
		{
			public const new Guid IID = .(0x5b2b0655, 0xb3fd, 0x497d, 0xad, 0xeb, 0xbd, 0x15, 0x6b, 0xc8, 0x35, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPinned(BOOL* pbPinned) mut
			{
				return VT.IsPinned(&this, pbPinned);
			}
			public HRESULT IsPinnedForUser(BOOL* pbPinnedForUser, BOOL* pbInherit) mut
			{
				return VT.IsPinnedForUser(&this, pbPinnedForUser, pbInherit);
			}
			public HRESULT IsPinnedForUserByPolicy(BOOL* pbPinnedForUser, BOOL* pbInherit) mut
			{
				return VT.IsPinnedForUserByPolicy(&this, pbPinnedForUser, pbInherit);
			}
			public HRESULT IsPinnedForComputer(BOOL* pbPinnedForComputer, BOOL* pbInherit) mut
			{
				return VT.IsPinnedForComputer(&this, pbPinnedForComputer, pbInherit);
			}
			public HRESULT IsPinnedForFolderRedirection(BOOL* pbPinnedForFolderRedirection, BOOL* pbInherit) mut
			{
				return VT.IsPinnedForFolderRedirection(&this, pbPinnedForFolderRedirection, pbInherit);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesPinInfo *self, BOOL* pbPinned) IsPinned;
				public new function HRESULT(IOfflineFilesPinInfo *self, BOOL* pbPinnedForUser, BOOL* pbInherit) IsPinnedForUser;
				public new function HRESULT(IOfflineFilesPinInfo *self, BOOL* pbPinnedForUser, BOOL* pbInherit) IsPinnedForUserByPolicy;
				public new function HRESULT(IOfflineFilesPinInfo *self, BOOL* pbPinnedForComputer, BOOL* pbInherit) IsPinnedForComputer;
				public new function HRESULT(IOfflineFilesPinInfo *self, BOOL* pbPinnedForFolderRedirection, BOOL* pbInherit) IsPinnedForFolderRedirection;
			}
		}
		[CRepr]
		public struct IOfflineFilesPinInfo2 : IOfflineFilesPinInfo
		{
			public const new Guid IID = .(0x623c58a2, 0x42ed, 0x4ad7, 0xb6, 0x9a, 0x0f, 0x1b, 0x30, 0xa7, 0x2d, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPartlyPinned(BOOL* pbPartlyPinned) mut
			{
				return VT.IsPartlyPinned(&this, pbPartlyPinned);
			}
			[CRepr]
			public struct VTable : IOfflineFilesPinInfo.VTable
			{
				public new function HRESULT(IOfflineFilesPinInfo2 *self, BOOL* pbPartlyPinned) IsPartlyPinned;
			}
		}
		[CRepr]
		public struct IOfflineFilesTransparentCacheInfo : IUnknown
		{
			public const new Guid IID = .(0xbcaf4a01, 0x5b68, 0x4b56, 0xa6, 0xa1, 0x8d, 0x27, 0x86, 0xed, 0xe8, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsTransparentlyCached(BOOL* pbTransparentlyCached) mut
			{
				return VT.IsTransparentlyCached(&this, pbTransparentlyCached);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesTransparentCacheInfo *self, BOOL* pbTransparentlyCached) IsTransparentlyCached;
			}
		}
		[CRepr]
		public struct IOfflineFilesGhostInfo : IUnknown
		{
			public const new Guid IID = .(0x2b09d48c, 0x8ab5, 0x464f, 0xa7, 0x55, 0xa5, 0x9d, 0x92, 0xf9, 0x94, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsGhosted(BOOL* pbGhosted) mut
			{
				return VT.IsGhosted(&this, pbGhosted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesGhostInfo *self, BOOL* pbGhosted) IsGhosted;
			}
		}
		[CRepr]
		public struct IOfflineFilesConnectionInfo : IUnknown
		{
			public const new Guid IID = .(0xefb23a09, 0xa867, 0x4be8, 0x83, 0xa6, 0x86, 0x96, 0x9a, 0x7d, 0x08, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectState(OFFLINEFILES_CONNECT_STATE* pConnectState, OFFLINEFILES_OFFLINE_REASON* pOfflineReason) mut
			{
				return VT.GetConnectState(&this, pConnectState, pOfflineReason);
			}
			public HRESULT SetConnectState(HWND hwndParent, uint32 dwFlags, OFFLINEFILES_CONNECT_STATE ConnectState) mut
			{
				return VT.SetConnectState(&this, hwndParent, dwFlags, ConnectState);
			}
			public HRESULT TransitionOnline(HWND hwndParent, uint32 dwFlags) mut
			{
				return VT.TransitionOnline(&this, hwndParent, dwFlags);
			}
			public HRESULT TransitionOffline(HWND hwndParent, uint32 dwFlags, BOOL bForceOpenFilesClosed, BOOL* pbOpenFilesPreventedTransition) mut
			{
				return VT.TransitionOffline(&this, hwndParent, dwFlags, bForceOpenFilesClosed, pbOpenFilesPreventedTransition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesConnectionInfo *self, OFFLINEFILES_CONNECT_STATE* pConnectState, OFFLINEFILES_OFFLINE_REASON* pOfflineReason) GetConnectState;
				public new function HRESULT(IOfflineFilesConnectionInfo *self, HWND hwndParent, uint32 dwFlags, OFFLINEFILES_CONNECT_STATE ConnectState) SetConnectState;
				public new function HRESULT(IOfflineFilesConnectionInfo *self, HWND hwndParent, uint32 dwFlags) TransitionOnline;
				public new function HRESULT(IOfflineFilesConnectionInfo *self, HWND hwndParent, uint32 dwFlags, BOOL bForceOpenFilesClosed, BOOL* pbOpenFilesPreventedTransition) TransitionOffline;
			}
		}
		[CRepr]
		public struct IOfflineFilesShareInfo : IUnknown
		{
			public const new Guid IID = .(0x7bcc43e7, 0x31ce, 0x4ca4, 0x8c, 0xcd, 0x1c, 0xff, 0x2d, 0xc4, 0x94, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetShareItem(IOfflineFilesShareItem** ppShareItem) mut
			{
				return VT.GetShareItem(&this, ppShareItem);
			}
			public HRESULT GetShareCachingMode(OFFLINEFILES_CACHING_MODE* pCachingMode) mut
			{
				return VT.GetShareCachingMode(&this, pCachingMode);
			}
			public HRESULT IsShareDfsJunction(BOOL* pbIsDfsJunction) mut
			{
				return VT.IsShareDfsJunction(&this, pbIsDfsJunction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesShareInfo *self, IOfflineFilesShareItem** ppShareItem) GetShareItem;
				public new function HRESULT(IOfflineFilesShareInfo *self, OFFLINEFILES_CACHING_MODE* pCachingMode) GetShareCachingMode;
				public new function HRESULT(IOfflineFilesShareInfo *self, BOOL* pbIsDfsJunction) IsShareDfsJunction;
			}
		}
		[CRepr]
		public struct IOfflineFilesSuspend : IUnknown
		{
			public const new Guid IID = .(0x62c4560f, 0xbc0b, 0x48ca, 0xad, 0x9d, 0x34, 0xcb, 0x52, 0x8d, 0x99, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuspendRoot(BOOL bSuspend) mut
			{
				return VT.SuspendRoot(&this, bSuspend);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesSuspend *self, BOOL bSuspend) SuspendRoot;
			}
		}
		[CRepr]
		public struct IOfflineFilesSuspendInfo : IUnknown
		{
			public const new Guid IID = .(0xa457c25b, 0x4e9c, 0x4b04, 0x85, 0xaf, 0x89, 0x32, 0xcc, 0xd9, 0x78, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSuspended(BOOL* pbSuspended, BOOL* pbSuspendedRoot) mut
			{
				return VT.IsSuspended(&this, pbSuspended, pbSuspendedRoot);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesSuspendInfo *self, BOOL* pbSuspended, BOOL* pbSuspendedRoot) IsSuspended;
			}
		}
		[CRepr]
		public struct IOfflineFilesSetting : IUnknown
		{
			public const new Guid IID = .(0xd871d3f7, 0xf613, 0x48a1, 0x82, 0x7e, 0x7a, 0x34, 0xe5, 0x60, 0xff, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppszName) mut
			{
				return VT.GetName(&this, ppszName);
			}
			public HRESULT GetValueType(OFFLINEFILES_SETTING_VALUE_TYPE* pType) mut
			{
				return VT.GetValueType(&this, pType);
			}
			public HRESULT GetPreference(VARIANT* pvarValue, uint32 dwScope) mut
			{
				return VT.GetPreference(&this, pvarValue, dwScope);
			}
			public HRESULT GetPreferenceScope(uint32* pdwScope) mut
			{
				return VT.GetPreferenceScope(&this, pdwScope);
			}
			public HRESULT SetPreference(VARIANT* pvarValue, uint32 dwScope) mut
			{
				return VT.SetPreference(&this, pvarValue, dwScope);
			}
			public HRESULT DeletePreference(uint32 dwScope) mut
			{
				return VT.DeletePreference(&this, dwScope);
			}
			public HRESULT GetPolicy(VARIANT* pvarValue, uint32 dwScope) mut
			{
				return VT.GetPolicy(&this, pvarValue, dwScope);
			}
			public HRESULT GetPolicyScope(uint32* pdwScope) mut
			{
				return VT.GetPolicyScope(&this, pdwScope);
			}
			public HRESULT GetValue(VARIANT* pvarValue, BOOL* pbSetByPolicy) mut
			{
				return VT.GetValue(&this, pvarValue, pbSetByPolicy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesSetting *self, PWSTR* ppszName) GetName;
				public new function HRESULT(IOfflineFilesSetting *self, OFFLINEFILES_SETTING_VALUE_TYPE* pType) GetValueType;
				public new function HRESULT(IOfflineFilesSetting *self, VARIANT* pvarValue, uint32 dwScope) GetPreference;
				public new function HRESULT(IOfflineFilesSetting *self, uint32* pdwScope) GetPreferenceScope;
				public new function HRESULT(IOfflineFilesSetting *self, VARIANT* pvarValue, uint32 dwScope) SetPreference;
				public new function HRESULT(IOfflineFilesSetting *self, uint32 dwScope) DeletePreference;
				public new function HRESULT(IOfflineFilesSetting *self, VARIANT* pvarValue, uint32 dwScope) GetPolicy;
				public new function HRESULT(IOfflineFilesSetting *self, uint32* pdwScope) GetPolicyScope;
				public new function HRESULT(IOfflineFilesSetting *self, VARIANT* pvarValue, BOOL* pbSetByPolicy) GetValue;
			}
		}
		[CRepr]
		public struct IEnumOfflineFilesSettings : IUnknown
		{
			public const new Guid IID = .(0x729680c4, 0x1a38, 0x47bc, 0x9e, 0x5c, 0x02, 0xc5, 0x15, 0x62, 0xac, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IOfflineFilesSetting** rgelt, uint32* pceltFetched) mut
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
			public HRESULT Clone(IEnumOfflineFilesSettings** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumOfflineFilesSettings *self, uint32 celt, IOfflineFilesSetting** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumOfflineFilesSettings *self, uint32 celt) Skip;
				public new function HRESULT(IEnumOfflineFilesSettings *self) Reset;
				public new function HRESULT(IEnumOfflineFilesSettings *self, IEnumOfflineFilesSettings** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IOfflineFilesCache : IUnknown
		{
			public const new Guid IID = .(0x855d6203, 0x7914, 0x48b9, 0x8d, 0x40, 0x4c, 0x56, 0xf5, 0xac, 0xff, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Synchronize(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bAsync, uint32 dwSyncControl, IOfflineFilesSyncConflictHandler* pISyncConflictHandler, IOfflineFilesSyncProgress* pIProgress, Guid* pSyncId) mut
			{
				return VT.Synchronize(&this, hwndParent, rgpszPaths, cPaths, bAsync, dwSyncControl, pISyncConflictHandler, pIProgress, pSyncId);
			}
			public HRESULT DeleteItems(PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) mut
			{
				return VT.DeleteItems(&this, rgpszPaths, cPaths, dwFlags, bAsync, pIProgress);
			}
			public HRESULT DeleteItemsForUser(PWSTR pszUser, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) mut
			{
				return VT.DeleteItemsForUser(&this, pszUser, rgpszPaths, cPaths, dwFlags, bAsync, pIProgress);
			}
			public HRESULT Pin(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) mut
			{
				return VT.Pin(&this, hwndParent, rgpszPaths, cPaths, bDeep, bAsync, dwPinControlFlags, pIProgress);
			}
			public HRESULT Unpin(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) mut
			{
				return VT.Unpin(&this, hwndParent, rgpszPaths, cPaths, bDeep, bAsync, dwPinControlFlags, pIProgress);
			}
			public HRESULT GetEncryptionStatus(BOOL* pbEncrypted, BOOL* pbPartial) mut
			{
				return VT.GetEncryptionStatus(&this, pbEncrypted, pbPartial);
			}
			public HRESULT Encrypt(HWND hwndParent, BOOL bEncrypt, uint32 dwEncryptionControlFlags, BOOL bAsync, IOfflineFilesSyncProgress* pIProgress) mut
			{
				return VT.Encrypt(&this, hwndParent, bEncrypt, dwEncryptionControlFlags, bAsync, pIProgress);
			}
			public HRESULT FindItem(PWSTR pszPath, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) mut
			{
				return VT.FindItem(&this, pszPath, dwQueryFlags, ppItem);
			}
			public HRESULT FindItemEx(PWSTR pszPath, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) mut
			{
				return VT.FindItemEx(&this, pszPath, pIncludeFileFilter, pIncludeDirFilter, pExcludeFileFilter, pExcludeDirFilter, dwQueryFlags, ppItem);
			}
			public HRESULT RenameItem(PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) mut
			{
				return VT.RenameItem(&this, pszPathOriginal, pszPathNew, bReplaceIfExists);
			}
			public HRESULT GetLocation(PWSTR* ppszPath) mut
			{
				return VT.GetLocation(&this, ppszPath);
			}
			public HRESULT GetDiskSpaceInformation(uint64* pcbVolumeTotal, uint64* pcbLimit, uint64* pcbUsed, uint64* pcbUnpinnedLimit, uint64* pcbUnpinnedUsed) mut
			{
				return VT.GetDiskSpaceInformation(&this, pcbVolumeTotal, pcbLimit, pcbUsed, pcbUnpinnedLimit, pcbUnpinnedUsed);
			}
			public HRESULT SetDiskSpaceLimits(uint64 cbLimit, uint64 cbUnpinnedLimit) mut
			{
				return VT.SetDiskSpaceLimits(&this, cbLimit, cbUnpinnedLimit);
			}
			public HRESULT ProcessAdminPinPolicy(IOfflineFilesSyncProgress* pPinProgress, IOfflineFilesSyncProgress* pUnpinProgress) mut
			{
				return VT.ProcessAdminPinPolicy(&this, pPinProgress, pUnpinProgress);
			}
			public HRESULT GetSettingObject(PWSTR pszSettingName, IOfflineFilesSetting** ppSetting) mut
			{
				return VT.GetSettingObject(&this, pszSettingName, ppSetting);
			}
			public HRESULT EnumSettingObjects(IEnumOfflineFilesSettings** ppEnum) mut
			{
				return VT.EnumSettingObjects(&this, ppEnum);
			}
			public HRESULT IsPathCacheable(PWSTR pszPath, BOOL* pbCacheable, OFFLINEFILES_CACHING_MODE* pShareCachingMode) mut
			{
				return VT.IsPathCacheable(&this, pszPath, pbCacheable, pShareCachingMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOfflineFilesCache *self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bAsync, uint32 dwSyncControl, IOfflineFilesSyncConflictHandler* pISyncConflictHandler, IOfflineFilesSyncProgress* pIProgress, Guid* pSyncId) Synchronize;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) DeleteItems;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszUser, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) DeleteItemsForUser;
				public new function HRESULT(IOfflineFilesCache *self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) Pin;
				public new function HRESULT(IOfflineFilesCache *self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) Unpin;
				public new function HRESULT(IOfflineFilesCache *self, BOOL* pbEncrypted, BOOL* pbPartial) GetEncryptionStatus;
				public new function HRESULT(IOfflineFilesCache *self, HWND hwndParent, BOOL bEncrypt, uint32 dwEncryptionControlFlags, BOOL bAsync, IOfflineFilesSyncProgress* pIProgress) Encrypt;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszPath, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) FindItem;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszPath, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) FindItemEx;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) RenameItem;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR* ppszPath) GetLocation;
				public new function HRESULT(IOfflineFilesCache *self, uint64* pcbVolumeTotal, uint64* pcbLimit, uint64* pcbUsed, uint64* pcbUnpinnedLimit, uint64* pcbUnpinnedUsed) GetDiskSpaceInformation;
				public new function HRESULT(IOfflineFilesCache *self, uint64 cbLimit, uint64 cbUnpinnedLimit) SetDiskSpaceLimits;
				public new function HRESULT(IOfflineFilesCache *self, IOfflineFilesSyncProgress* pPinProgress, IOfflineFilesSyncProgress* pUnpinProgress) ProcessAdminPinPolicy;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszSettingName, IOfflineFilesSetting** ppSetting) GetSettingObject;
				public new function HRESULT(IOfflineFilesCache *self, IEnumOfflineFilesSettings** ppEnum) EnumSettingObjects;
				public new function HRESULT(IOfflineFilesCache *self, PWSTR pszPath, BOOL* pbCacheable, OFFLINEFILES_CACHING_MODE* pShareCachingMode) IsPathCacheable;
			}
		}
		[CRepr]
		public struct IOfflineFilesCache2 : IOfflineFilesCache
		{
			public const new Guid IID = .(0x8c075039, 0x1551, 0x4ed9, 0x87, 0x81, 0x56, 0x70, 0x5c, 0x04, 0xd3, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameItemEx(PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) mut
			{
				return VT.RenameItemEx(&this, pszPathOriginal, pszPathNew, bReplaceIfExists);
			}
			[CRepr]
			public struct VTable : IOfflineFilesCache.VTable
			{
				public new function HRESULT(IOfflineFilesCache2 *self, PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) RenameItemEx;
			}
		}
		
		// --- Functions ---
		
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesEnable(BOOL bEnable, BOOL* pbRebootRequired);
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesStart();
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesQueryStatus(BOOL* pbActive, BOOL* pbEnabled);
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesQueryStatusEx(BOOL* pbActive, BOOL* pbEnabled, BOOL* pbAvailable);
		
	}
}
