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
			
			public function HRESULT(IPrinting3DManagerInterop *self, HWND appWindow, Guid* riid, void** printManager) GetForWindow;
			public function HRESULT(IPrinting3DManagerInterop *self, HWND appWindow, Guid* riid, void** asyncOperation) ShowPrintUIForWindowAsync;
		}
		[CRepr]
		public struct IPrintManagerInterop : IInspectable
		{
			public const new Guid IID = .(0xc5435a42, 0x8d43, 0x4e7b, 0xa6, 0x8a, 0xef, 0x31, 0x1e, 0x39, 0x20, 0x87);
			
			public function HRESULT(IPrintManagerInterop *self, HWND appWindow, Guid* riid, void** printManager) GetForWindow;
			public function HRESULT(IPrintManagerInterop *self, HWND appWindow, Guid* riid, void** asyncOperation) ShowPrintUIForWindowAsync;
		}
		[CRepr]
		public struct IPrintWorkflowXpsReceiver : IUnknown
		{
			public const new Guid IID = .(0x04097374, 0x77b8, 0x47f6, 0x81, 0x67, 0xaa, 0xe2, 0x9d, 0x4c, 0xf8, 0x4b);
			
			public function HRESULT(IPrintWorkflowXpsReceiver *self, IStream* documentSequencePrintTicket) SetDocumentSequencePrintTicket;
			public function HRESULT(IPrintWorkflowXpsReceiver *self, PWSTR documentSequenceUri) SetDocumentSequenceUri;
			public function HRESULT(IPrintWorkflowXpsReceiver *self, uint32 documentId, IStream* documentPrintTicket, PWSTR documentUri) AddDocumentData;
			public function HRESULT(IPrintWorkflowXpsReceiver *self, uint32 documentId, uint32 pageId, IXpsOMPageReference* pageReference, PWSTR pageUri) AddPage;
			public function HRESULT(IPrintWorkflowXpsReceiver *self) Close;
		}
		[CRepr]
		public struct IPrintWorkflowXpsReceiver2 : IPrintWorkflowXpsReceiver
		{
			public const new Guid IID = .(0x023bcc0c, 0xdfab, 0x4a61, 0xb0, 0x74, 0x49, 0x0c, 0x69, 0x95, 0x58, 0x0d);
			
			public function HRESULT(IPrintWorkflowXpsReceiver2 *self, HRESULT XpsError) Failed;
		}
		[CRepr]
		public struct IPrintWorkflowObjectModelSourceFileContentNative : IUnknown
		{
			public const new Guid IID = .(0x68c9e477, 0x993e, 0x4052, 0x8a, 0xc6, 0x45, 0x4e, 0xff, 0x58, 0xdb, 0x9d);
			
			public function HRESULT(IPrintWorkflowObjectModelSourceFileContentNative *self, IPrintWorkflowXpsReceiver* receiver) StartXpsOMGeneration;
			public function HRESULT(IPrintWorkflowObjectModelSourceFileContentNative *self, IXpsOMObjectFactory1** value) get_ObjectFactory;
		}
		[CRepr]
		public struct IPrintWorkflowXpsObjectModelTargetPackageNative : IUnknown
		{
			public const new Guid IID = .(0x7d96bc74, 0x9b54, 0x4ca1, 0xad, 0x3a, 0x97, 0x9c, 0x3d, 0x44, 0xdd, 0xac);
			
			public function HRESULT(IPrintWorkflowXpsObjectModelTargetPackageNative *self, IXpsDocumentPackageTarget** value) get_DocumentPackageTarget;
		}
		[CRepr]
		public struct IPrintWorkflowConfigurationNative : IUnknown
		{
			public const new Guid IID = .(0xc056be0a, 0x9ee2, 0x450a, 0x98, 0x23, 0x96, 0x4f, 0x00, 0x06, 0xf2, 0xbb);
			
			public function HRESULT(IPrintWorkflowConfigurationNative *self, IPrinterQueue** value) get_PrinterQueue;
			public function HRESULT(IPrintWorkflowConfigurationNative *self, IPrinterPropertyBag** value) get_DriverProperties;
			public function HRESULT(IPrintWorkflowConfigurationNative *self, IPrinterPropertyBag** value) get_UserProperties;
		}
		
	}
}
