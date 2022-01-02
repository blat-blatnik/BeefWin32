using System;

// namespace Security.DiagnosticDataQuery
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum DdqAccessLevel : int32
		{
			NoData = 0,
			CurrentUserData = 1,
			AllUserData = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DIAGNOSTIC_DATA_RECORD
		{
			public int64 rowId;
			public uint64 timestamp;
			public uint64 eventKeywords;
			public PWSTR fullEventName;
			public PWSTR providerGroupGuid;
			public PWSTR producerName;
			public int32* privacyTags;
			public uint32 privacyTagCount;
			public int32* categoryIds;
			public uint32 categoryIdCount;
			public BOOL isCoreData;
			public PWSTR extra1;
			public PWSTR extra2;
			public PWSTR extra3;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_SEARCH_CRITERIA
		{
			public PWSTR* producerNames;
			public uint32 producerNameCount;
			public PWSTR textToMatch;
			public int32* categoryIds;
			public uint32 categoryIdCount;
			public int32* privacyTags;
			public uint32 privacyTagCount;
			public BOOL coreDataOnly;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION
		{
			public int32 privacyTag;
			public PWSTR name;
			public PWSTR description;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION
		{
			public PWSTR name;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION
		{
			public int32 id;
			public PWSTR name;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TAG_STATS
		{
			public int32 privacyTag;
			public uint32 eventCount;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_BINARY_STATS
		{
			public PWSTR moduleName;
			public PWSTR friendlyModuleName;
			public uint32 eventCount;
			public uint64 uploadSizeBytes;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_GENERAL_STATS
		{
			public uint32 optInLevel;
			public uint64 transcriptSizeBytes;
			public uint64 oldestEventTimestamp;
			public uint32 totalEventCountLast24Hours;
			public float averageDailyEvents;
		}
		[CRepr]
		public struct DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION
		{
			public uint32 hoursOfHistoryToKeep;
			public uint32 maxStoreMegabytes;
			public uint32 requestedMaxStoreMegabytes;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_PARAMETER
		{
			public char16[129] name;
			public char16[260] value;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_SIGNATURE
		{
			public char16[65] eventName;
			public DIAGNOSTIC_REPORT_PARAMETER[10] parameters;
		}
		[CRepr]
		public struct DIAGNOSTIC_REPORT_DATA
		{
			public DIAGNOSTIC_REPORT_SIGNATURE signature;
			public Guid bucketId;
			public Guid reportId;
			public FILETIME creationTime;
			public uint64 sizeInBytes;
			public PWSTR cabId;
			public uint32 reportStatus;
			public Guid reportIntegratorId;
			public PWSTR* fileNames;
			public uint32 fileCount;
			public PWSTR friendlyEventName;
			public PWSTR applicationName;
			public PWSTR applicationPath;
			public PWSTR description;
			public PWSTR bucketIdString;
			public uint64 legacyBucketId;
			public PWSTR reportKey;
		}
		
		// --- Functions ---
		
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqCreateSession(DdqAccessLevel accessLevel, out HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqCloseSession(HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetSessionAccessLevel(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out DdqAccessLevel accessLevel);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticDataAccessLevelAllowed(out DdqAccessLevel accessLevel);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordStats(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in DIAGNOSTIC_DATA_SEARCH_CRITERIA searchCriteria, out uint32 recordCount, out int64 minRowId, out int64 maxRowId);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordPayload(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, int64 rowId, out PWSTR payload);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordLocaleTags(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, PWSTR locale, out HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqFreeDiagnosticRecordLocaleTags(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordLocaleTagAtIndex(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_TAG_DESCRIPTION tagDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordLocaleTagCount(HDIAGNOSTIC_EVENT_TAG_DESCRIPTION hTagDescription, out uint32 tagDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordProducers(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqFreeDiagnosticRecordProducers(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordProducerAtIndex(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_PRODUCER_DESCRIPTION producerDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordProducerCount(HDIAGNOSTIC_EVENT_PRODUCER_DESCRIPTION hProducerDescription, out uint32 producerDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordProducerCategories(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, PWSTR producerName, out HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqFreeDiagnosticRecordProducerCategories(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordCategoryAtIndex(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription, uint32 index, out DIAGNOSTIC_DATA_EVENT_CATEGORY_DESCRIPTION categoryDescription);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordCategoryCount(HDIAGNOSTIC_EVENT_CATEGORY_DESCRIPTION hCategoryDescription, out uint32 categoryDescriptionCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqIsDiagnosticRecordSampledIn(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in Guid providerGroup, Guid* providerId, PWSTR providerName, uint32* eventId, PWSTR eventName, uint32* eventVersion, uint64* eventKeywords, out BOOL isSampledIn);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordPage(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, ref DIAGNOSTIC_DATA_SEARCH_CRITERIA searchCriteria, uint32 offset, uint32 pageRecordCount, int64 baseRowId, out HDIAGNOSTIC_RECORD hRecord);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqFreeDiagnosticRecordPage(HDIAGNOSTIC_RECORD hRecord);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordAtIndex(HDIAGNOSTIC_RECORD hRecord, uint32 index, out DIAGNOSTIC_DATA_RECORD record);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordCount(HDIAGNOSTIC_RECORD hRecord, out uint32 recordCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticReportStoreReportCount(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, out uint32 reportCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqCancelDiagnosticRecordOperation(HDIAGNOSTIC_DATA_QUERY_SESSION hSession);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticReport(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, out HDIAGNOSTIC_REPORT hReport);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqFreeDiagnosticReport(HDIAGNOSTIC_REPORT hReport);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticReportAtIndex(HDIAGNOSTIC_REPORT hReport, uint32 index, out DIAGNOSTIC_REPORT_DATA report);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticReportCount(HDIAGNOSTIC_REPORT hReport, out uint32 reportCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqExtractDiagnosticReport(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, uint32 reportStoreType, PWSTR reportKey, PWSTR destinationPath);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordTagDistribution(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, PWSTR* producerNames, uint32 producerNameCount, DIAGNOSTIC_DATA_EVENT_TAG_STATS** tagStats, out uint32 statCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordBinaryDistribution(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, PWSTR* producerNames, uint32 producerNameCount, uint32 topNBinaries, DIAGNOSTIC_DATA_EVENT_BINARY_STATS** binaryStats, out uint32 statCount);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetDiagnosticRecordSummary(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, PWSTR* producerNames, uint32 producerNameCount, out DIAGNOSTIC_DATA_GENERAL_STATS generalStats);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqSetTranscriptConfiguration(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, in DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION desiredConfig);
		[Import("diagnosticdataquery.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DdqGetTranscriptConfiguration(HDIAGNOSTIC_DATA_QUERY_SESSION hSession, out DIAGNOSTIC_DATA_EVENT_TRANSCRIPT_CONFIGURATION currentConfig);
	}
}
