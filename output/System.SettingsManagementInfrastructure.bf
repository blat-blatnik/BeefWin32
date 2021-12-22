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
		
		[AllowDuplicates]
		public enum WcmTargetMode : int32
		{
			OfflineMode = 1,
			OnlineMode = 2,
		}
		[AllowDuplicates]
		public enum WcmNamespaceEnumerationFlags : int32
		{
			SharedEnumeration = 1,
			UserEnumeration = 2,
			AllEnumeration = 3,
		}
		[AllowDuplicates]
		public enum WcmDataType : int32
		{
			dataTypeByte = 1,
			dataTypeSByte = 2,
			dataTypeUInt16 = 3,
			dataTypeInt16 = 4,
			dataTypeUInt32 = 5,
			dataTypeInt32 = 6,
			dataTypeUInt64 = 7,
			dataTypeInt64 = 8,
			dataTypeBoolean = 11,
			dataTypeString = 12,
			dataTypeFlagArray = 32768,
		}
		[AllowDuplicates]
		public enum WcmSettingType : int32
		{
			settingTypeScalar = 1,
			settingTypeComplex = 2,
			settingTypeList = 3,
		}
		[AllowDuplicates]
		public enum WcmRestrictionFacets : int32
		{
			restrictionFacetMaxLength = 1,
			restrictionFacetEnumeration = 2,
			restrictionFacetMaxInclusive = 4,
			restrictionFacetMinInclusive = 8,
		}
		[AllowDuplicates]
		public enum WcmUserStatus : int32
		{
			UnknownStatus = 0,
			UserRegistered = 1,
			UserUnregistered = 2,
			UserLoaded = 3,
			UserUnloaded = 4,
		}
		[AllowDuplicates]
		public enum WcmNamespaceAccess : int32
		{
			ReadOnlyAccess = 1,
			ReadWriteAccess = 2,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SettingsEngine = .(0x9f7d7bb5, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IItemEnumerator : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb7, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IItemEnumerator *self, VARIANT* Item) Current;
				public function HRESULT(IItemEnumerator *self, BOOL* ItemValid) MoveNext;
				public function HRESULT(IItemEnumerator *self) Reset;
			}
		}
		[CRepr]
		public struct ISettingsIdentity : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb6, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsIdentity *self, void* Reserved, PWSTR Name, BSTR* Value) GetAttribute;
				public function HRESULT(ISettingsIdentity *self, void* Reserved, PWSTR Name, PWSTR Value) SetAttribute;
				public function HRESULT(ISettingsIdentity *self, uint32* Flags) GetFlags;
				public function HRESULT(ISettingsIdentity *self, uint32 Flags) SetFlags;
			}
		}
		[CRepr]
		public struct ITargetInfo : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb8, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ITargetInfo *self, WcmTargetMode* TargetMode) GetTargetMode;
				public function HRESULT(ITargetInfo *self, WcmTargetMode TargetMode) SetTargetMode;
				public function HRESULT(ITargetInfo *self, BSTR* TemporaryStoreLocation) GetTemporaryStoreLocation;
				public function HRESULT(ITargetInfo *self, PWSTR TemporaryStoreLocation) SetTemporaryStoreLocation;
				public function HRESULT(ITargetInfo *self, BSTR* TargetID) GetTargetID;
				public function HRESULT(ITargetInfo *self, Guid TargetID) SetTargetID;
				public function HRESULT(ITargetInfo *self, BSTR* ProcessorArchitecture) GetTargetProcessorArchitecture;
				public function HRESULT(ITargetInfo *self, PWSTR ProcessorArchitecture) SetTargetProcessorArchitecture;
				public function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Property, BSTR* Value) GetProperty;
				public function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Property, PWSTR Value) SetProperty;
				public function HRESULT(ITargetInfo *self, IItemEnumerator** Enumerator) GetEnumerator;
				public function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) ExpandTarget;
				public function HRESULT(ITargetInfo *self, BOOL Offline, PWSTR Location, BSTR* ExpandedLocation) ExpandTargetPath;
				public function HRESULT(ITargetInfo *self, PWSTR Module, PWSTR Path) SetModulePath;
				public function HRESULT(ITargetInfo *self, PWSTR Module, HINSTANCE* ModuleHandle) LoadModule;
				public function HRESULT(ITargetInfo *self, PWSTR InstallerModule, uint8* Wow64Context) SetWow64Context;
				public function HRESULT(ITargetInfo *self, PWSTR ClientArchitecture, PWSTR Value, BSTR* TranslatedValue) TranslateWow64;
				public function HRESULT(ITargetInfo *self, PWSTR pwzHiveDir) SetSchemaHiveLocation;
				public function HRESULT(ITargetInfo *self, BSTR* pHiveLocation) GetSchemaHiveLocation;
				public function HRESULT(ITargetInfo *self, PWSTR pwzMountName) SetSchemaHiveMountName;
				public function HRESULT(ITargetInfo *self, BSTR* pMountName) GetSchemaHiveMountName;
			}
		}
		[CRepr]
		public struct ISettingsEngine : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bb9, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsEngine *self, WcmNamespaceEnumerationFlags Flags, void* Reserved, IItemEnumerator** Namespaces) GetNamespaces;
				public function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, WcmNamespaceAccess Access, void* Reserved, ISettingsNamespace** NamespaceItem) GetNamespace;
				public function HRESULT(ISettingsEngine *self, int32 HResult, BSTR* Message) GetErrorDescription;
				public function HRESULT(ISettingsEngine *self, ISettingsIdentity** SettingsID) CreateSettingsIdentity;
				public function HRESULT(ISettingsEngine *self, void* Reserved, WcmUserStatus* Status) GetStoreStatus;
				public function HRESULT(ISettingsEngine *self, uint32 Flags) LoadStore;
				public function HRESULT(ISettingsEngine *self, void* Reserved) UnloadStore;
				public function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, IStream* Stream, BOOL PushSettings, VARIANT* Results) RegisterNamespace;
				public function HRESULT(ISettingsEngine *self, ISettingsIdentity* SettingsID, BOOL RemoveSettings) UnregisterNamespace;
				public function HRESULT(ISettingsEngine *self, ITargetInfo** Target) CreateTargetInfo;
				public function HRESULT(ISettingsEngine *self, ITargetInfo** Target) GetTargetInfo;
				public function HRESULT(ISettingsEngine *self, ITargetInfo* Target) SetTargetInfo;
				public function HRESULT(ISettingsEngine *self, uint32 Flags, void* Reserved, ISettingsContext** SettingsContext) CreateSettingsContext;
				public function HRESULT(ISettingsEngine *self, ISettingsContext* SettingsContext) SetSettingsContext;
				public function HRESULT(ISettingsEngine *self, ISettingsContext* SettingsContext, PWSTR** pppwzIdentities, uint* pcIdentities) ApplySettingsContext;
				public function HRESULT(ISettingsEngine *self, ISettingsContext** SettingsContext) GetSettingsContext;
			}
		}
		[CRepr]
		public struct ISettingsItem : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbb, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsItem *self, BSTR* Name) GetName;
				public function HRESULT(ISettingsItem *self, VARIANT* Value) GetValue;
				public function HRESULT(ISettingsItem *self, VARIANT* Value) SetValue;
				public function HRESULT(ISettingsItem *self, WcmSettingType* Type) GetSettingType;
				public function HRESULT(ISettingsItem *self, WcmDataType* Type) GetDataType;
				public function HRESULT(ISettingsItem *self, uint8** Data, uint32* DataSize) GetValueRaw;
				public function HRESULT(ISettingsItem *self, int32 DataType, uint8* Data, uint32 DataSize) SetValueRaw;
				public function HRESULT(ISettingsItem *self, BOOL* ItemHasChild) HasChild;
				public function HRESULT(ISettingsItem *self, IItemEnumerator** Children) Children;
				public function HRESULT(ISettingsItem *self, PWSTR Name, ISettingsItem** Child) GetChild;
				public function HRESULT(ISettingsItem *self, PWSTR Path, ISettingsItem** Setting) GetSettingByPath;
				public function HRESULT(ISettingsItem *self, PWSTR Path, ISettingsItem** Setting) CreateSettingByPath;
				public function HRESULT(ISettingsItem *self, PWSTR Path) RemoveSettingByPath;
				public function HRESULT(ISettingsItem *self, BSTR* KeyName, WcmDataType* DataType) GetListKeyInformation;
				public function HRESULT(ISettingsItem *self, VARIANT* KeyData, ISettingsItem** Child) CreateListElement;
				public function HRESULT(ISettingsItem *self, PWSTR ElementName) RemoveListElement;
				public function HRESULT(ISettingsItem *self, IItemEnumerator** Attributes) Attributes;
				public function HRESULT(ISettingsItem *self, PWSTR Name, VARIANT* Value) GetAttribute;
				public function HRESULT(ISettingsItem *self, BSTR* Path) GetPath;
				public function HRESULT(ISettingsItem *self, WcmRestrictionFacets* RestrictionFacets) GetRestrictionFacets;
				public function HRESULT(ISettingsItem *self, WcmRestrictionFacets RestrictionFacet, VARIANT* FacetData) GetRestriction;
				public function HRESULT(ISettingsItem *self, VARIANT* Value) GetKeyValue;
			}
		}
		[CRepr]
		public struct ISettingsNamespace : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bba, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsNamespace *self, ISettingsIdentity** SettingsID) GetIdentity;
				public function HRESULT(ISettingsNamespace *self, IItemEnumerator** Settings) Settings;
				public function HRESULT(ISettingsNamespace *self, BOOL PushSettings, ISettingsResult** Result) Save;
				public function HRESULT(ISettingsNamespace *self, PWSTR Path, ISettingsItem** Setting) GetSettingByPath;
				public function HRESULT(ISettingsNamespace *self, PWSTR Path, ISettingsItem** Setting) CreateSettingByPath;
				public function HRESULT(ISettingsNamespace *self, PWSTR Path) RemoveSettingByPath;
				public function HRESULT(ISettingsNamespace *self, PWSTR Name, VARIANT* Value) GetAttribute;
			}
		}
		[CRepr]
		public struct ISettingsResult : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbc, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsResult *self, BSTR* description) GetDescription;
				public function HRESULT(ISettingsResult *self, HRESULT* hrOut) GetErrorCode;
				public function HRESULT(ISettingsResult *self, BSTR* description) GetContextDescription;
				public function HRESULT(ISettingsResult *self, uint32* dwLine) GetLine;
				public function HRESULT(ISettingsResult *self, uint32* dwColumn) GetColumn;
				public function HRESULT(ISettingsResult *self, BSTR* file) GetSource;
			}
		}
		[CRepr]
		public struct ISettingsContext : IUnknown
		{
			public const new Guid IID = .(0x9f7d7bbd, 0x20b3, 0x11da, 0x81, 0xa5, 0x00, 0x30, 0xf1, 0x64, 0x2e, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ISettingsContext *self, IStream* pStream, ITargetInfo* pTarget) Serialize;
				public function HRESULT(ISettingsContext *self, IStream* pStream, ITargetInfo* pTarget, ISettingsResult*** pppResults, uint* pcResultCount) Deserialize;
				public function HRESULT(ISettingsContext *self, void* pUserData) SetUserData;
				public function HRESULT(ISettingsContext *self, void** pUserData) GetUserData;
				public function HRESULT(ISettingsContext *self, IItemEnumerator** ppNamespaceIds) GetNamespaces;
				public function HRESULT(ISettingsContext *self, ISettingsIdentity* pIdentity, IItemEnumerator** ppAddedSettings, IItemEnumerator** ppModifiedSettings, IItemEnumerator** ppDeletedSettings) GetStoredSettings;
				public function HRESULT(ISettingsContext *self, ISettingsIdentity* pIdentity, PWSTR pwzSetting) RevertSetting;
			}
		}
		
	}
}
