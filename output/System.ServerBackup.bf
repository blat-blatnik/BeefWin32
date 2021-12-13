using System;

// namespace System.ServerBackup
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WSB_MAX_OB_STATUS_VALUE_TYPE_PAIR = 5;
		public const uint32 WSB_MAX_OB_STATUS_ENTRY = 5;
		public const HRESULT WSBAPP_ASYNC_IN_PROGRESS = 7995396;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WSB_OB_STATUS_ENTRY_PAIR_TYPE : int32
		{
			WSB_OB_ET_UNDEFINED = 0,
			WSB_OB_ET_STRING = 1,
			WSB_OB_ET_NUMBER = 2,
			WSB_OB_ET_DATETIME = 3,
			WSB_OB_ET_TIME = 4,
			WSB_OB_ET_SIZE = 5,
			WSB_OB_ET_MAX = 6,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR
		{
			public PWSTR m_wszObStatusEntryPairValue;
			public WSB_OB_STATUS_ENTRY_PAIR_TYPE m_ObStatusEntryPairType;
		}
		[CRepr]
		public struct WSB_OB_STATUS_ENTRY
		{
			public uint32 m_dwIcon;
			public uint32 m_dwStatusEntryName;
			public uint32 m_dwStatusEntryValue;
			public uint32 m_cValueTypePair;
			public WSB_OB_STATUS_ENTRY_VALUE_TYPE_PAIR* m_rgValueTypePair;
		}
		[CRepr]
		public struct WSB_OB_STATUS_INFO
		{
			public Guid m_guidSnapinId;
			public uint32 m_cStatusEntry;
			public WSB_OB_STATUS_ENTRY* m_rgStatusEntry;
		}
		[CRepr]
		public struct WSB_OB_REGISTRATION_INFO
		{
			public PWSTR m_wszResourceDLL;
			public Guid m_guidSnapinId;
			public uint32 m_dwProviderName;
			public uint32 m_dwProviderIcon;
			public BOOLEAN m_bSupportsRemoting;
		}
		
		// --- COM Interfaces ---
		
		public struct IWsbApplicationBackupSupport {}
		public struct IWsbApplicationRestoreSupport {}
		public struct IWsbApplicationAsync {}
		
	}
}
