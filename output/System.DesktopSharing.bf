using System;

// namespace System.DesktopSharing
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DISPID_RDPSRAPI_METHOD_OPEN = 100;
		public const uint32 DISPID_RDPSRAPI_METHOD_CLOSE = 101;
		public const uint32 DISPID_RDPSRAPI_METHOD_SETSHAREDRECT = 102;
		public const uint32 DISPID_RDPSRAPI_METHOD_GETSHAREDRECT = 103;
		public const uint32 DISPID_RDPSRAPI_METHOD_VIEWERCONNECT = 104;
		public const uint32 DISPID_RDPSRAPI_METHOD_VIEWERDISCONNECT = 105;
		public const uint32 DISPID_RDPSRAPI_METHOD_TERMINATE_CONNECTION = 106;
		public const uint32 DISPID_RDPSRAPI_METHOD_CREATE_INVITATION = 107;
		public const uint32 DISPID_RDPSRAPI_METHOD_REQUEST_CONTROL = 108;
		public const uint32 DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_CREATE = 109;
		public const uint32 DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SEND_DATA = 110;
		public const uint32 DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SET_ACCESS = 111;
		public const uint32 DISPID_RDPSRAPI_METHOD_PAUSE = 112;
		public const uint32 DISPID_RDPSRAPI_METHOD_RESUME = 113;
		public const uint32 DISPID_RDPSRAPI_METHOD_SHOW_WINDOW = 114;
		public const uint32 DISPID_RDPSRAPI_METHOD_REQUEST_COLOR_DEPTH_CHANGE = 115;
		public const uint32 DISPID_RDPSRAPI_METHOD_STARTREVCONNECTLISTENER = 116;
		public const uint32 DISPID_RDPSRAPI_METHOD_CONNECTTOCLIENT = 117;
		public const uint32 DISPID_RDPSRAPI_METHOD_SET_RENDERING_SURFACE = 118;
		public const uint32 DISPID_RDPSRAPI_METHOD_SEND_MOUSE_BUTTON_EVENT = 119;
		public const uint32 DISPID_RDPSRAPI_METHOD_SEND_MOUSE_MOVE_EVENT = 120;
		public const uint32 DISPID_RDPSRAPI_METHOD_SEND_MOUSE_WHEEL_EVENT = 121;
		public const uint32 DISPID_RDPSRAPI_METHOD_SEND_KEYBOARD_EVENT = 122;
		public const uint32 DISPID_RDPSRAPI_METHOD_SEND_SYNC_EVENT = 123;
		public const uint32 DISPID_RDPSRAPI_METHOD_BEGIN_TOUCH_FRAME = 124;
		public const uint32 DISPID_RDPSRAPI_METHOD_ADD_TOUCH_INPUT = 125;
		public const uint32 DISPID_RDPSRAPI_METHOD_END_TOUCH_FRAME = 126;
		public const uint32 DISPID_RDPSRAPI_METHOD_CONNECTUSINGTRANSPORTSTREAM = 127;
		public const uint32 DISPID_RDPSRAPI_METHOD_SENDCONTROLLEVELCHANGERESPONSE = 148;
		public const uint32 DISPID_RDPSRAPI_METHOD_GETFRAMEBUFFERBITS = 149;
		public const uint32 DISPID_RDPSRAPI_PROP_DISPIDVALUE = 200;
		public const uint32 DISPID_RDPSRAPI_PROP_ID = 201;
		public const uint32 DISPID_RDPSRAPI_PROP_SESSION_PROPERTIES = 202;
		public const uint32 DISPID_RDPSRAPI_PROP_ATTENDEES = 203;
		public const uint32 DISPID_RDPSRAPI_PROP_INVITATIONS = 204;
		public const uint32 DISPID_RDPSRAPI_PROP_INVITATION = 205;
		public const uint32 DISPID_RDPSRAPI_PROP_CHANNELMANAGER = 206;
		public const uint32 DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETNAME = 207;
		public const uint32 DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETFLAGS = 208;
		public const uint32 DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETPRIORITY = 209;
		public const uint32 DISPID_RDPSRAPI_PROP_WINDOWID = 210;
		public const uint32 DISPID_RDPSRAPI_PROP_APPLICATION = 211;
		public const uint32 DISPID_RDPSRAPI_PROP_WINDOWSHARED = 212;
		public const uint32 DISPID_RDPSRAPI_PROP_WINDOWNAME = 213;
		public const uint32 DISPID_RDPSRAPI_PROP_APPNAME = 214;
		public const uint32 DISPID_RDPSRAPI_PROP_APPLICATION_FILTER = 215;
		public const uint32 DISPID_RDPSRAPI_PROP_WINDOW_LIST = 216;
		public const uint32 DISPID_RDPSRAPI_PROP_APPLICATION_LIST = 217;
		public const uint32 DISPID_RDPSRAPI_PROP_APPFILTER_ENABLED = 218;
		public const uint32 DISPID_RDPSRAPI_PROP_APPFILTERENABLED = 219;
		public const uint32 DISPID_RDPSRAPI_PROP_SHARED = 220;
		public const uint32 DISPID_RDPSRAPI_PROP_INVITATIONITEM = 221;
		public const uint32 DISPID_RDPSRAPI_PROP_DBG_CLX_CMDLINE = 222;
		public const uint32 DISPID_RDPSRAPI_PROP_APPFLAGS = 223;
		public const uint32 DISPID_RDPSRAPI_PROP_WNDFLAGS = 224;
		public const uint32 DISPID_RDPSRAPI_PROP_PROTOCOL_TYPE = 225;
		public const uint32 DISPID_RDPSRAPI_PROP_LOCAL_PORT = 226;
		public const uint32 DISPID_RDPSRAPI_PROP_LOCAL_IP = 227;
		public const uint32 DISPID_RDPSRAPI_PROP_PEER_PORT = 228;
		public const uint32 DISPID_RDPSRAPI_PROP_PEER_IP = 229;
		public const uint32 DISPID_RDPSRAPI_PROP_ATTENDEE_FLAGS = 230;
		public const uint32 DISPID_RDPSRAPI_PROP_CONINFO = 231;
		public const uint32 DISPID_RDPSRAPI_PROP_CONNECTION_STRING = 232;
		public const uint32 DISPID_RDPSRAPI_PROP_GROUP_NAME = 233;
		public const uint32 DISPID_RDPSRAPI_PROP_PASSWORD = 234;
		public const uint32 DISPID_RDPSRAPI_PROP_ATTENDEELIMIT = 235;
		public const uint32 DISPID_RDPSRAPI_PROP_REVOKED = 236;
		public const uint32 DISPID_RDPSRAPI_PROP_DISCONNECTED_STRING = 237;
		public const uint32 DISPID_RDPSRAPI_PROP_USESMARTSIZING = 238;
		public const uint32 DISPID_RDPSRAPI_PROP_SESSION_COLORDEPTH = 239;
		public const uint32 DISPID_RDPSRAPI_PROP_REASON = 240;
		public const uint32 DISPID_RDPSRAPI_PROP_CODE = 241;
		public const uint32 DISPID_RDPSRAPI_PROP_CTRL_LEVEL = 242;
		public const uint32 DISPID_RDPSRAPI_PROP_REMOTENAME = 243;
		public const uint32 DISPID_RDPSRAPI_PROP_COUNT = 244;
		public const uint32 DISPID_RDPSRAPI_PROP_FRAMEBUFFER_HEIGHT = 251;
		public const uint32 DISPID_RDPSRAPI_PROP_FRAMEBUFFER_WIDTH = 252;
		public const uint32 DISPID_RDPSRAPI_PROP_FRAMEBUFFER_BPP = 253;
		public const uint32 DISPID_RDPSRAPI_PROP_FRAMEBUFFER = 254;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_CONNECTED = 301;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_DISCONNECTED = 302;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_UPDATE = 303;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_ERROR = 304;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTED = 305;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIEWER_DISCONNECTED = 306;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIEWER_AUTHENTICATED = 307;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTFAILED = 308;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_CTRLLEVEL_CHANGE_REQUEST = 309;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_PAUSED = 310;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_RESUMED = 311;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_JOIN = 312;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_LEAVE = 313;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_DATARECEIVED = 314;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_SENDCOMPLETED = 315;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_APPLICATION_OPEN = 316;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_APPLICATION_CLOSE = 317;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_APPLICATION_UPDATE = 318;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_WINDOW_OPEN = 319;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_WINDOW_CLOSE = 320;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_WINDOW_UPDATE = 321;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_APPFILTER_UPDATE = 322;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_SHARED_RECT_CHANGED = 323;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_FOCUSRELEASED = 324;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_SHARED_DESKTOP_SETTINGS_CHANGED = 325;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_CTRLLEVEL_CHANGE_RESPONSE = 338;
		public const uint32 DISPID_RDPAPI_EVENT_ON_BOUNDING_RECT_CHANGED = 340;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAM_ALLOCBUFFER = 421;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAM_FREEBUFFER = 422;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAMSENDDATA = 423;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAMREADDATA = 424;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAMOPEN = 425;
		public const uint32 DISPID_RDPSRAPI_METHOD_STREAMCLOSE = 426;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_STORAGE = 555;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_PAYLOADSIZE = 558;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_PAYLOADOFFSET = 559;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_CONTEXT = 560;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_FLAGS = 561;
		public const uint32 DISPID_RDPSRAPI_PROP_STREAMBUFFER_STORESIZE = 562;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_STREAM_SENDCOMPLETED = 632;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_STREAM_DATARECEIVED = 633;
		public const uint32 DISPID_RDPSRAPI_EVENT_ON_STREAM_CLOSED = 634;
		public const uint32 DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_BUTTON_RECEIVED = 700;
		public const uint32 DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_MOVE_RECEIVED = 701;
		public const uint32 DISPID_RDPSRAPI_EVENT_VIEW_MOUSE_WHEEL_RECEIVED = 702;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CTRL_LEVEL : int32
		{
			CTRL_LEVEL_MIN = 0,
			CTRL_LEVEL_INVALID = 0,
			CTRL_LEVEL_NONE = 1,
			CTRL_LEVEL_VIEW = 2,
			CTRL_LEVEL_INTERACTIVE = 3,
			CTRL_LEVEL_REQCTRL_VIEW = 4,
			CTRL_LEVEL_REQCTRL_INTERACTIVE = 5,
			CTRL_LEVEL_MAX = 5,
		}
		[AllowDuplicates]
		public enum ATTENDEE_DISCONNECT_REASON : int32
		{
			ATTENDEE_DISCONNECT_REASON_MIN = 0,
			ATTENDEE_DISCONNECT_REASON_APP = 0,
			ATTENDEE_DISCONNECT_REASON_ERR = 1,
			ATTENDEE_DISCONNECT_REASON_CLI = 2,
			ATTENDEE_DISCONNECT_REASON_MAX = 2,
		}
		[AllowDuplicates]
		public enum CHANNEL_PRIORITY : int32
		{
			CHANNEL_PRIORITY_LO = 0,
			CHANNEL_PRIORITY_MED = 1,
			CHANNEL_PRIORITY_HI = 2,
		}
		[AllowDuplicates]
		public enum CHANNEL_FLAGS : int32
		{
			CHANNEL_FLAGS_LEGACY = 1,
			CHANNEL_FLAGS_UNCOMPRESSED = 2,
			CHANNEL_FLAGS_DYNAMIC = 4,
		}
		[AllowDuplicates]
		public enum CHANNEL_ACCESS_ENUM : int32
		{
			CHANNEL_ACCESS_ENUM_NONE = 0,
			CHANNEL_ACCESS_ENUM_SENDRECEIVE = 1,
		}
		[AllowDuplicates]
		public enum RDPENCOMAPI_ATTENDEE_FLAGS : int32
		{
			ATTENDEE_FLAGS_LOCAL = 1,
		}
		[AllowDuplicates]
		public enum RDPSRAPI_WND_FLAGS : int32
		{
			WND_FLAG_PRIVILEGED = 1,
		}
		[AllowDuplicates]
		public enum RDPSRAPI_APP_FLAGS : int32
		{
			APP_FLAG_PRIVILEGED = 1,
		}
		[AllowDuplicates]
		public enum RDPSRAPI_MOUSE_BUTTON_TYPE : int32
		{
			RDPSRAPI_MOUSE_BUTTON_BUTTON1 = 0,
			RDPSRAPI_MOUSE_BUTTON_BUTTON2 = 1,
			RDPSRAPI_MOUSE_BUTTON_BUTTON3 = 2,
			RDPSRAPI_MOUSE_BUTTON_XBUTTON1 = 3,
			RDPSRAPI_MOUSE_BUTTON_XBUTTON2 = 4,
			RDPSRAPI_MOUSE_BUTTON_XBUTTON3 = 5,
		}
		[AllowDuplicates]
		public enum RDPSRAPI_KBD_CODE_TYPE : int32
		{
			RDPSRAPI_KBD_CODE_SCANCODE = 0,
			RDPSRAPI_KBD_CODE_UNICODE = 1,
		}
		[AllowDuplicates]
		public enum RDPSRAPI_KBD_SYNC_FLAG : int32
		{
			RDPSRAPI_KBD_SYNC_FLAG_SCROLL_LOCK = 1,
			RDPSRAPI_KBD_SYNC_FLAG_NUM_LOCK = 2,
			RDPSRAPI_KBD_SYNC_FLAG_CAPS_LOCK = 4,
			RDPSRAPI_KBD_SYNC_FLAG_KANA_LOCK = 8,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_rdpencomapi_0000_0027_0001 : int32
		{
			CONST_MAX_CHANNEL_MESSAGE_SIZE = 1024,
			CONST_MAX_CHANNEL_NAME_LEN = 8,
			CONST_MAX_LEGACY_CHANNEL_MESSAGE_SIZE = 409600,
			CONST_ATTENDEE_ID_EVERYONE = -1,
			CONST_ATTENDEE_ID_HOST = 0,
			CONST_CONN_INTERVAL = 50,
			CONST_ATTENDEE_ID_DEFAULT = -1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct __ReferenceRemainingTypes__
		{
			public CTRL_LEVEL __ctrlLevel__;
			public ATTENDEE_DISCONNECT_REASON __attendeeDisconnectReason__;
			public CHANNEL_PRIORITY __channelPriority__;
			public CHANNEL_FLAGS __channelFlags__;
			public CHANNEL_ACCESS_ENUM __channelAccessEnum__;
			public RDPENCOMAPI_ATTENDEE_FLAGS __rdpencomapiAttendeeFlags__;
			public RDPSRAPI_WND_FLAGS __rdpsrapiWndFlags__;
			public RDPSRAPI_APP_FLAGS __rdpsrapiAppFlags__;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RDPViewer = .(0x32be5ed2, 0x5c86, 0x480f, 0xa9, 0x14, 0x0f, 0xf8, 0x88, 0x5a, 0x1b, 0x3f);
		public const Guid CLSID_RDPSRAPISessionProperties = .(0xdd7594ff, 0xea2a, 0x4c06, 0x8f, 0xdf, 0x13, 0x2d, 0xe4, 0x8b, 0x65, 0x10);
		public const Guid CLSID_RDPSRAPIInvitationManager = .(0x53d9c9db, 0x75ab, 0x4271, 0x94, 0x8a, 0x4c, 0x4e, 0xb3, 0x6a, 0x8f, 0x2b);
		public const Guid CLSID_RDPSRAPIInvitation = .(0x49174dc6, 0x0731, 0x4b5e, 0x8e, 0xe1, 0x83, 0xa6, 0x3d, 0x38, 0x68, 0xfa);
		public const Guid CLSID_RDPSRAPIAttendeeManager = .(0xd7b13a01, 0xf7d4, 0x42a6, 0x85, 0x95, 0x12, 0xfc, 0x8c, 0x24, 0xe8, 0x51);
		public const Guid CLSID_RDPSRAPIAttendee = .(0x74f93bb5, 0x755f, 0x488e, 0x8a, 0x29, 0x23, 0x90, 0x10, 0x8a, 0xef, 0x55);
		public const Guid CLSID_RDPSRAPIAttendeeDisconnectInfo = .(0xb47d7250, 0x5bdb, 0x405d, 0xb4, 0x87, 0xca, 0xad, 0x9c, 0x56, 0xf4, 0xf8);
		public const Guid CLSID_RDPSRAPIApplicationFilter = .(0xe35ace89, 0xc7e8, 0x427e, 0xa4, 0xf9, 0xb9, 0xda, 0x07, 0x28, 0x26, 0xbd);
		public const Guid CLSID_RDPSRAPIApplicationList = .(0x9e31c815, 0x7433, 0x4876, 0x97, 0xfb, 0xed, 0x59, 0xfe, 0x2b, 0xaa, 0x22);
		public const Guid CLSID_RDPSRAPIApplication = .(0xc116a484, 0x4b25, 0x4b9f, 0x8a, 0x54, 0xb9, 0x34, 0xb0, 0x6e, 0x57, 0xfa);
		public const Guid CLSID_RDPSRAPIWindowList = .(0x9c21e2b8, 0x5dd4, 0x42cc, 0x81, 0xba, 0x1c, 0x09, 0x98, 0x52, 0xe6, 0xfa);
		public const Guid CLSID_RDPSRAPIWindow = .(0x03cf46db, 0xce45, 0x4d36, 0x86, 0xed, 0xed, 0x28, 0xb7, 0x43, 0x98, 0xbf);
		public const Guid CLSID_RDPSRAPITcpConnectionInfo = .(0xbe49db3f, 0xebb6, 0x4278, 0x8c, 0xe0, 0xd5, 0x45, 0x58, 0x33, 0xea, 0xee);
		public const Guid CLSID_RDPSession = .(0x9b78f0e6, 0x3e05, 0x4a5b, 0xb2, 0xe8, 0xe7, 0x43, 0xa8, 0x95, 0x6b, 0x65);
		public const Guid CLSID_RDPSRAPIFrameBuffer = .(0xa4f66bcc, 0x538e, 0x4101, 0x95, 0x1d, 0x30, 0x84, 0x7a, 0xdb, 0x51, 0x01);
		public const Guid CLSID_RDPTransportStreamBuffer = .(0x8d4a1c69, 0xf17f, 0x4549, 0xa6, 0x99, 0x76, 0x1c, 0x6e, 0x6b, 0x5c, 0x0a);
		public const Guid CLSID_RDPTransportStreamEvents = .(0x31e3ab20, 0x5350, 0x483f, 0x9d, 0xc6, 0x67, 0x48, 0x66, 0x5e, 0xfd, 0xeb);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRDPSRAPIDebug : IUnknown
		{
			public const new Guid IID = .(0xaa1e42b5, 0x496d, 0x4ca4, 0xa6, 0x90, 0x34, 0x8d, 0xcb, 0x2e, 0xc4, 0xad);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPIDebug *self, BSTR CLXCmdLine) put_CLXCmdLine;
				public function HRESULT(IRDPSRAPIDebug *self, BSTR* pCLXCmdLine) get_CLXCmdLine;
			}
		}
		[CRepr]
		public struct IRDPSRAPIPerfCounterLogger : IUnknown
		{
			public const new Guid IID = .(0x071c2533, 0x0fa4, 0x4e8f, 0xae, 0x83, 0x9c, 0x10, 0xb4, 0x30, 0x5a, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPIPerfCounterLogger *self, int64 lValue) LogValue;
			}
		}
		[CRepr]
		public struct IRDPSRAPIPerfCounterLoggingManager : IUnknown
		{
			public const new Guid IID = .(0x9a512c86, 0xac6e, 0x4a8e, 0xb1, 0xa4, 0xfc, 0xef, 0x36, 0x3f, 0x6e, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPIPerfCounterLoggingManager *self, BSTR bstrCounterName, IRDPSRAPIPerfCounterLogger** ppLogger) CreateLogger;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAudioStream : IUnknown
		{
			public const new Guid IID = .(0xe3e30ef9, 0x89c6, 0x4541, 0xba, 0x3b, 0x19, 0x33, 0x6a, 0xc6, 0xd3, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPIAudioStream *self, int64* pnPeriodInHundredNsIntervals) Initialize;
				public function HRESULT(IRDPSRAPIAudioStream *self) Start;
				public function HRESULT(IRDPSRAPIAudioStream *self) Stop;
				public function HRESULT(IRDPSRAPIAudioStream *self, uint8** ppbData, uint32* pcbData, uint64* pTimestamp) GetBuffer;
				public function HRESULT(IRDPSRAPIAudioStream *self) FreeBuffer;
			}
		}
		[CRepr]
		public struct IRDPSRAPIClipboardUseEvents : IUnknown
		{
			public const new Guid IID = .(0xd559f59a, 0x7a27, 0x4138, 0x87, 0x63, 0x24, 0x7c, 0xe5, 0xf6, 0x59, 0xa8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPIClipboardUseEvents *self, uint32 clipboardFormat, IDispatch* pAttendee, int16* pRetVal) OnPasteFromClipboard;
			}
		}
		[CRepr]
		public struct IRDPSRAPIWindow : IDispatch
		{
			public const new Guid IID = .(0xbeafe0f9, 0xc77b, 0x4933, 0xba, 0x9f, 0xa2, 0x4c, 0xdd, 0xcc, 0x27, 0xcf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIWindow *self, int32* pRetVal) get_Id;
				public function HRESULT(IRDPSRAPIWindow *self, IRDPSRAPIApplication** pApplication) get_Application;
				public function HRESULT(IRDPSRAPIWindow *self, int16* pRetVal) get_Shared;
				public function HRESULT(IRDPSRAPIWindow *self, int16 NewVal) put_Shared;
				public function HRESULT(IRDPSRAPIWindow *self, BSTR* pRetVal) get_Name;
				public function HRESULT(IRDPSRAPIWindow *self) Show;
				public function HRESULT(IRDPSRAPIWindow *self, uint32* pdwFlags) get_Flags;
			}
		}
		[CRepr]
		public struct IRDPSRAPIWindowList : IDispatch
		{
			public const new Guid IID = .(0x8a05ce44, 0x715a, 0x4116, 0xa1, 0x89, 0xa1, 0x18, 0xf3, 0x0a, 0x07, 0xbd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIWindowList *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(IRDPSRAPIWindowList *self, int32 item, IRDPSRAPIWindow** pWindow) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplication : IDispatch
		{
			public const new Guid IID = .(0x41e7a09d, 0xeb7a, 0x436e, 0x93, 0x5d, 0x78, 0x0c, 0xa2, 0x62, 0x83, 0x24);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIApplication *self, IRDPSRAPIWindowList** pWindowList) get_Windows;
				public function HRESULT(IRDPSRAPIApplication *self, int32* pRetVal) get_Id;
				public function HRESULT(IRDPSRAPIApplication *self, int16* pRetVal) get_Shared;
				public function HRESULT(IRDPSRAPIApplication *self, int16 NewVal) put_Shared;
				public function HRESULT(IRDPSRAPIApplication *self, BSTR* pRetVal) get_Name;
				public function HRESULT(IRDPSRAPIApplication *self, uint32* pdwFlags) get_Flags;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplicationList : IDispatch
		{
			public const new Guid IID = .(0xd4b4aeb3, 0x22dc, 0x4837, 0xb3, 0xb6, 0x42, 0xea, 0x25, 0x17, 0x84, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIApplicationList *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(IRDPSRAPIApplicationList *self, int32 item, IRDPSRAPIApplication** pApplication) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplicationFilter : IDispatch
		{
			public const new Guid IID = .(0xd20f10ca, 0x6637, 0x4f06, 0xb1, 0xd5, 0x27, 0x7e, 0xa7, 0xe5, 0x16, 0x0d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIApplicationFilter *self, IRDPSRAPIApplicationList** pApplications) get_Applications;
				public function HRESULT(IRDPSRAPIApplicationFilter *self, IRDPSRAPIWindowList** pWindows) get_Windows;
				public function HRESULT(IRDPSRAPIApplicationFilter *self, int16* pRetVal) get_Enabled;
				public function HRESULT(IRDPSRAPIApplicationFilter *self, int16 NewVal) put_Enabled;
			}
		}
		[CRepr]
		public struct IRDPSRAPISessionProperties : IDispatch
		{
			public const new Guid IID = .(0x339b24f2, 0x9bc0, 0x4f16, 0x9a, 0xac, 0xf1, 0x65, 0x43, 0x3d, 0x13, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPISessionProperties *self, BSTR PropertyName, VARIANT* pVal) get_Property;
				public function HRESULT(IRDPSRAPISessionProperties *self, BSTR PropertyName, VARIANT newVal) put_Property;
			}
		}
		[CRepr]
		public struct IRDPSRAPIInvitation : IDispatch
		{
			public const new Guid IID = .(0x4fac1d43, 0xfc51, 0x45bb, 0xb1, 0xb4, 0x2b, 0x53, 0xaa, 0x56, 0x2f, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_ConnectionString;
				public function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_GroupName;
				public function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_Password;
				public function HRESULT(IRDPSRAPIInvitation *self, int32* pRetVal) get_AttendeeLimit;
				public function HRESULT(IRDPSRAPIInvitation *self, int32 NewVal) put_AttendeeLimit;
				public function HRESULT(IRDPSRAPIInvitation *self, int16* pRetVal) get_Revoked;
				public function HRESULT(IRDPSRAPIInvitation *self, int16 NewVal) put_Revoked;
			}
		}
		[CRepr]
		public struct IRDPSRAPIInvitationManager : IDispatch
		{
			public const new Guid IID = .(0x4722b049, 0x92c3, 0x4c2d, 0x8a, 0x65, 0xf7, 0x34, 0x8f, 0x64, 0x4d, 0xcf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIInvitationManager *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(IRDPSRAPIInvitationManager *self, VARIANT item, IRDPSRAPIInvitation** ppInvitation) get_Item;
				public function HRESULT(IRDPSRAPIInvitationManager *self, int32* pRetVal) get_Count;
				public function HRESULT(IRDPSRAPIInvitationManager *self, BSTR bstrAuthString, BSTR bstrGroupName, BSTR bstrPassword, int32 AttendeeLimit, IRDPSRAPIInvitation** ppInvitation) CreateInvitation;
			}
		}
		[CRepr]
		public struct IRDPSRAPITcpConnectionInfo : IDispatch
		{
			public const new Guid IID = .(0xf74049a4, 0x3d06, 0x4028, 0x81, 0x93, 0x0a, 0x8c, 0x29, 0xbc, 0x24, 0x52);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plProtocol) get_Protocol;
				public function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plPort) get_LocalPort;
				public function HRESULT(IRDPSRAPITcpConnectionInfo *self, BSTR* pbsrLocalIP) get_LocalIP;
				public function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plPort) get_PeerPort;
				public function HRESULT(IRDPSRAPITcpConnectionInfo *self, BSTR* pbstrIP) get_PeerIP;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendee : IDispatch
		{
			public const new Guid IID = .(0xec0671b3, 0x1b78, 0x4b80, 0xa4, 0x64, 0x91, 0x32, 0x24, 0x75, 0x43, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIAttendee *self, int32* pId) get_Id;
				public function HRESULT(IRDPSRAPIAttendee *self, BSTR* pVal) get_RemoteName;
				public function HRESULT(IRDPSRAPIAttendee *self, CTRL_LEVEL* pVal) get_ControlLevel;
				public function HRESULT(IRDPSRAPIAttendee *self, CTRL_LEVEL pNewVal) put_ControlLevel;
				public function HRESULT(IRDPSRAPIAttendee *self, IRDPSRAPIInvitation** ppVal) get_Invitation;
				public function HRESULT(IRDPSRAPIAttendee *self) TerminateConnection;
				public function HRESULT(IRDPSRAPIAttendee *self, int32* plFlags) get_Flags;
				public function HRESULT(IRDPSRAPIAttendee *self, IUnknown** ppVal) get_ConnectivityInfo;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendeeManager : IDispatch
		{
			public const new Guid IID = .(0xba3a37e8, 0x33da, 0x4749, 0x8d, 0xa0, 0x07, 0xfa, 0x34, 0xda, 0x79, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIAttendeeManager *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(IRDPSRAPIAttendeeManager *self, int32 id, IRDPSRAPIAttendee** ppItem) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendeeDisconnectInfo : IDispatch
		{
			public const new Guid IID = .(0xc187689f, 0x447c, 0x44a1, 0x9c, 0x14, 0xff, 0xfb, 0xb3, 0xb7, 0xec, 0x17);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, IRDPSRAPIAttendee** retval) get_Attendee;
				public function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, ATTENDEE_DISCONNECT_REASON* pReason) get_Reason;
				public function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, int32* pVal) get_Code;
			}
		}
		[CRepr]
		public struct IRDPSRAPIVirtualChannel : IDispatch
		{
			public const new Guid IID = .(0x05e12f95, 0x28b3, 0x4c9a, 0x87, 0x80, 0xd0, 0x24, 0x85, 0x74, 0xa1, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIVirtualChannel *self, BSTR bstrData, int32 lAttendeeId, uint32 ChannelSendFlags) SendData;
				public function HRESULT(IRDPSRAPIVirtualChannel *self, int32 lAttendeeId, CHANNEL_ACCESS_ENUM AccessType) SetAccess;
				public function HRESULT(IRDPSRAPIVirtualChannel *self, BSTR* pbstrName) get_Name;
				public function HRESULT(IRDPSRAPIVirtualChannel *self, int32* plFlags) get_Flags;
				public function HRESULT(IRDPSRAPIVirtualChannel *self, CHANNEL_PRIORITY* pPriority) get_Priority;
			}
		}
		[CRepr]
		public struct IRDPSRAPIVirtualChannelManager : IDispatch
		{
			public const new Guid IID = .(0x0d11c661, 0x5d0d, 0x4ee4, 0x89, 0xdf, 0x21, 0x66, 0xae, 0x1f, 0xdf, 0xed);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIVirtualChannelManager *self, IUnknown** retval) get__NewEnum;
				public function HRESULT(IRDPSRAPIVirtualChannelManager *self, VARIANT item, IRDPSRAPIVirtualChannel** pChannel) get_Item;
				public function HRESULT(IRDPSRAPIVirtualChannelManager *self, BSTR bstrChannelName, CHANNEL_PRIORITY Priority, uint32 ChannelFlags, IRDPSRAPIVirtualChannel** ppChannel) CreateVirtualChannel;
			}
		}
		[CRepr]
		public struct IRDPSRAPIViewer : IDispatch
		{
			public const new Guid IID = .(0xc6bfcd38, 0x8ce9, 0x404d, 0x8a, 0xe8, 0xf3, 0x1d, 0x00, 0xc6, 0x5c, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIViewer *self, BSTR bstrConnectionString, BSTR bstrName, BSTR bstrPassword) Connect;
				public function HRESULT(IRDPSRAPIViewer *self) Disconnect;
				public function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIAttendeeManager** ppVal) get_Attendees;
				public function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIInvitationManager** ppVal) get_Invitations;
				public function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIApplicationFilter** ppVal) get_ApplicationFilter;
				public function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIVirtualChannelManager** ppVal) get_VirtualChannelManager;
				public function HRESULT(IRDPSRAPIViewer *self, int16 vbSmartSizing) put_SmartSizing;
				public function HRESULT(IRDPSRAPIViewer *self, int16* pvbSmartSizing) get_SmartSizing;
				public function HRESULT(IRDPSRAPIViewer *self, CTRL_LEVEL CtrlLevel) RequestControl;
				public function HRESULT(IRDPSRAPIViewer *self, BSTR bstrDisconnectedText) put_DisconnectedText;
				public function HRESULT(IRDPSRAPIViewer *self, BSTR* pbstrDisconnectedText) get_DisconnectedText;
				public function HRESULT(IRDPSRAPIViewer *self, int32 Bpp) RequestColorDepthChange;
				public function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPISessionProperties** ppVal) get_Properties;
				public function HRESULT(IRDPSRAPIViewer *self, BSTR bstrConnectionString, BSTR bstrUserName, BSTR bstrPassword, BSTR* pbstrReverseConnectString) StartReverseConnectListener;
			}
		}
		[CRepr]
		public struct IRDPViewerInputSink : IUnknown
		{
			public const new Guid IID = .(0xbb590853, 0xa6c5, 0x4a7b, 0x8d, 0xd4, 0x76, 0xb6, 0x9e, 0xea, 0x12, 0xd5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPViewerInputSink *self, RDPSRAPI_MOUSE_BUTTON_TYPE buttonType, int16 vbButtonDown, uint32 xPos, uint32 yPos) SendMouseButtonEvent;
				public function HRESULT(IRDPViewerInputSink *self, uint32 xPos, uint32 yPos) SendMouseMoveEvent;
				public function HRESULT(IRDPViewerInputSink *self, uint16 wheelRotation) SendMouseWheelEvent;
				public function HRESULT(IRDPViewerInputSink *self, RDPSRAPI_KBD_CODE_TYPE codeType, uint16 keycode, int16 vbKeyUp, int16 vbRepeat, int16 vbExtended) SendKeyboardEvent;
				public function HRESULT(IRDPViewerInputSink *self, uint32 syncFlags) SendSyncEvent;
				public function HRESULT(IRDPViewerInputSink *self) BeginTouchFrame;
				public function HRESULT(IRDPViewerInputSink *self, uint32 contactId, uint32 event, int32 x, int32 y) AddTouchInput;
				public function HRESULT(IRDPViewerInputSink *self) EndTouchFrame;
			}
		}
		[CRepr]
		public struct IRDPSRAPIFrameBuffer : IDispatch
		{
			public const new Guid IID = .(0x3d67e7d2, 0xb27b, 0x448e, 0x81, 0xb3, 0xc6, 0x11, 0x0e, 0xd8, 0xb4, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plWidth) get_Width;
				public function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plHeight) get_Height;
				public function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plBpp) get_Bpp;
				public function HRESULT(IRDPSRAPIFrameBuffer *self, int32 x, int32 y, int32 Width, int32 Heigth, SAFEARRAY** ppBits) GetFrameBufferBits;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStreamBuffer : IUnknown
		{
			public const new Guid IID = .(0x81c80290, 0x5085, 0x44b0, 0xb4, 0x60, 0xf8, 0x65, 0xc3, 0x9c, 0xb4, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, uint8** ppbStorage) get_Storage;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plMaxStore) get_StorageSize;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plRetVal) get_PayloadSize;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lVal) put_PayloadSize;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plRetVal) get_PayloadOffset;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lRetVal) put_PayloadOffset;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plFlags) get_Flags;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lFlags) put_Flags;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, IUnknown** ppContext) get_Context;
				public function HRESULT(IRDPSRAPITransportStreamBuffer *self, IUnknown* pContext) put_Context;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStreamEvents : IUnknown
		{
			public const new Guid IID = .(0xea81c254, 0xf5af, 0x4e40, 0x98, 0x2e, 0x3e, 0x63, 0xbb, 0x59, 0x52, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(IRDPSRAPITransportStreamEvents *self, IRDPSRAPITransportStreamBuffer* pBuffer) OnWriteCompleted;
				public function void(IRDPSRAPITransportStreamEvents *self, IRDPSRAPITransportStreamBuffer* pBuffer) OnReadCompleted;
				public function void(IRDPSRAPITransportStreamEvents *self, HRESULT hrReason) OnStreamClosed;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStream : IUnknown
		{
			public const new Guid IID = .(0x36cfa065, 0x43bb, 0x4ef7, 0xae, 0xd7, 0x9b, 0x88, 0xa5, 0x05, 0x30, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IRDPSRAPITransportStream *self, int32 maxPayload, IRDPSRAPITransportStreamBuffer** ppBuffer) AllocBuffer;
				public function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) FreeBuffer;
				public function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) WriteBuffer;
				public function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) ReadBuffer;
				public function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamEvents* pCallbacks) Open;
				public function HRESULT(IRDPSRAPITransportStream *self) Close;
			}
		}
		[CRepr]
		public struct IRDPSRAPISharingSession : IDispatch
		{
			public const new Guid IID = .(0xeeb20886, 0xe470, 0x4cf6, 0x84, 0x2b, 0x27, 0x39, 0xc0, 0xec, 0x5c, 0xfb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRDPSRAPISharingSession *self) Open;
				public function HRESULT(IRDPSRAPISharingSession *self) Close;
				public function HRESULT(IRDPSRAPISharingSession *self, int32 colorDepth) put_ColorDepth;
				public function HRESULT(IRDPSRAPISharingSession *self, int32* pColorDepth) get_ColorDepth;
				public function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPISessionProperties** ppVal) get_Properties;
				public function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIAttendeeManager** ppVal) get_Attendees;
				public function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIInvitationManager** ppVal) get_Invitations;
				public function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIApplicationFilter** ppVal) get_ApplicationFilter;
				public function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIVirtualChannelManager** ppVal) get_VirtualChannelManager;
				public function HRESULT(IRDPSRAPISharingSession *self) Pause;
				public function HRESULT(IRDPSRAPISharingSession *self) Resume;
				public function HRESULT(IRDPSRAPISharingSession *self, BSTR bstrConnectionString) ConnectToClient;
				public function HRESULT(IRDPSRAPISharingSession *self, int32 left, int32 top, int32 right, int32 bottom) SetDesktopSharedRect;
				public function HRESULT(IRDPSRAPISharingSession *self, int32* pleft, int32* ptop, int32* pright, int32* pbottom) GetDesktopSharedRect;
			}
		}
		[CRepr]
		public struct IRDPSRAPISharingSession2 : IRDPSRAPISharingSession
		{
			public const new Guid IID = .(0xfee4ee57, 0xe3e8, 0x4205, 0x8f, 0xb0, 0x8f, 0xd1, 0xd0, 0x67, 0x5c, 0x21);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IRDPSRAPISharingSession.VTable
			{
				public function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPITransportStream* pStream, BSTR bstrGroup, BSTR bstrAuthenticatedAttendeeName) ConnectUsingTransportStream;
				public function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPIFrameBuffer** ppVal) get_FrameBuffer;
				public function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPIAttendee* pAttendee, CTRL_LEVEL RequestedLevel, int32 ReasonCode) SendControlLevelChangeResponse;
			}
		}
		[CRepr]
		public struct _IRDPSessionEvents : IDispatch
		{
			public const new Guid IID = .(0x98a97042, 0x6698, 0x40e9, 0x8e, 0xfd, 0xb3, 0x20, 0x09, 0x90, 0x00, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		
	}
}
