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
			UNKNOWN = 0,
			READY = 1,
			INVITATION = 2,
			ACCEPTED = 3,
			CONNECTED = 4,
			CANCELLED = 5,
			DECLINED = 6,
			TERMINATED = 7,
		}
		[AllowDuplicates]
		public enum RENDEZVOUS_SESSION_FLAGS : int32
		{
			NONE = 0,
			INVITER = 1,
			INVITEE = 2,
			ORIGINAL_INVITER = 4,
			REMOTE_LEGACYSESSION = 8,
			REMOTE_WIN7SESSION = 16,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_RendezvousApplication = .(0x0b7e019a, 0xb5de, 0x47fa, 0x89, 0x66, 0x90, 0x82, 0xf8, 0x2f, 0xb1, 0x92);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IRendezvousSession : IUnknown
		{
			public const new Guid IID = .(0x9ba4b1dd, 0x8b0c, 0x48b7, 0x9e, 0x7c, 0x2f, 0x25, 0x85, 0x7c, 0x8d, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_State(RENDEZVOUS_SESSION_STATE* pSessionState) mut
			{
				return VT.get_State(&this, pSessionState);
			}
			public HRESULT get_RemoteUser(BSTR* bstrUserName) mut
			{
				return VT.get_RemoteUser(&this, bstrUserName);
			}
			public HRESULT get_Flags(int32* pFlags) mut
			{
				return VT.get_Flags(&this, pFlags);
			}
			public HRESULT SendContextData(BSTR bstrData) mut
			{
				return VT.SendContextData(&this, bstrData);
			}
			public HRESULT Terminate(HRESULT hr, BSTR bstrAppData) mut
			{
				return VT.Terminate(&this, hr, bstrAppData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRendezvousSession *self, RENDEZVOUS_SESSION_STATE* pSessionState) get_State;
				public new function HRESULT(IRendezvousSession *self, BSTR* bstrUserName) get_RemoteUser;
				public new function HRESULT(IRendezvousSession *self, int32* pFlags) get_Flags;
				public new function HRESULT(IRendezvousSession *self, BSTR bstrData) SendContextData;
				public new function HRESULT(IRendezvousSession *self, HRESULT hr, BSTR bstrAppData) Terminate;
			}
		}
		[CRepr]
		public struct DRendezvousSessionEvents : IDispatch
		{
			public const new Guid IID = .(0x3fa19cf8, 0x64c4, 0x4f53, 0xae, 0x60, 0x63, 0x5b, 0x38, 0x06, 0xec, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IRendezvousApplication : IUnknown
		{
			public const new Guid IID = .(0x4f4d070b, 0xa275, 0x49fb, 0xb1, 0x0d, 0x8e, 0xc2, 0x63, 0x87, 0xb5, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRendezvousSession(IUnknown* pRendezvousSession) mut
			{
				return VT.SetRendezvousSession(&this, pRendezvousSession);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRendezvousApplication *self, IUnknown* pRendezvousSession) SetRendezvousSession;
			}
		}
		
	}
}
