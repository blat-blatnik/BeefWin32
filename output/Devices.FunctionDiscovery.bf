using System;

// namespace Devices.FunctionDiscovery
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FD_EVENTID_PRIVATE = 100;
		public const uint32 FD_EVENTID = 1000;
		public const uint32 FD_EVENTID_SEARCHCOMPLETE = 1000;
		public const uint32 FD_EVENTID_ASYNCTHREADEXIT = 1001;
		public const uint32 FD_EVENTID_SEARCHSTART = 1002;
		public const uint32 FD_EVENTID_IPADDRESSCHANGE = 1003;
		public const uint32 FD_EVENTID_QUERYREFRESH = 1004;
		public const Guid SID_PnpProvider = .(0x8101368e, 0xcabb, 0x4426, 0xac, 0xff, 0x96, 0xc4, 0x10, 0x81, 0x20, 0x00);
		public const Guid SID_UPnPActivator = .(0x0d0d66eb, 0xcf74, 0x4164, 0xb5, 0x2f, 0x08, 0x34, 0x46, 0x72, 0xdd, 0x46);
		public const Guid SID_EnumInterface = .(0x40eab0b9, 0x4d7f, 0x4b53, 0xa3, 0x34, 0x15, 0x81, 0xdd, 0x90, 0x41, 0xf4);
		public const Guid SID_PNPXPropertyStore = .(0xa86530b1, 0x542f, 0x439f, 0xb7, 0x1c, 0xb0, 0x75, 0x6b, 0x13, 0x67, 0x7a);
		public const Guid SID_PNPXAssociation = .(0xcee8ccc9, 0x4f6b, 0x4469, 0xa2, 0x35, 0x5a, 0x22, 0x86, 0x9e, 0xef, 0x03);
		public const Guid SID_PNPXServiceCollection = .(0x439e80ee, 0xa217, 0x4712, 0x9f, 0xa6, 0xde, 0xab, 0xd9, 0xc2, 0xa7, 0x27);
		public const Guid SID_FDPairingHandler = .(0x383b69fa, 0x5486, 0x49da, 0x91, 0xf5, 0xd6, 0x3c, 0x24, 0xc8, 0xe9, 0xd0);
		public const Guid SID_EnumDeviceFunction = .(0x13e0e9e2, 0xc3fa, 0x4e3c, 0x90, 0x6e, 0x64, 0x50, 0x2f, 0xa4, 0xdc, 0x95);
		public const Guid SID_UnpairProvider = .(0x89a502fc, 0x857b, 0x4698, 0xa0, 0xb7, 0x02, 0x71, 0x92, 0x00, 0x2f, 0x9e);
		public const Guid SID_DeviceDisplayStatusManager = .(0xf59aa553, 0x8309, 0x46ca, 0x97, 0x36, 0x1a, 0xc3, 0xc6, 0x2d, 0x60, 0x31);
		public const Guid SID_FunctionDiscoveryProviderRefresh = .(0x2b4cbdc9, 0x31c4, 0x40d4, 0xa6, 0x2d, 0x77, 0x2a, 0xa1, 0x74, 0xed, 0x52);
		public const Guid SID_UninstallDeviceFunction = .(0xc920566e, 0x5671, 0x4496, 0x80, 0x25, 0xbf, 0x0b, 0x89, 0xbd, 0x44, 0xcd);
		public const Guid FMTID_FD = .(0x904b03a2, 0x471d, 0x423c, 0xa5, 0x84, 0xf3, 0x48, 0x32, 0x38, 0xa1, 0x46);
		public const uint32 FD_Visibility_Default = 0;
		public const uint32 FD_Visibility_Hidden = 1;
		public const Guid FMTID_Device = .(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57);
		public const Guid FMTID_DeviceInterface = .(0x53808008, 0x07bb, 0x4661, 0xbc, 0x3c, 0xb5, 0x95, 0x3e, 0x70, 0x85, 0x60);
		public const Guid FMTID_Pairing = .(0x8807cae6, 0x7db6, 0x4f10, 0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc);
		public const Guid FMTID_WSD = .(0x92506491, 0xff95, 0x4724, 0xa0, 0x5a, 0x5b, 0x81, 0x88, 0x5a, 0x7c, 0x92);
		public const Guid FMTID_PNPX = .(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd);
		public const Guid FMTID_PNPXDynamicProperty = .(0x4fc5077e, 0xb686, 0x44be, 0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd);
		public const uint32 PNPX_INSTALLSTATE_NOTINSTALLED = 0;
		public const uint32 PNPX_INSTALLSTATE_INSTALLED = 1;
		public const uint32 PNPX_INSTALLSTATE_INSTALLING = 2;
		public const uint32 PNPX_INSTALLSTATE_FAILED = 3;
		public const uint32 FD_LONGHORN = 1;
		public const uint32 MAX_FDCONSTRAINTNAME_LENGTH = 100;
		public const uint32 MAX_FDCONSTRAINTVALUE_LENGTH = 1000;
		public const HRESULT E_FDPAIRING_NOCONNECTION = -1882193919;
		public const HRESULT E_FDPAIRING_HWFAILURE = -1882193918;
		public const HRESULT E_FDPAIRING_AUTHFAILURE = -1882193917;
		public const HRESULT E_FDPAIRING_CONNECTTIMEOUT = -1882193916;
		public const HRESULT E_FDPAIRING_TOOMANYCONNECTIONS = -1882193915;
		public const HRESULT E_FDPAIRING_AUTHNOTALLOWED = -1882193914;
		public const HRESULT E_FDPAIRING_IPBUSDISABLED = -1882193913;
		public const HRESULT E_FDPAIRING_NOPROFILES = -1882193912;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PropertyConstraint : int32
		{
			QC_EQUALS = 0,
			QC_NOTEQUAL = 1,
			QC_LESSTHAN = 2,
			QC_LESSTHANOREQUAL = 3,
			QC_GREATERTHAN = 4,
			QC_GREATERTHANOREQUAL = 5,
			QC_STARTSWITH = 6,
			QC_EXISTS = 7,
			QC_DOESNOTEXIST = 8,
			QC_CONTAINS = 9,
		}
		[AllowDuplicates]
		public enum SystemVisibilityFlags : int32
		{
			SVF_SYSTEM = 0,
			SVF_USER = 1,
		}
		[AllowDuplicates]
		public enum QueryUpdateAction : int32
		{
			QUA_ADD = 0,
			QUA_REMOVE = 1,
			QUA_CHANGE = 2,
		}
		[AllowDuplicates]
		public enum QueryCategoryType : int32
		{
			QCT_PROVIDER = 0,
			QCT_LAYERED = 1,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_PNPXAssociation = .(0xcee8ccc9, 0x4f6b, 0x4469, 0xa2, 0x35, 0x5a, 0x22, 0x86, 0x9e, 0xef, 0x03);
		public const Guid CLSID_PNPXPairingHandler = .(0xb8a27942, 0xade7, 0x4085, 0xaa, 0x6e, 0x4f, 0xad, 0xc7, 0xad, 0xa1, 0xef);
		public const Guid CLSID_FunctionDiscovery = .(0xc72be2ec, 0x8e90, 0x452c, 0xb2, 0x9a, 0xab, 0x8f, 0xf1, 0xc0, 0x71, 0xfc);
		public const Guid CLSID_PropertyStore = .(0xe4796550, 0xdf61, 0x448b, 0x91, 0x93, 0x13, 0xfc, 0x13, 0x41, 0xb1, 0x63);
		public const Guid CLSID_FunctionInstanceCollection = .(0xba818ce5, 0xb55f, 0x443f, 0xad, 0x39, 0x2f, 0xe8, 0x9b, 0xe6, 0x19, 0x1f);
		public const Guid CLSID_PropertyStoreCollection = .(0xedd36029, 0xd753, 0x4862, 0xaa, 0x5b, 0x5b, 0xcc, 0xad, 0x2a, 0x4d, 0x29);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFunctionDiscoveryNotification : IUnknown
		{
			public const new Guid IID = .(0x5f6c1ba8, 0x5330, 0x422e, 0xa3, 0x68, 0x57, 0x2b, 0x24, 0x4d, 0x3f, 0x87);
			
			public function HRESULT(IFunctionDiscoveryNotification *self, QueryUpdateAction enumQueryUpdateAction, uint64 fdqcQueryContext, IFunctionInstance* pIFunctionInstance) OnUpdate;
			public function HRESULT(IFunctionDiscoveryNotification *self, HRESULT hr, uint64 fdqcQueryContext, PWSTR pszProvider) OnError;
			public function HRESULT(IFunctionDiscoveryNotification *self, uint32 dwEventID, uint64 fdqcQueryContext, PWSTR pszProvider) OnEvent;
		}
		[CRepr]
		public struct IFunctionDiscovery : IUnknown
		{
			public const new Guid IID = .(0x4df99b70, 0xe148, 0x4432, 0xb0, 0x04, 0x4c, 0x9e, 0xeb, 0x53, 0x5a, 0x5e);
			
			public function HRESULT(IFunctionDiscovery *self, PWSTR pszCategory, PWSTR pszSubCategory, BOOL fIncludeAllSubCategories, IFunctionInstanceCollection** ppIFunctionInstanceCollection) GetInstanceCollection;
			public function HRESULT(IFunctionDiscovery *self, PWSTR pszFunctionInstanceIdentity, IFunctionInstance** ppIFunctionInstance) GetInstance;
			public function HRESULT(IFunctionDiscovery *self, PWSTR pszCategory, PWSTR pszSubCategory, BOOL fIncludeAllSubCategories, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification, uint64* pfdqcQueryContext, IFunctionInstanceCollectionQuery** ppIFunctionInstanceCollectionQuery) CreateInstanceCollectionQuery;
			public function HRESULT(IFunctionDiscovery *self, PWSTR pszFunctionInstanceIdentity, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification, uint64* pfdqcQueryContext, IFunctionInstanceQuery** ppIFunctionInstanceQuery) CreateInstanceQuery;
			public function HRESULT(IFunctionDiscovery *self, SystemVisibilityFlags enumSystemVisibility, PWSTR pszCategory, PWSTR pszSubCategory, PWSTR pszCategoryIdentity, IFunctionInstance** ppIFunctionInstance) AddInstance;
			public function HRESULT(IFunctionDiscovery *self, SystemVisibilityFlags enumSystemVisibility, PWSTR pszCategory, PWSTR pszSubCategory, PWSTR pszCategoryIdentity) RemoveInstance;
		}
		[CRepr]
		public struct IFunctionInstance : IServiceProvider
		{
			public const new Guid IID = .(0x33591c10, 0x0bed, 0x4f02, 0xb0, 0xab, 0x15, 0x30, 0xd5, 0x53, 0x3e, 0xe9);
			
			public function HRESULT(IFunctionInstance *self, uint16** ppszCoMemIdentity) GetID;
			public function HRESULT(IFunctionInstance *self, uint16** ppszCoMemProviderInstanceIdentity) GetProviderInstanceID;
			public function HRESULT(IFunctionInstance *self, uint32 dwStgAccess, IPropertyStore** ppIPropertyStore) OpenPropertyStore;
			public function HRESULT(IFunctionInstance *self, uint16** ppszCoMemCategory, uint16** ppszCoMemSubCategory) GetCategory;
		}
		[CRepr]
		public struct IFunctionInstanceCollection : IUnknown
		{
			public const new Guid IID = .(0xf0a3d895, 0x855c, 0x42a2, 0x94, 0x8d, 0x2f, 0x97, 0xd4, 0x50, 0xec, 0xb1);
			
			public function HRESULT(IFunctionInstanceCollection *self, uint32* pdwCount) GetCount;
			public function HRESULT(IFunctionInstanceCollection *self, PWSTR pszInstanceIdentity, uint32* pdwIndex, IFunctionInstance** ppIFunctionInstance) Get;
			public function HRESULT(IFunctionInstanceCollection *self, uint32 dwIndex, IFunctionInstance** ppIFunctionInstance) Item;
			public function HRESULT(IFunctionInstanceCollection *self, IFunctionInstance* pIFunctionInstance) Add;
			public function HRESULT(IFunctionInstanceCollection *self, uint32 dwIndex, IFunctionInstance** ppIFunctionInstance) Remove;
			public function HRESULT(IFunctionInstanceCollection *self, uint32 dwIndex) Delete;
			public function HRESULT(IFunctionInstanceCollection *self) DeleteAll;
		}
		[CRepr]
		public struct IPropertyStoreCollection : IUnknown
		{
			public const new Guid IID = .(0xd14d9c30, 0x12d2, 0x42d8, 0xbc, 0xe4, 0xc6, 0x0c, 0x2b, 0xb2, 0x26, 0xfa);
			
			public function HRESULT(IPropertyStoreCollection *self, uint32* pdwCount) GetCount;
			public function HRESULT(IPropertyStoreCollection *self, PWSTR pszInstanceIdentity, uint32* pdwIndex, IPropertyStore** ppIPropertyStore) Get;
			public function HRESULT(IPropertyStoreCollection *self, uint32 dwIndex, IPropertyStore** ppIPropertyStore) Item;
			public function HRESULT(IPropertyStoreCollection *self, IPropertyStore* pIPropertyStore) Add;
			public function HRESULT(IPropertyStoreCollection *self, uint32 dwIndex, IPropertyStore** pIPropertyStore) Remove;
			public function HRESULT(IPropertyStoreCollection *self, uint32 dwIndex) Delete;
			public function HRESULT(IPropertyStoreCollection *self) DeleteAll;
		}
		[CRepr]
		public struct IFunctionInstanceQuery : IUnknown
		{
			public const new Guid IID = .(0x6242bc6b, 0x90ec, 0x4b37, 0xbb, 0x46, 0xe2, 0x29, 0xfd, 0x84, 0xed, 0x95);
			
			public function HRESULT(IFunctionInstanceQuery *self, IFunctionInstance** ppIFunctionInstance) Execute;
		}
		[CRepr]
		public struct IFunctionInstanceCollectionQuery : IUnknown
		{
			public const new Guid IID = .(0x57cc6fd2, 0xc09a, 0x4289, 0xbb, 0x72, 0x25, 0xf0, 0x41, 0x42, 0x05, 0x8e);
			
			public function HRESULT(IFunctionInstanceCollectionQuery *self, PWSTR pszConstraintName, PWSTR pszConstraintValue) AddQueryConstraint;
			public function HRESULT(IFunctionInstanceCollectionQuery *self, PROPERTYKEY* Key, PROPVARIANT* pv, PropertyConstraint enumPropertyConstraint) AddPropertyConstraint;
			public function HRESULT(IFunctionInstanceCollectionQuery *self, IFunctionInstanceCollection** ppIFunctionInstanceCollection) Execute;
		}
		[CRepr]
		public struct IFunctionDiscoveryProvider : IUnknown
		{
			public const new Guid IID = .(0xdcde394f, 0x1478, 0x4813, 0xa4, 0x02, 0xf6, 0xfb, 0x10, 0x65, 0x72, 0x22);
			
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionDiscoveryProviderFactory* pIFunctionDiscoveryProviderFactory, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification, uint32 lcidUserDefault, uint32* pdwStgAccessCapabilities) Initialize;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionDiscoveryProviderQuery* pIFunctionDiscoveryProviderQuery, IFunctionInstanceCollection** ppIFunctionInstanceCollection) Query;
			public function HRESULT(IFunctionDiscoveryProvider *self) EndQuery;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, uint32 dwStgAccess) InstancePropertyStoreValidateAccess;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, uint32 dwStgAccess, IPropertyStore** ppIPropertyStore) InstancePropertyStoreOpen;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext) InstancePropertyStoreFlush;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, Guid* guidService, Guid* riid, IUnknown** ppIUnknown) InstanceQueryService;
			public function HRESULT(IFunctionDiscoveryProvider *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext) InstanceReleased;
		}
		[CRepr]
		public struct IProviderProperties : IUnknown
		{
			public const new Guid IID = .(0xcf986ea6, 0x3b5f, 0x4c5f, 0xb8, 0x8a, 0x2f, 0x8b, 0x20, 0xce, 0xef, 0x17);
			
			public function HRESULT(IProviderProperties *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, uint32* pdwCount) GetCount;
			public function HRESULT(IProviderProperties *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, uint32 dwIndex, PROPERTYKEY* pKey) GetAt;
			public function HRESULT(IProviderProperties *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, PROPERTYKEY* Key, PROPVARIANT* ppropVar) GetValue;
			public function HRESULT(IProviderProperties *self, IFunctionInstance* pIFunctionInstance, int iProviderInstanceContext, PROPERTYKEY* Key, PROPVARIANT* ppropVar) SetValue;
		}
		[CRepr]
		public struct IProviderPublishing : IUnknown
		{
			public const new Guid IID = .(0xcd1b9a04, 0x206c, 0x4a05, 0xa0, 0xc8, 0x16, 0x35, 0xa2, 0x1a, 0x2b, 0x7c);
			
			public function HRESULT(IProviderPublishing *self, SystemVisibilityFlags enumVisibilityFlags, PWSTR pszSubCategory, PWSTR pszProviderInstanceIdentity, IFunctionInstance** ppIFunctionInstance) CreateInstance;
			public function HRESULT(IProviderPublishing *self, SystemVisibilityFlags enumVisibilityFlags, PWSTR pszSubCategory, PWSTR pszProviderInstanceIdentity) RemoveInstance;
		}
		[CRepr]
		public struct IFunctionDiscoveryProviderFactory : IUnknown
		{
			public const new Guid IID = .(0x86443ff0, 0x1ad5, 0x4e68, 0xa4, 0x5a, 0x40, 0xc2, 0xc3, 0x29, 0xde, 0x3b);
			
			public function HRESULT(IFunctionDiscoveryProviderFactory *self, IPropertyStore** ppIPropertyStore) CreatePropertyStore;
			public function HRESULT(IFunctionDiscoveryProviderFactory *self, PWSTR pszSubCategory, PWSTR pszProviderInstanceIdentity, int iProviderInstanceContext, IPropertyStore* pIPropertyStore, IFunctionDiscoveryProvider* pIFunctionDiscoveryProvider, IFunctionInstance** ppIFunctionInstance) CreateInstance;
			public function HRESULT(IFunctionDiscoveryProviderFactory *self, IFunctionInstanceCollection** ppIFunctionInstanceCollection) CreateFunctionInstanceCollection;
		}
		[CRepr]
		public struct IFunctionDiscoveryProviderQuery : IUnknown
		{
			public const new Guid IID = .(0x6876ea98, 0xbaec, 0x46db, 0xbc, 0x20, 0x75, 0xa7, 0x6e, 0x26, 0x7a, 0x3a);
			
			public function HRESULT(IFunctionDiscoveryProviderQuery *self, BOOL* pisInstanceQuery, uint16** ppszConstraintValue) IsInstanceQuery;
			public function HRESULT(IFunctionDiscoveryProviderQuery *self, BOOL* pisSubcategoryQuery, uint16** ppszConstraintValue) IsSubcategoryQuery;
			public function HRESULT(IFunctionDiscoveryProviderQuery *self, IProviderQueryConstraintCollection** ppIProviderQueryConstraints) GetQueryConstraints;
			public function HRESULT(IFunctionDiscoveryProviderQuery *self, IProviderPropertyConstraintCollection** ppIProviderPropertyConstraints) GetPropertyConstraints;
		}
		[CRepr]
		public struct IProviderQueryConstraintCollection : IUnknown
		{
			public const new Guid IID = .(0x9c243e11, 0x3261, 0x4bcd, 0xb9, 0x22, 0x84, 0xa8, 0x73, 0xd4, 0x60, 0xae);
			
			public function HRESULT(IProviderQueryConstraintCollection *self, uint32* pdwCount) GetCount;
			public function HRESULT(IProviderQueryConstraintCollection *self, PWSTR pszConstraintName, uint16** ppszConstraintValue) Get;
			public function HRESULT(IProviderQueryConstraintCollection *self, uint32 dwIndex, uint16** ppszConstraintName, uint16** ppszConstraintValue) Item;
			public function HRESULT(IProviderQueryConstraintCollection *self, uint16** ppszConstraintName, uint16** ppszConstraintValue) Next;
			public function HRESULT(IProviderQueryConstraintCollection *self) Skip;
			public function HRESULT(IProviderQueryConstraintCollection *self) Reset;
		}
		[CRepr]
		public struct IProviderPropertyConstraintCollection : IUnknown
		{
			public const new Guid IID = .(0xf4fae42f, 0x5778, 0x4a13, 0x85, 0x40, 0xb5, 0xfd, 0x8c, 0x13, 0x98, 0xdd);
			
			public function HRESULT(IProviderPropertyConstraintCollection *self, uint32* pdwCount) GetCount;
			public function HRESULT(IProviderPropertyConstraintCollection *self, PROPERTYKEY* Key, PROPVARIANT* pPropVar, uint32* pdwPropertyConstraint) Get;
			public function HRESULT(IProviderPropertyConstraintCollection *self, uint32 dwIndex, PROPERTYKEY* pKey, PROPVARIANT* pPropVar, uint32* pdwPropertyConstraint) Item;
			public function HRESULT(IProviderPropertyConstraintCollection *self, PROPERTYKEY* pKey, PROPVARIANT* pPropVar, uint32* pdwPropertyConstraint) Next;
			public function HRESULT(IProviderPropertyConstraintCollection *self) Skip;
			public function HRESULT(IProviderPropertyConstraintCollection *self) Reset;
		}
		[CRepr]
		public struct IFunctionDiscoveryServiceProvider : IUnknown
		{
			public const new Guid IID = .(0x4c81ed02, 0x1b04, 0x43f2, 0xa4, 0x51, 0x69, 0x96, 0x6c, 0xbc, 0xd1, 0xc2);
			
			public function HRESULT(IFunctionDiscoveryServiceProvider *self, IFunctionInstance* pIFunctionInstance, Guid* riid, void** ppv) Initialize;
		}
		[CRepr]
		public struct IPNPXAssociation : IUnknown
		{
			public const new Guid IID = .(0x0bd7e521, 0x4da6, 0x42d5, 0x81, 0xba, 0x19, 0x81, 0xb6, 0xb9, 0x40, 0x75);
			
			public function HRESULT(IPNPXAssociation *self, PWSTR pszSubcategory) Associate;
			public function HRESULT(IPNPXAssociation *self, PWSTR pszSubcategory) Unassociate;
			public function HRESULT(IPNPXAssociation *self, PWSTR pszSubcategory) Delete;
		}
		[CRepr]
		public struct IPNPXDeviceAssociation : IUnknown
		{
			public const new Guid IID = .(0xeed366d0, 0x35b8, 0x4fc5, 0x8d, 0x20, 0x7e, 0x5b, 0xd3, 0x1f, 0x6d, 0xed);
			
			public function HRESULT(IPNPXDeviceAssociation *self, PWSTR pszSubCategory, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification) Associate;
			public function HRESULT(IPNPXDeviceAssociation *self, PWSTR pszSubCategory, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification) Unassociate;
			public function HRESULT(IPNPXDeviceAssociation *self, PWSTR pszSubcategory, IFunctionDiscoveryNotification* pIFunctionDiscoveryNotification) Delete;
		}
		
	}
}
