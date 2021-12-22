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
		
		public function HRESULT WSD_STUB_FUNCTION(IUnknown* server, IWSDServiceMessaging* session, WSD_EVENT* event);
		public function HRESULT PWSD_SOAP_MESSAGE_HANDLER(IUnknown* thisUnknown, WSD_EVENT* event);
		
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
			public IWSDAddress** addresses;
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
			public IUnknown* Unknown;
		}
		[CRepr]
		public struct WSD_SYNCHRONOUS_RESPONSE_CONTEXT
		{
			public HRESULT hr;
			public HANDLE eventHandle;
			public IWSDMessageParameters* messageParameters;
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
			public IWSDMessageParameters* MessageParameters;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWSDAddress : IUnknown
		{
			public const new Guid IID = .(0xb9574c6c, 0x12a6, 0x4f74, 0x93, 0xa1, 0x33, 0x18, 0xff, 0x60, 0x57, 0x59);
			
			public function HRESULT(IWSDAddress *self, char16* pszBuffer, uint32 cchLength, BOOL fSafe) Serialize;
			public function HRESULT(IWSDAddress *self, PWSTR pszBuffer) Deserialize;
		}
		[CRepr]
		public struct IWSDTransportAddress : IWSDAddress
		{
			public const new Guid IID = .(0x70d23498, 0x4ee6, 0x4340, 0xa3, 0xdf, 0xd8, 0x45, 0xd2, 0x23, 0x54, 0x67);
			
			public function HRESULT(IWSDTransportAddress *self, uint16* pwPort) GetPort;
			public function HRESULT(IWSDTransportAddress *self, uint16 wPort) SetPort;
			public function HRESULT(IWSDTransportAddress *self, PWSTR* ppszAddress) GetTransportAddress;
			public function HRESULT(IWSDTransportAddress *self, BOOL fSafe, PWSTR* ppszAddress) GetTransportAddressEx;
			public function HRESULT(IWSDTransportAddress *self, PWSTR pszAddress) SetTransportAddress;
		}
		[CRepr]
		public struct IWSDMessageParameters : IUnknown
		{
			public const new Guid IID = .(0x1fafe8a2, 0xe6fc, 0x4b80, 0xb6, 0xcf, 0xb7, 0xd4, 0x5c, 0x41, 0x6d, 0x7c);
			
			public function HRESULT(IWSDMessageParameters *self, IWSDAddress** ppAddress) GetLocalAddress;
			public function HRESULT(IWSDMessageParameters *self, IWSDAddress* pAddress) SetLocalAddress;
			public function HRESULT(IWSDMessageParameters *self, IWSDAddress** ppAddress) GetRemoteAddress;
			public function HRESULT(IWSDMessageParameters *self, IWSDAddress* pAddress) SetRemoteAddress;
			public function HRESULT(IWSDMessageParameters *self, IWSDMessageParameters** ppTxParams) GetLowerParameters;
		}
		[CRepr]
		public struct IWSDUdpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x9934149f, 0x8f0c, 0x447b, 0xaa, 0x0b, 0x73, 0x12, 0x4b, 0x0c, 0xa7, 0xf0);
			
			public function HRESULT(IWSDUdpMessageParameters *self, WSDUdpRetransmitParams* pParams) SetRetransmitParams;
			public function HRESULT(IWSDUdpMessageParameters *self, WSDUdpRetransmitParams* pParams) GetRetransmitParams;
		}
		[CRepr]
		public struct IWSDUdpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0x74d6124a, 0xa441, 0x4f78, 0xa1, 0xeb, 0x97, 0xa8, 0xd1, 0x99, 0x68, 0x93);
			
			public function HRESULT(IWSDUdpAddress *self, SOCKADDR_STORAGE* pSockAddr) SetSockaddr;
			public function HRESULT(IWSDUdpAddress *self, SOCKADDR_STORAGE* pSockAddr) GetSockaddr;
			public function HRESULT(IWSDUdpAddress *self, BOOL fExclusive) SetExclusive;
			public function HRESULT(IWSDUdpAddress *self) GetExclusive;
			public function HRESULT(IWSDUdpAddress *self, WSDUdpMessageType messageType) SetMessageType;
			public function HRESULT(IWSDUdpAddress *self, WSDUdpMessageType* pMessageType) GetMessageType;
			public function HRESULT(IWSDUdpAddress *self, uint32 dwTTL) SetTTL;
			public function HRESULT(IWSDUdpAddress *self, uint32* pdwTTL) GetTTL;
			public function HRESULT(IWSDUdpAddress *self, Guid* pAlias) SetAlias;
			public function HRESULT(IWSDUdpAddress *self, Guid* pAlias) GetAlias;
		}
		[CRepr]
		public struct IWSDHttpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x540bd122, 0x5c83, 0x4dec, 0xb3, 0x96, 0xea, 0x62, 0xa2, 0x69, 0x7f, 0xdf);
			
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszHeaders) SetInboundHttpHeaders;
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszHeaders) GetInboundHttpHeaders;
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszHeaders) SetOutboundHttpHeaders;
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszHeaders) GetOutboundHttpHeaders;
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszId) SetID;
			public function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszId) GetID;
			public function HRESULT(IWSDHttpMessageParameters *self, IUnknown* pContext) SetContext;
			public function HRESULT(IWSDHttpMessageParameters *self, IUnknown** ppContext) GetContext;
			public function HRESULT(IWSDHttpMessageParameters *self) Clear;
		}
		[CRepr]
		public struct IWSDHttpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0xd09ac7bd, 0x2a3e, 0x4b85, 0x86, 0x05, 0x27, 0x37, 0xff, 0x3e, 0x4e, 0xa0);
			
			public function HRESULT(IWSDHttpAddress *self) GetSecure;
			public function HRESULT(IWSDHttpAddress *self, BOOL fSecure) SetSecure;
			public function HRESULT(IWSDHttpAddress *self, PWSTR* ppszPath) GetPath;
			public function HRESULT(IWSDHttpAddress *self, PWSTR pszPath) SetPath;
		}
		[CRepr]
		public struct IWSDSSLClientCertificate : IUnknown
		{
			public const new Guid IID = .(0xde105e87, 0xa0da, 0x418e, 0x98, 0xad, 0x27, 0xb9, 0xee, 0xd8, 0x7b, 0xdc);
			
			public function HRESULT(IWSDSSLClientCertificate *self, CERT_CONTEXT** ppCertContext) GetClientCertificate;
			public function HRESULT(IWSDSSLClientCertificate *self, HANDLE* phToken) GetMappedAccessToken;
		}
		[CRepr]
		public struct IWSDHttpAuthParameters : IUnknown
		{
			public const new Guid IID = .(0x0b476df0, 0x8dac, 0x480d, 0xb0, 0x5c, 0x99, 0x78, 0x1a, 0x58, 0x84, 0xaa);
			
			public function HRESULT(IWSDHttpAuthParameters *self, HANDLE* phToken) GetClientAccessToken;
			public function HRESULT(IWSDHttpAuthParameters *self, uint32* pAuthType) GetAuthType;
		}
		[CRepr]
		public struct IWSDSignatureProperty : IUnknown
		{
			public const new Guid IID = .(0x03ce20aa, 0x71c4, 0x45e2, 0xb3, 0x2e, 0x37, 0x66, 0xc6, 0x1c, 0x79, 0x0f);
			
			public function HRESULT(IWSDSignatureProperty *self, BOOL* pbSigned) IsMessageSigned;
			public function HRESULT(IWSDSignatureProperty *self, BOOL* pbSignatureTrusted) IsMessageSignatureTrusted;
			public function HRESULT(IWSDSignatureProperty *self, uint8* pbKeyInfo, uint32* pdwKeyInfoSize) GetKeyInfo;
			public function HRESULT(IWSDSignatureProperty *self, uint8* pbSignature, uint32* pdwSignatureSize) GetSignature;
			public function HRESULT(IWSDSignatureProperty *self, uint8* pbSignedInfoHash, uint32* pdwHashSize) GetSignedInfoHash;
		}
		[CRepr]
		public struct IWSDAttachment : IUnknown
		{
			public const new Guid IID = .(0x5d55a616, 0x9df8, 0x4b09, 0xb1, 0x56, 0x9b, 0xa3, 0x51, 0xa4, 0x8b, 0x76);
			
		}
		[CRepr]
		public struct IWSDOutboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0xaa302f8d, 0x5a22, 0x4ba5, 0xb3, 0x92, 0xaa, 0x84, 0x86, 0xf4, 0xc1, 0x5d);
			
			public function HRESULT(IWSDOutboundAttachment *self, uint8* pBuffer, uint32 dwBytesToWrite, uint32* pdwNumberOfBytesWritten) Write;
			public function HRESULT(IWSDOutboundAttachment *self) Close;
			public function HRESULT(IWSDOutboundAttachment *self) Abort;
		}
		[CRepr]
		public struct IWSDInboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0x5bd6ca65, 0x233c, 0x4fb8, 0x9f, 0x7a, 0x26, 0x41, 0x61, 0x96, 0x55, 0xc9);
			
			public function HRESULT(IWSDInboundAttachment *self, uint8* pBuffer, uint32 dwBytesToRead, uint32* pdwNumberOfBytesRead) Read;
			public function HRESULT(IWSDInboundAttachment *self) Close;
		}
		[CRepr]
		public struct IWSDXMLContext : IUnknown
		{
			public const new Guid IID = .(0x75d8f3ee, 0x3e5a, 0x43b4, 0xa1, 0x5a, 0xbc, 0xf6, 0x88, 0x74, 0x60, 0xc0);
			
			public function HRESULT(IWSDXMLContext *self, PWSTR pszUri, PWSTR pszSuggestedPrefix, WSDXML_NAMESPACE** ppNamespace) AddNamespace;
			public function HRESULT(IWSDXMLContext *self, PWSTR pszUri, PWSTR pszName, WSDXML_NAME** ppName) AddNameToNamespace;
			public function HRESULT(IWSDXMLContext *self, WSDXML_NAMESPACE** pNamespaces, uint16 wNamespacesCount, uint8 bLayerNumber) SetNamespaces;
			public function HRESULT(IWSDXMLContext *self, WSDXML_TYPE** pTypes, uint32 dwTypesCount, uint8 bLayerNumber) SetTypes;
		}
		[CRepr]
		public struct IWSDiscoveryProvider : IUnknown
		{
			public const new Guid IID = .(0x8ffc8e55, 0xf0eb, 0x480f, 0x88, 0xb7, 0xb4, 0x35, 0xdd, 0x28, 0x1d, 0x45);
			
			public function HRESULT(IWSDiscoveryProvider *self, uint32 dwAddressFamily) SetAddressFamily;
			public function HRESULT(IWSDiscoveryProvider *self, IWSDiscoveryProviderNotify* pSink) Attach;
			public function HRESULT(IWSDiscoveryProvider *self) Detach;
			public function HRESULT(IWSDiscoveryProvider *self, PWSTR pszId, PWSTR pszTag) SearchById;
			public function HRESULT(IWSDiscoveryProvider *self, PWSTR pszAddress, PWSTR pszTag) SearchByAddress;
			public function HRESULT(IWSDiscoveryProvider *self, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, PWSTR pszMatchBy, PWSTR pszTag) SearchByType;
			public function HRESULT(IWSDiscoveryProvider *self, IWSDXMLContext** ppContext) GetXMLContext;
		}
		[CRepr]
		public struct IWSDiscoveryProviderNotify : IUnknown
		{
			public const new Guid IID = .(0x73ee3ced, 0xb6e6, 0x4329, 0xa5, 0x46, 0x3e, 0x8a, 0xd4, 0x65, 0x63, 0xd2);
			
			public function HRESULT(IWSDiscoveryProviderNotify *self, IWSDiscoveredService* pService) Add;
			public function HRESULT(IWSDiscoveryProviderNotify *self, IWSDiscoveredService* pService) Remove;
			public function HRESULT(IWSDiscoveryProviderNotify *self, HRESULT hr, PWSTR pszTag) SearchFailed;
			public function HRESULT(IWSDiscoveryProviderNotify *self, PWSTR pszTag) SearchComplete;
		}
		[CRepr]
		public struct IWSDiscoveredService : IUnknown
		{
			public const new Guid IID = .(0x4bad8a3b, 0xb374, 0x4420, 0x96, 0x32, 0xaa, 0xc9, 0x45, 0xb3, 0x74, 0xaa);
			
			public function HRESULT(IWSDiscoveredService *self, WSD_ENDPOINT_REFERENCE** ppEndpointReference) GetEndpointReference;
			public function HRESULT(IWSDiscoveredService *self, WSD_NAME_LIST** ppTypesList) GetTypes;
			public function HRESULT(IWSDiscoveredService *self, WSD_URI_LIST** ppScopesList) GetScopes;
			public function HRESULT(IWSDiscoveredService *self, WSD_URI_LIST** ppXAddrsList) GetXAddrs;
			public function HRESULT(IWSDiscoveredService *self, uint64* pullMetadataVersion) GetMetadataVersion;
			public function HRESULT(IWSDiscoveredService *self, WSDXML_ELEMENT** ppHeaderAny, WSDXML_ELEMENT** ppBodyAny) GetExtendedDiscoXML;
			public function HRESULT(IWSDiscoveredService *self, PWSTR* ppszTag) GetProbeResolveTag;
			public function HRESULT(IWSDiscoveredService *self, PWSTR* ppszRemoteTransportAddress) GetRemoteTransportAddress;
			public function HRESULT(IWSDiscoveredService *self, PWSTR* ppszLocalTransportAddress) GetLocalTransportAddress;
			public function HRESULT(IWSDiscoveredService *self, Guid* pGuid) GetLocalInterfaceGUID;
			public function HRESULT(IWSDiscoveredService *self, uint64* pullInstanceId) GetInstanceId;
		}
		[CRepr]
		public struct IWSDiscoveryPublisher : IUnknown
		{
			public const new Guid IID = .(0xae01e1a8, 0x3ff9, 0x4148, 0x81, 0x16, 0x05, 0x7c, 0xc6, 0x16, 0xfe, 0x13);
			
			public function HRESULT(IWSDiscoveryPublisher *self, uint32 dwAddressFamily) SetAddressFamily;
			public function HRESULT(IWSDiscoveryPublisher *self, IWSDiscoveryPublisherNotify* pSink) RegisterNotificationSink;
			public function HRESULT(IWSDiscoveryPublisher *self, IWSDiscoveryPublisherNotify* pSink) UnRegisterNotificationSink;
			public function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) Publish;
			public function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSDXML_ELEMENT* pAny) UnPublish;
			public function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchProbe;
			public function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchResolve;
			public function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) PublishEx;
			public function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchProbeEx;
			public function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchResolveEx;
			public function HRESULT(IWSDiscoveryPublisher *self, IWSDScopeMatchingRule* pScopeMatchingRule) RegisterScopeMatchingRule;
			public function HRESULT(IWSDiscoveryPublisher *self, IWSDScopeMatchingRule* pScopeMatchingRule) UnRegisterScopeMatchingRule;
			public function HRESULT(IWSDiscoveryPublisher *self, IWSDXMLContext** ppContext) GetXMLContext;
		}
		[CRepr]
		public struct IWSDiscoveryPublisherNotify : IUnknown
		{
			public const new Guid IID = .(0xe67651b0, 0x337a, 0x4b3c, 0x97, 0x58, 0x73, 0x33, 0x88, 0x56, 0x82, 0x51);
			
			public function HRESULT(IWSDiscoveryPublisherNotify *self, WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) ProbeHandler;
			public function HRESULT(IWSDiscoveryPublisherNotify *self, WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) ResolveHandler;
		}
		[CRepr]
		public struct IWSDScopeMatchingRule : IUnknown
		{
			public const new Guid IID = .(0xfcafe424, 0xfef5, 0x481a, 0xbd, 0x9f, 0x33, 0xce, 0x05, 0x74, 0x25, 0x6f);
			
			public function HRESULT(IWSDScopeMatchingRule *self, PWSTR* ppszScopeMatchingRule) GetScopeRule;
			public function HRESULT(IWSDScopeMatchingRule *self, PWSTR pszScope1, PWSTR pszScope2, BOOL* pfMatch) MatchScopes;
		}
		[CRepr]
		public struct IWSDEndpointProxy : IUnknown
		{
			public const new Guid IID = .(0x1860d430, 0xb24c, 0x4975, 0x9f, 0x90, 0xdb, 0xb3, 0x9b, 0xaa, 0x24, 0xec);
			
			public function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation) SendOneWayRequest;
			public function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation, WSD_SYNCHRONOUS_RESPONSE_CONTEXT* pResponseContext) SendTwoWayRequest;
			public function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation, IUnknown* pAsyncState, IWSDAsyncCallback* pCallback, IWSDAsyncResult** pResult) SendTwoWayRequestAsync;
			public function HRESULT(IWSDEndpointProxy *self, IWSDAsyncResult* pAsyncResult) AbortAsyncOperation;
			public function HRESULT(IWSDEndpointProxy *self, WSD_SOAP_FAULT* pFault) ProcessFault;
			public function HRESULT(IWSDEndpointProxy *self, PWSTR* ppszErrorInfo) GetErrorInfo;
			public function HRESULT(IWSDEndpointProxy *self, WSD_SOAP_FAULT** ppFault) GetFaultInfo;
		}
		[CRepr]
		public struct IWSDMetadataExchange : IUnknown
		{
			public const new Guid IID = .(0x06996d57, 0x1d67, 0x4928, 0x93, 0x07, 0x3d, 0x78, 0x33, 0xfd, 0xb8, 0x46);
			
			public function HRESULT(IWSDMetadataExchange *self, WSD_METADATA_SECTION_LIST** MetadataOut) GetMetadata;
		}
		[CRepr]
		public struct IWSDServiceProxy : IWSDMetadataExchange
		{
			public const new Guid IID = .(0xd4c7fb9c, 0x03ab, 0x4175, 0x9d, 0x67, 0x09, 0x4f, 0xaf, 0xeb, 0xf4, 0x87);
			
			public function HRESULT(IWSDServiceProxy *self, IWSDAsyncResult** ppResult) BeginGetMetadata;
			public function HRESULT(IWSDServiceProxy *self, IWSDAsyncResult* pResult, WSD_METADATA_SECTION_LIST** ppMetadata) EndGetMetadata;
			public function HRESULT(IWSDServiceProxy *self, WSD_SERVICE_METADATA** ppServiceMetadata) GetServiceMetadata;
			public function HRESULT(IWSDServiceProxy *self, WSD_OPERATION* pOperation, IUnknown* pUnknown, WSDXML_ELEMENT* pAny, WSDXML_ELEMENT** ppAny) SubscribeToOperation;
			public function HRESULT(IWSDServiceProxy *self, WSD_OPERATION* pOperation) UnsubscribeToOperation;
			public function HRESULT(IWSDServiceProxy *self, IWSDEventingStatus* pStatus) SetEventingStatusCallback;
			public function HRESULT(IWSDServiceProxy *self, IWSDEndpointProxy** ppProxy) GetEndpointProxy;
		}
		[CRepr]
		public struct IWSDServiceProxyEventing : IWSDServiceProxy
		{
			public const new Guid IID = .(0xf9279d6d, 0x1012, 0x4a94, 0xb8, 0xcc, 0xfd, 0x35, 0xd2, 0x20, 0x2b, 0xfe);
			
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) SubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginSubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndSubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny) UnsubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginUnsubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult) EndUnsubscribeToMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) RenewMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginRenewMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndRenewMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) GetStatusForMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginGetStatusForMultipleOperations;
			public function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndGetStatusForMultipleOperations;
		}
		[CRepr]
		public struct IWSDDeviceProxy : IUnknown
		{
			public const new Guid IID = .(0xeee0c031, 0xc578, 0x4c0e, 0x9a, 0x3b, 0x97, 0x3c, 0x35, 0xf4, 0x09, 0xdb);
			
			public function HRESULT(IWSDDeviceProxy *self, PWSTR pszDeviceId, IWSDAddress* pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy* pSponsor) Init;
			public function HRESULT(IWSDDeviceProxy *self, IWSDAsyncResult** ppResult) BeginGetMetadata;
			public function HRESULT(IWSDDeviceProxy *self, IWSDAsyncResult* pResult) EndGetMetadata;
			public function HRESULT(IWSDDeviceProxy *self, WSD_HOST_METADATA** ppHostMetadata) GetHostMetadata;
			public function HRESULT(IWSDDeviceProxy *self, WSD_THIS_MODEL_METADATA** ppManufacturerMetadata) GetThisModelMetadata;
			public function HRESULT(IWSDDeviceProxy *self, WSD_THIS_DEVICE_METADATA** ppThisDeviceMetadata) GetThisDeviceMetadata;
			public function HRESULT(IWSDDeviceProxy *self, WSD_METADATA_SECTION_LIST** ppMetadata) GetAllMetadata;
			public function HRESULT(IWSDDeviceProxy *self, PWSTR pszServiceId, IWSDServiceProxy** ppServiceProxy) GetServiceProxyById;
			public function HRESULT(IWSDDeviceProxy *self, WSDXML_NAME* pType, IWSDServiceProxy** ppServiceProxy) GetServiceProxyByType;
			public function HRESULT(IWSDDeviceProxy *self, IWSDEndpointProxy** ppProxy) GetEndpointProxy;
		}
		[CRepr]
		public struct IWSDAsyncResult : IUnknown
		{
			public const new Guid IID = .(0x11a9852a, 0x8dd8, 0x423e, 0xb5, 0x37, 0x93, 0x56, 0xdb, 0x4f, 0xbf, 0xb8);
			
			public function HRESULT(IWSDAsyncResult *self, IWSDAsyncCallback* pCallback, IUnknown* pAsyncState) SetCallback;
			public function HRESULT(IWSDAsyncResult *self, HANDLE hWaitHandle) SetWaitHandle;
			public function HRESULT(IWSDAsyncResult *self) HasCompleted;
			public function HRESULT(IWSDAsyncResult *self, IUnknown** ppAsyncState) GetAsyncState;
			public function HRESULT(IWSDAsyncResult *self) Abort;
			public function HRESULT(IWSDAsyncResult *self, WSD_EVENT* pEvent) GetEvent;
			public function HRESULT(IWSDAsyncResult *self, IWSDEndpointProxy** ppEndpoint) GetEndpointProxy;
		}
		[CRepr]
		public struct IWSDAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa63e109d, 0xce72, 0x49e2, 0xba, 0x98, 0xe8, 0x45, 0xf5, 0xee, 0x16, 0x66);
			
			public function HRESULT(IWSDAsyncCallback *self, IWSDAsyncResult* pAsyncResult, IUnknown* pAsyncState) AsyncOperationComplete;
		}
		[CRepr]
		public struct IWSDEventingStatus : IUnknown
		{
			public const new Guid IID = .(0x49b17f52, 0x637a, 0x407a, 0xae, 0x99, 0xfb, 0xe8, 0x2a, 0x4d, 0x38, 0xc0);
			
			public function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction) SubscriptionRenewed;
			public function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction, HRESULT hr) SubscriptionRenewalFailed;
			public function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction) SubscriptionEnded;
		}
		[CRepr]
		public struct IWSDDeviceHost : IUnknown
		{
			public const new Guid IID = .(0x917fe891, 0x3d13, 0x4138, 0x98, 0x09, 0x93, 0x4c, 0x8a, 0xbe, 0xb1, 0x2c);
			
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount) Init;
			public function HRESULT(IWSDDeviceHost *self, uint64 ullInstanceId, WSD_URI_LIST* pScopeList, IWSDDeviceHostNotify* pNotificationSink) Start;
			public function HRESULT(IWSDDeviceHost *self) Stop;
			public function HRESULT(IWSDDeviceHost *self) Terminate;
			public function HRESULT(IWSDDeviceHost *self, WSD_PORT_TYPE* pPortType) RegisterPortType;
			public function HRESULT(IWSDDeviceHost *self, WSD_THIS_MODEL_METADATA* pThisModelMetadata, WSD_THIS_DEVICE_METADATA* pThisDeviceMetadata, WSD_HOST_METADATA* pHostMetadata, WSD_METADATA_SECTION_LIST* pCustomMetadata) SetMetadata;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, IUnknown* pService) RegisterService;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId) RetireService;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, PWSTR pszEndpointAddress, WSD_PORT_TYPE* pPortType, WSDXML_NAME* pPortName, WSDXML_ELEMENT* pAny, IUnknown* pService) AddDynamicService;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId) RemoveDynamicService;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, BOOL fDiscoverable) SetServiceDiscoverable;
			public function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, void* pBody, WSD_OPERATION* pOperation) SignalEvent;
		}
		[CRepr]
		public struct IWSDDeviceHostNotify : IUnknown
		{
			public const new Guid IID = .(0xb5bee9f9, 0xeeda, 0x41fe, 0x96, 0xf7, 0xf4, 0x5e, 0x14, 0x99, 0x0f, 0xb0);
			
			public function HRESULT(IWSDDeviceHostNotify *self, PWSTR pszServiceId, IUnknown** ppService) GetService;
		}
		[CRepr]
		public struct IWSDServiceMessaging : IUnknown
		{
			public const new Guid IID = .(0x94974cf4, 0x0cab, 0x460d, 0xa3, 0xf6, 0x7a, 0x0a, 0xd6, 0x23, 0xc0, 0xe6);
			
			public function HRESULT(IWSDServiceMessaging *self, void* pBody, WSD_OPERATION* pOperation, IWSDMessageParameters* pMessageParameters) SendResponse;
			public function HRESULT(IWSDServiceMessaging *self, WSD_SOAP_HEADER* pRequestHeader, IWSDMessageParameters* pMessageParameters, WSD_SOAP_FAULT* pFault) FaultRequest;
		}
		
		// --- Functions ---
		
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpMessageParameters(IWSDUdpMessageParameters** ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpAddress(IWSDUdpAddress** ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpMessageParameters(IWSDHttpMessageParameters** ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpAddress(IWSDHttpAddress** ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateOutboundAttachment(IWSDOutboundAttachment** ppAttachment);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLGetNameFromBuiltinNamespace(PWSTR pszNamespace, PWSTR pszName, WSDXML_NAME** ppName);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLCreateContext(IWSDXMLContext** ppContext);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider(IWSDXMLContext* pContext, IWSDiscoveryProvider** ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider2(IWSDXMLContext* pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDiscoveryProvider** ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher(IWSDXMLContext* pContext, IWSDiscoveryPublisher** ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher2(IWSDXMLContext* pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDiscoveryPublisher** ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy(PWSTR pszDeviceId, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy** ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxyAdvanced(PWSTR pszDeviceId, IWSDAddress* pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy** ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy2(PWSTR pszDeviceId, PWSTR pszLocalId, IWSDXMLContext* pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDDeviceProxy** ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost(PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceHost** ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHostAdvanced(PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount, IWSDDeviceHost** ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost2(PWSTR pszLocalId, IWSDXMLContext* pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, IWSDDeviceHost** ppDeviceHost);
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
		public static extern HRESULT WSDGenerateFault(PWSTR pszCode, PWSTR pszSubCode, PWSTR pszReason, PWSTR pszDetail, IWSDXMLContext* pContext, WSD_SOAP_FAULT** ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGenerateFaultEx(WSDXML_NAME* pCode, WSDXML_NAME* pSubCode, WSD_LOCALIZED_STRING_LIST* pReasons, PWSTR pszDetail, WSD_SOAP_FAULT** ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriEncode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriDecode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
		
	}
}
