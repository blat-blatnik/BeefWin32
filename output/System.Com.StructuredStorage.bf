using System;

// namespace System.Com.StructuredStorage
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PROPSETFLAG_DEFAULT = 0;
		public const uint32 PROPSETFLAG_NONSIMPLE = 1;
		public const uint32 PROPSETFLAG_ANSI = 2;
		public const uint32 PROPSETFLAG_UNBUFFERED = 4;
		public const uint32 PROPSETFLAG_CASE_SENSITIVE = 8;
		public const uint32 PROPSET_BEHAVIOR_CASE_SENSITIVE = 1;
		public const uint32 PID_DICTIONARY = 0;
		public const uint32 PID_CODEPAGE = 1;
		public const uint32 PID_FIRST_USABLE = 2;
		public const uint32 PID_FIRST_NAME_DEFAULT = 4095;
		public const uint32 PID_LOCALE = 2147483648;
		public const uint32 PID_MODIFY_TIME = 2147483649;
		public const uint32 PID_SECURITY = 2147483650;
		public const uint32 PID_BEHAVIOR = 2147483651;
		public const uint32 PID_ILLEGAL = 4294967295;
		public const uint32 PID_MIN_READONLY = 2147483648;
		public const uint32 PID_MAX_READONLY = 3221225471;
		public const uint32 PRSPEC_INVALID = 4294967295;
		public const uint32 PROPSETHDR_OSVERSION_UNKNOWN = 4294967295;
		public const int32 PIDDI_THUMBNAIL = 2;
		public const int32 PIDSI_TITLE = 2;
		public const int32 PIDSI_SUBJECT = 3;
		public const int32 PIDSI_AUTHOR = 4;
		public const int32 PIDSI_KEYWORDS = 5;
		public const int32 PIDSI_COMMENTS = 6;
		public const int32 PIDSI_TEMPLATE = 7;
		public const int32 PIDSI_LASTAUTHOR = 8;
		public const int32 PIDSI_REVNUMBER = 9;
		public const int32 PIDSI_EDITTIME = 10;
		public const int32 PIDSI_LASTPRINTED = 11;
		public const int32 PIDSI_CREATE_DTM = 12;
		public const int32 PIDSI_LASTSAVE_DTM = 13;
		public const int32 PIDSI_PAGECOUNT = 14;
		public const int32 PIDSI_WORDCOUNT = 15;
		public const int32 PIDSI_CHARCOUNT = 16;
		public const int32 PIDSI_THUMBNAIL = 17;
		public const int32 PIDSI_APPNAME = 18;
		public const int32 PIDSI_DOC_SECURITY = 19;
		public const uint32 PIDDSI_CATEGORY = 2;
		public const uint32 PIDDSI_PRESFORMAT = 3;
		public const uint32 PIDDSI_BYTECOUNT = 4;
		public const uint32 PIDDSI_LINECOUNT = 5;
		public const uint32 PIDDSI_PARCOUNT = 6;
		public const uint32 PIDDSI_SLIDECOUNT = 7;
		public const uint32 PIDDSI_NOTECOUNT = 8;
		public const uint32 PIDDSI_HIDDENCOUNT = 9;
		public const uint32 PIDDSI_MMCLIPCOUNT = 10;
		public const uint32 PIDDSI_SCALE = 11;
		public const uint32 PIDDSI_HEADINGPAIR = 12;
		public const uint32 PIDDSI_DOCPARTS = 13;
		public const uint32 PIDDSI_MANAGER = 14;
		public const uint32 PIDDSI_COMPANY = 15;
		public const uint32 PIDDSI_LINKSDIRTY = 16;
		public const int32 PIDMSI_EDITOR = 2;
		public const int32 PIDMSI_SUPPLIER = 3;
		public const int32 PIDMSI_SOURCE = 4;
		public const int32 PIDMSI_SEQUENCE_NO = 5;
		public const int32 PIDMSI_PROJECT = 6;
		public const int32 PIDMSI_STATUS = 7;
		public const int32 PIDMSI_OWNER = 8;
		public const int32 PIDMSI_RATING = 9;
		public const int32 PIDMSI_PRODUCTION = 10;
		public const int32 PIDMSI_COPYRIGHT = 11;
		public const uint32 CWCSTORAGENAME = 32;
		public const int32 STGM_DIRECT = 0;
		public const int32 STGM_TRANSACTED = 65536;
		public const int32 STGM_SIMPLE = 134217728;
		public const int32 STGM_READ = 0;
		public const int32 STGM_WRITE = 1;
		public const int32 STGM_READWRITE = 2;
		public const int32 STGM_SHARE_DENY_NONE = 64;
		public const int32 STGM_SHARE_DENY_READ = 48;
		public const int32 STGM_SHARE_DENY_WRITE = 32;
		public const int32 STGM_SHARE_EXCLUSIVE = 16;
		public const int32 STGM_PRIORITY = 262144;
		public const int32 STGM_DELETEONRELEASE = 67108864;
		public const int32 STGM_NOSCRATCH = 1048576;
		public const int32 STGM_CREATE = 4096;
		public const int32 STGM_CONVERT = 131072;
		public const int32 STGM_FAILIFTHERE = 0;
		public const int32 STGM_NOSNAPSHOT = 2097152;
		public const int32 STGM_DIRECT_SWMR = 4194304;
		public const uint32 STGFMT_STORAGE = 0;
		public const uint32 STGFMT_NATIVE = 1;
		public const uint32 STGFMT_FILE = 3;
		public const uint32 STGFMT_ANY = 4;
		public const uint32 STGFMT_DOCFILE = 5;
		public const uint32 STGFMT_DOCUMENT = 0;
		public const uint32 STGOPTIONS_VERSION = 1;
		public const uint32 CCH_MAX_PROPSTG_NAME = 31;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum PROPSPEC_KIND : uint32
		{
			PRSPEC_LPWSTR = 0,
			PRSPEC_PROPID = 1,
		}
		[AllowDuplicates]
		public enum STGC : int32
		{
			STGC_DEFAULT = 0,
			STGC_OVERWRITE = 1,
			STGC_ONLYIFCURRENT = 2,
			STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 4,
			STGC_CONSOLIDATE = 8,
		}
		[AllowDuplicates]
		public enum STGMOVE : int32
		{
			STGMOVE_MOVE = 0,
			STGMOVE_COPY = 1,
			STGMOVE_SHALLOWCOPY = 2,
		}
		[AllowDuplicates]
		public enum STATFLAG : int32
		{
			STATFLAG_DEFAULT = 0,
			STATFLAG_NONAME = 1,
			STATFLAG_NOOPEN = 2,
		}
		[AllowDuplicates]
		public enum LOCKTYPE : int32
		{
			LOCK_WRITE = 1,
			LOCK_EXCLUSIVE = 2,
			LOCK_ONLYONCE = 4,
		}
		[AllowDuplicates]
		public enum PIDMSI_STATUS_VALUE : int32
		{
			PIDMSI_STATUS_NORMAL = 0,
			PIDMSI_STATUS_NEW = 1,
			PIDMSI_STATUS_PRELIM = 2,
			PIDMSI_STATUS_DRAFT = 3,
			PIDMSI_STATUS_INPROGRESS = 4,
			PIDMSI_STATUS_EDIT = 5,
			PIDMSI_STATUS_REVIEW = 6,
			PIDMSI_STATUS_PROOF = 7,
			PIDMSI_STATUS_FINAL = 8,
			PIDMSI_STATUS_OTHER = 32767,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct BSTRBLOB
		{
			public uint32 cbSize;
			public uint8* pData;
		}
		[CRepr]
		public struct CLIPDATA
		{
			public uint32 cbSize;
			public int32 ulClipFmt;
			public uint8* pClipData;
		}
		[CRepr]
		public struct RemSNB
		{
			public uint32 ulCntStr;
			public uint32 ulCntChar;
			public char16[] rgString;
		}
		[CRepr]
		public struct VERSIONEDSTREAM
		{
			public Guid guidVersion;
			public IStream pStream;
		}
		[CRepr]
		public struct CAC
		{
			public uint32 cElems;
			public PSTR pElems;
		}
		[CRepr]
		public struct CAUB
		{
			public uint32 cElems;
			public uint8* pElems;
		}
		[CRepr]
		public struct CAI
		{
			public uint32 cElems;
			public int16* pElems;
		}
		[CRepr]
		public struct CAUI
		{
			public uint32 cElems;
			public uint16* pElems;
		}
		[CRepr]
		public struct CAL
		{
			public uint32 cElems;
			public int32* pElems;
		}
		[CRepr]
		public struct CAUL
		{
			public uint32 cElems;
			public uint32* pElems;
		}
		[CRepr]
		public struct CAFLT
		{
			public uint32 cElems;
			public float* pElems;
		}
		[CRepr]
		public struct CADBL
		{
			public uint32 cElems;
			public double* pElems;
		}
		[CRepr]
		public struct CACY
		{
			public uint32 cElems;
			public CY* pElems;
		}
		[CRepr]
		public struct CADATE
		{
			public uint32 cElems;
			public double* pElems;
		}
		[CRepr]
		public struct CABSTR
		{
			public uint32 cElems;
			public BSTR* pElems;
		}
		[CRepr]
		public struct CABSTRBLOB
		{
			public uint32 cElems;
			public BSTRBLOB* pElems;
		}
		[CRepr]
		public struct CABOOL
		{
			public uint32 cElems;
			public int16* pElems;
		}
		[CRepr]
		public struct CASCODE
		{
			public uint32 cElems;
			public int32* pElems;
		}
		[CRepr]
		public struct CAPROPVARIANT
		{
			public uint32 cElems;
			public PROPVARIANT* pElems;
		}
		[CRepr]
		public struct CAH
		{
			public uint32 cElems;
			public LARGE_INTEGER* pElems;
		}
		[CRepr]
		public struct CAUH
		{
			public uint32 cElems;
			public ULARGE_INTEGER* pElems;
		}
		[CRepr]
		public struct CALPSTR
		{
			public uint32 cElems;
			public PSTR* pElems;
		}
		[CRepr]
		public struct CALPWSTR
		{
			public uint32 cElems;
			public PWSTR* pElems;
		}
		[CRepr]
		public struct CAFILETIME
		{
			public uint32 cElems;
			public FILETIME* pElems;
		}
		[CRepr]
		public struct CACLIPDATA
		{
			public uint32 cElems;
			public CLIPDATA* pElems;
		}
		[CRepr]
		public struct CACLSID
		{
			public uint32 cElems;
			public Guid* pElems;
		}
		[CRepr]
		public struct PROPVARIANT
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public DECIMAL decVal;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 vt;
					public uint16 wReserved1;
					public uint16 wReserved2;
					public uint16 wReserved3;
					public _Anonymous_e__Union Anonymous;
					
					[CRepr, Union]
					public struct _Anonymous_e__Union
					{
						public CHAR cVal;
						public uint8 bVal;
						public int16 iVal;
						public uint16 uiVal;
						public int32 lVal;
						public uint32 ulVal;
						public int32 intVal;
						public uint32 uintVal;
						public LARGE_INTEGER hVal;
						public ULARGE_INTEGER uhVal;
						public float fltVal;
						public double dblVal;
						public int16 boolVal;
						public int16 __OBSOLETE__VARIANT_BOOL;
						public int32 scode;
						public CY cyVal;
						public double date;
						public FILETIME filetime;
						public Guid* puuid;
						public CLIPDATA* pclipdata;
						public BSTR bstrVal;
						public BSTRBLOB bstrblobVal;
						public BLOB blob;
						public PSTR pszVal;
						public PWSTR pwszVal;
						public IUnknown punkVal;
						public IDispatch pdispVal;
						public IStream pStream;
						public IStorage pStorage;
						public VERSIONEDSTREAM* pVersionedStream;
						public SAFEARRAY* parray;
						public CAC cac;
						public CAUB caub;
						public CAI cai;
						public CAUI caui;
						public CAL cal;
						public CAUL caul;
						public CAH cah;
						public CAUH cauh;
						public CAFLT caflt;
						public CADBL cadbl;
						public CABOOL cabool;
						public CASCODE cascode;
						public CACY cacy;
						public CADATE cadate;
						public CAFILETIME cafiletime;
						public CACLSID cauuid;
						public CACLIPDATA caclipdata;
						public CABSTR cabstr;
						public CABSTRBLOB cabstrblob;
						public CALPSTR calpstr;
						public CALPWSTR calpwstr;
						public CAPROPVARIANT capropvar;
						public PSTR pcVal;
						public uint8* pbVal;
						public int16* piVal;
						public uint16* puiVal;
						public int32* plVal;
						public uint32* pulVal;
						public int32* pintVal;
						public uint32* puintVal;
						public float* pfltVal;
						public double* pdblVal;
						public int16* pboolVal;
						public DECIMAL* pdecVal;
						public int32* pscode;
						public CY* pcyVal;
						public double* pdate;
						public BSTR* pbstrVal;
						public IUnknown* ppunkVal;
						public IDispatch* ppdispVal;
						public SAFEARRAY** pparray;
						public PROPVARIANT* pvarVal;
					}
				}
			}
		}
		[CRepr]
		public struct PROPSPEC
		{
			public PROPSPEC_KIND ulKind;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 propid;
				public PWSTR lpwstr;
			}
		}
		[CRepr]
		public struct STATPROPSTG
		{
			public PWSTR lpwstrName;
			public uint32 propid;
			public uint16 vt;
		}
		[CRepr]
		public struct STATPROPSETSTG
		{
			public Guid fmtid;
			public Guid clsid;
			public uint32 grfFlags;
			public FILETIME mtime;
			public FILETIME ctime;
			public FILETIME atime;
			public uint32 dwOSVersion;
		}
		[CRepr]
		public struct STGOPTIONS
		{
			public uint16 usVersion;
			public uint16 reserved;
			public uint32 ulSectorSize;
			public PWSTR pwcsTemplateFile;
		}
		[CRepr]
		public struct SERIALIZEDPROPERTYVALUE
		{
			public uint32 dwType;
			public uint8[] rgb;
		}
		[CRepr]
		public struct PMemoryAllocator
		{
		}
		[CRepr]
		public struct OLESTREAMVTBL
		{
			public int Get;
			public int Put;
		}
		[CRepr]
		public struct OLESTREAM
		{
			public OLESTREAMVTBL* lpstbl;
		}
		[CRepr]
		public struct PROPBAG2
		{
			public uint32 dwType;
			public uint16 vt;
			public uint16 cfType;
			public uint32 dwHint;
			public PWSTR pstrName;
			public Guid clsid;
		}
		
		// --- COM Interfaces ---
		
		public struct IEnumSTATSTG {}
		public struct IStorage {}
		public struct IPersistStorage {}
		public struct ILockBytes {}
		public struct IRootStorage {}
		public struct IFillLockBytes {}
		public struct ILayoutStorage {}
		public struct IDirectWriterLock {}
		public struct IPropertyStorage {}
		public struct IPropertySetStorage {}
		public struct IEnumSTATPROPSTG {}
		public struct IEnumSTATPROPSETSTG {}
		public struct IPropertyBag {}
		public struct IPropertyBag2 {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromFile(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown punkOuter, CLSCTX dwClsCtx, uint32 grfMode, PWSTR pwszName, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromIStorage(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown punkOuter, CLSCTX dwClsCtx, IStorage pstg, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenAsyncDocfileOnIFillLockBytes(IFillLockBytes pflb, uint32 grfMode, uint32 asyncFlags, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnILockBytes(ILockBytes pilb, IFillLockBytes* ppflb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnFile(PWSTR pwcsName, IFillLockBytes* ppflb);
		[Import("dflayout.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenLayoutDocfile(PWSTR pwcsDfName, uint32 grfMode, uint32 reserved, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStreamOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, IStream* ppstm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromStream(IStream pstm, int* phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterfaceAndReleaseStream(IStream pStm, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantCopy(PROPVARIANT* pvarDest, PROPVARIANT* pvarSrc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantClear(PROPVARIANT* pvar);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FreePropVariantArray(uint32 cVariants, PROPVARIANT* rgvars);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfile(PWSTR pwcsName, uint32 grfMode, uint32 reserved, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfileOnILockBytes(ILockBytes plkbyt, uint32 grfMode, uint32 reserved, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorage(PWSTR pwcsName, IStorage pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageOnILockBytes(ILockBytes plkbyt, IStorage pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageFile(PWSTR pwcsName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageILockBytes(ILockBytes plkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSetTimes(PWSTR lpszName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, Guid* riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, Guid* riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropStg(IUnknown pUnk, Guid* fmtid, Guid* pclsid, uint32 grfFlags, uint32 dwReserved, IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenPropStg(IUnknown pUnk, Guid* fmtid, uint32 grfFlags, uint32 dwReserved, IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropSetStg(IStorage pStorage, uint32 dwReserved, IPropertySetStorage* ppPropSetStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FmtIdToPropStgName(Guid* pfmtid, PWSTR oszName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropStgNameToFmtId(PWSTR oszName, Guid* pfmtid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStg(IStorage pStg, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStg(IStorage pStg, Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStm(IStream pStm, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStm(IStream pStm, Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromILockBytes(ILockBytes plkbyt, int* phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateILockBytesOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, ILockBytes* pplkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetConvertStg(IStorage pStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERIALIZEDPROPERTYVALUE* StgConvertVariantToProperty(PROPVARIANT* pvar, uint16 CodePage, SERIALIZEDPROPERTYVALUE* pprop, uint32* pcb, uint32 pid, BOOLEAN fReserved, uint32* pcIndirect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN StgConvertPropertyToVariant(SERIALIZEDPROPERTYVALUE* pprop, uint16 CodePage, PROPVARIANT* pvar, PMemoryAllocator* pma);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StgPropertyLengthAsVariant(SERIALIZEDPROPERTYVALUE* pProp, uint32 cbProp, uint16 CodePage, uint8 bReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteFmtUserTypeStg(IStorage pstg, uint16 cf, PWSTR lpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadFmtUserTypeStg(IStorage pstg, uint16* pcf, PWSTR* lplpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorage(OLESTREAM* lpolestream, IStorage pstg, DVTARGETDEVICE* ptd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAM(IStorage pstg, OLESTREAM* lpolestream);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetConvertStg(IStorage pStg, BOOL fConvert);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAMEx(IStorage pstg, uint16 cfFormat, int32 lWidth, int32 lHeight, uint32 dwSize, STGMEDIUM* pmedium, OLESTREAM* polestm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorageEx(OLESTREAM* polestm, IStorage pstg, uint16* pcfFormat, int32* plwWidth, int32* plHeight, uint32* pdwSize, STGMEDIUM* pmedium);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSerializePropVariant(PROPVARIANT* ppropvar, SERIALIZEDPROPERTYVALUE** ppProp, uint32* pcb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgDeserializePropVariant(SERIALIZEDPROPERTYVALUE* pprop, uint32 cbMax, PROPVARIANT* ppropvar);
		
	}
}
