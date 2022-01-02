using System;

// namespace Security.Cryptography.Sip
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MSSIP_FLAGS_PROHIBIT_RESIZE_ON_CREATE = 65536;
		public const uint32 MSSIP_FLAGS_USE_CATALOG = 131072;
		public const uint32 MSSIP_FLAGS_MULTI_HASH = 262144;
		public const uint32 SPC_INC_PE_RESOURCES_FLAG = 128;
		public const uint32 SPC_INC_PE_DEBUG_INFO_FLAG = 64;
		public const uint32 SPC_INC_PE_IMPORT_ADDR_TABLE_FLAG = 32;
		public const uint32 SPC_EXC_PE_PAGE_HASHES_FLAG = 16;
		public const uint32 SPC_INC_PE_PAGE_HASHES_FLAG = 256;
		public const uint32 SPC_DIGEST_GENERATE_FLAG = 512;
		public const uint32 SPC_DIGEST_SIGN_FLAG = 1024;
		public const uint32 SPC_DIGEST_SIGN_EX_FLAG = 16384;
		public const uint32 SPC_RELAXED_PE_MARKER_CHECK = 2048;
		public const uint32 SPC_MARKER_CHECK_SKIP_SIP_INDIRECT_DATA_FLAG = 1;
		public const uint32 SPC_MARKER_CHECK_CURRENTLY_SUPPORTED_FLAGS = 1;
		public const uint32 SIP_CAP_SET_VERSION_2 = 2;
		public const uint32 SIP_CAP_SET_VERSION_3 = 3;
		public const uint32 SIP_CAP_SET_CUR_VER = 3;
		public const uint32 SIP_CAP_FLAG_SEALING = 1;
		public const uint32 SIP_MAX_MAGIC_NUMBER = 4;
		
		// --- Function Pointers ---
		
		public function BOOL pCryptSIPGetSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, out uint32 pdwEncodingType, uint32 dwIndex, out uint32 pcbSignedDataMsg, out uint8 pbSignedDataMsg);
		public function BOOL pCryptSIPPutSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, uint32 dwEncodingType, out uint32 pdwIndex, uint32 cbSignedDataMsg, out uint8 pbSignedDataMsg);
		public function BOOL pCryptSIPCreateIndirectData(out SIP_SUBJECTINFO pSubjectInfo, out uint32 pcbIndirectData, out SIP_INDIRECT_DATA pIndirectData);
		public function BOOL pCryptSIPVerifyIndirectData(out SIP_SUBJECTINFO pSubjectInfo, out SIP_INDIRECT_DATA pIndirectData);
		public function BOOL pCryptSIPRemoveSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, uint32 dwIndex);
		public function BOOL pfnIsFileSupported(HANDLE hFile, out Guid pgSubject);
		public function BOOL pfnIsFileSupportedName(PWSTR pwszFileName, out Guid pgSubject);
		public function BOOL pCryptSIPGetCaps(ref SIP_SUBJECTINFO pSubjInfo, out SIP_CAP_SET_V3 pCaps);
		public function BOOL pCryptSIPGetSealedDigest(ref SIP_SUBJECTINFO pSubjectInfo, uint8* pSig, uint32 dwSig, uint8* pbDigest, out uint32 pcbDigest);
		
		// --- Structs ---
		
		[CRepr]
		public struct SIP_SUBJECTINFO
		{
			public uint32 cbSize;
			public Guid* pgSubjectType;
			public HANDLE hFile;
			public PWSTR pwsFileName;
			public PWSTR pwsDisplayName;
			public uint32 dwReserved1;
			public uint32 dwIntVersion;
			public uint hProv;
			public CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
			public uint32 dwFlags;
			public uint32 dwEncodingType;
			public uint32 dwReserved2;
			public uint32 fdwCAPISettings;
			public uint32 fdwSecuritySettings;
			public uint32 dwIndex;
			public uint32 dwUnionChoice;
			public _Anonymous_e__Union Anonymous;
			public void* pClientData;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public MS_ADDINFO_FLAT* psFlat;
				public MS_ADDINFO_CATALOGMEMBER* psCatMember;
				public MS_ADDINFO_BLOB* psBlob;
			}
		}
		[CRepr]
		public struct MS_ADDINFO_FLAT
		{
			public uint32 cbStruct;
			public SIP_INDIRECT_DATA* pIndirectData;
		}
		[CRepr]
		public struct MS_ADDINFO_CATALOGMEMBER
		{
			public uint32 cbStruct;
			public CRYPTCATSTORE* pStore;
			public CRYPTCATMEMBER* pMember;
		}
		[CRepr]
		public struct MS_ADDINFO_BLOB
		{
			public uint32 cbStruct;
			public uint32 cbMemObject;
			public uint8* pbMemObject;
			public uint32 cbMemSignedMsg;
			public uint8* pbMemSignedMsg;
		}
		[CRepr]
		public struct SIP_CAP_SET_V2
		{
			public uint32 cbSize;
			public uint32 dwVersion;
			public BOOL isMultiSign;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct SIP_CAP_SET_V3
		{
			public uint32 cbSize;
			public uint32 dwVersion;
			public BOOL isMultiSign;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 dwFlags;
				public uint32 dwReserved;
			}
		}
		[CRepr]
		public struct SIP_INDIRECT_DATA
		{
			public CRYPT_ATTRIBUTE_TYPE_VALUE Data;
			public CRYPT_ALGORITHM_IDENTIFIER DigestAlgorithm;
			public CRYPTOAPI_BLOB Digest;
		}
		[CRepr]
		public struct SIP_DISPATCH_INFO
		{
			public uint32 cbSize;
			public HANDLE hSIP;
			public pCryptSIPGetSignedDataMsg pfGet;
			public pCryptSIPPutSignedDataMsg pfPut;
			public pCryptSIPCreateIndirectData pfCreate;
			public pCryptSIPVerifyIndirectData pfVerify;
			public pCryptSIPRemoveSignedDataMsg pfRemove;
		}
		[CRepr]
		public struct SIP_ADD_NEWPROVIDER
		{
			public uint32 cbStruct;
			public Guid* pgSubject;
			public PWSTR pwszDLLFileName;
			public PWSTR pwszMagicNumber;
			public PWSTR pwszIsFunctionName;
			public PWSTR pwszGetFuncName;
			public PWSTR pwszPutFuncName;
			public PWSTR pwszCreateFuncName;
			public PWSTR pwszVerifyFuncName;
			public PWSTR pwszRemoveFuncName;
			public PWSTR pwszIsFunctionNameFmt2;
			public PWSTR pwszGetCapFuncName;
		}
		
		// --- Functions ---
		
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPGetSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, out CERT_QUERY_ENCODING_TYPE pdwEncodingType, uint32 dwIndex, out uint32 pcbSignedDataMsg, out uint8 pbSignedDataMsg);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPPutSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, CERT_QUERY_ENCODING_TYPE dwEncodingType, out uint32 pdwIndex, uint32 cbSignedDataMsg, out uint8 pbSignedDataMsg);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPCreateIndirectData(out SIP_SUBJECTINFO pSubjectInfo, out uint32 pcbIndirectData, out SIP_INDIRECT_DATA pIndirectData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPVerifyIndirectData(out SIP_SUBJECTINFO pSubjectInfo, out SIP_INDIRECT_DATA pIndirectData);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPRemoveSignedDataMsg(out SIP_SUBJECTINFO pSubjectInfo, uint32 dwIndex);
		[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPLoad(in Guid pgSubject, uint32 dwFlags, out SIP_DISPATCH_INFO pSipDispatch);
		[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPRetrieveSubjectGuid(PWSTR FileName, HANDLE hFileIn, out Guid pgSubject);
		[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPRetrieveSubjectGuidForCatalogFile(PWSTR FileName, HANDLE hFileIn, out Guid pgSubject);
		[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPAddProvider(out SIP_ADD_NEWPROVIDER psNewProv);
		[Import("crypt32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPRemoveProvider(out Guid pgProv);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPGetCaps(ref SIP_SUBJECTINFO pSubjInfo, out SIP_CAP_SET_V3 pCaps);
		[Import("wintrust.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CryptSIPGetSealedDigest(ref SIP_SUBJECTINFO pSubjectInfo, uint8* pSig, uint32 dwSig, uint8* pbDigest, out uint32 pcbDigest);
	}
}
