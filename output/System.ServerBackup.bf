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
		
		[CRepr]
		public struct IWsbApplicationBackupSupport : IUnknown
		{
			public const new Guid IID = .(0x1eff3510, 0x4a27, 0x46ad, 0xb9, 0xe0, 0x08, 0x33, 0x2f, 0x0f, 0x4f, 0x6d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWsbApplicationBackupSupport *self, PWSTR wszWriterMetadata, PWSTR wszComponentName, PWSTR wszComponentLogicalPath, uint32 cVolumes, PWSTR* rgwszSourceVolumePath, PWSTR* rgwszSnapshotVolumePath, IWsbApplicationAsync** ppAsync) CheckConsistency;
			}
		}
		[CRepr]
		public struct IWsbApplicationRestoreSupport : IUnknown
		{
			public const new Guid IID = .(0x8d3bdb38, 0x4ee8, 0x4718, 0x85, 0xf9, 0xc7, 0xdb, 0xc4, 0xab, 0x77, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWsbApplicationRestoreSupport *self, PWSTR wszWriterMetadata, PWSTR wszComponentName, PWSTR wszComponentLogicalPath, BOOLEAN bNoRollForward) PreRestore;
				public function HRESULT(IWsbApplicationRestoreSupport *self, PWSTR wszWriterMetadata, PWSTR wszComponentName, PWSTR wszComponentLogicalPath, BOOLEAN bNoRollForward) PostRestore;
				public function HRESULT(IWsbApplicationRestoreSupport *self, uint32 cComponents, PWSTR* rgComponentName, PWSTR* rgComponentLogicalPaths, PWSTR** prgComponentName, PWSTR** prgComponentLogicalPath) OrderComponents;
				public function HRESULT(IWsbApplicationRestoreSupport *self, uint8* pbRollForwardSupported) IsRollForwardSupported;
			}
		}
		[CRepr]
		public struct IWsbApplicationAsync : IUnknown
		{
			public const new Guid IID = .(0x0843f6f7, 0x895c, 0x44a6, 0xb0, 0xc2, 0x05, 0xa5, 0x02, 0x2a, 0xa3, 0xa1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWsbApplicationAsync *self, HRESULT* phrResult) QueryStatus;
				public function HRESULT(IWsbApplicationAsync *self) Abort;
			}
		}
		
	}
}
