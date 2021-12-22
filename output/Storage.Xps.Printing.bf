using System;

// namespace Storage.Xps.Printing
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid ID_DOCUMENTPACKAGETARGET_MSXPS = .(0x9cae40a8, 0xded1, 0x41c9, 0xa9, 0xfd, 0xd7, 0x35, 0xef, 0x33, 0xae, 0xda);
		public const Guid ID_DOCUMENTPACKAGETARGET_OPENXPS = .(0x0056bb72, 0x8c9c, 0x4612, 0xbd, 0x0f, 0x93, 0x01, 0x2a, 0x87, 0x09, 0x9d);
		public const Guid ID_DOCUMENTPACKAGETARGET_OPENXPS_WITH_3D = .(0x63dbd720, 0x8b14, 0x4577, 0xb0, 0x74, 0x7b, 0xb1, 0x1b, 0x59, 0x6d, 0x28);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum XPS_JOB_COMPLETION : int32
		{
			XPS_JOB_IN_PROGRESS = 0,
			XPS_JOB_COMPLETED = 1,
			XPS_JOB_CANCELLED = 2,
			XPS_JOB_FAILED = 3,
		}
		[AllowDuplicates]
		public enum PrintDocumentPackageCompletion : int32
		{
			PrintDocumentPackageCompletion_InProgress = 0,
			PrintDocumentPackageCompletion_Completed = 1,
			PrintDocumentPackageCompletion_Canceled = 2,
			PrintDocumentPackageCompletion_Failed = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct XPS_JOB_STATUS
		{
			public uint32 jobId;
			public int32 currentDocument;
			public int32 currentPage;
			public int32 currentPageTotal;
			public XPS_JOB_COMPLETION completion;
			public HRESULT jobStatus;
		}
		[CRepr]
		public struct PrintDocumentPackageStatus
		{
			public uint32 JobId;
			public int32 CurrentDocument;
			public int32 CurrentPage;
			public int32 CurrentPageTotal;
			public PrintDocumentPackageCompletion Completion;
			public HRESULT PackageStatus;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_PrintDocumentPackageTarget = .(0x4842669e, 0x9947, 0x46ea, 0x8b, 0xa2, 0xd8, 0xcc, 0xe4, 0x32, 0xc2, 0xca);
		public const Guid CLSID_PrintDocumentPackageTargetFactory = .(0x348ef17d, 0x6c81, 0x4982, 0x92, 0xb4, 0xee, 0x18, 0x8a, 0x43, 0x86, 0x7a);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXpsPrintJobStream : ISequentialStream
		{
			public const new Guid IID = .(0x7a77dc5f, 0x45d6, 0x4dff, 0x93, 0x07, 0xd8, 0xcb, 0x84, 0x63, 0x47, 0xca);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ISequentialStream.VTable
			{
				public function HRESULT(IXpsPrintJobStream *self) Close;
			}
		}
		[CRepr]
		public struct IXpsPrintJob : IUnknown
		{
			public const new Guid IID = .(0x5ab89b06, 0x8194, 0x425f, 0xab, 0x3b, 0xd7, 0xa9, 0x6e, 0x35, 0x01, 0x61);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXpsPrintJob *self) Cancel;
				public function HRESULT(IXpsPrintJob *self, XPS_JOB_STATUS* jobStatus) GetJobStatus;
			}
		}
		[CRepr]
		public struct IPrintDocumentPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x1b8efec4, 0x3019, 0x4c27, 0x96, 0x4e, 0x36, 0x72, 0x02, 0x15, 0x69, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPrintDocumentPackageTarget *self, uint32* targetCount, Guid** targetTypes) GetPackageTargetTypes;
				public function HRESULT(IPrintDocumentPackageTarget *self, Guid* guidTargetType, Guid* riid, void** ppvTarget) GetPackageTarget;
				public function HRESULT(IPrintDocumentPackageTarget *self) Cancel;
			}
		}
		[CRepr]
		public struct IPrintDocumentPackageStatusEvent : IDispatch
		{
			public const new Guid IID = .(0xed90c8ad, 0x5c34, 0x4d05, 0xa1, 0xec, 0x0e, 0x8a, 0x9b, 0x3a, 0xd7, 0xaf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IPrintDocumentPackageStatusEvent *self, PrintDocumentPackageStatus* packageStatus) PackageStatusUpdated;
			}
		}
		[CRepr]
		public struct IPrintDocumentPackageTargetFactory : IUnknown
		{
			public const new Guid IID = .(0xd2959bf7, 0xb31b, 0x4a3d, 0x96, 0x00, 0x71, 0x2e, 0xb1, 0x33, 0x5b, 0xa4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPrintDocumentPackageTargetFactory *self, PWSTR printerName, PWSTR jobName, IStream* jobOutputStream, IStream* jobPrintTicketStream, IPrintDocumentPackageTarget** docPackageTarget) CreateDocumentPackageTargetForPrintJob;
			}
		}
		
		// --- Functions ---
		
		[Import("xpsprint.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StartXpsPrintJob(PWSTR printerName, PWSTR jobName, PWSTR outputFileName, HANDLE progressEvent, HANDLE completionEvent, uint8* printablePagesOn, uint32 printablePagesOnCount, IXpsPrintJob** xpsPrintJob, IXpsPrintJobStream** documentStream, IXpsPrintJobStream** printTicketStream);
		[Import("xpsprint.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StartXpsPrintJob1(PWSTR printerName, PWSTR jobName, PWSTR outputFileName, HANDLE progressEvent, HANDLE completionEvent, IXpsPrintJob** xpsPrintJob, IXpsOMPackageTarget** printContentReceiver);
		
	}
}
