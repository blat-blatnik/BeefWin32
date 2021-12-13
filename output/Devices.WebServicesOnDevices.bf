using System;

// namespace Devices.WebServicesOnDevices
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WSDAPI_OPTION_MAX_INBOUND_MESSAGE_SIZE = 1;
		public const uint32 WSDAPI_OPTION_TRACE_XML_TO_DEBUGGER = 2;
		public const uint32 WSDAPI_OPTION_TRACE_XML_TO_FILE = 3;
		public const uint32 WSDAPI_SSL_CERT_APPLY_DEFAULT_CHECKS = 0;
		public const uint32 WSDAPI_SSL_CERT_IGNORE_REVOCATION = 1;
		public const uint32 WSDAPI_SSL_CERT_IGNORE_EXPIRY = 2;
		public const uint32 WSDAPI_SSL_CERT_IGNORE_WRONG_USAGE = 4;
		public const uint32 WSDAPI_SSL_CERT_IGNORE_UNKNOWN_CA = 8;
		public const uint32 WSDAPI_SSL_CERT_IGNORE_INVALID_CN = 16;
		public const uint32 WSDAPI_COMPACTSIG_ACCEPT_ALL_MESSAGES = 1;
		public const uint32 WSD_SECURITY_HTTP_AUTH_SCHEME_NEGOTIATE = 1;
		public const uint32 WSD_SECURITY_HTTP_AUTH_SCHEME_NTLM = 2;
		public const uint32 WSDAPI_ADDRESSFAMILY_IPV4 = 1;
		public const uint32 WSDAPI_ADDRESSFAMILY_IPV6 = 2;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WSD_CONFIG_PARAM_TYPE : int32
		{
			WSD_CONFIG_MAX_INBOUND_MESSAGE_SIZE = 1,
			WSD_CONFIG_MAX_OUTBOUND_MESSAGE_SIZE = 2,
			WSD_SECURITY_SSL_CERT_FOR_CLIENT_AUTH = 3,
			WSD_SECURITY_SSL_SERVER_CERT_VALIDATION = 4,
			WSD_SECURITY_SSL_CLIENT_CERT_VALIDATION = 5,
			WSD_SECURITY_SSL_NEGOTIATE_CLIENT_CERT = 6,
			WSD_SECURITY_COMPACTSIG_SIGNING_CERT = 7,
			WSD_SECURITY_COMPACTSIG_VALIDATION = 8,
			WSD_CONFIG_HOSTING_ADDRESSES = 9,
			WSD_CONFIG_DEVICE_ADDRESSES = 10,
			WSD_SECURITY_REQUIRE_HTTP_CLIENT_AUTH = 11,
			WSD_SECURITY_REQUIRE_CLIENT_CERT_OR_HTTP_CLIENT_AUTH = 12,
			WSD_SECURITY_USE_HTTP_CLIENT_AUTH = 13,
		}
		[AllowDuplicates]
		public enum WSDUdpMessageType : int32
		{
			ONE_WAY = 0,
			TWO_WAY = 1,
		}
		[AllowDuplicates]
		public enum WSDXML_OP : int32
		{
			OpNone = 0,
			OpEndOfTable = 1,
			OpBeginElement_ = 2,
			OpBeginAnyElement = 3,
			OpEndElement = 4,
			OpElement_ = 5,
			OpAnyElement = 6,
			OpAnyElements = 7,
			OpAnyText = 8,
			OpAttribute_ = 9,
			OpBeginChoice = 10,
			OpEndChoice = 11,
			OpBeginSequence = 12,
			OpEndSequence = 13,
			OpBeginAll = 14,
			OpEndAll = 15,
			OpAnything = 16,
			OpAnyNumber = 17,
			OpOneOrMore = 18,
			OpOptional = 19,
			OpFormatBool_ = 20,
			OpFormatInt8_ = 21,
			OpFormatInt16_ = 22,
			OpFormatInt32_ = 23,
			OpFormatInt64_ = 24,
			OpFormatUInt8_ = 25,
			OpFormatUInt16_ = 26,
			OpFormatUInt32_ = 27,
			OpFormatUInt64_ = 28,
			OpFormatUnicodeString_ = 29,
			OpFormatDom_ = 30,
			OpFormatStruct_ = 31,
			OpFormatUri_ = 32,
			OpFormatUuidUri_ = 33,
			OpFormatName_ = 34,
			OpFormatListInsertTail_ = 35,
			OpFormatType_ = 36,
			OpFormatDynamicType_ = 37,
			OpFormatLookupType_ = 38,
			OpFormatDuration_ = 39,
			OpFormatDateTime_ = 40,
			OpFormatFloat_ = 41,
			OpFormatDouble_ = 42,
			OpProcess_ = 43,
			OpQualifiedAttribute_ = 44,
			OpFormatXMLDeclaration_ = 45,
			OpFormatMax = 46,
		}
		[AllowDuplicates]
		public enum DeviceDiscoveryMechanism : int32
		{
			MulticastDiscovery = 0,
			DirectedDiscovery = 1,
			SecureDirectedDiscovery = 2,
		}
		[AllowDuplicates]
		public enum WSD_PROTOCOL_TYPE : int32
		{
			WSD_PT_NONE = 0,
			WSD_PT_UDP = 1,
			WSD_PT_HTTP = 2,
			WSD_PT_HTTPS = 4,
			WSD_PT_ALL = 255,
		}
		[AllowDuplicates]
		public enum WSDEventType : int32
		{
			WSDET_NONE = 0,
			WSDET_INCOMING_MESSAGE = 1,
			WSDET_INCOMING_FAULT = 2,
			WSDET_TRANSMISSION_FAILURE = 3,
			WSDET_RESPONSE_TIMEOUT = 4,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT WSD_STUB_FUNCTION(IUnknown server, IWSDServiceMessaging session, WSD_EVENT* event);
		public function HRESULT PWSD_SOAP_MESSAGE_HANDLER(IUnknown thisUnknown, WSD_EVENT* event);
		
		// --- Structs ---
		
		[CRepr]
		public struct WSD_CONFIG_PARAM
		{
			public WSD_CONFIG_PARAM_TYPE configParamType;
			public void* pConfigData;
			public uint32 dwConfigDataSize;
		}
		[CRepr]
		public struct WSD_SECURITY_CERT_VALIDATION_V1
		{
			public CERT_CONTEXT** certMatchArray;
			public uint32 dwCertMatchArrayCount;
			public void* hCertMatchStore;
			public void* hCertIssuerStore;
			public uint32 dwCertCheckOptions;
		}
		[CRepr]
		public struct WSD_SECURITY_CERT_VALIDATION
		{
			public CERT_CONTEXT** certMatchArray;
			public uint32 dwCertMatchArrayCount;
			public void* hCertMatchStore;
			public void* hCertIssuerStore;
			public uint32 dwCertCheckOptions;
			public PWSTR pszCNGHashAlgId;
			public uint8* pbCertHash;
			public uint32 dwCertHashSize;
		}
		[CRepr]
		public struct WSD_SECURITY_SIGNATURE_VALIDATION
		{
			public CERT_CONTEXT** signingCertArray;
			public uint32 dwSigningCertArrayCount;
			public void* hSigningCertStore;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct WSD_CONFIG_ADDRESSES
		{
			public IWSDAddress* addresses;
			public uint32 dwAddressCount;
		}
		[CRepr]
		public struct WSDUdpRetransmitParams
		{
			public uint32 ulSendDelay;
			public uint32 ulRepeat;
			public uint32 ulRepeatMinDelay;
			public uint32 ulRepeatMaxDelay;
			public uint32 ulRepeatUpperDelay;
		}
		[CRepr]
		public struct WSD_DATETIME
		{
			public BOOL isPositive;
			public uint32 year;
			public uint8 month;
			public uint8 day;
			public uint8 hour;
			public uint8 minute;
			public uint8 second;
			public uint32 millisecond;
			public BOOL TZIsLocal;
			public BOOL TZIsPositive;
			public uint8 TZHour;
			public uint8 TZMinute;
		}
		[CRepr]
		public struct WSD_DURATION
		{
			public BOOL isPositive;
			public uint32 year;
			public uint32 month;
			public uint32 day;
			public uint32 hour;
			public uint32 minute;
			public uint32 second;
			public uint32 millisecond;
		}
		[CRepr]
		public struct WSDXML_NAMESPACE
		{
			public PWSTR Uri;
			public PWSTR PreferredPrefix;
			public WSDXML_NAME* Names;
			public uint16 NamesCount;
			public uint16 Encoding;
		}
		[CRepr]
		public struct WSDXML_NAME
		{
			public WSDXML_NAMESPACE* Space;
			public PWSTR LocalName;
		}
		[CRepr]
		public struct WSDXML_TYPE
		{
			public PWSTR Uri;
			public uint8* Table;
		}
		[CRepr]
		public struct WSDXML_PREFIX_MAPPING
		{
			public uint32 Refs;
			public WSDXML_PREFIX_MAPPING* Next;
			public WSDXML_NAMESPACE* Space;
			public PWSTR Prefix;
		}
		[CRepr]
		public struct WSDXML_ATTRIBUTE
		{
			public WSDXML_ELEMENT* Element;
			public WSDXML_ATTRIBUTE* Next;
			public WSDXML_NAME* Name;
			public PWSTR Value;
		}
		[CRepr]
		public struct WSDXML_NODE
		{
			public int32 Type;
			public WSDXML_ELEMENT* Parent;
			public WSDXML_NODE* Next;
		}
		[CRepr]
		public struct WSDXML_ELEMENT
		{
			public WSDXML_NODE Node;
			public WSDXML_NAME* Name;
			public WSDXML_ATTRIBUTE* FirstAttribute;
			public WSDXML_NODE* FirstChild;
			public WSDXML_PREFIX_MAPPING* PrefixMappings;
		}
		[CRepr]
		public struct WSDXML_TEXT
		{
			public WSDXML_NODE Node;
			public PWSTR Text;
		}
		[CRepr]
		public struct WSDXML_ELEMENT_LIST
		{
			public WSDXML_ELEMENT_LIST* Next;
			public WSDXML_ELEMENT* Element;
		}
		[CRepr]
		public struct WSD_OPERATION
		{
			public WSDXML_TYPE* RequestType;
			public WSDXML_TYPE* ResponseType;
			public WSD_STUB_FUNCTION RequestStubFunction;
		}
		[CRepr]
		public struct WSD_HANDLER_CONTEXT
		{
			public PWSD_SOAP_MESSAGE_HANDLER Handler;
			public void* PVoid;
			public IUnknown Unknown;
		}
		[CRepr]
		public struct WSD_SYNCHRONOUS_RESPONSE_CONTEXT
		{
			public HRESULT hr;
			public HANDLE eventHandle;
			public IWSDMessageParameters messageParameters;
			public void* results;
		}
		[CRepr]
		public struct WSD_PORT_TYPE
		{
			public uint32 EncodedName;
			public uint32 OperationCount;
			public WSD_OPERATION* Operations;
			public WSD_PROTOCOL_TYPE ProtocolType;
		}
		[CRepr]
		public struct WSD_RELATIONSHIP_METADATA
		{
			public PWSTR Type;
			public WSD_HOST_METADATA* Data;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_SERVICE_METADATA_LIST
		{
			public WSD_SERVICE_METADATA_LIST* Next;
			public WSD_SERVICE_METADATA* Element;
		}
		[CRepr]
		public struct WSD_HOST_METADATA
		{
			public WSD_SERVICE_METADATA* Host;
			public WSD_SERVICE_METADATA_LIST* Hosted;
		}
		[CRepr]
		public struct WSD_ENDPOINT_REFERENCE_LIST
		{
			public WSD_ENDPOINT_REFERENCE_LIST* Next;
			public WSD_ENDPOINT_REFERENCE* Element;
		}
		[CRepr]
		public struct WSD_SERVICE_METADATA
		{
			public WSD_ENDPOINT_REFERENCE_LIST* EndpointReference;
			public WSD_NAME_LIST* Types;
			public PWSTR ServiceId;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_THIS_DEVICE_METADATA
		{
			public WSD_LOCALIZED_STRING_LIST* FriendlyName;
			public PWSTR FirmwareVersion;
			public PWSTR SerialNumber;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_THIS_MODEL_METADATA
		{
			public WSD_LOCALIZED_STRING_LIST* Manufacturer;
			public PWSTR ManufacturerUrl;
			public WSD_LOCALIZED_STRING_LIST* ModelName;
			public PWSTR ModelNumber;
			public PWSTR ModelUrl;
			public PWSTR PresentationUrl;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_LOCALIZED_STRING_LIST
		{
			public WSD_LOCALIZED_STRING_LIST* Next;
			public WSD_LOCALIZED_STRING* Element;
		}
		[CRepr]
		public struct WSD_SOAP_FAULT_REASON
		{
			public WSD_LOCALIZED_STRING_LIST* Text;
		}
		[CRepr]
		public struct WSD_SOAP_FAULT_SUBCODE
		{
			public WSDXML_NAME* Value;
			public WSD_SOAP_FAULT_SUBCODE* Subcode;
		}
		[CRepr]
		public struct WSD_SOAP_FAULT_CODE
		{
			public WSDXML_NAME* Value;
			public WSD_SOAP_FAULT_SUBCODE* Subcode;
		}
		[CRepr]
		public struct WSD_SOAP_FAULT
		{
			public WSD_SOAP_FAULT_CODE* Code;
			public WSD_SOAP_FAULT_REASON* Reason;
			public PWSTR Node;
			public PWSTR Role;
			public WSDXML_ELEMENT* Detail;
		}
		[CRepr]
		public struct WSD_APP_SEQUENCE
		{
			public uint64 InstanceId;
			public PWSTR SequenceId;
			public uint64 MessageNumber;
		}
		[CRepr]
		public struct WSD_HEADER_RELATESTO
		{
			public WSDXML_NAME* RelationshipType;
			public PWSTR MessageID;
		}
		[CRepr]
		public struct WSD_SOAP_HEADER
		{
			public PWSTR To;
			public PWSTR Action;
			public PWSTR MessageID;
			public WSD_HEADER_RELATESTO RelatesTo;
			public WSD_ENDPOINT_REFERENCE* ReplyTo;
			public WSD_ENDPOINT_REFERENCE* From;
			public WSD_ENDPOINT_REFERENCE* FaultTo;
			public WSD_APP_SEQUENCE* AppSequence;
			public WSDXML_ELEMENT* AnyHeaders;
		}
		[CRepr]
		public struct WSD_SOAP_MESSAGE
		{
			public WSD_SOAP_HEADER Header;
			public void* Body;
			public WSDXML_TYPE* BodyType;
		}
		[CRepr]
		public struct WSD_RESOLVE_MATCHES
		{
			public WSD_RESOLVE_MATCH* ResolveMatch;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_RESOLVE_MATCH
		{
			public WSD_ENDPOINT_REFERENCE* EndpointReference;
			public WSD_NAME_LIST* Types;
			public WSD_SCOPES* Scopes;
			public WSD_URI_LIST* XAddrs;
			public uint64 MetadataVersion;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_RESOLVE
		{
			public WSD_ENDPOINT_REFERENCE* EndpointReference;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_PROBE_MATCH
		{
			public WSD_ENDPOINT_REFERENCE* EndpointReference;
			public WSD_NAME_LIST* Types;
			public WSD_SCOPES* Scopes;
			public WSD_URI_LIST* XAddrs;
			public uint64 MetadataVersion;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_PROBE_MATCH_LIST
		{
			public WSD_PROBE_MATCH_LIST* Next;
			public WSD_PROBE_MATCH* Element;
		}
		[CRepr]
		public struct WSD_PROBE_MATCHES
		{
			public WSD_PROBE_MATCH_LIST* ProbeMatch;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_PROBE
		{
			public WSD_NAME_LIST* Types;
			public WSD_SCOPES* Scopes;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_BYE
		{
			public WSD_ENDPOINT_REFERENCE* EndpointReference;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_SCOPES
		{
			public PWSTR MatchBy;
			public WSD_URI_LIST* Scopes;
		}
		[CRepr]
		public struct WSD_NAME_LIST
		{
			public WSD_NAME_LIST* Next;
			public WSDXML_NAME* Element;
		}
		[CRepr]
		public struct WSD_HELLO
		{
			public WSD_ENDPOINT_REFERENCE* EndpointReference;
			public WSD_NAME_LIST* Types;
			public WSD_SCOPES* Scopes;
			public WSD_URI_LIST* XAddrs;
			public uint64 MetadataVersion;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_REFERENCE_PARAMETERS
		{
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_REFERENCE_PROPERTIES
		{
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_ENDPOINT_REFERENCE
		{
			public PWSTR Address;
			public WSD_REFERENCE_PROPERTIES ReferenceProperties;
			public WSD_REFERENCE_PARAMETERS ReferenceParameters;
			public WSDXML_NAME* PortType;
			public WSDXML_NAME* ServiceName;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_METADATA_SECTION
		{
			public PWSTR Dialect;
			public PWSTR Identifier;
			public void* Data;
			public WSD_ENDPOINT_REFERENCE* MetadataReference;
			public PWSTR Location;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_METADATA_SECTION_LIST
		{
			public WSD_METADATA_SECTION_LIST* Next;
			public WSD_METADATA_SECTION* Element;
		}
		[CRepr]
		public struct WSD_URI_LIST
		{
			public WSD_URI_LIST* Next;
			public PWSTR Element;
		}
		[CRepr]
		public struct WSD_EVENTING_FILTER_ACTION
		{
			public WSD_URI_LIST* Actions;
		}
		[CRepr]
		public struct WSD_EVENTING_FILTER
		{
			public PWSTR Dialect;
			public WSD_EVENTING_FILTER_ACTION* FilterAction;
			public void* Data;
		}
		[CRepr]
		public struct WSD_EVENTING_EXPIRES
		{
			public WSD_DURATION* Duration;
			public WSD_DATETIME* DateTime;
		}
		[CRepr]
		public struct WSD_EVENTING_DELIVERY_MODE_PUSH
		{
			public WSD_ENDPOINT_REFERENCE* NotifyTo;
		}
		[CRepr]
		public struct WSD_EVENTING_DELIVERY_MODE
		{
			public PWSTR Mode;
			public WSD_EVENTING_DELIVERY_MODE_PUSH* Push;
			public void* Data;
		}
		[CRepr]
		public struct WSD_LOCALIZED_STRING
		{
			public PWSTR lang;
			public PWSTR String;
		}
		[CRepr]
		public struct RESPONSEBODY_GetMetadata
		{
			public WSD_METADATA_SECTION_LIST* Metadata;
		}
		[CRepr]
		public struct REQUESTBODY_Subscribe
		{
			public WSD_ENDPOINT_REFERENCE* EndTo;
			public WSD_EVENTING_DELIVERY_MODE* Delivery;
			public WSD_EVENTING_EXPIRES* Expires;
			public WSD_EVENTING_FILTER* Filter;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct RESPONSEBODY_Subscribe
		{
			public WSD_ENDPOINT_REFERENCE* SubscriptionManager;
			public WSD_EVENTING_EXPIRES* expires;
			public WSDXML_ELEMENT* any;
		}
		[CRepr]
		public struct REQUESTBODY_Renew
		{
			public WSD_EVENTING_EXPIRES* Expires;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct RESPONSEBODY_Renew
		{
			public WSD_EVENTING_EXPIRES* expires;
			public WSDXML_ELEMENT* any;
		}
		[CRepr]
		public struct REQUESTBODY_GetStatus
		{
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct RESPONSEBODY_GetStatus
		{
			public WSD_EVENTING_EXPIRES* expires;
			public WSDXML_ELEMENT* any;
		}
		[CRepr]
		public struct REQUESTBODY_Unsubscribe
		{
			public WSDXML_ELEMENT* any;
		}
		[CRepr]
		public struct RESPONSEBODY_SubscriptionEnd
		{
			public WSD_ENDPOINT_REFERENCE* SubscriptionManager;
			public PWSTR Status;
			public WSD_LOCALIZED_STRING* Reason;
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_UNKNOWN_LOOKUP
		{
			public WSDXML_ELEMENT* Any;
		}
		[CRepr]
		public struct WSD_EVENT
		{
			public HRESULT Hr;
			public uint32 EventType;
			public PWSTR DispatchTag;
			public WSD_HANDLER_CONTEXT HandlerContext;
			public WSD_SOAP_MESSAGE* Soap;
			public WSD_OPERATION* Operation;
			public IWSDMessageParameters MessageParameters;
		}
		
		// --- COM Interfaces ---
		
		public struct IWSDAddress {}
		public struct IWSDTransportAddress {}
		public struct IWSDMessageParameters {}
		public struct IWSDUdpMessageParameters {}
		public struct IWSDUdpAddress {}
		public struct IWSDHttpMessageParameters {}
		public struct IWSDHttpAddress {}
		public struct IWSDSSLClientCertificate {}
		public struct IWSDHttpAuthParameters {}
		public struct IWSDSignatureProperty {}
		public struct IWSDAttachment {}
		public struct IWSDOutboundAttachment {}
		public struct IWSDInboundAttachment {}
		public struct IWSDXMLContext {}
		public struct IWSDiscoveryProvider {}
		public struct IWSDiscoveryProviderNotify {}
		public struct IWSDiscoveredService {}
		public struct IWSDiscoveryPublisher {}
		public struct IWSDiscoveryPublisherNotify {}
		public struct IWSDScopeMatchingRule {}
		public struct IWSDEndpointProxy {}
		public struct IWSDMetadataExchange {}
		public struct IWSDServiceProxy {}
		public struct IWSDServiceProxyEventing {}
		public struct IWSDDeviceProxy {}
		public struct IWSDAsyncResult {}
		public struct IWSDAsyncCallback {}
		public struct IWSDEventingStatus {}
		public struct IWSDDeviceHost {}
		public struct IWSDDeviceHostNotify {}
		public struct IWSDServiceMessaging {}
		
		// --- Functions ---
		
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpMessageParameters(IWSDUdpMessageParameters* ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpAddress(IWSDUdpAddress* ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpMessageParameters(IWSDHttpMessageParameters* ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpAddress(IWSDHttpAddress* ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateOutboundAttachment(IWSDOutboundAttachment* ppAttachment);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLGetNameFromBuiltinNamespace(PWSTR pszNamespace, PWSTR pszName, WSDXML_NAME** ppName);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLCreateContext(IWSDXMLContext* ppContext);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider(IWSDXMLContext pContext, IWSDiscoveryProvider* ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider2(IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDiscoveryProvider* ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher(IWSDXMLContext pContext, IWSDiscoveryPublisher* ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher2(IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDiscoveryPublisher* ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy(PWSTR pszDeviceId, PWSTR pszLocalId, IWSDXMLContext pContext, IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxyAdvanced(PWSTR pszDeviceId, IWSDAddress pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext pContext, IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy2(PWSTR pszDeviceId, PWSTR pszLocalId, IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost(PWSTR pszLocalId, IWSDXMLContext pContext, IWSDDeviceHost* ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHostAdvanced(PWSTR pszLocalId, IWSDXMLContext pContext, IWSDAddress* ppHostAddresses, uint32 dwHostAddressCount, IWSDDeviceHost* ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost2(PWSTR pszLocalId, IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDDeviceHost* ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDSetConfigurationOption(uint32 dwOption, void* pVoid, uint32 cbInBuffer);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGetConfigurationOption(uint32 dwOption, void* pVoid, uint32 cbOutBuffer);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* WSDAllocateLinkedMemory(void* pParent, uint cbSize);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WSDFreeLinkedMemory(void* pVoid);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WSDAttachLinkedMemory(void* pParent, void* pChild);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WSDDetachLinkedMemory(void* pVoid);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLBuildAnyForSingleElement(WSDXML_NAME* pElementName, PWSTR pszText, WSDXML_ELEMENT** ppAny);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLGetValueFromAny(PWSTR pszNamespace, PWSTR pszName, WSDXML_ELEMENT* pAny, PWSTR* ppszValue);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLAddSibling(WSDXML_ELEMENT* pFirst, WSDXML_ELEMENT* pSecond);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLAddChild(WSDXML_ELEMENT* pParent, WSDXML_ELEMENT* pChild);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLCleanupElement(WSDXML_ELEMENT* pAny);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGenerateFault(PWSTR pszCode, PWSTR pszSubCode, PWSTR pszReason, PWSTR pszDetail, IWSDXMLContext pContext, WSD_SOAP_FAULT** ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGenerateFaultEx(WSDXML_NAME* pCode, WSDXML_NAME* pSubCode, WSD_LOCALIZED_STRING_LIST* pReasons, PWSTR pszDetail, WSD_SOAP_FAULT** ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriEncode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriDecode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
		
	}
}
