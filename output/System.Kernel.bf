using System;

// namespace System.Kernel
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 OBJ_HANDLE_TAGBITS = 3;
		public const uint32 RTL_BALANCED_NODE_RESERVED_PARENT_MASK = 3;
		public const int32 OBJ_INHERIT = 2;
		public const int32 OBJ_PERMANENT = 16;
		public const int32 OBJ_EXCLUSIVE = 32;
		public const int32 OBJ_CASE_INSENSITIVE = 64;
		public const int32 OBJ_OPENIF = 128;
		public const int32 OBJ_OPENLINK = 256;
		public const int32 OBJ_KERNEL_HANDLE = 512;
		public const int32 OBJ_FORCE_ACCESS_CHECK = 1024;
		public const int32 OBJ_IGNORE_IMPERSONATED_DEVICEMAP = 2048;
		public const int32 OBJ_DONT_REPARSE = 4096;
		public const int32 OBJ_VALID_ATTRIBUTES = 8178;
		public const uint32 NULL64 = 0;
		public const uint32 MAXUCHAR = 255;
		public const uint32 MAXUSHORT = 65535;
		public const uint32 MAXULONG = 4294967295;
		
		// --- Enums ---
		
		public enum EXCEPTION_DISPOSITION : int32
		{
			ContinueExecution = 0,
			ContinueSearch = 1,
			NestedException = 2,
			CollidedUnwind = 3,
		}
		public enum EVENT_TYPE : int32
		{
			NotificationEvent = 0,
			SynchronizationEvent = 1,
		}
		public enum TIMER_TYPE : int32
		{
			NotificationTimer = 0,
			SynchronizationTimer = 1,
		}
		public enum WAIT_TYPE : int32
		{
			All = 0,
			Any = 1,
			Notification = 2,
			Dequeue = 3,
			Dpc = 4,
		}
		public enum NT_PRODUCT_TYPE : int32
		{
			WinNt = 1,
			LanManNt = 2,
			Server = 3,
		}
		public enum SUITE_TYPE : int32
		{
			SmallBusiness = 0,
			Enterprise = 1,
			BackOffice = 2,
			CommunicationServer = 3,
			TerminalServer = 4,
			SmallBusinessRestricted = 5,
			EmbeddedNT = 6,
			DataCenter = 7,
			SingleUserTS = 8,
			Personal = 9,
			Blade = 10,
			EmbeddedRestricted = 11,
			SecurityAppliance = 12,
			StorageServer = 13,
			ComputeServer = 14,
			WHServer = 15,
			PhoneNT = 16,
			MultiUserTS = 17,
			MaxSuiteType = 18,
		}
		public enum COMPARTMENT_ID : int32
		{
			UNSPECIFIED_COMPARTMENT_ID = 0,
			DEFAULT_COMPARTMENT_ID = 1,
		}
		
		// --- Function Pointers ---
		
		public function EXCEPTION_DISPOSITION EXCEPTION_ROUTINE(out EXCEPTION_RECORD ExceptionRecord, void* EstablisherFrame, out CONTEXT ContextRecord, void* DispatcherContext);
		
		// --- Structs ---
		
		[CRepr]
		public struct SLIST_ENTRY
		{
			public SLIST_ENTRY* Next;
		}
		[CRepr, Union]
		public struct SLIST_HEADER
		{
			public _Anonymous_e__Struct Anonymous;
			public _HeaderArm64_e__Struct HeaderArm64;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint64 Alignment;
				public uint64 Region;
			}
			[CRepr]
			public struct _HeaderArm64_e__Struct
			{
				public uint64 _bitfield1;
				public uint64 _bitfield2;
			}
		}
		[CRepr]
		public struct QUAD
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int64 UseThisFieldToCopy;
				public double DoNotUseThisField;
			}
		}
		[CRepr]
		public struct PROCESSOR_NUMBER
		{
			public uint16 Group;
			public uint8 Number;
			public uint8 Reserved;
		}
		[CRepr]
		public struct STRING
		{
			public uint16 Length;
			public uint16 MaximumLength;
			public PSTR Buffer;
		}
		[CRepr]
		public struct CSTRING
		{
			public uint16 Length;
			public uint16 MaximumLength;
			public PSTR Buffer;
		}
		[CRepr]
		public struct LIST_ENTRY
		{
			public LIST_ENTRY* Flink;
			public LIST_ENTRY* Blink;
		}
		[CRepr]
		public struct SINGLE_LIST_ENTRY
		{
			public SINGLE_LIST_ENTRY* Next;
		}
		[CRepr]
		public struct RTL_BALANCED_NODE
		{
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint8 _bitfield;
				public uint ParentValue;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public RTL_BALANCED_NODE*[2] Children;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public RTL_BALANCED_NODE* Left;
					public RTL_BALANCED_NODE* Right;
				}
			}
		}
		[CRepr]
		public struct LIST_ENTRY32
		{
			public uint32 Flink;
			public uint32 Blink;
		}
		[CRepr]
		public struct LIST_ENTRY64
		{
			public uint64 Flink;
			public uint64 Blink;
		}
		[CRepr]
		public struct SINGLE_LIST_ENTRY32
		{
			public uint32 Next;
		}
		[CRepr]
		public struct WNF_STATE_NAME
		{
			public uint32[2] Data;
		}
		[CRepr]
		public struct STRING32
		{
			public uint16 Length;
			public uint16 MaximumLength;
			public uint32 Buffer;
		}
		[CRepr]
		public struct STRING64
		{
			public uint16 Length;
			public uint16 MaximumLength;
			public uint64 Buffer;
		}
		[CRepr]
		public struct OBJECT_ATTRIBUTES64
		{
			public uint32 Length;
			public uint64 RootDirectory;
			public uint64 ObjectName;
			public uint32 Attributes;
			public uint64 SecurityDescriptor;
			public uint64 SecurityQualityOfService;
		}
		[CRepr]
		public struct OBJECT_ATTRIBUTES32
		{
			public uint32 Length;
			public uint32 RootDirectory;
			public uint32 ObjectName;
			public uint32 Attributes;
			public uint32 SecurityDescriptor;
			public uint32 SecurityQualityOfService;
		}
		[CRepr]
		public struct OBJECTID
		{
			public Guid Lineage;
			public uint32 Uniquifier;
		}
		[CRepr]
		public struct EXCEPTION_REGISTRATION_RECORD
		{
			public EXCEPTION_REGISTRATION_RECORD* Next;
			public EXCEPTION_ROUTINE Handler;
		}
		[CRepr]
		public struct NT_TIB
		{
			public EXCEPTION_REGISTRATION_RECORD* ExceptionList;
			public void* StackBase;
			public void* StackLimit;
			public void* SubSystemTib;
			public _Anonymous_e__Union Anonymous;
			public void* ArbitraryUserPointer;
			public NT_TIB* Self;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* FiberData;
				public uint32 Version;
			}
		}
		[CRepr]
		public struct FLOATING_SAVE_AREA
		{
			public uint32 ControlWord;
			public uint32 StatusWord;
			public uint32 TagWord;
			public uint32 ErrorOffset;
			public uint32 ErrorSelector;
			public uint32 DataOffset;
			public uint32 DataSelector;
			public uint8[80] RegisterArea;
			public uint32 Cr0NpxState;
		}
		
		// --- Functions ---
		
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RtlInitializeSListHead(out SLIST_HEADER ListHead);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* RtlFirstEntrySList(in SLIST_HEADER ListHead);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* RtlInterlockedPopEntrySList(out SLIST_HEADER ListHead);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* RtlInterlockedPushEntrySList(out SLIST_HEADER ListHead, out SLIST_ENTRY ListEntry);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* RtlInterlockedPushListSListEx(out SLIST_HEADER ListHead, out SLIST_ENTRY List, out SLIST_ENTRY ListEnd, uint32 Count);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern SLIST_ENTRY* RtlInterlockedFlushSList(out SLIST_HEADER ListHead);
		[Import("ntdll.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 RtlQueryDepthSList(ref SLIST_HEADER ListHead);
	}
}
