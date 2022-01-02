using System;

// namespace Graphics.Printing.PrintTicket
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PRINTTICKET_ISTREAM_APIS = 1;
		public const uint32 S_PT_NO_CONFLICT = 262145;
		public const uint32 S_PT_CONFLICT_RESOLVED = 262146;
		public const uint32 E_PRINTTICKET_FORMAT = 2147745795;
		public const uint32 E_PRINTCAPABILITIES_FORMAT = 2147745796;
		public const uint32 E_DELTA_PRINTTICKET_FORMAT = 2147745797;
		public const uint32 E_PRINTDEVICECAPABILITIES_FORMAT = 2147745798;
		
		// --- Enums ---
		
		public enum EDefaultDevmodeType : int32
		{
			UserDefaultDevmode = 0,
			PrinterDefaultDevmode = 1,
		}
		public enum EPrintTicketScope : int32
		{
			PTPageScope = 0,
			PTDocumentScope = 1,
			PTJobScope = 2,
		}
		
		// --- Functions ---
		
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTQuerySchemaVersionSupport(PWSTR pszPrinterName, out uint32 pMaxVersion);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTOpenProvider(PWSTR pszPrinterName, uint32 dwVersion, out HPTPROVIDER phProvider);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTOpenProviderEx(PWSTR pszPrinterName, uint32 dwMaxVersion, uint32 dwPrefVersion, out HPTPROVIDER phProvider, out uint32 pUsedVersion);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTCloseProvider(HPTPROVIDER hProvider);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTReleaseMemory(void* pBuffer);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTGetPrintCapabilities(HPTPROVIDER hProvider, IStream* pPrintTicket, out IStream pCapabilities, BSTR* pbstrErrorMessage);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTGetPrintDeviceCapabilities(HPTPROVIDER hProvider, IStream* pPrintTicket, out IStream pDeviceCapabilities, BSTR* pbstrErrorMessage);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTGetPrintDeviceResources(HPTPROVIDER hProvider, PWSTR pszLocaleName, IStream* pPrintTicket, out IStream pDeviceResources, BSTR* pbstrErrorMessage);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTMergeAndValidatePrintTicket(HPTPROVIDER hProvider, ref IStream pBaseTicket, IStream* pDeltaTicket, EPrintTicketScope @scope, out IStream pResultTicket, BSTR* pbstrErrorMessage);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTConvertPrintTicketToDevMode(HPTPROVIDER hProvider, ref IStream pPrintTicket, EDefaultDevmodeType baseDevmodeType, EPrintTicketScope @scope, out uint32 pcbDevmode, out DEVMODEA* ppDevmode, BSTR* pbstrErrorMessage);
		[Import("prntvpt.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PTConvertDevModeToPrintTicket(HPTPROVIDER hProvider, uint32 cbDevmode, ref DEVMODEA pDevmode, EPrintTicketScope @scope, out IStream pPrintTicket);
	}
}
