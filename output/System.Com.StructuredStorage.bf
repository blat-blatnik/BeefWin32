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
			LPWSTR = 0,
			PROPID = 1,
		}
		[AllowDuplicates]
		public enum STGC : int32
		{
			DEFAULT = 0,
			OVERWRITE = 1,
			ONLYIFCURRENT = 2,
			DANGEROUSLYCOMMITMERELYTODISKCACHE = 4,
			CONSOLIDATE = 8,
		}
		[AllowDuplicates]
		public enum STGMOVE : int32
		{
			MOVE = 0,
			COPY = 1,
			SHALLOWCOPY = 2,
		}
		[AllowDuplicates]
		public enum STATFLAG : int32
		{
			DEFAULT = 0,
			NONAME = 1,
			NOOPEN = 2,
		}
		[AllowDuplicates]
		public enum LOCKTYPE : int32
		{
			WRITE = 1,
			EXCLUSIVE = 2,
			ONLYONCE = 4,
		}
		[AllowDuplicates]
		public enum PIDMSI_STATUS_VALUE : int32
		{
			NORMAL = 0,
			NEW = 1,
			PRELIM = 2,
			DRAFT = 3,
			INPROGRESS = 4,
			EDIT = 5,
			REVIEW = 6,
			PROOF = 7,
			FINAL = 8,
			OTHER = 32767,
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
			public IStream* pStream;
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
						public IUnknown* punkVal;
						public IDispatch* pdispVal;
						public IStream* pStream;
						public IStorage* pStorage;
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
						public IUnknown** ppunkVal;
						public IDispatch** ppdispVal;
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
		
		[CRepr]
		public struct IEnumSTATSTG : IUnknown
		{
			public const new Guid IID = .(0x0000000d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATSTG* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSTATSTG** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSTATSTG *self, uint32 celt, STATSTG* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSTATSTG *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSTATSTG *self) Reset;
				public new function HRESULT(IEnumSTATSTG *self, IEnumSTATSTG** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IStorage : IUnknown
		{
			public const new Guid IID = .(0x0000000b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStream(PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, IStream** ppstm) mut
			{
				return VT.CreateStream(&this, pwcsName, grfMode, reserved1, reserved2, ppstm);
			}
			public HRESULT OpenStream(PWSTR pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, IStream** ppstm) mut
			{
				return VT.OpenStream(&this, pwcsName, reserved1, grfMode, reserved2, ppstm);
			}
			public HRESULT CreateStorage(PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, IStorage** ppstg) mut
			{
				return VT.CreateStorage(&this, pwcsName, grfMode, reserved1, reserved2, ppstg);
			}
			public HRESULT OpenStorage(PWSTR pwcsName, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage** ppstg) mut
			{
				return VT.OpenStorage(&this, pwcsName, pstgPriority, grfMode, snbExclude, reserved, ppstg);
			}
			public HRESULT CopyTo(uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, IStorage* pstgDest) mut
			{
				return VT.CopyTo(&this, ciidExclude, rgiidExclude, snbExclude, pstgDest);
			}
			public HRESULT MoveElementTo(PWSTR pwcsName, IStorage* pstgDest, PWSTR pwcsNewName, uint32 grfFlags) mut
			{
				return VT.MoveElementTo(&this, pwcsName, pstgDest, pwcsNewName, grfFlags);
			}
			public HRESULT Commit(uint32 grfCommitFlags) mut
			{
				return VT.Commit(&this, grfCommitFlags);
			}
			public HRESULT Revert() mut
			{
				return VT.Revert(&this);
			}
			public HRESULT EnumElements(uint32 reserved1, void* reserved2, uint32 reserved3, IEnumSTATSTG** ppenum) mut
			{
				return VT.EnumElements(&this, reserved1, reserved2, reserved3, ppenum);
			}
			public HRESULT DestroyElement(PWSTR pwcsName) mut
			{
				return VT.DestroyElement(&this, pwcsName);
			}
			public HRESULT RenameElement(PWSTR pwcsOldName, PWSTR pwcsNewName) mut
			{
				return VT.RenameElement(&this, pwcsOldName, pwcsNewName);
			}
			public HRESULT SetElementTimes(PWSTR pwcsName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime) mut
			{
				return VT.SetElementTimes(&this, pwcsName, pctime, patime, pmtime);
			}
			public HRESULT SetClass(Guid* clsid) mut
			{
				return VT.SetClass(&this, clsid);
			}
			public HRESULT SetStateBits(uint32 grfStateBits, uint32 grfMask) mut
			{
				return VT.SetStateBits(&this, grfStateBits, grfMask);
			}
			public HRESULT Stat(STATSTG* pstatstg, uint32 grfStatFlag) mut
			{
				return VT.Stat(&this, pstatstg, grfStatFlag);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, IStream** ppstm) CreateStream;
				public new function HRESULT(IStorage *self, PWSTR pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, IStream** ppstm) OpenStream;
				public new function HRESULT(IStorage *self, PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, IStorage** ppstg) CreateStorage;
				public new function HRESULT(IStorage *self, PWSTR pwcsName, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage** ppstg) OpenStorage;
				public new function HRESULT(IStorage *self, uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, IStorage* pstgDest) CopyTo;
				public new function HRESULT(IStorage *self, PWSTR pwcsName, IStorage* pstgDest, PWSTR pwcsNewName, uint32 grfFlags) MoveElementTo;
				public new function HRESULT(IStorage *self, uint32 grfCommitFlags) Commit;
				public new function HRESULT(IStorage *self) Revert;
				public new function HRESULT(IStorage *self, uint32 reserved1, void* reserved2, uint32 reserved3, IEnumSTATSTG** ppenum) EnumElements;
				public new function HRESULT(IStorage *self, PWSTR pwcsName) DestroyElement;
				public new function HRESULT(IStorage *self, PWSTR pwcsOldName, PWSTR pwcsNewName) RenameElement;
				public new function HRESULT(IStorage *self, PWSTR pwcsName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime) SetElementTimes;
				public new function HRESULT(IStorage *self, Guid* clsid) SetClass;
				public new function HRESULT(IStorage *self, uint32 grfStateBits, uint32 grfMask) SetStateBits;
				public new function HRESULT(IStorage *self, STATSTG* pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IPersistStorage : IPersist
		{
			public const new Guid IID = .(0x0000010a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			public HRESULT InitNew(IStorage* pStg) mut
			{
				return VT.InitNew(&this, pStg);
			}
			public HRESULT Load(IStorage* pStg) mut
			{
				return VT.Load(&this, pStg);
			}
			public HRESULT Save(IStorage* pStgSave, BOOL fSameAsLoad) mut
			{
				return VT.Save(&this, pStgSave, fSameAsLoad);
			}
			public HRESULT SaveCompleted(IStorage* pStgNew) mut
			{
				return VT.SaveCompleted(&this, pStgNew);
			}
			public HRESULT HandsOffStorage() mut
			{
				return VT.HandsOffStorage(&this);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistStorage *self) IsDirty;
				public new function HRESULT(IPersistStorage *self, IStorage* pStg) InitNew;
				public new function HRESULT(IPersistStorage *self, IStorage* pStg) Load;
				public new function HRESULT(IPersistStorage *self, IStorage* pStgSave, BOOL fSameAsLoad) Save;
				public new function HRESULT(IPersistStorage *self, IStorage* pStgNew) SaveCompleted;
				public new function HRESULT(IPersistStorage *self) HandsOffStorage;
			}
		}
		[CRepr]
		public struct ILockBytes : IUnknown
		{
			public const new Guid IID = .(0x0000000a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) mut
			{
				return VT.ReadAt(&this, ulOffset, pv, cb, pcbRead);
			}
			public HRESULT WriteAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) mut
			{
				return VT.WriteAt(&this, ulOffset, pv, cb, pcbWritten);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			public HRESULT SetSize(ULARGE_INTEGER cb) mut
			{
				return VT.SetSize(&this, cb);
			}
			public HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut
			{
				return VT.LockRegion(&this, libOffset, cb, dwLockType);
			}
			public HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut
			{
				return VT.UnlockRegion(&this, libOffset, cb, dwLockType);
			}
			public HRESULT Stat(STATSTG* pstatstg, uint32 grfStatFlag) mut
			{
				return VT.Stat(&this, pstatstg, grfStatFlag);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILockBytes *self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) ReadAt;
				public new function HRESULT(ILockBytes *self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) WriteAt;
				public new function HRESULT(ILockBytes *self) Flush;
				public new function HRESULT(ILockBytes *self, ULARGE_INTEGER cb) SetSize;
				public new function HRESULT(ILockBytes *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public new function HRESULT(ILockBytes *self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public new function HRESULT(ILockBytes *self, STATSTG* pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IRootStorage : IUnknown
		{
			public const new Guid IID = .(0x00000012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SwitchToFile(PWSTR pszFile) mut
			{
				return VT.SwitchToFile(&this, pszFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRootStorage *self, PWSTR pszFile) SwitchToFile;
			}
		}
		[CRepr]
		public struct IFillLockBytes : IUnknown
		{
			public const new Guid IID = .(0x99caf010, 0x415e, 0x11cf, 0x88, 0x14, 0x00, 0xaa, 0x00, 0xb5, 0x69, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FillAppend(void* pv, uint32 cb, uint32* pcbWritten) mut
			{
				return VT.FillAppend(&this, pv, cb, pcbWritten);
			}
			public HRESULT FillAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) mut
			{
				return VT.FillAt(&this, ulOffset, pv, cb, pcbWritten);
			}
			public HRESULT SetFillSize(ULARGE_INTEGER ulSize) mut
			{
				return VT.SetFillSize(&this, ulSize);
			}
			public HRESULT Terminate(BOOL bCanceled) mut
			{
				return VT.Terminate(&this, bCanceled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFillLockBytes *self, void* pv, uint32 cb, uint32* pcbWritten) FillAppend;
				public new function HRESULT(IFillLockBytes *self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) FillAt;
				public new function HRESULT(IFillLockBytes *self, ULARGE_INTEGER ulSize) SetFillSize;
				public new function HRESULT(IFillLockBytes *self, BOOL bCanceled) Terminate;
			}
		}
		[CRepr]
		public struct ILayoutStorage : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d90, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LayoutScript(StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) mut
			{
				return VT.LayoutScript(&this, pStorageLayout, nEntries, glfInterleavedFlag);
			}
			public HRESULT BeginMonitor() mut
			{
				return VT.BeginMonitor(&this);
			}
			public HRESULT EndMonitor() mut
			{
				return VT.EndMonitor(&this);
			}
			public HRESULT ReLayoutDocfile(PWSTR pwcsNewDfName) mut
			{
				return VT.ReLayoutDocfile(&this, pwcsNewDfName);
			}
			public HRESULT ReLayoutDocfileOnILockBytes(ILockBytes* pILockBytes) mut
			{
				return VT.ReLayoutDocfileOnILockBytes(&this, pILockBytes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILayoutStorage *self, StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) LayoutScript;
				public new function HRESULT(ILayoutStorage *self) BeginMonitor;
				public new function HRESULT(ILayoutStorage *self) EndMonitor;
				public new function HRESULT(ILayoutStorage *self, PWSTR pwcsNewDfName) ReLayoutDocfile;
				public new function HRESULT(ILayoutStorage *self, ILockBytes* pILockBytes) ReLayoutDocfileOnILockBytes;
			}
		}
		[CRepr]
		public struct IDirectWriterLock : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d92, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WaitForWriteAccess(uint32 dwTimeout) mut
			{
				return VT.WaitForWriteAccess(&this, dwTimeout);
			}
			public HRESULT ReleaseWriteAccess() mut
			{
				return VT.ReleaseWriteAccess(&this);
			}
			public HRESULT HaveWriteAccess() mut
			{
				return VT.HaveWriteAccess(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDirectWriterLock *self, uint32 dwTimeout) WaitForWriteAccess;
				public new function HRESULT(IDirectWriterLock *self) ReleaseWriteAccess;
				public new function HRESULT(IDirectWriterLock *self) HaveWriteAccess;
			}
		}
		[CRepr]
		public struct IPropertyStorage : IUnknown
		{
			public const new Guid IID = .(0x00000138, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) mut
			{
				return VT.ReadMultiple(&this, cpspec, rgpspec, rgpropvar);
			}
			public HRESULT WriteMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) mut
			{
				return VT.WriteMultiple(&this, cpspec, rgpspec, rgpropvar, propidNameFirst);
			}
			public HRESULT DeleteMultiple(uint32 cpspec, PROPSPEC* rgpspec) mut
			{
				return VT.DeleteMultiple(&this, cpspec, rgpspec);
			}
			public HRESULT ReadPropertyNames(uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) mut
			{
				return VT.ReadPropertyNames(&this, cpropid, rgpropid, rglpwstrName);
			}
			public HRESULT WritePropertyNames(uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) mut
			{
				return VT.WritePropertyNames(&this, cpropid, rgpropid, rglpwstrName);
			}
			public HRESULT DeletePropertyNames(uint32 cpropid, uint32* rgpropid) mut
			{
				return VT.DeletePropertyNames(&this, cpropid, rgpropid);
			}
			public HRESULT Commit(uint32 grfCommitFlags) mut
			{
				return VT.Commit(&this, grfCommitFlags);
			}
			public HRESULT Revert() mut
			{
				return VT.Revert(&this);
			}
			public HRESULT Enum(IEnumSTATPROPSTG** ppenum) mut
			{
				return VT.Enum(&this, ppenum);
			}
			public HRESULT SetTimes(FILETIME* pctime, FILETIME* patime, FILETIME* pmtime) mut
			{
				return VT.SetTimes(&this, pctime, patime, pmtime);
			}
			public HRESULT SetClass(Guid* clsid) mut
			{
				return VT.SetClass(&this, clsid);
			}
			public HRESULT Stat(STATPROPSETSTG* pstatpsstg) mut
			{
				return VT.Stat(&this, pstatpsstg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyStorage *self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) ReadMultiple;
				public new function HRESULT(IPropertyStorage *self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) WriteMultiple;
				public new function HRESULT(IPropertyStorage *self, uint32 cpspec, PROPSPEC* rgpspec) DeleteMultiple;
				public new function HRESULT(IPropertyStorage *self, uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) ReadPropertyNames;
				public new function HRESULT(IPropertyStorage *self, uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) WritePropertyNames;
				public new function HRESULT(IPropertyStorage *self, uint32 cpropid, uint32* rgpropid) DeletePropertyNames;
				public new function HRESULT(IPropertyStorage *self, uint32 grfCommitFlags) Commit;
				public new function HRESULT(IPropertyStorage *self) Revert;
				public new function HRESULT(IPropertyStorage *self, IEnumSTATPROPSTG** ppenum) Enum;
				public new function HRESULT(IPropertyStorage *self, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime) SetTimes;
				public new function HRESULT(IPropertyStorage *self, Guid* clsid) SetClass;
				public new function HRESULT(IPropertyStorage *self, STATPROPSETSTG* pstatpsstg) Stat;
			}
		}
		[CRepr]
		public struct IPropertySetStorage : IUnknown
		{
			public const new Guid IID = .(0x0000013a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(Guid* rfmtid, Guid* pclsid, uint32 grfFlags, uint32 grfMode, IPropertyStorage** ppprstg) mut
			{
				return VT.Create(&this, rfmtid, pclsid, grfFlags, grfMode, ppprstg);
			}
			public HRESULT Open(Guid* rfmtid, uint32 grfMode, IPropertyStorage** ppprstg) mut
			{
				return VT.Open(&this, rfmtid, grfMode, ppprstg);
			}
			public HRESULT Delete(Guid* rfmtid) mut
			{
				return VT.Delete(&this, rfmtid);
			}
			public HRESULT Enum(IEnumSTATPROPSETSTG** ppenum) mut
			{
				return VT.Enum(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertySetStorage *self, Guid* rfmtid, Guid* pclsid, uint32 grfFlags, uint32 grfMode, IPropertyStorage** ppprstg) Create;
				public new function HRESULT(IPropertySetStorage *self, Guid* rfmtid, uint32 grfMode, IPropertyStorage** ppprstg) Open;
				public new function HRESULT(IPropertySetStorage *self, Guid* rfmtid) Delete;
				public new function HRESULT(IPropertySetStorage *self, IEnumSTATPROPSETSTG** ppenum) Enum;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSTG : IUnknown
		{
			public const new Guid IID = .(0x00000139, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSTATPROPSTG** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSTATPROPSTG *self, uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSTATPROPSTG *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSTATPROPSTG *self) Reset;
				public new function HRESULT(IEnumSTATPROPSTG *self, IEnumSTATPROPSTG** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSETSTG : IUnknown
		{
			public const new Guid IID = .(0x0000013b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSTATPROPSETSTG** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSTATPROPSETSTG *self, uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSTATPROPSETSTG *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSTATPROPSETSTG *self) Reset;
				public new function HRESULT(IEnumSTATPROPSETSTG *self, IEnumSTATPROPSETSTG** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IPropertyBag : IUnknown
		{
			public const new Guid IID = .(0x55272a00, 0x42cb, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(PWSTR pszPropName, VARIANT* pVar, IErrorLog* pErrorLog) mut
			{
				return VT.Read(&this, pszPropName, pVar, pErrorLog);
			}
			public HRESULT Write(PWSTR pszPropName, VARIANT* pVar) mut
			{
				return VT.Write(&this, pszPropName, pVar);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyBag *self, PWSTR pszPropName, VARIANT* pVar, IErrorLog* pErrorLog) Read;
				public new function HRESULT(IPropertyBag *self, PWSTR pszPropName, VARIANT* pVar) Write;
			}
		}
		[CRepr]
		public struct IPropertyBag2 : IUnknown
		{
			public const new Guid IID = .(0x22f55882, 0x280b, 0x11d0, 0xa8, 0xa9, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(uint32 cProperties, PROPBAG2* pPropBag, IErrorLog* pErrLog, VARIANT* pvarValue, HRESULT* phrError) mut
			{
				return VT.Read(&this, cProperties, pPropBag, pErrLog, pvarValue, phrError);
			}
			public HRESULT Write(uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) mut
			{
				return VT.Write(&this, cProperties, pPropBag, pvarValue);
			}
			public HRESULT CountProperties(uint32* pcProperties) mut
			{
				return VT.CountProperties(&this, pcProperties);
			}
			public HRESULT GetPropertyInfo(uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, uint32* pcProperties) mut
			{
				return VT.GetPropertyInfo(&this, iProperty, cProperties, pPropBag, pcProperties);
			}
			public HRESULT LoadObject(PWSTR pstrName, uint32 dwHint, IUnknown* pUnkObject, IErrorLog* pErrLog) mut
			{
				return VT.LoadObject(&this, pstrName, dwHint, pUnkObject, pErrLog);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyBag2 *self, uint32 cProperties, PROPBAG2* pPropBag, IErrorLog* pErrLog, VARIANT* pvarValue, HRESULT* phrError) Read;
				public new function HRESULT(IPropertyBag2 *self, uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) Write;
				public new function HRESULT(IPropertyBag2 *self, uint32* pcProperties) CountProperties;
				public new function HRESULT(IPropertyBag2 *self, uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, uint32* pcProperties) GetPropertyInfo;
				public new function HRESULT(IPropertyBag2 *self, PWSTR pstrName, uint32 dwHint, IUnknown* pUnkObject, IErrorLog* pErrLog) LoadObject;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromFile(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, uint32 grfMode, PWSTR pwszName, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromIStorage(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, IStorage* pstg, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenAsyncDocfileOnIFillLockBytes(IFillLockBytes* pflb, uint32 grfMode, uint32 asyncFlags, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnILockBytes(ILockBytes* pilb, IFillLockBytes** ppflb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnFile(PWSTR pwcsName, IFillLockBytes** ppflb);
		[Import("dflayout.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenLayoutDocfile(PWSTR pwcsDfName, uint32 grfMode, uint32 reserved, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStreamOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, IStream** ppstm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromStream(IStream* pstm, int* phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterfaceAndReleaseStream(IStream* pStm, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantCopy(PROPVARIANT* pvarDest, PROPVARIANT* pvarSrc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantClear(PROPVARIANT* pvar);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FreePropVariantArray(uint32 cVariants, PROPVARIANT* rgvars);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfile(PWSTR pwcsName, uint32 grfMode, uint32 reserved, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfileOnILockBytes(ILockBytes* plkbyt, uint32 grfMode, uint32 reserved, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorage(PWSTR pwcsName, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageOnILockBytes(ILockBytes* plkbyt, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, IStorage** ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageFile(PWSTR pwcsName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageILockBytes(ILockBytes* plkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSetTimes(PWSTR lpszName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, Guid* riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, Guid* riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropStg(IUnknown* pUnk, Guid* fmtid, Guid* pclsid, uint32 grfFlags, uint32 dwReserved, IPropertyStorage** ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenPropStg(IUnknown* pUnk, Guid* fmtid, uint32 grfFlags, uint32 dwReserved, IPropertyStorage** ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropSetStg(IStorage* pStorage, uint32 dwReserved, IPropertySetStorage** ppPropSetStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FmtIdToPropStgName(Guid* pfmtid, PWSTR oszName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropStgNameToFmtId(PWSTR oszName, Guid* pfmtid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStg(IStorage* pStg, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStg(IStorage* pStg, Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStm(IStream* pStm, Guid* pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStm(IStream* pStm, Guid* rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromILockBytes(ILockBytes* plkbyt, int* phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateILockBytesOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, ILockBytes** pplkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetConvertStg(IStorage* pStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERIALIZEDPROPERTYVALUE* StgConvertVariantToProperty(PROPVARIANT* pvar, uint16 CodePage, SERIALIZEDPROPERTYVALUE* pprop, uint32* pcb, uint32 pid, BOOLEAN fReserved, uint32* pcIndirect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN StgConvertPropertyToVariant(SERIALIZEDPROPERTYVALUE* pprop, uint16 CodePage, PROPVARIANT* pvar, PMemoryAllocator* pma);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StgPropertyLengthAsVariant(SERIALIZEDPROPERTYVALUE* pProp, uint32 cbProp, uint16 CodePage, uint8 bReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteFmtUserTypeStg(IStorage* pstg, uint16 cf, PWSTR lpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadFmtUserTypeStg(IStorage* pstg, uint16* pcf, PWSTR* lplpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorage(OLESTREAM* lpolestream, IStorage* pstg, DVTARGETDEVICE* ptd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAM(IStorage* pstg, OLESTREAM* lpolestream);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetConvertStg(IStorage* pStg, BOOL fConvert);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAMEx(IStorage* pstg, uint16 cfFormat, int32 lWidth, int32 lHeight, uint32 dwSize, STGMEDIUM* pmedium, OLESTREAM* polestm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorageEx(OLESTREAM* polestm, IStorage* pstg, uint16* pcfFormat, int32* plwWidth, int32* plHeight, uint32* pdwSize, STGMEDIUM* pmedium);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSerializePropVariant(PROPVARIANT* ppropvar, SERIALIZEDPROPERTYVALUE** ppProp, uint32* pcb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgDeserializePropVariant(SERIALIZEDPROPERTYVALUE* pprop, uint32 cbMax, PROPVARIANT* ppropvar);
		
	}
}
