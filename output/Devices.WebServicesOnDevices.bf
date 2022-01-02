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
		
		public function HRESULT WSD_STUB_FUNCTION(ref IUnknown server, ref IWSDServiceMessaging session, out WSD_EVENT event);
		public function HRESULT PWSD_SOAP_MESSAGE_HANDLER(ref IUnknown thisUnknown, out WSD_EVENT event);
		
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
			
			public HRESULT Serialize(char16* pszBuffer, uint32 cchLength, BOOL fSafe) mut => VT.Serialize(ref this, pszBuffer, cchLength, fSafe);
			public HRESULT Deserialize(PWSTR pszBuffer) mut => VT.Deserialize(ref this, pszBuffer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAddress self, char16* pszBuffer, uint32 cchLength, BOOL fSafe) Serialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAddress self, PWSTR pszBuffer) Deserialize;
			}
		}
		[CRepr]
		public struct IWSDTransportAddress : IWSDAddress
		{
			public const new Guid IID = .(0x70d23498, 0x4ee6, 0x4340, 0xa3, 0xdf, 0xd8, 0x45, 0xd2, 0x23, 0x54, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPort(out uint16 pwPort) mut => VT.GetPort(ref this, out pwPort);
			public HRESULT SetPort(uint16 wPort) mut => VT.SetPort(ref this, wPort);
			public HRESULT GetTransportAddress(out PWSTR ppszAddress) mut => VT.GetTransportAddress(ref this, out ppszAddress);
			public HRESULT GetTransportAddressEx(BOOL fSafe, out PWSTR ppszAddress) mut => VT.GetTransportAddressEx(ref this, fSafe, out ppszAddress);
			public HRESULT SetTransportAddress(PWSTR pszAddress) mut => VT.SetTransportAddress(ref this, pszAddress);

			[CRepr]
			public struct VTable : IWSDAddress.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDTransportAddress self, out uint16 pwPort) GetPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDTransportAddress self, uint16 wPort) SetPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDTransportAddress self, out PWSTR ppszAddress) GetTransportAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDTransportAddress self, BOOL fSafe, out PWSTR ppszAddress) GetTransportAddressEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDTransportAddress self, PWSTR pszAddress) SetTransportAddress;
			}
		}
		[CRepr]
		public struct IWSDMessageParameters : IUnknown
		{
			public const new Guid IID = .(0x1fafe8a2, 0xe6fc, 0x4b80, 0xb6, 0xcf, 0xb7, 0xd4, 0x5c, 0x41, 0x6d, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocalAddress(out IWSDAddress* ppAddress) mut => VT.GetLocalAddress(ref this, out ppAddress);
			public HRESULT SetLocalAddress(ref IWSDAddress pAddress) mut => VT.SetLocalAddress(ref this, ref pAddress);
			public HRESULT GetRemoteAddress(out IWSDAddress* ppAddress) mut => VT.GetRemoteAddress(ref this, out ppAddress);
			public HRESULT SetRemoteAddress(ref IWSDAddress pAddress) mut => VT.SetRemoteAddress(ref this, ref pAddress);
			public HRESULT GetLowerParameters(out IWSDMessageParameters* ppTxParams) mut => VT.GetLowerParameters(ref this, out ppTxParams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMessageParameters self, out IWSDAddress* ppAddress) GetLocalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMessageParameters self, ref IWSDAddress pAddress) SetLocalAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMessageParameters self, out IWSDAddress* ppAddress) GetRemoteAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMessageParameters self, ref IWSDAddress pAddress) SetRemoteAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMessageParameters self, out IWSDMessageParameters* ppTxParams) GetLowerParameters;
			}
		}
		[CRepr]
		public struct IWSDUdpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x9934149f, 0x8f0c, 0x447b, 0xaa, 0x0b, 0x73, 0x12, 0x4b, 0x0c, 0xa7, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRetransmitParams(in WSDUdpRetransmitParams pParams) mut => VT.SetRetransmitParams(ref this, pParams);
			public HRESULT GetRetransmitParams(out WSDUdpRetransmitParams pParams) mut => VT.GetRetransmitParams(ref this, out pParams);

			[CRepr]
			public struct VTable : IWSDMessageParameters.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpMessageParameters self, in WSDUdpRetransmitParams pParams) SetRetransmitParams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpMessageParameters self, out WSDUdpRetransmitParams pParams) GetRetransmitParams;
			}
		}
		[CRepr]
		public struct IWSDUdpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0x74d6124a, 0xa441, 0x4f78, 0xa1, 0xeb, 0x97, 0xa8, 0xd1, 0x99, 0x68, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSockaddr(in SOCKADDR_STORAGE pSockAddr) mut => VT.SetSockaddr(ref this, pSockAddr);
			public HRESULT GetSockaddr(out SOCKADDR_STORAGE pSockAddr) mut => VT.GetSockaddr(ref this, out pSockAddr);
			public HRESULT SetExclusive(BOOL fExclusive) mut => VT.SetExclusive(ref this, fExclusive);
			public HRESULT GetExclusive() mut => VT.GetExclusive(ref this);
			public HRESULT SetMessageType(WSDUdpMessageType messageType) mut => VT.SetMessageType(ref this, messageType);
			public HRESULT GetMessageType(out WSDUdpMessageType pMessageType) mut => VT.GetMessageType(ref this, out pMessageType);
			public HRESULT SetTTL(uint32 dwTTL) mut => VT.SetTTL(ref this, dwTTL);
			public HRESULT GetTTL(out uint32 pdwTTL) mut => VT.GetTTL(ref this, out pdwTTL);
			public HRESULT SetAlias(in Guid pAlias) mut => VT.SetAlias(ref this, pAlias);
			public HRESULT GetAlias(out Guid pAlias) mut => VT.GetAlias(ref this, out pAlias);

			[CRepr]
			public struct VTable : IWSDTransportAddress.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, in SOCKADDR_STORAGE pSockAddr) SetSockaddr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, out SOCKADDR_STORAGE pSockAddr) GetSockaddr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, BOOL fExclusive) SetExclusive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self) GetExclusive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, WSDUdpMessageType messageType) SetMessageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, out WSDUdpMessageType pMessageType) GetMessageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, uint32 dwTTL) SetTTL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, out uint32 pdwTTL) GetTTL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, in Guid pAlias) SetAlias;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDUdpAddress self, out Guid pAlias) GetAlias;
			}
		}
		[CRepr]
		public struct IWSDHttpMessageParameters : IWSDMessageParameters
		{
			public const new Guid IID = .(0x540bd122, 0x5c83, 0x4dec, 0xb3, 0x96, 0xea, 0x62, 0xa2, 0x69, 0x7f, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInboundHttpHeaders(PWSTR pszHeaders) mut => VT.SetInboundHttpHeaders(ref this, pszHeaders);
			public HRESULT GetInboundHttpHeaders(out PWSTR ppszHeaders) mut => VT.GetInboundHttpHeaders(ref this, out ppszHeaders);
			public HRESULT SetOutboundHttpHeaders(PWSTR pszHeaders) mut => VT.SetOutboundHttpHeaders(ref this, pszHeaders);
			public HRESULT GetOutboundHttpHeaders(out PWSTR ppszHeaders) mut => VT.GetOutboundHttpHeaders(ref this, out ppszHeaders);
			public HRESULT SetID(PWSTR pszId) mut => VT.SetID(ref this, pszId);
			public HRESULT GetID(out PWSTR ppszId) mut => VT.GetID(ref this, out ppszId);
			public HRESULT SetContext(ref IUnknown pContext) mut => VT.SetContext(ref this, ref pContext);
			public HRESULT GetContext(out IUnknown* ppContext) mut => VT.GetContext(ref this, out ppContext);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IWSDMessageParameters.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, PWSTR pszHeaders) SetInboundHttpHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, out PWSTR ppszHeaders) GetInboundHttpHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, PWSTR pszHeaders) SetOutboundHttpHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, out PWSTR ppszHeaders) GetOutboundHttpHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, PWSTR pszId) SetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, out PWSTR ppszId) GetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, ref IUnknown pContext) SetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self, out IUnknown* ppContext) GetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpMessageParameters self) Clear;
			}
		}
		[CRepr]
		public struct IWSDHttpAddress : IWSDTransportAddress
		{
			public const new Guid IID = .(0xd09ac7bd, 0x2a3e, 0x4b85, 0x86, 0x05, 0x27, 0x37, 0xff, 0x3e, 0x4e, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSecure() mut => VT.GetSecure(ref this);
			public HRESULT SetSecure(BOOL fSecure) mut => VT.SetSecure(ref this, fSecure);
			public HRESULT GetPath(out PWSTR ppszPath) mut => VT.GetPath(ref this, out ppszPath);
			public HRESULT SetPath(PWSTR pszPath) mut => VT.SetPath(ref this, pszPath);

			[CRepr]
			public struct VTable : IWSDTransportAddress.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAddress self) GetSecure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAddress self, BOOL fSecure) SetSecure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAddress self, out PWSTR ppszPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAddress self, PWSTR pszPath) SetPath;
			}
		}
		[CRepr]
		public struct IWSDSSLClientCertificate : IUnknown
		{
			public const new Guid IID = .(0xde105e87, 0xa0da, 0x418e, 0x98, 0xad, 0x27, 0xb9, 0xee, 0xd8, 0x7b, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientCertificate(out CERT_CONTEXT* ppCertContext) mut => VT.GetClientCertificate(ref this, out ppCertContext);
			public HRESULT GetMappedAccessToken(out HANDLE phToken) mut => VT.GetMappedAccessToken(ref this, out phToken);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSSLClientCertificate self, out CERT_CONTEXT* ppCertContext) GetClientCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSSLClientCertificate self, out HANDLE phToken) GetMappedAccessToken;
			}
		}
		[CRepr]
		public struct IWSDHttpAuthParameters : IUnknown
		{
			public const new Guid IID = .(0x0b476df0, 0x8dac, 0x480d, 0xb0, 0x5c, 0x99, 0x78, 0x1a, 0x58, 0x84, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientAccessToken(out HANDLE phToken) mut => VT.GetClientAccessToken(ref this, out phToken);
			public HRESULT GetAuthType(out uint32 pAuthType) mut => VT.GetAuthType(ref this, out pAuthType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAuthParameters self, out HANDLE phToken) GetClientAccessToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDHttpAuthParameters self, out uint32 pAuthType) GetAuthType;
			}
		}
		[CRepr]
		public struct IWSDSignatureProperty : IUnknown
		{
			public const new Guid IID = .(0x03ce20aa, 0x71c4, 0x45e2, 0xb3, 0x2e, 0x37, 0x66, 0xc6, 0x1c, 0x79, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMessageSigned(out BOOL pbSigned) mut => VT.IsMessageSigned(ref this, out pbSigned);
			public HRESULT IsMessageSignatureTrusted(out BOOL pbSignatureTrusted) mut => VT.IsMessageSignatureTrusted(ref this, out pbSignatureTrusted);
			public HRESULT GetKeyInfo(uint8* pbKeyInfo, out uint32 pdwKeyInfoSize) mut => VT.GetKeyInfo(ref this, pbKeyInfo, out pdwKeyInfoSize);
			public HRESULT GetSignature(uint8* pbSignature, out uint32 pdwSignatureSize) mut => VT.GetSignature(ref this, pbSignature, out pdwSignatureSize);
			public HRESULT GetSignedInfoHash(uint8* pbSignedInfoHash, out uint32 pdwHashSize) mut => VT.GetSignedInfoHash(ref this, pbSignedInfoHash, out pdwHashSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSignatureProperty self, out BOOL pbSigned) IsMessageSigned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSignatureProperty self, out BOOL pbSignatureTrusted) IsMessageSignatureTrusted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSignatureProperty self, uint8* pbKeyInfo, out uint32 pdwKeyInfoSize) GetKeyInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSignatureProperty self, uint8* pbSignature, out uint32 pdwSignatureSize) GetSignature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDSignatureProperty self, uint8* pbSignedInfoHash, out uint32 pdwHashSize) GetSignedInfoHash;
			}
		}
		[CRepr]
		public struct IWSDAttachment : IUnknown
		{
			public const new Guid IID = .(0x5d55a616, 0x9df8, 0x4b09, 0xb1, 0x56, 0x9b, 0xa3, 0x51, 0xa4, 0x8b, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IWSDOutboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0xaa302f8d, 0x5a22, 0x4ba5, 0xb3, 0x92, 0xaa, 0x84, 0x86, 0xf4, 0xc1, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Write(uint8* pBuffer, uint32 dwBytesToWrite, out uint32 pdwNumberOfBytesWritten) mut => VT.Write(ref this, pBuffer, dwBytesToWrite, out pdwNumberOfBytesWritten);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Abort() mut => VT.Abort(ref this);

			[CRepr]
			public struct VTable : IWSDAttachment.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDOutboundAttachment self, uint8* pBuffer, uint32 dwBytesToWrite, out uint32 pdwNumberOfBytesWritten) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDOutboundAttachment self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDOutboundAttachment self) Abort;
			}
		}
		[CRepr]
		public struct IWSDInboundAttachment : IWSDAttachment
		{
			public const new Guid IID = .(0x5bd6ca65, 0x233c, 0x4fb8, 0x9f, 0x7a, 0x26, 0x41, 0x61, 0x96, 0x55, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(uint8* pBuffer, uint32 dwBytesToRead, out uint32 pdwNumberOfBytesRead) mut => VT.Read(ref this, pBuffer, dwBytesToRead, out pdwNumberOfBytesRead);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IWSDAttachment.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDInboundAttachment self, uint8* pBuffer, uint32 dwBytesToRead, out uint32 pdwNumberOfBytesRead) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDInboundAttachment self) Close;
			}
		}
		[CRepr]
		public struct IWSDXMLContext : IUnknown
		{
			public const new Guid IID = .(0x75d8f3ee, 0x3e5a, 0x43b4, 0xa1, 0x5a, 0xbc, 0xf6, 0x88, 0x74, 0x60, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddNamespace(PWSTR pszUri, PWSTR pszSuggestedPrefix, WSDXML_NAMESPACE** ppNamespace) mut => VT.AddNamespace(ref this, pszUri, pszSuggestedPrefix, ppNamespace);
			public HRESULT AddNameToNamespace(PWSTR pszUri, PWSTR pszName, WSDXML_NAME** ppName) mut => VT.AddNameToNamespace(ref this, pszUri, pszName, ppName);
			public HRESULT SetNamespaces(WSDXML_NAMESPACE** pNamespaces, uint16 wNamespacesCount, uint8 bLayerNumber) mut => VT.SetNamespaces(ref this, pNamespaces, wNamespacesCount, bLayerNumber);
			public HRESULT SetTypes(WSDXML_TYPE** pTypes, uint32 dwTypesCount, uint8 bLayerNumber) mut => VT.SetTypes(ref this, pTypes, dwTypesCount, bLayerNumber);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDXMLContext self, PWSTR pszUri, PWSTR pszSuggestedPrefix, WSDXML_NAMESPACE** ppNamespace) AddNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDXMLContext self, PWSTR pszUri, PWSTR pszName, WSDXML_NAME** ppName) AddNameToNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDXMLContext self, WSDXML_NAMESPACE** pNamespaces, uint16 wNamespacesCount, uint8 bLayerNumber) SetNamespaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDXMLContext self, WSDXML_TYPE** pTypes, uint32 dwTypesCount, uint8 bLayerNumber) SetTypes;
			}
		}
		[CRepr]
		public struct IWSDiscoveryProvider : IUnknown
		{
			public const new Guid IID = .(0x8ffc8e55, 0xf0eb, 0x480f, 0x88, 0xb7, 0xb4, 0x35, 0xdd, 0x28, 0x1d, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAddressFamily(uint32 dwAddressFamily) mut => VT.SetAddressFamily(ref this, dwAddressFamily);
			public HRESULT Attach(ref IWSDiscoveryProviderNotify pSink) mut => VT.Attach(ref this, ref pSink);
			public HRESULT Detach() mut => VT.Detach(ref this);
			public HRESULT SearchById(PWSTR pszId, PWSTR pszTag) mut => VT.SearchById(ref this, pszId, pszTag);
			public HRESULT SearchByAddress(PWSTR pszAddress, PWSTR pszTag) mut => VT.SearchByAddress(ref this, pszAddress, pszTag);
			public HRESULT SearchByType(WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, PWSTR pszMatchBy, PWSTR pszTag) mut => VT.SearchByType(ref this, pTypesList, pScopesList, pszMatchBy, pszTag);
			public HRESULT GetXMLContext(out IWSDXMLContext* ppContext) mut => VT.GetXMLContext(ref this, out ppContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, uint32 dwAddressFamily) SetAddressFamily;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, ref IWSDiscoveryProviderNotify pSink) Attach;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self) Detach;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, PWSTR pszId, PWSTR pszTag) SearchById;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, PWSTR pszAddress, PWSTR pszTag) SearchByAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, PWSTR pszMatchBy, PWSTR pszTag) SearchByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProvider self, out IWSDXMLContext* ppContext) GetXMLContext;
			}
		}
		[CRepr]
		public struct IWSDiscoveryProviderNotify : IUnknown
		{
			public const new Guid IID = .(0x73ee3ced, 0xb6e6, 0x4329, 0xa5, 0x46, 0x3e, 0x8a, 0xd4, 0x65, 0x63, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(ref IWSDiscoveredService pService) mut => VT.Add(ref this, ref pService);
			public HRESULT Remove(ref IWSDiscoveredService pService) mut => VT.Remove(ref this, ref pService);
			public HRESULT SearchFailed(HRESULT hr, PWSTR pszTag) mut => VT.SearchFailed(ref this, hr, pszTag);
			public HRESULT SearchComplete(PWSTR pszTag) mut => VT.SearchComplete(ref this, pszTag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProviderNotify self, ref IWSDiscoveredService pService) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProviderNotify self, ref IWSDiscoveredService pService) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProviderNotify self, HRESULT hr, PWSTR pszTag) SearchFailed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryProviderNotify self, PWSTR pszTag) SearchComplete;
			}
		}
		[CRepr]
		public struct IWSDiscoveredService : IUnknown
		{
			public const new Guid IID = .(0x4bad8a3b, 0xb374, 0x4420, 0x96, 0x32, 0xaa, 0xc9, 0x45, 0xb3, 0x74, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEndpointReference(out WSD_ENDPOINT_REFERENCE* ppEndpointReference) mut => VT.GetEndpointReference(ref this, out ppEndpointReference);
			public HRESULT GetTypes(out WSD_NAME_LIST* ppTypesList) mut => VT.GetTypes(ref this, out ppTypesList);
			public HRESULT GetScopes(out WSD_URI_LIST* ppScopesList) mut => VT.GetScopes(ref this, out ppScopesList);
			public HRESULT GetXAddrs(out WSD_URI_LIST* ppXAddrsList) mut => VT.GetXAddrs(ref this, out ppXAddrsList);
			public HRESULT GetMetadataVersion(out uint64 pullMetadataVersion) mut => VT.GetMetadataVersion(ref this, out pullMetadataVersion);
			public HRESULT GetExtendedDiscoXML(out WSDXML_ELEMENT* ppHeaderAny, out WSDXML_ELEMENT* ppBodyAny) mut => VT.GetExtendedDiscoXML(ref this, out ppHeaderAny, out ppBodyAny);
			public HRESULT GetProbeResolveTag(out PWSTR ppszTag) mut => VT.GetProbeResolveTag(ref this, out ppszTag);
			public HRESULT GetRemoteTransportAddress(out PWSTR ppszRemoteTransportAddress) mut => VT.GetRemoteTransportAddress(ref this, out ppszRemoteTransportAddress);
			public HRESULT GetLocalTransportAddress(out PWSTR ppszLocalTransportAddress) mut => VT.GetLocalTransportAddress(ref this, out ppszLocalTransportAddress);
			public HRESULT GetLocalInterfaceGUID(out Guid pGuid) mut => VT.GetLocalInterfaceGUID(ref this, out pGuid);
			public HRESULT GetInstanceId(out uint64 pullInstanceId) mut => VT.GetInstanceId(ref this, out pullInstanceId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out WSD_ENDPOINT_REFERENCE* ppEndpointReference) GetEndpointReference;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out WSD_NAME_LIST* ppTypesList) GetTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out WSD_URI_LIST* ppScopesList) GetScopes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out WSD_URI_LIST* ppXAddrsList) GetXAddrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out uint64 pullMetadataVersion) GetMetadataVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out WSDXML_ELEMENT* ppHeaderAny, out WSDXML_ELEMENT* ppBodyAny) GetExtendedDiscoXML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out PWSTR ppszTag) GetProbeResolveTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out PWSTR ppszRemoteTransportAddress) GetRemoteTransportAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out PWSTR ppszLocalTransportAddress) GetLocalTransportAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out Guid pGuid) GetLocalInterfaceGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveredService self, out uint64 pullInstanceId) GetInstanceId;
			}
		}
		[CRepr]
		public struct IWSDiscoveryPublisher : IUnknown
		{
			public const new Guid IID = .(0xae01e1a8, 0x3ff9, 0x4148, 0x81, 0x16, 0x05, 0x7c, 0xc6, 0x16, 0xfe, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAddressFamily(uint32 dwAddressFamily) mut => VT.SetAddressFamily(ref this, dwAddressFamily);
			public HRESULT RegisterNotificationSink(ref IWSDiscoveryPublisherNotify pSink) mut => VT.RegisterNotificationSink(ref this, ref pSink);
			public HRESULT UnRegisterNotificationSink(ref IWSDiscoveryPublisherNotify pSink) mut => VT.UnRegisterNotificationSink(ref this, ref pSink);
			public HRESULT Publish(PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut => VT.Publish(ref this, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			public HRESULT UnPublish(PWSTR pszId, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSDXML_ELEMENT* pAny) mut => VT.UnPublish(ref this, pszId, ullInstanceId, ullMessageNumber, pszSessionId, pAny);
			public HRESULT MatchProbe(in WSD_SOAP_MESSAGE pProbeMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut => VT.MatchProbe(ref this, pProbeMessage, ref pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			public HRESULT MatchResolve(in WSD_SOAP_MESSAGE pResolveMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) mut => VT.MatchResolve(ref this, pResolveMessage, ref pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList);
			public HRESULT PublishEx(PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut => VT.PublishEx(ref this, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			public HRESULT MatchProbeEx(in WSD_SOAP_MESSAGE pProbeMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut => VT.MatchProbeEx(ref this, pProbeMessage, ref pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			public HRESULT MatchResolveEx(in WSD_SOAP_MESSAGE pResolveMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) mut => VT.MatchResolveEx(ref this, pResolveMessage, ref pMessageParameters, pszId, ullMetadataVersion, ullInstanceId, ullMessageNumber, pszSessionId, pTypesList, pScopesList, pXAddrsList, pHeaderAny, pReferenceParameterAny, pPolicyAny, pEndpointReferenceAny, pAny);
			public HRESULT RegisterScopeMatchingRule(ref IWSDScopeMatchingRule pScopeMatchingRule) mut => VT.RegisterScopeMatchingRule(ref this, ref pScopeMatchingRule);
			public HRESULT UnRegisterScopeMatchingRule(ref IWSDScopeMatchingRule pScopeMatchingRule) mut => VT.UnRegisterScopeMatchingRule(ref this, ref pScopeMatchingRule);
			public HRESULT GetXMLContext(out IWSDXMLContext* ppContext) mut => VT.GetXMLContext(ref this, out ppContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, uint32 dwAddressFamily) SetAddressFamily;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, ref IWSDiscoveryPublisherNotify pSink) RegisterNotificationSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, ref IWSDiscoveryPublisherNotify pSink) UnRegisterNotificationSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) Publish;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, PWSTR pszId, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSDXML_ELEMENT* pAny) UnPublish;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, in WSD_SOAP_MESSAGE pProbeMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchProbe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, in WSD_SOAP_MESSAGE pResolveMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList) MatchResolve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) PublishEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, in WSD_SOAP_MESSAGE pProbeMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchProbeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, in WSD_SOAP_MESSAGE pResolveMessage, ref IWSDMessageParameters pMessageParameters, PWSTR pszId, uint64 ullMetadataVersion, uint64 ullInstanceId, uint64 ullMessageNumber, PWSTR pszSessionId, WSD_NAME_LIST* pTypesList, WSD_URI_LIST* pScopesList, WSD_URI_LIST* pXAddrsList, WSDXML_ELEMENT* pHeaderAny, WSDXML_ELEMENT* pReferenceParameterAny, WSDXML_ELEMENT* pPolicyAny, WSDXML_ELEMENT* pEndpointReferenceAny, WSDXML_ELEMENT* pAny) MatchResolveEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, ref IWSDScopeMatchingRule pScopeMatchingRule) RegisterScopeMatchingRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, ref IWSDScopeMatchingRule pScopeMatchingRule) UnRegisterScopeMatchingRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisher self, out IWSDXMLContext* ppContext) GetXMLContext;
			}
		}
		[CRepr]
		public struct IWSDiscoveryPublisherNotify : IUnknown
		{
			public const new Guid IID = .(0xe67651b0, 0x337a, 0x4b3c, 0x97, 0x58, 0x73, 0x33, 0x88, 0x56, 0x82, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProbeHandler(in WSD_SOAP_MESSAGE pSoap, ref IWSDMessageParameters pMessageParameters) mut => VT.ProbeHandler(ref this, pSoap, ref pMessageParameters);
			public HRESULT ResolveHandler(in WSD_SOAP_MESSAGE pSoap, ref IWSDMessageParameters pMessageParameters) mut => VT.ResolveHandler(ref this, pSoap, ref pMessageParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisherNotify self, in WSD_SOAP_MESSAGE pSoap, ref IWSDMessageParameters pMessageParameters) ProbeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDiscoveryPublisherNotify self, in WSD_SOAP_MESSAGE pSoap, ref IWSDMessageParameters pMessageParameters) ResolveHandler;
			}
		}
		[CRepr]
		public struct IWSDScopeMatchingRule : IUnknown
		{
			public const new Guid IID = .(0xfcafe424, 0xfef5, 0x481a, 0xbd, 0x9f, 0x33, 0xce, 0x05, 0x74, 0x25, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetScopeRule(out PWSTR ppszScopeMatchingRule) mut => VT.GetScopeRule(ref this, out ppszScopeMatchingRule);
			public HRESULT MatchScopes(PWSTR pszScope1, PWSTR pszScope2, out BOOL pfMatch) mut => VT.MatchScopes(ref this, pszScope1, pszScope2, out pfMatch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDScopeMatchingRule self, out PWSTR ppszScopeMatchingRule) GetScopeRule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDScopeMatchingRule self, PWSTR pszScope1, PWSTR pszScope2, out BOOL pfMatch) MatchScopes;
			}
		}
		[CRepr]
		public struct IWSDEndpointProxy : IUnknown
		{
			public const new Guid IID = .(0x1860d430, 0xb24c, 0x4975, 0x9f, 0x90, 0xdb, 0xb3, 0x9b, 0xaa, 0x24, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendOneWayRequest(void* pBody, in WSD_OPERATION pOperation) mut => VT.SendOneWayRequest(ref this, pBody, pOperation);
			public HRESULT SendTwoWayRequest(void* pBody, in WSD_OPERATION pOperation, WSD_SYNCHRONOUS_RESPONSE_CONTEXT* pResponseContext) mut => VT.SendTwoWayRequest(ref this, pBody, pOperation, pResponseContext);
			public HRESULT SendTwoWayRequestAsync(void* pBody, in WSD_OPERATION pOperation, ref IUnknown pAsyncState, ref IWSDAsyncCallback pCallback, out IWSDAsyncResult* pResult) mut => VT.SendTwoWayRequestAsync(ref this, pBody, pOperation, ref pAsyncState, ref pCallback, out pResult);
			public HRESULT AbortAsyncOperation(ref IWSDAsyncResult pAsyncResult) mut => VT.AbortAsyncOperation(ref this, ref pAsyncResult);
			public HRESULT ProcessFault(in WSD_SOAP_FAULT pFault) mut => VT.ProcessFault(ref this, pFault);
			public HRESULT GetErrorInfo(out PWSTR ppszErrorInfo) mut => VT.GetErrorInfo(ref this, out ppszErrorInfo);
			public HRESULT GetFaultInfo(out WSD_SOAP_FAULT* ppFault) mut => VT.GetFaultInfo(ref this, out ppFault);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, void* pBody, in WSD_OPERATION pOperation) SendOneWayRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, void* pBody, in WSD_OPERATION pOperation, WSD_SYNCHRONOUS_RESPONSE_CONTEXT* pResponseContext) SendTwoWayRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, void* pBody, in WSD_OPERATION pOperation, ref IUnknown pAsyncState, ref IWSDAsyncCallback pCallback, out IWSDAsyncResult* pResult) SendTwoWayRequestAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, ref IWSDAsyncResult pAsyncResult) AbortAsyncOperation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, in WSD_SOAP_FAULT pFault) ProcessFault;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, out PWSTR ppszErrorInfo) GetErrorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDEndpointProxy self, out WSD_SOAP_FAULT* ppFault) GetFaultInfo;
			}
		}
		[CRepr]
		public struct IWSDMetadataExchange : IUnknown
		{
			public const new Guid IID = .(0x06996d57, 0x1d67, 0x4928, 0x93, 0x07, 0x3d, 0x78, 0x33, 0xfd, 0xb8, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMetadata(out WSD_METADATA_SECTION_LIST* MetadataOut) mut => VT.GetMetadata(ref this, out MetadataOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDMetadataExchange self, out WSD_METADATA_SECTION_LIST* MetadataOut) GetMetadata;
			}
		}
		[CRepr]
		public struct IWSDServiceProxy : IWSDMetadataExchange
		{
			public const new Guid IID = .(0xd4c7fb9c, 0x03ab, 0x4175, 0x9d, 0x67, 0x09, 0x4f, 0xaf, 0xeb, 0xf4, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginGetMetadata(out IWSDAsyncResult* ppResult) mut => VT.BeginGetMetadata(ref this, out ppResult);
			public HRESULT EndGetMetadata(ref IWSDAsyncResult pResult, out WSD_METADATA_SECTION_LIST* ppMetadata) mut => VT.EndGetMetadata(ref this, ref pResult, out ppMetadata);
			public HRESULT GetServiceMetadata(out WSD_SERVICE_METADATA* ppServiceMetadata) mut => VT.GetServiceMetadata(ref this, out ppServiceMetadata);
			public HRESULT SubscribeToOperation(in WSD_OPERATION pOperation, ref IUnknown pUnknown, in WSDXML_ELEMENT pAny, WSDXML_ELEMENT** ppAny) mut => VT.SubscribeToOperation(ref this, pOperation, ref pUnknown, pAny, ppAny);
			public HRESULT UnsubscribeToOperation(in WSD_OPERATION pOperation) mut => VT.UnsubscribeToOperation(ref this, pOperation);
			public HRESULT SetEventingStatusCallback(IWSDEventingStatus* pStatus) mut => VT.SetEventingStatusCallback(ref this, pStatus);
			public HRESULT GetEndpointProxy(out IWSDEndpointProxy* ppProxy) mut => VT.GetEndpointProxy(ref this, out ppProxy);

			[CRepr]
			public struct VTable : IWSDMetadataExchange.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, out IWSDAsyncResult* ppResult) BeginGetMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, ref IWSDAsyncResult pResult, out WSD_METADATA_SECTION_LIST* ppMetadata) EndGetMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, out WSD_SERVICE_METADATA* ppServiceMetadata) GetServiceMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, in WSD_OPERATION pOperation, ref IUnknown pUnknown, in WSDXML_ELEMENT pAny, WSDXML_ELEMENT** ppAny) SubscribeToOperation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, in WSD_OPERATION pOperation) UnsubscribeToOperation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, IWSDEventingStatus* pStatus) SetEventingStatusCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxy self, out IWSDEndpointProxy* ppProxy) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDServiceProxyEventing : IWSDServiceProxy
		{
			public const new Guid IID = .(0xf9279d6d, 0x1012, 0x4a94, 0xb8, 0xcc, 0xfd, 0x35, 0xd2, 0x20, 0x2b, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.SubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, pUnknown, pExpires, pAny, ppExpires, ppAny);
			public HRESULT BeginSubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) mut => VT.BeginSubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, pUnknown, pExpires, pAny, pAsyncState, pAsyncCallback, out ppResult);
			public HRESULT EndSubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.EndSubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, ref pResult, ppExpires, ppAny);
			public HRESULT UnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, in WSDXML_ELEMENT pAny) mut => VT.UnsubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, pAny);
			public HRESULT BeginUnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) mut => VT.BeginUnsubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, pAny, pAsyncState, pAsyncCallback, out ppResult);
			public HRESULT EndUnsubscribeToMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult) mut => VT.EndUnsubscribeToMultipleOperations(ref this, pOperations, dwOperationCount, ref pResult);
			public HRESULT RenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.RenewMultipleOperations(ref this, pOperations, dwOperationCount, pExpires, pAny, ppExpires, ppAny);
			public HRESULT BeginRenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) mut => VT.BeginRenewMultipleOperations(ref this, pOperations, dwOperationCount, pExpires, pAny, pAsyncState, pAsyncCallback, out ppResult);
			public HRESULT EndRenewMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.EndRenewMultipleOperations(ref this, pOperations, dwOperationCount, ref pResult, ppExpires, ppAny);
			public HRESULT GetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.GetStatusForMultipleOperations(ref this, pOperations, dwOperationCount, pAny, ppExpires, ppAny);
			public HRESULT BeginGetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) mut => VT.BeginGetStatusForMultipleOperations(ref this, pOperations, dwOperationCount, pAny, pAsyncState, pAsyncCallback, out ppResult);
			public HRESULT EndGetStatusForMultipleOperations(WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) mut => VT.EndGetStatusForMultipleOperations(ref this, pOperations, dwOperationCount, ref pResult, ppExpires, ppAny);

			[CRepr]
			public struct VTable : IWSDServiceProxy.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) SubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, IUnknown* pUnknown, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) BeginSubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndSubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, in WSDXML_ELEMENT pAny) UnsubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) BeginUnsubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult) EndUnsubscribeToMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) RenewMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSD_EVENTING_EXPIRES* pExpires, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) BeginRenewMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndRenewMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) GetStatusForMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, WSDXML_ELEMENT* pAny, IUnknown* pAsyncState, IWSDAsyncCallback* pAsyncCallback, out IWSDAsyncResult* ppResult) BeginGetStatusForMultipleOperations;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceProxyEventing self, WSD_OPERATION* pOperations, uint32 dwOperationCount, ref IWSDAsyncResult pResult, WSD_EVENTING_EXPIRES** ppExpires, WSDXML_ELEMENT** ppAny) EndGetStatusForMultipleOperations;
			}
		}
		[CRepr]
		public struct IWSDDeviceProxy : IUnknown
		{
			public const new Guid IID = .(0xeee0c031, 0xc578, 0x4c0e, 0x9a, 0x3b, 0x97, 0x3c, 0x35, 0xf4, 0x09, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(PWSTR pszDeviceId, ref IWSDAddress pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy* pSponsor) mut => VT.Init(ref this, pszDeviceId, ref pDeviceAddress, pszLocalId, pContext, pSponsor);
			public HRESULT BeginGetMetadata(out IWSDAsyncResult* ppResult) mut => VT.BeginGetMetadata(ref this, out ppResult);
			public HRESULT EndGetMetadata(ref IWSDAsyncResult pResult) mut => VT.EndGetMetadata(ref this, ref pResult);
			public HRESULT GetHostMetadata(out WSD_HOST_METADATA* ppHostMetadata) mut => VT.GetHostMetadata(ref this, out ppHostMetadata);
			public HRESULT GetThisModelMetadata(out WSD_THIS_MODEL_METADATA* ppManufacturerMetadata) mut => VT.GetThisModelMetadata(ref this, out ppManufacturerMetadata);
			public HRESULT GetThisDeviceMetadata(out WSD_THIS_DEVICE_METADATA* ppThisDeviceMetadata) mut => VT.GetThisDeviceMetadata(ref this, out ppThisDeviceMetadata);
			public HRESULT GetAllMetadata(out WSD_METADATA_SECTION_LIST* ppMetadata) mut => VT.GetAllMetadata(ref this, out ppMetadata);
			public HRESULT GetServiceProxyById(PWSTR pszServiceId, out IWSDServiceProxy* ppServiceProxy) mut => VT.GetServiceProxyById(ref this, pszServiceId, out ppServiceProxy);
			public HRESULT GetServiceProxyByType(in WSDXML_NAME pType, out IWSDServiceProxy* ppServiceProxy) mut => VT.GetServiceProxyByType(ref this, pType, out ppServiceProxy);
			public HRESULT GetEndpointProxy(out IWSDEndpointProxy* ppProxy) mut => VT.GetEndpointProxy(ref this, out ppProxy);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, PWSTR pszDeviceId, ref IWSDAddress pDeviceAddress, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDDeviceProxy* pSponsor) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out IWSDAsyncResult* ppResult) BeginGetMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, ref IWSDAsyncResult pResult) EndGetMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out WSD_HOST_METADATA* ppHostMetadata) GetHostMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out WSD_THIS_MODEL_METADATA* ppManufacturerMetadata) GetThisModelMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out WSD_THIS_DEVICE_METADATA* ppThisDeviceMetadata) GetThisDeviceMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out WSD_METADATA_SECTION_LIST* ppMetadata) GetAllMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, PWSTR pszServiceId, out IWSDServiceProxy* ppServiceProxy) GetServiceProxyById;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, in WSDXML_NAME pType, out IWSDServiceProxy* ppServiceProxy) GetServiceProxyByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceProxy self, out IWSDEndpointProxy* ppProxy) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDAsyncResult : IUnknown
		{
			public const new Guid IID = .(0x11a9852a, 0x8dd8, 0x423e, 0xb5, 0x37, 0x93, 0x56, 0xdb, 0x4f, 0xbf, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCallback(ref IWSDAsyncCallback pCallback, ref IUnknown pAsyncState) mut => VT.SetCallback(ref this, ref pCallback, ref pAsyncState);
			public HRESULT SetWaitHandle(HANDLE hWaitHandle) mut => VT.SetWaitHandle(ref this, hWaitHandle);
			public HRESULT HasCompleted() mut => VT.HasCompleted(ref this);
			public HRESULT GetAsyncState(out IUnknown* ppAsyncState) mut => VT.GetAsyncState(ref this, out ppAsyncState);
			public HRESULT Abort() mut => VT.Abort(ref this);
			public HRESULT GetEvent(out WSD_EVENT pEvent) mut => VT.GetEvent(ref this, out pEvent);
			public HRESULT GetEndpointProxy(out IWSDEndpointProxy* ppEndpoint) mut => VT.GetEndpointProxy(ref this, out ppEndpoint);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self, ref IWSDAsyncCallback pCallback, ref IUnknown pAsyncState) SetCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self, HANDLE hWaitHandle) SetWaitHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self) HasCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self, out IUnknown* ppAsyncState) GetAsyncState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self) Abort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self, out WSD_EVENT pEvent) GetEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncResult self, out IWSDEndpointProxy* ppEndpoint) GetEndpointProxy;
			}
		}
		[CRepr]
		public struct IWSDAsyncCallback : IUnknown
		{
			public const new Guid IID = .(0xa63e109d, 0xce72, 0x49e2, 0xba, 0x98, 0xe8, 0x45, 0xf5, 0xee, 0x16, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncOperationComplete(ref IWSDAsyncResult pAsyncResult, ref IUnknown pAsyncState) mut => VT.AsyncOperationComplete(ref this, ref pAsyncResult, ref pAsyncState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDAsyncCallback self, ref IWSDAsyncResult pAsyncResult, ref IUnknown pAsyncState) AsyncOperationComplete;
			}
		}
		[CRepr]
		public struct IWSDEventingStatus : IUnknown
		{
			public const new Guid IID = .(0x49b17f52, 0x637a, 0x407a, 0xae, 0x99, 0xfb, 0xe8, 0x2a, 0x4d, 0x38, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SubscriptionRenewed(PWSTR pszSubscriptionAction) mut => VT.SubscriptionRenewed(ref this, pszSubscriptionAction);
			public void SubscriptionRenewalFailed(PWSTR pszSubscriptionAction, HRESULT hr) mut => VT.SubscriptionRenewalFailed(ref this, pszSubscriptionAction, hr);
			public void SubscriptionEnded(PWSTR pszSubscriptionAction) mut => VT.SubscriptionEnded(ref this, pszSubscriptionAction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IWSDEventingStatus self, PWSTR pszSubscriptionAction) SubscriptionRenewed;
				public new function [CallingConvention(.Stdcall)] void(ref IWSDEventingStatus self, PWSTR pszSubscriptionAction, HRESULT hr) SubscriptionRenewalFailed;
				public new function [CallingConvention(.Stdcall)] void(ref IWSDEventingStatus self, PWSTR pszSubscriptionAction) SubscriptionEnded;
			}
		}
		[CRepr]
		public struct IWSDDeviceHost : IUnknown
		{
			public const new Guid IID = .(0x917fe891, 0x3d13, 0x4138, 0x98, 0x09, 0x93, 0x4c, 0x8a, 0xbe, 0xb1, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount) mut => VT.Init(ref this, pszLocalId, pContext, ppHostAddresses, dwHostAddressCount);
			public HRESULT Start(uint64 ullInstanceId, in WSD_URI_LIST pScopeList, IWSDDeviceHostNotify* pNotificationSink) mut => VT.Start(ref this, ullInstanceId, pScopeList, pNotificationSink);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Terminate() mut => VT.Terminate(ref this);
			public HRESULT RegisterPortType(in WSD_PORT_TYPE pPortType) mut => VT.RegisterPortType(ref this, pPortType);
			public HRESULT SetMetadata(in WSD_THIS_MODEL_METADATA pThisModelMetadata, in WSD_THIS_DEVICE_METADATA pThisDeviceMetadata, WSD_HOST_METADATA* pHostMetadata, WSD_METADATA_SECTION_LIST* pCustomMetadata) mut => VT.SetMetadata(ref this, pThisModelMetadata, pThisDeviceMetadata, pHostMetadata, pCustomMetadata);
			public HRESULT RegisterService(PWSTR pszServiceId, ref IUnknown pService) mut => VT.RegisterService(ref this, pszServiceId, ref pService);
			public HRESULT RetireService(PWSTR pszServiceId) mut => VT.RetireService(ref this, pszServiceId);
			public HRESULT AddDynamicService(PWSTR pszServiceId, PWSTR pszEndpointAddress, WSD_PORT_TYPE* pPortType, WSDXML_NAME* pPortName, WSDXML_ELEMENT* pAny, IUnknown* pService) mut => VT.AddDynamicService(ref this, pszServiceId, pszEndpointAddress, pPortType, pPortName, pAny, pService);
			public HRESULT RemoveDynamicService(PWSTR pszServiceId) mut => VT.RemoveDynamicService(ref this, pszServiceId);
			public HRESULT SetServiceDiscoverable(PWSTR pszServiceId, BOOL fDiscoverable) mut => VT.SetServiceDiscoverable(ref this, pszServiceId, fDiscoverable);
			public HRESULT SignalEvent(PWSTR pszServiceId, void* pBody, in WSD_OPERATION pOperation) mut => VT.SignalEvent(ref this, pszServiceId, pBody, pOperation);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszLocalId, IWSDXMLContext* pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, uint64 ullInstanceId, in WSD_URI_LIST pScopeList, IWSDDeviceHostNotify* pNotificationSink) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self) Terminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, in WSD_PORT_TYPE pPortType) RegisterPortType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, in WSD_THIS_MODEL_METADATA pThisModelMetadata, in WSD_THIS_DEVICE_METADATA pThisDeviceMetadata, WSD_HOST_METADATA* pHostMetadata, WSD_METADATA_SECTION_LIST* pCustomMetadata) SetMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId, ref IUnknown pService) RegisterService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId) RetireService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId, PWSTR pszEndpointAddress, WSD_PORT_TYPE* pPortType, WSDXML_NAME* pPortName, WSDXML_ELEMENT* pAny, IUnknown* pService) AddDynamicService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId) RemoveDynamicService;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId, BOOL fDiscoverable) SetServiceDiscoverable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHost self, PWSTR pszServiceId, void* pBody, in WSD_OPERATION pOperation) SignalEvent;
			}
		}
		[CRepr]
		public struct IWSDDeviceHostNotify : IUnknown
		{
			public const new Guid IID = .(0xb5bee9f9, 0xeeda, 0x41fe, 0x96, 0xf7, 0xf4, 0x5e, 0x14, 0x99, 0x0f, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetService(PWSTR pszServiceId, out IUnknown* ppService) mut => VT.GetService(ref this, pszServiceId, out ppService);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDDeviceHostNotify self, PWSTR pszServiceId, out IUnknown* ppService) GetService;
			}
		}
		[CRepr]
		public struct IWSDServiceMessaging : IUnknown
		{
			public const new Guid IID = .(0x94974cf4, 0x0cab, 0x460d, 0xa3, 0xf6, 0x7a, 0x0a, 0xd6, 0x23, 0xc0, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendResponse(void* pBody, ref WSD_OPERATION pOperation, ref IWSDMessageParameters pMessageParameters) mut => VT.SendResponse(ref this, pBody, ref pOperation, ref pMessageParameters);
			public HRESULT FaultRequest(ref WSD_SOAP_HEADER pRequestHeader, ref IWSDMessageParameters pMessageParameters, WSD_SOAP_FAULT* pFault) mut => VT.FaultRequest(ref this, ref pRequestHeader, ref pMessageParameters, pFault);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceMessaging self, void* pBody, ref WSD_OPERATION pOperation, ref IWSDMessageParameters pMessageParameters) SendResponse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWSDServiceMessaging self, ref WSD_SOAP_HEADER pRequestHeader, ref IWSDMessageParameters pMessageParameters, WSD_SOAP_FAULT* pFault) FaultRequest;
			}
		}
		
		// --- Functions ---
		
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpMessageParameters(out IWSDUdpMessageParameters* ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateUdpAddress(out IWSDUdpAddress* ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpMessageParameters(out IWSDHttpMessageParameters* ppTxParams);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateHttpAddress(out IWSDHttpAddress* ppAddress);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateOutboundAttachment(out IWSDOutboundAttachment* ppAttachment);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLGetNameFromBuiltinNamespace(PWSTR pszNamespace, PWSTR pszName, out WSDXML_NAME* ppName);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLCreateContext(out IWSDXMLContext* ppContext);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider(ref IWSDXMLContext pContext, out IWSDiscoveryProvider* ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryProvider2(ref IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, out IWSDiscoveryProvider* ppProvider);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher(ref IWSDXMLContext pContext, out IWSDiscoveryPublisher* ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDiscoveryPublisher2(ref IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, out IWSDiscoveryPublisher* ppPublisher);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy(PWSTR pszDeviceId, PWSTR pszLocalId, ref IWSDXMLContext pContext, out IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxyAdvanced(PWSTR pszDeviceId, ref IWSDAddress pDeviceAddress, PWSTR pszLocalId, ref IWSDXMLContext pContext, out IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceProxy2(PWSTR pszDeviceId, PWSTR pszLocalId, ref IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, out IWSDDeviceProxy* ppDeviceProxy);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost(PWSTR pszLocalId, ref IWSDXMLContext pContext, out IWSDDeviceHost* ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHostAdvanced(PWSTR pszLocalId, ref IWSDXMLContext pContext, IWSDAddress** ppHostAddresses, uint32 dwHostAddressCount, out IWSDDeviceHost* ppDeviceHost);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDCreateDeviceHost2(PWSTR pszLocalId, ref IWSDXMLContext pContext, WSD_CONFIG_PARAM* pConfigParams, uint32 dwConfigParamCount, out IWSDDeviceHost* ppDeviceHost);
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
		public static extern HRESULT WSDXMLBuildAnyForSingleElement(out WSDXML_NAME pElementName, PWSTR pszText, out WSDXML_ELEMENT* ppAny);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLGetValueFromAny(PWSTR pszNamespace, PWSTR pszName, out WSDXML_ELEMENT pAny, out PWSTR ppszValue);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLAddSibling(out WSDXML_ELEMENT pFirst, out WSDXML_ELEMENT pSecond);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLAddChild(out WSDXML_ELEMENT pParent, out WSDXML_ELEMENT pChild);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDXMLCleanupElement(out WSDXML_ELEMENT pAny);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGenerateFault(PWSTR pszCode, PWSTR pszSubCode, PWSTR pszReason, PWSTR pszDetail, ref IWSDXMLContext pContext, out WSD_SOAP_FAULT* ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDGenerateFaultEx(ref WSDXML_NAME pCode, WSDXML_NAME* pSubCode, ref WSD_LOCALIZED_STRING_LIST pReasons, PWSTR pszDetail, out WSD_SOAP_FAULT* ppFault);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriEncode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
		[Import("wsdapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WSDUriDecode(char16* source, uint32 cchSource, PWSTR* destOut, uint32* cchDestOut);
	}
}
