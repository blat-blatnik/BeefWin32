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
			IDENTITIES_ALL = 0,
			IDENTITIES_ME_ONLY = 1,
		}
		[AllowDuplicates]
		public enum IdentityUpdateEvent : uint32
		{
			IDENTITY_ASSOCIATED = 1,
			IDENTITY_DISASSOCIATED = 2,
			IDENTITY_CREATED = 4,
			IDENTITY_IMPORTED = 8,
			IDENTITY_DELETED = 16,
			IDENTITY_PROPCHANGED = 32,
			IDENTITY_CONNECTED = 64,
			IDENTITY_DISCONNECTED = 128,
		}
		[AllowDuplicates]
		public enum IDENTITY_URL : int32
		{
			IDENTITY_URL_CREATE_ACCOUNT_WIZARD = 0,
			IDENTITY_URL_SIGN_IN_WIZARD = 1,
			IDENTITY_URL_CHANGE_PASSWORD_WIZARD = 2,
			IDENTITY_URL_IFEXISTS_WIZARD = 3,
			IDENTITY_URL_ACCOUNT_SETTINGS = 4,
			IDENTITY_URL_RESTORE_WIZARD = 5,
			IDENTITY_URL_CONNECT_WIZARD = 6,
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
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIdentityAdvise *self, IdentityUpdateEvent dwIdentityUpdateEvents, PWSTR lpszUniqueID) IdentityUpdated;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAdvise : IUnknown
		{
			public const new Guid IID = .(0x3ab4c8da, 0xd038, 0x4830, 0x8d, 0xd9, 0x32, 0x53, 0xc5, 0x5a, 0x12, 0x7f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIIdentityAdvise *self, uint32 dwIdentityUpdateEvents, PWSTR lpszUniqueID) Begin_IdentityUpdated;
				public function HRESULT(AsyncIIdentityAdvise *self) Finish_IdentityUpdated;
			}
		}
		[CRepr]
		public struct IIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x0d1b9e0c, 0xe8ba, 0x4f55, 0xa8, 0x1b, 0xbc, 0xe9, 0x34, 0xb9, 0x48, 0xf5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIdentityProvider *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) GetIdentityEnum;
				public function HRESULT(IIdentityProvider *self, PWSTR lpszUserName, IPropertyStore** ppPropertyStore, PROPVARIANT* pKeywordsToAdd) Create;
				public function HRESULT(IIdentityProvider *self, IPropertyStore* pPropertyStore) Import;
				public function HRESULT(IIdentityProvider *self, PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) Delete;
				public function HRESULT(IIdentityProvider *self, PWSTR lpszUniqueID, IPropertyStore** ppPropertyStore) FindByUniqueID;
				public function HRESULT(IIdentityProvider *self, IPropertyStore** ppPropertyStore) GetProviderPropertyStore;
				public function HRESULT(IIdentityProvider *self, IIdentityAdvise* pIdentityAdvise, IdentityUpdateEvent dwIdentityUpdateEvents, uint32* pdwCookie) Advise;
				public function HRESULT(IIdentityProvider *self, uint32 dwCookie) UnAdvise;
			}
		}
		[CRepr]
		public struct AsyncIIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xc6fc9901, 0xc433, 0x4646, 0x8f, 0x48, 0x4e, 0x46, 0x87, 0xaa, 0xe2, 0xa0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIIdentityProvider *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_GetIdentityEnum;
				public function HRESULT(AsyncIIdentityProvider *self, IEnumUnknown** ppIdentityEnum) Finish_GetIdentityEnum;
				public function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUserName, PROPVARIANT* pKeywordsToAdd) Begin_Create;
				public function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_Create;
				public function HRESULT(AsyncIIdentityProvider *self, IPropertyStore* pPropertyStore) Begin_Import;
				public function HRESULT(AsyncIIdentityProvider *self) Finish_Import;
				public function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUniqueID, PROPVARIANT* pKeywordsToDelete) Begin_Delete;
				public function HRESULT(AsyncIIdentityProvider *self) Finish_Delete;
				public function HRESULT(AsyncIIdentityProvider *self, PWSTR lpszUniqueID) Begin_FindByUniqueID;
				public function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_FindByUniqueID;
				public function HRESULT(AsyncIIdentityProvider *self) Begin_GetProviderPropertyStore;
				public function HRESULT(AsyncIIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_GetProviderPropertyStore;
				public function HRESULT(AsyncIIdentityProvider *self, IIdentityAdvise* pIdentityAdvise, uint32 dwIdentityUpdateEvents) Begin_Advise;
				public function HRESULT(AsyncIIdentityProvider *self, uint32* pdwCookie) Finish_Advise;
				public function HRESULT(AsyncIIdentityProvider *self, uint32 dwCookie) Begin_UnAdvise;
				public function HRESULT(AsyncIIdentityProvider *self) Finish_UnAdvise;
			}
		}
		[CRepr]
		public struct IAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2af066b3, 0x4cbb, 0x4cba, 0xa7, 0x98, 0x20, 0x4b, 0x6a, 0xf6, 0x8c, 0xc0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, IPropertyStore** ppPropertyStore) AssociateIdentity;
				public function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) DisassociateIdentity;
				public function HRESULT(IAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) ChangeCredential;
			}
		}
		[CRepr]
		public struct AsyncIAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2834d6ed, 0x297e, 0x4e72, 0x8a, 0x51, 0x96, 0x1e, 0x86, 0xf0, 0x51, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent) Begin_AssociateIdentity;
				public function HRESULT(AsyncIAssociatedIdentityProvider *self, IPropertyStore** ppPropertyStore) Finish_AssociateIdentity;
				public function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) Begin_DisassociateIdentity;
				public function HRESULT(AsyncIAssociatedIdentityProvider *self) Finish_DisassociateIdentity;
				public function HRESULT(AsyncIAssociatedIdentityProvider *self, HWND hwndParent, PWSTR lpszUniqueID) Begin_ChangeCredential;
				public function HRESULT(AsyncIAssociatedIdentityProvider *self) Finish_ChangeCredential;
			}
		}
		[CRepr]
		public struct IConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xb7417b54, 0xe08c, 0x429b, 0x96, 0xc8, 0x67, 0x8d, 0x13, 0x69, 0xec, 0xb1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IConnectedIdentityProvider *self, uint8* AuthBuffer, uint32 AuthBufferSize) ConnectIdentity;
				public function HRESULT(IConnectedIdentityProvider *self) DisconnectIdentity;
				public function HRESULT(IConnectedIdentityProvider *self, BOOL* Connected) IsConnected;
				public function HRESULT(IConnectedIdentityProvider *self, IDENTITY_URL Identifier, IBindCtx* Context, VARIANT* PostData, PWSTR* Url) GetUrl;
				public function HRESULT(IConnectedIdentityProvider *self, ACCOUNT_STATE* pState) GetAccountState;
			}
		}
		[CRepr]
		public struct AsyncIConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x9ce55141, 0xbce9, 0x4e15, 0x82, 0x4d, 0x43, 0xd7, 0x9f, 0x51, 0x2f, 0x93);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIConnectedIdentityProvider *self, uint8* AuthBuffer, uint32 AuthBufferSize) Begin_ConnectIdentity;
				public function HRESULT(AsyncIConnectedIdentityProvider *self) Finish_ConnectIdentity;
				public function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_DisconnectIdentity;
				public function HRESULT(AsyncIConnectedIdentityProvider *self) Finish_DisconnectIdentity;
				public function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_IsConnected;
				public function HRESULT(AsyncIConnectedIdentityProvider *self, BOOL* Connected) Finish_IsConnected;
				public function HRESULT(AsyncIConnectedIdentityProvider *self, IDENTITY_URL Identifier, IBindCtx* Context) Begin_GetUrl;
				public function HRESULT(AsyncIConnectedIdentityProvider *self, VARIANT* PostData, PWSTR* Url) Finish_GetUrl;
				public function HRESULT(AsyncIConnectedIdentityProvider *self) Begin_GetAccountState;
				public function HRESULT(AsyncIConnectedIdentityProvider *self, ACCOUNT_STATE* pState) Finish_GetAccountState;
			}
		}
		[CRepr]
		public struct IIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0x5e7ef254, 0x979f, 0x43b5, 0xb7, 0x4e, 0x06, 0xe4, 0xeb, 0x7d, 0xf0, 0xf9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength) SetIdentityCredential;
				public function HRESULT(IIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0xf9a2f918, 0xfeca, 0x4e9c, 0x96, 0x33, 0x61, 0xcb, 0xf1, 0x3e, 0xd3, 0x4d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength) Begin_SetIdentityCredential;
				public function HRESULT(AsyncIIdentityAuthentication *self) Finish_SetIdentityCredential;
				public function HRESULT(AsyncIIdentityAuthentication *self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) Begin_ValidateIdentityCredential;
				public function HRESULT(AsyncIIdentityAuthentication *self, IPropertyStore** ppIdentityProperties) Finish_ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct IIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xdf586fa5, 0x6f35, 0x44f1, 0xb2, 0x09, 0xb3, 0x8e, 0x16, 0x97, 0x72, 0xeb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIdentityStore *self, uint32* pdwProviders) GetCount;
				public function HRESULT(IIdentityStore *self, uint32 dwProvider, Guid* pProvGuid, IUnknown** ppIdentityProvider) GetAt;
				public function HRESULT(IIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID) AddToCache;
				public function HRESULT(IIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid, uint16* pcbRequiredSid) ConvertToSid;
				public function HRESULT(IIdentityStore *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) EnumerateIdentities;
				public function HRESULT(IIdentityStore *self) Reset;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xeefa1616, 0x48de, 0x4872, 0xaa, 0x64, 0x6e, 0x62, 0x06, 0x53, 0x5a, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIIdentityStore *self) Begin_GetCount;
				public function HRESULT(AsyncIIdentityStore *self, uint32* pdwProviders) Finish_GetCount;
				public function HRESULT(AsyncIIdentityStore *self, uint32 dwProvider, Guid* pProvGuid) Begin_GetAt;
				public function HRESULT(AsyncIIdentityStore *self, Guid* pProvGuid, IUnknown** ppIdentityProvider) Finish_GetAt;
				public function HRESULT(AsyncIIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID) Begin_AddToCache;
				public function HRESULT(AsyncIIdentityStore *self) Finish_AddToCache;
				public function HRESULT(AsyncIIdentityStore *self, PWSTR lpszUniqueID, Guid* ProviderGUID, uint16 cbSid, uint8* pSid) Begin_ConvertToSid;
				public function HRESULT(AsyncIIdentityStore *self, uint8* pSid, uint16* pcbRequiredSid) Finish_ConvertToSid;
				public function HRESULT(AsyncIIdentityStore *self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_EnumerateIdentities;
				public function HRESULT(AsyncIIdentityStore *self, IEnumUnknown** ppIdentityEnum) Finish_EnumerateIdentities;
				public function HRESULT(AsyncIIdentityStore *self) Begin_Reset;
				public function HRESULT(AsyncIIdentityStore *self) Finish_Reset;
			}
		}
		[CRepr]
		public struct IIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xf9f9eb98, 0x8f7f, 0x4e38, 0x95, 0x77, 0x69, 0x80, 0x11, 0x4c, 0xe3, 0x2b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IIdentityStoreEx *self, PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) CreateConnectedIdentity;
				public function HRESULT(IIdentityStoreEx *self, PWSTR ConnectedName, Guid* ProviderGUID) DeleteConnectedIdentity;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xfca3af9a, 0x8a07, 0x4eae, 0x86, 0x32, 0xec, 0x3d, 0xe6, 0x58, 0xa3, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(AsyncIIdentityStoreEx *self, PWSTR LocalName, PWSTR ConnectedName, Guid* ProviderGUID) Begin_CreateConnectedIdentity;
				public function HRESULT(AsyncIIdentityStoreEx *self) Finish_CreateConnectedIdentity;
				public function HRESULT(AsyncIIdentityStoreEx *self, PWSTR ConnectedName, Guid* ProviderGUID) Begin_DeleteConnectedIdentity;
				public function HRESULT(AsyncIIdentityStoreEx *self) Finish_DeleteConnectedIdentity;
			}
		}
		
	}
}
