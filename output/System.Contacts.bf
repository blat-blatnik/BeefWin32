using System;

// namespace System.Contacts
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CGD_DEFAULT = 0;
		public const uint32 CGD_UNKNOWN_PROPERTY = 0;
		public const uint32 CGD_STRING_PROPERTY = 1;
		public const uint32 CGD_DATE_PROPERTY = 2;
		public const uint32 CGD_BINARY_PROPERTY = 4;
		public const uint32 CGD_ARRAY_NODE = 8;
		public const Guid CLSID_ContactAggregationManager = .(0x96c8ad95, 0xc199, 0x44de, 0xb3, 0x4e, 0xac, 0x33, 0xc4, 0x42, 0xdf, 0x39);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS : int32
		{
			CA_CREATE_LOCAL = 0,
			CA_CREATE_EXTERNAL = 1,
		}
		[AllowDuplicates]
		public enum CONTACT_AGGREGATION_COLLECTION_OPTIONS : int32
		{
			CACO_DEFAULT = 0,
			CACO_INCLUDE_EXTERNAL = 1,
			CACO_EXTERNAL_ONLY = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CONTACT_AGGREGATION_BLOB
		{
			public uint32 dwCount;
			public uint8* lpb;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Contact = .(0x61b68808, 0x8eee, 0x4fd1, 0xac, 0xb8, 0x3d, 0x80, 0x4c, 0x8d, 0xb0, 0x56);
		public const Guid CLSID_ContactManager = .(0x7165c8ab, 0xaf88, 0x42bd, 0x86, 0xfd, 0x53, 0x10, 0xb4, 0x28, 0x5a, 0x02);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IContactManager : IUnknown
		{
			public const new Guid IID = .(0xad553d98, 0xdeb1, 0x474a, 0x8e, 0x17, 0xfc, 0x0c, 0x20, 0x75, 0xb7, 0x38);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactManager *self, PWSTR pszAppName, PWSTR pszAppVersion) Initialize;
				public function HRESULT(IContactManager *self, PWSTR pszContactID, IContact** ppContact) Load;
				public function HRESULT(IContactManager *self, PWSTR pszNewContactID, PWSTR pszOldContactID) MergeContactIDs;
				public function HRESULT(IContactManager *self, IContact** ppMeContact) GetMeContact;
				public function HRESULT(IContactManager *self, IContact* pMeContact) SetMeContact;
				public function HRESULT(IContactManager *self, IContactCollection** ppContactCollection) GetContactCollection;
			}
		}
		[CRepr]
		public struct IContactCollection : IUnknown
		{
			public const new Guid IID = .(0xb6afa338, 0xd779, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactCollection *self) Reset;
				public function HRESULT(IContactCollection *self) Next;
				public function HRESULT(IContactCollection *self, IContact** ppContact) GetCurrent;
			}
		}
		[CRepr]
		public struct IContactProperties : IUnknown
		{
			public const new Guid IID = .(0x70dd27dd, 0x5cbd, 0x46e8, 0xbe, 0xf0, 0x23, 0xb6, 0xb3, 0x46, 0x28, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, uint32* pdwcchPropertyValueRequired) GetString;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, FILETIME* pftDateTime) GetDate;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, uint32* pdwcchContentTypeRequired, IStream** ppStream) GetBinary;
				public function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, uint32* pdwcchLabelsRequired) GetLabels;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszValue) SetString;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, FILETIME ftDateTime) SetDate;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszContentType, IStream* pStream) SetBinary;
				public function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, PWSTR* ppszLabels) SetLabels;
				public function HRESULT(IContactProperties *self, PWSTR pszArrayName, uint32 dwFlags, BOOL fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, uint32* pdwcchNewArrayElementNameRequired) CreateArrayNode;
				public function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags) DeleteProperty;
				public function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteArrayNode;
				public function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteLabels;
				public function HRESULT(IContactProperties *self, IContactPropertyCollection** ppPropertyCollection, uint32 dwFlags, PWSTR pszMultiValueName, uint32 dwLabelCount, PWSTR* ppszLabels, BOOL fAnyLabelMatches) GetPropertyCollection;
			}
		}
		[CRepr]
		public struct IContact : IUnknown
		{
			public const new Guid IID = .(0xf941b671, 0xbda7, 0x4f77, 0x88, 0x4a, 0xf4, 0x64, 0x62, 0xf2, 0x26, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContact *self, char16* pszContactID, uint32 cchContactID, uint32* pdwcchContactIDRequired) GetContactID;
				public function HRESULT(IContact *self, char16* pszPath, uint32 cchPath, uint32* pdwcchPathRequired) GetPath;
				public function HRESULT(IContact *self, uint32 dwCommitFlags) CommitChanges;
			}
		}
		[CRepr]
		public struct IContactPropertyCollection : IUnknown
		{
			public const new Guid IID = .(0xffd3adf8, 0xfa64, 0x4328, 0xb1, 0xb6, 0x2e, 0x0d, 0xb5, 0x09, 0xcb, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactPropertyCollection *self) Reset;
				public function HRESULT(IContactPropertyCollection *self) Next;
				public function HRESULT(IContactPropertyCollection *self, char16* pszPropertyName, uint32 cchPropertyName, uint32* pdwcchPropertyNameRequired) GetPropertyName;
				public function HRESULT(IContactPropertyCollection *self, uint32* pdwType) GetPropertyType;
				public function HRESULT(IContactPropertyCollection *self, uint32* pdwVersion) GetPropertyVersion;
				public function HRESULT(IContactPropertyCollection *self, FILETIME* pftModificationDate) GetPropertyModificationDate;
				public function HRESULT(IContactPropertyCollection *self, char16* pszArrayElementID, uint32 cchArrayElementID, uint32* pdwcchArrayElementIDRequired) GetPropertyArrayElementID;
			}
		}
		[CRepr]
		public struct IContactAggregationManager : IUnknown
		{
			public const new Guid IID = .(0x1d865989, 0x4b1f, 0x4b60, 0x8f, 0x34, 0xc2, 0xad, 0x46, 0x8b, 0x2b, 0x50);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationManager *self, int32* plMajorVersion, int32* plMinorVersion) GetVersionInfo;
				public function HRESULT(IContactAggregationManager *self, PWSTR pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, BOOL* pCreatedGroup, IContactAggregationGroup** ppGroup) CreateOrOpenGroup;
				public function HRESULT(IContactAggregationManager *self, IContactAggregationContact** ppItem) CreateExternalContact;
				public function HRESULT(IContactAggregationManager *self, IContactAggregationServerPerson** ppServerPerson) CreateServerPerson;
				public function HRESULT(IContactAggregationManager *self, IContactAggregationLink** ppServerContactLink) CreateServerContactLink;
				public function HRESULT(IContactAggregationManager *self) Flush;
				public function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationAggregate** ppItem) OpenAggregateContact;
				public function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationContact** ppItem) OpenContact;
				public function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationLink** ppItem) OpenServerContactLink;
				public function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationServerPerson** ppItem) OpenServerPerson;
				public function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationContactCollection** ppItems) get_Contacts;
				public function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationAggregateCollection** ppAggregates) get_AggregateContacts;
				public function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) get_Groups;
				public function HRESULT(IContactAggregationManager *self, IContactAggregationServerPersonCollection** ppServerPersonCollection) get_ServerPersons;
				public function HRESULT(IContactAggregationManager *self, PWSTR pPersonItemId, IContactAggregationLinkCollection** ppServerContactLinkCollection) get_ServerContactLinks;
			}
		}
		[CRepr]
		public struct IContactAggregationContact : IUnknown
		{
			public const new Guid IID = .(0x1eb22e86, 0x4c86, 0x41f0, 0x9f, 0x9f, 0xc2, 0x51, 0xe9, 0xfd, 0xa6, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationContact *self) Delete;
				public function HRESULT(IContactAggregationContact *self) Save;
				public function HRESULT(IContactAggregationContact *self, PWSTR pAggregateId) MoveToAggregate;
				public function HRESULT(IContactAggregationContact *self) Unlink;
				public function HRESULT(IContactAggregationContact *self, PWSTR* ppAccountId) get_AccountId;
				public function HRESULT(IContactAggregationContact *self, PWSTR pAccountId) put_AccountId;
				public function HRESULT(IContactAggregationContact *self, PWSTR* ppAggregateId) get_AggregateId;
				public function HRESULT(IContactAggregationContact *self, PWSTR* ppItemId) get_Id;
				public function HRESULT(IContactAggregationContact *self, BOOL* pIsMe) get_IsMe;
				public function HRESULT(IContactAggregationContact *self, BOOL* pIsExternal) get_IsExternal;
				public function HRESULT(IContactAggregationContact *self, uint32* pNetworkSourceId) get_NetworkSourceId;
				public function HRESULT(IContactAggregationContact *self, uint32 networkSourceId) put_NetworkSourceId;
				public function HRESULT(IContactAggregationContact *self, PWSTR* ppNetworkSourceId) get_NetworkSourceIdString;
				public function HRESULT(IContactAggregationContact *self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) get_RemoteObjectId;
				public function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB* pRemoteObjectId) put_RemoteObjectId;
				public function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) get_SyncIdentityHash;
				public function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationContactCollection : IUnknown
		{
			public const new Guid IID = .(0x826e66fa, 0x81de, 0x43ca, 0xa6, 0xfb, 0x8c, 0x78, 0x5c, 0xd9, 0x96, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationContactCollection *self, IContactAggregationContact** ppItem) FindFirst;
				public function HRESULT(IContactAggregationContactCollection *self, IContactAggregationContact** ppItem) FindNext;
				public function HRESULT(IContactAggregationContactCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pIdentityHash, IContactAggregationContact** ppItem) FindFirstByIdentityHash;
				public function HRESULT(IContactAggregationContactCollection *self, int32* pCount) get_Count;
				public function HRESULT(IContactAggregationContactCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteObjectId, IContactAggregationContact** ppItem) FindFirstByRemoteId;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregate : IUnknown
		{
			public const new Guid IID = .(0x7ed1c814, 0xcd30, 0x43c8, 0x9b, 0x8d, 0x2e, 0x48, 0x9e, 0x53, 0xd5, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationAggregate *self) Save;
				public function HRESULT(IContactAggregationAggregate *self, IContactAggregationContactCollection** pComponentItems) GetComponentItems;
				public function HRESULT(IContactAggregationAggregate *self, PWSTR pAggregateId) Link;
				public function HRESULT(IContactAggregationAggregate *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) get_Groups;
				public function HRESULT(IContactAggregationAggregate *self, PWSTR* ppAntiLink) get_AntiLink;
				public function HRESULT(IContactAggregationAggregate *self, PWSTR pAntiLink) put_AntiLink;
				public function HRESULT(IContactAggregationAggregate *self, uint32* pFavoriteOrder) get_FavoriteOrder;
				public function HRESULT(IContactAggregationAggregate *self, uint32 favoriteOrder) put_FavoriteOrder;
				public function HRESULT(IContactAggregationAggregate *self, PWSTR* ppItemId) get_Id;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregateCollection : IUnknown
		{
			public const new Guid IID = .(0x2359f3a6, 0x3a68, 0x40af, 0x98, 0xdb, 0x0f, 0x9e, 0xb1, 0x43, 0xc3, 0xbb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationAggregateCollection *self, IContactAggregationAggregate** ppAggregate) FindFirst;
				public function HRESULT(IContactAggregationAggregateCollection *self, PWSTR pAntiLinkId, IContactAggregationAggregate** ppAggregate) FindFirstByAntiLinkId;
				public function HRESULT(IContactAggregationAggregateCollection *self, IContactAggregationAggregate** ppAggregate) FindNext;
				public function HRESULT(IContactAggregationAggregateCollection *self, int32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationGroup : IUnknown
		{
			public const new Guid IID = .(0xc93c545f, 0x1284, 0x499b, 0x96, 0xaf, 0x07, 0x37, 0x2a, 0xf4, 0x73, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationGroup *self) Delete;
				public function HRESULT(IContactAggregationGroup *self) Save;
				public function HRESULT(IContactAggregationGroup *self, PWSTR pAggregateId) Add;
				public function HRESULT(IContactAggregationGroup *self, PWSTR pAggregateId) Remove;
				public function HRESULT(IContactAggregationGroup *self, IContactAggregationAggregateCollection** ppAggregateContactCollection) get_Members;
				public function HRESULT(IContactAggregationGroup *self, Guid* pGlobalObjectId) get_GlobalObjectId;
				public function HRESULT(IContactAggregationGroup *self, Guid* pGlobalObjectId) put_GlobalObjectId;
				public function HRESULT(IContactAggregationGroup *self, PWSTR* ppItemId) get_Id;
				public function HRESULT(IContactAggregationGroup *self, PWSTR* ppName) get_Name;
				public function HRESULT(IContactAggregationGroup *self, PWSTR pName) put_Name;
			}
		}
		[CRepr]
		public struct IContactAggregationGroupCollection : IUnknown
		{
			public const new Guid IID = .(0x20a19a9c, 0xd2f3, 0x4b83, 0x91, 0x43, 0xbe, 0xff, 0xd2, 0xcc, 0x22, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationGroupCollection *self, IContactAggregationGroup** ppGroup) FindFirst;
				public function HRESULT(IContactAggregationGroupCollection *self, Guid* pGlobalObjectId, IContactAggregationGroup** ppGroup) FindFirstByGlobalObjectId;
				public function HRESULT(IContactAggregationGroupCollection *self, IContactAggregationGroup** ppGroup) FindNext;
				public function HRESULT(IContactAggregationGroupCollection *self, uint32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationLink : IUnknown
		{
			public const new Guid IID = .(0xb6813323, 0xa183, 0x4654, 0x86, 0x27, 0x79, 0xb3, 0x0d, 0xe3, 0xa0, 0xec);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationLink *self) Delete;
				public function HRESULT(IContactAggregationLink *self) Save;
				public function HRESULT(IContactAggregationLink *self, PWSTR* ppAccountId) get_AccountId;
				public function HRESULT(IContactAggregationLink *self, PWSTR pAccountId) put_AccountId;
				public function HRESULT(IContactAggregationLink *self, PWSTR* ppItemId) get_Id;
				public function HRESULT(IContactAggregationLink *self, BOOL* pIsLinkResolved) get_IsLinkResolved;
				public function HRESULT(IContactAggregationLink *self, BOOL isLinkResolved) put_IsLinkResolved;
				public function HRESULT(IContactAggregationLink *self, PWSTR* ppNetworkSourceId) get_NetworkSourceIdString;
				public function HRESULT(IContactAggregationLink *self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) get_RemoteObjectId;
				public function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB* pRemoteObjectId) put_RemoteObjectId;
				public function HRESULT(IContactAggregationLink *self, PWSTR* ppServerPersonId) get_ServerPerson;
				public function HRESULT(IContactAggregationLink *self, PWSTR pServerPersonId) put_ServerPerson;
				public function HRESULT(IContactAggregationLink *self, PWSTR* ppServerPersonId) get_ServerPersonBaseline;
				public function HRESULT(IContactAggregationLink *self, PWSTR pServerPersonId) put_ServerPersonBaseline;
				public function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) get_SyncIdentityHash;
				public function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationLinkCollection : IUnknown
		{
			public const new Guid IID = .(0xf8bc0e93, 0xfb55, 0x4f28, 0xb9, 0xfa, 0xb1, 0xc2, 0x74, 0x15, 0x32, 0x92);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationLinkCollection *self, IContactAggregationLink** ppServerContactLink) FindFirst;
				public function HRESULT(IContactAggregationLinkCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteId, IContactAggregationLink** ppServerContactLink) FindFirstByRemoteId;
				public function HRESULT(IContactAggregationLinkCollection *self, IContactAggregationLink** ppServerContactLink) FindNext;
				public function HRESULT(IContactAggregationLinkCollection *self, uint32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPerson : IUnknown
		{
			public const new Guid IID = .(0x7fdc3d4b, 0x1b82, 0x4334, 0x85, 0xc5, 0x25, 0x18, 0x4e, 0xe5, 0xa5, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationServerPerson *self) Delete;
				public function HRESULT(IContactAggregationServerPerson *self) Save;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAggregateId) get_AggregateId;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR pAggregateId) put_AggregateId;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAntiLink) get_AntiLink;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR pAntiLink) put_AntiLink;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAntiLink) get_AntiLinkBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR pAntiLink) put_AntiLinkBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, uint32* pFavoriteOrder) get_FavoriteOrder;
				public function HRESULT(IContactAggregationServerPerson *self, uint32 favoriteOrder) put_FavoriteOrder;
				public function HRESULT(IContactAggregationServerPerson *self, uint32* pFavoriteOrder) get_FavoriteOrderBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, uint32 favoriteOrder) put_FavoriteOrderBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB** pGroups) get_Groups;
				public function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB* pGroups) put_Groups;
				public function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB** ppGroups) get_GroupsBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB* pGroups) put_GroupsBaseline;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppId) get_Id;
				public function HRESULT(IContactAggregationServerPerson *self, BOOL* pIsTombstone) get_IsTombstone;
				public function HRESULT(IContactAggregationServerPerson *self, BOOL isTombstone) put_IsTombstone;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppLinkedAggregateId) get_LinkedAggregateId;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR pLinkedAggregateId) put_LinkedAggregateId;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppObjectId) get_ObjectId;
				public function HRESULT(IContactAggregationServerPerson *self, PWSTR pObjectId) put_ObjectId;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPersonCollection : IUnknown
		{
			public const new Guid IID = .(0x4f730a4a, 0x6604, 0x47b6, 0xa9, 0x87, 0x66, 0x9e, 0xcf, 0x1e, 0x57, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IContactAggregationServerPersonCollection *self, IContactAggregationServerPerson** ppServerPerson) FindFirst;
				public function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pServerId, IContactAggregationServerPerson** ppServerPerson) FindFirstByServerId;
				public function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) FindFirstByAggregateId;
				public function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) FindFirstByLinkedAggregateId;
				public function HRESULT(IContactAggregationServerPersonCollection *self, IContactAggregationServerPerson** ppServerPerson) FindNext;
				public function HRESULT(IContactAggregationServerPersonCollection *self, uint32* pCount) get_Count;
			}
		}
		
	}
}
