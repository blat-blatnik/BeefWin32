using System;

// namespace Graphics.Direct3D.Dxc
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DXC_HASHFLAG_INCLUDES_SOURCE = 1;
		public const uint32 DxcValidatorFlags_Default = 0;
		public const uint32 DxcValidatorFlags_InPlaceEdit = 1;
		public const uint32 DxcValidatorFlags_RootSignatureOnly = 2;
		public const uint32 DxcValidatorFlags_ModuleOnly = 4;
		public const uint32 DxcValidatorFlags_ValidMask = 7;
		public const uint32 DxcVersionInfoFlags_None = 0;
		public const uint32 DxcVersionInfoFlags_Debug = 1;
		public const uint32 DxcVersionInfoFlags_Internal = 2;
		public const Guid CLSID_DxcCompiler = .(0x73e22d93, 0xe6ce, 0x47f3, 0xb5, 0xbf, 0xf0, 0x66, 0x4f, 0x39, 0xc1, 0xb0);
		public const Guid CLSID_DxcLinker = .(0xef6a8087, 0xb0ea, 0x4d56, 0x9e, 0x45, 0xd0, 0x7e, 0x1a, 0x8b, 0x78, 0x06);
		public const Guid CLSID_DxcDiaDataSource = .(0xcd1f6b73, 0x2ab0, 0x484d, 0x8e, 0xdc, 0xeb, 0xe7, 0xa4, 0x3c, 0xa0, 0x9f);
		public const Guid CLSID_DxcCompilerArgs = .(0x3e56ae82, 0x224d, 0x470f, 0xa1, 0xa1, 0xfe, 0x30, 0x16, 0xee, 0x9f, 0x9d);
		public const Guid CLSID_DxcLibrary = .(0x6245d6af, 0x66e0, 0x48fd, 0x80, 0xb4, 0x4d, 0x27, 0x17, 0x96, 0x74, 0x8c);
		public const Guid CLSID_DxcValidator = .(0x8ca3e215, 0xf728, 0x4cf3, 0x8c, 0xdd, 0x88, 0xaf, 0x91, 0x75, 0x87, 0xa1);
		public const Guid CLSID_DxcAssembler = .(0xd728db68, 0xf903, 0x4f80, 0x94, 0xcd, 0xdc, 0xcf, 0x76, 0xec, 0x71, 0x51);
		public const Guid CLSID_DxcContainerReflection = .(0xb9f54489, 0x55b8, 0x400c, 0xba, 0x3a, 0x16, 0x75, 0xe4, 0x72, 0x8b, 0x91);
		public const Guid CLSID_DxcOptimizer = .(0xae2cd79f, 0xcc22, 0x453f, 0x9b, 0x6b, 0xb1, 0x24, 0xe7, 0xa5, 0x20, 0x4c);
		public const Guid CLSID_DxcContainerBuilder = .(0x94134294, 0x411f, 0x4574, 0xb4, 0xd0, 0x87, 0x41, 0xe2, 0x52, 0x40, 0xd2);
		public const Guid CLSID_DxcPdbUtils = .(0x54621dfb, 0xf2ce, 0x457e, 0xae, 0x8c, 0xec, 0x35, 0x5f, 0xae, 0xec, 0x7c);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DXC_CP : uint32
		{
			DXC_CP_ACP = 0,
			DXC_CP_UTF16 = 1200,
			DXC_CP_UTF8 = 65001,
		}
		[AllowDuplicates]
		public enum DXC_OUT_KIND : int32
		{
			DXC_OUT_NONE = 0,
			DXC_OUT_OBJECT = 1,
			DXC_OUT_ERRORS = 2,
			DXC_OUT_PDB = 3,
			DXC_OUT_SHADER_HASH = 4,
			DXC_OUT_DISASSEMBLY = 5,
			DXC_OUT_HLSL = 6,
			DXC_OUT_TEXT = 7,
			DXC_OUT_REFLECTION = 8,
			DXC_OUT_ROOT_SIGNATURE = 9,
			DXC_OUT_EXTRA_OUTPUTS = 10,
			DXC_OUT_FORCE_DWORD = -1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT DxcCreateInstanceProc(Guid* rclsid, Guid* riid, void** ppv);
		public function HRESULT DxcCreateInstance2Proc(IMalloc* pMalloc, Guid* rclsid, Guid* riid, void** ppv);
		
		// --- Structs ---
		
		[CRepr]
		public struct DxcShaderHash
		{
			public uint32 Flags;
			public uint8[16] HashDigest;
		}
		[CRepr]
		public struct DxcBuffer
		{
			public void* Ptr;
			public uint Size;
			public uint32 Encoding;
		}
		[CRepr]
		public struct DxcDefine
		{
			public PWSTR Name;
			public PWSTR Value;
		}
		[CRepr]
		public struct DxcArgPair
		{
			public PWSTR pName;
			public PWSTR pValue;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDxcBlob : IUnknown
		{
			public const new Guid IID = .(0x8ba5fb08, 0x5195, 0x40e2, 0xac, 0x58, 0x0d, 0x98, 0x9c, 0x3a, 0x01, 0x02);
			
			public function void*(IDxcBlob *self) GetBufferPointer;
			public function uint(IDxcBlob *self) GetBufferSize;
		}
		[CRepr]
		public struct IDxcBlobEncoding : IDxcBlob
		{
			public const new Guid IID = .(0x7241d424, 0x2646, 0x4191, 0x97, 0xc0, 0x98, 0xe9, 0x6e, 0x42, 0xfc, 0x68);
			
			public function HRESULT(IDxcBlobEncoding *self, BOOL* pKnown, DXC_CP* pCodePage) GetEncoding;
		}
		[CRepr]
		public struct IDxcBlobUtf16 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0xa3f84eab, 0x0faa, 0x497e, 0xa3, 0x9c, 0xee, 0x6e, 0xd6, 0x0b, 0x2d, 0x84);
			
			public function PWSTR(IDxcBlobUtf16 *self) GetStringPointer;
			public function uint(IDxcBlobUtf16 *self) GetStringLength;
		}
		[CRepr]
		public struct IDxcBlobUtf8 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0x3da636c9, 0xba71, 0x4024, 0xa3, 0x01, 0x30, 0xcb, 0xf1, 0x25, 0x30, 0x5b);
			
			public function PSTR(IDxcBlobUtf8 *self) GetStringPointer;
			public function uint(IDxcBlobUtf8 *self) GetStringLength;
		}
		[CRepr]
		public struct IDxcIncludeHandler : IUnknown
		{
			public const new Guid IID = .(0x7f61fc7d, 0x950d, 0x467f, 0xb3, 0xe3, 0x3c, 0x02, 0xfb, 0x49, 0x18, 0x7c);
			
			public function HRESULT(IDxcIncludeHandler *self, PWSTR pFilename, IDxcBlob** ppIncludeSource) LoadSource;
		}
		[CRepr]
		public struct IDxcCompilerArgs : IUnknown
		{
			public const new Guid IID = .(0x73effe2a, 0x70dc, 0x45f8, 0x96, 0x90, 0xef, 0xf6, 0x4c, 0x02, 0x42, 0x9d);
			
			public function PWSTR*(IDxcCompilerArgs *self) GetArguments;
			public function uint32(IDxcCompilerArgs *self) GetCount;
			public function HRESULT(IDxcCompilerArgs *self, PWSTR* pArguments, uint32 argCount) AddArguments;
			public function HRESULT(IDxcCompilerArgs *self, PSTR* pArguments, uint32 argCount) AddArgumentsUTF8;
			public function HRESULT(IDxcCompilerArgs *self, DxcDefine* pDefines, uint32 defineCount) AddDefines;
		}
		[CRepr]
		public struct IDxcLibrary : IUnknown
		{
			public const new Guid IID = .(0xe5204dc7, 0xd18c, 0x4c3c, 0xbd, 0xfb, 0x85, 0x16, 0x73, 0x98, 0x0f, 0xe7);
			
			public function HRESULT(IDxcLibrary *self, IMalloc* pMalloc) SetMalloc;
			public function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) CreateBlobFromBlob;
			public function HRESULT(IDxcLibrary *self, PWSTR pFileName, DXC_CP* codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobFromFile;
			public function HRESULT(IDxcLibrary *self, void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingFromPinned;
			public function HRESULT(IDxcLibrary *self, void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingOnHeapCopy;
			public function HRESULT(IDxcLibrary *self, void* pText, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingOnMalloc;
			public function HRESULT(IDxcLibrary *self, IDxcIncludeHandler** ppResult) CreateIncludeHandler;
			public function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IStream** ppStream) CreateStreamFromBlobReadOnly;
			public function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) GetBlobAsUtf8;
			public function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) GetBlobAsUtf16;
		}
		[CRepr]
		public struct IDxcOperationResult : IUnknown
		{
			public const new Guid IID = .(0xcedb484a, 0xd4e9, 0x445a, 0xb9, 0x91, 0xca, 0x21, 0xca, 0x15, 0x7d, 0xc2);
			
			public function HRESULT(IDxcOperationResult *self, HRESULT* pStatus) GetStatus;
			public function HRESULT(IDxcOperationResult *self, IDxcBlob** ppResult) GetResult;
			public function HRESULT(IDxcOperationResult *self, IDxcBlobEncoding** ppErrors) GetErrorBuffer;
		}
		[CRepr]
		public struct IDxcCompiler : IUnknown
		{
			public const new Guid IID = .(0x8c210bf3, 0x011f, 0x4422, 0x8d, 0x70, 0x6f, 0x9a, 0xcb, 0x8d, 0xb6, 0x17);
			
			public function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) Compile;
			public function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) Preprocess;
			public function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, IDxcBlobEncoding** ppDisassembly) Disassemble;
		}
		[CRepr]
		public struct IDxcCompiler2 : IDxcCompiler
		{
			public const new Guid IID = .(0xa005a9d9, 0xb8bb, 0x4594, 0xb5, 0xc9, 0x0e, 0x63, 0x3b, 0xec, 0x4d, 0x37);
			
			public function HRESULT(IDxcCompiler2 *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult, PWSTR* ppDebugBlobName, IDxcBlob** ppDebugBlob) CompileWithDebug;
		}
		[CRepr]
		public struct IDxcLinker : IUnknown
		{
			public const new Guid IID = .(0xf1b5be2a, 0x62dd, 0x4327, 0xa1, 0xc2, 0x42, 0xac, 0x1e, 0x1e, 0x78, 0xe6);
			
			public function HRESULT(IDxcLinker *self, PWSTR pLibName, IDxcBlob* pLib) RegisterLibrary;
			public function HRESULT(IDxcLinker *self, PWSTR pEntryName, PWSTR pTargetProfile, PWSTR* pLibNames, uint32 libCount, PWSTR* pArguments, uint32 argCount, IDxcOperationResult** ppResult) Link;
		}
		[CRepr]
		public struct IDxcUtils : IUnknown
		{
			public const new Guid IID = .(0x4605c4cb, 0x2019, 0x492a, 0xad, 0xa4, 0x65, 0xf2, 0x0b, 0xb7, 0xd6, 0x7f);
			
			public function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) CreateBlobFromBlob;
			public function HRESULT(IDxcUtils *self, void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobFromPinned;
			public function HRESULT(IDxcUtils *self, void* pData, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) MoveToBlob;
			public function HRESULT(IDxcUtils *self, void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlob;
			public function HRESULT(IDxcUtils *self, PWSTR pFileName, DXC_CP* pCodePage, IDxcBlobEncoding** pBlobEncoding) LoadFile;
			public function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IStream** ppStream) CreateReadOnlyStreamFromBlob;
			public function HRESULT(IDxcUtils *self, IDxcIncludeHandler** ppResult) CreateDefaultIncludeHandler;
			public function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IDxcBlobUtf8** pBlobEncoding) GetBlobAsUtf8;
			public function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IDxcBlobUtf16** pBlobEncoding) GetBlobAsUtf16;
			public function HRESULT(IDxcUtils *self, DxcBuffer* pShader, uint32 DxcPart, void** ppPartData, uint32* pPartSizeInBytes) GetDxilContainerPart;
			public function HRESULT(IDxcUtils *self, DxcBuffer* pData, Guid* iid, void** ppvReflection) CreateReflection;
			public function HRESULT(IDxcUtils *self, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcCompilerArgs** ppArgs) BuildArguments;
			public function HRESULT(IDxcUtils *self, IDxcBlob* pPDBBlob, IDxcBlob** ppHash, IDxcBlob** ppContainer) GetPDBContents;
		}
		[CRepr]
		public struct IDxcResult : IDxcOperationResult
		{
			public const new Guid IID = .(0x58346cda, 0xdde7, 0x4497, 0x94, 0x61, 0x6f, 0x87, 0xaf, 0x5e, 0x06, 0x59);
			
			public function BOOL(IDxcResult *self, DXC_OUT_KIND dxcOutKind) HasOutput;
			public function HRESULT(IDxcResult *self, DXC_OUT_KIND dxcOutKind, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputName) GetOutput;
			public function uint32(IDxcResult *self) GetNumOutputs;
			public function DXC_OUT_KIND(IDxcResult *self, uint32 Index) GetOutputByIndex;
			public function DXC_OUT_KIND(IDxcResult *self) PrimaryOutput;
		}
		[CRepr]
		public struct IDxcExtraOutputs : IUnknown
		{
			public const new Guid IID = .(0x319b37a2, 0xa5c2, 0x494a, 0xa5, 0xde, 0x48, 0x01, 0xb2, 0xfa, 0xf9, 0x89);
			
			public function uint32(IDxcExtraOutputs *self) GetOutputCount;
			public function HRESULT(IDxcExtraOutputs *self, uint32 uIndex, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputType, IDxcBlobUtf16** ppOutputName) GetOutput;
		}
		[CRepr]
		public struct IDxcCompiler3 : IUnknown
		{
			public const new Guid IID = .(0x228b4687, 0x5a6a, 0x4730, 0x90, 0x0c, 0x97, 0x02, 0xb2, 0x20, 0x3f, 0x54);
			
			public function HRESULT(IDxcCompiler3 *self, DxcBuffer* pSource, PWSTR* pArguments, uint32 argCount, IDxcIncludeHandler* pIncludeHandler, Guid* riid, void** ppResult) Compile;
			public function HRESULT(IDxcCompiler3 *self, DxcBuffer* pObject, Guid* riid, void** ppResult) Disassemble;
		}
		[CRepr]
		public struct IDxcValidator : IUnknown
		{
			public const new Guid IID = .(0xa6e82bd2, 0x1fd7, 0x4826, 0x98, 0x11, 0x28, 0x57, 0xe7, 0x97, 0xf4, 0x9a);
			
			public function HRESULT(IDxcValidator *self, IDxcBlob* pShader, uint32 Flags, IDxcOperationResult** ppResult) Validate;
		}
		[CRepr]
		public struct IDxcValidator2 : IDxcValidator
		{
			public const new Guid IID = .(0x458e1fd1, 0xb1b2, 0x4750, 0xa6, 0xe1, 0x9c, 0x10, 0xf0, 0x3b, 0xed, 0x92);
			
			public function HRESULT(IDxcValidator2 *self, IDxcBlob* pShader, uint32 Flags, DxcBuffer* pOptDebugBitcode, IDxcOperationResult** ppResult) ValidateWithDebug;
		}
		[CRepr]
		public struct IDxcContainerBuilder : IUnknown
		{
			public const new Guid IID = .(0x334b1f50, 0x2292, 0x4b35, 0x99, 0xa1, 0x25, 0x58, 0x8d, 0x8c, 0x17, 0xfe);
			
			public function HRESULT(IDxcContainerBuilder *self, IDxcBlob* pDxilContainerHeader) Load;
			public function HRESULT(IDxcContainerBuilder *self, uint32 fourCC, IDxcBlob* pSource) AddPart;
			public function HRESULT(IDxcContainerBuilder *self, uint32 fourCC) RemovePart;
			public function HRESULT(IDxcContainerBuilder *self, IDxcOperationResult** ppResult) SerializeContainer;
		}
		[CRepr]
		public struct IDxcAssembler : IUnknown
		{
			public const new Guid IID = .(0x091f7a26, 0x1c1f, 0x4948, 0x90, 0x4b, 0xe6, 0xe3, 0xa8, 0xa7, 0x71, 0xd5);
			
			public function HRESULT(IDxcAssembler *self, IDxcBlob* pShader, IDxcOperationResult** ppResult) AssembleToContainer;
		}
		[CRepr]
		public struct IDxcContainerReflection : IUnknown
		{
			public const new Guid IID = .(0xd2c21b26, 0x8350, 0x4bdc, 0x97, 0x6a, 0x33, 0x1c, 0xe6, 0xf4, 0xc5, 0x4c);
			
			public function HRESULT(IDxcContainerReflection *self, IDxcBlob* pContainer) Load;
			public function HRESULT(IDxcContainerReflection *self, uint32* pResult) GetPartCount;
			public function HRESULT(IDxcContainerReflection *self, uint32 idx, uint32* pResult) GetPartKind;
			public function HRESULT(IDxcContainerReflection *self, uint32 idx, IDxcBlob** ppResult) GetPartContent;
			public function HRESULT(IDxcContainerReflection *self, uint32 kind, uint32* pResult) FindFirstPartKind;
			public function HRESULT(IDxcContainerReflection *self, uint32 idx, Guid* iid, void** ppvObject) GetPartReflection;
		}
		[CRepr]
		public struct IDxcOptimizerPass : IUnknown
		{
			public const new Guid IID = .(0xae2cd79f, 0xcc22, 0x453f, 0x9b, 0x6b, 0xb1, 0x24, 0xe7, 0xa5, 0x20, 0x4c);
			
			public function HRESULT(IDxcOptimizerPass *self, PWSTR* ppResult) GetOptionName;
			public function HRESULT(IDxcOptimizerPass *self, PWSTR* ppResult) GetDescription;
			public function HRESULT(IDxcOptimizerPass *self, uint32* pCount) GetOptionArgCount;
			public function HRESULT(IDxcOptimizerPass *self, uint32 argIndex, PWSTR* ppResult) GetOptionArgName;
			public function HRESULT(IDxcOptimizerPass *self, uint32 argIndex, PWSTR* ppResult) GetOptionArgDescription;
		}
		[CRepr]
		public struct IDxcOptimizer : IUnknown
		{
			public const new Guid IID = .(0x25740e2e, 0x9cba, 0x401b, 0x91, 0x19, 0x4f, 0xb4, 0x2f, 0x39, 0xf2, 0x70);
			
			public function HRESULT(IDxcOptimizer *self, uint32* pCount) GetAvailablePassCount;
			public function HRESULT(IDxcOptimizer *self, uint32 index, IDxcOptimizerPass** ppResult) GetAvailablePass;
			public function HRESULT(IDxcOptimizer *self, IDxcBlob* pBlob, PWSTR* ppOptions, uint32 optionCount, IDxcBlob** pOutputModule, IDxcBlobEncoding** ppOutputText) RunOptimizer;
		}
		[CRepr]
		public struct IDxcVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xb04f5b50, 0x2059, 0x4f12, 0xa8, 0xff, 0xa1, 0xe0, 0xcd, 0xe1, 0xcc, 0x7e);
			
			public function HRESULT(IDxcVersionInfo *self, uint32* pMajor, uint32* pMinor) GetVersion;
			public function HRESULT(IDxcVersionInfo *self, uint32* pFlags) GetFlags;
		}
		[CRepr]
		public struct IDxcVersionInfo2 : IDxcVersionInfo
		{
			public const new Guid IID = .(0xfb6904c4, 0x42f0, 0x4b62, 0x9c, 0x46, 0x98, 0x3a, 0xf7, 0xda, 0x7c, 0x83);
			
			public function HRESULT(IDxcVersionInfo2 *self, uint32* pCommitCount, int8** pCommitHash) GetCommitInfo;
		}
		[CRepr]
		public struct IDxcVersionInfo3 : IUnknown
		{
			public const new Guid IID = .(0x5e13e843, 0x9d25, 0x473c, 0x9a, 0xd2, 0x03, 0xb2, 0xd0, 0xb4, 0x4b, 0x1e);
			
			public function HRESULT(IDxcVersionInfo3 *self, int8** pVersionString) GetCustomVersionString;
		}
		[CRepr]
		public struct IDxcPdbUtils : IUnknown
		{
			public const new Guid IID = .(0xe6c9647e, 0x9d6a, 0x4c3b, 0xb9, 0x4c, 0x52, 0x4b, 0x5a, 0x6c, 0x34, 0x3d);
			
			public function HRESULT(IDxcPdbUtils *self, IDxcBlob* pPdbOrDxil) Load;
			public function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetSourceCount;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, IDxcBlobEncoding** ppResult) GetSource;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetSourceName;
			public function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetFlagCount;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetFlag;
			public function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetArgCount;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetArg;
			public function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetArgPairCount;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pName, BSTR* pValue) GetArgPair;
			public function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetDefineCount;
			public function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetDefine;
			public function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetTargetProfile;
			public function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetEntryPoint;
			public function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetMainFileName;
			public function HRESULT(IDxcPdbUtils *self, IDxcBlob** ppResult) GetHash;
			public function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetName;
			public function BOOL(IDxcPdbUtils *self) IsFullPDB;
			public function HRESULT(IDxcPdbUtils *self, IDxcBlob** ppFullPDB) GetFullPDB;
			public function HRESULT(IDxcPdbUtils *self, IDxcVersionInfo** ppVersionInfo) GetVersionInfo;
			public function HRESULT(IDxcPdbUtils *self, IDxcCompiler3* pCompiler) SetCompiler;
			public function HRESULT(IDxcPdbUtils *self, IDxcResult** ppResult) CompileForFullPDB;
			public function HRESULT(IDxcPdbUtils *self, DxcArgPair* pArgPairs, uint32 uNumArgPairs) OverrideArgs;
			public function HRESULT(IDxcPdbUtils *self, PWSTR pRootSignature) OverrideRootSignature;
		}
		
		// --- Functions ---
		
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance(Guid* rclsid, Guid* riid, void** ppv);
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance2(IMalloc* pMalloc, Guid* rclsid, Guid* riid, void** ppv);
		
	}
}
