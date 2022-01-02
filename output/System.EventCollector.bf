using System;

// namespace System.EventCollector
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 EC_VARIANT_TYPE_MASK = 127;
		public const uint32 EC_VARIANT_TYPE_ARRAY = 128;
		public const uint32 EC_READ_ACCESS = 1;
		public const uint32 EC_WRITE_ACCESS = 2;
		public const uint32 EC_OPEN_ALWAYS = 0;
		public const uint32 EC_CREATE_NEW = 1;
		public const uint32 EC_OPEN_EXISTING = 2;
		
		// --- Enums ---
		
		public enum EC_SUBSCRIPTION_PROPERTY_ID : int32
		{
			Enabled = 0,
			EventSources = 1,
			EventSourceAddress = 2,
			EventSourceEnabled = 3,
			EventSourceUserName = 4,
			EventSourcePassword = 5,
			Description = 6,
			URI = 7,
			ConfigurationMode = 8,
			Expires = 9,
			Query = 10,
			TransportName = 11,
			TransportPort = 12,
			DeliveryMode = 13,
			DeliveryMaxItems = 14,
			DeliveryMaxLatencyTime = 15,
			HeartbeatInterval = 16,
			Locale = 17,
			ContentFormat = 18,
			LogFile = 19,
			PublisherName = 20,
			CredentialsType = 21,
			CommonUserName = 22,
			CommonPassword = 23,
			HostName = 24,
			ReadExistingEvents = 25,
			Dialect = 26,
			Type = 27,
			AllowedIssuerCAs = 28,
			AllowedSubjects = 29,
			DeniedSubjects = 30,
			AllowedSourceDomainComputers = 31,
			PropertyIdEND = 32,
		}
		public enum EC_SUBSCRIPTION_CREDENTIALS_TYPE : int32
		{
			Default = 0,
			Negotiate = 1,
			Digest = 2,
			Basic = 3,
			LocalMachine = 4,
		}
		public enum EC_SUBSCRIPTION_TYPE : int32
		{
			SourceInitiated = 0,
			CollectorInitiated = 1,
		}
		public enum EC_SUBSCRIPTION_RUNTIME_STATUS_INFO_ID : int32
		{
			Active = 0,
			LastError = 1,
			LastErrorMessage = 2,
			LastErrorTime = 3,
			NextRetryTime = 4,
			EventSources = 5,
			LastHeartbeatTime = 6,
			InfoIdEND = 7,
		}
		public enum EC_VARIANT_TYPE : int32
		{
			TypeNull = 0,
			TypeBoolean = 1,
			TypeUInt32 = 2,
			TypeDateTime = 3,
			TypeString = 4,
			ObjectArrayPropertyHandle = 5,
		}
		public enum EC_SUBSCRIPTION_CONFIGURATION_MODE : int32
		{
			Normal = 0,
			Custom = 1,
			MinLatency = 2,
			MinBandwidth = 3,
		}
		public enum EC_SUBSCRIPTION_DELIVERY_MODE : int32
		{
			Pull = 1,
			Push = 2,
		}
		public enum EC_SUBSCRIPTION_CONTENT_FORMAT : int32
		{
			Events = 1,
			RenderedText = 2,
		}
		public enum EC_SUBSCRIPTION_RUNTIME_STATUS_ACTIVE_STATUS : int32
		{
			Disabled = 1,
			Active = 2,
			Inactive = 3,
			Trying = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct EC_VARIANT
		{
			public _Anonymous_e__Union Anonymous;
			public uint32 Count;
			public uint32 Type;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public BOOL BooleanVal;
				public uint32 UInt32Val;
				public uint64 DateTimeVal;
				public PWSTR StringVal;
				public uint8* BinaryVal;
				public BOOL* BooleanArr;
				public int32* Int32Arr;
				public PWSTR* StringArr;
				public int PropertyHandleVal;
			}
		}
		
		// --- Functions ---
		
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EcOpenSubscriptionEnum(uint32 Flags);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcEnumNextSubscription(int SubscriptionEnum, uint32 SubscriptionNameBufferSize, char16* SubscriptionNameBuffer, out uint32 SubscriptionNameBufferUsed);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int EcOpenSubscription(PWSTR SubscriptionName, uint32 AccessMask, uint32 Flags);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcSetSubscriptionProperty(int Subscription, EC_SUBSCRIPTION_PROPERTY_ID PropertyId, uint32 Flags, out EC_VARIANT PropertyValue);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcGetSubscriptionProperty(int Subscription, EC_SUBSCRIPTION_PROPERTY_ID PropertyId, uint32 Flags, uint32 PropertyValueBufferSize, out EC_VARIANT PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcSaveSubscription(int Subscription, uint32 Flags);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcDeleteSubscription(PWSTR SubscriptionName, uint32 Flags);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcGetObjectArraySize(int ObjectArray, out uint32 ObjectArraySize);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcSetObjectArrayProperty(int ObjectArray, EC_SUBSCRIPTION_PROPERTY_ID PropertyId, uint32 ArrayIndex, uint32 Flags, out EC_VARIANT PropertyValue);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcGetObjectArrayProperty(int ObjectArray, EC_SUBSCRIPTION_PROPERTY_ID PropertyId, uint32 ArrayIndex, uint32 Flags, uint32 PropertyValueBufferSize, out EC_VARIANT PropertyValueBuffer, out uint32 PropertyValueBufferUsed);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcInsertObjectArrayElement(int ObjectArray, uint32 ArrayIndex);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcRemoveObjectArrayElement(int ObjectArray, uint32 ArrayIndex);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcGetSubscriptionRunTimeStatus(PWSTR SubscriptionName, EC_SUBSCRIPTION_RUNTIME_STATUS_INFO_ID StatusInfoId, PWSTR EventSourceName, uint32 Flags, uint32 StatusValueBufferSize, out EC_VARIANT StatusValueBuffer, out uint32 StatusValueBufferUsed);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcRetrySubscription(PWSTR SubscriptionName, PWSTR EventSourceName, uint32 Flags);
		[Import("wecapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EcClose(int Object);
	}
}
