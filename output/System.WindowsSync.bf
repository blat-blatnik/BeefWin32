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
			SPR_SOURCE = 0,
			SPR_DESTINATION = 1,
		}
		[AllowDuplicates]
		public enum CONFLICT_RESOLUTION_POLICY : int32
		{
			CRP_NONE = 0,
			CRP_DESTINATION_PROVIDER_WINS = 1,
			CRP_SOURCE_PROVIDER_WINS = 2,
			CRP_LAST = 3,
		}
		[AllowDuplicates]
		public enum SYNC_PROGRESS_STAGE : int32
		{
			SPS_CHANGE_DETECTION = 0,
			SPS_CHANGE_ENUMERATION = 1,
			SPS_CHANGE_APPLICATION = 2,
		}
		[AllowDuplicates]
		public enum SYNC_FULL_ENUMERATION_ACTION : int32
		{
			SFEA_FULL_ENUMERATION = 0,
			SFEA_PARTIAL_SYNC = 1,
			SFEA_ABORT = 2,
		}
		[AllowDuplicates]
		public enum SYNC_RESOLVE_ACTION : int32
		{
			SRA_DEFER = 0,
			SRA_ACCEPT_DESTINATION_PROVIDER = 1,
			SRA_ACCEPT_SOURCE_PROVIDER = 2,
			SRA_MERGE = 3,
			SRA_TRANSFER_AND_DEFER = 4,
			SRA_LAST = 5,
		}
		[AllowDuplicates]
		public enum SYNC_STATISTICS : int32
		{
			SYNC_STATISTICS_RANGE_COUNT = 0,
		}
		[AllowDuplicates]
		public enum SYNC_SERIALIZATION_VERSION : int32
		{
			SYNC_SERIALIZATION_VERSION_V1 = 1,
			SYNC_SERIALIZATION_VERSION_V2 = 4,
			SYNC_SERIALIZATION_VERSION_V3 = 5,
		}
		[AllowDuplicates]
		public enum FILTERING_TYPE : int32
		{
			FT_CURRENT_ITEMS_ONLY = 0,
			FT_CURRENT_ITEMS_AND_VERSIONS_FOR_MOVED_OUT_ITEMS = 1,
		}
		[AllowDuplicates]
		public enum SYNC_CONSTRAINT_RESOLVE_ACTION : int32
		{
			SCRA_DEFER = 0,
			SCRA_ACCEPT_DESTINATION_PROVIDER = 1,
			SCRA_ACCEPT_SOURCE_PROVIDER = 2,
			SCRA_TRANSFER_AND_DEFER = 3,
			SCRA_MERGE = 4,
			SCRA_RENAME_SOURCE = 5,
			SCRA_RENAME_DESTINATION = 6,
		}
		[AllowDuplicates]
		public enum CONSTRAINT_CONFLICT_REASON : int32
		{
			CCR_OTHER = 0,
			CCR_COLLISION = 1,
			CCR_NOPARENT = 2,
			CCR_IDENTITY = 3,
		}
		[AllowDuplicates]
		public enum KNOWLEDGE_COOKIE_COMPARISON_RESULT : int32
		{
			KCCR_COOKIE_KNOWLEDGE_EQUAL = 0,
			KCCR_COOKIE_KNOWLEDGE_CONTAINED = 1,
			KCCR_COOKIE_KNOWLEDGE_CONTAINS = 2,
			KCCR_COOKIE_KNOWLEDGE_NOT_COMPARABLE = 3,
		}
		[AllowDuplicates]
		public enum FILTER_COMBINATION_TYPE : int32
		{
			FCT_INTERSECTION = 0,
		}
		[AllowDuplicates]
		public enum SYNC_REGISTRATION_EVENT : int32
		{
			SRE_PROVIDER_ADDED = 0,
			SRE_PROVIDER_REMOVED = 1,
			SRE_PROVIDER_UPDATED = 2,
			SRE_PROVIDER_STATE_CHANGED = 3,
			SRE_CONFIGUI_ADDED = 4,
			SRE_CONFIGUI_REMOVED = 5,
			SRE_CONFIGUI_UPDATED = 6,
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
			
			public function HRESULT(IClockVectorElement *self, uint32* pdwReplicaKey) GetReplicaKey;
			public function HRESULT(IClockVectorElement *self, uint64* pullTickCount) GetTickCount;
		}
		[CRepr]
		public struct IFeedClockVectorElement : IClockVectorElement
		{
			public const new Guid IID = .(0xa40b46d2, 0xe97b, 0x4156, 0xb6, 0xda, 0x99, 0x1f, 0x50, 0x1b, 0x0f, 0x05);
			
			public function HRESULT(IFeedClockVectorElement *self, SYNC_TIME* pSyncTime) GetSyncTime;
			public function HRESULT(IFeedClockVectorElement *self, uint8* pbFlags) GetFlags;
		}
		[CRepr]
		public struct IClockVector : IUnknown
		{
			public const new Guid IID = .(0x14b2274a, 0x8698, 0x4cc6, 0x93, 0x33, 0xf8, 0x9b, 0xd1, 0xd4, 0x7b, 0xc4);
			
			public function HRESULT(IClockVector *self, Guid* riid, void** ppiEnumClockVector) GetClockVectorElements;
			public function HRESULT(IClockVector *self, uint32* pdwCount) GetClockVectorElementCount;
		}
		[CRepr]
		public struct IFeedClockVector : IClockVector
		{
			public const new Guid IID = .(0x8d1d98d1, 0x9fb8, 0x4ec9, 0xa5, 0x53, 0x54, 0xdd, 0x92, 0x4e, 0x0f, 0x67);
			
			public function HRESULT(IFeedClockVector *self, uint32* pdwUpdateCount) GetUpdateCount;
			public function HRESULT(IFeedClockVector *self, BOOL* pfIsNoConflictsSpecified) IsNoConflictsSpecified;
		}
		[CRepr]
		public struct IEnumClockVector : IUnknown
		{
			public const new Guid IID = .(0x525844db, 0x2837, 0x4799, 0x9e, 0x80, 0x81, 0xa6, 0x6e, 0x02, 0x22, 0x0c);
			
			public function HRESULT(IEnumClockVector *self, uint32 cClockVectorElements, IClockVectorElement** ppiClockVectorElements, uint32* pcFetched) Next;
			public function HRESULT(IEnumClockVector *self, uint32 cSyncVersions) Skip;
			public function HRESULT(IEnumClockVector *self) Reset;
			public function HRESULT(IEnumClockVector *self, IEnumClockVector** ppiEnum) Clone;
		}
		[CRepr]
		public struct IEnumFeedClockVector : IUnknown
		{
			public const new Guid IID = .(0x550f763d, 0x146a, 0x48f6, 0xab, 0xeb, 0x6c, 0x88, 0xc7, 0xf7, 0x05, 0x14);
			
			public function HRESULT(IEnumFeedClockVector *self, uint32 cClockVectorElements, IFeedClockVectorElement** ppiClockVectorElements, uint32* pcFetched) Next;
			public function HRESULT(IEnumFeedClockVector *self, uint32 cSyncVersions) Skip;
			public function HRESULT(IEnumFeedClockVector *self) Reset;
			public function HRESULT(IEnumFeedClockVector *self, IEnumFeedClockVector** ppiEnum) Clone;
		}
		[CRepr]
		public struct ICoreFragment : IUnknown
		{
			public const new Guid IID = .(0x613b2ab5, 0xb304, 0x47d9, 0x9c, 0x31, 0xce, 0x6c, 0x54, 0x40, 0x1a, 0x15);
			
			public function HRESULT(ICoreFragment *self, uint8* pChangeUnitId, uint32* pChangeUnitIdSize) NextColumn;
			public function HRESULT(ICoreFragment *self, uint8* pItemId, uint32* pItemIdSize, IClockVector** piClockVector) NextRange;
			public function HRESULT(ICoreFragment *self) Reset;
			public function HRESULT(ICoreFragment *self, uint32* pColumnCount) GetColumnCount;
			public function HRESULT(ICoreFragment *self, uint32* pRangeCount) GetRangeCount;
		}
		[CRepr]
		public struct ICoreFragmentInspector : IUnknown
		{
			public const new Guid IID = .(0xf7fcc5fd, 0xae26, 0x4679, 0xba, 0x16, 0x96, 0xaa, 0xc5, 0x83, 0xc1, 0x34);
			
			public function HRESULT(ICoreFragmentInspector *self, uint32 requestedCount, ICoreFragment** ppiCoreFragments, uint32* pFetchedCount) NextCoreFragments;
			public function HRESULT(ICoreFragmentInspector *self) Reset;
		}
		[CRepr]
		public struct IRangeExceptionAlt : IUnknown
		{
			public const new Guid IID = .(0x75ae8777, 0x6848, 0x49f7, 0x95, 0x6c, 0xa3, 0xa9, 0x2f, 0x50, 0x96, 0xe8);
			
			public function HRESULT(IRangeExceptionAlt *self, uint8* pbClosedRangeStart, uint32* pcbIdSize) GetClosedRangeStart;
			public function HRESULT(IRangeExceptionAlt *self, uint8* pbClosedRangeEnd, uint32* pcbIdSize) GetClosedRangeEnd;
			public function HRESULT(IRangeExceptionAlt *self, Guid* riid, void** ppUnk) GetClockVector;
		}
		[CRepr]
		public struct IEnumRangeExceptions : IUnknown
		{
			public const new Guid IID = .(0x0944439f, 0xddb1, 0x4176, 0xb7, 0x03, 0x04, 0x6f, 0xf2, 0x2a, 0x23, 0x86);
			
			public function HRESULT(IEnumRangeExceptions *self, uint32 cExceptions, IRangeExceptionAlt** ppRangeException, uint32* pcFetched) Next;
			public function HRESULT(IEnumRangeExceptions *self, uint32 cExceptions) Skip;
			public function HRESULT(IEnumRangeExceptions *self) Reset;
			public function HRESULT(IEnumRangeExceptions *self, IEnumRangeExceptions** ppEnum) Clone;
		}
		[CRepr]
		public struct ISingleItemException : IUnknown
		{
			public const new Guid IID = .(0x892fb9b0, 0x7c55, 0x4a18, 0x93, 0x16, 0xfd, 0xf4, 0x49, 0x56, 0x9b, 0x64);
			
			public function HRESULT(ISingleItemException *self, uint8* pbItemId, uint32* pcbIdSize) GetItemId;
			public function HRESULT(ISingleItemException *self, Guid* riid, void** ppUnk) GetClockVector;
		}
		[CRepr]
		public struct IEnumSingleItemExceptions : IUnknown
		{
			public const new Guid IID = .(0xe563381c, 0x1b4d, 0x4c66, 0x97, 0x96, 0xc8, 0x6f, 0xac, 0xcd, 0xcd, 0x40);
			
			public function HRESULT(IEnumSingleItemExceptions *self, uint32 cExceptions, ISingleItemException** ppSingleItemException, uint32* pcFetched) Next;
			public function HRESULT(IEnumSingleItemExceptions *self, uint32 cExceptions) Skip;
			public function HRESULT(IEnumSingleItemExceptions *self) Reset;
			public function HRESULT(IEnumSingleItemExceptions *self, IEnumSingleItemExceptions** ppEnum) Clone;
		}
		[CRepr]
		public struct IChangeUnitException : IUnknown
		{
			public const new Guid IID = .(0x0cd7ee7c, 0xfec0, 0x4021, 0x99, 0xee, 0xf0, 0xe5, 0x34, 0x8f, 0x2a, 0x5f);
			
			public function HRESULT(IChangeUnitException *self, uint8* pbItemId, uint32* pcbIdSize) GetItemId;
			public function HRESULT(IChangeUnitException *self, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
			public function HRESULT(IChangeUnitException *self, Guid* riid, void** ppUnk) GetClockVector;
		}
		[CRepr]
		public struct IEnumChangeUnitExceptions : IUnknown
		{
			public const new Guid IID = .(0x3074e802, 0x9319, 0x4420, 0xbe, 0x21, 0x10, 0x22, 0xe2, 0xe2, 0x1d, 0xa8);
			
			public function HRESULT(IEnumChangeUnitExceptions *self, uint32 cExceptions, IChangeUnitException** ppChangeUnitException, uint32* pcFetched) Next;
			public function HRESULT(IEnumChangeUnitExceptions *self, uint32 cExceptions) Skip;
			public function HRESULT(IEnumChangeUnitExceptions *self) Reset;
			public function HRESULT(IEnumChangeUnitExceptions *self, IEnumChangeUnitExceptions** ppEnum) Clone;
		}
		[CRepr]
		public struct IReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0x2209f4fc, 0xfd10, 0x4ff0, 0x84, 0xa8, 0xf0, 0xa1, 0x98, 0x2e, 0x44, 0x0e);
			
			public function HRESULT(IReplicaKeyMap *self, uint8* pbReplicaId, uint32* pdwReplicaKey) LookupReplicaKey;
			public function HRESULT(IReplicaKeyMap *self, uint32 dwReplicaKey, uint8* pbReplicaId, uint32* pcbIdSize) LookupReplicaId;
			public function HRESULT(IReplicaKeyMap *self, uint8* pbReplicaKeyMap, uint32* pcbReplicaKeyMap) Serialize;
		}
		[CRepr]
		public struct IConstructReplicaKeyMap : IUnknown
		{
			public const new Guid IID = .(0xded10970, 0xec85, 0x4115, 0xb5, 0x2c, 0x44, 0x05, 0x84, 0x56, 0x42, 0xa5);
			
			public function HRESULT(IConstructReplicaKeyMap *self, uint8* pbReplicaId, uint32* pdwReplicaKey) FindOrAddReplica;
		}
		[CRepr]
		public struct ISyncKnowledge : IUnknown
		{
			public const new Guid IID = .(0x615bbb53, 0xc945, 0x4203, 0xbf, 0x4b, 0x2c, 0xb6, 0x59, 0x19, 0xa0, 0xaa);
			
			public function HRESULT(ISyncKnowledge *self, uint8* pbReplicaId, uint32* pcbIdSize) GetOwnerReplicaId;
			public function HRESULT(ISyncKnowledge *self, BOOL fSerializeReplicaKeyMap, uint8* pbKnowledge, uint32* pcbKnowledge) Serialize;
			public function HRESULT(ISyncKnowledge *self, uint64 ullTickCount) SetLocalTickCount;
			public function HRESULT(ISyncKnowledge *self, uint8* pbVersionOwnerReplicaId, uint8* pgidItemId, SYNC_VERSION* pSyncVersion) ContainsChange;
			public function HRESULT(ISyncKnowledge *self, uint8* pbVersionOwnerReplicaId, uint8* pbItemId, uint8* pbChangeUnitId, SYNC_VERSION* pSyncVersion) ContainsChangeUnit;
			public function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetScopeVector;
			public function HRESULT(ISyncKnowledge *self, IReplicaKeyMap** ppReplicaKeyMap) GetReplicaKeyMap;
			public function HRESULT(ISyncKnowledge *self, ISyncKnowledge** ppClonedKnowledge) Clone;
			public function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledgeIn, uint8* pbCurrentOwnerId, SYNC_VERSION* pVersionIn, uint8* pbNewOwnerId, uint32* pcbIdSize, SYNC_VERSION* pVersionOut) ConvertVersion;
			public function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pRemoteKnowledge, ISyncKnowledge** ppMappedKnowledge) MapRemoteToLocal;
			public function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledge) Union;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId, ISyncKnowledge** ppKnowledgeOut) ProjectOntoItem;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId, ISyncKnowledge** ppKnowledgeOut) ProjectOntoChangeUnit;
			public function HRESULT(ISyncKnowledge *self, SYNC_RANGE* psrngSyncRange, ISyncKnowledge** ppKnowledgeOut) ProjectOntoRange;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId) ExcludeItem;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId) ExcludeChangeUnit;
			public function HRESULT(ISyncKnowledge *self, ISyncKnowledge* pKnowledge) ContainsKnowledge;
			public function HRESULT(ISyncKnowledge *self, uint8* pbReplicaId, uint64* pullReplicaTickCount) FindMinTickCountForReplica;
			public function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetRangeExceptions;
			public function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetSingleItemExceptions;
			public function HRESULT(ISyncKnowledge *self, Guid* riid, void** ppUnk) GetChangeUnitExceptions;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId, Guid* riid, void** ppUnk) FindClockVectorForItem;
			public function HRESULT(ISyncKnowledge *self, uint8* pbItemId, uint8* pbChangeUnitId, Guid* riid, void** ppUnk) FindClockVectorForChangeUnit;
			public function HRESULT(ISyncKnowledge *self, uint32* pdwVersion) GetVersion;
		}
		[CRepr]
		public struct IForgottenKnowledge : ISyncKnowledge
		{
			public const new Guid IID = .(0x456e0f96, 0x6036, 0x452b, 0x9f, 0x9d, 0xbc, 0xc4, 0xb4, 0xa8, 0x5d, 0xb2);
			
			public function HRESULT(IForgottenKnowledge *self, ISyncKnowledge* pKnowledge, SYNC_VERSION* pVersion) ForgetToVersion;
		}
		[CRepr]
		public struct ISyncKnowledge2 : ISyncKnowledge
		{
			public const new Guid IID = .(0xed0addc0, 0x3b4b, 0x46a1, 0x9a, 0x45, 0x45, 0x66, 0x1d, 0x21, 0x14, 0xc8);
			
			public function HRESULT(ISyncKnowledge2 *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
			public function HRESULT(ISyncKnowledge2 *self, uint8** ppColumns, uint32 count, ISyncKnowledge2** ppiKnowledgeOut) ProjectOntoColumnSet;
			public function HRESULT(ISyncKnowledge2 *self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) SerializeWithOptions;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge2* piSyncKnowledge, uint8* pbItemId, uint32* pcbItemIdSize) GetLowestUncontainedId;
			public function HRESULT(ISyncKnowledge2 *self, Guid* riid, void** ppiInspector) GetInspector;
			public function HRESULT(ISyncKnowledge2 *self, SYNC_SERIALIZATION_VERSION* pVersion) GetMinimumSupportedVersion;
			public function HRESULT(ISyncKnowledge2 *self, SYNC_STATISTICS which, uint32* pValue) GetStatistics;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pKnowledge, uint8* pbItemId) ContainsKnowledgeForItem;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pKnowledge, uint8* pbItemId, uint8* pbChangeUnitId) ContainsKnowledgeForChangeUnit;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pPrerequisiteKnowledge, ISyncKnowledge* pTemplateKnowledge, ISyncKnowledge** ppProjectedKnowledge) ProjectOntoKnowledgeWithPrerequisite;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pSyncKnowledge, ISyncKnowledge** ppComplementedKnowledge) Complement;
			public function HRESULT(ISyncKnowledge2 *self, ISyncKnowledge* pSyncKnowledge) IntersectsWithKnowledge;
			public function HRESULT(ISyncKnowledge2 *self, IUnknown** ppKnowledgeCookie) GetKnowledgeCookie;
			public function HRESULT(ISyncKnowledge2 *self, IUnknown* pKnowledgeCookie, KNOWLEDGE_COOKIE_COMPARISON_RESULT* pResult) CompareToKnowledgeCookie;
		}
		[CRepr]
		public struct IRecoverableErrorData : IUnknown
		{
			public const new Guid IID = .(0xb37c4a0a, 0x4b7d, 0x4c2d, 0x97, 0x11, 0x3b, 0x00, 0xd1, 0x19, 0xb1, 0xc8);
			
			public function HRESULT(IRecoverableErrorData *self, PWSTR pcszItemDisplayName, PWSTR pcszErrorDescription) Initialize;
			public function HRESULT(IRecoverableErrorData *self, PWSTR pszItemDisplayName, uint32* pcchItemDisplayName) GetItemDisplayName;
			public function HRESULT(IRecoverableErrorData *self, PWSTR pszErrorDescription, uint32* pcchErrorDescription) GetErrorDescription;
		}
		[CRepr]
		public struct IRecoverableError : IUnknown
		{
			public const new Guid IID = .(0x0f5625e8, 0x0a7b, 0x45ee, 0x96, 0x37, 0x1c, 0xe1, 0x36, 0x45, 0x90, 0x9e);
			
			public function HRESULT(IRecoverableError *self, SYNC_PROGRESS_STAGE* pStage) GetStage;
			public function HRESULT(IRecoverableError *self, SYNC_PROVIDER_ROLE* pProviderRole) GetProvider;
			public function HRESULT(IRecoverableError *self, ISyncChange** ppChangeWithRecoverableError) GetChangeWithRecoverableError;
			public function HRESULT(IRecoverableError *self, HRESULT* phrError, IRecoverableErrorData** ppErrorData) GetRecoverableErrorDataForChange;
			public function HRESULT(IRecoverableError *self, ISyncChangeUnit* pChangeUnit, HRESULT* phrError, IRecoverableErrorData** ppErrorData) GetRecoverableErrorDataForChangeUnit;
		}
		[CRepr]
		public struct IChangeConflict : IUnknown
		{
			public const new Guid IID = .(0x014ebf97, 0x9f20, 0x4f7a, 0xbd, 0xd4, 0x25, 0x97, 0x9c, 0x77, 0xc0, 0x02);
			
			public function HRESULT(IChangeConflict *self, ISyncChange** ppConflictingChange) GetDestinationProviderConflictingChange;
			public function HRESULT(IChangeConflict *self, ISyncChange** ppConflictingChange) GetSourceProviderConflictingChange;
			public function HRESULT(IChangeConflict *self, IUnknown** ppConflictingData) GetDestinationProviderConflictingData;
			public function HRESULT(IChangeConflict *self, IUnknown** ppConflictingData) GetSourceProviderConflictingData;
			public function HRESULT(IChangeConflict *self, SYNC_RESOLVE_ACTION* pResolveAction) GetResolveActionForChange;
			public function HRESULT(IChangeConflict *self, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChange;
			public function HRESULT(IChangeConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION* pResolveAction) GetResolveActionForChangeUnit;
			public function HRESULT(IChangeConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_RESOLVE_ACTION resolveAction) SetResolveActionForChangeUnit;
		}
		[CRepr]
		public struct IConstraintConflict : IUnknown
		{
			public const new Guid IID = .(0x00d2302e, 0x1cf8, 0x4835, 0xb8, 0x5f, 0xb7, 0xca, 0x4f, 0x79, 0x9e, 0x0a);
			
			public function HRESULT(IConstraintConflict *self, ISyncChange** ppConflictingChange) GetDestinationProviderConflictingChange;
			public function HRESULT(IConstraintConflict *self, ISyncChange** ppConflictingChange) GetSourceProviderConflictingChange;
			public function HRESULT(IConstraintConflict *self, ISyncChange** ppOriginalChange) GetDestinationProviderOriginalChange;
			public function HRESULT(IConstraintConflict *self, IUnknown** ppConflictingData) GetDestinationProviderConflictingData;
			public function HRESULT(IConstraintConflict *self, IUnknown** ppConflictingData) GetSourceProviderConflictingData;
			public function HRESULT(IConstraintConflict *self, IUnknown** ppOriginalData) GetDestinationProviderOriginalData;
			public function HRESULT(IConstraintConflict *self, SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) GetConstraintResolveActionForChange;
			public function HRESULT(IConstraintConflict *self, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChange;
			public function HRESULT(IConstraintConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION* pConstraintResolveAction) GetConstraintResolveActionForChangeUnit;
			public function HRESULT(IConstraintConflict *self, ISyncChangeUnit* pChangeUnit, SYNC_CONSTRAINT_RESOLVE_ACTION constraintResolveAction) SetConstraintResolveActionForChangeUnit;
			public function HRESULT(IConstraintConflict *self, CONSTRAINT_CONFLICT_REASON* pConstraintConflictReason) GetConstraintConflictReason;
			public function HRESULT(IConstraintConflict *self) IsTemporary;
		}
		[CRepr]
		public struct ISyncCallback : IUnknown
		{
			public const new Guid IID = .(0x0599797f, 0x5ed9, 0x485c, 0xae, 0x36, 0x0c, 0x5d, 0x1b, 0xf2, 0xe7, 0xa5);
			
			public function HRESULT(ISyncCallback *self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
			public function HRESULT(ISyncCallback *self, ISyncChange* pSyncChange) OnChange;
			public function HRESULT(ISyncCallback *self, IChangeConflict* pConflict) OnConflict;
			public function HRESULT(ISyncCallback *self, SYNC_FULL_ENUMERATION_ACTION* pFullEnumerationAction) OnFullEnumerationNeeded;
			public function HRESULT(ISyncCallback *self, IRecoverableError* pRecoverableError) OnRecoverableError;
		}
		[CRepr]
		public struct ISyncCallback2 : ISyncCallback
		{
			public const new Guid IID = .(0x47ce84af, 0x7442, 0x4ead, 0x86, 0x30, 0x12, 0x01, 0x5e, 0x03, 0x0a, 0xd7);
			
			public function HRESULT(ISyncCallback2 *self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeApplied;
			public function HRESULT(ISyncCallback2 *self, uint32 dwChangesApplied, uint32 dwChangesFailed) OnChangeFailed;
		}
		[CRepr]
		public struct ISyncConstraintCallback : IUnknown
		{
			public const new Guid IID = .(0x8af3843e, 0x75b3, 0x438c, 0xbb, 0x51, 0x6f, 0x02, 0x0d, 0x70, 0xd3, 0xcb);
			
			public function HRESULT(ISyncConstraintCallback *self, IConstraintConflict* pConflict) OnConstraintConflict;
		}
		[CRepr]
		public struct ISyncProvider : IUnknown
		{
			public const new Guid IID = .(0x8f657056, 0x2bce, 0x4a17, 0x8c, 0x68, 0xc7, 0xbb, 0x78, 0x98, 0xb5, 0x6f);
			
			public function HRESULT(ISyncProvider *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
		}
		[CRepr]
		public struct ISyncSessionState : IUnknown
		{
			public const new Guid IID = .(0xb8a940fe, 0x9f01, 0x483b, 0x94, 0x34, 0xc3, 0x7d, 0x36, 0x12, 0x25, 0xd9);
			
			public function HRESULT(ISyncSessionState *self, BOOL* pfIsCanceled) IsCanceled;
			public function HRESULT(ISyncSessionState *self, uint8* pbChangeApplierInfo, uint32* pcbChangeApplierInfo) GetInfoForChangeApplication;
			public function HRESULT(ISyncSessionState *self, uint8* pbChangeApplierInfo, uint32 cbChangeApplierInfo) LoadInfoFromChangeApplication;
			public function HRESULT(ISyncSessionState *self, uint8* pbRangeStart, uint32* pcbRangeStart) GetForgottenKnowledgeRecoveryRangeStart;
			public function HRESULT(ISyncSessionState *self, uint8* pbRangeEnd, uint32* pcbRangeEnd) GetForgottenKnowledgeRecoveryRangeEnd;
			public function HRESULT(ISyncSessionState *self, SYNC_RANGE* pRange) SetForgottenKnowledgeRecoveryRange;
			public function HRESULT(ISyncSessionState *self, SYNC_PROVIDER_ROLE provider, SYNC_PROGRESS_STAGE syncStage, uint32 dwCompletedWork, uint32 dwTotalWork) OnProgress;
		}
		[CRepr]
		public struct ISyncSessionExtendedErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x326c6810, 0x790a, 0x409b, 0xb7, 0x41, 0x69, 0x99, 0x38, 0x87, 0x61, 0xeb);
			
			public function HRESULT(ISyncSessionExtendedErrorInfo *self, ISyncProvider** ppProviderWithError) GetSyncProviderWithError;
		}
		[CRepr]
		public struct ISyncSessionState2 : ISyncSessionState
		{
			public const new Guid IID = .(0x9e37cfa3, 0x9e38, 0x4c61, 0x9c, 0xa3, 0xff, 0xe8, 0x10, 0xb4, 0x5c, 0xa2);
			
			public function HRESULT(ISyncSessionState2 *self, BOOL fSelf) SetProviderWithError;
			public function HRESULT(ISyncSessionState2 *self, HRESULT* phrSessionError) GetSessionErrorStatus;
		}
		[CRepr]
		public struct ISyncFilterInfo : IUnknown
		{
			public const new Guid IID = .(0x794eaaf8, 0x3f2e, 0x47e6, 0x97, 0x28, 0x17, 0xe6, 0xfc, 0xf9, 0x4c, 0xb7);
			
			public function HRESULT(ISyncFilterInfo *self, uint8* pbBuffer, uint32* pcbBuffer) Serialize;
		}
		[CRepr]
		public struct ISyncFilterInfo2 : ISyncFilterInfo
		{
			public const new Guid IID = .(0x19b394ba, 0xe3d0, 0x468c, 0x93, 0x4d, 0x32, 0x19, 0x68, 0xb2, 0xab, 0x34);
			
			public function HRESULT(ISyncFilterInfo2 *self, uint32* pdwFlags) GetFlags;
		}
		[CRepr]
		public struct IChangeUnitListFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0xf2837671, 0x0bdf, 0x43fa, 0xb5, 0x02, 0x23, 0x23, 0x75, 0xfb, 0x50, 0xc2);
			
			public function HRESULT(IChangeUnitListFilterInfo *self, uint8** ppbChangeUnitIds, uint32 dwChangeUnitCount) Initialize;
			public function HRESULT(IChangeUnitListFilterInfo *self, uint32* pdwChangeUnitIdCount) GetChangeUnitIdCount;
			public function HRESULT(IChangeUnitListFilterInfo *self, uint32 dwChangeUnitIdIndex, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
		}
		[CRepr]
		public struct ISyncFilter : IUnknown
		{
			public const new Guid IID = .(0x087a3f15, 0x0fcb, 0x44c1, 0x96, 0x39, 0x53, 0xc1, 0x4e, 0x2b, 0x55, 0x06);
			
			public function HRESULT(ISyncFilter *self, ISyncFilter* pSyncFilter) IsIdentical;
			public function HRESULT(ISyncFilter *self, uint8* pbSyncFilter, uint32* pcbSyncFilter) Serialize;
		}
		[CRepr]
		public struct ISyncFilterDeserializer : IUnknown
		{
			public const new Guid IID = .(0xb45b7a72, 0xe5c7, 0x46be, 0x9c, 0x82, 0x77, 0xb8, 0xb1, 0x5d, 0xab, 0x8a);
			
			public function HRESULT(ISyncFilterDeserializer *self, uint8* pbSyncFilter, uint32 dwCbSyncFilter, ISyncFilter** ppISyncFilter) DeserializeSyncFilter;
		}
		[CRepr]
		public struct ICustomFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x1d335dff, 0x6f88, 0x4e4d, 0x91, 0xa8, 0xa3, 0xf3, 0x51, 0xcf, 0xd4, 0x73);
			
			public function HRESULT(ICustomFilterInfo *self, ISyncFilter** pISyncFilter) GetSyncFilter;
		}
		[CRepr]
		public struct ICombinedFilterInfo : ISyncFilterInfo
		{
			public const new Guid IID = .(0x11f9de71, 0x2818, 0x4779, 0xb2, 0xac, 0x42, 0xd4, 0x50, 0x56, 0x5f, 0x45);
			
			public function HRESULT(ICombinedFilterInfo *self, uint32* pdwFilterCount) GetFilterCount;
			public function HRESULT(ICombinedFilterInfo *self, uint32 dwFilterIndex, ISyncFilterInfo** ppIFilterInfo) GetFilterInfo;
			public function HRESULT(ICombinedFilterInfo *self, FILTER_COMBINATION_TYPE* pFilterCombinationType) GetFilterCombinationType;
		}
		[CRepr]
		public struct IEnumSyncChanges : IUnknown
		{
			public const new Guid IID = .(0x5f86be4a, 0x5e78, 0x4e32, 0xac, 0x1c, 0xc2, 0x4f, 0xd2, 0x23, 0xef, 0x85);
			
			public function HRESULT(IEnumSyncChanges *self, uint32 cChanges, ISyncChange** ppChange, uint32* pcFetched) Next;
			public function HRESULT(IEnumSyncChanges *self, uint32 cChanges) Skip;
			public function HRESULT(IEnumSyncChanges *self) Reset;
			public function HRESULT(IEnumSyncChanges *self, IEnumSyncChanges** ppEnum) Clone;
		}
		[CRepr]
		public struct ISyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x56f14771, 0x8677, 0x484f, 0xa1, 0x70, 0xe3, 0x86, 0xe4, 0x18, 0xa6, 0x76);
			
			public function HRESULT(ISyncChangeBuilder *self, uint8* pbChangeUnitId, SYNC_VERSION* pChangeUnitVersion) AddChangeUnitMetadata;
		}
		[CRepr]
		public struct IFilterTrackingSyncChangeBuilder : IUnknown
		{
			public const new Guid IID = .(0x295024a0, 0x70da, 0x4c58, 0x88, 0x3c, 0xce, 0x2a, 0xfb, 0x30, 0x8d, 0x0b);
			
			public function HRESULT(IFilterTrackingSyncChangeBuilder *self, uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) AddFilterChange;
			public function HRESULT(IFilterTrackingSyncChangeBuilder *self) SetAllChangeUnitsPresentFlag;
		}
		[CRepr]
		public struct ISyncChangeBatchBase : IUnknown
		{
			public const new Guid IID = .(0x52f6e694, 0x6a71, 0x4494, 0xa1, 0x84, 0xa8, 0x31, 0x1b, 0xf5, 0xd2, 0x27);
			
			public function HRESULT(ISyncChangeBatchBase *self, IEnumSyncChanges** ppEnum) GetChangeEnumerator;
			public function HRESULT(ISyncChangeBatchBase *self, BOOL* pfLastBatch) GetIsLastBatch;
			public function HRESULT(ISyncChangeBatchBase *self, uint32* pdwWorkForBatch) GetWorkEstimateForBatch;
			public function HRESULT(ISyncChangeBatchBase *self, uint32* pdwRemainingWorkForSession) GetRemainingWorkEstimateForSession;
			public function HRESULT(ISyncChangeBatchBase *self, uint8* pbLowerBound) BeginOrderedGroup;
			public function HRESULT(ISyncChangeBatchBase *self, uint8* pbUpperBound, ISyncKnowledge* pMadeWithKnowledge) EndOrderedGroup;
			public function HRESULT(ISyncChangeBatchBase *self, uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddItemMetadataToGroup;
			public function HRESULT(ISyncChangeBatchBase *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledge;
			public function HRESULT(ISyncChangeBatchBase *self, ISyncKnowledge** ppPrerequisteKnowledge) GetPrerequisiteKnowledge;
			public function HRESULT(ISyncChangeBatchBase *self, IForgottenKnowledge** ppSourceForgottenKnowledge) GetSourceForgottenKnowledge;
			public function HRESULT(ISyncChangeBatchBase *self) SetLastBatch;
			public function HRESULT(ISyncChangeBatchBase *self, uint32 dwWorkForBatch) SetWorkEstimateForBatch;
			public function HRESULT(ISyncChangeBatchBase *self, uint32 dwRemainingWorkForSession) SetRemainingWorkEstimateForSession;
			public function HRESULT(ISyncChangeBatchBase *self, uint8* pbChangeBatch, uint32* pcbChangeBatch) Serialize;
		}
		[CRepr]
		public struct ISyncChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x70c64dee, 0x380f, 0x4c2e, 0x8f, 0x70, 0x31, 0xc5, 0x5b, 0xd5, 0xf9, 0xb3);
			
			public function HRESULT(ISyncChangeBatch *self) BeginUnorderedGroup;
			public function HRESULT(ISyncChangeBatch *self, ISyncKnowledge* pMadeWithKnowledge, BOOL fAllChangesForKnowledge) EndUnorderedGroup;
			public function HRESULT(ISyncChangeBatch *self, uint8* pbOwnerReplicaId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwFlags, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) AddLoggedConflict;
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0xef64197d, 0x4f44, 0x4ea2, 0xb3, 0x55, 0x45, 0x24, 0x71, 0x3e, 0x3b, 0xed);
			
			public function HRESULT(ISyncFullEnumerationChangeBatch *self, ISyncKnowledge** ppLearnedKnowledgeAfterRecoveryComplete) GetLearnedKnowledgeAfterRecoveryComplete;
			public function HRESULT(ISyncFullEnumerationChangeBatch *self, uint8* pbClosedLowerBoundItemId, uint32* pcbIdSize) GetClosedLowerBoundItemId;
			public function HRESULT(ISyncFullEnumerationChangeBatch *self, uint8* pbClosedUpperBoundItemId, uint32* pcbIdSize) GetClosedUpperBoundItemId;
		}
		[CRepr]
		public struct ISyncChangeBatchWithPrerequisite : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x097f13be, 0x5b92, 0x4048, 0xb3, 0xf2, 0x7b, 0x42, 0xa2, 0x51, 0x5e, 0x07);
			
			public function HRESULT(ISyncChangeBatchWithPrerequisite *self, ISyncKnowledge* pPrerequisiteKnowledge) SetPrerequisiteKnowledge;
			public function HRESULT(ISyncChangeBatchWithPrerequisite *self, ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedWithPrerequisiteKnowledge) GetLearnedKnowledgeWithPrerequisite;
			public function HRESULT(ISyncChangeBatchWithPrerequisite *self, IForgottenKnowledge** ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
		}
		[CRepr]
		public struct ISyncChangeBatchBase2 : ISyncChangeBatchBase
		{
			public const new Guid IID = .(0x6fdb596a, 0xd755, 0x4584, 0xbd, 0x0c, 0xc0, 0xc2, 0x3a, 0x54, 0x8f, 0xbf);
			
			public function HRESULT(ISyncChangeBatchBase2 *self, SYNC_SERIALIZATION_VERSION targetFormatVersion, uint32 dwFlags, uint8* pbBuffer, uint32* pdwSerializedSize) SerializeWithOptions;
		}
		[CRepr]
		public struct ISyncChangeBatchAdvanced : IUnknown
		{
			public const new Guid IID = .(0x0f1a4995, 0xcbc8, 0x421d, 0xb5, 0x50, 0x5d, 0x0b, 0xeb, 0xf3, 0xe9, 0xa5);
			
			public function HRESULT(ISyncChangeBatchAdvanced *self, ISyncFilterInfo** ppFilterInfo) GetFilterInfo;
			public function HRESULT(ISyncChangeBatchAdvanced *self, ISyncChangeBatch** ppChangeBatch) ConvertFullEnumerationChangeBatchToRegularChangeBatch;
			public function HRESULT(ISyncChangeBatchAdvanced *self, uint8* pbItemId, uint32* pcbIdSize) GetUpperBoundItemId;
			public function HRESULT(ISyncChangeBatchAdvanced *self, BOOL* pfBatchKnowledgeShouldBeApplied) GetBatchLevelKnowledgeShouldBeApplied;
		}
		[CRepr]
		public struct ISyncChangeBatch2 : ISyncChangeBatch
		{
			public const new Guid IID = .(0x225f4a33, 0xf5ee, 0x4cc7, 0xb0, 0x39, 0x67, 0xa2, 0x62, 0xb4, 0xb2, 0xac);
			
			public function HRESULT(ISyncChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
			public function HRESULT(ISyncChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncKnowledge* pConflictKnowledge, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneLoggedConflict;
		}
		[CRepr]
		public struct ISyncFullEnumerationChangeBatch2 : ISyncFullEnumerationChangeBatch
		{
			public const new Guid IID = .(0xe06449f4, 0xa205, 0x4b65, 0x97, 0x24, 0x01, 0xb2, 0x21, 0x01, 0xee, 0xc1);
			
			public function HRESULT(ISyncFullEnumerationChangeBatch2 *self, uint8* pbOwnerReplicaId, uint8* pbWinnerItemId, uint8* pbItemId, SYNC_VERSION* pChangeVersion, SYNC_VERSION* pCreationVersion, uint32 dwWorkForChange, ISyncChangeBuilder** ppChangeBuilder) AddMergeTombstoneMetadataToGroup;
		}
		[CRepr]
		public struct IKnowledgeSyncProvider : ISyncProvider
		{
			public const new Guid IID = .(0x43434a49, 0x8da4, 0x47f2, 0x81, 0x72, 0xad, 0x7b, 0x8b, 0x02, 0x49, 0x78);
			
			public function HRESULT(IKnowledgeSyncProvider *self, SYNC_PROVIDER_ROLE role, ISyncSessionState* pSessionState) BeginSession;
			public function HRESULT(IKnowledgeSyncProvider *self, ISyncKnowledge** ppSyncKnowledge, uint32* pdwRequestedBatchSize) GetSyncBatchParameters;
			public function HRESULT(IKnowledgeSyncProvider *self, uint32 dwBatchSize, ISyncKnowledge* pSyncKnowledge, ISyncChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) GetChangeBatch;
			public function HRESULT(IKnowledgeSyncProvider *self, uint32 dwBatchSize, uint8* pbLowerEnumerationBound, ISyncKnowledge* pSyncKnowledge, ISyncFullEnumerationChangeBatch** ppSyncChangeBatch, IUnknown** ppUnkDataRetriever) GetFullEnumerationChangeBatch;
			public function HRESULT(IKnowledgeSyncProvider *self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) ProcessChangeBatch;
			public function HRESULT(IKnowledgeSyncProvider *self, CONFLICT_RESOLUTION_POLICY resolutionPolicy, ISyncFullEnumerationChangeBatch* pSourceChangeBatch, IUnknown* pUnkDataRetriever, ISyncCallback* pCallback, SYNC_SESSION_STATISTICS* pSyncSessionStatistics) ProcessFullEnumerationChangeBatch;
			public function HRESULT(IKnowledgeSyncProvider *self, ISyncSessionState* pSessionState) EndSession;
		}
		[CRepr]
		public struct ISyncChangeUnit : IUnknown
		{
			public const new Guid IID = .(0x60edd8ca, 0x7341, 0x4bb7, 0x95, 0xce, 0xfa, 0xb6, 0x39, 0x4b, 0x51, 0xcb);
			
			public function HRESULT(ISyncChangeUnit *self, ISyncChange** ppSyncChange) GetItemChange;
			public function HRESULT(ISyncChangeUnit *self, uint8* pbChangeUnitId, uint32* pcbIdSize) GetChangeUnitId;
			public function HRESULT(ISyncChangeUnit *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetChangeUnitVersion;
		}
		[CRepr]
		public struct IEnumSyncChangeUnits : IUnknown
		{
			public const new Guid IID = .(0x346b35f1, 0x8703, 0x4c6d, 0xab, 0x1a, 0x4d, 0xbc, 0xa2, 0xcf, 0xf9, 0x7f);
			
			public function HRESULT(IEnumSyncChangeUnits *self, uint32 cChanges, ISyncChangeUnit** ppChangeUnit, uint32* pcFetched) Next;
			public function HRESULT(IEnumSyncChangeUnits *self, uint32 cChanges) Skip;
			public function HRESULT(IEnumSyncChangeUnits *self) Reset;
			public function HRESULT(IEnumSyncChangeUnits *self, IEnumSyncChangeUnits** ppEnum) Clone;
		}
		[CRepr]
		public struct ISyncChange : IUnknown
		{
			public const new Guid IID = .(0xa1952beb, 0x0f6b, 0x4711, 0xb1, 0x36, 0x01, 0xda, 0x85, 0xb9, 0x68, 0xa6);
			
			public function HRESULT(ISyncChange *self, uint8* pbReplicaId, uint32* pcbIdSize) GetOwnerReplicaId;
			public function HRESULT(ISyncChange *self, uint8* pbRootItemId, uint32* pcbIdSize) GetRootItemId;
			public function HRESULT(ISyncChange *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetChangeVersion;
			public function HRESULT(ISyncChange *self, uint8* pbCurrentReplicaId, SYNC_VERSION* pVersion) GetCreationVersion;
			public function HRESULT(ISyncChange *self, uint32* pdwFlags) GetFlags;
			public function HRESULT(ISyncChange *self, uint32* pdwWork) GetWorkEstimate;
			public function HRESULT(ISyncChange *self, IEnumSyncChangeUnits** ppEnum) GetChangeUnits;
			public function HRESULT(ISyncChange *self, ISyncKnowledge** ppMadeWithKnowledge) GetMadeWithKnowledge;
			public function HRESULT(ISyncChange *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledge;
			public function HRESULT(ISyncChange *self, uint32 dwWork) SetWorkEstimate;
		}
		[CRepr]
		public struct ISyncChangeWithPrerequisite : IUnknown
		{
			public const new Guid IID = .(0x9e38382f, 0x1589, 0x48c3, 0x92, 0xe4, 0x05, 0xec, 0xdc, 0xb4, 0xf3, 0xf7);
			
			public function HRESULT(ISyncChangeWithPrerequisite *self, ISyncKnowledge** ppPrerequisiteKnowledge) GetPrerequisiteKnowledge;
			public function HRESULT(ISyncChangeWithPrerequisite *self, ISyncKnowledge* pDestinationKnowledge, ISyncKnowledge** ppLearnedKnowledgeWithPrerequisite) GetLearnedKnowledgeWithPrerequisite;
		}
		[CRepr]
		public struct ISyncFullEnumerationChange : IUnknown
		{
			public const new Guid IID = .(0x9785e0bd, 0xbdff, 0x40c4, 0x98, 0xc5, 0xb3, 0x4b, 0x2f, 0x19, 0x91, 0xb3);
			
			public function HRESULT(ISyncFullEnumerationChange *self, ISyncKnowledge** ppLearnedKnowledge) GetLearnedKnowledgeAfterRecoveryComplete;
			public function HRESULT(ISyncFullEnumerationChange *self, IForgottenKnowledge** ppLearnedForgottenKnowledge) GetLearnedForgottenKnowledge;
		}
		[CRepr]
		public struct ISyncMergeTombstoneChange : IUnknown
		{
			public const new Guid IID = .(0x6ec62597, 0x0903, 0x484c, 0xad, 0x61, 0x36, 0xd6, 0xe9, 0x38, 0xf4, 0x7b);
			
			public function HRESULT(ISyncMergeTombstoneChange *self, uint8* pbWinnerItemId, uint32* pcbIdSize) GetWinnerItemId;
		}
		[CRepr]
		public struct IEnumItemIds : IUnknown
		{
			public const new Guid IID = .(0x43aa3f61, 0x4b2e, 0x4b60, 0x83, 0xdf, 0xb1, 0x10, 0xd3, 0xe1, 0x48, 0xf1);
			
			public function HRESULT(IEnumItemIds *self, uint8* pbItemId, uint32* pcbItemIdSize) Next;
		}
		[CRepr]
		public struct IFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xca169652, 0x07c6, 0x4708, 0xa3, 0xda, 0x6e, 0x4e, 0xba, 0x8d, 0x22, 0x97);
			
			public function HRESULT(IFilterKeyMap *self, uint32* pdwCount) GetCount;
			public function HRESULT(IFilterKeyMap *self, ISyncFilter* pISyncFilter, uint32* pdwFilterKey) AddFilter;
			public function HRESULT(IFilterKeyMap *self, uint32 dwFilterKey, ISyncFilter** ppISyncFilter) GetFilter;
			public function HRESULT(IFilterKeyMap *self, uint8* pbFilterKeyMap, uint32* pcbFilterKeyMap) Serialize;
		}
		[CRepr]
		public struct ISyncChangeWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xbfe1ef00, 0xe87d, 0x42fd, 0xa4, 0xe9, 0x24, 0x2d, 0x70, 0x41, 0x4a, 0xef);
			
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32* pdwFilterCount) GetFilterCount;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32 dwFilterKey, SYNC_FILTER_CHANGE* pFilterChange) GetFilterChange;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, BOOL* pfAllChangeUnitsPresent) GetAllChangeUnitsPresentFlag;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, uint32 dwFilterKey, ISyncKnowledge** ppIFilterForgottenKnowledge) GetFilterForgottenKnowledge;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedKnowledge) GetFilteredReplicaLearnedKnowledge;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
			public function HRESULT(ISyncChangeWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
		}
		[CRepr]
		public struct ISyncChangeBatchWithFilterKeyMap : IUnknown
		{
			public const new Guid IID = .(0xde247002, 0x566d, 0x459a, 0xa6, 0xed, 0xa5, 0xaa, 0xb3, 0x45, 0x9f, 0xb7);
			
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, IFilterKeyMap** ppIFilterKeyMap) GetFilterKeyMap;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, IFilterKeyMap* pIFilterKeyMap) SetFilterKeyMap;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, uint32 dwFilterKey, ISyncKnowledge* pFilterForgottenKnowledge) SetFilterForgottenKnowledge;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedKnowledge;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledge;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledge;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, ISyncKnowledge** ppLearnedForgottenKnowledge) GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete;
			public function HRESULT(ISyncChangeBatchWithFilterKeyMap *self, ISyncKnowledge* pDestinationKnowledge, IEnumItemIds* pNewMoveins, uint32 dwFilterKey, ISyncKnowledge** ppLearnedFilterForgottenKnowledge) GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete;
		}
		[CRepr]
		public struct IDataRetrieverCallback : IUnknown
		{
			public const new Guid IID = .(0x71b4863b, 0xf969, 0x4676, 0xbb, 0xc3, 0x3d, 0x9f, 0xdc, 0x3f, 0xb2, 0xc7);
			
			public function HRESULT(IDataRetrieverCallback *self, IUnknown* pUnkData) LoadChangeDataComplete;
			public function HRESULT(IDataRetrieverCallback *self, HRESULT hrError) LoadChangeDataError;
		}
		[CRepr]
		public struct ILoadChangeContext : IUnknown
		{
			public const new Guid IID = .(0x44a4aaca, 0xec39, 0x46d5, 0xb5, 0xc9, 0xd6, 0x33, 0xc0, 0xee, 0x67, 0xe2);
			
			public function HRESULT(ILoadChangeContext *self, ISyncChange** ppSyncChange) GetSyncChange;
			public function HRESULT(ILoadChangeContext *self, HRESULT hrError, IRecoverableErrorData* pErrorData) SetRecoverableErrorOnChange;
			public function HRESULT(ILoadChangeContext *self, HRESULT hrError, ISyncChangeUnit* pChangeUnit, IRecoverableErrorData* pErrorData) SetRecoverableErrorOnChangeUnit;
		}
		[CRepr]
		public struct ISynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9b22f2a9, 0xa4cd, 0x4648, 0x9d, 0x8e, 0x3a, 0x51, 0x0d, 0x4d, 0xa0, 0x4b);
			
			public function HRESULT(ISynchronousDataRetriever *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
			public function HRESULT(ISynchronousDataRetriever *self, ILoadChangeContext* pLoadChangeContext, IUnknown** ppUnkData) LoadChangeData;
		}
		[CRepr]
		public struct IAsynchronousDataRetriever : IUnknown
		{
			public const new Guid IID = .(0x9fc7e470, 0x61ea, 0x4a88, 0x9b, 0xe4, 0xdf, 0x56, 0xa2, 0x7c, 0xfe, 0xf2);
			
			public function HRESULT(IAsynchronousDataRetriever *self, ID_PARAMETERS* pIdParameters) GetIdParameters;
			public function HRESULT(IAsynchronousDataRetriever *self, IDataRetrieverCallback* pDataRetrieverCallback) RegisterCallback;
			public function HRESULT(IAsynchronousDataRetriever *self, IDataRetrieverCallback* pDataRetrieverCallback) RevokeCallback;
			public function HRESULT(IAsynchronousDataRetriever *self, ILoadChangeContext* pLoadChangeContext) LoadChangeData;
		}
		[CRepr]
		public struct IFilterRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x82df8873, 0x6360, 0x463a, 0xa8, 0xa1, 0xed, 0xe5, 0xe1, 0xa1, 0x59, 0x4d);
			
			public function HRESULT(IFilterRequestCallback *self, IUnknown* pFilter, FILTERING_TYPE filteringType) RequestFilter;
		}
		[CRepr]
		public struct IRequestFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x2e020184, 0x6d18, 0x46a7, 0xa3, 0x2a, 0xda, 0x4a, 0xeb, 0x06, 0x69, 0x6c);
			
			public function HRESULT(IRequestFilteredSync *self, IFilterRequestCallback* pCallback) SpecifyFilter;
		}
		[CRepr]
		public struct ISupportFilteredSync : IUnknown
		{
			public const new Guid IID = .(0x3d128ded, 0xd555, 0x4e0d, 0xbf, 0x4b, 0xfb, 0x21, 0x3a, 0x8a, 0x93, 0x02);
			
			public function HRESULT(ISupportFilteredSync *self, IUnknown* pFilter, FILTERING_TYPE filteringType) AddFilter;
		}
		[CRepr]
		public struct IFilterTrackingRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x713ca7bb, 0xc858, 0x4674, 0xb4, 0xb6, 0x11, 0x22, 0x43, 0x65, 0x87, 0xa9);
			
			public function HRESULT(IFilterTrackingRequestCallback *self, ISyncFilter* pFilter) RequestTrackedFilter;
		}
		[CRepr]
		public struct IFilterTrackingProvider : IUnknown
		{
			public const new Guid IID = .(0x743383c0, 0xfc4e, 0x45ba, 0xad, 0x81, 0xd9, 0xd8, 0x4c, 0x7a, 0x24, 0xf8);
			
			public function HRESULT(IFilterTrackingProvider *self, IFilterTrackingRequestCallback* pCallback) SpecifyTrackedFilters;
			public function HRESULT(IFilterTrackingProvider *self, ISyncFilter* pFilter) AddTrackedFilter;
		}
		[CRepr]
		public struct ISupportLastWriteTime : IUnknown
		{
			public const new Guid IID = .(0xeadf816f, 0xd0bd, 0x43ca, 0x8f, 0x40, 0x5a, 0xcd, 0xc6, 0xc0, 0x6f, 0x7a);
			
			public function HRESULT(ISupportLastWriteTime *self, uint8* pbItemId, uint64* pullTimestamp) GetItemChangeTime;
			public function HRESULT(ISupportLastWriteTime *self, uint8* pbItemId, uint8* pbChangeUnitId, uint64* pullTimestamp) GetChangeUnitChangeTime;
		}
		[CRepr]
		public struct IProviderConverter : IUnknown
		{
			public const new Guid IID = .(0x809b7276, 0x98cf, 0x4957, 0x93, 0xa5, 0x0e, 0xbd, 0xd3, 0xdd, 0xdf, 0xfd);
			
			public function HRESULT(IProviderConverter *self, ISyncProvider* pISyncProvider) Initialize;
		}
		[CRepr]
		public struct ISyncDataConverter : IUnknown
		{
			public const new Guid IID = .(0x435d4861, 0x68d5, 0x44aa, 0xa0, 0xf9, 0x72, 0xa0, 0xb0, 0x0e, 0xf9, 0xcf);
			
			public function HRESULT(ISyncDataConverter *self, IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) ConvertDataRetrieverFromProviderFormat;
			public function HRESULT(ISyncDataConverter *self, IUnknown* pUnkDataRetrieverIn, IEnumSyncChanges* pEnumSyncChanges, IUnknown** ppUnkDataOut) ConvertDataRetrieverToProviderFormat;
			public function HRESULT(ISyncDataConverter *self, ILoadChangeContext* pDataContext, IUnknown* pUnkDataIn, IUnknown** ppUnkDataOut) ConvertDataFromProviderFormat;
			public function HRESULT(ISyncDataConverter *self, ILoadChangeContext* pDataContext, IUnknown* pUnkDataOut, IUnknown** ppUnkDataout) ConvertDataToProviderFormat;
		}
		[CRepr]
		public struct ISyncProviderRegistration : IUnknown
		{
			public const new Guid IID = .(0xcb45953b, 0x7624, 0x47bc, 0xa4, 0x72, 0xeb, 0x8c, 0xac, 0x6b, 0x22, 0x2e);
			
			public function HRESULT(ISyncProviderRegistration *self, SyncProviderConfigUIConfiguration* pConfigUIConfig, ISyncProviderConfigUIInfo** ppConfigUIInfo) CreateSyncProviderConfigUIRegistrationInstance;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId) UnregisterSyncProviderConfigUI;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidContentType, uint32 dwSupportedArchitecture, IEnumSyncProviderConfigUIInfos** ppEnumSyncProviderConfigUIInfos) EnumerateSyncProviderConfigUIs;
			public function HRESULT(ISyncProviderRegistration *self, SyncProviderConfiguration* pProviderConfiguration, ISyncProviderInfo** ppProviderInfo) CreateSyncProviderRegistrationInstance;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId) UnregisterSyncProvider;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidProviderInstanceId, ISyncProviderConfigUIInfo** ppProviderConfigUIInfo) GetSyncProviderConfigUIInfoforProvider;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidContentType, uint32 dwStateFlagsToFilterMask, uint32 dwStateFlagsToFilter, Guid* refProviderClsId, uint32 dwSupportedArchitecture, IEnumSyncProviderInfos** ppEnumSyncProviderInfos) EnumerateSyncProviders;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, ISyncProviderInfo** ppProviderInfo) GetSyncProviderInfo;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProviderFromInstanceId;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, ISyncProviderConfigUIInfo** ppConfigUIInfo) GetSyncProviderConfigUIInfo;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwClsContext, ISyncProviderConfigUI** ppConfigUI) GetSyncProviderConfigUIFromInstanceId;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32* pdwStateFlags) GetSyncProviderState;
			public function HRESULT(ISyncProviderRegistration *self, Guid* pguidInstanceId, uint32 dwStateFlagsMask, uint32 dwStateFlags) SetSyncProviderState;
			public function HRESULT(ISyncProviderRegistration *self, HANDLE* phEvent) RegisterForEvent;
			public function HRESULT(ISyncProviderRegistration *self, HANDLE hEvent) RevokeEvent;
			public function HRESULT(ISyncProviderRegistration *self, HANDLE hEvent, ISyncRegistrationChange** ppChange) GetChange;
		}
		[CRepr]
		public struct IEnumSyncProviderConfigUIInfos : IUnknown
		{
			public const new Guid IID = .(0xf6be2602, 0x17c6, 0x4658, 0xa2, 0xd7, 0x68, 0xed, 0x33, 0x30, 0xf6, 0x41);
			
			public function HRESULT(IEnumSyncProviderConfigUIInfos *self, uint32 cFactories, ISyncProviderConfigUIInfo** ppSyncProviderConfigUIInfo, uint32* pcFetched) Next;
			public function HRESULT(IEnumSyncProviderConfigUIInfos *self, uint32 cFactories) Skip;
			public function HRESULT(IEnumSyncProviderConfigUIInfos *self) Reset;
			public function HRESULT(IEnumSyncProviderConfigUIInfos *self, IEnumSyncProviderConfigUIInfos** ppEnum) Clone;
		}
		[CRepr]
		public struct IEnumSyncProviderInfos : IUnknown
		{
			public const new Guid IID = .(0xa04ba850, 0x5eb1, 0x460d, 0xa9, 0x73, 0x39, 0x3f, 0xcb, 0x60, 0x8a, 0x11);
			
			public function HRESULT(IEnumSyncProviderInfos *self, uint32 cInstances, ISyncProviderInfo** ppSyncProviderInfo, uint32* pcFetched) Next;
			public function HRESULT(IEnumSyncProviderInfos *self, uint32 cInstances) Skip;
			public function HRESULT(IEnumSyncProviderInfos *self) Reset;
			public function HRESULT(IEnumSyncProviderInfos *self, IEnumSyncProviderInfos** ppEnum) Clone;
		}
		[CRepr]
		public struct ISyncProviderInfo : IPropertyStore
		{
			public const new Guid IID = .(0x1ee135de, 0x88a4, 0x4504, 0xb0, 0xd0, 0xf7, 0x92, 0x0d, 0x7e, 0x5b, 0xa6);
			
			public function HRESULT(ISyncProviderInfo *self, uint32 dwClsContext, IRegisteredSyncProvider** ppSyncProvider) GetSyncProvider;
		}
		[CRepr]
		public struct ISyncProviderConfigUIInfo : IPropertyStore
		{
			public const new Guid IID = .(0x214141ae, 0x33d7, 0x4d8d, 0x8e, 0x37, 0xf2, 0x27, 0xe8, 0x80, 0xce, 0x50);
			
			public function HRESULT(ISyncProviderConfigUIInfo *self, uint32 dwClsContext, ISyncProviderConfigUI** ppSyncProviderConfigUI) GetSyncProviderConfigUI;
		}
		[CRepr]
		public struct ISyncProviderConfigUI : IUnknown
		{
			public const new Guid IID = .(0x7b0705f6, 0xcbcd, 0x4071, 0xab, 0x05, 0x3b, 0xdc, 0x36, 0x4d, 0x4a, 0x0c);
			
			public function HRESULT(ISyncProviderConfigUI *self, Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pConfigurationProperties) Init;
			public function HRESULT(ISyncProviderConfigUI *self, IPropertyStore** ppConfigUIProperties) GetRegisteredProperties;
			public function HRESULT(ISyncProviderConfigUI *self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo** ppProviderInfo) CreateAndRegisterNewSyncProvider;
			public function HRESULT(ISyncProviderConfigUI *self, HWND hwndParent, IUnknown* pUnkContext, ISyncProviderInfo* pProviderInfo) ModifySyncProvider;
		}
		[CRepr]
		public struct IRegisteredSyncProvider : IUnknown
		{
			public const new Guid IID = .(0x913bcf76, 0x47c1, 0x40b5, 0xa8, 0x96, 0x5e, 0x8a, 0x9c, 0x41, 0x4c, 0x14);
			
			public function HRESULT(IRegisteredSyncProvider *self, Guid* pguidInstanceId, Guid* pguidContentType, IPropertyStore* pContextPropertyStore) Init;
			public function HRESULT(IRegisteredSyncProvider *self, Guid* pguidInstanceId) GetInstanceId;
			public function HRESULT(IRegisteredSyncProvider *self) Reset;
		}
		[CRepr]
		public struct ISyncRegistrationChange : IUnknown
		{
			public const new Guid IID = .(0xeea0d9ae, 0x6b29, 0x43b4, 0x9e, 0x70, 0xe3, 0xae, 0x33, 0xbb, 0x2c, 0x3b);
			
			public function HRESULT(ISyncRegistrationChange *self, SYNC_REGISTRATION_EVENT* psreEvent) GetEvent;
			public function HRESULT(ISyncRegistrationChange *self, Guid* pguidInstanceId) GetInstanceId;
		}
		
	}
}
