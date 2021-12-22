using System;

// namespace System.WinRT.Composition
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICompositionDrawingSurfaceInterop : IUnknown
		{
			public const new Guid IID = .(0xfd04e6e3, 0xfe0c, 0x4c3c, 0xab, 0x19, 0xa0, 0x76, 0x01, 0xa5, 0x76, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginDraw(RECT* updateRect, Guid* iid, void** updateObject, POINT* updateOffset) mut
			{
				return VT.BeginDraw(&this, updateRect, iid, updateObject, updateOffset);
			}
			public HRESULT EndDraw() mut
			{
				return VT.EndDraw(&this);
			}
			public HRESULT Resize(SIZE sizePixels) mut
			{
				return VT.Resize(&this, sizePixels);
			}
			public HRESULT Scroll(RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) mut
			{
				return VT.Scroll(&this, scrollRect, clipRect, offsetX, offsetY);
			}
			public HRESULT ResumeDraw() mut
			{
				return VT.ResumeDraw(&this);
			}
			public HRESULT SuspendDraw() mut
			{
				return VT.SuspendDraw(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self, RECT* updateRect, Guid* iid, void** updateObject, POINT* updateOffset) BeginDraw;
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self) EndDraw;
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self, SIZE sizePixels) Resize;
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self, RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) Scroll;
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self) ResumeDraw;
				public new function HRESULT(ICompositionDrawingSurfaceInterop *self) SuspendDraw;
			}
		}
		[CRepr]
		public struct ICompositionDrawingSurfaceInterop2 : ICompositionDrawingSurfaceInterop
		{
			public const new Guid IID = .(0x41e64aae, 0x98c0, 0x4239, 0x8e, 0x95, 0xa3, 0x30, 0xdd, 0x6a, 0xa1, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CopySurface(IUnknown* destinationResource, int32 destinationOffsetX, int32 destinationOffsetY, RECT* sourceRectangle) mut
			{
				return VT.CopySurface(&this, destinationResource, destinationOffsetX, destinationOffsetY, sourceRectangle);
			}
			[CRepr]
			public struct VTable : ICompositionDrawingSurfaceInterop.VTable
			{
				public new function HRESULT(ICompositionDrawingSurfaceInterop2 *self, IUnknown* destinationResource, int32 destinationOffsetX, int32 destinationOffsetY, RECT* sourceRectangle) CopySurface;
			}
		}
		[CRepr]
		public struct ICompositionGraphicsDeviceInterop : IUnknown
		{
			public const new Guid IID = .(0xa116ff71, 0xf8bf, 0x4c8a, 0x9c, 0x98, 0x70, 0x77, 0x9a, 0x32, 0xa9, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRenderingDevice(IUnknown** value) mut
			{
				return VT.GetRenderingDevice(&this, value);
			}
			public HRESULT SetRenderingDevice(IUnknown* value) mut
			{
				return VT.SetRenderingDevice(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICompositionGraphicsDeviceInterop *self, IUnknown** value) GetRenderingDevice;
				public new function HRESULT(ICompositionGraphicsDeviceInterop *self, IUnknown* value) SetRenderingDevice;
			}
		}
		[CRepr]
		public struct ICompositorInterop : IUnknown
		{
			public const new Guid IID = .(0x25297d5c, 0x3ad4, 0x4c9c, 0xb5, 0xcf, 0xe3, 0x6a, 0x38, 0x51, 0x23, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateCompositionSurfaceForHandle(HANDLE swapChain, void* result) mut
			{
				return VT.CreateCompositionSurfaceForHandle(&this, swapChain, result);
			}
			public HRESULT CreateCompositionSurfaceForSwapChain(IUnknown* swapChain, void* result) mut
			{
				return VT.CreateCompositionSurfaceForSwapChain(&this, swapChain, result);
			}
			public HRESULT CreateGraphicsDevice(IUnknown* renderingDevice, void* result) mut
			{
				return VT.CreateGraphicsDevice(&this, renderingDevice, result);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICompositorInterop *self, HANDLE swapChain, void* result) CreateCompositionSurfaceForHandle;
				public new function HRESULT(ICompositorInterop *self, IUnknown* swapChain, void* result) CreateCompositionSurfaceForSwapChain;
				public new function HRESULT(ICompositorInterop *self, IUnknown* renderingDevice, void* result) CreateGraphicsDevice;
			}
		}
		[CRepr]
		public struct ISwapChainInterop : IUnknown
		{
			public const new Guid IID = .(0x26f496a0, 0x7f38, 0x45fb, 0x88, 0xf7, 0xfa, 0xaa, 0xbe, 0x67, 0xdd, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSwapChain(IUnknown* swapChain) mut
			{
				return VT.SetSwapChain(&this, swapChain);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISwapChainInterop *self, IUnknown* swapChain) SetSwapChain;
			}
		}
		[CRepr]
		public struct IVisualInteractionSourceInterop : IUnknown
		{
			public const new Guid IID = .(0x11f62cd1, 0x2f9d, 0x42d3, 0xb0, 0x5f, 0xd6, 0x79, 0x0d, 0x9e, 0x9f, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TryRedirectForManipulation(POINTER_INFO* pointerInfo) mut
			{
				return VT.TryRedirectForManipulation(&this, pointerInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVisualInteractionSourceInterop *self, POINTER_INFO* pointerInfo) TryRedirectForManipulation;
			}
		}
		[CRepr]
		public struct ICompositionCapabilitiesInteropFactory : IInspectable
		{
			public const new Guid IID = .(0x2c9db356, 0xe70d, 0x4642, 0x82, 0x98, 0xbc, 0x4a, 0xa5, 0xb4, 0x86, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND hwnd, void* result) mut
			{
				return VT.GetForWindow(&this, hwnd, result);
			}
			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function HRESULT(ICompositionCapabilitiesInteropFactory *self, HWND hwnd, void* result) GetForWindow;
			}
		}
		[CRepr]
		public struct ICompositorDesktopInterop : IUnknown
		{
			public const new Guid IID = .(0x29e691fa, 0x4567, 0x4dca, 0xb3, 0x19, 0xd0, 0xf2, 0x07, 0xeb, 0x68, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDesktopWindowTarget(HWND hwndTarget, BOOL isTopmost, void* result) mut
			{
				return VT.CreateDesktopWindowTarget(&this, hwndTarget, isTopmost, result);
			}
			public HRESULT EnsureOnThread(uint32 threadId) mut
			{
				return VT.EnsureOnThread(&this, threadId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICompositorDesktopInterop *self, HWND hwndTarget, BOOL isTopmost, void* result) CreateDesktopWindowTarget;
				public new function HRESULT(ICompositorDesktopInterop *self, uint32 threadId) EnsureOnThread;
			}
		}
		[CRepr]
		public struct IDesktopWindowTargetInterop : IUnknown
		{
			public const new Guid IID = .(0x35dbf59e, 0xe3f9, 0x45b0, 0x81, 0xe7, 0xfe, 0x75, 0xf4, 0x14, 0x5d, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Hwnd(HWND* value) mut
			{
				return VT.get_Hwnd(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDesktopWindowTargetInterop *self, HWND* value) get_Hwnd;
			}
		}
		
	}
}
