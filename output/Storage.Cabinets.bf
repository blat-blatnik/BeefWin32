using System;

// namespace Storage.Cabinets
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 INCLUDED_FCI = 1;
		public const uint32 _A_NAME_IS_UTF = 128;
		public const uint32 _A_EXEC = 64;
		public const uint32 INCLUDED_TYPES_FCI_FDI = 1;
		public const int32 CB_MAX_DISK = 2147483647;
		public const uint32 CB_MAX_FILENAME = 256;
		public const uint32 CB_MAX_CABINET_NAME = 256;
		public const uint32 CB_MAX_CAB_PATH = 256;
		public const uint32 CB_MAX_DISK_NAME = 256;
		public const uint32 INCLUDED_FDI = 1;
		
		// --- Enums ---
		
		public enum FDICREATE_CPU_TYPE : uint32
		{
			cpu80286 = 0,
			cpu80386 = 1,
		}
		public enum FCIERROR : int32
		{
			NONE = 0,
			OPEN_SRC = 1,
			READ_SRC = 2,
			ALLOC_FAIL = 3,
			TEMP_FILE = 4,
			BAD_COMPR_TYPE = 5,
			CAB_FILE = 6,
			USER_ABORT = 7,
			MCI_FAIL = 8,
			CAB_FORMAT_LIMIT = 9,
		}
		public enum FDIERROR : int32
		{
			NONE = 0,
			CABINET_NOT_FOUND = 1,
			NOT_A_CABINET = 2,
			UNKNOWN_CABINET_VERSION = 3,
			CORRUPT_CABINET = 4,
			ALLOC_FAIL = 5,
			BAD_COMPR_TYPE = 6,
			MDI_FAIL = 7,
			TARGET_FILE = 8,
			RESERVE_MISMATCH = 9,
			WRONG_CABINET = 10,
			USER_ABORT = 11,
			EOF = 12,
		}
		public enum FDIDECRYPTTYPE : int32
		{
			NEW_CABINET = 0,
			NEW_FOLDER = 1,
			DECRYPT = 2,
		}
		public enum FDINOTIFICATIONTYPE : int32
		{
			CABINET_INFO = 0,
			PARTIAL_FILE = 1,
			COPY_FILE = 2,
			CLOSE_FILE_INFO = 3,
			NEXT_CABINET = 4,
			ENUMERATE = 5,
		}
		
		// --- Function Pointers ---
		
		public function void* PFNFCIALLOC(uint32 cb);
		public function void PFNFCIFREE(void* memory);
		public function int PFNFCIOPEN(PSTR pszFile, int32 oflag, int32 pmode, out int32 err, void* pv);
		public function uint32 PFNFCIREAD(int hf, void* memory, uint32 cb, out int32 err, void* pv);
		public function uint32 PFNFCIWRITE(int hf, void* memory, uint32 cb, out int32 err, void* pv);
		public function int32 PFNFCICLOSE(int hf, out int32 err, void* pv);
		public function int32 PFNFCISEEK(int hf, int32 dist, int32 seektype, out int32 err, void* pv);
		public function int32 PFNFCIDELETE(PSTR pszFile, out int32 err, void* pv);
		public function BOOL PFNFCIGETNEXTCABINET(out CCAB pccab, uint32 cbPrevCab, void* pv);
		public function int32 PFNFCIFILEPLACED(out CCAB pccab, PSTR pszFile, int32 cbFile, BOOL fContinuation, void* pv);
		public function int PFNFCIGETOPENINFO(PSTR pszName, out uint16 pdate, out uint16 ptime, out uint16 pattribs, out int32 err, void* pv);
		public function int32 PFNFCISTATUS(uint32 typeStatus, uint32 cb1, uint32 cb2, void* pv);
		public function BOOL PFNFCIGETTEMPFILE(PSTR pszTempName, int32 cbTempName, void* pv);
		public function void* PFNALLOC(uint32 cb);
		public function void PFNFREE(void* pv);
		public function int PFNOPEN(PSTR pszFile, int32 oflag, int32 pmode);
		public function uint32 PFNREAD(int hf, void* pv, uint32 cb);
		public function uint32 PFNWRITE(int hf, void* pv, uint32 cb);
		public function int32 PFNCLOSE(int hf);
		public function int32 PFNSEEK(int hf, int32 dist, int32 seektype);
		public function int32 PFNFDIDECRYPT(out FDIDECRYPT pfdid);
		public function int PFNFDINOTIFY(FDINOTIFICATIONTYPE fdint, out FDINOTIFICATION pfdin);
		
		// --- Structs ---
		
		[CRepr]
		public struct ERF
		{
			public int32 erfOper;
			public int32 erfType;
			public BOOL fError;
		}
		[CRepr]
		public struct CCAB
		{
			public uint32 cb;
			public uint32 cbFolderThresh;
			public uint32 cbReserveCFHeader;
			public uint32 cbReserveCFFolder;
			public uint32 cbReserveCFData;
			public int32 iCab;
			public int32 iDisk;
			public int32 fFailOnIncompressible;
			public uint16 setID;
			public CHAR[256] szDisk;
			public CHAR[256] szCab;
			public CHAR[256] szCabPath;
		}
		[CRepr]
		public struct FDICABINETINFO
		{
			public int32 cbCabinet;
			public uint16 cFolders;
			public uint16 cFiles;
			public uint16 setID;
			public uint16 iCabinet;
			public BOOL fReserve;
			public BOOL hasprev;
			public BOOL hasnext;
		}
		[CRepr]
		public struct FDIDECRYPT
		{
			public FDIDECRYPTTYPE fdidt;
			public void* pvUser;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _cabinet_e__Struct cabinet;
				public _folder_e__Struct folder;
				public _decrypt_e__Struct decrypt;
				
				[CRepr]
				public struct _decrypt_e__Struct
				{
					public void* pDataReserve;
					public uint16 cbDataReserve;
					public void* pbData;
					public uint16 cbData;
					public BOOL fSplit;
					public uint16 cbPartial;
				}
				[CRepr]
				public struct _cabinet_e__Struct
				{
					public void* pHeaderReserve;
					public uint16 cbHeaderReserve;
					public uint16 setID;
					public int32 iCabinet;
				}
				[CRepr]
				public struct _folder_e__Struct
				{
					public void* pFolderReserve;
					public uint16 cbFolderReserve;
					public uint16 iFolder;
				}
			}
		}
		[CRepr]
		public struct FDINOTIFICATION
		{
			public int32 cb;
			public PSTR psz1;
			public PSTR psz2;
			public PSTR psz3;
			public void* pv;
			public int hf;
			public uint16 date;
			public uint16 time;
			public uint16 attribs;
			public uint16 setID;
			public uint16 iCabinet;
			public uint16 iFolder;
			public FDIERROR fdie;
		}
		[CRepr]
		public struct FDISPILLFILE
		{
			public CHAR[2] ach;
			public int32 cbFile;
		}
		
		// --- Functions ---
		
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* FCICreate(ref ERF perf, PFNFCIFILEPLACED pfnfcifp, PFNFCIALLOC pfna, PFNFCIFREE pfnf, PFNFCIOPEN pfnopen, PFNFCIREAD pfnread, PFNFCIWRITE pfnwrite, PFNFCICLOSE pfnclose, PFNFCISEEK pfnseek, PFNFCIDELETE pfndelete, PFNFCIGETTEMPFILE pfnfcigtf, ref CCAB pccab, void* pv);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FCIAddFile(void* hfci, PSTR pszSourceFile, PSTR pszFileName, BOOL fExecute, PFNFCIGETNEXTCABINET pfnfcignc, PFNFCISTATUS pfnfcis, PFNFCIGETOPENINFO pfnfcigoi, uint16 typeCompress);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FCIFlushCabinet(void* hfci, BOOL fGetNextCab, PFNFCIGETNEXTCABINET pfnfcignc, PFNFCISTATUS pfnfcis);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FCIFlushFolder(void* hfci, PFNFCIGETNEXTCABINET pfnfcignc, PFNFCISTATUS pfnfcis);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FCIDestroy(void* hfci);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* FDICreate(PFNALLOC pfnalloc, PFNFREE pfnfree, PFNOPEN pfnopen, PFNREAD pfnread, PFNWRITE pfnwrite, PFNCLOSE pfnclose, PFNSEEK pfnseek, FDICREATE_CPU_TYPE cpuType, out ERF perf);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FDIIsCabinet(void* hfdi, int hf, FDICABINETINFO* pfdici);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FDICopy(void* hfdi, PSTR pszCabinet, PSTR pszCabPath, int32 flags, PFNFDINOTIFY pfnfdin, PFNFDIDECRYPT pfnfdid, void* pvUser);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FDIDestroy(void* hfdi);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FDITruncateCabinet(void* hfdi, PSTR pszCabinetName, uint16 iFolderToDelete);
	}
}
