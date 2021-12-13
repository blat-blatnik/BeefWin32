using System;

// namespace NetworkManagement.NetworkDiagnosticsFramework
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 NDF_ERROR_START = 63744;
		public const HRESULT NDF_E_LENGTH_EXCEEDED = -2146895616;
		public const HRESULT NDF_E_NOHELPERCLASS = -2146895615;
		public const HRESULT NDF_E_CANCELLED = -2146895614;
		public const HRESULT NDF_E_DISABLED = -2146895612;
		public const HRESULT NDF_E_BAD_PARAM = -2146895611;
		public const HRESULT NDF_E_VALIDATION = -2146895610;
		public const HRESULT NDF_E_UNKNOWN = -2146895609;
		public const HRESULT NDF_E_PROBLEM_PRESENT = -2146895608;
		public const uint32 RF_WORKAROUND = 536870912;
		public const uint32 RF_USER_ACTION = 268435456;
		public const uint32 RF_USER_CONFIRMATION = 134217728;
		public const uint32 RF_INFORMATION_ONLY = 33554432;
		public const uint32 RF_UI_ONLY = 16777216;
		public const uint32 RF_SHOW_EVENTS = 8388608;
		public const uint32 RF_VALIDATE_HELPTOPIC = 4194304;
		public const uint32 RF_REPRO = 2097152;
		public const uint32 RF_CONTACT_ADMIN = 131072;
		public const uint32 RF_RESERVED = 1073741824;
		public const uint32 RF_RESERVED_CA = 2147483648;
		public const uint32 RF_RESERVED_LNI = 65536;
		public const uint32 RCF_ISLEAF = 1;
		public const uint32 RCF_ISCONFIRMED = 2;
		public const uint32 RCF_ISTHIRDPARTY = 4;
		public const uint32 DF_IMPERSONATION = 2147483648;
		public const uint32 DF_TRACELESS = 1073741824;
		public const uint32 NDF_INBOUND_FLAG_EDGETRAVERSAL = 1;
		public const uint32 NDF_INBOUND_FLAG_HEALTHCHECK = 2;
		public const uint32 NDF_ADD_CAPTURE_TRACE = 1;
		public const uint32 NDF_APPLY_INCLUSION_LIST_FILTER = 2;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum ATTRIBUTE_TYPE : int32
		{
			AT_INVALID = 0,
			AT_BOOLEAN = 1,
			AT_INT8 = 2,
			AT_UINT8 = 3,
			AT_INT16 = 4,
			AT_UINT16 = 5,
			AT_INT32 = 6,
			AT_UINT32 = 7,
			AT_INT64 = 8,
			AT_UINT64 = 9,
			AT_STRING = 10,
			AT_GUID = 11,
			AT_LIFE_TIME = 12,
			AT_SOCKADDR = 13,
			AT_OCTET_STRING = 14,
		}
		[AllowDuplicates]
		public enum REPAIR_SCOPE : int32
		{
			RS_SYSTEM = 0,
			RS_USER = 1,
			RS_APPLICATION = 2,
			RS_PROCESS = 3,
		}
		[AllowDuplicates]
		public enum REPAIR_RISK : int32
		{
			RR_NOROLLBACK = 0,
			RR_ROLLBACK = 1,
			RR_NORISK = 2,
		}
		[AllowDuplicates]
		public enum UI_INFO_TYPE : int32
		{
			UIT_INVALID = 0,
			UIT_NONE = 1,
			UIT_SHELL_COMMAND = 2,
			UIT_HELP_PANE = 3,
			UIT_DUI = 4,
		}
		[AllowDuplicates]
		public enum DIAGNOSIS_STATUS : int32
		{
			DS_NOT_IMPLEMENTED = 0,
			DS_CONFIRMED = 1,
			DS_REJECTED = 2,
			DS_INDETERMINATE = 3,
			DS_DEFERRED = 4,
			DS_PASSTHROUGH = 5,
		}
		[AllowDuplicates]
		public enum REPAIR_STATUS : int32
		{
			RS_NOT_IMPLEMENTED = 0,
			RS_REPAIRED = 1,
			RS_UNREPAIRED = 2,
			RS_DEFERRED = 3,
			RS_USER_ACTION = 4,
		}
		[AllowDuplicates]
		public enum PROBLEM_TYPE : int32
		{
			PT_INVALID = 0,
			PT_LOW_HEALTH = 1,
			PT_LOWER_HEALTH = 2,
			PT_DOWN_STREAM_HEALTH = 4,
			PT_HIGH_UTILIZATION = 8,
			PT_HIGHER_UTILIZATION = 16,
			PT_UP_STREAM_UTILIZATION = 32,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct OCTET_STRING
		{
			public uint32 dwLength;
			public uint8* lpValue;
		}
		[CRepr]
		public struct LIFE_TIME
		{
			public FILETIME startTime;
			public FILETIME endTime;
		}
		[CRepr]
		public struct DIAG_SOCKADDR
		{
			public uint16 family;
			public CHAR[126] data;
		}
		[CRepr]
		public struct HELPER_ATTRIBUTE
		{
			public PWSTR pwszName;
			public ATTRIBUTE_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public BOOL Boolean;
				public uint8 Char;
				public uint8 Byte;
				public int16 Short;
				public uint16 Word;
				public int32 Int;
				public uint32 DWord;
				public int64 Int64;
				public uint64 UInt64;
				public PWSTR PWStr;
				public Guid Guid;
				public LIFE_TIME LifeTime;
				public DIAG_SOCKADDR Address;
				public OCTET_STRING OctetString;
			}
		}
		[CRepr]
		public struct ShellCommandInfo
		{
			public PWSTR pwszOperation;
			public PWSTR pwszFile;
			public PWSTR pwszParameters;
			public PWSTR pwszDirectory;
			public uint32 nShowCmd;
		}
		[CRepr]
		public struct UiInfo
		{
			public UI_INFO_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR pwzNull;
				public ShellCommandInfo ShellInfo;
				public PWSTR pwzHelpUrl;
				public PWSTR pwzDui;
			}
		}
		[CRepr]
		public struct RepairInfo
		{
			public Guid guid;
			public PWSTR pwszClassName;
			public PWSTR pwszDescription;
			public uint32 sidType;
			public int32 cost;
			public uint32 flags;
			public REPAIR_SCOPE @scope;
			public REPAIR_RISK risk;
			public UiInfo UiInfo;
			public int32 rootCauseIndex;
		}
		[CRepr]
		public struct RepairInfoEx
		{
			public RepairInfo repair;
			public uint16 repairRank;
		}
		[CRepr]
		public struct RootCauseInfo
		{
			public PWSTR pwszDescription;
			public Guid rootCauseID;
			public uint32 rootCauseFlags;
			public Guid networkInterfaceID;
			public RepairInfoEx* pRepairs;
			public uint16 repairCount;
		}
		[CRepr]
		public struct HYPOTHESIS
		{
			public PWSTR pwszClassName;
			public PWSTR pwszDescription;
			public uint32 celt;
			public HELPER_ATTRIBUTE* rgAttributes;
		}
		[CRepr]
		public struct HelperAttributeInfo
		{
			public PWSTR pwszName;
			public ATTRIBUTE_TYPE type;
		}
		[CRepr]
		public struct DiagnosticsInfo
		{
			public int32 cost;
			public uint32 flags;
		}
		[CRepr]
		public struct HypothesisResult
		{
			public HYPOTHESIS hypothesis;
			public DIAGNOSIS_STATUS pathStatus;
		}
		
		// --- COM Interfaces ---
		
		public struct INetDiagHelper {}
		public struct INetDiagHelperUtilFactory {}
		public struct INetDiagHelperEx {}
		public struct INetDiagHelperInfo {}
		public struct INetDiagExtensibleHelper {}
		
		// --- Functions ---
		
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateIncident(PWSTR helperClassName, uint32 celt, HELPER_ATTRIBUTE* attributes, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateWinSockIncident(SOCKET sock, PWSTR host, uint16 port, PWSTR appId, SID* userId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateWebIncident(PWSTR url, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateWebIncidentEx(PWSTR url, BOOL useWinHTTP, PWSTR moduleName, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateSharingIncident(PWSTR UNCPath, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateDNSIncident(PWSTR hostname, uint16 queryType, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateConnectivityIncident(void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateNetConnectionIncident(void** handle, Guid id);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreatePnrpIncident(PWSTR cloudname, PWSTR peername, BOOL diagnosePublish, PWSTR appId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCreateGroupingIncident(PWSTR CloudName, PWSTR GroupName, PWSTR Identity, PWSTR Invitation, SOCKET_ADDRESS_LIST* Addresses, PWSTR appId, void** handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfExecuteDiagnosis(void* handle, HWND hwnd);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCloseIncident(void* handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfDiagnoseIncident(void* Handle, uint32* RootCauseCount, RootCauseInfo** RootCauses, uint32 dwWait, uint32 dwFlags);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfRepairIncident(void* Handle, RepairInfoEx* RepairEx, uint32 dwWait);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfCancelIncident(void* Handle);
		[Import("ndfapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT NdfGetTraceFile(void* Handle, PWSTR* TraceFileLocation);
		
	}
}
