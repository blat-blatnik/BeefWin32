using System;

// namespace Networking.WinSock
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid SOCKET_DEFAULT2_QM_POLICY = .(0xaec2ef9c, 0x3a4d, 0x4d3e, 0x88, 0x42, 0x23, 0x99, 0x42, 0xe3, 0x9a, 0x47);
		public const Guid REAL_TIME_NOTIFICATION_CAPABILITY = .(0x6b59819a, 0x5cae, 0x492d, 0xa9, 0x01, 0x2a, 0x3c, 0x2c, 0x50, 0x16, 0x4f);
		public const Guid REAL_TIME_NOTIFICATION_CAPABILITY_EX = .(0x6843da03, 0x154a, 0x4616, 0xa5, 0x08, 0x44, 0x37, 0x12, 0x95, 0xf9, 0x6b);
		public const Guid ASSOCIATE_NAMERES_CONTEXT = .(0x59a38b67, 0xd4fe, 0x46e1, 0xba, 0x3c, 0x87, 0xea, 0x74, 0xca, 0x30, 0x49);
		public const uint32 TIMESTAMPING_FLAG_RX = 1;
		public const uint32 TIMESTAMPING_FLAG_TX = 2;
		public const uint32 SO_TIMESTAMP = 12298;
		public const uint32 SO_TIMESTAMP_ID = 12299;
		public const uint32 TCP_INITIAL_RTO_DEFAULT_RTT = 0;
		public const uint32 TCP_INITIAL_RTO_DEFAULT_MAX_SYN_RETRANSMISSIONS = 0;
		public const uint32 SOCKET_SETTINGS_GUARANTEE_ENCRYPTION = 1;
		public const uint32 SOCKET_SETTINGS_ALLOW_INSECURE = 2;
		public const uint32 SOCKET_SETTINGS_IPSEC_SKIP_FILTER_INSTANTIATION = 1;
		public const uint32 SOCKET_SETTINGS_IPSEC_OPTIONAL_PEER_NAME_VERIFICATION = 2;
		public const uint32 SOCKET_SETTINGS_IPSEC_ALLOW_FIRST_INBOUND_PKT_UNENCRYPTED = 4;
		public const uint32 SOCKET_SETTINGS_IPSEC_PEER_NAME_IS_RAW_FORMAT = 8;
		public const uint32 SOCKET_QUERY_IPSEC2_ABORT_CONNECTION_ON_FIELD_CHANGE = 1;
		public const uint32 SOCKET_QUERY_IPSEC2_FIELD_MASK_MM_SA_ID = 1;
		public const uint32 SOCKET_QUERY_IPSEC2_FIELD_MASK_QM_SA_ID = 2;
		public const uint32 SOCKET_INFO_CONNECTION_SECURED = 1;
		public const uint32 SOCKET_INFO_CONNECTION_ENCRYPTED = 2;
		public const uint32 SOCKET_INFO_CONNECTION_IMPERSONATED = 4;
		public const uint32 IN4ADDR_LOOPBACK = 16777343;
		public const uint32 IN4ADDR_LOOPBACKPREFIX_LENGTH = 8;
		public const uint32 IN4ADDR_LINKLOCALPREFIX_LENGTH = 16;
		public const uint32 IN4ADDR_MULTICASTPREFIX_LENGTH = 4;
		public const uint32 RIO_MSG_DONT_NOTIFY = 1;
		public const uint32 RIO_MSG_DEFER = 2;
		public const uint32 RIO_MSG_WAITALL = 4;
		public const uint32 RIO_MSG_COMMIT_ONLY = 8;
		public const uint32 RIO_MAX_CQ_SIZE = 134217728;
		public const uint32 RIO_CORRUPT_CQ = 4294967295;
		public const uint16 AF_UNIX = 1;
		public const uint16 AF_IMPLINK = 3;
		public const uint16 AF_PUP = 4;
		public const uint16 AF_CHAOS = 5;
		public const uint16 AF_NS = 6;
		public const uint16 AF_IPX = 6;
		public const uint16 AF_ISO = 7;
		public const uint16 AF_OSI = 7;
		public const uint16 AF_ECMA = 8;
		public const uint16 AF_DATAKIT = 9;
		public const uint16 AF_CCITT = 10;
		public const uint16 AF_SNA = 11;
		public const uint16 AF_DECnet = 12;
		public const uint16 AF_DLI = 13;
		public const uint16 AF_LAT = 14;
		public const uint16 AF_HYLINK = 15;
		public const uint16 AF_APPLETALK = 16;
		public const uint16 AF_NETBIOS = 17;
		public const uint16 AF_VOICEVIEW = 18;
		public const uint16 AF_FIREFOX = 19;
		public const uint16 AF_UNKNOWN1 = 20;
		public const uint16 AF_BAN = 21;
		public const uint16 AF_ATM = 22;
		public const uint16 AF_CLUSTER = 24;
		public const uint16 AF_12844 = 25;
		public const uint16 AF_IRDA = 26;
		public const uint16 AF_NETDES = 28;
		public const uint16 AF_MAX = 29;
		public const uint16 AF_TCNPROCESS = 29;
		public const uint16 AF_TCNMESSAGE = 30;
		public const uint16 AF_ICLFXBM = 31;
		public const uint16 AF_LINK = 33;
		public const uint16 AF_HYPERV = 34;
		public const uint16 SOCK_STREAM = 1;
		public const uint16 SOCK_DGRAM = 2;
		public const uint16 SOCK_RAW = 3;
		public const uint16 SOCK_RDM = 4;
		public const uint16 SOCK_SEQPACKET = 5;
		public const uint32 SOL_SOCKET = 65535;
		public const uint32 SO_DEBUG = 1;
		public const uint32 SO_ACCEPTCONN = 2;
		public const uint32 SO_REUSEADDR = 4;
		public const uint32 SO_KEEPALIVE = 8;
		public const uint32 SO_DONTROUTE = 16;
		public const uint32 SO_BROADCAST = 32;
		public const uint32 SO_USELOOPBACK = 64;
		public const uint32 SO_LINGER = 128;
		public const uint32 SO_OOBINLINE = 256;
		public const uint32 SO_SNDBUF = 4097;
		public const uint32 SO_RCVBUF = 4098;
		public const uint32 SO_SNDLOWAT = 4099;
		public const uint32 SO_RCVLOWAT = 4100;
		public const uint32 SO_SNDTIMEO = 4101;
		public const uint32 SO_RCVTIMEO = 4102;
		public const uint32 SO_ERROR = 4103;
		public const uint32 SO_TYPE = 4104;
		public const uint32 SO_BSP_STATE = 4105;
		public const uint32 SO_GROUP_ID = 8193;
		public const uint32 SO_GROUP_PRIORITY = 8194;
		public const uint32 SO_MAX_MSG_SIZE = 8195;
		public const uint32 SO_CONDITIONAL_ACCEPT = 12290;
		public const uint32 SO_PAUSE_ACCEPT = 12291;
		public const uint32 SO_COMPARTMENT_ID = 12292;
		public const uint32 SO_RANDOMIZE_PORT = 12293;
		public const uint32 SO_PORT_SCALABILITY = 12294;
		public const uint32 SO_REUSE_UNICASTPORT = 12295;
		public const uint32 SO_REUSE_MULTICASTPORT = 12296;
		public const uint32 SO_ORIGINAL_DST = 12303;
		public const uint32 IP6T_SO_ORIGINAL_DST = 12303;
		public const uint32 WSK_SO_BASE = 16384;
		public const uint32 TCP_NODELAY = 1;
		public const uint32 _SS_MAXSIZE = 128;
		public const uint32 IOC_UNIX = 0;
		public const uint32 IOC_WS2 = 134217728;
		public const uint32 IOC_PROTOCOL = 268435456;
		public const uint32 IOC_VENDOR = 402653184;
		public const uint32 IPPROTO_IP = 0;
		public const uint32 IPPORT_TCPMUX = 1;
		public const uint32 IPPORT_ECHO = 7;
		public const uint32 IPPORT_DISCARD = 9;
		public const uint32 IPPORT_SYSTAT = 11;
		public const uint32 IPPORT_DAYTIME = 13;
		public const uint32 IPPORT_NETSTAT = 15;
		public const uint32 IPPORT_QOTD = 17;
		public const uint32 IPPORT_MSP = 18;
		public const uint32 IPPORT_CHARGEN = 19;
		public const uint32 IPPORT_FTP_DATA = 20;
		public const uint32 IPPORT_FTP = 21;
		public const uint32 IPPORT_TELNET = 23;
		public const uint32 IPPORT_SMTP = 25;
		public const uint32 IPPORT_TIMESERVER = 37;
		public const uint32 IPPORT_NAMESERVER = 42;
		public const uint32 IPPORT_WHOIS = 43;
		public const uint32 IPPORT_MTP = 57;
		public const uint32 IPPORT_TFTP = 69;
		public const uint32 IPPORT_RJE = 77;
		public const uint32 IPPORT_FINGER = 79;
		public const uint32 IPPORT_TTYLINK = 87;
		public const uint32 IPPORT_SUPDUP = 95;
		public const uint32 IPPORT_POP3 = 110;
		public const uint32 IPPORT_NTP = 123;
		public const uint32 IPPORT_EPMAP = 135;
		public const uint32 IPPORT_NETBIOS_NS = 137;
		public const uint32 IPPORT_NETBIOS_DGM = 138;
		public const uint32 IPPORT_NETBIOS_SSN = 139;
		public const uint32 IPPORT_IMAP = 143;
		public const uint32 IPPORT_SNMP = 161;
		public const uint32 IPPORT_SNMP_TRAP = 162;
		public const uint32 IPPORT_IMAP3 = 220;
		public const uint32 IPPORT_LDAP = 389;
		public const uint32 IPPORT_HTTPS = 443;
		public const uint32 IPPORT_MICROSOFT_DS = 445;
		public const uint32 IPPORT_EXECSERVER = 512;
		public const uint32 IPPORT_LOGINSERVER = 513;
		public const uint32 IPPORT_CMDSERVER = 514;
		public const uint32 IPPORT_EFSSERVER = 520;
		public const uint32 IPPORT_BIFFUDP = 512;
		public const uint32 IPPORT_WHOSERVER = 513;
		public const uint32 IPPORT_ROUTESERVER = 520;
		public const uint32 IPPORT_RESERVED = 1024;
		public const uint32 IPPORT_REGISTERED_MIN = 1024;
		public const uint32 IPPORT_REGISTERED_MAX = 49151;
		public const uint32 IPPORT_DYNAMIC_MIN = 49152;
		public const uint32 IPPORT_DYNAMIC_MAX = 65535;
		public const uint32 IN_CLASSA_NET = 4278190080;
		public const uint32 IN_CLASSA_NSHIFT = 24;
		public const uint32 IN_CLASSA_HOST = 16777215;
		public const uint32 IN_CLASSA_MAX = 128;
		public const uint32 IN_CLASSB_NET = 4294901760;
		public const uint32 IN_CLASSB_NSHIFT = 16;
		public const uint32 IN_CLASSB_HOST = 65535;
		public const uint32 IN_CLASSB_MAX = 65536;
		public const uint32 IN_CLASSC_NET = 4294967040;
		public const uint32 IN_CLASSC_NSHIFT = 8;
		public const uint32 IN_CLASSC_HOST = 255;
		public const uint32 IN_CLASSD_NET = 4026531840;
		public const uint32 IN_CLASSD_NSHIFT = 28;
		public const uint32 IN_CLASSD_HOST = 268435455;
		public const uint32 INADDR_LOOPBACK = 2130706433;
		public const uint32 INADDR_NONE = 4294967295;
		public const uint32 IOCPARM_MASK = 127;
		public const uint32 IOC_VOID = 536870912;
		public const uint32 IOC_OUT = 1073741824;
		public const uint32 IOC_IN = 2147483648;
		public const uint32 MSG_TRUNC = 256;
		public const uint32 MSG_CTRUNC = 512;
		public const uint32 MSG_BCAST = 1024;
		public const uint32 MSG_MCAST = 2048;
		public const uint32 MSG_ERRQUEUE = 4096;
		public const uint32 AI_PASSIVE = 1;
		public const uint32 AI_CANONNAME = 2;
		public const uint32 AI_NUMERICHOST = 4;
		public const uint32 AI_NUMERICSERV = 8;
		public const uint32 AI_DNS_ONLY = 16;
		public const uint32 AI_FORCE_CLEAR_TEXT = 32;
		public const uint32 AI_BYPASS_DNS_CACHE = 64;
		public const uint32 AI_RETURN_TTL = 128;
		public const uint32 AI_ALL = 256;
		public const uint32 AI_ADDRCONFIG = 1024;
		public const uint32 AI_V4MAPPED = 2048;
		public const uint32 AI_NON_AUTHORITATIVE = 16384;
		public const uint32 AI_SECURE = 32768;
		public const uint32 AI_RETURN_PREFERRED_NAMES = 65536;
		public const uint32 AI_FQDN = 131072;
		public const uint32 AI_FILESERVER = 262144;
		public const uint32 AI_DISABLE_IDN_ENCODING = 524288;
		public const uint32 AI_SECURE_WITH_FALLBACK = 1048576;
		public const uint32 AI_EXCLUSIVE_CUSTOM_SERVERS = 2097152;
		public const uint32 AI_RETURN_RESPONSE_FLAGS = 268435456;
		public const uint32 AI_REQUIRE_SECURE = 536870912;
		public const uint32 AI_RESOLUTION_HANDLE = 1073741824;
		public const uint32 AI_EXTENDED = 2147483648;
		public const uint32 ADDRINFOEX_VERSION_2 = 2;
		public const uint32 ADDRINFOEX_VERSION_3 = 3;
		public const uint32 ADDRINFOEX_VERSION_4 = 4;
		public const uint32 ADDRINFOEX_VERSION_5 = 5;
		public const uint32 ADDRINFOEX_VERSION_6 = 6;
		public const uint32 AI_DNS_SERVER_TYPE_UDP = 1;
		public const uint32 AI_DNS_SERVER_TYPE_DOH = 2;
		public const uint32 AI_DNS_SERVER_UDP_FALLBACK = 1;
		public const uint32 AI_DNS_RESPONSE_SECURE = 1;
		public const uint32 AI_DNS_RESPONSE_HOSTFILE = 2;
		public const uint32 NS_ALL = 0;
		public const uint32 NS_SAP = 1;
		public const uint32 NS_NDS = 2;
		public const uint32 NS_PEER_BROWSE = 3;
		public const uint32 NS_SLP = 5;
		public const uint32 NS_DHCP = 6;
		public const uint32 NS_TCPIP_LOCAL = 10;
		public const uint32 NS_TCPIP_HOSTS = 11;
		public const uint32 NS_DNS = 12;
		public const uint32 NS_NETBT = 13;
		public const uint32 NS_WINS = 14;
		public const uint32 NS_NLA = 15;
		public const uint32 NS_NBP = 20;
		public const uint32 NS_MS = 30;
		public const uint32 NS_STDA = 31;
		public const uint32 NS_NTDS = 32;
		public const uint32 NS_EMAIL = 37;
		public const uint32 NS_X500 = 40;
		public const uint32 NS_NIS = 41;
		public const uint32 NS_NISPLUS = 42;
		public const uint32 NS_WRQ = 50;
		public const uint32 NS_NETDES = 60;
		public const uint32 NI_NOFQDN = 1;
		public const uint32 NI_NUMERICHOST = 2;
		public const uint32 NI_NAMEREQD = 4;
		public const uint32 NI_NUMERICSERV = 8;
		public const uint32 NI_DGRAM = 16;
		public const uint32 NI_MAXHOST = 1025;
		public const uint32 NI_MAXSERV = 32;
		public const uint32 IFF_UP = 1;
		public const uint32 IFF_BROADCAST = 2;
		public const uint32 IFF_LOOPBACK = 4;
		public const uint32 IFF_POINTTOPOINT = 8;
		public const uint32 IFF_MULTICAST = 16;
		public const uint32 IP_OPTIONS = 1;
		public const uint32 IP_HDRINCL = 2;
		public const uint32 IP_TOS = 3;
		public const uint32 IP_TTL = 4;
		public const uint32 IP_MULTICAST_IF = 9;
		public const uint32 IP_MULTICAST_TTL = 10;
		public const uint32 IP_MULTICAST_LOOP = 11;
		public const uint32 IP_ADD_MEMBERSHIP = 12;
		public const uint32 IP_DROP_MEMBERSHIP = 13;
		public const uint32 IP_DONTFRAGMENT = 14;
		public const uint32 IP_ADD_SOURCE_MEMBERSHIP = 15;
		public const uint32 IP_DROP_SOURCE_MEMBERSHIP = 16;
		public const uint32 IP_BLOCK_SOURCE = 17;
		public const uint32 IP_UNBLOCK_SOURCE = 18;
		public const uint32 IP_PKTINFO = 19;
		public const uint32 IP_HOPLIMIT = 21;
		public const uint32 IP_RECVTTL = 21;
		public const uint32 IP_RECEIVE_BROADCAST = 22;
		public const uint32 IP_RECVIF = 24;
		public const uint32 IP_RECVDSTADDR = 25;
		public const uint32 IP_IFLIST = 28;
		public const uint32 IP_ADD_IFLIST = 29;
		public const uint32 IP_DEL_IFLIST = 30;
		public const uint32 IP_UNICAST_IF = 31;
		public const uint32 IP_RTHDR = 32;
		public const uint32 IP_GET_IFLIST = 33;
		public const uint32 IP_RECVRTHDR = 38;
		public const uint32 IP_TCLASS = 39;
		public const uint32 IP_RECVTCLASS = 40;
		public const uint32 IP_RECVTOS = 40;
		public const uint32 IP_ORIGINAL_ARRIVAL_IF = 47;
		public const uint32 IP_ECN = 50;
		public const uint32 IP_RECVECN = 50;
		public const uint32 IP_PKTINFO_EX = 51;
		public const uint32 IP_WFP_REDIRECT_RECORDS = 60;
		public const uint32 IP_WFP_REDIRECT_CONTEXT = 70;
		public const uint32 IP_MTU_DISCOVER = 71;
		public const uint32 IP_MTU = 73;
		public const uint32 IP_NRT_INTERFACE = 74;
		public const uint32 IP_RECVERR = 75;
		public const uint32 IP_USER_MTU = 76;
		public const int32 IP_UNSPECIFIED_TYPE_OF_SERVICE = -1;
		public const uint32 IP_UNSPECIFIED_USER_MTU = 4294967295;
		public const uint32 IN6ADDR_LINKLOCALPREFIX_LENGTH = 64;
		public const uint32 IN6ADDR_MULTICASTPREFIX_LENGTH = 8;
		public const uint32 IN6ADDR_SOLICITEDNODEMULTICASTPREFIX_LENGTH = 104;
		public const uint32 IN6ADDR_V4MAPPEDPREFIX_LENGTH = 96;
		public const uint32 IN6ADDR_6TO4PREFIX_LENGTH = 16;
		public const uint32 IN6ADDR_TEREDOPREFIX_LENGTH = 32;
		public const uint32 MCAST_JOIN_GROUP = 41;
		public const uint32 MCAST_LEAVE_GROUP = 42;
		public const uint32 MCAST_BLOCK_SOURCE = 43;
		public const uint32 MCAST_UNBLOCK_SOURCE = 44;
		public const uint32 MCAST_JOIN_SOURCE_GROUP = 45;
		public const uint32 MCAST_LEAVE_SOURCE_GROUP = 46;
		public const uint32 IPV6_HOPOPTS = 1;
		public const uint32 IPV6_HDRINCL = 2;
		public const uint32 IPV6_UNICAST_HOPS = 4;
		public const uint32 IPV6_MULTICAST_IF = 9;
		public const uint32 IPV6_MULTICAST_HOPS = 10;
		public const uint32 IPV6_MULTICAST_LOOP = 11;
		public const uint32 IPV6_ADD_MEMBERSHIP = 12;
		public const uint32 IPV6_JOIN_GROUP = 12;
		public const uint32 IPV6_DROP_MEMBERSHIP = 13;
		public const uint32 IPV6_LEAVE_GROUP = 13;
		public const uint32 IPV6_DONTFRAG = 14;
		public const uint32 IPV6_PKTINFO = 19;
		public const uint32 IPV6_HOPLIMIT = 21;
		public const uint32 IPV6_PROTECTION_LEVEL = 23;
		public const uint32 IPV6_RECVIF = 24;
		public const uint32 IPV6_RECVDSTADDR = 25;
		public const uint32 IPV6_CHECKSUM = 26;
		public const uint32 IPV6_V6ONLY = 27;
		public const uint32 IPV6_IFLIST = 28;
		public const uint32 IPV6_ADD_IFLIST = 29;
		public const uint32 IPV6_DEL_IFLIST = 30;
		public const uint32 IPV6_UNICAST_IF = 31;
		public const uint32 IPV6_RTHDR = 32;
		public const uint32 IPV6_GET_IFLIST = 33;
		public const uint32 IPV6_RECVRTHDR = 38;
		public const uint32 IPV6_TCLASS = 39;
		public const uint32 IPV6_RECVTCLASS = 40;
		public const uint32 IPV6_ECN = 50;
		public const uint32 IPV6_RECVECN = 50;
		public const uint32 IPV6_PKTINFO_EX = 51;
		public const uint32 IPV6_WFP_REDIRECT_RECORDS = 60;
		public const uint32 IPV6_WFP_REDIRECT_CONTEXT = 70;
		public const uint32 IPV6_MTU_DISCOVER = 71;
		public const uint32 IPV6_MTU = 72;
		public const uint32 IPV6_NRT_INTERFACE = 74;
		public const uint32 IPV6_RECVERR = 75;
		public const uint32 IPV6_USER_MTU = 76;
		public const int32 IP_UNSPECIFIED_HOP_LIMIT = -1;
		public const uint32 IP_PROTECTION_LEVEL = 23;
		public const uint32 PROTECTION_LEVEL_UNRESTRICTED = 10;
		public const uint32 PROTECTION_LEVEL_EDGERESTRICTED = 20;
		public const uint32 PROTECTION_LEVEL_RESTRICTED = 30;
		public const uint32 PROTECTION_LEVEL_DEFAULT = 20;
		public const uint32 INET_ADDRSTRLEN = 22;
		public const uint32 INET6_ADDRSTRLEN = 65;
		public const uint32 TCP_OFFLOAD_NO_PREFERENCE = 0;
		public const uint32 TCP_OFFLOAD_NOT_PREFERRED = 1;
		public const uint32 TCP_OFFLOAD_PREFERRED = 2;
		public const uint32 TCP_EXPEDITED_1122 = 2;
		public const uint32 TCP_KEEPALIVE = 3;
		public const uint32 TCP_MAXSEG = 4;
		public const uint32 TCP_MAXRT = 5;
		public const uint32 TCP_STDURG = 6;
		public const uint32 TCP_NOURG = 7;
		public const uint32 TCP_ATMARK = 8;
		public const uint32 TCP_NOSYNRETRIES = 9;
		public const uint32 TCP_TIMESTAMPS = 10;
		public const uint32 TCP_OFFLOAD_PREFERENCE = 11;
		public const uint32 TCP_CONGESTION_ALGORITHM = 12;
		public const uint32 TCP_DELAY_FIN_ACK = 13;
		public const uint32 TCP_MAXRTMS = 14;
		public const uint32 TCP_FASTOPEN = 15;
		public const uint32 TCP_KEEPCNT = 16;
		public const uint32 TCP_KEEPIDLE = 3;
		public const uint32 TCP_KEEPINTVL = 17;
		public const uint32 TCP_FAIL_CONNECT_ON_ICMP_ERROR = 18;
		public const uint32 TCP_ICMP_ERROR_INFO = 19;
		public const uint32 UDP_SEND_MSG_SIZE = 2;
		public const uint32 UDP_RECV_MAX_COALESCED_SIZE = 3;
		public const uint32 UDP_COALESCED_INFO = 3;
		public const uint32 WINDOWS_AF_IRDA = 26;
		public const uint32 WINDOWS_PF_IRDA = 26;
		public const uint32 WCE_AF_IRDA = 22;
		public const uint32 WCE_PF_IRDA = 22;
		public const uint32 IRDA_PROTO_SOCK_STREAM = 1;
		public const uint16 PF_IRDA = 26;
		public const uint32 SOL_IRLMP = 255;
		public const uint32 IRLMP_ENUMDEVICES = 16;
		public const uint32 IRLMP_IAS_SET = 17;
		public const uint32 IRLMP_IAS_QUERY = 18;
		public const uint32 IRLMP_SEND_PDU_LEN = 19;
		public const uint32 IRLMP_EXCLUSIVE_MODE = 20;
		public const uint32 IRLMP_IRLPT_MODE = 21;
		public const uint32 IRLMP_9WIRE_MODE = 22;
		public const uint32 IRLMP_TINYTP_MODE = 23;
		public const uint32 IRLMP_PARAMETERS = 24;
		public const uint32 IRLMP_DISCOVERY_MODE = 25;
		public const uint32 IRLMP_SHARP_MODE = 32;
		public const uint32 IAS_ATTRIB_NO_CLASS = 16;
		public const uint32 IAS_ATTRIB_NO_ATTRIB = 0;
		public const uint32 IAS_ATTRIB_INT = 1;
		public const uint32 IAS_ATTRIB_OCTETSEQ = 2;
		public const uint32 IAS_ATTRIB_STR = 3;
		public const uint32 IAS_MAX_USER_STRING = 256;
		public const uint32 IAS_MAX_OCTET_STRING = 1024;
		public const uint32 IAS_MAX_CLASSNAME = 64;
		public const uint32 IAS_MAX_ATTRIBNAME = 256;
		public const uint32 LmCharSetASCII = 0;
		public const uint32 LmCharSetISO_8859_1 = 1;
		public const uint32 LmCharSetISO_8859_2 = 2;
		public const uint32 LmCharSetISO_8859_3 = 3;
		public const uint32 LmCharSetISO_8859_4 = 4;
		public const uint32 LmCharSetISO_8859_5 = 5;
		public const uint32 LmCharSetISO_8859_6 = 6;
		public const uint32 LmCharSetISO_8859_7 = 7;
		public const uint32 LmCharSetISO_8859_8 = 8;
		public const uint32 LmCharSetISO_8859_9 = 9;
		public const uint32 LmCharSetUNICODE = 255;
		public const uint32 LM_BAUD_1200 = 1200;
		public const uint32 LM_BAUD_2400 = 2400;
		public const uint32 LM_BAUD_9600 = 9600;
		public const uint32 LM_BAUD_19200 = 19200;
		public const uint32 LM_BAUD_38400 = 38400;
		public const uint32 LM_BAUD_57600 = 57600;
		public const uint32 LM_BAUD_115200 = 115200;
		public const uint32 LM_BAUD_576K = 576000;
		public const uint32 LM_BAUD_1152K = 1152000;
		public const uint32 LM_BAUD_4M = 4000000;
		public const uint32 LM_BAUD_16M = 16000000;
		public const uint32 SO_CONNDATA = 28672;
		public const uint32 SO_CONNOPT = 28673;
		public const uint32 SO_DISCDATA = 28674;
		public const uint32 SO_DISCOPT = 28675;
		public const uint32 SO_CONNDATALEN = 28676;
		public const uint32 SO_CONNOPTLEN = 28677;
		public const uint32 SO_DISCDATALEN = 28678;
		public const uint32 SO_DISCOPTLEN = 28679;
		public const uint32 SO_OPENTYPE = 28680;
		public const uint32 SO_SYNCHRONOUS_ALERT = 16;
		public const uint32 SO_SYNCHRONOUS_NONALERT = 32;
		public const uint32 SO_MAXDG = 28681;
		public const uint32 SO_MAXPATHDG = 28682;
		public const uint32 SO_UPDATE_ACCEPT_CONTEXT = 28683;
		public const uint32 SO_CONNECT_TIME = 28684;
		public const uint32 SO_UPDATE_CONNECT_CONTEXT = 28688;
		public const uint32 TCP_BSDURGENT = 28672;
		public const uint32 TF_DISCONNECT = 1;
		public const uint32 TF_REUSE_SOCKET = 2;
		public const uint32 TF_WRITE_BEHIND = 4;
		public const uint32 TF_USE_DEFAULT_WORKER = 0;
		public const uint32 TF_USE_SYSTEM_THREAD = 16;
		public const uint32 TF_USE_KERNEL_APC = 32;
		public const uint32 TP_ELEMENT_MEMORY = 1;
		public const uint32 TP_ELEMENT_FILE = 2;
		public const uint32 TP_ELEMENT_EOP = 4;
		public const uint32 TP_DISCONNECT = 1;
		public const uint32 TP_REUSE_SOCKET = 2;
		public const uint32 TP_USE_DEFAULT_WORKER = 0;
		public const uint32 TP_USE_SYSTEM_THREAD = 16;
		public const uint32 TP_USE_KERNEL_APC = 32;
		public const uint32 DE_REUSE_SOCKET = 2;
		public const uint32 NLA_ALLUSERS_NETWORK = 1;
		public const uint32 NLA_FRIENDLY_NAME = 2;
		public const uint32 SERVICE_RESOURCE = 1;
		public const uint32 SERVICE_SERVICE = 2;
		public const uint32 SERVICE_LOCAL = 4;
		public const uint32 SERVICE_FLAG_DEFER = 1;
		public const uint32 SERVICE_FLAG_HARD = 2;
		public const uint32 PROP_COMMENT = 1;
		public const uint32 PROP_LOCALE = 2;
		public const uint32 PROP_DISPLAY_HINT = 4;
		public const uint32 PROP_VERSION = 8;
		public const uint32 PROP_START_TIME = 16;
		public const uint32 PROP_MACHINE = 32;
		public const uint32 PROP_ADDRESSES = 256;
		public const uint32 PROP_SD = 512;
		public const uint32 PROP_ALL = 2147483648;
		public const uint32 SERVICE_ADDRESS_FLAG_RPC_CN = 1;
		public const uint32 SERVICE_ADDRESS_FLAG_RPC_DG = 2;
		public const uint32 SERVICE_ADDRESS_FLAG_RPC_NB = 4;
		public const uint32 NS_DEFAULT = 0;
		public const uint32 NS_VNS = 50;
		public const uint32 NSTYPE_HIERARCHICAL = 1;
		public const uint32 NSTYPE_DYNAMIC = 2;
		public const uint32 NSTYPE_ENUMERABLE = 4;
		public const uint32 NSTYPE_WORKGROUP = 8;
		public const uint32 XP_CONNECTIONLESS = 1;
		public const uint32 XP_GUARANTEED_DELIVERY = 2;
		public const uint32 XP_GUARANTEED_ORDER = 4;
		public const uint32 XP_MESSAGE_ORIENTED = 8;
		public const uint32 XP_PSEUDO_STREAM = 16;
		public const uint32 XP_GRACEFUL_CLOSE = 32;
		public const uint32 XP_EXPEDITED_DATA = 64;
		public const uint32 XP_CONNECT_DATA = 128;
		public const uint32 XP_DISCONNECT_DATA = 256;
		public const uint32 XP_SUPPORTS_BROADCAST = 512;
		public const uint32 XP_SUPPORTS_MULTICAST = 1024;
		public const uint32 XP_BANDWIDTH_ALLOCATION = 2048;
		public const uint32 XP_FRAGMENTATION = 4096;
		public const uint32 XP_ENCRYPTS = 8192;
		public const uint32 RES_SOFT_SEARCH = 1;
		public const uint32 RES_FIND_MULTIPLE = 2;
		public const uint32 RES_SERVICE = 4;
		public const uint32 SET_SERVICE_PARTIAL_SUCCESS = 1;
		public const uint32 FD_SETSIZE = 64;
		public const uint32 IMPLINK_IP = 155;
		public const uint32 IMPLINK_LOWEXPER = 156;
		public const uint32 IMPLINK_HIGHEXPER = 158;
		public const uint32 WSADESCRIPTION_LEN = 256;
		public const uint32 WSASYS_STATUS_LEN = 128;
		public const uint32 IP_DEFAULT_MULTICAST_TTL = 1;
		public const uint32 IP_DEFAULT_MULTICAST_LOOP = 1;
		public const uint32 IP_MAX_MEMBERSHIPS = 20;
		public const int32 SOCKET_ERROR = -1;
		public const uint16 PF_UNIX = 1;
		public const uint16 PF_IMPLINK = 3;
		public const uint16 PF_PUP = 4;
		public const uint16 PF_CHAOS = 5;
		public const uint16 PF_NS = 6;
		public const uint16 PF_IPX = 6;
		public const uint16 PF_ISO = 7;
		public const uint16 PF_OSI = 7;
		public const uint16 PF_ECMA = 8;
		public const uint16 PF_DATAKIT = 9;
		public const uint16 PF_CCITT = 10;
		public const uint16 PF_SNA = 11;
		public const uint16 PF_DECnet = 12;
		public const uint16 PF_DLI = 13;
		public const uint16 PF_LAT = 14;
		public const uint16 PF_HYLINK = 15;
		public const uint16 PF_APPLETALK = 16;
		public const uint16 PF_VOICEVIEW = 18;
		public const uint16 PF_FIREFOX = 19;
		public const uint16 PF_UNKNOWN1 = 20;
		public const uint16 PF_BAN = 21;
		public const uint16 PF_MAX = 29;
		public const uint32 SOMAXCONN = 5;
		public const uint32 MSG_PEEK = 2;
		public const uint32 MSG_MAXIOVLEN = 16;
		public const uint32 MSG_PARTIAL = 32768;
		public const uint32 MAXGETHOSTSTRUCT = 1024;
		public const uint32 FD_READ = 1;
		public const uint32 FD_WRITE = 2;
		public const uint32 FD_OOB = 4;
		public const uint32 FD_ACCEPT = 8;
		public const uint32 FD_CONNECT = 16;
		public const uint32 FD_CLOSE = 32;
		public const uint32 INCL_WINSOCK_API_PROTOTYPES = 1;
		public const uint32 INCL_WINSOCK_API_TYPEDEFS = 0;
		public const int32 FROM_PROTOCOL_INFO = -1;
		public const uint32 SO_PROTOCOL_INFOA = 8196;
		public const uint32 SO_PROTOCOL_INFOW = 8197;
		public const uint32 SO_PROTOCOL_INFO = 8197;
		public const uint32 PVD_CONFIG = 12289;
		public const uint16 PF_ATM = 22;
		public const uint32 MSG_WAITALL = 8;
		public const uint32 MSG_PUSH_IMMEDIATE = 32;
		public const uint32 MSG_INTERRUPT = 16;
		public const uint32 FD_READ_BIT = 0;
		public const uint32 FD_WRITE_BIT = 1;
		public const uint32 FD_OOB_BIT = 2;
		public const uint32 FD_ACCEPT_BIT = 3;
		public const uint32 FD_CONNECT_BIT = 4;
		public const uint32 FD_CLOSE_BIT = 5;
		public const uint32 FD_QOS_BIT = 6;
		public const uint32 FD_GROUP_QOS_BIT = 7;
		public const uint32 FD_ROUTING_INTERFACE_CHANGE_BIT = 8;
		public const uint32 FD_ADDRESS_LIST_CHANGE_BIT = 9;
		public const uint32 FD_MAX_EVENTS = 10;
		public const uint32 WSA_MAXIMUM_WAIT_EVENTS = 64;
		public const uint32 WSA_WAIT_EVENT_0 = 0;
		public const uint32 WSA_WAIT_IO_COMPLETION = 192;
		public const uint32 WSA_WAIT_FAILED = 4294967295;
		public const uint32 CF_ACCEPT = 0;
		public const uint32 CF_REJECT = 1;
		public const uint32 CF_DEFER = 2;
		public const uint32 SD_RECEIVE = 0;
		public const uint32 SD_SEND = 1;
		public const uint32 SD_BOTH = 2;
		public const uint32 SG_UNCONSTRAINED_GROUP = 1;
		public const uint32 SG_CONSTRAINED_GROUP = 2;
		public const uint32 MAX_PROTOCOL_CHAIN = 7;
		public const uint32 BASE_PROTOCOL = 1;
		public const uint32 LAYERED_PROTOCOL = 0;
		public const uint32 WSAPROTOCOL_LEN = 255;
		public const uint32 PFL_MULTIPLE_PROTO_ENTRIES = 1;
		public const uint32 PFL_RECOMMENDED_PROTO_ENTRY = 2;
		public const uint32 PFL_HIDDEN = 4;
		public const uint32 PFL_MATCHES_PROTOCOL_ZERO = 8;
		public const uint32 PFL_NETWORKDIRECT_PROVIDER = 16;
		public const uint32 XP1_CONNECTIONLESS = 1;
		public const uint32 XP1_GUARANTEED_DELIVERY = 2;
		public const uint32 XP1_GUARANTEED_ORDER = 4;
		public const uint32 XP1_MESSAGE_ORIENTED = 8;
		public const uint32 XP1_PSEUDO_STREAM = 16;
		public const uint32 XP1_GRACEFUL_CLOSE = 32;
		public const uint32 XP1_EXPEDITED_DATA = 64;
		public const uint32 XP1_CONNECT_DATA = 128;
		public const uint32 XP1_DISCONNECT_DATA = 256;
		public const uint32 XP1_SUPPORT_BROADCAST = 512;
		public const uint32 XP1_SUPPORT_MULTIPOINT = 1024;
		public const uint32 XP1_MULTIPOINT_CONTROL_PLANE = 2048;
		public const uint32 XP1_MULTIPOINT_DATA_PLANE = 4096;
		public const uint32 XP1_QOS_SUPPORTED = 8192;
		public const uint32 XP1_INTERRUPT = 16384;
		public const uint32 XP1_UNI_SEND = 32768;
		public const uint32 XP1_UNI_RECV = 65536;
		public const uint32 XP1_IFS_HANDLES = 131072;
		public const uint32 XP1_PARTIAL_MESSAGE = 262144;
		public const uint32 XP1_SAN_SUPPORT_SDP = 524288;
		public const uint32 BIGENDIAN = 0;
		public const uint32 LITTLEENDIAN = 1;
		public const uint32 SECURITY_PROTOCOL_NONE = 0;
		public const uint32 JL_SENDER_ONLY = 1;
		public const uint32 JL_RECEIVER_ONLY = 2;
		public const uint32 JL_BOTH = 4;
		public const uint32 WSA_FLAG_OVERLAPPED = 1;
		public const uint32 WSA_FLAG_MULTIPOINT_C_ROOT = 2;
		public const uint32 WSA_FLAG_MULTIPOINT_C_LEAF = 4;
		public const uint32 WSA_FLAG_MULTIPOINT_D_ROOT = 8;
		public const uint32 WSA_FLAG_MULTIPOINT_D_LEAF = 16;
		public const uint32 WSA_FLAG_ACCESS_SYSTEM_SECURITY = 64;
		public const uint32 WSA_FLAG_NO_HANDLE_INHERIT = 128;
		public const uint32 WSA_FLAG_REGISTERED_IO = 256;
		public const uint32 TH_NETDEV = 1;
		public const uint32 TH_TAPI = 2;
		public const uint32 SERVICE_MULTIPLE = 1;
		public const uint32 NS_LOCALNAME = 19;
		public const uint32 RES_UNUSED_1 = 1;
		public const uint32 RES_FLUSH_CACHE = 2;
		public const uint32 LUP_DEEP = 1;
		public const uint32 LUP_CONTAINERS = 2;
		public const uint32 LUP_NOCONTAINERS = 4;
		public const uint32 LUP_NEAREST = 8;
		public const uint32 LUP_RETURN_NAME = 16;
		public const uint32 LUP_RETURN_TYPE = 32;
		public const uint32 LUP_RETURN_VERSION = 64;
		public const uint32 LUP_RETURN_COMMENT = 128;
		public const uint32 LUP_RETURN_ADDR = 256;
		public const uint32 LUP_RETURN_BLOB = 512;
		public const uint32 LUP_RETURN_ALIASES = 1024;
		public const uint32 LUP_RETURN_QUERY_STRING = 2048;
		public const uint32 LUP_RETURN_ALL = 4080;
		public const uint32 LUP_RES_SERVICE = 32768;
		public const uint32 LUP_FLUSHCACHE = 4096;
		public const uint32 LUP_FLUSHPREVIOUS = 8192;
		public const uint32 LUP_NON_AUTHORITATIVE = 16384;
		public const uint32 LUP_SECURE = 32768;
		public const uint32 LUP_RETURN_PREFERRED_NAMES = 65536;
		public const uint32 LUP_DNS_ONLY = 131072;
		public const uint32 LUP_RETURN_RESPONSE_FLAGS = 262144;
		public const uint32 LUP_ADDRCONFIG = 1048576;
		public const uint32 LUP_DUAL_ADDR = 2097152;
		public const uint32 LUP_FILESERVER = 4194304;
		public const uint32 LUP_DISABLE_IDN_ENCODING = 8388608;
		public const uint32 LUP_API_ANSI = 16777216;
		public const uint32 LUP_EXTENDED_QUERYSET = 33554432;
		public const uint32 LUP_SECURE_WITH_FALLBACK = 67108864;
		public const uint32 LUP_EXCLUSIVE_CUSTOM_SERVERS = 134217728;
		public const uint32 LUP_REQUIRE_SECURE = 268435456;
		public const uint32 LUP_RETURN_TTL = 536870912;
		public const uint32 LUP_FORCE_CLEAR_TEXT = 1073741824;
		public const uint32 LUP_RESOLUTION_HANDLE = 2147483648;
		public const uint32 RESULT_IS_ALIAS = 1;
		public const uint32 RESULT_IS_ADDED = 16;
		public const uint32 RESULT_IS_CHANGED = 32;
		public const uint32 RESULT_IS_DELETED = 64;
		public const uint32 POLLRDNORM = 256;
		public const uint32 POLLRDBAND = 512;
		public const uint32 POLLPRI = 1024;
		public const uint32 POLLWRNORM = 16;
		public const uint32 POLLOUT = 16;
		public const uint32 POLLWRBAND = 32;
		public const uint32 POLLERR = 1;
		public const uint32 POLLHUP = 2;
		public const uint32 POLLNVAL = 4;
		public const uint32 SOCK_NOTIFY_REGISTER_EVENT_NONE = 0;
		public const uint32 SOCK_NOTIFY_REGISTER_EVENT_IN = 1;
		public const uint32 SOCK_NOTIFY_REGISTER_EVENT_OUT = 2;
		public const uint32 SOCK_NOTIFY_REGISTER_EVENT_HANGUP = 4;
		public const uint32 SOCK_NOTIFY_EVENT_IN = 1;
		public const uint32 SOCK_NOTIFY_EVENT_OUT = 2;
		public const uint32 SOCK_NOTIFY_EVENT_HANGUP = 4;
		public const uint32 SOCK_NOTIFY_EVENT_ERR = 64;
		public const uint32 SOCK_NOTIFY_EVENT_REMOVE = 128;
		public const uint32 SOCK_NOTIFY_OP_NONE = 0;
		public const uint32 SOCK_NOTIFY_OP_ENABLE = 1;
		public const uint32 SOCK_NOTIFY_OP_DISABLE = 2;
		public const uint32 SOCK_NOTIFY_OP_REMOVE = 4;
		public const uint32 SOCK_NOTIFY_TRIGGER_ONESHOT = 1;
		public const uint32 SOCK_NOTIFY_TRIGGER_PERSISTENT = 2;
		public const uint32 SOCK_NOTIFY_TRIGGER_LEVEL = 4;
		public const uint32 SOCK_NOTIFY_TRIGGER_EDGE = 8;
		public const uint32 ATMPROTO_AALUSER = 0;
		public const uint32 ATMPROTO_AAL1 = 1;
		public const uint32 ATMPROTO_AAL2 = 2;
		public const uint32 ATMPROTO_AAL34 = 3;
		public const uint32 ATMPROTO_AAL5 = 5;
		public const uint32 SAP_FIELD_ABSENT = 4294967294;
		public const uint32 SAP_FIELD_ANY = 4294967295;
		public const uint32 SAP_FIELD_ANY_AESA_SEL = 4294967290;
		public const uint32 SAP_FIELD_ANY_AESA_REST = 4294967291;
		public const uint32 ATM_E164 = 1;
		public const uint32 ATM_NSAP = 2;
		public const uint32 ATM_AESA = 2;
		public const uint32 ATM_ADDR_SIZE = 20;
		public const uint32 BLLI_L2_ISO_1745 = 1;
		public const uint32 BLLI_L2_Q921 = 2;
		public const uint32 BLLI_L2_X25L = 6;
		public const uint32 BLLI_L2_X25M = 7;
		public const uint32 BLLI_L2_ELAPB = 8;
		public const uint32 BLLI_L2_HDLC_ARM = 9;
		public const uint32 BLLI_L2_HDLC_NRM = 10;
		public const uint32 BLLI_L2_HDLC_ABM = 11;
		public const uint32 BLLI_L2_LLC = 12;
		public const uint32 BLLI_L2_X75 = 13;
		public const uint32 BLLI_L2_Q922 = 14;
		public const uint32 BLLI_L2_USER_SPECIFIED = 16;
		public const uint32 BLLI_L2_ISO_7776 = 17;
		public const uint32 BLLI_L3_X25 = 6;
		public const uint32 BLLI_L3_ISO_8208 = 7;
		public const uint32 BLLI_L3_X223 = 8;
		public const uint32 BLLI_L3_SIO_8473 = 9;
		public const uint32 BLLI_L3_T70 = 10;
		public const uint32 BLLI_L3_ISO_TR9577 = 11;
		public const uint32 BLLI_L3_USER_SPECIFIED = 16;
		public const uint32 BLLI_L3_IPI_SNAP = 128;
		public const uint32 BLLI_L3_IPI_IP = 204;
		public const uint32 BHLI_ISO = 0;
		public const uint32 BHLI_UserSpecific = 1;
		public const uint32 BHLI_HighLayerProfile = 2;
		public const uint32 BHLI_VendorSpecificAppId = 3;
		public const uint32 AAL5_MODE_MESSAGE = 1;
		public const uint32 AAL5_MODE_STREAMING = 2;
		public const uint32 AAL5_SSCS_NULL = 0;
		public const uint32 AAL5_SSCS_SSCOP_ASSURED = 1;
		public const uint32 AAL5_SSCS_SSCOP_NON_ASSURED = 2;
		public const uint32 AAL5_SSCS_FRAME_RELAY = 4;
		public const uint32 BCOB_A = 1;
		public const uint32 BCOB_C = 3;
		public const uint32 BCOB_X = 16;
		public const uint32 TT_NOIND = 0;
		public const uint32 TT_CBR = 4;
		public const uint32 TT_VBR = 8;
		public const uint32 TR_NOIND = 0;
		public const uint32 TR_END_TO_END = 1;
		public const uint32 TR_NO_END_TO_END = 2;
		public const uint32 CLIP_NOT = 0;
		public const uint32 CLIP_SUS = 32;
		public const uint32 UP_P2P = 0;
		public const uint32 UP_P2MP = 1;
		public const uint32 BLLI_L2_MODE_NORMAL = 64;
		public const uint32 BLLI_L2_MODE_EXT = 128;
		public const uint32 BLLI_L3_MODE_NORMAL = 64;
		public const uint32 BLLI_L3_MODE_EXT = 128;
		public const uint32 BLLI_L3_PACKET_16 = 4;
		public const uint32 BLLI_L3_PACKET_32 = 5;
		public const uint32 BLLI_L3_PACKET_64 = 6;
		public const uint32 BLLI_L3_PACKET_128 = 7;
		public const uint32 BLLI_L3_PACKET_256 = 8;
		public const uint32 BLLI_L3_PACKET_512 = 9;
		public const uint32 BLLI_L3_PACKET_1024 = 10;
		public const uint32 BLLI_L3_PACKET_2048 = 11;
		public const uint32 BLLI_L3_PACKET_4096 = 12;
		public const uint32 PI_ALLOWED = 0;
		public const uint32 PI_RESTRICTED = 64;
		public const uint32 PI_NUMBER_NOT_AVAILABLE = 128;
		public const uint32 SI_USER_NOT_SCREENED = 0;
		public const uint32 SI_USER_PASSED = 1;
		public const uint32 SI_USER_FAILED = 2;
		public const uint32 SI_NETWORK = 3;
		public const uint32 CAUSE_LOC_USER = 0;
		public const uint32 CAUSE_LOC_PRIVATE_LOCAL = 1;
		public const uint32 CAUSE_LOC_PUBLIC_LOCAL = 2;
		public const uint32 CAUSE_LOC_TRANSIT_NETWORK = 3;
		public const uint32 CAUSE_LOC_PUBLIC_REMOTE = 4;
		public const uint32 CAUSE_LOC_PRIVATE_REMOTE = 5;
		public const uint32 CAUSE_LOC_INTERNATIONAL_NETWORK = 7;
		public const uint32 CAUSE_LOC_BEYOND_INTERWORKING = 10;
		public const uint32 CAUSE_UNALLOCATED_NUMBER = 1;
		public const uint32 CAUSE_NO_ROUTE_TO_TRANSIT_NETWORK = 2;
		public const uint32 CAUSE_NO_ROUTE_TO_DESTINATION = 3;
		public const uint32 CAUSE_VPI_VCI_UNACCEPTABLE = 10;
		public const uint32 CAUSE_NORMAL_CALL_CLEARING = 16;
		public const uint32 CAUSE_USER_BUSY = 17;
		public const uint32 CAUSE_NO_USER_RESPONDING = 18;
		public const uint32 CAUSE_CALL_REJECTED = 21;
		public const uint32 CAUSE_NUMBER_CHANGED = 22;
		public const uint32 CAUSE_USER_REJECTS_CLIR = 23;
		public const uint32 CAUSE_DESTINATION_OUT_OF_ORDER = 27;
		public const uint32 CAUSE_INVALID_NUMBER_FORMAT = 28;
		public const uint32 CAUSE_STATUS_ENQUIRY_RESPONSE = 30;
		public const uint32 CAUSE_NORMAL_UNSPECIFIED = 31;
		public const uint32 CAUSE_VPI_VCI_UNAVAILABLE = 35;
		public const uint32 CAUSE_NETWORK_OUT_OF_ORDER = 38;
		public const uint32 CAUSE_TEMPORARY_FAILURE = 41;
		public const uint32 CAUSE_ACCESS_INFORMAION_DISCARDED = 43;
		public const uint32 CAUSE_NO_VPI_VCI_AVAILABLE = 45;
		public const uint32 CAUSE_RESOURCE_UNAVAILABLE = 47;
		public const uint32 CAUSE_QOS_UNAVAILABLE = 49;
		public const uint32 CAUSE_USER_CELL_RATE_UNAVAILABLE = 51;
		public const uint32 CAUSE_BEARER_CAPABILITY_UNAUTHORIZED = 57;
		public const uint32 CAUSE_BEARER_CAPABILITY_UNAVAILABLE = 58;
		public const uint32 CAUSE_OPTION_UNAVAILABLE = 63;
		public const uint32 CAUSE_BEARER_CAPABILITY_UNIMPLEMENTED = 65;
		public const uint32 CAUSE_UNSUPPORTED_TRAFFIC_PARAMETERS = 73;
		public const uint32 CAUSE_INVALID_CALL_REFERENCE = 81;
		public const uint32 CAUSE_CHANNEL_NONEXISTENT = 82;
		public const uint32 CAUSE_INCOMPATIBLE_DESTINATION = 88;
		public const uint32 CAUSE_INVALID_ENDPOINT_REFERENCE = 89;
		public const uint32 CAUSE_INVALID_TRANSIT_NETWORK_SELECTION = 91;
		public const uint32 CAUSE_TOO_MANY_PENDING_ADD_PARTY = 92;
		public const uint32 CAUSE_AAL_PARAMETERS_UNSUPPORTED = 93;
		public const uint32 CAUSE_MANDATORY_IE_MISSING = 96;
		public const uint32 CAUSE_UNIMPLEMENTED_MESSAGE_TYPE = 97;
		public const uint32 CAUSE_UNIMPLEMENTED_IE = 99;
		public const uint32 CAUSE_INVALID_IE_CONTENTS = 100;
		public const uint32 CAUSE_INVALID_STATE_FOR_MESSAGE = 101;
		public const uint32 CAUSE_RECOVERY_ON_TIMEOUT = 102;
		public const uint32 CAUSE_INCORRECT_MESSAGE_LENGTH = 104;
		public const uint32 CAUSE_PROTOCOL_ERROR = 111;
		public const uint32 CAUSE_COND_UNKNOWN = 0;
		public const uint32 CAUSE_COND_PERMANENT = 1;
		public const uint32 CAUSE_COND_TRANSIENT = 2;
		public const uint32 CAUSE_REASON_USER = 0;
		public const uint32 CAUSE_REASON_IE_MISSING = 4;
		public const uint32 CAUSE_REASON_IE_INSUFFICIENT = 8;
		public const uint32 CAUSE_PU_PROVIDER = 0;
		public const uint32 CAUSE_PU_USER = 8;
		public const uint32 CAUSE_NA_NORMAL = 0;
		public const uint32 CAUSE_NA_ABNORMAL = 4;
		public const uint32 QOS_CLASS0 = 0;
		public const uint32 QOS_CLASS1 = 1;
		public const uint32 QOS_CLASS2 = 2;
		public const uint32 QOS_CLASS3 = 3;
		public const uint32 QOS_CLASS4 = 4;
		public const uint32 TNS_TYPE_NATIONAL = 64;
		public const uint32 TNS_PLAN_CARRIER_ID_CODE = 1;
		public const uint32 SIO_GET_NUMBER_OF_ATM_DEVICES = 1343619073;
		public const uint32 SIO_GET_ATM_ADDRESS = 3491102722;
		public const uint32 SIO_ASSOCIATE_PVC = 2417360899;
		public const uint32 SIO_GET_ATM_CONNECTION_ID = 1343619076;
		public const uint32 WSPDESCRIPTION_LEN = 255;
		public const int32 WSS_OPERATION_IN_PROGRESS = 259;
		public const uint32 LSP_SYSTEM = 2147483648;
		public const uint32 LSP_INSPECTOR = 1;
		public const uint32 LSP_REDIRECTOR = 2;
		public const uint32 LSP_PROXY = 4;
		public const uint32 LSP_FIREWALL = 8;
		public const uint32 LSP_INBOUND_MODIFY = 16;
		public const uint32 LSP_OUTBOUND_MODIFY = 32;
		public const uint32 LSP_CRYPTO_COMPRESS = 64;
		public const uint32 LSP_LOCAL_CACHE = 128;
		public const uint32 UDP_NOCHECKSUM = 1;
		public const uint32 UDP_CHECKSUM_COVERAGE = 20;
		public const uint32 GAI_STRERROR_BUFFER_SIZE = 1024;
		public const uint32 IPX_PTYPE = 16384;
		public const uint32 IPX_FILTERPTYPE = 16385;
		public const uint32 IPX_STOPFILTERPTYPE = 16387;
		public const uint32 IPX_DSTYPE = 16386;
		public const uint32 IPX_EXTENDED_ADDRESS = 16388;
		public const uint32 IPX_RECVHDR = 16389;
		public const uint32 IPX_MAXSIZE = 16390;
		public const uint32 IPX_ADDRESS = 16391;
		public const uint32 IPX_GETNETINFO = 16392;
		public const uint32 IPX_GETNETINFO_NORIP = 16393;
		public const uint32 IPX_SPXGETCONNECTIONSTATUS = 16395;
		public const uint32 IPX_ADDRESS_NOTIFY = 16396;
		public const uint32 IPX_MAX_ADAPTER_NUM = 16397;
		public const uint32 IPX_RERIPNETNUMBER = 16398;
		public const uint32 IPX_RECEIVE_BROADCAST = 16399;
		public const uint32 IPX_IMMEDIATESPXACK = 16400;
		public const uint32 IPPROTO_RM = 113;
		public const uint32 MAX_MCAST_TTL = 255;
		public const uint32 RM_OPTIONSBASE = 1000;
		public const uint32 RM_RATE_WINDOW_SIZE = 1001;
		public const uint32 RM_SET_MESSAGE_BOUNDARY = 1002;
		public const uint32 RM_FLUSHCACHE = 1003;
		public const uint32 RM_SENDER_WINDOW_ADVANCE_METHOD = 1004;
		public const uint32 RM_SENDER_STATISTICS = 1005;
		public const uint32 RM_LATEJOIN = 1006;
		public const uint32 RM_SET_SEND_IF = 1007;
		public const uint32 RM_ADD_RECEIVE_IF = 1008;
		public const uint32 RM_DEL_RECEIVE_IF = 1009;
		public const uint32 RM_SEND_WINDOW_ADV_RATE = 1010;
		public const uint32 RM_USE_FEC = 1011;
		public const uint32 RM_SET_MCAST_TTL = 1012;
		public const uint32 RM_RECEIVER_STATISTICS = 1013;
		public const uint32 RM_HIGH_SPEED_INTRANET_OPT = 1014;
		public const uint32 SENDER_DEFAULT_RATE_KBITS_PER_SEC = 56;
		public const uint32 SENDER_DEFAULT_WINDOW_ADV_PERCENTAGE = 15;
		public const uint32 MAX_WINDOW_INCREMENT_PERCENTAGE = 25;
		public const uint32 SENDER_DEFAULT_LATE_JOINER_PERCENTAGE = 0;
		public const uint32 SENDER_MAX_LATE_JOINER_PERCENTAGE = 75;
		public const uint32 BITS_PER_BYTE = 8;
		public const uint32 LOG2_BITS_PER_BYTE = 3;
		public const uint32 UNIX_PATH_MAX = 108;
		public const uint32 ISOPROTO_TP0 = 25;
		public const uint32 ISOPROTO_TP1 = 26;
		public const uint32 ISOPROTO_TP2 = 27;
		public const uint32 ISOPROTO_TP3 = 28;
		public const uint32 ISOPROTO_TP4 = 29;
		public const uint32 ISOPROTO_TP = 29;
		public const uint32 ISOPROTO_CLTP = 30;
		public const uint32 ISOPROTO_CLNP = 31;
		public const uint32 ISOPROTO_X25 = 32;
		public const uint32 ISOPROTO_INACT_NL = 33;
		public const uint32 ISOPROTO_ESIS = 34;
		public const uint32 ISOPROTO_INTRAISIS = 35;
		public const uint32 ISO_MAX_ADDR_LENGTH = 64;
		public const uint32 ISO_HIERARCHICAL = 0;
		public const uint32 ISO_NON_HIERARCHICAL = 1;
		public const uint32 ISO_EXP_DATA_USE = 0;
		public const uint32 ISO_EXP_DATA_NUSE = 1;
		public const uint32 NSPROTO_IPX = 1000;
		public const uint32 NSPROTO_SPX = 1256;
		public const uint32 NSPROTO_SPXII = 1257;
		public const uint32 NETBIOS_NAME_LENGTH = 16;
		public const uint32 NETBIOS_UNIQUE_NAME = 0;
		public const uint32 NETBIOS_GROUP_NAME = 1;
		public const uint32 NETBIOS_TYPE_QUICK_UNIQUE = 2;
		public const uint32 NETBIOS_TYPE_QUICK_GROUP = 3;
		public const uint32 VNSPROTO_IPC = 1;
		public const uint32 VNSPROTO_RELIABLE_IPC = 2;
		public const uint32 VNSPROTO_SPP = 3;
		public const SOCKET INVALID_SOCKET = 4294967295;
		public const uint32 WSA_INFINITE = 4294967295;
		public const uint32 IOC_INOUT = 3221225472;
		public const int32 FIONREAD = 1074030207;
		public const int32 FIONBIO = -2147195266;
		public const int32 FIOASYNC = -2147195267;
		public const int32 SIOCSHIWAT = -2147192064;
		public const int32 SIOCGHIWAT = 1074033409;
		public const int32 SIOCSLOWAT = -2147192062;
		public const int32 SIOCGLOWAT = 1074033411;
		public const int32 SIOCATMARK = 1074033415;
		public const int32 LM_HB_Extension = 128;
		public const int32 LM_HB1_PnP = 1;
		public const int32 LM_HB1_PDA_Palmtop = 2;
		public const int32 LM_HB1_Computer = 4;
		public const int32 LM_HB1_Printer = 8;
		public const int32 LM_HB1_Modem = 16;
		public const int32 LM_HB1_Fax = 32;
		public const int32 LM_HB1_LANAccess = 64;
		public const int32 LM_HB2_Telephony = 1;
		public const int32 LM_HB2_FileServer = 2;
		
		// --- Typedefs ---
		
		public typealias HWSAEVENT = int;
		public typealias SOCKET = uint;
		
		// --- Enums ---
		
		public enum WSA_ERROR : int32
		{
			WSA_IO_PENDING = 997,
			WSA_IO_INCOMPLETE = 996,
			WSA_INVALID_HANDLE = 6,
			WSA_INVALID_PARAMETER = 87,
			WSA_NOT_ENOUGH_MEMORY = 8,
			WSA_OPERATION_ABORTED = 995,
			WSABASEERR = 10000,
			WSAEINTR = 10004,
			WSAEBADF = 10009,
			WSAEACCES = 10013,
			WSAEFAULT = 10014,
			WSAEINVAL = 10022,
			WSAEMFILE = 10024,
			WSAEWOULDBLOCK = 10035,
			WSAEINPROGRESS = 10036,
			WSAEALREADY = 10037,
			WSAENOTSOCK = 10038,
			WSAEDESTADDRREQ = 10039,
			WSAEMSGSIZE = 10040,
			WSAEPROTOTYPE = 10041,
			WSAENOPROTOOPT = 10042,
			WSAEPROTONOSUPPORT = 10043,
			WSAESOCKTNOSUPPORT = 10044,
			WSAEOPNOTSUPP = 10045,
			WSAEPFNOSUPPORT = 10046,
			WSAEAFNOSUPPORT = 10047,
			WSAEADDRINUSE = 10048,
			WSAEADDRNOTAVAIL = 10049,
			WSAENETDOWN = 10050,
			WSAENETUNREACH = 10051,
			WSAENETRESET = 10052,
			WSAECONNABORTED = 10053,
			WSAECONNRESET = 10054,
			WSAENOBUFS = 10055,
			WSAEISCONN = 10056,
			WSAENOTCONN = 10057,
			WSAESHUTDOWN = 10058,
			WSAETOOMANYREFS = 10059,
			WSAETIMEDOUT = 10060,
			WSAECONNREFUSED = 10061,
			WSAELOOP = 10062,
			WSAENAMETOOLONG = 10063,
			WSAEHOSTDOWN = 10064,
			WSAEHOSTUNREACH = 10065,
			WSAENOTEMPTY = 10066,
			WSAEPROCLIM = 10067,
			WSAEUSERS = 10068,
			WSAEDQUOT = 10069,
			WSAESTALE = 10070,
			WSAEREMOTE = 10071,
			WSASYSNOTREADY = 10091,
			WSAVERNOTSUPPORTED = 10092,
			WSANOTINITIALISED = 10093,
			WSAEDISCON = 10101,
			WSAENOMORE = 10102,
			WSAECANCELLED = 10103,
			WSAEINVALIDPROCTABLE = 10104,
			WSAEINVALIDPROVIDER = 10105,
			WSAEPROVIDERFAILEDINIT = 10106,
			WSASYSCALLFAILURE = 10107,
			WSASERVICE_NOT_FOUND = 10108,
			WSATYPE_NOT_FOUND = 10109,
			WSA_E_NO_MORE = 10110,
			WSA_E_CANCELLED = 10111,
			WSAEREFUSED = 10112,
			WSAHOST_NOT_FOUND = 11001,
			WSATRY_AGAIN = 11002,
			WSANO_RECOVERY = 11003,
			WSANO_DATA = 11004,
			WSA_QOS_RECEIVERS = 11005,
			WSA_QOS_SENDERS = 11006,
			WSA_QOS_NO_SENDERS = 11007,
			WSA_QOS_NO_RECEIVERS = 11008,
			WSA_QOS_REQUEST_CONFIRMED = 11009,
			WSA_QOS_ADMISSION_FAILURE = 11010,
			WSA_QOS_POLICY_FAILURE = 11011,
			WSA_QOS_BAD_STYLE = 11012,
			WSA_QOS_BAD_OBJECT = 11013,
			WSA_QOS_TRAFFIC_CTRL_ERROR = 11014,
			WSA_QOS_GENERIC_ERROR = 11015,
			WSA_QOS_ESERVICETYPE = 11016,
			WSA_QOS_EFLOWSPEC = 11017,
			WSA_QOS_EPROVSPECBUF = 11018,
			WSA_QOS_EFILTERSTYLE = 11019,
			WSA_QOS_EFILTERTYPE = 11020,
			WSA_QOS_EFILTERCOUNT = 11021,
			WSA_QOS_EOBJLENGTH = 11022,
			WSA_QOS_EFLOWCOUNT = 11023,
			WSA_QOS_EUNKOWNPSOBJ = 11024,
			WSA_QOS_EPOLICYOBJ = 11025,
			WSA_QOS_EFLOWDESC = 11026,
			WSA_QOS_EPSFLOWSPEC = 11027,
			WSA_QOS_EPSFILTERSPEC = 11028,
			WSA_QOS_ESDMODEOBJ = 11029,
			WSA_QOS_ESHAPERATEOBJ = 11030,
			WSA_QOS_RESERVED_PETYPE = 11031,
			WSA_SECURE_HOST_NOT_FOUND = 11032,
			WSA_IPSEC_NAME_POLICY_ERROR = 11033,
		}
		public enum SET_SERVICE_OPERATION : uint32
		{
			REGISTER = 1,
			DEREGISTER = 2,
			FLUSH = 3,
			ADD_TYPE = 4,
			DELETE_TYPE = 5,
		}
		public enum SEND_FLAGS : uint32
		{
			DONTROUTE = 4,
			OOB = 1,
		}
		public enum RESOURCE_DISPLAY_TYPE : uint32
		{
			DOMAIN = 1,
			FILE = 4,
			GENERIC = 0,
			GROUP = 5,
			SERVER = 2,
			SHARE = 3,
			TREE = 10,
		}
		public enum IPPROTO : int32
		{
			HOPOPTS = 0,
			ICMP = 1,
			IGMP = 2,
			GGP = 3,
			IPV4 = 4,
			ST = 5,
			TCP = 6,
			CBT = 7,
			EGP = 8,
			IGP = 9,
			PUP = 12,
			UDP = 17,
			IDP = 22,
			RDP = 27,
			IPV6 = 41,
			ROUTING = 43,
			FRAGMENT = 44,
			ESP = 50,
			AH = 51,
			ICMPV6 = 58,
			NONE = 59,
			DSTOPTS = 60,
			ND = 77,
			ICLFXBM = 78,
			PIM = 103,
			PGM = 113,
			L2TP = 115,
			SCTP = 132,
			RAW = 255,
			MAX = 256,
			RESERVED_RAW = 257,
			RESERVED_IPSEC = 258,
			RESERVED_IPSECOFFLOAD = 259,
			RESERVED_WNV = 260,
			RESERVED_MAX = 261,
		}
		public enum SCOPE_LEVEL : int32
		{
			Interface = 1,
			Link = 2,
			Subnet = 3,
			Admin = 4,
			Site = 5,
			Organization = 8,
			Global = 14,
			Count = 16,
		}
		public enum WSACOMPLETIONTYPE : int32
		{
			IMMEDIATELY = 0,
			HWND = 1,
			EVENT = 2,
			PORT = 3,
			APC = 4,
		}
		public enum WSAECOMPARATOR : int32
		{
			EQUAL = 0,
			NOTLESS = 1,
		}
		public enum WSAESETSERVICEOP : int32
		{
			REGISTER = 0,
			DEREGISTER = 1,
			DELETE = 2,
		}
		public enum PMTUD_STATE : int32
		{
			NOT_SET = 0,
			DO = 1,
			DONT = 2,
			PROBE = 3,
			MAX = 4,
		}
		public enum MULTICAST_MODE_TYPE : int32
		{
			INCLUDE = 0,
			EXCLUDE = 1,
		}
		public enum eWINDOW_ADVANCE_METHOD : int32
		{
			ADVANCE_BY_TIME = 1,
			USE_AS_DATA_CACHE = 2,
		}
		public enum NL_PREFIX_ORIGIN : int32
		{
			Other = 0,
			Manual = 1,
			WellKnown = 2,
			Dhcp = 3,
			RouterAdvertisement = 4,
			Unchanged = 16,
		}
		[AllowDuplicates]
		public enum NL_SUFFIX_ORIGIN : int32
		{
			NlsoOther = 0,
			NlsoManual = 1,
			NlsoWellKnown = 2,
			NlsoDhcp = 3,
			NlsoLinkLayerAddress = 4,
			NlsoRandom = 5,
			IpSuffixOriginOther = 0,
			IpSuffixOriginManual = 1,
			IpSuffixOriginWellKnown = 2,
			IpSuffixOriginDhcp = 3,
			IpSuffixOriginLinkLayerAddress = 4,
			IpSuffixOriginRandom = 5,
			IpSuffixOriginUnchanged = 16,
		}
		[AllowDuplicates]
		public enum NL_DAD_STATE : int32
		{
			NldsInvalid = 0,
			NldsTentative = 1,
			NldsDuplicate = 2,
			NldsDeprecated = 3,
			NldsPreferred = 4,
			IpDadStateInvalid = 0,
			IpDadStateTentative = 1,
			IpDadStateDuplicate = 2,
			IpDadStateDeprecated = 3,
			IpDadStatePreferred = 4,
		}
		[AllowDuplicates]
		public enum NL_ROUTE_PROTOCOL : int32
		{
			RouteProtocolOther = 1,
			RouteProtocolLocal = 2,
			RouteProtocolNetMgmt = 3,
			RouteProtocolIcmp = 4,
			RouteProtocolEgp = 5,
			RouteProtocolGgp = 6,
			RouteProtocolHello = 7,
			RouteProtocolRip = 8,
			RouteProtocolIsIs = 9,
			RouteProtocolEsIs = 10,
			RouteProtocolCisco = 11,
			RouteProtocolBbn = 12,
			RouteProtocolOspf = 13,
			RouteProtocolBgp = 14,
			RouteProtocolIdpr = 15,
			RouteProtocolEigrp = 16,
			RouteProtocolDvmrp = 17,
			RouteProtocolRpl = 18,
			RouteProtocolDhcp = 19,
			MIB_IPPROTO_OTHER = 1,
			PROTO_IP_OTHER = 1,
			MIB_IPPROTO_LOCAL = 2,
			PROTO_IP_LOCAL = 2,
			MIB_IPPROTO_NETMGMT = 3,
			PROTO_IP_NETMGMT = 3,
			MIB_IPPROTO_ICMP = 4,
			PROTO_IP_ICMP = 4,
			MIB_IPPROTO_EGP = 5,
			PROTO_IP_EGP = 5,
			MIB_IPPROTO_GGP = 6,
			PROTO_IP_GGP = 6,
			MIB_IPPROTO_HELLO = 7,
			PROTO_IP_HELLO = 7,
			MIB_IPPROTO_RIP = 8,
			PROTO_IP_RIP = 8,
			MIB_IPPROTO_IS_IS = 9,
			PROTO_IP_IS_IS = 9,
			MIB_IPPROTO_ES_IS = 10,
			PROTO_IP_ES_IS = 10,
			MIB_IPPROTO_CISCO = 11,
			PROTO_IP_CISCO = 11,
			MIB_IPPROTO_BBN = 12,
			PROTO_IP_BBN = 12,
			MIB_IPPROTO_OSPF = 13,
			PROTO_IP_OSPF = 13,
			MIB_IPPROTO_BGP = 14,
			PROTO_IP_BGP = 14,
			MIB_IPPROTO_IDPR = 15,
			PROTO_IP_IDPR = 15,
			MIB_IPPROTO_EIGRP = 16,
			PROTO_IP_EIGRP = 16,
			MIB_IPPROTO_DVMRP = 17,
			PROTO_IP_DVMRP = 17,
			MIB_IPPROTO_RPL = 18,
			PROTO_IP_RPL = 18,
			MIB_IPPROTO_DHCP = 19,
			PROTO_IP_DHCP = 19,
			MIB_IPPROTO_NT_AUTOSTATIC = 10002,
			PROTO_IP_NT_AUTOSTATIC = 10002,
			MIB_IPPROTO_NT_STATIC = 10006,
			PROTO_IP_NT_STATIC = 10006,
			MIB_IPPROTO_NT_STATIC_NON_DOD = 10007,
			PROTO_IP_NT_STATIC_NON_DOD = 10007,
		}
		public enum NL_ADDRESS_TYPE : int32
		{
			Unspecified = 0,
			Unicast = 1,
			Anycast = 2,
			Multicast = 3,
			Broadcast = 4,
			Invalid = 5,
		}
		public enum NL_ROUTE_ORIGIN : int32
		{
			NlroManual = 0,
			NlroWellKnown = 1,
			NlroDHCP = 2,
			NlroRouterAdvertisement = 3,
			Nlro6to4 = 4,
		}
		public enum NL_NEIGHBOR_STATE : int32
		{
			Unreachable = 0,
			Incomplete = 1,
			Probe = 2,
			Delay = 3,
			Stale = 4,
			Reachable = 5,
			Permanent = 6,
			Maximum = 7,
		}
		public enum NL_LINK_LOCAL_ADDRESS_BEHAVIOR : int32
		{
			AlwaysOff = 0,
			Delayed = 1,
			AlwaysOn = 2,
			Unchanged = -1,
		}
		public enum NL_ROUTER_DISCOVERY_BEHAVIOR : int32
		{
			Disabled = 0,
			Enabled = 1,
			Dhcp = 2,
			Unchanged = -1,
		}
		public enum NL_BANDWIDTH_FLAG : int32
		{
			Disabled = 0,
			Enabled = 1,
			Unchanged = -1,
		}
		[AllowDuplicates]
		public enum NL_NETWORK_CATEGORY : int32
		{
			Public = 0,
			Private = 1,
			DomainAuthenticated = 2,
			Unchanged = -1,
			Unknown = -1,
		}
		public enum NL_INTERFACE_NETWORK_CATEGORY_STATE : int32
		{
			CategoryUnknown = 0,
			Public = 1,
			Private = 2,
			DomainAuthenticated = 3,
			CategoryStateMax = 4,
		}
		public enum NL_NETWORK_CONNECTIVITY_LEVEL_HINT : int32
		{
			Unknown = 0,
			None = 1,
			LocalAccess = 2,
			InternetAccess = 3,
			ConstrainedInternetAccess = 4,
			Hidden = 5,
		}
		public enum NL_NETWORK_CONNECTIVITY_COST_HINT : int32
		{
			Unknown = 0,
			Unrestricted = 1,
			Fixed = 2,
			Variable = 3,
		}
		public enum TCPSTATE : int32
		{
			CLOSED = 0,
			LISTEN = 1,
			SYN_SENT = 2,
			SYN_RCVD = 3,
			ESTABLISHED = 4,
			FIN_WAIT_1 = 5,
			FIN_WAIT_2 = 6,
			CLOSE_WAIT = 7,
			CLOSING = 8,
			LAST_ACK = 9,
			TIME_WAIT = 10,
			MAX = 11,
		}
		public enum CONTROL_CHANNEL_TRIGGER_STATUS : int32
		{
			INVALID = 0,
			SOFTWARE_SLOT_ALLOCATED = 1,
			HARDWARE_SLOT_ALLOCATED = 2,
			POLICY_ERROR = 3,
			SYSTEM_ERROR = 4,
			TRANSPORT_DISCONNECTED = 5,
			SERVICE_UNAVAILABLE = 6,
		}
		public enum SOCKET_PRIORITY_HINT : int32
		{
			PriorityHintVeryLow = 0,
			PriorityHintLow = 1,
			PriorityHintNormal = 2,
			MaximumPriorityHintType = 3,
		}
		public enum RCVALL_VALUE : int32
		{
			OFF = 0,
			ON = 1,
			SOCKETLEVELONLY = 2,
			IPLEVEL = 3,
		}
		public enum TCP_ICW_LEVEL : int32
		{
			DEFAULT = 0,
			HIGH = 1,
			VERY_HIGH = 2,
			AGGRESSIVE = 3,
			EXPERIMENTAL = 4,
			COMPAT = 254,
			MAX = 255,
		}
		public enum SOCKET_USAGE_TYPE : int32
		{
			SYSTEM_CRITICAL_SOCKET = 1,
		}
		public enum SOCKET_SECURITY_PROTOCOL : int32
		{
			DEFAULT = 0,
			IPSEC = 1,
			IPSEC2 = 2,
			INVALID = 3,
		}
		public enum WSA_COMPATIBILITY_BEHAVIOR_ID : int32
		{
			All = 0,
			ReceiveBuffering = 1,
			AutoTuning = 2,
		}
		public enum Q2931_IE_TYPE : int32
		{
			AALParameters = 0,
			TrafficDescriptor = 1,
			BroadbandBearerCapability = 2,
			BHLI = 3,
			BLLI = 4,
			CalledPartyNumber = 5,
			CalledPartySubaddress = 6,
			CallingPartyNumber = 7,
			CallingPartySubaddress = 8,
			Cause = 9,
			QOSClass = 10,
			TransitNetworkSelection = 11,
		}
		public enum AAL_TYPE : int32
		{
			_5 = 5,
			USER = 16,
		}
		public enum NAPI_PROVIDER_TYPE : int32
		{
			Application = 1,
			Service = 2,
		}
		public enum NAPI_PROVIDER_LEVEL : int32
		{
			None = 0,
			Secondary = 1,
			Primary = 2,
		}
		public enum NLA_BLOB_DATA_TYPE : int32
		{
			RAW_DATA = 0,
			INTERFACE = 1,
			_802_1X_LOCATION = 2,
			CONNECTIVITY = 3,
			ICS = 4,
		}
		public enum NLA_CONNECTIVITY_TYPE : int32
		{
			AD_HOC = 0,
			MANAGED = 1,
			UNMANAGED = 2,
			UNKNOWN = 3,
		}
		public enum NLA_INTERNET : int32
		{
			UNKNOWN = 0,
			NO = 1,
			YES = 2,
		}
		public enum RIO_NOTIFICATION_COMPLETION_TYPE : int32
		{
			EVENT_COMPLETION = 1,
			IOCP_COMPLETION = 2,
		}
		public enum WSC_PROVIDER_INFO_TYPE : int32
		{
			LspCategories = 0,
			Audit = 1,
		}
		
		// --- Function Pointers ---
		
		public function int32 LPCONDITIONPROC(out WSABUF lpCallerId, out WSABUF lpCallerData, out QOS lpSQOS, out QOS lpGQOS, out WSABUF lpCalleeId, out WSABUF lpCalleeData, out uint32 g, uint dwCallbackData);
		public function void LPWSAOVERLAPPED_COMPLETION_ROUTINE(uint32 dwError, uint32 cbTransferred, out OVERLAPPED lpOverlapped, uint32 dwFlags);
		public function BOOL LPFN_TRANSMITFILE(SOCKET hSocket, HANDLE hFile, uint32 nNumberOfBytesToWrite, uint32 nNumberOfBytesPerSend, OVERLAPPED* lpOverlapped, TRANSMIT_FILE_BUFFERS* lpTransmitBuffers, uint32 dwReserved);
		public function BOOL LPFN_ACCEPTEX(SOCKET sListenSocket, SOCKET sAcceptSocket, void* lpOutputBuffer, uint32 dwReceiveDataLength, uint32 dwLocalAddressLength, uint32 dwRemoteAddressLength, out uint32 lpdwBytesReceived, out OVERLAPPED lpOverlapped);
		public function void LPFN_GETACCEPTEXSOCKADDRS(void* lpOutputBuffer, uint32 dwReceiveDataLength, uint32 dwLocalAddressLength, uint32 dwRemoteAddressLength, out SOCKADDR* LocalSockaddr, out int32 LocalSockaddrLength, out SOCKADDR* RemoteSockaddr, out int32 RemoteSockaddrLength);
		public function BOOL LPFN_TRANSMITPACKETS(SOCKET hSocket, TRANSMIT_PACKETS_ELEMENT* lpPacketArray, uint32 nElementCount, uint32 nSendSize, OVERLAPPED* lpOverlapped, uint32 dwFlags);
		public function BOOL LPFN_CONNECTEX(SOCKET s, in SOCKADDR name, int32 namelen, void* lpSendBuffer, uint32 dwSendDataLength, out uint32 lpdwBytesSent, out OVERLAPPED lpOverlapped);
		public function BOOL LPFN_DISCONNECTEX(SOCKET s, OVERLAPPED* lpOverlapped, uint32 dwFlags, uint32 dwReserved);
		public function int32 LPFN_WSARECVMSG(SOCKET s, out WSAMSG lpMsg, uint32* lpdwNumberOfBytesRecvd, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		public function int32 LPFN_WSASENDMSG(SOCKET s, ref WSAMSG lpMsg, uint32 dwFlags, uint32* lpNumberOfBytesSent, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		public function int32 LPFN_WSAPOLL(out WSAPOLLFD fdarray, uint32 nfds, int32 timeout);
		public function BOOL LPFN_RIORECEIVE(ref RIO_RQ_t SocketQueue, RIO_BUF* pData, uint32 DataBufferCount, uint32 Flags, void* RequestContext);
		public function int32 LPFN_RIORECEIVEEX(ref RIO_RQ_t SocketQueue, RIO_BUF* pData, uint32 DataBufferCount, RIO_BUF* pLocalAddress, RIO_BUF* pRemoteAddress, RIO_BUF* pControlContext, RIO_BUF* pFlags, uint32 Flags, void* RequestContext);
		public function BOOL LPFN_RIOSEND(ref RIO_RQ_t SocketQueue, RIO_BUF* pData, uint32 DataBufferCount, uint32 Flags, void* RequestContext);
		public function BOOL LPFN_RIOSENDEX(ref RIO_RQ_t SocketQueue, RIO_BUF* pData, uint32 DataBufferCount, RIO_BUF* pLocalAddress, RIO_BUF* pRemoteAddress, RIO_BUF* pControlContext, RIO_BUF* pFlags, uint32 Flags, void* RequestContext);
		public function void LPFN_RIOCLOSECOMPLETIONQUEUE(ref RIO_CQ_t CQ);
		public function RIO_CQ_t* LPFN_RIOCREATECOMPLETIONQUEUE(uint32 QueueSize, RIO_NOTIFICATION_COMPLETION* NotificationCompletion);
		public function RIO_RQ_t* LPFN_RIOCREATEREQUESTQUEUE(SOCKET Socket, uint32 MaxOutstandingReceive, uint32 MaxReceiveDataBuffers, uint32 MaxOutstandingSend, uint32 MaxSendDataBuffers, ref RIO_CQ_t ReceiveCQ, ref RIO_CQ_t SendCQ, void* SocketContext);
		public function uint32 LPFN_RIODEQUEUECOMPLETION(ref RIO_CQ_t CQ, RIORESULT* Array, uint32 ArraySize);
		public function void LPFN_RIODEREGISTERBUFFER(ref RIO_BUFFERID_t BufferId);
		public function int32 LPFN_RIONOTIFY(ref RIO_CQ_t CQ);
		public function RIO_BUFFERID_t* LPFN_RIOREGISTERBUFFER(PSTR DataBuffer, uint32 DataLength);
		public function BOOL LPFN_RIORESIZECOMPLETIONQUEUE(ref RIO_CQ_t CQ, uint32 QueueSize);
		public function BOOL LPFN_RIORESIZEREQUESTQUEUE(ref RIO_RQ_t RQ, uint32 MaxOutstandingReceive, uint32 MaxOutstandingSend);
		public function BOOL LPBLOCKINGCALLBACK(uint dwContext);
		public function void LPWSAUSERAPC(uint dwContext);
		public function SOCKET LPWSPACCEPT(SOCKET s, SOCKADDR* addr, int32* addrlen, LPCONDITIONPROC lpfnCondition, uint dwCallbackData, out int32 lpErrno);
		public function int32 LPWSPADDRESSTOSTRING(ref SOCKADDR lpsaAddress, uint32 dwAddressLength, WSAPROTOCOL_INFOW* lpProtocolInfo, char16* lpszAddressString, out uint32 lpdwAddressStringLength, out int32 lpErrno);
		public function int32 LPWSPASYNCSELECT(SOCKET s, HWND hWnd, uint32 wMsg, int32 lEvent, out int32 lpErrno);
		public function int32 LPWSPBIND(SOCKET s, in SOCKADDR name, int32 namelen, out int32 lpErrno);
		public function int32 LPWSPCANCELBLOCKINGCALL(out int32 lpErrno);
		public function int32 LPWSPCLEANUP(out int32 lpErrno);
		public function int32 LPWSPCLOSESOCKET(SOCKET s, out int32 lpErrno);
		public function int32 LPWSPCONNECT(SOCKET s, in SOCKADDR name, int32 namelen, WSABUF* lpCallerData, WSABUF* lpCalleeData, QOS* lpSQOS, QOS* lpGQOS, out int32 lpErrno);
		public function int32 LPWSPDUPLICATESOCKET(SOCKET s, uint32 dwProcessId, out WSAPROTOCOL_INFOW lpProtocolInfo, out int32 lpErrno);
		public function int32 LPWSPENUMNETWORKEVENTS(SOCKET s, HANDLE hEventObject, out WSANETWORKEVENTS lpNetworkEvents, out int32 lpErrno);
		public function int32 LPWSPEVENTSELECT(SOCKET s, HANDLE hEventObject, int32 lNetworkEvents, out int32 lpErrno);
		public function BOOL LPWSPGETOVERLAPPEDRESULT(SOCKET s, ref OVERLAPPED lpOverlapped, out uint32 lpcbTransfer, BOOL fWait, out uint32 lpdwFlags, out int32 lpErrno);
		public function int32 LPWSPGETPEERNAME(SOCKET s, out SOCKADDR name, out int32 namelen, out int32 lpErrno);
		public function int32 LPWSPGETSOCKNAME(SOCKET s, out SOCKADDR name, out int32 namelen, out int32 lpErrno);
		public function int32 LPWSPGETSOCKOPT(SOCKET s, int32 level, int32 optname, PSTR optval, out int32 optlen, out int32 lpErrno);
		public function BOOL LPWSPGETQOSBYNAME(SOCKET s, ref WSABUF lpQOSName, out QOS lpQOS, out int32 lpErrno);
		public function int32 LPWSPIOCTL(SOCKET s, uint32 dwIoControlCode, void* lpvInBuffer, uint32 cbInBuffer, void* lpvOutBuffer, uint32 cbOutBuffer, out uint32 lpcbBytesReturned, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, WSATHREADID* lpThreadId, out int32 lpErrno);
		public function SOCKET LPWSPJOINLEAF(SOCKET s, in SOCKADDR name, int32 namelen, WSABUF* lpCallerData, WSABUF* lpCalleeData, QOS* lpSQOS, QOS* lpGQOS, uint32 dwFlags, out int32 lpErrno);
		public function int32 LPWSPLISTEN(SOCKET s, int32 backlog, out int32 lpErrno);
		public function int32 LPWSPRECV(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesRecvd, out uint32 lpFlags, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, WSATHREADID* lpThreadId, ref int32 lpErrno);
		public function int32 LPWSPRECVDISCONNECT(SOCKET s, WSABUF* lpInboundDisconnectData, out int32 lpErrno);
		public function int32 LPWSPRECVFROM(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesRecvd, out uint32 lpFlags, SOCKADDR* lpFrom, int32* lpFromlen, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, WSATHREADID* lpThreadId, out int32 lpErrno);
		public function int32 LPWSPSELECT(int32 nfds, fd_set* readfds, fd_set* writefds, fd_set* exceptfds, timeval* timeout, out int32 lpErrno);
		public function int32 LPWSPSEND(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesSent, uint32 dwFlags, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, WSATHREADID* lpThreadId, out int32 lpErrno);
		public function int32 LPWSPSENDDISCONNECT(SOCKET s, WSABUF* lpOutboundDisconnectData, out int32 lpErrno);
		public function int32 LPWSPSENDTO(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesSent, uint32 dwFlags, SOCKADDR* lpTo, int32 iTolen, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine, WSATHREADID* lpThreadId, out int32 lpErrno);
		public function int32 LPWSPSETSOCKOPT(SOCKET s, int32 level, int32 optname, PSTR optval, int32 optlen, out int32 lpErrno);
		public function int32 LPWSPSHUTDOWN(SOCKET s, int32 how, out int32 lpErrno);
		public function SOCKET LPWSPSOCKET(int32 af, int32 type, int32 protocol, WSAPROTOCOL_INFOW* lpProtocolInfo, uint32 g, uint32 dwFlags, out int32 lpErrno);
		public function int32 LPWSPSTRINGTOADDRESS(PWSTR AddressString, int32 AddressFamily, WSAPROTOCOL_INFOW* lpProtocolInfo, out SOCKADDR lpAddress, out int32 lpAddressLength, out int32 lpErrno);
		public function BOOL LPWPUCLOSEEVENT(HANDLE hEvent, out int32 lpErrno);
		public function int32 LPWPUCLOSESOCKETHANDLE(SOCKET s, out int32 lpErrno);
		public function HANDLE LPWPUCREATEEVENT(out int32 lpErrno);
		public function SOCKET LPWPUCREATESOCKETHANDLE(uint32 dwCatalogEntryId, uint dwContext, out int32 lpErrno);
		public function int32 LPWPUFDISSET(SOCKET s, ref fd_set fdset);
		public function int32 LPWPUGETPROVIDERPATH(ref Guid lpProviderId, char16* lpszProviderDllPath, out int32 lpProviderDllPathLen, out int32 lpErrno);
		public function SOCKET LPWPUMODIFYIFSHANDLE(uint32 dwCatalogEntryId, SOCKET ProposedHandle, out int32 lpErrno);
		public function BOOL LPWPUPOSTMESSAGE(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
		public function int32 LPWPUQUERYBLOCKINGCALLBACK(uint32 dwCatalogEntryId, out LPBLOCKINGCALLBACK lplpfnCallback, out uint lpdwContext, out int32 lpErrno);
		public function int32 LPWPUQUERYSOCKETHANDLECONTEXT(SOCKET s, out uint lpContext, out int32 lpErrno);
		public function int32 LPWPUQUEUEAPC(ref WSATHREADID lpThreadId, LPWSAUSERAPC lpfnUserApc, uint dwContext, out int32 lpErrno);
		public function BOOL LPWPURESETEVENT(HANDLE hEvent, out int32 lpErrno);
		public function BOOL LPWPUSETEVENT(HANDLE hEvent, out int32 lpErrno);
		public function int32 LPWPUOPENCURRENTTHREAD(out WSATHREADID lpThreadId, out int32 lpErrno);
		public function int32 LPWPUCLOSETHREAD(ref WSATHREADID lpThreadId, out int32 lpErrno);
		public function int32 LPWPUCOMPLETEOVERLAPPEDREQUEST(SOCKET s, out OVERLAPPED lpOverlapped, uint32 dwError, uint32 cbTransferred, out int32 lpErrno);
		public function int32 LPWSPSTARTUP(uint16 wVersionRequested, ref WSPData lpWSPData, ref WSAPROTOCOL_INFOW lpProtocolInfo, WSPUPCALLTABLE UpcallTable, out WSPPROC_TABLE lpProcTable);
		public function int32 LPWSCENUMPROTOCOLS(int32* lpiProtocols, WSAPROTOCOL_INFOW* lpProtocolBuffer, out uint32 lpdwBufferLength, out int32 lpErrno);
		public function int32 LPWSCDEINSTALLPROVIDER(ref Guid lpProviderId, out int32 lpErrno);
		public function int32 LPWSCINSTALLPROVIDER(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		public function int32 LPWSCGETPROVIDERPATH(ref Guid lpProviderId, char16* lpszProviderDllPath, out int32 lpProviderDllPathLen, out int32 lpErrno);
		public function int32 LPWSCUPDATEPROVIDER(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		public function int32 LPWSCINSTALLNAMESPACE(PWSTR lpszIdentifier, PWSTR lpszPathName, uint32 dwNameSpace, uint32 dwVersion, ref Guid lpProviderId);
		public function int32 LPWSCUNINSTALLNAMESPACE(ref Guid lpProviderId);
		public function int32 LPWSCENABLENSPROVIDER(ref Guid lpProviderId, BOOL fEnable);
		public function int32 LPNSPCLEANUP(ref Guid lpProviderId);
		public function int32 LPNSPLOOKUPSERVICEBEGIN(ref Guid lpProviderId, ref WSAQUERYSETW lpqsRestrictions, ref WSASERVICECLASSINFOW lpServiceClassInfo, uint32 dwControlFlags, out HANDLE lphLookup);
		public function int32 LPNSPLOOKUPSERVICENEXT(HANDLE hLookup, uint32 dwControlFlags, out uint32 lpdwBufferLength, out WSAQUERYSETW lpqsResults);
		public function int32 LPNSPIOCTL(HANDLE hLookup, uint32 dwControlCode, void* lpvInBuffer, uint32 cbInBuffer, void* lpvOutBuffer, uint32 cbOutBuffer, out uint32 lpcbBytesReturned, WSACOMPLETION* lpCompletion, ref WSATHREADID lpThreadId);
		public function int32 LPNSPLOOKUPSERVICEEND(HANDLE hLookup);
		public function int32 LPNSPSETSERVICE(ref Guid lpProviderId, ref WSASERVICECLASSINFOW lpServiceClassInfo, ref WSAQUERYSETW lpqsRegInfo, WSAESETSERVICEOP essOperation, uint32 dwControlFlags);
		public function int32 LPNSPINSTALLSERVICECLASS(ref Guid lpProviderId, ref WSASERVICECLASSINFOW lpServiceClassInfo);
		public function int32 LPNSPREMOVESERVICECLASS(ref Guid lpProviderId, ref Guid lpServiceClassId);
		public function int32 LPNSPGETSERVICECLASSINFO(ref Guid lpProviderId, ref uint32 lpdwBufSize, ref WSASERVICECLASSINFOW lpServiceClassInfo);
		public function int32 LPNSPSTARTUP(ref Guid lpProviderId, out NSP_ROUTINE lpnspRoutines);
		public function int32 LPNSPV2STARTUP(ref Guid lpProviderId, void** ppvClientSessionArg);
		public function int32 LPNSPV2CLEANUP(ref Guid lpProviderId, void* pvClientSessionArg);
		public function int32 LPNSPV2LOOKUPSERVICEBEGIN(ref Guid lpProviderId, ref WSAQUERYSET2W lpqsRestrictions, uint32 dwControlFlags, void* lpvClientSessionArg, out HANDLE lphLookup);
		public function void LPNSPV2LOOKUPSERVICENEXTEX(HANDLE hAsyncCall, HANDLE hLookup, uint32 dwControlFlags, ref uint32 lpdwBufferLength, out WSAQUERYSET2W lpqsResults);
		public function int32 LPNSPV2LOOKUPSERVICEEND(HANDLE hLookup);
		public function void LPNSPV2SETSERVICEEX(HANDLE hAsyncCall, ref Guid lpProviderId, ref WSAQUERYSET2W lpqsRegInfo, WSAESETSERVICEOP essOperation, uint32 dwControlFlags, void* lpvClientSessionArg);
		public function void LPNSPV2CLIENTSESSIONRUNDOWN(ref Guid lpProviderId, void* pvClientSessionArg);
		public function uint32 LPFN_NSPAPI();
		public function void LPSERVICE_CALLBACK_PROC(LPARAM lParam, HANDLE hAsyncTaskHandle);
		public function void LPLOOKUPSERVICE_COMPLETION_ROUTINE(uint32 dwError, uint32 dwBytes, ref OVERLAPPED lpOverlapped);
		public function int32 LPWSCWRITEPROVIDERORDER(out uint32 lpwdCatalogEntryId, uint32 dwNumberOfEntries);
		public function int32 LPWSCWRITENAMESPACEORDER(out Guid lpProviderId, uint32 dwNumberOfEntries);
		
		// --- Structs ---
		
		[CRepr]
		public struct RIO_BUFFERID_t {}
		[CRepr]
		public struct RIO_CQ_t {}
		[CRepr]
		public struct RIO_RQ_t {}
		[CRepr]
		public struct IN_ADDR
		{
			public _S_un_e__Union S_un;
			
			[CRepr, Union]
			public struct _S_un_e__Union
			{
				public _S_un_b_e__Struct S_un_b;
				public _S_un_w_e__Struct S_un_w;
				public uint32 S_addr;
				
				[CRepr]
				public struct _S_un_w_e__Struct
				{
					public uint16 s_w1;
					public uint16 s_w2;
				}
				[CRepr]
				public struct _S_un_b_e__Struct
				{
					public uint8 s_b1;
					public uint8 s_b2;
					public uint8 s_b3;
					public uint8 s_b4;
				}
			}
		}
		[CRepr]
		public struct SOCKADDR
		{
			public uint16 sa_family;
			public CHAR[14] sa_data;
		}
		[CRepr]
		public struct SOCKET_ADDRESS
		{
			public SOCKADDR* lpSockaddr;
			public int32 iSockaddrLength;
		}
		[CRepr]
		public struct SOCKET_ADDRESS_LIST
		{
			public int32 iAddressCount;
			public SOCKET_ADDRESS[0] Address;
		}
		[CRepr]
		public struct CSADDR_INFO
		{
			public SOCKET_ADDRESS LocalAddr;
			public SOCKET_ADDRESS RemoteAddr;
			public int32 iSocketType;
			public int32 iProtocol;
		}
		[CRepr]
		public struct SOCKADDR_STORAGE
		{
			public uint16 ss_family;
			public CHAR[6] __ss_pad1;
			public int64 __ss_align;
			public CHAR[112] __ss_pad2;
		}
		[CRepr]
		public struct SOCKADDR_STORAGE_XP
		{
			public int16 ss_family;
			public CHAR[6] __ss_pad1;
			public int64 __ss_align;
			public CHAR[112] __ss_pad2;
		}
		[CRepr]
		public struct SOCKET_PROCESSOR_AFFINITY
		{
			public PROCESSOR_NUMBER Processor;
			public uint16 NumaNodeId;
			public uint16 Reserved;
		}
		[CRepr]
		public struct SCOPE_ID
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 Value;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct SOCKADDR_IN
		{
			public uint16 sin_family;
			public uint16 sin_port;
			public IN_ADDR sin_addr;
			public CHAR[8] sin_zero;
		}
		[CRepr]
		public struct SOCKADDR_DL
		{
			public uint16 sdl_family;
			public uint8[8] sdl_data;
			public uint8[4] sdl_zero;
		}
		[CRepr]
		public struct WSABUF
		{
			public uint32 len;
			public PSTR buf;
		}
		[CRepr]
		public struct WSAMSG
		{
			public SOCKADDR* name;
			public int32 namelen;
			public WSABUF* lpBuffers;
			public uint32 dwBufferCount;
			public WSABUF Control;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct cmsghdr
		{
			public uint cmsg_len;
			public int32 cmsg_level;
			public int32 cmsg_type;
		}
		[CRepr]
		public struct ADDRINFOA
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public ADDRINFOA* ai_next;
		}
		[CRepr]
		public struct addrinfoW
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public addrinfoW* ai_next;
		}
		[CRepr]
		public struct addrinfoexA
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoexA* ai_next;
		}
		[CRepr]
		public struct addrinfoexW
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoexW* ai_next;
		}
		[CRepr]
		public struct addrinfoex2A
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex2A* ai_next;
			public int32 ai_version;
			public PSTR ai_fqdn;
		}
		[CRepr]
		public struct addrinfoex2W
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex2W* ai_next;
			public int32 ai_version;
			public PWSTR ai_fqdn;
		}
		[CRepr]
		public struct addrinfoex3
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex3* ai_next;
			public int32 ai_version;
			public PWSTR ai_fqdn;
			public int32 ai_interfaceindex;
		}
		[CRepr]
		public struct addrinfoex4
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex4* ai_next;
			public int32 ai_version;
			public PWSTR ai_fqdn;
			public int32 ai_interfaceindex;
			public HANDLE ai_resolutionhandle;
		}
		[CRepr]
		public struct addrinfoex5
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex5* ai_next;
			public int32 ai_version;
			public PWSTR ai_fqdn;
			public int32 ai_interfaceindex;
			public HANDLE ai_resolutionhandle;
			public uint32 ai_ttl;
		}
		[CRepr]
		public struct addrinfo_dns_server
		{
			public uint32 ai_servertype;
			public uint64 ai_flags;
			public uint32 ai_addrlen;
			public SOCKADDR* ai_addr;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR ai_template;
			}
		}
		[CRepr]
		public struct addrinfoex6
		{
			public int32 ai_flags;
			public int32 ai_family;
			public int32 ai_socktype;
			public int32 ai_protocol;
			public uint ai_addrlen;
			public PWSTR ai_canonname;
			public SOCKADDR* ai_addr;
			public void* ai_blob;
			public uint ai_bloblen;
			public Guid* ai_provider;
			public addrinfoex5* ai_next;
			public int32 ai_version;
			public PWSTR ai_fqdn;
			public int32 ai_interfaceindex;
			public HANDLE ai_resolutionhandle;
			public uint32 ai_ttl;
			public uint32 ai_numservers;
			public addrinfo_dns_server* ai_servers;
			public uint64 ai_responseflags;
		}
		[CRepr]
		public struct fd_set
		{
			public uint32 fd_count;
			public SOCKET[64] fd_array;
		}
		[CRepr]
		public struct timeval
		{
			public int32 tv_sec;
			public int32 tv_usec;
		}
		[CRepr]
		public struct hostent
		{
			public PSTR h_name;
			public int8** h_aliases;
			public int16 h_addrtype;
			public int16 h_length;
			public int8** h_addr_list;
		}
		[CRepr]
		public struct netent
		{
			public PSTR n_name;
			public int8** n_aliases;
			public int16 n_addrtype;
			public uint32 n_net;
		}
		[CRepr]
		public struct servent
		{
			public PSTR s_name;
			public int8** s_aliases;
			public PSTR s_proto;
			public int16 s_port;
		}
		[CRepr]
		public struct protoent
		{
			public PSTR p_name;
			public int8** p_aliases;
			public int16 p_proto;
		}
		[CRepr]
		public struct WSAData
		{
			public uint16 wVersion;
			public uint16 wHighVersion;
			public uint16 iMaxSockets;
			public uint16 iMaxUdpDg;
			public PSTR lpVendorInfo;
			public CHAR[257] szDescription;
			public CHAR[129] szSystemStatus;
		}
		[CRepr]
		public struct sockproto
		{
			public uint16 sp_family;
			public uint16 sp_protocol;
		}
		[CRepr]
		public struct linger
		{
			public uint16 l_onoff;
			public uint16 l_linger;
		}
		[CRepr]
		public struct WSANETWORKEVENTS
		{
			public int32 lNetworkEvents;
			public int32[10] iErrorCode;
		}
		[CRepr]
		public struct WSAPROTOCOLCHAIN
		{
			public int32 ChainLen;
			public uint32[7] ChainEntries;
		}
		[CRepr]
		public struct WSAPROTOCOL_INFOA
		{
			public uint32 dwServiceFlags1;
			public uint32 dwServiceFlags2;
			public uint32 dwServiceFlags3;
			public uint32 dwServiceFlags4;
			public uint32 dwProviderFlags;
			public Guid ProviderId;
			public uint32 dwCatalogEntryId;
			public WSAPROTOCOLCHAIN ProtocolChain;
			public int32 iVersion;
			public int32 iAddressFamily;
			public int32 iMaxSockAddr;
			public int32 iMinSockAddr;
			public int32 iSocketType;
			public int32 iProtocol;
			public int32 iProtocolMaxOffset;
			public int32 iNetworkByteOrder;
			public int32 iSecurityScheme;
			public uint32 dwMessageSize;
			public uint32 dwProviderReserved;
			public CHAR[256] szProtocol;
		}
		[CRepr]
		public struct WSAPROTOCOL_INFOW
		{
			public uint32 dwServiceFlags1;
			public uint32 dwServiceFlags2;
			public uint32 dwServiceFlags3;
			public uint32 dwServiceFlags4;
			public uint32 dwProviderFlags;
			public Guid ProviderId;
			public uint32 dwCatalogEntryId;
			public WSAPROTOCOLCHAIN ProtocolChain;
			public int32 iVersion;
			public int32 iAddressFamily;
			public int32 iMaxSockAddr;
			public int32 iMinSockAddr;
			public int32 iSocketType;
			public int32 iProtocol;
			public int32 iProtocolMaxOffset;
			public int32 iNetworkByteOrder;
			public int32 iSecurityScheme;
			public uint32 dwMessageSize;
			public uint32 dwProviderReserved;
			public char16[256] szProtocol;
		}
		[CRepr]
		public struct WSACOMPLETION
		{
			public WSACOMPLETIONTYPE Type;
			public _Parameters_e__Union Parameters;
			
			[CRepr, Union]
			public struct _Parameters_e__Union
			{
				public _WindowMessage_e__Struct WindowMessage;
				public _Event_e__Struct Event;
				public _Apc_e__Struct Apc;
				public _Port_e__Struct Port;
				
				[CRepr]
				public struct _Port_e__Struct
				{
					public OVERLAPPED* lpOverlapped;
					public HANDLE hPort;
					public uint Key;
				}
				[CRepr]
				public struct _Event_e__Struct
				{
					public OVERLAPPED* lpOverlapped;
				}
				[CRepr]
				public struct _WindowMessage_e__Struct
				{
					public HWND hWnd;
					public uint32 uMsg;
					public WPARAM context;
				}
				[CRepr]
				public struct _Apc_e__Struct
				{
					public OVERLAPPED* lpOverlapped;
					public LPWSAOVERLAPPED_COMPLETION_ROUTINE lpfnCompletionProc;
				}
			}
		}
		[CRepr]
		public struct AFPROTOCOLS
		{
			public int32 iAddressFamily;
			public int32 iProtocol;
		}
		[CRepr]
		public struct WSAVERSION
		{
			public uint32 dwVersion;
			public WSAECOMPARATOR ecHow;
		}
		[CRepr]
		public struct WSAQUERYSETA
		{
			public uint32 dwSize;
			public PSTR lpszServiceInstanceName;
			public Guid* lpServiceClassId;
			public WSAVERSION* lpVersion;
			public PSTR lpszComment;
			public uint32 dwNameSpace;
			public Guid* lpNSProviderId;
			public PSTR lpszContext;
			public uint32 dwNumberOfProtocols;
			public AFPROTOCOLS* lpafpProtocols;
			public PSTR lpszQueryString;
			public uint32 dwNumberOfCsAddrs;
			public CSADDR_INFO* lpcsaBuffer;
			public uint32 dwOutputFlags;
			public BLOB* lpBlob;
		}
		[CRepr]
		public struct WSAQUERYSETW
		{
			public uint32 dwSize;
			public PWSTR lpszServiceInstanceName;
			public Guid* lpServiceClassId;
			public WSAVERSION* lpVersion;
			public PWSTR lpszComment;
			public uint32 dwNameSpace;
			public Guid* lpNSProviderId;
			public PWSTR lpszContext;
			public uint32 dwNumberOfProtocols;
			public AFPROTOCOLS* lpafpProtocols;
			public PWSTR lpszQueryString;
			public uint32 dwNumberOfCsAddrs;
			public CSADDR_INFO* lpcsaBuffer;
			public uint32 dwOutputFlags;
			public BLOB* lpBlob;
		}
		[CRepr]
		public struct WSAQUERYSET2A
		{
			public uint32 dwSize;
			public PSTR lpszServiceInstanceName;
			public WSAVERSION* lpVersion;
			public PSTR lpszComment;
			public uint32 dwNameSpace;
			public Guid* lpNSProviderId;
			public PSTR lpszContext;
			public uint32 dwNumberOfProtocols;
			public AFPROTOCOLS* lpafpProtocols;
			public PSTR lpszQueryString;
			public uint32 dwNumberOfCsAddrs;
			public CSADDR_INFO* lpcsaBuffer;
			public uint32 dwOutputFlags;
			public BLOB* lpBlob;
		}
		[CRepr]
		public struct WSAQUERYSET2W
		{
			public uint32 dwSize;
			public PWSTR lpszServiceInstanceName;
			public WSAVERSION* lpVersion;
			public PWSTR lpszComment;
			public uint32 dwNameSpace;
			public Guid* lpNSProviderId;
			public PWSTR lpszContext;
			public uint32 dwNumberOfProtocols;
			public AFPROTOCOLS* lpafpProtocols;
			public PWSTR lpszQueryString;
			public uint32 dwNumberOfCsAddrs;
			public CSADDR_INFO* lpcsaBuffer;
			public uint32 dwOutputFlags;
			public BLOB* lpBlob;
		}
		[CRepr]
		public struct WSANSCLASSINFOA
		{
			public PSTR lpszName;
			public uint32 dwNameSpace;
			public uint32 dwValueType;
			public uint32 dwValueSize;
			public void* lpValue;
		}
		[CRepr]
		public struct WSANSCLASSINFOW
		{
			public PWSTR lpszName;
			public uint32 dwNameSpace;
			public uint32 dwValueType;
			public uint32 dwValueSize;
			public void* lpValue;
		}
		[CRepr]
		public struct WSASERVICECLASSINFOA
		{
			public Guid* lpServiceClassId;
			public PSTR lpszServiceClassName;
			public uint32 dwCount;
			public WSANSCLASSINFOA* lpClassInfos;
		}
		[CRepr]
		public struct WSASERVICECLASSINFOW
		{
			public Guid* lpServiceClassId;
			public PWSTR lpszServiceClassName;
			public uint32 dwCount;
			public WSANSCLASSINFOW* lpClassInfos;
		}
		[CRepr]
		public struct WSANAMESPACE_INFOA
		{
			public Guid NSProviderId;
			public uint32 dwNameSpace;
			public BOOL fActive;
			public uint32 dwVersion;
			public PSTR lpszIdentifier;
		}
		[CRepr]
		public struct WSANAMESPACE_INFOW
		{
			public Guid NSProviderId;
			public uint32 dwNameSpace;
			public BOOL fActive;
			public uint32 dwVersion;
			public PWSTR lpszIdentifier;
		}
		[CRepr]
		public struct WSANAMESPACE_INFOEXA
		{
			public Guid NSProviderId;
			public uint32 dwNameSpace;
			public BOOL fActive;
			public uint32 dwVersion;
			public PSTR lpszIdentifier;
			public BLOB ProviderSpecific;
		}
		[CRepr]
		public struct WSANAMESPACE_INFOEXW
		{
			public Guid NSProviderId;
			public uint32 dwNameSpace;
			public BOOL fActive;
			public uint32 dwVersion;
			public PWSTR lpszIdentifier;
			public BLOB ProviderSpecific;
		}
		[CRepr]
		public struct WSAPOLLFD
		{
			public SOCKET fd;
			public int16 events;
			public int16 revents;
		}
		[CRepr]
		public struct SOCK_NOTIFY_REGISTRATION
		{
			public SOCKET socket;
			public void* completionKey;
			public uint16 eventFilter;
			public uint8 operation;
			public uint8 triggerFlags;
			public uint32 registrationResult;
		}
		[CRepr]
		public struct IN6_ADDR
		{
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public uint8[16] Byte;
				public uint16[8] Word;
			}
		}
		[CRepr]
		public struct sockaddr_in6_old
		{
			public int16 sin6_family;
			public uint16 sin6_port;
			public uint32 sin6_flowinfo;
			public IN6_ADDR sin6_addr;
		}
		[CRepr, Union]
		public struct sockaddr_gen
		{
			public SOCKADDR Address;
			public SOCKADDR_IN AddressIn;
			public sockaddr_in6_old AddressIn6;
		}
		[CRepr]
		public struct INTERFACE_INFO
		{
			public uint32 iiFlags;
			public sockaddr_gen iiAddress;
			public sockaddr_gen iiBroadcastAddress;
			public sockaddr_gen iiNetmask;
		}
		[CRepr]
		public struct INTERFACE_INFO_EX
		{
			public uint32 iiFlags;
			public SOCKET_ADDRESS iiAddress;
			public SOCKET_ADDRESS iiBroadcastAddress;
			public SOCKET_ADDRESS iiNetmask;
		}
		[CRepr]
		public struct SOCKADDR_IN6
		{
			public uint16 sin6_family;
			public uint16 sin6_port;
			public uint32 sin6_flowinfo;
			public IN6_ADDR sin6_addr;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 sin6_scope_id;
				public SCOPE_ID sin6_scope_struct;
			}
		}
		[CRepr]
		public struct SOCKADDR_IN6_W2KSP1
		{
			public int16 sin6_family;
			public uint16 sin6_port;
			public uint32 sin6_flowinfo;
			public IN6_ADDR sin6_addr;
			public uint32 sin6_scope_id;
		}
		[CRepr, Union]
		public struct SOCKADDR_INET
		{
			public SOCKADDR_IN Ipv4;
			public SOCKADDR_IN6 Ipv6;
			public uint16 si_family;
		}
		[CRepr]
		public struct SOCKADDR_IN6_PAIR
		{
			public SOCKADDR_IN6* SourceAddress;
			public SOCKADDR_IN6* DestinationAddress;
		}
		[CRepr]
		public struct IP_MREQ
		{
			public IN_ADDR imr_multiaddr;
			public IN_ADDR imr_interface;
		}
		[CRepr]
		public struct IP_MREQ_SOURCE
		{
			public IN_ADDR imr_multiaddr;
			public IN_ADDR imr_sourceaddr;
			public IN_ADDR imr_interface;
		}
		[CRepr]
		public struct IP_MSFILTER
		{
			public IN_ADDR imsf_multiaddr;
			public IN_ADDR imsf_interface;
			public MULTICAST_MODE_TYPE imsf_fmode;
			public uint32 imsf_numsrc;
			public IN_ADDR[0] imsf_slist;
		}
		[CRepr]
		public struct IPV6_MREQ
		{
			public IN6_ADDR ipv6mr_multiaddr;
			public uint32 ipv6mr_interface;
		}
		[CRepr]
		public struct GROUP_REQ
		{
			public uint32 gr_interface;
			public SOCKADDR_STORAGE gr_group;
		}
		[CRepr]
		public struct GROUP_SOURCE_REQ
		{
			public uint32 gsr_interface;
			public SOCKADDR_STORAGE gsr_group;
			public SOCKADDR_STORAGE gsr_source;
		}
		[CRepr]
		public struct GROUP_FILTER
		{
			public uint32 gf_interface;
			public SOCKADDR_STORAGE gf_group;
			public MULTICAST_MODE_TYPE gf_fmode;
			public uint32 gf_numsrc;
			public SOCKADDR_STORAGE[0] gf_slist;
		}
		[CRepr]
		public struct IN_PKTINFO
		{
			public IN_ADDR ipi_addr;
			public uint32 ipi_ifindex;
		}
		[CRepr]
		public struct IN6_PKTINFO
		{
			public IN6_ADDR ipi6_addr;
			public uint32 ipi6_ifindex;
		}
		[CRepr]
		public struct IN_PKTINFO_EX
		{
			public IN_PKTINFO pkt_info;
			public SCOPE_ID scope_id;
		}
		[CRepr]
		public struct in6_pktinfo_ex
		{
			public IN6_PKTINFO pkt_info;
			public SCOPE_ID scope_id;
		}
		[CRepr]
		public struct IN_RECVERR
		{
			public IPPROTO protocol;
			public uint32 info;
			public uint8 type;
			public uint8 code;
		}
		[CRepr]
		public struct ICMP_ERROR_INFO
		{
			public SOCKADDR_INET srcaddress;
			public IPPROTO protocol;
			public uint8 type;
			public uint8 code;
		}
		[CRepr]
		public struct RM_SEND_WINDOW
		{
			public uint32 RateKbitsPerSec;
			public uint32 WindowSizeInMSecs;
			public uint32 WindowSizeInBytes;
		}
		[CRepr]
		public struct RM_SENDER_STATS
		{
			public uint64 DataBytesSent;
			public uint64 TotalBytesSent;
			public uint64 NaksReceived;
			public uint64 NaksReceivedTooLate;
			public uint64 NumOutstandingNaks;
			public uint64 NumNaksAfterRData;
			public uint64 RepairPacketsSent;
			public uint64 BufferSpaceAvailable;
			public uint64 TrailingEdgeSeqId;
			public uint64 LeadingEdgeSeqId;
			public uint64 RateKBitsPerSecOverall;
			public uint64 RateKBitsPerSecLast;
			public uint64 TotalODataPacketsSent;
		}
		[CRepr]
		public struct RM_RECEIVER_STATS
		{
			public uint64 NumODataPacketsReceived;
			public uint64 NumRDataPacketsReceived;
			public uint64 NumDuplicateDataPackets;
			public uint64 DataBytesReceived;
			public uint64 TotalBytesReceived;
			public uint64 RateKBitsPerSecOverall;
			public uint64 RateKBitsPerSecLast;
			public uint64 TrailingEdgeSeqId;
			public uint64 LeadingEdgeSeqId;
			public uint64 AverageSequencesInWindow;
			public uint64 MinSequencesInWindow;
			public uint64 MaxSequencesInWindow;
			public uint64 FirstNakSequenceNumber;
			public uint64 NumPendingNaks;
			public uint64 NumOutstandingNaks;
			public uint64 NumDataPacketsBuffered;
			public uint64 TotalSelectiveNaksSent;
			public uint64 TotalParityNaksSent;
		}
		[CRepr]
		public struct RM_FEC_INFO
		{
			public uint16 FECBlockSize;
			public uint16 FECProActivePackets;
			public uint8 FECGroupSize;
			public BOOLEAN fFECOnDemandParityEnabled;
		}
		[CRepr]
		public struct IPX_ADDRESS_DATA
		{
			public int32 adapternum;
			public uint8[4] netnum;
			public uint8[6] nodenum;
			public BOOLEAN wan;
			public BOOLEAN status;
			public int32 maxpkt;
			public uint32 linkspeed;
		}
		[CRepr]
		public struct IPX_NETNUM_DATA
		{
			public uint8[4] netnum;
			public uint16 hopcount;
			public uint16 netdelay;
			public int32 cardnum;
			public uint8[6] router;
		}
		[CRepr]
		public struct IPX_SPXCONNSTATUS_DATA
		{
			public uint8 ConnectionState;
			public uint8 WatchDogActive;
			public uint16 LocalConnectionId;
			public uint16 RemoteConnectionId;
			public uint16 LocalSequenceNumber;
			public uint16 LocalAckNumber;
			public uint16 LocalAllocNumber;
			public uint16 RemoteAckNumber;
			public uint16 RemoteAllocNumber;
			public uint16 LocalSocket;
			public uint8[6] ImmediateAddress;
			public uint8[4] RemoteNetwork;
			public uint8[6] RemoteNode;
			public uint16 RemoteSocket;
			public uint16 RetransmissionCount;
			public uint16 EstimatedRoundTripDelay;
			public uint16 RetransmittedPackets;
			public uint16 SuppressedPacket;
		}
		[CRepr]
		public struct LM_IRPARMS
		{
			public uint32 nTXDataBytes;
			public uint32 nRXDataBytes;
			public uint32 nBaudRate;
			public uint32 thresholdTime;
			public uint32 discTime;
			public uint16 nMSLinkTurn;
			public uint8 nTXPackets;
			public uint8 nRXPackets;
		}
		[CRepr]
		public struct SOCKADDR_IRDA
		{
			public uint16 irdaAddressFamily;
			public uint8[4] irdaDeviceID;
			public CHAR[25] irdaServiceName;
		}
		[CRepr]
		public struct WINDOWS_IRDA_DEVICE_INFO
		{
			public uint8[4] irdaDeviceID;
			public CHAR[22] irdaDeviceName;
			public uint8 irdaDeviceHints1;
			public uint8 irdaDeviceHints2;
			public uint8 irdaCharSet;
		}
		[CRepr]
		public struct WCE_IRDA_DEVICE_INFO
		{
			public uint8[4] irdaDeviceID;
			public CHAR[22] irdaDeviceName;
			public uint8[2] Reserved;
		}
		[CRepr]
		public struct WINDOWS_DEVICELIST
		{
			public uint32 numDevice;
			public WINDOWS_IRDA_DEVICE_INFO[0] Device;
		}
		[CRepr]
		public struct WCE_DEVICELIST
		{
			public uint32 numDevice;
			public WCE_IRDA_DEVICE_INFO[0] Device;
		}
		[CRepr]
		public struct WINDOWS_IAS_SET
		{
			public CHAR[64] irdaClassName;
			public CHAR[256] irdaAttribName;
			public uint32 irdaAttribType;
			public _irdaAttribute_e__Union irdaAttribute;
			
			[CRepr, Union]
			public struct _irdaAttribute_e__Union
			{
				public int32 irdaAttribInt;
				public _irdaAttribOctetSeq_e__Struct irdaAttribOctetSeq;
				public _irdaAttribUsrStr_e__Struct irdaAttribUsrStr;
				
				[CRepr]
				public struct _irdaAttribOctetSeq_e__Struct
				{
					public uint16 Len;
					public uint8[1024] OctetSeq;
				}
				[CRepr]
				public struct _irdaAttribUsrStr_e__Struct
				{
					public uint8 Len;
					public uint8 CharSet;
					public uint8[256] UsrStr;
				}
			}
		}
		[CRepr]
		public struct WINDOWS_IAS_QUERY
		{
			public uint8[4] irdaDeviceID;
			public CHAR[64] irdaClassName;
			public CHAR[256] irdaAttribName;
			public uint32 irdaAttribType;
			public _irdaAttribute_e__Union irdaAttribute;
			
			[CRepr, Union]
			public struct _irdaAttribute_e__Union
			{
				public int32 irdaAttribInt;
				public _irdaAttribOctetSeq_e__Struct irdaAttribOctetSeq;
				public _irdaAttribUsrStr_e__Struct irdaAttribUsrStr;
				
				[CRepr]
				public struct _irdaAttribOctetSeq_e__Struct
				{
					public uint32 Len;
					public uint8[1024] OctetSeq;
				}
				[CRepr]
				public struct _irdaAttribUsrStr_e__Struct
				{
					public uint32 Len;
					public uint32 CharSet;
					public uint8[256] UsrStr;
				}
			}
		}
		[CRepr]
		public struct NL_INTERFACE_OFFLOAD_ROD
		{
			public uint8 _bitfield;
		}
		[CRepr]
		public struct NL_PATH_BANDWIDTH_ROD
		{
			public uint64 Bandwidth;
			public uint64 Instability;
			public BOOLEAN BandwidthPeaked;
		}
		[CRepr]
		public struct NL_NETWORK_CONNECTIVITY_HINT
		{
			public NL_NETWORK_CONNECTIVITY_LEVEL_HINT ConnectivityLevel;
			public NL_NETWORK_CONNECTIVITY_COST_HINT ConnectivityCost;
			public BOOLEAN ApproachingDataLimit;
			public BOOLEAN OverDataLimit;
			public BOOLEAN Roaming;
		}
		[CRepr]
		public struct NL_BANDWIDTH_INFORMATION
		{
			public uint64 Bandwidth;
			public uint64 Instability;
			public BOOLEAN BandwidthPeaked;
		}
		[CRepr]
		public struct TRANSPORT_SETTING_ID
		{
			public Guid Guid;
		}
		[CRepr]
		public struct tcp_keepalive
		{
			public uint32 onoff;
			public uint32 keepalivetime;
			public uint32 keepaliveinterval;
		}
		[CRepr]
		public struct REAL_TIME_NOTIFICATION_SETTING_INPUT
		{
			public TRANSPORT_SETTING_ID TransportSettingId;
			public Guid BrokerEventGuid;
		}
		[CRepr]
		public struct REAL_TIME_NOTIFICATION_SETTING_INPUT_EX
		{
			public TRANSPORT_SETTING_ID TransportSettingId;
			public Guid BrokerEventGuid;
			public BOOLEAN Unmark;
		}
		[CRepr]
		public struct REAL_TIME_NOTIFICATION_SETTING_OUTPUT
		{
			public CONTROL_CHANNEL_TRIGGER_STATUS ChannelStatus;
		}
		[CRepr]
		public struct ASSOCIATE_NAMERES_CONTEXT_INPUT
		{
			public TRANSPORT_SETTING_ID TransportSettingId;
			public uint64 Handle;
		}
		[CRepr]
		public struct TIMESTAMPING_CONFIG
		{
			public uint32 Flags;
			public uint16 TxTimestampsBuffered;
		}
		[CRepr]
		public struct PRIORITY_STATUS
		{
			public SOCKET_PRIORITY_HINT Sender;
			public SOCKET_PRIORITY_HINT Receiver;
		}
		[CRepr]
		public struct RCVALL_IF
		{
			public RCVALL_VALUE Mode;
			public uint32 Interface;
		}
		[CRepr]
		public struct TCP_INITIAL_RTO_PARAMETERS
		{
			public uint16 Rtt;
			public uint8 MaxSynRetransmissions;
		}
		[CRepr]
		public struct TCP_ICW_PARAMETERS
		{
			public TCP_ICW_LEVEL Level;
		}
		[CRepr]
		public struct TCP_ACK_FREQUENCY_PARAMETERS
		{
			public uint8 TcpDelayedAckFrequency;
		}
		[CRepr]
		public struct TCP_INFO_v0
		{
			public TCPSTATE State;
			public uint32 Mss;
			public uint64 ConnectionTimeMs;
			public BOOLEAN TimestampsEnabled;
			public uint32 RttUs;
			public uint32 MinRttUs;
			public uint32 BytesInFlight;
			public uint32 Cwnd;
			public uint32 SndWnd;
			public uint32 RcvWnd;
			public uint32 RcvBuf;
			public uint64 BytesOut;
			public uint64 BytesIn;
			public uint32 BytesReordered;
			public uint32 BytesRetrans;
			public uint32 FastRetrans;
			public uint32 DupAcksIn;
			public uint32 TimeoutEpisodes;
			public uint8 SynRetrans;
		}
		[CRepr]
		public struct TCP_INFO_v1
		{
			public TCPSTATE State;
			public uint32 Mss;
			public uint64 ConnectionTimeMs;
			public BOOLEAN TimestampsEnabled;
			public uint32 RttUs;
			public uint32 MinRttUs;
			public uint32 BytesInFlight;
			public uint32 Cwnd;
			public uint32 SndWnd;
			public uint32 RcvWnd;
			public uint32 RcvBuf;
			public uint64 BytesOut;
			public uint64 BytesIn;
			public uint32 BytesReordered;
			public uint32 BytesRetrans;
			public uint32 FastRetrans;
			public uint32 DupAcksIn;
			public uint32 TimeoutEpisodes;
			public uint8 SynRetrans;
			public uint32 SndLimTransRwin;
			public uint32 SndLimTimeRwin;
			public uint64 SndLimBytesRwin;
			public uint32 SndLimTransCwnd;
			public uint32 SndLimTimeCwnd;
			public uint64 SndLimBytesCwnd;
			public uint32 SndLimTransSnd;
			public uint32 SndLimTimeSnd;
			public uint64 SndLimBytesSnd;
		}
		[CRepr]
		public struct INET_PORT_RANGE
		{
			public uint16 StartPort;
			public uint16 NumberOfPorts;
		}
		[CRepr]
		public struct INET_PORT_RESERVATION_TOKEN
		{
			public uint64 Token;
		}
		[CRepr]
		public struct INET_PORT_RESERVATION_INSTANCE
		{
			public INET_PORT_RANGE Reservation;
			public INET_PORT_RESERVATION_TOKEN Token;
		}
		[CRepr]
		public struct INET_PORT_RESERVATION_INFORMATION
		{
			public uint32 OwningPid;
		}
		[CRepr]
		public struct SOCKET_SECURITY_SETTINGS
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public uint32 SecurityFlags;
		}
		[CRepr]
		public struct SOCKET_SECURITY_SETTINGS_IPSEC
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public uint32 SecurityFlags;
			public uint32 IpsecFlags;
			public Guid AuthipMMPolicyKey;
			public Guid AuthipQMPolicyKey;
			public Guid Reserved;
			public uint64 Reserved2;
			public uint32 UserNameStringLen;
			public uint32 DomainNameStringLen;
			public uint32 PasswordStringLen;
			public char16[0] AllStrings;
		}
		[CRepr]
		public struct SOCKET_PEER_TARGET_NAME
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public SOCKADDR_STORAGE PeerAddress;
			public uint32 PeerTargetNameStringLen;
			public char16[0] AllStrings;
		}
		[CRepr]
		public struct SOCKET_SECURITY_QUERY_TEMPLATE
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public SOCKADDR_STORAGE PeerAddress;
			public uint32 PeerTokenAccessMask;
		}
		[CRepr]
		public struct SOCKET_SECURITY_QUERY_TEMPLATE_IPSEC2
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public SOCKADDR_STORAGE PeerAddress;
			public uint32 PeerTokenAccessMask;
			public uint32 Flags;
			public uint32 FieldMask;
		}
		[CRepr]
		public struct SOCKET_SECURITY_QUERY_INFO
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public uint32 Flags;
			public uint64 PeerApplicationAccessTokenHandle;
			public uint64 PeerMachineAccessTokenHandle;
		}
		[CRepr]
		public struct SOCKET_SECURITY_QUERY_INFO_IPSEC2
		{
			public SOCKET_SECURITY_PROTOCOL SecurityProtocol;
			public uint32 Flags;
			public uint64 PeerApplicationAccessTokenHandle;
			public uint64 PeerMachineAccessTokenHandle;
			public uint64 MmSaId;
			public uint64 QmSaId;
			public uint32 NegotiationWinerr;
			public Guid SaLookupContext;
		}
		[CRepr]
		public struct RSS_SCALABILITY_INFO
		{
			public BOOLEAN RssEnabled;
		}
		[CRepr]
		public struct WSA_COMPATIBILITY_MODE
		{
			public WSA_COMPATIBILITY_BEHAVIOR_ID BehaviorId;
			public uint32 TargetOsVersion;
		}
		[CRepr]
		public struct RIORESULT
		{
			public int32 Status;
			public uint32 BytesTransferred;
			public uint64 SocketContext;
			public uint64 RequestContext;
		}
		[CRepr]
		public struct RIO_BUF
		{
			public RIO_BUFFERID_t* BufferId;
			public uint32 Offset;
			public uint32 Length;
		}
		[CRepr]
		public struct RIO_CMSG_BUFFER
		{
			public uint32 TotalLength;
		}
		[CRepr]
		public struct ATM_ADDRESS
		{
			public uint32 AddressType;
			public uint32 NumofDigits;
			public uint8[20] Addr;
		}
		[CRepr]
		public struct ATM_BLLI
		{
			public uint32 Layer2Protocol;
			public uint32 Layer2UserSpecifiedProtocol;
			public uint32 Layer3Protocol;
			public uint32 Layer3UserSpecifiedProtocol;
			public uint32 Layer3IPI;
			public uint8[5] SnapID;
		}
		[CRepr]
		public struct ATM_BHLI
		{
			public uint32 HighLayerInfoType;
			public uint32 HighLayerInfoLength;
			public uint8[8] HighLayerInfo;
		}
		[CRepr]
		public struct sockaddr_atm
		{
			public uint16 satm_family;
			public ATM_ADDRESS satm_number;
			public ATM_BLLI satm_blli;
			public ATM_BHLI satm_bhli;
		}
		[CRepr]
		public struct Q2931_IE
		{
			public Q2931_IE_TYPE IEType;
			public uint32 IELength;
			public uint8[0] IE;
		}
		[CRepr]
		public struct AAL5_PARAMETERS
		{
			public uint32 ForwardMaxCPCSSDUSize;
			public uint32 BackwardMaxCPCSSDUSize;
			public uint8 Mode;
			public uint8 SSCSType;
		}
		[CRepr]
		public struct AALUSER_PARAMETERS
		{
			public uint32 UserDefined;
		}
		[CRepr]
		public struct AAL_PARAMETERS_IE
		{
			public AAL_TYPE AALType;
			public _AALSpecificParameters_e__Union AALSpecificParameters;
			
			[CRepr, Union]
			public struct _AALSpecificParameters_e__Union
			{
				public AAL5_PARAMETERS AAL5Parameters;
				public AALUSER_PARAMETERS AALUserParameters;
			}
		}
		[CRepr]
		public struct ATM_TD
		{
			public uint32 PeakCellRate_CLP0;
			public uint32 PeakCellRate_CLP01;
			public uint32 SustainableCellRate_CLP0;
			public uint32 SustainableCellRate_CLP01;
			public uint32 MaxBurstSize_CLP0;
			public uint32 MaxBurstSize_CLP01;
			public BOOL Tagging;
		}
		[CRepr]
		public struct ATM_TRAFFIC_DESCRIPTOR_IE
		{
			public ATM_TD Forward;
			public ATM_TD Backward;
			public BOOL BestEffort;
		}
		[CRepr]
		public struct ATM_BROADBAND_BEARER_CAPABILITY_IE
		{
			public uint8 BearerClass;
			public uint8 TrafficType;
			public uint8 TimingRequirements;
			public uint8 ClippingSusceptability;
			public uint8 UserPlaneConnectionConfig;
		}
		[CRepr]
		public struct ATM_BLLI_IE
		{
			public uint32 Layer2Protocol;
			public uint8 Layer2Mode;
			public uint8 Layer2WindowSize;
			public uint32 Layer2UserSpecifiedProtocol;
			public uint32 Layer3Protocol;
			public uint8 Layer3Mode;
			public uint8 Layer3DefaultPacketSize;
			public uint8 Layer3PacketWindowSize;
			public uint32 Layer3UserSpecifiedProtocol;
			public uint32 Layer3IPI;
			public uint8[5] SnapID;
		}
		[CRepr]
		public struct ATM_CALLING_PARTY_NUMBER_IE
		{
			public ATM_ADDRESS ATM_Number;
			public uint8 Presentation_Indication;
			public uint8 Screening_Indicator;
		}
		[CRepr]
		public struct ATM_CAUSE_IE
		{
			public uint8 Location;
			public uint8 Cause;
			public uint8 DiagnosticsLength;
			public uint8[4] Diagnostics;
		}
		[CRepr]
		public struct ATM_QOS_CLASS_IE
		{
			public uint8 QOSClassForward;
			public uint8 QOSClassBackward;
		}
		[CRepr]
		public struct ATM_TRANSIT_NETWORK_SELECTION_IE
		{
			public uint8 TypeOfNetworkId;
			public uint8 NetworkIdPlan;
			public uint8 NetworkIdLength;
			public uint8[0] NetworkId;
		}
		[CRepr]
		public struct ATM_CONNECTION_ID
		{
			public uint32 DeviceNumber;
			public uint32 VPI;
			public uint32 VCI;
		}
		[CRepr, Packed(4)]
		public struct ATM_PVC_PARAMS
		{
			public ATM_CONNECTION_ID PvcConnectionId;
			public QOS PvcQos;
		}
		[CRepr]
		public struct NAPI_DOMAIN_DESCRIPTION_BLOB
		{
			public uint32 AuthLevel;
			public uint32 cchDomainName;
			public uint32 OffsetNextDomainDescription;
			public uint32 OffsetThisDomainName;
		}
		[CRepr]
		public struct NAPI_PROVIDER_INSTALLATION_BLOB
		{
			public uint32 dwVersion;
			public uint32 dwProviderType;
			public uint32 fSupportsWildCard;
			public uint32 cDomains;
			public uint32 OffsetFirstDomain;
		}
		[CRepr]
		public struct TRANSMIT_FILE_BUFFERS
		{
			public void* Head;
			public uint32 HeadLength;
			public void* Tail;
			public uint32 TailLength;
		}
		[CRepr]
		public struct TRANSMIT_PACKETS_ELEMENT
		{
			public uint32 dwElFlags;
			public uint32 cLength;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public void* pBuffer;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public LARGE_INTEGER nFileOffset;
					public HANDLE hFile;
				}
			}
		}
		[CRepr]
		public struct NLA_BLOB
		{
			public _header_e__Struct header;
			public _data_e__Union data;
			
			[CRepr, Union]
			public struct _data_e__Union
			{
				public CHAR[0] rawData;
				public _interfaceData_e__Struct interfaceData;
				public _locationData_e__Struct locationData;
				public _connectivity_e__Struct connectivity;
				public _ICS_e__Struct ICS;
				
				[CRepr]
				public struct _ICS_e__Struct
				{
					public _remote_e__Struct remote;
					
					[CRepr]
					public struct _remote_e__Struct
					{
						public uint32 speed;
						public uint32 type;
						public uint32 state;
						public char16[256] machineName;
						public char16[256] sharedAdapterName;
					}
				}
				[CRepr]
				public struct _locationData_e__Struct
				{
					public CHAR[0] information;
				}
				[CRepr]
				public struct _interfaceData_e__Struct
				{
					public uint32 dwType;
					public uint32 dwSpeed;
					public CHAR[0] adapterName;
				}
				[CRepr]
				public struct _connectivity_e__Struct
				{
					public NLA_CONNECTIVITY_TYPE type;
					public NLA_INTERNET internet;
				}
			}
			[CRepr]
			public struct _header_e__Struct
			{
				public NLA_BLOB_DATA_TYPE type;
				public uint32 dwSize;
				public uint32 nextOffset;
			}
		}
		[CRepr]
		public struct WSAPOLLDATA
		{
			public int32 result;
			public uint32 fds;
			public int32 timeout;
			public WSAPOLLFD[0] fdArray;
		}
		[CRepr]
		public struct WSASENDMSG
		{
			public WSAMSG* lpMsg;
			public uint32 dwFlags;
			public uint32* lpNumberOfBytesSent;
			public OVERLAPPED* lpOverlapped;
			public LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine;
		}
		[CRepr]
		public struct RIO_NOTIFICATION_COMPLETION
		{
			public RIO_NOTIFICATION_COMPLETION_TYPE Type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Event_e__Struct Event;
				public _Iocp_e__Struct Iocp;
				
				[CRepr]
				public struct _Iocp_e__Struct
				{
					public HANDLE IocpHandle;
					public void* CompletionKey;
					public void* Overlapped;
				}
				[CRepr]
				public struct _Event_e__Struct
				{
					public HANDLE EventHandle;
					public BOOL NotifyReset;
				}
			}
		}
		[CRepr]
		public struct RIO_EXTENSION_FUNCTION_TABLE
		{
			public uint32 cbSize;
			public LPFN_RIORECEIVE RIOReceive;
			public LPFN_RIORECEIVEEX RIOReceiveEx;
			public LPFN_RIOSEND RIOSend;
			public LPFN_RIOSENDEX RIOSendEx;
			public LPFN_RIOCLOSECOMPLETIONQUEUE RIOCloseCompletionQueue;
			public LPFN_RIOCREATECOMPLETIONQUEUE RIOCreateCompletionQueue;
			public LPFN_RIOCREATEREQUESTQUEUE RIOCreateRequestQueue;
			public LPFN_RIODEQUEUECOMPLETION RIODequeueCompletion;
			public LPFN_RIODEREGISTERBUFFER RIODeregisterBuffer;
			public LPFN_RIONOTIFY RIONotify;
			public LPFN_RIOREGISTERBUFFER RIORegisterBuffer;
			public LPFN_RIORESIZECOMPLETIONQUEUE RIOResizeCompletionQueue;
			public LPFN_RIORESIZEREQUESTQUEUE RIOResizeRequestQueue;
		}
		[CRepr]
		public struct WSPData
		{
			public uint16 wVersion;
			public uint16 wHighVersion;
			public char16[256] szDescription;
		}
		[CRepr]
		public struct WSATHREADID
		{
			public HANDLE ThreadHandle;
			public uint Reserved;
		}
		[CRepr]
		public struct WSPPROC_TABLE
		{
			public LPWSPACCEPT lpWSPAccept;
			public LPWSPADDRESSTOSTRING lpWSPAddressToString;
			public LPWSPASYNCSELECT lpWSPAsyncSelect;
			public LPWSPBIND lpWSPBind;
			public LPWSPCANCELBLOCKINGCALL lpWSPCancelBlockingCall;
			public LPWSPCLEANUP lpWSPCleanup;
			public LPWSPCLOSESOCKET lpWSPCloseSocket;
			public LPWSPCONNECT lpWSPConnect;
			public LPWSPDUPLICATESOCKET lpWSPDuplicateSocket;
			public LPWSPENUMNETWORKEVENTS lpWSPEnumNetworkEvents;
			public LPWSPEVENTSELECT lpWSPEventSelect;
			public LPWSPGETOVERLAPPEDRESULT lpWSPGetOverlappedResult;
			public LPWSPGETPEERNAME lpWSPGetPeerName;
			public LPWSPGETSOCKNAME lpWSPGetSockName;
			public LPWSPGETSOCKOPT lpWSPGetSockOpt;
			public LPWSPGETQOSBYNAME lpWSPGetQOSByName;
			public LPWSPIOCTL lpWSPIoctl;
			public LPWSPJOINLEAF lpWSPJoinLeaf;
			public LPWSPLISTEN lpWSPListen;
			public LPWSPRECV lpWSPRecv;
			public LPWSPRECVDISCONNECT lpWSPRecvDisconnect;
			public LPWSPRECVFROM lpWSPRecvFrom;
			public LPWSPSELECT lpWSPSelect;
			public LPWSPSEND lpWSPSend;
			public LPWSPSENDDISCONNECT lpWSPSendDisconnect;
			public LPWSPSENDTO lpWSPSendTo;
			public LPWSPSETSOCKOPT lpWSPSetSockOpt;
			public LPWSPSHUTDOWN lpWSPShutdown;
			public LPWSPSOCKET lpWSPSocket;
			public LPWSPSTRINGTOADDRESS lpWSPStringToAddress;
		}
		[CRepr]
		public struct WSPUPCALLTABLE
		{
			public LPWPUCLOSEEVENT lpWPUCloseEvent;
			public LPWPUCLOSESOCKETHANDLE lpWPUCloseSocketHandle;
			public LPWPUCREATEEVENT lpWPUCreateEvent;
			public LPWPUCREATESOCKETHANDLE lpWPUCreateSocketHandle;
			public LPWPUFDISSET lpWPUFDIsSet;
			public LPWPUGETPROVIDERPATH lpWPUGetProviderPath;
			public LPWPUMODIFYIFSHANDLE lpWPUModifyIFSHandle;
			public LPWPUPOSTMESSAGE lpWPUPostMessage;
			public LPWPUQUERYBLOCKINGCALLBACK lpWPUQueryBlockingCallback;
			public LPWPUQUERYSOCKETHANDLECONTEXT lpWPUQuerySocketHandleContext;
			public LPWPUQUEUEAPC lpWPUQueueApc;
			public LPWPURESETEVENT lpWPUResetEvent;
			public LPWPUSETEVENT lpWPUSetEvent;
			public LPWPUOPENCURRENTTHREAD lpWPUOpenCurrentThread;
			public LPWPUCLOSETHREAD lpWPUCloseThread;
		}
		[CRepr]
		public struct WSC_PROVIDER_AUDIT_INFO
		{
			public uint32 RecordSize;
			public void* Reserved;
		}
		[CRepr]
		public struct NSP_ROUTINE
		{
			public uint32 cbSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public LPNSPCLEANUP NSPCleanup;
			public LPNSPLOOKUPSERVICEBEGIN NSPLookupServiceBegin;
			public LPNSPLOOKUPSERVICENEXT NSPLookupServiceNext;
			public LPNSPLOOKUPSERVICEEND NSPLookupServiceEnd;
			public LPNSPSETSERVICE NSPSetService;
			public LPNSPINSTALLSERVICECLASS NSPInstallServiceClass;
			public LPNSPREMOVESERVICECLASS NSPRemoveServiceClass;
			public LPNSPGETSERVICECLASSINFO NSPGetServiceClassInfo;
			public LPNSPIOCTL NSPIoctl;
		}
		[CRepr]
		public struct NSPV2_ROUTINE
		{
			public uint32 cbSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public LPNSPV2STARTUP NSPv2Startup;
			public LPNSPV2CLEANUP NSPv2Cleanup;
			public LPNSPV2LOOKUPSERVICEBEGIN NSPv2LookupServiceBegin;
			public LPNSPV2LOOKUPSERVICENEXTEX NSPv2LookupServiceNextEx;
			public LPNSPV2LOOKUPSERVICEEND NSPv2LookupServiceEnd;
			public LPNSPV2SETSERVICEEX NSPv2SetServiceEx;
			public LPNSPV2CLIENTSESSIONRUNDOWN NSPv2ClientSessionRundown;
		}
		[CRepr]
		public struct NS_INFOA
		{
			public uint32 dwNameSpace;
			public uint32 dwNameSpaceFlags;
			public PSTR lpNameSpace;
		}
		[CRepr]
		public struct NS_INFOW
		{
			public uint32 dwNameSpace;
			public uint32 dwNameSpaceFlags;
			public PWSTR lpNameSpace;
		}
		[CRepr]
		public struct SERVICE_TYPE_VALUE
		{
			public uint32 dwNameSpace;
			public uint32 dwValueType;
			public uint32 dwValueSize;
			public uint32 dwValueNameOffset;
			public uint32 dwValueOffset;
		}
		[CRepr]
		public struct SERVICE_TYPE_VALUE_ABSA
		{
			public uint32 dwNameSpace;
			public uint32 dwValueType;
			public uint32 dwValueSize;
			public PSTR lpValueName;
			public void* lpValue;
		}
		[CRepr]
		public struct SERVICE_TYPE_VALUE_ABSW
		{
			public uint32 dwNameSpace;
			public uint32 dwValueType;
			public uint32 dwValueSize;
			public PWSTR lpValueName;
			public void* lpValue;
		}
		[CRepr]
		public struct SERVICE_TYPE_INFO
		{
			public uint32 dwTypeNameOffset;
			public uint32 dwValueCount;
			public SERVICE_TYPE_VALUE[0] Values;
		}
		[CRepr]
		public struct SERVICE_TYPE_INFO_ABSA
		{
			public PSTR lpTypeName;
			public uint32 dwValueCount;
			public SERVICE_TYPE_VALUE_ABSA[0] Values;
		}
		[CRepr]
		public struct SERVICE_TYPE_INFO_ABSW
		{
			public PWSTR lpTypeName;
			public uint32 dwValueCount;
			public SERVICE_TYPE_VALUE_ABSW[0] Values;
		}
		[CRepr]
		public struct SERVICE_ADDRESS
		{
			public uint32 dwAddressType;
			public uint32 dwAddressFlags;
			public uint32 dwAddressLength;
			public uint32 dwPrincipalLength;
			public uint8* lpAddress;
			public uint8* lpPrincipal;
		}
		[CRepr]
		public struct SERVICE_ADDRESSES
		{
			public uint32 dwAddressCount;
			public SERVICE_ADDRESS[0] Addresses;
		}
		[CRepr]
		public struct SERVICE_INFOA
		{
			public Guid* lpServiceType;
			public PSTR lpServiceName;
			public PSTR lpComment;
			public PSTR lpLocale;
			public RESOURCE_DISPLAY_TYPE dwDisplayHint;
			public uint32 dwVersion;
			public uint32 dwTime;
			public PSTR lpMachineName;
			public SERVICE_ADDRESSES* lpServiceAddress;
			public BLOB ServiceSpecificInfo;
		}
		[CRepr]
		public struct SERVICE_INFOW
		{
			public Guid* lpServiceType;
			public PWSTR lpServiceName;
			public PWSTR lpComment;
			public PWSTR lpLocale;
			public RESOURCE_DISPLAY_TYPE dwDisplayHint;
			public uint32 dwVersion;
			public uint32 dwTime;
			public PWSTR lpMachineName;
			public SERVICE_ADDRESSES* lpServiceAddress;
			public BLOB ServiceSpecificInfo;
		}
		[CRepr]
		public struct NS_SERVICE_INFOA
		{
			public uint32 dwNameSpace;
			public SERVICE_INFOA ServiceInfo;
		}
		[CRepr]
		public struct NS_SERVICE_INFOW
		{
			public uint32 dwNameSpace;
			public SERVICE_INFOW ServiceInfo;
		}
		[CRepr]
		public struct PROTOCOL_INFOA
		{
			public uint32 dwServiceFlags;
			public int32 iAddressFamily;
			public int32 iMaxSockAddr;
			public int32 iMinSockAddr;
			public int32 iSocketType;
			public int32 iProtocol;
			public uint32 dwMessageSize;
			public PSTR lpProtocol;
		}
		[CRepr]
		public struct PROTOCOL_INFOW
		{
			public uint32 dwServiceFlags;
			public int32 iAddressFamily;
			public int32 iMaxSockAddr;
			public int32 iMinSockAddr;
			public int32 iSocketType;
			public int32 iProtocol;
			public uint32 dwMessageSize;
			public PWSTR lpProtocol;
		}
		[CRepr]
		public struct NETRESOURCE2A
		{
			public uint32 dwScope;
			public uint32 dwType;
			public uint32 dwUsage;
			public uint32 dwDisplayType;
			public PSTR lpLocalName;
			public PSTR lpRemoteName;
			public PSTR lpComment;
			public NS_INFOA ns_info;
			public Guid ServiceType;
			public uint32 dwProtocols;
			public int32* lpiProtocols;
		}
		[CRepr]
		public struct NETRESOURCE2W
		{
			public uint32 dwScope;
			public uint32 dwType;
			public uint32 dwUsage;
			public uint32 dwDisplayType;
			public PWSTR lpLocalName;
			public PWSTR lpRemoteName;
			public PWSTR lpComment;
			public NS_INFOA ns_info;
			public Guid ServiceType;
			public uint32 dwProtocols;
			public int32* lpiProtocols;
		}
		[CRepr]
		public struct SERVICE_ASYNC_INFO
		{
			public LPSERVICE_CALLBACK_PROC lpServiceCallbackProc;
			public LPARAM lParam;
			public HANDLE hAsyncTaskHandle;
		}
		[CRepr]
		public struct sockaddr_un
		{
			public uint16 sun_family;
			public CHAR[108] sun_path;
		}
		[CRepr]
		public struct sockaddr_ipx
		{
			public int16 sa_family;
			public CHAR[4] sa_netnum;
			public CHAR[6] sa_nodenum;
			public uint16 sa_socket;
		}
		[CRepr]
		public struct sockaddr_tp
		{
			public uint16 tp_family;
			public uint16 tp_addr_type;
			public uint16 tp_taddr_len;
			public uint16 tp_tsel_len;
			public uint8[64] tp_addr;
		}
		[CRepr]
		public struct sockaddr_nb
		{
			public int16 snb_family;
			public uint16 snb_type;
			public CHAR[16] snb_name;
		}
		[CRepr]
		public struct sockaddr_vns
		{
			public uint16 sin_family;
			public uint8[4] net_address;
			public uint8[2] subnet_addr;
			public uint8[2] port;
			public uint8 hops;
			public uint8[5] filler;
		}
		
		// --- Functions ---
		
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 __WSAFDIsSet(SOCKET fd, out fd_set param1);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET accept(SOCKET s, SOCKADDR* addr, int32* addrlen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 bind(SOCKET s, in SOCKADDR name, int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 closesocket(SOCKET s);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 connect(SOCKET s, in SOCKADDR name, int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ioctlsocket(SOCKET s, int32 cmd, out uint32 argp);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 getpeername(SOCKET s, out SOCKADDR name, out int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 getsockname(SOCKET s, out SOCKADDR name, out int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 getsockopt(SOCKET s, int32 level, int32 optname, PSTR optval, out int32 optlen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 htonl(uint32 hostlong);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 htons(uint16 hostshort);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 inet_addr(PSTR cp);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR inet_ntoa(IN_ADDR @in);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 listen(SOCKET s, int32 backlog);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ntohl(uint32 netlong);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 ntohs(uint16 netshort);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 recv(SOCKET s, PSTR buf, int32 len, int32 flags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 recvfrom(SOCKET s, PSTR buf, int32 len, int32 flags, SOCKADDR* from, int32* fromlen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 select(int32 nfds, fd_set* readfds, fd_set* writefds, fd_set* exceptfds, timeval* timeout);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 send(SOCKET s, PSTR buf, int32 len, SEND_FLAGS flags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 sendto(SOCKET s, PSTR buf, int32 len, int32 flags, in SOCKADDR to, int32 tolen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 setsockopt(SOCKET s, int32 level, int32 optname, PSTR optval, int32 optlen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 shutdown(SOCKET s, int32 how);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET socket(int32 af, int32 type, int32 protocol);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern hostent* gethostbyaddr(PSTR addr, int32 len, int32 type);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern hostent* gethostbyname(PSTR name);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 gethostname(PSTR name, int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetHostNameW(char16* name, int32 namelen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern servent* getservbyport(int32 port, PSTR proto);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern servent* getservbyname(PSTR name, PSTR proto);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern protoent* getprotobynumber(int32 number);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern protoent* getprotobyname(PSTR name);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAStartup(uint16 wVersionRequested, out WSAData lpWSAData);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSACleanup();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void WSASetLastError(int32 iError);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern WSA_ERROR WSAGetLastError();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAIsBlocking();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAUnhookBlockingHook();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FARPROC WSASetBlockingHook(FARPROC lpBlockFunc);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSACancelBlockingCall();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetServByName(HWND hWnd, uint32 wMsg, PSTR name, PSTR proto, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetServByPort(HWND hWnd, uint32 wMsg, int32 port, PSTR proto, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetProtoByName(HWND hWnd, uint32 wMsg, PSTR name, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetProtoByNumber(HWND hWnd, uint32 wMsg, int32 number, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetHostByName(HWND hWnd, uint32 wMsg, PSTR name, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSAAsyncGetHostByAddr(HWND hWnd, uint32 wMsg, PSTR addr, int32 len, int32 type, PSTR buf, int32 buflen);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSACancelAsyncRequest(HANDLE hAsyncTaskHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAAsyncSelect(SOCKET s, HWND hWnd, uint32 wMsg, int32 lEvent);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET WSAAccept(SOCKET s, SOCKADDR* addr, int32* addrlen, LPCONDITIONPROC lpfnCondition, uint dwCallbackData);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSACloseEvent(HANDLE hEvent);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAConnect(SOCKET s, in SOCKADDR name, int32 namelen, WSABUF* lpCallerData, WSABUF* lpCalleeData, QOS* lpSQOS, QOS* lpGQOS);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAConnectByNameW(SOCKET s, PWSTR nodename, PWSTR servicename, uint32* LocalAddressLength, SOCKADDR* LocalAddress, uint32* RemoteAddressLength, SOCKADDR* RemoteAddress, timeval* timeout, out OVERLAPPED Reserved);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAConnectByNameA(SOCKET s, PSTR nodename, PSTR servicename, uint32* LocalAddressLength, SOCKADDR* LocalAddress, uint32* RemoteAddressLength, SOCKADDR* RemoteAddress, timeval* timeout, out OVERLAPPED Reserved);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAConnectByList(SOCKET s, ref SOCKET_ADDRESS_LIST SocketAddress, uint32* LocalAddressLength, SOCKADDR* LocalAddress, uint32* RemoteAddressLength, SOCKADDR* RemoteAddress, timeval* timeout, out OVERLAPPED Reserved);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE WSACreateEvent();
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSADuplicateSocketA(SOCKET s, uint32 dwProcessId, out WSAPROTOCOL_INFOA lpProtocolInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSADuplicateSocketW(SOCKET s, uint32 dwProcessId, out WSAPROTOCOL_INFOW lpProtocolInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumNetworkEvents(SOCKET s, HANDLE hEventObject, out WSANETWORKEVENTS lpNetworkEvents);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumProtocolsA(int32* lpiProtocols, WSAPROTOCOL_INFOA* lpProtocolBuffer, out uint32 lpdwBufferLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumProtocolsW(int32* lpiProtocols, WSAPROTOCOL_INFOW* lpProtocolBuffer, out uint32 lpdwBufferLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEventSelect(SOCKET s, HANDLE hEventObject, int32 lNetworkEvents);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAGetOverlappedResult(SOCKET s, ref OVERLAPPED lpOverlapped, out uint32 lpcbTransfer, BOOL fWait, out uint32 lpdwFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAGetQOSByName(SOCKET s, ref WSABUF lpQOSName, out QOS lpQOS);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAHtonl(SOCKET s, uint32 hostlong, out uint32 lpnetlong);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAHtons(SOCKET s, uint16 hostshort, out uint16 lpnetshort);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAIoctl(SOCKET s, uint32 dwIoControlCode, void* lpvInBuffer, uint32 cbInBuffer, void* lpvOutBuffer, uint32 cbOutBuffer, out uint32 lpcbBytesReturned, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET WSAJoinLeaf(SOCKET s, in SOCKADDR name, int32 namelen, WSABUF* lpCallerData, WSABUF* lpCalleeData, QOS* lpSQOS, QOS* lpGQOS, uint32 dwFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSANtohl(SOCKET s, uint32 netlong, out uint32 lphostlong);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSANtohs(SOCKET s, uint16 netshort, out uint16 lphostshort);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARecv(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesRecvd, out uint32 lpFlags, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARecvDisconnect(SOCKET s, WSABUF* lpInboundDisconnectData);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARecvFrom(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesRecvd, out uint32 lpFlags, SOCKADDR* lpFrom, int32* lpFromlen, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSAResetEvent(HANDLE hEvent);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASend(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesSent, uint32 dwFlags, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASendMsg(SOCKET Handle, ref WSAMSG lpMsg, uint32 dwFlags, uint32* lpNumberOfBytesSent, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASendDisconnect(SOCKET s, WSABUF* lpOutboundDisconnectData);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASendTo(SOCKET s, WSABUF* lpBuffers, uint32 dwBufferCount, uint32* lpNumberOfBytesSent, uint32 dwFlags, SOCKADDR* lpTo, int32 iTolen, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WSASetEvent(HANDLE hEvent);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET WSASocketA(int32 af, int32 type, int32 protocol, WSAPROTOCOL_INFOA* lpProtocolInfo, uint32 g, uint32 dwFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SOCKET WSASocketW(int32 af, int32 type, int32 protocol, WSAPROTOCOL_INFOW* lpProtocolInfo, uint32 g, uint32 dwFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WSAWaitForMultipleEvents(uint32 cEvents, HANDLE* lphEvents, BOOL fWaitAll, uint32 dwTimeout, BOOL fAlertable);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAAddressToStringA(ref SOCKADDR lpsaAddress, uint32 dwAddressLength, WSAPROTOCOL_INFOA* lpProtocolInfo, uint8* lpszAddressString, out uint32 lpdwAddressStringLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAAddressToStringW(ref SOCKADDR lpsaAddress, uint32 dwAddressLength, WSAPROTOCOL_INFOW* lpProtocolInfo, char16* lpszAddressString, out uint32 lpdwAddressStringLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAStringToAddressA(PSTR AddressString, int32 AddressFamily, WSAPROTOCOL_INFOA* lpProtocolInfo, out SOCKADDR lpAddress, out int32 lpAddressLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAStringToAddressW(PWSTR AddressString, int32 AddressFamily, WSAPROTOCOL_INFOW* lpProtocolInfo, out SOCKADDR lpAddress, out int32 lpAddressLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSALookupServiceBeginA(ref WSAQUERYSETA lpqsRestrictions, uint32 dwControlFlags, out HANDLE lphLookup);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSALookupServiceBeginW(ref WSAQUERYSETW lpqsRestrictions, uint32 dwControlFlags, out HANDLE lphLookup);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSALookupServiceNextA(HANDLE hLookup, uint32 dwControlFlags, out uint32 lpdwBufferLength, out WSAQUERYSETA lpqsResults);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSALookupServiceNextW(HANDLE hLookup, uint32 dwControlFlags, out uint32 lpdwBufferLength, WSAQUERYSETW* lpqsResults);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSANSPIoctl(HANDLE hLookup, uint32 dwControlCode, void* lpvInBuffer, uint32 cbInBuffer, void* lpvOutBuffer, uint32 cbOutBuffer, out uint32 lpcbBytesReturned, WSACOMPLETION* lpCompletion);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSALookupServiceEnd(HANDLE hLookup);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAInstallServiceClassA(ref WSASERVICECLASSINFOA lpServiceClassInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAInstallServiceClassW(ref WSASERVICECLASSINFOW lpServiceClassInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARemoveServiceClass(ref Guid lpServiceClassId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAGetServiceClassInfoA(ref Guid lpProviderId, ref Guid lpServiceClassId, out uint32 lpdwBufSize, out WSASERVICECLASSINFOA lpServiceClassInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAGetServiceClassInfoW(ref Guid lpProviderId, ref Guid lpServiceClassId, out uint32 lpdwBufSize, out WSASERVICECLASSINFOW lpServiceClassInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumNameSpaceProvidersA(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOA lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumNameSpaceProvidersW(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOW lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumNameSpaceProvidersExA(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOEXA lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAEnumNameSpaceProvidersExW(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOEXW lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAGetServiceClassNameByClassIdA(ref Guid lpServiceClassId, PSTR lpszServiceClassName, out uint32 lpdwBufferLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAGetServiceClassNameByClassIdW(ref Guid lpServiceClassId, PWSTR lpszServiceClassName, out uint32 lpdwBufferLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASetServiceA(ref WSAQUERYSETA lpqsRegInfo, WSAESETSERVICEOP essoperation, uint32 dwControlFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASetServiceW(ref WSAQUERYSETW lpqsRegInfo, WSAESETSERVICEOP essoperation, uint32 dwControlFlags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAProviderConfigChange(out HANDLE lpNotificationHandle, OVERLAPPED* lpOverlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAPoll(out WSAPOLLFD fdArray, uint32 fds, int32 timeout);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ProcessSocketNotifications(HANDLE completionPort, uint32 registrationCount, SOCK_NOTIFY_REGISTRATION* registrationInfos, uint32 timeoutMs, uint32 completionCount, OVERLAPPED_ENTRY* completionPortEntries, uint32* receivedEntryCount);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR RtlIpv4AddressToStringA(in IN_ADDR Addr, uint8* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4AddressToStringExA(in IN_ADDR Address, uint16 Port, uint8* AddressString, out uint32 AddressStringLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR RtlIpv4AddressToStringW(in IN_ADDR Addr, char16* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4AddressToStringExW(in IN_ADDR Address, uint16 Port, char16* AddressString, out uint32 AddressStringLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4StringToAddressA(PSTR S, BOOLEAN Strict, out PSTR Terminator, out IN_ADDR Addr);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4StringToAddressExA(PSTR AddressString, BOOLEAN Strict, out IN_ADDR Address, out uint16 Port);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4StringToAddressW(PWSTR S, BOOLEAN Strict, out PWSTR Terminator, out IN_ADDR Addr);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv4StringToAddressExW(PWSTR AddressString, BOOLEAN Strict, out IN_ADDR Address, out uint16 Port);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR RtlIpv6AddressToStringA(in IN6_ADDR Addr, uint8* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6AddressToStringExA(in IN6_ADDR Address, uint32 ScopeId, uint16 Port, uint8* AddressString, out uint32 AddressStringLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR RtlIpv6AddressToStringW(in IN6_ADDR Addr, char16* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6AddressToStringExW(in IN6_ADDR Address, uint32 ScopeId, uint16 Port, char16* AddressString, out uint32 AddressStringLength);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6StringToAddressA(PSTR S, out PSTR Terminator, out IN6_ADDR Addr);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6StringToAddressExA(PSTR AddressString, out IN6_ADDR Address, out uint32 ScopeId, out uint16 Port);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6StringToAddressW(PWSTR S, out PWSTR Terminator, out IN6_ADDR Addr);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlIpv6StringToAddressExW(PWSTR AddressString, out IN6_ADDR Address, out uint32 ScopeId, out uint16 Port);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR RtlEthernetAddressToStringA(in DL_EUI48 Addr, uint8* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR RtlEthernetAddressToStringW(in DL_EUI48 Addr, char16* S);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlEthernetStringToAddressA(PSTR S, out PSTR Terminator, out DL_EUI48 Addr);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RtlEthernetStringToAddressW(PWSTR S, out PWSTR Terminator, out DL_EUI48 Addr);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARecvEx(SOCKET s, PSTR buf, int32 len, out int32 flags);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TransmitFile(SOCKET hSocket, HANDLE hFile, uint32 nNumberOfBytesToWrite, uint32 nNumberOfBytesPerSend, OVERLAPPED* lpOverlapped, TRANSMIT_FILE_BUFFERS* lpTransmitBuffers, uint32 dwReserved);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AcceptEx(SOCKET sListenSocket, SOCKET sAcceptSocket, void* lpOutputBuffer, uint32 dwReceiveDataLength, uint32 dwLocalAddressLength, uint32 dwRemoteAddressLength, out uint32 lpdwBytesReceived, out OVERLAPPED lpOverlapped);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetAcceptExSockaddrs(void* lpOutputBuffer, uint32 dwReceiveDataLength, uint32 dwLocalAddressLength, uint32 dwRemoteAddressLength, out SOCKADDR* LocalSockaddr, out int32 LocalSockaddrLength, out SOCKADDR* RemoteSockaddr, out int32 RemoteSockaddrLength);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnumProtocols(int32* lpiProtocols, WSAPROTOCOL_INFOW* lpProtocolBuffer, out uint32 lpdwBufferLength, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnumProtocols32(int32* lpiProtocols, out WSAPROTOCOL_INFOW lpProtocolBuffer, out uint32 lpdwBufferLength, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCDeinstallProvider(ref Guid lpProviderId, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCDeinstallProvider32(ref Guid lpProviderId, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallProvider(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallProvider64_32(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCGetProviderPath(ref Guid lpProviderId, char16* lpszProviderDllPath, out int32 lpProviderDllPathLen, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCGetProviderPath32(ref Guid lpProviderId, char16* lpszProviderDllPath, out int32 lpProviderDllPathLen, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCUpdateProvider(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCUpdateProvider32(ref Guid lpProviderId, PWSTR lpszProviderDllPath, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCSetProviderInfo(ref Guid lpProviderId, WSC_PROVIDER_INFO_TYPE InfoType, ref uint8 Info, uint InfoSize, uint32 Flags, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCGetProviderInfo(ref Guid lpProviderId, WSC_PROVIDER_INFO_TYPE InfoType, out uint8 Info, out uint InfoSize, uint32 Flags, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCSetProviderInfo32(ref Guid lpProviderId, WSC_PROVIDER_INFO_TYPE InfoType, ref uint8 Info, uint InfoSize, uint32 Flags, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCGetProviderInfo32(ref Guid lpProviderId, WSC_PROVIDER_INFO_TYPE InfoType, out uint8 Info, out uint InfoSize, uint32 Flags, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCSetApplicationCategory(char16* Path, uint32 PathLength, char16* Extra, uint32 ExtraLength, uint32 PermittedLspCategories, uint32* pPrevPermLspCat, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCGetApplicationCategory(char16* Path, uint32 PathLength, char16* Extra, uint32 ExtraLength, out uint32 pPermittedLspCategories, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WPUCompleteOverlappedRequest(SOCKET s, out OVERLAPPED lpOverlapped, uint32 dwError, uint32 cbTransferred, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnumNameSpaceProviders32(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOW lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnumNameSpaceProvidersEx32(out uint32 lpdwBufferLength, out WSANAMESPACE_INFOEXW lpnspBuffer);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallNameSpace(PWSTR lpszIdentifier, PWSTR lpszPathName, uint32 dwNameSpace, uint32 dwVersion, ref Guid lpProviderId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallNameSpace32(PWSTR lpszIdentifier, PWSTR lpszPathName, uint32 dwNameSpace, uint32 dwVersion, ref Guid lpProviderId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCUnInstallNameSpace(ref Guid lpProviderId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallNameSpaceEx(PWSTR lpszIdentifier, PWSTR lpszPathName, uint32 dwNameSpace, uint32 dwVersion, ref Guid lpProviderId, ref BLOB lpProviderSpecific);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallNameSpaceEx32(PWSTR lpszIdentifier, PWSTR lpszPathName, uint32 dwNameSpace, uint32 dwVersion, ref Guid lpProviderId, ref BLOB lpProviderSpecific);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCUnInstallNameSpace32(ref Guid lpProviderId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnableNSProvider(ref Guid lpProviderId, BOOL fEnable);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCEnableNSProvider32(ref Guid lpProviderId, BOOL fEnable);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCInstallProviderAndChains64_32(ref Guid lpProviderId, PWSTR lpszProviderDllPath, PWSTR lpszProviderDllPath32, PWSTR lpszLspName, uint32 dwServiceFlags, WSAPROTOCOL_INFOW* lpProtocolInfoList, uint32 dwNumberOfEntries, uint32* lpdwCatalogEntryId, out int32 lpErrno);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAAdvertiseProvider(in Guid puuidProviderId, in NSPV2_ROUTINE pNSPv2Routine);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAUnadvertiseProvider(in Guid puuidProviderId);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAProviderCompleteAsyncCall(HANDLE hAsyncCall, int32 iRetCode);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumProtocolsA(int32* lpiProtocols, void* lpProtocolBuffer, out uint32 lpdwBufferLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumProtocolsW(int32* lpiProtocols, void* lpProtocolBuffer, out uint32 lpdwBufferLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddressByNameA(uint32 dwNameSpace, ref Guid lpServiceType, PSTR lpServiceName, int32* lpiProtocols, uint32 dwResolution, SERVICE_ASYNC_INFO* lpServiceAsyncInfo, void* lpCsaddrBuffer, out uint32 lpdwBufferLength, uint8* lpAliasBuffer, out uint32 lpdwAliasBufferLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddressByNameW(uint32 dwNameSpace, ref Guid lpServiceType, PWSTR lpServiceName, int32* lpiProtocols, uint32 dwResolution, SERVICE_ASYNC_INFO* lpServiceAsyncInfo, void* lpCsaddrBuffer, out uint32 lpdwBufferLength, char16* lpAliasBuffer, out uint32 lpdwAliasBufferLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetTypeByNameA(PSTR lpServiceName, out Guid lpServiceType);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetTypeByNameW(PWSTR lpServiceName, out Guid lpServiceType);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetNameByTypeA(ref Guid lpServiceType, PSTR lpServiceName, uint32 dwNameLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetNameByTypeW(ref Guid lpServiceType, PWSTR lpServiceName, uint32 dwNameLength);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetServiceA(uint32 dwNameSpace, SET_SERVICE_OPERATION dwOperation, uint32 dwFlags, ref SERVICE_INFOA lpServiceInfo, SERVICE_ASYNC_INFO* lpServiceAsyncInfo, out uint32 lpdwStatusFlags);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetServiceW(uint32 dwNameSpace, SET_SERVICE_OPERATION dwOperation, uint32 dwFlags, ref SERVICE_INFOW lpServiceInfo, SERVICE_ASYNC_INFO* lpServiceAsyncInfo, out uint32 lpdwStatusFlags);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetServiceA(uint32 dwNameSpace, ref Guid lpGuid, PSTR lpServiceName, uint32 dwProperties, void* lpBuffer, out uint32 lpdwBufferSize, SERVICE_ASYNC_INFO* lpServiceAsyncInfo);
		[Import("mswsock.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetServiceW(uint32 dwNameSpace, ref Guid lpGuid, PWSTR lpServiceName, uint32 dwProperties, void* lpBuffer, out uint32 lpdwBufferSize, SERVICE_ASYNC_INFO* lpServiceAsyncInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 getaddrinfo(PSTR pNodeName, PSTR pServiceName, ADDRINFOA* pHints, out ADDRINFOA* ppResult);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddrInfoW(PWSTR pNodeName, PWSTR pServiceName, addrinfoW* pHints, out addrinfoW* ppResult);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddrInfoExA(PSTR pName, PSTR pServiceName, uint32 dwNameSpace, Guid* lpNspId, addrinfoexA* hints, out addrinfoexA* ppResult, timeval* timeout, OVERLAPPED* lpOverlapped, LPLOOKUPSERVICE_COMPLETION_ROUTINE lpCompletionRoutine, HANDLE* lpNameHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddrInfoExW(PWSTR pName, PWSTR pServiceName, uint32 dwNameSpace, Guid* lpNspId, addrinfoexW* hints, out addrinfoexW* ppResult, timeval* timeout, OVERLAPPED* lpOverlapped, LPLOOKUPSERVICE_COMPLETION_ROUTINE lpCompletionRoutine, HANDLE* lpHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddrInfoExCancel(ref HANDLE lpHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetAddrInfoExOverlappedResult(ref OVERLAPPED lpOverlapped);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetAddrInfoExA(PSTR pName, PSTR pServiceName, SOCKET_ADDRESS* pAddresses, uint32 dwAddressCount, BLOB* lpBlob, uint32 dwFlags, uint32 dwNameSpace, Guid* lpNspId, timeval* timeout, OVERLAPPED* lpOverlapped, LPLOOKUPSERVICE_COMPLETION_ROUTINE lpCompletionRoutine, HANDLE* lpNameHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetAddrInfoExW(PWSTR pName, PWSTR pServiceName, SOCKET_ADDRESS* pAddresses, uint32 dwAddressCount, BLOB* lpBlob, uint32 dwFlags, uint32 dwNameSpace, Guid* lpNspId, timeval* timeout, OVERLAPPED* lpOverlapped, LPLOOKUPSERVICE_COMPLETION_ROUTINE lpCompletionRoutine, HANDLE* lpNameHandle);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void freeaddrinfo(ADDRINFOA* pAddrInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeAddrInfoW(addrinfoW* pAddrInfo);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeAddrInfoEx(addrinfoexA* pAddrInfoEx);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeAddrInfoExW(addrinfoexW* pAddrInfoEx);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 getnameinfo(in SOCKADDR pSockaddr, int32 SockaddrLength, uint8* pNodeBuffer, uint32 NodeBufferSize, uint8* pServiceBuffer, uint32 ServiceBufferSize, int32 Flags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetNameInfoW(in SOCKADDR pSockaddr, int32 SockaddrLength, char16* pNodeBuffer, uint32 NodeBufferSize, char16* pServiceBuffer, uint32 ServiceBufferSize, int32 Flags);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 inet_pton(int32 Family, PSTR pszAddrString, void* pAddrBuf);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 InetPtonW(int32 Family, PWSTR pszAddrString, void* pAddrBuf);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR inet_ntop(int32 Family, void* pAddr, uint8* pStringBuf, uint StringBufSize);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR InetNtopW(int32 Family, void* pAddr, char16* pStringBuf, uint StringBufSize);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASetSocketSecurity(SOCKET Socket, SOCKET_SECURITY_SETTINGS* SecuritySettings, uint32 SecuritySettingsLen, OVERLAPPED* Overlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAQuerySocketSecurity(SOCKET Socket, SOCKET_SECURITY_QUERY_TEMPLATE* SecurityQueryTemplate, uint32 SecurityQueryTemplateLen, SOCKET_SECURITY_QUERY_INFO* SecurityQueryInfo, out uint32 SecurityQueryInfoLen, OVERLAPPED* Overlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSASetSocketPeerTargetName(SOCKET Socket, in SOCKET_PEER_TARGET_NAME PeerTargetName, uint32 PeerTargetNameLen, OVERLAPPED* Overlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSADeleteSocketPeerTargetName(SOCKET Socket, in SOCKADDR PeerAddr, uint32 PeerAddrLen, OVERLAPPED* Overlapped, LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSAImpersonateSocketPeer(SOCKET Socket, SOCKADDR* PeerAddr, uint32 PeerAddrLen);
		[Import("fwpuclnt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSARevertImpersonation();
		[Import("windows.networking.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetSocketMediaStreamingMode(BOOL value);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCWriteProviderOrder(out uint32 lpwdCatalogEntryId, uint32 dwNumberOfEntries);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCWriteProviderOrder32(out uint32 lpwdCatalogEntryId, uint32 dwNumberOfEntries);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCWriteNameSpaceOrder(out Guid lpProviderId, uint32 dwNumberOfEntries);
		[Import("ws2_32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 WSCWriteNameSpaceOrder32(out Guid lpProviderId, uint32 dwNumberOfEntries);
	}
}
