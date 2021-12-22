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
		
		[CRepr]
		public struct IEventSystem : IDispatch
		{
			public const new Guid IID = .(0x4e14fb9f, 0x2e22, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Query(BSTR progID, BSTR queryCriteria, int32* errorIndex, IUnknown** ppInterface) mut
			{
				return VT.Query(&this, progID, queryCriteria, errorIndex, ppInterface);
			}
			public HRESULT Store(BSTR ProgID, IUnknown* pInterface) mut
			{
				return VT.Store(&this, ProgID, pInterface);
			}
			public HRESULT Remove(BSTR progID, BSTR queryCriteria, int32* errorIndex) mut
			{
				return VT.Remove(&this, progID, queryCriteria, errorIndex);
			}
			public HRESULT get_EventObjectChangeEventClassID(BSTR* pbstrEventClassID) mut
			{
				return VT.get_EventObjectChangeEventClassID(&this, pbstrEventClassID);
			}
			public HRESULT QueryS(BSTR progID, BSTR queryCriteria, IUnknown** ppInterface) mut
			{
				return VT.QueryS(&this, progID, queryCriteria, ppInterface);
			}
			public HRESULT RemoveS(BSTR progID, BSTR queryCriteria) mut
			{
				return VT.RemoveS(&this, progID, queryCriteria);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, int32* errorIndex, IUnknown** ppInterface) Query;
				public new function HRESULT(IEventSystem *self, BSTR ProgID, IUnknown* pInterface) Store;
				public new function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, int32* errorIndex) Remove;
				public new function HRESULT(IEventSystem *self, BSTR* pbstrEventClassID) get_EventObjectChangeEventClassID;
				public new function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, IUnknown** ppInterface) QueryS;
				public new function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria) RemoveS;
			}
		}
		[CRepr]
		public struct IEventPublisher : IDispatch
		{
			public const new Guid IID = .(0xe341516b, 0x2e32, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PublisherID(BSTR* pbstrPublisherID) mut
			{
				return VT.get_PublisherID(&this, pbstrPublisherID);
			}
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut
			{
				return VT.put_PublisherID(&this, bstrPublisherID);
			}
			public HRESULT get_PublisherName(BSTR* pbstrPublisherName) mut
			{
				return VT.get_PublisherName(&this, pbstrPublisherName);
			}
			public HRESULT put_PublisherName(BSTR bstrPublisherName) mut
			{
				return VT.put_PublisherName(&this, bstrPublisherName);
			}
			public HRESULT get_PublisherType(BSTR* pbstrPublisherType) mut
			{
				return VT.get_PublisherType(&this, pbstrPublisherType);
			}
			public HRESULT put_PublisherType(BSTR bstrPublisherType) mut
			{
				return VT.put_PublisherType(&this, bstrPublisherType);
			}
			public HRESULT get_OwnerSID(BSTR* pbstrOwnerSID) mut
			{
				return VT.get_OwnerSID(&this, pbstrOwnerSID);
			}
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut
			{
				return VT.put_OwnerSID(&this, bstrOwnerSID);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT GetDefaultProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.GetDefaultProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT PutDefaultProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.PutDefaultProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT RemoveDefaultProperty(BSTR bstrPropertyName) mut
			{
				return VT.RemoveDefaultProperty(&this, bstrPropertyName);
			}
			public HRESULT GetDefaultPropertyCollection(IEventObjectCollection** collection) mut
			{
				return VT.GetDefaultPropertyCollection(&this, collection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherID) get_PublisherID;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPublisherID) put_PublisherID;
				public new function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherName) get_PublisherName;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPublisherName) put_PublisherName;
				public new function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherType) get_PublisherType;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPublisherType) put_PublisherType;
				public new function HRESULT(IEventPublisher *self, BSTR* pbstrOwnerSID) get_OwnerSID;
				public new function HRESULT(IEventPublisher *self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function HRESULT(IEventPublisher *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IEventPublisher *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetDefaultProperty;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutDefaultProperty;
				public new function HRESULT(IEventPublisher *self, BSTR bstrPropertyName) RemoveDefaultProperty;
				public new function HRESULT(IEventPublisher *self, IEventObjectCollection** collection) GetDefaultPropertyCollection;
			}
		}
		[CRepr]
		public struct IEventClass : IDispatch
		{
			public const new Guid IID = .(0xfb2b72a0, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EventClassID(BSTR* pbstrEventClassID) mut
			{
				return VT.get_EventClassID(&this, pbstrEventClassID);
			}
			public HRESULT put_EventClassID(BSTR bstrEventClassID) mut
			{
				return VT.put_EventClassID(&this, bstrEventClassID);
			}
			public HRESULT get_EventClassName(BSTR* pbstrEventClassName) mut
			{
				return VT.get_EventClassName(&this, pbstrEventClassName);
			}
			public HRESULT put_EventClassName(BSTR bstrEventClassName) mut
			{
				return VT.put_EventClassName(&this, bstrEventClassName);
			}
			public HRESULT get_OwnerSID(BSTR* pbstrOwnerSID) mut
			{
				return VT.get_OwnerSID(&this, pbstrOwnerSID);
			}
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut
			{
				return VT.put_OwnerSID(&this, bstrOwnerSID);
			}
			public HRESULT get_FiringInterfaceID(BSTR* pbstrFiringInterfaceID) mut
			{
				return VT.get_FiringInterfaceID(&this, pbstrFiringInterfaceID);
			}
			public HRESULT put_FiringInterfaceID(BSTR bstrFiringInterfaceID) mut
			{
				return VT.put_FiringInterfaceID(&this, bstrFiringInterfaceID);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_CustomConfigCLSID(BSTR* pbstrCustomConfigCLSID) mut
			{
				return VT.get_CustomConfigCLSID(&this, pbstrCustomConfigCLSID);
			}
			public HRESULT put_CustomConfigCLSID(BSTR bstrCustomConfigCLSID) mut
			{
				return VT.put_CustomConfigCLSID(&this, bstrCustomConfigCLSID);
			}
			public HRESULT get_TypeLib(BSTR* pbstrTypeLib) mut
			{
				return VT.get_TypeLib(&this, pbstrTypeLib);
			}
			public HRESULT put_TypeLib(BSTR bstrTypeLib) mut
			{
				return VT.put_TypeLib(&this, bstrTypeLib);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventClass *self, BSTR* pbstrEventClassID) get_EventClassID;
				public new function HRESULT(IEventClass *self, BSTR bstrEventClassID) put_EventClassID;
				public new function HRESULT(IEventClass *self, BSTR* pbstrEventClassName) get_EventClassName;
				public new function HRESULT(IEventClass *self, BSTR bstrEventClassName) put_EventClassName;
				public new function HRESULT(IEventClass *self, BSTR* pbstrOwnerSID) get_OwnerSID;
				public new function HRESULT(IEventClass *self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function HRESULT(IEventClass *self, BSTR* pbstrFiringInterfaceID) get_FiringInterfaceID;
				public new function HRESULT(IEventClass *self, BSTR bstrFiringInterfaceID) put_FiringInterfaceID;
				public new function HRESULT(IEventClass *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IEventClass *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IEventClass *self, BSTR* pbstrCustomConfigCLSID) get_CustomConfigCLSID;
				public new function HRESULT(IEventClass *self, BSTR bstrCustomConfigCLSID) put_CustomConfigCLSID;
				public new function HRESULT(IEventClass *self, BSTR* pbstrTypeLib) get_TypeLib;
				public new function HRESULT(IEventClass *self, BSTR bstrTypeLib) put_TypeLib;
			}
		}
		[CRepr]
		public struct IEventClass2 : IEventClass
		{
			public const new Guid IID = .(0xfb2b72a1, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PublisherID(BSTR* pbstrPublisherID) mut
			{
				return VT.get_PublisherID(&this, pbstrPublisherID);
			}
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut
			{
				return VT.put_PublisherID(&this, bstrPublisherID);
			}
			public HRESULT get_MultiInterfacePublisherFilterCLSID(BSTR* pbstrPubFilCLSID) mut
			{
				return VT.get_MultiInterfacePublisherFilterCLSID(&this, pbstrPubFilCLSID);
			}
			public HRESULT put_MultiInterfacePublisherFilterCLSID(BSTR bstrPubFilCLSID) mut
			{
				return VT.put_MultiInterfacePublisherFilterCLSID(&this, bstrPubFilCLSID);
			}
			public HRESULT get_AllowInprocActivation(BOOL* pfAllowInprocActivation) mut
			{
				return VT.get_AllowInprocActivation(&this, pfAllowInprocActivation);
			}
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut
			{
				return VT.put_AllowInprocActivation(&this, fAllowInprocActivation);
			}
			public HRESULT get_FireInParallel(BOOL* pfFireInParallel) mut
			{
				return VT.get_FireInParallel(&this, pfFireInParallel);
			}
			public HRESULT put_FireInParallel(BOOL fFireInParallel) mut
			{
				return VT.put_FireInParallel(&this, fFireInParallel);
			}
			[CRepr]
			public struct VTable : IEventClass.VTable
			{
				public new function HRESULT(IEventClass2 *self, BSTR* pbstrPublisherID) get_PublisherID;
				public new function HRESULT(IEventClass2 *self, BSTR bstrPublisherID) put_PublisherID;
				public new function HRESULT(IEventClass2 *self, BSTR* pbstrPubFilCLSID) get_MultiInterfacePublisherFilterCLSID;
				public new function HRESULT(IEventClass2 *self, BSTR bstrPubFilCLSID) put_MultiInterfacePublisherFilterCLSID;
				public new function HRESULT(IEventClass2 *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
				public new function HRESULT(IEventClass2 *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function HRESULT(IEventClass2 *self, BOOL* pfFireInParallel) get_FireInParallel;
				public new function HRESULT(IEventClass2 *self, BOOL fFireInParallel) put_FireInParallel;
			}
		}
		[CRepr]
		public struct IEventSubscription : IDispatch
		{
			public const new Guid IID = .(0x4a6b0e15, 0x2e38, 0x11d1, 0x99, 0x65, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SubscriptionID(BSTR* pbstrSubscriptionID) mut
			{
				return VT.get_SubscriptionID(&this, pbstrSubscriptionID);
			}
			public HRESULT put_SubscriptionID(BSTR bstrSubscriptionID) mut
			{
				return VT.put_SubscriptionID(&this, bstrSubscriptionID);
			}
			public HRESULT get_SubscriptionName(BSTR* pbstrSubscriptionName) mut
			{
				return VT.get_SubscriptionName(&this, pbstrSubscriptionName);
			}
			public HRESULT put_SubscriptionName(BSTR bstrSubscriptionName) mut
			{
				return VT.put_SubscriptionName(&this, bstrSubscriptionName);
			}
			public HRESULT get_PublisherID(BSTR* pbstrPublisherID) mut
			{
				return VT.get_PublisherID(&this, pbstrPublisherID);
			}
			public HRESULT put_PublisherID(BSTR bstrPublisherID) mut
			{
				return VT.put_PublisherID(&this, bstrPublisherID);
			}
			public HRESULT get_EventClassID(BSTR* pbstrEventClassID) mut
			{
				return VT.get_EventClassID(&this, pbstrEventClassID);
			}
			public HRESULT put_EventClassID(BSTR bstrEventClassID) mut
			{
				return VT.put_EventClassID(&this, bstrEventClassID);
			}
			public HRESULT get_MethodName(BSTR* pbstrMethodName) mut
			{
				return VT.get_MethodName(&this, pbstrMethodName);
			}
			public HRESULT put_MethodName(BSTR bstrMethodName) mut
			{
				return VT.put_MethodName(&this, bstrMethodName);
			}
			public HRESULT get_SubscriberCLSID(BSTR* pbstrSubscriberCLSID) mut
			{
				return VT.get_SubscriberCLSID(&this, pbstrSubscriberCLSID);
			}
			public HRESULT put_SubscriberCLSID(BSTR bstrSubscriberCLSID) mut
			{
				return VT.put_SubscriberCLSID(&this, bstrSubscriberCLSID);
			}
			public HRESULT get_SubscriberInterface(IUnknown** ppSubscriberInterface) mut
			{
				return VT.get_SubscriberInterface(&this, ppSubscriberInterface);
			}
			public HRESULT put_SubscriberInterface(IUnknown* pSubscriberInterface) mut
			{
				return VT.put_SubscriberInterface(&this, pSubscriberInterface);
			}
			public HRESULT get_PerUser(BOOL* pfPerUser) mut
			{
				return VT.get_PerUser(&this, pfPerUser);
			}
			public HRESULT put_PerUser(BOOL fPerUser) mut
			{
				return VT.put_PerUser(&this, fPerUser);
			}
			public HRESULT get_OwnerSID(BSTR* pbstrOwnerSID) mut
			{
				return VT.get_OwnerSID(&this, pbstrOwnerSID);
			}
			public HRESULT put_OwnerSID(BSTR bstrOwnerSID) mut
			{
				return VT.put_OwnerSID(&this, bstrOwnerSID);
			}
			public HRESULT get_Enabled(BOOL* pfEnabled) mut
			{
				return VT.get_Enabled(&this, pfEnabled);
			}
			public HRESULT put_Enabled(BOOL fEnabled) mut
			{
				return VT.put_Enabled(&this, fEnabled);
			}
			public HRESULT get_Description(BSTR* pbstrDescription) mut
			{
				return VT.get_Description(&this, pbstrDescription);
			}
			public HRESULT put_Description(BSTR bstrDescription) mut
			{
				return VT.put_Description(&this, bstrDescription);
			}
			public HRESULT get_MachineName(BSTR* pbstrMachineName) mut
			{
				return VT.get_MachineName(&this, pbstrMachineName);
			}
			public HRESULT put_MachineName(BSTR bstrMachineName) mut
			{
				return VT.put_MachineName(&this, bstrMachineName);
			}
			public HRESULT GetPublisherProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.GetPublisherProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT PutPublisherProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.PutPublisherProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT RemovePublisherProperty(BSTR bstrPropertyName) mut
			{
				return VT.RemovePublisherProperty(&this, bstrPropertyName);
			}
			public HRESULT GetPublisherPropertyCollection(IEventObjectCollection** collection) mut
			{
				return VT.GetPublisherPropertyCollection(&this, collection);
			}
			public HRESULT GetSubscriberProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.GetSubscriberProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT PutSubscriberProperty(BSTR bstrPropertyName, VARIANT* propertyValue) mut
			{
				return VT.PutSubscriberProperty(&this, bstrPropertyName, propertyValue);
			}
			public HRESULT RemoveSubscriberProperty(BSTR bstrPropertyName) mut
			{
				return VT.RemoveSubscriberProperty(&this, bstrPropertyName);
			}
			public HRESULT GetSubscriberPropertyCollection(IEventObjectCollection** collection) mut
			{
				return VT.GetSubscriberPropertyCollection(&this, collection);
			}
			public HRESULT get_InterfaceID(BSTR* pbstrInterfaceID) mut
			{
				return VT.get_InterfaceID(&this, pbstrInterfaceID);
			}
			public HRESULT put_InterfaceID(BSTR bstrInterfaceID) mut
			{
				return VT.put_InterfaceID(&this, bstrInterfaceID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriptionID) get_SubscriptionID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrSubscriptionID) put_SubscriptionID;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriptionName) get_SubscriptionName;
				public new function HRESULT(IEventSubscription *self, BSTR bstrSubscriptionName) put_SubscriptionName;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrPublisherID) get_PublisherID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPublisherID) put_PublisherID;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrEventClassID) get_EventClassID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrEventClassID) put_EventClassID;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrMethodName) get_MethodName;
				public new function HRESULT(IEventSubscription *self, BSTR bstrMethodName) put_MethodName;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriberCLSID) get_SubscriberCLSID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrSubscriberCLSID) put_SubscriberCLSID;
				public new function HRESULT(IEventSubscription *self, IUnknown** ppSubscriberInterface) get_SubscriberInterface;
				public new function HRESULT(IEventSubscription *self, IUnknown* pSubscriberInterface) put_SubscriberInterface;
				public new function HRESULT(IEventSubscription *self, BOOL* pfPerUser) get_PerUser;
				public new function HRESULT(IEventSubscription *self, BOOL fPerUser) put_PerUser;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrOwnerSID) get_OwnerSID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrOwnerSID) put_OwnerSID;
				public new function HRESULT(IEventSubscription *self, BOOL* pfEnabled) get_Enabled;
				public new function HRESULT(IEventSubscription *self, BOOL fEnabled) put_Enabled;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrDescription) get_Description;
				public new function HRESULT(IEventSubscription *self, BSTR bstrDescription) put_Description;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrMachineName) get_MachineName;
				public new function HRESULT(IEventSubscription *self, BSTR bstrMachineName) put_MachineName;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetPublisherProperty;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutPublisherProperty;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName) RemovePublisherProperty;
				public new function HRESULT(IEventSubscription *self, IEventObjectCollection** collection) GetPublisherPropertyCollection;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetSubscriberProperty;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutSubscriberProperty;
				public new function HRESULT(IEventSubscription *self, BSTR bstrPropertyName) RemoveSubscriberProperty;
				public new function HRESULT(IEventSubscription *self, IEventObjectCollection** collection) GetSubscriberPropertyCollection;
				public new function HRESULT(IEventSubscription *self, BSTR* pbstrInterfaceID) get_InterfaceID;
				public new function HRESULT(IEventSubscription *self, BSTR bstrInterfaceID) put_InterfaceID;
			}
		}
		[CRepr]
		public struct IFiringControl : IDispatch
		{
			public const new Guid IID = .(0xe0498c93, 0x4efe, 0x11d1, 0x99, 0x71, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FireSubscription(IEventSubscription* subscription) mut
			{
				return VT.FireSubscription(&this, subscription);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFiringControl *self, IEventSubscription* subscription) FireSubscription;
			}
		}
		[CRepr]
		public struct IPublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc0, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR methodName, IDispatch* dispUserDefined) mut
			{
				return VT.Initialize(&this, methodName, dispUserDefined);
			}
			public HRESULT PrepareToFire(BSTR methodName, IFiringControl* firingControl) mut
			{
				return VT.PrepareToFire(&this, methodName, firingControl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPublisherFilter *self, BSTR methodName, IDispatch* dispUserDefined) Initialize;
				public new function HRESULT(IPublisherFilter *self, BSTR methodName, IFiringControl* firingControl) PrepareToFire;
			}
		}
		[CRepr]
		public struct IMultiInterfacePublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc1, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IMultiInterfaceEventControl* pEIC) mut
			{
				return VT.Initialize(&this, pEIC);
			}
			public HRESULT PrepareToFire(Guid* iid, BSTR methodName, IFiringControl* firingControl) mut
			{
				return VT.PrepareToFire(&this, iid, methodName, firingControl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMultiInterfacePublisherFilter *self, IMultiInterfaceEventControl* pEIC) Initialize;
				public new function HRESULT(IMultiInterfacePublisherFilter *self, Guid* iid, BSTR methodName, IFiringControl* firingControl) PrepareToFire;
			}
		}
		[CRepr]
		public struct IEventObjectChange : IUnknown
		{
			public const new Guid IID = .(0xf4a07d70, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangedSubscription(EOC_ChangeType changeType, BSTR bstrSubscriptionID) mut
			{
				return VT.ChangedSubscription(&this, changeType, bstrSubscriptionID);
			}
			public HRESULT ChangedEventClass(EOC_ChangeType changeType, BSTR bstrEventClassID) mut
			{
				return VT.ChangedEventClass(&this, changeType, bstrEventClassID);
			}
			public HRESULT ChangedPublisher(EOC_ChangeType changeType, BSTR bstrPublisherID) mut
			{
				return VT.ChangedPublisher(&this, changeType, bstrPublisherID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrSubscriptionID) ChangedSubscription;
				public new function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrEventClassID) ChangedEventClass;
				public new function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrPublisherID) ChangedPublisher;
			}
		}
		[CRepr]
		public struct IEventObjectChange2 : IUnknown
		{
			public const new Guid IID = .(0x7701a9c3, 0xbd68, 0x438f, 0x83, 0xe0, 0x67, 0xbf, 0x4f, 0x53, 0xa4, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangedSubscription(COMEVENTSYSCHANGEINFO* pInfo) mut
			{
				return VT.ChangedSubscription(&this, pInfo);
			}
			public HRESULT ChangedEventClass(COMEVENTSYSCHANGEINFO* pInfo) mut
			{
				return VT.ChangedEventClass(&this, pInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEventObjectChange2 *self, COMEVENTSYSCHANGEINFO* pInfo) ChangedSubscription;
				public new function HRESULT(IEventObjectChange2 *self, COMEVENTSYSCHANGEINFO* pInfo) ChangedEventClass;
			}
		}
		[CRepr]
		public struct IEnumEventObject : IUnknown
		{
			public const new Guid IID = .(0xf4a07d63, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumEventObject** ppInterface) mut
			{
				return VT.Clone(&this, ppInterface);
			}
			public HRESULT Next(uint32 cReqElem, IUnknown** ppInterface, uint32* cRetElem) mut
			{
				return VT.Next(&this, cReqElem, ppInterface, cRetElem);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 cSkipElem) mut
			{
				return VT.Skip(&this, cSkipElem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumEventObject *self, IEnumEventObject** ppInterface) Clone;
				public new function HRESULT(IEnumEventObject *self, uint32 cReqElem, IUnknown** ppInterface, uint32* cRetElem) Next;
				public new function HRESULT(IEnumEventObject *self) Reset;
				public new function HRESULT(IEnumEventObject *self, uint32 cSkipElem) Skip;
			}
		}
		[CRepr]
		public struct IEventObjectCollection : IDispatch
		{
			public const new Guid IID = .(0xf89ac270, 0xd4eb, 0x11d1, 0xb6, 0x82, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** ppUnkEnum) mut
			{
				return VT.get__NewEnum(&this, ppUnkEnum);
			}
			public HRESULT get_Item(BSTR objectID, VARIANT* pItem) mut
			{
				return VT.get_Item(&this, objectID, pItem);
			}
			public HRESULT get_NewEnum(IEnumEventObject** ppEnum) mut
			{
				return VT.get_NewEnum(&this, ppEnum);
			}
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT Add(VARIANT* item, BSTR objectID) mut
			{
				return VT.Add(&this, item, objectID);
			}
			public HRESULT Remove(BSTR objectID) mut
			{
				return VT.Remove(&this, objectID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventObjectCollection *self, IUnknown** ppUnkEnum) get__NewEnum;
				public new function HRESULT(IEventObjectCollection *self, BSTR objectID, VARIANT* pItem) get_Item;
				public new function HRESULT(IEventObjectCollection *self, IEnumEventObject** ppEnum) get_NewEnum;
				public new function HRESULT(IEventObjectCollection *self, int32* pCount) get_Count;
				public new function HRESULT(IEventObjectCollection *self, VARIANT* item, BSTR objectID) Add;
				public new function HRESULT(IEventObjectCollection *self, BSTR objectID) Remove;
			}
		}
		[CRepr]
		public struct IEventProperty : IDispatch
		{
			public const new Guid IID = .(0xda538ee2, 0xf4de, 0x11d1, 0xb6, 0xbb, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* propertyName) mut
			{
				return VT.get_Name(&this, propertyName);
			}
			public HRESULT put_Name(BSTR propertyName) mut
			{
				return VT.put_Name(&this, propertyName);
			}
			public HRESULT get_Value(VARIANT* propertyValue) mut
			{
				return VT.get_Value(&this, propertyValue);
			}
			public HRESULT put_Value(VARIANT* propertyValue) mut
			{
				return VT.put_Value(&this, propertyValue);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventProperty *self, BSTR* propertyName) get_Name;
				public new function HRESULT(IEventProperty *self, BSTR propertyName) put_Name;
				public new function HRESULT(IEventProperty *self, VARIANT* propertyValue) get_Value;
				public new function HRESULT(IEventProperty *self, VARIANT* propertyValue) put_Value;
			}
		}
		[CRepr]
		public struct IEventControl : IDispatch
		{
			public const new Guid IID = .(0x0343e2f4, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPublisherFilter(BSTR methodName, IPublisherFilter* pPublisherFilter) mut
			{
				return VT.SetPublisherFilter(&this, methodName, pPublisherFilter);
			}
			public HRESULT get_AllowInprocActivation(BOOL* pfAllowInprocActivation) mut
			{
				return VT.get_AllowInprocActivation(&this, pfAllowInprocActivation);
			}
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut
			{
				return VT.put_AllowInprocActivation(&this, fAllowInprocActivation);
			}
			public HRESULT GetSubscriptions(BSTR methodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) mut
			{
				return VT.GetSubscriptions(&this, methodName, optionalCriteria, optionalErrorIndex, ppCollection);
			}
			public HRESULT SetDefaultQuery(BSTR methodName, BSTR criteria, int32* errorIndex) mut
			{
				return VT.SetDefaultQuery(&this, methodName, criteria, errorIndex);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IEventControl *self, BSTR methodName, IPublisherFilter* pPublisherFilter) SetPublisherFilter;
				public new function HRESULT(IEventControl *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
				public new function HRESULT(IEventControl *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function HRESULT(IEventControl *self, BSTR methodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) GetSubscriptions;
				public new function HRESULT(IEventControl *self, BSTR methodName, BSTR criteria, int32* errorIndex) SetDefaultQuery;
			}
		}
		[CRepr]
		public struct IMultiInterfaceEventControl : IUnknown
		{
			public const new Guid IID = .(0x0343e2f5, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMultiInterfacePublisherFilter(IMultiInterfacePublisherFilter* classFilter) mut
			{
				return VT.SetMultiInterfacePublisherFilter(&this, classFilter);
			}
			public HRESULT GetSubscriptions(Guid* eventIID, BSTR bstrMethodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) mut
			{
				return VT.GetSubscriptions(&this, eventIID, bstrMethodName, optionalCriteria, optionalErrorIndex, ppCollection);
			}
			public HRESULT SetDefaultQuery(Guid* eventIID, BSTR bstrMethodName, BSTR bstrCriteria, int32* errorIndex) mut
			{
				return VT.SetDefaultQuery(&this, eventIID, bstrMethodName, bstrCriteria, errorIndex);
			}
			public HRESULT get_AllowInprocActivation(BOOL* pfAllowInprocActivation) mut
			{
				return VT.get_AllowInprocActivation(&this, pfAllowInprocActivation);
			}
			public HRESULT put_AllowInprocActivation(BOOL fAllowInprocActivation) mut
			{
				return VT.put_AllowInprocActivation(&this, fAllowInprocActivation);
			}
			public HRESULT get_FireInParallel(BOOL* pfFireInParallel) mut
			{
				return VT.get_FireInParallel(&this, pfFireInParallel);
			}
			public HRESULT put_FireInParallel(BOOL fFireInParallel) mut
			{
				return VT.put_FireInParallel(&this, fFireInParallel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMultiInterfaceEventControl *self, IMultiInterfacePublisherFilter* classFilter) SetMultiInterfacePublisherFilter;
				public new function HRESULT(IMultiInterfaceEventControl *self, Guid* eventIID, BSTR bstrMethodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) GetSubscriptions;
				public new function HRESULT(IMultiInterfaceEventControl *self, Guid* eventIID, BSTR bstrMethodName, BSTR bstrCriteria, int32* errorIndex) SetDefaultQuery;
				public new function HRESULT(IMultiInterfaceEventControl *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
				public new function HRESULT(IMultiInterfaceEventControl *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
				public new function HRESULT(IMultiInterfaceEventControl *self, BOOL* pfFireInParallel) get_FireInParallel;
				public new function HRESULT(IMultiInterfaceEventControl *self, BOOL fFireInParallel) put_FireInParallel;
			}
		}
		[CRepr]
		public struct IDontSupportEventSubscription : IUnknown
		{
			public const new Guid IID = .(0x784121f1, 0x62a6, 0x4b89, 0x85, 0x5f, 0xd6, 0x5f, 0x29, 0x6d, 0xe8, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		
	}
}
