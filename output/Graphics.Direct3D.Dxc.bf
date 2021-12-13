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
		public function HRESULT DxcCreateInstance2Proc(IMalloc pMalloc, Guid* rclsid, Guid* riid, void** ppv);
		
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
		
		public struct IDxcBlob {}
		public struct IDxcBlobEncoding {}
		public struct IDxcBlobUtf16 {}
		public struct IDxcBlobUtf8 {}
		public struct IDxcIncludeHandler {}
		public struct IDxcCompilerArgs {}
		public struct IDxcLibrary {}
		public struct IDxcOperationResult {}
		public struct IDxcCompiler {}
		public struct IDxcCompiler2 {}
		public struct IDxcLinker {}
		public struct IDxcUtils {}
		public struct IDxcResult {}
		public struct IDxcExtraOutputs {}
		public struct IDxcCompiler3 {}
		public struct IDxcValidator {}
		public struct IDxcValidator2 {}
		public struct IDxcContainerBuilder {}
		public struct IDxcAssembler {}
		public struct IDxcContainerReflection {}
		public struct IDxcOptimizerPass {}
		public struct IDxcOptimizer {}
		public struct IDxcVersionInfo {}
		public struct IDxcVersionInfo2 {}
		public struct IDxcVersionInfo3 {}
		public struct IDxcPdbUtils {}
		
		// --- Functions ---
		
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance(Guid* rclsid, Guid* riid, void** ppv);
		[Import("dxcompiler.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DxcCreateInstance2(IMalloc pMalloc, Guid* rclsid, Guid* riid, void** ppv);
		
	}
}
