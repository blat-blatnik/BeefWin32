using System;

// namespace System.Com.Events
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum EOC_ChangeType : int32
		{
			NewObject = 0,
			ModifiedObject = 1,
			DeletedObject = 2,
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
		
		[CRepr]
		public struct IEventSystem : IDispatch
		{
			public const new Guid IID = .(0x4e14fb9f, 0x2e22, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Query(BSTR progID, BSTR queryCriteria, out int32 errorIndex, out IUnknown* ppInterface) mut => VT.Query(ref this, progID, queryCriteria, out errorIndex, out ppInterface);
			public HRESULT Store(BSTR ProgID, ref IUnknown pInterface) mut => VT.Store(ref this, ProgID, ref pInterface);
			public HRESULT Remove(BSTR progID, BSTR queryCriteria, out int32 errorIndex) mut => VT.Remove(ref this, progID, queryCriteria, out errorIndex);
			public HRESULT get_EventObjectChangeEventClassID(out BSTR pbstrEventClassID) mut => VT.get_EventObjectChangeEventClassID(ref this, out pbstrEventClassID);
			public HRESULT QueryS(BSTR progID, BSTR queryCriteria, out IUnknown* ppInterface) mut => VT.QueryS(ref this, progID, queryCriteria, out ppInterface);
			public HRESULT RemoveS(BSTR progID, BSTR queryCriteria) mut => VT.RemoveS(ref this, progID, queryCriteria);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, BSTR progID, BSTR queryCriteria, out int32 errorIndex, out IUnknown* ppInterface) Query;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, BSTR ProgID, ref IUnknown pInterface) Store;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, BSTR progID, BSTR queryCriteria, out int32 errorIndex) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, out BSTR pbstrEventClassID) get_EventObjectChangeEventClassID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, BSTR progID, BSTR queryCriteria, out IUnknown* ppInterface) QueryS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSystem self, BSTR progID, BSTR queryCriteria) RemoveS;
			}
		}
		[CRepr]
		public struct IEventPublisher : IDispatch
		{
			public const new Guid IID = .(0xe341516b, 0x2e32, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PublisherID(out BSTR pbstrPublisherID) mut => VT.get_PublisherID(ref this, out pbstrPublisherID);
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut => VT.put_PublisherID(ref this, bstrPublisherID);
			public HRESULT get_PublisherName(out BSTR pbstrPublisherName) mut => VT.get_PublisherName(ref this, out pbstrPublisherName);
			public HRESULT put_PublisherName(BSTR bstrPublisherName) mut => VT.put_PublisherName(ref this, bstrPublisherName);
			public HRESULT get_PublisherType(out BSTR pbstrPublisherType) mut => VT.get_PublisherType(ref this, out pbstrPublisherType);
			public HRESULT put_PublisherType(BSTR bstrPublisherType) mut => VT.put_PublisherType(ref this, bstrPublisherType);
			public HRESULT get_OwnerSID(out BSTR pbstrOwnerSID) mut => VT.get_OwnerSID(ref this, out pbstrOwnerSID);
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut => VT.put_OwnerSID(ref this, bstrOwnerSID);
			public HRESULT get_Description(out BSTR pbstrDescription) mut => VT.get_Description(ref this, out pbstrDescription);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT GetDefaultProperty(BSTR bstrPropertyName, out VARIANT propertyValue) mut => VT.GetDefaultProperty(ref this, bstrPropertyName, out propertyValue);
			public HRESULT PutDefaultProperty(BSTR bstrPropertyName, ref VARIANT propertyValue) mut => VT.PutDefaultProperty(ref this, bstrPropertyName, ref propertyValue);
			public HRESULT RemoveDefaultProperty(BSTR bstrPropertyName) mut => VT.RemoveDefaultProperty(ref this, bstrPropertyName);
			public HRESULT GetDefaultPropertyCollection(out IEventObjectCollection* collection) mut => VT.GetDefaultPropertyCollection(ref this, out collection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out BSTR pbstrPublisherID) get_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPublisherID) put_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out BSTR pbstrPublisherName) get_PublisherName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPublisherName) put_PublisherName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out BSTR pbstrPublisherType) get_PublisherType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPublisherType) put_PublisherType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out BSTR pbstrOwnerSID) get_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out BSTR pbstrDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPropertyName, out VARIANT propertyValue) GetDefaultProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPropertyName, ref VARIANT propertyValue) PutDefaultProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, BSTR bstrPropertyName) RemoveDefaultProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventPublisher self, out IEventObjectCollection* collection) GetDefaultPropertyCollection;
			}
		}
		[CRepr]
		public struct IEventClass : IDispatch
		{
			public const new Guid IID = .(0xfb2b72a0, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventClassID(out BSTR pbstrEventClassID) mut => VT.get_EventClassID(ref this, out pbstrEventClassID);
			public HRESULT put_EventClassID(BSTR bstrEventClassID) mut => VT.put_EventClassID(ref this, bstrEventClassID);
			public HRESULT get_EventClassName(out BSTR pbstrEventClassName) mut => VT.get_EventClassName(ref this, out pbstrEventClassName);
			public HRESULT put_EventClassName(BSTR bstrEventClassName) mut => VT.put_EventClassName(ref this, bstrEventClassName);
			public HRESULT get_OwnerSID(out BSTR pbstrOwnerSID) mut => VT.get_OwnerSID(ref this, out pbstrOwnerSID);
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut => VT.put_OwnerSID(ref this, bstrOwnerSID);
			public HRESULT get_FiringInterfaceID(out BSTR pbstrFiringInterfaceID) mut => VT.get_FiringInterfaceID(ref this, out pbstrFiringInterfaceID);
			public HRESULT put_FiringInterfaceID(BSTR bstrFiringInterfaceID) mut => VT.put_FiringInterfaceID(ref this, bstrFiringInterfaceID);
			public HRESULT get_Description(out BSTR pbstrDescription) mut => VT.get_Description(ref this, out pbstrDescription);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_CustomConfigCLSID(out BSTR pbstrCustomConfigCLSID) mut => VT.get_CustomConfigCLSID(ref this, out pbstrCustomConfigCLSID);
			public HRESULT put_CustomConfigCLSID(BSTR bstrCustomConfigCLSID) mut => VT.put_CustomConfigCLSID(ref this, bstrCustomConfigCLSID);
			public HRESULT get_TypeLib(out BSTR pbstrTypeLib) mut => VT.get_TypeLib(ref this, out pbstrTypeLib);
			public HRESULT put_TypeLib(BSTR bstrTypeLib) mut => VT.put_TypeLib(ref this, bstrTypeLib);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrEventClassID) get_EventClassID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrEventClassID) put_EventClassID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrEventClassName) get_EventClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrEventClassName) put_EventClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrOwnerSID) get_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrFiringInterfaceID) get_FiringInterfaceID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrFiringInterfaceID) put_FiringInterfaceID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrCustomConfigCLSID) get_CustomConfigCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrCustomConfigCLSID) put_CustomConfigCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, out BSTR pbstrTypeLib) get_TypeLib;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass self, BSTR bstrTypeLib) put_TypeLib;
			}
		}
		[CRepr]
		public struct IEventClass2 : IEventClass
		{
			public const new Guid IID = .(0xfb2b72a1, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PublisherID(out BSTR pbstrPublisherID) mut => VT.get_PublisherID(ref this, out pbstrPublisherID);
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut => VT.put_PublisherID(ref this, bstrPublisherID);
			public HRESULT get_MultiInterfacePublisherFilterCLSID(out BSTR pbstrPubFilCLSID) mut => VT.get_MultiInterfacePublisherFilterCLSID(ref this, out pbstrPubFilCLSID);
			public HRESULT put_MultiInterfacePublisherFilterCLSID(BSTR bstrPubFilCLSID) mut => VT.put_MultiInterfacePublisherFilterCLSID(ref this, bstrPubFilCLSID);
			public HRESULT get_AllowInprocActivation(out BOOL pfAllowInprocActivation) mut => VT.get_AllowInprocActivation(ref this, out pfAllowInprocActivation);
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut => VT.put_AllowInprocActivation(ref this, fAllowInprocActivation);
			public HRESULT get_FireInParallel(out BOOL pfFireInParallel) mut => VT.get_FireInParallel(ref this, out pfFireInParallel);
			public HRESULT put_FireInParallel(BOOL fFireInParallel) mut => VT.put_FireInParallel(ref this, fFireInParallel);

			[CRepr]
			public struct VTable : IEventClass.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, out BSTR pbstrPublisherID) get_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, BSTR bstrPublisherID) put_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, out BSTR pbstrPubFilCLSID) get_MultiInterfacePublisherFilterCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, BSTR bstrPubFilCLSID) put_MultiInterfacePublisherFilterCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, out BOOL pfAllowInprocActivation) get_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, out BOOL pfFireInParallel) get_FireInParallel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventClass2 self, BOOL fFireInParallel) put_FireInParallel;
			}
		}
		[CRepr]
		public struct IEventSubscription : IDispatch
		{
			public const new Guid IID = .(0x4a6b0e15, 0x2e38, 0x11d1, 0x99, 0x65, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubscriptionID(out BSTR pbstrSubscriptionID) mut => VT.get_SubscriptionID(ref this, out pbstrSubscriptionID);
			public HRESULT put_SubscriptionID(BSTR bstrSubscriptionID) mut => VT.put_SubscriptionID(ref this, bstrSubscriptionID);
			public HRESULT get_SubscriptionName(out BSTR pbstrSubscriptionName) mut => VT.get_SubscriptionName(ref this, out pbstrSubscriptionName);
			public HRESULT put_SubscriptionName(BSTR bstrSubscriptionName) mut => VT.put_SubscriptionName(ref this, bstrSubscriptionName);
			public HRESULT get_PublisherID(out BSTR pbstrPublisherID) mut => VT.get_PublisherID(ref this, out pbstrPublisherID);
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut => VT.put_PublisherID(ref this, bstrPublisherID);
			public HRESULT get_EventClassID(out BSTR pbstrEventClassID) mut => VT.get_EventClassID(ref this, out pbstrEventClassID);
			public HRESULT put_EventClassID(BSTR bstrEventClassID) mut => VT.put_EventClassID(ref this, bstrEventClassID);
			public HRESULT get_MethodName(out BSTR pbstrMethodName) mut => VT.get_MethodName(ref this, out pbstrMethodName);
			public HRESULT put_MethodName(BSTR bstrMethodName) mut => VT.put_MethodName(ref this, bstrMethodName);
			public HRESULT get_SubscriberCLSID(out BSTR pbstrSubscriberCLSID) mut => VT.get_SubscriberCLSID(ref this, out pbstrSubscriberCLSID);
			public HRESULT put_SubscriberCLSID(BSTR bstrSubscriberCLSID) mut => VT.put_SubscriberCLSID(ref this, bstrSubscriberCLSID);
			public HRESULT get_SubscriberInterface(out IUnknown* ppSubscriberInterface) mut => VT.get_SubscriberInterface(ref this, out ppSubscriberInterface);
			public HRESULT put_SubscriberInterface(ref IUnknown pSubscriberInterface) mut => VT.put_SubscriberInterface(ref this, ref pSubscriberInterface);
			public HRESULT get_PerUser(out BOOL pfPerUser) mut => VT.get_PerUser(ref this, out pfPerUser);
			public HRESULT put_PerUser(BOOL fPerUser) mut => VT.put_PerUser(ref this, fPerUser);
			public HRESULT get_OwnerSID(out BSTR pbstrOwnerSID) mut => VT.get_OwnerSID(ref this, out pbstrOwnerSID);
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut => VT.put_OwnerSID(ref this, bstrOwnerSID);
			public HRESULT get_Enabled(out BOOL pfEnabled) mut => VT.get_Enabled(ref this, out pfEnabled);
			public HRESULT put_Enabled(BOOL fEnabled) mut => VT.put_Enabled(ref this, fEnabled);
			public HRESULT get_Description(out BSTR pbstrDescription) mut => VT.get_Description(ref this, out pbstrDescription);
			public HRESULT put_Description(BSTR bstrDescription) mut => VT.put_Description(ref this, bstrDescription);
			public HRESULT get_MachineName(out BSTR pbstrMachineName) mut => VT.get_MachineName(ref this, out pbstrMachineName);
			public HRESULT put_MachineName(BSTR bstrMachineName) mut => VT.put_MachineName(ref this, bstrMachineName);
			public HRESULT GetPublisherProperty(BSTR bstrPropertyName, out VARIANT propertyValue) mut => VT.GetPublisherProperty(ref this, bstrPropertyName, out propertyValue);
			public HRESULT PutPublisherProperty(BSTR bstrPropertyName, ref VARIANT propertyValue) mut => VT.PutPublisherProperty(ref this, bstrPropertyName, ref propertyValue);
			public HRESULT RemovePublisherProperty(BSTR bstrPropertyName) mut => VT.RemovePublisherProperty(ref this, bstrPropertyName);
			public HRESULT GetPublisherPropertyCollection(out IEventObjectCollection* collection) mut => VT.GetPublisherPropertyCollection(ref this, out collection);
			public HRESULT GetSubscriberProperty(BSTR bstrPropertyName, out VARIANT propertyValue) mut => VT.GetSubscriberProperty(ref this, bstrPropertyName, out propertyValue);
			public HRESULT PutSubscriberProperty(BSTR bstrPropertyName, ref VARIANT propertyValue) mut => VT.PutSubscriberProperty(ref this, bstrPropertyName, ref propertyValue);
			public HRESULT RemoveSubscriberProperty(BSTR bstrPropertyName) mut => VT.RemoveSubscriberProperty(ref this, bstrPropertyName);
			public HRESULT GetSubscriberPropertyCollection(out IEventObjectCollection* collection) mut => VT.GetSubscriberPropertyCollection(ref this, out collection);
			public HRESULT get_InterfaceID(out BSTR pbstrInterfaceID) mut => VT.get_InterfaceID(ref this, out pbstrInterfaceID);
			public HRESULT put_InterfaceID(BSTR bstrInterfaceID) mut => VT.put_InterfaceID(ref this, bstrInterfaceID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrSubscriptionID) get_SubscriptionID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrSubscriptionID) put_SubscriptionID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrSubscriptionName) get_SubscriptionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrSubscriptionName) put_SubscriptionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrPublisherID) get_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPublisherID) put_PublisherID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrEventClassID) get_EventClassID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrEventClassID) put_EventClassID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrMethodName) get_MethodName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrMethodName) put_MethodName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrSubscriberCLSID) get_SubscriberCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrSubscriberCLSID) put_SubscriberCLSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out IUnknown* ppSubscriberInterface) get_SubscriberInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, ref IUnknown pSubscriberInterface) put_SubscriberInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BOOL pfPerUser) get_PerUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BOOL fPerUser) put_PerUser;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrOwnerSID) get_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BOOL pfEnabled) get_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BOOL fEnabled) put_Enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrDescription) put_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrMachineName) get_MachineName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrMachineName) put_MachineName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName, out VARIANT propertyValue) GetPublisherProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName, ref VARIANT propertyValue) PutPublisherProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName) RemovePublisherProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out IEventObjectCollection* collection) GetPublisherPropertyCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName, out VARIANT propertyValue) GetSubscriberProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName, ref VARIANT propertyValue) PutSubscriberProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrPropertyName) RemoveSubscriberProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out IEventObjectCollection* collection) GetSubscriberPropertyCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, out BSTR pbstrInterfaceID) get_InterfaceID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventSubscription self, BSTR bstrInterfaceID) put_InterfaceID;
			}
		}
		[CRepr]
		public struct IFiringControl : IDispatch
		{
			public const new Guid IID = .(0xe0498c93, 0x4efe, 0x11d1, 0x99, 0x71, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FireSubscription(ref IEventSubscription subscription) mut => VT.FireSubscription(ref this, ref subscription);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFiringControl self, ref IEventSubscription subscription) FireSubscription;
			}
		}
		[CRepr]
		public struct IPublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc0, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR methodName, ref IDispatch dispUserDefined) mut => VT.Initialize(ref this, methodName, ref dispUserDefined);
			public HRESULT PrepareToFire(BSTR methodName, ref IFiringControl firingControl) mut => VT.PrepareToFire(ref this, methodName, ref firingControl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublisherFilter self, BSTR methodName, ref IDispatch dispUserDefined) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublisherFilter self, BSTR methodName, ref IFiringControl firingControl) PrepareToFire;
			}
		}
		[CRepr]
		public struct IMultiInterfacePublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc1, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IMultiInterfaceEventControl pEIC) mut => VT.Initialize(ref this, ref pEIC);
			public HRESULT PrepareToFire(in Guid iid, BSTR methodName, ref IFiringControl firingControl) mut => VT.PrepareToFire(ref this, iid, methodName, ref firingControl);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfacePublisherFilter self, ref IMultiInterfaceEventControl pEIC) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfacePublisherFilter self, in Guid iid, BSTR methodName, ref IFiringControl firingControl) PrepareToFire;
			}
		}
		[CRepr]
		public struct IEventObjectChange : IUnknown
		{
			public const new Guid IID = .(0xf4a07d70, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangedSubscription(EOC_ChangeType changeType, BSTR bstrSubscriptionID) mut => VT.ChangedSubscription(ref this, changeType, bstrSubscriptionID);
			public HRESULT ChangedEventClass(EOC_ChangeType changeType, BSTR bstrEventClassID) mut => VT.ChangedEventClass(ref this, changeType, bstrEventClassID);
			public HRESULT ChangedPublisher(EOC_ChangeType changeType, BSTR bstrPublisherID) mut => VT.ChangedPublisher(ref this, changeType, bstrPublisherID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectChange self, EOC_ChangeType changeType, BSTR bstrSubscriptionID) ChangedSubscription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectChange self, EOC_ChangeType changeType, BSTR bstrEventClassID) ChangedEventClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectChange self, EOC_ChangeType changeType, BSTR bstrPublisherID) ChangedPublisher;
			}
		}
		[CRepr]
		public struct IEventObjectChange2 : IUnknown
		{
			public const new Guid IID = .(0x7701a9c3, 0xbd68, 0x438f, 0x83, 0xe0, 0x67, 0xbf, 0x4f, 0x53, 0xa4, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangedSubscription(ref COMEVENTSYSCHANGEINFO pInfo) mut => VT.ChangedSubscription(ref this, ref pInfo);
			public HRESULT ChangedEventClass(ref COMEVENTSYSCHANGEINFO pInfo) mut => VT.ChangedEventClass(ref this, ref pInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectChange2 self, ref COMEVENTSYSCHANGEINFO pInfo) ChangedSubscription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectChange2 self, ref COMEVENTSYSCHANGEINFO pInfo) ChangedEventClass;
			}
		}
		[CRepr]
		public struct IEnumEventObject : IUnknown
		{
			public const new Guid IID = .(0xf4a07d63, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumEventObject* ppInterface) mut => VT.Clone(ref this, out ppInterface);
			public HRESULT Next(uint32 cReqElem, IUnknown** ppInterface, out uint32 cRetElem) mut => VT.Next(ref this, cReqElem, ppInterface, out cRetElem);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 cSkipElem) mut => VT.Skip(ref this, cSkipElem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEventObject self, out IEnumEventObject* ppInterface) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEventObject self, uint32 cReqElem, IUnknown** ppInterface, out uint32 cRetElem) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEventObject self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumEventObject self, uint32 cSkipElem) Skip;
			}
		}
		[CRepr]
		public struct IEventObjectCollection : IDispatch
		{
			public const new Guid IID = .(0xf89ac270, 0xd4eb, 0x11d1, 0xb6, 0x82, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IUnknown* ppUnkEnum) mut => VT.get__NewEnum(ref this, out ppUnkEnum);
			public HRESULT get_Item(BSTR objectID, out VARIANT pItem) mut => VT.get_Item(ref this, objectID, out pItem);
			public HRESULT get_NewEnum(out IEnumEventObject* ppEnum) mut => VT.get_NewEnum(ref this, out ppEnum);
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT Add(ref VARIANT item, BSTR objectID) mut => VT.Add(ref this, ref item, objectID);
			public HRESULT Remove(BSTR objectID) mut => VT.Remove(ref this, objectID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, out IUnknown* ppUnkEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, BSTR objectID, out VARIANT pItem) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, out IEnumEventObject* ppEnum) get_NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, ref VARIANT item, BSTR objectID) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventObjectCollection self, BSTR objectID) Remove;
			}
		}
		[CRepr]
		public struct IEventProperty : IDispatch
		{
			public const new Guid IID = .(0xda538ee2, 0xf4de, 0x11d1, 0xb6, 0xbb, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR propertyName) mut => VT.get_Name(ref this, out propertyName);
			public HRESULT put_Name(BSTR propertyName) mut => VT.put_Name(ref this, propertyName);
			public HRESULT get_Value(out VARIANT propertyValue) mut => VT.get_Value(ref this, out propertyValue);
			public HRESULT put_Value(ref VARIANT propertyValue) mut => VT.put_Value(ref this, ref propertyValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventProperty self, out BSTR propertyName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventProperty self, BSTR propertyName) put_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventProperty self, out VARIANT propertyValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventProperty self, ref VARIANT propertyValue) put_Value;
			}
		}
		[CRepr]
		public struct IEventControl : IDispatch
		{
			public const new Guid IID = .(0x0343e2f4, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPublisherFilter(BSTR methodName, ref IPublisherFilter pPublisherFilter) mut => VT.SetPublisherFilter(ref this, methodName, ref pPublisherFilter);
			public HRESULT get_AllowInprocActivation(out BOOL pfAllowInprocActivation) mut => VT.get_AllowInprocActivation(ref this, out pfAllowInprocActivation);
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut => VT.put_AllowInprocActivation(ref this, fAllowInprocActivation);
			public HRESULT GetSubscriptions(BSTR methodName, BSTR optionalCriteria, ref int32 optionalErrorIndex, out IEventObjectCollection* ppCollection) mut => VT.GetSubscriptions(ref this, methodName, optionalCriteria, ref optionalErrorIndex, out ppCollection);
			public HRESULT SetDefaultQuery(BSTR methodName, BSTR criteria, out int32 errorIndex) mut => VT.SetDefaultQuery(ref this, methodName, criteria, out errorIndex);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventControl self, BSTR methodName, ref IPublisherFilter pPublisherFilter) SetPublisherFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventControl self, out BOOL pfAllowInprocActivation) get_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventControl self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventControl self, BSTR methodName, BSTR optionalCriteria, ref int32 optionalErrorIndex, out IEventObjectCollection* ppCollection) GetSubscriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEventControl self, BSTR methodName, BSTR criteria, out int32 errorIndex) SetDefaultQuery;
			}
		}
		[CRepr]
		public struct IMultiInterfaceEventControl : IUnknown
		{
			public const new Guid IID = .(0x0343e2f5, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMultiInterfacePublisherFilter(ref IMultiInterfacePublisherFilter classFilter) mut => VT.SetMultiInterfacePublisherFilter(ref this, ref classFilter);
			public HRESULT GetSubscriptions(in Guid eventIID, BSTR bstrMethodName, BSTR optionalCriteria, ref int32 optionalErrorIndex, out IEventObjectCollection* ppCollection) mut => VT.GetSubscriptions(ref this, eventIID, bstrMethodName, optionalCriteria, ref optionalErrorIndex, out ppCollection);
			public HRESULT SetDefaultQuery(in Guid eventIID, BSTR bstrMethodName, BSTR bstrCriteria, out int32 errorIndex) mut => VT.SetDefaultQuery(ref this, eventIID, bstrMethodName, bstrCriteria, out errorIndex);
			public HRESULT get_AllowInprocActivation(out BOOL pfAllowInprocActivation) mut => VT.get_AllowInprocActivation(ref this, out pfAllowInprocActivation);
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut => VT.put_AllowInprocActivation(ref this, fAllowInprocActivation);
			public HRESULT get_FireInParallel(out BOOL pfFireInParallel) mut => VT.get_FireInParallel(ref this, out pfFireInParallel);
			public HRESULT put_FireInParallel(BOOL fFireInParallel) mut => VT.put_FireInParallel(ref this, fFireInParallel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, ref IMultiInterfacePublisherFilter classFilter) SetMultiInterfacePublisherFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, in Guid eventIID, BSTR bstrMethodName, BSTR optionalCriteria, ref int32 optionalErrorIndex, out IEventObjectCollection* ppCollection) GetSubscriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, in Guid eventIID, BSTR bstrMethodName, BSTR bstrCriteria, out int32 errorIndex) SetDefaultQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, out BOOL pfAllowInprocActivation) get_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, out BOOL pfFireInParallel) get_FireInParallel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiInterfaceEventControl self, BOOL fFireInParallel) put_FireInParallel;
			}
		}
		[CRepr]
		public struct IDontSupportEventSubscription : IUnknown
		{
			public const new Guid IID = .(0x784121f1, 0x62a6, 0x4b89, 0x85, 0x5f, 0xd6, 0x5f, 0x29, 0x6d, 0xe8, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		
	}
}
