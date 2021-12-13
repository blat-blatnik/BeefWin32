using System;

// namespace UI.Notifications
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct NOTIFICATION_USER_INPUT_DATA
		{
			public PWSTR Key;
			public PWSTR Value;
		}
		
		// --- COM Interfaces ---
		
		public struct INotificationActivationCallback {}
		
	}
}
