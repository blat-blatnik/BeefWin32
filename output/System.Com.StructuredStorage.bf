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
		
		public enum PROPSPEC_KIND : uint32
		{
			LPWSTR = 0,
			PROPID = 1,
		}
		public enum STGC : int32
		{
			DEFAULT = 0,
			OVERWRITE = 1,
			ONLYIFCURRENT = 2,
			DANGEROUSLYCOMMITMERELYTODISKCACHE = 4,
			CONSOLIDATE = 8,
		}
		public enum STGMOVE : int32
		{
			MOVE = 0,
			COPY = 1,
			SHALLOWCOPY = 2,
		}
		public enum STATFLAG : int32
		{
			DEFAULT = 0,
			NONAME = 1,
			NOOPEN = 2,
		}
		public enum LOCKTYPE : int32
		{
			WRITE = 1,
			EXCLUSIVE = 2,
			ONLYONCE = 4,
		}
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
			public char16[0] rgString;
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
			public uint8[0] rgb;
		}
		[CRepr]
		public struct PMemoryAllocator {}
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
			
			public HRESULT Next(uint32 celt, STATSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSTATSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATSTG self, uint32 celt, STATSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATSTG self, out IEnumSTATSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IStorage : IUnknown
		{
			public const new Guid IID = .(0x0000000b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateStream(PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStream* ppstm) mut => VT.CreateStream(ref this, pwcsName, grfMode, reserved1, reserved2, out ppstm);
			public HRESULT OpenStream(PWSTR pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, out IStream* ppstm) mut => VT.OpenStream(ref this, pwcsName, reserved1, grfMode, reserved2, out ppstm);
			public HRESULT CreateStorage(PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStorage* ppstg) mut => VT.CreateStorage(ref this, pwcsName, grfMode, reserved1, reserved2, out ppstg);
			public HRESULT OpenStorage(PWSTR pwcsName, ref IStorage pstgPriority, uint32 grfMode, ref uint16* snbExclude, uint32 reserved, out IStorage* ppstg) mut => VT.OpenStorage(ref this, pwcsName, ref pstgPriority, grfMode, ref snbExclude, reserved, out ppstg);
			public HRESULT CopyTo(uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, ref IStorage pstgDest) mut => VT.CopyTo(ref this, ciidExclude, rgiidExclude, snbExclude, ref pstgDest);
			public HRESULT MoveElementTo(PWSTR pwcsName, ref IStorage pstgDest, PWSTR pwcsNewName, uint32 grfFlags) mut => VT.MoveElementTo(ref this, pwcsName, ref pstgDest, pwcsNewName, grfFlags);
			public HRESULT Commit(uint32 grfCommitFlags) mut => VT.Commit(ref this, grfCommitFlags);
			public HRESULT Revert() mut => VT.Revert(ref this);
			public HRESULT EnumElements(uint32 reserved1, void* reserved2, uint32 reserved3, out IEnumSTATSTG* ppenum) mut => VT.EnumElements(ref this, reserved1, reserved2, reserved3, out ppenum);
			public HRESULT DestroyElement(PWSTR pwcsName) mut => VT.DestroyElement(ref this, pwcsName);
			public HRESULT RenameElement(PWSTR pwcsOldName, PWSTR pwcsNewName) mut => VT.RenameElement(ref this, pwcsOldName, pwcsNewName);
			public HRESULT SetElementTimes(PWSTR pwcsName, in FILETIME pctime, in FILETIME patime, in FILETIME pmtime) mut => VT.SetElementTimes(ref this, pwcsName, pctime, patime, pmtime);
			public HRESULT SetClass(in Guid clsid) mut => VT.SetClass(ref this, clsid);
			public HRESULT SetStateBits(uint32 grfStateBits, uint32 grfMask) mut => VT.SetStateBits(ref this, grfStateBits, grfMask);
			public HRESULT Stat(out STATSTG pstatstg, uint32 grfStatFlag) mut => VT.Stat(ref this, out pstatstg, grfStatFlag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStream* ppstm) CreateStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, void* reserved1, uint32 grfMode, uint32 reserved2, out IStream* ppstm) OpenStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, uint32 grfMode, uint32 reserved1, uint32 reserved2, out IStorage* ppstg) CreateStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, ref IStorage pstgPriority, uint32 grfMode, ref uint16* snbExclude, uint32 reserved, out IStorage* ppstg) OpenStorage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, uint32 ciidExclude, Guid* rgiidExclude, uint16** snbExclude, ref IStorage pstgDest) CopyTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, ref IStorage pstgDest, PWSTR pwcsNewName, uint32 grfFlags) MoveElementTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, uint32 grfCommitFlags) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self) Revert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, uint32 reserved1, void* reserved2, uint32 reserved3, out IEnumSTATSTG* ppenum) EnumElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName) DestroyElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsOldName, PWSTR pwcsNewName) RenameElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, PWSTR pwcsName, in FILETIME pctime, in FILETIME patime, in FILETIME pmtime) SetElementTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, in Guid clsid) SetClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, uint32 grfStateBits, uint32 grfMask) SetStateBits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorage self, out STATSTG pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IPersistStorage : IPersist
		{
			public const new Guid IID = .(0x0000010a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty() mut => VT.IsDirty(ref this);
			public HRESULT InitNew(ref IStorage pStg) mut => VT.InitNew(ref this, ref pStg);
			public HRESULT Load(ref IStorage pStg) mut => VT.Load(ref this, ref pStg);
			public HRESULT Save(ref IStorage pStgSave, BOOL fSameAsLoad) mut => VT.Save(ref this, ref pStgSave, fSameAsLoad);
			public HRESULT SaveCompleted(ref IStorage pStgNew) mut => VT.SaveCompleted(ref this, ref pStgNew);
			public HRESULT HandsOffStorage() mut => VT.HandsOffStorage(ref this);

			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self, ref IStorage pStg) InitNew;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self, ref IStorage pStg) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self, ref IStorage pStgSave, BOOL fSameAsLoad) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self, ref IStorage pStgNew) SaveCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistStorage self) HandsOffStorage;
			}
		}
		[CRepr]
		public struct ILockBytes : IUnknown
		{
			public const new Guid IID = .(0x0000000a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) mut => VT.ReadAt(ref this, ulOffset, pv, cb, pcbRead);
			public HRESULT WriteAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) mut => VT.WriteAt(ref this, ulOffset, pv, cb, pcbWritten);
			public HRESULT Flush() mut => VT.Flush(ref this);
			public HRESULT SetSize(ULARGE_INTEGER cb) mut => VT.SetSize(ref this, cb);
			public HRESULT LockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.LockRegion(ref this, libOffset, cb, dwLockType);
			public HRESULT UnlockRegion(ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) mut => VT.UnlockRegion(ref this, libOffset, cb, dwLockType);
			public HRESULT Stat(out STATSTG pstatstg, uint32 grfStatFlag) mut => VT.Stat(ref this, out pstatstg, grfStatFlag);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbRead) ReadAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, uint32* pcbWritten) WriteAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self) Flush;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, ULARGE_INTEGER cb) SetSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) LockRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, ULARGE_INTEGER libOffset, ULARGE_INTEGER cb, uint32 dwLockType) UnlockRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILockBytes self, out STATSTG pstatstg, uint32 grfStatFlag) Stat;
			}
		}
		[CRepr]
		public struct IRootStorage : IUnknown
		{
			public const new Guid IID = .(0x00000012, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SwitchToFile(PWSTR pszFile) mut => VT.SwitchToFile(ref this, pszFile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRootStorage self, PWSTR pszFile) SwitchToFile;
			}
		}
		[CRepr]
		public struct IFillLockBytes : IUnknown
		{
			public const new Guid IID = .(0x99caf010, 0x415e, 0x11cf, 0x88, 0x14, 0x00, 0xaa, 0x00, 0xb5, 0x69, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FillAppend(void* pv, uint32 cb, out uint32 pcbWritten) mut => VT.FillAppend(ref this, pv, cb, out pcbWritten);
			public HRESULT FillAt(ULARGE_INTEGER ulOffset, void* pv, uint32 cb, out uint32 pcbWritten) mut => VT.FillAt(ref this, ulOffset, pv, cb, out pcbWritten);
			public HRESULT SetFillSize(ULARGE_INTEGER ulSize) mut => VT.SetFillSize(ref this, ulSize);
			public HRESULT Terminate(BOOL bCanceled) mut => VT.Terminate(ref this, bCanceled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFillLockBytes self, void* pv, uint32 cb, out uint32 pcbWritten) FillAppend;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFillLockBytes self, ULARGE_INTEGER ulOffset, void* pv, uint32 cb, out uint32 pcbWritten) FillAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFillLockBytes self, ULARGE_INTEGER ulSize) SetFillSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFillLockBytes self, BOOL bCanceled) Terminate;
			}
		}
		[CRepr]
		public struct ILayoutStorage : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d90, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LayoutScript(StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) mut => VT.LayoutScript(ref this, pStorageLayout, nEntries, glfInterleavedFlag);
			public HRESULT BeginMonitor() mut => VT.BeginMonitor(ref this);
			public HRESULT EndMonitor() mut => VT.EndMonitor(ref this);
			public HRESULT ReLayoutDocfile(PWSTR pwcsNewDfName) mut => VT.ReLayoutDocfile(ref this, pwcsNewDfName);
			public HRESULT ReLayoutDocfileOnILockBytes(ref ILockBytes pILockBytes) mut => VT.ReLayoutDocfileOnILockBytes(ref this, ref pILockBytes);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILayoutStorage self, StorageLayout* pStorageLayout, uint32 nEntries, uint32 glfInterleavedFlag) LayoutScript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILayoutStorage self) BeginMonitor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILayoutStorage self) EndMonitor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILayoutStorage self, PWSTR pwcsNewDfName) ReLayoutDocfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILayoutStorage self, ref ILockBytes pILockBytes) ReLayoutDocfileOnILockBytes;
			}
		}
		[CRepr]
		public struct IDirectWriterLock : IUnknown
		{
			public const new Guid IID = .(0x0e6d4d92, 0x6738, 0x11cf, 0x96, 0x08, 0x00, 0xaa, 0x00, 0x68, 0x0d, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WaitForWriteAccess(uint32 dwTimeout) mut => VT.WaitForWriteAccess(ref this, dwTimeout);
			public HRESULT ReleaseWriteAccess() mut => VT.ReleaseWriteAccess(ref this);
			public HRESULT HaveWriteAccess() mut => VT.HaveWriteAccess(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectWriterLock self, uint32 dwTimeout) WaitForWriteAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectWriterLock self) ReleaseWriteAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirectWriterLock self) HaveWriteAccess;
			}
		}
		[CRepr]
		public struct IPropertyStorage : IUnknown
		{
			public const new Guid IID = .(0x00000138, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) mut => VT.ReadMultiple(ref this, cpspec, rgpspec, rgpropvar);
			public HRESULT WriteMultiple(uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) mut => VT.WriteMultiple(ref this, cpspec, rgpspec, rgpropvar, propidNameFirst);
			public HRESULT DeleteMultiple(uint32 cpspec, PROPSPEC* rgpspec) mut => VT.DeleteMultiple(ref this, cpspec, rgpspec);
			public HRESULT ReadPropertyNames(uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) mut => VT.ReadPropertyNames(ref this, cpropid, rgpropid, rglpwstrName);
			public HRESULT WritePropertyNames(uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) mut => VT.WritePropertyNames(ref this, cpropid, rgpropid, rglpwstrName);
			public HRESULT DeletePropertyNames(uint32 cpropid, uint32* rgpropid) mut => VT.DeletePropertyNames(ref this, cpropid, rgpropid);
			public HRESULT Commit(uint32 grfCommitFlags) mut => VT.Commit(ref this, grfCommitFlags);
			public HRESULT Revert() mut => VT.Revert(ref this);
			public HRESULT Enum(out IEnumSTATPROPSTG* ppenum) mut => VT.Enum(ref this, out ppenum);
			public HRESULT SetTimes(in FILETIME pctime, in FILETIME patime, in FILETIME pmtime) mut => VT.SetTimes(ref this, pctime, patime, pmtime);
			public HRESULT SetClass(in Guid clsid) mut => VT.SetClass(ref this, clsid);
			public HRESULT Stat(out STATPROPSETSTG pstatpsstg) mut => VT.Stat(ref this, out pstatpsstg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar) ReadMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec, PROPVARIANT* rgpropvar, uint32 propidNameFirst) WriteMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpspec, PROPSPEC* rgpspec) DeleteMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) ReadPropertyNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid, PWSTR* rglpwstrName) WritePropertyNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 cpropid, uint32* rgpropid) DeletePropertyNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, uint32 grfCommitFlags) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self) Revert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, out IEnumSTATPROPSTG* ppenum) Enum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, in FILETIME pctime, in FILETIME patime, in FILETIME pmtime) SetTimes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, in Guid clsid) SetClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyStorage self, out STATPROPSETSTG pstatpsstg) Stat;
			}
		}
		[CRepr]
		public struct IPropertySetStorage : IUnknown
		{
			public const new Guid IID = .(0x0000013a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(in Guid rfmtid, in Guid pclsid, uint32 grfFlags, uint32 grfMode, out IPropertyStorage* ppprstg) mut => VT.Create(ref this, rfmtid, pclsid, grfFlags, grfMode, out ppprstg);
			public HRESULT Open(in Guid rfmtid, uint32 grfMode, out IPropertyStorage* ppprstg) mut => VT.Open(ref this, rfmtid, grfMode, out ppprstg);
			public HRESULT Delete(in Guid rfmtid) mut => VT.Delete(ref this, rfmtid);
			public HRESULT Enum(out IEnumSTATPROPSETSTG* ppenum) mut => VT.Enum(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySetStorage self, in Guid rfmtid, in Guid pclsid, uint32 grfFlags, uint32 grfMode, out IPropertyStorage* ppprstg) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySetStorage self, in Guid rfmtid, uint32 grfMode, out IPropertyStorage* ppprstg) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySetStorage self, in Guid rfmtid) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertySetStorage self, out IEnumSTATPROPSETSTG* ppenum) Enum;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSTG : IUnknown
		{
			public const new Guid IID = .(0x00000139, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSTATPROPSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSTG self, uint32 celt, STATPROPSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSTG self, out IEnumSTATPROPSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumSTATPROPSETSTG : IUnknown
		{
			public const new Guid IID = .(0x0000013b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumSTATPROPSETSTG* ppenum) mut => VT.Clone(ref this, out ppenum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSETSTG self, uint32 celt, STATPROPSETSTG* rgelt, uint32* pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSETSTG self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSETSTG self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSTATPROPSETSTG self, out IEnumSTATPROPSETSTG* ppenum) Clone;
			}
		}
		[CRepr]
		public struct IPropertyBag : IUnknown
		{
			public const new Guid IID = .(0x55272a00, 0x42cb, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(PWSTR pszPropName, out VARIANT pVar, ref IErrorLog pErrorLog) mut => VT.Read(ref this, pszPropName, out pVar, ref pErrorLog);
			public HRESULT Write(PWSTR pszPropName, ref VARIANT pVar) mut => VT.Write(ref this, pszPropName, ref pVar);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag self, PWSTR pszPropName, out VARIANT pVar, ref IErrorLog pErrorLog) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag self, PWSTR pszPropName, ref VARIANT pVar) Write;
			}
		}
		[CRepr]
		public struct IPropertyBag2 : IUnknown
		{
			public const new Guid IID = .(0x22f55882, 0x280b, 0x11d0, 0xa8, 0xa9, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(uint32 cProperties, PROPBAG2* pPropBag, ref IErrorLog pErrLog, VARIANT* pvarValue, HRESULT* phrError) mut => VT.Read(ref this, cProperties, pPropBag, ref pErrLog, pvarValue, phrError);
			public HRESULT Write(uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) mut => VT.Write(ref this, cProperties, pPropBag, pvarValue);
			public HRESULT CountProperties(out uint32 pcProperties) mut => VT.CountProperties(ref this, out pcProperties);
			public HRESULT GetPropertyInfo(uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, out uint32 pcProperties) mut => VT.GetPropertyInfo(ref this, iProperty, cProperties, pPropBag, out pcProperties);
			public HRESULT LoadObject(PWSTR pstrName, uint32 dwHint, ref IUnknown pUnkObject, ref IErrorLog pErrLog) mut => VT.LoadObject(ref this, pstrName, dwHint, ref pUnkObject, ref pErrLog);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag2 self, uint32 cProperties, PROPBAG2* pPropBag, ref IErrorLog pErrLog, VARIANT* pvarValue, HRESULT* phrError) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag2 self, uint32 cProperties, PROPBAG2* pPropBag, VARIANT* pvarValue) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag2 self, out uint32 pcProperties) CountProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag2 self, uint32 iProperty, uint32 cProperties, PROPBAG2* pPropBag, out uint32 pcProperties) GetPropertyInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyBag2 self, PWSTR pstrName, uint32 dwHint, ref IUnknown pUnkObject, ref IErrorLog pErrLog) LoadObject;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromFile(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, uint32 grfMode, PWSTR pwszName, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInstanceFromIStorage(COSERVERINFO* pServerInfo, Guid* pClsid, IUnknown* punkOuter, CLSCTX dwClsCtx, ref IStorage pstg, uint32 dwCount, MULTI_QI* pResults);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenAsyncDocfileOnIFillLockBytes(ref IFillLockBytes pflb, uint32 grfMode, uint32 asyncFlags, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnILockBytes(ref ILockBytes pilb, out IFillLockBytes* ppflb);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgGetIFillLockBytesOnFile(PWSTR pwcsName, out IFillLockBytes* ppflb);
		[Import("dflayout.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenLayoutDocfile(PWSTR pwcsDfName, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStreamOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, out IStream* ppstm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromStream(ref IStream pstm, out int phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterfaceAndReleaseStream(ref IStream pStm, in Guid iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantCopy(out PROPVARIANT pvarDest, in PROPVARIANT pvarSrc);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropVariantClear(out PROPVARIANT pvar);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FreePropVariantArray(uint32 cVariants, PROPVARIANT* rgvars);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfile(PWSTR pwcsName, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateDocfileOnILockBytes(ref ILockBytes plkbyt, uint32 grfMode, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorage(PWSTR pwcsName, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageOnILockBytes(ref ILockBytes plkbyt, IStorage* pstgPriority, uint32 grfMode, uint16** snbExclude, uint32 reserved, out IStorage* ppstgOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageFile(PWSTR pwcsName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgIsStorageILockBytes(ref ILockBytes plkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSetTimes(PWSTR lpszName, FILETIME* pctime, FILETIME* patime, FILETIME* pmtime);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreateStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, in Guid riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenStorageEx(PWSTR pwcsName, uint32 grfMode, uint32 stgfmt, uint32 grfAttrs, STGOPTIONS* pStgOptions, SECURITY_DESCRIPTOR* pSecurityDescriptor, in Guid riid, void** ppObjectOpen);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropStg(ref IUnknown pUnk, in Guid fmtid, in Guid pclsid, uint32 grfFlags, uint32 dwReserved, out IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgOpenPropStg(ref IUnknown pUnk, in Guid fmtid, uint32 grfFlags, uint32 dwReserved, out IPropertyStorage* ppPropStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgCreatePropSetStg(ref IStorage pStorage, uint32 dwReserved, out IPropertySetStorage* ppPropSetStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT FmtIdToPropStgName(in Guid pfmtid, PWSTR oszName);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PropStgNameToFmtId(PWSTR oszName, out Guid pfmtid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStg(ref IStorage pStg, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStg(ref IStorage pStg, in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadClassStm(ref IStream pStm, out Guid pclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteClassStm(ref IStream pStm, in Guid rclsid);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHGlobalFromILockBytes(ref ILockBytes plkbyt, out int phglobal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateILockBytesOnHGlobal(int hGlobal, BOOL fDeleteOnRelease, out ILockBytes* pplkbyt);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetConvertStg(ref IStorage pStg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SERIALIZEDPROPERTYVALUE* StgConvertVariantToProperty(in PROPVARIANT pvar, uint16 CodePage, SERIALIZEDPROPERTYVALUE* pprop, out uint32 pcb, uint32 pid, BOOLEAN fReserved, uint32* pcIndirect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN StgConvertPropertyToVariant(in SERIALIZEDPROPERTYVALUE pprop, uint16 CodePage, out PROPVARIANT pvar, ref PMemoryAllocator pma);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StgPropertyLengthAsVariant(in SERIALIZEDPROPERTYVALUE pProp, uint32 cbProp, uint16 CodePage, uint8 bReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WriteFmtUserTypeStg(ref IStorage pstg, uint16 cf, PWSTR lpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReadFmtUserTypeStg(ref IStorage pstg, out uint16 pcf, PWSTR* lplpszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorage(out OLESTREAM lpolestream, ref IStorage pstg, in DVTARGETDEVICE ptd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAM(ref IStorage pstg, out OLESTREAM lpolestream);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetConvertStg(ref IStorage pStg, BOOL fConvert);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertIStorageToOLESTREAMEx(ref IStorage pstg, uint16 cfFormat, int32 lWidth, int32 lHeight, uint32 dwSize, out STGMEDIUM pmedium, out OLESTREAM polestm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleConvertOLESTREAMToIStorageEx(out OLESTREAM polestm, ref IStorage pstg, out uint16 pcfFormat, out int32 plwWidth, out int32 plHeight, out uint32 pdwSize, out STGMEDIUM pmedium);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgSerializePropVariant(in PROPVARIANT ppropvar, out SERIALIZEDPROPERTYVALUE* ppProp, out uint32 pcb);
		[Import("propsys.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgDeserializePropVariant(in SERIALIZEDPROPERTYVALUE pprop, uint32 cbMax, out PROPVARIANT ppropvar);
	}
}
