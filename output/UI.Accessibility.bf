using System;

// namespace UI.Accessibility
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid LIBID_Accessibility = .(0x1ea4dbf0, 0x3c3b, 0x11cf, 0x81, 0x0c, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid CLSID_AccPropServices = .(0xb5f8350b, 0x0548, 0x48b1, 0xa6, 0xee, 0x88, 0xbd, 0x00, 0xb4, 0xa5, 0xe7);
		public const Guid IIS_IsOleaccProxy = .(0x902697fa, 0x80e4, 0x4560, 0x80, 0x2a, 0xa1, 0x3f, 0x22, 0xa6, 0x47, 0x09);
		public const Guid IIS_ControlAccessible = .(0x38c682a6, 0x9731, 0x43f2, 0x9f, 0xae, 0xe9, 0x01, 0xe6, 0x41, 0xb1, 0x01);
		public const uint32 ANRUS_PRIORITY_AUDIO_DYNAMIC_DUCK = 16;
		public const int32 MSAA_MENU_SIG = -1441927155;
		public const Guid PROPID_ACC_NAME = .(0x608d3df8, 0x8128, 0x4aa7, 0xa4, 0x28, 0xf5, 0x5e, 0x49, 0x26, 0x72, 0x91);
		public const Guid PROPID_ACC_VALUE = .(0x123fe443, 0x211a, 0x4615, 0x95, 0x27, 0xc4, 0x5a, 0x7e, 0x93, 0x71, 0x7a);
		public const Guid PROPID_ACC_DESCRIPTION = .(0x4d48dfe4, 0xbd3f, 0x491f, 0xa6, 0x48, 0x49, 0x2d, 0x6f, 0x20, 0xc5, 0x88);
		public const Guid PROPID_ACC_ROLE = .(0xcb905ff2, 0x7bd1, 0x4c05, 0xb3, 0xc8, 0xe6, 0xc2, 0x41, 0x36, 0x4d, 0x70);
		public const Guid PROPID_ACC_STATE = .(0xa8d4d5b0, 0x0a21, 0x42d0, 0xa5, 0xc0, 0x51, 0x4e, 0x98, 0x4f, 0x45, 0x7b);
		public const Guid PROPID_ACC_HELP = .(0xc831e11f, 0x44db, 0x4a99, 0x97, 0x68, 0xcb, 0x8f, 0x97, 0x8b, 0x72, 0x31);
		public const Guid PROPID_ACC_KEYBOARDSHORTCUT = .(0x7d9bceee, 0x7d1e, 0x4979, 0x93, 0x82, 0x51, 0x80, 0xf4, 0x17, 0x2c, 0x34);
		public const Guid PROPID_ACC_DEFAULTACTION = .(0x180c072b, 0xc27f, 0x43c7, 0x99, 0x22, 0xf6, 0x35, 0x62, 0xa4, 0x63, 0x2b);
		public const Guid PROPID_ACC_HELPTOPIC = .(0x787d1379, 0x8ede, 0x440b, 0x8a, 0xec, 0x11, 0xf7, 0xbf, 0x90, 0x30, 0xb3);
		public const Guid PROPID_ACC_FOCUS = .(0x6eb335df, 0x1c29, 0x4127, 0xb1, 0x2c, 0xde, 0xe9, 0xfd, 0x15, 0x7f, 0x2b);
		public const Guid PROPID_ACC_SELECTION = .(0xb99d073c, 0xd731, 0x405b, 0x90, 0x61, 0xd9, 0x5e, 0x8f, 0x84, 0x29, 0x84);
		public const Guid PROPID_ACC_PARENT = .(0x474c22b6, 0xffc2, 0x467a, 0xb1, 0xb5, 0xe9, 0x58, 0xb4, 0x65, 0x73, 0x30);
		public const Guid PROPID_ACC_NAV_UP = .(0x016e1a2b, 0x1a4e, 0x4767, 0x86, 0x12, 0x33, 0x86, 0xf6, 0x69, 0x35, 0xec);
		public const Guid PROPID_ACC_NAV_DOWN = .(0x031670ed, 0x3cdf, 0x48d2, 0x96, 0x13, 0x13, 0x8f, 0x2d, 0xd8, 0xa6, 0x68);
		public const Guid PROPID_ACC_NAV_LEFT = .(0x228086cb, 0x82f1, 0x4a39, 0x87, 0x05, 0xdc, 0xdc, 0x0f, 0xff, 0x92, 0xf5);
		public const Guid PROPID_ACC_NAV_RIGHT = .(0xcd211d9f, 0xe1cb, 0x4fe5, 0xa7, 0x7c, 0x92, 0x0b, 0x88, 0x4d, 0x09, 0x5b);
		public const Guid PROPID_ACC_NAV_PREV = .(0x776d3891, 0xc73b, 0x4480, 0xb3, 0xf6, 0x07, 0x6a, 0x16, 0xa1, 0x5a, 0xf6);
		public const Guid PROPID_ACC_NAV_NEXT = .(0x1cdc5455, 0x8cd9, 0x4c92, 0xa3, 0x71, 0x39, 0x39, 0xa2, 0xfe, 0x3e, 0xee);
		public const Guid PROPID_ACC_NAV_FIRSTCHILD = .(0xcfd02558, 0x557b, 0x4c67, 0x84, 0xf9, 0x2a, 0x09, 0xfc, 0xe4, 0x07, 0x49);
		public const Guid PROPID_ACC_NAV_LASTCHILD = .(0x302ecaa5, 0x48d5, 0x4f8d, 0xb6, 0x71, 0x1a, 0x8d, 0x20, 0xa7, 0x78, 0x32);
		public const Guid PROPID_ACC_ROLEMAP = .(0xf79acda2, 0x140d, 0x4fe6, 0x89, 0x14, 0x20, 0x84, 0x76, 0x32, 0x82, 0x69);
		public const Guid PROPID_ACC_VALUEMAP = .(0xda1c3d79, 0xfc5c, 0x420e, 0xb3, 0x99, 0x9d, 0x15, 0x33, 0x54, 0x9e, 0x75);
		public const Guid PROPID_ACC_STATEMAP = .(0x43946c5e, 0x0ac0, 0x4042, 0xb5, 0x25, 0x07, 0xbb, 0xdb, 0xe1, 0x7f, 0xa7);
		public const Guid PROPID_ACC_DESCRIPTIONMAP = .(0x1ff1435f, 0x8a14, 0x477b, 0xb2, 0x26, 0xa0, 0xab, 0xe2, 0x79, 0x97, 0x5d);
		public const Guid PROPID_ACC_DODEFAULTACTION = .(0x1ba09523, 0x2e3b, 0x49a6, 0xa0, 0x59, 0x59, 0x68, 0x2a, 0x3c, 0x48, 0xfd);
		public const int32 DISPID_ACC_PARENT = -5000;
		public const int32 DISPID_ACC_CHILDCOUNT = -5001;
		public const int32 DISPID_ACC_CHILD = -5002;
		public const int32 DISPID_ACC_NAME = -5003;
		public const int32 DISPID_ACC_VALUE = -5004;
		public const int32 DISPID_ACC_DESCRIPTION = -5005;
		public const int32 DISPID_ACC_ROLE = -5006;
		public const int32 DISPID_ACC_STATE = -5007;
		public const int32 DISPID_ACC_HELP = -5008;
		public const int32 DISPID_ACC_HELPTOPIC = -5009;
		public const int32 DISPID_ACC_KEYBOARDSHORTCUT = -5010;
		public const int32 DISPID_ACC_FOCUS = -5011;
		public const int32 DISPID_ACC_SELECTION = -5012;
		public const int32 DISPID_ACC_DEFAULTACTION = -5013;
		public const int32 DISPID_ACC_SELECT = -5014;
		public const int32 DISPID_ACC_LOCATION = -5015;
		public const int32 DISPID_ACC_NAVIGATE = -5016;
		public const int32 DISPID_ACC_HITTEST = -5017;
		public const int32 DISPID_ACC_DODEFAULTACTION = -5018;
		public const uint32 NAVDIR_MIN = 0;
		public const uint32 NAVDIR_UP = 1;
		public const uint32 NAVDIR_DOWN = 2;
		public const uint32 NAVDIR_LEFT = 3;
		public const uint32 NAVDIR_RIGHT = 4;
		public const uint32 NAVDIR_NEXT = 5;
		public const uint32 NAVDIR_PREVIOUS = 6;
		public const uint32 NAVDIR_FIRSTCHILD = 7;
		public const uint32 NAVDIR_LASTCHILD = 8;
		public const uint32 NAVDIR_MAX = 9;
		public const uint32 SELFLAG_NONE = 0;
		public const uint32 SELFLAG_TAKEFOCUS = 1;
		public const uint32 SELFLAG_TAKESELECTION = 2;
		public const uint32 SELFLAG_EXTENDSELECTION = 4;
		public const uint32 SELFLAG_ADDSELECTION = 8;
		public const uint32 SELFLAG_REMOVESELECTION = 16;
		public const uint32 SELFLAG_VALID = 31;
		public const uint32 STATE_SYSTEM_NORMAL = 0;
		public const uint32 STATE_SYSTEM_HASPOPUP = 1073741824;
		public const uint32 ROLE_SYSTEM_TITLEBAR = 1;
		public const uint32 ROLE_SYSTEM_MENUBAR = 2;
		public const uint32 ROLE_SYSTEM_SCROLLBAR = 3;
		public const uint32 ROLE_SYSTEM_GRIP = 4;
		public const uint32 ROLE_SYSTEM_SOUND = 5;
		public const uint32 ROLE_SYSTEM_CURSOR = 6;
		public const uint32 ROLE_SYSTEM_CARET = 7;
		public const uint32 ROLE_SYSTEM_ALERT = 8;
		public const uint32 ROLE_SYSTEM_WINDOW = 9;
		public const uint32 ROLE_SYSTEM_CLIENT = 10;
		public const uint32 ROLE_SYSTEM_MENUPOPUP = 11;
		public const uint32 ROLE_SYSTEM_MENUITEM = 12;
		public const uint32 ROLE_SYSTEM_TOOLTIP = 13;
		public const uint32 ROLE_SYSTEM_APPLICATION = 14;
		public const uint32 ROLE_SYSTEM_DOCUMENT = 15;
		public const uint32 ROLE_SYSTEM_PANE = 16;
		public const uint32 ROLE_SYSTEM_CHART = 17;
		public const uint32 ROLE_SYSTEM_DIALOG = 18;
		public const uint32 ROLE_SYSTEM_BORDER = 19;
		public const uint32 ROLE_SYSTEM_GROUPING = 20;
		public const uint32 ROLE_SYSTEM_SEPARATOR = 21;
		public const uint32 ROLE_SYSTEM_TOOLBAR = 22;
		public const uint32 ROLE_SYSTEM_STATUSBAR = 23;
		public const uint32 ROLE_SYSTEM_TABLE = 24;
		public const uint32 ROLE_SYSTEM_COLUMNHEADER = 25;
		public const uint32 ROLE_SYSTEM_ROWHEADER = 26;
		public const uint32 ROLE_SYSTEM_COLUMN = 27;
		public const uint32 ROLE_SYSTEM_ROW = 28;
		public const uint32 ROLE_SYSTEM_CELL = 29;
		public const uint32 ROLE_SYSTEM_LINK = 30;
		public const uint32 ROLE_SYSTEM_HELPBALLOON = 31;
		public const uint32 ROLE_SYSTEM_CHARACTER = 32;
		public const uint32 ROLE_SYSTEM_LIST = 33;
		public const uint32 ROLE_SYSTEM_LISTITEM = 34;
		public const uint32 ROLE_SYSTEM_OUTLINE = 35;
		public const uint32 ROLE_SYSTEM_OUTLINEITEM = 36;
		public const uint32 ROLE_SYSTEM_PAGETAB = 37;
		public const uint32 ROLE_SYSTEM_PROPERTYPAGE = 38;
		public const uint32 ROLE_SYSTEM_INDICATOR = 39;
		public const uint32 ROLE_SYSTEM_GRAPHIC = 40;
		public const uint32 ROLE_SYSTEM_STATICTEXT = 41;
		public const uint32 ROLE_SYSTEM_TEXT = 42;
		public const uint32 ROLE_SYSTEM_PUSHBUTTON = 43;
		public const uint32 ROLE_SYSTEM_CHECKBUTTON = 44;
		public const uint32 ROLE_SYSTEM_RADIOBUTTON = 45;
		public const uint32 ROLE_SYSTEM_COMBOBOX = 46;
		public const uint32 ROLE_SYSTEM_DROPLIST = 47;
		public const uint32 ROLE_SYSTEM_PROGRESSBAR = 48;
		public const uint32 ROLE_SYSTEM_DIAL = 49;
		public const uint32 ROLE_SYSTEM_HOTKEYFIELD = 50;
		public const uint32 ROLE_SYSTEM_SLIDER = 51;
		public const uint32 ROLE_SYSTEM_SPINBUTTON = 52;
		public const uint32 ROLE_SYSTEM_DIAGRAM = 53;
		public const uint32 ROLE_SYSTEM_ANIMATION = 54;
		public const uint32 ROLE_SYSTEM_EQUATION = 55;
		public const uint32 ROLE_SYSTEM_BUTTONDROPDOWN = 56;
		public const uint32 ROLE_SYSTEM_BUTTONMENU = 57;
		public const uint32 ROLE_SYSTEM_BUTTONDROPDOWNGRID = 58;
		public const uint32 ROLE_SYSTEM_WHITESPACE = 59;
		public const uint32 ROLE_SYSTEM_PAGETABLIST = 60;
		public const uint32 ROLE_SYSTEM_CLOCK = 61;
		public const uint32 ROLE_SYSTEM_SPLITBUTTON = 62;
		public const uint32 ROLE_SYSTEM_IPADDRESS = 63;
		public const uint32 ROLE_SYSTEM_OUTLINEBUTTON = 64;
		public const uint32 UIA_E_ELEMENTNOTENABLED = 2147746304;
		public const uint32 UIA_E_ELEMENTNOTAVAILABLE = 2147746305;
		public const uint32 UIA_E_NOCLICKABLEPOINT = 2147746306;
		public const uint32 UIA_E_PROXYASSEMBLYNOTLOADED = 2147746307;
		public const uint32 UIA_E_NOTSUPPORTED = 2147746308;
		public const uint32 UIA_E_INVALIDOPERATION = 2148734217;
		public const uint32 UIA_E_TIMEOUT = 2148734213;
		public const uint32 UiaAppendRuntimeId = 3;
		public const int32 UiaRootObjectId = -25;
		public const Guid RuntimeId_Property_GUID = .(0xa39eebfa, 0x7fba, 0x4c89, 0xb4, 0xd4, 0xb9, 0x9e, 0x2d, 0xe7, 0xd1, 0x60);
		public const Guid BoundingRectangle_Property_GUID = .(0x7bbfe8b2, 0x3bfc, 0x48dd, 0xb7, 0x29, 0xc7, 0x94, 0xb8, 0x46, 0xe9, 0xa1);
		public const Guid ProcessId_Property_GUID = .(0x40499998, 0x9c31, 0x4245, 0xa4, 0x03, 0x87, 0x32, 0x0e, 0x59, 0xea, 0xf6);
		public const Guid ControlType_Property_GUID = .(0xca774fea, 0x28ac, 0x4bc2, 0x94, 0xca, 0xac, 0xec, 0x6d, 0x6c, 0x10, 0xa3);
		public const Guid LocalizedControlType_Property_GUID = .(0x8763404f, 0xa1bd, 0x452a, 0x89, 0xc4, 0x3f, 0x01, 0xd3, 0x83, 0x38, 0x06);
		public const Guid Name_Property_GUID = .(0xc3a6921b, 0x4a99, 0x44f1, 0xbc, 0xa6, 0x61, 0x18, 0x70, 0x52, 0xc4, 0x31);
		public const Guid AcceleratorKey_Property_GUID = .(0x514865df, 0x2557, 0x4cb9, 0xae, 0xed, 0x6c, 0xed, 0x08, 0x4c, 0xe5, 0x2c);
		public const Guid AccessKey_Property_GUID = .(0x06827b12, 0xa7f9, 0x4a15, 0x91, 0x7c, 0xff, 0xa5, 0xad, 0x3e, 0xb0, 0xa7);
		public const Guid HasKeyboardFocus_Property_GUID = .(0xcf8afd39, 0x3f46, 0x4800, 0x96, 0x56, 0xb2, 0xbf, 0x12, 0x52, 0x99, 0x05);
		public const Guid IsKeyboardFocusable_Property_GUID = .(0xf7b8552a, 0x0859, 0x4b37, 0xb9, 0xcb, 0x51, 0xe7, 0x20, 0x92, 0xf2, 0x9f);
		public const Guid IsEnabled_Property_GUID = .(0x2109427f, 0xda60, 0x4fed, 0xbf, 0x1b, 0x26, 0x4b, 0xdc, 0xe6, 0xeb, 0x3a);
		public const Guid AutomationId_Property_GUID = .(0xc82c0500, 0xb60e, 0x4310, 0xa2, 0x67, 0x30, 0x3c, 0x53, 0x1f, 0x8e, 0xe5);
		public const Guid ClassName_Property_GUID = .(0x157b7215, 0x894f, 0x4b65, 0x84, 0xe2, 0xaa, 0xc0, 0xda, 0x08, 0xb1, 0x6b);
		public const Guid HelpText_Property_GUID = .(0x08555685, 0x0977, 0x45c7, 0xa7, 0xa6, 0xab, 0xaf, 0x56, 0x84, 0x12, 0x1a);
		public const Guid ClickablePoint_Property_GUID = .(0x0196903b, 0xb203, 0x4818, 0xa9, 0xf3, 0xf0, 0x8e, 0x67, 0x5f, 0x23, 0x41);
		public const Guid Culture_Property_GUID = .(0xe2d74f27, 0x3d79, 0x4dc2, 0xb8, 0x8b, 0x30, 0x44, 0x96, 0x3a, 0x8a, 0xfb);
		public const Guid IsControlElement_Property_GUID = .(0x95f35085, 0xabcc, 0x4afd, 0xa5, 0xf4, 0xdb, 0xb4, 0x6c, 0x23, 0x0f, 0xdb);
		public const Guid IsContentElement_Property_GUID = .(0x4bda64a8, 0xf5d8, 0x480b, 0x81, 0x55, 0xef, 0x2e, 0x89, 0xad, 0xb6, 0x72);
		public const Guid LabeledBy_Property_GUID = .(0xe5b8924b, 0xfc8a, 0x4a35, 0x80, 0x31, 0xcf, 0x78, 0xac, 0x43, 0xe5, 0x5e);
		public const Guid IsPassword_Property_GUID = .(0xe8482eb1, 0x687c, 0x497b, 0xbe, 0xbc, 0x03, 0xbe, 0x53, 0xec, 0x14, 0x54);
		public const Guid NewNativeWindowHandle_Property_GUID = .(0x5196b33b, 0x380a, 0x4982, 0x95, 0xe1, 0x91, 0xf3, 0xef, 0x60, 0xe0, 0x24);
		public const Guid ItemType_Property_GUID = .(0xcdda434d, 0x6222, 0x413b, 0xa6, 0x8a, 0x32, 0x5d, 0xd1, 0xd4, 0x0f, 0x39);
		public const Guid IsOffscreen_Property_GUID = .(0x03c3d160, 0xdb79, 0x42db, 0xa2, 0xef, 0x1c, 0x23, 0x1e, 0xed, 0xe5, 0x07);
		public const Guid Orientation_Property_GUID = .(0xa01eee62, 0x3884, 0x4415, 0x88, 0x7e, 0x67, 0x8e, 0xc2, 0x1e, 0x39, 0xba);
		public const Guid FrameworkId_Property_GUID = .(0xdbfd9900, 0x7e1a, 0x4f58, 0xb6, 0x1b, 0x70, 0x63, 0x12, 0x0f, 0x77, 0x3b);
		public const Guid IsRequiredForForm_Property_GUID = .(0x4f5f43cf, 0x59fb, 0x4bde, 0xa2, 0x70, 0x60, 0x2e, 0x5e, 0x11, 0x41, 0xe9);
		public const Guid ItemStatus_Property_GUID = .(0x51de0321, 0x3973, 0x43e7, 0x89, 0x13, 0x0b, 0x08, 0xe8, 0x13, 0xc3, 0x7f);
		public const Guid AriaRole_Property_GUID = .(0xdd207b95, 0xbe4a, 0x4e0d, 0xb7, 0x27, 0x63, 0xac, 0xe9, 0x4b, 0x69, 0x16);
		public const Guid AriaProperties_Property_GUID = .(0x4213678c, 0xe025, 0x4922, 0xbe, 0xb5, 0xe4, 0x3b, 0xa0, 0x8e, 0x62, 0x21);
		public const Guid IsDataValidForForm_Property_GUID = .(0x445ac684, 0xc3fc, 0x4dd9, 0xac, 0xf8, 0x84, 0x5a, 0x57, 0x92, 0x96, 0xba);
		public const Guid ControllerFor_Property_GUID = .(0x51124c8a, 0xa5d2, 0x4f13, 0x9b, 0xe6, 0x7f, 0xa8, 0xba, 0x9d, 0x3a, 0x90);
		public const Guid DescribedBy_Property_GUID = .(0x7c5865b8, 0x9992, 0x40fd, 0x8d, 0xb0, 0x6b, 0xf1, 0xd3, 0x17, 0xf9, 0x98);
		public const Guid FlowsTo_Property_GUID = .(0xe4f33d20, 0x559a, 0x47fb, 0xa8, 0x30, 0xf9, 0xcb, 0x4f, 0xf1, 0xa7, 0x0a);
		public const Guid ProviderDescription_Property_GUID = .(0xdca5708a, 0xc16b, 0x4cd9, 0xb8, 0x89, 0xbe, 0xb1, 0x6a, 0x80, 0x49, 0x04);
		public const Guid OptimizeForVisualContent_Property_GUID = .(0x6a852250, 0xc75a, 0x4e5d, 0xb8, 0x58, 0xe3, 0x81, 0xb0, 0xf7, 0x88, 0x61);
		public const Guid IsDockPatternAvailable_Property_GUID = .(0x2600a4c4, 0x2ff8, 0x4c96, 0xae, 0x31, 0x8f, 0xe6, 0x19, 0xa1, 0x3c, 0x6c);
		public const Guid IsExpandCollapsePatternAvailable_Property_GUID = .(0x929d3806, 0x5287, 0x4725, 0xaa, 0x16, 0x22, 0x2a, 0xfc, 0x63, 0xd5, 0x95);
		public const Guid IsGridItemPatternAvailable_Property_GUID = .(0x5a43e524, 0xf9a2, 0x4b12, 0x84, 0xc8, 0xb4, 0x8a, 0x3e, 0xfe, 0xdd, 0x34);
		public const Guid IsGridPatternAvailable_Property_GUID = .(0x5622c26c, 0xf0ef, 0x4f3b, 0x97, 0xcb, 0x71, 0x4c, 0x08, 0x68, 0x58, 0x8b);
		public const Guid IsInvokePatternAvailable_Property_GUID = .(0x4e725738, 0x8364, 0x4679, 0xaa, 0x6c, 0xf3, 0xf4, 0x19, 0x31, 0xf7, 0x50);
		public const Guid IsMultipleViewPatternAvailable_Property_GUID = .(0xff0a31eb, 0x8e25, 0x469d, 0x8d, 0x6e, 0xe7, 0x71, 0xa2, 0x7c, 0x1b, 0x90);
		public const Guid IsRangeValuePatternAvailable_Property_GUID = .(0xfda4244a, 0xeb4d, 0x43ff, 0xb5, 0xad, 0xed, 0x36, 0xd3, 0x73, 0xec, 0x4c);
		public const Guid IsScrollPatternAvailable_Property_GUID = .(0x3ebb7b4a, 0x828a, 0x4b57, 0x9d, 0x22, 0x2f, 0xea, 0x16, 0x32, 0xed, 0x0d);
		public const Guid IsScrollItemPatternAvailable_Property_GUID = .(0x1cad1a05, 0x0927, 0x4b76, 0x97, 0xe1, 0x0f, 0xcd, 0xb2, 0x09, 0xb9, 0x8a);
		public const Guid IsSelectionItemPatternAvailable_Property_GUID = .(0x8becd62d, 0x0bc3, 0x4109, 0xbe, 0xe2, 0x8e, 0x67, 0x15, 0x29, 0x0e, 0x68);
		public const Guid IsSelectionPatternAvailable_Property_GUID = .(0xf588acbe, 0xc769, 0x4838, 0x9a, 0x60, 0x26, 0x86, 0xdc, 0x11, 0x88, 0xc4);
		public const Guid IsTablePatternAvailable_Property_GUID = .(0xcb83575f, 0x45c2, 0x4048, 0x9c, 0x76, 0x15, 0x97, 0x15, 0xa1, 0x39, 0xdf);
		public const Guid IsTableItemPatternAvailable_Property_GUID = .(0xeb36b40d, 0x8ea4, 0x489b, 0xa0, 0x13, 0xe6, 0x0d, 0x59, 0x51, 0xfe, 0x34);
		public const Guid IsTextPatternAvailable_Property_GUID = .(0xfbe2d69d, 0xaff6, 0x4a45, 0x82, 0xe2, 0xfc, 0x92, 0xa8, 0x2f, 0x59, 0x17);
		public const Guid IsTogglePatternAvailable_Property_GUID = .(0x78686d53, 0xfcd0, 0x4b83, 0x9b, 0x78, 0x58, 0x32, 0xce, 0x63, 0xbb, 0x5b);
		public const Guid IsTransformPatternAvailable_Property_GUID = .(0xa7f78804, 0xd68b, 0x4077, 0xa5, 0xc6, 0x7a, 0x5e, 0xa1, 0xac, 0x31, 0xc5);
		public const Guid IsValuePatternAvailable_Property_GUID = .(0x0b5020a7, 0x2119, 0x473b, 0xbe, 0x37, 0x5c, 0xeb, 0x98, 0xbb, 0xfb, 0x22);
		public const Guid IsWindowPatternAvailable_Property_GUID = .(0xe7a57bb1, 0x5888, 0x4155, 0x98, 0xdc, 0xb4, 0x22, 0xfd, 0x57, 0xf2, 0xbc);
		public const Guid IsLegacyIAccessiblePatternAvailable_Property_GUID = .(0xd8ebd0c7, 0x929a, 0x4ee7, 0x8d, 0x3a, 0xd3, 0xd9, 0x44, 0x13, 0x02, 0x7b);
		public const Guid IsItemContainerPatternAvailable_Property_GUID = .(0x624b5ca7, 0xfe40, 0x4957, 0xa0, 0x19, 0x20, 0xc4, 0xcf, 0x11, 0x92, 0x0f);
		public const Guid IsVirtualizedItemPatternAvailable_Property_GUID = .(0x302cb151, 0x2ac8, 0x45d6, 0x97, 0x7b, 0xd2, 0xb3, 0xa5, 0xa5, 0x3f, 0x20);
		public const Guid IsSynchronizedInputPatternAvailable_Property_GUID = .(0x75d69cc5, 0xd2bf, 0x4943, 0x87, 0x6e, 0xb4, 0x5b, 0x62, 0xa6, 0xcc, 0x66);
		public const Guid IsObjectModelPatternAvailable_Property_GUID = .(0x6b21d89b, 0x2841, 0x412f, 0x8e, 0xf2, 0x15, 0xca, 0x95, 0x23, 0x18, 0xba);
		public const Guid IsAnnotationPatternAvailable_Property_GUID = .(0x0b5b3238, 0x6d5c, 0x41b6, 0xbc, 0xc4, 0x5e, 0x80, 0x7f, 0x65, 0x51, 0xc4);
		public const Guid IsTextPattern2Available_Property_GUID = .(0x41cf921d, 0xe3f1, 0x4b22, 0x9c, 0x81, 0xe1, 0xc3, 0xed, 0x33, 0x1c, 0x22);
		public const Guid IsTextEditPatternAvailable_Property_GUID = .(0x7843425c, 0x8b32, 0x484c, 0x9a, 0xb5, 0xe3, 0x20, 0x05, 0x71, 0xff, 0xda);
		public const Guid IsCustomNavigationPatternAvailable_Property_GUID = .(0x8f8e80d4, 0x2351, 0x48e0, 0x87, 0x4a, 0x54, 0xaa, 0x73, 0x13, 0x88, 0x9a);
		public const Guid IsStylesPatternAvailable_Property_GUID = .(0x27f353d3, 0x459c, 0x4b59, 0xa4, 0x90, 0x50, 0x61, 0x1d, 0xac, 0xaf, 0xb5);
		public const Guid IsSpreadsheetPatternAvailable_Property_GUID = .(0x6ff43732, 0xe4b4, 0x4555, 0x97, 0xbc, 0xec, 0xdb, 0xbc, 0x4d, 0x18, 0x88);
		public const Guid IsSpreadsheetItemPatternAvailable_Property_GUID = .(0x9fe79b2a, 0x2f94, 0x43fd, 0x99, 0x6b, 0x54, 0x9e, 0x31, 0x6f, 0x4a, 0xcd);
		public const Guid IsTransformPattern2Available_Property_GUID = .(0x25980b4b, 0xbe04, 0x4710, 0xab, 0x4a, 0xfd, 0xa3, 0x1d, 0xbd, 0x28, 0x95);
		public const Guid IsTextChildPatternAvailable_Property_GUID = .(0x559e65df, 0x30ff, 0x43b5, 0xb5, 0xed, 0x5b, 0x28, 0x3b, 0x80, 0xc7, 0xe9);
		public const Guid IsDragPatternAvailable_Property_GUID = .(0xe997a7b7, 0x1d39, 0x4ca7, 0xbe, 0x0f, 0x27, 0x7f, 0xcf, 0x56, 0x05, 0xcc);
		public const Guid IsDropTargetPatternAvailable_Property_GUID = .(0x0686b62e, 0x8e19, 0x4aaf, 0x87, 0x3d, 0x38, 0x4f, 0x6d, 0x3b, 0x92, 0xbe);
		public const Guid IsStructuredMarkupPatternAvailable_Property_GUID = .(0xb0d4c196, 0x2c0b, 0x489c, 0xb1, 0x65, 0xa4, 0x05, 0x92, 0x8c, 0x6f, 0x3d);
		public const Guid IsPeripheral_Property_GUID = .(0xda758276, 0x7ed5, 0x49d4, 0x8e, 0x68, 0xec, 0xc9, 0xa2, 0xd3, 0x00, 0xdd);
		public const Guid PositionInSet_Property_GUID = .(0x33d1dc54, 0x641e, 0x4d76, 0xa6, 0xb1, 0x13, 0xf3, 0x41, 0xc1, 0xf8, 0x96);
		public const Guid SizeOfSet_Property_GUID = .(0x1600d33c, 0x3b9f, 0x4369, 0x94, 0x31, 0xaa, 0x29, 0x3f, 0x34, 0x4c, 0xf1);
		public const Guid Level_Property_GUID = .(0x242ac529, 0xcd36, 0x400f, 0xaa, 0xd9, 0x78, 0x76, 0xef, 0x3a, 0xf6, 0x27);
		public const Guid AnnotationTypes_Property_GUID = .(0x64b71f76, 0x53c4, 0x4696, 0xa2, 0x19, 0x20, 0xe9, 0x40, 0xc9, 0xa1, 0x76);
		public const Guid AnnotationObjects_Property_GUID = .(0x310910c8, 0x7c6e, 0x4f20, 0xbe, 0xcd, 0x4a, 0xaf, 0x6d, 0x19, 0x11, 0x56);
		public const Guid LandmarkType_Property_GUID = .(0x454045f2, 0x6f61, 0x49f7, 0xa4, 0xf8, 0xb5, 0xf0, 0xcf, 0x82, 0xda, 0x1e);
		public const Guid LocalizedLandmarkType_Property_GUID = .(0x7ac81980, 0xeafb, 0x4fb2, 0xbf, 0x91, 0xf4, 0x85, 0xbe, 0xf5, 0xe8, 0xe1);
		public const Guid FullDescription_Property_GUID = .(0x0d4450ff, 0x6aef, 0x4f33, 0x95, 0xdd, 0x7b, 0xef, 0xa7, 0x2a, 0x43, 0x91);
		public const Guid Value_Value_Property_GUID = .(0xe95f5e64, 0x269f, 0x4a85, 0xba, 0x99, 0x40, 0x92, 0xc3, 0xea, 0x29, 0x86);
		public const Guid Value_IsReadOnly_Property_GUID = .(0xeb090f30, 0xe24c, 0x4799, 0xa7, 0x05, 0x0d, 0x24, 0x7b, 0xc0, 0x37, 0xf8);
		public const Guid RangeValue_Value_Property_GUID = .(0x131f5d98, 0xc50c, 0x489d, 0xab, 0xe5, 0xae, 0x22, 0x08, 0x98, 0xc5, 0xf7);
		public const Guid RangeValue_IsReadOnly_Property_GUID = .(0x25fa1055, 0xdebf, 0x4373, 0xa7, 0x9e, 0x1f, 0x1a, 0x19, 0x08, 0xd3, 0xc4);
		public const Guid RangeValue_Minimum_Property_GUID = .(0x78cbd3b2, 0x684d, 0x4860, 0xaf, 0x93, 0xd1, 0xf9, 0x5c, 0xb0, 0x22, 0xfd);
		public const Guid RangeValue_Maximum_Property_GUID = .(0x19319914, 0xf979, 0x4b35, 0xa1, 0xa6, 0xd3, 0x7e, 0x05, 0x43, 0x34, 0x73);
		public const Guid RangeValue_LargeChange_Property_GUID = .(0xa1f96325, 0x3a3d, 0x4b44, 0x8e, 0x1f, 0x4a, 0x46, 0xd9, 0x84, 0x40, 0x19);
		public const Guid RangeValue_SmallChange_Property_GUID = .(0x81c2c457, 0x3941, 0x4107, 0x99, 0x75, 0x13, 0x97, 0x60, 0xf7, 0xc0, 0x72);
		public const Guid Scroll_HorizontalScrollPercent_Property_GUID = .(0xc7c13c0e, 0xeb21, 0x47ff, 0xac, 0xc4, 0xb5, 0xa3, 0x35, 0x0f, 0x51, 0x91);
		public const Guid Scroll_HorizontalViewSize_Property_GUID = .(0x70c2e5d4, 0xfcb0, 0x4713, 0xa9, 0xaa, 0xaf, 0x92, 0xff, 0x79, 0xe4, 0xcd);
		public const Guid Scroll_VerticalScrollPercent_Property_GUID = .(0x6c8d7099, 0xb2a8, 0x4948, 0xbf, 0xf7, 0x3c, 0xf9, 0x05, 0x8b, 0xfe, 0xfb);
		public const Guid Scroll_VerticalViewSize_Property_GUID = .(0xde6a2e22, 0xd8c7, 0x40c5, 0x83, 0xba, 0xe5, 0xf6, 0x81, 0xd5, 0x31, 0x08);
		public const Guid Scroll_HorizontallyScrollable_Property_GUID = .(0x8b925147, 0x28cd, 0x49ae, 0xbd, 0x63, 0xf4, 0x41, 0x18, 0xd2, 0xe7, 0x19);
		public const Guid Scroll_VerticallyScrollable_Property_GUID = .(0x89164798, 0x0068, 0x4315, 0xb8, 0x9a, 0x1e, 0x7c, 0xfb, 0xbc, 0x3d, 0xfc);
		public const Guid Selection_Selection_Property_GUID = .(0xaa6dc2a2, 0x0e2b, 0x4d38, 0x96, 0xd5, 0x34, 0xe4, 0x70, 0xb8, 0x18, 0x53);
		public const Guid Selection_CanSelectMultiple_Property_GUID = .(0x49d73da5, 0xc883, 0x4500, 0x88, 0x3d, 0x8f, 0xcf, 0x8d, 0xaf, 0x6c, 0xbe);
		public const Guid Selection_IsSelectionRequired_Property_GUID = .(0xb1ae4422, 0x63fe, 0x44e7, 0xa5, 0xa5, 0xa7, 0x38, 0xc8, 0x29, 0xb1, 0x9a);
		public const Guid Grid_RowCount_Property_GUID = .(0x2a9505bf, 0xc2eb, 0x4fb6, 0xb3, 0x56, 0x82, 0x45, 0xae, 0x53, 0x70, 0x3e);
		public const Guid Grid_ColumnCount_Property_GUID = .(0xfe96f375, 0x44aa, 0x4536, 0xac, 0x7a, 0x2a, 0x75, 0xd7, 0x1a, 0x3e, 0xfc);
		public const Guid GridItem_Row_Property_GUID = .(0x6223972a, 0xc945, 0x4563, 0x93, 0x29, 0xfd, 0xc9, 0x74, 0xaf, 0x25, 0x53);
		public const Guid GridItem_Column_Property_GUID = .(0xc774c15c, 0x62c0, 0x4519, 0x8b, 0xdc, 0x47, 0xbe, 0x57, 0x3c, 0x8a, 0xd5);
		public const Guid GridItem_RowSpan_Property_GUID = .(0x4582291c, 0x466b, 0x4e93, 0x8e, 0x83, 0x3d, 0x17, 0x15, 0xec, 0x0c, 0x5e);
		public const Guid GridItem_ColumnSpan_Property_GUID = .(0x583ea3f5, 0x86d0, 0x4b08, 0xa6, 0xec, 0x2c, 0x54, 0x63, 0xff, 0xc1, 0x09);
		public const Guid GridItem_Parent_Property_GUID = .(0x9d912252, 0xb97f, 0x4ecc, 0x85, 0x10, 0xea, 0x0e, 0x33, 0x42, 0x7c, 0x72);
		public const Guid Dock_DockPosition_Property_GUID = .(0x6d67f02e, 0xc0b0, 0x4b10, 0xb5, 0xb9, 0x18, 0xd6, 0xec, 0xf9, 0x87, 0x60);
		public const Guid ExpandCollapse_ExpandCollapseState_Property_GUID = .(0x275a4c48, 0x85a7, 0x4f69, 0xab, 0xa0, 0xaf, 0x15, 0x76, 0x10, 0x00, 0x2b);
		public const Guid MultipleView_CurrentView_Property_GUID = .(0x7a81a67a, 0xb94f, 0x4875, 0x91, 0x8b, 0x65, 0xc8, 0xd2, 0xf9, 0x98, 0xe5);
		public const Guid MultipleView_SupportedViews_Property_GUID = .(0x8d5db9fd, 0xce3c, 0x4ae7, 0xb7, 0x88, 0x40, 0x0a, 0x3c, 0x64, 0x55, 0x47);
		public const Guid Window_CanMaximize_Property_GUID = .(0x64fff53f, 0x635d, 0x41c1, 0x95, 0x0c, 0xcb, 0x5a, 0xdf, 0xbe, 0x28, 0xe3);
		public const Guid Window_CanMinimize_Property_GUID = .(0xb73b4625, 0x5988, 0x4b97, 0xb4, 0xc2, 0xa6, 0xfe, 0x6e, 0x78, 0xc8, 0xc6);
		public const Guid Window_WindowVisualState_Property_GUID = .(0x4ab7905f, 0xe860, 0x453e, 0xa3, 0x0a, 0xf6, 0x43, 0x1e, 0x5d, 0xaa, 0xd5);
		public const Guid Window_WindowInteractionState_Property_GUID = .(0x4fed26a4, 0x0455, 0x4fa2, 0xb2, 0x1c, 0xc4, 0xda, 0x2d, 0xb1, 0xff, 0x9c);
		public const Guid Window_IsModal_Property_GUID = .(0xff4e6892, 0x37b9, 0x4fca, 0x85, 0x32, 0xff, 0xe6, 0x74, 0xec, 0xfe, 0xed);
		public const Guid Window_IsTopmost_Property_GUID = .(0xef7d85d3, 0x0937, 0x4962, 0x92, 0x41, 0xb6, 0x23, 0x45, 0xf2, 0x40, 0x41);
		public const Guid SelectionItem_IsSelected_Property_GUID = .(0xf122835f, 0xcd5f, 0x43df, 0xb7, 0x9d, 0x4b, 0x84, 0x9e, 0x9e, 0x60, 0x20);
		public const Guid SelectionItem_SelectionContainer_Property_GUID = .(0xa4365b6e, 0x9c1e, 0x4b63, 0x8b, 0x53, 0xc2, 0x42, 0x1d, 0xd1, 0xe8, 0xfb);
		public const Guid Table_RowHeaders_Property_GUID = .(0xd9e35b87, 0x6eb8, 0x4562, 0xaa, 0xc6, 0xa8, 0xa9, 0x07, 0x52, 0x36, 0xa8);
		public const Guid Table_ColumnHeaders_Property_GUID = .(0xaff1d72b, 0x968d, 0x42b1, 0xb4, 0x59, 0x15, 0x0b, 0x29, 0x9d, 0xa6, 0x64);
		public const Guid Table_RowOrColumnMajor_Property_GUID = .(0x83be75c3, 0x29fe, 0x4a30, 0x85, 0xe1, 0x2a, 0x62, 0x77, 0xfd, 0x10, 0x6e);
		public const Guid TableItem_RowHeaderItems_Property_GUID = .(0xb3f853a0, 0x0574, 0x4cd8, 0xbc, 0xd7, 0xed, 0x59, 0x23, 0x57, 0x2d, 0x97);
		public const Guid TableItem_ColumnHeaderItems_Property_GUID = .(0x967a56a3, 0x74b6, 0x431e, 0x8d, 0xe6, 0x99, 0xc4, 0x11, 0x03, 0x1c, 0x58);
		public const Guid Toggle_ToggleState_Property_GUID = .(0xb23cdc52, 0x22c2, 0x4c6c, 0x9d, 0xed, 0xf5, 0xc4, 0x22, 0x47, 0x9e, 0xde);
		public const Guid Transform_CanMove_Property_GUID = .(0x1b75824d, 0x208b, 0x4fdf, 0xbc, 0xcd, 0xf1, 0xf4, 0xe5, 0x74, 0x1f, 0x4f);
		public const Guid Transform_CanResize_Property_GUID = .(0xbb98dca5, 0x4c1a, 0x41d4, 0xa4, 0xf6, 0xeb, 0xc1, 0x28, 0x64, 0x41, 0x80);
		public const Guid Transform_CanRotate_Property_GUID = .(0x10079b48, 0x3849, 0x476f, 0xac, 0x96, 0x44, 0xa9, 0x5c, 0x84, 0x40, 0xd9);
		public const Guid LegacyIAccessible_ChildId_Property_GUID = .(0x9a191b5d, 0x9ef2, 0x4787, 0xa4, 0x59, 0xdc, 0xde, 0x88, 0x5d, 0xd4, 0xe8);
		public const Guid LegacyIAccessible_Name_Property_GUID = .(0xcaeb063d, 0x40ae, 0x4869, 0xaa, 0x5a, 0x1b, 0x8e, 0x5d, 0x66, 0x67, 0x39);
		public const Guid LegacyIAccessible_Value_Property_GUID = .(0xb5c5b0b6, 0x8217, 0x4a77, 0x97, 0xa5, 0x19, 0x0a, 0x85, 0xed, 0x01, 0x56);
		public const Guid LegacyIAccessible_Description_Property_GUID = .(0x46448418, 0x7d70, 0x4ea9, 0x9d, 0x27, 0xb7, 0xe7, 0x75, 0xcf, 0x2a, 0xd7);
		public const Guid LegacyIAccessible_Role_Property_GUID = .(0x6856e59f, 0xcbaf, 0x4e31, 0x93, 0xe8, 0xbc, 0xbf, 0x6f, 0x7e, 0x49, 0x1c);
		public const Guid LegacyIAccessible_State_Property_GUID = .(0xdf985854, 0x2281, 0x4340, 0xab, 0x9c, 0xc6, 0x0e, 0x2c, 0x58, 0x03, 0xf6);
		public const Guid LegacyIAccessible_Help_Property_GUID = .(0x94402352, 0x161c, 0x4b77, 0xa9, 0x8d, 0xa8, 0x72, 0xcc, 0x33, 0x94, 0x7a);
		public const Guid LegacyIAccessible_KeyboardShortcut_Property_GUID = .(0x8f6909ac, 0x00b8, 0x4259, 0xa4, 0x1c, 0x96, 0x62, 0x66, 0xd4, 0x3a, 0x8a);
		public const Guid LegacyIAccessible_Selection_Property_GUID = .(0x8aa8b1e0, 0x0891, 0x40cc, 0x8b, 0x06, 0x90, 0xd7, 0xd4, 0x16, 0x62, 0x19);
		public const Guid LegacyIAccessible_DefaultAction_Property_GUID = .(0x3b331729, 0xeaad, 0x4502, 0xb8, 0x5f, 0x92, 0x61, 0x56, 0x22, 0x91, 0x3c);
		public const Guid Annotation_AnnotationTypeId_Property_GUID = .(0x20ae484f, 0x69ef, 0x4c48, 0x8f, 0x5b, 0xc4, 0x93, 0x8b, 0x20, 0x6a, 0xc7);
		public const Guid Annotation_AnnotationTypeName_Property_GUID = .(0x9b818892, 0x5ac9, 0x4af9, 0xaa, 0x96, 0xf5, 0x8a, 0x77, 0xb0, 0x58, 0xe3);
		public const Guid Annotation_Author_Property_GUID = .(0x7a528462, 0x9c5c, 0x4a03, 0xa9, 0x74, 0x8b, 0x30, 0x7a, 0x99, 0x37, 0xf2);
		public const Guid Annotation_DateTime_Property_GUID = .(0x99b5ca5d, 0x1acf, 0x414b, 0xa4, 0xd0, 0x6b, 0x35, 0x0b, 0x04, 0x75, 0x78);
		public const Guid Annotation_Target_Property_GUID = .(0xb71b302d, 0x2104, 0x44ad, 0x9c, 0x5c, 0x09, 0x2b, 0x49, 0x07, 0xd7, 0x0f);
		public const Guid Styles_StyleId_Property_GUID = .(0xda82852f, 0x3817, 0x4233, 0x82, 0xaf, 0x02, 0x27, 0x9e, 0x72, 0xcc, 0x77);
		public const Guid Styles_StyleName_Property_GUID = .(0x1c12b035, 0x05d1, 0x4f55, 0x9e, 0x8e, 0x14, 0x89, 0xf3, 0xff, 0x55, 0x0d);
		public const Guid Styles_FillColor_Property_GUID = .(0x63eff97a, 0xa1c5, 0x4b1d, 0x84, 0xeb, 0xb7, 0x65, 0xf2, 0xed, 0xd6, 0x32);
		public const Guid Styles_FillPatternStyle_Property_GUID = .(0x81cf651f, 0x482b, 0x4451, 0xa3, 0x0a, 0xe1, 0x54, 0x5e, 0x55, 0x4f, 0xb8);
		public const Guid Styles_Shape_Property_GUID = .(0xc71a23f8, 0x778c, 0x400d, 0x84, 0x58, 0x3b, 0x54, 0x3e, 0x52, 0x69, 0x84);
		public const Guid Styles_FillPatternColor_Property_GUID = .(0x939a59fe, 0x8fbd, 0x4e75, 0xa2, 0x71, 0xac, 0x45, 0x95, 0x19, 0x51, 0x63);
		public const Guid Styles_ExtendedProperties_Property_GUID = .(0xf451cda0, 0xba0a, 0x4681, 0xb0, 0xb0, 0x0d, 0xbd, 0xb5, 0x3e, 0x58, 0xf3);
		public const Guid SpreadsheetItem_Formula_Property_GUID = .(0xe602e47d, 0x1b47, 0x4bea, 0x87, 0xcf, 0x3b, 0x0b, 0x0b, 0x5c, 0x15, 0xb6);
		public const Guid SpreadsheetItem_AnnotationObjects_Property_GUID = .(0xa3194c38, 0xc9bc, 0x4604, 0x93, 0x96, 0xae, 0x3f, 0x9f, 0x45, 0x7f, 0x7b);
		public const Guid SpreadsheetItem_AnnotationTypes_Property_GUID = .(0xc70c51d0, 0xd602, 0x4b45, 0xaf, 0xbc, 0xb4, 0x71, 0x2b, 0x96, 0xd7, 0x2b);
		public const Guid Transform2_CanZoom_Property_GUID = .(0xf357e890, 0xa756, 0x4359, 0x9c, 0xa6, 0x86, 0x70, 0x2b, 0xf8, 0xf3, 0x81);
		public const Guid LiveSetting_Property_GUID = .(0xc12bcd8e, 0x2a8e, 0x4950, 0x8a, 0xe7, 0x36, 0x25, 0x11, 0x1d, 0x58, 0xeb);
		public const Guid Drag_IsGrabbed_Property_GUID = .(0x45f206f3, 0x75cc, 0x4cca, 0xa9, 0xb9, 0xfc, 0xdf, 0xb9, 0x82, 0xd8, 0xa2);
		public const Guid Drag_GrabbedItems_Property_GUID = .(0x77c1562c, 0x7b86, 0x4b21, 0x9e, 0xd7, 0x3c, 0xef, 0xda, 0x6f, 0x4c, 0x43);
		public const Guid Drag_DropEffect_Property_GUID = .(0x646f2779, 0x48d3, 0x4b23, 0x89, 0x02, 0x4b, 0xf1, 0x00, 0x00, 0x5d, 0xf3);
		public const Guid Drag_DropEffects_Property_GUID = .(0xf5d61156, 0x7ce6, 0x49be, 0xa8, 0x36, 0x92, 0x69, 0xdc, 0xec, 0x92, 0x0f);
		public const Guid DropTarget_DropTargetEffect_Property_GUID = .(0x8bb75975, 0xa0ca, 0x4981, 0xb8, 0x18, 0x87, 0xfc, 0x66, 0xe9, 0x50, 0x9d);
		public const Guid DropTarget_DropTargetEffects_Property_GUID = .(0xbc1dd4ed, 0xcb89, 0x45f1, 0xa5, 0x92, 0xe0, 0x3b, 0x08, 0xae, 0x79, 0x0f);
		public const Guid Transform2_ZoomLevel_Property_GUID = .(0xeee29f1a, 0xf4a2, 0x4b5b, 0xac, 0x65, 0x95, 0xcf, 0x93, 0x28, 0x33, 0x87);
		public const Guid Transform2_ZoomMinimum_Property_GUID = .(0x742ccc16, 0x4ad1, 0x4e07, 0x96, 0xfe, 0xb1, 0x22, 0xc6, 0xe6, 0xb2, 0x2b);
		public const Guid Transform2_ZoomMaximum_Property_GUID = .(0x42ab6b77, 0xceb0, 0x4eca, 0xb8, 0x2a, 0x6c, 0xfa, 0x5f, 0xa1, 0xfc, 0x08);
		public const Guid FlowsFrom_Property_GUID = .(0x05c6844f, 0x19de, 0x48f8, 0x95, 0xfa, 0x88, 0x0d, 0x5b, 0x0f, 0xd6, 0x15);
		public const Guid FillColor_Property_GUID = .(0x6e0ec4d0, 0xe2a8, 0x4a56, 0x9d, 0xe7, 0x95, 0x33, 0x89, 0x93, 0x3b, 0x39);
		public const Guid OutlineColor_Property_GUID = .(0xc395d6c0, 0x4b55, 0x4762, 0xa0, 0x73, 0xfd, 0x30, 0x3a, 0x63, 0x4f, 0x52);
		public const Guid FillType_Property_GUID = .(0xc6fc74e4, 0x8cb9, 0x429c, 0xa9, 0xe1, 0x9b, 0xc4, 0xac, 0x37, 0x2b, 0x62);
		public const Guid VisualEffects_Property_GUID = .(0xe61a8565, 0xaad9, 0x46d7, 0x9e, 0x70, 0x4e, 0x8a, 0x84, 0x20, 0xd4, 0x20);
		public const Guid OutlineThickness_Property_GUID = .(0x13e67cc7, 0xdac2, 0x4888, 0xbd, 0xd3, 0x37, 0x5c, 0x62, 0xfa, 0x96, 0x18);
		public const Guid CenterPoint_Property_GUID = .(0x0cb00c08, 0x540c, 0x4edb, 0x94, 0x45, 0x26, 0x35, 0x9e, 0xa6, 0x97, 0x85);
		public const Guid Rotation_Property_GUID = .(0x767cdc7d, 0xaec0, 0x4110, 0xad, 0x32, 0x30, 0xed, 0xd4, 0x03, 0x49, 0x2e);
		public const Guid Size_Property_GUID = .(0x2b5f761d, 0xf885, 0x4404, 0x97, 0x3f, 0x9b, 0x1d, 0x98, 0xe3, 0x6d, 0x8f);
		public const Guid ToolTipOpened_Event_GUID = .(0x3f4b97ff, 0x2edc, 0x451d, 0xbc, 0xa4, 0x95, 0xa3, 0x18, 0x8d, 0x5b, 0x03);
		public const Guid ToolTipClosed_Event_GUID = .(0x276d71ef, 0x24a9, 0x49b6, 0x8e, 0x97, 0xda, 0x98, 0xb4, 0x01, 0xbb, 0xcd);
		public const Guid StructureChanged_Event_GUID = .(0x59977961, 0x3edd, 0x4b11, 0xb1, 0x3b, 0x67, 0x6b, 0x2a, 0x2a, 0x6c, 0xa9);
		public const Guid MenuOpened_Event_GUID = .(0xebe2e945, 0x66ca, 0x4ed1, 0x9f, 0xf8, 0x2a, 0xd7, 0xdf, 0x0a, 0x1b, 0x08);
		public const Guid AutomationPropertyChanged_Event_GUID = .(0x2527fba1, 0x8d7a, 0x4630, 0xa4, 0xcc, 0xe6, 0x63, 0x15, 0x94, 0x2f, 0x52);
		public const Guid AutomationFocusChanged_Event_GUID = .(0xb68a1f17, 0xf60d, 0x41a7, 0xa3, 0xcc, 0xb0, 0x52, 0x92, 0x15, 0x5f, 0xe0);
		public const Guid ActiveTextPositionChanged_Event_GUID = .(0xa5c09e9c, 0xc77d, 0x4f25, 0xb4, 0x91, 0xe5, 0xbb, 0x70, 0x17, 0xcb, 0xd4);
		public const Guid AsyncContentLoaded_Event_GUID = .(0x5fdee11c, 0xd2fa, 0x4fb9, 0x90, 0x4e, 0x5c, 0xbe, 0xe8, 0x94, 0xd5, 0xef);
		public const Guid MenuClosed_Event_GUID = .(0x3cf1266e, 0x1582, 0x4041, 0xac, 0xd7, 0x88, 0xa3, 0x5a, 0x96, 0x52, 0x97);
		public const Guid LayoutInvalidated_Event_GUID = .(0xed7d6544, 0xa6bd, 0x4595, 0x9b, 0xae, 0x3d, 0x28, 0x94, 0x6c, 0xc7, 0x15);
		public const Guid Invoke_Invoked_Event_GUID = .(0xdfd699f0, 0xc915, 0x49dd, 0xb4, 0x22, 0xdd, 0xe7, 0x85, 0xc3, 0xd2, 0x4b);
		public const Guid SelectionItem_ElementAddedToSelectionEvent_Event_GUID = .(0x3c822dd1, 0xc407, 0x4dba, 0x91, 0xdd, 0x79, 0xd4, 0xae, 0xd0, 0xae, 0xc6);
		public const Guid SelectionItem_ElementRemovedFromSelectionEvent_Event_GUID = .(0x097fa8a9, 0x7079, 0x41af, 0x8b, 0x9c, 0x09, 0x34, 0xd8, 0x30, 0x5e, 0x5c);
		public const Guid SelectionItem_ElementSelectedEvent_Event_GUID = .(0xb9c7dbfb, 0x4ebe, 0x4532, 0xaa, 0xf4, 0x00, 0x8c, 0xf6, 0x47, 0x23, 0x3c);
		public const Guid Selection_InvalidatedEvent_Event_GUID = .(0xcac14904, 0x16b4, 0x4b53, 0x8e, 0x47, 0x4c, 0xb1, 0xdf, 0x26, 0x7b, 0xb7);
		public const Guid Text_TextSelectionChangedEvent_Event_GUID = .(0x918edaa1, 0x71b3, 0x49ae, 0x97, 0x41, 0x79, 0xbe, 0xb8, 0xd3, 0x58, 0xf3);
		public const Guid Text_TextChangedEvent_Event_GUID = .(0x4a342082, 0xf483, 0x48c4, 0xac, 0x11, 0xa8, 0x4b, 0x43, 0x5e, 0x2a, 0x84);
		public const Guid Window_WindowOpened_Event_GUID = .(0xd3e81d06, 0xde45, 0x4f2f, 0x96, 0x33, 0xde, 0x9e, 0x02, 0xfb, 0x65, 0xaf);
		public const Guid Window_WindowClosed_Event_GUID = .(0xedf141f8, 0xfa67, 0x4e22, 0xbb, 0xf7, 0x94, 0x4e, 0x05, 0x73, 0x5e, 0xe2);
		public const Guid MenuModeStart_Event_GUID = .(0x18d7c631, 0x166a, 0x4ac9, 0xae, 0x3b, 0xef, 0x4b, 0x54, 0x20, 0xe6, 0x81);
		public const Guid MenuModeEnd_Event_GUID = .(0x9ecd4c9f, 0x80dd, 0x47b8, 0x82, 0x67, 0x5a, 0xec, 0x06, 0xbb, 0x2c, 0xff);
		public const Guid InputReachedTarget_Event_GUID = .(0x93ed549a, 0x0549, 0x40f0, 0xbe, 0xdb, 0x28, 0xe4, 0x4f, 0x7d, 0xe2, 0xa3);
		public const Guid InputReachedOtherElement_Event_GUID = .(0xed201d8a, 0x4e6c, 0x415e, 0xa8, 0x74, 0x24, 0x60, 0xc9, 0xb6, 0x6b, 0xa8);
		public const Guid InputDiscarded_Event_GUID = .(0x7f36c367, 0x7b18, 0x417c, 0x97, 0xe3, 0x9d, 0x58, 0xdd, 0xc9, 0x44, 0xab);
		public const Guid SystemAlert_Event_GUID = .(0xd271545d, 0x7a3a, 0x47a7, 0x84, 0x74, 0x81, 0xd2, 0x9a, 0x24, 0x51, 0xc9);
		public const Guid LiveRegionChanged_Event_GUID = .(0x102d5e90, 0xe6a9, 0x41b6, 0xb1, 0xc5, 0xa9, 0xb1, 0x92, 0x9d, 0x95, 0x10);
		public const Guid HostedFragmentRootsInvalidated_Event_GUID = .(0xe6bdb03e, 0x0921, 0x4ec5, 0x8d, 0xcf, 0xea, 0xe8, 0x77, 0xb0, 0x42, 0x6b);
		public const Guid Drag_DragStart_Event_GUID = .(0x883a480b, 0x3aa9, 0x429d, 0x95, 0xe4, 0xd9, 0xc8, 0xd0, 0x11, 0xf0, 0xdd);
		public const Guid Drag_DragCancel_Event_GUID = .(0xc3ede6fa, 0x3451, 0x4e0f, 0x9e, 0x71, 0xdf, 0x9c, 0x28, 0x0a, 0x46, 0x57);
		public const Guid Drag_DragComplete_Event_GUID = .(0x38e96188, 0xef1f, 0x463e, 0x91, 0xca, 0x3a, 0x77, 0x92, 0xc2, 0x9c, 0xaf);
		public const Guid DropTarget_DragEnter_Event_GUID = .(0xaad9319b, 0x032c, 0x4a88, 0x96, 0x1d, 0x1c, 0xf5, 0x79, 0x58, 0x1e, 0x34);
		public const Guid DropTarget_DragLeave_Event_GUID = .(0x0f82eb15, 0x24a2, 0x4988, 0x92, 0x17, 0xde, 0x16, 0x2a, 0xee, 0x27, 0x2b);
		public const Guid DropTarget_Dropped_Event_GUID = .(0x622cead8, 0x1edb, 0x4a3d, 0xab, 0xbc, 0xbe, 0x22, 0x11, 0xff, 0x68, 0xb5);
		public const Guid StructuredMarkup_CompositionComplete_Event_GUID = .(0xc48a3c17, 0x677a, 0x4047, 0xa6, 0x8d, 0xfc, 0x12, 0x57, 0x52, 0x8a, 0xef);
		public const Guid StructuredMarkup_Deleted_Event_GUID = .(0xf9d0a020, 0xe1c1, 0x4ecf, 0xb9, 0xaa, 0x52, 0xef, 0xde, 0x7e, 0x41, 0xe1);
		public const Guid StructuredMarkup_SelectionChanged_Event_GUID = .(0xa7c815f7, 0xff9f, 0x41c7, 0xa3, 0xa7, 0xab, 0x6c, 0xbf, 0xdb, 0x49, 0x03);
		public const Guid Invoke_Pattern_GUID = .(0xd976c2fc, 0x66ea, 0x4a6e, 0xb2, 0x8f, 0xc2, 0x4c, 0x75, 0x46, 0xad, 0x37);
		public const Guid Selection_Pattern_GUID = .(0x66e3b7e8, 0xd821, 0x4d25, 0x87, 0x61, 0x43, 0x5d, 0x2c, 0x8b, 0x25, 0x3f);
		public const Guid Value_Pattern_GUID = .(0x17faad9e, 0xc877, 0x475b, 0xb9, 0x33, 0x77, 0x33, 0x27, 0x79, 0xb6, 0x37);
		public const Guid RangeValue_Pattern_GUID = .(0x18b00d87, 0xb1c9, 0x476a, 0xbf, 0xbd, 0x5f, 0x0b, 0xdb, 0x92, 0x6f, 0x63);
		public const Guid Scroll_Pattern_GUID = .(0x895fa4b4, 0x759d, 0x4c50, 0x8e, 0x15, 0x03, 0x46, 0x06, 0x72, 0x00, 0x3c);
		public const Guid ExpandCollapse_Pattern_GUID = .(0xae05efa2, 0xf9d1, 0x428a, 0x83, 0x4c, 0x53, 0xa5, 0xc5, 0x2f, 0x9b, 0x8b);
		public const Guid Grid_Pattern_GUID = .(0x260a2ccb, 0x93a8, 0x4e44, 0xa4, 0xc1, 0x3d, 0xf3, 0x97, 0xf2, 0xb0, 0x2b);
		public const Guid GridItem_Pattern_GUID = .(0xf2d5c877, 0xa462, 0x4957, 0xa2, 0xa5, 0x2c, 0x96, 0xb3, 0x03, 0xbc, 0x63);
		public const Guid MultipleView_Pattern_GUID = .(0x547a6ae4, 0x113f, 0x47c4, 0x85, 0x0f, 0xdb, 0x4d, 0xfa, 0x46, 0x6b, 0x1d);
		public const Guid Window_Pattern_GUID = .(0x27901735, 0xc760, 0x4994, 0xad, 0x11, 0x59, 0x19, 0xe6, 0x06, 0xb1, 0x10);
		public const Guid SelectionItem_Pattern_GUID = .(0x9bc64eeb, 0x87c7, 0x4b28, 0x94, 0xbb, 0x4d, 0x9f, 0xa4, 0x37, 0xb6, 0xef);
		public const Guid Dock_Pattern_GUID = .(0x9cbaa846, 0x83c8, 0x428d, 0x82, 0x7f, 0x7e, 0x60, 0x63, 0xfe, 0x06, 0x20);
		public const Guid Table_Pattern_GUID = .(0xc415218e, 0xa028, 0x461e, 0xaa, 0x92, 0x8f, 0x92, 0x5c, 0xf7, 0x93, 0x51);
		public const Guid TableItem_Pattern_GUID = .(0xdf1343bd, 0x1888, 0x4a29, 0xa5, 0x0c, 0xb9, 0x2e, 0x6d, 0xe3, 0x7f, 0x6f);
		public const Guid Text_Pattern_GUID = .(0x8615f05d, 0x7de5, 0x44fd, 0xa6, 0x79, 0x2c, 0xa4, 0xb4, 0x60, 0x33, 0xa8);
		public const Guid Toggle_Pattern_GUID = .(0x0b419760, 0xe2f4, 0x43ff, 0x8c, 0x5f, 0x94, 0x57, 0xc8, 0x2b, 0x56, 0xe9);
		public const Guid Transform_Pattern_GUID = .(0x24b46fdb, 0x587e, 0x49f1, 0x9c, 0x4a, 0xd8, 0xe9, 0x8b, 0x66, 0x4b, 0x7b);
		public const Guid ScrollItem_Pattern_GUID = .(0x4591d005, 0xa803, 0x4d5c, 0xb4, 0xd5, 0x8d, 0x28, 0x00, 0xf9, 0x06, 0xa7);
		public const Guid LegacyIAccessible_Pattern_GUID = .(0x54cc0a9f, 0x3395, 0x48af, 0xba, 0x8d, 0x73, 0xf8, 0x56, 0x90, 0xf3, 0xe0);
		public const Guid ItemContainer_Pattern_GUID = .(0x3d13da0f, 0x8b9a, 0x4a99, 0x85, 0xfa, 0xc5, 0xc9, 0xa6, 0x9f, 0x1e, 0xd4);
		public const Guid VirtualizedItem_Pattern_GUID = .(0xf510173e, 0x2e71, 0x45e9, 0xa6, 0xe5, 0x62, 0xf6, 0xed, 0x82, 0x89, 0xd5);
		public const Guid SynchronizedInput_Pattern_GUID = .(0x05c288a6, 0xc47b, 0x488b, 0xb6, 0x53, 0x33, 0x97, 0x7a, 0x55, 0x1b, 0x8b);
		public const Guid ObjectModel_Pattern_GUID = .(0x3e04acfe, 0x08fc, 0x47ec, 0x96, 0xbc, 0x35, 0x3f, 0xa3, 0xb3, 0x4a, 0xa7);
		public const Guid Annotation_Pattern_GUID = .(0xf6c72ad7, 0x356c, 0x4850, 0x92, 0x91, 0x31, 0x6f, 0x60, 0x8a, 0x8c, 0x84);
		public const Guid Text_Pattern2_GUID = .(0x498479a2, 0x5b22, 0x448d, 0xb6, 0xe4, 0x64, 0x74, 0x90, 0x86, 0x06, 0x98);
		public const Guid TextEdit_Pattern_GUID = .(0x69f3ff89, 0x5af9, 0x4c75, 0x93, 0x40, 0xf2, 0xde, 0x29, 0x2e, 0x45, 0x91);
		public const Guid CustomNavigation_Pattern_GUID = .(0xafea938a, 0x621e, 0x4054, 0xbb, 0x2c, 0x2f, 0x46, 0x11, 0x4d, 0xac, 0x3f);
		public const Guid Styles_Pattern_GUID = .(0x1ae62655, 0xda72, 0x4d60, 0xa1, 0x53, 0xe5, 0xaa, 0x69, 0x88, 0xe3, 0xbf);
		public const Guid Spreadsheet_Pattern_GUID = .(0x6a5b24c9, 0x9d1e, 0x4b85, 0x9e, 0x44, 0xc0, 0x2e, 0x31, 0x69, 0xb1, 0x0b);
		public const Guid SpreadsheetItem_Pattern_GUID = .(0x32cf83ff, 0xf1a8, 0x4a8c, 0x86, 0x58, 0xd4, 0x7b, 0xa7, 0x4e, 0x20, 0xba);
		public const Guid Tranform_Pattern2_GUID = .(0x8afcfd07, 0xa369, 0x44de, 0x98, 0x8b, 0x2f, 0x7f, 0xf4, 0x9f, 0xb8, 0xa8);
		public const Guid TextChild_Pattern_GUID = .(0x7533cab7, 0x3bfe, 0x41ef, 0x9e, 0x85, 0xe2, 0x63, 0x8c, 0xbe, 0x16, 0x9e);
		public const Guid Drag_Pattern_GUID = .(0xc0bee21f, 0xccb3, 0x4fed, 0x99, 0x5b, 0x11, 0x4f, 0x6e, 0x3d, 0x27, 0x28);
		public const Guid DropTarget_Pattern_GUID = .(0x0bcbec56, 0xbd34, 0x4b7b, 0x9f, 0xd5, 0x26, 0x59, 0x90, 0x5e, 0xa3, 0xdc);
		public const Guid StructuredMarkup_Pattern_GUID = .(0xabbd0878, 0x8665, 0x4f5c, 0x94, 0xfc, 0x36, 0xe7, 0xd8, 0xbb, 0x70, 0x6b);
		public const Guid Button_Control_GUID = .(0x5a78e369, 0xc6a1, 0x4f33, 0xa9, 0xd7, 0x79, 0xf2, 0x0d, 0x0c, 0x78, 0x8e);
		public const Guid Calendar_Control_GUID = .(0x8913eb88, 0x00e5, 0x46bc, 0x8e, 0x4e, 0x14, 0xa7, 0x86, 0xe1, 0x65, 0xa1);
		public const Guid CheckBox_Control_GUID = .(0xfb50f922, 0xa3db, 0x49c0, 0x8b, 0xc3, 0x06, 0xda, 0xd5, 0x57, 0x78, 0xe2);
		public const Guid ComboBox_Control_GUID = .(0x54cb426c, 0x2f33, 0x4fff, 0xaa, 0xa1, 0xae, 0xf6, 0x0d, 0xac, 0x5d, 0xeb);
		public const Guid Edit_Control_GUID = .(0x6504a5c8, 0x2c86, 0x4f87, 0xae, 0x7b, 0x1a, 0xbd, 0xdc, 0x81, 0x0c, 0xf9);
		public const Guid Hyperlink_Control_GUID = .(0x8a56022c, 0xb00d, 0x4d15, 0x8f, 0xf0, 0x5b, 0x6b, 0x26, 0x6e, 0x5e, 0x02);
		public const Guid Image_Control_GUID = .(0x2d3736e4, 0x6b16, 0x4c57, 0xa9, 0x62, 0xf9, 0x32, 0x60, 0xa7, 0x52, 0x43);
		public const Guid ListItem_Control_GUID = .(0x7b3717f2, 0x44d1, 0x4a58, 0x98, 0xa8, 0xf1, 0x2a, 0x9b, 0x8f, 0x78, 0xe2);
		public const Guid List_Control_GUID = .(0x9b149ee1, 0x7cca, 0x4cfc, 0x9a, 0xf1, 0xca, 0xc7, 0xbd, 0xdd, 0x30, 0x31);
		public const Guid Menu_Control_GUID = .(0x2e9b1440, 0x0ea8, 0x41fd, 0xb3, 0x74, 0xc1, 0xea, 0x6f, 0x50, 0x3c, 0xd1);
		public const Guid MenuBar_Control_GUID = .(0xcc384250, 0x0e7b, 0x4ae8, 0x95, 0xae, 0xa0, 0x8f, 0x26, 0x1b, 0x52, 0xee);
		public const Guid MenuItem_Control_GUID = .(0xf45225d3, 0xd0a0, 0x49d8, 0x98, 0x34, 0x9a, 0x00, 0x0d, 0x2a, 0xed, 0xdc);
		public const Guid ProgressBar_Control_GUID = .(0x228c9f86, 0xc36c, 0x47bb, 0x9f, 0xb6, 0xa5, 0x83, 0x4b, 0xfc, 0x53, 0xa4);
		public const Guid RadioButton_Control_GUID = .(0x3bdb49db, 0xfe2c, 0x4483, 0xb3, 0xe1, 0xe5, 0x7f, 0x21, 0x94, 0x40, 0xc6);
		public const Guid ScrollBar_Control_GUID = .(0xdaf34b36, 0x5065, 0x4946, 0xb2, 0x2f, 0x92, 0x59, 0x5f, 0xc0, 0x75, 0x1a);
		public const Guid Slider_Control_GUID = .(0xb033c24b, 0x3b35, 0x4cea, 0xb6, 0x09, 0x76, 0x36, 0x82, 0xfa, 0x66, 0x0b);
		public const Guid Spinner_Control_GUID = .(0x60cc4b38, 0x3cb1, 0x4161, 0xb4, 0x42, 0xc6, 0xb7, 0x26, 0xc1, 0x78, 0x25);
		public const Guid StatusBar_Control_GUID = .(0xd45e7d1b, 0x5873, 0x475f, 0x95, 0xa4, 0x04, 0x33, 0xe1, 0xf1, 0xb0, 0x0a);
		public const Guid Tab_Control_GUID = .(0x38cd1f2d, 0x337a, 0x4bd2, 0xa5, 0xe3, 0xad, 0xb4, 0x69, 0xe3, 0x0b, 0xd3);
		public const Guid TabItem_Control_GUID = .(0x2c6a634f, 0x921b, 0x4e6e, 0xb2, 0x6e, 0x08, 0xfc, 0xb0, 0x79, 0x8f, 0x4c);
		public const Guid Text_Control_GUID = .(0xae9772dc, 0xd331, 0x4f09, 0xbe, 0x20, 0x7e, 0x6d, 0xfa, 0xf0, 0x7b, 0x0a);
		public const Guid ToolBar_Control_GUID = .(0x8f06b751, 0xe182, 0x4e98, 0x88, 0x93, 0x22, 0x84, 0x54, 0x3a, 0x7d, 0xce);
		public const Guid ToolTip_Control_GUID = .(0x05ddc6d1, 0x2137, 0x4768, 0x98, 0xea, 0x73, 0xf5, 0x2f, 0x71, 0x34, 0xf3);
		public const Guid Tree_Control_GUID = .(0x7561349c, 0xd241, 0x43f4, 0x99, 0x08, 0xb5, 0xf0, 0x91, 0xbe, 0xe6, 0x11);
		public const Guid TreeItem_Control_GUID = .(0x62c9feb9, 0x8ffc, 0x4878, 0xa3, 0xa4, 0x96, 0xb0, 0x30, 0x31, 0x5c, 0x18);
		public const Guid Custom_Control_GUID = .(0xf29ea0c3, 0xadb7, 0x430a, 0xba, 0x90, 0xe5, 0x2c, 0x73, 0x13, 0xe6, 0xed);
		public const Guid Group_Control_GUID = .(0xad50aa1c, 0xe8c8, 0x4774, 0xae, 0x1b, 0xdd, 0x86, 0xdf, 0x0b, 0x3b, 0xdc);
		public const Guid Thumb_Control_GUID = .(0x701ca877, 0xe310, 0x4dd6, 0xb6, 0x44, 0x79, 0x7e, 0x4f, 0xae, 0xa2, 0x13);
		public const Guid DataGrid_Control_GUID = .(0x84b783af, 0xd103, 0x4b0a, 0x84, 0x15, 0xe7, 0x39, 0x42, 0x41, 0x0f, 0x4b);
		public const Guid DataItem_Control_GUID = .(0xa0177842, 0xd94f, 0x42a5, 0x81, 0x4b, 0x60, 0x68, 0xad, 0xdc, 0x8d, 0xa5);
		public const Guid Document_Control_GUID = .(0x3cd6bb6f, 0x6f08, 0x4562, 0xb2, 0x29, 0xe4, 0xe2, 0xfc, 0x7a, 0x9e, 0xb4);
		public const Guid SplitButton_Control_GUID = .(0x7011f01f, 0x4ace, 0x4901, 0xb4, 0x61, 0x92, 0x0a, 0x6f, 0x1c, 0xa6, 0x50);
		public const Guid Window_Control_GUID = .(0xe13a7242, 0xf462, 0x4f4d, 0xae, 0xc1, 0x53, 0xb2, 0x8d, 0x6c, 0x32, 0x90);
		public const Guid Pane_Control_GUID = .(0x5c2b3f5b, 0x9182, 0x42a3, 0x8d, 0xec, 0x8c, 0x04, 0xc1, 0xee, 0x63, 0x4d);
		public const Guid Header_Control_GUID = .(0x5b90cbce, 0x78fb, 0x4614, 0x82, 0xb6, 0x55, 0x4d, 0x74, 0x71, 0x8e, 0x67);
		public const Guid HeaderItem_Control_GUID = .(0xe6bc12cb, 0x7c8e, 0x49cf, 0xb1, 0x68, 0x4a, 0x93, 0xa3, 0x2b, 0xeb, 0xb0);
		public const Guid Table_Control_GUID = .(0x773bfa0e, 0x5bc4, 0x4deb, 0x92, 0x1b, 0xde, 0x7b, 0x32, 0x06, 0x22, 0x9e);
		public const Guid TitleBar_Control_GUID = .(0x98aa55bf, 0x3bb0, 0x4b65, 0x83, 0x6e, 0x2e, 0xa3, 0x0d, 0xbc, 0x17, 0x1f);
		public const Guid Separator_Control_GUID = .(0x8767eba3, 0x2a63, 0x4ab0, 0xac, 0x8d, 0xaa, 0x50, 0xe2, 0x3d, 0xe9, 0x78);
		public const Guid SemanticZoom_Control_GUID = .(0x5fd34a43, 0x061e, 0x42c8, 0xb5, 0x89, 0x9d, 0xcc, 0xf7, 0x4b, 0xc4, 0x3a);
		public const Guid AppBar_Control_GUID = .(0x6114908d, 0xcc02, 0x4d37, 0x87, 0x5b, 0xb5, 0x30, 0xc7, 0x13, 0x95, 0x54);
		public const Guid Text_AnimationStyle_Attribute_GUID = .(0x628209f0, 0x7c9a, 0x4d57, 0xbe, 0x64, 0x1f, 0x18, 0x36, 0x57, 0x1f, 0xf5);
		public const Guid Text_BackgroundColor_Attribute_GUID = .(0xfdc49a07, 0x583d, 0x4f17, 0xad, 0x27, 0x77, 0xfc, 0x83, 0x2a, 0x3c, 0x0b);
		public const Guid Text_BulletStyle_Attribute_GUID = .(0xc1097c90, 0xd5c4, 0x4237, 0x97, 0x81, 0x3b, 0xec, 0x8b, 0xa5, 0x4e, 0x48);
		public const Guid Text_CapStyle_Attribute_GUID = .(0xfb059c50, 0x92cc, 0x49a5, 0xba, 0x8f, 0x0a, 0xa8, 0x72, 0xbb, 0xa2, 0xf3);
		public const Guid Text_Culture_Attribute_GUID = .(0xc2025af9, 0xa42d, 0x4ced, 0xa1, 0xfb, 0xc6, 0x74, 0x63, 0x15, 0x22, 0x2e);
		public const Guid Text_FontName_Attribute_GUID = .(0x64e63ba8, 0xf2e5, 0x476e, 0xa4, 0x77, 0x17, 0x34, 0xfe, 0xaa, 0xf7, 0x26);
		public const Guid Text_FontSize_Attribute_GUID = .(0xdc5eeeff, 0x0506, 0x4673, 0x93, 0xf2, 0x37, 0x7e, 0x4a, 0x8e, 0x01, 0xf1);
		public const Guid Text_FontWeight_Attribute_GUID = .(0x6fc02359, 0xb316, 0x4f5f, 0xb4, 0x01, 0xf1, 0xce, 0x55, 0x74, 0x18, 0x53);
		public const Guid Text_ForegroundColor_Attribute_GUID = .(0x72d1c95d, 0x5e60, 0x471a, 0x96, 0xb1, 0x6c, 0x1b, 0x3b, 0x77, 0xa4, 0x36);
		public const Guid Text_HorizontalTextAlignment_Attribute_GUID = .(0x04ea6161, 0xfba3, 0x477a, 0x95, 0x2a, 0xbb, 0x32, 0x6d, 0x02, 0x6a, 0x5b);
		public const Guid Text_IndentationFirstLine_Attribute_GUID = .(0x206f9ad5, 0xc1d3, 0x424a, 0x81, 0x82, 0x6d, 0xa9, 0xa7, 0xf3, 0xd6, 0x32);
		public const Guid Text_IndentationLeading_Attribute_GUID = .(0x5cf66bac, 0x2d45, 0x4a4b, 0xb6, 0xc9, 0xf7, 0x22, 0x1d, 0x28, 0x15, 0xb0);
		public const Guid Text_IndentationTrailing_Attribute_GUID = .(0x97ff6c0f, 0x1ce4, 0x408a, 0xb6, 0x7b, 0x94, 0xd8, 0x3e, 0xb6, 0x9b, 0xf2);
		public const Guid Text_IsHidden_Attribute_GUID = .(0x360182fb, 0xbdd7, 0x47f6, 0xab, 0x69, 0x19, 0xe3, 0x3f, 0x8a, 0x33, 0x44);
		public const Guid Text_IsItalic_Attribute_GUID = .(0xfce12a56, 0x1336, 0x4a34, 0x96, 0x63, 0x1b, 0xab, 0x47, 0x23, 0x93, 0x20);
		public const Guid Text_IsReadOnly_Attribute_GUID = .(0xa738156b, 0xca3e, 0x495e, 0x95, 0x14, 0x83, 0x3c, 0x44, 0x0f, 0xeb, 0x11);
		public const Guid Text_IsSubscript_Attribute_GUID = .(0xf0ead858, 0x8f53, 0x413c, 0x87, 0x3f, 0x1a, 0x7d, 0x7f, 0x5e, 0x0d, 0xe4);
		public const Guid Text_IsSuperscript_Attribute_GUID = .(0xda706ee4, 0xb3aa, 0x4645, 0xa4, 0x1f, 0xcd, 0x25, 0x15, 0x7d, 0xea, 0x76);
		public const Guid Text_MarginBottom_Attribute_GUID = .(0x7ee593c4, 0x72b4, 0x4cac, 0x92, 0x71, 0x3e, 0xd2, 0x4b, 0x0e, 0x4d, 0x42);
		public const Guid Text_MarginLeading_Attribute_GUID = .(0x9e9242d0, 0x5ed0, 0x4900, 0x8e, 0x8a, 0xee, 0xcc, 0x03, 0x83, 0x5a, 0xfc);
		public const Guid Text_MarginTop_Attribute_GUID = .(0x683d936f, 0xc9b9, 0x4a9a, 0xb3, 0xd9, 0xd2, 0x0d, 0x33, 0x31, 0x1e, 0x2a);
		public const Guid Text_MarginTrailing_Attribute_GUID = .(0xaf522f98, 0x999d, 0x40af, 0xa5, 0xb2, 0x01, 0x69, 0xd0, 0x34, 0x20, 0x02);
		public const Guid Text_OutlineStyles_Attribute_GUID = .(0x5b675b27, 0xdb89, 0x46fe, 0x97, 0x0c, 0x61, 0x4d, 0x52, 0x3b, 0xb9, 0x7d);
		public const Guid Text_OverlineColor_Attribute_GUID = .(0x83ab383a, 0xfd43, 0x40da, 0xab, 0x3e, 0xec, 0xf8, 0x16, 0x5c, 0xbb, 0x6d);
		public const Guid Text_OverlineStyle_Attribute_GUID = .(0x0a234d66, 0x617e, 0x427f, 0x87, 0x1d, 0xe1, 0xff, 0x1e, 0x0c, 0x21, 0x3f);
		public const Guid Text_StrikethroughColor_Attribute_GUID = .(0xbfe15a18, 0x8c41, 0x4c5a, 0x9a, 0x0b, 0x04, 0xaf, 0x0e, 0x07, 0xf4, 0x87);
		public const Guid Text_StrikethroughStyle_Attribute_GUID = .(0x72913ef1, 0xda00, 0x4f01, 0x89, 0x9c, 0xac, 0x5a, 0x85, 0x77, 0xa3, 0x07);
		public const Guid Text_Tabs_Attribute_GUID = .(0x2e68d00b, 0x92fe, 0x42d8, 0x89, 0x9a, 0xa7, 0x84, 0xaa, 0x44, 0x54, 0xa1);
		public const Guid Text_TextFlowDirections_Attribute_GUID = .(0x8bdf8739, 0xf420, 0x423e, 0xaf, 0x77, 0x20, 0xa5, 0xd9, 0x73, 0xa9, 0x07);
		public const Guid Text_UnderlineColor_Attribute_GUID = .(0xbfa12c73, 0xfde2, 0x4473, 0xbf, 0x64, 0x10, 0x36, 0xd6, 0xaa, 0x0f, 0x45);
		public const Guid Text_UnderlineStyle_Attribute_GUID = .(0x5f3b21c0, 0xede4, 0x44bd, 0x9c, 0x36, 0x38, 0x53, 0x03, 0x8c, 0xbf, 0xeb);
		public const Guid Text_AnnotationTypes_Attribute_GUID = .(0xad2eb431, 0xee4e, 0x4be1, 0xa7, 0xba, 0x55, 0x59, 0x15, 0x5a, 0x73, 0xef);
		public const Guid Text_AnnotationObjects_Attribute_GUID = .(0xff41cf68, 0xe7ab, 0x40b9, 0x8c, 0x72, 0x72, 0xa8, 0xed, 0x94, 0x01, 0x7d);
		public const Guid Text_StyleName_Attribute_GUID = .(0x22c9e091, 0x4d66, 0x45d8, 0xa8, 0x28, 0x73, 0x7b, 0xab, 0x4c, 0x98, 0xa7);
		public const Guid Text_StyleId_Attribute_GUID = .(0x14c300de, 0xc32b, 0x449b, 0xab, 0x7c, 0xb0, 0xe0, 0x78, 0x9a, 0xea, 0x5d);
		public const Guid Text_Link_Attribute_GUID = .(0xb38ef51d, 0x9e8d, 0x4e46, 0x91, 0x44, 0x56, 0xeb, 0xe1, 0x77, 0x32, 0x9b);
		public const Guid Text_IsActive_Attribute_GUID = .(0xf5a4e533, 0xe1b8, 0x436b, 0x93, 0x5d, 0xb5, 0x7a, 0xa3, 0xf5, 0x58, 0xc4);
		public const Guid Text_SelectionActiveEnd_Attribute_GUID = .(0x1f668cc3, 0x9bbf, 0x416b, 0xb0, 0xa2, 0xf8, 0x9f, 0x86, 0xf6, 0x61, 0x2c);
		public const Guid Text_CaretPosition_Attribute_GUID = .(0xb227b131, 0x9889, 0x4752, 0xa9, 0x1b, 0x73, 0x3e, 0xfd, 0xc5, 0xc5, 0xa0);
		public const Guid Text_CaretBidiMode_Attribute_GUID = .(0x929ee7a6, 0x51d3, 0x4715, 0x96, 0xdc, 0xb6, 0x94, 0xfa, 0x24, 0xa1, 0x68);
		public const Guid Text_BeforeParagraphSpacing_Attribute_GUID = .(0xbe7b0ab1, 0xc822, 0x4a24, 0x85, 0xe9, 0xc8, 0xf2, 0x65, 0x0f, 0xc7, 0x9c);
		public const Guid Text_AfterParagraphSpacing_Attribute_GUID = .(0x588cbb38, 0xe62f, 0x497c, 0xb5, 0xd1, 0xcc, 0xdf, 0x0e, 0xe8, 0x23, 0xd8);
		public const Guid Text_LineSpacing_Attribute_GUID = .(0x63ff70ae, 0xd943, 0x4b47, 0x8a, 0xb7, 0xa7, 0xa0, 0x33, 0xd3, 0x21, 0x4b);
		public const Guid Text_BeforeSpacing_Attribute_GUID = .(0xbe7b0ab1, 0xc822, 0x4a24, 0x85, 0xe9, 0xc8, 0xf2, 0x65, 0x0f, 0xc7, 0x9c);
		public const Guid Text_AfterSpacing_Attribute_GUID = .(0x588cbb38, 0xe62f, 0x497c, 0xb5, 0xd1, 0xcc, 0xdf, 0x0e, 0xe8, 0x23, 0xd8);
		public const Guid Text_SayAsInterpretAs_Attribute_GUID = .(0xb38ad6ac, 0xeee1, 0x4b6e, 0x88, 0xcc, 0x01, 0x4c, 0xef, 0xa9, 0x3f, 0xcb);
		public const Guid TextEdit_TextChanged_Event_GUID = .(0x120b0308, 0xec22, 0x4eb8, 0x9c, 0x98, 0x98, 0x67, 0xcd, 0xa1, 0xb1, 0x65);
		public const Guid TextEdit_ConversionTargetChanged_Event_GUID = .(0x3388c183, 0xed4f, 0x4c8b, 0x9b, 0xaa, 0x36, 0x4d, 0x51, 0xd8, 0x84, 0x7f);
		public const Guid Changes_Event_GUID = .(0x7df26714, 0x614f, 0x4e05, 0x94, 0x88, 0x71, 0x6c, 0x5b, 0xa1, 0x94, 0x36);
		public const Guid Annotation_Custom_GUID = .(0x9ec82750, 0x3931, 0x4952, 0x85, 0xbc, 0x1d, 0xbf, 0xf7, 0x8a, 0x43, 0xe3);
		public const Guid Annotation_SpellingError_GUID = .(0xae85567e, 0x9ece, 0x423f, 0x81, 0xb7, 0x96, 0xc4, 0x3d, 0x53, 0xe5, 0x0e);
		public const Guid Annotation_GrammarError_GUID = .(0x757a048d, 0x4518, 0x41c6, 0x85, 0x4c, 0xdc, 0x00, 0x9b, 0x7c, 0xfb, 0x53);
		public const Guid Annotation_Comment_GUID = .(0xfd2fda30, 0x26b3, 0x4c06, 0x8b, 0xc7, 0x98, 0xf1, 0x53, 0x2e, 0x46, 0xfd);
		public const Guid Annotation_FormulaError_GUID = .(0x95611982, 0x0cab, 0x46d5, 0xa2, 0xf0, 0xe3, 0x0d, 0x19, 0x05, 0xf8, 0xbf);
		public const Guid Annotation_TrackChanges_GUID = .(0x21e6e888, 0xdc14, 0x4016, 0xac, 0x27, 0x19, 0x05, 0x53, 0xc8, 0xc4, 0x70);
		public const Guid Annotation_Header_GUID = .(0x867b409b, 0xb216, 0x4472, 0xa2, 0x19, 0x52, 0x5e, 0x31, 0x06, 0x81, 0xf8);
		public const Guid Annotation_Footer_GUID = .(0xcceab046, 0x1833, 0x47aa, 0x80, 0x80, 0x70, 0x1e, 0xd0, 0xb0, 0xc8, 0x32);
		public const Guid Annotation_Highlighted_GUID = .(0x757c884e, 0x8083, 0x4081, 0x8b, 0x9c, 0xe8, 0x7f, 0x50, 0x72, 0xf0, 0xe4);
		public const Guid Annotation_Endnote_GUID = .(0x7565725c, 0x2d99, 0x4839, 0x96, 0x0d, 0x33, 0xd3, 0xb8, 0x66, 0xab, 0xa5);
		public const Guid Annotation_Footnote_GUID = .(0x3de10e21, 0x4125, 0x42db, 0x86, 0x20, 0xbe, 0x80, 0x83, 0x08, 0x06, 0x24);
		public const Guid Annotation_InsertionChange_GUID = .(0x0dbeb3a6, 0xdf15, 0x4164, 0xa3, 0xc0, 0xe2, 0x1a, 0x8c, 0xe9, 0x31, 0xc4);
		public const Guid Annotation_DeletionChange_GUID = .(0xbe3d5b05, 0x951d, 0x42e7, 0x90, 0x1d, 0xad, 0xc8, 0xc2, 0xcf, 0x34, 0xd0);
		public const Guid Annotation_MoveChange_GUID = .(0x9da587eb, 0x23e5, 0x4490, 0xb3, 0x85, 0x1a, 0x22, 0xdd, 0xc8, 0xb1, 0x87);
		public const Guid Annotation_FormatChange_GUID = .(0xeb247345, 0xd4f1, 0x41ce, 0x8e, 0x52, 0xf7, 0x9b, 0x69, 0x63, 0x5e, 0x48);
		public const Guid Annotation_UnsyncedChange_GUID = .(0x1851116a, 0x0e47, 0x4b30, 0x8c, 0xb5, 0xd7, 0xda, 0xe4, 0xfb, 0xcd, 0x1b);
		public const Guid Annotation_EditingLockedChange_GUID = .(0xc31f3e1c, 0x7423, 0x4dac, 0x83, 0x48, 0x41, 0xf0, 0x99, 0xff, 0x6f, 0x64);
		public const Guid Annotation_ExternalChange_GUID = .(0x75a05b31, 0x5f11, 0x42fd, 0x88, 0x7d, 0xdf, 0xa0, 0x10, 0xdb, 0x23, 0x92);
		public const Guid Annotation_ConflictingChange_GUID = .(0x98af8802, 0x517c, 0x459f, 0xaf, 0x13, 0x01, 0x6d, 0x3f, 0xab, 0x87, 0x7e);
		public const Guid Annotation_Author_GUID = .(0xf161d3a7, 0xf81b, 0x4128, 0xb1, 0x7f, 0x71, 0xf6, 0x90, 0x91, 0x45, 0x20);
		public const Guid Annotation_AdvancedProofingIssue_GUID = .(0xdac7b72c, 0xc0f2, 0x4b84, 0xb9, 0x0d, 0x5f, 0xaf, 0xc0, 0xf0, 0xef, 0x1c);
		public const Guid Annotation_DataValidationError_GUID = .(0xc8649fa8, 0x9775, 0x437e, 0xad, 0x46, 0xe7, 0x09, 0xd9, 0x3c, 0x23, 0x43);
		public const Guid Annotation_CircularReferenceError_GUID = .(0x25bd9cf4, 0x1745, 0x4659, 0xba, 0x67, 0x72, 0x7f, 0x03, 0x18, 0xc6, 0x16);
		public const Guid Annotation_Mathematics_GUID = .(0xeaab634b, 0x26d0, 0x40c1, 0x80, 0x73, 0x57, 0xca, 0x1c, 0x63, 0x3c, 0x9b);
		public const Guid Annotation_Sensitive_GUID = .(0x37f4c04f, 0x0f12, 0x4464, 0x92, 0x9c, 0x82, 0x8f, 0xd1, 0x52, 0x92, 0xe3);
		public const Guid Changes_Summary_GUID = .(0x313d65a6, 0xe60f, 0x4d62, 0x98, 0x61, 0x55, 0xaf, 0xd7, 0x28, 0xd2, 0x07);
		public const Guid StyleId_Custom_GUID = .(0xef2edd3e, 0xa999, 0x4b7c, 0xa3, 0x78, 0x09, 0xbb, 0xd5, 0x2a, 0x35, 0x16);
		public const Guid StyleId_Heading1_GUID = .(0x7f7e8f69, 0x6866, 0x4621, 0x93, 0x0c, 0x9a, 0x5d, 0x0c, 0xa5, 0x96, 0x1c);
		public const Guid StyleId_Heading2_GUID = .(0xbaa9b241, 0x5c69, 0x469d, 0x85, 0xad, 0x47, 0x47, 0x37, 0xb5, 0x2b, 0x14);
		public const Guid StyleId_Heading3_GUID = .(0xbf8be9d2, 0xd8b8, 0x4ec5, 0x8c, 0x52, 0x9c, 0xfb, 0x0d, 0x03, 0x59, 0x70);
		public const Guid StyleId_Heading4_GUID = .(0x8436ffc0, 0x9578, 0x45fc, 0x83, 0xa4, 0xff, 0x40, 0x05, 0x33, 0x15, 0xdd);
		public const Guid StyleId_Heading5_GUID = .(0x909f424d, 0x0dbf, 0x406e, 0x97, 0xbb, 0x4e, 0x77, 0x3d, 0x97, 0x98, 0xf7);
		public const Guid StyleId_Heading6_GUID = .(0x89d23459, 0x5d5b, 0x4824, 0xa4, 0x20, 0x11, 0xd3, 0xed, 0x82, 0xe4, 0x0f);
		public const Guid StyleId_Heading7_GUID = .(0xa3790473, 0xe9ae, 0x422d, 0xb8, 0xe3, 0x3b, 0x67, 0x5c, 0x61, 0x81, 0xa4);
		public const Guid StyleId_Heading8_GUID = .(0x2bc14145, 0xa40c, 0x4881, 0x84, 0xae, 0xf2, 0x23, 0x56, 0x85, 0x38, 0x0c);
		public const Guid StyleId_Heading9_GUID = .(0xc70d9133, 0xbb2a, 0x43d3, 0x8a, 0xc6, 0x33, 0x65, 0x78, 0x84, 0xb0, 0xf0);
		public const Guid StyleId_Title_GUID = .(0x15d8201a, 0xffcf, 0x481f, 0xb0, 0xa1, 0x30, 0xb6, 0x3b, 0xe9, 0x8f, 0x07);
		public const Guid StyleId_Subtitle_GUID = .(0xb5d9fc17, 0x5d6f, 0x4420, 0xb4, 0x39, 0x7c, 0xb1, 0x9a, 0xd4, 0x34, 0xe2);
		public const Guid StyleId_Normal_GUID = .(0xcd14d429, 0xe45e, 0x4475, 0xa1, 0xc5, 0x7f, 0x9e, 0x6b, 0xe9, 0x6e, 0xba);
		public const Guid StyleId_Emphasis_GUID = .(0xca6e7dbe, 0x355e, 0x4820, 0x95, 0xa0, 0x92, 0x5f, 0x04, 0x1d, 0x34, 0x70);
		public const Guid StyleId_Quote_GUID = .(0x5d1c21ea, 0x8195, 0x4f6c, 0x87, 0xea, 0x5d, 0xab, 0xec, 0xe6, 0x4c, 0x1d);
		public const Guid StyleId_BulletedList_GUID = .(0x5963ed64, 0x6426, 0x4632, 0x8c, 0xaf, 0xa3, 0x2a, 0xd4, 0x02, 0xd9, 0x1a);
		public const Guid StyleId_NumberedList_GUID = .(0x1e96dbd5, 0x64c3, 0x43d0, 0xb1, 0xee, 0xb5, 0x3b, 0x06, 0xe3, 0xed, 0xdf);
		public const Guid Notification_Event_GUID = .(0x72c5a2f7, 0x9788, 0x480f, 0xb8, 0xeb, 0x4d, 0xee, 0x00, 0xf6, 0x18, 0x6f);
		public const Guid SID_IsUIAutomationObject = .(0xb96fdb85, 0x7204, 0x4724, 0x84, 0x2b, 0xc7, 0x05, 0x9d, 0xed, 0xb9, 0xd0);
		public const Guid SID_ControlElementProvider = .(0xf4791d68, 0xe254, 0x4ba3, 0x9a, 0x53, 0x26, 0xa5, 0xc5, 0x49, 0x79, 0x46);
		public const Guid IsSelectionPattern2Available_Property_GUID = .(0x490806fb, 0x6e89, 0x4a47, 0x83, 0x19, 0xd2, 0x66, 0xe5, 0x11, 0xf0, 0x21);
		public const Guid Selection2_FirstSelectedItem_Property_GUID = .(0xcc24ea67, 0x369c, 0x4e55, 0x9f, 0xf7, 0x38, 0xda, 0x69, 0x54, 0x0c, 0x29);
		public const Guid Selection2_LastSelectedItem_Property_GUID = .(0xcf7bda90, 0x2d83, 0x49f8, 0x86, 0x0c, 0x9c, 0xe3, 0x94, 0xcf, 0x89, 0xb4);
		public const Guid Selection2_CurrentSelectedItem_Property_GUID = .(0x34257c26, 0x83b5, 0x41a6, 0x93, 0x9c, 0xae, 0x84, 0x1c, 0x13, 0x62, 0x36);
		public const Guid Selection2_ItemCount_Property_GUID = .(0xbb49eb9f, 0x456d, 0x4048, 0xb5, 0x91, 0x9c, 0x20, 0x26, 0xb8, 0x46, 0x36);
		public const Guid Selection_Pattern2_GUID = .(0xfba25cab, 0xab98, 0x49f7, 0xa7, 0xdc, 0xfe, 0x53, 0x9d, 0xc1, 0x5b, 0xe7);
		public const Guid HeadingLevel_Property_GUID = .(0x29084272, 0xaaaf, 0x4a30, 0x87, 0x96, 0x3c, 0x12, 0xf6, 0x2b, 0x6b, 0xbb);
		public const Guid IsDialog_Property_GUID = .(0x9d0dfb9b, 0x8436, 0x4501, 0xbb, 0xbb, 0xe5, 0x34, 0xa4, 0xfb, 0x3b, 0x3f);
		public const uint32 UIA_IAFP_DEFAULT = 0;
		public const uint32 UIA_IAFP_UNWRAP_BRIDGE = 1;
		public const uint32 UIA_PFIA_DEFAULT = 0;
		public const uint32 UIA_PFIA_UNWRAP_BRIDGE = 1;
		public const double UIA_ScrollPatternNoScroll = -1;
		public const int32 UIA_InvokePatternId = 10000;
		public const int32 UIA_SelectionPatternId = 10001;
		public const int32 UIA_ValuePatternId = 10002;
		public const int32 UIA_RangeValuePatternId = 10003;
		public const int32 UIA_ScrollPatternId = 10004;
		public const int32 UIA_ExpandCollapsePatternId = 10005;
		public const int32 UIA_GridPatternId = 10006;
		public const int32 UIA_GridItemPatternId = 10007;
		public const int32 UIA_MultipleViewPatternId = 10008;
		public const int32 UIA_WindowPatternId = 10009;
		public const int32 UIA_SelectionItemPatternId = 10010;
		public const int32 UIA_DockPatternId = 10011;
		public const int32 UIA_TablePatternId = 10012;
		public const int32 UIA_TableItemPatternId = 10013;
		public const int32 UIA_TextPatternId = 10014;
		public const int32 UIA_TogglePatternId = 10015;
		public const int32 UIA_TransformPatternId = 10016;
		public const int32 UIA_ScrollItemPatternId = 10017;
		public const int32 UIA_LegacyIAccessiblePatternId = 10018;
		public const int32 UIA_ItemContainerPatternId = 10019;
		public const int32 UIA_VirtualizedItemPatternId = 10020;
		public const int32 UIA_SynchronizedInputPatternId = 10021;
		public const int32 UIA_ObjectModelPatternId = 10022;
		public const int32 UIA_AnnotationPatternId = 10023;
		public const int32 UIA_TextPattern2Id = 10024;
		public const int32 UIA_StylesPatternId = 10025;
		public const int32 UIA_SpreadsheetPatternId = 10026;
		public const int32 UIA_SpreadsheetItemPatternId = 10027;
		public const int32 UIA_TransformPattern2Id = 10028;
		public const int32 UIA_TextChildPatternId = 10029;
		public const int32 UIA_DragPatternId = 10030;
		public const int32 UIA_DropTargetPatternId = 10031;
		public const int32 UIA_TextEditPatternId = 10032;
		public const int32 UIA_CustomNavigationPatternId = 10033;
		public const int32 UIA_SelectionPattern2Id = 10034;
		public const int32 UIA_ToolTipOpenedEventId = 20000;
		public const int32 UIA_ToolTipClosedEventId = 20001;
		public const int32 UIA_StructureChangedEventId = 20002;
		public const int32 UIA_MenuOpenedEventId = 20003;
		public const int32 UIA_AutomationPropertyChangedEventId = 20004;
		public const int32 UIA_AutomationFocusChangedEventId = 20005;
		public const int32 UIA_AsyncContentLoadedEventId = 20006;
		public const int32 UIA_MenuClosedEventId = 20007;
		public const int32 UIA_LayoutInvalidatedEventId = 20008;
		public const int32 UIA_Invoke_InvokedEventId = 20009;
		public const int32 UIA_SelectionItem_ElementAddedToSelectionEventId = 20010;
		public const int32 UIA_SelectionItem_ElementRemovedFromSelectionEventId = 20011;
		public const int32 UIA_SelectionItem_ElementSelectedEventId = 20012;
		public const int32 UIA_Selection_InvalidatedEventId = 20013;
		public const int32 UIA_Text_TextSelectionChangedEventId = 20014;
		public const int32 UIA_Text_TextChangedEventId = 20015;
		public const int32 UIA_Window_WindowOpenedEventId = 20016;
		public const int32 UIA_Window_WindowClosedEventId = 20017;
		public const int32 UIA_MenuModeStartEventId = 20018;
		public const int32 UIA_MenuModeEndEventId = 20019;
		public const int32 UIA_InputReachedTargetEventId = 20020;
		public const int32 UIA_InputReachedOtherElementEventId = 20021;
		public const int32 UIA_InputDiscardedEventId = 20022;
		public const int32 UIA_SystemAlertEventId = 20023;
		public const int32 UIA_LiveRegionChangedEventId = 20024;
		public const int32 UIA_HostedFragmentRootsInvalidatedEventId = 20025;
		public const int32 UIA_Drag_DragStartEventId = 20026;
		public const int32 UIA_Drag_DragCancelEventId = 20027;
		public const int32 UIA_Drag_DragCompleteEventId = 20028;
		public const int32 UIA_DropTarget_DragEnterEventId = 20029;
		public const int32 UIA_DropTarget_DragLeaveEventId = 20030;
		public const int32 UIA_DropTarget_DroppedEventId = 20031;
		public const int32 UIA_TextEdit_TextChangedEventId = 20032;
		public const int32 UIA_TextEdit_ConversionTargetChangedEventId = 20033;
		public const int32 UIA_ChangesEventId = 20034;
		public const int32 UIA_NotificationEventId = 20035;
		public const int32 UIA_ActiveTextPositionChangedEventId = 20036;
		public const int32 UIA_RuntimeIdPropertyId = 30000;
		public const int32 UIA_BoundingRectanglePropertyId = 30001;
		public const int32 UIA_ProcessIdPropertyId = 30002;
		public const int32 UIA_ControlTypePropertyId = 30003;
		public const int32 UIA_LocalizedControlTypePropertyId = 30004;
		public const int32 UIA_NamePropertyId = 30005;
		public const int32 UIA_AcceleratorKeyPropertyId = 30006;
		public const int32 UIA_AccessKeyPropertyId = 30007;
		public const int32 UIA_HasKeyboardFocusPropertyId = 30008;
		public const int32 UIA_IsKeyboardFocusablePropertyId = 30009;
		public const int32 UIA_IsEnabledPropertyId = 30010;
		public const int32 UIA_AutomationIdPropertyId = 30011;
		public const int32 UIA_ClassNamePropertyId = 30012;
		public const int32 UIA_HelpTextPropertyId = 30013;
		public const int32 UIA_ClickablePointPropertyId = 30014;
		public const int32 UIA_CulturePropertyId = 30015;
		public const int32 UIA_IsControlElementPropertyId = 30016;
		public const int32 UIA_IsContentElementPropertyId = 30017;
		public const int32 UIA_LabeledByPropertyId = 30018;
		public const int32 UIA_IsPasswordPropertyId = 30019;
		public const int32 UIA_NativeWindowHandlePropertyId = 30020;
		public const int32 UIA_ItemTypePropertyId = 30021;
		public const int32 UIA_IsOffscreenPropertyId = 30022;
		public const int32 UIA_OrientationPropertyId = 30023;
		public const int32 UIA_FrameworkIdPropertyId = 30024;
		public const int32 UIA_IsRequiredForFormPropertyId = 30025;
		public const int32 UIA_ItemStatusPropertyId = 30026;
		public const int32 UIA_IsDockPatternAvailablePropertyId = 30027;
		public const int32 UIA_IsExpandCollapsePatternAvailablePropertyId = 30028;
		public const int32 UIA_IsGridItemPatternAvailablePropertyId = 30029;
		public const int32 UIA_IsGridPatternAvailablePropertyId = 30030;
		public const int32 UIA_IsInvokePatternAvailablePropertyId = 30031;
		public const int32 UIA_IsMultipleViewPatternAvailablePropertyId = 30032;
		public const int32 UIA_IsRangeValuePatternAvailablePropertyId = 30033;
		public const int32 UIA_IsScrollPatternAvailablePropertyId = 30034;
		public const int32 UIA_IsScrollItemPatternAvailablePropertyId = 30035;
		public const int32 UIA_IsSelectionItemPatternAvailablePropertyId = 30036;
		public const int32 UIA_IsSelectionPatternAvailablePropertyId = 30037;
		public const int32 UIA_IsTablePatternAvailablePropertyId = 30038;
		public const int32 UIA_IsTableItemPatternAvailablePropertyId = 30039;
		public const int32 UIA_IsTextPatternAvailablePropertyId = 30040;
		public const int32 UIA_IsTogglePatternAvailablePropertyId = 30041;
		public const int32 UIA_IsTransformPatternAvailablePropertyId = 30042;
		public const int32 UIA_IsValuePatternAvailablePropertyId = 30043;
		public const int32 UIA_IsWindowPatternAvailablePropertyId = 30044;
		public const int32 UIA_ValueValuePropertyId = 30045;
		public const int32 UIA_ValueIsReadOnlyPropertyId = 30046;
		public const int32 UIA_RangeValueValuePropertyId = 30047;
		public const int32 UIA_RangeValueIsReadOnlyPropertyId = 30048;
		public const int32 UIA_RangeValueMinimumPropertyId = 30049;
		public const int32 UIA_RangeValueMaximumPropertyId = 30050;
		public const int32 UIA_RangeValueLargeChangePropertyId = 30051;
		public const int32 UIA_RangeValueSmallChangePropertyId = 30052;
		public const int32 UIA_ScrollHorizontalScrollPercentPropertyId = 30053;
		public const int32 UIA_ScrollHorizontalViewSizePropertyId = 30054;
		public const int32 UIA_ScrollVerticalScrollPercentPropertyId = 30055;
		public const int32 UIA_ScrollVerticalViewSizePropertyId = 30056;
		public const int32 UIA_ScrollHorizontallyScrollablePropertyId = 30057;
		public const int32 UIA_ScrollVerticallyScrollablePropertyId = 30058;
		public const int32 UIA_SelectionSelectionPropertyId = 30059;
		public const int32 UIA_SelectionCanSelectMultiplePropertyId = 30060;
		public const int32 UIA_SelectionIsSelectionRequiredPropertyId = 30061;
		public const int32 UIA_GridRowCountPropertyId = 30062;
		public const int32 UIA_GridColumnCountPropertyId = 30063;
		public const int32 UIA_GridItemRowPropertyId = 30064;
		public const int32 UIA_GridItemColumnPropertyId = 30065;
		public const int32 UIA_GridItemRowSpanPropertyId = 30066;
		public const int32 UIA_GridItemColumnSpanPropertyId = 30067;
		public const int32 UIA_GridItemContainingGridPropertyId = 30068;
		public const int32 UIA_DockDockPositionPropertyId = 30069;
		public const int32 UIA_ExpandCollapseExpandCollapseStatePropertyId = 30070;
		public const int32 UIA_MultipleViewCurrentViewPropertyId = 30071;
		public const int32 UIA_MultipleViewSupportedViewsPropertyId = 30072;
		public const int32 UIA_WindowCanMaximizePropertyId = 30073;
		public const int32 UIA_WindowCanMinimizePropertyId = 30074;
		public const int32 UIA_WindowWindowVisualStatePropertyId = 30075;
		public const int32 UIA_WindowWindowInteractionStatePropertyId = 30076;
		public const int32 UIA_WindowIsModalPropertyId = 30077;
		public const int32 UIA_WindowIsTopmostPropertyId = 30078;
		public const int32 UIA_SelectionItemIsSelectedPropertyId = 30079;
		public const int32 UIA_SelectionItemSelectionContainerPropertyId = 30080;
		public const int32 UIA_TableRowHeadersPropertyId = 30081;
		public const int32 UIA_TableColumnHeadersPropertyId = 30082;
		public const int32 UIA_TableRowOrColumnMajorPropertyId = 30083;
		public const int32 UIA_TableItemRowHeaderItemsPropertyId = 30084;
		public const int32 UIA_TableItemColumnHeaderItemsPropertyId = 30085;
		public const int32 UIA_ToggleToggleStatePropertyId = 30086;
		public const int32 UIA_TransformCanMovePropertyId = 30087;
		public const int32 UIA_TransformCanResizePropertyId = 30088;
		public const int32 UIA_TransformCanRotatePropertyId = 30089;
		public const int32 UIA_IsLegacyIAccessiblePatternAvailablePropertyId = 30090;
		public const int32 UIA_LegacyIAccessibleChildIdPropertyId = 30091;
		public const int32 UIA_LegacyIAccessibleNamePropertyId = 30092;
		public const int32 UIA_LegacyIAccessibleValuePropertyId = 30093;
		public const int32 UIA_LegacyIAccessibleDescriptionPropertyId = 30094;
		public const int32 UIA_LegacyIAccessibleRolePropertyId = 30095;
		public const int32 UIA_LegacyIAccessibleStatePropertyId = 30096;
		public const int32 UIA_LegacyIAccessibleHelpPropertyId = 30097;
		public const int32 UIA_LegacyIAccessibleKeyboardShortcutPropertyId = 30098;
		public const int32 UIA_LegacyIAccessibleSelectionPropertyId = 30099;
		public const int32 UIA_LegacyIAccessibleDefaultActionPropertyId = 30100;
		public const int32 UIA_AriaRolePropertyId = 30101;
		public const int32 UIA_AriaPropertiesPropertyId = 30102;
		public const int32 UIA_IsDataValidForFormPropertyId = 30103;
		public const int32 UIA_ControllerForPropertyId = 30104;
		public const int32 UIA_DescribedByPropertyId = 30105;
		public const int32 UIA_FlowsToPropertyId = 30106;
		public const int32 UIA_ProviderDescriptionPropertyId = 30107;
		public const int32 UIA_IsItemContainerPatternAvailablePropertyId = 30108;
		public const int32 UIA_IsVirtualizedItemPatternAvailablePropertyId = 30109;
		public const int32 UIA_IsSynchronizedInputPatternAvailablePropertyId = 30110;
		public const int32 UIA_OptimizeForVisualContentPropertyId = 30111;
		public const int32 UIA_IsObjectModelPatternAvailablePropertyId = 30112;
		public const int32 UIA_AnnotationAnnotationTypeIdPropertyId = 30113;
		public const int32 UIA_AnnotationAnnotationTypeNamePropertyId = 30114;
		public const int32 UIA_AnnotationAuthorPropertyId = 30115;
		public const int32 UIA_AnnotationDateTimePropertyId = 30116;
		public const int32 UIA_AnnotationTargetPropertyId = 30117;
		public const int32 UIA_IsAnnotationPatternAvailablePropertyId = 30118;
		public const int32 UIA_IsTextPattern2AvailablePropertyId = 30119;
		public const int32 UIA_StylesStyleIdPropertyId = 30120;
		public const int32 UIA_StylesStyleNamePropertyId = 30121;
		public const int32 UIA_StylesFillColorPropertyId = 30122;
		public const int32 UIA_StylesFillPatternStylePropertyId = 30123;
		public const int32 UIA_StylesShapePropertyId = 30124;
		public const int32 UIA_StylesFillPatternColorPropertyId = 30125;
		public const int32 UIA_StylesExtendedPropertiesPropertyId = 30126;
		public const int32 UIA_IsStylesPatternAvailablePropertyId = 30127;
		public const int32 UIA_IsSpreadsheetPatternAvailablePropertyId = 30128;
		public const int32 UIA_SpreadsheetItemFormulaPropertyId = 30129;
		public const int32 UIA_SpreadsheetItemAnnotationObjectsPropertyId = 30130;
		public const int32 UIA_SpreadsheetItemAnnotationTypesPropertyId = 30131;
		public const int32 UIA_IsSpreadsheetItemPatternAvailablePropertyId = 30132;
		public const int32 UIA_Transform2CanZoomPropertyId = 30133;
		public const int32 UIA_IsTransformPattern2AvailablePropertyId = 30134;
		public const int32 UIA_LiveSettingPropertyId = 30135;
		public const int32 UIA_IsTextChildPatternAvailablePropertyId = 30136;
		public const int32 UIA_IsDragPatternAvailablePropertyId = 30137;
		public const int32 UIA_DragIsGrabbedPropertyId = 30138;
		public const int32 UIA_DragDropEffectPropertyId = 30139;
		public const int32 UIA_DragDropEffectsPropertyId = 30140;
		public const int32 UIA_IsDropTargetPatternAvailablePropertyId = 30141;
		public const int32 UIA_DropTargetDropTargetEffectPropertyId = 30142;
		public const int32 UIA_DropTargetDropTargetEffectsPropertyId = 30143;
		public const int32 UIA_DragGrabbedItemsPropertyId = 30144;
		public const int32 UIA_Transform2ZoomLevelPropertyId = 30145;
		public const int32 UIA_Transform2ZoomMinimumPropertyId = 30146;
		public const int32 UIA_Transform2ZoomMaximumPropertyId = 30147;
		public const int32 UIA_FlowsFromPropertyId = 30148;
		public const int32 UIA_IsTextEditPatternAvailablePropertyId = 30149;
		public const int32 UIA_IsPeripheralPropertyId = 30150;
		public const int32 UIA_IsCustomNavigationPatternAvailablePropertyId = 30151;
		public const int32 UIA_PositionInSetPropertyId = 30152;
		public const int32 UIA_SizeOfSetPropertyId = 30153;
		public const int32 UIA_LevelPropertyId = 30154;
		public const int32 UIA_AnnotationTypesPropertyId = 30155;
		public const int32 UIA_AnnotationObjectsPropertyId = 30156;
		public const int32 UIA_LandmarkTypePropertyId = 30157;
		public const int32 UIA_LocalizedLandmarkTypePropertyId = 30158;
		public const int32 UIA_FullDescriptionPropertyId = 30159;
		public const int32 UIA_FillColorPropertyId = 30160;
		public const int32 UIA_OutlineColorPropertyId = 30161;
		public const int32 UIA_FillTypePropertyId = 30162;
		public const int32 UIA_VisualEffectsPropertyId = 30163;
		public const int32 UIA_OutlineThicknessPropertyId = 30164;
		public const int32 UIA_CenterPointPropertyId = 30165;
		public const int32 UIA_RotationPropertyId = 30166;
		public const int32 UIA_SizePropertyId = 30167;
		public const int32 UIA_IsSelectionPattern2AvailablePropertyId = 30168;
		public const int32 UIA_Selection2FirstSelectedItemPropertyId = 30169;
		public const int32 UIA_Selection2LastSelectedItemPropertyId = 30170;
		public const int32 UIA_Selection2CurrentSelectedItemPropertyId = 30171;
		public const int32 UIA_Selection2ItemCountPropertyId = 30172;
		public const int32 UIA_HeadingLevelPropertyId = 30173;
		public const int32 UIA_IsDialogPropertyId = 30174;
		public const int32 UIA_AnimationStyleAttributeId = 40000;
		public const int32 UIA_BackgroundColorAttributeId = 40001;
		public const int32 UIA_BulletStyleAttributeId = 40002;
		public const int32 UIA_CapStyleAttributeId = 40003;
		public const int32 UIA_CultureAttributeId = 40004;
		public const int32 UIA_FontNameAttributeId = 40005;
		public const int32 UIA_FontSizeAttributeId = 40006;
		public const int32 UIA_FontWeightAttributeId = 40007;
		public const int32 UIA_ForegroundColorAttributeId = 40008;
		public const int32 UIA_HorizontalTextAlignmentAttributeId = 40009;
		public const int32 UIA_IndentationFirstLineAttributeId = 40010;
		public const int32 UIA_IndentationLeadingAttributeId = 40011;
		public const int32 UIA_IndentationTrailingAttributeId = 40012;
		public const int32 UIA_IsHiddenAttributeId = 40013;
		public const int32 UIA_IsItalicAttributeId = 40014;
		public const int32 UIA_IsReadOnlyAttributeId = 40015;
		public const int32 UIA_IsSubscriptAttributeId = 40016;
		public const int32 UIA_IsSuperscriptAttributeId = 40017;
		public const int32 UIA_MarginBottomAttributeId = 40018;
		public const int32 UIA_MarginLeadingAttributeId = 40019;
		public const int32 UIA_MarginTopAttributeId = 40020;
		public const int32 UIA_MarginTrailingAttributeId = 40021;
		public const int32 UIA_OutlineStylesAttributeId = 40022;
		public const int32 UIA_OverlineColorAttributeId = 40023;
		public const int32 UIA_OverlineStyleAttributeId = 40024;
		public const int32 UIA_StrikethroughColorAttributeId = 40025;
		public const int32 UIA_StrikethroughStyleAttributeId = 40026;
		public const int32 UIA_TabsAttributeId = 40027;
		public const int32 UIA_TextFlowDirectionsAttributeId = 40028;
		public const int32 UIA_UnderlineColorAttributeId = 40029;
		public const int32 UIA_UnderlineStyleAttributeId = 40030;
		public const int32 UIA_AnnotationTypesAttributeId = 40031;
		public const int32 UIA_AnnotationObjectsAttributeId = 40032;
		public const int32 UIA_StyleNameAttributeId = 40033;
		public const int32 UIA_StyleIdAttributeId = 40034;
		public const int32 UIA_LinkAttributeId = 40035;
		public const int32 UIA_IsActiveAttributeId = 40036;
		public const int32 UIA_SelectionActiveEndAttributeId = 40037;
		public const int32 UIA_CaretPositionAttributeId = 40038;
		public const int32 UIA_CaretBidiModeAttributeId = 40039;
		public const int32 UIA_LineSpacingAttributeId = 40040;
		public const int32 UIA_BeforeParagraphSpacingAttributeId = 40041;
		public const int32 UIA_AfterParagraphSpacingAttributeId = 40042;
		public const int32 UIA_SayAsInterpretAsAttributeId = 40043;
		public const int32 UIA_ButtonControlTypeId = 50000;
		public const int32 UIA_CalendarControlTypeId = 50001;
		public const int32 UIA_CheckBoxControlTypeId = 50002;
		public const int32 UIA_ComboBoxControlTypeId = 50003;
		public const int32 UIA_EditControlTypeId = 50004;
		public const int32 UIA_HyperlinkControlTypeId = 50005;
		public const int32 UIA_ImageControlTypeId = 50006;
		public const int32 UIA_ListItemControlTypeId = 50007;
		public const int32 UIA_ListControlTypeId = 50008;
		public const int32 UIA_MenuControlTypeId = 50009;
		public const int32 UIA_MenuBarControlTypeId = 50010;
		public const int32 UIA_MenuItemControlTypeId = 50011;
		public const int32 UIA_ProgressBarControlTypeId = 50012;
		public const int32 UIA_RadioButtonControlTypeId = 50013;
		public const int32 UIA_ScrollBarControlTypeId = 50014;
		public const int32 UIA_SliderControlTypeId = 50015;
		public const int32 UIA_SpinnerControlTypeId = 50016;
		public const int32 UIA_StatusBarControlTypeId = 50017;
		public const int32 UIA_TabControlTypeId = 50018;
		public const int32 UIA_TabItemControlTypeId = 50019;
		public const int32 UIA_TextControlTypeId = 50020;
		public const int32 UIA_ToolBarControlTypeId = 50021;
		public const int32 UIA_ToolTipControlTypeId = 50022;
		public const int32 UIA_TreeControlTypeId = 50023;
		public const int32 UIA_TreeItemControlTypeId = 50024;
		public const int32 UIA_CustomControlTypeId = 50025;
		public const int32 UIA_GroupControlTypeId = 50026;
		public const int32 UIA_ThumbControlTypeId = 50027;
		public const int32 UIA_DataGridControlTypeId = 50028;
		public const int32 UIA_DataItemControlTypeId = 50029;
		public const int32 UIA_DocumentControlTypeId = 50030;
		public const int32 UIA_SplitButtonControlTypeId = 50031;
		public const int32 UIA_WindowControlTypeId = 50032;
		public const int32 UIA_PaneControlTypeId = 50033;
		public const int32 UIA_HeaderControlTypeId = 50034;
		public const int32 UIA_HeaderItemControlTypeId = 50035;
		public const int32 UIA_TableControlTypeId = 50036;
		public const int32 UIA_TitleBarControlTypeId = 50037;
		public const int32 UIA_SeparatorControlTypeId = 50038;
		public const int32 UIA_SemanticZoomControlTypeId = 50039;
		public const int32 UIA_AppBarControlTypeId = 50040;
		public const int32 AnnotationType_Unknown = 60000;
		public const int32 AnnotationType_SpellingError = 60001;
		public const int32 AnnotationType_GrammarError = 60002;
		public const int32 AnnotationType_Comment = 60003;
		public const int32 AnnotationType_FormulaError = 60004;
		public const int32 AnnotationType_TrackChanges = 60005;
		public const int32 AnnotationType_Header = 60006;
		public const int32 AnnotationType_Footer = 60007;
		public const int32 AnnotationType_Highlighted = 60008;
		public const int32 AnnotationType_Endnote = 60009;
		public const int32 AnnotationType_Footnote = 60010;
		public const int32 AnnotationType_InsertionChange = 60011;
		public const int32 AnnotationType_DeletionChange = 60012;
		public const int32 AnnotationType_MoveChange = 60013;
		public const int32 AnnotationType_FormatChange = 60014;
		public const int32 AnnotationType_UnsyncedChange = 60015;
		public const int32 AnnotationType_EditingLockedChange = 60016;
		public const int32 AnnotationType_ExternalChange = 60017;
		public const int32 AnnotationType_ConflictingChange = 60018;
		public const int32 AnnotationType_Author = 60019;
		public const int32 AnnotationType_AdvancedProofingIssue = 60020;
		public const int32 AnnotationType_DataValidationError = 60021;
		public const int32 AnnotationType_CircularReferenceError = 60022;
		public const int32 AnnotationType_Mathematics = 60023;
		public const int32 AnnotationType_Sensitive = 60024;
		public const int32 StyleId_Custom = 70000;
		public const int32 StyleId_Heading1 = 70001;
		public const int32 StyleId_Heading2 = 70002;
		public const int32 StyleId_Heading3 = 70003;
		public const int32 StyleId_Heading4 = 70004;
		public const int32 StyleId_Heading5 = 70005;
		public const int32 StyleId_Heading6 = 70006;
		public const int32 StyleId_Heading7 = 70007;
		public const int32 StyleId_Heading8 = 70008;
		public const int32 StyleId_Heading9 = 70009;
		public const int32 StyleId_Title = 70010;
		public const int32 StyleId_Subtitle = 70011;
		public const int32 StyleId_Normal = 70012;
		public const int32 StyleId_Emphasis = 70013;
		public const int32 StyleId_Quote = 70014;
		public const int32 StyleId_BulletedList = 70015;
		public const int32 StyleId_NumberedList = 70016;
		public const int32 UIA_CustomLandmarkTypeId = 80000;
		public const int32 UIA_FormLandmarkTypeId = 80001;
		public const int32 UIA_MainLandmarkTypeId = 80002;
		public const int32 UIA_NavigationLandmarkTypeId = 80003;
		public const int32 UIA_SearchLandmarkTypeId = 80004;
		public const int32 HeadingLevel_None = 80050;
		public const int32 HeadingLevel1 = 80051;
		public const int32 HeadingLevel2 = 80052;
		public const int32 HeadingLevel3 = 80053;
		public const int32 HeadingLevel4 = 80054;
		public const int32 HeadingLevel5 = 80055;
		public const int32 HeadingLevel6 = 80056;
		public const int32 HeadingLevel7 = 80057;
		public const int32 HeadingLevel8 = 80058;
		public const int32 HeadingLevel9 = 80059;
		public const int32 UIA_SummaryChangeId = 90000;
		public const int32 UIA_SayAsInterpretAsMetadataId = 100000;
		
		// --- Typedefs ---
		
		public typealias HWINEVENTHOOK = int;
		public typealias HUIANODE = int;
		public typealias HUIAPATTERNOBJECT = int;
		public typealias HUIATEXTRANGE = int;
		public typealias HUIAEVENT = int;
		
		// --- Enums ---
		
		public enum STICKYKEYS_FLAGS : uint32
		{
			STICKYKEYSON = 1,
			AVAILABLE = 2,
			HOTKEYACTIVE = 4,
			CONFIRMHOTKEY = 8,
			HOTKEYSOUND = 16,
			INDICATOR = 32,
			AUDIBLEFEEDBACK = 64,
			TRISTATE = 128,
			TWOKEYSOFF = 256,
			LALTLATCHED = 268435456,
			LCTLLATCHED = 67108864,
			LSHIFTLATCHED = 16777216,
			RALTLATCHED = 536870912,
			RCTLLATCHED = 134217728,
			RSHIFTLATCHED = 33554432,
			LWINLATCHED = 1073741824,
			RWINLATCHED = 2147483648,
			LALTLOCKED = 1048576,
			LCTLLOCKED = 262144,
			LSHIFTLOCKED = 65536,
			RALTLOCKED = 2097152,
			RCTLLOCKED = 524288,
			RSHIFTLOCKED = 131072,
			LWINLOCKED = 4194304,
			RWINLOCKED = 8388608,
		}
		public enum SOUNDSENTRY_FLAGS : uint32
		{
			SOUNDSENTRYON = 1,
			AVAILABLE = 2,
			INDICATOR = 4,
		}
		public enum ACC_UTILITY_STATE_FLAGS : uint32
		{
			ON_SCREEN_KEYBOARD_ACTIVE = 1,
			TOUCH_MODIFICATION_ACTIVE = 2,
			PRIORITY_AUDIO_ACTIVE = 4,
			PRIORITY_AUDIO_ACTIVE_NODUCK = 8,
		}
		public enum SOUND_SENTRY_GRAPHICS_EFFECT : uint32
		{
			DISPLAY = 3,
			NONE = 0,
		}
		public enum SERIALKEYS_FLAGS : uint32
		{
			AVAILABLE = 2,
			INDICATOR = 4,
			SERIALKEYSON = 1,
		}
		public enum HIGHCONTRASTW_FLAGS : uint32
		{
			HIGHCONTRASTON = 1,
			AVAILABLE = 2,
			HOTKEYACTIVE = 4,
			CONFIRMHOTKEY = 8,
			HOTKEYSOUND = 16,
			INDICATOR = 32,
			HOTKEYAVAILABLE = 64,
			OPTION_NOTHEMECHANGE = 4096,
		}
		public enum SOUNDSENTRY_TEXT_EFFECT : uint32
		{
			BORDER = 2,
			CHARS = 1,
			DISPLAY = 3,
			NONE = 0,
		}
		public enum SOUNDSENTRY_WINDOWS_EFFECT : uint32
		{
			CUSTOM = 4,
			DISPLAY = 3,
			NONE = 0,
			TITLE = 1,
			WINDOW = 2,
		}
		public enum AnnoScope : int32
		{
			THIS = 0,
			CONTAINER = 1,
		}
		public enum NavigateDirection : int32
		{
			Parent = 0,
			NextSibling = 1,
			PreviousSibling = 2,
			FirstChild = 3,
			LastChild = 4,
		}
		public enum ProviderOptions : int32
		{
			ClientSideProvider = 1,
			ServerSideProvider = 2,
			NonClientAreaProvider = 4,
			OverrideProvider = 8,
			ProviderOwnsSetFocus = 16,
			UseComThreading = 32,
			RefuseNonClientSupport = 64,
			HasNativeIAccessible = 128,
			UseClientCoordinates = 256,
		}
		public enum StructureChangeType : int32
		{
			ChildAdded = 0,
			ChildRemoved = 1,
			ChildrenInvalidated = 2,
			ChildrenBulkAdded = 3,
			ChildrenBulkRemoved = 4,
			ChildrenReordered = 5,
		}
		public enum TextEditChangeType : int32
		{
			None = 0,
			AutoCorrect = 1,
			Composition = 2,
			CompositionFinalized = 3,
			AutoComplete = 4,
		}
		public enum OrientationType : int32
		{
			None = 0,
			Horizontal = 1,
			Vertical = 2,
		}
		public enum DockPosition : int32
		{
			Top = 0,
			Left = 1,
			Bottom = 2,
			Right = 3,
			Fill = 4,
			None = 5,
		}
		public enum ExpandCollapseState : int32
		{
			Collapsed = 0,
			Expanded = 1,
			PartiallyExpanded = 2,
			LeafNode = 3,
		}
		public enum ScrollAmount : int32
		{
			LargeDecrement = 0,
			SmallDecrement = 1,
			NoAmount = 2,
			LargeIncrement = 3,
			SmallIncrement = 4,
		}
		public enum RowOrColumnMajor : int32
		{
			RowMajor = 0,
			ColumnMajor = 1,
			Indeterminate = 2,
		}
		public enum ToggleState : int32
		{
			Off = 0,
			On = 1,
			Indeterminate = 2,
		}
		public enum WindowVisualState : int32
		{
			Normal = 0,
			Maximized = 1,
			Minimized = 2,
		}
		public enum SynchronizedInputType : int32
		{
			KeyUp = 1,
			KeyDown = 2,
			LeftMouseUp = 4,
			LeftMouseDown = 8,
			RightMouseUp = 16,
			RightMouseDown = 32,
		}
		public enum WindowInteractionState : int32
		{
			Running = 0,
			Closing = 1,
			ReadyForUserInteraction = 2,
			BlockedByModalWindow = 3,
			NotResponding = 4,
		}
		public enum SayAsInterpretAs : int32
		{
			None = 0,
			Spell = 1,
			Cardinal = 2,
			Ordinal = 3,
			Number = 4,
			Date = 5,
			Time = 6,
			Telephone = 7,
			Currency = 8,
			Net = 9,
			Url = 10,
			Address = 11,
			Alphanumeric = 12,
			Name = 13,
			Media = 14,
			Date_MonthDayYear = 15,
			Date_DayMonthYear = 16,
			Date_YearMonthDay = 17,
			Date_YearMonth = 18,
			Date_MonthYear = 19,
			Date_DayMonth = 20,
			Date_MonthDay = 21,
			Date_Year = 22,
			Time_HoursMinutesSeconds12 = 23,
			Time_HoursMinutes12 = 24,
			Time_HoursMinutesSeconds24 = 25,
			Time_HoursMinutes24 = 26,
		}
		public enum TextUnit : int32
		{
			Character = 0,
			Format = 1,
			Word = 2,
			Line = 3,
			Paragraph = 4,
			Page = 5,
			Document = 6,
		}
		public enum TextPatternRangeEndpoint : int32
		{
			Start = 0,
			End = 1,
		}
		public enum SupportedTextSelection : int32
		{
			None = 0,
			Single = 1,
			Multiple = 2,
		}
		public enum LiveSetting : int32
		{
			Off = 0,
			Polite = 1,
			Assertive = 2,
		}
		public enum ActiveEnd : int32
		{
			None = 0,
			Start = 1,
			End = 2,
		}
		public enum CaretPosition : int32
		{
			Unknown = 0,
			EndOfLine = 1,
			BeginningOfLine = 2,
		}
		public enum CaretBidiMode : int32
		{
			LTR = 0,
			RTL = 1,
		}
		public enum ZoomUnit : int32
		{
			NoAmount = 0,
			LargeDecrement = 1,
			SmallDecrement = 2,
			LargeIncrement = 3,
			SmallIncrement = 4,
		}
		public enum AnimationStyle : int32
		{
			None = 0,
			LasVegasLights = 1,
			BlinkingBackground = 2,
			SparkleText = 3,
			MarchingBlackAnts = 4,
			MarchingRedAnts = 5,
			Shimmer = 6,
			Other = -1,
		}
		public enum BulletStyle : int32
		{
			None = 0,
			HollowRoundBullet = 1,
			FilledRoundBullet = 2,
			HollowSquareBullet = 3,
			FilledSquareBullet = 4,
			DashBullet = 5,
			Other = -1,
		}
		public enum CapStyle : int32
		{
			None = 0,
			SmallCap = 1,
			AllCap = 2,
			AllPetiteCaps = 3,
			PetiteCaps = 4,
			Unicase = 5,
			Titling = 6,
			Other = -1,
		}
		public enum FillType : int32
		{
			None = 0,
			Color = 1,
			Gradient = 2,
			Picture = 3,
			Pattern = 4,
		}
		public enum FlowDirections : int32
		{
			Default = 0,
			RightToLeft = 1,
			BottomToTop = 2,
			Vertical = 4,
		}
		public enum HorizontalTextAlignment : int32
		{
			Left = 0,
			Centered = 1,
			Right = 2,
			Justified = 3,
		}
		public enum OutlineStyles : int32
		{
			None = 0,
			Outline = 1,
			Shadow = 2,
			Engraved = 4,
			Embossed = 8,
		}
		public enum TextDecorationLineStyle : int32
		{
			None = 0,
			Single = 1,
			WordsOnly = 2,
			Double = 3,
			Dot = 4,
			Dash = 5,
			DashDot = 6,
			DashDotDot = 7,
			Wavy = 8,
			ThickSingle = 9,
			DoubleWavy = 11,
			ThickWavy = 12,
			LongDash = 13,
			ThickDash = 14,
			ThickDashDot = 15,
			ThickDashDotDot = 16,
			ThickDot = 17,
			ThickLongDash = 18,
			Other = -1,
		}
		public enum VisualEffects : int32
		{
			None = 0,
			Shadow = 1,
			Reflection = 2,
			Glow = 4,
			SoftEdges = 8,
			Bevel = 16,
		}
		public enum NotificationProcessing : int32
		{
			ImportantAll = 0,
			ImportantMostRecent = 1,
			All = 2,
			MostRecent = 3,
			CurrentThenMostRecent = 4,
		}
		public enum NotificationKind : int32
		{
			ItemAdded = 0,
			ItemRemoved = 1,
			ActionCompleted = 2,
			ActionAborted = 3,
			Other = 4,
		}
		public enum UIAutomationType : int32
		{
			Int = 1,
			Bool = 2,
			String = 3,
			Double = 4,
			Point = 5,
			Rect = 6,
			Element = 7,
			Array = 65536,
			Out = 131072,
			IntArray = 65537,
			BoolArray = 65538,
			StringArray = 65539,
			DoubleArray = 65540,
			PointArray = 65541,
			RectArray = 65542,
			ElementArray = 65543,
			OutInt = 131073,
			OutBool = 131074,
			OutString = 131075,
			OutDouble = 131076,
			OutPoint = 131077,
			OutRect = 131078,
			OutElement = 131079,
			OutIntArray = 196609,
			OutBoolArray = 196610,
			OutStringArray = 196611,
			OutDoubleArray = 196612,
			OutPointArray = 196613,
			OutRectArray = 196614,
			OutElementArray = 196615,
		}
		public enum TreeScope : int32
		{
			None = 0,
			Element = 1,
			Children = 2,
			Descendants = 4,
			Parent = 8,
			Ancestors = 16,
			Subtree = 7,
		}
		public enum PropertyConditionFlags : int32
		{
			None = 0,
			IgnoreCase = 1,
			MatchSubstring = 2,
		}
		public enum AutomationElementMode : int32
		{
			None = 0,
			Full = 1,
		}
		public enum TreeTraversalOptions : int32
		{
			Default = 0,
			PostOrder = 1,
			LastToFirstOrder = 2,
		}
		public enum ConnectionRecoveryBehaviorOptions : int32
		{
			Disabled = 0,
			Enabled = 1,
		}
		public enum CoalesceEventsOptions : int32
		{
			Disabled = 0,
			Enabled = 1,
		}
		public enum ConditionType : int32
		{
			True = 0,
			False = 1,
			Property = 2,
			And = 3,
			Or = 4,
			Not = 5,
		}
		public enum NormalizeState : int32
		{
			None = 0,
			View = 1,
			Custom = 2,
		}
		public enum ProviderType : int32
		{
			BaseHwnd = 0,
			Proxy = 1,
			NonClientArea = 2,
		}
		public enum AutomationIdentifierType : int32
		{
			Property = 0,
			Pattern = 1,
			Event = 2,
			ControlType = 3,
			TextAttribute = 4,
			LandmarkType = 5,
			Annotation = 6,
			Changes = 7,
			Style = 8,
		}
		public enum EventArgsType : int32
		{
			Simple = 0,
			PropertyChanged = 1,
			StructureChanged = 2,
			AsyncContentLoaded = 3,
			WindowClosed = 4,
			TextEditTextChanged = 5,
			Changes = 6,
			Notification = 7,
			ActiveTextPositionChanged = 8,
			StructuredMarkup = 9,
		}
		public enum AsyncContentLoadedState : int32
		{
			Beginning = 0,
			Progress = 1,
			Completed = 2,
		}
		
		// --- Function Pointers ---
		
		public function LRESULT LPFNLRESULTFROMOBJECT(in Guid riid, WPARAM wParam, ref IUnknown punk);
		public function HRESULT LPFNOBJECTFROMLRESULT(LRESULT lResult, in Guid riid, WPARAM wParam, void** ppvObject);
		public function HRESULT LPFNACCESSIBLEOBJECTFROMWINDOW(HWND hwnd, uint32 dwId, in Guid riid, void** ppvObject);
		public function HRESULT LPFNACCESSIBLEOBJECTFROMPOINT(POINT ptScreen, out IAccessible* ppacc, out VARIANT pvarChild);
		public function HRESULT LPFNCREATESTDACCESSIBLEOBJECT(HWND hwnd, int32 idObject, in Guid riid, void** ppvObject);
		public function HRESULT LPFNACCESSIBLECHILDREN(ref IAccessible paccContainer, int32 iChildStart, int32 cChildren, out VARIANT rgvarChildren, out int32 pcObtained);
		public function SAFEARRAY* UiaProviderCallback(HWND hwnd, ProviderType providerType);
		public function void UiaEventCallback(out UiaEventArgs pArgs, out SAFEARRAY pRequestedData, BSTR pTreeStructure);
		public function void WINEVENTPROC(HWINEVENTHOOK hWinEventHook, uint32 event, HWND hwnd, int32 idObject, int32 idChild, uint32 idEventThread, uint32 dwmsEventTime);
		
		// --- Structs ---
		
		[CRepr]
		public struct MSAAMENUINFO
		{
			public uint32 dwMSAASignature;
			public uint32 cchWText;
			public PWSTR pszWText;
		}
		[CRepr]
		public struct UiaRect
		{
			public double left;
			public double top;
			public double width;
			public double height;
		}
		[CRepr]
		public struct UiaPoint
		{
			public double x;
			public double y;
		}
		[CRepr]
		public struct UiaChangeInfo
		{
			public int32 uiaId;
			public VARIANT payload;
			public VARIANT extraInfo;
		}
		[CRepr]
		public struct UIAutomationParameter
		{
			public UIAutomationType type;
			public void* pData;
		}
		[CRepr]
		public struct UIAutomationPropertyInfo
		{
			public Guid guid;
			public PWSTR pProgrammaticName;
			public UIAutomationType type;
		}
		[CRepr]
		public struct UIAutomationEventInfo
		{
			public Guid guid;
			public PWSTR pProgrammaticName;
		}
		[CRepr]
		public struct UIAutomationMethodInfo
		{
			public PWSTR pProgrammaticName;
			public BOOL doSetFocus;
			public uint32 cInParameters;
			public uint32 cOutParameters;
			public UIAutomationType* pParameterTypes;
			public PWSTR* pParameterNames;
		}
		[CRepr]
		public struct UIAutomationPatternInfo
		{
			public Guid guid;
			public PWSTR pProgrammaticName;
			public Guid providerInterfaceId;
			public Guid clientInterfaceId;
			public uint32 cProperties;
			public UIAutomationPropertyInfo* pProperties;
			public uint32 cMethods;
			public UIAutomationMethodInfo* pMethods;
			public uint32 cEvents;
			public UIAutomationEventInfo* pEvents;
			public IUIAutomationPatternHandler* pPatternHandler;
		}
		[CRepr]
		public struct ExtendedProperty
		{
			public BSTR PropertyName;
			public BSTR PropertyValue;
		}
		[CRepr]
		public struct UiaCondition
		{
			public ConditionType ConditionType;
		}
		[CRepr]
		public struct UiaPropertyCondition
		{
			public ConditionType ConditionType;
			public int32 PropertyId;
			public VARIANT Value;
			public PropertyConditionFlags Flags;
		}
		[CRepr]
		public struct UiaAndOrCondition
		{
			public ConditionType ConditionType;
			public UiaCondition** ppConditions;
			public int32 cConditions;
		}
		[CRepr]
		public struct UiaNotCondition
		{
			public ConditionType ConditionType;
			public UiaCondition* pCondition;
		}
		[CRepr]
		public struct UiaCacheRequest
		{
			public UiaCondition* pViewCondition;
			public TreeScope Scope;
			public int32* pProperties;
			public int32 cProperties;
			public int32* pPatterns;
			public int32 cPatterns;
			public AutomationElementMode automationElementMode;
		}
		[CRepr]
		public struct UiaFindParams
		{
			public int32 MaxDepth;
			public BOOL FindFirst;
			public BOOL ExcludeRoot;
			public UiaCondition* pFindCondition;
		}
		[CRepr]
		public struct UiaEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
		}
		[CRepr]
		public struct UiaPropertyChangedEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public int32 PropertyId;
			public VARIANT OldValue;
			public VARIANT NewValue;
		}
		[CRepr]
		public struct UiaStructureChangedEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public StructureChangeType StructureChangeType;
			public int32* pRuntimeId;
			public int32 cRuntimeIdLen;
		}
		[CRepr]
		public struct UiaTextEditTextChangedEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public TextEditChangeType TextEditChangeType;
			public SAFEARRAY* pTextChange;
		}
		[CRepr]
		public struct UiaChangesEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public int32 EventIdCount;
			public UiaChangeInfo* pUiaChanges;
		}
		[CRepr]
		public struct UiaAsyncContentLoadedEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public AsyncContentLoadedState AsyncContentLoadedState;
			public double PercentComplete;
		}
		[CRepr]
		public struct UiaWindowClosedEventArgs
		{
			public EventArgsType Type;
			public int32 EventId;
			public int32* pRuntimeId;
			public int32 cRuntimeIdLen;
		}
		[CRepr]
		public struct SERIALKEYSA
		{
			public uint32 cbSize;
			public SERIALKEYS_FLAGS dwFlags;
			public PSTR lpszActivePort;
			public PSTR lpszPort;
			public uint32 iBaudRate;
			public uint32 iPortState;
			public uint32 iActive;
		}
		[CRepr]
		public struct SERIALKEYSW
		{
			public uint32 cbSize;
			public SERIALKEYS_FLAGS dwFlags;
			public PWSTR lpszActivePort;
			public PWSTR lpszPort;
			public uint32 iBaudRate;
			public uint32 iPortState;
			public uint32 iActive;
		}
		[CRepr]
		public struct HIGHCONTRASTA
		{
			public uint32 cbSize;
			public HIGHCONTRASTW_FLAGS dwFlags;
			public PSTR lpszDefaultScheme;
		}
		[CRepr]
		public struct HIGHCONTRASTW
		{
			public uint32 cbSize;
			public HIGHCONTRASTW_FLAGS dwFlags;
			public PWSTR lpszDefaultScheme;
		}
		[CRepr]
		public struct FILTERKEYS
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 iWaitMSec;
			public uint32 iDelayMSec;
			public uint32 iRepeatMSec;
			public uint32 iBounceMSec;
		}
		[CRepr]
		public struct STICKYKEYS
		{
			public uint32 cbSize;
			public STICKYKEYS_FLAGS dwFlags;
		}
		[CRepr]
		public struct MOUSEKEYS
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 iMaxSpeed;
			public uint32 iTimeToMaxSpeed;
			public uint32 iCtrlSpeed;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
		}
		[CRepr]
		public struct ACCESSTIMEOUT
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public uint32 iTimeOutMSec;
		}
		[CRepr]
		public struct SOUNDSENTRYA
		{
			public uint32 cbSize;
			public SOUNDSENTRY_FLAGS dwFlags;
			public SOUNDSENTRY_TEXT_EFFECT iFSTextEffect;
			public uint32 iFSTextEffectMSec;
			public uint32 iFSTextEffectColorBits;
			public SOUND_SENTRY_GRAPHICS_EFFECT iFSGrafEffect;
			public uint32 iFSGrafEffectMSec;
			public uint32 iFSGrafEffectColor;
			public SOUNDSENTRY_WINDOWS_EFFECT iWindowsEffect;
			public uint32 iWindowsEffectMSec;
			public PSTR lpszWindowsEffectDLL;
			public uint32 iWindowsEffectOrdinal;
		}
		[CRepr]
		public struct SOUNDSENTRYW
		{
			public uint32 cbSize;
			public SOUNDSENTRY_FLAGS dwFlags;
			public SOUNDSENTRY_TEXT_EFFECT iFSTextEffect;
			public uint32 iFSTextEffectMSec;
			public uint32 iFSTextEffectColorBits;
			public SOUND_SENTRY_GRAPHICS_EFFECT iFSGrafEffect;
			public uint32 iFSGrafEffectMSec;
			public uint32 iFSGrafEffectColor;
			public SOUNDSENTRY_WINDOWS_EFFECT iWindowsEffect;
			public uint32 iWindowsEffectMSec;
			public PWSTR lpszWindowsEffectDLL;
			public uint32 iWindowsEffectOrdinal;
		}
		[CRepr]
		public struct TOGGLEKEYS
		{
			public uint32 cbSize;
			public uint32 dwFlags;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CAccPropServices = .(0xb5f8350b, 0x0548, 0x48b1, 0xa6, 0xee, 0x88, 0xbd, 0x00, 0xb4, 0xa5, 0xe7);
		public const Guid CLSID_CUIAutomation = .(0xff48dba4, 0x60ef, 0x4201, 0xaa, 0x87, 0x54, 0x10, 0x3e, 0xef, 0x59, 0x4e);
		public const Guid CLSID_CUIAutomation8 = .(0xe22ad333, 0xb25f, 0x460c, 0x83, 0xd0, 0x05, 0x81, 0x10, 0x73, 0x95, 0xc9);
		public const Guid CLSID_CUIAutomationRegistrar = .(0x6e29fabf, 0x9977, 0x42d1, 0x8d, 0x0e, 0xca, 0x7e, 0x61, 0xad, 0x87, 0xe6);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRicheditWindowlessAccessibility : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProvider(ref IRawElementProviderWindowlessSite pSite, out IRawElementProviderSimple* ppProvider) mut => VT.CreateProvider(ref this, ref pSite, out ppProvider);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRicheditWindowlessAccessibility self, ref IRawElementProviderWindowlessSite pSite, out IRawElementProviderSimple* ppProvider) CreateProvider;
			}
		}
		[CRepr]
		public struct IRichEditUiaInformation : IUnknown
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBoundaryRectangle(out UiaRect pUiaRect) mut => VT.GetBoundaryRectangle(ref this, out pUiaRect);
			public HRESULT IsVisible() mut => VT.IsVisible(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditUiaInformation self, out UiaRect pUiaRect) GetBoundaryRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRichEditUiaInformation self) IsVisible;
			}
		}
		[CRepr]
		public struct IAccessible : IDispatch
		{
			public const new Guid IID = .(0x618736e0, 0x3c3d, 0x11cf, 0x81, 0x0c, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_accParent(out IDispatch* ppdispParent) mut => VT.get_accParent(ref this, out ppdispParent);
			public HRESULT get_accChildCount(out int32 pcountChildren) mut => VT.get_accChildCount(ref this, out pcountChildren);
			public HRESULT get_accChild(VARIANT varChild, out IDispatch* ppdispChild) mut => VT.get_accChild(ref this, varChild, out ppdispChild);
			public HRESULT get_accName(VARIANT varChild, out BSTR pszName) mut => VT.get_accName(ref this, varChild, out pszName);
			public HRESULT get_accValue(VARIANT varChild, out BSTR pszValue) mut => VT.get_accValue(ref this, varChild, out pszValue);
			public HRESULT get_accDescription(VARIANT varChild, out BSTR pszDescription) mut => VT.get_accDescription(ref this, varChild, out pszDescription);
			public HRESULT get_accRole(VARIANT varChild, out VARIANT pvarRole) mut => VT.get_accRole(ref this, varChild, out pvarRole);
			public HRESULT get_accState(VARIANT varChild, out VARIANT pvarState) mut => VT.get_accState(ref this, varChild, out pvarState);
			public HRESULT get_accHelp(VARIANT varChild, out BSTR pszHelp) mut => VT.get_accHelp(ref this, varChild, out pszHelp);
			public HRESULT get_accHelpTopic(out BSTR pszHelpFile, VARIANT varChild, out int32 pidTopic) mut => VT.get_accHelpTopic(ref this, out pszHelpFile, varChild, out pidTopic);
			public HRESULT get_accKeyboardShortcut(VARIANT varChild, out BSTR pszKeyboardShortcut) mut => VT.get_accKeyboardShortcut(ref this, varChild, out pszKeyboardShortcut);
			public HRESULT get_accFocus(out VARIANT pvarChild) mut => VT.get_accFocus(ref this, out pvarChild);
			public HRESULT get_accSelection(out VARIANT pvarChildren) mut => VT.get_accSelection(ref this, out pvarChildren);
			public HRESULT get_accDefaultAction(VARIANT varChild, out BSTR pszDefaultAction) mut => VT.get_accDefaultAction(ref this, varChild, out pszDefaultAction);
			public HRESULT accSelect(int32 flagsSelect, VARIANT varChild) mut => VT.accSelect(ref this, flagsSelect, varChild);
			public HRESULT accLocation(out int32 pxLeft, out int32 pyTop, out int32 pcxWidth, out int32 pcyHeight, VARIANT varChild) mut => VT.accLocation(ref this, out pxLeft, out pyTop, out pcxWidth, out pcyHeight, varChild);
			public HRESULT accNavigate(int32 navDir, VARIANT varStart, out VARIANT pvarEndUpAt) mut => VT.accNavigate(ref this, navDir, varStart, out pvarEndUpAt);
			public HRESULT accHitTest(int32 xLeft, int32 yTop, out VARIANT pvarChild) mut => VT.accHitTest(ref this, xLeft, yTop, out pvarChild);
			public HRESULT accDoDefaultAction(VARIANT varChild) mut => VT.accDoDefaultAction(ref this, varChild);
			public HRESULT put_accName(VARIANT varChild, BSTR szName) mut => VT.put_accName(ref this, varChild, szName);
			public HRESULT put_accValue(VARIANT varChild, BSTR szValue) mut => VT.put_accValue(ref this, varChild, szValue);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out IDispatch* ppdispParent) get_accParent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out int32 pcountChildren) get_accChildCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out IDispatch* ppdispChild) get_accChild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszName) get_accName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszValue) get_accValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszDescription) get_accDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out VARIANT pvarRole) get_accRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out VARIANT pvarState) get_accState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszHelp) get_accHelp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out BSTR pszHelpFile, VARIANT varChild, out int32 pidTopic) get_accHelpTopic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszKeyboardShortcut) get_accKeyboardShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out VARIANT pvarChild) get_accFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out VARIANT pvarChildren) get_accSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, out BSTR pszDefaultAction) get_accDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, int32 flagsSelect, VARIANT varChild) accSelect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, out int32 pxLeft, out int32 pyTop, out int32 pcxWidth, out int32 pcyHeight, VARIANT varChild) accLocation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, int32 navDir, VARIANT varStart, out VARIANT pvarEndUpAt) accNavigate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, int32 xLeft, int32 yTop, out VARIANT pvarChild) accHitTest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild) accDoDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, BSTR szName) put_accName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessible self, VARIANT varChild, BSTR szValue) put_accValue;
			}
		}
		[CRepr]
		public struct IAccessibleHandler : IUnknown
		{
			public const new Guid IID = .(0x03022430, 0xabc4, 0x11d0, 0xbd, 0xe2, 0x00, 0xaa, 0x00, 0x1a, 0x19, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AccessibleObjectFromID(int32 hwnd, int32 lObjectID, out IAccessible* pIAccessible) mut => VT.AccessibleObjectFromID(ref this, hwnd, lObjectID, out pIAccessible);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleHandler self, int32 hwnd, int32 lObjectID, out IAccessible* pIAccessible) AccessibleObjectFromID;
			}
		}
		[CRepr]
		public struct IAccessibleWindowlessSite : IUnknown
		{
			public const new Guid IID = .(0xbf3abd9c, 0x76da, 0x4389, 0x9e, 0xb6, 0x14, 0x27, 0xd2, 0x5a, 0xba, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireObjectIdRange(int32 rangeSize, ref IAccessibleHandler pRangeOwner, out int32 pRangeBase) mut => VT.AcquireObjectIdRange(ref this, rangeSize, ref pRangeOwner, out pRangeBase);
			public HRESULT ReleaseObjectIdRange(int32 rangeBase, ref IAccessibleHandler pRangeOwner) mut => VT.ReleaseObjectIdRange(ref this, rangeBase, ref pRangeOwner);
			public HRESULT QueryObjectIdRanges(ref IAccessibleHandler pRangesOwner, out SAFEARRAY* psaRanges) mut => VT.QueryObjectIdRanges(ref this, ref pRangesOwner, out psaRanges);
			public HRESULT GetParentAccessible(out IAccessible* ppParent) mut => VT.GetParentAccessible(ref this, out ppParent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleWindowlessSite self, int32 rangeSize, ref IAccessibleHandler pRangeOwner, out int32 pRangeBase) AcquireObjectIdRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleWindowlessSite self, int32 rangeBase, ref IAccessibleHandler pRangeOwner) ReleaseObjectIdRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleWindowlessSite self, ref IAccessibleHandler pRangesOwner, out SAFEARRAY* psaRanges) QueryObjectIdRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleWindowlessSite self, out IAccessible* ppParent) GetParentAccessible;
			}
		}
		[CRepr]
		public struct IAccIdentity : IUnknown
		{
			public const new Guid IID = .(0x7852b78d, 0x1cfd, 0x41c1, 0xa6, 0x15, 0x9c, 0x0c, 0x85, 0x96, 0x0b, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIdentityString(uint32 dwIDChild, uint8** ppIDString, out uint32 pdwIDStringLen) mut => VT.GetIdentityString(ref this, dwIDChild, ppIDString, out pdwIDStringLen);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccIdentity self, uint32 dwIDChild, uint8** ppIDString, out uint32 pdwIDStringLen) GetIdentityString;
			}
		}
		[CRepr]
		public struct IAccPropServer : IUnknown
		{
			public const new Guid IID = .(0x76c0dbbb, 0x15e0, 0x4e7b, 0xb6, 0x1b, 0x20, 0xee, 0xea, 0x20, 0x01, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropValue(uint8* pIDString, uint32 dwIDStringLen, Guid idProp, out VARIANT pvarValue, out BOOL pfHasProp) mut => VT.GetPropValue(ref this, pIDString, dwIDStringLen, idProp, out pvarValue, out pfHasProp);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServer self, uint8* pIDString, uint32 dwIDStringLen, Guid idProp, out VARIANT pvarValue, out BOOL pfHasProp) GetPropValue;
			}
		}
		[CRepr]
		public struct IAccPropServices : IUnknown
		{
			public const new Guid IID = .(0x6e26e776, 0x04f0, 0x495d, 0x80, 0xe4, 0x33, 0x30, 0x35, 0x2e, 0x31, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPropValue(uint8* pIDString, uint32 dwIDStringLen, Guid idProp, VARIANT @var) mut => VT.SetPropValue(ref this, pIDString, dwIDStringLen, idProp, @var);
			public HRESULT SetPropServer(uint8* pIDString, uint32 dwIDStringLen, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) mut => VT.SetPropServer(ref this, pIDString, dwIDStringLen, paProps, cProps, ref pServer, annoScope);
			public HRESULT ClearProps(uint8* pIDString, uint32 dwIDStringLen, Guid* paProps, int32 cProps) mut => VT.ClearProps(ref this, pIDString, dwIDStringLen, paProps, cProps);
			public HRESULT SetHwndProp(HWND hwnd, uint32 idObject, uint32 idChild, Guid idProp, VARIANT @var) mut => VT.SetHwndProp(ref this, hwnd, idObject, idChild, idProp, @var);
			public HRESULT SetHwndPropStr(HWND hwnd, uint32 idObject, uint32 idChild, Guid idProp, PWSTR str) mut => VT.SetHwndPropStr(ref this, hwnd, idObject, idChild, idProp, str);
			public HRESULT SetHwndPropServer(HWND hwnd, uint32 idObject, uint32 idChild, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) mut => VT.SetHwndPropServer(ref this, hwnd, idObject, idChild, paProps, cProps, ref pServer, annoScope);
			public HRESULT ClearHwndProps(HWND hwnd, uint32 idObject, uint32 idChild, Guid* paProps, int32 cProps) mut => VT.ClearHwndProps(ref this, hwnd, idObject, idChild, paProps, cProps);
			public HRESULT ComposeHwndIdentityString(HWND hwnd, uint32 idObject, uint32 idChild, uint8** ppIDString, out uint32 pdwIDStringLen) mut => VT.ComposeHwndIdentityString(ref this, hwnd, idObject, idChild, ppIDString, out pdwIDStringLen);
			public HRESULT DecomposeHwndIdentityString(uint8* pIDString, uint32 dwIDStringLen, out HWND phwnd, out uint32 pidObject, out uint32 pidChild) mut => VT.DecomposeHwndIdentityString(ref this, pIDString, dwIDStringLen, out phwnd, out pidObject, out pidChild);
			public HRESULT SetHmenuProp(HMENU hmenu, uint32 idChild, Guid idProp, VARIANT @var) mut => VT.SetHmenuProp(ref this, hmenu, idChild, idProp, @var);
			public HRESULT SetHmenuPropStr(HMENU hmenu, uint32 idChild, Guid idProp, PWSTR str) mut => VT.SetHmenuPropStr(ref this, hmenu, idChild, idProp, str);
			public HRESULT SetHmenuPropServer(HMENU hmenu, uint32 idChild, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) mut => VT.SetHmenuPropServer(ref this, hmenu, idChild, paProps, cProps, ref pServer, annoScope);
			public HRESULT ClearHmenuProps(HMENU hmenu, uint32 idChild, Guid* paProps, int32 cProps) mut => VT.ClearHmenuProps(ref this, hmenu, idChild, paProps, cProps);
			public HRESULT ComposeHmenuIdentityString(HMENU hmenu, uint32 idChild, uint8** ppIDString, out uint32 pdwIDStringLen) mut => VT.ComposeHmenuIdentityString(ref this, hmenu, idChild, ppIDString, out pdwIDStringLen);
			public HRESULT DecomposeHmenuIdentityString(uint8* pIDString, uint32 dwIDStringLen, out HMENU phmenu, out uint32 pidChild) mut => VT.DecomposeHmenuIdentityString(ref this, pIDString, dwIDStringLen, out phmenu, out pidChild);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, uint8* pIDString, uint32 dwIDStringLen, Guid idProp, VARIANT @var) SetPropValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, uint8* pIDString, uint32 dwIDStringLen, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) SetPropServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, uint8* pIDString, uint32 dwIDStringLen, Guid* paProps, int32 cProps) ClearProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HWND hwnd, uint32 idObject, uint32 idChild, Guid idProp, VARIANT @var) SetHwndProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HWND hwnd, uint32 idObject, uint32 idChild, Guid idProp, PWSTR str) SetHwndPropStr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HWND hwnd, uint32 idObject, uint32 idChild, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) SetHwndPropServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HWND hwnd, uint32 idObject, uint32 idChild, Guid* paProps, int32 cProps) ClearHwndProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HWND hwnd, uint32 idObject, uint32 idChild, uint8** ppIDString, out uint32 pdwIDStringLen) ComposeHwndIdentityString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, uint8* pIDString, uint32 dwIDStringLen, out HWND phwnd, out uint32 pidObject, out uint32 pidChild) DecomposeHwndIdentityString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HMENU hmenu, uint32 idChild, Guid idProp, VARIANT @var) SetHmenuProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HMENU hmenu, uint32 idChild, Guid idProp, PWSTR str) SetHmenuPropStr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HMENU hmenu, uint32 idChild, Guid* paProps, int32 cProps, ref IAccPropServer pServer, AnnoScope annoScope) SetHmenuPropServer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HMENU hmenu, uint32 idChild, Guid* paProps, int32 cProps) ClearHmenuProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, HMENU hmenu, uint32 idChild, uint8** ppIDString, out uint32 pdwIDStringLen) ComposeHmenuIdentityString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccPropServices self, uint8* pIDString, uint32 dwIDStringLen, out HMENU phmenu, out uint32 pidChild) DecomposeHmenuIdentityString;
			}
		}
		[CRepr]
		public struct IRawElementProviderSimple : IUnknown
		{
			public const new Guid IID = .(0xd6dd68d1, 0x86fd, 0x4332, 0x86, 0x66, 0x9a, 0xbe, 0xde, 0xa2, 0xd2, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProviderOptions(out ProviderOptions pRetVal) mut => VT.get_ProviderOptions(ref this, out pRetVal);
			public HRESULT GetPatternProvider(int32 patternId, out IUnknown* pRetVal) mut => VT.GetPatternProvider(ref this, patternId, out pRetVal);
			public HRESULT GetPropertyValue(int32 propertyId, out VARIANT pRetVal) mut => VT.GetPropertyValue(ref this, propertyId, out pRetVal);
			public HRESULT get_HostRawElementProvider(out IRawElementProviderSimple* pRetVal) mut => VT.get_HostRawElementProvider(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple self, out ProviderOptions pRetVal) get_ProviderOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple self, int32 patternId, out IUnknown* pRetVal) GetPatternProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple self, int32 propertyId, out VARIANT pRetVal) GetPropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple self, out IRawElementProviderSimple* pRetVal) get_HostRawElementProvider;
			}
		}
		[CRepr]
		public struct IAccessibleEx : IUnknown
		{
			public const new Guid IID = .(0xf8b80ada, 0x2c44, 0x48d0, 0x89, 0xbe, 0x5f, 0xf2, 0x3c, 0x9c, 0xd8, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectForChild(int32 idChild, out IAccessibleEx* pRetVal) mut => VT.GetObjectForChild(ref this, idChild, out pRetVal);
			public HRESULT GetIAccessiblePair(out IAccessible* ppAcc, out int32 pidChild) mut => VT.GetIAccessiblePair(ref this, out ppAcc, out pidChild);
			public HRESULT GetRuntimeId(out SAFEARRAY* pRetVal) mut => VT.GetRuntimeId(ref this, out pRetVal);
			public HRESULT ConvertReturnedElement(ref IRawElementProviderSimple pIn, out IAccessibleEx* ppRetValOut) mut => VT.ConvertReturnedElement(ref this, ref pIn, out ppRetValOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleEx self, int32 idChild, out IAccessibleEx* pRetVal) GetObjectForChild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleEx self, out IAccessible* ppAcc, out int32 pidChild) GetIAccessiblePair;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleEx self, out SAFEARRAY* pRetVal) GetRuntimeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleEx self, ref IRawElementProviderSimple pIn, out IAccessibleEx* ppRetValOut) ConvertReturnedElement;
			}
		}
		[CRepr]
		public struct IRawElementProviderSimple2 : IRawElementProviderSimple
		{
			public const new Guid IID = .(0xa0a839a9, 0x8da1, 0x4a82, 0x80, 0x6a, 0x8e, 0x0d, 0x44, 0xe7, 0x9f, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowContextMenu() mut => VT.ShowContextMenu(ref this);

			[CRepr]
			public struct VTable : IRawElementProviderSimple.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple2 self) ShowContextMenu;
			}
		}
		[CRepr]
		public struct IRawElementProviderSimple3 : IRawElementProviderSimple2
		{
			public const new Guid IID = .(0xfcf5d820, 0xd7ec, 0x4613, 0xbd, 0xf6, 0x42, 0xa8, 0x4c, 0xe7, 0xda, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMetadataValue(int32 targetId, int32 metadataId, out VARIANT returnVal) mut => VT.GetMetadataValue(ref this, targetId, metadataId, out returnVal);

			[CRepr]
			public struct VTable : IRawElementProviderSimple2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderSimple3 self, int32 targetId, int32 metadataId, out VARIANT returnVal) GetMetadataValue;
			}
		}
		[CRepr]
		public struct IRawElementProviderFragmentRoot : IUnknown
		{
			public const new Guid IID = .(0x620ce2a5, 0xab8f, 0x40a9, 0x86, 0xcb, 0xde, 0x3c, 0x75, 0x59, 0x9b, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ElementProviderFromPoint(double x, double y, out IRawElementProviderFragment* pRetVal) mut => VT.ElementProviderFromPoint(ref this, x, y, out pRetVal);
			public HRESULT GetFocus(out IRawElementProviderFragment* pRetVal) mut => VT.GetFocus(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragmentRoot self, double x, double y, out IRawElementProviderFragment* pRetVal) ElementProviderFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragmentRoot self, out IRawElementProviderFragment* pRetVal) GetFocus;
			}
		}
		[CRepr]
		public struct IRawElementProviderFragment : IUnknown
		{
			public const new Guid IID = .(0xf7063da8, 0x8359, 0x439c, 0x92, 0x97, 0xbb, 0xc5, 0x29, 0x9a, 0x7d, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Navigate(NavigateDirection direction, out IRawElementProviderFragment* pRetVal) mut => VT.Navigate(ref this, direction, out pRetVal);
			public HRESULT GetRuntimeId(out SAFEARRAY* pRetVal) mut => VT.GetRuntimeId(ref this, out pRetVal);
			public HRESULT get_BoundingRectangle(out UiaRect pRetVal) mut => VT.get_BoundingRectangle(ref this, out pRetVal);
			public HRESULT GetEmbeddedFragmentRoots(out SAFEARRAY* pRetVal) mut => VT.GetEmbeddedFragmentRoots(ref this, out pRetVal);
			public HRESULT SetFocus() mut => VT.SetFocus(ref this);
			public HRESULT get_FragmentRoot(out IRawElementProviderFragmentRoot* pRetVal) mut => VT.get_FragmentRoot(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self, NavigateDirection direction, out IRawElementProviderFragment* pRetVal) Navigate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self, out SAFEARRAY* pRetVal) GetRuntimeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self, out UiaRect pRetVal) get_BoundingRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self, out SAFEARRAY* pRetVal) GetEmbeddedFragmentRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self) SetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderFragment self, out IRawElementProviderFragmentRoot* pRetVal) get_FragmentRoot;
			}
		}
		[CRepr]
		public struct IRawElementProviderAdviseEvents : IUnknown
		{
			public const new Guid IID = .(0xa407b27b, 0x0f6d, 0x4427, 0x92, 0x92, 0x47, 0x3c, 0x7b, 0xf9, 0x32, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseEventAdded(int32 eventId, ref SAFEARRAY propertyIDs) mut => VT.AdviseEventAdded(ref this, eventId, ref propertyIDs);
			public HRESULT AdviseEventRemoved(int32 eventId, ref SAFEARRAY propertyIDs) mut => VT.AdviseEventRemoved(ref this, eventId, ref propertyIDs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderAdviseEvents self, int32 eventId, ref SAFEARRAY propertyIDs) AdviseEventAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderAdviseEvents self, int32 eventId, ref SAFEARRAY propertyIDs) AdviseEventRemoved;
			}
		}
		[CRepr]
		public struct IRawElementProviderHwndOverride : IUnknown
		{
			public const new Guid IID = .(0x1d5df27c, 0x8947, 0x4425, 0xb8, 0xd9, 0x79, 0x78, 0x7b, 0xb4, 0x60, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOverrideProviderForHwnd(HWND hwnd, out IRawElementProviderSimple* pRetVal) mut => VT.GetOverrideProviderForHwnd(ref this, hwnd, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderHwndOverride self, HWND hwnd, out IRawElementProviderSimple* pRetVal) GetOverrideProviderForHwnd;
			}
		}
		[CRepr]
		public struct IProxyProviderWinEventSink : IUnknown
		{
			public const new Guid IID = .(0x4fd82b78, 0xa43e, 0x46ac, 0x98, 0x03, 0x0a, 0x69, 0x69, 0xc7, 0xc1, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddAutomationPropertyChangedEvent(ref IRawElementProviderSimple pProvider, int32 id, VARIANT newValue) mut => VT.AddAutomationPropertyChangedEvent(ref this, ref pProvider, id, newValue);
			public HRESULT AddAutomationEvent(ref IRawElementProviderSimple pProvider, int32 id) mut => VT.AddAutomationEvent(ref this, ref pProvider, id);
			public HRESULT AddStructureChangedEvent(ref IRawElementProviderSimple pProvider, StructureChangeType structureChangeType, ref SAFEARRAY runtimeId) mut => VT.AddStructureChangedEvent(ref this, ref pProvider, structureChangeType, ref runtimeId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProxyProviderWinEventSink self, ref IRawElementProviderSimple pProvider, int32 id, VARIANT newValue) AddAutomationPropertyChangedEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProxyProviderWinEventSink self, ref IRawElementProviderSimple pProvider, int32 id) AddAutomationEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProxyProviderWinEventSink self, ref IRawElementProviderSimple pProvider, StructureChangeType structureChangeType, ref SAFEARRAY runtimeId) AddStructureChangedEvent;
			}
		}
		[CRepr]
		public struct IProxyProviderWinEventHandler : IUnknown
		{
			public const new Guid IID = .(0x89592ad4, 0xf4e0, 0x43d5, 0xa3, 0xb6, 0xba, 0xd7, 0xe1, 0x11, 0xb4, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RespondToWinEvent(uint32 idWinEvent, HWND hwnd, int32 idObject, int32 idChild, ref IProxyProviderWinEventSink pSink) mut => VT.RespondToWinEvent(ref this, idWinEvent, hwnd, idObject, idChild, ref pSink);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProxyProviderWinEventHandler self, uint32 idWinEvent, HWND hwnd, int32 idObject, int32 idChild, ref IProxyProviderWinEventSink pSink) RespondToWinEvent;
			}
		}
		[CRepr]
		public struct IRawElementProviderWindowlessSite : IUnknown
		{
			public const new Guid IID = .(0x0a2a93cc, 0xbfad, 0x42ac, 0x9b, 0x2e, 0x09, 0x91, 0xfb, 0x0d, 0x3e, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAdjacentFragment(NavigateDirection direction, out IRawElementProviderFragment* ppParent) mut => VT.GetAdjacentFragment(ref this, direction, out ppParent);
			public HRESULT GetRuntimeIdPrefix(out SAFEARRAY* pRetVal) mut => VT.GetRuntimeIdPrefix(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderWindowlessSite self, NavigateDirection direction, out IRawElementProviderFragment* ppParent) GetAdjacentFragment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderWindowlessSite self, out SAFEARRAY* pRetVal) GetRuntimeIdPrefix;
			}
		}
		[CRepr]
		public struct IAccessibleHostingElementProviders : IUnknown
		{
			public const new Guid IID = .(0x33ac331b, 0x943e, 0x4020, 0xb2, 0x95, 0xdb, 0x37, 0x78, 0x49, 0x74, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEmbeddedFragmentRoots(out SAFEARRAY* pRetVal) mut => VT.GetEmbeddedFragmentRoots(ref this, out pRetVal);
			public HRESULT GetObjectIdForProvider(ref IRawElementProviderSimple pProvider, out int32 pidObject) mut => VT.GetObjectIdForProvider(ref this, ref pProvider, out pidObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleHostingElementProviders self, out SAFEARRAY* pRetVal) GetEmbeddedFragmentRoots;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleHostingElementProviders self, ref IRawElementProviderSimple pProvider, out int32 pidObject) GetObjectIdForProvider;
			}
		}
		[CRepr]
		public struct IRawElementProviderHostingAccessibles : IUnknown
		{
			public const new Guid IID = .(0x24be0b07, 0xd37d, 0x487a, 0x98, 0xcf, 0xa1, 0x3e, 0xd4, 0x65, 0xe9, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEmbeddedAccessibles(out SAFEARRAY* pRetVal) mut => VT.GetEmbeddedAccessibles(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawElementProviderHostingAccessibles self, out SAFEARRAY* pRetVal) GetEmbeddedAccessibles;
			}
		}
		[CRepr]
		public struct IDockProvider : IUnknown
		{
			public const new Guid IID = .(0x159bc72c, 0x4ad3, 0x485e, 0x96, 0x37, 0xd7, 0x05, 0x2e, 0xdf, 0x01, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDockPosition(DockPosition dockPosition) mut => VT.SetDockPosition(ref this, dockPosition);
			public HRESULT get_DockPosition(out DockPosition pRetVal) mut => VT.get_DockPosition(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockProvider self, DockPosition dockPosition) SetDockPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockProvider self, out DockPosition pRetVal) get_DockPosition;
			}
		}
		[CRepr]
		public struct IExpandCollapseProvider : IUnknown
		{
			public const new Guid IID = .(0xd847d3a5, 0xcab0, 0x4a98, 0x8c, 0x32, 0xec, 0xb4, 0x5c, 0x59, 0xad, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand() mut => VT.Expand(ref this);
			public HRESULT Collapse() mut => VT.Collapse(ref this);
			public HRESULT get_ExpandCollapseState(out ExpandCollapseState pRetVal) mut => VT.get_ExpandCollapseState(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpandCollapseProvider self) Expand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpandCollapseProvider self) Collapse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpandCollapseProvider self, out ExpandCollapseState pRetVal) get_ExpandCollapseState;
			}
		}
		[CRepr]
		public struct IGridProvider : IUnknown
		{
			public const new Guid IID = .(0xb17d6187, 0x0907, 0x464b, 0xa1, 0x68, 0x0e, 0xf1, 0x7a, 0x15, 0x72, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItem(int32 row, int32 column, out IRawElementProviderSimple* pRetVal) mut => VT.GetItem(ref this, row, column, out pRetVal);
			public HRESULT get_RowCount(out int32 pRetVal) mut => VT.get_RowCount(ref this, out pRetVal);
			public HRESULT get_ColumnCount(out int32 pRetVal) mut => VT.get_ColumnCount(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridProvider self, int32 row, int32 column, out IRawElementProviderSimple* pRetVal) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridProvider self, out int32 pRetVal) get_RowCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridProvider self, out int32 pRetVal) get_ColumnCount;
			}
		}
		[CRepr]
		public struct IGridItemProvider : IUnknown
		{
			public const new Guid IID = .(0xd02541f1, 0xfb81, 0x4d64, 0xae, 0x32, 0xf5, 0x20, 0xf8, 0xa6, 0xdb, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Row(out int32 pRetVal) mut => VT.get_Row(ref this, out pRetVal);
			public HRESULT get_Column(out int32 pRetVal) mut => VT.get_Column(ref this, out pRetVal);
			public HRESULT get_RowSpan(out int32 pRetVal) mut => VT.get_RowSpan(ref this, out pRetVal);
			public HRESULT get_ColumnSpan(out int32 pRetVal) mut => VT.get_ColumnSpan(ref this, out pRetVal);
			public HRESULT get_ContainingGrid(out IRawElementProviderSimple* pRetVal) mut => VT.get_ContainingGrid(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridItemProvider self, out int32 pRetVal) get_Row;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridItemProvider self, out int32 pRetVal) get_Column;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridItemProvider self, out int32 pRetVal) get_RowSpan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridItemProvider self, out int32 pRetVal) get_ColumnSpan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGridItemProvider self, out IRawElementProviderSimple* pRetVal) get_ContainingGrid;
			}
		}
		[CRepr]
		public struct IInvokeProvider : IUnknown
		{
			public const new Guid IID = .(0x54fcb24b, 0xe18e, 0x47a2, 0xb4, 0xd3, 0xec, 0xcb, 0xe7, 0x75, 0x99, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke() mut => VT.Invoke(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInvokeProvider self) Invoke;
			}
		}
		[CRepr]
		public struct IMultipleViewProvider : IUnknown
		{
			public const new Guid IID = .(0x6278cab1, 0xb556, 0x4a1a, 0xb4, 0xe0, 0x41, 0x8a, 0xcc, 0x52, 0x32, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetViewName(int32 viewId, out BSTR pRetVal) mut => VT.GetViewName(ref this, viewId, out pRetVal);
			public HRESULT SetCurrentView(int32 viewId) mut => VT.SetCurrentView(ref this, viewId);
			public HRESULT get_CurrentView(out int32 pRetVal) mut => VT.get_CurrentView(ref this, out pRetVal);
			public HRESULT GetSupportedViews(out SAFEARRAY* pRetVal) mut => VT.GetSupportedViews(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultipleViewProvider self, int32 viewId, out BSTR pRetVal) GetViewName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultipleViewProvider self, int32 viewId) SetCurrentView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultipleViewProvider self, out int32 pRetVal) get_CurrentView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultipleViewProvider self, out SAFEARRAY* pRetVal) GetSupportedViews;
			}
		}
		[CRepr]
		public struct IRangeValueProvider : IUnknown
		{
			public const new Guid IID = .(0x36dc7aef, 0x33e6, 0x4691, 0xaf, 0xe1, 0x2b, 0xe7, 0x27, 0x4b, 0x3d, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(double val) mut => VT.SetValue(ref this, val);
			public HRESULT get_Value(out double pRetVal) mut => VT.get_Value(ref this, out pRetVal);
			public HRESULT get_IsReadOnly(out BOOL pRetVal) mut => VT.get_IsReadOnly(ref this, out pRetVal);
			public HRESULT get_Maximum(out double pRetVal) mut => VT.get_Maximum(ref this, out pRetVal);
			public HRESULT get_Minimum(out double pRetVal) mut => VT.get_Minimum(ref this, out pRetVal);
			public HRESULT get_LargeChange(out double pRetVal) mut => VT.get_LargeChange(ref this, out pRetVal);
			public HRESULT get_SmallChange(out double pRetVal) mut => VT.get_SmallChange(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, double val) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out double pRetVal) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out BOOL pRetVal) get_IsReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out double pRetVal) get_Maximum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out double pRetVal) get_Minimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out double pRetVal) get_LargeChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRangeValueProvider self, out double pRetVal) get_SmallChange;
			}
		}
		[CRepr]
		public struct IScrollItemProvider : IUnknown
		{
			public const new Guid IID = .(0x2360c714, 0x4bf1, 0x4b26, 0xba, 0x65, 0x9b, 0x21, 0x31, 0x61, 0x27, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollIntoView() mut => VT.ScrollIntoView(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollItemProvider self) ScrollIntoView;
			}
		}
		[CRepr]
		public struct ISelectionProvider : IUnknown
		{
			public const new Guid IID = .(0xfb8b03af, 0x3bdf, 0x48d4, 0xbd, 0x36, 0x1a, 0x65, 0x79, 0x3b, 0xe1, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelection(out SAFEARRAY* pRetVal) mut => VT.GetSelection(ref this, out pRetVal);
			public HRESULT get_CanSelectMultiple(out BOOL pRetVal) mut => VT.get_CanSelectMultiple(ref this, out pRetVal);
			public HRESULT get_IsSelectionRequired(out BOOL pRetVal) mut => VT.get_IsSelectionRequired(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider self, out SAFEARRAY* pRetVal) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider self, out BOOL pRetVal) get_CanSelectMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider self, out BOOL pRetVal) get_IsSelectionRequired;
			}
		}
		[CRepr]
		public struct ISelectionProvider2 : ISelectionProvider
		{
			public const new Guid IID = .(0x14f68475, 0xee1c, 0x44f6, 0xa8, 0x69, 0xd2, 0x39, 0x38, 0x1f, 0x0f, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FirstSelectedItem(out IRawElementProviderSimple* retVal) mut => VT.get_FirstSelectedItem(ref this, out retVal);
			public HRESULT get_LastSelectedItem(out IRawElementProviderSimple* retVal) mut => VT.get_LastSelectedItem(ref this, out retVal);
			public HRESULT get_CurrentSelectedItem(out IRawElementProviderSimple* retVal) mut => VT.get_CurrentSelectedItem(ref this, out retVal);
			public HRESULT get_ItemCount(out int32 retVal) mut => VT.get_ItemCount(ref this, out retVal);

			[CRepr]
			public struct VTable : ISelectionProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider2 self, out IRawElementProviderSimple* retVal) get_FirstSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider2 self, out IRawElementProviderSimple* retVal) get_LastSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider2 self, out IRawElementProviderSimple* retVal) get_CurrentSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionProvider2 self, out int32 retVal) get_ItemCount;
			}
		}
		[CRepr]
		public struct IScrollProvider : IUnknown
		{
			public const new Guid IID = .(0xb38b8077, 0x1fc3, 0x42a5, 0x8c, 0xae, 0xd4, 0x0c, 0x22, 0x15, 0x05, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Scroll(ScrollAmount horizontalAmount, ScrollAmount verticalAmount) mut => VT.Scroll(ref this, horizontalAmount, verticalAmount);
			public HRESULT SetScrollPercent(double horizontalPercent, double verticalPercent) mut => VT.SetScrollPercent(ref this, horizontalPercent, verticalPercent);
			public HRESULT get_HorizontalScrollPercent(out double pRetVal) mut => VT.get_HorizontalScrollPercent(ref this, out pRetVal);
			public HRESULT get_VerticalScrollPercent(out double pRetVal) mut => VT.get_VerticalScrollPercent(ref this, out pRetVal);
			public HRESULT get_HorizontalViewSize(out double pRetVal) mut => VT.get_HorizontalViewSize(ref this, out pRetVal);
			public HRESULT get_VerticalViewSize(out double pRetVal) mut => VT.get_VerticalViewSize(ref this, out pRetVal);
			public HRESULT get_HorizontallyScrollable(out BOOL pRetVal) mut => VT.get_HorizontallyScrollable(ref this, out pRetVal);
			public HRESULT get_VerticallyScrollable(out BOOL pRetVal) mut => VT.get_VerticallyScrollable(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, ScrollAmount horizontalAmount, ScrollAmount verticalAmount) Scroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, double horizontalPercent, double verticalPercent) SetScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out double pRetVal) get_HorizontalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out double pRetVal) get_VerticalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out double pRetVal) get_HorizontalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out double pRetVal) get_VerticalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out BOOL pRetVal) get_HorizontallyScrollable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IScrollProvider self, out BOOL pRetVal) get_VerticallyScrollable;
			}
		}
		[CRepr]
		public struct ISelectionItemProvider : IUnknown
		{
			public const new Guid IID = .(0x2acad808, 0xb2d4, 0x452d, 0xa4, 0x07, 0x91, 0xff, 0x1a, 0xd1, 0x67, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Select() mut => VT.Select(ref this);
			public HRESULT AddToSelection() mut => VT.AddToSelection(ref this);
			public HRESULT RemoveFromSelection() mut => VT.RemoveFromSelection(ref this);
			public HRESULT get_IsSelected(out BOOL pRetVal) mut => VT.get_IsSelected(ref this, out pRetVal);
			public HRESULT get_SelectionContainer(out IRawElementProviderSimple* pRetVal) mut => VT.get_SelectionContainer(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionItemProvider self) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionItemProvider self) AddToSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionItemProvider self) RemoveFromSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionItemProvider self, out BOOL pRetVal) get_IsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISelectionItemProvider self, out IRawElementProviderSimple* pRetVal) get_SelectionContainer;
			}
		}
		[CRepr]
		public struct ISynchronizedInputProvider : IUnknown
		{
			public const new Guid IID = .(0x29db1a06, 0x02ce, 0x4cf7, 0x9b, 0x42, 0x56, 0x5d, 0x4f, 0xab, 0x20, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListening(SynchronizedInputType inputType) mut => VT.StartListening(ref this, inputType);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizedInputProvider self, SynchronizedInputType inputType) StartListening;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISynchronizedInputProvider self) Cancel;
			}
		}
		[CRepr]
		public struct ITableProvider : IUnknown
		{
			public const new Guid IID = .(0x9c860395, 0x97b3, 0x490a, 0xb5, 0x2a, 0x85, 0x8c, 0xc2, 0x2a, 0xf1, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRowHeaders(out SAFEARRAY* pRetVal) mut => VT.GetRowHeaders(ref this, out pRetVal);
			public HRESULT GetColumnHeaders(out SAFEARRAY* pRetVal) mut => VT.GetColumnHeaders(ref this, out pRetVal);
			public HRESULT get_RowOrColumnMajor(out RowOrColumnMajor pRetVal) mut => VT.get_RowOrColumnMajor(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITableProvider self, out SAFEARRAY* pRetVal) GetRowHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITableProvider self, out SAFEARRAY* pRetVal) GetColumnHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITableProvider self, out RowOrColumnMajor pRetVal) get_RowOrColumnMajor;
			}
		}
		[CRepr]
		public struct ITableItemProvider : IUnknown
		{
			public const new Guid IID = .(0xb9734fa6, 0x771f, 0x4d78, 0x9c, 0x90, 0x25, 0x17, 0x99, 0x93, 0x49, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRowHeaderItems(out SAFEARRAY* pRetVal) mut => VT.GetRowHeaderItems(ref this, out pRetVal);
			public HRESULT GetColumnHeaderItems(out SAFEARRAY* pRetVal) mut => VT.GetColumnHeaderItems(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITableItemProvider self, out SAFEARRAY* pRetVal) GetRowHeaderItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITableItemProvider self, out SAFEARRAY* pRetVal) GetColumnHeaderItems;
			}
		}
		[CRepr]
		public struct IToggleProvider : IUnknown
		{
			public const new Guid IID = .(0x56d00bd0, 0xc4f4, 0x433c, 0xa8, 0x36, 0x1a, 0x52, 0xa5, 0x7e, 0x08, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Toggle() mut => VT.Toggle(ref this);
			public HRESULT get_ToggleState(out ToggleState pRetVal) mut => VT.get_ToggleState(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToggleProvider self) Toggle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IToggleProvider self, out ToggleState pRetVal) get_ToggleState;
			}
		}
		[CRepr]
		public struct ITransformProvider : IUnknown
		{
			public const new Guid IID = .(0x6829ddc4, 0x4f91, 0x4ffa, 0xb8, 0x6f, 0xbd, 0x3e, 0x29, 0x87, 0xcb, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Move(double x, double y) mut => VT.Move(ref this, x, y);
			public HRESULT Resize(double width, double height) mut => VT.Resize(ref this, width, height);
			public HRESULT Rotate(double degrees) mut => VT.Rotate(ref this, degrees);
			public HRESULT get_CanMove(out BOOL pRetVal) mut => VT.get_CanMove(ref this, out pRetVal);
			public HRESULT get_CanResize(out BOOL pRetVal) mut => VT.get_CanResize(ref this, out pRetVal);
			public HRESULT get_CanRotate(out BOOL pRetVal) mut => VT.get_CanRotate(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, double x, double y) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, double width, double height) Resize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, double degrees) Rotate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, out BOOL pRetVal) get_CanMove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, out BOOL pRetVal) get_CanResize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider self, out BOOL pRetVal) get_CanRotate;
			}
		}
		[CRepr]
		public struct IValueProvider : IUnknown
		{
			public const new Guid IID = .(0xc7935180, 0x6fb3, 0x4201, 0xb1, 0x74, 0x7d, 0xf7, 0x3a, 0xdb, 0xf6, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(PWSTR val) mut => VT.SetValue(ref this, val);
			public HRESULT get_Value(out BSTR pRetVal) mut => VT.get_Value(ref this, out pRetVal);
			public HRESULT get_IsReadOnly(out BOOL pRetVal) mut => VT.get_IsReadOnly(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueProvider self, PWSTR val) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueProvider self, out BSTR pRetVal) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IValueProvider self, out BOOL pRetVal) get_IsReadOnly;
			}
		}
		[CRepr]
		public struct IWindowProvider : IUnknown
		{
			public const new Guid IID = .(0x987df77b, 0xdb06, 0x4d77, 0x8f, 0x8a, 0x86, 0xa9, 0xc3, 0xbb, 0x90, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVisualState(WindowVisualState state) mut => VT.SetVisualState(ref this, state);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT WaitForInputIdle(int32 milliseconds, out BOOL pRetVal) mut => VT.WaitForInputIdle(ref this, milliseconds, out pRetVal);
			public HRESULT get_CanMaximize(out BOOL pRetVal) mut => VT.get_CanMaximize(ref this, out pRetVal);
			public HRESULT get_CanMinimize(out BOOL pRetVal) mut => VT.get_CanMinimize(ref this, out pRetVal);
			public HRESULT get_IsModal(out BOOL pRetVal) mut => VT.get_IsModal(ref this, out pRetVal);
			public HRESULT get_WindowVisualState(out WindowVisualState pRetVal) mut => VT.get_WindowVisualState(ref this, out pRetVal);
			public HRESULT get_WindowInteractionState(out WindowInteractionState pRetVal) mut => VT.get_WindowInteractionState(ref this, out pRetVal);
			public HRESULT get_IsTopmost(out BOOL pRetVal) mut => VT.get_IsTopmost(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, WindowVisualState state) SetVisualState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, int32 milliseconds, out BOOL pRetVal) WaitForInputIdle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out BOOL pRetVal) get_CanMaximize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out BOOL pRetVal) get_CanMinimize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out BOOL pRetVal) get_IsModal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out WindowVisualState pRetVal) get_WindowVisualState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out WindowInteractionState pRetVal) get_WindowInteractionState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWindowProvider self, out BOOL pRetVal) get_IsTopmost;
			}
		}
		[CRepr]
		public struct ILegacyIAccessibleProvider : IUnknown
		{
			public const new Guid IID = .(0xe44c3566, 0x915d, 0x4070, 0x99, 0xc6, 0x04, 0x7b, 0xff, 0x5a, 0x08, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Select(int32 flagsSelect) mut => VT.Select(ref this, flagsSelect);
			public HRESULT DoDefaultAction() mut => VT.DoDefaultAction(ref this);
			public HRESULT SetValue(PWSTR szValue) mut => VT.SetValue(ref this, szValue);
			public HRESULT GetIAccessible(out IAccessible* ppAccessible) mut => VT.GetIAccessible(ref this, out ppAccessible);
			public HRESULT get_ChildId(out int32 pRetVal) mut => VT.get_ChildId(ref this, out pRetVal);
			public HRESULT get_Name(out BSTR pszName) mut => VT.get_Name(ref this, out pszName);
			public HRESULT get_Value(out BSTR pszValue) mut => VT.get_Value(ref this, out pszValue);
			public HRESULT get_Description(out BSTR pszDescription) mut => VT.get_Description(ref this, out pszDescription);
			public HRESULT get_Role(out uint32 pdwRole) mut => VT.get_Role(ref this, out pdwRole);
			public HRESULT get_State(out uint32 pdwState) mut => VT.get_State(ref this, out pdwState);
			public HRESULT get_Help(out BSTR pszHelp) mut => VT.get_Help(ref this, out pszHelp);
			public HRESULT get_KeyboardShortcut(out BSTR pszKeyboardShortcut) mut => VT.get_KeyboardShortcut(ref this, out pszKeyboardShortcut);
			public HRESULT GetSelection(out SAFEARRAY* pvarSelectedChildren) mut => VT.GetSelection(ref this, out pvarSelectedChildren);
			public HRESULT get_DefaultAction(out BSTR pszDefaultAction) mut => VT.get_DefaultAction(ref this, out pszDefaultAction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, int32 flagsSelect) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self) DoDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, PWSTR szValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out IAccessible* ppAccessible) GetIAccessible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out int32 pRetVal) get_ChildId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszValue) get_Value;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszDescription) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out uint32 pdwRole) get_Role;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out uint32 pdwState) get_State;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszHelp) get_Help;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszKeyboardShortcut) get_KeyboardShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out SAFEARRAY* pvarSelectedChildren) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ILegacyIAccessibleProvider self, out BSTR pszDefaultAction) get_DefaultAction;
			}
		}
		[CRepr]
		public struct IItemContainerProvider : IUnknown
		{
			public const new Guid IID = .(0xe747770b, 0x39ce, 0x4382, 0xab, 0x30, 0xd8, 0xfb, 0x3f, 0x33, 0x6f, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindItemByProperty(ref IRawElementProviderSimple pStartAfter, int32 propertyId, VARIANT value, out IRawElementProviderSimple* pFound) mut => VT.FindItemByProperty(ref this, ref pStartAfter, propertyId, value, out pFound);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IItemContainerProvider self, ref IRawElementProviderSimple pStartAfter, int32 propertyId, VARIANT value, out IRawElementProviderSimple* pFound) FindItemByProperty;
			}
		}
		[CRepr]
		public struct IVirtualizedItemProvider : IUnknown
		{
			public const new Guid IID = .(0xcb98b665, 0x2d35, 0x4fac, 0xad, 0x35, 0xf3, 0xc6, 0x0d, 0x0c, 0x0b, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Realize() mut => VT.Realize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualizedItemProvider self) Realize;
			}
		}
		[CRepr]
		public struct IObjectModelProvider : IUnknown
		{
			public const new Guid IID = .(0x3ad86ebd, 0xf5ef, 0x483d, 0xbb, 0x18, 0xb1, 0x04, 0x2a, 0x47, 0x5d, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUnderlyingObjectModel(out IUnknown* ppUnknown) mut => VT.GetUnderlyingObjectModel(ref this, out ppUnknown);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectModelProvider self, out IUnknown* ppUnknown) GetUnderlyingObjectModel;
			}
		}
		[CRepr]
		public struct IAnnotationProvider : IUnknown
		{
			public const new Guid IID = .(0xf95c7e80, 0xbd63, 0x4601, 0x97, 0x82, 0x44, 0x5e, 0xbf, 0xf0, 0x11, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AnnotationTypeId(out int32 retVal) mut => VT.get_AnnotationTypeId(ref this, out retVal);
			public HRESULT get_AnnotationTypeName(out BSTR retVal) mut => VT.get_AnnotationTypeName(ref this, out retVal);
			public HRESULT get_Author(out BSTR retVal) mut => VT.get_Author(ref this, out retVal);
			public HRESULT get_DateTime(out BSTR retVal) mut => VT.get_DateTime(ref this, out retVal);
			public HRESULT get_Target(out IRawElementProviderSimple* retVal) mut => VT.get_Target(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnnotationProvider self, out int32 retVal) get_AnnotationTypeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnnotationProvider self, out BSTR retVal) get_AnnotationTypeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnnotationProvider self, out BSTR retVal) get_Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnnotationProvider self, out BSTR retVal) get_DateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnnotationProvider self, out IRawElementProviderSimple* retVal) get_Target;
			}
		}
		[CRepr]
		public struct IStylesProvider : IUnknown
		{
			public const new Guid IID = .(0x19b6b649, 0xf5d7, 0x4a6d, 0xbd, 0xcb, 0x12, 0x92, 0x52, 0xbe, 0x58, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StyleId(out int32 retVal) mut => VT.get_StyleId(ref this, out retVal);
			public HRESULT get_StyleName(out BSTR retVal) mut => VT.get_StyleName(ref this, out retVal);
			public HRESULT get_FillColor(out int32 retVal) mut => VT.get_FillColor(ref this, out retVal);
			public HRESULT get_FillPatternStyle(out BSTR retVal) mut => VT.get_FillPatternStyle(ref this, out retVal);
			public HRESULT get_Shape(out BSTR retVal) mut => VT.get_Shape(ref this, out retVal);
			public HRESULT get_FillPatternColor(out int32 retVal) mut => VT.get_FillPatternColor(ref this, out retVal);
			public HRESULT get_ExtendedProperties(out BSTR retVal) mut => VT.get_ExtendedProperties(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out int32 retVal) get_StyleId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out BSTR retVal) get_StyleName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out int32 retVal) get_FillColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out BSTR retVal) get_FillPatternStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out BSTR retVal) get_Shape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out int32 retVal) get_FillPatternColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStylesProvider self, out BSTR retVal) get_ExtendedProperties;
			}
		}
		[CRepr]
		public struct ISpreadsheetProvider : IUnknown
		{
			public const new Guid IID = .(0x6f6b5d35, 0x5525, 0x4f80, 0xb7, 0x58, 0x85, 0x47, 0x38, 0x32, 0xff, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByName(PWSTR name, out IRawElementProviderSimple* pRetVal) mut => VT.GetItemByName(ref this, name, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpreadsheetProvider self, PWSTR name, out IRawElementProviderSimple* pRetVal) GetItemByName;
			}
		}
		[CRepr]
		public struct ISpreadsheetItemProvider : IUnknown
		{
			public const new Guid IID = .(0xeaed4660, 0x7b3d, 0x4879, 0xa2, 0xe6, 0x36, 0x5c, 0xe6, 0x03, 0xf3, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Formula(out BSTR pRetVal) mut => VT.get_Formula(ref this, out pRetVal);
			public HRESULT GetAnnotationObjects(out SAFEARRAY* pRetVal) mut => VT.GetAnnotationObjects(ref this, out pRetVal);
			public HRESULT GetAnnotationTypes(out SAFEARRAY* pRetVal) mut => VT.GetAnnotationTypes(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpreadsheetItemProvider self, out BSTR pRetVal) get_Formula;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpreadsheetItemProvider self, out SAFEARRAY* pRetVal) GetAnnotationObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpreadsheetItemProvider self, out SAFEARRAY* pRetVal) GetAnnotationTypes;
			}
		}
		[CRepr]
		public struct ITransformProvider2 : ITransformProvider
		{
			public const new Guid IID = .(0x4758742f, 0x7ac2, 0x460c, 0xbc, 0x48, 0x09, 0xfc, 0x09, 0x30, 0x8a, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Zoom(double zoom) mut => VT.Zoom(ref this, zoom);
			public HRESULT get_CanZoom(out BOOL pRetVal) mut => VT.get_CanZoom(ref this, out pRetVal);
			public HRESULT get_ZoomLevel(out double pRetVal) mut => VT.get_ZoomLevel(ref this, out pRetVal);
			public HRESULT get_ZoomMinimum(out double pRetVal) mut => VT.get_ZoomMinimum(ref this, out pRetVal);
			public HRESULT get_ZoomMaximum(out double pRetVal) mut => VT.get_ZoomMaximum(ref this, out pRetVal);
			public HRESULT ZoomByUnit(ZoomUnit zoomUnit) mut => VT.ZoomByUnit(ref this, zoomUnit);

			[CRepr]
			public struct VTable : ITransformProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, double zoom) Zoom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, out BOOL pRetVal) get_CanZoom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, out double pRetVal) get_ZoomLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, out double pRetVal) get_ZoomMinimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, out double pRetVal) get_ZoomMaximum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransformProvider2 self, ZoomUnit zoomUnit) ZoomByUnit;
			}
		}
		[CRepr]
		public struct IDragProvider : IUnknown
		{
			public const new Guid IID = .(0x6aa7bbbb, 0x7ff9, 0x497d, 0x90, 0x4f, 0xd2, 0x0b, 0x89, 0x79, 0x29, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsGrabbed(out BOOL pRetVal) mut => VT.get_IsGrabbed(ref this, out pRetVal);
			public HRESULT get_DropEffect(out BSTR pRetVal) mut => VT.get_DropEffect(ref this, out pRetVal);
			public HRESULT get_DropEffects(out SAFEARRAY* pRetVal) mut => VT.get_DropEffects(ref this, out pRetVal);
			public HRESULT GetGrabbedItems(out SAFEARRAY* pRetVal) mut => VT.GetGrabbedItems(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragProvider self, out BOOL pRetVal) get_IsGrabbed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragProvider self, out BSTR pRetVal) get_DropEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragProvider self, out SAFEARRAY* pRetVal) get_DropEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragProvider self, out SAFEARRAY* pRetVal) GetGrabbedItems;
			}
		}
		[CRepr]
		public struct IDropTargetProvider : IUnknown
		{
			public const new Guid IID = .(0xbae82bfd, 0x358a, 0x481c, 0x85, 0xa0, 0xd8, 0xb4, 0xd9, 0x0a, 0x5d, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DropTargetEffect(out BSTR pRetVal) mut => VT.get_DropTargetEffect(ref this, out pRetVal);
			public HRESULT get_DropTargetEffects(out SAFEARRAY* pRetVal) mut => VT.get_DropTargetEffects(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetProvider self, out BSTR pRetVal) get_DropTargetEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetProvider self, out SAFEARRAY* pRetVal) get_DropTargetEffects;
			}
		}
		[CRepr]
		public struct ITextRangeProvider : IUnknown
		{
			public const new Guid IID = .(0x5347ad7b, 0xc355, 0x46f8, 0xaf, 0xf5, 0x90, 0x90, 0x33, 0x58, 0x2f, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out ITextRangeProvider* pRetVal) mut => VT.Clone(ref this, out pRetVal);
			public HRESULT Compare(ref ITextRangeProvider range, out BOOL pRetVal) mut => VT.Compare(ref this, ref range, out pRetVal);
			public HRESULT CompareEndpoints(TextPatternRangeEndpoint endpoint, ref ITextRangeProvider targetRange, TextPatternRangeEndpoint targetEndpoint, out int32 pRetVal) mut => VT.CompareEndpoints(ref this, endpoint, ref targetRange, targetEndpoint, out pRetVal);
			public HRESULT ExpandToEnclosingUnit(TextUnit unit) mut => VT.ExpandToEnclosingUnit(ref this, unit);
			public HRESULT FindAttribute(int32 attributeId, VARIANT val, BOOL backward, out ITextRangeProvider* pRetVal) mut => VT.FindAttribute(ref this, attributeId, val, backward, out pRetVal);
			public HRESULT FindText(BSTR text, BOOL backward, BOOL ignoreCase, out ITextRangeProvider* pRetVal) mut => VT.FindText(ref this, text, backward, ignoreCase, out pRetVal);
			public HRESULT GetAttributeValue(int32 attributeId, out VARIANT pRetVal) mut => VT.GetAttributeValue(ref this, attributeId, out pRetVal);
			public HRESULT GetBoundingRectangles(out SAFEARRAY* pRetVal) mut => VT.GetBoundingRectangles(ref this, out pRetVal);
			public HRESULT GetEnclosingElement(out IRawElementProviderSimple* pRetVal) mut => VT.GetEnclosingElement(ref this, out pRetVal);
			public HRESULT GetText(int32 maxLength, out BSTR pRetVal) mut => VT.GetText(ref this, maxLength, out pRetVal);
			public HRESULT Move(TextUnit unit, int32 count, out int32 pRetVal) mut => VT.Move(ref this, unit, count, out pRetVal);
			public HRESULT MoveEndpointByUnit(TextPatternRangeEndpoint endpoint, TextUnit unit, int32 count, out int32 pRetVal) mut => VT.MoveEndpointByUnit(ref this, endpoint, unit, count, out pRetVal);
			public HRESULT MoveEndpointByRange(TextPatternRangeEndpoint endpoint, ref ITextRangeProvider targetRange, TextPatternRangeEndpoint targetEndpoint) mut => VT.MoveEndpointByRange(ref this, endpoint, ref targetRange, targetEndpoint);
			public HRESULT Select() mut => VT.Select(ref this);
			public HRESULT AddToSelection() mut => VT.AddToSelection(ref this);
			public HRESULT RemoveFromSelection() mut => VT.RemoveFromSelection(ref this);
			public HRESULT ScrollIntoView(BOOL alignToTop) mut => VT.ScrollIntoView(ref this, alignToTop);
			public HRESULT GetChildren(out SAFEARRAY* pRetVal) mut => VT.GetChildren(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, out ITextRangeProvider* pRetVal) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, ref ITextRangeProvider range, out BOOL pRetVal) Compare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, TextPatternRangeEndpoint endpoint, ref ITextRangeProvider targetRange, TextPatternRangeEndpoint targetEndpoint, out int32 pRetVal) CompareEndpoints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, TextUnit unit) ExpandToEnclosingUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, int32 attributeId, VARIANT val, BOOL backward, out ITextRangeProvider* pRetVal) FindAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, BSTR text, BOOL backward, BOOL ignoreCase, out ITextRangeProvider* pRetVal) FindText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, int32 attributeId, out VARIANT pRetVal) GetAttributeValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, out SAFEARRAY* pRetVal) GetBoundingRectangles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, out IRawElementProviderSimple* pRetVal) GetEnclosingElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, int32 maxLength, out BSTR pRetVal) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, TextUnit unit, int32 count, out int32 pRetVal) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, TextPatternRangeEndpoint endpoint, TextUnit unit, int32 count, out int32 pRetVal) MoveEndpointByUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, TextPatternRangeEndpoint endpoint, ref ITextRangeProvider targetRange, TextPatternRangeEndpoint targetEndpoint) MoveEndpointByRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self) AddToSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self) RemoveFromSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, BOOL alignToTop) ScrollIntoView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider self, out SAFEARRAY* pRetVal) GetChildren;
			}
		}
		[CRepr]
		public struct ITextProvider : IUnknown
		{
			public const new Guid IID = .(0x3589c92c, 0x63f3, 0x4367, 0x99, 0xbb, 0xad, 0xa6, 0x53, 0xb7, 0x7c, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelection(out SAFEARRAY* pRetVal) mut => VT.GetSelection(ref this, out pRetVal);
			public HRESULT GetVisibleRanges(out SAFEARRAY* pRetVal) mut => VT.GetVisibleRanges(ref this, out pRetVal);
			public HRESULT RangeFromChild(ref IRawElementProviderSimple childElement, out ITextRangeProvider* pRetVal) mut => VT.RangeFromChild(ref this, ref childElement, out pRetVal);
			public HRESULT RangeFromPoint(UiaPoint point, out ITextRangeProvider* pRetVal) mut => VT.RangeFromPoint(ref this, point, out pRetVal);
			public HRESULT get_DocumentRange(out ITextRangeProvider* pRetVal) mut => VT.get_DocumentRange(ref this, out pRetVal);
			public HRESULT get_SupportedTextSelection(out SupportedTextSelection pRetVal) mut => VT.get_SupportedTextSelection(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, out SAFEARRAY* pRetVal) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, out SAFEARRAY* pRetVal) GetVisibleRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, ref IRawElementProviderSimple childElement, out ITextRangeProvider* pRetVal) RangeFromChild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, UiaPoint point, out ITextRangeProvider* pRetVal) RangeFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, out ITextRangeProvider* pRetVal) get_DocumentRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider self, out SupportedTextSelection pRetVal) get_SupportedTextSelection;
			}
		}
		[CRepr]
		public struct ITextProvider2 : ITextProvider
		{
			public const new Guid IID = .(0x0dc5e6ed, 0x3e16, 0x4bf1, 0x8f, 0x9a, 0xa9, 0x79, 0x87, 0x8b, 0xc1, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RangeFromAnnotation(ref IRawElementProviderSimple annotationElement, out ITextRangeProvider* pRetVal) mut => VT.RangeFromAnnotation(ref this, ref annotationElement, out pRetVal);
			public HRESULT GetCaretRange(out BOOL isActive, out ITextRangeProvider* pRetVal) mut => VT.GetCaretRange(ref this, out isActive, out pRetVal);

			[CRepr]
			public struct VTable : ITextProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider2 self, ref IRawElementProviderSimple annotationElement, out ITextRangeProvider* pRetVal) RangeFromAnnotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextProvider2 self, out BOOL isActive, out ITextRangeProvider* pRetVal) GetCaretRange;
			}
		}
		[CRepr]
		public struct ITextEditProvider : ITextProvider
		{
			public const new Guid IID = .(0xea3605b4, 0x3a05, 0x400e, 0xb5, 0xf9, 0x4e, 0x91, 0xb4, 0x0f, 0x61, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActiveComposition(out ITextRangeProvider* pRetVal) mut => VT.GetActiveComposition(ref this, out pRetVal);
			public HRESULT GetConversionTarget(out ITextRangeProvider* pRetVal) mut => VT.GetConversionTarget(ref this, out pRetVal);

			[CRepr]
			public struct VTable : ITextProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextEditProvider self, out ITextRangeProvider* pRetVal) GetActiveComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextEditProvider self, out ITextRangeProvider* pRetVal) GetConversionTarget;
			}
		}
		[CRepr]
		public struct ITextRangeProvider2 : ITextRangeProvider
		{
			public const new Guid IID = .(0x9bbce42c, 0x1921, 0x4f18, 0x89, 0xca, 0xdb, 0xa1, 0x91, 0x0a, 0x03, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowContextMenu() mut => VT.ShowContextMenu(ref this);

			[CRepr]
			public struct VTable : ITextRangeProvider.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextRangeProvider2 self) ShowContextMenu;
			}
		}
		[CRepr]
		public struct ITextChildProvider : IUnknown
		{
			public const new Guid IID = .(0x4c2de2b9, 0xc88f, 0x4f88, 0xa1, 0x11, 0xf1, 0xd3, 0x36, 0xb7, 0xd1, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TextContainer(out IRawElementProviderSimple* pRetVal) mut => VT.get_TextContainer(ref this, out pRetVal);
			public HRESULT get_TextRange(out ITextRangeProvider* pRetVal) mut => VT.get_TextRange(ref this, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextChildProvider self, out IRawElementProviderSimple* pRetVal) get_TextContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextChildProvider self, out ITextRangeProvider* pRetVal) get_TextRange;
			}
		}
		[CRepr]
		public struct ICustomNavigationProvider : IUnknown
		{
			public const new Guid IID = .(0x2062a28a, 0x8c07, 0x4b94, 0x8e, 0x12, 0x70, 0x37, 0xc6, 0x22, 0xae, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Navigate(NavigateDirection direction, out IRawElementProviderSimple* pRetVal) mut => VT.Navigate(ref this, direction, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomNavigationProvider self, NavigateDirection direction, out IRawElementProviderSimple* pRetVal) Navigate;
			}
		}
		[CRepr]
		public struct IUIAutomationPatternInstance : IUnknown
		{
			public const new Guid IID = .(0xc03a7fe4, 0x9431, 0x409f, 0xbe, 0xd8, 0xae, 0x7c, 0x22, 0x99, 0xbc, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(uint32 index, BOOL cached, UIAutomationType type, void* pPtr) mut => VT.GetProperty(ref this, index, cached, type, pPtr);
			public HRESULT CallMethod(uint32 index, in UIAutomationParameter pParams, uint32 cParams) mut => VT.CallMethod(ref this, index, pParams, cParams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPatternInstance self, uint32 index, BOOL cached, UIAutomationType type, void* pPtr) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPatternInstance self, uint32 index, in UIAutomationParameter pParams, uint32 cParams) CallMethod;
			}
		}
		[CRepr]
		public struct IUIAutomationPatternHandler : IUnknown
		{
			public const new Guid IID = .(0xd97022f3, 0xa947, 0x465e, 0x8b, 0x2a, 0xac, 0x43, 0x15, 0xfa, 0x54, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateClientWrapper(ref IUIAutomationPatternInstance pPatternInstance, out IUnknown* pClientWrapper) mut => VT.CreateClientWrapper(ref this, ref pPatternInstance, out pClientWrapper);
			public HRESULT Dispatch(ref IUnknown pTarget, uint32 index, in UIAutomationParameter pParams, uint32 cParams) mut => VT.Dispatch(ref this, ref pTarget, index, pParams, cParams);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPatternHandler self, ref IUIAutomationPatternInstance pPatternInstance, out IUnknown* pClientWrapper) CreateClientWrapper;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPatternHandler self, ref IUnknown pTarget, uint32 index, in UIAutomationParameter pParams, uint32 cParams) Dispatch;
			}
		}
		[CRepr]
		public struct IUIAutomationRegistrar : IUnknown
		{
			public const new Guid IID = .(0x8609c4ec, 0x4a1a, 0x4d88, 0xa3, 0x57, 0x5a, 0x66, 0xe0, 0x60, 0xe1, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterProperty(in UIAutomationPropertyInfo property, out int32 propertyId) mut => VT.RegisterProperty(ref this, property, out propertyId);
			public HRESULT RegisterEvent(in UIAutomationEventInfo event, out int32 eventId) mut => VT.RegisterEvent(ref this, event, out eventId);
			public HRESULT RegisterPattern(in UIAutomationPatternInfo pattern, out int32 pPatternId, out int32 pPatternAvailablePropertyId, uint32 propertyIdCount, int32* pPropertyIds, uint32 eventIdCount, int32* pEventIds) mut => VT.RegisterPattern(ref this, pattern, out pPatternId, out pPatternAvailablePropertyId, propertyIdCount, pPropertyIds, eventIdCount, pEventIds);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRegistrar self, in UIAutomationPropertyInfo property, out int32 propertyId) RegisterProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRegistrar self, in UIAutomationEventInfo event, out int32 eventId) RegisterEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRegistrar self, in UIAutomationPatternInfo pattern, out int32 pPatternId, out int32 pPatternAvailablePropertyId, uint32 propertyIdCount, int32* pPropertyIds, uint32 eventIdCount, int32* pEventIds) RegisterPattern;
			}
		}
		[CRepr]
		public struct IUIAutomationElement : IUnknown
		{
			public const new Guid IID = .(0xd22108aa, 0x8ac5, 0x49a5, 0x83, 0x7b, 0x37, 0xbb, 0xb3, 0xd7, 0x59, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFocus() mut => VT.SetFocus(ref this);
			public HRESULT GetRuntimeId(out SAFEARRAY* runtimeId) mut => VT.GetRuntimeId(ref this, out runtimeId);
			public HRESULT FindFirst(TreeScope @scope, ref IUIAutomationCondition condition, out IUIAutomationElement* found) mut => VT.FindFirst(ref this, @scope, ref condition, out found);
			public HRESULT FindAll(TreeScope @scope, ref IUIAutomationCondition condition, out IUIAutomationElementArray* found) mut => VT.FindAll(ref this, @scope, ref condition, out found);
			public HRESULT FindFirstBuildCache(TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* found) mut => VT.FindFirstBuildCache(ref this, @scope, ref condition, ref cacheRequest, out found);
			public HRESULT FindAllBuildCache(TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElementArray* found) mut => VT.FindAllBuildCache(ref this, @scope, ref condition, ref cacheRequest, out found);
			public HRESULT BuildUpdatedCache(ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* updatedElement) mut => VT.BuildUpdatedCache(ref this, ref cacheRequest, out updatedElement);
			public HRESULT GetCurrentPropertyValue(int32 propertyId, out VARIANT retVal) mut => VT.GetCurrentPropertyValue(ref this, propertyId, out retVal);
			public HRESULT GetCurrentPropertyValueEx(int32 propertyId, BOOL ignoreDefaultValue, out VARIANT retVal) mut => VT.GetCurrentPropertyValueEx(ref this, propertyId, ignoreDefaultValue, out retVal);
			public HRESULT GetCachedPropertyValue(int32 propertyId, out VARIANT retVal) mut => VT.GetCachedPropertyValue(ref this, propertyId, out retVal);
			public HRESULT GetCachedPropertyValueEx(int32 propertyId, BOOL ignoreDefaultValue, out VARIANT retVal) mut => VT.GetCachedPropertyValueEx(ref this, propertyId, ignoreDefaultValue, out retVal);
			public HRESULT GetCurrentPatternAs(int32 patternId, in Guid riid, void** patternObject) mut => VT.GetCurrentPatternAs(ref this, patternId, riid, patternObject);
			public HRESULT GetCachedPatternAs(int32 patternId, in Guid riid, void** patternObject) mut => VT.GetCachedPatternAs(ref this, patternId, riid, patternObject);
			public HRESULT GetCurrentPattern(int32 patternId, out IUnknown* patternObject) mut => VT.GetCurrentPattern(ref this, patternId, out patternObject);
			public HRESULT GetCachedPattern(int32 patternId, out IUnknown* patternObject) mut => VT.GetCachedPattern(ref this, patternId, out patternObject);
			public HRESULT GetCachedParent(out IUIAutomationElement* parent) mut => VT.GetCachedParent(ref this, out parent);
			public HRESULT GetCachedChildren(out IUIAutomationElementArray* children) mut => VT.GetCachedChildren(ref this, out children);
			public HRESULT get_CurrentProcessId(out int32 retVal) mut => VT.get_CurrentProcessId(ref this, out retVal);
			public HRESULT get_CurrentControlType(out int32 retVal) mut => VT.get_CurrentControlType(ref this, out retVal);
			public HRESULT get_CurrentLocalizedControlType(out BSTR retVal) mut => VT.get_CurrentLocalizedControlType(ref this, out retVal);
			public HRESULT get_CurrentName(out BSTR retVal) mut => VT.get_CurrentName(ref this, out retVal);
			public HRESULT get_CurrentAcceleratorKey(out BSTR retVal) mut => VT.get_CurrentAcceleratorKey(ref this, out retVal);
			public HRESULT get_CurrentAccessKey(out BSTR retVal) mut => VT.get_CurrentAccessKey(ref this, out retVal);
			public HRESULT get_CurrentHasKeyboardFocus(out BOOL retVal) mut => VT.get_CurrentHasKeyboardFocus(ref this, out retVal);
			public HRESULT get_CurrentIsKeyboardFocusable(out BOOL retVal) mut => VT.get_CurrentIsKeyboardFocusable(ref this, out retVal);
			public HRESULT get_CurrentIsEnabled(out BOOL retVal) mut => VT.get_CurrentIsEnabled(ref this, out retVal);
			public HRESULT get_CurrentAutomationId(out BSTR retVal) mut => VT.get_CurrentAutomationId(ref this, out retVal);
			public HRESULT get_CurrentClassName(out BSTR retVal) mut => VT.get_CurrentClassName(ref this, out retVal);
			public HRESULT get_CurrentHelpText(out BSTR retVal) mut => VT.get_CurrentHelpText(ref this, out retVal);
			public HRESULT get_CurrentCulture(out int32 retVal) mut => VT.get_CurrentCulture(ref this, out retVal);
			public HRESULT get_CurrentIsControlElement(out BOOL retVal) mut => VT.get_CurrentIsControlElement(ref this, out retVal);
			public HRESULT get_CurrentIsContentElement(out BOOL retVal) mut => VT.get_CurrentIsContentElement(ref this, out retVal);
			public HRESULT get_CurrentIsPassword(out BOOL retVal) mut => VT.get_CurrentIsPassword(ref this, out retVal);
			public HRESULT get_CurrentNativeWindowHandle(HWND retVal) mut => VT.get_CurrentNativeWindowHandle(ref this, retVal);
			public HRESULT get_CurrentItemType(out BSTR retVal) mut => VT.get_CurrentItemType(ref this, out retVal);
			public HRESULT get_CurrentIsOffscreen(out BOOL retVal) mut => VT.get_CurrentIsOffscreen(ref this, out retVal);
			public HRESULT get_CurrentOrientation(out OrientationType retVal) mut => VT.get_CurrentOrientation(ref this, out retVal);
			public HRESULT get_CurrentFrameworkId(out BSTR retVal) mut => VT.get_CurrentFrameworkId(ref this, out retVal);
			public HRESULT get_CurrentIsRequiredForForm(out BOOL retVal) mut => VT.get_CurrentIsRequiredForForm(ref this, out retVal);
			public HRESULT get_CurrentItemStatus(out BSTR retVal) mut => VT.get_CurrentItemStatus(ref this, out retVal);
			public HRESULT get_CurrentBoundingRectangle(out RECT retVal) mut => VT.get_CurrentBoundingRectangle(ref this, out retVal);
			public HRESULT get_CurrentLabeledBy(out IUIAutomationElement* retVal) mut => VT.get_CurrentLabeledBy(ref this, out retVal);
			public HRESULT get_CurrentAriaRole(out BSTR retVal) mut => VT.get_CurrentAriaRole(ref this, out retVal);
			public HRESULT get_CurrentAriaProperties(out BSTR retVal) mut => VT.get_CurrentAriaProperties(ref this, out retVal);
			public HRESULT get_CurrentIsDataValidForForm(out BOOL retVal) mut => VT.get_CurrentIsDataValidForForm(ref this, out retVal);
			public HRESULT get_CurrentControllerFor(out IUIAutomationElementArray* retVal) mut => VT.get_CurrentControllerFor(ref this, out retVal);
			public HRESULT get_CurrentDescribedBy(out IUIAutomationElementArray* retVal) mut => VT.get_CurrentDescribedBy(ref this, out retVal);
			public HRESULT get_CurrentFlowsTo(out IUIAutomationElementArray* retVal) mut => VT.get_CurrentFlowsTo(ref this, out retVal);
			public HRESULT get_CurrentProviderDescription(out BSTR retVal) mut => VT.get_CurrentProviderDescription(ref this, out retVal);
			public HRESULT get_CachedProcessId(out int32 retVal) mut => VT.get_CachedProcessId(ref this, out retVal);
			public HRESULT get_CachedControlType(out int32 retVal) mut => VT.get_CachedControlType(ref this, out retVal);
			public HRESULT get_CachedLocalizedControlType(out BSTR retVal) mut => VT.get_CachedLocalizedControlType(ref this, out retVal);
			public HRESULT get_CachedName(out BSTR retVal) mut => VT.get_CachedName(ref this, out retVal);
			public HRESULT get_CachedAcceleratorKey(out BSTR retVal) mut => VT.get_CachedAcceleratorKey(ref this, out retVal);
			public HRESULT get_CachedAccessKey(out BSTR retVal) mut => VT.get_CachedAccessKey(ref this, out retVal);
			public HRESULT get_CachedHasKeyboardFocus(out BOOL retVal) mut => VT.get_CachedHasKeyboardFocus(ref this, out retVal);
			public HRESULT get_CachedIsKeyboardFocusable(out BOOL retVal) mut => VT.get_CachedIsKeyboardFocusable(ref this, out retVal);
			public HRESULT get_CachedIsEnabled(out BOOL retVal) mut => VT.get_CachedIsEnabled(ref this, out retVal);
			public HRESULT get_CachedAutomationId(out BSTR retVal) mut => VT.get_CachedAutomationId(ref this, out retVal);
			public HRESULT get_CachedClassName(out BSTR retVal) mut => VT.get_CachedClassName(ref this, out retVal);
			public HRESULT get_CachedHelpText(out BSTR retVal) mut => VT.get_CachedHelpText(ref this, out retVal);
			public HRESULT get_CachedCulture(out int32 retVal) mut => VT.get_CachedCulture(ref this, out retVal);
			public HRESULT get_CachedIsControlElement(out BOOL retVal) mut => VT.get_CachedIsControlElement(ref this, out retVal);
			public HRESULT get_CachedIsContentElement(out BOOL retVal) mut => VT.get_CachedIsContentElement(ref this, out retVal);
			public HRESULT get_CachedIsPassword(out BOOL retVal) mut => VT.get_CachedIsPassword(ref this, out retVal);
			public HRESULT get_CachedNativeWindowHandle(HWND retVal) mut => VT.get_CachedNativeWindowHandle(ref this, retVal);
			public HRESULT get_CachedItemType(out BSTR retVal) mut => VT.get_CachedItemType(ref this, out retVal);
			public HRESULT get_CachedIsOffscreen(out BOOL retVal) mut => VT.get_CachedIsOffscreen(ref this, out retVal);
			public HRESULT get_CachedOrientation(out OrientationType retVal) mut => VT.get_CachedOrientation(ref this, out retVal);
			public HRESULT get_CachedFrameworkId(out BSTR retVal) mut => VT.get_CachedFrameworkId(ref this, out retVal);
			public HRESULT get_CachedIsRequiredForForm(out BOOL retVal) mut => VT.get_CachedIsRequiredForForm(ref this, out retVal);
			public HRESULT get_CachedItemStatus(out BSTR retVal) mut => VT.get_CachedItemStatus(ref this, out retVal);
			public HRESULT get_CachedBoundingRectangle(out RECT retVal) mut => VT.get_CachedBoundingRectangle(ref this, out retVal);
			public HRESULT get_CachedLabeledBy(out IUIAutomationElement* retVal) mut => VT.get_CachedLabeledBy(ref this, out retVal);
			public HRESULT get_CachedAriaRole(out BSTR retVal) mut => VT.get_CachedAriaRole(ref this, out retVal);
			public HRESULT get_CachedAriaProperties(out BSTR retVal) mut => VT.get_CachedAriaProperties(ref this, out retVal);
			public HRESULT get_CachedIsDataValidForForm(out BOOL retVal) mut => VT.get_CachedIsDataValidForForm(ref this, out retVal);
			public HRESULT get_CachedControllerFor(out IUIAutomationElementArray* retVal) mut => VT.get_CachedControllerFor(ref this, out retVal);
			public HRESULT get_CachedDescribedBy(out IUIAutomationElementArray* retVal) mut => VT.get_CachedDescribedBy(ref this, out retVal);
			public HRESULT get_CachedFlowsTo(out IUIAutomationElementArray* retVal) mut => VT.get_CachedFlowsTo(ref this, out retVal);
			public HRESULT get_CachedProviderDescription(out BSTR retVal) mut => VT.get_CachedProviderDescription(ref this, out retVal);
			public HRESULT GetClickablePoint(out POINT clickable, out BOOL gotClickable) mut => VT.GetClickablePoint(ref this, out clickable, out gotClickable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self) SetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out SAFEARRAY* runtimeId) GetRuntimeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, TreeScope @scope, ref IUIAutomationCondition condition, out IUIAutomationElement* found) FindFirst;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, TreeScope @scope, ref IUIAutomationCondition condition, out IUIAutomationElementArray* found) FindAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* found) FindFirstBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElementArray* found) FindAllBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* updatedElement) BuildUpdatedCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 propertyId, out VARIANT retVal) GetCurrentPropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 propertyId, BOOL ignoreDefaultValue, out VARIANT retVal) GetCurrentPropertyValueEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 propertyId, out VARIANT retVal) GetCachedPropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 propertyId, BOOL ignoreDefaultValue, out VARIANT retVal) GetCachedPropertyValueEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 patternId, in Guid riid, void** patternObject) GetCurrentPatternAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 patternId, in Guid riid, void** patternObject) GetCachedPatternAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 patternId, out IUnknown* patternObject) GetCurrentPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, int32 patternId, out IUnknown* patternObject) GetCachedPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElement* parent) GetCachedParent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* children) GetCachedChildren;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CurrentProcessId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CurrentControlType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentLocalizedControlType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentAcceleratorKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentAccessKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentHasKeyboardFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsKeyboardFocusable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentAutomationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentHelpText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CurrentCulture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsControlElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsContentElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, HWND retVal) get_CurrentNativeWindowHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentItemType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsOffscreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out OrientationType retVal) get_CurrentOrientation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentFrameworkId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsRequiredForForm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentItemStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out RECT retVal) get_CurrentBoundingRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElement* retVal) get_CurrentLabeledBy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentAriaRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentAriaProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CurrentIsDataValidForForm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CurrentControllerFor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CurrentDescribedBy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CurrentFlowsTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CurrentProviderDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CachedProcessId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CachedControlType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedLocalizedControlType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedAcceleratorKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedAccessKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedHasKeyboardFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsKeyboardFocusable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedAutomationId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedHelpText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out int32 retVal) get_CachedCulture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsControlElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsContentElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsPassword;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, HWND retVal) get_CachedNativeWindowHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedItemType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsOffscreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out OrientationType retVal) get_CachedOrientation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedFrameworkId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsRequiredForForm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedItemStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out RECT retVal) get_CachedBoundingRectangle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElement* retVal) get_CachedLabeledBy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedAriaRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedAriaProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BOOL retVal) get_CachedIsDataValidForForm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CachedControllerFor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CachedDescribedBy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out IUIAutomationElementArray* retVal) get_CachedFlowsTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out BSTR retVal) get_CachedProviderDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement self, out POINT clickable, out BOOL gotClickable) GetClickablePoint;
			}
		}
		[CRepr]
		public struct IUIAutomationElementArray : IUnknown
		{
			public const new Guid IID = .(0x14314595, 0xb4bc, 0x4055, 0x95, 0xf2, 0x58, 0xf2, 0xe4, 0x2c, 0x98, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Length(out int32 length) mut => VT.get_Length(ref this, out length);
			public HRESULT GetElement(int32 index, out IUIAutomationElement* element) mut => VT.GetElement(ref this, index, out element);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElementArray self, out int32 length) get_Length;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElementArray self, int32 index, out IUIAutomationElement* element) GetElement;
			}
		}
		[CRepr]
		public struct IUIAutomationCondition : IUnknown
		{
			public const new Guid IID = .(0x352ffba8, 0x0973, 0x437c, 0xa6, 0x1f, 0xf6, 0x4c, 0xaf, 0xd8, 0x1d, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable {}
		}
		[CRepr]
		public struct IUIAutomationBoolCondition : IUIAutomationCondition
		{
			public const new Guid IID = .(0x1b4e1f2e, 0x75eb, 0x4d0b, 0x89, 0x52, 0x5a, 0x69, 0x98, 0x8e, 0x23, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BooleanValue(out BOOL boolVal) mut => VT.get_BooleanValue(ref this, out boolVal);

			[CRepr]
			public struct VTable : IUIAutomationCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationBoolCondition self, out BOOL boolVal) get_BooleanValue;
			}
		}
		[CRepr]
		public struct IUIAutomationPropertyCondition : IUIAutomationCondition
		{
			public const new Guid IID = .(0x99ebf2cb, 0x5578, 0x4267, 0x9a, 0xd4, 0xaf, 0xd6, 0xea, 0x77, 0xe9, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_PropertyId(out int32 propertyId) mut => VT.get_PropertyId(ref this, out propertyId);
			public HRESULT get_PropertyValue(out VARIANT propertyValue) mut => VT.get_PropertyValue(ref this, out propertyValue);
			public HRESULT get_PropertyConditionFlags(out PropertyConditionFlags flags) mut => VT.get_PropertyConditionFlags(ref this, out flags);

			[CRepr]
			public struct VTable : IUIAutomationCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPropertyCondition self, out int32 propertyId) get_PropertyId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPropertyCondition self, out VARIANT propertyValue) get_PropertyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPropertyCondition self, out PropertyConditionFlags flags) get_PropertyConditionFlags;
			}
		}
		[CRepr]
		public struct IUIAutomationAndCondition : IUIAutomationCondition
		{
			public const new Guid IID = .(0xa7d0af36, 0xb912, 0x45fe, 0x98, 0x55, 0x09, 0x1d, 0xdc, 0x17, 0x4a, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ChildCount(out int32 childCount) mut => VT.get_ChildCount(ref this, out childCount);
			public HRESULT GetChildrenAsNativeArray(IUIAutomationCondition*** childArray, out int32 childArrayCount) mut => VT.GetChildrenAsNativeArray(ref this, childArray, out childArrayCount);
			public HRESULT GetChildren(out SAFEARRAY* childArray) mut => VT.GetChildren(ref this, out childArray);

			[CRepr]
			public struct VTable : IUIAutomationCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAndCondition self, out int32 childCount) get_ChildCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAndCondition self, IUIAutomationCondition*** childArray, out int32 childArrayCount) GetChildrenAsNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAndCondition self, out SAFEARRAY* childArray) GetChildren;
			}
		}
		[CRepr]
		public struct IUIAutomationOrCondition : IUIAutomationCondition
		{
			public const new Guid IID = .(0x8753f032, 0x3db1, 0x47b5, 0xa1, 0xfc, 0x6e, 0x34, 0xa2, 0x66, 0xc7, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ChildCount(out int32 childCount) mut => VT.get_ChildCount(ref this, out childCount);
			public HRESULT GetChildrenAsNativeArray(IUIAutomationCondition*** childArray, out int32 childArrayCount) mut => VT.GetChildrenAsNativeArray(ref this, childArray, out childArrayCount);
			public HRESULT GetChildren(out SAFEARRAY* childArray) mut => VT.GetChildren(ref this, out childArray);

			[CRepr]
			public struct VTable : IUIAutomationCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationOrCondition self, out int32 childCount) get_ChildCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationOrCondition self, IUIAutomationCondition*** childArray, out int32 childArrayCount) GetChildrenAsNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationOrCondition self, out SAFEARRAY* childArray) GetChildren;
			}
		}
		[CRepr]
		public struct IUIAutomationNotCondition : IUIAutomationCondition
		{
			public const new Guid IID = .(0xf528b657, 0x847b, 0x498c, 0x88, 0x96, 0xd5, 0x2b, 0x56, 0x54, 0x07, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetChild(out IUIAutomationCondition* condition) mut => VT.GetChild(ref this, out condition);

			[CRepr]
			public struct VTable : IUIAutomationCondition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationNotCondition self, out IUIAutomationCondition* condition) GetChild;
			}
		}
		[CRepr]
		public struct IUIAutomationCacheRequest : IUnknown
		{
			public const new Guid IID = .(0xb32a92b5, 0xbc25, 0x4078, 0x9c, 0x08, 0xd7, 0xee, 0x95, 0xc4, 0x8e, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddProperty(int32 propertyId) mut => VT.AddProperty(ref this, propertyId);
			public HRESULT AddPattern(int32 patternId) mut => VT.AddPattern(ref this, patternId);
			public HRESULT Clone(out IUIAutomationCacheRequest* clonedRequest) mut => VT.Clone(ref this, out clonedRequest);
			public HRESULT get_TreeScope(out TreeScope @scope) mut => VT.get_TreeScope(ref this, out @scope);
			public HRESULT put_TreeScope(TreeScope @scope) mut => VT.put_TreeScope(ref this, @scope);
			public HRESULT get_TreeFilter(out IUIAutomationCondition* filter) mut => VT.get_TreeFilter(ref this, out filter);
			public HRESULT put_TreeFilter(ref IUIAutomationCondition filter) mut => VT.put_TreeFilter(ref this, ref filter);
			public HRESULT get_AutomationElementMode(out AutomationElementMode mode) mut => VT.get_AutomationElementMode(ref this, out mode);
			public HRESULT put_AutomationElementMode(AutomationElementMode mode) mut => VT.put_AutomationElementMode(ref this, mode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, int32 propertyId) AddProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, int32 patternId) AddPattern;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, out IUIAutomationCacheRequest* clonedRequest) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, out TreeScope @scope) get_TreeScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, TreeScope @scope) put_TreeScope;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, out IUIAutomationCondition* filter) get_TreeFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, ref IUIAutomationCondition filter) put_TreeFilter;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, out AutomationElementMode mode) get_AutomationElementMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCacheRequest self, AutomationElementMode mode) put_AutomationElementMode;
			}
		}
		[CRepr]
		public struct IUIAutomationTreeWalker : IUnknown
		{
			public const new Guid IID = .(0x4042c624, 0x389c, 0x4afc, 0xa6, 0x30, 0x9d, 0xf8, 0x54, 0xa5, 0x41, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParentElement(ref IUIAutomationElement element, out IUIAutomationElement* parent) mut => VT.GetParentElement(ref this, ref element, out parent);
			public HRESULT GetFirstChildElement(ref IUIAutomationElement element, out IUIAutomationElement* first) mut => VT.GetFirstChildElement(ref this, ref element, out first);
			public HRESULT GetLastChildElement(ref IUIAutomationElement element, out IUIAutomationElement* last) mut => VT.GetLastChildElement(ref this, ref element, out last);
			public HRESULT GetNextSiblingElement(ref IUIAutomationElement element, out IUIAutomationElement* next) mut => VT.GetNextSiblingElement(ref this, ref element, out next);
			public HRESULT GetPreviousSiblingElement(ref IUIAutomationElement element, out IUIAutomationElement* previous) mut => VT.GetPreviousSiblingElement(ref this, ref element, out previous);
			public HRESULT NormalizeElement(ref IUIAutomationElement element, out IUIAutomationElement* normalized) mut => VT.NormalizeElement(ref this, ref element, out normalized);
			public HRESULT GetParentElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* parent) mut => VT.GetParentElementBuildCache(ref this, ref element, ref cacheRequest, out parent);
			public HRESULT GetFirstChildElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* first) mut => VT.GetFirstChildElementBuildCache(ref this, ref element, ref cacheRequest, out first);
			public HRESULT GetLastChildElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* last) mut => VT.GetLastChildElementBuildCache(ref this, ref element, ref cacheRequest, out last);
			public HRESULT GetNextSiblingElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* next) mut => VT.GetNextSiblingElementBuildCache(ref this, ref element, ref cacheRequest, out next);
			public HRESULT GetPreviousSiblingElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* previous) mut => VT.GetPreviousSiblingElementBuildCache(ref this, ref element, ref cacheRequest, out previous);
			public HRESULT NormalizeElementBuildCache(ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* normalized) mut => VT.NormalizeElementBuildCache(ref this, ref element, ref cacheRequest, out normalized);
			public HRESULT get_Condition(out IUIAutomationCondition* condition) mut => VT.get_Condition(ref this, out condition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* parent) GetParentElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* first) GetFirstChildElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* last) GetLastChildElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* next) GetNextSiblingElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* previous) GetPreviousSiblingElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, out IUIAutomationElement* normalized) NormalizeElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* parent) GetParentElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* first) GetFirstChildElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* last) GetLastChildElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* next) GetNextSiblingElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* previous) GetPreviousSiblingElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, ref IUIAutomationElement element, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* normalized) NormalizeElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTreeWalker self, out IUIAutomationCondition* condition) get_Condition;
			}
		}
		[CRepr]
		public struct IUIAutomationEventHandler : IUnknown
		{
			public const new Guid IID = .(0x146c3c17, 0xf12e, 0x4e22, 0x8c, 0x27, 0xf8, 0x94, 0xb9, 0xb7, 0x9c, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleAutomationEvent(ref IUIAutomationElement sender, int32 eventId) mut => VT.HandleAutomationEvent(ref this, ref sender, eventId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandler self, ref IUIAutomationElement sender, int32 eventId) HandleAutomationEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationPropertyChangedEventHandler : IUnknown
		{
			public const new Guid IID = .(0x40cd37d4, 0xc756, 0x4b0c, 0x8c, 0x6f, 0xbd, 0xdf, 0xee, 0xb1, 0x3b, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandlePropertyChangedEvent(ref IUIAutomationElement sender, int32 propertyId, VARIANT newValue) mut => VT.HandlePropertyChangedEvent(ref this, ref sender, propertyId, newValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationPropertyChangedEventHandler self, ref IUIAutomationElement sender, int32 propertyId, VARIANT newValue) HandlePropertyChangedEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationStructureChangedEventHandler : IUnknown
		{
			public const new Guid IID = .(0xe81d1b4e, 0x11c5, 0x42f8, 0x97, 0x54, 0xe7, 0x03, 0x6c, 0x79, 0xf0, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleStructureChangedEvent(ref IUIAutomationElement sender, StructureChangeType changeType, ref SAFEARRAY runtimeId) mut => VT.HandleStructureChangedEvent(ref this, ref sender, changeType, ref runtimeId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStructureChangedEventHandler self, ref IUIAutomationElement sender, StructureChangeType changeType, ref SAFEARRAY runtimeId) HandleStructureChangedEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationFocusChangedEventHandler : IUnknown
		{
			public const new Guid IID = .(0xc270f6b5, 0x5c69, 0x4290, 0x97, 0x45, 0x7a, 0x7f, 0x97, 0x16, 0x94, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleFocusChangedEvent(ref IUIAutomationElement sender) mut => VT.HandleFocusChangedEvent(ref this, ref sender);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationFocusChangedEventHandler self, ref IUIAutomationElement sender) HandleFocusChangedEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationTextEditTextChangedEventHandler : IUnknown
		{
			public const new Guid IID = .(0x92faa680, 0xe704, 0x4156, 0x93, 0x1a, 0xe3, 0x2d, 0x5b, 0xb3, 0x8f, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleTextEditTextChangedEvent(ref IUIAutomationElement sender, TextEditChangeType textEditChangeType, ref SAFEARRAY eventStrings) mut => VT.HandleTextEditTextChangedEvent(ref this, ref sender, textEditChangeType, ref eventStrings);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextEditTextChangedEventHandler self, ref IUIAutomationElement sender, TextEditChangeType textEditChangeType, ref SAFEARRAY eventStrings) HandleTextEditTextChangedEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationChangesEventHandler : IUnknown
		{
			public const new Guid IID = .(0x58edca55, 0x2c3e, 0x4980, 0xb1, 0xb9, 0x56, 0xc1, 0x7f, 0x27, 0xa2, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleChangesEvent(ref IUIAutomationElement sender, UiaChangeInfo* uiaChanges, int32 changesCount) mut => VT.HandleChangesEvent(ref this, ref sender, uiaChanges, changesCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationChangesEventHandler self, ref IUIAutomationElement sender, UiaChangeInfo* uiaChanges, int32 changesCount) HandleChangesEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationNotificationEventHandler : IUnknown
		{
			public const new Guid IID = .(0xc7cb2637, 0xe6c2, 0x4d0c, 0x85, 0xde, 0x49, 0x48, 0xc0, 0x21, 0x75, 0xc7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleNotificationEvent(ref IUIAutomationElement sender, NotificationKind notificationKind, NotificationProcessing notificationProcessing, BSTR displayString, BSTR activityId) mut => VT.HandleNotificationEvent(ref this, ref sender, notificationKind, notificationProcessing, displayString, activityId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationNotificationEventHandler self, ref IUIAutomationElement sender, NotificationKind notificationKind, NotificationProcessing notificationProcessing, BSTR displayString, BSTR activityId) HandleNotificationEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationInvokePattern : IUnknown
		{
			public const new Guid IID = .(0xfb377fbe, 0x8ea6, 0x46d5, 0x9c, 0x73, 0x64, 0x99, 0x64, 0x2d, 0x30, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke() mut => VT.Invoke(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationInvokePattern self) Invoke;
			}
		}
		[CRepr]
		public struct IUIAutomationDockPattern : IUnknown
		{
			public const new Guid IID = .(0xfde5ef97, 0x1464, 0x48f6, 0x90, 0xbf, 0x43, 0xd0, 0x94, 0x8e, 0x86, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDockPosition(DockPosition dockPos) mut => VT.SetDockPosition(ref this, dockPos);
			public HRESULT get_CurrentDockPosition(out DockPosition retVal) mut => VT.get_CurrentDockPosition(ref this, out retVal);
			public HRESULT get_CachedDockPosition(out DockPosition retVal) mut => VT.get_CachedDockPosition(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDockPattern self, DockPosition dockPos) SetDockPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDockPattern self, out DockPosition retVal) get_CurrentDockPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDockPattern self, out DockPosition retVal) get_CachedDockPosition;
			}
		}
		[CRepr]
		public struct IUIAutomationExpandCollapsePattern : IUnknown
		{
			public const new Guid IID = .(0x619be086, 0x1f4e, 0x4ee4, 0xba, 0xfa, 0x21, 0x01, 0x28, 0x73, 0x87, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand() mut => VT.Expand(ref this);
			public HRESULT Collapse() mut => VT.Collapse(ref this);
			public HRESULT get_CurrentExpandCollapseState(out ExpandCollapseState retVal) mut => VT.get_CurrentExpandCollapseState(ref this, out retVal);
			public HRESULT get_CachedExpandCollapseState(out ExpandCollapseState retVal) mut => VT.get_CachedExpandCollapseState(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationExpandCollapsePattern self) Expand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationExpandCollapsePattern self) Collapse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationExpandCollapsePattern self, out ExpandCollapseState retVal) get_CurrentExpandCollapseState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationExpandCollapsePattern self, out ExpandCollapseState retVal) get_CachedExpandCollapseState;
			}
		}
		[CRepr]
		public struct IUIAutomationGridPattern : IUnknown
		{
			public const new Guid IID = .(0x414c3cdc, 0x856b, 0x4f5b, 0x85, 0x38, 0x31, 0x31, 0xc6, 0x30, 0x25, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItem(int32 row, int32 column, out IUIAutomationElement* element) mut => VT.GetItem(ref this, row, column, out element);
			public HRESULT get_CurrentRowCount(out int32 retVal) mut => VT.get_CurrentRowCount(ref this, out retVal);
			public HRESULT get_CurrentColumnCount(out int32 retVal) mut => VT.get_CurrentColumnCount(ref this, out retVal);
			public HRESULT get_CachedRowCount(out int32 retVal) mut => VT.get_CachedRowCount(ref this, out retVal);
			public HRESULT get_CachedColumnCount(out int32 retVal) mut => VT.get_CachedColumnCount(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridPattern self, int32 row, int32 column, out IUIAutomationElement* element) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridPattern self, out int32 retVal) get_CurrentRowCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridPattern self, out int32 retVal) get_CurrentColumnCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridPattern self, out int32 retVal) get_CachedRowCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridPattern self, out int32 retVal) get_CachedColumnCount;
			}
		}
		[CRepr]
		public struct IUIAutomationGridItemPattern : IUnknown
		{
			public const new Guid IID = .(0x78f8ef57, 0x66c3, 0x4e09, 0xbd, 0x7c, 0xe7, 0x9b, 0x20, 0x04, 0x89, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentContainingGrid(out IUIAutomationElement* retVal) mut => VT.get_CurrentContainingGrid(ref this, out retVal);
			public HRESULT get_CurrentRow(out int32 retVal) mut => VT.get_CurrentRow(ref this, out retVal);
			public HRESULT get_CurrentColumn(out int32 retVal) mut => VT.get_CurrentColumn(ref this, out retVal);
			public HRESULT get_CurrentRowSpan(out int32 retVal) mut => VT.get_CurrentRowSpan(ref this, out retVal);
			public HRESULT get_CurrentColumnSpan(out int32 retVal) mut => VT.get_CurrentColumnSpan(ref this, out retVal);
			public HRESULT get_CachedContainingGrid(out IUIAutomationElement* retVal) mut => VT.get_CachedContainingGrid(ref this, out retVal);
			public HRESULT get_CachedRow(out int32 retVal) mut => VT.get_CachedRow(ref this, out retVal);
			public HRESULT get_CachedColumn(out int32 retVal) mut => VT.get_CachedColumn(ref this, out retVal);
			public HRESULT get_CachedRowSpan(out int32 retVal) mut => VT.get_CachedRowSpan(ref this, out retVal);
			public HRESULT get_CachedColumnSpan(out int32 retVal) mut => VT.get_CachedColumnSpan(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out IUIAutomationElement* retVal) get_CurrentContainingGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CurrentRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CurrentColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CurrentRowSpan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CurrentColumnSpan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out IUIAutomationElement* retVal) get_CachedContainingGrid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CachedRow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CachedColumn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CachedRowSpan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationGridItemPattern self, out int32 retVal) get_CachedColumnSpan;
			}
		}
		[CRepr]
		public struct IUIAutomationMultipleViewPattern : IUnknown
		{
			public const new Guid IID = .(0x8d253c91, 0x1dc5, 0x4bb5, 0xb1, 0x8f, 0xad, 0xe1, 0x6f, 0xa4, 0x95, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetViewName(int32 view, out BSTR name) mut => VT.GetViewName(ref this, view, out name);
			public HRESULT SetCurrentView(int32 view) mut => VT.SetCurrentView(ref this, view);
			public HRESULT get_CurrentCurrentView(out int32 retVal) mut => VT.get_CurrentCurrentView(ref this, out retVal);
			public HRESULT GetCurrentSupportedViews(out SAFEARRAY* retVal) mut => VT.GetCurrentSupportedViews(ref this, out retVal);
			public HRESULT get_CachedCurrentView(out int32 retVal) mut => VT.get_CachedCurrentView(ref this, out retVal);
			public HRESULT GetCachedSupportedViews(out SAFEARRAY* retVal) mut => VT.GetCachedSupportedViews(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, int32 view, out BSTR name) GetViewName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, int32 view) SetCurrentView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, out int32 retVal) get_CurrentCurrentView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, out SAFEARRAY* retVal) GetCurrentSupportedViews;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, out int32 retVal) get_CachedCurrentView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationMultipleViewPattern self, out SAFEARRAY* retVal) GetCachedSupportedViews;
			}
		}
		[CRepr]
		public struct IUIAutomationObjectModelPattern : IUnknown
		{
			public const new Guid IID = .(0x71c284b3, 0xc14d, 0x4d14, 0x98, 0x1e, 0x19, 0x75, 0x1b, 0x0d, 0x75, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUnderlyingObjectModel(out IUnknown* retVal) mut => VT.GetUnderlyingObjectModel(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationObjectModelPattern self, out IUnknown* retVal) GetUnderlyingObjectModel;
			}
		}
		[CRepr]
		public struct IUIAutomationRangeValuePattern : IUnknown
		{
			public const new Guid IID = .(0x59213f4f, 0x7346, 0x49e5, 0xb1, 0x20, 0x80, 0x55, 0x59, 0x87, 0xa1, 0x48);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(double val) mut => VT.SetValue(ref this, val);
			public HRESULT get_CurrentValue(out double retVal) mut => VT.get_CurrentValue(ref this, out retVal);
			public HRESULT get_CurrentIsReadOnly(out BOOL retVal) mut => VT.get_CurrentIsReadOnly(ref this, out retVal);
			public HRESULT get_CurrentMaximum(out double retVal) mut => VT.get_CurrentMaximum(ref this, out retVal);
			public HRESULT get_CurrentMinimum(out double retVal) mut => VT.get_CurrentMinimum(ref this, out retVal);
			public HRESULT get_CurrentLargeChange(out double retVal) mut => VT.get_CurrentLargeChange(ref this, out retVal);
			public HRESULT get_CurrentSmallChange(out double retVal) mut => VT.get_CurrentSmallChange(ref this, out retVal);
			public HRESULT get_CachedValue(out double retVal) mut => VT.get_CachedValue(ref this, out retVal);
			public HRESULT get_CachedIsReadOnly(out BOOL retVal) mut => VT.get_CachedIsReadOnly(ref this, out retVal);
			public HRESULT get_CachedMaximum(out double retVal) mut => VT.get_CachedMaximum(ref this, out retVal);
			public HRESULT get_CachedMinimum(out double retVal) mut => VT.get_CachedMinimum(ref this, out retVal);
			public HRESULT get_CachedLargeChange(out double retVal) mut => VT.get_CachedLargeChange(ref this, out retVal);
			public HRESULT get_CachedSmallChange(out double retVal) mut => VT.get_CachedSmallChange(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, double val) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CurrentValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out BOOL retVal) get_CurrentIsReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CurrentMaximum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CurrentMinimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CurrentLargeChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CurrentSmallChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CachedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out BOOL retVal) get_CachedIsReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CachedMaximum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CachedMinimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CachedLargeChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationRangeValuePattern self, out double retVal) get_CachedSmallChange;
			}
		}
		[CRepr]
		public struct IUIAutomationScrollPattern : IUnknown
		{
			public const new Guid IID = .(0x88f4d42a, 0xe881, 0x459d, 0xa7, 0x7c, 0x73, 0xbb, 0xbb, 0x7e, 0x02, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Scroll(ScrollAmount horizontalAmount, ScrollAmount verticalAmount) mut => VT.Scroll(ref this, horizontalAmount, verticalAmount);
			public HRESULT SetScrollPercent(double horizontalPercent, double verticalPercent) mut => VT.SetScrollPercent(ref this, horizontalPercent, verticalPercent);
			public HRESULT get_CurrentHorizontalScrollPercent(out double retVal) mut => VT.get_CurrentHorizontalScrollPercent(ref this, out retVal);
			public HRESULT get_CurrentVerticalScrollPercent(out double retVal) mut => VT.get_CurrentVerticalScrollPercent(ref this, out retVal);
			public HRESULT get_CurrentHorizontalViewSize(out double retVal) mut => VT.get_CurrentHorizontalViewSize(ref this, out retVal);
			public HRESULT get_CurrentVerticalViewSize(out double retVal) mut => VT.get_CurrentVerticalViewSize(ref this, out retVal);
			public HRESULT get_CurrentHorizontallyScrollable(out BOOL retVal) mut => VT.get_CurrentHorizontallyScrollable(ref this, out retVal);
			public HRESULT get_CurrentVerticallyScrollable(out BOOL retVal) mut => VT.get_CurrentVerticallyScrollable(ref this, out retVal);
			public HRESULT get_CachedHorizontalScrollPercent(out double retVal) mut => VT.get_CachedHorizontalScrollPercent(ref this, out retVal);
			public HRESULT get_CachedVerticalScrollPercent(out double retVal) mut => VT.get_CachedVerticalScrollPercent(ref this, out retVal);
			public HRESULT get_CachedHorizontalViewSize(out double retVal) mut => VT.get_CachedHorizontalViewSize(ref this, out retVal);
			public HRESULT get_CachedVerticalViewSize(out double retVal) mut => VT.get_CachedVerticalViewSize(ref this, out retVal);
			public HRESULT get_CachedHorizontallyScrollable(out BOOL retVal) mut => VT.get_CachedHorizontallyScrollable(ref this, out retVal);
			public HRESULT get_CachedVerticallyScrollable(out BOOL retVal) mut => VT.get_CachedVerticallyScrollable(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, ScrollAmount horizontalAmount, ScrollAmount verticalAmount) Scroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, double horizontalPercent, double verticalPercent) SetScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CurrentHorizontalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CurrentVerticalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CurrentHorizontalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CurrentVerticalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out BOOL retVal) get_CurrentHorizontallyScrollable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out BOOL retVal) get_CurrentVerticallyScrollable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CachedHorizontalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CachedVerticalScrollPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CachedHorizontalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out double retVal) get_CachedVerticalViewSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out BOOL retVal) get_CachedHorizontallyScrollable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollPattern self, out BOOL retVal) get_CachedVerticallyScrollable;
			}
		}
		[CRepr]
		public struct IUIAutomationScrollItemPattern : IUnknown
		{
			public const new Guid IID = .(0xb488300f, 0xd015, 0x4f19, 0x9c, 0x29, 0xbb, 0x59, 0x5e, 0x36, 0x45, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollIntoView() mut => VT.ScrollIntoView(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationScrollItemPattern self) ScrollIntoView;
			}
		}
		[CRepr]
		public struct IUIAutomationSelectionPattern : IUnknown
		{
			public const new Guid IID = .(0x5ed5202e, 0xb2ac, 0x47a6, 0xb6, 0x38, 0x4b, 0x0b, 0xf1, 0x40, 0xd7, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentSelection(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentSelection(ref this, out retVal);
			public HRESULT get_CurrentCanSelectMultiple(out BOOL retVal) mut => VT.get_CurrentCanSelectMultiple(ref this, out retVal);
			public HRESULT get_CurrentIsSelectionRequired(out BOOL retVal) mut => VT.get_CurrentIsSelectionRequired(ref this, out retVal);
			public HRESULT GetCachedSelection(out IUIAutomationElementArray* retVal) mut => VT.GetCachedSelection(ref this, out retVal);
			public HRESULT get_CachedCanSelectMultiple(out BOOL retVal) mut => VT.get_CachedCanSelectMultiple(ref this, out retVal);
			public HRESULT get_CachedIsSelectionRequired(out BOOL retVal) mut => VT.get_CachedIsSelectionRequired(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out IUIAutomationElementArray* retVal) GetCurrentSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out BOOL retVal) get_CurrentCanSelectMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out BOOL retVal) get_CurrentIsSelectionRequired;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out IUIAutomationElementArray* retVal) GetCachedSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out BOOL retVal) get_CachedCanSelectMultiple;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern self, out BOOL retVal) get_CachedIsSelectionRequired;
			}
		}
		[CRepr]
		public struct IUIAutomationSelectionPattern2 : IUIAutomationSelectionPattern
		{
			public const new Guid IID = .(0x0532bfae, 0xc011, 0x4e32, 0xa3, 0x43, 0x6d, 0x64, 0x2d, 0x79, 0x85, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentFirstSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CurrentFirstSelectedItem(ref this, out retVal);
			public HRESULT get_CurrentLastSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CurrentLastSelectedItem(ref this, out retVal);
			public HRESULT get_CurrentCurrentSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CurrentCurrentSelectedItem(ref this, out retVal);
			public HRESULT get_CurrentItemCount(out int32 retVal) mut => VT.get_CurrentItemCount(ref this, out retVal);
			public HRESULT get_CachedFirstSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CachedFirstSelectedItem(ref this, out retVal);
			public HRESULT get_CachedLastSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CachedLastSelectedItem(ref this, out retVal);
			public HRESULT get_CachedCurrentSelectedItem(out IUIAutomationElement* retVal) mut => VT.get_CachedCurrentSelectedItem(ref this, out retVal);
			public HRESULT get_CachedItemCount(out int32 retVal) mut => VT.get_CachedItemCount(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationSelectionPattern.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CurrentFirstSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CurrentLastSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CurrentCurrentSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out int32 retVal) get_CurrentItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CachedFirstSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CachedLastSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out IUIAutomationElement* retVal) get_CachedCurrentSelectedItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionPattern2 self, out int32 retVal) get_CachedItemCount;
			}
		}
		[CRepr]
		public struct IUIAutomationSelectionItemPattern : IUnknown
		{
			public const new Guid IID = .(0xa8efa66a, 0x0fda, 0x421a, 0x91, 0x94, 0x38, 0x02, 0x1f, 0x35, 0x78, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Select() mut => VT.Select(ref this);
			public HRESULT AddToSelection() mut => VT.AddToSelection(ref this);
			public HRESULT RemoveFromSelection() mut => VT.RemoveFromSelection(ref this);
			public HRESULT get_CurrentIsSelected(out BOOL retVal) mut => VT.get_CurrentIsSelected(ref this, out retVal);
			public HRESULT get_CurrentSelectionContainer(out IUIAutomationElement* retVal) mut => VT.get_CurrentSelectionContainer(ref this, out retVal);
			public HRESULT get_CachedIsSelected(out BOOL retVal) mut => VT.get_CachedIsSelected(ref this, out retVal);
			public HRESULT get_CachedSelectionContainer(out IUIAutomationElement* retVal) mut => VT.get_CachedSelectionContainer(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self) AddToSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self) RemoveFromSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self, out BOOL retVal) get_CurrentIsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self, out IUIAutomationElement* retVal) get_CurrentSelectionContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self, out BOOL retVal) get_CachedIsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSelectionItemPattern self, out IUIAutomationElement* retVal) get_CachedSelectionContainer;
			}
		}
		[CRepr]
		public struct IUIAutomationSynchronizedInputPattern : IUnknown
		{
			public const new Guid IID = .(0x2233be0b, 0xafb7, 0x448b, 0x9f, 0xda, 0x3b, 0x37, 0x8a, 0xa5, 0xea, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartListening(SynchronizedInputType inputType) mut => VT.StartListening(ref this, inputType);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSynchronizedInputPattern self, SynchronizedInputType inputType) StartListening;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSynchronizedInputPattern self) Cancel;
			}
		}
		[CRepr]
		public struct IUIAutomationTablePattern : IUnknown
		{
			public const new Guid IID = .(0x620e691c, 0xea96, 0x4710, 0xa8, 0x50, 0x75, 0x4b, 0x24, 0xce, 0x24, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentRowHeaders(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentRowHeaders(ref this, out retVal);
			public HRESULT GetCurrentColumnHeaders(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentColumnHeaders(ref this, out retVal);
			public HRESULT get_CurrentRowOrColumnMajor(out RowOrColumnMajor retVal) mut => VT.get_CurrentRowOrColumnMajor(ref this, out retVal);
			public HRESULT GetCachedRowHeaders(out IUIAutomationElementArray* retVal) mut => VT.GetCachedRowHeaders(ref this, out retVal);
			public HRESULT GetCachedColumnHeaders(out IUIAutomationElementArray* retVal) mut => VT.GetCachedColumnHeaders(ref this, out retVal);
			public HRESULT get_CachedRowOrColumnMajor(out RowOrColumnMajor retVal) mut => VT.get_CachedRowOrColumnMajor(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out IUIAutomationElementArray* retVal) GetCurrentRowHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out IUIAutomationElementArray* retVal) GetCurrentColumnHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out RowOrColumnMajor retVal) get_CurrentRowOrColumnMajor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out IUIAutomationElementArray* retVal) GetCachedRowHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out IUIAutomationElementArray* retVal) GetCachedColumnHeaders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTablePattern self, out RowOrColumnMajor retVal) get_CachedRowOrColumnMajor;
			}
		}
		[CRepr]
		public struct IUIAutomationTableItemPattern : IUnknown
		{
			public const new Guid IID = .(0x0b964eb3, 0xef2e, 0x4464, 0x9c, 0x79, 0x61, 0xd6, 0x17, 0x37, 0xa2, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentRowHeaderItems(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentRowHeaderItems(ref this, out retVal);
			public HRESULT GetCurrentColumnHeaderItems(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentColumnHeaderItems(ref this, out retVal);
			public HRESULT GetCachedRowHeaderItems(out IUIAutomationElementArray* retVal) mut => VT.GetCachedRowHeaderItems(ref this, out retVal);
			public HRESULT GetCachedColumnHeaderItems(out IUIAutomationElementArray* retVal) mut => VT.GetCachedColumnHeaderItems(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTableItemPattern self, out IUIAutomationElementArray* retVal) GetCurrentRowHeaderItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTableItemPattern self, out IUIAutomationElementArray* retVal) GetCurrentColumnHeaderItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTableItemPattern self, out IUIAutomationElementArray* retVal) GetCachedRowHeaderItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTableItemPattern self, out IUIAutomationElementArray* retVal) GetCachedColumnHeaderItems;
			}
		}
		[CRepr]
		public struct IUIAutomationTogglePattern : IUnknown
		{
			public const new Guid IID = .(0x94cf8058, 0x9b8d, 0x4ab9, 0x8b, 0xfd, 0x4c, 0xd0, 0xa3, 0x3c, 0x8c, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Toggle() mut => VT.Toggle(ref this);
			public HRESULT get_CurrentToggleState(out ToggleState retVal) mut => VT.get_CurrentToggleState(ref this, out retVal);
			public HRESULT get_CachedToggleState(out ToggleState retVal) mut => VT.get_CachedToggleState(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTogglePattern self) Toggle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTogglePattern self, out ToggleState retVal) get_CurrentToggleState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTogglePattern self, out ToggleState retVal) get_CachedToggleState;
			}
		}
		[CRepr]
		public struct IUIAutomationTransformPattern : IUnknown
		{
			public const new Guid IID = .(0xa9b55844, 0xa55d, 0x4ef0, 0x92, 0x6d, 0x56, 0x9c, 0x16, 0xff, 0x89, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Move(double x, double y) mut => VT.Move(ref this, x, y);
			public HRESULT Resize(double width, double height) mut => VT.Resize(ref this, width, height);
			public HRESULT Rotate(double degrees) mut => VT.Rotate(ref this, degrees);
			public HRESULT get_CurrentCanMove(out BOOL retVal) mut => VT.get_CurrentCanMove(ref this, out retVal);
			public HRESULT get_CurrentCanResize(out BOOL retVal) mut => VT.get_CurrentCanResize(ref this, out retVal);
			public HRESULT get_CurrentCanRotate(out BOOL retVal) mut => VT.get_CurrentCanRotate(ref this, out retVal);
			public HRESULT get_CachedCanMove(out BOOL retVal) mut => VT.get_CachedCanMove(ref this, out retVal);
			public HRESULT get_CachedCanResize(out BOOL retVal) mut => VT.get_CachedCanResize(ref this, out retVal);
			public HRESULT get_CachedCanRotate(out BOOL retVal) mut => VT.get_CachedCanRotate(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, double x, double y) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, double width, double height) Resize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, double degrees) Rotate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CurrentCanMove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CurrentCanResize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CurrentCanRotate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CachedCanMove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CachedCanResize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern self, out BOOL retVal) get_CachedCanRotate;
			}
		}
		[CRepr]
		public struct IUIAutomationValuePattern : IUnknown
		{
			public const new Guid IID = .(0xa94cd8b1, 0x0844, 0x4cd6, 0x9d, 0x2d, 0x64, 0x05, 0x37, 0xab, 0x39, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(BSTR val) mut => VT.SetValue(ref this, val);
			public HRESULT get_CurrentValue(out BSTR retVal) mut => VT.get_CurrentValue(ref this, out retVal);
			public HRESULT get_CurrentIsReadOnly(out BOOL retVal) mut => VT.get_CurrentIsReadOnly(ref this, out retVal);
			public HRESULT get_CachedValue(out BSTR retVal) mut => VT.get_CachedValue(ref this, out retVal);
			public HRESULT get_CachedIsReadOnly(out BOOL retVal) mut => VT.get_CachedIsReadOnly(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationValuePattern self, BSTR val) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationValuePattern self, out BSTR retVal) get_CurrentValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationValuePattern self, out BOOL retVal) get_CurrentIsReadOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationValuePattern self, out BSTR retVal) get_CachedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationValuePattern self, out BOOL retVal) get_CachedIsReadOnly;
			}
		}
		[CRepr]
		public struct IUIAutomationWindowPattern : IUnknown
		{
			public const new Guid IID = .(0x0faef453, 0x9208, 0x43ef, 0xbb, 0xb2, 0x3b, 0x48, 0x51, 0x77, 0x86, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT WaitForInputIdle(int32 milliseconds, out BOOL success) mut => VT.WaitForInputIdle(ref this, milliseconds, out success);
			public HRESULT SetWindowVisualState(WindowVisualState state) mut => VT.SetWindowVisualState(ref this, state);
			public HRESULT get_CurrentCanMaximize(out BOOL retVal) mut => VT.get_CurrentCanMaximize(ref this, out retVal);
			public HRESULT get_CurrentCanMinimize(out BOOL retVal) mut => VT.get_CurrentCanMinimize(ref this, out retVal);
			public HRESULT get_CurrentIsModal(out BOOL retVal) mut => VT.get_CurrentIsModal(ref this, out retVal);
			public HRESULT get_CurrentIsTopmost(out BOOL retVal) mut => VT.get_CurrentIsTopmost(ref this, out retVal);
			public HRESULT get_CurrentWindowVisualState(out WindowVisualState retVal) mut => VT.get_CurrentWindowVisualState(ref this, out retVal);
			public HRESULT get_CurrentWindowInteractionState(out WindowInteractionState retVal) mut => VT.get_CurrentWindowInteractionState(ref this, out retVal);
			public HRESULT get_CachedCanMaximize(out BOOL retVal) mut => VT.get_CachedCanMaximize(ref this, out retVal);
			public HRESULT get_CachedCanMinimize(out BOOL retVal) mut => VT.get_CachedCanMinimize(ref this, out retVal);
			public HRESULT get_CachedIsModal(out BOOL retVal) mut => VT.get_CachedIsModal(ref this, out retVal);
			public HRESULT get_CachedIsTopmost(out BOOL retVal) mut => VT.get_CachedIsTopmost(ref this, out retVal);
			public HRESULT get_CachedWindowVisualState(out WindowVisualState retVal) mut => VT.get_CachedWindowVisualState(ref this, out retVal);
			public HRESULT get_CachedWindowInteractionState(out WindowInteractionState retVal) mut => VT.get_CachedWindowInteractionState(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, int32 milliseconds, out BOOL success) WaitForInputIdle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, WindowVisualState state) SetWindowVisualState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CurrentCanMaximize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CurrentCanMinimize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CurrentIsModal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CurrentIsTopmost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out WindowVisualState retVal) get_CurrentWindowVisualState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out WindowInteractionState retVal) get_CurrentWindowInteractionState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CachedCanMaximize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CachedCanMinimize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CachedIsModal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out BOOL retVal) get_CachedIsTopmost;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out WindowVisualState retVal) get_CachedWindowVisualState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationWindowPattern self, out WindowInteractionState retVal) get_CachedWindowInteractionState;
			}
		}
		[CRepr]
		public struct IUIAutomationTextRange : IUnknown
		{
			public const new Guid IID = .(0xa543cc6a, 0xf4ae, 0x494b, 0x82, 0x39, 0xc8, 0x14, 0x48, 0x11, 0x87, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IUIAutomationTextRange* clonedRange) mut => VT.Clone(ref this, out clonedRange);
			public HRESULT Compare(ref IUIAutomationTextRange range, out BOOL areSame) mut => VT.Compare(ref this, ref range, out areSame);
			public HRESULT CompareEndpoints(TextPatternRangeEndpoint srcEndPoint, ref IUIAutomationTextRange range, TextPatternRangeEndpoint targetEndPoint, out int32 compValue) mut => VT.CompareEndpoints(ref this, srcEndPoint, ref range, targetEndPoint, out compValue);
			public HRESULT ExpandToEnclosingUnit(TextUnit textUnit) mut => VT.ExpandToEnclosingUnit(ref this, textUnit);
			public HRESULT FindAttribute(int32 attr, VARIANT val, BOOL backward, out IUIAutomationTextRange* found) mut => VT.FindAttribute(ref this, attr, val, backward, out found);
			public HRESULT FindText(BSTR text, BOOL backward, BOOL ignoreCase, out IUIAutomationTextRange* found) mut => VT.FindText(ref this, text, backward, ignoreCase, out found);
			public HRESULT GetAttributeValue(int32 attr, out VARIANT value) mut => VT.GetAttributeValue(ref this, attr, out value);
			public HRESULT GetBoundingRectangles(out SAFEARRAY* boundingRects) mut => VT.GetBoundingRectangles(ref this, out boundingRects);
			public HRESULT GetEnclosingElement(out IUIAutomationElement* enclosingElement) mut => VT.GetEnclosingElement(ref this, out enclosingElement);
			public HRESULT GetText(int32 maxLength, out BSTR text) mut => VT.GetText(ref this, maxLength, out text);
			public HRESULT Move(TextUnit unit, int32 count, out int32 moved) mut => VT.Move(ref this, unit, count, out moved);
			public HRESULT MoveEndpointByUnit(TextPatternRangeEndpoint endpoint, TextUnit unit, int32 count, out int32 moved) mut => VT.MoveEndpointByUnit(ref this, endpoint, unit, count, out moved);
			public HRESULT MoveEndpointByRange(TextPatternRangeEndpoint srcEndPoint, ref IUIAutomationTextRange range, TextPatternRangeEndpoint targetEndPoint) mut => VT.MoveEndpointByRange(ref this, srcEndPoint, ref range, targetEndPoint);
			public HRESULT Select() mut => VT.Select(ref this);
			public HRESULT AddToSelection() mut => VT.AddToSelection(ref this);
			public HRESULT RemoveFromSelection() mut => VT.RemoveFromSelection(ref this);
			public HRESULT ScrollIntoView(BOOL alignToTop) mut => VT.ScrollIntoView(ref this, alignToTop);
			public HRESULT GetChildren(out IUIAutomationElementArray* children) mut => VT.GetChildren(ref this, out children);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, out IUIAutomationTextRange* clonedRange) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, ref IUIAutomationTextRange range, out BOOL areSame) Compare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, TextPatternRangeEndpoint srcEndPoint, ref IUIAutomationTextRange range, TextPatternRangeEndpoint targetEndPoint, out int32 compValue) CompareEndpoints;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, TextUnit textUnit) ExpandToEnclosingUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, int32 attr, VARIANT val, BOOL backward, out IUIAutomationTextRange* found) FindAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, BSTR text, BOOL backward, BOOL ignoreCase, out IUIAutomationTextRange* found) FindText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, int32 attr, out VARIANT value) GetAttributeValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, out SAFEARRAY* boundingRects) GetBoundingRectangles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, out IUIAutomationElement* enclosingElement) GetEnclosingElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, int32 maxLength, out BSTR text) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, TextUnit unit, int32 count, out int32 moved) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, TextPatternRangeEndpoint endpoint, TextUnit unit, int32 count, out int32 moved) MoveEndpointByUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, TextPatternRangeEndpoint srcEndPoint, ref IUIAutomationTextRange range, TextPatternRangeEndpoint targetEndPoint) MoveEndpointByRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self) AddToSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self) RemoveFromSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, BOOL alignToTop) ScrollIntoView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange self, out IUIAutomationElementArray* children) GetChildren;
			}
		}
		[CRepr]
		public struct IUIAutomationTextRange2 : IUIAutomationTextRange
		{
			public const new Guid IID = .(0xbb9b40e0, 0x5e04, 0x46bd, 0x9b, 0xe0, 0x4b, 0x60, 0x1b, 0x9a, 0xfa, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowContextMenu() mut => VT.ShowContextMenu(ref this);

			[CRepr]
			public struct VTable : IUIAutomationTextRange.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange2 self) ShowContextMenu;
			}
		}
		[CRepr]
		public struct IUIAutomationTextRange3 : IUIAutomationTextRange2
		{
			public const new Guid IID = .(0x6a315d69, 0x5512, 0x4c2e, 0x85, 0xf0, 0x53, 0xfc, 0xe6, 0xdd, 0x4b, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnclosingElementBuildCache(ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* enclosingElement) mut => VT.GetEnclosingElementBuildCache(ref this, ref cacheRequest, out enclosingElement);
			public HRESULT GetChildrenBuildCache(ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElementArray* children) mut => VT.GetChildrenBuildCache(ref this, ref cacheRequest, out children);
			public HRESULT GetAttributeValues(int32* attributeIds, int32 attributeIdCount, out SAFEARRAY* attributeValues) mut => VT.GetAttributeValues(ref this, attributeIds, attributeIdCount, out attributeValues);

			[CRepr]
			public struct VTable : IUIAutomationTextRange2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange3 self, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* enclosingElement) GetEnclosingElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange3 self, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElementArray* children) GetChildrenBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRange3 self, int32* attributeIds, int32 attributeIdCount, out SAFEARRAY* attributeValues) GetAttributeValues;
			}
		}
		[CRepr]
		public struct IUIAutomationTextRangeArray : IUnknown
		{
			public const new Guid IID = .(0xce4ae76a, 0xe717, 0x4c98, 0x81, 0xea, 0x47, 0x37, 0x1d, 0x02, 0x8e, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Length(out int32 length) mut => VT.get_Length(ref this, out length);
			public HRESULT GetElement(int32 index, out IUIAutomationTextRange* element) mut => VT.GetElement(ref this, index, out element);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRangeArray self, out int32 length) get_Length;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextRangeArray self, int32 index, out IUIAutomationTextRange* element) GetElement;
			}
		}
		[CRepr]
		public struct IUIAutomationTextPattern : IUnknown
		{
			public const new Guid IID = .(0x32eba289, 0x3583, 0x42c9, 0x9c, 0x59, 0x3b, 0x6d, 0x9a, 0x1e, 0x9b, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RangeFromPoint(POINT pt, out IUIAutomationTextRange* range) mut => VT.RangeFromPoint(ref this, pt, out range);
			public HRESULT RangeFromChild(ref IUIAutomationElement child, out IUIAutomationTextRange* range) mut => VT.RangeFromChild(ref this, ref child, out range);
			public HRESULT GetSelection(out IUIAutomationTextRangeArray* ranges) mut => VT.GetSelection(ref this, out ranges);
			public HRESULT GetVisibleRanges(out IUIAutomationTextRangeArray* ranges) mut => VT.GetVisibleRanges(ref this, out ranges);
			public HRESULT get_DocumentRange(out IUIAutomationTextRange* range) mut => VT.get_DocumentRange(ref this, out range);
			public HRESULT get_SupportedTextSelection(out SupportedTextSelection supportedTextSelection) mut => VT.get_SupportedTextSelection(ref this, out supportedTextSelection);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, POINT pt, out IUIAutomationTextRange* range) RangeFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, ref IUIAutomationElement child, out IUIAutomationTextRange* range) RangeFromChild;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, out IUIAutomationTextRangeArray* ranges) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, out IUIAutomationTextRangeArray* ranges) GetVisibleRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, out IUIAutomationTextRange* range) get_DocumentRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern self, out SupportedTextSelection supportedTextSelection) get_SupportedTextSelection;
			}
		}
		[CRepr]
		public struct IUIAutomationTextPattern2 : IUIAutomationTextPattern
		{
			public const new Guid IID = .(0x506a921a, 0xfcc9, 0x409f, 0xb2, 0x3b, 0x37, 0xeb, 0x74, 0x10, 0x68, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RangeFromAnnotation(ref IUIAutomationElement annotation, out IUIAutomationTextRange* range) mut => VT.RangeFromAnnotation(ref this, ref annotation, out range);
			public HRESULT GetCaretRange(out BOOL isActive, out IUIAutomationTextRange* range) mut => VT.GetCaretRange(ref this, out isActive, out range);

			[CRepr]
			public struct VTable : IUIAutomationTextPattern.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern2 self, ref IUIAutomationElement annotation, out IUIAutomationTextRange* range) RangeFromAnnotation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextPattern2 self, out BOOL isActive, out IUIAutomationTextRange* range) GetCaretRange;
			}
		}
		[CRepr]
		public struct IUIAutomationTextEditPattern : IUIAutomationTextPattern
		{
			public const new Guid IID = .(0x17e21576, 0x996c, 0x4870, 0x99, 0xd9, 0xbf, 0xf3, 0x23, 0x38, 0x0c, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetActiveComposition(out IUIAutomationTextRange* range) mut => VT.GetActiveComposition(ref this, out range);
			public HRESULT GetConversionTarget(out IUIAutomationTextRange* range) mut => VT.GetConversionTarget(ref this, out range);

			[CRepr]
			public struct VTable : IUIAutomationTextPattern.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextEditPattern self, out IUIAutomationTextRange* range) GetActiveComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextEditPattern self, out IUIAutomationTextRange* range) GetConversionTarget;
			}
		}
		[CRepr]
		public struct IUIAutomationCustomNavigationPattern : IUnknown
		{
			public const new Guid IID = .(0x01ea217a, 0x1766, 0x47ed, 0xa6, 0xcc, 0xac, 0xf4, 0x92, 0x85, 0x4b, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Navigate(NavigateDirection direction, out IUIAutomationElement* pRetVal) mut => VT.Navigate(ref this, direction, out pRetVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationCustomNavigationPattern self, NavigateDirection direction, out IUIAutomationElement* pRetVal) Navigate;
			}
		}
		[CRepr]
		public struct IUIAutomationActiveTextPositionChangedEventHandler : IUnknown
		{
			public const new Guid IID = .(0xf97933b0, 0x8dae, 0x4496, 0x89, 0x97, 0x5b, 0xa0, 0x15, 0xfe, 0x0d, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleActiveTextPositionChangedEvent(ref IUIAutomationElement sender, ref IUIAutomationTextRange range) mut => VT.HandleActiveTextPositionChangedEvent(ref this, ref sender, ref range);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationActiveTextPositionChangedEventHandler self, ref IUIAutomationElement sender, ref IUIAutomationTextRange range) HandleActiveTextPositionChangedEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationLegacyIAccessiblePattern : IUnknown
		{
			public const new Guid IID = .(0x828055ad, 0x355b, 0x4435, 0x86, 0xd5, 0x3b, 0x51, 0xc1, 0x4a, 0x9b, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Select(int32 flagsSelect) mut => VT.Select(ref this, flagsSelect);
			public HRESULT DoDefaultAction() mut => VT.DoDefaultAction(ref this);
			public HRESULT SetValue(PWSTR szValue) mut => VT.SetValue(ref this, szValue);
			public HRESULT get_CurrentChildId(out int32 pRetVal) mut => VT.get_CurrentChildId(ref this, out pRetVal);
			public HRESULT get_CurrentName(out BSTR pszName) mut => VT.get_CurrentName(ref this, out pszName);
			public HRESULT get_CurrentValue(out BSTR pszValue) mut => VT.get_CurrentValue(ref this, out pszValue);
			public HRESULT get_CurrentDescription(out BSTR pszDescription) mut => VT.get_CurrentDescription(ref this, out pszDescription);
			public HRESULT get_CurrentRole(out uint32 pdwRole) mut => VT.get_CurrentRole(ref this, out pdwRole);
			public HRESULT get_CurrentState(out uint32 pdwState) mut => VT.get_CurrentState(ref this, out pdwState);
			public HRESULT get_CurrentHelp(out BSTR pszHelp) mut => VT.get_CurrentHelp(ref this, out pszHelp);
			public HRESULT get_CurrentKeyboardShortcut(out BSTR pszKeyboardShortcut) mut => VT.get_CurrentKeyboardShortcut(ref this, out pszKeyboardShortcut);
			public HRESULT GetCurrentSelection(out IUIAutomationElementArray* pvarSelectedChildren) mut => VT.GetCurrentSelection(ref this, out pvarSelectedChildren);
			public HRESULT get_CurrentDefaultAction(out BSTR pszDefaultAction) mut => VT.get_CurrentDefaultAction(ref this, out pszDefaultAction);
			public HRESULT get_CachedChildId(out int32 pRetVal) mut => VT.get_CachedChildId(ref this, out pRetVal);
			public HRESULT get_CachedName(out BSTR pszName) mut => VT.get_CachedName(ref this, out pszName);
			public HRESULT get_CachedValue(out BSTR pszValue) mut => VT.get_CachedValue(ref this, out pszValue);
			public HRESULT get_CachedDescription(out BSTR pszDescription) mut => VT.get_CachedDescription(ref this, out pszDescription);
			public HRESULT get_CachedRole(out uint32 pdwRole) mut => VT.get_CachedRole(ref this, out pdwRole);
			public HRESULT get_CachedState(out uint32 pdwState) mut => VT.get_CachedState(ref this, out pdwState);
			public HRESULT get_CachedHelp(out BSTR pszHelp) mut => VT.get_CachedHelp(ref this, out pszHelp);
			public HRESULT get_CachedKeyboardShortcut(out BSTR pszKeyboardShortcut) mut => VT.get_CachedKeyboardShortcut(ref this, out pszKeyboardShortcut);
			public HRESULT GetCachedSelection(out IUIAutomationElementArray* pvarSelectedChildren) mut => VT.GetCachedSelection(ref this, out pvarSelectedChildren);
			public HRESULT get_CachedDefaultAction(out BSTR pszDefaultAction) mut => VT.get_CachedDefaultAction(ref this, out pszDefaultAction);
			public HRESULT GetIAccessible(out IAccessible* ppAccessible) mut => VT.GetIAccessible(ref this, out ppAccessible);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, int32 flagsSelect) Select;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self) DoDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, PWSTR szValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out int32 pRetVal) get_CurrentChildId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszName) get_CurrentName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszValue) get_CurrentValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszDescription) get_CurrentDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out uint32 pdwRole) get_CurrentRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out uint32 pdwState) get_CurrentState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszHelp) get_CurrentHelp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszKeyboardShortcut) get_CurrentKeyboardShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out IUIAutomationElementArray* pvarSelectedChildren) GetCurrentSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszDefaultAction) get_CurrentDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out int32 pRetVal) get_CachedChildId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszName) get_CachedName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszValue) get_CachedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszDescription) get_CachedDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out uint32 pdwRole) get_CachedRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out uint32 pdwState) get_CachedState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszHelp) get_CachedHelp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszKeyboardShortcut) get_CachedKeyboardShortcut;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out IUIAutomationElementArray* pvarSelectedChildren) GetCachedSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out BSTR pszDefaultAction) get_CachedDefaultAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationLegacyIAccessiblePattern self, out IAccessible* ppAccessible) GetIAccessible;
			}
		}
		[CRepr]
		public struct IUIAutomationItemContainerPattern : IUnknown
		{
			public const new Guid IID = .(0xc690fdb2, 0x27a8, 0x423c, 0x81, 0x2d, 0x42, 0x97, 0x73, 0xc9, 0x08, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindItemByProperty(ref IUIAutomationElement pStartAfter, int32 propertyId, VARIANT value, out IUIAutomationElement* pFound) mut => VT.FindItemByProperty(ref this, ref pStartAfter, propertyId, value, out pFound);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationItemContainerPattern self, ref IUIAutomationElement pStartAfter, int32 propertyId, VARIANT value, out IUIAutomationElement* pFound) FindItemByProperty;
			}
		}
		[CRepr]
		public struct IUIAutomationVirtualizedItemPattern : IUnknown
		{
			public const new Guid IID = .(0x6ba3d7a6, 0x04cf, 0x4f11, 0x87, 0x93, 0xa8, 0xd1, 0xcd, 0xe9, 0x96, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Realize() mut => VT.Realize(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationVirtualizedItemPattern self) Realize;
			}
		}
		[CRepr]
		public struct IUIAutomationAnnotationPattern : IUnknown
		{
			public const new Guid IID = .(0x9a175b21, 0x339e, 0x41b1, 0x8e, 0x8b, 0x62, 0x3f, 0x6b, 0x68, 0x10, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentAnnotationTypeId(out int32 retVal) mut => VT.get_CurrentAnnotationTypeId(ref this, out retVal);
			public HRESULT get_CurrentAnnotationTypeName(out BSTR retVal) mut => VT.get_CurrentAnnotationTypeName(ref this, out retVal);
			public HRESULT get_CurrentAuthor(out BSTR retVal) mut => VT.get_CurrentAuthor(ref this, out retVal);
			public HRESULT get_CurrentDateTime(out BSTR retVal) mut => VT.get_CurrentDateTime(ref this, out retVal);
			public HRESULT get_CurrentTarget(out IUIAutomationElement* retVal) mut => VT.get_CurrentTarget(ref this, out retVal);
			public HRESULT get_CachedAnnotationTypeId(out int32 retVal) mut => VT.get_CachedAnnotationTypeId(ref this, out retVal);
			public HRESULT get_CachedAnnotationTypeName(out BSTR retVal) mut => VT.get_CachedAnnotationTypeName(ref this, out retVal);
			public HRESULT get_CachedAuthor(out BSTR retVal) mut => VT.get_CachedAuthor(ref this, out retVal);
			public HRESULT get_CachedDateTime(out BSTR retVal) mut => VT.get_CachedDateTime(ref this, out retVal);
			public HRESULT get_CachedTarget(out IUIAutomationElement* retVal) mut => VT.get_CachedTarget(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out int32 retVal) get_CurrentAnnotationTypeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CurrentAnnotationTypeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CurrentAuthor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CurrentDateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out IUIAutomationElement* retVal) get_CurrentTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out int32 retVal) get_CachedAnnotationTypeId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CachedAnnotationTypeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CachedAuthor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out BSTR retVal) get_CachedDateTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationAnnotationPattern self, out IUIAutomationElement* retVal) get_CachedTarget;
			}
		}
		[CRepr]
		public struct IUIAutomationStylesPattern : IUnknown
		{
			public const new Guid IID = .(0x85b5f0a2, 0xbd79, 0x484a, 0xad, 0x2b, 0x38, 0x8c, 0x98, 0x38, 0xd5, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentStyleId(out int32 retVal) mut => VT.get_CurrentStyleId(ref this, out retVal);
			public HRESULT get_CurrentStyleName(out BSTR retVal) mut => VT.get_CurrentStyleName(ref this, out retVal);
			public HRESULT get_CurrentFillColor(out int32 retVal) mut => VT.get_CurrentFillColor(ref this, out retVal);
			public HRESULT get_CurrentFillPatternStyle(out BSTR retVal) mut => VT.get_CurrentFillPatternStyle(ref this, out retVal);
			public HRESULT get_CurrentShape(out BSTR retVal) mut => VT.get_CurrentShape(ref this, out retVal);
			public HRESULT get_CurrentFillPatternColor(out int32 retVal) mut => VT.get_CurrentFillPatternColor(ref this, out retVal);
			public HRESULT get_CurrentExtendedProperties(out BSTR retVal) mut => VT.get_CurrentExtendedProperties(ref this, out retVal);
			public HRESULT GetCurrentExtendedPropertiesAsArray(out ExtendedProperty* propertyArray, out int32 propertyCount) mut => VT.GetCurrentExtendedPropertiesAsArray(ref this, out propertyArray, out propertyCount);
			public HRESULT get_CachedStyleId(out int32 retVal) mut => VT.get_CachedStyleId(ref this, out retVal);
			public HRESULT get_CachedStyleName(out BSTR retVal) mut => VT.get_CachedStyleName(ref this, out retVal);
			public HRESULT get_CachedFillColor(out int32 retVal) mut => VT.get_CachedFillColor(ref this, out retVal);
			public HRESULT get_CachedFillPatternStyle(out BSTR retVal) mut => VT.get_CachedFillPatternStyle(ref this, out retVal);
			public HRESULT get_CachedShape(out BSTR retVal) mut => VT.get_CachedShape(ref this, out retVal);
			public HRESULT get_CachedFillPatternColor(out int32 retVal) mut => VT.get_CachedFillPatternColor(ref this, out retVal);
			public HRESULT get_CachedExtendedProperties(out BSTR retVal) mut => VT.get_CachedExtendedProperties(ref this, out retVal);
			public HRESULT GetCachedExtendedPropertiesAsArray(out ExtendedProperty* propertyArray, out int32 propertyCount) mut => VT.GetCachedExtendedPropertiesAsArray(ref this, out propertyArray, out propertyCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CurrentStyleId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CurrentStyleName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CurrentFillColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CurrentFillPatternStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CurrentShape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CurrentFillPatternColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CurrentExtendedProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out ExtendedProperty* propertyArray, out int32 propertyCount) GetCurrentExtendedPropertiesAsArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CachedStyleId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CachedStyleName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CachedFillColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CachedFillPatternStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CachedShape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out int32 retVal) get_CachedFillPatternColor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out BSTR retVal) get_CachedExtendedProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationStylesPattern self, out ExtendedProperty* propertyArray, out int32 propertyCount) GetCachedExtendedPropertiesAsArray;
			}
		}
		[CRepr]
		public struct IUIAutomationSpreadsheetPattern : IUnknown
		{
			public const new Guid IID = .(0x7517a7c8, 0xfaae, 0x4de9, 0x9f, 0x08, 0x29, 0xb9, 0x1e, 0x85, 0x95, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByName(BSTR name, out IUIAutomationElement* element) mut => VT.GetItemByName(ref this, name, out element);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetPattern self, BSTR name, out IUIAutomationElement* element) GetItemByName;
			}
		}
		[CRepr]
		public struct IUIAutomationSpreadsheetItemPattern : IUnknown
		{
			public const new Guid IID = .(0x7d4fb86c, 0x8d34, 0x40e1, 0x8e, 0x83, 0x62, 0xc1, 0x52, 0x04, 0xe3, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentFormula(out BSTR retVal) mut => VT.get_CurrentFormula(ref this, out retVal);
			public HRESULT GetCurrentAnnotationObjects(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentAnnotationObjects(ref this, out retVal);
			public HRESULT GetCurrentAnnotationTypes(out SAFEARRAY* retVal) mut => VT.GetCurrentAnnotationTypes(ref this, out retVal);
			public HRESULT get_CachedFormula(out BSTR retVal) mut => VT.get_CachedFormula(ref this, out retVal);
			public HRESULT GetCachedAnnotationObjects(out IUIAutomationElementArray* retVal) mut => VT.GetCachedAnnotationObjects(ref this, out retVal);
			public HRESULT GetCachedAnnotationTypes(out SAFEARRAY* retVal) mut => VT.GetCachedAnnotationTypes(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out BSTR retVal) get_CurrentFormula;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out IUIAutomationElementArray* retVal) GetCurrentAnnotationObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out SAFEARRAY* retVal) GetCurrentAnnotationTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out BSTR retVal) get_CachedFormula;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out IUIAutomationElementArray* retVal) GetCachedAnnotationObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationSpreadsheetItemPattern self, out SAFEARRAY* retVal) GetCachedAnnotationTypes;
			}
		}
		[CRepr]
		public struct IUIAutomationTransformPattern2 : IUIAutomationTransformPattern
		{
			public const new Guid IID = .(0x6d74d017, 0x6ecb, 0x4381, 0xb3, 0x8b, 0x3c, 0x17, 0xa4, 0x8f, 0xf1, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Zoom(double zoomValue) mut => VT.Zoom(ref this, zoomValue);
			public HRESULT ZoomByUnit(ZoomUnit zoomUnit) mut => VT.ZoomByUnit(ref this, zoomUnit);
			public HRESULT get_CurrentCanZoom(out BOOL retVal) mut => VT.get_CurrentCanZoom(ref this, out retVal);
			public HRESULT get_CachedCanZoom(out BOOL retVal) mut => VT.get_CachedCanZoom(ref this, out retVal);
			public HRESULT get_CurrentZoomLevel(out double retVal) mut => VT.get_CurrentZoomLevel(ref this, out retVal);
			public HRESULT get_CachedZoomLevel(out double retVal) mut => VT.get_CachedZoomLevel(ref this, out retVal);
			public HRESULT get_CurrentZoomMinimum(out double retVal) mut => VT.get_CurrentZoomMinimum(ref this, out retVal);
			public HRESULT get_CachedZoomMinimum(out double retVal) mut => VT.get_CachedZoomMinimum(ref this, out retVal);
			public HRESULT get_CurrentZoomMaximum(out double retVal) mut => VT.get_CurrentZoomMaximum(ref this, out retVal);
			public HRESULT get_CachedZoomMaximum(out double retVal) mut => VT.get_CachedZoomMaximum(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationTransformPattern.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, double zoomValue) Zoom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, ZoomUnit zoomUnit) ZoomByUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out BOOL retVal) get_CurrentCanZoom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out BOOL retVal) get_CachedCanZoom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CurrentZoomLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CachedZoomLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CurrentZoomMinimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CachedZoomMinimum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CurrentZoomMaximum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTransformPattern2 self, out double retVal) get_CachedZoomMaximum;
			}
		}
		[CRepr]
		public struct IUIAutomationTextChildPattern : IUnknown
		{
			public const new Guid IID = .(0x6552b038, 0xae05, 0x40c8, 0xab, 0xfd, 0xaa, 0x08, 0x35, 0x2a, 0xab, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_TextContainer(out IUIAutomationElement* container) mut => VT.get_TextContainer(ref this, out container);
			public HRESULT get_TextRange(out IUIAutomationTextRange* range) mut => VT.get_TextRange(ref this, out range);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextChildPattern self, out IUIAutomationElement* container) get_TextContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationTextChildPattern self, out IUIAutomationTextRange* range) get_TextRange;
			}
		}
		[CRepr]
		public struct IUIAutomationDragPattern : IUnknown
		{
			public const new Guid IID = .(0x1dc7b570, 0x1f54, 0x4bad, 0xbc, 0xda, 0xd3, 0x6a, 0x72, 0x2f, 0xb7, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentIsGrabbed(out BOOL retVal) mut => VT.get_CurrentIsGrabbed(ref this, out retVal);
			public HRESULT get_CachedIsGrabbed(out BOOL retVal) mut => VT.get_CachedIsGrabbed(ref this, out retVal);
			public HRESULT get_CurrentDropEffect(out BSTR retVal) mut => VT.get_CurrentDropEffect(ref this, out retVal);
			public HRESULT get_CachedDropEffect(out BSTR retVal) mut => VT.get_CachedDropEffect(ref this, out retVal);
			public HRESULT get_CurrentDropEffects(out SAFEARRAY* retVal) mut => VT.get_CurrentDropEffects(ref this, out retVal);
			public HRESULT get_CachedDropEffects(out SAFEARRAY* retVal) mut => VT.get_CachedDropEffects(ref this, out retVal);
			public HRESULT GetCurrentGrabbedItems(out IUIAutomationElementArray* retVal) mut => VT.GetCurrentGrabbedItems(ref this, out retVal);
			public HRESULT GetCachedGrabbedItems(out IUIAutomationElementArray* retVal) mut => VT.GetCachedGrabbedItems(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out BOOL retVal) get_CurrentIsGrabbed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out BOOL retVal) get_CachedIsGrabbed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out BSTR retVal) get_CurrentDropEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out BSTR retVal) get_CachedDropEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out SAFEARRAY* retVal) get_CurrentDropEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out SAFEARRAY* retVal) get_CachedDropEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out IUIAutomationElementArray* retVal) GetCurrentGrabbedItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDragPattern self, out IUIAutomationElementArray* retVal) GetCachedGrabbedItems;
			}
		}
		[CRepr]
		public struct IUIAutomationDropTargetPattern : IUnknown
		{
			public const new Guid IID = .(0x69a095f7, 0xeee4, 0x430e, 0xa4, 0x6b, 0xfb, 0x73, 0xb1, 0xae, 0x39, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentDropTargetEffect(out BSTR retVal) mut => VT.get_CurrentDropTargetEffect(ref this, out retVal);
			public HRESULT get_CachedDropTargetEffect(out BSTR retVal) mut => VT.get_CachedDropTargetEffect(ref this, out retVal);
			public HRESULT get_CurrentDropTargetEffects(out SAFEARRAY* retVal) mut => VT.get_CurrentDropTargetEffects(ref this, out retVal);
			public HRESULT get_CachedDropTargetEffects(out SAFEARRAY* retVal) mut => VT.get_CachedDropTargetEffects(ref this, out retVal);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDropTargetPattern self, out BSTR retVal) get_CurrentDropTargetEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDropTargetPattern self, out BSTR retVal) get_CachedDropTargetEffect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDropTargetPattern self, out SAFEARRAY* retVal) get_CurrentDropTargetEffects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationDropTargetPattern self, out SAFEARRAY* retVal) get_CachedDropTargetEffects;
			}
		}
		[CRepr]
		public struct IUIAutomationElement2 : IUIAutomationElement
		{
			public const new Guid IID = .(0x6749c683, 0xf70d, 0x4487, 0xa6, 0x98, 0x5f, 0x79, 0xd5, 0x52, 0x90, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentOptimizeForVisualContent(out BOOL retVal) mut => VT.get_CurrentOptimizeForVisualContent(ref this, out retVal);
			public HRESULT get_CachedOptimizeForVisualContent(out BOOL retVal) mut => VT.get_CachedOptimizeForVisualContent(ref this, out retVal);
			public HRESULT get_CurrentLiveSetting(out LiveSetting retVal) mut => VT.get_CurrentLiveSetting(ref this, out retVal);
			public HRESULT get_CachedLiveSetting(out LiveSetting retVal) mut => VT.get_CachedLiveSetting(ref this, out retVal);
			public HRESULT get_CurrentFlowsFrom(out IUIAutomationElementArray* retVal) mut => VT.get_CurrentFlowsFrom(ref this, out retVal);
			public HRESULT get_CachedFlowsFrom(out IUIAutomationElementArray* retVal) mut => VT.get_CachedFlowsFrom(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out BOOL retVal) get_CurrentOptimizeForVisualContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out BOOL retVal) get_CachedOptimizeForVisualContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out LiveSetting retVal) get_CurrentLiveSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out LiveSetting retVal) get_CachedLiveSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out IUIAutomationElementArray* retVal) get_CurrentFlowsFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement2 self, out IUIAutomationElementArray* retVal) get_CachedFlowsFrom;
			}
		}
		[CRepr]
		public struct IUIAutomationElement3 : IUIAutomationElement2
		{
			public const new Guid IID = .(0x8471df34, 0xaee0, 0x4a01, 0xa7, 0xde, 0x7d, 0xb9, 0xaf, 0x12, 0xc2, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowContextMenu() mut => VT.ShowContextMenu(ref this);
			public HRESULT get_CurrentIsPeripheral(out BOOL retVal) mut => VT.get_CurrentIsPeripheral(ref this, out retVal);
			public HRESULT get_CachedIsPeripheral(out BOOL retVal) mut => VT.get_CachedIsPeripheral(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement3 self) ShowContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement3 self, out BOOL retVal) get_CurrentIsPeripheral;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement3 self, out BOOL retVal) get_CachedIsPeripheral;
			}
		}
		[CRepr]
		public struct IUIAutomationElement4 : IUIAutomationElement3
		{
			public const new Guid IID = .(0x3b6e233c, 0x52fb, 0x4063, 0xa4, 0xc9, 0x77, 0xc0, 0x75, 0xc2, 0xa0, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentPositionInSet(out int32 retVal) mut => VT.get_CurrentPositionInSet(ref this, out retVal);
			public HRESULT get_CurrentSizeOfSet(out int32 retVal) mut => VT.get_CurrentSizeOfSet(ref this, out retVal);
			public HRESULT get_CurrentLevel(out int32 retVal) mut => VT.get_CurrentLevel(ref this, out retVal);
			public HRESULT get_CurrentAnnotationTypes(out SAFEARRAY* retVal) mut => VT.get_CurrentAnnotationTypes(ref this, out retVal);
			public HRESULT get_CurrentAnnotationObjects(out IUIAutomationElementArray* retVal) mut => VT.get_CurrentAnnotationObjects(ref this, out retVal);
			public HRESULT get_CachedPositionInSet(out int32 retVal) mut => VT.get_CachedPositionInSet(ref this, out retVal);
			public HRESULT get_CachedSizeOfSet(out int32 retVal) mut => VT.get_CachedSizeOfSet(ref this, out retVal);
			public HRESULT get_CachedLevel(out int32 retVal) mut => VT.get_CachedLevel(ref this, out retVal);
			public HRESULT get_CachedAnnotationTypes(out SAFEARRAY* retVal) mut => VT.get_CachedAnnotationTypes(ref this, out retVal);
			public HRESULT get_CachedAnnotationObjects(out IUIAutomationElementArray* retVal) mut => VT.get_CachedAnnotationObjects(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CurrentPositionInSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CurrentSizeOfSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CurrentLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out SAFEARRAY* retVal) get_CurrentAnnotationTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out IUIAutomationElementArray* retVal) get_CurrentAnnotationObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CachedPositionInSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CachedSizeOfSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out int32 retVal) get_CachedLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out SAFEARRAY* retVal) get_CachedAnnotationTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement4 self, out IUIAutomationElementArray* retVal) get_CachedAnnotationObjects;
			}
		}
		[CRepr]
		public struct IUIAutomationElement5 : IUIAutomationElement4
		{
			public const new Guid IID = .(0x98141c1d, 0x0d0e, 0x4175, 0xbb, 0xe2, 0x6b, 0xff, 0x45, 0x58, 0x42, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentLandmarkType(out int32 retVal) mut => VT.get_CurrentLandmarkType(ref this, out retVal);
			public HRESULT get_CurrentLocalizedLandmarkType(out BSTR retVal) mut => VT.get_CurrentLocalizedLandmarkType(ref this, out retVal);
			public HRESULT get_CachedLandmarkType(out int32 retVal) mut => VT.get_CachedLandmarkType(ref this, out retVal);
			public HRESULT get_CachedLocalizedLandmarkType(out BSTR retVal) mut => VT.get_CachedLocalizedLandmarkType(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement5 self, out int32 retVal) get_CurrentLandmarkType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement5 self, out BSTR retVal) get_CurrentLocalizedLandmarkType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement5 self, out int32 retVal) get_CachedLandmarkType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement5 self, out BSTR retVal) get_CachedLocalizedLandmarkType;
			}
		}
		[CRepr]
		public struct IUIAutomationElement6 : IUIAutomationElement5
		{
			public const new Guid IID = .(0x4780d450, 0x8bca, 0x4977, 0xaf, 0xa5, 0xa4, 0xa5, 0x17, 0xf5, 0x55, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentFullDescription(out BSTR retVal) mut => VT.get_CurrentFullDescription(ref this, out retVal);
			public HRESULT get_CachedFullDescription(out BSTR retVal) mut => VT.get_CachedFullDescription(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement6 self, out BSTR retVal) get_CurrentFullDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement6 self, out BSTR retVal) get_CachedFullDescription;
			}
		}
		[CRepr]
		public struct IUIAutomationElement7 : IUIAutomationElement6
		{
			public const new Guid IID = .(0x204e8572, 0xcfc3, 0x4c11, 0xb0, 0xc8, 0x7d, 0xa7, 0x42, 0x07, 0x50, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindFirstWithOptions(TreeScope @scope, ref IUIAutomationCondition condition, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElement* found) mut => VT.FindFirstWithOptions(ref this, @scope, ref condition, traversalOptions, ref root, out found);
			public HRESULT FindAllWithOptions(TreeScope @scope, ref IUIAutomationCondition condition, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElementArray* found) mut => VT.FindAllWithOptions(ref this, @scope, ref condition, traversalOptions, ref root, out found);
			public HRESULT FindFirstWithOptionsBuildCache(TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElement* found) mut => VT.FindFirstWithOptionsBuildCache(ref this, @scope, ref condition, ref cacheRequest, traversalOptions, ref root, out found);
			public HRESULT FindAllWithOptionsBuildCache(TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElementArray* found) mut => VT.FindAllWithOptionsBuildCache(ref this, @scope, ref condition, ref cacheRequest, traversalOptions, ref root, out found);
			public HRESULT GetCurrentMetadataValue(int32 targetId, int32 metadataId, out VARIANT returnVal) mut => VT.GetCurrentMetadataValue(ref this, targetId, metadataId, out returnVal);

			[CRepr]
			public struct VTable : IUIAutomationElement6.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement7 self, TreeScope @scope, ref IUIAutomationCondition condition, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElement* found) FindFirstWithOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement7 self, TreeScope @scope, ref IUIAutomationCondition condition, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElementArray* found) FindAllWithOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement7 self, TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElement* found) FindFirstWithOptionsBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement7 self, TreeScope @scope, ref IUIAutomationCondition condition, ref IUIAutomationCacheRequest cacheRequest, TreeTraversalOptions traversalOptions, ref IUIAutomationElement root, out IUIAutomationElementArray* found) FindAllWithOptionsBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement7 self, int32 targetId, int32 metadataId, out VARIANT returnVal) GetCurrentMetadataValue;
			}
		}
		[CRepr]
		public struct IUIAutomationElement8 : IUIAutomationElement7
		{
			public const new Guid IID = .(0x8c60217d, 0x5411, 0x4cde, 0xbc, 0xc0, 0x1c, 0xed, 0xa2, 0x23, 0x83, 0x0c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentHeadingLevel(out int32 retVal) mut => VT.get_CurrentHeadingLevel(ref this, out retVal);
			public HRESULT get_CachedHeadingLevel(out int32 retVal) mut => VT.get_CachedHeadingLevel(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement7.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement8 self, out int32 retVal) get_CurrentHeadingLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement8 self, out int32 retVal) get_CachedHeadingLevel;
			}
		}
		[CRepr]
		public struct IUIAutomationElement9 : IUIAutomationElement8
		{
			public const new Guid IID = .(0x39325fac, 0x039d, 0x440e, 0xa3, 0xa3, 0x5e, 0xb8, 0x1a, 0x5c, 0xec, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentIsDialog(out BOOL retVal) mut => VT.get_CurrentIsDialog(ref this, out retVal);
			public HRESULT get_CachedIsDialog(out BOOL retVal) mut => VT.get_CachedIsDialog(ref this, out retVal);

			[CRepr]
			public struct VTable : IUIAutomationElement8.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement9 self, out BOOL retVal) get_CurrentIsDialog;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationElement9 self, out BOOL retVal) get_CachedIsDialog;
			}
		}
		[CRepr]
		public struct IUIAutomationProxyFactory : IUnknown
		{
			public const new Guid IID = .(0x85b94ecd, 0x849d, 0x42b6, 0xb9, 0x4d, 0xd6, 0xdb, 0x23, 0xfd, 0xf5, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateProvider(HWND hwnd, int32 idObject, int32 idChild, out IRawElementProviderSimple* provider) mut => VT.CreateProvider(ref this, hwnd, idObject, idChild, out provider);
			public HRESULT get_ProxyFactoryId(out BSTR factoryId) mut => VT.get_ProxyFactoryId(ref this, out factoryId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactory self, HWND hwnd, int32 idObject, int32 idChild, out IRawElementProviderSimple* provider) CreateProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactory self, out BSTR factoryId) get_ProxyFactoryId;
			}
		}
		[CRepr]
		public struct IUIAutomationProxyFactoryEntry : IUnknown
		{
			public const new Guid IID = .(0xd50e472e, 0xb64b, 0x490c, 0xbc, 0xa1, 0xd3, 0x06, 0x96, 0xf9, 0xf2, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ProxyFactory(out IUIAutomationProxyFactory* factory) mut => VT.get_ProxyFactory(ref this, out factory);
			public HRESULT get_ClassName(out BSTR className) mut => VT.get_ClassName(ref this, out className);
			public HRESULT get_ImageName(out BSTR imageName) mut => VT.get_ImageName(ref this, out imageName);
			public HRESULT get_AllowSubstringMatch(out BOOL allowSubstringMatch) mut => VT.get_AllowSubstringMatch(ref this, out allowSubstringMatch);
			public HRESULT get_CanCheckBaseClass(out BOOL canCheckBaseClass) mut => VT.get_CanCheckBaseClass(ref this, out canCheckBaseClass);
			public HRESULT get_NeedsAdviseEvents(out BOOL adviseEvents) mut => VT.get_NeedsAdviseEvents(ref this, out adviseEvents);
			public HRESULT put_ClassName(PWSTR className) mut => VT.put_ClassName(ref this, className);
			public HRESULT put_ImageName(PWSTR imageName) mut => VT.put_ImageName(ref this, imageName);
			public HRESULT put_AllowSubstringMatch(BOOL allowSubstringMatch) mut => VT.put_AllowSubstringMatch(ref this, allowSubstringMatch);
			public HRESULT put_CanCheckBaseClass(BOOL canCheckBaseClass) mut => VT.put_CanCheckBaseClass(ref this, canCheckBaseClass);
			public HRESULT put_NeedsAdviseEvents(BOOL adviseEvents) mut => VT.put_NeedsAdviseEvents(ref this, adviseEvents);
			public HRESULT SetWinEventsForAutomationEvent(int32 eventId, int32 propertyId, ref SAFEARRAY winEvents) mut => VT.SetWinEventsForAutomationEvent(ref this, eventId, propertyId, ref winEvents);
			public HRESULT GetWinEventsForAutomationEvent(int32 eventId, int32 propertyId, out SAFEARRAY* winEvents) mut => VT.GetWinEventsForAutomationEvent(ref this, eventId, propertyId, out winEvents);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out IUIAutomationProxyFactory* factory) get_ProxyFactory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out BSTR className) get_ClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out BSTR imageName) get_ImageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out BOOL allowSubstringMatch) get_AllowSubstringMatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out BOOL canCheckBaseClass) get_CanCheckBaseClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, out BOOL adviseEvents) get_NeedsAdviseEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, PWSTR className) put_ClassName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, PWSTR imageName) put_ImageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, BOOL allowSubstringMatch) put_AllowSubstringMatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, BOOL canCheckBaseClass) put_CanCheckBaseClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, BOOL adviseEvents) put_NeedsAdviseEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, int32 eventId, int32 propertyId, ref SAFEARRAY winEvents) SetWinEventsForAutomationEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryEntry self, int32 eventId, int32 propertyId, out SAFEARRAY* winEvents) GetWinEventsForAutomationEvent;
			}
		}
		[CRepr]
		public struct IUIAutomationProxyFactoryMapping : IUnknown
		{
			public const new Guid IID = .(0x09e31e18, 0x872d, 0x4873, 0x93, 0xd1, 0x1e, 0x54, 0x1e, 0xc1, 0x33, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out uint32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT GetTable(out SAFEARRAY* table) mut => VT.GetTable(ref this, out table);
			public HRESULT GetEntry(uint32 index, out IUIAutomationProxyFactoryEntry* entry) mut => VT.GetEntry(ref this, index, out entry);
			public HRESULT SetTable(ref SAFEARRAY factoryList) mut => VT.SetTable(ref this, ref factoryList);
			public HRESULT InsertEntries(uint32 before, ref SAFEARRAY factoryList) mut => VT.InsertEntries(ref this, before, ref factoryList);
			public HRESULT InsertEntry(uint32 before, ref IUIAutomationProxyFactoryEntry factory) mut => VT.InsertEntry(ref this, before, ref factory);
			public HRESULT RemoveEntry(uint32 index) mut => VT.RemoveEntry(ref this, index);
			public HRESULT ClearTable() mut => VT.ClearTable(ref this);
			public HRESULT RestoreDefaultTable() mut => VT.RestoreDefaultTable(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, out uint32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, out SAFEARRAY* table) GetTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, uint32 index, out IUIAutomationProxyFactoryEntry* entry) GetEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, ref SAFEARRAY factoryList) SetTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, uint32 before, ref SAFEARRAY factoryList) InsertEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, uint32 before, ref IUIAutomationProxyFactoryEntry factory) InsertEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self, uint32 index) RemoveEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self) ClearTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationProxyFactoryMapping self) RestoreDefaultTable;
			}
		}
		[CRepr]
		public struct IUIAutomationEventHandlerGroup : IUnknown
		{
			public const new Guid IID = .(0xc9ee12f2, 0xc13b, 0x4408, 0x99, 0x7c, 0x63, 0x99, 0x14, 0x37, 0x7f, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddActiveTextPositionChangedEventHandler(TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationActiveTextPositionChangedEventHandler handler) mut => VT.AddActiveTextPositionChangedEventHandler(ref this, @scope, ref cacheRequest, ref handler);
			public HRESULT AddAutomationEventHandler(int32 eventId, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationEventHandler handler) mut => VT.AddAutomationEventHandler(ref this, eventId, @scope, ref cacheRequest, ref handler);
			public HRESULT AddChangesEventHandler(TreeScope @scope, int32* changeTypes, int32 changesCount, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationChangesEventHandler handler) mut => VT.AddChangesEventHandler(ref this, @scope, changeTypes, changesCount, ref cacheRequest, ref handler);
			public HRESULT AddNotificationEventHandler(TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationNotificationEventHandler handler) mut => VT.AddNotificationEventHandler(ref this, @scope, ref cacheRequest, ref handler);
			public HRESULT AddPropertyChangedEventHandler(TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, int32* propertyArray, int32 propertyCount) mut => VT.AddPropertyChangedEventHandler(ref this, @scope, ref cacheRequest, ref handler, propertyArray, propertyCount);
			public HRESULT AddStructureChangedEventHandler(TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationStructureChangedEventHandler handler) mut => VT.AddStructureChangedEventHandler(ref this, @scope, ref cacheRequest, ref handler);
			public HRESULT AddTextEditTextChangedEventHandler(TreeScope @scope, TextEditChangeType textEditChangeType, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationTextEditTextChangedEventHandler handler) mut => VT.AddTextEditTextChangedEventHandler(ref this, @scope, textEditChangeType, ref cacheRequest, ref handler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationActiveTextPositionChangedEventHandler handler) AddActiveTextPositionChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, int32 eventId, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationEventHandler handler) AddAutomationEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, int32* changeTypes, int32 changesCount, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationChangesEventHandler handler) AddChangesEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationNotificationEventHandler handler) AddNotificationEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, int32* propertyArray, int32 propertyCount) AddPropertyChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationStructureChangedEventHandler handler) AddStructureChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomationEventHandlerGroup self, TreeScope @scope, TextEditChangeType textEditChangeType, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationTextEditTextChangedEventHandler handler) AddTextEditTextChangedEventHandler;
			}
		}
		[CRepr]
		public struct IUIAutomation : IUnknown
		{
			public const new Guid IID = .(0x30cbe57d, 0xd9d0, 0x452a, 0xab, 0x13, 0x7a, 0xc5, 0xac, 0x48, 0x25, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompareElements(ref IUIAutomationElement el1, ref IUIAutomationElement el2, out BOOL areSame) mut => VT.CompareElements(ref this, ref el1, ref el2, out areSame);
			public HRESULT CompareRuntimeIds(ref SAFEARRAY runtimeId1, ref SAFEARRAY runtimeId2, out BOOL areSame) mut => VT.CompareRuntimeIds(ref this, ref runtimeId1, ref runtimeId2, out areSame);
			public HRESULT GetRootElement(out IUIAutomationElement* root) mut => VT.GetRootElement(ref this, out root);
			public HRESULT ElementFromHandle(HWND hwnd, out IUIAutomationElement* element) mut => VT.ElementFromHandle(ref this, hwnd, out element);
			public HRESULT ElementFromPoint(POINT pt, out IUIAutomationElement* element) mut => VT.ElementFromPoint(ref this, pt, out element);
			public HRESULT GetFocusedElement(out IUIAutomationElement* element) mut => VT.GetFocusedElement(ref this, out element);
			public HRESULT GetRootElementBuildCache(ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* root) mut => VT.GetRootElementBuildCache(ref this, ref cacheRequest, out root);
			public HRESULT ElementFromHandleBuildCache(HWND hwnd, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) mut => VT.ElementFromHandleBuildCache(ref this, hwnd, ref cacheRequest, out element);
			public HRESULT ElementFromPointBuildCache(POINT pt, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) mut => VT.ElementFromPointBuildCache(ref this, pt, ref cacheRequest, out element);
			public HRESULT GetFocusedElementBuildCache(ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) mut => VT.GetFocusedElementBuildCache(ref this, ref cacheRequest, out element);
			public HRESULT CreateTreeWalker(ref IUIAutomationCondition pCondition, out IUIAutomationTreeWalker* walker) mut => VT.CreateTreeWalker(ref this, ref pCondition, out walker);
			public HRESULT get_ControlViewWalker(out IUIAutomationTreeWalker* walker) mut => VT.get_ControlViewWalker(ref this, out walker);
			public HRESULT get_ContentViewWalker(out IUIAutomationTreeWalker* walker) mut => VT.get_ContentViewWalker(ref this, out walker);
			public HRESULT get_RawViewWalker(out IUIAutomationTreeWalker* walker) mut => VT.get_RawViewWalker(ref this, out walker);
			public HRESULT get_RawViewCondition(out IUIAutomationCondition* condition) mut => VT.get_RawViewCondition(ref this, out condition);
			public HRESULT get_ControlViewCondition(out IUIAutomationCondition* condition) mut => VT.get_ControlViewCondition(ref this, out condition);
			public HRESULT get_ContentViewCondition(out IUIAutomationCondition* condition) mut => VT.get_ContentViewCondition(ref this, out condition);
			public HRESULT CreateCacheRequest(out IUIAutomationCacheRequest* cacheRequest) mut => VT.CreateCacheRequest(ref this, out cacheRequest);
			public HRESULT CreateTrueCondition(out IUIAutomationCondition* newCondition) mut => VT.CreateTrueCondition(ref this, out newCondition);
			public HRESULT CreateFalseCondition(out IUIAutomationCondition* newCondition) mut => VT.CreateFalseCondition(ref this, out newCondition);
			public HRESULT CreatePropertyCondition(int32 propertyId, VARIANT value, out IUIAutomationCondition* newCondition) mut => VT.CreatePropertyCondition(ref this, propertyId, value, out newCondition);
			public HRESULT CreatePropertyConditionEx(int32 propertyId, VARIANT value, PropertyConditionFlags flags, out IUIAutomationCondition* newCondition) mut => VT.CreatePropertyConditionEx(ref this, propertyId, value, flags, out newCondition);
			public HRESULT CreateAndCondition(ref IUIAutomationCondition condition1, ref IUIAutomationCondition condition2, out IUIAutomationCondition* newCondition) mut => VT.CreateAndCondition(ref this, ref condition1, ref condition2, out newCondition);
			public HRESULT CreateAndConditionFromArray(ref SAFEARRAY conditions, out IUIAutomationCondition* newCondition) mut => VT.CreateAndConditionFromArray(ref this, ref conditions, out newCondition);
			public HRESULT CreateAndConditionFromNativeArray(IUIAutomationCondition** conditions, int32 conditionCount, out IUIAutomationCondition* newCondition) mut => VT.CreateAndConditionFromNativeArray(ref this, conditions, conditionCount, out newCondition);
			public HRESULT CreateOrCondition(ref IUIAutomationCondition condition1, ref IUIAutomationCondition condition2, out IUIAutomationCondition* newCondition) mut => VT.CreateOrCondition(ref this, ref condition1, ref condition2, out newCondition);
			public HRESULT CreateOrConditionFromArray(ref SAFEARRAY conditions, out IUIAutomationCondition* newCondition) mut => VT.CreateOrConditionFromArray(ref this, ref conditions, out newCondition);
			public HRESULT CreateOrConditionFromNativeArray(IUIAutomationCondition** conditions, int32 conditionCount, out IUIAutomationCondition* newCondition) mut => VT.CreateOrConditionFromNativeArray(ref this, conditions, conditionCount, out newCondition);
			public HRESULT CreateNotCondition(ref IUIAutomationCondition condition, out IUIAutomationCondition* newCondition) mut => VT.CreateNotCondition(ref this, ref condition, out newCondition);
			public HRESULT AddAutomationEventHandler(int32 eventId, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationEventHandler handler) mut => VT.AddAutomationEventHandler(ref this, eventId, ref element, @scope, ref cacheRequest, ref handler);
			public HRESULT RemoveAutomationEventHandler(int32 eventId, ref IUIAutomationElement element, ref IUIAutomationEventHandler handler) mut => VT.RemoveAutomationEventHandler(ref this, eventId, ref element, ref handler);
			public HRESULT AddPropertyChangedEventHandlerNativeArray(ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, int32* propertyArray, int32 propertyCount) mut => VT.AddPropertyChangedEventHandlerNativeArray(ref this, ref element, @scope, ref cacheRequest, ref handler, propertyArray, propertyCount);
			public HRESULT AddPropertyChangedEventHandler(ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, ref SAFEARRAY propertyArray) mut => VT.AddPropertyChangedEventHandler(ref this, ref element, @scope, ref cacheRequest, ref handler, ref propertyArray);
			public HRESULT RemovePropertyChangedEventHandler(ref IUIAutomationElement element, ref IUIAutomationPropertyChangedEventHandler handler) mut => VT.RemovePropertyChangedEventHandler(ref this, ref element, ref handler);
			public HRESULT AddStructureChangedEventHandler(ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationStructureChangedEventHandler handler) mut => VT.AddStructureChangedEventHandler(ref this, ref element, @scope, ref cacheRequest, ref handler);
			public HRESULT RemoveStructureChangedEventHandler(ref IUIAutomationElement element, ref IUIAutomationStructureChangedEventHandler handler) mut => VT.RemoveStructureChangedEventHandler(ref this, ref element, ref handler);
			public HRESULT AddFocusChangedEventHandler(ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationFocusChangedEventHandler handler) mut => VT.AddFocusChangedEventHandler(ref this, ref cacheRequest, ref handler);
			public HRESULT RemoveFocusChangedEventHandler(ref IUIAutomationFocusChangedEventHandler handler) mut => VT.RemoveFocusChangedEventHandler(ref this, ref handler);
			public HRESULT RemoveAllEventHandlers() mut => VT.RemoveAllEventHandlers(ref this);
			public HRESULT IntNativeArrayToSafeArray(int32* array, int32 arrayCount, out SAFEARRAY* safeArray) mut => VT.IntNativeArrayToSafeArray(ref this, array, arrayCount, out safeArray);
			public HRESULT IntSafeArrayToNativeArray(ref SAFEARRAY intArray, int32** array, out int32 arrayCount) mut => VT.IntSafeArrayToNativeArray(ref this, ref intArray, array, out arrayCount);
			public HRESULT RectToVariant(RECT rc, out VARIANT @var) mut => VT.RectToVariant(ref this, rc, out @var);
			public HRESULT VariantToRect(VARIANT @var, out RECT rc) mut => VT.VariantToRect(ref this, @var, out rc);
			public HRESULT SafeArrayToRectNativeArray(ref SAFEARRAY rects, RECT** rectArray, out int32 rectArrayCount) mut => VT.SafeArrayToRectNativeArray(ref this, ref rects, rectArray, out rectArrayCount);
			public HRESULT CreateProxyFactoryEntry(ref IUIAutomationProxyFactory factory, out IUIAutomationProxyFactoryEntry* factoryEntry) mut => VT.CreateProxyFactoryEntry(ref this, ref factory, out factoryEntry);
			public HRESULT get_ProxyFactoryMapping(out IUIAutomationProxyFactoryMapping* factoryMapping) mut => VT.get_ProxyFactoryMapping(ref this, out factoryMapping);
			public HRESULT GetPropertyProgrammaticName(int32 property, out BSTR name) mut => VT.GetPropertyProgrammaticName(ref this, property, out name);
			public HRESULT GetPatternProgrammaticName(int32 pattern, out BSTR name) mut => VT.GetPatternProgrammaticName(ref this, pattern, out name);
			public HRESULT PollForPotentialSupportedPatterns(ref IUIAutomationElement pElement, out SAFEARRAY* patternIds, out SAFEARRAY* patternNames) mut => VT.PollForPotentialSupportedPatterns(ref this, ref pElement, out patternIds, out patternNames);
			public HRESULT PollForPotentialSupportedProperties(ref IUIAutomationElement pElement, out SAFEARRAY* propertyIds, out SAFEARRAY* propertyNames) mut => VT.PollForPotentialSupportedProperties(ref this, ref pElement, out propertyIds, out propertyNames);
			public HRESULT CheckNotSupported(VARIANT value, out BOOL isNotSupported) mut => VT.CheckNotSupported(ref this, value, out isNotSupported);
			public HRESULT get_ReservedNotSupportedValue(out IUnknown* notSupportedValue) mut => VT.get_ReservedNotSupportedValue(ref this, out notSupportedValue);
			public HRESULT get_ReservedMixedAttributeValue(out IUnknown* mixedAttributeValue) mut => VT.get_ReservedMixedAttributeValue(ref this, out mixedAttributeValue);
			public HRESULT ElementFromIAccessible(ref IAccessible accessible, int32 childId, out IUIAutomationElement* element) mut => VT.ElementFromIAccessible(ref this, ref accessible, childId, out element);
			public HRESULT ElementFromIAccessibleBuildCache(ref IAccessible accessible, int32 childId, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) mut => VT.ElementFromIAccessibleBuildCache(ref this, ref accessible, childId, ref cacheRequest, out element);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement el1, ref IUIAutomationElement el2, out BOOL areSame) CompareElements;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref SAFEARRAY runtimeId1, ref SAFEARRAY runtimeId2, out BOOL areSame) CompareRuntimeIds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationElement* root) GetRootElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, HWND hwnd, out IUIAutomationElement* element) ElementFromHandle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, POINT pt, out IUIAutomationElement* element) ElementFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationElement* element) GetFocusedElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* root) GetRootElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, HWND hwnd, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) ElementFromHandleBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, POINT pt, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) ElementFromPointBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) GetFocusedElementBuildCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCondition pCondition, out IUIAutomationTreeWalker* walker) CreateTreeWalker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationTreeWalker* walker) get_ControlViewWalker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationTreeWalker* walker) get_ContentViewWalker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationTreeWalker* walker) get_RawViewWalker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCondition* condition) get_RawViewCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCondition* condition) get_ControlViewCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCondition* condition) get_ContentViewCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCacheRequest* cacheRequest) CreateCacheRequest;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCondition* newCondition) CreateTrueCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationCondition* newCondition) CreateFalseCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 propertyId, VARIANT value, out IUIAutomationCondition* newCondition) CreatePropertyCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 propertyId, VARIANT value, PropertyConditionFlags flags, out IUIAutomationCondition* newCondition) CreatePropertyConditionEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCondition condition1, ref IUIAutomationCondition condition2, out IUIAutomationCondition* newCondition) CreateAndCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref SAFEARRAY conditions, out IUIAutomationCondition* newCondition) CreateAndConditionFromArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, IUIAutomationCondition** conditions, int32 conditionCount, out IUIAutomationCondition* newCondition) CreateAndConditionFromNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCondition condition1, ref IUIAutomationCondition condition2, out IUIAutomationCondition* newCondition) CreateOrCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref SAFEARRAY conditions, out IUIAutomationCondition* newCondition) CreateOrConditionFromArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, IUIAutomationCondition** conditions, int32 conditionCount, out IUIAutomationCondition* newCondition) CreateOrConditionFromNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCondition condition, out IUIAutomationCondition* newCondition) CreateNotCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 eventId, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationEventHandler handler) AddAutomationEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 eventId, ref IUIAutomationElement element, ref IUIAutomationEventHandler handler) RemoveAutomationEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, int32* propertyArray, int32 propertyCount) AddPropertyChangedEventHandlerNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationPropertyChangedEventHandler handler, ref SAFEARRAY propertyArray) AddPropertyChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement element, ref IUIAutomationPropertyChangedEventHandler handler) RemovePropertyChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationStructureChangedEventHandler handler) AddStructureChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement element, ref IUIAutomationStructureChangedEventHandler handler) RemoveStructureChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationFocusChangedEventHandler handler) AddFocusChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationFocusChangedEventHandler handler) RemoveFocusChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self) RemoveAllEventHandlers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32* array, int32 arrayCount, out SAFEARRAY* safeArray) IntNativeArrayToSafeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref SAFEARRAY intArray, int32** array, out int32 arrayCount) IntSafeArrayToNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, RECT rc, out VARIANT @var) RectToVariant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, VARIANT @var, out RECT rc) VariantToRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref SAFEARRAY rects, RECT** rectArray, out int32 rectArrayCount) SafeArrayToRectNativeArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationProxyFactory factory, out IUIAutomationProxyFactoryEntry* factoryEntry) CreateProxyFactoryEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUIAutomationProxyFactoryMapping* factoryMapping) get_ProxyFactoryMapping;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 property, out BSTR name) GetPropertyProgrammaticName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, int32 pattern, out BSTR name) GetPatternProgrammaticName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement pElement, out SAFEARRAY* patternIds, out SAFEARRAY* patternNames) PollForPotentialSupportedPatterns;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IUIAutomationElement pElement, out SAFEARRAY* propertyIds, out SAFEARRAY* propertyNames) PollForPotentialSupportedProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, VARIANT value, out BOOL isNotSupported) CheckNotSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUnknown* notSupportedValue) get_ReservedNotSupportedValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, out IUnknown* mixedAttributeValue) get_ReservedMixedAttributeValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IAccessible accessible, int32 childId, out IUIAutomationElement* element) ElementFromIAccessible;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation self, ref IAccessible accessible, int32 childId, ref IUIAutomationCacheRequest cacheRequest, out IUIAutomationElement* element) ElementFromIAccessibleBuildCache;
			}
		}
		[CRepr]
		public struct IUIAutomation2 : IUIAutomation
		{
			public const new Guid IID = .(0x34723aff, 0x0c9d, 0x49d0, 0x98, 0x96, 0x7a, 0xb5, 0x2d, 0xf8, 0xcd, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_AutoSetFocus(out BOOL autoSetFocus) mut => VT.get_AutoSetFocus(ref this, out autoSetFocus);
			public HRESULT put_AutoSetFocus(BOOL autoSetFocus) mut => VT.put_AutoSetFocus(ref this, autoSetFocus);
			public HRESULT get_ConnectionTimeout(out uint32 timeout) mut => VT.get_ConnectionTimeout(ref this, out timeout);
			public HRESULT put_ConnectionTimeout(uint32 timeout) mut => VT.put_ConnectionTimeout(ref this, timeout);
			public HRESULT get_TransactionTimeout(out uint32 timeout) mut => VT.get_TransactionTimeout(ref this, out timeout);
			public HRESULT put_TransactionTimeout(uint32 timeout) mut => VT.put_TransactionTimeout(ref this, timeout);

			[CRepr]
			public struct VTable : IUIAutomation.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, out BOOL autoSetFocus) get_AutoSetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, BOOL autoSetFocus) put_AutoSetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, out uint32 timeout) get_ConnectionTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, uint32 timeout) put_ConnectionTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, out uint32 timeout) get_TransactionTimeout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation2 self, uint32 timeout) put_TransactionTimeout;
			}
		}
		[CRepr]
		public struct IUIAutomation3 : IUIAutomation2
		{
			public const new Guid IID = .(0x73d768da, 0x9b51, 0x4b89, 0x93, 0x6e, 0xc2, 0x09, 0x29, 0x09, 0x73, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTextEditTextChangedEventHandler(ref IUIAutomationElement element, TreeScope @scope, TextEditChangeType textEditChangeType, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationTextEditTextChangedEventHandler handler) mut => VT.AddTextEditTextChangedEventHandler(ref this, ref element, @scope, textEditChangeType, ref cacheRequest, ref handler);
			public HRESULT RemoveTextEditTextChangedEventHandler(ref IUIAutomationElement element, ref IUIAutomationTextEditTextChangedEventHandler handler) mut => VT.RemoveTextEditTextChangedEventHandler(ref this, ref element, ref handler);

			[CRepr]
			public struct VTable : IUIAutomation2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation3 self, ref IUIAutomationElement element, TreeScope @scope, TextEditChangeType textEditChangeType, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationTextEditTextChangedEventHandler handler) AddTextEditTextChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation3 self, ref IUIAutomationElement element, ref IUIAutomationTextEditTextChangedEventHandler handler) RemoveTextEditTextChangedEventHandler;
			}
		}
		[CRepr]
		public struct IUIAutomation4 : IUIAutomation3
		{
			public const new Guid IID = .(0x1189c02a, 0x05f8, 0x4319, 0x8e, 0x21, 0xe8, 0x17, 0xe3, 0xdb, 0x28, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddChangesEventHandler(ref IUIAutomationElement element, TreeScope @scope, int32* changeTypes, int32 changesCount, ref IUIAutomationCacheRequest pCacheRequest, ref IUIAutomationChangesEventHandler handler) mut => VT.AddChangesEventHandler(ref this, ref element, @scope, changeTypes, changesCount, ref pCacheRequest, ref handler);
			public HRESULT RemoveChangesEventHandler(ref IUIAutomationElement element, ref IUIAutomationChangesEventHandler handler) mut => VT.RemoveChangesEventHandler(ref this, ref element, ref handler);

			[CRepr]
			public struct VTable : IUIAutomation3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation4 self, ref IUIAutomationElement element, TreeScope @scope, int32* changeTypes, int32 changesCount, ref IUIAutomationCacheRequest pCacheRequest, ref IUIAutomationChangesEventHandler handler) AddChangesEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation4 self, ref IUIAutomationElement element, ref IUIAutomationChangesEventHandler handler) RemoveChangesEventHandler;
			}
		}
		[CRepr]
		public struct IUIAutomation5 : IUIAutomation4
		{
			public const new Guid IID = .(0x25f700c8, 0xd816, 0x4057, 0xa9, 0xdc, 0x3c, 0xbd, 0xee, 0x77, 0xe2, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddNotificationEventHandler(ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationNotificationEventHandler handler) mut => VT.AddNotificationEventHandler(ref this, ref element, @scope, ref cacheRequest, ref handler);
			public HRESULT RemoveNotificationEventHandler(ref IUIAutomationElement element, ref IUIAutomationNotificationEventHandler handler) mut => VT.RemoveNotificationEventHandler(ref this, ref element, ref handler);

			[CRepr]
			public struct VTable : IUIAutomation4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation5 self, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationNotificationEventHandler handler) AddNotificationEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation5 self, ref IUIAutomationElement element, ref IUIAutomationNotificationEventHandler handler) RemoveNotificationEventHandler;
			}
		}
		[CRepr]
		public struct IUIAutomation6 : IUIAutomation5
		{
			public const new Guid IID = .(0xaae072da, 0x29e3, 0x413d, 0x87, 0xa7, 0x19, 0x2d, 0xbf, 0x81, 0xed, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEventHandlerGroup(out IUIAutomationEventHandlerGroup* handlerGroup) mut => VT.CreateEventHandlerGroup(ref this, out handlerGroup);
			public HRESULT AddEventHandlerGroup(ref IUIAutomationElement element, ref IUIAutomationEventHandlerGroup handlerGroup) mut => VT.AddEventHandlerGroup(ref this, ref element, ref handlerGroup);
			public HRESULT RemoveEventHandlerGroup(ref IUIAutomationElement element, ref IUIAutomationEventHandlerGroup handlerGroup) mut => VT.RemoveEventHandlerGroup(ref this, ref element, ref handlerGroup);
			public HRESULT get_ConnectionRecoveryBehavior(out ConnectionRecoveryBehaviorOptions connectionRecoveryBehaviorOptions) mut => VT.get_ConnectionRecoveryBehavior(ref this, out connectionRecoveryBehaviorOptions);
			public HRESULT put_ConnectionRecoveryBehavior(ConnectionRecoveryBehaviorOptions connectionRecoveryBehaviorOptions) mut => VT.put_ConnectionRecoveryBehavior(ref this, connectionRecoveryBehaviorOptions);
			public HRESULT get_CoalesceEvents(out CoalesceEventsOptions coalesceEventsOptions) mut => VT.get_CoalesceEvents(ref this, out coalesceEventsOptions);
			public HRESULT put_CoalesceEvents(CoalesceEventsOptions coalesceEventsOptions) mut => VT.put_CoalesceEvents(ref this, coalesceEventsOptions);
			public HRESULT AddActiveTextPositionChangedEventHandler(ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationActiveTextPositionChangedEventHandler handler) mut => VT.AddActiveTextPositionChangedEventHandler(ref this, ref element, @scope, ref cacheRequest, ref handler);
			public HRESULT RemoveActiveTextPositionChangedEventHandler(ref IUIAutomationElement element, ref IUIAutomationActiveTextPositionChangedEventHandler handler) mut => VT.RemoveActiveTextPositionChangedEventHandler(ref this, ref element, ref handler);

			[CRepr]
			public struct VTable : IUIAutomation5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, out IUIAutomationEventHandlerGroup* handlerGroup) CreateEventHandlerGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, ref IUIAutomationElement element, ref IUIAutomationEventHandlerGroup handlerGroup) AddEventHandlerGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, ref IUIAutomationElement element, ref IUIAutomationEventHandlerGroup handlerGroup) RemoveEventHandlerGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, out ConnectionRecoveryBehaviorOptions connectionRecoveryBehaviorOptions) get_ConnectionRecoveryBehavior;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, ConnectionRecoveryBehaviorOptions connectionRecoveryBehaviorOptions) put_ConnectionRecoveryBehavior;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, out CoalesceEventsOptions coalesceEventsOptions) get_CoalesceEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, CoalesceEventsOptions coalesceEventsOptions) put_CoalesceEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, ref IUIAutomationElement element, TreeScope @scope, ref IUIAutomationCacheRequest cacheRequest, ref IUIAutomationActiveTextPositionChangedEventHandler handler) AddActiveTextPositionChangedEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAutomation6 self, ref IUIAutomationElement element, ref IUIAutomationActiveTextPositionChangedEventHandler handler) RemoveActiveTextPositionChangedEventHandler;
			}
		}
		
		// --- Functions ---
		
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT LresultFromObject(in Guid riid, WPARAM wParam, ref IUnknown punk);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ObjectFromLresult(LRESULT lResult, in Guid riid, WPARAM wParam, void** ppvObject);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowFromAccessibleObject(ref IAccessible param0, HWND* phwnd);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccessibleObjectFromWindow(HWND hwnd, uint32 dwId, in Guid riid, void** ppvObject);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccessibleObjectFromEvent(HWND hwnd, uint32 dwId, uint32 dwChildId, out IAccessible* ppacc, out VARIANT pvarChild);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccessibleObjectFromPoint(POINT ptScreen, out IAccessible* ppacc, out VARIANT pvarChild);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccessibleChildren(ref IAccessible paccContainer, int32 iChildStart, int32 cChildren, VARIANT* rgvarChildren, out int32 pcObtained);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRoleTextA(uint32 lRole, uint8* lpszRole, uint32 cchRoleMax);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetRoleTextW(uint32 lRole, char16* lpszRole, uint32 cchRoleMax);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetStateTextA(uint32 lStateBit, uint8* lpszState, uint32 cchState);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetStateTextW(uint32 lStateBit, char16* lpszState, uint32 cchState);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void GetOleaccVersionInfo(out uint32 pVer, out uint32 pBuild);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdAccessibleObject(HWND hwnd, int32 idObject, in Guid riid, void** ppvObject);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdAccessibleProxyA(HWND hwnd, PSTR pClassName, int32 idObject, in Guid riid, void** ppvObject);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStdAccessibleProxyW(HWND hwnd, PWSTR pClassName, int32 idObject, in Guid riid, void** ppvObject);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccSetRunningUtilityState(HWND hwndApp, uint32 dwUtilityStateMask, ACC_UTILITY_STATE_FLAGS dwUtilityState);
		[Import("oleacc.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AccNotifyTouchInteraction(HWND hwndApp, HWND hwndTarget, POINT ptTarget);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaGetErrorDescription(out BSTR pDescription);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaHUiaNodeFromVariant(out VARIANT pvar, out HUIANODE phnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaHPatternObjectFromVariant(out VARIANT pvar, out HUIAPATTERNOBJECT phobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaHTextRangeFromVariant(out VARIANT pvar, out HUIATEXTRANGE phtextrange);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaNodeRelease(HUIANODE hnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetPropertyValue(HUIANODE hnode, int32 propertyId, out VARIANT pValue);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetPatternProvider(HUIANODE hnode, int32 patternId, out HUIAPATTERNOBJECT phobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetRuntimeId(HUIANODE hnode, out SAFEARRAY* pruntimeId);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaSetFocus(HUIANODE hnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaNavigate(HUIANODE hnode, NavigateDirection direction, out UiaCondition pCondition, out UiaCacheRequest pRequest, out SAFEARRAY* ppRequestedData, out BSTR ppTreeStructure);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetUpdatedCache(HUIANODE hnode, out UiaCacheRequest pRequest, NormalizeState normalizeState, out UiaCondition pNormalizeCondition, out SAFEARRAY* ppRequestedData, out BSTR ppTreeStructure);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaFind(HUIANODE hnode, out UiaFindParams pParams, out UiaCacheRequest pRequest, out SAFEARRAY* ppRequestedData, out SAFEARRAY* ppOffsets, out SAFEARRAY* ppTreeStructures);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaNodeFromPoint(double x, double y, out UiaCacheRequest pRequest, out SAFEARRAY* ppRequestedData, out BSTR ppTreeStructure);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaNodeFromFocus(out UiaCacheRequest pRequest, out SAFEARRAY* ppRequestedData, out BSTR ppTreeStructure);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaNodeFromHandle(HWND hwnd, out HUIANODE phnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaNodeFromProvider(ref IRawElementProviderSimple pProvider, out HUIANODE phnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetRootNode(out HUIANODE phnode);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void UiaRegisterProviderCallback(out UiaProviderCallback pCallback);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UiaLookupId(AutomationIdentifierType type, in Guid pGuid);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetReservedNotSupportedValue(out IUnknown* punkNotSupportedValue);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaGetReservedMixedAttributeValue(out IUnknown* punkMixedAttributeValue);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaClientsAreListening();
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseAutomationPropertyChangedEvent(ref IRawElementProviderSimple pProvider, int32 id, VARIANT oldValue, VARIANT newValue);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseAutomationEvent(ref IRawElementProviderSimple pProvider, int32 id);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseStructureChangedEvent(ref IRawElementProviderSimple pProvider, StructureChangeType structureChangeType, out int32 pRuntimeId, int32 cRuntimeIdLen);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseAsyncContentLoadedEvent(ref IRawElementProviderSimple pProvider, AsyncContentLoadedState asyncContentLoadedState, double percentComplete);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseTextEditTextChangedEvent(ref IRawElementProviderSimple pProvider, TextEditChangeType textEditChangeType, out SAFEARRAY pChangedData);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseChangesEvent(ref IRawElementProviderSimple pProvider, int32 eventIdCount, out UiaChangeInfo pUiaChanges);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseNotificationEvent(ref IRawElementProviderSimple provider, NotificationKind notificationKind, NotificationProcessing notificationProcessing, BSTR displayString, BSTR activityId);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRaiseActiveTextPositionChangedEvent(ref IRawElementProviderSimple provider, ITextRangeProvider* textRange);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaAddEvent(HUIANODE hnode, int32 eventId, out UiaEventCallback pCallback, TreeScope @scope, out int32 pProperties, int32 cProperties, out UiaCacheRequest pRequest, out HUIAEVENT phEvent);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaRemoveEvent(HUIAEVENT hEvent);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaEventAddWindow(HUIAEVENT hEvent, HWND hwnd);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaEventRemoveWindow(HUIAEVENT hEvent, HWND hwnd);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DockPattern_SetDockPosition(HUIAPATTERNOBJECT hobj, DockPosition dockPosition);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ExpandCollapsePattern_Collapse(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ExpandCollapsePattern_Expand(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GridPattern_GetItem(HUIAPATTERNOBJECT hobj, int32 row, int32 column, out HUIANODE pResult);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InvokePattern_Invoke(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MultipleViewPattern_GetViewName(HUIAPATTERNOBJECT hobj, int32 viewId, out BSTR ppStr);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MultipleViewPattern_SetCurrentView(HUIAPATTERNOBJECT hobj, int32 viewId);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RangeValuePattern_SetValue(HUIAPATTERNOBJECT hobj, double val);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ScrollItemPattern_ScrollIntoView(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ScrollPattern_Scroll(HUIAPATTERNOBJECT hobj, ScrollAmount horizontalAmount, ScrollAmount verticalAmount);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ScrollPattern_SetScrollPercent(HUIAPATTERNOBJECT hobj, double horizontalPercent, double verticalPercent);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SelectionItemPattern_AddToSelection(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SelectionItemPattern_RemoveFromSelection(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SelectionItemPattern_Select(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TogglePattern_Toggle(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TransformPattern_Move(HUIAPATTERNOBJECT hobj, double x, double y);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TransformPattern_Resize(HUIAPATTERNOBJECT hobj, double width, double height);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TransformPattern_Rotate(HUIAPATTERNOBJECT hobj, double degrees);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ValuePattern_SetValue(HUIAPATTERNOBJECT hobj, PWSTR pVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowPattern_Close(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowPattern_SetWindowVisualState(HUIAPATTERNOBJECT hobj, WindowVisualState state);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowPattern_WaitForInputIdle(HUIAPATTERNOBJECT hobj, int32 milliseconds, out BOOL pResult);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_GetSelection(HUIAPATTERNOBJECT hobj, out SAFEARRAY* pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_GetVisibleRanges(HUIAPATTERNOBJECT hobj, out SAFEARRAY* pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_RangeFromChild(HUIAPATTERNOBJECT hobj, HUIANODE hnodeChild, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_RangeFromPoint(HUIAPATTERNOBJECT hobj, UiaPoint point, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_get_DocumentRange(HUIAPATTERNOBJECT hobj, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextPattern_get_SupportedTextSelection(HUIAPATTERNOBJECT hobj, out SupportedTextSelection pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_Clone(HUIATEXTRANGE hobj, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_Compare(HUIATEXTRANGE hobj, HUIATEXTRANGE range, out BOOL pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_CompareEndpoints(HUIATEXTRANGE hobj, TextPatternRangeEndpoint endpoint, HUIATEXTRANGE targetRange, TextPatternRangeEndpoint targetEndpoint, out int32 pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_ExpandToEnclosingUnit(HUIATEXTRANGE hobj, TextUnit unit);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_GetAttributeValue(HUIATEXTRANGE hobj, int32 attributeId, out VARIANT pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_FindAttribute(HUIATEXTRANGE hobj, int32 attributeId, VARIANT val, BOOL backward, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_FindText(HUIATEXTRANGE hobj, BSTR text, BOOL backward, BOOL ignoreCase, out HUIATEXTRANGE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_GetBoundingRectangles(HUIATEXTRANGE hobj, out SAFEARRAY* pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_GetEnclosingElement(HUIATEXTRANGE hobj, out HUIANODE pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_GetText(HUIATEXTRANGE hobj, int32 maxLength, out BSTR pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_Move(HUIATEXTRANGE hobj, TextUnit unit, int32 count, out int32 pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_MoveEndpointByUnit(HUIATEXTRANGE hobj, TextPatternRangeEndpoint endpoint, TextUnit unit, int32 count, out int32 pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_MoveEndpointByRange(HUIATEXTRANGE hobj, TextPatternRangeEndpoint endpoint, HUIATEXTRANGE targetRange, TextPatternRangeEndpoint targetEndpoint);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_Select(HUIATEXTRANGE hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_AddToSelection(HUIATEXTRANGE hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_RemoveFromSelection(HUIATEXTRANGE hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_ScrollIntoView(HUIATEXTRANGE hobj, BOOL alignToTop);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT TextRange_GetChildren(HUIATEXTRANGE hobj, out SAFEARRAY* pRetVal);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ItemContainerPattern_FindItemByProperty(HUIAPATTERNOBJECT hobj, HUIANODE hnodeStartAfter, int32 propertyId, VARIANT value, out HUIANODE pFound);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LegacyIAccessiblePattern_Select(HUIAPATTERNOBJECT hobj, int32 flagsSelect);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LegacyIAccessiblePattern_DoDefaultAction(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LegacyIAccessiblePattern_SetValue(HUIAPATTERNOBJECT hobj, PWSTR szValue);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT LegacyIAccessiblePattern_GetIAccessible(HUIAPATTERNOBJECT hobj, out IAccessible* pAccessible);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SynchronizedInputPattern_StartListening(HUIAPATTERNOBJECT hobj, SynchronizedInputType inputType);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SynchronizedInputPattern_Cancel(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT VirtualizedItemPattern_Realize(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaPatternRelease(HUIAPATTERNOBJECT hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaTextRangeRelease(HUIATEXTRANGE hobj);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT UiaReturnRawElementProvider(HWND hwnd, WPARAM wParam, LPARAM lParam, ref IRawElementProviderSimple el);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaHostProviderFromHwnd(HWND hwnd, out IRawElementProviderSimple* ppProvider);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaProviderForNonClient(HWND hwnd, int32 idObject, int32 idChild, out IRawElementProviderSimple* ppProvider);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaIAccessibleFromProvider(ref IRawElementProviderSimple pProvider, uint32 dwFlags, out IAccessible* ppAccessible, out VARIANT pvarChild);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaProviderFromIAccessible(ref IAccessible pAccessible, int32 idChild, uint32 dwFlags, out IRawElementProviderSimple* ppProvider);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaDisconnectAllProviders();
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UiaDisconnectProvider(ref IRawElementProviderSimple pProvider);
		[Import("uiautomationcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UiaHasServerSideProvider(HWND hwnd);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterPointerInputTarget(HWND hwnd, POINTER_INPUT_TYPE pointerType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterPointerInputTarget(HWND hwnd, POINTER_INPUT_TYPE pointerType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterPointerInputTargetEx(HWND hwnd, POINTER_INPUT_TYPE pointerType, BOOL fObserve);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterPointerInputTargetEx(HWND hwnd, POINTER_INPUT_TYPE pointerType);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void NotifyWinEvent(uint32 event, HWND hwnd, int32 idObject, int32 idChild);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HWINEVENTHOOK SetWinEventHook(uint32 eventMin, uint32 eventMax, HINSTANCE hmodWinEventProc, WINEVENTPROC pfnWinEventProc, uint32 idProcess, uint32 idThread, uint32 dwFlags);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsWinEventHookInstalled(uint32 event);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnhookWinEvent(HWINEVENTHOOK hWinEventHook);
	}
}
