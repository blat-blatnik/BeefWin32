using System;

// namespace Security.NetworkAccessProtection
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 ComponentTypeEnforcementClientSoH = 1;
		public const uint32 ComponentTypeEnforcementClientRp = 2;
		
		// --- Enums ---
		
		public enum IsolationState : int32
		{
			NotRestricted = 1,
			InProbation = 2,
			RestrictedAccess = 3,
		}
		public enum ExtendedIsolationState : int32
		{
			NoData = 0,
			Transition = 1,
			Infected = 2,
			Unknown = 3,
		}
		public enum NapTracingLevel : int32
		{
			Undefined = 0,
			Basic = 1,
			Advanced = 2,
			Debug = 3,
		}
		public enum FailureCategory : int32
		{
			None = 0,
			Other = 1,
			ClientComponent = 2,
			ClientCommunication = 3,
			ServerComponent = 4,
			ServerCommunication = 5,
		}
		public enum FixupState : int32
		{
			Success = 0,
			InProgress = 1,
			CouldNotUpdate = 2,
		}
		public enum NapNotifyType : int32
		{
			Unknown = 0,
			ServiceState = 1,
			QuarState = 2,
		}
		public enum RemoteConfigurationType : int32
		{
			Machine = 1,
			ConfigBlob = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CountedString
		{
			public uint16 length;
			public PWSTR string;
		}
		[CRepr]
		public struct IsolationInfo
		{
			public IsolationState isolationState;
			public FILETIME probEndTime;
			public CountedString failureUrl;
		}
		[CRepr]
		public struct IsolationInfoEx
		{
			public IsolationState isolationState;
			public ExtendedIsolationState extendedIsolationState;
			public FILETIME probEndTime;
			public CountedString failureUrl;
		}
		[CRepr]
		public struct FailureCategoryMapping
		{
			public BOOL[5] mappingCompliance;
		}
		[CRepr]
		public struct CorrelationId
		{
			public Guid connId;
			public FILETIME timeStamp;
		}
		[CRepr]
		public struct ResultCodes
		{
			public uint16 count;
			public HRESULT* results;
		}
		[CRepr]
		public struct Ipv4Address
		{
			public uint8[4] addr;
		}
		[CRepr]
		public struct Ipv6Address
		{
			public uint8[16] addr;
		}
		[CRepr]
		public struct FixupInfo
		{
			public FixupState state;
			public uint8 percentage;
			public ResultCodes resultCodes;
			public uint32 fixupMsgId;
		}
		[CRepr]
		public struct SystemHealthAgentState
		{
			public uint32 id;
			public ResultCodes shaResultCodes;
			public FailureCategory failureCategory;
			public FixupInfo fixupInfo;
		}
		[CRepr]
		public struct SoHAttribute
		{
			public uint16 type;
			public uint16 size;
			public uint8* value;
		}
		[CRepr]
		public struct SoH
		{
			public uint16 count;
			public SoHAttribute* attributes;
		}
		[CRepr]
		public struct NetworkSoH
		{
			public uint16 size;
			public uint8* data;
		}
		[CRepr]
		public struct PrivateData
		{
			public uint16 size;
			public uint8* data;
		}
		[CRepr]
		public struct NapComponentRegistrationInfo
		{
			public uint32 id;
			public CountedString friendlyName;
			public CountedString description;
			public CountedString version;
			public CountedString vendorName;
			public Guid infoClsid;
			public Guid configClsid;
			public FILETIME registrationDate;
			public uint32 componentType;
		}
		
	}
}
