using System;

// namespace System.WinRT.ML
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ILearningModelOperatorProviderNative : IUnknown
		{
			public const new Guid IID = .(0x1adaa23a, 0xeb67, 0x41f3, 0xaa, 0xd8, 0x5d, 0x98, 0x4e, 0x9b, 0xac, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRegistry(out IMLOperatorRegistry* ppOperatorRegistry) mut => VT.GetRegistry(ref this, out ppOperatorRegistry);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILearningModelOperatorProviderNative self, out IMLOperatorRegistry* ppOperatorRegistry) GetRegistry;
			}
		}
		[CRepr]
		public struct ITensorNative : IUnknown
		{
			public const new Guid IID = .(0x52f547ef, 0x5b03, 0x49b5, 0x82, 0xd6, 0x56, 0x5f, 0x1e, 0xe0, 0xdd, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBuffer(uint8** value, out uint32 capacity) mut => VT.GetBuffer(ref this, value, out capacity);
			public HRESULT GetD3D12Resource(out ID3D12Resource* result) mut => VT.GetD3D12Resource(ref this, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITensorNative self, uint8** value, out uint32 capacity) GetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITensorNative self, out ID3D12Resource* result) GetD3D12Resource;
			}
		}
		[CRepr]
		public struct ITensorStaticsNative : IUnknown
		{
			public const new Guid IID = .(0x39d055a4, 0x66f6, 0x4ebc, 0x95, 0xd9, 0x7a, 0x29, 0xeb, 0xe7, 0x69, 0x0a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromD3D12Resource(ref ID3D12Resource value, out int64 shape, int32 shapeCount, out IUnknown* result) mut => VT.CreateFromD3D12Resource(ref this, ref value, out shape, shapeCount, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITensorStaticsNative self, ref ID3D12Resource value, out int64 shape, int32 shapeCount, out IUnknown* result) CreateFromD3D12Resource;
			}
		}
		[CRepr]
		public struct ILearningModelDeviceFactoryNative : IUnknown
		{
			public const new Guid IID = .(0x1e9b31a1, 0x662e, 0x4ae0, 0xaf, 0x67, 0xf6, 0x3b, 0xb3, 0x37, 0xe6, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromD3D12CommandQueue(ref ID3D12CommandQueue value, out IUnknown* result) mut => VT.CreateFromD3D12CommandQueue(ref this, ref value, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILearningModelDeviceFactoryNative self, ref ID3D12CommandQueue value, out IUnknown* result) CreateFromD3D12CommandQueue;
			}
		}
		[CRepr]
		public struct ILearningModelSessionOptionsNative : IUnknown
		{
			public const new Guid IID = .(0xc71e953f, 0x37b4, 0x4564, 0x86, 0x58, 0xd8, 0x39, 0x68, 0x66, 0xdb, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIntraOpNumThreadsOverride(uint32 intraOpNumThreads) mut => VT.SetIntraOpNumThreadsOverride(ref this, intraOpNumThreads);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILearningModelSessionOptionsNative self, uint32 intraOpNumThreads) SetIntraOpNumThreadsOverride;
			}
		}
		
	}
}
