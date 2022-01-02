using System;

// namespace Security.Cryptography.Catalog
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CRYPTCAT_MAX_MEMBERTAG = 64;
		public const uint32 CRYPTCAT_MEMBER_SORTED = 1073741824;
		public const uint32 CRYPTCAT_ATTR_AUTHENTICATED = 268435456;
		public const uint32 CRYPTCAT_ATTR_UNAUTHENTICATED = 536870912;
		public const uint32 CRYPTCAT_ATTR_NAMEASCII = 1;
		public const uint32 CRYPTCAT_ATTR_NAMEOBJID = 2;
		public const uint32 CRYPTCAT_ATTR_DATAASCII = 65536;
		public const uint32 CRYPTCAT_ATTR_DATABASE64 = 131072;
		public const uint32 CRYPTCAT_ATTR_DATAREPLACE = 262144;
		public const uint32 CRYPTCAT_ATTR_NO_AUTO_COMPAT_ENTRY = 16777216;
		public const uint32 CRYPTCAT_E_AREA_HEADER = 0;
		public const uint32 CRYPTCAT_E_AREA_MEMBER = 65536;
		public const uint32 CRYPTCAT_E_AREA_ATTRIBUTE = 131072;
		public const uint32 CRYPTCAT_E_CDF_UNSUPPORTED = 1;
		public const uint32 CRYPTCAT_E_CDF_DUPLICATE = 2;
		public const uint32 CRYPTCAT_E_CDF_TAGNOTFOUND = 4;
		public const uint32 CRYPTCAT_E_CDF_MEMBER_FILE_PATH = 65537;
		public const uint32 CRYPTCAT_E_CDF_MEMBER_INDIRECTDATA = 65538;
		public const uint32 CRYPTCAT_E_CDF_MEMBER_FILENOTFOUND = 65540;
		public const uint32 CRYPTCAT_E_CDF_BAD_GUID_CONV = 131073;
		public const uint32 CRYPTCAT_E_CDF_ATTR_TOOFEWVALUES = 131074;
		public const uint32 CRYPTCAT_E_CDF_ATTR_TYPECOMBO = 131076;
		public const uint32 CRYPTCAT_ADDCATALOG_NONE = 0;
		public const uint32 CRYPTCAT_ADDCATALOG_HARDLINK = 1;
		
		// --- Enums ---
		
		public enum CRYPTCAT_VERSION : uint32
		{
			_1 = 256,
			_2 = 512,
		}
		public enum CRYPTCAT_OPEN_FLAGS : uint32
		{
			ALWAYS = 2,
			CREATENEW = 1,
			EXISTING = 4,
			EXCLUDE_PAGE_HASHES = 65536,
			INCLUDE_PAGE_HASHES = 131072,
			VERIFYSIGHASH = 268435456,
			NO_CONTENT_HCRYPTMSG = 536870912,
			SORTED = 1073741824,
			FLAGS_MASK = 4294901760,
		}
		
		// --- Function Pointers ---
		
		public function void PFN_CDF_PARSE_ERROR_CALLBACK(uint32 dwErrorArea, uint32 dwLocalError, PWSTR pwszLine);
		
		// --- Structs ---
		
		[CRepr]
		public struct CRYPTCATSTORE
		{
			public uint32 cbStruct;
			public uint32 dwPublicVersion;
			public PWSTR pwszP7File;
			public uint hProv;
			public uint32 dwEncodingType;
			public CRYPTCAT_OPEN_FLAGS fdwStoreFlags;
			public HANDLE hReserved;
			public HANDLE hAttrs;
			public void* hCryptMsg;
			public HANDLE hSorted;
		}
		[CRepr]
		public struct CRYPTCATMEMBER
		{
			public uint32 cbStruct;
			public PWSTR pwszReferenceTag;
			public PWSTR pwszFileName;
			public Guid gSubjectType;
			public uint32 fdwMemberFlags;
			public SIP_INDIRECT_DATA* pIndirectData;
			public uint32 dwCertVersion;
			public uint32 dwReserved;
			public HANDLE hReserved;
			public CRYPTOAPI_BLOB sEncodedIndirectData;
			public CRYPTOAPI_BLOB sEncodedMemberInfo;
		}
		[CRepr]
		public struct CRYPTCATATTRIBUTE
		{
			public uint32 cbStruct;
			public PWSTR pwszReferenceTag;
			public uint32 dwAttrTypeAndAction;
			public uint32 cbValue;
			public uint8* pbValue;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct CRYPTCATCDF
		{
			public uint32 cbStruct;
			public HANDLE hFile;
			public uint32 dwCurFilePos;
			public uint32 dwLastMemberOffset;
			public BOOL fEOF;
			public PWSTR pwszResultDir;
			public HANDLE hCATStore;
		}
		[CRepr]
		public struct CATALOG_INFO
		{
			public uint32 cbStruct;
			public char16[260] wszCatalogFile;
		}
		
		// --- Functions ---
		
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CryptCATOpen(PWSTR pwszFileName, CRYPTCAT_OPEN_FLAGS fdwOpenFlags, uint hProv, CRYPTCAT_VERSION dwPublicVersion, uint32 dwEncodingType);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATClose(HANDLE hCatalog);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATSTORE* CryptCATStoreFromHandle(HANDLE hCatalog);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CryptCATHandleFromStore(out CRYPTCATSTORE pCatStore);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATPersistStore(HANDLE hCatalog);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATGetCatAttrInfo(HANDLE hCatalog, PWSTR pwszReferenceTag);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATPutCatAttrInfo(HANDLE hCatalog, PWSTR pwszReferenceTag, uint32 dwAttrTypeAndAction, uint32 cbData, out uint8 pbData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATEnumerateCatAttr(HANDLE hCatalog, out CRYPTCATATTRIBUTE pPrevAttr);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATMEMBER* CryptCATGetMemberInfo(HANDLE hCatalog, PWSTR pwszReferenceTag);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATMEMBER* CryptCATAllocSortedMemberInfo(HANDLE hCatalog, PWSTR pwszReferenceTag);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CryptCATFreeSortedMemberInfo(HANDLE hCatalog, out CRYPTCATMEMBER pCatMember);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATGetAttrInfo(HANDLE hCatalog, out CRYPTCATMEMBER pCatMember, PWSTR pwszReferenceTag);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATMEMBER* CryptCATPutMemberInfo(HANDLE hCatalog, PWSTR pwszFileName, PWSTR pwszReferenceTag, out Guid pgSubjectType, uint32 dwCertVersion, uint32 cbSIPIndirectData, out uint8 pbSIPIndirectData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATPutAttrInfo(HANDLE hCatalog, out CRYPTCATMEMBER pCatMember, PWSTR pwszReferenceTag, uint32 dwAttrTypeAndAction, uint32 cbData, out uint8 pbData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATMEMBER* CryptCATEnumerateMember(HANDLE hCatalog, out CRYPTCATMEMBER pPrevMember);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATEnumerateAttr(HANDLE hCatalog, out CRYPTCATMEMBER pCatMember, out CRYPTCATATTRIBUTE pPrevAttr);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATCDF* CryptCATCDFOpen(PWSTR pwszFilePath, PFN_CDF_PARSE_ERROR_CALLBACK pfnParseError);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATCDFClose(out CRYPTCATCDF pCDF);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATCDFEnumCatAttributes(out CRYPTCATCDF pCDF, out CRYPTCATATTRIBUTE pPrevAttr, PFN_CDF_PARSE_ERROR_CALLBACK pfnParseError);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATMEMBER* CryptCATCDFEnumMembers(out CRYPTCATCDF pCDF, out CRYPTCATMEMBER pPrevMember, PFN_CDF_PARSE_ERROR_CALLBACK pfnParseError);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CRYPTCATATTRIBUTE* CryptCATCDFEnumAttributes(out CRYPTCATCDF pCDF, out CRYPTCATMEMBER pMember, out CRYPTCATATTRIBUTE pPrevAttr, PFN_CDF_PARSE_ERROR_CALLBACK pfnParseError);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsCatalogFile(HANDLE hFile, PWSTR pwszFileName);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminAcquireContext(out int phCatAdmin, Guid* pgSubsystem, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminAcquireContext2(out int phCatAdmin, Guid* pgSubsystem, PWSTR pwszHashAlgorithm, CERT_STRONG_SIGN_PARA* pStrongHashPolicy, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminReleaseContext(int hCatAdmin, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminReleaseCatalogContext(int hCatAdmin, int hCatInfo, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CryptCATAdminEnumCatalogFromHash(int hCatAdmin, ref uint8 pbHash, uint32 cbHash, uint32 dwFlags, int* phPrevCatInfo);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminCalcHashFromFileHandle(HANDLE hFile, out uint32 pcbHash, uint8* pbHash, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminCalcHashFromFileHandle2(int hCatAdmin, HANDLE hFile, out uint32 pcbHash, uint8* pbHash, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CryptCATAdminAddCatalog(int hCatAdmin, PWSTR pwszCatalogFile, PWSTR pwszSelectBaseName, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminRemoveCatalog(int hCatAdmin, PWSTR pwszCatalogFile, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATCatalogInfoFromContext(int hCatInfo, out CATALOG_INFO psCatInfo, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminResolveCatalogPath(int hCatAdmin, PWSTR pwszCatalogFile, out CATALOG_INFO psCatInfo, uint32 dwFlags);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptCATAdminPauseServiceForBackup(uint32 dwFlags, BOOL fResume);
	}
}
