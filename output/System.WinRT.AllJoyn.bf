using System;

// namespace System.WinRT.AllJoyn
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWindowsDevicesAllJoynBusAttachmentInterop : IInspectable
		{
			public const new Guid IID = .(0xfd89c65b, 0xb50e, 0x4a19, 0x9d, 0x0c, 0xb4, 0x2b, 0x78, 0x32, 0x81, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Win32Handle(out uint64 value) mut => VT.get_Win32Handle(ref this, out value);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusAttachmentInterop self, out uint64 value) get_Win32Handle;
			}
		}
		[CRepr]
		public struct IWindowsDevicesAllJoynBusAttachmentFactoryInterop : IInspectable
		{
			public const new Guid IID = .(0x4b8f7505, 0xb239, 0x4e7b, 0x88, 0xaf, 0xf6, 0x68, 0x25, 0x75, 0xd8, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromWin32Handle(uint64 win32handle, uint8 enableAboutData, in Guid riid, void** ppv) mut => VT.CreateFromWin32Handle(ref this, win32handle, enableAboutData, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusAttachmentFactoryInterop self, uint64 win32handle, uint8 enableAboutData, in Guid riid, void** ppv) CreateFromWin32Handle;
			}
		}
		[CRepr]
		public struct IWindowsDevicesAllJoynBusObjectInterop : IInspectable
		{
			public const new Guid IID = .(0xd78aa3d5, 0x5054, 0x428f, 0x99, 0xf2, 0xec, 0x3a, 0x5d, 0xe3, 0xc3, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPropertyGetHandler(void* context, HSTRING interfaceName, int callback) mut => VT.AddPropertyGetHandler(ref this, context, interfaceName, callback);
			public HRESULT AddPropertySetHandler(void* context, HSTRING interfaceName, int callback) mut => VT.AddPropertySetHandler(ref this, context, interfaceName, callback);
			public HRESULT get_Win32Handle(out uint64 value) mut => VT.get_Win32Handle(ref this, out value);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusObjectInterop self, void* context, HSTRING interfaceName, int callback) AddPropertyGetHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusObjectInterop self, void* context, HSTRING interfaceName, int callback) AddPropertySetHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusObjectInterop self, out uint64 value) get_Win32Handle;
			}
		}
		[CRepr]
		public struct IWindowsDevicesAllJoynBusObjectFactoryInterop : IInspectable
		{
			public const new Guid IID = .(0x6174e506, 0x8b95, 0x4e36, 0x95, 0xc0, 0xb8, 0x8f, 0xed, 0x34, 0x93, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromWin32Handle(uint64 win32handle, in Guid riid, void** ppv) mut => VT.CreateFromWin32Handle(ref this, win32handle, riid, ppv);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowsDevicesAllJoynBusObjectFactoryInterop self, uint64 win32handle, in Guid riid, void** ppv) CreateFromWin32Handle;
			}
		}
		
	}
}
