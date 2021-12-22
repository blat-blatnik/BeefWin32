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
		
		public enum DXC_CP : uint32
		{
			ACP = 0,
			UTF16 = 1200,
			UTF8 = 65001,
		}
		public enum DXC_OUT_KIND : int32
		{
			NONE = 0,
			OBJECT = 1,
			ERRORS = 2,
			PDB = 3,
			SHADER_HASH = 4,
			DISASSEMBLY = 5,
			HLSL = 6,
			TEXT = 7,
			REFLECTION = 8,
			ROOT_SIGNATURE = 9,
			EXTRA_OUTPUTS = 10,
			FORCE_DWORD = -1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public void* GetBufferPointer() mut
			{
				return VT.GetBufferPointer(&this);
			}
			public uint GetBufferSize() mut
			{
				return VT.GetBufferSize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void*(IDxcBlob *self) GetBufferPointer;
				public new function uint(IDxcBlob *self) GetBufferSize;
			}
		}
		[CRepr]
		public struct IDxcBlobEncoding : IDxcBlob
		{
			public const new Guid IID = .(0x7241d424, 0x2646, 0x4191, 0x97, 0xc0, 0x98, 0xe9, 0x6e, 0x42, 0xfc, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEncoding(BOOL* pKnown, DXC_CP* pCodePage) mut
			{
				return VT.GetEncoding(&this, pKnown, pCodePage);
			}
			[CRepr]
			public struct VTable : IDxcBlob.VTable
			{
				public new function HRESULT(IDxcBlobEncoding *self, BOOL* pKnown, DXC_CP* pCodePage) GetEncoding;
			}
		}
		[CRepr]
		public struct IDxcBlobUtf16 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0xa3f84eab, 0x0faa, 0x497e, 0xa3, 0x9c, 0xee, 0x6e, 0xd6, 0x0b, 0x2d, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public PWSTR GetStringPointer() mut
			{
				return VT.GetStringPointer(&this);
			}
			public uint GetStringLength() mut
			{
				return VT.GetStringLength(&this);
			}
			[CRepr]
			public struct VTable : IDxcBlobEncoding.VTable
			{
				public new function PWSTR(IDxcBlobUtf16 *self) GetStringPointer;
				public new function uint(IDxcBlobUtf16 *self) GetStringLength;
			}
		}
		[CRepr]
		public struct IDxcBlobUtf8 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0x3da636c9, 0xba71, 0x4024, 0xa3, 0x01, 0x30, 0xcb, 0xf1, 0x25, 0x30, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public PSTR GetStringPointer() mut
			{
				return VT.GetStringPointer(&this);
			}
			public uint GetStringLength() mut
			{
				return VT.GetStringLength(&this);
			}
			[CRepr]
			public struct VTable : IDxcBlobEncoding.VTable
			{
				public new function PSTR(IDxcBlobUtf8 *self) GetStringPointer;
				public new function uint(IDxcBlobUtf8 *self) GetStringLength;
			}
		}
		[CRepr]
		public struct IDxcIncludeHandler : IUnknown
		{
			public const new Guid IID = .(0x7f61fc7d, 0x950d, 0x467f, 0xb3, 0xe3, 0x3c, 0x02, 0xfb, 0x49, 0x18, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadSource(PWSTR pFilename, IDxcBlob** ppIncludeSource) mut
			{
				return VT.LoadSource(&this, pFilename, ppIncludeSource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcIncludeHandler *self, PWSTR pFilename, IDxcBlob** ppIncludeSource) LoadSource;
			}
		}
		[CRepr]
		public struct IDxcCompilerArgs : IUnknown
		{
			public const new Guid IID = .(0x73effe2a, 0x70dc, 0x45f8, 0x96, 0x90, 0xef, 0xf6, 0x4c, 0x02, 0x42, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public PWSTR* GetArguments() mut
			{
				return VT.GetArguments(&this);
			}
			public uint32 GetCount() mut
			{
				return VT.GetCount(&this);
			}
			public HRESULT AddArguments(PWSTR* pArguments, uint32 argCount) mut
			{
				return VT.AddArguments(&this, pArguments, argCount);
			}
			public HRESULT AddArgumentsUTF8(PSTR* pArguments, uint32 argCount) mut
			{
				return VT.AddArgumentsUTF8(&this, pArguments, argCount);
			}
			public HRESULT AddDefines(DxcDefine* pDefines, uint32 defineCount) mut
			{
				return VT.AddDefines(&this, pDefines, defineCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function PWSTR*(IDxcCompilerArgs *self) GetArguments;
				public new function uint32(IDxcCompilerArgs *self) GetCount;
				public new function HRESULT(IDxcCompilerArgs *self, PWSTR* pArguments, uint32 argCount) AddArguments;
				public new function HRESULT(IDxcCompilerArgs *self, PSTR* pArguments, uint32 argCount) AddArgumentsUTF8;
				public new function HRESULT(IDxcCompilerArgs *self, DxcDefine* pDefines, uint32 defineCount) AddDefines;
			}
		}
		[CRepr]
		public struct IDxcLibrary : IUnknown
		{
			public const new Guid IID = .(0xe5204dc7, 0xd18c, 0x4c3c, 0xbd, 0xfb, 0x85, 0x16, 0x73, 0x98, 0x0f, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMalloc(IMalloc* pMalloc) mut
			{
				return VT.SetMalloc(&this, pMalloc);
			}
			public HRESULT CreateBlobFromBlob(IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) mut
			{
				return VT.CreateBlobFromBlob(&this, pBlob, offset, length, ppResult);
			}
			public HRESULT CreateBlobFromFile(PWSTR pFileName, DXC_CP* codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlobFromFile(&this, pFileName, codePage, pBlobEncoding);
			}
			public HRESULT CreateBlobWithEncodingFromPinned(void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlobWithEncodingFromPinned(&this, pText, size, codePage, pBlobEncoding);
			}
			public HRESULT CreateBlobWithEncodingOnHeapCopy(void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlobWithEncodingOnHeapCopy(&this, pText, size, codePage, pBlobEncoding);
			}
			public HRESULT CreateBlobWithEncodingOnMalloc(void* pText, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlobWithEncodingOnMalloc(&this, pText, pIMalloc, size, codePage, pBlobEncoding);
			}
			public HRESULT CreateIncludeHandler(IDxcIncludeHandler** ppResult) mut
			{
				return VT.CreateIncludeHandler(&this, ppResult);
			}
			public HRESULT CreateStreamFromBlobReadOnly(IDxcBlob* pBlob, IStream** ppStream) mut
			{
				return VT.CreateStreamFromBlobReadOnly(&this, pBlob, ppStream);
			}
			public HRESULT GetBlobAsUtf8(IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.GetBlobAsUtf8(&this, pBlob, pBlobEncoding);
			}
			public HRESULT GetBlobAsUtf16(IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.GetBlobAsUtf16(&this, pBlob, pBlobEncoding);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcLibrary *self, IMalloc* pMalloc) SetMalloc;
				public new function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) CreateBlobFromBlob;
				public new function HRESULT(IDxcLibrary *self, PWSTR pFileName, DXC_CP* codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobFromFile;
				public new function HRESULT(IDxcLibrary *self, void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingFromPinned;
				public new function HRESULT(IDxcLibrary *self, void* pText, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingOnHeapCopy;
				public new function HRESULT(IDxcLibrary *self, void* pText, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobWithEncodingOnMalloc;
				public new function HRESULT(IDxcLibrary *self, IDxcIncludeHandler** ppResult) CreateIncludeHandler;
				public new function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IStream** ppStream) CreateStreamFromBlobReadOnly;
				public new function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) GetBlobAsUtf8;
				public new function HRESULT(IDxcLibrary *self, IDxcBlob* pBlob, IDxcBlobEncoding** pBlobEncoding) GetBlobAsUtf16;
			}
		}
		[CRepr]
		public struct IDxcOperationResult : IUnknown
		{
			public const new Guid IID = .(0xcedb484a, 0xd4e9, 0x445a, 0xb9, 0x91, 0xca, 0x21, 0xca, 0x15, 0x7d, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(HRESULT* pStatus) mut
			{
				return VT.GetStatus(&this, pStatus);
			}
			public HRESULT GetResult(IDxcBlob** ppResult) mut
			{
				return VT.GetResult(&this, ppResult);
			}
			public HRESULT GetErrorBuffer(IDxcBlobEncoding** ppErrors) mut
			{
				return VT.GetErrorBuffer(&this, ppErrors);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcOperationResult *self, HRESULT* pStatus) GetStatus;
				public new function HRESULT(IDxcOperationResult *self, IDxcBlob** ppResult) GetResult;
				public new function HRESULT(IDxcOperationResult *self, IDxcBlobEncoding** ppErrors) GetErrorBuffer;
			}
		}
		[CRepr]
		public struct IDxcCompiler : IUnknown
		{
			public const new Guid IID = .(0x8c210bf3, 0x011f, 0x4422, 0x8d, 0x70, 0x6f, 0x9a, 0xcb, 0x8d, 0xb6, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compile(IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) mut
			{
				return VT.Compile(&this, pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult);
			}
			public HRESULT Preprocess(IDxcBlob* pSource, PWSTR pSourceName, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) mut
			{
				return VT.Preprocess(&this, pSource, pSourceName, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult);
			}
			public HRESULT Disassemble(IDxcBlob* pSource, IDxcBlobEncoding** ppDisassembly) mut
			{
				return VT.Disassemble(&this, pSource, ppDisassembly);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) Compile;
				public new function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult) Preprocess;
				public new function HRESULT(IDxcCompiler *self, IDxcBlob* pSource, IDxcBlobEncoding** ppDisassembly) Disassemble;
			}
		}
		[CRepr]
		public struct IDxcCompiler2 : IDxcCompiler
		{
			public const new Guid IID = .(0xa005a9d9, 0xb8bb, 0x4594, 0xb5, 0xc9, 0x0e, 0x63, 0x3b, 0xec, 0x4d, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompileWithDebug(IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult, PWSTR* ppDebugBlobName, IDxcBlob** ppDebugBlob) mut
			{
				return VT.CompileWithDebug(&this, pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, ppResult, ppDebugBlobName, ppDebugBlob);
			}
			[CRepr]
			public struct VTable : IDxcCompiler.VTable
			{
				public new function HRESULT(IDxcCompiler2 *self, IDxcBlob* pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, IDxcOperationResult** ppResult, PWSTR* ppDebugBlobName, IDxcBlob** ppDebugBlob) CompileWithDebug;
			}
		}
		[CRepr]
		public struct IDxcLinker : IUnknown
		{
			public const new Guid IID = .(0xf1b5be2a, 0x62dd, 0x4327, 0xa1, 0xc2, 0x42, 0xac, 0x1e, 0x1e, 0x78, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterLibrary(PWSTR pLibName, IDxcBlob* pLib) mut
			{
				return VT.RegisterLibrary(&this, pLibName, pLib);
			}
			public HRESULT Link(PWSTR pEntryName, PWSTR pTargetProfile, PWSTR* pLibNames, uint32 libCount, PWSTR* pArguments, uint32 argCount, IDxcOperationResult** ppResult) mut
			{
				return VT.Link(&this, pEntryName, pTargetProfile, pLibNames, libCount, pArguments, argCount, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcLinker *self, PWSTR pLibName, IDxcBlob* pLib) RegisterLibrary;
				public new function HRESULT(IDxcLinker *self, PWSTR pEntryName, PWSTR pTargetProfile, PWSTR* pLibNames, uint32 libCount, PWSTR* pArguments, uint32 argCount, IDxcOperationResult** ppResult) Link;
			}
		}
		[CRepr]
		public struct IDxcUtils : IUnknown
		{
			public const new Guid IID = .(0x4605c4cb, 0x2019, 0x492a, 0xad, 0xa4, 0x65, 0xf2, 0x0b, 0xb7, 0xd6, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBlobFromBlob(IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) mut
			{
				return VT.CreateBlobFromBlob(&this, pBlob, offset, length, ppResult);
			}
			public HRESULT CreateBlobFromPinned(void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlobFromPinned(&this, pData, size, codePage, pBlobEncoding);
			}
			public HRESULT MoveToBlob(void* pData, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.MoveToBlob(&this, pData, pIMalloc, size, codePage, pBlobEncoding);
			}
			public HRESULT CreateBlob(void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.CreateBlob(&this, pData, size, codePage, pBlobEncoding);
			}
			public HRESULT LoadFile(PWSTR pFileName, DXC_CP* pCodePage, IDxcBlobEncoding** pBlobEncoding) mut
			{
				return VT.LoadFile(&this, pFileName, pCodePage, pBlobEncoding);
			}
			public HRESULT CreateReadOnlyStreamFromBlob(IDxcBlob* pBlob, IStream** ppStream) mut
			{
				return VT.CreateReadOnlyStreamFromBlob(&this, pBlob, ppStream);
			}
			public HRESULT CreateDefaultIncludeHandler(IDxcIncludeHandler** ppResult) mut
			{
				return VT.CreateDefaultIncludeHandler(&this, ppResult);
			}
			public HRESULT GetBlobAsUtf8(IDxcBlob* pBlob, IDxcBlobUtf8** pBlobEncoding) mut
			{
				return VT.GetBlobAsUtf8(&this, pBlob, pBlobEncoding);
			}
			public HRESULT GetBlobAsUtf16(IDxcBlob* pBlob, IDxcBlobUtf16** pBlobEncoding) mut
			{
				return VT.GetBlobAsUtf16(&this, pBlob, pBlobEncoding);
			}
			public HRESULT GetDxilContainerPart(DxcBuffer* pShader, uint32 DxcPart, void** ppPartData, uint32* pPartSizeInBytes) mut
			{
				return VT.GetDxilContainerPart(&this, pShader, DxcPart, ppPartData, pPartSizeInBytes);
			}
			public HRESULT CreateReflection(DxcBuffer* pData, Guid* iid, void** ppvReflection) mut
			{
				return VT.CreateReflection(&this, pData, iid, ppvReflection);
			}
			public HRESULT BuildArguments(PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcCompilerArgs** ppArgs) mut
			{
				return VT.BuildArguments(&this, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, ppArgs);
			}
			public HRESULT GetPDBContents(IDxcBlob* pPDBBlob, IDxcBlob** ppHash, IDxcBlob** ppContainer) mut
			{
				return VT.GetPDBContents(&this, pPDBBlob, ppHash, ppContainer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, uint32 offset, uint32 length, IDxcBlob** ppResult) CreateBlobFromBlob;
				public new function HRESULT(IDxcUtils *self, void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlobFromPinned;
				public new function HRESULT(IDxcUtils *self, void* pData, IMalloc* pIMalloc, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) MoveToBlob;
				public new function HRESULT(IDxcUtils *self, void* pData, uint32 size, DXC_CP codePage, IDxcBlobEncoding** pBlobEncoding) CreateBlob;
				public new function HRESULT(IDxcUtils *self, PWSTR pFileName, DXC_CP* pCodePage, IDxcBlobEncoding** pBlobEncoding) LoadFile;
				public new function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IStream** ppStream) CreateReadOnlyStreamFromBlob;
				public new function HRESULT(IDxcUtils *self, IDxcIncludeHandler** ppResult) CreateDefaultIncludeHandler;
				public new function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IDxcBlobUtf8** pBlobEncoding) GetBlobAsUtf8;
				public new function HRESULT(IDxcUtils *self, IDxcBlob* pBlob, IDxcBlobUtf16** pBlobEncoding) GetBlobAsUtf16;
				public new function HRESULT(IDxcUtils *self, DxcBuffer* pShader, uint32 DxcPart, void** ppPartData, uint32* pPartSizeInBytes) GetDxilContainerPart;
				public new function HRESULT(IDxcUtils *self, DxcBuffer* pData, Guid* iid, void** ppvReflection) CreateReflection;
				public new function HRESULT(IDxcUtils *self, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcCompilerArgs** ppArgs) BuildArguments;
				public new function HRESULT(IDxcUtils *self, IDxcBlob* pPDBBlob, IDxcBlob** ppHash, IDxcBlob** ppContainer) GetPDBContents;
			}
		}
		[CRepr]
		public struct IDxcResult : IDxcOperationResult
		{
			public const new Guid IID = .(0x58346cda, 0xdde7, 0x4497, 0x94, 0x61, 0x6f, 0x87, 0xaf, 0x5e, 0x06, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL HasOutput(DXC_OUT_KIND dxcOutKind) mut
			{
				return VT.HasOutput(&this, dxcOutKind);
			}
			public HRESULT GetOutput(DXC_OUT_KIND dxcOutKind, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputName) mut
			{
				return VT.GetOutput(&this, dxcOutKind, iid, ppvObject, ppOutputName);
			}
			public uint32 GetNumOutputs() mut
			{
				return VT.GetNumOutputs(&this);
			}
			public DXC_OUT_KIND GetOutputByIndex(uint32 Index) mut
			{
				return VT.GetOutputByIndex(&this, Index);
			}
			public DXC_OUT_KIND PrimaryOutput() mut
			{
				return VT.PrimaryOutput(&this);
			}
			[CRepr]
			public struct VTable : IDxcOperationResult.VTable
			{
				public new function BOOL(IDxcResult *self, DXC_OUT_KIND dxcOutKind) HasOutput;
				public new function HRESULT(IDxcResult *self, DXC_OUT_KIND dxcOutKind, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputName) GetOutput;
				public new function uint32(IDxcResult *self) GetNumOutputs;
				public new function DXC_OUT_KIND(IDxcResult *self, uint32 Index) GetOutputByIndex;
				public new function DXC_OUT_KIND(IDxcResult *self) PrimaryOutput;
			}
		}
		[CRepr]
		public struct IDxcExtraOutputs : IUnknown
		{
			public const new Guid IID = .(0x319b37a2, 0xa5c2, 0x494a, 0xa5, 0xde, 0x48, 0x01, 0xb2, 0xfa, 0xf9, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetOutputCount() mut
			{
				return VT.GetOutputCount(&this);
			}
			public HRESULT GetOutput(uint32 uIndex, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputType, IDxcBlobUtf16** ppOutputName) mut
			{
				return VT.GetOutput(&this, uIndex, iid, ppvObject, ppOutputType, ppOutputName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IDxcExtraOutputs *self) GetOutputCount;
				public new function HRESULT(IDxcExtraOutputs *self, uint32 uIndex, Guid* iid, void** ppvObject, IDxcBlobUtf16** ppOutputType, IDxcBlobUtf16** ppOutputName) GetOutput;
			}
		}
		[CRepr]
		public struct IDxcCompiler3 : IUnknown
		{
			public const new Guid IID = .(0x228b4687, 0x5a6a, 0x4730, 0x90, 0x0c, 0x97, 0x02, 0xb2, 0x20, 0x3f, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compile(DxcBuffer* pSource, PWSTR* pArguments, uint32 argCount, IDxcIncludeHandler* pIncludeHandler, Guid* riid, void** ppResult) mut
			{
				return VT.Compile(&this, pSource, pArguments, argCount, pIncludeHandler, riid, ppResult);
			}
			public HRESULT Disassemble(DxcBuffer* pObject, Guid* riid, void** ppResult) mut
			{
				return VT.Disassemble(&this, pObject, riid, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcCompiler3 *self, DxcBuffer* pSource, PWSTR* pArguments, uint32 argCount, IDxcIncludeHandler* pIncludeHandler, Guid* riid, void** ppResult) Compile;
				public new function HRESULT(IDxcCompiler3 *self, DxcBuffer* pObject, Guid* riid, void** ppResult) Disassemble;
			}
		}
		[CRepr]
		public struct IDxcValidator : IUnknown
		{
			public const new Guid IID = .(0xa6e82bd2, 0x1fd7, 0x4826, 0x98, 0x11, 0x28, 0x57, 0xe7, 0x97, 0xf4, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Validate(IDxcBlob* pShader, uint32 Flags, IDxcOperationResult** ppResult) mut
			{
				return VT.Validate(&this, pShader, Flags, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcValidator *self, IDxcBlob* pShader, uint32 Flags, IDxcOperationResult** ppResult) Validate;
			}
		}
		[CRepr]
		public struct IDxcValidator2 : IDxcValidator
		{
			public const new Guid IID = .(0x458e1fd1, 0xb1b2, 0x4750, 0xa6, 0xe1, 0x9c, 0x10, 0xf0, 0x3b, 0xed, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ValidateWithDebug(IDxcBlob* pShader, uint32 Flags, DxcBuffer* pOptDebugBitcode, IDxcOperationResult** ppResult) mut
			{
				return VT.ValidateWithDebug(&this, pShader, Flags, pOptDebugBitcode, ppResult);
			}
			[CRepr]
			public struct VTable : IDxcValidator.VTable
			{
				public new function HRESULT(IDxcValidator2 *self, IDxcBlob* pShader, uint32 Flags, DxcBuffer* pOptDebugBitcode, IDxcOperationResult** ppResult) ValidateWithDebug;
			}
		}
		[CRepr]
		public struct IDxcContainerBuilder : IUnknown
		{
			public const new Guid IID = .(0x334b1f50, 0x2292, 0x4b35, 0x99, 0xa1, 0x25, 0x58, 0x8d, 0x8c, 0x17, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(IDxcBlob* pDxilContainerHeader) mut
			{
				return VT.Load(&this, pDxilContainerHeader);
			}
			public HRESULT AddPart(uint32 fourCC, IDxcBlob* pSource) mut
			{
				return VT.AddPart(&this, fourCC, pSource);
			}
			public HRESULT RemovePart(uint32 fourCC) mut
			{
				return VT.RemovePart(&this, fourCC);
			}
			public HRESULT SerializeContainer(IDxcOperationResult** ppResult) mut
			{
				return VT.SerializeContainer(&this, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcContainerBuilder *self, IDxcBlob* pDxilContainerHeader) Load;
				public new function HRESULT(IDxcContainerBuilder *self, uint32 fourCC, IDxcBlob* pSource) AddPart;
				public new function HRESULT(IDxcContainerBuilder *self, uint32 fourCC) RemovePart;
				public new function HRESULT(IDxcContainerBuilder *self, IDxcOperationResult** ppResult) SerializeContainer;
			}
		}
		[CRepr]
		public struct IDxcAssembler : IUnknown
		{
			public const new Guid IID = .(0x091f7a26, 0x1c1f, 0x4948, 0x90, 0x4b, 0xe6, 0xe3, 0xa8, 0xa7, 0x71, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssembleToContainer(IDxcBlob* pShader, IDxcOperationResult** ppResult) mut
			{
				return VT.AssembleToContainer(&this, pShader, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcAssembler *self, IDxcBlob* pShader, IDxcOperationResult** ppResult) AssembleToContainer;
			}
		}
		[CRepr]
		public struct IDxcContainerReflection : IUnknown
		{
			public const new Guid IID = .(0xd2c21b26, 0x8350, 0x4bdc, 0x97, 0x6a, 0x33, 0x1c, 0xe6, 0xf4, 0xc5, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(IDxcBlob* pContainer) mut
			{
				return VT.Load(&this, pContainer);
			}
			public HRESULT GetPartCount(uint32* pResult) mut
			{
				return VT.GetPartCount(&this, pResult);
			}
			public HRESULT GetPartKind(uint32 idx, uint32* pResult) mut
			{
				return VT.GetPartKind(&this, idx, pResult);
			}
			public HRESULT GetPartContent(uint32 idx, IDxcBlob** ppResult) mut
			{
				return VT.GetPartContent(&this, idx, ppResult);
			}
			public HRESULT FindFirstPartKind(uint32 kind, uint32* pResult) mut
			{
				return VT.FindFirstPartKind(&this, kind, pResult);
			}
			public HRESULT GetPartReflection(uint32 idx, Guid* iid, void** ppvObject) mut
			{
				return VT.GetPartReflection(&this, idx, iid, ppvObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcContainerReflection *self, IDxcBlob* pContainer) Load;
				public new function HRESULT(IDxcContainerReflection *self, uint32* pResult) GetPartCount;
				public new function HRESULT(IDxcContainerReflection *self, uint32 idx, uint32* pResult) GetPartKind;
				public new function HRESULT(IDxcContainerReflection *self, uint32 idx, IDxcBlob** ppResult) GetPartContent;
				public new function HRESULT(IDxcContainerReflection *self, uint32 kind, uint32* pResult) FindFirstPartKind;
				public new function HRESULT(IDxcContainerReflection *self, uint32 idx, Guid* iid, void** ppvObject) GetPartReflection;
			}
		}
		[CRepr]
		public struct IDxcOptimizerPass : IUnknown
		{
			public const new Guid IID = .(0xae2cd79f, 0xcc22, 0x453f, 0x9b, 0x6b, 0xb1, 0x24, 0xe7, 0xa5, 0x20, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionName(PWSTR* ppResult) mut
			{
				return VT.GetOptionName(&this, ppResult);
			}
			public HRESULT GetDescription(PWSTR* ppResult) mut
			{
				return VT.GetDescription(&this, ppResult);
			}
			public HRESULT GetOptionArgCount(uint32* pCount) mut
			{
				return VT.GetOptionArgCount(&this, pCount);
			}
			public HRESULT GetOptionArgName(uint32 argIndex, PWSTR* ppResult) mut
			{
				return VT.GetOptionArgName(&this, argIndex, ppResult);
			}
			public HRESULT GetOptionArgDescription(uint32 argIndex, PWSTR* ppResult) mut
			{
				return VT.GetOptionArgDescription(&this, argIndex, ppResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcOptimizerPass *self, PWSTR* ppResult) GetOptionName;
				public new function HRESULT(IDxcOptimizerPass *self, PWSTR* ppResult) GetDescription;
				public new function HRESULT(IDxcOptimizerPass *self, uint32* pCount) GetOptionArgCount;
				public new function HRESULT(IDxcOptimizerPass *self, uint32 argIndex, PWSTR* ppResult) GetOptionArgName;
				public new function HRESULT(IDxcOptimizerPass *self, uint32 argIndex, PWSTR* ppResult) GetOptionArgDescription;
			}
		}
		[CRepr]
		public struct IDxcOptimizer : IUnknown
		{
			public const new Guid IID = .(0x25740e2e, 0x9cba, 0x401b, 0x91, 0x19, 0x4f, 0xb4, 0x2f, 0x39, 0xf2, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailablePassCount(uint32* pCount) mut
			{
				return VT.GetAvailablePassCount(&this, pCount);
			}
			public HRESULT GetAvailablePass(uint32 index, IDxcOptimizerPass** ppResult) mut
			{
				return VT.GetAvailablePass(&this, index, ppResult);
			}
			public HRESULT RunOptimizer(IDxcBlob* pBlob, PWSTR* ppOptions, uint32 optionCount, IDxcBlob** pOutputModule, IDxcBlobEncoding** ppOutputText) mut
			{
				return VT.RunOptimizer(&this, pBlob, ppOptions, optionCount, pOutputModule, ppOutputText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcOptimizer *self, uint32* pCount) GetAvailablePassCount;
				public new function HRESULT(IDxcOptimizer *self, uint32 index, IDxcOptimizerPass** ppResult) GetAvailablePass;
				public new function HRESULT(IDxcOptimizer *self, IDxcBlob* pBlob, PWSTR* ppOptions, uint32 optionCount, IDxcBlob** pOutputModule, IDxcBlobEncoding** ppOutputText) RunOptimizer;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xb04f5b50, 0x2059, 0x4f12, 0xa8, 0xff, 0xa1, 0xe0, 0xcd, 0xe1, 0xcc, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersion(uint32* pMajor, uint32* pMinor) mut
			{
				return VT.GetVersion(&this, pMajor, pMinor);
			}
			public HRESULT ComGetFlags(uint32* pFlags) mut
			{
				return VT.ComGetFlags(&this, pFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcVersionInfo *self, uint32* pMajor, uint32* pMinor) GetVersion;
				public new function HRESULT(IDxcVersionInfo *self, uint32* pFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo2 : IDxcVersionInfo
		{
			public const new Guid IID = .(0xfb6904c4, 0x42f0, 0x4b62, 0x9c, 0x46, 0x98, 0x3a, 0xf7, 0xda, 0x7c, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCommitInfo(uint32* pCommitCount, int8** pCommitHash) mut
			{
				return VT.GetCommitInfo(&this, pCommitCount, pCommitHash);
			}
			[CRepr]
			public struct VTable : IDxcVersionInfo.VTable
			{
				public new function HRESULT(IDxcVersionInfo2 *self, uint32* pCommitCount, int8** pCommitHash) GetCommitInfo;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo3 : IUnknown
		{
			public const new Guid IID = .(0x5e13e843, 0x9d25, 0x473c, 0x9a, 0xd2, 0x03, 0xb2, 0xd0, 0xb4, 0x4b, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCustomVersionString(int8** pVersionString) mut
			{
				return VT.GetCustomVersionString(&this, pVersionString);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcVersionInfo3 *self, int8** pVersionString) GetCustomVersionString;
			}
		}
		[CRepr]
		public struct IDxcPdbUtils : IUnknown
		{
			public const new Guid IID = .(0xe6c9647e, 0x9d6a, 0x4c3b, 0xb9, 0x4c, 0x52, 0x4b, 0x5a, 0x6c, 0x34, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(IDxcBlob* pPdbOrDxil) mut
			{
				return VT.Load(&this, pPdbOrDxil);
			}
			public HRESULT GetSourceCount(uint32* pCount) mut
			{
				return VT.GetSourceCount(&this, pCount);
			}
			public HRESULT GetSource(uint32 uIndex, IDxcBlobEncoding** ppResult) mut
			{
				return VT.GetSource(&this, uIndex, ppResult);
			}
			public HRESULT GetSourceName(uint32 uIndex, BSTR* pResult) mut
			{
				return VT.GetSourceName(&this, uIndex, pResult);
			}
			public HRESULT GetFlagCount(uint32* pCount) mut
			{
				return VT.GetFlagCount(&this, pCount);
			}
			public HRESULT GetFlag(uint32 uIndex, BSTR* pResult) mut
			{
				return VT.GetFlag(&this, uIndex, pResult);
			}
			public HRESULT GetArgCount(uint32* pCount) mut
			{
				return VT.GetArgCount(&this, pCount);
			}
			public HRESULT GetArg(uint32 uIndex, BSTR* pResult) mut
			{
				return VT.GetArg(&this, uIndex, pResult);
			}
			public HRESULT GetArgPairCount(uint32* pCount) mut
			{
				return VT.GetArgPairCount(&this, pCount);
			}
			public HRESULT GetArgPair(uint32 uIndex, BSTR* pName, BSTR* pValue) mut
			{
				return VT.GetArgPair(&this, uIndex, pName, pValue);
			}
			public HRESULT GetDefineCount(uint32* pCount) mut
			{
				return VT.GetDefineCount(&this, pCount);
			}
			public HRESULT GetDefine(uint32 uIndex, BSTR* pResult) mut
			{
				return VT.GetDefine(&this, uIndex, pResult);
			}
			public HRESULT GetTargetProfile(BSTR* pResult) mut
			{
				return VT.GetTargetProfile(&this, pResult);
			}
			public HRESULT GetEntryPoint(BSTR* pResult) mut
			{
				return VT.GetEntryPoint(&this, pResult);
			}
			public HRESULT GetMainFileName(BSTR* pResult) mut
			{
				return VT.GetMainFileName(&this, pResult);
			}
			public HRESULT GetHash(IDxcBlob** ppResult) mut
			{
				return VT.GetHash(&this, ppResult);
			}
			public HRESULT GetName(BSTR* pResult) mut
			{
				return VT.GetName(&this, pResult);
			}
			public BOOL IsFullPDB() mut
			{
				return VT.IsFullPDB(&this);
			}
			public HRESULT GetFullPDB(IDxcBlob** ppFullPDB) mut
			{
				return VT.GetFullPDB(&this, ppFullPDB);
			}
			public HRESULT GetVersionInfo(IDxcVersionInfo** ppVersionInfo) mut
			{
				return VT.GetVersionInfo(&this, ppVersionInfo);
			}
			public HRESULT SetCompiler(IDxcCompiler3* pCompiler) mut
			{
				return VT.SetCompiler(&this, pCompiler);
			}
			public HRESULT CompileForFullPDB(IDxcResult** ppResult) mut
			{
				return VT.CompileForFullPDB(&this, ppResult);
			}
			public HRESULT OverrideArgs(DxcArgPair* pArgPairs, uint32 uNumArgPairs) mut
			{
				return VT.OverrideArgs(&this, pArgPairs, uNumArgPairs);
			}
			public HRESULT OverrideRootSignature(PWSTR pRootSignature) mut
			{
				return VT.OverrideRootSignature(&this, pRootSignature);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDxcPdbUtils *self, IDxcBlob* pPdbOrDxil) Load;
				public new function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetSourceCount;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, IDxcBlobEncoding** ppResult) GetSource;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetSourceName;
				public new function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetFlagCount;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetFlag;
				public new function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetArgCount;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetArg;
				public new function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetArgPairCount;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pName, BSTR* pValue) GetArgPair;
				public new function HRESULT(IDxcPdbUtils *self, uint32* pCount) GetDefineCount;
				public new function HRESULT(IDxcPdbUtils *self, uint32 uIndex, BSTR* pResult) GetDefine;
				public new function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetTargetProfile;
				public new function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetEntryPoint;
				public new function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetMainFileName;
				public new function HRESULT(IDxcPdbUtils *self, IDxcBlob** ppResult) GetHash;
				public new function HRESULT(IDxcPdbUtils *self, BSTR* pResult) GetName;
				public new function BOOL(IDxcPdbUtils *self) IsFullPDB;
				public new function HRESULT(IDxcPdbUtils *self, IDxcBlob** ppFullPDB) GetFullPDB;
				public new function HRESULT(IDxcPdbUtils *self, IDxcVersionInfo** ppVersionInfo) GetVersionInfo;
				public new function HRESULT(IDxcPdbUtils *self, IDxcCompiler3* pCompiler) SetCompiler;
				public new function HRESULT(IDxcPdbUtils *self, IDxcResult** ppResult) CompileForFullPDB;
				public new function HRESULT(IDxcPdbUtils *self, DxcArgPair* pArgPairs, uint32 uNumArgPairs) OverrideArgs;
				public new function HRESULT(IDxcPdbUtils *self, PWSTR pRootSignature) OverrideRootSignature;
			}
		}
		
		// --- Functions ---
		
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance(Guid* rclsid, Guid* riid, void** ppv);
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance2(IMalloc* pMalloc, Guid* rclsid, Guid* riid, void** ppv);
		
	}
}
