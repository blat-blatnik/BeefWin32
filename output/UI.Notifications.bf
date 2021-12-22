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
		
		[CRepr]
		public struct INotificationActivationCallback : IUnknown
		{
			public const new Guid IID = .(0x53e31837, 0x6600, 0x4a81, 0x93, 0x95, 0x75, 0xcf, 0xfe, 0x74, 0x6f, 0x94);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(INotificationActivationCallback *self, PWSTR appUserModelId, PWSTR invokedArgs, NOTIFICATION_USER_INPUT_DATA* data, uint32 count) Activate;
			}
		}
		
	}
}
