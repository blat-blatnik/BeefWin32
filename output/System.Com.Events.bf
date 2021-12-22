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
			
			public function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, int32* errorIndex, IUnknown** ppInterface) Query;
			public function HRESULT(IEventSystem *self, BSTR ProgID, IUnknown* pInterface) Store;
			public function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, int32* errorIndex) Remove;
			public function HRESULT(IEventSystem *self, BSTR* pbstrEventClassID) get_EventObjectChangeEventClassID;
			public function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria, IUnknown** ppInterface) QueryS;
			public function HRESULT(IEventSystem *self, BSTR progID, BSTR queryCriteria) RemoveS;
		}
		[CRepr]
		public struct IEventPublisher : IDispatch
		{
			public const new Guid IID = .(0xe341516b, 0x2e32, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherID) get_PublisherID;
			public function HRESULT(IEventPublisher *self, BSTR bstrPublisherID) put_PublisherID;
			public function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherName) get_PublisherName;
			public function HRESULT(IEventPublisher *self, BSTR bstrPublisherName) put_PublisherName;
			public function HRESULT(IEventPublisher *self, BSTR* pbstrPublisherType) get_PublisherType;
			public function HRESULT(IEventPublisher *self, BSTR bstrPublisherType) put_PublisherType;
			public function HRESULT(IEventPublisher *self, BSTR* pbstrOwnerSID) get_OwnerSID;
			public function HRESULT(IEventPublisher *self, BSTR bstrOwnerSID) put_OwnerSID;
			public function HRESULT(IEventPublisher *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IEventPublisher *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IEventPublisher *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetDefaultProperty;
			public function HRESULT(IEventPublisher *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutDefaultProperty;
			public function HRESULT(IEventPublisher *self, BSTR bstrPropertyName) RemoveDefaultProperty;
			public function HRESULT(IEventPublisher *self, IEventObjectCollection** collection) GetDefaultPropertyCollection;
		}
		[CRepr]
		public struct IEventClass : IDispatch
		{
			public const new Guid IID = .(0xfb2b72a0, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public function HRESULT(IEventClass *self, BSTR* pbstrEventClassID) get_EventClassID;
			public function HRESULT(IEventClass *self, BSTR bstrEventClassID) put_EventClassID;
			public function HRESULT(IEventClass *self, BSTR* pbstrEventClassName) get_EventClassName;
			public function HRESULT(IEventClass *self, BSTR bstrEventClassName) put_EventClassName;
			public function HRESULT(IEventClass *self, BSTR* pbstrOwnerSID) get_OwnerSID;
			public function HRESULT(IEventClass *self, BSTR bstrOwnerSID) put_OwnerSID;
			public function HRESULT(IEventClass *self, BSTR* pbstrFiringInterfaceID) get_FiringInterfaceID;
			public function HRESULT(IEventClass *self, BSTR bstrFiringInterfaceID) put_FiringInterfaceID;
			public function HRESULT(IEventClass *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IEventClass *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IEventClass *self, BSTR* pbstrCustomConfigCLSID) get_CustomConfigCLSID;
			public function HRESULT(IEventClass *self, BSTR bstrCustomConfigCLSID) put_CustomConfigCLSID;
			public function HRESULT(IEventClass *self, BSTR* pbstrTypeLib) get_TypeLib;
			public function HRESULT(IEventClass *self, BSTR bstrTypeLib) put_TypeLib;
		}
		[CRepr]
		public struct IEventClass2 : IEventClass
		{
			public const new Guid IID = .(0xfb2b72a1, 0x7a68, 0x11d1, 0x88, 0xf9, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public function HRESULT(IEventClass2 *self, BSTR* pbstrPublisherID) get_PublisherID;
			public function HRESULT(IEventClass2 *self, BSTR bstrPublisherID) put_PublisherID;
			public function HRESULT(IEventClass2 *self, BSTR* pbstrPubFilCLSID) get_MultiInterfacePublisherFilterCLSID;
			public function HRESULT(IEventClass2 *self, BSTR bstrPubFilCLSID) put_MultiInterfacePublisherFilterCLSID;
			public function HRESULT(IEventClass2 *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
			public function HRESULT(IEventClass2 *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
			public function HRESULT(IEventClass2 *self, BOOL* pfFireInParallel) get_FireInParallel;
			public function HRESULT(IEventClass2 *self, BOOL fFireInParallel) put_FireInParallel;
		}
		[CRepr]
		public struct IEventSubscription : IDispatch
		{
			public const new Guid IID = .(0x4a6b0e15, 0x2e38, 0x11d1, 0x99, 0x65, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriptionID) get_SubscriptionID;
			public function HRESULT(IEventSubscription *self, BSTR bstrSubscriptionID) put_SubscriptionID;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriptionName) get_SubscriptionName;
			public function HRESULT(IEventSubscription *self, BSTR bstrSubscriptionName) put_SubscriptionName;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrPublisherID) get_PublisherID;
			public function HRESULT(IEventSubscription *self, BSTR bstrPublisherID) put_PublisherID;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrEventClassID) get_EventClassID;
			public function HRESULT(IEventSubscription *self, BSTR bstrEventClassID) put_EventClassID;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrMethodName) get_MethodName;
			public function HRESULT(IEventSubscription *self, BSTR bstrMethodName) put_MethodName;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrSubscriberCLSID) get_SubscriberCLSID;
			public function HRESULT(IEventSubscription *self, BSTR bstrSubscriberCLSID) put_SubscriberCLSID;
			public function HRESULT(IEventSubscription *self, IUnknown** ppSubscriberInterface) get_SubscriberInterface;
			public function HRESULT(IEventSubscription *self, IUnknown* pSubscriberInterface) put_SubscriberInterface;
			public function HRESULT(IEventSubscription *self, BOOL* pfPerUser) get_PerUser;
			public function HRESULT(IEventSubscription *self, BOOL fPerUser) put_PerUser;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrOwnerSID) get_OwnerSID;
			public function HRESULT(IEventSubscription *self, BSTR bstrOwnerSID) put_OwnerSID;
			public function HRESULT(IEventSubscription *self, BOOL* pfEnabled) get_Enabled;
			public function HRESULT(IEventSubscription *self, BOOL fEnabled) put_Enabled;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrDescription) get_Description;
			public function HRESULT(IEventSubscription *self, BSTR bstrDescription) put_Description;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrMachineName) get_MachineName;
			public function HRESULT(IEventSubscription *self, BSTR bstrMachineName) put_MachineName;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetPublisherProperty;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutPublisherProperty;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName) RemovePublisherProperty;
			public function HRESULT(IEventSubscription *self, IEventObjectCollection** collection) GetPublisherPropertyCollection;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) GetSubscriberProperty;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName, VARIANT* propertyValue) PutSubscriberProperty;
			public function HRESULT(IEventSubscription *self, BSTR bstrPropertyName) RemoveSubscriberProperty;
			public function HRESULT(IEventSubscription *self, IEventObjectCollection** collection) GetSubscriberPropertyCollection;
			public function HRESULT(IEventSubscription *self, BSTR* pbstrInterfaceID) get_InterfaceID;
			public function HRESULT(IEventSubscription *self, BSTR bstrInterfaceID) put_InterfaceID;
		}
		[CRepr]
		public struct IFiringControl : IDispatch
		{
			public const new Guid IID = .(0xe0498c93, 0x4efe, 0x11d1, 0x99, 0x71, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public function HRESULT(IFiringControl *self, IEventSubscription* subscription) FireSubscription;
		}
		[CRepr]
		public struct IPublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc0, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public function HRESULT(IPublisherFilter *self, BSTR methodName, IDispatch* dispUserDefined) Initialize;
			public function HRESULT(IPublisherFilter *self, BSTR methodName, IFiringControl* firingControl) PrepareToFire;
		}
		[CRepr]
		public struct IMultiInterfacePublisherFilter : IUnknown
		{
			public const new Guid IID = .(0x465e5cc1, 0x7b26, 0x11d1, 0x88, 0xfb, 0x00, 0x80, 0xc7, 0xd7, 0x71, 0xbf);
			
			public function HRESULT(IMultiInterfacePublisherFilter *self, IMultiInterfaceEventControl* pEIC) Initialize;
			public function HRESULT(IMultiInterfacePublisherFilter *self, Guid* iid, BSTR methodName, IFiringControl* firingControl) PrepareToFire;
		}
		[CRepr]
		public struct IEventObjectChange : IUnknown
		{
			public const new Guid IID = .(0xf4a07d70, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrSubscriptionID) ChangedSubscription;
			public function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrEventClassID) ChangedEventClass;
			public function HRESULT(IEventObjectChange *self, EOC_ChangeType changeType, BSTR bstrPublisherID) ChangedPublisher;
		}
		[CRepr]
		public struct IEventObjectChange2 : IUnknown
		{
			public const new Guid IID = .(0x7701a9c3, 0xbd68, 0x438f, 0x83, 0xe0, 0x67, 0xbf, 0x4f, 0x53, 0xa4, 0x22);
			
			public function HRESULT(IEventObjectChange2 *self, COMEVENTSYSCHANGEINFO* pInfo) ChangedSubscription;
			public function HRESULT(IEventObjectChange2 *self, COMEVENTSYSCHANGEINFO* pInfo) ChangedEventClass;
		}
		[CRepr]
		public struct IEnumEventObject : IUnknown
		{
			public const new Guid IID = .(0xf4a07d63, 0x2e25, 0x11d1, 0x99, 0x64, 0x00, 0xc0, 0x4f, 0xbb, 0xb3, 0x45);
			
			public function HRESULT(IEnumEventObject *self, IEnumEventObject** ppInterface) Clone;
			public function HRESULT(IEnumEventObject *self, uint32 cReqElem, IUnknown** ppInterface, uint32* cRetElem) Next;
			public function HRESULT(IEnumEventObject *self) Reset;
			public function HRESULT(IEnumEventObject *self, uint32 cSkipElem) Skip;
		}
		[CRepr]
		public struct IEventObjectCollection : IDispatch
		{
			public const new Guid IID = .(0xf89ac270, 0xd4eb, 0x11d1, 0xb6, 0x82, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public function HRESULT(IEventObjectCollection *self, IUnknown** ppUnkEnum) get__NewEnum;
			public function HRESULT(IEventObjectCollection *self, BSTR objectID, VARIANT* pItem) get_Item;
			public function HRESULT(IEventObjectCollection *self, IEnumEventObject** ppEnum) get_NewEnum;
			public function HRESULT(IEventObjectCollection *self, int32* pCount) get_Count;
			public function HRESULT(IEventObjectCollection *self, VARIANT* item, BSTR objectID) Add;
			public function HRESULT(IEventObjectCollection *self, BSTR objectID) Remove;
		}
		[CRepr]
		public struct IEventProperty : IDispatch
		{
			public const new Guid IID = .(0xda538ee2, 0xf4de, 0x11d1, 0xb6, 0xbb, 0x00, 0x80, 0x5f, 0xc7, 0x92, 0x16);
			
			public function HRESULT(IEventProperty *self, BSTR* propertyName) get_Name;
			public function HRESULT(IEventProperty *self, BSTR propertyName) put_Name;
			public function HRESULT(IEventProperty *self, VARIANT* propertyValue) get_Value;
			public function HRESULT(IEventProperty *self, VARIANT* propertyValue) put_Value;
		}
		[CRepr]
		public struct IEventControl : IDispatch
		{
			public const new Guid IID = .(0x0343e2f4, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public function HRESULT(IEventControl *self, BSTR methodName, IPublisherFilter* pPublisherFilter) SetPublisherFilter;
			public function HRESULT(IEventControl *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
			public function HRESULT(IEventControl *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
			public function HRESULT(IEventControl *self, BSTR methodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) GetSubscriptions;
			public function HRESULT(IEventControl *self, BSTR methodName, BSTR criteria, int32* errorIndex) SetDefaultQuery;
		}
		[CRepr]
		public struct IMultiInterfaceEventControl : IUnknown
		{
			public const new Guid IID = .(0x0343e2f5, 0x86f6, 0x11d1, 0xb7, 0x60, 0x00, 0xc0, 0x4f, 0xb9, 0x26, 0xaf);
			
			public function HRESULT(IMultiInterfaceEventControl *self, IMultiInterfacePublisherFilter* classFilter) SetMultiInterfacePublisherFilter;
			public function HRESULT(IMultiInterfaceEventControl *self, Guid* eventIID, BSTR bstrMethodName, BSTR optionalCriteria, int32* optionalErrorIndex, IEventObjectCollection** ppCollection) GetSubscriptions;
			public function HRESULT(IMultiInterfaceEventControl *self, Guid* eventIID, BSTR bstrMethodName, BSTR bstrCriteria, int32* errorIndex) SetDefaultQuery;
			public function HRESULT(IMultiInterfaceEventControl *self, BOOL* pfAllowInprocActivation) get_AllowInprocActivation;
			public function HRESULT(IMultiInterfaceEventControl *self, BOOL fAllowInprocActivation) put_AllowInprocActivation;
			public function HRESULT(IMultiInterfaceEventControl *self, BOOL* pfFireInParallel) get_FireInParallel;
			public function HRESULT(IMultiInterfaceEventControl *self, BOOL fFireInParallel) put_FireInParallel;
		}
		[CRepr]
		public struct IDontSupportEventSubscription : IUnknown
		{
			public const new Guid IID = .(0x784121f1, 0x62a6, 0x4b89, 0x85, 0x5f, 0xd6, 0x5f, 0x29, 0x6d, 0xe8, 0x3a);
			
		}
		
	}
}
