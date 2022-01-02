using System;

// namespace UI.ColorSystem
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CATID_WcsPlugin = .(0xa0b402e0, 0x8240, 0x405f, 0x8a, 0x16, 0x8a, 0x5b, 0x4d, 0xf2, 0xf0, 0xdd);
		public const uint32 MAX_COLOR_CHANNELS = 8;
		public const uint32 INTENT_PERCEPTUAL = 0;
		public const uint32 INTENT_RELATIVE_COLORIMETRIC = 1;
		public const uint32 INTENT_SATURATION = 2;
		public const uint32 INTENT_ABSOLUTE_COLORIMETRIC = 3;
		public const uint32 FLAG_EMBEDDEDPROFILE = 1;
		public const uint32 FLAG_DEPENDENTONDATA = 2;
		public const uint32 FLAG_ENABLE_CHROMATIC_ADAPTATION = 33554432;
		public const uint32 ATTRIB_TRANSPARENCY = 1;
		public const uint32 ATTRIB_MATTE = 2;
		public const uint32 PROFILE_FILENAME = 1;
		public const uint32 PROFILE_MEMBUFFER = 2;
		public const uint32 PROFILE_READ = 1;
		public const uint32 PROFILE_READWRITE = 2;
		public const uint32 INDEX_DONT_CARE = 0;
		public const uint32 CMM_FROM_PROFILE = 0;
		public const uint32 ENUM_TYPE_VERSION = 768;
		public const uint32 ET_DEVICENAME = 1;
		public const uint32 ET_MEDIATYPE = 2;
		public const uint32 ET_DITHERMODE = 4;
		public const uint32 ET_RESOLUTION = 8;
		public const uint32 ET_CMMTYPE = 16;
		public const uint32 ET_CLASS = 32;
		public const uint32 ET_DATACOLORSPACE = 64;
		public const uint32 ET_CONNECTIONSPACE = 128;
		public const uint32 ET_SIGNATURE = 256;
		public const uint32 ET_PLATFORM = 512;
		public const uint32 ET_PROFILEFLAGS = 1024;
		public const uint32 ET_MANUFACTURER = 2048;
		public const uint32 ET_MODEL = 4096;
		public const uint32 ET_ATTRIBUTES = 8192;
		public const uint32 ET_RENDERINGINTENT = 16384;
		public const uint32 ET_CREATOR = 32768;
		public const uint32 ET_DEVICECLASS = 65536;
		public const uint32 ET_STANDARDDISPLAYCOLOR = 131072;
		public const uint32 ET_EXTENDEDDISPLAYCOLOR = 262144;
		public const uint32 PROOF_MODE = 1;
		public const uint32 NORMAL_MODE = 2;
		public const uint32 BEST_MODE = 3;
		public const uint32 ENABLE_GAMUT_CHECKING = 65536;
		public const uint32 USE_RELATIVE_COLORIMETRIC = 131072;
		public const uint32 FAST_TRANSLATE = 262144;
		public const uint32 PRESERVEBLACK = 1048576;
		public const uint32 WCS_ALWAYS = 2097152;
		public const uint32 SEQUENTIAL_TRANSFORM = 2155872256;
		public const uint32 RESERVED = 2147483648;
		public const uint32 CSA_A = 1;
		public const uint32 CSA_ABC = 2;
		public const uint32 CSA_DEF = 3;
		public const uint32 CSA_DEFG = 4;
		public const uint32 CSA_GRAY = 5;
		public const uint32 CSA_RGB = 6;
		public const uint32 CSA_CMYK = 7;
		public const uint32 CSA_Lab = 8;
		public const uint32 CMM_WIN_VERSION = 0;
		public const uint32 CMM_IDENT = 1;
		public const uint32 CMM_DRIVER_VERSION = 2;
		public const uint32 CMM_DLL_VERSION = 3;
		public const uint32 CMM_VERSION = 4;
		public const uint32 CMM_DESCRIPTION = 5;
		public const uint32 CMM_LOGOICON = 6;
		public const uint32 CMS_FORWARD = 0;
		public const uint32 CMS_BACKWARD = 1;
		public const uint32 COLOR_MATCH_VERSION = 512;
		public const uint32 CMS_DISABLEICM = 1;
		public const uint32 CMS_ENABLEPROOFING = 2;
		public const uint32 CMS_SETRENDERINTENT = 4;
		public const uint32 CMS_SETPROOFINTENT = 8;
		public const uint32 CMS_SETMONITORPROFILE = 16;
		public const uint32 CMS_SETPRINTERPROFILE = 32;
		public const uint32 CMS_SETTARGETPROFILE = 64;
		public const uint32 CMS_USEHOOK = 128;
		public const uint32 CMS_USEAPPLYCALLBACK = 256;
		public const uint32 CMS_USEDESCRIPTION = 512;
		public const uint32 CMS_DISABLEINTENT = 1024;
		public const uint32 CMS_DISABLERENDERINTENT = 2048;
		public const int32 CMS_MONITOROVERFLOW = -2147483648;
		public const int32 CMS_PRINTEROVERFLOW = 1073741824;
		public const int32 CMS_TARGETOVERFLOW = 536870912;
		public const int32 DONT_USE_EMBEDDED_WCS_PROFILES = 1;
		public const int32 WCS_DEFAULT = 0;
		public const int32 WCS_ICCONLY = 65536;
		
		// --- Typedefs ---
		
		public typealias HCOLORSPACE = int;
		
		// --- Enums ---
		
		public enum ICM_COMMAND : uint32
		{
			ADDPROFILE = 1,
			DELETEPROFILE = 2,
			QUERYPROFILE = 3,
			SETDEFAULTPROFILE = 4,
			REGISTERICMATCHER = 5,
			UNREGISTERICMATCHER = 6,
			QUERYMATCH = 7,
		}
		public enum COLOR_MATCH_TO_TARGET_ACTION : int32
		{
			ENABLE = 1,
			DISABLE = 2,
			DELETE_TRANSFORM = 3,
		}
		public enum COLORTYPE : int32
		{
			GRAY = 1,
			RGB = 2,
			XYZ = 3,
			Yxy = 4,
			Lab = 5,
			_3_CHANNEL = 6,
			CMYK = 7,
			_5_CHANNEL = 8,
			_6_CHANNEL = 9,
			_7_CHANNEL = 10,
			_8_CHANNEL = 11,
			NAMED = 12,
		}
		public enum COLORPROFILETYPE : int32
		{
			ICC = 0,
			DMP = 1,
			CAMP = 2,
			GMMP = 3,
		}
		public enum COLORPROFILESUBTYPE : int32
		{
			PERCEPTUAL = 0,
			RELATIVE_COLORIMETRIC = 1,
			SATURATION = 2,
			ABSOLUTE_COLORIMETRIC = 3,
			NONE = 4,
			RGB_WORKING_SPACE = 5,
			CUSTOM_WORKING_SPACE = 6,
			STANDARD_DISPLAY_COLOR_MODE = 7,
			EXTENDED_DISPLAY_COLOR_MODE = 8,
		}
		public enum COLORDATATYPE : int32
		{
			BYTE = 1,
			WORD = 2,
			FLOAT = 3,
			S2DOT13FIXED = 4,
			_10b_R10G10B10A2 = 5,
			_10b_R10G10B10A2_XR = 6,
			FLOAT16 = 7,
		}
		public enum BMFORMAT : int32
		{
			x555RGB = 0,
			x555XYZ = 257,
			x555Yxy = 258,
			x555Lab = 259,
			x555G3CH = 260,
			RGBTRIPLETS = 2,
			BGRTRIPLETS = 4,
			XYZTRIPLETS = 513,
			YxyTRIPLETS = 514,
			LabTRIPLETS = 515,
			G3CHTRIPLETS = 516,
			_5CHANNEL = 517,
			_6CHANNEL = 518,
			_7CHANNEL = 519,
			_8CHANNEL = 520,
			GRAY = 521,
			xRGBQUADS = 8,
			xBGRQUADS = 16,
			xG3CHQUADS = 772,
			KYMCQUADS = 773,
			CMYKQUADS = 32,
			_10b_RGB = 9,
			_10b_XYZ = 1025,
			_10b_Yxy = 1026,
			_10b_Lab = 1027,
			_10b_G3CH = 1028,
			NAMED_INDEX = 1029,
			_16b_RGB = 10,
			_16b_XYZ = 1281,
			_16b_Yxy = 1282,
			_16b_Lab = 1283,
			_16b_G3CH = 1284,
			_16b_GRAY = 1285,
			_565RGB = 1,
			_32b_scRGB = 1537,
			_32b_scARGB = 1538,
			S2DOT13FIXED_scRGB = 1539,
			S2DOT13FIXED_scARGB = 1540,
			R10G10B10A2 = 1793,
			R10G10B10A2_XR = 1794,
			R16G16B16A16_FLOAT = 1795,
		}
		public enum WCS_PROFILE_MANAGEMENT_SCOPE : int32
		{
			SYSTEM_WIDE = 0,
			CURRENT_USER = 1,
		}
		public enum WCS_DEVICE_CAPABILITIES_TYPE : int32
		{
			VideoCardGammaTable = 1,
			MicrosoftHardwareColorV2 = 2,
		}
		
		// --- Function Pointers ---
		
		public function int32 ICMENUMPROCA(PSTR param0, LPARAM param1);
		public function int32 ICMENUMPROCW(PWSTR param0, LPARAM param1);
		public function BOOL LPBMCALLBACKFN(uint32 param0, uint32 param1, LPARAM param2);
		public function BOOL PCMSCALLBACKW(out COLORMATCHSETUPW param0, LPARAM param1);
		public function BOOL PCMSCALLBACKA(out COLORMATCHSETUPA param0, LPARAM param1);
		
		// --- Structs ---
		
		[CRepr]
		public struct LOGCOLORSPACEA
		{
			public uint32 lcsSignature;
			public uint32 lcsVersion;
			public uint32 lcsSize;
			public int32 lcsCSType;
			public int32 lcsIntent;
			public CIEXYZTRIPLE lcsEndpoints;
			public uint32 lcsGammaRed;
			public uint32 lcsGammaGreen;
			public uint32 lcsGammaBlue;
			public CHAR[260] lcsFilename;
		}
		[CRepr]
		public struct LOGCOLORSPACEW
		{
			public uint32 lcsSignature;
			public uint32 lcsVersion;
			public uint32 lcsSize;
			public int32 lcsCSType;
			public int32 lcsIntent;
			public CIEXYZTRIPLE lcsEndpoints;
			public uint32 lcsGammaRed;
			public uint32 lcsGammaGreen;
			public uint32 lcsGammaBlue;
			public char16[260] lcsFilename;
		}
		[CRepr]
		public struct EMRCREATECOLORSPACE
		{
			public EMR emr;
			public uint32 ihCS;
			public LOGCOLORSPACEA lcs;
		}
		[CRepr]
		public struct EMRCREATECOLORSPACEW
		{
			public EMR emr;
			public uint32 ihCS;
			public LOGCOLORSPACEW lcs;
			public uint32 dwFlags;
			public uint32 cbData;
			public uint8[0] Data;
		}
		[CRepr]
		public struct XYZColorF
		{
			public float X;
			public float Y;
			public float Z;
		}
		[CRepr]
		public struct JChColorF
		{
			public float J;
			public float C;
			public float h;
		}
		[CRepr]
		public struct JabColorF
		{
			public float J;
			public float a;
			public float b;
		}
		[CRepr]
		public struct GamutShellTriangle
		{
			public uint32[3] aVertexIndex;
		}
		[CRepr]
		public struct GamutShell
		{
			public float JMin;
			public float JMax;
			public uint32 cVertices;
			public uint32 cTriangles;
			public JabColorF* pVertices;
			public GamutShellTriangle* pTriangles;
		}
		[CRepr]
		public struct PrimaryJabColors
		{
			public JabColorF red;
			public JabColorF yellow;
			public JabColorF green;
			public JabColorF cyan;
			public JabColorF blue;
			public JabColorF magenta;
			public JabColorF black;
			public JabColorF white;
		}
		[CRepr]
		public struct PrimaryXYZColors
		{
			public XYZColorF red;
			public XYZColorF yellow;
			public XYZColorF green;
			public XYZColorF cyan;
			public XYZColorF blue;
			public XYZColorF magenta;
			public XYZColorF black;
			public XYZColorF white;
		}
		[CRepr]
		public struct GamutBoundaryDescription
		{
			public PrimaryJabColors* pPrimaries;
			public uint32 cNeutralSamples;
			public JabColorF* pNeutralSamples;
			public GamutShell* pReferenceShell;
			public GamutShell* pPlausibleShell;
			public GamutShell* pPossibleShell;
		}
		[CRepr]
		public struct BlackInformation
		{
			public BOOL fBlackOnly;
			public float blackWeight;
		}
		[CRepr]
		public struct NAMED_PROFILE_INFO
		{
			public uint32 dwFlags;
			public uint32 dwCount;
			public uint32 dwCountDevCoordinates;
			public int8[32] szPrefix;
			public int8[32] szSuffix;
		}
		[CRepr]
		public struct GRAYCOLOR
		{
			public uint16 gray;
		}
		[CRepr]
		public struct RGBCOLOR
		{
			public uint16 red;
			public uint16 green;
			public uint16 blue;
		}
		[CRepr]
		public struct CMYKCOLOR
		{
			public uint16 cyan;
			public uint16 magenta;
			public uint16 yellow;
			public uint16 black;
		}
		[CRepr]
		public struct XYZCOLOR
		{
			public uint16 X;
			public uint16 Y;
			public uint16 Z;
		}
		[CRepr]
		public struct YxyCOLOR
		{
			public uint16 Y;
			public uint16 x;
			public uint16 y;
		}
		[CRepr]
		public struct LabCOLOR
		{
			public uint16 L;
			public uint16 a;
			public uint16 b;
		}
		[CRepr]
		public struct GENERIC3CHANNEL
		{
			public uint16 ch1;
			public uint16 ch2;
			public uint16 ch3;
		}
		[CRepr]
		public struct NAMEDCOLOR
		{
			public uint32 dwIndex;
		}
		[CRepr]
		public struct HiFiCOLOR
		{
			public uint8[8] channel;
		}
		[CRepr, Union]
		public struct COLOR
		{
			public GRAYCOLOR gray;
			public RGBCOLOR rgb;
			public CMYKCOLOR cmyk;
			public XYZCOLOR XYZ;
			public YxyCOLOR Yxy;
			public LabCOLOR Lab;
			public GENERIC3CHANNEL gen3ch;
			public NAMEDCOLOR named;
			public HiFiCOLOR hifi;
			public _Anonymous_e__Struct Anonymous;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint32 reserved1;
				public void* reserved2;
			}
		}
		[CRepr]
		public struct PROFILEHEADER
		{
			public uint32 phSize;
			public uint32 phCMMType;
			public uint32 phVersion;
			public uint32 phClass;
			public uint32 phDataColorSpace;
			public uint32 phConnectionSpace;
			public uint32[3] phDateTime;
			public uint32 phSignature;
			public uint32 phPlatform;
			public uint32 phProfileFlags;
			public uint32 phManufacturer;
			public uint32 phModel;
			public uint32[2] phAttributes;
			public uint32 phRenderingIntent;
			public CIEXYZ phIlluminant;
			public uint32 phCreator;
			public uint8[44] phReserved;
		}
		[CRepr]
		public struct PROFILE
		{
			public uint32 dwType;
			public void* pProfileData;
			public uint32 cbDataSize;
		}
		[CRepr]
		public struct ENUMTYPEA
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwFields;
			public PSTR pDeviceName;
			public uint32 dwMediaType;
			public uint32 dwDitheringMode;
			public uint32[2] dwResolution;
			public uint32 dwCMMType;
			public uint32 dwClass;
			public uint32 dwDataColorSpace;
			public uint32 dwConnectionSpace;
			public uint32 dwSignature;
			public uint32 dwPlatform;
			public uint32 dwProfileFlags;
			public uint32 dwManufacturer;
			public uint32 dwModel;
			public uint32[2] dwAttributes;
			public uint32 dwRenderingIntent;
			public uint32 dwCreator;
			public uint32 dwDeviceClass;
		}
		[CRepr]
		public struct ENUMTYPEW
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwFields;
			public PWSTR pDeviceName;
			public uint32 dwMediaType;
			public uint32 dwDitheringMode;
			public uint32[2] dwResolution;
			public uint32 dwCMMType;
			public uint32 dwClass;
			public uint32 dwDataColorSpace;
			public uint32 dwConnectionSpace;
			public uint32 dwSignature;
			public uint32 dwPlatform;
			public uint32 dwProfileFlags;
			public uint32 dwManufacturer;
			public uint32 dwModel;
			public uint32[2] dwAttributes;
			public uint32 dwRenderingIntent;
			public uint32 dwCreator;
			public uint32 dwDeviceClass;
		}
		[CRepr]
		public struct COLORMATCHSETUPW
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public HWND hwndOwner;
			public PWSTR pSourceName;
			public PWSTR pDisplayName;
			public PWSTR pPrinterName;
			public uint32 dwRenderIntent;
			public uint32 dwProofingIntent;
			public PWSTR pMonitorProfile;
			public uint32 ccMonitorProfile;
			public PWSTR pPrinterProfile;
			public uint32 ccPrinterProfile;
			public PWSTR pTargetProfile;
			public uint32 ccTargetProfile;
			public DLGPROC lpfnHook;
			public LPARAM lParam;
			public PCMSCALLBACKW lpfnApplyCallback;
			public LPARAM lParamApplyCallback;
		}
		[CRepr]
		public struct COLORMATCHSETUPA
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwFlags;
			public HWND hwndOwner;
			public PSTR pSourceName;
			public PSTR pDisplayName;
			public PSTR pPrinterName;
			public uint32 dwRenderIntent;
			public uint32 dwProofingIntent;
			public PSTR pMonitorProfile;
			public uint32 ccMonitorProfile;
			public PSTR pPrinterProfile;
			public uint32 ccPrinterProfile;
			public PSTR pTargetProfile;
			public uint32 ccTargetProfile;
			public DLGPROC lpfnHook;
			public LPARAM lParam;
			public PCMSCALLBACKA lpfnApplyCallback;
			public LPARAM lParamApplyCallback;
		}
		[CRepr]
		public struct WCS_DEVICE_VCGT_CAPABILITIES
		{
			public uint32 Size;
			public BOOL SupportsVcgt;
		}
		[CRepr]
		public struct WCS_DEVICE_MHC2_CAPABILITIES
		{
			public uint32 Size;
			public BOOL SupportsMhc2;
			public uint32 RegammaLutEntryCount;
			public uint32 CscXyzMatrixRows;
			public uint32 CscXyzMatrixColumns;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDeviceModelPlugIn : IUnknown
		{
			public const new Guid IID = .(0x1cd63475, 0x07c4, 0x46fe, 0xa9, 0x03, 0xd6, 0x55, 0x31, 0x6d, 0x11, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrXml, uint32 cNumModels, uint32 iModelPosition) mut => VT.Initialize(ref this, bstrXml, cNumModels, iModelPosition);
			public HRESULT GetNumChannels(out uint32 pNumChannels) mut => VT.GetNumChannels(ref this, out pNumChannels);
			public HRESULT DeviceToColorimetricColors(uint32 cColors, uint32 cChannels, in float pDeviceValues, XYZColorF* pXYZColors) mut => VT.DeviceToColorimetricColors(ref this, cColors, cChannels, pDeviceValues, pXYZColors);
			public HRESULT ColorimetricToDeviceColors(uint32 cColors, uint32 cChannels, XYZColorF* pXYZColors, out float pDeviceValues) mut => VT.ColorimetricToDeviceColors(ref this, cColors, cChannels, pXYZColors, out pDeviceValues);
			public HRESULT ColorimetricToDeviceColorsWithBlack(uint32 cColors, uint32 cChannels, XYZColorF* pXYZColors, BlackInformation* pBlackInformation, out float pDeviceValues) mut => VT.ColorimetricToDeviceColorsWithBlack(ref this, cColors, cChannels, pXYZColors, pBlackInformation, out pDeviceValues);
			public HRESULT SetTransformDeviceModelInfo(uint32 iModelPosition, ref IDeviceModelPlugIn pIDeviceModelOther) mut => VT.SetTransformDeviceModelInfo(ref this, iModelPosition, ref pIDeviceModelOther);
			public HRESULT GetPrimarySamples(out PrimaryXYZColors pPrimaryColor) mut => VT.GetPrimarySamples(ref this, out pPrimaryColor);
			public HRESULT GetGamutBoundaryMeshSize(out uint32 pNumVertices, out uint32 pNumTriangles) mut => VT.GetGamutBoundaryMeshSize(ref this, out pNumVertices, out pNumTriangles);
			public HRESULT GetGamutBoundaryMesh(uint32 cChannels, uint32 cVertices, uint32 cTriangles, out float pVertices, GamutShellTriangle* pTriangles) mut => VT.GetGamutBoundaryMesh(ref this, cChannels, cVertices, cTriangles, out pVertices, pTriangles);
			public HRESULT GetNeutralAxisSize(out uint32 pcColors) mut => VT.GetNeutralAxisSize(ref this, out pcColors);
			public HRESULT GetNeutralAxis(uint32 cColors, XYZColorF* pXYZColors) mut => VT.GetNeutralAxis(ref this, cColors, pXYZColors);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, BSTR bstrXml, uint32 cNumModels, uint32 iModelPosition) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, out uint32 pNumChannels) GetNumChannels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 cColors, uint32 cChannels, in float pDeviceValues, XYZColorF* pXYZColors) DeviceToColorimetricColors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 cColors, uint32 cChannels, XYZColorF* pXYZColors, out float pDeviceValues) ColorimetricToDeviceColors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 cColors, uint32 cChannels, XYZColorF* pXYZColors, BlackInformation* pBlackInformation, out float pDeviceValues) ColorimetricToDeviceColorsWithBlack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 iModelPosition, ref IDeviceModelPlugIn pIDeviceModelOther) SetTransformDeviceModelInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, out PrimaryXYZColors pPrimaryColor) GetPrimarySamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, out uint32 pNumVertices, out uint32 pNumTriangles) GetGamutBoundaryMeshSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 cChannels, uint32 cVertices, uint32 cTriangles, out float pVertices, GamutShellTriangle* pTriangles) GetGamutBoundaryMesh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, out uint32 pcColors) GetNeutralAxisSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeviceModelPlugIn self, uint32 cColors, XYZColorF* pXYZColors) GetNeutralAxis;
			}
		}
		[CRepr]
		public struct IGamutMapModelPlugIn : IUnknown
		{
			public const new Guid IID = .(0x2dd80115, 0xad1e, 0x41f6, 0xa2, 0x19, 0xa4, 0xf4, 0xb5, 0x83, 0xd1, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrXml, ref IDeviceModelPlugIn pSrcPlugIn, ref IDeviceModelPlugIn pDestPlugIn, ref GamutBoundaryDescription pSrcGBD, ref GamutBoundaryDescription pDestGBD) mut => VT.Initialize(ref this, bstrXml, ref pSrcPlugIn, ref pDestPlugIn, ref pSrcGBD, ref pDestGBD);
			public HRESULT SourceToDestinationAppearanceColors(uint32 cColors, JChColorF* pInputColors, JChColorF* pOutputColors) mut => VT.SourceToDestinationAppearanceColors(ref this, cColors, pInputColors, pOutputColors);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGamutMapModelPlugIn self, BSTR bstrXml, ref IDeviceModelPlugIn pSrcPlugIn, ref IDeviceModelPlugIn pDestPlugIn, ref GamutBoundaryDescription pSrcGBD, ref GamutBoundaryDescription pDestGBD) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGamutMapModelPlugIn self, uint32 cColors, JChColorF* pInputColors, JChColorF* pOutputColors) SourceToDestinationAppearanceColors;
			}
		}
		
		// --- Functions ---
		
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SetICMMode(HDC hdc, int32 mode);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckColorsInGamut(HDC hdc, RGBTRIPLE* lpRGBTriple, void* dlpBuffer, uint32 nCount);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCOLORSPACE GetColorSpace(HDC hdc);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogColorSpaceA(HCOLORSPACE hColorSpace, out LOGCOLORSPACEA lpBuffer, uint32 nSize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetLogColorSpaceW(HCOLORSPACE hColorSpace, out LOGCOLORSPACEW lpBuffer, uint32 nSize);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCOLORSPACE CreateColorSpaceA(ref LOGCOLORSPACEA lplcs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCOLORSPACE CreateColorSpaceW(ref LOGCOLORSPACEW lplcs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HCOLORSPACE SetColorSpace(HDC hdc, HCOLORSPACE hcs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteColorSpace(HCOLORSPACE hcs);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetICMProfileA(HDC hdc, out uint32 pBufSize, uint8* pszFilename);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetICMProfileW(HDC hdc, out uint32 pBufSize, char16* pszFilename);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetICMProfileA(HDC hdc, PSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetICMProfileW(HDC hdc, PWSTR lpFileName);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDeviceGammaRamp(HDC hdc, void* lpRamp);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDeviceGammaRamp(HDC hdc, void* lpRamp);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ColorMatchToTarget(HDC hdc, HDC hdcTarget, COLOR_MATCH_TO_TARGET_ACTION action);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumICMProfilesA(HDC hdc, ICMENUMPROCA proc, LPARAM param2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 EnumICMProfilesW(HDC hdc, ICMENUMPROCW proc, LPARAM param2);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateICMRegKeyA(uint32 reserved, PSTR lpszCMID, PSTR lpszFileName, ICM_COMMAND command);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateICMRegKeyW(uint32 reserved, PWSTR lpszCMID, PWSTR lpszFileName, ICM_COMMAND command);
		[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ColorCorrectPalette(HDC hdc, HPALETTE hPal, uint32 deFirst, uint32 num);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenColorProfileA(ref PROFILE pProfile, uint32 dwDesiredAccess, uint32 dwShareMode, uint32 dwCreationMode);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int OpenColorProfileW(ref PROFILE pProfile, uint32 dwDesiredAccess, uint32 dwShareMode, uint32 dwCreationMode);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseColorProfile(int hProfile);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorProfileFromHandle(int hProfile, uint8* pProfile, out uint32 pcbProfile);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsColorProfileValid(int hProfile, out BOOL pbValid);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateProfileFromLogColorSpaceA(ref LOGCOLORSPACEA pLogColorSpace, out uint8* pProfile);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateProfileFromLogColorSpaceW(ref LOGCOLORSPACEW pLogColorSpace, out uint8* pProfile);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCountColorProfileElements(int hProfile, out uint32 pnElementCount);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorProfileHeader(int hProfile, out PROFILEHEADER pHeader);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorProfileElementTag(int hProfile, uint32 dwIndex, out uint32 pTag);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsColorProfileTagPresent(int hProfile, uint32 tag, out BOOL pbPresent);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorProfileElement(int hProfile, uint32 tag, uint32 dwOffset, out uint32 pcbElement, void* pElement, out BOOL pbReference);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetColorProfileHeader(int hProfile, ref PROFILEHEADER pHeader);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetColorProfileElementSize(int hProfile, uint32 tagType, uint32 pcbElement);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetColorProfileElement(int hProfile, uint32 tag, uint32 dwOffset, ref uint32 pcbElement, void* pElement);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetColorProfileElementReference(int hProfile, uint32 newTag, uint32 refTag);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPS2ColorSpaceArray(int hProfile, uint32 dwIntent, uint32 dwCSAType, uint8* pPS2ColorSpaceArray, out uint32 pcbPS2ColorSpaceArray, out BOOL pbBinary);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPS2ColorRenderingIntent(int hProfile, uint32 dwIntent, uint8* pBuffer, out uint32 pcbPS2ColorRenderingIntent);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetPS2ColorRenderingDictionary(int hProfile, uint32 dwIntent, uint8* pPS2ColorRenderingDictionary, out uint32 pcbPS2ColorRenderingDictionary, out BOOL pbBinary);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetNamedProfileInfo(int hProfile, out NAMED_PROFILE_INFO pNamedProfileInfo);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertColorNameToIndex(int hProfile, int8** paColorName, uint32* paIndex, uint32 dwCount);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ConvertIndexToColorName(int hProfile, uint32* paIndex, int8** paColorName, uint32 dwCount);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDeviceLinkProfile(int* hProfile, uint32 nProfiles, uint32* padwIntent, uint32 nIntents, uint32 dwFlags, out uint8* pProfileData, uint32 indexPreferredCMM);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CreateColorTransformA(ref LOGCOLORSPACEA pLogColorSpace, int hDestProfile, int hTargetProfile, uint32 dwFlags);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CreateColorTransformW(ref LOGCOLORSPACEW pLogColorSpace, int hDestProfile, int hTargetProfile, uint32 dwFlags);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CreateMultiProfileTransform(int* pahProfiles, uint32 nProfiles, uint32* padwIntent, uint32 nIntents, uint32 dwFlags, uint32 indexPreferredCMM);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteColorTransform(int hxform);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TranslateBitmapBits(int hColorTransform, void* pSrcBits, BMFORMAT bmInput, uint32 dwWidth, uint32 dwHeight, uint32 dwInputStride, void* pDestBits, BMFORMAT bmOutput, uint32 dwOutputStride, LPBMCALLBACKFN pfnCallBack, LPARAM ulCallbackData);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckBitmapBits(int hColorTransform, void* pSrcBits, BMFORMAT bmInput, uint32 dwWidth, uint32 dwHeight, uint32 dwStride, out uint8 paResult, LPBMCALLBACKFN pfnCallback, LPARAM lpCallbackData);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TranslateColors(int hColorTransform, COLOR* paInputColors, uint32 nColors, COLORTYPE ctInput, COLOR* paOutputColors, COLORTYPE ctOutput);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CheckColors(int hColorTransform, COLOR* paInputColors, uint32 nColors, COLORTYPE ctInput, uint8* paResult);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCMMInfo(int hColorTransform, uint32 param1);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterCMMA(PSTR pMachineName, uint32 cmmID, PSTR pCMMdll);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RegisterCMMW(PWSTR pMachineName, uint32 cmmID, PWSTR pCMMdll);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterCMMA(PSTR pMachineName, uint32 cmmID);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnregisterCMMW(PWSTR pMachineName, uint32 cmmID);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SelectCMM(uint32 dwCMMType);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorDirectoryA(PSTR pMachineName, PSTR pBuffer, out uint32 pdwSize);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetColorDirectoryW(PWSTR pMachineName, PWSTR pBuffer, out uint32 pdwSize);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InstallColorProfileA(PSTR pMachineName, PSTR pProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InstallColorProfileW(PWSTR pMachineName, PWSTR pProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UninstallColorProfileA(PSTR pMachineName, PSTR pProfileName, BOOL bDelete);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UninstallColorProfileW(PWSTR pMachineName, PWSTR pProfileName, BOOL bDelete);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumColorProfilesA(PSTR pMachineName, ref ENUMTYPEA pEnumRecord, uint8* pEnumerationBuffer, out uint32 pdwSizeOfEnumerationBuffer, uint32* pnProfiles);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumColorProfilesW(PWSTR pMachineName, ref ENUMTYPEW pEnumRecord, uint8* pEnumerationBuffer, out uint32 pdwSizeOfEnumerationBuffer, uint32* pnProfiles);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetStandardColorSpaceProfileA(PSTR pMachineName, uint32 dwProfileID, PSTR pProfilename);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetStandardColorSpaceProfileW(PWSTR pMachineName, uint32 dwProfileID, PWSTR pProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetStandardColorSpaceProfileA(PSTR pMachineName, uint32 dwSCS, PSTR pBuffer, out uint32 pcbSize);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetStandardColorSpaceProfileW(PWSTR pMachineName, uint32 dwSCS, PWSTR pBuffer, out uint32 pcbSize);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AssociateColorProfileWithDeviceA(PSTR pMachineName, PSTR pProfileName, PSTR pDeviceName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AssociateColorProfileWithDeviceW(PWSTR pMachineName, PWSTR pProfileName, PWSTR pDeviceName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DisassociateColorProfileFromDeviceA(PSTR pMachineName, PSTR pProfileName, PSTR pDeviceName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DisassociateColorProfileFromDeviceW(PWSTR pMachineName, PWSTR pProfileName, PWSTR pDeviceName);
		[Import("icmui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetupColorMatchingW(out COLORMATCHSETUPW pcms);
		[Import("icmui.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetupColorMatchingA(out COLORMATCHSETUPA pcms);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsAssociateColorProfileWithDevice(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR pProfileName, PWSTR pDeviceName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsDisassociateColorProfileFromDevice(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR pProfileName, PWSTR pDeviceName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsEnumColorProfilesSize(WCS_PROFILE_MANAGEMENT_SCOPE @scope, ref ENUMTYPEW pEnumRecord, out uint32 pdwSize);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsEnumColorProfiles(WCS_PROFILE_MANAGEMENT_SCOPE @scope, ref ENUMTYPEW pEnumRecord, out uint8 pBuffer, uint32 dwSize, uint32* pnProfiles);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsGetDefaultColorProfileSize(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR pDeviceName, COLORPROFILETYPE cptColorProfileType, COLORPROFILESUBTYPE cpstColorProfileSubType, uint32 dwProfileID, out uint32 pcbProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsGetDefaultColorProfile(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR pDeviceName, COLORPROFILETYPE cptColorProfileType, COLORPROFILESUBTYPE cpstColorProfileSubType, uint32 dwProfileID, uint32 cbProfileName, PWSTR pProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsSetDefaultColorProfile(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR pDeviceName, COLORPROFILETYPE cptColorProfileType, COLORPROFILESUBTYPE cpstColorProfileSubType, uint32 dwProfileID, PWSTR pProfileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsSetDefaultRenderingIntent(WCS_PROFILE_MANAGEMENT_SCOPE @scope, uint32 dwRenderingIntent);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsGetDefaultRenderingIntent(WCS_PROFILE_MANAGEMENT_SCOPE @scope, out uint32 pdwRenderingIntent);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsGetUsePerUserProfiles(PWSTR pDeviceName, uint32 dwDeviceClass, out BOOL pUsePerUserProfiles);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsSetUsePerUserProfiles(PWSTR pDeviceName, uint32 dwDeviceClass, BOOL usePerUserProfiles);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsTranslateColors(int hColorTransform, uint32 nColors, uint32 nInputChannels, COLORDATATYPE cdtInput, uint32 cbInput, void* pInputData, uint32 nOutputChannels, COLORDATATYPE cdtOutput, uint32 cbOutput, void* pOutputData);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsCheckColors(int hColorTransform, uint32 nColors, uint32 nInputChannels, COLORDATATYPE cdtInput, uint32 cbInput, void* pInputData, uint8* paResult);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCheckColors(int hcmTransform, COLOR* lpaInputColors, uint32 nColors, COLORTYPE ctInput, uint8* lpaResult);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCheckRGBs(int hcmTransform, void* lpSrcBits, BMFORMAT bmInput, uint32 dwWidth, uint32 dwHeight, uint32 dwStride, out uint8 lpaResult, LPBMCALLBACKFN pfnCallback, LPARAM ulCallbackData);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMConvertColorNameToIndex(int hProfile, int8** paColorName, uint32* paIndex, uint32 dwCount);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMConvertIndexToColorName(int hProfile, uint32* paIndex, int8** paColorName, uint32 dwCount);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCreateDeviceLinkProfile(int* pahProfiles, uint32 nProfiles, uint32* padwIntents, uint32 nIntents, uint32 dwFlags, out uint8* lpProfileData);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CMCreateMultiProfileTransform(int* pahProfiles, uint32 nProfiles, uint32* padwIntents, uint32 nIntents, uint32 dwFlags);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCreateProfileW(out LOGCOLORSPACEW lpColorSpace, void** lpProfileData);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CMCreateTransform(ref LOGCOLORSPACEA lpColorSpace, void* lpDevCharacter, void* lpTargetDevCharacter);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CMCreateTransformW(ref LOGCOLORSPACEW lpColorSpace, void* lpDevCharacter, void* lpTargetDevCharacter);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CMCreateTransformExt(ref LOGCOLORSPACEA lpColorSpace, void* lpDevCharacter, void* lpTargetDevCharacter, uint32 dwFlags);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCheckColorsInGamut(int hcmTransform, RGBTRIPLE* lpaRGBTriple, out uint8 lpaResult, uint32 nCount);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMCreateProfile(out LOGCOLORSPACEA lpColorSpace, void** lpProfileData);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMTranslateRGB(int hcmTransform, uint32 ColorRef, out uint32 lpColorRef, uint32 dwFlags);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMTranslateRGBs(int hcmTransform, void* lpSrcBits, BMFORMAT bmInput, uint32 dwWidth, uint32 dwHeight, uint32 dwStride, void* lpDestBits, BMFORMAT bmOutput, uint32 dwTranslateDirection);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int CMCreateTransformExtW(ref LOGCOLORSPACEW lpColorSpace, void* lpDevCharacter, void* lpTargetDevCharacter, uint32 dwFlags);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMDeleteTransform(int hcmTransform);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CMGetInfo(uint32 dwInfo);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMGetNamedProfileInfo(int hProfile, out NAMED_PROFILE_INFO pNamedProfileInfo);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMIsProfileValid(int hProfile, out int32 lpbValid);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMTranslateColors(int hcmTransform, COLOR* lpaInputColors, uint32 nColors, COLORTYPE ctInput, COLOR* lpaOutputColors, COLORTYPE ctOutput);
		[Import("icm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CMTranslateRGBsExt(int hcmTransform, void* lpSrcBits, BMFORMAT bmInput, uint32 dwWidth, uint32 dwHeight, uint32 dwInputStride, void* lpDestBits, BMFORMAT bmOutput, uint32 dwOutputStride, LPBMCALLBACKFN lpfnCallback, LPARAM ulCallbackData);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int WcsOpenColorProfileA(ref PROFILE pCDMPProfile, PROFILE* pCAMPProfile, PROFILE* pGMMPProfile, uint32 dwDesireAccess, uint32 dwShareMode, uint32 dwCreationMode, uint32 dwFlags);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int WcsOpenColorProfileW(ref PROFILE pCDMPProfile, PROFILE* pCAMPProfile, PROFILE* pGMMPProfile, uint32 dwDesireAccess, uint32 dwShareMode, uint32 dwCreationMode, uint32 dwFlags);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int WcsCreateIccProfile(int hWcsProfile, uint32 dwOptions);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsGetCalibrationManagementState(out BOOL pbIsEnabled);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WcsSetCalibrationManagementState(BOOL bIsEnabled);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileAddDisplayAssociation(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR profileName, LUID targetAdapterID, uint32 sourceID, BOOL setAsDefault, BOOL associateAsAdvancedColor);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileRemoveDisplayAssociation(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR profileName, LUID targetAdapterID, uint32 sourceID, BOOL dissociateAdvancedColor);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileSetDisplayDefaultAssociation(WCS_PROFILE_MANAGEMENT_SCOPE @scope, PWSTR profileName, COLORPROFILETYPE profileType, COLORPROFILESUBTYPE profileSubType, LUID targetAdapterID, uint32 sourceID);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileGetDisplayList(WCS_PROFILE_MANAGEMENT_SCOPE @scope, LUID targetAdapterID, uint32 sourceID, out PWSTR* profileList, out uint32 profileCount);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileGetDisplayDefault(WCS_PROFILE_MANAGEMENT_SCOPE @scope, LUID targetAdapterID, uint32 sourceID, COLORPROFILETYPE profileType, COLORPROFILESUBTYPE profileSubType, out PWSTR profileName);
		[Import("mscms.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ColorProfileGetDisplayUserScope(LUID targetAdapterID, uint32 sourceID, out WCS_PROFILE_MANAGEMENT_SCOPE @scope);
	}
}
