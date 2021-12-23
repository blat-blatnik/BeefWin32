using System;

// namespace System.SettingsManagementInfrastructure
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WCM_SETTINGS_ID_FLAG_REFERENCE = 0;
		public const uint32 WCM_SETTINGS_ID_FLAG_DEFINITION = 1;
		public const uint32 LINK_STORE_TO_ENGINE_INSTANCE = 1;
		public const uint32 LIMITED_VALIDATION_MODE = 1;
		public const HRESULT WCM_E_INTERNALERROR = -2145255424;
		public const HRESULT WCM_E_STATENODENOTFOUND = -2145255423;
		public const HRESULT WCM_E_STATENODENOTALLOWED = -2145255422;
		public const HRESULT WCM_E_ATTRIBUTENOTFOUND = -2145255421;
		public const HRESULT WCM_E_ATTRIBUTENOTALLOWED = -2145255420;
		public const HRESULT WCM_E_INVALIDVALUE = -2145255419;
		public const HRESULT WCM_E_INVALIDVALUEFORMAT = -2145255418;
		public const HRESULT WCM_E_TYPENOTSPECIFIED = -2145255417;
		public const HRESULT WCM_E_INVALIDDATATYPE = -2145255416;
		public const HRESULT WCM_E_NOTPOSITIONED = -2145255415;
		public const HRESULT WCM_E_READONLYITEM = -2145255414;
		public const HRESULT WCM_E_INVALIDPATH = -2145255413;
		public const HRESULT WCM_E_WRONGESCAPESTRING = -2145255412;
		public const HRESULT WCM_E_INVALIDVERSIONFORMAT = -2145255411;
		public const HRESULT WCM_E_INVALIDLANGUAGEFORMAT = -2145255410;
		public const HRESULT WCM_E_KEYNOTCHANGEABLE = -2145255409;
		public const HRESULT WCM_E_EXPRESSIONNOTFOUND = -2145255408;
		public const HRESULT WCM_E_SUBSTITUTIONNOTFOUND = -2145255407;
		public const HRESULT WCM_E_USERALREADYREGISTERED = -2145255406;
		public const HRESULT WCM_E_USERNOTFOUND = -2145255405;
		public const HRESULT WCM_E_NAMESPACENOTFOUND = -2145255404;
		public const HRESULT WCM_E_NAMESPACEALREADYREGISTERED = -2145255403;
		public const HRESULT WCM_E_STORECORRUPTED = -2145255402;
		public const HRESULT WCM_E_INVALIDEXPRESSIONSYNTAX = -2145255401;
		public const HRESULT WCM_E_NOTIFICATIONNOTFOUND = -2145255400;
		public const HRESULT WCM_E_CONFLICTINGASSERTION = -2145255399;
		public const HRESULT WCM_E_ASSERTIONFAILED = -2145255398;
		public const HRESULT WCM_E_DUPLICATENAME = -2145255397;
		public const HRESULT WCM_E_INVALIDKEY = -2145255396;
		public const HRESULT WCM_E_INVALIDSTREAM = -2145255395;
		public const HRESULT WCM_E_HANDLERNOTFOUND = -2145255394;
		public const HRESULT WCM_E_INVALIDHANDLERSYNTAX = -2145255393;
		public const HRESULT WCM_E_VALIDATIONFAILED = -2145255392;
		public const HRESULT WCM_E_RESTRICTIONFAILED = -2145255391;
		public const HRESULT WCM_E_MANIFESTCOMPILATIONFAILED = -2145255390;
		public const HRESULT WCM_E_CYCLICREFERENCE = -2145255389;
		public const HRESULT WCM_E_MIXTYPEASSERTION = -2145255388;
		public const HRESULT WCM_E_NOTSUPPORTEDFUNCTION = -2145255387;
		public const HRESULT WCM_E_VALUETOOBIG = -2145255386;
		public const HRESULT WCM_E_INVALIDATTRIBUTECOMBINATION = -2145255385;
		public const HRESULT WCM_E_ABORTOPERATION = -2145255384;
		public const HRESULT WCM_E_MISSINGCONFIGURATION = -2145255383;
		public const HRESULT WCM_E_INVALIDPROCESSORFORMAT = -2145255382;
		public const HRESULT WCM_E_SOURCEMANEMPTYVALUE = -2145255381;
		public const HRESULT WCM_S_INTERNALERROR = 2232320;
		public const HRESULT WCM_S_ATTRIBUTENOTFOUND = 2232321;
		public const HRESULT WCM_S_LEGACYSETTINGWARNING = 2232322;
		public const HRESULT WCM_S_INVALIDATTRIBUTECOMBINATION = 2232324;
		public const HRESULT WCM_S_ATTRIBUTENOTALLOWED = 2232325;
		public const HRESULT WCM_S_NAMESPACENOTFOUND = 2232326;
		public const HRESULT WCM_E_UNKNOWNRESULT = -2145251325;
		
		// --- Enums ---
		
		public enum WcmTargetMode : int32
		{
			OfflineMode = 1,
			OnlineMode = 2,
		}
		public enum WcmNamespaceEnumerationFlags : int32
		{
			SharedEnumeration = 1,
			UserEnumeration = 2,
			AllEnumeration = 3,
		}
		public enum WcmDataType : int32
		{
			Byte = 1,
			SByte = 2,
			UInt16 = 3,
			Int16 = 4,
			UInt32 = 5,
			Int32 = 6,
			UInt64 = 7,
			Int64 = 8,
			Boolean = 11,
			String = 12,
			FlagArray = 32768,
		}
		public enum WcmSettingType : int32
		{
			Scalar = 1,
			Complex = 2,
			List = 3,
		}
		public enum WcmRestrictionFacets : int32
		{
			MaxLength = 1,
			Enumeration = 2,
			MaxInclusive = 4,
			MinInclusive = 8,
		}
		public enum WcmUserStatus : int32
		{
			UnknownStatus = 0,
			UserRegistered = 1,
			UserUnregistered = 2,
			UserLoaded = 3,
			UserUnloaded = 4,
		}
		public enum WcmNamespaceAccess : int32
		{
			OnlyAccess = 1,
			WriteAccess = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SettingsEngine = .(0x9f7d7bb5, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IItemEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb7, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Current(out VARIANT Item) mut
			{
				return VT.Current(ref this, out Item);
			}
			public HRESULT MoveNext(out BOOL ItemValid) mut
			{
				return VT.MoveNext(ref this, out ItemValid);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(ref this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref IItemEnumerator self, out VARIANT Item) Current;
				public new function HRESULT(ref IItemEnumerator self, out BOOL ItemValid) MoveNext;
				public new function HRESULT(ref IItemEnumerator self) Reset;
			}
		}
		[CRepr]
		public struct ISettingsIdentity : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb6, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttribute(void* Reserved, PWSTR Name, out BSTR Value) mut
			{
				return VT.GetAttribute(ref this, Reserved, Name, out Value);
			}
			public HRESULT SetAttribute(void* Reserved, PWSTR Name, PWSTR Value) mut
			{
				return VT.SetAttribute(ref this, Reserved, Name, Value);
			}
			public HRESULT ComGetFlags(out uint32 Flags) mut
			{
				return VT.ComGetFlags(ref this, out Flags);
			}
			public HRESULT SetFlags(uint32 Flags) mut
			{
				return VT.SetFlags(ref this, Flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsIdentity self, void* Reserved, PWSTR Name, out BSTR Value) GetAttribute;
				public new function HRESULT(ref ISettingsIdentity self, void* Reserved, PWSTR Name, PWSTR Value) SetAttribute;
				public new function HRESULT(ref ISettingsIdentity self, out uint32 Flags) ComGetFlags;
				public new function HRESULT(ref ISettingsIdentity self, uint32 Flags) SetFlags;
			}
		}
		[CRepr]
		public struct ITargetInfo : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb8, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTargetMode(out WcmTargetMode TargetMode) mut
			{
				return VT.GetTargetMode(ref this, out TargetMode);
			}
			public HRESULT SetTargetMode(WcmTargetMode TargetMode) mut
			{
				return VT.SetTargetMode(ref this, TargetMode);
			}
			public HRESULT GetTemporaryStoreLocation(out BSTR TemporaryStoreLocation) mut
			{
				return VT.GetTemporaryStoreLocation(ref this, out TemporaryStoreLocation);
			}
			public HRESULT SetTemporaryStoreLocation(PWSTR TemporaryStoreLocation) mut
			{
				return VT.SetTemporaryStoreLocation(ref this, TemporaryStoreLocation);
			}
			public HRESULT GetTargetID(out BSTR TargetID) mut
			{
				return VT.GetTargetID(ref this, out TargetID);
			}
			public HRESULT SetTargetID(Guid TargetID) mut
			{
				return VT.SetTargetID(ref this, TargetID);
			}
			public HRESULT GetTargetProcessorArchitecture(out BSTR ProcessorArchitecture) mut
			{
				return VT.GetTargetProcessorArchitecture(ref this, out ProcessorArchitecture);
			}
			public HRESULT SetTargetProcessorArchitecture(PWSTR ProcessorArchitecture) mut
			{
				return VT.SetTargetProcessorArchitecture(ref this, ProcessorArchitecture);
			}
			public HRESULT GetProperty(BOOL Offline, PWSTR Property, out BSTR Value) mut
			{
				return VT.GetProperty(ref this, Offline, Property, out Value);
			}
			public HRESULT SetProperty(BOOL Offline, PWSTR Property, PWSTR Value) mut
			{
				return VT.SetProperty(ref this, Offline, Property, Value);
			}
			public HRESULT GetEnumerator(out IItemEnumerator* Enumerator) mut
			{
				return VT.GetEnumerator(ref this, out Enumerator);
			}
			public HRESULT ExpandTarget(BOOL Offline, PWSTR Location, out BSTR ExpandedLocation) mut
			{
				return VT.ExpandTarget(ref this, Offline, Location, out ExpandedLocation);
			}
			public HRESULT ExpandTargetPath(BOOL Offline, PWSTR Location, out BSTR ExpandedLocation) mut
			{
				return VT.ExpandTargetPath(ref this, Offline, Location, out ExpandedLocation);
			}
			public HRESULT SetModulePath(PWSTR Module, PWSTR Path) mut
			{
				return VT.SetModulePath(ref this, Module, Path);
			}
			public HRESULT LoadModule(PWSTR Module, out HINSTANCE ModuleHandle) mut
			{
				return VT.LoadModule(ref this, Module, out ModuleHandle);
			}
			public HRESULT SetWow64Context(PWSTR InstallerModule, ref uint8 Wow64Context) mut
			{
				return VT.SetWow64Context(ref this, InstallerModule, ref Wow64Context);
			}
			public HRESULT TranslateWow64(PWSTR ClientArchitecture, PWSTR Value, out BSTR TranslatedValue) mut
			{
				return VT.TranslateWow64(ref this, ClientArchitecture, Value, out TranslatedValue);
			}
			public HRESULT SetSchemaHiveLocation(PWSTR pwzHiveDir) mut
			{
				return VT.SetSchemaHiveLocation(ref this, pwzHiveDir);
			}
			public HRESULT GetSchemaHiveLocation(out BSTR pHiveLocation) mut
			{
				return VT.GetSchemaHiveLocation(ref this, out pHiveLocation);
			}
			public HRESULT SetSchemaHiveMountName(PWSTR pwzMountName) mut
			{
				return VT.SetSchemaHiveMountName(ref this, pwzMountName);
			}
			public HRESULT GetSchemaHiveMountName(out BSTR pMountName) mut
			{
				return VT.GetSchemaHiveMountName(ref this, out pMountName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ITargetInfo self, out WcmTargetMode TargetMode) GetTargetMode;
				public new function HRESULT(ref ITargetInfo self, WcmTargetMode TargetMode) SetTargetMode;
				public new function HRESULT(ref ITargetInfo self, out BSTR TemporaryStoreLocation) GetTemporaryStoreLocation;
				public new function HRESULT(ref ITargetInfo self, PWSTR TemporaryStoreLocation) SetTemporaryStoreLocation;
				public new function HRESULT(ref ITargetInfo self, out BSTR TargetID) GetTargetID;
				public new function HRESULT(ref ITargetInfo self, Guid TargetID) SetTargetID;
				public new function HRESULT(ref ITargetInfo self, out BSTR ProcessorArchitecture) GetTargetProcessorArchitecture;
				public new function HRESULT(ref ITargetInfo self, PWSTR ProcessorArchitecture) SetTargetProcessorArchitecture;
				public new function HRESULT(ref ITargetInfo self, BOOL Offline, PWSTR Property, out BSTR Value) GetProperty;
				public new function HRESULT(ref ITargetInfo self, BOOL Offline, PWSTR Property, PWSTR Value) SetProperty;
				public new function HRESULT(ref ITargetInfo self, out IItemEnumerator* Enumerator) GetEnumerator;
				public new function HRESULT(ref ITargetInfo self, BOOL Offline, PWSTR Location, out BSTR ExpandedLocation) ExpandTarget;
				public new function HRESULT(ref ITargetInfo self, BOOL Offline, PWSTR Location, out BSTR ExpandedLocation) ExpandTargetPath;
				public new function HRESULT(ref ITargetInfo self, PWSTR Module, PWSTR Path) SetModulePath;
				public new function HRESULT(ref ITargetInfo self, PWSTR Module, out HINSTANCE ModuleHandle) LoadModule;
				public new function HRESULT(ref ITargetInfo self, PWSTR InstallerModule, ref uint8 Wow64Context) SetWow64Context;
				public new function HRESULT(ref ITargetInfo self, PWSTR ClientArchitecture, PWSTR Value, out BSTR TranslatedValue) TranslateWow64;
				public new function HRESULT(ref ITargetInfo self, PWSTR pwzHiveDir) SetSchemaHiveLocation;
				public new function HRESULT(ref ITargetInfo self, out BSTR pHiveLocation) GetSchemaHiveLocation;
				public new function HRESULT(ref ITargetInfo self, PWSTR pwzMountName) SetSchemaHiveMountName;
				public new function HRESULT(ref ITargetInfo self, out BSTR pMountName) GetSchemaHiveMountName;
			}
		}
		[CRepr]
		public struct ISettingsEngine : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb9, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamespaces(WcmNamespaceEnumerationFlags Flags, void* Reserved, out IItemEnumerator* Namespaces) mut
			{
				return VT.GetNamespaces(ref this, Flags, Reserved, out Namespaces);
			}
			public HRESULT GetNamespace(ref ISettingsIdentity SettingsID, WcmNamespaceAccess Access, void* Reserved, out ISettingsNamespace* NamespaceItem) mut
			{
				return VT.GetNamespace(ref this, ref SettingsID, Access, Reserved, out NamespaceItem);
			}
			public HRESULT GetErrorDescription(int32 HResult, out BSTR Message) mut
			{
				return VT.GetErrorDescription(ref this, HResult, out Message);
			}
			public HRESULT CreateSettingsIdentity(out ISettingsIdentity* SettingsID) mut
			{
				return VT.CreateSettingsIdentity(ref this, out SettingsID);
			}
			public HRESULT GetStoreStatus(void* Reserved, out WcmUserStatus Status) mut
			{
				return VT.GetStoreStatus(ref this, Reserved, out Status);
			}
			public HRESULT LoadStore(uint32 Flags) mut
			{
				return VT.LoadStore(ref this, Flags);
			}
			public HRESULT UnloadStore(void* Reserved) mut
			{
				return VT.UnloadStore(ref this, Reserved);
			}
			public HRESULT RegisterNamespace(ref ISettingsIdentity SettingsID, ref IStream Stream, BOOL PushSettings, out VARIANT Results) mut
			{
				return VT.RegisterNamespace(ref this, ref SettingsID, ref Stream, PushSettings, out Results);
			}
			public HRESULT UnregisterNamespace(ref ISettingsIdentity SettingsID, BOOL RemoveSettings) mut
			{
				return VT.UnregisterNamespace(ref this, ref SettingsID, RemoveSettings);
			}
			public HRESULT CreateTargetInfo(out ITargetInfo* Target) mut
			{
				return VT.CreateTargetInfo(ref this, out Target);
			}
			public HRESULT GetTargetInfo(out ITargetInfo* Target) mut
			{
				return VT.GetTargetInfo(ref this, out Target);
			}
			public HRESULT SetTargetInfo(ref ITargetInfo Target) mut
			{
				return VT.SetTargetInfo(ref this, ref Target);
			}
			public HRESULT CreateSettingsContext(uint32 Flags, void* Reserved, out ISettingsContext* SettingsContext) mut
			{
				return VT.CreateSettingsContext(ref this, Flags, Reserved, out SettingsContext);
			}
			public HRESULT SetSettingsContext(ref ISettingsContext SettingsContext) mut
			{
				return VT.SetSettingsContext(ref this, ref SettingsContext);
			}
			public HRESULT ApplySettingsContext(ref ISettingsContext SettingsContext, out PWSTR* pppwzIdentities, out uint pcIdentities) mut
			{
				return VT.ApplySettingsContext(ref this, ref SettingsContext, out pppwzIdentities, out pcIdentities);
			}
			public HRESULT GetSettingsContext(out ISettingsContext* SettingsContext) mut
			{
				return VT.GetSettingsContext(ref this, out SettingsContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsEngine self, WcmNamespaceEnumerationFlags Flags, void* Reserved, out IItemEnumerator* Namespaces) GetNamespaces;
				public new function HRESULT(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, WcmNamespaceAccess Access, void* Reserved, out ISettingsNamespace* NamespaceItem) GetNamespace;
				public new function HRESULT(ref ISettingsEngine self, int32 HResult, out BSTR Message) GetErrorDescription;
				public new function HRESULT(ref ISettingsEngine self, out ISettingsIdentity* SettingsID) CreateSettingsIdentity;
				public new function HRESULT(ref ISettingsEngine self, void* Reserved, out WcmUserStatus Status) GetStoreStatus;
				public new function HRESULT(ref ISettingsEngine self, uint32 Flags) LoadStore;
				public new function HRESULT(ref ISettingsEngine self, void* Reserved) UnloadStore;
				public new function HRESULT(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, ref IStream Stream, BOOL PushSettings, out VARIANT Results) RegisterNamespace;
				public new function HRESULT(ref ISettingsEngine self, ref ISettingsIdentity SettingsID, BOOL RemoveSettings) UnregisterNamespace;
				public new function HRESULT(ref ISettingsEngine self, out ITargetInfo* Target) CreateTargetInfo;
				public new function HRESULT(ref ISettingsEngine self, out ITargetInfo* Target) GetTargetInfo;
				public new function HRESULT(ref ISettingsEngine self, ref ITargetInfo Target) SetTargetInfo;
				public new function HRESULT(ref ISettingsEngine self, uint32 Flags, void* Reserved, out ISettingsContext* SettingsContext) CreateSettingsContext;
				public new function HRESULT(ref ISettingsEngine self, ref ISettingsContext SettingsContext) SetSettingsContext;
				public new function HRESULT(ref ISettingsEngine self, ref ISettingsContext SettingsContext, out PWSTR* pppwzIdentities, out uint pcIdentities) ApplySettingsContext;
				public new function HRESULT(ref ISettingsEngine self, out ISettingsContext* SettingsContext) GetSettingsContext;
			}
		}
		[CRepr]
		public struct ISettingsItem : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbb, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(out BSTR Name) mut
			{
				return VT.GetName(ref this, out Name);
			}
			public HRESULT GetValue(out VARIANT Value) mut
			{
				return VT.GetValue(ref this, out Value);
			}
			public HRESULT SetValue(in VARIANT Value) mut
			{
				return VT.SetValue(ref this, Value);
			}
			public HRESULT GetSettingType(out WcmSettingType Type) mut
			{
				return VT.GetSettingType(ref this, out Type);
			}
			public HRESULT GetDataType(out WcmDataType Type) mut
			{
				return VT.GetDataType(ref this, out Type);
			}
			public HRESULT GetValueRaw(uint8** Data, out uint32 DataSize) mut
			{
				return VT.GetValueRaw(ref this, Data, out DataSize);
			}
			public HRESULT SetValueRaw(int32 DataType, uint8* Data, uint32 DataSize) mut
			{
				return VT.SetValueRaw(ref this, DataType, Data, DataSize);
			}
			public HRESULT HasChild(out BOOL ItemHasChild) mut
			{
				return VT.HasChild(ref this, out ItemHasChild);
			}
			public HRESULT Children(out IItemEnumerator* Children) mut
			{
				return VT.Children(ref this, out Children);
			}
			public HRESULT GetChild(PWSTR Name, out ISettingsItem* Child) mut
			{
				return VT.GetChild(ref this, Name, out Child);
			}
			public HRESULT GetSettingByPath(PWSTR Path, out ISettingsItem* Setting) mut
			{
				return VT.GetSettingByPath(ref this, Path, out Setting);
			}
			public HRESULT CreateSettingByPath(PWSTR Path, out ISettingsItem* Setting) mut
			{
				return VT.CreateSettingByPath(ref this, Path, out Setting);
			}
			public HRESULT RemoveSettingByPath(PWSTR Path) mut
			{
				return VT.RemoveSettingByPath(ref this, Path);
			}
			public HRESULT GetListKeyInformation(out BSTR KeyName, out WcmDataType DataType) mut
			{
				return VT.GetListKeyInformation(ref this, out KeyName, out DataType);
			}
			public HRESULT CreateListElement(in VARIANT KeyData, out ISettingsItem* Child) mut
			{
				return VT.CreateListElement(ref this, KeyData, out Child);
			}
			public HRESULT RemoveListElement(PWSTR ElementName) mut
			{
				return VT.RemoveListElement(ref this, ElementName);
			}
			public HRESULT Attributes(out IItemEnumerator* Attributes) mut
			{
				return VT.Attributes(ref this, out Attributes);
			}
			public HRESULT GetAttribute(PWSTR Name, out VARIANT Value) mut
			{
				return VT.GetAttribute(ref this, Name, out Value);
			}
			public HRESULT GetPath(out BSTR Path) mut
			{
				return VT.GetPath(ref this, out Path);
			}
			public HRESULT GetRestrictionFacets(out WcmRestrictionFacets RestrictionFacets) mut
			{
				return VT.GetRestrictionFacets(ref this, out RestrictionFacets);
			}
			public HRESULT GetRestriction(WcmRestrictionFacets RestrictionFacet, out VARIANT FacetData) mut
			{
				return VT.GetRestriction(ref this, RestrictionFacet, out FacetData);
			}
			public HRESULT GetKeyValue(out VARIANT Value) mut
			{
				return VT.GetKeyValue(ref this, out Value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsItem self, out BSTR Name) GetName;
				public new function HRESULT(ref ISettingsItem self, out VARIANT Value) GetValue;
				public new function HRESULT(ref ISettingsItem self, in VARIANT Value) SetValue;
				public new function HRESULT(ref ISettingsItem self, out WcmSettingType Type) GetSettingType;
				public new function HRESULT(ref ISettingsItem self, out WcmDataType Type) GetDataType;
				public new function HRESULT(ref ISettingsItem self, uint8** Data, out uint32 DataSize) GetValueRaw;
				public new function HRESULT(ref ISettingsItem self, int32 DataType, uint8* Data, uint32 DataSize) SetValueRaw;
				public new function HRESULT(ref ISettingsItem self, out BOOL ItemHasChild) HasChild;
				public new function HRESULT(ref ISettingsItem self, out IItemEnumerator* Children) Children;
				public new function HRESULT(ref ISettingsItem self, PWSTR Name, out ISettingsItem* Child) GetChild;
				public new function HRESULT(ref ISettingsItem self, PWSTR Path, out ISettingsItem* Setting) GetSettingByPath;
				public new function HRESULT(ref ISettingsItem self, PWSTR Path, out ISettingsItem* Setting) CreateSettingByPath;
				public new function HRESULT(ref ISettingsItem self, PWSTR Path) RemoveSettingByPath;
				public new function HRESULT(ref ISettingsItem self, out BSTR KeyName, out WcmDataType DataType) GetListKeyInformation;
				public new function HRESULT(ref ISettingsItem self, in VARIANT KeyData, out ISettingsItem* Child) CreateListElement;
				public new function HRESULT(ref ISettingsItem self, PWSTR ElementName) RemoveListElement;
				public new function HRESULT(ref ISettingsItem self, out IItemEnumerator* Attributes) Attributes;
				public new function HRESULT(ref ISettingsItem self, PWSTR Name, out VARIANT Value) GetAttribute;
				public new function HRESULT(ref ISettingsItem self, out BSTR Path) GetPath;
				public new function HRESULT(ref ISettingsItem self, out WcmRestrictionFacets RestrictionFacets) GetRestrictionFacets;
				public new function HRESULT(ref ISettingsItem self, WcmRestrictionFacets RestrictionFacet, out VARIANT FacetData) GetRestriction;
				public new function HRESULT(ref ISettingsItem self, out VARIANT Value) GetKeyValue;
			}
		}
		[CRepr]
		public struct ISettingsNamespace : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bba, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentity(out ISettingsIdentity* SettingsID) mut
			{
				return VT.GetIdentity(ref this, out SettingsID);
			}
			public HRESULT Settings(out IItemEnumerator* Settings) mut
			{
				return VT.Settings(ref this, out Settings);
			}
			public HRESULT Save(BOOL PushSettings, out ISettingsResult* Result) mut
			{
				return VT.Save(ref this, PushSettings, out Result);
			}
			public HRESULT GetSettingByPath(PWSTR Path, out ISettingsItem* Setting) mut
			{
				return VT.GetSettingByPath(ref this, Path, out Setting);
			}
			public HRESULT CreateSettingByPath(PWSTR Path, out ISettingsItem* Setting) mut
			{
				return VT.CreateSettingByPath(ref this, Path, out Setting);
			}
			public HRESULT RemoveSettingByPath(PWSTR Path) mut
			{
				return VT.RemoveSettingByPath(ref this, Path);
			}
			public HRESULT GetAttribute(PWSTR Name, out VARIANT Value) mut
			{
				return VT.GetAttribute(ref this, Name, out Value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsNamespace self, out ISettingsIdentity* SettingsID) GetIdentity;
				public new function HRESULT(ref ISettingsNamespace self, out IItemEnumerator* Settings) Settings;
				public new function HRESULT(ref ISettingsNamespace self, BOOL PushSettings, out ISettingsResult* Result) Save;
				public new function HRESULT(ref ISettingsNamespace self, PWSTR Path, out ISettingsItem* Setting) GetSettingByPath;
				public new function HRESULT(ref ISettingsNamespace self, PWSTR Path, out ISettingsItem* Setting) CreateSettingByPath;
				public new function HRESULT(ref ISettingsNamespace self, PWSTR Path) RemoveSettingByPath;
				public new function HRESULT(ref ISettingsNamespace self, PWSTR Name, out VARIANT Value) GetAttribute;
			}
		}
		[CRepr]
		public struct ISettingsResult : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbc, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(out BSTR description) mut
			{
				return VT.GetDescription(ref this, out description);
			}
			public HRESULT GetErrorCode(out HRESULT hrOut) mut
			{
				return VT.GetErrorCode(ref this, out hrOut);
			}
			public HRESULT GetContextDescription(out BSTR description) mut
			{
				return VT.GetContextDescription(ref this, out description);
			}
			public HRESULT GetLine(out uint32 dwLine) mut
			{
				return VT.GetLine(ref this, out dwLine);
			}
			public HRESULT GetColumn(out uint32 dwColumn) mut
			{
				return VT.GetColumn(ref this, out dwColumn);
			}
			public HRESULT GetSource(out BSTR file) mut
			{
				return VT.GetSource(ref this, out file);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsResult self, out BSTR description) GetDescription;
				public new function HRESULT(ref ISettingsResult self, out HRESULT hrOut) GetErrorCode;
				public new function HRESULT(ref ISettingsResult self, out BSTR description) GetContextDescription;
				public new function HRESULT(ref ISettingsResult self, out uint32 dwLine) GetLine;
				public new function HRESULT(ref ISettingsResult self, out uint32 dwColumn) GetColumn;
				public new function HRESULT(ref ISettingsResult self, out BSTR file) GetSource;
			}
		}
		[CRepr]
		public struct ISettingsContext : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbd, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(ref IStream pStream, ref ITargetInfo pTarget) mut
			{
				return VT.Serialize(ref this, ref pStream, ref pTarget);
			}
			public HRESULT Deserialize(ref IStream pStream, ref ITargetInfo pTarget, ISettingsResult*** pppResults, out uint pcResultCount) mut
			{
				return VT.Deserialize(ref this, ref pStream, ref pTarget, pppResults, out pcResultCount);
			}
			public HRESULT SetUserData(void* pUserData) mut
			{
				return VT.SetUserData(ref this, pUserData);
			}
			public HRESULT GetUserData(void** pUserData) mut
			{
				return VT.GetUserData(ref this, pUserData);
			}
			public HRESULT GetNamespaces(out IItemEnumerator* ppNamespaceIds) mut
			{
				return VT.GetNamespaces(ref this, out ppNamespaceIds);
			}
			public HRESULT GetStoredSettings(ref ISettingsIdentity pIdentity, out IItemEnumerator* ppAddedSettings, out IItemEnumerator* ppModifiedSettings, out IItemEnumerator* ppDeletedSettings) mut
			{
				return VT.GetStoredSettings(ref this, ref pIdentity, out ppAddedSettings, out ppModifiedSettings, out ppDeletedSettings);
			}
			public HRESULT RevertSetting(ref ISettingsIdentity pIdentity, PWSTR pwzSetting) mut
			{
				return VT.RevertSetting(ref this, ref pIdentity, pwzSetting);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ref ISettingsContext self, ref IStream pStream, ref ITargetInfo pTarget) Serialize;
				public new function HRESULT(ref ISettingsContext self, ref IStream pStream, ref ITargetInfo pTarget, ISettingsResult*** pppResults, out uint pcResultCount) Deserialize;
				public new function HRESULT(ref ISettingsContext self, void* pUserData) SetUserData;
				public new function HRESULT(ref ISettingsContext self, void** pUserData) GetUserData;
				public new function HRESULT(ref ISettingsContext self, out IItemEnumerator* ppNamespaceIds) GetNamespaces;
				public new function HRESULT(ref ISettingsContext self, ref ISettingsIdentity pIdentity, out IItemEnumerator* ppAddedSettings, out IItemEnumerator* ppModifiedSettings, out IItemEnumerator* ppDeletedSettings) GetStoredSettings;
				public new function HRESULT(ref ISettingsContext self, ref ISettingsIdentity pIdentity, PWSTR pwzSetting) RevertSetting;
			}
		}
		
	}
}
