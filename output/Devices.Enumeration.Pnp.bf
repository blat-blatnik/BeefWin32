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
		
		public enum SW_DEVICE_CAPABILITIES : int32
		{
			None = 0,
			Removable = 1,
			SilentInstall = 2,
			NoDisplayInUI = 4,
			DriverRequired = 8,
		}
		public enum SW_DEVICE_LIFETIME : int32
		{
			Handle = 0,
			ParentPresent = 1,
			Max = 2,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindByType(BSTR bstrTypeURI, uint32 dwFlags, out IUPnPDevices* pDevices) mut => VT.FindByType(ref this, bstrTypeURI, dwFlags, out pDevices);
			public HRESULT CreateAsyncFind(BSTR bstrTypeURI, uint32 dwFlags, ref IUnknown punkDeviceFinderCallback, out int32 plFindData) mut => VT.CreateAsyncFind(ref this, bstrTypeURI, dwFlags, ref punkDeviceFinderCallback, out plFindData);
			public HRESULT StartAsyncFind(int32 lFindData) mut => VT.StartAsyncFind(ref this, lFindData);
			public HRESULT CancelAsyncFind(int32 lFindData) mut => VT.CancelAsyncFind(ref this, lFindData);
			public HRESULT FindByUDN(BSTR bstrUDN, out IUPnPDevice* pDevice) mut => VT.FindByUDN(ref this, bstrUDN, out pDevice);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinder self, BSTR bstrTypeURI, uint32 dwFlags, out IUPnPDevices* pDevices) FindByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinder self, BSTR bstrTypeURI, uint32 dwFlags, ref IUnknown punkDeviceFinderCallback, out int32 plFindData) CreateAsyncFind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinder self, int32 lFindData) StartAsyncFind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinder self, int32 lFindData) CancelAsyncFind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinder self, BSTR bstrUDN, out IUPnPDevice* pDevice) FindByUDN;
			}
		}
		[CRepr]
		public struct IUPnPAddressFamilyControl : IUnknown
		{
			public const new Guid IID = .(0xe3bf6178, 0x694e, 0x459f, 0xa5, 0xa6, 0x19, 0x1e, 0xa0, 0xff, 0xa1, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAddressFamily(int32 dwFlags) mut => VT.SetAddressFamily(ref this, dwFlags);
			public HRESULT GetAddressFamily(out int32 pdwFlags) mut => VT.GetAddressFamily(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPAddressFamilyControl self, int32 dwFlags) SetAddressFamily;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPAddressFamilyControl self, out int32 pdwFlags) GetAddressFamily;
			}
		}
		[CRepr]
		public struct IUPnPHttpHeaderControl : IUnknown
		{
			public const new Guid IID = .(0x0405af4f, 0x8b5c, 0x447c, 0x80, 0xf2, 0xb7, 0x59, 0x84, 0xa3, 0x1f, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddRequestHeaders(BSTR bstrHttpHeaders) mut => VT.AddRequestHeaders(ref this, bstrHttpHeaders);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPHttpHeaderControl self, BSTR bstrHttpHeaders) AddRequestHeaders;
			}
		}
		[CRepr]
		public struct IUPnPDeviceFinderCallback : IUnknown
		{
			public const new Guid IID = .(0x415a984a, 0x88b3, 0x49f3, 0x92, 0xaf, 0x05, 0x08, 0xbe, 0xdf, 0x0d, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeviceAdded(int32 lFindData, ref IUPnPDevice pDevice) mut => VT.DeviceAdded(ref this, lFindData, ref pDevice);
			public HRESULT DeviceRemoved(int32 lFindData, BSTR bstrUDN) mut => VT.DeviceRemoved(ref this, lFindData, bstrUDN);
			public HRESULT SearchComplete(int32 lFindData) mut => VT.SearchComplete(ref this, lFindData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinderCallback self, int32 lFindData, ref IUPnPDevice pDevice) DeviceAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinderCallback self, int32 lFindData, BSTR bstrUDN) DeviceRemoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinderCallback self, int32 lFindData) SearchComplete;
			}
		}
		[CRepr]
		public struct IUPnPServices : IDispatch
		{
			public const new Guid IID = .(0x3f8c8e9e, 0x9a7a, 0x4dc8, 0xbc, 0x41, 0xff, 0x31, 0xfa, 0x37, 0x49, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get__NewEnum(out IUnknown* ppunk) mut => VT.get__NewEnum(ref this, out ppunk);
			public HRESULT get_Item(BSTR bstrServiceId, out IUPnPService* ppService) mut => VT.get_Item(ref this, bstrServiceId, out ppService);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServices self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServices self, out IUnknown* ppunk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServices self, BSTR bstrServiceId, out IUPnPService* ppService) get_Item;
			}
		}
		[CRepr]
		public struct IUPnPService : IDispatch
		{
			public const new Guid IID = .(0xa295019c, 0xdc65, 0x47dd, 0x90, 0xdc, 0x7f, 0xe9, 0x18, 0xa1, 0xab, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryStateVariable(BSTR bstrVariableName, out VARIANT pValue) mut => VT.QueryStateVariable(ref this, bstrVariableName, out pValue);
			public HRESULT InvokeAction(BSTR bstrActionName, VARIANT vInActionArgs, out VARIANT pvOutActionArgs, out VARIANT pvRetVal) mut => VT.InvokeAction(ref this, bstrActionName, vInActionArgs, out pvOutActionArgs, out pvRetVal);
			public HRESULT get_ServiceTypeIdentifier(out BSTR pVal) mut => VT.get_ServiceTypeIdentifier(ref this, out pVal);
			public HRESULT AddCallback(ref IUnknown pUnkCallback) mut => VT.AddCallback(ref this, ref pUnkCallback);
			public HRESULT get_Id(out BSTR pbstrId) mut => VT.get_Id(ref this, out pbstrId);
			public HRESULT get_LastTransportStatus(out int32 plValue) mut => VT.get_LastTransportStatus(ref this, out plValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, BSTR bstrVariableName, out VARIANT pValue) QueryStateVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, BSTR bstrActionName, VARIANT vInActionArgs, out VARIANT pvOutActionArgs, out VARIANT pvRetVal) InvokeAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, out BSTR pVal) get_ServiceTypeIdentifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, ref IUnknown pUnkCallback) AddCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, out BSTR pbstrId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPService self, out int32 plValue) get_LastTransportStatus;
			}
		}
		[CRepr]
		public struct IUPnPAsyncResult : IUnknown
		{
			public const new Guid IID = .(0x4d65fd08, 0xd13e, 0x4274, 0x9c, 0x8b, 0xdd, 0x8d, 0x02, 0x8c, 0x86, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncOperationComplete(uint64 ullRequestID) mut => VT.AsyncOperationComplete(ref this, ullRequestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPAsyncResult self, uint64 ullRequestID) AsyncOperationComplete;
			}
		}
		[CRepr]
		public struct IUPnPServiceAsync : IUnknown
		{
			public const new Guid IID = .(0x098bdaf5, 0x5ec1, 0x49e7, 0xa2, 0x60, 0xb3, 0xa1, 0x1d, 0xd8, 0x68, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginInvokeAction(BSTR bstrActionName, VARIANT vInActionArgs, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) mut => VT.BeginInvokeAction(ref this, bstrActionName, vInActionArgs, ref pAsyncResult, out pullRequestID);
			public HRESULT EndInvokeAction(uint64 ullRequestID, out VARIANT pvOutActionArgs, out VARIANT pvRetVal) mut => VT.EndInvokeAction(ref this, ullRequestID, out pvOutActionArgs, out pvRetVal);
			public HRESULT BeginQueryStateVariable(BSTR bstrVariableName, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) mut => VT.BeginQueryStateVariable(ref this, bstrVariableName, ref pAsyncResult, out pullRequestID);
			public HRESULT EndQueryStateVariable(uint64 ullRequestID, out VARIANT pValue) mut => VT.EndQueryStateVariable(ref this, ullRequestID, out pValue);
			public HRESULT BeginSubscribeToEvents(ref IUnknown pUnkCallback, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) mut => VT.BeginSubscribeToEvents(ref this, ref pUnkCallback, ref pAsyncResult, out pullRequestID);
			public HRESULT EndSubscribeToEvents(uint64 ullRequestID) mut => VT.EndSubscribeToEvents(ref this, ullRequestID);
			public HRESULT BeginSCPDDownload(ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) mut => VT.BeginSCPDDownload(ref this, ref pAsyncResult, out pullRequestID);
			public HRESULT EndSCPDDownload(uint64 ullRequestID, out BSTR pbstrSCPDDoc) mut => VT.EndSCPDDownload(ref this, ullRequestID, out pbstrSCPDDoc);
			public HRESULT CancelAsyncOperation(uint64 ullRequestID) mut => VT.CancelAsyncOperation(ref this, ullRequestID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, BSTR bstrActionName, VARIANT vInActionArgs, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) BeginInvokeAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, uint64 ullRequestID, out VARIANT pvOutActionArgs, out VARIANT pvRetVal) EndInvokeAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, BSTR bstrVariableName, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) BeginQueryStateVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, uint64 ullRequestID, out VARIANT pValue) EndQueryStateVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, ref IUnknown pUnkCallback, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) BeginSubscribeToEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, uint64 ullRequestID) EndSubscribeToEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, ref IUPnPAsyncResult pAsyncResult, out uint64 pullRequestID) BeginSCPDDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, uint64 ullRequestID, out BSTR pbstrSCPDDoc) EndSCPDDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceAsync self, uint64 ullRequestID) CancelAsyncOperation;
			}
		}
		[CRepr]
		public struct IUPnPServiceCallback : IUnknown
		{
			public const new Guid IID = .(0x31fadca9, 0xab73, 0x464b, 0xb6, 0x7d, 0x5c, 0x1d, 0x0f, 0x83, 0xc8, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StateVariableChanged(ref IUPnPService pus, PWSTR pcwszStateVarName, VARIANT vaValue) mut => VT.StateVariableChanged(ref this, ref pus, pcwszStateVarName, vaValue);
			public HRESULT ServiceInstanceDied(ref IUPnPService pus) mut => VT.ServiceInstanceDied(ref this, ref pus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceCallback self, ref IUPnPService pus, PWSTR pcwszStateVarName, VARIANT vaValue) StateVariableChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceCallback self, ref IUPnPService pus) ServiceInstanceDied;
			}
		}
		[CRepr]
		public struct IUPnPServiceEnumProperty : IUnknown
		{
			public const new Guid IID = .(0x38873b37, 0x91bb, 0x49f4, 0xb2, 0x49, 0x2e, 0x8e, 0xfb, 0xb8, 0xa8, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetServiceEnumProperty(uint32 dwMask) mut => VT.SetServiceEnumProperty(ref this, dwMask);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceEnumProperty self, uint32 dwMask) SetServiceEnumProperty;
			}
		}
		[CRepr]
		public struct IUPnPServiceDocumentAccess : IUnknown
		{
			public const new Guid IID = .(0x21905529, 0x0a5e, 0x4589, 0x82, 0x5d, 0x7e, 0x6d, 0x87, 0xea, 0x69, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentURL(out BSTR pbstrDocUrl) mut => VT.GetDocumentURL(ref this, out pbstrDocUrl);
			public HRESULT GetDocument(out BSTR pbstrDoc) mut => VT.GetDocument(ref this, out pbstrDoc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceDocumentAccess self, out BSTR pbstrDocUrl) GetDocumentURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPServiceDocumentAccess self, out BSTR pbstrDoc) GetDocument;
			}
		}
		[CRepr]
		public struct IUPnPDevices : IDispatch
		{
			public const new Guid IID = .(0xfdbc0c73, 0xbda3, 0x4c66, 0xac, 0x4f, 0xf2, 0xd9, 0x6f, 0xda, 0xd6, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
			public HRESULT get__NewEnum(out IUnknown* ppunk) mut => VT.get__NewEnum(ref this, out ppunk);
			public HRESULT get_Item(BSTR bstrUDN, out IUPnPDevice* ppDevice) mut => VT.get_Item(ref this, bstrUDN, out ppDevice);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevices self, out int32 plCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevices self, out IUnknown* ppunk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevices self, BSTR bstrUDN, out IUPnPDevice* ppDevice) get_Item;
			}
		}
		[CRepr]
		public struct IUPnPDevice : IDispatch
		{
			public const new Guid IID = .(0x3d44d0d1, 0x98c9, 0x4889, 0xac, 0xd1, 0xf9, 0xd6, 0x74, 0xbf, 0x22, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsRootDevice(out int16 pvarb) mut => VT.get_IsRootDevice(ref this, out pvarb);
			public HRESULT get_RootDevice(out IUPnPDevice* ppudRootDevice) mut => VT.get_RootDevice(ref this, out ppudRootDevice);
			public HRESULT get_ParentDevice(out IUPnPDevice* ppudDeviceParent) mut => VT.get_ParentDevice(ref this, out ppudDeviceParent);
			public HRESULT get_HasChildren(out int16 pvarb) mut => VT.get_HasChildren(ref this, out pvarb);
			public HRESULT get_Children(out IUPnPDevices* ppudChildren) mut => VT.get_Children(ref this, out ppudChildren);
			public HRESULT get_UniqueDeviceName(out BSTR pbstr) mut => VT.get_UniqueDeviceName(ref this, out pbstr);
			public HRESULT get_FriendlyName(out BSTR pbstr) mut => VT.get_FriendlyName(ref this, out pbstr);
			public HRESULT get_Type(out BSTR pbstr) mut => VT.get_Type(ref this, out pbstr);
			public HRESULT get_PresentationURL(out BSTR pbstr) mut => VT.get_PresentationURL(ref this, out pbstr);
			public HRESULT get_ManufacturerName(out BSTR pbstr) mut => VT.get_ManufacturerName(ref this, out pbstr);
			public HRESULT get_ManufacturerURL(out BSTR pbstr) mut => VT.get_ManufacturerURL(ref this, out pbstr);
			public HRESULT get_ModelName(out BSTR pbstr) mut => VT.get_ModelName(ref this, out pbstr);
			public HRESULT get_ModelNumber(out BSTR pbstr) mut => VT.get_ModelNumber(ref this, out pbstr);
			public HRESULT get_Description(out BSTR pbstr) mut => VT.get_Description(ref this, out pbstr);
			public HRESULT get_ModelURL(out BSTR pbstr) mut => VT.get_ModelURL(ref this, out pbstr);
			public HRESULT get_UPC(out BSTR pbstr) mut => VT.get_UPC(ref this, out pbstr);
			public HRESULT get_SerialNumber(out BSTR pbstr) mut => VT.get_SerialNumber(ref this, out pbstr);
			public HRESULT IconURL(BSTR bstrEncodingFormat, int32 lSizeX, int32 lSizeY, int32 lBitDepth, out BSTR pbstrIconURL) mut => VT.IconURL(ref this, bstrEncodingFormat, lSizeX, lSizeY, lBitDepth, out pbstrIconURL);
			public HRESULT get_Services(out IUPnPServices* ppusServices) mut => VT.get_Services(ref this, out ppusServices);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out int16 pvarb) get_IsRootDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out IUPnPDevice* ppudRootDevice) get_RootDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out IUPnPDevice* ppudDeviceParent) get_ParentDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out int16 pvarb) get_HasChildren;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out IUPnPDevices* ppudChildren) get_Children;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_UniqueDeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_FriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_PresentationURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_ManufacturerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_ManufacturerURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_ModelName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_ModelNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_ModelURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_UPC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out BSTR pbstr) get_SerialNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, BSTR bstrEncodingFormat, int32 lSizeX, int32 lSizeY, int32 lBitDepth, out BSTR pbstrIconURL) IconURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDevice self, out IUPnPServices* ppusServices) get_Services;
			}
		}
		[CRepr]
		public struct IUPnPDeviceDocumentAccess : IUnknown
		{
			public const new Guid IID = .(0xe7772804, 0x3287, 0x418e, 0x90, 0x72, 0xcf, 0x2b, 0x47, 0x23, 0x89, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentURL(out BSTR pbstrDocument) mut => VT.GetDocumentURL(ref this, out pbstrDocument);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceDocumentAccess self, out BSTR pbstrDocument) GetDocumentURL;
			}
		}
		[CRepr]
		public struct IUPnPDeviceDocumentAccessEx : IUnknown
		{
			public const new Guid IID = .(0xc4bc4050, 0x6178, 0x4bd1, 0xa4, 0xb8, 0x63, 0x98, 0x32, 0x1f, 0x32, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocument(out BSTR pbstrDocument) mut => VT.GetDocument(ref this, out pbstrDocument);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceDocumentAccessEx self, out BSTR pbstrDocument) GetDocument;
			}
		}
		[CRepr]
		public struct IUPnPDescriptionDocument : IDispatch
		{
			public const new Guid IID = .(0x11d1c1b2, 0x7daa, 0x4c9e, 0x95, 0x95, 0x7f, 0x82, 0xed, 0x20, 0x6d, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ReadyState(out int32 plReadyState) mut => VT.get_ReadyState(ref this, out plReadyState);
			public HRESULT Load(BSTR bstrUrl) mut => VT.Load(ref this, bstrUrl);
			public HRESULT LoadAsync(BSTR bstrUrl, ref IUnknown punkCallback) mut => VT.LoadAsync(ref this, bstrUrl, ref punkCallback);
			public HRESULT get_LoadResult(out int32 phrError) mut => VT.get_LoadResult(ref this, out phrError);
			public HRESULT Abort() mut => VT.Abort(ref this);
			public HRESULT RootDevice(out IUPnPDevice* ppudRootDevice) mut => VT.RootDevice(ref this, out ppudRootDevice);
			public HRESULT DeviceByUDN(BSTR bstrUDN, out IUPnPDevice* ppudDevice) mut => VT.DeviceByUDN(ref this, bstrUDN, out ppudDevice);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, out int32 plReadyState) get_ReadyState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, BSTR bstrUrl) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, BSTR bstrUrl, ref IUnknown punkCallback) LoadAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, out int32 phrError) get_LoadResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self) Abort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, out IUPnPDevice* ppudRootDevice) RootDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocument self, BSTR bstrUDN, out IUPnPDevice* ppudDevice) DeviceByUDN;
			}
		}
		[CRepr]
		public struct IUPnPDeviceFinderAddCallbackWithInterface : IUnknown
		{
			public const new Guid IID = .(0x983dfc0b, 0x1796, 0x44df, 0x89, 0x75, 0xca, 0x54, 0x5b, 0x62, 0x0e, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeviceAddedWithInterface(int32 lFindData, ref IUPnPDevice pDevice, ref Guid pguidInterface) mut => VT.DeviceAddedWithInterface(ref this, lFindData, ref pDevice, ref pguidInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceFinderAddCallbackWithInterface self, int32 lFindData, ref IUPnPDevice pDevice, ref Guid pguidInterface) DeviceAddedWithInterface;
			}
		}
		[CRepr]
		public struct IUPnPDescriptionDocumentCallback : IUnknown
		{
			public const new Guid IID = .(0x77394c69, 0x5486, 0x40d6, 0x9b, 0xc3, 0x49, 0x91, 0x98, 0x3e, 0x02, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadComplete(HRESULT hrLoadResult) mut => VT.LoadComplete(ref this, hrLoadResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDescriptionDocumentCallback self, HRESULT hrLoadResult) LoadComplete;
			}
		}
		[CRepr]
		public struct IUPnPEventSink : IUnknown
		{
			public const new Guid IID = .(0x204810b4, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStateChanged(uint32 cChanges, int32* rgdispidChanges) mut => VT.OnStateChanged(ref this, cChanges, rgdispidChanges);
			public HRESULT OnStateChangedSafe(VARIANT varsadispidChanges) mut => VT.OnStateChangedSafe(ref this, varsadispidChanges);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPEventSink self, uint32 cChanges, int32* rgdispidChanges) OnStateChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPEventSink self, VARIANT varsadispidChanges) OnStateChangedSafe;
			}
		}
		[CRepr]
		public struct IUPnPEventSource : IUnknown
		{
			public const new Guid IID = .(0x204810b5, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(ref IUPnPEventSink pesSubscriber) mut => VT.Advise(ref this, ref pesSubscriber);
			public HRESULT Unadvise(ref IUPnPEventSink pesSubscriber) mut => VT.Unadvise(ref this, ref pesSubscriber);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPEventSource self, ref IUPnPEventSink pesSubscriber) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPEventSource self, ref IUPnPEventSink pesSubscriber) Unadvise;
			}
		}
		[CRepr]
		public struct IUPnPRegistrar : IUnknown
		{
			public const new Guid IID = .(0x204810b6, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterDevice(BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime, out BSTR pbstrDeviceIdentifier) mut => VT.RegisterDevice(ref this, bstrXMLDesc, bstrProgIDDeviceControlClass, bstrInitString, bstrContainerId, bstrResourcePath, nLifeTime, out pbstrDeviceIdentifier);
			public HRESULT RegisterRunningDevice(BSTR bstrXMLDesc, ref IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime, out BSTR pbstrDeviceIdentifier) mut => VT.RegisterRunningDevice(ref this, bstrXMLDesc, ref punkDeviceControl, bstrInitString, bstrResourcePath, nLifeTime, out pbstrDeviceIdentifier);
			public HRESULT RegisterDeviceProvider(BSTR bstrProviderName, BSTR bstrProgIDProviderClass, BSTR bstrInitString, BSTR bstrContainerId) mut => VT.RegisterDeviceProvider(ref this, bstrProviderName, bstrProgIDProviderClass, bstrInitString, bstrContainerId);
			public HRESULT GetUniqueDeviceName(BSTR bstrDeviceIdentifier, BSTR bstrTemplateUDN, out BSTR pbstrUDN) mut => VT.GetUniqueDeviceName(ref this, bstrDeviceIdentifier, bstrTemplateUDN, out pbstrUDN);
			public HRESULT UnregisterDevice(BSTR bstrDeviceIdentifier, BOOL fPermanent) mut => VT.UnregisterDevice(ref this, bstrDeviceIdentifier, fPermanent);
			public HRESULT UnregisterDeviceProvider(BSTR bstrProviderName) mut => VT.UnregisterDeviceProvider(ref this, bstrProviderName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime, out BSTR pbstrDeviceIdentifier) RegisterDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrXMLDesc, ref IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime, out BSTR pbstrDeviceIdentifier) RegisterRunningDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrProviderName, BSTR bstrProgIDProviderClass, BSTR bstrInitString, BSTR bstrContainerId) RegisterDeviceProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrDeviceIdentifier, BSTR bstrTemplateUDN, out BSTR pbstrUDN) GetUniqueDeviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrDeviceIdentifier, BOOL fPermanent) UnregisterDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRegistrar self, BSTR bstrProviderName) UnregisterDeviceProvider;
			}
		}
		[CRepr]
		public struct IUPnPReregistrar : IUnknown
		{
			public const new Guid IID = .(0x204810b7, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReregisterDevice(BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime) mut => VT.ReregisterDevice(ref this, bstrDeviceIdentifier, bstrXMLDesc, bstrProgIDDeviceControlClass, bstrInitString, bstrContainerId, bstrResourcePath, nLifeTime);
			public HRESULT ReregisterRunningDevice(BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, ref IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime) mut => VT.ReregisterRunningDevice(ref this, bstrDeviceIdentifier, bstrXMLDesc, ref punkDeviceControl, bstrInitString, bstrResourcePath, nLifeTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPReregistrar self, BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, BSTR bstrProgIDDeviceControlClass, BSTR bstrInitString, BSTR bstrContainerId, BSTR bstrResourcePath, int32 nLifeTime) ReregisterDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPReregistrar self, BSTR bstrDeviceIdentifier, BSTR bstrXMLDesc, ref IUnknown punkDeviceControl, BSTR bstrInitString, BSTR bstrResourcePath, int32 nLifeTime) ReregisterRunningDevice;
			}
		}
		[CRepr]
		public struct IUPnPDeviceControl : IUnknown
		{
			public const new Guid IID = .(0x204810ba, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrXMLDesc, BSTR bstrDeviceIdentifier, BSTR bstrInitString) mut => VT.Initialize(ref this, bstrXMLDesc, bstrDeviceIdentifier, bstrInitString);
			public HRESULT GetServiceObject(BSTR bstrUDN, BSTR bstrServiceId, out IDispatch* ppdispService) mut => VT.GetServiceObject(ref this, bstrUDN, bstrServiceId, out ppdispService);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceControl self, BSTR bstrXMLDesc, BSTR bstrDeviceIdentifier, BSTR bstrInitString) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceControl self, BSTR bstrUDN, BSTR bstrServiceId, out IDispatch* ppdispService) GetServiceObject;
			}
		}
		[CRepr]
		public struct IUPnPDeviceControlHttpHeaders : IUnknown
		{
			public const new Guid IID = .(0x204810bb, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdditionalResponseHeaders(out BSTR bstrHttpResponseHeaders) mut => VT.GetAdditionalResponseHeaders(ref this, out bstrHttpResponseHeaders);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceControlHttpHeaders self, out BSTR bstrHttpResponseHeaders) GetAdditionalResponseHeaders;
			}
		}
		[CRepr]
		public struct IUPnPDeviceProvider : IUnknown
		{
			public const new Guid IID = .(0x204810b8, 0x73b2, 0x11d4, 0xbf, 0x42, 0x00, 0xb0, 0xd0, 0x11, 0x8b, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(BSTR bstrInitString) mut => VT.Start(ref this, bstrInitString);
			public HRESULT Stop() mut => VT.Stop(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceProvider self, BSTR bstrInitString) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPDeviceProvider self) Stop;
			}
		}
		[CRepr]
		public struct IUPnPRemoteEndpointInfo : IUnknown
		{
			public const new Guid IID = .(0xc92eb863, 0x0269, 0x4aff, 0x9c, 0x72, 0x75, 0x32, 0x1b, 0xba, 0x29, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDwordValue(BSTR bstrValueName, out uint32 pdwValue) mut => VT.GetDwordValue(ref this, bstrValueName, out pdwValue);
			public HRESULT GetStringValue(BSTR bstrValueName, out BSTR pbstrValue) mut => VT.GetStringValue(ref this, bstrValueName, out pbstrValue);
			public HRESULT GetGuidValue(BSTR bstrValueName, out Guid pguidValue) mut => VT.GetGuidValue(ref this, bstrValueName, out pguidValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRemoteEndpointInfo self, BSTR bstrValueName, out uint32 pdwValue) GetDwordValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRemoteEndpointInfo self, BSTR bstrValueName, out BSTR pbstrValue) GetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUPnPRemoteEndpointInfo self, BSTR bstrValueName, out Guid pguidValue) GetGuidValue;
			}
		}
		
		// --- Functions ---
		
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceCreate(PWSTR pszEnumeratorName, PWSTR pszParentDeviceInstance, in SW_DEVICE_CREATE_INFO pCreateInfo, uint32 cPropertyCount, DEVPROPERTY* pProperties, SW_DEVICE_CREATE_CALLBACK pCallback, void* pContext, out int phSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwDeviceClose(HSWDEVICE hSwDevice);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceSetLifetime(HSWDEVICE hSwDevice, SW_DEVICE_LIFETIME Lifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceGetLifetime(HSWDEVICE hSwDevice, out SW_DEVICE_LIFETIME pLifetime);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDevicePropertySet(HSWDEVICE hSwDevice, uint32 cPropertyCount, DEVPROPERTY* pProperties);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceRegister(HSWDEVICE hSwDevice, in Guid pInterfaceClassGuid, PWSTR pszReferenceString, uint32 cPropertyCount, DEVPROPERTY* pProperties, BOOL fEnabled, PWSTR* ppszDeviceInterfaceId);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SwMemFree(void* pMem);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfaceSetState(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, BOOL fEnabled);
		[Import("cfgmgr32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SwDeviceInterfacePropertySet(HSWDEVICE hSwDevice, PWSTR pszDeviceInterfaceId, uint32 cPropertyCount, DEVPROPERTY* pProperties);
	}
}
