using System;

// namespace UI.Shell.PropertiesSystem
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PKEY_PIDSTR_MAX = 10;
		
		// --- Enums ---
		
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
		public enum PKA_FLAGS : int32
		{
			SET = 0,
			APPEND = 1,
			DELETE = 2,
		}
		public enum PSC_STATE : int32
		{
			NORMAL = 0,
			NOTINSOURCE = 1,
			DIRTY = 2,
			READONLY = 3,
		}
		public enum PROPENUMTYPE : int32
		{
			DISCRETEVALUE = 0,
			RANGEDVALUE = 1,
			DEFAULTVALUE = 2,
			ENDRANGE = 3,
		}
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
		public enum PROPDESC_DISPLAYTYPE : int32
		{
			STRING = 0,
			NUMBER = 1,
			BOOLEAN = 2,
			DATETIME = 3,
			ENUMERATED = 4,
		}
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
		public enum PROPDESC_SORTDESCRIPTION : int32
		{
			GENERAL = 0,
			A_Z = 1,
			LOWEST_HIGHEST = 2,
			SMALLEST_BIGGEST = 3,
			OLDEST_NEWEST = 4,
		}
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
		public enum PROPDESC_CONDITION_TYPE : int32
		{
			NONE = 0,
			STRING = 1,
			SIZE = 2,
			DATETIME = 3,
			BOOLEAN = 4,
			NUMBER = 5,
		}
		public enum PROPDESC_SEARCHINFO_FLAGS : int32
		{
			DEFAULT = 0,
			ININVERTEDINDEX = 1,
			ISCOLUMN = 2,
			ISCOLUMNSPARSE = 4,
			ALWAYSINCLUDE = 8,
			USEFORTYPEAHEAD = 16,
		}
		public enum PROPDESC_COLUMNINDEX_TYPE : int32
		{
			NONE = 0,
			ONDISK = 1,
			INMEMORY = 2,
			ONDEMAND = 3,
			ONDISKALL = 4,
			ONDISKVECTOR = 5,
		}
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
		public enum _PERSIST_SPROPSTORE_FLAGS : int32
		{
			DEFAULT = 0,
			READONLY = 1,
			TREAT_NEW_VALUES_AS_DIRTY = 2,
		}
		public enum PSTIME_FLAGS : int32
		{
			UTC = 0,
			LOCAL = 1,
		}
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
		public enum PROPVAR_CHANGE_FLAGS : int32
		{
			DEFAULT = 0,
			NOVALUEPROP = 1,
			ALPHABOOL = 2,
			NOUSEROVERRIDE = 4,
			LOCALBOOL = 8,
			NOHEXSTRING = 16,
		}
		public enum DRAWPROGRESSFLAGS : int32
		{
			NONE = 0,
			MARQUEE = 1,
			MARQUEE_COMPLETE = 2,
			ERROR = 4,
			WARNING = 8,
			STOPPED = 16,
		}
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
		public enum PROPERTYUI_NAME_FLAGS : int32
		{
			DEFAULT = 0,
			MNEMONIC = 1,
		}
		public enum PROPERTYUI_FLAGS : int32
		{
			DEFAULT = 0,
			RIGHTALIGN = 1,
			NOLABELININFOTIP = 2,
		}
		public enum PROPERTYUI_FORMAT_FLAGS : int32
		{
			DEFAULT = 0,
			RIGHTTOLEFT = 1,
			SHORTFORMAT = 2,
			NOTIME = 4,
			FRIENDLYDATE = 8,
		}
		public enum PDOPSTATUS : int32
		{
			RUNNING = 1,
			PAUSED = 2,
			CANCELLED = 3,
			STOPPED = 4,
			ERRORS = 5,
		}
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
		public struct SERIALIZEDPROPSTORAGE {}
		[CRepr, Packed(1)]
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
			
			public HRESULT Initialize(PWSTR pszFilePath, uint32 grfMode) mut => VT.Initialize(ref this, pszFilePath, grfMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithFile self, PWSTR pszFilePath, uint32 grfMode) Initialize;
			}
		}
		[CRepr]
		public struct IInitializeWithStream : IUnknown
		{
			public const new Guid IID = .(0xb824b49d, 0x22ac, 0x4161, 0xac, 0x8a, 0x99, 0x16, 0xe8, 0xfa, 0x3f, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IStream pstream, uint32 grfMode) mut => VT.Initialize(ref this, ref pstream, grfMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithStream self, ref IStream pstream, uint32 grfMode) Initialize;
			}
		}
		[CRepr]
		public struct IPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x886d8eeb, 0x8cf2, 0x4446, 0x8d, 0x02, 0xcd, 0xba, 0x1d, 0xbd, 0xcf, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 cProps) mut => VT.GetCount(ref this, out cProps);
			public HRESULT GetAt(uint32 iProp, out PROPERTYKEY pkey) mut => VT.GetAt(ref this, iProp, out pkey);
			public HRESULT GetValue(in PROPERTYKEY key, out PROPVARIANT pv) mut => VT.GetValue(ref this, key, out pv);
			public HRESULT SetValue(in PROPERTYKEY key, in PROPVARIANT propvar) mut => VT.SetValue(ref this, key, propvar);
			public HRESULT Commit() mut => VT.Commit(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStore self, out uint32 cProps) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStore self, uint32 iProp, out PROPERTYKEY pkey) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStore self, in PROPERTYKEY key, out PROPVARIANT pv) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStore self, in PROPERTYKEY key, in PROPVARIANT propvar) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStore self) Commit;
			}
		}
		[CRepr]
		public struct INamedPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x71604b0f, 0x97b0, 0x4764, 0x85, 0x77, 0x2f, 0x13, 0xe9, 0x8a, 0x14, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamedValue(PWSTR pszName, out PROPVARIANT ppropvar) mut => VT.GetNamedValue(ref this, pszName, out ppropvar);
			public HRESULT SetNamedValue(PWSTR pszName, in PROPVARIANT propvar) mut => VT.SetNamedValue(ref this, pszName, propvar);
			public HRESULT GetNameCount(out uint32 pdwCount) mut => VT.GetNameCount(ref this, out pdwCount);
			public HRESULT GetNameAt(uint32 iProp, out BSTR pbstrName) mut => VT.GetNameAt(ref this, iProp, out pbstrName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyStore self, PWSTR pszName, out PROPVARIANT ppropvar) GetNamedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyStore self, PWSTR pszName, in PROPVARIANT propvar) SetNamedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyStore self, out uint32 pdwCount) GetNameCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyStore self, uint32 iProp, out BSTR pbstrName) GetNameAt;
			}
		}
		[CRepr]
		public struct IObjectWithPropertyKey : IUnknown
		{
			public const new Guid IID = .(0xfc0ca0a7, 0xc316, 0x4fd2, 0x90, 0x31, 0x3e, 0x62, 0x8e, 0x6d, 0x4f, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPropertyKey(in PROPERTYKEY key) mut => VT.SetPropertyKey(ref this, key);
			public HRESULT GetPropertyKey(out PROPERTYKEY pkey) mut => VT.GetPropertyKey(ref this, out pkey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithPropertyKey self, in PROPERTYKEY key) SetPropertyKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithPropertyKey self, out PROPERTYKEY pkey) GetPropertyKey;
			}
		}
		[CRepr]
		public struct IPropertyChange : IObjectWithPropertyKey
		{
			public const new Guid IID = .(0xf917bc8a, 0x1bba, 0x4478, 0xa2, 0x45, 0x1b, 0xde, 0x03, 0xeb, 0x94, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ApplyToPropVariant(in PROPVARIANT propvarIn, out PROPVARIANT ppropvarOut) mut => VT.ApplyToPropVariant(ref this, propvarIn, out ppropvarOut);

			[CRepr]
			public struct VTable : IObjectWithPropertyKey.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChange self, in PROPVARIANT propvarIn, out PROPVARIANT ppropvarOut) ApplyToPropVariant;
			}
		}
		[CRepr]
		public struct IPropertyChangeArray : IUnknown
		{
			public const new Guid IID = .(0x380f5cad, 0x1b5e, 0x42f2, 0x80, 0x5d, 0x63, 0x7f, 0xd3, 0x92, 0xd3, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pcOperations) mut => VT.GetCount(ref this, out pcOperations);
			public HRESULT GetAt(uint32 iIndex, in Guid riid, void** ppv) mut => VT.GetAt(ref this, iIndex, riid, ppv);
			public HRESULT InsertAt(uint32 iIndex, ref IPropertyChange ppropChange) mut => VT.InsertAt(ref this, iIndex, ref ppropChange);
			public HRESULT Append(ref IPropertyChange ppropChange) mut => VT.Append(ref this, ref ppropChange);
			public HRESULT AppendOrReplace(ref IPropertyChange ppropChange) mut => VT.AppendOrReplace(ref this, ref ppropChange);
			public HRESULT RemoveAt(uint32 iIndex) mut => VT.RemoveAt(ref this, iIndex);
			public HRESULT IsKeyInArray(in PROPERTYKEY key) mut => VT.IsKeyInArray(ref this, key);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, out uint32 pcOperations) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, uint32 iIndex, in Guid riid, void** ppv) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, uint32 iIndex, ref IPropertyChange ppropChange) InsertAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, ref IPropertyChange ppropChange) Append;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, ref IPropertyChange ppropChange) AppendOrReplace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, uint32 iIndex) RemoveAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyChangeArray self, in PROPERTYKEY key) IsKeyInArray;
			}
		}
		[CRepr]
		public struct IPropertyStoreCapabilities : IUnknown
		{
			public const new Guid IID = .(0xc8e2d566, 0x186e, 0x4d49, 0xbf, 0x41, 0x69, 0x09, 0xea, 0xd5, 0x6a, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsPropertyWritable(in PROPERTYKEY key) mut => VT.IsPropertyWritable(ref this, key);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreCapabilities self, in PROPERTYKEY key) IsPropertyWritable;
			}
		}
		[CRepr]
		public struct IPropertyStoreCache : IPropertyStore
		{
			public const new Guid IID = .(0x3017056d, 0x9a91, 0x4e90, 0x93, 0x7d, 0x74, 0x6c, 0x72, 0xab, 0xbf, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetState(in PROPERTYKEY key, out PSC_STATE pstate) mut => VT.GetState(ref this, key, out pstate);
			public HRESULT GetValueAndState(in PROPERTYKEY key, out PROPVARIANT ppropvar, out PSC_STATE pstate) mut => VT.GetValueAndState(ref this, key, out ppropvar, out pstate);
			public HRESULT SetState(in PROPERTYKEY key, PSC_STATE state) mut => VT.SetState(ref this, key, state);
			public HRESULT SetValueAndState(in PROPERTYKEY key, in PROPVARIANT ppropvar, PSC_STATE state) mut => VT.SetValueAndState(ref this, key, ppropvar, state);

			[CRepr]
			public struct VTable : IPropertyStore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreCache self, in PROPERTYKEY key, out PSC_STATE pstate) GetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreCache self, in PROPERTYKEY key, out PROPVARIANT ppropvar, out PSC_STATE pstate) GetValueAndState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreCache self, in PROPERTYKEY key, PSC_STATE state) SetState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreCache self, in PROPERTYKEY key, in PROPVARIANT ppropvar, PSC_STATE state) SetValueAndState;
			}
		}
		[CRepr]
		public struct IPropertyEnumType : IUnknown
		{
			public const new Guid IID = .(0x11e1fbf9, 0x2d56, 0x4a6b, 0x8d, 0xb3, 0x7c, 0xd1, 0x93, 0xa4, 0x71, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnumType(out PROPENUMTYPE penumtype) mut => VT.GetEnumType(ref this, out penumtype);
			public HRESULT GetValue(out PROPVARIANT ppropvar) mut => VT.GetValue(ref this, out ppropvar);
			public HRESULT GetRangeMinValue(out PROPVARIANT ppropvarMin) mut => VT.GetRangeMinValue(ref this, out ppropvarMin);
			public HRESULT GetRangeSetValue(out PROPVARIANT ppropvarSet) mut => VT.GetRangeSetValue(ref this, out ppropvarSet);
			public HRESULT GetDisplayText(out PWSTR ppszDisplay) mut => VT.GetDisplayText(ref this, out ppszDisplay);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType self, out PROPENUMTYPE penumtype) GetEnumType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType self, out PROPVARIANT ppropvar) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType self, out PROPVARIANT ppropvarMin) GetRangeMinValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType self, out PROPVARIANT ppropvarSet) GetRangeSetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType self, out PWSTR ppszDisplay) GetDisplayText;
			}
		}
		[CRepr]
		public struct IPropertyEnumType2 : IPropertyEnumType
		{
			public const new Guid IID = .(0x9b6e051c, 0x5ddd, 0x4321, 0x90, 0x70, 0xfe, 0x2a, 0xcb, 0x55, 0xe7, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageReference(out PWSTR ppszImageRes) mut => VT.GetImageReference(ref this, out ppszImageRes);

			[CRepr]
			public struct VTable : IPropertyEnumType.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumType2 self, out PWSTR ppszImageRes) GetImageReference;
			}
		}
		[CRepr]
		public struct IPropertyEnumTypeList : IUnknown
		{
			public const new Guid IID = .(0xa99400f4, 0x3d84, 0x4557, 0x94, 0xba, 0x12, 0x42, 0xfb, 0x2c, 0xc9, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pctypes) mut => VT.GetCount(ref this, out pctypes);
			public HRESULT GetAt(uint32 itype, in Guid riid, void** ppv) mut => VT.GetAt(ref this, itype, riid, ppv);
			public HRESULT GetConditionAt(uint32 nIndex, in Guid riid, void** ppv) mut => VT.GetConditionAt(ref this, nIndex, riid, ppv);
			public HRESULT FindMatchingIndex(in PROPVARIANT propvarCmp, out uint32 pnIndex) mut => VT.FindMatchingIndex(ref this, propvarCmp, out pnIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumTypeList self, out uint32 pctypes) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumTypeList self, uint32 itype, in Guid riid, void** ppv) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumTypeList self, uint32 nIndex, in Guid riid, void** ppv) GetConditionAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyEnumTypeList self, in PROPVARIANT propvarCmp, out uint32 pnIndex) FindMatchingIndex;
			}
		}
		[CRepr]
		public struct IPropertyDescription : IUnknown
		{
			public const new Guid IID = .(0x6f79d558, 0x3e96, 0x4549, 0xa1, 0xd1, 0x7d, 0x75, 0xd2, 0x28, 0x88, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyKey(out PROPERTYKEY pkey) mut => VT.GetPropertyKey(ref this, out pkey);
			public HRESULT GetCanonicalName(out PWSTR ppszName) mut => VT.GetCanonicalName(ref this, out ppszName);
			public HRESULT GetPropertyType(out uint16 pvartype) mut => VT.GetPropertyType(ref this, out pvartype);
			public HRESULT GetDisplayName(out PWSTR ppszName) mut => VT.GetDisplayName(ref this, out ppszName);
			public HRESULT GetEditInvitation(out PWSTR ppszInvite) mut => VT.GetEditInvitation(ref this, out ppszInvite);
			public HRESULT GetTypeFlags(PROPDESC_TYPE_FLAGS mask, out PROPDESC_TYPE_FLAGS ppdtFlags) mut => VT.GetTypeFlags(ref this, mask, out ppdtFlags);
			public HRESULT GetViewFlags(out PROPDESC_VIEW_FLAGS ppdvFlags) mut => VT.GetViewFlags(ref this, out ppdvFlags);
			public HRESULT GetDefaultColumnWidth(out uint32 pcxChars) mut => VT.GetDefaultColumnWidth(ref this, out pcxChars);
			public HRESULT GetDisplayType(out PROPDESC_DISPLAYTYPE pdisplaytype) mut => VT.GetDisplayType(ref this, out pdisplaytype);
			public HRESULT GetColumnState(out uint32 pcsFlags) mut => VT.GetColumnState(ref this, out pcsFlags);
			public HRESULT GetGroupingRange(out PROPDESC_GROUPING_RANGE pgr) mut => VT.GetGroupingRange(ref this, out pgr);
			public HRESULT GetRelativeDescriptionType(out PROPDESC_RELATIVEDESCRIPTION_TYPE prdt) mut => VT.GetRelativeDescriptionType(ref this, out prdt);
			public HRESULT GetRelativeDescription(in PROPVARIANT propvar1, in PROPVARIANT propvar2, out PWSTR ppszDesc1, out PWSTR ppszDesc2) mut => VT.GetRelativeDescription(ref this, propvar1, propvar2, out ppszDesc1, out ppszDesc2);
			public HRESULT GetSortDescription(out PROPDESC_SORTDESCRIPTION psd) mut => VT.GetSortDescription(ref this, out psd);
			public HRESULT GetSortDescriptionLabel(BOOL fDescending, out PWSTR ppszDescription) mut => VT.GetSortDescriptionLabel(ref this, fDescending, out ppszDescription);
			public HRESULT GetAggregationType(out PROPDESC_AGGREGATION_TYPE paggtype) mut => VT.GetAggregationType(ref this, out paggtype);
			public HRESULT GetConditionType(out PROPDESC_CONDITION_TYPE pcontype, out CONDITION_OPERATION popDefault) mut => VT.GetConditionType(ref this, out pcontype, out popDefault);
			public HRESULT GetEnumTypeList(in Guid riid, void** ppv) mut => VT.GetEnumTypeList(ref this, riid, ppv);
			public HRESULT CoerceToCanonicalValue(out PROPVARIANT ppropvar) mut => VT.CoerceToCanonicalValue(ref this, out ppropvar);
			public HRESULT FormatForDisplay(in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdfFlags, out PWSTR ppszDisplay) mut => VT.FormatForDisplay(ref this, propvar, pdfFlags, out ppszDisplay);
			public HRESULT IsValueCanonical(in PROPVARIANT propvar) mut => VT.IsValueCanonical(ref this, propvar);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPERTYKEY pkey) GetPropertyKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PWSTR ppszName) GetCanonicalName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out uint16 pvartype) GetPropertyType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PWSTR ppszName) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PWSTR ppszInvite) GetEditInvitation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, PROPDESC_TYPE_FLAGS mask, out PROPDESC_TYPE_FLAGS ppdtFlags) GetTypeFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_VIEW_FLAGS ppdvFlags) GetViewFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out uint32 pcxChars) GetDefaultColumnWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_DISPLAYTYPE pdisplaytype) GetDisplayType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out uint32 pcsFlags) GetColumnState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_GROUPING_RANGE pgr) GetGroupingRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_RELATIVEDESCRIPTION_TYPE prdt) GetRelativeDescriptionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, in PROPVARIANT propvar1, in PROPVARIANT propvar2, out PWSTR ppszDesc1, out PWSTR ppszDesc2) GetRelativeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_SORTDESCRIPTION psd) GetSortDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, BOOL fDescending, out PWSTR ppszDescription) GetSortDescriptionLabel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_AGGREGATION_TYPE paggtype) GetAggregationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPDESC_CONDITION_TYPE pcontype, out CONDITION_OPERATION popDefault) GetConditionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, in Guid riid, void** ppv) GetEnumTypeList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, out PROPVARIANT ppropvar) CoerceToCanonicalValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdfFlags, out PWSTR ppszDisplay) FormatForDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription self, in PROPVARIANT propvar) IsValueCanonical;
			}
		}
		[CRepr]
		public struct IPropertyDescription2 : IPropertyDescription
		{
			public const new Guid IID = .(0x57d2eded, 0x5062, 0x400e, 0xb1, 0x07, 0x5d, 0xae, 0x79, 0xfe, 0x57, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageReferenceForValue(in PROPVARIANT propvar, out PWSTR ppszImageRes) mut => VT.GetImageReferenceForValue(ref this, propvar, out ppszImageRes);

			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescription2 self, in PROPVARIANT propvar, out PWSTR ppszImageRes) GetImageReferenceForValue;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionAliasInfo : IPropertyDescription
		{
			public const new Guid IID = .(0xf67104fc, 0x2af9, 0x46fd, 0xb3, 0x2d, 0x24, 0x3c, 0x14, 0x04, 0xf3, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSortByAlias(in Guid riid, void** ppv) mut => VT.GetSortByAlias(ref this, riid, ppv);
			public HRESULT GetAdditionalSortByAliases(in Guid riid, void** ppv) mut => VT.GetAdditionalSortByAliases(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionAliasInfo self, in Guid riid, void** ppv) GetSortByAlias;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionAliasInfo self, in Guid riid, void** ppv) GetAdditionalSortByAliases;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionSearchInfo : IPropertyDescription
		{
			public const new Guid IID = .(0x078f91bd, 0x29a2, 0x440f, 0x92, 0x4e, 0x46, 0xa2, 0x91, 0x52, 0x45, 0x20);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSearchInfoFlags(out PROPDESC_SEARCHINFO_FLAGS ppdsiFlags) mut => VT.GetSearchInfoFlags(ref this, out ppdsiFlags);
			public HRESULT GetColumnIndexType(out PROPDESC_COLUMNINDEX_TYPE ppdciType) mut => VT.GetColumnIndexType(ref this, out ppdciType);
			public HRESULT GetProjectionString(out PWSTR ppszProjection) mut => VT.GetProjectionString(ref this, out ppszProjection);
			public HRESULT GetMaxSize(out uint32 pcbMaxSize) mut => VT.GetMaxSize(ref this, out pcbMaxSize);

			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionSearchInfo self, out PROPDESC_SEARCHINFO_FLAGS ppdsiFlags) GetSearchInfoFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionSearchInfo self, out PROPDESC_COLUMNINDEX_TYPE ppdciType) GetColumnIndexType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionSearchInfo self, out PWSTR ppszProjection) GetProjectionString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionSearchInfo self, out uint32 pcbMaxSize) GetMaxSize;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionRelatedPropertyInfo : IPropertyDescription
		{
			public const new Guid IID = .(0x507393f4, 0x2a3d, 0x4a60, 0xb5, 0x9e, 0xd9, 0xc7, 0x57, 0x16, 0xc2, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRelatedProperty(PWSTR pszRelationshipName, in Guid riid, void** ppv) mut => VT.GetRelatedProperty(ref this, pszRelationshipName, riid, ppv);

			[CRepr]
			public struct VTable : IPropertyDescription.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionRelatedPropertyInfo self, PWSTR pszRelationshipName, in Guid riid, void** ppv) GetRelatedProperty;
			}
		}
		[CRepr]
		public struct IPropertySystem : IUnknown
		{
			public const new Guid IID = .(0xca724e8a, 0xc3e6, 0x442b, 0x88, 0xa4, 0x6f, 0xb0, 0xdb, 0x80, 0x35, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyDescription(in PROPERTYKEY propkey, in Guid riid, void** ppv) mut => VT.GetPropertyDescription(ref this, propkey, riid, ppv);
			public HRESULT GetPropertyDescriptionByName(PWSTR pszCanonicalName, in Guid riid, void** ppv) mut => VT.GetPropertyDescriptionByName(ref this, pszCanonicalName, riid, ppv);
			public HRESULT GetPropertyDescriptionListFromString(PWSTR pszPropList, in Guid riid, void** ppv) mut => VT.GetPropertyDescriptionListFromString(ref this, pszPropList, riid, ppv);
			public HRESULT EnumeratePropertyDescriptions(PROPDESC_ENUMFILTER filterOn, in Guid riid, void** ppv) mut => VT.EnumeratePropertyDescriptions(ref this, filterOn, riid, ppv);
			public HRESULT FormatForDisplay(in PROPERTYKEY key, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdff, char16* pszText, uint32 cchText) mut => VT.FormatForDisplay(ref this, key, propvar, pdff, pszText, cchText);
			public HRESULT FormatForDisplayAlloc(in PROPERTYKEY key, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdff, out PWSTR ppszDisplay) mut => VT.FormatForDisplayAlloc(ref this, key, propvar, pdff, out ppszDisplay);
			public HRESULT RegisterPropertySchema(PWSTR pszPath) mut => VT.RegisterPropertySchema(ref this, pszPath);
			public HRESULT UnregisterPropertySchema(PWSTR pszPath) mut => VT.UnregisterPropertySchema(ref this, pszPath);
			public HRESULT RefreshPropertySchema() mut => VT.RefreshPropertySchema(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, in PROPERTYKEY propkey, in Guid riid, void** ppv) GetPropertyDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, PWSTR pszCanonicalName, in Guid riid, void** ppv) GetPropertyDescriptionByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, PWSTR pszPropList, in Guid riid, void** ppv) GetPropertyDescriptionListFromString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, PROPDESC_ENUMFILTER filterOn, in Guid riid, void** ppv) EnumeratePropertyDescriptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, in PROPERTYKEY key, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdff, char16* pszText, uint32 cchText) FormatForDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, in PROPERTYKEY key, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdff, out PWSTR ppszDisplay) FormatForDisplayAlloc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, PWSTR pszPath) RegisterPropertySchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self, PWSTR pszPath) UnregisterPropertySchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystem self) RefreshPropertySchema;
			}
		}
		[CRepr]
		public struct IPropertyDescriptionList : IUnknown
		{
			public const new Guid IID = .(0x1f9fc1d0, 0xc39b, 0x4b26, 0x81, 0x7f, 0x01, 0x19, 0x67, 0xd3, 0x44, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pcElem) mut => VT.GetCount(ref this, out pcElem);
			public HRESULT GetAt(uint32 iElem, in Guid riid, void** ppv) mut => VT.GetAt(ref this, iElem, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionList self, out uint32 pcElem) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyDescriptionList self, uint32 iElem, in Guid riid, void** ppv) GetAt;
			}
		}
		[CRepr]
		public struct IPropertyStoreFactory : IUnknown
		{
			public const new Guid IID = .(0xbc110b6d, 0x57e8, 0x4148, 0xa9, 0xc6, 0x91, 0x01, 0x5a, 0xb2, 0xf3, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, ref IUnknown pUnkFactory, in Guid riid, void** ppv) mut => VT.GetPropertyStore(ref this, flags, ref pUnkFactory, riid, ppv);
			public HRESULT GetPropertyStoreForKeys(in PROPERTYKEY rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) mut => VT.GetPropertyStoreForKeys(ref this, rgKeys, cKeys, flags, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreFactory self, GETPROPERTYSTOREFLAGS flags, ref IUnknown pUnkFactory, in Guid riid, void** ppv) GetPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStoreFactory self, in PROPERTYKEY rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) GetPropertyStoreForKeys;
			}
		}
		[CRepr]
		public struct IDelayedPropertyStoreFactory : IPropertyStoreFactory
		{
			public const new Guid IID = .(0x40d4577f, 0xe237, 0x4bdb, 0xbd, 0x69, 0x58, 0xf0, 0x89, 0x43, 0x1b, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDelayedPropertyStore(GETPROPERTYSTOREFLAGS flags, uint32 dwStoreId, in Guid riid, void** ppv) mut => VT.GetDelayedPropertyStore(ref this, flags, dwStoreId, riid, ppv);

			[CRepr]
			public struct VTable : IPropertyStoreFactory.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDelayedPropertyStoreFactory self, GETPROPERTYSTOREFLAGS flags, uint32 dwStoreId, in Guid riid, void** ppv) GetDelayedPropertyStore;
			}
		}
		[CRepr]
		public struct IPersistSerializedPropStorage : IUnknown
		{
			public const new Guid IID = .(0xe318ad57, 0x0aa0, 0x450f, 0xac, 0xa5, 0x6f, 0xab, 0x71, 0x03, 0xd9, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFlags(int32 flags) mut => VT.SetFlags(ref this, flags);
			public HRESULT SetPropertyStorage(ref SERIALIZEDPROPSTORAGE psps, uint32 cb) mut => VT.SetPropertyStorage(ref this, ref psps, cb);
			public HRESULT GetPropertyStorage(out SERIALIZEDPROPSTORAGE* ppsps, out uint32 pcb) mut => VT.GetPropertyStorage(ref this, out ppsps, out pcb);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistSerializedPropStorage self, int32 flags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistSerializedPropStorage self, ref SERIALIZEDPROPSTORAGE psps, uint32 cb) SetPropertyStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistSerializedPropStorage self, out SERIALIZEDPROPSTORAGE* ppsps, out uint32 pcb) GetPropertyStorage;
			}
		}
		[CRepr]
		public struct IPersistSerializedPropStorage2 : IPersistSerializedPropStorage
		{
			public const new Guid IID = .(0x77effa68, 0x4f98, 0x4366, 0xba, 0x72, 0x57, 0x3b, 0x3d, 0x88, 0x05, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyStorageSize(out uint32 pcb) mut => VT.GetPropertyStorageSize(ref this, out pcb);
			public HRESULT GetPropertyStorageBuffer(out SERIALIZEDPROPSTORAGE psps, uint32 cb, out uint32 pcbWritten) mut => VT.GetPropertyStorageBuffer(ref this, out psps, cb, out pcbWritten);

			[CRepr]
			public struct VTable : IPersistSerializedPropStorage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistSerializedPropStorage2 self, out uint32 pcb) GetPropertyStorageSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistSerializedPropStorage2 self, out SERIALIZEDPROPSTORAGE psps, uint32 cb, out uint32 pcbWritten) GetPropertyStorageBuffer;
			}
		}
		[CRepr]
		public struct IPropertySystemChangeNotify : IUnknown
		{
			public const new Guid IID = .(0xfa955fd9, 0x38be, 0x4879, 0xa6, 0xce, 0x82, 0x4c, 0xf5, 0x2d, 0x60, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SchemaRefreshed() mut => VT.SchemaRefreshed(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySystemChangeNotify self) SchemaRefreshed;
			}
		}
		[CRepr]
		public struct ICreateObject : IUnknown
		{
			public const new Guid IID = .(0x75121952, 0xe0d0, 0x43e5, 0x93, 0x80, 0x1d, 0x80, 0x48, 0x3a, 0xcf, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateObject(in Guid clsid, ref IUnknown pUnkOuter, in Guid riid, void** ppv) mut => VT.CreateObject(ref this, clsid, ref pUnkOuter, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateObject self, in Guid clsid, ref IUnknown pUnkOuter, in Guid riid, void** ppv) CreateObject;
			}
		}
		[CRepr]
		public struct IPropertyUI : IUnknown
		{
			public const new Guid IID = .(0x757a7d9f, 0x919a, 0x4118, 0x99, 0xd7, 0xdb, 0xb2, 0x08, 0xc8, 0xcc, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParsePropertyName(PWSTR pszName, out Guid pfmtid, out uint32 ppid, out uint32 pchEaten) mut => VT.ParsePropertyName(ref this, pszName, out pfmtid, out ppid, out pchEaten);
			public HRESULT GetCannonicalName(in Guid fmtid, uint32 pid, char16* pwszText, uint32 cchText) mut => VT.GetCannonicalName(ref this, fmtid, pid, pwszText, cchText);
			public HRESULT GetDisplayName(in Guid fmtid, uint32 pid, PROPERTYUI_NAME_FLAGS flags, char16* pwszText, uint32 cchText) mut => VT.GetDisplayName(ref this, fmtid, pid, flags, pwszText, cchText);
			public HRESULT GetPropertyDescription(in Guid fmtid, uint32 pid, char16* pwszText, uint32 cchText) mut => VT.GetPropertyDescription(ref this, fmtid, pid, pwszText, cchText);
			public HRESULT GetDefaultWidth(in Guid fmtid, uint32 pid, out uint32 pcxChars) mut => VT.GetDefaultWidth(ref this, fmtid, pid, out pcxChars);
			public HRESULT ComGetFlags(in Guid fmtid, uint32 pid, out PROPERTYUI_FLAGS pflags) mut => VT.ComGetFlags(ref this, fmtid, pid, out pflags);
			public HRESULT FormatForDisplay(in Guid fmtid, uint32 pid, in PROPVARIANT ppropvar, PROPERTYUI_FORMAT_FLAGS puiff, char16* pwszText, uint32 cchText) mut => VT.FormatForDisplay(ref this, fmtid, pid, ppropvar, puiff, pwszText, cchText);
			public HRESULT GetHelpInfo(in Guid fmtid, uint32 pid, char16* pwszHelpFile, uint32 cch, out uint32 puHelpID) mut => VT.GetHelpInfo(ref this, fmtid, pid, pwszHelpFile, cch, out puHelpID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, PWSTR pszName, out Guid pfmtid, out uint32 ppid, out uint32 pchEaten) ParsePropertyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, char16* pwszText, uint32 cchText) GetCannonicalName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, PROPERTYUI_NAME_FLAGS flags, char16* pwszText, uint32 cchText) GetDisplayName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, char16* pwszText, uint32 cchText) GetPropertyDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, out uint32 pcxChars) GetDefaultWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, out PROPERTYUI_FLAGS pflags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, in PROPVARIANT ppropvar, PROPERTYUI_FORMAT_FLAGS puiff, char16* pwszText, uint32 cchText) FormatForDisplay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyUI self, in Guid fmtid, uint32 pid, char16* pwszHelpFile, uint32 cch, out uint32 puHelpID) GetHelpInfo;
			}
		}
		
		// --- Functions ---
		
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToWinRTPropertyValue(in PROPVARIANT propvar, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinRTPropertyValueToPropVariant(IUnknown* punkPropertyValue, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplay(in PROPERTYKEY propkey, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdfFlags, char16* pwszText, uint32 cchText);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatForDisplayAlloc(in PROPERTYKEY key, in PROPVARIANT propvar, PROPDESC_FORMAT_FLAGS pdff, out PWSTR ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSFormatPropertyValue(ref IPropertyStore pps, ref IPropertyDescription ppd, PROPDESC_FORMAT_FLAGS pdff, out PWSTR ppszDisplay);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetImageReferenceForValue(in PROPERTYKEY propkey, in PROPVARIANT propvar, out PWSTR ppszImageRes);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSStringFromPropertyKey(in PROPERTYKEY pkey, char16* psz, uint32 cch);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyKeyFromString(PWSTR pszString, out PROPERTYKEY pkey);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMemoryPropertyStore(in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateDelayedMultiplexPropertyStore(GETPROPERTYSTOREFLAGS flags, ref IDelayedPropertyStoreFactory pdpsf, uint32* rgStoreIds, uint32 cStores, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateMultiplexPropertyStore(IUnknown** prgpunkStores, uint32 cStores, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyChangeArray(PROPERTYKEY* rgpropkey, PKA_FLAGS* rgflags, PROPVARIANT* rgpropvar, uint32 cChanges, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateSimplePropertyChange(PKA_FLAGS flags, in PROPERTYKEY key, in PROPVARIANT propvar, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescription(in PROPERTYKEY propkey, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescriptionByName(PWSTR pszCanonicalName, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSLookupPropertyHandlerCLSID(PWSTR pszFilePath, out Guid pclsid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetItemPropertyHandler(ref IUnknown punkItem, BOOL fReadWrite, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetItemPropertyHandlerWithCreateObject(ref IUnknown punkItem, BOOL fReadWrite, ref IUnknown punkCreateObject, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyValue(ref IPropertyStore pps, ref IPropertyDescription ppd, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSSetPropertyValue(ref IPropertyStore pps, ref IPropertyDescription ppd, in PROPVARIANT propvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSRegisterPropertySchema(PWSTR pszPath);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSUnregisterPropertySchema(PWSTR pszPath);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSRefreshPropertySchema();
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSEnumeratePropertyDescriptions(PROPDESC_ENUMFILTER filterOn, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyKeyFromName(PWSTR pszName, out PROPERTYKEY ppropkey);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetNameFromPropertyKey(in PROPERTYKEY propkey, out PWSTR ppszCanonicalName);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCoerceToCanonicalValue(in PROPERTYKEY key, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyDescriptionListFromString(PWSTR pszPropList, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyStoreFromPropertySetStorage(ref IPropertySetStorage ppss, uint32 grfMode, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreatePropertyStoreFromObject(ref IUnknown punk, uint32 grfMode, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSCreateAdapterFromPropertyStore(ref IPropertyStore pps, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertySystem(in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetPropertyFromPropertyStorage(ref SERIALIZEDPROPSTORAGE psps, uint32 cb, in PROPERTYKEY rpkey, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSGetNamedPropertyFromPropertyStorage(ref SERIALIZEDPROPSTORAGE psps, uint32 cb, PWSTR pszName, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadType(ref IPropertyBag propBag, PWSTR propName, out VARIANT @var, uint16 type);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStr(ref IPropertyBag propBag, PWSTR propName, char16* value, int32 characterCount);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStrAlloc(ref IPropertyBag propBag, PWSTR propName, out PWSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBSTR(ref IPropertyBag propBag, PWSTR propName, out BSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStr(ref IPropertyBag propBag, PWSTR propName, PWSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBSTR(ref IPropertyBag propBag, PWSTR propName, BSTR value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadInt(ref IPropertyBag propBag, PWSTR propName, out int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteInt(ref IPropertyBag propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadSHORT(ref IPropertyBag propBag, PWSTR propName, out int16 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteSHORT(ref IPropertyBag propBag, PWSTR propName, int16 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadLONG(ref IPropertyBag propBag, PWSTR propName, out int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteLONG(ref IPropertyBag propBag, PWSTR propName, int32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadDWORD(ref IPropertyBag propBag, PWSTR propName, out uint32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteDWORD(ref IPropertyBag propBag, PWSTR propName, uint32 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadBOOL(ref IPropertyBag propBag, PWSTR propName, out BOOL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteBOOL(ref IPropertyBag propBag, PWSTR propName, BOOL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTL(ref IPropertyBag propBag, PWSTR propName, out POINTL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTL(ref IPropertyBag propBag, PWSTR propName, in POINTL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPOINTS(ref IPropertyBag propBag, PWSTR propName, out POINTS value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePOINTS(ref IPropertyBag propBag, PWSTR propName, in POINTS value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadRECTL(ref IPropertyBag propBag, PWSTR propName, out RECTL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteRECTL(ref IPropertyBag propBag, PWSTR propName, in RECTL value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadStream(ref IPropertyBag propBag, PWSTR propName, out IStream* value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteStream(ref IPropertyBag propBag, PWSTR propName, ref IStream value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_Delete(ref IPropertyBag propBag, PWSTR propName);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadULONGLONG(ref IPropertyBag propBag, PWSTR propName, out uint64 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteULONGLONG(ref IPropertyBag propBag, PWSTR propName, uint64 value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadUnknown(ref IPropertyBag propBag, PWSTR propName, in Guid riid, void** ppv);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteUnknown(ref IPropertyBag propBag, PWSTR propName, ref IUnknown punk);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadGUID(ref IPropertyBag propBag, PWSTR propName, out Guid value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WriteGUID(ref IPropertyBag propBag, PWSTR propName, in Guid value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_ReadPropertyKey(ref IPropertyBag propBag, PWSTR propName, out PROPERTYKEY value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PSPropertyBag_WritePropertyKey(ref IPropertyBag propBag, PWSTR propName, in PROPERTYKEY value);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromResource(HINSTANCE hinst, uint32 id, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromBuffer(void* pv, uint32 cb, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromCLSID(in Guid clsid, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromGUIDAsString(in Guid guid, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromFileTime(in FILETIME pftIn, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromPropVariantVectorElem(in PROPVARIANT propvarIn, uint32 iElem, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantVectorFromPropVariant(in PROPVARIANT propvarSingle, out PROPVARIANT ppropvarVector);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStrRet(out STRRET pstrret, ITEMIDLIST* pidl, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromBooleanVector(BOOL* prgf, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt16Vector(int16* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt16Vector(uint16* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt32Vector(int32* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt32Vector(uint32* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromInt64Vector(int64* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromUInt64Vector(uint64* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromDoubleVector(double* prgn, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromFileTimeVector(FILETIME* prgft, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStringVector(PWSTR* prgsz, uint32 cElems, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromStringAsVector(PWSTR psz, out PROPVARIANT ppropvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PropVariantToBooleanWithDefault(in PROPVARIANT propvarIn, BOOL fDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 PropVariantToInt16WithDefault(in PROPVARIANT propvarIn, int16 iDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 PropVariantToUInt16WithDefault(in PROPVARIANT propvarIn, uint16 uiDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PropVariantToInt32WithDefault(in PROPVARIANT propvarIn, int32 lDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PropVariantToUInt32WithDefault(in PROPVARIANT propvarIn, uint32 ulDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 PropVariantToInt64WithDefault(in PROPVARIANT propvarIn, int64 llDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 PropVariantToUInt64WithDefault(in PROPVARIANT propvarIn, uint64 ullDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern double PropVariantToDoubleWithDefault(in PROPVARIANT propvarIn, double dblDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PropVariantToStringWithDefault(in PROPVARIANT propvarIn, PWSTR pszDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBoolean(in PROPVARIANT propvarIn, out BOOL pfRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16(in PROPVARIANT propvarIn, out int16 piRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16(in PROPVARIANT propvarIn, out uint16 puiRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32(in PROPVARIANT propvarIn, out int32 plRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32(in PROPVARIANT propvarIn, out uint32 pulRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64(in PROPVARIANT propvarIn, out int64 pllRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64(in PROPVARIANT propvarIn, out uint64 pullRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDouble(in PROPVARIANT propvarIn, out double pdblRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBuffer(in PROPVARIANT propvar, void* pv, uint32 cb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToString(in PROPVARIANT propvar, char16* psz, uint32 cch);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToGUID(in PROPVARIANT propvar, out Guid pguid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringAlloc(in PROPVARIANT propvar, out PWSTR ppszOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBSTR(in PROPVARIANT propvar, out BSTR pbstrOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStrRet(in PROPVARIANT propvar, out STRRET pstrret);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTime(in PROPVARIANT propvar, PSTIME_FLAGS pstfOut, out FILETIME pftOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PropVariantGetElementCount(in PROPVARIANT propvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBooleanVector(in PROPVARIANT propvar, BOOL* prgf, uint32 crgf, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16Vector(in PROPVARIANT propvar, int16* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16Vector(in PROPVARIANT propvar, uint16* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32Vector(in PROPVARIANT propvar, int32* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32Vector(in PROPVARIANT propvar, uint32* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64Vector(in PROPVARIANT propvar, int64* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64Vector(in PROPVARIANT propvar, uint64* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDoubleVector(in PROPVARIANT propvar, double* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTimeVector(in PROPVARIANT propvar, FILETIME* prgft, uint32 crgft, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringVector(in PROPVARIANT propvar, PWSTR* prgsz, uint32 crgsz, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToBooleanVectorAlloc(in PROPVARIANT propvar, out BOOL* pprgf, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt16VectorAlloc(in PROPVARIANT propvar, out int16* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt16VectorAlloc(in PROPVARIANT propvar, out uint16* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt32VectorAlloc(in PROPVARIANT propvar, out int32* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt32VectorAlloc(in PROPVARIANT propvar, out uint32* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToInt64VectorAlloc(in PROPVARIANT propvar, out int64* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToUInt64VectorAlloc(in PROPVARIANT propvar, out uint64* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToDoubleVectorAlloc(in PROPVARIANT propvar, out double* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToFileTimeVectorAlloc(in PROPVARIANT propvar, out FILETIME* pprgft, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToStringVectorAlloc(in PROPVARIANT propvar, out PWSTR* pprgsz, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetBooleanElem(in PROPVARIANT propvar, uint32 iElem, out BOOL pfVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt16Elem(in PROPVARIANT propvar, uint32 iElem, out int16 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt16Elem(in PROPVARIANT propvar, uint32 iElem, out uint16 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt32Elem(in PROPVARIANT propvar, uint32 iElem, out int32 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt32Elem(in PROPVARIANT propvar, uint32 iElem, out uint32 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetInt64Elem(in PROPVARIANT propvar, uint32 iElem, out int64 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetUInt64Elem(in PROPVARIANT propvar, uint32 iElem, out uint64 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetDoubleElem(in PROPVARIANT propvar, uint32 iElem, out double pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetFileTimeElem(in PROPVARIANT propvar, uint32 iElem, out FILETIME pftVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantGetStringElem(in PROPVARIANT propvar, uint32 iElem, out PWSTR ppszVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClearPropVariantArray(PROPVARIANT* rgPropVar, uint32 cVars);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PropVariantCompareEx(in PROPVARIANT propvar1, in PROPVARIANT propvar2, PROPVAR_COMPARE_UNIT unit, PROPVAR_COMPARE_FLAGS flags);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantChangeType(out PROPVARIANT ppropvarDest, in PROPVARIANT propvarSrc, PROPVAR_CHANGE_FLAGS flags, uint16 vt);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantToVariant(in PROPVARIANT pPropVar, out VARIANT pVar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToPropVariant(in VARIANT pVar, out PROPVARIANT pPropVar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromResource(HINSTANCE hinst, uint32 id, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromBuffer(void* pv, uint32 cb, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromGUIDAsString(in Guid guid, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromFileTime(in FILETIME pft, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromFileTimeArray(FILETIME* prgft, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromStrRet(ref STRRET pstrret, ref ITEMIDLIST pidl, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromVariantArrayElem(in VARIANT varIn, uint32 iElem, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromBooleanArray(BOOL* prgf, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt16Array(int16* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt16Array(uint16* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt32Array(int32* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt32Array(uint32* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromInt64Array(int64* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromUInt64Array(uint64* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromDoubleArray(double* prgn, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitVariantFromStringArray(PWSTR* prgsz, uint32 cElems, out VARIANT pvar);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL VariantToBooleanWithDefault(in VARIANT varIn, BOOL fDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 VariantToInt16WithDefault(in VARIANT varIn, int16 iDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 VariantToUInt16WithDefault(in VARIANT varIn, uint16 uiDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantToInt32WithDefault(in VARIANT varIn, int32 lDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VariantToUInt32WithDefault(in VARIANT varIn, uint32 ulDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int64 VariantToInt64WithDefault(in VARIANT varIn, int64 llDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 VariantToUInt64WithDefault(in VARIANT varIn, uint64 ullDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern double VariantToDoubleWithDefault(in VARIANT varIn, double dblDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR VariantToStringWithDefault(in VARIANT varIn, PWSTR pszDefault);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBoolean(in VARIANT varIn, out BOOL pfRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16(in VARIANT varIn, out int16 piRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16(in VARIANT varIn, out uint16 puiRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32(in VARIANT varIn, out int32 plRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32(in VARIANT varIn, out uint32 pulRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64(in VARIANT varIn, out int64 pllRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64(in VARIANT varIn, out uint64 pullRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDouble(in VARIANT varIn, out double pdblRet);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBuffer(in VARIANT varIn, void* pv, uint32 cb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToGUID(in VARIANT varIn, out Guid pguid);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToString(in VARIANT varIn, char16* pszBuf, uint32 cchBuf);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringAlloc(in VARIANT varIn, out PWSTR ppszBuf);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDosDateTime(in VARIANT varIn, out uint16 pwDate, out uint16 pwTime);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStrRet(in VARIANT varIn, out STRRET pstrret);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToFileTime(in VARIANT varIn, PSTIME_FLAGS stfOut, out FILETIME pftOut);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VariantGetElementCount(in VARIANT varIn);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBooleanArray(in VARIANT @var, BOOL* prgf, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16Array(in VARIANT @var, int16* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16Array(in VARIANT @var, uint16* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32Array(in VARIANT @var, int32* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32Array(in VARIANT @var, uint32* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64Array(in VARIANT @var, int64* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64Array(in VARIANT @var, uint64* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDoubleArray(in VARIANT @var, double* prgn, uint32 crgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringArray(in VARIANT @var, PWSTR* prgsz, uint32 crgsz, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToBooleanArrayAlloc(in VARIANT @var, out BOOL* pprgf, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt16ArrayAlloc(in VARIANT @var, out int16* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt16ArrayAlloc(in VARIANT @var, out uint16* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt32ArrayAlloc(in VARIANT @var, out int32* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt32ArrayAlloc(in VARIANT @var, out uint32* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToInt64ArrayAlloc(in VARIANT @var, out int64* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToUInt64ArrayAlloc(in VARIANT @var, out uint64* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToDoubleArrayAlloc(in VARIANT @var, out double* pprgn, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantToStringArrayAlloc(in VARIANT @var, out PWSTR* pprgsz, out uint32 pcElem);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetBooleanElem(in VARIANT @var, uint32 iElem, out BOOL pfVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt16Elem(in VARIANT @var, uint32 iElem, out int16 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt16Elem(in VARIANT @var, uint32 iElem, out uint16 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt32Elem(in VARIANT @var, uint32 iElem, out int32 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt32Elem(in VARIANT @var, uint32 iElem, out uint32 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetInt64Elem(in VARIANT @var, uint32 iElem, out int64 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetUInt64Elem(in VARIANT @var, uint32 iElem, out uint64 pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetDoubleElem(in VARIANT @var, uint32 iElem, out double pnVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantGetStringElem(in VARIANT @var, uint32 iElem, out PWSTR ppszVal);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClearVariantArray(VARIANT* pvars, uint32 cvars);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantCompare(in VARIANT var1, in VARIANT var2);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreFromIDList(ref ITEMIDLIST pidl, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreFromParsingName(PWSTR pszPath, IBindCtx* pbc, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAddDefaultPropertiesByExt(PWSTR pszExt, ref IPropertyStore pPropStore);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_OpenProperties(PWSTR pszApp, PWSTR pszPIF, uint32 hInf, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_GetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PifMgr_SetProperties(HANDLE hProps, PSTR pszGroup, void* lpProps, int32 cbProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE PifMgr_CloseProperties(HANDLE hProps, uint32 flOpt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgCreate(ref IPropertySetStorage psstg, in Guid fmtid, Guid* pclsid, uint32 grfFlags, uint32 grfMode, uint32 dwDisposition, out IPropertyStorage* ppstg, uint32* puCodePage);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgReadMultiple(ref IPropertyStorage pps, uint32 uCodePage, uint32 cpspec, PROPSPEC* rgpspec, out PROPVARIANT rgvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPropStgWriteMultiple(ref IPropertyStorage pps, uint32* puCodePage, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgvar, uint32 propidNameFirst);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetPropertyStoreForWindow(HWND hwnd, in Guid riid, void** ppv);
	}
}
