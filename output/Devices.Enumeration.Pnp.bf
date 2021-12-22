using System;

// namespace Devices.Enumeration.Pnp
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT UPNP_E_ROOT_ELEMENT_EXPECTED = -2147220992;
		public const HRESULT UPNP_E_DEVICE_ELEMENT_EXPECTED = -2147220991;
		public const HRESULT UPNP_E_SERVICE_ELEMENT_EXPECTED = -2147220990;
		public const HRESULT UPNP_E_SERVICE_NODE_INCOMPLETE = -2147220989;
		public const HRESULT UPNP_E_DEVICE_NODE_INCOMPLETE = -2147220988;
		public const HRESULT UPNP_E_ICON_ELEMENT_EXPECTED = -2147220987;
		public const HRESULT UPNP_E_ICON_NODE_INCOMPLETE = -2147220986;
		public const HRESULT UPNP_E_INVALID_ACTION = -2147220985;
		public const HRESULT UPNP_E_INVALID_ARGUMENTS = -2147220984;
		public const HRESULT UPNP_E_OUT_OF_SYNC = -2147220983;
		public const HRESULT UPNP_E_ACTION_REQUEST_FAILED = -2147220976;
		public const HRESULT UPNP_E_TRANSPORT_ERROR = -2147220975;
		public const HRESULT UPNP_E_VARIABLE_VALUE_UNKNOWN = -2147220974;
		public const HRESULT UPNP_E_INVALID_VARIABLE = -2147220973;
		public const HRESULT UPNP_E_DEVICE_ERROR = -2147220972;
		public const HRESULT UPNP_E_PROTOCOL_ERROR = -2147220971;
		public const HRESULT UPNP_E_ERROR_PROCESSING_RESPONSE = -2147220970;
		public const HRESULT UPNP_E_DEVICE_TIMEOUT = -2147220969;
		public const HRESULT UPNP_E_INVALID_DOCUMENT = -2147220224;
		public const HRESULT UPNP_E_EVENT_SUBSCRIPTION_FAILED = -2147220223;
		public const uint32 FAULT_INVALID_ACTION = 401;
		public const uint32 FAULT_INVALID_ARG = 402;
		public const uint32 FAULT_INVALID_SEQUENCE_NUMBER = 403;
		public const uint32 FAULT_INVALID_VARIABLE = 404;
		public const uint32 FAULT_DEVICE_INTERNAL_ERROR = 501;
		public const uint32 FAULT_ACTION_SPECIFIC_BASE = 600;
		public const uint32 FAULT_ACTION_SPECIFIC_MAX = 899;
		public const HRESULT UPNP_E_ACTION_SPECIFIC_BASE = -2147220736;
		public const uint32 UPNP_ADDRESSFAMILY_IPv4 = 1;
		public const uint32 UPNP_ADDRESSFAMILY_IPv6 = 2;
		public const uint32 UPNP_ADDRESSFAMILY_BOTH = 3;
		public const uint32 UPNP_SERVICE_DELAY_SCPD_AND_SUBSCRIPTION = 1;
		public const HRESULT UPNP_E_REQUIRED_ELEMENT_ERROR = -2147180512;
		public const HRESULT UPNP_E_DUPLICATE_NOT_ALLOWED = -2147180511;
		public const HRESULT UPNP_E_DUPLICATE_SERVICE_ID = -2147180510;
		public const HRESULT UPNP_E_INVALID_DESCRIPTION = -2147180509;
		public const HRESULT UPNP_E_INVALID_SERVICE = -2147180508;
		public const HRESULT UPNP_E_INVALID_ICON = -2147180507;
		public const HRESULT UPNP_E_INVALID_XML = -2147180506;
		public const HRESULT UPNP_E_INVALID_ROOT_NAMESPACE = -2147180505;
		public const HRESULT UPNP_E_SUFFIX_TOO_LONG = -2147180504;
		public const HRESULT UPNP_E_URLBASE_PRESENT = -2147180503;
		public const HRESULT UPNP_E_VALUE_TOO_LONG = -2147180496;
		public const HRESULT UPNP_E_DEVICE_RUNNING = -2147180495;
		public const HRESULT UPNP_E_DEVICE_NOTREGISTERED = -2147180494;
		
		// --- Typedefs ---
		
		public typealias HSWDEVICE = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SW_DEVICE_CAPABILITIES : int32
		{
			SWDeviceCapabilitiesNone = 0,
			SWDeviceCapabilitiesRemovable = 1,
			SWDeviceCapabilitiesSilentInstall = 2,
			SWDeviceCapabilitiesNoDisplayInUI = 4,
			SWDeviceCapabilitiesDriverRequired = 8,
		}
		[AllowDuplicates]
		public enum SW_DEVICE_LIFETIME : int32
		{
			SWDeviceLifetimeHandle = 0,
			SWDeviceLifetimeParentPresent = 1,
			SWDeviceLifetimeMax = 2,
		}
		
		// --- Function Pointers ---
		
		public function void SW_DEVICE_CREATE_CALLBACK(HSWDEVICE hSwDevice, HRESULT CreateResult, void* pContext, PWSTR pszDeviceInstanceId);
		
		// --- Structs ---
		
		[CRepr]
		public struct SW_DEVICE_CREATE_INFO
		{
			public uint32 cbSize;
			public PWSTR pszInstanceId;
			public PWSTR pszzHardwareIds;
			public PWSTR pszzCompatibleIds;
			public Guid* pContainerId;
			public uint32 CapabilityFlags;
			public PWSTR pszDeviceDescription;
			public PWSTR pszDeviceLocation;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_UPnPDeviceFinder = .(0xe2085f28, 0xfeb7, 0x404a, 0xb8, 0xe7, 0xe6, 0x59, 0xbd, 0xea, 0xaa, 0x02);
		public const Guid CLSID_UPnPDevices = .(0xb9e84ffd, 0xad3c, 0x40a4, 0xb8, 0x35, 0x08, 0x82, 0xeb, 0xcb, 0xaa, 0xa8);
		public const Guid CLSID_UPnPDevice = .(0xa32552c5, 0xba61, 0x457a, 0xb5, 0x9a, 0xa2, 0x56, 0x1e, 0x12, 0x5e, 0x33);
		public const Guid CLSID_UPnPServices = .(0xc0bc4b4a, 0xa406, 0x4efc, 0x93, 0x2f, 0xb8, 0x54, 0x6b, 0x81, 0x00, 0xcc);
		public const Guid CLSID_UPnPService = .(0xc624ba95, 0xfbcb, 0x4409, 0x8c, 0x03, 0x8c, 0xce, 0xec, 0x53, 0x3e, 0xf1);
		public const Guid CLSID_UPnPDescriptionDocument = .(0x1d8a9b47, 0x3a28, 0x4ce2, 0x8a, 0x4b, 0xbd, 0x34, 0xe4, 0x5b, 0xce, 0xeb);
		public const Guid CLSID_UPnPDeviceFinderEx = .(0x181b54fc, 0x380b, 0x4a75, 0xb3, 0xf1, 0x4a, 0xc4, 0x5e, 0x96, 0x05, 0xb0);
		public const Guid CLSID_UPnPDescriptionDocumentEx = .(0x33fd0563, 0xd81a, 0x4393, 0x83, 0xcc, 0x01, 0x95, 0xb1, 0xda, 0x2f, 0x91);
		public const Guid CLSID_UPnPRegistrar = .(0x204810b9, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
		public const Guid CLSID_UPnPRemoteEndpointInfo = .(0x2e5e84e9, 0x4049, 0x4244, 0xb7, 0x28, 0x2d, 0x24, 0x22, 0x71, 0x57, 0xc7);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUPnPDeviceFinder : IDispatch
		{
			public const new Guid IID = .(0xadda3d55, 0x6f72, 0x4319, 0xbf, 0xf9, 0x18, 0x60, 0x0a, 0x53, 0x9b, 0x10);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPDeviceFinder *self, BSTR bstrTypeURI, uint32 dwFlags, IUPnPDevices** pDevices) FindByType;
				public function HRESULT(IUPnPDeviceFinder *self, BSTR bstrTypeURI, uint32 dwFlags, IUnknown* punkDeviceFinderCallback, int32* plFindData) CreateAsyncFind;
				public function HRESULT(IUPnPDeviceFinder *self, int32 lFindData) StartAsyncFind;
				public function HRESULT(IUPnPDeviceFinder *self, int32 lFindData) CancelAsyncFind;
				public function HRESULT(IUPnPDeviceFinder *self, BSTR bstrUDN, IUPnPDevice** pDevice) FindByUDN;
			}
		}
		[CRepr]
		public struct IUPnPAddressFamilyControl : IUnknown
		{
			public const new Guid IID = .(0xe3bf6178, 0x694e, 0x459f, 0xa5, 0xa6, 0x19, 0x1e, 0xa0, 0xff, 0xa1, 0xc7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPAddressFamilyControl *self, int32 dwFlags) SetAddressFamily;
				public function HRESULT(IUPnPAddressFamilyControl *self, int32* pdwFlags) GetAddressFamily;
			}
		}
		[CRepr]
		public struct IUPnPHttpHeaderControl : IUnknown
		{
			public const new Guid IID = .(0x0405af4f, 0x8b5c, 0x447c, 0x80, 0xf2, 0xb7, 0x59, 0x84, 0xa3, 0x1f, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPHttpHeaderControl *self, BSTR bstrHttpHeaders) AddRequestHeaders;
			}
		}
		[CRepr]
		public struct IUPnPDeviceFinderCallback : IUnknown
		{
			public const new Guid IID = .(0x415a984a, 0x88b3, 0x49f3, 0x92, 0xaf, 0x05, 0x08, 0xbe, 0xdf, 0x0d, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceFinderCallback *self, int32 lFindData, IUPnPDevice* pDevice) DeviceAdded;
				public function HRESULT(IUPnPDeviceFinderCallback *self, int32 lFindData, BSTR bstrUDN) DeviceRemoved;
				public function HRESULT(IUPnPDeviceFinderCallback *self, int32 lFindData) SearchComplete;
			}
		}
		[CRepr]
		public struct IUPnPServices : IDispatch
		{
			public const new Guid IID = .(0x3f8c8e9e, 0x9a7a, 0x4dc8, 0xbc, 0x41, 0xff, 0x31, 0xfa, 0x37, 0x49, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPServices *self, int32* plCount) get_Count;
				public function HRESULT(IUPnPServices *self, IUnknown** ppunk) get__NewEnum;
				public function HRESULT(IUPnPServices *self, BSTR bstrServiceId, IUPnPService** ppService) get_Item;
			}
		}
		[CRepr]
		public struct IUPnPService : IDispatch
		{
			public const new Guid IID = .(0xa295019c, 0xdc65, 0x47dd, 0x90, 0xdc, 0x7f, 0xe9, 0x18, 0xa1, 0xab, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPService *self, BSTR bstrVariableName, VARIANT* pValue) QueryStateVariable;
				public function HRESULT(IUPnPService *self, BSTR bstrActionName, VARIANT vInActionArgs, VARIANT* pvOutActionArgs, VARIANT* pvRetVal) InvokeAction;
				public function HRESULT(IUPnPService *self, BSTR* pVal) get_ServiceTypeIdentifier;
				public function HRESULT(IUPnPService *self, IUnknown* pUnkCallback) AddCallback;
				public function HRESULT(IUPnPService *self, BSTR* pbstrId) get_Id;
				public function HRESULT(IUPnPService *self, int32* plValue) get_LastTransportStatus;
			}
		}
		[CRepr]
		public struct IUPnPAsyncResult : IUnknown
		{
			public const new Guid IID = .(0x4d65fd08, 0xd13e, 0x4274, 0x9c, 0x8b, 0xdd, 0x8d, 0x02, 0x8c, 0x86, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPAsyncResult *self, uint64 ullRequestID) AsyncOperationComplete;
			}
		}
		[CRepr]
		public struct IUPnPServiceAsync : IUnknown
		{
			public const new Guid IID = .(0x098bdaf5, 0x5ec1, 0x49e7, 0xa2, 0x60, 0xb3, 0xa1, 0x1d, 0xd8, 0x68, 0x0c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPServiceAsync *self, BSTR bstrActionName, VARIANT vInActionArgs, IUPnPAsyncResult* pAsyncResult, uint64* pullRequestID) BeginInvokeAction;
				public function HRESULT(IUPnPServiceAsync *self, uint64 ullRequestID, VARIANT* pvOutActionArgs, VARIANT* pvRetVal) EndInvokeAction;
				public function HRESULT(IUPnPServiceAsync *self, BSTR bstrVariableName, IUPnPAsyncResult* pAsyncResult, uint64* pullRequestID) BeginQueryStateVariable;
				public function HRESULT(IUPnPServiceAsync *self, uint64 ullRequestID, VARIANT* pValue) EndQueryStateVariable;
				public function HRESULT(IUPnPServiceAsync *self, IUnknown* pUnkCallback, IUPnPAsyncResult* pAsyncResult, uint64* pullRequestID) BeginSubscribeToEvents;
				public function HRESULT(IUPnPServiceAsync *self, uint64 ullRequestID) EndSubscribeToEvents;
				public function HRESULT(IUPnPServiceAsync *self, IUPnPAsyncResult* pAsyncResult, uint64* pullRequestID) BeginSCPDDownload;
				public function HRESULT(IUPnPServiceAsync *self, uint64 ullRequestID, BSTR* pbstrSCPDDoc) EndSCPDDownload;
				public function HRESULT(IUPnPServiceAsync *self, uint64 ullRequestID) CancelAsyncOperation;
			}
		}
		[CRepr]
		public struct IUPnPServiceCallback : IUnknown
		{
			public const new Guid IID = .(0x31fadca9, 0xab73, 0x464b, 0xb6, 0x7d, 0x5c, 0x1d, 0x0f, 0x83, 0xc8, 0xb8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPServiceCallback *self, IUPnPService* pus, PWSTR pcwszStateVarName, VARIANT vaValue) StateVariableChanged;
				public function HRESULT(IUPnPServiceCallback *self, IUPnPService* pus) ServiceInstanceDied;
			}
		}
		[CRepr]
		public struct IUPnPServiceEnumProperty : IUnknown
		{
			public const new Guid IID = .(0x38873b37, 0x91bb, 0x49f4, 0xb2, 0x49, 0x2e, 0x8e, 0xfb, 0xb8, 0xa8, 0x16);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPServiceEnumProperty *self, uint32 dwMask) SetServiceEnumProperty;
			}
		}
		[CRepr]
		public struct IUPnPServiceDocumentAccess : IUnknown
		{
			public const new Guid IID = .(0x21905529, 0x0a5e, 0x4589, 0x82, 0x5d, 0x7e, 0x6d, 0x87, 0xea, 0x69, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPServiceDocumentAccess *self, BSTR* pbstrDocUrl) GetDocumentURL;
				public function HRESULT(IUPnPServiceDocumentAccess *self, BSTR* pbstrDoc) GetDocument;
			}
		}
		[CRepr]
		public struct IUPnPDevices : IDispatch
		{
			public const new Guid IID = .(0xfdbc0c73, 0xbda3, 0x4c66, 0xac, 0x4f, 0xf2, 0xd9, 0x6f, 0xda, 0xd6, 0x8c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPDevices *self, int32* plCount) get_Count;
				public function HRESULT(IUPnPDevices *self, IUnknown** ppunk) get__NewEnum;
				public function HRESULT(IUPnPDevices *self, BSTR bstrUDN, IUPnPDevice** ppDevice) get_Item;
			}
		}
		[CRepr]
		public struct IUPnPDevice : IDispatch
		{
			public const new Guid IID = .(0x3d44d0d1, 0x98c9, 0x4889, 0xac, 0xd1, 0xf9, 0xd6, 0x74, 0xbf, 0x22, 0x21);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPDevice *self, int16* pvarb) get_IsRootDevice;
				public function HRESULT(IUPnPDevice *self, IUPnPDevice** ppudRootDevice) get_RootDevice;
				public function HRESULT(IUPnPDevice *self, IUPnPDevice** ppudDeviceParent) get_ParentDevice;
				public function HRESULT(IUPnPDevice *self, int16* pvarb) get_HasChildren;
				public function HRESULT(IUPnPDevice *self, IUPnPDevices** ppudChildren) get_Children;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_UniqueDeviceName;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_FriendlyName;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_Type;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_PresentationURL;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_ManufacturerName;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_ManufacturerURL;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_ModelName;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_ModelNumber;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_Description;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_ModelURL;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_UPC;
				public function HRESULT(IUPnPDevice *self, BSTR* pbstr) get_SerialNumber;
				public function HRESULT(IUPnPDevice *self, BSTR bstrEncodingFormat, int32 lSizeX, int32 lSizeY, int32 lBitDepth, BSTR* pbstrIconURL) IconURL;
				public function HRESULT(IUPnPDevice *self, IUPnPServices** ppusServices) get_Services;
			}
		}
		[CRepr]
		public struct IUPnPDeviceDocumentAccess : IUnknown
		{
			public const new Guid IID = .(0xe7772804, 0x3287, 0x418e, 0x90, 0x72, 0xcf, 0x2b, 0x47, 0x23, 0x89, 0x81);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceDocumentAccess *self, BSTR* pbstrDocument) GetDocumentURL;
			}
		}
		[CRepr]
		public struct IUPnPDeviceDocumentAccessEx : IUnknown
		{
			public const new Guid IID = .(0xc4bc4050, 0x6178, 0x4bd1, 0xa4, 0xb8, 0x63, 0x98, 0x32, 0x1f, 0x32, 0x47);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceDocumentAccessEx *self, BSTR* pbstrDocument) GetDocument;
			}
		}
		[CRepr]
		public struct IUPnPDescriptionDocument : IDispatch
		{
			public const new Guid IID = .(0x11d1c1b2, 0x7daa, 0x4c9e, 0x95, 0x95, 0x7f, 0x82, 0xed, 0x20, 0x6d, 0x1e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IUPnPDescriptionDocument *self, int32* plReadyState) get_ReadyState;
				public function HRESULT(IUPnPDescriptionDocument *self, BSTR bstrUrl) Load;
				public function HRESULT(IUPnPDescriptionDocument *self, BSTR bstrUrl, IUnknown* punkCallback) LoadAsync;
				public function HRESULT(IUPnPDescriptionDocument *self, int32* phrError) get_LoadResult;
				public function HRESULT(IUPnPDescriptionDocument *self) Abort;
				public function HRESULT(IUPnPDescriptionDocument *self, IUPnPDevice** ppudRootDevice) RootDevice;
				public function HRESULT(IUPnPDescriptionDocument *self, BSTR bstrUDN, IUPnPDevice** ppudDevice) DeviceByUDN;
			}
		}
		[CRepr]
		public struct IUPnPDeviceFinderAddCallbackWithInterface : IUnknown
		{
			public const new Guid IID = .(0x983dfc0b, 0x1796, 0x44df, 0x89, 0x75, 0xca, 0x54, 0x5b, 0x62, 0x0e, 0xe5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceFinderAddCallbackWithInterface *self, int32 lFindData, IUPnPDevice* pDevice, Guid* pguidInterface) DeviceAddedWithInterface;
			}
		}
		[CRepr]
		public struct IUPnPDescriptionDocumentCallback : IUnknown
		{
			public const new Guid IID = .(0x77394c69, 0x5486, 0x40d6, 0x9b, 0xc3, 0x49, 0x91, 0x98, 0x3e, 0x02, 0xda);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDescriptionDocumentCallback *self, HRESULT hrLoadResult) LoadComplete;
			}
		}
		[CRepr]
		public struct IUPnPEventSink : IUnknown
		{
			public const new Guid IID = .(0x204810b4, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPEventSink *self, uint32 cChanges, int32* rgdispidChanges) OnStateChanged;
				public function HRESULT(IUPnPEventSink *self, VARIANT varsadispidChanges) OnStateChangedSafe;
			}
		}
		[CRepr]
		public struct IUPnPEventSource : IUnknown
		{
			public const new Guid IID = .(0x204810b5, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPEventSource *self, IUPnPEventSink* pesSubscriber) Advise;
				public function HRESULT(IUPnPEventSource *self, IUPnPEventSink* pesSubscriber) Unadvise;
			}
		}
		[CRepr]
		public struct IUPnPRegistrar : IUnknown
		{
			public const new Guid IID = .(0x204810b6, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime, BSTR* pbstrDeviceIdentifier) RegisterDevice;
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrXMLDesc, IUnknown* punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime, BSTR* pbstrDeviceIdentifier) RegisterRunningDevice;
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrProviderName, BSTR bstrProgIDProviderClass, BSTR bstrInitString, BSTR bstrContainerId) RegisterDeviceProvider;
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrDeviceIdentifier, BSTR bstrTemplateUDN, BSTR* pbstrUDN) GetUniqueDeviceName;
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrDeviceIdentifier, BOOL fPermanent) UnregisterDevice;
				public function HRESULT(IUPnPRegistrar *self, BSTR bstrProviderName) UnregisterDeviceProvider;
			}
		}
		[CRepr]
		public struct IUPnPReregistrar : IUnknown
		{
			public const new Guid IID = .(0x204810b7, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPReregistrar *self, BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime) ReregisterDevice;
				public function HRESULT(IUPnPReregistrar *self, BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, IUnknown* punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime) ReregisterRunningDevice;
			}
		}
		[CRepr]
		public struct IUPnPDeviceControl : IUnknown
		{
			public const new Guid IID = .(0x204810ba, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceControl *self, BSTR bstrXMLDesc, BSTR bstrDeviceIdentifier, BSTR bstrInitString) Initialize;
				public function HRESULT(IUPnPDeviceControl *self, BSTR bstrUDN, BSTR bstrServiceId, IDispatch** ppdispService) GetServiceObject;
			}
		}
		[CRepr]
		public struct IUPnPDeviceControlHttpHeaders : IUnknown
		{
			public const new Guid IID = .(0x204810bb, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceControlHttpHeaders *self, BSTR* bstrHttpResponseHeaders) GetAdditionalResponseHeaders;
			}
		}
		[CRepr]
		public struct IUPnPDeviceProvider : IUnknown
		{
			public const new Guid IID = .(0x204810b8, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPDeviceProvider *self, BSTR bstrInitString) Start;
				public function HRESULT(IUPnPDeviceProvider *self) Stop;
			}
		}
		[CRepr]
		public struct IUPnPRemoteEndpointInfo : IUnknown
		{
			public const new Guid IID = .(0xc92eb863, 0x0269, 0x4aff, 0x9c, 0x72, 0x75, 0x32, 0x1b, 0xba, 0x29, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUPnPRemoteEndpointInfo *self, BSTR bstrValueName, uint32* pdwValue) GetDwordValue;
				public function HRESULT(IUPnPRemoteEndpointInfo *self, BSTR bstrValueName, BSTR* pbstrValue) GetStringValue;
				public function HRESULT(IUPnPRemoteEndpointInfo *self, BSTR bstrValueName, Guid* pguidValue) GetGuidValue;
			}
		}
		
		// --- Functions ---
		
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceCreate(PWSTR pszEnumeratorName, PWSTR pszParentDeviceInstance, SW_DEVICE_CREATE_INFO* pCreateInfo, uint32 cPropertyCount, DEVPROPERTY* pProperties, SW_DEVICE_CREATE_CALLBACK pCallback, void* pContext, int* phSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwDeviceClose(HSWDEVICE hSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceSetLifetime(HSWDEVICE hSwDevice, SW_DEVICE_LIFETIME Lifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceGetLifetime(HSWDEVICE hSwDevice, SW_DEVICE_LIFETIME* pLifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDevicePropertySet(HSWDEVICE hSwDevice, uint32 cPropertyCount, DEVPROPERTY* pProperties);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceRegister(HSWDEVICE hSwDevice, Guid* pInterfaceClassGuid, PWSTR pszReferenceString, uint32 cPropertyCount, DEVPROPERTY* pProperties, BOOL fEnabled, PWSTR* ppszDeviceInterfaceId);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwMemFree(void* pMem);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceSetState(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, BOOL fEnabled);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfacePropertySet(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, uint32 cPropertyCount, DEVPROPERTY* pProperties);
		
	}
}
