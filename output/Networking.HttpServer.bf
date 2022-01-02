using System;

// namespace Networking.HttpServer
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 HTTP_DEMAND_CBT = 4;
		public const uint32 HTTP_MAX_SERVER_QUEUE_LENGTH = 2147483647;
		public const uint32 HTTP_MIN_SERVER_QUEUE_LENGTH = 1;
		public const uint32 HTTP_AUTH_ENABLE_BASIC = 1;
		public const uint32 HTTP_AUTH_ENABLE_DIGEST = 2;
		public const uint32 HTTP_AUTH_ENABLE_NTLM = 4;
		public const uint32 HTTP_AUTH_ENABLE_NEGOTIATE = 8;
		public const uint32 HTTP_AUTH_ENABLE_KERBEROS = 16;
		public const uint32 HTTP_AUTH_EX_FLAG_ENABLE_KERBEROS_CREDENTIAL_CACHING = 1;
		public const uint32 HTTP_AUTH_EX_FLAG_CAPTURE_CREDENTIAL = 2;
		public const uint32 HTTP_CHANNEL_BIND_PROXY = 1;
		public const uint32 HTTP_CHANNEL_BIND_PROXY_COHOSTING = 32;
		public const uint32 HTTP_CHANNEL_BIND_NO_SERVICE_NAME_CHECK = 2;
		public const uint32 HTTP_CHANNEL_BIND_DOTLESS_SERVICE = 4;
		public const uint32 HTTP_CHANNEL_BIND_SECURE_CHANNEL_TOKEN = 8;
		public const uint32 HTTP_CHANNEL_BIND_CLIENT_SERVICE = 16;
		public const uint32 HTTP_LOG_FIELD_DATE = 1;
		public const uint32 HTTP_LOG_FIELD_TIME = 2;
		public const uint32 HTTP_LOG_FIELD_CLIENT_IP = 4;
		public const uint32 HTTP_LOG_FIELD_USER_NAME = 8;
		public const uint32 HTTP_LOG_FIELD_SITE_NAME = 16;
		public const uint32 HTTP_LOG_FIELD_COMPUTER_NAME = 32;
		public const uint32 HTTP_LOG_FIELD_SERVER_IP = 64;
		public const uint32 HTTP_LOG_FIELD_METHOD = 128;
		public const uint32 HTTP_LOG_FIELD_URI_STEM = 256;
		public const uint32 HTTP_LOG_FIELD_URI_QUERY = 512;
		public const uint32 HTTP_LOG_FIELD_STATUS = 1024;
		public const uint32 HTTP_LOG_FIELD_WIN32_STATUS = 2048;
		public const uint32 HTTP_LOG_FIELD_BYTES_SENT = 4096;
		public const uint32 HTTP_LOG_FIELD_BYTES_RECV = 8192;
		public const uint32 HTTP_LOG_FIELD_TIME_TAKEN = 16384;
		public const uint32 HTTP_LOG_FIELD_SERVER_PORT = 32768;
		public const uint32 HTTP_LOG_FIELD_USER_AGENT = 65536;
		public const uint32 HTTP_LOG_FIELD_COOKIE = 131072;
		public const uint32 HTTP_LOG_FIELD_REFERER = 262144;
		public const uint32 HTTP_LOG_FIELD_VERSION = 524288;
		public const uint32 HTTP_LOG_FIELD_HOST = 1048576;
		public const uint32 HTTP_LOG_FIELD_SUB_STATUS = 2097152;
		public const uint32 HTTP_LOG_FIELD_STREAM_ID = 134217728;
		public const uint32 HTTP_LOG_FIELD_STREAM_ID_EX = 268435456;
		public const uint32 HTTP_LOG_FIELD_TRANSPORT_TYPE = 536870912;
		public const uint32 HTTP_LOG_FIELD_CLIENT_PORT = 4194304;
		public const uint32 HTTP_LOG_FIELD_URI = 8388608;
		public const uint32 HTTP_LOG_FIELD_SITE_ID = 16777216;
		public const uint32 HTTP_LOG_FIELD_REASON = 33554432;
		public const uint32 HTTP_LOG_FIELD_QUEUE_NAME = 67108864;
		public const uint32 HTTP_LOG_FIELD_CORRELATION_ID = 1073741824;
		public const uint32 HTTP_LOGGING_FLAG_LOCAL_TIME_ROLLOVER = 1;
		public const uint32 HTTP_LOGGING_FLAG_USE_UTF8_CONVERSION = 2;
		public const uint32 HTTP_LOGGING_FLAG_LOG_ERRORS_ONLY = 4;
		public const uint32 HTTP_LOGGING_FLAG_LOG_SUCCESS_ONLY = 8;
		public const uint32 HTTP_CREATE_REQUEST_QUEUE_FLAG_OPEN_EXISTING = 1;
		public const uint32 HTTP_CREATE_REQUEST_QUEUE_FLAG_CONTROLLER = 2;
		public const uint32 HTTP_CREATE_REQUEST_QUEUE_FLAG_DELEGATION = 8;
		public const uint32 HTTP_RECEIVE_REQUEST_ENTITY_BODY_FLAG_FILL_BUFFER = 1;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_DISCONNECT = 1;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_MORE_DATA = 2;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_BUFFER_DATA = 4;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_ENABLE_NAGLING = 8;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_PROCESS_RANGES = 32;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_OPAQUE = 64;
		public const uint32 HTTP_SEND_RESPONSE_FLAG_GOAWAY = 256;
		public const uint32 HTTP_FLUSH_RESPONSE_FLAG_RECURSIVE = 1;
		public const uint32 HTTP_URL_FLAG_REMOVE_ALL = 1;
		public const uint32 HTTP_RECEIVE_SECURE_CHANNEL_TOKEN = 1;
		public const uint32 HTTP_RECEIVE_FULL_CHAIN = 2;
		public const uint32 HTTP_REQUEST_SIZING_INFO_FLAG_TCP_FAST_OPEN = 1;
		public const uint32 HTTP_REQUEST_SIZING_INFO_FLAG_TLS_SESSION_RESUMPTION = 2;
		public const uint32 HTTP_REQUEST_SIZING_INFO_FLAG_TLS_FALSE_START = 4;
		public const uint32 HTTP_REQUEST_SIZING_INFO_FLAG_FIRST_REQUEST = 8;
		public const uint32 HTTP_REQUEST_AUTH_FLAG_TOKEN_FOR_CACHED_CRED = 1;
		public const uint32 HTTP_REQUEST_FLAG_MORE_ENTITY_BODY_EXISTS = 1;
		public const uint32 HTTP_REQUEST_FLAG_IP_ROUTED = 2;
		public const uint32 HTTP_REQUEST_FLAG_HTTP2 = 4;
		public const uint32 HTTP_REQUEST_FLAG_HTTP3 = 8;
		public const uint32 HTTP_RESPONSE_FLAG_MULTIPLE_ENCODINGS_AVAILABLE = 1;
		public const uint32 HTTP_RESPONSE_FLAG_MORE_ENTITY_BODY_EXISTS = 2;
		public const uint32 HTTP_RESPONSE_INFO_FLAGS_PRESERVE_ORDER = 1;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_USE_DS_MAPPER = 1;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_NEGOTIATE_CLIENT_CERT = 2;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_NO_RAW_FILTER = 4;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_REJECT = 8;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_HTTP2 = 16;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_QUIC = 32;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_TLS13 = 64;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_OCSP_STAPLING = 128;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_ENABLE_TOKEN_BINDING = 256;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_LOG_EXTENDED_EVENTS = 512;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_LEGACY_TLS = 1024;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_ENABLE_SESSION_TICKET = 2048;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_DISABLE_TLS12 = 4096;
		public const uint32 HTTP_SERVICE_CONFIG_SSL_FLAG_ENABLE_CLIENT_CORRELATION = 8192;
		public const uint32 HTTP_REQUEST_PROPERTY_SNI_HOST_MAX_LENGTH = 255;
		public const uint32 HTTP_REQUEST_PROPERTY_SNI_FLAG_SNI_USED = 1;
		public const uint32 HTTP_REQUEST_PROPERTY_SNI_FLAG_NO_SNI = 2;
		
		// --- Enums ---
		
		public enum HTTP_RECEIVE_HTTP_REQUEST_FLAGS : uint32
		{
			COPY_BODY = 1,
			FLUSH_BODY = 2,
		}
		public enum HTTP_INITIALIZE : uint32
		{
			CONFIG = 2,
			SERVER = 1,
		}
		public enum HTTP_SERVER_PROPERTY : int32
		{
			ServerAuthenticationProperty = 0,
			ServerLoggingProperty = 1,
			ServerQosProperty = 2,
			ServerTimeoutsProperty = 3,
			ServerQueueLengthProperty = 4,
			ServerStateProperty = 5,
			Server503VerbosityProperty = 6,
			ServerBindingProperty = 7,
			ServerExtendedAuthenticationProperty = 8,
			ServerListenEndpointProperty = 9,
			ServerChannelBindProperty = 10,
			ServerProtectionLevelProperty = 11,
			ServerDelegationProperty = 16,
		}
		public enum HTTP_ENABLED_STATE : int32
		{
			Active = 0,
			Inactive = 1,
		}
		public enum HTTP_503_RESPONSE_VERBOSITY : int32
		{
			Basic = 0,
			Limited = 1,
			Full = 2,
		}
		public enum HTTP_QOS_SETTING_TYPE : int32
		{
			Bandwidth = 0,
			ConnectionLimit = 1,
			FlowRate = 2,
		}
		public enum HTTP_SERVICE_CONFIG_TIMEOUT_KEY : int32
		{
			IdleConnectionTimeout = 0,
			HeaderWaitTimeout = 1,
		}
		public enum HTTP_SERVICE_CONFIG_SETTING_KEY : int32
		{
			None = 0,
			TlsThrottle = 1,
		}
		public enum HTTP_SERVICE_BINDING_TYPE : int32
		{
			None = 0,
			W = 1,
			A = 2,
		}
		public enum HTTP_AUTHENTICATION_HARDENING_LEVELS : int32
		{
			Legacy = 0,
			Medium = 1,
			Strict = 2,
		}
		public enum HTTP_LOGGING_TYPE : int32
		{
			W3C = 0,
			IIS = 1,
			NCSA = 2,
			Raw = 3,
		}
		public enum HTTP_LOGGING_ROLLOVER_TYPE : int32
		{
			Size = 0,
			Daily = 1,
			Weekly = 2,
			Monthly = 3,
			Hourly = 4,
		}
		public enum HTTP_PROTECTION_LEVEL_TYPE : int32
		{
			Unrestricted = 0,
			EdgeRestricted = 1,
			Restricted = 2,
		}
		public enum HTTP_SCHEME : int32
		{
			Http = 0,
			Https = 1,
			Maximum = 2,
		}
		public enum HTTP_VERB : int32
		{
			Unparsed = 0,
			Unknown = 1,
			Invalid = 2,
			OPTIONS = 3,
			GET = 4,
			HEAD = 5,
			POST = 6,
			PUT = 7,
			DELETE = 8,
			TRACE = 9,
			CONNECT = 10,
			TRACK = 11,
			MOVE = 12,
			COPY = 13,
			PROPFIND = 14,
			PROPPATCH = 15,
			MKCOL = 16,
			LOCK = 17,
			UNLOCK = 18,
			SEARCH = 19,
			Maximum = 20,
		}
		[AllowDuplicates]
		public enum HTTP_HEADER_ID : int32
		{
			CacheControl = 0,
			Connection = 1,
			Date = 2,
			KeepAlive = 3,
			Pragma = 4,
			Trailer = 5,
			TransferEncoding = 6,
			Upgrade = 7,
			Via = 8,
			Warning = 9,
			Allow = 10,
			ContentLength = 11,
			ContentType = 12,
			ContentEncoding = 13,
			ContentLanguage = 14,
			ContentLocation = 15,
			ContentMd5 = 16,
			ContentRange = 17,
			Expires = 18,
			LastModified = 19,
			Accept = 20,
			AcceptCharset = 21,
			AcceptEncoding = 22,
			AcceptLanguage = 23,
			Authorization = 24,
			Cookie = 25,
			Expect = 26,
			From = 27,
			Host = 28,
			IfMatch = 29,
			IfModifiedSince = 30,
			IfNoneMatch = 31,
			IfRange = 32,
			IfUnmodifiedSince = 33,
			MaxForwards = 34,
			ProxyAuthorization = 35,
			Referer = 36,
			Range = 37,
			Te = 38,
			Translate = 39,
			UserAgent = 40,
			RequestMaximum = 41,
			AcceptRanges = 20,
			Age = 21,
			Etag = 22,
			Location = 23,
			ProxyAuthenticate = 24,
			RetryAfter = 25,
			Server = 26,
			SetCookie = 27,
			Vary = 28,
			WwwAuthenticate = 29,
			ResponseMaximum = 30,
			Maximum = 41,
		}
		public enum HTTP_LOG_DATA_TYPE : int32
		{
			HttpLogDataTypeFields = 0,
		}
		public enum HTTP_DATA_CHUNK_TYPE : int32
		{
			FromMemory = 0,
			FromFileHandle = 1,
			FromFragmentCache = 2,
			FromFragmentCacheEx = 3,
			Trailers = 4,
			Maximum = 5,
		}
		public enum HTTP_DELEGATE_REQUEST_PROPERTY_ID : int32
		{
			ReservedProperty = 0,
			DelegateUrlProperty = 1,
		}
		public enum HTTP_CREATE_REQUEST_QUEUE_PROPERTY_ID : int32
		{
			ExternalIdProperty = 1,
			Max = 2,
		}
		public enum HTTP_AUTH_STATUS : int32
		{
			Success = 0,
			NotAuthenticated = 1,
			Failure = 2,
		}
		public enum HTTP_REQUEST_AUTH_TYPE : int32
		{
			None = 0,
			Basic = 1,
			Digest = 2,
			NTLM = 3,
			Negotiate = 4,
			Kerberos = 5,
		}
		public enum HTTP_REQUEST_SIZING_TYPE : int32
		{
			TlsHandshakeLeg1ClientData = 0,
			TlsHandshakeLeg1ServerData = 1,
			TlsHandshakeLeg2ClientData = 2,
			TlsHandshakeLeg2ServerData = 3,
			Headers = 4,
			Max = 5,
		}
		public enum HTTP_REQUEST_TIMING_TYPE : int32
		{
			ConnectionStart = 0,
			DataStart = 1,
			TlsCertificateLoadStart = 2,
			TlsCertificateLoadEnd = 3,
			TlsHandshakeLeg1Start = 4,
			TlsHandshakeLeg1End = 5,
			TlsHandshakeLeg2Start = 6,
			TlsHandshakeLeg2End = 7,
			TlsAttributesQueryStart = 8,
			TlsAttributesQueryEnd = 9,
			TlsClientCertQueryStart = 10,
			TlsClientCertQueryEnd = 11,
			Http2StreamStart = 12,
			Http2HeaderDecodeStart = 13,
			Http2HeaderDecodeEnd = 14,
			RequestHeaderParseStart = 15,
			RequestHeaderParseEnd = 16,
			RequestRoutingStart = 17,
			RequestRoutingEnd = 18,
			RequestQueuedForInspection = 19,
			RequestDeliveredForInspection = 20,
			RequestReturnedAfterInspection = 21,
			RequestQueuedForDelegation = 22,
			RequestDeliveredForDelegation = 23,
			RequestReturnedAfterDelegation = 24,
			RequestQueuedForIO = 25,
			RequestDeliveredForIO = 26,
			Http3StreamStart = 27,
			Http3HeaderDecodeStart = 28,
			Http3HeaderDecodeEnd = 29,
			Max = 30,
		}
		public enum HTTP_REQUEST_INFO_TYPE : int32
		{
			Auth = 0,
			ChannelBind = 1,
			SslProtocol = 2,
			SslTokenBindingDraft = 3,
			SslTokenBinding = 4,
			RequestTiming = 5,
			TcpInfoV0 = 6,
			RequestSizing = 7,
			QuicStats = 8,
			TcpInfoV1 = 9,
		}
		public enum HTTP_RESPONSE_INFO_TYPE : int32
		{
			MultipleKnownHeaders = 0,
			AuthenticationProperty = 1,
			QoSProperty = 2,
			ChannelBind = 3,
		}
		public enum HTTP_CACHE_POLICY_TYPE : int32
		{
			Nocache = 0,
			UserInvalidates = 1,
			TimeToLive = 2,
			Maximum = 3,
		}
		public enum HTTP_SERVICE_CONFIG_ID : int32
		{
			IPListenList = 0,
			SSLCertInfo = 1,
			UrlAclInfo = 2,
			Timeout = 3,
			Cache = 4,
			SslSniCertInfo = 5,
			SslCcsCertInfo = 6,
			Setting = 7,
			SslCertInfoEx = 8,
			SslSniCertInfoEx = 9,
			SslCcsCertInfoEx = 10,
			SslScopedCcsCertInfo = 11,
			SslScopedCcsCertInfoEx = 12,
			Max = 13,
		}
		public enum HTTP_SERVICE_CONFIG_QUERY_TYPE : int32
		{
			Exact = 0,
			Next = 1,
			Max = 2,
		}
		public enum HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE : int32
		{
			Http2Window = 0,
			Http2SettingsLimits = 1,
			HttpPerformance = 2,
			TlsRestrictions = 3,
			ErrorHeaders = 4,
			TlsSessionTicketKeys = 5,
			Max = 6,
		}
		public enum HTTP_PERFORMANCE_PARAM_TYPE : int32
		{
			SendBufferingFlags = 0,
			AggressiveICW = 1,
			MaxSendBufferSize = 2,
			MaxConcurrentClientStreams = 3,
			MaxReceiveBufferSize = 4,
			DecryptOnSspiThread = 5,
			Max = 6,
		}
		public enum HTTP_SERVICE_CONFIG_CACHE_KEY : int32
		{
			MaxCacheResponseSize = 0,
			CacheRangeChunkSize = 1,
		}
		public enum HTTP_REQUEST_PROPERTY : int32
		{
			Isb = 0,
			TcpInfoV0 = 1,
			QuicStats = 2,
			TcpInfoV1 = 3,
			Sni = 4,
			StreamError = 5,
			WskApiTimings = 6,
			QuicApiTimings = 7,
		}
		public enum HTTP_FEATURE_ID : int32
		{
			FeatureUnknown = 0,
			FeatureResponseTrailers = 1,
			FeatureApiTimings = 2,
			FeatureDelegateEx = 3,
			FeatureHttp3 = 4,
			Featuremax = -1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct HTTP_PROPERTY_FLAGS
		{
			public uint32 _bitfield;
		}
		[CRepr]
		public struct HTTP_STATE_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public HTTP_ENABLED_STATE State;
		}
		[CRepr]
		public struct HTTP_QOS_SETTING_INFO
		{
			public HTTP_QOS_SETTING_TYPE QosType;
			public void* QosSetting;
		}
		[CRepr]
		public struct HTTP_CONNECTION_LIMIT_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint32 MaxConnections;
		}
		[CRepr]
		public struct HTTP_BANDWIDTH_LIMIT_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint32 MaxBandwidth;
		}
		[CRepr]
		public struct HTTP_FLOWRATE_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint32 MaxBandwidth;
			public uint32 MaxPeakBandwidth;
			public uint32 BurstSize;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_TIMEOUT_SET
		{
			public HTTP_SERVICE_CONFIG_TIMEOUT_KEY KeyDesc;
			public uint16 ParamDesc;
		}
		[CRepr]
		public struct HTTP_TIMEOUT_LIMIT_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint16 EntityBody;
			public uint16 DrainEntityBody;
			public uint16 RequestQueue;
			public uint16 IdleConnection;
			public uint16 HeaderWait;
			public uint32 MinSendRate;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SETTING_SET
		{
			public HTTP_SERVICE_CONFIG_SETTING_KEY KeyDesc;
			public uint32 ParamDesc;
		}
		[CRepr]
		public struct HTTP_LISTEN_ENDPOINT_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public BOOLEAN EnableSharing;
		}
		[CRepr]
		public struct HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS
		{
			public uint16 DomainNameLength;
			public PWSTR DomainName;
			public uint16 RealmLength;
			public PWSTR Realm;
		}
		[CRepr]
		public struct HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS
		{
			public uint16 RealmLength;
			public PWSTR Realm;
		}
		[CRepr]
		public struct HTTP_SERVER_AUTHENTICATION_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint32 AuthSchemes;
			public BOOLEAN ReceiveMutualAuth;
			public BOOLEAN ReceiveContextHandle;
			public BOOLEAN DisableNTLMCredentialCaching;
			public uint8 ExFlags;
			public HTTP_SERVER_AUTHENTICATION_DIGEST_PARAMS DigestParams;
			public HTTP_SERVER_AUTHENTICATION_BASIC_PARAMS BasicParams;
		}
		[CRepr]
		public struct HTTP_SERVICE_BINDING_BASE
		{
			public HTTP_SERVICE_BINDING_TYPE Type;
		}
		[CRepr]
		public struct HTTP_SERVICE_BINDING_A
		{
			public HTTP_SERVICE_BINDING_BASE Base;
			public PSTR Buffer;
			public uint32 BufferSize;
		}
		[CRepr]
		public struct HTTP_SERVICE_BINDING_W
		{
			public HTTP_SERVICE_BINDING_BASE Base;
			public PWSTR Buffer;
			public uint32 BufferSize;
		}
		[CRepr]
		public struct HTTP_CHANNEL_BIND_INFO
		{
			public HTTP_AUTHENTICATION_HARDENING_LEVELS Hardening;
			public uint32 Flags;
			public HTTP_SERVICE_BINDING_BASE** ServiceNames;
			public uint32 NumberOfServiceNames;
		}
		[CRepr]
		public struct HTTP_REQUEST_CHANNEL_BIND_STATUS
		{
			public HTTP_SERVICE_BINDING_BASE* ServiceName;
			public uint8* ChannelToken;
			public uint32 ChannelTokenSize;
			public uint32 Flags;
		}
		[CRepr]
		public struct HTTP_REQUEST_TOKEN_BINDING_INFO
		{
			public uint8* TokenBinding;
			public uint32 TokenBindingSize;
			public uint8* EKM;
			public uint32 EKMSize;
			public uint8 KeyType;
		}
		[CRepr]
		public struct HTTP_LOGGING_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public uint32 LoggingFlags;
			public PWSTR SoftwareName;
			public uint16 SoftwareNameLength;
			public uint16 DirectoryNameLength;
			public PWSTR DirectoryName;
			public HTTP_LOGGING_TYPE Format;
			public uint32 Fields;
			public void* pExtFields;
			public uint16 NumOfExtFields;
			public uint16 MaxRecordSize;
			public HTTP_LOGGING_ROLLOVER_TYPE RolloverType;
			public uint32 RolloverSize;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		[CRepr]
		public struct HTTP_BINDING_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public HANDLE RequestQueueHandle;
		}
		[CRepr]
		public struct HTTP_PROTECTION_LEVEL_INFO
		{
			public HTTP_PROPERTY_FLAGS Flags;
			public HTTP_PROTECTION_LEVEL_TYPE Level;
		}
		[CRepr]
		public struct HTTP_BYTE_RANGE
		{
			public ULARGE_INTEGER StartingOffset;
			public ULARGE_INTEGER Length;
		}
		[CRepr]
		public struct HTTP_VERSION
		{
			public uint16 MajorVersion;
			public uint16 MinorVersion;
		}
		[CRepr]
		public struct HTTP_KNOWN_HEADER
		{
			public uint16 RawValueLength;
			public PSTR pRawValue;
		}
		[CRepr]
		public struct HTTP_UNKNOWN_HEADER
		{
			public uint16 NameLength;
			public uint16 RawValueLength;
			public PSTR pName;
			public PSTR pRawValue;
		}
		[CRepr]
		public struct HTTP_LOG_DATA
		{
			public HTTP_LOG_DATA_TYPE Type;
		}
		[CRepr]
		public struct HTTP_LOG_FIELDS_DATA
		{
			public HTTP_LOG_DATA Base;
			public uint16 UserNameLength;
			public uint16 UriStemLength;
			public uint16 ClientIpLength;
			public uint16 ServerNameLength;
			public uint16 ServiceNameLength;
			public uint16 ServerIpLength;
			public uint16 MethodLength;
			public uint16 UriQueryLength;
			public uint16 HostLength;
			public uint16 UserAgentLength;
			public uint16 CookieLength;
			public uint16 ReferrerLength;
			public PWSTR UserName;
			public PWSTR UriStem;
			public PSTR ClientIp;
			public PSTR ServerName;
			public PSTR ServiceName;
			public PSTR ServerIp;
			public PSTR Method;
			public PSTR UriQuery;
			public PSTR Host;
			public PSTR UserAgent;
			public PSTR Cookie;
			public PSTR Referrer;
			public uint16 ServerPort;
			public uint16 ProtocolStatus;
			public uint32 Win32Status;
			public HTTP_VERB MethodNum;
			public uint16 SubStatus;
		}
		[CRepr]
		public struct HTTP_DATA_CHUNK
		{
			public HTTP_DATA_CHUNK_TYPE DataChunkType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _FromMemory_e__Struct FromMemory;
				public _FromFileHandle_e__Struct FromFileHandle;
				public _FromFragmentCache_e__Struct FromFragmentCache;
				public _FromFragmentCacheEx_e__Struct FromFragmentCacheEx;
				public _Trailers_e__Struct Trailers;
				
				[CRepr]
				public struct _FromFragmentCacheEx_e__Struct
				{
					public HTTP_BYTE_RANGE ByteRange;
					public PWSTR pFragmentName;
				}
				[CRepr]
				public struct _FromFileHandle_e__Struct
				{
					public HTTP_BYTE_RANGE ByteRange;
					public HANDLE FileHandle;
				}
				[CRepr]
				public struct _FromFragmentCache_e__Struct
				{
					public uint16 FragmentNameLength;
					public PWSTR pFragmentName;
				}
				[CRepr]
				public struct _FromMemory_e__Struct
				{
					public void* pBuffer;
					public uint32 BufferLength;
				}
				[CRepr]
				public struct _Trailers_e__Struct
				{
					public uint16 TrailerCount;
					public HTTP_UNKNOWN_HEADER* pTrailers;
				}
			}
		}
		[CRepr]
		public struct HTTP_REQUEST_HEADERS
		{
			public uint16 UnknownHeaderCount;
			public HTTP_UNKNOWN_HEADER* pUnknownHeaders;
			public uint16 TrailerCount;
			public HTTP_UNKNOWN_HEADER* pTrailers;
			public HTTP_KNOWN_HEADER[41] KnownHeaders;
		}
		[CRepr]
		public struct HTTP_RESPONSE_HEADERS
		{
			public uint16 UnknownHeaderCount;
			public HTTP_UNKNOWN_HEADER* pUnknownHeaders;
			public uint16 TrailerCount;
			public HTTP_UNKNOWN_HEADER* pTrailers;
			public HTTP_KNOWN_HEADER[30] KnownHeaders;
		}
		[CRepr]
		public struct HTTP_DELEGATE_REQUEST_PROPERTY_INFO
		{
			public HTTP_DELEGATE_REQUEST_PROPERTY_ID PropertyId;
			public uint32 PropertyInfoLength;
			public void* PropertyInfo;
		}
		[CRepr]
		public struct HTTP_CREATE_REQUEST_QUEUE_PROPERTY_INFO
		{
			public HTTP_CREATE_REQUEST_QUEUE_PROPERTY_ID PropertyId;
			public uint32 PropertyInfoLength;
			public void* PropertyInfo;
		}
		[CRepr]
		public struct HTTP_TRANSPORT_ADDRESS
		{
			public SOCKADDR* pRemoteAddress;
			public SOCKADDR* pLocalAddress;
		}
		[CRepr]
		public struct HTTP_COOKED_URL
		{
			public uint16 FullUrlLength;
			public uint16 HostLength;
			public uint16 AbsPathLength;
			public uint16 QueryStringLength;
			public PWSTR pFullUrl;
			public PWSTR pHost;
			public PWSTR pAbsPath;
			public PWSTR pQueryString;
		}
		[CRepr]
		public struct HTTP_SSL_CLIENT_CERT_INFO
		{
			public uint32 CertFlags;
			public uint32 CertEncodedSize;
			public uint8* pCertEncoded;
			public HANDLE Token;
			public BOOLEAN CertDeniedByMapper;
		}
		[CRepr]
		public struct HTTP_SSL_INFO
		{
			public uint16 ServerCertKeySize;
			public uint16 ConnectionKeySize;
			public uint32 ServerCertIssuerSize;
			public uint32 ServerCertSubjectSize;
			public PSTR pServerCertIssuer;
			public PSTR pServerCertSubject;
			public HTTP_SSL_CLIENT_CERT_INFO* pClientCertInfo;
			public uint32 SslClientCertNegotiated;
		}
		[CRepr]
		public struct HTTP_SSL_PROTOCOL_INFO
		{
			public uint32 Protocol;
			public uint32 CipherType;
			public uint32 CipherStrength;
			public uint32 HashType;
			public uint32 HashStrength;
			public uint32 KeyExchangeType;
			public uint32 KeyExchangeStrength;
		}
		[CRepr]
		public struct HTTP_REQUEST_SIZING_INFO
		{
			public uint64 Flags;
			public uint32 RequestIndex;
			public uint32 RequestSizingCount;
			public uint64[5] RequestSizing;
		}
		[CRepr]
		public struct HTTP_REQUEST_TIMING_INFO
		{
			public uint32 RequestTimingCount;
			public uint64[30] RequestTiming;
		}
		[CRepr]
		public struct HTTP_REQUEST_INFO
		{
			public HTTP_REQUEST_INFO_TYPE InfoType;
			public uint32 InfoLength;
			public void* pInfo;
		}
		[CRepr]
		public struct HTTP_REQUEST_AUTH_INFO
		{
			public HTTP_AUTH_STATUS AuthStatus;
			public int32 SecStatus;
			public uint32 Flags;
			public HTTP_REQUEST_AUTH_TYPE AuthType;
			public HANDLE AccessToken;
			public uint32 ContextAttributes;
			public uint32 PackedContextLength;
			public uint32 PackedContextType;
			public void* PackedContext;
			public uint32 MutualAuthDataLength;
			public PSTR pMutualAuthData;
			public uint16 PackageNameLength;
			public PWSTR pPackageName;
		}
		[CRepr]
		public struct HTTP_REQUEST_V1
		{
			public uint32 Flags;
			public uint64 ConnectionId;
			public uint64 RequestId;
			public uint64 UrlContext;
			public HTTP_VERSION Version;
			public HTTP_VERB Verb;
			public uint16 UnknownVerbLength;
			public uint16 RawUrlLength;
			public PSTR pUnknownVerb;
			public PSTR pRawUrl;
			public HTTP_COOKED_URL CookedUrl;
			public HTTP_TRANSPORT_ADDRESS Address;
			public HTTP_REQUEST_HEADERS Headers;
			public uint64 BytesReceived;
			public uint16 EntityChunkCount;
			public HTTP_DATA_CHUNK* pEntityChunks;
			public uint64 RawConnectionId;
			public HTTP_SSL_INFO* pSslInfo;
		}
		[CRepr]
		public struct HTTP_REQUEST_V2
		{
			public HTTP_REQUEST_V1 __AnonymousBase_http_L1861_C35;
			public uint16 RequestInfoCount;
			public HTTP_REQUEST_INFO* pRequestInfo;
		}
		[CRepr]
		public struct HTTP_RESPONSE_V1
		{
			public uint32 Flags;
			public HTTP_VERSION Version;
			public uint16 StatusCode;
			public uint16 ReasonLength;
			public PSTR pReason;
			public HTTP_RESPONSE_HEADERS Headers;
			public uint16 EntityChunkCount;
			public HTTP_DATA_CHUNK* pEntityChunks;
		}
		[CRepr]
		public struct HTTP_RESPONSE_INFO
		{
			public HTTP_RESPONSE_INFO_TYPE Type;
			public uint32 Length;
			public void* pInfo;
		}
		[CRepr]
		public struct HTTP_MULTIPLE_KNOWN_HEADERS
		{
			public HTTP_HEADER_ID HeaderId;
			public uint32 Flags;
			public uint16 KnownHeaderCount;
			public HTTP_KNOWN_HEADER* KnownHeaders;
		}
		[CRepr]
		public struct HTTP_RESPONSE_V2
		{
			public HTTP_RESPONSE_V1 __AnonymousBase_http_L2050_C36;
			public uint16 ResponseInfoCount;
			public HTTP_RESPONSE_INFO* pResponseInfo;
		}
		[CRepr]
		public struct HTTPAPI_VERSION
		{
			public uint16 HttpApiMajorVersion;
			public uint16 HttpApiMinorVersion;
		}
		[CRepr]
		public struct HTTP_CACHE_POLICY
		{
			public HTTP_CACHE_POLICY_TYPE Policy;
			public uint32 SecondsToLive;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_KEY
		{
			public SOCKADDR* pIpPort;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_KEY_EX
		{
			public SOCKADDR_STORAGE IpPort;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SNI_KEY
		{
			public SOCKADDR_STORAGE IpPort;
			public PWSTR Host;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_CCS_KEY
		{
			public SOCKADDR_STORAGE LocalAddress;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_PARAM
		{
			public uint32 SslHashLength;
			public void* pSslHash;
			public Guid AppId;
			public PWSTR pSslCertStoreName;
			public uint32 DefaultCertCheckMode;
			public uint32 DefaultRevocationFreshnessTime;
			public uint32 DefaultRevocationUrlRetrievalTimeout;
			public PWSTR pDefaultSslCtlIdentifier;
			public PWSTR pDefaultSslCtlStoreName;
			public uint32 DefaultFlags;
		}
		[CRepr]
		public struct HTTP2_WINDOW_SIZE_PARAM
		{
			public uint32 Http2ReceiveWindowSize;
		}
		[CRepr]
		public struct HTTP2_SETTINGS_LIMITS_PARAM
		{
			public uint32 Http2MaxSettingsPerFrame;
			public uint32 Http2MaxSettingsPerMinute;
		}
		[CRepr]
		public struct HTTP_PERFORMANCE_PARAM
		{
			public HTTP_PERFORMANCE_PARAM_TYPE Type;
			public uint32 BufferSize;
			public void* Buffer;
		}
		[CRepr]
		public struct HTTP_TLS_RESTRICTIONS_PARAM
		{
			public uint32 RestrictionCount;
			public void* TlsRestrictions;
		}
		[CRepr]
		public struct HTTP_ERROR_HEADERS_PARAM
		{
			public uint16 StatusCode;
			public uint16 HeaderCount;
			public HTTP_UNKNOWN_HEADER* Headers;
		}
		[CRepr]
		public struct HTTP_TLS_SESSION_TICKET_KEYS_PARAM
		{
			public uint32 SessionTicketKeyCount;
			public void* SessionTicketKeys;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_PARAM_EX
		{
			public HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE ParamType;
			public uint64 Flags;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HTTP2_WINDOW_SIZE_PARAM Http2WindowSizeParam;
				public HTTP2_SETTINGS_LIMITS_PARAM Http2SettingsLimitsParam;
				public HTTP_PERFORMANCE_PARAM HttpPerformanceParam;
				public HTTP_TLS_RESTRICTIONS_PARAM HttpTlsRestrictionsParam;
				public HTTP_ERROR_HEADERS_PARAM HttpErrorHeadersParam;
				public HTTP_TLS_SESSION_TICKET_KEYS_PARAM HttpTlsSessionTicketKeysParam;
			}
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SET
		{
			public HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SNI_SET
		{
			public HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_CCS_SET
		{
			public HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SET_EX
		{
			public HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SNI_SET_EX
		{
			public HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_CCS_SET_EX
		{
			public HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_SSL_PARAM_EX ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_QUERY
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_KEY KeyDesc;
			public uint32 dwToken;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SNI_QUERY
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
			public uint32 dwToken;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_CCS_QUERY
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
			public uint32 dwToken;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_QUERY_EX
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_KEY_EX KeyDesc;
			public uint32 dwToken;
			public HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE ParamType;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_SNI_QUERY_EX
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_SNI_KEY KeyDesc;
			public uint32 dwToken;
			public HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE ParamType;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_SSL_CCS_QUERY_EX
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_SSL_CCS_KEY KeyDesc;
			public uint32 dwToken;
			public HTTP_SSL_SERVICE_CONFIG_EX_PARAM_TYPE ParamType;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_IP_LISTEN_PARAM
		{
			public uint16 AddrLength;
			public SOCKADDR* pAddress;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_IP_LISTEN_QUERY
		{
			public uint32 AddrCount;
			public SOCKADDR_STORAGE[0] AddrList;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_URLACL_KEY
		{
			public PWSTR pUrlPrefix;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_URLACL_PARAM
		{
			public PWSTR pStringSecurityDescriptor;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_URLACL_SET
		{
			public HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
			public HTTP_SERVICE_CONFIG_URLACL_PARAM ParamDesc;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_URLACL_QUERY
		{
			public HTTP_SERVICE_CONFIG_QUERY_TYPE QueryDesc;
			public HTTP_SERVICE_CONFIG_URLACL_KEY KeyDesc;
			public uint32 dwToken;
		}
		[CRepr]
		public struct HTTP_SERVICE_CONFIG_CACHE_SET
		{
			public HTTP_SERVICE_CONFIG_CACHE_KEY KeyDesc;
			public uint32 ParamDesc;
		}
		[CRepr]
		public struct HTTP_QUERY_REQUEST_QUALIFIER_TCP
		{
			public uint64 Freshness;
		}
		[CRepr]
		public struct HTTP_QUERY_REQUEST_QUALIFIER_QUIC
		{
			public uint64 Freshness;
		}
		[CRepr]
		public struct HTTP_REQUEST_PROPERTY_SNI
		{
			public char16[256] Hostname;
			public uint32 Flags;
		}
		[CRepr]
		public struct HTTP_REQUEST_PROPERTY_STREAM_ERROR
		{
			public uint32 ErrorCode;
		}
		[CRepr]
		public struct HTTP_WSK_API_TIMINGS
		{
			public uint64 ConnectCount;
			public uint64 ConnectSum;
			public uint64 DisconnectCount;
			public uint64 DisconnectSum;
			public uint64 SendCount;
			public uint64 SendSum;
			public uint64 ReceiveCount;
			public uint64 ReceiveSum;
			public uint64 ReleaseCount;
			public uint64 ReleaseSum;
			public uint64 ControlSocketCount;
			public uint64 ControlSocketSum;
		}
		[CRepr]
		public struct HTTP_QUIC_STREAM_API_TIMINGS
		{
			public uint64 OpenCount;
			public uint64 OpenSum;
			public uint64 CloseCount;
			public uint64 CloseSum;
			public uint64 StartCount;
			public uint64 StartSum;
			public uint64 ShutdownCount;
			public uint64 ShutdownSum;
			public uint64 SendCount;
			public uint64 SendSum;
			public uint64 ReceiveSetEnabledCount;
			public uint64 ReceiveSetEnabledSum;
			public uint64 GetParamCount;
			public uint64 GetParamSum;
			public uint64 SetParamCount;
			public uint64 SetParamSum;
			public uint64 SetCallbackHandlerCount;
			public uint64 SetCallbackHandlerSum;
		}
		[CRepr]
		public struct HTTP_QUIC_CONNECTION_API_TIMINGS
		{
			public uint64 OpenTime;
			public uint64 CloseTime;
			public uint64 StartTime;
			public uint64 ShutdownTime;
			public uint64 SecConfigCreateTime;
			public uint64 SecConfigDeleteTime;
			public uint64 GetParamCount;
			public uint64 GetParamSum;
			public uint64 SetParamCount;
			public uint64 SetParamSum;
			public uint64 SetCallbackHandlerCount;
			public uint64 SetCallbackHandlerSum;
			public HTTP_QUIC_STREAM_API_TIMINGS ControlStreamTimings;
		}
		[CRepr]
		public struct HTTP_QUIC_API_TIMINGS
		{
			public HTTP_QUIC_CONNECTION_API_TIMINGS ConnectionTimings;
			public HTTP_QUIC_STREAM_API_TIMINGS StreamTimings;
		}
		
		// --- Functions ---
		
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpInitialize(HTTPAPI_VERSION Version, HTTP_INITIALIZE Flags, void* pReserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpTerminate(HTTP_INITIALIZE Flags, void* pReserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCreateHttpHandle(out HANDLE RequestQueueHandle, uint32 Reserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCreateRequestQueue(HTTPAPI_VERSION Version, PWSTR Name, out SECURITY_ATTRIBUTES SecurityAttributes, uint32 Flags, out HANDLE RequestQueueHandle);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCloseRequestQueue(HANDLE RequestQueueHandle);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSetRequestQueueProperty(HANDLE RequestQueueHandle, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength, uint32 Reserved1, void* Reserved2);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpQueryRequestQueueProperty(HANDLE RequestQueueHandle, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength, uint32 Reserved1, uint32* ReturnLength, void* Reserved2);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSetRequestProperty(HANDLE RequestQueueHandle, uint64 Id, HTTP_REQUEST_PROPERTY PropertyId, void* Input, uint32 InputPropertySize, ref OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpShutdownRequestQueue(HANDLE RequestQueueHandle);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpReceiveClientCertificate(HANDLE RequestQueueHandle, uint64 ConnectionId, uint32 Flags, out HTTP_SSL_CLIENT_CERT_INFO SslClientCertInfo, uint32 SslClientCertInfoSize, uint32* BytesReceived, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCreateServerSession(HTTPAPI_VERSION Version, out uint64 ServerSessionId, uint32 Reserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCloseServerSession(uint64 ServerSessionId);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpQueryServerSessionProperty(uint64 ServerSessionId, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength, uint32* ReturnLength);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSetServerSessionProperty(uint64 ServerSessionId, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpAddUrl(HANDLE RequestQueueHandle, PWSTR FullyQualifiedUrl, void* Reserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpRemoveUrl(HANDLE RequestQueueHandle, PWSTR FullyQualifiedUrl);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCreateUrlGroup(uint64 ServerSessionId, out uint64 pUrlGroupId, uint32 Reserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCloseUrlGroup(uint64 UrlGroupId);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpAddUrlToUrlGroup(uint64 UrlGroupId, PWSTR pFullyQualifiedUrl, uint64 UrlContext, uint32 Reserved);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpRemoveUrlFromUrlGroup(uint64 UrlGroupId, PWSTR pFullyQualifiedUrl, uint32 Flags);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSetUrlGroupProperty(uint64 UrlGroupId, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpQueryUrlGroupProperty(uint64 UrlGroupId, HTTP_SERVER_PROPERTY Property, void* PropertyInformation, uint32 PropertyInformationLength, uint32* ReturnLength);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpPrepareUrl(void* Reserved, uint32 Flags, PWSTR Url, out PWSTR PreparedUrl);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpReceiveHttpRequest(HANDLE RequestQueueHandle, uint64 RequestId, HTTP_RECEIVE_HTTP_REQUEST_FLAGS Flags, out HTTP_REQUEST_V2 RequestBuffer, uint32 RequestBufferLength, uint32* BytesReturned, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpReceiveRequestEntityBody(HANDLE RequestQueueHandle, uint64 RequestId, uint32 Flags, void* EntityBuffer, uint32 EntityBufferLength, uint32* BytesReturned, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSendHttpResponse(HANDLE RequestQueueHandle, uint64 RequestId, uint32 Flags, out HTTP_RESPONSE_V2 HttpResponse, out HTTP_CACHE_POLICY CachePolicy, out uint32 BytesSent, void* Reserved1, uint32 Reserved2, out OVERLAPPED Overlapped, out HTTP_LOG_DATA LogData);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSendResponseEntityBody(HANDLE RequestQueueHandle, uint64 RequestId, uint32 Flags, uint16 EntityChunkCount, HTTP_DATA_CHUNK* EntityChunks, out uint32 BytesSent, void* Reserved1, uint32 Reserved2, out OVERLAPPED Overlapped, out HTTP_LOG_DATA LogData);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpDeclarePush(HANDLE RequestQueueHandle, uint64 RequestId, HTTP_VERB Verb, PWSTR Path, PSTR Query, HTTP_REQUEST_HEADERS* Headers);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpWaitForDisconnect(HANDLE RequestQueueHandle, uint64 ConnectionId, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpWaitForDisconnectEx(HANDLE RequestQueueHandle, uint64 ConnectionId, uint32 Reserved, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpCancelHttpRequest(HANDLE RequestQueueHandle, uint64 RequestId, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpWaitForDemandStart(HANDLE RequestQueueHandle, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL HttpIsFeatureSupported(HTTP_FEATURE_ID FeatureId);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpDelegateRequestEx(HANDLE RequestQueueHandle, HANDLE DelegateQueueHandle, uint64 RequestId, uint64 DelegateUrlGroupId, uint32 PropertyInfoSetSize, ref HTTP_DELEGATE_REQUEST_PROPERTY_INFO PropertyInfoSet);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpFindUrlGroupId(PWSTR FullyQualifiedUrl, HANDLE RequestQueueHandle, out uint64 UrlGroupId);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpFlushResponseCache(HANDLE RequestQueueHandle, PWSTR UrlPrefix, uint32 Flags, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpAddFragmentToCache(HANDLE RequestQueueHandle, PWSTR UrlPrefix, out HTTP_DATA_CHUNK DataChunk, out HTTP_CACHE_POLICY CachePolicy, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpReadFragmentFromCache(HANDLE RequestQueueHandle, PWSTR UrlPrefix, out HTTP_BYTE_RANGE ByteRange, void* Buffer, uint32 BufferLength, uint32* BytesRead, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpSetServiceConfiguration(HANDLE ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void* pConfigInformation, uint32 ConfigInformationLength, out OVERLAPPED pOverlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpUpdateServiceConfiguration(HANDLE Handle, HTTP_SERVICE_CONFIG_ID ConfigId, void* ConfigInfo, uint32 ConfigInfoLength, out OVERLAPPED Overlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpDeleteServiceConfiguration(HANDLE ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void* pConfigInformation, uint32 ConfigInformationLength, out OVERLAPPED pOverlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpQueryServiceConfiguration(HANDLE ServiceHandle, HTTP_SERVICE_CONFIG_ID ConfigId, void* pInput, uint32 InputLength, void* pOutput, uint32 OutputLength, uint32* pReturnLength, out OVERLAPPED pOverlapped);
		[Import("httpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HttpGetExtension(HTTPAPI_VERSION Version, uint32 Extension, void* Buffer, uint32 BufferSize);
	}
}
