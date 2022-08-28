namespace Win32.Graphics.Direct3D9on12;

using System;
using Win32.Foundation;
using Win32.Graphics.Direct3D12;
using Win32.Graphics.Direct3D9;
using Win32.System.Com;

static
{
	#region Constants
	public const uint32 MAX_D3D9ON12_QUEUES = 2;
	#endregion
	
	#region Function pointers
	public function HRESULT PFN_Direct3DCreate9On12Ex(uint32 SDKVersion, out D3D9ON12_ARGS pOverrideList, uint32 NumOverrideEntries, out IDirect3D9Ex* ppOutputInterface);
	public function IDirect3D9* PFN_Direct3DCreate9On12(uint32 SDKVersion, out D3D9ON12_ARGS pOverrideList, uint32 NumOverrideEntries);
	#endregion
	
	#region Structs
	[CRepr]
	public struct D3D9ON12_ARGS
	{
		public BOOL Enable9On12;
		public IUnknown* pD3D12Device;
		public IUnknown*[2] ppD3D12Queues;
		public uint32 NumQueues;
		public uint32 NodeMask;
	}
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IDirect3DDevice9On12 : IUnknown
	{
		public const new Guid IID = .(0xe7fda234, 0xb589, 0x4049, 0x94, 0x0d, 0x88, 0x78, 0x97, 0x75, 0x31, 0xc8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetD3D12Device(in Guid riid, void** ppvDevice) mut => VT.GetD3D12Device(ref this, riid, ppvDevice);
		public HRESULT UnwrapUnderlyingResource(ref IDirect3DResource9 pResource, ref ID3D12CommandQueue pCommandQueue, in Guid riid, void** ppvResource12) mut => VT.UnwrapUnderlyingResource(ref this, ref pResource, ref pCommandQueue, riid, ppvResource12);
		public HRESULT ReturnUnderlyingResource(ref IDirect3DResource9 pResource, uint32 NumSync, out uint64 pSignalValues, out ID3D12Fence* ppFences) mut => VT.ReturnUnderlyingResource(ref this, ref pResource, NumSync, out pSignalValues, out ppFences);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9On12 self, in Guid riid, void** ppvDevice) GetD3D12Device;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9On12 self, ref IDirect3DResource9 pResource, ref ID3D12CommandQueue pCommandQueue, in Guid riid, void** ppvResource12) UnwrapUnderlyingResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9On12 self, ref IDirect3DResource9 pResource, uint32 NumSync, out uint64 pSignalValues, out ID3D12Fence* ppFences) ReturnUnderlyingResource;
		}
	}
	#endregion
	
	#region Functions
	[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT Direct3DCreate9On12Ex(uint32 SDKVersion, out D3D9ON12_ARGS pOverrideList, uint32 NumOverrideEntries, out IDirect3D9Ex* ppOutputInterface);
	[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IDirect3D9* Direct3DCreate9On12(uint32 SDKVersion, out D3D9ON12_ARGS pOverrideList, uint32 NumOverrideEntries);
	#endregion
}
