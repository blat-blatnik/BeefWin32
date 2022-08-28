namespace Win32.Storage.IndexServer;

using System;
using Win32.Foundation;
using Win32.System.Com;
using Win32.System.Com.StructuredStorage;

static
{
	#region Constants
	public const uint32 CI_VERSION_WDS30 = 258;
	public const uint32 CI_VERSION_WDS40 = 265;
	public const uint32 CI_VERSION_WIN70 = 1792;
	public const uint32 LIFF_LOAD_DEFINED_FILTER = 1;
	public const uint32 LIFF_IMPLEMENT_TEXT_FILTER_FALLBACK_POLICY = 2;
	public const uint32 LIFF_FORCE_TEXT_FILTER_FALLBACK = 3;
	public const uint32 PID_FILENAME = 100;
	public const uint32 DBPROP_CI_CATALOG_NAME = 2;
	public const uint32 DBPROP_CI_INCLUDE_SCOPES = 3;
	public const uint32 DBPROP_CI_DEPTHS = 4;
	public const uint32 DBPROP_CI_SCOPE_FLAGS = 4;
	public const uint32 DBPROP_CI_EXCLUDE_SCOPES = 5;
	public const uint32 DBPROP_CI_SECURITY_ID = 6;
	public const uint32 DBPROP_CI_QUERY_TYPE = 7;
	public const uint32 DBPROP_CI_PROVIDER = 8;
	public const uint32 CI_PROVIDER_MSSEARCH = 1;
	public const uint32 CI_PROVIDER_INDEXING_SERVICE = 2;
	public const uint32 CI_PROVIDER_ALL = 4294967295;
	public const uint32 DBPROP_DEFAULT_EQUALS_BEHAVIOR = 2;
	public const uint32 DBPROP_USECONTENTINDEX = 2;
	public const uint32 DBPROP_DEFERNONINDEXEDTRIMMING = 3;
	public const uint32 DBPROP_USEEXTENDEDDBTYPES = 4;
	public const uint32 DBPROP_IGNORENOISEONLYCLAUSES = 5;
	public const uint32 DBPROP_GENERICOPTIONS_STRING = 6;
	public const uint32 DBPROP_FIRSTROWS = 7;
	public const uint32 DBPROP_DEFERCATALOGVERIFICATION = 8;
	public const uint32 DBPROP_CATALOGLISTID = 9;
	public const uint32 DBPROP_GENERATEPARSETREE = 10;
	public const uint32 DBPROP_APPLICATION_NAME = 11;
	public const uint32 DBPROP_FREETEXTANYTERM = 12;
	public const uint32 DBPROP_FREETEXTUSESTEMMING = 13;
	public const uint32 DBPROP_IGNORESBRI = 14;
	public const uint32 DBPROP_DONOTCOMPUTEEXPENSIVEPROPS = 15;
	public const uint32 DBPROP_ENABLEROWSETEVENTS = 16;
	public const uint32 DBPROP_MACHINE = 2;
	public const uint32 DBPROP_CLIENT_CLSID = 3;
	public const uint32 MSIDXSPROP_ROWSETQUERYSTATUS = 2;
	public const uint32 MSIDXSPROP_COMMAND_LOCALE_STRING = 3;
	public const uint32 MSIDXSPROP_QUERY_RESTRICTION = 4;
	public const uint32 MSIDXSPROP_PARSE_TREE = 5;
	public const uint32 MSIDXSPROP_MAX_RANK = 6;
	public const uint32 MSIDXSPROP_RESULTS_FOUND = 7;
	public const uint32 MSIDXSPROP_WHEREID = 8;
	public const uint32 MSIDXSPROP_SERVER_VERSION = 9;
	public const uint32 MSIDXSPROP_SERVER_WINVER_MAJOR = 10;
	public const uint32 MSIDXSPROP_SERVER_WINVER_MINOR = 11;
	public const uint32 MSIDXSPROP_SERVER_NLSVERSION = 12;
	public const uint32 MSIDXSPROP_SERVER_NLSVER_DEFINED = 13;
	public const uint32 MSIDXSPROP_SAME_SORTORDER_USED = 14;
	public const uint32 STAT_BUSY = 0;
	public const uint32 STAT_ERROR = 1;
	public const uint32 STAT_DONE = 2;
	public const uint32 STAT_REFRESH = 3;
	public const uint32 STAT_PARTIAL_SCOPE = 8;
	public const uint32 STAT_NOISE_WORDS = 16;
	public const uint32 STAT_CONTENT_OUT_OF_DATE = 32;
	public const uint32 STAT_REFRESH_INCOMPLETE = 64;
	public const uint32 STAT_CONTENT_QUERY_INCOMPLETE = 128;
	public const uint32 STAT_TIME_LIMIT_EXCEEDED = 256;
	public const uint32 STAT_SHARING_VIOLATION = 512;
	public const uint32 STAT_MISSING_RELDOC = 1024;
	public const uint32 STAT_MISSING_PROP_IN_RELDOC = 2048;
	public const uint32 STAT_RELDOC_ACCESS_DENIED = 4096;
	public const uint32 STAT_COALESCE_COMP_ALL_NOISE = 8192;
	public const uint32 QUERY_SHALLOW = 0;
	public const uint32 QUERY_DEEP = 1;
	public const uint32 QUERY_PHYSICAL_PATH = 0;
	public const uint32 QUERY_VIRTUAL_PATH = 2;
	public const uint32 PROPID_QUERY_WORKID = 5;
	public const uint32 PROPID_QUERY_UNFILTERED = 7;
	public const uint32 PROPID_QUERY_VIRTUALPATH = 9;
	public const uint32 PROPID_QUERY_LASTSEENTIME = 10;
	public const uint32 CICAT_STOPPED = 1;
	public const uint32 CICAT_READONLY = 2;
	public const uint32 CICAT_WRITABLE = 4;
	public const uint32 CICAT_NO_QUERY = 8;
	public const uint32 CICAT_GET_STATE = 16;
	public const uint32 CICAT_ALL_OPENED = 32;
	public const uint32 CI_STATE_SHADOW_MERGE = 1;
	public const uint32 CI_STATE_MASTER_MERGE = 2;
	public const uint32 CI_STATE_CONTENT_SCAN_REQUIRED = 4;
	public const uint32 CI_STATE_ANNEALING_MERGE = 8;
	public const uint32 CI_STATE_SCANNING = 16;
	public const uint32 CI_STATE_RECOVERING = 32;
	public const uint32 CI_STATE_INDEX_MIGRATION_MERGE = 64;
	public const uint32 CI_STATE_LOW_MEMORY = 128;
	public const uint32 CI_STATE_HIGH_IO = 256;
	public const uint32 CI_STATE_MASTER_MERGE_PAUSED = 512;
	public const uint32 CI_STATE_READ_ONLY = 1024;
	public const uint32 CI_STATE_BATTERY_POWER = 2048;
	public const uint32 CI_STATE_USER_ACTIVE = 4096;
	public const uint32 CI_STATE_STARTING = 8192;
	public const uint32 CI_STATE_READING_USNS = 16384;
	public const uint32 CI_STATE_DELETION_MERGE = 32768;
	public const uint32 CI_STATE_LOW_DISK = 65536;
	public const uint32 CI_STATE_HIGH_CPU = 131072;
	public const uint32 CI_STATE_BATTERY_POLICY = 262144;
	public const uint32 GENERATE_METHOD_EXACT = 0;
	public const uint32 GENERATE_METHOD_PREFIX = 1;
	public const uint32 GENERATE_METHOD_INFLECT = 2;
	public const uint32 SCOPE_FLAG_MASK = 255;
	public const uint32 SCOPE_FLAG_INCLUDE = 1;
	public const uint32 SCOPE_FLAG_DEEP = 2;
	public const uint32 SCOPE_TYPE_MASK = 4294967040;
	public const uint32 SCOPE_TYPE_WINPATH = 256;
	public const uint32 SCOPE_TYPE_VPATH = 512;
	public const uint32 PROPID_QUERY_RANKVECTOR = 2;
	public const uint32 PROPID_QUERY_RANK = 3;
	public const uint32 PROPID_QUERY_HITCOUNT = 4;
	public const uint32 PROPID_QUERY_ALL = 6;
	public const uint32 PROPID_STG_CONTENTS = 19;
	public const uint32 VECTOR_RANK_MIN = 0;
	public const uint32 VECTOR_RANK_MAX = 1;
	public const uint32 VECTOR_RANK_INNER = 2;
	public const uint32 VECTOR_RANK_DICE = 3;
	public const uint32 VECTOR_RANK_JACCARD = 4;
	public const uint32 DBSETFUNC_NONE = 0;
	public const uint32 DBSETFUNC_ALL = 1;
	public const uint32 DBSETFUNC_DISTINCT = 2;
	public const uint32 PROXIMITY_UNIT_WORD = 0;
	public const uint32 PROXIMITY_UNIT_SENTENCE = 1;
	public const uint32 PROXIMITY_UNIT_PARAGRAPH = 2;
	public const uint32 PROXIMITY_UNIT_CHAPTER = 3;
	public const HRESULT NOT_AN_ERROR = 524288;
	public const HRESULT FILTER_E_END_OF_CHUNKS = -2147215616;
	public const HRESULT FILTER_E_NO_MORE_TEXT = -2147215615;
	public const HRESULT FILTER_E_NO_MORE_VALUES = -2147215614;
	public const HRESULT FILTER_E_ACCESS = -2147215613;
	public const HRESULT FILTER_W_MONIKER_CLIPPED = 268036;
	public const HRESULT FILTER_E_NO_TEXT = -2147215611;
	public const HRESULT FILTER_E_NO_VALUES = -2147215610;
	public const HRESULT FILTER_E_EMBEDDING_UNAVAILABLE = -2147215609;
	public const HRESULT FILTER_E_LINK_UNAVAILABLE = -2147215608;
	public const HRESULT FILTER_S_LAST_TEXT = 268041;
	public const HRESULT FILTER_S_LAST_VALUES = 268042;
	public const HRESULT FILTER_E_PASSWORD = -2147215605;
	public const HRESULT FILTER_E_UNKNOWNFORMAT = -2147215604;
	#endregion
	
	#region Enums
	public enum IFILTER_INIT : int32
	{
		CANON_PARAGRAPHS = 1,
		HARD_LINE_BREAKS = 2,
		CANON_HYPHENS = 4,
		CANON_SPACES = 8,
		APPLY_INDEX_ATTRIBUTES = 16,
		APPLY_OTHER_ATTRIBUTES = 32,
		APPLY_CRAWL_ATTRIBUTES = 256,
		INDEXING_ONLY = 64,
		SEARCH_LINKS = 128,
		FILTER_OWNED_VALUE_OK = 512,
		FILTER_AGGRESSIVE_BREAK = 1024,
		DISABLE_EMBEDDED = 2048,
		EMIT_FORMATTING = 4096,
	}
	public enum IFILTER_FLAGS : int32
	{
		FLAGS_OLE_PROPERTIES = 1,
	}
	public enum CHUNKSTATE : int32
	{
		TEXT = 1,
		VALUE = 2,
		FILTER_OWNED_VALUE = 4,
	}
	public enum CHUNK_BREAKTYPE : int32
	{
		NO_BREAK = 0,
		EOW = 1,
		EOS = 2,
		EOP = 3,
		EOC = 4,
	}
	public enum WORDREP_BREAK_TYPE : int32
	{
		EOW = 0,
		EOS = 1,
		EOP = 2,
		EOC = 3,
	}
	public enum DBKINDENUM : int32
	{
		GUID_NAME = 0,
		GUID_PROPID = 1,
		NAME = 2,
		PGUID_NAME = 3,
		PGUID_PROPID = 4,
		PROPID = 5,
		GUID = 6,
	}
	#endregion
	
	#region Structs
	[CRepr]
	public struct CI_STATE
	{
		public uint32 cbStruct;
		public uint32 cWordList;
		public uint32 cPersistentIndex;
		public uint32 cQueries;
		public uint32 cDocuments;
		public uint32 cFreshTest;
		public uint32 dwMergeProgress;
		public uint32 eState;
		public uint32 cFilteredDocuments;
		public uint32 cTotalDocuments;
		public uint32 cPendingScans;
		public uint32 dwIndexSize;
		public uint32 cUniqueKeys;
		public uint32 cSecQDocuments;
		public uint32 dwPropCacheSize;
	}
	[CRepr]
	public struct FULLPROPSPEC
	{
		public Guid guidPropSet;
		public PROPSPEC psProperty;
	}
	[CRepr]
	public struct FILTERREGION
	{
		public uint32 idChunk;
		public uint32 cwcStart;
		public uint32 cwcExtent;
	}
	[CRepr]
	public struct STAT_CHUNK
	{
		public uint32 idChunk;
		public CHUNK_BREAKTYPE breakType;
		public CHUNKSTATE flags;
		public uint32 locale;
		public FULLPROPSPEC attribute;
		public uint32 idChunkSource;
		public uint32 cwcStartSource;
		public uint32 cwcLenSource;
	}
	[CRepr]
	public struct DBID
	{
		public _uGuid_e__Union uGuid;
		public uint32 eKind;
		public _uName_e__Union uName;
		
		[CRepr, Union]
		public struct _uName_e__Union
		{
			public PWSTR pwszName;
			public uint32 ulPropid;
		}
		[CRepr, Union]
		public struct _uGuid_e__Union
		{
			public Guid guid;
			public Guid* pguid;
		}
	}
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IFilter : IUnknown
	{
		public const new Guid IID = .(0x89bcb740, 0x6119, 0x101a, 0xbc, 0xb7, 0x00, 0xdd, 0x01, 0x06, 0x55, 0xaf);
		
		public new VTable* VT { get => (.)vt; }
		
		public int32 Init(uint32 grfFlags, uint32 cAttributes, FULLPROPSPEC* aAttributes, out uint32 pFlags) mut => VT.Init(ref this, grfFlags, cAttributes, aAttributes, out pFlags);
		public int32 GetChunk(out STAT_CHUNK pStat) mut => VT.GetChunk(ref this, out pStat);
		public int32 GetText(out uint32 pcwcBuffer, char16* awcBuffer) mut => VT.GetText(ref this, out pcwcBuffer, awcBuffer);
		public int32 GetValue(out PROPVARIANT* ppPropValue) mut => VT.GetValue(ref this, out ppPropValue);
		public int32 BindRegion(FILTERREGION origPos, in Guid riid, void** ppunk) mut => VT.BindRegion(ref this, origPos, riid, ppunk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] int32(ref IFilter self, uint32 grfFlags, uint32 cAttributes, FULLPROPSPEC* aAttributes, out uint32 pFlags) Init;
			public new function [CallingConvention(.Stdcall)] int32(ref IFilter self, out STAT_CHUNK pStat) GetChunk;
			public new function [CallingConvention(.Stdcall)] int32(ref IFilter self, out uint32 pcwcBuffer, char16* awcBuffer) GetText;
			public new function [CallingConvention(.Stdcall)] int32(ref IFilter self, out PROPVARIANT* ppPropValue) GetValue;
			public new function [CallingConvention(.Stdcall)] int32(ref IFilter self, FILTERREGION origPos, in Guid riid, void** ppunk) BindRegion;
		}
	}
	[CRepr]
	public struct IPhraseSink : IUnknown
	{
		public const new Guid IID = .(0xcc906ff0, 0xc058, 0x101a, 0xb5, 0x54, 0x08, 0x00, 0x2b, 0x33, 0xb0, 0xe6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PutSmallPhrase(PWSTR pwcNoun, uint32 cwcNoun, PWSTR pwcModifier, uint32 cwcModifier, uint32 ulAttachmentType) mut => VT.PutSmallPhrase(ref this, pwcNoun, cwcNoun, pwcModifier, cwcModifier, ulAttachmentType);
		public HRESULT PutPhrase(PWSTR pwcPhrase, uint32 cwcPhrase) mut => VT.PutPhrase(ref this, pwcPhrase, cwcPhrase);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhraseSink self, PWSTR pwcNoun, uint32 cwcNoun, PWSTR pwcModifier, uint32 cwcModifier, uint32 ulAttachmentType) PutSmallPhrase;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhraseSink self, PWSTR pwcPhrase, uint32 cwcPhrase) PutPhrase;
		}
	}
	#endregion
	
	#region Functions
	[Import("query.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT LoadIFilter(PWSTR pwcsPath, ref IUnknown pUnkOuter, void** ppIUnk);
	[Import("query.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT LoadIFilterEx(PWSTR pwcsPath, uint32 dwFlags, in Guid riid, void** ppIUnk);
	[Import("query.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT BindIFilterFromStorage(ref IStorage pStg, ref IUnknown pUnkOuter, void** ppIUnk);
	[Import("query.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT BindIFilterFromStream(ref IStream pStm, ref IUnknown pUnkOuter, void** ppIUnk);
	#endregion
}
