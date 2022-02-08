using System;

// namespace UI.Controls
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HTREEITEM TVI_ROOT = -65536;
		public const HTREEITEM TVI_FIRST = -65535;
		public const HTREEITEM TVI_LAST = -65534;
		public const HTREEITEM TVI_SORT = -65533;
		public const uint32 BCN_FIRST = 4294966046;
		public const uint32 EM_SCROLLCARET = 183;
		public const uint32 EM_SETLIMITTEXT = 197;
		public const uint32 EM_GETLIMITTEXT = 213;
		public const uint32 EM_POSFROMCHAR = 214;
		public const uint32 EM_CHARFROMPOS = 215;
		public const uint32 FILEOPENORD = 1536;
		public const uint32 MULTIFILEOPENORD = 1537;
		public const uint32 PRINTDLGORD = 1538;
		public const uint32 PRNSETUPDLGORD = 1539;
		public const uint32 FINDDLGORD = 1540;
		public const uint32 REPLACEDLGORD = 1541;
		public const uint32 FONTDLGORD = 1542;
		public const uint32 FORMATDLGORD31 = 1543;
		public const uint32 FORMATDLGORD30 = 1544;
		public const uint32 RUNDLGORD = 1545;
		public const uint32 PAGESETUPDLGORD = 1546;
		public const uint32 NEWFILEOPENORD = 1547;
		public const uint32 PRINTDLGEXORD = 1549;
		public const uint32 PAGESETUPDLGORDMOTIF = 1550;
		public const uint32 COLORMGMTDLGORD = 1551;
		public const uint32 NEWFILEOPENV2ORD = 1552;
		public const uint32 NEWFILEOPENV3ORD = 1553;
		public const uint32 NEWFORMATDLGWITHLINK = 1591;
		public const uint32 IDC_MANAGE_LINK = 1592;
		public const uint32 WM_CTLCOLOR = 25;
		public const uint32 ILDRF_IMAGELOWQUALITY = 1;
		public const uint32 ILDRF_OVERLAYLOWQUALITY = 16;
		public const uint32 ILR_DEFAULT = 0;
		public const uint32 ILR_HORIZONTAL_LEFT = 0;
		public const uint32 ILR_HORIZONTAL_CENTER = 1;
		public const uint32 ILR_HORIZONTAL_RIGHT = 2;
		public const uint32 ILR_VERTICAL_TOP = 0;
		public const uint32 ILR_VERTICAL_CENTER = 16;
		public const uint32 ILR_VERTICAL_BOTTOM = 32;
		public const uint32 ILR_SCALE_CLIP = 0;
		public const uint32 ILR_SCALE_ASPECTRATIO = 256;
		public const uint32 ILGOS_ALWAYS = 0;
		public const uint32 ILGOS_FROMSTANDBY = 1;
		public const uint32 ILFIP_ALWAYS = 0;
		public const uint32 ILFIP_FROMSTANDBY = 1;
		public const uint32 ILDI_PURGE = 1;
		public const uint32 ILDI_STANDBY = 2;
		public const uint32 ILDI_RESETACCESS = 4;
		public const uint32 ILDI_QUERYACCESS = 8;
		public const uint32 MAXPROPPAGES = 100;
		public const uint32 PSP_DEFAULT = 0;
		public const uint32 PSP_DLGINDIRECT = 1;
		public const uint32 PSP_USEHICON = 2;
		public const uint32 PSP_USEICONID = 4;
		public const uint32 PSP_USETITLE = 8;
		public const uint32 PSP_RTLREADING = 16;
		public const uint32 PSP_HASHELP = 32;
		public const uint32 PSP_USEREFPARENT = 64;
		public const uint32 PSP_USECALLBACK = 128;
		public const uint32 PSP_PREMATURE = 1024;
		public const uint32 PSP_HIDEHEADER = 2048;
		public const uint32 PSP_USEHEADERTITLE = 4096;
		public const uint32 PSP_USEHEADERSUBTITLE = 8192;
		public const uint32 PSP_USEFUSIONCONTEXT = 16384;
		public const uint32 PSH_DEFAULT = 0;
		public const uint32 PSH_PROPTITLE = 1;
		public const uint32 PSH_USEHICON = 2;
		public const uint32 PSH_USEICONID = 4;
		public const uint32 PSH_PROPSHEETPAGE = 8;
		public const uint32 PSH_WIZARDHASFINISH = 16;
		public const uint32 PSH_WIZARD = 32;
		public const uint32 PSH_USEPSTARTPAGE = 64;
		public const uint32 PSH_NOAPPLYNOW = 128;
		public const uint32 PSH_USECALLBACK = 256;
		public const uint32 PSH_HASHELP = 512;
		public const uint32 PSH_MODELESS = 1024;
		public const uint32 PSH_RTLREADING = 2048;
		public const uint32 PSH_WIZARDCONTEXTHELP = 4096;
		public const uint32 PSH_WIZARD97 = 8192;
		public const uint32 PSH_WATERMARK = 32768;
		public const uint32 PSH_USEHBMWATERMARK = 65536;
		public const uint32 PSH_USEHPLWATERMARK = 131072;
		public const uint32 PSH_STRETCHWATERMARK = 262144;
		public const uint32 PSH_HEADER = 524288;
		public const uint32 PSH_USEHBMHEADER = 1048576;
		public const uint32 PSH_USEPAGELANG = 2097152;
		public const uint32 PSH_WIZARD_LITE = 4194304;
		public const uint32 PSH_NOCONTEXTHELP = 33554432;
		public const uint32 PSH_AEROWIZARD = 16384;
		public const uint32 PSH_RESIZABLE = 67108864;
		public const uint32 PSH_HEADERBITMAP = 134217728;
		public const uint32 PSH_NOMARGIN = 268435456;
		public const uint32 PSCB_INITIALIZED = 1;
		public const uint32 PSCB_PRECREATE = 2;
		public const uint32 PSCB_BUTTONPRESSED = 3;
		public const uint32 PSNRET_NOERROR = 0;
		public const uint32 PSNRET_INVALID = 1;
		public const uint32 PSNRET_INVALID_NOCHANGEPAGE = 2;
		public const uint32 PSNRET_MESSAGEHANDLED = 3;
		public const uint32 PSM_SETCURSEL = 1125;
		public const uint32 PSM_REMOVEPAGE = 1126;
		public const uint32 PSM_ADDPAGE = 1127;
		public const uint32 PSM_CHANGED = 1128;
		public const uint32 PSM_RESTARTWINDOWS = 1129;
		public const uint32 PSM_REBOOTSYSTEM = 1130;
		public const uint32 PSM_CANCELTOCLOSE = 1131;
		public const uint32 PSM_QUERYSIBLINGS = 1132;
		public const uint32 PSM_UNCHANGED = 1133;
		public const uint32 PSM_APPLY = 1134;
		public const uint32 PSM_SETTITLEA = 1135;
		public const uint32 PSM_SETTITLEW = 1144;
		public const uint32 PSM_SETTITLE = 1144;
		public const uint32 PSM_SETWIZBUTTONS = 1136;
		public const uint32 PSWIZB_BACK = 1;
		public const uint32 PSWIZB_NEXT = 2;
		public const uint32 PSWIZB_FINISH = 4;
		public const uint32 PSWIZB_DISABLEDFINISH = 8;
		public const uint32 PSWIZBF_ELEVATIONREQUIRED = 1;
		public const uint32 PSWIZB_CANCEL = 16;
		public const uint32 PSM_PRESSBUTTON = 1137;
		public const uint32 PSBTN_BACK = 0;
		public const uint32 PSBTN_NEXT = 1;
		public const uint32 PSBTN_FINISH = 2;
		public const uint32 PSBTN_OK = 3;
		public const uint32 PSBTN_APPLYNOW = 4;
		public const uint32 PSBTN_CANCEL = 5;
		public const uint32 PSBTN_HELP = 6;
		public const uint32 PSBTN_MAX = 6;
		public const uint32 PSM_SETCURSELID = 1138;
		public const uint32 PSM_SETFINISHTEXTA = 1139;
		public const uint32 PSM_SETFINISHTEXTW = 1145;
		public const uint32 PSM_SETFINISHTEXT = 1145;
		public const uint32 PSM_GETTABCONTROL = 1140;
		public const uint32 PSM_ISDIALOGMESSAGE = 1141;
		public const uint32 PSM_GETCURRENTPAGEHWND = 1142;
		public const uint32 PSM_INSERTPAGE = 1143;
		public const uint32 PSM_SETHEADERTITLEA = 1149;
		public const uint32 PSM_SETHEADERTITLEW = 1150;
		public const uint32 PSM_SETHEADERTITLE = 1150;
		public const uint32 PSM_SETHEADERSUBTITLEA = 1151;
		public const uint32 PSM_SETHEADERSUBTITLEW = 1152;
		public const uint32 PSM_SETHEADERSUBTITLE = 1152;
		public const uint32 PSM_HWNDTOINDEX = 1153;
		public const uint32 PSM_INDEXTOHWND = 1154;
		public const uint32 PSM_PAGETOINDEX = 1155;
		public const uint32 PSM_INDEXTOPAGE = 1156;
		public const uint32 PSM_IDTOINDEX = 1157;
		public const uint32 PSM_INDEXTOID = 1158;
		public const uint32 PSM_GETRESULT = 1159;
		public const uint32 PSM_RECALCPAGESIZES = 1160;
		public const uint32 PSM_SETNEXTTEXTW = 1161;
		public const uint32 PSM_SETNEXTTEXT = 1161;
		public const uint32 PSWIZB_SHOW = 0;
		public const uint32 PSWIZB_RESTORE = 1;
		public const uint32 PSM_SHOWWIZBUTTONS = 1162;
		public const uint32 PSM_ENABLEWIZBUTTONS = 1163;
		public const uint32 PSM_SETBUTTONTEXTW = 1164;
		public const uint32 PSM_SETBUTTONTEXT = 1164;
		public const uint32 ID_PSRESTARTWINDOWS = 2;
		public const uint32 WIZ_CXDLG = 276;
		public const uint32 WIZ_CYDLG = 140;
		public const uint32 WIZ_CXBMP = 80;
		public const uint32 WIZ_BODYX = 92;
		public const uint32 WIZ_BODYCX = 184;
		public const uint32 PROP_SM_CXDLG = 212;
		public const uint32 PROP_SM_CYDLG = 188;
		public const uint32 PROP_MED_CXDLG = 227;
		public const uint32 PROP_MED_CYDLG = 215;
		public const uint32 PROP_LG_CXDLG = 252;
		public const uint32 PROP_LG_CYDLG = 218;
		public const uint32 DA_LAST = 2147483647;
		public const int32 DA_ERR = -1;
		public const uint32 DSA_APPEND = 2147483647;
		public const int32 DSA_ERR = -1;
		public const uint32 DPAM_SORTED = 1;
		public const uint32 DPAM_NORMAL = 2;
		public const uint32 DPAM_UNION = 4;
		public const uint32 DPAM_INTERSECT = 8;
		public const uint32 DPAS_SORTED = 1;
		public const uint32 DPAS_INSERTBEFORE = 2;
		public const uint32 DPAS_INSERTAFTER = 4;
		public const uint32 DPA_APPEND = 2147483647;
		public const int32 DPA_ERR = -1;
		public const uint32 MAX_THEMECOLOR = 64;
		public const uint32 MAX_THEMESIZE = 64;
		public const uint32 DTBG_CLIPRECT = 1;
		public const uint32 DTBG_DRAWSOLID = 2;
		public const uint32 DTBG_OMITBORDER = 4;
		public const uint32 DTBG_OMITCONTENT = 8;
		public const uint32 DTBG_COMPUTINGREGION = 16;
		public const uint32 DTBG_MIRRORDC = 32;
		public const uint32 DTBG_NOMIRROR = 64;
		public const uint32 DTT_GRAYED = 1;
		public const uint32 DTT_FLAGS2VALIDBITS = 1;
		public const uint32 HTTB_BACKGROUNDSEG = 0;
		public const uint32 HTTB_FIXEDBORDER = 2;
		public const uint32 HTTB_CAPTION = 4;
		public const uint32 HTTB_RESIZINGBORDER_LEFT = 16;
		public const uint32 HTTB_RESIZINGBORDER_TOP = 32;
		public const uint32 HTTB_RESIZINGBORDER_RIGHT = 64;
		public const uint32 HTTB_RESIZINGBORDER_BOTTOM = 128;
		public const uint32 HTTB_SIZINGTEMPLATE = 256;
		public const uint32 HTTB_SYSTEMSIZINGMARGINS = 512;
		public const uint32 MAX_INTLIST_COUNT = 402;
		public const uint32 ETDT_DISABLE = 1;
		public const uint32 ETDT_ENABLE = 2;
		public const uint32 ETDT_USETABTEXTURE = 4;
		public const uint32 ETDT_USEAEROWIZARDTABTEXTURE = 8;
		public const uint32 WTNCA_NODRAWCAPTION = 1;
		public const uint32 WTNCA_NODRAWICON = 2;
		public const uint32 WTNCA_NOSYSMENU = 4;
		public const uint32 WTNCA_NOMIRRORHELP = 8;
		public const uint32 ODT_HEADER = 100;
		public const uint32 LVM_FIRST = 4096;
		public const uint32 TV_FIRST = 4352;
		public const uint32 HDM_FIRST = 4608;
		public const uint32 TCM_FIRST = 4864;
		public const uint32 PGM_FIRST = 5120;
		public const uint32 ECM_FIRST = 5376;
		public const uint32 BCM_FIRST = 5632;
		public const uint32 CBM_FIRST = 5888;
		public const uint32 CCM_FIRST = 8192;
		public const uint32 CCM_LAST = 8704;
		public const uint32 CCM_SETBKCOLOR = 8193;
		public const uint32 CCM_SETCOLORSCHEME = 8194;
		public const uint32 CCM_GETCOLORSCHEME = 8195;
		public const uint32 CCM_GETDROPTARGET = 8196;
		public const uint32 CCM_SETUNICODEFORMAT = 8197;
		public const uint32 CCM_GETUNICODEFORMAT = 8198;
		public const uint32 COMCTL32_VERSION = 6;
		public const uint32 CCM_SETVERSION = 8199;
		public const uint32 CCM_GETVERSION = 8200;
		public const uint32 CCM_SETNOTIFYWINDOW = 8201;
		public const uint32 CCM_SETWINDOWTHEME = 8203;
		public const uint32 CCM_DPISCALE = 8204;
		public const uint32 INFOTIPSIZE = 1024;
		public const uint32 MSGF_COMMCTRL_BEGINDRAG = 16896;
		public const uint32 MSGF_COMMCTRL_SIZEHEADER = 16897;
		public const uint32 MSGF_COMMCTRL_DRAGSELECT = 16898;
		public const uint32 MSGF_COMMCTRL_TOOLBARCUST = 16899;
		public const uint32 CDRF_DODEFAULT = 0;
		public const uint32 CDRF_NEWFONT = 2;
		public const uint32 CDRF_SKIPDEFAULT = 4;
		public const uint32 CDRF_DOERASE = 8;
		public const uint32 CDRF_SKIPPOSTPAINT = 256;
		public const uint32 CDRF_NOTIFYPOSTPAINT = 16;
		public const uint32 CDRF_NOTIFYITEMDRAW = 32;
		public const uint32 CDRF_NOTIFYSUBITEMDRAW = 32;
		public const uint32 CDRF_NOTIFYPOSTERASE = 64;
		public const uint32 CDDS_POSTERASE = 4;
		public const uint32 CDDS_ITEM = 65536;
		public const uint32 CDIS_SELECTED = 1;
		public const uint32 CDIS_GRAYED = 2;
		public const uint32 CDIS_DISABLED = 4;
		public const uint32 CDIS_CHECKED = 8;
		public const uint32 CDIS_FOCUS = 16;
		public const uint32 CDIS_DEFAULT = 32;
		public const uint32 CDIS_HOT = 64;
		public const uint32 CDIS_MARKED = 128;
		public const uint32 CDIS_INDETERMINATE = 256;
		public const uint32 CDIS_SHOWKEYBOARDCUES = 512;
		public const uint32 CDIS_NEARHOT = 1024;
		public const uint32 CDIS_OTHERSIDEHOT = 2048;
		public const uint32 CDIS_DROPHILITED = 4096;
		public const uint32 NM_GETCUSTOMSPLITRECT = 4294966049;
		public const int32 CLR_NONE = -1;
		public const int32 CLR_DEFAULT = -16777216;
		public const uint32 ILD_TRANSPARENT = 1;
		public const uint32 ILD_IMAGE = 32;
		public const uint32 ILD_ROP = 64;
		public const uint32 ILD_BLEND25 = 2;
		public const uint32 ILD_OVERLAYMASK = 3840;
		public const uint32 ILD_PRESERVEALPHA = 4096;
		public const uint32 ILD_SCALE = 8192;
		public const uint32 ILD_DPISCALE = 16384;
		public const uint32 ILD_ASYNC = 32768;
		public const int32 CLR_HILIGHT = -16777216;
		public const uint32 ILS_NORMAL = 0;
		public const uint32 ILS_GLOW = 1;
		public const uint32 ILS_SHADOW = 2;
		public const uint32 ILS_SATURATE = 4;
		public const uint32 ILS_ALPHA = 8;
		public const uint32 ILGT_NORMAL = 0;
		public const uint32 ILGT_ASYNC = 1;
		public const uint32 ILP_NORMAL = 0;
		public const uint32 ILP_DOWNLEVEL = 1;
		public const uint32 HDS_HORZ = 0;
		public const uint32 HDS_BUTTONS = 2;
		public const uint32 HDS_HOTTRACK = 4;
		public const uint32 HDS_HIDDEN = 8;
		public const uint32 HDS_DRAGDROP = 64;
		public const uint32 HDS_FULLDRAG = 128;
		public const uint32 HDS_FILTERBAR = 256;
		public const uint32 HDS_FLAT = 512;
		public const uint32 HDS_CHECKBOXES = 1024;
		public const uint32 HDS_NOSIZING = 2048;
		public const uint32 HDS_OVERFLOW = 4096;
		public const uint32 HDFT_ISSTRING = 0;
		public const uint32 HDFT_ISNUMBER = 1;
		public const uint32 HDFT_ISDATE = 2;
		public const uint32 HDFT_HASNOVALUE = 32768;
		public const uint32 HDF_LEFT = 0;
		public const uint32 HDF_RIGHT = 1;
		public const uint32 HDF_CENTER = 2;
		public const uint32 HDF_JUSTIFYMASK = 3;
		public const uint32 HDF_RTLREADING = 4;
		public const uint32 HDF_BITMAP = 8192;
		public const uint32 HDF_STRING = 16384;
		public const uint32 HDF_OWNERDRAW = 32768;
		public const uint32 HDF_IMAGE = 2048;
		public const uint32 HDF_BITMAP_ON_RIGHT = 4096;
		public const uint32 HDF_SORTUP = 1024;
		public const uint32 HDF_SORTDOWN = 512;
		public const uint32 HDF_CHECKBOX = 64;
		public const uint32 HDF_CHECKED = 128;
		public const uint32 HDF_FIXEDWIDTH = 256;
		public const uint32 HDF_SPLITBUTTON = 16777216;
		public const uint32 HDIS_FOCUSED = 1;
		public const uint32 HDM_GETITEMCOUNT = 4608;
		public const uint32 HDM_INSERTITEMA = 4609;
		public const uint32 HDM_INSERTITEMW = 4618;
		public const uint32 HDM_INSERTITEM = 4618;
		public const uint32 HDM_DELETEITEM = 4610;
		public const uint32 HDM_GETITEMA = 4611;
		public const uint32 HDM_GETITEMW = 4619;
		public const uint32 HDM_GETITEM = 4619;
		public const uint32 HDM_SETITEMA = 4612;
		public const uint32 HDM_SETITEMW = 4620;
		public const uint32 HDM_SETITEM = 4620;
		public const uint32 HDM_LAYOUT = 4613;
		public const uint32 HHT_NOWHERE = 1;
		public const uint32 HHT_ONHEADER = 2;
		public const uint32 HHT_ONDIVIDER = 4;
		public const uint32 HHT_ONDIVOPEN = 8;
		public const uint32 HHT_ONFILTER = 16;
		public const uint32 HHT_ONFILTERBUTTON = 32;
		public const uint32 HHT_ABOVE = 256;
		public const uint32 HHT_BELOW = 512;
		public const uint32 HHT_TORIGHT = 1024;
		public const uint32 HHT_TOLEFT = 2048;
		public const uint32 HHT_ONITEMSTATEICON = 4096;
		public const uint32 HHT_ONDROPDOWN = 8192;
		public const uint32 HHT_ONOVERFLOW = 16384;
		public const uint32 HDSIL_NORMAL = 0;
		public const uint32 HDSIL_STATE = 1;
		public const uint32 HDM_HITTEST = 4614;
		public const uint32 HDM_GETITEMRECT = 4615;
		public const uint32 HDM_SETIMAGELIST = 4616;
		public const uint32 HDM_GETIMAGELIST = 4617;
		public const uint32 HDM_ORDERTOINDEX = 4623;
		public const uint32 HDM_CREATEDRAGIMAGE = 4624;
		public const uint32 HDM_GETORDERARRAY = 4625;
		public const uint32 HDM_SETORDERARRAY = 4626;
		public const uint32 HDM_SETHOTDIVIDER = 4627;
		public const uint32 HDM_SETBITMAPMARGIN = 4628;
		public const uint32 HDM_GETBITMAPMARGIN = 4629;
		public const uint32 HDM_SETUNICODEFORMAT = 8197;
		public const uint32 HDM_GETUNICODEFORMAT = 8198;
		public const uint32 HDM_SETFILTERCHANGETIMEOUT = 4630;
		public const uint32 HDM_EDITFILTER = 4631;
		public const uint32 HDM_CLEARFILTER = 4632;
		public const uint32 HDM_GETITEMDROPDOWNRECT = 4633;
		public const uint32 HDM_GETOVERFLOWRECT = 4634;
		public const uint32 HDM_GETFOCUSEDITEM = 4635;
		public const uint32 HDM_SETFOCUSEDITEM = 4636;
		public const uint32 CMB_MASKED = 2;
		public const uint32 TBSTATE_CHECKED = 1;
		public const uint32 TBSTATE_PRESSED = 2;
		public const uint32 TBSTATE_ENABLED = 4;
		public const uint32 TBSTATE_HIDDEN = 8;
		public const uint32 TBSTATE_INDETERMINATE = 16;
		public const uint32 TBSTATE_WRAP = 32;
		public const uint32 TBSTATE_ELLIPSES = 64;
		public const uint32 TBSTATE_MARKED = 128;
		public const uint32 TBSTYLE_BUTTON = 0;
		public const uint32 TBSTYLE_SEP = 1;
		public const uint32 TBSTYLE_CHECK = 2;
		public const uint32 TBSTYLE_GROUP = 4;
		public const uint32 TBSTYLE_DROPDOWN = 8;
		public const uint32 TBSTYLE_AUTOSIZE = 16;
		public const uint32 TBSTYLE_NOPREFIX = 32;
		public const uint32 TBSTYLE_TOOLTIPS = 256;
		public const uint32 TBSTYLE_WRAPABLE = 512;
		public const uint32 TBSTYLE_ALTDRAG = 1024;
		public const uint32 TBSTYLE_FLAT = 2048;
		public const uint32 TBSTYLE_LIST = 4096;
		public const uint32 TBSTYLE_CUSTOMERASE = 8192;
		public const uint32 TBSTYLE_REGISTERDROP = 16384;
		public const uint32 TBSTYLE_TRANSPARENT = 32768;
		public const uint32 TBSTYLE_EX_DRAWDDARROWS = 1;
		public const uint32 BTNS_BUTTON = 0;
		public const uint32 BTNS_SEP = 1;
		public const uint32 BTNS_CHECK = 2;
		public const uint32 BTNS_GROUP = 4;
		public const uint32 BTNS_DROPDOWN = 8;
		public const uint32 BTNS_AUTOSIZE = 16;
		public const uint32 BTNS_NOPREFIX = 32;
		public const uint32 BTNS_SHOWTEXT = 64;
		public const uint32 BTNS_WHOLEDROPDOWN = 128;
		public const uint32 TBSTYLE_EX_MIXEDBUTTONS = 8;
		public const uint32 TBSTYLE_EX_HIDECLIPPEDBUTTONS = 16;
		public const uint32 TBSTYLE_EX_MULTICOLUMN = 2;
		public const uint32 TBSTYLE_EX_VERTICAL = 4;
		public const uint32 TBSTYLE_EX_DOUBLEBUFFER = 128;
		public const uint32 TBCDRF_NOEDGES = 65536;
		public const uint32 TBCDRF_HILITEHOTTRACK = 131072;
		public const uint32 TBCDRF_NOOFFSET = 262144;
		public const uint32 TBCDRF_NOMARK = 524288;
		public const uint32 TBCDRF_NOETCHEDEFFECT = 1048576;
		public const uint32 TBCDRF_BLENDICON = 2097152;
		public const uint32 TBCDRF_NOBACKGROUND = 4194304;
		public const uint32 TBCDRF_USECDCOLORS = 8388608;
		public const uint32 TB_ENABLEBUTTON = 1025;
		public const uint32 TB_CHECKBUTTON = 1026;
		public const uint32 TB_PRESSBUTTON = 1027;
		public const uint32 TB_HIDEBUTTON = 1028;
		public const uint32 TB_INDETERMINATE = 1029;
		public const uint32 TB_MARKBUTTON = 1030;
		public const uint32 TB_ISBUTTONENABLED = 1033;
		public const uint32 TB_ISBUTTONCHECKED = 1034;
		public const uint32 TB_ISBUTTONPRESSED = 1035;
		public const uint32 TB_ISBUTTONHIDDEN = 1036;
		public const uint32 TB_ISBUTTONINDETERMINATE = 1037;
		public const uint32 TB_ISBUTTONHIGHLIGHTED = 1038;
		public const uint32 TB_SETSTATE = 1041;
		public const uint32 TB_GETSTATE = 1042;
		public const uint32 TB_ADDBITMAP = 1043;
		public const uint32 IDB_STD_SMALL_COLOR = 0;
		public const uint32 IDB_STD_LARGE_COLOR = 1;
		public const uint32 IDB_VIEW_SMALL_COLOR = 4;
		public const uint32 IDB_VIEW_LARGE_COLOR = 5;
		public const uint32 IDB_HIST_SMALL_COLOR = 8;
		public const uint32 IDB_HIST_LARGE_COLOR = 9;
		public const uint32 IDB_HIST_NORMAL = 12;
		public const uint32 IDB_HIST_HOT = 13;
		public const uint32 IDB_HIST_DISABLED = 14;
		public const uint32 IDB_HIST_PRESSED = 15;
		public const uint32 STD_CUT = 0;
		public const uint32 STD_COPY = 1;
		public const uint32 STD_PASTE = 2;
		public const uint32 STD_UNDO = 3;
		public const uint32 STD_REDOW = 4;
		public const uint32 STD_DELETE = 5;
		public const uint32 STD_FILENEW = 6;
		public const uint32 STD_FILEOPEN = 7;
		public const uint32 STD_FILESAVE = 8;
		public const uint32 STD_PRINTPRE = 9;
		public const uint32 STD_PROPERTIES = 10;
		public const uint32 STD_HELP = 11;
		public const uint32 STD_FIND = 12;
		public const uint32 STD_REPLACE = 13;
		public const uint32 STD_PRINT = 14;
		public const uint32 VIEW_LARGEICONS = 0;
		public const uint32 VIEW_SMALLICONS = 1;
		public const uint32 VIEW_LIST = 2;
		public const uint32 VIEW_DETAILS = 3;
		public const uint32 VIEW_SORTNAME = 4;
		public const uint32 VIEW_SORTSIZE = 5;
		public const uint32 VIEW_SORTDATE = 6;
		public const uint32 VIEW_SORTTYPE = 7;
		public const uint32 VIEW_PARENTFOLDER = 8;
		public const uint32 VIEW_NETCONNECT = 9;
		public const uint32 VIEW_NETDISCONNECT = 10;
		public const uint32 VIEW_NEWFOLDER = 11;
		public const uint32 VIEW_VIEWMENU = 12;
		public const uint32 HIST_BACK = 0;
		public const uint32 HIST_FORWARD = 1;
		public const uint32 HIST_FAVORITES = 2;
		public const uint32 HIST_ADDTOFAVORITES = 3;
		public const uint32 HIST_VIEWTREE = 4;
		public const uint32 TB_ADDBUTTONSA = 1044;
		public const uint32 TB_INSERTBUTTONA = 1045;
		public const uint32 TB_DELETEBUTTON = 1046;
		public const uint32 TB_GETBUTTON = 1047;
		public const uint32 TB_BUTTONCOUNT = 1048;
		public const uint32 TB_COMMANDTOINDEX = 1049;
		public const uint32 TB_SAVERESTOREA = 1050;
		public const uint32 TB_SAVERESTOREW = 1100;
		public const uint32 TB_CUSTOMIZE = 1051;
		public const uint32 TB_ADDSTRINGA = 1052;
		public const uint32 TB_ADDSTRINGW = 1101;
		public const uint32 TB_GETITEMRECT = 1053;
		public const uint32 TB_BUTTONSTRUCTSIZE = 1054;
		public const uint32 TB_SETBUTTONSIZE = 1055;
		public const uint32 TB_SETBITMAPSIZE = 1056;
		public const uint32 TB_AUTOSIZE = 1057;
		public const uint32 TB_GETTOOLTIPS = 1059;
		public const uint32 TB_SETTOOLTIPS = 1060;
		public const uint32 TB_SETPARENT = 1061;
		public const uint32 TB_SETROWS = 1063;
		public const uint32 TB_GETROWS = 1064;
		public const uint32 TB_SETCMDID = 1066;
		public const uint32 TB_CHANGEBITMAP = 1067;
		public const uint32 TB_GETBITMAP = 1068;
		public const uint32 TB_GETBUTTONTEXTA = 1069;
		public const uint32 TB_GETBUTTONTEXTW = 1099;
		public const uint32 TB_REPLACEBITMAP = 1070;
		public const uint32 TB_SETINDENT = 1071;
		public const uint32 TB_SETIMAGELIST = 1072;
		public const uint32 TB_GETIMAGELIST = 1073;
		public const uint32 TB_LOADIMAGES = 1074;
		public const uint32 TB_GETRECT = 1075;
		public const uint32 TB_SETHOTIMAGELIST = 1076;
		public const uint32 TB_GETHOTIMAGELIST = 1077;
		public const uint32 TB_SETDISABLEDIMAGELIST = 1078;
		public const uint32 TB_GETDISABLEDIMAGELIST = 1079;
		public const uint32 TB_SETSTYLE = 1080;
		public const uint32 TB_GETSTYLE = 1081;
		public const uint32 TB_GETBUTTONSIZE = 1082;
		public const uint32 TB_SETBUTTONWIDTH = 1083;
		public const uint32 TB_SETMAXTEXTROWS = 1084;
		public const uint32 TB_GETTEXTROWS = 1085;
		public const uint32 TB_GETBUTTONTEXT = 1099;
		public const uint32 TB_SAVERESTORE = 1100;
		public const uint32 TB_ADDSTRING = 1101;
		public const uint32 TB_GETOBJECT = 1086;
		public const uint32 TB_GETHOTITEM = 1095;
		public const uint32 TB_SETHOTITEM = 1096;
		public const uint32 TB_SETANCHORHIGHLIGHT = 1097;
		public const uint32 TB_GETANCHORHIGHLIGHT = 1098;
		public const uint32 TB_MAPACCELERATORA = 1102;
		public const uint32 TB_GETINSERTMARK = 1103;
		public const uint32 TB_SETINSERTMARK = 1104;
		public const uint32 TB_INSERTMARKHITTEST = 1105;
		public const uint32 TB_MOVEBUTTON = 1106;
		public const uint32 TB_GETMAXSIZE = 1107;
		public const uint32 TB_SETEXTENDEDSTYLE = 1108;
		public const uint32 TB_GETEXTENDEDSTYLE = 1109;
		public const uint32 TB_GETPADDING = 1110;
		public const uint32 TB_SETPADDING = 1111;
		public const uint32 TB_SETINSERTMARKCOLOR = 1112;
		public const uint32 TB_GETINSERTMARKCOLOR = 1113;
		public const uint32 TB_SETCOLORSCHEME = 8194;
		public const uint32 TB_GETCOLORSCHEME = 8195;
		public const uint32 TB_SETUNICODEFORMAT = 8197;
		public const uint32 TB_GETUNICODEFORMAT = 8198;
		public const uint32 TB_MAPACCELERATORW = 1114;
		public const uint32 TB_MAPACCELERATOR = 1114;
		public const uint32 TBBF_LARGE = 1;
		public const uint32 TB_GETBITMAPFLAGS = 1065;
		public const uint32 TB_GETBUTTONINFOW = 1087;
		public const uint32 TB_SETBUTTONINFOW = 1088;
		public const uint32 TB_GETBUTTONINFOA = 1089;
		public const uint32 TB_SETBUTTONINFOA = 1090;
		public const uint32 TB_GETBUTTONINFO = 1087;
		public const uint32 TB_SETBUTTONINFO = 1088;
		public const uint32 TB_INSERTBUTTONW = 1091;
		public const uint32 TB_ADDBUTTONSW = 1092;
		public const uint32 TB_HITTEST = 1093;
		public const uint32 TB_INSERTBUTTON = 1091;
		public const uint32 TB_ADDBUTTONS = 1092;
		public const uint32 TB_SETDRAWTEXTFLAGS = 1094;
		public const uint32 TB_GETSTRINGW = 1115;
		public const uint32 TB_GETSTRINGA = 1116;
		public const uint32 TB_GETSTRING = 1115;
		public const uint32 TB_SETBOUNDINGSIZE = 1117;
		public const uint32 TB_SETHOTITEM2 = 1118;
		public const uint32 TB_HASACCELERATOR = 1119;
		public const uint32 TB_SETLISTGAP = 1120;
		public const uint32 TB_GETIMAGELISTCOUNT = 1122;
		public const uint32 TB_GETIDEALSIZE = 1123;
		public const uint32 TBMF_PAD = 1;
		public const uint32 TBMF_BARPAD = 2;
		public const uint32 TBMF_BUTTONSPACING = 4;
		public const uint32 TB_GETMETRICS = 1125;
		public const uint32 TB_SETMETRICS = 1126;
		public const uint32 TB_GETITEMDROPDOWNRECT = 1127;
		public const uint32 TB_SETPRESSEDIMAGELIST = 1128;
		public const uint32 TB_GETPRESSEDIMAGELIST = 1129;
		public const uint32 TB_SETWINDOWTHEME = 8203;
		public const uint32 TBNRF_HIDEHELP = 1;
		public const uint32 TBNRF_ENDCUSTOMIZE = 2;
		public const uint32 TBDDRET_DEFAULT = 0;
		public const uint32 TBDDRET_NODEFAULT = 1;
		public const uint32 TBDDRET_TREATPRESSED = 2;
		public const uint32 RBIM_IMAGELIST = 1;
		public const uint32 RBS_TOOLTIPS = 256;
		public const uint32 RBS_VARHEIGHT = 512;
		public const uint32 RBS_BANDBORDERS = 1024;
		public const uint32 RBS_FIXEDORDER = 2048;
		public const uint32 RBS_REGISTERDROP = 4096;
		public const uint32 RBS_AUTOSIZE = 8192;
		public const uint32 RBS_VERTICALGRIPPER = 16384;
		public const uint32 RBS_DBLCLKTOGGLE = 32768;
		public const uint32 RBBS_BREAK = 1;
		public const uint32 RBBS_FIXEDSIZE = 2;
		public const uint32 RBBS_CHILDEDGE = 4;
		public const uint32 RBBS_HIDDEN = 8;
		public const uint32 RBBS_NOVERT = 16;
		public const uint32 RBBS_FIXEDBMP = 32;
		public const uint32 RBBS_VARIABLEHEIGHT = 64;
		public const uint32 RBBS_GRIPPERALWAYS = 128;
		public const uint32 RBBS_NOGRIPPER = 256;
		public const uint32 RBBS_USECHEVRON = 512;
		public const uint32 RBBS_HIDETITLE = 1024;
		public const uint32 RBBS_TOPALIGN = 2048;
		public const uint32 RBBIM_STYLE = 1;
		public const uint32 RBBIM_COLORS = 2;
		public const uint32 RBBIM_TEXT = 4;
		public const uint32 RBBIM_IMAGE = 8;
		public const uint32 RBBIM_CHILD = 16;
		public const uint32 RBBIM_CHILDSIZE = 32;
		public const uint32 RBBIM_SIZE = 64;
		public const uint32 RBBIM_BACKGROUND = 128;
		public const uint32 RBBIM_ID = 256;
		public const uint32 RBBIM_IDEALSIZE = 512;
		public const uint32 RBBIM_LPARAM = 1024;
		public const uint32 RBBIM_HEADERSIZE = 2048;
		public const uint32 RBBIM_CHEVRONLOCATION = 4096;
		public const uint32 RBBIM_CHEVRONSTATE = 8192;
		public const uint32 RB_INSERTBANDA = 1025;
		public const uint32 RB_DELETEBAND = 1026;
		public const uint32 RB_GETBARINFO = 1027;
		public const uint32 RB_SETBARINFO = 1028;
		public const uint32 RB_SETBANDINFOA = 1030;
		public const uint32 RB_SETPARENT = 1031;
		public const uint32 RB_HITTEST = 1032;
		public const uint32 RB_GETRECT = 1033;
		public const uint32 RB_INSERTBANDW = 1034;
		public const uint32 RB_SETBANDINFOW = 1035;
		public const uint32 RB_GETBANDCOUNT = 1036;
		public const uint32 RB_GETROWCOUNT = 1037;
		public const uint32 RB_GETROWHEIGHT = 1038;
		public const uint32 RB_IDTOINDEX = 1040;
		public const uint32 RB_GETTOOLTIPS = 1041;
		public const uint32 RB_SETTOOLTIPS = 1042;
		public const uint32 RB_SETBKCOLOR = 1043;
		public const uint32 RB_GETBKCOLOR = 1044;
		public const uint32 RB_SETTEXTCOLOR = 1045;
		public const uint32 RB_GETTEXTCOLOR = 1046;
		public const uint32 RBSTR_CHANGERECT = 1;
		public const uint32 RB_SIZETORECT = 1047;
		public const uint32 RB_SETCOLORSCHEME = 8194;
		public const uint32 RB_GETCOLORSCHEME = 8195;
		public const uint32 RB_INSERTBAND = 1034;
		public const uint32 RB_SETBANDINFO = 1035;
		public const uint32 RB_BEGINDRAG = 1048;
		public const uint32 RB_ENDDRAG = 1049;
		public const uint32 RB_DRAGMOVE = 1050;
		public const uint32 RB_GETBARHEIGHT = 1051;
		public const uint32 RB_GETBANDINFOW = 1052;
		public const uint32 RB_GETBANDINFOA = 1053;
		public const uint32 RB_GETBANDINFO = 1052;
		public const uint32 RB_MINIMIZEBAND = 1054;
		public const uint32 RB_MAXIMIZEBAND = 1055;
		public const uint32 RB_GETDROPTARGET = 8196;
		public const uint32 RB_GETBANDBORDERS = 1058;
		public const uint32 RB_SHOWBAND = 1059;
		public const uint32 RB_SETPALETTE = 1061;
		public const uint32 RB_GETPALETTE = 1062;
		public const uint32 RB_MOVEBAND = 1063;
		public const uint32 RB_SETUNICODEFORMAT = 8197;
		public const uint32 RB_GETUNICODEFORMAT = 8198;
		public const uint32 RB_GETBANDMARGINS = 1064;
		public const uint32 RB_SETWINDOWTHEME = 8203;
		public const uint32 RB_SETEXTENDEDSTYLE = 1065;
		public const uint32 RB_GETEXTENDEDSTYLE = 1066;
		public const uint32 RB_PUSHCHEVRON = 1067;
		public const uint32 RB_SETBANDWIDTH = 1068;
		public const uint32 RBAB_AUTOSIZE = 1;
		public const uint32 RBAB_ADDBAND = 2;
		public const uint32 RBHT_NOWHERE = 1;
		public const uint32 RBHT_CAPTION = 2;
		public const uint32 RBHT_CLIENT = 3;
		public const uint32 RBHT_GRABBER = 4;
		public const uint32 RBHT_CHEVRON = 8;
		public const uint32 RBHT_SPLITTER = 16;
		public const uint32 TTS_ALWAYSTIP = 1;
		public const uint32 TTS_NOPREFIX = 2;
		public const uint32 TTS_NOANIMATE = 16;
		public const uint32 TTS_NOFADE = 32;
		public const uint32 TTS_BALLOON = 64;
		public const uint32 TTS_CLOSE = 128;
		public const uint32 TTS_USEVISUALSTYLE = 256;
		public const uint32 TTF_DI_SETITEM = 32768;
		public const uint32 TTDT_AUTOMATIC = 0;
		public const uint32 TTDT_RESHOW = 1;
		public const uint32 TTDT_AUTOPOP = 2;
		public const uint32 TTDT_INITIAL = 3;
		public const uint32 TTM_ACTIVATE = 1025;
		public const uint32 TTM_SETDELAYTIME = 1027;
		public const uint32 TTM_ADDTOOLA = 1028;
		public const uint32 TTM_ADDTOOLW = 1074;
		public const uint32 TTM_DELTOOLA = 1029;
		public const uint32 TTM_DELTOOLW = 1075;
		public const uint32 TTM_NEWTOOLRECTA = 1030;
		public const uint32 TTM_NEWTOOLRECTW = 1076;
		public const uint32 TTM_RELAYEVENT = 1031;
		public const uint32 TTM_GETTOOLINFOA = 1032;
		public const uint32 TTM_GETTOOLINFOW = 1077;
		public const uint32 TTM_SETTOOLINFOA = 1033;
		public const uint32 TTM_SETTOOLINFOW = 1078;
		public const uint32 TTM_HITTESTA = 1034;
		public const uint32 TTM_HITTESTW = 1079;
		public const uint32 TTM_GETTEXTA = 1035;
		public const uint32 TTM_GETTEXTW = 1080;
		public const uint32 TTM_UPDATETIPTEXTA = 1036;
		public const uint32 TTM_UPDATETIPTEXTW = 1081;
		public const uint32 TTM_GETTOOLCOUNT = 1037;
		public const uint32 TTM_ENUMTOOLSA = 1038;
		public const uint32 TTM_ENUMTOOLSW = 1082;
		public const uint32 TTM_GETCURRENTTOOLA = 1039;
		public const uint32 TTM_GETCURRENTTOOLW = 1083;
		public const uint32 TTM_WINDOWFROMPOINT = 1040;
		public const uint32 TTM_TRACKACTIVATE = 1041;
		public const uint32 TTM_TRACKPOSITION = 1042;
		public const uint32 TTM_SETTIPBKCOLOR = 1043;
		public const uint32 TTM_SETTIPTEXTCOLOR = 1044;
		public const uint32 TTM_GETDELAYTIME = 1045;
		public const uint32 TTM_GETTIPBKCOLOR = 1046;
		public const uint32 TTM_GETTIPTEXTCOLOR = 1047;
		public const uint32 TTM_SETMAXTIPWIDTH = 1048;
		public const uint32 TTM_GETMAXTIPWIDTH = 1049;
		public const uint32 TTM_SETMARGIN = 1050;
		public const uint32 TTM_GETMARGIN = 1051;
		public const uint32 TTM_POP = 1052;
		public const uint32 TTM_UPDATE = 1053;
		public const uint32 TTM_GETBUBBLESIZE = 1054;
		public const uint32 TTM_ADJUSTRECT = 1055;
		public const uint32 TTM_SETTITLEA = 1056;
		public const uint32 TTM_SETTITLEW = 1057;
		public const uint32 TTM_POPUP = 1058;
		public const uint32 TTM_GETTITLE = 1059;
		public const uint32 TTM_ADDTOOL = 1074;
		public const uint32 TTM_DELTOOL = 1075;
		public const uint32 TTM_NEWTOOLRECT = 1076;
		public const uint32 TTM_GETTOOLINFO = 1077;
		public const uint32 TTM_SETTOOLINFO = 1078;
		public const uint32 TTM_HITTEST = 1079;
		public const uint32 TTM_GETTEXT = 1080;
		public const uint32 TTM_UPDATETIPTEXT = 1081;
		public const uint32 TTM_ENUMTOOLS = 1082;
		public const uint32 TTM_GETCURRENTTOOL = 1083;
		public const uint32 TTM_SETTITLE = 1057;
		public const uint32 TTM_SETWINDOWTHEME = 8203;
		public const uint32 SBARS_SIZEGRIP = 256;
		public const uint32 SBARS_TOOLTIPS = 2048;
		public const uint32 SBT_TOOLTIPS = 2048;
		public const uint32 SB_SETTEXTA = 1025;
		public const uint32 SB_SETTEXTW = 1035;
		public const uint32 SB_GETTEXTA = 1026;
		public const uint32 SB_GETTEXTW = 1037;
		public const uint32 SB_GETTEXTLENGTHA = 1027;
		public const uint32 SB_GETTEXTLENGTHW = 1036;
		public const uint32 SB_GETTEXT = 1037;
		public const uint32 SB_SETTEXT = 1035;
		public const uint32 SB_GETTEXTLENGTH = 1036;
		public const uint32 SB_SETPARTS = 1028;
		public const uint32 SB_GETPARTS = 1030;
		public const uint32 SB_GETBORDERS = 1031;
		public const uint32 SB_SETMINHEIGHT = 1032;
		public const uint32 SB_SIMPLE = 1033;
		public const uint32 SB_GETRECT = 1034;
		public const uint32 SB_ISSIMPLE = 1038;
		public const uint32 SB_SETICON = 1039;
		public const uint32 SB_SETTIPTEXTA = 1040;
		public const uint32 SB_SETTIPTEXTW = 1041;
		public const uint32 SB_GETTIPTEXTA = 1042;
		public const uint32 SB_GETTIPTEXTW = 1043;
		public const uint32 SB_GETICON = 1044;
		public const uint32 SB_SETUNICODEFORMAT = 8197;
		public const uint32 SB_GETUNICODEFORMAT = 8198;
		public const uint32 SBT_OWNERDRAW = 4096;
		public const uint32 SBT_NOBORDERS = 256;
		public const uint32 SBT_POPOUT = 512;
		public const uint32 SBT_RTLREADING = 1024;
		public const uint32 SBT_NOTABPARSING = 2048;
		public const uint32 SB_SETBKCOLOR = 8193;
		public const uint32 SB_SIMPLEID = 255;
		public const uint32 TBS_AUTOTICKS = 1;
		public const uint32 TBS_VERT = 2;
		public const uint32 TBS_HORZ = 0;
		public const uint32 TBS_TOP = 4;
		public const uint32 TBS_BOTTOM = 0;
		public const uint32 TBS_LEFT = 4;
		public const uint32 TBS_RIGHT = 0;
		public const uint32 TBS_BOTH = 8;
		public const uint32 TBS_NOTICKS = 16;
		public const uint32 TBS_ENABLESELRANGE = 32;
		public const uint32 TBS_FIXEDLENGTH = 64;
		public const uint32 TBS_NOTHUMB = 128;
		public const uint32 TBS_TOOLTIPS = 256;
		public const uint32 TBS_REVERSED = 512;
		public const uint32 TBS_DOWNISLEFT = 1024;
		public const uint32 TBS_NOTIFYBEFOREMOVE = 2048;
		public const uint32 TBS_TRANSPARENTBKGND = 4096;
		public const uint32 TBM_GETRANGEMIN = 1025;
		public const uint32 TBM_GETRANGEMAX = 1026;
		public const uint32 TBM_GETTIC = 1027;
		public const uint32 TBM_SETTIC = 1028;
		public const uint32 TBM_SETPOS = 1029;
		public const uint32 TBM_SETRANGE = 1030;
		public const uint32 TBM_SETRANGEMIN = 1031;
		public const uint32 TBM_SETRANGEMAX = 1032;
		public const uint32 TBM_CLEARTICS = 1033;
		public const uint32 TBM_SETSEL = 1034;
		public const uint32 TBM_SETSELSTART = 1035;
		public const uint32 TBM_SETSELEND = 1036;
		public const uint32 TBM_GETPTICS = 1038;
		public const uint32 TBM_GETTICPOS = 1039;
		public const uint32 TBM_GETNUMTICS = 1040;
		public const uint32 TBM_GETSELSTART = 1041;
		public const uint32 TBM_GETSELEND = 1042;
		public const uint32 TBM_CLEARSEL = 1043;
		public const uint32 TBM_SETTICFREQ = 1044;
		public const uint32 TBM_SETPAGESIZE = 1045;
		public const uint32 TBM_GETPAGESIZE = 1046;
		public const uint32 TBM_SETLINESIZE = 1047;
		public const uint32 TBM_GETLINESIZE = 1048;
		public const uint32 TBM_GETTHUMBRECT = 1049;
		public const uint32 TBM_GETCHANNELRECT = 1050;
		public const uint32 TBM_SETTHUMBLENGTH = 1051;
		public const uint32 TBM_GETTHUMBLENGTH = 1052;
		public const uint32 TBM_SETTOOLTIPS = 1053;
		public const uint32 TBM_GETTOOLTIPS = 1054;
		public const uint32 TBM_SETTIPSIDE = 1055;
		public const uint32 TBTS_TOP = 0;
		public const uint32 TBTS_LEFT = 1;
		public const uint32 TBTS_BOTTOM = 2;
		public const uint32 TBTS_RIGHT = 3;
		public const uint32 TBM_SETBUDDY = 1056;
		public const uint32 TBM_GETBUDDY = 1057;
		public const uint32 TBM_SETPOSNOTIFY = 1058;
		public const uint32 TBM_SETUNICODEFORMAT = 8197;
		public const uint32 TBM_GETUNICODEFORMAT = 8198;
		public const uint32 TB_LINEUP = 0;
		public const uint32 TB_LINEDOWN = 1;
		public const uint32 TB_PAGEUP = 2;
		public const uint32 TB_PAGEDOWN = 3;
		public const uint32 TB_THUMBPOSITION = 4;
		public const uint32 TB_THUMBTRACK = 5;
		public const uint32 TB_TOP = 6;
		public const uint32 TB_BOTTOM = 7;
		public const uint32 TB_ENDTRACK = 8;
		public const uint32 TBCD_TICS = 1;
		public const uint32 TBCD_THUMB = 2;
		public const uint32 TBCD_CHANNEL = 3;
		public const uint32 DL_CURSORSET = 0;
		public const uint32 DL_STOPCURSOR = 1;
		public const uint32 DL_COPYCURSOR = 2;
		public const uint32 DL_MOVECURSOR = 3;
		public const uint32 UD_MAXVAL = 32767;
		public const uint32 UDS_WRAP = 1;
		public const uint32 UDS_SETBUDDYINT = 2;
		public const uint32 UDS_ALIGNRIGHT = 4;
		public const uint32 UDS_ALIGNLEFT = 8;
		public const uint32 UDS_AUTOBUDDY = 16;
		public const uint32 UDS_ARROWKEYS = 32;
		public const uint32 UDS_HORZ = 64;
		public const uint32 UDS_NOTHOUSANDS = 128;
		public const uint32 UDS_HOTTRACK = 256;
		public const uint32 UDM_SETRANGE = 1125;
		public const uint32 UDM_GETRANGE = 1126;
		public const uint32 UDM_SETPOS = 1127;
		public const uint32 UDM_GETPOS = 1128;
		public const uint32 UDM_SETBUDDY = 1129;
		public const uint32 UDM_GETBUDDY = 1130;
		public const uint32 UDM_SETACCEL = 1131;
		public const uint32 UDM_GETACCEL = 1132;
		public const uint32 UDM_SETBASE = 1133;
		public const uint32 UDM_GETBASE = 1134;
		public const uint32 UDM_SETRANGE32 = 1135;
		public const uint32 UDM_GETRANGE32 = 1136;
		public const uint32 UDM_SETUNICODEFORMAT = 8197;
		public const uint32 UDM_GETUNICODEFORMAT = 8198;
		public const uint32 UDM_SETPOS32 = 1137;
		public const uint32 UDM_GETPOS32 = 1138;
		public const uint32 PBS_SMOOTH = 1;
		public const uint32 PBS_VERTICAL = 4;
		public const uint32 PBM_SETRANGE = 1025;
		public const uint32 PBM_SETPOS = 1026;
		public const uint32 PBM_DELTAPOS = 1027;
		public const uint32 PBM_SETSTEP = 1028;
		public const uint32 PBM_STEPIT = 1029;
		public const uint32 PBM_SETRANGE32 = 1030;
		public const uint32 PBM_GETRANGE = 1031;
		public const uint32 PBM_GETPOS = 1032;
		public const uint32 PBM_SETBARCOLOR = 1033;
		public const uint32 PBM_SETBKCOLOR = 8193;
		public const uint32 PBS_MARQUEE = 8;
		public const uint32 PBM_SETMARQUEE = 1034;
		public const uint32 PBS_SMOOTHREVERSE = 16;
		public const uint32 PBM_GETSTEP = 1037;
		public const uint32 PBM_GETBKCOLOR = 1038;
		public const uint32 PBM_GETBARCOLOR = 1039;
		public const uint32 PBM_SETSTATE = 1040;
		public const uint32 PBM_GETSTATE = 1041;
		public const uint32 PBST_NORMAL = 1;
		public const uint32 PBST_ERROR = 2;
		public const uint32 PBST_PAUSED = 3;
		public const uint32 HOTKEYF_SHIFT = 1;
		public const uint32 HOTKEYF_CONTROL = 2;
		public const uint32 HOTKEYF_ALT = 4;
		public const uint32 HOTKEYF_EXT = 128;
		public const uint32 HKCOMB_NONE = 1;
		public const uint32 HKCOMB_S = 2;
		public const uint32 HKCOMB_C = 4;
		public const uint32 HKCOMB_A = 8;
		public const uint32 HKCOMB_SC = 16;
		public const uint32 HKCOMB_SA = 32;
		public const uint32 HKCOMB_CA = 64;
		public const uint32 HKCOMB_SCA = 128;
		public const uint32 HKM_SETHOTKEY = 1025;
		public const uint32 HKM_GETHOTKEY = 1026;
		public const uint32 HKM_SETRULES = 1027;
		public const int32 CCS_TOP = 1;
		public const int32 CCS_NOMOVEY = 2;
		public const int32 CCS_BOTTOM = 3;
		public const int32 CCS_NORESIZE = 4;
		public const int32 CCS_NOPARENTALIGN = 8;
		public const int32 CCS_ADJUSTABLE = 32;
		public const int32 CCS_NODIVIDER = 64;
		public const int32 CCS_VERT = 128;
		public const int32 INVALID_LINK_INDEX = -1;
		public const uint32 MAX_LINKID_TEXT = 48;
		public const uint32 LWS_TRANSPARENT = 1;
		public const uint32 LWS_IGNORERETURN = 2;
		public const uint32 LWS_NOPREFIX = 4;
		public const uint32 LWS_USEVISUALSTYLE = 8;
		public const uint32 LWS_USECUSTOMTEXT = 16;
		public const uint32 LWS_RIGHT = 32;
		public const uint32 LIF_ITEMINDEX = 1;
		public const uint32 LIF_STATE = 2;
		public const uint32 LIF_ITEMID = 4;
		public const uint32 LIF_URL = 8;
		public const uint32 LIS_FOCUSED = 1;
		public const uint32 LIS_ENABLED = 2;
		public const uint32 LIS_VISITED = 4;
		public const uint32 LIS_HOTTRACK = 8;
		public const uint32 LIS_DEFAULTCOLORS = 16;
		public const uint32 LM_HITTEST = 1792;
		public const uint32 LM_GETIDEALHEIGHT = 1793;
		public const uint32 LM_SETITEM = 1794;
		public const uint32 LM_GETITEM = 1795;
		public const uint32 LM_GETIDEALSIZE = 1793;
		public const uint32 LVS_ICON = 0;
		public const uint32 LVS_REPORT = 1;
		public const uint32 LVS_SMALLICON = 2;
		public const uint32 LVS_LIST = 3;
		public const uint32 LVS_TYPEMASK = 3;
		public const uint32 LVS_SINGLESEL = 4;
		public const uint32 LVS_SHOWSELALWAYS = 8;
		public const uint32 LVS_SORTASCENDING = 16;
		public const uint32 LVS_SORTDESCENDING = 32;
		public const uint32 LVS_SHAREIMAGELISTS = 64;
		public const uint32 LVS_NOLABELWRAP = 128;
		public const uint32 LVS_AUTOARRANGE = 256;
		public const uint32 LVS_EDITLABELS = 512;
		public const uint32 LVS_OWNERDATA = 4096;
		public const uint32 LVS_NOSCROLL = 8192;
		public const uint32 LVS_TYPESTYLEMASK = 64512;
		public const uint32 LVS_ALIGNTOP = 0;
		public const uint32 LVS_ALIGNLEFT = 2048;
		public const uint32 LVS_ALIGNMASK = 3072;
		public const uint32 LVS_OWNERDRAWFIXED = 1024;
		public const uint32 LVS_NOCOLUMNHEADER = 16384;
		public const uint32 LVS_NOSORTHEADER = 32768;
		public const uint32 LVM_SETUNICODEFORMAT = 8197;
		public const uint32 LVM_GETUNICODEFORMAT = 8198;
		public const uint32 LVM_GETBKCOLOR = 4096;
		public const uint32 LVM_SETBKCOLOR = 4097;
		public const uint32 LVM_GETIMAGELIST = 4098;
		public const uint32 LVSIL_NORMAL = 0;
		public const uint32 LVSIL_SMALL = 1;
		public const uint32 LVSIL_STATE = 2;
		public const uint32 LVSIL_GROUPHEADER = 3;
		public const uint32 LVM_SETIMAGELIST = 4099;
		public const uint32 LVM_GETITEMCOUNT = 4100;
		public const uint32 LVIF_TEXT = 1;
		public const uint32 LVIF_IMAGE = 2;
		public const uint32 LVIF_PARAM = 4;
		public const uint32 LVIF_STATE = 8;
		public const uint32 LVIF_INDENT = 16;
		public const uint32 LVIF_NORECOMPUTE = 2048;
		public const uint32 LVIF_GROUPID = 256;
		public const uint32 LVIF_COLUMNS = 512;
		public const uint32 LVIF_COLFMT = 65536;
		public const uint32 LVIS_FOCUSED = 1;
		public const uint32 LVIS_SELECTED = 2;
		public const uint32 LVIS_CUT = 4;
		public const uint32 LVIS_DROPHILITED = 8;
		public const uint32 LVIS_GLOW = 16;
		public const uint32 LVIS_ACTIVATING = 32;
		public const uint32 LVIS_OVERLAYMASK = 3840;
		public const uint32 LVIS_STATEIMAGEMASK = 61440;
		public const int32 I_INDENTCALLBACK = -1;
		public const int32 I_IMAGECALLBACK = -1;
		public const int32 I_IMAGENONE = -2;
		public const uint32 LVM_GETITEMA = 4101;
		public const uint32 LVM_GETITEMW = 4171;
		public const uint32 LVM_GETITEM = 4171;
		public const uint32 LVM_SETITEMA = 4102;
		public const uint32 LVM_SETITEMW = 4172;
		public const uint32 LVM_SETITEM = 4172;
		public const uint32 LVM_INSERTITEMA = 4103;
		public const uint32 LVM_INSERTITEMW = 4173;
		public const uint32 LVM_INSERTITEM = 4173;
		public const uint32 LVM_DELETEITEM = 4104;
		public const uint32 LVM_DELETEALLITEMS = 4105;
		public const uint32 LVM_GETCALLBACKMASK = 4106;
		public const uint32 LVM_SETCALLBACKMASK = 4107;
		public const uint32 LVNI_ALL = 0;
		public const uint32 LVNI_FOCUSED = 1;
		public const uint32 LVNI_SELECTED = 2;
		public const uint32 LVNI_CUT = 4;
		public const uint32 LVNI_DROPHILITED = 8;
		public const uint32 LVNI_VISIBLEORDER = 16;
		public const uint32 LVNI_PREVIOUS = 32;
		public const uint32 LVNI_VISIBLEONLY = 64;
		public const uint32 LVNI_SAMEGROUPONLY = 128;
		public const uint32 LVNI_ABOVE = 256;
		public const uint32 LVNI_BELOW = 512;
		public const uint32 LVNI_TOLEFT = 1024;
		public const uint32 LVNI_TORIGHT = 2048;
		public const uint32 LVM_GETNEXTITEM = 4108;
		public const uint32 LVM_FINDITEMA = 4109;
		public const uint32 LVM_FINDITEMW = 4179;
		public const uint32 LVM_FINDITEM = 4179;
		public const uint32 LVIR_BOUNDS = 0;
		public const uint32 LVIR_ICON = 1;
		public const uint32 LVIR_LABEL = 2;
		public const uint32 LVIR_SELECTBOUNDS = 3;
		public const uint32 LVM_GETITEMRECT = 4110;
		public const uint32 LVM_SETITEMPOSITION = 4111;
		public const uint32 LVM_GETITEMPOSITION = 4112;
		public const uint32 LVM_GETSTRINGWIDTHA = 4113;
		public const uint32 LVM_GETSTRINGWIDTHW = 4183;
		public const uint32 LVM_GETSTRINGWIDTH = 4183;
		public const uint32 LVM_HITTEST = 4114;
		public const uint32 LVM_ENSUREVISIBLE = 4115;
		public const uint32 LVM_SCROLL = 4116;
		public const uint32 LVM_REDRAWITEMS = 4117;
		public const uint32 LVA_DEFAULT = 0;
		public const uint32 LVA_ALIGNLEFT = 1;
		public const uint32 LVA_ALIGNTOP = 2;
		public const uint32 LVA_SNAPTOGRID = 5;
		public const uint32 LVM_ARRANGE = 4118;
		public const uint32 LVM_EDITLABELA = 4119;
		public const uint32 LVM_EDITLABELW = 4214;
		public const uint32 LVM_EDITLABEL = 4214;
		public const uint32 LVM_GETEDITCONTROL = 4120;
		public const uint32 LVCFMT_LINE_BREAK = 1048576;
		public const uint32 LVCFMT_FILL = 2097152;
		public const uint32 LVCFMT_WRAP = 4194304;
		public const uint32 LVCFMT_NO_TITLE = 8388608;
		public const uint32 LVM_GETCOLUMNA = 4121;
		public const uint32 LVM_GETCOLUMNW = 4191;
		public const uint32 LVM_GETCOLUMN = 4191;
		public const uint32 LVM_SETCOLUMNA = 4122;
		public const uint32 LVM_SETCOLUMNW = 4192;
		public const uint32 LVM_SETCOLUMN = 4192;
		public const uint32 LVM_INSERTCOLUMNA = 4123;
		public const uint32 LVM_INSERTCOLUMNW = 4193;
		public const uint32 LVM_DELETECOLUMN = 4124;
		public const uint32 LVM_GETCOLUMNWIDTH = 4125;
		public const int32 LVSCW_AUTOSIZE = -1;
		public const int32 LVSCW_AUTOSIZE_USEHEADER = -2;
		public const uint32 LVM_SETCOLUMNWIDTH = 4126;
		public const uint32 LVM_GETHEADER = 4127;
		public const uint32 LVM_CREATEDRAGIMAGE = 4129;
		public const uint32 LVM_GETVIEWRECT = 4130;
		public const uint32 LVM_GETTEXTCOLOR = 4131;
		public const uint32 LVM_SETTEXTCOLOR = 4132;
		public const uint32 LVM_GETTEXTBKCOLOR = 4133;
		public const uint32 LVM_SETTEXTBKCOLOR = 4134;
		public const uint32 LVM_GETTOPINDEX = 4135;
		public const uint32 LVM_GETCOUNTPERPAGE = 4136;
		public const uint32 LVM_GETORIGIN = 4137;
		public const uint32 LVM_UPDATE = 4138;
		public const uint32 LVM_SETITEMSTATE = 4139;
		public const uint32 LVM_GETITEMSTATE = 4140;
		public const uint32 LVM_GETITEMTEXTA = 4141;
		public const uint32 LVM_GETITEMTEXTW = 4211;
		public const uint32 LVM_GETITEMTEXT = 4211;
		public const uint32 LVM_SETITEMTEXTA = 4142;
		public const uint32 LVM_SETITEMTEXTW = 4212;
		public const uint32 LVM_SETITEMTEXT = 4212;
		public const uint32 LVSICF_NOINVALIDATEALL = 1;
		public const uint32 LVSICF_NOSCROLL = 2;
		public const uint32 LVM_SETITEMCOUNT = 4143;
		public const uint32 LVM_SORTITEMS = 4144;
		public const uint32 LVM_SETITEMPOSITION32 = 4145;
		public const uint32 LVM_GETSELECTEDCOUNT = 4146;
		public const uint32 LVM_GETITEMSPACING = 4147;
		public const uint32 LVM_GETISEARCHSTRINGA = 4148;
		public const uint32 LVM_GETISEARCHSTRINGW = 4213;
		public const uint32 LVM_GETISEARCHSTRING = 4213;
		public const uint32 LVM_SETICONSPACING = 4149;
		public const uint32 LVM_SETEXTENDEDLISTVIEWSTYLE = 4150;
		public const uint32 LVM_GETEXTENDEDLISTVIEWSTYLE = 4151;
		public const uint32 LVS_EX_GRIDLINES = 1;
		public const uint32 LVS_EX_SUBITEMIMAGES = 2;
		public const uint32 LVS_EX_CHECKBOXES = 4;
		public const uint32 LVS_EX_TRACKSELECT = 8;
		public const uint32 LVS_EX_HEADERDRAGDROP = 16;
		public const uint32 LVS_EX_FULLROWSELECT = 32;
		public const uint32 LVS_EX_ONECLICKACTIVATE = 64;
		public const uint32 LVS_EX_TWOCLICKACTIVATE = 128;
		public const uint32 LVS_EX_FLATSB = 256;
		public const uint32 LVS_EX_REGIONAL = 512;
		public const uint32 LVS_EX_INFOTIP = 1024;
		public const uint32 LVS_EX_UNDERLINEHOT = 2048;
		public const uint32 LVS_EX_UNDERLINECOLD = 4096;
		public const uint32 LVS_EX_MULTIWORKAREAS = 8192;
		public const uint32 LVS_EX_LABELTIP = 16384;
		public const uint32 LVS_EX_BORDERSELECT = 32768;
		public const uint32 LVS_EX_DOUBLEBUFFER = 65536;
		public const uint32 LVS_EX_HIDELABELS = 131072;
		public const uint32 LVS_EX_SINGLEROW = 262144;
		public const uint32 LVS_EX_SNAPTOGRID = 524288;
		public const uint32 LVS_EX_SIMPLESELECT = 1048576;
		public const uint32 LVS_EX_JUSTIFYCOLUMNS = 2097152;
		public const uint32 LVS_EX_TRANSPARENTBKGND = 4194304;
		public const uint32 LVS_EX_TRANSPARENTSHADOWTEXT = 8388608;
		public const uint32 LVS_EX_AUTOAUTOARRANGE = 16777216;
		public const uint32 LVS_EX_HEADERINALLVIEWS = 33554432;
		public const uint32 LVS_EX_AUTOCHECKSELECT = 134217728;
		public const uint32 LVS_EX_AUTOSIZECOLUMNS = 268435456;
		public const uint32 LVS_EX_COLUMNSNAPPOINTS = 1073741824;
		public const uint32 LVS_EX_COLUMNOVERFLOW = 2147483648;
		public const uint32 LVM_GETSUBITEMRECT = 4152;
		public const uint32 LVM_SUBITEMHITTEST = 4153;
		public const uint32 LVM_SETCOLUMNORDERARRAY = 4154;
		public const uint32 LVM_GETCOLUMNORDERARRAY = 4155;
		public const uint32 LVM_SETHOTITEM = 4156;
		public const uint32 LVM_GETHOTITEM = 4157;
		public const uint32 LVM_SETHOTCURSOR = 4158;
		public const uint32 LVM_GETHOTCURSOR = 4159;
		public const uint32 LVM_APPROXIMATEVIEWRECT = 4160;
		public const uint32 LV_MAX_WORKAREAS = 16;
		public const uint32 LVM_SETWORKAREAS = 4161;
		public const uint32 LVM_GETWORKAREAS = 4166;
		public const uint32 LVM_GETNUMBEROFWORKAREAS = 4169;
		public const uint32 LVM_GETSELECTIONMARK = 4162;
		public const uint32 LVM_SETSELECTIONMARK = 4163;
		public const uint32 LVM_SETHOVERTIME = 4167;
		public const uint32 LVM_GETHOVERTIME = 4168;
		public const uint32 LVM_SETTOOLTIPS = 4170;
		public const uint32 LVM_GETTOOLTIPS = 4174;
		public const uint32 LVM_SORTITEMSEX = 4177;
		public const uint32 LVBKIF_SOURCE_NONE = 0;
		public const uint32 LVBKIF_SOURCE_HBITMAP = 1;
		public const uint32 LVBKIF_SOURCE_URL = 2;
		public const uint32 LVBKIF_SOURCE_MASK = 3;
		public const uint32 LVBKIF_STYLE_NORMAL = 0;
		public const uint32 LVBKIF_STYLE_TILE = 16;
		public const uint32 LVBKIF_STYLE_MASK = 16;
		public const uint32 LVBKIF_FLAG_TILEOFFSET = 256;
		public const uint32 LVBKIF_TYPE_WATERMARK = 268435456;
		public const uint32 LVBKIF_FLAG_ALPHABLEND = 536870912;
		public const uint32 LVM_SETBKIMAGEA = 4164;
		public const uint32 LVM_SETBKIMAGEW = 4234;
		public const uint32 LVM_GETBKIMAGEA = 4165;
		public const uint32 LVM_GETBKIMAGEW = 4235;
		public const uint32 LVM_SETSELECTEDCOLUMN = 4236;
		public const uint32 LV_VIEW_ICON = 0;
		public const uint32 LV_VIEW_DETAILS = 1;
		public const uint32 LV_VIEW_SMALLICON = 2;
		public const uint32 LV_VIEW_LIST = 3;
		public const uint32 LV_VIEW_TILE = 4;
		public const uint32 LV_VIEW_MAX = 4;
		public const uint32 LVM_SETVIEW = 4238;
		public const uint32 LVM_GETVIEW = 4239;
		public const uint32 LVGF_ALIGN = 8;
		public const uint32 LVGF_GROUPID = 16;
		public const uint32 LVGF_SUBTITLE = 256;
		public const uint32 LVGF_TASK = 512;
		public const uint32 LVGF_DESCRIPTIONTOP = 1024;
		public const uint32 LVGF_DESCRIPTIONBOTTOM = 2048;
		public const uint32 LVGF_TITLEIMAGE = 4096;
		public const uint32 LVGF_EXTENDEDIMAGE = 8192;
		public const uint32 LVGF_ITEMS = 16384;
		public const uint32 LVGF_SUBSET = 32768;
		public const uint32 LVGF_SUBSETITEMS = 65536;
		public const uint32 LVGS_NORMAL = 0;
		public const uint32 LVGS_COLLAPSED = 1;
		public const uint32 LVGS_HIDDEN = 2;
		public const uint32 LVGS_NOHEADER = 4;
		public const uint32 LVGS_COLLAPSIBLE = 8;
		public const uint32 LVGS_FOCUSED = 16;
		public const uint32 LVGS_SELECTED = 32;
		public const uint32 LVGS_SUBSETED = 64;
		public const uint32 LVGS_SUBSETLINKFOCUSED = 128;
		public const uint32 LVGA_FOOTER_LEFT = 8;
		public const uint32 LVGA_FOOTER_CENTER = 16;
		public const uint32 LVGA_FOOTER_RIGHT = 32;
		public const uint32 LVM_INSERTGROUP = 4241;
		public const uint32 LVM_SETGROUPINFO = 4243;
		public const uint32 LVM_GETGROUPINFO = 4245;
		public const uint32 LVM_REMOVEGROUP = 4246;
		public const uint32 LVM_MOVEGROUP = 4247;
		public const uint32 LVM_GETGROUPCOUNT = 4248;
		public const uint32 LVM_GETGROUPINFOBYINDEX = 4249;
		public const uint32 LVM_MOVEITEMTOGROUP = 4250;
		public const uint32 LVGGR_GROUP = 0;
		public const uint32 LVGGR_HEADER = 1;
		public const uint32 LVGGR_LABEL = 2;
		public const uint32 LVGGR_SUBSETLINK = 3;
		public const uint32 LVM_GETGROUPRECT = 4194;
		public const uint32 LVGMF_NONE = 0;
		public const uint32 LVGMF_BORDERSIZE = 1;
		public const uint32 LVGMF_BORDERCOLOR = 2;
		public const uint32 LVGMF_TEXTCOLOR = 4;
		public const uint32 LVM_SETGROUPMETRICS = 4251;
		public const uint32 LVM_GETGROUPMETRICS = 4252;
		public const uint32 LVM_ENABLEGROUPVIEW = 4253;
		public const uint32 LVM_SORTGROUPS = 4254;
		public const uint32 LVM_INSERTGROUPSORTED = 4255;
		public const uint32 LVM_REMOVEALLGROUPS = 4256;
		public const uint32 LVM_HASGROUP = 4257;
		public const uint32 LVM_GETGROUPSTATE = 4188;
		public const uint32 LVM_GETFOCUSEDGROUP = 4189;
		public const uint32 LVTVIF_AUTOSIZE = 0;
		public const uint32 LVTVIF_FIXEDWIDTH = 1;
		public const uint32 LVTVIF_FIXEDHEIGHT = 2;
		public const uint32 LVTVIF_FIXEDSIZE = 3;
		public const uint32 LVTVIM_TILESIZE = 1;
		public const uint32 LVTVIM_COLUMNS = 2;
		public const uint32 LVTVIM_LABELMARGIN = 4;
		public const uint32 LVM_SETTILEVIEWINFO = 4258;
		public const uint32 LVM_GETTILEVIEWINFO = 4259;
		public const uint32 LVM_SETTILEINFO = 4260;
		public const uint32 LVM_GETTILEINFO = 4261;
		public const uint32 LVIM_AFTER = 1;
		public const uint32 LVM_SETINSERTMARK = 4262;
		public const uint32 LVM_GETINSERTMARK = 4263;
		public const uint32 LVM_INSERTMARKHITTEST = 4264;
		public const uint32 LVM_GETINSERTMARKRECT = 4265;
		public const uint32 LVM_SETINSERTMARKCOLOR = 4266;
		public const uint32 LVM_GETINSERTMARKCOLOR = 4267;
		public const uint32 LVM_SETINFOTIP = 4269;
		public const uint32 LVM_GETSELECTEDCOLUMN = 4270;
		public const uint32 LVM_ISGROUPVIEWENABLED = 4271;
		public const uint32 LVM_GETOUTLINECOLOR = 4272;
		public const uint32 LVM_SETOUTLINECOLOR = 4273;
		public const uint32 LVM_CANCELEDITLABEL = 4275;
		public const uint32 LVM_MAPINDEXTOID = 4276;
		public const uint32 LVM_MAPIDTOINDEX = 4277;
		public const uint32 LVM_ISITEMVISIBLE = 4278;
		public const uint32 LVM_GETEMPTYTEXT = 4300;
		public const uint32 LVM_GETFOOTERRECT = 4301;
		public const uint32 LVFF_ITEMCOUNT = 1;
		public const uint32 LVM_GETFOOTERINFO = 4302;
		public const uint32 LVM_GETFOOTERITEMRECT = 4303;
		public const uint32 LVFIS_FOCUSED = 1;
		public const uint32 LVM_GETFOOTERITEM = 4304;
		public const uint32 LVM_GETITEMINDEXRECT = 4305;
		public const uint32 LVM_SETITEMINDEXSTATE = 4306;
		public const uint32 LVM_GETNEXTITEMINDEX = 4307;
		public const uint32 LVM_SETBKIMAGE = 4234;
		public const uint32 LVM_GETBKIMAGE = 4235;
		public const uint32 LVKF_ALT = 1;
		public const uint32 LVKF_CONTROL = 2;
		public const uint32 LVKF_SHIFT = 4;
		public const uint32 LVCDRF_NOSELECT = 65536;
		public const uint32 LVCDRF_NOGROUPFRAME = 131072;
		public const uint32 LVIF_DI_SETITEM = 4096;
		public const uint32 LVGIT_UNFOLDED = 1;
		public const int32 LVNSCH_DEFAULT = -1;
		public const int32 LVNSCH_ERROR = -2;
		public const int32 LVNSCH_IGNORE = -3;
		public const uint32 TVS_HASBUTTONS = 1;
		public const uint32 TVS_HASLINES = 2;
		public const uint32 TVS_LINESATROOT = 4;
		public const uint32 TVS_EDITLABELS = 8;
		public const uint32 TVS_DISABLEDRAGDROP = 16;
		public const uint32 TVS_SHOWSELALWAYS = 32;
		public const uint32 TVS_RTLREADING = 64;
		public const uint32 TVS_NOTOOLTIPS = 128;
		public const uint32 TVS_CHECKBOXES = 256;
		public const uint32 TVS_TRACKSELECT = 512;
		public const uint32 TVS_SINGLEEXPAND = 1024;
		public const uint32 TVS_INFOTIP = 2048;
		public const uint32 TVS_FULLROWSELECT = 4096;
		public const uint32 TVS_NOSCROLL = 8192;
		public const uint32 TVS_NONEVENHEIGHT = 16384;
		public const uint32 TVS_NOHSCROLL = 32768;
		public const uint32 TVS_EX_NOSINGLECOLLAPSE = 1;
		public const uint32 TVS_EX_MULTISELECT = 2;
		public const uint32 TVS_EX_DOUBLEBUFFER = 4;
		public const uint32 TVS_EX_NOINDENTSTATE = 8;
		public const uint32 TVS_EX_RICHTOOLTIP = 16;
		public const uint32 TVS_EX_AUTOHSCROLL = 32;
		public const uint32 TVS_EX_FADEINOUTEXPANDOS = 64;
		public const uint32 TVS_EX_PARTIALCHECKBOXES = 128;
		public const uint32 TVS_EX_EXCLUSIONCHECKBOXES = 256;
		public const uint32 TVS_EX_DIMMEDCHECKBOXES = 512;
		public const uint32 TVS_EX_DRAWIMAGEASYNC = 1024;
		public const uint32 TVIS_SELECTED = 2;
		public const uint32 TVIS_CUT = 4;
		public const uint32 TVIS_DROPHILITED = 8;
		public const uint32 TVIS_BOLD = 16;
		public const uint32 TVIS_EXPANDED = 32;
		public const uint32 TVIS_EXPANDEDONCE = 64;
		public const uint32 TVIS_EXPANDPARTIAL = 128;
		public const uint32 TVIS_OVERLAYMASK = 3840;
		public const uint32 TVIS_STATEIMAGEMASK = 61440;
		public const uint32 TVIS_USERMASK = 61440;
		public const uint32 TVIS_EX_FLAT = 1;
		public const uint32 TVIS_EX_DISABLED = 2;
		public const uint32 TVIS_EX_ALL = 2;
		public const uint32 TVM_INSERTITEMA = 4352;
		public const uint32 TVM_INSERTITEMW = 4402;
		public const uint32 TVM_INSERTITEM = 4402;
		public const uint32 TVM_DELETEITEM = 4353;
		public const uint32 TVM_EXPAND = 4354;
		public const uint32 TVE_COLLAPSE = 1;
		public const uint32 TVE_EXPAND = 2;
		public const uint32 TVE_TOGGLE = 3;
		public const uint32 TVE_EXPANDPARTIAL = 16384;
		public const uint32 TVE_COLLAPSERESET = 32768;
		public const uint32 TVM_GETITEMRECT = 4356;
		public const uint32 TVM_GETCOUNT = 4357;
		public const uint32 TVM_GETINDENT = 4358;
		public const uint32 TVM_SETINDENT = 4359;
		public const uint32 TVM_GETIMAGELIST = 4360;
		public const uint32 TVSIL_NORMAL = 0;
		public const uint32 TVSIL_STATE = 2;
		public const uint32 TVM_SETIMAGELIST = 4361;
		public const uint32 TVM_GETNEXTITEM = 4362;
		public const uint32 TVGN_ROOT = 0;
		public const uint32 TVGN_NEXT = 1;
		public const uint32 TVGN_PREVIOUS = 2;
		public const uint32 TVGN_PARENT = 3;
		public const uint32 TVGN_CHILD = 4;
		public const uint32 TVGN_FIRSTVISIBLE = 5;
		public const uint32 TVGN_NEXTVISIBLE = 6;
		public const uint32 TVGN_PREVIOUSVISIBLE = 7;
		public const uint32 TVGN_DROPHILITE = 8;
		public const uint32 TVGN_CARET = 9;
		public const uint32 TVGN_LASTVISIBLE = 10;
		public const uint32 TVGN_NEXTSELECTED = 11;
		public const uint32 TVSI_NOSINGLEEXPAND = 32768;
		public const uint32 TVM_SELECTITEM = 4363;
		public const uint32 TVM_GETITEMA = 4364;
		public const uint32 TVM_GETITEMW = 4414;
		public const uint32 TVM_GETITEM = 4414;
		public const uint32 TVM_SETITEMA = 4365;
		public const uint32 TVM_SETITEMW = 4415;
		public const uint32 TVM_SETITEM = 4415;
		public const uint32 TVM_EDITLABELA = 4366;
		public const uint32 TVM_EDITLABELW = 4417;
		public const uint32 TVM_EDITLABEL = 4417;
		public const uint32 TVM_GETEDITCONTROL = 4367;
		public const uint32 TVM_GETVISIBLECOUNT = 4368;
		public const uint32 TVM_HITTEST = 4369;
		public const uint32 TVM_CREATEDRAGIMAGE = 4370;
		public const uint32 TVM_SORTCHILDREN = 4371;
		public const uint32 TVM_ENSUREVISIBLE = 4372;
		public const uint32 TVM_SORTCHILDRENCB = 4373;
		public const uint32 TVM_ENDEDITLABELNOW = 4374;
		public const uint32 TVM_GETISEARCHSTRINGA = 4375;
		public const uint32 TVM_GETISEARCHSTRINGW = 4416;
		public const uint32 TVM_GETISEARCHSTRING = 4416;
		public const uint32 TVM_SETTOOLTIPS = 4376;
		public const uint32 TVM_GETTOOLTIPS = 4377;
		public const uint32 TVM_SETINSERTMARK = 4378;
		public const uint32 TVM_SETUNICODEFORMAT = 8197;
		public const uint32 TVM_GETUNICODEFORMAT = 8198;
		public const uint32 TVM_SETITEMHEIGHT = 4379;
		public const uint32 TVM_GETITEMHEIGHT = 4380;
		public const uint32 TVM_SETBKCOLOR = 4381;
		public const uint32 TVM_SETTEXTCOLOR = 4382;
		public const uint32 TVM_GETBKCOLOR = 4383;
		public const uint32 TVM_GETTEXTCOLOR = 4384;
		public const uint32 TVM_SETSCROLLTIME = 4385;
		public const uint32 TVM_GETSCROLLTIME = 4386;
		public const uint32 TVM_SETINSERTMARKCOLOR = 4389;
		public const uint32 TVM_GETINSERTMARKCOLOR = 4390;
		public const uint32 TVM_SETBORDER = 4387;
		public const uint32 TVSBF_XBORDER = 1;
		public const uint32 TVSBF_YBORDER = 2;
		public const uint32 TVM_GETITEMSTATE = 4391;
		public const uint32 TVM_SETLINECOLOR = 4392;
		public const uint32 TVM_GETLINECOLOR = 4393;
		public const uint32 TVM_MAPACCIDTOHTREEITEM = 4394;
		public const uint32 TVM_MAPHTREEITEMTOACCID = 4395;
		public const uint32 TVM_SETEXTENDEDSTYLE = 4396;
		public const uint32 TVM_GETEXTENDEDSTYLE = 4397;
		public const uint32 TVM_SETAUTOSCROLLINFO = 4411;
		public const uint32 TVM_SETHOT = 4410;
		public const uint32 TVM_GETSELECTEDCOUNT = 4422;
		public const uint32 TVM_SHOWINFOTIP = 4423;
		public const uint32 TVM_GETITEMPARTRECT = 4424;
		public const uint32 TVC_UNKNOWN = 0;
		public const uint32 TVC_BYMOUSE = 1;
		public const uint32 TVC_BYKEYBOARD = 2;
		public const uint32 TVNRET_DEFAULT = 0;
		public const uint32 TVNRET_SKIPOLD = 1;
		public const uint32 TVNRET_SKIPNEW = 2;
		public const uint32 TVCDRF_NOIMAGES = 65536;
		public const uint32 CBEM_INSERTITEMA = 1025;
		public const uint32 CBEM_SETIMAGELIST = 1026;
		public const uint32 CBEM_GETIMAGELIST = 1027;
		public const uint32 CBEM_GETITEMA = 1028;
		public const uint32 CBEM_SETITEMA = 1029;
		public const uint32 CBEM_GETCOMBOCONTROL = 1030;
		public const uint32 CBEM_GETEDITCONTROL = 1031;
		public const uint32 CBEM_SETEXSTYLE = 1032;
		public const uint32 CBEM_SETEXTENDEDSTYLE = 1038;
		public const uint32 CBEM_GETEXSTYLE = 1033;
		public const uint32 CBEM_GETEXTENDEDSTYLE = 1033;
		public const uint32 CBEM_SETUNICODEFORMAT = 8197;
		public const uint32 CBEM_GETUNICODEFORMAT = 8198;
		public const uint32 CBEM_HASEDITCHANGED = 1034;
		public const uint32 CBEM_INSERTITEMW = 1035;
		public const uint32 CBEM_SETITEMW = 1036;
		public const uint32 CBEM_GETITEMW = 1037;
		public const uint32 CBEM_INSERTITEM = 1035;
		public const uint32 CBEM_SETITEM = 1036;
		public const uint32 CBEM_GETITEM = 1037;
		public const uint32 CBEM_SETWINDOWTHEME = 8203;
		public const uint32 CBES_EX_NOEDITIMAGE = 1;
		public const uint32 CBES_EX_NOEDITIMAGEINDENT = 2;
		public const uint32 CBES_EX_PATHWORDBREAKPROC = 4;
		public const uint32 CBES_EX_NOSIZELIMIT = 8;
		public const uint32 CBES_EX_CASESENSITIVE = 16;
		public const uint32 CBES_EX_TEXTENDELLIPSIS = 32;
		public const uint32 CBENF_KILLFOCUS = 1;
		public const uint32 CBENF_RETURN = 2;
		public const uint32 CBENF_ESCAPE = 3;
		public const uint32 CBENF_DROPDOWN = 4;
		public const uint32 CBEMAXSTRLEN = 260;
		public const uint32 TCS_SCROLLOPPOSITE = 1;
		public const uint32 TCS_BOTTOM = 2;
		public const uint32 TCS_RIGHT = 2;
		public const uint32 TCS_MULTISELECT = 4;
		public const uint32 TCS_FLATBUTTONS = 8;
		public const uint32 TCS_FORCEICONLEFT = 16;
		public const uint32 TCS_FORCELABELLEFT = 32;
		public const uint32 TCS_HOTTRACK = 64;
		public const uint32 TCS_VERTICAL = 128;
		public const uint32 TCS_TABS = 0;
		public const uint32 TCS_BUTTONS = 256;
		public const uint32 TCS_SINGLELINE = 0;
		public const uint32 TCS_MULTILINE = 512;
		public const uint32 TCS_RIGHTJUSTIFY = 0;
		public const uint32 TCS_FIXEDWIDTH = 1024;
		public const uint32 TCS_RAGGEDRIGHT = 2048;
		public const uint32 TCS_FOCUSONBUTTONDOWN = 4096;
		public const uint32 TCS_OWNERDRAWFIXED = 8192;
		public const uint32 TCS_TOOLTIPS = 16384;
		public const uint32 TCS_FOCUSNEVER = 32768;
		public const uint32 TCS_EX_FLATSEPARATORS = 1;
		public const uint32 TCS_EX_REGISTERDROP = 2;
		public const uint32 TCM_GETIMAGELIST = 4866;
		public const uint32 TCM_SETIMAGELIST = 4867;
		public const uint32 TCM_GETITEMCOUNT = 4868;
		public const uint32 TCIS_BUTTONPRESSED = 1;
		public const uint32 TCIS_HIGHLIGHTED = 2;
		public const uint32 TCM_GETITEMA = 4869;
		public const uint32 TCM_GETITEMW = 4924;
		public const uint32 TCM_GETITEM = 4924;
		public const uint32 TCM_SETITEMA = 4870;
		public const uint32 TCM_SETITEMW = 4925;
		public const uint32 TCM_SETITEM = 4925;
		public const uint32 TCM_INSERTITEMA = 4871;
		public const uint32 TCM_INSERTITEMW = 4926;
		public const uint32 TCM_INSERTITEM = 4926;
		public const uint32 TCM_DELETEITEM = 4872;
		public const uint32 TCM_DELETEALLITEMS = 4873;
		public const uint32 TCM_GETITEMRECT = 4874;
		public const uint32 TCM_GETCURSEL = 4875;
		public const uint32 TCM_SETCURSEL = 4876;
		public const uint32 TCM_HITTEST = 4877;
		public const uint32 TCM_SETITEMEXTRA = 4878;
		public const uint32 TCM_ADJUSTRECT = 4904;
		public const uint32 TCM_SETITEMSIZE = 4905;
		public const uint32 TCM_REMOVEIMAGE = 4906;
		public const uint32 TCM_SETPADDING = 4907;
		public const uint32 TCM_GETROWCOUNT = 4908;
		public const uint32 TCM_GETTOOLTIPS = 4909;
		public const uint32 TCM_SETTOOLTIPS = 4910;
		public const uint32 TCM_GETCURFOCUS = 4911;
		public const uint32 TCM_SETCURFOCUS = 4912;
		public const uint32 TCM_SETMINTABWIDTH = 4913;
		public const uint32 TCM_DESELECTALL = 4914;
		public const uint32 TCM_HIGHLIGHTITEM = 4915;
		public const uint32 TCM_SETEXTENDEDSTYLE = 4916;
		public const uint32 TCM_GETEXTENDEDSTYLE = 4917;
		public const uint32 TCM_SETUNICODEFORMAT = 8197;
		public const uint32 TCM_GETUNICODEFORMAT = 8198;
		public const uint32 ACS_CENTER = 1;
		public const uint32 ACS_TRANSPARENT = 2;
		public const uint32 ACS_AUTOPLAY = 4;
		public const uint32 ACS_TIMER = 8;
		public const uint32 ACM_OPENA = 1124;
		public const uint32 ACM_OPENW = 1127;
		public const uint32 ACM_OPEN = 1127;
		public const uint32 ACM_PLAY = 1125;
		public const uint32 ACM_STOP = 1126;
		public const uint32 ACM_ISPLAYING = 1128;
		public const uint32 ACN_START = 1;
		public const uint32 ACN_STOP = 2;
		public const uint32 MCM_FIRST = 4096;
		public const uint32 MCM_GETCURSEL = 4097;
		public const uint32 MCM_SETCURSEL = 4098;
		public const uint32 MCM_GETMAXSELCOUNT = 4099;
		public const uint32 MCM_SETMAXSELCOUNT = 4100;
		public const uint32 MCM_GETSELRANGE = 4101;
		public const uint32 MCM_SETSELRANGE = 4102;
		public const uint32 MCM_GETMONTHRANGE = 4103;
		public const uint32 MCM_SETDAYSTATE = 4104;
		public const uint32 MCM_GETMINREQRECT = 4105;
		public const uint32 MCM_SETCOLOR = 4106;
		public const uint32 MCM_GETCOLOR = 4107;
		public const uint32 MCSC_BACKGROUND = 0;
		public const uint32 MCSC_TEXT = 1;
		public const uint32 MCSC_TITLEBK = 2;
		public const uint32 MCSC_TITLETEXT = 3;
		public const uint32 MCSC_MONTHBK = 4;
		public const uint32 MCSC_TRAILINGTEXT = 5;
		public const uint32 MCM_SETTODAY = 4108;
		public const uint32 MCM_GETTODAY = 4109;
		public const uint32 MCM_HITTEST = 4110;
		public const uint32 MCHT_TITLE = 65536;
		public const uint32 MCHT_CALENDAR = 131072;
		public const uint32 MCHT_TODAYLINK = 196608;
		public const uint32 MCHT_CALENDARCONTROL = 1048576;
		public const uint32 MCHT_NEXT = 16777216;
		public const uint32 MCHT_PREV = 33554432;
		public const uint32 MCHT_NOWHERE = 0;
		public const uint32 MCHT_TITLEBK = 65536;
		public const uint32 MCHT_CALENDARBK = 131072;
		public const uint32 MCM_SETFIRSTDAYOFWEEK = 4111;
		public const uint32 MCM_GETFIRSTDAYOFWEEK = 4112;
		public const uint32 MCM_GETRANGE = 4113;
		public const uint32 MCM_SETRANGE = 4114;
		public const uint32 MCM_GETMONTHDELTA = 4115;
		public const uint32 MCM_SETMONTHDELTA = 4116;
		public const uint32 MCM_GETMAXTODAYWIDTH = 4117;
		public const uint32 MCM_SETUNICODEFORMAT = 8197;
		public const uint32 MCM_GETUNICODEFORMAT = 8198;
		public const uint32 MCMV_MONTH = 0;
		public const uint32 MCMV_YEAR = 1;
		public const uint32 MCMV_DECADE = 2;
		public const uint32 MCMV_CENTURY = 3;
		public const uint32 MCMV_MAX = 3;
		public const uint32 MCM_GETCURRENTVIEW = 4118;
		public const uint32 MCM_GETCALENDARCOUNT = 4119;
		public const uint32 MCM_GETCALENDARGRIDINFO = 4120;
		public const uint32 MCM_GETCALID = 4123;
		public const uint32 MCM_SETCALID = 4124;
		public const uint32 MCM_SIZERECTTOMIN = 4125;
		public const uint32 MCM_SETCALENDARBORDER = 4126;
		public const uint32 MCM_GETCALENDARBORDER = 4127;
		public const uint32 MCM_SETCURRENTVIEW = 4128;
		public const uint32 MCS_DAYSTATE = 1;
		public const uint32 MCS_MULTISELECT = 2;
		public const uint32 MCS_WEEKNUMBERS = 4;
		public const uint32 MCS_NOTODAYCIRCLE = 8;
		public const uint32 MCS_NOTODAY = 16;
		public const uint32 MCS_NOTRAILINGDATES = 64;
		public const uint32 MCS_SHORTDAYSOFWEEK = 128;
		public const uint32 MCS_NOSELCHANGEONNAV = 256;
		public const uint32 GMR_VISIBLE = 0;
		public const uint32 GMR_DAYSTATE = 1;
		public const uint32 DTM_FIRST = 4096;
		public const uint32 DTM_GETSYSTEMTIME = 4097;
		public const uint32 DTM_SETSYSTEMTIME = 4098;
		public const uint32 DTM_GETRANGE = 4099;
		public const uint32 DTM_SETRANGE = 4100;
		public const uint32 DTM_SETFORMATA = 4101;
		public const uint32 DTM_SETFORMATW = 4146;
		public const uint32 DTM_SETFORMAT = 4146;
		public const uint32 DTM_SETMCCOLOR = 4102;
		public const uint32 DTM_GETMCCOLOR = 4103;
		public const uint32 DTM_GETMONTHCAL = 4104;
		public const uint32 DTM_SETMCFONT = 4105;
		public const uint32 DTM_GETMCFONT = 4106;
		public const uint32 DTM_SETMCSTYLE = 4107;
		public const uint32 DTM_GETMCSTYLE = 4108;
		public const uint32 DTM_CLOSEMONTHCAL = 4109;
		public const uint32 DTM_GETDATETIMEPICKERINFO = 4110;
		public const uint32 DTM_GETIDEALSIZE = 4111;
		public const uint32 DTS_UPDOWN = 1;
		public const uint32 DTS_SHOWNONE = 2;
		public const uint32 DTS_SHORTDATEFORMAT = 0;
		public const uint32 DTS_LONGDATEFORMAT = 4;
		public const uint32 DTS_SHORTDATECENTURYFORMAT = 12;
		public const uint32 DTS_TIMEFORMAT = 9;
		public const uint32 DTS_APPCANPARSE = 16;
		public const uint32 DTS_RIGHTALIGN = 32;
		public const uint32 GDTR_MIN = 1;
		public const uint32 GDTR_MAX = 2;
		public const int32 GDT_ERROR = -1;
		public const uint32 GDT_VALID = 0;
		public const uint32 GDT_NONE = 1;
		public const uint32 IPM_CLEARADDRESS = 1124;
		public const uint32 IPM_SETADDRESS = 1125;
		public const uint32 IPM_GETADDRESS = 1126;
		public const uint32 IPM_SETRANGE = 1127;
		public const uint32 IPM_SETFOCUS = 1128;
		public const uint32 IPM_ISBLANK = 1129;
		public const uint32 PGS_VERT = 0;
		public const uint32 PGS_HORZ = 1;
		public const uint32 PGS_AUTOSCROLL = 2;
		public const uint32 PGS_DRAGNDROP = 4;
		public const uint32 PGF_INVISIBLE = 0;
		public const uint32 PGF_NORMAL = 1;
		public const uint32 PGF_GRAYED = 2;
		public const uint32 PGF_DEPRESSED = 4;
		public const uint32 PGF_HOT = 8;
		public const uint32 PGB_TOPORLEFT = 0;
		public const uint32 PGB_BOTTOMORRIGHT = 1;
		public const uint32 PGM_SETCHILD = 5121;
		public const uint32 PGM_RECALCSIZE = 5122;
		public const uint32 PGM_FORWARDMOUSE = 5123;
		public const uint32 PGM_SETBKCOLOR = 5124;
		public const uint32 PGM_GETBKCOLOR = 5125;
		public const uint32 PGM_SETBORDER = 5126;
		public const uint32 PGM_GETBORDER = 5127;
		public const uint32 PGM_SETPOS = 5128;
		public const uint32 PGM_GETPOS = 5129;
		public const uint32 PGM_SETBUTTONSIZE = 5130;
		public const uint32 PGM_GETBUTTONSIZE = 5131;
		public const uint32 PGM_GETBUTTONSTATE = 5132;
		public const uint32 PGM_GETDROPTARGET = 8196;
		public const uint32 PGM_SETSCROLLINFO = 5133;
		public const uint32 NFS_EDIT = 1;
		public const uint32 NFS_STATIC = 2;
		public const uint32 NFS_LISTCOMBO = 4;
		public const uint32 NFS_BUTTON = 8;
		public const uint32 NFS_ALL = 16;
		public const uint32 NFS_USEFONTASSOC = 32;
		public const uint32 BCM_GETIDEALSIZE = 5633;
		public const uint32 BCM_SETIMAGELIST = 5634;
		public const uint32 BCM_GETIMAGELIST = 5635;
		public const uint32 BCM_SETTEXTMARGIN = 5636;
		public const uint32 BCM_GETTEXTMARGIN = 5637;
		public const uint32 BCN_HOTITEMCHANGE = 4294966047;
		public const uint32 BST_HOT = 512;
		public const uint32 BST_DROPDOWNPUSHED = 1024;
		public const int32 BS_SPLITBUTTON = 12;
		public const int32 BS_DEFSPLITBUTTON = 13;
		public const int32 BS_COMMANDLINK = 14;
		public const int32 BS_DEFCOMMANDLINK = 15;
		public const uint32 BCSIF_GLYPH = 1;
		public const uint32 BCSIF_IMAGE = 2;
		public const uint32 BCSIF_STYLE = 4;
		public const uint32 BCSIF_SIZE = 8;
		public const uint32 BCSS_NOSPLIT = 1;
		public const uint32 BCSS_STRETCH = 2;
		public const uint32 BCSS_ALIGNLEFT = 4;
		public const uint32 BCSS_IMAGE = 8;
		public const uint32 BCM_SETDROPDOWNSTATE = 5638;
		public const uint32 BCM_SETSPLITINFO = 5639;
		public const uint32 BCM_GETSPLITINFO = 5640;
		public const uint32 BCM_SETNOTE = 5641;
		public const uint32 BCM_GETNOTE = 5642;
		public const uint32 BCM_GETNOTELENGTH = 5643;
		public const uint32 BCM_SETSHIELD = 5644;
		public const uint32 BCN_DROPDOWN = 4294966048;
		public const int32 ES_EX_ALLOWEOL_CR = 1;
		public const int32 ES_EX_ALLOWEOL_LF = 2;
		public const int32 ES_EX_CONVERT_EOL_ON_PASTE = 4;
		public const int32 ES_EX_ZOOMABLE = 16;
		public const uint32 EM_SETCUEBANNER = 5377;
		public const uint32 EM_GETCUEBANNER = 5378;
		public const uint32 EM_SHOWBALLOONTIP = 5379;
		public const uint32 EM_HIDEBALLOONTIP = 5380;
		public const uint32 EM_SETHILITE = 5381;
		public const uint32 EM_GETHILITE = 5382;
		public const uint32 EM_NOSETFOCUS = 5383;
		public const uint32 EM_TAKEFOCUS = 5384;
		public const uint32 EM_SETEXTENDEDSTYLE = 5386;
		public const uint32 EM_GETEXTENDEDSTYLE = 5387;
		public const uint32 EM_SETENDOFLINE = 5388;
		public const uint32 EM_GETENDOFLINE = 5389;
		public const uint32 EM_ENABLESEARCHWEB = 5390;
		public const uint32 EM_SEARCHWEB = 5391;
		public const uint32 EM_SETCARETINDEX = 5393;
		public const uint32 EM_GETCARETINDEX = 5394;
		public const uint32 EM_FILELINEFROMCHAR = 5395;
		public const uint32 EM_FILELINEINDEX = 5396;
		public const uint32 EM_FILELINELENGTH = 5397;
		public const uint32 EM_GETFILELINE = 5398;
		public const uint32 EM_GETFILELINECOUNT = 5399;
		public const uint32 CB_SETMINVISIBLE = 5889;
		public const uint32 CB_GETMINVISIBLE = 5890;
		public const uint32 CB_SETCUEBANNER = 5891;
		public const uint32 CB_GETCUEBANNER = 5892;
		public const uint32 WM_MOUSEHOVER = 673;
		public const uint32 WM_MOUSELEAVE = 675;
		public const uint32 HOVER_DEFAULT = 4294967295;
		public const int32 WSB_PROP_MASK = 4095;
		public const uint32 FSB_FLAT_MODE = 2;
		public const uint32 FSB_ENCARTA_MODE = 1;
		public const uint32 FSB_REGULAR_MODE = 0;
		public const uint32 CCHCCCLASS = 32;
		public const uint32 CCHCCDESC = 32;
		public const uint32 CCHCCTEXT = 256;
		public const uint32 CCF_NOTEXT = 1;
		public const uint32 EM_GETSEL = 176;
		public const uint32 EM_SETSEL = 177;
		public const uint32 EM_GETRECT = 178;
		public const uint32 EM_SETRECT = 179;
		public const uint32 EM_SETRECTNP = 180;
		public const uint32 EM_SCROLL = 181;
		public const uint32 EM_LINESCROLL = 182;
		public const uint32 EM_GETMODIFY = 184;
		public const uint32 EM_SETMODIFY = 185;
		public const uint32 EM_GETLINECOUNT = 186;
		public const uint32 EM_LINEINDEX = 187;
		public const uint32 EM_SETHANDLE = 188;
		public const uint32 EM_GETHANDLE = 189;
		public const uint32 EM_GETTHUMB = 190;
		public const uint32 EM_LINELENGTH = 193;
		public const uint32 EM_REPLACESEL = 194;
		public const uint32 EM_GETLINE = 196;
		public const uint32 EM_LIMITTEXT = 197;
		public const uint32 EM_CANUNDO = 198;
		public const uint32 EM_UNDO = 199;
		public const uint32 EM_FMTLINES = 200;
		public const uint32 EM_LINEFROMCHAR = 201;
		public const uint32 EM_SETTABSTOPS = 203;
		public const uint32 EM_SETPASSWORDCHAR = 204;
		public const uint32 EM_EMPTYUNDOBUFFER = 205;
		public const uint32 EM_GETFIRSTVISIBLELINE = 206;
		public const uint32 EM_SETREADONLY = 207;
		public const uint32 EM_SETWORDBREAKPROC = 208;
		public const uint32 EM_GETWORDBREAKPROC = 209;
		public const uint32 EM_GETPASSWORDCHAR = 210;
		public const uint32 EM_SETMARGINS = 211;
		public const uint32 EM_GETMARGINS = 212;
		public const uint32 EM_SETIMESTATUS = 216;
		public const uint32 EM_GETIMESTATUS = 217;
		public const uint32 EM_ENABLEFEATURE = 218;
		
		// --- Typedefs ---
		
		public typealias HPROPSHEETPAGE = int;
		public typealias HIMAGELIST = int;
		public typealias HSYNTHETICPOINTERDEVICE = int;
		public typealias HTREEITEM = int;
		public typealias HDSA = int;
		public typealias HDPA = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum THEME_PROPERTY_SYMBOL_ID : uint32
		{
			RESERVEDLOW = 0,
			RESERVEDHIGH = 7999,
			DIBDATA = 2,
			GLYPHDIBDATA = 8,
			ENUM = 200,
			STRING = 201,
			INT = 202,
			BOOL = 203,
			COLOR = 204,
			MARGINS = 205,
			FILENAME = 206,
			SIZE = 207,
			POSITION = 208,
			RECT = 209,
			FONT = 210,
			INTLIST = 211,
			HBITMAP = 212,
			DISKSTREAM = 213,
			STREAM = 214,
			BITMAPREF = 215,
			FLOAT = 216,
			FLOATLIST = 217,
			COLORSCHEMES = 401,
			SIZES = 402,
			CHARSET = 403,
			NAME = 600,
			DISPLAYNAME = 601,
			TOOLTIP = 602,
			COMPANY = 603,
			AUTHOR = 604,
			COPYRIGHT = 605,
			URL = 606,
			VERSION = 607,
			DESCRIPTION = 608,
			FIRST_RCSTRING_NAME = 601,
			LAST_RCSTRING_NAME = 608,
			CAPTIONFONT = 801,
			SMALLCAPTIONFONT = 802,
			MENUFONT = 803,
			STATUSFONT = 804,
			MSGBOXFONT = 805,
			ICONTITLEFONT = 806,
			HEADING1FONT = 807,
			HEADING2FONT = 808,
			BODYFONT = 809,
			FIRSTFONT = 801,
			LASTFONT = 809,
			FLATMENUS = 1001,
			FIRSTBOOL = 1001,
			LASTBOOL = 1001,
			SIZINGBORDERWIDTH = 1201,
			SCROLLBARWIDTH = 1202,
			SCROLLBARHEIGHT = 1203,
			CAPTIONBARWIDTH = 1204,
			CAPTIONBARHEIGHT = 1205,
			SMCAPTIONBARWIDTH = 1206,
			SMCAPTIONBARHEIGHT = 1207,
			MENUBARWIDTH = 1208,
			MENUBARHEIGHT = 1209,
			PADDEDBORDERWIDTH = 1210,
			FIRSTSIZE = 1201,
			LASTSIZE = 1210,
			MINCOLORDEPTH = 1301,
			FIRSTINT = 1301,
			LASTINT = 1301,
			CSSNAME = 1401,
			XMLNAME = 1402,
			LASTUPDATED = 1403,
			ALIAS = 1404,
			FIRSTSTRING = 1401,
			LASTSTRING = 1404,
			SCROLLBAR = 1601,
			BACKGROUND = 1602,
			ACTIVECAPTION = 1603,
			INACTIVECAPTION = 1604,
			MENU = 1605,
			WINDOW = 1606,
			WINDOWFRAME = 1607,
			MENUTEXT = 1608,
			WINDOWTEXT = 1609,
			CAPTIONTEXT = 1610,
			ACTIVEBORDER = 1611,
			INACTIVEBORDER = 1612,
			APPWORKSPACE = 1613,
			HIGHLIGHT = 1614,
			HIGHLIGHTTEXT = 1615,
			BTNFACE = 1616,
			BTNSHADOW = 1617,
			GRAYTEXT = 1618,
			BTNTEXT = 1619,
			INACTIVECAPTIONTEXT = 1620,
			BTNHIGHLIGHT = 1621,
			DKSHADOW3D = 1622,
			LIGHT3D = 1623,
			INFOTEXT = 1624,
			INFOBK = 1625,
			BUTTONALTERNATEFACE = 1626,
			HOTTRACKING = 1627,
			GRADIENTACTIVECAPTION = 1628,
			GRADIENTINACTIVECAPTION = 1629,
			MENUHILIGHT = 1630,
			MENUBAR = 1631,
			FIRSTCOLOR = 1601,
			LASTCOLOR = 1631,
			FROMHUE1 = 1801,
			FROMHUE2 = 1802,
			FROMHUE3 = 1803,
			FROMHUE4 = 1804,
			FROMHUE5 = 1805,
			TOHUE1 = 1806,
			TOHUE2 = 1807,
			TOHUE3 = 1808,
			TOHUE4 = 1809,
			TOHUE5 = 1810,
			FROMCOLOR1 = 2001,
			FROMCOLOR2 = 2002,
			FROMCOLOR3 = 2003,
			FROMCOLOR4 = 2004,
			FROMCOLOR5 = 2005,
			TOCOLOR1 = 2006,
			TOCOLOR2 = 2007,
			TOCOLOR3 = 2008,
			TOCOLOR4 = 2009,
			TOCOLOR5 = 2010,
			TRANSPARENT = 2201,
			AUTOSIZE = 2202,
			BORDERONLY = 2203,
			COMPOSITED = 2204,
			BGFILL = 2205,
			GLYPHTRANSPARENT = 2206,
			GLYPHONLY = 2207,
			ALWAYSSHOWSIZINGBAR = 2208,
			MIRRORIMAGE = 2209,
			UNIFORMSIZING = 2210,
			INTEGRALSIZING = 2211,
			SOURCEGROW = 2212,
			SOURCESHRINK = 2213,
			DRAWBORDERS = 2214,
			NOETCHEDEFFECT = 2215,
			TEXTAPPLYOVERLAY = 2216,
			TEXTGLOW = 2217,
			TEXTITALIC = 2218,
			COMPOSITEDOPAQUE = 2219,
			LOCALIZEDMIRRORIMAGE = 2220,
			IMAGECOUNT = 2401,
			ALPHALEVEL = 2402,
			BORDERSIZE = 2403,
			ROUNDCORNERWIDTH = 2404,
			ROUNDCORNERHEIGHT = 2405,
			GRADIENTRATIO1 = 2406,
			GRADIENTRATIO2 = 2407,
			GRADIENTRATIO3 = 2408,
			GRADIENTRATIO4 = 2409,
			GRADIENTRATIO5 = 2410,
			PROGRESSCHUNKSIZE = 2411,
			PROGRESSSPACESIZE = 2412,
			SATURATION = 2413,
			TEXTBORDERSIZE = 2414,
			ALPHATHRESHOLD = 2415,
			WIDTH = 2416,
			HEIGHT = 2417,
			GLYPHINDEX = 2418,
			TRUESIZESTRETCHMARK = 2419,
			MINDPI1 = 2420,
			MINDPI2 = 2421,
			MINDPI3 = 2422,
			MINDPI4 = 2423,
			MINDPI5 = 2424,
			TEXTGLOWSIZE = 2425,
			FRAMESPERSECOND = 2426,
			PIXELSPERFRAME = 2427,
			ANIMATIONDELAY = 2428,
			GLOWINTENSITY = 2429,
			OPACITY = 2430,
			COLORIZATIONCOLOR = 2431,
			COLORIZATIONOPACITY = 2432,
			MINDPI6 = 2433,
			MINDPI7 = 2434,
			GLYPHFONT = 2601,
			IMAGEFILE = 3001,
			IMAGEFILE1 = 3002,
			IMAGEFILE2 = 3003,
			IMAGEFILE3 = 3004,
			IMAGEFILE4 = 3005,
			IMAGEFILE5 = 3006,
			GLYPHIMAGEFILE = 3008,
			IMAGEFILE6 = 3009,
			IMAGEFILE7 = 3010,
			TEXT = 3201,
			CLASSICVALUE = 3202,
			OFFSET = 3401,
			TEXTSHADOWOFFSET = 3402,
			MINSIZE = 3403,
			MINSIZE1 = 3404,
			MINSIZE2 = 3405,
			MINSIZE3 = 3406,
			MINSIZE4 = 3407,
			MINSIZE5 = 3408,
			NORMALSIZE = 3409,
			MINSIZE6 = 3410,
			MINSIZE7 = 3411,
			SIZINGMARGINS = 3601,
			CONTENTMARGINS = 3602,
			CAPTIONMARGINS = 3603,
			BORDERCOLOR = 3801,
			FILLCOLOR = 3802,
			TEXTCOLOR = 3803,
			EDGELIGHTCOLOR = 3804,
			EDGEHIGHLIGHTCOLOR = 3805,
			EDGESHADOWCOLOR = 3806,
			EDGEDKSHADOWCOLOR = 3807,
			EDGEFILLCOLOR = 3808,
			TRANSPARENTCOLOR = 3809,
			GRADIENTCOLOR1 = 3810,
			GRADIENTCOLOR2 = 3811,
			GRADIENTCOLOR3 = 3812,
			GRADIENTCOLOR4 = 3813,
			GRADIENTCOLOR5 = 3814,
			SHADOWCOLOR = 3815,
			GLOWCOLOR = 3816,
			TEXTBORDERCOLOR = 3817,
			TEXTSHADOWCOLOR = 3818,
			GLYPHTEXTCOLOR = 3819,
			GLYPHTRANSPARENTCOLOR = 3820,
			FILLCOLORHINT = 3821,
			BORDERCOLORHINT = 3822,
			ACCENTCOLORHINT = 3823,
			TEXTCOLORHINT = 3824,
			HEADING1TEXTCOLOR = 3825,
			HEADING2TEXTCOLOR = 3826,
			BODYTEXTCOLOR = 3827,
			BGTYPE = 4001,
			BORDERTYPE = 4002,
			FILLTYPE = 4003,
			SIZINGTYPE = 4004,
			HALIGN = 4005,
			CONTENTALIGNMENT = 4006,
			VALIGN = 4007,
			OFFSETTYPE = 4008,
			ICONEFFECT = 4009,
			TEXTSHADOWTYPE = 4010,
			IMAGELAYOUT = 4011,
			GLYPHTYPE = 4012,
			IMAGESELECTTYPE = 4013,
			GLYPHFONTSIZINGTYPE = 4014,
			TRUESIZESCALINGTYPE = 4015,
			USERPICTURE = 5001,
			DEFAULTPANESIZE = 5002,
			BLENDCOLOR = 5003,
			CUSTOMSPLITRECT = 5004,
			ANIMATIONBUTTONRECT = 5005,
			ANIMATIONDURATION = 5006,
			TRANSITIONDURATIONS = 6000,
			SCALEDBACKGROUND = 7001,
			ATLASIMAGE = 8000,
			ATLASINPUTIMAGE = 8001,
			ATLASRECT = 8002,
		}
		public enum DRAGLISTINFO_NOTIFICATION_FLAGS : uint32
		{
			BEGINDRAG = 1157,
			CANCELDRAG = 1160,
			DRAGGING = 1158,
			DROPPED = 1159,
		}
		public enum WORD_BREAK_ACTION : uint32
		{
			CLASSIFY = 3,
			ISDELIMITER = 2,
			LEFT = 0,
			LEFTBREAK = 6,
			MOVEWORDLEFT = 4,
			MOVEWORDRIGHT = 5,
			RIGHT = 1,
			RIGHTBREAK = 7,
		}
		public enum DPAMM_MESSAGE : uint32
		{
			MERGE = 1,
			DELETE = 2,
			INSERT = 3,
		}
		public enum DLG_DIR_LIST_FILE_TYPE : uint32
		{
			ARCHIVE = 32,
			DIRECTORY = 16,
			DRIVES = 16384,
			EXCLUSIVE = 32768,
			HIDDEN = 2,
			READONLY = 1,
			READWRITE = 0,
			SYSTEM = 4,
			POSTMSGS = 8192,
		}
		public enum OPEN_THEME_DATA_FLAGS : uint32
		{
			FORCE_RECT_SIZING = 1,
			NONCLIENT = 2,
		}
		public enum GET_THEME_BITMAP_FLAGS : uint32
		{
			DIRECT = 1,
			COPY = 2,
			VALIDBITS = 3,
		}
		[AllowDuplicates]
		public enum ENABLE_SCROLL_BAR_ARROWS : uint32
		{
			DISABLE_BOTH = 3,
			DISABLE_DOWN = 2,
			DISABLE_LEFT = 1,
			DISABLE_LTUP = 1,
			DISABLE_RIGHT = 2,
			DISABLE_RTDN = 2,
			DISABLE_UP = 1,
			ENABLE_BOTH = 0,
		}
		[AllowDuplicates]
		public enum IMAGE_LIST_DRAW_STYLE : uint32
		{
			BLEND = 4,
			BLEND50 = 4,
			FOCUS = 2,
			MASK = 16,
			NORMAL = 0,
			SELECTED = 4,
		}
		public enum WSB_PROP : int32
		{
			CXHSCROLL = 2,
			CXHTHUMB = 16,
			CXVSCROLL = 8,
			CYHSCROLL = 4,
			CYVSCROLL = 1,
			CYVTHUMB = 32,
			HBKGCOLOR = 128,
			HSTYLE = 512,
			PALETTE = 2048,
			VBKGCOLOR = 64,
			VSTYLE = 256,
			WINSTYLE = 1024,
		}
		public enum PSPCB_MESSAGE : uint32
		{
			ADDREF = 0,
			CREATE = 2,
			RELEASE = 1,
			SI_INITDIALOG = 1025,
		}
		public enum HEADER_CONTROL_NOTIFICATION_BUTTON : uint32
		{
			LEFT = 0,
			RIGHT = 1,
			MIDDLE = 2,
		}
		public enum IMAGE_LIST_COPY_FLAGS : uint32
		{
			MOVE = 0,
			SWAP = 1,
		}
		public enum DLG_BUTTON_CHECK_STATE : uint32
		{
			CHECKED = 1,
			INDETERMINATE = 2,
			UNCHECKED = 0,
		}
		public enum DRAW_THEME_PARENT_BACKGROUND_FLAGS : uint32
		{
			WINDOWDC = 1,
			USECTLCOLORSTATIC = 2,
			USEERASEBKGND = 4,
		}
		public enum IMAGE_LIST_ITEM_FLAGS : uint32
		{
			ALPHA = 1,
			LOWQUALITY = 2,
		}
		[AllowDuplicates]
		public enum HDI_MASK : uint32
		{
			WIDTH = 1,
			HEIGHT = 1,
			TEXT = 2,
			FORMAT = 4,
			LPARAM = 8,
			BITMAP = 16,
			IMAGE = 32,
			DI_SETITEM = 64,
			ORDER = 128,
			FILTER = 256,
			STATE = 512,
		}
		public enum NMREBAR_MASK_FLAGS : uint32
		{
			ID = 1,
			LPARAM = 4,
			STYLE = 2,
		}
		public enum EDITBALLOONTIP_ICON : uint32
		{
			ERROR = 3,
			INFO = 1,
			NONE = 0,
			WARNING = 2,
			INFO_LARGE = 4,
			WARNING_LARGE = 5,
			ERROR_LARGE = 6,
		}
		public enum LVCOLUMNW_FORMAT : uint32
		{
			LEFT = 0,
			RIGHT = 1,
			CENTER = 2,
			JUSTIFYMASK = 3,
			IMAGE = 2048,
			BITMAP_ON_RIGHT = 4096,
			COL_HAS_IMAGES = 32768,
			FIXED_WIDTH = 256,
			NO_DPI_SCALE = 262144,
			FIXED_RATIO = 524288,
			SPLITBUTTON = 16777216,
		}
		public enum NMPGSCROLL_KEYS : uint16
		{
			NONE = 0,
			SHIFT = 1,
			CONTROL = 2,
			MENU = 4,
		}
		public enum COMBOBOX_EX_ITEM_FLAGS : uint32
		{
			DI_SETITEM = 268435456,
			IMAGE = 2,
			INDENT = 16,
			LPARAM = 32,
			OVERLAY = 8,
			SELECTEDIMAGE = 4,
			TEXT = 1,
		}
		public enum TVITEMEXW_CHILDREN : int32
		{
			ZERO = 0,
			ONE_OR_MORE = 1,
			CHILDRENCALLBACK = -1,
			CHILDRENAUTO = -2,
		}
		public enum TVITEM_MASK : uint32
		{
			CHILDREN = 64,
			DI_SETITEM = 4096,
			HANDLE = 16,
			IMAGE = 2,
			PARAM = 4,
			SELECTEDIMAGE = 32,
			STATE = 8,
			TEXT = 1,
			EXPANDEDIMAGE = 512,
			INTEGRAL = 128,
			STATEEX = 256,
		}
		public enum TCITEMHEADERA_MASK : uint32
		{
			IMAGE = 2,
			RTLREADING = 4,
			TEXT = 1,
			PARAM = 8,
			STATE = 16,
		}
		public enum TCHITTESTINFO_FLAGS : uint32
		{
			NOWHERE = 1,
			ONITEM = 6,
			ONITEMICON = 2,
			ONITEMLABEL = 4,
		}
		public enum COMBOBOXINFO_BUTTON_STATE : uint32
		{
			INVISIBLE = 32768,
			PRESSED = 8,
			FOCUSABLE = 1048576,
			OFFSCREEN = 65536,
			UNAVAILABLE = 1,
		}
		public enum NMCUSTOMDRAW_DRAW_STAGE : uint32
		{
			POSTPAINT = 2,
			PREERASE = 3,
			PREPAINT = 1,
			ITEMPOSTERASE = 65540,
			ITEMPOSTPAINT = 65538,
			ITEMPREERASE = 65539,
			ITEMPREPAINT = 65537,
			SUBITEM = 131072,
		}
		public enum MCGRIDINFO_PART : uint32
		{
			CALENDARCONTROL = 0,
			NEXT = 1,
			PREV = 2,
			FOOTER = 3,
			CALENDAR = 4,
			CALENDARHEADER = 5,
			CALENDARBODY = 6,
			CALENDARROW = 7,
			CALENDARCELL = 8,
		}
		public enum LVITEMA_GROUP_ID : int32
		{
			GROUPIDCALLBACK = -1,
			GROUPIDNONE = -2,
		}
		public enum NMTBHOTITEM_FLAGS : uint32
		{
			ACCELERATOR = 4,
			ARROWKEYS = 2,
			DUPACCEL = 8,
			ENTERING = 16,
			LEAVING = 32,
			LMOUSE = 128,
			MOUSE = 1,
			OTHER = 0,
			RESELECT = 64,
			TOGGLEDROPDOWN = 256,
		}
		public enum TTTOOLINFO_FLAGS : uint32
		{
			ABSOLUTE = 128,
			CENTERTIP = 2,
			IDISHWND = 1,
			PARSELINKS = 4096,
			RTLREADING = 4,
			SUBCLASS = 16,
			TRACK = 32,
			TRANSPARENT = 256,
		}
		public enum LVTILEVIEWINFO_FLAGS : uint32
		{
			LVTVIF_EXTENDED = 4,
		}
		public enum NMPGSCROLL_DIR : uint32
		{
			SCROLLDOWN = 2,
			SCROLLLEFT = 4,
			SCROLLRIGHT = 8,
			SCROLLUP = 1,
		}
		public enum LVCOLUMNW_MASK : uint32
		{
			FMT = 1,
			WIDTH = 2,
			TEXT = 4,
			SUBITEM = 8,
			IMAGE = 16,
			ORDER = 32,
			MINWIDTH = 64,
			DEFAULTWIDTH = 128,
			IDEALWIDTH = 256,
		}
		public enum LVFINDINFOW_FLAGS : uint32
		{
			PARAM = 1,
			PARTIAL = 8,
			STRING = 2,
			SUBSTRING = 4,
			WRAP = 32,
			NEARESTXY = 64,
		}
		public enum BUTTON_IMAGELIST_ALIGN : uint32
		{
			LEFT = 0,
			RIGHT = 1,
			TOP = 2,
			BOTTOM = 3,
			CENTER = 4,
		}
		public enum TBBUTTONINFOW_MASK : uint32
		{
			BYINDEX = 2147483648,
			COMMAND = 32,
			IMAGE = 1,
			LPARAM = 16,
			SIZE = 64,
			STATE = 4,
			STYLE = 8,
			TEXT = 2,
		}
		public enum TBINSERTMARK_FLAGS : uint32
		{
			NONE = 0,
			AFTER = 1,
			BACKGROUND = 2,
		}
		public enum LVGROUP_MASK : uint32
		{
			NONE = 0,
			HEADER = 1,
			FOOTER = 2,
			STATE = 4,
		}
		public enum BP_PAINTPARAMS_FLAGS : uint32
		{
			ERASE = 1,
			NOCLIP = 2,
			NONCLIENT = 4,
		}
		public enum TVHITTESTINFO_FLAGS : uint32
		{
			ABOVE = 256,
			BELOW = 512,
			NOWHERE = 1,
			ONITEM = 70,
			ONITEMBUTTON = 16,
			ONITEMICON = 2,
			ONITEMINDENT = 8,
			ONITEMLABEL = 4,
			ONITEMRIGHT = 32,
			ONITEMSTATEICON = 64,
			TOLEFT = 2048,
			TORIGHT = 1024,
		}
		public enum DRAWITEMSTRUCT_CTL_TYPE : uint32
		{
			BUTTON = 4,
			COMBOBOX = 3,
			LISTBOX = 2,
			LISTVIEW = 102,
			MENU = 1,
			STATIC = 5,
			TAB = 101,
		}
		public enum NMPGCALCSIZE_FLAGS : uint32
		{
			CALCHEIGHT = 2,
			CALCWIDTH = 1,
		}
		public enum NMLVCUSTOMDRAW_ALIGN : uint32
		{
			CENTER = 2,
			LEFT = 1,
			RIGHT = 4,
		}
		public enum MCGRIDINFO_FLAGS : uint32
		{
			DATE = 1,
			RECT = 2,
			NAME = 4,
		}
		[AllowDuplicates]
		public enum LVHITTESTINFO_FLAGS : uint32
		{
			ABOVE = 8,
			BELOW = 16,
			NOWHERE = 1,
			ONITEMICON = 2,
			ONITEMLABEL = 4,
			ONITEMSTATEICON = 8,
			TOLEFT = 64,
			TORIGHT = 32,
			EX_GROUP_HEADER = 268435456,
			EX_GROUP_FOOTER = 536870912,
			EX_GROUP_COLLAPSE = 1073741824,
			EX_GROUP_BACKGROUND = 2147483648,
			EX_GROUP_STATEICON = 16777216,
			EX_GROUP_SUBSETLINK = 33554432,
			EX_GROUP = 4076863488,
			EX_ONCONTENTS = 67108864,
			EX_FOOTER = 134217728,
		}
		public enum INITCOMMONCONTROLSEX_ICC : uint32
		{
			ANIMATE_CLASS = 128,
			BAR_CLASSES = 4,
			COOL_CLASSES = 1024,
			DATE_CLASSES = 256,
			HOTKEY_CLASS = 64,
			INTERNET_CLASSES = 2048,
			LINK_CLASS = 32768,
			LISTVIEW_CLASSES = 1,
			NATIVEFNTCTL_CLASS = 8192,
			PAGESCROLLER_CLASS = 4096,
			PROGRESS_CLASS = 32,
			STANDARD_CLASSES = 16384,
			TAB_CLASSES = 8,
			TREEVIEW_CLASSES = 2,
			UPDOWN_CLASS = 16,
			USEREX_CLASSES = 512,
			WIN95_CLASSES = 255,
		}
		public enum NMLVCUSTOMDRAW_ITEM_TYPE : uint32
		{
			ITEM = 0,
			GROUP = 1,
			ITEMSLIST = 2,
		}
		public enum NMTBDISPINFOW_MASK : uint32
		{
			IMAGE = 1,
			TEXT = 2,
			DI_SETITEM = 268435456,
		}
		public enum NMLVEMPTYMARKUP_FLAGS : uint32
		{
			EMF_CENTERED = 1,
		}
		public enum LVFOOTERITEM_MASK : uint32
		{
			TEXT = 1,
			STATE = 2,
		}
		public enum IMAGELIST_CREATION_FLAGS : uint32
		{
			MASK = 1,
			COLOR = 0,
			COLORDDB = 254,
			COLOR4 = 4,
			COLOR8 = 8,
			COLOR16 = 16,
			COLOR24 = 24,
			COLOR32 = 32,
			PALETTE = 2048,
			MIRROR = 8192,
			PERITEMMIRROR = 32768,
			ORIGINALSIZE = 65536,
			HIGHQUALITYSCALE = 131072,
		}
		public enum TVITEMPART : int32
		{
			TVGIPR_BUTTON = 1,
		}
		public enum EC_ENDOFLINE : int32
		{
			DETECTFROMCONTENT = 0,
			CRLF = 1,
			CR = 2,
			LF = 3,
		}
		public enum EC_SEARCHWEB_ENTRYPOINT : int32
		{
			EXTERNAL = 0,
			CONTEXTMENU = 1,
		}
		public enum TASKDIALOG_FLAGS : int32
		{
			ENABLE_HYPERLINKS = 1,
			USE_HICON_MAIN = 2,
			USE_HICON_FOOTER = 4,
			ALLOW_DIALOG_CANCELLATION = 8,
			USE_COMMAND_LINKS = 16,
			USE_COMMAND_LINKS_NO_ICON = 32,
			EXPAND_FOOTER_AREA = 64,
			EXPANDED_BY_DEFAULT = 128,
			VERIFICATION_FLAG_CHECKED = 256,
			SHOW_PROGRESS_BAR = 512,
			SHOW_MARQUEE_PROGRESS_BAR = 1024,
			CALLBACK_TIMER = 2048,
			POSITION_RELATIVE_TO_WINDOW = 4096,
			RTL_LAYOUT = 8192,
			NO_DEFAULT_RADIO_BUTTON = 16384,
			CAN_BE_MINIMIZED = 32768,
			NO_SET_FOREGROUND = 65536,
			SIZE_TO_CONTENT = 16777216,
		}
		public enum TASKDIALOG_MESSAGES : int32
		{
			NAVIGATE_PAGE = 1125,
			CLICK_BUTTON = 1126,
			SET_MARQUEE_PROGRESS_BAR = 1127,
			SET_PROGRESS_BAR_STATE = 1128,
			SET_PROGRESS_BAR_RANGE = 1129,
			SET_PROGRESS_BAR_POS = 1130,
			SET_PROGRESS_BAR_MARQUEE = 1131,
			SET_ELEMENT_TEXT = 1132,
			CLICK_RADIO_BUTTON = 1134,
			ENABLE_BUTTON = 1135,
			ENABLE_RADIO_BUTTON = 1136,
			CLICK_VERIFICATION = 1137,
			UPDATE_ELEMENT_TEXT = 1138,
			SET_BUTTON_ELEVATION_REQUIRED_STATE = 1139,
			UPDATE_ICON = 1140,
		}
		public enum TASKDIALOG_NOTIFICATIONS : int32
		{
			CREATED = 0,
			NAVIGATED = 1,
			BUTTON_CLICKED = 2,
			HYPERLINK_CLICKED = 3,
			TIMER = 4,
			DESTROYED = 5,
			RADIO_BUTTON_CLICKED = 6,
			DIALOG_CONSTRUCTED = 7,
			VERIFICATION_CLICKED = 8,
			HELP = 9,
			EXPANDO_BUTTON_CLICKED = 10,
		}
		public enum TASKDIALOG_ELEMENTS : int32
		{
			CONTENT = 0,
			EXPANDED_INFORMATION = 1,
			FOOTER = 2,
			MAIN_INSTRUCTION = 3,
		}
		public enum TASKDIALOG_ICON_ELEMENTS : int32
		{
			MAIN = 0,
			FOOTER = 1,
		}
		public enum TASKDIALOG_COMMON_BUTTON_FLAGS : int32
		{
			OK_BUTTON = 1,
			YES_BUTTON = 2,
			NO_BUTTON = 4,
			CANCEL_BUTTON = 8,
			RETRY_BUTTON = 16,
			CLOSE_BUTTON = 32,
		}
		public enum _LI_METRIC : int32
		{
			SMALL = 0,
			LARGE = 1,
		}
		public enum TA_PROPERTY : int32
		{
			FLAGS = 0,
			TRANSFORMCOUNT = 1,
			STAGGERDELAY = 2,
			STAGGERDELAYCAP = 3,
			STAGGERDELAYFACTOR = 4,
			ZORDER = 5,
		}
		public enum TA_PROPERTY_FLAG : uint32
		{
			NONE = 0,
			HASSTAGGER = 1,
			ISRTLAWARE = 2,
			ALLOWCOLLECTION = 4,
			HASBACKGROUND = 8,
			HASPERSPECTIVE = 16,
		}
		public enum TA_TRANSFORM_TYPE : int32
		{
			TRANSLATE_2D = 0,
			SCALE_2D = 1,
			OPACITY = 2,
			CLIP = 3,
		}
		public enum TA_TRANSFORM_FLAG : int32
		{
			NONE = 0,
			TARGETVALUES_USER = 1,
			HASINITIALVALUES = 2,
			HASORIGINVALUES = 4,
		}
		public enum TA_TIMINGFUNCTION_TYPE : int32
		{
			UNDEFINED = 0,
			CUBIC_BEZIER = 1,
		}
		public enum THEMESIZE : int32
		{
			MIN = 0,
			TRUE = 1,
			DRAW = 2,
		}
		public enum PROPERTYORIGIN : int32
		{
			STATE = 0,
			PART = 1,
			CLASS = 2,
			GLOBAL = 3,
			NOTFOUND = 4,
		}
		public enum WINDOWTHEMEATTRIBUTETYPE : int32
		{
			WTA_NONCLIENT = 1,
		}
		public enum BP_BUFFERFORMAT : int32
		{
			COMPATIBLEBITMAP = 0,
			DIB = 1,
			TOPDOWNDIB = 2,
			TOPDOWNMONODIB = 3,
		}
		public enum BP_ANIMATIONSTYLE : int32
		{
			NONE = 0,
			LINEAR = 1,
			CUBIC = 2,
			SINE = 3,
		}
		public enum BGTYPE : int32
		{
			IMAGEFILE = 0,
			BORDERFILL = 1,
			NONE = 2,
		}
		public enum IMAGELAYOUT : int32
		{
			VERTICAL = 0,
			HORIZONTAL = 1,
		}
		public enum BORDERTYPE : int32
		{
			RECT = 0,
			ROUNDRECT = 1,
			ELLIPSE = 2,
		}
		public enum FILLTYPE : int32
		{
			SOLID = 0,
			VERTGRADIENT = 1,
			HORZGRADIENT = 2,
			RADIALGRADIENT = 3,
			TILEIMAGE = 4,
		}
		public enum SIZINGTYPE : int32
		{
			TRUESIZE = 0,
			STRETCH = 1,
			TILE = 2,
		}
		public enum HALIGN : int32
		{
			LEFT = 0,
			CENTER = 1,
			RIGHT = 2,
		}
		public enum CONTENTALIGNMENT : int32
		{
			LEFT = 0,
			CENTER = 1,
			RIGHT = 2,
		}
		public enum VALIGN : int32
		{
			TOP = 0,
			CENTER = 1,
			BOTTOM = 2,
		}
		public enum OFFSETTYPE : int32
		{
			TOPLEFT = 0,
			TOPRIGHT = 1,
			TOPMIDDLE = 2,
			BOTTOMLEFT = 3,
			BOTTOMRIGHT = 4,
			BOTTOMMIDDLE = 5,
			MIDDLELEFT = 6,
			MIDDLERIGHT = 7,
			LEFTOFCAPTION = 8,
			RIGHTOFCAPTION = 9,
			LEFTOFLASTBUTTON = 10,
			RIGHTOFLASTBUTTON = 11,
			ABOVELASTBUTTON = 12,
			BELOWLASTBUTTON = 13,
		}
		public enum ICONEFFECT : int32
		{
			NONE = 0,
			GLOW = 1,
			SHADOW = 2,
			PULSE = 3,
			ALPHA = 4,
		}
		public enum TEXTSHADOWTYPE : int32
		{
			NONE = 0,
			SINGLE = 1,
			CONTINUOUS = 2,
		}
		public enum GLYPHTYPE : int32
		{
			NONE = 0,
			IMAGEGLYPH = 1,
			FONTGLYPH = 2,
		}
		public enum IMAGESELECTTYPE : int32
		{
			NONE = 0,
			SIZE = 1,
			DPI = 2,
		}
		public enum TRUESIZESCALINGTYPE : int32
		{
			NONE = 0,
			SIZE = 1,
			DPI = 2,
		}
		public enum GLYPHFONTSIZINGTYPE : int32
		{
			NONE = 0,
			SIZE = 1,
			DPI = 2,
		}
		public enum LINKPARTS : int32
		{
			LP_HYPERLINK = 1,
		}
		public enum HYPERLINKSTATES : int32
		{
			NORMALTEXT = 1,
			LINKTEXT = 2,
		}
		public enum EMPTYMARKUPPARTS : int32
		{
			EMP_MARKUPTEXT = 1,
		}
		public enum MARKUPTEXTSTATES : int32
		{
			NORMALTEXT = 1,
			LINKTEXT = 2,
		}
		public enum STATICPARTS : int32
		{
			STAT_TEXT = 1,
		}
		public enum PAGEPARTS : int32
		{
			UP = 1,
			DOWN = 2,
			UPHORZ = 3,
			DOWNHORZ = 4,
		}
		public enum MONTHCALPARTS : int32
		{
			BACKGROUND = 1,
			BORDERS = 2,
			GRIDBACKGROUND = 3,
			COLHEADERSPLITTER = 4,
			GRIDCELLBACKGROUND = 5,
			GRIDCELL = 6,
			GRIDCELLUPPER = 7,
			TRAILINGGRIDCELL = 8,
			TRAILINGGRIDCELLUPPER = 9,
			NAVNEXT = 10,
			NAVPREV = 11,
		}
		public enum GRIDCELLBACKGROUNDSTATES : int32
		{
			SELECTED = 1,
			HOT = 2,
			SELECTEDHOT = 3,
			SELECTEDNOTFOCUSED = 4,
			TODAY = 5,
			TODAYSELECTED = 6,
		}
		public enum GRIDCELLSTATES : int32
		{
			HOT = 1,
			HASSTATE = 2,
			HASSTATEHOT = 3,
			TODAY = 4,
			TODAYSELECTED = 5,
			SELECTED = 6,
			SELECTEDHOT = 7,
		}
		public enum GRIDCELLUPPERSTATES : int32
		{
			HOT = 1,
			HASSTATE = 2,
			HASSTATEHOT = 3,
			SELECTED = 4,
			SELECTEDHOT = 5,
		}
		public enum TRAILINGGRIDCELLSTATES : int32
		{
			HOT = 1,
			HASSTATE = 2,
			HASSTATEHOT = 3,
			TODAY = 4,
			TODAYSELECTED = 5,
			SELECTED = 6,
			SELECTEDHOT = 7,
		}
		public enum TRAILINGGRIDCELLUPPERSTATES : int32
		{
			HOT = 1,
			HASSTATE = 2,
			HASSTATEHOT = 3,
			SELECTED = 4,
			SELECTEDHOT = 5,
		}
		public enum NAVNEXTSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
			DISABLED = 4,
		}
		public enum NAVPREVSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
			DISABLED = 4,
		}
		public enum CLOCKPARTS : int32
		{
			CLP_TIME = 1,
		}
		public enum CLOCKSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
		}
		public enum TRAYNOTIFYPARTS : int32
		{
			BACKGROUND = 1,
			ANIMBACKGROUND = 2,
		}
		public enum TASKBARPARTS : int32
		{
			BACKGROUNDBOTTOM = 1,
			BACKGROUNDRIGHT = 2,
			BACKGROUNDTOP = 3,
			BACKGROUNDLEFT = 4,
			SIZINGBARBOTTOM = 5,
			SIZINGBARRIGHT = 6,
			SIZINGBARTOP = 7,
			SIZINGBARLEFT = 8,
		}
		public enum TASKBANDPARTS : int32
		{
			GROUPCOUNT = 1,
			FLASHBUTTON = 2,
			FLASHBUTTONGROUPMENU = 3,
		}
		public enum STARTPANELPARTS : int32
		{
			USERPANE = 1,
			MOREPROGRAMS = 2,
			MOREPROGRAMSARROW = 3,
			PROGLIST = 4,
			PROGLISTSEPARATOR = 5,
			PLACESLIST = 6,
			PLACESLISTSEPARATOR = 7,
			LOGOFF = 8,
			LOGOFFBUTTONS = 9,
			USERPICTURE = 10,
			PREVIEW = 11,
			MOREPROGRAMSTAB = 12,
			NSCHOST = 13,
			SOFTWAREEXPLORER = 14,
			OPENBOX = 15,
			SEARCHVIEW = 16,
			MOREPROGRAMSARROWBACK = 17,
			TOPMATCH = 18,
			LOGOFFSPLITBUTTONDROPDOWN = 19,
		}
		public enum MOREPROGRAMSTABSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			SELECTED = 3,
			DISABLED = 4,
			FOCUSED = 5,
		}
		public enum SOFTWAREEXPLORERSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			SELECTED = 3,
			DISABLED = 4,
			FOCUSED = 5,
		}
		public enum OPENBOXSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			SELECTED = 3,
			DISABLED = 4,
			FOCUSED = 5,
		}
		public enum MOREPROGRAMSARROWSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
		}
		public enum MOREPROGRAMSARROWBACKSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
		}
		public enum LOGOFFBUTTONSSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
		}
		public enum MENUBANDPARTS : int32
		{
			NEWAPPBUTTON = 1,
			SEPERATOR = 2,
		}
		public enum MENUBANDSTATES : int32
		{
			NORMAL = 1,
			HOT = 2,
			PRESSED = 3,
			DISABLED = 4,
			CHECKED = 5,
			HOTCHECKED = 6,
		}
		public enum POINTER_FEEDBACK_MODE : int32
		{
			DEFAULT = 1,
			INDIRECT = 2,
			NONE = 3,
		}
		public enum FEEDBACK_TYPE : int32
		{
			TOUCH_CONTACTVISUALIZATION = 1,
			PEN_BARRELVISUALIZATION = 2,
			PEN_TAP = 3,
			PEN_DOUBLETAP = 4,
			PEN_PRESSANDHOLD = 5,
			PEN_RIGHTTAP = 6,
			TOUCH_TAP = 7,
			TOUCH_DOUBLETAP = 8,
			TOUCH_PRESSANDHOLD = 9,
			TOUCH_RIGHTTAP = 10,
			GESTURE_PRESSANDTAP = 11,
			MAX = -1,
		}
		public enum POINTER_DEVICE_TYPE : int32
		{
			INTEGRATED_PEN = 1,
			EXTERNAL_PEN = 2,
			TOUCH = 3,
			TOUCH_PAD = 4,
			MAX = -1,
		}
		public enum POINTER_DEVICE_CURSOR_TYPE : int32
		{
			UNKNOWN = 0,
			TIP = 1,
			ERASER = 2,
			MAX = -1,
		}
		
		// --- Function Pointers ---
		
		public function uint32 LPFNPSPCALLBACKA(HWND hwnd, PSPCB_MESSAGE uMsg, out PROPSHEETPAGEA ppsp);
		public function uint32 LPFNPSPCALLBACKW(HWND hwnd, PSPCB_MESSAGE uMsg, out PROPSHEETPAGEW ppsp);
		public function int32 PFNPROPSHEETCALLBACK(HWND param0, uint32 param1, LPARAM param2);
		public function BOOL LPFNSVADDPROPSHEETPAGE(HPROPSHEETPAGE param0, LPARAM param1);
		public function BOOL LPFNADDPROPSHEETPAGES(void* param0, LPFNSVADDPROPSHEETPAGE param1, LPARAM param2);
		public function int32 PFNLVCOMPARE(LPARAM param0, LPARAM param1, LPARAM param2);
		public function int32 PFNLVGROUPCOMPARE(int32 param0, int32 param1, void* param2);
		public function int32 PFNTVCOMPARE(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort);
		public function HRESULT PFTASKDIALOGCALLBACK(HWND hwnd, uint32 msg, WPARAM wParam, LPARAM lParam, int lpRefData);
		public function int32 PFNDAENUMCALLBACK(void* p, void* pData);
		public function int32 PFNDAENUMCALLBACKCONST(void* p, void* pData);
		public function int32 PFNDACOMPARE(void* p1, void* p2, LPARAM lParam);
		public function int32 PFNDACOMPARECONST(void* p1, void* p2, LPARAM lParam);
		public function HRESULT PFNDPASTREAM(ref DPASTREAMINFO pinfo, ref IStream pstream, void* pvInstData);
		public function void* PFNDPAMERGE(DPAMM_MESSAGE uMsg, void* pvDest, void* pvSrc, LPARAM lParam);
		public function void* PFNDPAMERGECONST(DPAMM_MESSAGE uMsg, void* pvDest, void* pvSrc, LPARAM lParam);
		public function int32 DTT_CALLBACK_PROC(HDC hdc, char16* pszText, int32 cchText, out RECT prc, uint32 dwFlags, LPARAM lParam);
		public function BOOL LPFNCCSTYLEA(HWND hwndParent, out CCSTYLEA pccs);
		public function BOOL LPFNCCSTYLEW(HWND hwndParent, out CCSTYLEW pccs);
		public function int32 LPFNCCSIZETOTEXTA(uint32 flStyle, uint32 flExtStyle, HFONT hfont, PSTR pszText);
		public function int32 LPFNCCSIZETOTEXTW(uint32 flStyle, uint32 flExtStyle, HFONT hfont, PWSTR pszText);
		public function uint32 LPFNCCINFOA(out CCINFOA acci);
		public function uint32 LPFNCCINFOW(out CCINFOW acci);
		public function int32 EDITWORDBREAKPROCA(PSTR lpch, int32 ichCurrent, int32 cch, WORD_BREAK_ACTION code);
		public function int32 EDITWORDBREAKPROCW(PWSTR lpch, int32 ichCurrent, int32 cch, WORD_BREAK_ACTION code);
		
		// --- Structs ---
		
		[CRepr]
		public struct PROPSHEETPAGEA_V1
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKA pfnCallback;
			public uint32* pcRefParent;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEA_V2
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKA pfnCallback;
			public uint32* pcRefParent;
			public PSTR pszHeaderTitle;
			public PSTR pszHeaderSubTitle;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEA_V3
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKA pfnCallback;
			public uint32* pcRefParent;
			public PSTR pszHeaderTitle;
			public PSTR pszHeaderSubTitle;
			public HANDLE hActCtx;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEA
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKA pfnCallback;
			public uint32* pcRefParent;
			public PSTR pszHeaderTitle;
			public PSTR pszHeaderSubTitle;
			public HANDLE hActCtx;
			public _Anonymous3_e__Union Anonymous3;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public HBITMAP hbmHeader;
				public PSTR pszbmHeader;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEW_V1
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKW pfnCallback;
			public uint32* pcRefParent;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEW_V2
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKW pfnCallback;
			public uint32* pcRefParent;
			public PWSTR pszHeaderTitle;
			public PWSTR pszHeaderSubTitle;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEW_V3
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKW pfnCallback;
			public uint32* pcRefParent;
			public PWSTR pszHeaderTitle;
			public PWSTR pszHeaderSubTitle;
			public HANDLE hActCtx;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
		}
		[CRepr]
		public struct PROPSHEETPAGEW
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pszTitle;
			public DLGPROC pfnDlgProc;
			public LPARAM lParam;
			public LPFNPSPCALLBACKW pfnCallback;
			public uint32* pcRefParent;
			public PWSTR pszHeaderTitle;
			public PWSTR pszHeaderSubTitle;
			public HANDLE hActCtx;
			public _Anonymous3_e__Union Anonymous3;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pszTemplate;
				public DLGTEMPLATE* pResource;
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public HBITMAP hbmHeader;
				public PWSTR pszbmHeader;
			}
		}
		[CRepr]
		public struct PROPSHEETHEADERA_V1
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public PSTR pszCaption;
			public uint32 nPages;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public PFNPROPSHEETCALLBACK pfnCallback;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public PROPSHEETPAGEA* ppsp;
				public HPROPSHEETPAGE* phpage;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 nStartPage;
				public PSTR pStartPage;
			}
		}
		[CRepr]
		public struct PROPSHEETHEADERA_V2
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public PSTR pszCaption;
			public uint32 nPages;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public PFNPROPSHEETCALLBACK pfnCallback;
			public _Anonymous4_e__Union Anonymous4;
			public HPALETTE hplWatermark;
			public _Anonymous5_e__Union Anonymous5;
			
			[CRepr, Union]
			public struct _Anonymous4_e__Union
			{
				public HBITMAP hbmWatermark;
				public PSTR pszbmWatermark;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 nStartPage;
				public PSTR pStartPage;
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public PROPSHEETPAGEA* ppsp;
				public HPROPSHEETPAGE* phpage;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public HICON hIcon;
				public PSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous5_e__Union
			{
				public HBITMAP hbmHeader;
				public PSTR pszbmHeader;
			}
		}
		[CRepr]
		public struct PROPSHEETHEADERW_V1
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public PWSTR pszCaption;
			public uint32 nPages;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public PFNPROPSHEETCALLBACK pfnCallback;
			
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public PROPSHEETPAGEW* ppsp;
				public HPROPSHEETPAGE* phpage;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 nStartPage;
				public PWSTR pStartPage;
			}
		}
		[CRepr]
		public struct PROPSHEETHEADERW_V2
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public _Anonymous1_e__Union Anonymous1;
			public PWSTR pszCaption;
			public uint32 nPages;
			public _Anonymous2_e__Union Anonymous2;
			public _Anonymous3_e__Union Anonymous3;
			public PFNPROPSHEETCALLBACK pfnCallback;
			public _Anonymous4_e__Union Anonymous4;
			public HPALETTE hplWatermark;
			public _Anonymous5_e__Union Anonymous5;
			
			[CRepr, Union]
			public struct _Anonymous4_e__Union
			{
				public HBITMAP hbmWatermark;
				public PWSTR pszbmWatermark;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint32 nStartPage;
				public PWSTR pStartPage;
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public PROPSHEETPAGEW* ppsp;
				public HPROPSHEETPAGE* phpage;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public HICON hIcon;
				public PWSTR pszIcon;
			}
			[CRepr, Union]
			public struct _Anonymous5_e__Union
			{
				public HBITMAP hbmHeader;
				public PWSTR pszbmHeader;
			}
		}
		[CRepr]
		public struct PSHNOTIFY
		{
			public NMHDR hdr;
			public LPARAM lParam;
		}
		[CRepr]
		public struct INITCOMMONCONTROLSEX
		{
			public uint32 dwSize;
			public INITCOMMONCONTROLSEX_ICC dwICC;
		}
		[CRepr]
		public struct COLORSCHEME
		{
			public uint32 dwSize;
			public uint32 clrBtnHighlight;
			public uint32 clrBtnShadow;
		}
		[CRepr]
		public struct NMTOOLTIPSCREATED
		{
			public NMHDR hdr;
			public HWND hwndToolTips;
		}
		[CRepr]
		public struct NMMOUSE
		{
			public NMHDR hdr;
			public uint dwItemSpec;
			public uint dwItemData;
			public POINT pt;
			public LPARAM dwHitInfo;
		}
		[CRepr]
		public struct NMOBJECTNOTIFY
		{
			public NMHDR hdr;
			public int32 iItem;
			public Guid* piid;
			public void* pObject;
			public HRESULT hResult;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct NMKEY
		{
			public NMHDR hdr;
			public uint32 nVKey;
			public uint32 uFlags;
		}
		[CRepr]
		public struct NMCHAR
		{
			public NMHDR hdr;
			public uint32 ch;
			public uint32 dwItemPrev;
			public uint32 dwItemNext;
		}
		[CRepr]
		public struct NMCUSTOMTEXT
		{
			public NMHDR hdr;
			public HDC hDC;
			public PWSTR lpString;
			public int32 nCount;
			public RECT* lpRect;
			public uint32 uFormat;
			public BOOL fLink;
		}
		[CRepr]
		public struct NMCUSTOMDRAW
		{
			public NMHDR hdr;
			public NMCUSTOMDRAW_DRAW_STAGE dwDrawStage;
			public HDC hdc;
			public RECT rc;
			public uint dwItemSpec;
			public uint32 uItemState;
			public LPARAM lItemlParam;
		}
		[CRepr]
		public struct NMTTCUSTOMDRAW
		{
			public NMCUSTOMDRAW nmcd;
			public uint32 uDrawFlags;
		}
		[CRepr]
		public struct NMCUSTOMSPLITRECTINFO
		{
			public NMHDR hdr;
			public RECT rcClient;
			public RECT rcButton;
			public RECT rcSplit;
		}
		[CRepr]
		public struct IMAGELISTDRAWPARAMS
		{
			public uint32 cbSize;
			public HIMAGELIST himl;
			public int32 i;
			public HDC hdcDst;
			public int32 x;
			public int32 y;
			public int32 cx;
			public int32 cy;
			public int32 xBitmap;
			public int32 yBitmap;
			public uint32 rgbBk;
			public uint32 rgbFg;
			public uint32 fStyle;
			public uint32 dwRop;
			public uint32 fState;
			public uint32 Frame;
			public uint32 crEffect;
		}
		[CRepr]
		public struct IMAGEINFO
		{
			public HBITMAP hbmImage;
			public HBITMAP hbmMask;
			public int32 Unused1;
			public int32 Unused2;
			public RECT rcImage;
		}
		[CRepr]
		public struct HD_TEXTFILTERA
		{
			public PSTR pszText;
			public int32 cchTextMax;
		}
		[CRepr]
		public struct HD_TEXTFILTERW
		{
			public PWSTR pszText;
			public int32 cchTextMax;
		}
		[CRepr]
		public struct HDITEMA
		{
			public HDI_MASK mask;
			public int32 cxy;
			public PSTR pszText;
			public HBITMAP hbm;
			public int32 cchTextMax;
			public int32 fmt;
			public LPARAM lParam;
			public int32 iImage;
			public int32 iOrder;
			public uint32 type;
			public void* pvFilter;
			public uint32 state;
		}
		[CRepr]
		public struct HDITEMW
		{
			public HDI_MASK mask;
			public int32 cxy;
			public PWSTR pszText;
			public HBITMAP hbm;
			public int32 cchTextMax;
			public int32 fmt;
			public LPARAM lParam;
			public int32 iImage;
			public int32 iOrder;
			public uint32 type;
			public void* pvFilter;
			public uint32 state;
		}
		[CRepr]
		public struct HDLAYOUT
		{
			public RECT* prc;
			public WINDOWPOS* pwpos;
		}
		[CRepr]
		public struct HDHITTESTINFO
		{
			public POINT pt;
			public uint32 flags;
			public int32 iItem;
		}
		[CRepr]
		public struct NMHEADERA
		{
			public NMHDR hdr;
			public int32 iItem;
			public HEADER_CONTROL_NOTIFICATION_BUTTON iButton;
			public HDITEMA* pitem;
		}
		[CRepr]
		public struct NMHEADERW
		{
			public NMHDR hdr;
			public int32 iItem;
			public HEADER_CONTROL_NOTIFICATION_BUTTON iButton;
			public HDITEMW* pitem;
		}
		[CRepr]
		public struct NMHDDISPINFOW
		{
			public NMHDR hdr;
			public int32 iItem;
			public HDI_MASK mask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMHDDISPINFOA
		{
			public NMHDR hdr;
			public int32 iItem;
			public HDI_MASK mask;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMHDFILTERBTNCLICK
		{
			public NMHDR hdr;
			public int32 iItem;
			public RECT rc;
		}
		[CRepr]
		public struct TBBUTTON
		{
			public int32 iBitmap;
			public int32 idCommand;
			public uint8 fsState;
			public uint8 fsStyle;
			public uint8[6] bReserved;
			public uint dwData;
			public int iString;
		}
		[CRepr]
		public struct COLORMAP
		{
			public uint32 from;
			public uint32 to;
		}
		[CRepr]
		public struct NMTBCUSTOMDRAW
		{
			public NMCUSTOMDRAW nmcd;
			public HBRUSH hbrMonoDither;
			public HBRUSH hbrLines;
			public HPEN hpenLines;
			public uint32 clrText;
			public uint32 clrMark;
			public uint32 clrTextHighlight;
			public uint32 clrBtnFace;
			public uint32 clrBtnHighlight;
			public uint32 clrHighlightHotTrack;
			public RECT rcText;
			public int32 nStringBkMode;
			public int32 nHLStringBkMode;
			public int32 iListGap;
		}
		[CRepr]
		public struct TBADDBITMAP
		{
			public HINSTANCE hInst;
			public uint nID;
		}
		[CRepr]
		public struct TBSAVEPARAMSA
		{
			public HKEY hkr;
			public PSTR pszSubKey;
			public PSTR pszValueName;
		}
		[CRepr]
		public struct TBSAVEPARAMSW
		{
			public HKEY hkr;
			public PWSTR pszSubKey;
			public PWSTR pszValueName;
		}
		[CRepr]
		public struct TBINSERTMARK
		{
			public int32 iButton;
			public TBINSERTMARK_FLAGS dwFlags;
		}
		[CRepr]
		public struct TBREPLACEBITMAP
		{
			public HINSTANCE hInstOld;
			public uint nIDOld;
			public HINSTANCE hInstNew;
			public uint nIDNew;
			public int32 nButtons;
		}
		[CRepr]
		public struct TBBUTTONINFOA
		{
			public uint32 cbSize;
			public TBBUTTONINFOW_MASK dwMask;
			public int32 idCommand;
			public int32 iImage;
			public uint8 fsState;
			public uint8 fsStyle;
			public uint16 cx;
			public uint lParam;
			public PSTR pszText;
			public int32 cchText;
		}
		[CRepr]
		public struct TBBUTTONINFOW
		{
			public uint32 cbSize;
			public TBBUTTONINFOW_MASK dwMask;
			public int32 idCommand;
			public int32 iImage;
			public uint8 fsState;
			public uint8 fsStyle;
			public uint16 cx;
			public uint lParam;
			public PWSTR pszText;
			public int32 cchText;
		}
		[CRepr]
		public struct TBMETRICS
		{
			public uint32 cbSize;
			public uint32 dwMask;
			public int32 cxPad;
			public int32 cyPad;
			public int32 cxBarPad;
			public int32 cyBarPad;
			public int32 cxButtonSpacing;
			public int32 cyButtonSpacing;
		}
		[CRepr]
		public struct NMTBHOTITEM
		{
			public NMHDR hdr;
			public int32 idOld;
			public int32 idNew;
			public NMTBHOTITEM_FLAGS dwFlags;
		}
		[CRepr]
		public struct NMTBSAVE
		{
			public NMHDR hdr;
			public uint32* pData;
			public uint32* pCurrent;
			public uint32 cbData;
			public int32 iItem;
			public int32 cButtons;
			public TBBUTTON tbButton;
		}
		[CRepr]
		public struct NMTBRESTORE
		{
			public NMHDR hdr;
			public uint32* pData;
			public uint32* pCurrent;
			public uint32 cbData;
			public int32 iItem;
			public int32 cButtons;
			public int32 cbBytesPerRecord;
			public TBBUTTON tbButton;
		}
		[CRepr]
		public struct NMTBGETINFOTIPA
		{
			public NMHDR hdr;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTBGETINFOTIPW
		{
			public NMHDR hdr;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTBDISPINFOA
		{
			public NMHDR hdr;
			public NMTBDISPINFOW_MASK dwMask;
			public int32 idCommand;
			public uint lParam;
			public int32 iImage;
			public PSTR pszText;
			public int32 cchText;
		}
		[CRepr]
		public struct NMTBDISPINFOW
		{
			public NMHDR hdr;
			public NMTBDISPINFOW_MASK dwMask;
			public int32 idCommand;
			public uint lParam;
			public int32 iImage;
			public PWSTR pszText;
			public int32 cchText;
		}
		[CRepr]
		public struct NMTOOLBARA
		{
			public NMHDR hdr;
			public int32 iItem;
			public TBBUTTON tbButton;
			public int32 cchText;
			public PSTR pszText;
			public RECT rcButton;
		}
		[CRepr]
		public struct NMTOOLBARW
		{
			public NMHDR hdr;
			public int32 iItem;
			public TBBUTTON tbButton;
			public int32 cchText;
			public PWSTR pszText;
			public RECT rcButton;
		}
		[CRepr]
		public struct REBARINFO
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HIMAGELIST himl;
		}
		[CRepr]
		public struct REBARBANDINFOA
		{
			public uint32 cbSize;
			public uint32 fMask;
			public uint32 fStyle;
			public uint32 clrFore;
			public uint32 clrBack;
			public PSTR lpText;
			public uint32 cch;
			public int32 iImage;
			public HWND hwndChild;
			public uint32 cxMinChild;
			public uint32 cyMinChild;
			public uint32 cx;
			public HBITMAP hbmBack;
			public uint32 wID;
			public uint32 cyChild;
			public uint32 cyMaxChild;
			public uint32 cyIntegral;
			public uint32 cxIdeal;
			public LPARAM lParam;
			public uint32 cxHeader;
			public RECT rcChevronLocation;
			public uint32 uChevronState;
		}
		[CRepr]
		public struct REBARBANDINFOW
		{
			public uint32 cbSize;
			public uint32 fMask;
			public uint32 fStyle;
			public uint32 clrFore;
			public uint32 clrBack;
			public PWSTR lpText;
			public uint32 cch;
			public int32 iImage;
			public HWND hwndChild;
			public uint32 cxMinChild;
			public uint32 cyMinChild;
			public uint32 cx;
			public HBITMAP hbmBack;
			public uint32 wID;
			public uint32 cyChild;
			public uint32 cyMaxChild;
			public uint32 cyIntegral;
			public uint32 cxIdeal;
			public LPARAM lParam;
			public uint32 cxHeader;
			public RECT rcChevronLocation;
			public uint32 uChevronState;
		}
		[CRepr]
		public struct NMREBARCHILDSIZE
		{
			public NMHDR hdr;
			public uint32 uBand;
			public uint32 wID;
			public RECT rcChild;
			public RECT rcBand;
		}
		[CRepr]
		public struct NMREBAR
		{
			public NMHDR hdr;
			public NMREBAR_MASK_FLAGS dwMask;
			public uint32 uBand;
			public uint32 fStyle;
			public uint32 wID;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMRBAUTOSIZE
		{
			public NMHDR hdr;
			public BOOL fChanged;
			public RECT rcTarget;
			public RECT rcActual;
		}
		[CRepr]
		public struct NMREBARCHEVRON
		{
			public NMHDR hdr;
			public uint32 uBand;
			public uint32 wID;
			public LPARAM lParam;
			public RECT rc;
			public LPARAM lParamNM;
		}
		[CRepr]
		public struct NMREBARSPLITTER
		{
			public NMHDR hdr;
			public RECT rcSizing;
		}
		[CRepr]
		public struct NMREBARAUTOBREAK
		{
			public NMHDR hdr;
			public uint32 uBand;
			public uint32 wID;
			public LPARAM lParam;
			public uint32 uMsg;
			public uint32 fStyleCurrent;
			public BOOL fAutoBreak;
		}
		[CRepr]
		public struct RBHITTESTINFO
		{
			public POINT pt;
			public uint32 flags;
			public int32 iBand;
		}
		[CRepr]
		public struct TTTOOLINFOA
		{
			public uint32 cbSize;
			public TTTOOLINFO_FLAGS uFlags;
			public HWND hwnd;
			public uint uId;
			public RECT rect;
			public HINSTANCE hinst;
			public PSTR lpszText;
			public LPARAM lParam;
			public void* lpReserved;
		}
		[CRepr]
		public struct TTTOOLINFOW
		{
			public uint32 cbSize;
			public TTTOOLINFO_FLAGS uFlags;
			public HWND hwnd;
			public uint uId;
			public RECT rect;
			public HINSTANCE hinst;
			public PWSTR lpszText;
			public LPARAM lParam;
			public void* lpReserved;
		}
		[CRepr]
		public struct TTGETTITLE
		{
			public uint32 dwSize;
			public uint32 uTitleBitmap;
			public uint32 cch;
			public PWSTR pszTitle;
		}
		[CRepr]
		public struct TTHITTESTINFOA
		{
			public HWND hwnd;
			public POINT pt;
			public TTTOOLINFOA ti;
		}
		[CRepr]
		public struct TTHITTESTINFOW
		{
			public HWND hwnd;
			public POINT pt;
			public TTTOOLINFOW ti;
		}
		[CRepr]
		public struct NMTTDISPINFOA
		{
			public NMHDR hdr;
			public PSTR lpszText;
			public CHAR[80] szText;
			public HINSTANCE hinst;
			public uint32 uFlags;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTTDISPINFOW
		{
			public NMHDR hdr;
			public PWSTR lpszText;
			public char16[80] szText;
			public HINSTANCE hinst;
			public uint32 uFlags;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTRBTHUMBPOSCHANGING
		{
			public NMHDR hdr;
			public uint32 dwPos;
			public int32 nReason;
		}
		[CRepr]
		public struct DRAGLISTINFO
		{
			public DRAGLISTINFO_NOTIFICATION_FLAGS uNotification;
			public HWND hWnd;
			public POINT ptCursor;
		}
		[CRepr]
		public struct UDACCEL
		{
			public uint32 nSec;
			public uint32 nInc;
		}
		[CRepr]
		public struct NMUPDOWN
		{
			public NMHDR hdr;
			public int32 iPos;
			public int32 iDelta;
		}
		[CRepr]
		public struct PBRANGE
		{
			public int32 iLow;
			public int32 iHigh;
		}
		[CRepr]
		public struct LITEM
		{
			public uint32 mask;
			public int32 iLink;
			public uint32 state;
			public uint32 stateMask;
			public char16[48] szID;
			public char16[2084] szUrl;
		}
		[CRepr]
		public struct LHITTESTINFO
		{
			public POINT pt;
			public LITEM item;
		}
		[CRepr]
		public struct NMLINK
		{
			public NMHDR hdr;
			public LITEM item;
		}
		[CRepr]
		public struct LVITEMA
		{
			public uint32 mask;
			public int32 iItem;
			public int32 iSubItem;
			public uint32 state;
			public uint32 stateMask;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
			public int32 iIndent;
			public LVITEMA_GROUP_ID iGroupId;
			public uint32 cColumns;
			public uint32* puColumns;
			public int32* piColFmt;
			public int32 iGroup;
		}
		[CRepr]
		public struct LVITEMW
		{
			public uint32 mask;
			public int32 iItem;
			public int32 iSubItem;
			public uint32 state;
			public uint32 stateMask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
			public int32 iIndent;
			public LVITEMA_GROUP_ID iGroupId;
			public uint32 cColumns;
			public uint32* puColumns;
			public int32* piColFmt;
			public int32 iGroup;
		}
		[CRepr]
		public struct LVFINDINFOA
		{
			public LVFINDINFOW_FLAGS flags;
			public PSTR psz;
			public LPARAM lParam;
			public POINT pt;
			public uint32 vkDirection;
		}
		[CRepr]
		public struct LVFINDINFOW
		{
			public LVFINDINFOW_FLAGS flags;
			public PWSTR psz;
			public LPARAM lParam;
			public POINT pt;
			public uint32 vkDirection;
		}
		[CRepr]
		public struct LVHITTESTINFO
		{
			public POINT pt;
			public LVHITTESTINFO_FLAGS flags;
			public int32 iItem;
			public int32 iSubItem;
			public int32 iGroup;
		}
		[CRepr]
		public struct LVCOLUMNA
		{
			public LVCOLUMNW_MASK mask;
			public LVCOLUMNW_FORMAT fmt;
			public int32 cx;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iSubItem;
			public int32 iImage;
			public int32 iOrder;
			public int32 cxMin;
			public int32 cxDefault;
			public int32 cxIdeal;
		}
		[CRepr]
		public struct LVCOLUMNW
		{
			public LVCOLUMNW_MASK mask;
			public LVCOLUMNW_FORMAT fmt;
			public int32 cx;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iSubItem;
			public int32 iImage;
			public int32 iOrder;
			public int32 cxMin;
			public int32 cxDefault;
			public int32 cxIdeal;
		}
		[CRepr]
		public struct LVBKIMAGEA
		{
			public uint32 ulFlags;
			public HBITMAP hbm;
			public PSTR pszImage;
			public uint32 cchImageMax;
			public int32 xOffsetPercent;
			public int32 yOffsetPercent;
		}
		[CRepr]
		public struct LVBKIMAGEW
		{
			public uint32 ulFlags;
			public HBITMAP hbm;
			public PWSTR pszImage;
			public uint32 cchImageMax;
			public int32 xOffsetPercent;
			public int32 yOffsetPercent;
		}
		[CRepr]
		public struct LVGROUP
		{
			public uint32 cbSize;
			public LVGROUP_MASK mask;
			public PWSTR pszHeader;
			public int32 cchHeader;
			public PWSTR pszFooter;
			public int32 cchFooter;
			public int32 iGroupId;
			public uint32 stateMask;
			public uint32 state;
			public uint32 uAlign;
			public PWSTR pszSubtitle;
			public uint32 cchSubtitle;
			public PWSTR pszTask;
			public uint32 cchTask;
			public PWSTR pszDescriptionTop;
			public uint32 cchDescriptionTop;
			public PWSTR pszDescriptionBottom;
			public uint32 cchDescriptionBottom;
			public int32 iTitleImage;
			public int32 iExtendedImage;
			public int32 iFirstItem;
			public uint32 cItems;
			public PWSTR pszSubsetTitle;
			public uint32 cchSubsetTitle;
		}
		[CRepr]
		public struct LVGROUPMETRICS
		{
			public uint32 cbSize;
			public uint32 mask;
			public uint32 Left;
			public uint32 Top;
			public uint32 Right;
			public uint32 Bottom;
			public uint32 crLeft;
			public uint32 crTop;
			public uint32 crRight;
			public uint32 crBottom;
			public uint32 crHeader;
			public uint32 crFooter;
		}
		[CRepr]
		public struct LVINSERTGROUPSORTED
		{
			public PFNLVGROUPCOMPARE pfnGroupCompare;
			public void* pvData;
			public LVGROUP lvGroup;
		}
		[CRepr]
		public struct LVTILEVIEWINFO
		{
			public uint32 cbSize;
			public uint32 dwMask;
			public LVTILEVIEWINFO_FLAGS dwFlags;
			public SIZE sizeTile;
			public int32 cLines;
			public RECT rcLabelMargin;
		}
		[CRepr]
		public struct LVTILEINFO
		{
			public uint32 cbSize;
			public int32 iItem;
			public uint32 cColumns;
			public uint32* puColumns;
			public int32* piColFmt;
		}
		[CRepr]
		public struct LVINSERTMARK
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public int32 iItem;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct LVSETINFOTIP
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public PWSTR pszText;
			public int32 iItem;
			public int32 iSubItem;
		}
		[CRepr]
		public struct LVFOOTERINFO
		{
			public uint32 mask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public uint32 cItems;
		}
		[CRepr]
		public struct LVFOOTERITEM
		{
			public LVFOOTERITEM_MASK mask;
			public int32 iItem;
			public PWSTR pszText;
			public int32 cchTextMax;
			public uint32 state;
			public uint32 stateMask;
		}
		[CRepr]
		public struct LVITEMINDEX
		{
			public int32 iItem;
			public int32 iGroup;
		}
		[CRepr]
		public struct NMLISTVIEW
		{
			public NMHDR hdr;
			public int32 iItem;
			public int32 iSubItem;
			public uint32 uNewState;
			public uint32 uOldState;
			public uint32 uChanged;
			public POINT ptAction;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMITEMACTIVATE
		{
			public NMHDR hdr;
			public int32 iItem;
			public int32 iSubItem;
			public uint32 uNewState;
			public uint32 uOldState;
			public uint32 uChanged;
			public POINT ptAction;
			public LPARAM lParam;
			public uint32 uKeyFlags;
		}
		[CRepr]
		public struct NMLVCUSTOMDRAW
		{
			public NMCUSTOMDRAW nmcd;
			public uint32 clrText;
			public uint32 clrTextBk;
			public int32 iSubItem;
			public NMLVCUSTOMDRAW_ITEM_TYPE dwItemType;
			public uint32 clrFace;
			public int32 iIconEffect;
			public int32 iIconPhase;
			public int32 iPartId;
			public int32 iStateId;
			public RECT rcText;
			public NMLVCUSTOMDRAW_ALIGN uAlign;
		}
		[CRepr]
		public struct NMLVCACHEHINT
		{
			public NMHDR hdr;
			public int32 iFrom;
			public int32 iTo;
		}
		[CRepr]
		public struct NMLVFINDITEMA
		{
			public NMHDR hdr;
			public int32 iStart;
			public LVFINDINFOA lvfi;
		}
		[CRepr]
		public struct NMLVFINDITEMW
		{
			public NMHDR hdr;
			public int32 iStart;
			public LVFINDINFOW lvfi;
		}
		[CRepr]
		public struct NMLVODSTATECHANGE
		{
			public NMHDR hdr;
			public int32 iFrom;
			public int32 iTo;
			public uint32 uNewState;
			public uint32 uOldState;
		}
		[CRepr]
		public struct NMLVDISPINFOA
		{
			public NMHDR hdr;
			public LVITEMA item;
		}
		[CRepr]
		public struct NMLVDISPINFOW
		{
			public NMHDR hdr;
			public LVITEMW item;
		}
		[CRepr, Packed(1)]
		public struct NMLVKEYDOWN
		{
			public NMHDR hdr;
			public uint16 wVKey;
			public uint32 flags;
		}
		[CRepr]
		public struct NMLVLINK
		{
			public NMHDR hdr;
			public LITEM link;
			public int32 iItem;
			public int32 iSubItem;
		}
		[CRepr]
		public struct NMLVGETINFOTIPA
		{
			public NMHDR hdr;
			public uint32 dwFlags;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iItem;
			public int32 iSubItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMLVGETINFOTIPW
		{
			public NMHDR hdr;
			public uint32 dwFlags;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iItem;
			public int32 iSubItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMLVSCROLL
		{
			public NMHDR hdr;
			public int32 dx;
			public int32 dy;
		}
		[CRepr]
		public struct NMLVEMPTYMARKUP
		{
			public NMHDR hdr;
			public NMLVEMPTYMARKUP_FLAGS dwFlags;
			public char16[2084] szMarkup;
		}
		[CRepr]
		public struct NMTVSTATEIMAGECHANGING
		{
			public NMHDR hdr;
			public HTREEITEM hti;
			public int32 iOldStateImageIndex;
			public int32 iNewStateImageIndex;
		}
		[CRepr]
		public struct TVITEMA
		{
			public TVITEM_MASK mask;
			public HTREEITEM hItem;
			public uint32 state;
			public uint32 stateMask;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public TVITEMEXW_CHILDREN cChildren;
			public LPARAM lParam;
		}
		[CRepr]
		public struct TVITEMW
		{
			public TVITEM_MASK mask;
			public HTREEITEM hItem;
			public uint32 state;
			public uint32 stateMask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public TVITEMEXW_CHILDREN cChildren;
			public LPARAM lParam;
		}
		[CRepr]
		public struct TVITEMEXA
		{
			public TVITEM_MASK mask;
			public HTREEITEM hItem;
			public uint32 state;
			public uint32 stateMask;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public TVITEMEXW_CHILDREN cChildren;
			public LPARAM lParam;
			public int32 iIntegral;
			public uint32 uStateEx;
			public HWND hwnd;
			public int32 iExpandedImage;
			public int32 iReserved;
		}
		[CRepr]
		public struct TVITEMEXW
		{
			public TVITEM_MASK mask;
			public HTREEITEM hItem;
			public uint32 state;
			public uint32 stateMask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public TVITEMEXW_CHILDREN cChildren;
			public LPARAM lParam;
			public int32 iIntegral;
			public uint32 uStateEx;
			public HWND hwnd;
			public int32 iExpandedImage;
			public int32 iReserved;
		}
		[CRepr]
		public struct TVINSERTSTRUCTA
		{
			public HTREEITEM hParent;
			public HTREEITEM hInsertAfter;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public TVITEMEXA itemex;
				public TVITEMA item;
			}
		}
		[CRepr]
		public struct TVINSERTSTRUCTW
		{
			public HTREEITEM hParent;
			public HTREEITEM hInsertAfter;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public TVITEMEXW itemex;
				public TVITEMW item;
			}
		}
		[CRepr]
		public struct TVHITTESTINFO
		{
			public POINT pt;
			public TVHITTESTINFO_FLAGS flags;
			public HTREEITEM hItem;
		}
		[CRepr]
		public struct TVGETITEMPARTRECTINFO
		{
			public HTREEITEM hti;
			public RECT* prc;
			public TVITEMPART partID;
		}
		[CRepr]
		public struct TVSORTCB
		{
			public HTREEITEM hParent;
			public PFNTVCOMPARE lpfnCompare;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTREEVIEWA
		{
			public NMHDR hdr;
			public uint32 action;
			public TVITEMA itemOld;
			public TVITEMA itemNew;
			public POINT ptDrag;
		}
		[CRepr]
		public struct NMTREEVIEWW
		{
			public NMHDR hdr;
			public uint32 action;
			public TVITEMW itemOld;
			public TVITEMW itemNew;
			public POINT ptDrag;
		}
		[CRepr]
		public struct NMTVDISPINFOA
		{
			public NMHDR hdr;
			public TVITEMA item;
		}
		[CRepr]
		public struct NMTVDISPINFOW
		{
			public NMHDR hdr;
			public TVITEMW item;
		}
		[CRepr]
		public struct NMTVDISPINFOEXA
		{
			public NMHDR hdr;
			public TVITEMEXA item;
		}
		[CRepr]
		public struct NMTVDISPINFOEXW
		{
			public NMHDR hdr;
			public TVITEMEXW item;
		}
		[CRepr, Packed(1)]
		public struct NMTVKEYDOWN
		{
			public NMHDR hdr;
			public uint16 wVKey;
			public uint32 flags;
		}
		[CRepr]
		public struct NMTVCUSTOMDRAW
		{
			public NMCUSTOMDRAW nmcd;
			public uint32 clrText;
			public uint32 clrTextBk;
			public int32 iLevel;
		}
		[CRepr]
		public struct NMTVGETINFOTIPA
		{
			public NMHDR hdr;
			public PSTR pszText;
			public int32 cchTextMax;
			public HTREEITEM hItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTVGETINFOTIPW
		{
			public NMHDR hdr;
			public PWSTR pszText;
			public int32 cchTextMax;
			public HTREEITEM hItem;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTVITEMCHANGE
		{
			public NMHDR hdr;
			public uint32 uChanged;
			public HTREEITEM hItem;
			public uint32 uStateNew;
			public uint32 uStateOld;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMTVASYNCDRAW
		{
			public NMHDR hdr;
			public IMAGELISTDRAWPARAMS* pimldp;
			public HRESULT hr;
			public HTREEITEM hItem;
			public LPARAM lParam;
			public uint32 dwRetFlags;
			public int32 iRetImageIndex;
		}
		[CRepr]
		public struct COMBOBOXEXITEMA
		{
			public COMBOBOX_EX_ITEM_FLAGS mask;
			public int iItem;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public int32 iOverlay;
			public int32 iIndent;
			public LPARAM lParam;
		}
		[CRepr]
		public struct COMBOBOXEXITEMW
		{
			public COMBOBOX_EX_ITEM_FLAGS mask;
			public int iItem;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public int32 iSelectedImage;
			public int32 iOverlay;
			public int32 iIndent;
			public LPARAM lParam;
		}
		[CRepr]
		public struct NMCOMBOBOXEXA
		{
			public NMHDR hdr;
			public COMBOBOXEXITEMA ceItem;
		}
		[CRepr]
		public struct NMCOMBOBOXEXW
		{
			public NMHDR hdr;
			public COMBOBOXEXITEMW ceItem;
		}
		[CRepr]
		public struct NMCBEDRAGBEGINW
		{
			public NMHDR hdr;
			public int32 iItemid;
			public char16[260] szText;
		}
		[CRepr]
		public struct NMCBEDRAGBEGINA
		{
			public NMHDR hdr;
			public int32 iItemid;
			public CHAR[260] szText;
		}
		[CRepr]
		public struct NMCBEENDEDITW
		{
			public NMHDR hdr;
			public BOOL fChanged;
			public int32 iNewSelection;
			public char16[260] szText;
			public int32 iWhy;
		}
		[CRepr]
		public struct NMCBEENDEDITA
		{
			public NMHDR hdr;
			public BOOL fChanged;
			public int32 iNewSelection;
			public CHAR[260] szText;
			public int32 iWhy;
		}
		[CRepr]
		public struct TCITEMHEADERA
		{
			public TCITEMHEADERA_MASK mask;
			public uint32 lpReserved1;
			public uint32 lpReserved2;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
		}
		[CRepr]
		public struct TCITEMHEADERW
		{
			public TCITEMHEADERA_MASK mask;
			public uint32 lpReserved1;
			public uint32 lpReserved2;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
		}
		[CRepr]
		public struct TCITEMA
		{
			public TCITEMHEADERA_MASK mask;
			public uint32 dwState;
			public uint32 dwStateMask;
			public PSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
		}
		[CRepr]
		public struct TCITEMW
		{
			public TCITEMHEADERA_MASK mask;
			public uint32 dwState;
			public uint32 dwStateMask;
			public PWSTR pszText;
			public int32 cchTextMax;
			public int32 iImage;
			public LPARAM lParam;
		}
		[CRepr]
		public struct TCHITTESTINFO
		{
			public POINT pt;
			public TCHITTESTINFO_FLAGS flags;
		}
		[CRepr, Packed(1)]
		public struct NMTCKEYDOWN
		{
			public NMHDR hdr;
			public uint16 wVKey;
			public uint32 flags;
		}
		[CRepr]
		public struct MCHITTESTINFO
		{
			public uint32 cbSize;
			public POINT pt;
			public uint32 uHit;
			public SYSTEMTIME st;
			public RECT rc;
			public int32 iOffset;
			public int32 iRow;
			public int32 iCol;
		}
		[CRepr]
		public struct MCGRIDINFO
		{
			public uint32 cbSize;
			public MCGRIDINFO_PART dwPart;
			public MCGRIDINFO_FLAGS dwFlags;
			public int32 iCalendar;
			public int32 iRow;
			public int32 iCol;
			public BOOL bSelected;
			public SYSTEMTIME stStart;
			public SYSTEMTIME stEnd;
			public RECT rc;
			public PWSTR pszName;
			public uint cchName;
		}
		[CRepr]
		public struct NMSELCHANGE
		{
			public NMHDR nmhdr;
			public SYSTEMTIME stSelStart;
			public SYSTEMTIME stSelEnd;
		}
		[CRepr]
		public struct NMDAYSTATE
		{
			public NMHDR nmhdr;
			public SYSTEMTIME stStart;
			public int32 cDayState;
			public uint32* prgDayState;
		}
		[CRepr]
		public struct NMVIEWCHANGE
		{
			public NMHDR nmhdr;
			public uint32 dwOldView;
			public uint32 dwNewView;
		}
		[CRepr]
		public struct DATETIMEPICKERINFO
		{
			public uint32 cbSize;
			public RECT rcCheck;
			public uint32 stateCheck;
			public RECT rcButton;
			public uint32 stateButton;
			public HWND hwndEdit;
			public HWND hwndUD;
			public HWND hwndDropDown;
		}
		[CRepr]
		public struct NMDATETIMECHANGE
		{
			public NMHDR nmhdr;
			public uint32 dwFlags;
			public SYSTEMTIME st;
		}
		[CRepr]
		public struct NMDATETIMESTRINGA
		{
			public NMHDR nmhdr;
			public PSTR pszUserString;
			public SYSTEMTIME st;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct NMDATETIMESTRINGW
		{
			public NMHDR nmhdr;
			public PWSTR pszUserString;
			public SYSTEMTIME st;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct NMDATETIMEWMKEYDOWNA
		{
			public NMHDR nmhdr;
			public int32 nVirtKey;
			public PSTR pszFormat;
			public SYSTEMTIME st;
		}
		[CRepr]
		public struct NMDATETIMEWMKEYDOWNW
		{
			public NMHDR nmhdr;
			public int32 nVirtKey;
			public PWSTR pszFormat;
			public SYSTEMTIME st;
		}
		[CRepr]
		public struct NMDATETIMEFORMATA
		{
			public NMHDR nmhdr;
			public PSTR pszFormat;
			public SYSTEMTIME st;
			public PSTR pszDisplay;
			public CHAR[64] szDisplay;
		}
		[CRepr]
		public struct NMDATETIMEFORMATW
		{
			public NMHDR nmhdr;
			public PWSTR pszFormat;
			public SYSTEMTIME st;
			public PWSTR pszDisplay;
			public char16[64] szDisplay;
		}
		[CRepr]
		public struct NMDATETIMEFORMATQUERYA
		{
			public NMHDR nmhdr;
			public PSTR pszFormat;
			public SIZE szMax;
		}
		[CRepr]
		public struct NMDATETIMEFORMATQUERYW
		{
			public NMHDR nmhdr;
			public PWSTR pszFormat;
			public SIZE szMax;
		}
		[CRepr]
		public struct NMIPADDRESS
		{
			public NMHDR hdr;
			public int32 iField;
			public int32 iValue;
		}
		[CRepr, Packed(1)]
		public struct NMPGSCROLL
		{
			public NMHDR hdr;
			public NMPGSCROLL_KEYS fwKeys;
			public RECT rcParent;
			public NMPGSCROLL_DIR iDir;
			public int32 iXpos;
			public int32 iYpos;
			public int32 iScroll;
		}
		[CRepr]
		public struct NMPGCALCSIZE
		{
			public NMHDR hdr;
			public NMPGCALCSIZE_FLAGS dwFlag;
			public int32 iWidth;
			public int32 iHeight;
		}
		[CRepr]
		public struct NMPGHOTITEM
		{
			public NMHDR hdr;
			public int32 idOld;
			public int32 idNew;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct BUTTON_IMAGELIST
		{
			public HIMAGELIST himl;
			public RECT margin;
			public BUTTON_IMAGELIST_ALIGN uAlign;
		}
		[CRepr]
		public struct NMBCHOTITEM
		{
			public NMHDR hdr;
			public NMTBHOTITEM_FLAGS dwFlags;
		}
		[CRepr]
		public struct BUTTON_SPLITINFO
		{
			public uint32 mask;
			public HIMAGELIST himlGlyph;
			public uint32 uSplitStyle;
			public SIZE size;
		}
		[CRepr]
		public struct NMBCDROPDOWN
		{
			public NMHDR hdr;
			public RECT rcButton;
		}
		[CRepr]
		public struct EDITBALLOONTIP
		{
			public uint32 cbStruct;
			public PWSTR pszTitle;
			public PWSTR pszText;
			public EDITBALLOONTIP_ICON ttiIcon;
		}
		[CRepr]
		public struct NMSEARCHWEB
		{
			public NMHDR hdr;
			public EC_SEARCHWEB_ENTRYPOINT entrypoint;
			public BOOL hasQueryText;
			public BOOL invokeSucceeded;
		}
		[CRepr, Packed(1)]
		public struct TASKDIALOG_BUTTON
		{
			public int32 nButtonID;
			public PWSTR pszButtonText;
		}
		[CRepr, Packed(1)]
		public struct TASKDIALOGCONFIG
		{
			public uint32 cbSize;
			public HWND hwndParent;
			public HINSTANCE hInstance;
			public TASKDIALOG_FLAGS dwFlags;
			public TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons;
			public PWSTR pszWindowTitle;
			public _Anonymous1_e__Union Anonymous1;
			public PWSTR pszMainInstruction;
			public PWSTR pszContent;
			public uint32 cButtons;
			public TASKDIALOG_BUTTON* pButtons;
			public int32 nDefaultButton;
			public uint32 cRadioButtons;
			public TASKDIALOG_BUTTON* pRadioButtons;
			public int32 nDefaultRadioButton;
			public PWSTR pszVerificationText;
			public PWSTR pszExpandedInformation;
			public PWSTR pszExpandedControlText;
			public PWSTR pszCollapsedControlText;
			public _Anonymous2_e__Union Anonymous2;
			public PWSTR pszFooter;
			public PFTASKDIALOGCALLBACK pfCallback;
			public int lpCallbackData;
			public uint32 cxWidth;
			
			[CRepr, Union, Packed(1)]
			public struct _Anonymous1_e__Union
			{
				public HICON hMainIcon;
				public PWSTR pszMainIcon;
			}
			[CRepr, Union, Packed(1)]
			public struct _Anonymous2_e__Union
			{
				public HICON hFooterIcon;
				public PWSTR pszFooterIcon;
			}
		}
		[CRepr]
		public struct DPASTREAMINFO
		{
			public int32 iPos;
			public void* pvItem;
		}
		[CRepr]
		public struct IMAGELISTSTATS
		{
			public uint32 cbSize;
			public int32 cAlloc;
			public int32 cUsed;
			public int32 cStandby;
		}
		[CRepr]
		public struct TA_TRANSFORM
		{
			public TA_TRANSFORM_TYPE eTransformType;
			public uint32 dwTimingFunctionId;
			public uint32 dwStartTime;
			public uint32 dwDurationTime;
			public TA_TRANSFORM_FLAG eFlags;
		}
		[CRepr]
		public struct TA_TRANSFORM_2D
		{
			public TA_TRANSFORM header;
			public float rX;
			public float rY;
			public float rInitialX;
			public float rInitialY;
			public float rOriginX;
			public float rOriginY;
		}
		[CRepr]
		public struct TA_TRANSFORM_OPACITY
		{
			public TA_TRANSFORM header;
			public float rOpacity;
			public float rInitialOpacity;
		}
		[CRepr]
		public struct TA_TRANSFORM_CLIP
		{
			public TA_TRANSFORM header;
			public float rLeft;
			public float rTop;
			public float rRight;
			public float rBottom;
			public float rInitialLeft;
			public float rInitialTop;
			public float rInitialRight;
			public float rInitialBottom;
		}
		[CRepr]
		public struct TA_TIMINGFUNCTION
		{
			public TA_TIMINGFUNCTION_TYPE eTimingFunctionType;
		}
		[CRepr]
		public struct TA_CUBIC_BEZIER
		{
			public TA_TIMINGFUNCTION header;
			public float rX0;
			public float rY0;
			public float rX1;
			public float rY1;
		}
		[CRepr]
		public struct DTBGOPTS
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public RECT rcClip;
		}
		[CRepr]
		public struct MARGINS
		{
			public int32 cxLeftWidth;
			public int32 cxRightWidth;
			public int32 cyTopHeight;
			public int32 cyBottomHeight;
		}
		[CRepr]
		public struct INTLIST
		{
			public int32 iValueCount;
			public int32[402] iValues;
		}
		[CRepr]
		public struct WTA_OPTIONS
		{
			public uint32 dwFlags;
			public uint32 dwMask;
		}
		[CRepr]
		public struct DTTOPTS
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 crText;
			public uint32 crBorder;
			public uint32 crShadow;
			public int32 iTextShadowType;
			public POINT ptShadowOffset;
			public int32 iBorderSize;
			public int32 iFontPropId;
			public int32 iColorPropId;
			public int32 iStateId;
			public BOOL fApplyOverlay;
			public int32 iGlowSize;
			public DTT_CALLBACK_PROC pfnDrawTextCallback;
			public LPARAM lParam;
		}
		[CRepr]
		public struct BP_ANIMATIONPARAMS
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public BP_ANIMATIONSTYLE style;
			public uint32 dwDuration;
		}
		[CRepr]
		public struct BP_PAINTPARAMS
		{
			public uint32 cbSize;
			public BP_PAINTPARAMS_FLAGS dwFlags;
			public RECT* prcExclude;
			public BLENDFUNCTION* pBlendFunction;
		}
		[CRepr]
		public struct CCSTYLEA
		{
			public uint32 flStyle;
			public uint32 flExtStyle;
			public CHAR[256] szText;
			public uint16 lgid;
			public uint16 wReserved1;
		}
		[CRepr]
		public struct CCSTYLEW
		{
			public uint32 flStyle;
			public uint32 flExtStyle;
			public char16[256] szText;
			public uint16 lgid;
			public uint16 wReserved1;
		}
		[CRepr]
		public struct CCSTYLEFLAGA
		{
			public uint32 flStyle;
			public uint32 flStyleMask;
			public PSTR pszStyle;
		}
		[CRepr]
		public struct CCSTYLEFLAGW
		{
			public uint32 flStyle;
			public uint32 flStyleMask;
			public PWSTR pszStyle;
		}
		[CRepr]
		public struct CCINFOA
		{
			public CHAR[32] szClass;
			public uint32 flOptions;
			public CHAR[32] szDesc;
			public uint32 cxDefault;
			public uint32 cyDefault;
			public uint32 flStyleDefault;
			public uint32 flExtStyleDefault;
			public uint32 flCtrlTypeMask;
			public CHAR[256] szTextDefault;
			public int32 cStyleFlags;
			public CCSTYLEFLAGA* aStyleFlags;
			public LPFNCCSTYLEA lpfnStyle;
			public LPFNCCSIZETOTEXTA lpfnSizeToText;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct CCINFOW
		{
			public char16[32] szClass;
			public uint32 flOptions;
			public char16[32] szDesc;
			public uint32 cxDefault;
			public uint32 cyDefault;
			public uint32 flStyleDefault;
			public uint32 flExtStyleDefault;
			public uint32 flCtrlTypeMask;
			public int32 cStyleFlags;
			public CCSTYLEFLAGW* aStyleFlags;
			public char16[256] szTextDefault;
			public LPFNCCSTYLEW lpfnStyle;
			public LPFNCCSIZETOTEXTW lpfnSizeToText;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct NMHDR
		{
			public HWND hwndFrom;
			public uint idFrom;
			public uint32 code;
		}
		[CRepr]
		public struct MEASUREITEMSTRUCT
		{
			public uint32 CtlType;
			public uint32 CtlID;
			public uint32 itemID;
			public uint32 itemWidth;
			public uint32 itemHeight;
			public uint itemData;
		}
		[CRepr]
		public struct DRAWITEMSTRUCT
		{
			public DRAWITEMSTRUCT_CTL_TYPE CtlType;
			public uint32 CtlID;
			public uint32 itemID;
			public uint32 itemAction;
			public uint32 itemState;
			public HWND hwndItem;
			public HDC hDC;
			public RECT rcItem;
			public uint itemData;
		}
		[CRepr]
		public struct DELETEITEMSTRUCT
		{
			public DRAWITEMSTRUCT_CTL_TYPE CtlType;
			public uint32 CtlID;
			public uint32 itemID;
			public HWND hwndItem;
			public uint itemData;
		}
		[CRepr]
		public struct COMPAREITEMSTRUCT
		{
			public uint32 CtlType;
			public uint32 CtlID;
			public HWND hwndItem;
			public uint32 itemID1;
			public uint itemData1;
			public uint32 itemID2;
			public uint itemData2;
			public uint32 dwLocaleId;
		}
		[CRepr]
		public struct USAGE_PROPERTIES
		{
			public uint16 level;
			public uint16 page;
			public uint16 usage;
			public int32 logicalMinimum;
			public int32 logicalMaximum;
			public uint16 unit;
			public uint16 exponent;
			public uint8 count;
			public int32 physicalMinimum;
			public int32 physicalMaximum;
		}
		[CRepr]
		public struct POINTER_TYPE_INFO
		{
			public POINTER_INPUT_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public POINTER_TOUCH_INFO touchInfo;
				public POINTER_PEN_INFO penInfo;
			}
		}
		[CRepr]
		public struct TOUCH_HIT_TESTING_PROXIMITY_EVALUATION
		{
			public uint16 score;
			public POINT adjustedPoint;
		}
		[CRepr]
		public struct TOUCH_HIT_TESTING_INPUT
		{
			public uint32 pointerId;
			public POINT point;
			public RECT boundingBox;
			public RECT nonOccludedBoundingBox;
			public uint32 orientation;
		}
		[CRepr]
		public struct COMBOBOXINFO
		{
			public uint32 cbSize;
			public RECT rcItem;
			public RECT rcButton;
			public COMBOBOXINFO_BUTTON_STATE stateButton;
			public HWND hwndCombo;
			public HWND hwndItem;
			public HWND hwndList;
		}
		[CRepr]
		public struct POINTER_DEVICE_INFO
		{
			public uint32 displayOrientation;
			public HANDLE device;
			public POINTER_DEVICE_TYPE pointerDeviceType;
			public HMONITOR monitor;
			public uint32 startingCursorId;
			public uint16 maxActiveContacts;
			public char16[520] productString;
		}
		[CRepr]
		public struct POINTER_DEVICE_PROPERTY
		{
			public int32 logicalMin;
			public int32 logicalMax;
			public int32 physicalMin;
			public int32 physicalMax;
			public uint32 unit;
			public uint32 unitExponent;
			public uint16 usagePageId;
			public uint16 usageId;
		}
		[CRepr]
		public struct POINTER_DEVICE_CURSOR_INFO
		{
			public uint32 cursorId;
			public POINTER_DEVICE_CURSOR_TYPE cursor;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_ImageList = .(0x7c476ba2, 0x02b1, 0x48f4, 0x80, 0x48, 0xb2, 0x46, 0x19, 0xdd, 0xc0, 0x58);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IImageList : IUnknown
		{
			public const new Guid IID = .(0x46eb5926, 0x582e, 0x4017, 0x9f, 0xdf, 0xe8, 0x99, 0x8d, 0xaa, 0x09, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Add(HBITMAP hbmImage, HBITMAP hbmMask, out int32 pi) mut => VT.Add(ref this, hbmImage, hbmMask, out pi);
			public HRESULT ReplaceIcon(int32 i, HICON hicon, out int32 pi) mut => VT.ReplaceIcon(ref this, i, hicon, out pi);
			public HRESULT SetOverlayImage(int32 iImage, int32 iOverlay) mut => VT.SetOverlayImage(ref this, iImage, iOverlay);
			public HRESULT Replace(int32 i, HBITMAP hbmImage, HBITMAP hbmMask) mut => VT.Replace(ref this, i, hbmImage, hbmMask);
			public HRESULT AddMasked(HBITMAP hbmImage, uint32 crMask, out int32 pi) mut => VT.AddMasked(ref this, hbmImage, crMask, out pi);
			public HRESULT Draw(ref IMAGELISTDRAWPARAMS pimldp) mut => VT.Draw(ref this, ref pimldp);
			public HRESULT Remove(int32 i) mut => VT.Remove(ref this, i);
			public HRESULT GetIcon(int32 i, uint32 flags, out HICON picon) mut => VT.GetIcon(ref this, i, flags, out picon);
			public HRESULT GetImageInfo(int32 i, out IMAGEINFO pImageInfo) mut => VT.GetImageInfo(ref this, i, out pImageInfo);
			public HRESULT Copy(int32 iDst, ref IUnknown punkSrc, int32 iSrc, uint32 uFlags) mut => VT.Copy(ref this, iDst, ref punkSrc, iSrc, uFlags);
			public HRESULT Merge(int32 i1, ref IUnknown punk2, int32 i2, int32 dx, int32 dy, in Guid riid, void** ppv) mut => VT.Merge(ref this, i1, ref punk2, i2, dx, dy, riid, ppv);
			public HRESULT Clone(in Guid riid, void** ppv) mut => VT.Clone(ref this, riid, ppv);
			public HRESULT GetImageRect(int32 i, out RECT prc) mut => VT.GetImageRect(ref this, i, out prc);
			public HRESULT GetIconSize(out int32 cx, out int32 cy) mut => VT.GetIconSize(ref this, out cx, out cy);
			public HRESULT SetIconSize(int32 cx, int32 cy) mut => VT.SetIconSize(ref this, cx, cy);
			public HRESULT GetImageCount(out int32 pi) mut => VT.GetImageCount(ref this, out pi);
			public HRESULT SetImageCount(uint32 uNewCount) mut => VT.SetImageCount(ref this, uNewCount);
			public HRESULT SetBkColor(uint32 clrBk, out uint32 pclr) mut => VT.SetBkColor(ref this, clrBk, out pclr);
			public HRESULT GetBkColor(out uint32 pclr) mut => VT.GetBkColor(ref this, out pclr);
			public HRESULT BeginDrag(int32 iTrack, int32 dxHotspot, int32 dyHotspot) mut => VT.BeginDrag(ref this, iTrack, dxHotspot, dyHotspot);
			public HRESULT EndDrag() mut => VT.EndDrag(ref this);
			public HRESULT DragEnter(HWND hwndLock, int32 x, int32 y) mut => VT.DragEnter(ref this, hwndLock, x, y);
			public HRESULT DragLeave(HWND hwndLock) mut => VT.DragLeave(ref this, hwndLock);
			public HRESULT DragMove(int32 x, int32 y) mut => VT.DragMove(ref this, x, y);
			public HRESULT SetDragCursorImage(ref IUnknown punk, int32 iDrag, int32 dxHotspot, int32 dyHotspot) mut => VT.SetDragCursorImage(ref this, ref punk, iDrag, dxHotspot, dyHotspot);
			public HRESULT DragShowNolock(BOOL fShow) mut => VT.DragShowNolock(ref this, fShow);
			public HRESULT GetDragImage(POINT* ppt, POINT* pptHotspot, in Guid riid, void** ppv) mut => VT.GetDragImage(ref this, ppt, pptHotspot, riid, ppv);
			public HRESULT GetItemFlags(int32 i, out IMAGE_LIST_ITEM_FLAGS dwFlags) mut => VT.GetItemFlags(ref this, i, out dwFlags);
			public HRESULT GetOverlayImage(int32 iOverlay, out int32 piIndex) mut => VT.GetOverlayImage(ref this, iOverlay, out piIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, HBITMAP hbmImage, HBITMAP hbmMask, out int32 pi) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, HICON hicon, out int32 pi) ReplaceIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 iImage, int32 iOverlay) SetOverlayImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, HBITMAP hbmImage, HBITMAP hbmMask) Replace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, HBITMAP hbmImage, uint32 crMask, out int32 pi) AddMasked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, ref IMAGELISTDRAWPARAMS pimldp) Draw;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, uint32 flags, out HICON picon) GetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, out IMAGEINFO pImageInfo) GetImageInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 iDst, ref IUnknown punkSrc, int32 iSrc, uint32 uFlags) Copy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i1, ref IUnknown punk2, int32 i2, int32 dx, int32 dy, in Guid riid, void** ppv) Merge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, in Guid riid, void** ppv) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, out RECT prc) GetImageRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, out int32 cx, out int32 cy) GetIconSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 cx, int32 cy) SetIconSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, out int32 pi) GetImageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, uint32 uNewCount) SetImageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, uint32 clrBk, out uint32 pclr) SetBkColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, out uint32 pclr) GetBkColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 iTrack, int32 dxHotspot, int32 dyHotspot) BeginDrag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self) EndDrag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, HWND hwndLock, int32 x, int32 y) DragEnter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, HWND hwndLock) DragLeave;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 x, int32 y) DragMove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, ref IUnknown punk, int32 iDrag, int32 dxHotspot, int32 dyHotspot) SetDragCursorImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, BOOL fShow) DragShowNolock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, POINT* ppt, POINT* pptHotspot, in Guid riid, void** ppv) GetDragImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 i, out IMAGE_LIST_ITEM_FLAGS dwFlags) GetItemFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList self, int32 iOverlay, out int32 piIndex) GetOverlayImage;
			}
		}
		[CRepr]
		public struct IImageList2 : IImageList
		{
			public const new Guid IID = .(0x192b9d83, 0x50fc, 0x457b, 0x90, 0xa0, 0x2b, 0x82, 0xa8, 0xb5, 0xda, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resize(int32 cxNewIconSize, int32 cyNewIconSize) mut => VT.Resize(ref this, cxNewIconSize, cyNewIconSize);
			public HRESULT GetOriginalSize(int32 iImage, uint32 dwFlags, out int32 pcx, out int32 pcy) mut => VT.GetOriginalSize(ref this, iImage, dwFlags, out pcx, out pcy);
			public HRESULT SetOriginalSize(int32 iImage, int32 cx, int32 cy) mut => VT.SetOriginalSize(ref this, iImage, cx, cy);
			public HRESULT SetCallback(IUnknown* punk) mut => VT.SetCallback(ref this, punk);
			public HRESULT GetCallback(in Guid riid, void** ppv) mut => VT.GetCallback(ref this, riid, ppv);
			public HRESULT ForceImagePresent(int32 iImage, uint32 dwFlags) mut => VT.ForceImagePresent(ref this, iImage, dwFlags);
			public HRESULT DiscardImages(int32 iFirstImage, int32 iLastImage, uint32 dwFlags) mut => VT.DiscardImages(ref this, iFirstImage, iLastImage, dwFlags);
			public HRESULT PreloadImages(ref IMAGELISTDRAWPARAMS pimldp) mut => VT.PreloadImages(ref this, ref pimldp);
			public HRESULT GetStatistics(out IMAGELISTSTATS pils) mut => VT.GetStatistics(ref this, out pils);
			public HRESULT Initialize(int32 cx, int32 cy, IMAGELIST_CREATION_FLAGS flags, int32 cInitial, int32 cGrow) mut => VT.Initialize(ref this, cx, cy, flags, cInitial, cGrow);
			public HRESULT Replace2(int32 i, HBITMAP hbmImage, HBITMAP hbmMask, IUnknown* punk, uint32 dwFlags) mut => VT.Replace2(ref this, i, hbmImage, hbmMask, punk, dwFlags);
			public HRESULT ReplaceFromImageList(int32 i, ref IImageList pil, int32 iSrc, IUnknown* punk, uint32 dwFlags) mut => VT.ReplaceFromImageList(ref this, i, ref pil, iSrc, punk, dwFlags);

			[CRepr]
			public struct VTable : IImageList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 cxNewIconSize, int32 cyNewIconSize) Resize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 iImage, uint32 dwFlags, out int32 pcx, out int32 pcy) GetOriginalSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 iImage, int32 cx, int32 cy) SetOriginalSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, IUnknown* punk) SetCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, in Guid riid, void** ppv) GetCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 iImage, uint32 dwFlags) ForceImagePresent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 iFirstImage, int32 iLastImage, uint32 dwFlags) DiscardImages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, ref IMAGELISTDRAWPARAMS pimldp) PreloadImages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, out IMAGELISTSTATS pils) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 cx, int32 cy, IMAGELIST_CREATION_FLAGS flags, int32 cInitial, int32 cGrow) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 i, HBITMAP hbmImage, HBITMAP hbmMask, IUnknown* punk, uint32 dwFlags) Replace2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageList2 self, int32 i, ref IImageList pil, int32 iSrc, IUnknown* punk, uint32 dwFlags) ReplaceFromImageList;
			}
		}
		
		// --- Functions ---
		
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HPROPSHEETPAGE CreatePropertySheetPageA(out PROPSHEETPAGEA constPropSheetPagePointer);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HPROPSHEETPAGE CreatePropertySheetPageW(out PROPSHEETPAGEW constPropSheetPagePointer);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DestroyPropertySheetPage(HPROPSHEETPAGE param0);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int PropertySheetA(out PROPSHEETHEADERA_V2 param0);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int PropertySheetW(out PROPSHEETHEADERW_V2 param0);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitCommonControls();
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitCommonControlsEx(in INITCOMMONCONTROLSEX picce);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_Create(int32 cx, int32 cy, IMAGELIST_CREATION_FLAGS flags, int32 cInitial, int32 cGrow);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Destroy(HIMAGELIST himl);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImageList_GetImageCount(HIMAGELIST himl);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_SetImageCount(HIMAGELIST himl, uint32 uNewCount);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImageList_Add(HIMAGELIST himl, HBITMAP hbmImage, HBITMAP hbmMask);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImageList_ReplaceIcon(HIMAGELIST himl, int32 i, HICON hicon);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImageList_SetBkColor(HIMAGELIST himl, uint32 clrBk);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImageList_GetBkColor(HIMAGELIST himl);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_SetOverlayImage(HIMAGELIST himl, int32 iImage, int32 iOverlay);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Draw(HIMAGELIST himl, int32 i, HDC hdcDst, int32 x, int32 y, IMAGE_LIST_DRAW_STYLE fStyle);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Replace(HIMAGELIST himl, int32 i, HBITMAP hbmImage, HBITMAP hbmMask);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImageList_AddMasked(HIMAGELIST himl, HBITMAP hbmImage, uint32 crMask);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DrawEx(HIMAGELIST himl, int32 i, HDC hdcDst, int32 x, int32 y, int32 dx, int32 dy, uint32 rgbBk, uint32 rgbFg, IMAGE_LIST_DRAW_STYLE fStyle);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DrawIndirect(ref IMAGELISTDRAWPARAMS pimldp);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Remove(HIMAGELIST himl, int32 i);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ImageList_GetIcon(HIMAGELIST himl, int32 i, uint32 flags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_LoadImageA(HINSTANCE hi, PSTR lpbmp, int32 cx, int32 cGrow, uint32 crMask, uint32 uType, IMAGE_FLAGS uFlags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_LoadImageW(HINSTANCE hi, PWSTR lpbmp, int32 cx, int32 cGrow, uint32 crMask, uint32 uType, IMAGE_FLAGS uFlags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Copy(HIMAGELIST himlDst, int32 iDst, HIMAGELIST himlSrc, int32 iSrc, IMAGE_LIST_COPY_FLAGS uFlags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_BeginDrag(HIMAGELIST himlTrack, int32 iTrack, int32 dxHotspot, int32 dyHotspot);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ImageList_EndDrag();
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DragEnter(HWND hwndLock, int32 x, int32 y);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DragLeave(HWND hwndLock);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DragMove(int32 x, int32 y);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_SetDragCursorImage(HIMAGELIST himlDrag, int32 iDrag, int32 dxHotspot, int32 dyHotspot);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_DragShowNolock(BOOL fShow);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_GetDragImage(POINT* ppt, POINT* pptHotspot);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_Read(ref IStream pstm);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_Write(HIMAGELIST himl, ref IStream pstm);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ImageList_ReadEx(uint32 dwFlags, ref IStream pstm, in Guid riid, void** ppv);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ImageList_WriteEx(HIMAGELIST himl, uint32 dwFlags, ref IStream pstm);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_GetIconSize(HIMAGELIST himl, int32* cx, int32* cy);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_SetIconSize(HIMAGELIST himl, int32 cx, int32 cy);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImageList_GetImageInfo(HIMAGELIST himl, int32 i, out IMAGEINFO pImageInfo);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_Merge(HIMAGELIST himl1, int32 i1, HIMAGELIST himl2, int32 i2, int32 dx, int32 dy);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMAGELIST ImageList_Duplicate(HIMAGELIST himl);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HIMAGELIST_QueryInterface(HIMAGELIST himl, in Guid riid, void** ppv);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND CreateToolbarEx(HWND hwnd, uint32 ws, uint32 wID, int32 nBitmaps, HINSTANCE hBMInst, uint wBMID, out TBBUTTON lpButtons, int32 iNumButtons, int32 dxButton, int32 dyButton, int32 dxBitmap, int32 dyBitmap, uint32 uStructSize);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HBITMAP CreateMappedBitmap(HINSTANCE hInstance, int idBitmap, uint32 wFlags, COLORMAP* lpColorMap, int32 iNumMaps);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrawStatusTextA(HDC hDC, out RECT lprc, PSTR pszText, uint32 uFlags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrawStatusTextW(HDC hDC, out RECT lprc, PWSTR pszText, uint32 uFlags);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND CreateStatusWindowA(int32 style, PSTR lpszText, HWND hwndParent, uint32 wID);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND CreateStatusWindowW(int32 style, PWSTR lpszText, HWND hwndParent, uint32 wID);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void MenuHelp(uint32 uMsg, WPARAM wParam, LPARAM lParam, HMENU hMainMenu, HINSTANCE hInst, HWND hwndStatus, ref uint32 lpwIDs);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShowHideMenuCtl(HWND hWnd, uint uFlags, ref int32 lpInfo);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetEffectiveClientRect(HWND hWnd, out RECT lprc, in int32 lpInfo);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL MakeDragList(HWND hLB);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DrawInsert(HWND handParent, HWND hLB, int32 nItem);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 LBItemFromPt(HWND hLB, POINT pt, BOOL bAutoScroll);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND CreateUpDownControl(uint32 dwStyle, int32 x, int32 y, int32 cx, int32 cy, HWND hParent, int32 nID, HINSTANCE hInst, HWND hBuddy, int32 nUpper, int32 nLower, int32 nPos);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TaskDialogIndirect(in TASKDIALOGCONFIG pTaskConfig, int32* pnButton, int32* pnRadioButton, BOOL* pfVerificationFlagChecked);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TaskDialog(HWND hwndOwner, HINSTANCE hInstance, PWSTR pszWindowTitle, PWSTR pszMainInstruction, PWSTR pszContent, TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons, PWSTR pszIcon, int32* pnButton);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void InitMUILanguage(uint16 uiLang);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint16 GetMUILanguage();
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDSA DSA_Create(int32 cbItem, int32 cItemGrow);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_Destroy(HDSA hdsa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DSA_DestroyCallback(HDSA hdsa, PFNDAENUMCALLBACK pfnCB, void* pData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_DeleteItem(HDSA hdsa, int32 i);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_DeleteAllItems(HDSA hdsa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DSA_EnumCallback(HDSA hdsa, PFNDAENUMCALLBACK pfnCB, void* pData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DSA_InsertItem(HDSA hdsa, int32 i, void* pitem);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* DSA_GetItemPtr(HDSA hdsa, int32 i);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_GetItem(HDSA hdsa, int32 i, void* pitem);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_SetItem(HDSA hdsa, int32 i, void* pitem);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDSA DSA_Clone(HDSA hdsa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 DSA_GetSize(HDSA hdsa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DSA_Sort(HDSA pdsa, PFNDACOMPARE pfnCompare, LPARAM lParam);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDPA DPA_Create(int32 cItemGrow);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDPA DPA_CreateEx(int32 cpGrow, HANDLE hheap);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDPA DPA_Clone(HDPA hdpa, HDPA hdpaNew);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_Destroy(HDPA hdpa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DPA_DestroyCallback(HDPA hdpa, PFNDAENUMCALLBACK pfnCB, void* pData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* DPA_DeletePtr(HDPA hdpa, int32 i);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_DeleteAllPtrs(HDPA hdpa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DPA_EnumCallback(HDPA hdpa, PFNDAENUMCALLBACK pfnCB, void* pData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_Grow(HDPA pdpa, int32 cp);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DPA_InsertPtr(HDPA hdpa, int32 i, void* p);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_SetPtr(HDPA hdpa, int32 i, void* p);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* DPA_GetPtr(HDPA hdpa, int i);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DPA_GetPtrIndex(HDPA hdpa, void* p);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint64 DPA_GetSize(HDPA hdpa);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_Sort(HDPA hdpa, PFNDACOMPARE pfnCompare, LPARAM lParam);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DPA_LoadStream(out HDPA phdpa, PFNDPASTREAM pfn, ref IStream pstream, void* pvInstData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DPA_SaveStream(HDPA hdpa, PFNDPASTREAM pfn, ref IStream pstream, void* pvInstData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DPA_Merge(HDPA hdpaDest, HDPA hdpaSrc, uint32 dwFlags, PFNDACOMPARE pfnCompare, PFNDPAMERGE pfnMerge, LPARAM lParam);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DPA_Search(HDPA hdpa, void* pFind, int32 iStart, PFNDACOMPARE pfnCompare, LPARAM lParam, uint32 options);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Str_SetPtrW(out PWSTR ppsz, PWSTR psz);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_EnableScrollBar(HWND param0, int32 param1, uint32 param2);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_ShowScrollBar(HWND param0, SCROLLBAR_CONSTANTS code, BOOL param2);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_GetScrollRange(HWND param0, SCROLLBAR_CONSTANTS code, out int32 param2, out int32 param3);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_GetScrollInfo(HWND param0, SCROLLBAR_CONSTANTS code, out SCROLLINFO param2);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FlatSB_GetScrollPos(HWND param0, SCROLLBAR_CONSTANTS code);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_GetScrollProp(HWND param0, WSB_PROP propIndex, out int32 param2);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FlatSB_SetScrollPos(HWND param0, SCROLLBAR_CONSTANTS code, int32 pos, BOOL fRedraw);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FlatSB_SetScrollInfo(HWND param0, SCROLLBAR_CONSTANTS code, out SCROLLINFO psi, BOOL fRedraw);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 FlatSB_SetScrollRange(HWND param0, SCROLLBAR_CONSTANTS code, int32 min, int32 max, BOOL fRedraw);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FlatSB_SetScrollProp(HWND param0, WSB_PROP index, int newValue, BOOL param3);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitializeFlatSB(HWND param0);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UninitializeFlatSB(HWND param0);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadIconMetric(HINSTANCE hinst, PWSTR pszName, _LI_METRIC lims, out HICON phico);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadIconWithScaleDown(HINSTANCE hinst, PWSTR pszName, int32 cx, int32 cy, out HICON phico);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DrawShadowText(HDC hdc, char16* pszText, uint32 cch, ref RECT prc, uint32 dwFlags, uint32 crText, uint32 crShadow, int32 ixOffset, int32 iyOffset);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ImageList_CoCreateInstance(in Guid rclsid, IUnknown* punkOuter, in Guid riid, void** ppv);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BeginPanningFeedback(HWND hwnd);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdatePanningFeedback(HWND hwnd, int32 lTotalOverpanOffsetX, int32 lTotalOverpanOffsetY, BOOL fInInertia);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndPanningFeedback(HWND hwnd, BOOL fAnimateBack);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeAnimationProperty(int hTheme, int32 iStoryboardId, int32 iTargetId, TA_PROPERTY eProperty, void* pvProperty, uint32 cbSize, out uint32 pcbSizeOut);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeAnimationTransform(int hTheme, int32 iStoryboardId, int32 iTargetId, uint32 dwTransformIndex, TA_TRANSFORM* pTransform, uint32 cbSize, out uint32 pcbSizeOut);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeTimingFunction(int hTheme, int32 iTimingFunctionId, TA_TIMINGFUNCTION* pTimingFunction, uint32 cbSize, out uint32 pcbSizeOut);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenThemeData(HWND hwnd, PWSTR pszClassList);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenThemeDataEx(HWND hwnd, PWSTR pszClassList, OPEN_THEME_DATA_FLAGS dwFlags);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CloseThemeData(int hTheme);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeBackground(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pRect, RECT* pClipRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeBackgroundEx(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pRect, DTBGOPTS* pOptions);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeText(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, char16* pszText, int32 cchText, uint32 dwTextFlags, uint32 dwTextFlags2, ref RECT pRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeBackgroundContentRect(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pBoundingRect, out RECT pContentRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeBackgroundExtent(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pContentRect, out RECT pExtentRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeBackgroundRegion(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pRect, out HRGN pRegion);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemePartSize(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, RECT* prc, THEMESIZE eSize, out SIZE psz);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeTextExtent(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, char16* pszText, int32 cchCharCount, uint32 dwTextFlags, RECT* pBoundingRect, out RECT pExtentRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeTextMetrics(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, out TEXTMETRICW ptm);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HitTestThemeBackground(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, uint32 dwOptions, ref RECT pRect, HRGN hrgn, POINT ptTest, out uint16 pwHitTestCode);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeEdge(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pDestRect, uint32 uEdge, uint32 uFlags, RECT* pContentRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeIcon(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, ref RECT pRect, HIMAGELIST himl, int32 iImageIndex);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsThemePartDefined(int hTheme, int32 iPartId, int32 iStateId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsThemeBackgroundPartiallyTransparent(int hTheme, int32 iPartId, int32 iStateId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeColor(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out uint32 pColor);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeMetric(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, THEME_PROPERTY_SYMBOL_ID iPropId, out int32 piVal);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeString(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, char16* pszBuff, int32 cchMaxBuffChars);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeBool(int hTheme, int32 iPartId, int32 iStateId, THEME_PROPERTY_SYMBOL_ID iPropId, out BOOL pfVal);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeInt(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out int32 piVal);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeEnumValue(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out int32 piVal);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemePosition(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out POINT pPoint);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeFont(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, int32 iPropId, out LOGFONTW pFont);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeRect(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out RECT pRect);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeMargins(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, int32 iPropId, RECT* prc, out MARGINS pMargins);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeIntList(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out INTLIST pIntList);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemePropertyOrigin(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, out PROPERTYORIGIN pOrigin);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetWindowTheme(HWND hwnd, PWSTR pszSubAppName, PWSTR pszSubIdList);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeFilename(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, char16* pszThemeFileName, int32 cchMaxBuffChars);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetThemeSysColor(int hTheme, int32 iColorId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HBRUSH GetThemeSysColorBrush(int hTheme, THEME_PROPERTY_SYMBOL_ID iColorId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetThemeSysBool(int hTheme, int32 iBoolId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetThemeSysSize(int hTheme, int32 iSizeId);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeSysFont(int hTheme, THEME_PROPERTY_SYMBOL_ID iFontId, out LOGFONTW plf);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeSysString(int hTheme, THEME_PROPERTY_SYMBOL_ID iStringId, char16* pszStringBuff, int32 cchMaxStringChars);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeSysInt(int hTheme, int32 iIntId, out int32 piValue);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsThemeActive();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsAppThemed();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int GetWindowTheme(HWND hwnd);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EnableThemeDialogTexture(HWND hwnd, uint32 dwFlags);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsThemeDialogTextureEnabled(HWND hwnd);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetThemeAppProperties();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SetThemeAppProperties(uint32 dwFlags);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCurrentThemeName(char16* pszThemeFileName, int32 cchMaxNameChars, char16* pszColorBuff, int32 cchMaxColorChars, char16* pszSizeBuff, int32 cchMaxSizeChars);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeDocumentationProperty(PWSTR pszThemeName, PWSTR pszPropertyName, char16* pszValueBuff, int32 cchMaxValChars);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeParentBackground(HWND hwnd, HDC hdc, RECT* prc);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EnableTheming(BOOL fEnable);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeParentBackgroundEx(HWND hwnd, HDC hdc, DRAW_THEME_PARENT_BACKGROUND_FLAGS dwFlags, RECT* prc);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetWindowThemeAttribute(HWND hwnd, WINDOWTHEMEATTRIBUTETYPE eAttribute, void* pvAttribute, uint32 cbAttribute);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DrawThemeTextEx(int hTheme, HDC hdc, int32 iPartId, int32 iStateId, char16* pszText, int32 cchText, uint32 dwTextFlags, out RECT pRect, DTTOPTS* pOptions);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeBitmap(int hTheme, int32 iPartId, int32 iStateId, THEME_PROPERTY_SYMBOL_ID iPropId, GET_THEME_BITMAP_FLAGS dwFlags, out HBITMAP phBitmap);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeStream(int hTheme, int32 iPartId, int32 iStateId, int32 iPropId, void** ppvStream, uint32* pcbStream, HINSTANCE hInst);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferedPaintInit();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferedPaintUnInit();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int BeginBufferedPaint(HDC hdcTarget, in RECT prcTarget, BP_BUFFERFORMAT dwFormat, BP_PAINTPARAMS* pPaintParams, out HDC phdc);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EndBufferedPaint(int hBufferedPaint, BOOL fUpdateTarget);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetBufferedPaintTargetRect(int hBufferedPaint, out RECT prc);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GetBufferedPaintTargetDC(int hBufferedPaint);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HDC GetBufferedPaintDC(int hBufferedPaint);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetBufferedPaintBits(int hBufferedPaint, out RGBQUAD* ppbBuffer, out int32 pcxRow);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferedPaintClear(int hBufferedPaint, RECT* prc);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferedPaintSetAlpha(int hBufferedPaint, RECT* prc, uint8 alpha);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferedPaintStopAllAnimations(HWND hwnd);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int BeginBufferedAnimation(HWND hwnd, HDC hdcTarget, in RECT prcTarget, BP_BUFFERFORMAT dwFormat, BP_PAINTPARAMS* pPaintParams, ref BP_ANIMATIONPARAMS pAnimationParams, out HDC phdcFrom, out HDC phdcTo);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT EndBufferedAnimation(int hbpAnimation, BOOL fUpdateTarget);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BufferedPaintRenderAnimation(HWND hwnd, HDC hdcTarget);
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsCompositionActive();
		[Import("uxtheme.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetThemeTransitionDuration(int hTheme, int32 iPartId, int32 iStateIdFrom, int32 iStateIdTo, int32 iPropId, out uint32 pdwDuration);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckDlgButton(HWND hDlg, int32 nIDButton, DLG_BUTTON_CHECK_STATE uCheck);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckRadioButton(HWND hDlg, int32 nIDFirstButton, int32 nIDLastButton, int32 nIDCheckButton);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 IsDlgButtonChecked(HWND hDlg, int32 nIDButton);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsCharLowerW(char16 ch);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HSYNTHETICPOINTERDEVICE CreateSyntheticPointerDevice(POINTER_INPUT_TYPE pointerType, uint32 maxCount, POINTER_FEEDBACK_MODE mode);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DestroySyntheticPointerDevice(HSYNTHETICPOINTERDEVICE device);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterTouchHitTestingWindow(HWND hwnd, uint32 value);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvaluateProximityToRect(in RECT controlBoundingBox, in TOUCH_HIT_TESTING_INPUT pHitTestingInput, out TOUCH_HIT_TESTING_PROXIMITY_EVALUATION pProximityEval);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EvaluateProximityToPolygon(uint32 numVertices, POINT* controlPolygon, in TOUCH_HIT_TESTING_INPUT pHitTestingInput, out TOUCH_HIT_TESTING_PROXIMITY_EVALUATION pProximityEval);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT PackTouchHitTestingProximityEvaluation(in TOUCH_HIT_TESTING_INPUT pHitTestingInput, in TOUCH_HIT_TESTING_PROXIMITY_EVALUATION pProximityEval);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetWindowFeedbackSetting(HWND hwnd, FEEDBACK_TYPE feedback, uint32 dwFlags, out uint32 pSize, void* config);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWindowFeedbackSetting(HWND hwnd, FEEDBACK_TYPE feedback, uint32 dwFlags, uint32 size, void* configuration);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetScrollPos(HWND hWnd, SCROLLBAR_CONSTANTS nBar, int32 nPos, BOOL bRedraw);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetScrollRange(HWND hWnd, SCROLLBAR_CONSTANTS nBar, int32 nMinPos, int32 nMaxPos, BOOL bRedraw);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShowScrollBar(HWND hWnd, SCROLLBAR_CONSTANTS wBar, BOOL bShow);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnableScrollBar(HWND hWnd, SCROLLBAR_CONSTANTS wSBflags, ENABLE_SCROLL_BAR_ARROWS wArrows);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DlgDirListA(HWND hDlg, PSTR lpPathSpec, int32 nIDListBox, int32 nIDStaticPath, DLG_DIR_LIST_FILE_TYPE uFileType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DlgDirListW(HWND hDlg, PWSTR lpPathSpec, int32 nIDListBox, int32 nIDStaticPath, DLG_DIR_LIST_FILE_TYPE uFileType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DlgDirSelectExA(HWND hwndDlg, uint8* lpString, int32 chCount, int32 idListBox);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DlgDirSelectExW(HWND hwndDlg, char16* lpString, int32 chCount, int32 idListBox);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DlgDirListComboBoxA(HWND hDlg, PSTR lpPathSpec, int32 nIDComboBox, int32 nIDStaticPath, DLG_DIR_LIST_FILE_TYPE uFiletype);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DlgDirListComboBoxW(HWND hDlg, PWSTR lpPathSpec, int32 nIDComboBox, int32 nIDStaticPath, DLG_DIR_LIST_FILE_TYPE uFiletype);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DlgDirSelectComboBoxExA(HWND hwndDlg, uint8* lpString, int32 cchOut, int32 idComboBox);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DlgDirSelectComboBoxExW(HWND hwndDlg, char16* lpString, int32 cchOut, int32 idComboBox);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetScrollInfo(HWND hwnd, SCROLLBAR_CONSTANTS nBar, ref SCROLLINFO lpsi, BOOL redraw);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetComboBoxInfo(HWND hwndCombo, out COMBOBOXINFO pcbi);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetListBoxInfo(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterPointerDeviceNotifications(HWND window, BOOL notifyRange);
	}
}
