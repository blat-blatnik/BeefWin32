using System;

// namespace System.WinRT
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAX_ERROR_MESSAGE_CHARS = 512;
		public const String CastingSourceInfo_Property_PreferredSourceUriScheme = "PreferredSourceUriScheme";
		public const String CastingSourceInfo_Property_CastingTypes = "CastingTypes";
		public const String CastingSourceInfo_Property_ProtectedMedia = "ProtectedMedia";
		
		// --- Typedefs ---
		
		public typealias HSTRING = int;
		public typealias HSTRING_BUFFER = int;
		public typealias ROPARAMIIDHANDLE = int;
		public typealias APARTMENT_SHUTDOWN_REGISTRATION_COOKIE = int;
		
		// --- Enums ---
		
		public enum ACTIVATIONTYPE : int32
		{
			UNCATEGORIZED = 0,
			FROM_MONIKER = 1,
			FROM_DATA = 2,
			FROM_STORAGE = 4,
			FROM_STREAM = 8,
			FROM_FILE = 16,
		}
		public enum AgileReferenceOptions : int32
		{
			FAULT = 0,
			LAYEDMARSHAL = 1,
		}
		public enum TrustLevel : int32
		{
			BaseTrust = 0,
			PartialTrust = 1,
			FullTrust = 2,
		}
		public enum DISPATCHERQUEUE_THREAD_APARTMENTTYPE : int32
		{
			NONE = 0,
			ASTA = 1,
			STA = 2,
		}
		public enum DISPATCHERQUEUE_THREAD_TYPE : int32
		{
			DEDICATED = 1,
			CURRENT = 2,
		}
		public enum CASTING_CONNECTION_ERROR_STATUS : int32
		{
			SUCCEEDED = 0,
			DEVICE_DID_NOT_RESPOND = 1,
			DEVICE_ERROR = 2,
			DEVICE_LOCKED = 3,
			PROTECTED_PLAYBACK_FAILED = 4,
			INVALID_CASTING_SOURCE = 5,
			UNKNOWN = 6,
		}
		public enum CASTING_CONNECTION_STATE : int32
		{
			DISCONNECTED = 0,
			CONNECTED = 1,
			RENDERING = 2,
			DISCONNECTING = 3,
			CONNECTING = 4,
		}
		public enum RO_INIT_TYPE : int32
		{
			SINGLETHREADED = 0,
			MULTITHREADED = 1,
		}
		public enum RO_ERROR_REPORTING_FLAGS : uint32
		{
			NONE = 0,
			SUPPRESSEXCEPTIONS = 1,
			FORCEEXCEPTIONS = 2,
			USESETERRORINFO = 4,
			SUPPRESSSETERRORINFO = 8,
		}
		public enum BSOS_OPTIONS : int32
		{
			DEFAULT = 0,
			PREFERDESTINATIONSTREAM = 1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PINSPECT_HSTRING_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		public function HRESULT PINSPECT_HSTRING_CALLBACK2(void* context, uint64 readAddress, uint32 length, uint8* buffer);
		public function HRESULT PINSPECT_MEMORY_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		
		// --- Structs ---
		
		[CRepr]
		public struct EventRegistrationToken
		{
			public int64 value;
		}
		[CRepr]
		public struct ServerInformation
		{
			public uint32 dwServerPid;
			public uint32 dwServerTid;
			public uint64 ui64ServerAddress;
		}
		[CRepr]
		public struct HSTRING_HEADER
		{
			public _Reserved_e__Union Reserved;
			
			[CRepr, Union]
			public struct _Reserved_e__Union
			{
				public void* Reserved1;
				public CHAR[24] Reserved2;
			}
		}
		[CRepr]
		public struct DispatcherQueueOptions
		{
			public uint32 dwSize;
			public DISPATCHERQUEUE_THREAD_TYPE threadType;
			public DISPATCHERQUEUE_THREAD_APARTMENTTYPE apartmentType;
		}
		[CRepr]
		public struct _RO_REGISTRATION_COOKIE
		{
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAgileReference : IUnknown
		{
			public const new Guid IID = .(0xc03f6a43, 0x65a4, 0x9818, 0x98, 0x7e, 0xe0, 0xb8, 0x10, 0xd2, 0xa6, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resolve(Guid* riid, void** ppvObjectReference) mut
			{
				return VT.Resolve(&this, riid, ppvObjectReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAgileReference *self, Guid* riid, void** ppvObjectReference) Resolve;
			}
		}
		[CRepr]
		public struct IApartmentShutdown : IUnknown
		{
			public const new Guid IID = .(0xa2f05a09, 0x27a2, 0x42b5, 0xbc, 0x0e, 0xac, 0x16, 0x3e, 0xf4, 0x9d, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnUninitialize(uint64 ui64ApartmentIdentifier) mut
			{
				VT.OnUninitialize(&this, ui64ApartmentIdentifier);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IApartmentShutdown *self, uint64 ui64ApartmentIdentifier) OnUninitialize;
			}
		}
		[CRepr]
		public struct ISpatialInteractionManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x5c4ee536, 0x6a98, 0x4b86, 0xa1, 0x70, 0x58, 0x70, 0x13, 0xd6, 0xfd, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND window, Guid* riid, void** spatialInteractionManager) mut
			{
				return VT.GetForWindow(&this, window, riid, spatialInteractionManager);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(ISpatialInteractionManagerInterop *self, HWND window, Guid* riid, void** spatialInteractionManager) GetForWindow;
			}
		}
		[CRepr]
		public struct IHolographicSpaceInterop : IInspectable
		{
			public const new Guid IID = .(0x5c4ee536, 0x6a98, 0x4b86, 0xa1, 0x70, 0x58, 0x70, 0x13, 0xd6, 0xfd, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateForWindow(HWND window, Guid* riid, void** holographicSpace) mut
			{
				return VT.CreateForWindow(&this, window, riid, holographicSpace);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IHolographicSpaceInterop *self, HWND window, Guid* riid, void** holographicSpace) CreateForWindow;
			}
		}
		[CRepr]
		public struct IInspectable : IUnknown
		{
			public const new Guid IID = .(0xaf86e2e0, 0xb12d, 0x4c6a, 0x9c, 0x5a, 0xd7, 0xaa, 0x65, 0x10, 0x1e, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIids(uint32* iidCount, Guid** iids) mut
			{
				return VT.GetIids(&this, iidCount, iids);
			}
			public HRESULT GetRuntimeClassName(HSTRING* className) mut
			{
				return VT.GetRuntimeClassName(&this, className);
			}
			public HRESULT GetTrustLevel(TrustLevel* trustLevel) mut
			{
				return VT.GetTrustLevel(&this, trustLevel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInspectable *self, uint32* iidCount, Guid** iids) GetIids;
				public new function HRESULT(IInspectable *self, HSTRING* className) GetRuntimeClassName;
				public new function HRESULT(IInspectable *self, TrustLevel* trustLevel) GetTrustLevel;
			}
		}
		[CRepr]
		public struct IAccountsSettingsPaneInterop : IInspectable
		{
			public const new Guid IID = .(0xd3ee12ad, 0x3865, 0x4362, 0x97, 0x46, 0xb7, 0x5a, 0x68, 0x2d, 0xf0, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** accountsSettingsPane) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, accountsSettingsPane);
			}
			public HRESULT ShowManageAccountsForWindowAsync(HWND appWindow, Guid* riid, void** asyncAction) mut
			{
				return VT.ShowManageAccountsForWindowAsync(&this, appWindow, riid, asyncAction);
			}
			public HRESULT ShowAddAccountForWindowAsync(HWND appWindow, Guid* riid, void** asyncAction) mut
			{
				return VT.ShowAddAccountForWindowAsync(&this, appWindow, riid, asyncAction);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IAccountsSettingsPaneInterop *self, HWND appWindow, Guid* riid, void** accountsSettingsPane) GetForWindow;
				public new function HRESULT(IAccountsSettingsPaneInterop *self, HWND appWindow, Guid* riid, void** asyncAction) ShowManageAccountsForWindowAsync;
				public new function HRESULT(IAccountsSettingsPaneInterop *self, HWND appWindow, Guid* riid, void** asyncAction) ShowAddAccountForWindowAsync;
			}
		}
		[CRepr]
		public struct IAppServiceConnectionExtendedExecution : IUnknown
		{
			public const new Guid IID = .(0x65219584, 0xf9cb, 0x4ae3, 0x81, 0xf9, 0xa2, 0x8a, 0x6c, 0xa4, 0x50, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenForExtendedExecutionAsync(Guid* riid, void** operation) mut
			{
				return VT.OpenForExtendedExecutionAsync(&this, riid, operation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppServiceConnectionExtendedExecution *self, Guid* riid, void** operation) OpenForExtendedExecutionAsync;
			}
		}
		[CRepr]
		public struct ICorrelationVectorSource : IUnknown
		{
			public const new Guid IID = .(0x152b8a3b, 0xb9b9, 0x4685, 0xb5, 0x6e, 0x97, 0x48, 0x47, 0xbc, 0x75, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CorrelationVector(HSTRING* cv) mut
			{
				return VT.get_CorrelationVector(&this, cv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICorrelationVectorSource *self, HSTRING* cv) get_CorrelationVector;
			}
		}
		[CRepr]
		public struct ICastingEventHandler : IUnknown
		{
			public const new Guid IID = .(0xc79a6cb7, 0xbebd, 0x47a6, 0xa2, 0xad, 0x4d, 0x45, 0xad, 0x79, 0xc7, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStateChanged(CASTING_CONNECTION_STATE newState) mut
			{
				return VT.OnStateChanged(&this, newState);
			}
			public HRESULT OnError(CASTING_CONNECTION_ERROR_STATUS errorStatus, PWSTR errorMessage) mut
			{
				return VT.OnError(&this, errorStatus, errorMessage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICastingEventHandler *self, CASTING_CONNECTION_STATE newState) OnStateChanged;
				public new function HRESULT(ICastingEventHandler *self, CASTING_CONNECTION_ERROR_STATUS errorStatus, PWSTR errorMessage) OnError;
			}
		}
		[CRepr]
		public struct ICastingController : IUnknown
		{
			public const new Guid IID = .(0xf0a56423, 0xa664, 0x4fbd, 0x8b, 0x43, 0x40, 0x9a, 0x45, 0xe8, 0xd9, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IUnknown* castingEngine, IUnknown* castingSource) mut
			{
				return VT.Initialize(&this, castingEngine, castingSource);
			}
			public HRESULT Connect() mut
			{
				return VT.Connect(&this);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT Advise(ICastingEventHandler* eventHandler, uint32* cookie) mut
			{
				return VT.Advise(&this, eventHandler, cookie);
			}
			public HRESULT UnAdvise(uint32 cookie) mut
			{
				return VT.UnAdvise(&this, cookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICastingController *self, IUnknown* castingEngine, IUnknown* castingSource) Initialize;
				public new function HRESULT(ICastingController *self) Connect;
				public new function HRESULT(ICastingController *self) Disconnect;
				public new function HRESULT(ICastingController *self, ICastingEventHandler* eventHandler, uint32* cookie) Advise;
				public new function HRESULT(ICastingController *self, uint32 cookie) UnAdvise;
			}
		}
		[CRepr]
		public struct ICastingSourceInfo : IUnknown
		{
			public const new Guid IID = .(0x45101ab7, 0x7c3a, 0x4bce, 0x95, 0x00, 0x12, 0xc0, 0x90, 0x24, 0xb2, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetController(ICastingController** controller) mut
			{
				return VT.GetController(&this, controller);
			}
			public HRESULT GetProperties(INamedPropertyStore** props) mut
			{
				return VT.GetProperties(&this, props);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICastingSourceInfo *self, ICastingController** controller) GetController;
				public new function HRESULT(ICastingSourceInfo *self, INamedPropertyStore** props) GetProperties;
			}
		}
		[CRepr]
		public struct IDragDropManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x5ad8cba7, 0x4c01, 0x4dac, 0x90, 0x74, 0x82, 0x78, 0x94, 0x29, 0x2d, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND hwnd, Guid* riid, void** ppv) mut
			{
				return VT.GetForWindow(&this, hwnd, riid, ppv);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IDragDropManagerInterop *self, HWND hwnd, Guid* riid, void** ppv) GetForWindow;
			}
		}
		[CRepr]
		public struct IInputPaneInterop : IInspectable
		{
			public const new Guid IID = .(0x75cf2c57, 0x9195, 0x4931, 0x83, 0x32, 0xf0, 0xb4, 0x09, 0xe9, 0x16, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** inputPane) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, inputPane);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IInputPaneInterop *self, HWND appWindow, Guid* riid, void** inputPane) GetForWindow;
			}
		}
		[CRepr]
		public struct IPlayToManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x24394699, 0x1f2c, 0x4eb3, 0x8c, 0xd7, 0x0e, 0xc1, 0xda, 0x42, 0xa5, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** playToManager) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, playToManager);
			}
			public HRESULT ShowPlayToUIForWindow(HWND appWindow) mut
			{
				return VT.ShowPlayToUIForWindow(&this, appWindow);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IPlayToManagerInterop *self, HWND appWindow, Guid* riid, void** playToManager) GetForWindow;
				public new function HRESULT(IPlayToManagerInterop *self, HWND appWindow) ShowPlayToUIForWindow;
			}
		}
		[CRepr]
		public struct ICorrelationVectorInformation : IInspectable
		{
			public const new Guid IID = .(0x83c78b3c, 0xd88b, 0x4950, 0xaa, 0x6e, 0x22, 0xb8, 0xd2, 0x2a, 0xab, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_LastCorrelationVectorForThread(HSTRING* cv) mut
			{
				return VT.get_LastCorrelationVectorForThread(&this, cv);
			}
			public HRESULT get_NextCorrelationVectorForThread(HSTRING* cv) mut
			{
				return VT.get_NextCorrelationVectorForThread(&this, cv);
			}
			public HRESULT put_NextCorrelationVectorForThread(HSTRING cv) mut
			{
				return VT.put_NextCorrelationVectorForThread(&this, cv);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(ICorrelationVectorInformation *self, HSTRING* cv) get_LastCorrelationVectorForThread;
				public new function HRESULT(ICorrelationVectorInformation *self, HSTRING* cv) get_NextCorrelationVectorForThread;
				public new function HRESULT(ICorrelationVectorInformation *self, HSTRING cv) put_NextCorrelationVectorForThread;
			}
		}
		[CRepr]
		public struct IUIViewSettingsInterop : IInspectable
		{
			public const new Guid IID = .(0x3694dbf9, 0x8f68, 0x44be, 0x8f, 0xf5, 0x19, 0x5c, 0x98, 0xed, 0xe8, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND hwnd, Guid* riid, void** ppv) mut
			{
				return VT.GetForWindow(&this, hwnd, riid, ppv);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IUIViewSettingsInterop *self, HWND hwnd, Guid* riid, void** ppv) GetForWindow;
			}
		}
		[CRepr]
		public struct IUserActivityInterop : IInspectable
		{
			public const new Guid IID = .(0x1ade314d, 0x0e0a, 0x40d9, 0x82, 0x4c, 0x9a, 0x08, 0x8a, 0x50, 0x05, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSessionForWindow(HWND window, Guid* iid, void** value) mut
			{
				return VT.CreateSessionForWindow(&this, window, iid, value);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IUserActivityInterop *self, HWND window, Guid* iid, void** value) CreateSessionForWindow;
			}
		}
		[CRepr]
		public struct IUserActivitySourceHostInterop : IInspectable
		{
			public const new Guid IID = .(0xc15df8bc, 0x8844, 0x487a, 0xb8, 0x5b, 0x75, 0x78, 0xe0, 0xf6, 0x14, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetActivitySourceHost(HSTRING activitySourceHost) mut
			{
				return VT.SetActivitySourceHost(&this, activitySourceHost);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IUserActivitySourceHostInterop *self, HSTRING activitySourceHost) SetActivitySourceHost;
			}
		}
		[CRepr]
		public struct IUserActivityRequestManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xdd69f876, 0x9699, 0x4715, 0x90, 0x95, 0xe3, 0x7e, 0xa3, 0x0d, 0xfa, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND window, Guid* iid, void** value) mut
			{
				return VT.GetForWindow(&this, window, iid, value);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IUserActivityRequestManagerInterop *self, HWND window, Guid* iid, void** value) GetForWindow;
			}
		}
		[CRepr]
		public struct IUserConsentVerifierInterop : IInspectable
		{
			public const new Guid IID = .(0x39e050c3, 0x4e74, 0x441a, 0x8d, 0xc0, 0xb8, 0x11, 0x04, 0xdf, 0x94, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestVerificationForWindowAsync(HWND appWindow, HSTRING message, Guid* riid, void** asyncOperation) mut
			{
				return VT.RequestVerificationForWindowAsync(&this, appWindow, message, riid, asyncOperation);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IUserConsentVerifierInterop *self, HWND appWindow, HSTRING message, Guid* riid, void** asyncOperation) RequestVerificationForWindowAsync;
			}
		}
		[CRepr]
		public struct IWebAuthenticationCoreManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xf4b8e804, 0x811e, 0x4436, 0xb6, 0x9c, 0x44, 0xcb, 0x67, 0xb7, 0x20, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestTokenForWindowAsync(HWND appWindow, IInspectable* request, Guid* riid, void** asyncInfo) mut
			{
				return VT.RequestTokenForWindowAsync(&this, appWindow, request, riid, asyncInfo);
			}
			public HRESULT RequestTokenWithWebAccountForWindowAsync(HWND appWindow, IInspectable* request, IInspectable* webAccount, Guid* riid, void** asyncInfo) mut
			{
				return VT.RequestTokenWithWebAccountForWindowAsync(&this, appWindow, request, webAccount, riid, asyncInfo);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IWebAuthenticationCoreManagerInterop *self, HWND appWindow, IInspectable* request, Guid* riid, void** asyncInfo) RequestTokenForWindowAsync;
				public new function HRESULT(IWebAuthenticationCoreManagerInterop *self, HWND appWindow, IInspectable* request, IInspectable* webAccount, Guid* riid, void** asyncInfo) RequestTokenWithWebAccountForWindowAsync;
			}
		}
		[CRepr]
		public struct IRestrictedErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x82ba7092, 0x4c88, 0x427d, 0xa7, 0xbc, 0x16, 0xdd, 0x93, 0xfe, 0xb6, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetErrorDetails(BSTR* description, HRESULT* error, BSTR* restrictedDescription, BSTR* capabilitySid) mut
			{
				return VT.GetErrorDetails(&this, description, error, restrictedDescription, capabilitySid);
			}
			public HRESULT GetReference(BSTR* reference) mut
			{
				return VT.GetReference(&this, reference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRestrictedErrorInfo *self, BSTR* description, HRESULT* error, BSTR* restrictedDescription, BSTR* capabilitySid) GetErrorDetails;
				public new function HRESULT(IRestrictedErrorInfo *self, BSTR* reference) GetReference;
			}
		}
		[CRepr]
		public struct ILanguageExceptionErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x04a2dbf3, 0xdf83, 0x116c, 0x09, 0x46, 0x08, 0x12, 0xab, 0xf6, 0xe0, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguageException(IUnknown** languageException) mut
			{
				return VT.GetLanguageException(&this, languageException);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILanguageExceptionErrorInfo *self, IUnknown** languageException) GetLanguageException;
			}
		}
		[CRepr]
		public struct ILanguageExceptionTransform : IUnknown
		{
			public const new Guid IID = .(0xfeb5a271, 0xa6cd, 0x45ce, 0x88, 0x0a, 0x69, 0x67, 0x06, 0xba, 0xdc, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransformedRestrictedErrorInfo(IRestrictedErrorInfo** restrictedErrorInfo) mut
			{
				return VT.GetTransformedRestrictedErrorInfo(&this, restrictedErrorInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILanguageExceptionTransform *self, IRestrictedErrorInfo** restrictedErrorInfo) GetTransformedRestrictedErrorInfo;
			}
		}
		[CRepr]
		public struct ILanguageExceptionStackBackTrace : IUnknown
		{
			public const new Guid IID = .(0xcbe53fb5, 0xf967, 0x4258, 0x8d, 0x34, 0x42, 0xf5, 0xe2, 0x58, 0x33, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStackBackTrace(uint32 maxFramesToCapture, uint* stackBackTrace, uint32* framesCaptured) mut
			{
				return VT.GetStackBackTrace(&this, maxFramesToCapture, stackBackTrace, framesCaptured);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILanguageExceptionStackBackTrace *self, uint32 maxFramesToCapture, uint* stackBackTrace, uint32* framesCaptured) GetStackBackTrace;
			}
		}
		[CRepr]
		public struct ILanguageExceptionErrorInfo2 : ILanguageExceptionErrorInfo
		{
			public const new Guid IID = .(0x5746e5c4, 0x5b97, 0x424c, 0xb6, 0x20, 0x28, 0x22, 0x91, 0x57, 0x34, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPreviousLanguageExceptionErrorInfo(ILanguageExceptionErrorInfo2** previousLanguageExceptionErrorInfo) mut
			{
				return VT.GetPreviousLanguageExceptionErrorInfo(&this, previousLanguageExceptionErrorInfo);
			}
			public HRESULT CapturePropagationContext(IUnknown* languageException) mut
			{
				return VT.CapturePropagationContext(&this, languageException);
			}
			public HRESULT GetPropagationContextHead(ILanguageExceptionErrorInfo2** propagatedLanguageExceptionErrorInfoHead) mut
			{
				return VT.GetPropagationContextHead(&this, propagatedLanguageExceptionErrorInfoHead);
			}
			[CRepr]
			public struct VTable : ILanguageExceptionErrorInfo.VTable
			{
				public new function HRESULT(ILanguageExceptionErrorInfo2 *self, ILanguageExceptionErrorInfo2** previousLanguageExceptionErrorInfo) GetPreviousLanguageExceptionErrorInfo;
				public new function HRESULT(ILanguageExceptionErrorInfo2 *self, IUnknown* languageException) CapturePropagationContext;
				public new function HRESULT(ILanguageExceptionErrorInfo2 *self, ILanguageExceptionErrorInfo2** propagatedLanguageExceptionErrorInfoHead) GetPropagationContextHead;
			}
		}
		[CRepr]
		public struct IActivationFactory : IInspectable
		{
			public const new Guid IID = .(0x00000035, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateInstance(IInspectable** instance) mut
			{
				return VT.ActivateInstance(&this, instance);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IActivationFactory *self, IInspectable** instance) ActivateInstance;
			}
		}
		[CRepr]
		public struct IBufferByteAccess : IUnknown
		{
			public const new Guid IID = .(0x905a0fef, 0xbc53, 0x11df, 0x8c, 0x49, 0x00, 0x1e, 0x4f, 0xc6, 0x86, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Buffer(uint8** value) mut
			{
				return VT.Buffer(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBufferByteAccess *self, uint8** value) Buffer;
			}
		}
		[CRepr]
		public struct IRoSimpleMetaDataBuilder
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWinRtInterface(Guid iid) mut
			{
				return VT.SetWinRtInterface(&this, iid);
			}
			public HRESULT SetDelegate(Guid iid) mut
			{
				return VT.SetDelegate(&this, iid);
			}
			public HRESULT SetInterfaceGroupSimpleDefault(PWSTR name, PWSTR defaultInterfaceName, Guid* defaultInterfaceIID) mut
			{
				return VT.SetInterfaceGroupSimpleDefault(&this, name, defaultInterfaceName, defaultInterfaceIID);
			}
			public HRESULT SetInterfaceGroupParameterizedDefault(PWSTR name, uint32 elementCount, PWSTR* defaultInterfaceNameElements) mut
			{
				return VT.SetInterfaceGroupParameterizedDefault(&this, name, elementCount, defaultInterfaceNameElements);
			}
			public HRESULT SetRuntimeClassSimpleDefault(PWSTR name, PWSTR defaultInterfaceName, Guid* defaultInterfaceIID) mut
			{
				return VT.SetRuntimeClassSimpleDefault(&this, name, defaultInterfaceName, defaultInterfaceIID);
			}
			public HRESULT SetRuntimeClassParameterizedDefault(PWSTR name, uint32 elementCount, PWSTR* defaultInterfaceNameElements) mut
			{
				return VT.SetRuntimeClassParameterizedDefault(&this, name, elementCount, defaultInterfaceNameElements);
			}
			public HRESULT SetStruct(PWSTR name, uint32 numFields, PWSTR* fieldTypeNames) mut
			{
				return VT.SetStruct(&this, name, numFields, fieldTypeNames);
			}
			public HRESULT SetEnum(PWSTR name, PWSTR baseType) mut
			{
				return VT.SetEnum(&this, name, baseType);
			}
			public HRESULT SetParameterizedInterface(Guid piid, uint32 numArgs) mut
			{
				return VT.SetParameterizedInterface(&this, piid, numArgs);
			}
			public HRESULT SetParameterizedDelegate(Guid piid, uint32 numArgs) mut
			{
				return VT.SetParameterizedDelegate(&this, piid, numArgs);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, Guid iid) SetWinRtInterface;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, Guid iid) SetDelegate;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, PWSTR defaultInterfaceName, Guid* defaultInterfaceIID) SetInterfaceGroupSimpleDefault;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, uint32 elementCount, PWSTR* defaultInterfaceNameElements) SetInterfaceGroupParameterizedDefault;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, PWSTR defaultInterfaceName, Guid* defaultInterfaceIID) SetRuntimeClassSimpleDefault;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, uint32 elementCount, PWSTR* defaultInterfaceNameElements) SetRuntimeClassParameterizedDefault;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, uint32 numFields, PWSTR* fieldTypeNames) SetStruct;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, PWSTR name, PWSTR baseType) SetEnum;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, Guid piid, uint32 numArgs) SetParameterizedInterface;
				public new function HRESULT(IRoSimpleMetaDataBuilder *self, Guid piid, uint32 numArgs) SetParameterizedDelegate;
			}
		}
		[CRepr]
		public struct IRoMetaDataLocator
		{
			protected VTable* vt;
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Locate(PWSTR nameElement, IRoSimpleMetaDataBuilder* metaDataDestination) mut
			{
				return VT.Locate(&this, nameElement, metaDataDestination);
			}
			[CRepr]
			public struct VTable
			{
				public new function HRESULT(IRoMetaDataLocator *self, PWSTR nameElement, IRoSimpleMetaDataBuilder* metaDataDestination) Locate;
			}
		}
		[CRepr]
		public struct IMemoryBufferByteAccess : IUnknown
		{
			public const new Guid IID = .(0x5b0d3235, 0x4dba, 0x4d44, 0x86, 0x5e, 0x8f, 0x1d, 0x0e, 0x4f, 0xd0, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint8** value, uint32* capacity) mut
			{
				return VT.GetBuffer(&this, value, capacity);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMemoryBufferByteAccess *self, uint8** value, uint32* capacity) GetBuffer;
			}
		}
		[CRepr]
		public struct IWeakReference : IUnknown
		{
			public const new Guid IID = .(0x00000037, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resolve(Guid* riid, void** objectReference) mut
			{
				return VT.Resolve(&this, riid, objectReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWeakReference *self, Guid* riid, void** objectReference) Resolve;
			}
		}
		[CRepr]
		public struct IWeakReferenceSource : IUnknown
		{
			public const new Guid IID = .(0x00000038, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWeakReference(IWeakReference** weakReference) mut
			{
				return VT.GetWeakReference(&this, weakReference);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWeakReferenceSource *self, IWeakReference** weakReference) GetWeakReference;
			}
		}
		[CRepr]
		public struct ISystemMediaTransportControlsInterop : IInspectable
		{
			public const new Guid IID = .(0xddb0472d, 0xc911, 0x4a1f, 0x86, 0xd9, 0xdc, 0x3d, 0x71, 0xa9, 0x5f, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** mediaTransportControl) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, mediaTransportControl);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(ISystemMediaTransportControlsInterop *self, HWND appWindow, Guid* riid, void** mediaTransportControl) GetForWindow;
			}
		}
		[CRepr]
		public struct IShareWindowCommandEventArgsInterop : IUnknown
		{
			public const new Guid IID = .(0x6571a721, 0x643d, 0x43d4, 0xac, 0xa4, 0x6b, 0x6f, 0x5f, 0x30, 0xf1, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWindow(HWND* value) mut
			{
				return VT.GetWindow(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShareWindowCommandEventArgsInterop *self, HWND* value) GetWindow;
			}
		}
		[CRepr]
		public struct IShareWindowCommandSourceInterop : IUnknown
		{
			public const new Guid IID = .(0x461a191f, 0x8424, 0x43a6, 0xa0, 0xfa, 0x34, 0x51, 0xa2, 0x2f, 0x56, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** shareWindowCommandSource) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, shareWindowCommandSource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShareWindowCommandSourceInterop *self, HWND appWindow, Guid* riid, void** shareWindowCommandSource) GetForWindow;
			}
		}
		[CRepr]
		public struct IMessageDispatcher : IInspectable
		{
			public const new Guid IID = .(0xf5f84c8f, 0xcfd0, 0x4cd6, 0xb6, 0x6b, 0xc5, 0xd2, 0x6f, 0xf1, 0x68, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PumpMessages() mut
			{
				return VT.PumpMessages(&this);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(IMessageDispatcher *self) PumpMessages;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDecodeProxy(uint32 dwClientPid, uint64 ui64ProxyAddress, ServerInformation* pServerInformation);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetAgileReference(AgileReferenceOptions options, Guid* riid, IUnknown* pUnk, IAgileReference** ppAgileReference);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize(uint32* param0, uint32 param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree(uint32* param0, HSTRING* param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize64(uint32* param0, uint32 param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal64(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal64(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree64(uint32* param0, HSTRING* param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCreateString(char16* sourceString, uint32 length, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCreateStringReference(PWSTR sourceString, uint32 length, HSTRING_HEADER* hstringHeader, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDeleteString(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDuplicateString(HSTRING string, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WindowsGetStringLen(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR WindowsGetStringRawBuffer(HSTRING string, uint32* length);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WindowsIsStringEmpty(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsStringHasEmbeddedNull(HSTRING string, BOOL* hasEmbedNull);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCompareStringOrdinal(HSTRING string1, HSTRING string2, int32* result);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsSubstring(HSTRING string, uint32 startIndex, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsSubstringWithSpecifiedLength(HSTRING string, uint32 startIndex, uint32 length, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsConcatString(HSTRING string1, HSTRING string2, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsReplaceString(HSTRING string, HSTRING stringReplaced, HSTRING stringReplaceWith, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsTrimStringStart(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsTrimStringEnd(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsPreallocateStringBuffer(uint32 length, uint16** charBuffer, HSTRING_BUFFER* bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsPromoteStringBuffer(HSTRING_BUFFER bufferHandle, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDeleteStringBuffer(HSTRING_BUFFER bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsInspectString(uint targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK callback, void* context, uint32* length, uint* targetStringAddress);
		[Import("api-ms-win-core-winrt-string-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsInspectString2(uint64 targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK2 callback, void* context, uint32* length, uint64* targetStringAddress);
		[Import("coremessaging.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDispatcherQueueController(DispatcherQueueOptions options, void* dispatcherQueueController);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInitialize(RO_INIT_TYPE initType);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoUninitialize();
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoActivateInstance(HSTRING activatableClassId, IInspectable** instance);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoRegisterActivationFactories(HSTRING* activatableClassIds, int* activationFactoryCallbacks, uint32 count, int* cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoRevokeActivationFactories(int cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetActivationFactory(HSTRING activatableClassId, Guid* iid, void** factory);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoRegisterForApartmentShutdown(IApartmentShutdown* callbackObject, uint64* apartmentIdentifier, APARTMENT_SHUTDOWN_REGISTRATION_COOKIE* regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoUnregisterForApartmentShutdown(APARTMENT_SHUTDOWN_REGISTRATION_COOKIE regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetApartmentIdentifier(uint64* apartmentIdentifier);
		[Import("api-ms-win-core-winrt-robuffer-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetBufferMarshaler(IMarshal** bufferMarshaler);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetErrorReportingFlags(uint32* pflags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoSetErrorReportingFlags(uint32 flags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoResolveRestrictedErrorInfoReference(PWSTR reference, IRestrictedErrorInfo** ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetRestrictedErrorInfo(IRestrictedErrorInfo* pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRestrictedErrorInfo(IRestrictedErrorInfo** ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateErrorW(HRESULT error, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateError(HRESULT error, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoTransformErrorW(HRESULT oldError, HRESULT newError, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoTransformError(HRESULT oldError, HRESULT newError, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoCaptureErrorContext(HRESULT hr);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFailFastWithErrorContext(HRESULT hrError);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateLanguageException(HRESULT error, HSTRING message, IUnknown* languageException);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoClearError();
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoReportUnhandledError(IRestrictedErrorInfo* pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInspectThreadErrorInfo(uint targetTebAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, uint* targetErrorInfoAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInspectCapturedStackBackTrace(uint targetErrorInfoAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, uint32* frameCount, uint* targetBackTraceAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetMatchingRestrictedErrorInfo(HRESULT hrIn, IRestrictedErrorInfo** ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoReportFailedDelegate(IUnknown* punkDelegate, IRestrictedErrorInfo* pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsErrorPropagationEnabled();
		[Import("rometadata.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MetaDataGetDispenser(Guid* rclsid, Guid* riid, void** ppv);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetParameterizedTypeInstanceIID(uint32 nameElementCount, PWSTR* nameElements, IRoMetaDataLocator* metaDataLocator, Guid* iid, ROPARAMIIDHANDLE* pExtra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFreeParameterizedTypeExtra(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR RoParameterizedTypeExtraGetTypeSignature(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-registration-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetServerActivatableClasses(HSTRING serverName, HSTRING** activatableClassIds, uint32* count);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRandomAccessStreamOnFile(PWSTR filePath, uint32 accessMode, Guid* riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRandomAccessStreamOverStream(IStream* stream, BSOS_OPTIONS options, Guid* riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStreamOverRandomAccessStream(IUnknown* randomAccessStream, Guid* riid, void** ppv);
		
	}
}
