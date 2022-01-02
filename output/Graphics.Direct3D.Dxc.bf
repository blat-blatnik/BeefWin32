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
		
		public function HRESULT DxcCreateInstanceProc(in Guid rclsid, in Guid riid, void** ppv);
		public function HRESULT DxcCreateInstance2Proc(ref IMalloc pMalloc, in Guid rclsid, in Guid riid, void** ppv);
		
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
			
			public void* GetBufferPointer() mut => VT.GetBufferPointer(ref this);
			public uint GetBufferSize() mut => VT.GetBufferSize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void*(ref IDxcBlob self) GetBufferPointer;
				public new function [CallingConvention(.Stdcall)] uint(ref IDxcBlob self) GetBufferSize;
			}
		}
		[CRepr]
		public struct IDxcBlobEncoding : IDxcBlob
		{
			public const new Guid IID = .(0x7241d424, 0x2646, 0x4191, 0x97, 0xc0, 0x98, 0xe9, 0x6e, 0x42, 0xfc, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEncoding(out BOOL pKnown, out DXC_CP pCodePage) mut => VT.GetEncoding(ref this, out pKnown, out pCodePage);

			[CRepr]
			public struct VTable : IDxcBlob.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcBlobEncoding self, out BOOL pKnown, out DXC_CP pCodePage) GetEncoding;
			}
		}
		[CRepr]
		public struct IDxcBlobUtf16 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0xa3f84eab, 0x0faa, 0x497e, 0xa3, 0x9c, 0xee, 0x6e, 0xd6, 0x0b, 0x2d, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public PWSTR GetStringPointer() mut => VT.GetStringPointer(ref this);
			public uint GetStringLength() mut => VT.GetStringLength(ref this);

			[CRepr]
			public struct VTable : IDxcBlobEncoding.VTable
			{
				public new function [CallingConvention(.Stdcall)] PWSTR(ref IDxcBlobUtf16 self) GetStringPointer;
				public new function [CallingConvention(.Stdcall)] uint(ref IDxcBlobUtf16 self) GetStringLength;
			}
		}
		[CRepr]
		public struct IDxcBlobUtf8 : IDxcBlobEncoding
		{
			public const new Guid IID = .(0x3da636c9, 0xba71, 0x4024, 0xa3, 0x01, 0x30, 0xcb, 0xf1, 0x25, 0x30, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public PSTR GetStringPointer() mut => VT.GetStringPointer(ref this);
			public uint GetStringLength() mut => VT.GetStringLength(ref this);

			[CRepr]
			public struct VTable : IDxcBlobEncoding.VTable
			{
				public new function [CallingConvention(.Stdcall)] PSTR(ref IDxcBlobUtf8 self) GetStringPointer;
				public new function [CallingConvention(.Stdcall)] uint(ref IDxcBlobUtf8 self) GetStringLength;
			}
		}
		[CRepr]
		public struct IDxcIncludeHandler : IUnknown
		{
			public const new Guid IID = .(0x7f61fc7d, 0x950d, 0x467f, 0xb3, 0xe3, 0x3c, 0x02, 0xfb, 0x49, 0x18, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadSource(PWSTR pFilename, IDxcBlob** ppIncludeSource) mut => VT.LoadSource(ref this, pFilename, ppIncludeSource);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcIncludeHandler self, PWSTR pFilename, IDxcBlob** ppIncludeSource) LoadSource;
			}
		}
		[CRepr]
		public struct IDxcCompilerArgs : IUnknown
		{
			public const new Guid IID = .(0x73effe2a, 0x70dc, 0x45f8, 0x96, 0x90, 0xef, 0xf6, 0x4c, 0x02, 0x42, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public PWSTR* GetArguments() mut => VT.GetArguments(ref this);
			public uint32 GetCount() mut => VT.GetCount(ref this);
			public HRESULT AddArguments(PWSTR* pArguments, uint32 argCount) mut => VT.AddArguments(ref this, pArguments, argCount);
			public HRESULT AddArgumentsUTF8(PSTR* pArguments, uint32 argCount) mut => VT.AddArgumentsUTF8(ref this, pArguments, argCount);
			public HRESULT AddDefines(DxcDefine* pDefines, uint32 defineCount) mut => VT.AddDefines(ref this, pDefines, defineCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] PWSTR*(ref IDxcCompilerArgs self) GetArguments;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDxcCompilerArgs self) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompilerArgs self, PWSTR* pArguments, uint32 argCount) AddArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompilerArgs self, PSTR* pArguments, uint32 argCount) AddArgumentsUTF8;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompilerArgs self, DxcDefine* pDefines, uint32 defineCount) AddDefines;
			}
		}
		[CRepr]
		public struct IDxcLibrary : IUnknown
		{
			public const new Guid IID = .(0xe5204dc7, 0xd18c, 0x4c3c, 0xbd, 0xfb, 0x85, 0x16, 0x73, 0x98, 0x0f, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMalloc(IMalloc* pMalloc) mut => VT.SetMalloc(ref this, pMalloc);
			public HRESULT CreateBlobFromBlob(ref IDxcBlob pBlob, uint32 offset, uint32 length, out IDxcBlob* ppResult) mut => VT.CreateBlobFromBlob(ref this, ref pBlob, offset, length, out ppResult);
			public HRESULT CreateBlobFromFile(PWSTR pFileName, DXC_CP* codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlobFromFile(ref this, pFileName, codePage, out pBlobEncoding);
			public HRESULT CreateBlobWithEncodingFromPinned(void* pText, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlobWithEncodingFromPinned(ref this, pText, size, codePage, out pBlobEncoding);
			public HRESULT CreateBlobWithEncodingOnHeapCopy(void* pText, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlobWithEncodingOnHeapCopy(ref this, pText, size, codePage, out pBlobEncoding);
			public HRESULT CreateBlobWithEncodingOnMalloc(void* pText, ref IMalloc pIMalloc, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlobWithEncodingOnMalloc(ref this, pText, ref pIMalloc, size, codePage, out pBlobEncoding);
			public HRESULT CreateIncludeHandler(out IDxcIncludeHandler* ppResult) mut => VT.CreateIncludeHandler(ref this, out ppResult);
			public HRESULT CreateStreamFromBlobReadOnly(ref IDxcBlob pBlob, out IStream* ppStream) mut => VT.CreateStreamFromBlobReadOnly(ref this, ref pBlob, out ppStream);
			public HRESULT GetBlobAsUtf8(ref IDxcBlob pBlob, out IDxcBlobEncoding* pBlobEncoding) mut => VT.GetBlobAsUtf8(ref this, ref pBlob, out pBlobEncoding);
			public HRESULT GetBlobAsUtf16(ref IDxcBlob pBlob, out IDxcBlobEncoding* pBlobEncoding) mut => VT.GetBlobAsUtf16(ref this, ref pBlob, out pBlobEncoding);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, IMalloc* pMalloc) SetMalloc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, ref IDxcBlob pBlob, uint32 offset, uint32 length, out IDxcBlob* ppResult) CreateBlobFromBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, PWSTR pFileName, DXC_CP* codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlobFromFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, void* pText, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlobWithEncodingFromPinned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, void* pText, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlobWithEncodingOnHeapCopy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, void* pText, ref IMalloc pIMalloc, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlobWithEncodingOnMalloc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, out IDxcIncludeHandler* ppResult) CreateIncludeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, ref IDxcBlob pBlob, out IStream* ppStream) CreateStreamFromBlobReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, ref IDxcBlob pBlob, out IDxcBlobEncoding* pBlobEncoding) GetBlobAsUtf8;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLibrary self, ref IDxcBlob pBlob, out IDxcBlobEncoding* pBlobEncoding) GetBlobAsUtf16;
			}
		}
		[CRepr]
		public struct IDxcOperationResult : IUnknown
		{
			public const new Guid IID = .(0xcedb484a, 0xd4e9, 0x445a, 0xb9, 0x91, 0xca, 0x21, 0xca, 0x15, 0x7d, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(out HRESULT pStatus) mut => VT.GetStatus(ref this, out pStatus);
			public HRESULT GetResult(IDxcBlob** ppResult) mut => VT.GetResult(ref this, ppResult);
			public HRESULT GetErrorBuffer(IDxcBlobEncoding** ppErrors) mut => VT.GetErrorBuffer(ref this, ppErrors);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOperationResult self, out HRESULT pStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOperationResult self, IDxcBlob** ppResult) GetResult;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOperationResult self, IDxcBlobEncoding** ppErrors) GetErrorBuffer;
			}
		}
		[CRepr]
		public struct IDxcCompiler : IUnknown
		{
			public const new Guid IID = .(0x8c210bf3, 0x011f, 0x4422, 0x8d, 0x70, 0x6f, 0x9a, 0xcb, 0x8d, 0xb6, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compile(ref IDxcBlob pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult) mut => VT.Compile(ref this, ref pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, out ppResult);
			public HRESULT Preprocess(ref IDxcBlob pSource, PWSTR pSourceName, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult) mut => VT.Preprocess(ref this, ref pSource, pSourceName, pArguments, argCount, pDefines, defineCount, pIncludeHandler, out ppResult);
			public HRESULT Disassemble(ref IDxcBlob pSource, out IDxcBlobEncoding* ppDisassembly) mut => VT.Disassemble(ref this, ref pSource, out ppDisassembly);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler self, ref IDxcBlob pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult) Compile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler self, ref IDxcBlob pSource, PWSTR pSourceName, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult) Preprocess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler self, ref IDxcBlob pSource, out IDxcBlobEncoding* ppDisassembly) Disassemble;
			}
		}
		[CRepr]
		public struct IDxcCompiler2 : IDxcCompiler
		{
			public const new Guid IID = .(0xa005a9d9, 0xb8bb, 0x4594, 0xb5, 0xc9, 0x0e, 0x63, 0x3b, 0xec, 0x4d, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompileWithDebug(ref IDxcBlob pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult, PWSTR* ppDebugBlobName, IDxcBlob** ppDebugBlob) mut => VT.CompileWithDebug(ref this, ref pSource, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, pIncludeHandler, out ppResult, ppDebugBlobName, ppDebugBlob);

			[CRepr]
			public struct VTable : IDxcCompiler.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler2 self, ref IDxcBlob pSource, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, IDxcIncludeHandler* pIncludeHandler, out IDxcOperationResult* ppResult, PWSTR* ppDebugBlobName, IDxcBlob** ppDebugBlob) CompileWithDebug;
			}
		}
		[CRepr]
		public struct IDxcLinker : IUnknown
		{
			public const new Guid IID = .(0xf1b5be2a, 0x62dd, 0x4327, 0xa1, 0xc2, 0x42, 0xac, 0x1e, 0x1e, 0x78, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterLibrary(PWSTR pLibName, ref IDxcBlob pLib) mut => VT.RegisterLibrary(ref this, pLibName, ref pLib);
			public HRESULT Link(PWSTR pEntryName, PWSTR pTargetProfile, PWSTR* pLibNames, uint32 libCount, PWSTR* pArguments, uint32 argCount, out IDxcOperationResult* ppResult) mut => VT.Link(ref this, pEntryName, pTargetProfile, pLibNames, libCount, pArguments, argCount, out ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLinker self, PWSTR pLibName, ref IDxcBlob pLib) RegisterLibrary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcLinker self, PWSTR pEntryName, PWSTR pTargetProfile, PWSTR* pLibNames, uint32 libCount, PWSTR* pArguments, uint32 argCount, out IDxcOperationResult* ppResult) Link;
			}
		}
		[CRepr]
		public struct IDxcUtils : IUnknown
		{
			public const new Guid IID = .(0x4605c4cb, 0x2019, 0x492a, 0xad, 0xa4, 0x65, 0xf2, 0x0b, 0xb7, 0xd6, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBlobFromBlob(ref IDxcBlob pBlob, uint32 offset, uint32 length, out IDxcBlob* ppResult) mut => VT.CreateBlobFromBlob(ref this, ref pBlob, offset, length, out ppResult);
			public HRESULT CreateBlobFromPinned(void* pData, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlobFromPinned(ref this, pData, size, codePage, out pBlobEncoding);
			public HRESULT MoveToBlob(void* pData, ref IMalloc pIMalloc, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.MoveToBlob(ref this, pData, ref pIMalloc, size, codePage, out pBlobEncoding);
			public HRESULT CreateBlob(void* pData, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.CreateBlob(ref this, pData, size, codePage, out pBlobEncoding);
			public HRESULT LoadFile(PWSTR pFileName, DXC_CP* pCodePage, out IDxcBlobEncoding* pBlobEncoding) mut => VT.LoadFile(ref this, pFileName, pCodePage, out pBlobEncoding);
			public HRESULT CreateReadOnlyStreamFromBlob(ref IDxcBlob pBlob, out IStream* ppStream) mut => VT.CreateReadOnlyStreamFromBlob(ref this, ref pBlob, out ppStream);
			public HRESULT CreateDefaultIncludeHandler(out IDxcIncludeHandler* ppResult) mut => VT.CreateDefaultIncludeHandler(ref this, out ppResult);
			public HRESULT GetBlobAsUtf8(ref IDxcBlob pBlob, out IDxcBlobUtf8* pBlobEncoding) mut => VT.GetBlobAsUtf8(ref this, ref pBlob, out pBlobEncoding);
			public HRESULT GetBlobAsUtf16(ref IDxcBlob pBlob, out IDxcBlobUtf16* pBlobEncoding) mut => VT.GetBlobAsUtf16(ref this, ref pBlob, out pBlobEncoding);
			public HRESULT GetDxilContainerPart(in DxcBuffer pShader, uint32 DxcPart, void** ppPartData, out uint32 pPartSizeInBytes) mut => VT.GetDxilContainerPart(ref this, pShader, DxcPart, ppPartData, out pPartSizeInBytes);
			public HRESULT CreateReflection(in DxcBuffer pData, in Guid iid, void** ppvReflection) mut => VT.CreateReflection(ref this, pData, iid, ppvReflection);
			public HRESULT BuildArguments(PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, out IDxcCompilerArgs* ppArgs) mut => VT.BuildArguments(ref this, pSourceName, pEntryPoint, pTargetProfile, pArguments, argCount, pDefines, defineCount, out ppArgs);
			public HRESULT GetPDBContents(ref IDxcBlob pPDBBlob, out IDxcBlob* ppHash, out IDxcBlob* ppContainer) mut => VT.GetPDBContents(ref this, ref pPDBBlob, out ppHash, out ppContainer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, ref IDxcBlob pBlob, uint32 offset, uint32 length, out IDxcBlob* ppResult) CreateBlobFromBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, void* pData, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlobFromPinned;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, void* pData, ref IMalloc pIMalloc, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) MoveToBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, void* pData, uint32 size, DXC_CP codePage, out IDxcBlobEncoding* pBlobEncoding) CreateBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, PWSTR pFileName, DXC_CP* pCodePage, out IDxcBlobEncoding* pBlobEncoding) LoadFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, ref IDxcBlob pBlob, out IStream* ppStream) CreateReadOnlyStreamFromBlob;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, out IDxcIncludeHandler* ppResult) CreateDefaultIncludeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, ref IDxcBlob pBlob, out IDxcBlobUtf8* pBlobEncoding) GetBlobAsUtf8;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, ref IDxcBlob pBlob, out IDxcBlobUtf16* pBlobEncoding) GetBlobAsUtf16;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, in DxcBuffer pShader, uint32 DxcPart, void** ppPartData, out uint32 pPartSizeInBytes) GetDxilContainerPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, in DxcBuffer pData, in Guid iid, void** ppvReflection) CreateReflection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, PWSTR pSourceName, PWSTR pEntryPoint, PWSTR pTargetProfile, PWSTR* pArguments, uint32 argCount, DxcDefine* pDefines, uint32 defineCount, out IDxcCompilerArgs* ppArgs) BuildArguments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcUtils self, ref IDxcBlob pPDBBlob, out IDxcBlob* ppHash, out IDxcBlob* ppContainer) GetPDBContents;
			}
		}
		[CRepr]
		public struct IDxcResult : IDxcOperationResult
		{
			public const new Guid IID = .(0x58346cda, 0xdde7, 0x4497, 0x94, 0x61, 0x6f, 0x87, 0xaf, 0x5e, 0x06, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL HasOutput(DXC_OUT_KIND dxcOutKind) mut => VT.HasOutput(ref this, dxcOutKind);
			public HRESULT GetOutput(DXC_OUT_KIND dxcOutKind, in Guid iid, void** ppvObject, out IDxcBlobUtf16* ppOutputName) mut => VT.GetOutput(ref this, dxcOutKind, iid, ppvObject, out ppOutputName);
			public uint32 GetNumOutputs() mut => VT.GetNumOutputs(ref this);
			public DXC_OUT_KIND GetOutputByIndex(uint32 Index) mut => VT.GetOutputByIndex(ref this, Index);
			public DXC_OUT_KIND PrimaryOutput() mut => VT.PrimaryOutput(ref this);

			[CRepr]
			public struct VTable : IDxcOperationResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] BOOL(ref IDxcResult self, DXC_OUT_KIND dxcOutKind) HasOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcResult self, DXC_OUT_KIND dxcOutKind, in Guid iid, void** ppvObject, out IDxcBlobUtf16* ppOutputName) GetOutput;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDxcResult self) GetNumOutputs;
				public new function [CallingConvention(.Stdcall)] DXC_OUT_KIND(ref IDxcResult self, uint32 Index) GetOutputByIndex;
				public new function [CallingConvention(.Stdcall)] DXC_OUT_KIND(ref IDxcResult self) PrimaryOutput;
			}
		}
		[CRepr]
		public struct IDxcExtraOutputs : IUnknown
		{
			public const new Guid IID = .(0x319b37a2, 0xa5c2, 0x494a, 0xa5, 0xde, 0x48, 0x01, 0xb2, 0xfa, 0xf9, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetOutputCount() mut => VT.GetOutputCount(ref this);
			public HRESULT GetOutput(uint32 uIndex, in Guid iid, void** ppvObject, IDxcBlobUtf16** ppOutputType, IDxcBlobUtf16** ppOutputName) mut => VT.GetOutput(ref this, uIndex, iid, ppvObject, ppOutputType, ppOutputName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDxcExtraOutputs self) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcExtraOutputs self, uint32 uIndex, in Guid iid, void** ppvObject, IDxcBlobUtf16** ppOutputType, IDxcBlobUtf16** ppOutputName) GetOutput;
			}
		}
		[CRepr]
		public struct IDxcCompiler3 : IUnknown
		{
			public const new Guid IID = .(0x228b4687, 0x5a6a, 0x4730, 0x90, 0x0c, 0x97, 0x02, 0xb2, 0x20, 0x3f, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compile(in DxcBuffer pSource, PWSTR* pArguments, uint32 argCount, IDxcIncludeHandler* pIncludeHandler, in Guid riid, void** ppResult) mut => VT.Compile(ref this, pSource, pArguments, argCount, pIncludeHandler, riid, ppResult);
			public HRESULT Disassemble(in DxcBuffer pObject, in Guid riid, void** ppResult) mut => VT.Disassemble(ref this, pObject, riid, ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler3 self, in DxcBuffer pSource, PWSTR* pArguments, uint32 argCount, IDxcIncludeHandler* pIncludeHandler, in Guid riid, void** ppResult) Compile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcCompiler3 self, in DxcBuffer pObject, in Guid riid, void** ppResult) Disassemble;
			}
		}
		[CRepr]
		public struct IDxcValidator : IUnknown
		{
			public const new Guid IID = .(0xa6e82bd2, 0x1fd7, 0x4826, 0x98, 0x11, 0x28, 0x57, 0xe7, 0x97, 0xf4, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Validate(ref IDxcBlob pShader, uint32 Flags, out IDxcOperationResult* ppResult) mut => VT.Validate(ref this, ref pShader, Flags, out ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcValidator self, ref IDxcBlob pShader, uint32 Flags, out IDxcOperationResult* ppResult) Validate;
			}
		}
		[CRepr]
		public struct IDxcValidator2 : IDxcValidator
		{
			public const new Guid IID = .(0x458e1fd1, 0xb1b2, 0x4750, 0xa6, 0xe1, 0x9c, 0x10, 0xf0, 0x3b, 0xed, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ValidateWithDebug(ref IDxcBlob pShader, uint32 Flags, DxcBuffer* pOptDebugBitcode, out IDxcOperationResult* ppResult) mut => VT.ValidateWithDebug(ref this, ref pShader, Flags, pOptDebugBitcode, out ppResult);

			[CRepr]
			public struct VTable : IDxcValidator.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcValidator2 self, ref IDxcBlob pShader, uint32 Flags, DxcBuffer* pOptDebugBitcode, out IDxcOperationResult* ppResult) ValidateWithDebug;
			}
		}
		[CRepr]
		public struct IDxcContainerBuilder : IUnknown
		{
			public const new Guid IID = .(0x334b1f50, 0x2292, 0x4b35, 0x99, 0xa1, 0x25, 0x58, 0x8d, 0x8c, 0x17, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(ref IDxcBlob pDxilContainerHeader) mut => VT.Load(ref this, ref pDxilContainerHeader);
			public HRESULT AddPart(uint32 fourCC, ref IDxcBlob pSource) mut => VT.AddPart(ref this, fourCC, ref pSource);
			public HRESULT RemovePart(uint32 fourCC) mut => VT.RemovePart(ref this, fourCC);
			public HRESULT SerializeContainer(out IDxcOperationResult* ppResult) mut => VT.SerializeContainer(ref this, out ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerBuilder self, ref IDxcBlob pDxilContainerHeader) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerBuilder self, uint32 fourCC, ref IDxcBlob pSource) AddPart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerBuilder self, uint32 fourCC) RemovePart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerBuilder self, out IDxcOperationResult* ppResult) SerializeContainer;
			}
		}
		[CRepr]
		public struct IDxcAssembler : IUnknown
		{
			public const new Guid IID = .(0x091f7a26, 0x1c1f, 0x4948, 0x90, 0x4b, 0xe6, 0xe3, 0xa8, 0xa7, 0x71, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssembleToContainer(ref IDxcBlob pShader, out IDxcOperationResult* ppResult) mut => VT.AssembleToContainer(ref this, ref pShader, out ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcAssembler self, ref IDxcBlob pShader, out IDxcOperationResult* ppResult) AssembleToContainer;
			}
		}
		[CRepr]
		public struct IDxcContainerReflection : IUnknown
		{
			public const new Guid IID = .(0xd2c21b26, 0x8350, 0x4bdc, 0x97, 0x6a, 0x33, 0x1c, 0xe6, 0xf4, 0xc5, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(ref IDxcBlob pContainer) mut => VT.Load(ref this, ref pContainer);
			public HRESULT GetPartCount(out uint32 pResult) mut => VT.GetPartCount(ref this, out pResult);
			public HRESULT GetPartKind(uint32 idx, out uint32 pResult) mut => VT.GetPartKind(ref this, idx, out pResult);
			public HRESULT GetPartContent(uint32 idx, out IDxcBlob* ppResult) mut => VT.GetPartContent(ref this, idx, out ppResult);
			public HRESULT FindFirstPartKind(uint32 kind, out uint32 pResult) mut => VT.FindFirstPartKind(ref this, kind, out pResult);
			public HRESULT GetPartReflection(uint32 idx, in Guid iid, void** ppvObject) mut => VT.GetPartReflection(ref this, idx, iid, ppvObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, ref IDxcBlob pContainer) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, out uint32 pResult) GetPartCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, uint32 idx, out uint32 pResult) GetPartKind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, uint32 idx, out IDxcBlob* ppResult) GetPartContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, uint32 kind, out uint32 pResult) FindFirstPartKind;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcContainerReflection self, uint32 idx, in Guid iid, void** ppvObject) GetPartReflection;
			}
		}
		[CRepr]
		public struct IDxcOptimizerPass : IUnknown
		{
			public const new Guid IID = .(0xae2cd79f, 0xcc22, 0x453f, 0x9b, 0x6b, 0xb1, 0x24, 0xe7, 0xa5, 0x20, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptionName(out PWSTR ppResult) mut => VT.GetOptionName(ref this, out ppResult);
			public HRESULT GetDescription(out PWSTR ppResult) mut => VT.GetDescription(ref this, out ppResult);
			public HRESULT GetOptionArgCount(out uint32 pCount) mut => VT.GetOptionArgCount(ref this, out pCount);
			public HRESULT GetOptionArgName(uint32 argIndex, out PWSTR ppResult) mut => VT.GetOptionArgName(ref this, argIndex, out ppResult);
			public HRESULT GetOptionArgDescription(uint32 argIndex, out PWSTR ppResult) mut => VT.GetOptionArgDescription(ref this, argIndex, out ppResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizerPass self, out PWSTR ppResult) GetOptionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizerPass self, out PWSTR ppResult) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizerPass self, out uint32 pCount) GetOptionArgCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizerPass self, uint32 argIndex, out PWSTR ppResult) GetOptionArgName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizerPass self, uint32 argIndex, out PWSTR ppResult) GetOptionArgDescription;
			}
		}
		[CRepr]
		public struct IDxcOptimizer : IUnknown
		{
			public const new Guid IID = .(0x25740e2e, 0x9cba, 0x401b, 0x91, 0x19, 0x4f, 0xb4, 0x2f, 0x39, 0xf2, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailablePassCount(out uint32 pCount) mut => VT.GetAvailablePassCount(ref this, out pCount);
			public HRESULT GetAvailablePass(uint32 index, out IDxcOptimizerPass* ppResult) mut => VT.GetAvailablePass(ref this, index, out ppResult);
			public HRESULT RunOptimizer(ref IDxcBlob pBlob, PWSTR* ppOptions, uint32 optionCount, out IDxcBlob* pOutputModule, IDxcBlobEncoding** ppOutputText) mut => VT.RunOptimizer(ref this, ref pBlob, ppOptions, optionCount, out pOutputModule, ppOutputText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizer self, out uint32 pCount) GetAvailablePassCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizer self, uint32 index, out IDxcOptimizerPass* ppResult) GetAvailablePass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcOptimizer self, ref IDxcBlob pBlob, PWSTR* ppOptions, uint32 optionCount, out IDxcBlob* pOutputModule, IDxcBlobEncoding** ppOutputText) RunOptimizer;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo : IUnknown
		{
			public const new Guid IID = .(0xb04f5b50, 0x2059, 0x4f12, 0xa8, 0xff, 0xa1, 0xe0, 0xcd, 0xe1, 0xcc, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersion(out uint32 pMajor, out uint32 pMinor) mut => VT.GetVersion(ref this, out pMajor, out pMinor);
			public HRESULT ComGetFlags(out uint32 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcVersionInfo self, out uint32 pMajor, out uint32 pMinor) GetVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcVersionInfo self, out uint32 pFlags) ComGetFlags;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo2 : IDxcVersionInfo
		{
			public const new Guid IID = .(0xfb6904c4, 0x42f0, 0x4b62, 0x9c, 0x46, 0x98, 0x3a, 0xf7, 0xda, 0x7c, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCommitInfo(out uint32 pCommitCount, out int8* pCommitHash) mut => VT.GetCommitInfo(ref this, out pCommitCount, out pCommitHash);

			[CRepr]
			public struct VTable : IDxcVersionInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcVersionInfo2 self, out uint32 pCommitCount, out int8* pCommitHash) GetCommitInfo;
			}
		}
		[CRepr]
		public struct IDxcVersionInfo3 : IUnknown
		{
			public const new Guid IID = .(0x5e13e843, 0x9d25, 0x473c, 0x9a, 0xd2, 0x03, 0xb2, 0xd0, 0xb4, 0x4b, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCustomVersionString(out int8* pVersionString) mut => VT.GetCustomVersionString(ref this, out pVersionString);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcVersionInfo3 self, out int8* pVersionString) GetCustomVersionString;
			}
		}
		[CRepr]
		public struct IDxcPdbUtils : IUnknown
		{
			public const new Guid IID = .(0xe6c9647e, 0x9d6a, 0x4c3b, 0xb9, 0x4c, 0x52, 0x4b, 0x5a, 0x6c, 0x34, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Load(ref IDxcBlob pPdbOrDxil) mut => VT.Load(ref this, ref pPdbOrDxil);
			public HRESULT GetSourceCount(out uint32 pCount) mut => VT.GetSourceCount(ref this, out pCount);
			public HRESULT GetSource(uint32 uIndex, out IDxcBlobEncoding* ppResult) mut => VT.GetSource(ref this, uIndex, out ppResult);
			public HRESULT GetSourceName(uint32 uIndex, out BSTR pResult) mut => VT.GetSourceName(ref this, uIndex, out pResult);
			public HRESULT GetFlagCount(out uint32 pCount) mut => VT.GetFlagCount(ref this, out pCount);
			public HRESULT GetFlag(uint32 uIndex, out BSTR pResult) mut => VT.GetFlag(ref this, uIndex, out pResult);
			public HRESULT GetArgCount(out uint32 pCount) mut => VT.GetArgCount(ref this, out pCount);
			public HRESULT GetArg(uint32 uIndex, out BSTR pResult) mut => VT.GetArg(ref this, uIndex, out pResult);
			public HRESULT GetArgPairCount(out uint32 pCount) mut => VT.GetArgPairCount(ref this, out pCount);
			public HRESULT GetArgPair(uint32 uIndex, out BSTR pName, out BSTR pValue) mut => VT.GetArgPair(ref this, uIndex, out pName, out pValue);
			public HRESULT GetDefineCount(out uint32 pCount) mut => VT.GetDefineCount(ref this, out pCount);
			public HRESULT GetDefine(uint32 uIndex, out BSTR pResult) mut => VT.GetDefine(ref this, uIndex, out pResult);
			public HRESULT GetTargetProfile(out BSTR pResult) mut => VT.GetTargetProfile(ref this, out pResult);
			public HRESULT GetEntryPoint(out BSTR pResult) mut => VT.GetEntryPoint(ref this, out pResult);
			public HRESULT GetMainFileName(out BSTR pResult) mut => VT.GetMainFileName(ref this, out pResult);
			public HRESULT GetHash(out IDxcBlob* ppResult) mut => VT.GetHash(ref this, out ppResult);
			public HRESULT GetName(out BSTR pResult) mut => VT.GetName(ref this, out pResult);
			public BOOL IsFullPDB() mut => VT.IsFullPDB(ref this);
			public HRESULT GetFullPDB(out IDxcBlob* ppFullPDB) mut => VT.GetFullPDB(ref this, out ppFullPDB);
			public HRESULT GetVersionInfo(out IDxcVersionInfo* ppVersionInfo) mut => VT.GetVersionInfo(ref this, out ppVersionInfo);
			public HRESULT SetCompiler(ref IDxcCompiler3 pCompiler) mut => VT.SetCompiler(ref this, ref pCompiler);
			public HRESULT CompileForFullPDB(out IDxcResult* ppResult) mut => VT.CompileForFullPDB(ref this, out ppResult);
			public HRESULT OverrideArgs(ref DxcArgPair pArgPairs, uint32 uNumArgPairs) mut => VT.OverrideArgs(ref this, ref pArgPairs, uNumArgPairs);
			public HRESULT OverrideRootSignature(PWSTR pRootSignature) mut => VT.OverrideRootSignature(ref this, pRootSignature);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, ref IDxcBlob pPdbOrDxil) Load;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out uint32 pCount) GetSourceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out IDxcBlobEncoding* ppResult) GetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out BSTR pResult) GetSourceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out uint32 pCount) GetFlagCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out BSTR pResult) GetFlag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out uint32 pCount) GetArgCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out BSTR pResult) GetArg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out uint32 pCount) GetArgPairCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out BSTR pName, out BSTR pValue) GetArgPair;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out uint32 pCount) GetDefineCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, uint32 uIndex, out BSTR pResult) GetDefine;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out BSTR pResult) GetTargetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out BSTR pResult) GetEntryPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out BSTR pResult) GetMainFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out IDxcBlob* ppResult) GetHash;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out BSTR pResult) GetName;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IDxcPdbUtils self) IsFullPDB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out IDxcBlob* ppFullPDB) GetFullPDB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out IDxcVersionInfo* ppVersionInfo) GetVersionInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, ref IDxcCompiler3 pCompiler) SetCompiler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, out IDxcResult* ppResult) CompileForFullPDB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, ref DxcArgPair pArgPairs, uint32 uNumArgPairs) OverrideArgs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDxcPdbUtils self, PWSTR pRootSignature) OverrideRootSignature;
			}
		}
		
		// --- Functions ---
		
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance(in Guid rclsid, in Guid riid, void** ppv);
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance2(ref IMalloc pMalloc, in Guid rclsid, in Guid riid, void** ppv);
	}
}
