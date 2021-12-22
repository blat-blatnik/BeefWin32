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
			MIN = 0,
			INVALID = 0,
			NONE = 1,
			VIEW = 2,
			INTERACTIVE = 3,
			REQCTRL_VIEW = 4,
			REQCTRL_INTERACTIVE = 5,
			MAX = 5,
		}
		[AllowDuplicates]
		public enum ATTENDEE_DISCONNECT_REASON : int32
		{
			MIN = 0,
			APP = 0,
			ERR = 1,
			CLI = 2,
			MAX = 2,
		}
		public enum CHANNEL_PRIORITY : int32
		{
			LO = 0,
			MED = 1,
			HI = 2,
		}
		public enum CHANNEL_FLAGS : int32
		{
			LEGACY = 1,
			UNCOMPRESSED = 2,
			DYNAMIC = 4,
		}
		public enum CHANNEL_ACCESS_ENUM : int32
		{
			NONE = 0,
			SENDRECEIVE = 1,
		}
		public enum RDPENCOMAPI_ATTENDEE_FLAGS : int32
		{
			ATTENDEE_FLAGS_LOCAL = 1,
		}
		public enum RDPSRAPI_WND_FLAGS : int32
		{
			WND_FLAG_PRIVILEGED = 1,
		}
		public enum RDPSRAPI_APP_FLAGS : int32
		{
			APP_FLAG_PRIVILEGED = 1,
		}
		public enum RDPSRAPI_MOUSE_BUTTON_TYPE : int32
		{
			BUTTON1 = 0,
			BUTTON2 = 1,
			BUTTON3 = 2,
			XBUTTON1 = 3,
			XBUTTON2 = 4,
			XBUTTON3 = 5,
		}
		public enum RDPSRAPI_KBD_CODE_TYPE : int32
		{
			SCANCODE = 0,
			UNICODE = 1,
		}
		public enum RDPSRAPI_KBD_SYNC_FLAG : int32
		{
			SCROLL_LOCK = 1,
			NUM_LOCK = 2,
			CAPS_LOCK = 4,
			KANA_LOCK = 8,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_rdpencomapi_0000_0027_0001 : int32
		{
			MAX_CHANNEL_MESSAGE_SIZE = 1024,
			MAX_CHANNEL_NAME_LEN = 8,
			MAX_LEGACY_CHANNEL_MESSAGE_SIZE = 409600,
			ATTENDEE_ID_EVERYONE = -1,
			ATTENDEE_ID_HOST = 0,
			CONN_INTERVAL = 50,
			ATTENDEE_ID_DEFAULT = -1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_CLXCmdLine(BSTR CLXCmdLine) mut
			{
				return VT.put_CLXCmdLine(&this, CLXCmdLine);
			}
			public HRESULT get_CLXCmdLine(BSTR* pCLXCmdLine) mut
			{
				return VT.get_CLXCmdLine(&this, pCLXCmdLine);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPIDebug *self, BSTR CLXCmdLine) put_CLXCmdLine;
				public new function HRESULT(IRDPSRAPIDebug *self, BSTR* pCLXCmdLine) get_CLXCmdLine;
			}
		}
		[CRepr]
		public struct IRDPSRAPIPerfCounterLogger : IUnknown
		{
			public const new Guid IID = .(0x071c2533, 0x0fa4, 0x4e8f, 0xae, 0x83, 0x9c, 0x10, 0xb4, 0x30, 0x5a, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LogValue(int64 lValue) mut
			{
				return VT.LogValue(&this, lValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPIPerfCounterLogger *self, int64 lValue) LogValue;
			}
		}
		[CRepr]
		public struct IRDPSRAPIPerfCounterLoggingManager : IUnknown
		{
			public const new Guid IID = .(0x9a512c86, 0xac6e, 0x4a8e, 0xb1, 0xa4, 0xfc, 0xef, 0x36, 0x3f, 0x6e, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateLogger(BSTR bstrCounterName, IRDPSRAPIPerfCounterLogger** ppLogger) mut
			{
				return VT.CreateLogger(&this, bstrCounterName, ppLogger);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPIPerfCounterLoggingManager *self, BSTR bstrCounterName, IRDPSRAPIPerfCounterLogger** ppLogger) CreateLogger;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAudioStream : IUnknown
		{
			public const new Guid IID = .(0xe3e30ef9, 0x89c6, 0x4541, 0xba, 0x3b, 0x19, 0x33, 0x6a, 0xc6, 0xd3, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(int64* pnPeriodInHundredNsIntervals) mut
			{
				return VT.Initialize(&this, pnPeriodInHundredNsIntervals);
			}
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT GetBuffer(uint8** ppbData, uint32* pcbData, uint64* pTimestamp) mut
			{
				return VT.GetBuffer(&this, ppbData, pcbData, pTimestamp);
			}
			public HRESULT FreeBuffer() mut
			{
				return VT.FreeBuffer(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPIAudioStream *self, int64* pnPeriodInHundredNsIntervals) Initialize;
				public new function HRESULT(IRDPSRAPIAudioStream *self) Start;
				public new function HRESULT(IRDPSRAPIAudioStream *self) Stop;
				public new function HRESULT(IRDPSRAPIAudioStream *self, uint8** ppbData, uint32* pcbData, uint64* pTimestamp) GetBuffer;
				public new function HRESULT(IRDPSRAPIAudioStream *self) FreeBuffer;
			}
		}
		[CRepr]
		public struct IRDPSRAPIClipboardUseEvents : IUnknown
		{
			public const new Guid IID = .(0xd559f59a, 0x7a27, 0x4138, 0x87, 0x63, 0x24, 0x7c, 0xe5, 0xf6, 0x59, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPasteFromClipboard(uint32 clipboardFormat, IDispatch* pAttendee, int16* pRetVal) mut
			{
				return VT.OnPasteFromClipboard(&this, clipboardFormat, pAttendee, pRetVal);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPIClipboardUseEvents *self, uint32 clipboardFormat, IDispatch* pAttendee, int16* pRetVal) OnPasteFromClipboard;
			}
		}
		[CRepr]
		public struct IRDPSRAPIWindow : IDispatch
		{
			public const new Guid IID = .(0xbeafe0f9, 0xc77b, 0x4933, 0xba, 0x9f, 0xa2, 0x4c, 0xdd, 0xcc, 0x27, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(int32* pRetVal) mut
			{
				return VT.get_Id(&this, pRetVal);
			}
			public HRESULT get_Application(IRDPSRAPIApplication** pApplication) mut
			{
				return VT.get_Application(&this, pApplication);
			}
			public HRESULT get_Shared(int16* pRetVal) mut
			{
				return VT.get_Shared(&this, pRetVal);
			}
			public HRESULT put_Shared(int16 NewVal) mut
			{
				return VT.put_Shared(&this, NewVal);
			}
			public HRESULT get_Name(BSTR* pRetVal) mut
			{
				return VT.get_Name(&this, pRetVal);
			}
			public HRESULT Show() mut
			{
				return VT.Show(&this);
			}
			public HRESULT get_Flags(uint32* pdwFlags) mut
			{
				return VT.get_Flags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIWindow *self, int32* pRetVal) get_Id;
				public new function HRESULT(IRDPSRAPIWindow *self, IRDPSRAPIApplication** pApplication) get_Application;
				public new function HRESULT(IRDPSRAPIWindow *self, int16* pRetVal) get_Shared;
				public new function HRESULT(IRDPSRAPIWindow *self, int16 NewVal) put_Shared;
				public new function HRESULT(IRDPSRAPIWindow *self, BSTR* pRetVal) get_Name;
				public new function HRESULT(IRDPSRAPIWindow *self) Show;
				public new function HRESULT(IRDPSRAPIWindow *self, uint32* pdwFlags) get_Flags;
			}
		}
		[CRepr]
		public struct IRDPSRAPIWindowList : IDispatch
		{
			public const new Guid IID = .(0x8a05ce44, 0x715a, 0x4116, 0xa1, 0x89, 0xa1, 0x18, 0xf3, 0x0a, 0x07, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(int32 item, IRDPSRAPIWindow** pWindow) mut
			{
				return VT.get_Item(&this, item, pWindow);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIWindowList *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IRDPSRAPIWindowList *self, int32 item, IRDPSRAPIWindow** pWindow) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplication : IDispatch
		{
			public const new Guid IID = .(0x41e7a09d, 0xeb7a, 0x436e, 0x93, 0x5d, 0x78, 0x0c, 0xa2, 0x62, 0x83, 0x24);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Windows(IRDPSRAPIWindowList** pWindowList) mut
			{
				return VT.get_Windows(&this, pWindowList);
			}
			public HRESULT get_Id(int32* pRetVal) mut
			{
				return VT.get_Id(&this, pRetVal);
			}
			public HRESULT get_Shared(int16* pRetVal) mut
			{
				return VT.get_Shared(&this, pRetVal);
			}
			public HRESULT put_Shared(int16 NewVal) mut
			{
				return VT.put_Shared(&this, NewVal);
			}
			public HRESULT get_Name(BSTR* pRetVal) mut
			{
				return VT.get_Name(&this, pRetVal);
			}
			public HRESULT get_Flags(uint32* pdwFlags) mut
			{
				return VT.get_Flags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIApplication *self, IRDPSRAPIWindowList** pWindowList) get_Windows;
				public new function HRESULT(IRDPSRAPIApplication *self, int32* pRetVal) get_Id;
				public new function HRESULT(IRDPSRAPIApplication *self, int16* pRetVal) get_Shared;
				public new function HRESULT(IRDPSRAPIApplication *self, int16 NewVal) put_Shared;
				public new function HRESULT(IRDPSRAPIApplication *self, BSTR* pRetVal) get_Name;
				public new function HRESULT(IRDPSRAPIApplication *self, uint32* pdwFlags) get_Flags;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplicationList : IDispatch
		{
			public const new Guid IID = .(0xd4b4aeb3, 0x22dc, 0x4837, 0xb3, 0xb6, 0x42, 0xea, 0x25, 0x17, 0x84, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(int32 item, IRDPSRAPIApplication** pApplication) mut
			{
				return VT.get_Item(&this, item, pApplication);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIApplicationList *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IRDPSRAPIApplicationList *self, int32 item, IRDPSRAPIApplication** pApplication) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIApplicationFilter : IDispatch
		{
			public const new Guid IID = .(0xd20f10ca, 0x6637, 0x4f06, 0xb1, 0xd5, 0x27, 0x7e, 0xa7, 0xe5, 0x16, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Applications(IRDPSRAPIApplicationList** pApplications) mut
			{
				return VT.get_Applications(&this, pApplications);
			}
			public HRESULT get_Windows(IRDPSRAPIWindowList** pWindows) mut
			{
				return VT.get_Windows(&this, pWindows);
			}
			public HRESULT get_Enabled(int16* pRetVal) mut
			{
				return VT.get_Enabled(&this, pRetVal);
			}
			public HRESULT put_Enabled(int16 NewVal) mut
			{
				return VT.put_Enabled(&this, NewVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIApplicationFilter *self, IRDPSRAPIApplicationList** pApplications) get_Applications;
				public new function HRESULT(IRDPSRAPIApplicationFilter *self, IRDPSRAPIWindowList** pWindows) get_Windows;
				public new function HRESULT(IRDPSRAPIApplicationFilter *self, int16* pRetVal) get_Enabled;
				public new function HRESULT(IRDPSRAPIApplicationFilter *self, int16 NewVal) put_Enabled;
			}
		}
		[CRepr]
		public struct IRDPSRAPISessionProperties : IDispatch
		{
			public const new Guid IID = .(0x339b24f2, 0x9bc0, 0x4f16, 0x9a, 0xac, 0xf1, 0x65, 0x43, 0x3d, 0x13, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Property(BSTR PropertyName, VARIANT* pVal) mut
			{
				return VT.get_Property(&this, PropertyName, pVal);
			}
			public HRESULT put_Property(BSTR PropertyName, VARIANT newVal) mut
			{
				return VT.put_Property(&this, PropertyName, newVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPISessionProperties *self, BSTR PropertyName, VARIANT* pVal) get_Property;
				public new function HRESULT(IRDPSRAPISessionProperties *self, BSTR PropertyName, VARIANT newVal) put_Property;
			}
		}
		[CRepr]
		public struct IRDPSRAPIInvitation : IDispatch
		{
			public const new Guid IID = .(0x4fac1d43, 0xfc51, 0x45bb, 0xb1, 0xb4, 0x2b, 0x53, 0xaa, 0x56, 0x2f, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ConnectionString(BSTR* pbstrVal) mut
			{
				return VT.get_ConnectionString(&this, pbstrVal);
			}
			public HRESULT get_GroupName(BSTR* pbstrVal) mut
			{
				return VT.get_GroupName(&this, pbstrVal);
			}
			public HRESULT get_Password(BSTR* pbstrVal) mut
			{
				return VT.get_Password(&this, pbstrVal);
			}
			public HRESULT get_AttendeeLimit(int32* pRetVal) mut
			{
				return VT.get_AttendeeLimit(&this, pRetVal);
			}
			public HRESULT put_AttendeeLimit(int32 NewVal) mut
			{
				return VT.put_AttendeeLimit(&this, NewVal);
			}
			public HRESULT get_Revoked(int16* pRetVal) mut
			{
				return VT.get_Revoked(&this, pRetVal);
			}
			public HRESULT put_Revoked(int16 NewVal) mut
			{
				return VT.put_Revoked(&this, NewVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_ConnectionString;
				public new function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_GroupName;
				public new function HRESULT(IRDPSRAPIInvitation *self, BSTR* pbstrVal) get_Password;
				public new function HRESULT(IRDPSRAPIInvitation *self, int32* pRetVal) get_AttendeeLimit;
				public new function HRESULT(IRDPSRAPIInvitation *self, int32 NewVal) put_AttendeeLimit;
				public new function HRESULT(IRDPSRAPIInvitation *self, int16* pRetVal) get_Revoked;
				public new function HRESULT(IRDPSRAPIInvitation *self, int16 NewVal) put_Revoked;
			}
		}
		[CRepr]
		public struct IRDPSRAPIInvitationManager : IDispatch
		{
			public const new Guid IID = .(0x4722b049, 0x92c3, 0x4c2d, 0x8a, 0x65, 0xf7, 0x34, 0x8f, 0x64, 0x4d, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(VARIANT item, IRDPSRAPIInvitation** ppInvitation) mut
			{
				return VT.get_Item(&this, item, ppInvitation);
			}
			public HRESULT get_Count(int32* pRetVal) mut
			{
				return VT.get_Count(&this, pRetVal);
			}
			public HRESULT CreateInvitation(BSTR bstrAuthString, BSTR bstrGroupName, BSTR bstrPassword, int32 AttendeeLimit, IRDPSRAPIInvitation** ppInvitation) mut
			{
				return VT.CreateInvitation(&this, bstrAuthString, bstrGroupName, bstrPassword, AttendeeLimit, ppInvitation);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIInvitationManager *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IRDPSRAPIInvitationManager *self, VARIANT item, IRDPSRAPIInvitation** ppInvitation) get_Item;
				public new function HRESULT(IRDPSRAPIInvitationManager *self, int32* pRetVal) get_Count;
				public new function HRESULT(IRDPSRAPIInvitationManager *self, BSTR bstrAuthString, BSTR bstrGroupName, BSTR bstrPassword, int32 AttendeeLimit, IRDPSRAPIInvitation** ppInvitation) CreateInvitation;
			}
		}
		[CRepr]
		public struct IRDPSRAPITcpConnectionInfo : IDispatch
		{
			public const new Guid IID = .(0xf74049a4, 0x3d06, 0x4028, 0x81, 0x93, 0x0a, 0x8c, 0x29, 0xbc, 0x24, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Protocol(int32* plProtocol) mut
			{
				return VT.get_Protocol(&this, plProtocol);
			}
			public HRESULT get_LocalPort(int32* plPort) mut
			{
				return VT.get_LocalPort(&this, plPort);
			}
			public HRESULT get_LocalIP(BSTR* pbsrLocalIP) mut
			{
				return VT.get_LocalIP(&this, pbsrLocalIP);
			}
			public HRESULT get_PeerPort(int32* plPort) mut
			{
				return VT.get_PeerPort(&this, plPort);
			}
			public HRESULT get_PeerIP(BSTR* pbstrIP) mut
			{
				return VT.get_PeerIP(&this, pbstrIP);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plProtocol) get_Protocol;
				public new function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plPort) get_LocalPort;
				public new function HRESULT(IRDPSRAPITcpConnectionInfo *self, BSTR* pbsrLocalIP) get_LocalIP;
				public new function HRESULT(IRDPSRAPITcpConnectionInfo *self, int32* plPort) get_PeerPort;
				public new function HRESULT(IRDPSRAPITcpConnectionInfo *self, BSTR* pbstrIP) get_PeerIP;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendee : IDispatch
		{
			public const new Guid IID = .(0xec0671b3, 0x1b78, 0x4b80, 0xa4, 0x64, 0x91, 0x32, 0x24, 0x75, 0x43, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Id(int32* pId) mut
			{
				return VT.get_Id(&this, pId);
			}
			public HRESULT get_RemoteName(BSTR* pVal) mut
			{
				return VT.get_RemoteName(&this, pVal);
			}
			public HRESULT get_ControlLevel(CTRL_LEVEL* pVal) mut
			{
				return VT.get_ControlLevel(&this, pVal);
			}
			public HRESULT put_ControlLevel(CTRL_LEVEL pNewVal) mut
			{
				return VT.put_ControlLevel(&this, pNewVal);
			}
			public HRESULT get_Invitation(IRDPSRAPIInvitation** ppVal) mut
			{
				return VT.get_Invitation(&this, ppVal);
			}
			public HRESULT TerminateConnection() mut
			{
				return VT.TerminateConnection(&this);
			}
			public HRESULT get_Flags(int32* plFlags) mut
			{
				return VT.get_Flags(&this, plFlags);
			}
			public HRESULT get_ConnectivityInfo(IUnknown** ppVal) mut
			{
				return VT.get_ConnectivityInfo(&this, ppVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIAttendee *self, int32* pId) get_Id;
				public new function HRESULT(IRDPSRAPIAttendee *self, BSTR* pVal) get_RemoteName;
				public new function HRESULT(IRDPSRAPIAttendee *self, CTRL_LEVEL* pVal) get_ControlLevel;
				public new function HRESULT(IRDPSRAPIAttendee *self, CTRL_LEVEL pNewVal) put_ControlLevel;
				public new function HRESULT(IRDPSRAPIAttendee *self, IRDPSRAPIInvitation** ppVal) get_Invitation;
				public new function HRESULT(IRDPSRAPIAttendee *self) TerminateConnection;
				public new function HRESULT(IRDPSRAPIAttendee *self, int32* plFlags) get_Flags;
				public new function HRESULT(IRDPSRAPIAttendee *self, IUnknown** ppVal) get_ConnectivityInfo;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendeeManager : IDispatch
		{
			public const new Guid IID = .(0xba3a37e8, 0x33da, 0x4749, 0x8d, 0xa0, 0x07, 0xfa, 0x34, 0xda, 0x79, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(int32 id, IRDPSRAPIAttendee** ppItem) mut
			{
				return VT.get_Item(&this, id, ppItem);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIAttendeeManager *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IRDPSRAPIAttendeeManager *self, int32 id, IRDPSRAPIAttendee** ppItem) get_Item;
			}
		}
		[CRepr]
		public struct IRDPSRAPIAttendeeDisconnectInfo : IDispatch
		{
			public const new Guid IID = .(0xc187689f, 0x447c, 0x44a1, 0x9c, 0x14, 0xff, 0xfb, 0xb3, 0xb7, 0xec, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Attendee(IRDPSRAPIAttendee** retval) mut
			{
				return VT.get_Attendee(&this, retval);
			}
			public HRESULT get_Reason(ATTENDEE_DISCONNECT_REASON* pReason) mut
			{
				return VT.get_Reason(&this, pReason);
			}
			public HRESULT get_Code(int32* pVal) mut
			{
				return VT.get_Code(&this, pVal);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, IRDPSRAPIAttendee** retval) get_Attendee;
				public new function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, ATTENDEE_DISCONNECT_REASON* pReason) get_Reason;
				public new function HRESULT(IRDPSRAPIAttendeeDisconnectInfo *self, int32* pVal) get_Code;
			}
		}
		[CRepr]
		public struct IRDPSRAPIVirtualChannel : IDispatch
		{
			public const new Guid IID = .(0x05e12f95, 0x28b3, 0x4c9a, 0x87, 0x80, 0xd0, 0x24, 0x85, 0x74, 0xa1, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendData(BSTR bstrData, int32 lAttendeeId, uint32 ChannelSendFlags) mut
			{
				return VT.SendData(&this, bstrData, lAttendeeId, ChannelSendFlags);
			}
			public HRESULT SetAccess(int32 lAttendeeId, CHANNEL_ACCESS_ENUM AccessType) mut
			{
				return VT.SetAccess(&this, lAttendeeId, AccessType);
			}
			public HRESULT get_Name(BSTR* pbstrName) mut
			{
				return VT.get_Name(&this, pbstrName);
			}
			public HRESULT get_Flags(int32* plFlags) mut
			{
				return VT.get_Flags(&this, plFlags);
			}
			public HRESULT get_Priority(CHANNEL_PRIORITY* pPriority) mut
			{
				return VT.get_Priority(&this, pPriority);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIVirtualChannel *self, BSTR bstrData, int32 lAttendeeId, uint32 ChannelSendFlags) SendData;
				public new function HRESULT(IRDPSRAPIVirtualChannel *self, int32 lAttendeeId, CHANNEL_ACCESS_ENUM AccessType) SetAccess;
				public new function HRESULT(IRDPSRAPIVirtualChannel *self, BSTR* pbstrName) get_Name;
				public new function HRESULT(IRDPSRAPIVirtualChannel *self, int32* plFlags) get_Flags;
				public new function HRESULT(IRDPSRAPIVirtualChannel *self, CHANNEL_PRIORITY* pPriority) get_Priority;
			}
		}
		[CRepr]
		public struct IRDPSRAPIVirtualChannelManager : IDispatch
		{
			public const new Guid IID = .(0x0d11c661, 0x5d0d, 0x4ee4, 0x89, 0xdf, 0x21, 0x66, 0xae, 0x1f, 0xdf, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IUnknown** retval) mut
			{
				return VT.get__NewEnum(&this, retval);
			}
			public HRESULT get_Item(VARIANT item, IRDPSRAPIVirtualChannel** pChannel) mut
			{
				return VT.get_Item(&this, item, pChannel);
			}
			public HRESULT CreateVirtualChannel(BSTR bstrChannelName, CHANNEL_PRIORITY Priority, uint32 ChannelFlags, IRDPSRAPIVirtualChannel** ppChannel) mut
			{
				return VT.CreateVirtualChannel(&this, bstrChannelName, Priority, ChannelFlags, ppChannel);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIVirtualChannelManager *self, IUnknown** retval) get__NewEnum;
				public new function HRESULT(IRDPSRAPIVirtualChannelManager *self, VARIANT item, IRDPSRAPIVirtualChannel** pChannel) get_Item;
				public new function HRESULT(IRDPSRAPIVirtualChannelManager *self, BSTR bstrChannelName, CHANNEL_PRIORITY Priority, uint32 ChannelFlags, IRDPSRAPIVirtualChannel** ppChannel) CreateVirtualChannel;
			}
		}
		[CRepr]
		public struct IRDPSRAPIViewer : IDispatch
		{
			public const new Guid IID = .(0xc6bfcd38, 0x8ce9, 0x404d, 0x8a, 0xe8, 0xf3, 0x1d, 0x00, 0xc6, 0x5c, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(BSTR bstrConnectionString, BSTR bstrName, BSTR bstrPassword) mut
			{
				return VT.Connect(&this, bstrConnectionString, bstrName, bstrPassword);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT get_Attendees(IRDPSRAPIAttendeeManager** ppVal) mut
			{
				return VT.get_Attendees(&this, ppVal);
			}
			public HRESULT get_Invitations(IRDPSRAPIInvitationManager** ppVal) mut
			{
				return VT.get_Invitations(&this, ppVal);
			}
			public HRESULT get_ApplicationFilter(IRDPSRAPIApplicationFilter** ppVal) mut
			{
				return VT.get_ApplicationFilter(&this, ppVal);
			}
			public HRESULT get_VirtualChannelManager(IRDPSRAPIVirtualChannelManager** ppVal) mut
			{
				return VT.get_VirtualChannelManager(&this, ppVal);
			}
			public HRESULT put_SmartSizing(int16 vbSmartSizing) mut
			{
				return VT.put_SmartSizing(&this, vbSmartSizing);
			}
			public HRESULT get_SmartSizing(int16* pvbSmartSizing) mut
			{
				return VT.get_SmartSizing(&this, pvbSmartSizing);
			}
			public HRESULT RequestControl(CTRL_LEVEL CtrlLevel) mut
			{
				return VT.RequestControl(&this, CtrlLevel);
			}
			public HRESULT put_DisconnectedText(BSTR bstrDisconnectedText) mut
			{
				return VT.put_DisconnectedText(&this, bstrDisconnectedText);
			}
			public HRESULT get_DisconnectedText(BSTR* pbstrDisconnectedText) mut
			{
				return VT.get_DisconnectedText(&this, pbstrDisconnectedText);
			}
			public HRESULT RequestColorDepthChange(int32 Bpp) mut
			{
				return VT.RequestColorDepthChange(&this, Bpp);
			}
			public HRESULT get_Properties(IRDPSRAPISessionProperties** ppVal) mut
			{
				return VT.get_Properties(&this, ppVal);
			}
			public HRESULT StartReverseConnectListener(BSTR bstrConnectionString, BSTR bstrUserName, BSTR bstrPassword, BSTR* pbstrReverseConnectString) mut
			{
				return VT.StartReverseConnectListener(&this, bstrConnectionString, bstrUserName, bstrPassword, pbstrReverseConnectString);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIViewer *self, BSTR bstrConnectionString, BSTR bstrName, BSTR bstrPassword) Connect;
				public new function HRESULT(IRDPSRAPIViewer *self) Disconnect;
				public new function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIAttendeeManager** ppVal) get_Attendees;
				public new function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIInvitationManager** ppVal) get_Invitations;
				public new function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIApplicationFilter** ppVal) get_ApplicationFilter;
				public new function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPIVirtualChannelManager** ppVal) get_VirtualChannelManager;
				public new function HRESULT(IRDPSRAPIViewer *self, int16 vbSmartSizing) put_SmartSizing;
				public new function HRESULT(IRDPSRAPIViewer *self, int16* pvbSmartSizing) get_SmartSizing;
				public new function HRESULT(IRDPSRAPIViewer *self, CTRL_LEVEL CtrlLevel) RequestControl;
				public new function HRESULT(IRDPSRAPIViewer *self, BSTR bstrDisconnectedText) put_DisconnectedText;
				public new function HRESULT(IRDPSRAPIViewer *self, BSTR* pbstrDisconnectedText) get_DisconnectedText;
				public new function HRESULT(IRDPSRAPIViewer *self, int32 Bpp) RequestColorDepthChange;
				public new function HRESULT(IRDPSRAPIViewer *self, IRDPSRAPISessionProperties** ppVal) get_Properties;
				public new function HRESULT(IRDPSRAPIViewer *self, BSTR bstrConnectionString, BSTR bstrUserName, BSTR bstrPassword, BSTR* pbstrReverseConnectString) StartReverseConnectListener;
			}
		}
		[CRepr]
		public struct IRDPViewerInputSink : IUnknown
		{
			public const new Guid IID = .(0xbb590853, 0xa6c5, 0x4a7b, 0x8d, 0xd4, 0x76, 0xb6, 0x9e, 0xea, 0x12, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendMouseButtonEvent(RDPSRAPI_MOUSE_BUTTON_TYPE buttonType, int16 vbButtonDown, uint32 xPos, uint32 yPos) mut
			{
				return VT.SendMouseButtonEvent(&this, buttonType, vbButtonDown, xPos, yPos);
			}
			public HRESULT SendMouseMoveEvent(uint32 xPos, uint32 yPos) mut
			{
				return VT.SendMouseMoveEvent(&this, xPos, yPos);
			}
			public HRESULT SendMouseWheelEvent(uint16 wheelRotation) mut
			{
				return VT.SendMouseWheelEvent(&this, wheelRotation);
			}
			public HRESULT SendKeyboardEvent(RDPSRAPI_KBD_CODE_TYPE codeType, uint16 keycode, int16 vbKeyUp, int16 vbRepeat, int16 vbExtended) mut
			{
				return VT.SendKeyboardEvent(&this, codeType, keycode, vbKeyUp, vbRepeat, vbExtended);
			}
			public HRESULT SendSyncEvent(uint32 syncFlags) mut
			{
				return VT.SendSyncEvent(&this, syncFlags);
			}
			public HRESULT BeginTouchFrame() mut
			{
				return VT.BeginTouchFrame(&this);
			}
			public HRESULT AddTouchInput(uint32 contactId, uint32 event, int32 x, int32 y) mut
			{
				return VT.AddTouchInput(&this, contactId, event, x, y);
			}
			public HRESULT EndTouchFrame() mut
			{
				return VT.EndTouchFrame(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPViewerInputSink *self, RDPSRAPI_MOUSE_BUTTON_TYPE buttonType, int16 vbButtonDown, uint32 xPos, uint32 yPos) SendMouseButtonEvent;
				public new function HRESULT(IRDPViewerInputSink *self, uint32 xPos, uint32 yPos) SendMouseMoveEvent;
				public new function HRESULT(IRDPViewerInputSink *self, uint16 wheelRotation) SendMouseWheelEvent;
				public new function HRESULT(IRDPViewerInputSink *self, RDPSRAPI_KBD_CODE_TYPE codeType, uint16 keycode, int16 vbKeyUp, int16 vbRepeat, int16 vbExtended) SendKeyboardEvent;
				public new function HRESULT(IRDPViewerInputSink *self, uint32 syncFlags) SendSyncEvent;
				public new function HRESULT(IRDPViewerInputSink *self) BeginTouchFrame;
				public new function HRESULT(IRDPViewerInputSink *self, uint32 contactId, uint32 event, int32 x, int32 y) AddTouchInput;
				public new function HRESULT(IRDPViewerInputSink *self) EndTouchFrame;
			}
		}
		[CRepr]
		public struct IRDPSRAPIFrameBuffer : IDispatch
		{
			public const new Guid IID = .(0x3d67e7d2, 0xb27b, 0x448e, 0x81, 0xb3, 0xc6, 0x11, 0x0e, 0xd8, 0xb4, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Width(int32* plWidth) mut
			{
				return VT.get_Width(&this, plWidth);
			}
			public HRESULT get_Height(int32* plHeight) mut
			{
				return VT.get_Height(&this, plHeight);
			}
			public HRESULT get_Bpp(int32* plBpp) mut
			{
				return VT.get_Bpp(&this, plBpp);
			}
			public HRESULT GetFrameBufferBits(int32 x, int32 y, int32 Width, int32 Heigth, SAFEARRAY** ppBits) mut
			{
				return VT.GetFrameBufferBits(&this, x, y, Width, Heigth, ppBits);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plWidth) get_Width;
				public new function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plHeight) get_Height;
				public new function HRESULT(IRDPSRAPIFrameBuffer *self, int32* plBpp) get_Bpp;
				public new function HRESULT(IRDPSRAPIFrameBuffer *self, int32 x, int32 y, int32 Width, int32 Heigth, SAFEARRAY** ppBits) GetFrameBufferBits;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStreamBuffer : IUnknown
		{
			public const new Guid IID = .(0x81c80290, 0x5085, 0x44b0, 0xb4, 0x60, 0xf8, 0x65, 0xc3, 0x9c, 0xb4, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Storage(uint8** ppbStorage) mut
			{
				return VT.get_Storage(&this, ppbStorage);
			}
			public HRESULT get_StorageSize(int32* plMaxStore) mut
			{
				return VT.get_StorageSize(&this, plMaxStore);
			}
			public HRESULT get_PayloadSize(int32* plRetVal) mut
			{
				return VT.get_PayloadSize(&this, plRetVal);
			}
			public HRESULT put_PayloadSize(int32 lVal) mut
			{
				return VT.put_PayloadSize(&this, lVal);
			}
			public HRESULT get_PayloadOffset(int32* plRetVal) mut
			{
				return VT.get_PayloadOffset(&this, plRetVal);
			}
			public HRESULT put_PayloadOffset(int32 lRetVal) mut
			{
				return VT.put_PayloadOffset(&this, lRetVal);
			}
			public HRESULT get_Flags(int32* plFlags) mut
			{
				return VT.get_Flags(&this, plFlags);
			}
			public HRESULT put_Flags(int32 lFlags) mut
			{
				return VT.put_Flags(&this, lFlags);
			}
			public HRESULT get_Context(IUnknown** ppContext) mut
			{
				return VT.get_Context(&this, ppContext);
			}
			public HRESULT put_Context(IUnknown* pContext) mut
			{
				return VT.put_Context(&this, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, uint8** ppbStorage) get_Storage;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plMaxStore) get_StorageSize;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plRetVal) get_PayloadSize;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lVal) put_PayloadSize;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plRetVal) get_PayloadOffset;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lRetVal) put_PayloadOffset;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32* plFlags) get_Flags;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, int32 lFlags) put_Flags;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, IUnknown** ppContext) get_Context;
				public new function HRESULT(IRDPSRAPITransportStreamBuffer *self, IUnknown* pContext) put_Context;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStreamEvents : IUnknown
		{
			public const new Guid IID = .(0xea81c254, 0xf5af, 0x4e40, 0x98, 0x2e, 0x3e, 0x63, 0xbb, 0x59, 0x52, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OnWriteCompleted(IRDPSRAPITransportStreamBuffer* pBuffer) mut
			{
				VT.OnWriteCompleted(&this, pBuffer);
			}
			public void OnReadCompleted(IRDPSRAPITransportStreamBuffer* pBuffer) mut
			{
				VT.OnReadCompleted(&this, pBuffer);
			}
			public void OnStreamClosed(HRESULT hrReason) mut
			{
				VT.OnStreamClosed(&this, hrReason);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IRDPSRAPITransportStreamEvents *self, IRDPSRAPITransportStreamBuffer* pBuffer) OnWriteCompleted;
				public new function void(IRDPSRAPITransportStreamEvents *self, IRDPSRAPITransportStreamBuffer* pBuffer) OnReadCompleted;
				public new function void(IRDPSRAPITransportStreamEvents *self, HRESULT hrReason) OnStreamClosed;
			}
		}
		[CRepr]
		public struct IRDPSRAPITransportStream : IUnknown
		{
			public const new Guid IID = .(0x36cfa065, 0x43bb, 0x4ef7, 0xae, 0xd7, 0x9b, 0x88, 0xa5, 0x05, 0x30, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocBuffer(int32 maxPayload, IRDPSRAPITransportStreamBuffer** ppBuffer) mut
			{
				return VT.AllocBuffer(&this, maxPayload, ppBuffer);
			}
			public HRESULT FreeBuffer(IRDPSRAPITransportStreamBuffer* pBuffer) mut
			{
				return VT.FreeBuffer(&this, pBuffer);
			}
			public HRESULT WriteBuffer(IRDPSRAPITransportStreamBuffer* pBuffer) mut
			{
				return VT.WriteBuffer(&this, pBuffer);
			}
			public HRESULT ReadBuffer(IRDPSRAPITransportStreamBuffer* pBuffer) mut
			{
				return VT.ReadBuffer(&this, pBuffer);
			}
			public HRESULT Open(IRDPSRAPITransportStreamEvents* pCallbacks) mut
			{
				return VT.Open(&this, pCallbacks);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRDPSRAPITransportStream *self, int32 maxPayload, IRDPSRAPITransportStreamBuffer** ppBuffer) AllocBuffer;
				public new function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) FreeBuffer;
				public new function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) WriteBuffer;
				public new function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamBuffer* pBuffer) ReadBuffer;
				public new function HRESULT(IRDPSRAPITransportStream *self, IRDPSRAPITransportStreamEvents* pCallbacks) Open;
				public new function HRESULT(IRDPSRAPITransportStream *self) Close;
			}
		}
		[CRepr]
		public struct IRDPSRAPISharingSession : IDispatch
		{
			public const new Guid IID = .(0xeeb20886, 0xe470, 0x4cf6, 0x84, 0x2b, 0x27, 0x39, 0xc0, 0xec, 0x5c, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT put_ColorDepth(int32 colorDepth) mut
			{
				return VT.put_ColorDepth(&this, colorDepth);
			}
			public HRESULT get_ColorDepth(int32* pColorDepth) mut
			{
				return VT.get_ColorDepth(&this, pColorDepth);
			}
			public HRESULT get_Properties(IRDPSRAPISessionProperties** ppVal) mut
			{
				return VT.get_Properties(&this, ppVal);
			}
			public HRESULT get_Attendees(IRDPSRAPIAttendeeManager** ppVal) mut
			{
				return VT.get_Attendees(&this, ppVal);
			}
			public HRESULT get_Invitations(IRDPSRAPIInvitationManager** ppVal) mut
			{
				return VT.get_Invitations(&this, ppVal);
			}
			public HRESULT get_ApplicationFilter(IRDPSRAPIApplicationFilter** ppVal) mut
			{
				return VT.get_ApplicationFilter(&this, ppVal);
			}
			public HRESULT get_VirtualChannelManager(IRDPSRAPIVirtualChannelManager** ppVal) mut
			{
				return VT.get_VirtualChannelManager(&this, ppVal);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT ConnectToClient(BSTR bstrConnectionString) mut
			{
				return VT.ConnectToClient(&this, bstrConnectionString);
			}
			public HRESULT SetDesktopSharedRect(int32 left, int32 top, int32 right, int32 bottom) mut
			{
				return VT.SetDesktopSharedRect(&this, left, top, right, bottom);
			}
			public HRESULT GetDesktopSharedRect(int32* pleft, int32* ptop, int32* pright, int32* pbottom) mut
			{
				return VT.GetDesktopSharedRect(&this, pleft, ptop, pright, pbottom);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IRDPSRAPISharingSession *self) Open;
				public new function HRESULT(IRDPSRAPISharingSession *self) Close;
				public new function HRESULT(IRDPSRAPISharingSession *self, int32 colorDepth) put_ColorDepth;
				public new function HRESULT(IRDPSRAPISharingSession *self, int32* pColorDepth) get_ColorDepth;
				public new function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPISessionProperties** ppVal) get_Properties;
				public new function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIAttendeeManager** ppVal) get_Attendees;
				public new function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIInvitationManager** ppVal) get_Invitations;
				public new function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIApplicationFilter** ppVal) get_ApplicationFilter;
				public new function HRESULT(IRDPSRAPISharingSession *self, IRDPSRAPIVirtualChannelManager** ppVal) get_VirtualChannelManager;
				public new function HRESULT(IRDPSRAPISharingSession *self) Pause;
				public new function HRESULT(IRDPSRAPISharingSession *self) Resume;
				public new function HRESULT(IRDPSRAPISharingSession *self, BSTR bstrConnectionString) ConnectToClient;
				public new function HRESULT(IRDPSRAPISharingSession *self, int32 left, int32 top, int32 right, int32 bottom) SetDesktopSharedRect;
				public new function HRESULT(IRDPSRAPISharingSession *self, int32* pleft, int32* ptop, int32* pright, int32* pbottom) GetDesktopSharedRect;
			}
		}
		[CRepr]
		public struct IRDPSRAPISharingSession2 : IRDPSRAPISharingSession
		{
			public const new Guid IID = .(0xfee4ee57, 0xe3e8, 0x4205, 0x8f, 0xb0, 0x8f, 0xd1, 0xd0, 0x67, 0x5c, 0x21);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectUsingTransportStream(IRDPSRAPITransportStream* pStream, BSTR bstrGroup, BSTR bstrAuthenticatedAttendeeName) mut
			{
				return VT.ConnectUsingTransportStream(&this, pStream, bstrGroup, bstrAuthenticatedAttendeeName);
			}
			public HRESULT get_FrameBuffer(IRDPSRAPIFrameBuffer** ppVal) mut
			{
				return VT.get_FrameBuffer(&this, ppVal);
			}
			public HRESULT SendControlLevelChangeResponse(IRDPSRAPIAttendee* pAttendee, CTRL_LEVEL RequestedLevel, int32 ReasonCode) mut
			{
				return VT.SendControlLevelChangeResponse(&this, pAttendee, RequestedLevel, ReasonCode);
			}
			[CRepr]
			public struct VTable : IRDPSRAPISharingSession.VTable
			{
				public new function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPITransportStream* pStream, BSTR bstrGroup, BSTR bstrAuthenticatedAttendeeName) ConnectUsingTransportStream;
				public new function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPIFrameBuffer** ppVal) get_FrameBuffer;
				public new function HRESULT(IRDPSRAPISharingSession2 *self, IRDPSRAPIAttendee* pAttendee, CTRL_LEVEL RequestedLevel, int32 ReasonCode) SendControlLevelChangeResponse;
			}
		}
		[CRepr]
		public struct _IRDPSessionEvents : IDispatch
		{
			public const new Guid IID = .(0x98a97042, 0x6698, 0x40e9, 0x8e, 0xfd, 0xb3, 0x20, 0x09, 0x90, 0x00, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		
	}
}
