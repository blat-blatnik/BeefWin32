namespace Win32.UI.WindowsAndMessaging;

using System;
using Win32.Foundation;
using Win32.Graphics.Gdi;
using Win32.System.Power;
using Win32.UI.Shell;

static
{
	#region Constants
	public const uint32 WM_DEVICECHANGE = 537;
	public const uint32 BSM_VXDS = 1;
	public const uint32 BSM_NETDRIVER = 2;
	public const uint32 BSM_INSTALLABLEDRIVERS = 4;
	public const PWSTR RT_CURSOR = (PWSTR)(void*)1;
	public const PWSTR RT_BITMAP = (PWSTR)(void*)2;
	public const PWSTR RT_ICON = (PWSTR)(void*)3;
	public const PWSTR RT_MENU = (PWSTR)(void*)4;
	public const PWSTR RT_DIALOG = (PWSTR)(void*)5;
	public const PWSTR RT_FONTDIR = (PWSTR)(void*)7;
	public const PWSTR RT_FONT = (PWSTR)(void*)8;
	public const PWSTR RT_ACCELERATOR = (PWSTR)(void*)9;
	public const PWSTR RT_MESSAGETABLE = (PWSTR)(void*)11;
	public const uint32 DIFFERENCE = 11;
	public const PWSTR RT_VERSION = (PWSTR)(void*)16;
	public const PWSTR RT_DLGINCLUDE = (PWSTR)(void*)17;
	public const PWSTR RT_PLUGPLAY = (PWSTR)(void*)19;
	public const PWSTR RT_VXD = (PWSTR)(void*)20;
	public const PWSTR RT_ANICURSOR = (PWSTR)(void*)21;
	public const PWSTR RT_ANIICON = (PWSTR)(void*)22;
	public const PWSTR RT_HTML = (PWSTR)(void*)23;
	public const uint32 RT_MANIFEST = 24;
	public const uint32 CREATEPROCESS_MANIFEST_RESOURCE_ID = 1;
	public const uint32 ISOLATIONAWARE_MANIFEST_RESOURCE_ID = 2;
	public const uint32 ISOLATIONAWARE_NOSTATICIMPORT_MANIFEST_RESOURCE_ID = 3;
	public const uint32 ISOLATIONPOLICY_MANIFEST_RESOURCE_ID = 4;
	public const uint32 ISOLATIONPOLICY_BROWSER_MANIFEST_RESOURCE_ID = 5;
	public const uint32 MINIMUM_RESERVED_MANIFEST_RESOURCE_ID = 1;
	public const uint32 MAXIMUM_RESERVED_MANIFEST_RESOURCE_ID = 16;
	public const uint32 SB_LINEUP = 0;
	public const uint32 SB_LINELEFT = 0;
	public const uint32 SB_LINEDOWN = 1;
	public const uint32 SB_LINERIGHT = 1;
	public const uint32 SB_PAGEUP = 2;
	public const uint32 SB_PAGELEFT = 2;
	public const uint32 SB_PAGEDOWN = 3;
	public const uint32 SB_PAGERIGHT = 3;
	public const uint32 SB_THUMBPOSITION = 4;
	public const uint32 SB_THUMBTRACK = 5;
	public const uint32 SB_TOP = 6;
	public const uint32 SB_LEFT = 6;
	public const uint32 SB_BOTTOM = 7;
	public const uint32 SB_RIGHT = 7;
	public const uint32 SB_ENDSCROLL = 8;
	public const uint32 HIDE_WINDOW = 0;
	public const uint32 SHOW_OPENWINDOW = 1;
	public const uint32 SHOW_ICONWINDOW = 2;
	public const uint32 SHOW_FULLSCREEN = 3;
	public const uint32 SHOW_OPENNOACTIVATE = 4;
	public const uint32 KF_EXTENDED = 256;
	public const uint32 KF_DLGMODE = 2048;
	public const uint32 KF_MENUMODE = 4096;
	public const uint32 KF_ALTDOWN = 8192;
	public const uint32 KF_REPEAT = 16384;
	public const uint32 KF_UP = 32768;
	public const int32 WH_MIN = -1;
	public const uint32 WH_HARDWARE = 8;
	public const uint32 WH_MAX = 14;
	public const int32 WH_MINHOOK = -1;
	public const uint32 WH_MAXHOOK = 14;
	public const uint32 HC_ACTION = 0;
	public const uint32 HC_GETNEXT = 1;
	public const uint32 HC_SKIP = 2;
	public const uint32 HC_NOREMOVE = 3;
	public const uint32 HC_NOREM = 3;
	public const uint32 HC_SYSMODALON = 4;
	public const uint32 HC_SYSMODALOFF = 5;
	public const uint32 HCBT_MOVESIZE = 0;
	public const uint32 HCBT_MINMAX = 1;
	public const uint32 HCBT_QS = 2;
	public const uint32 HCBT_CREATEWND = 3;
	public const uint32 HCBT_DESTROYWND = 4;
	public const uint32 HCBT_ACTIVATE = 5;
	public const uint32 HCBT_CLICKSKIPPED = 6;
	public const uint32 HCBT_KEYSKIPPED = 7;
	public const uint32 HCBT_SYSCOMMAND = 8;
	public const uint32 HCBT_SETFOCUS = 9;
	public const uint32 WTS_CONSOLE_CONNECT = 1;
	public const uint32 WTS_CONSOLE_DISCONNECT = 2;
	public const uint32 WTS_REMOTE_CONNECT = 3;
	public const uint32 WTS_REMOTE_DISCONNECT = 4;
	public const uint32 WTS_SESSION_LOGON = 5;
	public const uint32 WTS_SESSION_LOGOFF = 6;
	public const uint32 WTS_SESSION_LOCK = 7;
	public const uint32 WTS_SESSION_UNLOCK = 8;
	public const uint32 WTS_SESSION_REMOTE_CONTROL = 9;
	public const uint32 WTS_SESSION_CREATE = 10;
	public const uint32 WTS_SESSION_TERMINATE = 11;
	public const uint32 MSGF_DIALOGBOX = 0;
	public const uint32 MSGF_MESSAGEBOX = 1;
	public const uint32 MSGF_MENU = 2;
	public const uint32 MSGF_SCROLLBAR = 5;
	public const uint32 MSGF_NEXTWINDOW = 6;
	public const uint32 MSGF_MAX = 8;
	public const uint32 MSGF_USER = 4096;
	public const uint32 HSHELL_WINDOWCREATED = 1;
	public const uint32 HSHELL_WINDOWDESTROYED = 2;
	public const uint32 HSHELL_ACTIVATESHELLWINDOW = 3;
	public const uint32 HSHELL_WINDOWACTIVATED = 4;
	public const uint32 HSHELL_GETMINRECT = 5;
	public const uint32 HSHELL_REDRAW = 6;
	public const uint32 HSHELL_TASKMAN = 7;
	public const uint32 HSHELL_LANGUAGE = 8;
	public const uint32 HSHELL_SYSMENU = 9;
	public const uint32 HSHELL_ENDTASK = 10;
	public const uint32 HSHELL_ACCESSIBILITYSTATE = 11;
	public const uint32 HSHELL_APPCOMMAND = 12;
	public const uint32 HSHELL_WINDOWREPLACED = 13;
	public const uint32 HSHELL_WINDOWREPLACING = 14;
	public const uint32 HSHELL_MONITORCHANGED = 16;
	public const uint32 HSHELL_HIGHBIT = 32768;
	public const uint32 FAPPCOMMAND_MOUSE = 32768;
	public const uint32 FAPPCOMMAND_KEY = 0;
	public const uint32 FAPPCOMMAND_OEM = 4096;
	public const uint32 FAPPCOMMAND_MASK = 61440;
	public const uint32 LLMHF_INJECTED = 1;
	public const uint32 LLMHF_LOWER_IL_INJECTED = 2;
	public const uint32 HKL_PREV = 0;
	public const uint32 HKL_NEXT = 1;
	public const uint32 INPUTLANGCHANGE_SYSCHARSET = 1;
	public const uint32 INPUTLANGCHANGE_FORWARD = 2;
	public const uint32 INPUTLANGCHANGE_BACKWARD = 4;
	public const uint32 KL_NAMELENGTH = 9;
	public const int32 DESKTOP_READOBJECTS = 1;
	public const int32 DESKTOP_CREATEWINDOW = 2;
	public const int32 DESKTOP_CREATEMENU = 4;
	public const int32 DESKTOP_HOOKCONTROL = 8;
	public const int32 DESKTOP_JOURNALRECORD = 16;
	public const int32 DESKTOP_JOURNALPLAYBACK = 32;
	public const int32 DESKTOP_ENUMERATE = 64;
	public const int32 DESKTOP_WRITEOBJECTS = 128;
	public const int32 DESKTOP_SWITCHDESKTOP = 256;
	public const int32 DF_ALLOWOTHERACCOUNTHOOK = 1;
	public const int32 WINSTA_ENUMDESKTOPS = 1;
	public const int32 WINSTA_READATTRIBUTES = 2;
	public const int32 WINSTA_ACCESSCLIPBOARD = 4;
	public const int32 WINSTA_CREATEDESKTOP = 8;
	public const int32 WINSTA_WRITEATTRIBUTES = 16;
	public const int32 WINSTA_ACCESSGLOBALATOMS = 32;
	public const int32 WINSTA_EXITWINDOWS = 64;
	public const int32 WINSTA_ENUMERATE = 256;
	public const int32 WINSTA_READSCREEN = 512;
	public const uint32 CWF_CREATE_ONLY = 1;
	public const int32 WSF_VISIBLE = 1;
	public const uint32 UOI_TIMERPROC_EXCEPTION_SUPPRESSION = 7;
	public const uint32 WM_NULL = 0;
	public const uint32 WM_CREATE = 1;
	public const uint32 WM_DESTROY = 2;
	public const uint32 WM_MOVE = 3;
	public const uint32 WM_SIZE = 5;
	public const uint32 WM_ACTIVATE = 6;
	public const uint32 WA_INACTIVE = 0;
	public const uint32 WA_ACTIVE = 1;
	public const uint32 WA_CLICKACTIVE = 2;
	public const uint32 WM_SETFOCUS = 7;
	public const uint32 WM_KILLFOCUS = 8;
	public const uint32 WM_ENABLE = 10;
	public const uint32 WM_SETREDRAW = 11;
	public const uint32 WM_SETTEXT = 12;
	public const uint32 WM_GETTEXT = 13;
	public const uint32 WM_GETTEXTLENGTH = 14;
	public const uint32 WM_PAINT = 15;
	public const uint32 WM_CLOSE = 16;
	public const uint32 WM_QUERYENDSESSION = 17;
	public const uint32 WM_QUERYOPEN = 19;
	public const uint32 WM_ENDSESSION = 22;
	public const uint32 WM_QUIT = 18;
	public const uint32 WM_ERASEBKGND = 20;
	public const uint32 WM_SYSCOLORCHANGE = 21;
	public const uint32 WM_SHOWWINDOW = 24;
	public const uint32 WM_WININICHANGE = 26;
	public const uint32 WM_SETTINGCHANGE = 26;
	public const uint32 WM_DEVMODECHANGE = 27;
	public const uint32 WM_ACTIVATEAPP = 28;
	public const uint32 WM_FONTCHANGE = 29;
	public const uint32 WM_TIMECHANGE = 30;
	public const uint32 WM_CANCELMODE = 31;
	public const uint32 WM_SETCURSOR = 32;
	public const uint32 WM_MOUSEACTIVATE = 33;
	public const uint32 WM_CHILDACTIVATE = 34;
	public const uint32 WM_QUEUESYNC = 35;
	public const uint32 WM_GETMINMAXINFO = 36;
	public const uint32 WM_PAINTICON = 38;
	public const uint32 WM_ICONERASEBKGND = 39;
	public const uint32 WM_NEXTDLGCTL = 40;
	public const uint32 WM_SPOOLERSTATUS = 42;
	public const uint32 WM_DRAWITEM = 43;
	public const uint32 WM_MEASUREITEM = 44;
	public const uint32 WM_DELETEITEM = 45;
	public const uint32 WM_VKEYTOITEM = 46;
	public const uint32 WM_CHARTOITEM = 47;
	public const uint32 WM_SETFONT = 48;
	public const uint32 WM_GETFONT = 49;
	public const uint32 WM_SETHOTKEY = 50;
	public const uint32 WM_GETHOTKEY = 51;
	public const uint32 WM_QUERYDRAGICON = 55;
	public const uint32 WM_COMPAREITEM = 57;
	public const uint32 WM_GETOBJECT = 61;
	public const uint32 WM_COMPACTING = 65;
	public const uint32 WM_COMMNOTIFY = 68;
	public const uint32 WM_WINDOWPOSCHANGING = 70;
	public const uint32 WM_WINDOWPOSCHANGED = 71;
	public const uint32 WM_POWER = 72;
	public const uint32 PWR_OK = 1;
	public const int32 PWR_FAIL = -1;
	public const uint32 PWR_SUSPENDREQUEST = 1;
	public const uint32 PWR_SUSPENDRESUME = 2;
	public const uint32 PWR_CRITICALRESUME = 3;
	public const uint32 WM_COPYDATA = 74;
	public const uint32 WM_CANCELJOURNAL = 75;
	public const uint32 WM_INPUTLANGCHANGEREQUEST = 80;
	public const uint32 WM_INPUTLANGCHANGE = 81;
	public const uint32 WM_TCARD = 82;
	public const uint32 WM_HELP = 83;
	public const uint32 WM_USERCHANGED = 84;
	public const uint32 WM_NOTIFYFORMAT = 85;
	public const uint32 NFR_ANSI = 1;
	public const uint32 NFR_UNICODE = 2;
	public const uint32 NF_QUERY = 3;
	public const uint32 NF_REQUERY = 4;
	public const uint32 WM_STYLECHANGING = 124;
	public const uint32 WM_STYLECHANGED = 125;
	public const uint32 WM_DISPLAYCHANGE = 126;
	public const uint32 WM_GETICON = 127;
	public const uint32 WM_SETICON = 128;
	public const uint32 WM_NCCREATE = 129;
	public const uint32 WM_NCDESTROY = 130;
	public const uint32 WM_NCCALCSIZE = 131;
	public const uint32 WM_NCHITTEST = 132;
	public const uint32 WM_NCPAINT = 133;
	public const uint32 WM_NCACTIVATE = 134;
	public const uint32 WM_GETDLGCODE = 135;
	public const uint32 WM_SYNCPAINT = 136;
	public const uint32 WM_NCMOUSEMOVE = 160;
	public const uint32 WM_NCLBUTTONDOWN = 161;
	public const uint32 WM_NCLBUTTONUP = 162;
	public const uint32 WM_NCLBUTTONDBLCLK = 163;
	public const uint32 WM_NCRBUTTONDOWN = 164;
	public const uint32 WM_NCRBUTTONUP = 165;
	public const uint32 WM_NCRBUTTONDBLCLK = 166;
	public const uint32 WM_NCMBUTTONDOWN = 167;
	public const uint32 WM_NCMBUTTONUP = 168;
	public const uint32 WM_NCMBUTTONDBLCLK = 169;
	public const uint32 WM_NCXBUTTONDOWN = 171;
	public const uint32 WM_NCXBUTTONUP = 172;
	public const uint32 WM_NCXBUTTONDBLCLK = 173;
	public const uint32 WM_INPUT_DEVICE_CHANGE = 254;
	public const uint32 WM_INPUT = 255;
	public const uint32 WM_KEYFIRST = 256;
	public const uint32 WM_KEYDOWN = 256;
	public const uint32 WM_KEYUP = 257;
	public const uint32 WM_CHAR = 258;
	public const uint32 WM_DEADCHAR = 259;
	public const uint32 WM_SYSKEYDOWN = 260;
	public const uint32 WM_SYSKEYUP = 261;
	public const uint32 WM_SYSCHAR = 262;
	public const uint32 WM_SYSDEADCHAR = 263;
	public const uint32 WM_KEYLAST = 265;
	public const uint32 UNICODE_NOCHAR = 65535;
	public const uint32 WM_IME_STARTCOMPOSITION = 269;
	public const uint32 WM_IME_ENDCOMPOSITION = 270;
	public const uint32 WM_IME_COMPOSITION = 271;
	public const uint32 WM_IME_KEYLAST = 271;
	public const uint32 WM_INITDIALOG = 272;
	public const uint32 WM_COMMAND = 273;
	public const uint32 WM_SYSCOMMAND = 274;
	public const uint32 WM_TIMER = 275;
	public const uint32 WM_HSCROLL = 276;
	public const uint32 WM_VSCROLL = 277;
	public const uint32 WM_INITMENU = 278;
	public const uint32 WM_INITMENUPOPUP = 279;
	public const uint32 WM_GESTURE = 281;
	public const uint32 WM_GESTURENOTIFY = 282;
	public const uint32 WM_MENUSELECT = 287;
	public const uint32 WM_MENUCHAR = 288;
	public const uint32 WM_ENTERIDLE = 289;
	public const uint32 WM_MENURBUTTONUP = 290;
	public const uint32 WM_MENUDRAG = 291;
	public const uint32 WM_MENUGETOBJECT = 292;
	public const uint32 WM_UNINITMENUPOPUP = 293;
	public const uint32 WM_MENUCOMMAND = 294;
	public const uint32 WM_CHANGEUISTATE = 295;
	public const uint32 WM_UPDATEUISTATE = 296;
	public const uint32 WM_QUERYUISTATE = 297;
	public const uint32 UIS_SET = 1;
	public const uint32 UIS_CLEAR = 2;
	public const uint32 UIS_INITIALIZE = 3;
	public const uint32 UISF_HIDEFOCUS = 1;
	public const uint32 UISF_HIDEACCEL = 2;
	public const uint32 UISF_ACTIVE = 4;
	public const uint32 WM_CTLCOLORMSGBOX = 306;
	public const uint32 WM_CTLCOLOREDIT = 307;
	public const uint32 WM_CTLCOLORLISTBOX = 308;
	public const uint32 WM_CTLCOLORBTN = 309;
	public const uint32 WM_CTLCOLORDLG = 310;
	public const uint32 WM_CTLCOLORSCROLLBAR = 311;
	public const uint32 WM_CTLCOLORSTATIC = 312;
	public const uint32 MN_GETHMENU = 481;
	public const uint32 WM_MOUSEFIRST = 512;
	public const uint32 WM_MOUSEMOVE = 512;
	public const uint32 WM_LBUTTONDOWN = 513;
	public const uint32 WM_LBUTTONUP = 514;
	public const uint32 WM_LBUTTONDBLCLK = 515;
	public const uint32 WM_RBUTTONDOWN = 516;
	public const uint32 WM_RBUTTONUP = 517;
	public const uint32 WM_RBUTTONDBLCLK = 518;
	public const uint32 WM_MBUTTONDOWN = 519;
	public const uint32 WM_MBUTTONUP = 520;
	public const uint32 WM_MBUTTONDBLCLK = 521;
	public const uint32 WM_MOUSEWHEEL = 522;
	public const uint32 WM_XBUTTONDOWN = 523;
	public const uint32 WM_XBUTTONUP = 524;
	public const uint32 WM_XBUTTONDBLCLK = 525;
	public const uint32 WM_MOUSEHWHEEL = 526;
	public const uint32 WM_MOUSELAST = 526;
	public const uint32 WHEEL_DELTA = 120;
	public const uint32 WM_PARENTNOTIFY = 528;
	public const uint32 WM_ENTERMENULOOP = 529;
	public const uint32 WM_EXITMENULOOP = 530;
	public const uint32 WM_NEXTMENU = 531;
	public const uint32 WM_SIZING = 532;
	public const uint32 WM_CAPTURECHANGED = 533;
	public const uint32 WM_MOVING = 534;
	public const uint32 WM_POWERBROADCAST = 536;
	public const uint32 PBT_APMQUERYSUSPEND = 0;
	public const uint32 PBT_APMQUERYSTANDBY = 1;
	public const uint32 PBT_APMQUERYSUSPENDFAILED = 2;
	public const uint32 PBT_APMQUERYSTANDBYFAILED = 3;
	public const uint32 PBT_APMSUSPEND = 4;
	public const uint32 PBT_APMSTANDBY = 5;
	public const uint32 PBT_APMRESUMECRITICAL = 6;
	public const uint32 PBT_APMRESUMESUSPEND = 7;
	public const uint32 PBT_APMRESUMESTANDBY = 8;
	public const uint32 PBTF_APMRESUMEFROMFAILURE = 1;
	public const uint32 PBT_APMBATTERYLOW = 9;
	public const uint32 PBT_APMPOWERSTATUSCHANGE = 10;
	public const uint32 PBT_APMOEMEVENT = 11;
	public const uint32 PBT_APMRESUMEAUTOMATIC = 18;
	public const uint32 PBT_POWERSETTINGCHANGE = 32787;
	public const uint32 WM_MDICREATE = 544;
	public const uint32 WM_MDIDESTROY = 545;
	public const uint32 WM_MDIACTIVATE = 546;
	public const uint32 WM_MDIRESTORE = 547;
	public const uint32 WM_MDINEXT = 548;
	public const uint32 WM_MDIMAXIMIZE = 549;
	public const uint32 WM_MDITILE = 550;
	public const uint32 WM_MDICASCADE = 551;
	public const uint32 WM_MDIICONARRANGE = 552;
	public const uint32 WM_MDIGETACTIVE = 553;
	public const uint32 WM_MDISETMENU = 560;
	public const uint32 WM_ENTERSIZEMOVE = 561;
	public const uint32 WM_EXITSIZEMOVE = 562;
	public const uint32 WM_DROPFILES = 563;
	public const uint32 WM_MDIREFRESHMENU = 564;
	public const uint32 WM_POINTERDEVICECHANGE = 568;
	public const uint32 WM_POINTERDEVICEINRANGE = 569;
	public const uint32 WM_POINTERDEVICEOUTOFRANGE = 570;
	public const uint32 WM_TOUCH = 576;
	public const uint32 WM_NCPOINTERUPDATE = 577;
	public const uint32 WM_NCPOINTERDOWN = 578;
	public const uint32 WM_NCPOINTERUP = 579;
	public const uint32 WM_POINTERUPDATE = 581;
	public const uint32 WM_POINTERDOWN = 582;
	public const uint32 WM_POINTERUP = 583;
	public const uint32 WM_POINTERENTER = 585;
	public const uint32 WM_POINTERLEAVE = 586;
	public const uint32 WM_POINTERACTIVATE = 587;
	public const uint32 WM_POINTERCAPTURECHANGED = 588;
	public const uint32 WM_TOUCHHITTESTING = 589;
	public const uint32 WM_POINTERWHEEL = 590;
	public const uint32 WM_POINTERHWHEEL = 591;
	public const uint32 DM_POINTERHITTEST = 592;
	public const uint32 WM_POINTERROUTEDTO = 593;
	public const uint32 WM_POINTERROUTEDAWAY = 594;
	public const uint32 WM_POINTERROUTEDRELEASED = 595;
	public const uint32 WM_IME_SETCONTEXT = 641;
	public const uint32 WM_IME_NOTIFY = 642;
	public const uint32 WM_IME_CONTROL = 643;
	public const uint32 WM_IME_COMPOSITIONFULL = 644;
	public const uint32 WM_IME_SELECT = 645;
	public const uint32 WM_IME_CHAR = 646;
	public const uint32 WM_IME_REQUEST = 648;
	public const uint32 WM_IME_KEYDOWN = 656;
	public const uint32 WM_IME_KEYUP = 657;
	public const uint32 WM_NCMOUSEHOVER = 672;
	public const uint32 WM_NCMOUSELEAVE = 674;
	public const uint32 WM_WTSSESSION_CHANGE = 689;
	public const uint32 WM_TABLET_FIRST = 704;
	public const uint32 WM_TABLET_LAST = 735;
	public const uint32 WM_DPICHANGED = 736;
	public const uint32 WM_DPICHANGED_BEFOREPARENT = 738;
	public const uint32 WM_DPICHANGED_AFTERPARENT = 739;
	public const uint32 WM_GETDPISCALEDSIZE = 740;
	public const uint32 WM_CUT = 768;
	public const uint32 WM_COPY = 769;
	public const uint32 WM_PASTE = 770;
	public const uint32 WM_CLEAR = 771;
	public const uint32 WM_UNDO = 772;
	public const uint32 WM_RENDERFORMAT = 773;
	public const uint32 WM_RENDERALLFORMATS = 774;
	public const uint32 WM_DESTROYCLIPBOARD = 775;
	public const uint32 WM_DRAWCLIPBOARD = 776;
	public const uint32 WM_PAINTCLIPBOARD = 777;
	public const uint32 WM_VSCROLLCLIPBOARD = 778;
	public const uint32 WM_SIZECLIPBOARD = 779;
	public const uint32 WM_ASKCBFORMATNAME = 780;
	public const uint32 WM_CHANGECBCHAIN = 781;
	public const uint32 WM_HSCROLLCLIPBOARD = 782;
	public const uint32 WM_QUERYNEWPALETTE = 783;
	public const uint32 WM_PALETTEISCHANGING = 784;
	public const uint32 WM_PALETTECHANGED = 785;
	public const uint32 WM_HOTKEY = 786;
	public const uint32 WM_PRINT = 791;
	public const uint32 WM_APPCOMMAND = 793;
	public const uint32 WM_THEMECHANGED = 794;
	public const uint32 WM_CLIPBOARDUPDATE = 797;
	public const uint32 WM_DWMCOMPOSITIONCHANGED = 798;
	public const uint32 WM_DWMNCRENDERINGCHANGED = 799;
	public const uint32 WM_DWMCOLORIZATIONCOLORCHANGED = 800;
	public const uint32 WM_DWMWINDOWMAXIMIZEDCHANGE = 801;
	public const uint32 WM_DWMSENDICONICTHUMBNAIL = 803;
	public const uint32 WM_DWMSENDICONICLIVEPREVIEWBITMAP = 806;
	public const uint32 WM_GETTITLEBARINFOEX = 831;
	public const uint32 WM_HANDHELDFIRST = 856;
	public const uint32 WM_HANDHELDLAST = 863;
	public const uint32 WM_AFXFIRST = 864;
	public const uint32 WM_AFXLAST = 895;
	public const uint32 WM_PENWINFIRST = 896;
	public const uint32 WM_PENWINLAST = 911;
	public const uint32 WM_APP = 32768;
	public const uint32 WM_USER = 1024;
	public const uint32 WMSZ_LEFT = 1;
	public const uint32 WMSZ_RIGHT = 2;
	public const uint32 WMSZ_TOP = 3;
	public const uint32 WMSZ_TOPLEFT = 4;
	public const uint32 WMSZ_TOPRIGHT = 5;
	public const uint32 WMSZ_BOTTOM = 6;
	public const uint32 WMSZ_BOTTOMLEFT = 7;
	public const uint32 WMSZ_BOTTOMRIGHT = 8;
	public const int32 HTERROR = -2;
	public const int32 HTTRANSPARENT = -1;
	public const uint32 HTNOWHERE = 0;
	public const uint32 HTCLIENT = 1;
	public const uint32 HTCAPTION = 2;
	public const uint32 HTSYSMENU = 3;
	public const uint32 HTGROWBOX = 4;
	public const uint32 HTSIZE = 4;
	public const uint32 HTMENU = 5;
	public const uint32 HTHSCROLL = 6;
	public const uint32 HTVSCROLL = 7;
	public const uint32 HTMINBUTTON = 8;
	public const uint32 HTMAXBUTTON = 9;
	public const uint32 HTLEFT = 10;
	public const uint32 HTRIGHT = 11;
	public const uint32 HTTOP = 12;
	public const uint32 HTTOPLEFT = 13;
	public const uint32 HTTOPRIGHT = 14;
	public const uint32 HTBOTTOM = 15;
	public const uint32 HTBOTTOMLEFT = 16;
	public const uint32 HTBOTTOMRIGHT = 17;
	public const uint32 HTBORDER = 18;
	public const uint32 HTREDUCE = 8;
	public const uint32 HTZOOM = 9;
	public const uint32 HTSIZEFIRST = 10;
	public const uint32 HTSIZELAST = 17;
	public const uint32 HTOBJECT = 19;
	public const uint32 HTCLOSE = 20;
	public const uint32 HTHELP = 21;
	public const uint32 MA_ACTIVATE = 1;
	public const uint32 MA_ACTIVATEANDEAT = 2;
	public const uint32 MA_NOACTIVATE = 3;
	public const uint32 MA_NOACTIVATEANDEAT = 4;
	public const uint32 ICON_SMALL = 0;
	public const uint32 ICON_BIG = 1;
	public const uint32 ICON_SMALL2 = 2;
	public const uint32 SIZE_RESTORED = 0;
	public const uint32 SIZE_MINIMIZED = 1;
	public const uint32 SIZE_MAXIMIZED = 2;
	public const uint32 SIZE_MAXSHOW = 3;
	public const uint32 SIZE_MAXHIDE = 4;
	public const uint32 SIZENORMAL = 0;
	public const uint32 SIZEICONIC = 1;
	public const uint32 SIZEFULLSCREEN = 2;
	public const uint32 SIZEZOOMSHOW = 3;
	public const uint32 SIZEZOOMHIDE = 4;
	public const uint32 WVR_ALIGNTOP = 16;
	public const uint32 WVR_ALIGNLEFT = 32;
	public const uint32 WVR_ALIGNBOTTOM = 64;
	public const uint32 WVR_ALIGNRIGHT = 128;
	public const uint32 WVR_HREDRAW = 256;
	public const uint32 WVR_VREDRAW = 512;
	public const uint32 WVR_VALIDRECTS = 1024;
	public const uint32 MK_LBUTTON = 1;
	public const uint32 MK_RBUTTON = 2;
	public const uint32 MK_SHIFT = 4;
	public const uint32 MK_CONTROL = 8;
	public const uint32 MK_MBUTTON = 16;
	public const uint32 MK_XBUTTON1 = 32;
	public const uint32 MK_XBUTTON2 = 64;
	public const int32 PRF_CHECKVISIBLE = 1;
	public const int32 PRF_NONCLIENT = 2;
	public const int32 PRF_CLIENT = 4;
	public const int32 PRF_ERASEBKGND = 8;
	public const int32 PRF_CHILDREN = 16;
	public const int32 PRF_OWNED = 32;
	public const uint32 IDANI_OPEN = 1;
	public const uint32 IDANI_CAPTION = 3;
	public const uint32 FVIRTKEY = 1;
	public const uint32 FNOINVERT = 2;
	public const uint32 FSHIFT = 4;
	public const uint32 FCONTROL = 8;
	public const uint32 FALT = 16;
	public const uint32 ODA_DRAWENTIRE = 1;
	public const uint32 ODA_SELECT = 2;
	public const uint32 ODA_FOCUS = 4;
	public const uint32 ODS_SELECTED = 1;
	public const uint32 ODS_GRAYED = 2;
	public const uint32 ODS_DISABLED = 4;
	public const uint32 ODS_CHECKED = 8;
	public const uint32 ODS_FOCUS = 16;
	public const uint32 ODS_DEFAULT = 32;
	public const uint32 ODS_COMBOBOXEDIT = 4096;
	public const uint32 ODS_HOTLIGHT = 64;
	public const uint32 ODS_INACTIVE = 128;
	public const uint32 ODS_NOACCEL = 256;
	public const uint32 ODS_NOFOCUSRECT = 512;
	public const int32 IDHOT_SNAPWINDOW = -1;
	public const int32 IDHOT_SNAPDESKTOP = -2;
	public const uint32 ENDSESSION_CLOSEAPP = 1;
	public const uint32 ENDSESSION_CRITICAL = 1073741824;
	public const uint32 ENDSESSION_LOGOFF = 2147483648;
	public const uint32 EWX_FORCE = 4;
	public const uint32 EWX_FORCEIFHUNG = 16;
	public const uint32 EWX_QUICKRESOLVE = 32;
	public const uint32 EWX_BOOTOPTIONS = 16777216;
	public const uint32 EWX_ARSO = 67108864;
	public const uint32 EWX_CHECK_SAFE_FOR_SERVER = 134217728;
	public const uint32 EWX_SYSTEM_INITIATED = 268435456;
	public const uint32 BROADCAST_QUERY_DENY = 1112363332;
	public const uint32 DEVICE_NOTIFY_ALL_INTERFACE_CLASSES = 4;
	public const HWND HWND_MESSAGE = -3;
	public const uint32 ISMEX_NOSEND = 0;
	public const uint32 ISMEX_SEND = 1;
	public const uint32 ISMEX_NOTIFY = 2;
	public const uint32 ISMEX_CALLBACK = 4;
	public const uint32 ISMEX_REPLIED = 8;
	public const HWND HWND_DESKTOP = 0;
	public const uint32 PW_RENDERFULLCONTENT = 2;
	public const HWND HWND_TOP = 0;
	public const HWND HWND_BOTTOM = 1;
	public const HWND HWND_TOPMOST = -1;
	public const HWND HWND_NOTOPMOST = -2;
	public const uint32 DLGWINDOWEXTRA = 30;
	public const uint32 POINTER_MOD_SHIFT = 4;
	public const uint32 POINTER_MOD_CTRL = 8;
	public const uint32 TOUCH_FLAG_NONE = 0;
	public const uint32 TOUCH_MASK_NONE = 0;
	public const uint32 TOUCH_MASK_CONTACTAREA = 1;
	public const uint32 TOUCH_MASK_ORIENTATION = 2;
	public const uint32 TOUCH_MASK_PRESSURE = 4;
	public const uint32 PEN_FLAG_NONE = 0;
	public const uint32 PEN_FLAG_BARREL = 1;
	public const uint32 PEN_FLAG_INVERTED = 2;
	public const uint32 PEN_FLAG_ERASER = 4;
	public const uint32 PEN_MASK_NONE = 0;
	public const uint32 PEN_MASK_PRESSURE = 1;
	public const uint32 PEN_MASK_ROTATION = 2;
	public const uint32 PEN_MASK_TILT_X = 4;
	public const uint32 PEN_MASK_TILT_Y = 8;
	public const uint32 POINTER_MESSAGE_FLAG_NEW = 1;
	public const uint32 POINTER_MESSAGE_FLAG_INRANGE = 2;
	public const uint32 POINTER_MESSAGE_FLAG_INCONTACT = 4;
	public const uint32 POINTER_MESSAGE_FLAG_FIRSTBUTTON = 16;
	public const uint32 POINTER_MESSAGE_FLAG_SECONDBUTTON = 32;
	public const uint32 POINTER_MESSAGE_FLAG_THIRDBUTTON = 64;
	public const uint32 POINTER_MESSAGE_FLAG_FOURTHBUTTON = 128;
	public const uint32 POINTER_MESSAGE_FLAG_FIFTHBUTTON = 256;
	public const uint32 POINTER_MESSAGE_FLAG_PRIMARY = 8192;
	public const uint32 POINTER_MESSAGE_FLAG_CONFIDENCE = 16384;
	public const uint32 POINTER_MESSAGE_FLAG_CANCELED = 32768;
	public const uint32 PA_ACTIVATE = 1;
	public const uint32 PA_NOACTIVATE = 3;
	public const uint32 MAX_TOUCH_COUNT = 256;
	public const uint32 TOUCH_HIT_TESTING_DEFAULT = 0;
	public const uint32 TOUCH_HIT_TESTING_CLIENT = 1;
	public const uint32 TOUCH_HIT_TESTING_NONE = 2;
	public const uint32 TOUCH_HIT_TESTING_PROXIMITY_CLOSEST = 0;
	public const uint32 TOUCH_HIT_TESTING_PROXIMITY_FARTHEST = 4095;
	public const uint32 GWFS_INCLUDE_ANCESTORS = 1;
	public const uint32 MAPVK_VK_TO_VSC = 0;
	public const uint32 MAPVK_VSC_TO_VK = 1;
	public const uint32 MAPVK_VK_TO_CHAR = 2;
	public const uint32 MAPVK_VSC_TO_VK_EX = 3;
	public const uint32 MAPVK_VK_TO_VSC_EX = 4;
	public const uint32 QS_TOUCH = 2048;
	public const uint32 QS_POINTER = 4096;
	public const uint32 USER_TIMER_MAXIMUM = 2147483647;
	public const uint32 USER_TIMER_MINIMUM = 10;
	public const uint32 TIMERV_DEFAULT_COALESCING = 0;
	public const uint32 TIMERV_NO_COALESCING = 4294967295;
	public const uint32 TIMERV_COALESCING_MIN = 1;
	public const uint32 TIMERV_COALESCING_MAX = 2147483637;
	public const uint32 SM_RESERVED1 = 24;
	public const uint32 SM_RESERVED2 = 25;
	public const uint32 SM_RESERVED3 = 26;
	public const uint32 SM_RESERVED4 = 27;
	public const uint32 SM_CMETRICS = 76;
	public const uint32 SM_CARETBLINKINGENABLED = 8194;
	public const uint32 SM_SYSTEMDOCKED = 8196;
	public const uint32 PMB_ACTIVE = 1;
	public const uint32 MNC_IGNORE = 0;
	public const uint32 MNC_CLOSE = 1;
	public const uint32 MNC_EXECUTE = 2;
	public const uint32 MNC_SELECT = 3;
	public const uint32 MND_CONTINUE = 0;
	public const uint32 MND_ENDMENU = 1;
	public const uint32 MNGO_NOINTERFACE = 0;
	public const uint32 MNGO_NOERROR = 1;
	public const uint32 DOF_EXECUTABLE = 32769;
	public const uint32 DOF_DOCUMENT = 32770;
	public const uint32 DOF_DIRECTORY = 32771;
	public const uint32 DOF_MULTIPLE = 32772;
	public const uint32 DOF_PROGMAN = 1;
	public const uint32 DOF_SHELLDATA = 2;
	public const int32 DO_DROPFILE = 1162627398;
	public const int32 DO_PRINTFILE = 1414419024;
	public const uint32 ASFW_ANY = 4294967295;
	public const int32 DCX_EXCLUDEUPDATE = 256;
	public const uint32 HELPINFO_WINDOW = 1;
	public const uint32 HELPINFO_MENUITEM = 2;
	public const uint32 CTLCOLOR_MSGBOX = 0;
	public const uint32 CTLCOLOR_EDIT = 1;
	public const uint32 CTLCOLOR_LISTBOX = 2;
	public const uint32 CTLCOLOR_BTN = 3;
	public const uint32 CTLCOLOR_DLG = 4;
	public const uint32 CTLCOLOR_SCROLLBAR = 5;
	public const uint32 CTLCOLOR_STATIC = 6;
	public const uint32 CTLCOLOR_MAX = 7;
	public const uint32 COLOR_BTNHIGHLIGHT = 20;
	public const uint32 COLOR_BTNHILIGHT = 20;
	public const uint32 GW_MAX = 5;
	public const uint32 SC_SIZE = 61440;
	public const uint32 SC_MOVE = 61456;
	public const uint32 SC_MINIMIZE = 61472;
	public const uint32 SC_MAXIMIZE = 61488;
	public const uint32 SC_NEXTWINDOW = 61504;
	public const uint32 SC_PREVWINDOW = 61520;
	public const uint32 SC_CLOSE = 61536;
	public const uint32 SC_VSCROLL = 61552;
	public const uint32 SC_HSCROLL = 61568;
	public const uint32 SC_MOUSEMENU = 61584;
	public const uint32 SC_KEYMENU = 61696;
	public const uint32 SC_ARRANGE = 61712;
	public const uint32 SC_RESTORE = 61728;
	public const uint32 SC_TASKLIST = 61744;
	public const uint32 SC_HOTKEY = 61776;
	public const uint32 SC_DEFAULT = 61792;
	public const uint32 SC_MONITORPOWER = 61808;
	public const uint32 SC_CONTEXTHELP = 61824;
	public const uint32 SC_SEPARATOR = 61455;
	public const uint32 SCF_ISSECURE = 1;
	public const uint32 SC_ICON = 61472;
	public const uint32 SC_ZOOM = 61488;
	public const PWSTR IDC_ARROW = (PWSTR)(void*)32512;
	public const PWSTR IDC_IBEAM = (PWSTR)(void*)32513;
	public const PWSTR IDC_WAIT = (PWSTR)(void*)32514;
	public const PWSTR IDC_CROSS = (PWSTR)(void*)32515;
	public const PWSTR IDC_UPARROW = (PWSTR)(void*)32516;
	public const PWSTR IDC_SIZE = (PWSTR)(void*)32640;
	public const PWSTR IDC_ICON = (PWSTR)(void*)32641;
	public const PWSTR IDC_SIZENWSE = (PWSTR)(void*)32642;
	public const PWSTR IDC_SIZENESW = (PWSTR)(void*)32643;
	public const PWSTR IDC_SIZEWE = (PWSTR)(void*)32644;
	public const PWSTR IDC_SIZENS = (PWSTR)(void*)32645;
	public const PWSTR IDC_SIZEALL = (PWSTR)(void*)32646;
	public const PWSTR IDC_NO = (PWSTR)(void*)32648;
	public const PWSTR IDC_HAND = (PWSTR)(void*)32649;
	public const PWSTR IDC_APPSTARTING = (PWSTR)(void*)32650;
	public const PWSTR IDC_HELP = (PWSTR)(void*)32651;
	public const PWSTR IDC_PIN = (PWSTR)(void*)32671;
	public const PWSTR IDC_PERSON = (PWSTR)(void*)32672;
	public const uint32 CURSOR_CREATION_SCALING_NONE = 1;
	public const uint32 CURSOR_CREATION_SCALING_DEFAULT = 2;
	public const uint32 IMAGE_ENHMETAFILE = 3;
	public const uint32 LR_COLOR = 2;
	public const uint32 RES_ICON = 1;
	public const uint32 RES_CURSOR = 2;
	public const uint32 OBM_CLOSE = 32754;
	public const uint32 OBM_UPARROW = 32753;
	public const uint32 OBM_DNARROW = 32752;
	public const uint32 OBM_RGARROW = 32751;
	public const uint32 OBM_LFARROW = 32750;
	public const uint32 OBM_REDUCE = 32749;
	public const uint32 OBM_ZOOM = 32748;
	public const uint32 OBM_RESTORE = 32747;
	public const uint32 OBM_REDUCED = 32746;
	public const uint32 OBM_ZOOMD = 32745;
	public const uint32 OBM_RESTORED = 32744;
	public const uint32 OBM_UPARROWD = 32743;
	public const uint32 OBM_DNARROWD = 32742;
	public const uint32 OBM_RGARROWD = 32741;
	public const uint32 OBM_LFARROWD = 32740;
	public const uint32 OBM_MNARROW = 32739;
	public const uint32 OBM_COMBO = 32738;
	public const uint32 OBM_UPARROWI = 32737;
	public const uint32 OBM_DNARROWI = 32736;
	public const uint32 OBM_RGARROWI = 32735;
	public const uint32 OBM_LFARROWI = 32734;
	public const uint32 OBM_OLD_CLOSE = 32767;
	public const uint32 OBM_SIZE = 32766;
	public const uint32 OBM_OLD_UPARROW = 32765;
	public const uint32 OBM_OLD_DNARROW = 32764;
	public const uint32 OBM_OLD_RGARROW = 32763;
	public const uint32 OBM_OLD_LFARROW = 32762;
	public const uint32 OBM_BTSIZE = 32761;
	public const uint32 OBM_CHECK = 32760;
	public const uint32 OBM_CHECKBOXES = 32759;
	public const uint32 OBM_BTNCORNERS = 32758;
	public const uint32 OBM_OLD_REDUCE = 32757;
	public const uint32 OBM_OLD_ZOOM = 32756;
	public const uint32 OBM_OLD_RESTORE = 32755;
	public const uint32 OCR_SIZE = 32640;
	public const uint32 OCR_ICON = 32641;
	public const uint32 OCR_ICOCUR = 32647;
	public const uint32 OIC_SAMPLE = 32512;
	public const uint32 OIC_HAND = 32513;
	public const uint32 OIC_QUES = 32514;
	public const uint32 OIC_BANG = 32515;
	public const uint32 OIC_NOTE = 32516;
	public const uint32 OIC_WINLOGO = 32517;
	public const uint32 OIC_WARNING = 32515;
	public const uint32 OIC_ERROR = 32513;
	public const uint32 OIC_INFORMATION = 32516;
	public const uint32 OIC_SHIELD = 32518;
	public const uint32 ORD_LANGDRIVER = 1;
	public const PWSTR IDI_APPLICATION = (PWSTR)(void*)32512;
	public const PWSTR IDI_HAND = (PWSTR)(void*)32513;
	public const PWSTR IDI_QUESTION = (PWSTR)(void*)32514;
	public const PWSTR IDI_EXCLAMATION = (PWSTR)(void*)32515;
	public const PWSTR IDI_ASTERISK = (PWSTR)(void*)32516;
	public const PWSTR IDI_WINLOGO = (PWSTR)(void*)32517;
	public const PWSTR IDI_SHIELD = (PWSTR)(void*)32518;
	public const uint32 IDI_WARNING = 32515;
	public const uint32 IDI_ERROR = 32513;
	public const uint32 IDI_INFORMATION = 32516;
	public const int32 ES_LEFT = 0;
	public const int32 ES_CENTER = 1;
	public const int32 ES_RIGHT = 2;
	public const int32 ES_MULTILINE = 4;
	public const int32 ES_UPPERCASE = 8;
	public const int32 ES_LOWERCASE = 16;
	public const int32 ES_PASSWORD = 32;
	public const int32 ES_AUTOVSCROLL = 64;
	public const int32 ES_AUTOHSCROLL = 128;
	public const int32 ES_NOHIDESEL = 256;
	public const int32 ES_OEMCONVERT = 1024;
	public const int32 ES_READONLY = 2048;
	public const int32 ES_WANTRETURN = 4096;
	public const int32 ES_NUMBER = 8192;
	public const uint32 EN_SETFOCUS = 256;
	public const uint32 EN_KILLFOCUS = 512;
	public const uint32 EN_CHANGE = 768;
	public const uint32 EN_UPDATE = 1024;
	public const uint32 EN_ERRSPACE = 1280;
	public const uint32 EN_MAXTEXT = 1281;
	public const uint32 EN_HSCROLL = 1537;
	public const uint32 EN_VSCROLL = 1538;
	public const uint32 EN_ALIGN_LTR_EC = 1792;
	public const uint32 EN_ALIGN_RTL_EC = 1793;
	public const uint32 EN_BEFORE_PASTE = 2048;
	public const uint32 EN_AFTER_PASTE = 2049;
	public const uint32 EC_LEFTMARGIN = 1;
	public const uint32 EC_RIGHTMARGIN = 2;
	public const uint32 EC_USEFONTINFO = 65535;
	public const uint32 EMSIS_COMPOSITIONSTRING = 1;
	public const uint32 EIMES_GETCOMPSTRATONCE = 1;
	public const uint32 EIMES_CANCELCOMPSTRINFOCUS = 2;
	public const uint32 EIMES_COMPLETECOMPSTRKILLFOCUS = 4;
	public const int32 BS_PUSHBUTTON = 0;
	public const int32 BS_DEFPUSHBUTTON = 1;
	public const int32 BS_CHECKBOX = 2;
	public const int32 BS_AUTOCHECKBOX = 3;
	public const int32 BS_RADIOBUTTON = 4;
	public const int32 BS_3STATE = 5;
	public const int32 BS_AUTO3STATE = 6;
	public const int32 BS_GROUPBOX = 7;
	public const int32 BS_USERBUTTON = 8;
	public const int32 BS_AUTORADIOBUTTON = 9;
	public const int32 BS_PUSHBOX = 10;
	public const int32 BS_OWNERDRAW = 11;
	public const int32 BS_TYPEMASK = 15;
	public const int32 BS_LEFTTEXT = 32;
	public const int32 BS_TEXT = 0;
	public const int32 BS_ICON = 64;
	public const int32 BS_BITMAP = 128;
	public const int32 BS_LEFT = 256;
	public const int32 BS_RIGHT = 512;
	public const int32 BS_CENTER = 768;
	public const int32 BS_TOP = 1024;
	public const int32 BS_BOTTOM = 2048;
	public const int32 BS_VCENTER = 3072;
	public const int32 BS_PUSHLIKE = 4096;
	public const int32 BS_MULTILINE = 8192;
	public const int32 BS_NOTIFY = 16384;
	public const int32 BS_FLAT = 32768;
	public const int32 BS_RIGHTBUTTON = 32;
	public const uint32 BN_CLICKED = 0;
	public const uint32 BN_PAINT = 1;
	public const uint32 BN_HILITE = 2;
	public const uint32 BN_UNHILITE = 3;
	public const uint32 BN_DISABLE = 4;
	public const uint32 BN_DOUBLECLICKED = 5;
	public const uint32 BN_PUSHED = 2;
	public const uint32 BN_UNPUSHED = 3;
	public const uint32 BN_DBLCLK = 5;
	public const uint32 BN_SETFOCUS = 6;
	public const uint32 BN_KILLFOCUS = 7;
	public const uint32 BM_GETCHECK = 240;
	public const uint32 BM_SETCHECK = 241;
	public const uint32 BM_GETSTATE = 242;
	public const uint32 BM_SETSTATE = 243;
	public const uint32 BM_SETSTYLE = 244;
	public const uint32 BM_CLICK = 245;
	public const uint32 BM_GETIMAGE = 246;
	public const uint32 BM_SETIMAGE = 247;
	public const uint32 BM_SETDONTCLICK = 248;
	public const uint32 BST_PUSHED = 4;
	public const uint32 BST_FOCUS = 8;
	public const int32 SS_LEFT = 0;
	public const int32 SS_CENTER = 1;
	public const int32 SS_RIGHT = 2;
	public const int32 SS_ICON = 3;
	public const int32 SS_BLACKRECT = 4;
	public const int32 SS_GRAYRECT = 5;
	public const int32 SS_WHITERECT = 6;
	public const int32 SS_BLACKFRAME = 7;
	public const int32 SS_GRAYFRAME = 8;
	public const int32 SS_WHITEFRAME = 9;
	public const int32 SS_USERITEM = 10;
	public const int32 SS_SIMPLE = 11;
	public const int32 SS_LEFTNOWORDWRAP = 12;
	public const int32 SS_OWNERDRAW = 13;
	public const int32 SS_BITMAP = 14;
	public const int32 SS_ENHMETAFILE = 15;
	public const int32 SS_ETCHEDHORZ = 16;
	public const int32 SS_ETCHEDVERT = 17;
	public const int32 SS_ETCHEDFRAME = 18;
	public const int32 SS_TYPEMASK = 31;
	public const int32 SS_REALSIZECONTROL = 64;
	public const int32 SS_NOPREFIX = 128;
	public const int32 SS_NOTIFY = 256;
	public const int32 SS_CENTERIMAGE = 512;
	public const int32 SS_RIGHTJUST = 1024;
	public const int32 SS_REALSIZEIMAGE = 2048;
	public const int32 SS_SUNKEN = 4096;
	public const int32 SS_EDITCONTROL = 8192;
	public const int32 SS_ENDELLIPSIS = 16384;
	public const int32 SS_PATHELLIPSIS = 32768;
	public const int32 SS_WORDELLIPSIS = 49152;
	public const int32 SS_ELLIPSISMASK = 49152;
	public const uint32 STM_SETICON = 368;
	public const uint32 STM_GETICON = 369;
	public const uint32 STM_SETIMAGE = 370;
	public const uint32 STM_GETIMAGE = 371;
	public const uint32 STN_CLICKED = 0;
	public const uint32 STN_DBLCLK = 1;
	public const uint32 STN_ENABLE = 2;
	public const uint32 STN_DISABLE = 3;
	public const uint32 STM_MSGMAX = 372;
	public const uint32 DWL_MSGRESULT = 0;
	public const uint32 DWL_DLGPROC = 4;
	public const uint32 DWL_USER = 8;
	public const uint32 DWLP_MSGRESULT = 0;
	public const int32 DS_ABSALIGN = 1;
	public const int32 DS_SYSMODAL = 2;
	public const int32 DS_LOCALEDIT = 32;
	public const int32 DS_SETFONT = 64;
	public const int32 DS_MODALFRAME = 128;
	public const int32 DS_NOIDLEMSG = 256;
	public const int32 DS_SETFOREGROUND = 512;
	public const int32 DS_3DLOOK = 4;
	public const int32 DS_FIXEDSYS = 8;
	public const int32 DS_NOFAILCREATE = 16;
	public const int32 DS_CONTROL = 1024;
	public const int32 DS_CENTER = 2048;
	public const int32 DS_CENTERMOUSE = 4096;
	public const int32 DS_CONTEXTHELP = 8192;
	public const int32 DS_USEPIXELS = 32768;
	public const uint32 DM_GETDEFID = 1024;
	public const uint32 DM_SETDEFID = 1025;
	public const uint32 DM_REPOSITION = 1026;
	public const uint32 DC_HASDEFID = 21323;
	public const uint32 DLGC_WANTARROWS = 1;
	public const uint32 DLGC_WANTTAB = 2;
	public const uint32 DLGC_WANTALLKEYS = 4;
	public const uint32 DLGC_WANTMESSAGE = 4;
	public const uint32 DLGC_HASSETSEL = 8;
	public const uint32 DLGC_DEFPUSHBUTTON = 16;
	public const uint32 DLGC_UNDEFPUSHBUTTON = 32;
	public const uint32 DLGC_RADIOBUTTON = 64;
	public const uint32 DLGC_WANTCHARS = 128;
	public const uint32 DLGC_STATIC = 256;
	public const uint32 DLGC_BUTTON = 8192;
	public const int32 LB_CTLCODE = 0;
	public const uint32 LB_OKAY = 0;
	public const int32 LB_ERR = -1;
	public const int32 LB_ERRSPACE = -2;
	public const int32 LBN_ERRSPACE = -2;
	public const uint32 LBN_SELCHANGE = 1;
	public const uint32 LBN_DBLCLK = 2;
	public const uint32 LBN_SELCANCEL = 3;
	public const uint32 LBN_SETFOCUS = 4;
	public const uint32 LBN_KILLFOCUS = 5;
	public const uint32 LB_ADDSTRING = 384;
	public const uint32 LB_INSERTSTRING = 385;
	public const uint32 LB_DELETESTRING = 386;
	public const uint32 LB_SELITEMRANGEEX = 387;
	public const uint32 LB_RESETCONTENT = 388;
	public const uint32 LB_SETSEL = 389;
	public const uint32 LB_SETCURSEL = 390;
	public const uint32 LB_GETSEL = 391;
	public const uint32 LB_GETCURSEL = 392;
	public const uint32 LB_GETTEXT = 393;
	public const uint32 LB_GETTEXTLEN = 394;
	public const uint32 LB_GETCOUNT = 395;
	public const uint32 LB_SELECTSTRING = 396;
	public const uint32 LB_DIR = 397;
	public const uint32 LB_GETTOPINDEX = 398;
	public const uint32 LB_FINDSTRING = 399;
	public const uint32 LB_GETSELCOUNT = 400;
	public const uint32 LB_GETSELITEMS = 401;
	public const uint32 LB_SETTABSTOPS = 402;
	public const uint32 LB_GETHORIZONTALEXTENT = 403;
	public const uint32 LB_SETHORIZONTALEXTENT = 404;
	public const uint32 LB_SETCOLUMNWIDTH = 405;
	public const uint32 LB_ADDFILE = 406;
	public const uint32 LB_SETTOPINDEX = 407;
	public const uint32 LB_GETITEMRECT = 408;
	public const uint32 LB_GETITEMDATA = 409;
	public const uint32 LB_SETITEMDATA = 410;
	public const uint32 LB_SELITEMRANGE = 411;
	public const uint32 LB_SETANCHORINDEX = 412;
	public const uint32 LB_GETANCHORINDEX = 413;
	public const uint32 LB_SETCARETINDEX = 414;
	public const uint32 LB_GETCARETINDEX = 415;
	public const uint32 LB_SETITEMHEIGHT = 416;
	public const uint32 LB_GETITEMHEIGHT = 417;
	public const uint32 LB_FINDSTRINGEXACT = 418;
	public const uint32 LB_SETLOCALE = 421;
	public const uint32 LB_GETLOCALE = 422;
	public const uint32 LB_SETCOUNT = 423;
	public const uint32 LB_INITSTORAGE = 424;
	public const uint32 LB_ITEMFROMPOINT = 425;
	public const uint32 LB_MULTIPLEADDSTRING = 433;
	public const uint32 LB_GETLISTBOXINFO = 434;
	public const uint32 LB_MSGMAX = 435;
	public const int32 LBS_NOTIFY = 1;
	public const int32 LBS_SORT = 2;
	public const int32 LBS_NOREDRAW = 4;
	public const int32 LBS_MULTIPLESEL = 8;
	public const int32 LBS_OWNERDRAWFIXED = 16;
	public const int32 LBS_OWNERDRAWVARIABLE = 32;
	public const int32 LBS_HASSTRINGS = 64;
	public const int32 LBS_USETABSTOPS = 128;
	public const int32 LBS_NOINTEGRALHEIGHT = 256;
	public const int32 LBS_MULTICOLUMN = 512;
	public const int32 LBS_WANTKEYBOARDINPUT = 1024;
	public const int32 LBS_EXTENDEDSEL = 2048;
	public const int32 LBS_DISABLENOSCROLL = 4096;
	public const int32 LBS_NODATA = 8192;
	public const int32 LBS_NOSEL = 16384;
	public const int32 LBS_COMBOBOX = 32768;
	public const uint32 CB_OKAY = 0;
	public const int32 CB_ERR = -1;
	public const int32 CB_ERRSPACE = -2;
	public const int32 CBN_ERRSPACE = -1;
	public const uint32 CBN_SELCHANGE = 1;
	public const uint32 CBN_DBLCLK = 2;
	public const uint32 CBN_SETFOCUS = 3;
	public const uint32 CBN_KILLFOCUS = 4;
	public const uint32 CBN_EDITCHANGE = 5;
	public const uint32 CBN_EDITUPDATE = 6;
	public const uint32 CBN_DROPDOWN = 7;
	public const uint32 CBN_CLOSEUP = 8;
	public const uint32 CBN_SELENDOK = 9;
	public const uint32 CBN_SELENDCANCEL = 10;
	public const int32 CBS_SIMPLE = 1;
	public const int32 CBS_DROPDOWN = 2;
	public const int32 CBS_DROPDOWNLIST = 3;
	public const int32 CBS_OWNERDRAWFIXED = 16;
	public const int32 CBS_OWNERDRAWVARIABLE = 32;
	public const int32 CBS_AUTOHSCROLL = 64;
	public const int32 CBS_OEMCONVERT = 128;
	public const int32 CBS_SORT = 256;
	public const int32 CBS_HASSTRINGS = 512;
	public const int32 CBS_NOINTEGRALHEIGHT = 1024;
	public const int32 CBS_DISABLENOSCROLL = 2048;
	public const int32 CBS_UPPERCASE = 8192;
	public const int32 CBS_LOWERCASE = 16384;
	public const uint32 CB_GETEDITSEL = 320;
	public const uint32 CB_LIMITTEXT = 321;
	public const uint32 CB_SETEDITSEL = 322;
	public const uint32 CB_ADDSTRING = 323;
	public const uint32 CB_DELETESTRING = 324;
	public const uint32 CB_DIR = 325;
	public const uint32 CB_GETCOUNT = 326;
	public const uint32 CB_GETCURSEL = 327;
	public const uint32 CB_GETLBTEXT = 328;
	public const uint32 CB_GETLBTEXTLEN = 329;
	public const uint32 CB_INSERTSTRING = 330;
	public const uint32 CB_RESETCONTENT = 331;
	public const uint32 CB_FINDSTRING = 332;
	public const uint32 CB_SELECTSTRING = 333;
	public const uint32 CB_SETCURSEL = 334;
	public const uint32 CB_SHOWDROPDOWN = 335;
	public const uint32 CB_GETITEMDATA = 336;
	public const uint32 CB_SETITEMDATA = 337;
	public const uint32 CB_GETDROPPEDCONTROLRECT = 338;
	public const uint32 CB_SETITEMHEIGHT = 339;
	public const uint32 CB_GETITEMHEIGHT = 340;
	public const uint32 CB_SETEXTENDEDUI = 341;
	public const uint32 CB_GETEXTENDEDUI = 342;
	public const uint32 CB_GETDROPPEDSTATE = 343;
	public const uint32 CB_FINDSTRINGEXACT = 344;
	public const uint32 CB_SETLOCALE = 345;
	public const uint32 CB_GETLOCALE = 346;
	public const uint32 CB_GETTOPINDEX = 347;
	public const uint32 CB_SETTOPINDEX = 348;
	public const uint32 CB_GETHORIZONTALEXTENT = 349;
	public const uint32 CB_SETHORIZONTALEXTENT = 350;
	public const uint32 CB_GETDROPPEDWIDTH = 351;
	public const uint32 CB_SETDROPPEDWIDTH = 352;
	public const uint32 CB_INITSTORAGE = 353;
	public const uint32 CB_MULTIPLEADDSTRING = 355;
	public const uint32 CB_GETCOMBOBOXINFO = 356;
	public const uint32 CB_MSGMAX = 357;
	public const int32 SBS_HORZ = 0;
	public const int32 SBS_VERT = 1;
	public const int32 SBS_TOPALIGN = 2;
	public const int32 SBS_LEFTALIGN = 2;
	public const int32 SBS_BOTTOMALIGN = 4;
	public const int32 SBS_RIGHTALIGN = 4;
	public const int32 SBS_SIZEBOXTOPLEFTALIGN = 2;
	public const int32 SBS_SIZEBOXBOTTOMRIGHTALIGN = 4;
	public const int32 SBS_SIZEBOX = 8;
	public const int32 SBS_SIZEGRIP = 16;
	public const uint32 SBM_SETPOS = 224;
	public const uint32 SBM_GETPOS = 225;
	public const uint32 SBM_SETRANGE = 226;
	public const uint32 SBM_SETRANGEREDRAW = 230;
	public const uint32 SBM_GETRANGE = 227;
	public const uint32 SBM_ENABLE_ARROWS = 228;
	public const uint32 SBM_SETSCROLLINFO = 233;
	public const uint32 SBM_GETSCROLLINFO = 234;
	public const uint32 SBM_GETSCROLLBARINFO = 235;
	public const uint32 MDIS_ALLCHILDSTYLES = 1;
	public const int32 HELP_CONTEXT = 1;
	public const int32 HELP_QUIT = 2;
	public const int32 HELP_INDEX = 3;
	public const int32 HELP_CONTENTS = 3;
	public const int32 HELP_HELPONHELP = 4;
	public const int32 HELP_SETINDEX = 5;
	public const int32 HELP_SETCONTENTS = 5;
	public const int32 HELP_CONTEXTPOPUP = 8;
	public const int32 HELP_FORCEFILE = 9;
	public const int32 HELP_KEY = 257;
	public const int32 HELP_COMMAND = 258;
	public const int32 HELP_PARTIALKEY = 261;
	public const int32 HELP_MULTIKEY = 513;
	public const int32 HELP_SETWINPOS = 515;
	public const uint32 HELP_CONTEXTMENU = 10;
	public const uint32 HELP_FINDER = 11;
	public const uint32 HELP_WM_HELP = 12;
	public const uint32 HELP_SETPOPUP_POS = 13;
	public const uint32 HELP_TCARD = 32768;
	public const uint32 HELP_TCARD_DATA = 16;
	public const uint32 HELP_TCARD_OTHER_CALLER = 17;
	public const uint32 IDH_NO_HELP = 28440;
	public const uint32 IDH_MISSING_CONTEXT = 28441;
	public const uint32 IDH_GENERIC_HELP_BUTTON = 28442;
	public const uint32 IDH_OK = 28443;
	public const uint32 IDH_CANCEL = 28444;
	public const uint32 IDH_HELP = 28445;
	public const uint32 MAX_TOUCH_PREDICTION_FILTER_TAPS = 3;
	public const uint32 TOUCHPREDICTIONPARAMETERS_DEFAULT_LATENCY = 8;
	public const uint32 TOUCHPREDICTIONPARAMETERS_DEFAULT_SAMPLETIME = 8;
	public const uint32 TOUCHPREDICTIONPARAMETERS_DEFAULT_USE_HW_TIMESTAMP = 1;
	public const float TOUCHPREDICTIONPARAMETERS_DEFAULT_RLS_DELTA = 0.001f;
	public const float TOUCHPREDICTIONPARAMETERS_DEFAULT_RLS_LAMBDA_MIN = 0.9f;
	public const float TOUCHPREDICTIONPARAMETERS_DEFAULT_RLS_LAMBDA_MAX = 0.999f;
	public const float TOUCHPREDICTIONPARAMETERS_DEFAULT_RLS_LAMBDA_LEARNING_RATE = 0.001f;
	public const float TOUCHPREDICTIONPARAMETERS_DEFAULT_RLS_EXPO_SMOOTH_ALPHA = 0.99f;
	public const uint32 MAX_LOGICALDPIOVERRIDE = 2;
	public const int32 MIN_LOGICALDPIOVERRIDE = -2;
	public const uint32 FE_FONTSMOOTHINGSTANDARD = 1;
	public const uint32 FE_FONTSMOOTHINGCLEARTYPE = 2;
	public const uint32 FE_FONTSMOOTHINGORIENTATIONBGR = 0;
	public const uint32 FE_FONTSMOOTHINGORIENTATIONRGB = 1;
	public const uint32 CONTACTVISUALIZATION_OFF = 0;
	public const uint32 CONTACTVISUALIZATION_ON = 1;
	public const uint32 CONTACTVISUALIZATION_PRESENTATIONMODE = 2;
	public const uint32 GESTUREVISUALIZATION_OFF = 0;
	public const uint32 GESTUREVISUALIZATION_ON = 31;
	public const uint32 GESTUREVISUALIZATION_TAP = 1;
	public const uint32 GESTUREVISUALIZATION_DOUBLETAP = 2;
	public const uint32 GESTUREVISUALIZATION_PRESSANDTAP = 4;
	public const uint32 GESTUREVISUALIZATION_PRESSANDHOLD = 8;
	public const uint32 GESTUREVISUALIZATION_RIGHTTAP = 16;
	public const uint32 MOUSEWHEEL_ROUTING_FOCUS = 0;
	public const uint32 MOUSEWHEEL_ROUTING_HYBRID = 1;
	public const uint32 MOUSEWHEEL_ROUTING_MOUSE_POS = 2;
	public const uint32 PENVISUALIZATION_ON = 35;
	public const uint32 PENVISUALIZATION_OFF = 0;
	public const uint32 PENVISUALIZATION_TAP = 1;
	public const uint32 PENVISUALIZATION_DOUBLETAP = 2;
	public const uint32 PENVISUALIZATION_CURSOR = 32;
	public const uint32 PENARBITRATIONTYPE_NONE = 0;
	public const uint32 PENARBITRATIONTYPE_WIN8 = 1;
	public const uint32 PENARBITRATIONTYPE_FIS = 2;
	public const uint32 PENARBITRATIONTYPE_SPT = 3;
	public const uint32 PENARBITRATIONTYPE_MAX = 4;
	public const int32 METRICS_USEDEFAULT = -1;
	public const int32 ARW_STARTMASK = 3;
	public const int32 ARW_STARTRIGHT = 1;
	public const int32 ARW_STARTTOP = 2;
	public const int32 ARW_LEFT = 0;
	public const int32 ARW_RIGHT = 0;
	public const int32 ARW_UP = 4;
	public const int32 ARW_DOWN = 4;
	public const int32 ARW_HIDE = 8;
	public const uint32 HCF_LOGONDESKTOP = 256;
	public const uint32 HCF_DEFAULTDESKTOP = 512;
	public const uint32 EDS_RAWMODE = 2;
	public const uint32 EDS_ROTATEDMODE = 4;
	public const uint32 EDD_GET_DEVICE_INTERFACE_NAME = 1;
	public const uint32 FKF_FILTERKEYSON = 1;
	public const uint32 FKF_AVAILABLE = 2;
	public const uint32 FKF_HOTKEYACTIVE = 4;
	public const uint32 FKF_CONFIRMHOTKEY = 8;
	public const uint32 FKF_HOTKEYSOUND = 16;
	public const uint32 FKF_INDICATOR = 32;
	public const uint32 FKF_CLICKON = 64;
	public const uint32 MKF_MOUSEKEYSON = 1;
	public const uint32 MKF_AVAILABLE = 2;
	public const uint32 MKF_HOTKEYACTIVE = 4;
	public const uint32 MKF_CONFIRMHOTKEY = 8;
	public const uint32 MKF_HOTKEYSOUND = 16;
	public const uint32 MKF_INDICATOR = 32;
	public const uint32 MKF_MODIFIERS = 64;
	public const uint32 MKF_REPLACENUMBERS = 128;
	public const uint32 MKF_LEFTBUTTONSEL = 268435456;
	public const uint32 MKF_RIGHTBUTTONSEL = 536870912;
	public const uint32 MKF_LEFTBUTTONDOWN = 16777216;
	public const uint32 MKF_RIGHTBUTTONDOWN = 33554432;
	public const uint32 MKF_MOUSEMODE = 2147483648;
	public const uint32 TKF_TOGGLEKEYSON = 1;
	public const uint32 TKF_AVAILABLE = 2;
	public const uint32 TKF_HOTKEYACTIVE = 4;
	public const uint32 TKF_CONFIRMHOTKEY = 8;
	public const uint32 TKF_HOTKEYSOUND = 16;
	public const uint32 TKF_INDICATOR = 32;
	public const uint32 MONITORINFOF_PRIMARY = 1;
	public const uint32 WINEVENT_OUTOFCONTEXT = 0;
	public const uint32 WINEVENT_SKIPOWNTHREAD = 1;
	public const uint32 WINEVENT_SKIPOWNPROCESS = 2;
	public const uint32 WINEVENT_INCONTEXT = 4;
	public const uint32 CHILDID_SELF = 0;
	public const uint32 INDEXID_OBJECT = 0;
	public const uint32 INDEXID_CONTAINER = 0;
	public const uint32 EVENT_MIN = 1;
	public const uint32 EVENT_MAX = 2147483647;
	public const uint32 EVENT_SYSTEM_SOUND = 1;
	public const uint32 EVENT_SYSTEM_ALERT = 2;
	public const uint32 EVENT_SYSTEM_FOREGROUND = 3;
	public const uint32 EVENT_SYSTEM_MENUSTART = 4;
	public const uint32 EVENT_SYSTEM_MENUEND = 5;
	public const uint32 EVENT_SYSTEM_MENUPOPUPSTART = 6;
	public const uint32 EVENT_SYSTEM_MENUPOPUPEND = 7;
	public const uint32 EVENT_SYSTEM_CAPTURESTART = 8;
	public const uint32 EVENT_SYSTEM_CAPTUREEND = 9;
	public const uint32 EVENT_SYSTEM_MOVESIZESTART = 10;
	public const uint32 EVENT_SYSTEM_MOVESIZEEND = 11;
	public const uint32 EVENT_SYSTEM_CONTEXTHELPSTART = 12;
	public const uint32 EVENT_SYSTEM_CONTEXTHELPEND = 13;
	public const uint32 EVENT_SYSTEM_DRAGDROPSTART = 14;
	public const uint32 EVENT_SYSTEM_DRAGDROPEND = 15;
	public const uint32 EVENT_SYSTEM_DIALOGSTART = 16;
	public const uint32 EVENT_SYSTEM_DIALOGEND = 17;
	public const uint32 EVENT_SYSTEM_SCROLLINGSTART = 18;
	public const uint32 EVENT_SYSTEM_SCROLLINGEND = 19;
	public const uint32 EVENT_SYSTEM_SWITCHSTART = 20;
	public const uint32 EVENT_SYSTEM_SWITCHEND = 21;
	public const uint32 EVENT_SYSTEM_MINIMIZESTART = 22;
	public const uint32 EVENT_SYSTEM_MINIMIZEEND = 23;
	public const uint32 EVENT_SYSTEM_DESKTOPSWITCH = 32;
	public const uint32 EVENT_SYSTEM_SWITCHER_APPGRABBED = 36;
	public const uint32 EVENT_SYSTEM_SWITCHER_APPOVERTARGET = 37;
	public const uint32 EVENT_SYSTEM_SWITCHER_APPDROPPED = 38;
	public const uint32 EVENT_SYSTEM_SWITCHER_CANCELLED = 39;
	public const uint32 EVENT_SYSTEM_IME_KEY_NOTIFICATION = 41;
	public const uint32 EVENT_SYSTEM_END = 255;
	public const uint32 EVENT_OEM_DEFINED_START = 257;
	public const uint32 EVENT_OEM_DEFINED_END = 511;
	public const uint32 EVENT_UIA_EVENTID_START = 19968;
	public const uint32 EVENT_UIA_EVENTID_END = 20223;
	public const uint32 EVENT_UIA_PROPID_START = 29952;
	public const uint32 EVENT_UIA_PROPID_END = 30207;
	public const uint32 EVENT_CONSOLE_CARET = 16385;
	public const uint32 EVENT_CONSOLE_UPDATE_REGION = 16386;
	public const uint32 EVENT_CONSOLE_UPDATE_SIMPLE = 16387;
	public const uint32 EVENT_CONSOLE_UPDATE_SCROLL = 16388;
	public const uint32 EVENT_CONSOLE_LAYOUT = 16389;
	public const uint32 EVENT_CONSOLE_START_APPLICATION = 16390;
	public const uint32 EVENT_CONSOLE_END_APPLICATION = 16391;
	public const uint32 CONSOLE_APPLICATION_16BIT = 0;
	public const uint32 CONSOLE_CARET_SELECTION = 1;
	public const uint32 CONSOLE_CARET_VISIBLE = 2;
	public const uint32 EVENT_CONSOLE_END = 16639;
	public const uint32 EVENT_OBJECT_CREATE = 32768;
	public const uint32 EVENT_OBJECT_DESTROY = 32769;
	public const uint32 EVENT_OBJECT_SHOW = 32770;
	public const uint32 EVENT_OBJECT_HIDE = 32771;
	public const uint32 EVENT_OBJECT_REORDER = 32772;
	public const uint32 EVENT_OBJECT_FOCUS = 32773;
	public const uint32 EVENT_OBJECT_SELECTION = 32774;
	public const uint32 EVENT_OBJECT_SELECTIONADD = 32775;
	public const uint32 EVENT_OBJECT_SELECTIONREMOVE = 32776;
	public const uint32 EVENT_OBJECT_SELECTIONWITHIN = 32777;
	public const uint32 EVENT_OBJECT_STATECHANGE = 32778;
	public const uint32 EVENT_OBJECT_LOCATIONCHANGE = 32779;
	public const uint32 EVENT_OBJECT_NAMECHANGE = 32780;
	public const uint32 EVENT_OBJECT_DESCRIPTIONCHANGE = 32781;
	public const uint32 EVENT_OBJECT_VALUECHANGE = 32782;
	public const uint32 EVENT_OBJECT_PARENTCHANGE = 32783;
	public const uint32 EVENT_OBJECT_HELPCHANGE = 32784;
	public const uint32 EVENT_OBJECT_DEFACTIONCHANGE = 32785;
	public const uint32 EVENT_OBJECT_ACCELERATORCHANGE = 32786;
	public const uint32 EVENT_OBJECT_INVOKED = 32787;
	public const uint32 EVENT_OBJECT_TEXTSELECTIONCHANGED = 32788;
	public const uint32 EVENT_OBJECT_CONTENTSCROLLED = 32789;
	public const uint32 EVENT_SYSTEM_ARRANGMENTPREVIEW = 32790;
	public const uint32 EVENT_OBJECT_CLOAKED = 32791;
	public const uint32 EVENT_OBJECT_UNCLOAKED = 32792;
	public const uint32 EVENT_OBJECT_LIVEREGIONCHANGED = 32793;
	public const uint32 EVENT_OBJECT_HOSTEDOBJECTSINVALIDATED = 32800;
	public const uint32 EVENT_OBJECT_DRAGSTART = 32801;
	public const uint32 EVENT_OBJECT_DRAGCANCEL = 32802;
	public const uint32 EVENT_OBJECT_DRAGCOMPLETE = 32803;
	public const uint32 EVENT_OBJECT_DRAGENTER = 32804;
	public const uint32 EVENT_OBJECT_DRAGLEAVE = 32805;
	public const uint32 EVENT_OBJECT_DRAGDROPPED = 32806;
	public const uint32 EVENT_OBJECT_IME_SHOW = 32807;
	public const uint32 EVENT_OBJECT_IME_HIDE = 32808;
	public const uint32 EVENT_OBJECT_IME_CHANGE = 32809;
	public const uint32 EVENT_OBJECT_TEXTEDIT_CONVERSIONTARGETCHANGED = 32816;
	public const uint32 EVENT_OBJECT_END = 33023;
	public const uint32 EVENT_AIA_START = 40960;
	public const uint32 EVENT_AIA_END = 45055;
	public const uint32 SOUND_SYSTEM_STARTUP = 1;
	public const uint32 SOUND_SYSTEM_SHUTDOWN = 2;
	public const uint32 SOUND_SYSTEM_BEEP = 3;
	public const uint32 SOUND_SYSTEM_ERROR = 4;
	public const uint32 SOUND_SYSTEM_QUESTION = 5;
	public const uint32 SOUND_SYSTEM_WARNING = 6;
	public const uint32 SOUND_SYSTEM_INFORMATION = 7;
	public const uint32 SOUND_SYSTEM_MAXIMIZE = 8;
	public const uint32 SOUND_SYSTEM_MINIMIZE = 9;
	public const uint32 SOUND_SYSTEM_RESTOREUP = 10;
	public const uint32 SOUND_SYSTEM_RESTOREDOWN = 11;
	public const uint32 SOUND_SYSTEM_APPSTART = 12;
	public const uint32 SOUND_SYSTEM_FAULT = 13;
	public const uint32 SOUND_SYSTEM_APPEND = 14;
	public const uint32 SOUND_SYSTEM_MENUCOMMAND = 15;
	public const uint32 SOUND_SYSTEM_MENUPOPUP = 16;
	public const uint32 CSOUND_SYSTEM = 16;
	public const uint32 CALERT_SYSTEM = 6;
	public const uint32 GUI_16BITTASK = 0;
	public const uint32 USER_DEFAULT_SCREEN_DPI = 96;
	public const uint32 STATE_SYSTEM_SELECTED = 2;
	public const uint32 STATE_SYSTEM_FOCUSED = 4;
	public const uint32 STATE_SYSTEM_CHECKED = 16;
	public const uint32 STATE_SYSTEM_MIXED = 32;
	public const uint32 STATE_SYSTEM_INDETERMINATE = 32;
	public const uint32 STATE_SYSTEM_READONLY = 64;
	public const uint32 STATE_SYSTEM_HOTTRACKED = 128;
	public const uint32 STATE_SYSTEM_DEFAULT = 256;
	public const uint32 STATE_SYSTEM_EXPANDED = 512;
	public const uint32 STATE_SYSTEM_COLLAPSED = 1024;
	public const uint32 STATE_SYSTEM_BUSY = 2048;
	public const uint32 STATE_SYSTEM_FLOATING = 4096;
	public const uint32 STATE_SYSTEM_MARQUEED = 8192;
	public const uint32 STATE_SYSTEM_ANIMATED = 16384;
	public const uint32 STATE_SYSTEM_SIZEABLE = 131072;
	public const uint32 STATE_SYSTEM_MOVEABLE = 262144;
	public const uint32 STATE_SYSTEM_SELFVOICING = 524288;
	public const uint32 STATE_SYSTEM_SELECTABLE = 2097152;
	public const uint32 STATE_SYSTEM_LINKED = 4194304;
	public const uint32 STATE_SYSTEM_TRAVERSED = 8388608;
	public const uint32 STATE_SYSTEM_MULTISELECTABLE = 16777216;
	public const uint32 STATE_SYSTEM_EXTSELECTABLE = 33554432;
	public const uint32 STATE_SYSTEM_ALERT_LOW = 67108864;
	public const uint32 STATE_SYSTEM_ALERT_MEDIUM = 134217728;
	public const uint32 STATE_SYSTEM_ALERT_HIGH = 268435456;
	public const uint32 STATE_SYSTEM_PROTECTED = 536870912;
	public const uint32 STATE_SYSTEM_VALID = 1073741823;
	public const uint32 CCHILDREN_TITLEBAR = 5;
	public const uint32 CCHILDREN_SCROLLBAR = 5;
	public const uint32 RIM_INPUT = 0;
	public const uint32 RIM_INPUTSINK = 1;
	public const uint32 RIM_TYPEMAX = 2;
	public const uint32 RI_MOUSE_LEFT_BUTTON_DOWN = 1;
	public const uint32 RI_MOUSE_LEFT_BUTTON_UP = 2;
	public const uint32 RI_MOUSE_RIGHT_BUTTON_DOWN = 4;
	public const uint32 RI_MOUSE_RIGHT_BUTTON_UP = 8;
	public const uint32 RI_MOUSE_MIDDLE_BUTTON_DOWN = 16;
	public const uint32 RI_MOUSE_MIDDLE_BUTTON_UP = 32;
	public const uint32 RI_MOUSE_BUTTON_1_DOWN = 1;
	public const uint32 RI_MOUSE_BUTTON_1_UP = 2;
	public const uint32 RI_MOUSE_BUTTON_2_DOWN = 4;
	public const uint32 RI_MOUSE_BUTTON_2_UP = 8;
	public const uint32 RI_MOUSE_BUTTON_3_DOWN = 16;
	public const uint32 RI_MOUSE_BUTTON_3_UP = 32;
	public const uint32 RI_MOUSE_BUTTON_4_DOWN = 64;
	public const uint32 RI_MOUSE_BUTTON_4_UP = 128;
	public const uint32 RI_MOUSE_BUTTON_5_DOWN = 256;
	public const uint32 RI_MOUSE_BUTTON_5_UP = 512;
	public const uint32 RI_MOUSE_WHEEL = 1024;
	public const uint32 RI_MOUSE_HWHEEL = 2048;
	public const uint32 RI_KEY_MAKE = 0;
	public const uint32 RI_KEY_BREAK = 1;
	public const uint32 RI_KEY_E0 = 2;
	public const uint32 RI_KEY_E1 = 4;
	public const uint32 RI_KEY_TERMSRV_SET_LED = 8;
	public const uint32 RI_KEY_TERMSRV_SHADOW = 16;
	public const uint32 RIDEV_EXMODEMASK = 240;
	public const uint32 GIDC_ARRIVAL = 1;
	public const uint32 GIDC_REMOVAL = 2;
	public const uint32 POINTER_DEVICE_PRODUCT_STRING_MAX = 520;
	public const uint32 PDC_ARRIVAL = 1;
	public const uint32 PDC_REMOVAL = 2;
	public const uint32 PDC_ORIENTATION_0 = 4;
	public const uint32 PDC_ORIENTATION_90 = 8;
	public const uint32 PDC_ORIENTATION_180 = 16;
	public const uint32 PDC_ORIENTATION_270 = 32;
	public const uint32 PDC_MODE_DEFAULT = 64;
	public const uint32 PDC_MODE_CENTERED = 128;
	public const uint32 PDC_MAPPING_CHANGE = 256;
	public const uint32 PDC_RESOLUTION = 512;
	public const uint32 PDC_ORIGIN = 1024;
	public const uint32 PDC_MODE_ASPECTRATIOPRESERVED = 2048;
	public const uint32 GF_BEGIN = 1;
	public const uint32 GF_INERTIA = 2;
	public const uint32 GF_END = 4;
	public const uint32 GESTURECONFIGMAXCOUNT = 256;
	public const uint32 GCF_INCLUDE_ANCESTORS = 1;
	public const uint32 NID_INTEGRATED_TOUCH = 1;
	public const uint32 NID_EXTERNAL_TOUCH = 2;
	public const uint32 NID_INTEGRATED_PEN = 4;
	public const uint32 NID_EXTERNAL_PEN = 8;
	public const uint32 NID_MULTI_INPUT = 64;
	public const uint32 NID_READY = 128;
	public const uint32 MAX_STR_BLOCKREASON = 256;
	public const uint32 STRSAFE_USE_SECURE_CRT = 0;
	public const uint32 STRSAFE_MAX_CCH = 2147483647;
	public const uint32 STRSAFE_IGNORE_NULLS = 256;
	public const uint32 STRSAFE_FILL_BEHIND_NULL = 512;
	public const uint32 STRSAFE_FILL_ON_FAILURE = 1024;
	public const uint32 STRSAFE_NULL_ON_FAILURE = 2048;
	public const uint32 STRSAFE_NO_TRUNCATION = 4096;
	public const HRESULT STRSAFE_E_INSUFFICIENT_BUFFER = -2147024774;
	public const HRESULT STRSAFE_E_INVALID_PARAMETER = -2147024809;
	public const HRESULT STRSAFE_E_END_OF_FILE = -2147024858;
	public const uint32 __WARNING_CYCLOMATIC_COMPLEXITY = 28734;
	public const uint32 __WARNING_USING_UNINIT_VAR = 6001;
	public const uint32 __WARNING_RETURN_UNINIT_VAR = 6101;
	public const uint32 __WARNING_DEREF_NULL_PTR = 6011;
	public const uint32 __WARNING_MISSING_ZERO_TERMINATION2 = 6054;
	public const uint32 __WARNING_INVALID_PARAM_VALUE_1 = 6387;
	public const uint32 __WARNING_INCORRECT_ANNOTATION = 26007;
	public const uint32 __WARNING_POTENTIAL_BUFFER_OVERFLOW_HIGH_PRIORITY = 26015;
	public const uint32 __WARNING_PRECONDITION_NULLTERMINATION_VIOLATION = 26035;
	public const uint32 __WARNING_POSTCONDITION_NULLTERMINATION_VIOLATION = 26036;
	public const uint32 __WARNING_HIGH_PRIORITY_OVERFLOW_POSTCONDITION = 26045;
	public const uint32 __WARNING_RANGE_POSTCONDITION_VIOLATION = 26061;
	public const uint32 __WARNING_POTENTIAL_RANGE_POSTCONDITION_VIOLATION = 26071;
	public const uint32 __WARNING_INVALID_PARAM_VALUE_3 = 28183;
	public const uint32 __WARNING_RETURNING_BAD_RESULT = 28196;
	public const uint32 __WARNING_BANNED_API_USAGE = 28719;
	public const uint32 __WARNING_POST_EXPECTED = 28210;
	public const HBITMAP HBMMENU_CALLBACK = -1;
	public const HBITMAP HBMMENU_SYSTEM = 1;
	public const HBITMAP HBMMENU_MBAR_RESTORE = 2;
	public const HBITMAP HBMMENU_MBAR_MINIMIZE = 3;
	public const HBITMAP HBMMENU_MBAR_CLOSE = 5;
	public const HBITMAP HBMMENU_MBAR_CLOSE_D = 6;
	public const HBITMAP HBMMENU_MBAR_MINIMIZE_D = 7;
	public const HBITMAP HBMMENU_POPUP_CLOSE = 8;
	public const HBITMAP HBMMENU_POPUP_RESTORE = 9;
	public const HBITMAP HBMMENU_POPUP_MAXIMIZE = 10;
	public const HBITMAP HBMMENU_POPUP_MINIMIZE = 11;
	public const int32 CW_USEDEFAULT = -2147483648;
	public const int32 LBS_STANDARD = 10485763;
	#endregion
	
	#region Typedefs
	public typealias HHOOK = int;
	public typealias HICON = int;
	public typealias HMENU = int;
	public typealias HCURSOR = int;
	public typealias HACCEL = int;
	#endregion
	
	#region Enums
	public enum WNDCLASS_STYLES : uint32
	{
		VREDRAW = 1,
		HREDRAW = 2,
		DBLCLKS = 8,
		OWNDC = 32,
		CLASSDC = 64,
		PARENTDC = 128,
		NOCLOSE = 512,
		SAVEBITS = 2048,
		BYTEALIGNCLIENT = 4096,
		BYTEALIGNWINDOW = 8192,
		GLOBALCLASS = 16384,
		IME = 65536,
		DROPSHADOW = 131072,
	}
	public enum CWP_FLAGS : uint32
	{
		ALL = 0,
		SKIPINVISIBLE = 1,
		SKIPDISABLED = 2,
		SKIPTRANSPARENT = 4,
	}
	[AllowDuplicates]
	public enum MESSAGEBOX_STYLE : uint32
	{
		ABORTRETRYIGNORE = 2,
		CANCELTRYCONTINUE = 6,
		HELP = 16384,
		OK = 0,
		OKCANCEL = 1,
		RETRYCANCEL = 5,
		YESNO = 4,
		YESNOCANCEL = 3,
		ICONHAND = 16,
		ICONQUESTION = 32,
		ICONEXCLAMATION = 48,
		ICONASTERISK = 64,
		USERICON = 128,
		ICONWARNING = 48,
		ICONERROR = 16,
		ICONINFORMATION = 64,
		ICONSTOP = 16,
		DEFBUTTON1 = 0,
		DEFBUTTON2 = 256,
		DEFBUTTON3 = 512,
		DEFBUTTON4 = 768,
		APPLMODAL = 0,
		SYSTEMMODAL = 4096,
		TASKMODAL = 8192,
		NOFOCUS = 32768,
		SETFOREGROUND = 65536,
		DEFAULT_DESKTOP_ONLY = 131072,
		TOPMOST = 262144,
		RIGHT = 524288,
		RTLREADING = 1048576,
		SERVICE_NOTIFICATION = 2097152,
		SERVICE_NOTIFICATION_NT3X = 262144,
		TYPEMASK = 15,
		ICONMASK = 240,
		DEFMASK = 3840,
		MODEMASK = 12288,
		MISCMASK = 49152,
	}
	[AllowDuplicates]
	public enum MENU_ITEM_FLAGS : uint32
	{
		BYCOMMAND = 0,
		BYPOSITION = 1024,
		BITMAP = 4,
		CHECKED = 8,
		DISABLED = 2,
		ENABLED = 0,
		GRAYED = 1,
		MENUBARBREAK = 32,
		MENUBREAK = 64,
		OWNERDRAW = 256,
		POPUP = 16,
		SEPARATOR = 2048,
		STRING = 0,
		UNCHECKED = 0,
		INSERT = 0,
		CHANGE = 128,
		APPEND = 256,
		DELETE = 512,
		REMOVE = 4096,
		USECHECKBITMAPS = 512,
		UNHILITE = 0,
		HILITE = 128,
		DEFAULT = 4096,
		SYSMENU = 8192,
		HELP = 16384,
		RIGHTJUSTIFY = 16384,
		MOUSESELECT = 32768,
		END = 128,
	}
	[AllowDuplicates]
	public enum SHOW_WINDOW_CMD : uint32
	{
		FORCEMINIMIZE = 11,
		HIDE = 0,
		MAXIMIZE = 3,
		MINIMIZE = 6,
		RESTORE = 9,
		SHOW = 5,
		SHOWDEFAULT = 10,
		SHOWMAXIMIZED = 3,
		SHOWMINIMIZED = 2,
		SHOWMINNOACTIVE = 7,
		SHOWNA = 8,
		SHOWNOACTIVATE = 4,
		SHOWNORMAL = 1,
		NORMAL = 1,
		MAX = 11,
		PARENTCLOSING = 1,
		OTHERZOOM = 2,
		PARENTOPENING = 3,
		OTHERUNZOOM = 4,
		SCROLLCHILDREN = 1,
		INVALIDATE = 2,
		ERASE = 4,
		SMOOTHSCROLL = 16,
	}
	[AllowDuplicates]
	public enum SYSTEM_PARAMETERS_INFO_ACTION : uint32
	{
		GETBEEP = 1,
		SETBEEP = 2,
		GETMOUSE = 3,
		SETMOUSE = 4,
		GETBORDER = 5,
		SETBORDER = 6,
		GETKEYBOARDSPEED = 10,
		SETKEYBOARDSPEED = 11,
		LANGDRIVER = 12,
		ICONHORIZONTALSPACING = 13,
		GETSCREENSAVETIMEOUT = 14,
		SETSCREENSAVETIMEOUT = 15,
		GETSCREENSAVEACTIVE = 16,
		SETSCREENSAVEACTIVE = 17,
		GETGRIDGRANULARITY = 18,
		SETGRIDGRANULARITY = 19,
		SETDESKWALLPAPER = 20,
		SETDESKPATTERN = 21,
		GETKEYBOARDDELAY = 22,
		SETKEYBOARDDELAY = 23,
		ICONVERTICALSPACING = 24,
		GETICONTITLEWRAP = 25,
		SETICONTITLEWRAP = 26,
		GETMENUDROPALIGNMENT = 27,
		SETMENUDROPALIGNMENT = 28,
		SETDOUBLECLKWIDTH = 29,
		SETDOUBLECLKHEIGHT = 30,
		GETICONTITLELOGFONT = 31,
		SETDOUBLECLICKTIME = 32,
		SETMOUSEBUTTONSWAP = 33,
		SETICONTITLELOGFONT = 34,
		GETFASTTASKSWITCH = 35,
		SETFASTTASKSWITCH = 36,
		SETDRAGFULLWINDOWS = 37,
		GETDRAGFULLWINDOWS = 38,
		GETNONCLIENTMETRICS = 41,
		SETNONCLIENTMETRICS = 42,
		GETMINIMIZEDMETRICS = 43,
		SETMINIMIZEDMETRICS = 44,
		GETICONMETRICS = 45,
		SETICONMETRICS = 46,
		SETWORKAREA = 47,
		GETWORKAREA = 48,
		SETPENWINDOWS = 49,
		GETHIGHCONTRAST = 66,
		SETHIGHCONTRAST = 67,
		GETKEYBOARDPREF = 68,
		SETKEYBOARDPREF = 69,
		GETSCREENREADER = 70,
		SETSCREENREADER = 71,
		GETANIMATION = 72,
		SETANIMATION = 73,
		GETFONTSMOOTHING = 74,
		SETFONTSMOOTHING = 75,
		SETDRAGWIDTH = 76,
		SETDRAGHEIGHT = 77,
		SETHANDHELD = 78,
		GETLOWPOWERTIMEOUT = 79,
		GETPOWEROFFTIMEOUT = 80,
		SETLOWPOWERTIMEOUT = 81,
		SETPOWEROFFTIMEOUT = 82,
		GETLOWPOWERACTIVE = 83,
		GETPOWEROFFACTIVE = 84,
		SETLOWPOWERACTIVE = 85,
		SETPOWEROFFACTIVE = 86,
		SETCURSORS = 87,
		SETICONS = 88,
		GETDEFAULTINPUTLANG = 89,
		SETDEFAULTINPUTLANG = 90,
		SETLANGTOGGLE = 91,
		GETWINDOWSEXTENSION = 92,
		SETMOUSETRAILS = 93,
		GETMOUSETRAILS = 94,
		SETSCREENSAVERRUNNING = 97,
		SCREENSAVERRUNNING = 97,
		GETFILTERKEYS = 50,
		SETFILTERKEYS = 51,
		GETTOGGLEKEYS = 52,
		SETTOGGLEKEYS = 53,
		GETMOUSEKEYS = 54,
		SETMOUSEKEYS = 55,
		GETSHOWSOUNDS = 56,
		SETSHOWSOUNDS = 57,
		GETSTICKYKEYS = 58,
		SETSTICKYKEYS = 59,
		GETACCESSTIMEOUT = 60,
		SETACCESSTIMEOUT = 61,
		GETSERIALKEYS = 62,
		SETSERIALKEYS = 63,
		GETSOUNDSENTRY = 64,
		SETSOUNDSENTRY = 65,
		GETSNAPTODEFBUTTON = 95,
		SETSNAPTODEFBUTTON = 96,
		GETMOUSEHOVERWIDTH = 98,
		SETMOUSEHOVERWIDTH = 99,
		GETMOUSEHOVERHEIGHT = 100,
		SETMOUSEHOVERHEIGHT = 101,
		GETMOUSEHOVERTIME = 102,
		SETMOUSEHOVERTIME = 103,
		GETWHEELSCROLLLINES = 104,
		SETWHEELSCROLLLINES = 105,
		GETMENUSHOWDELAY = 106,
		SETMENUSHOWDELAY = 107,
		GETWHEELSCROLLCHARS = 108,
		SETWHEELSCROLLCHARS = 109,
		GETSHOWIMEUI = 110,
		SETSHOWIMEUI = 111,
		GETMOUSESPEED = 112,
		SETMOUSESPEED = 113,
		GETSCREENSAVERRUNNING = 114,
		GETDESKWALLPAPER = 115,
		GETAUDIODESCRIPTION = 116,
		SETAUDIODESCRIPTION = 117,
		GETSCREENSAVESECURE = 118,
		SETSCREENSAVESECURE = 119,
		GETHUNGAPPTIMEOUT = 120,
		SETHUNGAPPTIMEOUT = 121,
		GETWAITTOKILLTIMEOUT = 122,
		SETWAITTOKILLTIMEOUT = 123,
		GETWAITTOKILLSERVICETIMEOUT = 124,
		SETWAITTOKILLSERVICETIMEOUT = 125,
		GETMOUSEDOCKTHRESHOLD = 126,
		SETMOUSEDOCKTHRESHOLD = 127,
		GETPENDOCKTHRESHOLD = 128,
		SETPENDOCKTHRESHOLD = 129,
		GETWINARRANGING = 130,
		SETWINARRANGING = 131,
		GETMOUSEDRAGOUTTHRESHOLD = 132,
		SETMOUSEDRAGOUTTHRESHOLD = 133,
		GETPENDRAGOUTTHRESHOLD = 134,
		SETPENDRAGOUTTHRESHOLD = 135,
		GETMOUSESIDEMOVETHRESHOLD = 136,
		SETMOUSESIDEMOVETHRESHOLD = 137,
		GETPENSIDEMOVETHRESHOLD = 138,
		SETPENSIDEMOVETHRESHOLD = 139,
		GETDRAGFROMMAXIMIZE = 140,
		SETDRAGFROMMAXIMIZE = 141,
		GETSNAPSIZING = 142,
		SETSNAPSIZING = 143,
		GETDOCKMOVING = 144,
		SETDOCKMOVING = 145,
		GETTOUCHPREDICTIONPARAMETERS = 156,
		SETTOUCHPREDICTIONPARAMETERS = 157,
		GETLOGICALDPIOVERRIDE = 158,
		SETLOGICALDPIOVERRIDE = 159,
		GETMENURECT = 162,
		SETMENURECT = 163,
		GETACTIVEWINDOWTRACKING = 4096,
		SETACTIVEWINDOWTRACKING = 4097,
		GETMENUANIMATION = 4098,
		SETMENUANIMATION = 4099,
		GETCOMBOBOXANIMATION = 4100,
		SETCOMBOBOXANIMATION = 4101,
		GETLISTBOXSMOOTHSCROLLING = 4102,
		SETLISTBOXSMOOTHSCROLLING = 4103,
		GETGRADIENTCAPTIONS = 4104,
		SETGRADIENTCAPTIONS = 4105,
		GETKEYBOARDCUES = 4106,
		SETKEYBOARDCUES = 4107,
		GETMENUUNDERLINES = 4106,
		SETMENUUNDERLINES = 4107,
		GETACTIVEWNDTRKZORDER = 4108,
		SETACTIVEWNDTRKZORDER = 4109,
		GETHOTTRACKING = 4110,
		SETHOTTRACKING = 4111,
		GETMENUFADE = 4114,
		SETMENUFADE = 4115,
		GETSELECTIONFADE = 4116,
		SETSELECTIONFADE = 4117,
		GETTOOLTIPANIMATION = 4118,
		SETTOOLTIPANIMATION = 4119,
		GETTOOLTIPFADE = 4120,
		SETTOOLTIPFADE = 4121,
		GETCURSORSHADOW = 4122,
		SETCURSORSHADOW = 4123,
		GETMOUSESONAR = 4124,
		SETMOUSESONAR = 4125,
		GETMOUSECLICKLOCK = 4126,
		SETMOUSECLICKLOCK = 4127,
		GETMOUSEVANISH = 4128,
		SETMOUSEVANISH = 4129,
		GETFLATMENU = 4130,
		SETFLATMENU = 4131,
		GETDROPSHADOW = 4132,
		SETDROPSHADOW = 4133,
		GETBLOCKSENDINPUTRESETS = 4134,
		SETBLOCKSENDINPUTRESETS = 4135,
		GETUIEFFECTS = 4158,
		SETUIEFFECTS = 4159,
		GETDISABLEOVERLAPPEDCONTENT = 4160,
		SETDISABLEOVERLAPPEDCONTENT = 4161,
		GETCLIENTAREAANIMATION = 4162,
		SETCLIENTAREAANIMATION = 4163,
		GETCLEARTYPE = 4168,
		SETCLEARTYPE = 4169,
		GETSPEECHRECOGNITION = 4170,
		SETSPEECHRECOGNITION = 4171,
		GETCARETBROWSING = 4172,
		SETCARETBROWSING = 4173,
		GETTHREADLOCALINPUTSETTINGS = 4174,
		SETTHREADLOCALINPUTSETTINGS = 4175,
		GETSYSTEMLANGUAGEBAR = 4176,
		SETSYSTEMLANGUAGEBAR = 4177,
		GETFOREGROUNDLOCKTIMEOUT = 8192,
		SETFOREGROUNDLOCKTIMEOUT = 8193,
		GETACTIVEWNDTRKTIMEOUT = 8194,
		SETACTIVEWNDTRKTIMEOUT = 8195,
		GETFOREGROUNDFLASHCOUNT = 8196,
		SETFOREGROUNDFLASHCOUNT = 8197,
		GETCARETWIDTH = 8198,
		SETCARETWIDTH = 8199,
		GETMOUSECLICKLOCKTIME = 8200,
		SETMOUSECLICKLOCKTIME = 8201,
		GETFONTSMOOTHINGTYPE = 8202,
		SETFONTSMOOTHINGTYPE = 8203,
		GETFONTSMOOTHINGCONTRAST = 8204,
		SETFONTSMOOTHINGCONTRAST = 8205,
		GETFOCUSBORDERWIDTH = 8206,
		SETFOCUSBORDERWIDTH = 8207,
		GETFOCUSBORDERHEIGHT = 8208,
		SETFOCUSBORDERHEIGHT = 8209,
		GETFONTSMOOTHINGORIENTATION = 8210,
		SETFONTSMOOTHINGORIENTATION = 8211,
		GETMINIMUMHITRADIUS = 8212,
		SETMINIMUMHITRADIUS = 8213,
		GETMESSAGEDURATION = 8214,
		SETMESSAGEDURATION = 8215,
		GETCONTACTVISUALIZATION = 8216,
		SETCONTACTVISUALIZATION = 8217,
		GETGESTUREVISUALIZATION = 8218,
		SETGESTUREVISUALIZATION = 8219,
		GETMOUSEWHEELROUTING = 8220,
		SETMOUSEWHEELROUTING = 8221,
		GETPENVISUALIZATION = 8222,
		SETPENVISUALIZATION = 8223,
		GETPENARBITRATIONTYPE = 8224,
		SETPENARBITRATIONTYPE = 8225,
		GETCARETTIMEOUT = 8226,
		SETCARETTIMEOUT = 8227,
		GETHANDEDNESS = 8228,
		SETHANDEDNESS = 8229,
	}
	[AllowDuplicates]
	public enum TRACK_POPUP_MENU_FLAGS : uint32
	{
		LEFTBUTTON = 0,
		RIGHTBUTTON = 2,
		LEFTALIGN = 0,
		CENTERALIGN = 4,
		RIGHTALIGN = 8,
		TOPALIGN = 0,
		VCENTERALIGN = 16,
		BOTTOMALIGN = 32,
		HORIZONTAL = 0,
		VERTICAL = 64,
		NONOTIFY = 128,
		RETURNCMD = 256,
		RECURSE = 1,
		HORPOSANIMATION = 1024,
		HORNEGANIMATION = 2048,
		VERPOSANIMATION = 4096,
		VERNEGANIMATION = 8192,
		NOANIMATION = 16384,
		LAYOUTRTL = 32768,
		WORKAREA = 65536,
	}
	[AllowDuplicates]
	public enum WINDOW_EX_STYLE : uint32
	{
		DLGMODALFRAME = 1,
		NOPARENTNOTIFY = 4,
		TOPMOST = 8,
		ACCEPTFILES = 16,
		TRANSPARENT = 32,
		MDICHILD = 64,
		TOOLWINDOW = 128,
		WINDOWEDGE = 256,
		CLIENTEDGE = 512,
		CONTEXTHELP = 1024,
		RIGHT = 4096,
		LEFT = 0,
		RTLREADING = 8192,
		LTRREADING = 0,
		LEFTSCROLLBAR = 16384,
		RIGHTSCROLLBAR = 0,
		CONTROLPARENT = 65536,
		STATICEDGE = 131072,
		APPWINDOW = 262144,
		OVERLAPPEDWINDOW = 768,
		PALETTEWINDOW = 392,
		LAYERED = 524288,
		NOINHERITLAYOUT = 1048576,
		NOREDIRECTIONBITMAP = 2097152,
		LAYOUTRTL = 4194304,
		COMPOSITED = 33554432,
		NOACTIVATE = 134217728,
	}
	[AllowDuplicates]
	public enum WINDOW_STYLE : uint32
	{
		OVERLAPPED = 0,
		POPUP = 2147483648,
		CHILD = 1073741824,
		MINIMIZE = 536870912,
		VISIBLE = 268435456,
		DISABLED = 134217728,
		CLIPSIBLINGS = 67108864,
		CLIPCHILDREN = 33554432,
		MAXIMIZE = 16777216,
		CAPTION = 12582912,
		BORDER = 8388608,
		DLGFRAME = 4194304,
		VSCROLL = 2097152,
		HSCROLL = 1048576,
		SYSMENU = 524288,
		THICKFRAME = 262144,
		GROUP = 131072,
		TABSTOP = 65536,
		MINIMIZEBOX = 131072,
		MAXIMIZEBOX = 65536,
		TILED = 0,
		ICONIC = 536870912,
		SIZEBOX = 262144,
		TILEDWINDOW = 13565952,
		OVERLAPPEDWINDOW = 13565952,
		POPUPWINDOW = 2156396544,
		CHILDWINDOW = 1073741824,
		ACTIVECAPTION = 1,
	}
	public enum OBJECT_IDENTIFIER : int32
	{
		WINDOW = 0,
		SYSMENU = -1,
		TITLEBAR = -2,
		MENU = -3,
		CLIENT = -4,
		VSCROLL = -5,
		HSCROLL = -6,
		SIZEGRIP = -7,
		CARET = -8,
		CURSOR = -9,
		ALERT = -10,
		SOUND = -11,
		QUERYCLASSNAMEIDX = -12,
		NATIVEOM = -16,
	}
	public enum MENU_ITEM_TYPE : uint32
	{
		BITMAP = 4,
		MENUBARBREAK = 32,
		MENUBREAK = 64,
		OWNERDRAW = 256,
		RADIOCHECK = 512,
		RIGHTJUSTIFY = 16384,
		RIGHTORDER = 8192,
		SEPARATOR = 2048,
		STRING = 0,
	}
	public enum MESSAGEBOX_RESULT : int32
	{
		IDOK = 1,
		IDCANCEL = 2,
		IDABORT = 3,
		IDRETRY = 4,
		IDIGNORE = 5,
		IDYES = 6,
		IDNO = 7,
		IDCLOSE = 8,
		IDHELP = 9,
		IDTRYAGAIN = 10,
		IDCONTINUE = 11,
		IDASYNC = 32001,
		IDTIMEOUT = 32000,
	}
	[AllowDuplicates]
	public enum MENU_ITEM_STATE : uint32
	{
		GRAYED = 3,
		DISABLED = 3,
		CHECKED = 8,
		HILITE = 128,
		ENABLED = 0,
		UNCHECKED = 0,
		UNHILITE = 0,
		DEFAULT = 4096,
	}
	public enum SCROLLBAR_CONSTANTS : uint32
	{
		CTL = 2,
		HORZ = 0,
		VERT = 1,
		BOTH = 3,
	}
	[AllowDuplicates]
	public enum GET_CLASS_LONG_INDEX : int32
	{
		GCW_ATOM = -32,
		GCL_CBCLSEXTRA = -20,
		GCL_CBWNDEXTRA = -18,
		GCL_HBRBACKGROUND = -10,
		GCL_HCURSOR = -12,
		GCL_HICON = -14,
		GCL_HICONSM = -34,
		GCL_HMODULE = -16,
		GCL_MENUNAME = -8,
		GCL_STYLE = -26,
		GCL_WNDPROC = -24,
		GCLP_HBRBACKGROUND = -10,
		GCLP_HCURSOR = -12,
		GCLP_HICON = -14,
		GCLP_HICONSM = -34,
		GCLP_HMODULE = -16,
		GCLP_MENUNAME = -8,
		GCLP_WNDPROC = -24,
	}
	public enum UPDATE_LAYERED_WINDOW_FLAGS : uint32
	{
		ALPHA = 2,
		COLORKEY = 1,
		OPAQUE = 4,
		EX_NORESIZE = 8,
	}
	[AllowDuplicates]
	public enum WINDOW_LONG_PTR_INDEX : int32
	{
		GWL_EXSTYLE = -20,
		GWLP_HINSTANCE = -6,
		GWLP_HWNDPARENT = -8,
		GWLP_ID = -12,
		GWL_STYLE = -16,
		GWLP_USERDATA = -21,
		GWLP_WNDPROC = -4,
		GWL_HINSTANCE = -6,
		GWL_ID = -12,
		GWL_USERDATA = -21,
		GWL_WNDPROC = -4,
		GWL_HWNDPARENT = -8,
	}
	public enum ANIMATE_WINDOW_FLAGS : uint32
	{
		ACTIVATE = 131072,
		BLEND = 524288,
		CENTER = 16,
		HIDE = 65536,
		HOR_POSITIVE = 1,
		HOR_NEGATIVE = 2,
		SLIDE = 262144,
		VER_POSITIVE = 4,
		VER_NEGATIVE = 8,
	}
	public enum CHANGE_WINDOW_MESSAGE_FILTER_FLAGS : uint32
	{
		ADD = 1,
		REMOVE = 2,
	}
	public enum GDI_IMAGE_TYPE : uint32
	{
		BITMAP = 0,
		CURSOR = 2,
		ICON = 1,
	}
	public enum WINDOWS_HOOK_ID : int32
	{
		CALLWNDPROC = 4,
		CALLWNDPROCRET = 12,
		CBT = 5,
		DEBUG = 9,
		FOREGROUNDIDLE = 11,
		GETMESSAGE = 3,
		JOURNALPLAYBACK = 1,
		JOURNALRECORD = 0,
		KEYBOARD = 2,
		KEYBOARD_LL = 13,
		MOUSE = 7,
		MOUSE_LL = 14,
		MSGFILTER = -1,
		SHELL = 10,
		SYSMSGFILTER = 6,
	}
	public enum IMAGE_FLAGS : uint32
	{
		CREATEDIBSECTION = 8192,
		DEFAULTCOLOR = 0,
		DEFAULTSIZE = 64,
		LOADFROMFILE = 16,
		LOADMAP3DCOLORS = 4096,
		LOADTRANSPARENT = 32,
		MONOCHROME = 1,
		SHARED = 32768,
		VGACOLOR = 128,
		COPYDELETEORG = 8,
		COPYFROMRESOURCE = 16384,
		COPYRETURNORG = 4,
	}
	[AllowDuplicates]
	public enum SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS : uint32
	{
		UPDATEINIFILE = 1,
		SENDCHANGE = 2,
		SENDWININICHANGE = 2,
	}
	[AllowDuplicates]
	public enum SET_WINDOW_POS_FLAGS : uint32
	{
		SWP_ASYNCWINDOWPOS = 16384,
		SWP_DEFERERASE = 8192,
		SWP_DRAWFRAME = 32,
		SWP_FRAMECHANGED = 32,
		SWP_HIDEWINDOW = 128,
		SWP_NOACTIVATE = 16,
		SWP_NOCOPYBITS = 256,
		SWP_NOMOVE = 2,
		SWP_NOOWNERZORDER = 512,
		SWP_NOREDRAW = 8,
		SWP_NOREPOSITION = 512,
		SWP_NOSENDCHANGING = 1024,
		SWP_NOSIZE = 1,
		SWP_NOZORDER = 4,
		SWP_SHOWWINDOW = 64,
		SWP__NOOWNERZORDER = 512,
	}
	public enum MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS : uint32
	{
		NONE = 0,
		ALERTABLE = 2,
		INPUTAVAILABLE = 4,
		WAITALL = 1,
	}
	public enum QUEUE_STATUS_FLAGS : uint32
	{
		ALLEVENTS = 1215,
		ALLINPUT = 1279,
		ALLPOSTMESSAGE = 256,
		HOTKEY = 128,
		INPUT = 1031,
		KEY = 1,
		MOUSE = 6,
		MOUSEBUTTON = 4,
		MOUSEMOVE = 2,
		PAINT = 32,
		POSTMESSAGE = 8,
		RAWINPUT = 1024,
		SENDMESSAGE = 64,
		TIMER = 16,
	}
	public enum SYSTEM_CURSOR_ID : uint32
	{
		APPSTARTING = 32650,
		NORMAL = 32512,
		CROSS = 32515,
		HAND = 32649,
		HELP = 32651,
		IBEAM = 32513,
		NO = 32648,
		SIZEALL = 32646,
		SIZENESW = 32643,
		SIZENS = 32645,
		SIZENWSE = 32642,
		SIZEWE = 32644,
		UP = 32516,
		WAIT = 32514,
	}
	public enum LAYERED_WINDOW_ATTRIBUTES_FLAGS : uint32
	{
		ALPHA = 2,
		COLORKEY = 1,
	}
	public enum SEND_MESSAGE_TIMEOUT_FLAGS : uint32
	{
		ABORTIFHUNG = 2,
		BLOCK = 1,
		NORMAL = 0,
		NOTIMEOUTIFNOTHUNG = 8,
		ERRORONEXIT = 32,
	}
	public enum PEEK_MESSAGE_REMOVE_TYPE : uint32
	{
		NOREMOVE = 0,
		REMOVE = 1,
		NOYIELD = 2,
		QS_INPUT = 67567616,
		QS_POSTMESSAGE = 9961472,
		QS_PAINT = 2097152,
		QS_SENDMESSAGE = 4194304,
	}
	[AllowDuplicates]
	public enum SYS_COLOR_INDEX : uint32
	{
		COLOR_3DDKSHADOW = 21,
		COLOR_3DFACE = 15,
		COLOR_3DHIGHLIGHT = 20,
		COLOR_3DHILIGHT = 20,
		COLOR_3DLIGHT = 22,
		COLOR_3DSHADOW = 16,
		COLOR_ACTIVEBORDER = 10,
		COLOR_ACTIVECAPTION = 2,
		COLOR_APPWORKSPACE = 12,
		COLOR_BACKGROUND = 1,
		COLOR_BTNFACE = 15,
		_COLOR_BTNHIGHLIGHT = 20,
		_COLOR_BTNHILIGHT = 20,
		COLOR_BTNSHADOW = 16,
		COLOR_BTNTEXT = 18,
		COLOR_CAPTIONTEXT = 9,
		COLOR_DESKTOP = 1,
		COLOR_GRADIENTACTIVECAPTION = 27,
		COLOR_GRADIENTINACTIVECAPTION = 28,
		COLOR_GRAYTEXT = 17,
		COLOR_HIGHLIGHT = 13,
		COLOR_HIGHLIGHTTEXT = 14,
		COLOR_HOTLIGHT = 26,
		COLOR_INACTIVEBORDER = 11,
		COLOR_INACTIVECAPTION = 3,
		COLOR_INACTIVECAPTIONTEXT = 19,
		COLOR_INFOBK = 24,
		COLOR_INFOTEXT = 23,
		COLOR_MENU = 4,
		COLOR_MENUHILIGHT = 29,
		COLOR_MENUBAR = 30,
		COLOR_MENUTEXT = 7,
		COLOR_SCROLLBAR = 0,
		COLOR_WINDOW = 5,
		COLOR_WINDOWFRAME = 6,
		COLOR_WINDOWTEXT = 8,
	}
	public enum GET_WINDOW_CMD : uint32
	{
		CHILD = 5,
		ENABLEDPOPUP = 6,
		HWNDFIRST = 0,
		HWNDLAST = 1,
		HWNDNEXT = 2,
		HWNDPREV = 3,
		OWNER = 4,
	}
	[AllowDuplicates]
	public enum SYSTEM_METRICS_INDEX : uint32
	{
		ARRANGE = 56,
		CLEANBOOT = 67,
		CMONITORS = 80,
		CMOUSEBUTTONS = 43,
		CONVERTIBLESLATEMODE = 8195,
		CXBORDER = 5,
		CXCURSOR = 13,
		CXDLGFRAME = 7,
		CXDOUBLECLK = 36,
		CXDRAG = 68,
		CXEDGE = 45,
		CXFIXEDFRAME = 7,
		CXFOCUSBORDER = 83,
		CXFRAME = 32,
		CXFULLSCREEN = 16,
		CXHSCROLL = 21,
		CXHTHUMB = 10,
		CXICON = 11,
		CXICONSPACING = 38,
		CXMAXIMIZED = 61,
		CXMAXTRACK = 59,
		CXMENUCHECK = 71,
		CXMENUSIZE = 54,
		CXMIN = 28,
		CXMINIMIZED = 57,
		CXMINSPACING = 47,
		CXMINTRACK = 34,
		CXPADDEDBORDER = 92,
		CXSCREEN = 0,
		CXSIZE = 30,
		CXSIZEFRAME = 32,
		CXSMICON = 49,
		CXSMSIZE = 52,
		CXVIRTUALSCREEN = 78,
		CXVSCROLL = 2,
		CYBORDER = 6,
		CYCAPTION = 4,
		CYCURSOR = 14,
		CYDLGFRAME = 8,
		CYDOUBLECLK = 37,
		CYDRAG = 69,
		CYEDGE = 46,
		CYFIXEDFRAME = 8,
		CYFOCUSBORDER = 84,
		CYFRAME = 33,
		CYFULLSCREEN = 17,
		CYHSCROLL = 3,
		CYICON = 12,
		CYICONSPACING = 39,
		CYKANJIWINDOW = 18,
		CYMAXIMIZED = 62,
		CYMAXTRACK = 60,
		CYMENU = 15,
		CYMENUCHECK = 72,
		CYMENUSIZE = 55,
		CYMIN = 29,
		CYMINIMIZED = 58,
		CYMINSPACING = 48,
		CYMINTRACK = 35,
		CYSCREEN = 1,
		CYSIZE = 31,
		CYSIZEFRAME = 33,
		CYSMCAPTION = 51,
		CYSMICON = 50,
		CYSMSIZE = 53,
		CYVIRTUALSCREEN = 79,
		CYVSCROLL = 20,
		CYVTHUMB = 9,
		DBCSENABLED = 42,
		DEBUG = 22,
		DIGITIZER = 94,
		IMMENABLED = 82,
		MAXIMUMTOUCHES = 95,
		MEDIACENTER = 87,
		MENUDROPALIGNMENT = 40,
		MIDEASTENABLED = 74,
		MOUSEPRESENT = 19,
		MOUSEHORIZONTALWHEELPRESENT = 91,
		MOUSEWHEELPRESENT = 75,
		NETWORK = 63,
		PENWINDOWS = 41,
		REMOTECONTROL = 8193,
		REMOTESESSION = 4096,
		SAMEDISPLAYFORMAT = 81,
		SECURE = 44,
		SERVERR2 = 89,
		SHOWSOUNDS = 70,
		SHUTTINGDOWN = 8192,
		SLOWMACHINE = 73,
		STARTER = 88,
		SWAPBUTTON = 23,
		SYSTEMDOCKED_ = 8196,
		TABLETPC = 86,
		XVIRTUALSCREEN = 76,
		YVIRTUALSCREEN = 77,
	}
	public enum GET_ANCESTOR_FLAGS : uint32
	{
		PARENT = 1,
		ROOT = 2,
		ROOTOWNER = 3,
	}
	public enum TILE_WINDOWS_HOW : uint32
	{
		HORIZONTAL = 1,
		VERTICAL = 0,
	}
	public enum WINDOW_DISPLAY_AFFINITY : uint32
	{
		NONE = 0,
		MONITOR = 1,
		EXCLUDEFROMCAPTURE = 17,
	}
	public enum FOREGROUND_WINDOW_LOCK_CODE : uint32
	{
		LOCK = 1,
		UNLOCK = 2,
	}
	public enum CASCADE_WINDOWS_HOW : uint32
	{
		SKIPDISABLED = 2,
		ZORDER = 4,
	}
	public enum WINDOW_MESSAGE_FILTER_ACTION : uint32
	{
		ALLOW = 1,
		DISALLOW = 2,
		RESET = 0,
	}
	public enum GET_MENU_DEFAULT_ITEM_FLAGS : uint32
	{
		GOINTOPOPUPS = 2,
		USEDISABLED = 1,
	}
	public enum MSGFLTINFO_STATUS : uint32
	{
		NONE = 0,
		ALLOWED_HIGHER = 3,
		ALREADYALLOWED_FORWND = 1,
		ALREADYDISALLOWED_FORWND = 2,
	}
	public enum MOUSEHOOKSTRUCTEX_MOUSE_DATA : uint32
	{
		XBUTTON1 = 1,
		XBUTTON2 = 2,
	}
	public enum MENU_ITEM_MASK : uint32
	{
		BITMAP = 128,
		CHECKMARKS = 8,
		DATA = 32,
		FTYPE = 256,
		ID = 2,
		STATE = 1,
		STRING = 64,
		SUBMENU = 4,
		TYPE = 16,
	}
	public enum FLASHWINFO_FLAGS : uint32
	{
		ALL = 3,
		CAPTION = 1,
		STOP = 0,
		TIMER = 4,
		TIMERNOFG = 12,
		TRAY = 2,
	}
	public enum CURSORINFO_FLAGS : uint32
	{
		SHOWING = 1,
		SUPPRESSED = 2,
	}
	public enum MENUINFO_STYLE : uint32
	{
		AUTODISMISS = 268435456,
		CHECKORBMP = 67108864,
		DRAGDROP = 536870912,
		MODELESS = 1073741824,
		NOCHECK = 2147483648,
		NOTIFYBYPOS = 134217728,
	}
	public enum WINDOWPLACEMENT_FLAGS : uint32
	{
		ASYNCWINDOWPLACEMENT = 4,
		RESTORETOMAXIMIZED = 2,
		SETMINPOSITION = 1,
	}
	public enum MENUINFO_MASK : uint32
	{
		APPLYTOSUBMENUS = 2147483648,
		BACKGROUND = 2,
		HELPID = 4,
		MAXHEIGHT = 1,
		MENUDATA = 8,
		STYLE = 16,
	}
	public enum MINIMIZEDMETRICS_ARRANGE : int32
	{
		BOTTOMLEFT = 0,
		BOTTOMRIGHT = 1,
		TOPLEFT = 2,
		TOPRIGHT = 3,
	}
	public enum SCROLLINFO_MASK : uint32
	{
		ALL = 23,
		DISABLENOSCROLL = 8,
		PAGE = 2,
		POS = 4,
		RANGE = 1,
		TRACKPOS = 16,
	}
	public enum MENUGETOBJECTINFO_FLAGS : uint32
	{
		BOTTOMGAP = 2,
		TOPGAP = 1,
	}
	public enum GUITHREADINFO_FLAGS : uint32
	{
		CARETBLINKING = 1,
		INMENUMODE = 4,
		INMOVESIZE = 2,
		POPUPMENUMODE = 16,
		SYSTEMMENUMODE = 8,
	}
	public enum KBDLLHOOKSTRUCT_FLAGS : uint32
	{
		EXTENDED = 1,
		ALTDOWN = 32,
		UP = 128,
		INJECTED = 16,
		LOWER_IL_INJECTED = 2,
	}
	public enum DI_FLAGS : uint32
	{
		MASK = 1,
		IMAGE = 2,
		NORMAL = 3,
		COMPAT = 4,
		DEFAULTSIZE = 8,
		NOMIRROR = 16,
	}
	public enum POINTER_INPUT_TYPE : int32
	{
		POINTER = 1,
		TOUCH = 2,
		PEN = 3,
		MOUSE = 4,
		TOUCHPAD = 5,
	}
	public enum EDIT_CONTROL_FEATURE : int32
	{
		ENTERPRISE_DATA_PROTECTION_PASTE_SUPPORT = 0,
		PASTE_NOTIFICATIONS = 1,
	}
	public enum HANDEDNESS : int32
	{
		LEFT = 0,
		RIGHT = 1,
	}
	public enum MrmPlatformVersion : int32
	{
		Default = 0,
		Windows10_0_0_0 = 17432576,
		Windows10_0_0_5 = 17432581,
	}
	public enum MrmPackagingMode : int32
	{
		StandaloneFile = 0,
		AutoSplit = 1,
		ResourcePack = 2,
	}
	public enum MrmPackagingOptions : int32
	{
		None = 0,
		OmitSchemaFromResourcePacks = 1,
		SplitLanguageVariants = 2,
	}
	public enum MrmDumpType : int32
	{
		Basic = 0,
		Detailed = 1,
		Schema = 2,
	}
	public enum MrmResourceIndexerMessageSeverity : int32
	{
		Verbose = 0,
		Info = 1,
		Warning = 2,
		Error = 3,
	}
	public enum MrmIndexerFlags : int32
	{
		None = 0,
		AutoMerge = 1,
		CreateContentChecksum = 2,
	}
	#endregion
	
	#region Function pointers
	public function LRESULT WNDPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
	public function int DLGPROC(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
	public function void TIMERPROC(HWND param0, uint32 param1, uint param2, uint32 param3);
	public function BOOL WNDENUMPROC(HWND param0, LPARAM param1);
	public function LRESULT HOOKPROC(int32 code, WPARAM wParam, LPARAM lParam);
	public function void SENDASYNCPROC(HWND param0, uint32 param1, uint param2, LRESULT param3);
	public function BOOL PROPENUMPROCA(HWND param0, PSTR param1, HANDLE param2);
	public function BOOL PROPENUMPROCW(HWND param0, PWSTR param1, HANDLE param2);
	public function BOOL PROPENUMPROCEXA(HWND param0, PSTR param1, HANDLE param2, uint param3);
	public function BOOL PROPENUMPROCEXW(HWND param0, PWSTR param1, HANDLE param2, uint param3);
	public function BOOL NAMEENUMPROCA(PSTR param0, LPARAM param1);
	public function BOOL NAMEENUMPROCW(PWSTR param0, LPARAM param1);
	public function BOOLEAN PREGISTERCLASSNAMEW(PWSTR param0);
	public function void MSGBOXCALLBACK(out HELPINFO lpHelpInfo);
	#endregion
	
	#region Structs
	[CRepr]
	public struct MESSAGE_RESOURCE_ENTRY
	{
		public uint16 Length;
		public uint16 Flags;
		public uint8[1] Text_array;
		
		public uint8* Text mut => &Text_array[0];
	}
	[CRepr]
	public struct MESSAGE_RESOURCE_BLOCK
	{
		public uint32 LowId;
		public uint32 HighId;
		public uint32 OffsetToEntries;
	}
	[CRepr]
	public struct MESSAGE_RESOURCE_DATA
	{
		public uint32 NumberOfBlocks;
		public MESSAGE_RESOURCE_BLOCK[1] Blocks_array;
		
		public MESSAGE_RESOURCE_BLOCK* Blocks mut => &Blocks_array[0];
	}
	[CRepr]
	public struct CBT_CREATEWNDA
	{
		public CREATESTRUCTA* lpcs;
		public HWND hwndInsertAfter;
	}
	[CRepr]
	public struct CBT_CREATEWNDW
	{
		public CREATESTRUCTW* lpcs;
		public HWND hwndInsertAfter;
	}
	[CRepr]
	public struct CBTACTIVATESTRUCT
	{
		public BOOL fMouse;
		public HWND hWndActive;
	}
	[CRepr]
	public struct SHELLHOOKINFO
	{
		public HWND hwnd;
		public RECT rc;
	}
	[CRepr]
	public struct EVENTMSG
	{
		public uint32 message;
		public uint32 paramL;
		public uint32 paramH;
		public uint32 time;
		public HWND hwnd;
	}
	[CRepr]
	public struct CWPSTRUCT
	{
		public LPARAM lParam;
		public WPARAM wParam;
		public uint32 message;
		public HWND hwnd;
	}
	[CRepr]
	public struct CWPRETSTRUCT
	{
		public LRESULT lResult;
		public LPARAM lParam;
		public WPARAM wParam;
		public uint32 message;
		public HWND hwnd;
	}
	[CRepr]
	public struct KBDLLHOOKSTRUCT
	{
		public uint32 vkCode;
		public uint32 scanCode;
		public KBDLLHOOKSTRUCT_FLAGS flags;
		public uint32 time;
		public uint dwExtraInfo;
	}
	[CRepr]
	public struct MSLLHOOKSTRUCT
	{
		public POINT pt;
		public MOUSEHOOKSTRUCTEX_MOUSE_DATA mouseData;
		public uint32 flags;
		public uint32 time;
		public uint dwExtraInfo;
	}
	[CRepr]
	public struct DEBUGHOOKINFO
	{
		public uint32 idThread;
		public uint32 idThreadInstaller;
		public LPARAM lParam;
		public WPARAM wParam;
		public int32 code;
	}
	[CRepr]
	public struct MOUSEHOOKSTRUCT
	{
		public POINT pt;
		public HWND hwnd;
		public uint32 wHitTestCode;
		public uint dwExtraInfo;
	}
	[CRepr]
	public struct MOUSEHOOKSTRUCTEX
	{
		public MOUSEHOOKSTRUCT __AnonymousBase_winuser_L1166_C46;
		public MOUSEHOOKSTRUCTEX_MOUSE_DATA mouseData;
	}
	[CRepr]
	public struct HARDWAREHOOKSTRUCT
	{
		public HWND hwnd;
		public uint32 message;
		public WPARAM wParam;
		public LPARAM lParam;
	}
	[CRepr]
	public struct WNDCLASSEXA
	{
		public uint32 cbSize;
		public WNDCLASS_STYLES style;
		public WNDPROC lpfnWndProc;
		public int32 cbClsExtra;
		public int32 cbWndExtra;
		public HINSTANCE hInstance;
		public HICON hIcon;
		public HCURSOR hCursor;
		public HBRUSH hbrBackground;
		public PSTR lpszMenuName;
		public PSTR lpszClassName;
		public HICON hIconSm;
	}
	[CRepr]
	public struct WNDCLASSEXW
	{
		public uint32 cbSize;
		public WNDCLASS_STYLES style;
		public WNDPROC lpfnWndProc;
		public int32 cbClsExtra;
		public int32 cbWndExtra;
		public HINSTANCE hInstance;
		public HICON hIcon;
		public HCURSOR hCursor;
		public HBRUSH hbrBackground;
		public PWSTR lpszMenuName;
		public PWSTR lpszClassName;
		public HICON hIconSm;
	}
	[CRepr]
	public struct WNDCLASSA
	{
		public WNDCLASS_STYLES style;
		public WNDPROC lpfnWndProc;
		public int32 cbClsExtra;
		public int32 cbWndExtra;
		public HINSTANCE hInstance;
		public HICON hIcon;
		public HCURSOR hCursor;
		public HBRUSH hbrBackground;
		public PSTR lpszMenuName;
		public PSTR lpszClassName;
	}
	[CRepr]
	public struct WNDCLASSW
	{
		public WNDCLASS_STYLES style;
		public WNDPROC lpfnWndProc;
		public int32 cbClsExtra;
		public int32 cbWndExtra;
		public HINSTANCE hInstance;
		public HICON hIcon;
		public HCURSOR hCursor;
		public HBRUSH hbrBackground;
		public PWSTR lpszMenuName;
		public PWSTR lpszClassName;
	}
	[CRepr]
	public struct MSG
	{
		public HWND hwnd;
		public uint32 message;
		public WPARAM wParam;
		public LPARAM lParam;
		public uint32 time;
		public POINT pt;
	}
	[CRepr]
	public struct MINMAXINFO
	{
		public POINT ptReserved;
		public POINT ptMaxSize;
		public POINT ptMaxPosition;
		public POINT ptMinTrackSize;
		public POINT ptMaxTrackSize;
	}
	[CRepr]
	public struct MDINEXTMENU
	{
		public HMENU hmenuIn;
		public HMENU hmenuNext;
		public HWND hwndNext;
	}
	[CRepr]
	public struct WINDOWPOS
	{
		public HWND hwnd;
		public HWND hwndInsertAfter;
		public int32 x;
		public int32 y;
		public int32 cx;
		public int32 cy;
		public SET_WINDOW_POS_FLAGS flags;
	}
	[CRepr]
	public struct NCCALCSIZE_PARAMS
	{
		public RECT[3] rgrc;
		public WINDOWPOS* lppos;
	}
	[CRepr]
	public struct ACCEL
	{
		public uint8 fVirt;
		public uint16 key;
		public uint16 cmd;
	}
	[CRepr]
	public struct CREATESTRUCTA
	{
		public void* lpCreateParams;
		public HINSTANCE hInstance;
		public HMENU hMenu;
		public HWND hwndParent;
		public int32 cy;
		public int32 cx;
		public int32 y;
		public int32 x;
		public int32 style;
		public PSTR lpszName;
		public PSTR lpszClass;
		public uint32 dwExStyle;
	}
	[CRepr]
	public struct CREATESTRUCTW
	{
		public void* lpCreateParams;
		public HINSTANCE hInstance;
		public HMENU hMenu;
		public HWND hwndParent;
		public int32 cy;
		public int32 cx;
		public int32 y;
		public int32 x;
		public int32 style;
		public PWSTR lpszName;
		public PWSTR lpszClass;
		public uint32 dwExStyle;
	}
	[CRepr]
	public struct WINDOWPLACEMENT
	{
		public uint32 length;
		public WINDOWPLACEMENT_FLAGS flags;
		public SHOW_WINDOW_CMD showCmd;
		public POINT ptMinPosition;
		public POINT ptMaxPosition;
		public RECT rcNormalPosition;
	}
	[CRepr]
	public struct STYLESTRUCT
	{
		public uint32 styleOld;
		public uint32 styleNew;
	}
	[CRepr]
	public struct UPDATELAYEREDWINDOWINFO
	{
		public uint32 cbSize;
		public HDC hdcDst;
		public POINT* pptDst;
		public SIZE* psize;
		public HDC hdcSrc;
		public POINT* pptSrc;
		public uint32 crKey;
		public BLENDFUNCTION* pblend;
		public UPDATE_LAYERED_WINDOW_FLAGS dwFlags;
		public RECT* prcDirty;
	}
	[CRepr]
	public struct FLASHWINFO
	{
		public uint32 cbSize;
		public HWND hwnd;
		public FLASHWINFO_FLAGS dwFlags;
		public uint32 uCount;
		public uint32 dwTimeout;
	}
	[CRepr, Packed(2)]
	public struct DLGTEMPLATE
	{
		public uint32 style;
		public uint32 dwExtendedStyle;
		public uint16 cdit;
		public int16 x;
		public int16 y;
		public int16 cx;
		public int16 cy;
	}
	[CRepr, Packed(2)]
	public struct DLGITEMTEMPLATE
	{
		public uint32 style;
		public uint32 dwExtendedStyle;
		public int16 x;
		public int16 y;
		public int16 cx;
		public int16 cy;
		public uint16 id;
	}
	[CRepr]
	public struct TPMPARAMS
	{
		public uint32 cbSize;
		public RECT rcExclude;
	}
	[CRepr]
	public struct MENUINFO
	{
		public uint32 cbSize;
		public MENUINFO_MASK fMask;
		public MENUINFO_STYLE dwStyle;
		public uint32 cyMax;
		public HBRUSH hbrBack;
		public uint32 dwContextHelpID;
		public uint dwMenuData;
	}
	[CRepr]
	public struct MENUGETOBJECTINFO
	{
		public MENUGETOBJECTINFO_FLAGS dwFlags;
		public uint32 uPos;
		public HMENU hmenu;
		public void* riid;
		public void* pvObj;
	}
	[CRepr]
	public struct MENUITEMINFOA
	{
		public uint32 cbSize;
		public MENU_ITEM_MASK fMask;
		public MENU_ITEM_TYPE fType;
		public MENU_ITEM_STATE fState;
		public uint32 wID;
		public HMENU hSubMenu;
		public HBITMAP hbmpChecked;
		public HBITMAP hbmpUnchecked;
		public uint dwItemData;
		public PSTR dwTypeData;
		public uint32 cch;
		public HBITMAP hbmpItem;
	}
	[CRepr]
	public struct MENUITEMINFOW
	{
		public uint32 cbSize;
		public MENU_ITEM_MASK fMask;
		public MENU_ITEM_TYPE fType;
		public MENU_ITEM_STATE fState;
		public uint32 wID;
		public HMENU hSubMenu;
		public HBITMAP hbmpChecked;
		public HBITMAP hbmpUnchecked;
		public uint dwItemData;
		public PWSTR dwTypeData;
		public uint32 cch;
		public HBITMAP hbmpItem;
	}
	[CRepr]
	public struct DROPSTRUCT
	{
		public HWND hwndSource;
		public HWND hwndSink;
		public uint32 wFmt;
		public uint dwData;
		public POINT ptDrop;
		public uint32 dwControlData;
	}
	[CRepr]
	public struct MSGBOXPARAMSA
	{
		public uint32 cbSize;
		public HWND hwndOwner;
		public HINSTANCE hInstance;
		public PSTR lpszText;
		public PSTR lpszCaption;
		public MESSAGEBOX_STYLE dwStyle;
		public PSTR lpszIcon;
		public uint dwContextHelpId;
		public MSGBOXCALLBACK lpfnMsgBoxCallback;
		public uint32 dwLanguageId;
	}
	[CRepr]
	public struct MSGBOXPARAMSW
	{
		public uint32 cbSize;
		public HWND hwndOwner;
		public HINSTANCE hInstance;
		public PWSTR lpszText;
		public PWSTR lpszCaption;
		public MESSAGEBOX_STYLE dwStyle;
		public PWSTR lpszIcon;
		public uint dwContextHelpId;
		public MSGBOXCALLBACK lpfnMsgBoxCallback;
		public uint32 dwLanguageId;
	}
	[CRepr]
	public struct MENUITEMTEMPLATEHEADER
	{
		public uint16 versionNumber;
		public uint16 offset;
	}
	[CRepr]
	public struct MENUITEMTEMPLATE
	{
		public uint16 mtOption;
		public uint16 mtID;
		public char16[1] mtString_array;
		
		public char16* mtString mut => &mtString_array[0];
	}
	[CRepr]
	public struct ICONINFO
	{
		public BOOL fIcon;
		public uint32 xHotspot;
		public uint32 yHotspot;
		public HBITMAP hbmMask;
		public HBITMAP hbmColor;
	}
	[CRepr]
	public struct CURSORSHAPE
	{
		public int32 xHotSpot;
		public int32 yHotSpot;
		public int32 cx;
		public int32 cy;
		public int32 cbWidth;
		public uint8 Planes;
		public uint8 BitsPixel;
	}
	[CRepr]
	public struct ICONINFOEXA
	{
		public uint32 cbSize;
		public BOOL fIcon;
		public uint32 xHotspot;
		public uint32 yHotspot;
		public HBITMAP hbmMask;
		public HBITMAP hbmColor;
		public uint16 wResID;
		public CHAR[260] szModName;
		public CHAR[260] szResName;
	}
	[CRepr]
	public struct ICONINFOEXW
	{
		public uint32 cbSize;
		public BOOL fIcon;
		public uint32 xHotspot;
		public uint32 yHotspot;
		public HBITMAP hbmMask;
		public HBITMAP hbmColor;
		public uint16 wResID;
		public char16[260] szModName;
		public char16[260] szResName;
	}
	[CRepr]
	public struct SCROLLINFO
	{
		public uint32 cbSize;
		public SCROLLINFO_MASK fMask;
		public int32 nMin;
		public int32 nMax;
		public uint32 nPage;
		public int32 nPos;
		public int32 nTrackPos;
	}
	[CRepr]
	public struct MDICREATESTRUCTA
	{
		public PSTR szClass;
		public PSTR szTitle;
		public HANDLE hOwner;
		public int32 x;
		public int32 y;
		public int32 cx;
		public int32 cy;
		public WINDOW_STYLE style;
		public LPARAM lParam;
	}
	[CRepr]
	public struct MDICREATESTRUCTW
	{
		public PWSTR szClass;
		public PWSTR szTitle;
		public HANDLE hOwner;
		public int32 x;
		public int32 y;
		public int32 cx;
		public int32 cy;
		public WINDOW_STYLE style;
		public LPARAM lParam;
	}
	[CRepr]
	public struct CLIENTCREATESTRUCT
	{
		public HANDLE hWindowMenu;
		public uint32 idFirstChild;
	}
	[CRepr]
	public struct TouchPredictionParameters
	{
		public uint32 cbSize;
		public uint32 dwLatency;
		public uint32 dwSampleTime;
		public uint32 bUseHWTimeStamp;
	}
	[CRepr]
	public struct NONCLIENTMETRICSA
	{
		public uint32 cbSize;
		public int32 iBorderWidth;
		public int32 iScrollWidth;
		public int32 iScrollHeight;
		public int32 iCaptionWidth;
		public int32 iCaptionHeight;
		public LOGFONTA lfCaptionFont;
		public int32 iSmCaptionWidth;
		public int32 iSmCaptionHeight;
		public LOGFONTA lfSmCaptionFont;
		public int32 iMenuWidth;
		public int32 iMenuHeight;
		public LOGFONTA lfMenuFont;
		public LOGFONTA lfStatusFont;
		public LOGFONTA lfMessageFont;
		public int32 iPaddedBorderWidth;
	}
	[CRepr]
	public struct NONCLIENTMETRICSW
	{
		public uint32 cbSize;
		public int32 iBorderWidth;
		public int32 iScrollWidth;
		public int32 iScrollHeight;
		public int32 iCaptionWidth;
		public int32 iCaptionHeight;
		public LOGFONTW lfCaptionFont;
		public int32 iSmCaptionWidth;
		public int32 iSmCaptionHeight;
		public LOGFONTW lfSmCaptionFont;
		public int32 iMenuWidth;
		public int32 iMenuHeight;
		public LOGFONTW lfMenuFont;
		public LOGFONTW lfStatusFont;
		public LOGFONTW lfMessageFont;
		public int32 iPaddedBorderWidth;
	}
	[CRepr]
	public struct MINIMIZEDMETRICS
	{
		public uint32 cbSize;
		public int32 iWidth;
		public int32 iHorzGap;
		public int32 iVertGap;
		public MINIMIZEDMETRICS_ARRANGE iArrange;
	}
	[CRepr]
	public struct ICONMETRICSA
	{
		public uint32 cbSize;
		public int32 iHorzSpacing;
		public int32 iVertSpacing;
		public int32 iTitleWrap;
		public LOGFONTA lfFont;
	}
	[CRepr]
	public struct ICONMETRICSW
	{
		public uint32 cbSize;
		public int32 iHorzSpacing;
		public int32 iVertSpacing;
		public int32 iTitleWrap;
		public LOGFONTW lfFont;
	}
	[CRepr]
	public struct ANIMATIONINFO
	{
		public uint32 cbSize;
		public int32 iMinAnimate;
	}
	[CRepr]
	public struct AUDIODESCRIPTION
	{
		public uint32 cbSize;
		public BOOL Enabled;
		public uint32 Locale;
	}
	[CRepr]
	public struct GUITHREADINFO
	{
		public uint32 cbSize;
		public GUITHREADINFO_FLAGS flags;
		public HWND hwndActive;
		public HWND hwndFocus;
		public HWND hwndCapture;
		public HWND hwndMenuOwner;
		public HWND hwndMoveSize;
		public HWND hwndCaret;
		public RECT rcCaret;
	}
	[CRepr]
	public struct CURSORINFO
	{
		public uint32 cbSize;
		public CURSORINFO_FLAGS flags;
		public HCURSOR hCursor;
		public POINT ptScreenPos;
	}
	[CRepr]
	public struct WINDOWINFO
	{
		public uint32 cbSize;
		public RECT rcWindow;
		public RECT rcClient;
		public uint32 dwStyle;
		public uint32 dwExStyle;
		public uint32 dwWindowStatus;
		public uint32 cxWindowBorders;
		public uint32 cyWindowBorders;
		public uint16 atomWindowType;
		public uint16 wCreatorVersion;
	}
	[CRepr]
	public struct TITLEBARINFO
	{
		public uint32 cbSize;
		public RECT rcTitleBar;
		public uint32[6] rgstate;
	}
	[CRepr]
	public struct TITLEBARINFOEX
	{
		public uint32 cbSize;
		public RECT rcTitleBar;
		public uint32[6] rgstate;
		public RECT[6] rgrect;
	}
	[CRepr]
	public struct MENUBARINFO
	{
		public uint32 cbSize;
		public RECT rcBar;
		public HMENU hMenu;
		public HWND hwndMenu;
		public int32 _bitfield;
	}
	[CRepr]
	public struct SCROLLBARINFO
	{
		public uint32 cbSize;
		public RECT rcScrollBar;
		public int32 dxyLineButton;
		public int32 xyThumbTop;
		public int32 xyThumbBottom;
		public int32 reserved;
		public uint32[6] rgstate;
	}
	[CRepr]
	public struct ALTTABINFO
	{
		public uint32 cbSize;
		public int32 cItems;
		public int32 cColumns;
		public int32 cRows;
		public int32 iColFocus;
		public int32 iRowFocus;
		public int32 cxItem;
		public int32 cyItem;
		public POINT ptStart;
	}
	[CRepr]
	public struct CHANGEFILTERSTRUCT
	{
		public uint32 cbSize;
		public MSGFLTINFO_STATUS ExtStatus;
	}
	[CRepr]
	public struct IndexedResourceQualifier
	{
		public PWSTR name;
		public PWSTR value;
	}
	[CRepr]
	public struct MrmResourceIndexerHandle
	{
		public void* handle;
	}
	[CRepr]
	public struct MrmResourceIndexerMessage
	{
		public MrmResourceIndexerMessageSeverity severity;
		public uint32 id;
		public PWSTR text;
	}
	#endregion
	
	#region Functions
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LoadStringA(HINSTANCE hInstance, uint32 uID, uint8* lpBuffer, int32 cchBufferMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LoadStringW(HINSTANCE hInstance, uint32 uID, char16* lpBuffer, int32 cchBufferMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wvsprintfA(PSTR param0, PSTR param1, ref int8 arglist);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wvsprintfW(PWSTR param0, PWSTR param1, ref int8 arglist);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wsprintfA(PSTR param0, PSTR param1);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wsprintfW(PWSTR param0, PWSTR param1);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsHungAppWindow(HWND hwnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void DisableProcessWindowsGhosting();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterWindowMessageA(PSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterWindowMessageW(PWSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMessageA(out MSG lpMsg, HWND hWnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMessageW(out MSG lpMsg, HWND hWnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL TranslateMessage(in MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DispatchMessageA(in MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DispatchMessageW(in MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMessageQueue(int32 cMessagesMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PeekMessageA(out MSG lpMsg, HWND hWnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, PEEK_MESSAGE_REMOVE_TYPE wRemoveMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PeekMessageW(out MSG lpMsg, HWND hWnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, PEEK_MESSAGE_REMOVE_TYPE wRemoveMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetMessagePos();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMessageTime();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LPARAM GetMessageExtraInfo();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsWow64Message();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LPARAM SetMessageExtraInfo(LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendMessageA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendMessageW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendMessageTimeoutA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, SEND_MESSAGE_TIMEOUT_FLAGS fuFlags, uint32 uTimeout, uint* lpdwResult);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendMessageTimeoutW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, SEND_MESSAGE_TIMEOUT_FLAGS fuFlags, uint32 uTimeout, uint* lpdwResult);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SendNotifyMessageA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SendNotifyMessageW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SendMessageCallbackA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, uint dwData);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SendMessageCallbackW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, SENDASYNCPROC lpResultCallBack, uint dwData);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void* RegisterDeviceNotificationA(HANDLE hRecipient, void* NotificationFilter, POWER_SETTING_REGISTER_NOTIFICATION_FLAGS Flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void* RegisterDeviceNotificationW(HANDLE hRecipient, void* NotificationFilter, POWER_SETTING_REGISTER_NOTIFICATION_FLAGS Flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PostMessageA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PostMessageW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PostThreadMessageA(uint32 idThread, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PostThreadMessageW(uint32 idThread, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ReplyMessage(LRESULT lResult);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL WaitMessage();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefWindowProcA(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefWindowProcW(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void PostQuitMessage(int32 nExitCode);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT CallWindowProcA(WNDPROC lpPrevWndFunc, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT CallWindowProcW(WNDPROC lpPrevWndFunc, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InSendMessage();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 InSendMessageEx(void* lpReserved);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 RegisterClassA(in WNDCLASSA lpWndClass);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 RegisterClassW(in WNDCLASSW lpWndClass);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UnregisterClassA(PSTR lpClassName, HINSTANCE hInstance);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UnregisterClassW(PWSTR lpClassName, HINSTANCE hInstance);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClassInfoA(HINSTANCE hInstance, PSTR lpClassName, out WNDCLASSA lpWndClass);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClassInfoW(HINSTANCE hInstance, PWSTR lpClassName, out WNDCLASSW lpWndClass);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 RegisterClassExA(in WNDCLASSEXA param0);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 RegisterClassExW(in WNDCLASSEXW param0);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClassInfoExA(HINSTANCE hInstance, PSTR lpszClass, out WNDCLASSEXA lpwcx);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClassInfoExW(HINSTANCE hInstance, PWSTR lpszClass, out WNDCLASSEXW lpwcx);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateWindowExA(WINDOW_EX_STYLE dwExStyle, PSTR lpClassName, PSTR lpWindowName, WINDOW_STYLE dwStyle, int32 X, int32 Y, int32 nWidth, int32 nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateWindowExW(WINDOW_EX_STYLE dwExStyle, PWSTR lpClassName, PWSTR lpWindowName, WINDOW_STYLE dwStyle, int32 X, int32 Y, int32 nWidth, int32 nHeight, HWND hWndParent, HMENU hMenu, HINSTANCE hInstance, void* lpParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsWindow(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsMenu(HMENU hMenu);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsChild(HWND hWndParent, HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyWindow(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShowWindow(HWND hWnd, SHOW_WINDOW_CMD nCmdShow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AnimateWindow(HWND hWnd, uint32 dwTime, ANIMATE_WINDOW_FLAGS dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UpdateLayeredWindow(HWND hWnd, HDC hdcDst, POINT* pptDst, SIZE* psize, HDC hdcSrc, POINT* pptSrc, uint32 crKey, BLENDFUNCTION* pblend, UPDATE_LAYERED_WINDOW_FLAGS dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UpdateLayeredWindowIndirect(HWND hWnd, in UPDATELAYEREDWINDOWINFO pULWInfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetLayeredWindowAttributes(HWND hwnd, uint32* pcrKey, uint8* pbAlpha, LAYERED_WINDOW_ATTRIBUTES_FLAGS* pdwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetLayeredWindowAttributes(HWND hwnd, uint32 crKey, uint8 bAlpha, LAYERED_WINDOW_ATTRIBUTES_FLAGS dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShowWindowAsync(HWND hWnd, SHOW_WINDOW_CMD nCmdShow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL FlashWindow(HWND hWnd, BOOL bInvert);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL FlashWindowEx(ref FLASHWINFO pfwi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShowOwnedPopups(HWND hWnd, BOOL fShow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OpenIcon(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseWindow(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL MoveWindow(HWND hWnd, int32 X, int32 Y, int32 nWidth, int32 nHeight, BOOL bRepaint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int32 X, int32 Y, int32 cx, int32 cy, SET_WINDOW_POS_FLAGS uFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetWindowPlacement(HWND hWnd, out WINDOWPLACEMENT lpwndpl);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetWindowPlacement(HWND hWnd, in WINDOWPLACEMENT lpwndpl);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetWindowDisplayAffinity(HWND hWnd, out uint32 pdwAffinity);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetWindowDisplayAffinity(HWND hWnd, WINDOW_DISPLAY_AFFINITY dwAffinity);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int BeginDeferWindowPos(int32 nNumWindows);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int DeferWindowPos(int hWinPosInfo, HWND hWnd, HWND hWndInsertAfter, int32 x, int32 y, int32 cx, int32 cy, SET_WINDOW_POS_FLAGS uFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EndDeferWindowPos(int hWinPosInfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsWindowVisible(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsIconic(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AnyPopup();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL BringWindowToTop(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsZoomed(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateDialogParamA(HINSTANCE hInstance, PSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateDialogParamW(HINSTANCE hInstance, PWSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateDialogIndirectParamA(HINSTANCE hInstance, ref DLGTEMPLATE lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateDialogIndirectParamW(HINSTANCE hInstance, ref DLGTEMPLATE lpTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int DialogBoxParamA(HINSTANCE hInstance, PSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int DialogBoxParamW(HINSTANCE hInstance, PWSTR lpTemplateName, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int DialogBoxIndirectParamA(HINSTANCE hInstance, ref DLGTEMPLATE hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int DialogBoxIndirectParamW(HINSTANCE hInstance, ref DLGTEMPLATE hDialogTemplate, HWND hWndParent, DLGPROC lpDialogFunc, LPARAM dwInitParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EndDialog(HWND hDlg, int nResult);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetDlgItem(HWND hDlg, int32 nIDDlgItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetDlgItemInt(HWND hDlg, int32 nIDDlgItem, uint32 uValue, BOOL bSigned);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetDlgItemInt(HWND hDlg, int32 nIDDlgItem, BOOL* lpTranslated, BOOL bSigned);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetDlgItemTextA(HWND hDlg, int32 nIDDlgItem, PSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetDlgItemTextW(HWND hDlg, int32 nIDDlgItem, PWSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetDlgItemTextA(HWND hDlg, int32 nIDDlgItem, uint8* lpString, int32 cchMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetDlgItemTextW(HWND hDlg, int32 nIDDlgItem, char16* lpString, int32 cchMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendDlgItemMessageA(HWND hDlg, int32 nIDDlgItem, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT SendDlgItemMessageW(HWND hDlg, int32 nIDDlgItem, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetNextDlgGroupItem(HWND hDlg, HWND hCtl, BOOL bPrevious);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetNextDlgTabItem(HWND hDlg, HWND hCtl, BOOL bPrevious);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDlgCtrlID(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDialogBaseUnits();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefDlgProcA(HWND hDlg, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefDlgProcW(HWND hDlg, uint32 Msg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CallMsgFilterA(ref MSG lpMsg, int32 nCode);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CallMsgFilterW(ref MSG lpMsg, int32 nCode);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CharToOemA(PSTR pSrc, PSTR pDst);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CharToOemW(PWSTR pSrc, PSTR pDst);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OemToCharA(PSTR pSrc, PSTR pDst);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OemToCharW(PSTR pSrc, PWSTR pDst);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CharToOemBuffA(PSTR lpszSrc, uint8* lpszDst, uint32 cchDstLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CharToOemBuffW(PWSTR lpszSrc, uint8* lpszDst, uint32 cchDstLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OemToCharBuffA(PSTR lpszSrc, uint8* lpszDst, uint32 cchDstLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL OemToCharBuffW(PSTR lpszSrc, char16* lpszDst, uint32 cchDstLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharUpperA(PSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR CharUpperW(PWSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CharUpperBuffA(uint8* lpsz, uint32 cchLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CharUpperBuffW(char16* lpsz, uint32 cchLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharLowerA(PSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR CharLowerW(PWSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CharLowerBuffA(uint8* lpsz, uint32 cchLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CharLowerBuffW(char16* lpsz, uint32 cchLength);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharNextA(PSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR CharNextW(PWSTR lpsz);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharPrevA(PSTR lpszStart, PSTR lpszCurrent);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR CharPrevW(PWSTR lpszStart, PWSTR lpszCurrent);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharNextExA(uint16 CodePage, PSTR lpCurrentChar, uint32 dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR CharPrevExA(uint16 CodePage, PSTR lpStart, PSTR lpCurrentChar, uint32 dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharAlphaA(CHAR ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharAlphaW(char16 ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharAlphaNumericA(CHAR ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharAlphaNumericW(char16 ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharUpperA(CHAR ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharUpperW(char16 ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsCharLowerA(CHAR ch);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetInputState();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetQueueStatus(QUEUE_STATUS_FLAGS flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 MsgWaitForMultipleObjects(uint32 nCount, HANDLE* pHandles, BOOL fWaitAll, uint32 dwMilliseconds, QUEUE_STATUS_FLAGS dwWakeMask);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 MsgWaitForMultipleObjectsEx(uint32 nCount, HANDLE* pHandles, uint32 dwMilliseconds, QUEUE_STATUS_FLAGS dwWakeMask, MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS dwFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SetTimer(HWND hWnd, uint nIDEvent, uint32 uElapse, TIMERPROC lpTimerFunc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SetCoalescableTimer(HWND hWnd, uint nIDEvent, uint32 uElapse, TIMERPROC lpTimerFunc, uint32 uToleranceDelay);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL KillTimer(HWND hWnd, uint uIDEvent);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsWindowUnicode(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HACCEL LoadAcceleratorsA(HINSTANCE hInstance, PSTR lpTableName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HACCEL LoadAcceleratorsW(HINSTANCE hInstance, PWSTR lpTableName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HACCEL CreateAcceleratorTableA(ACCEL* paccel, int32 cAccel);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HACCEL CreateAcceleratorTableW(ACCEL* paccel, int32 cAccel);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyAcceleratorTable(HACCEL hAccel);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CopyAcceleratorTableA(HACCEL hAccelSrc, ACCEL* lpAccelDst, int32 cAccelEntries);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CopyAcceleratorTableW(HACCEL hAccelSrc, ACCEL* lpAccelDst, int32 cAccelEntries);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 TranslateAcceleratorA(HWND hWnd, HACCEL hAccTable, ref MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 TranslateAcceleratorW(HWND hWnd, HACCEL hAccTable, ref MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetSystemMetrics(SYSTEM_METRICS_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU LoadMenuA(HINSTANCE hInstance, PSTR lpMenuName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU LoadMenuW(HINSTANCE hInstance, PWSTR lpMenuName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU LoadMenuIndirectA(void* lpMenuTemplate);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU LoadMenuIndirectW(void* lpMenuTemplate);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU GetMenu(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenu(HWND hWnd, HMENU hMenu);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ChangeMenuA(HMENU hMenu, uint32 cmd, PSTR lpszNewItem, uint32 cmdInsert, uint32 flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ChangeMenuW(HMENU hMenu, uint32 cmd, PWSTR lpszNewItem, uint32 cmdInsert, uint32 flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL HiliteMenuItem(HWND hWnd, HMENU hMenu, uint32 uIDHiliteItem, uint32 uHilite);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMenuStringA(HMENU hMenu, uint32 uIDItem, uint8* lpString, int32 cchMax, MENU_ITEM_FLAGS flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMenuStringW(HMENU hMenu, uint32 uIDItem, char16* lpString, int32 cchMax, MENU_ITEM_FLAGS flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetMenuState(HMENU hMenu, uint32 uId, MENU_ITEM_FLAGS uFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DrawMenuBar(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU GetSystemMenu(HWND hWnd, BOOL bRevert);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU CreateMenu();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU CreatePopupMenu();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyMenu(HMENU hMenu);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CheckMenuItem(HMENU hMenu, uint32 uIDCheckItem, uint32 uCheck);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnableMenuItem(HMENU hMenu, uint32 uIDEnableItem, MENU_ITEM_FLAGS uEnable);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HMENU GetSubMenu(HMENU hMenu, int32 nPos);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetMenuItemID(HMENU hMenu, int32 nPos);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMenuItemCount(HMENU hMenu);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InsertMenuA(HMENU hMenu, uint32 uPosition, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InsertMenuW(HMENU hMenu, uint32 uPosition, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PWSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AppendMenuA(HMENU hMenu, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AppendMenuW(HMENU hMenu, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PWSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ModifyMenuA(HMENU hMnu, uint32 uPosition, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ModifyMenuW(HMENU hMnu, uint32 uPosition, MENU_ITEM_FLAGS uFlags, uint uIDNewItem, PWSTR lpNewItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL RemoveMenu(HMENU hMenu, uint32 uPosition, MENU_ITEM_FLAGS uFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DeleteMenu(HMENU hMenu, uint32 uPosition, MENU_ITEM_FLAGS uFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenuItemBitmaps(HMENU hMenu, uint32 uPosition, MENU_ITEM_FLAGS uFlags, HBITMAP hBitmapUnchecked, HBITMAP hBitmapChecked);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMenuCheckMarkDimensions();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL TrackPopupMenu(HMENU hMenu, TRACK_POPUP_MENU_FLAGS uFlags, int32 x, int32 y, int32 nReserved, HWND hWnd, in RECT prcRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL TrackPopupMenuEx(HMENU hMenu, uint32 uFlags, int32 x, int32 y, HWND hwnd, TPMPARAMS* lptpm);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CalculatePopupWindowPosition(in POINT anchorPoint, in SIZE windowSize, uint32 flags, RECT* excludeRect, out RECT popupWindowPosition);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMenuInfo(HMENU param0, out MENUINFO param1);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenuInfo(HMENU param0, ref MENUINFO param1);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EndMenu();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InsertMenuItemA(HMENU hmenu, uint32 item, BOOL fByPosition, ref MENUITEMINFOA lpmi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InsertMenuItemW(HMENU hmenu, uint32 item, BOOL fByPosition, ref MENUITEMINFOW lpmi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMenuItemInfoA(HMENU hmenu, uint32 item, BOOL fByPosition, out MENUITEMINFOA lpmii);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMenuItemInfoW(HMENU hmenu, uint32 item, BOOL fByPosition, out MENUITEMINFOW lpmii);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenuItemInfoA(HMENU hmenu, uint32 item, BOOL fByPositon, ref MENUITEMINFOA lpmii);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenuItemInfoW(HMENU hmenu, uint32 item, BOOL fByPositon, ref MENUITEMINFOW lpmii);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetMenuDefaultItem(HMENU hMenu, uint32 fByPos, GET_MENU_DEFAULT_ITEM_FLAGS gmdiFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetMenuDefaultItem(HMENU hMenu, uint32 uItem, uint32 fByPos);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMenuItemRect(HWND hWnd, HMENU hMenu, uint32 uItem, out RECT lprcItem);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 MenuItemFromPoint(HWND hWnd, HMENU hMenu, POINT ptScreen);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DragObject(HWND hwndParent, HWND hwndFrom, uint32 fmt, uint data, HCURSOR hcur);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DrawIcon(HDC hDC, int32 X, int32 Y, HICON hIcon);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetForegroundWindow();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SwitchToThisWindow(HWND hwnd, BOOL fUnknown);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetForegroundWindow(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AllowSetForegroundWindow(uint32 dwProcessId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL LockSetForegroundWindow(FOREGROUND_WINDOW_LOCK_CODE uLockCode);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ScrollWindow(HWND hWnd, int32 XAmount, int32 YAmount, RECT* lpRect, RECT* lpClipRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ScrollDC(HDC hDC, int32 dx, int32 dy, RECT* lprcScroll, RECT* lprcClip, HRGN hrgnUpdate, RECT* lprcUpdate);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ScrollWindowEx(HWND hWnd, int32 dx, int32 dy, RECT* prcScroll, RECT* prcClip, HRGN hrgnUpdate, RECT* prcUpdate, SHOW_WINDOW_CMD flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetScrollPos(HWND hWnd, SCROLLBAR_CONSTANTS nBar);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetScrollRange(HWND hWnd, SCROLLBAR_CONSTANTS nBar, out int32 lpMinPos, out int32 lpMaxPos);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetPropA(HWND hWnd, PSTR lpString, HANDLE hData);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetPropW(HWND hWnd, PWSTR lpString, HANDLE hData);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE GetPropA(HWND hWnd, PSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE GetPropW(HWND hWnd, PWSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE RemovePropA(HWND hWnd, PSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE RemovePropW(HWND hWnd, PWSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 EnumPropsExA(HWND hWnd, PROPENUMPROCEXA lpEnumFunc, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 EnumPropsExW(HWND hWnd, PROPENUMPROCEXW lpEnumFunc, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 EnumPropsA(HWND hWnd, PROPENUMPROCA lpEnumFunc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 EnumPropsW(HWND hWnd, PROPENUMPROCW lpEnumFunc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetWindowTextA(HWND hWnd, PSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetWindowTextW(HWND hWnd, PWSTR lpString);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowTextA(HWND hWnd, uint8* lpString, int32 nMaxCount);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowTextW(HWND hWnd, char16* lpString, int32 nMaxCount);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowTextLengthA(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowTextLengthW(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClientRect(HWND hWnd, out RECT lpRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetWindowRect(HWND hWnd, out RECT lpRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AdjustWindowRect(out RECT lpRect, WINDOW_STYLE dwStyle, BOOL bMenu);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AdjustWindowRectEx(out RECT lpRect, WINDOW_STYLE dwStyle, BOOL bMenu, WINDOW_EX_STYLE dwExStyle);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxA(HWND hWnd, PSTR lpText, PSTR lpCaption, MESSAGEBOX_STYLE uType);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxW(HWND hWnd, PWSTR lpText, PWSTR lpCaption, MESSAGEBOX_STYLE uType);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxExA(HWND hWnd, PSTR lpText, PSTR lpCaption, MESSAGEBOX_STYLE uType, uint16 wLanguageId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxExW(HWND hWnd, PWSTR lpText, PWSTR lpCaption, MESSAGEBOX_STYLE uType, uint16 wLanguageId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxIndirectA(in MSGBOXPARAMSA lpmbp);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern MESSAGEBOX_RESULT MessageBoxIndirectW(in MSGBOXPARAMSW lpmbp);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ShowCursor(BOOL bShow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetCursorPos(int32 X, int32 Y);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetPhysicalCursorPos(int32 X, int32 Y);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR SetCursor(HCURSOR hCursor);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCursorPos(out POINT lpPoint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetPhysicalCursorPos(out POINT lpPoint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClipCursor(out RECT lpRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR GetCursor();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CreateCaret(HWND hWnd, HBITMAP hBitmap, int32 nWidth, int32 nHeight);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetCaretBlinkTime();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetCaretBlinkTime(uint32 uMSeconds);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyCaret();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL HideCaret(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShowCaret(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetCaretPos(int32 X, int32 Y);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCaretPos(out POINT lpPoint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL LogicalToPhysicalPoint(HWND hWnd, out POINT lpPoint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL PhysicalToLogicalPoint(HWND hWnd, out POINT lpPoint);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND WindowFromPoint(POINT Point);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND WindowFromPhysicalPoint(POINT Point);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND ChildWindowFromPoint(HWND hWndParent, POINT Point);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ClipCursor(RECT* lpRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND ChildWindowFromPointEx(HWND hwnd, POINT pt, CWP_FLAGS flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetSysColor(SYS_COLOR_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetSysColors(int32 cElements, int32* lpaElements, uint32* lpaRgbValues);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetWindowWord(HWND hWnd, int32 nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 SetWindowWord(HWND hWnd, int32 nIndex, uint16 wNewWord);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowLongA(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetWindowLongW(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SetWindowLongA(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex, int32 dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SetWindowLongW(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex, int32 dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int GetWindowLongPtrA(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int GetWindowLongPtrW(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int SetWindowLongPtrA(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex, int dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int SetWindowLongPtrW(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex, int dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetClassWord(HWND hWnd, int32 nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 SetClassWord(HWND hWnd, int32 nIndex, uint16 wNewWord);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClassLongA(HWND hWnd, GET_CLASS_LONG_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClassLongW(HWND hWnd, GET_CLASS_LONG_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClassLongA(HWND hWnd, GET_CLASS_LONG_INDEX nIndex, int32 dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClassLongW(HWND hWnd, GET_CLASS_LONG_INDEX nIndex, int32 dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint GetClassLongPtrA(HWND hWnd, GET_CLASS_LONG_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint GetClassLongPtrW(HWND hWnd, GET_CLASS_LONG_INDEX nIndex);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SetClassLongPtrA(HWND hWnd, GET_CLASS_LONG_INDEX nIndex, int dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SetClassLongPtrW(HWND hWnd, GET_CLASS_LONG_INDEX nIndex, int dwNewLong);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetProcessDefaultLayout(out uint32 pdwDefaultLayout);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetProcessDefaultLayout(uint32 dwDefaultLayout);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetDesktopWindow();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetParent(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND SetParent(HWND hWndChild, HWND hWndNewParent);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumChildWindows(HWND hWndParent, WNDENUMPROC lpEnumFunc, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND FindWindowA(PSTR lpClassName, PSTR lpWindowName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND FindWindowW(PWSTR lpClassName, PWSTR lpWindowName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND FindWindowExA(HWND hWndParent, HWND hWndChildAfter, PSTR lpszClass, PSTR lpszWindow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND FindWindowExW(HWND hWndParent, HWND hWndChildAfter, PWSTR lpszClass, PWSTR lpszWindow);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetShellWindow();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL RegisterShellHookWindow(HWND hwnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DeregisterShellHookWindow(HWND hwnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumWindows(WNDENUMPROC lpEnumFunc, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumThreadWindows(uint32 dwThreadId, WNDENUMPROC lpfn, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetClassNameA(HWND hWnd, uint8* lpClassName, int32 nMaxCount);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetClassNameW(HWND hWnd, char16* lpClassName, int32 nMaxCount);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetTopWindow(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetWindowThreadProcessId(HWND hWnd, uint32* lpdwProcessId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsGUIThread(BOOL bConvert);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetLastActivePopup(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetWindow(HWND hWnd, GET_WINDOW_CMD uCmd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HHOOK SetWindowsHookA(int32 nFilterType, HOOKPROC pfnFilterProc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HHOOK SetWindowsHookW(int32 nFilterType, HOOKPROC pfnFilterProc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UnhookWindowsHook(int32 nCode, HOOKPROC pfnFilterProc);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HHOOK SetWindowsHookExA(WINDOWS_HOOK_ID idHook, HOOKPROC lpfn, HINSTANCE hmod, uint32 dwThreadId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HHOOK SetWindowsHookExW(WINDOWS_HOOK_ID idHook, HOOKPROC lpfn, HINSTANCE hmod, uint32 dwThreadId);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UnhookWindowsHookEx(HHOOK hhk);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT CallNextHookEx(HHOOK hhk, int32 nCode, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CheckMenuRadioItem(HMENU hmenu, uint32 first, uint32 last, uint32 check, uint32 flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR LoadCursorA(HINSTANCE hInstance, PSTR lpCursorName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR LoadCursorW(HINSTANCE hInstance, PWSTR lpCursorName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR LoadCursorFromFileA(PSTR lpFileName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR LoadCursorFromFileW(PWSTR lpFileName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HCURSOR CreateCursor(HINSTANCE hInst, int32 xHotSpot, int32 yHotSpot, int32 nWidth, int32 nHeight, void* pvANDPlane, void* pvXORPlane);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyCursor(HCURSOR hCursor);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetSystemCursor(HCURSOR hcur, SYSTEM_CURSOR_ID id);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON LoadIconA(HINSTANCE hInstance, PSTR lpIconName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON LoadIconW(HINSTANCE hInstance, PWSTR lpIconName);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 PrivateExtractIconsA(uint8* szFileName, int32 nIconIndex, int32 cxIcon, int32 cyIcon, HICON* phicon, uint32* piconid, uint32 nIcons, uint32 flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 PrivateExtractIconsW(char16* szFileName, int32 nIconIndex, int32 cxIcon, int32 cyIcon, HICON* phicon, uint32* piconid, uint32 nIcons, uint32 flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON CreateIcon(HINSTANCE hInstance, int32 nWidth, int32 nHeight, uint8 cPlanes, uint8 cBitsPixel, uint8* lpbANDbits, uint8* lpbXORbits);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DestroyIcon(HICON hIcon);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LookupIconIdFromDirectory(ref uint8 presbits, BOOL fIcon);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LookupIconIdFromDirectoryEx(ref uint8 presbits, BOOL fIcon, int32 cxDesired, int32 cyDesired, IMAGE_FLAGS Flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON CreateIconFromResource(ref uint8 presbits, uint32 dwResSize, BOOL fIcon, uint32 dwVer);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON CreateIconFromResourceEx(ref uint8 presbits, uint32 dwResSize, BOOL fIcon, uint32 dwVer, int32 cxDesired, int32 cyDesired, IMAGE_FLAGS Flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE LoadImageA(HINSTANCE hInst, PSTR name, GDI_IMAGE_TYPE type, int32 cx, int32 cy, IMAGE_FLAGS fuLoad);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE LoadImageW(HINSTANCE hInst, PWSTR name, GDI_IMAGE_TYPE type, int32 cx, int32 cy, IMAGE_FLAGS fuLoad);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HANDLE CopyImage(HANDLE h, GDI_IMAGE_TYPE type, int32 cx, int32 cy, IMAGE_FLAGS flags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DrawIconEx(HDC hdc, int32 xLeft, int32 yTop, HICON hIcon, int32 cxWidth, int32 cyWidth, uint32 istepIfAniCur, HBRUSH hbrFlickerFreeDraw, DI_FLAGS diFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON CreateIconIndirect(ref ICONINFO piconinfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON CopyIcon(HICON hIcon);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetIconInfo(HICON hIcon, out ICONINFO piconinfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetIconInfoExA(HICON hicon, out ICONINFOEXA piconinfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetIconInfoExW(HICON hicon, out ICONINFOEXW piconinfo);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsDialogMessageA(HWND hDlg, ref MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsDialogMessageW(HWND hDlg, ref MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL MapDialogRect(HWND hDlg, out RECT lpRect);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetScrollInfo(HWND hwnd, SCROLLBAR_CONSTANTS nBar, out SCROLLINFO lpsi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefFrameProcA(HWND hWnd, HWND hWndMDIClient, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefFrameProcW(HWND hWnd, HWND hWndMDIClient, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefMDIChildProcA(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern LRESULT DefMDIChildProcW(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL TranslateMDISysAccel(HWND hWndClient, ref MSG lpMsg);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ArrangeIconicWindows(HWND hWnd);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateMDIWindowA(PSTR lpClassName, PSTR lpWindowName, WINDOW_STYLE dwStyle, int32 X, int32 Y, int32 nWidth, int32 nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND CreateMDIWindowW(PWSTR lpClassName, PWSTR lpWindowName, WINDOW_STYLE dwStyle, int32 X, int32 Y, int32 nWidth, int32 nHeight, HWND hWndParent, HINSTANCE hInstance, LPARAM lParam);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 TileWindows(HWND hwndParent, TILE_WINDOWS_HOW wHow, RECT* lpRect, uint32 cKids, HWND* lpKids);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 CascadeWindows(HWND hwndParent, CASCADE_WINDOWS_HOW wHow, RECT* lpRect, uint32 cKids, HWND* lpKids);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SystemParametersInfoA(SYSTEM_PARAMETERS_INFO_ACTION uiAction, uint32 uiParam, void* pvParam, SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS fWinIni);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SystemParametersInfoW(SYSTEM_PARAMETERS_INFO_ACTION uiAction, uint32 uiParam, void* pvParam, SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS fWinIni);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SoundSentry();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SetDebugErrorLevel(uint32 dwLevel);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 InternalGetWindowText(HWND hWnd, char16* pString, int32 cchMaxCount);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CancelShutdown();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetGUIThreadInfo(uint32 idThread, out GUITHREADINFO pgui);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetProcessDPIAware();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsProcessDPIAware();
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InheritWindowMonitor(HWND hwnd, HWND hwndInherit);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetWindowModuleFileNameA(HWND hwnd, uint8* pszFileName, uint32 cchFileNameMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetWindowModuleFileNameW(HWND hwnd, char16* pszFileName, uint32 cchFileNameMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCursorInfo(out CURSORINFO pci);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetWindowInfo(HWND hwnd, out WINDOWINFO pwi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetTitleBarInfo(HWND hwnd, out TITLEBARINFO pti);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetMenuBarInfo(HWND hwnd, OBJECT_IDENTIFIER idObject, int32 idItem, out MENUBARINFO pmbi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetScrollBarInfo(HWND hwnd, OBJECT_IDENTIFIER idObject, out SCROLLBARINFO psbi);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND GetAncestor(HWND hwnd, GET_ANCESTOR_FLAGS gaFlags);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HWND RealChildWindowFromPoint(HWND hwndParent, POINT ptParentClientCoords);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RealGetWindowClassA(HWND hwnd, uint8* ptszClassName, uint32 cchClassNameMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RealGetWindowClassW(HWND hwnd, char16* ptszClassName, uint32 cchClassNameMax);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetAltTabInfoA(HWND hwnd, int32 iItem, out ALTTABINFO pati, uint8* pszItemText, uint32 cchItemText);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetAltTabInfoW(HWND hwnd, int32 iItem, out ALTTABINFO pati, char16* pszItemText, uint32 cchItemText);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ChangeWindowMessageFilter(uint32 message, CHANGE_WINDOW_MESSAGE_FILTER_FLAGS dwFlag);
	[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ChangeWindowMessageFilterEx(HWND hwnd, uint32 message, WINDOW_MESSAGE_FILTER_ACTION action, CHANGEFILTERSTRUCT* pChangeFilterStruct);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateResourceIndexer(PWSTR projectRoot, PWSTR extensionDllPath, void** ppResourceIndexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void DestroyResourceIndexer(void* resourceIndexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IndexFilePath(void* resourceIndexer, PWSTR filePath, out PWSTR ppResourceUri, out uint32 pQualifierCount, IndexedResourceQualifier** ppQualifiers);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void DestroyIndexedResults(PWSTR resourceUri, uint32 qualifierCount, IndexedResourceQualifier* qualifiers);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexer(PWSTR packageFamilyName, PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexerFromPreviousSchemaFile(PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, PWSTR schemaFile, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexerFromPreviousPriFile(PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, PWSTR priFile, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexerFromPreviousSchemaData(PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, ref uint8 schemaXmlData, uint32 schemaXmlSize, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexerFromPreviousPriData(PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, ref uint8 priData, uint32 priSize, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceIndexerWithFlags(PWSTR packageFamilyName, PWSTR projectRoot, MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, MrmIndexerFlags flags, out MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmIndexString(MrmResourceIndexerHandle indexer, PWSTR resourceUri, PWSTR resourceString, PWSTR qualifiers);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmIndexEmbeddedData(MrmResourceIndexerHandle indexer, PWSTR resourceUri, in uint8 embeddedData, uint32 embeddedDataSize, PWSTR qualifiers);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmIndexFile(MrmResourceIndexerHandle indexer, PWSTR resourceUri, PWSTR filePath, PWSTR qualifiers);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmIndexFileAutoQualifiers(MrmResourceIndexerHandle indexer, PWSTR filePath);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmIndexResourceContainerAutoQualifiers(MrmResourceIndexerHandle indexer, PWSTR containerPath);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceFile(MrmResourceIndexerHandle indexer, MrmPackagingMode packagingMode, MrmPackagingOptions packagingOptions, PWSTR outputDirectory);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceFileWithChecksum(MrmResourceIndexerHandle indexer, MrmPackagingMode packagingMode, MrmPackagingOptions packagingOptions, uint32 checksum, PWSTR outputDirectory);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateResourceFileInMemory(MrmResourceIndexerHandle indexer, MrmPackagingMode packagingMode, MrmPackagingOptions packagingOptions, out uint8* outputPriData, out uint32 outputPriSize);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmPeekResourceIndexerMessages(MrmResourceIndexerHandle handle, MrmResourceIndexerMessage** messages, out uint32 numMsgs);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmDestroyIndexerAndMessages(MrmResourceIndexerHandle indexer);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmFreeMemory(ref uint8 data);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmDumpPriFile(PWSTR indexFileName, PWSTR schemaPriFile, MrmDumpType dumpType, PWSTR outputXmlFile);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmDumpPriFileInMemory(PWSTR indexFileName, PWSTR schemaPriFile, MrmDumpType dumpType, out uint8* outputXmlData, out uint32 outputXmlSize);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmDumpPriDataInMemory(ref uint8 inputPriData, uint32 inputPriSize, uint8* schemaPriData, uint32 schemaPriSize, MrmDumpType dumpType, out uint8* outputXmlData, out uint32 outputXmlSize);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateConfig(MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, PWSTR outputXmlFile);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmCreateConfigInMemory(MrmPlatformVersion platformVersion, PWSTR defaultQualifiers, out uint8* outputXmlData, out uint32 outputXmlSize);
	[Import("mrmsupport.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MrmGetPriFileContentChecksum(PWSTR priFile, out uint32 checksum);
	#endregion
}
