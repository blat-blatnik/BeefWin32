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
		
		public enum UPDFCACHE_FLAGS : uint32
		{
			ALL = 2147483647,
			ALLBUTNODATACACHE = 2147483646,
			NORMALCACHE = 8,
			IFBLANK = 16,
			ONLYIFBLANK = 2147483648,
			NODATACACHE = 1,
			ONSAVECACHE = 2,
			ONSTOPCACHE = 4,
			IFBLANKORONSAVECACHE = 18,
		}
		public enum ENUM_CONTROLS_WHICH_FLAGS : uint32
		{
			W_WCH_SIBLING = 1,
			_WCH_CONTAINER = 2,
			_WCH_CONTAINED = 3,
			_WCH_ALL = 4,
			_WCH_FREVERSEDIR = 134217728,
			_WCH_FONLYAFTER = 268435456,
			_WCH_FONLYBEFORE = 536870912,
			_WCH_FSELECTED = 1073741824,
		}
		public enum MULTICLASSINFO_FLAGS : uint32
		{
			TYPEINFO = 1,
			NUMRESERVEDDISPIDS = 2,
			IIDPRIMARY = 4,
			IIDSOURCE = 8,
		}
		[AllowDuplicates]
		public enum VARENUM : int32
		{
			EMPTY = 0,
			NULL = 1,
			I2 = 2,
			I4 = 3,
			R4 = 4,
			R8 = 5,
			CY = 6,
			DATE = 7,
			BSTR = 8,
			DISPATCH = 9,
			ERROR = 10,
			BOOL = 11,
			VARIANT = 12,
			UNKNOWN = 13,
			DECIMAL = 14,
			I1 = 16,
			UI1 = 17,
			UI2 = 18,
			UI4 = 19,
			I8 = 20,
			UI8 = 21,
			INT = 22,
			UINT = 23,
			VOID = 24,
			HRESULT = 25,
			PTR = 26,
			SAFEARRAY = 27,
			CARRAY = 28,
			USERDEFINED = 29,
			LPSTR = 30,
			LPWSTR = 31,
			RECORD = 36,
			INT_PTR = 37,
			UINT_PTR = 38,
			FILETIME = 64,
			BLOB = 65,
			STREAM = 66,
			STORAGE = 67,
			STREAMED_OBJECT = 68,
			STORED_OBJECT = 69,
			BLOB_OBJECT = 70,
			CF = 71,
			CLSID = 72,
			VERSIONED_STREAM = 73,
			BSTR_BLOB = 4095,
			VECTOR = 4096,
			ARRAY = 8192,
			BYREF = 16384,
			RESERVED = 32768,
			ILLEGAL = 65535,
			ILLEGALMASKED = 4095,
			TYPEMASK = 4095,
		}
		public enum SF_TYPE : int32
		{
			ERROR = 10,
			I1 = 16,
			I2 = 2,
			I4 = 3,
			I8 = 20,
			BSTR = 8,
			UNKNOWN = 13,
			DISPATCH = 9,
			VARIANT = 12,
			RECORD = 36,
			HAVEIID = 32781,
		}
		public enum TYPEFLAGS : int32
		{
			APPOBJECT = 1,
			CANCREATE = 2,
			LICENSED = 4,
			PREDECLID = 8,
			HIDDEN = 16,
			CONTROL = 32,
			DUAL = 64,
			NONEXTENSIBLE = 128,
			OLEAUTOMATION = 256,
			RESTRICTED = 512,
			AGGREGATABLE = 1024,
			REPLACEABLE = 2048,
			DISPATCHABLE = 4096,
			REVERSEBIND = 8192,
			PROXY = 16384,
		}
		public enum FUNCFLAGS : int32
		{
			RESTRICTED = 1,
			SOURCE = 2,
			BINDABLE = 4,
			REQUESTEDIT = 8,
			DISPLAYBIND = 16,
			DEFAULTBIND = 32,
			HIDDEN = 64,
			USESGETLASTERROR = 128,
			DEFAULTCOLLELEM = 256,
			UIDEFAULT = 512,
			NONBROWSABLE = 1024,
			REPLACEABLE = 2048,
			IMMEDIATEBIND = 4096,
		}
		public enum VARFLAGS : int32
		{
			READONLY = 1,
			SOURCE = 2,
			BINDABLE = 4,
			REQUESTEDIT = 8,
			DISPLAYBIND = 16,
			DEFAULTBIND = 32,
			HIDDEN = 64,
			RESTRICTED = 128,
			DEFAULTCOLLELEM = 256,
			UIDEFAULT = 512,
			NONBROWSABLE = 1024,
			REPLACEABLE = 2048,
			IMMEDIATEBIND = 4096,
		}
		public enum LIBFLAGS : int32
		{
			RESTRICTED = 1,
			CONTROL = 2,
			HIDDEN = 4,
			HASDISKIMAGE = 8,
		}
		public enum CHANGEKIND : int32
		{
			ADDMEMBER = 0,
			DELETEMEMBER = 1,
			SETNAMES = 2,
			SETDOCUMENTATION = 3,
			GENERAL = 4,
			INVALIDATE = 5,
			CHANGEFAILED = 6,
			MAX = 7,
		}
		public enum DISCARDCACHE : int32
		{
			SAVEIFDIRTY = 0,
			NOSAVE = 1,
		}
		public enum OLEGETMONIKER : int32
		{
			ONLYIFTHERE = 1,
			FORCEASSIGN = 2,
			UNASSIGN = 3,
			TEMPFORUSER = 4,
		}
		public enum OLEWHICHMK : int32
		{
			CONTAINER = 1,
			OBJREL = 2,
			OBJFULL = 3,
		}
		public enum USERCLASSTYPE : int32
		{
			FULL = 1,
			SHORT = 2,
			APPNAME = 3,
		}
		public enum OLEMISC : int32
		{
			RECOMPOSEONRESIZE = 1,
			ONLYICONIC = 2,
			INSERTNOTREPLACE = 4,
			STATIC = 8,
			CANTLINKINSIDE = 16,
			CANLINKBYOLE1 = 32,
			ISLINKOBJECT = 64,
			INSIDEOUT = 128,
			ACTIVATEWHENVISIBLE = 256,
			RENDERINGISDEVICEINDEPENDENT = 512,
			INVISIBLEATRUNTIME = 1024,
			ALWAYSRUN = 2048,
			ACTSLIKEBUTTON = 4096,
			ACTSLIKELABEL = 8192,
			NOUIACTIVATE = 16384,
			ALIGNABLE = 32768,
			SIMPLEFRAME = 65536,
			SETCLIENTSITEFIRST = 131072,
			IMEMODE = 262144,
			IGNOREACTIVATEWHENVISIBLE = 524288,
			WANTSTOMENUMERGE = 1048576,
			SUPPORTSMULTILEVELUNDO = 2097152,
		}
		public enum OLECLOSE : int32
		{
			SAVEIFDIRTY = 0,
			NOSAVE = 1,
			PROMPTSAVE = 2,
		}
		public enum OLERENDER : int32
		{
			NONE = 0,
			DRAW = 1,
			FORMAT = 2,
			ASIS = 3,
		}
		public enum OLEUPDATE : int32
		{
			ALWAYS = 1,
			ONCALL = 3,
		}
		public enum OLELINKBIND : int32
		{
			OLELINKBIND_EVENIFCLASSDIFF = 1,
		}
		public enum BINDSPEED : int32
		{
			INDEFINITE = 1,
			MODERATE = 2,
			IMMEDIATE = 3,
		}
		public enum OLECONTF : int32
		{
			EMBEDDINGS = 1,
			LINKS = 2,
			OTHERS = 4,
			ONLYUSER = 8,
			ONLYIFRUNNING = 16,
		}
		public enum OLEVERBATTRIB : int32
		{
			NEVERDIRTIES = 1,
			ONCONTAINERMENU = 2,
		}
		public enum REGKIND : int32
		{
			DEFAULT = 0,
			REGISTER = 1,
			NONE = 2,
		}
		public enum UASFLAGS : int32
		{
			NORMAL = 0,
			BLOCKED = 1,
			NOPARENTENABLE = 2,
			MASK = 3,
		}
		public enum READYSTATE : int32
		{
			UNINITIALIZED = 0,
			LOADING = 1,
			LOADED = 2,
			INTERACTIVE = 3,
			COMPLETE = 4,
		}
		public enum GUIDKIND : int32
		{
			GUIDKIND_DEFAULT_SOURCE_DISP_IID = 1,
		}
		public enum CTRLINFO : int32
		{
			RETURN = 1,
			ESCAPE = 2,
		}
		public enum XFORMCOORDS : int32
		{
			POSITION = 1,
			SIZE = 2,
			HIMETRICTOCONTAINER = 4,
			CONTAINERTOHIMETRIC = 8,
			EVENTCOMPAT = 16,
		}
		public enum PROPPAGESTATUS : int32
		{
			DIRTY = 1,
			VALIDATE = 2,
			CLEAN = 4,
		}
		public enum PictureAttributes : int32
		{
			SCALABLE = 1,
			TRANSPARENT = 2,
		}
		public enum ACTIVATEFLAGS : int32
		{
			ACTIVATE_WINDOWLESS = 1,
		}
		public enum OLEDCFLAGS : int32
		{
			NODRAW = 1,
			PAINTBKGND = 2,
			OFFSCREEN = 4,
		}
		public enum VIEWSTATUS : int32
		{
			OPAQUE = 1,
			SOLIDBKGND = 2,
			DVASPECTOPAQUE = 4,
			DVASPECTTRANSPARENT = 8,
			SURFACE = 16,
			_3DSURFACE = 32,
		}
		public enum HITRESULT : int32
		{
			OUTSIDE = 0,
			TRANSPARENT = 1,
			CLOSE = 2,
			HIT = 3,
		}
		public enum DVASPECT2 : int32
		{
			OPAQUE = 16,
			TRANSPARENT = 32,
		}
		public enum ExtentMode : int32
		{
			CONTENT = 0,
			INTEGRAL = 1,
		}
		public enum AspectInfoFlag : int32
		{
			DVASPECTINFOFLAG_CANOPTIMIZE = 1,
		}
		public enum POINTERINACTIVE : int32
		{
			ACTIVATEONENTRY = 1,
			DEACTIVATEONLEAVE = 2,
			ACTIVATEONDRAG = 4,
		}
		public enum PROPBAG2_TYPE : int32
		{
			UNDEFINED = 0,
			DATA = 1,
			URL = 2,
			OBJECT = 3,
			STREAM = 4,
			STORAGE = 5,
			MONIKER = 6,
		}
		public enum QACONTAINERFLAGS : int32
		{
			SHOWHATCHING = 1,
			SHOWGRABHANDLES = 2,
			USERMODE = 4,
			DISPLAYASDEFAULT = 8,
			UIDEAD = 16,
			AUTOCLIP = 32,
			MESSAGEREFLECT = 64,
			SUPPORTSMNEMONICS = 128,
		}
		public enum OLE_TRISTATE : int32
		{
			Unchecked = 0,
			Checked = 1,
			Gray = 2,
		}
		public enum DOCMISC : int32
		{
			CANCREATEMULTIPLEVIEWS = 1,
			SUPPORTCOMPLEXRECTANGLES = 2,
			CANTOPENEDIT = 4,
			NOFILESUPPORT = 8,
		}
		public enum PRINTFLAG : uint32
		{
			MAYBOTHERUSER = 1,
			PROMPTUSER = 2,
			USERMAYCHANGEPRINTER = 4,
			RECOMPOSETODEVICE = 8,
			DONTACTUALLYPRINT = 16,
			FORCEPROPERTIES = 32,
			PRINTTOFILE = 64,
		}
		public enum OLECMDF : int32
		{
			SUPPORTED = 1,
			ENABLED = 2,
			LATCHED = 4,
			NINCHED = 8,
			INVISIBLE = 16,
			DEFHIDEONCTXTMENU = 32,
		}
		public enum OLECMDTEXTF : int32
		{
			NONE = 0,
			NAME = 1,
			STATUS = 2,
		}
		public enum OLECMDEXECOPT : int32
		{
			DODEFAULT = 0,
			PROMPTUSER = 1,
			DONTPROMPTUSER = 2,
			SHOWHELP = 3,
		}
		public enum OLECMDID : int32
		{
			OPEN = 1,
			NEW = 2,
			SAVE = 3,
			SAVEAS = 4,
			SAVECOPYAS = 5,
			PRINT = 6,
			PRINTPREVIEW = 7,
			PAGESETUP = 8,
			SPELL = 9,
			PROPERTIES = 10,
			CUT = 11,
			COPY = 12,
			PASTE = 13,
			PASTESPECIAL = 14,
			UNDO = 15,
			REDO = 16,
			SELECTALL = 17,
			CLEARSELECTION = 18,
			ZOOM = 19,
			GETZOOMRANGE = 20,
			UPDATECOMMANDS = 21,
			REFRESH = 22,
			STOP = 23,
			HIDETOOLBARS = 24,
			SETPROGRESSMAX = 25,
			SETPROGRESSPOS = 26,
			SETPROGRESSTEXT = 27,
			SETTITLE = 28,
			SETDOWNLOADSTATE = 29,
			STOPDOWNLOAD = 30,
			ONTOOLBARACTIVATED = 31,
			FIND = 32,
			DELETE = 33,
			HTTPEQUIV = 34,
			HTTPEQUIV_DONE = 35,
			ENABLE_INTERACTION = 36,
			ONUNLOAD = 37,
			PROPERTYBAG2 = 38,
			PREREFRESH = 39,
			SHOWSCRIPTERROR = 40,
			SHOWMESSAGE = 41,
			SHOWFIND = 42,
			SHOWPAGESETUP = 43,
			SHOWPRINT = 44,
			CLOSE = 45,
			ALLOWUILESSSAVEAS = 46,
			DONTDOWNLOADCSS = 47,
			UPDATEPAGESTATUS = 48,
			PRINT2 = 49,
			PRINTPREVIEW2 = 50,
			SETPRINTTEMPLATE = 51,
			GETPRINTTEMPLATE = 52,
			PAGEACTIONBLOCKED = 55,
			PAGEACTIONUIQUERY = 56,
			FOCUSVIEWCONTROLS = 57,
			FOCUSVIEWCONTROLSQUERY = 58,
			SHOWPAGEACTIONMENU = 59,
			ADDTRAVELENTRY = 60,
			UPDATETRAVELENTRY = 61,
			UPDATEBACKFORWARDSTATE = 62,
			OPTICAL_ZOOM = 63,
			OPTICAL_GETZOOMRANGE = 64,
			WINDOWSTATECHANGED = 65,
			ACTIVEXINSTALLSCOPE = 66,
			UPDATETRAVELENTRY_DATARECOVERY = 67,
			SHOWTASKDLG = 68,
			POPSTATEEVENT = 69,
			VIEWPORT_MODE = 70,
			LAYOUT_VIEWPORT_WIDTH = 71,
			VISUAL_VIEWPORT_EXCLUDE_BOTTOM = 72,
			USER_OPTICAL_ZOOM = 73,
			PAGEAVAILABLE = 74,
			GETUSERSCALABLE = 75,
			UPDATE_CARET = 76,
			ENABLE_VISIBILITY = 77,
			MEDIA_PLAYBACK = 78,
			SETFAVICON = 79,
			SET_HOST_FULLSCREENMODE = 80,
			EXITFULLSCREEN = 81,
			SCROLLCOMPLETE = 82,
			ONBEFOREUNLOAD = 83,
			SHOWMESSAGE_BLOCKABLE = 84,
			SHOWTASKDLG_BLOCKABLE = 85,
		}
		public enum MEDIAPLAYBACK_STATE : int32
		{
			RESUME = 0,
			PAUSE = 1,
			PAUSE_AND_SUSPEND = 2,
			RESUME_FROM_SUSPEND = 3,
		}
		public enum IGNOREMIME : int32
		{
			PROMPT = 1,
			TEXT = 2,
		}
		public enum WPCSETTING : int32
		{
			LOGGING_ENABLED = 1,
			FILEDOWNLOAD_BLOCKED = 2,
		}
		public enum OLECMDID_REFRESHFLAG : int32
		{
			NORMAL = 0,
			IFEXPIRED = 1,
			CONTINUE = 2,
			COMPLETELY = 3,
			NO_CACHE = 4,
			RELOAD = 5,
			LEVELMASK = 255,
			CLEARUSERINPUT = 4096,
			PROMPTIFOFFLINE = 8192,
			THROUGHSCRIPT = 16384,
			SKIPBEFOREUNLOADEVENT = 32768,
			PAGEACTION_ACTIVEXINSTALL = 65536,
			PAGEACTION_FILEDOWNLOAD = 131072,
			PAGEACTION_LOCALMACHINE = 262144,
			PAGEACTION_POPUPWINDOW = 524288,
			PAGEACTION_PROTLOCKDOWNLOCALMACHINE = 1048576,
			PAGEACTION_PROTLOCKDOWNTRUSTED = 2097152,
			PAGEACTION_PROTLOCKDOWNINTRANET = 4194304,
			PAGEACTION_PROTLOCKDOWNINTERNET = 8388608,
			PAGEACTION_PROTLOCKDOWNRESTRICTED = 16777216,
			PAGEACTION_MIXEDCONTENT = 33554432,
			PAGEACTION_INVALID_CERT = 67108864,
			PAGEACTION_ALLOW_VERSION = 134217728,
		}
		[AllowDuplicates]
		public enum OLECMDID_PAGEACTIONFLAG : int32
		{
			FILEDOWNLOAD = 1,
			ACTIVEXINSTALL = 2,
			ACTIVEXTRUSTFAIL = 4,
			ACTIVEXUSERDISABLE = 8,
			ACTIVEXDISALLOW = 16,
			ACTIVEXUNSAFE = 32,
			POPUPWINDOW = 64,
			LOCALMACHINE = 128,
			MIMETEXTPLAIN = 256,
			SCRIPTNAVIGATE = 512,
			SCRIPTNAVIGATE_ACTIVEXINSTALL = 512,
			PROTLOCKDOWNLOCALMACHINE = 1024,
			PROTLOCKDOWNTRUSTED = 2048,
			PROTLOCKDOWNINTRANET = 4096,
			PROTLOCKDOWNINTERNET = 8192,
			PROTLOCKDOWNRESTRICTED = 16384,
			PROTLOCKDOWNDENY = 32768,
			POPUPALLOWED = 65536,
			SCRIPTPROMPT = 131072,
			ACTIVEXUSERAPPROVAL = 262144,
			MIXEDCONTENT = 524288,
			INVALID_CERT = 1048576,
			INTRANETZONEREQUEST = 2097152,
			XSSFILTERED = 4194304,
			SPOOFABLEIDNHOST = 8388608,
			ACTIVEX_EPM_INCOMPATIBLE = 16777216,
			SCRIPTNAVIGATE_ACTIVEXUSERAPPROVAL = 33554432,
			WPCBLOCKED = 67108864,
			WPCBLOCKED_ACTIVEX = 134217728,
			EXTENSION_COMPAT_BLOCKED = 268435456,
			NORESETACTIVEX = 536870912,
			GENERIC_STATE = 1073741824,
			RESET = -2147483648,
		}
		public enum OLECMDID_BROWSERSTATEFLAG : int32
		{
			EXTENSIONSOFF = 1,
			IESECURITY = 2,
			PROTECTEDMODE_OFF = 4,
			RESET = 8,
			REQUIRESACTIVEX = 16,
			DESKTOPHTMLDIALOG = 32,
			BLOCKEDVERSION = 64,
		}
		public enum OLECMDID_OPTICAL_ZOOMFLAG : int32
		{
			NOPERSIST = 1,
			NOLAYOUT = 16,
			NOTRANSIENT = 32,
			RELOADFORNEWTAB = 64,
		}
		public enum PAGEACTION_UI : int32
		{
			DEFAULT = 0,
			MODAL = 1,
			MODELESS = 2,
			SILENT = 3,
		}
		public enum OLECMDID_WINDOWSTATE_FLAG : int32
		{
			USERVISIBLE = 1,
			ENABLED = 2,
			USERVISIBLE_VALID = 65536,
			ENABLED_VALID = 131072,
		}
		public enum OLECMDID_VIEWPORT_MODE_FLAG : int32
		{
			FIXED_LAYOUT_WIDTH = 1,
			EXCLUDE_VISUAL_BOTTOM = 2,
			FIXED_LAYOUT_WIDTH_VALID = 65536,
			EXCLUDE_VISUAL_BOTTOM_VALID = 131072,
		}
		public enum OLEUIPASTEFLAG : int32
		{
			ENABLEICON = 2048,
			PASTEONLY = 0,
			PASTE = 512,
			LINKANYTYPE = 1024,
			LINKTYPE1 = 1,
			LINKTYPE2 = 2,
			LINKTYPE3 = 4,
			LINKTYPE4 = 8,
			LINKTYPE5 = 16,
			LINKTYPE6 = 32,
			LINKTYPE7 = 64,
			LINKTYPE8 = 128,
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
			public IUnknown** apUnknown;
		}
		[CRepr]
		public struct _wireSAFEARR_DISPATCH
		{
			public uint32 Size;
			public IDispatch** apDispatch;
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
			public IUnknown** apUnknown;
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
			public IRecordInfo* pRecInfo;
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
				public IUnknown* punkVal;
				public IDispatch* pdispVal;
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
				public IUnknown** ppunkVal;
				public IDispatch** ppdispVal;
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
			public IUnknown* pInterface;
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
			public IOleClientSite* pClientSite;
			public IAdviseSinkEx* pAdviseSink;
			public IPropertyNotifySink* pPropertyNotifySink;
			public IUnknown* pUnkEventSink;
			public uint32 dwAmbientFlags;
			public uint32 colorFore;
			public uint32 colorBack;
			public IFont* pFont;
			public IOleUndoManager* pUndoMgr;
			public uint32 dwAppearance;
			public int32 lcid;
			public HPALETTE hpal;
			public IBindHost* pBindHost;
			public IOleControlSite* pOleControlSite;
			public IServiceProvider* pServiceProvider;
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
			public IUnknown** lplpUnk;
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
			public IOleClientSite* lpIOleClientSite;
			public IStorage* lpIStorage;
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
			public IOleClientSite* lpIOleClientSite;
			public IStorage* lpIStorage;
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
			public IDataObject* lpSrcDataObj;
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
			public IDataObject* lpSrcDataObj;
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
			public IOleUILinkContainerW* lpOleUILinkContainer;
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
			public IOleUILinkContainerA* lpOleUILinkContainer;
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
			public IOleUILinkContainerW* lpOleUILinkContainer;
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
			public IOleUILinkContainerA* lpOleUILinkContainer;
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
			public IOleUIObjInfoW* lpObjInfo;
			public uint32 dwLink;
			public IOleUILinkInfoW* lpLinkInfo;
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
			public IOleUIObjInfoA* lpObjInfo;
			public uint32 dwLink;
			public IOleUILinkInfoA* lpLinkInfo;
			public OLEUIGNRLPROPSA* lpGP;
			public OLEUIVIEWPROPSA* lpVP;
			public OLEUILINKPROPSA* lpLP;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICreateTypeInfo : IUnknown
		{
			public const new Guid IID = .(0x00020405, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGuid(Guid* guid) mut
			{
				return VT.SetGuid(&this, guid);
			}
			public HRESULT SetTypeFlags(uint32 uTypeFlags) mut
			{
				return VT.SetTypeFlags(&this, uTypeFlags);
			}
			public HRESULT SetDocString(PWSTR pStrDoc) mut
			{
				return VT.SetDocString(&this, pStrDoc);
			}
			public HRESULT SetHelpContext(uint32 dwHelpContext) mut
			{
				return VT.SetHelpContext(&this, dwHelpContext);
			}
			public HRESULT SetVersion(uint16 wMajorVerNum, uint16 wMinorVerNum) mut
			{
				return VT.SetVersion(&this, wMajorVerNum, wMinorVerNum);
			}
			public HRESULT AddRefTypeInfo(ITypeInfo* pTInfo, uint32* phRefType) mut
			{
				return VT.AddRefTypeInfo(&this, pTInfo, phRefType);
			}
			public HRESULT AddFuncDesc(uint32 index, FUNCDESC* pFuncDesc) mut
			{
				return VT.AddFuncDesc(&this, index, pFuncDesc);
			}
			public HRESULT AddImplType(uint32 index, uint32 hRefType) mut
			{
				return VT.AddImplType(&this, index, hRefType);
			}
			public HRESULT SetImplTypeFlags(uint32 index, int32 implTypeFlags) mut
			{
				return VT.SetImplTypeFlags(&this, index, implTypeFlags);
			}
			public HRESULT SetAlignment(uint16 cbAlignment) mut
			{
				return VT.SetAlignment(&this, cbAlignment);
			}
			public HRESULT SetSchema(PWSTR pStrSchema) mut
			{
				return VT.SetSchema(&this, pStrSchema);
			}
			public HRESULT AddVarDesc(uint32 index, VARDESC* pVarDesc) mut
			{
				return VT.AddVarDesc(&this, index, pVarDesc);
			}
			public HRESULT SetFuncAndParamNames(uint32 index, PWSTR* rgszNames, uint32 cNames) mut
			{
				return VT.SetFuncAndParamNames(&this, index, rgszNames, cNames);
			}
			public HRESULT SetVarName(uint32 index, PWSTR szName) mut
			{
				return VT.SetVarName(&this, index, szName);
			}
			public HRESULT SetTypeDescAlias(TYPEDESC* pTDescAlias) mut
			{
				return VT.SetTypeDescAlias(&this, pTDescAlias);
			}
			public HRESULT DefineFuncAsDllEntry(uint32 index, PWSTR szDllName, PWSTR szProcName) mut
			{
				return VT.DefineFuncAsDllEntry(&this, index, szDllName, szProcName);
			}
			public HRESULT SetFuncDocString(uint32 index, PWSTR szDocString) mut
			{
				return VT.SetFuncDocString(&this, index, szDocString);
			}
			public HRESULT SetVarDocString(uint32 index, PWSTR szDocString) mut
			{
				return VT.SetVarDocString(&this, index, szDocString);
			}
			public HRESULT SetFuncHelpContext(uint32 index, uint32 dwHelpContext) mut
			{
				return VT.SetFuncHelpContext(&this, index, dwHelpContext);
			}
			public HRESULT SetVarHelpContext(uint32 index, uint32 dwHelpContext) mut
			{
				return VT.SetVarHelpContext(&this, index, dwHelpContext);
			}
			public HRESULT SetMops(uint32 index, BSTR bstrMops) mut
			{
				return VT.SetMops(&this, index, bstrMops);
			}
			public HRESULT SetTypeIdldesc(IDLDESC* pIdlDesc) mut
			{
				return VT.SetTypeIdldesc(&this, pIdlDesc);
			}
			public HRESULT LayOut() mut
			{
				return VT.LayOut(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreateTypeInfo *self, Guid* guid) SetGuid;
				public new function HRESULT(ICreateTypeInfo *self, uint32 uTypeFlags) SetTypeFlags;
				public new function HRESULT(ICreateTypeInfo *self, PWSTR pStrDoc) SetDocString;
				public new function HRESULT(ICreateTypeInfo *self, uint32 dwHelpContext) SetHelpContext;
				public new function HRESULT(ICreateTypeInfo *self, uint16 wMajorVerNum, uint16 wMinorVerNum) SetVersion;
				public new function HRESULT(ICreateTypeInfo *self, ITypeInfo* pTInfo, uint32* phRefType) AddRefTypeInfo;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, FUNCDESC* pFuncDesc) AddFuncDesc;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, uint32 hRefType) AddImplType;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, int32 implTypeFlags) SetImplTypeFlags;
				public new function HRESULT(ICreateTypeInfo *self, uint16 cbAlignment) SetAlignment;
				public new function HRESULT(ICreateTypeInfo *self, PWSTR pStrSchema) SetSchema;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, VARDESC* pVarDesc) AddVarDesc;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, PWSTR* rgszNames, uint32 cNames) SetFuncAndParamNames;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, PWSTR szName) SetVarName;
				public new function HRESULT(ICreateTypeInfo *self, TYPEDESC* pTDescAlias) SetTypeDescAlias;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, PWSTR szDllName, PWSTR szProcName) DefineFuncAsDllEntry;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, PWSTR szDocString) SetFuncDocString;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, PWSTR szDocString) SetVarDocString;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, uint32 dwHelpContext) SetFuncHelpContext;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, uint32 dwHelpContext) SetVarHelpContext;
				public new function HRESULT(ICreateTypeInfo *self, uint32 index, BSTR bstrMops) SetMops;
				public new function HRESULT(ICreateTypeInfo *self, IDLDESC* pIdlDesc) SetTypeIdldesc;
				public new function HRESULT(ICreateTypeInfo *self) LayOut;
			}
		}
		[CRepr]
		public struct ICreateTypeInfo2 : ICreateTypeInfo
		{
			public const new Guid IID = .(0x0002040e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeleteFuncDesc(uint32 index) mut
			{
				return VT.DeleteFuncDesc(&this, index);
			}
			public HRESULT DeleteFuncDescByMemId(int32 memid, INVOKEKIND invKind) mut
			{
				return VT.DeleteFuncDescByMemId(&this, memid, invKind);
			}
			public HRESULT DeleteVarDesc(uint32 index) mut
			{
				return VT.DeleteVarDesc(&this, index);
			}
			public HRESULT DeleteVarDescByMemId(int32 memid) mut
			{
				return VT.DeleteVarDescByMemId(&this, memid);
			}
			public HRESULT DeleteImplType(uint32 index) mut
			{
				return VT.DeleteImplType(&this, index);
			}
			public HRESULT SetCustData(Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetCustData(&this, guid, pVarVal);
			}
			public HRESULT SetFuncCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetFuncCustData(&this, index, guid, pVarVal);
			}
			public HRESULT SetParamCustData(uint32 indexFunc, uint32 indexParam, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetParamCustData(&this, indexFunc, indexParam, guid, pVarVal);
			}
			public HRESULT SetVarCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetVarCustData(&this, index, guid, pVarVal);
			}
			public HRESULT SetImplTypeCustData(uint32 index, Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetImplTypeCustData(&this, index, guid, pVarVal);
			}
			public HRESULT SetHelpStringContext(uint32 dwHelpStringContext) mut
			{
				return VT.SetHelpStringContext(&this, dwHelpStringContext);
			}
			public HRESULT SetFuncHelpStringContext(uint32 index, uint32 dwHelpStringContext) mut
			{
				return VT.SetFuncHelpStringContext(&this, index, dwHelpStringContext);
			}
			public HRESULT SetVarHelpStringContext(uint32 index, uint32 dwHelpStringContext) mut
			{
				return VT.SetVarHelpStringContext(&this, index, dwHelpStringContext);
			}
			public HRESULT Invalidate() mut
			{
				return VT.Invalidate(&this);
			}
			public HRESULT SetName(PWSTR szName) mut
			{
				return VT.SetName(&this, szName);
			}
			[CRepr]
			public struct VTable : ICreateTypeInfo.VTable
			{
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index) DeleteFuncDesc;
				public new function HRESULT(ICreateTypeInfo2 *self, int32 memid, INVOKEKIND invKind) DeleteFuncDescByMemId;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index) DeleteVarDesc;
				public new function HRESULT(ICreateTypeInfo2 *self, int32 memid) DeleteVarDescByMemId;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index) DeleteImplType;
				public new function HRESULT(ICreateTypeInfo2 *self, Guid* guid, VARIANT* pVarVal) SetCustData;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) SetFuncCustData;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 indexFunc, uint32 indexParam, Guid* guid, VARIANT* pVarVal) SetParamCustData;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) SetVarCustData;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index, Guid* guid, VARIANT* pVarVal) SetImplTypeCustData;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 dwHelpStringContext) SetHelpStringContext;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index, uint32 dwHelpStringContext) SetFuncHelpStringContext;
				public new function HRESULT(ICreateTypeInfo2 *self, uint32 index, uint32 dwHelpStringContext) SetVarHelpStringContext;
				public new function HRESULT(ICreateTypeInfo2 *self) Invalidate;
				public new function HRESULT(ICreateTypeInfo2 *self, PWSTR szName) SetName;
			}
		}
		[CRepr]
		public struct ICreateTypeLib : IUnknown
		{
			public const new Guid IID = .(0x00020406, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTypeInfo(PWSTR szName, TYPEKIND tkind, ICreateTypeInfo** ppCTInfo) mut
			{
				return VT.CreateTypeInfo(&this, szName, tkind, ppCTInfo);
			}
			public HRESULT SetName(PWSTR szName) mut
			{
				return VT.SetName(&this, szName);
			}
			public HRESULT SetVersion(uint16 wMajorVerNum, uint16 wMinorVerNum) mut
			{
				return VT.SetVersion(&this, wMajorVerNum, wMinorVerNum);
			}
			public HRESULT SetGuid(Guid* guid) mut
			{
				return VT.SetGuid(&this, guid);
			}
			public HRESULT SetDocString(PWSTR szDoc) mut
			{
				return VT.SetDocString(&this, szDoc);
			}
			public HRESULT SetHelpFileName(PWSTR szHelpFileName) mut
			{
				return VT.SetHelpFileName(&this, szHelpFileName);
			}
			public HRESULT SetHelpContext(uint32 dwHelpContext) mut
			{
				return VT.SetHelpContext(&this, dwHelpContext);
			}
			public HRESULT SetLcid(uint32 lcid) mut
			{
				return VT.SetLcid(&this, lcid);
			}
			public HRESULT SetLibFlags(uint32 uLibFlags) mut
			{
				return VT.SetLibFlags(&this, uLibFlags);
			}
			public HRESULT SaveAllChanges() mut
			{
				return VT.SaveAllChanges(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreateTypeLib *self, PWSTR szName, TYPEKIND tkind, ICreateTypeInfo** ppCTInfo) CreateTypeInfo;
				public new function HRESULT(ICreateTypeLib *self, PWSTR szName) SetName;
				public new function HRESULT(ICreateTypeLib *self, uint16 wMajorVerNum, uint16 wMinorVerNum) SetVersion;
				public new function HRESULT(ICreateTypeLib *self, Guid* guid) SetGuid;
				public new function HRESULT(ICreateTypeLib *self, PWSTR szDoc) SetDocString;
				public new function HRESULT(ICreateTypeLib *self, PWSTR szHelpFileName) SetHelpFileName;
				public new function HRESULT(ICreateTypeLib *self, uint32 dwHelpContext) SetHelpContext;
				public new function HRESULT(ICreateTypeLib *self, uint32 lcid) SetLcid;
				public new function HRESULT(ICreateTypeLib *self, uint32 uLibFlags) SetLibFlags;
				public new function HRESULT(ICreateTypeLib *self) SaveAllChanges;
			}
		}
		[CRepr]
		public struct ICreateTypeLib2 : ICreateTypeLib
		{
			public const new Guid IID = .(0x0002040f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DeleteTypeInfo(PWSTR szName) mut
			{
				return VT.DeleteTypeInfo(&this, szName);
			}
			public HRESULT SetCustData(Guid* guid, VARIANT* pVarVal) mut
			{
				return VT.SetCustData(&this, guid, pVarVal);
			}
			public HRESULT SetHelpStringContext(uint32 dwHelpStringContext) mut
			{
				return VT.SetHelpStringContext(&this, dwHelpStringContext);
			}
			public HRESULT SetHelpStringDll(PWSTR szFileName) mut
			{
				return VT.SetHelpStringDll(&this, szFileName);
			}
			[CRepr]
			public struct VTable : ICreateTypeLib.VTable
			{
				public new function HRESULT(ICreateTypeLib2 *self, PWSTR szName) DeleteTypeInfo;
				public new function HRESULT(ICreateTypeLib2 *self, Guid* guid, VARIANT* pVarVal) SetCustData;
				public new function HRESULT(ICreateTypeLib2 *self, uint32 dwHelpStringContext) SetHelpStringContext;
				public new function HRESULT(ICreateTypeLib2 *self, PWSTR szFileName) SetHelpStringDll;
			}
		}
		[CRepr]
		public struct IEnumVARIANT : IUnknown
		{
			public const new Guid IID = .(0x00020404, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, VARIANT* rgVar, uint32* pCeltFetched) mut
			{
				return VT.Next(&this, celt, rgVar, pCeltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumVARIANT** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumVARIANT *self, uint32 celt, VARIANT* rgVar, uint32* pCeltFetched) Next;
				public new function HRESULT(IEnumVARIANT *self, uint32 celt) Skip;
				public new function HRESULT(IEnumVARIANT *self) Reset;
				public new function HRESULT(IEnumVARIANT *self, IEnumVARIANT** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ITypeChangeEvents : IUnknown
		{
			public const new Guid IID = .(0x00020410, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestTypeChange(CHANGEKIND changeKind, ITypeInfo* pTInfoBefore, PWSTR pStrName, int32* pfCancel) mut
			{
				return VT.RequestTypeChange(&this, changeKind, pTInfoBefore, pStrName, pfCancel);
			}
			public HRESULT AfterTypeChange(CHANGEKIND changeKind, ITypeInfo* pTInfoAfter, PWSTR pStrName) mut
			{
				return VT.AfterTypeChange(&this, changeKind, pTInfoAfter, pStrName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeChangeEvents *self, CHANGEKIND changeKind, ITypeInfo* pTInfoBefore, PWSTR pStrName, int32* pfCancel) RequestTypeChange;
				public new function HRESULT(ITypeChangeEvents *self, CHANGEKIND changeKind, ITypeInfo* pTInfoAfter, PWSTR pStrName) AfterTypeChange;
			}
		}
		[CRepr]
		public struct ICreateErrorInfo : IUnknown
		{
			public const new Guid IID = .(0x22f03340, 0x547d, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGUID(Guid* rguid) mut
			{
				return VT.SetGUID(&this, rguid);
			}
			public HRESULT SetSource(PWSTR szSource) mut
			{
				return VT.SetSource(&this, szSource);
			}
			public HRESULT SetDescription(PWSTR szDescription) mut
			{
				return VT.SetDescription(&this, szDescription);
			}
			public HRESULT SetHelpFile(PWSTR szHelpFile) mut
			{
				return VT.SetHelpFile(&this, szHelpFile);
			}
			public HRESULT SetHelpContext(uint32 dwHelpContext) mut
			{
				return VT.SetHelpContext(&this, dwHelpContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreateErrorInfo *self, Guid* rguid) SetGUID;
				public new function HRESULT(ICreateErrorInfo *self, PWSTR szSource) SetSource;
				public new function HRESULT(ICreateErrorInfo *self, PWSTR szDescription) SetDescription;
				public new function HRESULT(ICreateErrorInfo *self, PWSTR szHelpFile) SetHelpFile;
				public new function HRESULT(ICreateErrorInfo *self, uint32 dwHelpContext) SetHelpContext;
			}
		}
		[CRepr]
		public struct ITypeFactory : IUnknown
		{
			public const new Guid IID = .(0x0000002e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateFromTypeInfo(ITypeInfo* pTypeInfo, Guid* riid, IUnknown** ppv) mut
			{
				return VT.CreateFromTypeInfo(&this, pTypeInfo, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeFactory *self, ITypeInfo* pTypeInfo, Guid* riid, IUnknown** ppv) CreateFromTypeInfo;
			}
		}
		[CRepr]
		public struct ITypeMarshal : IUnknown
		{
			public const new Guid IID = .(0x0000002d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Size(void* pvType, uint32 dwDestContext, void* pvDestContext, uint32* pSize) mut
			{
				return VT.Size(&this, pvType, dwDestContext, pvDestContext, pSize);
			}
			public HRESULT Marshal(void* pvType, uint32 dwDestContext, void* pvDestContext, uint32 cbBufferLength, uint8* pBuffer, uint32* pcbWritten) mut
			{
				return VT.Marshal(&this, pvType, dwDestContext, pvDestContext, cbBufferLength, pBuffer, pcbWritten);
			}
			public HRESULT Unmarshal(void* pvType, uint32 dwFlags, uint32 cbBufferLength, uint8* pBuffer, uint32* pcbRead) mut
			{
				return VT.Unmarshal(&this, pvType, dwFlags, cbBufferLength, pBuffer, pcbRead);
			}
			public HRESULT Free(void* pvType) mut
			{
				return VT.Free(&this, pvType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITypeMarshal *self, void* pvType, uint32 dwDestContext, void* pvDestContext, uint32* pSize) Size;
				public new function HRESULT(ITypeMarshal *self, void* pvType, uint32 dwDestContext, void* pvDestContext, uint32 cbBufferLength, uint8* pBuffer, uint32* pcbWritten) Marshal;
				public new function HRESULT(ITypeMarshal *self, void* pvType, uint32 dwFlags, uint32 cbBufferLength, uint8* pBuffer, uint32* pcbRead) Unmarshal;
				public new function HRESULT(ITypeMarshal *self, void* pvType) Free;
			}
		}
		[CRepr]
		public struct IRecordInfo : IUnknown
		{
			public const new Guid IID = .(0x0000002f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RecordInit(void* pvNew) mut
			{
				return VT.RecordInit(&this, pvNew);
			}
			public HRESULT RecordClear(void* pvExisting) mut
			{
				return VT.RecordClear(&this, pvExisting);
			}
			public HRESULT RecordCopy(void* pvExisting, void* pvNew) mut
			{
				return VT.RecordCopy(&this, pvExisting, pvNew);
			}
			public HRESULT GetGuid(Guid* pguid) mut
			{
				return VT.GetGuid(&this, pguid);
			}
			public HRESULT GetName(BSTR* pbstrName) mut
			{
				return VT.GetName(&this, pbstrName);
			}
			public HRESULT GetSize(uint32* pcbSize) mut
			{
				return VT.GetSize(&this, pcbSize);
			}
			public HRESULT GetTypeInfo(ITypeInfo** ppTypeInfo) mut
			{
				return VT.GetTypeInfo(&this, ppTypeInfo);
			}
			public HRESULT GetField(void* pvData, PWSTR szFieldName, VARIANT* pvarField) mut
			{
				return VT.GetField(&this, pvData, szFieldName, pvarField);
			}
			public HRESULT GetFieldNoCopy(void* pvData, PWSTR szFieldName, VARIANT* pvarField, void** ppvDataCArray) mut
			{
				return VT.GetFieldNoCopy(&this, pvData, szFieldName, pvarField, ppvDataCArray);
			}
			public HRESULT PutField(uint32 wFlags, void* pvData, PWSTR szFieldName, VARIANT* pvarField) mut
			{
				return VT.PutField(&this, wFlags, pvData, szFieldName, pvarField);
			}
			public HRESULT PutFieldNoCopy(uint32 wFlags, void* pvData, PWSTR szFieldName, VARIANT* pvarField) mut
			{
				return VT.PutFieldNoCopy(&this, wFlags, pvData, szFieldName, pvarField);
			}
			public HRESULT GetFieldNames(uint32* pcNames, BSTR* rgBstrNames) mut
			{
				return VT.GetFieldNames(&this, pcNames, rgBstrNames);
			}
			public BOOL IsMatchingType(IRecordInfo* pRecordInfo) mut
			{
				return VT.IsMatchingType(&this, pRecordInfo);
			}
			public void* RecordCreate() mut
			{
				return VT.RecordCreate(&this);
			}
			public HRESULT RecordCreateCopy(void* pvSource, void** ppvDest) mut
			{
				return VT.RecordCreateCopy(&this, pvSource, ppvDest);
			}
			public HRESULT RecordDestroy(void* pvRecord) mut
			{
				return VT.RecordDestroy(&this, pvRecord);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRecordInfo *self, void* pvNew) RecordInit;
				public new function HRESULT(IRecordInfo *self, void* pvExisting) RecordClear;
				public new function HRESULT(IRecordInfo *self, void* pvExisting, void* pvNew) RecordCopy;
				public new function HRESULT(IRecordInfo *self, Guid* pguid) GetGuid;
				public new function HRESULT(IRecordInfo *self, BSTR* pbstrName) GetName;
				public new function HRESULT(IRecordInfo *self, uint32* pcbSize) GetSize;
				public new function HRESULT(IRecordInfo *self, ITypeInfo** ppTypeInfo) GetTypeInfo;
				public new function HRESULT(IRecordInfo *self, void* pvData, PWSTR szFieldName, VARIANT* pvarField) GetField;
				public new function HRESULT(IRecordInfo *self, void* pvData, PWSTR szFieldName, VARIANT* pvarField, void** ppvDataCArray) GetFieldNoCopy;
				public new function HRESULT(IRecordInfo *self, uint32 wFlags, void* pvData, PWSTR szFieldName, VARIANT* pvarField) PutField;
				public new function HRESULT(IRecordInfo *self, uint32 wFlags, void* pvData, PWSTR szFieldName, VARIANT* pvarField) PutFieldNoCopy;
				public new function HRESULT(IRecordInfo *self, uint32* pcNames, BSTR* rgBstrNames) GetFieldNames;
				public new function BOOL(IRecordInfo *self, IRecordInfo* pRecordInfo) IsMatchingType;
				public new function void*(IRecordInfo *self) RecordCreate;
				public new function HRESULT(IRecordInfo *self, void* pvSource, void** ppvDest) RecordCreateCopy;
				public new function HRESULT(IRecordInfo *self, void* pvRecord) RecordDestroy;
			}
		}
		[CRepr]
		public struct IOleAdviseHolder : IUnknown
		{
			public const new Guid IID = .(0x00000111, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IAdviseSink* pAdvise, uint32* pdwConnection) mut
			{
				return VT.Advise(&this, pAdvise, pdwConnection);
			}
			public HRESULT Unadvise(uint32 dwConnection) mut
			{
				return VT.Unadvise(&this, dwConnection);
			}
			public HRESULT EnumAdvise(IEnumSTATDATA** ppenumAdvise) mut
			{
				return VT.EnumAdvise(&this, ppenumAdvise);
			}
			public HRESULT SendOnRename(IMoniker* pmk) mut
			{
				return VT.SendOnRename(&this, pmk);
			}
			public HRESULT SendOnSave() mut
			{
				return VT.SendOnSave(&this);
			}
			public HRESULT SendOnClose() mut
			{
				return VT.SendOnClose(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleAdviseHolder *self, IAdviseSink* pAdvise, uint32* pdwConnection) Advise;
				public new function HRESULT(IOleAdviseHolder *self, uint32 dwConnection) Unadvise;
				public new function HRESULT(IOleAdviseHolder *self, IEnumSTATDATA** ppenumAdvise) EnumAdvise;
				public new function HRESULT(IOleAdviseHolder *self, IMoniker* pmk) SendOnRename;
				public new function HRESULT(IOleAdviseHolder *self) SendOnSave;
				public new function HRESULT(IOleAdviseHolder *self) SendOnClose;
			}
		}
		[CRepr]
		public struct IOleCache : IUnknown
		{
			public const new Guid IID = .(0x0000011e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cache(FORMATETC* pformatetc, uint32 advf, uint32* pdwConnection) mut
			{
				return VT.Cache(&this, pformatetc, advf, pdwConnection);
			}
			public HRESULT Uncache(uint32 dwConnection) mut
			{
				return VT.Uncache(&this, dwConnection);
			}
			public HRESULT EnumCache(IEnumSTATDATA** ppenumSTATDATA) mut
			{
				return VT.EnumCache(&this, ppenumSTATDATA);
			}
			public HRESULT InitCache(IDataObject* pDataObject) mut
			{
				return VT.InitCache(&this, pDataObject);
			}
			public HRESULT SetData(FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease) mut
			{
				return VT.SetData(&this, pformatetc, pmedium, fRelease);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleCache *self, FORMATETC* pformatetc, uint32 advf, uint32* pdwConnection) Cache;
				public new function HRESULT(IOleCache *self, uint32 dwConnection) Uncache;
				public new function HRESULT(IOleCache *self, IEnumSTATDATA** ppenumSTATDATA) EnumCache;
				public new function HRESULT(IOleCache *self, IDataObject* pDataObject) InitCache;
				public new function HRESULT(IOleCache *self, FORMATETC* pformatetc, STGMEDIUM* pmedium, BOOL fRelease) SetData;
			}
		}
		[CRepr]
		public struct IOleCache2 : IOleCache
		{
			public const new Guid IID = .(0x00000128, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateCache(IDataObject* pDataObject, UPDFCACHE_FLAGS grfUpdf, void* pReserved) mut
			{
				return VT.UpdateCache(&this, pDataObject, grfUpdf, pReserved);
			}
			public HRESULT DiscardCache(uint32 dwDiscardOptions) mut
			{
				return VT.DiscardCache(&this, dwDiscardOptions);
			}
			[CRepr]
			public struct VTable : IOleCache.VTable
			{
				public new function HRESULT(IOleCache2 *self, IDataObject* pDataObject, UPDFCACHE_FLAGS grfUpdf, void* pReserved) UpdateCache;
				public new function HRESULT(IOleCache2 *self, uint32 dwDiscardOptions) DiscardCache;
			}
		}
		[CRepr]
		public struct IOleCacheControl : IUnknown
		{
			public const new Guid IID = .(0x00000129, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnRun(IDataObject* pDataObject) mut
			{
				return VT.OnRun(&this, pDataObject);
			}
			public HRESULT OnStop() mut
			{
				return VT.OnStop(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleCacheControl *self, IDataObject* pDataObject) OnRun;
				public new function HRESULT(IOleCacheControl *self) OnStop;
			}
		}
		[CRepr]
		public struct IParseDisplayName : IUnknown
		{
			public const new Guid IID = .(0x0000011a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParseDisplayName(IBindCtx* pbc, PWSTR pszDisplayName, uint32* pchEaten, IMoniker** ppmkOut) mut
			{
				return VT.ParseDisplayName(&this, pbc, pszDisplayName, pchEaten, ppmkOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IParseDisplayName *self, IBindCtx* pbc, PWSTR pszDisplayName, uint32* pchEaten, IMoniker** ppmkOut) ParseDisplayName;
			}
		}
		[CRepr]
		public struct IOleContainer : IParseDisplayName
		{
			public const new Guid IID = .(0x0000011b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumObjects(uint32 grfFlags, IEnumUnknown** ppenum) mut
			{
				return VT.EnumObjects(&this, grfFlags, ppenum);
			}
			public HRESULT LockContainer(BOOL fLock) mut
			{
				return VT.LockContainer(&this, fLock);
			}
			[CRepr]
			public struct VTable : IParseDisplayName.VTable
			{
				public new function HRESULT(IOleContainer *self, uint32 grfFlags, IEnumUnknown** ppenum) EnumObjects;
				public new function HRESULT(IOleContainer *self, BOOL fLock) LockContainer;
			}
		}
		[CRepr]
		public struct IOleClientSite : IUnknown
		{
			public const new Guid IID = .(0x00000118, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SaveObject() mut
			{
				return VT.SaveObject(&this);
			}
			public HRESULT GetMoniker(uint32 dwAssign, uint32 dwWhichMoniker, IMoniker** ppmk) mut
			{
				return VT.GetMoniker(&this, dwAssign, dwWhichMoniker, ppmk);
			}
			public HRESULT GetContainer(IOleContainer** ppContainer) mut
			{
				return VT.GetContainer(&this, ppContainer);
			}
			public HRESULT ShowObject() mut
			{
				return VT.ShowObject(&this);
			}
			public HRESULT OnShowWindow(BOOL fShow) mut
			{
				return VT.OnShowWindow(&this, fShow);
			}
			public HRESULT RequestNewObjectLayout() mut
			{
				return VT.RequestNewObjectLayout(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleClientSite *self) SaveObject;
				public new function HRESULT(IOleClientSite *self, uint32 dwAssign, uint32 dwWhichMoniker, IMoniker** ppmk) GetMoniker;
				public new function HRESULT(IOleClientSite *self, IOleContainer** ppContainer) GetContainer;
				public new function HRESULT(IOleClientSite *self) ShowObject;
				public new function HRESULT(IOleClientSite *self, BOOL fShow) OnShowWindow;
				public new function HRESULT(IOleClientSite *self) RequestNewObjectLayout;
			}
		}
		[CRepr]
		public struct IOleObject : IUnknown
		{
			public const new Guid IID = .(0x00000112, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetClientSite(IOleClientSite* pClientSite) mut
			{
				return VT.SetClientSite(&this, pClientSite);
			}
			public HRESULT GetClientSite(IOleClientSite** ppClientSite) mut
			{
				return VT.GetClientSite(&this, ppClientSite);
			}
			public HRESULT SetHostNames(PWSTR szContainerApp, PWSTR szContainerObj) mut
			{
				return VT.SetHostNames(&this, szContainerApp, szContainerObj);
			}
			public HRESULT Close(uint32 dwSaveOption) mut
			{
				return VT.Close(&this, dwSaveOption);
			}
			public HRESULT SetMoniker(uint32 dwWhichMoniker, IMoniker* pmk) mut
			{
				return VT.SetMoniker(&this, dwWhichMoniker, pmk);
			}
			public HRESULT GetMoniker(uint32 dwAssign, uint32 dwWhichMoniker, IMoniker** ppmk) mut
			{
				return VT.GetMoniker(&this, dwAssign, dwWhichMoniker, ppmk);
			}
			public HRESULT InitFromData(IDataObject* pDataObject, BOOL fCreation, uint32 dwReserved) mut
			{
				return VT.InitFromData(&this, pDataObject, fCreation, dwReserved);
			}
			public HRESULT GetClipboardData(uint32 dwReserved, IDataObject** ppDataObject) mut
			{
				return VT.GetClipboardData(&this, dwReserved, ppDataObject);
			}
			public HRESULT DoVerb(int32 iVerb, MSG* lpmsg, IOleClientSite* pActiveSite, int32 lindex, HWND hwndParent, RECT* lprcPosRect) mut
			{
				return VT.DoVerb(&this, iVerb, lpmsg, pActiveSite, lindex, hwndParent, lprcPosRect);
			}
			public HRESULT EnumVerbs(IEnumOLEVERB** ppEnumOleVerb) mut
			{
				return VT.EnumVerbs(&this, ppEnumOleVerb);
			}
			public HRESULT Update() mut
			{
				return VT.Update(&this);
			}
			public HRESULT IsUpToDate() mut
			{
				return VT.IsUpToDate(&this);
			}
			public HRESULT GetUserClassID(Guid* pClsid) mut
			{
				return VT.GetUserClassID(&this, pClsid);
			}
			public HRESULT GetUserType(uint32 dwFormOfType, PWSTR* pszUserType) mut
			{
				return VT.GetUserType(&this, dwFormOfType, pszUserType);
			}
			public HRESULT SetExtent(uint32 dwDrawAspect, SIZE* psizel) mut
			{
				return VT.SetExtent(&this, dwDrawAspect, psizel);
			}
			public HRESULT GetExtent(uint32 dwDrawAspect, SIZE* psizel) mut
			{
				return VT.GetExtent(&this, dwDrawAspect, psizel);
			}
			public HRESULT Advise(IAdviseSink* pAdvSink, uint32* pdwConnection) mut
			{
				return VT.Advise(&this, pAdvSink, pdwConnection);
			}
			public HRESULT Unadvise(uint32 dwConnection) mut
			{
				return VT.Unadvise(&this, dwConnection);
			}
			public HRESULT EnumAdvise(IEnumSTATDATA** ppenumAdvise) mut
			{
				return VT.EnumAdvise(&this, ppenumAdvise);
			}
			public HRESULT GetMiscStatus(uint32 dwAspect, uint32* pdwStatus) mut
			{
				return VT.GetMiscStatus(&this, dwAspect, pdwStatus);
			}
			public HRESULT SetColorScheme(LOGPALETTE* pLogpal) mut
			{
				return VT.SetColorScheme(&this, pLogpal);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleObject *self, IOleClientSite* pClientSite) SetClientSite;
				public new function HRESULT(IOleObject *self, IOleClientSite** ppClientSite) GetClientSite;
				public new function HRESULT(IOleObject *self, PWSTR szContainerApp, PWSTR szContainerObj) SetHostNames;
				public new function HRESULT(IOleObject *self, uint32 dwSaveOption) Close;
				public new function HRESULT(IOleObject *self, uint32 dwWhichMoniker, IMoniker* pmk) SetMoniker;
				public new function HRESULT(IOleObject *self, uint32 dwAssign, uint32 dwWhichMoniker, IMoniker** ppmk) GetMoniker;
				public new function HRESULT(IOleObject *self, IDataObject* pDataObject, BOOL fCreation, uint32 dwReserved) InitFromData;
				public new function HRESULT(IOleObject *self, uint32 dwReserved, IDataObject** ppDataObject) GetClipboardData;
				public new function HRESULT(IOleObject *self, int32 iVerb, MSG* lpmsg, IOleClientSite* pActiveSite, int32 lindex, HWND hwndParent, RECT* lprcPosRect) DoVerb;
				public new function HRESULT(IOleObject *self, IEnumOLEVERB** ppEnumOleVerb) EnumVerbs;
				public new function HRESULT(IOleObject *self) Update;
				public new function HRESULT(IOleObject *self) IsUpToDate;
				public new function HRESULT(IOleObject *self, Guid* pClsid) GetUserClassID;
				public new function HRESULT(IOleObject *self, uint32 dwFormOfType, PWSTR* pszUserType) GetUserType;
				public new function HRESULT(IOleObject *self, uint32 dwDrawAspect, SIZE* psizel) SetExtent;
				public new function HRESULT(IOleObject *self, uint32 dwDrawAspect, SIZE* psizel) GetExtent;
				public new function HRESULT(IOleObject *self, IAdviseSink* pAdvSink, uint32* pdwConnection) Advise;
				public new function HRESULT(IOleObject *self, uint32 dwConnection) Unadvise;
				public new function HRESULT(IOleObject *self, IEnumSTATDATA** ppenumAdvise) EnumAdvise;
				public new function HRESULT(IOleObject *self, uint32 dwAspect, uint32* pdwStatus) GetMiscStatus;
				public new function HRESULT(IOleObject *self, LOGPALETTE* pLogpal) SetColorScheme;
			}
		}
		[CRepr]
		public struct IOleWindow : IUnknown
		{
			public const new Guid IID = .(0x00000114, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWindow(HWND* phwnd) mut
			{
				return VT.GetWindow(&this, phwnd);
			}
			public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut
			{
				return VT.ContextSensitiveHelp(&this, fEnterMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleWindow *self, HWND* phwnd) GetWindow;
				public new function HRESULT(IOleWindow *self, BOOL fEnterMode) ContextSensitiveHelp;
			}
		}
		[CRepr]
		public struct IOleLink : IUnknown
		{
			public const new Guid IID = .(0x0000011d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUpdateOptions(uint32 dwUpdateOpt) mut
			{
				return VT.SetUpdateOptions(&this, dwUpdateOpt);
			}
			public HRESULT GetUpdateOptions(uint32* pdwUpdateOpt) mut
			{
				return VT.GetUpdateOptions(&this, pdwUpdateOpt);
			}
			public HRESULT SetSourceMoniker(IMoniker* pmk, Guid* rclsid) mut
			{
				return VT.SetSourceMoniker(&this, pmk, rclsid);
			}
			public HRESULT GetSourceMoniker(IMoniker** ppmk) mut
			{
				return VT.GetSourceMoniker(&this, ppmk);
			}
			public HRESULT SetSourceDisplayName(PWSTR pszStatusText) mut
			{
				return VT.SetSourceDisplayName(&this, pszStatusText);
			}
			public HRESULT GetSourceDisplayName(PWSTR* ppszDisplayName) mut
			{
				return VT.GetSourceDisplayName(&this, ppszDisplayName);
			}
			public HRESULT BindToSource(uint32 bindflags, IBindCtx* pbc) mut
			{
				return VT.BindToSource(&this, bindflags, pbc);
			}
			public HRESULT BindIfRunning() mut
			{
				return VT.BindIfRunning(&this);
			}
			public HRESULT GetBoundSource(IUnknown** ppunk) mut
			{
				return VT.GetBoundSource(&this, ppunk);
			}
			public HRESULT UnbindSource() mut
			{
				return VT.UnbindSource(&this);
			}
			public HRESULT Update(IBindCtx* pbc) mut
			{
				return VT.Update(&this, pbc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleLink *self, uint32 dwUpdateOpt) SetUpdateOptions;
				public new function HRESULT(IOleLink *self, uint32* pdwUpdateOpt) GetUpdateOptions;
				public new function HRESULT(IOleLink *self, IMoniker* pmk, Guid* rclsid) SetSourceMoniker;
				public new function HRESULT(IOleLink *self, IMoniker** ppmk) GetSourceMoniker;
				public new function HRESULT(IOleLink *self, PWSTR pszStatusText) SetSourceDisplayName;
				public new function HRESULT(IOleLink *self, PWSTR* ppszDisplayName) GetSourceDisplayName;
				public new function HRESULT(IOleLink *self, uint32 bindflags, IBindCtx* pbc) BindToSource;
				public new function HRESULT(IOleLink *self) BindIfRunning;
				public new function HRESULT(IOleLink *self, IUnknown** ppunk) GetBoundSource;
				public new function HRESULT(IOleLink *self) UnbindSource;
				public new function HRESULT(IOleLink *self, IBindCtx* pbc) Update;
			}
		}
		[CRepr]
		public struct IOleItemContainer : IOleContainer
		{
			public const new Guid IID = .(0x0000011c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObject(PWSTR pszItem, uint32 dwSpeedNeeded, IBindCtx* pbc, Guid* riid, void** ppvObject) mut
			{
				return VT.GetObject(&this, pszItem, dwSpeedNeeded, pbc, riid, ppvObject);
			}
			public HRESULT GetObjectStorage(PWSTR pszItem, IBindCtx* pbc, Guid* riid, void** ppvStorage) mut
			{
				return VT.GetObjectStorage(&this, pszItem, pbc, riid, ppvStorage);
			}
			public HRESULT IsRunning(PWSTR pszItem) mut
			{
				return VT.IsRunning(&this, pszItem);
			}
			[CRepr]
			public struct VTable : IOleContainer.VTable
			{
				public new function HRESULT(IOleItemContainer *self, PWSTR pszItem, uint32 dwSpeedNeeded, IBindCtx* pbc, Guid* riid, void** ppvObject) GetObject;
				public new function HRESULT(IOleItemContainer *self, PWSTR pszItem, IBindCtx* pbc, Guid* riid, void** ppvStorage) GetObjectStorage;
				public new function HRESULT(IOleItemContainer *self, PWSTR pszItem) IsRunning;
			}
		}
		[CRepr]
		public struct IOleInPlaceUIWindow : IOleWindow
		{
			public const new Guid IID = .(0x00000115, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBorder(RECT* lprectBorder) mut
			{
				return VT.GetBorder(&this, lprectBorder);
			}
			public HRESULT RequestBorderSpace(RECT* pborderwidths) mut
			{
				return VT.RequestBorderSpace(&this, pborderwidths);
			}
			public HRESULT SetBorderSpace(RECT* pborderwidths) mut
			{
				return VT.SetBorderSpace(&this, pborderwidths);
			}
			public HRESULT SetActiveObject(IOleInPlaceActiveObject* pActiveObject, PWSTR pszObjName) mut
			{
				return VT.SetActiveObject(&this, pActiveObject, pszObjName);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IOleInPlaceUIWindow *self, RECT* lprectBorder) GetBorder;
				public new function HRESULT(IOleInPlaceUIWindow *self, RECT* pborderwidths) RequestBorderSpace;
				public new function HRESULT(IOleInPlaceUIWindow *self, RECT* pborderwidths) SetBorderSpace;
				public new function HRESULT(IOleInPlaceUIWindow *self, IOleInPlaceActiveObject* pActiveObject, PWSTR pszObjName) SetActiveObject;
			}
		}
		[CRepr]
		public struct IOleInPlaceActiveObject : IOleWindow
		{
			public const new Guid IID = .(0x00000117, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranslateAccelerator(MSG* lpmsg) mut
			{
				return VT.TranslateAccelerator(&this, lpmsg);
			}
			public HRESULT OnFrameWindowActivate(BOOL fActivate) mut
			{
				return VT.OnFrameWindowActivate(&this, fActivate);
			}
			public HRESULT OnDocWindowActivate(BOOL fActivate) mut
			{
				return VT.OnDocWindowActivate(&this, fActivate);
			}
			public HRESULT ResizeBorder(RECT* prcBorder, IOleInPlaceUIWindow* pUIWindow, BOOL fFrameWindow) mut
			{
				return VT.ResizeBorder(&this, prcBorder, pUIWindow, fFrameWindow);
			}
			public HRESULT EnableModeless(BOOL fEnable) mut
			{
				return VT.EnableModeless(&this, fEnable);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IOleInPlaceActiveObject *self, MSG* lpmsg) TranslateAccelerator;
				public new function HRESULT(IOleInPlaceActiveObject *self, BOOL fActivate) OnFrameWindowActivate;
				public new function HRESULT(IOleInPlaceActiveObject *self, BOOL fActivate) OnDocWindowActivate;
				public new function HRESULT(IOleInPlaceActiveObject *self, RECT* prcBorder, IOleInPlaceUIWindow* pUIWindow, BOOL fFrameWindow) ResizeBorder;
				public new function HRESULT(IOleInPlaceActiveObject *self, BOOL fEnable) EnableModeless;
			}
		}
		[CRepr]
		public struct IOleInPlaceFrame : IOleInPlaceUIWindow
		{
			public const new Guid IID = .(0x00000116, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertMenus(HMENU hmenuShared, OleMenuGroupWidths* lpMenuWidths) mut
			{
				return VT.InsertMenus(&this, hmenuShared, lpMenuWidths);
			}
			public HRESULT SetMenu(HMENU hmenuShared, int holemenu, HWND hwndActiveObject) mut
			{
				return VT.SetMenu(&this, hmenuShared, holemenu, hwndActiveObject);
			}
			public HRESULT RemoveMenus(HMENU hmenuShared) mut
			{
				return VT.RemoveMenus(&this, hmenuShared);
			}
			public HRESULT SetStatusText(PWSTR pszStatusText) mut
			{
				return VT.SetStatusText(&this, pszStatusText);
			}
			public HRESULT EnableModeless(BOOL fEnable) mut
			{
				return VT.EnableModeless(&this, fEnable);
			}
			public HRESULT TranslateAccelerator(MSG* lpmsg, uint16 wID) mut
			{
				return VT.TranslateAccelerator(&this, lpmsg, wID);
			}
			[CRepr]
			public struct VTable : IOleInPlaceUIWindow.VTable
			{
				public new function HRESULT(IOleInPlaceFrame *self, HMENU hmenuShared, OleMenuGroupWidths* lpMenuWidths) InsertMenus;
				public new function HRESULT(IOleInPlaceFrame *self, HMENU hmenuShared, int holemenu, HWND hwndActiveObject) SetMenu;
				public new function HRESULT(IOleInPlaceFrame *self, HMENU hmenuShared) RemoveMenus;
				public new function HRESULT(IOleInPlaceFrame *self, PWSTR pszStatusText) SetStatusText;
				public new function HRESULT(IOleInPlaceFrame *self, BOOL fEnable) EnableModeless;
				public new function HRESULT(IOleInPlaceFrame *self, MSG* lpmsg, uint16 wID) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IOleInPlaceObject : IOleWindow
		{
			public const new Guid IID = .(0x00000113, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InPlaceDeactivate() mut
			{
				return VT.InPlaceDeactivate(&this);
			}
			public HRESULT UIDeactivate() mut
			{
				return VT.UIDeactivate(&this);
			}
			public HRESULT SetObjectRects(RECT* lprcPosRect, RECT* lprcClipRect) mut
			{
				return VT.SetObjectRects(&this, lprcPosRect, lprcClipRect);
			}
			public HRESULT ReactivateAndUndo() mut
			{
				return VT.ReactivateAndUndo(&this);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IOleInPlaceObject *self) InPlaceDeactivate;
				public new function HRESULT(IOleInPlaceObject *self) UIDeactivate;
				public new function HRESULT(IOleInPlaceObject *self, RECT* lprcPosRect, RECT* lprcClipRect) SetObjectRects;
				public new function HRESULT(IOleInPlaceObject *self) ReactivateAndUndo;
			}
		}
		[CRepr]
		public struct IOleInPlaceSite : IOleWindow
		{
			public const new Guid IID = .(0x00000119, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanInPlaceActivate() mut
			{
				return VT.CanInPlaceActivate(&this);
			}
			public HRESULT OnInPlaceActivate() mut
			{
				return VT.OnInPlaceActivate(&this);
			}
			public HRESULT OnUIActivate() mut
			{
				return VT.OnUIActivate(&this);
			}
			public HRESULT GetWindowContext(IOleInPlaceFrame** ppFrame, IOleInPlaceUIWindow** ppDoc, RECT* lprcPosRect, RECT* lprcClipRect, OIFI* lpFrameInfo) mut
			{
				return VT.GetWindowContext(&this, ppFrame, ppDoc, lprcPosRect, lprcClipRect, lpFrameInfo);
			}
			public HRESULT Scroll(SIZE scrollExtant) mut
			{
				return VT.Scroll(&this, scrollExtant);
			}
			public HRESULT OnUIDeactivate(BOOL fUndoable) mut
			{
				return VT.OnUIDeactivate(&this, fUndoable);
			}
			public HRESULT OnInPlaceDeactivate() mut
			{
				return VT.OnInPlaceDeactivate(&this);
			}
			public HRESULT DiscardUndoState() mut
			{
				return VT.DiscardUndoState(&this);
			}
			public HRESULT DeactivateAndUndo() mut
			{
				return VT.DeactivateAndUndo(&this);
			}
			public HRESULT OnPosRectChange(RECT* lprcPosRect) mut
			{
				return VT.OnPosRectChange(&this, lprcPosRect);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IOleInPlaceSite *self) CanInPlaceActivate;
				public new function HRESULT(IOleInPlaceSite *self) OnInPlaceActivate;
				public new function HRESULT(IOleInPlaceSite *self) OnUIActivate;
				public new function HRESULT(IOleInPlaceSite *self, IOleInPlaceFrame** ppFrame, IOleInPlaceUIWindow** ppDoc, RECT* lprcPosRect, RECT* lprcClipRect, OIFI* lpFrameInfo) GetWindowContext;
				public new function HRESULT(IOleInPlaceSite *self, SIZE scrollExtant) Scroll;
				public new function HRESULT(IOleInPlaceSite *self, BOOL fUndoable) OnUIDeactivate;
				public new function HRESULT(IOleInPlaceSite *self) OnInPlaceDeactivate;
				public new function HRESULT(IOleInPlaceSite *self) DiscardUndoState;
				public new function HRESULT(IOleInPlaceSite *self) DeactivateAndUndo;
				public new function HRESULT(IOleInPlaceSite *self, RECT* lprcPosRect) OnPosRectChange;
			}
		}
		[CRepr]
		public struct IContinue : IUnknown
		{
			public const new Guid IID = .(0x0000012a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FContinue() mut
			{
				return VT.FContinue(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContinue *self) FContinue;
			}
		}
		[CRepr]
		public struct IViewObject : IUnknown
		{
			public const new Guid IID = .(0x0000010d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Draw(uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcTargetDev, HDC hdcDraw, RECTL* lprcBounds, RECTL* lprcWBounds, int pfnContinue, uint dwContinue) mut
			{
				return VT.Draw(&this, dwDrawAspect, lindex, pvAspect, ptd, hdcTargetDev, hdcDraw, lprcBounds, lprcWBounds, pfnContinue, dwContinue);
			}
			public HRESULT GetColorSet(uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hicTargetDev, LOGPALETTE** ppColorSet) mut
			{
				return VT.GetColorSet(&this, dwDrawAspect, lindex, pvAspect, ptd, hicTargetDev, ppColorSet);
			}
			public HRESULT Freeze(uint32 dwDrawAspect, int32 lindex, void* pvAspect, uint32* pdwFreeze) mut
			{
				return VT.Freeze(&this, dwDrawAspect, lindex, pvAspect, pdwFreeze);
			}
			public HRESULT Unfreeze(uint32 dwFreeze) mut
			{
				return VT.Unfreeze(&this, dwFreeze);
			}
			public HRESULT SetAdvise(uint32 aspects, uint32 advf, IAdviseSink* pAdvSink) mut
			{
				return VT.SetAdvise(&this, aspects, advf, pAdvSink);
			}
			public HRESULT GetAdvise(uint32* pAspects, uint32* pAdvf, IAdviseSink** ppAdvSink) mut
			{
				return VT.GetAdvise(&this, pAspects, pAdvf, ppAdvSink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IViewObject *self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcTargetDev, HDC hdcDraw, RECTL* lprcBounds, RECTL* lprcWBounds, int pfnContinue, uint dwContinue) Draw;
				public new function HRESULT(IViewObject *self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hicTargetDev, LOGPALETTE** ppColorSet) GetColorSet;
				public new function HRESULT(IViewObject *self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, uint32* pdwFreeze) Freeze;
				public new function HRESULT(IViewObject *self, uint32 dwFreeze) Unfreeze;
				public new function HRESULT(IViewObject *self, uint32 aspects, uint32 advf, IAdviseSink* pAdvSink) SetAdvise;
				public new function HRESULT(IViewObject *self, uint32* pAspects, uint32* pAdvf, IAdviseSink** ppAdvSink) GetAdvise;
			}
		}
		[CRepr]
		public struct IViewObject2 : IViewObject
		{
			public const new Guid IID = .(0x00000127, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetExtent(uint32 dwDrawAspect, int32 lindex, DVTARGETDEVICE* ptd, SIZE* lpsizel) mut
			{
				return VT.GetExtent(&this, dwDrawAspect, lindex, ptd, lpsizel);
			}
			[CRepr]
			public struct VTable : IViewObject.VTable
			{
				public new function HRESULT(IViewObject2 *self, uint32 dwDrawAspect, int32 lindex, DVTARGETDEVICE* ptd, SIZE* lpsizel) GetExtent;
			}
		}
		[CRepr]
		public struct IDropSource : IUnknown
		{
			public const new Guid IID = .(0x00000121, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryContinueDrag(BOOL fEscapePressed, uint32 grfKeyState) mut
			{
				return VT.QueryContinueDrag(&this, fEscapePressed, grfKeyState);
			}
			public HRESULT GiveFeedback(uint32 dwEffect) mut
			{
				return VT.GiveFeedback(&this, dwEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDropSource *self, BOOL fEscapePressed, uint32 grfKeyState) QueryContinueDrag;
				public new function HRESULT(IDropSource *self, uint32 dwEffect) GiveFeedback;
			}
		}
		[CRepr]
		public struct IDropTarget : IUnknown
		{
			public const new Guid IID = .(0x00000122, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DragEnter(IDataObject* pDataObj, uint32 grfKeyState, POINTL pt, uint32* pdwEffect) mut
			{
				return VT.DragEnter(&this, pDataObj, grfKeyState, pt, pdwEffect);
			}
			public HRESULT DragOver(uint32 grfKeyState, POINTL pt, uint32* pdwEffect) mut
			{
				return VT.DragOver(&this, grfKeyState, pt, pdwEffect);
			}
			public HRESULT DragLeave() mut
			{
				return VT.DragLeave(&this);
			}
			public HRESULT Drop(IDataObject* pDataObj, uint32 grfKeyState, POINTL pt, uint32* pdwEffect) mut
			{
				return VT.Drop(&this, pDataObj, grfKeyState, pt, pdwEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDropTarget *self, IDataObject* pDataObj, uint32 grfKeyState, POINTL pt, uint32* pdwEffect) DragEnter;
				public new function HRESULT(IDropTarget *self, uint32 grfKeyState, POINTL pt, uint32* pdwEffect) DragOver;
				public new function HRESULT(IDropTarget *self) DragLeave;
				public new function HRESULT(IDropTarget *self, IDataObject* pDataObj, uint32 grfKeyState, POINTL pt, uint32* pdwEffect) Drop;
			}
		}
		[CRepr]
		public struct IDropSourceNotify : IUnknown
		{
			public const new Guid IID = .(0x0000012b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DragEnterTarget(HWND hwndTarget) mut
			{
				return VT.DragEnterTarget(&this, hwndTarget);
			}
			public HRESULT DragLeaveTarget() mut
			{
				return VT.DragLeaveTarget(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDropSourceNotify *self, HWND hwndTarget) DragEnterTarget;
				public new function HRESULT(IDropSourceNotify *self) DragLeaveTarget;
			}
		}
		[CRepr]
		public struct IEnterpriseDropTarget : IUnknown
		{
			public const new Guid IID = .(0x390e3878, 0xfd55, 0x4e18, 0x81, 0x9d, 0x46, 0x82, 0x08, 0x1c, 0x0c, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDropSourceEnterpriseId(PWSTR identity) mut
			{
				return VT.SetDropSourceEnterpriseId(&this, identity);
			}
			public HRESULT IsEvaluatingEdpPolicy(BOOL* value) mut
			{
				return VT.IsEvaluatingEdpPolicy(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnterpriseDropTarget *self, PWSTR identity) SetDropSourceEnterpriseId;
				public new function HRESULT(IEnterpriseDropTarget *self, BOOL* value) IsEvaluatingEdpPolicy;
			}
		}
		[CRepr]
		public struct IEnumOLEVERB : IUnknown
		{
			public const new Guid IID = .(0x00000104, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, OLEVERB* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumOLEVERB** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumOLEVERB *self, uint32 celt, OLEVERB* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumOLEVERB *self, uint32 celt) Skip;
				public new function HRESULT(IEnumOLEVERB *self) Reset;
				public new function HRESULT(IEnumOLEVERB *self, IEnumOLEVERB** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IClassFactory2 : IClassFactory
		{
			public const new Guid IID = .(0xb196b28f, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLicInfo(LICINFO* pLicInfo) mut
			{
				return VT.GetLicInfo(&this, pLicInfo);
			}
			public HRESULT RequestLicKey(uint32 dwReserved, BSTR* pBstrKey) mut
			{
				return VT.RequestLicKey(&this, dwReserved, pBstrKey);
			}
			public HRESULT CreateInstanceLic(IUnknown* pUnkOuter, IUnknown* pUnkReserved, Guid* riid, BSTR bstrKey, void** ppvObj) mut
			{
				return VT.CreateInstanceLic(&this, pUnkOuter, pUnkReserved, riid, bstrKey, ppvObj);
			}
			[CRepr]
			public struct VTable : IClassFactory.VTable
			{
				public new function HRESULT(IClassFactory2 *self, LICINFO* pLicInfo) GetLicInfo;
				public new function HRESULT(IClassFactory2 *self, uint32 dwReserved, BSTR* pBstrKey) RequestLicKey;
				public new function HRESULT(IClassFactory2 *self, IUnknown* pUnkOuter, IUnknown* pUnkReserved, Guid* riid, BSTR bstrKey, void** ppvObj) CreateInstanceLic;
			}
		}
		[CRepr]
		public struct IProvideClassInfo : IUnknown
		{
			public const new Guid IID = .(0xb196b283, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClassInfo(ITypeInfo** ppTI) mut
			{
				return VT.GetClassInfo(&this, ppTI);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProvideClassInfo *self, ITypeInfo** ppTI) GetClassInfo;
			}
		}
		[CRepr]
		public struct IProvideClassInfo2 : IProvideClassInfo
		{
			public const new Guid IID = .(0xa6bc3ac0, 0xdbaa, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGUID(uint32 dwGuidKind, Guid* pGUID) mut
			{
				return VT.GetGUID(&this, dwGuidKind, pGUID);
			}
			[CRepr]
			public struct VTable : IProvideClassInfo.VTable
			{
				public new function HRESULT(IProvideClassInfo2 *self, uint32 dwGuidKind, Guid* pGUID) GetGUID;
			}
		}
		[CRepr]
		public struct IProvideMultipleClassInfo : IProvideClassInfo2
		{
			public const new Guid IID = .(0xa7aba9c1, 0x8983, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMultiTypeInfoCount(uint32* pcti) mut
			{
				return VT.GetMultiTypeInfoCount(&this, pcti);
			}
			public HRESULT GetInfoOfIndex(uint32 iti, MULTICLASSINFO_FLAGS dwFlags, ITypeInfo** pptiCoClass, uint32* pdwTIFlags, uint32* pcdispidReserved, Guid* piidPrimary, Guid* piidSource) mut
			{
				return VT.GetInfoOfIndex(&this, iti, dwFlags, pptiCoClass, pdwTIFlags, pcdispidReserved, piidPrimary, piidSource);
			}
			[CRepr]
			public struct VTable : IProvideClassInfo2.VTable
			{
				public new function HRESULT(IProvideMultipleClassInfo *self, uint32* pcti) GetMultiTypeInfoCount;
				public new function HRESULT(IProvideMultipleClassInfo *self, uint32 iti, MULTICLASSINFO_FLAGS dwFlags, ITypeInfo** pptiCoClass, uint32* pdwTIFlags, uint32* pcdispidReserved, Guid* piidPrimary, Guid* piidSource) GetInfoOfIndex;
			}
		}
		[CRepr]
		public struct IOleControl : IUnknown
		{
			public const new Guid IID = .(0xb196b288, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetControlInfo(CONTROLINFO* pCI) mut
			{
				return VT.GetControlInfo(&this, pCI);
			}
			public HRESULT OnMnemonic(MSG* pMsg) mut
			{
				return VT.OnMnemonic(&this, pMsg);
			}
			public HRESULT OnAmbientPropertyChange(int32 dispID) mut
			{
				return VT.OnAmbientPropertyChange(&this, dispID);
			}
			public HRESULT FreezeEvents(BOOL bFreeze) mut
			{
				return VT.FreezeEvents(&this, bFreeze);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleControl *self, CONTROLINFO* pCI) GetControlInfo;
				public new function HRESULT(IOleControl *self, MSG* pMsg) OnMnemonic;
				public new function HRESULT(IOleControl *self, int32 dispID) OnAmbientPropertyChange;
				public new function HRESULT(IOleControl *self, BOOL bFreeze) FreezeEvents;
			}
		}
		[CRepr]
		public struct IOleControlSite : IUnknown
		{
			public const new Guid IID = .(0xb196b289, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnControlInfoChanged() mut
			{
				return VT.OnControlInfoChanged(&this);
			}
			public HRESULT LockInPlaceActive(BOOL fLock) mut
			{
				return VT.LockInPlaceActive(&this, fLock);
			}
			public HRESULT GetExtendedControl(IDispatch** ppDisp) mut
			{
				return VT.GetExtendedControl(&this, ppDisp);
			}
			public HRESULT TransformCoords(POINTL* pPtlHimetric, POINTF* pPtfContainer, XFORMCOORDS dwFlags) mut
			{
				return VT.TransformCoords(&this, pPtlHimetric, pPtfContainer, dwFlags);
			}
			public HRESULT TranslateAccelerator(MSG* pMsg, uint32 grfModifiers) mut
			{
				return VT.TranslateAccelerator(&this, pMsg, grfModifiers);
			}
			public HRESULT OnFocus(BOOL fGotFocus) mut
			{
				return VT.OnFocus(&this, fGotFocus);
			}
			public HRESULT ShowPropertyFrame() mut
			{
				return VT.ShowPropertyFrame(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleControlSite *self) OnControlInfoChanged;
				public new function HRESULT(IOleControlSite *self, BOOL fLock) LockInPlaceActive;
				public new function HRESULT(IOleControlSite *self, IDispatch** ppDisp) GetExtendedControl;
				public new function HRESULT(IOleControlSite *self, POINTL* pPtlHimetric, POINTF* pPtfContainer, XFORMCOORDS dwFlags) TransformCoords;
				public new function HRESULT(IOleControlSite *self, MSG* pMsg, uint32 grfModifiers) TranslateAccelerator;
				public new function HRESULT(IOleControlSite *self, BOOL fGotFocus) OnFocus;
				public new function HRESULT(IOleControlSite *self) ShowPropertyFrame;
			}
		}
		[CRepr]
		public struct IPropertyPage : IUnknown
		{
			public const new Guid IID = .(0xb196b28d, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPageSite(IPropertyPageSite* pPageSite) mut
			{
				return VT.SetPageSite(&this, pPageSite);
			}
			public HRESULT Activate(HWND hWndParent, RECT* pRect, BOOL bModal) mut
			{
				return VT.Activate(&this, hWndParent, pRect, bModal);
			}
			public HRESULT Deactivate() mut
			{
				return VT.Deactivate(&this);
			}
			public HRESULT GetPageInfo(PROPPAGEINFO* pPageInfo) mut
			{
				return VT.GetPageInfo(&this, pPageInfo);
			}
			public HRESULT SetObjects(uint32 cObjects, IUnknown** ppUnk) mut
			{
				return VT.SetObjects(&this, cObjects, ppUnk);
			}
			public HRESULT Show(uint32 nCmdShow) mut
			{
				return VT.Show(&this, nCmdShow);
			}
			public HRESULT Move(RECT* pRect) mut
			{
				return VT.Move(&this, pRect);
			}
			public HRESULT IsPageDirty() mut
			{
				return VT.IsPageDirty(&this);
			}
			public HRESULT Apply() mut
			{
				return VT.Apply(&this);
			}
			public HRESULT Help(PWSTR pszHelpDir) mut
			{
				return VT.Help(&this, pszHelpDir);
			}
			public HRESULT TranslateAccelerator(MSG* pMsg) mut
			{
				return VT.TranslateAccelerator(&this, pMsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyPage *self, IPropertyPageSite* pPageSite) SetPageSite;
				public new function HRESULT(IPropertyPage *self, HWND hWndParent, RECT* pRect, BOOL bModal) Activate;
				public new function HRESULT(IPropertyPage *self) Deactivate;
				public new function HRESULT(IPropertyPage *self, PROPPAGEINFO* pPageInfo) GetPageInfo;
				public new function HRESULT(IPropertyPage *self, uint32 cObjects, IUnknown** ppUnk) SetObjects;
				public new function HRESULT(IPropertyPage *self, uint32 nCmdShow) Show;
				public new function HRESULT(IPropertyPage *self, RECT* pRect) Move;
				public new function HRESULT(IPropertyPage *self) IsPageDirty;
				public new function HRESULT(IPropertyPage *self) Apply;
				public new function HRESULT(IPropertyPage *self, PWSTR pszHelpDir) Help;
				public new function HRESULT(IPropertyPage *self, MSG* pMsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IPropertyPage2 : IPropertyPage
		{
			public const new Guid IID = .(0x01e44665, 0x24ac, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EditProperty(int32 dispID) mut
			{
				return VT.EditProperty(&this, dispID);
			}
			[CRepr]
			public struct VTable : IPropertyPage.VTable
			{
				public new function HRESULT(IPropertyPage2 *self, int32 dispID) EditProperty;
			}
		}
		[CRepr]
		public struct IPropertyPageSite : IUnknown
		{
			public const new Guid IID = .(0xb196b28c, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatusChange(PROPPAGESTATUS dwFlags) mut
			{
				return VT.OnStatusChange(&this, dwFlags);
			}
			public HRESULT GetLocaleID(uint32* pLocaleID) mut
			{
				return VT.GetLocaleID(&this, pLocaleID);
			}
			public HRESULT GetPageContainer(IUnknown** ppUnk) mut
			{
				return VT.GetPageContainer(&this, ppUnk);
			}
			public HRESULT TranslateAccelerator(MSG* pMsg) mut
			{
				return VT.TranslateAccelerator(&this, pMsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyPageSite *self, PROPPAGESTATUS dwFlags) OnStatusChange;
				public new function HRESULT(IPropertyPageSite *self, uint32* pLocaleID) GetLocaleID;
				public new function HRESULT(IPropertyPageSite *self, IUnknown** ppUnk) GetPageContainer;
				public new function HRESULT(IPropertyPageSite *self, MSG* pMsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IPropertyNotifySink : IUnknown
		{
			public const new Guid IID = .(0x9bfbbc02, 0xeff1, 0x101a, 0x84, 0xed, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChanged(int32 dispID) mut
			{
				return VT.OnChanged(&this, dispID);
			}
			public HRESULT OnRequestEdit(int32 dispID) mut
			{
				return VT.OnRequestEdit(&this, dispID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyNotifySink *self, int32 dispID) OnChanged;
				public new function HRESULT(IPropertyNotifySink *self, int32 dispID) OnRequestEdit;
			}
		}
		[CRepr]
		public struct ISpecifyPropertyPages : IUnknown
		{
			public const new Guid IID = .(0xb196b28b, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPages(CAUUID* pPages) mut
			{
				return VT.GetPages(&this, pPages);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpecifyPropertyPages *self, CAUUID* pPages) GetPages;
			}
		}
		[CRepr]
		public struct IPersistPropertyBag : IPersist
		{
			public const new Guid IID = .(0x37d84f60, 0x42cb, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitNew() mut
			{
				return VT.InitNew(&this);
			}
			public HRESULT Load(IPropertyBag* pPropBag, IErrorLog* pErrorLog) mut
			{
				return VT.Load(&this, pPropBag, pErrorLog);
			}
			public HRESULT Save(IPropertyBag* pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) mut
			{
				return VT.Save(&this, pPropBag, fClearDirty, fSaveAllProperties);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistPropertyBag *self) InitNew;
				public new function HRESULT(IPersistPropertyBag *self, IPropertyBag* pPropBag, IErrorLog* pErrorLog) Load;
				public new function HRESULT(IPersistPropertyBag *self, IPropertyBag* pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) Save;
			}
		}
		[CRepr]
		public struct ISimpleFrameSite : IUnknown
		{
			public const new Guid IID = .(0x742b0e01, 0x14e6, 0x101b, 0x91, 0x4e, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreMessageFilter(HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, LRESULT* plResult, uint32* pdwCookie) mut
			{
				return VT.PreMessageFilter(&this, hWnd, msg, wp, lp, plResult, pdwCookie);
			}
			public HRESULT PostMessageFilter(HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, LRESULT* plResult, uint32 dwCookie) mut
			{
				return VT.PostMessageFilter(&this, hWnd, msg, wp, lp, plResult, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISimpleFrameSite *self, HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, LRESULT* plResult, uint32* pdwCookie) PreMessageFilter;
				public new function HRESULT(ISimpleFrameSite *self, HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, LRESULT* plResult, uint32 dwCookie) PostMessageFilter;
			}
		}
		[CRepr]
		public struct IFont : IUnknown
		{
			public const new Guid IID = .(0xbef6e002, 0xa874, 0x101a, 0x8b, 0xba, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pName) mut
			{
				return VT.get_Name(&this, pName);
			}
			public HRESULT put_Name(BSTR name) mut
			{
				return VT.put_Name(&this, name);
			}
			public HRESULT get_Size(CY* pSize) mut
			{
				return VT.get_Size(&this, pSize);
			}
			public HRESULT put_Size(CY size) mut
			{
				return VT.put_Size(&this, size);
			}
			public HRESULT get_Bold(BOOL* pBold) mut
			{
				return VT.get_Bold(&this, pBold);
			}
			public HRESULT put_Bold(BOOL bold) mut
			{
				return VT.put_Bold(&this, bold);
			}
			public HRESULT get_Italic(BOOL* pItalic) mut
			{
				return VT.get_Italic(&this, pItalic);
			}
			public HRESULT put_Italic(BOOL italic) mut
			{
				return VT.put_Italic(&this, italic);
			}
			public HRESULT get_Underline(BOOL* pUnderline) mut
			{
				return VT.get_Underline(&this, pUnderline);
			}
			public HRESULT put_Underline(BOOL underline) mut
			{
				return VT.put_Underline(&this, underline);
			}
			public HRESULT get_Strikethrough(BOOL* pStrikethrough) mut
			{
				return VT.get_Strikethrough(&this, pStrikethrough);
			}
			public HRESULT put_Strikethrough(BOOL strikethrough) mut
			{
				return VT.put_Strikethrough(&this, strikethrough);
			}
			public HRESULT get_Weight(int16* pWeight) mut
			{
				return VT.get_Weight(&this, pWeight);
			}
			public HRESULT put_Weight(int16 weight) mut
			{
				return VT.put_Weight(&this, weight);
			}
			public HRESULT get_Charset(int16* pCharset) mut
			{
				return VT.get_Charset(&this, pCharset);
			}
			public HRESULT put_Charset(int16 charset) mut
			{
				return VT.put_Charset(&this, charset);
			}
			public HRESULT get_hFont(HFONT* phFont) mut
			{
				return VT.get_hFont(&this, phFont);
			}
			public HRESULT Clone(IFont** ppFont) mut
			{
				return VT.Clone(&this, ppFont);
			}
			public HRESULT IsEqual(IFont* pFontOther) mut
			{
				return VT.IsEqual(&this, pFontOther);
			}
			public HRESULT SetRatio(int32 cyLogical, int32 cyHimetric) mut
			{
				return VT.SetRatio(&this, cyLogical, cyHimetric);
			}
			public HRESULT QueryTextMetrics(TEXTMETRICW* pTM) mut
			{
				return VT.QueryTextMetrics(&this, pTM);
			}
			public HRESULT AddRefHfont(HFONT hFont) mut
			{
				return VT.AddRefHfont(&this, hFont);
			}
			public HRESULT ReleaseHfont(HFONT hFont) mut
			{
				return VT.ReleaseHfont(&this, hFont);
			}
			public HRESULT SetHdc(HDC hDC) mut
			{
				return VT.SetHdc(&this, hDC);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFont *self, BSTR* pName) get_Name;
				public new function HRESULT(IFont *self, BSTR name) put_Name;
				public new function HRESULT(IFont *self, CY* pSize) get_Size;
				public new function HRESULT(IFont *self, CY size) put_Size;
				public new function HRESULT(IFont *self, BOOL* pBold) get_Bold;
				public new function HRESULT(IFont *self, BOOL bold) put_Bold;
				public new function HRESULT(IFont *self, BOOL* pItalic) get_Italic;
				public new function HRESULT(IFont *self, BOOL italic) put_Italic;
				public new function HRESULT(IFont *self, BOOL* pUnderline) get_Underline;
				public new function HRESULT(IFont *self, BOOL underline) put_Underline;
				public new function HRESULT(IFont *self, BOOL* pStrikethrough) get_Strikethrough;
				public new function HRESULT(IFont *self, BOOL strikethrough) put_Strikethrough;
				public new function HRESULT(IFont *self, int16* pWeight) get_Weight;
				public new function HRESULT(IFont *self, int16 weight) put_Weight;
				public new function HRESULT(IFont *self, int16* pCharset) get_Charset;
				public new function HRESULT(IFont *self, int16 charset) put_Charset;
				public new function HRESULT(IFont *self, HFONT* phFont) get_hFont;
				public new function HRESULT(IFont *self, IFont** ppFont) Clone;
				public new function HRESULT(IFont *self, IFont* pFontOther) IsEqual;
				public new function HRESULT(IFont *self, int32 cyLogical, int32 cyHimetric) SetRatio;
				public new function HRESULT(IFont *self, TEXTMETRICW* pTM) QueryTextMetrics;
				public new function HRESULT(IFont *self, HFONT hFont) AddRefHfont;
				public new function HRESULT(IFont *self, HFONT hFont) ReleaseHfont;
				public new function HRESULT(IFont *self, HDC hDC) SetHdc;
			}
		}
		[CRepr]
		public struct IPicture : IUnknown
		{
			public const new Guid IID = .(0x7bf80980, 0xbf32, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Handle(uint32* pHandle) mut
			{
				return VT.get_Handle(&this, pHandle);
			}
			public HRESULT get_hPal(uint32* phPal) mut
			{
				return VT.get_hPal(&this, phPal);
			}
			public HRESULT get_Type(int16* pType) mut
			{
				return VT.get_Type(&this, pType);
			}
			public HRESULT get_Width(int32* pWidth) mut
			{
				return VT.get_Width(&this, pWidth);
			}
			public HRESULT get_Height(int32* pHeight) mut
			{
				return VT.get_Height(&this, pHeight);
			}
			public HRESULT Render(HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, RECT* pRcWBounds) mut
			{
				return VT.Render(&this, hDC, x, y, cx, cy, xSrc, ySrc, cxSrc, cySrc, pRcWBounds);
			}
			public HRESULT set_hPal(uint32 hPal) mut
			{
				return VT.set_hPal(&this, hPal);
			}
			public HRESULT get_CurDC(HDC* phDC) mut
			{
				return VT.get_CurDC(&this, phDC);
			}
			public HRESULT SelectPicture(HDC hDCIn, HDC* phDCOut, uint32* phBmpOut) mut
			{
				return VT.SelectPicture(&this, hDCIn, phDCOut, phBmpOut);
			}
			public HRESULT get_KeepOriginalFormat(BOOL* pKeep) mut
			{
				return VT.get_KeepOriginalFormat(&this, pKeep);
			}
			public HRESULT put_KeepOriginalFormat(BOOL keep) mut
			{
				return VT.put_KeepOriginalFormat(&this, keep);
			}
			public HRESULT PictureChanged() mut
			{
				return VT.PictureChanged(&this);
			}
			public HRESULT SaveAsFile(IStream* pStream, BOOL fSaveMemCopy, int32* pCbSize) mut
			{
				return VT.SaveAsFile(&this, pStream, fSaveMemCopy, pCbSize);
			}
			public HRESULT get_Attributes(uint32* pDwAttr) mut
			{
				return VT.get_Attributes(&this, pDwAttr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPicture *self, uint32* pHandle) get_Handle;
				public new function HRESULT(IPicture *self, uint32* phPal) get_hPal;
				public new function HRESULT(IPicture *self, int16* pType) get_Type;
				public new function HRESULT(IPicture *self, int32* pWidth) get_Width;
				public new function HRESULT(IPicture *self, int32* pHeight) get_Height;
				public new function HRESULT(IPicture *self, HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, RECT* pRcWBounds) Render;
				public new function HRESULT(IPicture *self, uint32 hPal) set_hPal;
				public new function HRESULT(IPicture *self, HDC* phDC) get_CurDC;
				public new function HRESULT(IPicture *self, HDC hDCIn, HDC* phDCOut, uint32* phBmpOut) SelectPicture;
				public new function HRESULT(IPicture *self, BOOL* pKeep) get_KeepOriginalFormat;
				public new function HRESULT(IPicture *self, BOOL keep) put_KeepOriginalFormat;
				public new function HRESULT(IPicture *self) PictureChanged;
				public new function HRESULT(IPicture *self, IStream* pStream, BOOL fSaveMemCopy, int32* pCbSize) SaveAsFile;
				public new function HRESULT(IPicture *self, uint32* pDwAttr) get_Attributes;
			}
		}
		[CRepr]
		public struct IPicture2 : IUnknown
		{
			public const new Guid IID = .(0xf5185dd8, 0x2012, 0x4b0b, 0xaa, 0xd9, 0xf0, 0x52, 0xc6, 0xbd, 0x48, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Handle(uint* pHandle) mut
			{
				return VT.get_Handle(&this, pHandle);
			}
			public HRESULT get_hPal(uint* phPal) mut
			{
				return VT.get_hPal(&this, phPal);
			}
			public HRESULT get_Type(int16* pType) mut
			{
				return VT.get_Type(&this, pType);
			}
			public HRESULT get_Width(int32* pWidth) mut
			{
				return VT.get_Width(&this, pWidth);
			}
			public HRESULT get_Height(int32* pHeight) mut
			{
				return VT.get_Height(&this, pHeight);
			}
			public HRESULT Render(HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, RECT* pRcWBounds) mut
			{
				return VT.Render(&this, hDC, x, y, cx, cy, xSrc, ySrc, cxSrc, cySrc, pRcWBounds);
			}
			public HRESULT set_hPal(uint hPal) mut
			{
				return VT.set_hPal(&this, hPal);
			}
			public HRESULT get_CurDC(HDC* phDC) mut
			{
				return VT.get_CurDC(&this, phDC);
			}
			public HRESULT SelectPicture(HDC hDCIn, HDC* phDCOut, uint* phBmpOut) mut
			{
				return VT.SelectPicture(&this, hDCIn, phDCOut, phBmpOut);
			}
			public HRESULT get_KeepOriginalFormat(BOOL* pKeep) mut
			{
				return VT.get_KeepOriginalFormat(&this, pKeep);
			}
			public HRESULT put_KeepOriginalFormat(BOOL keep) mut
			{
				return VT.put_KeepOriginalFormat(&this, keep);
			}
			public HRESULT PictureChanged() mut
			{
				return VT.PictureChanged(&this);
			}
			public HRESULT SaveAsFile(IStream* pStream, BOOL fSaveMemCopy, int32* pCbSize) mut
			{
				return VT.SaveAsFile(&this, pStream, fSaveMemCopy, pCbSize);
			}
			public HRESULT get_Attributes(uint32* pDwAttr) mut
			{
				return VT.get_Attributes(&this, pDwAttr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPicture2 *self, uint* pHandle) get_Handle;
				public new function HRESULT(IPicture2 *self, uint* phPal) get_hPal;
				public new function HRESULT(IPicture2 *self, int16* pType) get_Type;
				public new function HRESULT(IPicture2 *self, int32* pWidth) get_Width;
				public new function HRESULT(IPicture2 *self, int32* pHeight) get_Height;
				public new function HRESULT(IPicture2 *self, HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, RECT* pRcWBounds) Render;
				public new function HRESULT(IPicture2 *self, uint hPal) set_hPal;
				public new function HRESULT(IPicture2 *self, HDC* phDC) get_CurDC;
				public new function HRESULT(IPicture2 *self, HDC hDCIn, HDC* phDCOut, uint* phBmpOut) SelectPicture;
				public new function HRESULT(IPicture2 *self, BOOL* pKeep) get_KeepOriginalFormat;
				public new function HRESULT(IPicture2 *self, BOOL keep) put_KeepOriginalFormat;
				public new function HRESULT(IPicture2 *self) PictureChanged;
				public new function HRESULT(IPicture2 *self, IStream* pStream, BOOL fSaveMemCopy, int32* pCbSize) SaveAsFile;
				public new function HRESULT(IPicture2 *self, uint32* pDwAttr) get_Attributes;
			}
		}
		[CRepr]
		public struct IFontEventsDisp : IDispatch
		{
			public const new Guid IID = .(0x4ef6100a, 0xaf88, 0x11d0, 0x98, 0x46, 0x00, 0xc0, 0x4f, 0xc2, 0x99, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IFontDisp : IDispatch
		{
			public const new Guid IID = .(0xbef6e003, 0xa874, 0x101a, 0x8b, 0xba, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IPictureDisp : IDispatch
		{
			public const new Guid IID = .(0x7bf80981, 0xbf32, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IOleInPlaceObjectWindowless : IOleInPlaceObject
		{
			public const new Guid IID = .(0x1c2056cc, 0x5ef4, 0x101b, 0x8b, 0xc8, 0x00, 0xaa, 0x00, 0x3e, 0x3b, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowMessage(uint32 msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.OnWindowMessage(&this, msg, wParam, lParam, plResult);
			}
			public HRESULT GetDropTarget(IDropTarget** ppDropTarget) mut
			{
				return VT.GetDropTarget(&this, ppDropTarget);
			}
			[CRepr]
			public struct VTable : IOleInPlaceObject.VTable
			{
				public new function HRESULT(IOleInPlaceObjectWindowless *self, uint32 msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) OnWindowMessage;
				public new function HRESULT(IOleInPlaceObjectWindowless *self, IDropTarget** ppDropTarget) GetDropTarget;
			}
		}
		[CRepr]
		public struct IOleInPlaceSiteEx : IOleInPlaceSite
		{
			public const new Guid IID = .(0x9c2cad80, 0x3424, 0x11cf, 0xb6, 0x70, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInPlaceActivateEx(BOOL* pfNoRedraw, uint32 dwFlags) mut
			{
				return VT.OnInPlaceActivateEx(&this, pfNoRedraw, dwFlags);
			}
			public HRESULT OnInPlaceDeactivateEx(BOOL fNoRedraw) mut
			{
				return VT.OnInPlaceDeactivateEx(&this, fNoRedraw);
			}
			public HRESULT RequestUIActivate() mut
			{
				return VT.RequestUIActivate(&this);
			}
			[CRepr]
			public struct VTable : IOleInPlaceSite.VTable
			{
				public new function HRESULT(IOleInPlaceSiteEx *self, BOOL* pfNoRedraw, uint32 dwFlags) OnInPlaceActivateEx;
				public new function HRESULT(IOleInPlaceSiteEx *self, BOOL fNoRedraw) OnInPlaceDeactivateEx;
				public new function HRESULT(IOleInPlaceSiteEx *self) RequestUIActivate;
			}
		}
		[CRepr]
		public struct IOleInPlaceSiteWindowless : IOleInPlaceSiteEx
		{
			public const new Guid IID = .(0x922eada0, 0x3424, 0x11cf, 0xb6, 0x70, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanWindowlessActivate() mut
			{
				return VT.CanWindowlessActivate(&this);
			}
			public HRESULT GetCapture() mut
			{
				return VT.GetCapture(&this);
			}
			public HRESULT SetCapture(BOOL fCapture) mut
			{
				return VT.SetCapture(&this, fCapture);
			}
			public HRESULT GetFocus() mut
			{
				return VT.GetFocus(&this);
			}
			public HRESULT SetFocus(BOOL fFocus) mut
			{
				return VT.SetFocus(&this, fFocus);
			}
			public HRESULT GetDC(RECT* pRect, uint32 grfFlags, HDC* phDC) mut
			{
				return VT.GetDC(&this, pRect, grfFlags, phDC);
			}
			public HRESULT ReleaseDC(HDC hDC) mut
			{
				return VT.ReleaseDC(&this, hDC);
			}
			public HRESULT InvalidateRect(RECT* pRect, BOOL fErase) mut
			{
				return VT.InvalidateRect(&this, pRect, fErase);
			}
			public HRESULT InvalidateRgn(HRGN hRGN, BOOL fErase) mut
			{
				return VT.InvalidateRgn(&this, hRGN, fErase);
			}
			public HRESULT ScrollRect(int32 dx, int32 dy, RECT* pRectScroll, RECT* pRectClip) mut
			{
				return VT.ScrollRect(&this, dx, dy, pRectScroll, pRectClip);
			}
			public HRESULT AdjustRect(RECT* prc) mut
			{
				return VT.AdjustRect(&this, prc);
			}
			public HRESULT OnDefWindowMessage(uint32 msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.OnDefWindowMessage(&this, msg, wParam, lParam, plResult);
			}
			[CRepr]
			public struct VTable : IOleInPlaceSiteEx.VTable
			{
				public new function HRESULT(IOleInPlaceSiteWindowless *self) CanWindowlessActivate;
				public new function HRESULT(IOleInPlaceSiteWindowless *self) GetCapture;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, BOOL fCapture) SetCapture;
				public new function HRESULT(IOleInPlaceSiteWindowless *self) GetFocus;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, BOOL fFocus) SetFocus;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, RECT* pRect, uint32 grfFlags, HDC* phDC) GetDC;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, HDC hDC) ReleaseDC;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, RECT* pRect, BOOL fErase) InvalidateRect;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, HRGN hRGN, BOOL fErase) InvalidateRgn;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, int32 dx, int32 dy, RECT* pRectScroll, RECT* pRectClip) ScrollRect;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, RECT* prc) AdjustRect;
				public new function HRESULT(IOleInPlaceSiteWindowless *self, uint32 msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) OnDefWindowMessage;
			}
		}
		[CRepr]
		public struct IViewObjectEx : IViewObject2
		{
			public const new Guid IID = .(0x3af24292, 0x0c96, 0x11ce, 0xa0, 0xcf, 0x00, 0xaa, 0x00, 0x60, 0x0a, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRect(uint32 dwAspect, RECTL* pRect) mut
			{
				return VT.GetRect(&this, dwAspect, pRect);
			}
			public HRESULT GetViewStatus(uint32* pdwStatus) mut
			{
				return VT.GetViewStatus(&this, pdwStatus);
			}
			public HRESULT QueryHitPoint(uint32 dwAspect, RECT* pRectBounds, POINT ptlLoc, int32 lCloseHint, uint32* pHitResult) mut
			{
				return VT.QueryHitPoint(&this, dwAspect, pRectBounds, ptlLoc, lCloseHint, pHitResult);
			}
			public HRESULT QueryHitRect(uint32 dwAspect, RECT* pRectBounds, RECT* pRectLoc, int32 lCloseHint, uint32* pHitResult) mut
			{
				return VT.QueryHitRect(&this, dwAspect, pRectBounds, pRectLoc, lCloseHint, pHitResult);
			}
			public HRESULT GetNaturalExtent(DVASPECT dwAspect, int32 lindex, DVTARGETDEVICE* ptd, HDC hicTargetDev, ExtentInfo* pExtentInfo, SIZE* pSizel) mut
			{
				return VT.GetNaturalExtent(&this, dwAspect, lindex, ptd, hicTargetDev, pExtentInfo, pSizel);
			}
			[CRepr]
			public struct VTable : IViewObject2.VTable
			{
				public new function HRESULT(IViewObjectEx *self, uint32 dwAspect, RECTL* pRect) GetRect;
				public new function HRESULT(IViewObjectEx *self, uint32* pdwStatus) GetViewStatus;
				public new function HRESULT(IViewObjectEx *self, uint32 dwAspect, RECT* pRectBounds, POINT ptlLoc, int32 lCloseHint, uint32* pHitResult) QueryHitPoint;
				public new function HRESULT(IViewObjectEx *self, uint32 dwAspect, RECT* pRectBounds, RECT* pRectLoc, int32 lCloseHint, uint32* pHitResult) QueryHitRect;
				public new function HRESULT(IViewObjectEx *self, DVASPECT dwAspect, int32 lindex, DVTARGETDEVICE* ptd, HDC hicTargetDev, ExtentInfo* pExtentInfo, SIZE* pSizel) GetNaturalExtent;
			}
		}
		[CRepr]
		public struct IOleUndoUnit : IUnknown
		{
			public const new Guid IID = .(0x894ad3b0, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Do(IOleUndoManager* pUndoManager) mut
			{
				return VT.Do(&this, pUndoManager);
			}
			public HRESULT GetDescription(BSTR* pBstr) mut
			{
				return VT.GetDescription(&this, pBstr);
			}
			public HRESULT GetUnitType(Guid* pClsid, int32* plID) mut
			{
				return VT.GetUnitType(&this, pClsid, plID);
			}
			public HRESULT OnNextAdd() mut
			{
				return VT.OnNextAdd(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleUndoUnit *self, IOleUndoManager* pUndoManager) Do;
				public new function HRESULT(IOleUndoUnit *self, BSTR* pBstr) GetDescription;
				public new function HRESULT(IOleUndoUnit *self, Guid* pClsid, int32* plID) GetUnitType;
				public new function HRESULT(IOleUndoUnit *self) OnNextAdd;
			}
		}
		[CRepr]
		public struct IOleParentUndoUnit : IOleUndoUnit
		{
			public const new Guid IID = .(0xa1faf330, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(IOleParentUndoUnit* pPUU) mut
			{
				return VT.Open(&this, pPUU);
			}
			public HRESULT Close(IOleParentUndoUnit* pPUU, BOOL fCommit) mut
			{
				return VT.Close(&this, pPUU, fCommit);
			}
			public HRESULT Add(IOleUndoUnit* pUU) mut
			{
				return VT.Add(&this, pUU);
			}
			public HRESULT FindUnit(IOleUndoUnit* pUU) mut
			{
				return VT.FindUnit(&this, pUU);
			}
			public HRESULT GetParentState(uint32* pdwState) mut
			{
				return VT.GetParentState(&this, pdwState);
			}
			[CRepr]
			public struct VTable : IOleUndoUnit.VTable
			{
				public new function HRESULT(IOleParentUndoUnit *self, IOleParentUndoUnit* pPUU) Open;
				public new function HRESULT(IOleParentUndoUnit *self, IOleParentUndoUnit* pPUU, BOOL fCommit) Close;
				public new function HRESULT(IOleParentUndoUnit *self, IOleUndoUnit* pUU) Add;
				public new function HRESULT(IOleParentUndoUnit *self, IOleUndoUnit* pUU) FindUnit;
				public new function HRESULT(IOleParentUndoUnit *self, uint32* pdwState) GetParentState;
			}
		}
		[CRepr]
		public struct IEnumOleUndoUnits : IUnknown
		{
			public const new Guid IID = .(0xb3e7c340, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cElt, IOleUndoUnit** rgElt, uint32* pcEltFetched) mut
			{
				return VT.Next(&this, cElt, rgElt, pcEltFetched);
			}
			public HRESULT Skip(uint32 cElt) mut
			{
				return VT.Skip(&this, cElt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumOleUndoUnits** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumOleUndoUnits *self, uint32 cElt, IOleUndoUnit** rgElt, uint32* pcEltFetched) Next;
				public new function HRESULT(IEnumOleUndoUnits *self, uint32 cElt) Skip;
				public new function HRESULT(IEnumOleUndoUnits *self) Reset;
				public new function HRESULT(IEnumOleUndoUnits *self, IEnumOleUndoUnits** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IOleUndoManager : IUnknown
		{
			public const new Guid IID = .(0xd001f200, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(IOleParentUndoUnit* pPUU) mut
			{
				return VT.Open(&this, pPUU);
			}
			public HRESULT Close(IOleParentUndoUnit* pPUU, BOOL fCommit) mut
			{
				return VT.Close(&this, pPUU, fCommit);
			}
			public HRESULT Add(IOleUndoUnit* pUU) mut
			{
				return VT.Add(&this, pUU);
			}
			public HRESULT GetOpenParentState(uint32* pdwState) mut
			{
				return VT.GetOpenParentState(&this, pdwState);
			}
			public HRESULT DiscardFrom(IOleUndoUnit* pUU) mut
			{
				return VT.DiscardFrom(&this, pUU);
			}
			public HRESULT UndoTo(IOleUndoUnit* pUU) mut
			{
				return VT.UndoTo(&this, pUU);
			}
			public HRESULT RedoTo(IOleUndoUnit* pUU) mut
			{
				return VT.RedoTo(&this, pUU);
			}
			public HRESULT EnumUndoable(IEnumOleUndoUnits** ppEnum) mut
			{
				return VT.EnumUndoable(&this, ppEnum);
			}
			public HRESULT EnumRedoable(IEnumOleUndoUnits** ppEnum) mut
			{
				return VT.EnumRedoable(&this, ppEnum);
			}
			public HRESULT GetLastUndoDescription(BSTR* pBstr) mut
			{
				return VT.GetLastUndoDescription(&this, pBstr);
			}
			public HRESULT GetLastRedoDescription(BSTR* pBstr) mut
			{
				return VT.GetLastRedoDescription(&this, pBstr);
			}
			public HRESULT Enable(BOOL fEnable) mut
			{
				return VT.Enable(&this, fEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleUndoManager *self, IOleParentUndoUnit* pPUU) Open;
				public new function HRESULT(IOleUndoManager *self, IOleParentUndoUnit* pPUU, BOOL fCommit) Close;
				public new function HRESULT(IOleUndoManager *self, IOleUndoUnit* pUU) Add;
				public new function HRESULT(IOleUndoManager *self, uint32* pdwState) GetOpenParentState;
				public new function HRESULT(IOleUndoManager *self, IOleUndoUnit* pUU) DiscardFrom;
				public new function HRESULT(IOleUndoManager *self, IOleUndoUnit* pUU) UndoTo;
				public new function HRESULT(IOleUndoManager *self, IOleUndoUnit* pUU) RedoTo;
				public new function HRESULT(IOleUndoManager *self, IEnumOleUndoUnits** ppEnum) EnumUndoable;
				public new function HRESULT(IOleUndoManager *self, IEnumOleUndoUnits** ppEnum) EnumRedoable;
				public new function HRESULT(IOleUndoManager *self, BSTR* pBstr) GetLastUndoDescription;
				public new function HRESULT(IOleUndoManager *self, BSTR* pBstr) GetLastRedoDescription;
				public new function HRESULT(IOleUndoManager *self, BOOL fEnable) Enable;
			}
		}
		[CRepr]
		public struct IPointerInactive : IUnknown
		{
			public const new Guid IID = .(0x55980ba0, 0x35aa, 0x11cf, 0xb6, 0x71, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActivationPolicy(uint32* pdwPolicy) mut
			{
				return VT.GetActivationPolicy(&this, pdwPolicy);
			}
			public HRESULT OnInactiveMouseMove(RECT* pRectBounds, int32 x, int32 y, uint32 grfKeyState) mut
			{
				return VT.OnInactiveMouseMove(&this, pRectBounds, x, y, grfKeyState);
			}
			public HRESULT OnInactiveSetCursor(RECT* pRectBounds, int32 x, int32 y, uint32 dwMouseMsg, BOOL fSetAlways) mut
			{
				return VT.OnInactiveSetCursor(&this, pRectBounds, x, y, dwMouseMsg, fSetAlways);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPointerInactive *self, uint32* pdwPolicy) GetActivationPolicy;
				public new function HRESULT(IPointerInactive *self, RECT* pRectBounds, int32 x, int32 y, uint32 grfKeyState) OnInactiveMouseMove;
				public new function HRESULT(IPointerInactive *self, RECT* pRectBounds, int32 x, int32 y, uint32 dwMouseMsg, BOOL fSetAlways) OnInactiveSetCursor;
			}
		}
		[CRepr]
		public struct IObjectWithSite : IUnknown
		{
			public const new Guid IID = .(0xfc4801a3, 0x2ba9, 0x11cf, 0xa2, 0x29, 0x00, 0xaa, 0x00, 0x3d, 0x73, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSite(IUnknown* pUnkSite) mut
			{
				return VT.SetSite(&this, pUnkSite);
			}
			public HRESULT GetSite(Guid* riid, void** ppvSite) mut
			{
				return VT.GetSite(&this, riid, ppvSite);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithSite *self, IUnknown* pUnkSite) SetSite;
				public new function HRESULT(IObjectWithSite *self, Guid* riid, void** ppvSite) GetSite;
			}
		}
		[CRepr]
		public struct IPerPropertyBrowsing : IUnknown
		{
			public const new Guid IID = .(0x376bd3aa, 0x3845, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDisplayString(int32 dispID, BSTR* pBstr) mut
			{
				return VT.GetDisplayString(&this, dispID, pBstr);
			}
			public HRESULT MapPropertyToPage(int32 dispID, Guid* pClsid) mut
			{
				return VT.MapPropertyToPage(&this, dispID, pClsid);
			}
			public HRESULT GetPredefinedStrings(int32 dispID, CALPOLESTR* pCaStringsOut, CADWORD* pCaCookiesOut) mut
			{
				return VT.GetPredefinedStrings(&this, dispID, pCaStringsOut, pCaCookiesOut);
			}
			public HRESULT GetPredefinedValue(int32 dispID, uint32 dwCookie, VARIANT* pVarOut) mut
			{
				return VT.GetPredefinedValue(&this, dispID, dwCookie, pVarOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPerPropertyBrowsing *self, int32 dispID, BSTR* pBstr) GetDisplayString;
				public new function HRESULT(IPerPropertyBrowsing *self, int32 dispID, Guid* pClsid) MapPropertyToPage;
				public new function HRESULT(IPerPropertyBrowsing *self, int32 dispID, CALPOLESTR* pCaStringsOut, CADWORD* pCaCookiesOut) GetPredefinedStrings;
				public new function HRESULT(IPerPropertyBrowsing *self, int32 dispID, uint32 dwCookie, VARIANT* pVarOut) GetPredefinedValue;
			}
		}
		[CRepr]
		public struct IPersistPropertyBag2 : IPersist
		{
			public const new Guid IID = .(0x22f55881, 0x280b, 0x11d0, 0xa8, 0xa9, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitNew() mut
			{
				return VT.InitNew(&this);
			}
			public HRESULT Load(IPropertyBag2* pPropBag, IErrorLog* pErrLog) mut
			{
				return VT.Load(&this, pPropBag, pErrLog);
			}
			public HRESULT Save(IPropertyBag2* pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) mut
			{
				return VT.Save(&this, pPropBag, fClearDirty, fSaveAllProperties);
			}
			public HRESULT IsDirty() mut
			{
				return VT.IsDirty(&this);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistPropertyBag2 *self) InitNew;
				public new function HRESULT(IPersistPropertyBag2 *self, IPropertyBag2* pPropBag, IErrorLog* pErrLog) Load;
				public new function HRESULT(IPersistPropertyBag2 *self, IPropertyBag2* pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) Save;
				public new function HRESULT(IPersistPropertyBag2 *self) IsDirty;
			}
		}
		[CRepr]
		public struct IAdviseSinkEx : IAdviseSink
		{
			public const new Guid IID = .(0x3af24290, 0x0c96, 0x11ce, 0xa0, 0xcf, 0x00, 0xaa, 0x00, 0x60, 0x0a, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnViewStatusChange(uint32 dwViewStatus) mut
			{
				VT.OnViewStatusChange(&this, dwViewStatus);
			}
			[CRepr]
			public struct VTable : IAdviseSink.VTable
			{
				public new function void(IAdviseSinkEx *self, uint32 dwViewStatus) OnViewStatusChange;
			}
		}
		[CRepr]
		public struct IQuickActivate : IUnknown
		{
			public const new Guid IID = .(0xcf51ed10, 0x62fe, 0x11cf, 0xbf, 0x86, 0x00, 0xa0, 0xc9, 0x03, 0x48, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QuickActivate(QACONTAINER* pQaContainer, QACONTROL* pQaControl) mut
			{
				return VT.QuickActivate(&this, pQaContainer, pQaControl);
			}
			public HRESULT SetContentExtent(SIZE* pSizel) mut
			{
				return VT.SetContentExtent(&this, pSizel);
			}
			public HRESULT GetContentExtent(SIZE* pSizel) mut
			{
				return VT.GetContentExtent(&this, pSizel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQuickActivate *self, QACONTAINER* pQaContainer, QACONTROL* pQaControl) QuickActivate;
				public new function HRESULT(IQuickActivate *self, SIZE* pSizel) SetContentExtent;
				public new function HRESULT(IQuickActivate *self, SIZE* pSizel) GetContentExtent;
			}
		}
		[CRepr]
		public struct IVBGetControl : IUnknown
		{
			public const new Guid IID = .(0x40a050a0, 0x3c31, 0x101b, 0xa8, 0x2e, 0x08, 0x00, 0x2b, 0x2b, 0x23, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumControls(OLECONTF dwOleContF, ENUM_CONTROLS_WHICH_FLAGS dwWhich, IEnumUnknown** ppenumUnk) mut
			{
				return VT.EnumControls(&this, dwOleContF, dwWhich, ppenumUnk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVBGetControl *self, OLECONTF dwOleContF, ENUM_CONTROLS_WHICH_FLAGS dwWhich, IEnumUnknown** ppenumUnk) EnumControls;
			}
		}
		[CRepr]
		public struct IGetOleObject : IUnknown
		{
			public const new Guid IID = .(0x8a701da0, 0x4feb, 0x101b, 0xa8, 0x2e, 0x08, 0x00, 0x2b, 0x2b, 0x23, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOleObject(Guid* riid, void** ppvObj) mut
			{
				return VT.GetOleObject(&this, riid, ppvObj);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGetOleObject *self, Guid* riid, void** ppvObj) GetOleObject;
			}
		}
		[CRepr]
		public struct IVBFormat : IUnknown
		{
			public const new Guid IID = .(0x9849fd60, 0x3768, 0x101b, 0x8d, 0x72, 0xae, 0x61, 0x64, 0xff, 0xe3, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Format(VARIANT* vData, BSTR bstrFormat, void* lpBuffer, uint16 cb, int32 lcid, int16 sFirstDayOfWeek, uint16 sFirstWeekOfYear, uint16* rcb) mut
			{
				return VT.Format(&this, vData, bstrFormat, lpBuffer, cb, lcid, sFirstDayOfWeek, sFirstWeekOfYear, rcb);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVBFormat *self, VARIANT* vData, BSTR bstrFormat, void* lpBuffer, uint16 cb, int32 lcid, int16 sFirstDayOfWeek, uint16 sFirstWeekOfYear, uint16* rcb) Format;
			}
		}
		[CRepr]
		public struct IGetVBAObject : IUnknown
		{
			public const new Guid IID = .(0x91733a60, 0x3f4c, 0x101b, 0xa3, 0xf6, 0x00, 0xaa, 0x00, 0x34, 0xe4, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObject(Guid* riid, void** ppvObj, uint32 dwReserved) mut
			{
				return VT.GetObject(&this, riid, ppvObj, dwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGetVBAObject *self, Guid* riid, void** ppvObj, uint32 dwReserved) GetObject;
			}
		}
		[CRepr]
		public struct IOleDocument : IUnknown
		{
			public const new Guid IID = .(0xb722bcc5, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateView(IOleInPlaceSite* pIPSite, IStream* pstm, uint32 dwReserved, IOleDocumentView** ppView) mut
			{
				return VT.CreateView(&this, pIPSite, pstm, dwReserved, ppView);
			}
			public HRESULT GetDocMiscStatus(uint32* pdwStatus) mut
			{
				return VT.GetDocMiscStatus(&this, pdwStatus);
			}
			public HRESULT EnumViews(IEnumOleDocumentViews** ppEnum, IOleDocumentView** ppView) mut
			{
				return VT.EnumViews(&this, ppEnum, ppView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleDocument *self, IOleInPlaceSite* pIPSite, IStream* pstm, uint32 dwReserved, IOleDocumentView** ppView) CreateView;
				public new function HRESULT(IOleDocument *self, uint32* pdwStatus) GetDocMiscStatus;
				public new function HRESULT(IOleDocument *self, IEnumOleDocumentViews** ppEnum, IOleDocumentView** ppView) EnumViews;
			}
		}
		[CRepr]
		public struct IOleDocumentSite : IUnknown
		{
			public const new Guid IID = .(0xb722bcc7, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateMe(IOleDocumentView* pViewToActivate) mut
			{
				return VT.ActivateMe(&this, pViewToActivate);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleDocumentSite *self, IOleDocumentView* pViewToActivate) ActivateMe;
			}
		}
		[CRepr]
		public struct IOleDocumentView : IUnknown
		{
			public const new Guid IID = .(0xb722bcc6, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInPlaceSite(IOleInPlaceSite* pIPSite) mut
			{
				return VT.SetInPlaceSite(&this, pIPSite);
			}
			public HRESULT GetInPlaceSite(IOleInPlaceSite** ppIPSite) mut
			{
				return VT.GetInPlaceSite(&this, ppIPSite);
			}
			public HRESULT GetDocument(IUnknown** ppunk) mut
			{
				return VT.GetDocument(&this, ppunk);
			}
			public HRESULT SetRect(RECT* prcView) mut
			{
				return VT.SetRect(&this, prcView);
			}
			public HRESULT GetRect(RECT* prcView) mut
			{
				return VT.GetRect(&this, prcView);
			}
			public HRESULT SetRectComplex(RECT* prcView, RECT* prcHScroll, RECT* prcVScroll, RECT* prcSizeBox) mut
			{
				return VT.SetRectComplex(&this, prcView, prcHScroll, prcVScroll, prcSizeBox);
			}
			public HRESULT Show(BOOL fShow) mut
			{
				return VT.Show(&this, fShow);
			}
			public HRESULT UIActivate(BOOL fUIActivate) mut
			{
				return VT.UIActivate(&this, fUIActivate);
			}
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT CloseView(uint32 dwReserved) mut
			{
				return VT.CloseView(&this, dwReserved);
			}
			public HRESULT SaveViewState(IStream* pstm) mut
			{
				return VT.SaveViewState(&this, pstm);
			}
			public HRESULT ApplyViewState(IStream* pstm) mut
			{
				return VT.ApplyViewState(&this, pstm);
			}
			public HRESULT Clone(IOleInPlaceSite* pIPSiteNew, IOleDocumentView** ppViewNew) mut
			{
				return VT.Clone(&this, pIPSiteNew, ppViewNew);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleDocumentView *self, IOleInPlaceSite* pIPSite) SetInPlaceSite;
				public new function HRESULT(IOleDocumentView *self, IOleInPlaceSite** ppIPSite) GetInPlaceSite;
				public new function HRESULT(IOleDocumentView *self, IUnknown** ppunk) GetDocument;
				public new function HRESULT(IOleDocumentView *self, RECT* prcView) SetRect;
				public new function HRESULT(IOleDocumentView *self, RECT* prcView) GetRect;
				public new function HRESULT(IOleDocumentView *self, RECT* prcView, RECT* prcHScroll, RECT* prcVScroll, RECT* prcSizeBox) SetRectComplex;
				public new function HRESULT(IOleDocumentView *self, BOOL fShow) Show;
				public new function HRESULT(IOleDocumentView *self, BOOL fUIActivate) UIActivate;
				public new function HRESULT(IOleDocumentView *self) Open;
				public new function HRESULT(IOleDocumentView *self, uint32 dwReserved) CloseView;
				public new function HRESULT(IOleDocumentView *self, IStream* pstm) SaveViewState;
				public new function HRESULT(IOleDocumentView *self, IStream* pstm) ApplyViewState;
				public new function HRESULT(IOleDocumentView *self, IOleInPlaceSite* pIPSiteNew, IOleDocumentView** ppViewNew) Clone;
			}
		}
		[CRepr]
		public struct IEnumOleDocumentViews : IUnknown
		{
			public const new Guid IID = .(0xb722bcc8, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cViews, IOleDocumentView** rgpView, uint32* pcFetched) mut
			{
				return VT.Next(&this, cViews, rgpView, pcFetched);
			}
			public HRESULT Skip(uint32 cViews) mut
			{
				return VT.Skip(&this, cViews);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumOleDocumentViews** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumOleDocumentViews *self, uint32 cViews, IOleDocumentView** rgpView, uint32* pcFetched) Next;
				public new function HRESULT(IEnumOleDocumentViews *self, uint32 cViews) Skip;
				public new function HRESULT(IEnumOleDocumentViews *self) Reset;
				public new function HRESULT(IEnumOleDocumentViews *self, IEnumOleDocumentViews** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IContinueCallback : IUnknown
		{
			public const new Guid IID = .(0xb722bcca, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FContinue() mut
			{
				return VT.FContinue(&this);
			}
			public HRESULT FContinuePrinting(int32 nCntPrinted, int32 nCurPage, PWSTR pwszPrintStatus) mut
			{
				return VT.FContinuePrinting(&this, nCntPrinted, nCurPage, pwszPrintStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContinueCallback *self) FContinue;
				public new function HRESULT(IContinueCallback *self, int32 nCntPrinted, int32 nCurPage, PWSTR pwszPrintStatus) FContinuePrinting;
			}
		}
		[CRepr]
		public struct IPrint : IUnknown
		{
			public const new Guid IID = .(0xb722bcc9, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialPageNum(int32 nFirstPage) mut
			{
				return VT.SetInitialPageNum(&this, nFirstPage);
			}
			public HRESULT GetPageInfo(int32* pnFirstPage, int32* pcPages) mut
			{
				return VT.GetPageInfo(&this, pnFirstPage, pcPages);
			}
			public HRESULT Print(uint32 grfFlags, DVTARGETDEVICE** pptd, PAGESET** ppPageSet, STGMEDIUM* pstgmOptions, IContinueCallback* pcallback, int32 nFirstPage, int32* pcPagesPrinted, int32* pnLastPage) mut
			{
				return VT.Print(&this, grfFlags, pptd, ppPageSet, pstgmOptions, pcallback, nFirstPage, pcPagesPrinted, pnLastPage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPrint *self, int32 nFirstPage) SetInitialPageNum;
				public new function HRESULT(IPrint *self, int32* pnFirstPage, int32* pcPages) GetPageInfo;
				public new function HRESULT(IPrint *self, uint32 grfFlags, DVTARGETDEVICE** pptd, PAGESET** ppPageSet, STGMEDIUM* pstgmOptions, IContinueCallback* pcallback, int32 nFirstPage, int32* pcPagesPrinted, int32* pnLastPage) Print;
			}
		}
		[CRepr]
		public struct IOleCommandTarget : IUnknown
		{
			public const new Guid IID = .(0xb722bccb, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryStatus(Guid* pguidCmdGroup, uint32 cCmds, OLECMD* prgCmds, OLECMDTEXT* pCmdText) mut
			{
				return VT.QueryStatus(&this, pguidCmdGroup, cCmds, prgCmds, pCmdText);
			}
			public HRESULT Exec(Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) mut
			{
				return VT.Exec(&this, pguidCmdGroup, nCmdID, nCmdexecopt, pvaIn, pvaOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleCommandTarget *self, Guid* pguidCmdGroup, uint32 cCmds, OLECMD* prgCmds, OLECMDTEXT* pCmdText) QueryStatus;
				public new function HRESULT(IOleCommandTarget *self, Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) Exec;
			}
		}
		[CRepr]
		public struct IZoomEvents : IUnknown
		{
			public const new Guid IID = .(0x41b68150, 0x904c, 0x4e17, 0xa0, 0xba, 0xa4, 0x38, 0x18, 0x2e, 0x35, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnZoomPercentChanged(uint32 ulZoomPercent) mut
			{
				return VT.OnZoomPercentChanged(&this, ulZoomPercent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IZoomEvents *self, uint32 ulZoomPercent) OnZoomPercentChanged;
			}
		}
		[CRepr]
		public struct IProtectFocus : IUnknown
		{
			public const new Guid IID = .(0xd81f90a3, 0x8156, 0x44f7, 0xad, 0x28, 0x5a, 0xbb, 0x87, 0x00, 0x32, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllowFocusChange(BOOL* pfAllow) mut
			{
				return VT.AllowFocusChange(&this, pfAllow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProtectFocus *self, BOOL* pfAllow) AllowFocusChange;
			}
		}
		[CRepr]
		public struct IProtectedModeMenuServices : IUnknown
		{
			public const new Guid IID = .(0x73c105ee, 0x9dff, 0x4a07, 0xb8, 0x3c, 0x7e, 0xff, 0x29, 0x0c, 0x26, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateMenu(HMENU* phMenu) mut
			{
				return VT.CreateMenu(&this, phMenu);
			}
			public HRESULT LoadMenu(PWSTR pszModuleName, PWSTR pszMenuName, HMENU* phMenu) mut
			{
				return VT.LoadMenu(&this, pszModuleName, pszMenuName, phMenu);
			}
			public HRESULT LoadMenuID(PWSTR pszModuleName, uint16 wResourceID, HMENU* phMenu) mut
			{
				return VT.LoadMenuID(&this, pszModuleName, wResourceID, phMenu);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProtectedModeMenuServices *self, HMENU* phMenu) CreateMenu;
				public new function HRESULT(IProtectedModeMenuServices *self, PWSTR pszModuleName, PWSTR pszMenuName, HMENU* phMenu) LoadMenu;
				public new function HRESULT(IProtectedModeMenuServices *self, PWSTR pszModuleName, uint16 wResourceID, HMENU* phMenu) LoadMenuID;
			}
		}
		[CRepr]
		public struct IOleUILinkContainerW : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetNextLink(uint32 dwLink) mut
			{
				return VT.GetNextLink(&this, dwLink);
			}
			public HRESULT SetLinkUpdateOptions(uint32 dwLink, uint32 dwUpdateOpt) mut
			{
				return VT.SetLinkUpdateOptions(&this, dwLink, dwUpdateOpt);
			}
			public HRESULT GetLinkUpdateOptions(uint32 dwLink, uint32* lpdwUpdateOpt) mut
			{
				return VT.GetLinkUpdateOptions(&this, dwLink, lpdwUpdateOpt);
			}
			public HRESULT SetLinkSource(uint32 dwLink, PWSTR lpszDisplayName, uint32 lenFileName, uint32* pchEaten, BOOL fValidateSource) mut
			{
				return VT.SetLinkSource(&this, dwLink, lpszDisplayName, lenFileName, pchEaten, fValidateSource);
			}
			public HRESULT GetLinkSource(uint32 dwLink, PWSTR* lplpszDisplayName, uint32* lplenFileName, PWSTR* lplpszFullLinkType, PWSTR* lplpszShortLinkType, BOOL* lpfSourceAvailable, BOOL* lpfIsSelected) mut
			{
				return VT.GetLinkSource(&this, dwLink, lplpszDisplayName, lplenFileName, lplpszFullLinkType, lplpszShortLinkType, lpfSourceAvailable, lpfIsSelected);
			}
			public HRESULT OpenLinkSource(uint32 dwLink) mut
			{
				return VT.OpenLinkSource(&this, dwLink);
			}
			public HRESULT UpdateLink(uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) mut
			{
				return VT.UpdateLink(&this, dwLink, fErrorMessage, fReserved);
			}
			public HRESULT CancelLink(uint32 dwLink) mut
			{
				return VT.CancelLink(&this, dwLink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IOleUILinkContainerW *self, uint32 dwLink) GetNextLink;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink, uint32 dwUpdateOpt) SetLinkUpdateOptions;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink, uint32* lpdwUpdateOpt) GetLinkUpdateOptions;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink, PWSTR lpszDisplayName, uint32 lenFileName, uint32* pchEaten, BOOL fValidateSource) SetLinkSource;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink, PWSTR* lplpszDisplayName, uint32* lplenFileName, PWSTR* lplpszFullLinkType, PWSTR* lplpszShortLinkType, BOOL* lpfSourceAvailable, BOOL* lpfIsSelected) GetLinkSource;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink) OpenLinkSource;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) UpdateLink;
				public new function HRESULT(IOleUILinkContainerW *self, uint32 dwLink) CancelLink;
			}
		}
		[CRepr]
		public struct IOleUILinkContainerA : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetNextLink(uint32 dwLink) mut
			{
				return VT.GetNextLink(&this, dwLink);
			}
			public HRESULT SetLinkUpdateOptions(uint32 dwLink, uint32 dwUpdateOpt) mut
			{
				return VT.SetLinkUpdateOptions(&this, dwLink, dwUpdateOpt);
			}
			public HRESULT GetLinkUpdateOptions(uint32 dwLink, uint32* lpdwUpdateOpt) mut
			{
				return VT.GetLinkUpdateOptions(&this, dwLink, lpdwUpdateOpt);
			}
			public HRESULT SetLinkSource(uint32 dwLink, PSTR lpszDisplayName, uint32 lenFileName, uint32* pchEaten, BOOL fValidateSource) mut
			{
				return VT.SetLinkSource(&this, dwLink, lpszDisplayName, lenFileName, pchEaten, fValidateSource);
			}
			public HRESULT GetLinkSource(uint32 dwLink, PSTR* lplpszDisplayName, uint32* lplenFileName, PSTR* lplpszFullLinkType, PSTR* lplpszShortLinkType, BOOL* lpfSourceAvailable, BOOL* lpfIsSelected) mut
			{
				return VT.GetLinkSource(&this, dwLink, lplpszDisplayName, lplenFileName, lplpszFullLinkType, lplpszShortLinkType, lpfSourceAvailable, lpfIsSelected);
			}
			public HRESULT OpenLinkSource(uint32 dwLink) mut
			{
				return VT.OpenLinkSource(&this, dwLink);
			}
			public HRESULT UpdateLink(uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) mut
			{
				return VT.UpdateLink(&this, dwLink, fErrorMessage, fReserved);
			}
			public HRESULT CancelLink(uint32 dwLink) mut
			{
				return VT.CancelLink(&this, dwLink);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IOleUILinkContainerA *self, uint32 dwLink) GetNextLink;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink, uint32 dwUpdateOpt) SetLinkUpdateOptions;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink, uint32* lpdwUpdateOpt) GetLinkUpdateOptions;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink, PSTR lpszDisplayName, uint32 lenFileName, uint32* pchEaten, BOOL fValidateSource) SetLinkSource;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink, PSTR* lplpszDisplayName, uint32* lplenFileName, PSTR* lplpszFullLinkType, PSTR* lplpszShortLinkType, BOOL* lpfSourceAvailable, BOOL* lpfIsSelected) GetLinkSource;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink) OpenLinkSource;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) UpdateLink;
				public new function HRESULT(IOleUILinkContainerA *self, uint32 dwLink) CancelLink;
			}
		}
		[CRepr]
		public struct IOleUIObjInfoW : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectInfo(uint32 dwObject, uint32* lpdwObjSize, PWSTR* lplpszLabel, PWSTR* lplpszType, PWSTR* lplpszShortType, PWSTR* lplpszLocation) mut
			{
				return VT.GetObjectInfo(&this, dwObject, lpdwObjSize, lplpszLabel, lplpszType, lplpszShortType, lplpszLocation);
			}
			public HRESULT GetConvertInfo(uint32 dwObject, Guid* lpClassID, uint16* lpwFormat, Guid* lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) mut
			{
				return VT.GetConvertInfo(&this, dwObject, lpClassID, lpwFormat, lpConvertDefaultClassID, lplpClsidExclude, lpcClsidExclude);
			}
			public HRESULT ConvertObject(uint32 dwObject, Guid* clsidNew) mut
			{
				return VT.ConvertObject(&this, dwObject, clsidNew);
			}
			public HRESULT GetViewInfo(uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) mut
			{
				return VT.GetViewInfo(&this, dwObject, phMetaPict, pdvAspect, pnCurrentScale);
			}
			public HRESULT SetViewInfo(uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) mut
			{
				return VT.SetViewInfo(&this, dwObject, hMetaPict, dvAspect, nCurrentScale, bRelativeToOrig);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleUIObjInfoW *self, uint32 dwObject, uint32* lpdwObjSize, PWSTR* lplpszLabel, PWSTR* lplpszType, PWSTR* lplpszShortType, PWSTR* lplpszLocation) GetObjectInfo;
				public new function HRESULT(IOleUIObjInfoW *self, uint32 dwObject, Guid* lpClassID, uint16* lpwFormat, Guid* lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) GetConvertInfo;
				public new function HRESULT(IOleUIObjInfoW *self, uint32 dwObject, Guid* clsidNew) ConvertObject;
				public new function HRESULT(IOleUIObjInfoW *self, uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) GetViewInfo;
				public new function HRESULT(IOleUIObjInfoW *self, uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) SetViewInfo;
			}
		}
		[CRepr]
		public struct IOleUIObjInfoA : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectInfo(uint32 dwObject, uint32* lpdwObjSize, PSTR* lplpszLabel, PSTR* lplpszType, PSTR* lplpszShortType, PSTR* lplpszLocation) mut
			{
				return VT.GetObjectInfo(&this, dwObject, lpdwObjSize, lplpszLabel, lplpszType, lplpszShortType, lplpszLocation);
			}
			public HRESULT GetConvertInfo(uint32 dwObject, Guid* lpClassID, uint16* lpwFormat, Guid* lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) mut
			{
				return VT.GetConvertInfo(&this, dwObject, lpClassID, lpwFormat, lpConvertDefaultClassID, lplpClsidExclude, lpcClsidExclude);
			}
			public HRESULT ConvertObject(uint32 dwObject, Guid* clsidNew) mut
			{
				return VT.ConvertObject(&this, dwObject, clsidNew);
			}
			public HRESULT GetViewInfo(uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) mut
			{
				return VT.GetViewInfo(&this, dwObject, phMetaPict, pdvAspect, pnCurrentScale);
			}
			public HRESULT SetViewInfo(uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) mut
			{
				return VT.SetViewInfo(&this, dwObject, hMetaPict, dvAspect, nCurrentScale, bRelativeToOrig);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOleUIObjInfoA *self, uint32 dwObject, uint32* lpdwObjSize, PSTR* lplpszLabel, PSTR* lplpszType, PSTR* lplpszShortType, PSTR* lplpszLocation) GetObjectInfo;
				public new function HRESULT(IOleUIObjInfoA *self, uint32 dwObject, Guid* lpClassID, uint16* lpwFormat, Guid* lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) GetConvertInfo;
				public new function HRESULT(IOleUIObjInfoA *self, uint32 dwObject, Guid* clsidNew) ConvertObject;
				public new function HRESULT(IOleUIObjInfoA *self, uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) GetViewInfo;
				public new function HRESULT(IOleUIObjInfoA *self, uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) SetViewInfo;
			}
		}
		[CRepr]
		public struct IOleUILinkInfoW : IOleUILinkContainerW
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLastUpdate(uint32 dwLink, FILETIME* lpLastUpdate) mut
			{
				return VT.GetLastUpdate(&this, dwLink, lpLastUpdate);
			}
			[CRepr]
			public struct VTable : IOleUILinkContainerW.VTable
			{
				public new function HRESULT(IOleUILinkInfoW *self, uint32 dwLink, FILETIME* lpLastUpdate) GetLastUpdate;
			}
		}
		[CRepr]
		public struct IOleUILinkInfoA : IOleUILinkContainerA
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLastUpdate(uint32 dwLink, FILETIME* lpLastUpdate) mut
			{
				return VT.GetLastUpdate(&this, dwLink, lpLastUpdate);
			}
			[CRepr]
			public struct VTable : IOleUILinkContainerA.VTable
			{
				public new function HRESULT(IOleUILinkInfoA *self, uint32 dwLink, FILETIME* lpLastUpdate) GetLastUpdate;
			}
		}
		[CRepr]
		public struct IDispatchEx : IDispatch
		{
			public const new Guid IID = .(0xa6ef9860, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDispID(BSTR bstrName, uint32 grfdex, int32* pid) mut
			{
				return VT.GetDispID(&this, bstrName, grfdex, pid);
			}
			public HRESULT InvokeEx(int32 id, uint32 lcid, uint16 wFlags, DISPPARAMS* pdp, VARIANT* pvarRes, EXCEPINFO* pei, IServiceProvider* pspCaller) mut
			{
				return VT.InvokeEx(&this, id, lcid, wFlags, pdp, pvarRes, pei, pspCaller);
			}
			public HRESULT DeleteMemberByName(BSTR bstrName, uint32 grfdex) mut
			{
				return VT.DeleteMemberByName(&this, bstrName, grfdex);
			}
			public HRESULT DeleteMemberByDispID(int32 id) mut
			{
				return VT.DeleteMemberByDispID(&this, id);
			}
			public HRESULT GetMemberProperties(int32 id, uint32 grfdexFetch, uint32* pgrfdex) mut
			{
				return VT.GetMemberProperties(&this, id, grfdexFetch, pgrfdex);
			}
			public HRESULT GetMemberName(int32 id, BSTR* pbstrName) mut
			{
				return VT.GetMemberName(&this, id, pbstrName);
			}
			public HRESULT GetNextDispID(uint32 grfdex, int32 id, int32* pid) mut
			{
				return VT.GetNextDispID(&this, grfdex, id, pid);
			}
			public HRESULT GetNameSpaceParent(IUnknown** ppunk) mut
			{
				return VT.GetNameSpaceParent(&this, ppunk);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IDispatchEx *self, BSTR bstrName, uint32 grfdex, int32* pid) GetDispID;
				public new function HRESULT(IDispatchEx *self, int32 id, uint32 lcid, uint16 wFlags, DISPPARAMS* pdp, VARIANT* pvarRes, EXCEPINFO* pei, IServiceProvider* pspCaller) InvokeEx;
				public new function HRESULT(IDispatchEx *self, BSTR bstrName, uint32 grfdex) DeleteMemberByName;
				public new function HRESULT(IDispatchEx *self, int32 id) DeleteMemberByDispID;
				public new function HRESULT(IDispatchEx *self, int32 id, uint32 grfdexFetch, uint32* pgrfdex) GetMemberProperties;
				public new function HRESULT(IDispatchEx *self, int32 id, BSTR* pbstrName) GetMemberName;
				public new function HRESULT(IDispatchEx *self, uint32 grfdex, int32 id, int32* pid) GetNextDispID;
				public new function HRESULT(IDispatchEx *self, IUnknown** ppunk) GetNameSpaceParent;
			}
		}
		[CRepr]
		public struct IDispError : IUnknown
		{
			public const new Guid IID = .(0xa6ef9861, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryErrorInfo(Guid guidErrorType, IDispError** ppde) mut
			{
				return VT.QueryErrorInfo(&this, guidErrorType, ppde);
			}
			public HRESULT GetNext(IDispError** ppde) mut
			{
				return VT.GetNext(&this, ppde);
			}
			public HRESULT GetHresult(HRESULT* phr) mut
			{
				return VT.GetHresult(&this, phr);
			}
			public HRESULT GetSource(BSTR* pbstrSource) mut
			{
				return VT.GetSource(&this, pbstrSource);
			}
			public HRESULT GetHelpInfo(BSTR* pbstrFileName, uint32* pdwContext) mut
			{
				return VT.GetHelpInfo(&this, pbstrFileName, pdwContext);
			}
			public HRESULT GetDescription(BSTR* pbstrDescription) mut
			{
				return VT.GetDescription(&this, pbstrDescription);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDispError *self, Guid guidErrorType, IDispError** ppde) QueryErrorInfo;
				public new function HRESULT(IDispError *self, IDispError** ppde) GetNext;
				public new function HRESULT(IDispError *self, HRESULT* phr) GetHresult;
				public new function HRESULT(IDispError *self, BSTR* pbstrSource) GetSource;
				public new function HRESULT(IDispError *self, BSTR* pbstrFileName, uint32* pdwContext) GetHelpInfo;
				public new function HRESULT(IDispError *self, BSTR* pbstrDescription) GetDescription;
			}
		}
		[CRepr]
		public struct IVariantChangeType : IUnknown
		{
			public const new Guid IID = .(0xa6ef9862, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ChangeType(VARIANT* pvarDst, VARIANT* pvarSrc, uint32 lcid, uint16 vtNew) mut
			{
				return VT.ChangeType(&this, pvarDst, pvarSrc, lcid, vtNew);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVariantChangeType *self, VARIANT* pvarDst, VARIANT* pvarSrc, uint32 lcid, uint16 vtNew) ChangeType;
			}
		}
		[CRepr]
		public struct IObjectIdentity : IUnknown
		{
			public const new Guid IID = .(0xca04b7e6, 0x0d21, 0x11d1, 0x8c, 0xc5, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsEqualObject(IUnknown* punk) mut
			{
				return VT.IsEqualObject(&this, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectIdentity *self, IUnknown* punk) IsEqualObject;
			}
		}
		[CRepr]
		public struct ICanHandleException : IUnknown
		{
			public const new Guid IID = .(0xc5598e60, 0xb307, 0x11d1, 0xb2, 0x7d, 0x00, 0x60, 0x08, 0xc3, 0xfb, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanHandleException(EXCEPINFO* pExcepInfo, VARIANT* pvar) mut
			{
				return VT.CanHandleException(&this, pExcepInfo, pvar);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICanHandleException *self, EXCEPINFO* pExcepInfo, VARIANT* pvar) CanHandleException;
			}
		}
		[CRepr]
		public struct IProvideRuntimeContext : IUnknown
		{
			public const new Guid IID = .(0x10e2414a, 0xec59, 0x49d2, 0xbc, 0x51, 0x5a, 0xdd, 0x2c, 0x36, 0xfe, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentSourceContext(uint* pdwContext, int16* pfExecutingGlobalCode) mut
			{
				return VT.GetCurrentSourceContext(&this, pdwContext, pfExecutingGlobalCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProvideRuntimeContext *self, uint* pdwContext, int16* pfExecutingGlobalCode) GetCurrentSourceContext;
			}
		}
		
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
		public static extern HRESULT SafeArraySetRecordInfo(SAFEARRAY* psa, IRecordInfo* prinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SafeArrayGetRecordInfo(SAFEARRAY* psa, IRecordInfo** prinfo);
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
		public static extern HRESULT VarUI1FromDisp(IDispatch* pdispIn, uint32 lcid, uint8* pbOut);
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
		public static extern HRESULT VarI2FromDisp(IDispatch* pdispIn, uint32 lcid, int16* psOut);
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
		public static extern HRESULT VarI4FromDisp(IDispatch* pdispIn, uint32 lcid, int32* plOut);
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
		public static extern HRESULT VarI8FromDisp(IDispatch* pdispIn, uint32 lcid, int64* pi64Out);
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
		public static extern HRESULT VarR4FromDisp(IDispatch* pdispIn, uint32 lcid, float* pfltOut);
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
		public static extern HRESULT VarR8FromDisp(IDispatch* pdispIn, uint32 lcid, double* pdblOut);
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
		public static extern HRESULT VarDateFromDisp(IDispatch* pdispIn, uint32 lcid, double* pdateOut);
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
		public static extern HRESULT VarCyFromDisp(IDispatch* pdispIn, uint32 lcid, CY* pcyOut);
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
		public static extern HRESULT VarBstrFromDisp(IDispatch* pdispIn, uint32 lcid, uint32 dwFlags, BSTR* pbstrOut);
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
		public static extern HRESULT VarBoolFromDisp(IDispatch* pdispIn, uint32 lcid, int16* pboolOut);
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
		public static extern HRESULT VarI1FromDisp(IDispatch* pdispIn, uint32 lcid, PSTR pcOut);
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
		public static extern HRESULT VarUI2FromDisp(IDispatch* pdispIn, uint32 lcid, uint16* puiOut);
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
		public static extern HRESULT VarUI4FromDisp(IDispatch* pdispIn, uint32 lcid, uint32* pulOut);
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
		public static extern HRESULT VarUI8FromDisp(IDispatch* pdispIn, uint32 lcid, uint64* pi64Out);
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
		public static extern HRESULT VarDecFromDisp(IDispatch* pdispIn, uint32 lcid, DECIMAL* pdecOut);
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
		public static extern HRESULT LoadTypeLib(PWSTR szFile, ITypeLib** pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadTypeLibEx(PWSTR szFile, REGKIND regkind, ITypeLib** pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LoadRegTypeLib(Guid* rguid, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, ITypeLib** pptlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT QueryPathOfRegTypeLib(Guid* guid, uint16 wMaj, uint16 wMin, uint32 lcid, uint16** lpbstrPathName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterTypeLib(ITypeLib* ptlib, PWSTR szFullPath, PWSTR szHelpDir);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnRegisterTypeLib(Guid* libID, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, SYSKIND syskind);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterTypeLibForUser(ITypeLib* ptlib, PWSTR szFullPath, PWSTR szHelpDir);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnRegisterTypeLibForUser(Guid* libID, uint16 wMajorVerNum, uint16 wMinorVerNum, uint32 lcid, SYSKIND syskind);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateTypeLib(SYSKIND syskind, PWSTR szFile, ICreateTypeLib** ppctlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateTypeLib2(SYSKIND syskind, PWSTR szFile, ICreateTypeLib2** ppctlib);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispGetParam(DISPPARAMS* pdispparams, uint32 position, uint16 vtTarg, VARIANT* pvarResult, uint32* puArgErr);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispGetIDsOfNames(ITypeInfo* ptinfo, PWSTR* rgszNames, uint32 cNames, int32* rgdispid);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispInvoke(void* _this, ITypeInfo* ptinfo, int32 dispidMember, uint16 wFlags, DISPPARAMS* pparams, VARIANT* pvarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateDispTypeInfo(INTERFACEDATA* pidata, uint32 lcid, ITypeInfo** pptinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdDispatch(IUnknown* punkOuter, void* pvThis, ITypeInfo* ptinfo, IUnknown** ppunkStdDisp);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DispCallFunc(void* pvInstance, uint oVft, CALLCONV cc, uint16 vtReturn, uint32 cActuals, uint16* prgvt, VARIANT** prgpvarg, VARIANT* pvargResult);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterActiveObject(IUnknown* punk, Guid* rclsid, uint32 dwFlags, uint32* pdwRegister);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeActiveObject(uint32 dwRegister, void* pvReserved);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetActiveObject(Guid* rclsid, void* pvReserved, IUnknown** ppunk);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateErrorInfo(ICreateErrorInfo** pperrinfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRecordInfoFromTypeInfo(ITypeInfo* pTypeInfo, IRecordInfo** ppRecInfo);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRecordInfoFromGuids(Guid* rGuidTypeLib, uint32 uVerMajor, uint32 uVerMinor, uint32 lcid, Guid* rGuidTypeInfo, IRecordInfo** ppRecInfo);
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
		public static extern HRESULT OleQueryLinkFromData(IDataObject* pSrcDataObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleQueryCreateFromData(IDataObject* pSrcDataObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreate(Guid* rclsid, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateEx(Guid* rclsid, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromData(IDataObject* pSrcDataObj, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromDataEx(IDataObject* pSrcDataObj, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkFromData(IDataObject* pSrcDataObj, Guid* riid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkFromDataEx(IDataObject* pSrcDataObj, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateStaticFromData(IDataObject* pSrcDataObj, Guid* iid, uint32 renderopt, FORMATETC* pFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLink(IMoniker* pmkLinkSrc, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkEx(IMoniker* pmkLinkSrc, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkToFile(PWSTR lpszFileName, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateLinkToFileEx(PWSTR lpszFileName, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromFile(Guid* rclsid, PWSTR lpszFileName, Guid* riid, uint32 renderopt, FORMATETC* lpFormatEtc, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFromFileEx(Guid* rclsid, PWSTR lpszFileName, Guid* riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, uint32* rgAdvf, FORMATETC* rgFormatEtc, IAdviseSink* lpAdviseSink, uint32* rgdwConnection, IOleClientSite* pClientSite, IStorage* pStg, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoad(IStorage* pStg, Guid* riid, IOleClientSite* pClientSite, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSave(IPersistStorage* pPS, IStorage* pStg, BOOL fSameAsLoad);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadFromStream(IStream* pStm, Guid* iidInterface, void** ppvObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSaveToStream(IPersistStream* pPStm, IStream* pStm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetContainedObject(IUnknown* pUnknown, BOOL fContained);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleNoteObjectVisible(IUnknown* pUnknown, BOOL fVisible);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterDragDrop(HWND hwnd, IDropTarget* pDropTarget);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeDragDrop(HWND hwnd);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DoDragDrop(IDataObject* pDataObj, IDropSource* pDropSource, uint32 dwOKEffects, uint32* pdwEffect);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetClipboard(IDataObject* pDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleGetClipboard(IDataObject** ppDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleGetClipboardWithEnterpriseInfo(IDataObject** dataObject, PWSTR* dataEnterpriseId, PWSTR* sourceDescription, PWSTR* targetDescription, PWSTR* dataDescription);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleFlushClipboard();
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleIsCurrentClipboard(IDataObject* pDataObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int OleCreateMenuDescriptor(HMENU hmenuCombined, OleMenuGroupWidths* lpMenuWidths);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSetMenuDescriptor(int holemenu, HWND hwndFrame, HWND hwndActiveObject, IOleInPlaceFrame* lpFrame, IOleInPlaceActiveObject* lpActiveObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDestroyMenuDescriptor(int holemenu);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleTranslateAccelerator(IOleInPlaceFrame* lpFrame, OIFI* lpFrameInfo, MSG* lpmsg);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OleDuplicateData(HANDLE hSrc, uint16 cfFormat, uint32 uiFlags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDraw(IUnknown* pUnknown, uint32 dwAspect, HDC hdcDraw, RECT* lprcBounds);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRun(IUnknown* pUnknown);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleIsRunning(IOleObject* pObject);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLockRunning(IUnknown* pUnknown, BOOL fLock, BOOL fLastUnlockCloses);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ReleaseStgMedium(STGMEDIUM* param0);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateOleAdviseHolder(IOleAdviseHolder** ppOAHolder);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateDefaultHandler(Guid* clsid, IUnknown* pUnkOuter, Guid* riid, void** lplpObj);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateEmbeddingHelper(Guid* clsid, IUnknown* pUnkOuter, uint32 flags, IClassFactory* pCF, Guid* riid, void** lplpObj);
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
		public static extern HRESULT OleRegEnumFormatEtc(Guid* clsid, uint32 dwDirection, IEnumFORMATETC** ppenum);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleRegEnumVerbs(Guid* clsid, IEnumOLEVERB** ppenum);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleDoAutoConvert(IStorage* pStg, Guid* pClsidNew);
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
		public static extern HRESULT OleCreatePropertyFrame(HWND hwndOwner, uint32 x, uint32 y, PWSTR lpszCaption, uint32 cObjects, IUnknown** ppUnk, uint32 cPages, Guid* pPageClsID, uint32 lcid, uint32 dwReserved, void* pvReserved);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreatePropertyFrameIndirect(OCPFIPARAMS* lpParams);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleTranslateColor(uint32 clr, HPALETTE hpal, uint32* lpcolorref);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreateFontIndirect(FONTDESC* lpFontDesc, Guid* riid, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleCreatePictureIndirect(PICTDESC* lpPictDesc, Guid* riid, BOOL fOwn, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPicture(IStream* lpstream, int32 lSize, BOOL fRunmode, Guid* riid, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureEx(IStream* lpstream, int32 lSize, BOOL fRunmode, Guid* riid, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, void** lplpvObj);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPicturePath(PWSTR szURLorPath, IUnknown* punkCaller, uint32 dwReserved, uint32 clrReserved, Guid* riid, void** ppvRet);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureFile(VARIANT varFileName, IDispatch** lplpdispPicture);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleLoadPictureFileEx(VARIANT varFileName, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, IDispatch** lplpdispPicture);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSavePictureFile(IDispatch* lpdispPicture, BSTR bstrFileName);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCURSOR OleIconToCursor(HINSTANCE hinstExe, HICON hIcon);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIAddVerbMenuW(IOleObject* lpOleObj, PWSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, HMENU* lphMenu);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIAddVerbMenuA(IOleObject* lpOleObj, PSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, HMENU* lphMenu);
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
		public static extern BOOL OleUIUpdateLinksW(IOleUILinkContainerW* lpOleUILinkCntr, HWND hwndParent, PWSTR lpszTitle, int32 cLinks);
		[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL OleUIUpdateLinksA(IOleUILinkContainerA* lpOleUILinkCntr, HWND hwndParent, PSTR lpszTitle, int32 cLinks);
		
	}
}
