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
		
		public enum STRRET_TYPE : int32
		{
			WSTR = 0,
			OFFSET = 1,
			CSTR = 2,
		}
		[AllowDuplicates]
		public enum PERCEIVED : int32
		{
			FIRST = -3,
			CUSTOM = -3,
			UNSPECIFIED = -2,
			FOLDER = -1,
			UNKNOWN = 0,
			TEXT = 1,
			IMAGE = 2,
			AUDIO = 3,
			VIDEO = 4,
			COMPRESSED = 5,
			DOCUMENT = 6,
			SYSTEM = 7,
			APPLICATION = 8,
			GAMEMEDIA = 9,
			CONTACTS = 10,
			LAST = 10,
		}
		public enum SHCOLSTATE : int32
		{
			DEFAULT = 0,
			TYPE_STR = 1,
			TYPE_INT = 2,
			TYPE_DATE = 3,
			TYPEMASK = 15,
			ONBYDEFAULT = 16,
			SLOW = 32,
			EXTENDED = 64,
			SECONDARYUI = 128,
			HIDDEN = 256,
			PREFER_VARCMP = 512,
			PREFER_FMTCMP = 1024,
			NOSORTBYFOLDERNESS = 2048,
			VIEWONLY = 65536,
			BATCHREAD = 131072,
			NO_GROUPBY = 262144,
			FIXED_WIDTH = 4096,
			NODPISCALE = 8192,
			FIXED_RATIO = 16384,
			DISPLAYMASK = 61440,
		}
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
		
		[CRepr, Packed(1)]
		public struct SHITEMID
		{
			public uint16 cb;
			public uint8[0] abID;
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
		[CRepr, Packed(1)]
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pcObjects) mut => VT.GetCount(ref this, out pcObjects);
			public HRESULT GetAt(uint32 uiIndex, in Guid riid, void** ppv) mut => VT.GetAt(ref this, uiIndex, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectArray self, out uint32 pcObjects) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectArray self, uint32 uiIndex, in Guid riid, void** ppv) GetAt;
			}
		}
		[CRepr]
		public struct IObjectCollection : IObjectArray
		{
			public const new Guid IID = .(0x5632b1a4, 0xe38a, 0x400a, 0x92, 0x8a, 0xd4, 0xcd, 0x63, 0x23, 0x02, 0x95);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddObject(ref IUnknown punk) mut => VT.AddObject(ref this, ref punk);
			public HRESULT AddFromArray(ref IObjectArray poaSource) mut => VT.AddFromArray(ref this, ref poaSource);
			public HRESULT RemoveObjectAt(uint32 uiIndex) mut => VT.RemoveObjectAt(ref this, uiIndex);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IObjectArray.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectCollection self, ref IUnknown punk) AddObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectCollection self, ref IObjectArray poaSource) AddFromArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectCollection self, uint32 uiIndex) RemoveObjectAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectCollection self) Clear;
			}
		}
		
	}
}
