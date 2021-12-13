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
		
		public struct IClockVectorElement {}
		public struct IFeedClockVectorElement {}
		public struct IClockVector {}
		public struct IFeedClockVector {}
		public struct IEnumClockVector {}
		public struct IEnumFeedClockVector {}
		public struct ICoreFragment {}
		public struct ICoreFragmentInspector {}
		public struct IRangeExceptionAlt {}
		public struct IEnumRangeExceptions {}
		public struct ISingleItemException {}
		public struct IEnumSingleItemExceptions {}
		public struct IChangeUnitException {}
		public struct IEnumChangeUnitExceptions {}
		public struct IReplicaKeyMap {}
		public struct IConstructReplicaKeyMap {}
		public struct ISyncKnowledge {}
		public struct IForgottenKnowledge {}
		public struct ISyncKnowledge2 {}
		public struct IRecoverableErrorData {}
		public struct IRecoverableError {}
		public struct IChangeConflict {}
		public struct IConstraintConflict {}
		public struct ISyncCallback {}
		public struct ISyncCallback2 {}
		public struct ISyncConstraintCallback {}
		public struct ISyncProvider {}
		public struct ISyncSessionState {}
		public struct ISyncSessionExtendedErrorInfo {}
		public struct ISyncSessionState2 {}
		public struct ISyncFilterInfo {}
		public struct ISyncFilterInfo2 {}
		public struct IChangeUnitListFilterInfo {}
		public struct ISyncFilter {}
		public struct ISyncFilterDeserializer {}
		public struct ICustomFilterInfo {}
		public struct ICombinedFilterInfo {}
		public struct IEnumSyncChanges {}
		public struct ISyncChangeBuilder {}
		public struct IFilterTrackingSyncChangeBuilder {}
		public struct ISyncChangeBatchBase {}
		public struct ISyncChangeBatch {}
		public struct ISyncFullEnumerationChangeBatch {}
		public struct ISyncChangeBatchWithPrerequisite {}
		public struct ISyncChangeBatchBase2 {}
		public struct ISyncChangeBatchAdvanced {}
		public struct ISyncChangeBatch2 {}
		public struct ISyncFullEnumerationChangeBatch2 {}
		public struct IKnowledgeSyncProvider {}
		public struct ISyncChangeUnit {}
		public struct IEnumSyncChangeUnits {}
		public struct ISyncChange {}
		public struct ISyncChangeWithPrerequisite {}
		public struct ISyncFullEnumerationChange {}
		public struct ISyncMergeTombstoneChange {}
		public struct IEnumItemIds {}
		public struct IFilterKeyMap {}
		public struct ISyncChangeWithFilterKeyMap {}
		public struct ISyncChangeBatchWithFilterKeyMap {}
		public struct IDataRetrieverCallback {}
		public struct ILoadChangeContext {}
		public struct ISynchronousDataRetriever {}
		public struct IAsynchronousDataRetriever {}
		public struct IFilterRequestCallback {}
		public struct IRequestFilteredSync {}
		public struct ISupportFilteredSync {}
		public struct IFilterTrackingRequestCallback {}
		public struct IFilterTrackingProvider {}
		public struct ISupportLastWriteTime {}
		public struct IProviderConverter {}
		public struct ISyncDataConverter {}
		public struct ISyncProviderRegistration {}
		public struct IEnumSyncProviderConfigUIInfos {}
		public struct IEnumSyncProviderInfos {}
		public struct ISyncProviderInfo {}
		public struct ISyncProviderConfigUIInfo {}
		public struct ISyncProviderConfigUI {}
		public struct IRegisteredSyncProvider {}
		public struct ISyncRegistrationChange {}
		
	}
}
