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
		
		public enum CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS : int32
		{
			LOCAL = 0,
			EXTERNAL = 1,
		}
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
			
			public HRESULT Initialize(PWSTR pszAppName, PWSTR pszAppVersion) mut => VT.Initialize(ref this, pszAppName, pszAppVersion);
			public HRESULT Load(PWSTR pszContactID, out IContact* ppContact) mut => VT.Load(ref this, pszContactID, out ppContact);
			public HRESULT MergeContactIDs(PWSTR pszNewContactID, PWSTR pszOldContactID) mut => VT.MergeContactIDs(ref this, pszNewContactID, pszOldContactID);
			public HRESULT GetMeContact(out IContact* ppMeContact) mut => VT.GetMeContact(ref this, out ppMeContact);
			public HRESULT SetMeContact(ref IContact pMeContact) mut => VT.SetMeContact(ref this, ref pMeContact);
			public HRESULT GetContactCollection(out IContactCollection* ppContactCollection) mut => VT.GetContactCollection(ref this, out ppContactCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, PWSTR pszAppName, PWSTR pszAppVersion) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, PWSTR pszContactID, out IContact* ppContact) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, PWSTR pszNewContactID, PWSTR pszOldContactID) MergeContactIDs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, out IContact* ppMeContact) GetMeContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, ref IContact pMeContact) SetMeContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManager self, out IContactCollection* ppContactCollection) GetContactCollection;
			}
		}
		[CRepr]
		public struct IContactCollection : IUnknown
		{
			public const new Guid IID = .(0xb6afa338, 0xd779, 0x11d9, 0x8b, 0xde, 0xf6, 0x6b, 0xad, 0x1e, 0x3f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next() mut => VT.Next(ref this);
			public HRESULT GetCurrent(out IContact* ppContact) mut => VT.GetCurrent(ref this, out ppContact);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactCollection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactCollection self) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactCollection self, out IContact* ppContact) GetCurrent;
			}
		}
		[CRepr]
		public struct IContactProperties : IUnknown
		{
			public const new Guid IID = .(0x70dd27dd, 0x5cbd, 0x46e8, 0xbe, 0xf0, 0x23, 0xb6, 0xb3, 0x46, 0x28, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(PWSTR pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, out uint32 pdwcchPropertyValueRequired) mut => VT.GetString(ref this, pszPropertyName, dwFlags, pszValue, cchValue, out pdwcchPropertyValueRequired);
			public HRESULT GetDate(PWSTR pszPropertyName, uint32 dwFlags, out FILETIME pftDateTime) mut => VT.GetDate(ref this, pszPropertyName, dwFlags, out pftDateTime);
			public HRESULT GetBinary(PWSTR pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, out uint32 pdwcchContentTypeRequired, out IStream* ppStream) mut => VT.GetBinary(ref this, pszPropertyName, dwFlags, pszContentType, cchContentType, out pdwcchContentTypeRequired, out ppStream);
			public HRESULT GetLabels(PWSTR pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, out uint32 pdwcchLabelsRequired) mut => VT.GetLabels(ref this, pszArrayElementName, dwFlags, pszLabels, cchLabels, out pdwcchLabelsRequired);
			public HRESULT SetString(PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszValue) mut => VT.SetString(ref this, pszPropertyName, dwFlags, pszValue);
			public HRESULT SetDate(PWSTR pszPropertyName, uint32 dwFlags, FILETIME ftDateTime) mut => VT.SetDate(ref this, pszPropertyName, dwFlags, ftDateTime);
			public HRESULT SetBinary(PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszContentType, ref IStream pStream) mut => VT.SetBinary(ref this, pszPropertyName, dwFlags, pszContentType, ref pStream);
			public HRESULT SetLabels(PWSTR pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, PWSTR* ppszLabels) mut => VT.SetLabels(ref this, pszArrayElementName, dwFlags, dwLabelCount, ppszLabels);
			public HRESULT CreateArrayNode(PWSTR pszArrayName, uint32 dwFlags, BOOL fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, out uint32 pdwcchNewArrayElementNameRequired) mut => VT.CreateArrayNode(ref this, pszArrayName, dwFlags, fAppend, pszNewArrayElementName, cchNewArrayElementName, out pdwcchNewArrayElementNameRequired);
			public HRESULT DeleteProperty(PWSTR pszPropertyName, uint32 dwFlags) mut => VT.DeleteProperty(ref this, pszPropertyName, dwFlags);
			public HRESULT DeleteArrayNode(PWSTR pszArrayElementName, uint32 dwFlags) mut => VT.DeleteArrayNode(ref this, pszArrayElementName, dwFlags);
			public HRESULT DeleteLabels(PWSTR pszArrayElementName, uint32 dwFlags) mut => VT.DeleteLabels(ref this, pszArrayElementName, dwFlags);
			public HRESULT GetPropertyCollection(out IContactPropertyCollection* ppPropertyCollection, uint32 dwFlags, PWSTR pszMultiValueName, uint32 dwLabelCount, PWSTR* ppszLabels, BOOL fAnyLabelMatches) mut => VT.GetPropertyCollection(ref this, out ppPropertyCollection, dwFlags, pszMultiValueName, dwLabelCount, ppszLabels, fAnyLabelMatches);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszValue, uint32 cchValue, out uint32 pdwcchPropertyValueRequired) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, out FILETIME pftDateTime) GetDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, char16* pszContentType, uint32 cchContentType, out uint32 pdwcchContentTypeRequired, out IStream* ppStream) GetBinary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszArrayElementName, uint32 dwFlags, char16* pszLabels, uint32 cchLabels, out uint32 pdwcchLabelsRequired) GetLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszValue) SetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, FILETIME ftDateTime) SetDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags, PWSTR pszContentType, ref IStream pStream) SetBinary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszArrayElementName, uint32 dwFlags, uint32 dwLabelCount, PWSTR* ppszLabels) SetLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszArrayName, uint32 dwFlags, BOOL fAppend, char16* pszNewArrayElementName, uint32 cchNewArrayElementName, out uint32 pdwcchNewArrayElementNameRequired) CreateArrayNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszPropertyName, uint32 dwFlags) DeleteProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteArrayNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, PWSTR pszArrayElementName, uint32 dwFlags) DeleteLabels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactProperties self, out IContactPropertyCollection* ppPropertyCollection, uint32 dwFlags, PWSTR pszMultiValueName, uint32 dwLabelCount, PWSTR* ppszLabels, BOOL fAnyLabelMatches) GetPropertyCollection;
			}
		}
		[CRepr]
		public struct IContact : IUnknown
		{
			public const new Guid IID = .(0xf941b671, 0xbda7, 0x4f77, 0x88, 0x4a, 0xf4, 0x64, 0x62, 0xf2, 0x26, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContactID(char16* pszContactID, uint32 cchContactID, out uint32 pdwcchContactIDRequired) mut => VT.GetContactID(ref this, pszContactID, cchContactID, out pdwcchContactIDRequired);
			public HRESULT GetPath(char16* pszPath, uint32 cchPath, out uint32 pdwcchPathRequired) mut => VT.GetPath(ref this, pszPath, cchPath, out pdwcchPathRequired);
			public HRESULT CommitChanges(uint32 dwCommitFlags) mut => VT.CommitChanges(ref this, dwCommitFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContact self, char16* pszContactID, uint32 cchContactID, out uint32 pdwcchContactIDRequired) GetContactID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContact self, char16* pszPath, uint32 cchPath, out uint32 pdwcchPathRequired) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContact self, uint32 dwCommitFlags) CommitChanges;
			}
		}
		[CRepr]
		public struct IContactPropertyCollection : IUnknown
		{
			public const new Guid IID = .(0xffd3adf8, 0xfa64, 0x4328, 0xb1, 0xb6, 0x2e, 0x0d, 0xb5, 0x09, 0xcb, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Next() mut => VT.Next(ref this);
			public HRESULT GetPropertyName(char16* pszPropertyName, uint32 cchPropertyName, out uint32 pdwcchPropertyNameRequired) mut => VT.GetPropertyName(ref this, pszPropertyName, cchPropertyName, out pdwcchPropertyNameRequired);
			public HRESULT GetPropertyType(out uint32 pdwType) mut => VT.GetPropertyType(ref this, out pdwType);
			public HRESULT GetPropertyVersion(out uint32 pdwVersion) mut => VT.GetPropertyVersion(ref this, out pdwVersion);
			public HRESULT GetPropertyModificationDate(out FILETIME pftModificationDate) mut => VT.GetPropertyModificationDate(ref this, out pftModificationDate);
			public HRESULT GetPropertyArrayElementID(char16* pszArrayElementID, uint32 cchArrayElementID, out uint32 pdwcchArrayElementIDRequired) mut => VT.GetPropertyArrayElementID(ref this, pszArrayElementID, cchArrayElementID, out pdwcchArrayElementIDRequired);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self, char16* pszPropertyName, uint32 cchPropertyName, out uint32 pdwcchPropertyNameRequired) GetPropertyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self, out uint32 pdwType) GetPropertyType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self, out uint32 pdwVersion) GetPropertyVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self, out FILETIME pftModificationDate) GetPropertyModificationDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactPropertyCollection self, char16* pszArrayElementID, uint32 cchArrayElementID, out uint32 pdwcchArrayElementIDRequired) GetPropertyArrayElementID;
			}
		}
		[CRepr]
		public struct IContactAggregationManager : IUnknown
		{
			public const new Guid IID = .(0x1d865989, 0x4b1f, 0x4b60, 0x8f, 0x34, 0xc2, 0xad, 0x46, 0x8b, 0x2b, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersionInfo(out int32 plMajorVersion, out int32 plMinorVersion) mut => VT.GetVersionInfo(ref this, out plMajorVersion, out plMinorVersion);
			public HRESULT CreateOrOpenGroup(PWSTR pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, out BOOL pCreatedGroup, out IContactAggregationGroup* ppGroup) mut => VT.CreateOrOpenGroup(ref this, pGroupName, options, out pCreatedGroup, out ppGroup);
			public HRESULT CreateExternalContact(out IContactAggregationContact* ppItem) mut => VT.CreateExternalContact(ref this, out ppItem);
			public HRESULT CreateServerPerson(out IContactAggregationServerPerson* ppServerPerson) mut => VT.CreateServerPerson(ref this, out ppServerPerson);
			public HRESULT CreateServerContactLink(out IContactAggregationLink* ppServerContactLink) mut => VT.CreateServerContactLink(ref this, out ppServerContactLink);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT OpenAggregateContact(PWSTR pItemId, out IContactAggregationAggregate* ppItem) mut => VT.OpenAggregateContact(ref this, pItemId, out ppItem);
			public HRESULT OpenContact(PWSTR pItemId, out IContactAggregationContact* ppItem) mut => VT.OpenContact(ref this, pItemId, out ppItem);
			public HRESULT OpenServerContactLink(PWSTR pItemId, out IContactAggregationLink* ppItem) mut => VT.OpenServerContactLink(ref this, pItemId, out ppItem);
			public HRESULT OpenServerPerson(PWSTR pItemId, out IContactAggregationServerPerson* ppItem) mut => VT.OpenServerPerson(ref this, pItemId, out ppItem);
			public HRESULT get_Contacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationContactCollection* ppItems) mut => VT.get_Contacts(ref this, options, out ppItems);
			public HRESULT get_AggregateContacts(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationAggregateCollection* ppAggregates) mut => VT.get_AggregateContacts(ref this, options, out ppAggregates);
			public HRESULT get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) mut => VT.get_Groups(ref this, options, out ppGroups);
			public HRESULT get_ServerPersons(out IContactAggregationServerPersonCollection* ppServerPersonCollection) mut => VT.get_ServerPersons(ref this, out ppServerPersonCollection);
			public HRESULT get_ServerContactLinks(PWSTR pPersonItemId, out IContactAggregationLinkCollection* ppServerContactLinkCollection) mut => VT.get_ServerContactLinks(ref this, pPersonItemId, out ppServerContactLinkCollection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, out int32 plMajorVersion, out int32 plMinorVersion) GetVersionInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pGroupName, CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS options, out BOOL pCreatedGroup, out IContactAggregationGroup* ppGroup) CreateOrOpenGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, out IContactAggregationContact* ppItem) CreateExternalContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, out IContactAggregationServerPerson* ppServerPerson) CreateServerPerson;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, out IContactAggregationLink* ppServerContactLink) CreateServerContactLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pItemId, out IContactAggregationAggregate* ppItem) OpenAggregateContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pItemId, out IContactAggregationContact* ppItem) OpenContact;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pItemId, out IContactAggregationLink* ppItem) OpenServerContactLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pItemId, out IContactAggregationServerPerson* ppItem) OpenServerPerson;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationContactCollection* ppItems) get_Contacts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationAggregateCollection* ppAggregates) get_AggregateContacts;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, out IContactAggregationServerPersonCollection* ppServerPersonCollection) get_ServerPersons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationManager self, PWSTR pPersonItemId, out IContactAggregationLinkCollection* ppServerContactLinkCollection) get_ServerContactLinks;
			}
		}
		[CRepr]
		public struct IContactAggregationContact : IUnknown
		{
			public const new Guid IID = .(0x1eb22e86, 0x4c86, 0x41f0, 0x9f, 0x9f, 0xc2, 0x51, 0xe9, 0xfd, 0xa6, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT MoveToAggregate(PWSTR pAggregateId) mut => VT.MoveToAggregate(ref this, pAggregateId);
			public HRESULT Unlink() mut => VT.Unlink(ref this);
			public HRESULT get_AccountId(out PWSTR ppAccountId) mut => VT.get_AccountId(ref this, out ppAccountId);
			public HRESULT put_AccountId(PWSTR pAccountId) mut => VT.put_AccountId(ref this, pAccountId);
			public HRESULT get_AggregateId(out PWSTR ppAggregateId) mut => VT.get_AggregateId(ref this, out ppAggregateId);
			public HRESULT get_Id(out PWSTR ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HRESULT get_IsMe(out BOOL pIsMe) mut => VT.get_IsMe(ref this, out pIsMe);
			public HRESULT get_IsExternal(out BOOL pIsExternal) mut => VT.get_IsExternal(ref this, out pIsExternal);
			public HRESULT get_NetworkSourceId(out uint32 pNetworkSourceId) mut => VT.get_NetworkSourceId(ref this, out pNetworkSourceId);
			public HRESULT put_NetworkSourceId(uint32 networkSourceId) mut => VT.put_NetworkSourceId(ref this, networkSourceId);
			public HRESULT get_NetworkSourceIdString(out PWSTR ppNetworkSourceId) mut => VT.get_NetworkSourceIdString(ref this, out ppNetworkSourceId);
			public HRESULT put_NetworkSourceIdString(PWSTR pNetworkSourceId) mut => VT.put_NetworkSourceIdString(ref this, pNetworkSourceId);
			public HRESULT get_RemoteObjectId(out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) mut => VT.get_RemoteObjectId(ref this, out ppRemoteObjectId);
			public HRESULT put_RemoteObjectId(in CONTACT_AGGREGATION_BLOB pRemoteObjectId) mut => VT.put_RemoteObjectId(ref this, pRemoteObjectId);
			public HRESULT get_SyncIdentityHash(out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) mut => VT.get_SyncIdentityHash(ref this, out ppSyncIdentityHash);
			public HRESULT put_SyncIdentityHash(in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) mut => VT.put_SyncIdentityHash(ref this, pSyncIdentityHash);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, PWSTR pAggregateId) MoveToAggregate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self) Unlink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out PWSTR ppAccountId) get_AccountId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, PWSTR pAccountId) put_AccountId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out PWSTR ppAggregateId) get_AggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out PWSTR ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out BOOL pIsMe) get_IsMe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out BOOL pIsExternal) get_IsExternal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out uint32 pNetworkSourceId) get_NetworkSourceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, uint32 networkSourceId) put_NetworkSourceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out PWSTR ppNetworkSourceId) get_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) get_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, in CONTACT_AGGREGATION_BLOB pRemoteObjectId) put_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) get_SyncIdentityHash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContact self, in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationContactCollection : IUnknown
		{
			public const new Guid IID = .(0x826e66fa, 0x81de, 0x43ca, 0xa6, 0xfb, 0x8c, 0x78, 0x5c, 0xd9, 0x96, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(out IContactAggregationContact* ppItem) mut => VT.FindFirst(ref this, out ppItem);
			public HRESULT FindNext(out IContactAggregationContact* ppItem) mut => VT.FindNext(ref this, out ppItem);
			public HRESULT FindFirstByIdentityHash(PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pIdentityHash, out IContactAggregationContact* ppItem) mut => VT.FindFirstByIdentityHash(ref this, pSourceType, pAccountId, pIdentityHash, out ppItem);
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);
			public HRESULT FindFirstByRemoteId(PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteObjectId, out IContactAggregationContact* ppItem) mut => VT.FindFirstByRemoteId(ref this, pSourceType, pAccountId, pRemoteObjectId, out ppItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContactCollection self, out IContactAggregationContact* ppItem) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContactCollection self, out IContactAggregationContact* ppItem) FindNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContactCollection self, PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pIdentityHash, out IContactAggregationContact* ppItem) FindFirstByIdentityHash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContactCollection self, out int32 pCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationContactCollection self, PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteObjectId, out IContactAggregationContact* ppItem) FindFirstByRemoteId;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregate : IUnknown
		{
			public const new Guid IID = .(0x7ed1c814, 0xcd30, 0x43c8, 0x9b, 0x8d, 0x2e, 0x48, 0x9e, 0x53, 0xd5, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT GetComponentItems(out IContactAggregationContactCollection* pComponentItems) mut => VT.GetComponentItems(ref this, out pComponentItems);
			public HRESULT Link(PWSTR pAggregateId) mut => VT.Link(ref this, pAggregateId);
			public HRESULT get_Groups(CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) mut => VT.get_Groups(ref this, options, out ppGroups);
			public HRESULT get_AntiLink(out PWSTR ppAntiLink) mut => VT.get_AntiLink(ref this, out ppAntiLink);
			public HRESULT put_AntiLink(PWSTR pAntiLink) mut => VT.put_AntiLink(ref this, pAntiLink);
			public HRESULT get_FavoriteOrder(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrder(ref this, out pFavoriteOrder);
			public HRESULT put_FavoriteOrder(uint32 favoriteOrder) mut => VT.put_FavoriteOrder(ref this, favoriteOrder);
			public HRESULT get_Id(out PWSTR ppItemId) mut => VT.get_Id(ref this, out ppItemId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, out IContactAggregationContactCollection* pComponentItems) GetComponentItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, PWSTR pAggregateId) Link;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, CONTACT_AGGREGATION_COLLECTION_OPTIONS options, out IContactAggregationGroupCollection* ppGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, out PWSTR ppAntiLink) get_AntiLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, PWSTR pAntiLink) put_AntiLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, out uint32 pFavoriteOrder) get_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregate self, out PWSTR ppItemId) get_Id;
			}
		}
		[CRepr]
		public struct IContactAggregationAggregateCollection : IUnknown
		{
			public const new Guid IID = .(0x2359f3a6, 0x3a68, 0x40af, 0x98, 0xdb, 0x0f, 0x9e, 0xb1, 0x43, 0xc3, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(out IContactAggregationAggregate* ppAggregate) mut => VT.FindFirst(ref this, out ppAggregate);
			public HRESULT FindFirstByAntiLinkId(PWSTR pAntiLinkId, out IContactAggregationAggregate* ppAggregate) mut => VT.FindFirstByAntiLinkId(ref this, pAntiLinkId, out ppAggregate);
			public HRESULT FindNext(out IContactAggregationAggregate* ppAggregate) mut => VT.FindNext(ref this, out ppAggregate);
			public HRESULT get_Count(out int32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregateCollection self, out IContactAggregationAggregate* ppAggregate) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregateCollection self, PWSTR pAntiLinkId, out IContactAggregationAggregate* ppAggregate) FindFirstByAntiLinkId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregateCollection self, out IContactAggregationAggregate* ppAggregate) FindNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationAggregateCollection self, out int32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationGroup : IUnknown
		{
			public const new Guid IID = .(0xc93c545f, 0x1284, 0x499b, 0x96, 0xaf, 0x07, 0x37, 0x2a, 0xf4, 0x73, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT Add(PWSTR pAggregateId) mut => VT.Add(ref this, pAggregateId);
			public HRESULT Remove(PWSTR pAggregateId) mut => VT.Remove(ref this, pAggregateId);
			public HRESULT get_Members(out IContactAggregationAggregateCollection* ppAggregateContactCollection) mut => VT.get_Members(ref this, out ppAggregateContactCollection);
			public HRESULT get_GlobalObjectId(out Guid pGlobalObjectId) mut => VT.get_GlobalObjectId(ref this, out pGlobalObjectId);
			public HRESULT put_GlobalObjectId(in Guid pGlobalObjectId) mut => VT.put_GlobalObjectId(ref this, pGlobalObjectId);
			public HRESULT get_Id(out PWSTR ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HRESULT get_Name(out PWSTR ppName) mut => VT.get_Name(ref this, out ppName);
			public HRESULT put_Name(PWSTR pName) mut => VT.put_Name(ref this, pName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, PWSTR pAggregateId) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, PWSTR pAggregateId) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, out IContactAggregationAggregateCollection* ppAggregateContactCollection) get_Members;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, out Guid pGlobalObjectId) get_GlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, in Guid pGlobalObjectId) put_GlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, out PWSTR ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, out PWSTR ppName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroup self, PWSTR pName) put_Name;
			}
		}
		[CRepr]
		public struct IContactAggregationGroupCollection : IUnknown
		{
			public const new Guid IID = .(0x20a19a9c, 0xd2f3, 0x4b83, 0x91, 0x43, 0xbe, 0xff, 0xd2, 0xcc, 0x22, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(out IContactAggregationGroup* ppGroup) mut => VT.FindFirst(ref this, out ppGroup);
			public HRESULT FindFirstByGlobalObjectId(in Guid pGlobalObjectId, out IContactAggregationGroup* ppGroup) mut => VT.FindFirstByGlobalObjectId(ref this, pGlobalObjectId, out ppGroup);
			public HRESULT FindNext(out IContactAggregationGroup* ppGroup) mut => VT.FindNext(ref this, out ppGroup);
			public HRESULT get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroupCollection self, out IContactAggregationGroup* ppGroup) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroupCollection self, in Guid pGlobalObjectId, out IContactAggregationGroup* ppGroup) FindFirstByGlobalObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroupCollection self, out IContactAggregationGroup* ppGroup) FindNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationGroupCollection self, out uint32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationLink : IUnknown
		{
			public const new Guid IID = .(0xb6813323, 0xa183, 0x4654, 0x86, 0x27, 0x79, 0xb3, 0x0d, 0xe3, 0xa0, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT get_AccountId(out PWSTR ppAccountId) mut => VT.get_AccountId(ref this, out ppAccountId);
			public HRESULT put_AccountId(PWSTR pAccountId) mut => VT.put_AccountId(ref this, pAccountId);
			public HRESULT get_Id(out PWSTR ppItemId) mut => VT.get_Id(ref this, out ppItemId);
			public HRESULT get_IsLinkResolved(out BOOL pIsLinkResolved) mut => VT.get_IsLinkResolved(ref this, out pIsLinkResolved);
			public HRESULT put_IsLinkResolved(BOOL isLinkResolved) mut => VT.put_IsLinkResolved(ref this, isLinkResolved);
			public HRESULT get_NetworkSourceIdString(out PWSTR ppNetworkSourceId) mut => VT.get_NetworkSourceIdString(ref this, out ppNetworkSourceId);
			public HRESULT put_NetworkSourceIdString(PWSTR pNetworkSourceId) mut => VT.put_NetworkSourceIdString(ref this, pNetworkSourceId);
			public HRESULT get_RemoteObjectId(out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) mut => VT.get_RemoteObjectId(ref this, out ppRemoteObjectId);
			public HRESULT put_RemoteObjectId(in CONTACT_AGGREGATION_BLOB pRemoteObjectId) mut => VT.put_RemoteObjectId(ref this, pRemoteObjectId);
			public HRESULT get_ServerPerson(out PWSTR ppServerPersonId) mut => VT.get_ServerPerson(ref this, out ppServerPersonId);
			public HRESULT put_ServerPerson(PWSTR pServerPersonId) mut => VT.put_ServerPerson(ref this, pServerPersonId);
			public HRESULT get_ServerPersonBaseline(out PWSTR ppServerPersonId) mut => VT.get_ServerPersonBaseline(ref this, out ppServerPersonId);
			public HRESULT put_ServerPersonBaseline(PWSTR pServerPersonId) mut => VT.put_ServerPersonBaseline(ref this, pServerPersonId);
			public HRESULT get_SyncIdentityHash(out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) mut => VT.get_SyncIdentityHash(ref this, out ppSyncIdentityHash);
			public HRESULT put_SyncIdentityHash(in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) mut => VT.put_SyncIdentityHash(ref this, pSyncIdentityHash);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out PWSTR ppAccountId) get_AccountId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, PWSTR pAccountId) put_AccountId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out PWSTR ppItemId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out BOOL pIsLinkResolved) get_IsLinkResolved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, BOOL isLinkResolved) put_IsLinkResolved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out PWSTR ppNetworkSourceId) get_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, PWSTR pNetworkSourceId) put_NetworkSourceIdString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out CONTACT_AGGREGATION_BLOB* ppRemoteObjectId) get_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, in CONTACT_AGGREGATION_BLOB pRemoteObjectId) put_RemoteObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out PWSTR ppServerPersonId) get_ServerPerson;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, PWSTR pServerPersonId) put_ServerPerson;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out PWSTR ppServerPersonId) get_ServerPersonBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, PWSTR pServerPersonId) put_ServerPersonBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, out CONTACT_AGGREGATION_BLOB* ppSyncIdentityHash) get_SyncIdentityHash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLink self, in CONTACT_AGGREGATION_BLOB pSyncIdentityHash) put_SyncIdentityHash;
			}
		}
		[CRepr]
		public struct IContactAggregationLinkCollection : IUnknown
		{
			public const new Guid IID = .(0xf8bc0e93, 0xfb55, 0x4f28, 0xb9, 0xfa, 0xb1, 0xc2, 0x74, 0x15, 0x32, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(out IContactAggregationLink* ppServerContactLink) mut => VT.FindFirst(ref this, out ppServerContactLink);
			public HRESULT FindFirstByRemoteId(PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteId, out IContactAggregationLink* ppServerContactLink) mut => VT.FindFirstByRemoteId(ref this, pSourceType, pAccountId, pRemoteId, out ppServerContactLink);
			public HRESULT FindNext(out IContactAggregationLink* ppServerContactLink) mut => VT.FindNext(ref this, out ppServerContactLink);
			public HRESULT get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLinkCollection self, out IContactAggregationLink* ppServerContactLink) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLinkCollection self, PWSTR pSourceType, PWSTR pAccountId, in CONTACT_AGGREGATION_BLOB pRemoteId, out IContactAggregationLink* ppServerContactLink) FindFirstByRemoteId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLinkCollection self, out IContactAggregationLink* ppServerContactLink) FindNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationLinkCollection self, out uint32 pCount) get_Count;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPerson : IUnknown
		{
			public const new Guid IID = .(0x7fdc3d4b, 0x1b82, 0x4334, 0x85, 0xc5, 0x25, 0x18, 0x4e, 0xe5, 0xa5, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Save() mut => VT.Save(ref this);
			public HRESULT get_AggregateId(out PWSTR ppAggregateId) mut => VT.get_AggregateId(ref this, out ppAggregateId);
			public HRESULT put_AggregateId(PWSTR pAggregateId) mut => VT.put_AggregateId(ref this, pAggregateId);
			public HRESULT get_AntiLink(out PWSTR ppAntiLink) mut => VT.get_AntiLink(ref this, out ppAntiLink);
			public HRESULT put_AntiLink(PWSTR pAntiLink) mut => VT.put_AntiLink(ref this, pAntiLink);
			public HRESULT get_AntiLinkBaseline(out PWSTR ppAntiLink) mut => VT.get_AntiLinkBaseline(ref this, out ppAntiLink);
			public HRESULT put_AntiLinkBaseline(PWSTR pAntiLink) mut => VT.put_AntiLinkBaseline(ref this, pAntiLink);
			public HRESULT get_FavoriteOrder(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrder(ref this, out pFavoriteOrder);
			public HRESULT put_FavoriteOrder(uint32 favoriteOrder) mut => VT.put_FavoriteOrder(ref this, favoriteOrder);
			public HRESULT get_FavoriteOrderBaseline(out uint32 pFavoriteOrder) mut => VT.get_FavoriteOrderBaseline(ref this, out pFavoriteOrder);
			public HRESULT put_FavoriteOrderBaseline(uint32 favoriteOrder) mut => VT.put_FavoriteOrderBaseline(ref this, favoriteOrder);
			public HRESULT get_Groups(out CONTACT_AGGREGATION_BLOB* pGroups) mut => VT.get_Groups(ref this, out pGroups);
			public HRESULT put_Groups(in CONTACT_AGGREGATION_BLOB pGroups) mut => VT.put_Groups(ref this, pGroups);
			public HRESULT get_GroupsBaseline(out CONTACT_AGGREGATION_BLOB* ppGroups) mut => VT.get_GroupsBaseline(ref this, out ppGroups);
			public HRESULT put_GroupsBaseline(in CONTACT_AGGREGATION_BLOB pGroups) mut => VT.put_GroupsBaseline(ref this, pGroups);
			public HRESULT get_Id(out PWSTR ppId) mut => VT.get_Id(ref this, out ppId);
			public HRESULT get_IsTombstone(out BOOL pIsTombstone) mut => VT.get_IsTombstone(ref this, out pIsTombstone);
			public HRESULT put_IsTombstone(BOOL isTombstone) mut => VT.put_IsTombstone(ref this, isTombstone);
			public HRESULT get_LinkedAggregateId(out PWSTR ppLinkedAggregateId) mut => VT.get_LinkedAggregateId(ref this, out ppLinkedAggregateId);
			public HRESULT put_LinkedAggregateId(PWSTR pLinkedAggregateId) mut => VT.put_LinkedAggregateId(ref this, pLinkedAggregateId);
			public HRESULT get_ObjectId(out PWSTR ppObjectId) mut => VT.get_ObjectId(ref this, out ppObjectId);
			public HRESULT put_ObjectId(PWSTR pObjectId) mut => VT.put_ObjectId(ref this, pObjectId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppAggregateId) get_AggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, PWSTR pAggregateId) put_AggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppAntiLink) get_AntiLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, PWSTR pAntiLink) put_AntiLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppAntiLink) get_AntiLinkBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, PWSTR pAntiLink) put_AntiLinkBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out uint32 pFavoriteOrder) get_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, uint32 favoriteOrder) put_FavoriteOrder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out uint32 pFavoriteOrder) get_FavoriteOrderBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, uint32 favoriteOrder) put_FavoriteOrderBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out CONTACT_AGGREGATION_BLOB* pGroups) get_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, in CONTACT_AGGREGATION_BLOB pGroups) put_Groups;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out CONTACT_AGGREGATION_BLOB* ppGroups) get_GroupsBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, in CONTACT_AGGREGATION_BLOB pGroups) put_GroupsBaseline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppId) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out BOOL pIsTombstone) get_IsTombstone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, BOOL isTombstone) put_IsTombstone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppLinkedAggregateId) get_LinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, PWSTR pLinkedAggregateId) put_LinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, out PWSTR ppObjectId) get_ObjectId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPerson self, PWSTR pObjectId) put_ObjectId;
			}
		}
		[CRepr]
		public struct IContactAggregationServerPersonCollection : IUnknown
		{
			public const new Guid IID = .(0x4f730a4a, 0x6604, 0x47b6, 0xa9, 0x87, 0x66, 0x9e, 0xcf, 0x1e, 0x57, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirst(out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirst(ref this, out ppServerPerson);
			public HRESULT FindFirstByServerId(PWSTR pServerId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByServerId(ref this, pServerId, out ppServerPerson);
			public HRESULT FindFirstByAggregateId(PWSTR pAggregateId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByAggregateId(ref this, pAggregateId, out ppServerPerson);
			public HRESULT FindFirstByLinkedAggregateId(PWSTR pAggregateId, out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindFirstByLinkedAggregateId(ref this, pAggregateId, out ppServerPerson);
			public HRESULT FindNext(out IContactAggregationServerPerson* ppServerPerson) mut => VT.FindNext(ref this, out ppServerPerson);
			public HRESULT get_Count(out uint32 pCount) mut => VT.get_Count(ref this, out pCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, out IContactAggregationServerPerson* ppServerPerson) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, PWSTR pServerId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByServerId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, PWSTR pAggregateId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByAggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, PWSTR pAggregateId, out IContactAggregationServerPerson* ppServerPerson) FindFirstByLinkedAggregateId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, out IContactAggregationServerPerson* ppServerPerson) FindNext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactAggregationServerPersonCollection self, out uint32 pCount) get_Count;
			}
		}
		
	}
}
