using System;

// namespace System.Com.Events
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum EOC_ChangeType : int32
		{
			EOC_NewObject = 0,
			EOC_ModifiedObject = 1,
			EOC_DeletedObject = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct COMEVENTSYSCHANGEINFO
		{
			public uint32 cbSize;
			public EOC_ChangeType changeType;
			public BSTR objectId;
			public BSTR partitionId;
			public BSTR applicationId;
			public Guid[10] reserved;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CEventSystem = .(0x4e14fba2, 0x2e22, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
		public const Guid CLSID_CEventPublisher = .(0xab944620, 0x79c6, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
		public const Guid CLSID_CEventClass = .(0xcdbec9c0, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
		public const Guid CLSID_CEventSubscription = .(0x7542e960, 0x79c7, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
		public const Guid CLSID_EventObjectChange = .(0xd0565000, 0x9df4, 0x11d1, 0xa2, 0x81, 0x00, 0xc0, 0x4f, 0xca, 0x0a, 0xa7);
		public const Guid CLSID_EventObjectChange2 = .(0xbb07bacd, 0xcd56, 0x4e63, 0xa8, 0xff, 0xcb, 0xf0, 0x35, 0x5f, 0xb9, 0xf4);
		
		// --- COM Interfaces ---
		
		public struct IEventSystem {}
		public struct IEventPublisher {}
		public struct IEventClass {}
		public struct IEventClass2 {}
		public struct IEventSubscription {}
		public struct IFiringControl {}
		public struct IPublisherFilter {}
		public struct IMultiInterfacePublisherFilter {}
		public struct IEventObjectChange {}
		public struct IEventObjectChange2 {}
		public struct IEnumEventObject {}
		public struct IEventObjectCollection {}
		public struct IEventProperty {}
		public struct IEventControl {}
		public struct IMultiInterfaceEventControl {}
		public struct IDontSupportEventSubscription {}
		
	}
}
