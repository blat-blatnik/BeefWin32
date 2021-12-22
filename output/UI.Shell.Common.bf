using System;

// namespace UI.Shell.Common
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 PERCEIVEDFLAG_UNDEFINED = 0;
		public const uint32 PERCEIVEDFLAG_SOFTCODED = 1;
		public const uint32 PERCEIVEDFLAG_HARDCODED = 2;
		public const uint32 PERCEIVEDFLAG_NATIVESUPPORT = 4;
		public const uint32 PERCEIVEDFLAG_GDIPLUS = 16;
		public const uint32 PERCEIVEDFLAG_WMSDK = 32;
		public const uint32 PERCEIVEDFLAG_ZIPFOLDER = 64;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum STRRET_TYPE : int32
		{
			STRRET_WSTR = 0,
			STRRET_OFFSET = 1,
			STRRET_CSTR = 2,
		}
		[AllowDuplicates]
		public enum PERCEIVED : int32
		{
			PERCEIVED_TYPE_FIRST = -3,
			PERCEIVED_TYPE_CUSTOM = -3,
			PERCEIVED_TYPE_UNSPECIFIED = -2,
			PERCEIVED_TYPE_FOLDER = -1,
			PERCEIVED_TYPE_UNKNOWN = 0,
			PERCEIVED_TYPE_TEXT = 1,
			PERCEIVED_TYPE_IMAGE = 2,
			PERCEIVED_TYPE_AUDIO = 3,
			PERCEIVED_TYPE_VIDEO = 4,
			PERCEIVED_TYPE_COMPRESSED = 5,
			PERCEIVED_TYPE_DOCUMENT = 6,
			PERCEIVED_TYPE_SYSTEM = 7,
			PERCEIVED_TYPE_APPLICATION = 8,
			PERCEIVED_TYPE_GAMEMEDIA = 9,
			PERCEIVED_TYPE_CONTACTS = 10,
			PERCEIVED_TYPE_LAST = 10,
		}
		[AllowDuplicates]
		public enum SHCOLSTATE : int32
		{
			SHCOLSTATE_DEFAULT = 0,
			SHCOLSTATE_TYPE_STR = 1,
			SHCOLSTATE_TYPE_INT = 2,
			SHCOLSTATE_TYPE_DATE = 3,
			SHCOLSTATE_TYPEMASK = 15,
			SHCOLSTATE_ONBYDEFAULT = 16,
			SHCOLSTATE_SLOW = 32,
			SHCOLSTATE_EXTENDED = 64,
			SHCOLSTATE_SECONDARYUI = 128,
			SHCOLSTATE_HIDDEN = 256,
			SHCOLSTATE_PREFER_VARCMP = 512,
			SHCOLSTATE_PREFER_FMTCMP = 1024,
			SHCOLSTATE_NOSORTBYFOLDERNESS = 2048,
			SHCOLSTATE_VIEWONLY = 65536,
			SHCOLSTATE_BATCHREAD = 131072,
			SHCOLSTATE_NO_GROUPBY = 262144,
			SHCOLSTATE_FIXED_WIDTH = 4096,
			SHCOLSTATE_NODPISCALE = 8192,
			SHCOLSTATE_FIXED_RATIO = 16384,
			SHCOLSTATE_DISPLAYMASK = 61440,
		}
		[AllowDuplicates]
		public enum DEVICE_SCALE_FACTOR : int32
		{
			DEVICE_SCALE_FACTOR_INVALID = 0,
			SCALE_100_PERCENT = 100,
			SCALE_120_PERCENT = 120,
			SCALE_125_PERCENT = 125,
			SCALE_140_PERCENT = 140,
			SCALE_150_PERCENT = 150,
			SCALE_160_PERCENT = 160,
			SCALE_175_PERCENT = 175,
			SCALE_180_PERCENT = 180,
			SCALE_200_PERCENT = 200,
			SCALE_225_PERCENT = 225,
			SCALE_250_PERCENT = 250,
			SCALE_300_PERCENT = 300,
			SCALE_350_PERCENT = 350,
			SCALE_400_PERCENT = 400,
			SCALE_450_PERCENT = 450,
			SCALE_500_PERCENT = 500,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SHITEMID
		{
			public uint16 cb;
			public uint8[] abID;
		}
		[CRepr]
		public struct ITEMIDLIST
		{
			public SHITEMID mkid;
		}
		[CRepr]
		public struct STRRET
		{
			public uint32 uType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR pOleStr;
				public uint32 uOffset;
				public uint8[260] cStr;
			}
		}
		[CRepr]
		public struct SHELLDETAILS
		{
			public int32 fmt;
			public int32 cxChar;
			public STRRET str;
		}
		[CRepr]
		public struct COMDLG_FILTERSPEC
		{
			public PWSTR pszName;
			public PWSTR pszSpec;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IObjectArray : IUnknown
		{
			public const new Guid IID = .(0x92ca9dcd, 0x5622, 0x4bba, 0xa8, 0x05, 0x5e, 0x9f, 0x54, 0x1b, 0xd8, 0xc9);
			
			public function HRESULT(IObjectArray *self, uint32* pcObjects) GetCount;
			public function HRESULT(IObjectArray *self, uint32 uiIndex, Guid* riid, void** ppv) GetAt;
		}
		[CRepr]
		public struct IObjectCollection : IObjectArray
		{
			public const new Guid IID = .(0x5632b1a4, 0xe38a, 0x400a, 0x92, 0x8a, 0xd4, 0xcd, 0x63, 0x23, 0x02, 0x95);
			
			public function HRESULT(IObjectCollection *self, IUnknown* punk) AddObject;
			public function HRESULT(IObjectCollection *self, IObjectArray* poaSource) AddFromArray;
			public function HRESULT(IObjectCollection *self, uint32 uiIndex) RemoveObjectAt;
			public function HRESULT(IObjectCollection *self) Clear;
		}
		
	}
}
