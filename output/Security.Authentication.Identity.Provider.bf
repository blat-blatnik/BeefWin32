using System;

// namespace Security.Authentication.Identity.Provider
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid OID_OAssociatedIdentityProviderObject = .(0x98c5a3dd, 0xdb68, 0x4f1a, 0x8d, 0x2b, 0x90, 0x79, 0xcd, 0xfe, 0xaf, 0x61);
		
		// --- Enums ---
		
		public enum IDENTITY_TYPE : int32
		{
			ALL = 0,
			ME_ONLY = 1,
		}
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
			
			public HRESULT IdentityUpdated(IdentityUpdateEvent dwIdentityUpdateEvents, PWSTR lpszUniqueID) mut => VT.IdentityUpdated(ref this, dwIdentityUpdateEvents, lpszUniqueID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityAdvise self, IdentityUpdateEvent dwIdentityUpdateEvents, PWSTR lpszUniqueID) IdentityUpdated;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAdvise : IUnknown
		{
			public const new Guid IID = .(0x3ab4c8da, 0xd038, 0x4830, 0x8d, 0xd9, 0x32, 0x53, 0xc5, 0x5a, 0x12, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_IdentityUpdated(uint32 dwIdentityUpdateEvents, PWSTR lpszUniqueID) mut => VT.Begin_IdentityUpdated(ref this, dwIdentityUpdateEvents, lpszUniqueID);
			public HRESULT Finish_IdentityUpdated() mut => VT.Finish_IdentityUpdated(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAdvise self, uint32 dwIdentityUpdateEvents, PWSTR lpszUniqueID) Begin_IdentityUpdated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAdvise self) Finish_IdentityUpdated;
			}
		}
		[CRepr]
		public struct IIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x0d1b9e0c, 0xe8ba, 0x4f55, 0xa8, 0x1b, 0xbc, 0xe9, 0x34, 0xb9, 0x48, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentityEnum(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) mut => VT.GetIdentityEnum(ref this, eIdentityType, pFilterkey, pFilterPropVarValue, ppIdentityEnum);
			public HRESULT Create(PWSTR lpszUserName, IPropertyStore** ppPropertyStore, in PROPVARIANT pKeywordsToAdd) mut => VT.Create(ref this, lpszUserName, ppPropertyStore, pKeywordsToAdd);
			public HRESULT Import(IPropertyStore* pPropertyStore) mut => VT.Import(ref this, pPropertyStore);
			public HRESULT Delete(PWSTR lpszUniqueID, in PROPVARIANT pKeywordsToDelete) mut => VT.Delete(ref this, lpszUniqueID, pKeywordsToDelete);
			public HRESULT FindByUniqueID(PWSTR lpszUniqueID, IPropertyStore** ppPropertyStore) mut => VT.FindByUniqueID(ref this, lpszUniqueID, ppPropertyStore);
			public HRESULT GetProviderPropertyStore(IPropertyStore** ppPropertyStore) mut => VT.GetProviderPropertyStore(ref this, ppPropertyStore);
			public HRESULT Advise(IIdentityAdvise* pIdentityAdvise, IdentityUpdateEvent dwIdentityUpdateEvents, out uint32 pdwCookie) mut => VT.Advise(ref this, pIdentityAdvise, dwIdentityUpdateEvents, out pdwCookie);
			public HRESULT UnAdvise(uint32 dwCookie) mut => VT.UnAdvise(ref this, dwCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) GetIdentityEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, PWSTR lpszUserName, IPropertyStore** ppPropertyStore, in PROPVARIANT pKeywordsToAdd) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, IPropertyStore* pPropertyStore) Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, PWSTR lpszUniqueID, in PROPVARIANT pKeywordsToDelete) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, PWSTR lpszUniqueID, IPropertyStore** ppPropertyStore) FindByUniqueID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, IPropertyStore** ppPropertyStore) GetProviderPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, IIdentityAdvise* pIdentityAdvise, IdentityUpdateEvent dwIdentityUpdateEvents, out uint32 pdwCookie) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityProvider self, uint32 dwCookie) UnAdvise;
			}
		}
		[CRepr]
		public struct AsyncIIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xc6fc9901, 0xc433, 0x4646, 0x8f, 0x48, 0x4e, 0x46, 0x87, 0xaa, 0xe2, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetIdentityEnum(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) mut => VT.Begin_GetIdentityEnum(ref this, eIdentityType, pFilterkey, pFilterPropVarValue);
			public HRESULT Finish_GetIdentityEnum(IEnumUnknown** ppIdentityEnum) mut => VT.Finish_GetIdentityEnum(ref this, ppIdentityEnum);
			public HRESULT Begin_Create(PWSTR lpszUserName, in PROPVARIANT pKeywordsToAdd) mut => VT.Begin_Create(ref this, lpszUserName, pKeywordsToAdd);
			public HRESULT Finish_Create(IPropertyStore** ppPropertyStore) mut => VT.Finish_Create(ref this, ppPropertyStore);
			public HRESULT Begin_Import(IPropertyStore* pPropertyStore) mut => VT.Begin_Import(ref this, pPropertyStore);
			public HRESULT Finish_Import() mut => VT.Finish_Import(ref this);
			public HRESULT Begin_Delete(PWSTR lpszUniqueID, in PROPVARIANT pKeywordsToDelete) mut => VT.Begin_Delete(ref this, lpszUniqueID, pKeywordsToDelete);
			public HRESULT Finish_Delete() mut => VT.Finish_Delete(ref this);
			public HRESULT Begin_FindByUniqueID(PWSTR lpszUniqueID) mut => VT.Begin_FindByUniqueID(ref this, lpszUniqueID);
			public HRESULT Finish_FindByUniqueID(IPropertyStore** ppPropertyStore) mut => VT.Finish_FindByUniqueID(ref this, ppPropertyStore);
			public HRESULT Begin_GetProviderPropertyStore() mut => VT.Begin_GetProviderPropertyStore(ref this);
			public HRESULT Finish_GetProviderPropertyStore(IPropertyStore** ppPropertyStore) mut => VT.Finish_GetProviderPropertyStore(ref this, ppPropertyStore);
			public HRESULT Begin_Advise(IIdentityAdvise* pIdentityAdvise, uint32 dwIdentityUpdateEvents) mut => VT.Begin_Advise(ref this, pIdentityAdvise, dwIdentityUpdateEvents);
			public HRESULT Finish_Advise(out uint32 pdwCookie) mut => VT.Finish_Advise(ref this, out pdwCookie);
			public HRESULT Begin_UnAdvise(uint32 dwCookie) mut => VT.Begin_UnAdvise(ref this, dwCookie);
			public HRESULT Finish_UnAdvise() mut => VT.Finish_UnAdvise(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_GetIdentityEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IEnumUnknown** ppIdentityEnum) Finish_GetIdentityEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, PWSTR lpszUserName, in PROPVARIANT pKeywordsToAdd) Begin_Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IPropertyStore** ppPropertyStore) Finish_Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IPropertyStore* pPropertyStore) Begin_Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self) Finish_Import;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, PWSTR lpszUniqueID, in PROPVARIANT pKeywordsToDelete) Begin_Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self) Finish_Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, PWSTR lpszUniqueID) Begin_FindByUniqueID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IPropertyStore** ppPropertyStore) Finish_FindByUniqueID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self) Begin_GetProviderPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IPropertyStore** ppPropertyStore) Finish_GetProviderPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, IIdentityAdvise* pIdentityAdvise, uint32 dwIdentityUpdateEvents) Begin_Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, out uint32 pdwCookie) Finish_Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self, uint32 dwCookie) Begin_UnAdvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityProvider self) Finish_UnAdvise;
			}
		}
		[CRepr]
		public struct IAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2af066b3, 0x4cbb, 0x4cba, 0xa7, 0x98, 0x20, 0x4b, 0x6a, 0xf6, 0x8c, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssociateIdentity(HWND hwndParent, IPropertyStore** ppPropertyStore) mut => VT.AssociateIdentity(ref this, hwndParent, ppPropertyStore);
			public HRESULT DisassociateIdentity(HWND hwndParent, PWSTR lpszUniqueID) mut => VT.DisassociateIdentity(ref this, hwndParent, lpszUniqueID);
			public HRESULT ChangeCredential(HWND hwndParent, PWSTR lpszUniqueID) mut => VT.ChangeCredential(ref this, hwndParent, lpszUniqueID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssociatedIdentityProvider self, HWND hwndParent, IPropertyStore** ppPropertyStore) AssociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssociatedIdentityProvider self, HWND hwndParent, PWSTR lpszUniqueID) DisassociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssociatedIdentityProvider self, HWND hwndParent, PWSTR lpszUniqueID) ChangeCredential;
			}
		}
		[CRepr]
		public struct AsyncIAssociatedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x2834d6ed, 0x297e, 0x4e72, 0x8a, 0x51, 0x96, 0x1e, 0x86, 0xf0, 0x51, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_AssociateIdentity(HWND hwndParent) mut => VT.Begin_AssociateIdentity(ref this, hwndParent);
			public HRESULT Finish_AssociateIdentity(IPropertyStore** ppPropertyStore) mut => VT.Finish_AssociateIdentity(ref this, ppPropertyStore);
			public HRESULT Begin_DisassociateIdentity(HWND hwndParent, PWSTR lpszUniqueID) mut => VT.Begin_DisassociateIdentity(ref this, hwndParent, lpszUniqueID);
			public HRESULT Finish_DisassociateIdentity() mut => VT.Finish_DisassociateIdentity(ref this);
			public HRESULT Begin_ChangeCredential(HWND hwndParent, PWSTR lpszUniqueID) mut => VT.Begin_ChangeCredential(ref this, hwndParent, lpszUniqueID);
			public HRESULT Finish_ChangeCredential() mut => VT.Finish_ChangeCredential(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self, HWND hwndParent) Begin_AssociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self, IPropertyStore** ppPropertyStore) Finish_AssociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self, HWND hwndParent, PWSTR lpszUniqueID) Begin_DisassociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self) Finish_DisassociateIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self, HWND hwndParent, PWSTR lpszUniqueID) Begin_ChangeCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIAssociatedIdentityProvider self) Finish_ChangeCredential;
			}
		}
		[CRepr]
		public struct IConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0xb7417b54, 0xe08c, 0x429b, 0x96, 0xc8, 0x67, 0x8d, 0x13, 0x69, 0xec, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectIdentity(uint8* AuthBuffer, uint32 AuthBufferSize) mut => VT.ConnectIdentity(ref this, AuthBuffer, AuthBufferSize);
			public HRESULT DisconnectIdentity() mut => VT.DisconnectIdentity(ref this);
			public HRESULT IsConnected(out BOOL Connected) mut => VT.IsConnected(ref this, out Connected);
			public HRESULT GetUrl(IDENTITY_URL Identifier, IBindCtx* Context, out VARIANT PostData, PWSTR* Url) mut => VT.GetUrl(ref this, Identifier, Context, out PostData, Url);
			public HRESULT GetAccountState(out ACCOUNT_STATE pState) mut => VT.GetAccountState(ref this, out pState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectedIdentityProvider self, uint8* AuthBuffer, uint32 AuthBufferSize) ConnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectedIdentityProvider self) DisconnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectedIdentityProvider self, out BOOL Connected) IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectedIdentityProvider self, IDENTITY_URL Identifier, IBindCtx* Context, out VARIANT PostData, PWSTR* Url) GetUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectedIdentityProvider self, out ACCOUNT_STATE pState) GetAccountState;
			}
		}
		[CRepr]
		public struct AsyncIConnectedIdentityProvider : IUnknown
		{
			public const new Guid IID = .(0x9ce55141, 0xbce9, 0x4e15, 0x82, 0x4d, 0x43, 0xd7, 0x9f, 0x51, 0x2f, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_ConnectIdentity(uint8* AuthBuffer, uint32 AuthBufferSize) mut => VT.Begin_ConnectIdentity(ref this, AuthBuffer, AuthBufferSize);
			public HRESULT Finish_ConnectIdentity() mut => VT.Finish_ConnectIdentity(ref this);
			public HRESULT Begin_DisconnectIdentity() mut => VT.Begin_DisconnectIdentity(ref this);
			public HRESULT Finish_DisconnectIdentity() mut => VT.Finish_DisconnectIdentity(ref this);
			public HRESULT Begin_IsConnected() mut => VT.Begin_IsConnected(ref this);
			public HRESULT Finish_IsConnected(out BOOL Connected) mut => VT.Finish_IsConnected(ref this, out Connected);
			public HRESULT Begin_GetUrl(IDENTITY_URL Identifier, IBindCtx* Context) mut => VT.Begin_GetUrl(ref this, Identifier, Context);
			public HRESULT Finish_GetUrl(out VARIANT PostData, PWSTR* Url) mut => VT.Finish_GetUrl(ref this, out PostData, Url);
			public HRESULT Begin_GetAccountState() mut => VT.Begin_GetAccountState(ref this);
			public HRESULT Finish_GetAccountState(out ACCOUNT_STATE pState) mut => VT.Finish_GetAccountState(ref this, out pState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self, uint8* AuthBuffer, uint32 AuthBufferSize) Begin_ConnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self) Finish_ConnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self) Begin_DisconnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self) Finish_DisconnectIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self) Begin_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self, out BOOL Connected) Finish_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self, IDENTITY_URL Identifier, IBindCtx* Context) Begin_GetUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self, out VARIANT PostData, PWSTR* Url) Finish_GetUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self) Begin_GetAccountState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIConnectedIdentityProvider self, out ACCOUNT_STATE pState) Finish_GetAccountState;
			}
		}
		[CRepr]
		public struct IIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0x5e7ef254, 0x979f, 0x43b5, 0xb7, 0x4e, 0x06, 0xe4, 0xeb, 0x7d, 0xf0, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength) mut => VT.SetIdentityCredential(ref this, CredBuffer, CredBufferLength);
			public HRESULT ValidateIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) mut => VT.ValidateIdentityCredential(ref this, CredBuffer, CredBufferLength, ppIdentityProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityAuthentication self, uint8* CredBuffer, uint32 CredBufferLength) SetIdentityCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityAuthentication self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct AsyncIIdentityAuthentication : IUnknown
		{
			public const new Guid IID = .(0xf9a2f918, 0xfeca, 0x4e9c, 0x96, 0x33, 0x61, 0xcb, 0xf1, 0x3e, 0xd3, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_SetIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength) mut => VT.Begin_SetIdentityCredential(ref this, CredBuffer, CredBufferLength);
			public HRESULT Finish_SetIdentityCredential() mut => VT.Finish_SetIdentityCredential(ref this);
			public HRESULT Begin_ValidateIdentityCredential(uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) mut => VT.Begin_ValidateIdentityCredential(ref this, CredBuffer, CredBufferLength, ppIdentityProperties);
			public HRESULT Finish_ValidateIdentityCredential(IPropertyStore** ppIdentityProperties) mut => VT.Finish_ValidateIdentityCredential(ref this, ppIdentityProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAuthentication self, uint8* CredBuffer, uint32 CredBufferLength) Begin_SetIdentityCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAuthentication self) Finish_SetIdentityCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAuthentication self, uint8* CredBuffer, uint32 CredBufferLength, IPropertyStore** ppIdentityProperties) Begin_ValidateIdentityCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityAuthentication self, IPropertyStore** ppIdentityProperties) Finish_ValidateIdentityCredential;
			}
		}
		[CRepr]
		public struct IIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xdf586fa5, 0x6f35, 0x44f1, 0xb2, 0x09, 0xb3, 0x8e, 0x16, 0x97, 0x72, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pdwProviders) mut => VT.GetCount(ref this, out pdwProviders);
			public HRESULT GetAt(uint32 dwProvider, Guid* pProvGuid, IUnknown** ppIdentityProvider) mut => VT.GetAt(ref this, dwProvider, pProvGuid, ppIdentityProvider);
			public HRESULT AddToCache(PWSTR lpszUniqueID, in Guid ProviderGUID) mut => VT.AddToCache(ref this, lpszUniqueID, ProviderGUID);
			public HRESULT ConvertToSid(PWSTR lpszUniqueID, in Guid ProviderGUID, uint16 cbSid, uint8* pSid, out uint16 pcbRequiredSid) mut => VT.ConvertToSid(ref this, lpszUniqueID, ProviderGUID, cbSid, pSid, out pcbRequiredSid);
			public HRESULT EnumerateIdentities(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) mut => VT.EnumerateIdentities(ref this, eIdentityType, pFilterkey, pFilterPropVarValue, ppIdentityEnum);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self, out uint32 pdwProviders) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self, uint32 dwProvider, Guid* pProvGuid, IUnknown** ppIdentityProvider) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self, PWSTR lpszUniqueID, in Guid ProviderGUID) AddToCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self, PWSTR lpszUniqueID, in Guid ProviderGUID, uint16 cbSid, uint8* pSid, out uint16 pcbRequiredSid) ConvertToSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue, IEnumUnknown** ppIdentityEnum) EnumerateIdentities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStore self) Reset;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStore : IUnknown
		{
			public const new Guid IID = .(0xeefa1616, 0x48de, 0x4872, 0xaa, 0x64, 0x6e, 0x62, 0x06, 0x53, 0x5a, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_GetCount() mut => VT.Begin_GetCount(ref this);
			public HRESULT Finish_GetCount(out uint32 pdwProviders) mut => VT.Finish_GetCount(ref this, out pdwProviders);
			public HRESULT Begin_GetAt(uint32 dwProvider, Guid* pProvGuid) mut => VT.Begin_GetAt(ref this, dwProvider, pProvGuid);
			public HRESULT Finish_GetAt(Guid* pProvGuid, IUnknown** ppIdentityProvider) mut => VT.Finish_GetAt(ref this, pProvGuid, ppIdentityProvider);
			public HRESULT Begin_AddToCache(PWSTR lpszUniqueID, in Guid ProviderGUID) mut => VT.Begin_AddToCache(ref this, lpszUniqueID, ProviderGUID);
			public HRESULT Finish_AddToCache() mut => VT.Finish_AddToCache(ref this);
			public HRESULT Begin_ConvertToSid(PWSTR lpszUniqueID, in Guid ProviderGUID, uint16 cbSid, uint8* pSid) mut => VT.Begin_ConvertToSid(ref this, lpszUniqueID, ProviderGUID, cbSid, pSid);
			public HRESULT Finish_ConvertToSid(uint8* pSid, out uint16 pcbRequiredSid) mut => VT.Finish_ConvertToSid(ref this, pSid, out pcbRequiredSid);
			public HRESULT Begin_EnumerateIdentities(IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) mut => VT.Begin_EnumerateIdentities(ref this, eIdentityType, pFilterkey, pFilterPropVarValue);
			public HRESULT Finish_EnumerateIdentities(IEnumUnknown** ppIdentityEnum) mut => VT.Finish_EnumerateIdentities(ref this, ppIdentityEnum);
			public HRESULT Begin_Reset() mut => VT.Begin_Reset(ref this);
			public HRESULT Finish_Reset() mut => VT.Finish_Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self) Begin_GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, out uint32 pdwProviders) Finish_GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, uint32 dwProvider, Guid* pProvGuid) Begin_GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, Guid* pProvGuid, IUnknown** ppIdentityProvider) Finish_GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, PWSTR lpszUniqueID, in Guid ProviderGUID) Begin_AddToCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self) Finish_AddToCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, PWSTR lpszUniqueID, in Guid ProviderGUID, uint16 cbSid, uint8* pSid) Begin_ConvertToSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, uint8* pSid, out uint16 pcbRequiredSid) Finish_ConvertToSid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, IDENTITY_TYPE eIdentityType, PROPERTYKEY* pFilterkey, PROPVARIANT* pFilterPropVarValue) Begin_EnumerateIdentities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self, IEnumUnknown** ppIdentityEnum) Finish_EnumerateIdentities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self) Begin_Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStore self) Finish_Reset;
			}
		}
		[CRepr]
		public struct IIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xf9f9eb98, 0x8f7f, 0x4e38, 0x95, 0x77, 0x69, 0x80, 0x11, 0x4c, 0xe3, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateConnectedIdentity(PWSTR LocalName, PWSTR ConnectedName, in Guid ProviderGUID) mut => VT.CreateConnectedIdentity(ref this, LocalName, ConnectedName, ProviderGUID);
			public HRESULT DeleteConnectedIdentity(PWSTR ConnectedName, in Guid ProviderGUID) mut => VT.DeleteConnectedIdentity(ref this, ConnectedName, ProviderGUID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStoreEx self, PWSTR LocalName, PWSTR ConnectedName, in Guid ProviderGUID) CreateConnectedIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIdentityStoreEx self, PWSTR ConnectedName, in Guid ProviderGUID) DeleteConnectedIdentity;
			}
		}
		[CRepr]
		public struct AsyncIIdentityStoreEx : IUnknown
		{
			public const new Guid IID = .(0xfca3af9a, 0x8a07, 0x4eae, 0x86, 0x32, 0xec, 0x3d, 0xe6, 0x58, 0xa3, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin_CreateConnectedIdentity(PWSTR LocalName, PWSTR ConnectedName, in Guid ProviderGUID) mut => VT.Begin_CreateConnectedIdentity(ref this, LocalName, ConnectedName, ProviderGUID);
			public HRESULT Finish_CreateConnectedIdentity() mut => VT.Finish_CreateConnectedIdentity(ref this);
			public HRESULT Begin_DeleteConnectedIdentity(PWSTR ConnectedName, in Guid ProviderGUID) mut => VT.Begin_DeleteConnectedIdentity(ref this, ConnectedName, ProviderGUID);
			public HRESULT Finish_DeleteConnectedIdentity() mut => VT.Finish_DeleteConnectedIdentity(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStoreEx self, PWSTR LocalName, PWSTR ConnectedName, in Guid ProviderGUID) Begin_CreateConnectedIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStoreEx self) Finish_CreateConnectedIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStoreEx self, PWSTR ConnectedName, in Guid ProviderGUID) Begin_DeleteConnectedIdentity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref AsyncIIdentityStoreEx self) Finish_DeleteConnectedIdentity;
			}
		}
		
	}
}
