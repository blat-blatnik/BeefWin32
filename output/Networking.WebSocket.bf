using System;

// namespace Networking.WebSocket
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WEB_SOCKET_MAX_CLOSE_REASON_LENGTH = 123;
		
		// --- Typedefs ---
		
		public typealias WEB_SOCKET_HANDLE = int;
		
		// --- Enums ---
		
		public enum WEB_SOCKET_CLOSE_STATUS : int32
		{
			SUCCESS_CLOSE_STATUS = 1000,
			ENDPOINT_UNAVAILABLE_CLOSE_STATUS = 1001,
			PROTOCOL_ERROR_CLOSE_STATUS = 1002,
			INVALID_DATA_TYPE_CLOSE_STATUS = 1003,
			EMPTY_CLOSE_STATUS = 1005,
			ABORTED_CLOSE_STATUS = 1006,
			INVALID_PAYLOAD_CLOSE_STATUS = 1007,
			POLICY_VIOLATION_CLOSE_STATUS = 1008,
			MESSAGE_TOO_BIG_CLOSE_STATUS = 1009,
			UNSUPPORTED_EXTENSIONS_CLOSE_STATUS = 1010,
			SERVER_ERROR_CLOSE_STATUS = 1011,
			SECURE_HANDSHAKE_ERROR_CLOSE_STATUS = 1015,
		}
		public enum WEB_SOCKET_PROPERTY_TYPE : int32
		{
			RECEIVE_BUFFER_SIZE_PROPERTY_TYPE = 0,
			SEND_BUFFER_SIZE_PROPERTY_TYPE = 1,
			DISABLE_MASKING_PROPERTY_TYPE = 2,
			ALLOCATED_BUFFER_PROPERTY_TYPE = 3,
			DISABLE_UTF8_VERIFICATION_PROPERTY_TYPE = 4,
			KEEPALIVE_INTERVAL_PROPERTY_TYPE = 5,
			SUPPORTED_VERSIONS_PROPERTY_TYPE = 6,
		}
		public enum WEB_SOCKET_ACTION_QUEUE : int32
		{
			SEND_ACTION_QUEUE = 1,
			RECEIVE_ACTION_QUEUE = 2,
			ALL_ACTION_QUEUE = 3,
		}
		public enum WEB_SOCKET_BUFFER_TYPE : int32
		{
			UTF8_MESSAGE_BUFFER_TYPE = -2147483648,
			UTF8_FRAGMENT_BUFFER_TYPE = -2147483647,
			BINARY_MESSAGE_BUFFER_TYPE = -2147483646,
			BINARY_FRAGMENT_BUFFER_TYPE = -2147483645,
			CLOSE_BUFFER_TYPE = -2147483644,
			PING_PONG_BUFFER_TYPE = -2147483643,
			UNSOLICITED_PONG_BUFFER_TYPE = -2147483642,
		}
		public enum WEB_SOCKET_ACTION : int32
		{
			NO_ACTION = 0,
			SEND_TO_NETWORK_ACTION = 1,
			INDICATE_SEND_COMPLETE_ACTION = 2,
			RECEIVE_FROM_NETWORK_ACTION = 3,
			INDICATE_RECEIVE_COMPLETE_ACTION = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WEB_SOCKET_PROPERTY
		{
			public WEB_SOCKET_PROPERTY_TYPE Type;
			public void* pvValue;
			public uint32 ulValueSize;
		}
		[CRepr]
		public struct WEB_SOCKET_HTTP_HEADER
		{
			public PSTR pcName;
			public uint32 ulNameLength;
			public PSTR pcValue;
			public uint32 ulValueLength;
		}
		[CRepr, Union]
		public struct WEB_SOCKET_BUFFER
		{
			public _Data_e__Struct Data;
			public _CloseStatus_e__Struct CloseStatus;
			
			[CRepr]
			public struct _Data_e__Struct
			{
				public uint8* pbBuffer;
				public uint32 ulBufferLength;
			}
			[CRepr]
			public struct _CloseStatus_e__Struct
			{
				public uint8* pbReason;
				public uint32 ulReasonLength;
				public uint16 usStatus;
			}
		}
		
		// --- Functions ---
		
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketCreateClientHandle(WEB_SOCKET_PROPERTY* pProperties, uint32 ulPropertyCount, out WEB_SOCKET_HANDLE phWebSocket);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketBeginClientHandshake(WEB_SOCKET_HANDLE hWebSocket, PSTR* pszSubprotocols, uint32 ulSubprotocolCount, PSTR* pszExtensions, uint32 ulExtensionCount, WEB_SOCKET_HTTP_HEADER* pInitialHeaders, uint32 ulInitialHeaderCount, WEB_SOCKET_HTTP_HEADER** pAdditionalHeaders, out uint32 pulAdditionalHeaderCount);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketEndClientHandshake(WEB_SOCKET_HANDLE hWebSocket, WEB_SOCKET_HTTP_HEADER* pResponseHeaders, uint32 ulReponseHeaderCount, uint32* pulSelectedExtensions, uint32* pulSelectedExtensionCount, uint32* pulSelectedSubprotocol);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketCreateServerHandle(WEB_SOCKET_PROPERTY* pProperties, uint32 ulPropertyCount, out WEB_SOCKET_HANDLE phWebSocket);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketBeginServerHandshake(WEB_SOCKET_HANDLE hWebSocket, PSTR pszSubprotocolSelected, PSTR* pszExtensionSelected, uint32 ulExtensionSelectedCount, WEB_SOCKET_HTTP_HEADER* pRequestHeaders, uint32 ulRequestHeaderCount, WEB_SOCKET_HTTP_HEADER** pResponseHeaders, out uint32 pulResponseHeaderCount);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketEndServerHandshake(WEB_SOCKET_HANDLE hWebSocket);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketSend(WEB_SOCKET_HANDLE hWebSocket, WEB_SOCKET_BUFFER_TYPE BufferType, WEB_SOCKET_BUFFER* pBuffer, void* Context);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketReceive(WEB_SOCKET_HANDLE hWebSocket, WEB_SOCKET_BUFFER* pBuffer, void* pvContext);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketGetAction(WEB_SOCKET_HANDLE hWebSocket, WEB_SOCKET_ACTION_QUEUE eActionQueue, WEB_SOCKET_BUFFER* pDataBuffers, out uint32 pulDataBufferCount, out WEB_SOCKET_ACTION pAction, out WEB_SOCKET_BUFFER_TYPE pBufferType, void** pvApplicationContext, void** pvActionContext);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WebSocketCompleteAction(WEB_SOCKET_HANDLE hWebSocket, void* pvActionContext, uint32 ulBytesTransferred);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WebSocketAbortHandle(WEB_SOCKET_HANDLE hWebSocket);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void WebSocketDeleteHandle(WEB_SOCKET_HANDLE hWebSocket);
		[Import("websocket.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WebSocketGetGlobalProperty(WEB_SOCKET_PROPERTY_TYPE eType, void* pvValue, out uint32 ulSize);
	}
}
