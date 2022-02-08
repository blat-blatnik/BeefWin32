using System;

// namespace NetworkManagement.Snmp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 ASN_UNIVERSAL = 0;
		public const uint32 ASN_APPLICATION = 64;
		public const uint32 ASN_CONTEXT = 128;
		public const uint32 ASN_PRIVATE = 192;
		public const uint32 ASN_PRIMITIVE = 0;
		public const uint32 ASN_CONSTRUCTOR = 32;
		public const uint32 SNMP_ACCESS_NONE = 0;
		public const uint32 SNMP_ACCESS_NOTIFY = 1;
		public const uint32 SNMP_ACCESS_READ_ONLY = 2;
		public const uint32 SNMP_ACCESS_READ_WRITE = 3;
		public const uint32 SNMP_ACCESS_READ_CREATE = 4;
		public const uint32 SNMPAPI_NOERROR = 1;
		public const uint32 SNMPAPI_ERROR = 0;
		public const uint32 SNMP_OUTPUT_TO_EVENTLOG = 4;
		public const uint32 DEFAULT_SNMP_PORT_UDP = 161;
		public const uint32 DEFAULT_SNMP_PORT_IPX = 36879;
		public const uint32 DEFAULT_SNMPTRAP_PORT_UDP = 162;
		public const uint32 DEFAULT_SNMPTRAP_PORT_IPX = 36880;
		public const uint32 SNMP_MAX_OID_LEN = 128;
		public const uint32 SNMP_MEM_ALLOC_ERROR = 1;
		public const uint32 SNMP_BERAPI_INVALID_LENGTH = 10;
		public const uint32 SNMP_BERAPI_INVALID_TAG = 11;
		public const uint32 SNMP_BERAPI_OVERFLOW = 12;
		public const uint32 SNMP_BERAPI_SHORT_BUFFER = 13;
		public const uint32 SNMP_BERAPI_INVALID_OBJELEM = 14;
		public const uint32 SNMP_PDUAPI_UNRECOGNIZED_PDU = 20;
		public const uint32 SNMP_PDUAPI_INVALID_ES = 21;
		public const uint32 SNMP_PDUAPI_INVALID_GT = 22;
		public const uint32 SNMP_AUTHAPI_INVALID_VERSION = 30;
		public const uint32 SNMP_AUTHAPI_INVALID_MSG_TYPE = 31;
		public const uint32 SNMP_AUTHAPI_TRIV_AUTH_FAILED = 32;
		public const uint32 ASN_CONTEXTSPECIFIC = 128;
		public const uint32 ASN_PRIMATIVE = 0;
		public const uint32 SNMP_MGMTAPI_TIMEOUT = 40;
		public const uint32 SNMP_MGMTAPI_SELECT_FDERRORS = 41;
		public const uint32 SNMP_MGMTAPI_TRAP_ERRORS = 42;
		public const uint32 SNMP_MGMTAPI_TRAP_DUPINIT = 43;
		public const uint32 SNMP_MGMTAPI_NOTRAPS = 44;
		public const uint32 SNMP_MGMTAPI_AGAIN = 45;
		public const uint32 SNMP_MGMTAPI_INVALID_CTL = 46;
		public const uint32 SNMP_MGMTAPI_INVALID_SESSION = 47;
		public const uint32 SNMP_MGMTAPI_INVALID_BUFFER = 48;
		public const uint32 MGMCTL_SETAGENTPORT = 1;
		public const uint32 MAXOBJIDSIZE = 128;
		public const uint32 MAXOBJIDSTRSIZE = 1408;
		public const uint32 SNMPLISTEN_USEENTITY_ADDR = 0;
		public const uint32 SNMPLISTEN_ALL_ADDR = 1;
		public const uint32 SNMP_TRAP_COLDSTART = 0;
		public const uint32 SNMP_TRAP_WARMSTART = 1;
		public const uint32 SNMP_TRAP_LINKDOWN = 2;
		public const uint32 SNMP_TRAP_LINKUP = 3;
		public const uint32 SNMP_TRAP_AUTHFAIL = 4;
		public const uint32 SNMP_TRAP_EGPNEIGHBORLOSS = 5;
		public const uint32 SNMP_TRAP_ENTERPRISESPECIFIC = 6;
		public const uint32 SNMPAPI_NO_SUPPORT = 0;
		public const uint32 SNMPAPI_V1_SUPPORT = 1;
		public const uint32 SNMPAPI_V2_SUPPORT = 2;
		public const uint32 SNMPAPI_M2M_SUPPORT = 3;
		public const uint32 SNMPAPI_FAILURE = 0;
		public const uint32 SNMPAPI_SUCCESS = 1;
		public const uint32 SNMPAPI_ALLOC_ERROR = 2;
		public const uint32 SNMPAPI_CONTEXT_INVALID = 3;
		public const uint32 SNMPAPI_CONTEXT_UNKNOWN = 4;
		public const uint32 SNMPAPI_ENTITY_INVALID = 5;
		public const uint32 SNMPAPI_ENTITY_UNKNOWN = 6;
		public const uint32 SNMPAPI_INDEX_INVALID = 7;
		public const uint32 SNMPAPI_NOOP = 8;
		public const uint32 SNMPAPI_OID_INVALID = 9;
		public const uint32 SNMPAPI_OPERATION_INVALID = 10;
		public const uint32 SNMPAPI_OUTPUT_TRUNCATED = 11;
		public const uint32 SNMPAPI_PDU_INVALID = 12;
		public const uint32 SNMPAPI_SESSION_INVALID = 13;
		public const uint32 SNMPAPI_SYNTAX_INVALID = 14;
		public const uint32 SNMPAPI_VBL_INVALID = 15;
		public const uint32 SNMPAPI_MODE_INVALID = 16;
		public const uint32 SNMPAPI_SIZE_INVALID = 17;
		public const uint32 SNMPAPI_NOT_INITIALIZED = 18;
		public const uint32 SNMPAPI_MESSAGE_INVALID = 19;
		public const uint32 SNMPAPI_HWND_INVALID = 20;
		public const uint32 SNMPAPI_OTHER_ERROR = 99;
		public const uint32 SNMPAPI_TL_NOT_INITIALIZED = 100;
		public const uint32 SNMPAPI_TL_NOT_SUPPORTED = 101;
		public const uint32 SNMPAPI_TL_NOT_AVAILABLE = 102;
		public const uint32 SNMPAPI_TL_RESOURCE_ERROR = 103;
		public const uint32 SNMPAPI_TL_UNDELIVERABLE = 104;
		public const uint32 SNMPAPI_TL_SRC_INVALID = 105;
		public const uint32 SNMPAPI_TL_INVALID_PARAM = 106;
		public const uint32 SNMPAPI_TL_IN_USE = 107;
		public const uint32 SNMPAPI_TL_TIMEOUT = 108;
		public const uint32 SNMPAPI_TL_PDU_TOO_BIG = 109;
		public const uint32 SNMPAPI_TL_OTHER = 199;
		public const uint32 MAXVENDORINFO = 32;
		
		// --- Enums ---
		
		public enum SNMP_PDU_TYPE : uint32
		{
			GET = 160,
			GETNEXT = 161,
			RESPONSE = 162,
			SET = 163,
			GETBULK = 165,
			TRAP = 167,
		}
		public enum SNMP_EXTENSION_REQUEST_TYPE : uint32
		{
			GET = 160,
			GET_NEXT = 161,
			SET_TEST = 224,
			SET_COMMIT = 163,
			SET_UNDO = 225,
			SET_CLEANUP = 226,
		}
		public enum SNMP_API_TRANSLATE_MODE : uint32
		{
			TRANSLATED = 0,
			UNTRANSLATED_V1 = 1,
			UNTRANSLATED_V2 = 2,
		}
		public enum SNMP_GENERICTRAP : uint32
		{
			COLDSTART = 0,
			WARMSTART = 1,
			LINKDOWN = 2,
			LINKUP = 3,
			AUTHFAILURE = 4,
			EGPNEIGHLOSS = 5,
			ENTERSPECIFIC = 6,
		}
		public enum SNMP_ERROR_STATUS : uint32
		{
			NOERROR = 0,
			TOOBIG = 1,
			NOSUCHNAME = 2,
			BADVALUE = 3,
			READONLY = 4,
			GENERR = 5,
			NOACCESS = 6,
			WRONGTYPE = 7,
			WRONGLENGTH = 8,
			WRONGENCODING = 9,
			WRONGVALUE = 10,
			NOCREATION = 11,
			INCONSISTENTVALUE = 12,
			RESOURCEUNAVAILABLE = 13,
			COMMITFAILED = 14,
			UNDOFAILED = 15,
			AUTHORIZATIONERROR = 16,
			NOTWRITABLE = 17,
			INCONSISTENTNAME = 18,
		}
		public enum SNMP_STATUS : uint32
		{
			ON = 1,
			OFF = 0,
		}
		public enum SNMP_OUTPUT_LOG_TYPE : uint32
		{
			CONSOLE = 1,
			LOGFILE = 2,
			DEBUGGER = 8,
		}
		public enum SNMP_LOG : uint32
		{
			SILENT = 0,
			FATAL = 1,
			ERROR = 2,
			WARNING = 3,
			TRACE = 4,
			VERBOSE = 5,
		}
		public enum SNMP_ERROR : uint32
		{
			NOERROR = 0,
			TOOBIG = 1,
			NOSUCHNAME = 2,
			BADVALUE = 3,
			READONLY = 4,
			GENERR = 5,
			NOACCESS = 6,
			WRONGTYPE = 7,
			WRONGLENGTH = 8,
			WRONGENCODING = 9,
			WRONGVALUE = 10,
			NOCREATION = 11,
			INCONSISTENTVALUE = 12,
			RESOURCEUNAVAILABLE = 13,
			COMMITFAILED = 14,
			UNDOFAILED = 15,
			AUTHORIZATIONERROR = 16,
			NOTWRITABLE = 17,
			INCONSISTENTNAME = 18,
		}
		
		// --- Function Pointers ---
		
		public function BOOL PFNSNMPEXTENSIONINIT(uint32 dwUpTimeReference, out HANDLE phSubagentTrapEvent, out AsnObjectIdentifier pFirstSupportedRegion);
		public function BOOL PFNSNMPEXTENSIONINITEX(out AsnObjectIdentifier pNextSupportedRegion);
		public function BOOL PFNSNMPEXTENSIONMONITOR(void* pAgentMgmtData);
		public function BOOL PFNSNMPEXTENSIONQUERY(uint8 bPduType, out SnmpVarBindList pVarBindList, out int32 pErrorStatus, out int32 pErrorIndex);
		public function BOOL PFNSNMPEXTENSIONQUERYEX(uint32 nRequestType, uint32 nTransactionId, out SnmpVarBindList pVarBindList, out AsnOctetString pContextInfo, out int32 pErrorStatus, out int32 pErrorIndex);
		public function BOOL PFNSNMPEXTENSIONTRAP(out AsnObjectIdentifier pEnterpriseOid, out int32 pGenericTrapId, out int32 pSpecificTrapId, out uint32 pTimeStamp, out SnmpVarBindList pVarBindList);
		public function void PFNSNMPEXTENSIONCLOSE();
		public function uint32 SNMPAPI_CALLBACK(int hSession, HWND hWnd, uint32 wMsg, WPARAM wParam, LPARAM lParam, void* lpClientData);
		public function uint32 PFNSNMPSTARTUPEX(out uint32 param0, out uint32 param1, out uint32 param2, out uint32 param3, out uint32 param4);
		public function uint32 PFNSNMPCLEANUPEX();
		
		// --- Structs ---
		
		[CRepr, Packed(4)]
		public struct AsnOctetString
		{
			public uint8* stream;
			public uint32 length;
			public BOOL dynamic;
		}
		[CRepr, Packed(4)]
		public struct AsnObjectIdentifier
		{
			public uint32 idLength;
			public uint32* ids;
		}
		[CRepr]
		public struct AsnAny
		{
			public uint8 asnType;
			public _asnValue_e__Union asnValue;
			
			[CRepr, Union, Packed(4)]
			public struct _asnValue_e__Union
			{
				public int32 number;
				public uint32 unsigned32;
				public ULARGE_INTEGER counter64;
				public AsnOctetString string;
				public AsnOctetString bits;
				public AsnObjectIdentifier object;
				public AsnOctetString sequence;
				public AsnOctetString address;
				public uint32 counter;
				public uint32 gauge;
				public uint32 ticks;
				public AsnOctetString arbitrary;
			}
		}
		[CRepr]
		public struct SnmpVarBind
		{
			public AsnObjectIdentifier name;
			public AsnAny value;
		}
		[CRepr, Packed(4)]
		public struct SnmpVarBindList
		{
			public SnmpVarBind* list;
			public uint32 len;
		}
		[CRepr]
		public struct smiOCTETS
		{
			public uint32 len;
			public uint8* ptr;
		}
		[CRepr]
		public struct smiOID
		{
			public uint32 len;
			public uint32* ptr;
		}
		[CRepr]
		public struct smiCNTR64
		{
			public uint32 hipart;
			public uint32 lopart;
		}
		[CRepr]
		public struct smiVALUE
		{
			public uint32 syntax;
			public _value_e__Union value;
			
			[CRepr, Union]
			public struct _value_e__Union
			{
				public int32 sNumber;
				public uint32 uNumber;
				public smiCNTR64 hNumber;
				public smiOCTETS string;
				public smiOID oid;
				public uint8 empty;
			}
		}
		[CRepr]
		public struct smiVENDORINFO
		{
			public CHAR[64] vendorName;
			public CHAR[64] vendorContact;
			public CHAR[32] vendorVersionId;
			public CHAR[32] vendorVersionDate;
			public uint32 vendorEnterprise;
		}
		
		// --- Functions ---
		
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOidCpy(out AsnObjectIdentifier pOidDst, out AsnObjectIdentifier pOidSrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOidAppend(out AsnObjectIdentifier pOidDst, out AsnObjectIdentifier pOidSrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOidNCmp(out AsnObjectIdentifier pOid1, out AsnObjectIdentifier pOid2, uint32 nSubIds);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOidCmp(out AsnObjectIdentifier pOid1, out AsnObjectIdentifier pOid2);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilOidFree(out AsnObjectIdentifier pOid);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOctetsCmp(out AsnOctetString pOctets1, out AsnOctetString pOctets2);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOctetsNCmp(out AsnOctetString pOctets1, out AsnOctetString pOctets2, uint32 nChars);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilOctetsCpy(out AsnOctetString pOctetsDst, out AsnOctetString pOctetsSrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilOctetsFree(out AsnOctetString pOctets);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilAsnAnyCpy(out AsnAny pAnyDst, out AsnAny pAnySrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilAsnAnyFree(out AsnAny pAny);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilVarBindCpy(out SnmpVarBind pVbDst, out SnmpVarBind pVbSrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilVarBindFree(out SnmpVarBind pVb);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpUtilVarBindListCpy(out SnmpVarBindList pVblDst, out SnmpVarBindList pVblSrc);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilVarBindListFree(out SnmpVarBindList pVbl);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilMemFree(void* pMem);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SnmpUtilMemAlloc(uint32 nBytes);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SnmpUtilMemReAlloc(void* pMem, uint32 nBytes);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SnmpUtilOidToA(out AsnObjectIdentifier Oid);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR SnmpUtilIdsToA(out uint32 Ids, uint32 IdLength);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilPrintOid(out AsnObjectIdentifier Oid);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilPrintAsnAny(out AsnAny pAny);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSvcGetUptime();
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpSvcSetLogLevel(SNMP_LOG nLogLevel);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpSvcSetLogType(SNMP_OUTPUT_LOG_TYPE nLogType);
		[Import("snmpapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SnmpUtilDbgPrint(SNMP_LOG nLogLevel, PSTR szFormat);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SnmpMgrOpen(PSTR lpAgentAddress, PSTR lpAgentCommunity, int32 nTimeOut, int32 nRetries);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrCtl(void* session, uint32 dwCtlCode, void* lpvInBuffer, uint32 cbInBuffer, void* lpvOUTBuffer, uint32 cbOUTBuffer, out uint32 lpcbBytesReturned);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrClose(void* session);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SnmpMgrRequest(void* session, uint8 requestType, out SnmpVarBindList variableBindings, out SNMP_ERROR_STATUS errorStatus, out int32 errorIndex);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrStrToOid(PSTR string, out AsnObjectIdentifier oid);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrOidToStr(out AsnObjectIdentifier oid, PSTR* string);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrTrapListen(out HANDLE phTrapAvailable);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrGetTrap(out AsnObjectIdentifier enterprise, out AsnOctetString IPAddress, out SNMP_GENERICTRAP genericTrap, out int32 specificTrap, out uint32 timeStamp, out SnmpVarBindList variableBindings);
		[Import("mgmtapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SnmpMgrGetTrapEx(out AsnObjectIdentifier enterprise, out AsnOctetString agentAddress, out AsnOctetString sourceAddress, out SNMP_GENERICTRAP genericTrap, out int32 specificTrap, out AsnOctetString community, out uint32 timeStamp, out SnmpVarBindList variableBindings);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetTranslateMode(out SNMP_API_TRANSLATE_MODE nTranslateMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetTranslateMode(SNMP_API_TRANSLATE_MODE nTranslateMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetRetransmitMode(out SNMP_STATUS nRetransmitMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetRetransmitMode(SNMP_STATUS nRetransmitMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetTimeout(int hEntity, out uint32 nPolicyTimeout, out uint32 nActualTimeout);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetTimeout(int hEntity, uint32 nPolicyTimeout);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetRetry(int hEntity, out uint32 nPolicyRetry, out uint32 nActualRetry);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetRetry(int hEntity, uint32 nPolicyRetry);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetVendorInfo(out smiVENDORINFO vendorInfo);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpStartup(out uint32 nMajorVersion, out uint32 nMinorVersion, out uint32 nLevel, out SNMP_API_TRANSLATE_MODE nTranslateMode, out SNMP_STATUS nRetransmitMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpCleanup();
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpOpen(HWND hWnd, uint32 wMsg);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpClose(int session);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSendMsg(int session, int srcEntity, int dstEntity, int context, int PDU);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpRecvMsg(int session, out int srcEntity, out int dstEntity, out int context, out int PDU);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpRegister(int session, int srcEntity, int dstEntity, int context, out smiOID notification, SNMP_STATUS state);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpCreateSession(HWND hWnd, uint32 wMsg, SNMPAPI_CALLBACK fCallBack, void* lpClientData);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpListen(int hEntity, SNMP_STATUS lStatus);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpListenEx(int hEntity, uint32 lStatus, uint32 nUseEntityAddr);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpCancelMsg(int session, int32 reqId);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpStartupEx(out uint32 nMajorVersion, out uint32 nMinorVersion, out uint32 nLevel, out SNMP_API_TRANSLATE_MODE nTranslateMode, out SNMP_STATUS nRetransmitMode);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpCleanupEx();
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpStrToEntity(int session, PSTR string);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpEntityToStr(int entity, uint32 size, uint8* string);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpFreeEntity(int entity);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpStrToContext(int session, out smiOCTETS string);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpContextToStr(int context, out smiOCTETS string);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpFreeContext(int context);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetPort(int hEntity, uint32 nPort);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpCreatePdu(int session, SNMP_PDU_TYPE PDU_type, int32 request_id, int32 error_status, int32 error_index, int varbindlist);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetPduData(int PDU, out SNMP_PDU_TYPE PDU_type, out int32 request_id, out SNMP_ERROR error_status, out int32 error_index, out int varbindlist);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetPduData(int PDU, in int32 PDU_type, in int32 request_id, in int32 non_repeaters, in int32 max_repetitions, in int varbindlist);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpDuplicatePdu(int session, int PDU);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpFreePdu(int PDU);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpCreateVbl(int session, out smiOID name, out smiVALUE value);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int SnmpDuplicateVbl(int session, int vbl);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpFreeVbl(int vbl);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpCountVbl(int vbl);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetVb(int vbl, uint32 index, out smiOID name, out smiVALUE value);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpSetVb(int vbl, uint32 index, out smiOID name, out smiVALUE value);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpDeleteVb(int vbl, uint32 index);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpGetLastError(int session);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpStrToOid(PSTR string, out smiOID dstOID);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpOidToStr(ref smiOID srcOID, uint32 size, uint8* string);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpOidCopy(out smiOID srcOID, out smiOID dstOID);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpOidCompare(out smiOID xOID, out smiOID yOID, uint32 maxlen, out int32 result);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpEncodeMsg(int session, int srcEntity, int dstEntity, int context, int pdu, out smiOCTETS msgBufDesc);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpDecodeMsg(int session, out int srcEntity, out int dstEntity, out int context, out int pdu, out smiOCTETS msgBufDesc);
		[Import("wsnmp32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SnmpFreeDescriptor(uint32 syntax, out smiOCTETS descriptor);
	}
}
