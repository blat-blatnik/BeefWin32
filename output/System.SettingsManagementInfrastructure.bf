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
			fflineMode = 1,
			nlineMode = 2,
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
			nknownStatus = 0,
			serRegistered = 1,
			serUnregistered = 2,
			serLoaded = 3,
			serUnloaded = 4,
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
			
			public HRESULT Current(VARIANT* Item) mut
			{
				return VT.Current(&this, Item);
			}
			public HRESULT MoveNext(BOOL* ItemValid) mut
			{
				return VT.MoveNext(&this, ItemValid);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IItemEnumerator *self, VARIANT* Item) Current;
				public new function HRESULT(IItemEnumerator *self, BOOL* ItemValid) MoveNext;
				public new function HRESULT(IItemEnumerator *self) Reset;
			}
		}
		[CRepr]
		public struct ISettingsIdentity : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb6, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttribute(void* Reserved, PWSTR Name, BSTR* Value) mut
			{
				return VT.GetAttribute(&this, Reserved, Name, Value);
			}
			public HRESULT SetAttribute(void* Reserved, PWSTR Name, PWSTR Value) mut
			{
				return VT.SetAttribute(&this, Reserved, Name, Value);
			}
			public HRESULT ComGetFlags(uint32* Flags) mut
			{
				return VT.ComGetFlags(&this, Flags);
			}
			public HRESULT SetFlags(uint32 Flags) mut
			{
				return VT.SetFlags(&this, Flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsIdentity *self, void* Reserved, PWSTR Name, BSTR* Value) GetAttribute;
				public new function HRESULT(ISettingsIdentity *self, void* Reserved, PWSTR Name, PWSTR Value) SetAttribute;
				public new function HRESULT(ISettingsIdentity *self, uint32* Flags) ComGetFlags;
				public new function HRESULT(ISettingsIdentity *self, uint32 Flags) SetFlags;
			}
		}
		[CRepr]
		public struct ITargetInfo : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb8, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTargetMode(WcmTargetMode* TargetMode) mut
			{
				return VT.GetTargetMode(&this, TargetMode);
			}
			public HRESULT SetTargetMode(WcmTargetMode TargetMode) mut
			{
				return VT.SetTargetMode(&this, TargetMode);
			}
			public HRESULT GetTemporaryStoreLocation(BSTR* TemporaryStoreLocation) mut
			{
				return VT.GetTemporaryStoreLocation(&this, TemporaryStoreLocation);
			}
			public HRESULT SetTemporaryStoreLocation(PWSTR TemporaryStoreLocation) mut
			{
				return VT.SetTemporaryStoreLocation(&this, TemporaryStoreLocation);
			}
			public HRESULT GetTargetID(BSTR* TargetID) mut
			{
				return VT.GetTargetID(&this, TargetID);
			}
			public HRESULT SetTargetID(Guid TargetID) mut
			{
				return VT.SetTargetID(&this, TargetID);
			}
			public HRESULT GetTargetProcessorArchitecture(BSTR* ProcessorArchitecture) mut
			{
				return VT.GetTargetProcessorArchitecture(&this, ProcessorArchitecture);
			}
			public HRESULT SetTargetProcessorArchitecture(PWSTR ProcessorArchitecture) mut
			{
				return VT.SetTargetProcessorArchitecture(&this, ProcessorArchitecture);
			}
			public HRESULT GetProperty(BOOL Offline, PWSTR Property, BSTR* Value) mut
			{
				return VT.GetProperty(&this, Offline, Property, Value);
			}
			public HRESULT SetProperty(BOOL Offline, PWSTR Property, PWSTR Value) mut
			{
				return VT.SetProperty(&this, Offline, Property, Value);
			}
			public HRESULT GetEnumerator(IItemEnumerator** Enumerator) mut
			{
				return VT.GetEnumerator(&this, Enumerator);
			}
			public HRESULT ExpandTarget(BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) mut
			{
				return VT.ExpandTarget(&this, Offline, Location, ExpandedLocation);
			}
			public HRESULT ExpandTargetPath(BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) mut
			{
				return VT.ExpandTargetPath(&this, Offline, Location, ExpandedLocation);
			}
			public HRESULT SetModulePath(PWSTR Module, PWSTR Path) mut
			{
				return VT.SetModulePath(&this, Module, Path);
			}
			public HRESULT LoadModule(PWSTR Module, HINSTANCE* ModuleHandle) mut
			{
				return VT.LoadModule(&this, Module, ModuleHandle);
			}
			public HRESULT SetWow64Context(PWSTR InstallerModule, uint8* Wow64Context) mut
			{
				return VT.SetWow64Context(&this, InstallerModule, Wow64Context);
			}
			public HRESULT TranslateWow64(PWSTR ClientArchitecture, PWSTR Value, BSTR* TranslatedValue) mut
			{
				return VT.TranslateWow64(&this, ClientArchitecture, Value, TranslatedValue);
			}
			public HRESULT SetSchemaHiveLocation(PWSTR pwzHiveDir) mut
			{
				return VT.SetSchemaHiveLocation(&this, pwzHiveDir);
			}
			public HRESULT GetSchemaHiveLocation(BSTR* pHiveLocation) mut
			{
				return VT.GetSchemaHiveLocation(&this, pHiveLocation);
			}
			public HRESULT SetSchemaHiveMountName(PWSTR pwzMountName) mut
			{
				return VT.SetSchemaHiveMountName(&this, pwzMountName);
			}
			public HRESULT GetSchemaHiveMountName(BSTR* pMountName) mut
			{
				return VT.GetSchemaHiveMountName(&this, pMountName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITargetInfo *self, WcmTargetMode* TargetMode) GetTargetMode;
				public new function HRESULT(ITargetInfo *self, WcmTargetMode TargetMode) SetTargetMode;
				public new function HRESULT(ITargetInfo *self, BSTR* TemporaryStoreLocation) GetTemporaryStoreLocation;
				public new function HRESULT(ITargetInfo *self, PWSTR TemporaryStoreLocation) SetTemporaryStoreLocation;
				public new function HRESULT(ITargetInfo *self, BSTR* TargetID) GetTargetID;
				public new function HRESULT(ITargetInfo *self, Guid TargetID) SetTargetID;
				public new function HRESULT(ITargetInfo *self, BSTR* ProcessorArchitecture) GetTargetProcessorArchitecture;
				public new function HRESULT(ITargetInfo *self, PWSTR ProcessorArchitecture) SetTargetProcessorArchitecture;
				public new function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Property, BSTR* Value) GetProperty;
				public new function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Property, PWSTR Value) SetProperty;
				public new function HRESULT(ITargetInfo *self, IItemEnumerator** Enumerator) GetEnumerator;
				public new function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) ExpandTarget;
				public new function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) ExpandTargetPath;
				public new function HRESULT(ITargetInfo *self, PWSTR Module, PWSTR Path) SetModulePath;
				public new function HRESULT(ITargetInfo *self, PWSTR Module, HINSTANCE* ModuleHandle) LoadModule;
				public new function HRESULT(ITargetInfo *self, PWSTR InstallerModule, uint8* Wow64Context) SetWow64Context;
				public new function HRESULT(ITargetInfo *self, PWSTR ClientArchitecture, PWSTR Value, BSTR* TranslatedValue) TranslateWow64;
				public new function HRESULT(ITargetInfo *self, PWSTR pwzHiveDir) SetSchemaHiveLocation;
				public new function HRESULT(ITargetInfo *self, BSTR* pHiveLocation) GetSchemaHiveLocation;
				public new function HRESULT(ITargetInfo *self, PWSTR pwzMountName) SetSchemaHiveMountName;
				public new function HRESULT(ITargetInfo *self, BSTR* pMountName) GetSchemaHiveMountName;
			}
		}
		[CRepr]
		public struct ISettingsEngine : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb9, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamespaces(WcmNamespaceEnumerationFlags Flags, void* Reserved, IItemEnumerator** Namespaces) mut
			{
				return VT.GetNamespaces(&this, Flags, Reserved, Namespaces);
			}
			public HRESULT GetNamespace(ISettingsIdentity* SettingsID, WcmNamespaceAccess Access, void* Reserved, ISettingsNamespace** NamespaceItem) mut
			{
				return VT.GetNamespace(&this, SettingsID, Access, Reserved, NamespaceItem);
			}
			public HRESULT GetErrorDescription(int32 HResult, BSTR* Message) mut
			{
				return VT.GetErrorDescription(&this, HResult, Message);
			}
			public HRESULT CreateSettingsIdentity(ISettingsIdentity** SettingsID) mut
			{
				return VT.CreateSettingsIdentity(&this, SettingsID);
			}
			public HRESULT GetStoreStatus(void* Reserved, WcmUserStatus* Status) mut
			{
				return VT.GetStoreStatus(&this, Reserved, Status);
			}
			public HRESULT LoadStore(uint32 Flags) mut
			{
				return VT.LoadStore(&this, Flags);
			}
			public HRESULT UnloadStore(void* Reserved) mut
			{
				return VT.UnloadStore(&this, Reserved);
			}
			public HRESULT RegisterNamespace(ISettingsIdentity* SettingsID, IStream* Stream, BOOL PushSettings, VARIANT* Results) mut
			{
				return VT.RegisterNamespace(&this, SettingsID, Stream, PushSettings, Results);
			}
			public HRESULT UnregisterNamespace(ISettingsIdentity* SettingsID, BOOL RemoveSettings) mut
			{
				return VT.UnregisterNamespace(&this, SettingsID, RemoveSettings);
			}
			public HRESULT CreateTargetInfo(ITargetInfo** Target) mut
			{
				return VT.CreateTargetInfo(&this, Target);
			}
			public HRESULT GetTargetInfo(ITargetInfo** Target) mut
			{
				return VT.GetTargetInfo(&this, Target);
			}
			public HRESULT SetTargetInfo(ITargetInfo* Target) mut
			{
				return VT.SetTargetInfo(&this, Target);
			}
			public HRESULT CreateSettingsContext(uint32 Flags, void* Reserved, ISettingsContext** SettingsContext) mut
			{
				return VT.CreateSettingsContext(&this, Flags, Reserved, SettingsContext);
			}
			public HRESULT SetSettingsContext(ISettingsContext* SettingsContext) mut
			{
				return VT.SetSettingsContext(&this, SettingsContext);
			}
			public HRESULT ApplySettingsContext(ISettingsContext* SettingsContext, PWSTR** pppwzIdentities, uint* pcIdentities) mut
			{
				return VT.ApplySettingsContext(&this, SettingsContext, pppwzIdentities, pcIdentities);
			}
			public HRESULT GetSettingsContext(ISettingsContext** SettingsContext) mut
			{
				return VT.GetSettingsContext(&this, SettingsContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsEngine *self, WcmNamespaceEnumerationFlags Flags, void* Reserved, IItemEnumerator** Namespaces) GetNamespaces;
				public new function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, WcmNamespaceAccess Access, void* Reserved, ISettingsNamespace** NamespaceItem) GetNamespace;
				public new function HRESULT(ISettingsEngine *self, int32 HResult, BSTR* Message) GetErrorDescription;
				public new function HRESULT(ISettingsEngine *self, ISettingsIdentity** SettingsID) CreateSettingsIdentity;
				public new function HRESULT(ISettingsEngine *self, void* Reserved, WcmUserStatus* Status) GetStoreStatus;
				public new function HRESULT(ISettingsEngine *self, uint32 Flags) LoadStore;
				public new function HRESULT(ISettingsEngine *self, void* Reserved) UnloadStore;
				public new function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, IStream* Stream, BOOL PushSettings, VARIANT* Results) RegisterNamespace;
				public new function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, BOOL RemoveSettings) UnregisterNamespace;
				public new function HRESULT(ISettingsEngine *self, ITargetInfo** Target) CreateTargetInfo;
				public new function HRESULT(ISettingsEngine *self, ITargetInfo** Target) GetTargetInfo;
				public new function HRESULT(ISettingsEngine *self, ITargetInfo* Target) SetTargetInfo;
				public new function HRESULT(ISettingsEngine *self, uint32 Flags, void* Reserved, ISettingsContext** SettingsContext) CreateSettingsContext;
				public new function HRESULT(ISettingsEngine *self, ISettingsContext* SettingsContext) SetSettingsContext;
				public new function HRESULT(ISettingsEngine *self, ISettingsContext* SettingsContext, PWSTR** pppwzIdentities, uint* pcIdentities) ApplySettingsContext;
				public new function HRESULT(ISettingsEngine *self, ISettingsContext** SettingsContext) GetSettingsContext;
			}
		}
		[CRepr]
		public struct ISettingsItem : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbb, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(BSTR* Name) mut
			{
				return VT.GetName(&this, Name);
			}
			public HRESULT GetValue(VARIANT* Value) mut
			{
				return VT.GetValue(&this, Value);
			}
			public HRESULT SetValue(VARIANT* Value) mut
			{
				return VT.SetValue(&this, Value);
			}
			public HRESULT GetSettingType(WcmSettingType* Type) mut
			{
				return VT.GetSettingType(&this, Type);
			}
			public HRESULT GetDataType(WcmDataType* Type) mut
			{
				return VT.GetDataType(&this, Type);
			}
			public HRESULT GetValueRaw(uint8** Data, uint32* DataSize) mut
			{
				return VT.GetValueRaw(&this, Data, DataSize);
			}
			public HRESULT SetValueRaw(int32 DataType, uint8* Data, uint32 DataSize) mut
			{
				return VT.SetValueRaw(&this, DataType, Data, DataSize);
			}
			public HRESULT HasChild(BOOL* ItemHasChild) mut
			{
				return VT.HasChild(&this, ItemHasChild);
			}
			public HRESULT Children(IItemEnumerator** Children) mut
			{
				return VT.Children(&this, Children);
			}
			public HRESULT GetChild(PWSTR Name, ISettingsItem** Child) mut
			{
				return VT.GetChild(&this, Name, Child);
			}
			public HRESULT GetSettingByPath(PWSTR Path, ISettingsItem** Setting) mut
			{
				return VT.GetSettingByPath(&this, Path, Setting);
			}
			public HRESULT CreateSettingByPath(PWSTR Path, ISettingsItem** Setting) mut
			{
				return VT.CreateSettingByPath(&this, Path, Setting);
			}
			public HRESULT RemoveSettingByPath(PWSTR Path) mut
			{
				return VT.RemoveSettingByPath(&this, Path);
			}
			public HRESULT GetListKeyInformation(BSTR* KeyName, WcmDataType* DataType) mut
			{
				return VT.GetListKeyInformation(&this, KeyName, DataType);
			}
			public HRESULT CreateListElement(VARIANT* KeyData, ISettingsItem** Child) mut
			{
				return VT.CreateListElement(&this, KeyData, Child);
			}
			public HRESULT RemoveListElement(PWSTR ElementName) mut
			{
				return VT.RemoveListElement(&this, ElementName);
			}
			public HRESULT Attributes(IItemEnumerator** Attributes) mut
			{
				return VT.Attributes(&this, Attributes);
			}
			public HRESULT GetAttribute(PWSTR Name, VARIANT* Value) mut
			{
				return VT.GetAttribute(&this, Name, Value);
			}
			public HRESULT GetPath(BSTR* Path) mut
			{
				return VT.GetPath(&this, Path);
			}
			public HRESULT GetRestrictionFacets(WcmRestrictionFacets* RestrictionFacets) mut
			{
				return VT.GetRestrictionFacets(&this, RestrictionFacets);
			}
			public HRESULT GetRestriction(WcmRestrictionFacets RestrictionFacet, VARIANT* FacetData) mut
			{
				return VT.GetRestriction(&this, RestrictionFacet, FacetData);
			}
			public HRESULT GetKeyValue(VARIANT* Value) mut
			{
				return VT.GetKeyValue(&this, Value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsItem *self, BSTR* Name) GetName;
				public new function HRESULT(ISettingsItem *self, VARIANT* Value) GetValue;
				public new function HRESULT(ISettingsItem *self, VARIANT* Value) SetValue;
				public new function HRESULT(ISettingsItem *self, WcmSettingType* Type) GetSettingType;
				public new function HRESULT(ISettingsItem *self, WcmDataType* Type) GetDataType;
				public new function HRESULT(ISettingsItem *self, uint8** Data, uint32* DataSize) GetValueRaw;
				public new function HRESULT(ISettingsItem *self, int32 DataType, uint8* Data, uint32 DataSize) SetValueRaw;
				public new function HRESULT(ISettingsItem *self, BOOL* ItemHasChild) HasChild;
				public new function HRESULT(ISettingsItem *self, IItemEnumerator** Children) Children;
				public new function HRESULT(ISettingsItem *self, PWSTR Name, ISettingsItem** Child) GetChild;
				public new function HRESULT(ISettingsItem *self, PWSTR Path, ISettingsItem** Setting) GetSettingByPath;
				public new function HRESULT(ISettingsItem *self, PWSTR Path, ISettingsItem** Setting) CreateSettingByPath;
				public new function HRESULT(ISettingsItem *self, PWSTR Path) RemoveSettingByPath;
				public new function HRESULT(ISettingsItem *self, BSTR* KeyName, WcmDataType* DataType) GetListKeyInformation;
				public new function HRESULT(ISettingsItem *self, VARIANT* KeyData, ISettingsItem** Child) CreateListElement;
				public new function HRESULT(ISettingsItem *self, PWSTR ElementName) RemoveListElement;
				public new function HRESULT(ISettingsItem *self, IItemEnumerator** Attributes) Attributes;
				public new function HRESULT(ISettingsItem *self, PWSTR Name, VARIANT* Value) GetAttribute;
				public new function HRESULT(ISettingsItem *self, BSTR* Path) GetPath;
				public new function HRESULT(ISettingsItem *self, WcmRestrictionFacets* RestrictionFacets) GetRestrictionFacets;
				public new function HRESULT(ISettingsItem *self, WcmRestrictionFacets RestrictionFacet, VARIANT* FacetData) GetRestriction;
				public new function HRESULT(ISettingsItem *self, VARIANT* Value) GetKeyValue;
			}
		}
		[CRepr]
		public struct ISettingsNamespace : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bba, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentity(ISettingsIdentity** SettingsID) mut
			{
				return VT.GetIdentity(&this, SettingsID);
			}
			public HRESULT Settings(IItemEnumerator** Settings) mut
			{
				return VT.Settings(&this, Settings);
			}
			public HRESULT Save(BOOL PushSettings, ISettingsResult** Result) mut
			{
				return VT.Save(&this, PushSettings, Result);
			}
			public HRESULT GetSettingByPath(PWSTR Path, ISettingsItem** Setting) mut
			{
				return VT.GetSettingByPath(&this, Path, Setting);
			}
			public HRESULT CreateSettingByPath(PWSTR Path, ISettingsItem** Setting) mut
			{
				return VT.CreateSettingByPath(&this, Path, Setting);
			}
			public HRESULT RemoveSettingByPath(PWSTR Path) mut
			{
				return VT.RemoveSettingByPath(&this, Path);
			}
			public HRESULT GetAttribute(PWSTR Name, VARIANT* Value) mut
			{
				return VT.GetAttribute(&this, Name, Value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsNamespace *self, ISettingsIdentity** SettingsID) GetIdentity;
				public new function HRESULT(ISettingsNamespace *self, IItemEnumerator** Settings) Settings;
				public new function HRESULT(ISettingsNamespace *self, BOOL PushSettings, ISettingsResult** Result) Save;
				public new function HRESULT(ISettingsNamespace *self, PWSTR Path, ISettingsItem** Setting) GetSettingByPath;
				public new function HRESULT(ISettingsNamespace *self, PWSTR Path, ISettingsItem** Setting) CreateSettingByPath;
				public new function HRESULT(ISettingsNamespace *self, PWSTR Path) RemoveSettingByPath;
				public new function HRESULT(ISettingsNamespace *self, PWSTR Name, VARIANT* Value) GetAttribute;
			}
		}
		[CRepr]
		public struct ISettingsResult : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbc, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(BSTR* description) mut
			{
				return VT.GetDescription(&this, description);
			}
			public HRESULT GetErrorCode(HRESULT* hrOut) mut
			{
				return VT.GetErrorCode(&this, hrOut);
			}
			public HRESULT GetContextDescription(BSTR* description) mut
			{
				return VT.GetContextDescription(&this, description);
			}
			public HRESULT GetLine(uint32* dwLine) mut
			{
				return VT.GetLine(&this, dwLine);
			}
			public HRESULT GetColumn(uint32* dwColumn) mut
			{
				return VT.GetColumn(&this, dwColumn);
			}
			public HRESULT GetSource(BSTR* file) mut
			{
				return VT.GetSource(&this, file);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsResult *self, BSTR* description) GetDescription;
				public new function HRESULT(ISettingsResult *self, HRESULT* hrOut) GetErrorCode;
				public new function HRESULT(ISettingsResult *self, BSTR* description) GetContextDescription;
				public new function HRESULT(ISettingsResult *self, uint32* dwLine) GetLine;
				public new function HRESULT(ISettingsResult *self, uint32* dwColumn) GetColumn;
				public new function HRESULT(ISettingsResult *self, BSTR* file) GetSource;
			}
		}
		[CRepr]
		public struct ISettingsContext : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbd, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(IStream* pStream, ITargetInfo* pTarget) mut
			{
				return VT.Serialize(&this, pStream, pTarget);
			}
			public HRESULT Deserialize(IStream* pStream, ITargetInfo* pTarget, ISettingsResult*** pppResults, uint* pcResultCount) mut
			{
				return VT.Deserialize(&this, pStream, pTarget, pppResults, pcResultCount);
			}
			public HRESULT SetUserData(void* pUserData) mut
			{
				return VT.SetUserData(&this, pUserData);
			}
			public HRESULT GetUserData(void** pUserData) mut
			{
				return VT.GetUserData(&this, pUserData);
			}
			public HRESULT GetNamespaces(IItemEnumerator** ppNamespaceIds) mut
			{
				return VT.GetNamespaces(&this, ppNamespaceIds);
			}
			public HRESULT GetStoredSettings(ISettingsIdentity* pIdentity, IItemEnumerator** ppAddedSettings, IItemEnumerator** ppModifiedSettings, IItemEnumerator** ppDeletedSettings) mut
			{
				return VT.GetStoredSettings(&this, pIdentity, ppAddedSettings, ppModifiedSettings, ppDeletedSettings);
			}
			public HRESULT RevertSetting(ISettingsIdentity* pIdentity, PWSTR pwzSetting) mut
			{
				return VT.RevertSetting(&this, pIdentity, pwzSetting);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISettingsContext *self, IStream* pStream, ITargetInfo* pTarget) Serialize;
				public new function HRESULT(ISettingsContext *self, IStream* pStream, ITargetInfo* pTarget, ISettingsResult*** pppResults, uint* pcResultCount) Deserialize;
				public new function HRESULT(ISettingsContext *self, void* pUserData) SetUserData;
				public new function HRESULT(ISettingsContext *self, void** pUserData) GetUserData;
				public new function HRESULT(ISettingsContext *self, IItemEnumerator** ppNamespaceIds) GetNamespaces;
				public new function HRESULT(ISettingsContext *self, ISettingsIdentity* pIdentity, IItemEnumerator** ppAddedSettings, IItemEnumerator** ppModifiedSettings, IItemEnumerator** ppDeletedSettings) GetStoredSettings;
				public new function HRESULT(ISettingsContext *self, ISettingsIdentity* pIdentity, PWSTR pwzSetting) RevertSetting;
			}
		}
		
	}
}
