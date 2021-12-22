using System;

// namespace Security.Authentication.Identity.Provider
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid OID_OAssociatedIdentityProviderObject = .(0x98c5a3dd, 0xdb68, 0x4f1a, 0x8d, 0x2b, 0x90, 0x79, 0xcd, 0xfe, 0xaf, 0x61);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum IDENTITY_TYPE : int32
		{
			ALL = 0,
			ME_ONLY = 1,
		}
		[AllowDuplicates]
		public enum IdentityUpdateEvent : uint32
		{
			ASSOCIATED = 1,
			DISASSOCIATED = 2,
			CREATED = 4,
			IMPORTED = 8,
			DELETED = 16,
			PROPCHANGED = 32,
			CONNECTED = 64,
			DISCONNECTED = 128,
		}
		[AllowDuplicates]
		public enum IDENTITY_URL : int32
		{
			CREATE_ACCOUNT_WIZARD = 0,
			SIGN_IN_WIZARD = 1,
			CHANGE_PASSWORD_WIZARD = 2,
			IFEXISTS_WIZARD = 3,
			ACCOUNT_SETTINGS = 4,
			RESTORE_WIZARD = 5,
			CONNECT_WIZARD = 6,
		}
		[AllowDuplicates]
		public enum ACCOUNT_STATE : int32
		{
			NOT_CONNECTED = 0,
			CONNECTING = 1,
			CONNECT_COMPLETED = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CoClassIdentityStore = .(0x30d49246, 0xd217, 0x465f, 0xb0, 0x0b, 0xac, 0x9d, 0xdd, 0x65, 0x2e, 0xb7);
		public const Guid CLSID_CIdentityProfileHandler = .(0xecf5bf46, 0xe3b6, 0x449a, 0xb5, 0x6b, 0x43, 0xf5, 0x8f, 0x86, 0x78, 0x14);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IIdentityAdvise : IUnknown
		{
			public const new Guid IID = .(0x4e982fed, 0xd14b, 0x440c, 0xb8, 0xd6, 0xbb, 0x38, 0x64, 0x53, 0xd3, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IdentityUpdated(IdentityUpdateEvent dwIdentityUpdateEvents, PWSTR lpszUniqueID) mut
			{
				return VT.IdentityUpdated(&this, dwIdentityUpdateEvents, lpszUniqueID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIdentityAdvise *self, IdentityUpdateEvent dwIdentityUpdateEvents, PWSTR lpszUniqueID) IdentityUpdated;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAdvise : IUnknown
		{
			public const new Guid IID = .(0x3ab4c8da, 0xd038, 0x4830, 0x8d, 0xd9, 0x32, 0x53, 0xc5, 0x5a, 0x12, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_IdentityUpdated(uint32 dwIdentityUpdateEvents, PWSTR lpszUniqueID) mut
			{
				return VT.Begin_IdentityUpdated(&this, dwIdentityUpdateEvents, lpszUniqueID);
			}
			public HRESULT Finish_IdentityUpdated() mut
			{
				return VT.Finish_IdentityUpdated(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIIdentityAdvise *self, uint32 dwIdentityUpdateEvents, PWSTR lpszUniqueID) Begin_IdentityUpdated;
				public new function HRESULT(AsyncIIdentityAdvise *self) Finish_IdentityUpdated;
			}
		}
		[CRepr]
		public struct IIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x0d1b9e0c, 0xe8ba, 0x4f55, 0xa8, 0x1b, 0xbc, 0xe9, 0x34, 0xb9, 0x48, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentityEnum(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) mut
			{
				return VT.GetIdentityEnum(&this, eIdentityType, pFilterkey, pFilterPropVarValue, ppIdentityEnum);
			}
			public HRESULT Create(PWSTR lpszUserName, IPropertyStore** ppPropertyStore, PROPVARIANT* pKeywordsToAdd) mut
			{
				return VT.Create(&this, lpszUserName, ppPropertyStore, pKeywordsToAdd);
			}
			public HRESULT Import(IPropertyStore* pPropertyStore) mut
			{
				return VT.Import(&this, pPropertyStore);
			}
			public HRESULT Delete(PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) mut
			{
				return VT.Delete(&this, lpszUniqueID, pKeywordsToDelete);
			}
			public HRESULT FindByUniqueID(PWSTR lpszUniqueID, IPropertyStore** ppPropertyStore) mut
			{
				return VT.FindByUniqueID(&this, lpszUniqueID, ppPropertyStore);
			}
			public HRESULT GetProviderPropertyStore(IPropertyStore** ppPropertyStore) mut
			{
				return VT.GetProviderPropertyStore(&this, ppPropertyStore);
			}
			public HRESULT Advise(IIdentityAdvise* pIdentityAdvise, IdentityUpdateEvent dwIdentityUpdateEvents, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pIdentityAdvise, dwIdentityUpdateEvents, pdwCookie);
			}
			public HRESULT UnAdvise(uint32 dwCookie) mut
			{
				return VT.UnAdvise(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIdentityProvider *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) GetIdentityEnum;
				public new function HRESULT(IIdentityProvider *self, PWSTR lpszUserName, IPropertyStore** ppPropertyStore, PROPVARIANT* pKeywordsToAdd) Create;
				public new function HRESULT(IIdentityProvider *self, IPropertyStore* pPropertyStore) Import;
				public new function HRESULT(IIdentityProvider *self, PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) Delete;
				public new function HRESULT(IIdentityProvider *self, PWSTR lpszUniqueID, IPropertyStore** ppPropertyStore) FindByUniqueID;
				public new function HRESULT(IIdentityProvider *self, IPropertyStore** ppPropertyStore) GetProviderPropertyStore;
				public new function HRESULT(IIdentityProvider *self, IIdentityAdvise* pIdentityAdvise, IdentityUpdateEvent dwIdentityUpdateEvents, uint32* pdwCookie) Advise;
				public new function HRESULT(IIdentityProvider *self, uint32 dwCookie) UnAdvise;
			}
		}
		[CRepr]
		public struct AsyncIIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xc6fc9901, 0xc433, 0x4646, 0x8f, 0x48, 0x4e, 0x46, 0x87, 0xaa, 0xe2, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetIdentityEnum(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) mut
			{
				return VT.Begin_GetIdentityEnum(&this, eIdentityType, pFilterkey, pFilterPropVarValue);
			}
			public HRESULT Finish_GetIdentityEnum(IEnumUnknown** ppIdentityEnum) mut
			{
				return VT.Finish_GetIdentityEnum(&this, ppIdentityEnum);
			}
			public HRESULT Begin_Create(PWSTR lpszUserName, PROPVARIANT* pKeywordsToAdd) mut
			{
				return VT.Begin_Create(&this, lpszUserName, pKeywordsToAdd);
			}
			public HRESULT Finish_Create(IPropertyStore** ppPropertyStore) mut
			{
				return VT.Finish_Create(&this, ppPropertyStore);
			}
			public HRESULT Begin_Import(IPropertyStore* pPropertyStore) mut
			{
				return VT.Begin_Import(&this, pPropertyStore);
			}
			public HRESULT Finish_Import() mut
			{
				return VT.Finish_Import(&this);
			}
			public HRESULT Begin_Delete(PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) mut
			{
				return VT.Begin_Delete(&this, lpszUniqueID, pKeywordsToDelete);
			}
			public HRESULT Finish_Delete() mut
			{
				return VT.Finish_Delete(&this);
			}
			public HRESULT Begin_FindByUniqueID(PWSTR lpszUniqueID) mut
			{
				return VT.Begin_FindByUniqueID(&this, lpszUniqueID);
			}
			public HRESULT Finish_FindByUniqueID(IPropertyStore** ppPropertyStore) mut
			{
				return VT.Finish_FindByUniqueID(&this, ppPropertyStore);
			}
			public HRESULT Begin_GetProviderPropertyStore() mut
			{
				return VT.Begin_GetProviderPropertyStore(&this);
			}
			public HRESULT Finish_GetProviderPropertyStore(IPropertyStore** ppPropertyStore) mut
			{
				return VT.Finish_GetProviderPropertyStore(&this, ppPropertyStore);
			}
			public HRESULT Begin_Advise(IIdentityAdvise* pIdentityAdvise, uint32 dwIdentityUpdateEvents) mut
			{
				return VT.Begin_Advise(&this, pIdentityAdvise, dwIdentityUpdateEvents);
			}
			public HRESULT Finish_Advise(uint32* pdwCookie) mut
			{
				return VT.Finish_Advise(&this, pdwCookie);
			}
			public HRESULT Begin_UnAdvise(uint32 dwCookie) mut
			{
				return VT.Begin_UnAdvise(&this, dwCookie);
			}
			public HRESULT Finish_UnAdvise() mut
			{
				return VT.Finish_UnAdvise(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIIdentityProvider *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_GetIdentityEnum;
				public new function HRESULT(AsyncIIdentityProvider *self, IEnumUnknown** ppIdentityEnum) Finish_GetIdentityEnum;
				public new function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUserName, PROPVARIANT* pKeywordsToAdd) Begin_Create;
				public new function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_Create;
				public new function HRESULT(AsyncIIdentityProvider *self, IPropertyStore* pPropertyStore) Begin_Import;
				public new function HRESULT(AsyncIIdentityProvider *self) Finish_Import;
				public new function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) Begin_Delete;
				public new function HRESULT(AsyncIIdentityProvider *self) Finish_Delete;
				public new function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUniqueID) Begin_FindByUniqueID;
				public new function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_FindByUniqueID;
				public new function HRESULT(AsyncIIdentityProvider *self) Begin_GetProviderPropertyStore;
				public new function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_GetProviderPropertyStore;
				public new function HRESULT(AsyncIIdentityProvider *self, IIdentityAdvise* pIdentityAdvise, uint32 dwIdentityUpdateEvents) Begin_Advise;
				public new function HRESULT(AsyncIIdentityProvider *self, uint32* pdwCookie) Finish_Advise;
				public new function HRESULT(AsyncIIdentityProvider *self, uint32 dwCookie) Begin_UnAdvise;
				public new function HRESULT(AsyncIIdentityProvider *self) Finish_UnAdvise;
			}
		}
		[CRepr]
		public struct IAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2af066b3, 0x4cbb, 0x4cba, 0xa7, 0x98, 0x20, 0x4b, 0x6a, 0xf6, 0x8c, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssociateIdentity(HWND hwndParent, IPropertyStore** ppPropertyStore) mut
			{
				return VT.AssociateIdentity(&this, hwndParent, ppPropertyStore);
			}
			public HRESULT DisassociateIdentity(HWND hwndParent, PWSTR lpszUniqueID) mut
			{
				return VT.DisassociateIdentity(&this, hwndParent, lpszUniqueID);
			}
			public HRESULT ChangeCredential(HWND hwndParent, PWSTR lpszUniqueID) mut
			{
				return VT.ChangeCredential(&this, hwndParent, lpszUniqueID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, IPropertyStore** ppPropertyStore) AssociateIdentity;
				public new function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) DisassociateIdentity;
				public new function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) ChangeCredential;
			}
		}
		[CRepr]
		public struct AsyncIAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2834d6ed, 0x297e, 0x4e72, 0x8a, 0x51, 0x96, 0x1e, 0x86, 0xf0, 0x51, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_AssociateIdentity(HWND hwndParent) mut
			{
				return VT.Begin_AssociateIdentity(&this, hwndParent);
			}
			public HRESULT Finish_AssociateIdentity(IPropertyStore** ppPropertyStore) mut
			{
				return VT.Finish_AssociateIdentity(&this, ppPropertyStore);
			}
			public HRESULT Begin_DisassociateIdentity(HWND hwndParent, PWSTR lpszUniqueID) mut
			{
				return VT.Begin_DisassociateIdentity(&this, hwndParent, lpszUniqueID);
			}
			public HRESULT Finish_DisassociateIdentity() mut
			{
				return VT.Finish_DisassociateIdentity(&this);
			}
			public HRESULT Begin_ChangeCredential(HWND hwndParent, PWSTR lpszUniqueID) mut
			{
				return VT.Begin_ChangeCredential(&this, hwndParent, lpszUniqueID);
			}
			public HRESULT Finish_ChangeCredential() mut
			{
				return VT.Finish_ChangeCredential(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent) Begin_AssociateIdentity;
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_AssociateIdentity;
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) Begin_DisassociateIdentity;
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self) Finish_DisassociateIdentity;
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) Begin_ChangeCredential;
				public new function HRESULT(AsyncIAssociatedIdentityProvider *self) Finish_ChangeCredential;
			}
		}
		[CRepr]
		public struct IConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xb7417b54, 0xe08c, 0x429b, 0x96, 0xc8, 0x67, 0x8d, 0x13, 0x69, 0xec, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectIdentity(uint8* AuthBuffer, uint32 AuthBufferSize) mut
			{
				return VT.ConnectIdentity(&this, AuthBuffer, AuthBufferSize);
			}
			public HRESULT DisconnectIdentity() mut
			{
				return VT.DisconnectIdentity(&this);
			}
			public HRESULT IsConnected(BOOL* Connected) mut
			{
				return VT.IsConnected(&this, Connected);
			}
			public HRESULT GetUrl(IDENTITY_URL Identifier, IBindCtx* Context, VARIANT* PostData, PWSTR* Url) mut
			{
				return VT.GetUrl(&this, Identifier, Context, PostData, Url);
			}
			public HRESULT GetAccountState(ACCOUNT_STATE* pState) mut
			{
				return VT.GetAccountState(&this, pState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConnectedIdentityProvider *self, uint8* AuthBuffer, uint32 AuthBufferSize) ConnectIdentity;
				public new function HRESULT(IConnectedIdentityProvider *self) DisconnectIdentity;
				public new function HRESULT(IConnectedIdentityProvider *self, BOOL* Connected) IsConnected;
				public new function HRESULT(IConnectedIdentityProvider *self, IDENTITY_URL Identifier, IBindCtx* Context, VARIANT* PostData, PWSTR* Url) GetUrl;
				public new function HRESULT(IConnectedIdentityProvider *self, ACCOUNT_STATE* pState) GetAccountState;
			}
		}
		[CRepr]
		public struct AsyncIConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x9ce55141, 0xbce9, 0x4e15, 0x82, 0x4d, 0x43, 0xd7, 0x9f, 0x51, 0x2f, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_ConnectIdentity(uint8* AuthBuffer, uint32 AuthBufferSize) mut
			{
				return VT.Begin_ConnectIdentity(&this, AuthBuffer, AuthBufferSize);
			}
			public HRESULT Finish_ConnectIdentity() mut
			{
				return VT.Finish_ConnectIdentity(&this);
			}
			public HRESULT Begin_DisconnectIdentity() mut
			{
				return VT.Begin_DisconnectIdentity(&this);
			}
			public HRESULT Finish_DisconnectIdentity() mut
			{
				return VT.Finish_DisconnectIdentity(&this);
			}
			public HRESULT Begin_IsConnected() mut
			{
				return VT.Begin_IsConnected(&this);
			}
			public HRESULT Finish_IsConnected(BOOL* Connected) mut
			{
				return VT.Finish_IsConnected(&this, Connected);
			}
			public HRESULT Begin_GetUrl(IDENTITY_URL Identifier, IBindCtx* Context) mut
			{
				return VT.Begin_GetUrl(&this, Identifier, Context);
			}
			public HRESULT Finish_GetUrl(VARIANT* PostData, PWSTR* Url) mut
			{
				return VT.Finish_GetUrl(&this, PostData, Url);
			}
			public HRESULT Begin_GetAccountState() mut
			{
				return VT.Begin_GetAccountState(&this);
			}
			public HRESULT Finish_GetAccountState(ACCOUNT_STATE* pState) mut
			{
				return VT.Finish_GetAccountState(&this, pState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIConnectedIdentityProvider *self, uint8* AuthBuffer, uint32 AuthBufferSize) Begin_ConnectIdentity;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self) Finish_ConnectIdentity;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_DisconnectIdentity;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self) Finish_DisconnectIdentity;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_IsConnected;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self, BOOL* Connected) Finish_IsConnected;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self, IDENTITY_URL Identifier, IBindCtx* Context) Begin_GetUrl;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self, VARIANT* PostData, PWSTR* Url) Finish_GetUrl;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_GetAccountState;
				public new function HRESULT(AsyncIConnectedIdentityProvider *self, ACCOUNT_STATE* pState) Finish_GetAccountState;
			}
		}
		[CRepr]
		public struct IIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0x5e7ef254, 0x979f, 0x43b5, 0xb7, 0x4e, 0x06, 0xe4, 0xeb, 0x7d, 0xf0, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength) mut
			{
				return VT.SetIdentityCredential(&this, CredBuffer, CredBufferLength);
			}
			public HRESULT ValidateIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) mut
			{
				return VT.ValidateIdentityCredential(&this, CredBuffer, CredBufferLength, ppIdentityProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength) SetIdentityCredential;
				public new function HRESULT(IIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0xf9a2f918, 0xfeca, 0x4e9c, 0x96, 0x33, 0x61, 0xcb, 0xf1, 0x3e, 0xd3, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_SetIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength) mut
			{
				return VT.Begin_SetIdentityCredential(&this, CredBuffer, CredBufferLength);
			}
			public HRESULT Finish_SetIdentityCredential() mut
			{
				return VT.Finish_SetIdentityCredential(&this);
			}
			public HRESULT Begin_ValidateIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) mut
			{
				return VT.Begin_ValidateIdentityCredential(&this, CredBuffer, CredBufferLength, ppIdentityProperties);
			}
			public HRESULT Finish_ValidateIdentityCredential(IPropertyStore** ppIdentityProperties) mut
			{
				return VT.Finish_ValidateIdentityCredential(&this, ppIdentityProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength) Begin_SetIdentityCredential;
				public new function HRESULT(AsyncIIdentityAuthentication *self) Finish_SetIdentityCredential;
				public new function HRESULT(AsyncIIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) Begin_ValidateIdentityCredential;
				public new function HRESULT(AsyncIIdentityAuthentication *self, IPropertyStore** ppIdentityProperties) Finish_ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct IIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xdf586fa5, 0x6f35, 0x44f1, 0xb2, 0x09, 0xb3, 0x8e, 0x16, 0x97, 0x72, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pdwProviders) mut
			{
				return VT.GetCount(&this, pdwProviders);
			}
			public HRESULT GetAt(uint32 dwProvider, Guid* pProvGuid, IUnknown** ppIdentityProvider) mut
			{
				return VT.GetAt(&this, dwProvider, pProvGuid, ppIdentityProvider);
			}
			public HRESULT AddToCache(PWSTR lpszUniqueID, Guid* ProviderGUID) mut
			{
				return VT.AddToCache(&this, lpszUniqueID, ProviderGUID);
			}
			public HRESULT ConvertToSid(PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid, uint16* pcbRequiredSid) mut
			{
				return VT.ConvertToSid(&this, lpszUniqueID, ProviderGUID, cbSid, pSid, pcbRequiredSid);
			}
			public HRESULT EnumerateIdentities(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) mut
			{
				return VT.EnumerateIdentities(&this, eIdentityType, pFilterkey, pFilterPropVarValue, ppIdentityEnum);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIdentityStore *self, uint32* pdwProviders) GetCount;
				public new function HRESULT(IIdentityStore *self, uint32 dwProvider, Guid* pProvGuid, IUnknown** ppIdentityProvider) GetAt;
				public new function HRESULT(IIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID) AddToCache;
				public new function HRESULT(IIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid, uint16* pcbRequiredSid) ConvertToSid;
				public new function HRESULT(IIdentityStore *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) EnumerateIdentities;
				public new function HRESULT(IIdentityStore *self) Reset;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xeefa1616, 0x48de, 0x4872, 0xaa, 0x64, 0x6e, 0x62, 0x06, 0x53, 0x5a, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetCount() mut
			{
				return VT.Begin_GetCount(&this);
			}
			public HRESULT Finish_GetCount(uint32* pdwProviders) mut
			{
				return VT.Finish_GetCount(&this, pdwProviders);
			}
			public HRESULT Begin_GetAt(uint32 dwProvider, Guid* pProvGuid) mut
			{
				return VT.Begin_GetAt(&this, dwProvider, pProvGuid);
			}
			public HRESULT Finish_GetAt(Guid* pProvGuid, IUnknown** ppIdentityProvider) mut
			{
				return VT.Finish_GetAt(&this, pProvGuid, ppIdentityProvider);
			}
			public HRESULT Begin_AddToCache(PWSTR lpszUniqueID, Guid* ProviderGUID) mut
			{
				return VT.Begin_AddToCache(&this, lpszUniqueID, ProviderGUID);
			}
			public HRESULT Finish_AddToCache() mut
			{
				return VT.Finish_AddToCache(&this);
			}
			public HRESULT Begin_ConvertToSid(PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid) mut
			{
				return VT.Begin_ConvertToSid(&this, lpszUniqueID, ProviderGUID, cbSid, pSid);
			}
			public HRESULT Finish_ConvertToSid(uint8* pSid, uint16* pcbRequiredSid) mut
			{
				return VT.Finish_ConvertToSid(&this, pSid, pcbRequiredSid);
			}
			public HRESULT Begin_EnumerateIdentities(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) mut
			{
				return VT.Begin_EnumerateIdentities(&this, eIdentityType, pFilterkey, pFilterPropVarValue);
			}
			public HRESULT Finish_EnumerateIdentities(IEnumUnknown** ppIdentityEnum) mut
			{
				return VT.Finish_EnumerateIdentities(&this, ppIdentityEnum);
			}
			public HRESULT Begin_Reset() mut
			{
				return VT.Begin_Reset(&this);
			}
			public HRESULT Finish_Reset() mut
			{
				return VT.Finish_Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIIdentityStore *self) Begin_GetCount;
				public new function HRESULT(AsyncIIdentityStore *self, uint32* pdwProviders) Finish_GetCount;
				public new function HRESULT(AsyncIIdentityStore *self, uint32 dwProvider, Guid* pProvGuid) Begin_GetAt;
				public new function HRESULT(AsyncIIdentityStore *self, Guid* pProvGuid, IUnknown** ppIdentityProvider) Finish_GetAt;
				public new function HRESULT(AsyncIIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID) Begin_AddToCache;
				public new function HRESULT(AsyncIIdentityStore *self) Finish_AddToCache;
				public new function HRESULT(AsyncIIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid) Begin_ConvertToSid;
				public new function HRESULT(AsyncIIdentityStore *self, uint8* pSid, uint16* pcbRequiredSid) Finish_ConvertToSid;
				public new function HRESULT(AsyncIIdentityStore *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_EnumerateIdentities;
				public new function HRESULT(AsyncIIdentityStore *self, IEnumUnknown** ppIdentityEnum) Finish_EnumerateIdentities;
				public new function HRESULT(AsyncIIdentityStore *self) Begin_Reset;
				public new function HRESULT(AsyncIIdentityStore *self) Finish_Reset;
			}
		}
		[CRepr]
		public struct IIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xf9f9eb98, 0x8f7f, 0x4e38, 0x95, 0x77, 0x69, 0x80, 0x11, 0x4c, 0xe3, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateConnectedIdentity(PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) mut
			{
				return VT.CreateConnectedIdentity(&this, LocalName, ConnectedName, ProviderGUID);
			}
			public HRESULT DeleteConnectedIdentity(PWSTR ConnectedName, Guid* ProviderGUID) mut
			{
				return VT.DeleteConnectedIdentity(&this, ConnectedName, ProviderGUID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIdentityStoreEx *self, PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) CreateConnectedIdentity;
				public new function HRESULT(IIdentityStoreEx *self, PWSTR ConnectedName, Guid* ProviderGUID) DeleteConnectedIdentity;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xfca3af9a, 0x8a07, 0x4eae, 0x86, 0x32, 0xec, 0x3d, 0xe6, 0x58, 0xa3, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_CreateConnectedIdentity(PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) mut
			{
				return VT.Begin_CreateConnectedIdentity(&this, LocalName, ConnectedName, ProviderGUID);
			}
			public HRESULT Finish_CreateConnectedIdentity() mut
			{
				return VT.Finish_CreateConnectedIdentity(&this);
			}
			public HRESULT Begin_DeleteConnectedIdentity(PWSTR ConnectedName, Guid* ProviderGUID) mut
			{
				return VT.Begin_DeleteConnectedIdentity(&this, ConnectedName, ProviderGUID);
			}
			public HRESULT Finish_DeleteConnectedIdentity() mut
			{
				return VT.Finish_DeleteConnectedIdentity(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(AsyncIIdentityStoreEx *self, PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) Begin_CreateConnectedIdentity;
				public new function HRESULT(AsyncIIdentityStoreEx *self) Finish_CreateConnectedIdentity;
				public new function HRESULT(AsyncIIdentityStoreEx *self, PWSTR ConnectedName, Guid* ProviderGUID) Begin_DeleteConnectedIdentity;
				public new function HRESULT(AsyncIIdentityStoreEx *self) Finish_DeleteConnectedIdentity;
			}
		}
		
	}
}
