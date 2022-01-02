using System;

// namespace System.WinRT.Printing
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IPrinting3DManagerInterop : IInspectable
		{
			public const new Guid IID = .(0x9ca31010, 0x1484, 0x4587, 0xb2, 0x6b, 0xdd, 0xdf, 0x9f, 0x9c, 0xae, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, in Guid riid, void** printManager) mut => VT.GetForWindow(ref this, appWindow, riid, printManager);
			public HRESULT ShowPrintUIForWindowAsync(HWND appWindow, in Guid riid, void** asyncOperation) mut => VT.ShowPrintUIForWindowAsync(ref this, appWindow, riid, asyncOperation);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinting3DManagerInterop self, HWND appWindow, in Guid riid, void** printManager) GetForWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinting3DManagerInterop self, HWND appWindow, in Guid riid, void** asyncOperation) ShowPrintUIForWindowAsync;
			}
		}
		[CRepr]
		public struct IPrintManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xc5435a42, 0x8d43, 0x4e7b, 0xa6, 0x8a, 0xef, 0x31, 0x1e, 0x39, 0x20, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, in Guid riid, void** printManager) mut => VT.GetForWindow(ref this, appWindow, riid, printManager);
			public HRESULT ShowPrintUIForWindowAsync(HWND appWindow, in Guid riid, void** asyncOperation) mut => VT.ShowPrintUIForWindowAsync(ref this, appWindow, riid, asyncOperation);

			[CRepr]
			public struct VTable : IInspectable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintManagerInterop self, HWND appWindow, in Guid riid, void** printManager) GetForWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintManagerInterop self, HWND appWindow, in Guid riid, void** asyncOperation) ShowPrintUIForWindowAsync;
			}
		}
		[CRepr]
		public struct IPrintWorkflowXpsReceiver : IUnknown
		{
			public const new Guid IID = .(0x04097374, 0x77b8, 0x47f6, 0x81, 0x67, 0xaa, 0xe2, 0x9d, 0x4c, 0xf8, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDocumentSequencePrintTicket(ref IStream documentSequencePrintTicket) mut => VT.SetDocumentSequencePrintTicket(ref this, ref documentSequencePrintTicket);
			public HRESULT SetDocumentSequenceUri(PWSTR documentSequenceUri) mut => VT.SetDocumentSequenceUri(ref this, documentSequenceUri);
			public HRESULT AddDocumentData(uint32 documentId, ref IStream documentPrintTicket, PWSTR documentUri) mut => VT.AddDocumentData(ref this, documentId, ref documentPrintTicket, documentUri);
			public HRESULT AddPage(uint32 documentId, uint32 pageId, ref IXpsOMPageReference pageReference, PWSTR pageUri) mut => VT.AddPage(ref this, documentId, pageId, ref pageReference, pageUri);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver self, ref IStream documentSequencePrintTicket) SetDocumentSequencePrintTicket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver self, PWSTR documentSequenceUri) SetDocumentSequenceUri;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver self, uint32 documentId, ref IStream documentPrintTicket, PWSTR documentUri) AddDocumentData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver self, uint32 documentId, uint32 pageId, ref IXpsOMPageReference pageReference, PWSTR pageUri) AddPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver self) Close;
			}
		}
		[CRepr]
		public struct IPrintWorkflowXpsReceiver2 : IPrintWorkflowXpsReceiver
		{
			public const new Guid IID = .(0x023bcc0c, 0xdfab, 0x4a61, 0xb0, 0x74, 0x49, 0x0c, 0x69, 0x95, 0x58, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Failed(HRESULT XpsError) mut => VT.Failed(ref this, XpsError);

			[CRepr]
			public struct VTable : IPrintWorkflowXpsReceiver.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsReceiver2 self, HRESULT XpsError) Failed;
			}
		}
		[CRepr]
		public struct IPrintWorkflowObjectModelSourceFileContentNative : IUnknown
		{
			public const new Guid IID = .(0x68c9e477, 0x993e, 0x4052, 0x8a, 0xc6, 0x45, 0x4e, 0xff, 0x58, 0xdb, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartXpsOMGeneration(ref IPrintWorkflowXpsReceiver receiver) mut => VT.StartXpsOMGeneration(ref this, ref receiver);
			public HRESULT get_ObjectFactory(out IXpsOMObjectFactory1* value) mut => VT.get_ObjectFactory(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowObjectModelSourceFileContentNative self, ref IPrintWorkflowXpsReceiver receiver) StartXpsOMGeneration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowObjectModelSourceFileContentNative self, out IXpsOMObjectFactory1* value) get_ObjectFactory;
			}
		}
		[CRepr]
		public struct IPrintWorkflowXpsObjectModelTargetPackageNative : IUnknown
		{
			public const new Guid IID = .(0x7d96bc74, 0x9b54, 0x4ca1, 0xad, 0x3a, 0x97, 0x9c, 0x3d, 0x44, 0xdd, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DocumentPackageTarget(out IXpsDocumentPackageTarget* value) mut => VT.get_DocumentPackageTarget(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowXpsObjectModelTargetPackageNative self, out IXpsDocumentPackageTarget* value) get_DocumentPackageTarget;
			}
		}
		[CRepr]
		public struct IPrintWorkflowConfigurationNative : IUnknown
		{
			public const new Guid IID = .(0xc056be0a, 0x9ee2, 0x450a, 0x98, 0x23, 0x96, 0x4f, 0x00, 0x06, 0xf2, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrinterQueue(out IPrinterQueue* value) mut => VT.get_PrinterQueue(ref this, out value);
			public HRESULT get_DriverProperties(out IPrinterPropertyBag* value) mut => VT.get_DriverProperties(ref this, out value);
			public HRESULT get_UserProperties(out IPrinterPropertyBag* value) mut => VT.get_UserProperties(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowConfigurationNative self, out IPrinterQueue* value) get_PrinterQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowConfigurationNative self, out IPrinterPropertyBag* value) get_DriverProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintWorkflowConfigurationNative self, out IPrinterPropertyBag* value) get_UserProperties;
			}
		}
		
	}
}
