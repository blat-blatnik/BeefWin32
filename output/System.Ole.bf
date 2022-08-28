namespace Win32.System.Ole;

using System;
using Win32.Foundation;
using Win32.Graphics.Gdi;
using Win32.Media;
using Win32.System.Com;
using Win32.System.Com.StructuredStorage;
using Win32.UI.Controls;
using Win32.UI.Controls.Dialogs;
using Win32.UI.WindowsAndMessaging;

static
{
	#region Constants
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
	#endregion
	
	#region Enums
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
		GCW_WCH_SIBLING = 1,
		GC_WCH_CONTAINER = 2,
		GC_WCH_CONTAINED = 3,
		GC_WCH_ALL = 4,
		GC_WCH_FREVERSEDIR = 134217728,
		GC_WCH_FONLYAFTER = 268435456,
		GC_WCH_FONLYBEFORE = 536870912,
		GC_WCH_FSELECTED = 1073741824,
	}
	public enum MULTICLASSINFO_FLAGS : uint32
	{
		GETTYPEINFO = 1,
		GETNUMRESERVEDDISPIDS = 2,
		GETIIDPRIMARY = 4,
		GETIIDSOURCE = 8,
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
		FAPPOBJECT = 1,
		FCANCREATE = 2,
		FLICENSED = 4,
		FPREDECLID = 8,
		FHIDDEN = 16,
		FCONTROL = 32,
		FDUAL = 64,
		FNONEXTENSIBLE = 128,
		FOLEAUTOMATION = 256,
		FRESTRICTED = 512,
		FAGGREGATABLE = 1024,
		FREPLACEABLE = 2048,
		FDISPATCHABLE = 4096,
		FREVERSEBIND = 8192,
		FPROXY = 16384,
	}
	public enum FUNCFLAGS : int32
	{
		FRESTRICTED = 1,
		FSOURCE = 2,
		FBINDABLE = 4,
		FREQUESTEDIT = 8,
		FDISPLAYBIND = 16,
		FDEFAULTBIND = 32,
		FHIDDEN = 64,
		FUSESGETLASTERROR = 128,
		FDEFAULTCOLLELEM = 256,
		FUIDEFAULT = 512,
		FNONBROWSABLE = 1024,
		FREPLACEABLE = 2048,
		FIMMEDIATEBIND = 4096,
	}
	public enum VARFLAGS : int32
	{
		FREADONLY = 1,
		FSOURCE = 2,
		FBINDABLE = 4,
		FREQUESTEDIT = 8,
		FDISPLAYBIND = 16,
		FDEFAULTBIND = 32,
		FHIDDEN = 64,
		FRESTRICTED = 128,
		FDEFAULTCOLLELEM = 256,
		FUIDEFAULT = 512,
		FNONBROWSABLE = 1024,
		FREPLACEABLE = 2048,
		FIMMEDIATEBIND = 4096,
	}
	public enum LIBFLAGS : int32
	{
		FRESTRICTED = 1,
		FCONTROL = 2,
		FHIDDEN = 4,
		FHASDISKIMAGE = 8,
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
	#endregion
	
	#region Function pointers
	public function uint32 LPFNOLEUIHOOK(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
	#endregion
	
	#region Structs
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
		public SAFEARRAYBOUND[1] rgsabound_array;
		
		public SAFEARRAYBOUND* rgsabound mut => &rgsabound_array[0];
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
		public using _Anonymous_e__Union Anonymous;
		
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
		public SAFEARRAYBOUND[1] rgbounds_array;
		
		public SAFEARRAYBOUND* rgbounds mut => &rgbounds_array[0];
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
		public using _Anonymous_e__Union Anonymous;
		
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
		public PAGERANGE[1] rgPages_array;
		
		public PAGERANGE* rgPages mut => &rgPages_array[0];
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
		public char16[1] rgwz_array;
		
		public char16* rgwz mut => &rgwz_array[0];
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
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct ICreateTypeInfo : IUnknown
	{
		public const new Guid IID = .(0x00020405, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetGuid(in Guid guid) mut => VT.SetGuid(ref this, guid);
		public HRESULT SetTypeFlags(uint32 uTypeFlags) mut => VT.SetTypeFlags(ref this, uTypeFlags);
		public HRESULT SetDocString(PWSTR pStrDoc) mut => VT.SetDocString(ref this, pStrDoc);
		public HRESULT SetHelpContext(uint32 dwHelpContext) mut => VT.SetHelpContext(ref this, dwHelpContext);
		public HRESULT SetVersion(uint16 wMajorVerNum, uint16 wMinorVerNum) mut => VT.SetVersion(ref this, wMajorVerNum, wMinorVerNum);
		public HRESULT AddRefTypeInfo(ref ITypeInfo pTInfo, ref uint32 phRefType) mut => VT.AddRefTypeInfo(ref this, ref pTInfo, ref phRefType);
		public HRESULT AddFuncDesc(uint32 index, ref FUNCDESC pFuncDesc) mut => VT.AddFuncDesc(ref this, index, ref pFuncDesc);
		public HRESULT AddImplType(uint32 index, uint32 hRefType) mut => VT.AddImplType(ref this, index, hRefType);
		public HRESULT SetImplTypeFlags(uint32 index, int32 implTypeFlags) mut => VT.SetImplTypeFlags(ref this, index, implTypeFlags);
		public HRESULT SetAlignment(uint16 cbAlignment) mut => VT.SetAlignment(ref this, cbAlignment);
		public HRESULT SetSchema(PWSTR pStrSchema) mut => VT.SetSchema(ref this, pStrSchema);
		public HRESULT AddVarDesc(uint32 index, ref VARDESC pVarDesc) mut => VT.AddVarDesc(ref this, index, ref pVarDesc);
		public HRESULT SetFuncAndParamNames(uint32 index, PWSTR* rgszNames, uint32 cNames) mut => VT.SetFuncAndParamNames(ref this, index, rgszNames, cNames);
		public HRESULT SetVarName(uint32 index, PWSTR szName) mut => VT.SetVarName(ref this, index, szName);
		public HRESULT SetTypeDescAlias(ref TYPEDESC pTDescAlias) mut => VT.SetTypeDescAlias(ref this, ref pTDescAlias);
		public HRESULT DefineFuncAsDllEntry(uint32 index, PWSTR szDllName, PWSTR szProcName) mut => VT.DefineFuncAsDllEntry(ref this, index, szDllName, szProcName);
		public HRESULT SetFuncDocString(uint32 index, PWSTR szDocString) mut => VT.SetFuncDocString(ref this, index, szDocString);
		public HRESULT SetVarDocString(uint32 index, PWSTR szDocString) mut => VT.SetVarDocString(ref this, index, szDocString);
		public HRESULT SetFuncHelpContext(uint32 index, uint32 dwHelpContext) mut => VT.SetFuncHelpContext(ref this, index, dwHelpContext);
		public HRESULT SetVarHelpContext(uint32 index, uint32 dwHelpContext) mut => VT.SetVarHelpContext(ref this, index, dwHelpContext);
		public HRESULT SetMops(uint32 index, BSTR bstrMops) mut => VT.SetMops(ref this, index, bstrMops);
		public HRESULT SetTypeIdldesc(ref IDLDESC pIdlDesc) mut => VT.SetTypeIdldesc(ref this, ref pIdlDesc);
		public HRESULT LayOut() mut => VT.LayOut(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, in Guid guid) SetGuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 uTypeFlags) SetTypeFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, PWSTR pStrDoc) SetDocString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 dwHelpContext) SetHelpContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint16 wMajorVerNum, uint16 wMinorVerNum) SetVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, ref ITypeInfo pTInfo, ref uint32 phRefType) AddRefTypeInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, ref FUNCDESC pFuncDesc) AddFuncDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, uint32 hRefType) AddImplType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, int32 implTypeFlags) SetImplTypeFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint16 cbAlignment) SetAlignment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, PWSTR pStrSchema) SetSchema;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, ref VARDESC pVarDesc) AddVarDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, PWSTR* rgszNames, uint32 cNames) SetFuncAndParamNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, PWSTR szName) SetVarName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, ref TYPEDESC pTDescAlias) SetTypeDescAlias;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, PWSTR szDllName, PWSTR szProcName) DefineFuncAsDllEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, PWSTR szDocString) SetFuncDocString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, PWSTR szDocString) SetVarDocString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, uint32 dwHelpContext) SetFuncHelpContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, uint32 dwHelpContext) SetVarHelpContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, uint32 index, BSTR bstrMops) SetMops;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self, ref IDLDESC pIdlDesc) SetTypeIdldesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo self) LayOut;
		}
	}
	[CRepr]
	public struct ICreateTypeInfo2 : ICreateTypeInfo
	{
		public const new Guid IID = .(0x0002040e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DeleteFuncDesc(uint32 index) mut => VT.DeleteFuncDesc(ref this, index);
		public HRESULT DeleteFuncDescByMemId(int32 memid, INVOKEKIND invKind) mut => VT.DeleteFuncDescByMemId(ref this, memid, invKind);
		public HRESULT DeleteVarDesc(uint32 index) mut => VT.DeleteVarDesc(ref this, index);
		public HRESULT DeleteVarDescByMemId(int32 memid) mut => VT.DeleteVarDescByMemId(ref this, memid);
		public HRESULT DeleteImplType(uint32 index) mut => VT.DeleteImplType(ref this, index);
		public HRESULT SetCustData(in Guid guid, ref VARIANT pVarVal) mut => VT.SetCustData(ref this, guid, ref pVarVal);
		public HRESULT SetFuncCustData(uint32 index, in Guid guid, ref VARIANT pVarVal) mut => VT.SetFuncCustData(ref this, index, guid, ref pVarVal);
		public HRESULT SetParamCustData(uint32 indexFunc, uint32 indexParam, in Guid guid, ref VARIANT pVarVal) mut => VT.SetParamCustData(ref this, indexFunc, indexParam, guid, ref pVarVal);
		public HRESULT SetVarCustData(uint32 index, in Guid guid, ref VARIANT pVarVal) mut => VT.SetVarCustData(ref this, index, guid, ref pVarVal);
		public HRESULT SetImplTypeCustData(uint32 index, in Guid guid, ref VARIANT pVarVal) mut => VT.SetImplTypeCustData(ref this, index, guid, ref pVarVal);
		public HRESULT SetHelpStringContext(uint32 dwHelpStringContext) mut => VT.SetHelpStringContext(ref this, dwHelpStringContext);
		public HRESULT SetFuncHelpStringContext(uint32 index, uint32 dwHelpStringContext) mut => VT.SetFuncHelpStringContext(ref this, index, dwHelpStringContext);
		public HRESULT SetVarHelpStringContext(uint32 index, uint32 dwHelpStringContext) mut => VT.SetVarHelpStringContext(ref this, index, dwHelpStringContext);
		public HRESULT Invalidate() mut => VT.Invalidate(ref this);
		public HRESULT SetName(PWSTR szName) mut => VT.SetName(ref this, szName);

		[CRepr]
		public struct VTable : ICreateTypeInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index) DeleteFuncDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, int32 memid, INVOKEKIND invKind) DeleteFuncDescByMemId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index) DeleteVarDesc;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, int32 memid) DeleteVarDescByMemId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index) DeleteImplType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, in Guid guid, ref VARIANT pVarVal) SetCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index, in Guid guid, ref VARIANT pVarVal) SetFuncCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 indexFunc, uint32 indexParam, in Guid guid, ref VARIANT pVarVal) SetParamCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index, in Guid guid, ref VARIANT pVarVal) SetVarCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index, in Guid guid, ref VARIANT pVarVal) SetImplTypeCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 dwHelpStringContext) SetHelpStringContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index, uint32 dwHelpStringContext) SetFuncHelpStringContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, uint32 index, uint32 dwHelpStringContext) SetVarHelpStringContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self) Invalidate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeInfo2 self, PWSTR szName) SetName;
		}
	}
	[CRepr]
	public struct ICreateTypeLib : IUnknown
	{
		public const new Guid IID = .(0x00020406, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateTypeInfo(PWSTR szName, TYPEKIND tkind, out ICreateTypeInfo* ppCTInfo) mut => VT.CreateTypeInfo(ref this, szName, tkind, out ppCTInfo);
		public HRESULT SetName(PWSTR szName) mut => VT.SetName(ref this, szName);
		public HRESULT SetVersion(uint16 wMajorVerNum, uint16 wMinorVerNum) mut => VT.SetVersion(ref this, wMajorVerNum, wMinorVerNum);
		public HRESULT SetGuid(in Guid guid) mut => VT.SetGuid(ref this, guid);
		public HRESULT SetDocString(PWSTR szDoc) mut => VT.SetDocString(ref this, szDoc);
		public HRESULT SetHelpFileName(PWSTR szHelpFileName) mut => VT.SetHelpFileName(ref this, szHelpFileName);
		public HRESULT SetHelpContext(uint32 dwHelpContext) mut => VT.SetHelpContext(ref this, dwHelpContext);
		public HRESULT SetLcid(uint32 lcid) mut => VT.SetLcid(ref this, lcid);
		public HRESULT SetLibFlags(uint32 uLibFlags) mut => VT.SetLibFlags(ref this, uLibFlags);
		public HRESULT SaveAllChanges() mut => VT.SaveAllChanges(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, PWSTR szName, TYPEKIND tkind, out ICreateTypeInfo* ppCTInfo) CreateTypeInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, PWSTR szName) SetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, uint16 wMajorVerNum, uint16 wMinorVerNum) SetVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, in Guid guid) SetGuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, PWSTR szDoc) SetDocString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, PWSTR szHelpFileName) SetHelpFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, uint32 dwHelpContext) SetHelpContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, uint32 lcid) SetLcid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self, uint32 uLibFlags) SetLibFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib self) SaveAllChanges;
		}
	}
	[CRepr]
	public struct ICreateTypeLib2 : ICreateTypeLib
	{
		public const new Guid IID = .(0x0002040f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DeleteTypeInfo(PWSTR szName) mut => VT.DeleteTypeInfo(ref this, szName);
		public HRESULT SetCustData(in Guid guid, ref VARIANT pVarVal) mut => VT.SetCustData(ref this, guid, ref pVarVal);
		public HRESULT SetHelpStringContext(uint32 dwHelpStringContext) mut => VT.SetHelpStringContext(ref this, dwHelpStringContext);
		public HRESULT SetHelpStringDll(PWSTR szFileName) mut => VT.SetHelpStringDll(ref this, szFileName);

		[CRepr]
		public struct VTable : ICreateTypeLib.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib2 self, PWSTR szName) DeleteTypeInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib2 self, in Guid guid, ref VARIANT pVarVal) SetCustData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib2 self, uint32 dwHelpStringContext) SetHelpStringContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateTypeLib2 self, PWSTR szFileName) SetHelpStringDll;
		}
	}
	[CRepr]
	public struct IEnumVARIANT : IUnknown
	{
		public const new Guid IID = .(0x00020404, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, VARIANT* rgVar, out uint32 pCeltFetched) mut => VT.Next(ref this, celt, rgVar, out pCeltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumVARIANT* ppEnum) mut => VT.Clone(ref this, out ppEnum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumVARIANT self, uint32 celt, VARIANT* rgVar, out uint32 pCeltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumVARIANT self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumVARIANT self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumVARIANT self, out IEnumVARIANT* ppEnum) Clone;
		}
	}
	[CRepr]
	public struct ITypeChangeEvents : IUnknown
	{
		public const new Guid IID = .(0x00020410, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RequestTypeChange(CHANGEKIND changeKind, ref ITypeInfo pTInfoBefore, PWSTR pStrName, out int32 pfCancel) mut => VT.RequestTypeChange(ref this, changeKind, ref pTInfoBefore, pStrName, out pfCancel);
		public HRESULT AfterTypeChange(CHANGEKIND changeKind, ref ITypeInfo pTInfoAfter, PWSTR pStrName) mut => VT.AfterTypeChange(ref this, changeKind, ref pTInfoAfter, pStrName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeChangeEvents self, CHANGEKIND changeKind, ref ITypeInfo pTInfoBefore, PWSTR pStrName, out int32 pfCancel) RequestTypeChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeChangeEvents self, CHANGEKIND changeKind, ref ITypeInfo pTInfoAfter, PWSTR pStrName) AfterTypeChange;
		}
	}
	[CRepr]
	public struct ICreateErrorInfo : IUnknown
	{
		public const new Guid IID = .(0x22f03340, 0x547d, 0x101b, 0x8e, 0x65, 0x08, 0x00, 0x2b, 0x2b, 0xd1, 0x19);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetGUID(in Guid rguid) mut => VT.SetGUID(ref this, rguid);
		public HRESULT SetSource(PWSTR szSource) mut => VT.SetSource(ref this, szSource);
		public HRESULT SetDescription(PWSTR szDescription) mut => VT.SetDescription(ref this, szDescription);
		public HRESULT SetHelpFile(PWSTR szHelpFile) mut => VT.SetHelpFile(ref this, szHelpFile);
		public HRESULT SetHelpContext(uint32 dwHelpContext) mut => VT.SetHelpContext(ref this, dwHelpContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateErrorInfo self, in Guid rguid) SetGUID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateErrorInfo self, PWSTR szSource) SetSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateErrorInfo self, PWSTR szDescription) SetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateErrorInfo self, PWSTR szHelpFile) SetHelpFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateErrorInfo self, uint32 dwHelpContext) SetHelpContext;
		}
	}
	[CRepr]
	public struct ITypeFactory : IUnknown
	{
		public const new Guid IID = .(0x0000002e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateFromTypeInfo(ref ITypeInfo pTypeInfo, in Guid riid, out IUnknown* ppv) mut => VT.CreateFromTypeInfo(ref this, ref pTypeInfo, riid, out ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeFactory self, ref ITypeInfo pTypeInfo, in Guid riid, out IUnknown* ppv) CreateFromTypeInfo;
		}
	}
	[CRepr]
	public struct ITypeMarshal : IUnknown
	{
		public const new Guid IID = .(0x0000002d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Size(void* pvType, uint32 dwDestContext, void* pvDestContext, out uint32 pSize) mut => VT.Size(ref this, pvType, dwDestContext, pvDestContext, out pSize);
		public HRESULT Marshal(void* pvType, uint32 dwDestContext, void* pvDestContext, uint32 cbBufferLength, out uint8 pBuffer, out uint32 pcbWritten) mut => VT.Marshal(ref this, pvType, dwDestContext, pvDestContext, cbBufferLength, out pBuffer, out pcbWritten);
		public HRESULT Unmarshal(void* pvType, uint32 dwFlags, uint32 cbBufferLength, uint8* pBuffer, out uint32 pcbRead) mut => VT.Unmarshal(ref this, pvType, dwFlags, cbBufferLength, pBuffer, out pcbRead);
		public HRESULT Free(void* pvType) mut => VT.Free(ref this, pvType);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeMarshal self, void* pvType, uint32 dwDestContext, void* pvDestContext, out uint32 pSize) Size;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeMarshal self, void* pvType, uint32 dwDestContext, void* pvDestContext, uint32 cbBufferLength, out uint8 pBuffer, out uint32 pcbWritten) Marshal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeMarshal self, void* pvType, uint32 dwFlags, uint32 cbBufferLength, uint8* pBuffer, out uint32 pcbRead) Unmarshal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITypeMarshal self, void* pvType) Free;
		}
	}
	[CRepr]
	public struct IRecordInfo : IUnknown
	{
		public const new Guid IID = .(0x0000002f, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RecordInit(void* pvNew) mut => VT.RecordInit(ref this, pvNew);
		public HRESULT RecordClear(void* pvExisting) mut => VT.RecordClear(ref this, pvExisting);
		public HRESULT RecordCopy(void* pvExisting, void* pvNew) mut => VT.RecordCopy(ref this, pvExisting, pvNew);
		public HRESULT GetGuid(out Guid pguid) mut => VT.GetGuid(ref this, out pguid);
		public HRESULT GetName(BSTR* pbstrName) mut => VT.GetName(ref this, pbstrName);
		public HRESULT GetSize(out uint32 pcbSize) mut => VT.GetSize(ref this, out pcbSize);
		public HRESULT GetTypeInfo(out ITypeInfo* ppTypeInfo) mut => VT.GetTypeInfo(ref this, out ppTypeInfo);
		public HRESULT GetField(void* pvData, PWSTR szFieldName, out VARIANT pvarField) mut => VT.GetField(ref this, pvData, szFieldName, out pvarField);
		public HRESULT GetFieldNoCopy(void* pvData, PWSTR szFieldName, out VARIANT pvarField, void** ppvDataCArray) mut => VT.GetFieldNoCopy(ref this, pvData, szFieldName, out pvarField, ppvDataCArray);
		public HRESULT PutField(uint32 wFlags, void* pvData, PWSTR szFieldName, ref VARIANT pvarField) mut => VT.PutField(ref this, wFlags, pvData, szFieldName, ref pvarField);
		public HRESULT PutFieldNoCopy(uint32 wFlags, void* pvData, PWSTR szFieldName, ref VARIANT pvarField) mut => VT.PutFieldNoCopy(ref this, wFlags, pvData, szFieldName, ref pvarField);
		public HRESULT GetFieldNames(out uint32 pcNames, BSTR* rgBstrNames) mut => VT.GetFieldNames(ref this, out pcNames, rgBstrNames);
		public BOOL IsMatchingType(ref IRecordInfo pRecordInfo) mut => VT.IsMatchingType(ref this, ref pRecordInfo);
		public void* RecordCreate() mut => VT.RecordCreate(ref this);
		public HRESULT RecordCreateCopy(void* pvSource, void** ppvDest) mut => VT.RecordCreateCopy(ref this, pvSource, ppvDest);
		public HRESULT RecordDestroy(void* pvRecord) mut => VT.RecordDestroy(ref this, pvRecord);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvNew) RecordInit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvExisting) RecordClear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvExisting, void* pvNew) RecordCopy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, out Guid pguid) GetGuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, BSTR* pbstrName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, out uint32 pcbSize) GetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, out ITypeInfo* ppTypeInfo) GetTypeInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvData, PWSTR szFieldName, out VARIANT pvarField) GetField;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvData, PWSTR szFieldName, out VARIANT pvarField, void** ppvDataCArray) GetFieldNoCopy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, uint32 wFlags, void* pvData, PWSTR szFieldName, ref VARIANT pvarField) PutField;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, uint32 wFlags, void* pvData, PWSTR szFieldName, ref VARIANT pvarField) PutFieldNoCopy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, out uint32 pcNames, BSTR* rgBstrNames) GetFieldNames;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IRecordInfo self, ref IRecordInfo pRecordInfo) IsMatchingType;
			public new function [CallingConvention(.Stdcall)] void*(ref IRecordInfo self) RecordCreate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvSource, void** ppvDest) RecordCreateCopy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRecordInfo self, void* pvRecord) RecordDestroy;
		}
	}
	[CRepr]
	public struct IOleAdviseHolder : IUnknown
	{
		public const new Guid IID = .(0x00000111, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref IAdviseSink pAdvise, out uint32 pdwConnection) mut => VT.Advise(ref this, ref pAdvise, out pdwConnection);
		public HRESULT Unadvise(uint32 dwConnection) mut => VT.Unadvise(ref this, dwConnection);
		public HRESULT EnumAdvise(out IEnumSTATDATA* ppenumAdvise) mut => VT.EnumAdvise(ref this, out ppenumAdvise);
		public HRESULT SendOnRename(ref IMoniker pmk) mut => VT.SendOnRename(ref this, ref pmk);
		public HRESULT SendOnSave() mut => VT.SendOnSave(ref this);
		public HRESULT SendOnClose() mut => VT.SendOnClose(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self, ref IAdviseSink pAdvise, out uint32 pdwConnection) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self, uint32 dwConnection) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self, out IEnumSTATDATA* ppenumAdvise) EnumAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self, ref IMoniker pmk) SendOnRename;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self) SendOnSave;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleAdviseHolder self) SendOnClose;
		}
	}
	[CRepr]
	public struct IOleCache : IUnknown
	{
		public const new Guid IID = .(0x0000011e, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Cache(ref FORMATETC pformatetc, uint32 advf, out uint32 pdwConnection) mut => VT.Cache(ref this, ref pformatetc, advf, out pdwConnection);
		public HRESULT Uncache(uint32 dwConnection) mut => VT.Uncache(ref this, dwConnection);
		public HRESULT EnumCache(out IEnumSTATDATA* ppenumSTATDATA) mut => VT.EnumCache(ref this, out ppenumSTATDATA);
		public HRESULT InitCache(ref IDataObject pDataObject) mut => VT.InitCache(ref this, ref pDataObject);
		public HRESULT SetData(ref FORMATETC pformatetc, ref STGMEDIUM pmedium, BOOL fRelease) mut => VT.SetData(ref this, ref pformatetc, ref pmedium, fRelease);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache self, ref FORMATETC pformatetc, uint32 advf, out uint32 pdwConnection) Cache;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache self, uint32 dwConnection) Uncache;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache self, out IEnumSTATDATA* ppenumSTATDATA) EnumCache;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache self, ref IDataObject pDataObject) InitCache;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache self, ref FORMATETC pformatetc, ref STGMEDIUM pmedium, BOOL fRelease) SetData;
		}
	}
	[CRepr]
	public struct IOleCache2 : IOleCache
	{
		public const new Guid IID = .(0x00000128, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT UpdateCache(ref IDataObject pDataObject, UPDFCACHE_FLAGS grfUpdf, void* pReserved) mut => VT.UpdateCache(ref this, ref pDataObject, grfUpdf, pReserved);
		public HRESULT DiscardCache(uint32 dwDiscardOptions) mut => VT.DiscardCache(ref this, dwDiscardOptions);

		[CRepr]
		public struct VTable : IOleCache.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache2 self, ref IDataObject pDataObject, UPDFCACHE_FLAGS grfUpdf, void* pReserved) UpdateCache;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCache2 self, uint32 dwDiscardOptions) DiscardCache;
		}
	}
	[CRepr]
	public struct IOleCacheControl : IUnknown
	{
		public const new Guid IID = .(0x00000129, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnRun(IDataObject* pDataObject) mut => VT.OnRun(ref this, pDataObject);
		public HRESULT OnStop() mut => VT.OnStop(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCacheControl self, IDataObject* pDataObject) OnRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCacheControl self) OnStop;
		}
	}
	[CRepr]
	public struct IParseDisplayName : IUnknown
	{
		public const new Guid IID = .(0x0000011a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ParseDisplayName(ref IBindCtx pbc, PWSTR pszDisplayName, out uint32 pchEaten, out IMoniker* ppmkOut) mut => VT.ParseDisplayName(ref this, ref pbc, pszDisplayName, out pchEaten, out ppmkOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IParseDisplayName self, ref IBindCtx pbc, PWSTR pszDisplayName, out uint32 pchEaten, out IMoniker* ppmkOut) ParseDisplayName;
		}
	}
	[CRepr]
	public struct IOleContainer : IParseDisplayName
	{
		public const new Guid IID = .(0x0000011b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumObjects(uint32 grfFlags, out IEnumUnknown* ppenum) mut => VT.EnumObjects(ref this, grfFlags, out ppenum);
		public HRESULT LockContainer(BOOL fLock) mut => VT.LockContainer(ref this, fLock);

		[CRepr]
		public struct VTable : IParseDisplayName.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleContainer self, uint32 grfFlags, out IEnumUnknown* ppenum) EnumObjects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleContainer self, BOOL fLock) LockContainer;
		}
	}
	[CRepr]
	public struct IOleClientSite : IUnknown
	{
		public const new Guid IID = .(0x00000118, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SaveObject() mut => VT.SaveObject(ref this);
		public HRESULT GetMoniker(uint32 dwAssign, uint32 dwWhichMoniker, out IMoniker* ppmk) mut => VT.GetMoniker(ref this, dwAssign, dwWhichMoniker, out ppmk);
		public HRESULT GetContainer(out IOleContainer* ppContainer) mut => VT.GetContainer(ref this, out ppContainer);
		public HRESULT ShowObject() mut => VT.ShowObject(ref this);
		public HRESULT OnShowWindow(BOOL fShow) mut => VT.OnShowWindow(ref this, fShow);
		public HRESULT RequestNewObjectLayout() mut => VT.RequestNewObjectLayout(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self) SaveObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self, uint32 dwAssign, uint32 dwWhichMoniker, out IMoniker* ppmk) GetMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self, out IOleContainer* ppContainer) GetContainer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self) ShowObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self, BOOL fShow) OnShowWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleClientSite self) RequestNewObjectLayout;
		}
	}
	[CRepr]
	public struct IOleObject : IUnknown
	{
		public const new Guid IID = .(0x00000112, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetClientSite(ref IOleClientSite pClientSite) mut => VT.SetClientSite(ref this, ref pClientSite);
		public HRESULT GetClientSite(out IOleClientSite* ppClientSite) mut => VT.GetClientSite(ref this, out ppClientSite);
		public HRESULT SetHostNames(PWSTR szContainerApp, PWSTR szContainerObj) mut => VT.SetHostNames(ref this, szContainerApp, szContainerObj);
		public HRESULT Close(uint32 dwSaveOption) mut => VT.Close(ref this, dwSaveOption);
		public HRESULT SetMoniker(uint32 dwWhichMoniker, ref IMoniker pmk) mut => VT.SetMoniker(ref this, dwWhichMoniker, ref pmk);
		public HRESULT GetMoniker(uint32 dwAssign, uint32 dwWhichMoniker, out IMoniker* ppmk) mut => VT.GetMoniker(ref this, dwAssign, dwWhichMoniker, out ppmk);
		public HRESULT InitFromData(ref IDataObject pDataObject, BOOL fCreation, uint32 dwReserved) mut => VT.InitFromData(ref this, ref pDataObject, fCreation, dwReserved);
		public HRESULT GetClipboardData(uint32 dwReserved, out IDataObject* ppDataObject) mut => VT.GetClipboardData(ref this, dwReserved, out ppDataObject);
		public HRESULT DoVerb(int32 iVerb, ref MSG lpmsg, ref IOleClientSite pActiveSite, int32 lindex, HWND hwndParent, ref RECT lprcPosRect) mut => VT.DoVerb(ref this, iVerb, ref lpmsg, ref pActiveSite, lindex, hwndParent, ref lprcPosRect);
		public HRESULT EnumVerbs(out IEnumOLEVERB* ppEnumOleVerb) mut => VT.EnumVerbs(ref this, out ppEnumOleVerb);
		public HRESULT Update() mut => VT.Update(ref this);
		public HRESULT IsUpToDate() mut => VT.IsUpToDate(ref this);
		public HRESULT GetUserClassID(out Guid pClsid) mut => VT.GetUserClassID(ref this, out pClsid);
		public HRESULT GetUserType(uint32 dwFormOfType, out PWSTR pszUserType) mut => VT.GetUserType(ref this, dwFormOfType, out pszUserType);
		public HRESULT SetExtent(uint32 dwDrawAspect, ref SIZE psizel) mut => VT.SetExtent(ref this, dwDrawAspect, ref psizel);
		public HRESULT GetExtent(uint32 dwDrawAspect, out SIZE psizel) mut => VT.GetExtent(ref this, dwDrawAspect, out psizel);
		public HRESULT Advise(ref IAdviseSink pAdvSink, out uint32 pdwConnection) mut => VT.Advise(ref this, ref pAdvSink, out pdwConnection);
		public HRESULT Unadvise(uint32 dwConnection) mut => VT.Unadvise(ref this, dwConnection);
		public HRESULT EnumAdvise(out IEnumSTATDATA* ppenumAdvise) mut => VT.EnumAdvise(ref this, out ppenumAdvise);
		public HRESULT GetMiscStatus(uint32 dwAspect, out uint32 pdwStatus) mut => VT.GetMiscStatus(ref this, dwAspect, out pdwStatus);
		public HRESULT SetColorScheme(ref LOGPALETTE pLogpal) mut => VT.SetColorScheme(ref this, ref pLogpal);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, ref IOleClientSite pClientSite) SetClientSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, out IOleClientSite* ppClientSite) GetClientSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, PWSTR szContainerApp, PWSTR szContainerObj) SetHostNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwSaveOption) Close;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwWhichMoniker, ref IMoniker pmk) SetMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwAssign, uint32 dwWhichMoniker, out IMoniker* ppmk) GetMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, ref IDataObject pDataObject, BOOL fCreation, uint32 dwReserved) InitFromData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwReserved, out IDataObject* ppDataObject) GetClipboardData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, int32 iVerb, ref MSG lpmsg, ref IOleClientSite pActiveSite, int32 lindex, HWND hwndParent, ref RECT lprcPosRect) DoVerb;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, out IEnumOLEVERB* ppEnumOleVerb) EnumVerbs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self) Update;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self) IsUpToDate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, out Guid pClsid) GetUserClassID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwFormOfType, out PWSTR pszUserType) GetUserType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwDrawAspect, ref SIZE psizel) SetExtent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwDrawAspect, out SIZE psizel) GetExtent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, ref IAdviseSink pAdvSink, out uint32 pdwConnection) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwConnection) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, out IEnumSTATDATA* ppenumAdvise) EnumAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, uint32 dwAspect, out uint32 pdwStatus) GetMiscStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleObject self, ref LOGPALETTE pLogpal) SetColorScheme;
		}
	}
	[CRepr]
	public struct IOleWindow : IUnknown
	{
		public const new Guid IID = .(0x00000114, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetWindow(out HWND phwnd) mut => VT.GetWindow(ref this, out phwnd);
		public HRESULT ContextSensitiveHelp(BOOL fEnterMode) mut => VT.ContextSensitiveHelp(ref this, fEnterMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleWindow self, out HWND phwnd) GetWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleWindow self, BOOL fEnterMode) ContextSensitiveHelp;
		}
	}
	[CRepr]
	public struct IOleLink : IUnknown
	{
		public const new Guid IID = .(0x0000011d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetUpdateOptions(uint32 dwUpdateOpt) mut => VT.SetUpdateOptions(ref this, dwUpdateOpt);
		public HRESULT GetUpdateOptions(out uint32 pdwUpdateOpt) mut => VT.GetUpdateOptions(ref this, out pdwUpdateOpt);
		public HRESULT SetSourceMoniker(ref IMoniker pmk, in Guid rclsid) mut => VT.SetSourceMoniker(ref this, ref pmk, rclsid);
		public HRESULT GetSourceMoniker(out IMoniker* ppmk) mut => VT.GetSourceMoniker(ref this, out ppmk);
		public HRESULT SetSourceDisplayName(PWSTR pszStatusText) mut => VT.SetSourceDisplayName(ref this, pszStatusText);
		public HRESULT GetSourceDisplayName(out PWSTR ppszDisplayName) mut => VT.GetSourceDisplayName(ref this, out ppszDisplayName);
		public HRESULT BindToSource(uint32 bindflags, ref IBindCtx pbc) mut => VT.BindToSource(ref this, bindflags, ref pbc);
		public HRESULT BindIfRunning() mut => VT.BindIfRunning(ref this);
		public HRESULT GetBoundSource(out IUnknown* ppunk) mut => VT.GetBoundSource(ref this, out ppunk);
		public HRESULT UnbindSource() mut => VT.UnbindSource(ref this);
		public HRESULT Update(ref IBindCtx pbc) mut => VT.Update(ref this, ref pbc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, uint32 dwUpdateOpt) SetUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, out uint32 pdwUpdateOpt) GetUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, ref IMoniker pmk, in Guid rclsid) SetSourceMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, out IMoniker* ppmk) GetSourceMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, PWSTR pszStatusText) SetSourceDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, out PWSTR ppszDisplayName) GetSourceDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, uint32 bindflags, ref IBindCtx pbc) BindToSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self) BindIfRunning;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, out IUnknown* ppunk) GetBoundSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self) UnbindSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleLink self, ref IBindCtx pbc) Update;
		}
	}
	[CRepr]
	public struct IOleItemContainer : IOleContainer
	{
		public const new Guid IID = .(0x0000011c, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetObject(PWSTR pszItem, uint32 dwSpeedNeeded, ref IBindCtx pbc, in Guid riid, void** ppvObject) mut => VT.GetObject(ref this, pszItem, dwSpeedNeeded, ref pbc, riid, ppvObject);
		public HRESULT GetObjectStorage(PWSTR pszItem, ref IBindCtx pbc, in Guid riid, void** ppvStorage) mut => VT.GetObjectStorage(ref this, pszItem, ref pbc, riid, ppvStorage);
		public HRESULT IsRunning(PWSTR pszItem) mut => VT.IsRunning(ref this, pszItem);

		[CRepr]
		public struct VTable : IOleContainer.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleItemContainer self, PWSTR pszItem, uint32 dwSpeedNeeded, ref IBindCtx pbc, in Guid riid, void** ppvObject) GetObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleItemContainer self, PWSTR pszItem, ref IBindCtx pbc, in Guid riid, void** ppvStorage) GetObjectStorage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleItemContainer self, PWSTR pszItem) IsRunning;
		}
	}
	[CRepr]
	public struct IOleInPlaceUIWindow : IOleWindow
	{
		public const new Guid IID = .(0x00000115, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBorder(out RECT lprectBorder) mut => VT.GetBorder(ref this, out lprectBorder);
		public HRESULT RequestBorderSpace(ref RECT pborderwidths) mut => VT.RequestBorderSpace(ref this, ref pborderwidths);
		public HRESULT SetBorderSpace(ref RECT pborderwidths) mut => VT.SetBorderSpace(ref this, ref pborderwidths);
		public HRESULT SetActiveObject(ref IOleInPlaceActiveObject pActiveObject, PWSTR pszObjName) mut => VT.SetActiveObject(ref this, ref pActiveObject, pszObjName);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceUIWindow self, out RECT lprectBorder) GetBorder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceUIWindow self, ref RECT pborderwidths) RequestBorderSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceUIWindow self, ref RECT pborderwidths) SetBorderSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceUIWindow self, ref IOleInPlaceActiveObject pActiveObject, PWSTR pszObjName) SetActiveObject;
		}
	}
	[CRepr]
	public struct IOleInPlaceActiveObject : IOleWindow
	{
		public const new Guid IID = .(0x00000117, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranslateAccelerator(MSG* lpmsg) mut => VT.TranslateAccelerator(ref this, lpmsg);
		public HRESULT OnFrameWindowActivate(BOOL fActivate) mut => VT.OnFrameWindowActivate(ref this, fActivate);
		public HRESULT OnDocWindowActivate(BOOL fActivate) mut => VT.OnDocWindowActivate(ref this, fActivate);
		public HRESULT ResizeBorder(ref RECT prcBorder, ref IOleInPlaceUIWindow pUIWindow, BOOL fFrameWindow) mut => VT.ResizeBorder(ref this, ref prcBorder, ref pUIWindow, fFrameWindow);
		public HRESULT EnableModeless(BOOL fEnable) mut => VT.EnableModeless(ref this, fEnable);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceActiveObject self, MSG* lpmsg) TranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceActiveObject self, BOOL fActivate) OnFrameWindowActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceActiveObject self, BOOL fActivate) OnDocWindowActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceActiveObject self, ref RECT prcBorder, ref IOleInPlaceUIWindow pUIWindow, BOOL fFrameWindow) ResizeBorder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceActiveObject self, BOOL fEnable) EnableModeless;
		}
	}
	[CRepr]
	public struct IOleInPlaceFrame : IOleInPlaceUIWindow
	{
		public const new Guid IID = .(0x00000116, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InsertMenus(HMENU hmenuShared, out OleMenuGroupWidths lpMenuWidths) mut => VT.InsertMenus(ref this, hmenuShared, out lpMenuWidths);
		public HRESULT SetMenu(HMENU hmenuShared, int holemenu, HWND hwndActiveObject) mut => VT.SetMenu(ref this, hmenuShared, holemenu, hwndActiveObject);
		public HRESULT RemoveMenus(HMENU hmenuShared) mut => VT.RemoveMenus(ref this, hmenuShared);
		public HRESULT SetStatusText(PWSTR pszStatusText) mut => VT.SetStatusText(ref this, pszStatusText);
		public HRESULT EnableModeless(BOOL fEnable) mut => VT.EnableModeless(ref this, fEnable);
		public HRESULT TranslateAccelerator(ref MSG lpmsg, uint16 wID) mut => VT.TranslateAccelerator(ref this, ref lpmsg, wID);

		[CRepr]
		public struct VTable : IOleInPlaceUIWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, HMENU hmenuShared, out OleMenuGroupWidths lpMenuWidths) InsertMenus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, HMENU hmenuShared, int holemenu, HWND hwndActiveObject) SetMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, HMENU hmenuShared) RemoveMenus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, PWSTR pszStatusText) SetStatusText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, BOOL fEnable) EnableModeless;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceFrame self, ref MSG lpmsg, uint16 wID) TranslateAccelerator;
		}
	}
	[CRepr]
	public struct IOleInPlaceObject : IOleWindow
	{
		public const new Guid IID = .(0x00000113, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InPlaceDeactivate() mut => VT.InPlaceDeactivate(ref this);
		public HRESULT UIDeactivate() mut => VT.UIDeactivate(ref this);
		public HRESULT SetObjectRects(ref RECT lprcPosRect, ref RECT lprcClipRect) mut => VT.SetObjectRects(ref this, ref lprcPosRect, ref lprcClipRect);
		public HRESULT ReactivateAndUndo() mut => VT.ReactivateAndUndo(ref this);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObject self) InPlaceDeactivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObject self) UIDeactivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObject self, ref RECT lprcPosRect, ref RECT lprcClipRect) SetObjectRects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObject self) ReactivateAndUndo;
		}
	}
	[CRepr]
	public struct IOleInPlaceSite : IOleWindow
	{
		public const new Guid IID = .(0x00000119, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CanInPlaceActivate() mut => VT.CanInPlaceActivate(ref this);
		public HRESULT OnInPlaceActivate() mut => VT.OnInPlaceActivate(ref this);
		public HRESULT OnUIActivate() mut => VT.OnUIActivate(ref this);
		public HRESULT GetWindowContext(out IOleInPlaceFrame* ppFrame, out IOleInPlaceUIWindow* ppDoc, out RECT lprcPosRect, out RECT lprcClipRect, out OIFI lpFrameInfo) mut => VT.GetWindowContext(ref this, out ppFrame, out ppDoc, out lprcPosRect, out lprcClipRect, out lpFrameInfo);
		public HRESULT Scroll(SIZE scrollExtant) mut => VT.Scroll(ref this, scrollExtant);
		public HRESULT OnUIDeactivate(BOOL fUndoable) mut => VT.OnUIDeactivate(ref this, fUndoable);
		public HRESULT OnInPlaceDeactivate() mut => VT.OnInPlaceDeactivate(ref this);
		public HRESULT DiscardUndoState() mut => VT.DiscardUndoState(ref this);
		public HRESULT DeactivateAndUndo() mut => VT.DeactivateAndUndo(ref this);
		public HRESULT OnPosRectChange(ref RECT lprcPosRect) mut => VT.OnPosRectChange(ref this, ref lprcPosRect);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) CanInPlaceActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) OnInPlaceActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) OnUIActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self, out IOleInPlaceFrame* ppFrame, out IOleInPlaceUIWindow* ppDoc, out RECT lprcPosRect, out RECT lprcClipRect, out OIFI lpFrameInfo) GetWindowContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self, SIZE scrollExtant) Scroll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self, BOOL fUndoable) OnUIDeactivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) OnInPlaceDeactivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) DiscardUndoState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self) DeactivateAndUndo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSite self, ref RECT lprcPosRect) OnPosRectChange;
		}
	}
	[CRepr]
	public struct IContinue : IUnknown
	{
		public const new Guid IID = .(0x0000012a, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FContinue() mut => VT.FContinue(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContinue self) FContinue;
		}
	}
	[CRepr]
	public struct IViewObject : IUnknown
	{
		public const new Guid IID = .(0x0000010d, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Draw(uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcTargetDev, HDC hdcDraw, RECTL* lprcBounds, RECTL* lprcWBounds, int pfnContinue, uint dwContinue) mut => VT.Draw(ref this, dwDrawAspect, lindex, pvAspect, ptd, hdcTargetDev, hdcDraw, lprcBounds, lprcWBounds, pfnContinue, dwContinue);
		public HRESULT GetColorSet(uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hicTargetDev, out LOGPALETTE* ppColorSet) mut => VT.GetColorSet(ref this, dwDrawAspect, lindex, pvAspect, ptd, hicTargetDev, out ppColorSet);
		public HRESULT Freeze(uint32 dwDrawAspect, int32 lindex, void* pvAspect, out uint32 pdwFreeze) mut => VT.Freeze(ref this, dwDrawAspect, lindex, pvAspect, out pdwFreeze);
		public HRESULT Unfreeze(uint32 dwFreeze) mut => VT.Unfreeze(ref this, dwFreeze);
		public HRESULT SetAdvise(uint32 aspects, uint32 advf, ref IAdviseSink pAdvSink) mut => VT.SetAdvise(ref this, aspects, advf, ref pAdvSink);
		public HRESULT GetAdvise(uint32* pAspects, uint32* pAdvf, out IAdviseSink* ppAdvSink) mut => VT.GetAdvise(ref this, pAspects, pAdvf, out ppAdvSink);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hdcTargetDev, HDC hdcDraw, RECTL* lprcBounds, RECTL* lprcWBounds, int pfnContinue, uint dwContinue) Draw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, DVTARGETDEVICE* ptd, HDC hicTargetDev, out LOGPALETTE* ppColorSet) GetColorSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32 dwDrawAspect, int32 lindex, void* pvAspect, out uint32 pdwFreeze) Freeze;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32 dwFreeze) Unfreeze;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32 aspects, uint32 advf, ref IAdviseSink pAdvSink) SetAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject self, uint32* pAspects, uint32* pAdvf, out IAdviseSink* ppAdvSink) GetAdvise;
		}
	}
	[CRepr]
	public struct IViewObject2 : IViewObject
	{
		public const new Guid IID = .(0x00000127, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetExtent(uint32 dwDrawAspect, int32 lindex, ref DVTARGETDEVICE ptd, out SIZE lpsizel) mut => VT.GetExtent(ref this, dwDrawAspect, lindex, ref ptd, out lpsizel);

		[CRepr]
		public struct VTable : IViewObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObject2 self, uint32 dwDrawAspect, int32 lindex, ref DVTARGETDEVICE ptd, out SIZE lpsizel) GetExtent;
		}
	}
	[CRepr]
	public struct IDropSource : IUnknown
	{
		public const new Guid IID = .(0x00000121, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryContinueDrag(BOOL fEscapePressed, uint32 grfKeyState) mut => VT.QueryContinueDrag(ref this, fEscapePressed, grfKeyState);
		public HRESULT GiveFeedback(uint32 dwEffect) mut => VT.GiveFeedback(ref this, dwEffect);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropSource self, BOOL fEscapePressed, uint32 grfKeyState) QueryContinueDrag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropSource self, uint32 dwEffect) GiveFeedback;
		}
	}
	[CRepr]
	public struct IDropTarget : IUnknown
	{
		public const new Guid IID = .(0x00000122, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DragEnter(ref IDataObject pDataObj, uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) mut => VT.DragEnter(ref this, ref pDataObj, grfKeyState, pt, out pdwEffect);
		public HRESULT DragOver(uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) mut => VT.DragOver(ref this, grfKeyState, pt, out pdwEffect);
		public HRESULT DragLeave() mut => VT.DragLeave(ref this);
		public HRESULT Drop(ref IDataObject pDataObj, uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) mut => VT.Drop(ref this, ref pDataObj, grfKeyState, pt, out pdwEffect);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTarget self, ref IDataObject pDataObj, uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) DragEnter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTarget self, uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) DragOver;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTarget self) DragLeave;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTarget self, ref IDataObject pDataObj, uint32 grfKeyState, POINTL pt, out uint32 pdwEffect) Drop;
		}
	}
	[CRepr]
	public struct IDropSourceNotify : IUnknown
	{
		public const new Guid IID = .(0x0000012b, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DragEnterTarget(HWND hwndTarget) mut => VT.DragEnterTarget(ref this, hwndTarget);
		public HRESULT DragLeaveTarget() mut => VT.DragLeaveTarget(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropSourceNotify self, HWND hwndTarget) DragEnterTarget;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropSourceNotify self) DragLeaveTarget;
		}
	}
	[CRepr]
	public struct IEnterpriseDropTarget : IUnknown
	{
		public const new Guid IID = .(0x390e3878, 0xfd55, 0x4e18, 0x81, 0x9d, 0x46, 0x82, 0x08, 0x1c, 0x0c, 0xfd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetDropSourceEnterpriseId(PWSTR identity) mut => VT.SetDropSourceEnterpriseId(ref this, identity);
		public HRESULT IsEvaluatingEdpPolicy(out BOOL value) mut => VT.IsEvaluatingEdpPolicy(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnterpriseDropTarget self, PWSTR identity) SetDropSourceEnterpriseId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnterpriseDropTarget self, out BOOL value) IsEvaluatingEdpPolicy;
		}
	}
	[CRepr]
	public struct IEnumOLEVERB : IUnknown
	{
		public const new Guid IID = .(0x00000104, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, OLEVERB* rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumOLEVERB* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOLEVERB self, uint32 celt, OLEVERB* rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOLEVERB self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOLEVERB self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOLEVERB self, out IEnumOLEVERB* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IClassFactory2 : IClassFactory
	{
		public const new Guid IID = .(0xb196b28f, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLicInfo(out LICINFO pLicInfo) mut => VT.GetLicInfo(ref this, out pLicInfo);
		public HRESULT RequestLicKey(uint32 dwReserved, out BSTR pBstrKey) mut => VT.RequestLicKey(ref this, dwReserved, out pBstrKey);
		public HRESULT CreateInstanceLic(IUnknown* pUnkOuter, ref IUnknown pUnkReserved, in Guid riid, BSTR bstrKey, void** ppvObj) mut => VT.CreateInstanceLic(ref this, pUnkOuter, ref pUnkReserved, riid, bstrKey, ppvObj);

		[CRepr]
		public struct VTable : IClassFactory.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassFactory2 self, out LICINFO pLicInfo) GetLicInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassFactory2 self, uint32 dwReserved, out BSTR pBstrKey) RequestLicKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IClassFactory2 self, IUnknown* pUnkOuter, ref IUnknown pUnkReserved, in Guid riid, BSTR bstrKey, void** ppvObj) CreateInstanceLic;
		}
	}
	[CRepr]
	public struct IProvideClassInfo : IUnknown
	{
		public const new Guid IID = .(0xb196b283, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetClassInfo(out ITypeInfo* ppTI) mut => VT.GetClassInfo(ref this, out ppTI);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideClassInfo self, out ITypeInfo* ppTI) GetClassInfo;
		}
	}
	[CRepr]
	public struct IProvideClassInfo2 : IProvideClassInfo
	{
		public const new Guid IID = .(0xa6bc3ac0, 0xdbaa, 0x11ce, 0x9d, 0xe3, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetGUID(uint32 dwGuidKind, out Guid pGUID) mut => VT.GetGUID(ref this, dwGuidKind, out pGUID);

		[CRepr]
		public struct VTable : IProvideClassInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideClassInfo2 self, uint32 dwGuidKind, out Guid pGUID) GetGUID;
		}
	}
	[CRepr]
	public struct IProvideMultipleClassInfo : IProvideClassInfo2
	{
		public const new Guid IID = .(0xa7aba9c1, 0x8983, 0x11cf, 0x8f, 0x20, 0x00, 0x80, 0x5f, 0x2c, 0xd0, 0x64);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMultiTypeInfoCount(out uint32 pcti) mut => VT.GetMultiTypeInfoCount(ref this, out pcti);
		public HRESULT GetInfoOfIndex(uint32 iti, MULTICLASSINFO_FLAGS dwFlags, out ITypeInfo* pptiCoClass, out uint32 pdwTIFlags, out uint32 pcdispidReserved, out Guid piidPrimary, out Guid piidSource) mut => VT.GetInfoOfIndex(ref this, iti, dwFlags, out pptiCoClass, out pdwTIFlags, out pcdispidReserved, out piidPrimary, out piidSource);

		[CRepr]
		public struct VTable : IProvideClassInfo2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideMultipleClassInfo self, out uint32 pcti) GetMultiTypeInfoCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideMultipleClassInfo self, uint32 iti, MULTICLASSINFO_FLAGS dwFlags, out ITypeInfo* pptiCoClass, out uint32 pdwTIFlags, out uint32 pcdispidReserved, out Guid piidPrimary, out Guid piidSource) GetInfoOfIndex;
		}
	}
	[CRepr]
	public struct IOleControl : IUnknown
	{
		public const new Guid IID = .(0xb196b288, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetControlInfo(out CONTROLINFO pCI) mut => VT.GetControlInfo(ref this, out pCI);
		public HRESULT OnMnemonic(ref MSG pMsg) mut => VT.OnMnemonic(ref this, ref pMsg);
		public HRESULT OnAmbientPropertyChange(int32 dispID) mut => VT.OnAmbientPropertyChange(ref this, dispID);
		public HRESULT FreezeEvents(BOOL bFreeze) mut => VT.FreezeEvents(ref this, bFreeze);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControl self, out CONTROLINFO pCI) GetControlInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControl self, ref MSG pMsg) OnMnemonic;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControl self, int32 dispID) OnAmbientPropertyChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControl self, BOOL bFreeze) FreezeEvents;
		}
	}
	[CRepr]
	public struct IOleControlSite : IUnknown
	{
		public const new Guid IID = .(0xb196b289, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnControlInfoChanged() mut => VT.OnControlInfoChanged(ref this);
		public HRESULT LockInPlaceActive(BOOL fLock) mut => VT.LockInPlaceActive(ref this, fLock);
		public HRESULT GetExtendedControl(out IDispatch* ppDisp) mut => VT.GetExtendedControl(ref this, out ppDisp);
		public HRESULT TransformCoords(out POINTL pPtlHimetric, out POINTF pPtfContainer, XFORMCOORDS dwFlags) mut => VT.TransformCoords(ref this, out pPtlHimetric, out pPtfContainer, dwFlags);
		public HRESULT TranslateAccelerator(ref MSG pMsg, uint32 grfModifiers) mut => VT.TranslateAccelerator(ref this, ref pMsg, grfModifiers);
		public HRESULT OnFocus(BOOL fGotFocus) mut => VT.OnFocus(ref this, fGotFocus);
		public HRESULT ShowPropertyFrame() mut => VT.ShowPropertyFrame(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self) OnControlInfoChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self, BOOL fLock) LockInPlaceActive;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self, out IDispatch* ppDisp) GetExtendedControl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self, out POINTL pPtlHimetric, out POINTF pPtfContainer, XFORMCOORDS dwFlags) TransformCoords;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self, ref MSG pMsg, uint32 grfModifiers) TranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self, BOOL fGotFocus) OnFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleControlSite self) ShowPropertyFrame;
		}
	}
	[CRepr]
	public struct IPropertyPage : IUnknown
	{
		public const new Guid IID = .(0xb196b28d, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetPageSite(ref IPropertyPageSite pPageSite) mut => VT.SetPageSite(ref this, ref pPageSite);
		public HRESULT Activate(HWND hWndParent, ref RECT pRect, BOOL bModal) mut => VT.Activate(ref this, hWndParent, ref pRect, bModal);
		public HRESULT Deactivate() mut => VT.Deactivate(ref this);
		public HRESULT GetPageInfo(out PROPPAGEINFO pPageInfo) mut => VT.GetPageInfo(ref this, out pPageInfo);
		public HRESULT SetObjects(uint32 cObjects, IUnknown** ppUnk) mut => VT.SetObjects(ref this, cObjects, ppUnk);
		public HRESULT Show(uint32 nCmdShow) mut => VT.Show(ref this, nCmdShow);
		public HRESULT Move(ref RECT pRect) mut => VT.Move(ref this, ref pRect);
		public HRESULT IsPageDirty() mut => VT.IsPageDirty(ref this);
		public HRESULT Apply() mut => VT.Apply(ref this);
		public HRESULT Help(PWSTR pszHelpDir) mut => VT.Help(ref this, pszHelpDir);
		public HRESULT TranslateAccelerator(ref MSG pMsg) mut => VT.TranslateAccelerator(ref this, ref pMsg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, ref IPropertyPageSite pPageSite) SetPageSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, HWND hWndParent, ref RECT pRect, BOOL bModal) Activate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self) Deactivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, out PROPPAGEINFO pPageInfo) GetPageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, uint32 cObjects, IUnknown** ppUnk) SetObjects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, uint32 nCmdShow) Show;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, ref RECT pRect) Move;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self) IsPageDirty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self) Apply;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, PWSTR pszHelpDir) Help;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage self, ref MSG pMsg) TranslateAccelerator;
		}
	}
	[CRepr]
	public struct IPropertyPage2 : IPropertyPage
	{
		public const new Guid IID = .(0x01e44665, 0x24ac, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EditProperty(int32 dispID) mut => VT.EditProperty(ref this, dispID);

		[CRepr]
		public struct VTable : IPropertyPage.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPage2 self, int32 dispID) EditProperty;
		}
	}
	[CRepr]
	public struct IPropertyPageSite : IUnknown
	{
		public const new Guid IID = .(0xb196b28c, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnStatusChange(PROPPAGESTATUS dwFlags) mut => VT.OnStatusChange(ref this, dwFlags);
		public HRESULT GetLocaleID(out uint32 pLocaleID) mut => VT.GetLocaleID(ref this, out pLocaleID);
		public HRESULT GetPageContainer(out IUnknown* ppUnk) mut => VT.GetPageContainer(ref this, out ppUnk);
		public HRESULT TranslateAccelerator(ref MSG pMsg) mut => VT.TranslateAccelerator(ref this, ref pMsg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPageSite self, PROPPAGESTATUS dwFlags) OnStatusChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPageSite self, out uint32 pLocaleID) GetLocaleID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPageSite self, out IUnknown* ppUnk) GetPageContainer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyPageSite self, ref MSG pMsg) TranslateAccelerator;
		}
	}
	[CRepr]
	public struct IPropertyNotifySink : IUnknown
	{
		public const new Guid IID = .(0x9bfbbc02, 0xeff1, 0x101a, 0x84, 0xed, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnChanged(int32 dispID) mut => VT.OnChanged(ref this, dispID);
		public HRESULT OnRequestEdit(int32 dispID) mut => VT.OnRequestEdit(ref this, dispID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyNotifySink self, int32 dispID) OnChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyNotifySink self, int32 dispID) OnRequestEdit;
		}
	}
	[CRepr]
	public struct ISpecifyPropertyPages : IUnknown
	{
		public const new Guid IID = .(0xb196b28b, 0xbab4, 0x101a, 0xb6, 0x9c, 0x00, 0xaa, 0x00, 0x34, 0x1d, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPages(out CAUUID pPages) mut => VT.GetPages(ref this, out pPages);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpecifyPropertyPages self, out CAUUID pPages) GetPages;
		}
	}
	[CRepr]
	public struct IPersistPropertyBag : IPersist
	{
		public const new Guid IID = .(0x37d84f60, 0x42cb, 0x11ce, 0x81, 0x35, 0x00, 0xaa, 0x00, 0x4b, 0xb8, 0x51);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitNew() mut => VT.InitNew(ref this);
		public HRESULT Load(ref IPropertyBag pPropBag, ref IErrorLog pErrorLog) mut => VT.Load(ref this, ref pPropBag, ref pErrorLog);
		public HRESULT Save(ref IPropertyBag pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) mut => VT.Save(ref this, ref pPropBag, fClearDirty, fSaveAllProperties);

		[CRepr]
		public struct VTable : IPersist.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag self) InitNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag self, ref IPropertyBag pPropBag, ref IErrorLog pErrorLog) Load;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag self, ref IPropertyBag pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) Save;
		}
	}
	[CRepr]
	public struct ISimpleFrameSite : IUnknown
	{
		public const new Guid IID = .(0x742b0e01, 0x14e6, 0x101b, 0x91, 0x4e, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PreMessageFilter(HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, out LRESULT plResult, out uint32 pdwCookie) mut => VT.PreMessageFilter(ref this, hWnd, msg, wp, lp, out plResult, out pdwCookie);
		public HRESULT PostMessageFilter(HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, out LRESULT plResult, uint32 dwCookie) mut => VT.PostMessageFilter(ref this, hWnd, msg, wp, lp, out plResult, dwCookie);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleFrameSite self, HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, out LRESULT plResult, out uint32 pdwCookie) PreMessageFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISimpleFrameSite self, HWND hWnd, uint32 msg, WPARAM wp, LPARAM lp, out LRESULT plResult, uint32 dwCookie) PostMessageFilter;
		}
	}
	[CRepr]
	public struct IFont : IUnknown
	{
		public const new Guid IID = .(0xbef6e002, 0xa874, 0x101a, 0x8b, 0xba, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Name(out BSTR pName) mut => VT.get_Name(ref this, out pName);
		public HRESULT put_Name(BSTR name) mut => VT.put_Name(ref this, name);
		public HRESULT get_Size(out CY pSize) mut => VT.get_Size(ref this, out pSize);
		public HRESULT put_Size(CY size) mut => VT.put_Size(ref this, size);
		public HRESULT get_Bold(out BOOL pBold) mut => VT.get_Bold(ref this, out pBold);
		public HRESULT put_Bold(BOOL bold) mut => VT.put_Bold(ref this, bold);
		public HRESULT get_Italic(out BOOL pItalic) mut => VT.get_Italic(ref this, out pItalic);
		public HRESULT put_Italic(BOOL italic) mut => VT.put_Italic(ref this, italic);
		public HRESULT get_Underline(out BOOL pUnderline) mut => VT.get_Underline(ref this, out pUnderline);
		public HRESULT put_Underline(BOOL underline) mut => VT.put_Underline(ref this, underline);
		public HRESULT get_Strikethrough(out BOOL pStrikethrough) mut => VT.get_Strikethrough(ref this, out pStrikethrough);
		public HRESULT put_Strikethrough(BOOL strikethrough) mut => VT.put_Strikethrough(ref this, strikethrough);
		public HRESULT get_Weight(out int16 pWeight) mut => VT.get_Weight(ref this, out pWeight);
		public HRESULT put_Weight(int16 weight) mut => VT.put_Weight(ref this, weight);
		public HRESULT get_Charset(out int16 pCharset) mut => VT.get_Charset(ref this, out pCharset);
		public HRESULT put_Charset(int16 charset) mut => VT.put_Charset(ref this, charset);
		public HRESULT get_hFont(out HFONT phFont) mut => VT.get_hFont(ref this, out phFont);
		public HRESULT Clone(out IFont* ppFont) mut => VT.Clone(ref this, out ppFont);
		public HRESULT IsEqual(ref IFont pFontOther) mut => VT.IsEqual(ref this, ref pFontOther);
		public HRESULT SetRatio(int32 cyLogical, int32 cyHimetric) mut => VT.SetRatio(ref this, cyLogical, cyHimetric);
		public HRESULT QueryTextMetrics(out TEXTMETRICW pTM) mut => VT.QueryTextMetrics(ref this, out pTM);
		public HRESULT AddRefHfont(HFONT hFont) mut => VT.AddRefHfont(ref this, hFont);
		public HRESULT ReleaseHfont(HFONT hFont) mut => VT.ReleaseHfont(ref this, hFont);
		public HRESULT SetHdc(HDC hDC) mut => VT.SetHdc(ref this, hDC);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out BSTR pName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, BSTR name) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out CY pSize) get_Size;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, CY size) put_Size;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out BOOL pBold) get_Bold;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, BOOL bold) put_Bold;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out BOOL pItalic) get_Italic;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, BOOL italic) put_Italic;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out BOOL pUnderline) get_Underline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, BOOL underline) put_Underline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out BOOL pStrikethrough) get_Strikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, BOOL strikethrough) put_Strikethrough;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out int16 pWeight) get_Weight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, int16 weight) put_Weight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out int16 pCharset) get_Charset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, int16 charset) put_Charset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out HFONT phFont) get_hFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out IFont* ppFont) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, ref IFont pFontOther) IsEqual;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, int32 cyLogical, int32 cyHimetric) SetRatio;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, out TEXTMETRICW pTM) QueryTextMetrics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, HFONT hFont) AddRefHfont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, HFONT hFont) ReleaseHfont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFont self, HDC hDC) SetHdc;
		}
	}
	[CRepr]
	public struct IPicture : IUnknown
	{
		public const new Guid IID = .(0x7bf80980, 0xbf32, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Handle(out uint32 pHandle) mut => VT.get_Handle(ref this, out pHandle);
		public HRESULT get_hPal(out uint32 phPal) mut => VT.get_hPal(ref this, out phPal);
		public HRESULT get_Type(out int16 pType) mut => VT.get_Type(ref this, out pType);
		public HRESULT get_Width(out int32 pWidth) mut => VT.get_Width(ref this, out pWidth);
		public HRESULT get_Height(out int32 pHeight) mut => VT.get_Height(ref this, out pHeight);
		public HRESULT Render(HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, ref RECT pRcWBounds) mut => VT.Render(ref this, hDC, x, y, cx, cy, xSrc, ySrc, cxSrc, cySrc, ref pRcWBounds);
		public HRESULT set_hPal(uint32 hPal) mut => VT.set_hPal(ref this, hPal);
		public HRESULT get_CurDC(out HDC phDC) mut => VT.get_CurDC(ref this, out phDC);
		public HRESULT SelectPicture(HDC hDCIn, out HDC phDCOut, out uint32 phBmpOut) mut => VT.SelectPicture(ref this, hDCIn, out phDCOut, out phBmpOut);
		public HRESULT get_KeepOriginalFormat(out BOOL pKeep) mut => VT.get_KeepOriginalFormat(ref this, out pKeep);
		public HRESULT put_KeepOriginalFormat(BOOL keep) mut => VT.put_KeepOriginalFormat(ref this, keep);
		public HRESULT PictureChanged() mut => VT.PictureChanged(ref this);
		public HRESULT SaveAsFile(ref IStream pStream, BOOL fSaveMemCopy, out int32 pCbSize) mut => VT.SaveAsFile(ref this, ref pStream, fSaveMemCopy, out pCbSize);
		public HRESULT get_Attributes(out uint32 pDwAttr) mut => VT.get_Attributes(ref this, out pDwAttr);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out uint32 pHandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out uint32 phPal) get_hPal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out int16 pType) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out int32 pWidth) get_Width;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out int32 pHeight) get_Height;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, ref RECT pRcWBounds) Render;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, uint32 hPal) set_hPal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out HDC phDC) get_CurDC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, HDC hDCIn, out HDC phDCOut, out uint32 phBmpOut) SelectPicture;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out BOOL pKeep) get_KeepOriginalFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, BOOL keep) put_KeepOriginalFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self) PictureChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, ref IStream pStream, BOOL fSaveMemCopy, out int32 pCbSize) SaveAsFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture self, out uint32 pDwAttr) get_Attributes;
		}
	}
	[CRepr]
	public struct IPicture2 : IUnknown
	{
		public const new Guid IID = .(0xf5185dd8, 0x2012, 0x4b0b, 0xaa, 0xd9, 0xf0, 0x52, 0xc6, 0xbd, 0x48, 0x2b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Handle(out uint pHandle) mut => VT.get_Handle(ref this, out pHandle);
		public HRESULT get_hPal(out uint phPal) mut => VT.get_hPal(ref this, out phPal);
		public HRESULT get_Type(out int16 pType) mut => VT.get_Type(ref this, out pType);
		public HRESULT get_Width(out int32 pWidth) mut => VT.get_Width(ref this, out pWidth);
		public HRESULT get_Height(out int32 pHeight) mut => VT.get_Height(ref this, out pHeight);
		public HRESULT Render(HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, ref RECT pRcWBounds) mut => VT.Render(ref this, hDC, x, y, cx, cy, xSrc, ySrc, cxSrc, cySrc, ref pRcWBounds);
		public HRESULT set_hPal(uint hPal) mut => VT.set_hPal(ref this, hPal);
		public HRESULT get_CurDC(out HDC phDC) mut => VT.get_CurDC(ref this, out phDC);
		public HRESULT SelectPicture(HDC hDCIn, out HDC phDCOut, out uint phBmpOut) mut => VT.SelectPicture(ref this, hDCIn, out phDCOut, out phBmpOut);
		public HRESULT get_KeepOriginalFormat(out BOOL pKeep) mut => VT.get_KeepOriginalFormat(ref this, out pKeep);
		public HRESULT put_KeepOriginalFormat(BOOL keep) mut => VT.put_KeepOriginalFormat(ref this, keep);
		public HRESULT PictureChanged() mut => VT.PictureChanged(ref this);
		public HRESULT SaveAsFile(ref IStream pStream, BOOL fSaveMemCopy, out int32 pCbSize) mut => VT.SaveAsFile(ref this, ref pStream, fSaveMemCopy, out pCbSize);
		public HRESULT get_Attributes(out uint32 pDwAttr) mut => VT.get_Attributes(ref this, out pDwAttr);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out uint pHandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out uint phPal) get_hPal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out int16 pType) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out int32 pWidth) get_Width;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out int32 pHeight) get_Height;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, HDC hDC, int32 x, int32 y, int32 cx, int32 cy, int32 xSrc, int32 ySrc, int32 cxSrc, int32 cySrc, ref RECT pRcWBounds) Render;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, uint hPal) set_hPal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out HDC phDC) get_CurDC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, HDC hDCIn, out HDC phDCOut, out uint phBmpOut) SelectPicture;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out BOOL pKeep) get_KeepOriginalFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, BOOL keep) put_KeepOriginalFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self) PictureChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, ref IStream pStream, BOOL fSaveMemCopy, out int32 pCbSize) SaveAsFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPicture2 self, out uint32 pDwAttr) get_Attributes;
		}
	}
	[CRepr]
	public struct IFontEventsDisp : IDispatch
	{
		public const new Guid IID = .(0x4ef6100a, 0xaf88, 0x11d0, 0x98, 0x46, 0x00, 0xc0, 0x4f, 0xc2, 0x99, 0x93);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IFontDisp : IDispatch
	{
		public const new Guid IID = .(0xbef6e003, 0xa874, 0x101a, 0x8b, 0xba, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IPictureDisp : IDispatch
	{
		public const new Guid IID = .(0x7bf80981, 0xbf32, 0x101a, 0x8b, 0xbb, 0x00, 0xaa, 0x00, 0x30, 0x0c, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IOleInPlaceObjectWindowless : IOleInPlaceObject
	{
		public const new Guid IID = .(0x1c2056cc, 0x5ef4, 0x101b, 0x8b, 0xc8, 0x00, 0xaa, 0x00, 0x3e, 0x3b, 0x29);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnWindowMessage(uint32 msg, WPARAM wParam, LPARAM lParam, out LRESULT plResult) mut => VT.OnWindowMessage(ref this, msg, wParam, lParam, out plResult);
		public HRESULT GetDropTarget(out IDropTarget* ppDropTarget) mut => VT.GetDropTarget(ref this, out ppDropTarget);

		[CRepr]
		public struct VTable : IOleInPlaceObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObjectWindowless self, uint32 msg, WPARAM wParam, LPARAM lParam, out LRESULT plResult) OnWindowMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceObjectWindowless self, out IDropTarget* ppDropTarget) GetDropTarget;
		}
	}
	[CRepr]
	public struct IOleInPlaceSiteEx : IOleInPlaceSite
	{
		public const new Guid IID = .(0x9c2cad80, 0x3424, 0x11cf, 0xb6, 0x70, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnInPlaceActivateEx(out BOOL pfNoRedraw, uint32 dwFlags) mut => VT.OnInPlaceActivateEx(ref this, out pfNoRedraw, dwFlags);
		public HRESULT OnInPlaceDeactivateEx(BOOL fNoRedraw) mut => VT.OnInPlaceDeactivateEx(ref this, fNoRedraw);
		public HRESULT RequestUIActivate() mut => VT.RequestUIActivate(ref this);

		[CRepr]
		public struct VTable : IOleInPlaceSite.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteEx self, out BOOL pfNoRedraw, uint32 dwFlags) OnInPlaceActivateEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteEx self, BOOL fNoRedraw) OnInPlaceDeactivateEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteEx self) RequestUIActivate;
		}
	}
	[CRepr]
	public struct IOleInPlaceSiteWindowless : IOleInPlaceSiteEx
	{
		public const new Guid IID = .(0x922eada0, 0x3424, 0x11cf, 0xb6, 0x70, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CanWindowlessActivate() mut => VT.CanWindowlessActivate(ref this);
		public HRESULT GetCapture() mut => VT.GetCapture(ref this);
		public HRESULT SetCapture(BOOL fCapture) mut => VT.SetCapture(ref this, fCapture);
		public HRESULT GetFocus() mut => VT.GetFocus(ref this);
		public HRESULT SetFocus(BOOL fFocus) mut => VT.SetFocus(ref this, fFocus);
		public HRESULT GetDC(ref RECT pRect, uint32 grfFlags, out HDC phDC) mut => VT.GetDC(ref this, ref pRect, grfFlags, out phDC);
		public HRESULT ReleaseDC(HDC hDC) mut => VT.ReleaseDC(ref this, hDC);
		public HRESULT InvalidateRect(ref RECT pRect, BOOL fErase) mut => VT.InvalidateRect(ref this, ref pRect, fErase);
		public HRESULT InvalidateRgn(HRGN hRGN, BOOL fErase) mut => VT.InvalidateRgn(ref this, hRGN, fErase);
		public HRESULT ScrollRect(int32 dx, int32 dy, ref RECT pRectScroll, ref RECT pRectClip) mut => VT.ScrollRect(ref this, dx, dy, ref pRectScroll, ref pRectClip);
		public HRESULT AdjustRect(out RECT prc) mut => VT.AdjustRect(ref this, out prc);
		public HRESULT OnDefWindowMessage(uint32 msg, WPARAM wParam, LPARAM lParam, out LRESULT plResult) mut => VT.OnDefWindowMessage(ref this, msg, wParam, lParam, out plResult);

		[CRepr]
		public struct VTable : IOleInPlaceSiteEx.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self) CanWindowlessActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self) GetCapture;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, BOOL fCapture) SetCapture;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self) GetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, BOOL fFocus) SetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, ref RECT pRect, uint32 grfFlags, out HDC phDC) GetDC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, HDC hDC) ReleaseDC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, ref RECT pRect, BOOL fErase) InvalidateRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, HRGN hRGN, BOOL fErase) InvalidateRgn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, int32 dx, int32 dy, ref RECT pRectScroll, ref RECT pRectClip) ScrollRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, out RECT prc) AdjustRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleInPlaceSiteWindowless self, uint32 msg, WPARAM wParam, LPARAM lParam, out LRESULT plResult) OnDefWindowMessage;
		}
	}
	[CRepr]
	public struct IViewObjectEx : IViewObject2
	{
		public const new Guid IID = .(0x3af24292, 0x0c96, 0x11ce, 0xa0, 0xcf, 0x00, 0xaa, 0x00, 0x60, 0x0a, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRect(uint32 dwAspect, out RECTL pRect) mut => VT.GetRect(ref this, dwAspect, out pRect);
		public HRESULT GetViewStatus(out uint32 pdwStatus) mut => VT.GetViewStatus(ref this, out pdwStatus);
		public HRESULT QueryHitPoint(uint32 dwAspect, ref RECT pRectBounds, POINT ptlLoc, int32 lCloseHint, out uint32 pHitResult) mut => VT.QueryHitPoint(ref this, dwAspect, ref pRectBounds, ptlLoc, lCloseHint, out pHitResult);
		public HRESULT QueryHitRect(uint32 dwAspect, ref RECT pRectBounds, ref RECT pRectLoc, int32 lCloseHint, out uint32 pHitResult) mut => VT.QueryHitRect(ref this, dwAspect, ref pRectBounds, ref pRectLoc, lCloseHint, out pHitResult);
		public HRESULT GetNaturalExtent(DVASPECT dwAspect, int32 lindex, ref DVTARGETDEVICE ptd, HDC hicTargetDev, ref ExtentInfo pExtentInfo, out SIZE pSizel) mut => VT.GetNaturalExtent(ref this, dwAspect, lindex, ref ptd, hicTargetDev, ref pExtentInfo, out pSizel);

		[CRepr]
		public struct VTable : IViewObject2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObjectEx self, uint32 dwAspect, out RECTL pRect) GetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObjectEx self, out uint32 pdwStatus) GetViewStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObjectEx self, uint32 dwAspect, ref RECT pRectBounds, POINT ptlLoc, int32 lCloseHint, out uint32 pHitResult) QueryHitPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObjectEx self, uint32 dwAspect, ref RECT pRectBounds, ref RECT pRectLoc, int32 lCloseHint, out uint32 pHitResult) QueryHitRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IViewObjectEx self, DVASPECT dwAspect, int32 lindex, ref DVTARGETDEVICE ptd, HDC hicTargetDev, ref ExtentInfo pExtentInfo, out SIZE pSizel) GetNaturalExtent;
		}
	}
	[CRepr]
	public struct IOleUndoUnit : IUnknown
	{
		public const new Guid IID = .(0x894ad3b0, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Do(ref IOleUndoManager pUndoManager) mut => VT.Do(ref this, ref pUndoManager);
		public HRESULT GetDescription(out BSTR pBstr) mut => VT.GetDescription(ref this, out pBstr);
		public HRESULT GetUnitType(out Guid pClsid, out int32 plID) mut => VT.GetUnitType(ref this, out pClsid, out plID);
		public HRESULT OnNextAdd() mut => VT.OnNextAdd(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoUnit self, ref IOleUndoManager pUndoManager) Do;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoUnit self, out BSTR pBstr) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoUnit self, out Guid pClsid, out int32 plID) GetUnitType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoUnit self) OnNextAdd;
		}
	}
	[CRepr]
	public struct IOleParentUndoUnit : IOleUndoUnit
	{
		public const new Guid IID = .(0xa1faf330, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(ref IOleParentUndoUnit pPUU) mut => VT.Open(ref this, ref pPUU);
		public HRESULT Close(ref IOleParentUndoUnit pPUU, BOOL fCommit) mut => VT.Close(ref this, ref pPUU, fCommit);
		public HRESULT Add(ref IOleUndoUnit pUU) mut => VT.Add(ref this, ref pUU);
		public HRESULT FindUnit(ref IOleUndoUnit pUU) mut => VT.FindUnit(ref this, ref pUU);
		public HRESULT GetParentState(out uint32 pdwState) mut => VT.GetParentState(ref this, out pdwState);

		[CRepr]
		public struct VTable : IOleUndoUnit.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleParentUndoUnit self, ref IOleParentUndoUnit pPUU) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleParentUndoUnit self, ref IOleParentUndoUnit pPUU, BOOL fCommit) Close;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleParentUndoUnit self, ref IOleUndoUnit pUU) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleParentUndoUnit self, ref IOleUndoUnit pUU) FindUnit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleParentUndoUnit self, out uint32 pdwState) GetParentState;
		}
	}
	[CRepr]
	public struct IEnumOleUndoUnits : IUnknown
	{
		public const new Guid IID = .(0xb3e7c340, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 cElt, IOleUndoUnit** rgElt, out uint32 pcEltFetched) mut => VT.Next(ref this, cElt, rgElt, out pcEltFetched);
		public HRESULT Skip(uint32 cElt) mut => VT.Skip(ref this, cElt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumOleUndoUnits* ppEnum) mut => VT.Clone(ref this, out ppEnum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleUndoUnits self, uint32 cElt, IOleUndoUnit** rgElt, out uint32 pcEltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleUndoUnits self, uint32 cElt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleUndoUnits self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleUndoUnits self, out IEnumOleUndoUnits* ppEnum) Clone;
		}
	}
	[CRepr]
	public struct IOleUndoManager : IUnknown
	{
		public const new Guid IID = .(0xd001f200, 0xef97, 0x11ce, 0x9b, 0xc9, 0x00, 0xaa, 0x00, 0x60, 0x8e, 0x01);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(ref IOleParentUndoUnit pPUU) mut => VT.Open(ref this, ref pPUU);
		public HRESULT Close(ref IOleParentUndoUnit pPUU, BOOL fCommit) mut => VT.Close(ref this, ref pPUU, fCommit);
		public HRESULT Add(ref IOleUndoUnit pUU) mut => VT.Add(ref this, ref pUU);
		public HRESULT GetOpenParentState(out uint32 pdwState) mut => VT.GetOpenParentState(ref this, out pdwState);
		public HRESULT DiscardFrom(ref IOleUndoUnit pUU) mut => VT.DiscardFrom(ref this, ref pUU);
		public HRESULT UndoTo(ref IOleUndoUnit pUU) mut => VT.UndoTo(ref this, ref pUU);
		public HRESULT RedoTo(ref IOleUndoUnit pUU) mut => VT.RedoTo(ref this, ref pUU);
		public HRESULT EnumUndoable(out IEnumOleUndoUnits* ppEnum) mut => VT.EnumUndoable(ref this, out ppEnum);
		public HRESULT EnumRedoable(out IEnumOleUndoUnits* ppEnum) mut => VT.EnumRedoable(ref this, out ppEnum);
		public HRESULT GetLastUndoDescription(out BSTR pBstr) mut => VT.GetLastUndoDescription(ref this, out pBstr);
		public HRESULT GetLastRedoDescription(out BSTR pBstr) mut => VT.GetLastRedoDescription(ref this, out pBstr);
		public HRESULT Enable(BOOL fEnable) mut => VT.Enable(ref this, fEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleParentUndoUnit pPUU) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleParentUndoUnit pPUU, BOOL fCommit) Close;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleUndoUnit pUU) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, out uint32 pdwState) GetOpenParentState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleUndoUnit pUU) DiscardFrom;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleUndoUnit pUU) UndoTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, ref IOleUndoUnit pUU) RedoTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, out IEnumOleUndoUnits* ppEnum) EnumUndoable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, out IEnumOleUndoUnits* ppEnum) EnumRedoable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, out BSTR pBstr) GetLastUndoDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, out BSTR pBstr) GetLastRedoDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUndoManager self, BOOL fEnable) Enable;
		}
	}
	[CRepr]
	public struct IPointerInactive : IUnknown
	{
		public const new Guid IID = .(0x55980ba0, 0x35aa, 0x11cf, 0xb6, 0x71, 0x00, 0xaa, 0x00, 0x4c, 0xd6, 0xd8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetActivationPolicy(out uint32 pdwPolicy) mut => VT.GetActivationPolicy(ref this, out pdwPolicy);
		public HRESULT OnInactiveMouseMove(ref RECT pRectBounds, int32 x, int32 y, uint32 grfKeyState) mut => VT.OnInactiveMouseMove(ref this, ref pRectBounds, x, y, grfKeyState);
		public HRESULT OnInactiveSetCursor(ref RECT pRectBounds, int32 x, int32 y, uint32 dwMouseMsg, BOOL fSetAlways) mut => VT.OnInactiveSetCursor(ref this, ref pRectBounds, x, y, dwMouseMsg, fSetAlways);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPointerInactive self, out uint32 pdwPolicy) GetActivationPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPointerInactive self, ref RECT pRectBounds, int32 x, int32 y, uint32 grfKeyState) OnInactiveMouseMove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPointerInactive self, ref RECT pRectBounds, int32 x, int32 y, uint32 dwMouseMsg, BOOL fSetAlways) OnInactiveSetCursor;
		}
	}
	[CRepr]
	public struct IObjectWithSite : IUnknown
	{
		public const new Guid IID = .(0xfc4801a3, 0x2ba9, 0x11cf, 0xa2, 0x29, 0x00, 0xaa, 0x00, 0x3d, 0x73, 0x52);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSite(ref IUnknown pUnkSite) mut => VT.SetSite(ref this, ref pUnkSite);
		public HRESULT GetSite(in Guid riid, void** ppvSite) mut => VT.GetSite(ref this, riid, ppvSite);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithSite self, ref IUnknown pUnkSite) SetSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithSite self, in Guid riid, void** ppvSite) GetSite;
		}
	}
	[CRepr]
	public struct IPerPropertyBrowsing : IUnknown
	{
		public const new Guid IID = .(0x376bd3aa, 0x3845, 0x101b, 0x84, 0xed, 0x08, 0x00, 0x2b, 0x2e, 0xc7, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDisplayString(int32 dispID, out BSTR pBstr) mut => VT.GetDisplayString(ref this, dispID, out pBstr);
		public HRESULT MapPropertyToPage(int32 dispID, out Guid pClsid) mut => VT.MapPropertyToPage(ref this, dispID, out pClsid);
		public HRESULT GetPredefinedStrings(int32 dispID, out CALPOLESTR pCaStringsOut, out CADWORD pCaCookiesOut) mut => VT.GetPredefinedStrings(ref this, dispID, out pCaStringsOut, out pCaCookiesOut);
		public HRESULT GetPredefinedValue(int32 dispID, uint32 dwCookie, out VARIANT pVarOut) mut => VT.GetPredefinedValue(ref this, dispID, dwCookie, out pVarOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerPropertyBrowsing self, int32 dispID, out BSTR pBstr) GetDisplayString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerPropertyBrowsing self, int32 dispID, out Guid pClsid) MapPropertyToPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerPropertyBrowsing self, int32 dispID, out CALPOLESTR pCaStringsOut, out CADWORD pCaCookiesOut) GetPredefinedStrings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPerPropertyBrowsing self, int32 dispID, uint32 dwCookie, out VARIANT pVarOut) GetPredefinedValue;
		}
	}
	[CRepr]
	public struct IPersistPropertyBag2 : IPersist
	{
		public const new Guid IID = .(0x22f55881, 0x280b, 0x11d0, 0xa8, 0xa9, 0x00, 0xa0, 0xc9, 0x0c, 0x20, 0x04);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitNew() mut => VT.InitNew(ref this);
		public HRESULT Load(ref IPropertyBag2 pPropBag, ref IErrorLog pErrLog) mut => VT.Load(ref this, ref pPropBag, ref pErrLog);
		public HRESULT Save(ref IPropertyBag2 pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) mut => VT.Save(ref this, ref pPropBag, fClearDirty, fSaveAllProperties);
		public HRESULT IsDirty() mut => VT.IsDirty(ref this);

		[CRepr]
		public struct VTable : IPersist.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag2 self) InitNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag2 self, ref IPropertyBag2 pPropBag, ref IErrorLog pErrLog) Load;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag2 self, ref IPropertyBag2 pPropBag, BOOL fClearDirty, BOOL fSaveAllProperties) Save;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistPropertyBag2 self) IsDirty;
		}
	}
	[CRepr]
	public struct IAdviseSinkEx : IAdviseSink
	{
		public const new Guid IID = .(0x3af24290, 0x0c96, 0x11ce, 0xa0, 0xcf, 0x00, 0xaa, 0x00, 0x60, 0x0a, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public void OnViewStatusChange(uint32 dwViewStatus) mut => VT.OnViewStatusChange(ref this, dwViewStatus);

		[CRepr]
		public struct VTable : IAdviseSink.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IAdviseSinkEx self, uint32 dwViewStatus) OnViewStatusChange;
		}
	}
	[CRepr]
	public struct IQuickActivate : IUnknown
	{
		public const new Guid IID = .(0xcf51ed10, 0x62fe, 0x11cf, 0xbf, 0x86, 0x00, 0xa0, 0xc9, 0x03, 0x48, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QuickActivate(ref QACONTAINER pQaContainer, out QACONTROL pQaControl) mut => VT.QuickActivate(ref this, ref pQaContainer, out pQaControl);
		public HRESULT SetContentExtent(ref SIZE pSizel) mut => VT.SetContentExtent(ref this, ref pSizel);
		public HRESULT GetContentExtent(out SIZE pSizel) mut => VT.GetContentExtent(ref this, out pSizel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQuickActivate self, ref QACONTAINER pQaContainer, out QACONTROL pQaControl) QuickActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQuickActivate self, ref SIZE pSizel) SetContentExtent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQuickActivate self, out SIZE pSizel) GetContentExtent;
		}
	}
	[CRepr]
	public struct IVBGetControl : IUnknown
	{
		public const new Guid IID = .(0x40a050a0, 0x3c31, 0x101b, 0xa8, 0x2e, 0x08, 0x00, 0x2b, 0x2b, 0x23, 0x37);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumControls(OLECONTF dwOleContF, ENUM_CONTROLS_WHICH_FLAGS dwWhich, out IEnumUnknown* ppenumUnk) mut => VT.EnumControls(ref this, dwOleContF, dwWhich, out ppenumUnk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVBGetControl self, OLECONTF dwOleContF, ENUM_CONTROLS_WHICH_FLAGS dwWhich, out IEnumUnknown* ppenumUnk) EnumControls;
		}
	}
	[CRepr]
	public struct IGetOleObject : IUnknown
	{
		public const new Guid IID = .(0x8a701da0, 0x4feb, 0x101b, 0xa8, 0x2e, 0x08, 0x00, 0x2b, 0x2b, 0x23, 0x37);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetOleObject(in Guid riid, void** ppvObj) mut => VT.GetOleObject(ref this, riid, ppvObj);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetOleObject self, in Guid riid, void** ppvObj) GetOleObject;
		}
	}
	[CRepr]
	public struct IVBFormat : IUnknown
	{
		public const new Guid IID = .(0x9849fd60, 0x3768, 0x101b, 0x8d, 0x72, 0xae, 0x61, 0x64, 0xff, 0xe3, 0xcf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Format(out VARIANT vData, BSTR bstrFormat, void* lpBuffer, uint16 cb, int32 lcid, int16 sFirstDayOfWeek, uint16 sFirstWeekOfYear, out uint16 rcb) mut => VT.Format(ref this, out vData, bstrFormat, lpBuffer, cb, lcid, sFirstDayOfWeek, sFirstWeekOfYear, out rcb);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVBFormat self, out VARIANT vData, BSTR bstrFormat, void* lpBuffer, uint16 cb, int32 lcid, int16 sFirstDayOfWeek, uint16 sFirstWeekOfYear, out uint16 rcb) Format;
		}
	}
	[CRepr]
	public struct IGetVBAObject : IUnknown
	{
		public const new Guid IID = .(0x91733a60, 0x3f4c, 0x101b, 0xa3, 0xf6, 0x00, 0xaa, 0x00, 0x34, 0xe4, 0xe9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetObject(in Guid riid, void** ppvObj, uint32 dwReserved) mut => VT.GetObject(ref this, riid, ppvObj, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetVBAObject self, in Guid riid, void** ppvObj, uint32 dwReserved) GetObject;
		}
	}
	[CRepr]
	public struct IOleDocument : IUnknown
	{
		public const new Guid IID = .(0xb722bcc5, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateView(ref IOleInPlaceSite pIPSite, ref IStream pstm, uint32 dwReserved, out IOleDocumentView* ppView) mut => VT.CreateView(ref this, ref pIPSite, ref pstm, dwReserved, out ppView);
		public HRESULT GetDocMiscStatus(out uint32 pdwStatus) mut => VT.GetDocMiscStatus(ref this, out pdwStatus);
		public HRESULT EnumViews(out IEnumOleDocumentViews* ppEnum, out IOleDocumentView* ppView) mut => VT.EnumViews(ref this, out ppEnum, out ppView);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocument self, ref IOleInPlaceSite pIPSite, ref IStream pstm, uint32 dwReserved, out IOleDocumentView* ppView) CreateView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocument self, out uint32 pdwStatus) GetDocMiscStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocument self, out IEnumOleDocumentViews* ppEnum, out IOleDocumentView* ppView) EnumViews;
		}
	}
	[CRepr]
	public struct IOleDocumentSite : IUnknown
	{
		public const new Guid IID = .(0xb722bcc7, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateMe(ref IOleDocumentView pViewToActivate) mut => VT.ActivateMe(ref this, ref pViewToActivate);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentSite self, ref IOleDocumentView pViewToActivate) ActivateMe;
		}
	}
	[CRepr]
	public struct IOleDocumentView : IUnknown
	{
		public const new Guid IID = .(0xb722bcc6, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetInPlaceSite(ref IOleInPlaceSite pIPSite) mut => VT.SetInPlaceSite(ref this, ref pIPSite);
		public HRESULT GetInPlaceSite(out IOleInPlaceSite* ppIPSite) mut => VT.GetInPlaceSite(ref this, out ppIPSite);
		public HRESULT GetDocument(out IUnknown* ppunk) mut => VT.GetDocument(ref this, out ppunk);
		public HRESULT SetRect(ref RECT prcView) mut => VT.SetRect(ref this, ref prcView);
		public HRESULT GetRect(out RECT prcView) mut => VT.GetRect(ref this, out prcView);
		public HRESULT SetRectComplex(ref RECT prcView, ref RECT prcHScroll, ref RECT prcVScroll, ref RECT prcSizeBox) mut => VT.SetRectComplex(ref this, ref prcView, ref prcHScroll, ref prcVScroll, ref prcSizeBox);
		public HRESULT Show(BOOL fShow) mut => VT.Show(ref this, fShow);
		public HRESULT UIActivate(BOOL fUIActivate) mut => VT.UIActivate(ref this, fUIActivate);
		public HRESULT Open() mut => VT.Open(ref this);
		public HRESULT CloseView(uint32 dwReserved) mut => VT.CloseView(ref this, dwReserved);
		public HRESULT SaveViewState(ref IStream pstm) mut => VT.SaveViewState(ref this, ref pstm);
		public HRESULT ApplyViewState(ref IStream pstm) mut => VT.ApplyViewState(ref this, ref pstm);
		public HRESULT Clone(ref IOleInPlaceSite pIPSiteNew, out IOleDocumentView* ppViewNew) mut => VT.Clone(ref this, ref pIPSiteNew, out ppViewNew);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref IOleInPlaceSite pIPSite) SetInPlaceSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, out IOleInPlaceSite* ppIPSite) GetInPlaceSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, out IUnknown* ppunk) GetDocument;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref RECT prcView) SetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, out RECT prcView) GetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref RECT prcView, ref RECT prcHScroll, ref RECT prcVScroll, ref RECT prcSizeBox) SetRectComplex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, BOOL fShow) Show;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, BOOL fUIActivate) UIActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, uint32 dwReserved) CloseView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref IStream pstm) SaveViewState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref IStream pstm) ApplyViewState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleDocumentView self, ref IOleInPlaceSite pIPSiteNew, out IOleDocumentView* ppViewNew) Clone;
		}
	}
	[CRepr]
	public struct IEnumOleDocumentViews : IUnknown
	{
		public const new Guid IID = .(0xb722bcc8, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 cViews, out IOleDocumentView* rgpView, out uint32 pcFetched) mut => VT.Next(ref this, cViews, out rgpView, out pcFetched);
		public HRESULT Skip(uint32 cViews) mut => VT.Skip(ref this, cViews);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumOleDocumentViews* ppEnum) mut => VT.Clone(ref this, out ppEnum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleDocumentViews self, uint32 cViews, out IOleDocumentView* rgpView, out uint32 pcFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleDocumentViews self, uint32 cViews) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleDocumentViews self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumOleDocumentViews self, out IEnumOleDocumentViews* ppEnum) Clone;
		}
	}
	[CRepr]
	public struct IContinueCallback : IUnknown
	{
		public const new Guid IID = .(0xb722bcca, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FContinue() mut => VT.FContinue(ref this);
		public HRESULT FContinuePrinting(int32 nCntPrinted, int32 nCurPage, PWSTR pwszPrintStatus) mut => VT.FContinuePrinting(ref this, nCntPrinted, nCurPage, pwszPrintStatus);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContinueCallback self) FContinue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContinueCallback self, int32 nCntPrinted, int32 nCurPage, PWSTR pwszPrintStatus) FContinuePrinting;
		}
	}
	[CRepr]
	public struct IPrint : IUnknown
	{
		public const new Guid IID = .(0xb722bcc9, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetInitialPageNum(int32 nFirstPage) mut => VT.SetInitialPageNum(ref this, nFirstPage);
		public HRESULT GetPageInfo(out int32 pnFirstPage, out int32 pcPages) mut => VT.GetPageInfo(ref this, out pnFirstPage, out pcPages);
		public HRESULT Print(uint32 grfFlags, out DVTARGETDEVICE* pptd, out PAGESET* ppPageSet, out STGMEDIUM pstgmOptions, ref IContinueCallback pcallback, int32 nFirstPage, out int32 pcPagesPrinted, out int32 pnLastPage) mut => VT.Print(ref this, grfFlags, out pptd, out ppPageSet, out pstgmOptions, ref pcallback, nFirstPage, out pcPagesPrinted, out pnLastPage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrint self, int32 nFirstPage) SetInitialPageNum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrint self, out int32 pnFirstPage, out int32 pcPages) GetPageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPrint self, uint32 grfFlags, out DVTARGETDEVICE* pptd, out PAGESET* ppPageSet, out STGMEDIUM pstgmOptions, ref IContinueCallback pcallback, int32 nFirstPage, out int32 pcPagesPrinted, out int32 pnLastPage) Print;
		}
	}
	[CRepr]
	public struct IOleCommandTarget : IUnknown
	{
		public const new Guid IID = .(0xb722bccb, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryStatus(in Guid pguidCmdGroup, uint32 cCmds, out OLECMD prgCmds, out OLECMDTEXT pCmdText) mut => VT.QueryStatus(ref this, pguidCmdGroup, cCmds, out prgCmds, out pCmdText);
		public HRESULT Exec(in Guid pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, ref VARIANT pvaIn, out VARIANT pvaOut) mut => VT.Exec(ref this, pguidCmdGroup, nCmdID, nCmdexecopt, ref pvaIn, out pvaOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCommandTarget self, in Guid pguidCmdGroup, uint32 cCmds, out OLECMD prgCmds, out OLECMDTEXT pCmdText) QueryStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleCommandTarget self, in Guid pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, ref VARIANT pvaIn, out VARIANT pvaOut) Exec;
		}
	}
	[CRepr]
	public struct IZoomEvents : IUnknown
	{
		public const new Guid IID = .(0x41b68150, 0x904c, 0x4e17, 0xa0, 0xba, 0xa4, 0x38, 0x18, 0x2e, 0x35, 0x9d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnZoomPercentChanged(uint32 ulZoomPercent) mut => VT.OnZoomPercentChanged(ref this, ulZoomPercent);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IZoomEvents self, uint32 ulZoomPercent) OnZoomPercentChanged;
		}
	}
	[CRepr]
	public struct IProtectFocus : IUnknown
	{
		public const new Guid IID = .(0xd81f90a3, 0x8156, 0x44f7, 0xad, 0x28, 0x5a, 0xbb, 0x87, 0x00, 0x32, 0x74);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AllowFocusChange(out BOOL pfAllow) mut => VT.AllowFocusChange(ref this, out pfAllow);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectFocus self, out BOOL pfAllow) AllowFocusChange;
		}
	}
	[CRepr]
	public struct IProtectedModeMenuServices : IUnknown
	{
		public const new Guid IID = .(0x73c105ee, 0x9dff, 0x4a07, 0xb8, 0x3c, 0x7e, 0xff, 0x29, 0x0c, 0x26, 0x6e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateMenu(out HMENU phMenu) mut => VT.CreateMenu(ref this, out phMenu);
		public HRESULT LoadMenu(PWSTR pszModuleName, PWSTR pszMenuName, out HMENU phMenu) mut => VT.LoadMenu(ref this, pszModuleName, pszMenuName, out phMenu);
		public HRESULT LoadMenuID(PWSTR pszModuleName, uint16 wResourceID, out HMENU phMenu) mut => VT.LoadMenuID(ref this, pszModuleName, wResourceID, out phMenu);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectedModeMenuServices self, out HMENU phMenu) CreateMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectedModeMenuServices self, PWSTR pszModuleName, PWSTR pszMenuName, out HMENU phMenu) LoadMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProtectedModeMenuServices self, PWSTR pszModuleName, uint16 wResourceID, out HMENU phMenu) LoadMenuID;
		}
	}
	[CRepr]
	public struct IOleUILinkContainerW : IUnknown
	{
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetNextLink(uint32 dwLink) mut => VT.GetNextLink(ref this, dwLink);
		public HRESULT SetLinkUpdateOptions(uint32 dwLink, uint32 dwUpdateOpt) mut => VT.SetLinkUpdateOptions(ref this, dwLink, dwUpdateOpt);
		public HRESULT GetLinkUpdateOptions(uint32 dwLink, out uint32 lpdwUpdateOpt) mut => VT.GetLinkUpdateOptions(ref this, dwLink, out lpdwUpdateOpt);
		public HRESULT SetLinkSource(uint32 dwLink, PWSTR lpszDisplayName, uint32 lenFileName, out uint32 pchEaten, BOOL fValidateSource) mut => VT.SetLinkSource(ref this, dwLink, lpszDisplayName, lenFileName, out pchEaten, fValidateSource);
		public HRESULT GetLinkSource(uint32 dwLink, PWSTR* lplpszDisplayName, out uint32 lplenFileName, PWSTR* lplpszFullLinkType, PWSTR* lplpszShortLinkType, out BOOL lpfSourceAvailable, out BOOL lpfIsSelected) mut => VT.GetLinkSource(ref this, dwLink, lplpszDisplayName, out lplenFileName, lplpszFullLinkType, lplpszShortLinkType, out lpfSourceAvailable, out lpfIsSelected);
		public HRESULT OpenLinkSource(uint32 dwLink) mut => VT.OpenLinkSource(ref this, dwLink);
		public HRESULT UpdateLink(uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) mut => VT.UpdateLink(ref this, dwLink, fErrorMessage, fReserved);
		public HRESULT CancelLink(uint32 dwLink) mut => VT.CancelLink(ref this, dwLink);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IOleUILinkContainerW self, uint32 dwLink) GetNextLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink, uint32 dwUpdateOpt) SetLinkUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink, out uint32 lpdwUpdateOpt) GetLinkUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink, PWSTR lpszDisplayName, uint32 lenFileName, out uint32 pchEaten, BOOL fValidateSource) SetLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink, PWSTR* lplpszDisplayName, out uint32 lplenFileName, PWSTR* lplpszFullLinkType, PWSTR* lplpszShortLinkType, out BOOL lpfSourceAvailable, out BOOL lpfIsSelected) GetLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink) OpenLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) UpdateLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerW self, uint32 dwLink) CancelLink;
		}
	}
	[CRepr]
	public struct IOleUILinkContainerA : IUnknown
	{
		public new VTable* VT { get => (.)vt; }
		
		public uint32 GetNextLink(uint32 dwLink) mut => VT.GetNextLink(ref this, dwLink);
		public HRESULT SetLinkUpdateOptions(uint32 dwLink, uint32 dwUpdateOpt) mut => VT.SetLinkUpdateOptions(ref this, dwLink, dwUpdateOpt);
		public HRESULT GetLinkUpdateOptions(uint32 dwLink, out uint32 lpdwUpdateOpt) mut => VT.GetLinkUpdateOptions(ref this, dwLink, out lpdwUpdateOpt);
		public HRESULT SetLinkSource(uint32 dwLink, PSTR lpszDisplayName, uint32 lenFileName, out uint32 pchEaten, BOOL fValidateSource) mut => VT.SetLinkSource(ref this, dwLink, lpszDisplayName, lenFileName, out pchEaten, fValidateSource);
		public HRESULT GetLinkSource(uint32 dwLink, PSTR* lplpszDisplayName, out uint32 lplenFileName, PSTR* lplpszFullLinkType, PSTR* lplpszShortLinkType, out BOOL lpfSourceAvailable, out BOOL lpfIsSelected) mut => VT.GetLinkSource(ref this, dwLink, lplpszDisplayName, out lplenFileName, lplpszFullLinkType, lplpszShortLinkType, out lpfSourceAvailable, out lpfIsSelected);
		public HRESULT OpenLinkSource(uint32 dwLink) mut => VT.OpenLinkSource(ref this, dwLink);
		public HRESULT UpdateLink(uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) mut => VT.UpdateLink(ref this, dwLink, fErrorMessage, fReserved);
		public HRESULT CancelLink(uint32 dwLink) mut => VT.CancelLink(ref this, dwLink);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref IOleUILinkContainerA self, uint32 dwLink) GetNextLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink, uint32 dwUpdateOpt) SetLinkUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink, out uint32 lpdwUpdateOpt) GetLinkUpdateOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink, PSTR lpszDisplayName, uint32 lenFileName, out uint32 pchEaten, BOOL fValidateSource) SetLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink, PSTR* lplpszDisplayName, out uint32 lplenFileName, PSTR* lplpszFullLinkType, PSTR* lplpszShortLinkType, out BOOL lpfSourceAvailable, out BOOL lpfIsSelected) GetLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink) OpenLinkSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink, BOOL fErrorMessage, BOOL fReserved) UpdateLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkContainerA self, uint32 dwLink) CancelLink;
		}
	}
	[CRepr]
	public struct IOleUIObjInfoW : IUnknown
	{
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetObjectInfo(uint32 dwObject, out uint32 lpdwObjSize, PWSTR* lplpszLabel, PWSTR* lplpszType, PWSTR* lplpszShortType, PWSTR* lplpszLocation) mut => VT.GetObjectInfo(ref this, dwObject, out lpdwObjSize, lplpszLabel, lplpszType, lplpszShortType, lplpszLocation);
		public HRESULT GetConvertInfo(uint32 dwObject, out Guid lpClassID, out uint16 lpwFormat, out Guid lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) mut => VT.GetConvertInfo(ref this, dwObject, out lpClassID, out lpwFormat, out lpConvertDefaultClassID, lplpClsidExclude, lpcClsidExclude);
		public HRESULT ConvertObject(uint32 dwObject, in Guid clsidNew) mut => VT.ConvertObject(ref this, dwObject, clsidNew);
		public HRESULT GetViewInfo(uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) mut => VT.GetViewInfo(ref this, dwObject, phMetaPict, pdvAspect, pnCurrentScale);
		public HRESULT SetViewInfo(uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) mut => VT.SetViewInfo(ref this, dwObject, hMetaPict, dvAspect, nCurrentScale, bRelativeToOrig);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoW self, uint32 dwObject, out uint32 lpdwObjSize, PWSTR* lplpszLabel, PWSTR* lplpszType, PWSTR* lplpszShortType, PWSTR* lplpszLocation) GetObjectInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoW self, uint32 dwObject, out Guid lpClassID, out uint16 lpwFormat, out Guid lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) GetConvertInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoW self, uint32 dwObject, in Guid clsidNew) ConvertObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoW self, uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) GetViewInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoW self, uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) SetViewInfo;
		}
	}
	[CRepr]
	public struct IOleUIObjInfoA : IUnknown
	{
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetObjectInfo(uint32 dwObject, out uint32 lpdwObjSize, PSTR* lplpszLabel, PSTR* lplpszType, PSTR* lplpszShortType, PSTR* lplpszLocation) mut => VT.GetObjectInfo(ref this, dwObject, out lpdwObjSize, lplpszLabel, lplpszType, lplpszShortType, lplpszLocation);
		public HRESULT GetConvertInfo(uint32 dwObject, out Guid lpClassID, out uint16 lpwFormat, out Guid lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) mut => VT.GetConvertInfo(ref this, dwObject, out lpClassID, out lpwFormat, out lpConvertDefaultClassID, lplpClsidExclude, lpcClsidExclude);
		public HRESULT ConvertObject(uint32 dwObject, in Guid clsidNew) mut => VT.ConvertObject(ref this, dwObject, clsidNew);
		public HRESULT GetViewInfo(uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) mut => VT.GetViewInfo(ref this, dwObject, phMetaPict, pdvAspect, pnCurrentScale);
		public HRESULT SetViewInfo(uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) mut => VT.SetViewInfo(ref this, dwObject, hMetaPict, dvAspect, nCurrentScale, bRelativeToOrig);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoA self, uint32 dwObject, out uint32 lpdwObjSize, PSTR* lplpszLabel, PSTR* lplpszType, PSTR* lplpszShortType, PSTR* lplpszLocation) GetObjectInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoA self, uint32 dwObject, out Guid lpClassID, out uint16 lpwFormat, out Guid lpConvertDefaultClassID, Guid** lplpClsidExclude, uint32* lpcClsidExclude) GetConvertInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoA self, uint32 dwObject, in Guid clsidNew) ConvertObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoA self, uint32 dwObject, int* phMetaPict, uint32* pdvAspect, int32* pnCurrentScale) GetViewInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUIObjInfoA self, uint32 dwObject, int hMetaPict, uint32 dvAspect, int32 nCurrentScale, BOOL bRelativeToOrig) SetViewInfo;
		}
	}
	[CRepr]
	public struct IOleUILinkInfoW : IOleUILinkContainerW
	{
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLastUpdate(uint32 dwLink, out FILETIME lpLastUpdate) mut => VT.GetLastUpdate(ref this, dwLink, out lpLastUpdate);

		[CRepr]
		public struct VTable : IOleUILinkContainerW.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkInfoW self, uint32 dwLink, out FILETIME lpLastUpdate) GetLastUpdate;
		}
	}
	[CRepr]
	public struct IOleUILinkInfoA : IOleUILinkContainerA
	{
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLastUpdate(uint32 dwLink, out FILETIME lpLastUpdate) mut => VT.GetLastUpdate(ref this, dwLink, out lpLastUpdate);

		[CRepr]
		public struct VTable : IOleUILinkContainerA.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOleUILinkInfoA self, uint32 dwLink, out FILETIME lpLastUpdate) GetLastUpdate;
		}
	}
	[CRepr]
	public struct IDispatchEx : IDispatch
	{
		public const new Guid IID = .(0xa6ef9860, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDispID(BSTR bstrName, uint32 grfdex, out int32 pid) mut => VT.GetDispID(ref this, bstrName, grfdex, out pid);
		public HRESULT InvokeEx(int32 id, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdp, VARIANT* pvarRes, EXCEPINFO* pei, IServiceProvider* pspCaller) mut => VT.InvokeEx(ref this, id, lcid, wFlags, ref pdp, pvarRes, pei, pspCaller);
		public HRESULT DeleteMemberByName(BSTR bstrName, uint32 grfdex) mut => VT.DeleteMemberByName(ref this, bstrName, grfdex);
		public HRESULT DeleteMemberByDispID(int32 id) mut => VT.DeleteMemberByDispID(ref this, id);
		public HRESULT GetMemberProperties(int32 id, uint32 grfdexFetch, out uint32 pgrfdex) mut => VT.GetMemberProperties(ref this, id, grfdexFetch, out pgrfdex);
		public HRESULT GetMemberName(int32 id, out BSTR pbstrName) mut => VT.GetMemberName(ref this, id, out pbstrName);
		public HRESULT GetNextDispID(uint32 grfdex, int32 id, out int32 pid) mut => VT.GetNextDispID(ref this, grfdex, id, out pid);
		public HRESULT GetNameSpaceParent(out IUnknown* ppunk) mut => VT.GetNameSpaceParent(ref this, out ppunk);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, BSTR bstrName, uint32 grfdex, out int32 pid) GetDispID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, int32 id, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdp, VARIANT* pvarRes, EXCEPINFO* pei, IServiceProvider* pspCaller) InvokeEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, BSTR bstrName, uint32 grfdex) DeleteMemberByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, int32 id) DeleteMemberByDispID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, int32 id, uint32 grfdexFetch, out uint32 pgrfdex) GetMemberProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, int32 id, out BSTR pbstrName) GetMemberName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, uint32 grfdex, int32 id, out int32 pid) GetNextDispID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispatchEx self, out IUnknown* ppunk) GetNameSpaceParent;
		}
	}
	[CRepr]
	public struct IDispError : IUnknown
	{
		public const new Guid IID = .(0xa6ef9861, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryErrorInfo(Guid guidErrorType, out IDispError* ppde) mut => VT.QueryErrorInfo(ref this, guidErrorType, out ppde);
		public HRESULT GetNext(out IDispError* ppde) mut => VT.GetNext(ref this, out ppde);
		public HRESULT GetHresult(out HRESULT phr) mut => VT.GetHresult(ref this, out phr);
		public HRESULT GetSource(out BSTR pbstrSource) mut => VT.GetSource(ref this, out pbstrSource);
		public HRESULT GetHelpInfo(out BSTR pbstrFileName, out uint32 pdwContext) mut => VT.GetHelpInfo(ref this, out pbstrFileName, out pdwContext);
		public HRESULT GetDescription(out BSTR pbstrDescription) mut => VT.GetDescription(ref this, out pbstrDescription);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, Guid guidErrorType, out IDispError* ppde) QueryErrorInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, out IDispError* ppde) GetNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, out HRESULT phr) GetHresult;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, out BSTR pbstrSource) GetSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, out BSTR pbstrFileName, out uint32 pdwContext) GetHelpInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDispError self, out BSTR pbstrDescription) GetDescription;
		}
	}
	[CRepr]
	public struct IVariantChangeType : IUnknown
	{
		public const new Guid IID = .(0xa6ef9862, 0xc720, 0x11d0, 0x93, 0x37, 0x00, 0xa0, 0xc9, 0x0d, 0xca, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ChangeType(out VARIANT pvarDst, ref VARIANT pvarSrc, uint32 lcid, uint16 vtNew) mut => VT.ChangeType(ref this, out pvarDst, ref pvarSrc, lcid, vtNew);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVariantChangeType self, out VARIANT pvarDst, ref VARIANT pvarSrc, uint32 lcid, uint16 vtNew) ChangeType;
		}
	}
	[CRepr]
	public struct IObjectIdentity : IUnknown
	{
		public const new Guid IID = .(0xca04b7e6, 0x0d21, 0x11d1, 0x8c, 0xc5, 0x00, 0xc0, 0x4f, 0xc2, 0xb0, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsEqualObject(ref IUnknown punk) mut => VT.IsEqualObject(ref this, ref punk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIdentity self, ref IUnknown punk) IsEqualObject;
		}
	}
	[CRepr]
	public struct ICanHandleException : IUnknown
	{
		public const new Guid IID = .(0xc5598e60, 0xb307, 0x11d1, 0xb2, 0x7d, 0x00, 0x60, 0x08, 0xc3, 0xfb, 0xfb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CanHandleException(ref EXCEPINFO pExcepInfo, ref VARIANT pvar) mut => VT.CanHandleException(ref this, ref pExcepInfo, ref pvar);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICanHandleException self, ref EXCEPINFO pExcepInfo, ref VARIANT pvar) CanHandleException;
		}
	}
	[CRepr]
	public struct IProvideRuntimeContext : IUnknown
	{
		public const new Guid IID = .(0x10e2414a, 0xec59, 0x49d2, 0xbc, 0x51, 0x5a, 0xdd, 0x2c, 0x36, 0xfe, 0xbc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCurrentSourceContext(out uint pdwContext, out int16 pfExecutingGlobalCode) mut => VT.GetCurrentSourceContext(ref this, out pdwContext, out pfExecutingGlobalCode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProvideRuntimeContext self, out uint pdwContext, out int16 pfExecutingGlobalCode) GetCurrentSourceContext;
		}
	}
	#endregion
	
	#region Functions
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 DosDateTimeToVariantTime(uint16 wDosDate, uint16 wDosTime, out double pvtime);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 VariantTimeToDosDateTime(double vtime, out uint16 pwDosDate, out uint16 pwDosTime);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SystemTimeToVariantTime(ref SYSTEMTIME lpSystemTime, out double pvtime);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 VariantTimeToSystemTime(double vtime, out SYSTEMTIME lpSystemTime);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayAllocDescriptor(uint32 cDims, out SAFEARRAY* ppsaOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayAllocDescriptorEx(uint16 vt, uint32 cDims, out SAFEARRAY* ppsaOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayAllocData(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern SAFEARRAY* SafeArrayCreate(uint16 vt, uint32 cDims, ref SAFEARRAYBOUND rgsabound);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern SAFEARRAY* SafeArrayCreateEx(uint16 vt, uint32 cDims, ref SAFEARRAYBOUND rgsabound, void* pvExtra);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayCopyData(ref SAFEARRAY psaSource, ref SAFEARRAY psaTarget);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SafeArrayReleaseDescriptor(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayDestroyDescriptor(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SafeArrayReleaseData(void* pData);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayDestroyData(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayAddRef(ref SAFEARRAY psa, void** ppDataToRelease);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayDestroy(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayRedim(out SAFEARRAY psa, ref SAFEARRAYBOUND psaboundNew);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SafeArrayGetDim(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SafeArrayGetElemsize(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetUBound(ref SAFEARRAY psa, uint32 nDim, out int32 plUbound);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetLBound(ref SAFEARRAY psa, uint32 nDim, out int32 plLbound);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayLock(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayUnlock(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayAccessData(ref SAFEARRAY psa, void** ppvData);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayUnaccessData(ref SAFEARRAY psa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetElement(ref SAFEARRAY psa, ref int32 rgIndices, void* pv);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayPutElement(ref SAFEARRAY psa, ref int32 rgIndices, void* pv);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayCopy(ref SAFEARRAY psa, out SAFEARRAY* ppsaOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayPtrOfIndex(ref SAFEARRAY psa, ref int32 rgIndices, void** ppvData);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArraySetRecordInfo(ref SAFEARRAY psa, ref IRecordInfo prinfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetRecordInfo(ref SAFEARRAY psa, out IRecordInfo* prinfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArraySetIID(ref SAFEARRAY psa, in Guid guid);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetIID(ref SAFEARRAY psa, out Guid pguid);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SafeArrayGetVartype(ref SAFEARRAY psa, out uint16 pvt);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern SAFEARRAY* SafeArrayCreateVector(uint16 vt, int32 lLbound, uint32 cElements);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern SAFEARRAY* SafeArrayCreateVectorEx(uint16 vt, int32 lLbound, uint32 cElements, void* pvExtra);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void VariantInit(out VARIANT pvarg);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VariantClear(out VARIANT pvarg);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VariantCopy(out VARIANT pvargDest, in VARIANT pvargSrc);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VariantCopyInd(out VARIANT pvarDest, in VARIANT pvargSrc);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VariantChangeType(out VARIANT pvargDest, in VARIANT pvarSrc, uint16 wFlags, uint16 vt);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VariantChangeTypeEx(out VARIANT pvargDest, in VARIANT pvarSrc, uint32 lcid, uint16 wFlags, uint16 vt);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VectorFromBstr(BSTR bstr, out SAFEARRAY* ppsa);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT BstrFromVector(ref SAFEARRAY psa, out BSTR pbstr);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromI2(int16 sIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromI4(int32 lIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromI8(int64 i64In, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromR4(float fltIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromR8(double dblIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromCy(CY cyIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromDate(double dateIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromDisp(ref IDispatch pdispIn, uint32 lcid, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromBool(int16 boolIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromI1(CHAR cIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromUI2(uint16 uiIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromUI4(uint32 ulIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromUI8(uint64 ui64In, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI1FromDec(in DECIMAL pdecIn, out uint8 pbOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromUI1(uint8 bIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromI4(int32 lIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromI8(int64 i64In, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromR4(float fltIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromR8(double dblIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromCy(CY cyIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromDate(double dateIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromDisp(ref IDispatch pdispIn, uint32 lcid, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromBool(int16 boolIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromI1(CHAR cIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromUI2(uint16 uiIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromUI4(uint32 ulIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromUI8(uint64 ui64In, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI2FromDec(in DECIMAL pdecIn, out int16 psOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromUI1(uint8 bIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromI2(int16 sIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromI8(int64 i64In, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromR4(float fltIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromR8(double dblIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromCy(CY cyIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromDate(double dateIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromDisp(ref IDispatch pdispIn, uint32 lcid, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromBool(int16 boolIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromI1(CHAR cIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromUI2(uint16 uiIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromUI4(uint32 ulIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromUI8(uint64 ui64In, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI4FromDec(in DECIMAL pdecIn, out int32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromUI1(uint8 bIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromI2(int16 sIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromR4(float fltIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromR8(double dblIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromCy(CY cyIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromDate(double dateIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromDisp(ref IDispatch pdispIn, uint32 lcid, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromBool(int16 boolIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromI1(CHAR cIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromUI2(uint16 uiIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromUI4(uint32 ulIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromUI8(uint64 ui64In, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI8FromDec(in DECIMAL pdecIn, out int64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromUI1(uint8 bIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromI2(int16 sIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromI4(int32 lIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromI8(int64 i64In, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromR8(double dblIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromCy(CY cyIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromDate(double dateIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromDisp(ref IDispatch pdispIn, uint32 lcid, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromBool(int16 boolIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromI1(CHAR cIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromUI2(uint16 uiIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromUI4(uint32 ulIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromUI8(uint64 ui64In, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4FromDec(in DECIMAL pdecIn, out float pfltOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromUI1(uint8 bIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromI2(int16 sIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromI4(int32 lIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromI8(int64 i64In, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromR4(float fltIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromCy(CY cyIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromDate(double dateIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromDisp(ref IDispatch pdispIn, uint32 lcid, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromBool(int16 boolIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromI1(CHAR cIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromUI2(uint16 uiIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromUI4(uint32 ulIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromUI8(uint64 ui64In, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8FromDec(in DECIMAL pdecIn, out double pdblOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUI1(uint8 bIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromI2(int16 sIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromI4(int32 lIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromI8(int64 i64In, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromR4(float fltIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromR8(double dblIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromCy(CY cyIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromDisp(ref IDispatch pdispIn, uint32 lcid, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromBool(int16 boolIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromI1(CHAR cIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUI2(uint16 uiIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUI4(uint32 ulIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUI8(uint64 ui64In, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromDec(in DECIMAL pdecIn, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromUI1(uint8 bIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromI2(int16 sIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromI4(int32 lIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromI8(int64 i64In, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromR4(float fltIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromR8(double dblIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromDate(double dateIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromDisp(ref IDispatch pdispIn, uint32 lcid, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromBool(int16 boolIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromI1(CHAR cIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromUI2(uint16 uiIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromUI4(uint32 ulIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromUI8(uint64 ui64In, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFromDec(in DECIMAL pdecIn, out CY pcyOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromUI1(uint8 bVal, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromI2(int16 iVal, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromI4(int32 lIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromI8(int64 i64In, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromR4(float fltIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromR8(double dblIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromCy(CY cyIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromDate(double dateIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromDisp(ref IDispatch pdispIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromBool(int16 boolIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromI1(CHAR cIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromUI2(uint16 uiIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromUI4(uint32 ulIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromUI8(uint64 ui64In, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrFromDec(in DECIMAL pdecIn, uint32 lcid, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromUI1(uint8 bIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromI2(int16 sIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromI4(int32 lIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromI8(int64 i64In, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromR4(float fltIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromR8(double dblIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromDate(double dateIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromCy(CY cyIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromDisp(ref IDispatch pdispIn, uint32 lcid, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromI1(CHAR cIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromUI2(uint16 uiIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromUI4(uint32 ulIn, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromUI8(uint64 i64In, out int16 pboolOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBoolFromDec(in DECIMAL pdecIn, out int16 pboolOut);
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
	public static extern HRESULT VarI1FromDisp(ref IDispatch pdispIn, uint32 lcid, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI1FromBool(int16 boolIn, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI1FromUI2(uint16 uiIn, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI1FromUI4(uint32 ulIn, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI1FromUI8(uint64 i64In, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarI1FromDec(in DECIMAL pdecIn, PSTR pcOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromUI1(uint8 bIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromI2(int16 uiIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromI4(int32 lIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromI8(int64 i64In, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromR4(float fltIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromR8(double dblIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromDate(double dateIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromCy(CY cyIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromDisp(ref IDispatch pdispIn, uint32 lcid, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromBool(int16 boolIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromI1(CHAR cIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromUI4(uint32 ulIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromUI8(uint64 i64In, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI2FromDec(in DECIMAL pdecIn, out uint16 puiOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromUI1(uint8 bIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromI2(int16 uiIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromI4(int32 lIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromI8(int64 i64In, out uint32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromR4(float fltIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromR8(double dblIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromDate(double dateIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromCy(CY cyIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromDisp(ref IDispatch pdispIn, uint32 lcid, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromBool(int16 boolIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromI1(CHAR cIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromUI2(uint16 uiIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromUI8(uint64 ui64In, out uint32 plOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI4FromDec(in DECIMAL pdecIn, out uint32 pulOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromUI1(uint8 bIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromI2(int16 sIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromI8(int64 ui64In, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromR4(float fltIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromR8(double dblIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromCy(CY cyIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromDate(double dateIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromDisp(ref IDispatch pdispIn, uint32 lcid, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromBool(int16 boolIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromI1(CHAR cIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromUI2(uint16 uiIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromUI4(uint32 ulIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUI8FromDec(in DECIMAL pdecIn, out uint64 pi64Out);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromUI1(uint8 bIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromI2(int16 uiIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromI4(int32 lIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromI8(int64 i64In, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromR4(float fltIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromR8(double dblIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromDate(double dateIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromCy(CY cyIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromDisp(ref IDispatch pdispIn, uint32 lcid, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromBool(int16 boolIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromI1(CHAR cIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromUI2(uint16 uiIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromUI4(uint32 ulIn, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFromUI8(uint64 ui64In, out DECIMAL pdecOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarParseNumFromStr(PWSTR strIn, uint32 lcid, uint32 dwFlags, out NUMPARSE pnumprs, out uint8 rgbDig);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarNumFromParseNum(ref NUMPARSE pnumprs, ref uint8 rgbDig, uint32 dwVtBits, out VARIANT pvar);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarAdd(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarAnd(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCat(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDiv(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarEqv(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarIdiv(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarImp(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarMod(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarMul(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarOr(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarPow(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarSub(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarXor(ref VARIANT pvarLeft, ref VARIANT pvarRight, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarAbs(ref VARIANT pvarIn, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFix(ref VARIANT pvarIn, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarInt(ref VARIANT pvarIn, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarNeg(ref VARIANT pvarIn, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarNot(ref VARIANT pvarIn, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarRound(ref VARIANT pvarIn, int32 cDecimals, out VARIANT pvarResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCmp(ref VARIANT pvarLeft, ref VARIANT pvarRight, uint32 lcid, uint32 dwFlags);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecAdd(ref DECIMAL pdecLeft, ref DECIMAL pdecRight, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecDiv(ref DECIMAL pdecLeft, ref DECIMAL pdecRight, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecMul(ref DECIMAL pdecLeft, ref DECIMAL pdecRight, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecSub(ref DECIMAL pdecLeft, ref DECIMAL pdecRight, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecAbs(ref DECIMAL pdecIn, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecFix(ref DECIMAL pdecIn, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecInt(ref DECIMAL pdecIn, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecNeg(ref DECIMAL pdecIn, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecRound(ref DECIMAL pdecIn, int32 cDecimals, out DECIMAL pdecResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecCmp(ref DECIMAL pdecLeft, ref DECIMAL pdecRight);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDecCmpR8(ref DECIMAL pdecLeft, double dblRight);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyAdd(CY cyLeft, CY cyRight, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyMul(CY cyLeft, CY cyRight, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyMulI4(CY cyLeft, int32 lRight, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyMulI8(CY cyLeft, int64 lRight, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCySub(CY cyLeft, CY cyRight, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyAbs(CY cyIn, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyFix(CY cyIn, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyInt(CY cyIn, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyNeg(CY cyIn, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyRound(CY cyIn, int32 cDecimals, out CY pcyResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyCmp(CY cyLeft, CY cyRight);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarCyCmpR8(CY cyLeft, double dblRight);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrCat(BSTR bstrLeft, BSTR bstrRight, out uint16* pbstrResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarBstrCmp(BSTR bstrLeft, BSTR bstrRight, uint32 lcid, uint32 dwFlags);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8Pow(double dblLeft, double dblRight, out double pdblResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR4CmpR8(float fltLeft, double dblRight);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarR8Round(double dblIn, int32 cDecimals, out double pdblResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUdate(ref UDATE pudateIn, uint32 dwFlags, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarDateFromUdateEx(ref UDATE pudateIn, uint32 lcid, uint32 dwFlags, out double pdateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarUdateFromDate(double dateIn, uint32 dwFlags, out UDATE pudateOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetAltMonthNames(uint32 lcid, PWSTR** prgp);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormat(ref VARIANT pvarIn, PWSTR pstrFormat, int32 iFirstDay, int32 iFirstWeek, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormatDateTime(ref VARIANT pvarIn, int32 iNamedFormat, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormatNumber(ref VARIANT pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormatPercent(ref VARIANT pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormatCurrency(ref VARIANT pvarIn, int32 iNumDig, int32 iIncLead, int32 iUseParens, int32 iGroup, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarWeekdayName(int32 iWeekday, int32 fAbbrev, int32 iFirstDay, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarMonthName(int32 iMonth, int32 fAbbrev, uint32 dwFlags, out BSTR pbstrOut);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarFormatFromTokens(ref VARIANT pvarIn, PWSTR pstrFormat, ref uint8 pbTokCur, uint32 dwFlags, out BSTR pbstrOut, uint32 lcid);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT VarTokenizeFormatString(PWSTR pstrFormat, uint8* rgbTok, int32 cbTok, int32 iFirstDay, int32 iFirstWeek, uint32 lcid, int32* pcbActual);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 LHashValOfNameSysA(SYSKIND syskind, uint32 lcid, PSTR szName);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 LHashValOfNameSys(SYSKIND syskind, uint32 lcid, PWSTR szName);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT LoadTypeLib(PWSTR szFile, out ITypeLib* pptlib);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT LoadTypeLibEx(PWSTR szFile, REGKIND regkind, out ITypeLib* pptlib);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT LoadRegTypeLib(in Guid rguid, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, out ITypeLib* pptlib);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT QueryPathOfRegTypeLib(in Guid guid, uint16 wMaj, uint16 wMin, uint32 lcid, out uint16* lpbstrPathName);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterTypeLib(ref ITypeLib ptlib, PWSTR szFullPath, PWSTR szHelpDir);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UnRegisterTypeLib(in Guid libID, uint16 wVerMajor, uint16 wVerMinor, uint32 lcid, SYSKIND syskind);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterTypeLibForUser(ref ITypeLib ptlib, PWSTR szFullPath, PWSTR szHelpDir);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UnRegisterTypeLibForUser(in Guid libID, uint16 wMajorVerNum, uint16 wMinorVerNum, uint32 lcid, SYSKIND syskind);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateTypeLib(SYSKIND syskind, PWSTR szFile, out ICreateTypeLib* ppctlib);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateTypeLib2(SYSKIND syskind, PWSTR szFile, out ICreateTypeLib2* ppctlib);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DispGetParam(ref DISPPARAMS pdispparams, uint32 position, uint16 vtTarg, out VARIANT pvarResult, uint32* puArgErr);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DispGetIDsOfNames(ref ITypeInfo ptinfo, PWSTR* rgszNames, uint32 cNames, int32* rgdispid);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DispInvoke(void* _this, ref ITypeInfo ptinfo, int32 dispidMember, uint16 wFlags, out DISPPARAMS pparams, out VARIANT pvarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateDispTypeInfo(out INTERFACEDATA pidata, uint32 lcid, out ITypeInfo* pptinfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateStdDispatch(ref IUnknown punkOuter, void* pvThis, ref ITypeInfo ptinfo, out IUnknown* ppunkStdDisp);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DispCallFunc(void* pvInstance, uint oVft, CALLCONV cc, uint16 vtReturn, uint32 cActuals, uint16* prgvt, VARIANT** prgpvarg, out VARIANT pvargResult);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterActiveObject(ref IUnknown punk, in Guid rclsid, uint32 dwFlags, out uint32 pdwRegister);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RevokeActiveObject(uint32 dwRegister, void* pvReserved);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetActiveObject(in Guid rclsid, void* pvReserved, out IUnknown* ppunk);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateErrorInfo(out ICreateErrorInfo* pperrinfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetRecordInfoFromTypeInfo(ref ITypeInfo pTypeInfo, out IRecordInfo* ppRecInfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetRecordInfoFromGuids(in Guid rGuidTypeLib, uint32 uVerMajor, uint32 uVerMinor, uint32 lcid, in Guid rGuidTypeInfo, out IRecordInfo* ppRecInfo);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OaBuildVersion();
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void ClearCustData(out CUSTDATA pCustData);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void OaEnablePerUserTLibRegistration();
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleBuildVersion();
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleInitialize(void* pvReserved);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void OleUninitialize();
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleQueryLinkFromData(ref IDataObject pSrcDataObject);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleQueryCreateFromData(ref IDataObject pSrcDataObject);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreate(in Guid rclsid, in Guid riid, uint32 renderopt, out FORMATETC pFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateEx(in Guid rclsid, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateFromData(ref IDataObject pSrcDataObj, in Guid riid, uint32 renderopt, out FORMATETC pFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateFromDataEx(ref IDataObject pSrcDataObj, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLinkFromData(ref IDataObject pSrcDataObj, in Guid riid, uint32 renderopt, out FORMATETC pFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLinkFromDataEx(ref IDataObject pSrcDataObj, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateStaticFromData(ref IDataObject pSrcDataObj, in Guid iid, uint32 renderopt, out FORMATETC pFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLink(ref IMoniker pmkLinkSrc, in Guid riid, uint32 renderopt, out FORMATETC lpFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLinkEx(ref IMoniker pmkLinkSrc, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLinkToFile(PWSTR lpszFileName, in Guid riid, uint32 renderopt, out FORMATETC lpFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateLinkToFileEx(PWSTR lpszFileName, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateFromFile(in Guid rclsid, PWSTR lpszFileName, in Guid riid, uint32 renderopt, out FORMATETC lpFormatEtc, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateFromFileEx(in Guid rclsid, PWSTR lpszFileName, in Guid riid, uint32 dwFlags, uint32 renderopt, uint32 cFormats, out uint32 rgAdvf, out FORMATETC rgFormatEtc, ref IAdviseSink lpAdviseSink, out uint32 rgdwConnection, ref IOleClientSite pClientSite, ref IStorage pStg, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoad(ref IStorage pStg, in Guid riid, ref IOleClientSite pClientSite, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSave(ref IPersistStorage pPS, ref IStorage pStg, BOOL fSameAsLoad);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadFromStream(ref IStream pStm, in Guid iidInterface, void** ppvObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSaveToStream(ref IPersistStream pPStm, ref IStream pStm);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSetContainedObject(ref IUnknown pUnknown, BOOL fContained);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleNoteObjectVisible(ref IUnknown pUnknown, BOOL fVisible);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterDragDrop(HWND hwnd, ref IDropTarget pDropTarget);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RevokeDragDrop(HWND hwnd);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DoDragDrop(ref IDataObject pDataObj, ref IDropSource pDropSource, uint32 dwOKEffects, out uint32 pdwEffect);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSetClipboard(ref IDataObject pDataObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleGetClipboard(out IDataObject* ppDataObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleGetClipboardWithEnterpriseInfo(out IDataObject* dataObject, out PWSTR dataEnterpriseId, out PWSTR sourceDescription, out PWSTR targetDescription, out PWSTR dataDescription);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleFlushClipboard();
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleIsCurrentClipboard(ref IDataObject pDataObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int OleCreateMenuDescriptor(HMENU hmenuCombined, out OleMenuGroupWidths lpMenuWidths);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSetMenuDescriptor(int holemenu, HWND hwndFrame, HWND hwndActiveObject, ref IOleInPlaceFrame lpFrame, ref IOleInPlaceActiveObject lpActiveObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleDestroyMenuDescriptor(int holemenu);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleTranslateAccelerator(ref IOleInPlaceFrame lpFrame, out OIFI lpFrameInfo, out MSG lpmsg);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE OleDuplicateData(HANDLE hSrc, uint16 cfFormat, uint32 uiFlags);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleDraw(ref IUnknown pUnknown, uint32 dwAspect, HDC hdcDraw, out RECT lprcBounds);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleRun(ref IUnknown pUnknown);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleIsRunning(ref IOleObject pObject);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLockRunning(ref IUnknown pUnknown, BOOL fLock, BOOL fLastUnlockCloses);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void ReleaseStgMedium(out STGMEDIUM param0);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateOleAdviseHolder(out IOleAdviseHolder* ppOAHolder);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateDefaultHandler(in Guid clsid, ref IUnknown pUnkOuter, in Guid riid, void** lplpObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateEmbeddingHelper(in Guid clsid, ref IUnknown pUnkOuter, uint32 flags, ref IClassFactory pCF, in Guid riid, void** lplpObj);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsAccelerator(HACCEL hAccel, int32 cAccelEntries, out MSG lpMsg, out uint16 lpwCmd);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int OleGetIconOfFile(PWSTR lpszPath, BOOL fUseFileAsLabel);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int OleGetIconOfClass(in Guid rclsid, PWSTR lpszLabel, BOOL fUseTypeAsLabel);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int OleMetafilePictFromIconAndLabel(HICON hIcon, PWSTR lpszLabel, PWSTR lpszSourceFile, uint32 iIconIndex);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleRegGetUserType(in Guid clsid, uint32 dwFormOfType, out PWSTR pszUserType);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleRegGetMiscStatus(in Guid clsid, uint32 dwAspect, out uint32 pdwStatus);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleRegEnumFormatEtc(in Guid clsid, uint32 dwDirection, out IEnumFORMATETC* ppenum);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleRegEnumVerbs(in Guid clsid, out IEnumOLEVERB* ppenum);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleDoAutoConvert(ref IStorage pStg, out Guid pClsidNew);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleGetAutoConvert(in Guid clsidOld, out Guid pClsidNew);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSetAutoConvert(in Guid clsidOld, in Guid clsidNew);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 HRGN_UserSize(ref uint32 param0, uint32 param1, ref HRGN param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HRGN_UserMarshal(ref uint32 param0, out uint8 param1, ref HRGN param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HRGN_UserUnmarshal(ref uint32 param0, uint8* param1, out HRGN param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void HRGN_UserFree(ref uint32 param0, ref HRGN param1);
	[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 HRGN_UserSize64(ref uint32 param0, uint32 param1, ref HRGN param2);
	[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HRGN_UserMarshal64(ref uint32 param0, out uint8 param1, ref HRGN param2);
	[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HRGN_UserUnmarshal64(ref uint32 param0, uint8* param1, out HRGN param2);
	[Import("api-ms-win-core-marshal-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void HRGN_UserFree64(ref uint32 param0, ref HRGN param1);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreatePropertyFrame(HWND hwndOwner, uint32 x, uint32 y, PWSTR lpszCaption, uint32 cObjects, out IUnknown* ppUnk, uint32 cPages, out Guid pPageClsID, uint32 lcid, uint32 dwReserved, void* pvReserved);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreatePropertyFrameIndirect(out OCPFIPARAMS lpParams);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleTranslateColor(uint32 clr, HPALETTE hpal, out uint32 lpcolorref);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreateFontIndirect(out FONTDESC lpFontDesc, in Guid riid, void** lplpvObj);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleCreatePictureIndirect(out PICTDESC lpPictDesc, in Guid riid, BOOL fOwn, void** lplpvObj);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadPicture(ref IStream lpstream, int32 lSize, BOOL fRunmode, in Guid riid, void** lplpvObj);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadPictureEx(ref IStream lpstream, int32 lSize, BOOL fRunmode, in Guid riid, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, void** lplpvObj);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadPicturePath(PWSTR szURLorPath, ref IUnknown punkCaller, uint32 dwReserved, uint32 clrReserved, in Guid riid, void** ppvRet);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadPictureFile(VARIANT varFileName, out IDispatch* lplpdispPicture);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleLoadPictureFileEx(VARIANT varFileName, uint32 xSizeDesired, uint32 ySizeDesired, uint32 dwFlags, out IDispatch* lplpdispPicture);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSavePictureFile(ref IDispatch lpdispPicture, BSTR bstrFileName);
	[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR OleIconToCursor(HINSTANCE hinstExe, HICON hIcon);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleUIAddVerbMenuW(IOleObject* lpOleObj, PWSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, out HMENU lphMenu);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleUIAddVerbMenuA(IOleObject* lpOleObj, PSTR lpszShortType, HMENU hMenu, uint32 uPos, uint32 uIDVerbMin, uint32 uIDVerbMax, BOOL bAddConvert, uint32 idConvert, out HMENU lphMenu);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIInsertObjectW(ref OLEUIINSERTOBJECTW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIInsertObjectA(ref OLEUIINSERTOBJECTA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIPasteSpecialW(ref OLEUIPASTESPECIALW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIPasteSpecialA(ref OLEUIPASTESPECIALA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIEditLinksW(ref OLEUIEDITLINKSW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIEditLinksA(ref OLEUIEDITLINKSA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIChangeIconW(ref OLEUICHANGEICONW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIChangeIconA(ref OLEUICHANGEICONA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIConvertW(ref OLEUICONVERTW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIConvertA(ref OLEUICONVERTA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleUICanConvertOrActivateAs(in Guid rClsid, BOOL fIsLinkedObject, uint16 wFormat);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIBusyW(ref OLEUIBUSYW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIBusyA(ref OLEUIBUSYA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIChangeSourceW(ref OLEUICHANGESOURCEW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIChangeSourceA(ref OLEUICHANGESOURCEA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIObjectPropertiesW(ref OLEUIOBJECTPROPSW param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OleUIObjectPropertiesA(ref OLEUIOBJECTPROPSA param0);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 OleUIPromptUserW(int32 nTemplate, HWND hwndParent);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 OleUIPromptUserA(int32 nTemplate, HWND hwndParent);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleUIUpdateLinksW(ref IOleUILinkContainerW lpOleUILinkCntr, HWND hwndParent, PWSTR lpszTitle, int32 cLinks);
	[Import("oledlg.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OleUIUpdateLinksA(ref IOleUILinkContainerA lpOleUILinkCntr, HWND hwndParent, PSTR lpszTitle, int32 cLinks);
	#endregion
}
