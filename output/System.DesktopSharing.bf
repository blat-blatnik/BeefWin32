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
		
		public struct IRDPSRAPIDebug {}
		public struct IRDPSRAPIPerfCounterLogger {}
		public struct IRDPSRAPIPerfCounterLoggingManager {}
		public struct IRDPSRAPIAudioStream {}
		public struct IRDPSRAPIClipboardUseEvents {}
		public struct IRDPSRAPIWindow {}
		public struct IRDPSRAPIWindowList {}
		public struct IRDPSRAPIApplication {}
		public struct IRDPSRAPIApplicationList {}
		public struct IRDPSRAPIApplicationFilter {}
		public struct IRDPSRAPISessionProperties {}
		public struct IRDPSRAPIInvitation {}
		public struct IRDPSRAPIInvitationManager {}
		public struct IRDPSRAPITcpConnectionInfo {}
		public struct IRDPSRAPIAttendee {}
		public struct IRDPSRAPIAttendeeManager {}
		public struct IRDPSRAPIAttendeeDisconnectInfo {}
		public struct IRDPSRAPIVirtualChannel {}
		public struct IRDPSRAPIVirtualChannelManager {}
		public struct IRDPSRAPIViewer {}
		public struct IRDPViewerInputSink {}
		public struct IRDPSRAPIFrameBuffer {}
		public struct IRDPSRAPITransportStreamBuffer {}
		public struct IRDPSRAPITransportStreamEvents {}
		public struct IRDPSRAPITransportStream {}
		public struct IRDPSRAPISharingSession {}
		public struct IRDPSRAPISharingSession2 {}
		public struct _IRDPSessionEvents {}
		
	}
}
