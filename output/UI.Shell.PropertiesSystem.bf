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
			DEFAULT = 0,
			HANDLERPROPERTIESONLY = 1,
			READWRITE = 2,
			TEMPORARY = 4,
			FASTPROPERTIESONLY = 8,
			OPENSLOWITEM = 16,
			DELAYCREATION = 32,
			BESTEFFORT = 64,
			NO_OPLOCK = 128,
			PREFERQUERYPROPERTIES = 256,
			EXTRINSICPROPERTIES = 512,
			EXTRINSICPROPERTIESONLY = 1024,
			VOLATILEPROPERTIES = 2048,
			VOLATILEPROPERTIESONLY = 4096,
			MASK_VALID = 8191,
		}
		[AllowDuplicates]
		public enum PKA_FLAGS : int32
		{
			SET = 0,
			APPEND = 1,
			DELETE = 2,
		}
		[AllowDuplicates]
		public enum PSC_STATE : int32
		{
			NORMAL = 0,
			NOTINSOURCE = 1,
			DIRTY = 2,
			READONLY = 3,
		}
		[AllowDuplicates]
		public enum PROPENUMTYPE : int32
		{
			DISCRETEVALUE = 0,
			RANGEDVALUE = 1,
			DEFAULTVALUE = 2,
			ENDRANGE = 3,
		}
		[AllowDuplicates]
		public enum PROPDESC_TYPE_FLAGS : int32
		{
			DEFAULT = 0,
			MULTIPLEVALUES = 1,
			ISINNATE = 2,
			ISGROUP = 4,
			CANGROUPBY = 8,
			CANSTACKBY = 16,
			ISTREEPROPERTY = 32,
			INCLUDEINFULLTEXTQUERY = 64,
			ISVIEWABLE = 128,
			ISQUERYABLE = 256,
			CANBEPURGED = 512,
			SEARCHRAWVALUE = 1024,
			DONTCOERCEEMPTYSTRINGS = 2048,
			ALWAYSINSUPPLEMENTALSTORE = 4096,
			ISSYSTEMPROPERTY = -2147483648,
			MASK_ALL = -2147475457,
		}
		[AllowDuplicates]
		public enum PROPDESC_VIEW_FLAGS : int32
		{
			DEFAULT = 0,
			CENTERALIGN = 1,
			RIGHTALIGN = 2,
			BEGINNEWGROUP = 4,
			FILLAREA = 8,
			SORTDESCENDING = 16,
			SHOWONLYIFPRESENT = 32,
			SHOWBYDEFAULT = 64,
			SHOWINPRIMARYLIST = 128,
			SHOWINSECONDARYLIST = 256,
			HIDELABEL = 512,
			HIDDEN = 2048,
			CANWRAP = 4096,
			MASK_ALL = 7167,
		}
		[AllowDuplicates]
		public enum PROPDESC_DISPLAYTYPE : int32
		{
			STRING = 0,
			NUMBER = 1,
			BOOLEAN = 2,
			DATETIME = 3,
			ENUMERATED = 4,
		}
		[AllowDuplicates]
		public enum PROPDESC_GROUPING_RANGE : int32
		{
			DISCRETE = 0,
			ALPHANUMERIC = 1,
			SIZE = 2,
			DYNAMIC = 3,
			DATE = 4,
			PERCENT = 5,
			ENUMERATED = 6,
		}
		[AllowDuplicates]
		public enum PROPDESC_FORMAT_FLAGS : int32
		{
			DEFAULT = 0,
			PREFIXNAME = 1,
			FILENAME = 2,
			ALWAYSKB = 4,
			RESERVED_RIGHTTOLEFT = 8,
			SHORTTIME = 16,
			LONGTIME = 32,
			HIDETIME = 64,
			SHORTDATE = 128,
			LONGDATE = 256,
			HIDEDATE = 512,
			RELATIVEDATE = 1024,
			USEEDITINVITATION = 2048,
			READONLY = 4096,
			NOAUTOREADINGORDER = 8192,
		}
		[AllowDuplicates]
		public enum PROPDESC_SORTDESCRIPTION : int32
		{
			GENERAL = 0,
			A_Z = 1,
			LOWEST_HIGHEST = 2,
			SMALLEST_BIGGEST = 3,
			OLDEST_NEWEST = 4,
		}
		[AllowDuplicates]
		public enum PROPDESC_RELATIVEDESCRIPTION_TYPE : int32
		{
			GENERAL = 0,
			DATE = 1,
			SIZE = 2,
			COUNT = 3,
			REVISION = 4,
			LENGTH = 5,
			DURATION = 6,
			SPEED = 7,
			RATE = 8,
			RATING = 9,
			PRIORITY = 10,
		}
		[AllowDuplicates]
		public enum PROPDESC_AGGREGATION_TYPE : int32
		{
			DEFAULT = 0,
			FIRST = 1,
			SUM = 2,
			AVERAGE = 3,
			DATERANGE = 4,
			UNION = 5,
			MAX = 6,
			MIN = 7,
		}
		[AllowDuplicates]
		public enum PROPDESC_CONDITION_TYPE : int32
		{
			NONE = 0,
			STRING = 1,
			SIZE = 2,
			DATETIME = 3,
			BOOLEAN = 4,
			NUMBER = 5,
		}
		[AllowDuplicates]
		public enum PROPDESC_SEARCHINFO_FLAGS : int32
		{
			DEFAULT = 0,
			ININVERTEDINDEX = 1,
			ISCOLUMN = 2,
			ISCOLUMNSPARSE = 4,
			ALWAYSINCLUDE = 8,
			USEFORTYPEAHEAD = 16,
		}
		[AllowDuplicates]
		public enum PROPDESC_COLUMNINDEX_TYPE : int32
		{
			NONE = 0,
			ONDISK = 1,
			INMEMORY = 2,
			ONDEMAND = 3,
			ONDISKALL = 4,
			ONDISKVECTOR = 5,
		}
		[AllowDuplicates]
		public enum PROPDESC_ENUMFILTER : int32
		{
			ALL = 0,
			SYSTEM = 1,
			NONSYSTEM = 2,
			VIEWABLE = 3,
			QUERYABLE = 4,
			INFULLTEXTQUERY = 5,
			COLUMN = 6,
		}
		[AllowDuplicates]
		public enum _PERSIST_SPROPSTORE_FLAGS : int32
		{
			DEFAULT = 0,
			READONLY = 1,
			TREAT_NEW_VALUES_AS_DIRTY = 2,
		}
		[AllowDuplicates]
		public enum PSTIME_FLAGS : int32
		{
			UTC = 0,
			LOCAL = 1,
		}
		[AllowDuplicates]
		public enum PROPVAR_COMPARE_UNIT : int32
		{
			DEFAULT = 0,
			SECOND = 1,
			MINUTE = 2,
			HOUR = 3,
			DAY = 4,
			MONTH = 5,
			YEAR = 6,
		}
		[AllowDuplicates]
		public enum PROPVAR_COMPARE_FLAGS : int32
		{
			DEFAULT = 0,
			TREATEMPTYASGREATERTHAN = 1,
			USESTRCMP = 2,
			USESTRCMPC = 4,
			USESTRCMPI = 8,
			USESTRCMPIC = 16,
			DIGITSASNUMBERS_CASESENSITIVE = 32,
		}
		[AllowDuplicates]
		public enum PROPVAR_CHANGE_FLAGS : int32
		{
			DEFAULT = 0,
			NOVALUEPROP = 1,
			ALPHABOOL = 2,
			NOUSEROVERRIDE = 4,
			LOCALBOOL = 8,
			NOHEXSTRING = 16,
		}
		[AllowDuplicates]
		public enum DRAWPROGRESSFLAGS : int32
		{
			NONE = 0,
			MARQUEE = 1,
			MARQUEE_COMPLETE = 2,
			ERROR = 4,
			WARNING = 8,
			STOPPED = 16,
		}
		[AllowDuplicates]
		public enum SYNC_TRANSFER_STATUS : int32
		{
			NONE = 0,
			NEEDSUPLOAD = 1,
			NEEDSDOWNLOAD = 2,
			TRANSFERRING = 4,
			PAUSED = 8,
			HASERROR = 16,
			FETCHING_METADATA = 32,
			USER_REQUESTED_REFRESH = 64,
			HASWARNING = 128,
			EXCLUDED = 256,
			INCOMPLETE = 512,
			PLACEHOLDER_IFEMPTY = 1024,
		}
		[AllowDuplicates]
		public enum PLACEHOLDER_STATES : int32
		{
			NONE = 0,
			MARKED_FOR_OFFLINE_AVAILABILITY = 1,
			FULL_PRIMARY_STREAM_AVAILABLE = 2,
			CREATE_FILE_ACCESSIBLE = 4,
			CLOUDFILE_PLACEHOLDER = 8,
			DEFAULT = 7,
			ALL = 15,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_NAME_FLAGS : int32
		{
			DEFAULT = 0,
			MNEMONIC = 1,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_FLAGS : int32
		{
			DEFAULT = 0,
			RIGHTALIGN = 1,
			NOLABELININFOTIP = 2,
		}
		[AllowDuplicates]
		public enum PROPERTYUI_FORMAT_FLAGS : int32
		{
			DEFAULT = 0,
			RIGHTTOLEFT = 1,
			SHORTFORMAT = 2,
			NOTIME = 4,
			FRIENDLYDATE = 8,
		}
		[AllowDuplicates]
		public enum PDOPSTATUS : int32
		{
			RUNNING = 1,
			PAUSED = 2,
			CANCELLED = 3,
			STOPPED = 4,
			ERRORS = 5,
		}
		[AllowDuplicates]
		public enum SYNC_ENGINE_STATE_FLAGS : int32
		{
			NONE = 0,
			SERVICE_QUOTA_NEARING_LIMIT = 1,
			SERVICE_QUOTA_EXCEEDED_LIMIT = 2,
			AUTHENTICATION_ERROR = 4,
			PAUSED_DUE_TO_METERED_NETWORK = 8,
			PAUSED_DUE_TO_DISK_SPACE_FULL = 16,
			PAUSED_DUE_TO_CLIENT_POLICY = 32,
			PAUSED_DUE_TO_SERVICE_POLICY = 64,
			SERVICE_UNAVAILABLE = 128,
			PAUSED_DUE_TO_USER_REQUEST = 256,
			ALL_FLAGS = 511,
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
		
		[CRepr]
		public struct IInitializeWithFile : IUnknown
		{
			public const new Guid IID = .(0xb7d14566, 0x0509, 0x4cce, 0xa7, 0x1f, 0x0a, 0x55, 0x42, 0x33, 0xbd, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszFilePath, uint32 grfMode) mut
			{
				return VT.Initialize(&this, pszFilePath, grfMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithFile *self, PWSTR pszFilePath, uint32 grfMode) Initialize;
			}
		}
		[CRepr]
		public struct IInitializeWithStream : IUnknown
		{
			public const new Guid IID = .(0xb824b49d, 0x22ac, 0x4161, 0xac, 0x8a, 0x99, 0x16, 0xe8, 0xfa, 0x3f, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IStream* pstream, uint32 grfMode) mut
			{
				return VT.Initialize(&this, pstream, grfMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithStream *self, IStream* pstream, uint32 grfMode) Initialize;
			}
		}
		[CRepr]
		public struct IPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x886d8eeb, 0x8cf2, 0x4446, 0x8d, 0x02, 0xcd, 0xba, 0x1d, 0xbd, 0xcf, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* cProps) mut
			{
				return VT.GetCount(&this, cProps);
			}
			public HRESULT GetAt(uint32 iProp, PROPERTYKEY* pkey) mut
			{
				return VT.GetAt(&this, iProp, pkey);
			}
			public HRESULT GetValue(PROPERTYKEY* key, PROPVARIANT* pv) mut
			{
				return VT.GetValue(&this, key, pv);
			}
			public HRESULT SetValue(PROPERTYKEY* key, PROPVARIANT* propvar) mut
			{
				return VT.SetValue(&this, key, propvar);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyStore *self, uint32* cProps) GetCount;
				public new function HRESULT(IPropertyStore *self, uint32 iProp, PROPERTYKEY* pkey) GetAt;
				public new function HRESULT(IPropertyStore *self, PROPERTYKEY* key, PROPVARIANT* pv) GetValue;
				public new function HRESULT(IPropertyStore *self, PROPERTYKEY* key, PROPVARIANT* propvar) SetValue;
				public new function HRESULT(IPropertyStore *self) Commit;
			}
		}
		[CRepr]
		public struct INamedPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x71604b0f, 0x97b0, 0x4764, 0x85, 0x77, 0x2f, 0x13, 0xe9, 0x8a, 0x14, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamedValue(PWSTR pszName, PROPVARIANT* ppropvar) mut
			{
				return VT.GetNamedValue(&this, pszName, ppropvar);
			}
			public HRESULT SetNamedValue(PWSTR pszName, PROPVARIANT* propvar) mut
			{
				return VT.SetNamedValue(&this, pszName, propvar);
			}
			public HRESULT GetNameCount(uint32* pdwCount) mut
			{
				return VT.GetNameCount(&this, pdwCount);
			}
			public HRESULT GetNameAt(uint32 iProp, BSTR* pbstrName) mut
			{
				return VT.GetNameAt(&this, iProp, pbstrName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INamedPropertyStore *self, PWSTR pszName, PROPVARIANT* ppropvar) GetNamedValue;
				public new function HRESULT(INamedPropertyStore *self, PWSTR pszName, PROPVARIANT* propvar) SetNamedValue;
				public new function HRESULT(INamedPropertyStore *self, uint32* pdwCount) GetNameCount;
				public new function HRESULT(INamedPropertyStore *self, uint32 iProp, BSTR* pbstrName) GetNameAt;
			}
		}
		[CRepr]
		public struct IObjectWithPropertyKey : IUnknown
		{
			public const new Guid IID = .(0xfc0ca0a7, 0xc316, 0x4fd2, 0x90, 0x31, 0x3e, 0x62, 0x8e, 0x6d, 0x4f, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPropertyKey(PROPERTYKEY* key) mut
			{
				return VT.SetPropertyKey(&this, key);
			}
			public HRESULT GetPropertyKey(PROPERTYKEY* pkey) mut
			{
				return VT.GetPropertyKey(&this, pkey);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithPropertyKey *self, PROPERTYKEY* key) SetPropertyKey;
				public new function HRESULT(IObjectWithPropertyKey *self, PROPERTYKEY* pkey) GetPropertyKey;
			}
		}
		[CRepr]
		public struct IPropertyChange : IObjectWithPropertyKey
		{
			public const new Guid IID = .(0xf917bc8a, 0x1bba, 0x4478, 0xa2, 0x45, 0x1b, 0xde, 0x03, 0xeb, 0x94, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplyToPropVariant(PROPVARIANT* propvarIn, PROPVARIANT* ppropvarOut) mut
			{
				return VT.ApplyToPropVariant(&this, propvarIn, ppropvarOut);
			}
			[CRepr]
			public struct VTable : IObjectWithPropertyKey.VTable
			{
				public new function HRESULT(IPropertyChange *self, PROPVARIANT* propvarIn, PROPVARIANT* ppropvarOut) ApplyToPropVariant;
			}
		}
		[CRepr]
		public struct IPropertyChangeArray : IUnknown
		{
			public const new Guid IID = .(0x380f5cad, 0x1b5e, 0x42f2, 0x80, 0x5d, 0x63, 0x7f, 0xd3, 0x92, 0xd3, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcOperations) mut
			{
				return VT.GetCount(&this, pcOperations);
			}
			public HRESULT GetAt(uint32 iIndex, Guid* riid, void** ppv) mut
			{
				return VT.GetAt(&this, iIndex, riid, ppv);
			}
			public HRESULT InsertAt(uint32 iIndex, IPropertyChange* ppropChange) mut
			{
				return VT.InsertAt(&this, iIndex, ppropChange);
			}
			public HRESULT Append(IPropertyChange* ppropChange) mut
			{
				return VT.Append(&this, ppropChange);
			}
			public HRESULT AppendOrReplace(IPropertyChange* ppropChange) mut
			{
				return VT.AppendOrReplace(&this, ppropChange);
			}
			public HRESULT RemoveAt(uint32 iIndex) mut
			{
				return VT.RemoveAt(&this, iIndex);
			}
			public HRESULT IsKeyInArray(PROPERTYKEY* key) mut
			{
				return VT.IsKeyInArray(&this, key);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyChangeArray *self, uint32* pcOperations) GetCount;
				public new function HRESULT(IPropertyChangeArray *self, uint32 iIndex, Guid* riid, void** ppv) GetAt;
				public new function HRESULT(IPropertyChangeArray *self, uint32 iIndex, IPropertyChange* ppropChange) InsertAt;
				public new function HRESULT(IPropertyChangeArray *self, IPropertyChange* ppropChange) Append;
				public new function HRESULT(IPropertyChangeArray *self, IPropertyChange* ppropChange) AppendOrReplace;
				public new function HRESULT(IPropertyChangeArray *self, uint32 iIndex) RemoveAt;
				public new function HRESULT(IPropertyChangeArray *self, PROPERTYKEY* key) IsKeyInArray;
			}
		}
		[CRepr]
		public struct IPropertyStoreCapabilities : IUnknown
		{
			public const new Guid IID = .(0xc8e2d566, 0x186e, 0x4d49, 0xbf, 0x41, 0x69, 0x09, 0xea, 0xd5, 0x6a, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPropertyWritable(PROPERTYKEY* key) mut
			{
				return VT.IsPropertyWritable(&this, key);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyStoreCapabilities *self, PROPERTYKEY* key) IsPropertyWritable;
			}
		}
		[CRepr]
		public struct IPropertyStoreCache : IPropertyStore
		{
			public const new Guid IID = .(0x3017056d, 0x9a91, 0x4e90, 0x93, 0x7d, 0x74, 0x6c, 0x72, 0xab, 0xbf, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetState(PROPERTYKEY* key, PSC_STATE* pstate) mut
			{
				return VT.GetState(&this, key, pstate);
			}
			public HRESULT GetValueAndState(PROPERTYKEY* key, PROPVARIANT* ppropvar, PSC_STATE* pstate) mut
			{
				return VT.GetValueAndState(&this, key, ppropvar, pstate);
			}
			public HRESULT SetState(PROPERTYKEY* key, PSC_STATE state) mut
			{
				return VT.SetState(&this, key, state);
			}
			public HRESULT SetValueAndState(PROPERTYKEY* key, PROPVARIANT* ppropvar, PSC_STATE state) mut
			{
				return VT.SetValueAndState(&this, key, ppropvar, state);
			}
			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function HRESULT(IPropertyStoreCache *self, PROPERTYKEY* key, PSC_STATE* pstate) GetState;
				public new function HRESULT(IPropertyStoreCache *self, PROPERTYKEY* key, PROPVARIANT* ppropvar, PSC_STATE* pstate) GetValueAndState;
				public new function HRESULT(IPropertyStoreCache *self, PROPERTYKEY* key, PSC_STATE state) SetState;
				public new function HRESULT(IPropertyStoreCache *self, PROPERTYKEY* key, PROPVARIANT* ppropvar, PSC_STATE state) SetValueAndState;
			}
		}
		[CRepr]
		public struct IPropertyEnumType : IUnknown
		{
			public const new Guid IID = .(0x11e1fbf9, 0x2d56, 0x4a6b, 0x8d, 0xb3, 0x7c, 0xd1, 0x93, 0xa4, 0x71, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnumType(PROPENUMTYPE* penumtype) mut
			{
				return VT.GetEnumType(&this, penumtype);
			}
			public HRESULT GetValue(PROPVARIANT* ppropvar) mut
			{
				return VT.GetValue(&this, ppropvar);
			}
			public HRESULT GetRangeMinValue(PROPVARIANT* ppropvarMin) mut
			{
				return VT.GetRangeMinValue(&this, ppropvarMin);
			}
			public HRESULT GetRangeSetValue(PROPVARIANT* ppropvarSet) mut
			{
				return VT.GetRangeSetValue(&this, ppropvarSet);
			}
			public HRESULT GetDisplayText(PWSTR* ppszDisplay) mut
			{
				return VT.GetDisplayText(&this, ppszDisplay);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyEnumType *self, PROPENUMTYPE* penumtype) GetEnumType;
				public new function HRESULT(IPropertyEnumType *self, PROPVARIANT* ppropvar) GetValue;
				public new function HRESULT(IPropertyEnumType *self, PROPVARIANT* ppropvarMin) GetRangeMinValue;
				public new function HRESULT(IPropertyEnumType *self, PROPVARIANT* ppropvarSet) GetRangeSetValue;
				public new function HRESULT(IPropertyEnumType *self, PWSTR* ppszDisplay) GetDisplayText;
			}
		}
		[CRepr]
		public struct IPropertyEnumType2 : IPropertyEnumType
		{
			public const new Guid IID = .(0x9b6e051c, 0x5ddd, 0x4321, 0x90, 0x70, 0xfe, 0x2a, 0xcb, 0x55, 0xe7, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageReference(PWSTR* ppszImageRes) mut
			{
				return VT.GetImageReference(&this, ppszImageRes);
			}
			[CRepr]
			public struct VTable : IPropertyEnumType.VTable
			{
				public new function HRESULT(IPropertyEnumType2 *self, PWSTR* ppszImageRes) GetImageReference;
			}
		}
		[CRepr]
		public struct IPropertyEnumTypeList : IUnknown
		{
			public const new Guid IID = .(0xa99400f4, 0x3d84, 0x4557, 0x94, 0xba, 0x12, 0x42, 0xfb, 0x2c, 0xc9, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pctypes) mut
			{
				return VT.GetCount(&this, pctypes);
			}
			public HRESULT GetAt(uint32 itype, Guid* riid, void** ppv) mut
			{
				return VT.GetAt(&this, itype, riid, ppv);
			}
			public HRESULT GetConditionAt(uint32 nIndex, Guid* riid, void** ppv) mut
			{
				return VT.GetConditionAt(&this, nIndex, riid, ppv);
			}
			public HRESULT FindMatchingIndex(PROPVARIANT* propvarCmp, uint32* pnIndex) mut
			{
				return VT.FindMatchingIndex(&this, propvarCmp, pnIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyEnumTypeList *self, uint32* pctypes) GetCount;
				public new function HRESULT(IPropertyEnumTypeList *self, uint32 itype, Guid* riid, void** ppv) GetAt;
				public new function HRESULT(IPropertyEnumTypeList *self, uint32 nIndex, Guid* riid, void** ppv) GetConditionAt;
				public new function HRESULT(IPropertyEnumTypeList *self, PROPVARIANT* propvarCmp, uint32* pnIndex) FindMatchingIndex;
			}
		}
		[CRepr]
		public struct IPropertyDescription : IUnknown
		{
			public const new Guid IID = .(0x6f79d558, 0x3e96, 0x4549, 0xa1, 0xd1, 0x7d, 0x75, 0xd2, 0x28, 0x88, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyKey(PROPERTYKEY* pkey) mut
			{
				return VT.GetPropertyKey(&this, pkey);
			}
			public HRESULT GetCanonicalName(PWSTR* ppszName) mut
			{
				return VT.GetCanonicalName(&this, ppszName);
			}
			public HRESULT GetPropertyType(uint16* pvartype) mut
			{
				return VT.GetPropertyType(&this, pvartype);
			}
			public HRESULT GetDisplayName(PWSTR* ppszName) mut
			{
				return VT.GetDisplayName(&this, ppszName);
			}
			public HRESULT GetEditInvitation(PWSTR* ppszInvite) mut
			{
				return VT.GetEditInvitation(&this, ppszInvite);
			}
			public HRESULT GetTypeFlags(PROPDESC_TYPE_FLAGS mask, PROPDESC_TYPE_FLAGS* ppdtFlags) mut
			{
				return VT.GetTypeFlags(&this, mask, ppdtFlags);
			}
			public HRESULT GetViewFlags(PROPDESC_VIEW_FLAGS* ppdvFlags) mut
			{
				return VT.GetViewFlags(&this, ppdvFlags);
			}
			public HRESULT GetDefaultColumnWidth(uint32* pcxChars) mut
			{
				return VT.GetDefaultColumnWidth(&this, pcxChars);
			}
			public HRESULT GetDisplayType(PROPDESC_DISPLAYTYPE* pdisplaytype) mut
			{
				return VT.GetDisplayType(&this, pdisplaytype);
			}
			public HRESULT GetColumnState(uint32* pcsFlags) mut
			{
				return VT.GetColumnState(&this, pcsFlags);
			}
			public HRESULT GetGroupingRange(PROPDESC_GROUPING_RANGE* pgr) mut
			{
				return VT.GetGroupingRange(&this, pgr);
			}
			public HRESULT GetRelativeDescriptionType(PROPDESC_RELATIVEDESCRIPTION_TYPE* prdt) mut
			{
				return VT.GetRelativeDescriptionType(&this, prdt);
			}
			public HRESULT GetRelativeDescription(PROPVARIANT* propvar1, PROPVARIANT* propvar2, PWSTR* ppszDesc1, PWSTR* ppszDesc2) mut
			{
				return VT.GetRelativeDescription(&this, propvar1, propvar2, ppszDesc1, ppszDesc2);
			}
			public HRESULT GetSortDescription(PROPDESC_SORTDESCRIPTION* psd) mut
			{
				return VT.GetSortDescription(&this, psd);
			}
			public HRESULT GetSortDescriptionLabel(BOOL fDescending, PWSTR* ppszDescription) mut
			{
				return VT.GetSortDescriptionLabel(&this, fDescending, ppszDescription);
			}
			public HRESULT GetAggregationType(PROPDESC_AGGREGATION_TYPE* paggtype) mut
			{
				return VT.GetAggregationType(&this, paggtype);
			}
			public HRESULT GetConditionType(PROPDESC_CONDITION_TYPE* pcontype, CONDITION_OPERATION* popDefault) mut
			{
				return VT.GetConditionType(&this, pcontype, popDefault);
			}
			public HRESULT GetEnumTypeList(Guid* riid, void** ppv) mut
			{
				return VT.GetEnumTypeList(&this, riid, ppv);
			}
			public HRESULT CoerceToCanonicalValue(PROPVARIANT* ppropvar) mut
			{
				return VT.CoerceToCanonicalValue(&this, ppropvar);
			}
			public HRESULT FormatForDisplay(PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdfFlags, PWSTR* ppszDisplay) mut
			{
				return VT.FormatForDisplay(&this, propvar, pdfFlags, ppszDisplay);
			}
			public HRESULT IsValueCanonical(PROPVARIANT* propvar) mut
			{
				return VT.IsValueCanonical(&this, propvar);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyDescription *self, PROPERTYKEY* pkey) GetPropertyKey;
				public new function HRESULT(IPropertyDescription *self, PWSTR* ppszName) GetCanonicalName;
				public new function HRESULT(IPropertyDescription *self, uint16* pvartype) GetPropertyType;
				public new function HRESULT(IPropertyDescription *self, PWSTR* ppszName) GetDisplayName;
				public new function HRESULT(IPropertyDescription *self, PWSTR* ppszInvite) GetEditInvitation;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_TYPE_FLAGS mask, PROPDESC_TYPE_FLAGS* ppdtFlags) GetTypeFlags;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_VIEW_FLAGS* ppdvFlags) GetViewFlags;
				public new function HRESULT(IPropertyDescription *self, uint32* pcxChars) GetDefaultColumnWidth;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_DISPLAYTYPE* pdisplaytype) GetDisplayType;
				public new function HRESULT(IPropertyDescription *self, uint32* pcsFlags) GetColumnState;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_GROUPING_RANGE* pgr) GetGroupingRange;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_RELATIVEDESCRIPTION_TYPE* prdt) GetRelativeDescriptionType;
				public new function HRESULT(IPropertyDescription *self, PROPVARIANT* propvar1, PROPVARIANT* propvar2, PWSTR* ppszDesc1, PWSTR* ppszDesc2) GetRelativeDescription;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_SORTDESCRIPTION* psd) GetSortDescription;
				public new function HRESULT(IPropertyDescription *self, BOOL fDescending, PWSTR* ppszDescription) GetSortDescriptionLabel;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_AGGREGATION_TYPE* paggtype) GetAggregationType;
				public new function HRESULT(IPropertyDescription *self, PROPDESC_CONDITION_TYPE* pcontype, CONDITION_OPERATION* popDefault) GetConditionType;
				public new function HRESULT(IPropertyDescription *self, Guid* riid, void** ppv) GetEnumTypeList;
				public new function HRESULT(IPropertyDescription *self, PROPVARIANT* ppropvar) CoerceToCanonicalValue;
				public new function HRESULT(IPropertyDescription *self, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdfFlags, PWSTR* ppszDisplay) FormatForDisplay;
				public new function HRESULT(IPropertyDescription *self, PROPVARIANT* propvar) IsValueCanonical;
			}
		}
		[CRepr]
		public struct IPropertyDescription2 : IPropertyDescription
		{
			public const new Guid IID = .(0x57d2eded, 0x5062, 0x400e, 0xb1, 0x07, 0x5d, 0xae, 0x79, 0xfe, 0x57, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageReferenceForValue(PROPVARIANT* propvar, PWSTR* ppszImageRes) mut
			{
				return VT.GetImageReferenceForValue(&this, propvar, ppszImageRes);
			}
			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function HRESULT(IPropertyDescription2 *self, PROPVARIANT* propvar, PWSTR* ppszImageRes) GetImageReferenceForValue;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionAliasInfo : IPropertyDescription
		{
			public const new Guid IID = .(0xf67104fc, 0x2af9, 0x46fd, 0xb3, 0x2d, 0x24, 0x3c, 0x14, 0x04, 0xf3, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSortByAlias(Guid* riid, void** ppv) mut
			{
				return VT.GetSortByAlias(&this, riid, ppv);
			}
			public HRESULT GetAdditionalSortByAliases(Guid* riid, void** ppv) mut
			{
				return VT.GetAdditionalSortByAliases(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function HRESULT(IPropertyDescriptionAliasInfo *self, Guid* riid, void** ppv) GetSortByAlias;
				public new function HRESULT(IPropertyDescriptionAliasInfo *self, Guid* riid, void** ppv) GetAdditionalSortByAliases;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionSearchInfo : IPropertyDescription
		{
			public const new Guid IID = .(0x078f91bd, 0x29a2, 0x440f, 0x92, 0x4e, 0x46, 0xa2, 0x91, 0x52, 0x45, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSearchInfoFlags(PROPDESC_SEARCHINFO_FLAGS* ppdsiFlags) mut
			{
				return VT.GetSearchInfoFlags(&this, ppdsiFlags);
			}
			public HRESULT GetColumnIndexType(PROPDESC_COLUMNINDEX_TYPE* ppdciType) mut
			{
				return VT.GetColumnIndexType(&this, ppdciType);
			}
			public HRESULT GetProjectionString(PWSTR* ppszProjection) mut
			{
				return VT.GetProjectionString(&this, ppszProjection);
			}
			public HRESULT GetMaxSize(uint32* pcbMaxSize) mut
			{
				return VT.GetMaxSize(&this, pcbMaxSize);
			}
			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function HRESULT(IPropertyDescriptionSearchInfo *self, PROPDESC_SEARCHINFO_FLAGS* ppdsiFlags) GetSearchInfoFlags;
				public new function HRESULT(IPropertyDescriptionSearchInfo *self, PROPDESC_COLUMNINDEX_TYPE* ppdciType) GetColumnIndexType;
				public new function HRESULT(IPropertyDescriptionSearchInfo *self, PWSTR* ppszProjection) GetProjectionString;
				public new function HRESULT(IPropertyDescriptionSearchInfo *self, uint32* pcbMaxSize) GetMaxSize;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionRelatedPropertyInfo : IPropertyDescription
		{
			public const new Guid IID = .(0x507393f4, 0x2a3d, 0x4a60, 0xb5, 0x9e, 0xd9, 0xc7, 0x57, 0x16, 0xc2, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelatedProperty(PWSTR pszRelationshipName, Guid* riid, void** ppv) mut
			{
				return VT.GetRelatedProperty(&this, pszRelationshipName, riid, ppv);
			}
			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function HRESULT(IPropertyDescriptionRelatedPropertyInfo *self, PWSTR pszRelationshipName, Guid* riid, void** ppv) GetRelatedProperty;
			}
		}
		[CRepr]
		public struct IPropertySystem : IUnknown
		{
			public const new Guid IID = .(0xca724e8a, 0xc3e6, 0x442b, 0x88, 0xa4, 0x6f, 0xb0, 0xdb, 0x80, 0x35, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyDescription(PROPERTYKEY* propkey, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyDescription(&this, propkey, riid, ppv);
			}
			public HRESULT GetPropertyDescriptionByName(PWSTR pszCanonicalName, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyDescriptionByName(&this, pszCanonicalName, riid, ppv);
			}
			public HRESULT GetPropertyDescriptionListFromString(PWSTR pszPropList, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyDescriptionListFromString(&this, pszPropList, riid, ppv);
			}
			public HRESULT EnumeratePropertyDescriptions(PROPDESC_ENUMFILTER filterOn, Guid* riid, void** ppv) mut
			{
				return VT.EnumeratePropertyDescriptions(&this, filterOn, riid, ppv);
			}
			public HRESULT FormatForDisplay(PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, char16* pszText, uint32 cchText) mut
			{
				return VT.FormatForDisplay(&this, key, propvar, pdff, pszText, cchText);
			}
			public HRESULT FormatForDisplayAlloc(PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay) mut
			{
				return VT.FormatForDisplayAlloc(&this, key, propvar, pdff, ppszDisplay);
			}
			public HRESULT RegisterPropertySchema(PWSTR pszPath) mut
			{
				return VT.RegisterPropertySchema(&this, pszPath);
			}
			public HRESULT UnregisterPropertySchema(PWSTR pszPath) mut
			{
				return VT.UnregisterPropertySchema(&this, pszPath);
			}
			public HRESULT RefreshPropertySchema() mut
			{
				return VT.RefreshPropertySchema(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertySystem *self, PROPERTYKEY* propkey, Guid* riid, void** ppv) GetPropertyDescription;
				public new function HRESULT(IPropertySystem *self, PWSTR pszCanonicalName, Guid* riid, void** ppv) GetPropertyDescriptionByName;
				public new function HRESULT(IPropertySystem *self, PWSTR pszPropList, Guid* riid, void** ppv) GetPropertyDescriptionListFromString;
				public new function HRESULT(IPropertySystem *self, PROPDESC_ENUMFILTER filterOn, Guid* riid, void** ppv) EnumeratePropertyDescriptions;
				public new function HRESULT(IPropertySystem *self, PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, char16* pszText, uint32 cchText) FormatForDisplay;
				public new function HRESULT(IPropertySystem *self, PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay) FormatForDisplayAlloc;
				public new function HRESULT(IPropertySystem *self, PWSTR pszPath) RegisterPropertySchema;
				public new function HRESULT(IPropertySystem *self, PWSTR pszPath) UnregisterPropertySchema;
				public new function HRESULT(IPropertySystem *self) RefreshPropertySchema;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionList : IUnknown
		{
			public const new Guid IID = .(0x1f9fc1d0, 0xc39b, 0x4b26, 0x81, 0x7f, 0x01, 0x19, 0x67, 0xd3, 0x44, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcElem) mut
			{
				return VT.GetCount(&this, pcElem);
			}
			public HRESULT GetAt(uint32 iElem, Guid* riid, void** ppv) mut
			{
				return VT.GetAt(&this, iElem, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyDescriptionList *self, uint32* pcElem) GetCount;
				public new function HRESULT(IPropertyDescriptionList *self, uint32 iElem, Guid* riid, void** ppv) GetAt;
			}
		}
		[CRepr]
		public struct IPropertyStoreFactory : IUnknown
		{
			public const new Guid IID = .(0xbc110b6d, 0x57e8, 0x4148, 0xa9, 0xc6, 0x91, 0x01, 0x5a, 0xb2, 0xf3, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, IUnknown* pUnkFactory, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStore(&this, flags, pUnkFactory, riid, ppv);
			}
			public HRESULT GetPropertyStoreForKeys(PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStoreForKeys(&this, rgKeys, cKeys, flags, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyStoreFactory *self, GETPROPERTYSTOREFLAGS flags, IUnknown* pUnkFactory, Guid* riid, void** ppv) GetPropertyStore;
				public new function HRESULT(IPropertyStoreFactory *self, PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) GetPropertyStoreForKeys;
			}
		}
		[CRepr]
		public struct IDelayedPropertyStoreFactory : IPropertyStoreFactory
		{
			public const new Guid IID = .(0x40d4577f, 0xe237, 0x4bdb, 0xbd, 0x69, 0x58, 0xf0, 0x89, 0x43, 0x1b, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDelayedPropertyStore(GETPROPERTYSTOREFLAGS flags, uint32 dwStoreId, Guid* riid, void** ppv) mut
			{
				return VT.GetDelayedPropertyStore(&this, flags, dwStoreId, riid, ppv);
			}
			[CRepr]
			public struct VTable : IPropertyStoreFactory.VTable
			{
				public new function HRESULT(IDelayedPropertyStoreFactory *self, GETPROPERTYSTOREFLAGS flags, uint32 dwStoreId, Guid* riid, void** ppv) GetDelayedPropertyStore;
			}
		}
		[CRepr]
		public struct IPersistSerializedPropStorage : IUnknown
		{
			public const new Guid IID = .(0xe318ad57, 0x0aa0, 0x450f, 0xac, 0xa5, 0x6f, 0xab, 0x71, 0x03, 0xd9, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFlags(int32 flags) mut
			{
				return VT.SetFlags(&this, flags);
			}
			public HRESULT SetPropertyStorage(SERIALIZEDPROPSTORAGE* psps, uint32 cb) mut
			{
				return VT.SetPropertyStorage(&this, psps, cb);
			}
			public HRESULT GetPropertyStorage(SERIALIZEDPROPSTORAGE** ppsps, uint32* pcb) mut
			{
				return VT.GetPropertyStorage(&this, ppsps, pcb);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPersistSerializedPropStorage *self, int32 flags) SetFlags;
				public new function HRESULT(IPersistSerializedPropStorage *self, SERIALIZEDPROPSTORAGE* psps, uint32 cb) SetPropertyStorage;
				public new function HRESULT(IPersistSerializedPropStorage *self, SERIALIZEDPROPSTORAGE** ppsps, uint32* pcb) GetPropertyStorage;
			}
		}
		[CRepr]
		public struct IPersistSerializedPropStorage2 : IPersistSerializedPropStorage
		{
			public const new Guid IID = .(0x77effa68, 0x4f98, 0x4366, 0xba, 0x72, 0x57, 0x3b, 0x3d, 0x88, 0x05, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyStorageSize(uint32* pcb) mut
			{
				return VT.GetPropertyStorageSize(&this, pcb);
			}
			public HRESULT GetPropertyStorageBuffer(SERIALIZEDPROPSTORAGE* psps, uint32 cb, uint32* pcbWritten) mut
			{
				return VT.GetPropertyStorageBuffer(&this, psps, cb, pcbWritten);
			}
			[CRepr]
			public struct VTable : IPersistSerializedPropStorage.VTable
			{
				public new function HRESULT(IPersistSerializedPropStorage2 *self, uint32* pcb) GetPropertyStorageSize;
				public new function HRESULT(IPersistSerializedPropStorage2 *self, SERIALIZEDPROPSTORAGE* psps, uint32 cb, uint32* pcbWritten) GetPropertyStorageBuffer;
			}
		}
		[CRepr]
		public struct IPropertySystemChangeNotify : IUnknown
		{
			public const new Guid IID = .(0xfa955fd9, 0x38be, 0x4879, 0xa6, 0xce, 0x82, 0x4c, 0xf5, 0x2d, 0x60, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SchemaRefreshed() mut
			{
				return VT.SchemaRefreshed(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertySystemChangeNotify *self) SchemaRefreshed;
			}
		}
		[CRepr]
		public struct ICreateObject : IUnknown
		{
			public const new Guid IID = .(0x75121952, 0xe0d0, 0x43e5, 0x93, 0x80, 0x1d, 0x80, 0x48, 0x3a, 0xcf, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObject(Guid* clsid, IUnknown* pUnkOuter, Guid* riid, void** ppv) mut
			{
				return VT.CreateObject(&this, clsid, pUnkOuter, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreateObject *self, Guid* clsid, IUnknown* pUnkOuter, Guid* riid, void** ppv) CreateObject;
			}
		}
		[CRepr]
		public struct IPropertyUI : IUnknown
		{
			public const new Guid IID = .(0x757a7d9f, 0x919a, 0x4118, 0x99, 0xd7, 0xdb, 0xb2, 0x08, 0xc8, 0xcc, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParsePropertyName(PWSTR pszName, Guid* pfmtid, uint32* ppid, uint32* pchEaten) mut
			{
				return VT.ParsePropertyName(&this, pszName, pfmtid, ppid, pchEaten);
			}
			public HRESULT GetCannonicalName(Guid* fmtid, uint32 pid, char16* pwszText, uint32 cchText) mut
			{
				return VT.GetCannonicalName(&this, fmtid, pid, pwszText, cchText);
			}
			public HRESULT GetDisplayName(Guid* fmtid, uint32 pid, PROPERTYUI_NAME_FLAGS flags, char16* pwszText, uint32 cchText) mut
			{
				return VT.GetDisplayName(&this, fmtid, pid, flags, pwszText, cchText);
			}
			public HRESULT GetPropertyDescription(Guid* fmtid, uint32 pid, char16* pwszText, uint32 cchText) mut
			{
				return VT.GetPropertyDescription(&this, fmtid, pid, pwszText, cchText);
			}
			public HRESULT GetDefaultWidth(Guid* fmtid, uint32 pid, uint32* pcxChars) mut
			{
				return VT.GetDefaultWidth(&this, fmtid, pid, pcxChars);
			}
			public HRESULT ComGetFlags(Guid* fmtid, uint32 pid, PROPERTYUI_FLAGS* pflags) mut
			{
				return VT.ComGetFlags(&this, fmtid, pid, pflags);
			}
			public HRESULT FormatForDisplay(Guid* fmtid, uint32 pid, PROPVARIANT* ppropvar, PROPERTYUI_FORMAT_FLAGS puiff, char16* pwszText, uint32 cchText) mut
			{
				return VT.FormatForDisplay(&this, fmtid, pid, ppropvar, puiff, pwszText, cchText);
			}
			public HRESULT GetHelpInfo(Guid* fmtid, uint32 pid, char16* pwszHelpFile, uint32 cch, uint32* puHelpID) mut
			{
				return VT.GetHelpInfo(&this, fmtid, pid, pwszHelpFile, cch, puHelpID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyUI *self, PWSTR pszName, Guid* pfmtid, uint32* ppid, uint32* pchEaten) ParsePropertyName;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, char16* pwszText, uint32 cchText) GetCannonicalName;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, PROPERTYUI_NAME_FLAGS flags, char16* pwszText, uint32 cchText) GetDisplayName;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, char16* pwszText, uint32 cchText) GetPropertyDescription;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, uint32* pcxChars) GetDefaultWidth;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, PROPERTYUI_FLAGS* pflags) ComGetFlags;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, PROPVARIANT* ppropvar, PROPERTYUI_FORMAT_FLAGS puiff, char16* pwszText, uint32 cchText) FormatForDisplay;
				public new function HRESULT(IPropertyUI *self, Guid* fmtid, uint32 pid, char16* pwszHelpFile, uint32 cch, uint32* puHelpID) GetHelpInfo;
			}
		}
		
		// --- Functions ---
		
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToWinRTPropertyValue(PROPVARIANT* propvar, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinRTPropertyValueToPropVariant(IUnknown* punkPropertyValue, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplay(PROPERTYKEY* propkey, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdfFlags, char16* pwszText, uint32 cchText);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplayAlloc(PROPERTYKEY* key, PROPVARIANT* propvar, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatPropertyValue(IPropertyStore* pps, IPropertyDescription* ppd, PROPDESC_FORMAT_FLAGS pdff, PWSTR* ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetImageReferenceForValue(PROPERTYKEY* propkey, PROPVARIANT* propvar, PWSTR* ppszImageRes);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSStringFromPropertyKey(PROPERTYKEY* pkey, char16* psz, uint32 cch);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyKeyFromString(PWSTR pszString, PROPERTYKEY* pkey);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMemoryPropertyStore(Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateDelayedMultiplexPropertyStore(GETPROPERTYSTOREFLAGS flags, IDelayedPropertyStoreFactory* pdpsf, uint32* rgStoreIds, uint32 cStores, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMultiplexPropertyStore(IUnknown** prgpunkStores, uint32 cStores, Guid* riid, void** ppv);
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
		public static extern HRESULT PSGetItemPropertyHandler(IUnknown* punkItem, BOOL fReadWrite, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetItemPropertyHandlerWithCreateObject(IUnknown* punkItem, BOOL fReadWrite, IUnknown* punkCreateObject, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyValue(IPropertyStore* pps, IPropertyDescription* ppd, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSSetPropertyValue(IPropertyStore* pps, IPropertyDescription* ppd, PROPVARIANT* propvar);
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
		public static extern HRESULT PSCreatePropertyStoreFromPropertySetStorage(IPropertySetStorage* ppss, uint32 grfMode, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyStoreFromObject(IUnknown* punk, uint32 grfMode, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateAdapterFromPropertyStore(IPropertyStore* pps, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertySystem(Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyFromPropertyStorage(SERIALIZEDPROPSTORAGE* psps, uint32 cb, PROPERTYKEY* rpkey, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetNamedPropertyFromPropertyStorage(SERIALIZEDPROPSTORAGE* psps, uint32 cb, PWSTR pszName, PROPVARIANT* ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadType(IPropertyBag* propBag, PWSTR propName, VARIANT* @var, uint16 type);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStr(IPropertyBag* propBag, PWSTR propName, char16* value, int32 characterCount);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStrAlloc(IPropertyBag* propBag, PWSTR propName, PWSTR* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBSTR(IPropertyBag* propBag, PWSTR propName, BSTR* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStr(IPropertyBag* propBag, PWSTR propName, PWSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBSTR(IPropertyBag* propBag, PWSTR propName, BSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadInt(IPropertyBag* propBag, PWSTR propName, int32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteInt(IPropertyBag* propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadSHORT(IPropertyBag* propBag, PWSTR propName, int16* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteSHORT(IPropertyBag* propBag, PWSTR propName, int16 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadLONG(IPropertyBag* propBag, PWSTR propName, int32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteLONG(IPropertyBag* propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadDWORD(IPropertyBag* propBag, PWSTR propName, uint32* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteDWORD(IPropertyBag* propBag, PWSTR propName, uint32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBOOL(IPropertyBag* propBag, PWSTR propName, BOOL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBOOL(IPropertyBag* propBag, PWSTR propName, BOOL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTL(IPropertyBag* propBag, PWSTR propName, POINTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTL(IPropertyBag* propBag, PWSTR propName, POINTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTS(IPropertyBag* propBag, PWSTR propName, POINTS* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTS(IPropertyBag* propBag, PWSTR propName, POINTS* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadRECTL(IPropertyBag* propBag, PWSTR propName, RECTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteRECTL(IPropertyBag* propBag, PWSTR propName, RECTL* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStream(IPropertyBag* propBag, PWSTR propName, IStream** value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStream(IPropertyBag* propBag, PWSTR propName, IStream* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_Delete(IPropertyBag* propBag, PWSTR propName);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadULONGLONG(IPropertyBag* propBag, PWSTR propName, uint64* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteULONGLONG(IPropertyBag* propBag, PWSTR propName, uint64 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadUnknown(IPropertyBag* propBag, PWSTR propName, Guid* riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteUnknown(IPropertyBag* propBag, PWSTR propName, IUnknown* punk);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadGUID(IPropertyBag* propBag, PWSTR propName, Guid* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteGUID(IPropertyBag* propBag, PWSTR propName, Guid* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPropertyKey(IPropertyBag* propBag, PWSTR propName, PROPERTYKEY* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePropertyKey(IPropertyBag* propBag, PWSTR propName, PROPERTYKEY* value);
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
		public static extern HRESULT SHGetPropertyStoreFromParsingName(PWSTR pszPath, IBindCtx* pbc, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAddDefaultPropertiesByExt(PWSTR pszExt, IPropertyStore* pPropStore);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_OpenProperties(PWSTR pszApp, PWSTR pszPIF, uint32 hInf, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_GetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_SetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_CloseProperties(HANDLE hProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgCreate(IPropertySetStorage* psstg, Guid* fmtid, Guid* pclsid, uint32 grfFlags, uint32 grfMode, uint32 dwDisposition, IPropertyStorage** ppstg, uint32* puCodePage);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgReadMultiple(IPropertyStorage* pps, uint32 uCodePage, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgWriteMultiple(IPropertyStorage* pps, uint32* puCodePage, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgvar, uint32 propidNameFirst);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreForWindow(HWND hwnd, Guid* riid, void** ppv);
		
	}
}
