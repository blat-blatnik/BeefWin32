using System;

// namespace UI.Controls.Dialogs
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 OFN_SHAREFALLTHROUGH = 2;
		public const uint32 OFN_SHARENOWARN = 1;
		public const uint32 OFN_SHAREWARN = 0;
		public const uint32 CDM_FIRST = 1124;
		public const uint32 CDM_LAST = 1224;
		public const uint32 CDM_GETSPEC = 1124;
		public const uint32 CDM_GETFILEPATH = 1125;
		public const uint32 CDM_GETFOLDERPATH = 1126;
		public const uint32 CDM_GETFOLDERIDLIST = 1127;
		public const uint32 CDM_SETCONTROLTEXT = 1128;
		public const uint32 CDM_HIDECONTROL = 1129;
		public const uint32 CDM_SETDEFEXT = 1130;
		public const uint32 FR_RAW = 131072;
		public const uint32 FR_SHOWWRAPAROUND = 262144;
		public const uint32 FR_NOWRAPAROUND = 524288;
		public const uint32 FR_WRAPAROUND = 1048576;
		public const uint32 FRM_FIRST = 1124;
		public const uint32 FRM_LAST = 1224;
		public const uint32 FRM_SETOPERATIONRESULT = 1124;
		public const uint32 FRM_SETOPERATIONRESULTTEXT = 1125;
		public const uint32 PS_OPENTYPE_FONTTYPE = 65536;
		public const uint32 TT_OPENTYPE_FONTTYPE = 131072;
		public const uint32 TYPE1_FONTTYPE = 262144;
		public const uint32 SYMBOL_FONTTYPE = 524288;
		public const uint32 WM_CHOOSEFONT_GETLOGFONT = 1025;
		public const uint32 WM_CHOOSEFONT_SETLOGFONT = 1125;
		public const uint32 WM_CHOOSEFONT_SETFLAGS = 1126;
		public const int32 CD_LBSELNOITEMS = -1;
		public const uint32 CD_LBSELCHANGE = 0;
		public const uint32 CD_LBSELSUB = 1;
		public const uint32 CD_LBSELADD = 2;
		public const uint32 START_PAGE_GENERAL = 4294967295;
		public const uint32 PD_RESULT_CANCEL = 0;
		public const uint32 PD_RESULT_PRINT = 1;
		public const uint32 PD_RESULT_APPLY = 2;
		public const uint32 DN_DEFAULTPRN = 1;
		public const uint32 WM_PSD_FULLPAGERECT = 1025;
		public const uint32 WM_PSD_MINMARGINRECT = 1026;
		public const uint32 WM_PSD_MARGINRECT = 1027;
		public const uint32 WM_PSD_GREEKTEXTRECT = 1028;
		public const uint32 WM_PSD_ENVSTAMPRECT = 1029;
		public const uint32 WM_PSD_YAFULLPAGERECT = 1030;
		public const uint32 DLG_COLOR = 10;
		public const uint32 COLOR_HUESCROLL = 700;
		public const uint32 COLOR_SATSCROLL = 701;
		public const uint32 COLOR_LUMSCROLL = 702;
		public const uint32 COLOR_HUE = 703;
		public const uint32 COLOR_SAT = 704;
		public const uint32 COLOR_LUM = 705;
		public const uint32 COLOR_RED = 706;
		public const uint32 COLOR_GREEN = 707;
		public const uint32 COLOR_BLUE = 708;
		public const uint32 COLOR_CURRENT = 709;
		public const uint32 COLOR_RAINBOW = 710;
		public const uint32 COLOR_SAVE = 711;
		public const uint32 COLOR_ADD = 712;
		public const uint32 COLOR_SOLID = 713;
		public const uint32 COLOR_TUNE = 714;
		public const uint32 COLOR_SCHEMES = 715;
		public const uint32 COLOR_ELEMENT = 716;
		public const uint32 COLOR_SAMPLES = 717;
		public const uint32 COLOR_PALETTE = 718;
		public const uint32 COLOR_MIX = 719;
		public const uint32 COLOR_BOX1 = 720;
		public const uint32 COLOR_CUSTOM1 = 721;
		public const uint32 COLOR_HUEACCEL = 723;
		public const uint32 COLOR_SATACCEL = 724;
		public const uint32 COLOR_LUMACCEL = 725;
		public const uint32 COLOR_REDACCEL = 726;
		public const uint32 COLOR_GREENACCEL = 727;
		public const uint32 COLOR_BLUEACCEL = 728;
		public const uint32 COLOR_SOLID_LEFT = 730;
		public const uint32 COLOR_SOLID_RIGHT = 731;
		public const uint32 NUM_BASIC_COLORS = 48;
		public const uint32 NUM_CUSTOM_COLORS = 16;
		
		// --- Enums ---
		
		public enum COMMON_DLG_ERRORS : uint32
		{
			CDERR_DIALOGFAILURE = 65535,
			CDERR_GENERALCODES = 0,
			CDERR_STRUCTSIZE = 1,
			CDERR_INITIALIZATION = 2,
			CDERR_NOTEMPLATE = 3,
			CDERR_NOHINSTANCE = 4,
			CDERR_LOADSTRFAILURE = 5,
			CDERR_FINDRESFAILURE = 6,
			CDERR_LOADRESFAILURE = 7,
			CDERR_LOCKRESFAILURE = 8,
			CDERR_MEMALLOCFAILURE = 9,
			CDERR_MEMLOCKFAILURE = 10,
			CDERR_NOHOOK = 11,
			CDERR_REGISTERMSGFAIL = 12,
			PDERR_PRINTERCODES = 4096,
			PDERR_SETUPFAILURE = 4097,
			PDERR_PARSEFAILURE = 4098,
			PDERR_RETDEFFAILURE = 4099,
			PDERR_LOADDRVFAILURE = 4100,
			PDERR_GETDEVMODEFAIL = 4101,
			PDERR_INITFAILURE = 4102,
			PDERR_NODEVICES = 4103,
			PDERR_NODEFAULTPRN = 4104,
			PDERR_DNDMMISMATCH = 4105,
			PDERR_CREATEICFAILURE = 4106,
			PDERR_PRINTERNOTFOUND = 4107,
			PDERR_DEFAULTDIFFERENT = 4108,
			CFERR_CHOOSEFONTCODES = 8192,
			CFERR_NOFONTS = 8193,
			CFERR_MAXLESSTHANMIN = 8194,
			FNERR_FILENAMECODES = 12288,
			FNERR_SUBCLASSFAILURE = 12289,
			FNERR_INVALIDFILENAME = 12290,
			FNERR_BUFFERTOOSMALL = 12291,
			FRERR_FINDREPLACECODES = 16384,
			FRERR_BUFFERLENGTHZERO = 16385,
			CCERR_CHOOSECOLORCODES = 20480,
		}
		public enum OPEN_FILENAME_FLAGS : uint32
		{
			READONLY = 1,
			OVERWRITEPROMPT = 2,
			HIDEREADONLY = 4,
			NOCHANGEDIR = 8,
			SHOWHELP = 16,
			ENABLEHOOK = 32,
			ENABLETEMPLATE = 64,
			ENABLETEMPLATEHANDLE = 128,
			NOVALIDATE = 256,
			ALLOWMULTISELECT = 512,
			EXTENSIONDIFFERENT = 1024,
			PATHMUSTEXIST = 2048,
			FILEMUSTEXIST = 4096,
			CREATEPROMPT = 8192,
			SHAREAWARE = 16384,
			NOREADONLYRETURN = 32768,
			NOTESTFILECREATE = 65536,
			NONETWORKBUTTON = 131072,
			NOLONGNAMES = 262144,
			EXPLORER = 524288,
			NODEREFERENCELINKS = 1048576,
			LONGNAMES = 2097152,
			ENABLEINCLUDENOTIFY = 4194304,
			ENABLESIZING = 8388608,
			DONTADDTORECENT = 33554432,
			FORCESHOWHIDDEN = 268435456,
		}
		public enum OPEN_FILENAME_FLAGS_EX : uint32
		{
			NONE = 0,
			NOPLACESBAR = 1,
		}
		[AllowDuplicates]
		public enum PAGESETUPDLG_FLAGS : uint32
		{
			DEFAULTMINMARGINS = 0,
			DISABLEMARGINS = 16,
			DISABLEORIENTATION = 256,
			DISABLEPAGEPAINTING = 524288,
			DISABLEPAPER = 512,
			DISABLEPRINTER = 32,
			ENABLEPAGEPAINTHOOK = 262144,
			ENABLEPAGESETUPHOOK = 8192,
			ENABLEPAGESETUPTEMPLATE = 32768,
			ENABLEPAGESETUPTEMPLATEHANDLE = 131072,
			INHUNDREDTHSOFMILLIMETERS = 8,
			INTHOUSANDTHSOFINCHES = 4,
			INWININIINTLMEASURE = 0,
			MARGINS = 2,
			MINMARGINS = 1,
			NONETWORKBUTTON = 2097152,
			NOWARNING = 128,
			RETURNDEFAULT = 1024,
			SHOWHELP = 2048,
		}
		[AllowDuplicates]
		public enum CHOOSEFONT_FLAGS : uint32
		{
			APPLY = 512,
			ANSIONLY = 1024,
			BOTH = 3,
			EFFECTS = 256,
			ENABLEHOOK = 8,
			ENABLETEMPLATE = 16,
			ENABLETEMPLATEHANDLE = 32,
			FIXEDPITCHONLY = 16384,
			FORCEFONTEXIST = 65536,
			INACTIVEFONTS = 33554432,
			INITTOLOGFONTSTRUCT = 64,
			LIMITSIZE = 8192,
			NOOEMFONTS = 2048,
			NOFACESEL = 524288,
			NOSCRIPTSEL = 8388608,
			NOSIMULATIONS = 4096,
			NOSIZESEL = 2097152,
			NOSTYLESEL = 1048576,
			NOVECTORFONTS = 2048,
			NOVERTFONTS = 16777216,
			PRINTERFONTS = 2,
			SCALABLEONLY = 131072,
			SCREENFONTS = 1,
			SCRIPTSONLY = 1024,
			SELECTSCRIPT = 4194304,
			SHOWHELP = 4,
			TTONLY = 262144,
			USESTYLE = 128,
			WYSIWYG = 32768,
		}
		public enum FINDREPLACE_FLAGS : uint32
		{
			DIALOGTERM = 64,
			DOWN = 1,
			ENABLEHOOK = 256,
			ENABLETEMPLATE = 512,
			ENABLETEMPLATEHANDLE = 8192,
			FINDNEXT = 8,
			HIDEUPDOWN = 16384,
			HIDEMATCHCASE = 32768,
			HIDEWHOLEWORD = 65536,
			MATCHCASE = 4,
			NOMATCHCASE = 2048,
			NOUPDOWN = 1024,
			NOWHOLEWORD = 4096,
			REPLACE = 16,
			REPLACEALL = 32,
			SHOWHELP = 128,
			WHOLEWORD = 2,
		}
		[AllowDuplicates]
		public enum PRINTDLGEX_FLAGS : uint32
		{
			ALLPAGES = 0,
			COLLATE = 16,
			CURRENTPAGE = 4194304,
			DISABLEPRINTTOFILE = 524288,
			ENABLEPRINTTEMPLATE = 16384,
			ENABLEPRINTTEMPLATEHANDLE = 65536,
			EXCLUSIONFLAGS = 16777216,
			HIDEPRINTTOFILE = 1048576,
			NOCURRENTPAGE = 8388608,
			NOPAGENUMS = 8,
			NOSELECTION = 4,
			NOWARNING = 128,
			PAGENUMS = 2,
			PRINTTOFILE = 32,
			RETURNDC = 256,
			RETURNDEFAULT = 1024,
			RETURNIC = 512,
			SELECTION = 1,
			USEDEVMODECOPIES = 262144,
			USEDEVMODECOPIESANDCOLLATE = 262144,
			USELARGETEMPLATE = 268435456,
			ENABLEPRINTHOOK = 4096,
			ENABLESETUPHOOK = 8192,
			ENABLESETUPTEMPLATE = 32768,
			ENABLESETUPTEMPLATEHANDLE = 131072,
			NONETWORKBUTTON = 2097152,
			PRINTSETUP = 64,
			SHOWHELP = 2048,
		}
		public enum CHOOSEFONT_FONT_TYPE : uint16
		{
			BOLD_FONTTYPE = 256,
			ITALIC_FONTTYPE = 512,
			PRINTER_FONTTYPE = 16384,
			REGULAR_FONTTYPE = 1024,
			SCREEN_FONTTYPE = 8192,
			SIMULATED_FONTTYPE = 32768,
		}
		
		// --- Function Pointers ---
		
		public function uint LPOFNHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPCCHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPFRHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPCFHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPPRINTHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPSETUPHOOKPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPPAGEPAINTHOOK(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		public function uint LPPAGESETUPHOOK(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct OPENFILENAME_NT4A
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public PSTR lpstrFilter;
			public PSTR lpstrCustomFilter;
			public uint32 nMaxCustFilter;
			public uint32 nFilterIndex;
			public PSTR lpstrFile;
			public uint32 nMaxFile;
			public PSTR lpstrFileTitle;
			public uint32 nMaxFileTitle;
			public PSTR lpstrInitialDir;
			public PSTR lpstrTitle;
			public uint32 Flags;
			public uint16 nFileOffset;
			public uint16 nFileExtension;
			public PSTR lpstrDefExt;
			public LPARAM lCustData;
			public LPOFNHOOKPROC lpfnHook;
			public PSTR lpTemplateName;
		}
		[CRepr]
		public struct OPENFILENAME_NT4W
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public PWSTR lpstrFilter;
			public PWSTR lpstrCustomFilter;
			public uint32 nMaxCustFilter;
			public uint32 nFilterIndex;
			public PWSTR lpstrFile;
			public uint32 nMaxFile;
			public PWSTR lpstrFileTitle;
			public uint32 nMaxFileTitle;
			public PWSTR lpstrInitialDir;
			public PWSTR lpstrTitle;
			public uint32 Flags;
			public uint16 nFileOffset;
			public uint16 nFileExtension;
			public PWSTR lpstrDefExt;
			public LPARAM lCustData;
			public LPOFNHOOKPROC lpfnHook;
			public PWSTR lpTemplateName;
		}
		[CRepr]
		public struct OPENFILENAMEA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public PSTR lpstrFilter;
			public PSTR lpstrCustomFilter;
			public uint32 nMaxCustFilter;
			public uint32 nFilterIndex;
			public PSTR lpstrFile;
			public uint32 nMaxFile;
			public PSTR lpstrFileTitle;
			public uint32 nMaxFileTitle;
			public PSTR lpstrInitialDir;
			public PSTR lpstrTitle;
			public OPEN_FILENAME_FLAGS Flags;
			public uint16 nFileOffset;
			public uint16 nFileExtension;
			public PSTR lpstrDefExt;
			public LPARAM lCustData;
			public LPOFNHOOKPROC lpfnHook;
			public PSTR lpTemplateName;
			public void* pvReserved;
			public uint32 dwReserved;
			public OPEN_FILENAME_FLAGS_EX FlagsEx;
		}
		[CRepr]
		public struct OPENFILENAMEW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public PWSTR lpstrFilter;
			public PWSTR lpstrCustomFilter;
			public uint32 nMaxCustFilter;
			public uint32 nFilterIndex;
			public PWSTR lpstrFile;
			public uint32 nMaxFile;
			public PWSTR lpstrFileTitle;
			public uint32 nMaxFileTitle;
			public PWSTR lpstrInitialDir;
			public PWSTR lpstrTitle;
			public OPEN_FILENAME_FLAGS Flags;
			public uint16 nFileOffset;
			public uint16 nFileExtension;
			public PWSTR lpstrDefExt;
			public LPARAM lCustData;
			public LPOFNHOOKPROC lpfnHook;
			public PWSTR lpTemplateName;
			public void* pvReserved;
			public uint32 dwReserved;
			public OPEN_FILENAME_FLAGS_EX FlagsEx;
		}
		[CRepr]
		public struct OFNOTIFYA
		{
			public NMHDR hdr;
			public OPENFILENAMEA* lpOFN;
			public PSTR pszFile;
		}
		[CRepr]
		public struct OFNOTIFYW
		{
			public NMHDR hdr;
			public OPENFILENAMEW* lpOFN;
			public PWSTR pszFile;
		}
		[CRepr]
		public struct OFNOTIFYEXA
		{
			public NMHDR hdr;
			public OPENFILENAMEA* lpOFN;
			public void* psf;
			public void* pidl;
		}
		[CRepr]
		public struct OFNOTIFYEXW
		{
			public NMHDR hdr;
			public OPENFILENAMEW* lpOFN;
			public void* psf;
			public void* pidl;
		}
		[CRepr]
		public struct CHOOSECOLORA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HWND hInstance;
			public uint32 rgbResult;
			public uint32* lpCustColors;
			public uint32 Flags;
			public LPARAM lCustData;
			public LPCCHOOKPROC lpfnHook;
			public PSTR lpTemplateName;
		}
		[CRepr]
		public struct CHOOSECOLORW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HWND hInstance;
			public uint32 rgbResult;
			public uint32* lpCustColors;
			public uint32 Flags;
			public LPARAM lCustData;
			public LPCCHOOKPROC lpfnHook;
			public PWSTR lpTemplateName;
		}
		[CRepr]
		public struct FINDREPLACEA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public FINDREPLACE_FLAGS Flags;
			public PSTR lpstrFindWhat;
			public PSTR lpstrReplaceWith;
			public uint16 wFindWhatLen;
			public uint16 wReplaceWithLen;
			public LPARAM lCustData;
			public LPFRHOOKPROC lpfnHook;
			public PSTR lpTemplateName;
		}
		[CRepr]
		public struct FINDREPLACEW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HINSTANCE hInstance;
			public FINDREPLACE_FLAGS Flags;
			public PWSTR lpstrFindWhat;
			public PWSTR lpstrReplaceWith;
			public uint16 wFindWhatLen;
			public uint16 wReplaceWithLen;
			public LPARAM lCustData;
			public LPFRHOOKPROC lpfnHook;
			public PWSTR lpTemplateName;
		}
		[CRepr]
		public struct CHOOSEFONTA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HDC hDC;
			public LOGFONTA* lpLogFont;
			public int32 iPointSize;
			public CHOOSEFONT_FLAGS Flags;
			public uint32 rgbColors;
			public LPARAM lCustData;
			public LPCFHOOKPROC lpfnHook;
			public PSTR lpTemplateName;
			public HINSTANCE hInstance;
			public PSTR lpszStyle;
			public CHOOSEFONT_FONT_TYPE nFontType;
			public uint16 ___MISSING_ALIGNMENT__;
			public int32 nSizeMin;
			public int32 nSizeMax;
		}
		[CRepr]
		public struct CHOOSEFONTW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public HDC hDC;
			public LOGFONTW* lpLogFont;
			public int32 iPointSize;
			public CHOOSEFONT_FLAGS Flags;
			public uint32 rgbColors;
			public LPARAM lCustData;
			public LPCFHOOKPROC lpfnHook;
			public PWSTR lpTemplateName;
			public HINSTANCE hInstance;
			public PWSTR lpszStyle;
			public CHOOSEFONT_FONT_TYPE nFontType;
			public uint16 ___MISSING_ALIGNMENT__;
			public int32 nSizeMin;
			public int32 nSizeMax;
		}
		[CRepr]
		public struct PRINTDLGA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public HDC hDC;
			public PRINTDLGEX_FLAGS Flags;
			public uint16 nFromPage;
			public uint16 nToPage;
			public uint16 nMinPage;
			public uint16 nMaxPage;
			public uint16 nCopies;
			public HINSTANCE hInstance;
			public LPARAM lCustData;
			public LPPRINTHOOKPROC lpfnPrintHook;
			public LPSETUPHOOKPROC lpfnSetupHook;
			public PSTR lpPrintTemplateName;
			public PSTR lpSetupTemplateName;
			public int hPrintTemplate;
			public int hSetupTemplate;
		}
		[CRepr]
		public struct PRINTDLGW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public HDC hDC;
			public PRINTDLGEX_FLAGS Flags;
			public uint16 nFromPage;
			public uint16 nToPage;
			public uint16 nMinPage;
			public uint16 nMaxPage;
			public uint16 nCopies;
			public HINSTANCE hInstance;
			public LPARAM lCustData;
			public LPPRINTHOOKPROC lpfnPrintHook;
			public LPSETUPHOOKPROC lpfnSetupHook;
			public PWSTR lpPrintTemplateName;
			public PWSTR lpSetupTemplateName;
			public int hPrintTemplate;
			public int hSetupTemplate;
		}
		[CRepr]
		public struct PRINTPAGERANGE
		{
			public uint32 nFromPage;
			public uint32 nToPage;
		}
		[CRepr]
		public struct PRINTDLGEXA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public HDC hDC;
			public PRINTDLGEX_FLAGS Flags;
			public uint32 Flags2;
			public uint32 ExclusionFlags;
			public uint32 nPageRanges;
			public uint32 nMaxPageRanges;
			public PRINTPAGERANGE* lpPageRanges;
			public uint32 nMinPage;
			public uint32 nMaxPage;
			public uint32 nCopies;
			public HINSTANCE hInstance;
			public PSTR lpPrintTemplateName;
			public IUnknown* lpCallback;
			public uint32 nPropertyPages;
			public HPROPSHEETPAGE* lphPropertyPages;
			public uint32 nStartPage;
			public uint32 dwResultAction;
		}
		[CRepr]
		public struct PRINTDLGEXW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public HDC hDC;
			public PRINTDLGEX_FLAGS Flags;
			public uint32 Flags2;
			public uint32 ExclusionFlags;
			public uint32 nPageRanges;
			public uint32 nMaxPageRanges;
			public PRINTPAGERANGE* lpPageRanges;
			public uint32 nMinPage;
			public uint32 nMaxPage;
			public uint32 nCopies;
			public HINSTANCE hInstance;
			public PWSTR lpPrintTemplateName;
			public IUnknown* lpCallback;
			public uint32 nPropertyPages;
			public HPROPSHEETPAGE* lphPropertyPages;
			public uint32 nStartPage;
			public uint32 dwResultAction;
		}
		[CRepr]
		public struct DEVNAMES
		{
			public uint16 wDriverOffset;
			public uint16 wDeviceOffset;
			public uint16 wOutputOffset;
			public uint16 wDefault;
		}
		[CRepr]
		public struct PAGESETUPDLGA
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public PAGESETUPDLG_FLAGS Flags;
			public POINT ptPaperSize;
			public RECT rtMinMargin;
			public RECT rtMargin;
			public HINSTANCE hInstance;
			public LPARAM lCustData;
			public LPPAGESETUPHOOK lpfnPageSetupHook;
			public LPPAGEPAINTHOOK lpfnPagePaintHook;
			public PSTR lpPageSetupTemplateName;
			public int hPageSetupTemplate;
		}
		[CRepr]
		public struct PAGESETUPDLGW
		{
			public uint32 lStructSize;
			public HWND hwndOwner;
			public int hDevMode;
			public int hDevNames;
			public PAGESETUPDLG_FLAGS Flags;
			public POINT ptPaperSize;
			public RECT rtMinMargin;
			public RECT rtMargin;
			public HINSTANCE hInstance;
			public LPARAM lCustData;
			public LPPAGESETUPHOOK lpfnPageSetupHook;
			public LPPAGEPAINTHOOK lpfnPagePaintHook;
			public PWSTR lpPageSetupTemplateName;
			public int hPageSetupTemplate;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IPrintDialogCallback : IUnknown
		{
			public const new Guid IID = .(0x5852a2c3, 0x6530, 0x11d1, 0xb6, 0xa3, 0x00, 0x00, 0xf8, 0x75, 0x7b, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitDone() mut => VT.InitDone(ref this);
			public HRESULT SelectionChange() mut => VT.SelectionChange(ref this);
			public HRESULT HandleMessage(HWND hDlg, uint32 uMsg, WPARAM wParam, LPARAM lParam, out LRESULT pResult) mut => VT.HandleMessage(ref this, hDlg, uMsg, wParam, lParam, out pResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogCallback self) InitDone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogCallback self) SelectionChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogCallback self, HWND hDlg, uint32 uMsg, WPARAM wParam, LPARAM lParam, out LRESULT pResult) HandleMessage;
			}
		}
		[CRepr]
		public struct IPrintDialogServices : IUnknown
		{
			public const new Guid IID = .(0x509aaeda, 0x5639, 0x11d1, 0xb6, 0xa1, 0x00, 0x00, 0xf8, 0x75, 0x7b, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentDevMode(out DEVMODEA pDevMode, out uint32 pcbSize) mut => VT.GetCurrentDevMode(ref this, out pDevMode, out pcbSize);
			public HRESULT GetCurrentPrinterName(char16* pPrinterName, out uint32 pcchSize) mut => VT.GetCurrentPrinterName(ref this, pPrinterName, out pcchSize);
			public HRESULT GetCurrentPortName(char16* pPortName, out uint32 pcchSize) mut => VT.GetCurrentPortName(ref this, pPortName, out pcchSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogServices self, out DEVMODEA pDevMode, out uint32 pcbSize) GetCurrentDevMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogServices self, char16* pPrinterName, out uint32 pcchSize) GetCurrentPrinterName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintDialogServices self, char16* pPortName, out uint32 pcchSize) GetCurrentPortName;
			}
		}
		
		// --- Functions ---
		
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOpenFileNameA(out OPENFILENAMEA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOpenFileNameW(out OPENFILENAMEW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSaveFileNameA(out OPENFILENAMEA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetSaveFileNameW(out OPENFILENAMEW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 GetFileTitleA(PSTR param0, uint8* Buf, uint16 cchSize);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int16 GetFileTitleW(PWSTR param0, char16* Buf, uint16 cchSize);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChooseColorA(out CHOOSECOLORA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChooseColorW(out CHOOSECOLORW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND FindTextA(out FINDREPLACEA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND FindTextW(out FINDREPLACEW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND ReplaceTextA(out FINDREPLACEA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND ReplaceTextW(out FINDREPLACEW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChooseFontA(out CHOOSEFONTA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChooseFontW(out CHOOSEFONTW param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrintDlgA(out PRINTDLGA pPD);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrintDlgW(out PRINTDLGW pPD);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrintDlgExA(out PRINTDLGEXA pPD);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PrintDlgExW(out PRINTDLGEXW pPD);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern COMMON_DLG_ERRORS CommDlgExtendedError();
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PageSetupDlgA(out PAGESETUPDLGA param0);
		[Import("comdlg32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PageSetupDlgW(out PAGESETUPDLGW param0);
	}
}
