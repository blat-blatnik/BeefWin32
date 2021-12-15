using System;

// namespace UI.Shell.PropertiesSystem
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PKEY_PIDSTR_MAX = 10;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum GETPROPERTYSTOREFLAGS : int32
		{
			GPS_DEFAULT = 0,
			GPS_HANDLERPROPERTIESONLY = 1,
			GPS_READWRITE = 2,
			GPS_TEMPORARY = 4,
			GPS_FASTPROPERTIESONLY = 8,
			GPS_OPENSLOWITEM = 16,
			GPS_DELAYCREATION = 32,
			GPS_BESTEFFORT = 64,
			GPS_NO_OPLOCK = 128,
			GPS_PREFERQUERYPROPERTIES = 256,
			GPS_EXTRINSICPROPERTIES = 512,
			GPS_EXTRINSICPROPERTIESONLY = 1024,
			GPS_VOLATILEPROPERTIES = 2048,
			GPS_VOLATILEPROPERTIESONLY = 4096,
			GPS_MASK_VALID = 8191,
		}
		[AllowDuplicates]
		public enum PKA_FLAGS : int32
		{
			PKA_SET = 0,
			PKA_APPEND = 1,
			PKA_DELETE = 2,
		}
		[AllowDuplicates]
		public enum PSC_STATE : int32
		{
			PSC_NORMAL = 0,
			PSC_NOTINSOURCE = 1,
			PSC_DIRTY = 2,
			PSC_READONLY = 3,
		}
		[AllowDuplicates]
		public enum PROPENUMTYPE : int32
		{
			PET_DISCRETEVALUE = 0,
			PET_RANGEDVALUE = 1,
			PET_DEFAULTVALUE = 2,
			PET_ENDRANGE = 3,
		}
		[AllowDuplicates]
		public enum PROPDESC_TYPE_FLAGS : int32
		{
			PDTF_DEFAULT = 0,
			PDTF_MULTIPLEVALUES = 1,
			PDTF_ISINNATE = 2,
			PDTF_ISGROUP = 4,
			PDTF_CANGROUPBY = 8,
			PDTF_CANSTACKBY = 16,
			PDTF_ISTREEPROPERTY = 32,
			PDTF_INCLUDEINFULLTEXTQUERY = 64,
			PDTF_ISVIEWABLE = 128,
			PDTF_ISQUERYABLE = 256,
			PDTF_CANBEPURGED = 512,
			PDTF_SEARCHRAWVALUE = 1024,
			PDTF_DONTCOERCEEMPTYSTRINGS = 2048,
			PDTF_ALWAYSINSUPPLEMENTALSTORE = 4096,
			PDTF_ISSYSTEMPROPERTY = -2147483648,
			PDTF_MASK_ALL = -2147475457,
		}
		[AllowDuplicates]
		public enum PROPDESC_VIEW_FLAGS : int32
		{
			PDVF_DEFAULT = 0,
			PDVF_CENTERALIGN = 1,
			PDVF_RIGHTALIGN = 2,
			PDVF_BEGINNEWGROUP = 4,
			PDVF_FILLAREA = 8,
			PDVF_SORTDESCENDING = 16,
			PDVF_SHOWONLYIFPRESENT = 32,
			PDVF_SHOWBYDEFAULT = 64,
			PDVF_SHOWINPRIMARYLIST = 128,
			PDVF_SHOWINSECONDARYLIST = 256,
			PDVF_HIDELABEL = 512,
			PDVF_HIDDEN = 2048,
			PDVF_CANWRAP = 4096,
			PDVF_MASK_ALL = 7167,
		}
		[AllowDuplicates]
		public enum PROPDESC_DISPLAYTYPE : int32
		{
			PDDT_STRING = 0,
			PDDT_NUMBER = 1,
			PDDT_BOOLEAN = 2,
			PDDT_DATETIME = 3,
			PDDT_ENUMERATED = 4,
		}
		[AllowDuplicates]
		public enum PROPDESC_GROUPING_RANGE : int32
		{
			PDGR_DISCRETE = 0,
			PDGR_ALPHANUMERIC = 1,
			PDGR_SIZE = 2,
			PDGR_DYNAMIC = 3,
			PDGR_DATE = 4,
			PDGR_PERCENT = 5,
			PDGR_ENUMERATED = 6,
		}
		[AllowDuplicates]
		public enum PROPDESC_FORMAT_FLAGS : int32
		{
			PDFF_DEFAULT = 0,
			PDFF_PREFIXNAME = 1,
			PDFF_FILENAME = 2,
			PDFF_ALWAYSKB = 4,
			PDFF_RESERVED_RIGHTTOLEFT = 8,
			PDFF_SHORTTIME = 16,
			PDFF_LONGTIME = 32,
			PDFF_HIDETIME = 64,
			PDFF_SHORTDATE = 128,
			PDFF_LONGDATE = 256,
			PDFF_HIDEDATE = 512,
			PDFF_RELATIVEDATE = 1024,
			PDFF_USEEDITINVITATION = 2048,
			PDFF_READONLY = 4096,
			PDFF_NOAUTOREADINGORDER = 8192,
		}
		[AllowDuplicates]
		public enum PROPDESC_SORTDESCRIPTION : int32
		{
			PDSD_GENERAL = 0,
			PDSD_A_Z = 1,
			PDSD_LOWEST_HIGHEST = 2,
			PDSD_SMALLEST_BIGGEST = 3,
			PDSD_OLDEST_NEWEST = 4,
		}
		[AllowDuplicates]
		public enum PROPDESC_RELATIVEDESCRIPTION_TYPE : int32
		{
			PDRDT_GENERAL = 0,
			PDRDT_DATE = 1,
			PDRDT_SIZE = 2,
			PDRDT_COUNT = 3,
			PDRDT_REVISION = 4,
			PDRDT_LENGTH = 5,
			PDRDT_DURATION = 6,
			PDRDT_SPEED = 7,
			PDRDT_RATE = 8,
			PDRDT_RATING = 9,
			PDRDT_PRIORITY = 10,
		}
		[AllowDuplicates]
		public enum PROPDESC_AGGREGATION_TYPE : int32
		{
			PDAT_DEFAULT = 0,
			PDAT_FIRST = 1,
			PDAT_SUM = 2,
			PDAT_AVERAGE = 3,
			PDAT_DATERANGE = 4,
			PDAT_UNION = 5,
			PDAT_MAX = 6,
			PDAT_MIN = 7,
		}
		[AllowDuplicates]
		public enum PROPDESC_CONDITION_TYPE : int32
		{
			PDCOT_NONE = 0,
			PDCOT_STRING = 1,
			PDCOT_SIZE = 2,
			PDCOT_DATETIME = 3,
			PDCOT_BOOLEAN = 4,
			PDCOT_NUMBER = 5,
		}
		[AllowDuplicates]
		public enum PROPDESC_SEARCHINFO_FLAGS : int32
		{
			PDSIF_DEFAULT = 0,
			PDSIF_ININVERTEDINDEX = 1,
			PDSIF_ISCOLUMN = 2,
			PDSIF_ISCOLUMNSPARSE = 4,
			PDSIF_ALWAYSINCLUDE = 8,
			PDSIF_USEFORTYPEAHEAD = 16,
		}
		[AllowDuplicates]
		public enum PROPDESC_COLUMNINDEX_TYPE : int32
		{
			PDCIT_NONE = 0,
			PDCIT_ONDISK = 1,
			PDCIT_INMEMORY = 2,
			PDCIT_ONDEMAND = 3,
			PDCIT_ONDISKALL = 4,
			PDCIT_ONDISKVECTOR = 5,
		}
		[AllowDuplicates]
		public enum PROPDESC_ENUMFILTER : int32
		{
			PDEF_ALL = 0,
			PDEF_SYSTEM = 1,
			PDEF_NONSYSTEM = 2,
			PDEF_VIEWABLE = 3,
			PDEF_QUERYABLE = 4,
			PDEF_INFULLTEXTQUERY = 5,
			PDEF_COLUMN = 6,
		}
		[AllowDuplicates]
		public enum _PERSIST_SPROPSTORE_FLAGS : int32
		{
			FPSPS_DEFAULT = 0,
			FPSPS_READONLY = 1,
			FPSPS_TREAT_NEW_VALUES_AS_DIRTY = 2,
		}
		[AllowDuplicates]
		public enum PSTIME_FLAGS : int32
		{
			PSTF_UTC = 0,
			PSTF_LOCAL = 1,
		}
		[AllowDuplicates]
		public enum PROPVAR_COMPARE_UNIT : int32
		{
			PVCU_DEFAULT = 0,
			PVCU_SECOND = 1,
			PVCU_MINUTE = 2,
			PVCU_HOUR = 3,
			PVCU_DAY = 4,
			PVCU_MONTH = 5,
			PVCU_YEAR = 6,
		}
		[AllowDuplicates]
		public enum PROPVAR_COMPARE_FLAGS : int32
		{
			PVCF_DEFAULT = 0,
			PVCF_TREATEMPTYASGREATERTHAN = 1,
			PVCF_USESTRCMP = 2,
			PVCF_USESTRCMPC = 4,
			PVCF_USESTRCMPI = 8,
			PVCF_USESTRCMPIC = 16,
			PVCF_DIGITSASNUMBERS_CASESENSITIVE = 32,
		}
		[AllowDuplicates]
		public enum PROPVAR_CHANGE_FLAGS : int32
		{
			PVCHF_DEFAULT = 0,
			PVCHF_NOVALUEPROP = 1,
			PVCHF_ALPHABOOL = 2,
			PVCHF_NOUSEROVERRIDE = 4,
			PVCHF_LOCALBOOL = 8,
			PVCHF_NOHEXSTRING = 16,
		}
		[AllowDuplicates]
		public enum DRAWPROGRESSFLAGS : int32
		{
			DPF_NONE = 0,
			DPF_MARQUEE = 1,
			DPF_MARQUEE_COMPLETE = 2,
			DPF_ERROR = 4,
			DPF_WARNING = 8,
			DPF_STOPPED = 16,
		}
		[AllowDuplicates]
		public enum SYNC_TRANSFER_STATUS : int32
		{
			STS_NONE = 0,
			STS_NEEDSUPLOAD = 1,
			STS_NEEDSDOWNLOAD = 2,
			STS_TRANSFERRING = 4,
			STS_PAUSED = 8,
			STS_HASERROR = 16,
			STS_FETCHING_METADATA = 32,
			STS_USER_REQUESTED_REFRESH = 64,
			STS_HASWARNING = 128,
			STS_EXCLUDED = 256,
			STS_INCOMPLETE = 512,
			STS_PLACEHOLDER_IFEMPTY = 1024,
		}
		[AllowDuplicates]
		public enum PLACEHOLDER_STATES : int32
		{
			PS_NONE = 0,
			PS_MARKED_FOR_OFFLINE_AVAILABILITY = 1,
			PS_FULL_PRIMARY_STREAM_AVAILABLE = 2,
			PS_CREATE_FILE_ACCESSIBLE = 4,
			PS_CLOUDFILE_PLACEHOLDER = 8,
			PS_DEFAULT = 7,
			PS_ALL = 15,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_NAME_FLAGS : int32
		{
			PUIFNF_DEFAULT = 0,
			PUIFNF_MNEMONIC = 1,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_FLAGS : int32
		{
			PUIF_DEFAULT = 0,
			PUIF_RIGHTALIGN = 1,
			PUIF_NOLABELININFOTIP = 2,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_FORMAT_FLAGS : int32
		{
			PUIFFDF_DEFAULT = 0,
			PUIFFDF_RIGHTTOLEFT = 1,
			PUIFFDF_SHORTFORMAT = 2,
			PUIFFDF_NOTIME = 4,
			PUIFFDF_FRIENDLYDATE = 8,
		}
		[AllowDuplicates]
		public enum PDOPSTATUS : int32
		{
			PDOPS_RUNNING = 1,
			PDOPS_PAUSED = 2,
			PDOPS_CANCELLED = 3,
			PDOPS_STOPPED = 4,
			PDOPS_ERRORS = 5,
		}
		[AllowDuplicates]
		public enum SYNC_ENGINE_STATE_FLAGS : int32
		{
			SESF_NONE = 0,
			SESF_SERVICE_QUOTA_NEARING_LIMIT = 1,
			SESF_SERVICE_QUOTA_EXCEEDED_LIMIT = 2,
			SESF_AUTHENTICATION_ERROR = 4,
			SESF_PAUSED_DUE_TO_METERED_NETWORK = 8,
			SESF_PAUSED_DUE_TO_DISK_SPACE_FULL = 16,
			SESF_PAUSED_DUE_TO_CLIENT_POLICY = 32,
			SESF_PAUSED_DUE_TO_SERVICE_POLICY = 64,
			SESF_SERVICE_UNAVAILABLE = 128,
			SESF_PAUSED_DUE_TO_USER_REQUEST = 256,
			SESF_ALL_FLAGS = 511,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct PROPERTYKEY
		{
			public Guid fmtid;
			public uint32 pid;
			public this(Guid fmtid, uint32 pid)
			{
				this.fmtid = fmtid;
				this.pid = pid;
			}
		}
		[CRepr]
		public struct SERIALIZEDPROPSTORAGE
		{
		}
		[CRepr]
		public struct PROPPRG
		{
			public uint16 flPrg;
			public uint16 flPrgInit;
			public CHAR[30] achTitle;
			public CHAR[128] achCmdLine;
			public CHAR[64] achWorkDir;
			public uint16 wHotKey;
			public CHAR[80] achIconFile;
			public uint16 wIconIndex;
			public uint32 dwEnhModeFlags;
			public uint32 dwRealModeFlags;
			public CHAR[80] achOtherFile;
			public CHAR[260] achPIFFile;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_InMemoryPropertyStore = .(0x9a02e012, 0x6303, 0x4e1e, 0xb9, 0xa1, 0x63, 0x0f, 0x80, 0x25, 0x92, 0xc5);
		public const Guid CLSID_InMemoryPropertyStoreMarshalByValue = .(0xd4ca0e2d, 0x6da7, 0x4b75, 0xa9, 0x7c, 0x5f, 0x30, 0x6f, 0x0e, 0xae, 0xdc);
		public const Guid CLSID_PropertySystem = .(0xb8967f85, 0x58ae, 0x4f46, 0x9f, 0xb2, 0x5d, 0x79, 0x04, 0x79, 0x8f, 0x4b);
		
		// --- COM Interfaces ---
		
		public struct IInitializeWithFile {}
		public struct IInitializeWithStream {}
		public struct IPropertyStore {}
		public struct INamedPropertyStore {}
		public struct IObjectWithPropertyKey {}
		public struct IPropertyChange {}
		public struct IPropertyChangeArray {}
		public struct IPropertyStoreCapabilities {}
		public struct IPropertyStoreCache {}
		public struct IPropertyEnumType {}
		public struct IPropertyEnumType2 {}
		public struct IPropertyEnumTypeList {}
		public struct IPropertyDescription {}
		public struct IPropertyDescription2 {}
		public struct IPropertyDescriptionAliasInfo {}
		public struct IPropertyDescriptionSearchInfo {}
		public struct IPropertyDescriptionRelatedPropertyInfo {}
		public struct IPropertySystem {}
		public struct IPropertyDescriptionList {}
		public struct IPropertyStoreFactory {}
		public struct IDelayedPropertyStoreFactory {}
		public struct IPersistSerializedPropStorage {}
		public struct IPersistSerializedPropStorage2 {}
		public struct IPropertySystemChangeNotify {}
		public struct ICreateObject {}
		public struct IPropertyUI {}
		
		// --- Functions ---
		
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToWinRTPropertyValue(PROPVARIANT* propvar, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinRTPropertyValueToPropVariant(IUnknown punkPropertyValue, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplay(PROPERTYKEY* propkey, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdfFlags, char16* pwszText, uint32 cchText);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplayAlloc(PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatPropertyValue(IPropertyStore pps, IPropertyDescription ppd, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetImageReferenceForValue(PROPERTYKEY* propkey, PROPVARIANT* propvar, PWSTR* ppszImageRes);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSStringFromPropertyKey(PROPERTYKEY* pkey, char16* psz, uint32 cch);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyKeyFromString(PWSTR pszString, PROPERTYKEY* pkey);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMemoryPropertyStore(Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateDelayedMultiplexPropertyStore(GETPROPERTYSTOREFLAGS flags, IDelayedPropertyStoreFactory pdpsf, uint32* rgStoreIds, uint32 cStores, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMultiplexPropertyStore(IUnknown* prgpunkStores, uint32 cStores, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyChangeArray(PROPERTYKEY* rgpropkey, PKA_FLAGS* rgflags, PROPVARIANT* rgpropvar, uint32 cChanges, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateSimplePropertyChange(PKA_FLAGS flags, PROPERTYKEY* key, PROPVARIANT* propvar, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescription(PROPERTYKEY* propkey, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescriptionByName(PWSTR pszCanonicalName, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSLookupPropertyHandlerCLSID(PWSTR pszFilePath, Guid* pclsid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetItemPropertyHandler(IUnknown punkItem, BOOL fReadWrite, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetItemPropertyHandlerWithCreateObject(IUnknown punkItem, BOOL fReadWrite, IUnknown punkCreateObject, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyValue(IPropertyStore pps, IPropertyDescription ppd, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSSetPropertyValue(IPropertyStore pps, IPropertyDescription ppd, PROPVARIANT* propvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSRegisterPropertySchema(PWSTR pszPath);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSUnregisterPropertySchema(PWSTR pszPath);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSRefreshPropertySchema();
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSEnumeratePropertyDescriptions(PROPDESC_ENUMFILTER filterOn, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyKeyFromName(PWSTR pszName, PROPERTYKEY* ppropkey);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetNameFromPropertyKey(PROPERTYKEY* propkey, PWSTR* ppszCanonicalName);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCoerceToCanonicalValue(PROPERTYKEY* key, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescriptionListFromString(PWSTR pszPropList, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyStoreFromPropertySetStorage(IPropertySetStorage ppss, uint32 grfMode, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyStoreFromObject(IUnknown punk, uint32 grfMode, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateAdapterFromPropertyStore(IPropertyStore pps, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertySystem(Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyFromPropertyStorage(SERIALIZEDPROPSTORAGE* psps, uint32 cb, PROPERTYKEY* rpkey, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetNamedPropertyFromPropertyStorage(SERIALIZEDPROPSTORAGE* psps, uint32 cb, PWSTR pszName, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadType(IPropertyBag propBag, PWSTR propName, VARIANT* @var, uint16 type);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStr(IPropertyBag propBag, PWSTR propName, char16* value, int32 characterCount);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStrAlloc(IPropertyBag propBag, PWSTR propName, PWSTR* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBSTR(IPropertyBag propBag, PWSTR propName, BSTR* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStr(IPropertyBag propBag, PWSTR propName, PWSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBSTR(IPropertyBag propBag, PWSTR propName, BSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadInt(IPropertyBag propBag, PWSTR propName, int32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteInt(IPropertyBag propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadSHORT(IPropertyBag propBag, PWSTR propName, int16* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteSHORT(IPropertyBag propBag, PWSTR propName, int16 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadLONG(IPropertyBag propBag, PWSTR propName, int32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteLONG(IPropertyBag propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadDWORD(IPropertyBag propBag, PWSTR propName, uint32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteDWORD(IPropertyBag propBag, PWSTR propName, uint32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBOOL(IPropertyBag propBag, PWSTR propName, BOOL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBOOL(IPropertyBag propBag, PWSTR propName, BOOL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTL(IPropertyBag propBag, PWSTR propName, POINTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTL(IPropertyBag propBag, PWSTR propName, POINTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTS(IPropertyBag propBag, PWSTR propName, POINTS* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTS(IPropertyBag propBag, PWSTR propName, POINTS* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadRECTL(IPropertyBag propBag, PWSTR propName, RECTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteRECTL(IPropertyBag propBag, PWSTR propName, RECTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStream(IPropertyBag propBag, PWSTR propName, IStream* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStream(IPropertyBag propBag, PWSTR propName, IStream value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_Delete(IPropertyBag propBag, PWSTR propName);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadULONGLONG(IPropertyBag propBag, PWSTR propName, uint64* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteULONGLONG(IPropertyBag propBag, PWSTR propName, uint64 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadUnknown(IPropertyBag propBag, PWSTR propName, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteUnknown(IPropertyBag propBag, PWSTR propName, IUnknown punk);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadGUID(IPropertyBag propBag, PWSTR propName, Guid* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteGUID(IPropertyBag propBag, PWSTR propName, Guid* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPropertyKey(IPropertyBag propBag, PWSTR propName, PROPERTYKEY* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePropertyKey(IPropertyBag propBag, PWSTR propName, PROPERTYKEY* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromResource(HINSTANCE hinst, uint32 id, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromBuffer(void* pv, uint32 cb, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromCLSID(Guid* clsid, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromGUIDAsString(Guid* guid, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromFileTime(FILETIME* pftIn, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromPropVariantVectorElem(PROPVARIANT* propvarIn, uint32 iElem, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantVectorFromPropVariant(PROPVARIANT* propvarSingle, PROPVARIANT* ppropvarVector);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStrRet(STRRET* pstrret, ITEMIDLIST* pidl, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromBooleanVector(BOOL* prgf, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt16Vector(int16* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt16Vector(uint16* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt32Vector(int32* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt32Vector(uint32* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt64Vector(int64* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt64Vector(uint64* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromDoubleVector(double* prgn, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromFileTimeVector(FILETIME* prgft, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStringVector(PWSTR* prgsz, uint32 cElems, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStringAsVector(PWSTR psz, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PropVariantToBooleanWithDefault(PROPVARIANT* propvarIn, BOOL fDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 PropVariantToInt16WithDefault(PROPVARIANT* propvarIn, int16 iDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 PropVariantToUInt16WithDefault(PROPVARIANT* propvarIn, uint16 uiDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PropVariantToInt32WithDefault(PROPVARIANT* propvarIn, int32 lDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PropVariantToUInt32WithDefault(PROPVARIANT* propvarIn, uint32 ulDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 PropVariantToInt64WithDefault(PROPVARIANT* propvarIn, int64 llDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 PropVariantToUInt64WithDefault(PROPVARIANT* propvarIn, uint64 ullDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern double PropVariantToDoubleWithDefault(PROPVARIANT* propvarIn, double dblDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PropVariantToStringWithDefault(PROPVARIANT* propvarIn, PWSTR pszDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBoolean(PROPVARIANT* propvarIn, BOOL* pfRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16(PROPVARIANT* propvarIn, int16* piRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16(PROPVARIANT* propvarIn, uint16* puiRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32(PROPVARIANT* propvarIn, int32* plRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32(PROPVARIANT* propvarIn, uint32* pulRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64(PROPVARIANT* propvarIn, int64* pllRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64(PROPVARIANT* propvarIn, uint64* pullRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDouble(PROPVARIANT* propvarIn, double* pdblRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBuffer(PROPVARIANT* propvar, void* pv, uint32 cb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToString(PROPVARIANT* propvar, char16* psz, uint32 cch);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToGUID(PROPVARIANT* propvar, Guid* pguid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringAlloc(PROPVARIANT* propvar, PWSTR* ppszOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBSTR(PROPVARIANT* propvar, BSTR* pbstrOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStrRet(PROPVARIANT* propvar, STRRET* pstrret);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTime(PROPVARIANT* propvar, PSTIME_FLAGS pstfOut, FILETIME* pftOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PropVariantGetElementCount(PROPVARIANT* propvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBooleanVector(PROPVARIANT* propvar, BOOL* prgf, uint32 crgf, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16Vector(PROPVARIANT* propvar, int16* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16Vector(PROPVARIANT* propvar, uint16* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32Vector(PROPVARIANT* propvar, int32* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32Vector(PROPVARIANT* propvar, uint32* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64Vector(PROPVARIANT* propvar, int64* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64Vector(PROPVARIANT* propvar, uint64* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDoubleVector(PROPVARIANT* propvar, double* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTimeVector(PROPVARIANT* propvar, FILETIME* prgft, uint32 crgft, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringVector(PROPVARIANT* propvar, PWSTR* prgsz, uint32 crgsz, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBooleanVectorAlloc(PROPVARIANT* propvar, BOOL** pprgf, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16VectorAlloc(PROPVARIANT* propvar, int16** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16VectorAlloc(PROPVARIANT* propvar, uint16** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32VectorAlloc(PROPVARIANT* propvar, int32** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32VectorAlloc(PROPVARIANT* propvar, uint32** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64VectorAlloc(PROPVARIANT* propvar, int64** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64VectorAlloc(PROPVARIANT* propvar, uint64** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDoubleVectorAlloc(PROPVARIANT* propvar, double** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTimeVectorAlloc(PROPVARIANT* propvar, FILETIME** pprgft, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringVectorAlloc(PROPVARIANT* propvar, PWSTR** pprgsz, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetBooleanElem(PROPVARIANT* propvar, uint32 iElem, BOOL* pfVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt16Elem(PROPVARIANT* propvar, uint32 iElem, int16* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt16Elem(PROPVARIANT* propvar, uint32 iElem, uint16* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt32Elem(PROPVARIANT* propvar, uint32 iElem, int32* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt32Elem(PROPVARIANT* propvar, uint32 iElem, uint32* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt64Elem(PROPVARIANT* propvar, uint32 iElem, int64* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt64Elem(PROPVARIANT* propvar, uint32 iElem, uint64* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetDoubleElem(PROPVARIANT* propvar, uint32 iElem, double* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetFileTimeElem(PROPVARIANT* propvar, uint32 iElem, FILETIME* pftVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetStringElem(PROPVARIANT* propvar, uint32 iElem, PWSTR* ppszVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClearPropVariantArray(PROPVARIANT* rgPropVar, uint32 cVars);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PropVariantCompareEx(PROPVARIANT* propvar1, PROPVARIANT* propvar2, PROPVAR_COMPARE_UNIT unit, PROPVAR_COMPARE_FLAGS flags);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantChangeType(PROPVARIANT* ppropvarDest, PROPVARIANT* propvarSrc, PROPVAR_CHANGE_FLAGS flags, uint16 vt);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToVariant(PROPVARIANT* pPropVar, VARIANT* pVar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToPropVariant(VARIANT* pVar, PROPVARIANT* pPropVar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromResource(HINSTANCE hinst, uint32 id, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromBuffer(void* pv, uint32 cb, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromGUIDAsString(Guid* guid, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromFileTime(FILETIME* pft, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromFileTimeArray(FILETIME* prgft, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromStrRet(STRRET* pstrret, ITEMIDLIST* pidl, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromVariantArrayElem(VARIANT* varIn, uint32 iElem, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromBooleanArray(BOOL* prgf, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt16Array(int16* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt16Array(uint16* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt32Array(int32* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt32Array(uint32* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt64Array(int64* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt64Array(uint64* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromDoubleArray(double* prgn, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromStringArray(PWSTR* prgsz, uint32 cElems, VARIANT* pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VariantToBooleanWithDefault(VARIANT* varIn, BOOL fDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VariantToInt16WithDefault(VARIANT* varIn, int16 iDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 VariantToUInt16WithDefault(VARIANT* varIn, uint16 uiDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantToInt32WithDefault(VARIANT* varIn, int32 lDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VariantToUInt32WithDefault(VARIANT* varIn, uint32 ulDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 VariantToInt64WithDefault(VARIANT* varIn, int64 llDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 VariantToUInt64WithDefault(VARIANT* varIn, uint64 ullDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern double VariantToDoubleWithDefault(VARIANT* varIn, double dblDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR VariantToStringWithDefault(VARIANT* varIn, PWSTR pszDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBoolean(VARIANT* varIn, BOOL* pfRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16(VARIANT* varIn, int16* piRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16(VARIANT* varIn, uint16* puiRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32(VARIANT* varIn, int32* plRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32(VARIANT* varIn, uint32* pulRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64(VARIANT* varIn, int64* pllRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64(VARIANT* varIn, uint64* pullRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDouble(VARIANT* varIn, double* pdblRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBuffer(VARIANT* varIn, void* pv, uint32 cb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToGUID(VARIANT* varIn, Guid* pguid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToString(VARIANT* varIn, char16* pszBuf, uint32 cchBuf);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringAlloc(VARIANT* varIn, PWSTR* ppszBuf);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDosDateTime(VARIANT* varIn, uint16* pwDate, uint16* pwTime);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStrRet(VARIANT* varIn, STRRET* pstrret);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToFileTime(VARIANT* varIn, PSTIME_FLAGS stfOut, FILETIME* pftOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VariantGetElementCount(VARIANT* varIn);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBooleanArray(VARIANT* @var, BOOL* prgf, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16Array(VARIANT* @var, int16* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16Array(VARIANT* @var, uint16* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32Array(VARIANT* @var, int32* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32Array(VARIANT* @var, uint32* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64Array(VARIANT* @var, int64* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64Array(VARIANT* @var, uint64* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDoubleArray(VARIANT* @var, double* prgn, uint32 crgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringArray(VARIANT* @var, PWSTR* prgsz, uint32 crgsz, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBooleanArrayAlloc(VARIANT* @var, BOOL** pprgf, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16ArrayAlloc(VARIANT* @var, int16** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16ArrayAlloc(VARIANT* @var, uint16** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32ArrayAlloc(VARIANT* @var, int32** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32ArrayAlloc(VARIANT* @var, uint32** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64ArrayAlloc(VARIANT* @var, int64** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64ArrayAlloc(VARIANT* @var, uint64** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDoubleArrayAlloc(VARIANT* @var, double** pprgn, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringArrayAlloc(VARIANT* @var, PWSTR** pprgsz, uint32* pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetBooleanElem(VARIANT* @var, uint32 iElem, BOOL* pfVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt16Elem(VARIANT* @var, uint32 iElem, int16* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt16Elem(VARIANT* @var, uint32 iElem, uint16* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt32Elem(VARIANT* @var, uint32 iElem, int32* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt32Elem(VARIANT* @var, uint32 iElem, uint32* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt64Elem(VARIANT* @var, uint32 iElem, int64* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt64Elem(VARIANT* @var, uint32 iElem, uint64* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetDoubleElem(VARIANT* @var, uint32 iElem, double* pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetStringElem(VARIANT* @var, uint32 iElem, PWSTR* ppszVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClearVariantArray(VARIANT* pvars, uint32 cvars);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantCompare(VARIANT* var1, VARIANT* var2);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreFromIDList(ITEMIDLIST* pidl, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreFromParsingName(PWSTR pszPath, IBindCtx pbc, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAddDefaultPropertiesByExt(PWSTR pszExt, IPropertyStore pPropStore);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_OpenProperties(PWSTR pszApp, PWSTR pszPIF, uint32 hInf, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_GetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_SetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_CloseProperties(HANDLE hProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgCreate(IPropertySetStorage psstg, Guid* fmtid, Guid* pclsid, uint32 grfFlags, uint32 grfMode, uint32 dwDisposition, IPropertyStorage* ppstg, uint32* puCodePage);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgReadMultiple(IPropertyStorage pps, uint32 uCodePage, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgWriteMultiple(IPropertyStorage pps, uint32* puCodePage, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgvar, uint32 propidNameFirst);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreForWindow(HWND hwnd, Guid* riid, void** ppv);
		
	}
}
