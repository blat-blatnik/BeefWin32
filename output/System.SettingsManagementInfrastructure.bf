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
		
		public struct IItemEnumerator {}
		public struct ISettingsIdentity {}
		public struct ITargetInfo {}
		public struct ISettingsEngine {}
		public struct ISettingsItem {}
		public struct ISettingsNamespace {}
		public struct ISettingsResult {}
		public struct ISettingsContext {}
		
	}
}
