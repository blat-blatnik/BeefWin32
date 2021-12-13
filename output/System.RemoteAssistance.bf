using System;

// namespace System.RemoteAssistance
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DISPID_EVENT_ON_STATE_CHANGED = 5;
		public const uint32 DISPID_EVENT_ON_TERMINATION = 6;
		public const uint32 DISPID_EVENT_ON_CONTEXT_DATA = 7;
		public const uint32 DISPID_EVENT_ON_SEND_ERROR = 8;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum RENDEZVOUS_SESSION_STATE : int32
		{
			RSS_UNKNOWN = 0,
			RSS_READY = 1,
			RSS_INVITATION = 2,
			RSS_ACCEPTED = 3,
			RSS_CONNECTED = 4,
			RSS_CANCELLED = 5,
			RSS_DECLINED = 6,
			RSS_TERMINATED = 7,
		}
		[AllowDuplicates]
		public enum RENDEZVOUS_SESSION_FLAGS : int32
		{
			RSF_NONE = 0,
			RSF_INVITER = 1,
			RSF_INVITEE = 2,
			RSF_ORIGINAL_INVITER = 4,
			RSF_REMOTE_LEGACYSESSION = 8,
			RSF_REMOTE_WIN7SESSION = 16,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RendezvousApplication = .(0x0b7e019a, 0xb5de, 0x47fa, 0x89, 0x66, 0x90, 0x82, 0xf8, 0x2f, 0xb1, 0x92);
		
		// --- COM Interfaces ---
		
		public struct IRendezvousSession {}
		public struct DRendezvousSessionEvents {}
		public struct IRendezvousApplication {}
		
	}
}
