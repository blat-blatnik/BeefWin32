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
		
		public struct IXpsPrintJobStream {}
		public struct IXpsPrintJob {}
		public struct IPrintDocumentPackageTarget {}
		public struct IPrintDocumentPackageStatusEvent {}
		public struct IPrintDocumentPackageTargetFactory {}
		
		// --- Functions ---
		
		[Import("xpsprint.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StartXpsPrintJob(PWSTR printerName, PWSTR jobName, PWSTR outputFileName, HANDLE progressEvent, HANDLE completionEvent, uint8* printablePagesOn, uint32 printablePagesOnCount, IXpsPrintJob* xpsPrintJob, IXpsPrintJobStream* documentStream, IXpsPrintJobStream* printTicketStream);
		[Import("xpsprint.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StartXpsPrintJob1(PWSTR printerName, PWSTR jobName, PWSTR outputFileName, HANDLE progressEvent, HANDLE completionEvent, IXpsPrintJob* xpsPrintJob, IXpsOMPackageTarget* printContentReceiver);
		
	}
}
