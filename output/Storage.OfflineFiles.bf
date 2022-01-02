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
		
		public enum OFFLINEFILES_ITEM_TYPE : int32
		{
			FILE = 0,
			DIRECTORY = 1,
			SHARE = 2,
			SERVER = 3,
		}
		public enum OFFLINEFILES_ITEM_COPY : int32
		{
			LOCAL = 0,
			REMOTE = 1,
			ORIGINAL = 2,
		}
		public enum OFFLINEFILES_CONNECT_STATE : int32
		{
			UNKNOWN = 0,
			OFFLINE = 1,
			ONLINE = 2,
			TRANSPARENTLY_CACHED = 3,
			PARTLY_TRANSPARENTLY_CACHED = 4,
		}
		public enum OFFLINEFILES_OFFLINE_REASON : int32
		{
			UNKNOWN = 0,
			NOT_APPLICABLE = 1,
			CONNECTION_FORCED = 2,
			CONNECTION_SLOW = 3,
			CONNECTION_ERROR = 4,
			ITEM_VERSION_CONFLICT = 5,
			ITEM_SUSPENDED = 6,
		}
		public enum OFFLINEFILES_CACHING_MODE : int32
		{
			NONE = 0,
			NOCACHING = 1,
			MANUAL = 2,
			AUTO_DOC = 3,
			AUTO_PROGANDDOC = 4,
		}
		public enum OFFLINEFILES_OP_RESPONSE : int32
		{
			CONTINUE = 0,
			RETRY = 1,
			ABORT = 2,
		}
		public enum OFFLINEFILES_EVENTS : int32
		{
			EVENT_CACHEMOVED = 0,
			EVENT_CACHEISFULL = 1,
			EVENT_CACHEISCORRUPTED = 2,
			EVENT_ENABLED = 3,
			EVENT_ENCRYPTIONCHANGED = 4,
			EVENT_SYNCBEGIN = 5,
			EVENT_SYNCFILERESULT = 6,
			EVENT_SYNCCONFLICTRECADDED = 7,
			EVENT_SYNCCONFLICTRECUPDATED = 8,
			EVENT_SYNCCONFLICTRECREMOVED = 9,
			EVENT_SYNCEND = 10,
			EVENT_BACKGROUNDSYNCBEGIN = 11,
			EVENT_BACKGROUNDSYNCEND = 12,
			EVENT_NETTRANSPORTARRIVED = 13,
			EVENT_NONETTRANSPORTS = 14,
			EVENT_ITEMDISCONNECTED = 15,
			EVENT_ITEMRECONNECTED = 16,
			EVENT_ITEMAVAILABLEOFFLINE = 17,
			EVENT_ITEMNOTAVAILABLEOFFLINE = 18,
			EVENT_ITEMPINNED = 19,
			EVENT_ITEMNOTPINNED = 20,
			EVENT_ITEMMODIFIED = 21,
			EVENT_ITEMADDEDTOCACHE = 22,
			EVENT_ITEMDELETEDFROMCACHE = 23,
			EVENT_ITEMRENAMED = 24,
			EVENT_DATALOST = 25,
			EVENT_PING = 26,
			EVENT_ITEMRECONNECTBEGIN = 27,
			EVENT_ITEMRECONNECTEND = 28,
			EVENT_CACHEEVICTBEGIN = 29,
			EVENT_CACHEEVICTEND = 30,
			EVENT_POLICYCHANGEDETECTED = 31,
			EVENT_PREFERENCECHANGEDETECTED = 32,
			EVENT_SETTINGSCHANGESAPPLIED = 33,
			EVENT_TRANSPARENTCACHEITEMNOTIFY = 34,
			EVENT_PREFETCHFILEBEGIN = 35,
			EVENT_PREFETCHFILEEND = 36,
			EVENT_PREFETCHCLOSEHANDLEBEGIN = 37,
			EVENT_PREFETCHCLOSEHANDLEEND = 38,
			NUM_EVENTS = 39,
		}
		public enum OFFLINEFILES_PATHFILTER_MATCH : int32
		{
			SELF = 0,
			CHILD = 1,
			DESCENDENT = 2,
			SELFORCHILD = 3,
			SELFORDESCENDENT = 4,
		}
		public enum OFFLINEFILES_SYNC_CONFLICT_RESOLVE : int32
		{
			RESOLVE_NONE = 0,
			RESOLVE_KEEPLOCAL = 1,
			RESOLVE_KEEPREMOTE = 2,
			RESOLVE_KEEPALLCHANGES = 3,
			RESOLVE_KEEPLATEST = 4,
			RESOLVE_LOG = 5,
			RESOLVE_SKIP = 6,
			ABORT = 7,
			RESOLVE_NUMCODES = 8,
		}
		public enum OFFLINEFILES_ITEM_TIME : int32
		{
			CREATION = 0,
			LASTACCESS = 1,
			LASTWRITE = 2,
		}
		public enum OFFLINEFILES_COMPARE : int32
		{
			EQ = 0,
			NEQ = 1,
			LT = 2,
			GT = 3,
			LTE = 4,
			GTE = 5,
		}
		public enum OFFLINEFILES_SETTING_VALUE_TYPE : int32
		{
			UI4 = 0,
			BSTR = 1,
			BSTR_DBLNULTERM = 2,
			_2DIM_ARRAY_BSTR_UI4 = 3,
			_2DIM_ARRAY_BSTR_BSTR = 4,
		}
		public enum OFFLINEFILES_SYNC_OPERATION : int32
		{
			CREATE_COPY_ON_SERVER = 0,
			CREATE_COPY_ON_CLIENT = 1,
			SYNC_TO_SERVER = 2,
			SYNC_TO_CLIENT = 3,
			DELETE_SERVER_COPY = 4,
			DELETE_CLIENT_COPY = 5,
			PIN = 6,
			PREPARE = 7,
		}
		public enum OFFLINEFILES_SYNC_STATE : int32
		{
			Stable = 0,
			FileOnClient_DirOnServer = 1,
			FileOnClient_NoServerCopy = 2,
			DirOnClient_FileOnServer = 3,
			DirOnClient_FileChangedOnServer = 4,
			DirOnClient_NoServerCopy = 5,
			FileCreatedOnClient_NoServerCopy = 6,
			FileCreatedOnClient_FileChangedOnServer = 7,
			FileCreatedOnClient_DirChangedOnServer = 8,
			FileCreatedOnClient_FileOnServer = 9,
			FileCreatedOnClient_DirOnServer = 10,
			FileCreatedOnClient_DeletedOnServer = 11,
			FileChangedOnClient_ChangedOnServer = 12,
			FileChangedOnClient_DirOnServer = 13,
			FileChangedOnClient_DirChangedOnServer = 14,
			FileChangedOnClient_DeletedOnServer = 15,
			FileSparseOnClient_ChangedOnServer = 16,
			FileSparseOnClient_DeletedOnServer = 17,
			FileSparseOnClient_DirOnServer = 18,
			FileSparseOnClient_DirChangedOnServer = 19,
			DirCreatedOnClient_NoServerCopy = 20,
			DirCreatedOnClient_DirOnServer = 21,
			DirCreatedOnClient_FileOnServer = 22,
			DirCreatedOnClient_FileChangedOnServer = 23,
			DirCreatedOnClient_DirChangedOnServer = 24,
			DirCreatedOnClient_DeletedOnServer = 25,
			DirChangedOnClient_FileOnServer = 26,
			DirChangedOnClient_FileChangedOnServer = 27,
			DirChangedOnClient_ChangedOnServer = 28,
			DirChangedOnClient_DeletedOnServer = 29,
			NoClientCopy_FileOnServer = 30,
			NoClientCopy_DirOnServer = 31,
			NoClientCopy_FileChangedOnServer = 32,
			NoClientCopy_DirChangedOnServer = 33,
			DeletedOnClient_FileOnServer = 34,
			DeletedOnClient_DirOnServer = 35,
			DeletedOnClient_FileChangedOnServer = 36,
			DeletedOnClient_DirChangedOnServer = 37,
			FileSparseOnClient = 38,
			FileChangedOnClient = 39,
			FileRenamedOnClient = 40,
			DirSparseOnClient = 41,
			DirChangedOnClient = 42,
			DirRenamedOnClient = 43,
			FileChangedOnServer = 44,
			FileRenamedOnServer = 45,
			FileDeletedOnServer = 46,
			DirChangedOnServer = 47,
			DirRenamedOnServer = 48,
			DirDeletedOnServer = 49,
			FileReplacedAndDeletedOnClient_FileOnServer = 50,
			FileReplacedAndDeletedOnClient_FileChangedOnServer = 51,
			FileReplacedAndDeletedOnClient_DirOnServer = 52,
			FileReplacedAndDeletedOnClient_DirChangedOnServer = 53,
			NUMSTATES = 54,
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
			
			public HRESULT CacheMoved(PWSTR pszOldPath, PWSTR pszNewPath) mut => VT.CacheMoved(ref this, pszOldPath, pszNewPath);
			public HRESULT CacheIsFull() mut => VT.CacheIsFull(ref this);
			public HRESULT CacheIsCorrupted() mut => VT.CacheIsCorrupted(ref this);
			public HRESULT Enabled(BOOL bEnabled) mut => VT.Enabled(ref this, bEnabled);
			public HRESULT EncryptionChanged(BOOL bWasEncrypted, BOOL bWasPartial, BOOL bIsEncrypted, BOOL bIsPartial) mut => VT.EncryptionChanged(ref this, bWasEncrypted, bWasPartial, bIsEncrypted, bIsPartial);
			public HRESULT SyncBegin(in Guid rSyncId) mut => VT.SyncBegin(ref this, rSyncId);
			public HRESULT SyncFileResult(in Guid rSyncId, PWSTR pszFile, HRESULT hrResult) mut => VT.SyncFileResult(ref this, rSyncId, pszFile, hrResult);
			public HRESULT SyncConflictRecAdded(PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut => VT.SyncConflictRecAdded(ref this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			public HRESULT SyncConflictRecUpdated(PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut => VT.SyncConflictRecUpdated(ref this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			public HRESULT SyncConflictRecRemoved(PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) mut => VT.SyncConflictRecRemoved(ref this, pszConflictPath, pftConflictDateTime, ConflictSyncState);
			public HRESULT SyncEnd(in Guid rSyncId, HRESULT hrResult) mut => VT.SyncEnd(ref this, rSyncId, hrResult);
			public HRESULT NetTransportArrived() mut => VT.NetTransportArrived(ref this);
			public HRESULT NoNetTransports() mut => VT.NoNetTransports(ref this);
			public HRESULT ItemDisconnected(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemDisconnected(ref this, pszPath, ItemType);
			public HRESULT ItemReconnected(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemReconnected(ref this, pszPath, ItemType);
			public HRESULT ItemAvailableOffline(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemAvailableOffline(ref this, pszPath, ItemType);
			public HRESULT ItemNotAvailableOffline(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemNotAvailableOffline(ref this, pszPath, ItemType);
			public HRESULT ItemPinned(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemPinned(ref this, pszPath, ItemType);
			public HRESULT ItemNotPinned(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemNotPinned(ref this, pszPath, ItemType);
			public HRESULT ItemModified(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes) mut => VT.ItemModified(ref this, pszPath, ItemType, bModifiedData, bModifiedAttributes);
			public HRESULT ItemAddedToCache(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemAddedToCache(ref this, pszPath, ItemType);
			public HRESULT ItemDeletedFromCache(PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemDeletedFromCache(ref this, pszPath, ItemType);
			public HRESULT ItemRenamed(PWSTR pszOldPath, PWSTR pszNewPath, OFFLINEFILES_ITEM_TYPE ItemType) mut => VT.ItemRenamed(ref this, pszOldPath, pszNewPath, ItemType);
			public HRESULT DataLost() mut => VT.DataLost(ref this);
			public HRESULT Ping() mut => VT.Ping(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszOldPath, PWSTR pszNewPath) CacheMoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) CacheIsFull;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) CacheIsCorrupted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, BOOL bEnabled) Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, BOOL bWasEncrypted, BOOL bWasPartial, BOOL bIsEncrypted, BOOL bIsPartial) EncryptionChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, in Guid rSyncId) SyncBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, in Guid rSyncId, PWSTR pszFile, HRESULT hrResult) SyncFileResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecUpdated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszConflictPath, in FILETIME pftConflictDateTime, OFFLINEFILES_SYNC_STATE ConflictSyncState) SyncConflictRecRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, in Guid rSyncId, HRESULT hrResult) SyncEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) NetTransportArrived;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) NoNetTransports;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemDisconnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemReconnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemAvailableOffline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemNotAvailableOffline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemPinned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemNotPinned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes) ItemModified;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemAddedToCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemDeletedFromCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self, PWSTR pszOldPath, PWSTR pszNewPath, OFFLINEFILES_ITEM_TYPE ItemType) ItemRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) DataLost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents self) Ping;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents2 : IOfflineFilesEvents
		{
			public const new Guid IID = .(0x1ead8f56, 0xff76, 0x4faa, 0xa7, 0x95, 0x6f, 0x6e, 0xf7, 0x92, 0x49, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ItemReconnectBegin() mut => VT.ItemReconnectBegin(ref this);
			public HRESULT ItemReconnectEnd() mut => VT.ItemReconnectEnd(ref this);
			public HRESULT CacheEvictBegin() mut => VT.CacheEvictBegin(ref this);
			public HRESULT CacheEvictEnd() mut => VT.CacheEvictEnd(ref this);
			public HRESULT BackgroundSyncBegin(uint32 dwSyncControlFlags) mut => VT.BackgroundSyncBegin(ref this, dwSyncControlFlags);
			public HRESULT BackgroundSyncEnd(uint32 dwSyncControlFlags) mut => VT.BackgroundSyncEnd(ref this, dwSyncControlFlags);
			public HRESULT PolicyChangeDetected() mut => VT.PolicyChangeDetected(ref this);
			public HRESULT PreferenceChangeDetected() mut => VT.PreferenceChangeDetected(ref this);
			public HRESULT SettingsChangesApplied() mut => VT.SettingsChangesApplied(ref this);

			[CRepr]
			public struct VTable : IOfflineFilesEvents.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) ItemReconnectBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) ItemReconnectEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) CacheEvictBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) CacheEvictEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self, uint32 dwSyncControlFlags) BackgroundSyncBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self, uint32 dwSyncControlFlags) BackgroundSyncEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) PolicyChangeDetected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) PreferenceChangeDetected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents2 self) SettingsChangesApplied;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents3 : IOfflineFilesEvents2
		{
			public const new Guid IID = .(0x9ba04a45, 0xee69, 0x42f0, 0x9a, 0xb1, 0x7d, 0xb5, 0xc8, 0x80, 0x58, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TransparentCacheItemNotify(PWSTR pszPath, OFFLINEFILES_EVENTS EventType, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes, PWSTR pzsOldPath) mut => VT.TransparentCacheItemNotify(ref this, pszPath, EventType, ItemType, bModifiedData, bModifiedAttributes, pzsOldPath);
			public HRESULT PrefetchFileBegin(PWSTR pszPath) mut => VT.PrefetchFileBegin(ref this, pszPath);
			public HRESULT PrefetchFileEnd(PWSTR pszPath, HRESULT hrResult) mut => VT.PrefetchFileEnd(ref this, pszPath, hrResult);

			[CRepr]
			public struct VTable : IOfflineFilesEvents2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents3 self, PWSTR pszPath, OFFLINEFILES_EVENTS EventType, OFFLINEFILES_ITEM_TYPE ItemType, BOOL bModifiedData, BOOL bModifiedAttributes, PWSTR pzsOldPath) TransparentCacheItemNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents3 self, PWSTR pszPath) PrefetchFileBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents3 self, PWSTR pszPath, HRESULT hrResult) PrefetchFileEnd;
			}
		}
		[CRepr]
		public struct IOfflineFilesEvents4 : IOfflineFilesEvents3
		{
			public const new Guid IID = .(0xdbd69b1e, 0xc7d2, 0x473e, 0xb3, 0x5f, 0x9d, 0x8c, 0x24, 0xc0, 0xc4, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrefetchCloseHandleBegin() mut => VT.PrefetchCloseHandleBegin(ref this);
			public HRESULT PrefetchCloseHandleEnd(uint32 dwClosedHandleCount, uint32 dwOpenHandleCount, HRESULT hrResult) mut => VT.PrefetchCloseHandleEnd(ref this, dwClosedHandleCount, dwOpenHandleCount, hrResult);

			[CRepr]
			public struct VTable : IOfflineFilesEvents3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents4 self) PrefetchCloseHandleBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEvents4 self, uint32 dwClosedHandleCount, uint32 dwOpenHandleCount, HRESULT hrResult) PrefetchCloseHandleEnd;
			}
		}
		[CRepr]
		public struct IOfflineFilesEventsFilter : IUnknown
		{
			public const new Guid IID = .(0x33fc4e1b, 0x0716, 0x40fa, 0xba, 0x65, 0x6e, 0x62, 0xa8, 0x4a, 0x84, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPathFilter(PWSTR* ppszFilter, out OFFLINEFILES_PATHFILTER_MATCH pMatch) mut => VT.GetPathFilter(ref this, ppszFilter, out pMatch);
			public HRESULT GetIncludedEvents(uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, out uint32 pcEvents) mut => VT.GetIncludedEvents(ref this, cElements, prgEvents, out pcEvents);
			public HRESULT GetExcludedEvents(uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, out uint32 pcEvents) mut => VT.GetExcludedEvents(ref this, cElements, prgEvents, out pcEvents);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEventsFilter self, PWSTR* ppszFilter, out OFFLINEFILES_PATHFILTER_MATCH pMatch) GetPathFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEventsFilter self, uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, out uint32 pcEvents) GetIncludedEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesEventsFilter self, uint32 cElements, OFFLINEFILES_EVENTS* prgEvents, out uint32 pcEvents) GetExcludedEvents;
			}
		}
		[CRepr]
		public struct IOfflineFilesErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x7112fa5f, 0x7571, 0x435a, 0x8e, 0xb7, 0x19, 0x5c, 0x7c, 0x14, 0x29, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRawData(BYTE_BLOB** ppBlob) mut => VT.GetRawData(ref this, ppBlob);
			public HRESULT GetDescription(PWSTR* ppszDescription) mut => VT.GetDescription(ref this, ppszDescription);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesErrorInfo self, BYTE_BLOB** ppBlob) GetRawData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesErrorInfo self, PWSTR* ppszDescription) GetDescription;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncErrorItemInfo : IUnknown
		{
			public const new Guid IID = .(0xecdbaf0d, 0x6a18, 0x4d55, 0x80, 0x17, 0x10, 0x8f, 0x76, 0x60, 0xba, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileAttributes(out uint32 pdwAttributes) mut => VT.GetFileAttributes(ref this, out pdwAttributes);
			public HRESULT GetFileTimes(out FILETIME pftLastWrite, out FILETIME pftChange) mut => VT.GetFileTimes(ref this, out pftLastWrite, out pftChange);
			public HRESULT GetFileSize(out LARGE_INTEGER pSize) mut => VT.GetFileSize(ref this, out pSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorItemInfo self, out uint32 pdwAttributes) GetFileAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorItemInfo self, out FILETIME pftLastWrite, out FILETIME pftChange) GetFileTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorItemInfo self, out LARGE_INTEGER pSize) GetFileSize;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncErrorInfo : IOfflineFilesErrorInfo
		{
			public const new Guid IID = .(0x59f95e46, 0xeb54, 0x49d1, 0xbe, 0x76, 0xde, 0x95, 0x45, 0x8d, 0x01, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncOperation(out OFFLINEFILES_SYNC_OPERATION pSyncOp) mut => VT.GetSyncOperation(ref this, out pSyncOp);
			public HRESULT GetItemChangeFlags(out uint32 pdwItemChangeFlags) mut => VT.GetItemChangeFlags(ref this, out pdwItemChangeFlags);
			public HRESULT InfoEnumerated(out BOOL pbLocalEnumerated, out BOOL pbRemoteEnumerated, out BOOL pbOriginalEnumerated) mut => VT.InfoEnumerated(ref this, out pbLocalEnumerated, out pbRemoteEnumerated, out pbOriginalEnumerated);
			public HRESULT InfoAvailable(out BOOL pbLocalInfo, out BOOL pbRemoteInfo, out BOOL pbOriginalInfo) mut => VT.InfoAvailable(ref this, out pbLocalInfo, out pbRemoteInfo, out pbOriginalInfo);
			public HRESULT GetLocalInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut => VT.GetLocalInfo(ref this, ppInfo);
			public HRESULT GetRemoteInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut => VT.GetRemoteInfo(ref this, ppInfo);
			public HRESULT GetOriginalInfo(IOfflineFilesSyncErrorItemInfo** ppInfo) mut => VT.GetOriginalInfo(ref this, ppInfo);

			[CRepr]
			public struct VTable : IOfflineFilesErrorInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, out OFFLINEFILES_SYNC_OPERATION pSyncOp) GetSyncOperation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, out uint32 pdwItemChangeFlags) GetItemChangeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, out BOOL pbLocalEnumerated, out BOOL pbRemoteEnumerated, out BOOL pbOriginalEnumerated) InfoEnumerated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, out BOOL pbLocalInfo, out BOOL pbRemoteInfo, out BOOL pbOriginalInfo) InfoAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetLocalInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetRemoteInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncErrorInfo self, IOfflineFilesSyncErrorItemInfo** ppInfo) GetOriginalInfo;
			}
		}
		[CRepr]
		public struct IOfflineFilesProgress : IUnknown
		{
			public const new Guid IID = .(0xfad63237, 0xc55b, 0x4911, 0x98, 0x50, 0xbc, 0xf9, 0x6d, 0x4c, 0x97, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin(out BOOL pbAbort) mut => VT.Begin(ref this, out pbAbort);
			public HRESULT QueryAbort(out BOOL pbAbort) mut => VT.QueryAbort(ref this, out pbAbort);
			public HRESULT End(HRESULT hrResult) mut => VT.End(ref this, hrResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesProgress self, out BOOL pbAbort) Begin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesProgress self, out BOOL pbAbort) QueryAbort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesProgress self, HRESULT hrResult) End;
			}
		}
		[CRepr]
		public struct IOfflineFilesSimpleProgress : IOfflineFilesProgress
		{
			public const new Guid IID = .(0xc34f7f9b, 0xc43d, 0x4f9d, 0xa7, 0x76, 0xc0, 0xeb, 0x6d, 0xe5, 0xd4, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ItemBegin(PWSTR pszFile, out OFFLINEFILES_OP_RESPONSE pResponse) mut => VT.ItemBegin(ref this, pszFile, out pResponse);
			public HRESULT ItemResult(PWSTR pszFile, HRESULT hrResult, out OFFLINEFILES_OP_RESPONSE pResponse) mut => VT.ItemResult(ref this, pszFile, hrResult, out pResponse);

			[CRepr]
			public struct VTable : IOfflineFilesProgress.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSimpleProgress self, PWSTR pszFile, out OFFLINEFILES_OP_RESPONSE pResponse) ItemBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSimpleProgress self, PWSTR pszFile, HRESULT hrResult, out OFFLINEFILES_OP_RESPONSE pResponse) ItemResult;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncProgress : IOfflineFilesProgress
		{
			public const new Guid IID = .(0x6931f49a, 0x6fc7, 0x4c1b, 0xb2, 0x65, 0x56, 0x79, 0x3f, 0xc4, 0x51, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SyncItemBegin(PWSTR pszFile, out OFFLINEFILES_OP_RESPONSE pResponse) mut => VT.SyncItemBegin(ref this, pszFile, out pResponse);
			public HRESULT SyncItemResult(PWSTR pszFile, HRESULT hrResult, IOfflineFilesSyncErrorInfo* pErrorInfo, out OFFLINEFILES_OP_RESPONSE pResponse) mut => VT.SyncItemResult(ref this, pszFile, hrResult, pErrorInfo, out pResponse);

			[CRepr]
			public struct VTable : IOfflineFilesProgress.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncProgress self, PWSTR pszFile, out OFFLINEFILES_OP_RESPONSE pResponse) SyncItemBegin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncProgress self, PWSTR pszFile, HRESULT hrResult, IOfflineFilesSyncErrorInfo* pErrorInfo, out OFFLINEFILES_OP_RESPONSE pResponse) SyncItemResult;
			}
		}
		[CRepr]
		public struct IOfflineFilesSyncConflictHandler : IUnknown
		{
			public const new Guid IID = .(0xb6dd5092, 0xc65c, 0x46b6, 0x97, 0xb8, 0xfa, 0xdd, 0x08, 0xe7, 0xe1, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResolveConflict(PWSTR pszPath, uint32 fStateKnown, OFFLINEFILES_SYNC_STATE state, uint32 fChangeDetails, out OFFLINEFILES_SYNC_CONFLICT_RESOLVE pConflictResolution, PWSTR* ppszNewName) mut => VT.ResolveConflict(ref this, pszPath, fStateKnown, state, fChangeDetails, out pConflictResolution, ppszNewName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSyncConflictHandler self, PWSTR pszPath, uint32 fStateKnown, OFFLINEFILES_SYNC_STATE state, uint32 fChangeDetails, out OFFLINEFILES_SYNC_CONFLICT_RESOLVE pConflictResolution, PWSTR* ppszNewName) ResolveConflict;
			}
		}
		[CRepr]
		public struct IOfflineFilesItemFilter : IUnknown
		{
			public const new Guid IID = .(0xf4b5a26c, 0xdc05, 0x4f20, 0xad, 0xa4, 0x55, 0x1f, 0x10, 0x77, 0xbe, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterFlags(out uint64 pullFlags, out uint64 pullMask) mut => VT.GetFilterFlags(ref this, out pullFlags, out pullMask);
			public HRESULT GetTimeFilter(out FILETIME pftTime, out BOOL pbEvalTimeOfDay, out OFFLINEFILES_ITEM_TIME pTimeType, out OFFLINEFILES_COMPARE pCompare) mut => VT.GetTimeFilter(ref this, out pftTime, out pbEvalTimeOfDay, out pTimeType, out pCompare);
			public HRESULT GetPatternFilter(char16* pszPattern, uint32 cchPattern) mut => VT.GetPatternFilter(ref this, pszPattern, cchPattern);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItemFilter self, out uint64 pullFlags, out uint64 pullMask) GetFilterFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItemFilter self, out FILETIME pftTime, out BOOL pbEvalTimeOfDay, out OFFLINEFILES_ITEM_TIME pTimeType, out OFFLINEFILES_COMPARE pCompare) GetTimeFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItemFilter self, char16* pszPattern, uint32 cchPattern) GetPatternFilter;
			}
		}
		[CRepr]
		public struct IOfflineFilesItem : IUnknown
		{
			public const new Guid IID = .(0x4a753da6, 0xe044, 0x4f12, 0xa7, 0x18, 0x5d, 0x14, 0xd0, 0x79, 0xa9, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemType(out OFFLINEFILES_ITEM_TYPE pItemType) mut => VT.GetItemType(ref this, out pItemType);
			public HRESULT GetPath(PWSTR* ppszPath) mut => VT.GetPath(ref this, ppszPath);
			public HRESULT GetParentItem(IOfflineFilesItem** ppItem) mut => VT.GetParentItem(ref this, ppItem);
			public HRESULT Refresh(uint32 dwQueryFlags) mut => VT.Refresh(ref this, dwQueryFlags);
			public HRESULT IsMarkedForDeletion(out BOOL pbMarkedForDeletion) mut => VT.IsMarkedForDeletion(ref this, out pbMarkedForDeletion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItem self, out OFFLINEFILES_ITEM_TYPE pItemType) GetItemType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItem self, PWSTR* ppszPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItem self, IOfflineFilesItem** ppItem) GetParentItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItem self, uint32 dwQueryFlags) Refresh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItem self, out BOOL pbMarkedForDeletion) IsMarkedForDeletion;
			}
		}
		[CRepr]
		public struct IOfflineFilesServerItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x9b1c9576, 0xa92b, 0x4151, 0x8e, 0x9e, 0x7c, 0x7b, 0x3e, 0xc2, 0xe0, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable {}
		}
		[CRepr]
		public struct IOfflineFilesShareItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0xbab7e48d, 0x4804, 0x41b5, 0xa4, 0x4d, 0x0f, 0x19, 0x9b, 0x06, 0xb1, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable {}
		}
		[CRepr]
		public struct IOfflineFilesDirectoryItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x2273597a, 0xa08c, 0x4a00, 0xa3, 0x7a, 0xc1, 0xae, 0x4e, 0x9a, 0x1c, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable {}
		}
		[CRepr]
		public struct IOfflineFilesFileItem : IOfflineFilesItem
		{
			public const new Guid IID = .(0x8dfadead, 0x26c2, 0x4eff, 0x8a, 0x72, 0x6b, 0x50, 0x72, 0x3d, 0x9a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSparse(out BOOL pbIsSparse) mut => VT.IsSparse(ref this, out pbIsSparse);
			public HRESULT IsEncrypted(out BOOL pbIsEncrypted) mut => VT.IsEncrypted(ref this, out pbIsEncrypted);

			[CRepr]
			public struct VTable : IOfflineFilesItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesFileItem self, out BOOL pbIsSparse) IsSparse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesFileItem self, out BOOL pbIsEncrypted) IsEncrypted;
			}
		}
		[CRepr]
		public struct IEnumOfflineFilesItems : IUnknown
		{
			public const new Guid IID = .(0xda70e815, 0xc361, 0x4407, 0xbc, 0x0b, 0x0d, 0x70, 0x46, 0xe5, 0xf2, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IOfflineFilesItem** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumOfflineFilesItems** ppenum) mut => VT.Clone(ref this, ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesItems self, uint32 celt, IOfflineFilesItem** rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesItems self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesItems self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesItems self, IEnumOfflineFilesItems** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IOfflineFilesItemContainer : IUnknown
		{
			public const new Guid IID = .(0x3836f049, 0x9413, 0x45dd, 0xbf, 0x46, 0xb5, 0xaa, 0xa8, 0x2d, 0xc3, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumItems(uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) mut => VT.EnumItems(ref this, dwQueryFlags, ppenum);
			public HRESULT EnumItemsEx(IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwEnumFlags, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) mut => VT.EnumItemsEx(ref this, pIncludeFileFilter, pIncludeDirFilter, pExcludeFileFilter, pExcludeDirFilter, dwEnumFlags, dwQueryFlags, ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItemContainer self, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) EnumItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesItemContainer self, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwEnumFlags, uint32 dwQueryFlags, IEnumOfflineFilesItems** ppenum) EnumItemsEx;
			}
		}
		[CRepr]
		public struct IOfflineFilesChangeInfo : IUnknown
		{
			public const new Guid IID = .(0xa96e6fa4, 0xe0d1, 0x4c29, 0x96, 0x0b, 0xee, 0x50, 0x8f, 0xe6, 0x8c, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty(out BOOL pbDirty) mut => VT.IsDirty(ref this, out pbDirty);
			public HRESULT IsDeletedOffline(out BOOL pbDeletedOffline) mut => VT.IsDeletedOffline(ref this, out pbDeletedOffline);
			public HRESULT IsCreatedOffline(out BOOL pbCreatedOffline) mut => VT.IsCreatedOffline(ref this, out pbCreatedOffline);
			public HRESULT IsLocallyModifiedData(out BOOL pbLocallyModifiedData) mut => VT.IsLocallyModifiedData(ref this, out pbLocallyModifiedData);
			public HRESULT IsLocallyModifiedAttributes(out BOOL pbLocallyModifiedAttributes) mut => VT.IsLocallyModifiedAttributes(ref this, out pbLocallyModifiedAttributes);
			public HRESULT IsLocallyModifiedTime(out BOOL pbLocallyModifiedTime) mut => VT.IsLocallyModifiedTime(ref this, out pbLocallyModifiedTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbDirty) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbDeletedOffline) IsDeletedOffline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbCreatedOffline) IsCreatedOffline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbLocallyModifiedData) IsLocallyModifiedData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbLocallyModifiedAttributes) IsLocallyModifiedAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesChangeInfo self, out BOOL pbLocallyModifiedTime) IsLocallyModifiedTime;
			}
		}
		[CRepr]
		public struct IOfflineFilesDirtyInfo : IUnknown
		{
			public const new Guid IID = .(0x0f50ce33, 0xbac9, 0x4eaa, 0xa1, 0x1d, 0xda, 0x0e, 0x52, 0x7d, 0x04, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LocalDirtyByteCount(out LARGE_INTEGER pDirtyByteCount) mut => VT.LocalDirtyByteCount(ref this, out pDirtyByteCount);
			public HRESULT RemoteDirtyByteCount(out LARGE_INTEGER pDirtyByteCount) mut => VT.RemoteDirtyByteCount(ref this, out pDirtyByteCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesDirtyInfo self, out LARGE_INTEGER pDirtyByteCount) LocalDirtyByteCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesDirtyInfo self, out LARGE_INTEGER pDirtyByteCount) RemoteDirtyByteCount;
			}
		}
		[CRepr]
		public struct IOfflineFilesFileSysInfo : IUnknown
		{
			public const new Guid IID = .(0xbc1a163f, 0x7bfd, 0x4d88, 0x9c, 0x66, 0x96, 0xea, 0x9a, 0x6a, 0x3d, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributes(OFFLINEFILES_ITEM_COPY copy, out uint32 pdwAttributes) mut => VT.GetAttributes(ref this, copy, out pdwAttributes);
			public HRESULT GetTimes(OFFLINEFILES_ITEM_COPY copy, out FILETIME pftCreationTime, out FILETIME pftLastWriteTime, out FILETIME pftChangeTime, out FILETIME pftLastAccessTime) mut => VT.GetTimes(ref this, copy, out pftCreationTime, out pftLastWriteTime, out pftChangeTime, out pftLastAccessTime);
			public HRESULT GetFileSize(OFFLINEFILES_ITEM_COPY copy, out LARGE_INTEGER pSize) mut => VT.GetFileSize(ref this, copy, out pSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesFileSysInfo self, OFFLINEFILES_ITEM_COPY copy, out uint32 pdwAttributes) GetAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesFileSysInfo self, OFFLINEFILES_ITEM_COPY copy, out FILETIME pftCreationTime, out FILETIME pftLastWriteTime, out FILETIME pftChangeTime, out FILETIME pftLastAccessTime) GetTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesFileSysInfo self, OFFLINEFILES_ITEM_COPY copy, out LARGE_INTEGER pSize) GetFileSize;
			}
		}
		[CRepr]
		public struct IOfflineFilesPinInfo : IUnknown
		{
			public const new Guid IID = .(0x5b2b0655, 0xb3fd, 0x497d, 0xad, 0xeb, 0xbd, 0x15, 0x6b, 0xc8, 0x35, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPinned(out BOOL pbPinned) mut => VT.IsPinned(ref this, out pbPinned);
			public HRESULT IsPinnedForUser(out BOOL pbPinnedForUser, out BOOL pbInherit) mut => VT.IsPinnedForUser(ref this, out pbPinnedForUser, out pbInherit);
			public HRESULT IsPinnedForUserByPolicy(out BOOL pbPinnedForUser, out BOOL pbInherit) mut => VT.IsPinnedForUserByPolicy(ref this, out pbPinnedForUser, out pbInherit);
			public HRESULT IsPinnedForComputer(out BOOL pbPinnedForComputer, out BOOL pbInherit) mut => VT.IsPinnedForComputer(ref this, out pbPinnedForComputer, out pbInherit);
			public HRESULT IsPinnedForFolderRedirection(out BOOL pbPinnedForFolderRedirection, out BOOL pbInherit) mut => VT.IsPinnedForFolderRedirection(ref this, out pbPinnedForFolderRedirection, out pbInherit);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo self, out BOOL pbPinned) IsPinned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo self, out BOOL pbPinnedForUser, out BOOL pbInherit) IsPinnedForUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo self, out BOOL pbPinnedForUser, out BOOL pbInherit) IsPinnedForUserByPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo self, out BOOL pbPinnedForComputer, out BOOL pbInherit) IsPinnedForComputer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo self, out BOOL pbPinnedForFolderRedirection, out BOOL pbInherit) IsPinnedForFolderRedirection;
			}
		}
		[CRepr]
		public struct IOfflineFilesPinInfo2 : IOfflineFilesPinInfo
		{
			public const new Guid IID = .(0x623c58a2, 0x42ed, 0x4ad7, 0xb6, 0x9a, 0x0f, 0x1b, 0x30, 0xa7, 0x2d, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPartlyPinned(out BOOL pbPartlyPinned) mut => VT.IsPartlyPinned(ref this, out pbPartlyPinned);

			[CRepr]
			public struct VTable : IOfflineFilesPinInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesPinInfo2 self, out BOOL pbPartlyPinned) IsPartlyPinned;
			}
		}
		[CRepr]
		public struct IOfflineFilesTransparentCacheInfo : IUnknown
		{
			public const new Guid IID = .(0xbcaf4a01, 0x5b68, 0x4b56, 0xa6, 0xa1, 0x8d, 0x27, 0x86, 0xed, 0xe8, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsTransparentlyCached(out BOOL pbTransparentlyCached) mut => VT.IsTransparentlyCached(ref this, out pbTransparentlyCached);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesTransparentCacheInfo self, out BOOL pbTransparentlyCached) IsTransparentlyCached;
			}
		}
		[CRepr]
		public struct IOfflineFilesGhostInfo : IUnknown
		{
			public const new Guid IID = .(0x2b09d48c, 0x8ab5, 0x464f, 0xa7, 0x55, 0xa5, 0x9d, 0x92, 0xf9, 0x94, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsGhosted(out BOOL pbGhosted) mut => VT.IsGhosted(ref this, out pbGhosted);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesGhostInfo self, out BOOL pbGhosted) IsGhosted;
			}
		}
		[CRepr]
		public struct IOfflineFilesConnectionInfo : IUnknown
		{
			public const new Guid IID = .(0xefb23a09, 0xa867, 0x4be8, 0x83, 0xa6, 0x86, 0x96, 0x9a, 0x7d, 0x08, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectState(out OFFLINEFILES_CONNECT_STATE pConnectState, out OFFLINEFILES_OFFLINE_REASON pOfflineReason) mut => VT.GetConnectState(ref this, out pConnectState, out pOfflineReason);
			public HRESULT SetConnectState(HWND hwndParent, uint32 dwFlags, OFFLINEFILES_CONNECT_STATE ConnectState) mut => VT.SetConnectState(ref this, hwndParent, dwFlags, ConnectState);
			public HRESULT TransitionOnline(HWND hwndParent, uint32 dwFlags) mut => VT.TransitionOnline(ref this, hwndParent, dwFlags);
			public HRESULT TransitionOffline(HWND hwndParent, uint32 dwFlags, BOOL bForceOpenFilesClosed, out BOOL pbOpenFilesPreventedTransition) mut => VT.TransitionOffline(ref this, hwndParent, dwFlags, bForceOpenFilesClosed, out pbOpenFilesPreventedTransition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesConnectionInfo self, out OFFLINEFILES_CONNECT_STATE pConnectState, out OFFLINEFILES_OFFLINE_REASON pOfflineReason) GetConnectState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesConnectionInfo self, HWND hwndParent, uint32 dwFlags, OFFLINEFILES_CONNECT_STATE ConnectState) SetConnectState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesConnectionInfo self, HWND hwndParent, uint32 dwFlags) TransitionOnline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesConnectionInfo self, HWND hwndParent, uint32 dwFlags, BOOL bForceOpenFilesClosed, out BOOL pbOpenFilesPreventedTransition) TransitionOffline;
			}
		}
		[CRepr]
		public struct IOfflineFilesShareInfo : IUnknown
		{
			public const new Guid IID = .(0x7bcc43e7, 0x31ce, 0x4ca4, 0x8c, 0xcd, 0x1c, 0xff, 0x2d, 0xc4, 0x94, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetShareItem(IOfflineFilesShareItem** ppShareItem) mut => VT.GetShareItem(ref this, ppShareItem);
			public HRESULT GetShareCachingMode(out OFFLINEFILES_CACHING_MODE pCachingMode) mut => VT.GetShareCachingMode(ref this, out pCachingMode);
			public HRESULT IsShareDfsJunction(out BOOL pbIsDfsJunction) mut => VT.IsShareDfsJunction(ref this, out pbIsDfsJunction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesShareInfo self, IOfflineFilesShareItem** ppShareItem) GetShareItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesShareInfo self, out OFFLINEFILES_CACHING_MODE pCachingMode) GetShareCachingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesShareInfo self, out BOOL pbIsDfsJunction) IsShareDfsJunction;
			}
		}
		[CRepr]
		public struct IOfflineFilesSuspend : IUnknown
		{
			public const new Guid IID = .(0x62c4560f, 0xbc0b, 0x48ca, 0xad, 0x9d, 0x34, 0xcb, 0x52, 0x8d, 0x99, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SuspendRoot(BOOL bSuspend) mut => VT.SuspendRoot(ref this, bSuspend);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSuspend self, BOOL bSuspend) SuspendRoot;
			}
		}
		[CRepr]
		public struct IOfflineFilesSuspendInfo : IUnknown
		{
			public const new Guid IID = .(0xa457c25b, 0x4e9c, 0x4b04, 0x85, 0xaf, 0x89, 0x32, 0xcc, 0xd9, 0x78, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsSuspended(out BOOL pbSuspended, out BOOL pbSuspendedRoot) mut => VT.IsSuspended(ref this, out pbSuspended, out pbSuspendedRoot);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSuspendInfo self, out BOOL pbSuspended, out BOOL pbSuspendedRoot) IsSuspended;
			}
		}
		[CRepr]
		public struct IOfflineFilesSetting : IUnknown
		{
			public const new Guid IID = .(0xd871d3f7, 0xf613, 0x48a1, 0x82, 0x7e, 0x7a, 0x34, 0xe5, 0x60, 0xff, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppszName) mut => VT.GetName(ref this, ppszName);
			public HRESULT GetValueType(out OFFLINEFILES_SETTING_VALUE_TYPE pType) mut => VT.GetValueType(ref this, out pType);
			public HRESULT GetPreference(out VARIANT pvarValue, uint32 dwScope) mut => VT.GetPreference(ref this, out pvarValue, dwScope);
			public HRESULT GetPreferenceScope(out uint32 pdwScope) mut => VT.GetPreferenceScope(ref this, out pdwScope);
			public HRESULT SetPreference(in VARIANT pvarValue, uint32 dwScope) mut => VT.SetPreference(ref this, pvarValue, dwScope);
			public HRESULT DeletePreference(uint32 dwScope) mut => VT.DeletePreference(ref this, dwScope);
			public HRESULT GetPolicy(out VARIANT pvarValue, uint32 dwScope) mut => VT.GetPolicy(ref this, out pvarValue, dwScope);
			public HRESULT GetPolicyScope(out uint32 pdwScope) mut => VT.GetPolicyScope(ref this, out pdwScope);
			public HRESULT GetValue(out VARIANT pvarValue, out BOOL pbSetByPolicy) mut => VT.GetValue(ref this, out pvarValue, out pbSetByPolicy);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, PWSTR* ppszName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out OFFLINEFILES_SETTING_VALUE_TYPE pType) GetValueType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out VARIANT pvarValue, uint32 dwScope) GetPreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out uint32 pdwScope) GetPreferenceScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, in VARIANT pvarValue, uint32 dwScope) SetPreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, uint32 dwScope) DeletePreference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out VARIANT pvarValue, uint32 dwScope) GetPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out uint32 pdwScope) GetPolicyScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesSetting self, out VARIANT pvarValue, out BOOL pbSetByPolicy) GetValue;
			}
		}
		[CRepr]
		public struct IEnumOfflineFilesSettings : IUnknown
		{
			public const new Guid IID = .(0x729680c4, 0x1a38, 0x47bc, 0x9e, 0x5c, 0x02, 0xc5, 0x15, 0x62, 0xac, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IOfflineFilesSetting** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumOfflineFilesSettings** ppenum) mut => VT.Clone(ref this, ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesSettings self, uint32 celt, IOfflineFilesSetting** rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesSettings self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesSettings self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOfflineFilesSettings self, IEnumOfflineFilesSettings** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IOfflineFilesCache : IUnknown
		{
			public const new Guid IID = .(0x855d6203, 0x7914, 0x48b9, 0x8d, 0x40, 0x4c, 0x56, 0xf5, 0xac, 0xff, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Synchronize(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bAsync, uint32 dwSyncControl, IOfflineFilesSyncConflictHandler* pISyncConflictHandler, IOfflineFilesSyncProgress* pIProgress, Guid* pSyncId) mut => VT.Synchronize(ref this, hwndParent, rgpszPaths, cPaths, bAsync, dwSyncControl, pISyncConflictHandler, pIProgress, pSyncId);
			public HRESULT DeleteItems(PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) mut => VT.DeleteItems(ref this, rgpszPaths, cPaths, dwFlags, bAsync, pIProgress);
			public HRESULT DeleteItemsForUser(PWSTR pszUser, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) mut => VT.DeleteItemsForUser(ref this, pszUser, rgpszPaths, cPaths, dwFlags, bAsync, pIProgress);
			public HRESULT Pin(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) mut => VT.Pin(ref this, hwndParent, rgpszPaths, cPaths, bDeep, bAsync, dwPinControlFlags, pIProgress);
			public HRESULT Unpin(HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) mut => VT.Unpin(ref this, hwndParent, rgpszPaths, cPaths, bDeep, bAsync, dwPinControlFlags, pIProgress);
			public HRESULT GetEncryptionStatus(out BOOL pbEncrypted, out BOOL pbPartial) mut => VT.GetEncryptionStatus(ref this, out pbEncrypted, out pbPartial);
			public HRESULT Encrypt(HWND hwndParent, BOOL bEncrypt, uint32 dwEncryptionControlFlags, BOOL bAsync, IOfflineFilesSyncProgress* pIProgress) mut => VT.Encrypt(ref this, hwndParent, bEncrypt, dwEncryptionControlFlags, bAsync, pIProgress);
			public HRESULT FindItem(PWSTR pszPath, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) mut => VT.FindItem(ref this, pszPath, dwQueryFlags, ppItem);
			public HRESULT FindItemEx(PWSTR pszPath, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) mut => VT.FindItemEx(ref this, pszPath, pIncludeFileFilter, pIncludeDirFilter, pExcludeFileFilter, pExcludeDirFilter, dwQueryFlags, ppItem);
			public HRESULT RenameItem(PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) mut => VT.RenameItem(ref this, pszPathOriginal, pszPathNew, bReplaceIfExists);
			public HRESULT GetLocation(PWSTR* ppszPath) mut => VT.GetLocation(ref this, ppszPath);
			public HRESULT GetDiskSpaceInformation(out uint64 pcbVolumeTotal, out uint64 pcbLimit, out uint64 pcbUsed, out uint64 pcbUnpinnedLimit, out uint64 pcbUnpinnedUsed) mut => VT.GetDiskSpaceInformation(ref this, out pcbVolumeTotal, out pcbLimit, out pcbUsed, out pcbUnpinnedLimit, out pcbUnpinnedUsed);
			public HRESULT SetDiskSpaceLimits(uint64 cbLimit, uint64 cbUnpinnedLimit) mut => VT.SetDiskSpaceLimits(ref this, cbLimit, cbUnpinnedLimit);
			public HRESULT ProcessAdminPinPolicy(IOfflineFilesSyncProgress* pPinProgress, IOfflineFilesSyncProgress* pUnpinProgress) mut => VT.ProcessAdminPinPolicy(ref this, pPinProgress, pUnpinProgress);
			public HRESULT GetSettingObject(PWSTR pszSettingName, IOfflineFilesSetting** ppSetting) mut => VT.GetSettingObject(ref this, pszSettingName, ppSetting);
			public HRESULT EnumSettingObjects(IEnumOfflineFilesSettings** ppEnum) mut => VT.EnumSettingObjects(ref this, ppEnum);
			public HRESULT IsPathCacheable(PWSTR pszPath, out BOOL pbCacheable, out OFFLINEFILES_CACHING_MODE pShareCachingMode) mut => VT.IsPathCacheable(ref this, pszPath, out pbCacheable, out pShareCachingMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bAsync, uint32 dwSyncControl, IOfflineFilesSyncConflictHandler* pISyncConflictHandler, IOfflineFilesSyncProgress* pIProgress, Guid* pSyncId) Synchronize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) DeleteItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszUser, PWSTR* rgpszPaths, uint32 cPaths, uint32 dwFlags, BOOL bAsync, IOfflineFilesSimpleProgress* pIProgress) DeleteItemsForUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) Pin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, HWND hwndParent, PWSTR* rgpszPaths, uint32 cPaths, BOOL bDeep, BOOL bAsync, uint32 dwPinControlFlags, IOfflineFilesSyncProgress* pIProgress) Unpin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, out BOOL pbEncrypted, out BOOL pbPartial) GetEncryptionStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, HWND hwndParent, BOOL bEncrypt, uint32 dwEncryptionControlFlags, BOOL bAsync, IOfflineFilesSyncProgress* pIProgress) Encrypt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszPath, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) FindItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszPath, IOfflineFilesItemFilter* pIncludeFileFilter, IOfflineFilesItemFilter* pIncludeDirFilter, IOfflineFilesItemFilter* pExcludeFileFilter, IOfflineFilesItemFilter* pExcludeDirFilter, uint32 dwQueryFlags, IOfflineFilesItem** ppItem) FindItemEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) RenameItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR* ppszPath) GetLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, out uint64 pcbVolumeTotal, out uint64 pcbLimit, out uint64 pcbUsed, out uint64 pcbUnpinnedLimit, out uint64 pcbUnpinnedUsed) GetDiskSpaceInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, uint64 cbLimit, uint64 cbUnpinnedLimit) SetDiskSpaceLimits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, IOfflineFilesSyncProgress* pPinProgress, IOfflineFilesSyncProgress* pUnpinProgress) ProcessAdminPinPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszSettingName, IOfflineFilesSetting** ppSetting) GetSettingObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, IEnumOfflineFilesSettings** ppEnum) EnumSettingObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache self, PWSTR pszPath, out BOOL pbCacheable, out OFFLINEFILES_CACHING_MODE pShareCachingMode) IsPathCacheable;
			}
		}
		[CRepr]
		public struct IOfflineFilesCache2 : IOfflineFilesCache
		{
			public const new Guid IID = .(0x8c075039, 0x1551, 0x4ed9, 0x87, 0x81, 0x56, 0x70, 0x5c, 0x04, 0xd3, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RenameItemEx(PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) mut => VT.RenameItemEx(ref this, pszPathOriginal, pszPathNew, bReplaceIfExists);

			[CRepr]
			public struct VTable : IOfflineFilesCache.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IOfflineFilesCache2 self, PWSTR pszPathOriginal, PWSTR pszPathNew, BOOL bReplaceIfExists) RenameItemEx;
			}
		}
		
		// --- Functions ---
		
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesEnable(BOOL bEnable, out BOOL pbRebootRequired);
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesStart();
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesQueryStatus(BOOL* pbActive, BOOL* pbEnabled);
		[Import("cscapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OfflineFilesQueryStatusEx(BOOL* pbActive, BOOL* pbEnabled, BOOL* pbAvailable);
	}
}
