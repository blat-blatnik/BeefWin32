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
			LOCAL = 0,
			EXTERNAL = 1,
		}
		[AllowDuplicates]
		public enum CONTACT_AGGREGATION_COLLECTION_OPTIONS : int32
		{
			DEFAULT = 0,
			INCLUDE_EXTERNAL = 1,
			EXTERNAL_ONLY = 2,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszAppName, PWSTR pszAppVersion) mut
			{
				return VT.Initialize(&this, pszAppName, pszAppVersion);
			}
			public HRESULT Load(PWSTR pszContactID, IContact** ppContact) mut
			{
				return VT.Load(&this, pszContactID, ppContact);
			}
			public HRESULT MergeContactIDs(PWSTR pszNewContactID, PWSTR pszOldContactID) mut
			{
				return VT.MergeContactIDs(&this, pszNewContactID, pszOldContactID);
			}
			public HRESULT GetMeContact(IContact** ppMeContact) mut
			{
				return VT.GetMeContact(&this, ppMeContact);
			}
			public HRESULT SetMeContact(IContact* pMeContact) mut
			{
				return VT.SetMeContact(&this, pMeContact);
			}
			public HRESULT GetContactCollection(IContactCollection** ppContactCollection) mut
			{
				return VT.GetContactCollection(&this, ppContactCollection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactManager *self, PWSTR pszAppName, PWSTR pszAppVersion) Initialize;
				public new function HRESULT(IContactManager *self, PWSTR pszContactID, IContact** ppContact) Load;
				public new function HRESULT(IContactManager *self, PWSTR pszNewContactID, PWSTR pszOldContactID) MergeContactIDs;
				public new function HRESULT(IContactManager *self, IContact** ppMeContact) GetMeContact;
				public new function HRESULT(IContactManager *self, IContact* pMeContact) SetMeContact;
				public new function HRESULT(IContactManager *self, IContactCollection** ppContactCollection) GetContactCollection;
			}
		}
		[CRepr]
		public struct IContactCollection : IUnknown
		{
			public const new Guid IID = .(0xb6afa338, 0xd779, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Next() mut
			{
				return VT.Next(&this);
			}
			public HRESULT GetCurrent(IContact** ppContact) mut
			{
				return VT.GetCurrent(&this, ppContact);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactCollection *self) Reset;
				public new function HRESULT(IContactCollection *self) Next;
				public new function HRESULT(IContactCollection *self, IContact** ppContact) GetCurrent;
			}
		}
		[CRepr]
		public struct IContactProperties : IUnknown
		{
			public const new Guid IID = .(0x70dd27dd, 0x5cbd, 0x46e8, 0xbe, 0xf0, 0x23, 0xb6, 0xb3, 0x46, 0x28, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(PWSTR pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, uint32* pdwcchPropertyValueRequired) mut
			{
				return VT.GetString(&this, pszPropertyName, dwFlags, pszValue, cchValue, pdwcchPropertyValueRequired);
			}
			public HRESULT GetDate(PWSTR pszPropertyName, uint32 dwFlags, FILETIME* pftDateTime) mut
			{
				return VT.GetDate(&this, pszPropertyName, dwFlags, pftDateTime);
			}
			public HRESULT GetBinary(PWSTR pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, uint32* pdwcchContentTypeRequired, IStream** ppStream) mut
			{
				return VT.GetBinary(&this, pszPropertyName, dwFlags, pszContentType, cchContentType, pdwcchContentTypeRequired, ppStream);
			}
			public HRESULT GetLabels(PWSTR pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, uint32* pdwcchLabelsRequired) mut
			{
				return VT.GetLabels(&this, pszArrayElementName, dwFlags, pszLabels, cchLabels, pdwcchLabelsRequired);
			}
			public HRESULT SetString(PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszValue) mut
			{
				return VT.SetString(&this, pszPropertyName, dwFlags, pszValue);
			}
			public HRESULT SetDate(PWSTR pszPropertyName, uint32 dwFlags, FILETIME ftDateTime) mut
			{
				return VT.SetDate(&this, pszPropertyName, dwFlags, ftDateTime);
			}
			public HRESULT SetBinary(PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszContentType, IStream* pStream) mut
			{
				return VT.SetBinary(&this, pszPropertyName, dwFlags, pszContentType, pStream);
			}
			public HRESULT SetLabels(PWSTR pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, PWSTR* ppszLabels) mut
			{
				return VT.SetLabels(&this, pszArrayElementName, dwFlags, dwLabelCount, ppszLabels);
			}
			public HRESULT CreateArrayNode(PWSTR pszArrayName, uint32 dwFlags, BOOL fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, uint32* pdwcchNewArrayElementNameRequired) mut
			{
				return VT.CreateArrayNode(&this, pszArrayName, dwFlags, fAppend, pszNewArrayElementName, cchNewArrayElementName, pdwcchNewArrayElementNameRequired);
			}
			public HRESULT DeleteProperty(PWSTR pszPropertyName, uint32 dwFlags) mut
			{
				return VT.DeleteProperty(&this, pszPropertyName, dwFlags);
			}
			public HRESULT DeleteArrayNode(PWSTR pszArrayElementName, uint32 dwFlags) mut
			{
				return VT.DeleteArrayNode(&this, pszArrayElementName, dwFlags);
			}
			public HRESULT DeleteLabels(PWSTR pszArrayElementName, uint32 dwFlags) mut
			{
				return VT.DeleteLabels(&this, pszArrayElementName, dwFlags);
			}
			public HRESULT GetPropertyCollection(IContactPropertyCollection** ppPropertyCollection, uint32 dwFlags, PWSTR pszMultiValueName, uint32 dwLabelCount, PWSTR* ppszLabels, BOOL fAnyLabelMatches) mut
			{
				return VT.GetPropertyCollection(&this, ppPropertyCollection, dwFlags, pszMultiValueName, dwLabelCount, ppszLabels, fAnyLabelMatches);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, uint32* pdwcchPropertyValueRequired) GetString;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, FILETIME* pftDateTime) GetDate;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, uint32* pdwcchContentTypeRequired, IStream** ppStream) GetBinary;
				public new function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, uint32* pdwcchLabelsRequired) GetLabels;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszValue) SetString;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, FILETIME ftDateTime) SetDate;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszContentType, IStream* pStream) SetBinary;
				public new function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, PWSTR* ppszLabels) SetLabels;
				public new function HRESULT(IContactProperties *self, PWSTR pszArrayName, uint32 dwFlags, BOOL fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, uint32* pdwcchNewArrayElementNameRequired) CreateArrayNode;
				public new function HRESULT(IContactProperties *self, PWSTR pszPropertyName, uint32 dwFlags) DeleteProperty;
				public new function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteArrayNode;
				public new function HRESULT(IContactProperties *self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteLabels;
				public new function HRESULT(IContactProperties *self, IContactPropertyCollection** ppPropertyCollection, uint32 dwFlags, PWSTR pszMultiValueName, uint32 dwLabelCount, PWSTR* ppszLabels, BOOL fAnyLabelMatches) GetPropertyCollection;
			}
		}
		[CRepr]
		public struct IContact : IUnknown
		{
			public const new Guid IID = .(0xf941b671, 0xbda7, 0x4f77, 0x88, 0x4a, 0xf4, 0x64, 0x62, 0xf2, 0x26, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContactID(char16* pszContactID, uint32 cchContactID, uint32* pdwcchContactIDRequired) mut
			{
				return VT.GetContactID(&this, pszContactID, cchContactID, pdwcchContactIDRequired);
			}
			public HRESULT GetPath(char16* pszPath, uint32 cchPath, uint32* pdwcchPathRequired) mut
			{
				return VT.GetPath(&this, pszPath, cchPath, pdwcchPathRequired);
			}
			public HRESULT CommitChanges(uint32 dwCommitFlags) mut
			{
				return VT.CommitChanges(&this, dwCommitFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContact *self, char16* pszContactID, uint32 cchContactID, uint32* pdwcchContactIDRequired) GetContactID;
				public new function HRESULT(IContact *self, char16* pszPath, uint32 cchPath, uint32* pdwcchPathRequired) GetPath;
				public new function HRESULT(IContact *self, uint32 dwCommitFlags) CommitChanges;
			}
		}
		[CRepr]
		public struct IContactPropertyCollection : IUnknown
		{
			public const new Guid IID = .(0xffd3adf8, 0xfa64, 0x4328, 0xb1, 0xb6, 0x2e, 0x0d, 0xb5, 0x09, 0xcb, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Next() mut
			{
				return VT.Next(&this);
			}
			public HRESULT GetPropertyName(char16* pszPropertyName, uint32 cchPropertyName, uint32* pdwcchPropertyNameRequired) mut
			{
				return VT.GetPropertyName(&this, pszPropertyName, cchPropertyName, pdwcchPropertyNameRequired);
			}
			public HRESULT GetPropertyType(uint32* pdwType) mut
			{
				return VT.GetPropertyType(&this, pdwType);
			}
			public HRESULT GetPropertyVersion(uint32* pdwVersion) mut
			{
				return VT.GetPropertyVersion(&this, pdwVersion);
			}
			public HRESULT GetPropertyModificationDate(FILETIME* pftModificationDate) mut
			{
				return VT.GetPropertyModificationDate(&this, pftModificationDate);
			}
			public HRESULT GetPropertyArrayElementID(char16* pszArrayElementID, uint32 cchArrayElementID, uint32* pdwcchArrayElementIDRequired) mut
			{
				return VT.GetPropertyArrayElementID(&this, pszArrayElementID, cchArrayElementID, pdwcchArrayElementIDRequired);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactPropertyCollection *self) Reset;
				public new function HRESULT(IContactPropertyCollection *self) Next;
				public new function HRESULT(IContactPropertyCollection *self, char16* pszPropertyName, uint32 cchPropertyName, uint32* pdwcchPropertyNameRequired) GetPropertyName;
				public new function HRESULT(IContactPropertyCollection *self, uint32* pdwType) GetPropertyType;
				public new function HRESULT(IContactPropertyCollection *self, uint32* pdwVersion) GetPropertyVersion;
				public new function HRESULT(IContactPropertyCollection *self, FILETIME* pftModificationDate) GetPropertyModificationDate;
				public new function HRESULT(IContactPropertyCollection *self, char16* pszArrayElementID, uint32 cchArrayElementID, uint32* pdwcchArrayElementIDRequired) GetPropertyArrayElementID;
			}
		}
		[CRepr]
		public struct IContactAggregationManager : IUnknown
		{
			public const new Guid IID = .(0x1d865989, 0x4b1f, 0x4b60, 0x8f, 0x34, 0xc2, 0xad, 0x46, 0x8b, 0x2b, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersionInfo(int32* plMajorVersion, int32* plMinorVersion) mut
			{
				return VT.GetVersionInfo(&this, plMajorVersion, plMinorVersion);
			}
			public HRESULT CreateOrOpenGroup(PWSTR pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, BOOL* pCreatedGroup, IContactAggregationGroup** ppGroup) mut
			{
				return VT.CreateOrOpenGroup(&this, pGroupName, options, pCreatedGroup, ppGroup);
			}
			public HRESULT CreateExternalContact(IContactAggregationContact** ppItem) mut
			{
				return VT.CreateExternalContact(&this, ppItem);
			}
			public HRESULT CreateServerPerson(IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.CreateServerPerson(&this, ppServerPerson);
			}
			public HRESULT CreateServerContactLink(IContactAggregationLink** ppServerContactLink) mut
			{
				return VT.CreateServerContactLink(&this, ppServerContactLink);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			public HRESULT OpenAggregateContact(PWSTR pItemId, IContactAggregationAggregate** ppItem) mut
			{
				return VT.OpenAggregateContact(&this, pItemId, ppItem);
			}
			public HRESULT OpenContact(PWSTR pItemId, IContactAggregationContact** ppItem) mut
			{
				return VT.OpenContact(&this, pItemId, ppItem);
			}
			public HRESULT OpenServerContactLink(PWSTR pItemId, IContactAggregationLink** ppItem) mut
			{
				return VT.OpenServerContactLink(&this, pItemId, ppItem);
			}
			public HRESULT OpenServerPerson(PWSTR pItemId, IContactAggregationServerPerson** ppItem) mut
			{
				return VT.OpenServerPerson(&this, pItemId, ppItem);
			}
			public HRESULT get_Contacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationContactCollection** ppItems) mut
			{
				return VT.get_Contacts(&this, options, ppItems);
			}
			public HRESULT get_AggregateContacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationAggregateCollection** ppAggregates) mut
			{
				return VT.get_AggregateContacts(&this, options, ppAggregates);
			}
			public HRESULT get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) mut
			{
				return VT.get_Groups(&this, options, ppGroups);
			}
			public HRESULT get_ServerPersons(IContactAggregationServerPersonCollection** ppServerPersonCollection) mut
			{
				return VT.get_ServerPersons(&this, ppServerPersonCollection);
			}
			public HRESULT get_ServerContactLinks(PWSTR pPersonItemId, IContactAggregationLinkCollection** ppServerContactLinkCollection) mut
			{
				return VT.get_ServerContactLinks(&this, pPersonItemId, ppServerContactLinkCollection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationManager *self, int32* plMajorVersion, int32* plMinorVersion) GetVersionInfo;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, BOOL* pCreatedGroup, IContactAggregationGroup** ppGroup) CreateOrOpenGroup;
				public new function HRESULT(IContactAggregationManager *self, IContactAggregationContact** ppItem) CreateExternalContact;
				public new function HRESULT(IContactAggregationManager *self, IContactAggregationServerPerson** ppServerPerson) CreateServerPerson;
				public new function HRESULT(IContactAggregationManager *self, IContactAggregationLink** ppServerContactLink) CreateServerContactLink;
				public new function HRESULT(IContactAggregationManager *self) Flush;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationAggregate** ppItem) OpenAggregateContact;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationContact** ppItem) OpenContact;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationLink** ppItem) OpenServerContactLink;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pItemId, IContactAggregationServerPerson** ppItem) OpenServerPerson;
				public new function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationContactCollection** ppItems) get_Contacts;
				public new function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationAggregateCollection** ppAggregates) get_AggregateContacts;
				public new function HRESULT(IContactAggregationManager *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) get_Groups;
				public new function HRESULT(IContactAggregationManager *self, IContactAggregationServerPersonCollection** ppServerPersonCollection) get_ServerPersons;
				public new function HRESULT(IContactAggregationManager *self, PWSTR pPersonItemId, IContactAggregationLinkCollection** ppServerContactLinkCollection) get_ServerContactLinks;
			}
		}
		[CRepr]
		public struct IContactAggregationContact : IUnknown
		{
			public const new Guid IID = .(0x1eb22e86, 0x4c86, 0x41f0, 0x9f, 0x9f, 0xc2, 0x51, 0xe9, 0xfd, 0xa6, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT MoveToAggregate(PWSTR pAggregateId) mut
			{
				return VT.MoveToAggregate(&this, pAggregateId);
			}
			public HRESULT Unlink() mut
			{
				return VT.Unlink(&this);
			}
			public HRESULT get_AccountId(PWSTR* ppAccountId) mut
			{
				return VT.get_AccountId(&this, ppAccountId);
			}
			public HRESULT put_AccountId(PWSTR pAccountId) mut
			{
				return VT.put_AccountId(&this, pAccountId);
			}
			public HRESULT get_AggregateId(PWSTR* ppAggregateId) mut
			{
				return VT.get_AggregateId(&this, ppAggregateId);
			}
			public HRESULT get_Id(PWSTR* ppItemId) mut
			{
				return VT.get_Id(&this, ppItemId);
			}
			public HRESULT get_IsMe(BOOL* pIsMe) mut
			{
				return VT.get_IsMe(&this, pIsMe);
			}
			public HRESULT get_IsExternal(BOOL* pIsExternal) mut
			{
				return VT.get_IsExternal(&this, pIsExternal);
			}
			public HRESULT get_NetworkSourceId(uint32* pNetworkSourceId) mut
			{
				return VT.get_NetworkSourceId(&this, pNetworkSourceId);
			}
			public HRESULT put_NetworkSourceId(uint32 networkSourceId) mut
			{
				return VT.put_NetworkSourceId(&this, networkSourceId);
			}
			public HRESULT get_NetworkSourceIdString(PWSTR* ppNetworkSourceId) mut
			{
				return VT.get_NetworkSourceIdString(&this, ppNetworkSourceId);
			}
			public HRESULT put_NetworkSourceIdString(PWSTR pNetworkSourceId) mut
			{
				return VT.put_NetworkSourceIdString(&this, pNetworkSourceId);
			}
			public HRESULT get_RemoteObjectId(CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) mut
			{
				return VT.get_RemoteObjectId(&this, ppRemoteObjectId);
			}
			public HRESULT put_RemoteObjectId(CONTACT_AGGREGATION_BLOB* pRemoteObjectId) mut
			{
				return VT.put_RemoteObjectId(&this, pRemoteObjectId);
			}
			public HRESULT get_SyncIdentityHash(CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) mut
			{
				return VT.get_SyncIdentityHash(&this, ppSyncIdentityHash);
			}
			public HRESULT put_SyncIdentityHash(CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) mut
			{
				return VT.put_SyncIdentityHash(&this, pSyncIdentityHash);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationContact *self) Delete;
				public new function HRESULT(IContactAggregationContact *self) Save;
				public new function HRESULT(IContactAggregationContact *self, PWSTR pAggregateId) MoveToAggregate;
				public new function HRESULT(IContactAggregationContact *self) Unlink;
				public new function HRESULT(IContactAggregationContact *self, PWSTR* ppAccountId) get_AccountId;
				public new function HRESULT(IContactAggregationContact *self, PWSTR pAccountId) put_AccountId;
				public new function HRESULT(IContactAggregationContact *self, PWSTR* ppAggregateId) get_AggregateId;
				public new function HRESULT(IContactAggregationContact *self, PWSTR* ppItemId) get_Id;
				public new function HRESULT(IContactAggregationContact *self, BOOL* pIsMe) get_IsMe;
				public new function HRESULT(IContactAggregationContact *self, BOOL* pIsExternal) get_IsExternal;
				public new function HRESULT(IContactAggregationContact *self, uint32* pNetworkSourceId) get_NetworkSourceId;
				public new function HRESULT(IContactAggregationContact *self, uint32 networkSourceId) put_NetworkSourceId;
				public new function HRESULT(IContactAggregationContact *self, PWSTR* ppNetworkSourceId) get_NetworkSourceIdString;
				public new function HRESULT(IContactAggregationContact *self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public new function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) get_RemoteObjectId;
				public new function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB* pRemoteObjectId) put_RemoteObjectId;
				public new function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) get_SyncIdentityHash;
				public new function HRESULT(IContactAggregationContact *self, CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationContactCollection : IUnknown
		{
			public const new Guid IID = .(0x826e66fa, 0x81de, 0x43ca, 0xa6, 0xfb, 0x8c, 0x78, 0x5c, 0xd9, 0x96, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(IContactAggregationContact** ppItem) mut
			{
				return VT.FindFirst(&this, ppItem);
			}
			public HRESULT FindNext(IContactAggregationContact** ppItem) mut
			{
				return VT.FindNext(&this, ppItem);
			}
			public HRESULT FindFirstByIdentityHash(PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pIdentityHash, IContactAggregationContact** ppItem) mut
			{
				return VT.FindFirstByIdentityHash(&this, pSourceType, pAccountId, pIdentityHash, ppItem);
			}
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			public HRESULT FindFirstByRemoteId(PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteObjectId, IContactAggregationContact** ppItem) mut
			{
				return VT.FindFirstByRemoteId(&this, pSourceType, pAccountId, pRemoteObjectId, ppItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationContactCollection *self, IContactAggregationContact** ppItem) FindFirst;
				public new function HRESULT(IContactAggregationContactCollection *self, IContactAggregationContact** ppItem) FindNext;
				public new function HRESULT(IContactAggregationContactCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pIdentityHash, IContactAggregationContact** ppItem) FindFirstByIdentityHash;
				public new function HRESULT(IContactAggregationContactCollection *self, int32* pCount) get_Count;
				public new function HRESULT(IContactAggregationContactCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteObjectId, IContactAggregationContact** ppItem) FindFirstByRemoteId;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregate : IUnknown
		{
			public const new Guid IID = .(0x7ed1c814, 0xcd30, 0x43c8, 0x9b, 0x8d, 0x2e, 0x48, 0x9e, 0x53, 0xd5, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT GetComponentItems(IContactAggregationContactCollection** pComponentItems) mut
			{
				return VT.GetComponentItems(&this, pComponentItems);
			}
			public HRESULT Link(PWSTR pAggregateId) mut
			{
				return VT.Link(&this, pAggregateId);
			}
			public HRESULT get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) mut
			{
				return VT.get_Groups(&this, options, ppGroups);
			}
			public HRESULT get_AntiLink(PWSTR* ppAntiLink) mut
			{
				return VT.get_AntiLink(&this, ppAntiLink);
			}
			public HRESULT put_AntiLink(PWSTR pAntiLink) mut
			{
				return VT.put_AntiLink(&this, pAntiLink);
			}
			public HRESULT get_FavoriteOrder(uint32* pFavoriteOrder) mut
			{
				return VT.get_FavoriteOrder(&this, pFavoriteOrder);
			}
			public HRESULT put_FavoriteOrder(uint32 favoriteOrder) mut
			{
				return VT.put_FavoriteOrder(&this, favoriteOrder);
			}
			public HRESULT get_Id(PWSTR* ppItemId) mut
			{
				return VT.get_Id(&this, ppItemId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationAggregate *self) Save;
				public new function HRESULT(IContactAggregationAggregate *self, IContactAggregationContactCollection** pComponentItems) GetComponentItems;
				public new function HRESULT(IContactAggregationAggregate *self, PWSTR pAggregateId) Link;
				public new function HRESULT(IContactAggregationAggregate *self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, IContactAggregationGroupCollection** ppGroups) get_Groups;
				public new function HRESULT(IContactAggregationAggregate *self, PWSTR* ppAntiLink) get_AntiLink;
				public new function HRESULT(IContactAggregationAggregate *self, PWSTR pAntiLink) put_AntiLink;
				public new function HRESULT(IContactAggregationAggregate *self, uint32* pFavoriteOrder) get_FavoriteOrder;
				public new function HRESULT(IContactAggregationAggregate *self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function HRESULT(IContactAggregationAggregate *self, PWSTR* ppItemId) get_Id;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregateCollection : IUnknown
		{
			public const new Guid IID = .(0x2359f3a6, 0x3a68, 0x40af, 0x98, 0xdb, 0x0f, 0x9e, 0xb1, 0x43, 0xc3, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(IContactAggregationAggregate** ppAggregate) mut
			{
				return VT.FindFirst(&this, ppAggregate);
			}
			public HRESULT FindFirstByAntiLinkId(PWSTR pAntiLinkId, IContactAggregationAggregate** ppAggregate) mut
			{
				return VT.FindFirstByAntiLinkId(&this, pAntiLinkId, ppAggregate);
			}
			public HRESULT FindNext(IContactAggregationAggregate** ppAggregate) mut
			{
				return VT.FindNext(&this, ppAggregate);
			}
			public HRESULT get_Count(int32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationAggregateCollection *self, IContactAggregationAggregate** ppAggregate) FindFirst;
				public new function HRESULT(IContactAggregationAggregateCollection *self, PWSTR pAntiLinkId, IContactAggregationAggregate** ppAggregate) FindFirstByAntiLinkId;
				public new function HRESULT(IContactAggregationAggregateCollection *self, IContactAggregationAggregate** ppAggregate) FindNext;
				public new function HRESULT(IContactAggregationAggregateCollection *self, int32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationGroup : IUnknown
		{
			public const new Guid IID = .(0xc93c545f, 0x1284, 0x499b, 0x96, 0xaf, 0x07, 0x37, 0x2a, 0xf4, 0x73, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT Add(PWSTR pAggregateId) mut
			{
				return VT.Add(&this, pAggregateId);
			}
			public HRESULT Remove(PWSTR pAggregateId) mut
			{
				return VT.Remove(&this, pAggregateId);
			}
			public HRESULT get_Members(IContactAggregationAggregateCollection** ppAggregateContactCollection) mut
			{
				return VT.get_Members(&this, ppAggregateContactCollection);
			}
			public HRESULT get_GlobalObjectId(Guid* pGlobalObjectId) mut
			{
				return VT.get_GlobalObjectId(&this, pGlobalObjectId);
			}
			public HRESULT put_GlobalObjectId(Guid* pGlobalObjectId) mut
			{
				return VT.put_GlobalObjectId(&this, pGlobalObjectId);
			}
			public HRESULT get_Id(PWSTR* ppItemId) mut
			{
				return VT.get_Id(&this, ppItemId);
			}
			public HRESULT get_Name(PWSTR* ppName) mut
			{
				return VT.get_Name(&this, ppName);
			}
			public HRESULT put_Name(PWSTR pName) mut
			{
				return VT.put_Name(&this, pName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationGroup *self) Delete;
				public new function HRESULT(IContactAggregationGroup *self) Save;
				public new function HRESULT(IContactAggregationGroup *self, PWSTR pAggregateId) Add;
				public new function HRESULT(IContactAggregationGroup *self, PWSTR pAggregateId) Remove;
				public new function HRESULT(IContactAggregationGroup *self, IContactAggregationAggregateCollection** ppAggregateContactCollection) get_Members;
				public new function HRESULT(IContactAggregationGroup *self, Guid* pGlobalObjectId) get_GlobalObjectId;
				public new function HRESULT(IContactAggregationGroup *self, Guid* pGlobalObjectId) put_GlobalObjectId;
				public new function HRESULT(IContactAggregationGroup *self, PWSTR* ppItemId) get_Id;
				public new function HRESULT(IContactAggregationGroup *self, PWSTR* ppName) get_Name;
				public new function HRESULT(IContactAggregationGroup *self, PWSTR pName) put_Name;
			}
		}
		[CRepr]
		public struct IContactAggregationGroupCollection : IUnknown
		{
			public const new Guid IID = .(0x20a19a9c, 0xd2f3, 0x4b83, 0x91, 0x43, 0xbe, 0xff, 0xd2, 0xcc, 0x22, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(IContactAggregationGroup** ppGroup) mut
			{
				return VT.FindFirst(&this, ppGroup);
			}
			public HRESULT FindFirstByGlobalObjectId(Guid* pGlobalObjectId, IContactAggregationGroup** ppGroup) mut
			{
				return VT.FindFirstByGlobalObjectId(&this, pGlobalObjectId, ppGroup);
			}
			public HRESULT FindNext(IContactAggregationGroup** ppGroup) mut
			{
				return VT.FindNext(&this, ppGroup);
			}
			public HRESULT get_Count(uint32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationGroupCollection *self, IContactAggregationGroup** ppGroup) FindFirst;
				public new function HRESULT(IContactAggregationGroupCollection *self, Guid* pGlobalObjectId, IContactAggregationGroup** ppGroup) FindFirstByGlobalObjectId;
				public new function HRESULT(IContactAggregationGroupCollection *self, IContactAggregationGroup** ppGroup) FindNext;
				public new function HRESULT(IContactAggregationGroupCollection *self, uint32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationLink : IUnknown
		{
			public const new Guid IID = .(0xb6813323, 0xa183, 0x4654, 0x86, 0x27, 0x79, 0xb3, 0x0d, 0xe3, 0xa0, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT get_AccountId(PWSTR* ppAccountId) mut
			{
				return VT.get_AccountId(&this, ppAccountId);
			}
			public HRESULT put_AccountId(PWSTR pAccountId) mut
			{
				return VT.put_AccountId(&this, pAccountId);
			}
			public HRESULT get_Id(PWSTR* ppItemId) mut
			{
				return VT.get_Id(&this, ppItemId);
			}
			public HRESULT get_IsLinkResolved(BOOL* pIsLinkResolved) mut
			{
				return VT.get_IsLinkResolved(&this, pIsLinkResolved);
			}
			public HRESULT put_IsLinkResolved(BOOL isLinkResolved) mut
			{
				return VT.put_IsLinkResolved(&this, isLinkResolved);
			}
			public HRESULT get_NetworkSourceIdString(PWSTR* ppNetworkSourceId) mut
			{
				return VT.get_NetworkSourceIdString(&this, ppNetworkSourceId);
			}
			public HRESULT put_NetworkSourceIdString(PWSTR pNetworkSourceId) mut
			{
				return VT.put_NetworkSourceIdString(&this, pNetworkSourceId);
			}
			public HRESULT get_RemoteObjectId(CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) mut
			{
				return VT.get_RemoteObjectId(&this, ppRemoteObjectId);
			}
			public HRESULT put_RemoteObjectId(CONTACT_AGGREGATION_BLOB* pRemoteObjectId) mut
			{
				return VT.put_RemoteObjectId(&this, pRemoteObjectId);
			}
			public HRESULT get_ServerPerson(PWSTR* ppServerPersonId) mut
			{
				return VT.get_ServerPerson(&this, ppServerPersonId);
			}
			public HRESULT put_ServerPerson(PWSTR pServerPersonId) mut
			{
				return VT.put_ServerPerson(&this, pServerPersonId);
			}
			public HRESULT get_ServerPersonBaseline(PWSTR* ppServerPersonId) mut
			{
				return VT.get_ServerPersonBaseline(&this, ppServerPersonId);
			}
			public HRESULT put_ServerPersonBaseline(PWSTR pServerPersonId) mut
			{
				return VT.put_ServerPersonBaseline(&this, pServerPersonId);
			}
			public HRESULT get_SyncIdentityHash(CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) mut
			{
				return VT.get_SyncIdentityHash(&this, ppSyncIdentityHash);
			}
			public HRESULT put_SyncIdentityHash(CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) mut
			{
				return VT.put_SyncIdentityHash(&this, pSyncIdentityHash);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationLink *self) Delete;
				public new function HRESULT(IContactAggregationLink *self) Save;
				public new function HRESULT(IContactAggregationLink *self, PWSTR* ppAccountId) get_AccountId;
				public new function HRESULT(IContactAggregationLink *self, PWSTR pAccountId) put_AccountId;
				public new function HRESULT(IContactAggregationLink *self, PWSTR* ppItemId) get_Id;
				public new function HRESULT(IContactAggregationLink *self, BOOL* pIsLinkResolved) get_IsLinkResolved;
				public new function HRESULT(IContactAggregationLink *self, BOOL isLinkResolved) put_IsLinkResolved;
				public new function HRESULT(IContactAggregationLink *self, PWSTR* ppNetworkSourceId) get_NetworkSourceIdString;
				public new function HRESULT(IContactAggregationLink *self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public new function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB** ppRemoteObjectId) get_RemoteObjectId;
				public new function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB* pRemoteObjectId) put_RemoteObjectId;
				public new function HRESULT(IContactAggregationLink *self, PWSTR* ppServerPersonId) get_ServerPerson;
				public new function HRESULT(IContactAggregationLink *self, PWSTR pServerPersonId) put_ServerPerson;
				public new function HRESULT(IContactAggregationLink *self, PWSTR* ppServerPersonId) get_ServerPersonBaseline;
				public new function HRESULT(IContactAggregationLink *self, PWSTR pServerPersonId) put_ServerPersonBaseline;
				public new function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB** ppSyncIdentityHash) get_SyncIdentityHash;
				public new function HRESULT(IContactAggregationLink *self, CONTACT_AGGREGATION_BLOB* pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationLinkCollection : IUnknown
		{
			public const new Guid IID = .(0xf8bc0e93, 0xfb55, 0x4f28, 0xb9, 0xfa, 0xb1, 0xc2, 0x74, 0x15, 0x32, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(IContactAggregationLink** ppServerContactLink) mut
			{
				return VT.FindFirst(&this, ppServerContactLink);
			}
			public HRESULT FindFirstByRemoteId(PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteId, IContactAggregationLink** ppServerContactLink) mut
			{
				return VT.FindFirstByRemoteId(&this, pSourceType, pAccountId, pRemoteId, ppServerContactLink);
			}
			public HRESULT FindNext(IContactAggregationLink** ppServerContactLink) mut
			{
				return VT.FindNext(&this, ppServerContactLink);
			}
			public HRESULT get_Count(uint32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationLinkCollection *self, IContactAggregationLink** ppServerContactLink) FindFirst;
				public new function HRESULT(IContactAggregationLinkCollection *self, PWSTR pSourceType, PWSTR pAccountId, CONTACT_AGGREGATION_BLOB* pRemoteId, IContactAggregationLink** ppServerContactLink) FindFirstByRemoteId;
				public new function HRESULT(IContactAggregationLinkCollection *self, IContactAggregationLink** ppServerContactLink) FindNext;
				public new function HRESULT(IContactAggregationLinkCollection *self, uint32* pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPerson : IUnknown
		{
			public const new Guid IID = .(0x7fdc3d4b, 0x1b82, 0x4334, 0x85, 0xc5, 0x25, 0x18, 0x4e, 0xe5, 0xa5, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT get_AggregateId(PWSTR* ppAggregateId) mut
			{
				return VT.get_AggregateId(&this, ppAggregateId);
			}
			public HRESULT put_AggregateId(PWSTR pAggregateId) mut
			{
				return VT.put_AggregateId(&this, pAggregateId);
			}
			public HRESULT get_AntiLink(PWSTR* ppAntiLink) mut
			{
				return VT.get_AntiLink(&this, ppAntiLink);
			}
			public HRESULT put_AntiLink(PWSTR pAntiLink) mut
			{
				return VT.put_AntiLink(&this, pAntiLink);
			}
			public HRESULT get_AntiLinkBaseline(PWSTR* ppAntiLink) mut
			{
				return VT.get_AntiLinkBaseline(&this, ppAntiLink);
			}
			public HRESULT put_AntiLinkBaseline(PWSTR pAntiLink) mut
			{
				return VT.put_AntiLinkBaseline(&this, pAntiLink);
			}
			public HRESULT get_FavoriteOrder(uint32* pFavoriteOrder) mut
			{
				return VT.get_FavoriteOrder(&this, pFavoriteOrder);
			}
			public HRESULT put_FavoriteOrder(uint32 favoriteOrder) mut
			{
				return VT.put_FavoriteOrder(&this, favoriteOrder);
			}
			public HRESULT get_FavoriteOrderBaseline(uint32* pFavoriteOrder) mut
			{
				return VT.get_FavoriteOrderBaseline(&this, pFavoriteOrder);
			}
			public HRESULT put_FavoriteOrderBaseline(uint32 favoriteOrder) mut
			{
				return VT.put_FavoriteOrderBaseline(&this, favoriteOrder);
			}
			public HRESULT get_Groups(CONTACT_AGGREGATION_BLOB** pGroups) mut
			{
				return VT.get_Groups(&this, pGroups);
			}
			public HRESULT put_Groups(CONTACT_AGGREGATION_BLOB* pGroups) mut
			{
				return VT.put_Groups(&this, pGroups);
			}
			public HRESULT get_GroupsBaseline(CONTACT_AGGREGATION_BLOB** ppGroups) mut
			{
				return VT.get_GroupsBaseline(&this, ppGroups);
			}
			public HRESULT put_GroupsBaseline(CONTACT_AGGREGATION_BLOB* pGroups) mut
			{
				return VT.put_GroupsBaseline(&this, pGroups);
			}
			public HRESULT get_Id(PWSTR* ppId) mut
			{
				return VT.get_Id(&this, ppId);
			}
			public HRESULT get_IsTombstone(BOOL* pIsTombstone) mut
			{
				return VT.get_IsTombstone(&this, pIsTombstone);
			}
			public HRESULT put_IsTombstone(BOOL isTombstone) mut
			{
				return VT.put_IsTombstone(&this, isTombstone);
			}
			public HRESULT get_LinkedAggregateId(PWSTR* ppLinkedAggregateId) mut
			{
				return VT.get_LinkedAggregateId(&this, ppLinkedAggregateId);
			}
			public HRESULT put_LinkedAggregateId(PWSTR pLinkedAggregateId) mut
			{
				return VT.put_LinkedAggregateId(&this, pLinkedAggregateId);
			}
			public HRESULT get_ObjectId(PWSTR* ppObjectId) mut
			{
				return VT.get_ObjectId(&this, ppObjectId);
			}
			public HRESULT put_ObjectId(PWSTR pObjectId) mut
			{
				return VT.put_ObjectId(&this, pObjectId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationServerPerson *self) Delete;
				public new function HRESULT(IContactAggregationServerPerson *self) Save;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAggregateId) get_AggregateId;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR pAggregateId) put_AggregateId;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAntiLink) get_AntiLink;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR pAntiLink) put_AntiLink;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppAntiLink) get_AntiLinkBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR pAntiLink) put_AntiLinkBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, uint32* pFavoriteOrder) get_FavoriteOrder;
				public new function HRESULT(IContactAggregationServerPerson *self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function HRESULT(IContactAggregationServerPerson *self, uint32* pFavoriteOrder) get_FavoriteOrderBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, uint32 favoriteOrder) put_FavoriteOrderBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB** pGroups) get_Groups;
				public new function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB* pGroups) put_Groups;
				public new function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB** ppGroups) get_GroupsBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, CONTACT_AGGREGATION_BLOB* pGroups) put_GroupsBaseline;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppId) get_Id;
				public new function HRESULT(IContactAggregationServerPerson *self, BOOL* pIsTombstone) get_IsTombstone;
				public new function HRESULT(IContactAggregationServerPerson *self, BOOL isTombstone) put_IsTombstone;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppLinkedAggregateId) get_LinkedAggregateId;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR pLinkedAggregateId) put_LinkedAggregateId;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR* ppObjectId) get_ObjectId;
				public new function HRESULT(IContactAggregationServerPerson *self, PWSTR pObjectId) put_ObjectId;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPersonCollection : IUnknown
		{
			public const new Guid IID = .(0x4f730a4a, 0x6604, 0x47b6, 0xa9, 0x87, 0x66, 0x9e, 0xcf, 0x1e, 0x57, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.FindFirst(&this, ppServerPerson);
			}
			public HRESULT FindFirstByServerId(PWSTR pServerId, IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.FindFirstByServerId(&this, pServerId, ppServerPerson);
			}
			public HRESULT FindFirstByAggregateId(PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.FindFirstByAggregateId(&this, pAggregateId, ppServerPerson);
			}
			public HRESULT FindFirstByLinkedAggregateId(PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.FindFirstByLinkedAggregateId(&this, pAggregateId, ppServerPerson);
			}
			public HRESULT FindNext(IContactAggregationServerPerson** ppServerPerson) mut
			{
				return VT.FindNext(&this, ppServerPerson);
			}
			public HRESULT get_Count(uint32* pCount) mut
			{
				return VT.get_Count(&this, pCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactAggregationServerPersonCollection *self, IContactAggregationServerPerson** ppServerPerson) FindFirst;
				public new function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pServerId, IContactAggregationServerPerson** ppServerPerson) FindFirstByServerId;
				public new function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) FindFirstByAggregateId;
				public new function HRESULT(IContactAggregationServerPersonCollection *self, PWSTR pAggregateId, IContactAggregationServerPerson** ppServerPerson) FindFirstByLinkedAggregateId;
				public new function HRESULT(IContactAggregationServerPersonCollection *self, IContactAggregationServerPerson** ppServerPerson) FindNext;
				public new function HRESULT(IContactAggregationServerPersonCollection *self, uint32* pCount) get_Count;
			}
		}
		
	}
}
