using System;

// namespace NetworkManagement.IpHelper
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NET_IF_OPER_STATUS_DOWN_NOT_AUTHENTICATED = 1;
		public const uint32 NET_IF_OPER_STATUS_DOWN_NOT_MEDIA_CONNECTED = 2;
		public const uint32 NET_IF_OPER_STATUS_DORMANT_PAUSED = 4;
		public const uint32 NET_IF_OPER_STATUS_DORMANT_LOW_POWER = 8;
		public const uint32 NET_IF_OID_IF_ALIAS = 1;
		public const uint32 NET_IF_OID_COMPARTMENT_ID = 2;
		public const uint32 NET_IF_OID_NETWORK_GUID = 3;
		public const uint32 NET_IF_OID_IF_ENTRY = 4;
		public const uint32 NET_SITEID_UNSPECIFIED = 0;
		public const uint32 NET_SITEID_MAXUSER = 134217727;
		public const uint32 NET_SITEID_MAXSYSTEM = 268435455;
		public const uint32 NET_IFLUID_UNSPECIFIED = 0;
		public const uint32 NIIF_HARDWARE_INTERFACE = 1;
		public const uint32 NIIF_FILTER_INTERFACE = 2;
		public const uint32 NIIF_NDIS_RESERVED1 = 4;
		public const uint32 NIIF_NDIS_RESERVED2 = 8;
		public const uint32 NIIF_NDIS_RESERVED3 = 16;
		public const uint32 NIIF_NDIS_WDM_INTERFACE = 32;
		public const uint32 NIIF_NDIS_ENDPOINT_INTERFACE = 64;
		public const uint32 NIIF_NDIS_ISCSI_INTERFACE = 128;
		public const uint32 NIIF_NDIS_RESERVED4 = 256;
		public const uint32 IF_MAX_STRING_SIZE = 256;
		public const uint32 IF_MAX_PHYS_ADDRESS_LENGTH = 32;
		public const uint32 ANY_SIZE = 1;
		public const uint32 MAXLEN_PHYSADDR = 8;
		public const uint32 MAXLEN_IFDESCR = 256;
		public const uint32 MAX_INTERFACE_NAME_LEN = 256;
		public const uint32 MIN_IF_TYPE = 1;
		public const uint32 IF_TYPE_OTHER = 1;
		public const uint32 IF_TYPE_REGULAR_1822 = 2;
		public const uint32 IF_TYPE_HDH_1822 = 3;
		public const uint32 IF_TYPE_DDN_X25 = 4;
		public const uint32 IF_TYPE_RFC877_X25 = 5;
		public const uint32 IF_TYPE_ETHERNET_CSMACD = 6;
		public const uint32 IF_TYPE_IS088023_CSMACD = 7;
		public const uint32 IF_TYPE_ISO88024_TOKENBUS = 8;
		public const uint32 IF_TYPE_ISO88025_TOKENRING = 9;
		public const uint32 IF_TYPE_ISO88026_MAN = 10;
		public const uint32 IF_TYPE_STARLAN = 11;
		public const uint32 IF_TYPE_PROTEON_10MBIT = 12;
		public const uint32 IF_TYPE_PROTEON_80MBIT = 13;
		public const uint32 IF_TYPE_HYPERCHANNEL = 14;
		public const uint32 IF_TYPE_FDDI = 15;
		public const uint32 IF_TYPE_LAP_B = 16;
		public const uint32 IF_TYPE_SDLC = 17;
		public const uint32 IF_TYPE_DS1 = 18;
		public const uint32 IF_TYPE_E1 = 19;
		public const uint32 IF_TYPE_BASIC_ISDN = 20;
		public const uint32 IF_TYPE_PRIMARY_ISDN = 21;
		public const uint32 IF_TYPE_PROP_POINT2POINT_SERIAL = 22;
		public const uint32 IF_TYPE_PPP = 23;
		public const uint32 IF_TYPE_SOFTWARE_LOOPBACK = 24;
		public const uint32 IF_TYPE_EON = 25;
		public const uint32 IF_TYPE_ETHERNET_3MBIT = 26;
		public const uint32 IF_TYPE_NSIP = 27;
		public const uint32 IF_TYPE_SLIP = 28;
		public const uint32 IF_TYPE_ULTRA = 29;
		public const uint32 IF_TYPE_DS3 = 30;
		public const uint32 IF_TYPE_SIP = 31;
		public const uint32 IF_TYPE_FRAMERELAY = 32;
		public const uint32 IF_TYPE_RS232 = 33;
		public const uint32 IF_TYPE_PARA = 34;
		public const uint32 IF_TYPE_ARCNET = 35;
		public const uint32 IF_TYPE_ARCNET_PLUS = 36;
		public const uint32 IF_TYPE_ATM = 37;
		public const uint32 IF_TYPE_MIO_X25 = 38;
		public const uint32 IF_TYPE_SONET = 39;
		public const uint32 IF_TYPE_X25_PLE = 40;
		public const uint32 IF_TYPE_ISO88022_LLC = 41;
		public const uint32 IF_TYPE_LOCALTALK = 42;
		public const uint32 IF_TYPE_SMDS_DXI = 43;
		public const uint32 IF_TYPE_FRAMERELAY_SERVICE = 44;
		public const uint32 IF_TYPE_V35 = 45;
		public const uint32 IF_TYPE_HSSI = 46;
		public const uint32 IF_TYPE_HIPPI = 47;
		public const uint32 IF_TYPE_MODEM = 48;
		public const uint32 IF_TYPE_AAL5 = 49;
		public const uint32 IF_TYPE_SONET_PATH = 50;
		public const uint32 IF_TYPE_SONET_VT = 51;
		public const uint32 IF_TYPE_SMDS_ICIP = 52;
		public const uint32 IF_TYPE_PROP_VIRTUAL = 53;
		public const uint32 IF_TYPE_PROP_MULTIPLEXOR = 54;
		public const uint32 IF_TYPE_IEEE80212 = 55;
		public const uint32 IF_TYPE_FIBRECHANNEL = 56;
		public const uint32 IF_TYPE_HIPPIINTERFACE = 57;
		public const uint32 IF_TYPE_FRAMERELAY_INTERCONNECT = 58;
		public const uint32 IF_TYPE_AFLANE_8023 = 59;
		public const uint32 IF_TYPE_AFLANE_8025 = 60;
		public const uint32 IF_TYPE_CCTEMUL = 61;
		public const uint32 IF_TYPE_FASTETHER = 62;
		public const uint32 IF_TYPE_ISDN = 63;
		public const uint32 IF_TYPE_V11 = 64;
		public const uint32 IF_TYPE_V36 = 65;
		public const uint32 IF_TYPE_G703_64K = 66;
		public const uint32 IF_TYPE_G703_2MB = 67;
		public const uint32 IF_TYPE_QLLC = 68;
		public const uint32 IF_TYPE_FASTETHER_FX = 69;
		public const uint32 IF_TYPE_CHANNEL = 70;
		public const uint32 IF_TYPE_IEEE80211 = 71;
		public const uint32 IF_TYPE_IBM370PARCHAN = 72;
		public const uint32 IF_TYPE_ESCON = 73;
		public const uint32 IF_TYPE_DLSW = 74;
		public const uint32 IF_TYPE_ISDN_S = 75;
		public const uint32 IF_TYPE_ISDN_U = 76;
		public const uint32 IF_TYPE_LAP_D = 77;
		public const uint32 IF_TYPE_IPSWITCH = 78;
		public const uint32 IF_TYPE_RSRB = 79;
		public const uint32 IF_TYPE_ATM_LOGICAL = 80;
		public const uint32 IF_TYPE_DS0 = 81;
		public const uint32 IF_TYPE_DS0_BUNDLE = 82;
		public const uint32 IF_TYPE_BSC = 83;
		public const uint32 IF_TYPE_ASYNC = 84;
		public const uint32 IF_TYPE_CNR = 85;
		public const uint32 IF_TYPE_ISO88025R_DTR = 86;
		public const uint32 IF_TYPE_EPLRS = 87;
		public const uint32 IF_TYPE_ARAP = 88;
		public const uint32 IF_TYPE_PROP_CNLS = 89;
		public const uint32 IF_TYPE_HOSTPAD = 90;
		public const uint32 IF_TYPE_TERMPAD = 91;
		public const uint32 IF_TYPE_FRAMERELAY_MPI = 92;
		public const uint32 IF_TYPE_X213 = 93;
		public const uint32 IF_TYPE_ADSL = 94;
		public const uint32 IF_TYPE_RADSL = 95;
		public const uint32 IF_TYPE_SDSL = 96;
		public const uint32 IF_TYPE_VDSL = 97;
		public const uint32 IF_TYPE_ISO88025_CRFPRINT = 98;
		public const uint32 IF_TYPE_MYRINET = 99;
		public const uint32 IF_TYPE_VOICE_EM = 100;
		public const uint32 IF_TYPE_VOICE_FXO = 101;
		public const uint32 IF_TYPE_VOICE_FXS = 102;
		public const uint32 IF_TYPE_VOICE_ENCAP = 103;
		public const uint32 IF_TYPE_VOICE_OVERIP = 104;
		public const uint32 IF_TYPE_ATM_DXI = 105;
		public const uint32 IF_TYPE_ATM_FUNI = 106;
		public const uint32 IF_TYPE_ATM_IMA = 107;
		public const uint32 IF_TYPE_PPPMULTILINKBUNDLE = 108;
		public const uint32 IF_TYPE_IPOVER_CDLC = 109;
		public const uint32 IF_TYPE_IPOVER_CLAW = 110;
		public const uint32 IF_TYPE_STACKTOSTACK = 111;
		public const uint32 IF_TYPE_VIRTUALIPADDRESS = 112;
		public const uint32 IF_TYPE_MPC = 113;
		public const uint32 IF_TYPE_IPOVER_ATM = 114;
		public const uint32 IF_TYPE_ISO88025_FIBER = 115;
		public const uint32 IF_TYPE_TDLC = 116;
		public const uint32 IF_TYPE_GIGABITETHERNET = 117;
		public const uint32 IF_TYPE_HDLC = 118;
		public const uint32 IF_TYPE_LAP_F = 119;
		public const uint32 IF_TYPE_V37 = 120;
		public const uint32 IF_TYPE_X25_MLP = 121;
		public const uint32 IF_TYPE_X25_HUNTGROUP = 122;
		public const uint32 IF_TYPE_TRANSPHDLC = 123;
		public const uint32 IF_TYPE_INTERLEAVE = 124;
		public const uint32 IF_TYPE_FAST = 125;
		public const uint32 IF_TYPE_IP = 126;
		public const uint32 IF_TYPE_DOCSCABLE_MACLAYER = 127;
		public const uint32 IF_TYPE_DOCSCABLE_DOWNSTREAM = 128;
		public const uint32 IF_TYPE_DOCSCABLE_UPSTREAM = 129;
		public const uint32 IF_TYPE_A12MPPSWITCH = 130;
		public const uint32 IF_TYPE_TUNNEL = 131;
		public const uint32 IF_TYPE_COFFEE = 132;
		public const uint32 IF_TYPE_CES = 133;
		public const uint32 IF_TYPE_ATM_SUBINTERFACE = 134;
		public const uint32 IF_TYPE_L2_VLAN = 135;
		public const uint32 IF_TYPE_L3_IPVLAN = 136;
		public const uint32 IF_TYPE_L3_IPXVLAN = 137;
		public const uint32 IF_TYPE_DIGITALPOWERLINE = 138;
		public const uint32 IF_TYPE_MEDIAMAILOVERIP = 139;
		public const uint32 IF_TYPE_DTM = 140;
		public const uint32 IF_TYPE_DCN = 141;
		public const uint32 IF_TYPE_IPFORWARD = 142;
		public const uint32 IF_TYPE_MSDSL = 143;
		public const uint32 IF_TYPE_IEEE1394 = 144;
		public const uint32 IF_TYPE_IF_GSN = 145;
		public const uint32 IF_TYPE_DVBRCC_MACLAYER = 146;
		public const uint32 IF_TYPE_DVBRCC_DOWNSTREAM = 147;
		public const uint32 IF_TYPE_DVBRCC_UPSTREAM = 148;
		public const uint32 IF_TYPE_ATM_VIRTUAL = 149;
		public const uint32 IF_TYPE_MPLS_TUNNEL = 150;
		public const uint32 IF_TYPE_SRP = 151;
		public const uint32 IF_TYPE_VOICEOVERATM = 152;
		public const uint32 IF_TYPE_VOICEOVERFRAMERELAY = 153;
		public const uint32 IF_TYPE_IDSL = 154;
		public const uint32 IF_TYPE_COMPOSITELINK = 155;
		public const uint32 IF_TYPE_SS7_SIGLINK = 156;
		public const uint32 IF_TYPE_PROP_WIRELESS_P2P = 157;
		public const uint32 IF_TYPE_FR_FORWARD = 158;
		public const uint32 IF_TYPE_RFC1483 = 159;
		public const uint32 IF_TYPE_USB = 160;
		public const uint32 IF_TYPE_IEEE8023AD_LAG = 161;
		public const uint32 IF_TYPE_BGP_POLICY_ACCOUNTING = 162;
		public const uint32 IF_TYPE_FRF16_MFR_BUNDLE = 163;
		public const uint32 IF_TYPE_H323_GATEKEEPER = 164;
		public const uint32 IF_TYPE_H323_PROXY = 165;
		public const uint32 IF_TYPE_MPLS = 166;
		public const uint32 IF_TYPE_MF_SIGLINK = 167;
		public const uint32 IF_TYPE_HDSL2 = 168;
		public const uint32 IF_TYPE_SHDSL = 169;
		public const uint32 IF_TYPE_DS1_FDL = 170;
		public const uint32 IF_TYPE_POS = 171;
		public const uint32 IF_TYPE_DVB_ASI_IN = 172;
		public const uint32 IF_TYPE_DVB_ASI_OUT = 173;
		public const uint32 IF_TYPE_PLC = 174;
		public const uint32 IF_TYPE_NFAS = 175;
		public const uint32 IF_TYPE_TR008 = 176;
		public const uint32 IF_TYPE_GR303_RDT = 177;
		public const uint32 IF_TYPE_GR303_IDT = 178;
		public const uint32 IF_TYPE_ISUP = 179;
		public const uint32 IF_TYPE_PROP_DOCS_WIRELESS_MACLAYER = 180;
		public const uint32 IF_TYPE_PROP_DOCS_WIRELESS_DOWNSTREAM = 181;
		public const uint32 IF_TYPE_PROP_DOCS_WIRELESS_UPSTREAM = 182;
		public const uint32 IF_TYPE_HIPERLAN2 = 183;
		public const uint32 IF_TYPE_PROP_BWA_P2MP = 184;
		public const uint32 IF_TYPE_SONET_OVERHEAD_CHANNEL = 185;
		public const uint32 IF_TYPE_DIGITAL_WRAPPER_OVERHEAD_CHANNEL = 186;
		public const uint32 IF_TYPE_AAL2 = 187;
		public const uint32 IF_TYPE_RADIO_MAC = 188;
		public const uint32 IF_TYPE_ATM_RADIO = 189;
		public const uint32 IF_TYPE_IMT = 190;
		public const uint32 IF_TYPE_MVL = 191;
		public const uint32 IF_TYPE_REACH_DSL = 192;
		public const uint32 IF_TYPE_FR_DLCI_ENDPT = 193;
		public const uint32 IF_TYPE_ATM_VCI_ENDPT = 194;
		public const uint32 IF_TYPE_OPTICAL_CHANNEL = 195;
		public const uint32 IF_TYPE_OPTICAL_TRANSPORT = 196;
		public const uint32 IF_TYPE_IEEE80216_WMAN = 237;
		public const uint32 IF_TYPE_WWANPP = 243;
		public const uint32 IF_TYPE_WWANPP2 = 244;
		public const uint32 IF_TYPE_IEEE802154 = 259;
		public const uint32 IF_TYPE_XBOX_WIRELESS = 281;
		public const uint32 MAX_IF_TYPE = 281;
		public const uint32 IF_CHECK_NONE = 0;
		public const uint32 IF_CHECK_MCAST = 1;
		public const uint32 IF_CHECK_SEND = 2;
		public const uint32 IF_CONNECTION_DEDICATED = 1;
		public const uint32 IF_CONNECTION_PASSIVE = 2;
		public const uint32 IF_CONNECTION_DEMAND = 3;
		public const uint32 IF_ADMIN_STATUS_UP = 1;
		public const uint32 IF_ADMIN_STATUS_DOWN = 2;
		public const uint32 IF_ADMIN_STATUS_TESTING = 3;
		public const uint32 MIB_IF_TYPE_OTHER = 1;
		public const uint32 MIB_IF_TYPE_ETHERNET = 6;
		public const uint32 MIB_IF_TYPE_TOKENRING = 9;
		public const uint32 MIB_IF_TYPE_FDDI = 15;
		public const uint32 MIB_IF_TYPE_PPP = 23;
		public const uint32 MIB_IF_TYPE_LOOPBACK = 24;
		public const uint32 MIB_IF_TYPE_SLIP = 28;
		public const uint32 MIB_IF_ADMIN_STATUS_UP = 1;
		public const uint32 MIB_IF_ADMIN_STATUS_DOWN = 2;
		public const uint32 MIB_IF_ADMIN_STATUS_TESTING = 3;
		public const uint32 MIB_IPADDR_PRIMARY = 1;
		public const uint32 MIB_IPADDR_DYNAMIC = 4;
		public const uint32 MIB_IPADDR_DISCONNECTED = 8;
		public const uint32 MIB_IPADDR_DELETED = 64;
		public const uint32 MIB_IPADDR_TRANSIENT = 128;
		public const uint32 MIB_IPADDR_DNS_ELIGIBLE = 256;
		public const uint32 MIB_IPROUTE_METRIC_UNUSED = 4294967295;
		public const uint32 MIB_USE_CURRENT_TTL = 4294967295;
		public const uint32 MIB_USE_CURRENT_FORWARDING = 4294967295;
		public const uint32 ICMP6_INFOMSG_MASK = 128;
		public const uint32 IPRTRMGR_PID = 10000;
		public const uint32 IF_NUMBER = 0;
		public const uint32 IF_TABLE = 1;
		public const uint32 IF_ROW = 2;
		public const uint32 IP_STATS = 3;
		public const uint32 IP_ADDRTABLE = 4;
		public const uint32 IP_ADDRROW = 5;
		public const uint32 IP_FORWARDNUMBER = 6;
		public const uint32 IP_FORWARDTABLE = 7;
		public const uint32 IP_FORWARDROW = 8;
		public const uint32 IP_NETTABLE = 9;
		public const uint32 IP_NETROW = 10;
		public const uint32 ICMP_STATS = 11;
		public const uint32 TCP_STATS = 12;
		public const uint32 TCP_TABLE = 13;
		public const uint32 TCP_ROW = 14;
		public const uint32 UDP_STATS = 15;
		public const uint32 UDP_TABLE = 16;
		public const uint32 UDP_ROW = 17;
		public const uint32 MCAST_MFE = 18;
		public const uint32 MCAST_MFE_STATS = 19;
		public const uint32 BEST_IF = 20;
		public const uint32 BEST_ROUTE = 21;
		public const uint32 PROXY_ARP = 22;
		public const uint32 MCAST_IF_ENTRY = 23;
		public const uint32 MCAST_GLOBAL = 24;
		public const uint32 IF_STATUS = 25;
		public const uint32 MCAST_BOUNDARY = 26;
		public const uint32 MCAST_SCOPE = 27;
		public const uint32 DEST_MATCHING = 28;
		public const uint32 DEST_LONGER = 29;
		public const uint32 DEST_SHORTER = 30;
		public const uint32 ROUTE_MATCHING = 31;
		public const uint32 ROUTE_LONGER = 32;
		public const uint32 ROUTE_SHORTER = 33;
		public const uint32 ROUTE_STATE = 34;
		public const uint32 MCAST_MFE_STATS_EX = 35;
		public const uint32 IP6_STATS = 36;
		public const uint32 UDP6_STATS = 37;
		public const uint32 TCP6_STATS = 38;
		public const uint32 NUMBER_OF_EXPORTED_VARIABLES = 39;
		public const uint32 MAX_SCOPE_NAME_LEN = 255;
		public const uint32 MAX_MIB_OFFSET = 8;
		public const uint32 MIB_INVALID_TEREDO_PORT_NUMBER = 0;
		public const uint32 DNS_SETTINGS_VERSION1 = 1;
		public const uint32 DNS_SETTINGS_VERSION2 = 2;
		public const uint32 DNS_INTERFACE_SETTINGS_VERSION1 = 1;
		public const uint32 DNS_INTERFACE_SETTINGS_VERSION2 = 2;
		public const uint32 DNS_INTERFACE_SETTINGS_VERSION3 = 3;
		public const uint32 DNS_SETTING_IPV6 = 1;
		public const uint32 DNS_SETTING_NAMESERVER = 2;
		public const uint32 DNS_SETTING_SEARCHLIST = 4;
		public const uint32 DNS_SETTING_REGISTRATION_ENABLED = 8;
		public const uint32 DNS_SETTING_REGISTER_ADAPTER_NAME = 16;
		public const uint32 DNS_SETTING_DOMAIN = 32;
		public const uint32 DNS_SETTING_HOSTNAME = 64;
		public const uint32 DNS_SETTINGS_ENABLE_LLMNR = 128;
		public const uint32 DNS_SETTINGS_QUERY_ADAPTER_NAME = 256;
		public const uint32 DNS_SETTING_PROFILE_NAMESERVER = 512;
		public const uint32 DNS_SETTING_DISABLE_UNCONSTRAINED_QUERIES = 1024;
		public const uint32 DNS_SETTING_SUPPLEMENTAL_SEARCH_LIST = 2048;
		public const uint32 DNS_SETTING_DOH = 4096;
		public const uint32 DNS_SETTING_DOH_PROFILE = 8192;
		public const uint32 DNS_ENABLE_DOH = 1;
		public const uint32 DNS_DOH_POLICY_NOT_CONFIGURED = 4;
		public const uint32 DNS_DOH_POLICY_DISABLE = 8;
		public const uint32 DNS_DOH_POLICY_AUTO = 16;
		public const uint32 DNS_DOH_POLICY_REQUIRED = 32;
		public const uint32 DNS_SERVER_PROPERTY_VERSION1 = 1;
		public const uint32 DNS_DOH_SERVER_SETTINGS_ENABLE_AUTO = 1;
		public const uint32 DNS_DOH_SERVER_SETTINGS_ENABLE = 2;
		public const uint32 DNS_DOH_SERVER_SETTINGS_FALLBACK_TO_UDP = 4;
		public const uint32 DNS_DOH_AUTO_UPGRADE_SERVER = 8;
		public const uint32 TCPIP_OWNING_MODULE_SIZE = 16;
		public const uint32 FD_FLAGS_NOSYN = 1;
		public const uint32 FD_FLAGS_ALLFLAGS = 1;
		public const uint32 LB_SRC_ADDR_USE_SRCADDR_FLAG = 1;
		public const uint32 LB_SRC_ADDR_USE_DSTADDR_FLAG = 2;
		public const uint32 LB_DST_ADDR_USE_SRCADDR_FLAG = 4;
		public const uint32 LB_DST_ADDR_USE_DSTADDR_FLAG = 8;
		public const uint32 LB_SRC_MASK_LATE_FLAG = 16;
		public const uint32 LB_DST_MASK_LATE_FLAG = 32;
		public const uint32 ERROR_BASE = 23000;
		public const uint32 PFERROR_NO_PF_INTERFACE = 23000;
		public const uint32 PFERROR_NO_FILTERS_GIVEN = 23001;
		public const uint32 PFERROR_BUFFER_TOO_SMALL = 23002;
		public const uint32 ERROR_IPV6_NOT_IMPLEMENTED = 23003;
		public const uint32 IP_EXPORT_INCLUDED = 1;
		public const uint32 MAX_ADAPTER_NAME = 128;
		public const uint32 IP_STATUS_BASE = 11000;
		public const uint32 IP_SUCCESS = 0;
		public const uint32 IP_BUF_TOO_SMALL = 11001;
		public const uint32 IP_DEST_NET_UNREACHABLE = 11002;
		public const uint32 IP_DEST_HOST_UNREACHABLE = 11003;
		public const uint32 IP_DEST_PROT_UNREACHABLE = 11004;
		public const uint32 IP_DEST_PORT_UNREACHABLE = 11005;
		public const uint32 IP_NO_RESOURCES = 11006;
		public const uint32 IP_BAD_OPTION = 11007;
		public const uint32 IP_HW_ERROR = 11008;
		public const uint32 IP_PACKET_TOO_BIG = 11009;
		public const uint32 IP_REQ_TIMED_OUT = 11010;
		public const uint32 IP_BAD_REQ = 11011;
		public const uint32 IP_BAD_ROUTE = 11012;
		public const uint32 IP_TTL_EXPIRED_TRANSIT = 11013;
		public const uint32 IP_TTL_EXPIRED_REASSEM = 11014;
		public const uint32 IP_PARAM_PROBLEM = 11015;
		public const uint32 IP_SOURCE_QUENCH = 11016;
		public const uint32 IP_OPTION_TOO_BIG = 11017;
		public const uint32 IP_BAD_DESTINATION = 11018;
		public const uint32 IP_DEST_NO_ROUTE = 11002;
		public const uint32 IP_DEST_ADDR_UNREACHABLE = 11003;
		public const uint32 IP_DEST_PROHIBITED = 11004;
		public const uint32 IP_HOP_LIMIT_EXCEEDED = 11013;
		public const uint32 IP_REASSEMBLY_TIME_EXCEEDED = 11014;
		public const uint32 IP_PARAMETER_PROBLEM = 11015;
		public const uint32 IP_DEST_UNREACHABLE = 11040;
		public const uint32 IP_TIME_EXCEEDED = 11041;
		public const uint32 IP_BAD_HEADER = 11042;
		public const uint32 IP_UNRECOGNIZED_NEXT_HEADER = 11043;
		public const uint32 IP_ICMP_ERROR = 11044;
		public const uint32 IP_DEST_SCOPE_MISMATCH = 11045;
		public const uint32 IP_ADDR_DELETED = 11019;
		public const uint32 IP_SPEC_MTU_CHANGE = 11020;
		public const uint32 IP_MTU_CHANGE = 11021;
		public const uint32 IP_UNLOAD = 11022;
		public const uint32 IP_ADDR_ADDED = 11023;
		public const uint32 IP_MEDIA_CONNECT = 11024;
		public const uint32 IP_MEDIA_DISCONNECT = 11025;
		public const uint32 IP_BIND_ADAPTER = 11026;
		public const uint32 IP_UNBIND_ADAPTER = 11027;
		public const uint32 IP_DEVICE_DOES_NOT_EXIST = 11028;
		public const uint32 IP_DUPLICATE_ADDRESS = 11029;
		public const uint32 IP_INTERFACE_METRIC_CHANGE = 11030;
		public const uint32 IP_RECONFIG_SECFLTR = 11031;
		public const uint32 IP_NEGOTIATING_IPSEC = 11032;
		public const uint32 IP_INTERFACE_WOL_CAPABILITY_CHANGE = 11033;
		public const uint32 IP_DUPLICATE_IPADD = 11034;
		public const uint32 IP_GENERAL_FAILURE = 11050;
		public const uint32 MAX_IP_STATUS = 11050;
		public const uint32 IP_PENDING = 11255;
		public const uint32 IP_FLAG_REVERSE = 1;
		public const uint32 IP_FLAG_DF = 2;
		public const uint32 MAX_OPT_SIZE = 40;
		public const uint32 IOCTL_IP_RTCHANGE_NOTIFY_REQUEST = 101;
		public const uint32 IOCTL_IP_ADDCHANGE_NOTIFY_REQUEST = 102;
		public const uint32 IOCTL_ARP_SEND_REQUEST = 103;
		public const uint32 IOCTL_IP_INTERFACE_INFO = 104;
		public const uint32 IOCTL_IP_GET_BEST_INTERFACE = 105;
		public const uint32 IOCTL_IP_UNIDIRECTIONAL_ADAPTER_ADDRESS = 106;
		public const uint32 NET_STRING_IPV4_ADDRESS = 1;
		public const uint32 NET_STRING_IPV4_SERVICE = 2;
		public const uint32 NET_STRING_IPV4_NETWORK = 4;
		public const uint32 NET_STRING_IPV6_ADDRESS = 8;
		public const uint32 NET_STRING_IPV6_ADDRESS_NO_SCOPE = 16;
		public const uint32 NET_STRING_IPV6_SERVICE = 32;
		public const uint32 NET_STRING_IPV6_SERVICE_NO_SCOPE = 64;
		public const uint32 NET_STRING_IPV6_NETWORK = 128;
		public const uint32 NET_STRING_NAMED_ADDRESS = 256;
		public const uint32 NET_STRING_NAMED_SERVICE = 512;
		public const uint32 MAX_ADAPTER_DESCRIPTION_LENGTH = 128;
		public const uint32 MAX_ADAPTER_NAME_LENGTH = 256;
		public const uint32 MAX_ADAPTER_ADDRESS_LENGTH = 8;
		public const uint32 DEFAULT_MINIMUM_ENTITIES = 32;
		public const uint32 MAX_HOSTNAME_LEN = 128;
		public const uint32 MAX_DOMAIN_NAME_LEN = 128;
		public const uint32 MAX_SCOPE_ID_LEN = 256;
		public const uint32 MAX_DHCPV6_DUID_LENGTH = 130;
		public const uint32 MAX_DNS_SUFFIX_STRING_LENGTH = 256;
		public const uint32 BROADCAST_NODETYPE = 1;
		public const uint32 PEER_TO_PEER_NODETYPE = 2;
		public const uint32 MIXED_NODETYPE = 4;
		public const uint32 HYBRID_NODETYPE = 8;
		public const uint32 IP_ADAPTER_ADDRESS_DNS_ELIGIBLE = 1;
		public const uint32 IP_ADAPTER_ADDRESS_TRANSIENT = 2;
		public const uint32 IP_ADAPTER_DDNS_ENABLED = 1;
		public const uint32 IP_ADAPTER_REGISTER_ADAPTER_SUFFIX = 2;
		public const uint32 IP_ADAPTER_DHCP_ENABLED = 4;
		public const uint32 IP_ADAPTER_RECEIVE_ONLY = 8;
		public const uint32 IP_ADAPTER_NO_MULTICAST = 16;
		public const uint32 IP_ADAPTER_IPV6_OTHER_STATEFUL_CONFIG = 32;
		public const uint32 IP_ADAPTER_NETBIOS_OVER_TCPIP_ENABLED = 64;
		public const uint32 IP_ADAPTER_IPV4_ENABLED = 128;
		public const uint32 IP_ADAPTER_IPV6_ENABLED = 256;
		public const uint32 IP_ADAPTER_IPV6_MANAGE_ADDRESS_CONFIG = 512;
		public const uint32 GAA_FLAG_SKIP_DNS_INFO = 2048;
		public const uint32 IP_ROUTER_MANAGER_VERSION = 1;
		public const uint32 IP_GENERAL_INFO_BASE = 4294901760;
		public const uint32 IP_IN_FILTER_INFO = 4294901761;
		public const uint32 IP_OUT_FILTER_INFO = 4294901762;
		public const uint32 IP_GLOBAL_INFO = 4294901763;
		public const uint32 IP_INTERFACE_STATUS_INFO = 4294901764;
		public const uint32 IP_ROUTE_INFO = 4294901765;
		public const uint32 IP_PROT_PRIORITY_INFO = 4294901766;
		public const uint32 IP_ROUTER_DISC_INFO = 4294901767;
		public const uint32 IP_DEMAND_DIAL_FILTER_INFO = 4294901769;
		public const uint32 IP_MCAST_HEARBEAT_INFO = 4294901770;
		public const uint32 IP_MCAST_BOUNDARY_INFO = 4294901771;
		public const uint32 IP_IPINIP_CFG_INFO = 4294901772;
		public const uint32 IP_IFFILTER_INFO = 4294901773;
		public const uint32 IP_MCAST_LIMIT_INFO = 4294901774;
		public const uint32 IPV6_GLOBAL_INFO = 4294901775;
		public const uint32 IPV6_ROUTE_INFO = 4294901776;
		public const uint32 IP_IN_FILTER_INFO_V6 = 4294901777;
		public const uint32 IP_OUT_FILTER_INFO_V6 = 4294901778;
		public const uint32 IP_DEMAND_DIAL_FILTER_INFO_V6 = 4294901779;
		public const uint32 IP_IFFILTER_INFO_V6 = 4294901780;
		public const uint32 IP_FILTER_ENABLE_INFO = 4294901781;
		public const uint32 IP_FILTER_ENABLE_INFO_V6 = 4294901782;
		public const uint32 IP_PROT_PRIORITY_INFO_EX = 4294901783;
		
		// --- Typedefs ---
		
		public typealias IcmpHandle = int;
		public typealias HIFTIMESTAMPCHANGE = int;
		
		// --- Enums ---
		
		public enum ADDRESS_FAMILY : uint32
		{
			INET = 2,
			INET6 = 23,
			UNSPEC = 0,
		}
		public enum GET_ADAPTERS_ADDRESSES_FLAGS : uint32
		{
			SKIP_UNICAST = 1,
			SKIP_ANYCAST = 2,
			SKIP_MULTICAST = 4,
			SKIP_DNS_SERVER = 8,
			INCLUDE_PREFIX = 16,
			SKIP_FRIENDLY_NAME = 32,
			INCLUDE_WINS_INFO = 64,
			INCLUDE_GATEWAYS = 128,
			INCLUDE_ALL_INTERFACES = 256,
			INCLUDE_ALL_COMPARTMENTS = 512,
			INCLUDE_TUNNEL_BINDINGORDER = 1024,
		}
		[AllowDuplicates]
		public enum IF_ACCESS_TYPE : int32
		{
			LOOPBACK = 1,
			BROADCAST = 2,
			POINT_TO_POINT = 3,
			POINTTOPOINT = 3,
			POINT_TO_MULTI_POINT = 4,
			POINTTOMULTIPOINT = 4,
		}
		public enum INTERNAL_IF_OPER_STATUS : int32
		{
			NON_OPERATIONAL = 0,
			UNREACHABLE = 1,
			DISCONNECTED = 2,
			CONNECTING = 3,
			CONNECTED = 4,
			OPERATIONAL = 5,
		}
		public enum NET_IF_OPER_STATUS : int32
		{
			UP = 1,
			DOWN = 2,
			TESTING = 3,
			UNKNOWN = 4,
			DORMANT = 5,
			NOT_PRESENT = 6,
			LOWER_LAYER_DOWN = 7,
		}
		public enum NET_IF_ADMIN_STATUS : int32
		{
			UP = 1,
			DOWN = 2,
			TESTING = 3,
		}
		public enum NET_IF_RCV_ADDRESS_TYPE : int32
		{
			OTHER = 1,
			VOLATILE = 2,
			NON_VOLATILE = 3,
		}
		public enum NET_IF_CONNECTION_TYPE : int32
		{
			DEDICATED = 1,
			PASSIVE = 2,
			DEMAND = 3,
			MAXIMUM = 4,
		}
		public enum TUNNEL_TYPE : int32
		{
			NONE = 0,
			OTHER = 1,
			DIRECT = 2,
			_6TO4 = 11,
			ISATAP = 13,
			TEREDO = 14,
			IPHTTPS = 15,
		}
		public enum NET_IF_ACCESS_TYPE : int32
		{
			LOOPBACK = 1,
			BROADCAST = 2,
			POINT_TO_POINT = 3,
			POINT_TO_MULTI_POINT = 4,
			MAXIMUM = 5,
		}
		public enum NET_IF_DIRECTION_TYPE : int32
		{
			SENDRECEIVE = 0,
			SENDONLY = 1,
			RECEIVEONLY = 2,
			MAXIMUM = 3,
		}
		public enum NET_IF_MEDIA_CONNECT_STATE : int32
		{
			Unknown = 0,
			Connected = 1,
			Disconnected = 2,
		}
		public enum NET_IF_MEDIA_DUPLEX_STATE : int32
		{
			Unknown = 0,
			Half = 1,
			Full = 2,
		}
		public enum IF_ADMINISTRATIVE_STATE : int32
		{
			DISABLED = 0,
			ENABLED = 1,
			DEMANDDIAL = 2,
		}
		public enum IF_OPER_STATUS : int32
		{
			Up = 1,
			Down = 2,
			Testing = 3,
			Unknown = 4,
			Dormant = 5,
			NotPresent = 6,
			LowerLayerDown = 7,
		}
		public enum MIB_NOTIFICATION_TYPE : int32
		{
			ParameterNotification = 0,
			AddInstance = 1,
			DeleteInstance = 2,
			InitialNotification = 3,
		}
		public enum MIB_IF_ENTRY_LEVEL : int32
		{
			Normal = 0,
			NormalWithoutStatistics = 2,
		}
		public enum MIB_IF_TABLE_LEVEL : int32
		{
			Normal = 0,
			Raw = 1,
			NormalWithoutStatistics = 2,
		}
		public enum DNS_SERVER_PROPERTY_TYPE : int32
		{
			InvalidProperty = 0,
			DohProperty = 1,
		}
		public enum MIB_IPFORWARD_TYPE : int32
		{
			OTHER = 1,
			INVALID = 2,
			DIRECT = 3,
			INDIRECT = 4,
		}
		public enum MIB_IPNET_TYPE : int32
		{
			OTHER = 1,
			INVALID = 2,
			DYNAMIC = 3,
			STATIC = 4,
		}
		public enum MIB_IPSTATS_FORWARDING : int32
		{
			FORWARDING = 1,
			NOT_FORWARDING = 2,
		}
		public enum ICMP6_TYPE : int32
		{
			ICMP6_DST_UNREACH = 1,
			ICMP6_PACKET_TOO_BIG = 2,
			ICMP6_TIME_EXCEEDED = 3,
			ICMP6_PARAM_PROB = 4,
			ICMP6_ECHO_REQUEST = 128,
			ICMP6_ECHO_REPLY = 129,
			ICMP6_MEMBERSHIP_QUERY = 130,
			ICMP6_MEMBERSHIP_REPORT = 131,
			ICMP6_MEMBERSHIP_REDUCTION = 132,
			ND_ROUTER_SOLICIT = 133,
			ND_ROUTER_ADVERT = 134,
			ND_NEIGHBOR_SOLICIT = 135,
			ND_NEIGHBOR_ADVERT = 136,
			ND_REDIRECT = 137,
			ICMP6_V2_MEMBERSHIP_REPORT = 143,
		}
		public enum ICMP4_TYPE : int32
		{
			ECHO_REPLY = 0,
			DST_UNREACH = 3,
			SOURCE_QUENCH = 4,
			REDIRECT = 5,
			ECHO_REQUEST = 8,
			ROUTER_ADVERT = 9,
			ROUTER_SOLICIT = 10,
			TIME_EXCEEDED = 11,
			PARAM_PROB = 12,
			TIMESTAMP_REQUEST = 13,
			TIMESTAMP_REPLY = 14,
			MASK_REQUEST = 17,
			MASK_REPLY = 18,
		}
		public enum MIB_TCP_STATE : int32
		{
			CLOSED = 1,
			LISTEN = 2,
			SYN_SENT = 3,
			SYN_RCVD = 4,
			ESTAB = 5,
			FIN_WAIT1 = 6,
			FIN_WAIT2 = 7,
			CLOSE_WAIT = 8,
			CLOSING = 9,
			LAST_ACK = 10,
			TIME_WAIT = 11,
			DELETE_TCB = 12,
			RESERVED = 100,
		}
		public enum TCP_CONNECTION_OFFLOAD_STATE : int32
		{
			InHost = 0,
			Offloading = 1,
			Offloaded = 2,
			Uploading = 3,
			Max = 4,
		}
		[AllowDuplicates]
		public enum TCP_RTO_ALGORITHM : int32
		{
			TcpRtoAlgorithmOther = 1,
			TcpRtoAlgorithmConstant = 2,
			TcpRtoAlgorithmRsre = 3,
			TcpRtoAlgorithmVanj = 4,
			MIB_TCP_RTO_OTHER = 1,
			MIB_TCP_RTO_CONSTANT = 2,
			MIB_TCP_RTO_RSRE = 3,
			MIB_TCP_RTO_VANJ = 4,
		}
		public enum TCP_TABLE_CLASS : int32
		{
			BASIC_LISTENER = 0,
			BASIC_CONNECTIONS = 1,
			BASIC_ALL = 2,
			OWNER_PID_LISTENER = 3,
			OWNER_PID_CONNECTIONS = 4,
			OWNER_PID_ALL = 5,
			OWNER_MODULE_LISTENER = 6,
			OWNER_MODULE_CONNECTIONS = 7,
			OWNER_MODULE_ALL = 8,
		}
		public enum UDP_TABLE_CLASS : int32
		{
			BASIC = 0,
			OWNER_PID = 1,
			OWNER_MODULE = 2,
		}
		public enum TCPIP_OWNER_MODULE_INFO_CLASS : int32
		{
			BASIC = 0,
		}
		public enum TCP_ESTATS_TYPE : int32
		{
			SynOpts = 0,
			Data = 1,
			SndCong = 2,
			Path = 3,
			SendBuff = 4,
			Rec = 5,
			ObsRec = 6,
			Bandwidth = 7,
			FineRtt = 8,
			Maximum = 9,
		}
		public enum TCP_BOOLEAN_OPTIONAL : int32
		{
			Disabled = 0,
			Enabled = 1,
			Unchanged = -1,
		}
		public enum TCP_SOFT_ERROR : int32
		{
			None = 0,
			BelowDataWindow = 1,
			AboveDataWindow = 2,
			BelowAckWindow = 3,
			AboveAckWindow = 4,
			BelowTsWindow = 5,
			AboveTsWindow = 6,
			DataChecksumError = 7,
			DataLengthError = 8,
			MaxSoftError = 9,
		}
		public enum NET_ADDRESS_FORMAT : int32
		{
			FORMAT_UNSPECIFIED = 0,
			DNS_NAME = 1,
			IPV4 = 2,
			IPV6 = 3,
		}
		public enum GLOBAL_FILTER : int32
		{
			FRAGMENTS = 2,
			STRONGHOST = 8,
			FRAGCACHE = 9,
		}
		public enum PFFORWARD_ACTION : int32
		{
			FORWARD = 0,
			DROP = 1,
		}
		public enum PFADDRESSTYPE : int32
		{
			IPV4 = 0,
			IPV6 = 1,
		}
		public enum PFFRAMETYPE : int32
		{
			FILTER = 1,
			FRAG = 2,
			SPOOF = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PIPINTERFACE_CHANGE_CALLBACK(void* CallerContext, ref MIB_IPINTERFACE_ROW Row, MIB_NOTIFICATION_TYPE NotificationType);
		public function void PUNICAST_IPADDRESS_CHANGE_CALLBACK(void* CallerContext, MIB_UNICASTIPADDRESS_ROW* Row, MIB_NOTIFICATION_TYPE NotificationType);
		public function void PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK(void* CallerContext, ref MIB_UNICASTIPADDRESS_TABLE AddressTable);
		public function void PIPFORWARD_CHANGE_CALLBACK(void* CallerContext, MIB_IPFORWARD_ROW2* Row, MIB_NOTIFICATION_TYPE NotificationType);
		public function void PTEREDO_PORT_CHANGE_CALLBACK(void* CallerContext, uint16 Port, MIB_NOTIFICATION_TYPE NotificationType);
		public function void PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK(void* CallerContext, NL_NETWORK_CONNECTIVITY_HINT ConnectivityHint);
		public function void PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK(void* CallerContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct ip_option_information
		{
			public uint8 Ttl;
			public uint8 Tos;
			public uint8 Flags;
			public uint8 OptionsSize;
			public uint8* OptionsData;
		}
		[CRepr]
		public struct ip_option_information32
		{
			public uint8 Ttl;
			public uint8 Tos;
			public uint8 Flags;
			public uint8 OptionsSize;
			public uint8* OptionsData;
		}
		[CRepr]
		public struct icmp_echo_reply
		{
			public uint32 Address;
			public uint32 Status;
			public uint32 RoundTripTime;
			public uint16 DataSize;
			public uint16 Reserved;
			public void* Data;
			public ip_option_information Options;
		}
		[CRepr]
		public struct icmp_echo_reply32
		{
			public uint32 Address;
			public uint32 Status;
			public uint32 RoundTripTime;
			public uint16 DataSize;
			public uint16 Reserved;
			public void* Data;
			public ip_option_information32 Options;
		}
		[CRepr, Packed(1)]
		public struct IPV6_ADDRESS_EX
		{
			public uint16 sin6_port;
			public uint32 sin6_flowinfo;
			public uint16[8] sin6_addr;
			public uint32 sin6_scope_id;
		}
		[CRepr]
		public struct icmpv6_echo_reply_lh
		{
			public IPV6_ADDRESS_EX Address;
			public uint32 Status;
			public uint32 RoundTripTime;
		}
		[CRepr]
		public struct arp_send_reply
		{
			public uint32 DestAddress;
			public uint32 SrcAddress;
		}
		[CRepr]
		public struct tcp_reserve_port_range
		{
			public uint16 UpperRange;
			public uint16 LowerRange;
		}
		[CRepr]
		public struct IP_ADAPTER_INDEX_MAP
		{
			public uint32 Index;
			public char16[128] Name;
		}
		[CRepr]
		public struct IP_INTERFACE_INFO
		{
			public int32 NumAdapters;
			public IP_ADAPTER_INDEX_MAP[0] Adapter;
		}
		[CRepr]
		public struct IP_UNIDIRECTIONAL_ADAPTER_ADDRESS
		{
			public uint32 NumAdapters;
			public uint32[0] Address;
		}
		[CRepr]
		public struct IP_ADAPTER_ORDER_MAP
		{
			public uint32 NumAdapters;
			public uint32[0] AdapterOrder;
		}
		[CRepr]
		public struct IP_MCAST_COUNTER_INFO
		{
			public uint64 InMcastOctets;
			public uint64 OutMcastOctets;
			public uint64 InMcastPkts;
			public uint64 OutMcastPkts;
		}
		[CRepr]
		public struct NET_IF_RCV_ADDRESS_LH
		{
			public NET_IF_RCV_ADDRESS_TYPE ifRcvAddressType;
			public uint16 ifRcvAddressLength;
			public uint16 ifRcvAddressOffset;
		}
		[CRepr]
		public struct NET_IF_ALIAS_LH
		{
			public uint16 ifAliasLength;
			public uint16 ifAliasOffset;
		}
		[CRepr, Union]
		public struct NET_LUID_LH
		{
			public uint64 Value;
			public _Info_e__Struct Info;
			
			[CRepr]
			public struct _Info_e__Struct
			{
				public uint64 _bitfield;
			}
		}
		[CRepr]
		public struct NET_PHYSICAL_LOCATION_LH
		{
			public uint32 BusNumber;
			public uint32 SlotNumber;
			public uint32 FunctionNumber;
		}
		[CRepr]
		public struct IF_COUNTED_STRING_LH
		{
			public uint16 Length;
			public char16[257] String;
		}
		[CRepr]
		public struct IF_PHYSICAL_ADDRESS_LH
		{
			public uint16 Length;
			public uint8[32] Address;
		}
		[CRepr]
		public struct NDIS_INTERFACE_INFORMATION
		{
			public NET_IF_OPER_STATUS ifOperStatus;
			public uint32 ifOperStatusFlags;
			public NET_IF_MEDIA_CONNECT_STATE MediaConnectState;
			public NET_IF_MEDIA_DUPLEX_STATE MediaDuplexState;
			public uint32 ifMtu;
			public BOOLEAN ifPromiscuousMode;
			public BOOLEAN ifDeviceWakeUpEnable;
			public uint64 XmitLinkSpeed;
			public uint64 RcvLinkSpeed;
			public uint64 ifLastChange;
			public uint64 ifCounterDiscontinuityTime;
			public uint64 ifInUnknownProtos;
			public uint64 ifInDiscards;
			public uint64 ifInErrors;
			public uint64 ifHCInOctets;
			public uint64 ifHCInUcastPkts;
			public uint64 ifHCInMulticastPkts;
			public uint64 ifHCInBroadcastPkts;
			public uint64 ifHCOutOctets;
			public uint64 ifHCOutUcastPkts;
			public uint64 ifHCOutMulticastPkts;
			public uint64 ifHCOutBroadcastPkts;
			public uint64 ifOutErrors;
			public uint64 ifOutDiscards;
			public uint64 ifHCInUcastOctets;
			public uint64 ifHCInMulticastOctets;
			public uint64 ifHCInBroadcastOctets;
			public uint64 ifHCOutUcastOctets;
			public uint64 ifHCOutMulticastOctets;
			public uint64 ifHCOutBroadcastOctets;
			public uint32 CompartmentId;
			public uint32 SupportedStatistics;
		}
		[CRepr]
		public struct MIB_IF_ROW2
		{
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public Guid InterfaceGuid;
			public char16[257] Alias;
			public char16[257] Description;
			public uint32 PhysicalAddressLength;
			public uint8[32] PhysicalAddress;
			public uint8[32] PermanentPhysicalAddress;
			public uint32 Mtu;
			public uint32 Type;
			public TUNNEL_TYPE TunnelType;
			public NDIS_MEDIUM MediaType;
			public NDIS_PHYSICAL_MEDIUM PhysicalMediumType;
			public NET_IF_ACCESS_TYPE AccessType;
			public NET_IF_DIRECTION_TYPE DirectionType;
			public _InterfaceAndOperStatusFlags_e__Struct InterfaceAndOperStatusFlags;
			public IF_OPER_STATUS OperStatus;
			public NET_IF_ADMIN_STATUS AdminStatus;
			public NET_IF_MEDIA_CONNECT_STATE MediaConnectState;
			public Guid NetworkGuid;
			public NET_IF_CONNECTION_TYPE ConnectionType;
			public uint64 TransmitLinkSpeed;
			public uint64 ReceiveLinkSpeed;
			public uint64 InOctets;
			public uint64 InUcastPkts;
			public uint64 InNUcastPkts;
			public uint64 InDiscards;
			public uint64 InErrors;
			public uint64 InUnknownProtos;
			public uint64 InUcastOctets;
			public uint64 InMulticastOctets;
			public uint64 InBroadcastOctets;
			public uint64 OutOctets;
			public uint64 OutUcastPkts;
			public uint64 OutNUcastPkts;
			public uint64 OutDiscards;
			public uint64 OutErrors;
			public uint64 OutUcastOctets;
			public uint64 OutMulticastOctets;
			public uint64 OutBroadcastOctets;
			public uint64 OutQLen;
			
			[CRepr]
			public struct _InterfaceAndOperStatusFlags_e__Struct
			{
				public uint8 _bitfield;
			}
		}
		[CRepr]
		public struct MIB_IF_TABLE2
		{
			public uint32 NumEntries;
			public MIB_IF_ROW2[0] Table;
		}
		[CRepr]
		public struct MIB_IPINTERFACE_ROW
		{
			public uint16 Family;
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public uint32 MaxReassemblySize;
			public uint64 InterfaceIdentifier;
			public uint32 MinRouterAdvertisementInterval;
			public uint32 MaxRouterAdvertisementInterval;
			public BOOLEAN AdvertisingEnabled;
			public BOOLEAN ForwardingEnabled;
			public BOOLEAN WeakHostSend;
			public BOOLEAN WeakHostReceive;
			public BOOLEAN UseAutomaticMetric;
			public BOOLEAN UseNeighborUnreachabilityDetection;
			public BOOLEAN ManagedAddressConfigurationSupported;
			public BOOLEAN OtherStatefulConfigurationSupported;
			public BOOLEAN AdvertiseDefaultRoute;
			public NL_ROUTER_DISCOVERY_BEHAVIOR RouterDiscoveryBehavior;
			public uint32 DadTransmits;
			public uint32 BaseReachableTime;
			public uint32 RetransmitTime;
			public uint32 PathMtuDiscoveryTimeout;
			public NL_LINK_LOCAL_ADDRESS_BEHAVIOR LinkLocalAddressBehavior;
			public uint32 LinkLocalAddressTimeout;
			public uint32[16] ZoneIndices;
			public uint32 SitePrefixLength;
			public uint32 Metric;
			public uint32 NlMtu;
			public BOOLEAN Connected;
			public BOOLEAN SupportsWakeUpPatterns;
			public BOOLEAN SupportsNeighborDiscovery;
			public BOOLEAN SupportsRouterDiscovery;
			public uint32 ReachableTime;
			public NL_INTERFACE_OFFLOAD_ROD TransmitOffload;
			public NL_INTERFACE_OFFLOAD_ROD ReceiveOffload;
			public BOOLEAN DisableDefaultRoutes;
		}
		[CRepr]
		public struct MIB_IPINTERFACE_TABLE
		{
			public uint32 NumEntries;
			public MIB_IPINTERFACE_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_IFSTACK_ROW
		{
			public uint32 HigherLayerInterfaceIndex;
			public uint32 LowerLayerInterfaceIndex;
		}
		[CRepr]
		public struct MIB_INVERTEDIFSTACK_ROW
		{
			public uint32 LowerLayerInterfaceIndex;
			public uint32 HigherLayerInterfaceIndex;
		}
		[CRepr]
		public struct MIB_IFSTACK_TABLE
		{
			public uint32 NumEntries;
			public MIB_IFSTACK_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_INVERTEDIFSTACK_TABLE
		{
			public uint32 NumEntries;
			public MIB_INVERTEDIFSTACK_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES
		{
			public NL_BANDWIDTH_INFORMATION InboundBandwidthInformation;
			public NL_BANDWIDTH_INFORMATION OutboundBandwidthInformation;
		}
		[CRepr]
		public struct MIB_UNICASTIPADDRESS_ROW
		{
			public SOCKADDR_INET Address;
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public NL_PREFIX_ORIGIN PrefixOrigin;
			public NL_SUFFIX_ORIGIN SuffixOrigin;
			public uint32 ValidLifetime;
			public uint32 PreferredLifetime;
			public uint8 OnLinkPrefixLength;
			public BOOLEAN SkipAsSource;
			public NL_DAD_STATE DadState;
			public SCOPE_ID ScopeId;
			public LARGE_INTEGER CreationTimeStamp;
		}
		[CRepr]
		public struct MIB_UNICASTIPADDRESS_TABLE
		{
			public uint32 NumEntries;
			public MIB_UNICASTIPADDRESS_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_ANYCASTIPADDRESS_ROW
		{
			public SOCKADDR_INET Address;
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public SCOPE_ID ScopeId;
		}
		[CRepr]
		public struct MIB_ANYCASTIPADDRESS_TABLE
		{
			public uint32 NumEntries;
			public MIB_ANYCASTIPADDRESS_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_MULTICASTIPADDRESS_ROW
		{
			public SOCKADDR_INET Address;
			public uint32 InterfaceIndex;
			public NET_LUID_LH InterfaceLuid;
			public SCOPE_ID ScopeId;
		}
		[CRepr]
		public struct MIB_MULTICASTIPADDRESS_TABLE
		{
			public uint32 NumEntries;
			public MIB_MULTICASTIPADDRESS_ROW[0] Table;
		}
		[CRepr]
		public struct IP_ADDRESS_PREFIX
		{
			public SOCKADDR_INET Prefix;
			public uint8 PrefixLength;
		}
		[CRepr]
		public struct MIB_IPFORWARD_ROW2
		{
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public IP_ADDRESS_PREFIX DestinationPrefix;
			public SOCKADDR_INET NextHop;
			public uint8 SitePrefixLength;
			public uint32 ValidLifetime;
			public uint32 PreferredLifetime;
			public uint32 Metric;
			public NL_ROUTE_PROTOCOL Protocol;
			public BOOLEAN Loopback;
			public BOOLEAN AutoconfigureAddress;
			public BOOLEAN Publish;
			public BOOLEAN Immortal;
			public uint32 Age;
			public NL_ROUTE_ORIGIN Origin;
		}
		[CRepr]
		public struct MIB_IPFORWARD_TABLE2
		{
			public uint32 NumEntries;
			public MIB_IPFORWARD_ROW2[0] Table;
		}
		[CRepr]
		public struct MIB_IPPATH_ROW
		{
			public SOCKADDR_INET Source;
			public SOCKADDR_INET Destination;
			public NET_LUID_LH InterfaceLuid;
			public uint32 InterfaceIndex;
			public SOCKADDR_INET CurrentNextHop;
			public uint32 PathMtu;
			public uint32 RttMean;
			public uint32 RttDeviation;
			public _Anonymous_e__Union Anonymous;
			public BOOLEAN IsReachable;
			public uint64 LinkTransmitSpeed;
			public uint64 LinkReceiveSpeed;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 LastReachable;
				public uint32 LastUnreachable;
			}
		}
		[CRepr]
		public struct MIB_IPPATH_TABLE
		{
			public uint32 NumEntries;
			public MIB_IPPATH_ROW[0] Table;
		}
		[CRepr]
		public struct MIB_IPNET_ROW2
		{
			public SOCKADDR_INET Address;
			public uint32 InterfaceIndex;
			public NET_LUID_LH InterfaceLuid;
			public uint8[32] PhysicalAddress;
			public uint32 PhysicalAddressLength;
			public NL_NEIGHBOR_STATE State;
			public _Anonymous_e__Union Anonymous;
			public _ReachabilityTime_e__Union ReachabilityTime;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint8 Flags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint8 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _ReachabilityTime_e__Union
			{
				public uint32 LastReachable;
				public uint32 LastUnreachable;
			}
		}
		[CRepr]
		public struct MIB_IPNET_TABLE2
		{
			public uint32 NumEntries;
			public MIB_IPNET_ROW2[0] Table;
		}
		[CRepr]
		public struct DNS_SETTINGS
		{
			public uint32 Version;
			public uint64 Flags;
			public PWSTR Hostname;
			public PWSTR Domain;
			public PWSTR SearchList;
		}
		[CRepr]
		public struct DNS_SETTINGS2
		{
			public uint32 Version;
			public uint64 Flags;
			public PWSTR Hostname;
			public PWSTR Domain;
			public PWSTR SearchList;
			public uint64 SettingFlags;
		}
		[CRepr]
		public struct DNS_DOH_SERVER_SETTINGS
		{
			public PWSTR Template;
			public uint64 Flags;
		}
		[CRepr, Union]
		public struct DNS_SERVER_PROPERTY_TYPES
		{
			public DNS_DOH_SERVER_SETTINGS* DohSettings;
		}
		[CRepr]
		public struct DNS_SERVER_PROPERTY
		{
			public uint32 Version;
			public uint32 ServerIndex;
			public DNS_SERVER_PROPERTY_TYPE Type;
			public DNS_SERVER_PROPERTY_TYPES Property;
		}
		[CRepr]
		public struct DNS_INTERFACE_SETTINGS
		{
			public uint32 Version;
			public uint64 Flags;
			public PWSTR Domain;
			public PWSTR NameServer;
			public PWSTR SearchList;
			public uint32 RegistrationEnabled;
			public uint32 RegisterAdapterName;
			public uint32 EnableLLMNR;
			public uint32 QueryAdapterName;
			public PWSTR ProfileNameServer;
		}
		[CRepr]
		public struct DNS_INTERFACE_SETTINGS_EX
		{
			public DNS_INTERFACE_SETTINGS SettingsV1;
			public uint32 DisableUnconstrainedQueries;
			public PWSTR SupplementalSearchList;
		}
		[CRepr]
		public struct DNS_INTERFACE_SETTINGS3
		{
			public uint32 Version;
			public uint64 Flags;
			public PWSTR Domain;
			public PWSTR NameServer;
			public PWSTR SearchList;
			public uint32 RegistrationEnabled;
			public uint32 RegisterAdapterName;
			public uint32 EnableLLMNR;
			public uint32 QueryAdapterName;
			public PWSTR ProfileNameServer;
			public uint32 DisableUnconstrainedQueries;
			public PWSTR SupplementalSearchList;
			public uint32 cServerProperties;
			public DNS_SERVER_PROPERTY* ServerProperties;
			public uint32 cProfileServerProperties;
			public DNS_SERVER_PROPERTY* ProfileServerProperties;
		}
		[CRepr]
		public struct MIB_OPAQUE_QUERY
		{
			public uint32 dwVarId;
			public uint32[0] rgdwVarIndex;
		}
		[CRepr]
		public struct MIB_IFNUMBER
		{
			public uint32 dwValue;
		}
		[CRepr]
		public struct MIB_IFROW
		{
			public char16[256] wszName;
			public uint32 dwIndex;
			public uint32 dwType;
			public uint32 dwMtu;
			public uint32 dwSpeed;
			public uint32 dwPhysAddrLen;
			public uint8[8] bPhysAddr;
			public uint32 dwAdminStatus;
			public INTERNAL_IF_OPER_STATUS dwOperStatus;
			public uint32 dwLastChange;
			public uint32 dwInOctets;
			public uint32 dwInUcastPkts;
			public uint32 dwInNUcastPkts;
			public uint32 dwInDiscards;
			public uint32 dwInErrors;
			public uint32 dwInUnknownProtos;
			public uint32 dwOutOctets;
			public uint32 dwOutUcastPkts;
			public uint32 dwOutNUcastPkts;
			public uint32 dwOutDiscards;
			public uint32 dwOutErrors;
			public uint32 dwOutQLen;
			public uint32 dwDescrLen;
			public uint8[256] bDescr;
		}
		[CRepr]
		public struct MIB_IFTABLE
		{
			public uint32 dwNumEntries;
			public MIB_IFROW[0] table;
		}
		[CRepr]
		public struct MIB_IPADDRROW_XP
		{
			public uint32 dwAddr;
			public uint32 dwIndex;
			public uint32 dwMask;
			public uint32 dwBCastAddr;
			public uint32 dwReasmSize;
			public uint16 unused1;
			public uint16 wType;
		}
		[CRepr]
		public struct MIB_IPADDRROW_W2K
		{
			public uint32 dwAddr;
			public uint32 dwIndex;
			public uint32 dwMask;
			public uint32 dwBCastAddr;
			public uint32 dwReasmSize;
			public uint16 unused1;
			public uint16 unused2;
		}
		[CRepr]
		public struct MIB_IPADDRTABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPADDRROW_XP[0] table;
		}
		[CRepr]
		public struct MIB_IPFORWARDNUMBER
		{
			public uint32 dwValue;
		}
		[CRepr]
		public struct MIB_IPFORWARDROW
		{
			public uint32 dwForwardDest;
			public uint32 dwForwardMask;
			public uint32 dwForwardPolicy;
			public uint32 dwForwardNextHop;
			public uint32 dwForwardIfIndex;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 dwForwardAge;
			public uint32 dwForwardNextHopAS;
			public uint32 dwForwardMetric1;
			public uint32 dwForwardMetric2;
			public uint32 dwForwardMetric3;
			public uint32 dwForwardMetric4;
			public uint32 dwForwardMetric5;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 dwForwardType;
				public MIB_IPFORWARD_TYPE ForwardType;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 dwForwardProto;
				public NL_ROUTE_PROTOCOL ForwardProto;
			}
		}
		[CRepr]
		public struct MIB_IPFORWARDTABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPFORWARDROW[0] table;
		}
		[CRepr]
		public struct MIB_IPNETROW_LH
		{
			public uint32 dwIndex;
			public uint32 dwPhysAddrLen;
			public uint8[8] bPhysAddr;
			public uint32 dwAddr;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwType;
				public MIB_IPNET_TYPE Type;
			}
		}
		[CRepr]
		public struct MIB_IPNETROW_W2K
		{
			public uint32 dwIndex;
			public uint32 dwPhysAddrLen;
			public uint8[8] bPhysAddr;
			public uint32 dwAddr;
			public uint32 dwType;
		}
		[CRepr]
		public struct MIB_IPNETTABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPNETROW_LH[0] table;
		}
		[CRepr]
		public struct MIB_IPSTATS_LH
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 dwDefaultTTL;
			public uint32 dwInReceives;
			public uint32 dwInHdrErrors;
			public uint32 dwInAddrErrors;
			public uint32 dwForwDatagrams;
			public uint32 dwInUnknownProtos;
			public uint32 dwInDiscards;
			public uint32 dwInDelivers;
			public uint32 dwOutRequests;
			public uint32 dwRoutingDiscards;
			public uint32 dwOutDiscards;
			public uint32 dwOutNoRoutes;
			public uint32 dwReasmTimeout;
			public uint32 dwReasmReqds;
			public uint32 dwReasmOks;
			public uint32 dwReasmFails;
			public uint32 dwFragOks;
			public uint32 dwFragFails;
			public uint32 dwFragCreates;
			public uint32 dwNumIf;
			public uint32 dwNumAddr;
			public uint32 dwNumRoutes;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwForwarding;
				public MIB_IPSTATS_FORWARDING Forwarding;
			}
		}
		[CRepr]
		public struct MIB_IPSTATS_W2K
		{
			public uint32 dwForwarding;
			public uint32 dwDefaultTTL;
			public uint32 dwInReceives;
			public uint32 dwInHdrErrors;
			public uint32 dwInAddrErrors;
			public uint32 dwForwDatagrams;
			public uint32 dwInUnknownProtos;
			public uint32 dwInDiscards;
			public uint32 dwInDelivers;
			public uint32 dwOutRequests;
			public uint32 dwRoutingDiscards;
			public uint32 dwOutDiscards;
			public uint32 dwOutNoRoutes;
			public uint32 dwReasmTimeout;
			public uint32 dwReasmReqds;
			public uint32 dwReasmOks;
			public uint32 dwReasmFails;
			public uint32 dwFragOks;
			public uint32 dwFragFails;
			public uint32 dwFragCreates;
			public uint32 dwNumIf;
			public uint32 dwNumAddr;
			public uint32 dwNumRoutes;
		}
		[CRepr]
		public struct MIBICMPSTATS
		{
			public uint32 dwMsgs;
			public uint32 dwErrors;
			public uint32 dwDestUnreachs;
			public uint32 dwTimeExcds;
			public uint32 dwParmProbs;
			public uint32 dwSrcQuenchs;
			public uint32 dwRedirects;
			public uint32 dwEchos;
			public uint32 dwEchoReps;
			public uint32 dwTimestamps;
			public uint32 dwTimestampReps;
			public uint32 dwAddrMasks;
			public uint32 dwAddrMaskReps;
		}
		[CRepr]
		public struct MIBICMPINFO
		{
			public MIBICMPSTATS icmpInStats;
			public MIBICMPSTATS icmpOutStats;
		}
		[CRepr]
		public struct MIB_ICMP
		{
			public MIBICMPINFO stats;
		}
		[CRepr]
		public struct MIBICMPSTATS_EX_XPSP1
		{
			public uint32 dwMsgs;
			public uint32 dwErrors;
			public uint32[256] rgdwTypeCount;
		}
		[CRepr]
		public struct MIB_ICMP_EX_XPSP1
		{
			public MIBICMPSTATS_EX_XPSP1 icmpInStats;
			public MIBICMPSTATS_EX_XPSP1 icmpOutStats;
		}
		[CRepr]
		public struct MIB_IPMCAST_OIF_XP
		{
			public uint32 dwOutIfIndex;
			public uint32 dwNextHopAddr;
			public uint32 dwReserved;
			public uint32 dwReserved1;
		}
		[CRepr]
		public struct MIB_IPMCAST_OIF_W2K
		{
			public uint32 dwOutIfIndex;
			public uint32 dwNextHopAddr;
			public void* pvReserved;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct MIB_IPMCAST_MFE
		{
			public uint32 dwGroup;
			public uint32 dwSource;
			public uint32 dwSrcMask;
			public uint32 dwUpStrmNgbr;
			public uint32 dwInIfIndex;
			public uint32 dwInIfProtocol;
			public uint32 dwRouteProtocol;
			public uint32 dwRouteNetwork;
			public uint32 dwRouteMask;
			public uint32 ulUpTime;
			public uint32 ulExpiryTime;
			public uint32 ulTimeOut;
			public uint32 ulNumOutIf;
			public uint32 fFlags;
			public uint32 dwReserved;
			public MIB_IPMCAST_OIF_XP[0] rgmioOutInfo;
		}
		[CRepr]
		public struct MIB_MFE_TABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPMCAST_MFE[0] table;
		}
		[CRepr]
		public struct MIB_IPMCAST_OIF_STATS_LH
		{
			public uint32 dwOutIfIndex;
			public uint32 dwNextHopAddr;
			public uint32 dwDialContext;
			public uint32 ulTtlTooLow;
			public uint32 ulFragNeeded;
			public uint32 ulOutPackets;
			public uint32 ulOutDiscards;
		}
		[CRepr]
		public struct MIB_IPMCAST_OIF_STATS_W2K
		{
			public uint32 dwOutIfIndex;
			public uint32 dwNextHopAddr;
			public void* pvDialContext;
			public uint32 ulTtlTooLow;
			public uint32 ulFragNeeded;
			public uint32 ulOutPackets;
			public uint32 ulOutDiscards;
		}
		[CRepr]
		public struct MIB_IPMCAST_MFE_STATS
		{
			public uint32 dwGroup;
			public uint32 dwSource;
			public uint32 dwSrcMask;
			public uint32 dwUpStrmNgbr;
			public uint32 dwInIfIndex;
			public uint32 dwInIfProtocol;
			public uint32 dwRouteProtocol;
			public uint32 dwRouteNetwork;
			public uint32 dwRouteMask;
			public uint32 ulUpTime;
			public uint32 ulExpiryTime;
			public uint32 ulNumOutIf;
			public uint32 ulInPkts;
			public uint32 ulInOctets;
			public uint32 ulPktsDifferentIf;
			public uint32 ulQueueOverflow;
			public MIB_IPMCAST_OIF_STATS_LH[0] rgmiosOutStats;
		}
		[CRepr]
		public struct MIB_MFE_STATS_TABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPMCAST_MFE_STATS[0] table;
		}
		[CRepr]
		public struct MIB_IPMCAST_MFE_STATS_EX_XP
		{
			public uint32 dwGroup;
			public uint32 dwSource;
			public uint32 dwSrcMask;
			public uint32 dwUpStrmNgbr;
			public uint32 dwInIfIndex;
			public uint32 dwInIfProtocol;
			public uint32 dwRouteProtocol;
			public uint32 dwRouteNetwork;
			public uint32 dwRouteMask;
			public uint32 ulUpTime;
			public uint32 ulExpiryTime;
			public uint32 ulNumOutIf;
			public uint32 ulInPkts;
			public uint32 ulInOctets;
			public uint32 ulPktsDifferentIf;
			public uint32 ulQueueOverflow;
			public uint32 ulUninitMfe;
			public uint32 ulNegativeMfe;
			public uint32 ulInDiscards;
			public uint32 ulInHdrErrors;
			public uint32 ulTotalOutPackets;
			public MIB_IPMCAST_OIF_STATS_LH[0] rgmiosOutStats;
		}
		[CRepr]
		public struct MIB_MFE_STATS_TABLE_EX_XP
		{
			public uint32 dwNumEntries;
			public MIB_IPMCAST_MFE_STATS_EX_XP*[0] table;
		}
		[CRepr]
		public struct MIB_IPMCAST_GLOBAL
		{
			public uint32 dwEnable;
		}
		[CRepr]
		public struct MIB_IPMCAST_IF_ENTRY
		{
			public uint32 dwIfIndex;
			public uint32 dwTtl;
			public uint32 dwProtocol;
			public uint32 dwRateLimit;
			public uint32 ulInMcastOctets;
			public uint32 ulOutMcastOctets;
		}
		[CRepr]
		public struct MIB_IPMCAST_IF_TABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPMCAST_IF_ENTRY[0] table;
		}
		[CRepr]
		public struct MIB_TCPROW_LH
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwState;
				public MIB_TCP_STATE State;
			}
		}
		[CRepr]
		public struct MIB_TCPROW_W2K
		{
			public uint32 dwState;
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
		}
		[CRepr]
		public struct MIB_TCPTABLE
		{
			public uint32 dwNumEntries;
			public MIB_TCPROW_LH[0] table;
		}
		[CRepr]
		public struct MIB_TCPROW2
		{
			public uint32 dwState;
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
			public uint32 dwOwningPid;
			public TCP_CONNECTION_OFFLOAD_STATE dwOffloadState;
		}
		[CRepr]
		public struct MIB_TCPTABLE2
		{
			public uint32 dwNumEntries;
			public MIB_TCPROW2[0] table;
		}
		[CRepr]
		public struct MIB_TCPROW_OWNER_PID
		{
			public uint32 dwState;
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
			public uint32 dwOwningPid;
		}
		[CRepr]
		public struct MIB_TCPTABLE_OWNER_PID
		{
			public uint32 dwNumEntries;
			public MIB_TCPROW_OWNER_PID[0] table;
		}
		[CRepr]
		public struct MIB_TCPROW_OWNER_MODULE
		{
			public uint32 dwState;
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public uint64[16] OwningModuleInfo;
		}
		[CRepr]
		public struct MIB_TCPTABLE_OWNER_MODULE
		{
			public uint32 dwNumEntries;
			public MIB_TCPROW_OWNER_MODULE[0] table;
		}
		[CRepr]
		public struct MIB_TCP6ROW
		{
			public MIB_TCP_STATE State;
			public IN6_ADDR LocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public IN6_ADDR RemoteAddr;
			public uint32 dwRemoteScopeId;
			public uint32 dwRemotePort;
		}
		[CRepr]
		public struct MIB_TCP6TABLE
		{
			public uint32 dwNumEntries;
			public MIB_TCP6ROW[0] table;
		}
		[CRepr]
		public struct MIB_TCP6ROW2
		{
			public IN6_ADDR LocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public IN6_ADDR RemoteAddr;
			public uint32 dwRemoteScopeId;
			public uint32 dwRemotePort;
			public MIB_TCP_STATE State;
			public uint32 dwOwningPid;
			public TCP_CONNECTION_OFFLOAD_STATE dwOffloadState;
		}
		[CRepr]
		public struct MIB_TCP6TABLE2
		{
			public uint32 dwNumEntries;
			public MIB_TCP6ROW2[0] table;
		}
		[CRepr]
		public struct MIB_TCP6ROW_OWNER_PID
		{
			public uint8[16] ucLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public uint8[16] ucRemoteAddr;
			public uint32 dwRemoteScopeId;
			public uint32 dwRemotePort;
			public uint32 dwState;
			public uint32 dwOwningPid;
		}
		[CRepr]
		public struct MIB_TCP6TABLE_OWNER_PID
		{
			public uint32 dwNumEntries;
			public MIB_TCP6ROW_OWNER_PID[0] table;
		}
		[CRepr]
		public struct MIB_TCP6ROW_OWNER_MODULE
		{
			public uint8[16] ucLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public uint8[16] ucRemoteAddr;
			public uint32 dwRemoteScopeId;
			public uint32 dwRemotePort;
			public uint32 dwState;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public uint64[16] OwningModuleInfo;
		}
		[CRepr]
		public struct MIB_TCP6TABLE_OWNER_MODULE
		{
			public uint32 dwNumEntries;
			public MIB_TCP6ROW_OWNER_MODULE[0] table;
		}
		[CRepr]
		public struct MIB_TCPSTATS_LH
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 dwRtoMin;
			public uint32 dwRtoMax;
			public uint32 dwMaxConn;
			public uint32 dwActiveOpens;
			public uint32 dwPassiveOpens;
			public uint32 dwAttemptFails;
			public uint32 dwEstabResets;
			public uint32 dwCurrEstab;
			public uint32 dwInSegs;
			public uint32 dwOutSegs;
			public uint32 dwRetransSegs;
			public uint32 dwInErrs;
			public uint32 dwOutRsts;
			public uint32 dwNumConns;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwRtoAlgorithm;
				public TCP_RTO_ALGORITHM RtoAlgorithm;
			}
		}
		[CRepr]
		public struct MIB_TCPSTATS_W2K
		{
			public uint32 dwRtoAlgorithm;
			public uint32 dwRtoMin;
			public uint32 dwRtoMax;
			public uint32 dwMaxConn;
			public uint32 dwActiveOpens;
			public uint32 dwPassiveOpens;
			public uint32 dwAttemptFails;
			public uint32 dwEstabResets;
			public uint32 dwCurrEstab;
			public uint32 dwInSegs;
			public uint32 dwOutSegs;
			public uint32 dwRetransSegs;
			public uint32 dwInErrs;
			public uint32 dwOutRsts;
			public uint32 dwNumConns;
		}
		[CRepr]
		public struct MIB_TCPSTATS2
		{
			public TCP_RTO_ALGORITHM RtoAlgorithm;
			public uint32 dwRtoMin;
			public uint32 dwRtoMax;
			public uint32 dwMaxConn;
			public uint32 dwActiveOpens;
			public uint32 dwPassiveOpens;
			public uint32 dwAttemptFails;
			public uint32 dwEstabResets;
			public uint32 dwCurrEstab;
			public uint64 dw64InSegs;
			public uint64 dw64OutSegs;
			public uint32 dwRetransSegs;
			public uint32 dwInErrs;
			public uint32 dwOutRsts;
			public uint32 dwNumConns;
		}
		[CRepr]
		public struct MIB_UDPROW
		{
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
		}
		[CRepr]
		public struct MIB_UDPTABLE
		{
			public uint32 dwNumEntries;
			public MIB_UDPROW[0] table;
		}
		[CRepr]
		public struct MIB_UDPROW_OWNER_PID
		{
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
		}
		[CRepr]
		public struct MIB_UDPTABLE_OWNER_PID
		{
			public uint32 dwNumEntries;
			public MIB_UDPROW_OWNER_PID[0] table;
		}
		[CRepr]
		public struct MIB_UDPROW_OWNER_MODULE
		{
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public _Anonymous_e__Union Anonymous;
			public uint64[16] OwningModuleInfo;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public int32 dwFlags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public int32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct MIB_UDPTABLE_OWNER_MODULE
		{
			public uint32 dwNumEntries;
			public MIB_UDPROW_OWNER_MODULE[0] table;
		}
		[CRepr]
		public struct MIB_UDPROW2
		{
			public uint32 dwLocalAddr;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public _Anonymous_e__Union Anonymous;
			public uint64[16] OwningModuleInfo;
			public uint32 dwRemoteAddr;
			public uint32 dwRemotePort;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public int32 dwFlags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public int32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct MIB_UDPTABLE2
		{
			public uint32 dwNumEntries;
			public MIB_UDPROW2[0] table;
		}
		[CRepr]
		public struct MIB_UDP6ROW
		{
			public IN6_ADDR dwLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
		}
		[CRepr]
		public struct MIB_UDP6TABLE
		{
			public uint32 dwNumEntries;
			public MIB_UDP6ROW[0] table;
		}
		[CRepr]
		public struct MIB_UDP6ROW_OWNER_PID
		{
			public uint8[16] ucLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
		}
		[CRepr]
		public struct MIB_UDP6TABLE_OWNER_PID
		{
			public uint32 dwNumEntries;
			public MIB_UDP6ROW_OWNER_PID[0] table;
		}
		[CRepr]
		public struct MIB_UDP6ROW_OWNER_MODULE
		{
			public uint8[16] ucLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public _Anonymous_e__Union Anonymous;
			public uint64[16] OwningModuleInfo;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public int32 dwFlags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public int32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct MIB_UDP6TABLE_OWNER_MODULE
		{
			public uint32 dwNumEntries;
			public MIB_UDP6ROW_OWNER_MODULE[0] table;
		}
		[CRepr]
		public struct MIB_UDP6ROW2
		{
			public uint8[16] ucLocalAddr;
			public uint32 dwLocalScopeId;
			public uint32 dwLocalPort;
			public uint32 dwOwningPid;
			public LARGE_INTEGER liCreateTimestamp;
			public _Anonymous_e__Union Anonymous;
			public uint64[16] OwningModuleInfo;
			public uint8[16] ucRemoteAddr;
			public uint32 dwRemoteScopeId;
			public uint32 dwRemotePort;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public int32 dwFlags;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public int32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct MIB_UDP6TABLE2
		{
			public uint32 dwNumEntries;
			public MIB_UDP6ROW2[0] table;
		}
		[CRepr]
		public struct MIB_UDPSTATS
		{
			public uint32 dwInDatagrams;
			public uint32 dwNoPorts;
			public uint32 dwInErrors;
			public uint32 dwOutDatagrams;
			public uint32 dwNumAddrs;
		}
		[CRepr]
		public struct MIB_UDPSTATS2
		{
			public uint64 dw64InDatagrams;
			public uint32 dwNoPorts;
			public uint32 dwInErrors;
			public uint64 dw64OutDatagrams;
			public uint32 dwNumAddrs;
		}
		[CRepr]
		public struct TCPIP_OWNER_MODULE_BASIC_INFO
		{
			public PWSTR pModuleName;
			public PWSTR pModulePath;
		}
		[CRepr]
		public struct MIB_IPMCAST_BOUNDARY
		{
			public uint32 dwIfIndex;
			public uint32 dwGroupAddress;
			public uint32 dwGroupMask;
			public uint32 dwStatus;
		}
		[CRepr]
		public struct MIB_IPMCAST_BOUNDARY_TABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPMCAST_BOUNDARY[0] table;
		}
		[CRepr]
		public struct MIB_BOUNDARYROW
		{
			public uint32 dwGroupAddress;
			public uint32 dwGroupMask;
		}
		[CRepr]
		public struct MIB_MCAST_LIMIT_ROW
		{
			public uint32 dwTtl;
			public uint32 dwRateLimit;
		}
		[CRepr]
		public struct MIB_IPMCAST_SCOPE
		{
			public uint32 dwGroupAddress;
			public uint32 dwGroupMask;
			public uint16[256] snNameBuffer;
			public uint32 dwStatus;
		}
		[CRepr]
		public struct MIB_IPDESTROW
		{
			public MIB_IPFORWARDROW ForwardRow;
			public uint32 dwForwardPreference;
			public uint32 dwForwardViewSet;
		}
		[CRepr]
		public struct MIB_IPDESTTABLE
		{
			public uint32 dwNumEntries;
			public MIB_IPDESTROW[0] table;
		}
		[CRepr]
		public struct MIB_BEST_IF
		{
			public uint32 dwDestAddr;
			public uint32 dwIfIndex;
		}
		[CRepr]
		public struct MIB_PROXYARP
		{
			public uint32 dwAddress;
			public uint32 dwMask;
			public uint32 dwIfIndex;
		}
		[CRepr]
		public struct MIB_IFSTATUS
		{
			public uint32 dwIfIndex;
			public uint32 dwAdminStatus;
			public uint32 dwOperationalStatus;
			public BOOL bMHbeatActive;
			public BOOL bMHbeatAlive;
		}
		[CRepr]
		public struct MIB_ROUTESTATE
		{
			public BOOL bRoutesSetToStack;
		}
		[CRepr]
		public struct MIB_OPAQUE_INFO
		{
			public uint32 dwId;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 ullAlign;
				public uint8[0] rgbyData;
			}
		}
		[CRepr]
		public struct IP_ADDRESS_STRING
		{
			public CHAR[16] String;
		}
		[CRepr]
		public struct IP_ADDR_STRING
		{
			public IP_ADDR_STRING* Next;
			public IP_ADDRESS_STRING IpAddress;
			public IP_ADDRESS_STRING IpMask;
			public uint32 Context;
		}
		[CRepr]
		public struct IP_ADAPTER_INFO
		{
			public IP_ADAPTER_INFO* Next;
			public uint32 ComboIndex;
			public CHAR[260] AdapterName;
			public CHAR[132] Description;
			public uint32 AddressLength;
			public uint8[8] Address;
			public uint32 Index;
			public uint32 Type;
			public uint32 DhcpEnabled;
			public IP_ADDR_STRING* CurrentIpAddress;
			public IP_ADDR_STRING IpAddressList;
			public IP_ADDR_STRING GatewayList;
			public IP_ADDR_STRING DhcpServer;
			public BOOL HaveWins;
			public IP_ADDR_STRING PrimaryWinsServer;
			public IP_ADDR_STRING SecondaryWinsServer;
			public int64 LeaseObtained;
			public int64 LeaseExpires;
		}
		[CRepr]
		public struct IP_ADAPTER_UNICAST_ADDRESS_LH
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_UNICAST_ADDRESS_LH* Next;
			public SOCKET_ADDRESS Address;
			public NL_PREFIX_ORIGIN PrefixOrigin;
			public NL_SUFFIX_ORIGIN SuffixOrigin;
			public NL_DAD_STATE DadState;
			public uint32 ValidLifetime;
			public uint32 PreferredLifetime;
			public uint32 LeaseLifetime;
			public uint8 OnLinkPrefixLength;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Flags;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_UNICAST_ADDRESS_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_UNICAST_ADDRESS_XP* Next;
			public SOCKET_ADDRESS Address;
			public NL_PREFIX_ORIGIN PrefixOrigin;
			public NL_SUFFIX_ORIGIN SuffixOrigin;
			public NL_DAD_STATE DadState;
			public uint32 ValidLifetime;
			public uint32 PreferredLifetime;
			public uint32 LeaseLifetime;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Flags;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_ANYCAST_ADDRESS_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_ANYCAST_ADDRESS_XP* Next;
			public SOCKET_ADDRESS Address;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Flags;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_MULTICAST_ADDRESS_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_MULTICAST_ADDRESS_XP* Next;
			public SOCKET_ADDRESS Address;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Flags;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_DNS_SERVER_ADDRESS_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_DNS_SERVER_ADDRESS_XP* Next;
			public SOCKET_ADDRESS Address;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_WINS_SERVER_ADDRESS_LH
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_WINS_SERVER_ADDRESS_LH* Next;
			public SOCKET_ADDRESS Address;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_GATEWAY_ADDRESS_LH
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_GATEWAY_ADDRESS_LH* Next;
			public SOCKET_ADDRESS Address;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Reserved;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_PREFIX_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_PREFIX_XP* Next;
			public SOCKET_ADDRESS Address;
			public uint32 PrefixLength;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 Flags;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_DNS_SUFFIX
		{
			public IP_ADAPTER_DNS_SUFFIX* Next;
			public char16[256] String;
		}
		[CRepr]
		public struct IP_ADAPTER_ADDRESSES_LH
		{
			public _Anonymous1_e__Union Anonymous1;
			public IP_ADAPTER_ADDRESSES_LH* Next;
			public PSTR AdapterName;
			public IP_ADAPTER_UNICAST_ADDRESS_LH* FirstUnicastAddress;
			public IP_ADAPTER_ANYCAST_ADDRESS_XP* FirstAnycastAddress;
			public IP_ADAPTER_MULTICAST_ADDRESS_XP* FirstMulticastAddress;
			public IP_ADAPTER_DNS_SERVER_ADDRESS_XP* FirstDnsServerAddress;
			public PWSTR DnsSuffix;
			public PWSTR Description;
			public PWSTR FriendlyName;
			public uint8[8] PhysicalAddress;
			public uint32 PhysicalAddressLength;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 Mtu;
			public uint32 IfType;
			public IF_OPER_STATUS OperStatus;
			public uint32 Ipv6IfIndex;
			public uint32[16] ZoneIndices;
			public IP_ADAPTER_PREFIX_XP* FirstPrefix;
			public uint64 TransmitLinkSpeed;
			public uint64 ReceiveLinkSpeed;
			public IP_ADAPTER_WINS_SERVER_ADDRESS_LH* FirstWinsServerAddress;
			public IP_ADAPTER_GATEWAY_ADDRESS_LH* FirstGatewayAddress;
			public uint32 Ipv4Metric;
			public uint32 Ipv6Metric;
			public NET_LUID_LH Luid;
			public SOCKET_ADDRESS Dhcpv4Server;
			public uint32 CompartmentId;
			public Guid NetworkGuid;
			public NET_IF_CONNECTION_TYPE ConnectionType;
			public TUNNEL_TYPE TunnelType;
			public SOCKET_ADDRESS Dhcpv6Server;
			public uint8[130] Dhcpv6ClientDuid;
			public uint32 Dhcpv6ClientDuidLength;
			public uint32 Dhcpv6Iaid;
			public IP_ADAPTER_DNS_SUFFIX* FirstDnsSuffix;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 Flags;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 IfIndex;
				}
			}
		}
		[CRepr]
		public struct IP_ADAPTER_ADDRESSES_XP
		{
			public _Anonymous_e__Union Anonymous;
			public IP_ADAPTER_ADDRESSES_XP* Next;
			public PSTR AdapterName;
			public IP_ADAPTER_UNICAST_ADDRESS_XP* FirstUnicastAddress;
			public IP_ADAPTER_ANYCAST_ADDRESS_XP* FirstAnycastAddress;
			public IP_ADAPTER_MULTICAST_ADDRESS_XP* FirstMulticastAddress;
			public IP_ADAPTER_DNS_SERVER_ADDRESS_XP* FirstDnsServerAddress;
			public PWSTR DnsSuffix;
			public PWSTR Description;
			public PWSTR FriendlyName;
			public uint8[8] PhysicalAddress;
			public uint32 PhysicalAddressLength;
			public uint32 Flags;
			public uint32 Mtu;
			public uint32 IfType;
			public IF_OPER_STATUS OperStatus;
			public uint32 Ipv6IfIndex;
			public uint32[16] ZoneIndices;
			public IP_ADAPTER_PREFIX_XP* FirstPrefix;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 Alignment;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Length;
					public uint32 IfIndex;
				}
			}
		}
		[CRepr]
		public struct IP_PER_ADAPTER_INFO_W2KSP1
		{
			public uint32 AutoconfigEnabled;
			public uint32 AutoconfigActive;
			public IP_ADDR_STRING* CurrentDnsServer;
			public IP_ADDR_STRING DnsServerList;
		}
		[CRepr]
		public struct FIXED_INFO_W2KSP1
		{
			public CHAR[132] HostName;
			public CHAR[132] DomainName;
			public IP_ADDR_STRING* CurrentDnsServer;
			public IP_ADDR_STRING DnsServerList;
			public uint32 NodeType;
			public CHAR[260] ScopeId;
			public uint32 EnableRouting;
			public uint32 EnableProxy;
			public uint32 EnableDns;
		}
		[CRepr]
		public struct ip_interface_name_info_w2ksp1
		{
			public uint32 Index;
			public uint32 MediaType;
			public uint8 ConnectionType;
			public uint8 AccessType;
			public Guid DeviceGuid;
			public Guid InterfaceGuid;
		}
		[CRepr]
		public struct TCP_ESTATS_SYN_OPTS_ROS_v0
		{
			public BOOLEAN ActiveOpen;
			public uint32 MssRcvd;
			public uint32 MssSent;
		}
		[CRepr]
		public struct TCP_ESTATS_DATA_ROD_v0
		{
			public uint64 DataBytesOut;
			public uint64 DataSegsOut;
			public uint64 DataBytesIn;
			public uint64 DataSegsIn;
			public uint64 SegsOut;
			public uint64 SegsIn;
			public uint32 SoftErrors;
			public uint32 SoftErrorReason;
			public uint32 SndUna;
			public uint32 SndNxt;
			public uint32 SndMax;
			public uint64 ThruBytesAcked;
			public uint32 RcvNxt;
			public uint64 ThruBytesReceived;
		}
		[CRepr]
		public struct TCP_ESTATS_DATA_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_SND_CONG_ROD_v0
		{
			public uint32 SndLimTransRwin;
			public uint32 SndLimTimeRwin;
			public uint SndLimBytesRwin;
			public uint32 SndLimTransCwnd;
			public uint32 SndLimTimeCwnd;
			public uint SndLimBytesCwnd;
			public uint32 SndLimTransSnd;
			public uint32 SndLimTimeSnd;
			public uint SndLimBytesSnd;
			public uint32 SlowStart;
			public uint32 CongAvoid;
			public uint32 OtherReductions;
			public uint32 CurCwnd;
			public uint32 MaxSsCwnd;
			public uint32 MaxCaCwnd;
			public uint32 CurSsthresh;
			public uint32 MaxSsthresh;
			public uint32 MinSsthresh;
		}
		[CRepr]
		public struct TCP_ESTATS_SND_CONG_ROS_v0
		{
			public uint32 LimCwnd;
		}
		[CRepr]
		public struct TCP_ESTATS_SND_CONG_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_PATH_ROD_v0
		{
			public uint32 FastRetran;
			public uint32 Timeouts;
			public uint32 SubsequentTimeouts;
			public uint32 CurTimeoutCount;
			public uint32 AbruptTimeouts;
			public uint32 PktsRetrans;
			public uint32 BytesRetrans;
			public uint32 DupAcksIn;
			public uint32 SacksRcvd;
			public uint32 SackBlocksRcvd;
			public uint32 CongSignals;
			public uint32 PreCongSumCwnd;
			public uint32 PreCongSumRtt;
			public uint32 PostCongSumRtt;
			public uint32 PostCongCountRtt;
			public uint32 EcnSignals;
			public uint32 EceRcvd;
			public uint32 SendStall;
			public uint32 QuenchRcvd;
			public uint32 RetranThresh;
			public uint32 SndDupAckEpisodes;
			public uint32 SumBytesReordered;
			public uint32 NonRecovDa;
			public uint32 NonRecovDaEpisodes;
			public uint32 AckAfterFr;
			public uint32 DsackDups;
			public uint32 SampleRtt;
			public uint32 SmoothedRtt;
			public uint32 RttVar;
			public uint32 MaxRtt;
			public uint32 MinRtt;
			public uint32 SumRtt;
			public uint32 CountRtt;
			public uint32 CurRto;
			public uint32 MaxRto;
			public uint32 MinRto;
			public uint32 CurMss;
			public uint32 MaxMss;
			public uint32 MinMss;
			public uint32 SpuriousRtoDetections;
		}
		[CRepr]
		public struct TCP_ESTATS_PATH_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_SEND_BUFF_ROD_v0
		{
			public uint CurRetxQueue;
			public uint MaxRetxQueue;
			public uint CurAppWQueue;
			public uint MaxAppWQueue;
		}
		[CRepr]
		public struct TCP_ESTATS_SEND_BUFF_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_REC_ROD_v0
		{
			public uint32 CurRwinSent;
			public uint32 MaxRwinSent;
			public uint32 MinRwinSent;
			public uint32 LimRwin;
			public uint32 DupAckEpisodes;
			public uint32 DupAcksOut;
			public uint32 CeRcvd;
			public uint32 EcnSent;
			public uint32 EcnNoncesRcvd;
			public uint32 CurReasmQueue;
			public uint32 MaxReasmQueue;
			public uint CurAppRQueue;
			public uint MaxAppRQueue;
			public uint8 WinScaleSent;
		}
		[CRepr]
		public struct TCP_ESTATS_REC_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_OBS_REC_ROD_v0
		{
			public uint32 CurRwinRcvd;
			public uint32 MaxRwinRcvd;
			public uint32 MinRwinRcvd;
			public uint8 WinScaleRcvd;
		}
		[CRepr]
		public struct TCP_ESTATS_OBS_REC_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_BANDWIDTH_RW_v0
		{
			public TCP_BOOLEAN_OPTIONAL EnableCollectionOutbound;
			public TCP_BOOLEAN_OPTIONAL EnableCollectionInbound;
		}
		[CRepr]
		public struct TCP_ESTATS_BANDWIDTH_ROD_v0
		{
			public uint64 OutboundBandwidth;
			public uint64 InboundBandwidth;
			public uint64 OutboundInstability;
			public uint64 InboundInstability;
			public BOOLEAN OutboundBandwidthPeaked;
			public BOOLEAN InboundBandwidthPeaked;
		}
		[CRepr]
		public struct TCP_ESTATS_FINE_RTT_RW_v0
		{
			public BOOLEAN EnableCollection;
		}
		[CRepr]
		public struct TCP_ESTATS_FINE_RTT_ROD_v0
		{
			public uint32 RttVar;
			public uint32 MaxRtt;
			public uint32 MinRtt;
			public uint32 SumRtt;
		}
		[CRepr]
		public struct INTERFACE_HARDWARE_TIMESTAMP_CAPABILITIES
		{
			public BOOLEAN PtpV2OverUdpIPv4EventMessageReceive;
			public BOOLEAN PtpV2OverUdpIPv4AllMessageReceive;
			public BOOLEAN PtpV2OverUdpIPv4EventMessageTransmit;
			public BOOLEAN PtpV2OverUdpIPv4AllMessageTransmit;
			public BOOLEAN PtpV2OverUdpIPv6EventMessageReceive;
			public BOOLEAN PtpV2OverUdpIPv6AllMessageReceive;
			public BOOLEAN PtpV2OverUdpIPv6EventMessageTransmit;
			public BOOLEAN PtpV2OverUdpIPv6AllMessageTransmit;
			public BOOLEAN AllReceive;
			public BOOLEAN AllTransmit;
			public BOOLEAN TaggedTransmit;
		}
		[CRepr]
		public struct INTERFACE_SOFTWARE_TIMESTAMP_CAPABILITIES
		{
			public BOOLEAN AllReceive;
			public BOOLEAN AllTransmit;
			public BOOLEAN TaggedTransmit;
		}
		[CRepr]
		public struct INTERFACE_TIMESTAMP_CAPABILITIES
		{
			public uint64 HardwareClockFrequencyHz;
			public BOOLEAN SupportsCrossTimestamp;
			public INTERFACE_HARDWARE_TIMESTAMP_CAPABILITIES HardwareCapabilities;
			public INTERFACE_SOFTWARE_TIMESTAMP_CAPABILITIES SoftwareCapabilities;
		}
		[CRepr]
		public struct INTERFACE_HARDWARE_CROSSTIMESTAMP
		{
			public uint64 SystemTimestamp1;
			public uint64 HardwareClockTimestamp;
			public uint64 SystemTimestamp2;
		}
		[CRepr]
		public struct PF_FILTER_DESCRIPTOR
		{
			public uint32 dwFilterFlags;
			public uint32 dwRule;
			public PFADDRESSTYPE pfatType;
			public uint8* SrcAddr;
			public uint8* SrcMask;
			public uint8* DstAddr;
			public uint8* DstMask;
			public uint32 dwProtocol;
			public uint32 fLateBound;
			public uint16 wSrcPort;
			public uint16 wDstPort;
			public uint16 wSrcPortHighRange;
			public uint16 wDstPortHighRange;
		}
		[CRepr]
		public struct PF_FILTER_STATS
		{
			public uint32 dwNumPacketsFiltered;
			public PF_FILTER_DESCRIPTOR info;
		}
		[CRepr]
		public struct PF_INTERFACE_STATS
		{
			public void* pvDriverContext;
			public uint32 dwFlags;
			public uint32 dwInDrops;
			public uint32 dwOutDrops;
			public PFFORWARD_ACTION eaInAction;
			public PFFORWARD_ACTION eaOutAction;
			public uint32 dwNumInFilters;
			public uint32 dwNumOutFilters;
			public uint32 dwFrag;
			public uint32 dwSpoof;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
			public LARGE_INTEGER liSYN;
			public LARGE_INTEGER liTotalLogged;
			public uint32 dwLostLogEntries;
			public PF_FILTER_STATS[0] FilterInfo;
		}
		[CRepr]
		public struct PF_LATEBIND_INFO
		{
			public uint8* SrcAddr;
			public uint8* DstAddr;
			public uint8* Mask;
		}
		[CRepr]
		public struct PFLOGFRAME
		{
			public LARGE_INTEGER Timestamp;
			public PFFRAMETYPE pfeTypeOfFrame;
			public uint32 dwTotalSizeUsed;
			public uint32 dwFilterRule;
			public uint16 wSizeOfAdditionalData;
			public uint16 wSizeOfIpHeader;
			public uint32 dwInterfaceName;
			public uint32 dwIPIndex;
			public uint8[0] bPacketData;
		}
		
		// --- Functions ---
		
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIfEntry2(out MIB_IF_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIfEntry2Ex(MIB_IF_ENTRY_LEVEL Level, out MIB_IF_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIfTable2(out MIB_IF_TABLE2* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIfTable2Ex(MIB_IF_TABLE_LEVEL Level, out MIB_IF_TABLE2* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIfStackTable(out MIB_IFSTACK_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetInvertedIfStackTable(out MIB_INVERTEDIFSTACK_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpInterfaceEntry(out MIB_IPINTERFACE_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpInterfaceTable(uint16 Family, out MIB_IPINTERFACE_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeIpInterfaceEntry(out MIB_IPINTERFACE_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyIpInterfaceChange(uint16 Family, PIPINTERFACE_CHANGE_CALLBACK Callback, void* CallerContext, BOOLEAN InitialNotification, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetIpInterfaceEntry(out MIB_IPINTERFACE_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpNetworkConnectionBandwidthEstimates(uint32 InterfaceIndex, uint16 AddressFamily, out MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES BandwidthEstimates);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CreateUnicastIpAddressEntry(in MIB_UNICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS DeleteUnicastIpAddressEntry(in MIB_UNICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetUnicastIpAddressEntry(out MIB_UNICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetUnicastIpAddressTable(uint16 Family, out MIB_UNICASTIPADDRESS_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeUnicastIpAddressEntry(out MIB_UNICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyUnicastIpAddressChange(uint16 Family, PUNICAST_IPADDRESS_CHANGE_CALLBACK Callback, void* CallerContext, BOOLEAN InitialNotification, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyStableUnicastIpAddressTable(uint16 Family, out MIB_UNICASTIPADDRESS_TABLE* Table, PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK CallerCallback, void* CallerContext, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetUnicastIpAddressEntry(in MIB_UNICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CreateAnycastIpAddressEntry(in MIB_ANYCASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS DeleteAnycastIpAddressEntry(in MIB_ANYCASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetAnycastIpAddressEntry(out MIB_ANYCASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetAnycastIpAddressTable(uint16 Family, out MIB_ANYCASTIPADDRESS_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetMulticastIpAddressEntry(out MIB_MULTICASTIPADDRESS_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetMulticastIpAddressTable(uint16 Family, out MIB_MULTICASTIPADDRESS_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CreateIpForwardEntry2(in MIB_IPFORWARD_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS DeleteIpForwardEntry2(in MIB_IPFORWARD_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetBestRoute2(NET_LUID_LH* InterfaceLuid, uint32 InterfaceIndex, SOCKADDR_INET* SourceAddress, in SOCKADDR_INET DestinationAddress, uint32 AddressSortOptions, out MIB_IPFORWARD_ROW2 BestRoute, out SOCKADDR_INET BestSourceAddress);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpForwardEntry2(out MIB_IPFORWARD_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpForwardTable2(uint16 Family, out MIB_IPFORWARD_TABLE2* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitializeIpForwardEntry(out MIB_IPFORWARD_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyRouteChange2(uint16 AddressFamily, PIPFORWARD_CHANGE_CALLBACK Callback, void* CallerContext, BOOLEAN InitialNotification, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetIpForwardEntry2(in MIB_IPFORWARD_ROW2 Route);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS FlushIpPathTable(uint16 Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpPathEntry(out MIB_IPPATH_ROW Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpPathTable(uint16 Family, out MIB_IPPATH_TABLE* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CreateIpNetEntry2(in MIB_IPNET_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS DeleteIpNetEntry2(in MIB_IPNET_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS FlushIpNetTable2(uint16 Family, uint32 InterfaceIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpNetEntry2(out MIB_IPNET_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetIpNetTable2(uint16 Family, out MIB_IPNET_TABLE2* Table);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ResolveIpNetEntry2(out MIB_IPNET_ROW2 Row, SOCKADDR_INET* SourceAddress);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetIpNetEntry2(ref MIB_IPNET_ROW2 Row);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyTeredoPortChange(PTEREDO_PORT_CHANGE_CALLBACK Callback, void* CallerContext, BOOLEAN InitialNotification, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetTeredoPort(out uint16 Port);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CancelMibChangeNotify2(HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeMibTable(void* Memory);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CreateSortedAddressPairs(SOCKADDR_IN6* SourceAddressList, uint32 SourceAddressCount, in SOCKADDR_IN6 DestinationAddressList, uint32 DestinationAddressCount, uint32 AddressSortOptions, out SOCKADDR_IN6_PAIR* SortedAddressPairList, out uint32 SortedAddressPairCount);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertCompartmentGuidToId(in Guid CompartmentGuid, out uint32 CompartmentId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertCompartmentIdToGuid(uint32 CompartmentId, out Guid CompartmentGuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceNameToLuidA(PSTR InterfaceName, out NET_LUID_LH InterfaceLuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceNameToLuidW(PWSTR InterfaceName, out NET_LUID_LH InterfaceLuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceLuidToNameA(in NET_LUID_LH InterfaceLuid, uint8* InterfaceName, uint Length);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceLuidToNameW(in NET_LUID_LH InterfaceLuid, char16* InterfaceName, uint Length);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceLuidToIndex(in NET_LUID_LH InterfaceLuid, out uint32 InterfaceIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceIndexToLuid(uint32 InterfaceIndex, out NET_LUID_LH InterfaceLuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceLuidToAlias(in NET_LUID_LH InterfaceLuid, char16* InterfaceAlias, uint Length);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceAliasToLuid(PWSTR InterfaceAlias, out NET_LUID_LH InterfaceLuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceLuidToGuid(in NET_LUID_LH InterfaceLuid, out Guid InterfaceGuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertInterfaceGuidToLuid(in Guid InterfaceGuid, out NET_LUID_LH InterfaceLuid);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 if_nametoindex(PSTR InterfaceName);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR if_indextoname(uint32 InterfaceIndex, uint8* InterfaceName);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCurrentThreadCompartmentId();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetCurrentThreadCompartmentId(uint32 CompartmentId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetCurrentThreadCompartmentScope(out uint32 CompartmentScope, out uint32 CompartmentId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetCurrentThreadCompartmentScope(uint32 CompartmentScope);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetJobCompartmentId(HANDLE JobHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetJobCompartmentId(HANDLE JobHandle, uint32 CompartmentId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetSessionCompartmentId(uint32 SessionId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetSessionCompartmentId(uint32 SessionId, uint32 CompartmentId);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDefaultCompartmentId();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetNetworkInformation(in Guid NetworkGuid, out uint32 CompartmentId, out uint32 SiteId, char16* NetworkName, uint32 Length);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetNetworkInformation(in Guid NetworkGuid, uint32 CompartmentId, PWSTR NetworkName);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertLengthToIpv4Mask(uint32 MaskLength, out uint32 Mask);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS ConvertIpv4MaskToLength(uint32 Mask, out uint8 MaskLength);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetDnsSettings(out DNS_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeDnsSettings(out DNS_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetDnsSettings(in DNS_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetInterfaceDnsSettings(Guid Interface, out DNS_INTERFACE_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeInterfaceDnsSettings(out DNS_INTERFACE_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SetInterfaceDnsSettings(Guid Interface, in DNS_INTERFACE_SETTINGS Settings);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetNetworkConnectivityHint(out NL_NETWORK_CONNECTIVITY_HINT ConnectivityHint);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetNetworkConnectivityHintForInterface(uint32 InterfaceIndex, out NL_NETWORK_CONNECTIVITY_HINT ConnectivityHint);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS NotifyNetworkConnectivityHintChange(PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK Callback, void* CallerContext, BOOLEAN InitialNotification, out HANDLE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IcmpHandle IcmpCreateFile();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IcmpHandle Icmp6CreateFile();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IcmpCloseHandle(IcmpHandle IcmpHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IcmpSendEcho(IcmpHandle IcmpHandle, uint32 DestinationAddress, void* RequestData, uint16 RequestSize, ip_option_information* RequestOptions, void* ReplyBuffer, uint32 ReplySize, uint32 Timeout);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IcmpSendEcho2(IcmpHandle IcmpHandle, HANDLE Event, PIO_APC_ROUTINE ApcRoutine, void* ApcContext, uint32 DestinationAddress, void* RequestData, uint16 RequestSize, ip_option_information* RequestOptions, void* ReplyBuffer, uint32 ReplySize, uint32 Timeout);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IcmpSendEcho2Ex(IcmpHandle IcmpHandle, HANDLE Event, PIO_APC_ROUTINE ApcRoutine, void* ApcContext, uint32 SourceAddress, uint32 DestinationAddress, void* RequestData, uint16 RequestSize, ip_option_information* RequestOptions, void* ReplyBuffer, uint32 ReplySize, uint32 Timeout);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Icmp6SendEcho2(IcmpHandle IcmpHandle, HANDLE Event, PIO_APC_ROUTINE ApcRoutine, void* ApcContext, ref SOCKADDR_IN6 SourceAddress, ref SOCKADDR_IN6 DestinationAddress, void* RequestData, uint16 RequestSize, ip_option_information* RequestOptions, void* ReplyBuffer, uint32 ReplySize, uint32 Timeout);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IcmpParseReplies(void* ReplyBuffer, uint32 ReplySize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Icmp6ParseReplies(void* ReplyBuffer, uint32 ReplySize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetNumberOfInterfaces(out uint32 pdwNumIf);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIfEntry(out MIB_IFROW pIfRow);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIfTable(MIB_IFTABLE* pIfTable, out uint32 pdwSize, BOOL bOrder);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpAddrTable(MIB_IPADDRTABLE* pIpAddrTable, out uint32 pdwSize, BOOL bOrder);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpNetTable(MIB_IPNETTABLE* IpNetTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpForwardTable(MIB_IPFORWARDTABLE* pIpForwardTable, out uint32 pdwSize, BOOL bOrder);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcpTable(MIB_TCPTABLE* TcpTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetExtendedTcpTable(void* pTcpTable, out uint32 pdwSize, BOOL bOrder, uint32 ulAf, TCP_TABLE_CLASS TableClass, uint32 Reserved);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOwnerModuleFromTcpEntry(ref MIB_TCPROW_OWNER_MODULE pTcpEntry, TCPIP_OWNER_MODULE_INFO_CLASS Class, void* pBuffer, out uint32 pdwSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUdpTable(MIB_UDPTABLE* UdpTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetExtendedUdpTable(void* pUdpTable, out uint32 pdwSize, BOOL bOrder, uint32 ulAf, UDP_TABLE_CLASS TableClass, uint32 Reserved);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOwnerModuleFromUdpEntry(ref MIB_UDPROW_OWNER_MODULE pUdpEntry, TCPIP_OWNER_MODULE_INFO_CLASS Class, void* pBuffer, out uint32 pdwSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcpTable2(MIB_TCPTABLE2* TcpTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcp6Table(out MIB_TCP6TABLE TcpTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcp6Table2(out MIB_TCP6TABLE2 TcpTable, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPerTcpConnectionEStats(ref MIB_TCPROW_LH Row, TCP_ESTATS_TYPE EstatsType, uint8* Rw, uint32 RwVersion, uint32 RwSize, uint8* Ros, uint32 RosVersion, uint32 RosSize, uint8* Rod, uint32 RodVersion, uint32 RodSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPerTcpConnectionEStats(ref MIB_TCPROW_LH Row, TCP_ESTATS_TYPE EstatsType, ref uint8 Rw, uint32 RwVersion, uint32 RwSize, uint32 Offset);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPerTcp6ConnectionEStats(ref MIB_TCP6ROW Row, TCP_ESTATS_TYPE EstatsType, uint8* Rw, uint32 RwVersion, uint32 RwSize, uint8* Ros, uint32 RosVersion, uint32 RosSize, uint8* Rod, uint32 RodVersion, uint32 RodSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPerTcp6ConnectionEStats(ref MIB_TCP6ROW Row, TCP_ESTATS_TYPE EstatsType, ref uint8 Rw, uint32 RwVersion, uint32 RwSize, uint32 Offset);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOwnerModuleFromTcp6Entry(ref MIB_TCP6ROW_OWNER_MODULE pTcpEntry, TCPIP_OWNER_MODULE_INFO_CLASS Class, void* pBuffer, out uint32 pdwSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUdp6Table(MIB_UDP6TABLE* Udp6Table, out uint32 SizePointer, BOOL Order);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOwnerModuleFromUdp6Entry(ref MIB_UDP6ROW_OWNER_MODULE pUdpEntry, TCPIP_OWNER_MODULE_INFO_CLASS Class, void* pBuffer, out uint32 pdwSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetOwnerModuleFromPidAndInfo(uint32 ulPid, ref uint64 pInfo, TCPIP_OWNER_MODULE_INFO_CLASS Class, void* pBuffer, out uint32 pdwSize);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpStatistics(out MIB_IPSTATS_LH Statistics);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIcmpStatistics(out MIB_ICMP Statistics);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcpStatistics(out MIB_TCPSTATS_LH Statistics);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUdpStatistics(out MIB_UDPSTATS Stats);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIpStatisticsEx(ref MIB_IPSTATS_LH Statistics, uint32 Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpStatisticsEx(out MIB_IPSTATS_LH Statistics, ADDRESS_FAMILY Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIcmpStatisticsEx(out MIB_ICMP_EX_XPSP1 Statistics, uint32 Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcpStatisticsEx(out MIB_TCPSTATS_LH Statistics, ADDRESS_FAMILY Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUdpStatisticsEx(out MIB_UDPSTATS Statistics, ADDRESS_FAMILY Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetTcpStatisticsEx2(out MIB_TCPSTATS2 Statistics, ADDRESS_FAMILY Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUdpStatisticsEx2(out MIB_UDPSTATS2 Statistics, ADDRESS_FAMILY Family);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIfEntry(ref MIB_IFROW pIfRow);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateIpForwardEntry(ref MIB_IPFORWARDROW pRoute);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIpForwardEntry(ref MIB_IPFORWARDROW pRoute);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteIpForwardEntry(ref MIB_IPFORWARDROW pRoute);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIpStatistics(ref MIB_IPSTATS_LH pIpStats);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIpTTL(uint32 nTTL);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateIpNetEntry(ref MIB_IPNETROW_LH pArpEntry);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetIpNetEntry(ref MIB_IPNETROW_LH pArpEntry);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteIpNetEntry(ref MIB_IPNETROW_LH pArpEntry);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 FlushIpNetTable(uint32 dwIfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreateProxyArpEntry(uint32 dwAddress, uint32 dwMask, uint32 dwIfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteProxyArpEntry(uint32 dwAddress, uint32 dwMask, uint32 dwIfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetTcpEntry(ref MIB_TCPROW_LH pTcpRow);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetInterfaceInfo(IP_INTERFACE_INFO* pIfTable, out uint32 dwOutBufLen);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetUniDirectionalAdapterInfo(IP_UNIDIRECTIONAL_ADAPTER_ADDRESS* pIPIfInfo, out uint32 dwOutBufLen);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NhpAllocateAndGetInterfaceInfoFromStack(out ip_interface_name_info_w2ksp1* ppTable, out uint32 pdwCount, BOOL bOrder, HANDLE hHeap, uint32 dwFlags);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetBestInterface(uint32 dwDestAddr, out uint32 pdwBestIfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetBestInterfaceEx(ref SOCKADDR pDestAddr, out uint32 pdwBestIfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetBestRoute(uint32 dwDestAddr, uint32 dwSourceAddr, out MIB_IPFORWARDROW pBestRoute);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NotifyAddrChange(out HANDLE Handle, ref OVERLAPPED overlapped);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 NotifyRouteChange(out HANDLE Handle, ref OVERLAPPED overlapped);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CancelIPChangeNotify(ref OVERLAPPED notifyOverlapped);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAdapterIndex(PWSTR AdapterName, out uint32 IfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 AddIPAddress(uint32 Address, uint32 IpMask, uint32 IfIndex, out uint32 NTEContext, out uint32 NTEInstance);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteIPAddress(uint32 NTEContext);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern WIN32_ERROR GetNetworkParams(FIXED_INFO_W2KSP1* pFixedInfo, out uint32 pOutBufLen);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAdaptersInfo(IP_ADAPTER_INFO* AdapterInfo, out uint32 SizePointer);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IP_ADAPTER_ORDER_MAP* GetAdapterOrderMap();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetAdaptersAddresses(ADDRESS_FAMILY Family, GET_ADAPTERS_ADDRESSES_FLAGS Flags, void* Reserved, IP_ADAPTER_ADDRESSES_LH* AdapterAddresses, out uint32 SizePointer);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPerAdapterInfo(uint32 IfIndex, IP_PER_ADAPTER_INFO_W2KSP1* pPerAdapterInfo, out uint32 pOutBufLen);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetInterfaceActiveTimestampCapabilities(in NET_LUID_LH InterfaceLuid, out INTERFACE_TIMESTAMP_CAPABILITIES TimestampCapabilites);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetInterfaceSupportedTimestampCapabilities(in NET_LUID_LH InterfaceLuid, out INTERFACE_TIMESTAMP_CAPABILITIES TimestampCapabilites);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CaptureInterfaceHardwareCrossTimestamp(in NET_LUID_LH InterfaceLuid, out INTERFACE_HARDWARE_CROSSTIMESTAMP CrossTimestamp);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterInterfaceTimestampConfigChange(PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK Callback, void* CallerContext, out HIFTIMESTAMPCHANGE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void UnregisterInterfaceTimestampConfigChange(HIFTIMESTAMPCHANGE NotificationHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IpReleaseAddress(ref IP_ADAPTER_INDEX_MAP AdapterInfo);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IpRenewAddress(ref IP_ADAPTER_INDEX_MAP AdapterInfo);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SendARP(uint32 DestIP, uint32 SrcIP, void* pMacAddr, out uint32 PhyAddrLen);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetRTTAndHopCount(uint32 DestIpAddress, out uint32 HopCount, uint32 MaxHops, out uint32 RTT);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetFriendlyIfIndex(uint32 IfIndex);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnableRouter(out HANDLE pHandle, out OVERLAPPED pOverlapped);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 UnenableRouter(ref OVERLAPPED pOverlapped, uint32* lpdwEnableCount);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DisableMediaSense(out HANDLE pHandle, ref OVERLAPPED pOverLapped);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RestoreMediaSense(ref OVERLAPPED pOverlapped, uint32* lpdwEnableCount);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetIpErrorString(uint32 ErrorCode, PWSTR Buffer, out uint32 Size);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ResolveNeighbor(ref SOCKADDR NetworkAddress, void* PhysicalAddress, out uint32 PhysicalAddressLength);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreatePersistentTcpPortReservation(uint16 StartPort, uint16 NumberOfPorts, out uint64 Token);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CreatePersistentUdpPortReservation(uint16 StartPort, uint16 NumberOfPorts, out uint64 Token);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePersistentTcpPortReservation(uint16 StartPort, uint16 NumberOfPorts);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePersistentUdpPortReservation(uint16 StartPort, uint16 NumberOfPorts);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LookupPersistentTcpPortReservation(uint16 StartPort, uint16 NumberOfPorts, out uint64 Token);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LookupPersistentUdpPortReservation(uint16 StartPort, uint16 NumberOfPorts, out uint64 Token);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfCreateInterface(uint32 dwName, PFFORWARD_ACTION inAction, PFFORWARD_ACTION outAction, BOOL bUseLog, BOOL bMustBeUnique, void** ppInterface);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfDeleteInterface(void* pInterface);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfAddFiltersToInterface(void* ih, uint32 cInFilters, out PF_FILTER_DESCRIPTOR pfiltIn, uint32 cOutFilters, out PF_FILTER_DESCRIPTOR pfiltOut, void** pfHandle);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfRemoveFiltersFromInterface(void* ih, uint32 cInFilters, out PF_FILTER_DESCRIPTOR pfiltIn, uint32 cOutFilters, out PF_FILTER_DESCRIPTOR pfiltOut);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfRemoveFilterHandles(void* pInterface, uint32 cFilters, void** pvHandles);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfUnBindInterface(void* pInterface);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfBindInterfaceToIndex(void* pInterface, uint32 dwIndex, PFADDRESSTYPE pfatLinkType, out uint8 LinkIPAddress);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfBindInterfaceToIPAddress(void* pInterface, PFADDRESSTYPE pfatType, out uint8 IPAddress);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfRebindFilters(void* pInterface, out PF_LATEBIND_INFO pLateBindInfo);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfAddGlobalFilterToInterface(void* pInterface, GLOBAL_FILTER gfFilter);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfRemoveGlobalFilterFromInterface(void* pInterface, GLOBAL_FILTER gfFilter);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfMakeLog(HANDLE hEvent);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfSetLogBuffer(out uint8 pbBuffer, uint32 dwSize, uint32 dwThreshold, uint32 dwEntries, out uint32 pdwLoggedEntries, out uint32 pdwLostEntries, out uint32 pdwSizeUsed);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfDeleteLog();
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfGetInterfaceStatistics(void* pInterface, out PF_INTERFACE_STATS ppfStats, out uint32 pdwBufferSize, BOOL fResetCounters);
		[Import("iphlpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PfTestPacket(void* pInInterface, void* pOutInterface, uint32 cBytes, out uint8 pbPacket, out PFFORWARD_ACTION ppAction);
	}
}
