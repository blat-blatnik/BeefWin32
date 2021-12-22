using System;

// namespace System.WindowsSync
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 SYNC_VERSION_FLAG_FROM_FEED = 1;
		public const uint32 SYNC_VERSION_FLAG_HAS_BY = 2;
		public const uint32 SYNC_SERIALIZE_REPLICA_KEY_MAP = 1;
		public const uint32 SYNC_FILTER_INFO_FLAG_ITEM_LIST = 1;
		public const uint32 SYNC_FILTER_INFO_FLAG_CHANGE_UNIT_LIST = 2;
		public const uint32 SYNC_FILTER_INFO_FLAG_CUSTOM = 4;
		public const uint32 SYNC_FILTER_INFO_COMBINED = 8;
		public const uint32 SYNC_CHANGE_FLAG_DELETED = 1;
		public const uint32 SYNC_CHANGE_FLAG_DOES_NOT_EXIST = 2;
		public const uint32 SYNC_CHANGE_FLAG_GHOST = 4;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SYNC_PROVIDER_ROLE : int32
		{
			SOURCE = 0,
			DESTINATION = 1,
		}
		[AllowDuplicates]
		public enum CONFLICT_RESOLUTION_POLICY : int32
		{
			NONE = 0,
			DESTINATION_PROVIDER_WINS = 1,
			SOURCE_PROVIDER_WINS = 2,
			LAST = 3,
		}
		[AllowDuplicates]
		public enum SYNC_PROGRESS_STAGE : int32
		{
			DETECTION = 0,
			ENUMERATION = 1,
			APPLICATION = 2,
		}
		[AllowDuplicates]
		public enum SYNC_FULL_ENUMERATION_ACTION : int32
		{
			FULL_ENUMERATION = 0,
			PARTIAL_SYNC = 1,
			ABORT = 2,
		}
		[AllowDuplicates]
		public enum SYNC_RESOLVE_ACTION : int32
		{
			DEFER = 0,
			ACCEPT_DESTINATION_PROVIDER = 1,
			ACCEPT_SOURCE_PROVIDER = 2,
			MERGE = 3,
			TRANSFER_AND_DEFER = 4,
			LAST = 5,
		}
		[AllowDuplicates]
		public enum SYNC_STATISTICS : int32
		{
			SYNC_STATISTICS_RANGE_COUNT = 0,
		}
		[AllowDuplicates]
		public enum SYNC_SERIALIZATION_VERSION : int32
		{
			_1 = 1,
			_2 = 4,
			_3 = 5,
		}
		[AllowDuplicates]
		public enum FILTERING_TYPE : int32
		{
			ONLY = 0,
			AND_VERSIONS_FOR_MOVED_OUT_ITEMS = 1,
		}
		[AllowDuplicates]
		public enum SYNC_CONSTRAINT_RESOLVE_ACTION : int32
		{
			DEFER = 0,
			ACCEPT_DESTINATION_PROVIDER = 1,
			ACCEPT_SOURCE_PROVIDER = 2,
			TRANSFER_AND_DEFER = 3,
			MERGE = 4,
			RENAME_SOURCE = 5,
			RENAME_DESTINATION = 6,
		}
		[AllowDuplicates]
		public enum CONSTRAINT_CONFLICT_REASON : int32
		{
			OTHER = 0,
			COLLISION = 1,
			NOPARENT = 2,
			IDENTITY = 3,
		}
		[AllowDuplicates]
		public enum KNOWLEDGE_COOKIE_COMPARISON_RESULT : int32
		{
			EQUAL = 0,
			CONTAINED = 1,
			CONTAINS = 2,
			NOT_COMPARABLE = 3,
		}
		[AllowDuplicates]
		public enum FILTER_COMBINATION_TYPE : int32
		{
			FCT_INTERSECTION = 0,
		}
		[AllowDuplicates]
		public enum SYNC_REGISTRATION_EVENT : int32
		{
			PROVIDER_ADDED = 0,
			PROVIDER_REMOVED = 1,
			PROVIDER_UPDATED = 2,
			PROVIDER_STATE_CHANGED = 3,
			CONFIGUI_ADDED = 4,
			CONFIGUI_REMOVED = 5,
			CONFIGUI_UPDATED = 6,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct ID_PARAMETER_PAIR
		{
			public BOOL fIsVariable;
			public uint16 cbIdSize;
		}
		[CRepr]
		public struct ID_PARAMETERS
		{
			public uint32 dwSize;
			public ID_PARAMETER_PAIR replicaId;
			public ID_PARAMETER_PAIR itemId;
			public ID_PARAMETER_PAIR changeUnitId;
		}
		[CRepr]
		public struct SYNC_SESSION_STATISTICS
		{
			public uint32 dwChangesApplied;
			public uint32 dwChangesFailed;
		}
		[CRepr]
		public struct SYNC_VERSION
		{
			public uint32 dwLastUpdatingReplicaKey;
			public uint64 ullTickCount;
		}
		[CRepr]
		public struct SYNC_RANGE
		{
			public uint8* pbClosedLowerBound;
			public uint8* pbClosedUpperBound;
		}
		[CRepr]
		public struct SYNC_TIME
		{
			public uint32 dwDate;
			public uint32 dwTime;
		}
		[CRepr]
		public struct SYNC_FILTER_CHANGE
		{
			public BOOL fMoveIn;
			public SYNC_VERSION moveVersion;
		}
		[CRepr]
		public struct SyncProviderConfiguration
		{
			public uint32 dwVersion;
			public Guid guidInstanceId;
			public Guid clsidProvider;
			public Guid guidConfigUIInstanceId;
			public Guid guidContentType;
			public uint32 dwCapabilities;
			public uint32 dwSupportedArchitecture;
		}
		[CRepr]
		public struct SyncProviderConfigUIConfiguration
		{
			public uint32 dwVersion;
			public Guid guidInstanceId;
			public Guid clsidConfigUI;
			public Guid guidContentType;
			public uint32 dwCapabilities;
			public uint32 dwSupportedArchitecture;
			public BOOL fIsGlobal;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SyncProviderRegistration = .(0xf82b4ef1, 0x93a9, 0x4dde, 0x80, 0x15, 0xf7, 0x95, 0x0a, 0x1a, 0x6e, 0x31);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IClockVectorElement : IUnknown
		{
			public const new Guid IID = .(0xe71c4250, 0xadf8, 0x4a07, 0x8f, 0xae, 0x56, 0x69, 0x59, 0x69, 0x09, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReplicaKey(uint32* pdwReplicaKey) mut
			{
				return VT.GetReplicaKey(&this, pdwReplicaKey);
			}
			public HRESULT GetTickCount(uint64* pullTickCount) mut
			{
				return VT.GetTickCount(&this, pullTickCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClockVectorElement *self, uint32* pdwReplicaKey) GetReplicaKey;
				public new function HRESULT(IClockVectorElement *self, uint64* pullTickCount) GetTickCount;
			}
		}
		[CRepr]
		public struct IFeedClockVectorElement : IClockVectorElement
		{
			public const new Guid IID = .(0xa40b46d2, 0xe97b, 0x4156, 0xb6, 0xda, 0x99, 0x1f, 0x50, 0x1b, 0x0f, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncTime(SYNC_TIME* pSyncTime) mut
			{
				return VT.GetSyncTime(&this, pSyncTime);
			}
			public HRESULT ComGetFlags(uint8* pbFlags) mut
			{
				return VT.ComGetFlags(&this, pbFlags);
			}
			[CRepr]
			public struct VTable : IClockVectorElement.VTable
			{
				public new function HRESULT(IFeedClockVectorElement *self, SYNC_TIME* pSyncTime) GetSyncTime;
				public new function HRESULT(IFeedClockVectorElement *self, uint8* pbFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IClockVector : IUnknown
		{
			public const new Guid IID = .(0x14b2274a, 0x8698, 0x4cc6, 0x93, 0x33, 0xf8, 0x9b, 0xd1, 0xd4, 0x7b, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClockVectorElements(Guid* riid, void** ppiEnumClockVector) mut
			{
				return VT.GetClockVectorElements(&this, riid, ppiEnumClockVector);
			}
			public HRESULT GetClockVectorElementCount(uint32* pdwCount) mut
			{
				return VT.GetClockVectorElementCount(&this, pdwCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClockVector *self, Guid* riid, void** ppiEnumClockVector) GetClockVectorElements;
				public new function HRESULT(IClockVector *self, uint32* pdwCount) GetClockVectorElementCount;
			}
		}
		[CRepr]
		public struct IFeedClockVector : IClockVector
		{
			public const new Guid IID = .(0x8d1d98d1, 0x9fb8, 0x4ec9, 0xa5, 0x53, 0x54, 0xdd, 0x92, 0x4e, 0x0f, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdateCount(uint32* pdwUpdateCount) mut
			{
				return VT.GetUpdateCount(&this, pdwUpdateCount);
			}
			public HRESULT IsNoConflictsSpecified(BOOL* pfIsNoConflictsSpecified) mut
			{
				return VT.IsNoConflictsSpecified(&this, pfIsNoConflictsSpecified);
			}
			[CRepr]
			public struct VTable : IClockVector.VTable
			{
				public new function HRESULT(IFeedClockVector *self, uint32* pdwUpdateCount) GetUpdateCount;
				public new function HRESULT(IFeedClockVector *self, BOOL* pfIsNoConflictsSpecified) IsNoConflictsSpecified;
			}
		}
		[CRepr]
		public struct IEnumClockVector : IUnknown
		{
			public const new Guid IID = .(0x525844db, 0x2837, 0x4799, 0x9e, 0x80, 0x81, 0xa6, 0x6e, 0x02, 0x22, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cClockVectorElements, IClockVectorElement** ppiClockVectorElements, uint32* pcFetched) mut
			{
				return VT.Next(&this, cClockVectorElements, ppiClockVectorElements, pcFetched);
			}
			public HRESULT Skip(uint32 cSyncVersions) mut
			{
				return VT.Skip(&this, cSyncVersions);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumClockVector** ppiEnum) mut
			{
				return VT.Clone(&this, ppiEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumClockVector *self, uint32 cClockVectorElements, IClockVectorElement** ppiClockVectorElements, uint32* pcFetched) Next;
				public new function HRESULT(IEnumClockVector *self, uint32 cSyncVersions) Skip;
				public new function HRESULT(IEnumClockVector *self) Reset;
				public new function HRESULT(IEnumClockVector *self, IEnumClockVector** ppiEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumFeedClockVector : IUnknown
		{
			public const new Guid IID = .(0x550f763d, 0x146a, 0x48f6, 0xab, 0xeb, 0x6c, 0x88, 0xc7, 0xf7, 0x05, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cClockVectorElements, IFeedClockVectorElement** ppiClockVectorElements, uint32* pcFetched) mut
			{
				return VT.Next(&this, cClockVectorElements, ppiClockVectorElements, pcFetched);
			}
			public HRESULT Skip(uint32 cSyncVersions) mut
			{
				return VT.Skip(&this, cSyncVersions);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumFeedClockVector** ppiEnum) mut
			{
				return VT.Clone(&this, ppiEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumFeedClockVector *self, uint32 cClockVectorElements, IFeedClockVectorElement** ppiClockVectorElements, uint32* pcFetched) Next;
				public new function HRESULT(IEnumFeedClockVector *self, uint32 cSyncVersions) Skip;
				public new function HRESULT(IEnumFeedClockVector *self) Reset;
				public new function HRESULT(IEnumFeedClockVector *self, IEnumFeedClockVector** ppiEnum) Clone;
			}
		}
		[CRepr]
		public struct ICoreFragment : IUnknown
		{
			public const new Guid IID = .(0x613b2ab5, 0xb304, 0x47d9, 0x9c, 0x31, 0xce, 0x6c, 0x54, 0x40, 0x1a, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextColumn(uint8* pChangeUnitId, uint32* pChangeUnitIdSize) mut
			{
				return VT.NextColumn(&this, pChangeUnitId, pChangeUnitIdSize);
			}
			public HRESULT NextRange(uint8* pItemId, uint32* pItemIdSize, IClockVector** piClockVector) mut
			{
				return VT.NextRange(&this, pItemId, pItemIdSize, piClockVector);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT GetColumnCount(uint32* pColumnCount) mut
			{
				return VT.GetColumnCount(&this, pColumnCount);
			}
			public HRESULT GetRangeCount(uint32* pRangeCount) mut
			{
				return VT.GetRangeCount(&this, pRangeCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICoreFragment *self, uint8* pChangeUnitId, uint32* pChangeUnitIdSize) NextColumn;
				public new function HRESULT(ICoreFragment *self, uint8* pItemId, uint32* pItemIdSize, IClockVector** piClockVector) NextRange;
				public new function HRESULT(ICoreFragment *self) Reset;
				public new function HRESULT(ICoreFragment *self, uint32* pColumnCount) GetColumnCount;
				public new function HRESULT(ICoreFragment *self, uint32* pRangeCount) GetRangeCount;
			}
		}
		[CRepr]
		public struct ICoreFragmentInspector : IUnknown
		{
			public const new Guid IID = .(0xf7fcc5fd, 0xae26, 0x4679, 0xba, 0x16, 0x96, 0xaa, 0xc5, 0x83, 0xc1, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextCoreFragments(uint32 requestedCount, ICoreFragment** ppiCoreFragments, uint32* pFetchedCount) mut
			{
				return VT.NextCoreFragments(&this, requestedCount, ppiCoreFragments, pFetchedCount);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICoreFragmentInspector *self, uint32 requestedCount, ICoreFragment** ppiCoreFragments, uint32* pFetchedCount) NextCoreFragments;
				public new function HRESULT(ICoreFragmentInspector *self) Reset;
			}
		}
		[CRepr]
		public struct IRangeExceptionAlt : IUnknown
		{
			public const new Guid IID = .(0x75ae8777, 0x6848, 0x49f7, 0x95, 0x6c, 0xa3, 0xa9, 0x2f, 0x50, 0x96, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClosedRangeStart(uint8* pbClosedRangeStart, uint32* pcbIdSize) mut
			{
				return VT.GetClosedRangeStart(&this, pbClosedRangeStart, pcbIdSize);
			}
			public HRESULT GetClosedRangeEnd(uint8* pbClosedRangeEnd, uint32* pcbIdSize) mut
			{
				return VT.GetClosedRangeEnd(&this, pbClosedRangeEnd, pcbIdSize);
			}
			public HRESULT GetClockVector(Guid* riid, void** ppUnk) mut
			{
				return VT.GetClockVector(&this, riid, ppUnk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRangeExceptionAlt *self, uint8* pbClosedRangeStart, uint32* pcbIdSize) GetClosedRangeStart;
				public new function HRESULT(IRangeExceptionAlt *self, uint8* pbClosedRangeEnd, uint32* pcbIdSize) GetClosedRangeEnd;
				public new function HRESULT(IRangeExceptionAlt *self, Guid* riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumRangeExceptions : IUnknown
		{
			public const new Guid IID = .(0x0944439f, 0xddb1, 0x4176, 0xb7, 0x03, 0x04, 0x6f, 0xf2, 0x2a, 0x23, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, IRangeExceptionAlt** ppRangeException, uint32* pcFetched) mut
			{
				return VT.Next(&this, cExceptions, ppRangeException, pcFetched);
			}
			public HRESULT Skip(uint32 cExceptions) mut
			{
				return VT.Skip(&this, cExceptions);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumRangeExceptions** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumRangeExceptions *self, uint32 cExceptions, IRangeExceptionAlt** ppRangeException, uint32* pcFetched) Next;
				public new function HRESULT(IEnumRangeExceptions *self, uint32 cExceptions) Skip;
				public new function HRESULT(IEnumRangeExceptions *self) Reset;
				public new function HRESULT(IEnumRangeExceptions *self, IEnumRangeExceptions** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISingleItemException : IUnknown
		{
			public const new Guid IID = .(0x892fb9b0, 0x7c55, 0x4a18, 0x93, 0x16, 0xfd, 0xf4, 0x49, 0x56, 0x9b, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemId(uint8* pbItemId, uint32* pcbIdSize) mut
			{
				return VT.GetItemId(&this, pbItemId, pcbIdSize);
			}
			public HRESULT GetClockVector(Guid* riid, void** ppUnk) mut
			{
				return VT.GetClockVector(&this, riid, ppUnk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISingleItemException *self, uint8* pbItemId, uint32* pcbIdSize) GetItemId;
				public new function HRESULT(ISingleItemException *self, Guid* riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumSingleItemExceptions : IUnknown
		{
			public const new Guid IID = .(0xe563381c, 0x1b4d, 0x4c66, 0x97, 0x96, 0xc8, 0x6f, 0xac, 0xcd, 0xcd, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, ISingleItemException** ppSingleItemException, uint32* pcFetched) mut
			{
				return VT.Next(&this, cExceptions, ppSingleItemException, pcFetched);
			}
			public HRESULT Skip(uint32 cExceptions) mut
			{
				return VT.Skip(&this, cExceptions);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSingleItemExceptions** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSingleItemExceptions *self, uint32 cExceptions, ISingleItemException** ppSingleItemException, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSingleItemExceptions *self, uint32 cExceptions) Skip;
				public new function HRESULT(IEnumSingleItemExceptions *self) Reset;
				public new function HRESULT(IEnumSingleItemExceptions *self, IEnumSingleItemExceptions** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IChangeUnitException : IUnknown
		{
			public const new Guid IID = .(0x0cd7ee7c, 0xfec0, 0x4021, 0x99, 0xee, 0xf0, 0xe5, 0x34, 0x8f, 0x2a, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemId(uint8* pbItemId, uint32* pcbIdSize) mut
			{
				return VT.GetItemId(&this, pbItemId, pcbIdSize);
			}
			public HRESULT GetChangeUnitId(uint8* pbChangeUnitId, uint32* pcbIdSize) mut
			{
				return VT.GetChangeUnitId(&this, pbChangeUnitId, pcbIdSize);
			}
			public HRESULT GetClockVector(Guid* riid, void** ppUnk) mut
			{
				return VT.GetClockVector(&this, riid, ppUnk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IChangeUnitException *self, uint8* pbItemId, uint32* pcbIdSize) GetItemId;
				public new function HRESULT(IChangeUnitException *self, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
				public new function HRESULT(IChangeUnitException *self, Guid* riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumChangeUnitExceptions : IUnknown
		{
			public const new Guid IID = .(0x3074e802, 0x9319, 0x4420, 0xbe, 0x21, 0x10, 0x22, 0xe2, 0xe2, 0x1d, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, IChangeUnitException** ppChangeUnitException, uint32* pcFetched) mut
			{
				return VT.Next(&this, cExceptions, ppChangeUnitException, pcFetched);
			}
			public HRESULT Skip(uint32 cExceptions) mut
			{
				return VT.Skip(&this, cExceptions);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumChangeUnitExceptions** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumChangeUnitExceptions *self, uint32 cExceptions, IChangeUnitException** ppChangeUnitException, uint32* pcFetched) Next;
				public new function HRESULT(IEnumChangeUnitExceptions *self, uint32 cExceptions) Skip;
				public new function HRESULT(IEnumChangeUnitExceptions *self) Reset;
				public new function HRESULT(IEnumChangeUnitExceptions *self, IEnumChangeUnitExceptions** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0x2209f4fc, 0xfd10, 0x4ff0, 0x84, 0xa8, 0xf0, 0xa1, 0x98, 0x2e, 0x44, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupReplicaKey(uint8* pbReplicaId, uint32* pdwReplicaKey) mut
			{
				return VT.LookupReplicaKey(&this, pbReplicaId, pdwReplicaKey);
			}
			public HRESULT LookupReplicaId(uint32 dwReplicaKey, uint8* pbReplicaId, uint32* pcbIdSize) mut
			{
				return VT.LookupReplicaId(&this, dwReplicaKey, pbReplicaId, pcbIdSize);
			}
			public HRESULT Serialize(uint8* pbReplicaKeyMap, uint32* pcbReplicaKeyMap) mut
			{
				return VT.Serialize(&this, pbReplicaKeyMap, pcbReplicaKeyMap);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IReplicaKeyMap *self, uint8* pbReplicaId, uint32* pdwReplicaKey) LookupReplicaKey;
				public new function HRESULT(IReplicaKeyMap *self, uint32 dwReplicaKey, uint8* pbReplicaId, uint32* pcbIdSize) LookupReplicaId;
				public new function HRESULT(IReplicaKeyMap *self, uint8* pbReplicaKeyMap, uint32* pcbReplicaKeyMap) Serialize;
			}
		}
		[CRepr]
		public struct IConstructReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0xded10970, 0xec85, 0x4115, 0xb5, 0x2c, 0x44, 0x05, 0x84, 0x56, 0x42, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindOrAddReplica(uint8* pbReplicaId, uint32* pdwReplicaKey) mut
			{
				return VT.FindOrAddReplica(&this, pbReplicaId, pdwReplicaKey);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConstructReplicaKeyMap *self, uint8* pbReplicaId, uint32* pdwReplicaKey) FindOrAddReplica;
			}
		}
		[CRepr]
		public struct ISyncKnowledge : IUnknown
		{
			public const new Guid IID = .(0x615bbb53, 0xc945, 0x4203, 0xbf, 0x4b, 0x2c, 0xb6, 0x59, 0x19, 0xa0, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerReplicaId(uint8* pbReplicaId, uint32* pcbIdSize) mut
			{
				return VT.GetOwnerReplicaId(&this, pbReplicaId, pcbIdSize);
			}
			public HRESULT Serialize(BOOL fSerializeReplicaKeyMap, uint8* pbKnowledge, uint32* pcbKnowledge) mut
			{
				return VT.Serialize(&this, fSerializeReplicaKeyMap, pbKnowledge, pcbKnowledge);
			}
			public HRESULT SetLocalTickCount(uint64 ullTickCount) mut
			{
				return VT.SetLocalTickCount(&this, ullTickCount);
			}
			public HRESULT ContainsChange(uint8* pbVersionOwnerReplicaId, uint8* pgidItemId, SYNC_VERSION* pSyncVersion) mut
			{
				return VT.ContainsChange(&this, pbVersionOwnerReplicaId, pgidItemId, pSyncVersion);
			}
			public HRESULT ContainsChangeUnit(uint8* pbVersionOwnerReplicaId, uint8* pbItemId, uint8* pbChangeUnitId, SYNC_VERSION* pSyncVersion) mut
			{
				return VT.ContainsChangeUnit(&this, pbVersionOwnerReplicaId, pbItemId, pbChangeUnitId, pSyncVersion);
			}
			public HRESULT GetScopeVector(Guid* riid, void** ppUnk) mut
			{
				return VT.GetScopeVector(&this, riid, ppUnk);
			}
			public HRESULT GetReplicaKeyMap(IReplicaKeyMap** ppReplicaKeyMap) mut
			{
				return VT.GetReplicaKeyMap(&this, ppReplicaKeyMap);
			}
			public HRESULT Clone(ISyncKnowledge** ppClonedKnowledge) mut
			{
				return VT.Clone(&this, ppClonedKnowledge);
			}
			public HRESULT ConvertVersion(ISyncKnowledge* pKnowledgeIn, uint8* pbCurrentOwnerId, SYNC_VERSION* pVersionIn, uint8* pbNewOwnerId, uint32* pcbIdSize, SYNC_VERSION* pVersionOut) mut
			{
				return VT.ConvertVersion(&this, pKnowledgeIn, pbCurrentOwnerId, pVersionIn, pbNewOwnerId, pcbIdSize, pVersionOut);
			}
			public HRESULT MapRemoteToLocal(ISyncKnowledge* pRemoteKnowledge, ISyncKnowledge** ppMappedKnowledge) mut
			{
				return VT.MapRemoteToLocal(&this, pRemoteKnowledge, ppMappedKnowledge);
			}
			public HRESULT Union(ISyncKnowledge* pKnowledge) mut
			{
				return VT.Union(&this, pKnowledge);
			}
			public HRESULT ProjectOntoItem(uint8* pbItemId, ISyncKnowledge** ppKnowledgeOut) mut
			{
				return VT.ProjectOntoItem(&this, pbItemId, ppKnowledgeOut);
			}
			public HRESULT ProjectOntoChangeUnit(uint8* pbItemId, uint8* pbChangeUnitId, ISyncKnowledge** ppKnowledgeOut) mut
			{
				return VT.ProjectOntoChangeUnit(&this, pbItemId, pbChangeUnitId, ppKnowledgeOut);
			}
			public HRESULT ProjectOntoRange(SYNC_RANGE* psrngSyncRange, ISyncKnowledge** ppKnowledgeOut) mut
			{
				return VT.ProjectOntoRange(&this, psrngSyncRange, ppKnowledgeOut);
			}
			public HRESULT ExcludeItem(uint8* pbItemId) mut
			{
				return VT.ExcludeItem(&this, pbItemId);
			}
			public HRESULT ExcludeChangeUnit(uint8* pbItemId, uint8* pbChangeUnitId) mut
			{
				return VT.ExcludeChangeUnit(&this, pbItemId, pbChangeUnitId);
			}
			public HRESULT ContainsKnowledge(ISyncKnowledge* pKnowledge) mut
			{
				return VT.ContainsKnowledge(&this, pKnowledge);
			}
			public HRESULT FindMinTickCountForReplica(uint8* pbReplicaId, uint64* pullReplicaTickCount) mut
			{
				return VT.FindMinTickCountForReplica(&this, pbReplicaId, pullReplicaTickCount);
			}
			public HRESULT GetRangeExceptions(Guid* riid, void** ppUnk) mut
			{
				return VT.GetRangeExceptions(&this, riid, ppUnk);
			}
			public HRESULT GetSingleItemExceptions(Guid* riid, void** ppUnk) mut
			{
				return VT.GetSingleItemExceptions(&this, riid, ppUnk);
			}
			public HRESULT GetChangeUnitExceptions(Guid* riid, void** ppUnk) mut
			{
				return VT.GetChangeUnitExceptions(&this, riid, ppUnk);
			}
			public HRESULT FindClockVectorForItem(uint8* pbItemId, Guid* riid, void** ppUnk) mut
			{
				return VT.FindClockVectorForItem(&this, pbItemId, riid, ppUnk);
			}
			public HRESULT FindClockVectorForChangeUnit(uint8* pbItemId, uint8* pbChangeUnitId, Guid* riid, void** ppUnk) mut
			{
				return VT.FindClockVectorForChangeUnit(&this, pbItemId, pbChangeUnitId, riid, ppUnk);
			}
			public HRESULT GetVersion(uint32* pdwVersion) mut
			{
				return VT.GetVersion(&this, pdwVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncKnowledge *self, uint8* pbReplicaId, uint32* pcbIdSize) GetOwnerReplicaId;
				public new function HRESULT(ISyncKnowledge *self, BOOL fSerializeReplicaKeyMap, uint8* pbKnowledge, uint32* pcbKnowledge) Serialize;
				public new function HRESULT(ISyncKnowledge *self, uint64 ullTickCount) SetLocalTickCount;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbVersionOwnerReplicaId, uint8* pgidItemId, SYNC_VERSION* pSyncVersion) ContainsChange;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbVersionOwnerReplicaId, uint8* pbItemId, uint8* pbChangeUnitId, SYNC_VERSION* pSyncVersion) ContainsChangeUnit;
				public new function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetScopeVector;
				public new function HRESULT(ISyncKnowledge *self, IReplicaKeyMap** ppReplicaKeyMap) GetReplicaKeyMap;
				public new function HRESULT(ISyncKnowledge *self, ISyncKnowledge** ppClonedKnowledge) Clone;
				public new function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledgeIn, uint8* pbCurrentOwnerId, SYNC_VERSION* pVersionIn, uint8* pbNewOwnerId, uint32* pcbIdSize, SYNC_VERSION* pVersionOut) ConvertVersion;
				public new function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pRemoteKnowledge, ISyncKnowledge** ppMappedKnowledge) MapRemoteToLocal;
				public new function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledge) Union;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId, ISyncKnowledge** ppKnowledgeOut) ProjectOntoItem;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId, ISyncKnowledge** ppKnowledgeOut) ProjectOntoChangeUnit;
				public new function HRESULT(ISyncKnowledge *self, SYNC_RANGE* psrngSyncRange, ISyncKnowledge** ppKnowledgeOut) ProjectOntoRange;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId) ExcludeItem;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId) ExcludeChangeUnit;
				public new function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledge) ContainsKnowledge;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbReplicaId, uint64* pullReplicaTickCount) FindMinTickCountForReplica;
				public new function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetRangeExceptions;
				public new function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetSingleItemExceptions;
				public new function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetChangeUnitExceptions;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId, Guid* riid, void** ppUnk) FindClockVectorForItem;
				public new function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId, Guid* riid, void** ppUnk) FindClockVectorForChangeUnit;
				public new function HRESULT(ISyncKnowledge *self, uint32* pdwVersion) GetVersion;
			}
		}
		[CRepr]
		public struct IForgottenKnowledge : ISyncKnowledge
		{
			public const new Guid IID = .(0x456e0f96, 0x6036, 0x452b, 0x9f, 0x9d, 0xbc, 0xc4, 0xb4, 0xa8, 0x5d, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ForgetToVersion(ISyncKnowledge* pKnowledge, SYNC_VERSION* pVersion) mut
			{
				return VT.ForgetToVersion(&this, pKnowledge, pVersion);
			}
			[CRepr]
			public struct VTable : ISyncKnowledge.VTable
			{
				public new function HRESULT(IForgottenKnowledge *self, ISyncKnowledge* pKnowledge, SYNC_VERSION* pVersion) ForgetToVersion;
			}
		}
		[CRepr]
		public struct ISyncKnowledge2 : ISyncKnowledge
		{
			public const new Guid IID = .(0xed0addc0, 0x3b4b, 0x46a1, 0x9a, 0x45, 0x45, 0x66, 0x1d, 0x21, 0x14, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(ID_PARAMETERS* pIdParameters) mut
			{
				return VT.GetIdParameters(&this, pIdParameters);
			}
			public HRESULT ProjectOntoColumnSet(uint8** ppColumns, uint32 count, ISyncKnowledge2** ppiKnowledgeOut) mut
			{
				return VT.ProjectOntoColumnSet(&this, ppColumns, count, ppiKnowledgeOut);
			}
			public HRESULT SerializeWithOptions(SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) mut
			{
				return VT.SerializeWithOptions(&this, targetFormatVersion, dwFlags, pbBuffer, pdwSerializedSize);
			}
			public HRESULT GetLowestUncontainedId(ISyncKnowledge2* piSyncKnowledge, uint8* pbItemId, uint32* pcbItemIdSize) mut
			{
				return VT.GetLowestUncontainedId(&this, piSyncKnowledge, pbItemId, pcbItemIdSize);
			}
			public HRESULT GetInspector(Guid* riid, void** ppiInspector) mut
			{
				return VT.GetInspector(&this, riid, ppiInspector);
			}
			public HRESULT GetMinimumSupportedVersion(SYNC_SERIALIZATION_VERSION* pVersion) mut
			{
				return VT.GetMinimumSupportedVersion(&this, pVersion);
			}
			public HRESULT GetStatistics(SYNC_STATISTICS which, uint32* pValue) mut
			{
				return VT.GetStatistics(&this, which, pValue);
			}
			public HRESULT ContainsKnowledgeForItem(ISyncKnowledge* pKnowledge, uint8* pbItemId) mut
			{
				return VT.ContainsKnowledgeForItem(&this, pKnowledge, pbItemId);
			}
			public HRESULT ContainsKnowledgeForChangeUnit(ISyncKnowledge* pKnowledge, uint8* pbItemId, uint8* pbChangeUnitId) mut
			{
				return VT.ContainsKnowledgeForChangeUnit(&this, pKnowledge, pbItemId, pbChangeUnitId);
			}
			public HRESULT ProjectOntoKnowledgeWithPrerequisite(ISyncKnowledge* pPrerequisiteKnowledge, ISyncKnowledge* pTemplateKnowledge, ISyncKnowledge** ppProjectedKnowledge) mut
			{
				return VT.ProjectOntoKnowledgeWithPrerequisite(&this, pPrerequisiteKnowledge, pTemplateKnowledge, ppProjectedKnowledge);
			}
			public HRESULT Complement(ISyncKnowledge* pSyncKnowledge, ISyncKnowledge** ppComplementedKnowledge) mut
			{
				return VT.Complement(&this, pSyncKnowledge, ppComplementedKnowledge);
			}
			public HRESULT IntersectsWithKnowledge(ISyncKnowledge* pSyncKnowledge) mut
			{
				return VT.IntersectsWithKnowledge(&this, pSyncKnowledge);
			}
			public HRESULT GetKnowledgeCookie(IUnknown** ppKnowledgeCookie) mut
			{
				return VT.GetKnowledgeCookie(&this, ppKnowledgeCookie);
			}
			public HRESULT CompareToKnowledgeCookie(IUnknown* pKnowledgeCookie, KNOWLEDGE_COOKIE_COMPARISON_RESULT* pResult) mut
			{
				return VT.CompareToKnowledgeCookie(&this, pKnowledgeCookie, pResult);
			}
			[CRepr]
			public struct VTable : ISyncKnowledge.VTable
			{
				public new function HRESULT(ISyncKnowledge2 *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
				public new function HRESULT(ISyncKnowledge2 *self, uint8** ppColumns, uint32 count, ISyncKnowledge2** ppiKnowledgeOut) ProjectOntoColumnSet;
				public new function HRESULT(ISyncKnowledge2 *self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) SerializeWithOptions;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge2* piSyncKnowledge, uint8* pbItemId, uint32* pcbItemIdSize) GetLowestUncontainedId;
				public new function HRESULT(ISyncKnowledge2 *self, Guid* riid, void** ppiInspector) GetInspector;
				public new function HRESULT(ISyncKnowledge2 *self, SYNC_SERIALIZATION_VERSION* pVersion) GetMinimumSupportedVersion;
				public new function HRESULT(ISyncKnowledge2 *self, SYNC_STATISTICS which, uint32* pValue) GetStatistics;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pKnowledge, uint8* pbItemId) ContainsKnowledgeForItem;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pKnowledge, uint8* pbItemId, uint8* pbChangeUnitId) ContainsKnowledgeForChangeUnit;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pPrerequisiteKnowledge, ISyncKnowledge* pTemplateKnowledge, ISyncKnowledge** ppProjectedKnowledge) ProjectOntoKnowledgeWithPrerequisite;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pSyncKnowledge, ISyncKnowledge** ppComplementedKnowledge) Complement;
				public new function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pSyncKnowledge) IntersectsWithKnowledge;
				public new function HRESULT(ISyncKnowledge2 *self, IUnknown** ppKnowledgeCookie) GetKnowledgeCookie;
				public new function HRESULT(ISyncKnowledge2 *self, IUnknown* pKnowledgeCookie, KNOWLEDGE_COOKIE_COMPARISON_RESULT* pResult) CompareToKnowledgeCookie;
			}
		}
		[CRepr]
		public struct IRecoverableErrorData : IUnknown
		{
			public const new Guid IID = .(0xb37c4a0a, 0x4b7d, 0x4c2d, 0x97, 0x11, 0x3b, 0x00, 0xd1, 0x19, 0xb1, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pcszItemDisplayName, PWSTR pcszErrorDescription) mut
			{
				return VT.Initialize(&this, pcszItemDisplayName, pcszErrorDescription);
			}
			public HRESULT GetItemDisplayName(PWSTR pszItemDisplayName, uint32* pcchItemDisplayName) mut
			{
				return VT.GetItemDisplayName(&this, pszItemDisplayName, pcchItemDisplayName);
			}
			public HRESULT GetErrorDescription(PWSTR pszErrorDescription, uint32* pcchErrorDescription) mut
			{
				return VT.GetErrorDescription(&this, pszErrorDescription, pcchErrorDescription);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRecoverableErrorData *self, PWSTR pcszItemDisplayName, PWSTR pcszErrorDescription) Initialize;
				public new function HRESULT(IRecoverableErrorData *self, PWSTR pszItemDisplayName, uint32* pcchItemDisplayName) GetItemDisplayName;
				public new function HRESULT(IRecoverableErrorData *self, PWSTR pszErrorDescription, uint32* pcchErrorDescription) GetErrorDescription;
			}
		}
		[CRepr]
		public struct IRecoverableError : IUnknown
		{
			public const new Guid IID = .(0x0f5625e8, 0x0a7b, 0x45ee, 0x96, 0x37, 0x1c, 0xe1, 0x36, 0x45, 0x90, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStage(SYNC_PROGRESS_STAGE* pStage) mut
			{
				return VT.GetStage(&this, pStage);
			}
			public HRESULT GetProvider(SYNC_PROVIDER_ROLE* pProviderRole) mut
			{
				return VT.GetProvider(&this, pProviderRole);
			}
			public HRESULT GetChangeWithRecoverableError(ISyncChange** ppChangeWithRecoverableError) mut
			{
				return VT.GetChangeWithRecoverableError(&this, ppChangeWithRecoverableError);
			}
			public HRESULT GetRecoverableErrorDataForChange(HRESULT* phrError, IRecoverableErrorData** ppErrorData) mut
			{
				return VT.GetRecoverableErrorDataForChange(&this, phrError, ppErrorData);
			}
			public HRESULT GetRecoverableErrorDataForChangeUnit(ISyncChangeUnit* pChangeUnit, HRESULT* phrError, IRecoverableErrorData** ppErrorData) mut
			{
				return VT.GetRecoverableErrorDataForChangeUnit(&this, pChangeUnit, phrError, ppErrorData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRecoverableError *self, SYNC_PROGRESS_STAGE* pStage) GetStage;
				public new function HRESULT(IRecoverableError *self, SYNC_PROVIDER_ROLE* pProviderRole) GetProvider;
				public new function HRESULT(IRecoverableError *self, ISyncChange** ppChangeWithRecoverableError) GetChangeWithRecoverableError;
				public new function HRESULT(IRecoverableError *self, HRESULT* phrError, IRecoverableErrorData** ppErrorData) GetRecoverableErrorDataForChange;
				public new function HRESULT(IRecoverableError *self, ISyncChangeUnit* pChangeUnit, HRESULT* phrError, IRecoverableErrorData** ppErrorData) GetRecoverableErrorDataForChangeUnit;
			}
		}
		[CRepr]
		public struct IChangeConflict : IUnknown
		{
			public const new Guid IID = .(0x014ebf97, 0x9f20, 0x4f7a, 0xbd, 0xd4, 0x25, 0x97, 0x9c, 0x77, 0xc0, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDestinationProviderConflictingChange(ISyncChange** ppConflictingChange) mut
			{
				return VT.GetDestinationProviderConflictingChange(&this, ppConflictingChange);
			}
			public HRESULT GetSourceProviderConflictingChange(ISyncChange** ppConflictingChange) mut
			{
				return VT.GetSourceProviderConflictingChange(&this, ppConflictingChange);
			}
			public HRESULT GetDestinationProviderConflictingData(IUnknown** ppConflictingData) mut
			{
				return VT.GetDestinationProviderConflictingData(&this, ppConflictingData);
			}
			public HRESULT GetSourceProviderConflictingData(IUnknown** ppConflictingData) mut
			{
				return VT.GetSourceProviderConflictingData(&this, ppConflictingData);
			}
			public HRESULT GetResolveActionForChange(SYNC_RESOLVE_ACTION* pResolveAction) mut
			{
				return VT.GetResolveActionForChange(&this, pResolveAction);
			}
			public HRESULT SetResolveActionForChange(SYNC_RESOLVE_ACTION resolveAction) mut
			{
				return VT.SetResolveActionForChange(&this, resolveAction);
			}
			public HRESULT GetResolveActionForChangeUnit(ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION* pResolveAction) mut
			{
				return VT.GetResolveActionForChangeUnit(&this, pChangeUnit, pResolveAction);
			}
			public HRESULT SetResolveActionForChangeUnit(ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION resolveAction) mut
			{
				return VT.SetResolveActionForChangeUnit(&this, pChangeUnit, resolveAction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IChangeConflict *self, ISyncChange** ppConflictingChange) GetDestinationProviderConflictingChange;
				public new function HRESULT(IChangeConflict *self, ISyncChange** ppConflictingChange) GetSourceProviderConflictingChange;
				public new function HRESULT(IChangeConflict *self, IUnknown** ppConflictingData) GetDestinationProviderConflictingData;
				public new function HRESULT(IChangeConflict *self, IUnknown** ppConflictingData) GetSourceProviderConflictingData;
				public new function HRESULT(IChangeConflict *self, SYNC_RESOLVE_ACTION* pResolveAction) GetResolveActionForChange;
				public new function HRESULT(IChangeConflict *self, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChange;
				public new function HRESULT(IChangeConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION* pResolveAction) GetResolveActionForChangeUnit;
				public new function HRESULT(IChangeConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChangeUnit;
			}
		}
		[CRepr]
		public struct IConstraintConflict : IUnknown
		{
			public const new Guid IID = .(0x00d2302e, 0x1cf8, 0x4835, 0xb8, 0x5f, 0xb7, 0xca, 0x4f, 0x79, 0x9e, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDestinationProviderConflictingChange(ISyncChange** ppConflictingChange) mut
			{
				return VT.GetDestinationProviderConflictingChange(&this, ppConflictingChange);
			}
			public HRESULT GetSourceProviderConflictingChange(ISyncChange** ppConflictingChange) mut
			{
				return VT.GetSourceProviderConflictingChange(&this, ppConflictingChange);
			}
			public HRESULT GetDestinationProviderOriginalChange(ISyncChange** ppOriginalChange) mut
			{
				return VT.GetDestinationProviderOriginalChange(&this, ppOriginalChange);
			}
			public HRESULT GetDestinationProviderConflictingData(IUnknown** ppConflictingData) mut
			{
				return VT.GetDestinationProviderConflictingData(&this, ppConflictingData);
			}
			public HRESULT GetSourceProviderConflictingData(IUnknown** ppConflictingData) mut
			{
				return VT.GetSourceProviderConflictingData(&this, ppConflictingData);
			}
			public HRESULT GetDestinationProviderOriginalData(IUnknown** ppOriginalData) mut
			{
				return VT.GetDestinationProviderOriginalData(&this, ppOriginalData);
			}
			public HRESULT GetConstraintResolveActionForChange(SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) mut
			{
				return VT.GetConstraintResolveActionForChange(&this, pConstraintResolveAction);
			}
			public HRESULT SetConstraintResolveActionForChange(SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) mut
			{
				return VT.SetConstraintResolveActionForChange(&this, constraintResolveAction);
			}
			public HRESULT GetConstraintResolveActionForChangeUnit(ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) mut
			{
				return VT.GetConstraintResolveActionForChangeUnit(&this, pChangeUnit, pConstraintResolveAction);
			}
			public HRESULT SetConstraintResolveActionForChangeUnit(ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) mut
			{
				return VT.SetConstraintResolveActionForChangeUnit(&this, pChangeUnit, constraintResolveAction);
			}
			public HRESULT GetConstraintConflictReason(CONSTRAINT_CONFLICT_REASON* pConstraintConflictReason) mut
			{
				return VT.GetConstraintConflictReason(&this, pConstraintConflictReason);
			}
			public HRESULT IsTemporary() mut
			{
				return VT.IsTemporary(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConstraintConflict *self, ISyncChange** ppConflictingChange) GetDestinationProviderConflictingChange;
				public new function HRESULT(IConstraintConflict *self, ISyncChange** ppConflictingChange) GetSourceProviderConflictingChange;
				public new function HRESULT(IConstraintConflict *self, ISyncChange** ppOriginalChange) GetDestinationProviderOriginalChange;
				public new function HRESULT(IConstraintConflict *self, IUnknown** ppConflictingData) GetDestinationProviderConflictingData;
				public new function HRESULT(IConstraintConflict *self, IUnknown** ppConflictingData) GetSourceProviderConflictingData;
				public new function HRESULT(IConstraintConflict *self, IUnknown** ppOriginalData) GetDestinationProviderOriginalData;
				public new function HRESULT(IConstraintConflict *self, SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) GetConstraintResolveActionForChange;
				public new function HRESULT(IConstraintConflict *self, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChange;
				public new function HRESULT(IConstraintConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) GetConstraintResolveActionForChangeUnit;
				public new function HRESULT(IConstraintConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChangeUnit;
				public new function HRESULT(IConstraintConflict *self, CONSTRAINT_CONFLICT_REASON* pConstraintConflictReason) GetConstraintConflictReason;
				public new function HRESULT(IConstraintConflict *self) IsTemporary;
			}
		}
		[CRepr]
		public struct ISyncCallback : IUnknown
		{
			public const new Guid IID = .(0x0599797f, 0x5ed9, 0x485c, 0xae, 0x36, 0x0c, 0x5d, 0x1b, 0xf2, 0xe7, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProgress(SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) mut
			{
				return VT.OnProgress(&this, provider, syncStage, dwCompletedWork, dwTotalWork);
			}
			public HRESULT OnChange(ISyncChange* pSyncChange) mut
			{
				return VT.OnChange(&this, pSyncChange);
			}
			public HRESULT OnConflict(IChangeConflict* pConflict) mut
			{
				return VT.OnConflict(&this, pConflict);
			}
			public HRESULT OnFullEnumerationNeeded(SYNC_FULL_ENUMERATION_ACTION* pFullEnumerationAction) mut
			{
				return VT.OnFullEnumerationNeeded(&this, pFullEnumerationAction);
			}
			public HRESULT OnRecoverableError(IRecoverableError* pRecoverableError) mut
			{
				return VT.OnRecoverableError(&this, pRecoverableError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncCallback *self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
				public new function HRESULT(ISyncCallback *self, ISyncChange* pSyncChange) OnChange;
				public new function HRESULT(ISyncCallback *self, IChangeConflict* pConflict) OnConflict;
				public new function HRESULT(ISyncCallback *self, SYNC_FULL_ENUMERATION_ACTION* pFullEnumerationAction) OnFullEnumerationNeeded;
				public new function HRESULT(ISyncCallback *self, IRecoverableError* pRecoverableError) OnRecoverableError;
			}
		}
		[CRepr]
		public struct ISyncCallback2 : ISyncCallback
		{
			public const new Guid IID = .(0x47ce84af, 0x7442, 0x4ead, 0x86, 0x30, 0x12, 0x01, 0x5e, 0x03, 0x0a, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChangeApplied(uint32 dwChangesApplied, uint32 dwChangesFailed) mut
			{
				return VT.OnChangeApplied(&this, dwChangesApplied, dwChangesFailed);
			}
			public HRESULT OnChangeFailed(uint32 dwChangesApplied, uint32 dwChangesFailed) mut
			{
				return VT.OnChangeFailed(&this, dwChangesApplied, dwChangesFailed);
			}
			[CRepr]
			public struct VTable : ISyncCallback.VTable
			{
				public new function HRESULT(ISyncCallback2 *self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeApplied;
				public new function HRESULT(ISyncCallback2 *self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeFailed;
			}
		}
		[CRepr]
		public struct ISyncConstraintCallback : IUnknown
		{
			public const new Guid IID = .(0x8af3843e, 0x75b3, 0x438c, 0xbb, 0x51, 0x6f, 0x02, 0x0d, 0x70, 0xd3, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConstraintConflict(IConstraintConflict* pConflict) mut
			{
				return VT.OnConstraintConflict(&this, pConflict);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncConstraintCallback *self, IConstraintConflict* pConflict) OnConstraintConflict;
			}
		}
		[CRepr]
		public struct ISyncProvider : IUnknown
		{
			public const new Guid IID = .(0x8f657056, 0x2bce, 0x4a17, 0x8c, 0x68, 0xc7, 0xbb, 0x78, 0x98, 0xb5, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(ID_PARAMETERS* pIdParameters) mut
			{
				return VT.GetIdParameters(&this, pIdParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncProvider *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
			}
		}
		[CRepr]
		public struct ISyncSessionState : IUnknown
		{
			public const new Guid IID = .(0xb8a940fe, 0x9f01, 0x483b, 0x94, 0x34, 0xc3, 0x7d, 0x36, 0x12, 0x25, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsCanceled(BOOL* pfIsCanceled) mut
			{
				return VT.IsCanceled(&this, pfIsCanceled);
			}
			public HRESULT GetInfoForChangeApplication(uint8* pbChangeApplierInfo, uint32* pcbChangeApplierInfo) mut
			{
				return VT.GetInfoForChangeApplication(&this, pbChangeApplierInfo, pcbChangeApplierInfo);
			}
			public HRESULT LoadInfoFromChangeApplication(uint8* pbChangeApplierInfo, uint32 cbChangeApplierInfo) mut
			{
				return VT.LoadInfoFromChangeApplication(&this, pbChangeApplierInfo, cbChangeApplierInfo);
			}
			public HRESULT GetForgottenKnowledgeRecoveryRangeStart(uint8* pbRangeStart, uint32* pcbRangeStart) mut
			{
				return VT.GetForgottenKnowledgeRecoveryRangeStart(&this, pbRangeStart, pcbRangeStart);
			}
			public HRESULT GetForgottenKnowledgeRecoveryRangeEnd(uint8* pbRangeEnd, uint32* pcbRangeEnd) mut
			{
				return VT.GetForgottenKnowledgeRecoveryRangeEnd(&this, pbRangeEnd, pcbRangeEnd);
			}
			public HRESULT SetForgottenKnowledgeRecoveryRange(SYNC_RANGE* pRange) mut
			{
				return VT.SetForgottenKnowledgeRecoveryRange(&this, pRange);
			}
			public HRESULT OnProgress(SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) mut
			{
				return VT.OnProgress(&this, provider, syncStage, dwCompletedWork, dwTotalWork);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncSessionState *self, BOOL* pfIsCanceled) IsCanceled;
				public new function HRESULT(ISyncSessionState *self, uint8* pbChangeApplierInfo, uint32* pcbChangeApplierInfo) GetInfoForChangeApplication;
				public new function HRESULT(ISyncSessionState *self, uint8* pbChangeApplierInfo, uint32 cbChangeApplierInfo) LoadInfoFromChangeApplication;
				public new function HRESULT(ISyncSessionState *self, uint8* pbRangeStart, uint32* pcbRangeStart) GetForgottenKnowledgeRecoveryRangeStart;
				public new function HRESULT(ISyncSessionState *self, uint8* pbRangeEnd, uint32* pcbRangeEnd) GetForgottenKnowledgeRecoveryRangeEnd;
				public new function HRESULT(ISyncSessionState *self, SYNC_RANGE* pRange) SetForgottenKnowledgeRecoveryRange;
				public new function HRESULT(ISyncSessionState *self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
			}
		}
		[CRepr]
		public struct ISyncSessionExtendedErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x326c6810, 0x790a, 0x409b, 0xb7, 0x41, 0x69, 0x99, 0x38, 0x87, 0x61, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProviderWithError(ISyncProvider** ppProviderWithError) mut
			{
				return VT.GetSyncProviderWithError(&this, ppProviderWithError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncSessionExtendedErrorInfo *self, ISyncProvider** ppProviderWithError) GetSyncProviderWithError;
			}
		}
		[CRepr]
		public struct ISyncSessionState2 : ISyncSessionState
		{
			public const new Guid IID = .(0x9e37cfa3, 0x9e38, 0x4c61, 0x9c, 0xa3, 0xff, 0xe8, 0x10, 0xb4, 0x5c, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProviderWithError(BOOL fSelf) mut
			{
				return VT.SetProviderWithError(&this, fSelf);
			}
			public HRESULT GetSessionErrorStatus(HRESULT* phrSessionError) mut
			{
				return VT.GetSessionErrorStatus(&this, phrSessionError);
			}
			[CRepr]
			public struct VTable : ISyncSessionState.VTable
			{
				public new function HRESULT(ISyncSessionState2 *self, BOOL fSelf) SetProviderWithError;
				public new function HRESULT(ISyncSessionState2 *self, HRESULT* phrSessionError) GetSessionErrorStatus;
			}
		}
		[CRepr]
		public struct ISyncFilterInfo : IUnknown
		{
			public const new Guid IID = .(0x794eaaf8, 0x3f2e, 0x47e6, 0x97, 0x28, 0x17, 0xe6, 0xfc, 0xf9, 0x4c, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(uint8* pbBuffer, uint32* pcbBuffer) mut
			{
				return VT.Serialize(&this, pbBuffer, pcbBuffer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncFilterInfo *self, uint8* pbBuffer, uint32* pcbBuffer) Serialize;
			}
		}
		[CRepr]
		public struct ISyncFilterInfo2 : ISyncFilterInfo
		{
			public const new Guid IID = .(0x19b394ba, 0xe3d0, 0x468c, 0x93, 0x4d, 0x32, 0x19, 0x68, 0xb2, 0xab, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function HRESULT(ISyncFilterInfo2 *self, uint32* pdwFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IChangeUnitListFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0xf2837671, 0x0bdf, 0x43fa, 0xb5, 0x02, 0x23, 0x23, 0x75, 0xfb, 0x50, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint8** ppbChangeUnitIds, uint32 dwChangeUnitCount) mut
			{
				return VT.Initialize(&this, ppbChangeUnitIds, dwChangeUnitCount);
			}
			public HRESULT GetChangeUnitIdCount(uint32* pdwChangeUnitIdCount) mut
			{
				return VT.GetChangeUnitIdCount(&this, pdwChangeUnitIdCount);
			}
			public HRESULT GetChangeUnitId(uint32 dwChangeUnitIdIndex, uint8* pbChangeUnitId, uint32* pcbIdSize) mut
			{
				return VT.GetChangeUnitId(&this, dwChangeUnitIdIndex, pbChangeUnitId, pcbIdSize);
			}
			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function HRESULT(IChangeUnitListFilterInfo *self, uint8** ppbChangeUnitIds, uint32 dwChangeUnitCount) Initialize;
				public new function HRESULT(IChangeUnitListFilterInfo *self, uint32* pdwChangeUnitIdCount) GetChangeUnitIdCount;
				public new function HRESULT(IChangeUnitListFilterInfo *self, uint32 dwChangeUnitIdIndex, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
			}
		}
		[CRepr]
		public struct ISyncFilter : IUnknown
		{
			public const new Guid IID = .(0x087a3f15, 0x0fcb, 0x44c1, 0x96, 0x39, 0x53, 0xc1, 0x4e, 0x2b, 0x55, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsIdentical(ISyncFilter* pSyncFilter) mut
			{
				return VT.IsIdentical(&this, pSyncFilter);
			}
			public HRESULT Serialize(uint8* pbSyncFilter, uint32* pcbSyncFilter) mut
			{
				return VT.Serialize(&this, pbSyncFilter, pcbSyncFilter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncFilter *self, ISyncFilter* pSyncFilter) IsIdentical;
				public new function HRESULT(ISyncFilter *self, uint8* pbSyncFilter, uint32* pcbSyncFilter) Serialize;
			}
		}
		[CRepr]
		public struct ISyncFilterDeserializer : IUnknown
		{
			public const new Guid IID = .(0xb45b7a72, 0xe5c7, 0x46be, 0x9c, 0x82, 0x77, 0xb8, 0xb1, 0x5d, 0xab, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeserializeSyncFilter(uint8* pbSyncFilter, uint32 dwCbSyncFilter, ISyncFilter** ppISyncFilter) mut
			{
				return VT.DeserializeSyncFilter(&this, pbSyncFilter, dwCbSyncFilter, ppISyncFilter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncFilterDeserializer *self, uint8* pbSyncFilter, uint32 dwCbSyncFilter, ISyncFilter** ppISyncFilter) DeserializeSyncFilter;
			}
		}
		[CRepr]
		public struct ICustomFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x1d335dff, 0x6f88, 0x4e4d, 0x91, 0xa8, 0xa3, 0xf3, 0x51, 0xcf, 0xd4, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncFilter(ISyncFilter** pISyncFilter) mut
			{
				return VT.GetSyncFilter(&this, pISyncFilter);
			}
			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function HRESULT(ICustomFilterInfo *self, ISyncFilter** pISyncFilter) GetSyncFilter;
			}
		}
		[CRepr]
		public struct ICombinedFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x11f9de71, 0x2818, 0x4779, 0xb2, 0xac, 0x42, 0xd4, 0x50, 0x56, 0x5f, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterCount(uint32* pdwFilterCount) mut
			{
				return VT.GetFilterCount(&this, pdwFilterCount);
			}
			public HRESULT GetFilterInfo(uint32 dwFilterIndex, ISyncFilterInfo** ppIFilterInfo) mut
			{
				return VT.GetFilterInfo(&this, dwFilterIndex, ppIFilterInfo);
			}
			public HRESULT GetFilterCombinationType(FILTER_COMBINATION_TYPE* pFilterCombinationType) mut
			{
				return VT.GetFilterCombinationType(&this, pFilterCombinationType);
			}
			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function HRESULT(ICombinedFilterInfo *self, uint32* pdwFilterCount) GetFilterCount;
				public new function HRESULT(ICombinedFilterInfo *self, uint32 dwFilterIndex, ISyncFilterInfo** ppIFilterInfo) GetFilterInfo;
				public new function HRESULT(ICombinedFilterInfo *self, FILTER_COMBINATION_TYPE* pFilterCombinationType) GetFilterCombinationType;
			}
		}
		[CRepr]
		public struct IEnumSyncChanges : IUnknown
		{
			public const new Guid IID = .(0x5f86be4a, 0x5e78, 0x4e32, 0xac, 0x1c, 0xc2, 0x4f, 0xd2, 0x23, 0xef, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cChanges, ISyncChange** ppChange, uint32* pcFetched) mut
			{
				return VT.Next(&this, cChanges, ppChange, pcFetched);
			}
			public HRESULT Skip(uint32 cChanges) mut
			{
				return VT.Skip(&this, cChanges);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncChanges** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncChanges *self, uint32 cChanges, ISyncChange** ppChange, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSyncChanges *self, uint32 cChanges) Skip;
				public new function HRESULT(IEnumSyncChanges *self) Reset;
				public new function HRESULT(IEnumSyncChanges *self, IEnumSyncChanges** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x56f14771, 0x8677, 0x484f, 0xa1, 0x70, 0xe3, 0x86, 0xe4, 0x18, 0xa6, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddChangeUnitMetadata(uint8* pbChangeUnitId, SYNC_VERSION* pChangeUnitVersion) mut
			{
				return VT.AddChangeUnitMetadata(&this, pbChangeUnitId, pChangeUnitVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeBuilder *self, uint8* pbChangeUnitId, SYNC_VERSION* pChangeUnitVersion) AddChangeUnitMetadata;
			}
		}
		[CRepr]
		public struct IFilterTrackingSyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x295024a0, 0x70da, 0x4c58, 0x88, 0x3c, 0xce, 0x2a, 0xfb, 0x30, 0x8d, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFilterChange(uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) mut
			{
				return VT.AddFilterChange(&this, dwFilterKey, pFilterChange);
			}
			public HRESULT SetAllChangeUnitsPresentFlag() mut
			{
				return VT.SetAllChangeUnitsPresentFlag(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFilterTrackingSyncChangeBuilder *self, uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) AddFilterChange;
				public new function HRESULT(IFilterTrackingSyncChangeBuilder *self) SetAllChangeUnitsPresentFlag;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchBase : IUnknown
		{
			public const new Guid IID = .(0x52f6e694, 0x6a71, 0x4494, 0xa1, 0x84, 0xa8, 0x31, 0x1b, 0xf5, 0xd2, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChangeEnumerator(IEnumSyncChanges** ppEnum) mut
			{
				return VT.GetChangeEnumerator(&this, ppEnum);
			}
			public HRESULT GetIsLastBatch(BOOL* pfLastBatch) mut
			{
				return VT.GetIsLastBatch(&this, pfLastBatch);
			}
			public HRESULT GetWorkEstimateForBatch(uint32* pdwWorkForBatch) mut
			{
				return VT.GetWorkEstimateForBatch(&this, pdwWorkForBatch);
			}
			public HRESULT GetRemainingWorkEstimateForSession(uint32* pdwRemainingWorkForSession) mut
			{
				return VT.GetRemainingWorkEstimateForSession(&this, pdwRemainingWorkForSession);
			}
			public HRESULT BeginOrderedGroup(uint8* pbLowerBound) mut
			{
				return VT.BeginOrderedGroup(&this, pbLowerBound);
			}
			public HRESULT EndOrderedGroup(uint8* pbUpperBound, ISyncKnowledge* pMadeWithKnowledge) mut
			{
				return VT.EndOrderedGroup(&this, pbUpperBound, pMadeWithKnowledge);
			}
			public HRESULT AddItemMetadataToGroup(uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) mut
			{
				return VT.AddItemMetadataToGroup(&this, pbOwnerReplicaId, pbItemId, pChangeVersion, pCreationVersion, dwFlags, dwWorkForChange, ppChangeBuilder);
			}
			public HRESULT GetLearnedKnowledge(ISyncKnowledge** ppLearnedKnowledge) mut
			{
				return VT.GetLearnedKnowledge(&this, ppLearnedKnowledge);
			}
			public HRESULT GetPrerequisiteKnowledge(ISyncKnowledge** ppPrerequisteKnowledge) mut
			{
				return VT.GetPrerequisiteKnowledge(&this, ppPrerequisteKnowledge);
			}
			public HRESULT GetSourceForgottenKnowledge(IForgottenKnowledge** ppSourceForgottenKnowledge) mut
			{
				return VT.GetSourceForgottenKnowledge(&this, ppSourceForgottenKnowledge);
			}
			public HRESULT SetLastBatch() mut
			{
				return VT.SetLastBatch(&this);
			}
			public HRESULT SetWorkEstimateForBatch(uint32 dwWorkForBatch) mut
			{
				return VT.SetWorkEstimateForBatch(&this, dwWorkForBatch);
			}
			public HRESULT SetRemainingWorkEstimateForSession(uint32 dwRemainingWorkForSession) mut
			{
				return VT.SetRemainingWorkEstimateForSession(&this, dwRemainingWorkForSession);
			}
			public HRESULT Serialize(uint8* pbChangeBatch, uint32* pcbChangeBatch) mut
			{
				return VT.Serialize(&this, pbChangeBatch, pcbChangeBatch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeBatchBase *self, IEnumSyncChanges** ppEnum) GetChangeEnumerator;
				public new function HRESULT(ISyncChangeBatchBase *self, BOOL* pfLastBatch) GetIsLastBatch;
				public new function HRESULT(ISyncChangeBatchBase *self, uint32* pdwWorkForBatch) GetWorkEstimateForBatch;
				public new function HRESULT(ISyncChangeBatchBase *self, uint32* pdwRemainingWorkForSession) GetRemainingWorkEstimateForSession;
				public new function HRESULT(ISyncChangeBatchBase *self, uint8* pbLowerBound) BeginOrderedGroup;
				public new function HRESULT(ISyncChangeBatchBase *self, uint8* pbUpperBound, ISyncKnowledge* pMadeWithKnowledge) EndOrderedGroup;
				public new function HRESULT(ISyncChangeBatchBase *self, uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddItemMetadataToGroup;
				public new function HRESULT(ISyncChangeBatchBase *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledge;
				public new function HRESULT(ISyncChangeBatchBase *self, ISyncKnowledge** ppPrerequisteKnowledge) GetPrerequisiteKnowledge;
				public new function HRESULT(ISyncChangeBatchBase *self, IForgottenKnowledge** ppSourceForgottenKnowledge) GetSourceForgottenKnowledge;
				public new function HRESULT(ISyncChangeBatchBase *self) SetLastBatch;
				public new function HRESULT(ISyncChangeBatchBase *self, uint32 dwWorkForBatch) SetWorkEstimateForBatch;
				public new function HRESULT(ISyncChangeBatchBase *self, uint32 dwRemainingWorkForSession) SetRemainingWorkEstimateForSession;
				public new function HRESULT(ISyncChangeBatchBase *self, uint8* pbChangeBatch, uint32* pcbChangeBatch) Serialize;
			}
		}
		[CRepr]
		public struct ISyncChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x70c64dee, 0x380f, 0x4c2e, 0x8f, 0x70, 0x31, 0xc5, 0x5b, 0xd5, 0xf9, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUnorderedGroup() mut
			{
				return VT.BeginUnorderedGroup(&this);
			}
			public HRESULT EndUnorderedGroup(ISyncKnowledge* pMadeWithKnowledge, BOOL fAllChangesForKnowledge) mut
			{
				return VT.EndUnorderedGroup(&this, pMadeWithKnowledge, fAllChangesForKnowledge);
			}
			public HRESULT AddLoggedConflict(uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) mut
			{
				return VT.AddLoggedConflict(&this, pbOwnerReplicaId, pbItemId, pChangeVersion, pCreationVersion, dwFlags, dwWorkForChange, pConflictKnowledge, ppChangeBuilder);
			}
			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function HRESULT(ISyncChangeBatch *self) BeginUnorderedGroup;
				public new function HRESULT(ISyncChangeBatch *self, ISyncKnowledge* pMadeWithKnowledge, BOOL fAllChangesForKnowledge) EndUnorderedGroup;
				public new function HRESULT(ISyncChangeBatch *self, uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) AddLoggedConflict;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0xef64197d, 0x4f44, 0x4ea2, 0xb3, 0x55, 0x45, 0x24, 0x71, 0x3e, 0x3b, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLearnedKnowledgeAfterRecoveryComplete(ISyncKnowledge** ppLearnedKnowledgeAfterRecoveryComplete) mut
			{
				return VT.GetLearnedKnowledgeAfterRecoveryComplete(&this, ppLearnedKnowledgeAfterRecoveryComplete);
			}
			public HRESULT GetClosedLowerBoundItemId(uint8* pbClosedLowerBoundItemId, uint32* pcbIdSize) mut
			{
				return VT.GetClosedLowerBoundItemId(&this, pbClosedLowerBoundItemId, pcbIdSize);
			}
			public HRESULT GetClosedUpperBoundItemId(uint8* pbClosedUpperBoundItemId, uint32* pcbIdSize) mut
			{
				return VT.GetClosedUpperBoundItemId(&this, pbClosedUpperBoundItemId, pcbIdSize);
			}
			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function HRESULT(ISyncFullEnumerationChangeBatch *self, ISyncKnowledge** ppLearnedKnowledgeAfterRecoveryComplete) GetLearnedKnowledgeAfterRecoveryComplete;
				public new function HRESULT(ISyncFullEnumerationChangeBatch *self, uint8* pbClosedLowerBoundItemId, uint32* pcbIdSize) GetClosedLowerBoundItemId;
				public new function HRESULT(ISyncFullEnumerationChangeBatch *self, uint8* pbClosedUpperBoundItemId, uint32* pcbIdSize) GetClosedUpperBoundItemId;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchWithPrerequisite : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x097f13be, 0x5b92, 0x4048, 0xb3, 0xf2, 0x7b, 0x42, 0xa2, 0x51, 0x5e, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrerequisiteKnowledge(ISyncKnowledge* pPrerequisiteKnowledge) mut
			{
				return VT.SetPrerequisiteKnowledge(&this, pPrerequisiteKnowledge);
			}
			public HRESULT GetLearnedKnowledgeWithPrerequisite(ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedWithPrerequisiteKnowledge) mut
			{
				return VT.GetLearnedKnowledgeWithPrerequisite(&this, pDestinationKnowledge, ppLearnedWithPrerequisiteKnowledge);
			}
			public HRESULT GetLearnedForgottenKnowledge(IForgottenKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetLearnedForgottenKnowledge(&this, ppLearnedForgottenKnowledge);
			}
			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function HRESULT(ISyncChangeBatchWithPrerequisite *self, ISyncKnowledge* pPrerequisiteKnowledge) SetPrerequisiteKnowledge;
				public new function HRESULT(ISyncChangeBatchWithPrerequisite *self, ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedWithPrerequisiteKnowledge) GetLearnedKnowledgeWithPrerequisite;
				public new function HRESULT(ISyncChangeBatchWithPrerequisite *self, IForgottenKnowledge** ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchBase2 : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x6fdb596a, 0xd755, 0x4584, 0xbd, 0x0c, 0xc0, 0xc2, 0x3a, 0x54, 0x8f, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SerializeWithOptions(SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) mut
			{
				return VT.SerializeWithOptions(&this, targetFormatVersion, dwFlags, pbBuffer, pdwSerializedSize);
			}
			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function HRESULT(ISyncChangeBatchBase2 *self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) SerializeWithOptions;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchAdvanced : IUnknown
		{
			public const new Guid IID = .(0x0f1a4995, 0xcbc8, 0x421d, 0xb5, 0x50, 0x5d, 0x0b, 0xeb, 0xf3, 0xe9, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterInfo(ISyncFilterInfo** ppFilterInfo) mut
			{
				return VT.GetFilterInfo(&this, ppFilterInfo);
			}
			public HRESULT ConvertFullEnumerationChangeBatchToRegularChangeBatch(ISyncChangeBatch** ppChangeBatch) mut
			{
				return VT.ConvertFullEnumerationChangeBatchToRegularChangeBatch(&this, ppChangeBatch);
			}
			public HRESULT GetUpperBoundItemId(uint8* pbItemId, uint32* pcbIdSize) mut
			{
				return VT.GetUpperBoundItemId(&this, pbItemId, pcbIdSize);
			}
			public HRESULT GetBatchLevelKnowledgeShouldBeApplied(BOOL* pfBatchKnowledgeShouldBeApplied) mut
			{
				return VT.GetBatchLevelKnowledgeShouldBeApplied(&this, pfBatchKnowledgeShouldBeApplied);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeBatchAdvanced *self, ISyncFilterInfo** ppFilterInfo) GetFilterInfo;
				public new function HRESULT(ISyncChangeBatchAdvanced *self, ISyncChangeBatch** ppChangeBatch) ConvertFullEnumerationChangeBatchToRegularChangeBatch;
				public new function HRESULT(ISyncChangeBatchAdvanced *self, uint8* pbItemId, uint32* pcbIdSize) GetUpperBoundItemId;
				public new function HRESULT(ISyncChangeBatchAdvanced *self, BOOL* pfBatchKnowledgeShouldBeApplied) GetBatchLevelKnowledgeShouldBeApplied;
			}
		}
		[CRepr]
		public struct ISyncChangeBatch2 : ISyncChangeBatch
		{
			public const new Guid IID = .(0x225f4a33, 0xf5ee, 0x4cc7, 0xb0, 0x39, 0x67, 0xa2, 0x62, 0xb4, 0xb2, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMergeTombstoneMetadataToGroup(uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) mut
			{
				return VT.AddMergeTombstoneMetadataToGroup(&this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, ppChangeBuilder);
			}
			public HRESULT AddMergeTombstoneLoggedConflict(uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) mut
			{
				return VT.AddMergeTombstoneLoggedConflict(&this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, pConflictKnowledge, ppChangeBuilder);
			}
			[CRepr]
			public struct VTable : ISyncChangeBatch.VTable
			{
				public new function HRESULT(ISyncChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
				public new function HRESULT(ISyncChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneLoggedConflict;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch2 : ISyncFullEnumerationChangeBatch
		{
			public const new Guid IID = .(0xe06449f4, 0xa205, 0x4b65, 0x97, 0x24, 0x01, 0xb2, 0x21, 0x01, 0xee, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMergeTombstoneMetadataToGroup(uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) mut
			{
				return VT.AddMergeTombstoneMetadataToGroup(&this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, ppChangeBuilder);
			}
			[CRepr]
			public struct VTable : ISyncFullEnumerationChangeBatch.VTable
			{
				public new function HRESULT(ISyncFullEnumerationChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
			}
		}
		[CRepr]
		public struct IKnowledgeSyncProvider : ISyncProvider
		{
			public const new Guid IID = .(0x43434a49, 0x8da4, 0x47f2, 0x81, 0x72, 0xad, 0x7b, 0x8b, 0x02, 0x49, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginSession(SYNC_PROVIDER_ROLE role, ISyncSessionState* pSessionState) mut
			{
				return VT.BeginSession(&this, role, pSessionState);
			}
			public HRESULT GetSyncBatchParameters(ISyncKnowledge** ppSyncKnowledge, uint32* pdwRequestedBatchSize) mut
			{
				return VT.GetSyncBatchParameters(&this, ppSyncKnowledge, pdwRequestedBatchSize);
			}
			public HRESULT GetChangeBatch(uint32 dwBatchSize, ISyncKnowledge* pSyncKnowledge, ISyncChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) mut
			{
				return VT.GetChangeBatch(&this, dwBatchSize, pSyncKnowledge, ppSyncChangeBatch, ppUnkDataRetriever);
			}
			public HRESULT GetFullEnumerationChangeBatch(uint32 dwBatchSize, uint8* pbLowerEnumerationBound, ISyncKnowledge* pSyncKnowledge, ISyncFullEnumerationChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) mut
			{
				return VT.GetFullEnumerationChangeBatch(&this, dwBatchSize, pbLowerEnumerationBound, pSyncKnowledge, ppSyncChangeBatch, ppUnkDataRetriever);
			}
			public HRESULT ProcessChangeBatch(CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) mut
			{
				return VT.ProcessChangeBatch(&this, resolutionPolicy, pSourceChangeBatch, pUnkDataRetriever, pCallback, pSyncSessionStatistics);
			}
			public HRESULT ProcessFullEnumerationChangeBatch(CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncFullEnumerationChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) mut
			{
				return VT.ProcessFullEnumerationChangeBatch(&this, resolutionPolicy, pSourceChangeBatch, pUnkDataRetriever, pCallback, pSyncSessionStatistics);
			}
			public HRESULT EndSession(ISyncSessionState* pSessionState) mut
			{
				return VT.EndSession(&this, pSessionState);
			}
			[CRepr]
			public struct VTable : ISyncProvider.VTable
			{
				public new function HRESULT(IKnowledgeSyncProvider *self, SYNC_PROVIDER_ROLE role, ISyncSessionState* pSessionState) BeginSession;
				public new function HRESULT(IKnowledgeSyncProvider *self, ISyncKnowledge** ppSyncKnowledge, uint32* pdwRequestedBatchSize) GetSyncBatchParameters;
				public new function HRESULT(IKnowledgeSyncProvider *self, uint32 dwBatchSize, ISyncKnowledge* pSyncKnowledge, ISyncChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) GetChangeBatch;
				public new function HRESULT(IKnowledgeSyncProvider *self, uint32 dwBatchSize, uint8* pbLowerEnumerationBound, ISyncKnowledge* pSyncKnowledge, ISyncFullEnumerationChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) GetFullEnumerationChangeBatch;
				public new function HRESULT(IKnowledgeSyncProvider *self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) ProcessChangeBatch;
				public new function HRESULT(IKnowledgeSyncProvider *self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncFullEnumerationChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) ProcessFullEnumerationChangeBatch;
				public new function HRESULT(IKnowledgeSyncProvider *self, ISyncSessionState* pSessionState) EndSession;
			}
		}
		[CRepr]
		public struct ISyncChangeUnit : IUnknown
		{
			public const new Guid IID = .(0x60edd8ca, 0x7341, 0x4bb7, 0x95, 0xce, 0xfa, 0xb6, 0x39, 0x4b, 0x51, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemChange(ISyncChange** ppSyncChange) mut
			{
				return VT.GetItemChange(&this, ppSyncChange);
			}
			public HRESULT GetChangeUnitId(uint8* pbChangeUnitId, uint32* pcbIdSize) mut
			{
				return VT.GetChangeUnitId(&this, pbChangeUnitId, pcbIdSize);
			}
			public HRESULT GetChangeUnitVersion(uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) mut
			{
				return VT.GetChangeUnitVersion(&this, pbCurrentReplicaId, pVersion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeUnit *self, ISyncChange** ppSyncChange) GetItemChange;
				public new function HRESULT(ISyncChangeUnit *self, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
				public new function HRESULT(ISyncChangeUnit *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetChangeUnitVersion;
			}
		}
		[CRepr]
		public struct IEnumSyncChangeUnits : IUnknown
		{
			public const new Guid IID = .(0x346b35f1, 0x8703, 0x4c6d, 0xab, 0x1a, 0x4d, 0xbc, 0xa2, 0xcf, 0xf9, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cChanges, ISyncChangeUnit** ppChangeUnit, uint32* pcFetched) mut
			{
				return VT.Next(&this, cChanges, ppChangeUnit, pcFetched);
			}
			public HRESULT Skip(uint32 cChanges) mut
			{
				return VT.Skip(&this, cChanges);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncChangeUnits** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncChangeUnits *self, uint32 cChanges, ISyncChangeUnit** ppChangeUnit, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSyncChangeUnits *self, uint32 cChanges) Skip;
				public new function HRESULT(IEnumSyncChangeUnits *self) Reset;
				public new function HRESULT(IEnumSyncChangeUnits *self, IEnumSyncChangeUnits** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncChange : IUnknown
		{
			public const new Guid IID = .(0xa1952beb, 0x0f6b, 0x4711, 0xb1, 0x36, 0x01, 0xda, 0x85, 0xb9, 0x68, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerReplicaId(uint8* pbReplicaId, uint32* pcbIdSize) mut
			{
				return VT.GetOwnerReplicaId(&this, pbReplicaId, pcbIdSize);
			}
			public HRESULT GetRootItemId(uint8* pbRootItemId, uint32* pcbIdSize) mut
			{
				return VT.GetRootItemId(&this, pbRootItemId, pcbIdSize);
			}
			public HRESULT GetChangeVersion(uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) mut
			{
				return VT.GetChangeVersion(&this, pbCurrentReplicaId, pVersion);
			}
			public HRESULT GetCreationVersion(uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) mut
			{
				return VT.GetCreationVersion(&this, pbCurrentReplicaId, pVersion);
			}
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			public HRESULT GetWorkEstimate(uint32* pdwWork) mut
			{
				return VT.GetWorkEstimate(&this, pdwWork);
			}
			public HRESULT GetChangeUnits(IEnumSyncChangeUnits** ppEnum) mut
			{
				return VT.GetChangeUnits(&this, ppEnum);
			}
			public HRESULT GetMadeWithKnowledge(ISyncKnowledge** ppMadeWithKnowledge) mut
			{
				return VT.GetMadeWithKnowledge(&this, ppMadeWithKnowledge);
			}
			public HRESULT GetLearnedKnowledge(ISyncKnowledge** ppLearnedKnowledge) mut
			{
				return VT.GetLearnedKnowledge(&this, ppLearnedKnowledge);
			}
			public HRESULT SetWorkEstimate(uint32 dwWork) mut
			{
				return VT.SetWorkEstimate(&this, dwWork);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChange *self, uint8* pbReplicaId, uint32* pcbIdSize) GetOwnerReplicaId;
				public new function HRESULT(ISyncChange *self, uint8* pbRootItemId, uint32* pcbIdSize) GetRootItemId;
				public new function HRESULT(ISyncChange *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetChangeVersion;
				public new function HRESULT(ISyncChange *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetCreationVersion;
				public new function HRESULT(ISyncChange *self, uint32* pdwFlags) ComGetFlags;
				public new function HRESULT(ISyncChange *self, uint32* pdwWork) GetWorkEstimate;
				public new function HRESULT(ISyncChange *self, IEnumSyncChangeUnits** ppEnum) GetChangeUnits;
				public new function HRESULT(ISyncChange *self, ISyncKnowledge** ppMadeWithKnowledge) GetMadeWithKnowledge;
				public new function HRESULT(ISyncChange *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledge;
				public new function HRESULT(ISyncChange *self, uint32 dwWork) SetWorkEstimate;
			}
		}
		[CRepr]
		public struct ISyncChangeWithPrerequisite : IUnknown
		{
			public const new Guid IID = .(0x9e38382f, 0x1589, 0x48c3, 0x92, 0xe4, 0x05, 0xec, 0xdc, 0xb4, 0xf3, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrerequisiteKnowledge(ISyncKnowledge** ppPrerequisiteKnowledge) mut
			{
				return VT.GetPrerequisiteKnowledge(&this, ppPrerequisiteKnowledge);
			}
			public HRESULT GetLearnedKnowledgeWithPrerequisite(ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedKnowledgeWithPrerequisite) mut
			{
				return VT.GetLearnedKnowledgeWithPrerequisite(&this, pDestinationKnowledge, ppLearnedKnowledgeWithPrerequisite);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeWithPrerequisite *self, ISyncKnowledge** ppPrerequisiteKnowledge) GetPrerequisiteKnowledge;
				public new function HRESULT(ISyncChangeWithPrerequisite *self, ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedKnowledgeWithPrerequisite) GetLearnedKnowledgeWithPrerequisite;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChange : IUnknown
		{
			public const new Guid IID = .(0x9785e0bd, 0xbdff, 0x40c4, 0x98, 0xc5, 0xb3, 0x4b, 0x2f, 0x19, 0x91, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLearnedKnowledgeAfterRecoveryComplete(ISyncKnowledge** ppLearnedKnowledge) mut
			{
				return VT.GetLearnedKnowledgeAfterRecoveryComplete(&this, ppLearnedKnowledge);
			}
			public HRESULT GetLearnedForgottenKnowledge(IForgottenKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetLearnedForgottenKnowledge(&this, ppLearnedForgottenKnowledge);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncFullEnumerationChange *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledgeAfterRecoveryComplete;
				public new function HRESULT(ISyncFullEnumerationChange *self, IForgottenKnowledge** ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
			}
		}
		[CRepr]
		public struct ISyncMergeTombstoneChange : IUnknown
		{
			public const new Guid IID = .(0x6ec62597, 0x0903, 0x484c, 0xad, 0x61, 0x36, 0xd6, 0xe9, 0x38, 0xf4, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWinnerItemId(uint8* pbWinnerItemId, uint32* pcbIdSize) mut
			{
				return VT.GetWinnerItemId(&this, pbWinnerItemId, pcbIdSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMergeTombstoneChange *self, uint8* pbWinnerItemId, uint32* pcbIdSize) GetWinnerItemId;
			}
		}
		[CRepr]
		public struct IEnumItemIds : IUnknown
		{
			public const new Guid IID = .(0x43aa3f61, 0x4b2e, 0x4b60, 0x83, 0xdf, 0xb1, 0x10, 0xd3, 0xe1, 0x48, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint8* pbItemId, uint32* pcbItemIdSize) mut
			{
				return VT.Next(&this, pbItemId, pcbItemIdSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumItemIds *self, uint8* pbItemId, uint32* pcbItemIdSize) Next;
			}
		}
		[CRepr]
		public struct IFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xca169652, 0x07c6, 0x4708, 0xa3, 0xda, 0x6e, 0x4e, 0xba, 0x8d, 0x22, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pdwCount) mut
			{
				return VT.GetCount(&this, pdwCount);
			}
			public HRESULT AddFilter(ISyncFilter* pISyncFilter, uint32* pdwFilterKey) mut
			{
				return VT.AddFilter(&this, pISyncFilter, pdwFilterKey);
			}
			public HRESULT GetFilter(uint32 dwFilterKey, ISyncFilter** ppISyncFilter) mut
			{
				return VT.GetFilter(&this, dwFilterKey, ppISyncFilter);
			}
			public HRESULT Serialize(uint8* pbFilterKeyMap, uint32* pcbFilterKeyMap) mut
			{
				return VT.Serialize(&this, pbFilterKeyMap, pcbFilterKeyMap);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFilterKeyMap *self, uint32* pdwCount) GetCount;
				public new function HRESULT(IFilterKeyMap *self, ISyncFilter* pISyncFilter, uint32* pdwFilterKey) AddFilter;
				public new function HRESULT(IFilterKeyMap *self, uint32 dwFilterKey, ISyncFilter** ppISyncFilter) GetFilter;
				public new function HRESULT(IFilterKeyMap *self, uint8* pbFilterKeyMap, uint32* pcbFilterKeyMap) Serialize;
			}
		}
		[CRepr]
		public struct ISyncChangeWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xbfe1ef00, 0xe87d, 0x42fd, 0xa4, 0xe9, 0x24, 0x2d, 0x70, 0x41, 0x4a, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterCount(uint32* pdwFilterCount) mut
			{
				return VT.GetFilterCount(&this, pdwFilterCount);
			}
			public HRESULT GetFilterChange(uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) mut
			{
				return VT.GetFilterChange(&this, dwFilterKey, pFilterChange);
			}
			public HRESULT GetAllChangeUnitsPresentFlag(BOOL* pfAllChangeUnitsPresent) mut
			{
				return VT.GetAllChangeUnitsPresentFlag(&this, pfAllChangeUnitsPresent);
			}
			public HRESULT GetFilterForgottenKnowledge(uint32 dwFilterKey, ISyncKnowledge** ppIFilterForgottenKnowledge) mut
			{
				return VT.GetFilterForgottenKnowledge(&this, dwFilterKey, ppIFilterForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedKnowledge(&this, pDestinationKnowledge, pNewMoveins, ppLearnedKnowledge);
			}
			public HRESULT GetLearnedFilterForgottenKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) mut
			{
				return VT.GetLearnedFilterForgottenKnowledge(&this, pDestinationKnowledge, pNewMoveins, dwFilterKey, ppLearnedFilterForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedForgottenKnowledge(&this, pDestinationKnowledge, pNewMoveins, ppLearnedForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(&this, pDestinationKnowledge, pNewMoveins, ppLearnedForgottenKnowledge);
			}
			public HRESULT GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) mut
			{
				return VT.GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(&this, pDestinationKnowledge, pNewMoveins, dwFilterKey, ppLearnedFilterForgottenKnowledge);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32* pdwFilterCount) GetFilterCount;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) GetFilterChange;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, BOOL* pfAllChangeUnitsPresent) GetAllChangeUnitsPresentFlag;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32 dwFilterKey, ISyncKnowledge** ppIFilterForgottenKnowledge) GetFilterForgottenKnowledge;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedKnowledge) GetFilteredReplicaLearnedKnowledge;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
				public new function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xde247002, 0x566d, 0x459a, 0xa6, 0xed, 0xa5, 0xaa, 0xb3, 0x45, 0x9f, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterKeyMap(IFilterKeyMap** ppIFilterKeyMap) mut
			{
				return VT.GetFilterKeyMap(&this, ppIFilterKeyMap);
			}
			public HRESULT SetFilterKeyMap(IFilterKeyMap* pIFilterKeyMap) mut
			{
				return VT.SetFilterKeyMap(&this, pIFilterKeyMap);
			}
			public HRESULT SetFilterForgottenKnowledge(uint32 dwFilterKey, ISyncKnowledge* pFilterForgottenKnowledge) mut
			{
				return VT.SetFilterForgottenKnowledge(&this, dwFilterKey, pFilterForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedKnowledge(&this, pDestinationKnowledge, pNewMoveins, ppLearnedForgottenKnowledge);
			}
			public HRESULT GetLearnedFilterForgottenKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) mut
			{
				return VT.GetLearnedFilterForgottenKnowledge(&this, pDestinationKnowledge, pNewMoveins, dwFilterKey, ppLearnedFilterForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledge(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedForgottenKnowledge(&this, pDestinationKnowledge, pNewMoveins, ppLearnedForgottenKnowledge);
			}
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) mut
			{
				return VT.GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(&this, pDestinationKnowledge, pNewMoveins, ppLearnedForgottenKnowledge);
			}
			public HRESULT GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) mut
			{
				return VT.GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(&this, pDestinationKnowledge, pNewMoveins, dwFilterKey, ppLearnedFilterForgottenKnowledge);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, IFilterKeyMap** ppIFilterKeyMap) GetFilterKeyMap;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, IFilterKeyMap* pIFilterKeyMap) SetFilterKeyMap;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, uint32 dwFilterKey, ISyncKnowledge* pFilterForgottenKnowledge) SetFilterForgottenKnowledge;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedKnowledge;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
				public new function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
			}
		}
		[CRepr]
		public struct IDataRetrieverCallback : IUnknown
		{
			public const new Guid IID = .(0x71b4863b, 0xf969, 0x4676, 0xbb, 0xc3, 0x3d, 0x9f, 0xdc, 0x3f, 0xb2, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadChangeDataComplete(IUnknown* pUnkData) mut
			{
				return VT.LoadChangeDataComplete(&this, pUnkData);
			}
			public HRESULT LoadChangeDataError(HRESULT hrError) mut
			{
				return VT.LoadChangeDataError(&this, hrError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataRetrieverCallback *self, IUnknown* pUnkData) LoadChangeDataComplete;
				public new function HRESULT(IDataRetrieverCallback *self, HRESULT hrError) LoadChangeDataError;
			}
		}
		[CRepr]
		public struct ILoadChangeContext : IUnknown
		{
			public const new Guid IID = .(0x44a4aaca, 0xec39, 0x46d5, 0xb5, 0xc9, 0xd6, 0x33, 0xc0, 0xee, 0x67, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncChange(ISyncChange** ppSyncChange) mut
			{
				return VT.GetSyncChange(&this, ppSyncChange);
			}
			public HRESULT SetRecoverableErrorOnChange(HRESULT hrError, IRecoverableErrorData* pErrorData) mut
			{
				return VT.SetRecoverableErrorOnChange(&this, hrError, pErrorData);
			}
			public HRESULT SetRecoverableErrorOnChangeUnit(HRESULT hrError, ISyncChangeUnit* pChangeUnit, IRecoverableErrorData* pErrorData) mut
			{
				return VT.SetRecoverableErrorOnChangeUnit(&this, hrError, pChangeUnit, pErrorData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILoadChangeContext *self, ISyncChange** ppSyncChange) GetSyncChange;
				public new function HRESULT(ILoadChangeContext *self, HRESULT hrError, IRecoverableErrorData* pErrorData) SetRecoverableErrorOnChange;
				public new function HRESULT(ILoadChangeContext *self, HRESULT hrError, ISyncChangeUnit* pChangeUnit, IRecoverableErrorData* pErrorData) SetRecoverableErrorOnChangeUnit;
			}
		}
		[CRepr]
		public struct ISynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9b22f2a9, 0xa4cd, 0x4648, 0x9d, 0x8e, 0x3a, 0x51, 0x0d, 0x4d, 0xa0, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(ID_PARAMETERS* pIdParameters) mut
			{
				return VT.GetIdParameters(&this, pIdParameters);
			}
			public HRESULT LoadChangeData(ILoadChangeContext* pLoadChangeContext, IUnknown** ppUnkData) mut
			{
				return VT.LoadChangeData(&this, pLoadChangeContext, ppUnkData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISynchronousDataRetriever *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
				public new function HRESULT(ISynchronousDataRetriever *self, ILoadChangeContext* pLoadChangeContext, IUnknown** ppUnkData) LoadChangeData;
			}
		}
		[CRepr]
		public struct IAsynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9fc7e470, 0x61ea, 0x4a88, 0x9b, 0xe4, 0xdf, 0x56, 0xa2, 0x7c, 0xfe, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(ID_PARAMETERS* pIdParameters) mut
			{
				return VT.GetIdParameters(&this, pIdParameters);
			}
			public HRESULT RegisterCallback(IDataRetrieverCallback* pDataRetrieverCallback) mut
			{
				return VT.RegisterCallback(&this, pDataRetrieverCallback);
			}
			public HRESULT RevokeCallback(IDataRetrieverCallback* pDataRetrieverCallback) mut
			{
				return VT.RevokeCallback(&this, pDataRetrieverCallback);
			}
			public HRESULT LoadChangeData(ILoadChangeContext* pLoadChangeContext) mut
			{
				return VT.LoadChangeData(&this, pLoadChangeContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAsynchronousDataRetriever *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
				public new function HRESULT(IAsynchronousDataRetriever *self, IDataRetrieverCallback* pDataRetrieverCallback) RegisterCallback;
				public new function HRESULT(IAsynchronousDataRetriever *self, IDataRetrieverCallback* pDataRetrieverCallback) RevokeCallback;
				public new function HRESULT(IAsynchronousDataRetriever *self, ILoadChangeContext* pLoadChangeContext) LoadChangeData;
			}
		}
		[CRepr]
		public struct IFilterRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x82df8873, 0x6360, 0x463a, 0xa8, 0xa1, 0xed, 0xe5, 0xe1, 0xa1, 0x59, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestFilter(IUnknown* pFilter, FILTERING_TYPE filteringType) mut
			{
				return VT.RequestFilter(&this, pFilter, filteringType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFilterRequestCallback *self, IUnknown* pFilter, FILTERING_TYPE filteringType) RequestFilter;
			}
		}
		[CRepr]
		public struct IRequestFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x2e020184, 0x6d18, 0x46a7, 0xa3, 0x2a, 0xda, 0x4a, 0xeb, 0x06, 0x69, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SpecifyFilter(IFilterRequestCallback* pCallback) mut
			{
				return VT.SpecifyFilter(&this, pCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRequestFilteredSync *self, IFilterRequestCallback* pCallback) SpecifyFilter;
			}
		}
		[CRepr]
		public struct ISupportFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x3d128ded, 0xd555, 0x4e0d, 0xbf, 0x4b, 0xfb, 0x21, 0x3a, 0x8a, 0x93, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFilter(IUnknown* pFilter, FILTERING_TYPE filteringType) mut
			{
				return VT.AddFilter(&this, pFilter, filteringType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISupportFilteredSync *self, IUnknown* pFilter, FILTERING_TYPE filteringType) AddFilter;
			}
		}
		[CRepr]
		public struct IFilterTrackingRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x713ca7bb, 0xc858, 0x4674, 0xb4, 0xb6, 0x11, 0x22, 0x43, 0x65, 0x87, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestTrackedFilter(ISyncFilter* pFilter) mut
			{
				return VT.RequestTrackedFilter(&this, pFilter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFilterTrackingRequestCallback *self, ISyncFilter* pFilter) RequestTrackedFilter;
			}
		}
		[CRepr]
		public struct IFilterTrackingProvider : IUnknown
		{
			public const new Guid IID = .(0x743383c0, 0xfc4e, 0x45ba, 0xad, 0x81, 0xd9, 0xd8, 0x4c, 0x7a, 0x24, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SpecifyTrackedFilters(IFilterTrackingRequestCallback* pCallback) mut
			{
				return VT.SpecifyTrackedFilters(&this, pCallback);
			}
			public HRESULT AddTrackedFilter(ISyncFilter* pFilter) mut
			{
				return VT.AddTrackedFilter(&this, pFilter);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFilterTrackingProvider *self, IFilterTrackingRequestCallback* pCallback) SpecifyTrackedFilters;
				public new function HRESULT(IFilterTrackingProvider *self, ISyncFilter* pFilter) AddTrackedFilter;
			}
		}
		[CRepr]
		public struct ISupportLastWriteTime : IUnknown
		{
			public const new Guid IID = .(0xeadf816f, 0xd0bd, 0x43ca, 0x8f, 0x40, 0x5a, 0xcd, 0xc6, 0xc0, 0x6f, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemChangeTime(uint8* pbItemId, uint64* pullTimestamp) mut
			{
				return VT.GetItemChangeTime(&this, pbItemId, pullTimestamp);
			}
			public HRESULT GetChangeUnitChangeTime(uint8* pbItemId, uint8* pbChangeUnitId, uint64* pullTimestamp) mut
			{
				return VT.GetChangeUnitChangeTime(&this, pbItemId, pbChangeUnitId, pullTimestamp);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISupportLastWriteTime *self, uint8* pbItemId, uint64* pullTimestamp) GetItemChangeTime;
				public new function HRESULT(ISupportLastWriteTime *self, uint8* pbItemId, uint8* pbChangeUnitId, uint64* pullTimestamp) GetChangeUnitChangeTime;
			}
		}
		[CRepr]
		public struct IProviderConverter : IUnknown
		{
			public const new Guid IID = .(0x809b7276, 0x98cf, 0x4957, 0x93, 0xa5, 0x0e, 0xbd, 0xd3, 0xdd, 0xdf, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ISyncProvider* pISyncProvider) mut
			{
				return VT.Initialize(&this, pISyncProvider);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProviderConverter *self, ISyncProvider* pISyncProvider) Initialize;
			}
		}
		[CRepr]
		public struct ISyncDataConverter : IUnknown
		{
			public const new Guid IID = .(0x435d4861, 0x68d5, 0x44aa, 0xa0, 0xf9, 0x72, 0xa0, 0xb0, 0x0e, 0xf9, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConvertDataRetrieverFromProviderFormat(IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) mut
			{
				return VT.ConvertDataRetrieverFromProviderFormat(&this, pUnkDataRetrieverIn, pEnumSyncChanges, ppUnkDataOut);
			}
			public HRESULT ConvertDataRetrieverToProviderFormat(IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) mut
			{
				return VT.ConvertDataRetrieverToProviderFormat(&this, pUnkDataRetrieverIn, pEnumSyncChanges, ppUnkDataOut);
			}
			public HRESULT ConvertDataFromProviderFormat(ILoadChangeContext* pDataContext, IUnknown* pUnkDataIn, IUnknown** ppUnkDataOut) mut
			{
				return VT.ConvertDataFromProviderFormat(&this, pDataContext, pUnkDataIn, ppUnkDataOut);
			}
			public HRESULT ConvertDataToProviderFormat(ILoadChangeContext* pDataContext, IUnknown* pUnkDataOut, IUnknown** ppUnkDataout) mut
			{
				return VT.ConvertDataToProviderFormat(&this, pDataContext, pUnkDataOut, ppUnkDataout);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncDataConverter *self, IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) ConvertDataRetrieverFromProviderFormat;
				public new function HRESULT(ISyncDataConverter *self, IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) ConvertDataRetrieverToProviderFormat;
				public new function HRESULT(ISyncDataConverter *self, ILoadChangeContext* pDataContext, IUnknown* pUnkDataIn, IUnknown** ppUnkDataOut) ConvertDataFromProviderFormat;
				public new function HRESULT(ISyncDataConverter *self, ILoadChangeContext* pDataContext, IUnknown* pUnkDataOut, IUnknown** ppUnkDataout) ConvertDataToProviderFormat;
			}
		}
		[CRepr]
		public struct ISyncProviderRegistration : IUnknown
		{
			public const new Guid IID = .(0xcb45953b, 0x7624, 0x47bc, 0xa4, 0x72, 0xeb, 0x8c, 0xac, 0x6b, 0x22, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSyncProviderConfigUIRegistrationInstance(SyncProviderConfigUIConfiguration* pConfigUIConfig, ISyncProviderConfigUIInfo** ppConfigUIInfo) mut
			{
				return VT.CreateSyncProviderConfigUIRegistrationInstance(&this, pConfigUIConfig, ppConfigUIInfo);
			}
			public HRESULT UnregisterSyncProviderConfigUI(Guid* pguidInstanceId) mut
			{
				return VT.UnregisterSyncProviderConfigUI(&this, pguidInstanceId);
			}
			public HRESULT EnumerateSyncProviderConfigUIs(Guid* pguidContentType, uint32 dwSupportedArchitecture, IEnumSyncProviderConfigUIInfos** ppEnumSyncProviderConfigUIInfos) mut
			{
				return VT.EnumerateSyncProviderConfigUIs(&this, pguidContentType, dwSupportedArchitecture, ppEnumSyncProviderConfigUIInfos);
			}
			public HRESULT CreateSyncProviderRegistrationInstance(SyncProviderConfiguration* pProviderConfiguration, ISyncProviderInfo** ppProviderInfo) mut
			{
				return VT.CreateSyncProviderRegistrationInstance(&this, pProviderConfiguration, ppProviderInfo);
			}
			public HRESULT UnregisterSyncProvider(Guid* pguidInstanceId) mut
			{
				return VT.UnregisterSyncProvider(&this, pguidInstanceId);
			}
			public HRESULT GetSyncProviderConfigUIInfoforProvider(Guid* pguidProviderInstanceId, ISyncProviderConfigUIInfo** ppProviderConfigUIInfo) mut
			{
				return VT.GetSyncProviderConfigUIInfoforProvider(&this, pguidProviderInstanceId, ppProviderConfigUIInfo);
			}
			public HRESULT EnumerateSyncProviders(Guid* pguidContentType, uint32 dwStateFlagsToFilterMask, uint32 dwStateFlagsToFilter, Guid* refProviderClsId, uint32 dwSupportedArchitecture, IEnumSyncProviderInfos** ppEnumSyncProviderInfos) mut
			{
				return VT.EnumerateSyncProviders(&this, pguidContentType, dwStateFlagsToFilterMask, dwStateFlagsToFilter, refProviderClsId, dwSupportedArchitecture, ppEnumSyncProviderInfos);
			}
			public HRESULT GetSyncProviderInfo(Guid* pguidInstanceId, ISyncProviderInfo** ppProviderInfo) mut
			{
				return VT.GetSyncProviderInfo(&this, pguidInstanceId, ppProviderInfo);
			}
			public HRESULT GetSyncProviderFromInstanceId(Guid* pguidInstanceId, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) mut
			{
				return VT.GetSyncProviderFromInstanceId(&this, pguidInstanceId, dwClsContext, ppSyncProvider);
			}
			public HRESULT GetSyncProviderConfigUIInfo(Guid* pguidInstanceId, ISyncProviderConfigUIInfo** ppConfigUIInfo) mut
			{
				return VT.GetSyncProviderConfigUIInfo(&this, pguidInstanceId, ppConfigUIInfo);
			}
			public HRESULT GetSyncProviderConfigUIFromInstanceId(Guid* pguidInstanceId, uint32 dwClsContext, ISyncProviderConfigUI** ppConfigUI) mut
			{
				return VT.GetSyncProviderConfigUIFromInstanceId(&this, pguidInstanceId, dwClsContext, ppConfigUI);
			}
			public HRESULT GetSyncProviderState(Guid* pguidInstanceId, uint32* pdwStateFlags) mut
			{
				return VT.GetSyncProviderState(&this, pguidInstanceId, pdwStateFlags);
			}
			public HRESULT SetSyncProviderState(Guid* pguidInstanceId, uint32 dwStateFlagsMask, uint32 dwStateFlags) mut
			{
				return VT.SetSyncProviderState(&this, pguidInstanceId, dwStateFlagsMask, dwStateFlags);
			}
			public HRESULT RegisterForEvent(HANDLE* phEvent) mut
			{
				return VT.RegisterForEvent(&this, phEvent);
			}
			public HRESULT RevokeEvent(HANDLE hEvent) mut
			{
				return VT.RevokeEvent(&this, hEvent);
			}
			public HRESULT GetChange(HANDLE hEvent, ISyncRegistrationChange** ppChange) mut
			{
				return VT.GetChange(&this, hEvent, ppChange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncProviderRegistration *self, SyncProviderConfigUIConfiguration* pConfigUIConfig, ISyncProviderConfigUIInfo** ppConfigUIInfo) CreateSyncProviderConfigUIRegistrationInstance;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId) UnregisterSyncProviderConfigUI;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidContentType, uint32 dwSupportedArchitecture, IEnumSyncProviderConfigUIInfos** ppEnumSyncProviderConfigUIInfos) EnumerateSyncProviderConfigUIs;
				public new function HRESULT(ISyncProviderRegistration *self, SyncProviderConfiguration* pProviderConfiguration, ISyncProviderInfo** ppProviderInfo) CreateSyncProviderRegistrationInstance;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId) UnregisterSyncProvider;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidProviderInstanceId, ISyncProviderConfigUIInfo** ppProviderConfigUIInfo) GetSyncProviderConfigUIInfoforProvider;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidContentType, uint32 dwStateFlagsToFilterMask, uint32 dwStateFlagsToFilter, Guid* refProviderClsId, uint32 dwSupportedArchitecture, IEnumSyncProviderInfos** ppEnumSyncProviderInfos) EnumerateSyncProviders;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, ISyncProviderInfo** ppProviderInfo) GetSyncProviderInfo;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProviderFromInstanceId;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, ISyncProviderConfigUIInfo** ppConfigUIInfo) GetSyncProviderConfigUIInfo;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwClsContext, ISyncProviderConfigUI** ppConfigUI) GetSyncProviderConfigUIFromInstanceId;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32* pdwStateFlags) GetSyncProviderState;
				public new function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwStateFlagsMask, uint32 dwStateFlags) SetSyncProviderState;
				public new function HRESULT(ISyncProviderRegistration *self, HANDLE* phEvent) RegisterForEvent;
				public new function HRESULT(ISyncProviderRegistration *self, HANDLE hEvent) RevokeEvent;
				public new function HRESULT(ISyncProviderRegistration *self, HANDLE hEvent, ISyncRegistrationChange** ppChange) GetChange;
			}
		}
		[CRepr]
		public struct IEnumSyncProviderConfigUIInfos : IUnknown
		{
			public const new Guid IID = .(0xf6be2602, 0x17c6, 0x4658, 0xa2, 0xd7, 0x68, 0xed, 0x33, 0x30, 0xf6, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFactories, ISyncProviderConfigUIInfo** ppSyncProviderConfigUIInfo, uint32* pcFetched) mut
			{
				return VT.Next(&this, cFactories, ppSyncProviderConfigUIInfo, pcFetched);
			}
			public HRESULT Skip(uint32 cFactories) mut
			{
				return VT.Skip(&this, cFactories);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncProviderConfigUIInfos** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncProviderConfigUIInfos *self, uint32 cFactories, ISyncProviderConfigUIInfo** ppSyncProviderConfigUIInfo, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSyncProviderConfigUIInfos *self, uint32 cFactories) Skip;
				public new function HRESULT(IEnumSyncProviderConfigUIInfos *self) Reset;
				public new function HRESULT(IEnumSyncProviderConfigUIInfos *self, IEnumSyncProviderConfigUIInfos** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSyncProviderInfos : IUnknown
		{
			public const new Guid IID = .(0xa04ba850, 0x5eb1, 0x460d, 0xa9, 0x73, 0x39, 0x3f, 0xcb, 0x60, 0x8a, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cInstances, ISyncProviderInfo** ppSyncProviderInfo, uint32* pcFetched) mut
			{
				return VT.Next(&this, cInstances, ppSyncProviderInfo, pcFetched);
			}
			public HRESULT Skip(uint32 cInstances) mut
			{
				return VT.Skip(&this, cInstances);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncProviderInfos** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncProviderInfos *self, uint32 cInstances, ISyncProviderInfo** ppSyncProviderInfo, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSyncProviderInfos *self, uint32 cInstances) Skip;
				public new function HRESULT(IEnumSyncProviderInfos *self) Reset;
				public new function HRESULT(IEnumSyncProviderInfos *self, IEnumSyncProviderInfos** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncProviderInfo : IPropertyStore
		{
			public const new Guid IID = .(0x1ee135de, 0x88a4, 0x4504, 0xb0, 0xd0, 0xf7, 0x92, 0x0d, 0x7e, 0x5b, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProvider(uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) mut
			{
				return VT.GetSyncProvider(&this, dwClsContext, ppSyncProvider);
			}
			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function HRESULT(ISyncProviderInfo *self, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProvider;
			}
		}
		[CRepr]
		public struct ISyncProviderConfigUIInfo : IPropertyStore
		{
			public const new Guid IID = .(0x214141ae, 0x33d7, 0x4d8d, 0x8e, 0x37, 0xf2, 0x27, 0xe8, 0x80, 0xce, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProviderConfigUI(uint32 dwClsContext, ISyncProviderConfigUI** ppSyncProviderConfigUI) mut
			{
				return VT.GetSyncProviderConfigUI(&this, dwClsContext, ppSyncProviderConfigUI);
			}
			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function HRESULT(ISyncProviderConfigUIInfo *self, uint32 dwClsContext, ISyncProviderConfigUI** ppSyncProviderConfigUI) GetSyncProviderConfigUI;
			}
		}
		[CRepr]
		public struct ISyncProviderConfigUI : IUnknown
		{
			public const new Guid IID = .(0x7b0705f6, 0xcbcd, 0x4071, 0xab, 0x05, 0x3b, 0xdc, 0x36, 0x4d, 0x4a, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pConfigurationProperties) mut
			{
				return VT.Init(&this, pguidInstanceId, pguidContentType, pConfigurationProperties);
			}
			public HRESULT GetRegisteredProperties(IPropertyStore** ppConfigUIProperties) mut
			{
				return VT.GetRegisteredProperties(&this, ppConfigUIProperties);
			}
			public HRESULT CreateAndRegisterNewSyncProvider(HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo** ppProviderInfo) mut
			{
				return VT.CreateAndRegisterNewSyncProvider(&this, hwndParent, pUnkContext, ppProviderInfo);
			}
			public HRESULT ModifySyncProvider(HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo* pProviderInfo) mut
			{
				return VT.ModifySyncProvider(&this, hwndParent, pUnkContext, pProviderInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncProviderConfigUI *self, Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pConfigurationProperties) Init;
				public new function HRESULT(ISyncProviderConfigUI *self, IPropertyStore** ppConfigUIProperties) GetRegisteredProperties;
				public new function HRESULT(ISyncProviderConfigUI *self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo** ppProviderInfo) CreateAndRegisterNewSyncProvider;
				public new function HRESULT(ISyncProviderConfigUI *self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo* pProviderInfo) ModifySyncProvider;
			}
		}
		[CRepr]
		public struct IRegisteredSyncProvider : IUnknown
		{
			public const new Guid IID = .(0x913bcf76, 0x47c1, 0x40b5, 0xa8, 0x96, 0x5e, 0x8a, 0x9c, 0x41, 0x4c, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pContextPropertyStore) mut
			{
				return VT.Init(&this, pguidInstanceId, pguidContentType, pContextPropertyStore);
			}
			public HRESULT GetInstanceId(Guid* pguidInstanceId) mut
			{
				return VT.GetInstanceId(&this, pguidInstanceId);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRegisteredSyncProvider *self, Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pContextPropertyStore) Init;
				public new function HRESULT(IRegisteredSyncProvider *self, Guid* pguidInstanceId) GetInstanceId;
				public new function HRESULT(IRegisteredSyncProvider *self) Reset;
			}
		}
		[CRepr]
		public struct ISyncRegistrationChange : IUnknown
		{
			public const new Guid IID = .(0xeea0d9ae, 0x6b29, 0x43b4, 0x9e, 0x70, 0xe3, 0xae, 0x33, 0xbb, 0x2c, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEvent(SYNC_REGISTRATION_EVENT* psreEvent) mut
			{
				return VT.GetEvent(&this, psreEvent);
			}
			public HRESULT GetInstanceId(Guid* pguidInstanceId) mut
			{
				return VT.GetInstanceId(&this, pguidInstanceId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncRegistrationChange *self, SYNC_REGISTRATION_EVENT* psreEvent) GetEvent;
				public new function HRESULT(ISyncRegistrationChange *self, Guid* pguidInstanceId) GetInstanceId;
			}
		}
		
	}
}
