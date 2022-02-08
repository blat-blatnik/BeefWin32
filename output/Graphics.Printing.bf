using System;

// namespace Graphics.Printing
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 USB_PRINTER_INTERFACE_CLASSIC = 1;
		public const uint32 USB_PRINTER_INTERFACE_IPP = 2;
		public const uint32 USB_PRINTER_INTERFACE_DUAL = 3;
		public const uint32 USBPRINT_IOCTL_INDEX = 0;
		public const uint32 IOCTL_USBPRINT_GET_LPT_STATUS = 2228272;
		public const uint32 IOCTL_USBPRINT_GET_1284_ID = 2228276;
		public const uint32 IOCTL_USBPRINT_VENDOR_SET_COMMAND = 2228280;
		public const uint32 IOCTL_USBPRINT_VENDOR_GET_COMMAND = 2228284;
		public const uint32 IOCTL_USBPRINT_SOFT_RESET = 2228288;
		public const uint32 IOCTL_USBPRINT_GET_PROTOCOL = 2228292;
		public const uint32 IOCTL_USBPRINT_SET_PROTOCOL = 2228296;
		public const uint32 IOCTL_USBPRINT_GET_INTERFACE_TYPE = 2228300;
		public const uint32 IOCTL_USBPRINT_SET_PORT_NUMBER = 2228304;
		public const uint32 IOCTL_USBPRINT_ADD_MSIPP_COMPAT_ID = 2228308;
		public const uint32 IOCTL_USBPRINT_SET_DEVICE_ID = 2228312;
		public const uint32 IOCTL_USBPRINT_ADD_CHILD_DEVICE = 2228316;
		public const uint32 IOCTL_USBPRINT_CYCLE_PORT = 2228320;
		public const uint32 TVOT_2STATES = 0;
		public const uint32 TVOT_3STATES = 1;
		public const uint32 TVOT_UDARROW = 2;
		public const uint32 TVOT_TRACKBAR = 3;
		public const uint32 TVOT_SCROLLBAR = 4;
		public const uint32 TVOT_LISTBOX = 5;
		public const uint32 TVOT_COMBOBOX = 6;
		public const uint32 TVOT_EDITBOX = 7;
		public const uint32 TVOT_PUSHBUTTON = 8;
		public const uint32 TVOT_CHKBOX = 9;
		public const uint32 TVOT_NSTATES_EX = 10;
		public const uint32 CHKBOXS_FALSE_TRUE = 0;
		public const uint32 CHKBOXS_NO_YES = 1;
		public const uint32 CHKBOXS_OFF_ON = 2;
		public const uint32 CHKBOXS_FALSE_PDATA = 3;
		public const uint32 CHKBOXS_NO_PDATA = 4;
		public const uint32 CHKBOXS_OFF_PDATA = 5;
		public const uint32 CHKBOXS_NONE_PDATA = 6;
		public const uint32 PUSHBUTTON_TYPE_DLGPROC = 0;
		public const uint32 PUSHBUTTON_TYPE_CALLBACK = 1;
		public const uint32 PUSHBUTTON_TYPE_HTCLRADJ = 2;
		public const uint32 PUSHBUTTON_TYPE_HTSETUP = 3;
		public const uint32 MAX_RES_STR_CHARS = 160;
		public const uint32 OPTPF_HIDE = 1;
		public const uint32 OPTPF_DISABLED = 2;
		public const uint32 OPTPF_ICONID_AS_HICON = 4;
		public const uint32 OPTPF_OVERLAY_WARNING_ICON = 8;
		public const uint32 OPTPF_OVERLAY_STOP_ICON = 16;
		public const uint32 OPTPF_OVERLAY_NO_ICON = 32;
		public const uint32 OPTPF_USE_HDLGTEMPLATE = 64;
		public const uint32 OPTPF_MASK = 127;
		public const uint32 OPTCF_HIDE = 1;
		public const uint32 OPTCF_MASK = 1;
		public const uint32 OPTTF_TYPE_DISABLED = 1;
		public const uint32 OPTTF_NOSPACE_BEFORE_POSTFIX = 2;
		public const uint32 OPTTF_MASK = 3;
		public const uint32 OTS_LBCB_SORT = 1;
		public const uint32 OTS_LBCB_PROPPAGE_LBUSECB = 2;
		public const uint32 OTS_LBCB_PROPPAGE_CBUSELB = 4;
		public const uint32 OTS_LBCB_INCL_ITEM_NONE = 8;
		public const uint32 OTS_LBCB_NO_ICON16_IN_ITEM = 16;
		public const uint32 OTS_PUSH_INCL_SETUP_TITLE = 32;
		public const uint32 OTS_PUSH_NO_DOT_DOT_DOT = 64;
		public const uint32 OTS_PUSH_ENABLE_ALWAYS = 128;
		public const uint32 OTS_MASK = 255;
		public const uint32 EPF_PUSH_TYPE_DLGPROC = 1;
		public const uint32 EPF_INCL_SETUP_TITLE = 2;
		public const uint32 EPF_NO_DOT_DOT_DOT = 4;
		public const uint32 EPF_ICONID_AS_HICON = 8;
		public const uint32 EPF_OVERLAY_WARNING_ICON = 16;
		public const uint32 EPF_OVERLAY_STOP_ICON = 32;
		public const uint32 EPF_OVERLAY_NO_ICON = 64;
		public const uint32 EPF_USE_HDLGTEMPLATE = 128;
		public const uint32 EPF_MASK = 255;
		public const uint32 ECBF_CHECKNAME_AT_FRONT = 1;
		public const uint32 ECBF_CHECKNAME_ONLY_ENABLED = 2;
		public const uint32 ECBF_ICONID_AS_HICON = 4;
		public const uint32 ECBF_OVERLAY_WARNING_ICON = 8;
		public const uint32 ECBF_OVERLAY_ECBICON_IF_CHECKED = 16;
		public const uint32 ECBF_OVERLAY_STOP_ICON = 32;
		public const uint32 ECBF_OVERLAY_NO_ICON = 64;
		public const uint32 ECBF_CHECKNAME_ONLY = 128;
		public const uint32 ECBF_MASK = 255;
		public const int32 OPTIF_COLLAPSE = 1;
		public const int32 OPTIF_HIDE = 2;
		public const int32 OPTIF_CALLBACK = 4;
		public const int32 OPTIF_CHANGED = 8;
		public const int32 OPTIF_CHANGEONCE = 16;
		public const int32 OPTIF_DISABLED = 32;
		public const int32 OPTIF_ECB_CHECKED = 64;
		public const int32 OPTIF_EXT_HIDE = 128;
		public const int32 OPTIF_EXT_DISABLED = 256;
		public const int32 OPTIF_SEL_AS_HICON = 512;
		public const int32 OPTIF_EXT_IS_EXTPUSH = 1024;
		public const int32 OPTIF_NO_GROUPBOX_NAME = 2048;
		public const int32 OPTIF_OVERLAY_WARNING_ICON = 4096;
		public const int32 OPTIF_OVERLAY_STOP_ICON = 8192;
		public const int32 OPTIF_OVERLAY_NO_ICON = 16384;
		public const int32 OPTIF_INITIAL_TVITEM = 32768;
		public const int32 OPTIF_HAS_POIEXT = 65536;
		public const int32 OPTIF_MASK = 131071;
		public const uint32 DMPUB_NONE = 0;
		public const uint32 DMPUB_FIRST = 1;
		public const uint32 DMPUB_ORIENTATION = 1;
		public const uint32 DMPUB_SCALE = 2;
		public const uint32 DMPUB_COPIES_COLLATE = 3;
		public const uint32 DMPUB_DEFSOURCE = 4;
		public const uint32 DMPUB_PRINTQUALITY = 5;
		public const uint32 DMPUB_COLOR = 6;
		public const uint32 DMPUB_DUPLEX = 7;
		public const uint32 DMPUB_TTOPTION = 8;
		public const uint32 DMPUB_FORMNAME = 9;
		public const uint32 DMPUB_ICMMETHOD = 10;
		public const uint32 DMPUB_ICMINTENT = 11;
		public const uint32 DMPUB_MEDIATYPE = 12;
		public const uint32 DMPUB_DITHERTYPE = 13;
		public const uint32 DMPUB_OUTPUTBIN = 14;
		public const uint32 DMPUB_QUALITY = 15;
		public const uint32 DMPUB_NUP = 16;
		public const uint32 DMPUB_PAGEORDER = 17;
		public const uint32 DMPUB_NUP_DIRECTION = 18;
		public const uint32 DMPUB_MANUAL_DUPLEX = 19;
		public const uint32 DMPUB_STAPLE = 20;
		public const uint32 DMPUB_BOOKLET_EDGE = 21;
		public const uint32 DMPUB_LAST = 21;
		public const uint32 DMPUB_OEM_PAPER_ITEM = 97;
		public const uint32 DMPUB_OEM_GRAPHIC_ITEM = 98;
		public const uint32 DMPUB_OEM_ROOT_ITEM = 99;
		public const uint32 DMPUB_USER = 100;
		public const uint32 OIEXTF_ANSI_STRING = 1;
		public const uint32 CPSUICB_REASON_SEL_CHANGED = 0;
		public const uint32 CPSUICB_REASON_PUSHBUTTON = 1;
		public const uint32 CPSUICB_REASON_ECB_CHANGED = 2;
		public const uint32 CPSUICB_REASON_DLGPROC = 3;
		public const uint32 CPSUICB_REASON_UNDO_CHANGES = 4;
		public const uint32 CPSUICB_REASON_EXTPUSH = 5;
		public const uint32 CPSUICB_REASON_APPLYNOW = 6;
		public const uint32 CPSUICB_REASON_OPTITEM_SETFOCUS = 7;
		public const uint32 CPSUICB_REASON_ITEMS_REVERTED = 8;
		public const uint32 CPSUICB_REASON_ABOUT = 9;
		public const uint32 CPSUICB_REASON_SETACTIVE = 10;
		public const uint32 CPSUICB_REASON_KILLACTIVE = 11;
		public const uint32 CPSUICB_ACTION_NONE = 0;
		public const uint32 CPSUICB_ACTION_OPTIF_CHANGED = 1;
		public const uint32 CPSUICB_ACTION_REINIT_ITEMS = 2;
		public const uint32 CPSUICB_ACTION_NO_APPLY_EXIT = 3;
		public const uint32 CPSUICB_ACTION_ITEMS_APPLIED = 4;
		public const uint32 DP_STD_TREEVIEWPAGE = 65535;
		public const uint32 DP_STD_DOCPROPPAGE2 = 65534;
		public const uint32 DP_STD_DOCPROPPAGE1 = 65533;
		public const uint32 DP_STD_RESERVED_START = 65520;
		public const uint32 MAX_DLGPAGE_COUNT = 64;
		public const uint32 DPF_ICONID_AS_HICON = 1;
		public const uint32 DPF_USE_HDLGTEMPLATE = 2;
		public const uint32 CPSUIF_UPDATE_PERMISSION = 1;
		public const uint32 CPSUIF_ICONID_AS_HICON = 2;
		public const uint32 CPSUIF_ABOUT_CALLBACK = 4;
		public const uint32 CPSFUNC_ADD_HPROPSHEETPAGE = 0;
		public const uint32 CPSFUNC_ADD_PROPSHEETPAGEW = 1;
		public const uint32 CPSFUNC_ADD_PCOMPROPSHEETUIA = 2;
		public const uint32 CPSFUNC_ADD_PCOMPROPSHEETUIW = 3;
		public const uint32 CPSFUNC_ADD_PFNPROPSHEETUIA = 4;
		public const uint32 CPSFUNC_ADD_PFNPROPSHEETUIW = 5;
		public const uint32 CPSFUNC_DELETE_HCOMPROPSHEET = 6;
		public const uint32 CPSFUNC_SET_HSTARTPAGE = 7;
		public const uint32 CPSFUNC_GET_PAGECOUNT = 8;
		public const uint32 CPSFUNC_SET_RESULT = 9;
		public const uint32 CPSFUNC_GET_HPSUIPAGES = 10;
		public const uint32 CPSFUNC_LOAD_CPSUI_STRINGA = 11;
		public const uint32 CPSFUNC_LOAD_CPSUI_STRINGW = 12;
		public const uint32 CPSFUNC_LOAD_CPSUI_ICON = 13;
		public const uint32 CPSFUNC_GET_PFNPROPSHEETUI_ICON = 14;
		public const uint32 CPSFUNC_ADD_PROPSHEETPAGEA = 15;
		public const uint32 CPSFUNC_INSERT_PSUIPAGEA = 16;
		public const uint32 CPSFUNC_INSERT_PSUIPAGEW = 17;
		public const uint32 CPSFUNC_SET_PSUIPAGE_TITLEA = 18;
		public const uint32 CPSFUNC_SET_PSUIPAGE_TITLEW = 19;
		public const uint32 CPSFUNC_SET_PSUIPAGE_ICON = 20;
		public const uint32 CPSFUNC_SET_DATABLOCK = 21;
		public const uint32 CPSFUNC_QUERY_DATABLOCK = 22;
		public const uint32 CPSFUNC_SET_DMPUB_HIDEBITS = 23;
		public const uint32 CPSFUNC_IGNORE_CPSUI_PSN_APPLY = 24;
		public const uint32 CPSFUNC_DO_APPLY_CPSUI = 25;
		public const uint32 CPSFUNC_SET_FUSION_CONTEXT = 26;
		public const uint32 MAX_CPSFUNC_INDEX = 26;
		public const uint32 CPSFUNC_ADD_PCOMPROPSHEETUI = 3;
		public const uint32 CPSFUNC_ADD_PFNPROPSHEETUI = 5;
		public const uint32 CPSFUNC_LOAD_CPSUI_STRING = 12;
		public const uint32 CPSFUNC_ADD_PROPSHEETPAGE = 1;
		public const uint32 CPSFUNC_INSERT_PSUIPAGE = 17;
		public const uint32 CPSFUNC_SET_PSUIPAGE_TITLE = 19;
		public const uint32 SR_OWNER = 0;
		public const uint32 SR_OWNER_PARENT = 1;
		public const uint32 PSUIPAGEINSERT_GROUP_PARENT = 0;
		public const uint32 PSUIPAGEINSERT_PCOMPROPSHEETUI = 1;
		public const uint32 PSUIPAGEINSERT_PFNPROPSHEETUI = 2;
		public const uint32 PSUIPAGEINSERT_PROPSHEETPAGE = 3;
		public const uint32 PSUIPAGEINSERT_HPROPSHEETPAGE = 4;
		public const uint32 PSUIPAGEINSERT_DLL = 5;
		public const uint32 MAX_PSUIPAGEINSERT_INDEX = 5;
		public const uint32 INSPSUIPAGE_MODE_BEFORE = 0;
		public const uint32 INSPSUIPAGE_MODE_AFTER = 1;
		public const uint32 INSPSUIPAGE_MODE_FIRST_CHILD = 2;
		public const uint32 INSPSUIPAGE_MODE_LAST_CHILD = 3;
		public const uint32 INSPSUIPAGE_MODE_INDEX = 4;
		public const uint32 SSP_TVPAGE = 10000;
		public const uint32 SSP_STDPAGE1 = 10001;
		public const uint32 SSP_STDPAGE2 = 10002;
		public const uint32 APPLYCPSUI_NO_NEWDEF = 1;
		public const uint32 APPLYCPSUI_OK_CANCEL_BUTTON = 2;
		public const uint32 PROPSHEETUI_REASON_INIT = 0;
		public const uint32 PROPSHEETUI_REASON_GET_INFO_HEADER = 1;
		public const uint32 PROPSHEETUI_REASON_DESTROY = 2;
		public const uint32 PROPSHEETUI_REASON_SET_RESULT = 3;
		public const uint32 PROPSHEETUI_REASON_GET_ICON = 4;
		public const uint32 PROPSHEETUI_REASON_BEFORE_INIT = 5;
		public const uint32 MAX_PROPSHEETUI_REASON_INDEX = 5;
		public const uint32 PROPSHEETUI_INFO_VERSION = 256;
		public const uint32 PSUIINFO_UNICODE = 1;
		public const uint32 PSUIHDRF_OBSOLETE = 1;
		public const uint32 PSUIHDRF_NOAPPLYNOW = 2;
		public const uint32 PSUIHDRF_PROPTITLE = 4;
		public const uint32 PSUIHDRF_USEHICON = 8;
		public const uint32 PSUIHDRF_DEFTITLE = 16;
		public const uint32 PSUIHDRF_EXACT_PTITLE = 32;
		public const uint32 CPSUI_CANCEL = 0;
		public const uint32 CPSUI_OK = 1;
		public const uint32 CPSUI_RESTARTWINDOWS = 2;
		public const uint32 CPSUI_REBOOTSYSTEM = 3;
		public const int32 ERR_CPSUI_GETLASTERROR = -1;
		public const int32 ERR_CPSUI_ALLOCMEM_FAILED = -2;
		public const int32 ERR_CPSUI_INVALID_PDATA = -3;
		public const int32 ERR_CPSUI_INVALID_LPARAM = -4;
		public const int32 ERR_CPSUI_NULL_HINST = -5;
		public const int32 ERR_CPSUI_NULL_CALLERNAME = -6;
		public const int32 ERR_CPSUI_NULL_OPTITEMNAME = -7;
		public const int32 ERR_CPSUI_NO_PROPSHEETPAGE = -8;
		public const int32 ERR_CPSUI_TOO_MANY_PROPSHEETPAGES = -9;
		public const int32 ERR_CPSUI_CREATEPROPPAGE_FAILED = -10;
		public const int32 ERR_CPSUI_MORE_THAN_ONE_TVPAGE = -11;
		public const int32 ERR_CPSUI_MORE_THAN_ONE_STDPAGE = -12;
		public const int32 ERR_CPSUI_INVALID_PDLGPAGE = -13;
		public const int32 ERR_CPSUI_INVALID_DLGPAGE_CBSIZE = -14;
		public const int32 ERR_CPSUI_TOO_MANY_DLGPAGES = -15;
		public const int32 ERR_CPSUI_INVALID_DLGPAGEIDX = -16;
		public const int32 ERR_CPSUI_SUBITEM_DIFF_DLGPAGEIDX = -17;
		public const int32 ERR_CPSUI_NULL_POPTITEM = -18;
		public const int32 ERR_CPSUI_INVALID_OPTITEM_CBSIZE = -19;
		public const int32 ERR_CPSUI_INVALID_OPTTYPE_CBSIZE = -20;
		public const int32 ERR_CPSUI_INVALID_OPTTYPE_COUNT = -21;
		public const int32 ERR_CPSUI_NULL_POPTPARAM = -22;
		public const int32 ERR_CPSUI_INVALID_OPTPARAM_CBSIZE = -23;
		public const int32 ERR_CPSUI_INVALID_EDITBOX_PSEL = -24;
		public const int32 ERR_CPSUI_INVALID_EDITBOX_BUF_SIZE = -25;
		public const int32 ERR_CPSUI_INVALID_ECB_CBSIZE = -26;
		public const int32 ERR_CPSUI_NULL_ECB_PTITLE = -27;
		public const int32 ERR_CPSUI_NULL_ECB_PCHECKEDNAME = -28;
		public const int32 ERR_CPSUI_INVALID_DMPUBID = -29;
		public const int32 ERR_CPSUI_INVALID_DMPUB_TVOT = -30;
		public const int32 ERR_CPSUI_CREATE_TRACKBAR_FAILED = -31;
		public const int32 ERR_CPSUI_CREATE_UDARROW_FAILED = -32;
		public const int32 ERR_CPSUI_CREATE_IMAGELIST_FAILED = -33;
		public const int32 ERR_CPSUI_INVALID_TVOT_TYPE = -34;
		public const int32 ERR_CPSUI_INVALID_LBCB_TYPE = -35;
		public const int32 ERR_CPSUI_SUBITEM_DIFF_OPTIF_HIDE = -36;
		public const int32 ERR_CPSUI_INVALID_PUSHBUTTON_TYPE = -38;
		public const int32 ERR_CPSUI_INVALID_EXTPUSH_CBSIZE = -39;
		public const int32 ERR_CPSUI_NULL_EXTPUSH_DLGPROC = -40;
		public const int32 ERR_CPSUI_NO_EXTPUSH_DLGTEMPLATEID = -41;
		public const int32 ERR_CPSUI_NULL_EXTPUSH_CALLBACK = -42;
		public const int32 ERR_CPSUI_DMCOPIES_USE_EXTPUSH = -43;
		public const int32 ERR_CPSUI_ZERO_OPTITEM = -44;
		public const int32 ERR_CPSUI_FUNCTION_NOT_IMPLEMENTED = -9999;
		public const int32 ERR_CPSUI_INTERNAL_ERROR = -10000;
		public const uint32 IDI_CPSUI_ICONID_FIRST = 64000;
		public const uint32 IDI_CPSUI_EMPTY = 64000;
		public const uint32 IDI_CPSUI_SEL_NONE = 64001;
		public const uint32 IDI_CPSUI_WARNING = 64002;
		public const uint32 IDI_CPSUI_NO = 64003;
		public const uint32 IDI_CPSUI_YES = 64004;
		public const uint32 IDI_CPSUI_FALSE = 64005;
		public const uint32 IDI_CPSUI_TRUE = 64006;
		public const uint32 IDI_CPSUI_OFF = 64007;
		public const uint32 IDI_CPSUI_ON = 64008;
		public const uint32 IDI_CPSUI_PAPER_OUTPUT = 64009;
		public const uint32 IDI_CPSUI_ENVELOPE = 64010;
		public const uint32 IDI_CPSUI_MEM = 64011;
		public const uint32 IDI_CPSUI_FONTCARTHDR = 64012;
		public const uint32 IDI_CPSUI_FONTCART = 64013;
		public const uint32 IDI_CPSUI_STAPLER_ON = 64014;
		public const uint32 IDI_CPSUI_STAPLER_OFF = 64015;
		public const uint32 IDI_CPSUI_HT_HOST = 64016;
		public const uint32 IDI_CPSUI_HT_DEVICE = 64017;
		public const uint32 IDI_CPSUI_TT_PRINTASGRAPHIC = 64018;
		public const uint32 IDI_CPSUI_TT_DOWNLOADSOFT = 64019;
		public const uint32 IDI_CPSUI_TT_DOWNLOADVECT = 64020;
		public const uint32 IDI_CPSUI_TT_SUBDEV = 64021;
		public const uint32 IDI_CPSUI_PORTRAIT = 64022;
		public const uint32 IDI_CPSUI_LANDSCAPE = 64023;
		public const uint32 IDI_CPSUI_ROT_LAND = 64024;
		public const uint32 IDI_CPSUI_AUTOSEL = 64025;
		public const uint32 IDI_CPSUI_PAPER_TRAY = 64026;
		public const uint32 IDI_CPSUI_PAPER_TRAY2 = 64027;
		public const uint32 IDI_CPSUI_PAPER_TRAY3 = 64028;
		public const uint32 IDI_CPSUI_TRANSPARENT = 64029;
		public const uint32 IDI_CPSUI_COLLATE = 64030;
		public const uint32 IDI_CPSUI_DUPLEX_NONE = 64031;
		public const uint32 IDI_CPSUI_DUPLEX_HORZ = 64032;
		public const uint32 IDI_CPSUI_DUPLEX_VERT = 64033;
		public const uint32 IDI_CPSUI_RES_DRAFT = 64034;
		public const uint32 IDI_CPSUI_RES_LOW = 64035;
		public const uint32 IDI_CPSUI_RES_MEDIUM = 64036;
		public const uint32 IDI_CPSUI_RES_HIGH = 64037;
		public const uint32 IDI_CPSUI_RES_PRESENTATION = 64038;
		public const uint32 IDI_CPSUI_MONO = 64039;
		public const uint32 IDI_CPSUI_COLOR = 64040;
		public const uint32 IDI_CPSUI_DITHER_NONE = 64041;
		public const uint32 IDI_CPSUI_DITHER_COARSE = 64042;
		public const uint32 IDI_CPSUI_DITHER_FINE = 64043;
		public const uint32 IDI_CPSUI_DITHER_LINEART = 64044;
		public const uint32 IDI_CPSUI_SCALING = 64045;
		public const uint32 IDI_CPSUI_COPY = 64046;
		public const uint32 IDI_CPSUI_HTCLRADJ = 64047;
		public const uint32 IDI_CPSUI_HALFTONE_SETUP = 64048;
		public const uint32 IDI_CPSUI_WATERMARK = 64049;
		public const uint32 IDI_CPSUI_ERROR = 64050;
		public const uint32 IDI_CPSUI_ICM_OPTION = 64051;
		public const uint32 IDI_CPSUI_ICM_METHOD = 64052;
		public const uint32 IDI_CPSUI_ICM_INTENT = 64053;
		public const uint32 IDI_CPSUI_STD_FORM = 64054;
		public const uint32 IDI_CPSUI_OUTBIN = 64055;
		public const uint32 IDI_CPSUI_OUTPUT = 64056;
		public const uint32 IDI_CPSUI_GRAPHIC = 64057;
		public const uint32 IDI_CPSUI_ADVANCE = 64058;
		public const uint32 IDI_CPSUI_DOCUMENT = 64059;
		public const uint32 IDI_CPSUI_DEVICE = 64060;
		public const uint32 IDI_CPSUI_DEVICE2 = 64061;
		public const uint32 IDI_CPSUI_PRINTER = 64062;
		public const uint32 IDI_CPSUI_PRINTER2 = 64063;
		public const uint32 IDI_CPSUI_PRINTER3 = 64064;
		public const uint32 IDI_CPSUI_PRINTER4 = 64065;
		public const uint32 IDI_CPSUI_OPTION = 64066;
		public const uint32 IDI_CPSUI_OPTION2 = 64067;
		public const uint32 IDI_CPSUI_STOP = 64068;
		public const uint32 IDI_CPSUI_NOTINSTALLED = 64069;
		public const uint32 IDI_CPSUI_WARNING_OVERLAY = 64070;
		public const uint32 IDI_CPSUI_STOP_WARNING_OVERLAY = 64071;
		public const uint32 IDI_CPSUI_GENERIC_OPTION = 64072;
		public const uint32 IDI_CPSUI_GENERIC_ITEM = 64073;
		public const uint32 IDI_CPSUI_RUN_DIALOG = 64074;
		public const uint32 IDI_CPSUI_QUESTION = 64075;
		public const uint32 IDI_CPSUI_FORMTRAYASSIGN = 64076;
		public const uint32 IDI_CPSUI_PRINTER_FOLDER = 64077;
		public const uint32 IDI_CPSUI_INSTALLABLE_OPTION = 64078;
		public const uint32 IDI_CPSUI_PRINTER_FEATURE = 64079;
		public const uint32 IDI_CPSUI_DEVICE_FEATURE = 64080;
		public const uint32 IDI_CPSUI_FONTSUB = 64081;
		public const uint32 IDI_CPSUI_POSTSCRIPT = 64082;
		public const uint32 IDI_CPSUI_TELEPHONE = 64083;
		public const uint32 IDI_CPSUI_DUPLEX_NONE_L = 64084;
		public const uint32 IDI_CPSUI_DUPLEX_HORZ_L = 64085;
		public const uint32 IDI_CPSUI_DUPLEX_VERT_L = 64086;
		public const uint32 IDI_CPSUI_LF_PEN_PLOTTER = 64087;
		public const uint32 IDI_CPSUI_SF_PEN_PLOTTER = 64088;
		public const uint32 IDI_CPSUI_LF_RASTER_PLOTTER = 64089;
		public const uint32 IDI_CPSUI_SF_RASTER_PLOTTER = 64090;
		public const uint32 IDI_CPSUI_ROLL_PAPER = 64091;
		public const uint32 IDI_CPSUI_PEN_CARROUSEL = 64092;
		public const uint32 IDI_CPSUI_PLOTTER_PEN = 64093;
		public const uint32 IDI_CPSUI_MANUAL_FEED = 64094;
		public const uint32 IDI_CPSUI_FAX = 64095;
		public const uint32 IDI_CPSUI_PAGE_PROTECT = 64096;
		public const uint32 IDI_CPSUI_ENVELOPE_FEED = 64097;
		public const uint32 IDI_CPSUI_FONTCART_SLOT = 64098;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_PORTRAIT = 64099;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_ARROWL = 64100;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_ARROWS = 64101;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_BOOKLETL = 64102;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_BOOKLETP = 64103;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_ARROWLR = 64104;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_ROT_PORT = 64105;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_BOOKLETL_NB = 64106;
		public const uint32 IDI_CPSUI_LAYOUT_BMP_BOOKLETP_NB = 64107;
		public const uint32 IDI_CPSUI_ROT_PORT = 64110;
		public const uint32 IDI_CPSUI_NUP_BORDER = 64111;
		public const uint32 IDI_CPSUI_ICONID_LAST = 64111;
		public const uint32 IDS_CPSUI_STRID_FIRST = 64700;
		public const uint32 IDS_CPSUI_SETUP = 64700;
		public const uint32 IDS_CPSUI_MORE = 64701;
		public const uint32 IDS_CPSUI_CHANGE = 64702;
		public const uint32 IDS_CPSUI_OPTION = 64703;
		public const uint32 IDS_CPSUI_OF = 64704;
		public const uint32 IDS_CPSUI_RANGE_FROM = 64705;
		public const uint32 IDS_CPSUI_TO = 64706;
		public const uint32 IDS_CPSUI_COLON_SEP = 64707;
		public const uint32 IDS_CPSUI_LEFT_ANGLE = 64708;
		public const uint32 IDS_CPSUI_RIGHT_ANGLE = 64709;
		public const uint32 IDS_CPSUI_SLASH_SEP = 64710;
		public const uint32 IDS_CPSUI_PERCENT = 64711;
		public const uint32 IDS_CPSUI_LBCB_NOSEL = 64712;
		public const uint32 IDS_CPSUI_PROPERTIES = 64713;
		public const uint32 IDS_CPSUI_DEFAULTDOCUMENT = 64714;
		public const uint32 IDS_CPSUI_DOCUMENT = 64715;
		public const uint32 IDS_CPSUI_ADVANCEDOCUMENT = 64716;
		public const uint32 IDS_CPSUI_PRINTER = 64717;
		public const uint32 IDS_CPSUI_AUTOSELECT = 64718;
		public const uint32 IDS_CPSUI_PAPER_OUTPUT = 64719;
		public const uint32 IDS_CPSUI_GRAPHIC = 64720;
		public const uint32 IDS_CPSUI_OPTIONS = 64721;
		public const uint32 IDS_CPSUI_ADVANCED = 64722;
		public const uint32 IDS_CPSUI_STDDOCPROPTAB = 64723;
		public const uint32 IDS_CPSUI_STDDOCPROPTVTAB = 64724;
		public const uint32 IDS_CPSUI_DEVICEOPTIONS = 64725;
		public const uint32 IDS_CPSUI_FALSE = 64726;
		public const uint32 IDS_CPSUI_TRUE = 64727;
		public const uint32 IDS_CPSUI_NO = 64728;
		public const uint32 IDS_CPSUI_YES = 64729;
		public const uint32 IDS_CPSUI_OFF = 64730;
		public const uint32 IDS_CPSUI_ON = 64731;
		public const uint32 IDS_CPSUI_DEFAULT = 64732;
		public const uint32 IDS_CPSUI_ERROR = 64733;
		public const uint32 IDS_CPSUI_NONE = 64734;
		public const uint32 IDS_CPSUI_NOT = 64735;
		public const uint32 IDS_CPSUI_EXIST = 64736;
		public const uint32 IDS_CPSUI_NOTINSTALLED = 64737;
		public const uint32 IDS_CPSUI_ORIENTATION = 64738;
		public const uint32 IDS_CPSUI_SCALING = 64739;
		public const uint32 IDS_CPSUI_NUM_OF_COPIES = 64740;
		public const uint32 IDS_CPSUI_SOURCE = 64741;
		public const uint32 IDS_CPSUI_PRINTQUALITY = 64742;
		public const uint32 IDS_CPSUI_RESOLUTION = 64743;
		public const uint32 IDS_CPSUI_COLOR_APPERANCE = 64744;
		public const uint32 IDS_CPSUI_DUPLEX = 64745;
		public const uint32 IDS_CPSUI_TTOPTION = 64746;
		public const uint32 IDS_CPSUI_FORMNAME = 64747;
		public const uint32 IDS_CPSUI_ICM = 64748;
		public const uint32 IDS_CPSUI_ICMMETHOD = 64749;
		public const uint32 IDS_CPSUI_ICMINTENT = 64750;
		public const uint32 IDS_CPSUI_MEDIA = 64751;
		public const uint32 IDS_CPSUI_DITHERING = 64752;
		public const uint32 IDS_CPSUI_PORTRAIT = 64753;
		public const uint32 IDS_CPSUI_LANDSCAPE = 64754;
		public const uint32 IDS_CPSUI_ROT_LAND = 64755;
		public const uint32 IDS_CPSUI_COLLATE = 64756;
		public const uint32 IDS_CPSUI_COLLATED = 64757;
		public const uint32 IDS_CPSUI_PRINTFLDSETTING = 64758;
		public const uint32 IDS_CPSUI_DRAFT = 64759;
		public const uint32 IDS_CPSUI_LOW = 64760;
		public const uint32 IDS_CPSUI_MEDIUM = 64761;
		public const uint32 IDS_CPSUI_HIGH = 64762;
		public const uint32 IDS_CPSUI_PRESENTATION = 64763;
		public const uint32 IDS_CPSUI_COLOR = 64764;
		public const uint32 IDS_CPSUI_GRAYSCALE = 64765;
		public const uint32 IDS_CPSUI_MONOCHROME = 64766;
		public const uint32 IDS_CPSUI_SIMPLEX = 64767;
		public const uint32 IDS_CPSUI_HORIZONTAL = 64768;
		public const uint32 IDS_CPSUI_VERTICAL = 64769;
		public const uint32 IDS_CPSUI_LONG_SIDE = 64770;
		public const uint32 IDS_CPSUI_SHORT_SIDE = 64771;
		public const uint32 IDS_CPSUI_TT_PRINTASGRAPHIC = 64772;
		public const uint32 IDS_CPSUI_TT_DOWNLOADSOFT = 64773;
		public const uint32 IDS_CPSUI_TT_DOWNLOADVECT = 64774;
		public const uint32 IDS_CPSUI_TT_SUBDEV = 64775;
		public const uint32 IDS_CPSUI_ICM_BLACKWHITE = 64776;
		public const uint32 IDS_CPSUI_ICM_NO = 64777;
		public const uint32 IDS_CPSUI_ICM_YES = 64778;
		public const uint32 IDS_CPSUI_ICM_SATURATION = 64779;
		public const uint32 IDS_CPSUI_ICM_CONTRAST = 64780;
		public const uint32 IDS_CPSUI_ICM_COLORMETRIC = 64781;
		public const uint32 IDS_CPSUI_STANDARD = 64782;
		public const uint32 IDS_CPSUI_GLOSSY = 64783;
		public const uint32 IDS_CPSUI_TRANSPARENCY = 64784;
		public const uint32 IDS_CPSUI_REGULAR = 64785;
		public const uint32 IDS_CPSUI_BOND = 64786;
		public const uint32 IDS_CPSUI_COARSE = 64787;
		public const uint32 IDS_CPSUI_FINE = 64788;
		public const uint32 IDS_CPSUI_LINEART = 64789;
		public const uint32 IDS_CPSUI_ERRDIFFUSE = 64790;
		public const uint32 IDS_CPSUI_HALFTONE = 64791;
		public const uint32 IDS_CPSUI_HTCLRADJ = 64792;
		public const uint32 IDS_CPSUI_USE_HOST_HT = 64793;
		public const uint32 IDS_CPSUI_USE_DEVICE_HT = 64794;
		public const uint32 IDS_CPSUI_USE_PRINTER_HT = 64795;
		public const uint32 IDS_CPSUI_OUTBINASSIGN = 64796;
		public const uint32 IDS_CPSUI_WATERMARK = 64797;
		public const uint32 IDS_CPSUI_FORMTRAYASSIGN = 64798;
		public const uint32 IDS_CPSUI_UPPER_TRAY = 64799;
		public const uint32 IDS_CPSUI_ONLYONE = 64800;
		public const uint32 IDS_CPSUI_LOWER_TRAY = 64801;
		public const uint32 IDS_CPSUI_MIDDLE_TRAY = 64802;
		public const uint32 IDS_CPSUI_MANUAL_TRAY = 64803;
		public const uint32 IDS_CPSUI_ENVELOPE_TRAY = 64804;
		public const uint32 IDS_CPSUI_ENVMANUAL_TRAY = 64805;
		public const uint32 IDS_CPSUI_TRACTOR_TRAY = 64806;
		public const uint32 IDS_CPSUI_SMALLFMT_TRAY = 64807;
		public const uint32 IDS_CPSUI_LARGEFMT_TRAY = 64808;
		public const uint32 IDS_CPSUI_LARGECAP_TRAY = 64809;
		public const uint32 IDS_CPSUI_CASSETTE_TRAY = 64810;
		public const uint32 IDS_CPSUI_DEFAULT_TRAY = 64811;
		public const uint32 IDS_CPSUI_FORMSOURCE = 64812;
		public const uint32 IDS_CPSUI_MANUALFEED = 64813;
		public const uint32 IDS_CPSUI_PRINTERMEM_KB = 64814;
		public const uint32 IDS_CPSUI_PRINTERMEM_MB = 64815;
		public const uint32 IDS_CPSUI_PAGEPROTECT = 64816;
		public const uint32 IDS_CPSUI_HALFTONE_SETUP = 64817;
		public const uint32 IDS_CPSUI_INSTFONTCART = 64818;
		public const uint32 IDS_CPSUI_SLOT1 = 64819;
		public const uint32 IDS_CPSUI_SLOT2 = 64820;
		public const uint32 IDS_CPSUI_SLOT3 = 64821;
		public const uint32 IDS_CPSUI_SLOT4 = 64822;
		public const uint32 IDS_CPSUI_LEFT_SLOT = 64823;
		public const uint32 IDS_CPSUI_RIGHT_SLOT = 64824;
		public const uint32 IDS_CPSUI_STAPLER = 64825;
		public const uint32 IDS_CPSUI_STAPLER_ON = 64826;
		public const uint32 IDS_CPSUI_STAPLER_OFF = 64827;
		public const uint32 IDS_CPSUI_STACKER = 64828;
		public const uint32 IDS_CPSUI_MAILBOX = 64829;
		public const uint32 IDS_CPSUI_COPY = 64830;
		public const uint32 IDS_CPSUI_COPIES = 64831;
		public const uint32 IDS_CPSUI_TOTAL = 64832;
		public const uint32 IDS_CPSUI_MAKE = 64833;
		public const uint32 IDS_CPSUI_PRINT = 64834;
		public const uint32 IDS_CPSUI_FAX = 64835;
		public const uint32 IDS_CPSUI_PLOT = 64836;
		public const uint32 IDS_CPSUI_SLOW = 64837;
		public const uint32 IDS_CPSUI_FAST = 64838;
		public const uint32 IDS_CPSUI_ROTATED = 64839;
		public const uint32 IDS_CPSUI_RESET = 64840;
		public const uint32 IDS_CPSUI_ALL = 64841;
		public const uint32 IDS_CPSUI_DEVICE = 64842;
		public const uint32 IDS_CPSUI_SETTINGS = 64843;
		public const uint32 IDS_CPSUI_REVERT = 64844;
		public const uint32 IDS_CPSUI_CHANGES = 64845;
		public const uint32 IDS_CPSUI_CHANGED = 64846;
		public const uint32 IDS_CPSUI_WARNING = 64847;
		public const uint32 IDS_CPSUI_ABOUT = 64848;
		public const uint32 IDS_CPSUI_VERSION = 64849;
		public const uint32 IDS_CPSUI_NO_NAME = 64850;
		public const uint32 IDS_CPSUI_SETTING = 64851;
		public const uint32 IDS_CPSUI_DEVICE_SETTINGS = 64852;
		public const uint32 IDS_CPSUI_STDDOCPROPTAB1 = 64853;
		public const uint32 IDS_CPSUI_STDDOCPROPTAB2 = 64854;
		public const uint32 IDS_CPSUI_PAGEORDER = 64855;
		public const uint32 IDS_CPSUI_FRONTTOBACK = 64856;
		public const uint32 IDS_CPSUI_BACKTOFRONT = 64857;
		public const uint32 IDS_CPSUI_QUALITY_SETTINGS = 64858;
		public const uint32 IDS_CPSUI_QUALITY_DRAFT = 64859;
		public const uint32 IDS_CPSUI_QUALITY_BETTER = 64860;
		public const uint32 IDS_CPSUI_QUALITY_BEST = 64861;
		public const uint32 IDS_CPSUI_QUALITY_CUSTOM = 64862;
		public const uint32 IDS_CPSUI_OUTPUTBIN = 64863;
		public const uint32 IDS_CPSUI_NUP = 64864;
		public const uint32 IDS_CPSUI_NUP_NORMAL = 64865;
		public const uint32 IDS_CPSUI_NUP_TWOUP = 64866;
		public const uint32 IDS_CPSUI_NUP_FOURUP = 64867;
		public const uint32 IDS_CPSUI_NUP_SIXUP = 64868;
		public const uint32 IDS_CPSUI_NUP_NINEUP = 64869;
		public const uint32 IDS_CPSUI_NUP_SIXTEENUP = 64870;
		public const uint32 IDS_CPSUI_SIDE1 = 64871;
		public const uint32 IDS_CPSUI_SIDE2 = 64872;
		public const uint32 IDS_CPSUI_BOOKLET = 64873;
		public const uint32 IDS_CPSUI_POSTER = 64874;
		public const uint32 IDS_CPSUI_POSTER_2x2 = 64875;
		public const uint32 IDS_CPSUI_POSTER_3x3 = 64876;
		public const uint32 IDS_CPSUI_POSTER_4x4 = 64877;
		public const uint32 IDS_CPSUI_NUP_DIRECTION = 64878;
		public const uint32 IDS_CPSUI_RIGHT_THEN_DOWN = 64879;
		public const uint32 IDS_CPSUI_DOWN_THEN_RIGHT = 64880;
		public const uint32 IDS_CPSUI_LEFT_THEN_DOWN = 64881;
		public const uint32 IDS_CPSUI_DOWN_THEN_LEFT = 64882;
		public const uint32 IDS_CPSUI_MANUAL_DUPLEX = 64883;
		public const uint32 IDS_CPSUI_MANUAL_DUPLEX_ON = 64884;
		public const uint32 IDS_CPSUI_MANUAL_DUPLEX_OFF = 64885;
		public const uint32 IDS_CPSUI_ROT_PORT = 64886;
		public const uint32 IDS_CPSUI_STAPLE = 64887;
		public const uint32 IDS_CPSUI_BOOKLET_EDGE = 64888;
		public const uint32 IDS_CPSUI_BOOKLET_EDGE_LEFT = 64889;
		public const uint32 IDS_CPSUI_BOOKLET_EDGE_RIGHT = 64890;
		public const uint32 IDS_CPSUI_NUP_BORDER = 64891;
		public const uint32 IDS_CPSUI_NUP_BORDERED = 64892;
		public const uint32 IDS_CPSUI_STRID_LAST = 64892;
		public const uint32 MXDC_ESCAPE = 4122;
		public const uint32 MXDCOP_GET_FILENAME = 14;
		public const uint32 MXDCOP_PRINTTICKET_FIXED_DOC_SEQ = 22;
		public const uint32 MXDCOP_PRINTTICKET_FIXED_DOC = 24;
		public const uint32 MXDCOP_PRINTTICKET_FIXED_PAGE = 26;
		public const uint32 MXDCOP_SET_S0PAGE = 28;
		public const uint32 MXDCOP_SET_S0PAGE_RESOURCE = 30;
		public const uint32 MXDCOP_SET_XPSPASSTHRU_MODE = 32;
		public const Guid CLSID_OEMRENDER = .(0x6d6abf26, 0x9f38, 0x11d1, 0x88, 0x2a, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0xec);
		public const Guid CLSID_OEMUI = .(0xabce80d7, 0x9f46, 0x11d1, 0x88, 0x2a, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0xec);
		public const Guid CLSID_OEMUIMXDC = .(0x4e144300, 0x5b43, 0x4288, 0x93, 0x2a, 0x5e, 0x4d, 0xd6, 0xd8, 0x2b, 0xed);
		public const Guid CLSID_OEMPTPROVIDER = .(0x91723892, 0x45d2, 0x48e2, 0x9e, 0xc9, 0x56, 0x23, 0x79, 0xda, 0xf9, 0x92);
		public const HRESULT S_DEVCAP_OUTPUT_FULL_REPLACEMENT = 318465;
		public const Guid CLSID_PTPROVIDER = .(0x46ac151b, 0x8490, 0x4531, 0x96, 0xcc, 0x55, 0xbf, 0x2b, 0xf1, 0x9e, 0x11);
		public const uint32 E_VERSION_NOT_SUPPORTED = 2147745793;
		public const uint32 S_NO_CONFLICT = 262145;
		public const uint32 S_CONFLICT_RESOLVED = 262146;
		public const Guid PRINTER_EXTENSION_DETAILEDREASON_PRINTER_STATUS = .(0x5d5a1704, 0xdfd1, 0x4181, 0x8e, 0xee, 0x81, 0x5c, 0x86, 0xed, 0xad, 0x31);
		public const Guid PRINTER_EXTENSION_REASON_PRINT_PREFERENCES = .(0xec8f261f, 0x267c, 0x469f, 0xb5, 0xd6, 0x39, 0x33, 0x02, 0x3c, 0x29, 0xcc);
		public const Guid PRINTER_EXTENSION_REASON_DRIVER_EVENT = .(0x23bb1328, 0x63de, 0x4293, 0x91, 0x5b, 0xa6, 0xa2, 0x3d, 0x92, 0x9a, 0xcb);
		public const Guid FMTID_PrinterPropertyBag = .(0x75f9adca, 0x097d, 0x45c3, 0xa6, 0xe4, 0xba, 0xb2, 0x9e, 0x27, 0x6f, 0x3e);
		public const uint32 PRINTER_OEMINTF_VERSION = 65536;
		public const uint32 OEM_MODE_PUBLISHER = 1;
		public const uint32 OEMGI_GETSIGNATURE = 1;
		public const uint32 OEMGI_GETINTERFACEVERSION = 2;
		public const uint32 OEMGI_GETVERSION = 3;
		public const uint32 OEMGI_GETPUBLISHERINFO = 4;
		public const uint32 OEMGI_GETREQUESTEDHELPERINTERFACES = 5;
		public const uint32 OEMPUBLISH_DEFAULT = 0;
		public const uint32 OEMPUBLISH_IPRINTCOREHELPER = 1;
		public const uint32 OEMDM_SIZE = 1;
		public const uint32 OEMDM_DEFAULT = 2;
		public const uint32 OEMDM_CONVERT = 3;
		public const uint32 OEMDM_MERGE = 4;
		public const uint32 OEMGDS_MIN_DOCSTICKY = 1;
		public const uint32 OEMGDS_PSDM_FLAGS = 1;
		public const uint32 OEMGDS_PSDM_DIALECT = 2;
		public const uint32 OEMGDS_PSDM_TTDLFMT = 3;
		public const uint32 OEMGDS_PSDM_NUP = 4;
		public const uint32 OEMGDS_PSDM_PSLEVEL = 5;
		public const uint32 OEMGDS_PSDM_CUSTOMSIZE = 6;
		public const uint32 OEMGDS_UNIDM_GPDVER = 16384;
		public const uint32 OEMGDS_UNIDM_FLAGS = 16385;
		public const uint32 OEMGDS_MIN_PRINTERSTICKY = 32768;
		public const uint32 OEMGDS_PRINTFLAGS = 32768;
		public const uint32 OEMGDS_FREEMEM = 32769;
		public const uint32 OEMGDS_JOBTIMEOUT = 32770;
		public const uint32 OEMGDS_WAITTIMEOUT = 32771;
		public const uint32 OEMGDS_PROTOCOL = 32772;
		public const uint32 OEMGDS_MINOUTLINE = 32773;
		public const uint32 OEMGDS_MAXBITMAP = 32774;
		public const uint32 OEMGDS_MAX = 65536;
		public const uint32 GPD_OEMCUSTOMDATA = 1;
		public const uint32 MV_UPDATE = 1;
		public const uint32 MV_RELATIVE = 2;
		public const uint32 MV_GRAPHICS = 4;
		public const uint32 MV_PHYSICAL = 8;
		public const uint32 MV_SENDXMOVECMD = 16;
		public const uint32 MV_SENDYMOVECMD = 32;
		public const uint32 OEMTTY_INFO_MARGINS = 1;
		public const uint32 OEMTTY_INFO_CODEPAGE = 2;
		public const uint32 OEMTTY_INFO_NUM_UFMS = 3;
		public const uint32 OEMTTY_INFO_UFM_IDS = 4;
		public const uint32 UFOFLAG_TTFONT = 1;
		public const uint32 UFOFLAG_TTDOWNLOAD_BITMAP = 2;
		public const uint32 UFOFLAG_TTDOWNLOAD_TTOUTLINE = 4;
		public const uint32 UFOFLAG_TTOUTLINE_BOLD_SIM = 8;
		public const uint32 UFOFLAG_TTOUTLINE_ITALIC_SIM = 16;
		public const uint32 UFOFLAG_TTOUTLINE_VERTICAL = 32;
		public const uint32 UFOFLAG_TTSUBSTITUTED = 64;
		public const uint32 UFO_GETINFO_FONTOBJ = 1;
		public const uint32 UFO_GETINFO_GLYPHSTRING = 2;
		public const uint32 UFO_GETINFO_GLYPHBITMAP = 3;
		public const uint32 UFO_GETINFO_GLYPHWIDTH = 4;
		public const uint32 UFO_GETINFO_MEMORY = 5;
		public const uint32 UFO_GETINFO_STDVARIABLE = 6;
		public const uint32 FNT_INFO_PRINTDIRINCCDEGREES = 0;
		public const uint32 FNT_INFO_GRAYPERCENTAGE = 1;
		public const uint32 FNT_INFO_NEXTFONTID = 2;
		public const uint32 FNT_INFO_NEXTGLYPH = 3;
		public const uint32 FNT_INFO_FONTHEIGHT = 4;
		public const uint32 FNT_INFO_FONTWIDTH = 5;
		public const uint32 FNT_INFO_FONTBOLD = 6;
		public const uint32 FNT_INFO_FONTITALIC = 7;
		public const uint32 FNT_INFO_FONTUNDERLINE = 8;
		public const uint32 FNT_INFO_FONTSTRIKETHRU = 9;
		public const uint32 FNT_INFO_CURRENTFONTID = 10;
		public const uint32 FNT_INFO_TEXTYRES = 11;
		public const uint32 FNT_INFO_TEXTXRES = 12;
		public const uint32 FNT_INFO_FONTMAXWIDTH = 13;
		public const uint32 FNT_INFO_MAX = 14;
		public const uint32 TTDOWNLOAD_DONTCARE = 0;
		public const uint32 TTDOWNLOAD_GRAPHICS = 1;
		public const uint32 TTDOWNLOAD_BITMAP = 2;
		public const uint32 TTDOWNLOAD_TTOUTLINE = 3;
		public const uint32 TYPE_UNICODE = 1;
		public const uint32 TYPE_TRANSDATA = 2;
		public const uint32 TYPE_GLYPHHANDLE = 3;
		public const uint32 TYPE_GLYPHID = 4;
		public const uint32 PDEV_ADJUST_PAPER_MARGIN_TYPE = 1;
		public const uint32 PDEV_HOSTFONT_ENABLED_TYPE = 2;
		public const uint32 PDEV_USE_TRUE_COLOR_TYPE = 3;
		public const uint32 OEMCUIP_DOCPROP = 1;
		public const uint32 OEMCUIP_PRNPROP = 2;
		public const uint32 CUSTOMPARAM_WIDTH = 0;
		public const uint32 CUSTOMPARAM_HEIGHT = 1;
		public const uint32 CUSTOMPARAM_WIDTHOFFSET = 2;
		public const uint32 CUSTOMPARAM_HEIGHTOFFSET = 3;
		public const uint32 CUSTOMPARAM_ORIENTATION = 4;
		public const uint32 CUSTOMPARAM_MAX = 5;
		public const uint32 SETOPTIONS_FLAG_RESOLVE_CONFLICT = 1;
		public const uint32 SETOPTIONS_FLAG_KEEP_CONFLICT = 2;
		public const uint32 SETOPTIONS_RESULT_NO_CONFLICT = 0;
		public const uint32 SETOPTIONS_RESULT_CONFLICT_RESOLVED = 1;
		public const uint32 SETOPTIONS_RESULT_CONFLICT_REMAINED = 2;
		public const uint32 UNIFM_VERSION_1_0 = 65536;
		public const uint32 UFM_SOFT = 1;
		public const uint32 UFM_CART = 2;
		public const uint32 UFM_SCALABLE = 4;
		public const uint32 DF_TYPE_HPINTELLIFONT = 0;
		public const uint32 DF_TYPE_TRUETYPE = 1;
		public const uint32 DF_TYPE_PST1 = 2;
		public const uint32 DF_TYPE_CAPSL = 3;
		public const uint32 DF_TYPE_OEM1 = 4;
		public const uint32 DF_TYPE_OEM2 = 5;
		public const uint32 DF_NOITALIC = 1;
		public const uint32 DF_NOUNDER = 2;
		public const uint32 DF_XM_CR = 4;
		public const uint32 DF_NO_BOLD = 8;
		public const uint32 DF_NO_DOUBLE_UNDERLINE = 16;
		public const uint32 DF_NO_STRIKETHRU = 32;
		public const uint32 DF_BKSP_OK = 64;
		public const uint32 UNI_GLYPHSETDATA_VERSION_1_0 = 65536;
		public const uint32 MTYPE_FORMAT_MASK = 7;
		public const uint32 MTYPE_COMPOSE = 1;
		public const uint32 MTYPE_DIRECT = 2;
		public const uint32 MTYPE_PAIRED = 4;
		public const uint32 MTYPE_DOUBLEBYTECHAR_MASK = 24;
		public const uint32 MTYPE_SINGLE = 8;
		public const uint32 MTYPE_DOUBLE = 16;
		public const uint32 MTYPE_PREDEFIN_MASK = 224;
		public const uint32 MTYPE_REPLACE = 32;
		public const uint32 MTYPE_ADD = 64;
		public const uint32 MTYPE_DISABLE = 128;
		public const uint32 CC_NOPRECNV = 65535;
		public const uint32 CC_DEFAULT = 0;
		public const int32 CC_CP437 = -1;
		public const int32 CC_CP850 = -2;
		public const int32 CC_CP863 = -3;
		public const int32 CC_BIG5 = -10;
		public const int32 CC_ISC = -11;
		public const int32 CC_JIS = -12;
		public const int32 CC_JIS_ANK = -13;
		public const int32 CC_NS86 = -14;
		public const int32 CC_TCA = -15;
		public const int32 CC_GB2312 = -16;
		public const int32 CC_SJIS = -17;
		public const int32 CC_WANSUNG = -18;
		public const uint32 UFF_VERSION_NUMBER = 65537;
		public const uint32 FONT_DIR_SORTED = 1;
		public const uint32 FONT_FL_UFM = 1;
		public const uint32 FONT_FL_IFI = 2;
		public const uint32 FONT_FL_SOFTFONT = 4;
		public const uint32 FONT_FL_PERMANENT_SF = 8;
		public const uint32 FONT_FL_DEVICEFONT = 16;
		public const uint32 FONT_FL_GLYPHSET_GTT = 32;
		public const uint32 FONT_FL_GLYPHSET_RLE = 64;
		public const uint32 FONT_FL_RESERVED = 32768;
		public const uint32 FG_CANCHANGE = 128;
		public const uint32 WM_FI_FILENAME = 900;
		public const uint32 UNKNOWN_PROTOCOL = 0;
		public const uint32 PROTOCOL_UNKNOWN_TYPE = 0;
		public const uint32 RAWTCP = 1;
		public const uint32 PROTOCOL_RAWTCP_TYPE = 1;
		public const uint32 LPR = 2;
		public const uint32 PROTOCOL_LPR_TYPE = 2;
		public const uint32 MAX_PORTNAME_LEN = 64;
		public const uint32 MAX_NETWORKNAME_LEN = 49;
		public const uint32 MAX_NETWORKNAME2_LEN = 128;
		public const uint32 MAX_SNMP_COMMUNITY_STR_LEN = 33;
		public const uint32 MAX_QUEUENAME_LEN = 33;
		public const uint32 MAX_IPADDR_STR_LEN = 16;
		public const uint32 MAX_ADDRESS_STR_LEN = 13;
		public const uint32 MAX_DEVICEDESCRIPTION_STR_LEN = 257;
		public const uint32 DPS_NOPERMISSION = 1;
		public const uint32 DM_ADVANCED = 16;
		public const uint32 DM_NOPERMISSION = 32;
		public const uint32 DM_USER_DEFAULT = 64;
		public const uint32 DM_PROMPT_NON_MODAL = 1073741824;
		public const uint32 DM_INVALIDATE_DRIVER_CACHE = 536870912;
		public const uint32 DM_RESERVED = 2147483648;
		public const uint32 CDM_CONVERT = 1;
		public const uint32 CDM_CONVERT351 = 2;
		public const uint32 CDM_DRIVER_DEFAULT = 4;
		public const uint32 DOCUMENTEVENT_FIRST = 1;
		public const uint32 DOCUMENTEVENT_CREATEDCPRE = 1;
		public const uint32 DOCUMENTEVENT_CREATEDCPOST = 2;
		public const uint32 DOCUMENTEVENT_RESETDCPRE = 3;
		public const uint32 DOCUMENTEVENT_RESETDCPOST = 4;
		public const uint32 DOCUMENTEVENT_STARTDOC = 5;
		public const uint32 DOCUMENTEVENT_STARTDOCPRE = 5;
		public const uint32 DOCUMENTEVENT_STARTPAGE = 6;
		public const uint32 DOCUMENTEVENT_ENDPAGE = 7;
		public const uint32 DOCUMENTEVENT_ENDDOC = 8;
		public const uint32 DOCUMENTEVENT_ENDDOCPRE = 8;
		public const uint32 DOCUMENTEVENT_ABORTDOC = 9;
		public const uint32 DOCUMENTEVENT_DELETEDC = 10;
		public const uint32 DOCUMENTEVENT_ESCAPE = 11;
		public const uint32 DOCUMENTEVENT_ENDDOCPOST = 12;
		public const uint32 DOCUMENTEVENT_STARTDOCPOST = 13;
		public const uint32 DOCUMENTEVENT_QUERYFILTER = 14;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTSEQUENCEPRE = 1;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTPRE = 2;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDPAGEEPRE = 3;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDPAGEPOST = 4;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTPOST = 5;
		public const uint32 DOCUMENTEVENT_XPS_CANCELJOB = 6;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTSEQUENCEPRINTTICKETPRE = 7;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTPRINTTICKETPRE = 8;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDPAGEPRINTTICKETPRE = 9;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDPAGEPRINTTICKETPOST = 10;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTPRINTTICKETPOST = 11;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTSEQUENCEPRINTTICKETPOST = 12;
		public const uint32 DOCUMENTEVENT_XPS_ADDFIXEDDOCUMENTSEQUENCEPOST = 13;
		public const uint32 DOCUMENTEVENT_LAST = 15;
		public const uint32 DOCUMENTEVENT_SPOOLED = 65536;
		public const uint32 DOCUMENTEVENT_SUCCESS = 1;
		public const uint32 DOCUMENTEVENT_UNSUPPORTED = 0;
		public const int32 DOCUMENTEVENT_FAILURE = -1;
		public const uint32 PRINTER_EVENT_CONFIGURATION_CHANGE = 0;
		public const uint32 PRINTER_EVENT_ADD_CONNECTION = 1;
		public const uint32 PRINTER_EVENT_DELETE_CONNECTION = 2;
		public const uint32 PRINTER_EVENT_INITIALIZE = 3;
		public const uint32 PRINTER_EVENT_DELETE = 4;
		public const uint32 PRINTER_EVENT_CACHE_REFRESH = 5;
		public const uint32 PRINTER_EVENT_CACHE_DELETE = 6;
		public const uint32 PRINTER_EVENT_ATTRIBUTES_CHANGED = 7;
		public const uint32 PRINTER_EVENT_CONFIGURATION_UPDATE = 8;
		public const uint32 PRINTER_EVENT_ADD_CONNECTION_NO_UI = 9;
		public const uint32 PRINTER_EVENT_DELETE_CONNECTION_NO_UI = 10;
		public const uint32 PRINTER_EVENT_FLAG_NO_UI = 1;
		public const uint32 DRIVER_EVENT_INITIALIZE = 1;
		public const uint32 DRIVER_EVENT_DELETE = 2;
		public const uint32 BORDER_PRINT = 0;
		public const uint32 NO_BORDER_PRINT = 1;
		public const uint32 NORMAL_PRINT = 0;
		public const uint32 REVERSE_PRINT = 1;
		public const uint32 BOOKLET_PRINT = 2;
		public const uint32 NO_COLOR_OPTIMIZATION = 0;
		public const uint32 COLOR_OPTIMIZATION = 1;
		public const uint32 REVERSE_PAGES_FOR_REVERSE_DUPLEX = 1;
		public const uint32 RIGHT_THEN_DOWN = 1;
		public const uint32 BOOKLET_EDGE_LEFT = 0;
		public const uint32 BOOKLET_EDGE_RIGHT = 1;
		public const uint32 QCP_DEVICEPROFILE = 0;
		public const uint32 QCP_SOURCEPROFILE = 1;
		public const uint32 QCP_PROFILEMEMORY = 1;
		public const uint32 QCP_PROFILEDISK = 2;
		public const uint32 EMF_PP_COLOR_OPTIMIZATION = 1;
		public const uint32 PRINTER_NOTIFY_STATUS_ENDPOINT = 1;
		public const uint32 PRINTER_NOTIFY_STATUS_POLL = 2;
		public const uint32 PRINTER_NOTIFY_STATUS_INFO = 4;
		public const uint32 ROUTER_UNKNOWN = 0;
		public const uint32 ROUTER_SUCCESS = 1;
		public const uint32 ROUTER_STOP_ROUTING = 2;
		public const uint32 FILL_WITH_DEFAULTS = 1;
		public const uint32 PRINTER_NOTIFY_INFO_DATA_COMPACT = 1;
		public const uint32 COPYFILE_EVENT_SET_PRINTER_DATAEX = 1;
		public const uint32 COPYFILE_EVENT_DELETE_PRINTER = 2;
		public const uint32 COPYFILE_EVENT_ADD_PRINTER_CONNECTION = 3;
		public const uint32 COPYFILE_EVENT_DELETE_PRINTER_CONNECTION = 4;
		public const uint32 COPYFILE_EVENT_FILES_CHANGED = 5;
		public const uint32 COPYFILE_FLAG_CLIENT_SPOOLER = 1;
		public const uint32 COPYFILE_FLAG_SERVER_SPOOLER = 2;
		public const uint32 DSPRINT_PUBLISH = 1;
		public const uint32 DSPRINT_UPDATE = 2;
		public const uint32 DSPRINT_UNPUBLISH = 4;
		public const uint32 DSPRINT_REPUBLISH = 8;
		public const uint32 DSPRINT_PENDING = 2147483648;
		public const uint32 PRINTER_CONTROL_PAUSE = 1;
		public const uint32 PRINTER_CONTROL_RESUME = 2;
		public const uint32 PRINTER_CONTROL_PURGE = 3;
		public const uint32 PRINTER_CONTROL_SET_STATUS = 4;
		public const uint32 PRINTER_STATUS_PAUSED = 1;
		public const uint32 PRINTER_STATUS_ERROR = 2;
		public const uint32 PRINTER_STATUS_PENDING_DELETION = 4;
		public const uint32 PRINTER_STATUS_PAPER_JAM = 8;
		public const uint32 PRINTER_STATUS_PAPER_OUT = 16;
		public const uint32 PRINTER_STATUS_MANUAL_FEED = 32;
		public const uint32 PRINTER_STATUS_PAPER_PROBLEM = 64;
		public const uint32 PRINTER_STATUS_OFFLINE = 128;
		public const uint32 PRINTER_STATUS_IO_ACTIVE = 256;
		public const uint32 PRINTER_STATUS_BUSY = 512;
		public const uint32 PRINTER_STATUS_PRINTING = 1024;
		public const uint32 PRINTER_STATUS_OUTPUT_BIN_FULL = 2048;
		public const uint32 PRINTER_STATUS_NOT_AVAILABLE = 4096;
		public const uint32 PRINTER_STATUS_WAITING = 8192;
		public const uint32 PRINTER_STATUS_PROCESSING = 16384;
		public const uint32 PRINTER_STATUS_INITIALIZING = 32768;
		public const uint32 PRINTER_STATUS_WARMING_UP = 65536;
		public const uint32 PRINTER_STATUS_TONER_LOW = 131072;
		public const uint32 PRINTER_STATUS_NO_TONER = 262144;
		public const uint32 PRINTER_STATUS_PAGE_PUNT = 524288;
		public const uint32 PRINTER_STATUS_USER_INTERVENTION = 1048576;
		public const uint32 PRINTER_STATUS_OUT_OF_MEMORY = 2097152;
		public const uint32 PRINTER_STATUS_DOOR_OPEN = 4194304;
		public const uint32 PRINTER_STATUS_SERVER_UNKNOWN = 8388608;
		public const uint32 PRINTER_STATUS_POWER_SAVE = 16777216;
		public const uint32 PRINTER_STATUS_SERVER_OFFLINE = 33554432;
		public const uint32 PRINTER_STATUS_DRIVER_UPDATE_NEEDED = 67108864;
		public const uint32 PRINTER_ATTRIBUTE_QUEUED = 1;
		public const uint32 PRINTER_ATTRIBUTE_DIRECT = 2;
		public const uint32 PRINTER_ATTRIBUTE_DEFAULT = 4;
		public const uint32 PRINTER_ATTRIBUTE_SHARED = 8;
		public const uint32 PRINTER_ATTRIBUTE_NETWORK = 16;
		public const uint32 PRINTER_ATTRIBUTE_HIDDEN = 32;
		public const uint32 PRINTER_ATTRIBUTE_LOCAL = 64;
		public const uint32 PRINTER_ATTRIBUTE_ENABLE_DEVQ = 128;
		public const uint32 PRINTER_ATTRIBUTE_KEEPPRINTEDJOBS = 256;
		public const uint32 PRINTER_ATTRIBUTE_DO_COMPLETE_FIRST = 512;
		public const uint32 PRINTER_ATTRIBUTE_WORK_OFFLINE = 1024;
		public const uint32 PRINTER_ATTRIBUTE_ENABLE_BIDI = 2048;
		public const uint32 PRINTER_ATTRIBUTE_RAW_ONLY = 4096;
		public const uint32 PRINTER_ATTRIBUTE_PUBLISHED = 8192;
		public const uint32 PRINTER_ATTRIBUTE_FAX = 16384;
		public const uint32 PRINTER_ATTRIBUTE_TS = 32768;
		public const uint32 PRINTER_ATTRIBUTE_PUSHED_USER = 131072;
		public const uint32 PRINTER_ATTRIBUTE_PUSHED_MACHINE = 262144;
		public const uint32 PRINTER_ATTRIBUTE_MACHINE = 524288;
		public const uint32 PRINTER_ATTRIBUTE_FRIENDLY_NAME = 1048576;
		public const uint32 PRINTER_ATTRIBUTE_TS_GENERIC_DRIVER = 2097152;
		public const uint32 PRINTER_ATTRIBUTE_PER_USER = 4194304;
		public const uint32 PRINTER_ATTRIBUTE_ENTERPRISE_CLOUD = 8388608;
		public const uint32 NO_PRIORITY = 0;
		public const uint32 MAX_PRIORITY = 99;
		public const uint32 MIN_PRIORITY = 1;
		public const uint32 DEF_PRIORITY = 1;
		public const uint32 JOB_CONTROL_PAUSE = 1;
		public const uint32 JOB_CONTROL_RESUME = 2;
		public const uint32 JOB_CONTROL_CANCEL = 3;
		public const uint32 JOB_CONTROL_RESTART = 4;
		public const uint32 JOB_CONTROL_DELETE = 5;
		public const uint32 JOB_CONTROL_SENT_TO_PRINTER = 6;
		public const uint32 JOB_CONTROL_LAST_PAGE_EJECTED = 7;
		public const uint32 JOB_CONTROL_RETAIN = 8;
		public const uint32 JOB_CONTROL_RELEASE = 9;
		public const uint32 JOB_STATUS_PAUSED = 1;
		public const uint32 JOB_STATUS_ERROR = 2;
		public const uint32 JOB_STATUS_DELETING = 4;
		public const uint32 JOB_STATUS_SPOOLING = 8;
		public const uint32 JOB_STATUS_PRINTING = 16;
		public const uint32 JOB_STATUS_OFFLINE = 32;
		public const uint32 JOB_STATUS_PAPEROUT = 64;
		public const uint32 JOB_STATUS_PRINTED = 128;
		public const uint32 JOB_STATUS_DELETED = 256;
		public const uint32 JOB_STATUS_BLOCKED_DEVQ = 512;
		public const uint32 JOB_STATUS_USER_INTERVENTION = 1024;
		public const uint32 JOB_STATUS_RESTART = 2048;
		public const uint32 JOB_STATUS_COMPLETE = 4096;
		public const uint32 JOB_STATUS_RETAINED = 8192;
		public const uint32 JOB_STATUS_RENDERING_LOCALLY = 16384;
		public const uint32 JOB_POSITION_UNSPECIFIED = 0;
		public const uint32 PRINTER_DRIVER_PACKAGE_AWARE = 1;
		public const uint32 PRINTER_DRIVER_XPS = 2;
		public const uint32 PRINTER_DRIVER_SANDBOX_ENABLED = 4;
		public const uint32 PRINTER_DRIVER_CLASS = 8;
		public const uint32 PRINTER_DRIVER_DERIVED = 16;
		public const uint32 PRINTER_DRIVER_NOT_SHAREABLE = 32;
		public const uint32 PRINTER_DRIVER_CATEGORY_FAX = 64;
		public const uint32 PRINTER_DRIVER_CATEGORY_FILE = 128;
		public const uint32 PRINTER_DRIVER_CATEGORY_VIRTUAL = 256;
		public const uint32 PRINTER_DRIVER_CATEGORY_SERVICE = 512;
		public const uint32 PRINTER_DRIVER_SOFT_RESET_REQUIRED = 1024;
		public const uint32 PRINTER_DRIVER_SANDBOX_DISABLED = 2048;
		public const uint32 PRINTER_DRIVER_CATEGORY_3D = 4096;
		public const uint32 PRINTER_DRIVER_CATEGORY_CLOUD = 8192;
		public const uint32 DRIVER_KERNELMODE = 1;
		public const uint32 DRIVER_USERMODE = 2;
		public const uint32 DPD_DELETE_UNUSED_FILES = 1;
		public const uint32 DPD_DELETE_SPECIFIC_VERSION = 2;
		public const uint32 DPD_DELETE_ALL_FILES = 4;
		public const uint32 APD_STRICT_UPGRADE = 1;
		public const uint32 APD_STRICT_DOWNGRADE = 2;
		public const uint32 APD_COPY_ALL_FILES = 4;
		public const uint32 APD_COPY_NEW_FILES = 8;
		public const uint32 APD_COPY_FROM_DIRECTORY = 16;
		public const uint32 STRING_NONE = 1;
		public const uint32 STRING_MUIDLL = 2;
		public const uint32 STRING_LANGPAIR = 4;
		public const uint32 MAX_FORM_KEYWORD_LENGTH = 64;
		public const uint32 DI_CHANNEL = 1;
		public const uint32 DI_READ_SPOOL_JOB = 3;
		public const uint32 DI_MEMORYMAP_WRITE = 1;
		public const uint32 FORM_USER = 0;
		public const uint32 FORM_BUILTIN = 1;
		public const uint32 FORM_PRINTER = 2;
		public const uint32 PPCAPS_RIGHT_THEN_DOWN = 1;
		public const uint32 PPCAPS_BORDER_PRINT = 1;
		public const uint32 PPCAPS_BOOKLET_EDGE = 1;
		public const uint32 PPCAPS_REVERSE_PAGES_FOR_REVERSE_DUPLEX = 1;
		public const uint32 PPCAPS_SQUARE_SCALING = 1;
		public const uint32 PORT_TYPE_WRITE = 1;
		public const uint32 PORT_TYPE_READ = 2;
		public const uint32 PORT_TYPE_REDIRECTED = 4;
		public const uint32 PORT_TYPE_NET_ATTACHED = 8;
		public const uint32 PORT_STATUS_TYPE_ERROR = 1;
		public const uint32 PORT_STATUS_TYPE_WARNING = 2;
		public const uint32 PORT_STATUS_TYPE_INFO = 3;
		public const uint32 PORT_STATUS_OFFLINE = 1;
		public const uint32 PORT_STATUS_PAPER_JAM = 2;
		public const uint32 PORT_STATUS_PAPER_OUT = 3;
		public const uint32 PORT_STATUS_OUTPUT_BIN_FULL = 4;
		public const uint32 PORT_STATUS_PAPER_PROBLEM = 5;
		public const uint32 PORT_STATUS_NO_TONER = 6;
		public const uint32 PORT_STATUS_DOOR_OPEN = 7;
		public const uint32 PORT_STATUS_USER_INTERVENTION = 8;
		public const uint32 PORT_STATUS_OUT_OF_MEMORY = 9;
		public const uint32 PORT_STATUS_TONER_LOW = 10;
		public const uint32 PORT_STATUS_WARMING_UP = 11;
		public const uint32 PORT_STATUS_POWER_SAVE = 12;
		public const uint32 PRINTER_ENUM_DEFAULT = 1;
		public const uint32 PRINTER_ENUM_LOCAL = 2;
		public const uint32 PRINTER_ENUM_CONNECTIONS = 4;
		public const uint32 PRINTER_ENUM_FAVORITE = 4;
		public const uint32 PRINTER_ENUM_NAME = 8;
		public const uint32 PRINTER_ENUM_REMOTE = 16;
		public const uint32 PRINTER_ENUM_SHARED = 32;
		public const uint32 PRINTER_ENUM_NETWORK = 64;
		public const uint32 PRINTER_ENUM_EXPAND = 16384;
		public const uint32 PRINTER_ENUM_CONTAINER = 32768;
		public const uint32 PRINTER_ENUM_ICONMASK = 16711680;
		public const uint32 PRINTER_ENUM_ICON1 = 65536;
		public const uint32 PRINTER_ENUM_ICON2 = 131072;
		public const uint32 PRINTER_ENUM_ICON3 = 262144;
		public const uint32 PRINTER_ENUM_ICON4 = 524288;
		public const uint32 PRINTER_ENUM_ICON5 = 1048576;
		public const uint32 PRINTER_ENUM_ICON6 = 2097152;
		public const uint32 PRINTER_ENUM_ICON7 = 4194304;
		public const uint32 PRINTER_ENUM_ICON8 = 8388608;
		public const uint32 PRINTER_ENUM_HIDE = 16777216;
		public const uint32 PRINTER_ENUM_CATEGORY_ALL = 33554432;
		public const uint32 PRINTER_ENUM_CATEGORY_3D = 67108864;
		public const uint32 SPOOL_FILE_PERSISTENT = 1;
		public const uint32 SPOOL_FILE_TEMPORARY = 2;
		public const uint32 PRINTER_NOTIFY_TYPE = 0;
		public const uint32 JOB_NOTIFY_TYPE = 1;
		public const uint32 SERVER_NOTIFY_TYPE = 2;
		public const uint32 PRINTER_NOTIFY_FIELD_SERVER_NAME = 0;
		public const uint32 PRINTER_NOTIFY_FIELD_PRINTER_NAME = 1;
		public const uint32 PRINTER_NOTIFY_FIELD_SHARE_NAME = 2;
		public const uint32 PRINTER_NOTIFY_FIELD_PORT_NAME = 3;
		public const uint32 PRINTER_NOTIFY_FIELD_DRIVER_NAME = 4;
		public const uint32 PRINTER_NOTIFY_FIELD_COMMENT = 5;
		public const uint32 PRINTER_NOTIFY_FIELD_LOCATION = 6;
		public const uint32 PRINTER_NOTIFY_FIELD_DEVMODE = 7;
		public const uint32 PRINTER_NOTIFY_FIELD_SEPFILE = 8;
		public const uint32 PRINTER_NOTIFY_FIELD_PRINT_PROCESSOR = 9;
		public const uint32 PRINTER_NOTIFY_FIELD_PARAMETERS = 10;
		public const uint32 PRINTER_NOTIFY_FIELD_DATATYPE = 11;
		public const uint32 PRINTER_NOTIFY_FIELD_SECURITY_DESCRIPTOR = 12;
		public const uint32 PRINTER_NOTIFY_FIELD_ATTRIBUTES = 13;
		public const uint32 PRINTER_NOTIFY_FIELD_PRIORITY = 14;
		public const uint32 PRINTER_NOTIFY_FIELD_DEFAULT_PRIORITY = 15;
		public const uint32 PRINTER_NOTIFY_FIELD_START_TIME = 16;
		public const uint32 PRINTER_NOTIFY_FIELD_UNTIL_TIME = 17;
		public const uint32 PRINTER_NOTIFY_FIELD_STATUS = 18;
		public const uint32 PRINTER_NOTIFY_FIELD_STATUS_STRING = 19;
		public const uint32 PRINTER_NOTIFY_FIELD_CJOBS = 20;
		public const uint32 PRINTER_NOTIFY_FIELD_AVERAGE_PPM = 21;
		public const uint32 PRINTER_NOTIFY_FIELD_TOTAL_PAGES = 22;
		public const uint32 PRINTER_NOTIFY_FIELD_PAGES_PRINTED = 23;
		public const uint32 PRINTER_NOTIFY_FIELD_TOTAL_BYTES = 24;
		public const uint32 PRINTER_NOTIFY_FIELD_BYTES_PRINTED = 25;
		public const uint32 PRINTER_NOTIFY_FIELD_OBJECT_GUID = 26;
		public const uint32 PRINTER_NOTIFY_FIELD_FRIENDLY_NAME = 27;
		public const uint32 PRINTER_NOTIFY_FIELD_BRANCH_OFFICE_PRINTING = 28;
		public const uint32 JOB_NOTIFY_FIELD_PRINTER_NAME = 0;
		public const uint32 JOB_NOTIFY_FIELD_MACHINE_NAME = 1;
		public const uint32 JOB_NOTIFY_FIELD_PORT_NAME = 2;
		public const uint32 JOB_NOTIFY_FIELD_USER_NAME = 3;
		public const uint32 JOB_NOTIFY_FIELD_NOTIFY_NAME = 4;
		public const uint32 JOB_NOTIFY_FIELD_DATATYPE = 5;
		public const uint32 JOB_NOTIFY_FIELD_PRINT_PROCESSOR = 6;
		public const uint32 JOB_NOTIFY_FIELD_PARAMETERS = 7;
		public const uint32 JOB_NOTIFY_FIELD_DRIVER_NAME = 8;
		public const uint32 JOB_NOTIFY_FIELD_DEVMODE = 9;
		public const uint32 JOB_NOTIFY_FIELD_STATUS = 10;
		public const uint32 JOB_NOTIFY_FIELD_STATUS_STRING = 11;
		public const uint32 JOB_NOTIFY_FIELD_SECURITY_DESCRIPTOR = 12;
		public const uint32 JOB_NOTIFY_FIELD_DOCUMENT = 13;
		public const uint32 JOB_NOTIFY_FIELD_PRIORITY = 14;
		public const uint32 JOB_NOTIFY_FIELD_POSITION = 15;
		public const uint32 JOB_NOTIFY_FIELD_SUBMITTED = 16;
		public const uint32 JOB_NOTIFY_FIELD_START_TIME = 17;
		public const uint32 JOB_NOTIFY_FIELD_UNTIL_TIME = 18;
		public const uint32 JOB_NOTIFY_FIELD_TIME = 19;
		public const uint32 JOB_NOTIFY_FIELD_TOTAL_PAGES = 20;
		public const uint32 JOB_NOTIFY_FIELD_PAGES_PRINTED = 21;
		public const uint32 JOB_NOTIFY_FIELD_TOTAL_BYTES = 22;
		public const uint32 JOB_NOTIFY_FIELD_BYTES_PRINTED = 23;
		public const uint32 JOB_NOTIFY_FIELD_REMOTE_JOB_ID = 24;
		public const uint32 SERVER_NOTIFY_FIELD_PRINT_DRIVER_ISOLATION_GROUP = 0;
		public const uint32 PRINTER_NOTIFY_CATEGORY_ALL = 4096;
		public const uint32 PRINTER_NOTIFY_CATEGORY_3D = 8192;
		public const uint32 PRINTER_NOTIFY_OPTIONS_REFRESH = 1;
		public const uint32 PRINTER_NOTIFY_INFO_DISCARDED = 1;
		public const uint32 BIDI_ACCESS_ADMINISTRATOR = 1;
		public const uint32 BIDI_ACCESS_USER = 2;
		public const uint32 ERROR_BIDI_STATUS_OK = 0;
		public const uint32 ERROR_BIDI_ERROR_BASE = 13000;
		public const uint32 ERROR_BIDI_STATUS_WARNING = 13001;
		public const uint32 ERROR_BIDI_SCHEMA_READ_ONLY = 13002;
		public const uint32 ERROR_BIDI_SERVER_OFFLINE = 13003;
		public const uint32 ERROR_BIDI_DEVICE_OFFLINE = 13004;
		public const uint32 ERROR_BIDI_SCHEMA_NOT_SUPPORTED = 13005;
		public const uint32 ERROR_BIDI_SET_DIFFERENT_TYPE = 13006;
		public const uint32 ERROR_BIDI_SET_MULTIPLE_SCHEMAPATH = 13007;
		public const uint32 ERROR_BIDI_SET_INVALID_SCHEMAPATH = 13008;
		public const uint32 ERROR_BIDI_SET_UNKNOWN_FAILURE = 13009;
		public const uint32 ERROR_BIDI_SCHEMA_WRITE_ONLY = 13010;
		public const uint32 ERROR_BIDI_GET_REQUIRES_ARGUMENT = 13011;
		public const uint32 ERROR_BIDI_GET_ARGUMENT_NOT_SUPPORTED = 13012;
		public const uint32 ERROR_BIDI_GET_MISSING_ARGUMENT = 13013;
		public const uint32 ERROR_BIDI_DEVICE_CONFIG_UNCHANGED = 13014;
		public const uint32 ERROR_BIDI_NO_LOCALIZED_RESOURCES = 13015;
		public const uint32 ERROR_BIDI_NO_BIDI_SCHEMA_EXTENSIONS = 13016;
		public const uint32 ERROR_BIDI_UNSUPPORTED_CLIENT_LANGUAGE = 13017;
		public const uint32 ERROR_BIDI_UNSUPPORTED_RESOURCE_FORMAT = 13018;
		public const uint32 PRINTER_CHANGE_ADD_PRINTER = 1;
		public const uint32 PRINTER_CHANGE_SET_PRINTER = 2;
		public const uint32 PRINTER_CHANGE_DELETE_PRINTER = 4;
		public const uint32 PRINTER_CHANGE_FAILED_CONNECTION_PRINTER = 8;
		public const uint32 PRINTER_CHANGE_PRINTER = 255;
		public const uint32 PRINTER_CHANGE_ADD_JOB = 256;
		public const uint32 PRINTER_CHANGE_SET_JOB = 512;
		public const uint32 PRINTER_CHANGE_DELETE_JOB = 1024;
		public const uint32 PRINTER_CHANGE_WRITE_JOB = 2048;
		public const uint32 PRINTER_CHANGE_JOB = 65280;
		public const uint32 PRINTER_CHANGE_ADD_FORM = 65536;
		public const uint32 PRINTER_CHANGE_SET_FORM = 131072;
		public const uint32 PRINTER_CHANGE_DELETE_FORM = 262144;
		public const uint32 PRINTER_CHANGE_FORM = 458752;
		public const uint32 PRINTER_CHANGE_ADD_PORT = 1048576;
		public const uint32 PRINTER_CHANGE_CONFIGURE_PORT = 2097152;
		public const uint32 PRINTER_CHANGE_DELETE_PORT = 4194304;
		public const uint32 PRINTER_CHANGE_PORT = 7340032;
		public const uint32 PRINTER_CHANGE_ADD_PRINT_PROCESSOR = 16777216;
		public const uint32 PRINTER_CHANGE_DELETE_PRINT_PROCESSOR = 67108864;
		public const uint32 PRINTER_CHANGE_PRINT_PROCESSOR = 117440512;
		public const uint32 PRINTER_CHANGE_SERVER = 134217728;
		public const uint32 PRINTER_CHANGE_ADD_PRINTER_DRIVER = 268435456;
		public const uint32 PRINTER_CHANGE_SET_PRINTER_DRIVER = 536870912;
		public const uint32 PRINTER_CHANGE_DELETE_PRINTER_DRIVER = 1073741824;
		public const uint32 PRINTER_CHANGE_PRINTER_DRIVER = 1879048192;
		public const uint32 PRINTER_CHANGE_TIMEOUT = 2147483648;
		public const uint32 PRINTER_CHANGE_ALL = 2138570751;
		public const uint32 PRINTER_ERROR_INFORMATION = 2147483648;
		public const uint32 PRINTER_ERROR_WARNING = 1073741824;
		public const uint32 PRINTER_ERROR_SEVERE = 536870912;
		public const uint32 PRINTER_ERROR_OUTOFPAPER = 1;
		public const uint32 PRINTER_ERROR_JAM = 2;
		public const uint32 PRINTER_ERROR_OUTOFTONER = 4;
		public const uint32 SERVER_ACCESS_ADMINISTER = 1;
		public const uint32 SERVER_ACCESS_ENUMERATE = 2;
		public const uint32 PRINTER_ACCESS_ADMINISTER = 4;
		public const uint32 PRINTER_ACCESS_USE = 8;
		public const uint32 JOB_ACCESS_ADMINISTER = 16;
		public const uint32 JOB_ACCESS_READ = 32;
		public const uint32 PRINTER_ACCESS_MANAGE_LIMITED = 64;
		public const uint32 PRINTER_CONNECTION_MISMATCH = 32;
		public const uint32 PRINTER_CONNECTION_NO_UI = 64;
		public const uint32 IPDFP_COPY_ALL_FILES = 1;
		public const uint32 UPDP_SILENT_UPLOAD = 1;
		public const uint32 UPDP_UPLOAD_ALWAYS = 2;
		public const uint32 UPDP_CHECK_DRIVERSTORE = 4;
		public const uint32 DISPID_PRINTSCHEMA_ELEMENT = 10000;
		public const uint32 DISPID_PRINTSCHEMA_ELEMENT_XMLNODE = 10001;
		public const uint32 DISPID_PRINTSCHEMA_ELEMENT_NAME = 10002;
		public const uint32 DISPID_PRINTSCHEMA_ELEMENT_NAMESPACEURI = 10003;
		public const uint32 DISPID_PRINTSCHEMA_DISPLAYABLEELEMENT = 10100;
		public const uint32 DISPID_PRINTSCHEMA_DISPLAYABLEELEMENT_DISPLAYNAME = 10101;
		public const uint32 DISPID_PRINTSCHEMA_OPTION = 10200;
		public const uint32 DISPID_PRINTSCHEMA_OPTION_SELECTED = 10201;
		public const uint32 DISPID_PRINTSCHEMA_OPTION_CONSTRAINED = 10202;
		public const uint32 DISPID_PRINTSCHEMA_OPTION_GETPROPERTYVALUE = 10203;
		public const uint32 DISPID_PRINTSCHEMA_PAGEMEDIASIZEOPTION = 10300;
		public const uint32 DISPID_PRINTSCHEMA_PAGEMEDIASIZEOPTION_WIDTH = 10301;
		public const uint32 DISPID_PRINTSCHEMA_PAGEMEDIASIZEOPTION_HEIGHT = 10302;
		public const uint32 DISPID_PRINTSCHEMA_NUPOPTION = 10400;
		public const uint32 DISPID_PRINTSCHEMA_NUPOPTION_PAGESPERSHEET = 10401;
		public const uint32 DISPID_PRINTSCHEMA_OPTIONCOLLECTION = 10500;
		public const uint32 DISPID_PRINTSCHEMA_OPTIONCOLLECTION_COUNT = 10501;
		public const uint32 DISPID_PRINTSCHEMA_OPTIONCOLLECTION_GETAT = 10502;
		public const uint32 DISPID_PRINTSCHEMA_FEATURE = 10600;
		public const uint32 DISPID_PRINTSCHEMA_FEATURE_SELECTEDOPTION = 10601;
		public const uint32 DISPID_PRINTSCHEMA_FEATURE_SELECTIONTYPE = 10602;
		public const uint32 DISPID_PRINTSCHEMA_FEATURE_GETOPTION = 10603;
		public const uint32 DISPID_PRINTSCHEMA_FEATURE_DISPLAYUI = 10604;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE = 10700;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_IMAGEABLE_WIDTH = 10701;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_IMAGEABLE_HEIGHT = 10702;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_ORIGIN_WIDTH = 10703;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_ORIGIN_HEIGHT = 10704;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_EXTENT_WIDTH = 10705;
		public const uint32 DISPID_PRINTSCHEMA_PAGEIMAGEABLESIZE_EXTENT_HEIGHT = 10706;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES = 10800;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_GETFEATURE_KEYNAME = 10801;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_GETFEATURE = 10802;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_PAGEIMAGEABLESIZE = 10803;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_JOBCOPIESMINVALUE = 10804;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_JOBCOPIESMAXVALUE = 10805;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_GETSELECTEDOPTION = 10806;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_GETOPTIONS = 10807;
		public const uint32 DISPID_PRINTSCHEMA_CAPABILITIES_GETPARAMETERDEFINITION = 10808;
		public const uint32 DISPID_PRINTSCHEMA_ASYNCOPERATION = 10900;
		public const uint32 DISPID_PRINTSCHEMA_ASYNCOPERATION_START = 10901;
		public const uint32 DISPID_PRINTSCHEMA_ASYNCOPERATION_CANCEL = 10902;
		public const uint32 DISPID_PRINTSCHEMA_TICKET = 11000;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_GETFEATURE_KEYNAME = 11001;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_GETFEATURE = 11002;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_VALIDATEASYNC = 11003;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_COMMITASYNC = 11004;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_NOTIFYXMLCHANGED = 11005;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_GETCAPABILITIES = 11006;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_JOBCOPIESALLDOCUMENTS = 11007;
		public const uint32 DISPID_PRINTSCHEMA_TICKET_GETPARAMETERINITIALIZER = 11008;
		public const uint32 DISPID_PRINTSCHEMA_ASYNCOPERATIONEVENT = 11100;
		public const uint32 DISPID_PRINTSCHEMA_ASYNCOPERATIONEVENT_COMPLETED = 11101;
		public const uint32 DISPID_PRINTERSCRIPTABLESEQUENTIALSTREAM = 11200;
		public const uint32 DISPID_PRINTERSCRIPTABLESEQUENTIALSTREAM_READ = 11201;
		public const uint32 DISPID_PRINTERSCRIPTABLESEQUENTIALSTREAM_WRITE = 11202;
		public const uint32 DISPID_PRINTERSCRIPTABLESTREAM = 11300;
		public const uint32 DISPID_PRINTERSCRIPTABLESTREAM_COMMIT = 11301;
		public const uint32 DISPID_PRINTERSCRIPTABLESTREAM_SEEK = 11302;
		public const uint32 DISPID_PRINTERSCRIPTABLESTREAM_SETSIZE = 11303;
		public const uint32 DISPID_PRINTERPROPERTYBAG = 11400;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETBOOL = 11401;
		public const uint32 DISPID_PRINTERPROPERTYBAG_SETBOOL = 11402;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETINT32 = 11403;
		public const uint32 DISPID_PRINTERPROPERTYBAG_SETINT32 = 11404;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETSTRING = 11405;
		public const uint32 DISPID_PRINTERPROPERTYBAG_SETSTRING = 11406;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETBYTES = 11407;
		public const uint32 DISPID_PRINTERPROPERTYBAG_SETBYTES = 11408;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETREADSTREAM = 11409;
		public const uint32 DISPID_PRINTERPROPERTYBAG_GETWRITESTREAM = 11410;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETSTREAMASXML = 11411;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG = 11500;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETBOOL = 11501;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_SETBOOL = 11502;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETINT32 = 11503;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_SETINT32 = 11504;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETSTRING = 11505;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_SETSTRING = 11506;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETBYTES = 11507;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_SETBYTES = 11508;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETREADSTREAM = 11509;
		public const uint32 DISPID_PRINTERSCRIPTABLEPROPERTYBAG_GETWRITESTREAM = 11510;
		public const uint32 DISPID_PRINTERQUEUE = 11600;
		public const uint32 DISPID_PRINTERQUEUE_HANDLE = 11601;
		public const uint32 DISPID_PRINTERQUEUE_NAME = 11602;
		public const uint32 DISPID_PRINTERQUEUE_SENDBIDIQUERY = 11603;
		public const uint32 DISPID_PRINTERQUEUE_GETPROPERTIES = 11604;
		public const uint32 DISPID_PRINTERQUEUE_SENDBIDISETREQUESTASYNC = 11605;
		public const uint32 DISPID_PRINTERQUEUE_GETPRINTERQUEUEVIEW = 11606;
		public const uint32 DISPID_PRINTERQUEUEEVENT = 11700;
		public const uint32 DISPID_PRINTERQUEUEEVENT_ONBIDIRESPONSERECEIVED = 11701;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXT = 11800;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXT_PRINTERQUEUE = 11801;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXT_PRINTSCHEMATICKET = 11802;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXT_DRIVERPROPERTIES = 11803;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXT_USERPROPERTIES = 11804;
		public const uint32 DISPID_PRINTEREXTENSION_REQUEST = 11900;
		public const uint32 DISPID_PRINTEREXTENSION_REQUEST_CANCEL = 11901;
		public const uint32 DISPID_PRINTEREXTENSION_REQUEST_COMPLETE = 11902;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS = 12000;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_BIDINOTIFICATION = 12001;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_REASONID = 12002;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_REQUEST = 12003;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_SOURCEAPPLICATION = 12004;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_DETAILEDREASONID = 12005;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_WINDOWMODAL = 12006;
		public const uint32 DISPID_PRINTEREXTENSION_EVENTARGS_WINDOWPARENT = 12007;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXTCOLLECTION = 12100;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXTCOLLECTION_COUNT = 12101;
		public const uint32 DISPID_PRINTEREXTENSION_CONTEXTCOLLECTION_GETAT = 12102;
		public const uint32 DISPID_PRINTEREXTENSION_EVENT = 12200;
		public const uint32 DISPID_PRINTEREXTENSION_EVENT_ONDRIVEREVENT = 12201;
		public const uint32 DISPID_PRINTEREXTENSION_EVENT_ONPRINTERQUEUESENUMERATED = 12202;
		public const uint32 DISPID_PRINTERSCRIPTCONTEXT = 12300;
		public const uint32 DISPID_PRINTERSCRIPTCONTEXT_DRIVERPROPERTIES = 12301;
		public const uint32 DISPID_PRINTERSCRIPTCONTEXT_QUEUEPROPERTIES = 12302;
		public const uint32 DISPID_PRINTERSCRIPTCONTEXT_USERPROPERTIES = 12303;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERINITIALIZER = 12400;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERINITIALIZER_VALUE = 12401;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION = 12500;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION_USERINPUTREQUIRED = 12501;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION_UNITTYPE = 12502;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION_DATATYPE = 12503;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION_RANGEMIN = 12504;
		public const uint32 DISPID_PRINTSCHEMA_PARAMETERDEFINITION_RANGEMAX = 12505;
		public const uint32 DISPID_PRINTJOBCOLLECTION = 12600;
		public const uint32 DISPID_PRINTJOBCOLLECTION_COUNT = 12601;
		public const uint32 DISPID_PRINTJOBCOLLECTION_GETAT = 12602;
		public const uint32 DISPID_PRINTERQUEUEVIEW = 12700;
		public const uint32 DISPID_PRINTERQUEUEVIEW_SETVIEWRANGE = 12701;
		public const uint32 DISPID_PRINTERQUEUEVIEW_EVENT = 12800;
		public const uint32 DISPID_PRINTERQUEUEVIEW_EVENT_ONCHANGED = 12801;
		public const Guid NOTIFICATION_RELEASE = .(0xba9a5027, 0xa70e, 0x4ae7, 0x9b, 0x7d, 0xeb, 0x3e, 0x06, 0xad, 0x41, 0x57);
		public const Guid PRINT_APP_BIDI_NOTIFY_CHANNEL = .(0x2abad223, 0xb994, 0x4aca, 0x82, 0xfc, 0x45, 0x71, 0xb1, 0xb5, 0x85, 0xac);
		public const Guid PRINT_PORT_MONITOR_NOTIFY_CHANNEL = .(0x25df3b0e, 0x74a9, 0x47f5, 0x80, 0xce, 0x79, 0xb4, 0xb1, 0xeb, 0x5c, 0x58);
		public const Guid GUID_DEVINTERFACE_USBPRINT = .(0x28d78fad, 0x5a12, 0x11d1, 0xae, 0x5b, 0x00, 0x00, 0xf8, 0x03, 0xa8, 0xc2);
		public const Guid GUID_DEVINTERFACE_IPPUSB_PRINT = .(0xf2f40381, 0xf46d, 0x4e51, 0xbc, 0xe7, 0x62, 0xde, 0x6c, 0xf2, 0xd0, 0x98);
		public const Guid CLSID_XPSRASTERIZER_FACTORY = .(0x503e79bf, 0x1d09, 0x4764, 0x9d, 0x72, 0x1e, 0xb0, 0xc6, 0x59, 0x67, 0xc6);
		
		// --- Enums ---
		
		public enum EXpsCompressionOptions : int32
		{
			NotCompressed = 0,
			Normal = 1,
			Small = 2,
			Fast = 3,
		}
		public enum EXpsFontOptions : int32
		{
			Normal = 0,
			Obfusticate = 1,
		}
		public enum EXpsJobConsumption : int32
		{
			DocumentSequenceAdded = 0,
			FixedDocumentAdded = 1,
			FixedPageAdded = 2,
		}
		public enum EXpsFontRestriction : int32
		{
			Installable = 0,
			NoEmbedding = 2,
			PreviewPrint = 4,
			Editable = 8,
		}
		public enum BIDI_TYPE : int32
		{
			NULL = 0,
			INT = 1,
			FLOAT = 2,
			BOOL = 3,
			STRING = 4,
			TEXT = 5,
			ENUM = 6,
			BLOB = 7,
		}
		public enum PRINTER_OPTION_FLAGS : int32
		{
			NO_CACHE = 1,
			CACHE = 2,
			CLIENT_CHANGE = 4,
			NO_CLIENT_DATA = 8,
		}
		public enum EPrintPropertyType : int32
		{
			String = 1,
			Int32 = 2,
			Int64 = 3,
			Byte = 4,
			Time = 5,
			DevMode = 6,
			SD = 7,
			NotificationReply = 8,
			NotificationOptions = 9,
			Buffer = 10,
		}
		public enum EPrintXPSJobProgress : int32
		{
			AddingDocumentSequence = 0,
			DocumentSequenceAdded = 1,
			AddingFixedDocument = 2,
			FixedDocumentAdded = 3,
			AddingFixedPage = 4,
			FixedPageAdded = 5,
			ResourceAdded = 6,
			FontAdded = 7,
			ImageAdded = 8,
			XpsDocumentCommitted = 9,
		}
		public enum EPrintXPSJobOperation : int32
		{
			Production = 1,
			Consumption = 2,
		}
		public enum PRINT_EXECUTION_CONTEXT : int32
		{
			APPLICATION = 0,
			SPOOLER_SERVICE = 1,
			SPOOLER_ISOLATION_HOST = 2,
			FILTER_PIPELINE = 3,
			WOW64 = 4,
		}
		public enum MxdcLandscapeRotationEnums : int32
		{
			COUNTERCLOCKWISE_90_DEGREES = 90,
			NONE = 0,
			COUNTERCLOCKWISE_270_DEGREES = -90,
		}
		public enum MxdcImageTypeEnums : int32
		{
			JPEGHIGH_COMPRESSION = 1,
			JPEGMEDIUM_COMPRESSION = 2,
			JPEGLOW_COMPRESSION = 3,
			PNG = 4,
		}
		public enum MxdcS0PageEnums : int32
		{
			TTF = 0,
			JPEG = 1,
			PNG = 2,
			TIFF = 3,
			WDP = 4,
			DICTIONARY = 5,
			ICC_PROFILE = 6,
			JPEG_THUMBNAIL = 7,
			PNG_THUMBNAIL = 8,
			MAX = 9,
		}
		public enum EATTRIBUTE_DATATYPE : int32
		{
			UNKNOWN = 0,
			BOOL = 1,
			INT = 2,
			LONG = 3,
			DWORD = 4,
			ASCII = 5,
			UNICODE = 6,
			BINARY = 7,
			SIZE = 8,
			RECT = 9,
			CUSTOMSIZEPARAMS = 10,
		}
		public enum SHIMOPTS : int32
		{
			DEFAULT = 0,
			NOSNAPSHOT = 1,
		}
		public enum PrintSchemaConstrainedSetting : int32
		{
			None = 0,
			PrintTicket = 1,
			Admin = 2,
			Device = 3,
		}
		public enum PrintSchemaSelectionType : int32
		{
			One = 0,
			Many = 1,
		}
		public enum PrintSchemaParameterDataType : int32
		{
			Integer = 0,
			NumericString = 1,
			String = 2,
		}
		public enum PrintJobStatus : int32
		{
			Paused = 1,
			Error = 2,
			Deleting = 4,
			Spooling = 8,
			Printing = 16,
			Offline = 32,
			PaperOut = 64,
			Printed = 128,
			Deleted = 256,
			BlockedDeviceQueue = 512,
			UserIntervention = 1024,
			Restarted = 2048,
			Complete = 4096,
			Retained = 8192,
		}
		public enum PrintAsyncNotifyUserFilter : int32
		{
			PerUser = 0,
			AllUsers = 1,
		}
		public enum PrintAsyncNotifyConversationStyle : int32
		{
			BiDirectional = 0,
			UniDirectional = 1,
		}
		public enum PrintAsyncNotifyError : int32
		{
			CHANNEL_CLOSED_BY_SERVER = 1,
			CHANNEL_CLOSED_BY_ANOTHER_LISTENER = 2,
			CHANNEL_CLOSED_BY_SAME_LISTENER = 3,
			CHANNEL_RELEASED_BY_LISTENER = 4,
			UNIRECTIONAL_NOTIFICATION_LOST = 5,
			ASYNC_NOTIFICATION_FAILURE = 6,
			NO_LISTENERS = 7,
			CHANNEL_ALREADY_CLOSED = 8,
			CHANNEL_ALREADY_OPENED = 9,
			CHANNEL_WAITING_FOR_CLIENT_NOTIFICATION = 10,
			CHANNEL_NOT_OPENED = 11,
			ASYNC_CALL_ALREADY_PARKED = 12,
			NOT_REGISTERED = 13,
			ALREADY_UNREGISTERED = 14,
			ALREADY_REGISTERED = 15,
			CHANNEL_ACQUIRED = 16,
			ASYNC_CALL_IN_PROGRESS = 17,
			MAX_NOTIFICATION_SIZE_EXCEEDED = 18,
			INTERNAL_NOTIFICATION_QUEUE_IS_FULL = 19,
			INVALID_NOTIFICATION_TYPE = 20,
			MAX_REGISTRATION_COUNT_EXCEEDED = 21,
			MAX_CHANNEL_COUNT_EXCEEDED = 22,
			LOCAL_ONLY_REGISTRATION = 23,
			REMOTE_ONLY_REGISTRATION = 24,
		}
		public enum EBranchOfficeJobEventType : int32
		{
			InvalidJobState = 0,
			LogJobPrinted = 1,
			LogJobRendered = 2,
			LogJobError = 3,
			LogJobPipelineError = 4,
			LogOfflineFileFull = 5,
		}
		public enum NOTIFICATION_CALLBACK_COMMANDS : int32
		{
			NOTIFY = 0,
			CONTEXT_ACQUIRE = 1,
			CONTEXT_RELEASE = 2,
		}
		public enum NOTIFICATION_CONFIG_FLAGS : int32
		{
			CREATE_EVENT = 1,
			REGISTER_CALLBACK = 2,
			EVENT_TRIGGER = 4,
			ASYNC_CHANNEL = 8,
		}
		public enum UI_TYPE : int32
		{
			kMessageBox = 0,
		}
		public enum XPSRAS_RENDERING_MODE : int32
		{
			ANTIALIASED = 0,
			ALIASED = 1,
		}
		public enum XPSRAS_PIXEL_FORMAT : int32
		{
			_32BPP_PBGRA_UINT_SRGB = 1,
			_64BPP_PRGBA_HALF_SCRGB = 2,
			_128BPP_PRGBA_FLOAT_SCRGB = 3,
		}
		public enum XPSRAS_BACKGROUND_COLOR : int32
		{
			TRANSPARENT = 0,
			OPAQUE = 1,
		}
		public enum PageCountType : int32
		{
			FinalPageCount = 0,
			IntermediatePageCount = 1,
		}
		
		// --- Function Pointers ---
		
		public function int32 _CPSUICALLBACK(out CPSUICBPARAM pCPSUICBParam);
		public function int PFNCOMPROPSHEET(HANDLE hComPropSheet, uint32 Function, LPARAM lParam1, LPARAM lParam2);
		public function int32 PFNPROPSHEETUI(out PROPSHEETUI_INFO pPSUIInfo, LPARAM lParam);
		public function BOOL PFN_DrvGetDriverSetting(void* pdriverobj, PSTR Feature, void* pOutput, uint32 cbSize, uint32* pcbNeeded, uint32* pdwOptionsReturned);
		public function BOOL PFN_DrvUpgradeRegistrySetting(HANDLE hPrinter, PSTR pFeature, PSTR pOption);
		public function BOOL PFN_DrvUpdateUISetting(void* pdriverobj, void* pOptItem, uint32 dwPreviousSelection, uint32 dwMode);
		public function int32 OEMCUIPCALLBACK(out CPSUICBPARAM param0, out OEMCUIPPARAM param1);
		public function int32 EMFPLAYPROC(HDC param0, int32 param1, HANDLE param2);
		public function BOOL ROUTER_NOTIFY_CALLBACK(uint32 dwCommand, void* pContext, uint32 dwColor, ref PRINTER_NOTIFY_INFO pNofityInfo, uint32 fdwFlags, out uint32 pdwResult);
		
		// --- Structs ---
		
		[CRepr]
		public struct IBidiRequestVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int SetSchema;
			public int SetInputData;
			public int GetResult;
			public int GetOutputData;
			public int GetEnumCount;
		}
		[CRepr]
		public struct IBidiRequest
		{
			public IBidiRequestVtbl* lpVtbl;
		}
		[CRepr]
		public struct IBidiRequestContainerVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int AddRequest;
			public int GetEnumObject;
			public int GetRequestCount;
		}
		[CRepr]
		public struct IBidiRequestContainer
		{
			public IBidiRequestContainerVtbl* lpVtbl;
		}
		[CRepr]
		public struct IBidiSplVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int BindDevice;
			public int UnbindDevice;
			public int SendRecv;
			public int MultiSendRecv;
		}
		[CRepr]
		public struct IBidiSpl
		{
			public IBidiSplVtbl* lpVtbl;
		}
		[CRepr]
		public struct IBidiSpl2Vtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int BindDevice;
			public int UnbindDevice;
			public int SendRecvXMLString;
			public int SendRecvXMLStream;
		}
		[CRepr]
		public struct IBidiSpl2
		{
			public IBidiSpl2Vtbl* lpVtbl;
		}
		[CRepr]
		public struct __MIDL___MIDL_itf_imgerror_0000_0000_0001
		{
			public BSTR description;
			public Guid guid;
			public uint32 helpContext;
			public BSTR helpFile;
			public BSTR source;
			public BSTR devDescription;
			public Guid errorID;
			public uint32 cUserParameters;
			public BSTR* aUserParameters;
			public BSTR userFallback;
			public uint32 exceptionID;
		}
		[CRepr]
		public struct IImgErrorInfoVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetGUID;
			public int GetSource;
			public int GetDescription;
			public int GetHelpFile;
			public int GetHelpContext;
			public int GetDeveloperDescription;
			public int GetUserErrorId;
			public int GetUserParameterCount;
			public int GetUserParameter;
			public int GetUserFallback;
			public int GetExceptionId;
			public int DetachErrorInfo;
		}
		[CRepr]
		public struct IImgErrorInfo
		{
			public IImgErrorInfoVtbl* lpVtbl;
		}
		[CRepr]
		public struct IImgCreateErrorInfoVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int SetGUID;
			public int SetSource;
			public int SetDescription;
			public int SetHelpFile;
			public int SetHelpContext;
			public int AttachToErrorInfo;
		}
		[CRepr]
		public struct IImgCreateErrorInfo
		{
			public IImgCreateErrorInfoVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintReadStreamVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int Seek;
			public int ReadBytes;
		}
		[CRepr]
		public struct IPrintReadStream
		{
			public IPrintReadStreamVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintWriteStreamVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int WriteBytes;
			public int Close;
		}
		[CRepr]
		public struct IPrintWriteStream
		{
			public IPrintWriteStreamVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintWriteStreamFlushVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int FlushData;
		}
		[CRepr]
		public struct IPrintWriteStreamFlush
		{
			public IPrintWriteStreamFlushVtbl* lpVtbl;
		}
		[CRepr]
		public struct IInterFilterCommunicatorVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int RequestReader;
			public int RequestWriter;
		}
		[CRepr]
		public struct IInterFilterCommunicator
		{
			public IInterFilterCommunicatorVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintPipelineManagerControlVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int RequestShutdown;
			public int FilterFinished;
		}
		[CRepr]
		public struct IPrintPipelineManagerControl
		{
			public IPrintPipelineManagerControlVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintPipelinePropertyBagVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int AddProperty;
			public int GetProperty;
			public int DeleteProperty;
		}
		[CRepr]
		public struct IPrintPipelinePropertyBag
		{
			public IPrintPipelinePropertyBagVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintPipelineProgressReportVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int ReportProgress;
		}
		[CRepr]
		public struct IPrintPipelineProgressReport
		{
			public IPrintPipelineProgressReportVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintClassObjectFactoryVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetPrintClassObject;
		}
		[CRepr]
		public struct IPrintClassObjectFactory
		{
			public IPrintClassObjectFactoryVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintPipelineFilterVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int InitializeFilter;
			public int ShutdownOperation;
			public int StartOperation;
		}
		[CRepr]
		public struct IPrintPipelineFilter
		{
			public IPrintPipelineFilterVtbl* lpVtbl;
		}
		[CRepr]
		public struct IXpsDocumentProviderVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetXpsPart;
		}
		[CRepr]
		public struct IXpsDocumentProvider
		{
			public IXpsDocumentProviderVtbl* lpVtbl;
		}
		[CRepr]
		public struct IXpsDocumentConsumerVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int SendXpsUnknown;
			public int SendXpsDocument;
			public int SendFixedDocumentSequence;
			public int SendFixedDocument;
			public int SendFixedPage;
			public int CloseSender;
			public int GetNewEmptyPart;
		}
		[CRepr]
		public struct IXpsDocumentConsumer
		{
			public IXpsDocumentConsumerVtbl* lpVtbl;
		}
		[CRepr]
		public struct IXpsDocumentVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetThumbnail;
			public int SetThumbnail;
		}
		[CRepr]
		public struct IXpsDocument
		{
			public IXpsDocumentVtbl* lpVtbl;
		}
		[CRepr]
		public struct IFixedDocumentSequenceVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetPrintTicket;
			public int SetPrintTicket;
		}
		[CRepr]
		public struct IFixedDocumentSequence
		{
			public IFixedDocumentSequenceVtbl* lpVtbl;
		}
		[CRepr]
		public struct IFixedDocumentVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetPrintTicket;
			public int SetPrintTicket;
		}
		[CRepr]
		public struct IFixedDocument
		{
			public IFixedDocumentVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartBaseVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
		}
		[CRepr]
		public struct IPartBase
		{
			public IPartBaseVtbl* lpVtbl;
		}
		[CRepr]
		public struct IFixedPageVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
			public int GetPrintTicket;
			public int GetPagePart;
			public int GetWriteStream;
			public int SetPrintTicket;
			public int SetPagePart;
			public int DeleteResource;
			public int GetXpsPartIterator;
		}
		[CRepr]
		public struct IFixedPage
		{
			public IFixedPageVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartImageVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
			public int GetImageProperties;
			public int SetImageContent;
		}
		[CRepr]
		public struct IPartImage
		{
			public IPartImageVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartFontVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
			public int GetFontProperties;
			public int SetFontContent;
			public int SetFontOptions;
		}
		[CRepr]
		public struct IPartFont
		{
			public IPartFontVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartFont2Vtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
			public int GetFontProperties;
			public int SetFontContent;
			public int SetFontOptions;
			public int GetFontRestriction;
		}
		[CRepr]
		public struct IPartFont2
		{
			public IPartFont2Vtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartThumbnailVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
			public int GetThumbnailProperties;
			public int SetThumbnailContent;
		}
		[CRepr]
		public struct IPartThumbnail
		{
			public IPartThumbnailVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartPrintTicketVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
		}
		[CRepr]
		public struct IPartPrintTicket
		{
			public IPartPrintTicketVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartColorProfileVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
		}
		[CRepr]
		public struct IPartColorProfile
		{
			public IPartColorProfileVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartResourceDictionaryVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetUri;
			public int GetStream;
			public int GetPartCompression;
			public int SetPartCompression;
		}
		[CRepr]
		public struct IPartResourceDictionary
		{
			public IPartResourceDictionaryVtbl* lpVtbl;
		}
		[CRepr]
		public struct IXpsPartIteratorVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int Reset;
			public int Current;
			public int IsDone;
			public int Next;
		}
		[CRepr]
		public struct IXpsPartIterator
		{
			public IXpsPartIteratorVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPrintReadStreamFactoryVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetStream;
		}
		[CRepr]
		public struct IPrintReadStreamFactory
		{
			public IPrintReadStreamFactoryVtbl* lpVtbl;
		}
		[CRepr]
		public struct IPartDiscardControlVtbl
		{
			public int QueryInterface;
			public int AddRef;
			public int Release;
			public int GetDiscardProperties;
		}
		[CRepr]
		public struct IPartDiscardControl
		{
			public IPartDiscardControlVtbl* lpVtbl;
		}
		[CRepr]
		public struct OPTPARAM
		{
			public uint16 cbSize;
			public uint8 Flags;
			public uint8 Style;
			public int8* pData;
			public uint IconID;
			public LPARAM lParam;
			public uint[2] dwReserved;
		}
		[CRepr]
		public struct OPTCOMBO
		{
			public uint16 cbSize;
			public uint8 Flags;
			public uint16 cListItem;
			public OPTPARAM* pListItem;
			public int32 Sel;
			public uint32[3] dwReserved;
		}
		[CRepr]
		public struct OPTTYPE
		{
			public uint16 cbSize;
			public uint8 Type;
			public uint8 Flags;
			public uint16 Count;
			public uint16 BegCtrlID;
			public OPTPARAM* pOptParam;
			public uint16 Style;
			public uint16[3] wReserved;
			public uint[3] dwReserved;
		}
		[CRepr]
		public struct EXTPUSH
		{
			public uint16 cbSize;
			public uint16 Flags;
			public int8* pTitle;
			public _Anonymous1_e__Union Anonymous1;
			public uint IconID;
			public _Anonymous2_e__Union Anonymous2;
			public uint[3] dwReserved;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint16 DlgTemplateID;
				public HANDLE hDlgTemplate;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public DLGPROC DlgProc;
				public FARPROC pfnCallBack;
			}
		}
		[CRepr]
		public struct EXTCHKBOX
		{
			public uint16 cbSize;
			public uint16 Flags;
			public int8* pTitle;
			public int8* pSeparator;
			public int8* pCheckedName;
			public uint IconID;
			public uint16[4] wReserved;
			public uint[2] dwReserved;
		}
		[CRepr]
		public struct OIEXT
		{
			public uint16 cbSize;
			public uint16 Flags;
			public HINSTANCE hInstCaller;
			public int8* pHelpFile;
			public uint[4] dwReserved;
		}
		[CRepr]
		public struct OPTITEM
		{
			public uint16 cbSize;
			public uint8 Level;
			public uint8 DlgPageIdx;
			public uint32 Flags;
			public uint UserData;
			public int8* pName;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public OPTTYPE* pOptType;
			public uint32 HelpIndex;
			public uint8 DMPubID;
			public uint8 UserItemID;
			public uint16 wReserved;
			public OIEXT* pOIExt;
			public uint[3] dwReserved;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public EXTCHKBOX* pExtChkBox;
				public EXTPUSH* pExtPush;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public int32 Sel;
				public int8* pSel;
			}
		}
		[CRepr]
		public struct CPSUICBPARAM
		{
			public uint16 cbSize;
			public uint16 Reason;
			public HWND hDlg;
			public OPTITEM* pOptItem;
			public uint16 cOptItem;
			public uint16 Flags;
			public OPTITEM* pCurItem;
			public _Anonymous_e__Union Anonymous;
			public uint UserData;
			public uint Result;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 OldSel;
				public int8* pOldSel;
			}
		}
		[CRepr]
		public struct DLGPAGE
		{
			public uint16 cbSize;
			public uint16 Flags;
			public DLGPROC DlgProc;
			public int8* pTabName;
			public uint IconID;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint16 DlgTemplateID;
				public HANDLE hDlgTemplate;
			}
		}
		[CRepr]
		public struct COMPROPSHEETUI
		{
			public uint16 cbSize;
			public uint16 Flags;
			public HINSTANCE hInstCaller;
			public int8* pCallerName;
			public uint UserData;
			public int8* pHelpFile;
			public _CPSUICALLBACK pfnCallBack;
			public OPTITEM* pOptItem;
			public DLGPAGE* pDlgPage;
			public uint16 cOptItem;
			public uint16 cDlgPage;
			public uint IconID;
			public int8* pOptItemName;
			public uint16 CallerVersion;
			public uint16 OptItemVersion;
			public uint[4] dwReserved;
		}
		[CRepr]
		public struct SETRESULT_INFO
		{
			public uint16 cbSize;
			public uint16 wReserved;
			public HANDLE hSetResult;
			public LRESULT Result;
		}
		[CRepr]
		public struct INSERTPSUIPAGE_INFO
		{
			public uint16 cbSize;
			public uint8 Type;
			public uint8 Mode;
			public uint dwData1;
			public uint dwData2;
			public uint dwData3;
		}
		[CRepr]
		public struct PSPINFO
		{
			public uint16 cbSize;
			public uint16 wReserved;
			public HANDLE hComPropSheet;
			public HANDLE hCPSUIPage;
			public PFNCOMPROPSHEET pfnComPropSheet;
		}
		[CRepr]
		public struct CPSUIDATABLOCK
		{
			public uint32 cbData;
			public uint8* pbData;
		}
		[CRepr]
		public struct PROPSHEETUI_INFO
		{
			public uint16 cbSize;
			public uint16 Version;
			public uint16 Flags;
			public uint16 Reason;
			public HANDLE hComPropSheet;
			public PFNCOMPROPSHEET pfnComPropSheet;
			public LPARAM lParamInit;
			public uint UserData;
			public uint Result;
		}
		[CRepr]
		public struct PROPSHEETUI_GETICON_INFO
		{
			public uint16 cbSize;
			public uint16 Flags;
			public uint16 cxIcon;
			public uint16 cyIcon;
			public HICON hIcon;
		}
		[CRepr]
		public struct PROPSHEETUI_INFO_HEADER
		{
			public uint16 cbSize;
			public uint16 Flags;
			public int8* pTitle;
			public HWND hWndParent;
			public HINSTANCE hInst;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HICON hIcon;
				public uint IconID;
			}
		}
		[CRepr]
		public struct PRINTER_INFO_1A
		{
			public uint32 Flags;
			public PSTR pDescription;
			public PSTR pName;
			public PSTR pComment;
		}
		[CRepr]
		public struct PRINTER_INFO_1W
		{
			public uint32 Flags;
			public PWSTR pDescription;
			public PWSTR pName;
			public PWSTR pComment;
		}
		[CRepr]
		public struct PRINTER_INFO_2A
		{
			public PSTR pServerName;
			public PSTR pPrinterName;
			public PSTR pShareName;
			public PSTR pPortName;
			public PSTR pDriverName;
			public PSTR pComment;
			public PSTR pLocation;
			public DEVMODEA* pDevMode;
			public PSTR pSepFile;
			public PSTR pPrintProcessor;
			public PSTR pDatatype;
			public PSTR pParameters;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Attributes;
			public uint32 Priority;
			public uint32 DefaultPriority;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 Status;
			public uint32 cJobs;
			public uint32 AveragePPM;
		}
		[CRepr]
		public struct PRINTER_INFO_2W
		{
			public PWSTR pServerName;
			public PWSTR pPrinterName;
			public PWSTR pShareName;
			public PWSTR pPortName;
			public PWSTR pDriverName;
			public PWSTR pComment;
			public PWSTR pLocation;
			public DEVMODEW* pDevMode;
			public PWSTR pSepFile;
			public PWSTR pPrintProcessor;
			public PWSTR pDatatype;
			public PWSTR pParameters;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Attributes;
			public uint32 Priority;
			public uint32 DefaultPriority;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 Status;
			public uint32 cJobs;
			public uint32 AveragePPM;
		}
		[CRepr]
		public struct PRINTER_INFO_3
		{
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
		}
		[CRepr]
		public struct PRINTER_INFO_4A
		{
			public PSTR pPrinterName;
			public PSTR pServerName;
			public uint32 Attributes;
		}
		[CRepr]
		public struct PRINTER_INFO_4W
		{
			public PWSTR pPrinterName;
			public PWSTR pServerName;
			public uint32 Attributes;
		}
		[CRepr]
		public struct PRINTER_INFO_5A
		{
			public PSTR pPrinterName;
			public PSTR pPortName;
			public uint32 Attributes;
			public uint32 DeviceNotSelectedTimeout;
			public uint32 TransmissionRetryTimeout;
		}
		[CRepr]
		public struct PRINTER_INFO_5W
		{
			public PWSTR pPrinterName;
			public PWSTR pPortName;
			public uint32 Attributes;
			public uint32 DeviceNotSelectedTimeout;
			public uint32 TransmissionRetryTimeout;
		}
		[CRepr]
		public struct PRINTER_INFO_6
		{
			public uint32 dwStatus;
		}
		[CRepr]
		public struct PRINTER_INFO_7A
		{
			public PSTR pszObjectGUID;
			public uint32 dwAction;
		}
		[CRepr]
		public struct PRINTER_INFO_7W
		{
			public PWSTR pszObjectGUID;
			public uint32 dwAction;
		}
		[CRepr]
		public struct PRINTER_INFO_8A
		{
			public DEVMODEA* pDevMode;
		}
		[CRepr]
		public struct PRINTER_INFO_8W
		{
			public DEVMODEW* pDevMode;
		}
		[CRepr]
		public struct PRINTER_INFO_9A
		{
			public DEVMODEA* pDevMode;
		}
		[CRepr]
		public struct PRINTER_INFO_9W
		{
			public DEVMODEW* pDevMode;
		}
		[CRepr]
		public struct JOB_INFO_1A
		{
			public uint32 JobId;
			public PSTR pPrinterName;
			public PSTR pMachineName;
			public PSTR pUserName;
			public PSTR pDocument;
			public PSTR pDatatype;
			public PSTR pStatus;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 TotalPages;
			public uint32 PagesPrinted;
			public SYSTEMTIME Submitted;
		}
		[CRepr]
		public struct JOB_INFO_1W
		{
			public uint32 JobId;
			public PWSTR pPrinterName;
			public PWSTR pMachineName;
			public PWSTR pUserName;
			public PWSTR pDocument;
			public PWSTR pDatatype;
			public PWSTR pStatus;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 TotalPages;
			public uint32 PagesPrinted;
			public SYSTEMTIME Submitted;
		}
		[CRepr]
		public struct JOB_INFO_2A
		{
			public uint32 JobId;
			public PSTR pPrinterName;
			public PSTR pMachineName;
			public PSTR pUserName;
			public PSTR pDocument;
			public PSTR pNotifyName;
			public PSTR pDatatype;
			public PSTR pPrintProcessor;
			public PSTR pParameters;
			public PSTR pDriverName;
			public DEVMODEA* pDevMode;
			public PSTR pStatus;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 TotalPages;
			public uint32 Size;
			public SYSTEMTIME Submitted;
			public uint32 Time;
			public uint32 PagesPrinted;
		}
		[CRepr]
		public struct JOB_INFO_2W
		{
			public uint32 JobId;
			public PWSTR pPrinterName;
			public PWSTR pMachineName;
			public PWSTR pUserName;
			public PWSTR pDocument;
			public PWSTR pNotifyName;
			public PWSTR pDatatype;
			public PWSTR pPrintProcessor;
			public PWSTR pParameters;
			public PWSTR pDriverName;
			public DEVMODEW* pDevMode;
			public PWSTR pStatus;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 TotalPages;
			public uint32 Size;
			public SYSTEMTIME Submitted;
			public uint32 Time;
			public uint32 PagesPrinted;
		}
		[CRepr]
		public struct JOB_INFO_3
		{
			public uint32 JobId;
			public uint32 NextJobId;
			public uint32 Reserved;
		}
		[CRepr]
		public struct JOB_INFO_4A
		{
			public uint32 JobId;
			public PSTR pPrinterName;
			public PSTR pMachineName;
			public PSTR pUserName;
			public PSTR pDocument;
			public PSTR pNotifyName;
			public PSTR pDatatype;
			public PSTR pPrintProcessor;
			public PSTR pParameters;
			public PSTR pDriverName;
			public DEVMODEA* pDevMode;
			public PSTR pStatus;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 TotalPages;
			public uint32 Size;
			public SYSTEMTIME Submitted;
			public uint32 Time;
			public uint32 PagesPrinted;
			public int32 SizeHigh;
		}
		[CRepr]
		public struct JOB_INFO_4W
		{
			public uint32 JobId;
			public PWSTR pPrinterName;
			public PWSTR pMachineName;
			public PWSTR pUserName;
			public PWSTR pDocument;
			public PWSTR pNotifyName;
			public PWSTR pDatatype;
			public PWSTR pPrintProcessor;
			public PWSTR pParameters;
			public PWSTR pDriverName;
			public DEVMODEW* pDevMode;
			public PWSTR pStatus;
			public SECURITY_DESCRIPTOR* pSecurityDescriptor;
			public uint32 Status;
			public uint32 Priority;
			public uint32 Position;
			public uint32 StartTime;
			public uint32 UntilTime;
			public uint32 TotalPages;
			public uint32 Size;
			public SYSTEMTIME Submitted;
			public uint32 Time;
			public uint32 PagesPrinted;
			public int32 SizeHigh;
		}
		[CRepr]
		public struct ADDJOB_INFO_1A
		{
			public PSTR Path;
			public uint32 JobId;
		}
		[CRepr]
		public struct ADDJOB_INFO_1W
		{
			public PWSTR Path;
			public uint32 JobId;
		}
		[CRepr]
		public struct DRIVER_INFO_1A
		{
			public PSTR pName;
		}
		[CRepr]
		public struct DRIVER_INFO_1W
		{
			public PWSTR pName;
		}
		[CRepr]
		public struct DRIVER_INFO_2A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
		}
		[CRepr]
		public struct DRIVER_INFO_2W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
		}
		[CRepr]
		public struct DRIVER_INFO_3A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
			public PSTR pHelpFile;
			public PSTR pDependentFiles;
			public PSTR pMonitorName;
			public PSTR pDefaultDataType;
		}
		[CRepr]
		public struct DRIVER_INFO_3W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
			public PWSTR pHelpFile;
			public PWSTR pDependentFiles;
			public PWSTR pMonitorName;
			public PWSTR pDefaultDataType;
		}
		[CRepr]
		public struct DRIVER_INFO_4A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
			public PSTR pHelpFile;
			public PSTR pDependentFiles;
			public PSTR pMonitorName;
			public PSTR pDefaultDataType;
			public PSTR pszzPreviousNames;
		}
		[CRepr]
		public struct DRIVER_INFO_4W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
			public PWSTR pHelpFile;
			public PWSTR pDependentFiles;
			public PWSTR pMonitorName;
			public PWSTR pDefaultDataType;
			public PWSTR pszzPreviousNames;
		}
		[CRepr]
		public struct DRIVER_INFO_5A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
			public uint32 dwDriverAttributes;
			public uint32 dwConfigVersion;
			public uint32 dwDriverVersion;
		}
		[CRepr]
		public struct DRIVER_INFO_5W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
			public uint32 dwDriverAttributes;
			public uint32 dwConfigVersion;
			public uint32 dwDriverVersion;
		}
		[CRepr]
		public struct DRIVER_INFO_6A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
			public PSTR pHelpFile;
			public PSTR pDependentFiles;
			public PSTR pMonitorName;
			public PSTR pDefaultDataType;
			public PSTR pszzPreviousNames;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public PSTR pszMfgName;
			public PSTR pszOEMUrl;
			public PSTR pszHardwareID;
			public PSTR pszProvider;
		}
		[CRepr]
		public struct DRIVER_INFO_6W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
			public PWSTR pHelpFile;
			public PWSTR pDependentFiles;
			public PWSTR pMonitorName;
			public PWSTR pDefaultDataType;
			public PWSTR pszzPreviousNames;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public PWSTR pszMfgName;
			public PWSTR pszOEMUrl;
			public PWSTR pszHardwareID;
			public PWSTR pszProvider;
		}
		[CRepr]
		public struct DRIVER_INFO_8A
		{
			public uint32 cVersion;
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDriverPath;
			public PSTR pDataFile;
			public PSTR pConfigFile;
			public PSTR pHelpFile;
			public PSTR pDependentFiles;
			public PSTR pMonitorName;
			public PSTR pDefaultDataType;
			public PSTR pszzPreviousNames;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public PSTR pszMfgName;
			public PSTR pszOEMUrl;
			public PSTR pszHardwareID;
			public PSTR pszProvider;
			public PSTR pszPrintProcessor;
			public PSTR pszVendorSetup;
			public PSTR pszzColorProfiles;
			public PSTR pszInfPath;
			public uint32 dwPrinterDriverAttributes;
			public PSTR pszzCoreDriverDependencies;
			public FILETIME ftMinInboxDriverVerDate;
			public uint64 dwlMinInboxDriverVerVersion;
		}
		[CRepr]
		public struct DRIVER_INFO_8W
		{
			public uint32 cVersion;
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDriverPath;
			public PWSTR pDataFile;
			public PWSTR pConfigFile;
			public PWSTR pHelpFile;
			public PWSTR pDependentFiles;
			public PWSTR pMonitorName;
			public PWSTR pDefaultDataType;
			public PWSTR pszzPreviousNames;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public PWSTR pszMfgName;
			public PWSTR pszOEMUrl;
			public PWSTR pszHardwareID;
			public PWSTR pszProvider;
			public PWSTR pszPrintProcessor;
			public PWSTR pszVendorSetup;
			public PWSTR pszzColorProfiles;
			public PWSTR pszInfPath;
			public uint32 dwPrinterDriverAttributes;
			public PWSTR pszzCoreDriverDependencies;
			public FILETIME ftMinInboxDriverVerDate;
			public uint64 dwlMinInboxDriverVerVersion;
		}
		[CRepr]
		public struct DOC_INFO_1A
		{
			public PSTR pDocName;
			public PSTR pOutputFile;
			public PSTR pDatatype;
		}
		[CRepr]
		public struct DOC_INFO_1W
		{
			public PWSTR pDocName;
			public PWSTR pOutputFile;
			public PWSTR pDatatype;
		}
		[CRepr]
		public struct FORM_INFO_1A
		{
			public uint32 Flags;
			public PSTR pName;
			public SIZE Size;
			public RECTL ImageableArea;
		}
		[CRepr]
		public struct FORM_INFO_1W
		{
			public uint32 Flags;
			public PWSTR pName;
			public SIZE Size;
			public RECTL ImageableArea;
		}
		[CRepr]
		public struct FORM_INFO_2A
		{
			public uint32 Flags;
			public PSTR pName;
			public SIZE Size;
			public RECTL ImageableArea;
			public PSTR pKeyword;
			public uint32 StringType;
			public PSTR pMuiDll;
			public uint32 dwResourceId;
			public PSTR pDisplayName;
			public uint16 wLangId;
		}
		[CRepr]
		public struct FORM_INFO_2W
		{
			public uint32 Flags;
			public PWSTR pName;
			public SIZE Size;
			public RECTL ImageableArea;
			public PSTR pKeyword;
			public uint32 StringType;
			public PWSTR pMuiDll;
			public uint32 dwResourceId;
			public PWSTR pDisplayName;
			public uint16 wLangId;
		}
		[CRepr]
		public struct DOC_INFO_2A
		{
			public PSTR pDocName;
			public PSTR pOutputFile;
			public PSTR pDatatype;
			public uint32 dwMode;
			public uint32 JobId;
		}
		[CRepr]
		public struct DOC_INFO_2W
		{
			public PWSTR pDocName;
			public PWSTR pOutputFile;
			public PWSTR pDatatype;
			public uint32 dwMode;
			public uint32 JobId;
		}
		[CRepr]
		public struct DOC_INFO_3A
		{
			public PSTR pDocName;
			public PSTR pOutputFile;
			public PSTR pDatatype;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct DOC_INFO_3W
		{
			public PWSTR pDocName;
			public PWSTR pOutputFile;
			public PWSTR pDatatype;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct PRINTPROCESSOR_INFO_1A
		{
			public PSTR pName;
		}
		[CRepr]
		public struct PRINTPROCESSOR_INFO_1W
		{
			public PWSTR pName;
		}
		[CRepr]
		public struct PRINTPROCESSOR_CAPS_1
		{
			public uint32 dwLevel;
			public uint32 dwNupOptions;
			public uint32 dwPageOrderFlags;
			public uint32 dwNumberOfCopies;
		}
		[CRepr]
		public struct PRINTPROCESSOR_CAPS_2
		{
			public uint32 dwLevel;
			public uint32 dwNupOptions;
			public uint32 dwPageOrderFlags;
			public uint32 dwNumberOfCopies;
			public uint32 dwDuplexHandlingCaps;
			public uint32 dwNupDirectionCaps;
			public uint32 dwNupBorderCaps;
			public uint32 dwBookletHandlingCaps;
			public uint32 dwScalingCaps;
		}
		[CRepr]
		public struct PORT_INFO_1A
		{
			public PSTR pName;
		}
		[CRepr]
		public struct PORT_INFO_1W
		{
			public PWSTR pName;
		}
		[CRepr]
		public struct PORT_INFO_2A
		{
			public PSTR pPortName;
			public PSTR pMonitorName;
			public PSTR pDescription;
			public uint32 fPortType;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PORT_INFO_2W
		{
			public PWSTR pPortName;
			public PWSTR pMonitorName;
			public PWSTR pDescription;
			public uint32 fPortType;
			public uint32 Reserved;
		}
		[CRepr]
		public struct PORT_INFO_3A
		{
			public uint32 dwStatus;
			public PSTR pszStatus;
			public uint32 dwSeverity;
		}
		[CRepr]
		public struct PORT_INFO_3W
		{
			public uint32 dwStatus;
			public PWSTR pszStatus;
			public uint32 dwSeverity;
		}
		[CRepr]
		public struct MONITOR_INFO_1A
		{
			public PSTR pName;
		}
		[CRepr]
		public struct MONITOR_INFO_1W
		{
			public PWSTR pName;
		}
		[CRepr]
		public struct MONITOR_INFO_2A
		{
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDLLName;
		}
		[CRepr]
		public struct MONITOR_INFO_2W
		{
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDLLName;
		}
		[CRepr]
		public struct DATATYPES_INFO_1A
		{
			public PSTR pName;
		}
		[CRepr]
		public struct DATATYPES_INFO_1W
		{
			public PWSTR pName;
		}
		[CRepr]
		public struct PRINTER_DEFAULTSA
		{
			public PSTR pDatatype;
			public DEVMODEA* pDevMode;
			public uint32 DesiredAccess;
		}
		[CRepr]
		public struct PRINTER_DEFAULTSW
		{
			public PWSTR pDatatype;
			public DEVMODEW* pDevMode;
			public uint32 DesiredAccess;
		}
		[CRepr]
		public struct PRINTER_ENUM_VALUESA
		{
			public PSTR pValueName;
			public uint32 cbValueName;
			public uint32 dwType;
			public uint8* pData;
			public uint32 cbData;
		}
		[CRepr]
		public struct PRINTER_ENUM_VALUESW
		{
			public PWSTR pValueName;
			public uint32 cbValueName;
			public uint32 dwType;
			public uint8* pData;
			public uint32 cbData;
		}
		[CRepr]
		public struct PRINTER_NOTIFY_OPTIONS_TYPE
		{
			public uint16 Type;
			public uint16 Reserved0;
			public uint32 Reserved1;
			public uint32 Reserved2;
			public uint32 Count;
			public uint16* pFields;
		}
		[CRepr]
		public struct PRINTER_NOTIFY_OPTIONS
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 Count;
			public PRINTER_NOTIFY_OPTIONS_TYPE* pTypes;
		}
		[CRepr]
		public struct PRINTER_NOTIFY_INFO_DATA
		{
			public uint16 Type;
			public uint16 Field;
			public uint32 Reserved;
			public uint32 Id;
			public _NotifyData_e__Union NotifyData;
			
			[CRepr, Union]
			public struct _NotifyData_e__Union
			{
				public uint32[2] adwData;
				public _Data_e__Struct Data;
				
				[CRepr]
				public struct _Data_e__Struct
				{
					public uint32 cbBuf;
					public void* pBuf;
				}
			}
		}
		[CRepr]
		public struct PRINTER_NOTIFY_INFO
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 Count;
			public PRINTER_NOTIFY_INFO_DATA[0] aData;
		}
		[CRepr]
		public struct BINARY_CONTAINER
		{
			public uint32 cbBuf;
			public uint8* pData;
		}
		[CRepr]
		public struct BIDI_DATA
		{
			public uint32 dwBidiType;
			public _u_e__Union u;
			
			[CRepr, Union]
			public struct _u_e__Union
			{
				public BOOL bData;
				public int32 iData;
				public PWSTR sData;
				public float fData;
				public BINARY_CONTAINER biData;
			}
		}
		[CRepr]
		public struct BIDI_REQUEST_DATA
		{
			public uint32 dwReqNumber;
			public PWSTR pSchema;
			public BIDI_DATA data;
		}
		[CRepr]
		public struct BIDI_REQUEST_CONTAINER
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 Count;
			public BIDI_REQUEST_DATA[0] aData;
		}
		[CRepr]
		public struct BIDI_RESPONSE_DATA
		{
			public uint32 dwResult;
			public uint32 dwReqNumber;
			public PWSTR pSchema;
			public BIDI_DATA data;
		}
		[CRepr]
		public struct BIDI_RESPONSE_CONTAINER
		{
			public uint32 Version;
			public uint32 Flags;
			public uint32 Count;
			public BIDI_RESPONSE_DATA[0] aData;
		}
		[CRepr]
		public struct PROVIDOR_INFO_1A
		{
			public PSTR pName;
			public PSTR pEnvironment;
			public PSTR pDLLName;
		}
		[CRepr]
		public struct PROVIDOR_INFO_1W
		{
			public PWSTR pName;
			public PWSTR pEnvironment;
			public PWSTR pDLLName;
		}
		[CRepr]
		public struct PROVIDOR_INFO_2A
		{
			public PSTR pOrder;
		}
		[CRepr]
		public struct PROVIDOR_INFO_2W
		{
			public PWSTR pOrder;
		}
		[CRepr]
		public struct PRINTER_OPTIONSA
		{
			public uint32 cbSize;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct PRINTER_OPTIONSW
		{
			public uint32 cbSize;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct PRINTER_CONNECTION_INFO_1A
		{
			public uint32 dwFlags;
			public PSTR pszDriverName;
		}
		[CRepr]
		public struct PRINTER_CONNECTION_INFO_1W
		{
			public uint32 dwFlags;
			public PWSTR pszDriverName;
		}
		[CRepr]
		public struct CORE_PRINTER_DRIVERA
		{
			public Guid CoreDriverGUID;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public CHAR[260] szPackageID;
		}
		[CRepr]
		public struct CORE_PRINTER_DRIVERW
		{
			public Guid CoreDriverGUID;
			public FILETIME ftDriverDate;
			public uint64 dwlDriverVersion;
			public char16[260] szPackageID;
		}
		[CRepr]
		public struct PrintPropertyValue
		{
			public EPrintPropertyType ePropertyType;
			public _value_e__Union value;
			
			[CRepr, Union]
			public struct _value_e__Union
			{
				public uint8 propertyByte;
				public PWSTR propertyString;
				public int32 propertyInt32;
				public int64 propertyInt64;
				public _propertyBlob_e__Struct propertyBlob;
				
				[CRepr]
				public struct _propertyBlob_e__Struct
				{
					public uint32 cbBuf;
					public void* pBuf;
				}
			}
		}
		[CRepr]
		public struct PrintNamedProperty
		{
			public PWSTR propertyName;
			public PrintPropertyValue propertyValue;
		}
		[CRepr]
		public struct PrintPropertiesCollection
		{
			public uint32 numberOfProperties;
			public PrintNamedProperty* propertiesCollection;
		}
		[CRepr]
		public struct PRINT_EXECUTION_DATA
		{
			public PRINT_EXECUTION_CONTEXT context;
			public uint32 clientAppPID;
		}
		[CRepr, Packed(1)]
		public struct MxdcEscapeHeader
		{
			public uint32 cbInput;
			public uint32 cbOutput;
			public uint32 opCode;
		}
		[CRepr, Packed(1)]
		public struct MxdcGetFileNameData
		{
			public uint32 cbOutput;
			public char16[0] wszData;
		}
		[CRepr, Packed(1)]
		public struct MxdcS0PageData
		{
			public uint32 dwSize;
			public uint8[0] bData;
		}
		[CRepr, Packed(1)]
		public struct MxdcXpsS0PageResource
		{
			public uint32 dwSize;
			public uint32 dwResourceType;
			public uint8[260] szUri;
			public uint32 dwDataSize;
			public uint8[0] bData;
		}
		[CRepr, Packed(1)]
		public struct MxdcPrintTicketPassthrough
		{
			public uint32 dwDataSize;
			public uint8[0] bData;
		}
		[CRepr]
		public struct MxdcPrintTicketEscape
		{
			public MxdcEscapeHeader mxdcEscape;
			public MxdcPrintTicketPassthrough printTicketData;
		}
		[CRepr]
		public struct MxdcS0PagePassthroughEscape
		{
			public MxdcEscapeHeader mxdcEscape;
			public MxdcS0PageData xpsS0PageData;
		}
		[CRepr]
		public struct MxdcS0PageResourceEscape
		{
			public MxdcEscapeHeader mxdcEscape;
			public MxdcXpsS0PageResource xpsS0PageResourcePassthrough;
		}
		[CRepr]
		public struct DEVICEPROPERTYHEADER
		{
			public uint16 cbSize;
			public uint16 Flags;
			public HANDLE hPrinter;
			public int8* pszPrinterName;
		}
		[CRepr]
		public struct DOCUMENTPROPERTYHEADER
		{
			public uint16 cbSize;
			public uint16 Reserved;
			public HANDLE hPrinter;
			public int8* pszPrinterName;
			public DEVMODEA* pdmIn;
			public DEVMODEA* pdmOut;
			public uint32 cbOut;
			public uint32 fMode;
		}
		[CRepr]
		public struct DEVQUERYPRINT_INFO
		{
			public uint16 cbSize;
			public uint16 Level;
			public HANDLE hPrinter;
			public DEVMODEA* pDevMode;
			public PWSTR pszErrorStr;
			public uint32 cchErrorStr;
			public uint32 cchNeeded;
		}
		[CRepr]
		public struct DRIVER_UPGRADE_INFO_1
		{
			public int8* pPrinterName;
			public int8* pOldDriverDirectory;
		}
		[CRepr]
		public struct DRIVER_UPGRADE_INFO_2
		{
			public int8* pPrinterName;
			public int8* pOldDriverDirectory;
			public uint32 cVersion;
			public int8* pName;
			public int8* pEnvironment;
			public int8* pDriverPath;
			public int8* pDataFile;
			public int8* pConfigFile;
			public int8* pHelpFile;
			public int8* pDependentFiles;
			public int8* pMonitorName;
			public int8* pDefaultDataType;
			public int8* pszzPreviousNames;
		}
		[CRepr]
		public struct DOCEVENT_FILTER
		{
			public uint32 cbSize;
			public uint32 cElementsAllocated;
			public uint32 cElementsNeeded;
			public uint32 cElementsReturned;
			public uint32[0] aDocEventCall;
		}
		[CRepr]
		public struct DOCEVENT_CREATEDCPRE
		{
			public PWSTR pszDriver;
			public PWSTR pszDevice;
			public DEVMODEW* pdm;
			public BOOL bIC;
		}
		[CRepr]
		public struct DOCEVENT_ESCAPE
		{
			public int32 iEscape;
			public int32 cjInput;
			public void* pvInData;
		}
		[CRepr]
		public struct PRINTER_EVENT_ATTRIBUTES_INFO
		{
			public uint32 cbSize;
			public uint32 dwOldAttributes;
			public uint32 dwNewAttributes;
		}
		[CRepr]
		public struct ATTRIBUTE_INFO_1
		{
			public uint32 dwJobNumberOfPagesPerSide;
			public uint32 dwDrvNumberOfPagesPerSide;
			public uint32 dwNupBorderFlags;
			public uint32 dwJobPageOrderFlags;
			public uint32 dwDrvPageOrderFlags;
			public uint32 dwJobNumberOfCopies;
			public uint32 dwDrvNumberOfCopies;
		}
		[CRepr]
		public struct ATTRIBUTE_INFO_2
		{
			public uint32 dwJobNumberOfPagesPerSide;
			public uint32 dwDrvNumberOfPagesPerSide;
			public uint32 dwNupBorderFlags;
			public uint32 dwJobPageOrderFlags;
			public uint32 dwDrvPageOrderFlags;
			public uint32 dwJobNumberOfCopies;
			public uint32 dwDrvNumberOfCopies;
			public uint32 dwColorOptimization;
		}
		[CRepr]
		public struct ATTRIBUTE_INFO_3
		{
			public uint32 dwJobNumberOfPagesPerSide;
			public uint32 dwDrvNumberOfPagesPerSide;
			public uint32 dwNupBorderFlags;
			public uint32 dwJobPageOrderFlags;
			public uint32 dwDrvPageOrderFlags;
			public uint32 dwJobNumberOfCopies;
			public uint32 dwDrvNumberOfCopies;
			public uint32 dwColorOptimization;
			public int16 dmPrintQuality;
			public int16 dmYResolution;
		}
		[CRepr]
		public struct ATTRIBUTE_INFO_4
		{
			public uint32 dwJobNumberOfPagesPerSide;
			public uint32 dwDrvNumberOfPagesPerSide;
			public uint32 dwNupBorderFlags;
			public uint32 dwJobPageOrderFlags;
			public uint32 dwDrvPageOrderFlags;
			public uint32 dwJobNumberOfCopies;
			public uint32 dwDrvNumberOfCopies;
			public uint32 dwColorOptimization;
			public int16 dmPrintQuality;
			public int16 dmYResolution;
			public uint32 dwDuplexFlags;
			public uint32 dwNupDirection;
			public uint32 dwBookletFlags;
			public uint32 dwScalingPercentX;
			public uint32 dwScalingPercentY;
		}
		[CRepr]
		public struct PSCRIPT5_PRIVATE_DEVMODE
		{
			public uint16[57] wReserved;
			public uint16 wSize;
		}
		[CRepr]
		public struct UNIDRV_PRIVATE_DEVMODE
		{
			public uint16[4] wReserved;
			public uint16 wSize;
		}
		[CRepr]
		public struct PUBLISHERINFO
		{
			public uint32 dwMode;
			public uint16 wMinoutlinePPEM;
			public uint16 wMaxbitmapPPEM;
		}
		[CRepr]
		public struct OEMDMPARAM
		{
			public uint32 cbSize;
			public void* pdriverobj;
			public HANDLE hPrinter;
			public HANDLE hModule;
			public DEVMODEA* pPublicDMIn;
			public DEVMODEA* pPublicDMOut;
			public void* pOEMDMIn;
			public void* pOEMDMOut;
			public uint32 cbBufSize;
		}
		[CRepr]
		public struct OEM_DMEXTRAHEADER
		{
			public uint32 dwSize;
			public uint32 dwSignature;
			public uint32 dwVersion;
		}
		[CRepr]
		public struct USERDATA
		{
			public uint32 dwSize;
			public uint dwItemID;
			public PSTR pKeyWordName;
			public uint32[8] dwReserved;
		}
		[CRepr]
		public struct SIMULATE_CAPS_1
		{
			public uint32 dwLevel;
			public uint32 dwPageOrderFlags;
			public uint32 dwNumberOfCopies;
			public uint32 dwCollate;
			public uint32 dwNupOptions;
		}
		[CRepr]
		public struct OEMUIPROCS
		{
			public PFN_DrvGetDriverSetting DrvGetDriverSetting;
			public PFN_DrvUpdateUISetting DrvUpdateUISetting;
		}
		[CRepr]
		public struct OEMUIOBJ
		{
			public uint32 cbSize;
			public OEMUIPROCS* pOemUIProcs;
		}
		[CRepr]
		public struct OEMCUIPPARAM
		{
			public uint32 cbSize;
			public OEMUIOBJ* poemuiobj;
			public HANDLE hPrinter;
			public PWSTR pPrinterName;
			public HANDLE hModule;
			public HANDLE hOEMHeap;
			public DEVMODEA* pPublicDM;
			public void* pOEMDM;
			public uint32 dwFlags;
			public OPTITEM* pDrvOptItems;
			public uint32 cDrvOptItems;
			public OPTITEM* pOEMOptItems;
			public uint32 cOEMOptItems;
			public void* pOEMUserData;
			public OEMCUIPCALLBACK OEMCUIPCallback;
		}
		[CRepr]
		public struct OEMUIPSPARAM
		{
			public uint32 cbSize;
			public OEMUIOBJ* poemuiobj;
			public HANDLE hPrinter;
			public PWSTR pPrinterName;
			public HANDLE hModule;
			public HANDLE hOEMHeap;
			public DEVMODEA* pPublicDM;
			public void* pOEMDM;
			public void* pOEMUserData;
			public uint32 dwFlags;
			public void* pOemEntry;
		}
		[CRepr]
		public struct CUSTOMSIZEPARAM
		{
			public int32 dwOrder;
			public int32 lMinVal;
			public int32 lMaxVal;
		}
		[CRepr]
		public struct PRINT_FEATURE_OPTION
		{
			public PSTR pszFeature;
			public PSTR pszOption;
		}
		[CRepr]
		public struct UNIFM_HDR
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 ulDefaultCodepage;
			public int32 lGlyphSetDataRCID;
			public uint32 loUnidrvInfo;
			public uint32 loIFIMetrics;
			public uint32 loExtTextMetric;
			public uint32 loWidthTable;
			public uint32 loKernPair;
			public uint32[2] dwReserved;
		}
		[CRepr]
		public struct INVOC
		{
			public uint32 dwCount;
			public uint32 loOffset;
		}
		[CRepr]
		public struct UNIDRVINFO
		{
			public uint32 dwSize;
			public uint32 flGenFlags;
			public uint16 wType;
			public uint16 fCaps;
			public uint16 wXRes;
			public uint16 wYRes;
			public int16 sYAdjust;
			public int16 sYMoved;
			public uint16 wPrivateData;
			public int16 sShift;
			public INVOC SelectFont;
			public INVOC UnSelectFont;
			public uint16[4] wReserved;
		}
		[CRepr]
		public struct PRINTIFI32
		{
			public uint32 cjThis;
			public uint32 cjIfiExtra;
			public int32 dpwszFamilyName;
			public int32 dpwszStyleName;
			public int32 dpwszFaceName;
			public int32 dpwszUniqueName;
			public int32 dpFontSim;
			public int32 lEmbedId;
			public int32 lItalicAngle;
			public int32 lCharBias;
			public int32 dpCharSets;
			public uint8 jWinCharSet;
			public uint8 jWinPitchAndFamily;
			public uint16 usWinWeight;
			public uint32 flInfo;
			public uint16 fsSelection;
			public uint16 fsType;
			public int16 fwdUnitsPerEm;
			public int16 fwdLowestPPEm;
			public int16 fwdWinAscender;
			public int16 fwdWinDescender;
			public int16 fwdMacAscender;
			public int16 fwdMacDescender;
			public int16 fwdMacLineGap;
			public int16 fwdTypoAscender;
			public int16 fwdTypoDescender;
			public int16 fwdTypoLineGap;
			public int16 fwdAveCharWidth;
			public int16 fwdMaxCharInc;
			public int16 fwdCapHeight;
			public int16 fwdXHeight;
			public int16 fwdSubscriptXSize;
			public int16 fwdSubscriptYSize;
			public int16 fwdSubscriptXOffset;
			public int16 fwdSubscriptYOffset;
			public int16 fwdSuperscriptXSize;
			public int16 fwdSuperscriptYSize;
			public int16 fwdSuperscriptXOffset;
			public int16 fwdSuperscriptYOffset;
			public int16 fwdUnderscoreSize;
			public int16 fwdUnderscorePosition;
			public int16 fwdStrikeoutSize;
			public int16 fwdStrikeoutPosition;
			public uint8 chFirstChar;
			public uint8 chLastChar;
			public uint8 chDefaultChar;
			public uint8 chBreakChar;
			public char16 wcFirstChar;
			public char16 wcLastChar;
			public char16 wcDefaultChar;
			public char16 wcBreakChar;
			public POINTL ptlBaseline;
			public POINTL ptlAspect;
			public POINTL ptlCaret;
			public RECTL rclFontBox;
			public uint8[4] achVendId;
			public uint32 cKerningPairs;
			public uint32 ulPanoseCulture;
			public PANOSE panose;
		}
		[CRepr]
		public struct EXTTEXTMETRIC
		{
			public int16 emSize;
			public int16 emPointSize;
			public int16 emOrientation;
			public int16 emMasterHeight;
			public int16 emMinScale;
			public int16 emMaxScale;
			public int16 emMasterUnits;
			public int16 emCapHeight;
			public int16 emXHeight;
			public int16 emLowerCaseAscent;
			public int16 emLowerCaseDescent;
			public int16 emSlant;
			public int16 emSuperScript;
			public int16 emSubScript;
			public int16 emSuperScriptSize;
			public int16 emSubScriptSize;
			public int16 emUnderlineOffset;
			public int16 emUnderlineWidth;
			public int16 emDoubleUpperUnderlineOffset;
			public int16 emDoubleLowerUnderlineOffset;
			public int16 emDoubleUpperUnderlineWidth;
			public int16 emDoubleLowerUnderlineWidth;
			public int16 emStrikeOutOffset;
			public int16 emStrikeOutWidth;
			public uint16 emKernPairs;
			public uint16 emKernTracks;
		}
		[CRepr]
		public struct WIDTHRUN
		{
			public uint16 wStartGlyph;
			public uint16 wGlyphCount;
			public uint32 loCharWidthOffset;
		}
		[CRepr]
		public struct WIDTHTABLE
		{
			public uint32 dwSize;
			public uint32 dwRunNum;
			public WIDTHRUN[0] WidthRun;
		}
		[CRepr]
		public struct KERNDATA
		{
			public uint32 dwSize;
			public uint32 dwKernPairNum;
			public FD_KERNINGPAIR[0] KernPair;
		}
		[CRepr]
		public struct UNI_GLYPHSETDATA
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public int32 lPredefinedID;
			public uint32 dwGlyphCount;
			public uint32 dwRunCount;
			public uint32 loRunOffset;
			public uint32 dwCodePageCount;
			public uint32 loCodePageOffset;
			public uint32 loMapTableOffset;
			public uint32[2] dwReserved;
		}
		[CRepr]
		public struct UNI_CODEPAGEINFO
		{
			public uint32 dwCodePage;
			public INVOC SelectSymbolSet;
			public INVOC UnSelectSymbolSet;
		}
		[CRepr]
		public struct GLYPHRUN
		{
			public char16 wcLow;
			public uint16 wGlyphCount;
		}
		[CRepr]
		public struct TRANSDATA
		{
			public uint8 ubCodePageID;
			public uint8 ubType;
			public _uCode_e__Union uCode;
			
			[CRepr, Union]
			public struct _uCode_e__Union
			{
				public int16 sCode;
				public uint8 ubCode;
				public uint8[2] ubPairs;
			}
		}
		[CRepr]
		public struct MAPTABLE
		{
			public uint32 dwSize;
			public uint32 dwGlyphNum;
			public TRANSDATA[0] Trans;
		}
		[CRepr]
		public struct UFF_FILEHEADER
		{
			public uint32 dwSignature;
			public uint32 dwVersion;
			public uint32 dwSize;
			public uint32 nFonts;
			public uint32 nGlyphSets;
			public uint32 nVarData;
			public uint32 offFontDir;
			public uint32 dwFlags;
			public uint32[4] dwReserved;
		}
		[CRepr]
		public struct UFF_FONTDIRECTORY
		{
			public uint32 dwSignature;
			public uint16 wSize;
			public uint16 wFontID;
			public int16 sGlyphID;
			public uint16 wFlags;
			public uint32 dwInstallerSig;
			public uint32 offFontName;
			public uint32 offCartridgeName;
			public uint32 offFontData;
			public uint32 offGlyphData;
			public uint32 offVarData;
		}
		[CRepr]
		public struct DATA_HEADER
		{
			public uint32 dwSignature;
			public uint16 wSize;
			public uint16 wDataID;
			public uint32 dwDataSize;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct OEMFONTINSTPARAM
		{
			public uint32 cbSize;
			public HANDLE hPrinter;
			public HANDLE hModule;
			public HANDLE hHeap;
			public uint32 dwFlags;
			public PWSTR pFontInstallerName;
		}
		[CRepr]
		public struct PORT_DATA_1
		{
			public char16[64] sztPortName;
			public uint32 dwVersion;
			public uint32 dwProtocol;
			public uint32 cbSize;
			public uint32 dwReserved;
			public char16[49] sztHostAddress;
			public char16[33] sztSNMPCommunity;
			public uint32 dwDoubleSpool;
			public char16[33] sztQueue;
			public char16[16] sztIPAddress;
			public uint8[540] Reserved;
			public uint32 dwPortNumber;
			public uint32 dwSNMPEnabled;
			public uint32 dwSNMPDevIndex;
		}
		[CRepr]
		public struct PORT_DATA_2
		{
			public char16[64] sztPortName;
			public uint32 dwVersion;
			public uint32 dwProtocol;
			public uint32 cbSize;
			public uint32 dwReserved;
			public char16[128] sztHostAddress;
			public char16[33] sztSNMPCommunity;
			public uint32 dwDoubleSpool;
			public char16[33] sztQueue;
			public uint8[514] Reserved;
			public uint32 dwPortNumber;
			public uint32 dwSNMPEnabled;
			public uint32 dwSNMPDevIndex;
			public uint32 dwPortMonitorMibIndex;
		}
		[CRepr]
		public struct PORT_DATA_LIST_1
		{
			public uint32 dwVersion;
			public uint32 cPortData;
			public PORT_DATA_2[0] pPortData;
		}
		[CRepr]
		public struct DELETE_PORT_DATA_1
		{
			public char16[64] psztPortName;
			public uint8[98] Reserved;
			public uint32 dwVersion;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct CONFIG_INFO_DATA_1
		{
			public uint8[128] Reserved;
			public uint32 dwVersion;
		}
		[CRepr]
		public struct BranchOfficeJobDataPrinted
		{
			public uint32 Status;
			public PWSTR pDocumentName;
			public PWSTR pUserName;
			public PWSTR pMachineName;
			public PWSTR pPrinterName;
			public PWSTR pPortName;
			public int64 Size;
			public uint32 TotalPages;
		}
		[CRepr]
		public struct BranchOfficeJobDataError
		{
			public uint32 LastError;
			public PWSTR pDocumentName;
			public PWSTR pUserName;
			public PWSTR pPrinterName;
			public PWSTR pDataType;
			public int64 TotalSize;
			public int64 PrintedSize;
			public uint32 TotalPages;
			public uint32 PrintedPages;
			public PWSTR pMachineName;
			public PWSTR pJobError;
			public PWSTR pErrorDescription;
		}
		[CRepr]
		public struct BranchOfficeJobDataRendered
		{
			public int64 Size;
			public uint32 ICMMethod;
			public int16 Color;
			public int16 PrintQuality;
			public int16 YResolution;
			public int16 Copies;
			public int16 TTOption;
		}
		[CRepr]
		public struct BranchOfficeJobDataPipelineFailed
		{
			public PWSTR pDocumentName;
			public PWSTR pPrinterName;
			public PWSTR pExtraErrorInfo;
		}
		[CRepr]
		public struct BranchOfficeLogOfflineFileFull
		{
			public PWSTR pMachineName;
		}
		[CRepr]
		public struct BranchOfficeJobData
		{
			public EBranchOfficeJobEventType eEventType;
			public uint32 JobId;
			public _JobInfo_e__Union JobInfo;
			
			[CRepr, Union]
			public struct _JobInfo_e__Union
			{
				public BranchOfficeJobDataPrinted LogJobPrinted;
				public BranchOfficeJobDataRendered LogJobRendered;
				public BranchOfficeJobDataError LogJobError;
				public BranchOfficeJobDataPipelineFailed LogPipelineFailed;
				public BranchOfficeLogOfflineFileFull LogOfflineFileFull;
			}
		}
		[CRepr]
		public struct BranchOfficeJobDataContainer
		{
			public uint32 cJobDataEntries;
			public BranchOfficeJobData[0] JobData;
		}
		[CRepr]
		public struct PRINTER_NOTIFY_INIT
		{
			public uint32 Size;
			public uint32 Reserved;
			public uint32 PollTime;
		}
		[CRepr]
		public struct SPLCLIENT_INFO_1
		{
			public uint32 dwSize;
			public PWSTR pMachineName;
			public PWSTR pUserName;
			public uint32 dwBuildNum;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint16 wProcessorArchitecture;
		}
		[CRepr]
		public struct _SPLCLIENT_INFO_2_V1
		{
			public uint hSplPrinter;
		}
		[CRepr]
		public struct _SPLCLIENT_INFO_2_V2
		{
			public uint64 hSplPrinter;
		}
		[CRepr]
		public struct _SPLCLIENT_INFO_2_V3
		{
			public uint64 hSplPrinter;
		}
		[CRepr]
		public struct SPLCLIENT_INFO_3_VISTA
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 dwSize;
			public PWSTR pMachineName;
			public PWSTR pUserName;
			public uint32 dwBuildNum;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint16 wProcessorArchitecture;
			public uint64 hSplPrinter;
		}
		[CRepr]
		public struct PRINTPROVIDOR
		{
			public int fpOpenPrinter;
			public int fpSetJob;
			public int fpGetJob;
			public int fpEnumJobs;
			public int fpAddPrinter;
			public int fpDeletePrinter;
			public int fpSetPrinter;
			public int fpGetPrinter;
			public int fpEnumPrinters;
			public int fpAddPrinterDriver;
			public int fpEnumPrinterDrivers;
			public int fpGetPrinterDriver;
			public int fpGetPrinterDriverDirectory;
			public int fpDeletePrinterDriver;
			public int fpAddPrintProcessor;
			public int fpEnumPrintProcessors;
			public int fpGetPrintProcessorDirectory;
			public int fpDeletePrintProcessor;
			public int fpEnumPrintProcessorDatatypes;
			public int fpStartDocPrinter;
			public int fpStartPagePrinter;
			public int fpWritePrinter;
			public int fpEndPagePrinter;
			public int fpAbortPrinter;
			public int fpReadPrinter;
			public int fpEndDocPrinter;
			public int fpAddJob;
			public int fpScheduleJob;
			public int fpGetPrinterData;
			public int fpSetPrinterData;
			public int fpWaitForPrinterChange;
			public int fpClosePrinter;
			public int fpAddForm;
			public int fpDeleteForm;
			public int fpGetForm;
			public int fpSetForm;
			public int fpEnumForms;
			public int fpEnumMonitors;
			public int fpEnumPorts;
			public int fpAddPort;
			public int fpConfigurePort;
			public int fpDeletePort;
			public int fpCreatePrinterIC;
			public int fpPlayGdiScriptOnPrinterIC;
			public int fpDeletePrinterIC;
			public int fpAddPrinterConnection;
			public int fpDeletePrinterConnection;
			public int fpPrinterMessageBox;
			public int fpAddMonitor;
			public int fpDeleteMonitor;
			public int fpResetPrinter;
			public int fpGetPrinterDriverEx;
			public int fpFindFirstPrinterChangeNotification;
			public int fpFindClosePrinterChangeNotification;
			public int fpAddPortEx;
			public int fpShutDown;
			public int fpRefreshPrinterChangeNotification;
			public int fpOpenPrinterEx;
			public int fpAddPrinterEx;
			public int fpSetPort;
			public int fpEnumPrinterData;
			public int fpDeletePrinterData;
			public int fpClusterSplOpen;
			public int fpClusterSplClose;
			public int fpClusterSplIsAlive;
			public int fpSetPrinterDataEx;
			public int fpGetPrinterDataEx;
			public int fpEnumPrinterDataEx;
			public int fpEnumPrinterKey;
			public int fpDeletePrinterDataEx;
			public int fpDeletePrinterKey;
			public int fpSeekPrinter;
			public int fpDeletePrinterDriverEx;
			public int fpAddPerMachineConnection;
			public int fpDeletePerMachineConnection;
			public int fpEnumPerMachineConnections;
			public int fpXcvData;
			public int fpAddPrinterDriverEx;
			public int fpSplReadPrinter;
			public int fpDriverUnloadComplete;
			public int fpGetSpoolFileInfo;
			public int fpCommitSpoolData;
			public int fpCloseSpoolFileHandle;
			public int fpFlushPrinter;
			public int fpSendRecvBidiData;
			public int fpAddPrinterConnection2;
			public int fpGetPrintClassObject;
			public int fpReportJobProcessingProgress;
			public int fpEnumAndLogProvidorObjects;
			public int fpInternalGetPrinterDriver;
			public int fpFindCompatibleDriver;
			public int fpGetJobNamedPropertyValue;
			public int fpSetJobNamedProperty;
			public int fpDeleteJobNamedProperty;
			public int fpEnumJobNamedProperties;
			public int fpPowerEvent;
			public int fpGetUserPropertyBag;
			public int fpCanShutdown;
			public int fpLogJobInfoForBranchOffice;
			public int fpRegeneratePrintDeviceCapabilities;
			public int fpPrintSupportOperation;
			public int fpIppCreateJobOnPrinter;
			public int fpIppGetJobAttributes;
			public int fpIppSetJobAttributes;
			public int fpIppGetPrinterAttributes;
			public int fpIppSetPrinterAttributes;
		}
		[CRepr]
		public struct PRINTPROCESSOROPENDATA
		{
			public DEVMODEA* pDevMode;
			public PWSTR pDatatype;
			public PWSTR pParameters;
			public PWSTR pDocumentName;
			public uint32 JobId;
			public PWSTR pOutputFile;
			public PWSTR pPrinterName;
		}
		[CRepr]
		public struct MONITORREG
		{
			public uint32 cbSize;
			public int fpCreateKey;
			public int fpOpenKey;
			public int fpCloseKey;
			public int fpDeleteKey;
			public int fpEnumKey;
			public int fpQueryInfoKey;
			public int fpSetValue;
			public int fpDeleteValue;
			public int fpEnumValue;
			public int fpQueryValue;
		}
		[CRepr]
		public struct MONITORINIT
		{
			public uint32 cbSize;
			public HANDLE hSpooler;
			public HKEY hckRegistryRoot;
			public MONITORREG* pMonitorReg;
			public BOOL bLocal;
			public PWSTR pszServerName;
		}
		[CRepr]
		public struct MONITOR
		{
			public int pfnEnumPorts;
			public int pfnOpenPort;
			public int pfnOpenPortEx;
			public int pfnStartDocPort;
			public int pfnWritePort;
			public int pfnReadPort;
			public int pfnEndDocPort;
			public int pfnClosePort;
			public int pfnAddPort;
			public int pfnAddPortEx;
			public int pfnConfigurePort;
			public int pfnDeletePort;
			public int pfnGetPrinterDataFromPort;
			public int pfnSetPortTimeOuts;
			public int pfnXcvOpenPort;
			public int pfnXcvDataPort;
			public int pfnXcvClosePort;
		}
		[CRepr]
		public struct MONITOREX
		{
			public uint32 dwMonitorSize;
			public MONITOR Monitor;
		}
		[CRepr]
		public struct MONITOR2
		{
			public uint32 cbSize;
			public int pfnEnumPorts;
			public int pfnOpenPort;
			public int pfnOpenPortEx;
			public int pfnStartDocPort;
			public int pfnWritePort;
			public int pfnReadPort;
			public int pfnEndDocPort;
			public int pfnClosePort;
			public int pfnAddPort;
			public int pfnAddPortEx;
			public int pfnConfigurePort;
			public int pfnDeletePort;
			public int pfnGetPrinterDataFromPort;
			public int pfnSetPortTimeOuts;
			public int pfnXcvOpenPort;
			public int pfnXcvDataPort;
			public int pfnXcvClosePort;
			public int pfnShutdown;
			public int pfnSendRecvBidiDataFromPort;
			public int pfnNotifyUsedPorts;
			public int pfnNotifyUnusedPorts;
			public int pfnPowerEvent;
		}
		[CRepr]
		public struct MONITORUI
		{
			public uint32 dwMonitorUISize;
			public int pfnAddPortUI;
			public int pfnConfigurePortUI;
			public int pfnDeletePortUI;
		}
		[CRepr]
		public struct NOTIFICATION_CONFIG_1
		{
			public uint32 cbSize;
			public uint32 fdwFlags;
			public ROUTER_NOTIFY_CALLBACK pfnNotifyCallback;
			public void* pContext;
		}
		[CRepr]
		public struct MESSAGEBOX_PARAMS
		{
			public uint32 cbSize;
			public PWSTR pTitle;
			public PWSTR pMessage;
			public uint32 Style;
			public uint32 dwTimeout;
			public BOOL bWait;
		}
		[CRepr]
		public struct SHOWUIPARAMS
		{
			public UI_TYPE UIType;
			public MESSAGEBOX_PARAMS MessageBoxParams;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_BidiRequest = .(0xb9162a23, 0x45f9, 0x47cc, 0x80, 0xf5, 0xfe, 0x0f, 0xe9, 0xb9, 0xe1, 0xa2);
		public const Guid CLSID_BidiRequestContainer = .(0xfc5b8a24, 0xdb05, 0x4a01, 0x83, 0x88, 0x22, 0xed, 0xf6, 0xc2, 0xbb, 0xba);
		public const Guid CLSID_BidiSpl = .(0x2a614240, 0xa4c5, 0x4c33, 0xbd, 0x87, 0x1b, 0xc7, 0x09, 0x33, 0x16, 0x39);
		public const Guid CLSID_PrinterQueue = .(0xeb54c230, 0x798c, 0x4c9e, 0xb4, 0x61, 0x29, 0xfa, 0xd0, 0x40, 0x39, 0xb1);
		public const Guid CLSID_PrinterQueueView = .(0xeb54c231, 0x798c, 0x4c9e, 0xb4, 0x61, 0x29, 0xfa, 0xd0, 0x40, 0x39, 0xb1);
		public const Guid CLSID_PrintSchemaAsyncOperation = .(0x43b2f83d, 0x10f2, 0x48ab, 0x83, 0x1b, 0x55, 0xfd, 0xbd, 0xbd, 0x34, 0xa4);
		public const Guid CLSID_PrinterExtensionManager = .(0x331b60da, 0x9e90, 0x4dd0, 0x9c, 0x84, 0xea, 0xc4, 0xe6, 0x59, 0xb6, 0x1f);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IPrintCoreHelper : IUnknown
		{
			public const new Guid IID = .(0xa89ec53e, 0x3905, 0x49c6, 0x9c, 0x1a, 0xc0, 0xa8, 0x81, 0x17, 0xfd, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOption(DEVMODEA* pDevmode, uint32 cbSize, PSTR pszFeatureRequested, out PSTR ppszOption) mut => VT.GetOption(ref this, pDevmode, cbSize, pszFeatureRequested, out ppszOption);
			public HRESULT SetOptions(out DEVMODEA pDevmode, uint32 cbSize, BOOL bResolveConflicts, in PRINT_FEATURE_OPTION pFOPairs, uint32 cPairs, out uint32 pcPairsWritten, out uint32 pdwResult) mut => VT.SetOptions(ref this, out pDevmode, cbSize, bResolveConflicts, pFOPairs, cPairs, out pcPairsWritten, out pdwResult);
			public HRESULT EnumConstrainedOptions(in DEVMODEA pDevmode, uint32 cbSize, PSTR pszFeatureKeyword, out PSTR** pConstrainedOptionList, out uint32 pdwNumOptions) mut => VT.EnumConstrainedOptions(ref this, pDevmode, cbSize, pszFeatureKeyword, out pConstrainedOptionList, out pdwNumOptions);
			public HRESULT WhyConstrained(DEVMODEA* pDevmode, uint32 cbSize, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, out PRINT_FEATURE_OPTION* ppFOConstraints, out uint32 pdwNumOptions) mut => VT.WhyConstrained(ref this, pDevmode, cbSize, pszFeatureKeyword, pszOptionKeyword, out ppFOConstraints, out pdwNumOptions);
			public HRESULT EnumFeatures(out PSTR** pFeatureList, out uint32 pdwNumFeatures) mut => VT.EnumFeatures(ref this, out pFeatureList, out pdwNumFeatures);
			public HRESULT EnumOptions(PSTR pszFeatureKeyword, out PSTR** pOptionList, out uint32 pdwNumOptions) mut => VT.EnumOptions(ref this, pszFeatureKeyword, out pOptionList, out pdwNumOptions);
			public HRESULT GetFontSubstitution(PWSTR pszTrueTypeFontName, out PWSTR ppszDevFontName) mut => VT.GetFontSubstitution(ref this, pszTrueTypeFontName, out ppszDevFontName);
			public HRESULT SetFontSubstitution(PWSTR pszTrueTypeFontName, PWSTR pszDevFontName) mut => VT.SetFontSubstitution(ref this, pszTrueTypeFontName, pszDevFontName);
			public HRESULT CreateInstanceOfMSXMLObject(in Guid rclsid, ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid riid, void** ppv) mut => VT.CreateInstanceOfMSXMLObject(ref this, rclsid, ref pUnkOuter, dwClsContext, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, DEVMODEA* pDevmode, uint32 cbSize, PSTR pszFeatureRequested, out PSTR ppszOption) GetOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, out DEVMODEA pDevmode, uint32 cbSize, BOOL bResolveConflicts, in PRINT_FEATURE_OPTION pFOPairs, uint32 cPairs, out uint32 pcPairsWritten, out uint32 pdwResult) SetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, in DEVMODEA pDevmode, uint32 cbSize, PSTR pszFeatureKeyword, out PSTR** pConstrainedOptionList, out uint32 pdwNumOptions) EnumConstrainedOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, DEVMODEA* pDevmode, uint32 cbSize, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, out PRINT_FEATURE_OPTION* ppFOConstraints, out uint32 pdwNumOptions) WhyConstrained;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, out PSTR** pFeatureList, out uint32 pdwNumFeatures) EnumFeatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, PSTR pszFeatureKeyword, out PSTR** pOptionList, out uint32 pdwNumOptions) EnumOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, PWSTR pszTrueTypeFontName, out PWSTR ppszDevFontName) GetFontSubstitution;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, PWSTR pszTrueTypeFontName, PWSTR pszDevFontName) SetFontSubstitution;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelper self, in Guid rclsid, ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid riid, void** ppv) CreateInstanceOfMSXMLObject;
			}
		}
		[CRepr]
		public struct IPrintCoreHelperUni : IPrintCoreHelper
		{
			public const new Guid IID = .(0x7e8e51d6, 0xe5ee, 0x4426, 0x81, 0x7b, 0x95, 0x8b, 0x94, 0x44, 0xeb, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateGDLSnapshot(out DEVMODEA pDevmode, uint32 cbSize, uint32 dwFlags, out IStream* ppSnapshotStream) mut => VT.CreateGDLSnapshot(ref this, out pDevmode, cbSize, dwFlags, out ppSnapshotStream);
			public HRESULT CreateDefaultGDLSnapshot(uint32 dwFlags, out IStream* ppSnapshotStream) mut => VT.CreateDefaultGDLSnapshot(ref this, dwFlags, out ppSnapshotStream);

			[CRepr]
			public struct VTable : IPrintCoreHelper.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperUni self, out DEVMODEA pDevmode, uint32 cbSize, uint32 dwFlags, out IStream* ppSnapshotStream) CreateGDLSnapshot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperUni self, uint32 dwFlags, out IStream* ppSnapshotStream) CreateDefaultGDLSnapshot;
			}
		}
		[CRepr]
		public struct IPrintCoreHelperUni2 : IPrintCoreHelperUni
		{
			public const new Guid IID = .(0x6c8afdfc, 0xead0, 0x4d2d, 0x80, 0x71, 0x9b, 0xf0, 0x17, 0x5a, 0x6c, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNamedCommand(DEVMODEA* pDevmode, uint32 cbSize, PWSTR pszCommandName, out uint8* ppCommandBytes, out uint32 pcbCommandSize) mut => VT.GetNamedCommand(ref this, pDevmode, cbSize, pszCommandName, out ppCommandBytes, out pcbCommandSize);

			[CRepr]
			public struct VTable : IPrintCoreHelperUni.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperUni2 self, DEVMODEA* pDevmode, uint32 cbSize, PWSTR pszCommandName, out uint8* ppCommandBytes, out uint32 pcbCommandSize) GetNamedCommand;
			}
		}
		[CRepr]
		public struct IPrintCoreHelperPS : IPrintCoreHelper
		{
			public const new Guid IID = .(0xc2c14f6f, 0x95d3, 0x4d63, 0x96, 0xcf, 0x6b, 0xd9, 0xe6, 0xc9, 0x07, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGlobalAttribute(PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) mut => VT.GetGlobalAttribute(ref this, pszAttribute, out pdwDataType, out ppbData, out pcbSize);
			public HRESULT GetFeatureAttribute(PSTR pszFeatureKeyword, PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) mut => VT.GetFeatureAttribute(ref this, pszFeatureKeyword, pszAttribute, out pdwDataType, out ppbData, out pcbSize);
			public HRESULT GetOptionAttribute(PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) mut => VT.GetOptionAttribute(ref this, pszFeatureKeyword, pszOptionKeyword, pszAttribute, out pdwDataType, out ppbData, out pcbSize);

			[CRepr]
			public struct VTable : IPrintCoreHelper.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperPS self, PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) GetGlobalAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperPS self, PSTR pszFeatureKeyword, PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) GetFeatureAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreHelperPS self, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pszAttribute, out uint32 pdwDataType, out uint8* ppbData, out uint32 pcbSize) GetOptionAttribute;
			}
		}
		[CRepr]
		public struct IPrintOemCommon : IUnknown
		{
			public const new Guid IID = .(0x7f42285e, 0x91d5, 0x11d1, 0x88, 0x20, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfo(uint32 dwMode, void* pBuffer, uint32 cbSize, out uint32 pcbNeeded) mut => VT.GetInfo(ref this, dwMode, pBuffer, cbSize, out pcbNeeded);
			public HRESULT DevMode(uint32 dwMode, out OEMDMPARAM pOemDMParam) mut => VT.DevMode(ref this, dwMode, out pOemDMParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemCommon self, uint32 dwMode, void* pBuffer, uint32 cbSize, out uint32 pcbNeeded) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemCommon self, uint32 dwMode, out OEMDMPARAM pOemDMParam) DevMode;
			}
		}
		[CRepr]
		public struct IPrintOemUI : IPrintOemCommon
		{
			public const new Guid IID = .(0xc6a7a9d0, 0x774c, 0x11d1, 0x94, 0x7f, 0x00, 0xa0, 0xc9, 0x06, 0x40, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PublishDriverInterface(ref IUnknown pIUnknown) mut => VT.PublishDriverInterface(ref this, ref pIUnknown);
			public HRESULT CommonUIProp(uint32 dwMode, ref OEMCUIPPARAM pOemCUIPParam) mut => VT.CommonUIProp(ref this, dwMode, ref pOemCUIPParam);
			public HRESULT DocumentPropertySheets(out PROPSHEETUI_INFO pPSUIInfo, LPARAM lParam) mut => VT.DocumentPropertySheets(ref this, out pPSUIInfo, lParam);
			public HRESULT DevicePropertySheets(ref PROPSHEETUI_INFO pPSUIInfo, LPARAM lParam) mut => VT.DevicePropertySheets(ref this, ref pPSUIInfo, lParam);
			public HRESULT DevQueryPrintEx(ref OEMUIOBJ poemuiobj, ref DEVQUERYPRINT_INFO pDQPInfo, ref DEVMODEA pPublicDM, void* pOEMDM) mut => VT.DevQueryPrintEx(ref this, ref poemuiobj, ref pDQPInfo, ref pPublicDM, pOEMDM);
			public HRESULT DeviceCapabilitiesA(out OEMUIOBJ poemuiobj, HANDLE hPrinter, PWSTR pDeviceName, uint16 wCapability, void* pOutput, ref DEVMODEA pPublicDM, void* pOEMDM, uint32 dwOld, out uint32 dwResult) mut => VT.DeviceCapabilitiesA(ref this, out poemuiobj, hPrinter, pDeviceName, wCapability, pOutput, ref pPublicDM, pOEMDM, dwOld, out dwResult);
			public HRESULT UpgradePrinter(uint32 dwLevel, ref uint8 pDriverUpgradeInfo) mut => VT.UpgradePrinter(ref this, dwLevel, ref pDriverUpgradeInfo);
			public HRESULT PrinterEvent(PWSTR pPrinterName, int32 iDriverEvent, uint32 dwFlags, LPARAM lParam) mut => VT.PrinterEvent(ref this, pPrinterName, iDriverEvent, dwFlags, lParam);
			public HRESULT DriverEvent(uint32 dwDriverEvent, uint32 dwLevel, ref uint8 pDriverInfo, LPARAM lParam) mut => VT.DriverEvent(ref this, dwDriverEvent, dwLevel, ref pDriverInfo, lParam);
			public HRESULT QueryColorProfile(HANDLE hPrinter, ref OEMUIOBJ poemuiobj, ref DEVMODEA pPublicDM, void* pOEMDM, uint32 ulQueryMode, void* pvProfileData, out uint32 pcbProfileData, out uint32 pflProfileData) mut => VT.QueryColorProfile(ref this, hPrinter, ref poemuiobj, ref pPublicDM, pOEMDM, ulQueryMode, pvProfileData, out pcbProfileData, out pflProfileData);
			public HRESULT FontInstallerDlgProc(HWND hWnd, uint32 usMsg, WPARAM wParam, LPARAM lParam) mut => VT.FontInstallerDlgProc(ref this, hWnd, usMsg, wParam, lParam);
			public HRESULT UpdateExternalFonts(HANDLE hPrinter, HANDLE hHeap, PWSTR pwstrCartridges) mut => VT.UpdateExternalFonts(ref this, hPrinter, hHeap, pwstrCartridges);

			[CRepr]
			public struct VTable : IPrintOemCommon.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, ref IUnknown pIUnknown) PublishDriverInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, uint32 dwMode, ref OEMCUIPPARAM pOemCUIPParam) CommonUIProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, out PROPSHEETUI_INFO pPSUIInfo, LPARAM lParam) DocumentPropertySheets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, ref PROPSHEETUI_INFO pPSUIInfo, LPARAM lParam) DevicePropertySheets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, ref OEMUIOBJ poemuiobj, ref DEVQUERYPRINT_INFO pDQPInfo, ref DEVMODEA pPublicDM, void* pOEMDM) DevQueryPrintEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, out OEMUIOBJ poemuiobj, HANDLE hPrinter, PWSTR pDeviceName, uint16 wCapability, void* pOutput, ref DEVMODEA pPublicDM, void* pOEMDM, uint32 dwOld, out uint32 dwResult) DeviceCapabilitiesA;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, uint32 dwLevel, ref uint8 pDriverUpgradeInfo) UpgradePrinter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, PWSTR pPrinterName, int32 iDriverEvent, uint32 dwFlags, LPARAM lParam) PrinterEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, uint32 dwDriverEvent, uint32 dwLevel, ref uint8 pDriverInfo, LPARAM lParam) DriverEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, HANDLE hPrinter, ref OEMUIOBJ poemuiobj, ref DEVMODEA pPublicDM, void* pOEMDM, uint32 ulQueryMode, void* pvProfileData, out uint32 pcbProfileData, out uint32 pflProfileData) QueryColorProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, HWND hWnd, uint32 usMsg, WPARAM wParam, LPARAM lParam) FontInstallerDlgProc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI self, HANDLE hPrinter, HANDLE hHeap, PWSTR pwstrCartridges) UpdateExternalFonts;
			}
		}
		[CRepr]
		public struct IPrintOemUI2 : IPrintOemUI
		{
			public const new Guid IID = .(0x292515f9, 0xb54b, 0x489b, 0x92, 0x75, 0xba, 0xb5, 0x68, 0x21, 0x39, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryJobAttributes(HANDLE hPrinter, ref DEVMODEA pDevmode, uint32 dwLevel, ref uint8 lpAttributeInfo) mut => VT.QueryJobAttributes(ref this, hPrinter, ref pDevmode, dwLevel, ref lpAttributeInfo);
			public HRESULT HideStandardUI(uint32 dwMode) mut => VT.HideStandardUI(ref this, dwMode);
			public HRESULT DocumentEvent(HANDLE hPrinter, HDC hdc, int32 iEsc, uint32 cbIn, void* pvIn, uint32 cbOut, void* pvOut, out int32 piResult) mut => VT.DocumentEvent(ref this, hPrinter, hdc, iEsc, cbIn, pvIn, cbOut, pvOut, out piResult);

			[CRepr]
			public struct VTable : IPrintOemUI.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI2 self, HANDLE hPrinter, ref DEVMODEA pDevmode, uint32 dwLevel, ref uint8 lpAttributeInfo) QueryJobAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI2 self, uint32 dwMode) HideStandardUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUI2 self, HANDLE hPrinter, HDC hdc, int32 iEsc, uint32 cbIn, void* pvIn, uint32 cbOut, void* pvOut, out int32 piResult) DocumentEvent;
			}
		}
		[CRepr]
		public struct IPrintOemUIMXDC : IUnknown
		{
			public const new Guid IID = .(0x7349d725, 0xe2c1, 0x4dca, 0xaf, 0xb5, 0xc1, 0x3e, 0x91, 0xbc, 0x93, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdjustImageableArea(HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out RECTL prclImageableArea) mut => VT.AdjustImageableArea(ref this, hPrinter, cbDevMode, pDevMode, cbOEMDM, pOEMDM, out prclImageableArea);
			public HRESULT AdjustImageCompression(HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out int32 pCompressionMode) mut => VT.AdjustImageCompression(ref this, hPrinter, cbDevMode, pDevMode, cbOEMDM, pOEMDM, out pCompressionMode);
			public HRESULT AdjustDPI(HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out int32 pDPI) mut => VT.AdjustDPI(ref this, hPrinter, cbDevMode, pDevMode, cbOEMDM, pOEMDM, out pDPI);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUIMXDC self, HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out RECTL prclImageableArea) AdjustImageableArea;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUIMXDC self, HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out int32 pCompressionMode) AdjustImageCompression;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemUIMXDC self, HANDLE hPrinter, uint32 cbDevMode, in DEVMODEA pDevMode, uint32 cbOEMDM, void* pOEMDM, out int32 pDPI) AdjustDPI;
			}
		}
		[CRepr]
		public struct IPrintOemDriverUI : IUnknown
		{
			public const new Guid IID = .(0x92b05d50, 0x78bc, 0x11d1, 0x94, 0x80, 0x00, 0xa0, 0xc9, 0x06, 0x40, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DrvGetDriverSetting(void* pci, PSTR Feature, void* pOutput, uint32 cbSize, out uint32 pcbNeeded, out uint32 pdwOptionsReturned) mut => VT.DrvGetDriverSetting(ref this, pci, Feature, pOutput, cbSize, out pcbNeeded, out pdwOptionsReturned);
			public HRESULT DrvUpgradeRegistrySetting(HANDLE hPrinter, PSTR pFeature, PSTR pOption) mut => VT.DrvUpgradeRegistrySetting(ref this, hPrinter, pFeature, pOption);
			public HRESULT DrvUpdateUISetting(void* pci, void* pOptItem, uint32 dwPreviousSelection, uint32 dwMode) mut => VT.DrvUpdateUISetting(ref this, pci, pOptItem, dwPreviousSelection, dwMode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemDriverUI self, void* pci, PSTR Feature, void* pOutput, uint32 cbSize, out uint32 pcbNeeded, out uint32 pdwOptionsReturned) DrvGetDriverSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemDriverUI self, HANDLE hPrinter, PSTR pFeature, PSTR pOption) DrvUpgradeRegistrySetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintOemDriverUI self, void* pci, void* pOptItem, uint32 dwPreviousSelection, uint32 dwMode) DrvUpdateUISetting;
			}
		}
		[CRepr]
		public struct IPrintCoreUI2 : IPrintOemDriverUI
		{
			public const new Guid IID = .(0x085ccfca, 0x3adf, 0x4c9e, 0xb4, 0x91, 0xd8, 0x51, 0xa6, 0xed, 0xc9, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOptions(ref OEMUIOBJ poemuiobj, uint32 dwFlags, int8* pmszFeaturesRequested, uint32 cbIn, PSTR pmszFeatureOptionBuf, uint32 cbSize, out uint32 pcbNeeded) mut => VT.GetOptions(ref this, ref poemuiobj, dwFlags, pmszFeaturesRequested, cbIn, pmszFeatureOptionBuf, cbSize, out pcbNeeded);
			public HRESULT SetOptions(ref OEMUIOBJ poemuiobj, uint32 dwFlags, ref int8 pmszFeatureOptionBuf, uint32 cbIn, out uint32 pdwResult) mut => VT.SetOptions(ref this, ref poemuiobj, dwFlags, ref pmszFeatureOptionBuf, cbIn, out pdwResult);
			public HRESULT EnumConstrainedOptions(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pmszConstrainedOptionList, uint32 cbSize, out uint32 pcbNeeded) mut => VT.EnumConstrainedOptions(ref this, ref poemuiobj, dwFlags, pszFeatureKeyword, pmszConstrainedOptionList, cbSize, out pcbNeeded);
			public HRESULT WhyConstrained(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pmszReasonList, uint32 cbSize, out uint32 pcbNeeded) mut => VT.WhyConstrained(ref this, ref poemuiobj, dwFlags, pszFeatureKeyword, pszOptionKeyword, pmszReasonList, cbSize, out pcbNeeded);
			public HRESULT GetGlobalAttribute(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) mut => VT.GetGlobalAttribute(ref this, ref poemuiobj, dwFlags, pszAttribute, out pdwDataType, pbData, cbSize, out pcbNeeded);
			public HRESULT GetFeatureAttribute(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) mut => VT.GetFeatureAttribute(ref this, ref poemuiobj, dwFlags, pszFeatureKeyword, pszAttribute, out pdwDataType, pbData, cbSize, out pcbNeeded);
			public HRESULT GetOptionAttribute(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) mut => VT.GetOptionAttribute(ref this, ref poemuiobj, dwFlags, pszFeatureKeyword, pszOptionKeyword, pszAttribute, out pdwDataType, pbData, cbSize, out pcbNeeded);
			public HRESULT EnumFeatures(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pmszFeatureList, uint32 cbSize, out uint32 pcbNeeded) mut => VT.EnumFeatures(ref this, ref poemuiobj, dwFlags, pmszFeatureList, cbSize, out pcbNeeded);
			public HRESULT EnumOptions(ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pmszOptionList, uint32 cbSize, out uint32 pcbNeeded) mut => VT.EnumOptions(ref this, ref poemuiobj, dwFlags, pszFeatureKeyword, pmszOptionList, cbSize, out pcbNeeded);
			public HRESULT QuerySimulationSupport(HANDLE hPrinter, uint32 dwLevel, uint8* pCaps, uint32 cbSize, out uint32 pcbNeeded) mut => VT.QuerySimulationSupport(ref this, hPrinter, dwLevel, pCaps, cbSize, out pcbNeeded);

			[CRepr]
			public struct VTable : IPrintOemDriverUI.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, int8* pmszFeaturesRequested, uint32 cbIn, PSTR pmszFeatureOptionBuf, uint32 cbSize, out uint32 pcbNeeded) GetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, ref int8 pmszFeatureOptionBuf, uint32 cbIn, out uint32 pdwResult) SetOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pmszConstrainedOptionList, uint32 cbSize, out uint32 pcbNeeded) EnumConstrainedOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pmszReasonList, uint32 cbSize, out uint32 pcbNeeded) WhyConstrained;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) GetGlobalAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) GetFeatureAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pszOptionKeyword, PSTR pszAttribute, out uint32 pdwDataType, uint8* pbData, uint32 cbSize, out uint32 pcbNeeded) GetOptionAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pmszFeatureList, uint32 cbSize, out uint32 pcbNeeded) EnumFeatures;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, ref OEMUIOBJ poemuiobj, uint32 dwFlags, PSTR pszFeatureKeyword, PSTR pmszOptionList, uint32 cbSize, out uint32 pcbNeeded) EnumOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintCoreUI2 self, HANDLE hPrinter, uint32 dwLevel, uint8* pCaps, uint32 cbSize, out uint32 pcbNeeded) QuerySimulationSupport;
			}
		}
		[CRepr]
		public struct IPrintTicketProvider : IUnknown
		{
			public const new Guid IID = .(0xbb5116db, 0x0a23, 0x4c3a, 0xa6, 0xb6, 0x89, 0xe5, 0x55, 0x8d, 0xfb, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedVersions(HANDLE hPrinter, out int32* ppVersions, out int32 cVersions) mut => VT.GetSupportedVersions(ref this, hPrinter, out ppVersions, out cVersions);
			public HRESULT BindPrinter(HANDLE hPrinter, int32 version, out SHIMOPTS pOptions, out uint32 pDevModeFlags, out int32 cNamespaces, out BSTR* ppNamespaces) mut => VT.BindPrinter(ref this, hPrinter, version, out pOptions, out pDevModeFlags, out cNamespaces, out ppNamespaces);
			public HRESULT QueryDeviceNamespace(out BSTR pDefaultNamespace) mut => VT.QueryDeviceNamespace(ref this, out pDefaultNamespace);
			public HRESULT ConvertPrintTicketToDevMode(ref IXMLDOMDocument2 pPrintTicket, uint32 cbDevmodeIn, out DEVMODEA pDevmodeIn, out uint32 pcbDevmodeOut, out DEVMODEA* ppDevmodeOut) mut => VT.ConvertPrintTicketToDevMode(ref this, ref pPrintTicket, cbDevmodeIn, out pDevmodeIn, out pcbDevmodeOut, out ppDevmodeOut);
			public HRESULT ConvertDevModeToPrintTicket(uint32 cbDevmode, out DEVMODEA pDevmode, ref IXMLDOMDocument2 pPrintTicket) mut => VT.ConvertDevModeToPrintTicket(ref this, cbDevmode, out pDevmode, ref pPrintTicket);
			public HRESULT GetPrintCapabilities(ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppCapabilities) mut => VT.GetPrintCapabilities(ref this, ref pPrintTicket, out ppCapabilities);
			public HRESULT ValidatePrintTicket(ref IXMLDOMDocument2 pBaseTicket) mut => VT.ValidatePrintTicket(ref this, ref pBaseTicket);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, HANDLE hPrinter, out int32* ppVersions, out int32 cVersions) GetSupportedVersions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, HANDLE hPrinter, int32 version, out SHIMOPTS pOptions, out uint32 pDevModeFlags, out int32 cNamespaces, out BSTR* ppNamespaces) BindPrinter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, out BSTR pDefaultNamespace) QueryDeviceNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, ref IXMLDOMDocument2 pPrintTicket, uint32 cbDevmodeIn, out DEVMODEA pDevmodeIn, out uint32 pcbDevmodeOut, out DEVMODEA* ppDevmodeOut) ConvertPrintTicketToDevMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, uint32 cbDevmode, out DEVMODEA pDevmode, ref IXMLDOMDocument2 pPrintTicket) ConvertDevModeToPrintTicket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppCapabilities) GetPrintCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider self, ref IXMLDOMDocument2 pBaseTicket) ValidatePrintTicket;
			}
		}
		[CRepr]
		public struct IPrintTicketProvider2 : IPrintTicketProvider
		{
			public const new Guid IID = .(0xb8a70ab2, 0x3dfc, 0x4fec, 0xa0, 0x74, 0x51, 0x1b, 0x13, 0xc6, 0x51, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrintDeviceCapabilities(ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppDeviceCapabilities) mut => VT.GetPrintDeviceCapabilities(ref this, ref pPrintTicket, out ppDeviceCapabilities);
			public HRESULT GetPrintDeviceResources(PWSTR pszLocaleName, ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppDeviceResources) mut => VT.GetPrintDeviceResources(ref this, pszLocaleName, ref pPrintTicket, out ppDeviceResources);

			[CRepr]
			public struct VTable : IPrintTicketProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider2 self, ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppDeviceCapabilities) GetPrintDeviceCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintTicketProvider2 self, PWSTR pszLocaleName, ref IXMLDOMDocument2 pPrintTicket, out IXMLDOMDocument2* ppDeviceResources) GetPrintDeviceResources;
			}
		}
		[CRepr]
		public struct IPrintSchemaElement : IDispatch
		{
			public const new Guid IID = .(0x724c1646, 0xe64b, 0x4bbf, 0x8e, 0xb4, 0xd4, 0x5e, 0x4f, 0xd5, 0x80, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_XmlNode(out IUnknown* ppXmlNode) mut => VT.get_XmlNode(ref this, out ppXmlNode);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_NamespaceUri(out BSTR pbstrNamespaceUri) mut => VT.get_NamespaceUri(ref this, out pbstrNamespaceUri);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaElement self, out IUnknown* ppXmlNode) get_XmlNode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaElement self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaElement self, out BSTR pbstrNamespaceUri) get_NamespaceUri;
			}
		}
		[CRepr]
		public struct IPrintSchemaDisplayableElement : IPrintSchemaElement
		{
			public const new Guid IID = .(0xaf45af49, 0xd6aa, 0x407d, 0xbf, 0x87, 0x39, 0x12, 0x23, 0x6e, 0x9d, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DisplayName(out BSTR pbstrDisplayName) mut => VT.get_DisplayName(ref this, out pbstrDisplayName);

			[CRepr]
			public struct VTable : IPrintSchemaElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaDisplayableElement self, out BSTR pbstrDisplayName) get_DisplayName;
			}
		}
		[CRepr]
		public struct IPrintSchemaOption : IPrintSchemaDisplayableElement
		{
			public const new Guid IID = .(0x66bb2f51, 0x5844, 0x4997, 0x8d, 0x70, 0x4b, 0x7c, 0xc2, 0x21, 0xcf, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Selected(out BOOL pbIsSelected) mut => VT.get_Selected(ref this, out pbIsSelected);
			public HRESULT get_Constrained(out PrintSchemaConstrainedSetting pSetting) mut => VT.get_Constrained(ref this, out pSetting);
			public HRESULT GetPropertyValue(BSTR bstrName, BSTR bstrNamespaceUri, out IUnknown* ppXmlValueNode) mut => VT.GetPropertyValue(ref this, bstrName, bstrNamespaceUri, out ppXmlValueNode);

			[CRepr]
			public struct VTable : IPrintSchemaDisplayableElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOption self, out BOOL pbIsSelected) get_Selected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOption self, out PrintSchemaConstrainedSetting pSetting) get_Constrained;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOption self, BSTR bstrName, BSTR bstrNamespaceUri, out IUnknown* ppXmlValueNode) GetPropertyValue;
			}
		}
		[CRepr]
		public struct IPrintSchemaPageMediaSizeOption : IPrintSchemaOption
		{
			public const new Guid IID = .(0x68746729, 0xf493, 0x4830, 0xa1, 0x0f, 0x69, 0x02, 0x87, 0x74, 0x60, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WidthInMicrons(out uint32 pulWidth) mut => VT.get_WidthInMicrons(ref this, out pulWidth);
			public HRESULT get_HeightInMicrons(out uint32 pulHeight) mut => VT.get_HeightInMicrons(ref this, out pulHeight);

			[CRepr]
			public struct VTable : IPrintSchemaOption.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageMediaSizeOption self, out uint32 pulWidth) get_WidthInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageMediaSizeOption self, out uint32 pulHeight) get_HeightInMicrons;
			}
		}
		[CRepr]
		public struct IPrintSchemaNUpOption : IPrintSchemaOption
		{
			public const new Guid IID = .(0x1f6342f2, 0xd848, 0x42e3, 0x89, 0x95, 0xc1, 0x0a, 0x9e, 0xf9, 0xa3, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PagesPerSheet(out uint32 pulPagesPerSheet) mut => VT.get_PagesPerSheet(ref this, out pulPagesPerSheet);

			[CRepr]
			public struct VTable : IPrintSchemaOption.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaNUpOption self, out uint32 pulPagesPerSheet) get_PagesPerSheet;
			}
		}
		[CRepr]
		public struct IPrintSchemaOptionCollection : IDispatch
		{
			public const new Guid IID = .(0xbaecb0bd, 0xa946, 0x4771, 0xbc, 0x30, 0xe8, 0xb2, 0x4f, 0x8d, 0x45, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out uint32 pulCount) mut => VT.get_Count(ref this, out pulCount);
			public HRESULT GetAt(uint32 ulIndex, out IPrintSchemaOption* ppOption) mut => VT.GetAt(ref this, ulIndex, out ppOption);
			public HRESULT get__NewEnum(out IUnknown* ppUnk) mut => VT.get__NewEnum(ref this, out ppUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOptionCollection self, out uint32 pulCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOptionCollection self, uint32 ulIndex, out IPrintSchemaOption* ppOption) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaOptionCollection self, out IUnknown* ppUnk) get__NewEnum;
			}
		}
		[CRepr]
		public struct IPrintSchemaFeature : IPrintSchemaDisplayableElement
		{
			public const new Guid IID = .(0xef189461, 0x5d62, 0x4626, 0x8e, 0x57, 0xff, 0x83, 0x58, 0x3c, 0x48, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SelectedOption(out IPrintSchemaOption* ppOption) mut => VT.get_SelectedOption(ref this, out ppOption);
			public HRESULT put_SelectedOption(ref IPrintSchemaOption pOption) mut => VT.put_SelectedOption(ref this, ref pOption);
			public HRESULT get_SelectionType(out PrintSchemaSelectionType pSelectionType) mut => VT.get_SelectionType(ref this, out pSelectionType);
			public HRESULT GetOption(BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaOption* ppOption) mut => VT.GetOption(ref this, bstrName, bstrNamespaceUri, out ppOption);
			public HRESULT get_DisplayUI(out BOOL pbShow) mut => VT.get_DisplayUI(ref this, out pbShow);

			[CRepr]
			public struct VTable : IPrintSchemaDisplayableElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaFeature self, out IPrintSchemaOption* ppOption) get_SelectedOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaFeature self, ref IPrintSchemaOption pOption) put_SelectedOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaFeature self, out PrintSchemaSelectionType pSelectionType) get_SelectionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaFeature self, BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaOption* ppOption) GetOption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaFeature self, out BOOL pbShow) get_DisplayUI;
			}
		}
		[CRepr]
		public struct IPrintSchemaPageImageableSize : IPrintSchemaElement
		{
			public const new Guid IID = .(0x7c85bf5e, 0xdc7c, 0x4f61, 0x83, 0x9b, 0x41, 0x07, 0xe1, 0xc9, 0xb6, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ImageableSizeWidthInMicrons(out uint32 pulImageableSizeWidth) mut => VT.get_ImageableSizeWidthInMicrons(ref this, out pulImageableSizeWidth);
			public HRESULT get_ImageableSizeHeightInMicrons(out uint32 pulImageableSizeHeight) mut => VT.get_ImageableSizeHeightInMicrons(ref this, out pulImageableSizeHeight);
			public HRESULT get_OriginWidthInMicrons(out uint32 pulOriginWidth) mut => VT.get_OriginWidthInMicrons(ref this, out pulOriginWidth);
			public HRESULT get_OriginHeightInMicrons(out uint32 pulOriginHeight) mut => VT.get_OriginHeightInMicrons(ref this, out pulOriginHeight);
			public HRESULT get_ExtentWidthInMicrons(out uint32 pulExtentWidth) mut => VT.get_ExtentWidthInMicrons(ref this, out pulExtentWidth);
			public HRESULT get_ExtentHeightInMicrons(out uint32 pulExtentHeight) mut => VT.get_ExtentHeightInMicrons(ref this, out pulExtentHeight);

			[CRepr]
			public struct VTable : IPrintSchemaElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulImageableSizeWidth) get_ImageableSizeWidthInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulImageableSizeHeight) get_ImageableSizeHeightInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulOriginWidth) get_OriginWidthInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulOriginHeight) get_OriginHeightInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulExtentWidth) get_ExtentWidthInMicrons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaPageImageableSize self, out uint32 pulExtentHeight) get_ExtentHeightInMicrons;
			}
		}
		[CRepr]
		public struct IPrintSchemaParameterDefinition : IPrintSchemaDisplayableElement
		{
			public const new Guid IID = .(0xb5ade81e, 0x0e61, 0x4fe1, 0x81, 0xc6, 0xc3, 0x33, 0xe4, 0xff, 0xe0, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_UserInputRequired(out BOOL pbIsRequired) mut => VT.get_UserInputRequired(ref this, out pbIsRequired);
			public HRESULT get_UnitType(out BSTR pbstrUnitType) mut => VT.get_UnitType(ref this, out pbstrUnitType);
			public HRESULT get_DataType(out PrintSchemaParameterDataType pDataType) mut => VT.get_DataType(ref this, out pDataType);
			public HRESULT get_RangeMin(out int32 pRangeMin) mut => VT.get_RangeMin(ref this, out pRangeMin);
			public HRESULT get_RangeMax(out int32 pRangeMax) mut => VT.get_RangeMax(ref this, out pRangeMax);

			[CRepr]
			public struct VTable : IPrintSchemaDisplayableElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterDefinition self, out BOOL pbIsRequired) get_UserInputRequired;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterDefinition self, out BSTR pbstrUnitType) get_UnitType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterDefinition self, out PrintSchemaParameterDataType pDataType) get_DataType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterDefinition self, out int32 pRangeMin) get_RangeMin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterDefinition self, out int32 pRangeMax) get_RangeMax;
			}
		}
		[CRepr]
		public struct IPrintSchemaParameterInitializer : IPrintSchemaElement
		{
			public const new Guid IID = .(0x52027082, 0x0b74, 0x4648, 0x95, 0x64, 0x82, 0x8c, 0xc6, 0xcb, 0x65, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Value(out VARIANT pVar) mut => VT.get_Value(ref this, out pVar);
			public HRESULT put_Value(ref VARIANT pVar) mut => VT.put_Value(ref this, ref pVar);

			[CRepr]
			public struct VTable : IPrintSchemaElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterInitializer self, out VARIANT pVar) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaParameterInitializer self, ref VARIANT pVar) put_Value;
			}
		}
		[CRepr]
		public struct IPrintSchemaCapabilities : IPrintSchemaElement
		{
			public const new Guid IID = .(0x5a577640, 0x501d, 0x4927, 0xbc, 0xd0, 0x5e, 0xf5, 0x7a, 0x7e, 0xd1, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFeatureByKeyName(BSTR bstrKeyName, out IPrintSchemaFeature* ppFeature) mut => VT.GetFeatureByKeyName(ref this, bstrKeyName, out ppFeature);
			public HRESULT GetFeature(BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaFeature* ppFeature) mut => VT.GetFeature(ref this, bstrName, bstrNamespaceUri, out ppFeature);
			public HRESULT get_PageImageableSize(out IPrintSchemaPageImageableSize* ppPageImageableSize) mut => VT.get_PageImageableSize(ref this, out ppPageImageableSize);
			public HRESULT get_JobCopiesAllDocumentsMinValue(out uint32 pulJobCopiesAllDocumentsMinValue) mut => VT.get_JobCopiesAllDocumentsMinValue(ref this, out pulJobCopiesAllDocumentsMinValue);
			public HRESULT get_JobCopiesAllDocumentsMaxValue(out uint32 pulJobCopiesAllDocumentsMaxValue) mut => VT.get_JobCopiesAllDocumentsMaxValue(ref this, out pulJobCopiesAllDocumentsMaxValue);
			public HRESULT GetSelectedOptionInPrintTicket(ref IPrintSchemaFeature pFeature, out IPrintSchemaOption* ppOption) mut => VT.GetSelectedOptionInPrintTicket(ref this, ref pFeature, out ppOption);
			public HRESULT GetOptions(ref IPrintSchemaFeature pFeature, out IPrintSchemaOptionCollection* ppOptionCollection) mut => VT.GetOptions(ref this, ref pFeature, out ppOptionCollection);

			[CRepr]
			public struct VTable : IPrintSchemaElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, BSTR bstrKeyName, out IPrintSchemaFeature* ppFeature) GetFeatureByKeyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaFeature* ppFeature) GetFeature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, out IPrintSchemaPageImageableSize* ppPageImageableSize) get_PageImageableSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, out uint32 pulJobCopiesAllDocumentsMinValue) get_JobCopiesAllDocumentsMinValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, out uint32 pulJobCopiesAllDocumentsMaxValue) get_JobCopiesAllDocumentsMaxValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, ref IPrintSchemaFeature pFeature, out IPrintSchemaOption* ppOption) GetSelectedOptionInPrintTicket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities self, ref IPrintSchemaFeature pFeature, out IPrintSchemaOptionCollection* ppOptionCollection) GetOptions;
			}
		}
		[CRepr]
		public struct IPrintSchemaCapabilities2 : IPrintSchemaCapabilities
		{
			public const new Guid IID = .(0xb58845f4, 0x9970, 0x4d87, 0xa6, 0x36, 0x16, 0x9f, 0xb8, 0x2e, 0xd6, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParameterDefinition(BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaParameterDefinition* ppParameterDefinition) mut => VT.GetParameterDefinition(ref this, bstrName, bstrNamespaceUri, out ppParameterDefinition);

			[CRepr]
			public struct VTable : IPrintSchemaCapabilities.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaCapabilities2 self, BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaParameterDefinition* ppParameterDefinition) GetParameterDefinition;
			}
		}
		[CRepr]
		public struct IPrintSchemaAsyncOperation : IDispatch
		{
			public const new Guid IID = .(0x143c8dcb, 0xd37f, 0x47f7, 0x88, 0xe8, 0x6b, 0x1d, 0x21, 0xf2, 0xc5, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut => VT.Start(ref this);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaAsyncOperation self) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaAsyncOperation self) Cancel;
			}
		}
		[CRepr]
		public struct IPrintSchemaTicket : IPrintSchemaElement
		{
			public const new Guid IID = .(0xe480b861, 0x4708, 0x4e6d, 0xa5, 0xb4, 0xa2, 0xb4, 0xee, 0xb9, 0xba, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFeatureByKeyName(BSTR bstrKeyName, out IPrintSchemaFeature* ppFeature) mut => VT.GetFeatureByKeyName(ref this, bstrKeyName, out ppFeature);
			public HRESULT GetFeature(BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaFeature* ppFeature) mut => VT.GetFeature(ref this, bstrName, bstrNamespaceUri, out ppFeature);
			public HRESULT ValidateAsync(out IPrintSchemaAsyncOperation* ppAsyncOperation) mut => VT.ValidateAsync(ref this, out ppAsyncOperation);
			public HRESULT CommitAsync(ref IPrintSchemaTicket pPrintTicketCommit, out IPrintSchemaAsyncOperation* ppAsyncOperation) mut => VT.CommitAsync(ref this, ref pPrintTicketCommit, out ppAsyncOperation);
			public HRESULT NotifyXmlChanged() mut => VT.NotifyXmlChanged(ref this);
			public HRESULT GetCapabilities(out IPrintSchemaCapabilities* ppCapabilities) mut => VT.GetCapabilities(ref this, out ppCapabilities);
			public HRESULT get_JobCopiesAllDocuments(out uint32 pulJobCopiesAllDocuments) mut => VT.get_JobCopiesAllDocuments(ref this, out pulJobCopiesAllDocuments);
			public HRESULT put_JobCopiesAllDocuments(uint32 ulJobCopiesAllDocuments) mut => VT.put_JobCopiesAllDocuments(ref this, ulJobCopiesAllDocuments);

			[CRepr]
			public struct VTable : IPrintSchemaElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, BSTR bstrKeyName, out IPrintSchemaFeature* ppFeature) GetFeatureByKeyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaFeature* ppFeature) GetFeature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, out IPrintSchemaAsyncOperation* ppAsyncOperation) ValidateAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, ref IPrintSchemaTicket pPrintTicketCommit, out IPrintSchemaAsyncOperation* ppAsyncOperation) CommitAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self) NotifyXmlChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, out IPrintSchemaCapabilities* ppCapabilities) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, out uint32 pulJobCopiesAllDocuments) get_JobCopiesAllDocuments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket self, uint32 ulJobCopiesAllDocuments) put_JobCopiesAllDocuments;
			}
		}
		[CRepr]
		public struct IPrintSchemaTicket2 : IPrintSchemaTicket
		{
			public const new Guid IID = .(0x2ec1f844, 0x766a, 0x47a1, 0x91, 0xf4, 0x2e, 0xeb, 0x61, 0x90, 0xf8, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParameterInitializer(BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaParameterInitializer* ppParameterInitializer) mut => VT.GetParameterInitializer(ref this, bstrName, bstrNamespaceUri, out ppParameterInitializer);

			[CRepr]
			public struct VTable : IPrintSchemaTicket.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaTicket2 self, BSTR bstrName, BSTR bstrNamespaceUri, out IPrintSchemaParameterInitializer* ppParameterInitializer) GetParameterInitializer;
			}
		}
		[CRepr]
		public struct IPrintSchemaAsyncOperationEvent : IDispatch
		{
			public const new Guid IID = .(0x23adbb16, 0x0133, 0x4906, 0xb2, 0x9a, 0x1d, 0xce, 0x1d, 0x02, 0x63, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Completed(ref IPrintSchemaTicket pTicket, HRESULT hrOperation) mut => VT.Completed(ref this, ref pTicket, hrOperation);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintSchemaAsyncOperationEvent self, ref IPrintSchemaTicket pTicket, HRESULT hrOperation) Completed;
			}
		}
		[CRepr]
		public struct IPrinterScriptableSequentialStream : IDispatch
		{
			public const new Guid IID = .(0x2072838a, 0x316f, 0x467a, 0xa9, 0x49, 0x27, 0xf6, 0x8c, 0x44, 0xa8, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Read(int32 cbRead, out IDispatch* ppArray) mut => VT.Read(ref this, cbRead, out ppArray);
			public HRESULT Write(ref IDispatch pArray, out int32 pcbWritten) mut => VT.Write(ref this, ref pArray, out pcbWritten);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptableSequentialStream self, int32 cbRead, out IDispatch* ppArray) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptableSequentialStream self, ref IDispatch pArray, out int32 pcbWritten) Write;
			}
		}
		[CRepr]
		public struct IPrinterScriptableStream : IPrinterScriptableSequentialStream
		{
			public const new Guid IID = .(0x7edf9a92, 0x4750, 0x41a5, 0xa1, 0x7f, 0x87, 0x9a, 0x6f, 0x4f, 0x7d, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit() mut => VT.Commit(ref this);
			public HRESULT Seek(int32 lOffset, STREAM_SEEK streamSeek, out int32 plPosition) mut => VT.Seek(ref this, lOffset, streamSeek, out plPosition);
			public HRESULT SetSize(int32 lSize) mut => VT.SetSize(ref this, lSize);

			[CRepr]
			public struct VTable : IPrinterScriptableSequentialStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptableStream self) Commit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptableStream self, int32 lOffset, STREAM_SEEK streamSeek, out int32 plPosition) Seek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptableStream self, int32 lSize) SetSize;
			}
		}
		[CRepr]
		public struct IPrinterPropertyBag : IDispatch
		{
			public const new Guid IID = .(0xfea77364, 0xdf95, 0x4a23, 0xa9, 0x05, 0x01, 0x9b, 0x79, 0xa8, 0xe4, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBool(BSTR bstrName, out BOOL pbValue) mut => VT.GetBool(ref this, bstrName, out pbValue);
			public HRESULT SetBool(BSTR bstrName, BOOL bValue) mut => VT.SetBool(ref this, bstrName, bValue);
			public HRESULT GetInt32(BSTR bstrName, out int32 pnValue) mut => VT.GetInt32(ref this, bstrName, out pnValue);
			public HRESULT SetInt32(BSTR bstrName, int32 nValue) mut => VT.SetInt32(ref this, bstrName, nValue);
			public HRESULT GetString(BSTR bstrName, out BSTR pbstrValue) mut => VT.GetString(ref this, bstrName, out pbstrValue);
			public HRESULT SetString(BSTR bstrName, BSTR bstrValue) mut => VT.SetString(ref this, bstrName, bstrValue);
			public HRESULT GetBytes(BSTR bstrName, out uint32 pcbValue, uint8** ppValue) mut => VT.GetBytes(ref this, bstrName, out pcbValue, ppValue);
			public HRESULT SetBytes(BSTR bstrName, uint32 cbValue, uint8* pValue) mut => VT.SetBytes(ref this, bstrName, cbValue, pValue);
			public HRESULT GetReadStream(BSTR bstrName, out IStream* ppValue) mut => VT.GetReadStream(ref this, bstrName, out ppValue);
			public HRESULT GetWriteStream(BSTR bstrName, out IStream* ppValue) mut => VT.GetWriteStream(ref this, bstrName, out ppValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out BOOL pbValue) GetBool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, BOOL bValue) SetBool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out int32 pnValue) GetInt32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, int32 nValue) SetInt32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out BSTR pbstrValue) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, BSTR bstrValue) SetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out uint32 pcbValue, uint8** ppValue) GetBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, uint32 cbValue, uint8* pValue) SetBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out IStream* ppValue) GetReadStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterPropertyBag self, BSTR bstrName, out IStream* ppValue) GetWriteStream;
			}
		}
		[CRepr]
		public struct IPrinterScriptablePropertyBag : IDispatch
		{
			public const new Guid IID = .(0x91c7765f, 0xed57, 0x49ad, 0x8b, 0x01, 0xdc, 0x24, 0x81, 0x6a, 0x52, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBool(BSTR bstrName, out BOOL pbValue) mut => VT.GetBool(ref this, bstrName, out pbValue);
			public HRESULT SetBool(BSTR bstrName, BOOL bValue) mut => VT.SetBool(ref this, bstrName, bValue);
			public HRESULT GetInt32(BSTR bstrName, out int32 pnValue) mut => VT.GetInt32(ref this, bstrName, out pnValue);
			public HRESULT SetInt32(BSTR bstrName, int32 nValue) mut => VT.SetInt32(ref this, bstrName, nValue);
			public HRESULT GetString(BSTR bstrName, out BSTR pbstrValue) mut => VT.GetString(ref this, bstrName, out pbstrValue);
			public HRESULT SetString(BSTR bstrName, BSTR bstrValue) mut => VT.SetString(ref this, bstrName, bstrValue);
			public HRESULT GetBytes(BSTR bstrName, out IDispatch* ppArray) mut => VT.GetBytes(ref this, bstrName, out ppArray);
			public HRESULT SetBytes(BSTR bstrName, ref IDispatch pArray) mut => VT.SetBytes(ref this, bstrName, ref pArray);
			public HRESULT GetReadStream(BSTR bstrName, out IPrinterScriptableStream* ppStream) mut => VT.GetReadStream(ref this, bstrName, out ppStream);
			public HRESULT GetWriteStream(BSTR bstrName, out IPrinterScriptableStream* ppStream) mut => VT.GetWriteStream(ref this, bstrName, out ppStream);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out BOOL pbValue) GetBool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, BOOL bValue) SetBool;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out int32 pnValue) GetInt32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, int32 nValue) SetInt32;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out BSTR pbstrValue) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, BSTR bstrValue) SetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out IDispatch* ppArray) GetBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, ref IDispatch pArray) SetBytes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out IPrinterScriptableStream* ppStream) GetReadStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag self, BSTR bstrName, out IPrinterScriptableStream* ppStream) GetWriteStream;
			}
		}
		[CRepr]
		public struct IPrinterScriptablePropertyBag2 : IPrinterScriptablePropertyBag
		{
			public const new Guid IID = .(0x2a1c53c4, 0x8638, 0x4b3e, 0xb5, 0x18, 0x27, 0x73, 0xc9, 0x45, 0x56, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReadStreamAsXML(BSTR bstrName, out IUnknown* ppXmlNode) mut => VT.GetReadStreamAsXML(ref this, bstrName, out ppXmlNode);

			[CRepr]
			public struct VTable : IPrinterScriptablePropertyBag.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptablePropertyBag2 self, BSTR bstrName, out IUnknown* ppXmlNode) GetReadStreamAsXML;
			}
		}
		[CRepr]
		public struct IPrinterQueue : IDispatch
		{
			public const new Guid IID = .(0x3580a828, 0x07fe, 0x4b94, 0xac, 0x1a, 0x75, 0x7d, 0x9d, 0x2d, 0x30, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Handle(out HANDLE phPrinter) mut => VT.get_Handle(ref this, out phPrinter);
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT SendBidiQuery(BSTR bstrBidiQuery) mut => VT.SendBidiQuery(ref this, bstrBidiQuery);
			public HRESULT GetProperties(out IPrinterPropertyBag* ppPropertyBag) mut => VT.GetProperties(ref this, out ppPropertyBag);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue self, out HANDLE phPrinter) get_Handle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue self, BSTR bstrBidiQuery) SendBidiQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue self, out IPrinterPropertyBag* ppPropertyBag) GetProperties;
			}
		}
		[CRepr]
		public struct IPrintJob : IUnknown
		{
			public const new Guid IID = .(0xb771dab8, 0x1282, 0x41b7, 0x85, 0x8c, 0xf2, 0x06, 0xe4, 0xd2, 0x05, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
			public HRESULT get_Id(out uint32 pulID) mut => VT.get_Id(ref this, out pulID);
			public HRESULT get_PrintedPages(out uint32 pulPages) mut => VT.get_PrintedPages(ref this, out pulPages);
			public HRESULT get_TotalPages(out uint32 pulPages) mut => VT.get_TotalPages(ref this, out pulPages);
			public HRESULT get_Status(out PrintJobStatus pStatus) mut => VT.get_Status(ref this, out pStatus);
			public HRESULT get_SubmissionTime(out double pSubmissionTime) mut => VT.get_SubmissionTime(ref this, out pSubmissionTime);
			public HRESULT RequestCancel() mut => VT.RequestCancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out BSTR pbstrName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out uint32 pulID) get_Id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out uint32 pulPages) get_PrintedPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out uint32 pulPages) get_TotalPages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out PrintJobStatus pStatus) get_Status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self, out double pSubmissionTime) get_SubmissionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJob self) RequestCancel;
			}
		}
		[CRepr]
		public struct IPrintJobCollection : IDispatch
		{
			public const new Guid IID = .(0x72b82a24, 0xa598, 0x4e87, 0x89, 0x5f, 0xcd, 0xb2, 0x3a, 0x49, 0xe9, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out uint32 pulCount) mut => VT.get_Count(ref this, out pulCount);
			public HRESULT GetAt(uint32 ulIndex, out IPrintJob* ppJob) mut => VT.GetAt(ref this, ulIndex, out ppJob);
			public HRESULT get__NewEnum(out IUnknown* ppUnk) mut => VT.get__NewEnum(ref this, out ppUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJobCollection self, out uint32 pulCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJobCollection self, uint32 ulIndex, out IPrintJob* ppJob) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintJobCollection self, out IUnknown* ppUnk) get__NewEnum;
			}
		}
		[CRepr]
		public struct IPrinterQueueViewEvent : IDispatch
		{
			public const new Guid IID = .(0xc5b6042b, 0xfd21, 0x404a, 0xa0, 0xef, 0xe2, 0xfb, 0xb5, 0x2b, 0x90, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChanged(ref IPrintJobCollection pCollection, uint32 ulViewOffset, uint32 ulViewSize, uint32 ulCountJobsInPrintQueue) mut => VT.OnChanged(ref this, ref pCollection, ulViewOffset, ulViewSize, ulCountJobsInPrintQueue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueueViewEvent self, ref IPrintJobCollection pCollection, uint32 ulViewOffset, uint32 ulViewSize, uint32 ulCountJobsInPrintQueue) OnChanged;
			}
		}
		[CRepr]
		public struct IPrinterQueueView : IDispatch
		{
			public const new Guid IID = .(0x476e2969, 0x3b2b, 0x4b3f, 0x82, 0x77, 0xcf, 0xf6, 0x05, 0x60, 0x42, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetViewRange(uint32 ulViewOffset, uint32 ulViewSize) mut => VT.SetViewRange(ref this, ulViewOffset, ulViewSize);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueueView self, uint32 ulViewOffset, uint32 ulViewSize) SetViewRange;
			}
		}
		[CRepr]
		public struct IPrinterQueueEvent : IDispatch
		{
			public const new Guid IID = .(0x214685f6, 0x7b78, 0x4681, 0x87, 0xe0, 0x49, 0x5f, 0x73, 0x92, 0x73, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBidiResponseReceived(BSTR bstrResponse, HRESULT hrStatus) mut => VT.OnBidiResponseReceived(ref this, bstrResponse, hrStatus);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueueEvent self, BSTR bstrResponse, HRESULT hrStatus) OnBidiResponseReceived;
			}
		}
		[CRepr]
		public struct IPrinterBidiSetRequestCallback : IUnknown
		{
			public const new Guid IID = .(0xc52d32dd, 0xf2b4, 0x4052, 0x85, 0x02, 0xec, 0x43, 0x05, 0xec, 0xb7, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Completed(BSTR bstrResponse, HRESULT hrStatus) mut => VT.Completed(ref this, bstrResponse, hrStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterBidiSetRequestCallback self, BSTR bstrResponse, HRESULT hrStatus) Completed;
			}
		}
		[CRepr]
		public struct IPrinterExtensionAsyncOperation : IUnknown
		{
			public const new Guid IID = .(0x108d6a23, 0x6a4b, 0x4552, 0x94, 0x48, 0x68, 0xb4, 0x27, 0x18, 0x6a, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionAsyncOperation self) Cancel;
			}
		}
		[CRepr]
		public struct IPrinterQueue2 : IPrinterQueue
		{
			public const new Guid IID = .(0x8cd444e8, 0xc9bb, 0x49b3, 0x8e, 0x38, 0xe0, 0x32, 0x09, 0x41, 0x61, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendBidiSetRequestAsync(BSTR bstrBidiRequest, ref IPrinterBidiSetRequestCallback pCallback, out IPrinterExtensionAsyncOperation* ppAsyncOperation) mut => VT.SendBidiSetRequestAsync(ref this, bstrBidiRequest, ref pCallback, out ppAsyncOperation);
			public HRESULT GetPrinterQueueView(uint32 ulViewOffset, uint32 ulViewSize, out IPrinterQueueView* ppJobView) mut => VT.GetPrinterQueueView(ref this, ulViewOffset, ulViewSize, out ppJobView);

			[CRepr]
			public struct VTable : IPrinterQueue.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue2 self, BSTR bstrBidiRequest, ref IPrinterBidiSetRequestCallback pCallback, out IPrinterExtensionAsyncOperation* ppAsyncOperation) SendBidiSetRequestAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterQueue2 self, uint32 ulViewOffset, uint32 ulViewSize, out IPrinterQueueView* ppJobView) GetPrinterQueueView;
			}
		}
		[CRepr]
		public struct IPrinterExtensionContext : IDispatch
		{
			public const new Guid IID = .(0x39843bf2, 0xc4d2, 0x41fd, 0xb4, 0xb2, 0xae, 0xdb, 0xee, 0x5e, 0x19, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PrinterQueue(out IPrinterQueue* ppQueue) mut => VT.get_PrinterQueue(ref this, out ppQueue);
			public HRESULT get_PrintSchemaTicket(out IPrintSchemaTicket* ppTicket) mut => VT.get_PrintSchemaTicket(ref this, out ppTicket);
			public HRESULT get_DriverProperties(out IPrinterPropertyBag* ppPropertyBag) mut => VT.get_DriverProperties(ref this, out ppPropertyBag);
			public HRESULT get_UserProperties(out IPrinterPropertyBag* ppPropertyBag) mut => VT.get_UserProperties(ref this, out ppPropertyBag);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContext self, out IPrinterQueue* ppQueue) get_PrinterQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContext self, out IPrintSchemaTicket* ppTicket) get_PrintSchemaTicket;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContext self, out IPrinterPropertyBag* ppPropertyBag) get_DriverProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContext self, out IPrinterPropertyBag* ppPropertyBag) get_UserProperties;
			}
		}
		[CRepr]
		public struct IPrinterExtensionRequest : IDispatch
		{
			public const new Guid IID = .(0x39843bf3, 0xc4d2, 0x41fd, 0xb4, 0xb2, 0xae, 0xdb, 0xee, 0x5e, 0x19, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancel(HRESULT hrStatus, BSTR bstrLogMessage) mut => VT.Cancel(ref this, hrStatus, bstrLogMessage);
			public HRESULT Complete() mut => VT.Complete(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionRequest self, HRESULT hrStatus, BSTR bstrLogMessage) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionRequest self) Complete;
			}
		}
		[CRepr]
		public struct IPrinterExtensionEventArgs : IPrinterExtensionContext
		{
			public const new Guid IID = .(0x39843bf4, 0xc4d2, 0x41fd, 0xb4, 0xb2, 0xae, 0xdb, 0xee, 0x5e, 0x19, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BidiNotification(out BSTR pbstrBidiNotification) mut => VT.get_BidiNotification(ref this, out pbstrBidiNotification);
			public HRESULT get_ReasonId(out Guid pReasonId) mut => VT.get_ReasonId(ref this, out pReasonId);
			public HRESULT get_Request(out IPrinterExtensionRequest* ppRequest) mut => VT.get_Request(ref this, out ppRequest);
			public HRESULT get_SourceApplication(out BSTR pbstrApplication) mut => VT.get_SourceApplication(ref this, out pbstrApplication);
			public HRESULT get_DetailedReasonId(out Guid pDetailedReasonId) mut => VT.get_DetailedReasonId(ref this, out pDetailedReasonId);
			public HRESULT get_WindowModal(out BOOL pbModal) mut => VT.get_WindowModal(ref this, out pbModal);
			public HRESULT get_WindowParent(out HANDLE phwndParent) mut => VT.get_WindowParent(ref this, out phwndParent);

			[CRepr]
			public struct VTable : IPrinterExtensionContext.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out BSTR pbstrBidiNotification) get_BidiNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out Guid pReasonId) get_ReasonId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out IPrinterExtensionRequest* ppRequest) get_Request;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out BSTR pbstrApplication) get_SourceApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out Guid pDetailedReasonId) get_DetailedReasonId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out BOOL pbModal) get_WindowModal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEventArgs self, out HANDLE phwndParent) get_WindowParent;
			}
		}
		[CRepr]
		public struct IPrinterExtensionContextCollection : IDispatch
		{
			public const new Guid IID = .(0xfb476970, 0x9bab, 0x4861, 0x81, 0x1e, 0x3e, 0x98, 0xb0, 0xc5, 0xad, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out uint32 pulCount) mut => VT.get_Count(ref this, out pulCount);
			public HRESULT GetAt(uint32 ulIndex, out IPrinterExtensionContext* ppContext) mut => VT.GetAt(ref this, ulIndex, out ppContext);
			public HRESULT get__NewEnum(out IUnknown* ppUnk) mut => VT.get__NewEnum(ref this, out ppUnk);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContextCollection self, out uint32 pulCount) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContextCollection self, uint32 ulIndex, out IPrinterExtensionContext* ppContext) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionContextCollection self, out IUnknown* ppUnk) get__NewEnum;
			}
		}
		[CRepr]
		public struct IPrinterExtensionEvent : IDispatch
		{
			public const new Guid IID = .(0xc093cb63, 0x5ef5, 0x4585, 0xaf, 0x8e, 0x4d, 0x56, 0x37, 0x48, 0x7b, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDriverEvent(ref IPrinterExtensionEventArgs pEventArgs) mut => VT.OnDriverEvent(ref this, ref pEventArgs);
			public HRESULT OnPrinterQueuesEnumerated(ref IPrinterExtensionContextCollection pContextCollection) mut => VT.OnPrinterQueuesEnumerated(ref this, ref pContextCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEvent self, ref IPrinterExtensionEventArgs pEventArgs) OnDriverEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionEvent self, ref IPrinterExtensionContextCollection pContextCollection) OnPrinterQueuesEnumerated;
			}
		}
		[CRepr]
		public struct IPrinterExtensionManager : IUnknown
		{
			public const new Guid IID = .(0x93c6eb8c, 0xb001, 0x4355, 0x96, 0x29, 0x8e, 0x8a, 0x1b, 0x3f, 0x8e, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableEvents(Guid printerDriverId) mut => VT.EnableEvents(ref this, printerDriverId);
			public HRESULT DisableEvents() mut => VT.DisableEvents(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionManager self, Guid printerDriverId) EnableEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterExtensionManager self) DisableEvents;
			}
		}
		[CRepr]
		public struct IPrinterScriptContext : IDispatch
		{
			public const new Guid IID = .(0x066acbca, 0x8881, 0x49c9, 0xbb, 0x98, 0xfa, 0xe1, 0x6b, 0x48, 0x89, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DriverProperties(out IPrinterScriptablePropertyBag* ppPropertyBag) mut => VT.get_DriverProperties(ref this, out ppPropertyBag);
			public HRESULT get_QueueProperties(out IPrinterScriptablePropertyBag* ppPropertyBag) mut => VT.get_QueueProperties(ref this, out ppPropertyBag);
			public HRESULT get_UserProperties(out IPrinterScriptablePropertyBag* ppPropertyBag) mut => VT.get_UserProperties(ref this, out ppPropertyBag);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptContext self, out IPrinterScriptablePropertyBag* ppPropertyBag) get_DriverProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptContext self, out IPrinterScriptablePropertyBag* ppPropertyBag) get_QueueProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrinterScriptContext self, out IPrinterScriptablePropertyBag* ppPropertyBag) get_UserProperties;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotifyDataObject : IUnknown
		{
			public const new Guid IID = .(0x77cf513e, 0x5d49, 0x4789, 0x9f, 0x30, 0xd0, 0x82, 0x2b, 0x33, 0x5c, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireData(uint8** ppNotificationData, uint32* pSize, Guid** ppSchema) mut => VT.AcquireData(ref this, ppNotificationData, pSize, ppSchema);
			public HRESULT ReleaseData() mut => VT.ReleaseData(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyDataObject self, uint8** ppNotificationData, uint32* pSize, Guid** ppSchema) AcquireData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyDataObject self) ReleaseData;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotifyChannel : IUnknown
		{
			public const new Guid IID = .(0x4a5031b1, 0x1f3f, 0x4db0, 0xa4, 0x62, 0x45, 0x30, 0xed, 0x8b, 0x04, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendNotification(ref IPrintAsyncNotifyDataObject pData) mut => VT.SendNotification(ref this, ref pData);
			public HRESULT CloseChannel(ref IPrintAsyncNotifyDataObject pData) mut => VT.CloseChannel(ref this, ref pData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject pData) SendNotification;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject pData) CloseChannel;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotifyCallback : IUnknown
		{
			public const new Guid IID = .(0x7def34c1, 0x9d92, 0x4c99, 0xb3, 0xb3, 0xdb, 0x94, 0xa9, 0xd4, 0x19, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEventNotify(ref IPrintAsyncNotifyChannel pChannel, ref IPrintAsyncNotifyDataObject pData) mut => VT.OnEventNotify(ref this, ref pChannel, ref pData);
			public HRESULT ChannelClosed(ref IPrintAsyncNotifyChannel pChannel, ref IPrintAsyncNotifyDataObject pData) mut => VT.ChannelClosed(ref this, ref pChannel, ref pData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyCallback self, ref IPrintAsyncNotifyChannel pChannel, ref IPrintAsyncNotifyDataObject pData) OnEventNotify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyCallback self, ref IPrintAsyncNotifyChannel pChannel, ref IPrintAsyncNotifyDataObject pData) ChannelClosed;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotifyRegistration : IUnknown
		{
			public const new Guid IID = .(0x0f6f27b6, 0x6f86, 0x4591, 0x92, 0x03, 0x64, 0xc3, 0xbf, 0xad, 0xed, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterForNotifications() mut => VT.RegisterForNotifications(ref this);
			public HRESULT UnregisterForNotifications() mut => VT.UnregisterForNotifications(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyRegistration self) RegisterForNotifications;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyRegistration self) UnregisterForNotifications;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotify : IUnknown
		{
			public const new Guid IID = .(0x532818f7, 0x921b, 0x4fb2, 0xbf, 0xf8, 0x2f, 0x4f, 0xd5, 0x2e, 0xbe, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePrintAsyncNotifyChannel(uint32 param0, ref Guid param1, PrintAsyncNotifyUserFilter param2, PrintAsyncNotifyConversationStyle param3, ref IPrintAsyncNotifyCallback param4, out IPrintAsyncNotifyChannel* param5) mut => VT.CreatePrintAsyncNotifyChannel(ref this, param0, ref param1, param2, param3, ref param4, out param5);
			public HRESULT CreatePrintAsyncNotifyRegistration(ref Guid param0, PrintAsyncNotifyUserFilter param1, PrintAsyncNotifyConversationStyle param2, ref IPrintAsyncNotifyCallback param3, out IPrintAsyncNotifyRegistration* param4) mut => VT.CreatePrintAsyncNotifyRegistration(ref this, ref param0, param1, param2, ref param3, out param4);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotify self, uint32 param0, ref Guid param1, PrintAsyncNotifyUserFilter param2, PrintAsyncNotifyConversationStyle param3, ref IPrintAsyncNotifyCallback param4, out IPrintAsyncNotifyChannel* param5) CreatePrintAsyncNotifyChannel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotify self, ref Guid param0, PrintAsyncNotifyUserFilter param1, PrintAsyncNotifyConversationStyle param2, ref IPrintAsyncNotifyCallback param3, out IPrintAsyncNotifyRegistration* param4) CreatePrintAsyncNotifyRegistration;
			}
		}
		[CRepr]
		public struct IPrintAsyncCookie : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinishAsyncCall(HRESULT param0) mut => VT.FinishAsyncCall(ref this, param0);
			public HRESULT CancelAsyncCall(HRESULT param0) mut => VT.CancelAsyncCall(ref this, param0);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncCookie self, HRESULT param0) FinishAsyncCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncCookie self, HRESULT param0) CancelAsyncCall;
			}
		}
		[CRepr]
		public struct IPrintAsyncNewChannelCookie : IPrintAsyncCookie
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinishAsyncCallWithData(ref IPrintAsyncNotifyChannel* param0, uint32 param1) mut => VT.FinishAsyncCallWithData(ref this, ref param0, param1);

			[CRepr]
			public struct VTable : IPrintAsyncCookie.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNewChannelCookie self, ref IPrintAsyncNotifyChannel* param0, uint32 param1) FinishAsyncCallWithData;
			}
		}
		[CRepr]
		public struct IAsyncGetSendNotificationCookie : IPrintAsyncCookie
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinishAsyncCallWithData(ref IPrintAsyncNotifyDataObject param0, BOOL param1) mut => VT.FinishAsyncCallWithData(ref this, ref param0, param1);

			[CRepr]
			public struct VTable : IPrintAsyncCookie.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncGetSendNotificationCookie self, ref IPrintAsyncNotifyDataObject param0, BOOL param1) FinishAsyncCallWithData;
			}
		}
		[CRepr]
		public struct IAsyncGetSrvReferralCookie : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinishAsyncCall(HRESULT param0) mut => VT.FinishAsyncCall(ref this, param0);
			public HRESULT CancelAsyncCall(HRESULT param0) mut => VT.CancelAsyncCall(ref this, param0);
			public HRESULT FinishAsyncCallWithData(PWSTR param0) mut => VT.FinishAsyncCallWithData(ref this, param0);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncGetSrvReferralCookie self, HRESULT param0) FinishAsyncCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncGetSrvReferralCookie self, HRESULT param0) CancelAsyncCall;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAsyncGetSrvReferralCookie self, PWSTR param0) FinishAsyncCallWithData;
			}
		}
		[CRepr]
		public struct IPrintBidiAsyncNotifyRegistration : IPrintAsyncNotifyRegistration
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncGetNewChannel(ref IPrintAsyncNewChannelCookie param0) mut => VT.AsyncGetNewChannel(ref this, ref param0);

			[CRepr]
			public struct VTable : IPrintAsyncNotifyRegistration.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintBidiAsyncNotifyRegistration self, ref IPrintAsyncNewChannelCookie param0) AsyncGetNewChannel;
			}
		}
		[CRepr]
		public struct IPrintUnidiAsyncNotifyRegistration : IPrintAsyncNotifyRegistration
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AsyncGetNotification(ref IAsyncGetSendNotificationCookie param0) mut => VT.AsyncGetNotification(ref this, ref param0);

			[CRepr]
			public struct VTable : IPrintAsyncNotifyRegistration.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintUnidiAsyncNotifyRegistration self, ref IAsyncGetSendNotificationCookie param0) AsyncGetNotification;
			}
		}
		[CRepr]
		public struct IPrintAsyncNotifyServerReferral : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetServerReferral(out PWSTR param0) mut => VT.GetServerReferral(ref this, out param0);
			public HRESULT AsyncGetServerReferral(ref IAsyncGetSrvReferralCookie param0) mut => VT.AsyncGetServerReferral(ref this, ref param0);
			public HRESULT SetServerReferral(PWSTR pRmtServerReferral) mut => VT.SetServerReferral(ref this, pRmtServerReferral);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyServerReferral self, out PWSTR param0) GetServerReferral;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyServerReferral self, ref IAsyncGetSrvReferralCookie param0) AsyncGetServerReferral;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintAsyncNotifyServerReferral self, PWSTR pRmtServerReferral) SetServerReferral;
			}
		}
		[CRepr]
		public struct IBidiAsyncNotifyChannel : IPrintAsyncNotifyChannel
		{
			public const new Guid IID = .(0x532818f7, 0x921b, 0x4fb2, 0xbf, 0xf8, 0x2f, 0x4f, 0xd5, 0x2e, 0xbe, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateNotificationChannel() mut => VT.CreateNotificationChannel(ref this);
			public HRESULT GetPrintName(ref IPrintAsyncNotifyDataObject* param0) mut => VT.GetPrintName(ref this, ref param0);
			public HRESULT GetChannelNotificationType(ref IPrintAsyncNotifyDataObject* param0) mut => VT.GetChannelNotificationType(ref this, ref param0);
			public HRESULT AsyncGetNotificationSendResponse(ref IPrintAsyncNotifyDataObject param0, ref IAsyncGetSendNotificationCookie param1) mut => VT.AsyncGetNotificationSendResponse(ref this, ref param0, ref param1);
			public HRESULT AsyncCloseChannel(ref IPrintAsyncNotifyDataObject param0, ref IPrintAsyncCookie param1) mut => VT.AsyncCloseChannel(ref this, ref param0, ref param1);

			[CRepr]
			public struct VTable : IPrintAsyncNotifyChannel.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBidiAsyncNotifyChannel self) CreateNotificationChannel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBidiAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject* param0) GetPrintName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBidiAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject* param0) GetChannelNotificationType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBidiAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject param0, ref IAsyncGetSendNotificationCookie param1) AsyncGetNotificationSendResponse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBidiAsyncNotifyChannel self, ref IPrintAsyncNotifyDataObject param0, ref IPrintAsyncCookie param1) AsyncCloseChannel;
			}
		}
		[CRepr]
		public struct IXpsRasterizerNotificationCallback : IUnknown
		{
			public const new Guid IID = .(0x9ab8fd0d, 0xcb94, 0x49c2, 0x9c, 0xb0, 0x97, 0xec, 0x1d, 0x54, 0x69, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Continue() mut => VT.Continue(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizerNotificationCallback self) Continue;
			}
		}
		[CRepr]
		public struct IXpsRasterizer : IUnknown
		{
			public const new Guid IID = .(0x7567cfc8, 0xc156, 0x47a8, 0x9d, 0xac, 0x11, 0xa2, 0xae, 0x5b, 0xdd, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RasterizeRect(int32 x, int32 y, int32 width, int32 height, IXpsRasterizerNotificationCallback* notificationCallback, IWICBitmap** bitmap) mut => VT.RasterizeRect(ref this, x, y, width, height, notificationCallback, bitmap);
			public HRESULT SetMinimalLineWidth(int32 width) mut => VT.SetMinimalLineWidth(ref this, width);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizer self, int32 x, int32 y, int32 width, int32 height, IXpsRasterizerNotificationCallback* notificationCallback, IWICBitmap** bitmap) RasterizeRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizer self, int32 width) SetMinimalLineWidth;
			}
		}
		[CRepr]
		public struct IXpsRasterizationFactory : IUnknown
		{
			public const new Guid IID = .(0xe094808a, 0x24c6, 0x482b, 0xa3, 0xa7, 0xc2, 0x1a, 0xc9, 0xb5, 0x5f, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRasterizer(IXpsOMPage* xpsPage, float DPI, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, IXpsRasterizer** ppIXPSRasterizer) mut => VT.CreateRasterizer(ref this, xpsPage, DPI, nonTextRenderingMode, textRenderingMode, ppIXPSRasterizer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizationFactory self, IXpsOMPage* xpsPage, float DPI, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, IXpsRasterizer** ppIXPSRasterizer) CreateRasterizer;
			}
		}
		[CRepr]
		public struct IXpsRasterizationFactory1 : IUnknown
		{
			public const new Guid IID = .(0x2d6e5f77, 0x6414, 0x4a1e, 0xa8, 0xe0, 0xd4, 0x19, 0x4c, 0xe6, 0xa2, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRasterizer(IXpsOMPage* xpsPage, float DPI, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, XPSRAS_PIXEL_FORMAT pixelFormat, IXpsRasterizer** ppIXPSRasterizer) mut => VT.CreateRasterizer(ref this, xpsPage, DPI, nonTextRenderingMode, textRenderingMode, pixelFormat, ppIXPSRasterizer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizationFactory1 self, IXpsOMPage* xpsPage, float DPI, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, XPSRAS_PIXEL_FORMAT pixelFormat, IXpsRasterizer** ppIXPSRasterizer) CreateRasterizer;
			}
		}
		[CRepr]
		public struct IXpsRasterizationFactory2 : IUnknown
		{
			public const new Guid IID = .(0x9c16ce3e, 0x10f5, 0x41fd, 0x9d, 0xdc, 0x68, 0x26, 0x66, 0x9c, 0x2f, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRasterizer(IXpsOMPage* xpsPage, float DPIX, float DPIY, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, XPSRAS_PIXEL_FORMAT pixelFormat, XPSRAS_BACKGROUND_COLOR backgroundColor, IXpsRasterizer** ppIXpsRasterizer) mut => VT.CreateRasterizer(ref this, xpsPage, DPIX, DPIY, nonTextRenderingMode, textRenderingMode, pixelFormat, backgroundColor, ppIXpsRasterizer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXpsRasterizationFactory2 self, IXpsOMPage* xpsPage, float DPIX, float DPIY, XPSRAS_RENDERING_MODE nonTextRenderingMode, XPSRAS_RENDERING_MODE textRenderingMode, XPSRAS_PIXEL_FORMAT pixelFormat, XPSRAS_BACKGROUND_COLOR backgroundColor, IXpsRasterizer** ppIXpsRasterizer) CreateRasterizer;
			}
		}
		[CRepr]
		public struct IPrintPreviewDxgiPackageTarget : IUnknown
		{
			public const new Guid IID = .(0x1a6dd0ad, 0x1e2a, 0x4e99, 0xa5, 0xba, 0x91, 0xf1, 0x78, 0x18, 0x29, 0x0e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetJobPageCount(PageCountType countType, uint32 count) mut => VT.SetJobPageCount(ref this, countType, count);
			public HRESULT DrawPage(uint32 jobPageNumber, ref IDXGISurface pageImage, float dpiX, float dpiY) mut => VT.DrawPage(ref this, jobPageNumber, ref pageImage, dpiX, dpiY);
			public HRESULT InvalidatePreview() mut => VT.InvalidatePreview(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintPreviewDxgiPackageTarget self, PageCountType countType, uint32 count) SetJobPageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintPreviewDxgiPackageTarget self, uint32 jobPageNumber, ref IDXGISurface pageImage, float dpiX, float dpiY) DrawPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrintPreviewDxgiPackageTarget self) InvalidatePreview;
			}
		}
		
		// --- Functions ---
		
		[Import("compstui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CommonPropertySheetUIA(HWND hWndOwner, PFNPROPSHEETUI pfnPropSheetUI, LPARAM lParam, uint32* pResult);
		[Import("compstui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 CommonPropertySheetUIW(HWND hWndOwner, PFNPROPSHEETUI pfnPropSheetUI, LPARAM lParam, uint32* pResult);
		[Import("compstui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint GetCPSUIUserData(HWND hDlg);
		[Import("compstui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCPSUIUserData(HWND hDlg, uint CPSUIUserData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintersA(uint32 Flags, PSTR Name, uint32 Level, uint8* pPrinterEnum, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintersW(uint32 Flags, PWSTR Name, uint32 Level, uint8* pPrinterEnum, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GetSpoolFileHandle(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CommitSpoolData(HANDLE hPrinter, HANDLE hSpoolFile, uint32 cbCommit);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseSpoolFileHandle(HANDLE hPrinter, HANDLE hSpoolFile);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPrinterA(PSTR pPrinterName, out HANDLE phPrinter, PRINTER_DEFAULTSA* pDefault);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPrinterW(PWSTR pPrinterName, out HANDLE phPrinter, PRINTER_DEFAULTSW* pDefault);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ResetPrinterA(HANDLE hPrinter, PRINTER_DEFAULTSA* pDefault);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ResetPrinterW(HANDLE hPrinter, PRINTER_DEFAULTSW* pDefault);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetJobA(HANDLE hPrinter, uint32 JobId, uint32 Level, uint8* pJob, uint32 Command);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetJobW(HANDLE hPrinter, uint32 JobId, uint32 Level, uint8* pJob, uint32 Command);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetJobA(HANDLE hPrinter, uint32 JobId, uint32 Level, uint8* pJob, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetJobW(HANDLE hPrinter, uint32 JobId, uint32 Level, uint8* pJob, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumJobsA(HANDLE hPrinter, uint32 FirstJob, uint32 NoJobs, uint32 Level, uint8* pJob, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumJobsW(HANDLE hPrinter, uint32 FirstJob, uint32 NoJobs, uint32 Level, uint8* pJob, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE AddPrinterA(PSTR pName, uint32 Level, ref uint8 pPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE AddPrinterW(PWSTR pName, uint32 Level, ref uint8 pPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetPrinterA(HANDLE hPrinter, uint32 Level, uint8* pPrinter, uint32 Command);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetPrinterW(HANDLE hPrinter, uint32 Level, uint8* pPrinter, uint32 Command);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterA(HANDLE hPrinter, uint32 Level, uint8* pPrinter, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterW(HANDLE hPrinter, uint32 Level, uint8* pPrinter, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterDriverA(PSTR pName, uint32 Level, ref uint8 pDriverInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterDriverW(PWSTR pName, uint32 Level, ref uint8 pDriverInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterDriverExA(PSTR pName, uint32 Level, ref uint8 lpbDriverInfo, uint32 dwFileCopyFlags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterDriverExW(PWSTR pName, uint32 Level, ref uint8 lpbDriverInfo, uint32 dwFileCopyFlags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrinterDriversA(PSTR pName, PSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrinterDriversW(PWSTR pName, PWSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriverA(HANDLE hPrinter, PSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriverW(HANDLE hPrinter, PWSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriverDirectoryA(PSTR pName, PSTR pEnvironment, uint32 Level, uint8* pDriverDirectory, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriverDirectoryW(PWSTR pName, PWSTR pEnvironment, uint32 Level, uint8* pDriverDirectory, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterDriverA(PSTR pName, PSTR pEnvironment, PSTR pDriverName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterDriverW(PWSTR pName, PWSTR pEnvironment, PWSTR pDriverName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterDriverExA(PSTR pName, PSTR pEnvironment, PSTR pDriverName, uint32 dwDeleteFlag, uint32 dwVersionFlag);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterDriverExW(PWSTR pName, PWSTR pEnvironment, PWSTR pDriverName, uint32 dwDeleteFlag, uint32 dwVersionFlag);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrintProcessorA(PSTR pName, PSTR pEnvironment, PSTR pPathName, PSTR pPrintProcessorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrintProcessorW(PWSTR pName, PWSTR pEnvironment, PWSTR pPathName, PWSTR pPrintProcessorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintProcessorsA(PSTR pName, PSTR pEnvironment, uint32 Level, uint8* pPrintProcessorInfo, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintProcessorsW(PWSTR pName, PWSTR pEnvironment, uint32 Level, uint8* pPrintProcessorInfo, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrintProcessorDirectoryA(PSTR pName, PSTR pEnvironment, uint32 Level, uint8* pPrintProcessorInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrintProcessorDirectoryW(PWSTR pName, PWSTR pEnvironment, uint32 Level, uint8* pPrintProcessorInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintProcessorDatatypesA(PSTR pName, PSTR pPrintProcessorName, uint32 Level, uint8* pDatatypes, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPrintProcessorDatatypesW(PWSTR pName, PWSTR pPrintProcessorName, uint32 Level, uint8* pDatatypes, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrintProcessorA(PSTR pName, PSTR pEnvironment, PSTR pPrintProcessorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrintProcessorW(PWSTR pName, PWSTR pEnvironment, PWSTR pPrintProcessorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StartDocPrinterA(HANDLE hPrinter, uint32 Level, ref DOC_INFO_1A pDocInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StartDocPrinterW(HANDLE hPrinter, uint32 Level, ref DOC_INFO_1W pDocInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StartPagePrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WritePrinter(HANDLE hPrinter, void* pBuf, uint32 cbBuf, out uint32 pcWritten);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlushPrinter(HANDLE hPrinter, void* pBuf, uint32 cbBuf, out uint32 pcWritten, uint32 cSleep);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndPagePrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AbortPrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadPrinter(HANDLE hPrinter, void* pBuf, uint32 cbBuf, out uint32 pNoBytesRead);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndDocPrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddJobA(HANDLE hPrinter, uint32 Level, uint8* pData, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddJobW(HANDLE hPrinter, uint32 Level, uint8* pData, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ScheduleJob(HANDLE hPrinter, uint32 JobId);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PrinterProperties(HWND hWnd, HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DocumentPropertiesA(HWND hWnd, HANDLE hPrinter, PSTR pDeviceName, DEVMODEA* pDevModeOutput, DEVMODEA* pDevModeInput, uint32 fMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DocumentPropertiesW(HWND hWnd, HANDLE hPrinter, PWSTR pDeviceName, DEVMODEW* pDevModeOutput, DEVMODEW* pDevModeInput, uint32 fMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AdvancedDocumentPropertiesA(HWND hWnd, HANDLE hPrinter, PSTR pDeviceName, DEVMODEA* pDevModeOutput, DEVMODEA* pDevModeInput);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 AdvancedDocumentPropertiesW(HWND hWnd, HANDLE hPrinter, PWSTR pDeviceName, DEVMODEW* pDevModeOutput, DEVMODEW* pDevModeInput);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ExtDeviceMode(HWND hWnd, HANDLE hInst, DEVMODEA* pDevModeOutput, PSTR pDeviceName, PSTR pPort, DEVMODEA* pDevModeInput, PSTR pProfile, uint32 fMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPrinterDataA(HANDLE hPrinter, PSTR pValueName, uint32* pType, uint8* pData, uint32 nSize, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPrinterDataW(HANDLE hPrinter, PWSTR pValueName, uint32* pType, uint8* pData, uint32 nSize, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPrinterDataExA(HANDLE hPrinter, PSTR pKeyName, PSTR pValueName, uint32* pType, uint8* pData, uint32 nSize, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetPrinterDataExW(HANDLE hPrinter, PWSTR pKeyName, PWSTR pValueName, uint32* pType, uint8* pData, uint32 nSize, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterDataA(HANDLE hPrinter, uint32 dwIndex, PSTR pValueName, uint32 cbValueName, out uint32 pcbValueName, uint32* pType, uint8* pData, uint32 cbData, uint32* pcbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterDataW(HANDLE hPrinter, uint32 dwIndex, PWSTR pValueName, uint32 cbValueName, out uint32 pcbValueName, uint32* pType, uint8* pData, uint32 cbData, uint32* pcbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterDataExA(HANDLE hPrinter, PSTR pKeyName, uint8* pEnumValues, uint32 cbEnumValues, out uint32 pcbEnumValues, out uint32 pnEnumValues);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterDataExW(HANDLE hPrinter, PWSTR pKeyName, uint8* pEnumValues, uint32 cbEnumValues, out uint32 pcbEnumValues, out uint32 pnEnumValues);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterKeyA(HANDLE hPrinter, PSTR pKeyName, PSTR pSubkey, uint32 cbSubkey, out uint32 pcbSubkey);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumPrinterKeyW(HANDLE hPrinter, PWSTR pKeyName, PWSTR pSubkey, uint32 cbSubkey, out uint32 pcbSubkey);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPrinterDataA(HANDLE hPrinter, PSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPrinterDataW(HANDLE hPrinter, PWSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPrinterDataExA(HANDLE hPrinter, PSTR pKeyName, PSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetPrinterDataExW(HANDLE hPrinter, PWSTR pKeyName, PWSTR pValueName, uint32 Type, ref uint8 pData, uint32 cbData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterDataA(HANDLE hPrinter, PSTR pValueName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterDataW(HANDLE hPrinter, PWSTR pValueName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterDataExA(HANDLE hPrinter, PSTR pKeyName, PSTR pValueName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterDataExW(HANDLE hPrinter, PWSTR pKeyName, PWSTR pValueName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterKeyA(HANDLE hPrinter, PSTR pKeyName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeletePrinterKeyW(HANDLE hPrinter, PWSTR pKeyName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WaitForPrinterChange(HANDLE hPrinter, uint32 Flags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE FindFirstPrinterChangeNotification(HANDLE hPrinter, uint32 fdwFilter, uint32 fdwOptions, void* pPrinterNotifyOptions);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindNextPrinterChangeNotification(HANDLE hChange, uint32* pdwChange, void* pvReserved, void** ppPrinterNotifyInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreePrinterNotifyInfo(ref PRINTER_NOTIFY_INFO pPrinterNotifyInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FindClosePrinterChangeNotification(HANDLE hChange);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrinterMessageBoxA(HANDLE hPrinter, uint32 Error, HWND hWnd, PSTR pText, PSTR pCaption, uint32 dwType);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PrinterMessageBoxW(HANDLE hPrinter, uint32 Error, HWND hWnd, PWSTR pText, PWSTR pCaption, uint32 dwType);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClosePrinter(HANDLE hPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddFormA(HANDLE hPrinter, uint32 Level, ref uint8 pForm);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddFormW(HANDLE hPrinter, uint32 Level, ref uint8 pForm);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFormA(HANDLE hPrinter, PSTR pFormName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteFormW(HANDLE hPrinter, PWSTR pFormName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFormA(HANDLE hPrinter, PSTR pFormName, uint32 Level, uint8* pForm, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFormW(HANDLE hPrinter, PWSTR pFormName, uint32 Level, uint8* pForm, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFormA(HANDLE hPrinter, PSTR pFormName, uint32 Level, ref uint8 pForm);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetFormW(HANDLE hPrinter, PWSTR pFormName, uint32 Level, ref uint8 pForm);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumFormsA(HANDLE hPrinter, uint32 Level, uint8* pForm, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumFormsW(HANDLE hPrinter, uint32 Level, uint8* pForm, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumMonitorsA(PSTR pName, uint32 Level, uint8* pMonitor, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumMonitorsW(PWSTR pName, uint32 Level, uint8* pMonitor, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddMonitorA(PSTR pName, uint32 Level, uint8* pMonitors);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddMonitorW(PWSTR pName, uint32 Level, uint8* pMonitors);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteMonitorA(PSTR pName, PSTR pEnvironment, PSTR pMonitorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteMonitorW(PWSTR pName, PWSTR pEnvironment, PWSTR pMonitorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPortsA(PSTR pName, uint32 Level, uint8* pPort, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumPortsW(PWSTR pName, uint32 Level, uint8* pPort, uint32 cbBuf, out uint32 pcbNeeded, out uint32 pcReturned);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPortA(PSTR pName, HWND hWnd, PSTR pMonitorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPortW(PWSTR pName, HWND hWnd, PWSTR pMonitorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConfigurePortA(PSTR pName, HWND hWnd, PSTR pPortName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConfigurePortW(PWSTR pName, HWND hWnd, PWSTR pPortName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePortA(PSTR pName, HWND hWnd, PSTR pPortName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePortW(PWSTR pName, HWND hWnd, PWSTR pPortName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL XcvDataW(HANDLE hXcv, PWSTR pszDataName, uint8* pInputData, uint32 cbInputData, uint8* pOutputData, uint32 cbOutputData, out uint32 pcbOutputNeeded, uint32* pdwStatus);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultPrinterA(uint8* pszBuffer, out uint32 pcchBuffer);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultPrinterW(char16* pszBuffer, out uint32 pcchBuffer);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDefaultPrinterA(PSTR pszPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDefaultPrinterW(PWSTR pszPrinter);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetPortA(PSTR pName, PSTR pPortName, uint32 dwLevel, ref uint8 pPortInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetPortW(PWSTR pName, PWSTR pPortName, uint32 dwLevel, ref uint8 pPortInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterConnectionA(PSTR pName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterConnectionW(PWSTR pName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterConnectionA(PSTR pName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterConnectionW(PWSTR pName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE ConnectToPrinterDlg(HWND hwnd, uint32 Flags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrintProvidorA(PSTR pName, uint32 Level, ref uint8 pProvidorInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrintProvidorW(PWSTR pName, uint32 Level, ref uint8 pProvidorInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrintProvidorA(PSTR pName, PSTR pEnvironment, PSTR pPrintProvidorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrintProvidorW(PWSTR pName, PWSTR pEnvironment, PWSTR pPrintProvidorName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsValidDevmodeA(DEVMODEA* pDevmode, uint DevmodeSize);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsValidDevmodeW(DEVMODEW* pDevmode, uint DevmodeSize);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPrinter2A(PSTR pPrinterName, out HANDLE phPrinter, PRINTER_DEFAULTSA* pDefault, PRINTER_OPTIONSA* pOptions);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OpenPrinter2W(PWSTR pPrinterName, out HANDLE phPrinter, PRINTER_DEFAULTSW* pDefault, PRINTER_OPTIONSW* pOptions);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterConnection2A(HWND hWnd, PSTR pszName, uint32 dwLevel, void* pConnectionInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AddPrinterConnection2W(HWND hWnd, PWSTR pszName, uint32 dwLevel, void* pConnectionInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InstallPrinterDriverFromPackageA(PSTR pszServer, PSTR pszInfPath, PSTR pszDriverName, PSTR pszEnvironment, uint32 dwFlags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InstallPrinterDriverFromPackageW(PWSTR pszServer, PWSTR pszInfPath, PWSTR pszDriverName, PWSTR pszEnvironment, uint32 dwFlags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UploadPrinterDriverPackageA(PSTR pszServer, PSTR pszInfPath, PSTR pszEnvironment, uint32 dwFlags, HWND hwnd, uint8* pszDestInfPath, out uint32 pcchDestInfPath);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UploadPrinterDriverPackageW(PWSTR pszServer, PWSTR pszInfPath, PWSTR pszEnvironment, uint32 dwFlags, HWND hwnd, char16* pszDestInfPath, out uint32 pcchDestInfPath);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCorePrinterDriversA(PSTR pszServer, PSTR pszEnvironment, PSTR pszzCoreDriverDependencies, uint32 cCorePrinterDrivers, CORE_PRINTER_DRIVERA* pCorePrinterDrivers);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCorePrinterDriversW(PWSTR pszServer, PWSTR pszEnvironment, PWSTR pszzCoreDriverDependencies, uint32 cCorePrinterDrivers, CORE_PRINTER_DRIVERW* pCorePrinterDrivers);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CorePrinterDriverInstalledA(PSTR pszServer, PSTR pszEnvironment, Guid CoreDriverGUID, FILETIME ftDriverDate, uint64 dwlDriverVersion, out BOOL pbDriverInstalled);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CorePrinterDriverInstalledW(PWSTR pszServer, PWSTR pszEnvironment, Guid CoreDriverGUID, FILETIME ftDriverDate, uint64 dwlDriverVersion, out BOOL pbDriverInstalled);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetPrinterDriverPackagePathA(PSTR pszServer, PSTR pszEnvironment, PSTR pszLanguage, PSTR pszPackageID, uint8* pszDriverPackageCab, uint32 cchDriverPackageCab, out uint32 pcchRequiredSize);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetPrinterDriverPackagePathW(PWSTR pszServer, PWSTR pszEnvironment, PWSTR pszLanguage, PWSTR pszPackageID, char16* pszDriverPackageCab, uint32 cchDriverPackageCab, out uint32 pcchRequiredSize);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeletePrinterDriverPackageA(PSTR pszServer, PSTR pszInfPath, PSTR pszEnvironment);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DeletePrinterDriverPackageW(PWSTR pszServer, PWSTR pszInfPath, PWSTR pszEnvironment);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReportJobProcessingProgress(HANDLE printerHandle, uint32 jobId, EPrintXPSJobOperation jobOperation, EPrintXPSJobProgress jobProgress);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriver2A(HWND hWnd, HANDLE hPrinter, PSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrinterDriver2W(HWND hWnd, HANDLE hPrinter, PWSTR pEnvironment, uint32 Level, uint8* pDriverInfo, uint32 cbBuf, out uint32 pcbNeeded);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPrintExecutionData(out PRINT_EXECUTION_DATA pData);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetJobNamedPropertyValue(HANDLE hPrinter, uint32 JobId, PWSTR pszName, out PrintPropertyValue pValue);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreePrintPropertyValue(out PrintPropertyValue pValue);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreePrintNamedPropertyArray(uint32 cProperties, PrintNamedProperty** ppProperties);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SetJobNamedProperty(HANDLE hPrinter, uint32 JobId, in PrintNamedProperty pProperty);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DeleteJobNamedProperty(HANDLE hPrinter, uint32 JobId, PWSTR pszName);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 EnumJobNamedProperties(HANDLE hPrinter, uint32 JobId, out uint32 pcProperties, out PrintNamedProperty* ppProperties);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetPrintOutputInfo(HWND hWnd, PWSTR pszPrinter, out HANDLE phFile, out PWSTR ppszOutputFile);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DevQueryPrintEx(out DEVQUERYPRINT_INFO pDQPInfo);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterForPrintAsyncNotifications(PWSTR pszName, ref Guid pNotificationType, PrintAsyncNotifyUserFilter eUserFilter, PrintAsyncNotifyConversationStyle eConversationStyle, ref IPrintAsyncNotifyCallback pCallback, out HANDLE phNotify);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnRegisterForPrintAsyncNotifications(HANDLE param0);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreatePrintAsyncNotifyChannel(PWSTR pszName, ref Guid pNotificationType, PrintAsyncNotifyUserFilter eUserFilter, PrintAsyncNotifyConversationStyle eConversationStyle, IPrintAsyncNotifyCallback* pCallback, out IPrintAsyncNotifyChannel* ppIAsynchNotification);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GdiGetSpoolFileHandle(PWSTR pwszPrinterName, out DEVMODEW pDevmode, PWSTR pwszDocName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiDeleteSpoolFileHandle(HANDLE SpoolFileHandle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GdiGetPageCount(HANDLE SpoolFileHandle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GdiGetDC(HANDLE SpoolFileHandle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE GdiGetPageHandle(HANDLE SpoolFileHandle, uint32 Page, out uint32 pdwPageType);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiStartDocEMF(HANDLE SpoolFileHandle, out DOCINFOW pDocInfo);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiStartPageEMF(HANDLE SpoolFileHandle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiPlayPageEMF(HANDLE SpoolFileHandle, HANDLE hemf, out RECT prectDocument, out RECT prectBorder, out RECT prectClip);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiEndPageEMF(HANDLE SpoolFileHandle, uint32 dwOptimization);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiEndDocEMF(HANDLE SpoolFileHandle);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiGetDevmodeForPage(HANDLE SpoolFileHandle, uint32 dwPageNumber, out DEVMODEW* pCurrDM, out DEVMODEW* pLastDM);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GdiResetDCEMF(HANDLE SpoolFileHandle, out DEVMODEW pCurrDM);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetJobAttributes(PWSTR pPrinterName, ref DEVMODEW pDevmode, out ATTRIBUTE_INFO_3 pAttributeInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetJobAttributesEx(PWSTR pPrinterName, ref DEVMODEW pDevmode, uint32 dwLevel, out uint8 pAttributeInfo, uint32 nSize, uint32 dwFlags);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreatePrinterIC(HANDLE hPrinter, DEVMODEW* pDevMode);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PlayGdiScriptOnPrinterIC(HANDLE hPrinterIC, ref uint8 pIn, uint32 cIn, out uint8 pOut, uint32 cOut, uint32 ul);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeletePrinterIC(HANDLE hPrinterIC);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DevQueryPrint(HANDLE hPrinter, ref DEVMODEA pDevMode, out uint32 pResID);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE RevertToPrinterSelf();
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImpersonatePrinterClient(HANDLE hToken);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReplyPrinterChangeNotification(HANDLE hPrinter, uint32 fdwChangeFlags, uint32* pdwResult, void* pPrinterNotifyInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReplyPrinterChangeNotificationEx(HANDLE hNotify, uint32 dwColor, uint32 fdwFlags, out uint32 pdwResult, void* pPrinterNotifyInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PartialReplyPrinterChangeNotification(HANDLE hPrinter, PRINTER_NOTIFY_INFO_DATA* pDataSrc);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PRINTER_NOTIFY_INFO* RouterAllocPrinterNotifyInfo(uint32 cPrinterNotifyInfoData);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RouterFreePrinterNotifyInfo(PRINTER_NOTIFY_INFO* pInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BIDI_RESPONSE_CONTAINER* RouterAllocBidiResponseContainer(uint32 Count);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* RouterAllocBidiMem(uint NumBytes);
		[Import("winspool.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RouterFreeBidiResponseContainer(ref BIDI_RESPONSE_CONTAINER pData);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RouterFreeBidiMem(void* pMemPointer);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AppendPrinterNotifyInfoData(ref PRINTER_NOTIFY_INFO pInfoDest, PRINTER_NOTIFY_INFO_DATA* pDataSrc, uint32 fdwFlags);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CallRouterFindFirstPrinterChangeNotification(HANDLE hPrinterRPC, uint32 fdwFilterFlags, uint32 fdwOptions, HANDLE hNotify, ref PRINTER_NOTIFY_OPTIONS pPrinterNotifyOptions);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ProvidorFindFirstPrinterChangeNotification(HANDLE hPrinter, uint32 fdwFlags, uint32 fdwOptions, HANDLE hNotify, void* pPrinterNotifyOptions, void* pvReserved1);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ProvidorFindClosePrinterChangeNotification(HANDLE hPrinter);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SpoolerFindFirstPrinterChangeNotification(HANDLE hPrinter, uint32 fdwFilterFlags, uint32 fdwOptions, void* pPrinterNotifyOptions, void* pvReserved, void* pNotificationConfig, HANDLE* phNotify, HANDLE* phEvent);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SpoolerFindNextPrinterChangeNotification(HANDLE hPrinter, out uint32 pfdwChange, void* pPrinterNotifyOptions, void** ppPrinterNotifyInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SpoolerRefreshPrinterChangeNotification(HANDLE hPrinter, uint32 dwColor, ref PRINTER_NOTIFY_OPTIONS pOptions, PRINTER_NOTIFY_INFO** ppInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SpoolerFreePrinterNotifyInfo(ref PRINTER_NOTIFY_INFO pInfo);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SpoolerFindClosePrinterChangeNotification(HANDLE hPrinter);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SpoolerCopyFileEvent(PWSTR pszPrinterName, PWSTR pszKey, uint32 dwCopyFileEvent);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GenerateCopyFilePaths(PWSTR pszPrinterName, PWSTR pszDirectory, ref uint8 pSplClientInfo, uint32 dwLevel, char16* pszSourceDir, out uint32 pcchSourceDirSize, char16* pszTargetDir, out uint32 pcchTargetDirSize, uint32 dwFlags);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SplPromptUIInUsersSession(HANDLE hPrinter, uint32 JobId, ref SHOWUIPARAMS pUIParams, out uint32 pResponse);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SplIsSessionZero(HANDLE hPrinter, uint32 JobId, out BOOL pIsSessionZero);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddPrintDeviceObject(HANDLE hPrinter, out HANDLE phDeviceObject);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UpdatePrintDeviceObject(HANDLE hPrinter, HANDLE hDeviceObject);
		[Import("spoolss.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemovePrintDeviceObject(HANDLE hDeviceObject);
	}
}
