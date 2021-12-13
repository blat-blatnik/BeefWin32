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
		
		public struct IIdentityAdvise {}
		public struct AsyncIIdentityAdvise {}
		public struct IIdentityProvider {}
		public struct AsyncIIdentityProvider {}
		public struct IAssociatedIdentityProvider {}
		public struct AsyncIAssociatedIdentityProvider {}
		public struct IConnectedIdentityProvider {}
		public struct AsyncIConnectedIdentityProvider {}
		public struct IIdentityAuthentication {}
		public struct AsyncIIdentityAuthentication {}
		public struct IIdentityStore {}
		public struct AsyncIIdentityStore {}
		public struct IIdentityStoreEx {}
		public struct AsyncIIdentityStoreEx {}
		
	}
}
