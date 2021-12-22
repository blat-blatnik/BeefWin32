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
		
		public enum WSD_CONFIG_PARAM_TYPE : int32
		{
			CONFIG_MAX_INBOUND_MESSAGE_SIZE = 1,
			CONFIG_MAX_OUTBOUND_MESSAGE_SIZE = 2,
			SECURITY_SSL_CERT_FOR_CLIENT_AUTH = 3,
			SECURITY_SSL_SERVER_CERT_VALIDATION = 4,
			SECURITY_SSL_CLIENT_CERT_VALIDATION = 5,
			SECURITY_SSL_NEGOTIATE_CLIENT_CERT = 6,
			SECURITY_COMPACTSIG_SIGNING_CERT = 7,
			SECURITY_COMPACTSIG_VALIDATION = 8,
			CONFIG_HOSTING_ADDRESSES = 9,
			CONFIG_DEVICE_ADDRESSES = 10,
			SECURITY_REQUIRE_HTTP_CLIENT_AUTH = 11,
			SECURITY_REQUIRE_CLIENT_CERT_OR_HTTP_CLIENT_AUTH = 12,
			SECURITY_USE_HTTP_CLIENT_AUTH = 13,
		}
		public enum WSDUdpMessageType : int32
		{
			ONE_WAY = 0,
			TWO_WAY = 1,
		}
		public enum WSDXML_OP : int32
		{
			None = 0,
			EndOfTable = 1,
			BeginElement_ = 2,
			BeginAnyElement = 3,
			EndElement = 4,
			Element_ = 5,
			AnyElement = 6,
			AnyElements = 7,
			AnyText = 8,
			Attribute_ = 9,
			BeginChoice = 10,
			EndChoice = 11,
			BeginSequence = 12,
			EndSequence = 13,
			BeginAll = 14,
			EndAll = 15,
			Anything = 16,
			AnyNumber = 17,
			OneOrMore = 18,
			Optional = 19,
			FormatBool_ = 20,
			FormatInt8_ = 21,
			FormatInt16_ = 22,
			FormatInt32_ = 23,
			FormatInt64_ = 24,
			FormatUInt8_ = 25,
			FormatUInt16_ = 26,
			FormatUInt32_ = 27,
			FormatUInt64_ = 28,
			FormatUnicodeString_ = 29,
			FormatDom_ = 30,
			FormatStruct_ = 31,
			FormatUri_ = 32,
			FormatUuidUri_ = 33,
			FormatName_ = 34,
			FormatListInsertTail_ = 35,
			FormatType_ = 36,
			FormatDynamicType_ = 37,
			FormatLookupType_ = 38,
			FormatDuration_ = 39,
			FormatDateTime_ = 40,
			FormatFloat_ = 41,
			FormatDouble_ = 42,
			Process_ = 43,
			QualifiedAttribute_ = 44,
			FormatXMLDeclaration_ = 45,
			FormatMax = 46,
		}
		public enum DeviceDiscoveryMechanism : int32
		{
			MulticastDiscovery = 0,
			DirectedDiscovery = 1,
			SecureDirectedDiscovery = 2,
		}
		public enum WSD_PROTOCOL_TYPE : int32
		{
			NONE = 0,
			UDP = 1,
			HTTP = 2,
			HTTPS = 4,
			ALL = 255,
		}
		public enum WSDEventType : int32
		{
			NONE = 0,
			INCOMING_MESSAGE = 1,
			INCOMING_FAULT = 2,
			TRANSMISSION_FAILURE = 3,
			RESPONSE_TIMEOUT = 4,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(char16* pszBuffer, uint32 cchLength, BOOL fSafe) mut
			{
				return VT.Serialize(&this, pszBuffer, cchLength, fSafe);
			}
			public HRESULT Deserialize(PWSTR pszBuffer) mut
			{
				return VT.Deserialize(&this, pszBuffer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDAddress *self, char16* pszBuffer, uint32 cchLength, BOOL fSafe) Serialize;
				public new function HRESULT(IWSDAddress *self, PWSTR pszBuffer) Deserialize;
			}
		}
		[CRepr]
		public struct IWSDTransportAddress : IWSDAddress
		{
			public const new Guid IID = .(0x70d23498, 0x4ee6, 0x4340, 0xa3, 0xdf, 0xd8, 0x45, 0xd2, 0x23, 0x54, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPort(uint16* pwPort) mut
			{
				return VT.GetPort(&this, pwPort);
			}
			public HRESULT SetPort(uint16 wPort) mut
			{
				return VT.SetPort(&this, wPort);
			}
			public HRESULT GetTransportAddress(PWSTR* ppszAddress) mut
			{
				return VT.GetTransportAddress(&this, ppszAddress);
			}
			public HRESULT GetTransportAddressEx(BOOL fSafe, PWSTR* ppszAddress) mut
			{
				return VT.GetTransportAddressEx(&this, fSafe, ppszAddress);
			}
			public HRESULT SetTransportAddress(PWSTR pszAddress) mut
			{
				return VT.SetTransportAddress(&this, pszAddress);
			}
			[CRepr]
			public struct VTable : IWSDAddress.VTable
			{
				public new function HRESULT(IWSDTransportAddress *self, uint16* pwPort) GetPort;
				public new function HRESULT(IWSDTransportAddress *self, uint16 wPort) SetPort;
				public new function HRESULT(IWSDTransportAddress *self, PWSTR* ppszAddress) GetTransportAddress;
				public new function HRESULT(IWSDTransportAddress *self, BOOL fSafe, PWSTR* ppszAddress) GetTransportAddressEx;
				public new function HRESULT(IWSDTransportAddress *self, PWSTR pszAddress) SetTransportAddress;
			}
		}
		[CRepr]
		public struct IWSDMessageParameters : IUnknown
		{
			public const new Guid IID = .(0x1fafe8a2, 0xe6fc, 0x4b80, 0xb6, 0xcf, 0xb7, 0xd4, 0x5c, 0x41, 0x6d, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocalAddress(IWSDAddress** ppAddress) mut
			{
				return VT.GetLocalAddress(&this, ppAddress);
			}
			public HRESULT SetLocalAddress(IWSDAddress* pAddress) mut
			{
				return VT.SetLocalAddress(&this, pAddress);
			}
			public HRESULT GetRemoteAddress(IWSDAddress** ppAddress) mut
			{
				return VT.GetRemoteAddress(&this, ppAddress);
			}
			public HRESULT SetRemoteAddress(IWSDAddress* pAddress) mut
			{
				return VT.SetRemoteAddress(&this, pAddress);
			}
			public HRESULT GetLowerParameters(IWSDMessageParameters** ppTxParams) mut
			{
				return VT.GetLowerParameters(&this, ppTxParams);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDMessageParameters *self, IWSDAddress** ppAddress) GetLocalAddress;
				public new function HRESULT(IWSDMessageParameters *self, IWSDAddress* pAddress) SetLocalAddress;
				public new function HRESULT(IWSDMessageParameters *self, IWSDAddress** ppAddress) GetRemoteAddress;
				public new function HRESULT(IWSDMessageParameters *self, IWSDAddress* pAddress) SetRemoteAddress;
				public new function HRESULT(IWSDMessageParameters *self, IWSDMessageParameters** ppTxParams) GetLowerParameters;
			}
		}
		[CRepr]
		public struct IWSDUdpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x9934149f, 0x8f0c, 0x447b, 0xaa, 0x0b, 0x73, 0x12, 0x4b, 0x0c, 0xa7, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRetransmitParams(WSDUdpRetransmitParams* pParams) mut
			{
				return VT.SetRetransmitParams(&this, pParams);
			}
			public HRESULT GetRetransmitParams(WSDUdpRetransmitParams* pParams) mut
			{
				return VT.GetRetransmitParams(&this, pParams);
			}
			[CRepr]
			public struct VTable : IWSDMessageParameters.VTable
			{
				public new function HRESULT(IWSDUdpMessageParameters *self, WSDUdpRetransmitParams* pParams) SetRetransmitParams;
				public new function HRESULT(IWSDUdpMessageParameters *self, WSDUdpRetransmitParams* pParams) GetRetransmitParams;
			}
		}
		[CRepr]
		public struct IWSDUdpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0x74d6124a, 0xa441, 0x4f78, 0xa1, 0xeb, 0x97, 0xa8, 0xd1, 0x99, 0x68, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSockaddr(SOCKADDR_STORAGE* pSockAddr) mut
			{
				return VT.SetSockaddr(&this, pSockAddr);
			}
			public HRESULT GetSockaddr(SOCKADDR_STORAGE* pSockAddr) mut
			{
				return VT.GetSockaddr(&this, pSockAddr);
			}
			public HRESULT SetExclusive(BOOL fExclusive) mut
			{
				return VT.SetExclusive(&this, fExclusive);
			}
			public HRESULT GetExclusive() mut
			{
				return VT.GetExclusive(&this);
			}
			public HRESULT SetMessageType(WSDUdpMessageType messageType) mut
			{
				return VT.SetMessageType(&this, messageType);
			}
			public HRESULT GetMessageType(WSDUdpMessageType* pMessageType) mut
			{
				return VT.GetMessageType(&this, pMessageType);
			}
			public HRESULT SetTTL(uint32 dwTTL) mut
			{
				return VT.SetTTL(&this, dwTTL);
			}
			public HRESULT GetTTL(uint32* pdwTTL) mut
			{
				return VT.GetTTL(&this, pdwTTL);
			}
			public HRESULT SetAlias(Guid* pAlias) mut
			{
				return VT.SetAlias(&this, pAlias);
			}
			public HRESULT GetAlias(Guid* pAlias) mut
			{
				return VT.GetAlias(&this, pAlias);
			}
			[CRepr]
			public struct VTable : IWSDTransportAddress.VTable
			{
				public new function HRESULT(IWSDUdpAddress *self, SOCKADDR_STORAGE* pSockAddr) SetSockaddr;
				public new function HRESULT(IWSDUdpAddress *self, SOCKADDR_STORAGE* pSockAddr) GetSockaddr;
				public new function HRESULT(IWSDUdpAddress *self, BOOL fExclusive) SetExclusive;
				public new function HRESULT(IWSDUdpAddress *self) GetExclusive;
				public new function HRESULT(IWSDUdpAddress *self, WSDUdpMessageType messageType) SetMessageType;
				public new function HRESULT(IWSDUdpAddress *self, WSDUdpMessageType* pMessageType) GetMessageType;
				public new function HRESULT(IWSDUdpAddress *self, uint32 dwTTL) SetTTL;
				public new function HRESULT(IWSDUdpAddress *self, uint32* pdwTTL) GetTTL;
				public new function HRESULT(IWSDUdpAddress *self, Guid* pAlias) SetAlias;
				public new function HRESULT(IWSDUdpAddress *self, Guid* pAlias) GetAlias;
			}
		}
		[CRepr]
		public struct IWSDHttpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x540bd122, 0x5c83, 0x4dec, 0xb3, 0x96, 0xea, 0x62, 0xa2, 0x69, 0x7f, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInboundHttpHeaders(PWSTR pszHeaders) mut
			{
				return VT.SetInboundHttpHeaders(&this, pszHeaders);
			}
			public HRESULT GetInboundHttpHeaders(PWSTR* ppszHeaders) mut
			{
				return VT.GetInboundHttpHeaders(&this, ppszHeaders);
			}
			public HRESULT SetOutboundHttpHeaders(PWSTR pszHeaders) mut
			{
				return VT.SetOutboundHttpHeaders(&this, pszHeaders);
			}
			public HRESULT GetOutboundHttpHeaders(PWSTR* ppszHeaders) mut
			{
				return VT.GetOutboundHttpHeaders(&this, ppszHeaders);
			}
			public HRESULT SetID(PWSTR pszId) mut
			{
				return VT.SetID(&this, pszId);
			}
			public HRESULT GetID(PWSTR* ppszId) mut
			{
				return VT.GetID(&this, ppszId);
			}
			public HRESULT SetContext(IUnknown* pContext) mut
			{
				return VT.SetContext(&this, pContext);
			}
			public HRESULT GetContext(IUnknown** ppContext) mut
			{
				return VT.GetContext(&this, ppContext);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IWSDMessageParameters.VTable
			{
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszHeaders) SetInboundHttpHeaders;
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszHeaders) GetInboundHttpHeaders;
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszHeaders) SetOutboundHttpHeaders;
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszHeaders) GetOutboundHttpHeaders;
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR pszId) SetID;
				public new function HRESULT(IWSDHttpMessageParameters *self, PWSTR* ppszId) GetID;
				public new function HRESULT(IWSDHttpMessageParameters *self, IUnknown* pContext) SetContext;
				public new function HRESULT(IWSDHttpMessageParameters *self, IUnknown** ppContext) GetContext;
				public new function HRESULT(IWSDHttpMessageParameters *self) Clear;
			}
		}
		[CRepr]
		public struct IWSDHttpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0xd09ac7bd, 0x2a3e, 0x4b85, 0x86, 0x05, 0x27, 0x37, 0xff, 0x3e, 0x4e, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecure() mut
			{
				return VT.GetSecure(&this);
			}
			public HRESULT SetSecure(BOOL fSecure) mut
			{
				return VT.SetSecure(&this, fSecure);
			}
			public HRESULT GetPath(PWSTR* ppszPath) mut
			{
				return VT.GetPath(&this, ppszPath);
			}
			public HRESULT SetPath(PWSTR pszPath) mut
			{
				return VT.SetPath(&this, pszPath);
			}
			[CRepr]
			public struct VTable : IWSDTransportAddress.VTable
			{
				public new function HRESULT(IWSDHttpAddress *self) GetSecure;
				public new function HRESULT(IWSDHttpAddress *self, BOOL fSecure) SetSecure;
				public new function HRESULT(IWSDHttpAddress *self, PWSTR* ppszPath) GetPath;
				public new function HRESULT(IWSDHttpAddress *self, PWSTR pszPath) SetPath;
			}
		}
		[CRepr]
		public struct IWSDSSLClientCertificate : IUnknown
		{
			public const new Guid IID = .(0xde105e87, 0xa0da, 0x418e, 0x98, 0xad, 0x27, 0xb9, 0xee, 0xd8, 0x7b, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientCertificate(CERT_CONTEXT** ppCertContext) mut
			{
				return VT.GetClientCertificate(&this, ppCertContext);
			}
			public HRESULT GetMappedAccessToken(HANDLE* phToken) mut
			{
				return VT.GetMappedAccessToken(&this, phToken);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDSSLClientCertificate *self, CERT_CONTEXT** ppCertContext) GetClientCertificate;
				public new function HRESULT(IWSDSSLClientCertificate *self, HANDLE* phToken) GetMappedAccessToken;
			}
		}
		[CRepr]
		public struct IWSDHttpAuthParameters : IUnknown
		{
			public const new Guid IID = .(0x0b476df0, 0x8dac, 0x480d, 0xb0, 0x5c, 0x99, 0x78, 0x1a, 0x58, 0x84, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientAccessToken(HANDLE* phToken) mut
			{
				return VT.GetClientAccessToken(&this, phToken);
			}
			public HRESULT GetAuthType(uint32* pAuthType) mut
			{
				return VT.GetAuthType(&this, pAuthType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDHttpAuthParameters *self, HANDLE* phToken) GetClientAccessToken;
				public new function HRESULT(IWSDHttpAuthParameters *self, uint32* pAuthType) GetAuthType;
			}
		}
		[CRepr]
		public struct IWSDSignatureProperty : IUnknown
		{
			public const new Guid IID = .(0x03ce20aa, 0x71c4, 0x45e2, 0xb3, 0x2e, 0x37, 0x66, 0xc6, 0x1c, 0x79, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMessageSigned(BOOL* pbSigned) mut
			{
				return VT.IsMessageSigned(&this, pbSigned);
			}
			public HRESULT IsMessageSignatureTrusted(BOOL* pbSignatureTrusted) mut
			{
				return VT.IsMessageSignatureTrusted(&this, pbSignatureTrusted);
			}
			public HRESULT GetKeyInfo(uint8* pbKeyInfo, uint32* pdwKeyInfoSize) mut
			{
				return VT.GetKeyInfo(&this, pbKeyInfo, pdwKeyInfoSize);
			}
			public HRESULT GetSignature(uint8* pbSignature, uint32* pdwSignatureSize) mut
			{
				return VT.GetSignature(&this, pbSignature, pdwSignatureSize);
			}
			public HRESULT GetSignedInfoHash(uint8* pbSignedInfoHash, uint32* pdwHashSize) mut
			{
				return VT.GetSignedInfoHash(&this, pbSignedInfoHash, pdwHashSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDSignatureProperty *self, BOOL* pbSigned) IsMessageSigned;
				public new function HRESULT(IWSDSignatureProperty *self, BOOL* pbSignatureTrusted) IsMessageSignatureTrusted;
				public new function HRESULT(IWSDSignatureProperty *self, uint8* pbKeyInfo, uint32* pdwKeyInfoSize) GetKeyInfo;
				public new function HRESULT(IWSDSignatureProperty *self, uint8* pbSignature, uint32* pdwSignatureSize) GetSignature;
				public new function HRESULT(IWSDSignatureProperty *self, uint8* pbSignedInfoHash, uint32* pdwHashSize) GetSignedInfoHash;
			}
		}
		[CRepr]
		public struct IWSDAttachment : IUnknown
		{
			public const new Guid IID = .(0x5d55a616, 0x9df8, 0x4b09, 0xb1, 0x56, 0x9b, 0xa3, 0x51, 0xa4, 0x8b, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IWSDOutboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0xaa302f8d, 0x5a22, 0x4ba5, 0xb3, 0x92, 0xaa, 0x84, 0x86, 0xf4, 0xc1, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint8* pBuffer, uint32 dwBytesToWrite, uint32* pdwNumberOfBytesWritten) mut
			{
				return VT.Write(&this, pBuffer, dwBytesToWrite, pdwNumberOfBytesWritten);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT Abort() mut
			{
				return VT.Abort(&this);
			}
			[CRepr]
			public struct VTable : IWSDAttachment.VTable
			{
				public new function HRESULT(IWSDOutboundAttachment *self, uint8* pBuffer, uint32 dwBytesToWrite, uint32* pdwNumberOfBytesWritten) Write;
				public new function HRESULT(IWSDOutboundAttachment *self) Close;
				public new function HRESULT(IWSDOutboundAttachment *self) Abort;
			}
		}
		[CRepr]
		public struct IWSDInboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0x5bd6ca65, 0x233c, 0x4fb8, 0x9f, 0x7a, 0x26, 0x41, 0x61, 0x96, 0x55, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(uint8* pBuffer, uint32 dwBytesToRead, uint32* pdwNumberOfBytesRead) mut
			{
				return VT.Read(&this, pBuffer, dwBytesToRead, pdwNumberOfBytesRead);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IWSDAttachment.VTable
			{
				public new function HRESULT(IWSDInboundAttachment *self, uint8* pBuffer, uint32 dwBytesToRead, uint32* pdwNumberOfBytesRead) Read;
				public new function HRESULT(IWSDInboundAttachment *self) Close;
			}
		}
		[CRepr]
		public struct IWSDXMLContext : IUnknown
		{
			public const new Guid IID = .(0x75d8f3ee, 0x3e5a, 0x43b4, 0xa1, 0x5a, 0xbc, 0xf6, 0x88, 0x74, 0x60, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddNamespace(PWSTR pszUri, PWSTR pszSuggestedPrefix, WSDXML_NAMESPACE** ppNamespace) mut
			{
				return VT.AddNamespace(&this, pszUri, pszSuggestedPrefix, ppNamespace);
			}
			public HRESULT AddNameToNamespace(PWSTR pszUri, PWSTR pszName, WSDXML_NAME** ppName) mut
			{
				return VT.AddNameToNamespace(&this, pszUri, pszName, ppName);
			}
			public HRESULT SetNamespaces(WSDXML_NAMESPACE** pNamespaces, uint16 wNamespacesCount, uint8 bLayerNumber) mut
			{
				return VT.SetNamespaces(&this, pNamespaces, wNamespacesCount, bLayerNumber);
			}
			public HRESULT SetTypes(WSDXML_TYPE** pTypes, uint32 dwTypesCount, uint8 bLayerNumber) mut
			{
				return VT.SetTypes(&this, pTypes, dwTypesCount, bLayerNumber);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDXMLContext *self, PWSTR pszUri, PWSTR pszSuggestedPrefix, WSDXML_NAMESPACE** ppNamespace) AddNamespace;
				public new function HRESULT(IWSDXMLContext *self, PWSTR pszUri, PWSTR pszName, WSDXML_NAME** ppName) AddNameToNamespace;
				public new function HRESULT(IWSDXMLContext *self, WSDXML_NAMESPACE** pNamespaces, uint16 wNamespacesCount, uint8 bLayerNumber) SetNamespaces;
				public new function HRESULT(IWSDXMLContext *self, WSDXML_TYPE** pTypes, uint32 dwTypesCount, uint8 bLayerNumber) SetTypes;
			}
		}
		[CRepr]
		public struct IWSDiscoveryProvider : IUnknown
		{
			public const new Guid IID = .(0x8ffc8e55, 0xf0eb, 0x480f, 0x88, 0xb7, 0xb4, 0x35, 0xdd, 0x28, 0x1d, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAddressFamily(uint32 dwAddressFamily) mut
			{
				return VT.SetAddressFamily(&this, dwAddressFamily);
			}
			public HRESULT Attach(IWSDiscoveryProviderNotify* pSink) mut
			{
				return VT.Attach(&this, pSink);
			}
			public HRESULT Detach() mut
			{
				return VT.Detach(&this);
			}
			public HRESULT SearchById(PWSTR pszId, PWSTR pszTag) mut
			{
				return VT.SearchById(&this, pszId, pszTag);
			}
			public HRESULT SearchByAddress(PWSTR pszAddress, PWSTR pszTag) mut
			{
				return VT.SearchByAddress(&this, pszAddress, pszTag);
			}
			public HRESULT SearchByType(WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, PWSTR pszMatchBy, PWSTR pszTag) mut
			{
				return VT.SearchByType(&this, pTypesList, pScopesList, pszMatchBy, pszTag);
			}
			public HRESULT GetXMLContext(IWSDXMLContext** ppContext) mut
			{
				return VT.GetXMLContext(&this, ppContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDiscoveryProvider *self, uint32 dwAddressFamily) SetAddressFamily;
				public new function HRESULT(IWSDiscoveryProvider *self, IWSDiscoveryProviderNotify* pSink) Attach;
				public new function HRESULT(IWSDiscoveryProvider *self) Detach;
				public new function HRESULT(IWSDiscoveryProvider *self, PWSTR pszId, PWSTR pszTag) SearchById;
				public new function HRESULT(IWSDiscoveryProvider *self, PWSTR pszAddress, PWSTR pszTag) SearchByAddress;
				public new function HRESULT(IWSDiscoveryProvider *self, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, PWSTR pszMatchBy, PWSTR pszTag) SearchByType;
				public new function HRESULT(IWSDiscoveryProvider *self, IWSDXMLContext** ppContext) GetXMLContext;
			}
		}
		[CRepr]
		public struct IWSDiscoveryProviderNotify : IUnknown
		{
			public const new Guid IID = .(0x73ee3ced, 0xb6e6, 0x4329, 0xa5, 0x46, 0x3e, 0x8a, 0xd4, 0x65, 0x63, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(IWSDiscoveredService* pService) mut
			{
				return VT.Add(&this, pService);
			}
			public HRESULT Remove(IWSDiscoveredService* pService) mut
			{
				return VT.Remove(&this, pService);
			}
			public HRESULT SearchFailed(HRESULT hr, PWSTR pszTag) mut
			{
				return VT.SearchFailed(&this, hr, pszTag);
			}
			public HRESULT SearchComplete(PWSTR pszTag) mut
			{
				return VT.SearchComplete(&this, pszTag);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDiscoveryProviderNotify *self, IWSDiscoveredService* pService) Add;
				public new function HRESULT(IWSDiscoveryProviderNotify *self, IWSDiscoveredService* pService) Remove;
				public new function HRESULT(IWSDiscoveryProviderNotify *self, HRESULT hr, PWSTR pszTag) SearchFailed;
				public new function HRESULT(IWSDiscoveryProviderNotify *self, PWSTR pszTag) SearchComplete;
			}
		}
		[CRepr]
		public struct IWSDiscoveredService : IUnknown
		{
			public const new Guid IID = .(0x4bad8a3b, 0xb374, 0x4420, 0x96, 0x32, 0xaa, 0xc9, 0x45, 0xb3, 0x74, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEndpointReference(WSD_ENDPOINT_REFERENCE** ppEndpointReference) mut
			{
				return VT.GetEndpointReference(&this, ppEndpointReference);
			}
			public HRESULT GetTypes(WSD_NAME_LIST** ppTypesList) mut
			{
				return VT.GetTypes(&this, ppTypesList);
			}
			public HRESULT GetScopes(WSD_URI_LIST** ppScopesList) mut
			{
				return VT.GetScopes(&this, ppScopesList);
			}
			public HRESULT GetXAddrs(WSD_URI_LIST** ppXAddrsList) mut
			{
				return VT.GetXAddrs(&this, ppXAddrsList);
			}
			public HRESULT GetMetadataVersion(uint64* pullMetadataVersion) mut
			{
				return VT.GetMetadataVersion(&this, pullMetadataVersion);
			}
			public HRESULT GetExtendedDiscoXML(WSDXML_ELEMENT** ppHeaderAny, WSDXML_ELEMENT** ppBodyAny) mut
			{
				return VT.GetExtendedDiscoXML(&this, ppHeaderAny, ppBodyAny);
			}
			public HRESULT GetProbeResolveTag(PWSTR* ppszTag) mut
			{
				return VT.GetProbeResolveTag(&this, ppszTag);
			}
			public HRESULT GetRemoteTransportAddress(PWSTR* ppszRemoteTransportAddress) mut
			{
				return VT.GetRemoteTransportAddress(&this, ppszRemoteTransportAddress);
			}
			public HRESULT GetLocalTransportAddress(PWSTR* ppszLocalTransportAddress) mut
			{
				return VT.GetLocalTransportAddress(&this, ppszLocalTransportAddress);
			}
			public HRESULT GetLocalInterfaceGUID(Guid* pGuid) mut
			{
				return VT.GetLocalInterfaceGUID(&this, pGuid);
			}
			public HRESULT GetInstanceId(uint64* pullInstanceId) mut
			{
				return VT.GetInstanceId(&this, pullInstanceId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDiscoveredService *self, WSD_ENDPOINT_REFERENCE** ppEndpointReference) GetEndpointReference;
				public new function HRESULT(IWSDiscoveredService *self, WSD_NAME_LIST** ppTypesList) GetTypes;
				public new function HRESULT(IWSDiscoveredService *self, WSD_URI_LIST** ppScopesList) GetScopes;
				public new function HRESULT(IWSDiscoveredService *self, WSD_URI_LIST** ppXAddrsList) GetXAddrs;
				public new function HRESULT(IWSDiscoveredService *self, uint64* pullMetadataVersion) GetMetadataVersion;
				public new function HRESULT(IWSDiscoveredService *self, WSDXML_ELEMENT** ppHeaderAny, WSDXML_ELEMENT** ppBodyAny) GetExtendedDiscoXML;
				public new function HRESULT(IWSDiscoveredService *self, PWSTR* ppszTag) GetProbeResolveTag;
				public new function HRESULT(IWSDiscoveredService *self, PWSTR* ppszRemoteTransportAddress) GetRemoteTransportAddress;
				public new function HRESULT(IWSDiscoveredService *self, PWSTR* ppszLocalTransportAddress) GetLocalTransportAddress;
				public new function HRESULT(IWSDiscoveredService *self, Guid* pGuid) GetLocalInterfaceGUID;
				public new function HRESULT(IWSDiscoveredService *self, uint64* pullInstanceId) GetInstanceId;
			}
		}
		[CRepr]
		public struct IWSDiscoveryPublisher : IUnknown
		{
			public const new Guid IID = .(0xae01e1a8, 0x3ff9, 0x4148, 0x81, 0x16, 0x05, 0x7c, 0xc6, 0x16, 0xfe, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAddressFamily(uint32 dwAddressFamily) mut
			{
				return VT.SetAddressFamily(&this, dwAddressFamily);
			}
			public HRESULT RegisterNotificationSink(IWSDiscoveryPublisherNotify* pSink) mut
			{
				return VT.RegisterNotificationSink(&this, pSink);
			}
			public HRESULT UnRegisterNotificationSink(IWSDiscoveryPublisherNotify* pSink) mut
			{
				return VT.UnRegisterNotificationSink(&this, pSink);
			}
			public HRESULT Publish(PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut
			{
				return VT.Publish(&this, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			}
			public HRESULT UnPublish(PWSTR pszId, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSDXML_ELEMENT* pAny) mut
			{
				return VT.UnPublish(&this, pszId, ullInstanceId, ullMessageNumber, pszSessionId, pAny);
			}
			public HRESULT MatchProbe(WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut
			{
				return VT.MatchProbe(&this, pProbeMessage, pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			}
			public HRESULT MatchResolve(WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut
			{
				return VT.MatchResolve(&this, pResolveMessage, pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			}
			public HRESULT PublishEx(PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut
			{
				return VT.PublishEx(&this, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			}
			public HRESULT MatchProbeEx(WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut
			{
				return VT.MatchProbeEx(&this, pProbeMessage, pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			}
			public HRESULT MatchResolveEx(WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut
			{
				return VT.MatchResolveEx(&this, pResolveMessage, pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			}
			public HRESULT RegisterScopeMatchingRule(IWSDScopeMatchingRule* pScopeMatchingRule) mut
			{
				return VT.RegisterScopeMatchingRule(&this, pScopeMatchingRule);
			}
			public HRESULT UnRegisterScopeMatchingRule(IWSDScopeMatchingRule* pScopeMatchingRule) mut
			{
				return VT.UnRegisterScopeMatchingRule(&this, pScopeMatchingRule);
			}
			public HRESULT GetXMLContext(IWSDXMLContext** ppContext) mut
			{
				return VT.GetXMLContext(&this, ppContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDiscoveryPublisher *self, uint32 dwAddressFamily) SetAddressFamily;
				public new function HRESULT(IWSDiscoveryPublisher *self, IWSDiscoveryPublisherNotify* pSink) RegisterNotificationSink;
				public new function HRESULT(IWSDiscoveryPublisher *self, IWSDiscoveryPublisherNotify* pSink) UnRegisterNotificationSink;
				public new function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) Publish;
				public new function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSDXML_ELEMENT* pAny) UnPublish;
				public new function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchProbe;
				public new function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchResolve;
				public new function HRESULT(IWSDiscoveryPublisher *self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) PublishEx;
				public new function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pProbeMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchProbeEx;
				public new function HRESULT(IWSDiscoveryPublisher *self, WSD_SOAP_MESSAGE* pResolveMessage, IWSDMessageParameters* pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchResolveEx;
				public new function HRESULT(IWSDiscoveryPublisher *self, IWSDScopeMatchingRule* pScopeMatchingRule) RegisterScopeMatchingRule;
				public new function HRESULT(IWSDiscoveryPublisher *self, IWSDScopeMatchingRule* pScopeMatchingRule) UnRegisterScopeMatchingRule;
				public new function HRESULT(IWSDiscoveryPublisher *self, IWSDXMLContext** ppContext) GetXMLContext;
			}
		}
		[CRepr]
		public struct IWSDiscoveryPublisherNotify : IUnknown
		{
			public const new Guid IID = .(0xe67651b0, 0x337a, 0x4b3c, 0x97, 0x58, 0x73, 0x33, 0x88, 0x56, 0x82, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProbeHandler(WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) mut
			{
				return VT.ProbeHandler(&this, pSoap, pMessageParameters);
			}
			public HRESULT ResolveHandler(WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) mut
			{
				return VT.ResolveHandler(&this, pSoap, pMessageParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDiscoveryPublisherNotify *self, WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) ProbeHandler;
				public new function HRESULT(IWSDiscoveryPublisherNotify *self, WSD_SOAP_MESSAGE* pSoap, IWSDMessageParameters* pMessageParameters) ResolveHandler;
			}
		}
		[CRepr]
		public struct IWSDScopeMatchingRule : IUnknown
		{
			public const new Guid IID = .(0xfcafe424, 0xfef5, 0x481a, 0xbd, 0x9f, 0x33, 0xce, 0x05, 0x74, 0x25, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetScopeRule(PWSTR* ppszScopeMatchingRule) mut
			{
				return VT.GetScopeRule(&this, ppszScopeMatchingRule);
			}
			public HRESULT MatchScopes(PWSTR pszScope1, PWSTR pszScope2, BOOL* pfMatch) mut
			{
				return VT.MatchScopes(&this, pszScope1, pszScope2, pfMatch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDScopeMatchingRule *self, PWSTR* ppszScopeMatchingRule) GetScopeRule;
				public new function HRESULT(IWSDScopeMatchingRule *self, PWSTR pszScope1, PWSTR pszScope2, BOOL* pfMatch) MatchScopes;
			}
		}
		[CRepr]
		public struct IWSDEndpointProxy : IUnknown
		{
			public const new Guid IID = .(0x1860d430, 0xb24c, 0x4975, 0x9f, 0x90, 0xdb, 0xb3, 0x9b, 0xaa, 0x24, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendOneWayRequest(void* pBody, WSD_OPERATION* pOperation) mut
			{
				return VT.SendOneWayRequest(&this, pBody, pOperation);
			}
			public HRESULT SendTwoWayRequest(void* pBody, WSD_OPERATION* pOperation, WSD_SYNCHRONOUS_RESPONSE_CONTEXT* pResponseContext) mut
			{
				return VT.SendTwoWayRequest(&this, pBody, pOperation, pResponseContext);
			}
			public HRESULT SendTwoWayRequestAsync(void* pBody, WSD_OPERATION* pOperation, IUnknown* pAsyncState, IWSDAsyncCallback* pCallback, IWSDAsyncResult** pResult) mut
			{
				return VT.SendTwoWayRequestAsync(&this, pBody, pOperation, pAsyncState, pCallback, pResult);
			}
			public HRESULT AbortAsyncOperation(IWSDAsyncResult* pAsyncResult) mut
			{
				return VT.AbortAsyncOperation(&this, pAsyncResult);
			}
			public HRESULT ProcessFault(WSD_SOAP_FAULT* pFault) mut
			{
				return VT.ProcessFault(&this, pFault);
			}
			public HRESULT GetErrorInfo(PWSTR* ppszErrorInfo) mut
			{
				return VT.GetErrorInfo(&this, ppszErrorInfo);
			}
			public HRESULT GetFaultInfo(WSD_SOAP_FAULT** ppFault) mut
			{
				return VT.GetFaultInfo(&this, ppFault);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation) SendOneWayRequest;
				public new function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation, WSD_SYNCHRONOUS_RESPONSE_CONTEXT* pResponseContext) SendTwoWayRequest;
				public new function HRESULT(IWSDEndpointProxy *self, void* pBody, WSD_OPERATION* pOperation, IUnknown* pAsyncState, IWSDAsyncCallback* pCallback, IWSDAsyncResult** pResult) SendTwoWayRequestAsync;
				public new function HRESULT(IWSDEndpointProxy *self, IWSDAsyncResult* pAsyncResult) AbortAsyncOperation;
				public new function HRESULT(IWSDEndpointProxy *self, WSD_SOAP_FAULT* pFault) ProcessFault;
				public new function HRESULT(IWSDEndpointProxy *self, PWSTR* ppszErrorInfo) GetErrorInfo;
				public new function HRESULT(IWSDEndpointProxy *self, WSD_SOAP_FAULT** ppFault) GetFaultInfo;
			}
		}
		[CRepr]
		public struct IWSDMetadataExchange : IUnknown
		{
			public const new Guid IID = .(0x06996d57, 0x1d67, 0x4928, 0x93, 0x07, 0x3d, 0x78, 0x33, 0xfd, 0xb8, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMetadata(WSD_METADATA_SECTION_LIST** MetadataOut) mut
			{
				return VT.GetMetadata(&this, MetadataOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDMetadataExchange *self, WSD_METADATA_SECTION_LIST** MetadataOut) GetMetadata;
			}
		}
		[CRepr]
		public struct IWSDServiceProxy : IWSDMetadataExchange
		{
			public const new Guid IID = .(0xd4c7fb9c, 0x03ab, 0x4175, 0x9d, 0x67, 0x09, 0x4f, 0xaf, 0xeb, 0xf4, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginGetMetadata(IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginGetMetadata(&this, ppResult);
			}
			public HRESULT EndGetMetadata(IWSDAsyncResult* pResult, WSD_METADATA_SECTION_LIST** ppMetadata) mut
			{
				return VT.EndGetMetadata(&this, pResult, ppMetadata);
			}
			public HRESULT GetServiceMetadata(WSD_SERVICE_METADATA** ppServiceMetadata) mut
			{
				return VT.GetServiceMetadata(&this, ppServiceMetadata);
			}
			public HRESULT SubscribeToOperation(WSD_OPERATION* pOperation, IUnknown* pUnknown, WSDXML_ELEMENT* pAny, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.SubscribeToOperation(&this, pOperation, pUnknown, pAny, ppAny);
			}
			public HRESULT UnsubscribeToOperation(WSD_OPERATION* pOperation) mut
			{
				return VT.UnsubscribeToOperation(&this, pOperation);
			}
			public HRESULT SetEventingStatusCallback(IWSDEventingStatus* pStatus) mut
			{
				return VT.SetEventingStatusCallback(&this, pStatus);
			}
			public HRESULT GetEndpointProxy(IWSDEndpointProxy** ppProxy) mut
			{
				return VT.GetEndpointProxy(&this, ppProxy);
			}
			[CRepr]
			public struct VTable : IWSDMetadataExchange.VTable
			{
				public new function HRESULT(IWSDServiceProxy *self, IWSDAsyncResult** ppResult) BeginGetMetadata;
				public new function HRESULT(IWSDServiceProxy *self, IWSDAsyncResult* pResult, WSD_METADATA_SECTION_LIST** ppMetadata) EndGetMetadata;
				public new function HRESULT(IWSDServiceProxy *self, WSD_SERVICE_METADATA** ppServiceMetadata) GetServiceMetadata;
				public new function HRESULT(IWSDServiceProxy *self, WSD_OPERATION* pOperation, IUnknown* pUnknown, WSDXML_ELEMENT* pAny, WSDXML_ELEMENT** ppAny) SubscribeToOperation;
				public new function HRESULT(IWSDServiceProxy *self, WSD_OPERATION* pOperation) UnsubscribeToOperation;
				public new function HRESULT(IWSDServiceProxy *self, IWSDEventingStatus* pStatus) SetEventingStatusCallback;
				public new function HRESULT(IWSDServiceProxy *self, IWSDEndpointProxy** ppProxy) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDServiceProxyEventing : IWSDServiceProxy
		{
			public const new Guid IID = .(0xf9279d6d, 0x1012, 0x4a94, 0xb8, 0xcc, 0xfd, 0x35, 0xd2, 0x20, 0x2b, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.SubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pUnknown, pExpires, pAny, ppExpires, ppAny);
			}
			public HRESULT BeginSubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginSubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pUnknown, pExpires, pAny, pAsyncState, pAsyncCallback, ppResult);
			}
			public HRESULT EndSubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.EndSubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pResult, ppExpires, ppAny);
			}
			public HRESULT UnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny) mut
			{
				return VT.UnsubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pAny);
			}
			public HRESULT BeginUnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginUnsubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pAny, pAsyncState, pAsyncCallback, ppResult);
			}
			public HRESULT EndUnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult) mut
			{
				return VT.EndUnsubscribeToMultipleOperations(&this, pOperations, dwOperationCount, pResult);
			}
			public HRESULT RenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.RenewMultipleOperations(&this, pOperations, dwOperationCount, pExpires, pAny, ppExpires, ppAny);
			}
			public HRESULT BeginRenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginRenewMultipleOperations(&this, pOperations, dwOperationCount, pExpires, pAny, pAsyncState, pAsyncCallback, ppResult);
			}
			public HRESULT EndRenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.EndRenewMultipleOperations(&this, pOperations, dwOperationCount, pResult, ppExpires, ppAny);
			}
			public HRESULT GetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.GetStatusForMultipleOperations(&this, pOperations, dwOperationCount, pAny, ppExpires, ppAny);
			}
			public HRESULT BeginGetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginGetStatusForMultipleOperations(&this, pOperations, dwOperationCount, pAny, pAsyncState, pAsyncCallback, ppResult);
			}
			public HRESULT EndGetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut
			{
				return VT.EndGetStatusForMultipleOperations(&this, pOperations, dwOperationCount, pResult, ppExpires, ppAny);
			}
			[CRepr]
			public struct VTable : IWSDServiceProxy.VTable
			{
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) SubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginSubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndSubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny) UnsubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginUnsubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult) EndUnsubscribeToMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) RenewMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginRenewMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndRenewMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) GetStatusForMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, IWSDAsyncResult** ppResult) BeginGetStatusForMultipleOperations;
				public new function HRESULT(IWSDServiceProxyEventing *self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IWSDAsyncResult* pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndGetStatusForMultipleOperations;
			}
		}
		[CRepr]
		public struct IWSDDeviceProxy : IUnknown
		{
			public const new Guid IID = .(0xeee0c031, 0xc578, 0x4c0e, 0x9a, 0x3b, 0x97, 0x3c, 0x35, 0xf4, 0x09, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(PWSTR pszDeviceId, IWSDAddress* pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy* pSponsor) mut
			{
				return VT.Init(&this, pszDeviceId, pDeviceAddress, pszLocalId, pContext, pSponsor);
			}
			public HRESULT BeginGetMetadata(IWSDAsyncResult** ppResult) mut
			{
				return VT.BeginGetMetadata(&this, ppResult);
			}
			public HRESULT EndGetMetadata(IWSDAsyncResult* pResult) mut
			{
				return VT.EndGetMetadata(&this, pResult);
			}
			public HRESULT GetHostMetadata(WSD_HOST_METADATA** ppHostMetadata) mut
			{
				return VT.GetHostMetadata(&this, ppHostMetadata);
			}
			public HRESULT GetThisModelMetadata(WSD_THIS_MODEL_METADATA** ppManufacturerMetadata) mut
			{
				return VT.GetThisModelMetadata(&this, ppManufacturerMetadata);
			}
			public HRESULT GetThisDeviceMetadata(WSD_THIS_DEVICE_METADATA** ppThisDeviceMetadata) mut
			{
				return VT.GetThisDeviceMetadata(&this, ppThisDeviceMetadata);
			}
			public HRESULT GetAllMetadata(WSD_METADATA_SECTION_LIST** ppMetadata) mut
			{
				return VT.GetAllMetadata(&this, ppMetadata);
			}
			public HRESULT GetServiceProxyById(PWSTR pszServiceId, IWSDServiceProxy** ppServiceProxy) mut
			{
				return VT.GetServiceProxyById(&this, pszServiceId, ppServiceProxy);
			}
			public HRESULT GetServiceProxyByType(WSDXML_NAME* pType, IWSDServiceProxy** ppServiceProxy) mut
			{
				return VT.GetServiceProxyByType(&this, pType, ppServiceProxy);
			}
			public HRESULT GetEndpointProxy(IWSDEndpointProxy** ppProxy) mut
			{
				return VT.GetEndpointProxy(&this, ppProxy);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDDeviceProxy *self, PWSTR pszDeviceId, IWSDAddress* pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy* pSponsor) Init;
				public new function HRESULT(IWSDDeviceProxy *self, IWSDAsyncResult** ppResult) BeginGetMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, IWSDAsyncResult* pResult) EndGetMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, WSD_HOST_METADATA** ppHostMetadata) GetHostMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, WSD_THIS_MODEL_METADATA** ppManufacturerMetadata) GetThisModelMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, WSD_THIS_DEVICE_METADATA** ppThisDeviceMetadata) GetThisDeviceMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, WSD_METADATA_SECTION_LIST** ppMetadata) GetAllMetadata;
				public new function HRESULT(IWSDDeviceProxy *self, PWSTR pszServiceId, IWSDServiceProxy** ppServiceProxy) GetServiceProxyById;
				public new function HRESULT(IWSDDeviceProxy *self, WSDXML_NAME* pType, IWSDServiceProxy** ppServiceProxy) GetServiceProxyByType;
				public new function HRESULT(IWSDDeviceProxy *self, IWSDEndpointProxy** ppProxy) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDAsyncResult : IUnknown
		{
			public const new Guid IID = .(0x11a9852a, 0x8dd8, 0x423e, 0xb5, 0x37, 0x93, 0x56, 0xdb, 0x4f, 0xbf, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCallback(IWSDAsyncCallback* pCallback, IUnknown* pAsyncState) mut
			{
				return VT.SetCallback(&this, pCallback, pAsyncState);
			}
			public HRESULT SetWaitHandle(HANDLE hWaitHandle) mut
			{
				return VT.SetWaitHandle(&this, hWaitHandle);
			}
			public HRESULT HasCompleted() mut
			{
				return VT.HasCompleted(&this);
			}
			public HRESULT GetAsyncState(IUnknown** ppAsyncState) mut
			{
				return VT.GetAsyncState(&this, ppAsyncState);
			}
			public HRESULT Abort() mut
			{
				return VT.Abort(&this);
			}
			public HRESULT GetEvent(WSD_EVENT* pEvent) mut
			{
				return VT.GetEvent(&this, pEvent);
			}
			public HRESULT GetEndpointProxy(IWSDEndpointProxy** ppEndpoint) mut
			{
				return VT.GetEndpointProxy(&this, ppEndpoint);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDAsyncResult *self, IWSDAsyncCallback* pCallback, IUnknown* pAsyncState) SetCallback;
				public new function HRESULT(IWSDAsyncResult *self, HANDLE hWaitHandle) SetWaitHandle;
				public new function HRESULT(IWSDAsyncResult *self) HasCompleted;
				public new function HRESULT(IWSDAsyncResult *self, IUnknown** ppAsyncState) GetAsyncState;
				public new function HRESULT(IWSDAsyncResult *self) Abort;
				public new function HRESULT(IWSDAsyncResult *self, WSD_EVENT* pEvent) GetEvent;
				public new function HRESULT(IWSDAsyncResult *self, IWSDEndpointProxy** ppEndpoint) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa63e109d, 0xce72, 0x49e2, 0xba, 0x98, 0xe8, 0x45, 0xf5, 0xee, 0x16, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncOperationComplete(IWSDAsyncResult* pAsyncResult, IUnknown* pAsyncState) mut
			{
				return VT.AsyncOperationComplete(&this, pAsyncResult, pAsyncState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDAsyncCallback *self, IWSDAsyncResult* pAsyncResult, IUnknown* pAsyncState) AsyncOperationComplete;
			}
		}
		[CRepr]
		public struct IWSDEventingStatus : IUnknown
		{
			public const new Guid IID = .(0x49b17f52, 0x637a, 0x407a, 0xae, 0x99, 0xfb, 0xe8, 0x2a, 0x4d, 0x38, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SubscriptionRenewed(PWSTR pszSubscriptionAction) mut
			{
				VT.SubscriptionRenewed(&this, pszSubscriptionAction);
			}
			public void SubscriptionRenewalFailed(PWSTR pszSubscriptionAction, HRESULT hr) mut
			{
				VT.SubscriptionRenewalFailed(&this, pszSubscriptionAction, hr);
			}
			public void SubscriptionEnded(PWSTR pszSubscriptionAction) mut
			{
				VT.SubscriptionEnded(&this, pszSubscriptionAction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction) SubscriptionRenewed;
				public new function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction, HRESULT hr) SubscriptionRenewalFailed;
				public new function void(IWSDEventingStatus *self, PWSTR pszSubscriptionAction) SubscriptionEnded;
			}
		}
		[CRepr]
		public struct IWSDDeviceHost : IUnknown
		{
			public const new Guid IID = .(0x917fe891, 0x3d13, 0x4138, 0x98, 0x09, 0x93, 0x4c, 0x8a, 0xbe, 0xb1, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount) mut
			{
				return VT.Init(&this, pszLocalId, pContext, ppHostAddresses, dwHostAddressCount);
			}
			public HRESULT Start(uint64 ullInstanceId, WSD_URI_LIST* pScopeList, IWSDDeviceHostNotify* pNotificationSink) mut
			{
				return VT.Start(&this, ullInstanceId, pScopeList, pNotificationSink);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Terminate() mut
			{
				return VT.Terminate(&this);
			}
			public HRESULT RegisterPortType(WSD_PORT_TYPE* pPortType) mut
			{
				return VT.RegisterPortType(&this, pPortType);
			}
			public HRESULT SetMetadata(WSD_THIS_MODEL_METADATA* pThisModelMetadata, WSD_THIS_DEVICE_METADATA* pThisDeviceMetadata, WSD_HOST_METADATA* pHostMetadata, WSD_METADATA_SECTION_LIST* pCustomMetadata) mut
			{
				return VT.SetMetadata(&this, pThisModelMetadata, pThisDeviceMetadata, pHostMetadata, pCustomMetadata);
			}
			public HRESULT RegisterService(PWSTR pszServiceId, IUnknown* pService) mut
			{
				return VT.RegisterService(&this, pszServiceId, pService);
			}
			public HRESULT RetireService(PWSTR pszServiceId) mut
			{
				return VT.RetireService(&this, pszServiceId);
			}
			public HRESULT AddDynamicService(PWSTR pszServiceId, PWSTR pszEndpointAddress, WSD_PORT_TYPE* pPortType, WSDXML_NAME* pPortName, WSDXML_ELEMENT* pAny, IUnknown* pService) mut
			{
				return VT.AddDynamicService(&this, pszServiceId, pszEndpointAddress, pPortType, pPortName, pAny, pService);
			}
			public HRESULT RemoveDynamicService(PWSTR pszServiceId) mut
			{
				return VT.RemoveDynamicService(&this, pszServiceId);
			}
			public HRESULT SetServiceDiscoverable(PWSTR pszServiceId, BOOL fDiscoverable) mut
			{
				return VT.SetServiceDiscoverable(&this, pszServiceId, fDiscoverable);
			}
			public HRESULT SignalEvent(PWSTR pszServiceId, void* pBody, WSD_OPERATION* pOperation) mut
			{
				return VT.SignalEvent(&this, pszServiceId, pBody, pOperation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount) Init;
				public new function HRESULT(IWSDDeviceHost *self, uint64 ullInstanceId, WSD_URI_LIST* pScopeList, IWSDDeviceHostNotify* pNotificationSink) Start;
				public new function HRESULT(IWSDDeviceHost *self) Stop;
				public new function HRESULT(IWSDDeviceHost *self) Terminate;
				public new function HRESULT(IWSDDeviceHost *self, WSD_PORT_TYPE* pPortType) RegisterPortType;
				public new function HRESULT(IWSDDeviceHost *self, WSD_THIS_MODEL_METADATA* pThisModelMetadata, WSD_THIS_DEVICE_METADATA* pThisDeviceMetadata, WSD_HOST_METADATA* pHostMetadata, WSD_METADATA_SECTION_LIST* pCustomMetadata) SetMetadata;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, IUnknown* pService) RegisterService;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId) RetireService;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, PWSTR pszEndpointAddress, WSD_PORT_TYPE* pPortType, WSDXML_NAME* pPortName, WSDXML_ELEMENT* pAny, IUnknown* pService) AddDynamicService;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId) RemoveDynamicService;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, BOOL fDiscoverable) SetServiceDiscoverable;
				public new function HRESULT(IWSDDeviceHost *self, PWSTR pszServiceId, void* pBody, WSD_OPERATION* pOperation) SignalEvent;
			}
		}
		[CRepr]
		public struct IWSDDeviceHostNotify : IUnknown
		{
			public const new Guid IID = .(0xb5bee9f9, 0xeeda, 0x41fe, 0x96, 0xf7, 0xf4, 0x5e, 0x14, 0x99, 0x0f, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(PWSTR pszServiceId, IUnknown** ppService) mut
			{
				return VT.GetService(&this, pszServiceId, ppService);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDDeviceHostNotify *self, PWSTR pszServiceId, IUnknown** ppService) GetService;
			}
		}
		[CRepr]
		public struct IWSDServiceMessaging : IUnknown
		{
			public const new Guid IID = .(0x94974cf4, 0x0cab, 0x460d, 0xa3, 0xf6, 0x7a, 0x0a, 0xd6, 0x23, 0xc0, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendResponse(void* pBody, WSD_OPERATION* pOperation, IWSDMessageParameters* pMessageParameters) mut
			{
				return VT.SendResponse(&this, pBody, pOperation, pMessageParameters);
			}
			public HRESULT FaultRequest(WSD_SOAP_HEADER* pRequestHeader, IWSDMessageParameters* pMessageParameters, WSD_SOAP_FAULT* pFault) mut
			{
				return VT.FaultRequest(&this, pRequestHeader, pMessageParameters, pFault);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWSDServiceMessaging *self, void* pBody, WSD_OPERATION* pOperation, IWSDMessageParameters* pMessageParameters) SendResponse;
				public new function HRESULT(IWSDServiceMessaging *self, WSD_SOAP_HEADER* pRequestHeader, IWSDMessageParameters* pMessageParameters, WSD_SOAP_FAULT* pFault) FaultRequest;
			}
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
