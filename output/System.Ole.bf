using System;

// namespace System.Ole
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 CTL_E_ILLEGALFUNCTIONCALL = -2146828283;
		public const int32 CONNECT_E_FIRST = -2147220992;
		public const int32 SELFREG_E_FIRST = -2147220992;
		public const int32 PERPROP_E_FIRST = -2147220992;
		public const HRESULT OLECMDERR_E_FIRST = -2147221248;
		public const HRESULT OLECMDERR_E_DISABLED = -2147221247;
		public const HRESULT OLECMDERR_E_NOHELP = -2147221246;
		public const HRESULT OLECMDERR_E_CANCELED = -2147221245;
		public const HRESULT OLECMDERR_E_UNKNOWNGROUP = -2147221244;
		public const HRESULT CONNECT_E_NOCONNECTION = -2147220992;
		public const HRESULT CONNECT_E_ADVISELIMIT = -2147220991;
		public const HRESULT CONNECT_E_CANNOTCONNECT = -2147220990;
		public const HRESULT CONNECT_E_OVERRIDDEN = -2147220989;
		public const HRESULT SELFREG_E_TYPELIB = -2147220992;
		public const HRESULT SELFREG_E_CLASS = -2147220991;
		public const HRESULT PERPROP_E_NOPAGEAVAILABLE = -2147220992;
		public const Guid CLSID_CFontPropPage = .(0x0be35200, 0x8f91, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		public const Guid CLSID_CColorPropPage = .(0x0be35201, 0x8f91, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		public const Guid CLSID_CPicturePropPage = .(0x0be35202, 0x8f91, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		public const Guid CLSID_PersistPropset = .(0xfb8f0821, 0x0164, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
		public const Guid CLSID_ConvertVBX = .(0xfb8f0822, 0x0164, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
		public const Guid CLSID_StdFont = .(0x0be35203, 0x8f91, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		public const Guid CLSID_StdPicture = .(0x0be35204, 0x8f91, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		public const Guid GUID_HIMETRIC = .(0x66504300, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_COLOR = .(0x66504301, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_XPOSPIXEL = .(0x66504302, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_YPOSPIXEL = .(0x66504303, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_XSIZEPIXEL = .(0x66504304, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_YSIZEPIXEL = .(0x66504305, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_XPOS = .(0x66504306, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_YPOS = .(0x66504307, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_XSIZE = .(0x66504308, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_YSIZE = .(0x66504309, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_TRISTATE = .(0x6650430a, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_OPTIONVALUEEXCLUSIVE = .(0x6650430b, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_CHECKVALUEEXCLUSIVE = .(0x6650430c, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTNAME = .(0x6650430d, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTSIZE = .(0x6650430e, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTBOLD = .(0x6650430f, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTITALIC = .(0x66504310, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTUNDERSCORE = .(0x66504311, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_FONTSTRIKETHROUGH = .(0x66504312, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const Guid GUID_HANDLE = .(0x66504313, 0xbe0f, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		public const int32 PICTYPE_UNINITIALIZED = -1;
		public const uint32 PICTYPE_NONE = 0;
		public const uint32 PICTYPE_BITMAP = 1;
		public const uint32 PICTYPE_METAFILE = 2;
		public const uint32 PICTYPE_ICON = 3;
		public const uint32 PICTYPE_ENHMETAFILE = 4;
		public const HRESULT CONNECT_E_LAST = -2147220977;
		public const HRESULT CONNECT_S_FIRST = 262656;
		public const HRESULT CONNECT_S_LAST = 262671;
		public const HRESULT SELFREG_E_LAST = -2147220977;
		public const HRESULT SELFREG_S_FIRST = 262656;
		public const HRESULT SELFREG_S_LAST = 262671;
		public const HRESULT PERPROP_E_LAST = -2147220977;
		public const HRESULT PERPROP_S_FIRST = 262656;
		public const HRESULT PERPROP_S_LAST = 262671;
		public const int32 OLEIVERB_PROPERTIES = -7;
		public const uint32 VT_STREAMED_PROPSET = 73;
		public const uint32 VT_STORED_PROPSET = 74;
		public const uint32 VT_BLOB_PROPSET = 75;
		public const uint32 VT_VERBOSE_ENUM = 76;
		public const uint32 OCM__BASE = 8192;
		public const uint32 LP_DEFAULT = 0;
		public const uint32 LP_MONOCHROME = 1;
		public const uint32 LP_VGACOLOR = 2;
		public const uint32 LP_COLOR = 4;
		public const int32 DISPID_AUTOSIZE = -500;
		public const int32 DISPID_BACKCOLOR = -501;
		public const int32 DISPID_BACKSTYLE = -502;
		public const int32 DISPID_BORDERCOLOR = -503;
		public const int32 DISPID_BORDERSTYLE = -504;
		public const int32 DISPID_BORDERWIDTH = -505;
		public const int32 DISPID_DRAWMODE = -507;
		public const int32 DISPID_DRAWSTYLE = -508;
		public const int32 DISPID_DRAWWIDTH = -509;
		public const int32 DISPID_FILLCOLOR = -510;
		public const int32 DISPID_FILLSTYLE = -511;
		public const int32 DISPID_FONT = -512;
		public const int32 DISPID_FORECOLOR = -513;
		public const int32 DISPID_ENABLED = -514;
		public const int32 DISPID_HWND = -515;
		public const int32 DISPID_TABSTOP = -516;
		public const int32 DISPID_TEXT = -517;
		public const int32 DISPID_CAPTION = -518;
		public const int32 DISPID_BORDERVISIBLE = -519;
		public const int32 DISPID_APPEARANCE = -520;
		public const int32 DISPID_MOUSEPOINTER = -521;
		public const int32 DISPID_MOUSEICON = -522;
		public const int32 DISPID_PICTURE = -523;
		public const int32 DISPID_VALID = -524;
		public const int32 DISPID_READYSTATE = -525;
		public const int32 DISPID_LISTINDEX = -526;
		public const int32 DISPID_SELECTED = -527;
		public const int32 DISPID_LIST = -528;
		public const int32 DISPID_COLUMN = -529;
		public const int32 DISPID_LISTCOUNT = -531;
		public const int32 DISPID_MULTISELECT = -532;
		public const int32 DISPID_MAXLENGTH = -533;
		public const int32 DISPID_PASSWORDCHAR = -534;
		public const int32 DISPID_SCROLLBARS = -535;
		public const int32 DISPID_WORDWRAP = -536;
		public const int32 DISPID_MULTILINE = -537;
		public const int32 DISPID_NUMBEROFROWS = -538;
		public const int32 DISPID_NUMBEROFCOLUMNS = -539;
		public const int32 DISPID_DISPLAYSTYLE = -540;
		public const int32 DISPID_GROUPNAME = -541;
		public const int32 DISPID_IMEMODE = -542;
		public const int32 DISPID_ACCELERATOR = -543;
		public const int32 DISPID_ENTERKEYBEHAVIOR = -544;
		public const int32 DISPID_TABKEYBEHAVIOR = -545;
		public const int32 DISPID_SELTEXT = -546;
		public const int32 DISPID_SELSTART = -547;
		public const int32 DISPID_SELLENGTH = -548;
		public const int32 DISPID_REFRESH = -550;
		public const int32 DISPID_DOCLICK = -551;
		public const int32 DISPID_ABOUTBOX = -552;
		public const int32 DISPID_ADDITEM = -553;
		public const int32 DISPID_CLEAR = -554;
		public const int32 DISPID_REMOVEITEM = -555;
		public const int32 DISPID_CLICK = -600;
		public const int32 DISPID_DBLCLICK = -601;
		public const int32 DISPID_KEYDOWN = -602;
		public const int32 DISPID_KEYPRESS = -603;
		public const int32 DISPID_KEYUP = -604;
		public const int32 DISPID_MOUSEDOWN = -605;
		public const int32 DISPID_MOUSEMOVE = -606;
		public const int32 DISPID_MOUSEUP = -607;
		public const int32 DISPID_ERROREVENT = -608;
		public const int32 DISPID_READYSTATECHANGE = -609;
		public const int32 DISPID_CLICK_VALUE = -610;
		public const int32 DISPID_RIGHTTOLEFT = -611;
		public const int32 DISPID_TOPTOBOTTOM = -612;
		public const int32 DISPID_THIS = -613;
		public const int32 DISPID_AMBIENT_BACKCOLOR = -701;
		public const int32 DISPID_AMBIENT_DISPLAYNAME = -702;
		public const int32 DISPID_AMBIENT_FONT = -703;
		public const int32 DISPID_AMBIENT_FORECOLOR = -704;
		public const int32 DISPID_AMBIENT_LOCALEID = -705;
		public const int32 DISPID_AMBIENT_MESSAGEREFLECT = -706;
		public const int32 DISPID_AMBIENT_SCALEUNITS = -707;
		public const int32 DISPID_AMBIENT_TEXTALIGN = -708;
		public const int32 DISPID_AMBIENT_USERMODE = -709;
		public const int32 DISPID_AMBIENT_UIDEAD = -710;
		public const int32 DISPID_AMBIENT_SHOWGRABHANDLES = -711;
		public const int32 DISPID_AMBIENT_SHOWHATCHING = -712;
		public const int32 DISPID_AMBIENT_DISPLAYASDEFAULT = -713;
		public const int32 DISPID_AMBIENT_SUPPORTSMNEMONICS = -714;
		public const int32 DISPID_AMBIENT_AUTOCLIP = -715;
		public const int32 DISPID_AMBIENT_APPEARANCE = -716;
		public const int32 DISPID_AMBIENT_CODEPAGE = -725;
		public const int32 DISPID_AMBIENT_PALETTE = -726;
		public const int32 DISPID_AMBIENT_CHARSET = -727;
		public const int32 DISPID_AMBIENT_TRANSFERPRIORITY = -728;
		public const int32 DISPID_AMBIENT_RIGHTTOLEFT = -732;
		public const int32 DISPID_AMBIENT_TOPTOBOTTOM = -733;
		public const int32 DISPID_Name = -800;
		public const int32 DISPID_Delete = -801;
		public const int32 DISPID_Object = -802;
		public const int32 DISPID_Parent = -803;
		public const uint32 DISPID_FONT_NAME = 0;
		public const uint32 DISPID_FONT_SIZE = 2;
		public const uint32 DISPID_FONT_BOLD = 3;
		public const uint32 DISPID_FONT_ITALIC = 4;
		public const uint32 DISPID_FONT_UNDER = 5;
		public const uint32 DISPID_FONT_STRIKE = 6;
		public const uint32 DISPID_FONT_WEIGHT = 7;
		public const uint32 DISPID_FONT_CHARSET = 8;
		public const uint32 DISPID_FONT_CHANGED = 9;
		public const uint32 DISPID_PICT_HANDLE = 0;
		public const uint32 DISPID_PICT_HPAL = 2;
		public const uint32 DISPID_PICT_TYPE = 3;
		public const uint32 DISPID_PICT_WIDTH = 4;
		public const uint32 DISPID_PICT_HEIGHT = 5;
		public const uint32 DISPID_PICT_RENDER = 6;
		public const int32 GC_WCH_SIBLING = 1;
		public const uint32 TIFLAGS_EXTENDDISPATCHONLY = 1;
		public const int32 OLECMDERR_E_NOTSUPPORTED = -2147221248;
		public const int32 MSOCMDERR_E_FIRST = -2147221248;
		public const int32 MSOCMDERR_E_NOTSUPPORTED = -2147221248;
		public const int32 MSOCMDERR_E_DISABLED = -2147221247;
		public const int32 MSOCMDERR_E_NOHELP = -2147221246;
		public const int32 MSOCMDERR_E_CANCELED = -2147221245;
		public const int32 MSOCMDERR_E_UNKNOWNGROUP = -2147221244;
		public const uint32 OLECMD_TASKDLGID_ONBEFOREUNLOAD = 1;
		public const uint32 OLECMDARGINDEX_SHOWPAGEACTIONMENU_HWND = 0;
		public const uint32 OLECMDARGINDEX_SHOWPAGEACTIONMENU_X = 1;
		public const uint32 OLECMDARGINDEX_SHOWPAGEACTIONMENU_Y = 2;
		public const uint32 OLECMDARGINDEX_ACTIVEXINSTALL_PUBLISHER = 0;
		public const uint32 OLECMDARGINDEX_ACTIVEXINSTALL_DISPLAYNAME = 1;
		public const uint32 OLECMDARGINDEX_ACTIVEXINSTALL_CLSID = 2;
		public const uint32 OLECMDARGINDEX_ACTIVEXINSTALL_INSTALLSCOPE = 3;
		public const uint32 OLECMDARGINDEX_ACTIVEXINSTALL_SOURCEURL = 4;
		public const uint32 INSTALL_SCOPE_INVALID = 0;
		public const uint32 INSTALL_SCOPE_MACHINE = 1;
		public const uint32 INSTALL_SCOPE_USER = 2;
		public const uint32 MK_ALT = 32;
		public const uint32 DROPEFFECT_NONE = 0;
		public const uint32 DROPEFFECT_COPY = 1;
		public const uint32 DROPEFFECT_MOVE = 2;
		public const uint32 DROPEFFECT_LINK = 4;
		public const uint32 DROPEFFECT_SCROLL = 2147483648;
		public const uint32 DD_DEFSCROLLINSET = 11;
		public const uint32 DD_DEFSCROLLDELAY = 50;
		public const uint32 DD_DEFSCROLLINTERVAL = 50;
		public const uint32 DD_DEFDRAGDELAY = 200;
		public const uint32 DD_DEFDRAGMINDIST = 2;
		public const int32 OT_LINK = 1;
		public const int32 OT_EMBEDDED = 2;
		public const int32 OT_STATIC = 3;
		public const uint32 OLEVERB_PRIMARY = 0;
		public const uint32 OF_SET = 1;
		public const uint32 OF_GET = 2;
		public const uint32 OF_HANDLER = 4;
		public const uint32 WIN32 = 100;
		public const int32 OLEIVERB_PRIMARY = 0;
		public const int32 OLEIVERB_SHOW = -1;
		public const int32 OLEIVERB_OPEN = -2;
		public const int32 OLEIVERB_HIDE = -3;
		public const int32 OLEIVERB_UIACTIVATE = -4;
		public const int32 OLEIVERB_INPLACEACTIVATE = -5;
		public const int32 OLEIVERB_DISCARDUNDOSTATE = -6;
		public const int32 EMBDHLP_INPROC_HANDLER = 0;
		public const int32 EMBDHLP_INPROC_SERVER = 1;
		public const int32 EMBDHLP_CREATENOW = 0;
		public const int32 EMBDHLP_DELAYCREATE = 65536;
		public const uint32 OLECREATE_LEAVERUNNING = 1;
		public const uint32 IDC_OLEUIHELP = 99;
		public const uint32 IDC_IO_CREATENEW = 2100;
		public const uint32 IDC_IO_CREATEFROMFILE = 2101;
		public const uint32 IDC_IO_LINKFILE = 2102;
		public const uint32 IDC_IO_OBJECTTYPELIST = 2103;
		public const uint32 IDC_IO_DISPLAYASICON = 2104;
		public const uint32 IDC_IO_CHANGEICON = 2105;
		public const uint32 IDC_IO_FILE = 2106;
		public const uint32 IDC_IO_FILEDISPLAY = 2107;
		public const uint32 IDC_IO_RESULTIMAGE = 2108;
		public const uint32 IDC_IO_RESULTTEXT = 2109;
		public const uint32 IDC_IO_ICONDISPLAY = 2110;
		public const uint32 IDC_IO_OBJECTTYPETEXT = 2111;
		public const uint32 IDC_IO_FILETEXT = 2112;
		public const uint32 IDC_IO_FILETYPE = 2113;
		public const uint32 IDC_IO_INSERTCONTROL = 2114;
		public const uint32 IDC_IO_ADDCONTROL = 2115;
		public const uint32 IDC_IO_CONTROLTYPELIST = 2116;
		public const uint32 IDC_PS_PASTE = 500;
		public const uint32 IDC_PS_PASTELINK = 501;
		public const uint32 IDC_PS_SOURCETEXT = 502;
		public const uint32 IDC_PS_PASTELIST = 503;
		public const uint32 IDC_PS_PASTELINKLIST = 504;
		public const uint32 IDC_PS_DISPLAYLIST = 505;
		public const uint32 IDC_PS_DISPLAYASICON = 506;
		public const uint32 IDC_PS_ICONDISPLAY = 507;
		public const uint32 IDC_PS_CHANGEICON = 508;
		public const uint32 IDC_PS_RESULTIMAGE = 509;
		public const uint32 IDC_PS_RESULTTEXT = 510;
		public const uint32 IDC_CI_GROUP = 120;
		public const uint32 IDC_CI_CURRENT = 121;
		public const uint32 IDC_CI_CURRENTICON = 122;
		public const uint32 IDC_CI_DEFAULT = 123;
		public const uint32 IDC_CI_DEFAULTICON = 124;
		public const uint32 IDC_CI_FROMFILE = 125;
		public const uint32 IDC_CI_FROMFILEEDIT = 126;
		public const uint32 IDC_CI_ICONLIST = 127;
		public const uint32 IDC_CI_LABEL = 128;
		public const uint32 IDC_CI_LABELEDIT = 129;
		public const uint32 IDC_CI_BROWSE = 130;
		public const uint32 IDC_CI_ICONDISPLAY = 131;
		public const uint32 IDC_CV_OBJECTTYPE = 150;
		public const uint32 IDC_CV_DISPLAYASICON = 152;
		public const uint32 IDC_CV_CHANGEICON = 153;
		public const uint32 IDC_CV_ACTIVATELIST = 154;
		public const uint32 IDC_CV_CONVERTTO = 155;
		public const uint32 IDC_CV_ACTIVATEAS = 156;
		public const uint32 IDC_CV_RESULTTEXT = 157;
		public const uint32 IDC_CV_CONVERTLIST = 158;
		public const uint32 IDC_CV_ICONDISPLAY = 165;
		public const uint32 IDC_EL_CHANGESOURCE = 201;
		public const uint32 IDC_EL_AUTOMATIC = 202;
		public const uint32 IDC_EL_CANCELLINK = 209;
		public const uint32 IDC_EL_UPDATENOW = 210;
		public const uint32 IDC_EL_OPENSOURCE = 211;
		public const uint32 IDC_EL_MANUAL = 212;
		public const uint32 IDC_EL_LINKSOURCE = 216;
		public const uint32 IDC_EL_LINKTYPE = 217;
		public const uint32 IDC_EL_LINKSLISTBOX = 206;
		public const uint32 IDC_EL_COL1 = 220;
		public const uint32 IDC_EL_COL2 = 221;
		public const uint32 IDC_EL_COL3 = 222;
		public const uint32 IDC_BZ_RETRY = 600;
		public const uint32 IDC_BZ_ICON = 601;
		public const uint32 IDC_BZ_MESSAGE1 = 602;
		public const uint32 IDC_BZ_SWITCHTO = 604;
		public const uint32 IDC_UL_METER = 1029;
		public const uint32 IDC_UL_STOP = 1030;
		public const uint32 IDC_UL_PERCENT = 1031;
		public const uint32 IDC_UL_PROGRESS = 1032;
		public const uint32 IDC_PU_LINKS = 900;
		public const uint32 IDC_PU_TEXT = 901;
		public const uint32 IDC_PU_CONVERT = 902;
		public const uint32 IDC_PU_ICON = 908;
		public const uint32 IDC_GP_OBJECTNAME = 1009;
		public const uint32 IDC_GP_OBJECTTYPE = 1010;
		public const uint32 IDC_GP_OBJECTSIZE = 1011;
		public const uint32 IDC_GP_CONVERT = 1013;
		public const uint32 IDC_GP_OBJECTICON = 1014;
		public const uint32 IDC_GP_OBJECTLOCATION = 1022;
		public const uint32 IDC_VP_PERCENT = 1000;
		public const uint32 IDC_VP_CHANGEICON = 1001;
		public const uint32 IDC_VP_EDITABLE = 1002;
		public const uint32 IDC_VP_ASICON = 1003;
		public const uint32 IDC_VP_RELATIVE = 1005;
		public const uint32 IDC_VP_SPIN = 1006;
		public const uint32 IDC_VP_SCALETXT = 1034;
		public const uint32 IDC_VP_ICONDISPLAY = 1021;
		public const uint32 IDC_VP_RESULTIMAGE = 1033;
		public const uint32 IDC_LP_OPENSOURCE = 1006;
		public const uint32 IDC_LP_UPDATENOW = 1007;
		public const uint32 IDC_LP_BREAKLINK = 1008;
		public const uint32 IDC_LP_LINKSOURCE = 1012;
		public const uint32 IDC_LP_CHANGESOURCE = 1015;
		public const uint32 IDC_LP_AUTOMATIC = 1016;
		public const uint32 IDC_LP_MANUAL = 1017;
		public const uint32 IDC_LP_DATE = 1018;
		public const uint32 IDC_LP_TIME = 1019;
		public const uint32 IDD_INSERTOBJECT = 1000;
		public const uint32 IDD_CHANGEICON = 1001;
		public const uint32 IDD_CONVERT = 1002;
		public const uint32 IDD_PASTESPECIAL = 1003;
		public const uint32 IDD_EDITLINKS = 1004;
		public const uint32 IDD_BUSY = 1006;
		public const uint32 IDD_UPDATELINKS = 1007;
		public const uint32 IDD_CHANGESOURCE = 1009;
		public const uint32 IDD_INSERTFILEBROWSE = 1010;
		public const uint32 IDD_CHANGEICONBROWSE = 1011;
		public const uint32 IDD_CONVERTONLY = 1012;
		public const uint32 IDD_CHANGESOURCE4 = 1013;
		public const uint32 IDD_GNRLPROPS = 1100;
		public const uint32 IDD_VIEWPROPS = 1101;
		public const uint32 IDD_LINKPROPS = 1102;
		public const uint32 IDD_CONVERT4 = 1103;
		public const uint32 IDD_CONVERTONLY4 = 1104;
		public const uint32 IDD_EDITLINKS4 = 1105;
		public const uint32 IDD_GNRLPROPS4 = 1106;
		public const uint32 IDD_LINKPROPS4 = 1107;
		public const uint32 IDD_PASTESPECIAL4 = 1108;
		public const uint32 IDD_CANNOTUPDATELINK = 1008;
		public const uint32 IDD_LINKSOURCEUNAVAILABLE = 1020;
		public const uint32 IDD_SERVERNOTFOUND = 1023;
		public const uint32 IDD_OUTOFMEMORY = 1024;
		public const uint32 IDD_SERVERNOTREGW = 1021;
		public const uint32 IDD_LINKTYPECHANGEDW = 1022;
		public const uint32 IDD_SERVERNOTREGA = 1025;
		public const uint32 IDD_LINKTYPECHANGEDA = 1026;
		public const uint32 IDD_SERVERNOTREG = 1021;
		public const uint32 IDD_LINKTYPECHANGED = 1022;
		public const uint32 ID_BROWSE_CHANGEICON = 1;
		public const uint32 ID_BROWSE_INSERTFILE = 2;
		public const uint32 ID_BROWSE_ADDCONTROL = 3;
		public const uint32 ID_BROWSE_CHANGESOURCE = 4;
		public const uint32 OLEUI_FALSE = 0;
		public const uint32 OLEUI_SUCCESS = 1;
		public const uint32 OLEUI_OK = 1;
		public const uint32 OLEUI_CANCEL = 2;
		public const uint32 OLEUI_ERR_STANDARDMIN = 100;
		public const uint32 OLEUI_ERR_OLEMEMALLOC = 100;
		public const uint32 OLEUI_ERR_STRUCTURENULL = 101;
		public const uint32 OLEUI_ERR_STRUCTUREINVALID = 102;
		public const uint32 OLEUI_ERR_CBSTRUCTINCORRECT = 103;
		public const uint32 OLEUI_ERR_HWNDOWNERINVALID = 104;
		public const uint32 OLEUI_ERR_LPSZCAPTIONINVALID = 105;
		public const uint32 OLEUI_ERR_LPFNHOOKINVALID = 106;
		public const uint32 OLEUI_ERR_HINSTANCEINVALID = 107;
		public const uint32 OLEUI_ERR_LPSZTEMPLATEINVALID = 108;
		public const uint32 OLEUI_ERR_HRESOURCEINVALID = 109;
		public const uint32 OLEUI_ERR_FINDTEMPLATEFAILURE = 110;
		public const uint32 OLEUI_ERR_LOADTEMPLATEFAILURE = 111;
		public const uint32 OLEUI_ERR_DIALOGFAILURE = 112;
		public const uint32 OLEUI_ERR_LOCALMEMALLOC = 113;
		public const uint32 OLEUI_ERR_GLOBALMEMALLOC = 114;
		public const uint32 OLEUI_ERR_LOADSTRING = 115;
		public const uint32 OLEUI_ERR_STANDARDMAX = 116;
		public const int32 IOF_SHOWHELP = 1;
		public const int32 IOF_SELECTCREATENEW = 2;
		public const int32 IOF_SELECTCREATEFROMFILE = 4;
		public const int32 IOF_CHECKLINK = 8;
		public const int32 IOF_CHECKDISPLAYASICON = 16;
		public const int32 IOF_CREATENEWOBJECT = 32;
		public const int32 IOF_CREATEFILEOBJECT = 64;
		public const int32 IOF_CREATELINKOBJECT = 128;
		public const int32 IOF_DISABLELINK = 256;
		public const int32 IOF_VERIFYSERVERSEXIST = 512;
		public const int32 IOF_DISABLEDISPLAYASICON = 1024;
		public const int32 IOF_HIDECHANGEICON = 2048;
		public const int32 IOF_SHOWINSERTCONTROL = 4096;
		public const int32 IOF_SELECTCREATECONTROL = 8192;
		public const uint32 OLEUI_IOERR_LPSZFILEINVALID = 116;
		public const uint32 OLEUI_IOERR_LPSZLABELINVALID = 117;
		public const uint32 OLEUI_IOERR_HICONINVALID = 118;
		public const uint32 OLEUI_IOERR_LPFORMATETCINVALID = 119;
		public const uint32 OLEUI_IOERR_PPVOBJINVALID = 120;
		public const uint32 OLEUI_IOERR_LPIOLECLIENTSITEINVALID = 121;
		public const uint32 OLEUI_IOERR_LPISTORAGEINVALID = 122;
		public const uint32 OLEUI_IOERR_SCODEHASERROR = 123;
		public const uint32 OLEUI_IOERR_LPCLSIDEXCLUDEINVALID = 124;
		public const uint32 OLEUI_IOERR_CCHFILEINVALID = 125;
		public const uint32 PS_MAXLINKTYPES = 8;
		public const int32 PSF_SHOWHELP = 1;
		public const int32 PSF_SELECTPASTE = 2;
		public const int32 PSF_SELECTPASTELINK = 4;
		public const int32 PSF_CHECKDISPLAYASICON = 8;
		public const int32 PSF_DISABLEDISPLAYASICON = 16;
		public const int32 PSF_HIDECHANGEICON = 32;
		public const int32 PSF_STAYONCLIPBOARDCHANGE = 64;
		public const int32 PSF_NOREFRESHDATAOBJECT = 128;
		public const uint32 OLEUI_IOERR_SRCDATAOBJECTINVALID = 116;
		public const uint32 OLEUI_IOERR_ARRPASTEENTRIESINVALID = 117;
		public const uint32 OLEUI_IOERR_ARRLINKTYPESINVALID = 118;
		public const uint32 OLEUI_PSERR_CLIPBOARDCHANGED = 119;
		public const uint32 OLEUI_PSERR_GETCLIPBOARDFAILED = 120;
		public const uint32 OLEUI_ELERR_LINKCNTRNULL = 116;
		public const uint32 OLEUI_ELERR_LINKCNTRINVALID = 117;
		public const int32 ELF_SHOWHELP = 1;
		public const int32 ELF_DISABLEUPDATENOW = 2;
		public const int32 ELF_DISABLEOPENSOURCE = 4;
		public const int32 ELF_DISABLECHANGESOURCE = 8;
		public const int32 ELF_DISABLECANCELLINK = 16;
		public const int32 CIF_SHOWHELP = 1;
		public const int32 CIF_SELECTCURRENT = 2;
		public const int32 CIF_SELECTDEFAULT = 4;
		public const int32 CIF_SELECTFROMFILE = 8;
		public const int32 CIF_USEICONEXE = 16;
		public const uint32 OLEUI_CIERR_MUSTHAVECLSID = 116;
		public const uint32 OLEUI_CIERR_MUSTHAVECURRENTMETAFILE = 117;
		public const uint32 OLEUI_CIERR_SZICONEXEINVALID = 118;
		public const int32 CF_SHOWHELPBUTTON = 1;
		public const int32 CF_SETCONVERTDEFAULT = 2;
		public const int32 CF_SETACTIVATEDEFAULT = 4;
		public const int32 CF_SELECTCONVERTTO = 8;
		public const int32 CF_SELECTACTIVATEAS = 16;
		public const int32 CF_DISABLEDISPLAYASICON = 32;
		public const int32 CF_DISABLEACTIVATEAS = 64;
		public const int32 CF_HIDECHANGEICON = 128;
		public const int32 CF_CONVERTONLY = 256;
		public const uint32 OLEUI_CTERR_CLASSIDINVALID = 117;
		public const uint32 OLEUI_CTERR_DVASPECTINVALID = 118;
		public const uint32 OLEUI_CTERR_CBFORMATINVALID = 119;
		public const uint32 OLEUI_CTERR_HMETAPICTINVALID = 120;
		public const uint32 OLEUI_CTERR_STRINGINVALID = 121;
		public const int32 BZ_DISABLECANCELBUTTON = 1;
		public const int32 BZ_DISABLESWITCHTOBUTTON = 2;
		public const int32 BZ_DISABLERETRYBUTTON = 4;
		public const int32 BZ_NOTRESPONDINGDIALOG = 8;
		public const uint32 OLEUI_BZERR_HTASKINVALID = 116;
		public const uint32 OLEUI_BZ_SWITCHTOSELECTED = 117;
		public const uint32 OLEUI_BZ_RETRYSELECTED = 118;
		public const uint32 OLEUI_BZ_CALLUNBLOCKED = 119;
		public const int32 CSF_SHOWHELP = 1;
		public const int32 CSF_VALIDSOURCE = 2;
		public const int32 CSF_ONLYGETSOURCE = 4;
		public const int32 CSF_EXPLORER = 8;
		public const uint32 OLEUI_CSERR_LINKCNTRNULL = 116;
		public const uint32 OLEUI_CSERR_LINKCNTRINVALID = 117;
		public const uint32 OLEUI_CSERR_FROMNOTNULL = 118;
		public const uint32 OLEUI_CSERR_TONOTNULL = 119;
		public const uint32 OLEUI_CSERR_SOURCENULL = 120;
		public const uint32 OLEUI_CSERR_SOURCEINVALID = 121;
		public const uint32 OLEUI_CSERR_SOURCEPARSERROR = 122;
		public const uint32 OLEUI_CSERR_SOURCEPARSEERROR = 122;
		public const int32 VPF_SELECTRELATIVE = 1;
		public const int32 VPF_DISABLERELATIVE = 2;
		public const int32 VPF_DISABLESCALE = 4;
		public const int32 OPF_OBJECTISLINK = 1;
		public const int32 OPF_NOFILLDEFAULT = 2;
		public const int32 OPF_SHOWHELP = 4;
		public const int32 OPF_DISABLECONVERT = 8;
		public const uint32 OLEUI_OPERR_SUBPROPNULL = 116;
		public const uint32 OLEUI_OPERR_SUBPROPINVALID = 117;
		public const uint32 OLEUI_OPERR_PROPSHEETNULL = 118;
		public const uint32 OLEUI_OPERR_PROPSHEETINVALID = 119;
		public const uint32 OLEUI_OPERR_SUPPROP = 120;
		public const uint32 OLEUI_OPERR_PROPSINVALID = 121;
		public const uint32 OLEUI_OPERR_PAGESINCORRECT = 122;
		public const uint32 OLEUI_OPERR_INVALIDPAGES = 123;
		public const uint32 OLEUI_OPERR_NOTSUPPORTED = 124;
		public const uint32 OLEUI_OPERR_DLGPROCNOTNULL = 125;
		public const uint32 OLEUI_OPERR_LPARAMNOTZERO = 126;
		public const uint32 OLEUI_GPERR_STRINGINVALID = 127;
		public const uint32 OLEUI_GPERR_CLASSIDINVALID = 128;
		public const uint32 OLEUI_GPERR_LPCLSIDEXCLUDEINVALID = 129;
		public const uint32 OLEUI_GPERR_CBFORMATINVALID = 130;
		public const uint32 OLEUI_VPERR_METAPICTINVALID = 131;
		public const uint32 OLEUI_VPERR_DVASPECTINVALID = 132;
		public const uint32 OLEUI_LPERR_LINKCNTRNULL = 133;
		public const uint32 OLEUI_LPERR_LINKCNTRINVALID = 134;
		public const uint32 OLEUI_OPERR_PROPERTYSHEET = 135;
		public const uint32 OLEUI_OPERR_OBJINFOINVALID = 136;
		public const uint32 OLEUI_OPERR_LINKINFOINVALID = 137;
		public const uint32 OLEUI_QUERY_GETCLASSID = 65280;
		public const uint32 OLEUI_QUERY_LINKBROKEN = 65281;
		public const uint32 FADF_AUTO = 1;
		public const uint32 FADF_STATIC = 2;
		public const uint32 FADF_EMBEDDED = 4;
		public const uint32 FADF_FIXEDSIZE = 16;
		public const uint32 FADF_RECORD = 32;
		public const uint32 FADF_HAVEIID = 64;
		public const uint32 FADF_HAVEVARTYPE = 128;
		public const uint32 FADF_BSTR = 256;
		public const uint32 FADF_UNKNOWN = 512;
		public const uint32 FADF_DISPATCH = 1024;
		public const uint32 FADF_VARIANT = 2048;
		public const uint32 FADF_RESERVED = 61448;
		public const uint32 PARAMFLAG_NONE = 0;
		public const uint32 PARAMFLAG_FIN = 1;
		public const uint32 PARAMFLAG_FOUT = 2;
		public const uint32 PARAMFLAG_FLCID = 4;
		public const uint32 PARAMFLAG_FRETVAL = 8;
		public const uint32 PARAMFLAG_FOPT = 16;
		public const uint32 PARAMFLAG_FHASDEFAULT = 32;
		public const uint32 PARAMFLAG_FHASCUSTDATA = 64;
		public const uint32 IDLFLAG_NONE = 0;
		public const uint32 IDLFLAG_FIN = 1;
		public const uint32 IDLFLAG_FOUT = 2;
		public const uint32 IDLFLAG_FLCID = 4;
		public const uint32 IDLFLAG_FRETVAL = 8;
		public const uint32 IMPLTYPEFLAG_FDEFAULT = 1;
		public const uint32 IMPLTYPEFLAG_FSOURCE = 2;
		public const uint32 IMPLTYPEFLAG_FRESTRICTED = 4;
		public const uint32 IMPLTYPEFLAG_FDEFAULTVTABLE = 8;
		public const int32 DISPID_UNKNOWN = -1;
		public const uint32 DISPID_VALUE = 0;
		public const int32 DISPID_PROPERTYPUT = -3;
		public const int32 DISPID_NEWENUM = -4;
		public const int32 DISPID_EVALUATE = -5;
		public const int32 DISPID_CONSTRUCTOR = -6;
		public const int32 DISPID_DESTRUCTOR = -7;
		public const int32 DISPID_COLLECT = -8;
		public const uint32 STDOLE_MAJORVERNUM = 1;
		public const uint32 STDOLE_MINORVERNUM = 0;
		public const uint32 STDOLE_LCID = 0;
		public const uint32 STDOLE2_MAJORVERNUM = 2;
		public const uint32 STDOLE2_MINORVERNUM = 0;
		public const uint32 STDOLE2_LCID = 0;
		public const uint32 VARIANT_NOVALUEPROP = 1;
		public const uint32 VARIANT_ALPHABOOL = 2;
		public const uint32 VARIANT_NOUSEROVERRIDE = 4;
		public const uint32 VARIANT_CALENDAR_HIJRI = 8;
		public const uint32 VARIANT_LOCALBOOL = 16;
		public const uint32 VARIANT_CALENDAR_THAI = 32;
		public const uint32 VARIANT_CALENDAR_GREGORIAN = 64;
		public const uint32 VARIANT_USE_NLS = 128;
		public const uint32 LOCALE_USE_NLS = 268435456;
		public const uint32 VTDATEGRE_MAX = 2958465;
		public const int32 VTDATEGRE_MIN = -657434;
		public const uint32 NUMPRS_LEADING_WHITE = 1;
		public const uint32 NUMPRS_TRAILING_WHITE = 2;
		public const uint32 NUMPRS_LEADING_PLUS = 4;
		public const uint32 NUMPRS_TRAILING_PLUS = 8;
		public const uint32 NUMPRS_LEADING_MINUS = 16;
		public const uint32 NUMPRS_TRAILING_MINUS = 32;
		public const uint32 NUMPRS_HEX_OCT = 64;
		public const uint32 NUMPRS_PARENS = 128;
		public const uint32 NUMPRS_DECIMAL = 256;
		public const uint32 NUMPRS_THOUSANDS = 512;
		public const uint32 NUMPRS_CURRENCY = 1024;
		public const uint32 NUMPRS_EXPONENT = 2048;
		public const uint32 NUMPRS_USE_ALL = 4096;
		public const uint32 NUMPRS_STD = 8191;
		public const uint32 NUMPRS_NEG = 65536;
		public const uint32 NUMPRS_INEXACT = 131072;
		public const uint32 VARCMP_LT = 0;
		public const uint32 VARCMP_EQ = 1;
		public const uint32 VARCMP_GT = 2;
		public const uint32 VARCMP_NULL = 3;
		public const int32 MEMBERID_NIL = -1;
		public const int32 ID_DEFAULTINST = -2;
		public const uint32 DISPATCH_METHOD = 1;
		public const uint32 DISPATCH_PROPERTYGET = 2;
		public const uint32 DISPATCH_PROPERTYPUT = 4;
		public const uint32 DISPATCH_PROPERTYPUTREF = 8;
		public const uint32 LOAD_TLB_AS_32BIT = 32;
		public const uint32 LOAD_TLB_AS_64BIT = 64;
		public const uint32 ACTIVEOBJECT_STRONG = 0;
		public const uint32 ACTIVEOBJECT_WEAK = 1;
		public const uint32 DISPATCH_CONSTRUCT = 16384;
		public const int32 DISPID_STARTENUM = -1;
		public const Guid SID_VariantConversion = .(0x1f101481, 0xbccd, 0x11d0, 0x93, 0x36, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
		public const Guid SID_GetCaller = .(0x4717cc40, 0xbcb9, 0x11d0, 0x93, 0x36, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
		public const Guid SID_ProvideRuntimeContext = .(0x74a5040c, 0xdd0c, 0x48f0, 0xac, 0x85, 0x19, 0x4c, 0x32, 0x59, 0x18, 0x0a);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum UPDFCACHE_FLAGS : uint32
		{
			UPDFCACHE_ALL = 2147483647,
			UPDFCACHE_ALLBUTNODATACACHE = 2147483646,
			UPDFCACHE_NORMALCACHE = 8,
			UPDFCACHE_IFBLANK = 16,
			UPDFCACHE_ONLYIFBLANK = 2147483648,
			UPDFCACHE_NODATACACHE = 1,
			UPDFCACHE_ONSAVECACHE = 2,
			UPDFCACHE_ONSTOPCACHE = 4,
			UPDFCACHE_IFBLANKORONSAVECACHE = 18,
		}
		[AllowDuplicates]
		public enum ENUM_CONTROLS_WHICH_FLAGS : uint32
		{
			GCW_WCH_SIBLING = 1,
			GC_WCH_CONTAINER = 2,
			GC_WCH_CONTAINED = 3,
			GC_WCH_ALL = 4,
			GC_WCH_FREVERSEDIR = 134217728,
			GC_WCH_FONLYAFTER = 268435456,
			GC_WCH_FONLYBEFORE = 536870912,
			GC_WCH_FSELECTED = 1073741824,
		}
		[AllowDuplicates]
		public enum MULTICLASSINFO_FLAGS : uint32
		{
			MULTICLASSINFO_GETTYPEINFO = 1,
			MULTICLASSINFO_GETNUMRESERVEDDISPIDS = 2,
			MULTICLASSINFO_GETIIDPRIMARY = 4,
			MULTICLASSINFO_GETIIDSOURCE = 8,
		}
		[AllowDuplicates]
		public enum VARENUM : int32
		{
			VT_EMPTY = 0,
			VT_NULL = 1,
			VT_I2 = 2,
			VT_I4 = 3,
			VT_R4 = 4,
			VT_R8 = 5,
			VT_CY = 6,
			VT_DATE = 7,
			VT_BSTR = 8,
			VT_DISPATCH = 9,
			VT_ERROR = 10,
			VT_BOOL = 11,
			VT_VARIANT = 12,
			VT_UNKNOWN = 13,
			VT_DECIMAL = 14,
			VT_I1 = 16,
			VT_UI1 = 17,
			VT_UI2 = 18,
			VT_UI4 = 19,
			VT_I8 = 20,
			VT_UI8 = 21,
			VT_INT = 22,
			VT_UINT = 23,
			VT_VOID = 24,
			VT_HRESULT = 25,
			VT_PTR = 26,
			VT_SAFEARRAY = 27,
			VT_CARRAY = 28,
			VT_USERDEFINED = 29,
			VT_LPSTR = 30,
			VT_LPWSTR = 31,
			VT_RECORD = 36,
			VT_INT_PTR = 37,
			VT_UINT_PTR = 38,
			VT_FILETIME = 64,
			VT_BLOB = 65,
			VT_STREAM = 66,
			VT_STORAGE = 67,
			VT_STREAMED_OBJECT = 68,
			VT_STORED_OBJECT = 69,
			VT_BLOB_OBJECT = 70,
			VT_CF = 71,
			VT_CLSID = 72,
			VT_VERSIONED_STREAM = 73,
			VT_BSTR_BLOB = 4095,
			VT_VECTOR = 4096,
			VT_ARRAY = 8192,
			VT_BYREF = 16384,
			VT_RESERVED = 32768,
			VT_ILLEGAL = 65535,
			VT_ILLEGALMASKED = 4095,
			VT_TYPEMASK = 4095,
		}
		[AllowDuplicates]
		public enum SF_TYPE : int32
		{
			SF_ERROR = 10,
			SF_I1 = 16,
			SF_I2 = 2,
			SF_I4 = 3,
			SF_I8 = 20,
			SF_BSTR = 8,
			SF_UNKNOWN = 13,
			SF_DISPATCH = 9,
			SF_VARIANT = 12,
			SF_RECORD = 36,
			SF_HAVEIID = 32781,
		}
		[AllowDuplicates]
		public enum TYPEFLAGS : int32
		{
			TYPEFLAG_FAPPOBJECT = 1,
			TYPEFLAG_FCANCREATE = 2,
			TYPEFLAG_FLICENSED = 4,
			TYPEFLAG_FPREDECLID = 8,
			TYPEFLAG_FHIDDEN = 16,
			TYPEFLAG_FCONTROL = 32,
			TYPEFLAG_FDUAL = 64,
			TYPEFLAG_FNONEXTENSIBLE = 128,
			TYPEFLAG_FOLEAUTOMATION = 256,
			TYPEFLAG_FRESTRICTED = 512,
			TYPEFLAG_FAGGREGATABLE = 1024,
			TYPEFLAG_FREPLACEABLE = 2048,
			TYPEFLAG_FDISPATCHABLE = 4096,
			TYPEFLAG_FREVERSEBIND = 8192,
			TYPEFLAG_FPROXY = 16384,
		}
		[AllowDuplicates]
		public enum FUNCFLAGS : int32
		{
			FUNCFLAG_FRESTRICTED = 1,
			FUNCFLAG_FSOURCE = 2,
			FUNCFLAG_FBINDABLE = 4,
			FUNCFLAG_FREQUESTEDIT = 8,
			FUNCFLAG_FDISPLAYBIND = 16,
			FUNCFLAG_FDEFAULTBIND = 32,
			FUNCFLAG_FHIDDEN = 64,
			FUNCFLAG_FUSESGETLASTERROR = 128,
			FUNCFLAG_FDEFAULTCOLLELEM = 256,
			FUNCFLAG_FUIDEFAULT = 512,
			FUNCFLAG_FNONBROWSABLE = 1024,
			FUNCFLAG_FREPLACEABLE = 2048,
			FUNCFLAG_FIMMEDIATEBIND = 4096,
		}
		[AllowDuplicates]
		public enum VARFLAGS : int32
		{
			VARFLAG_FREADONLY = 1,
			VARFLAG_FSOURCE = 2,
			VARFLAG_FBINDABLE = 4,
			VARFLAG_FREQUESTEDIT = 8,
			VARFLAG_FDISPLAYBIND = 16,
			VARFLAG_FDEFAULTBIND = 32,
			VARFLAG_FHIDDEN = 64,
			VARFLAG_FRESTRICTED = 128,
			VARFLAG_FDEFAULTCOLLELEM = 256,
			VARFLAG_FUIDEFAULT = 512,
			VARFLAG_FNONBROWSABLE = 1024,
			VARFLAG_FREPLACEABLE = 2048,
			VARFLAG_FIMMEDIATEBIND = 4096,
		}
		[AllowDuplicates]
		public enum LIBFLAGS : int32
		{
			LIBFLAG_FRESTRICTED = 1,
			LIBFLAG_FCONTROL = 2,
			LIBFLAG_FHIDDEN = 4,
			LIBFLAG_FHASDISKIMAGE = 8,
		}
		[AllowDuplicates]
		public enum CHANGEKIND : int32
		{
			CHANGEKIND_ADDMEMBER = 0,
			CHANGEKIND_DELETEMEMBER = 1,
			CHANGEKIND_SETNAMES = 2,
			CHANGEKIND_SETDOCUMENTATION = 3,
			CHANGEKIND_GENERAL = 4,
			CHANGEKIND_INVALIDATE = 5,
			CHANGEKIND_CHANGEFAILED = 6,
			CHANGEKIND_MAX = 7,
		}
		[AllowDuplicates]
		public enum DISCARDCACHE : int32
		{
			DISCARDCACHE_SAVEIFDIRTY = 0,
			DISCARDCACHE_NOSAVE = 1,
		}
		[AllowDuplicates]
		public enum OLEGETMONIKER : int32
		{
			OLEGETMONIKER_ONLYIFTHERE = 1,
			OLEGETMONIKER_FORCEASSIGN = 2,
			OLEGETMONIKER_UNASSIGN = 3,
			OLEGETMONIKER_TEMPFORUSER = 4,
		}
		[AllowDuplicates]
		public enum OLEWHICHMK : int32
		{
			OLEWHICHMK_CONTAINER = 1,
			OLEWHICHMK_OBJREL = 2,
			OLEWHICHMK_OBJFULL = 3,
		}
		[AllowDuplicates]
		public enum USERCLASSTYPE : int32
		{
			USERCLASSTYPE_FULL = 1,
			USERCLASSTYPE_SHORT = 2,
			USERCLASSTYPE_APPNAME = 3,
		}
		[AllowDuplicates]
		public enum OLEMISC : int32
		{
			OLEMISC_RECOMPOSEONRESIZE = 1,
			OLEMISC_ONLYICONIC = 2,
			OLEMISC_INSERTNOTREPLACE = 4,
			OLEMISC_STATIC = 8,
			OLEMISC_CANTLINKINSIDE = 16,
			OLEMISC_CANLINKBYOLE1 = 32,
			OLEMISC_ISLINKOBJECT = 64,
			OLEMISC_INSIDEOUT = 128,
			OLEMISC_ACTIVATEWHENVISIBLE = 256,
			OLEMISC_RENDERINGISDEVICEINDEPENDENT = 512,
			OLEMISC_INVISIBLEATRUNTIME = 1024,
			OLEMISC_ALWAYSRUN = 2048,
			OLEMISC_ACTSLIKEBUTTON = 4096,
			OLEMISC_ACTSLIKELABEL = 8192,
			OLEMISC_NOUIACTIVATE = 16384,
			OLEMISC_ALIGNABLE = 32768,
			OLEMISC_SIMPLEFRAME = 65536,
			OLEMISC_SETCLIENTSITEFIRST = 131072,
			OLEMISC_IMEMODE = 262144,
			OLEMISC_IGNOREACTIVATEWHENVISIBLE = 524288,
			OLEMISC_WANTSTOMENUMERGE = 1048576,
			OLEMISC_SUPPORTSMULTILEVELUNDO = 2097152,
		}
		[AllowDuplicates]
		public enum OLECLOSE : int32
		{
			OLECLOSE_SAVEIFDIRTY = 0,
			OLECLOSE_NOSAVE = 1,
			OLECLOSE_PROMPTSAVE = 2,
		}
		[AllowDuplicates]
		public enum OLERENDER : int32
		{
			OLERENDER_NONE = 0,
			OLERENDER_DRAW = 1,
			OLERENDER_FORMAT = 2,
			OLERENDER_ASIS = 3,
		}
		[AllowDuplicates]
		public enum OLEUPDATE : int32
		{
			OLEUPDATE_ALWAYS = 1,
			OLEUPDATE_ONCALL = 3,
		}
		[AllowDuplicates]
		public enum OLELINKBIND : int32
		{
			OLELINKBIND_EVENIFCLASSDIFF = 1,
		}
		[AllowDuplicates]
		public enum BINDSPEED : int32
		{
			BINDSPEED_INDEFINITE = 1,
			BINDSPEED_MODERATE = 2,
			BINDSPEED_IMMEDIATE = 3,
		}
		[AllowDuplicates]
		public enum OLECONTF : int32
		{
			OLECONTF_EMBEDDINGS = 1,
			OLECONTF_LINKS = 2,
			OLECONTF_OTHERS = 4,
			OLECONTF_ONLYUSER = 8,
			OLECONTF_ONLYIFRUNNING = 16,
		}
		[AllowDuplicates]
		public enum OLEVERBATTRIB : int32
		{
			OLEVERBATTRIB_NEVERDIRTIES = 1,
			OLEVERBATTRIB_ONCONTAINERMENU = 2,
		}
		[AllowDuplicates]
		public enum REGKIND : int32
		{
			REGKIND_DEFAULT = 0,
			REGKIND_REGISTER = 1,
			REGKIND_NONE = 2,
		}
		[AllowDuplicates]
		public enum UASFLAGS : int32
		{
			UAS_NORMAL = 0,
			UAS_BLOCKED = 1,
			UAS_NOPARENTENABLE = 2,
			UAS_MASK = 3,
		}
		[AllowDuplicates]
		public enum READYSTATE : int32
		{
			READYSTATE_UNINITIALIZED = 0,
			READYSTATE_LOADING = 1,
			READYSTATE_LOADED = 2,
			READYSTATE_INTERACTIVE = 3,
			READYSTATE_COMPLETE = 4,
		}
		[AllowDuplicates]
		public enum GUIDKIND : int32
		{
			GUIDKIND_DEFAULT_SOURCE_DISP_IID = 1,
		}
		[AllowDuplicates]
		public enum CTRLINFO : int32
		{
			CTRLINFO_EATS_RETURN = 1,
			CTRLINFO_EATS_ESCAPE = 2,
		}
		[AllowDuplicates]
		public enum XFORMCOORDS : int32
		{
			XFORMCOORDS_POSITION = 1,
			XFORMCOORDS_SIZE = 2,
			XFORMCOORDS_HIMETRICTOCONTAINER = 4,
			XFORMCOORDS_CONTAINERTOHIMETRIC = 8,
			XFORMCOORDS_EVENTCOMPAT = 16,
		}
		[AllowDuplicates]
		public enum PROPPAGESTATUS : int32
		{
			PROPPAGESTATUS_DIRTY = 1,
			PROPPAGESTATUS_VALIDATE = 2,
			PROPPAGESTATUS_CLEAN = 4,
		}
		[AllowDuplicates]
		public enum PictureAttributes : int32
		{
			PICTURE_SCALABLE = 1,
			PICTURE_TRANSPARENT = 2,
		}
		[AllowDuplicates]
		public enum ACTIVATEFLAGS : int32
		{
			ACTIVATE_WINDOWLESS = 1,
		}
		[AllowDuplicates]
		public enum OLEDCFLAGS : int32
		{
			OLEDC_NODRAW = 1,
			OLEDC_PAINTBKGND = 2,
			OLEDC_OFFSCREEN = 4,
		}
		[AllowDuplicates]
		public enum VIEWSTATUS : int32
		{
			VIEWSTATUS_OPAQUE = 1,
			VIEWSTATUS_SOLIDBKGND = 2,
			VIEWSTATUS_DVASPECTOPAQUE = 4,
			VIEWSTATUS_DVASPECTTRANSPARENT = 8,
			VIEWSTATUS_SURFACE = 16,
			VIEWSTATUS_3DSURFACE = 32,
		}
		[AllowDuplicates]
		public enum HITRESULT : int32
		{
			HITRESULT_OUTSIDE = 0,
			HITRESULT_TRANSPARENT = 1,
			HITRESULT_CLOSE = 2,
			HITRESULT_HIT = 3,
		}
		[AllowDuplicates]
		public enum DVASPECT2 : int32
		{
			DVASPECT_OPAQUE = 16,
			DVASPECT_TRANSPARENT = 32,
		}
		[AllowDuplicates]
		public enum ExtentMode : int32
		{
			DVEXTENT_CONTENT = 0,
			DVEXTENT_INTEGRAL = 1,
		}
		[AllowDuplicates]
		public enum AspectInfoFlag : int32
		{
			DVASPECTINFOFLAG_CANOPTIMIZE = 1,
		}
		[AllowDuplicates]
		public enum POINTERINACTIVE : int32
		{
			POINTERINACTIVE_ACTIVATEONENTRY = 1,
			POINTERINACTIVE_DEACTIVATEONLEAVE = 2,
			POINTERINACTIVE_ACTIVATEONDRAG = 4,
		}
		[AllowDuplicates]
		public enum PROPBAG2_TYPE : int32
		{
			PROPBAG2_TYPE_UNDEFINED = 0,
			PROPBAG2_TYPE_DATA = 1,
			PROPBAG2_TYPE_URL = 2,
			PROPBAG2_TYPE_OBJECT = 3,
			PROPBAG2_TYPE_STREAM = 4,
			PROPBAG2_TYPE_STORAGE = 5,
			PROPBAG2_TYPE_MONIKER = 6,
		}
		[AllowDuplicates]
		public enum QACONTAINERFLAGS : int32
		{
			QACONTAINER_SHOWHATCHING = 1,
			QACONTAINER_SHOWGRABHANDLES = 2,
			QACONTAINER_USERMODE = 4,
			QACONTAINER_DISPLAYASDEFAULT = 8,
			QACONTAINER_UIDEAD = 16,
			QACONTAINER_AUTOCLIP = 32,
			QACONTAINER_MESSAGEREFLECT = 64,
			QACONTAINER_SUPPORTSMNEMONICS = 128,
		}
		[AllowDuplicates]
		public enum OLE_TRISTATE : int32
		{
			triUnchecked = 0,
			triChecked = 1,
			triGray = 2,
		}
		[AllowDuplicates]
		public enum DOCMISC : int32
		{
			DOCMISC_CANCREATEMULTIPLEVIEWS = 1,
			DOCMISC_SUPPORTCOMPLEXRECTANGLES = 2,
			DOCMISC_CANTOPENEDIT = 4,
			DOCMISC_NOFILESUPPORT = 8,
		}
		[AllowDuplicates]
		public enum PRINTFLAG : uint32
		{
			PRINTFLAG_MAYBOTHERUSER = 1,
			PRINTFLAG_PROMPTUSER = 2,
			PRINTFLAG_USERMAYCHANGEPRINTER = 4,
			PRINTFLAG_RECOMPOSETODEVICE = 8,
			PRINTFLAG_DONTACTUALLYPRINT = 16,
			PRINTFLAG_FORCEPROPERTIES = 32,
			PRINTFLAG_PRINTTOFILE = 64,
		}
		[AllowDuplicates]
		public enum OLECMDF : int32
		{
			OLECMDF_SUPPORTED = 1,
			OLECMDF_ENABLED = 2,
			OLECMDF_LATCHED = 4,
			OLECMDF_NINCHED = 8,
			OLECMDF_INVISIBLE = 16,
			OLECMDF_DEFHIDEONCTXTMENU = 32,
		}
		[AllowDuplicates]
		public enum OLECMDTEXTF : int32
		{
			OLECMDTEXTF_NONE = 0,
			OLECMDTEXTF_NAME = 1,
			OLECMDTEXTF_STATUS = 2,
		}
		[AllowDuplicates]
		public enum OLECMDEXECOPT : int32
		{
			OLECMDEXECOPT_DODEFAULT = 0,
			OLECMDEXECOPT_PROMPTUSER = 1,
			OLECMDEXECOPT_DONTPROMPTUSER = 2,
			OLECMDEXECOPT_SHOWHELP = 3,
		}
		[AllowDuplicates]
		public enum OLECMDID : int32
		{
			OLECMDID_OPEN = 1,
			OLECMDID_NEW = 2,
			OLECMDID_SAVE = 3,
			OLECMDID_SAVEAS = 4,
			OLECMDID_SAVECOPYAS = 5,
			OLECMDID_PRINT = 6,
			OLECMDID_PRINTPREVIEW = 7,
			OLECMDID_PAGESETUP = 8,
			OLECMDID_SPELL = 9,
			OLECMDID_PROPERTIES = 10,
			OLECMDID_CUT = 11,
			OLECMDID_COPY = 12,
			OLECMDID_PASTE = 13,
			OLECMDID_PASTESPECIAL = 14,
			OLECMDID_UNDO = 15,
			OLECMDID_REDO = 16,
			OLECMDID_SELECTALL = 17,
			OLECMDID_CLEARSELECTION = 18,
			OLECMDID_ZOOM = 19,
			OLECMDID_GETZOOMRANGE = 20,
			OLECMDID_UPDATECOMMANDS = 21,
			OLECMDID_REFRESH = 22,
			OLECMDID_STOP = 23,
			OLECMDID_HIDETOOLBARS = 24,
			OLECMDID_SETPROGRESSMAX = 25,
			OLECMDID_SETPROGRESSPOS = 26,
			OLECMDID_SETPROGRESSTEXT = 27,
			OLECMDID_SETTITLE = 28,
			OLECMDID_SETDOWNLOADSTATE = 29,
			OLECMDID_STOPDOWNLOAD = 30,
			OLECMDID_ONTOOLBARACTIVATED = 31,
			OLECMDID_FIND = 32,
			OLECMDID_DELETE = 33,
			OLECMDID_HTTPEQUIV = 34,
			OLECMDID_HTTPEQUIV_DONE = 35,
			OLECMDID_ENABLE_INTERACTION = 36,
			OLECMDID_ONUNLOAD = 37,
			OLECMDID_PROPERTYBAG2 = 38,
			OLECMDID_PREREFRESH = 39,
			OLECMDID_SHOWSCRIPTERROR = 40,
			OLECMDID_SHOWMESSAGE = 41,
			OLECMDID_SHOWFIND = 42,
			OLECMDID_SHOWPAGESETUP = 43,
			OLECMDID_SHOWPRINT = 44,
			OLECMDID_CLOSE = 45,
			OLECMDID_ALLOWUILESSSAVEAS = 46,
			OLECMDID_DONTDOWNLOADCSS = 47,
			OLECMDID_UPDATEPAGESTATUS = 48,
			OLECMDID_PRINT2 = 49,
			OLECMDID_PRINTPREVIEW2 = 50,
			OLECMDID_SETPRINTTEMPLATE = 51,
			OLECMDID_GETPRINTTEMPLATE = 52,
			OLECMDID_PAGEACTIONBLOCKED = 55,
			OLECMDID_PAGEACTIONUIQUERY = 56,
			OLECMDID_FOCUSVIEWCONTROLS = 57,
			OLECMDID_FOCUSVIEWCONTROLSQUERY = 58,
			OLECMDID_SHOWPAGEACTIONMENU = 59,
			OLECMDID_ADDTRAVELENTRY = 60,
			OLECMDID_UPDATETRAVELENTRY = 61,
			OLECMDID_UPDATEBACKFORWARDSTATE = 62,
			OLECMDID_OPTICAL_ZOOM = 63,
			OLECMDID_OPTICAL_GETZOOMRANGE = 64,
			OLECMDID_WINDOWSTATECHANGED = 65,
			OLECMDID_ACTIVEXINSTALLSCOPE = 66,
			OLECMDID_UPDATETRAVELENTRY_DATARECOVERY = 67,
			OLECMDID_SHOWTASKDLG = 68,
			OLECMDID_POPSTATEEVENT = 69,
			OLECMDID_VIEWPORT_MODE = 70,
			OLECMDID_LAYOUT_VIEWPORT_WIDTH = 71,
			OLECMDID_VISUAL_VIEWPORT_EXCLUDE_BOTTOM = 72,
			OLECMDID_USER_OPTICAL_ZOOM = 73,
			OLECMDID_PAGEAVAILABLE = 74,
			OLECMDID_GETUSERSCALABLE = 75,
			OLECMDID_UPDATE_CARET = 76,
			OLECMDID_ENABLE_VISIBILITY = 77,
			OLECMDID_MEDIA_PLAYBACK = 78,
			OLECMDID_SETFAVICON = 79,
			OLECMDID_SET_HOST_FULLSCREENMODE = 80,
			OLECMDID_EXITFULLSCREEN = 81,
			OLECMDID_SCROLLCOMPLETE = 82,
			OLECMDID_ONBEFOREUNLOAD = 83,
			OLECMDID_SHOWMESSAGE_BLOCKABLE = 84,
			OLECMDID_SHOWTASKDLG_BLOCKABLE = 85,
		}
		[AllowDuplicates]
		public enum MEDIAPLAYBACK_STATE : int32
		{
			MEDIAPLAYBACK_RESUME = 0,
			MEDIAPLAYBACK_PAUSE = 1,
			MEDIAPLAYBACK_PAUSE_AND_SUSPEND = 2,
			MEDIAPLAYBACK_RESUME_FROM_SUSPEND = 3,
		}
		[AllowDuplicates]
		public enum IGNOREMIME : int32
		{
			IGNOREMIME_PROMPT = 1,
			IGNOREMIME_TEXT = 2,
		}
		[AllowDuplicates]
		public enum WPCSETTING : int32
		{
			WPCSETTING_LOGGING_ENABLED = 1,
			WPCSETTING_FILEDOWNLOAD_BLOCKED = 2,
		}
		[AllowDuplicates]
		public enum OLECMDID_REFRESHFLAG : int32
		{
			OLECMDIDF_REFRESH_NORMAL = 0,
			OLECMDIDF_REFRESH_IFEXPIRED = 1,
			OLECMDIDF_REFRESH_CONTINUE = 2,
			OLECMDIDF_REFRESH_COMPLETELY = 3,
			OLECMDIDF_REFRESH_NO_CACHE = 4,
			OLECMDIDF_REFRESH_RELOAD = 5,
			OLECMDIDF_REFRESH_LEVELMASK = 255,
			OLECMDIDF_REFRESH_CLEARUSERINPUT = 4096,
			OLECMDIDF_REFRESH_PROMPTIFOFFLINE = 8192,
			OLECMDIDF_REFRESH_THROUGHSCRIPT = 16384,
			OLECMDIDF_REFRESH_SKIPBEFOREUNLOADEVENT = 32768,
			OLECMDIDF_REFRESH_PAGEACTION_ACTIVEXINSTALL = 65536,
			OLECMDIDF_REFRESH_PAGEACTION_FILEDOWNLOAD = 131072,
			OLECMDIDF_REFRESH_PAGEACTION_LOCALMACHINE = 262144,
			OLECMDIDF_REFRESH_PAGEACTION_POPUPWINDOW = 524288,
			OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNLOCALMACHINE = 1048576,
			OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNTRUSTED = 2097152,
			OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNINTRANET = 4194304,
			OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNINTERNET = 8388608,
			OLECMDIDF_REFRESH_PAGEACTION_PROTLOCKDOWNRESTRICTED = 16777216,
			OLECMDIDF_REFRESH_PAGEACTION_MIXEDCONTENT = 33554432,
			OLECMDIDF_REFRESH_PAGEACTION_INVALID_CERT = 67108864,
			OLECMDIDF_REFRESH_PAGEACTION_ALLOW_VERSION = 134217728,
		}
		[AllowDuplicates]
		public enum OLECMDID_PAGEACTIONFLAG : int32
		{
			OLECMDIDF_PAGEACTION_FILEDOWNLOAD = 1,
			OLECMDIDF_PAGEACTION_ACTIVEXINSTALL = 2,
			OLECMDIDF_PAGEACTION_ACTIVEXTRUSTFAIL = 4,
			OLECMDIDF_PAGEACTION_ACTIVEXUSERDISABLE = 8,
			OLECMDIDF_PAGEACTION_ACTIVEXDISALLOW = 16,
			OLECMDIDF_PAGEACTION_ACTIVEXUNSAFE = 32,
			OLECMDIDF_PAGEACTION_POPUPWINDOW = 64,
			OLECMDIDF_PAGEACTION_LOCALMACHINE = 128,
			OLECMDIDF_PAGEACTION_MIMETEXTPLAIN = 256,
			OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE = 512,
			OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE_ACTIVEXINSTALL = 512,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNLOCALMACHINE = 1024,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNTRUSTED = 2048,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNINTRANET = 4096,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNINTERNET = 8192,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNRESTRICTED = 16384,
			OLECMDIDF_PAGEACTION_PROTLOCKDOWNDENY = 32768,
			OLECMDIDF_PAGEACTION_POPUPALLOWED = 65536,
			OLECMDIDF_PAGEACTION_SCRIPTPROMPT = 131072,
			OLECMDIDF_PAGEACTION_ACTIVEXUSERAPPROVAL = 262144,
			OLECMDIDF_PAGEACTION_MIXEDCONTENT = 524288,
			OLECMDIDF_PAGEACTION_INVALID_CERT = 1048576,
			OLECMDIDF_PAGEACTION_INTRANETZONEREQUEST = 2097152,
			OLECMDIDF_PAGEACTION_XSSFILTERED = 4194304,
			OLECMDIDF_PAGEACTION_SPOOFABLEIDNHOST = 8388608,
			OLECMDIDF_PAGEACTION_ACTIVEX_EPM_INCOMPATIBLE = 16777216,
			OLECMDIDF_PAGEACTION_SCRIPTNAVIGATE_ACTIVEXUSERAPPROVAL = 33554432,
			OLECMDIDF_PAGEACTION_WPCBLOCKED = 67108864,
			OLECMDIDF_PAGEACTION_WPCBLOCKED_ACTIVEX = 134217728,
			OLECMDIDF_PAGEACTION_EXTENSION_COMPAT_BLOCKED = 268435456,
			OLECMDIDF_PAGEACTION_NORESETACTIVEX = 536870912,
			OLECMDIDF_PAGEACTION_GENERIC_STATE = 1073741824,
			OLECMDIDF_PAGEACTION_RESET = -2147483648,
		}
		[AllowDuplicates]
		public enum OLECMDID_BROWSERSTATEFLAG : int32
		{
			OLECMDIDF_BROWSERSTATE_EXTENSIONSOFF = 1,
			OLECMDIDF_BROWSERSTATE_IESECURITY = 2,
			OLECMDIDF_BROWSERSTATE_PROTECTEDMODE_OFF = 4,
			OLECMDIDF_BROWSERSTATE_RESET = 8,
			OLECMDIDF_BROWSERSTATE_REQUIRESACTIVEX = 16,
			OLECMDIDF_BROWSERSTATE_DESKTOPHTMLDIALOG = 32,
			OLECMDIDF_BROWSERSTATE_BLOCKEDVERSION = 64,
		}
		[AllowDuplicates]
		public enum OLECMDID_OPTICAL_ZOOMFLAG : int32
		{
			OLECMDIDF_OPTICAL_ZOOM_NOPERSIST = 1,
			OLECMDIDF_OPTICAL_ZOOM_NOLAYOUT = 16,
			OLECMDIDF_OPTICAL_ZOOM_NOTRANSIENT = 32,
			OLECMDIDF_OPTICAL_ZOOM_RELOADFORNEWTAB = 64,
		}
		[AllowDuplicates]
		public enum PAGEACTION_UI : int32
		{
			PAGEACTION_UI_DEFAULT = 0,
			PAGEACTION_UI_MODAL = 1,
			PAGEACTION_UI_MODELESS = 2,
			PAGEACTION_UI_SILENT = 3,
		}
		[AllowDuplicates]
		public enum OLECMDID_WINDOWSTATE_FLAG : int32
		{
			OLECMDIDF_WINDOWSTATE_USERVISIBLE = 1,
			OLECMDIDF_WINDOWSTATE_ENABLED = 2,
			OLECMDIDF_WINDOWSTATE_USERVISIBLE_VALID = 65536,
			OLECMDIDF_WINDOWSTATE_ENABLED_VALID = 131072,
		}
		[AllowDuplicates]
		public enum OLECMDID_VIEWPORT_MODE_FLAG : int32
		{
			OLECMDIDF_VIEWPORTMODE_FIXED_LAYOUT_WIDTH = 1,
			OLECMDIDF_VIEWPORTMODE_EXCLUDE_VISUAL_BOTTOM = 2,
			OLECMDIDF_VIEWPORTMODE_FIXED_LAYOUT_WIDTH_VALID = 65536,
			OLECMDIDF_VIEWPORTMODE_EXCLUDE_VISUAL_BOTTOM_VALID = 131072,
		}
		[AllowDuplicates]
		public enum OLEUIPASTEFLAG : int32
		{
			OLEUIPASTE_ENABLEICON = 2048,
			OLEUIPASTE_PASTEONLY = 0,
			OLEUIPASTE_PASTE = 512,
			OLEUIPASTE_LINKANYTYPE = 1024,
			OLEUIPASTE_LINKTYPE1 = 1,
			OLEUIPASTE_LINKTYPE2 = 2,
			OLEUIPASTE_LINKTYPE3 = 4,
			OLEUIPASTE_LINKTYPE4 = 8,
			OLEUIPASTE_LINKTYPE5 = 16,
			OLEUIPASTE_LINKTYPE6 = 32,
			OLEUIPASTE_LINKTYPE7 = 64,
			OLEUIPASTE_LINKTYPE8 = 128,
		}
		
		// --- Function Pointers ---
		
		public function uint32 LPFNOLEUIHOOK(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		
		// --- Structs ---
		
		[CRepr]
		public struct _wireSAFEARR_BSTR
		{
			public uint32 Size;
			public FLAGGED_WORD_BLOB** aBstr;
		}
		[CRepr]
		public struct _wireSAFEARR_UNKNOWN
		{
			public uint32 Size;
			public IUnknown* apUnknown;
		}
		[CRepr]
		public struct _wireSAFEARR_DISPATCH
		{
			public uint32 Size;
			public IDispatch* apDispatch;
		}
		[CRepr]
		public struct _wireSAFEARR_VARIANT
		{
			public uint32 Size;
			public _wireVARIANT** aVariant;
		}
		[CRepr]
		public struct _wireSAFEARR_BRECORD
		{
			public uint32 Size;
			public _wireBRECORD** aRecord;
		}
		[CRepr]
		public struct _wireSAFEARR_HAVEIID
		{
			public uint32 Size;
			public IUnknown* apUnknown;
			public Guid iid;
		}
		[CRepr]
		public struct _wireSAFEARRAY_UNION
		{
			public uint32 sfType;
			public _u_e__Struct u;
			
			[CRepr, Union]
			public struct _u_e__Struct
			{
				public _wireSAFEARR_BSTR BstrStr;
				public _wireSAFEARR_UNKNOWN UnknownStr;
				public _wireSAFEARR_DISPATCH DispatchStr;
				public _wireSAFEARR_VARIANT VariantStr;
				public _wireSAFEARR_BRECORD RecordStr;
				public _wireSAFEARR_HAVEIID HaveIidStr;
				public BYTE_SIZEDARR ByteStr;
				public SHORT_SIZEDARR WordStr;
				public LONG_SIZEDARR LongStr;
				public HYPER_SIZEDARR HyperStr;
			}
		}
		[CRepr]
		public struct _wireSAFEARRAY
		{
			public uint16 cDims;
			public uint16 fFeatures;
			public uint32 cbElements;
			public uint32 cLocks;
			public _wireSAFEARRAY_UNION uArrayStructs;
			public SAFEARRAYBOUND[] rgsabound;
		}
		[CRepr]
		public struct _wireBRECORD
		{
			public uint32 fFlags;
			public uint32 clSize;
			public IRecordInfo pRecInfo;
			public uint8* pRecord;
		}
		[CRepr]
		public struct _wireVARIANT
		{
			public uint32 clSize;
			public uint32 rpcReserved;
			public uint16 vt;
			public uint16 wReserved1;
			public uint16 wReserved2;
			public uint16 wReserved3;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int64 llVal;
				public int32 lVal;
				public uint8 bVal;
				public int16 iVal;
				public float fltVal;
				public double dblVal;
				public int16 boolVal;
				public int32 scode;
				public CY cyVal;
				public double date;
				public FLAGGED_WORD_BLOB* bstrVal;
				public IUnknown punkVal;
				public IDispatch pdispVal;
				public _wireSAFEARRAY** parray;
				public _wireBRECORD* brecVal;
				public uint8* pbVal;
				public int16* piVal;
				public int32* plVal;
				public int64* pllVal;
				public float* pfltVal;
				public double* pdblVal;
				public int16* pboolVal;
				public int32* pscode;
				public CY* pcyVal;
				public double* pdate;
				public FLAGGED_WORD_BLOB** pbstrVal;
				public IUnknown* ppunkVal;
				public IDispatch* ppdispVal;
				public _wireSAFEARRAY*** pparray;
				public _wireVARIANT** pvarVal;
				public CHAR cVal;
				public uint16 uiVal;
				public uint32 ulVal;
				public uint64 ullVal;
				public int32 intVal;
				public uint32 uintVal;
				public DECIMAL decVal;
				public DECIMAL* pdecVal;
				public PSTR pcVal;
				public uint16* puiVal;
				public uint32* pulVal;
				public uint64* pullVal;
				public int32* pintVal;
				public uint32* puintVal;
			}
		}
		[CRepr]
		public struct ARRAYDESC
		{
			public TYPEDESC tdescElem;
			public uint16 cDims;
			public SAFEARRAYBOUND[] rgbounds;
		}
		[CRepr]
		public struct PARAMDESCEX
		{
			public uint32 cBytes;
			public VARIANT varDefaultValue;
		}
		[CRepr]
		public struct PARAMDESC
		{
			public PARAMDESCEX* pparamdescex;
			public uint16 wParamFlags;
		}
		[CRepr]
		public struct CLEANLOCALSTORAGE
		{
			public IUnknown pInterface;
			public void* pStorage;
			public uint32 flags;
		}
		[CRepr]
		public struct OBJECTDESCRIPTOR
		{
			public uint32 cbSize;
			public Guid clsid;
			public uint32 dwDrawAspect;
			public SIZE sizel;
			public POINTL pointl;
			public uint32 dwStatus;
			public uint32 dwFullUserTypeName;
			public uint32 dwSrcOfCopy;
		}
		[CRepr]
		public struct OIFI
		{
			public uint32 cb;
			public BOOL fMDIApp;
			public HWND hwndFrame;
			public HACCEL haccel;
			public uint32 cAccelEntries;
		}
		[CRepr]
		public struct OleMenuGroupWidths
		{
			public int32[6] width;
		}
		[CRepr]
		public struct OLEVERB
		{
			public int32 lVerb;
			public PWSTR lpszVerbName;
			public uint32 fuFlags;
			public uint32 grfAttribs;
		}
		[CRepr]
		public struct NUMPARSE
		{
			public int32 cDig;
			public uint32 dwInFlags;
			public uint32 dwOutFlags;
			public int32 cchUsed;
			public int32 nBaseShift;
			public int32 nPwr10;
		}
		[CRepr]
		public struct UDATE
		{
			public SYSTEMTIME st;
			public uint16 wDayOfYear;
		}
		[CRepr]
		public struct PARAMDATA
		{
			public PWSTR szName;
			public uint16 vt;
		}
		[CRepr]
		public struct METHODDATA
		{
			public PWSTR szName;
			public PARAMDATA* ppdata;
			public int32 dispid;
			public uint32 iMeth;
			public CALLCONV cc;
			public uint32 cArgs;
			public uint16 wFlags;
			public uint16 vtReturn;
		}
		[CRepr]
		public struct INTERFACEDATA
		{
			public METHODDATA* pmethdata;
			public uint32 cMembers;
		}
		[CRepr]
		public struct LICINFO
		{
			public int32 cbLicInfo;
			public BOOL fRuntimeKeyAvail;
			public BOOL fLicVerified;
		}
		[CRepr]
		public struct CONTROLINFO
		{
			public uint32 cb;
			public HACCEL hAccel;
			public uint16 cAccel;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct POINTF
		{
			public float x;
			public float y;
		}
		[CRepr]
		public struct PROPPAGEINFO
		{
			public uint32 cb;
			public PWSTR pszTitle;
			public SIZE size;
			public PWSTR pszDocString;
			public PWSTR pszHelpFile;
			public uint32 dwHelpContext;
		}
		[CRepr]
		public struct CAUUID
		{
			public uint32 cElems;
			public Guid* pElems;
		}
		[CRepr]
		public struct ExtentInfo
		{
			public uint32 cb;
			public uint32 dwExtentMode;
			public SIZE sizelProposed;
		}
		[CRepr]
		public struct AspectInfo
		{
			public uint32 cb;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct CALPOLESTR
		{
			public uint32 cElems;
			public PWSTR* pElems;
		}
		[CRepr]
		public struct CADWORD
		{
			public uint32 cElems;
			public uint32* pElems;
		}
		[CRepr]
		public struct QACONTAINER
		{
			public uint32 cbSize;
			public IOleClientSite pClientSite;
			public IAdviseSinkEx pAdviseSink;
			public IPropertyNotifySink pPropertyNotifySink;
			public IUnknown pUnkEventSink;
			public uint32 dwAmbientFlags;
			public uint32 colorFore;
			public uint32 colorBack;
			public IFont pFont;
			public IOleUndoManager pUndoMgr;
			public uint32 dwAppearance;
			public int32 lcid;
			public HPALETTE hpal;
			public IBindHost pBindHost;
			public IOleControlSite pOleControlSite;
			public IServiceProvider pServiceProvider;
		}
		[CRepr]
		public struct QACONTROL
		{
			public uint32 cbSize;
			public uint32 dwMiscStatus;
			public uint32 dwViewStatus;
			public uint32 dwEventCookie;
			public uint32 dwPropNotifyCookie;
			public uint32 dwPointerActivationPolicy;
		}
		[CRepr]
		public struct OCPFIPARAMS
		{
			public uint32 cbStructSize;
			public HWND hWndOwner;
			public int32 x;
			public int32 y;
			public PWSTR lpszCaption;
			public uint32 cObjects;
			public IUnknown* lplpUnk;
			public uint32 cPages;
			public Guid* lpPages;
			public uint32 lcid;
			public int32 dispidInitialProperty;
		}
		[CRepr]
		public struct FONTDESC
		{
			public uint32 cbSizeofstruct;
			public PWSTR lpstrName;
			public CY cySize;
			public int16 sWeight;
			public int16 sCharset;
			public BOOL fItalic;
			public BOOL fUnderline;
			public BOOL fStrikethrough;
		}
		[CRepr]
		public struct PICTDESC
		{
			public uint32 cbSizeofstruct;
			public uint32 picType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _bmp_e__Struct bmp;
				public _wmf_e__Struct wmf;
				public _icon_e__Struct icon;
				public _emf_e__Struct emf;
				
				[CRepr]
				public struct _icon_e__Struct
				{
					public HICON hicon;
				}
				[CRepr]
				public struct _bmp_e__Struct
				{
					public HBITMAP hbitmap;
					public HPALETTE hpal;
				}
				[CRepr]
				public struct _wmf_e__Struct
				{
					public HMETAFILE hmeta;
					public int32 xExt;
					public int32 yExt;
				}
				[CRepr]
				public struct _emf_e__Struct
				{
					public HENHMETAFILE hemf;
				}
			}
		}
		[CRepr]
		public struct PAGERANGE
		{
			public int32 nFromPage;
			public int32 nToPage;
		}
		[CRepr]
		public struct PAGESET
		{
			public uint32 cbStruct;
			public BOOL fOddPages;
			public BOOL fEvenPages;
			public uint32 cPageRange;
			public PAGERANGE[] rgPages;
		}
		[CRepr]
		public struct OLECMD
		{
			public uint32 cmdID;
			public uint32 cmdf;
		}
		[CRepr]
		public struct OLECMDTEXT
		{
			public uint32 cmdtextf;
			public uint32 cwActual;
			public uint32 cwBuf;
			public char16[] rgwz;
		}
		[CRepr]
		public struct OLEUIINSERTOBJECTW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public Guid clsid;
			public PWSTR lpszFile;
			public uint32 cchFile;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
			public Guid iid;
			public uint32 oleRender;
			public FORMATETC* lpFormatEtc;
			public IOleClientSite lpIOleClientSite;
			public IStorage lpIStorage;
			public void** ppvObj;
			public int32 sc;
			public int hMetaPict;
		}
		[CRepr]
		public struct OLEUIINSERTOBJECTA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public Guid clsid;
			public PSTR lpszFile;
			public uint32 cchFile;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
			public Guid iid;
			public uint32 oleRender;
			public FORMATETC* lpFormatEtc;
			public IOleClientSite lpIOleClientSite;
			public IStorage lpIStorage;
			public void** ppvObj;
			public int32 sc;
			public int hMetaPict;
		}
		[CRepr]
		public struct OLEUIPASTEENTRYW
		{
			public FORMATETC fmtetc;
			public PWSTR lpstrFormatName;
			public PWSTR lpstrResultText;
			public uint32 dwFlags;
			public uint32 dwScratchSpace;
		}
		[CRepr]
		public struct OLEUIPASTEENTRYA
		{
			public FORMATETC fmtetc;
			public PSTR lpstrFormatName;
			public PSTR lpstrResultText;
			public uint32 dwFlags;
			public uint32 dwScratchSpace;
		}
		[CRepr]
		public struct OLEUIPASTESPECIALW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public IDataObject lpSrcDataObj;
			public OLEUIPASTEENTRYW* arrPasteEntries;
			public int32 cPasteEntries;
			public uint32* arrLinkTypes;
			public int32 cLinkTypes;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
			public int32 nSelectedIndex;
			public BOOL fLink;
			public int hMetaPict;
			public SIZE sizel;
		}
		[CRepr]
		public struct OLEUIPASTESPECIALA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public IDataObject lpSrcDataObj;
			public OLEUIPASTEENTRYA* arrPasteEntries;
			public int32 cPasteEntries;
			public uint32* arrLinkTypes;
			public int32 cLinkTypes;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
			public int32 nSelectedIndex;
			public BOOL fLink;
			public int hMetaPict;
			public SIZE sizel;
		}
		[CRepr]
		public struct OLEUIEDITLINKSW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public IOleUILinkContainerW lpOleUILinkContainer;
		}
		[CRepr]
		public struct OLEUIEDITLINKSA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public IOleUILinkContainerA lpOleUILinkContainer;
		}
		[CRepr]
		public struct OLEUICHANGEICONW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public int hMetaPict;
			public Guid clsid;
			public char16[260] szIconExe;
			public int32 cchIconExe;
		}
		[CRepr]
		public struct OLEUICHANGEICONA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public int hMetaPict;
			public Guid clsid;
			public CHAR[260] szIconExe;
			public int32 cchIconExe;
		}
		[CRepr]
		public struct OLEUICONVERTW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public Guid clsid;
			public Guid clsidConvertDefault;
			public Guid clsidActivateDefault;
			public Guid clsidNew;
			public uint32 dvAspect;
			public uint16 wFormat;
			public BOOL fIsLinkedObject;
			public int hMetaPict;
			public PWSTR lpszUserType;
			public BOOL fObjectsIconChanged;
			public PWSTR lpszDefLabel;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
		}
		[CRepr]
		public struct OLEUICONVERTA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public Guid clsid;
			public Guid clsidConvertDefault;
			public Guid clsidActivateDefault;
			public Guid clsidNew;
			public uint32 dvAspect;
			public uint16 wFormat;
			public BOOL fIsLinkedObject;
			public int hMetaPict;
			public PSTR lpszUserType;
			public BOOL fObjectsIconChanged;
			public PSTR lpszDefLabel;
			public uint32 cClsidExclude;
			public Guid* lpClsidExclude;
		}
		[CRepr]
		public struct OLEUIBUSYW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public HTASK hTask;
			public HWND* lphWndDialog;
		}
		[CRepr]
		public struct OLEUIBUSYA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public HTASK hTask;
			public HWND* lphWndDialog;
		}
		[CRepr]
		public struct OLEUICHANGESOURCEW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PWSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PWSTR lpszTemplate;
			public HRSRC hResource;
			public OPENFILENAMEW* lpOFN;
			public uint32[4] dwReserved1;
			public IOleUILinkContainerW lpOleUILinkContainer;
			public uint32 dwLink;
			public PWSTR lpszDisplayName;
			public uint32 nFileLength;
			public PWSTR lpszFrom;
			public PWSTR lpszTo;
		}
		[CRepr]
		public struct OLEUICHANGESOURCEA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public HWND hWndOwner;
			public PSTR lpszCaption;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public HINSTANCE hInstance;
			public PSTR lpszTemplate;
			public HRSRC hResource;
			public OPENFILENAMEA* lpOFN;
			public uint32[4] dwReserved1;
			public IOleUILinkContainerA lpOleUILinkContainer;
			public uint32 dwLink;
			public PSTR lpszDisplayName;
			public uint32 nFileLength;
			public PSTR lpszFrom;
			public PSTR lpszTo;
		}
		[CRepr]
		public struct OLEUIGNRLPROPSW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSW* lpOP;
		}
		[CRepr]
		public struct OLEUIGNRLPROPSA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSA* lpOP;
		}
		[CRepr]
		public struct OLEUIVIEWPROPSW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSW* lpOP;
			public int32 nScaleMin;
			public int32 nScaleMax;
		}
		[CRepr]
		public struct OLEUIVIEWPROPSA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSA* lpOP;
			public int32 nScaleMin;
			public int32 nScaleMax;
		}
		[CRepr]
		public struct OLEUILINKPROPSW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSW* lpOP;
		}
		[CRepr]
		public struct OLEUILINKPROPSA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public uint32[2] dwReserved1;
			public LPFNOLEUIHOOK lpfnHook;
			public LPARAM lCustData;
			public uint32[3] dwReserved2;
			public OLEUIOBJECTPROPSA* lpOP;
		}
		[CRepr]
		public struct OLEUIOBJECTPROPSW
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public PROPSHEETHEADERW_V2* lpPS;
			public uint32 dwObject;
			public IOleUIObjInfoW lpObjInfo;
			public uint32 dwLink;
			public IOleUILinkInfoW lpLinkInfo;
			public OLEUIGNRLPROPSW* lpGP;
			public OLEUIVIEWPROPSW* lpVP;
			public OLEUILINKPROPSW* lpLP;
		}
		[CRepr]
		public struct OLEUIOBJECTPROPSA
		{
			public uint32 cbStruct;
			public uint32 dwFlags;
			public PROPSHEETHEADERA_V2* lpPS;
			public uint32 dwObject;
			public IOleUIObjInfoA lpObjInfo;
			public uint32 dwLink;
			public IOleUILinkInfoA lpLinkInfo;
			public OLEUIGNRLPROPSA* lpGP;
			public OLEUIVIEWPROPSA* lpVP;
			public OLEUILINKPROPSA* lpLP;
		}
		
		// --- COM Interfaces ---
		
		public struct ICreateTypeInfo {}
		public struct ICreateTypeInfo2 {}
		public struct ICreateTypeLib {}
		public struct ICreateTypeLib2 {}
		public struct IEnumVARIANT {}
		public struct ITypeChangeEvents {}
		public struct ICreateErrorInfo {}
		public struct ITypeFactory {}
		public struct ITypeMarshal {}
		public struct IRecordInfo {}
		public struct IOleAdviseHolder {}
		public struct IOleCache {}
		public struct IOleCache2 {}
		public struct IOleCacheControl {}
		public struct IParseDisplayName {}
		public struct IOleContainer {}
		public struct IOleClientSite {}
		public struct IOleObject {}
		public struct IOleWindow {}
		public struct IOleLink {}
		public struct IOleItemContainer {}
		public struct IOleInPlaceUIWindow {}
		public struct IOleInPlaceActiveObject {}
		public struct IOleInPlaceFrame {}
		public struct IOleInPlaceObject {}
		public struct IOleInPlaceSite {}
		public struct IContinue {}
		public struct IViewObject {}
		public struct IViewObject2 {}
		public struct IDropSource {}
		public struct IDropTarget {}
		public struct IDropSourceNotify {}
		public struct IEnterpriseDropTarget {}
		public struct IEnumOLEVERB {}
		public struct IClassFactory2 {}
		public struct IProvideClassInfo {}
		public struct IProvideClassInfo2 {}
		public struct IProvideMultipleClassInfo {}
		public struct IOleControl {}
		public struct IOleControlSite {}
		public struct IPropertyPage {}
		public struct IPropertyPage2 {}
		public struct IPropertyPageSite {}
		public struct IPropertyNotifySink {}
		public struct ISpecifyPropertyPages {}
		public struct IPersistPropertyBag {}
		public struct ISimpleFrameSite {}
		public struct IFont {}
		public struct IPicture {}
		public struct IPicture2 {}
		public struct IFontEventsDisp {}
		public struct IFontDisp {}
		public struct IPictureDisp {}
		public struct IOleInPlaceObjectWindowless {}
		public struct IOleInPlaceSiteEx {}
		public struct IOleInPlaceSiteWindowless {}
		public struct IViewObjectEx {}
		public struct IOleUndoUnit {}
		public struct IOleParentUndoUnit {}
		public struct IEnumOleUndoUnits {}
		public struct IOleUndoManager {}
		public struct IPointerInactive {}
		public struct IObjectWithSite {}
		public struct IPerPropertyBrowsing {}
		public struct IPersistPropertyBag2 {}
		public struct IAdviseSinkEx {}
		public struct IQuickActivate {}
		public struct IVBGetControl {}
		public struct IGetOleObject {}
		public struct IVBFormat {}
		public struct IGetVBAObject {}
		public struct IOleDocument {}
		public struct IOleDocumentSite {}
		public struct IOleDocumentView {}
		public struct IEnumOleDocumentViews {}
		public struct IContinueCallback {}
		public struct IPrint {}
		public struct IOleCommandTarget {}
		public struct IZoomEvents {}
		public struct IProtectFocus {}
		public struct IProtectedModeMenuServices {}
		public struct IOleUILinkContainerW {}
		public struct IOleUILinkContainerA {}
		public struct IOleUIObjInfoW {}
		public struct IOleUIObjInfoA {}
		public struct IOleUILinkInfoW {}
		public struct IOleUILinkInfoA {}
		public struct IDispatchEx {}
		public struct IDispError {}
		public struct IVariantChangeType {}
		public struct IObjectIdentity {}
		public struct ICanHandleException {}
		public struct IProvideRuntimeContext {}
		
		// --- Functions ---
		
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DosDateTimeToVariantTime(uint16 wDosDate, uint16 wDosTime, double* pvtime);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantTimeToDosDateTime(double vtime, uint16* pwDosDate, uint16* pwDosTime);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SystemTimeToVariantTime(SYSTEMTIME* lpSystemTime, double* pvtime);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 VariantTimeToSystemTime(double vtime, SYSTEMTIME* lpSystemTime);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayAllocDescriptor(uint32 cDims, SAFEARRAY** ppsaOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayAllocDescriptorEx(uint16 vt, uint32 cDims, SAFEARRAY** ppsaOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayAllocData(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SAFEARRAY* SafeArrayCreate(uint16 vt, uint32 cDims, SAFEARRAYBOUND* rgsabound);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SAFEARRAY* SafeArrayCreateEx(uint16 vt, uint32 cDims, SAFEARRAYBOUND* rgsabound, void* pvExtra);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayCopyData(SAFEARRAY* psaSource, SAFEARRAY* psaTarget);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SafeArrayReleaseDescriptor(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayDestroyDescriptor(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SafeArrayReleaseData(void* pData);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayDestroyData(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayAddRef(SAFEARRAY* psa, void** ppDataToRelease);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayDestroy(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayRedim(SAFEARRAY* psa, SAFEARRAYBOUND* psaboundNew);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SafeArrayGetDim(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SafeArrayGetElemsize(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetUBound(SAFEARRAY* psa, uint32 nDim, int32* plUbound);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetLBound(SAFEARRAY* psa, uint32 nDim, int32* plLbound);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayLock(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayUnlock(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayAccessData(SAFEARRAY* psa, void** ppvData);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayUnaccessData(SAFEARRAY* psa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetElement(SAFEARRAY* psa, int32* rgIndices, void* pv);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayPutElement(SAFEARRAY* psa, int32* rgIndices, void* pv);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayCopy(SAFEARRAY* psa, SAFEARRAY** ppsaOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayPtrOfIndex(SAFEARRAY* psa, int32* rgIndices, void** ppvData);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArraySetRecordInfo(SAFEARRAY* psa, IRecordInfo prinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetRecordInfo(SAFEARRAY* psa, IRecordInfo* prinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArraySetIID(SAFEARRAY* psa, Guid* guid);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetIID(SAFEARRAY* psa, Guid* pguid);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetVartype(SAFEARRAY* psa, uint16* pvt);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SAFEARRAY* SafeArrayCreateVector(uint16 vt, int32 lLbound, uint32 cElements);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern SAFEARRAY* SafeArrayCreateVectorEx(uint16 vt, int32 lLbound, uint32 cElements, void* pvExtra);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void VariantInit(VARIANT* pvarg);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantClear(VARIANT* pvarg);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantCopy(VARIANT* pvargDest, VARIANT* pvargSrc);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantCopyInd(VARIANT* pvarDest, VARIANT* pvargSrc);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantChangeType(VARIANT* pvargDest, VARIANT* pvarSrc, uint16 wFlags, uint16 vt);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VariantChangeTypeEx(VARIANT* pvargDest, VARIANT* pvarSrc, uint32 lcid, uint16 wFlags, uint16 vt);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VectorFromBstr(BSTR bstr, SAFEARRAY** ppsa);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BstrFromVector(SAFEARRAY* psa, BSTR* pbstr);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromI2(int16 sIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromI4(int32 lIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromI8(int64 i64In, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromR4(float fltIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromR8(double dblIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromCy(CY cyIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromDate(double dateIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromDisp(IDispatch pdispIn, uint32 lcid, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromBool(int16 boolIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromI1(CHAR cIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromUI2(uint16 uiIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromUI4(uint32 ulIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromUI8(uint64 ui64In, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI1FromDec(DECIMAL* pdecIn, uint8* pbOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromUI1(uint8 bIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromI4(int32 lIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromI8(int64 i64In, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromR4(float fltIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromR8(double dblIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromCy(CY cyIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromDate(double dateIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromDisp(IDispatch pdispIn, uint32 lcid, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromBool(int16 boolIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromI1(CHAR cIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromUI2(uint16 uiIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromUI4(uint32 ulIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromUI8(uint64 ui64In, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI2FromDec(DECIMAL* pdecIn, int16* psOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromUI1(uint8 bIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromI2(int16 sIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromI8(int64 i64In, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromR4(float fltIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromR8(double dblIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromCy(CY cyIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromDate(double dateIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromDisp(IDispatch pdispIn, uint32 lcid, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromBool(int16 boolIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromI1(CHAR cIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromUI2(uint16 uiIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromUI4(uint32 ulIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromUI8(uint64 ui64In, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI4FromDec(DECIMAL* pdecIn, int32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromUI1(uint8 bIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromI2(int16 sIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromR4(float fltIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromR8(double dblIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromCy(CY cyIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromDate(double dateIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromDisp(IDispatch pdispIn, uint32 lcid, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromBool(int16 boolIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromI1(CHAR cIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromUI2(uint16 uiIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromUI4(uint32 ulIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromUI8(uint64 ui64In, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI8FromDec(DECIMAL* pdecIn, int64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromUI1(uint8 bIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromI2(int16 sIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromI4(int32 lIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromI8(int64 i64In, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromR8(double dblIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromCy(CY cyIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromDate(double dateIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromDisp(IDispatch pdispIn, uint32 lcid, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromBool(int16 boolIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromI1(CHAR cIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromUI2(uint16 uiIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromUI4(uint32 ulIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromUI8(uint64 ui64In, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4FromDec(DECIMAL* pdecIn, float* pfltOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromUI1(uint8 bIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromI2(int16 sIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromI4(int32 lIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromI8(int64 i64In, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromR4(float fltIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromCy(CY cyIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromDate(double dateIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromDisp(IDispatch pdispIn, uint32 lcid, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromBool(int16 boolIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromI1(CHAR cIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromUI2(uint16 uiIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromUI4(uint32 ulIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromUI8(uint64 ui64In, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8FromDec(DECIMAL* pdecIn, double* pdblOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUI1(uint8 bIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromI2(int16 sIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromI4(int32 lIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromI8(int64 i64In, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromR4(float fltIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromR8(double dblIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromCy(CY cyIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromDisp(IDispatch pdispIn, uint32 lcid, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromBool(int16 boolIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromI1(CHAR cIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUI2(uint16 uiIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUI4(uint32 ulIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUI8(uint64 ui64In, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromDec(DECIMAL* pdecIn, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromUI1(uint8 bIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromI2(int16 sIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromI4(int32 lIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromI8(int64 i64In, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromR4(float fltIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromR8(double dblIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromDate(double dateIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromDisp(IDispatch pdispIn, uint32 lcid, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromBool(int16 boolIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromI1(CHAR cIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromUI2(uint16 uiIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromUI4(uint32 ulIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromUI8(uint64 ui64In, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFromDec(DECIMAL* pdecIn, CY* pcyOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromUI1(uint8 bVal, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromI2(int16 iVal, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromI4(int32 lIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromI8(int64 i64In, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromR4(float fltIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromR8(double dblIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromCy(CY cyIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromDate(double dateIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromDisp(IDispatch pdispIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromBool(int16 boolIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromI1(CHAR cIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromUI2(uint16 uiIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromUI4(uint32 ulIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromUI8(uint64 ui64In, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrFromDec(DECIMAL* pdecIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromUI1(uint8 bIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromI2(int16 sIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromI4(int32 lIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromI8(int64 i64In, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromR4(float fltIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromR8(double dblIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromDate(double dateIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromCy(CY cyIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromDisp(IDispatch pdispIn, uint32 lcid, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromI1(CHAR cIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromUI2(uint16 uiIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromUI4(uint32 ulIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromUI8(uint64 i64In, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBoolFromDec(DECIMAL* pdecIn, int16* pboolOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromUI1(uint8 bIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromI2(int16 uiIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromI4(int32 lIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromI8(int64 i64In, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromR4(float fltIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromR8(double dblIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromDate(double dateIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromCy(CY cyIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromDisp(IDispatch pdispIn, uint32 lcid, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromBool(int16 boolIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromUI2(uint16 uiIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromUI4(uint32 ulIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromUI8(uint64 i64In, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarI1FromDec(DECIMAL* pdecIn, PSTR pcOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromUI1(uint8 bIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromI2(int16 uiIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromI4(int32 lIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromI8(int64 i64In, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromR4(float fltIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromR8(double dblIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromDate(double dateIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromCy(CY cyIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromDisp(IDispatch pdispIn, uint32 lcid, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromBool(int16 boolIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromI1(CHAR cIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromUI4(uint32 ulIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromUI8(uint64 i64In, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI2FromDec(DECIMAL* pdecIn, uint16* puiOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromUI1(uint8 bIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromI2(int16 uiIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromI4(int32 lIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromI8(int64 i64In, uint32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromR4(float fltIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromR8(double dblIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromDate(double dateIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromCy(CY cyIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromDisp(IDispatch pdispIn, uint32 lcid, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromBool(int16 boolIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromI1(CHAR cIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromUI2(uint16 uiIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromUI8(uint64 ui64In, uint32* plOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI4FromDec(DECIMAL* pdecIn, uint32* pulOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromUI1(uint8 bIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromI2(int16 sIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromI8(int64 ui64In, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromR4(float fltIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromR8(double dblIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromCy(CY cyIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromDate(double dateIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromDisp(IDispatch pdispIn, uint32 lcid, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromBool(int16 boolIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromI1(CHAR cIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromUI2(uint16 uiIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromUI4(uint32 ulIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUI8FromDec(DECIMAL* pdecIn, uint64* pi64Out);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromUI1(uint8 bIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromI2(int16 uiIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromI4(int32 lIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromI8(int64 i64In, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromR4(float fltIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromR8(double dblIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromDate(double dateIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromCy(CY cyIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromDisp(IDispatch pdispIn, uint32 lcid, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromBool(int16 boolIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromI1(CHAR cIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromUI2(uint16 uiIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromUI4(uint32 ulIn, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFromUI8(uint64 ui64In, DECIMAL* pdecOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarParseNumFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, NUMPARSE* pnumprs, uint8* rgbDig);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarNumFromParseNum(NUMPARSE* pnumprs, uint8* rgbDig, uint32 dwVtBits, VARIANT* pvar);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarAdd(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarAnd(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCat(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDiv(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarEqv(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarIdiv(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarImp(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarMod(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarMul(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarOr(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarPow(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarSub(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarXor(VARIANT* pvarLeft, VARIANT* pvarRight, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarAbs(VARIANT* pvarIn, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFix(VARIANT* pvarIn, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarInt(VARIANT* pvarIn, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarNeg(VARIANT* pvarIn, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarNot(VARIANT* pvarIn, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarRound(VARIANT* pvarIn, int32 cDecimals, VARIANT* pvarResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCmp(VARIANT* pvarLeft, VARIANT* pvarRight, uint32 lcid, uint32 dwFlags);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecAdd(DECIMAL* pdecLeft, DECIMAL* pdecRight, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecDiv(DECIMAL* pdecLeft, DECIMAL* pdecRight, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecMul(DECIMAL* pdecLeft, DECIMAL* pdecRight, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecSub(DECIMAL* pdecLeft, DECIMAL* pdecRight, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecAbs(DECIMAL* pdecIn, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecFix(DECIMAL* pdecIn, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecInt(DECIMAL* pdecIn, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecNeg(DECIMAL* pdecIn, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecRound(DECIMAL* pdecIn, int32 cDecimals, DECIMAL* pdecResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecCmp(DECIMAL* pdecLeft, DECIMAL* pdecRight);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDecCmpR8(DECIMAL* pdecLeft, double dblRight);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyAdd(CY cyLeft, CY cyRight, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyMul(CY cyLeft, CY cyRight, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyMulI4(CY cyLeft, int32 lRight, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyMulI8(CY cyLeft, int64 lRight, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCySub(CY cyLeft, CY cyRight, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyAbs(CY cyIn, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyFix(CY cyIn, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyInt(CY cyIn, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyNeg(CY cyIn, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyRound(CY cyIn, int32 cDecimals, CY* pcyResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyCmp(CY cyLeft, CY cyRight);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarCyCmpR8(CY cyLeft, double dblRight);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrCat(BSTR bstrLeft, BSTR bstrRight, uint16** pbstrResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarBstrCmp(BSTR bstrLeft, BSTR bstrRight, uint32 lcid, uint32 dwFlags);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8Pow(double dblLeft, double dblRight, double* pdblResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR4CmpR8(float fltLeft, double dblRight);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarR8Round(double dblIn, int32 cDecimals, double* pdblResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUdate(UDATE* pudateIn, uint32 dwFlags, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarDateFromUdateEx(UDATE* pudateIn, uint32 lcid, uint32 dwFlags, double* pdateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarUdateFromDate(double dateIn, uint32 dwFlags, UDATE* pudateOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAltMonthNames(uint32 lcid, PWSTR** prgp);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormat(VARIANT* pvarIn, PWSTR pstrFormat, int32 iFirstDay, int32 iFirstWeek, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormatDateTime(VARIANT* pvarIn, int32 iNamedFormat, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormatNumber(VARIANT* pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormatPercent(VARIANT* pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormatCurrency(VARIANT* pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarWeekdayName(int32 iWeekday, int32 fAbbrev, int32 iFirstDay, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarMonthName(int32 iMonth, int32 fAbbrev, uint32 dwFlags, BSTR* pbstrOut);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarFormatFromTokens(VARIANT* pvarIn, PWSTR pstrFormat, uint8* pbTokCur, uint32 dwFlags, BSTR* pbstrOut, uint32 lcid);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VarTokenizeFormatString(PWSTR pstrFormat, uint8* rgbTok, int32 cbTok, int32 iFirstDay, int32 iFirstWeek, uint32 lcid, int32* pcbActual);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LHashValOfNameSysA(SYSKIND syskind, uint32 lcid, PSTR szName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LHashValOfNameSys(SYSKIND syskind, uint32 lcid, PWSTR szName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadTypeLib(PWSTR szFile, ITypeLib* pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadTypeLibEx(PWSTR szFile, REGKIND regkind, ITypeLib* pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadRegTypeLib(Guid* rguid, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, ITypeLib* pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT QueryPathOfRegTypeLib(Guid* guid, uint16 wMaj, uint16 wMin, uint32 lcid, uint16** lpbstrPathName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterTypeLib(ITypeLib ptlib, PWSTR szFullPath, PWSTR szHelpDir);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnRegisterTypeLib(Guid* libID, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, SYSKIND syskind);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterTypeLibForUser(ITypeLib ptlib, PWSTR szFullPath, PWSTR szHelpDir);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnRegisterTypeLibForUser(Guid* libID, uint16 wMajorVerNum, uint16 wMinorVerNum, uint32 lcid, SYSKIND syskind);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateTypeLib(SYSKIND syskind, PWSTR szFile, ICreateTypeLib* ppctlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateTypeLib2(SYSKIND syskind, PWSTR szFile, ICreateTypeLib2* ppctlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispGetParam(DISPPARAMS* pdispparams, uint32 position, uint16 vtTarg, VARIANT* pvarResult, uint32* puArgErr);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispGetIDsOfNames(ITypeInfo ptinfo, PWSTR* rgszNames, uint32 cNames, int32* rgdispid);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispInvoke(void* _this, ITypeInfo ptinfo, int32 dispidMember, uint16 wFlags, DISPPARAMS* pparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDispTypeInfo(INTERFACEDATA* pidata, uint32 lcid, ITypeInfo* pptinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdDispatch(IUnknown punkOuter, void* pvThis, ITypeInfo ptinfo, IUnknown* ppunkStdDisp);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispCallFunc(void* pvInstance, uint oVft, CALLCONV cc, uint16 vtReturn, uint32 cActuals, uint16* prgvt, VARIANT** prgpvarg, VARIANT* pvargResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterActiveObject(IUnknown punk, Guid* rclsid, uint32 dwFlags, uint32* pdwRegister);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeActiveObject(uint32 dwRegister, void* pvReserved);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetActiveObject(Guid* rclsid, void* pvReserved, IUnknown* ppunk);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateErrorInfo(ICreateErrorInfo* pperrinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRecordInfoFromTypeInfo(ITypeInfo pTypeInfo, IRecordInfo* ppRecInfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRecordInfoFromGuids(Guid* rGuidTypeLib, uint32 uVerMajor, uint32 uVerMinor, uint32 lcid, Guid* rGuidTypeInfo, IRecordInfo* ppRecInfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OaBuildVersion();
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ClearCustData(CUSTDATA* pCustData);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void OaEnablePerUserTLibRegistration();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleBuildVersion();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleInitialize(void* pvReserved);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void OleUninitialize();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleQueryLinkFromData(IDataObject pSrcDataObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleQueryCreateFromData(IDataObject pSrcDataObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreate(Guid* rclsid, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateEx(Guid* rclsid, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromData(IDataObject pSrcDataObj, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromDataEx(IDataObject pSrcDataObj, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkFromData(IDataObject pSrcDataObj, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkFromDataEx(IDataObject pSrcDataObj, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateStaticFromData(IDataObject pSrcDataObj, Guid* iid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLink(IMoniker pmkLinkSrc, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkEx(IMoniker pmkLinkSrc, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkToFile(PWSTR lpszFileName, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkToFileEx(PWSTR lpszFileName, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromFile(Guid* rclsid, PWSTR lpszFileName, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromFileEx(Guid* rclsid, PWSTR lpszFileName, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink lpAdviseSink, uint32* rgdwConnection, IOleClientSite pClientSite, IStorage pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoad(IStorage pStg, Guid* riid, IOleClientSite pClientSite, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSave(IPersistStorage pPS, IStorage pStg, BOOL fSameAsLoad);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadFromStream(IStream pStm, Guid* iidInterface, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSaveToStream(IPersistStream pPStm, IStream pStm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetContainedObject(IUnknown pUnknown, BOOL fContained);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleNoteObjectVisible(IUnknown pUnknown, BOOL fVisible);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterDragDrop(HWND hwnd, IDropTarget pDropTarget);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeDragDrop(HWND hwnd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DoDragDrop(IDataObject pDataObj, IDropSource pDropSource, uint32 dwOKEffects, uint32* pdwEffect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetClipboard(IDataObject pDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleGetClipboard(IDataObject* ppDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleGetClipboardWithEnterpriseInfo(IDataObject* dataObject, PWSTR* dataEnterpriseId, PWSTR* sourceDescription, PWSTR* targetDescription, PWSTR* dataDescription);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleFlushClipboard();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleIsCurrentClipboard(IDataObject pDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int OleCreateMenuDescriptor(HMENU hmenuCombined, OleMenuGroupWidths* lpMenuWidths);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetMenuDescriptor(int holemenu, HWND hwndFrame, HWND hwndActiveObject, IOleInPlaceFrame lpFrame, IOleInPlaceActiveObject lpActiveObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDestroyMenuDescriptor(int holemenu);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleTranslateAccelerator(IOleInPlaceFrame lpFrame, OIFI* lpFrameInfo, MSG* lpmsg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OleDuplicateData(HANDLE hSrc, uint16 cfFormat, uint32 uiFlags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDraw(IUnknown pUnknown, uint32 dwAspect, HDC hdcDraw, RECT* lprcBounds);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRun(IUnknown pUnknown);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleIsRunning(IOleObject pObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLockRunning(IUnknown pUnknown, BOOL fLock, BOOL fLastUnlockCloses);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseStgMedium(STGMEDIUM* param0);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateOleAdviseHolder(IOleAdviseHolder* ppOAHolder);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateDefaultHandler(Guid* clsid, IUnknown pUnkOuter, Guid* riid, void** lplpObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateEmbeddingHelper(Guid* clsid, IUnknown pUnkOuter, uint32 flags, IClassFactory pCF, Guid* riid, void** lplpObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsAccelerator(HACCEL hAccel, int32 cAccelEntries, MSG* lpMsg, uint16* lpwCmd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int OleGetIconOfFile(PWSTR lpszPath, BOOL fUseFileAsLabel);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int OleGetIconOfClass(Guid* rclsid, PWSTR lpszLabel, BOOL fUseTypeAsLabel);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int OleMetafilePictFromIconAndLabel(HICON hIcon, PWSTR lpszLabel, PWSTR lpszSourceFile, uint32 iIconIndex);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRegGetUserType(Guid* clsid, uint32 dwFormOfType, PWSTR* pszUserType);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRegGetMiscStatus(Guid* clsid, uint32 dwAspect, uint32* pdwStatus);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRegEnumFormatEtc(Guid* clsid, uint32 dwDirection, IEnumFORMATETC* ppenum);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRegEnumVerbs(Guid* clsid, IEnumOLEVERB* ppenum);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDoAutoConvert(IStorage pStg, Guid* pClsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleGetAutoConvert(Guid* clsidOld, Guid* pClsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetAutoConvert(Guid* clsidOld, Guid* clsidNew);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HRGN_UserSize(uint32* param0, uint32 param1, HRGN* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HRGN_UserMarshal(uint32* param0, uint8* param1, HRGN* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HRGN_UserUnmarshal(uint32* param0, uint8* param1, HRGN* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HRGN_UserFree(uint32* param0, HRGN* param1);
		[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HRGN_UserSize64(uint32* param0, uint32 param1, HRGN* param2);
		[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HRGN_UserMarshal64(uint32* param0, uint8* param1, HRGN* param2);
		[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HRGN_UserUnmarshal64(uint32* param0, uint8* param1, HRGN* param2);
		[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HRGN_UserFree64(uint32* param0, HRGN* param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreatePropertyFrame(HWND hwndOwner, uint32 x, uint32 y, PWSTR lpszCaption, uint32 cObjects, IUnknown* ppUnk, uint32 cPages, Guid* pPageClsID, uint32 lcid, uint32 dwReserved, void* pvReserved);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreatePropertyFrameIndirect(OCPFIPARAMS* lpParams);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleTranslateColor(uint32 clr, HPALETTE hpal, uint32* lpcolorref);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFontIndirect(FONTDESC* lpFontDesc, Guid* riid, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreatePictureIndirect(PICTDESC* lpPictDesc, Guid* riid, BOOL fOwn, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPicture(IStream lpstream, int32 lSize, BOOL fRunmode, Guid* riid, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureEx(IStream lpstream, int32 lSize, BOOL fRunmode, Guid* riid, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPicturePath(PWSTR szURLorPath, IUnknown punkCaller, uint32 dwReserved, uint32 clrReserved, Guid* riid, void** ppvRet);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureFile(VARIANT varFileName, IDispatch* lplpdispPicture);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureFileEx(VARIANT varFileName, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, IDispatch* lplpdispPicture);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSavePictureFile(IDispatch lpdispPicture, BSTR bstrFileName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCURSOR OleIconToCursor(HINSTANCE hinstExe, HICON hIcon);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIAddVerbMenuW(IOleObject lpOleObj, PWSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, HMENU* lphMenu);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIAddVerbMenuA(IOleObject lpOleObj, PSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, HMENU* lphMenu);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIInsertObjectW(OLEUIINSERTOBJECTW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIInsertObjectA(OLEUIINSERTOBJECTA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIPasteSpecialW(OLEUIPASTESPECIALW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIPasteSpecialA(OLEUIPASTESPECIALA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIEditLinksW(OLEUIEDITLINKSW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIEditLinksA(OLEUIEDITLINKSA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIChangeIconW(OLEUICHANGEICONW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIChangeIconA(OLEUICHANGEICONA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIConvertW(OLEUICONVERTW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIConvertA(OLEUICONVERTA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUICanConvertOrActivateAs(Guid* rClsid, BOOL fIsLinkedObject, uint16 wFormat);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIBusyW(OLEUIBUSYW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIBusyA(OLEUIBUSYA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIChangeSourceW(OLEUICHANGESOURCEW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIChangeSourceA(OLEUICHANGESOURCEA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIObjectPropertiesW(OLEUIOBJECTPROPSW* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 OleUIObjectPropertiesA(OLEUIOBJECTPROPSA* param0);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OleUIPromptUserW(int32 nTemplate, HWND hwndParent);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OleUIPromptUserA(int32 nTemplate, HWND hwndParent);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIUpdateLinksW(IOleUILinkContainerW lpOleUILinkCntr, HWND hwndParent, PWSTR lpszTitle, int32 cLinks);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIUpdateLinksA(IOleUILinkContainerA lpOleUILinkCntr, HWND hwndParent, PSTR lpszTitle, int32 cLinks);
		
	}
}
