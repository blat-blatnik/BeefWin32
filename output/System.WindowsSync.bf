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
		
		public enum SYNC_PROVIDER_ROLE : int32
		{
			SOURCE = 0,
			DESTINATION = 1,
		}
		public enum CONFLICT_RESOLUTION_POLICY : int32
		{
			NONE = 0,
			DESTINATION_PROVIDER_WINS = 1,
			SOURCE_PROVIDER_WINS = 2,
			LAST = 3,
		}
		public enum SYNC_PROGRESS_STAGE : int32
		{
			DETECTION = 0,
			ENUMERATION = 1,
			APPLICATION = 2,
		}
		public enum SYNC_FULL_ENUMERATION_ACTION : int32
		{
			FULL_ENUMERATION = 0,
			PARTIAL_SYNC = 1,
			ABORT = 2,
		}
		public enum SYNC_RESOLVE_ACTION : int32
		{
			DEFER = 0,
			ACCEPT_DESTINATION_PROVIDER = 1,
			ACCEPT_SOURCE_PROVIDER = 2,
			MERGE = 3,
			TRANSFER_AND_DEFER = 4,
			LAST = 5,
		}
		public enum SYNC_STATISTICS : int32
		{
			STATISTICS_RANGE_COUNT = 0,
		}
		public enum SYNC_SERIALIZATION_VERSION : int32
		{
			V1 = 1,
			V2 = 4,
			V3 = 5,
		}
		public enum FILTERING_TYPE : int32
		{
			ONLY = 0,
			AND_VERSIONS_FOR_MOVED_OUT_ITEMS = 1,
		}
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
		public enum CONSTRAINT_CONFLICT_REASON : int32
		{
			OTHER = 0,
			COLLISION = 1,
			NOPARENT = 2,
			IDENTITY = 3,
		}
		public enum KNOWLEDGE_COOKIE_COMPARISON_RESULT : int32
		{
			EQUAL = 0,
			CONTAINED = 1,
			CONTAINS = 2,
			NOT_COMPARABLE = 3,
		}
		public enum FILTER_COMBINATION_TYPE : int32
		{
			FCT_INTERSECTION = 0,
		}
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
			
			public HRESULT GetReplicaKey(out uint32 pdwReplicaKey) mut => VT.GetReplicaKey(ref this, out pdwReplicaKey);
			public HRESULT GetTickCount(out uint64 pullTickCount) mut => VT.GetTickCount(ref this, out pullTickCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClockVectorElement self, out uint32 pdwReplicaKey) GetReplicaKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClockVectorElement self, out uint64 pullTickCount) GetTickCount;
			}
		}
		[CRepr]
		public struct IFeedClockVectorElement : IClockVectorElement
		{
			public const new Guid IID = .(0xa40b46d2, 0xe97b, 0x4156, 0xb6, 0xda, 0x99, 0x1f, 0x50, 0x1b, 0x0f, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncTime(out SYNC_TIME pSyncTime) mut => VT.GetSyncTime(ref this, out pSyncTime);
			public HRESULT ComGetFlags(out uint8 pbFlags) mut => VT.ComGetFlags(ref this, out pbFlags);

			[CRepr]
			public struct VTable : IClockVectorElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedClockVectorElement self, out SYNC_TIME pSyncTime) GetSyncTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedClockVectorElement self, out uint8 pbFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IClockVector : IUnknown
		{
			public const new Guid IID = .(0x14b2274a, 0x8698, 0x4cc6, 0x93, 0x33, 0xf8, 0x9b, 0xd1, 0xd4, 0x7b, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClockVectorElements(in Guid riid, void** ppiEnumClockVector) mut => VT.GetClockVectorElements(ref this, riid, ppiEnumClockVector);
			public HRESULT GetClockVectorElementCount(out uint32 pdwCount) mut => VT.GetClockVectorElementCount(ref this, out pdwCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClockVector self, in Guid riid, void** ppiEnumClockVector) GetClockVectorElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClockVector self, out uint32 pdwCount) GetClockVectorElementCount;
			}
		}
		[CRepr]
		public struct IFeedClockVector : IClockVector
		{
			public const new Guid IID = .(0x8d1d98d1, 0x9fb8, 0x4ec9, 0xa5, 0x53, 0x54, 0xdd, 0x92, 0x4e, 0x0f, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdateCount(out uint32 pdwUpdateCount) mut => VT.GetUpdateCount(ref this, out pdwUpdateCount);
			public HRESULT IsNoConflictsSpecified(out BOOL pfIsNoConflictsSpecified) mut => VT.IsNoConflictsSpecified(ref this, out pfIsNoConflictsSpecified);

			[CRepr]
			public struct VTable : IClockVector.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedClockVector self, out uint32 pdwUpdateCount) GetUpdateCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedClockVector self, out BOOL pfIsNoConflictsSpecified) IsNoConflictsSpecified;
			}
		}
		[CRepr]
		public struct IEnumClockVector : IUnknown
		{
			public const new Guid IID = .(0x525844db, 0x2837, 0x4799, 0x9e, 0x80, 0x81, 0xa6, 0x6e, 0x02, 0x22, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cClockVectorElements, out IClockVectorElement* ppiClockVectorElements, out uint32 pcFetched) mut => VT.Next(ref this, cClockVectorElements, out ppiClockVectorElements, out pcFetched);
			public HRESULT Skip(uint32 cSyncVersions) mut => VT.Skip(ref this, cSyncVersions);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumClockVector* ppiEnum) mut => VT.Clone(ref this, out ppiEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumClockVector self, uint32 cClockVectorElements, out IClockVectorElement* ppiClockVectorElements, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumClockVector self, uint32 cSyncVersions) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumClockVector self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumClockVector self, out IEnumClockVector* ppiEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumFeedClockVector : IUnknown
		{
			public const new Guid IID = .(0x550f763d, 0x146a, 0x48f6, 0xab, 0xeb, 0x6c, 0x88, 0xc7, 0xf7, 0x05, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cClockVectorElements, out IFeedClockVectorElement* ppiClockVectorElements, out uint32 pcFetched) mut => VT.Next(ref this, cClockVectorElements, out ppiClockVectorElements, out pcFetched);
			public HRESULT Skip(uint32 cSyncVersions) mut => VT.Skip(ref this, cSyncVersions);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumFeedClockVector* ppiEnum) mut => VT.Clone(ref this, out ppiEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFeedClockVector self, uint32 cClockVectorElements, out IFeedClockVectorElement* ppiClockVectorElements, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFeedClockVector self, uint32 cSyncVersions) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFeedClockVector self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFeedClockVector self, out IEnumFeedClockVector* ppiEnum) Clone;
			}
		}
		[CRepr]
		public struct ICoreFragment : IUnknown
		{
			public const new Guid IID = .(0x613b2ab5, 0xb304, 0x47d9, 0x9c, 0x31, 0xce, 0x6c, 0x54, 0x40, 0x1a, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextColumn(out uint8 pChangeUnitId, out uint32 pChangeUnitIdSize) mut => VT.NextColumn(ref this, out pChangeUnitId, out pChangeUnitIdSize);
			public HRESULT NextRange(out uint8 pItemId, out uint32 pItemIdSize, out IClockVector* piClockVector) mut => VT.NextRange(ref this, out pItemId, out pItemIdSize, out piClockVector);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT GetColumnCount(out uint32 pColumnCount) mut => VT.GetColumnCount(ref this, out pColumnCount);
			public HRESULT GetRangeCount(out uint32 pRangeCount) mut => VT.GetRangeCount(ref this, out pRangeCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragment self, out uint8 pChangeUnitId, out uint32 pChangeUnitIdSize) NextColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragment self, out uint8 pItemId, out uint32 pItemIdSize, out IClockVector* piClockVector) NextRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragment self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragment self, out uint32 pColumnCount) GetColumnCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragment self, out uint32 pRangeCount) GetRangeCount;
			}
		}
		[CRepr]
		public struct ICoreFragmentInspector : IUnknown
		{
			public const new Guid IID = .(0xf7fcc5fd, 0xae26, 0x4679, 0xba, 0x16, 0x96, 0xaa, 0xc5, 0x83, 0xc1, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextCoreFragments(uint32 requestedCount, out ICoreFragment* ppiCoreFragments, out uint32 pFetchedCount) mut => VT.NextCoreFragments(ref this, requestedCount, out ppiCoreFragments, out pFetchedCount);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragmentInspector self, uint32 requestedCount, out ICoreFragment* ppiCoreFragments, out uint32 pFetchedCount) NextCoreFragments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoreFragmentInspector self) Reset;
			}
		}
		[CRepr]
		public struct IRangeExceptionAlt : IUnknown
		{
			public const new Guid IID = .(0x75ae8777, 0x6848, 0x49f7, 0x95, 0x6c, 0xa3, 0xa9, 0x2f, 0x50, 0x96, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClosedRangeStart(out uint8 pbClosedRangeStart, out uint32 pcbIdSize) mut => VT.GetClosedRangeStart(ref this, out pbClosedRangeStart, out pcbIdSize);
			public HRESULT GetClosedRangeEnd(out uint8 pbClosedRangeEnd, out uint32 pcbIdSize) mut => VT.GetClosedRangeEnd(ref this, out pbClosedRangeEnd, out pcbIdSize);
			public HRESULT GetClockVector(in Guid riid, void** ppUnk) mut => VT.GetClockVector(ref this, riid, ppUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeExceptionAlt self, out uint8 pbClosedRangeStart, out uint32 pcbIdSize) GetClosedRangeStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeExceptionAlt self, out uint8 pbClosedRangeEnd, out uint32 pcbIdSize) GetClosedRangeEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeExceptionAlt self, in Guid riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumRangeExceptions : IUnknown
		{
			public const new Guid IID = .(0x0944439f, 0xddb1, 0x4176, 0xb7, 0x03, 0x04, 0x6f, 0xf2, 0x2a, 0x23, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, out IRangeExceptionAlt* ppRangeException, out uint32 pcFetched) mut => VT.Next(ref this, cExceptions, out ppRangeException, out pcFetched);
			public HRESULT Skip(uint32 cExceptions) mut => VT.Skip(ref this, cExceptions);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumRangeExceptions* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRangeExceptions self, uint32 cExceptions, out IRangeExceptionAlt* ppRangeException, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRangeExceptions self, uint32 cExceptions) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRangeExceptions self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRangeExceptions self, out IEnumRangeExceptions* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISingleItemException : IUnknown
		{
			public const new Guid IID = .(0x892fb9b0, 0x7c55, 0x4a18, 0x93, 0x16, 0xfd, 0xf4, 0x49, 0x56, 0x9b, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemId(out uint8 pbItemId, out uint32 pcbIdSize) mut => VT.GetItemId(ref this, out pbItemId, out pcbIdSize);
			public HRESULT GetClockVector(in Guid riid, void** ppUnk) mut => VT.GetClockVector(ref this, riid, ppUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISingleItemException self, out uint8 pbItemId, out uint32 pcbIdSize) GetItemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISingleItemException self, in Guid riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumSingleItemExceptions : IUnknown
		{
			public const new Guid IID = .(0xe563381c, 0x1b4d, 0x4c66, 0x97, 0x96, 0xc8, 0x6f, 0xac, 0xcd, 0xcd, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, out ISingleItemException* ppSingleItemException, out uint32 pcFetched) mut => VT.Next(ref this, cExceptions, out ppSingleItemException, out pcFetched);
			public HRESULT Skip(uint32 cExceptions) mut => VT.Skip(ref this, cExceptions);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSingleItemExceptions* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSingleItemExceptions self, uint32 cExceptions, out ISingleItemException* ppSingleItemException, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSingleItemExceptions self, uint32 cExceptions) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSingleItemExceptions self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSingleItemExceptions self, out IEnumSingleItemExceptions* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IChangeUnitException : IUnknown
		{
			public const new Guid IID = .(0x0cd7ee7c, 0xfec0, 0x4021, 0x99, 0xee, 0xf0, 0xe5, 0x34, 0x8f, 0x2a, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemId(out uint8 pbItemId, out uint32 pcbIdSize) mut => VT.GetItemId(ref this, out pbItemId, out pcbIdSize);
			public HRESULT GetChangeUnitId(out uint8 pbChangeUnitId, out uint32 pcbIdSize) mut => VT.GetChangeUnitId(ref this, out pbChangeUnitId, out pcbIdSize);
			public HRESULT GetClockVector(in Guid riid, void** ppUnk) mut => VT.GetClockVector(ref this, riid, ppUnk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitException self, out uint8 pbItemId, out uint32 pcbIdSize) GetItemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitException self, out uint8 pbChangeUnitId, out uint32 pcbIdSize) GetChangeUnitId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitException self, in Guid riid, void** ppUnk) GetClockVector;
			}
		}
		[CRepr]
		public struct IEnumChangeUnitExceptions : IUnknown
		{
			public const new Guid IID = .(0x3074e802, 0x9319, 0x4420, 0xbe, 0x21, 0x10, 0x22, 0xe2, 0xe2, 0x1d, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cExceptions, out IChangeUnitException* ppChangeUnitException, out uint32 pcFetched) mut => VT.Next(ref this, cExceptions, out ppChangeUnitException, out pcFetched);
			public HRESULT Skip(uint32 cExceptions) mut => VT.Skip(ref this, cExceptions);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumChangeUnitExceptions* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumChangeUnitExceptions self, uint32 cExceptions, out IChangeUnitException* ppChangeUnitException, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumChangeUnitExceptions self, uint32 cExceptions) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumChangeUnitExceptions self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumChangeUnitExceptions self, out IEnumChangeUnitExceptions* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0x2209f4fc, 0xfd10, 0x4ff0, 0x84, 0xa8, 0xf0, 0xa1, 0x98, 0x2e, 0x44, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LookupReplicaKey(in uint8 pbReplicaId, out uint32 pdwReplicaKey) mut => VT.LookupReplicaKey(ref this, pbReplicaId, out pdwReplicaKey);
			public HRESULT LookupReplicaId(uint32 dwReplicaKey, out uint8 pbReplicaId, out uint32 pcbIdSize) mut => VT.LookupReplicaId(ref this, dwReplicaKey, out pbReplicaId, out pcbIdSize);
			public HRESULT Serialize(out uint8 pbReplicaKeyMap, out uint32 pcbReplicaKeyMap) mut => VT.Serialize(ref this, out pbReplicaKeyMap, out pcbReplicaKeyMap);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReplicaKeyMap self, in uint8 pbReplicaId, out uint32 pdwReplicaKey) LookupReplicaKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReplicaKeyMap self, uint32 dwReplicaKey, out uint8 pbReplicaId, out uint32 pcbIdSize) LookupReplicaId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IReplicaKeyMap self, out uint8 pbReplicaKeyMap, out uint32 pcbReplicaKeyMap) Serialize;
			}
		}
		[CRepr]
		public struct IConstructReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0xded10970, 0xec85, 0x4115, 0xb5, 0x2c, 0x44, 0x05, 0x84, 0x56, 0x42, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindOrAddReplica(in uint8 pbReplicaId, out uint32 pdwReplicaKey) mut => VT.FindOrAddReplica(ref this, pbReplicaId, out pdwReplicaKey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstructReplicaKeyMap self, in uint8 pbReplicaId, out uint32 pdwReplicaKey) FindOrAddReplica;
			}
		}
		[CRepr]
		public struct ISyncKnowledge : IUnknown
		{
			public const new Guid IID = .(0x615bbb53, 0xc945, 0x4203, 0xbf, 0x4b, 0x2c, 0xb6, 0x59, 0x19, 0xa0, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerReplicaId(out uint8 pbReplicaId, out uint32 pcbIdSize) mut => VT.GetOwnerReplicaId(ref this, out pbReplicaId, out pcbIdSize);
			public HRESULT Serialize(BOOL fSerializeReplicaKeyMap, out uint8 pbKnowledge, out uint32 pcbKnowledge) mut => VT.Serialize(ref this, fSerializeReplicaKeyMap, out pbKnowledge, out pcbKnowledge);
			public HRESULT SetLocalTickCount(uint64 ullTickCount) mut => VT.SetLocalTickCount(ref this, ullTickCount);
			public HRESULT ContainsChange(in uint8 pbVersionOwnerReplicaId, in uint8 pgidItemId, in SYNC_VERSION pSyncVersion) mut => VT.ContainsChange(ref this, pbVersionOwnerReplicaId, pgidItemId, pSyncVersion);
			public HRESULT ContainsChangeUnit(in uint8 pbVersionOwnerReplicaId, in uint8 pbItemId, in uint8 pbChangeUnitId, in SYNC_VERSION pSyncVersion) mut => VT.ContainsChangeUnit(ref this, pbVersionOwnerReplicaId, pbItemId, pbChangeUnitId, pSyncVersion);
			public HRESULT GetScopeVector(in Guid riid, void** ppUnk) mut => VT.GetScopeVector(ref this, riid, ppUnk);
			public HRESULT GetReplicaKeyMap(out IReplicaKeyMap* ppReplicaKeyMap) mut => VT.GetReplicaKeyMap(ref this, out ppReplicaKeyMap);
			public HRESULT Clone(out ISyncKnowledge* ppClonedKnowledge) mut => VT.Clone(ref this, out ppClonedKnowledge);
			public HRESULT ConvertVersion(ref ISyncKnowledge pKnowledgeIn, in uint8 pbCurrentOwnerId, in SYNC_VERSION pVersionIn, out uint8 pbNewOwnerId, out uint32 pcbIdSize, out SYNC_VERSION pVersionOut) mut => VT.ConvertVersion(ref this, ref pKnowledgeIn, pbCurrentOwnerId, pVersionIn, out pbNewOwnerId, out pcbIdSize, out pVersionOut);
			public HRESULT MapRemoteToLocal(ref ISyncKnowledge pRemoteKnowledge, out ISyncKnowledge* ppMappedKnowledge) mut => VT.MapRemoteToLocal(ref this, ref pRemoteKnowledge, out ppMappedKnowledge);
			public HRESULT Union(ref ISyncKnowledge pKnowledge) mut => VT.Union(ref this, ref pKnowledge);
			public HRESULT ProjectOntoItem(in uint8 pbItemId, out ISyncKnowledge* ppKnowledgeOut) mut => VT.ProjectOntoItem(ref this, pbItemId, out ppKnowledgeOut);
			public HRESULT ProjectOntoChangeUnit(in uint8 pbItemId, in uint8 pbChangeUnitId, out ISyncKnowledge* ppKnowledgeOut) mut => VT.ProjectOntoChangeUnit(ref this, pbItemId, pbChangeUnitId, out ppKnowledgeOut);
			public HRESULT ProjectOntoRange(in SYNC_RANGE psrngSyncRange, out ISyncKnowledge* ppKnowledgeOut) mut => VT.ProjectOntoRange(ref this, psrngSyncRange, out ppKnowledgeOut);
			public HRESULT ExcludeItem(in uint8 pbItemId) mut => VT.ExcludeItem(ref this, pbItemId);
			public HRESULT ExcludeChangeUnit(in uint8 pbItemId, in uint8 pbChangeUnitId) mut => VT.ExcludeChangeUnit(ref this, pbItemId, pbChangeUnitId);
			public HRESULT ContainsKnowledge(ref ISyncKnowledge pKnowledge) mut => VT.ContainsKnowledge(ref this, ref pKnowledge);
			public HRESULT FindMinTickCountForReplica(in uint8 pbReplicaId, out uint64 pullReplicaTickCount) mut => VT.FindMinTickCountForReplica(ref this, pbReplicaId, out pullReplicaTickCount);
			public HRESULT GetRangeExceptions(in Guid riid, void** ppUnk) mut => VT.GetRangeExceptions(ref this, riid, ppUnk);
			public HRESULT GetSingleItemExceptions(in Guid riid, void** ppUnk) mut => VT.GetSingleItemExceptions(ref this, riid, ppUnk);
			public HRESULT GetChangeUnitExceptions(in Guid riid, void** ppUnk) mut => VT.GetChangeUnitExceptions(ref this, riid, ppUnk);
			public HRESULT FindClockVectorForItem(in uint8 pbItemId, in Guid riid, void** ppUnk) mut => VT.FindClockVectorForItem(ref this, pbItemId, riid, ppUnk);
			public HRESULT FindClockVectorForChangeUnit(in uint8 pbItemId, in uint8 pbChangeUnitId, in Guid riid, void** ppUnk) mut => VT.FindClockVectorForChangeUnit(ref this, pbItemId, pbChangeUnitId, riid, ppUnk);
			public HRESULT GetVersion(out uint32 pdwVersion) mut => VT.GetVersion(ref this, out pdwVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, out uint8 pbReplicaId, out uint32 pcbIdSize) GetOwnerReplicaId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, BOOL fSerializeReplicaKeyMap, out uint8 pbKnowledge, out uint32 pcbKnowledge) Serialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, uint64 ullTickCount) SetLocalTickCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbVersionOwnerReplicaId, in uint8 pgidItemId, in SYNC_VERSION pSyncVersion) ContainsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbVersionOwnerReplicaId, in uint8 pbItemId, in uint8 pbChangeUnitId, in SYNC_VERSION pSyncVersion) ContainsChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in Guid riid, void** ppUnk) GetScopeVector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, out IReplicaKeyMap* ppReplicaKeyMap) GetReplicaKeyMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, out ISyncKnowledge* ppClonedKnowledge) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, ref ISyncKnowledge pKnowledgeIn, in uint8 pbCurrentOwnerId, in SYNC_VERSION pVersionIn, out uint8 pbNewOwnerId, out uint32 pcbIdSize, out SYNC_VERSION pVersionOut) ConvertVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, ref ISyncKnowledge pRemoteKnowledge, out ISyncKnowledge* ppMappedKnowledge) MapRemoteToLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, ref ISyncKnowledge pKnowledge) Union;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId, out ISyncKnowledge* ppKnowledgeOut) ProjectOntoItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId, in uint8 pbChangeUnitId, out ISyncKnowledge* ppKnowledgeOut) ProjectOntoChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in SYNC_RANGE psrngSyncRange, out ISyncKnowledge* ppKnowledgeOut) ProjectOntoRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId) ExcludeItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId, in uint8 pbChangeUnitId) ExcludeChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, ref ISyncKnowledge pKnowledge) ContainsKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbReplicaId, out uint64 pullReplicaTickCount) FindMinTickCountForReplica;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in Guid riid, void** ppUnk) GetRangeExceptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in Guid riid, void** ppUnk) GetSingleItemExceptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in Guid riid, void** ppUnk) GetChangeUnitExceptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId, in Guid riid, void** ppUnk) FindClockVectorForItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, in uint8 pbItemId, in uint8 pbChangeUnitId, in Guid riid, void** ppUnk) FindClockVectorForChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge self, out uint32 pdwVersion) GetVersion;
			}
		}
		[CRepr]
		public struct IForgottenKnowledge : ISyncKnowledge
		{
			public const new Guid IID = .(0x456e0f96, 0x6036, 0x452b, 0x9f, 0x9d, 0xbc, 0xc4, 0xb4, 0xa8, 0x5d, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ForgetToVersion(ref ISyncKnowledge pKnowledge, in SYNC_VERSION pVersion) mut => VT.ForgetToVersion(ref this, ref pKnowledge, pVersion);

			[CRepr]
			public struct VTable : ISyncKnowledge.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IForgottenKnowledge self, ref ISyncKnowledge pKnowledge, in SYNC_VERSION pVersion) ForgetToVersion;
			}
		}
		[CRepr]
		public struct ISyncKnowledge2 : ISyncKnowledge
		{
			public const new Guid IID = .(0xed0addc0, 0x3b4b, 0x46a1, 0x9a, 0x45, 0x45, 0x66, 0x1d, 0x21, 0x14, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(out ID_PARAMETERS pIdParameters) mut => VT.GetIdParameters(ref this, out pIdParameters);
			public HRESULT ProjectOntoColumnSet(in uint8* ppColumns, uint32 count, out ISyncKnowledge2* ppiKnowledgeOut) mut => VT.ProjectOntoColumnSet(ref this, ppColumns, count, out ppiKnowledgeOut);
			public HRESULT SerializeWithOptions(SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, out uint8 pbBuffer, out uint32 pdwSerializedSize) mut => VT.SerializeWithOptions(ref this, targetFormatVersion, dwFlags, out pbBuffer, out pdwSerializedSize);
			public HRESULT GetLowestUncontainedId(ref ISyncKnowledge2 piSyncKnowledge, out uint8 pbItemId, out uint32 pcbItemIdSize) mut => VT.GetLowestUncontainedId(ref this, ref piSyncKnowledge, out pbItemId, out pcbItemIdSize);
			public HRESULT GetInspector(in Guid riid, void** ppiInspector) mut => VT.GetInspector(ref this, riid, ppiInspector);
			public HRESULT GetMinimumSupportedVersion(out SYNC_SERIALIZATION_VERSION pVersion) mut => VT.GetMinimumSupportedVersion(ref this, out pVersion);
			public HRESULT GetStatistics(SYNC_STATISTICS which, out uint32 pValue) mut => VT.GetStatistics(ref this, which, out pValue);
			public HRESULT ContainsKnowledgeForItem(ref ISyncKnowledge pKnowledge, in uint8 pbItemId) mut => VT.ContainsKnowledgeForItem(ref this, ref pKnowledge, pbItemId);
			public HRESULT ContainsKnowledgeForChangeUnit(ref ISyncKnowledge pKnowledge, in uint8 pbItemId, in uint8 pbChangeUnitId) mut => VT.ContainsKnowledgeForChangeUnit(ref this, ref pKnowledge, pbItemId, pbChangeUnitId);
			public HRESULT ProjectOntoKnowledgeWithPrerequisite(ref ISyncKnowledge pPrerequisiteKnowledge, ref ISyncKnowledge pTemplateKnowledge, out ISyncKnowledge* ppProjectedKnowledge) mut => VT.ProjectOntoKnowledgeWithPrerequisite(ref this, ref pPrerequisiteKnowledge, ref pTemplateKnowledge, out ppProjectedKnowledge);
			public HRESULT Complement(ref ISyncKnowledge pSyncKnowledge, out ISyncKnowledge* ppComplementedKnowledge) mut => VT.Complement(ref this, ref pSyncKnowledge, out ppComplementedKnowledge);
			public HRESULT IntersectsWithKnowledge(ref ISyncKnowledge pSyncKnowledge) mut => VT.IntersectsWithKnowledge(ref this, ref pSyncKnowledge);
			public HRESULT GetKnowledgeCookie(out IUnknown* ppKnowledgeCookie) mut => VT.GetKnowledgeCookie(ref this, out ppKnowledgeCookie);
			public HRESULT CompareToKnowledgeCookie(ref IUnknown pKnowledgeCookie, out KNOWLEDGE_COOKIE_COMPARISON_RESULT pResult) mut => VT.CompareToKnowledgeCookie(ref this, ref pKnowledgeCookie, out pResult);

			[CRepr]
			public struct VTable : ISyncKnowledge.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, out ID_PARAMETERS pIdParameters) GetIdParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, in uint8* ppColumns, uint32 count, out ISyncKnowledge2* ppiKnowledgeOut) ProjectOntoColumnSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, out uint8 pbBuffer, out uint32 pdwSerializedSize) SerializeWithOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge2 piSyncKnowledge, out uint8 pbItemId, out uint32 pcbItemIdSize) GetLowestUncontainedId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, in Guid riid, void** ppiInspector) GetInspector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, out SYNC_SERIALIZATION_VERSION pVersion) GetMinimumSupportedVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, SYNC_STATISTICS which, out uint32 pValue) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge pKnowledge, in uint8 pbItemId) ContainsKnowledgeForItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge pKnowledge, in uint8 pbItemId, in uint8 pbChangeUnitId) ContainsKnowledgeForChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge pPrerequisiteKnowledge, ref ISyncKnowledge pTemplateKnowledge, out ISyncKnowledge* ppProjectedKnowledge) ProjectOntoKnowledgeWithPrerequisite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge pSyncKnowledge, out ISyncKnowledge* ppComplementedKnowledge) Complement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref ISyncKnowledge pSyncKnowledge) IntersectsWithKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, out IUnknown* ppKnowledgeCookie) GetKnowledgeCookie;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncKnowledge2 self, ref IUnknown pKnowledgeCookie, out KNOWLEDGE_COOKIE_COMPARISON_RESULT pResult) CompareToKnowledgeCookie;
			}
		}
		[CRepr]
		public struct IRecoverableErrorData : IUnknown
		{
			public const new Guid IID = .(0xb37c4a0a, 0x4b7d, 0x4c2d, 0x97, 0x11, 0x3b, 0x00, 0xd1, 0x19, 0xb1, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pcszItemDisplayName, PWSTR pcszErrorDescription) mut => VT.Initialize(ref this, pcszItemDisplayName, pcszErrorDescription);
			public HRESULT GetItemDisplayName(PWSTR pszItemDisplayName, out uint32 pcchItemDisplayName) mut => VT.GetItemDisplayName(ref this, pszItemDisplayName, out pcchItemDisplayName);
			public HRESULT GetErrorDescription(PWSTR pszErrorDescription, out uint32 pcchErrorDescription) mut => VT.GetErrorDescription(ref this, pszErrorDescription, out pcchErrorDescription);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableErrorData self, PWSTR pcszItemDisplayName, PWSTR pcszErrorDescription) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableErrorData self, PWSTR pszItemDisplayName, out uint32 pcchItemDisplayName) GetItemDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableErrorData self, PWSTR pszErrorDescription, out uint32 pcchErrorDescription) GetErrorDescription;
			}
		}
		[CRepr]
		public struct IRecoverableError : IUnknown
		{
			public const new Guid IID = .(0x0f5625e8, 0x0a7b, 0x45ee, 0x96, 0x37, 0x1c, 0xe1, 0x36, 0x45, 0x90, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStage(out SYNC_PROGRESS_STAGE pStage) mut => VT.GetStage(ref this, out pStage);
			public HRESULT GetProvider(out SYNC_PROVIDER_ROLE pProviderRole) mut => VT.GetProvider(ref this, out pProviderRole);
			public HRESULT GetChangeWithRecoverableError(out ISyncChange* ppChangeWithRecoverableError) mut => VT.GetChangeWithRecoverableError(ref this, out ppChangeWithRecoverableError);
			public HRESULT GetRecoverableErrorDataForChange(out HRESULT phrError, out IRecoverableErrorData* ppErrorData) mut => VT.GetRecoverableErrorDataForChange(ref this, out phrError, out ppErrorData);
			public HRESULT GetRecoverableErrorDataForChangeUnit(ref ISyncChangeUnit pChangeUnit, out HRESULT phrError, out IRecoverableErrorData* ppErrorData) mut => VT.GetRecoverableErrorDataForChangeUnit(ref this, ref pChangeUnit, out phrError, out ppErrorData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableError self, out SYNC_PROGRESS_STAGE pStage) GetStage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableError self, out SYNC_PROVIDER_ROLE pProviderRole) GetProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableError self, out ISyncChange* ppChangeWithRecoverableError) GetChangeWithRecoverableError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableError self, out HRESULT phrError, out IRecoverableErrorData* ppErrorData) GetRecoverableErrorDataForChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecoverableError self, ref ISyncChangeUnit pChangeUnit, out HRESULT phrError, out IRecoverableErrorData* ppErrorData) GetRecoverableErrorDataForChangeUnit;
			}
		}
		[CRepr]
		public struct IChangeConflict : IUnknown
		{
			public const new Guid IID = .(0x014ebf97, 0x9f20, 0x4f7a, 0xbd, 0xd4, 0x25, 0x97, 0x9c, 0x77, 0xc0, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDestinationProviderConflictingChange(out ISyncChange* ppConflictingChange) mut => VT.GetDestinationProviderConflictingChange(ref this, out ppConflictingChange);
			public HRESULT GetSourceProviderConflictingChange(out ISyncChange* ppConflictingChange) mut => VT.GetSourceProviderConflictingChange(ref this, out ppConflictingChange);
			public HRESULT GetDestinationProviderConflictingData(out IUnknown* ppConflictingData) mut => VT.GetDestinationProviderConflictingData(ref this, out ppConflictingData);
			public HRESULT GetSourceProviderConflictingData(out IUnknown* ppConflictingData) mut => VT.GetSourceProviderConflictingData(ref this, out ppConflictingData);
			public HRESULT GetResolveActionForChange(out SYNC_RESOLVE_ACTION pResolveAction) mut => VT.GetResolveActionForChange(ref this, out pResolveAction);
			public HRESULT SetResolveActionForChange(SYNC_RESOLVE_ACTION resolveAction) mut => VT.SetResolveActionForChange(ref this, resolveAction);
			public HRESULT GetResolveActionForChangeUnit(ref ISyncChangeUnit pChangeUnit, out SYNC_RESOLVE_ACTION pResolveAction) mut => VT.GetResolveActionForChangeUnit(ref this, ref pChangeUnit, out pResolveAction);
			public HRESULT SetResolveActionForChangeUnit(ref ISyncChangeUnit pChangeUnit, SYNC_RESOLVE_ACTION resolveAction) mut => VT.SetResolveActionForChangeUnit(ref this, ref pChangeUnit, resolveAction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, out ISyncChange* ppConflictingChange) GetDestinationProviderConflictingChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, out ISyncChange* ppConflictingChange) GetSourceProviderConflictingChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, out IUnknown* ppConflictingData) GetDestinationProviderConflictingData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, out IUnknown* ppConflictingData) GetSourceProviderConflictingData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, out SYNC_RESOLVE_ACTION pResolveAction) GetResolveActionForChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, ref ISyncChangeUnit pChangeUnit, out SYNC_RESOLVE_ACTION pResolveAction) GetResolveActionForChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeConflict self, ref ISyncChangeUnit pChangeUnit, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChangeUnit;
			}
		}
		[CRepr]
		public struct IConstraintConflict : IUnknown
		{
			public const new Guid IID = .(0x00d2302e, 0x1cf8, 0x4835, 0xb8, 0x5f, 0xb7, 0xca, 0x4f, 0x79, 0x9e, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDestinationProviderConflictingChange(out ISyncChange* ppConflictingChange) mut => VT.GetDestinationProviderConflictingChange(ref this, out ppConflictingChange);
			public HRESULT GetSourceProviderConflictingChange(out ISyncChange* ppConflictingChange) mut => VT.GetSourceProviderConflictingChange(ref this, out ppConflictingChange);
			public HRESULT GetDestinationProviderOriginalChange(out ISyncChange* ppOriginalChange) mut => VT.GetDestinationProviderOriginalChange(ref this, out ppOriginalChange);
			public HRESULT GetDestinationProviderConflictingData(out IUnknown* ppConflictingData) mut => VT.GetDestinationProviderConflictingData(ref this, out ppConflictingData);
			public HRESULT GetSourceProviderConflictingData(out IUnknown* ppConflictingData) mut => VT.GetSourceProviderConflictingData(ref this, out ppConflictingData);
			public HRESULT GetDestinationProviderOriginalData(out IUnknown* ppOriginalData) mut => VT.GetDestinationProviderOriginalData(ref this, out ppOriginalData);
			public HRESULT GetConstraintResolveActionForChange(out SYNC_CONSTRAINT_RESOLVE_ACTION pConstraintResolveAction) mut => VT.GetConstraintResolveActionForChange(ref this, out pConstraintResolveAction);
			public HRESULT SetConstraintResolveActionForChange(SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) mut => VT.SetConstraintResolveActionForChange(ref this, constraintResolveAction);
			public HRESULT GetConstraintResolveActionForChangeUnit(ref ISyncChangeUnit pChangeUnit, out SYNC_CONSTRAINT_RESOLVE_ACTION pConstraintResolveAction) mut => VT.GetConstraintResolveActionForChangeUnit(ref this, ref pChangeUnit, out pConstraintResolveAction);
			public HRESULT SetConstraintResolveActionForChangeUnit(ref ISyncChangeUnit pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) mut => VT.SetConstraintResolveActionForChangeUnit(ref this, ref pChangeUnit, constraintResolveAction);
			public HRESULT GetConstraintConflictReason(out CONSTRAINT_CONFLICT_REASON pConstraintConflictReason) mut => VT.GetConstraintConflictReason(ref this, out pConstraintConflictReason);
			public HRESULT IsTemporary() mut => VT.IsTemporary(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out ISyncChange* ppConflictingChange) GetDestinationProviderConflictingChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out ISyncChange* ppConflictingChange) GetSourceProviderConflictingChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out ISyncChange* ppOriginalChange) GetDestinationProviderOriginalChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out IUnknown* ppConflictingData) GetDestinationProviderConflictingData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out IUnknown* ppConflictingData) GetSourceProviderConflictingData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out IUnknown* ppOriginalData) GetDestinationProviderOriginalData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out SYNC_CONSTRAINT_RESOLVE_ACTION pConstraintResolveAction) GetConstraintResolveActionForChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, ref ISyncChangeUnit pChangeUnit, out SYNC_CONSTRAINT_RESOLVE_ACTION pConstraintResolveAction) GetConstraintResolveActionForChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, ref ISyncChangeUnit pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChangeUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self, out CONSTRAINT_CONFLICT_REASON pConstraintConflictReason) GetConstraintConflictReason;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConstraintConflict self) IsTemporary;
			}
		}
		[CRepr]
		public struct ISyncCallback : IUnknown
		{
			public const new Guid IID = .(0x0599797f, 0x5ed9, 0x485c, 0xae, 0x36, 0x0c, 0x5d, 0x1b, 0xf2, 0xe7, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnProgress(SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) mut => VT.OnProgress(ref this, provider, syncStage, dwCompletedWork, dwTotalWork);
			public HRESULT OnChange(ref ISyncChange pSyncChange) mut => VT.OnChange(ref this, ref pSyncChange);
			public HRESULT OnConflict(ref IChangeConflict pConflict) mut => VT.OnConflict(ref this, ref pConflict);
			public HRESULT OnFullEnumerationNeeded(out SYNC_FULL_ENUMERATION_ACTION pFullEnumerationAction) mut => VT.OnFullEnumerationNeeded(ref this, out pFullEnumerationAction);
			public HRESULT OnRecoverableError(ref IRecoverableError pRecoverableError) mut => VT.OnRecoverableError(ref this, ref pRecoverableError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback self, ref ISyncChange pSyncChange) OnChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback self, ref IChangeConflict pConflict) OnConflict;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback self, out SYNC_FULL_ENUMERATION_ACTION pFullEnumerationAction) OnFullEnumerationNeeded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback self, ref IRecoverableError pRecoverableError) OnRecoverableError;
			}
		}
		[CRepr]
		public struct ISyncCallback2 : ISyncCallback
		{
			public const new Guid IID = .(0x47ce84af, 0x7442, 0x4ead, 0x86, 0x30, 0x12, 0x01, 0x5e, 0x03, 0x0a, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChangeApplied(uint32 dwChangesApplied, uint32 dwChangesFailed) mut => VT.OnChangeApplied(ref this, dwChangesApplied, dwChangesFailed);
			public HRESULT OnChangeFailed(uint32 dwChangesApplied, uint32 dwChangesFailed) mut => VT.OnChangeFailed(ref this, dwChangesApplied, dwChangesFailed);

			[CRepr]
			public struct VTable : ISyncCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback2 self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeApplied;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncCallback2 self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeFailed;
			}
		}
		[CRepr]
		public struct ISyncConstraintCallback : IUnknown
		{
			public const new Guid IID = .(0x8af3843e, 0x75b3, 0x438c, 0xbb, 0x51, 0x6f, 0x02, 0x0d, 0x70, 0xd3, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnConstraintConflict(ref IConstraintConflict pConflict) mut => VT.OnConstraintConflict(ref this, ref pConflict);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncConstraintCallback self, ref IConstraintConflict pConflict) OnConstraintConflict;
			}
		}
		[CRepr]
		public struct ISyncProvider : IUnknown
		{
			public const new Guid IID = .(0x8f657056, 0x2bce, 0x4a17, 0x8c, 0x68, 0xc7, 0xbb, 0x78, 0x98, 0xb5, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(out ID_PARAMETERS pIdParameters) mut => VT.GetIdParameters(ref this, out pIdParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProvider self, out ID_PARAMETERS pIdParameters) GetIdParameters;
			}
		}
		[CRepr]
		public struct ISyncSessionState : IUnknown
		{
			public const new Guid IID = .(0xb8a940fe, 0x9f01, 0x483b, 0x94, 0x34, 0xc3, 0x7d, 0x36, 0x12, 0x25, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsCanceled(out BOOL pfIsCanceled) mut => VT.IsCanceled(ref this, out pfIsCanceled);
			public HRESULT GetInfoForChangeApplication(out uint8 pbChangeApplierInfo, out uint32 pcbChangeApplierInfo) mut => VT.GetInfoForChangeApplication(ref this, out pbChangeApplierInfo, out pcbChangeApplierInfo);
			public HRESULT LoadInfoFromChangeApplication(in uint8 pbChangeApplierInfo, uint32 cbChangeApplierInfo) mut => VT.LoadInfoFromChangeApplication(ref this, pbChangeApplierInfo, cbChangeApplierInfo);
			public HRESULT GetForgottenKnowledgeRecoveryRangeStart(out uint8 pbRangeStart, out uint32 pcbRangeStart) mut => VT.GetForgottenKnowledgeRecoveryRangeStart(ref this, out pbRangeStart, out pcbRangeStart);
			public HRESULT GetForgottenKnowledgeRecoveryRangeEnd(out uint8 pbRangeEnd, out uint32 pcbRangeEnd) mut => VT.GetForgottenKnowledgeRecoveryRangeEnd(ref this, out pbRangeEnd, out pcbRangeEnd);
			public HRESULT SetForgottenKnowledgeRecoveryRange(in SYNC_RANGE pRange) mut => VT.SetForgottenKnowledgeRecoveryRange(ref this, pRange);
			public HRESULT OnProgress(SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) mut => VT.OnProgress(ref this, provider, syncStage, dwCompletedWork, dwTotalWork);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, out BOOL pfIsCanceled) IsCanceled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, out uint8 pbChangeApplierInfo, out uint32 pcbChangeApplierInfo) GetInfoForChangeApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, in uint8 pbChangeApplierInfo, uint32 cbChangeApplierInfo) LoadInfoFromChangeApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, out uint8 pbRangeStart, out uint32 pcbRangeStart) GetForgottenKnowledgeRecoveryRangeStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, out uint8 pbRangeEnd, out uint32 pcbRangeEnd) GetForgottenKnowledgeRecoveryRangeEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, in SYNC_RANGE pRange) SetForgottenKnowledgeRecoveryRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
			}
		}
		[CRepr]
		public struct ISyncSessionExtendedErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x326c6810, 0x790a, 0x409b, 0xb7, 0x41, 0x69, 0x99, 0x38, 0x87, 0x61, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProviderWithError(out ISyncProvider* ppProviderWithError) mut => VT.GetSyncProviderWithError(ref this, out ppProviderWithError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionExtendedErrorInfo self, out ISyncProvider* ppProviderWithError) GetSyncProviderWithError;
			}
		}
		[CRepr]
		public struct ISyncSessionState2 : ISyncSessionState
		{
			public const new Guid IID = .(0x9e37cfa3, 0x9e38, 0x4c61, 0x9c, 0xa3, 0xff, 0xe8, 0x10, 0xb4, 0x5c, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProviderWithError(BOOL fSelf) mut => VT.SetProviderWithError(ref this, fSelf);
			public HRESULT GetSessionErrorStatus(out HRESULT phrSessionError) mut => VT.GetSessionErrorStatus(ref this, out phrSessionError);

			[CRepr]
			public struct VTable : ISyncSessionState.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState2 self, BOOL fSelf) SetProviderWithError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncSessionState2 self, out HRESULT phrSessionError) GetSessionErrorStatus;
			}
		}
		[CRepr]
		public struct ISyncFilterInfo : IUnknown
		{
			public const new Guid IID = .(0x794eaaf8, 0x3f2e, 0x47e6, 0x97, 0x28, 0x17, 0xe6, 0xfc, 0xf9, 0x4c, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(out uint8 pbBuffer, out uint32 pcbBuffer) mut => VT.Serialize(ref this, out pbBuffer, out pcbBuffer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFilterInfo self, out uint8 pbBuffer, out uint32 pcbBuffer) Serialize;
			}
		}
		[CRepr]
		public struct ISyncFilterInfo2 : ISyncFilterInfo
		{
			public const new Guid IID = .(0x19b394ba, 0xe3d0, 0x468c, 0x93, 0x4d, 0x32, 0x19, 0x68, 0xb2, 0xab, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFilterInfo2 self, out uint32 pdwFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IChangeUnitListFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0xf2837671, 0x0bdf, 0x43fa, 0xb5, 0x02, 0x23, 0x23, 0x75, 0xfb, 0x50, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(in uint8* ppbChangeUnitIds, uint32 dwChangeUnitCount) mut => VT.Initialize(ref this, ppbChangeUnitIds, dwChangeUnitCount);
			public HRESULT GetChangeUnitIdCount(out uint32 pdwChangeUnitIdCount) mut => VT.GetChangeUnitIdCount(ref this, out pdwChangeUnitIdCount);
			public HRESULT GetChangeUnitId(uint32 dwChangeUnitIdIndex, out uint8 pbChangeUnitId, out uint32 pcbIdSize) mut => VT.GetChangeUnitId(ref this, dwChangeUnitIdIndex, out pbChangeUnitId, out pcbIdSize);

			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitListFilterInfo self, in uint8* ppbChangeUnitIds, uint32 dwChangeUnitCount) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitListFilterInfo self, out uint32 pdwChangeUnitIdCount) GetChangeUnitIdCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChangeUnitListFilterInfo self, uint32 dwChangeUnitIdIndex, out uint8 pbChangeUnitId, out uint32 pcbIdSize) GetChangeUnitId;
			}
		}
		[CRepr]
		public struct ISyncFilter : IUnknown
		{
			public const new Guid IID = .(0x087a3f15, 0x0fcb, 0x44c1, 0x96, 0x39, 0x53, 0xc1, 0x4e, 0x2b, 0x55, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsIdentical(ref ISyncFilter pSyncFilter) mut => VT.IsIdentical(ref this, ref pSyncFilter);
			public HRESULT Serialize(out uint8 pbSyncFilter, out uint32 pcbSyncFilter) mut => VT.Serialize(ref this, out pbSyncFilter, out pcbSyncFilter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFilter self, ref ISyncFilter pSyncFilter) IsIdentical;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFilter self, out uint8 pbSyncFilter, out uint32 pcbSyncFilter) Serialize;
			}
		}
		[CRepr]
		public struct ISyncFilterDeserializer : IUnknown
		{
			public const new Guid IID = .(0xb45b7a72, 0xe5c7, 0x46be, 0x9c, 0x82, 0x77, 0xb8, 0xb1, 0x5d, 0xab, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeserializeSyncFilter(in uint8 pbSyncFilter, uint32 dwCbSyncFilter, out ISyncFilter* ppISyncFilter) mut => VT.DeserializeSyncFilter(ref this, pbSyncFilter, dwCbSyncFilter, out ppISyncFilter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFilterDeserializer self, in uint8 pbSyncFilter, uint32 dwCbSyncFilter, out ISyncFilter* ppISyncFilter) DeserializeSyncFilter;
			}
		}
		[CRepr]
		public struct ICustomFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x1d335dff, 0x6f88, 0x4e4d, 0x91, 0xa8, 0xa3, 0xf3, 0x51, 0xcf, 0xd4, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncFilter(out ISyncFilter* pISyncFilter) mut => VT.GetSyncFilter(ref this, out pISyncFilter);

			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomFilterInfo self, out ISyncFilter* pISyncFilter) GetSyncFilter;
			}
		}
		[CRepr]
		public struct ICombinedFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x11f9de71, 0x2818, 0x4779, 0xb2, 0xac, 0x42, 0xd4, 0x50, 0x56, 0x5f, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterCount(out uint32 pdwFilterCount) mut => VT.GetFilterCount(ref this, out pdwFilterCount);
			public HRESULT GetFilterInfo(uint32 dwFilterIndex, out ISyncFilterInfo* ppIFilterInfo) mut => VT.GetFilterInfo(ref this, dwFilterIndex, out ppIFilterInfo);
			public HRESULT GetFilterCombinationType(out FILTER_COMBINATION_TYPE pFilterCombinationType) mut => VT.GetFilterCombinationType(ref this, out pFilterCombinationType);

			[CRepr]
			public struct VTable : ISyncFilterInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICombinedFilterInfo self, out uint32 pdwFilterCount) GetFilterCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICombinedFilterInfo self, uint32 dwFilterIndex, out ISyncFilterInfo* ppIFilterInfo) GetFilterInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICombinedFilterInfo self, out FILTER_COMBINATION_TYPE pFilterCombinationType) GetFilterCombinationType;
			}
		}
		[CRepr]
		public struct IEnumSyncChanges : IUnknown
		{
			public const new Guid IID = .(0x5f86be4a, 0x5e78, 0x4e32, 0xac, 0x1c, 0xc2, 0x4f, 0xd2, 0x23, 0xef, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cChanges, out ISyncChange* ppChange, out uint32 pcFetched) mut => VT.Next(ref this, cChanges, out ppChange, out pcFetched);
			public HRESULT Skip(uint32 cChanges) mut => VT.Skip(ref this, cChanges);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSyncChanges* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChanges self, uint32 cChanges, out ISyncChange* ppChange, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChanges self, uint32 cChanges) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChanges self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChanges self, out IEnumSyncChanges* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x56f14771, 0x8677, 0x484f, 0xa1, 0x70, 0xe3, 0x86, 0xe4, 0x18, 0xa6, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddChangeUnitMetadata(in uint8 pbChangeUnitId, in SYNC_VERSION pChangeUnitVersion) mut => VT.AddChangeUnitMetadata(ref this, pbChangeUnitId, pChangeUnitVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBuilder self, in uint8 pbChangeUnitId, in SYNC_VERSION pChangeUnitVersion) AddChangeUnitMetadata;
			}
		}
		[CRepr]
		public struct IFilterTrackingSyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x295024a0, 0x70da, 0x4c58, 0x88, 0x3c, 0xce, 0x2a, 0xfb, 0x30, 0x8d, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFilterChange(uint32 dwFilterKey, in SYNC_FILTER_CHANGE pFilterChange) mut => VT.AddFilterChange(ref this, dwFilterKey, pFilterChange);
			public HRESULT SetAllChangeUnitsPresentFlag() mut => VT.SetAllChangeUnitsPresentFlag(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterTrackingSyncChangeBuilder self, uint32 dwFilterKey, in SYNC_FILTER_CHANGE pFilterChange) AddFilterChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterTrackingSyncChangeBuilder self) SetAllChangeUnitsPresentFlag;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchBase : IUnknown
		{
			public const new Guid IID = .(0x52f6e694, 0x6a71, 0x4494, 0xa1, 0x84, 0xa8, 0x31, 0x1b, 0xf5, 0xd2, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChangeEnumerator(out IEnumSyncChanges* ppEnum) mut => VT.GetChangeEnumerator(ref this, out ppEnum);
			public HRESULT GetIsLastBatch(out BOOL pfLastBatch) mut => VT.GetIsLastBatch(ref this, out pfLastBatch);
			public HRESULT GetWorkEstimateForBatch(out uint32 pdwWorkForBatch) mut => VT.GetWorkEstimateForBatch(ref this, out pdwWorkForBatch);
			public HRESULT GetRemainingWorkEstimateForSession(out uint32 pdwRemainingWorkForSession) mut => VT.GetRemainingWorkEstimateForSession(ref this, out pdwRemainingWorkForSession);
			public HRESULT BeginOrderedGroup(in uint8 pbLowerBound) mut => VT.BeginOrderedGroup(ref this, pbLowerBound);
			public HRESULT EndOrderedGroup(in uint8 pbUpperBound, ref ISyncKnowledge pMadeWithKnowledge) mut => VT.EndOrderedGroup(ref this, pbUpperBound, ref pMadeWithKnowledge);
			public HRESULT AddItemMetadataToGroup(in uint8 pbOwnerReplicaId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) mut => VT.AddItemMetadataToGroup(ref this, pbOwnerReplicaId, pbItemId, pChangeVersion, pCreationVersion, dwFlags, dwWorkForChange, out ppChangeBuilder);
			public HRESULT GetLearnedKnowledge(out ISyncKnowledge* ppLearnedKnowledge) mut => VT.GetLearnedKnowledge(ref this, out ppLearnedKnowledge);
			public HRESULT GetPrerequisiteKnowledge(out ISyncKnowledge* ppPrerequisteKnowledge) mut => VT.GetPrerequisiteKnowledge(ref this, out ppPrerequisteKnowledge);
			public HRESULT GetSourceForgottenKnowledge(out IForgottenKnowledge* ppSourceForgottenKnowledge) mut => VT.GetSourceForgottenKnowledge(ref this, out ppSourceForgottenKnowledge);
			public HRESULT SetLastBatch() mut => VT.SetLastBatch(ref this);
			public HRESULT SetWorkEstimateForBatch(uint32 dwWorkForBatch) mut => VT.SetWorkEstimateForBatch(ref this, dwWorkForBatch);
			public HRESULT SetRemainingWorkEstimateForSession(uint32 dwRemainingWorkForSession) mut => VT.SetRemainingWorkEstimateForSession(ref this, dwRemainingWorkForSession);
			public HRESULT Serialize(out uint8 pbChangeBatch, out uint32 pcbChangeBatch) mut => VT.Serialize(ref this, out pbChangeBatch, out pcbChangeBatch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out IEnumSyncChanges* ppEnum) GetChangeEnumerator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out BOOL pfLastBatch) GetIsLastBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out uint32 pdwWorkForBatch) GetWorkEstimateForBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out uint32 pdwRemainingWorkForSession) GetRemainingWorkEstimateForSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, in uint8 pbLowerBound) BeginOrderedGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, in uint8 pbUpperBound, ref ISyncKnowledge pMadeWithKnowledge) EndOrderedGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, in uint8 pbOwnerReplicaId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) AddItemMetadataToGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out ISyncKnowledge* ppLearnedKnowledge) GetLearnedKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out ISyncKnowledge* ppPrerequisteKnowledge) GetPrerequisiteKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out IForgottenKnowledge* ppSourceForgottenKnowledge) GetSourceForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self) SetLastBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, uint32 dwWorkForBatch) SetWorkEstimateForBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, uint32 dwRemainingWorkForSession) SetRemainingWorkEstimateForSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase self, out uint8 pbChangeBatch, out uint32 pcbChangeBatch) Serialize;
			}
		}
		[CRepr]
		public struct ISyncChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x70c64dee, 0x380f, 0x4c2e, 0x8f, 0x70, 0x31, 0xc5, 0x5b, 0xd5, 0xf9, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUnorderedGroup() mut => VT.BeginUnorderedGroup(ref this);
			public HRESULT EndUnorderedGroup(ref ISyncKnowledge pMadeWithKnowledge, BOOL fAllChangesForKnowledge) mut => VT.EndUnorderedGroup(ref this, ref pMadeWithKnowledge, fAllChangesForKnowledge);
			public HRESULT AddLoggedConflict(in uint8 pbOwnerReplicaId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ref ISyncKnowledge pConflictKnowledge, out ISyncChangeBuilder* ppChangeBuilder) mut => VT.AddLoggedConflict(ref this, pbOwnerReplicaId, pbItemId, pChangeVersion, pCreationVersion, dwFlags, dwWorkForChange, ref pConflictKnowledge, out ppChangeBuilder);

			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatch self) BeginUnorderedGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatch self, ref ISyncKnowledge pMadeWithKnowledge, BOOL fAllChangesForKnowledge) EndUnorderedGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatch self, in uint8 pbOwnerReplicaId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ref ISyncKnowledge pConflictKnowledge, out ISyncChangeBuilder* ppChangeBuilder) AddLoggedConflict;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0xef64197d, 0x4f44, 0x4ea2, 0xb3, 0x55, 0x45, 0x24, 0x71, 0x3e, 0x3b, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLearnedKnowledgeAfterRecoveryComplete(out ISyncKnowledge* ppLearnedKnowledgeAfterRecoveryComplete) mut => VT.GetLearnedKnowledgeAfterRecoveryComplete(ref this, out ppLearnedKnowledgeAfterRecoveryComplete);
			public HRESULT GetClosedLowerBoundItemId(out uint8 pbClosedLowerBoundItemId, out uint32 pcbIdSize) mut => VT.GetClosedLowerBoundItemId(ref this, out pbClosedLowerBoundItemId, out pcbIdSize);
			public HRESULT GetClosedUpperBoundItemId(out uint8 pbClosedUpperBoundItemId, out uint32 pcbIdSize) mut => VT.GetClosedUpperBoundItemId(ref this, out pbClosedUpperBoundItemId, out pcbIdSize);

			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChangeBatch self, out ISyncKnowledge* ppLearnedKnowledgeAfterRecoveryComplete) GetLearnedKnowledgeAfterRecoveryComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChangeBatch self, out uint8 pbClosedLowerBoundItemId, out uint32 pcbIdSize) GetClosedLowerBoundItemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChangeBatch self, out uint8 pbClosedUpperBoundItemId, out uint32 pcbIdSize) GetClosedUpperBoundItemId;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchWithPrerequisite : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x097f13be, 0x5b92, 0x4048, 0xb3, 0xf2, 0x7b, 0x42, 0xa2, 0x51, 0x5e, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPrerequisiteKnowledge(ref ISyncKnowledge pPrerequisiteKnowledge) mut => VT.SetPrerequisiteKnowledge(ref this, ref pPrerequisiteKnowledge);
			public HRESULT GetLearnedKnowledgeWithPrerequisite(ref ISyncKnowledge pDestinationKnowledge, out ISyncKnowledge* ppLearnedWithPrerequisiteKnowledge) mut => VT.GetLearnedKnowledgeWithPrerequisite(ref this, ref pDestinationKnowledge, out ppLearnedWithPrerequisiteKnowledge);
			public HRESULT GetLearnedForgottenKnowledge(out IForgottenKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetLearnedForgottenKnowledge(ref this, out ppLearnedForgottenKnowledge);

			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithPrerequisite self, ref ISyncKnowledge pPrerequisiteKnowledge) SetPrerequisiteKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithPrerequisite self, ref ISyncKnowledge pDestinationKnowledge, out ISyncKnowledge* ppLearnedWithPrerequisiteKnowledge) GetLearnedKnowledgeWithPrerequisite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithPrerequisite self, out IForgottenKnowledge* ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchBase2 : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x6fdb596a, 0xd755, 0x4584, 0xbd, 0x0c, 0xc0, 0xc2, 0x3a, 0x54, 0x8f, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SerializeWithOptions(SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, out uint8 pbBuffer, out uint32 pdwSerializedSize) mut => VT.SerializeWithOptions(ref this, targetFormatVersion, dwFlags, out pbBuffer, out pdwSerializedSize);

			[CRepr]
			public struct VTable : ISyncChangeBatchBase.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchBase2 self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, out uint8 pbBuffer, out uint32 pdwSerializedSize) SerializeWithOptions;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchAdvanced : IUnknown
		{
			public const new Guid IID = .(0x0f1a4995, 0xcbc8, 0x421d, 0xb5, 0x50, 0x5d, 0x0b, 0xeb, 0xf3, 0xe9, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterInfo(out ISyncFilterInfo* ppFilterInfo) mut => VT.GetFilterInfo(ref this, out ppFilterInfo);
			public HRESULT ConvertFullEnumerationChangeBatchToRegularChangeBatch(out ISyncChangeBatch* ppChangeBatch) mut => VT.ConvertFullEnumerationChangeBatchToRegularChangeBatch(ref this, out ppChangeBatch);
			public HRESULT GetUpperBoundItemId(out uint8 pbItemId, out uint32 pcbIdSize) mut => VT.GetUpperBoundItemId(ref this, out pbItemId, out pcbIdSize);
			public HRESULT GetBatchLevelKnowledgeShouldBeApplied(out BOOL pfBatchKnowledgeShouldBeApplied) mut => VT.GetBatchLevelKnowledgeShouldBeApplied(ref this, out pfBatchKnowledgeShouldBeApplied);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchAdvanced self, out ISyncFilterInfo* ppFilterInfo) GetFilterInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchAdvanced self, out ISyncChangeBatch* ppChangeBatch) ConvertFullEnumerationChangeBatchToRegularChangeBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchAdvanced self, out uint8 pbItemId, out uint32 pcbIdSize) GetUpperBoundItemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchAdvanced self, out BOOL pfBatchKnowledgeShouldBeApplied) GetBatchLevelKnowledgeShouldBeApplied;
			}
		}
		[CRepr]
		public struct ISyncChangeBatch2 : ISyncChangeBatch
		{
			public const new Guid IID = .(0x225f4a33, 0xf5ee, 0x4cc7, 0xb0, 0x39, 0x67, 0xa2, 0x62, 0xb4, 0xb2, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMergeTombstoneMetadataToGroup(in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) mut => VT.AddMergeTombstoneMetadataToGroup(ref this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, out ppChangeBuilder);
			public HRESULT AddMergeTombstoneLoggedConflict(in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, ref ISyncKnowledge pConflictKnowledge, out ISyncChangeBuilder* ppChangeBuilder) mut => VT.AddMergeTombstoneLoggedConflict(ref this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, ref pConflictKnowledge, out ppChangeBuilder);

			[CRepr]
			public struct VTable : ISyncChangeBatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatch2 self, in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatch2 self, in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, ref ISyncKnowledge pConflictKnowledge, out ISyncChangeBuilder* ppChangeBuilder) AddMergeTombstoneLoggedConflict;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch2 : ISyncFullEnumerationChangeBatch
		{
			public const new Guid IID = .(0xe06449f4, 0xa205, 0x4b65, 0x97, 0x24, 0x01, 0xb2, 0x21, 0x01, 0xee, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMergeTombstoneMetadataToGroup(in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) mut => VT.AddMergeTombstoneMetadataToGroup(ref this, pbOwnerReplicaId, pbWinnerItemId, pbItemId, pChangeVersion, pCreationVersion, dwWorkForChange, out ppChangeBuilder);

			[CRepr]
			public struct VTable : ISyncFullEnumerationChangeBatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChangeBatch2 self, in uint8 pbOwnerReplicaId, in uint8 pbWinnerItemId, in uint8 pbItemId, in SYNC_VERSION pChangeVersion, in SYNC_VERSION pCreationVersion, uint32 dwWorkForChange, out ISyncChangeBuilder* ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
			}
		}
		[CRepr]
		public struct IKnowledgeSyncProvider : ISyncProvider
		{
			public const new Guid IID = .(0x43434a49, 0x8da4, 0x47f2, 0x81, 0x72, 0xad, 0x7b, 0x8b, 0x02, 0x49, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginSession(SYNC_PROVIDER_ROLE role, ref ISyncSessionState pSessionState) mut => VT.BeginSession(ref this, role, ref pSessionState);
			public HRESULT GetSyncBatchParameters(out ISyncKnowledge* ppSyncKnowledge, out uint32 pdwRequestedBatchSize) mut => VT.GetSyncBatchParameters(ref this, out ppSyncKnowledge, out pdwRequestedBatchSize);
			public HRESULT GetChangeBatch(uint32 dwBatchSize, ref ISyncKnowledge pSyncKnowledge, out ISyncChangeBatch* ppSyncChangeBatch, out IUnknown* ppUnkDataRetriever) mut => VT.GetChangeBatch(ref this, dwBatchSize, ref pSyncKnowledge, out ppSyncChangeBatch, out ppUnkDataRetriever);
			public HRESULT GetFullEnumerationChangeBatch(uint32 dwBatchSize, in uint8 pbLowerEnumerationBound, ref ISyncKnowledge pSyncKnowledge, out ISyncFullEnumerationChangeBatch* ppSyncChangeBatch, out IUnknown* ppUnkDataRetriever) mut => VT.GetFullEnumerationChangeBatch(ref this, dwBatchSize, pbLowerEnumerationBound, ref pSyncKnowledge, out ppSyncChangeBatch, out ppUnkDataRetriever);
			public HRESULT ProcessChangeBatch(CONFLICT_RESOLUTION_POLICY resolutionPolicy, ref ISyncChangeBatch pSourceChangeBatch, ref IUnknown pUnkDataRetriever, ref ISyncCallback pCallback, out SYNC_SESSION_STATISTICS pSyncSessionStatistics) mut => VT.ProcessChangeBatch(ref this, resolutionPolicy, ref pSourceChangeBatch, ref pUnkDataRetriever, ref pCallback, out pSyncSessionStatistics);
			public HRESULT ProcessFullEnumerationChangeBatch(CONFLICT_RESOLUTION_POLICY resolutionPolicy, ref ISyncFullEnumerationChangeBatch pSourceChangeBatch, ref IUnknown pUnkDataRetriever, ref ISyncCallback pCallback, out SYNC_SESSION_STATISTICS pSyncSessionStatistics) mut => VT.ProcessFullEnumerationChangeBatch(ref this, resolutionPolicy, ref pSourceChangeBatch, ref pUnkDataRetriever, ref pCallback, out pSyncSessionStatistics);
			public HRESULT EndSession(ref ISyncSessionState pSessionState) mut => VT.EndSession(ref this, ref pSessionState);

			[CRepr]
			public struct VTable : ISyncProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, SYNC_PROVIDER_ROLE role, ref ISyncSessionState pSessionState) BeginSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, out ISyncKnowledge* ppSyncKnowledge, out uint32 pdwRequestedBatchSize) GetSyncBatchParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, uint32 dwBatchSize, ref ISyncKnowledge pSyncKnowledge, out ISyncChangeBatch* ppSyncChangeBatch, out IUnknown* ppUnkDataRetriever) GetChangeBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, uint32 dwBatchSize, in uint8 pbLowerEnumerationBound, ref ISyncKnowledge pSyncKnowledge, out ISyncFullEnumerationChangeBatch* ppSyncChangeBatch, out IUnknown* ppUnkDataRetriever) GetFullEnumerationChangeBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ref ISyncChangeBatch pSourceChangeBatch, ref IUnknown pUnkDataRetriever, ref ISyncCallback pCallback, out SYNC_SESSION_STATISTICS pSyncSessionStatistics) ProcessChangeBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ref ISyncFullEnumerationChangeBatch pSourceChangeBatch, ref IUnknown pUnkDataRetriever, ref ISyncCallback pCallback, out SYNC_SESSION_STATISTICS pSyncSessionStatistics) ProcessFullEnumerationChangeBatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnowledgeSyncProvider self, ref ISyncSessionState pSessionState) EndSession;
			}
		}
		[CRepr]
		public struct ISyncChangeUnit : IUnknown
		{
			public const new Guid IID = .(0x60edd8ca, 0x7341, 0x4bb7, 0x95, 0xce, 0xfa, 0xb6, 0x39, 0x4b, 0x51, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemChange(out ISyncChange* ppSyncChange) mut => VT.GetItemChange(ref this, out ppSyncChange);
			public HRESULT GetChangeUnitId(out uint8 pbChangeUnitId, out uint32 pcbIdSize) mut => VT.GetChangeUnitId(ref this, out pbChangeUnitId, out pcbIdSize);
			public HRESULT GetChangeUnitVersion(in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) mut => VT.GetChangeUnitVersion(ref this, pbCurrentReplicaId, out pVersion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeUnit self, out ISyncChange* ppSyncChange) GetItemChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeUnit self, out uint8 pbChangeUnitId, out uint32 pcbIdSize) GetChangeUnitId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeUnit self, in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) GetChangeUnitVersion;
			}
		}
		[CRepr]
		public struct IEnumSyncChangeUnits : IUnknown
		{
			public const new Guid IID = .(0x346b35f1, 0x8703, 0x4c6d, 0xab, 0x1a, 0x4d, 0xbc, 0xa2, 0xcf, 0xf9, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cChanges, out ISyncChangeUnit* ppChangeUnit, out uint32 pcFetched) mut => VT.Next(ref this, cChanges, out ppChangeUnit, out pcFetched);
			public HRESULT Skip(uint32 cChanges) mut => VT.Skip(ref this, cChanges);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSyncChangeUnits* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChangeUnits self, uint32 cChanges, out ISyncChangeUnit* ppChangeUnit, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChangeUnits self, uint32 cChanges) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChangeUnits self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncChangeUnits self, out IEnumSyncChangeUnits* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncChange : IUnknown
		{
			public const new Guid IID = .(0xa1952beb, 0x0f6b, 0x4711, 0xb1, 0x36, 0x01, 0xda, 0x85, 0xb9, 0x68, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerReplicaId(out uint8 pbReplicaId, out uint32 pcbIdSize) mut => VT.GetOwnerReplicaId(ref this, out pbReplicaId, out pcbIdSize);
			public HRESULT GetRootItemId(out uint8 pbRootItemId, out uint32 pcbIdSize) mut => VT.GetRootItemId(ref this, out pbRootItemId, out pcbIdSize);
			public HRESULT GetChangeVersion(in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) mut => VT.GetChangeVersion(ref this, pbCurrentReplicaId, out pVersion);
			public HRESULT GetCreationVersion(in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) mut => VT.GetCreationVersion(ref this, pbCurrentReplicaId, out pVersion);
			public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
			public HRESULT GetWorkEstimate(out uint32 pdwWork) mut => VT.GetWorkEstimate(ref this, out pdwWork);
			public HRESULT GetChangeUnits(out IEnumSyncChangeUnits* ppEnum) mut => VT.GetChangeUnits(ref this, out ppEnum);
			public HRESULT GetMadeWithKnowledge(out ISyncKnowledge* ppMadeWithKnowledge) mut => VT.GetMadeWithKnowledge(ref this, out ppMadeWithKnowledge);
			public HRESULT GetLearnedKnowledge(out ISyncKnowledge* ppLearnedKnowledge) mut => VT.GetLearnedKnowledge(ref this, out ppLearnedKnowledge);
			public HRESULT SetWorkEstimate(uint32 dwWork) mut => VT.SetWorkEstimate(ref this, dwWork);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out uint8 pbReplicaId, out uint32 pcbIdSize) GetOwnerReplicaId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out uint8 pbRootItemId, out uint32 pcbIdSize) GetRootItemId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) GetChangeVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, in uint8 pbCurrentReplicaId, out SYNC_VERSION pVersion) GetCreationVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out uint32 pdwFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out uint32 pdwWork) GetWorkEstimate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out IEnumSyncChangeUnits* ppEnum) GetChangeUnits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out ISyncKnowledge* ppMadeWithKnowledge) GetMadeWithKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, out ISyncKnowledge* ppLearnedKnowledge) GetLearnedKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChange self, uint32 dwWork) SetWorkEstimate;
			}
		}
		[CRepr]
		public struct ISyncChangeWithPrerequisite : IUnknown
		{
			public const new Guid IID = .(0x9e38382f, 0x1589, 0x48c3, 0x92, 0xe4, 0x05, 0xec, 0xdc, 0xb4, 0xf3, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrerequisiteKnowledge(out ISyncKnowledge* ppPrerequisiteKnowledge) mut => VT.GetPrerequisiteKnowledge(ref this, out ppPrerequisiteKnowledge);
			public HRESULT GetLearnedKnowledgeWithPrerequisite(ref ISyncKnowledge pDestinationKnowledge, out ISyncKnowledge* ppLearnedKnowledgeWithPrerequisite) mut => VT.GetLearnedKnowledgeWithPrerequisite(ref this, ref pDestinationKnowledge, out ppLearnedKnowledgeWithPrerequisite);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithPrerequisite self, out ISyncKnowledge* ppPrerequisiteKnowledge) GetPrerequisiteKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithPrerequisite self, ref ISyncKnowledge pDestinationKnowledge, out ISyncKnowledge* ppLearnedKnowledgeWithPrerequisite) GetLearnedKnowledgeWithPrerequisite;
			}
		}
		[CRepr]
		public struct ISyncFullEnumerationChange : IUnknown
		{
			public const new Guid IID = .(0x9785e0bd, 0xbdff, 0x40c4, 0x98, 0xc5, 0xb3, 0x4b, 0x2f, 0x19, 0x91, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLearnedKnowledgeAfterRecoveryComplete(out ISyncKnowledge* ppLearnedKnowledge) mut => VT.GetLearnedKnowledgeAfterRecoveryComplete(ref this, out ppLearnedKnowledge);
			public HRESULT GetLearnedForgottenKnowledge(out IForgottenKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetLearnedForgottenKnowledge(ref this, out ppLearnedForgottenKnowledge);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChange self, out ISyncKnowledge* ppLearnedKnowledge) GetLearnedKnowledgeAfterRecoveryComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncFullEnumerationChange self, out IForgottenKnowledge* ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
			}
		}
		[CRepr]
		public struct ISyncMergeTombstoneChange : IUnknown
		{
			public const new Guid IID = .(0x6ec62597, 0x0903, 0x484c, 0xad, 0x61, 0x36, 0xd6, 0xe9, 0x38, 0xf4, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWinnerItemId(out uint8 pbWinnerItemId, out uint32 pcbIdSize) mut => VT.GetWinnerItemId(ref this, out pbWinnerItemId, out pcbIdSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMergeTombstoneChange self, out uint8 pbWinnerItemId, out uint32 pcbIdSize) GetWinnerItemId;
			}
		}
		[CRepr]
		public struct IEnumItemIds : IUnknown
		{
			public const new Guid IID = .(0x43aa3f61, 0x4b2e, 0x4b60, 0x83, 0xdf, 0xb1, 0x10, 0xd3, 0xe1, 0x48, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(out uint8 pbItemId, out uint32 pcbItemIdSize) mut => VT.Next(ref this, out pbItemId, out pcbItemIdSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumItemIds self, out uint8 pbItemId, out uint32 pcbItemIdSize) Next;
			}
		}
		[CRepr]
		public struct IFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xca169652, 0x07c6, 0x4708, 0xa3, 0xda, 0x6e, 0x4e, 0xba, 0x8d, 0x22, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pdwCount) mut => VT.GetCount(ref this, out pdwCount);
			public HRESULT AddFilter(ref ISyncFilter pISyncFilter, out uint32 pdwFilterKey) mut => VT.AddFilter(ref this, ref pISyncFilter, out pdwFilterKey);
			public HRESULT GetFilter(uint32 dwFilterKey, out ISyncFilter* ppISyncFilter) mut => VT.GetFilter(ref this, dwFilterKey, out ppISyncFilter);
			public HRESULT Serialize(out uint8 pbFilterKeyMap, out uint32 pcbFilterKeyMap) mut => VT.Serialize(ref this, out pbFilterKeyMap, out pcbFilterKeyMap);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterKeyMap self, out uint32 pdwCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterKeyMap self, ref ISyncFilter pISyncFilter, out uint32 pdwFilterKey) AddFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterKeyMap self, uint32 dwFilterKey, out ISyncFilter* ppISyncFilter) GetFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterKeyMap self, out uint8 pbFilterKeyMap, out uint32 pcbFilterKeyMap) Serialize;
			}
		}
		[CRepr]
		public struct ISyncChangeWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xbfe1ef00, 0xe87d, 0x42fd, 0xa4, 0xe9, 0x24, 0x2d, 0x70, 0x41, 0x4a, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterCount(out uint32 pdwFilterCount) mut => VT.GetFilterCount(ref this, out pdwFilterCount);
			public HRESULT GetFilterChange(uint32 dwFilterKey, out SYNC_FILTER_CHANGE pFilterChange) mut => VT.GetFilterChange(ref this, dwFilterKey, out pFilterChange);
			public HRESULT GetAllChangeUnitsPresentFlag(out BOOL pfAllChangeUnitsPresent) mut => VT.GetAllChangeUnitsPresentFlag(ref this, out pfAllChangeUnitsPresent);
			public HRESULT GetFilterForgottenKnowledge(uint32 dwFilterKey, out ISyncKnowledge* ppIFilterForgottenKnowledge) mut => VT.GetFilterForgottenKnowledge(ref this, dwFilterKey, out ppIFilterForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedKnowledge) mut => VT.GetFilteredReplicaLearnedKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedKnowledge);
			public HRESULT GetLearnedFilterForgottenKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) mut => VT.GetLearnedFilterForgottenKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, dwFilterKey, out ppLearnedFilterForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetFilteredReplicaLearnedForgottenKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedForgottenKnowledge);
			public HRESULT GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) mut => VT.GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ref this, ref pDestinationKnowledge, ref pNewMoveins, dwFilterKey, out ppLearnedFilterForgottenKnowledge);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, out uint32 pdwFilterCount) GetFilterCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, uint32 dwFilterKey, out SYNC_FILTER_CHANGE pFilterChange) GetFilterChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, out BOOL pfAllChangeUnitsPresent) GetAllChangeUnitsPresentFlag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, uint32 dwFilterKey, out ISyncKnowledge* ppIFilterForgottenKnowledge) GetFilterForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedKnowledge) GetFilteredReplicaLearnedKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
			}
		}
		[CRepr]
		public struct ISyncChangeBatchWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xde247002, 0x566d, 0x459a, 0xa6, 0xed, 0xa5, 0xaa, 0xb3, 0x45, 0x9f, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFilterKeyMap(out IFilterKeyMap* ppIFilterKeyMap) mut => VT.GetFilterKeyMap(ref this, out ppIFilterKeyMap);
			public HRESULT SetFilterKeyMap(ref IFilterKeyMap pIFilterKeyMap) mut => VT.SetFilterKeyMap(ref this, ref pIFilterKeyMap);
			public HRESULT SetFilterForgottenKnowledge(uint32 dwFilterKey, ref ISyncKnowledge pFilterForgottenKnowledge) mut => VT.SetFilterForgottenKnowledge(ref this, dwFilterKey, ref pFilterForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetFilteredReplicaLearnedKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedForgottenKnowledge);
			public HRESULT GetLearnedFilterForgottenKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) mut => VT.GetLearnedFilterForgottenKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, dwFilterKey, out ppLearnedFilterForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledge(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetFilteredReplicaLearnedForgottenKnowledge(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedForgottenKnowledge);
			public HRESULT GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) mut => VT.GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(ref this, ref pDestinationKnowledge, ref pNewMoveins, out ppLearnedForgottenKnowledge);
			public HRESULT GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) mut => VT.GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(ref this, ref pDestinationKnowledge, ref pNewMoveins, dwFilterKey, out ppLearnedFilterForgottenKnowledge);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, out IFilterKeyMap* ppIFilterKeyMap) GetFilterKeyMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref IFilterKeyMap pIFilterKeyMap) SetFilterKeyMap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, uint32 dwFilterKey, ref ISyncKnowledge pFilterForgottenKnowledge) SetFilterForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, out ISyncKnowledge* ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncChangeBatchWithFilterKeyMap self, ref ISyncKnowledge pDestinationKnowledge, ref IEnumItemIds pNewMoveins, uint32 dwFilterKey, out ISyncKnowledge* ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
			}
		}
		[CRepr]
		public struct IDataRetrieverCallback : IUnknown
		{
			public const new Guid IID = .(0x71b4863b, 0xf969, 0x4676, 0xbb, 0xc3, 0x3d, 0x9f, 0xdc, 0x3f, 0xb2, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadChangeDataComplete(ref IUnknown pUnkData) mut => VT.LoadChangeDataComplete(ref this, ref pUnkData);
			public HRESULT LoadChangeDataError(HRESULT hrError) mut => VT.LoadChangeDataError(ref this, hrError);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataRetrieverCallback self, ref IUnknown pUnkData) LoadChangeDataComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataRetrieverCallback self, HRESULT hrError) LoadChangeDataError;
			}
		}
		[CRepr]
		public struct ILoadChangeContext : IUnknown
		{
			public const new Guid IID = .(0x44a4aaca, 0xec39, 0x46d5, 0xb5, 0xc9, 0xd6, 0x33, 0xc0, 0xee, 0x67, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncChange(out ISyncChange* ppSyncChange) mut => VT.GetSyncChange(ref this, out ppSyncChange);
			public HRESULT SetRecoverableErrorOnChange(HRESULT hrError, ref IRecoverableErrorData pErrorData) mut => VT.SetRecoverableErrorOnChange(ref this, hrError, ref pErrorData);
			public HRESULT SetRecoverableErrorOnChangeUnit(HRESULT hrError, ref ISyncChangeUnit pChangeUnit, ref IRecoverableErrorData pErrorData) mut => VT.SetRecoverableErrorOnChangeUnit(ref this, hrError, ref pChangeUnit, ref pErrorData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILoadChangeContext self, out ISyncChange* ppSyncChange) GetSyncChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILoadChangeContext self, HRESULT hrError, ref IRecoverableErrorData pErrorData) SetRecoverableErrorOnChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILoadChangeContext self, HRESULT hrError, ref ISyncChangeUnit pChangeUnit, ref IRecoverableErrorData pErrorData) SetRecoverableErrorOnChangeUnit;
			}
		}
		[CRepr]
		public struct ISynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9b22f2a9, 0xa4cd, 0x4648, 0x9d, 0x8e, 0x3a, 0x51, 0x0d, 0x4d, 0xa0, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(out ID_PARAMETERS pIdParameters) mut => VT.GetIdParameters(ref this, out pIdParameters);
			public HRESULT LoadChangeData(ref ILoadChangeContext pLoadChangeContext, out IUnknown* ppUnkData) mut => VT.LoadChangeData(ref this, ref pLoadChangeContext, out ppUnkData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronousDataRetriever self, out ID_PARAMETERS pIdParameters) GetIdParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronousDataRetriever self, ref ILoadChangeContext pLoadChangeContext, out IUnknown* ppUnkData) LoadChangeData;
			}
		}
		[CRepr]
		public struct IAsynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9fc7e470, 0x61ea, 0x4a88, 0x9b, 0xe4, 0xdf, 0x56, 0xa2, 0x7c, 0xfe, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdParameters(out ID_PARAMETERS pIdParameters) mut => VT.GetIdParameters(ref this, out pIdParameters);
			public HRESULT RegisterCallback(ref IDataRetrieverCallback pDataRetrieverCallback) mut => VT.RegisterCallback(ref this, ref pDataRetrieverCallback);
			public HRESULT RevokeCallback(ref IDataRetrieverCallback pDataRetrieverCallback) mut => VT.RevokeCallback(ref this, ref pDataRetrieverCallback);
			public HRESULT LoadChangeData(ref ILoadChangeContext pLoadChangeContext) mut => VT.LoadChangeData(ref this, ref pLoadChangeContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsynchronousDataRetriever self, out ID_PARAMETERS pIdParameters) GetIdParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsynchronousDataRetriever self, ref IDataRetrieverCallback pDataRetrieverCallback) RegisterCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsynchronousDataRetriever self, ref IDataRetrieverCallback pDataRetrieverCallback) RevokeCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsynchronousDataRetriever self, ref ILoadChangeContext pLoadChangeContext) LoadChangeData;
			}
		}
		[CRepr]
		public struct IFilterRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x82df8873, 0x6360, 0x463a, 0xa8, 0xa1, 0xed, 0xe5, 0xe1, 0xa1, 0x59, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestFilter(IUnknown* pFilter, FILTERING_TYPE filteringType) mut => VT.RequestFilter(ref this, pFilter, filteringType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterRequestCallback self, IUnknown* pFilter, FILTERING_TYPE filteringType) RequestFilter;
			}
		}
		[CRepr]
		public struct IRequestFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x2e020184, 0x6d18, 0x46a7, 0xa3, 0x2a, 0xda, 0x4a, 0xeb, 0x06, 0x69, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SpecifyFilter(IFilterRequestCallback* pCallback) mut => VT.SpecifyFilter(ref this, pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRequestFilteredSync self, IFilterRequestCallback* pCallback) SpecifyFilter;
			}
		}
		[CRepr]
		public struct ISupportFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x3d128ded, 0xd555, 0x4e0d, 0xbf, 0x4b, 0xfb, 0x21, 0x3a, 0x8a, 0x93, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddFilter(IUnknown* pFilter, FILTERING_TYPE filteringType) mut => VT.AddFilter(ref this, pFilter, filteringType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISupportFilteredSync self, IUnknown* pFilter, FILTERING_TYPE filteringType) AddFilter;
			}
		}
		[CRepr]
		public struct IFilterTrackingRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x713ca7bb, 0xc858, 0x4674, 0xb4, 0xb6, 0x11, 0x22, 0x43, 0x65, 0x87, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestTrackedFilter(ISyncFilter* pFilter) mut => VT.RequestTrackedFilter(ref this, pFilter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterTrackingRequestCallback self, ISyncFilter* pFilter) RequestTrackedFilter;
			}
		}
		[CRepr]
		public struct IFilterTrackingProvider : IUnknown
		{
			public const new Guid IID = .(0x743383c0, 0xfc4e, 0x45ba, 0xad, 0x81, 0xd9, 0xd8, 0x4c, 0x7a, 0x24, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SpecifyTrackedFilters(IFilterTrackingRequestCallback* pCallback) mut => VT.SpecifyTrackedFilters(ref this, pCallback);
			public HRESULT AddTrackedFilter(ISyncFilter* pFilter) mut => VT.AddTrackedFilter(ref this, pFilter);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterTrackingProvider self, IFilterTrackingRequestCallback* pCallback) SpecifyTrackedFilters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFilterTrackingProvider self, ISyncFilter* pFilter) AddTrackedFilter;
			}
		}
		[CRepr]
		public struct ISupportLastWriteTime : IUnknown
		{
			public const new Guid IID = .(0xeadf816f, 0xd0bd, 0x43ca, 0x8f, 0x40, 0x5a, 0xcd, 0xc6, 0xc0, 0x6f, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemChangeTime(in uint8 pbItemId, out uint64 pullTimestamp) mut => VT.GetItemChangeTime(ref this, pbItemId, out pullTimestamp);
			public HRESULT GetChangeUnitChangeTime(in uint8 pbItemId, in uint8 pbChangeUnitId, out uint64 pullTimestamp) mut => VT.GetChangeUnitChangeTime(ref this, pbItemId, pbChangeUnitId, out pullTimestamp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISupportLastWriteTime self, in uint8 pbItemId, out uint64 pullTimestamp) GetItemChangeTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISupportLastWriteTime self, in uint8 pbItemId, in uint8 pbChangeUnitId, out uint64 pullTimestamp) GetChangeUnitChangeTime;
			}
		}
		[CRepr]
		public struct IProviderConverter : IUnknown
		{
			public const new Guid IID = .(0x809b7276, 0x98cf, 0x4957, 0x93, 0xa5, 0x0e, 0xbd, 0xd3, 0xdd, 0xdf, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref ISyncProvider pISyncProvider) mut => VT.Initialize(ref this, ref pISyncProvider);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProviderConverter self, ref ISyncProvider pISyncProvider) Initialize;
			}
		}
		[CRepr]
		public struct ISyncDataConverter : IUnknown
		{
			public const new Guid IID = .(0x435d4861, 0x68d5, 0x44aa, 0xa0, 0xf9, 0x72, 0xa0, 0xb0, 0x0e, 0xf9, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConvertDataRetrieverFromProviderFormat(ref IUnknown pUnkDataRetrieverIn, ref IEnumSyncChanges pEnumSyncChanges, out IUnknown* ppUnkDataOut) mut => VT.ConvertDataRetrieverFromProviderFormat(ref this, ref pUnkDataRetrieverIn, ref pEnumSyncChanges, out ppUnkDataOut);
			public HRESULT ConvertDataRetrieverToProviderFormat(ref IUnknown pUnkDataRetrieverIn, ref IEnumSyncChanges pEnumSyncChanges, out IUnknown* ppUnkDataOut) mut => VT.ConvertDataRetrieverToProviderFormat(ref this, ref pUnkDataRetrieverIn, ref pEnumSyncChanges, out ppUnkDataOut);
			public HRESULT ConvertDataFromProviderFormat(ref ILoadChangeContext pDataContext, ref IUnknown pUnkDataIn, out IUnknown* ppUnkDataOut) mut => VT.ConvertDataFromProviderFormat(ref this, ref pDataContext, ref pUnkDataIn, out ppUnkDataOut);
			public HRESULT ConvertDataToProviderFormat(ref ILoadChangeContext pDataContext, ref IUnknown pUnkDataOut, out IUnknown* ppUnkDataout) mut => VT.ConvertDataToProviderFormat(ref this, ref pDataContext, ref pUnkDataOut, out ppUnkDataout);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncDataConverter self, ref IUnknown pUnkDataRetrieverIn, ref IEnumSyncChanges pEnumSyncChanges, out IUnknown* ppUnkDataOut) ConvertDataRetrieverFromProviderFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncDataConverter self, ref IUnknown pUnkDataRetrieverIn, ref IEnumSyncChanges pEnumSyncChanges, out IUnknown* ppUnkDataOut) ConvertDataRetrieverToProviderFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncDataConverter self, ref ILoadChangeContext pDataContext, ref IUnknown pUnkDataIn, out IUnknown* ppUnkDataOut) ConvertDataFromProviderFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncDataConverter self, ref ILoadChangeContext pDataContext, ref IUnknown pUnkDataOut, out IUnknown* ppUnkDataout) ConvertDataToProviderFormat;
			}
		}
		[CRepr]
		public struct ISyncProviderRegistration : IUnknown
		{
			public const new Guid IID = .(0xcb45953b, 0x7624, 0x47bc, 0xa4, 0x72, 0xeb, 0x8c, 0xac, 0x6b, 0x22, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSyncProviderConfigUIRegistrationInstance(in SyncProviderConfigUIConfiguration pConfigUIConfig, ISyncProviderConfigUIInfo** ppConfigUIInfo) mut => VT.CreateSyncProviderConfigUIRegistrationInstance(ref this, pConfigUIConfig, ppConfigUIInfo);
			public HRESULT UnregisterSyncProviderConfigUI(in Guid pguidInstanceId) mut => VT.UnregisterSyncProviderConfigUI(ref this, pguidInstanceId);
			public HRESULT EnumerateSyncProviderConfigUIs(Guid* pguidContentType, uint32 dwSupportedArchitecture, IEnumSyncProviderConfigUIInfos** ppEnumSyncProviderConfigUIInfos) mut => VT.EnumerateSyncProviderConfigUIs(ref this, pguidContentType, dwSupportedArchitecture, ppEnumSyncProviderConfigUIInfos);
			public HRESULT CreateSyncProviderRegistrationInstance(in SyncProviderConfiguration pProviderConfiguration, ISyncProviderInfo** ppProviderInfo) mut => VT.CreateSyncProviderRegistrationInstance(ref this, pProviderConfiguration, ppProviderInfo);
			public HRESULT UnregisterSyncProvider(in Guid pguidInstanceId) mut => VT.UnregisterSyncProvider(ref this, pguidInstanceId);
			public HRESULT GetSyncProviderConfigUIInfoforProvider(in Guid pguidProviderInstanceId, ISyncProviderConfigUIInfo** ppProviderConfigUIInfo) mut => VT.GetSyncProviderConfigUIInfoforProvider(ref this, pguidProviderInstanceId, ppProviderConfigUIInfo);
			public HRESULT EnumerateSyncProviders(Guid* pguidContentType, uint32 dwStateFlagsToFilterMask, uint32 dwStateFlagsToFilter, in Guid refProviderClsId, uint32 dwSupportedArchitecture, IEnumSyncProviderInfos** ppEnumSyncProviderInfos) mut => VT.EnumerateSyncProviders(ref this, pguidContentType, dwStateFlagsToFilterMask, dwStateFlagsToFilter, refProviderClsId, dwSupportedArchitecture, ppEnumSyncProviderInfos);
			public HRESULT GetSyncProviderInfo(in Guid pguidInstanceId, ISyncProviderInfo** ppProviderInfo) mut => VT.GetSyncProviderInfo(ref this, pguidInstanceId, ppProviderInfo);
			public HRESULT GetSyncProviderFromInstanceId(in Guid pguidInstanceId, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) mut => VT.GetSyncProviderFromInstanceId(ref this, pguidInstanceId, dwClsContext, ppSyncProvider);
			public HRESULT GetSyncProviderConfigUIInfo(in Guid pguidInstanceId, ISyncProviderConfigUIInfo** ppConfigUIInfo) mut => VT.GetSyncProviderConfigUIInfo(ref this, pguidInstanceId, ppConfigUIInfo);
			public HRESULT GetSyncProviderConfigUIFromInstanceId(in Guid pguidInstanceId, uint32 dwClsContext, ISyncProviderConfigUI** ppConfigUI) mut => VT.GetSyncProviderConfigUIFromInstanceId(ref this, pguidInstanceId, dwClsContext, ppConfigUI);
			public HRESULT GetSyncProviderState(in Guid pguidInstanceId, out uint32 pdwStateFlags) mut => VT.GetSyncProviderState(ref this, pguidInstanceId, out pdwStateFlags);
			public HRESULT SetSyncProviderState(in Guid pguidInstanceId, uint32 dwStateFlagsMask, uint32 dwStateFlags) mut => VT.SetSyncProviderState(ref this, pguidInstanceId, dwStateFlagsMask, dwStateFlags);
			public HRESULT RegisterForEvent(out HANDLE phEvent) mut => VT.RegisterForEvent(ref this, out phEvent);
			public HRESULT RevokeEvent(HANDLE hEvent) mut => VT.RevokeEvent(ref this, hEvent);
			public HRESULT GetChange(HANDLE hEvent, out ISyncRegistrationChange* ppChange) mut => VT.GetChange(ref this, hEvent, out ppChange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in SyncProviderConfigUIConfiguration pConfigUIConfig, ISyncProviderConfigUIInfo** ppConfigUIInfo) CreateSyncProviderConfigUIRegistrationInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId) UnregisterSyncProviderConfigUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, Guid* pguidContentType, uint32 dwSupportedArchitecture, IEnumSyncProviderConfigUIInfos** ppEnumSyncProviderConfigUIInfos) EnumerateSyncProviderConfigUIs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in SyncProviderConfiguration pProviderConfiguration, ISyncProviderInfo** ppProviderInfo) CreateSyncProviderRegistrationInstance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId) UnregisterSyncProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidProviderInstanceId, ISyncProviderConfigUIInfo** ppProviderConfigUIInfo) GetSyncProviderConfigUIInfoforProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, Guid* pguidContentType, uint32 dwStateFlagsToFilterMask, uint32 dwStateFlagsToFilter, in Guid refProviderClsId, uint32 dwSupportedArchitecture, IEnumSyncProviderInfos** ppEnumSyncProviderInfos) EnumerateSyncProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, ISyncProviderInfo** ppProviderInfo) GetSyncProviderInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProviderFromInstanceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, ISyncProviderConfigUIInfo** ppConfigUIInfo) GetSyncProviderConfigUIInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, uint32 dwClsContext, ISyncProviderConfigUI** ppConfigUI) GetSyncProviderConfigUIFromInstanceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, out uint32 pdwStateFlags) GetSyncProviderState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, in Guid pguidInstanceId, uint32 dwStateFlagsMask, uint32 dwStateFlags) SetSyncProviderState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, out HANDLE phEvent) RegisterForEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, HANDLE hEvent) RevokeEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderRegistration self, HANDLE hEvent, out ISyncRegistrationChange* ppChange) GetChange;
			}
		}
		[CRepr]
		public struct IEnumSyncProviderConfigUIInfos : IUnknown
		{
			public const new Guid IID = .(0xf6be2602, 0x17c6, 0x4658, 0xa2, 0xd7, 0x68, 0xed, 0x33, 0x30, 0xf6, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFactories, ISyncProviderConfigUIInfo** ppSyncProviderConfigUIInfo, out uint32 pcFetched) mut => VT.Next(ref this, cFactories, ppSyncProviderConfigUIInfo, out pcFetched);
			public HRESULT Skip(uint32 cFactories) mut => VT.Skip(ref this, cFactories);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumSyncProviderConfigUIInfos** ppEnum) mut => VT.Clone(ref this, ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderConfigUIInfos self, uint32 cFactories, ISyncProviderConfigUIInfo** ppSyncProviderConfigUIInfo, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderConfigUIInfos self, uint32 cFactories) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderConfigUIInfos self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderConfigUIInfos self, IEnumSyncProviderConfigUIInfos** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSyncProviderInfos : IUnknown
		{
			public const new Guid IID = .(0xa04ba850, 0x5eb1, 0x460d, 0xa9, 0x73, 0x39, 0x3f, 0xcb, 0x60, 0x8a, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cInstances, ISyncProviderInfo** ppSyncProviderInfo, out uint32 pcFetched) mut => VT.Next(ref this, cInstances, ppSyncProviderInfo, out pcFetched);
			public HRESULT Skip(uint32 cInstances) mut => VT.Skip(ref this, cInstances);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumSyncProviderInfos** ppEnum) mut => VT.Clone(ref this, ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderInfos self, uint32 cInstances, ISyncProviderInfo** ppSyncProviderInfo, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderInfos self, uint32 cInstances) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderInfos self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncProviderInfos self, IEnumSyncProviderInfos** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ISyncProviderInfo : IPropertyStore
		{
			public const new Guid IID = .(0x1ee135de, 0x88a4, 0x4504, 0xb0, 0xd0, 0xf7, 0x92, 0x0d, 0x7e, 0x5b, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProvider(uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) mut => VT.GetSyncProvider(ref this, dwClsContext, ppSyncProvider);

			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderInfo self, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProvider;
			}
		}
		[CRepr]
		public struct ISyncProviderConfigUIInfo : IPropertyStore
		{
			public const new Guid IID = .(0x214141ae, 0x33d7, 0x4d8d, 0x8e, 0x37, 0xf2, 0x27, 0xe8, 0x80, 0xce, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncProviderConfigUI(uint32 dwClsContext, ISyncProviderConfigUI** ppSyncProviderConfigUI) mut => VT.GetSyncProviderConfigUI(ref this, dwClsContext, ppSyncProviderConfigUI);

			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderConfigUIInfo self, uint32 dwClsContext, ISyncProviderConfigUI** ppSyncProviderConfigUI) GetSyncProviderConfigUI;
			}
		}
		[CRepr]
		public struct ISyncProviderConfigUI : IUnknown
		{
			public const new Guid IID = .(0x7b0705f6, 0xcbcd, 0x4071, 0xab, 0x05, 0x3b, 0xdc, 0x36, 0x4d, 0x4a, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(in Guid pguidInstanceId, in Guid pguidContentType, IPropertyStore* pConfigurationProperties) mut => VT.Init(ref this, pguidInstanceId, pguidContentType, pConfigurationProperties);
			public HRESULT GetRegisteredProperties(IPropertyStore** ppConfigUIProperties) mut => VT.GetRegisteredProperties(ref this, ppConfigUIProperties);
			public HRESULT CreateAndRegisterNewSyncProvider(HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo** ppProviderInfo) mut => VT.CreateAndRegisterNewSyncProvider(ref this, hwndParent, pUnkContext, ppProviderInfo);
			public HRESULT ModifySyncProvider(HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo* pProviderInfo) mut => VT.ModifySyncProvider(ref this, hwndParent, pUnkContext, pProviderInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderConfigUI self, in Guid pguidInstanceId, in Guid pguidContentType, IPropertyStore* pConfigurationProperties) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderConfigUI self, IPropertyStore** ppConfigUIProperties) GetRegisteredProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderConfigUI self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo** ppProviderInfo) CreateAndRegisterNewSyncProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncProviderConfigUI self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo* pProviderInfo) ModifySyncProvider;
			}
		}
		[CRepr]
		public struct IRegisteredSyncProvider : IUnknown
		{
			public const new Guid IID = .(0x913bcf76, 0x47c1, 0x40b5, 0xa8, 0x96, 0x5e, 0x8a, 0x9c, 0x41, 0x4c, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(in Guid pguidInstanceId, in Guid pguidContentType, IPropertyStore* pContextPropertyStore) mut => VT.Init(ref this, pguidInstanceId, pguidContentType, pContextPropertyStore);
			public HRESULT GetInstanceId(out Guid pguidInstanceId) mut => VT.GetInstanceId(ref this, out pguidInstanceId);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredSyncProvider self, in Guid pguidInstanceId, in Guid pguidContentType, IPropertyStore* pContextPropertyStore) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredSyncProvider self, out Guid pguidInstanceId) GetInstanceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegisteredSyncProvider self) Reset;
			}
		}
		[CRepr]
		public struct ISyncRegistrationChange : IUnknown
		{
			public const new Guid IID = .(0xeea0d9ae, 0x6b29, 0x43b4, 0x9e, 0x70, 0xe3, 0xae, 0x33, 0xbb, 0x2c, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEvent(out SYNC_REGISTRATION_EVENT psreEvent) mut => VT.GetEvent(ref this, out psreEvent);
			public HRESULT GetInstanceId(out Guid pguidInstanceId) mut => VT.GetInstanceId(ref this, out pguidInstanceId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncRegistrationChange self, out SYNC_REGISTRATION_EVENT psreEvent) GetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncRegistrationChange self, out Guid pguidInstanceId) GetInstanceId;
			}
		}
		
	}
}
