using System;

// namespace System.EventLog
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EVT_VARIANT_TYPE_MASK = 127;
		public const uint32 EVT_VARIANT_TYPE_ARRAY = 128;
		public const uint32 EVT_READ_ACCESS = 1;
		public const uint32 EVT_WRITE_ACCESS = 2;
		public const uint32 EVT_CLEAR_ACCESS = 4;
		public const uint32 EVT_ALL_ACCESS = 7;
		
		// --- Typedefs ---
		
		public typealias EventLogHandle = int;
		public typealias EventSourceHandle = int;
		
		// --- Enums ---
		
		public enum REPORT_EVENT_TYPE : uint16
		{
			SUCCESS = 0,
			AUDIT_FAILURE = 16,
			AUDIT_SUCCESS = 8,
			ERROR_TYPE = 1,
			INFORMATION_TYPE = 4,
			WARNING_TYPE = 2,
		}
		public enum READ_EVENT_LOG_READ_FLAGS : uint32
		{
			SEEK_READ = 2,
			SEQUENTIAL_READ = 1,
		}
		public enum EVT_VARIANT_TYPE : int32
		{
			Null = 0,
			String = 1,
			AnsiString = 2,
			SByte = 3,
			Byte = 4,
			Int16 = 5,
			UInt16 = 6,
			Int32 = 7,
			UInt32 = 8,
			Int64 = 9,
			UInt64 = 10,
			Single = 11,
			Double = 12,
			Boolean = 13,
			Binary = 14,
			Guid = 15,
			SizeT = 16,
			FileTime = 17,
			SysTime = 18,
			Sid = 19,
			HexInt32 = 20,
			HexInt64 = 21,
			EvtHandle = 32,
			EvtXml = 35,
		}
		public enum EVT_LOGIN_CLASS : int32
		{
			EvtRpcLogin = 1,
		}
		public enum EVT_RPC_LOGIN_FLAGS : int32
		{
			Default = 0,
			Negotiate = 1,
			Kerberos = 2,
			NTLM = 3,
		}
		public enum EVT_QUERY_FLAGS : int32
		{
			ChannelPath = 1,
			FilePath = 2,
			ForwardDirection = 256,
			ReverseDirection = 512,
			TolerateQueryErrors = 4096,
		}
		public enum EVT_SEEK_FLAGS : int32
		{
			RelativeToFirst = 1,
			RelativeToLast = 2,
			RelativeToCurrent = 3,
			RelativeToBookmark = 4,
			OriginMask = 7,
			Strict = 65536,
		}
		[AllowDuplicates]
		public enum EVT_SUBSCRIBE_FLAGS : int32
		{
			ToFutureEvents = 1,
			StartAtOldestRecord = 2,
			StartAfterBookmark = 3,
			OriginMask = 3,
			TolerateQueryErrors = 4096,
			Strict = 65536,
		}
		public enum EVT_SUBSCRIBE_NOTIFY_ACTION : int32
		{
			Error = 0,
			Deliver = 1,
		}
		public enum EVT_SYSTEM_PROPERTY_ID : int32
		{
			ProviderName = 0,
			ProviderGuid = 1,
			EventID = 2,
			Qualifiers = 3,
			Level = 4,
			Task = 5,
			Opcode = 6,
			Keywords = 7,
			TimeCreated = 8,
			EventRecordId = 9,
			ActivityID = 10,
			RelatedActivityID = 11,
			ProcessID = 12,
			ThreadID = 13,
			Channel = 14,
			Computer = 15,
			UserID = 16,
			Version = 17,
			PropertyIdEND = 18,
		}
		public enum EVT_RENDER_CONTEXT_FLAGS : int32
		{
			Values = 0,
			System = 1,
			User = 2,
		}
		public enum EVT_RENDER_FLAGS : int32
		{
			EventValues = 0,
			EventXml = 1,
			Bookmark = 2,
		}
		public enum EVT_FORMAT_MESSAGE_FLAGS : int32
		{
			Event = 1,
			Level = 2,
			Task = 3,
			Opcode = 4,
			Keyword = 5,
			Channel = 6,
			Provider = 7,
			Id = 8,
			Xml = 9,
		}
		public enum EVT_OPEN_LOG_FLAGS : int32
		{
			ChannelPath = 1,
			FilePath = 2,
		}
		public enum EVT_LOG_PROPERTY_ID : int32
		{
			CreationTime = 0,
			LastAccessTime = 1,
			LastWriteTime = 2,
			FileSize = 3,
			Attributes = 4,
			NumberOfLogRecords = 5,
			OldestRecordNumber = 6,
			Full = 7,
		}
		public enum EVT_EXPORTLOG_FLAGS : int32
		{
			ChannelPath = 1,
			FilePath = 2,
			TolerateQueryErrors = 4096,
			Overwrite = 8192,
		}
		public enum EVT_CHANNEL_CONFIG_PROPERTY_ID : int32
		{
			ConfigEnabled = 0,
			ConfigIsolation = 1,
			ConfigType = 2,
			ConfigOwningPublisher = 3,
			ConfigClassicEventlog = 4,
			ConfigAccess = 5,
			LoggingConfigRetention = 6,
			LoggingConfigAutoBackup = 7,
			LoggingConfigMaxSize = 8,
			LoggingConfigLogFilePath = 9,
			PublishingConfigLevel = 10,
			PublishingConfigKeywords = 11,
			PublishingConfigControlGuid = 12,
			PublishingConfigBufferSize = 13,
			PublishingConfigMinBuffers = 14,
			PublishingConfigMaxBuffers = 15,
			PublishingConfigLatency = 16,
			PublishingConfigClockType = 17,
			PublishingConfigSidType = 18,
			PublisherList = 19,
			PublishingConfigFileMax = 20,
			ConfigPropertyIdEND = 21,
		}
		public enum EVT_CHANNEL_TYPE : int32
		{
			Admin = 0,
			Operational = 1,
			Analytic = 2,
			Debug = 3,
		}
		public enum EVT_CHANNEL_ISOLATION_TYPE : int32
		{
			Application = 0,
			System = 1,
			Custom = 2,
		}
		public enum EVT_CHANNEL_CLOCK_TYPE : int32
		{
			SystemTime = 0,
			QPC = 1,
		}
		public enum EVT_CHANNEL_SID_TYPE : int32
		{
			None = 0,
			Publishing = 1,
		}
		public enum EVT_CHANNEL_REFERENCE_FLAGS : int32
		{
			EvtChannelReferenceImported = 1,
		}
		public enum EVT_PUBLISHER_METADATA_PROPERTY_ID : int32
		{
			PublisherGuid = 0,
			ResourceFilePath = 1,
			ParameterFilePath = 2,
			MessageFilePath = 3,
			HelpLink = 4,
			PublisherMessageID = 5,
			ChannelReferences = 6,
			ChannelReferencePath = 7,
			ChannelReferenceIndex = 8,
			ChannelReferenceID = 9,
			ChannelReferenceFlags = 10,
			ChannelReferenceMessageID = 11,
			Levels = 12,
			LevelName = 13,
			LevelValue = 14,
			LevelMessageID = 15,
			Tasks = 16,
			TaskName = 17,
			TaskEventGuid = 18,
			TaskValue = 19,
			TaskMessageID = 20,
			Opcodes = 21,
			OpcodeName = 22,
			OpcodeValue = 23,
			OpcodeMessageID = 24,
			Keywords = 25,
			KeywordName = 26,
			KeywordValue = 27,
			KeywordMessageID = 28,
			PropertyIdEND = 29,
		}
		public enum EVT_EVENT_METADATA_PROPERTY_ID : int32
		{
			EventMetadataEventID = 0,
			EventMetadataEventVersion = 1,
			EventMetadataEventChannel = 2,
			EventMetadataEventLevel = 3,
			EventMetadataEventOpcode = 4,
			EventMetadataEventTask = 5,
			EventMetadataEventKeyword = 6,
			EventMetadataEventMessageID = 7,
			EventMetadataEventTemplate = 8,
			EvtEventMetadataPropertyIdEND = 9,
		}
		public enum EVT_QUERY_PROPERTY_ID : int32
		{
			Names = 0,
			Statuses = 1,
			PropertyIdEND = 2,
		}
		public enum EVT_EVENT_PROPERTY_ID : int32
		{
			QueryIDs = 0,
			Path = 1,
			PropertyIdEND = 2,
		}
		
		// --- Function Pointers ---
		
		public function uint32 EVT_SUBSCRIBE_CALLBACK(EVT_SUBSCRIBE_NOTIFY_ACTION Action, void* UserContext, int Event);
		
		// --- Structs ---
		
		[CRepr]
		public struct EVT_VARIANT
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 Count;
			public uint32 Type;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public BOOL BooleanVal;
				public int8 SByteVal;
				public int16 Int16Val;
				public int32 Int32Val;
				public int64 Int64Val;
				public uint8 ByteVal;
				public uint16 UInt16Val;
				public uint32 UInt32Val;
				public uint64 UInt64Val;
				public float SingleVal;
				public double DoubleVal;
				public uint64 FileTimeVal;
				public SYSTEMTIME* SysTimeVal;
				public Guid* GuidVal;
				public PWSTR StringVal;
				public PSTR AnsiStringVal;
				public uint8* BinaryVal;
				public PSID SidVal;
				public uint SizeTVal;
				public BOOL* BooleanArr;
				public int8* SByteArr;
				public int16* Int16Arr;
				public int32* Int32Arr;
				public int64* Int64Arr;
				public uint8* ByteArr;
				public uint16* UInt16Arr;
				public uint32* UInt32Arr;
				public uint64* UInt64Arr;
				public float* SingleArr;
				public double* DoubleArr;
				public FILETIME* FileTimeArr;
				public SYSTEMTIME* SysTimeArr;
				public Guid* GuidArr;
				public PWSTR* StringArr;
				public PSTR* AnsiStringArr;
				public PSID* SidArr;
				public uint* SizeTArr;
				public int EvtHandleVal;
				public PWSTR XmlVal;
				public PWSTR* XmlValArr;
			}
		}
		[CRepr]
		public struct EVT_RPC_LOGIN
		{
			public PWSTR Server;
			public PWSTR User;
			public PWSTR Domain;
			public PWSTR Password;
			public uint32 Flags;
		}
		[CRepr]
		public struct EVENTLOGRECORD
		{
			public uint32 Length;
			public uint32 Reserved;
			public uint32 RecordNumber;
			public uint32 TimeGenerated;
			public uint32 TimeWritten;
			public uint32 EventID;
			public REPORT_EVENT_TYPE EventType;
			public uint16 NumStrings;
			public uint16 EventCategory;
			public uint16 ReservedFlags;
			public uint32 ClosingRecordNumber;
			public uint32 StringOffset;
			public uint32 UserSidLength;
			public uint32 UserSidOffset;
			public uint32 DataLength;
			public uint32 DataOffset;
		}
		[CRepr]
		public struct EVENTSFORLOGFILE
		{
			public uint32 ulSize;
			public char16[256] szLogicalLogFile;
			public uint32 ulNumRecords;
			public EVENTLOGRECORD[0] pEventLogRecords;
		}
		[CRepr]
		public struct EVENTLOG_FULL_INFORMATION
		{
			public uint32 dwFull;
		}
		
		// --- Functions ---
		
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenSession(EVT_LOGIN_CLASS LoginClass, void* Login, uint32 Timeout, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtClose(int Object);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtCancel(int Object);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EvtGetExtendedStatus(uint32 BufferSize, char16* Buffer, out uint32 BufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtQuery(int Session, PWSTR Path, PWSTR Query, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtNext(int ResultSet, uint32 EventsSize, int* Events, uint32 Timeout, uint32 Flags, out uint32 Returned);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtSeek(int ResultSet, int64 Position, int Bookmark, uint32 Timeout, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtSubscribe(int Session, HANDLE SignalEvent, PWSTR ChannelPath, PWSTR Query, int Bookmark, void* Context, EVT_SUBSCRIBE_CALLBACK Callback, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtCreateRenderContext(uint32 ValuePathsCount, PWSTR* ValuePaths, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtRender(int Context, int Fragment, uint32 Flags, uint32 BufferSize, void* Buffer, out uint32 BufferUsed, out uint32 PropertyCount);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtFormatMessage(int PublisherMetadata, int Event, uint32 MessageId, uint32 ValueCount, EVT_VARIANT* Values, uint32 Flags, uint32 BufferSize, char16* Buffer, out uint32 BufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenLog(int Session, PWSTR Path, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetLogInfo(int Log, EVT_LOG_PROPERTY_ID PropertyId, uint32 PropertyValueBufferSize, EVT_VARIANT* PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtClearLog(int Session, PWSTR ChannelPath, PWSTR TargetFilePath, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtExportLog(int Session, PWSTR Path, PWSTR Query, PWSTR TargetFilePath, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtArchiveExportedLog(int Session, PWSTR LogFilePath, uint32 Locale, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenChannelEnum(int Session, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtNextChannelPath(int ChannelEnum, uint32 ChannelPathBufferSize, char16* ChannelPathBuffer, out uint32 ChannelPathBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenChannelConfig(int Session, PWSTR ChannelPath, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtSaveChannelConfig(int ChannelConfig, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtSetChannelConfigProperty(int ChannelConfig, EVT_CHANNEL_CONFIG_PROPERTY_ID PropertyId, uint32 Flags, ref EVT_VARIANT PropertyValue);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetChannelConfigProperty(int ChannelConfig, EVT_CHANNEL_CONFIG_PROPERTY_ID PropertyId, uint32 Flags, uint32 PropertyValueBufferSize, EVT_VARIANT* PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenPublisherEnum(int Session, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtNextPublisherId(int PublisherEnum, uint32 PublisherIdBufferSize, char16* PublisherIdBuffer, out uint32 PublisherIdBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenPublisherMetadata(int Session, PWSTR PublisherId, PWSTR LogFilePath, uint32 Locale, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetPublisherMetadataProperty(int PublisherMetadata, EVT_PUBLISHER_METADATA_PROPERTY_ID PropertyId, uint32 Flags, uint32 PublisherMetadataPropertyBufferSize, EVT_VARIANT* PublisherMetadataPropertyBuffer, out uint32 PublisherMetadataPropertyBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtOpenEventMetadataEnum(int PublisherMetadata, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtNextEventMetadata(int EventMetadataEnum, uint32 Flags);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetEventMetadataProperty(int EventMetadata, EVT_EVENT_METADATA_PROPERTY_ID PropertyId, uint32 Flags, uint32 EventMetadataPropertyBufferSize, EVT_VARIANT* EventMetadataPropertyBuffer, out uint32 EventMetadataPropertyBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetObjectArraySize(int ObjectArray, out uint32 ObjectArraySize);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetObjectArrayProperty(int ObjectArray, uint32 PropertyId, uint32 ArrayIndex, uint32 Flags, uint32 PropertyValueBufferSize, EVT_VARIANT* PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetQueryInfo(int QueryOrSubscription, EVT_QUERY_PROPERTY_ID PropertyId, uint32 PropertyValueBufferSize, EVT_VARIANT* PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EvtCreateBookmark(PWSTR BookmarkXml);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtUpdateBookmark(int Bookmark, int Event);
		[Import("wevtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvtGetEventInfo(int Event, EVT_EVENT_PROPERTY_ID PropertyId, uint32 PropertyValueBufferSize, EVT_VARIANT* PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClearEventLogA(HANDLE hEventLog, PSTR lpBackupFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClearEventLogW(HANDLE hEventLog, PWSTR lpBackupFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BackupEventLogA(HANDLE hEventLog, PSTR lpBackupFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BackupEventLogW(HANDLE hEventLog, PWSTR lpBackupFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseEventLog(EventLogHandle hEventLog);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeregisterEventSource(EventSourceHandle hEventLog);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL NotifyChangeEventLog(HANDLE hEventLog, HANDLE hEvent);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNumberOfEventLogRecords(HANDLE hEventLog, out uint32 NumberOfRecords);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOldestEventLogRecord(HANDLE hEventLog, out uint32 OldestRecord);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventLogHandle OpenEventLogA(PSTR lpUNCServerName, PSTR lpSourceName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventLogHandle OpenEventLogW(PWSTR lpUNCServerName, PWSTR lpSourceName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventSourceHandle RegisterEventSourceA(PSTR lpUNCServerName, PSTR lpSourceName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventSourceHandle RegisterEventSourceW(PWSTR lpUNCServerName, PWSTR lpSourceName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventLogHandle OpenBackupEventLogA(PSTR lpUNCServerName, PSTR lpFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern EventLogHandle OpenBackupEventLogW(PWSTR lpUNCServerName, PWSTR lpFileName);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadEventLogA(HANDLE hEventLog, READ_EVENT_LOG_READ_FLAGS dwReadFlags, uint32 dwRecordOffset, void* lpBuffer, uint32 nNumberOfBytesToRead, out uint32 pnBytesRead, out uint32 pnMinNumberOfBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadEventLogW(HANDLE hEventLog, READ_EVENT_LOG_READ_FLAGS dwReadFlags, uint32 dwRecordOffset, void* lpBuffer, uint32 nNumberOfBytesToRead, out uint32 pnBytesRead, out uint32 pnMinNumberOfBytesNeeded);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReportEventA(HANDLE hEventLog, REPORT_EVENT_TYPE wType, uint16 wCategory, uint32 dwEventID, PSID lpUserSid, uint16 wNumStrings, uint32 dwDataSize, PSTR* lpStrings, void* lpRawData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReportEventW(HANDLE hEventLog, REPORT_EVENT_TYPE wType, uint16 wCategory, uint32 dwEventID, PSID lpUserSid, uint16 wNumStrings, uint32 dwDataSize, PWSTR* lpStrings, void* lpRawData);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetEventLogInformation(HANDLE hEventLog, uint32 dwInfoLevel, void* lpBuffer, uint32 cbBufSize, out uint32 pcbBytesNeeded);
	}
}
