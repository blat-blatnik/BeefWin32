using System;

// namespace System.AssessmentTool
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WINSAT_OEM_DATA_TYPE : int32
		{
			WINSAT_OEM_DATA_VALID = 0,
			WINSAT_OEM_DATA_NON_SYS_CONFIG_MATCH = 1,
			WINSAT_OEM_DATA_INVALID = 2,
			WINSAT_OEM_NO_DATA_SUPPLIED = 3,
		}
		[AllowDuplicates]
		public enum WINSAT_ASSESSMENT_STATE : int32
		{
			WINSAT_ASSESSMENT_STATE_MIN = 0,
			WINSAT_ASSESSMENT_STATE_UNKNOWN = 0,
			WINSAT_ASSESSMENT_STATE_VALID = 1,
			WINSAT_ASSESSMENT_STATE_INCOHERENT_WITH_HARDWARE = 2,
			WINSAT_ASSESSMENT_STATE_NOT_AVAILABLE = 3,
			WINSAT_ASSESSMENT_STATE_INVALID = 4,
			WINSAT_ASSESSMENT_STATE_MAX = 4,
		}
		[AllowDuplicates]
		public enum WINSAT_ASSESSMENT_TYPE : int32
		{
			WINSAT_ASSESSMENT_MEMORY = 0,
			WINSAT_ASSESSMENT_CPU = 1,
			WINSAT_ASSESSMENT_DISK = 2,
			WINSAT_ASSESSMENT_D3D = 3,
			WINSAT_ASSESSMENT_GRAPHICS = 4,
		}
		[AllowDuplicates]
		public enum WINSAT_BITMAP_SIZE : int32
		{
			WINSAT_BITMAP_SIZE_SMALL = 0,
			WINSAT_BITMAP_SIZE_NORMAL = 1,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CInitiateWinSAT = .(0x489331dc, 0xf5e0, 0x4528, 0x9f, 0xda, 0x45, 0x33, 0x1b, 0xf4, 0xa5, 0x71);
		public const Guid CLSID_CQueryWinSAT = .(0xf3bdfad3, 0xf276, 0x49e9, 0x9b, 0x17, 0xc4, 0x74, 0xf4, 0x8f, 0x07, 0x64);
		public const Guid CLSID_CQueryAllWinSAT = .(0x05df8d13, 0xc355, 0x47f4, 0xa1, 0x1e, 0x85, 0x1b, 0x33, 0x8c, 0xef, 0xb8);
		public const Guid CLSID_CProvideWinSATVisuals = .(0x9f377d7e, 0xe551, 0x44f8, 0x9f, 0x94, 0x9d, 0xb3, 0x92, 0xb0, 0x3b, 0x7b);
		public const Guid CLSID_CAccessiblityWinSAT = .(0x6e18f9c6, 0xa3eb, 0x495a, 0x89, 0xb7, 0x95, 0x64, 0x82, 0xe1, 0x9f, 0x7a);
		public const Guid CLSID_CQueryOEMWinSATCustomization = .(0xc47a41b7, 0xb729, 0x424f, 0x9a, 0xf9, 0x5c, 0xb3, 0x93, 0x4f, 0x2d, 0xfa);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IProvideWinSATAssessmentInfo : IDispatch
		{
			public const new Guid IID = .(0x0cd1c380, 0x52d3, 0x4678, 0xac, 0x6f, 0xe9, 0x29, 0xe4, 0x80, 0xbe, 0x9e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IProvideWinSATAssessmentInfo *self, float* score) get_Score;
				public function HRESULT(IProvideWinSATAssessmentInfo *self, BSTR* title) get_Title;
				public function HRESULT(IProvideWinSATAssessmentInfo *self, BSTR* description) get_Description;
			}
		}
		[CRepr]
		public struct IProvideWinSATResultsInfo : IDispatch
		{
			public const new Guid IID = .(0xf8334d5d, 0x568e, 0x4075, 0x87, 0x5f, 0x9d, 0xf3, 0x41, 0x50, 0x66, 0x40);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IProvideWinSATResultsInfo *self, WINSAT_ASSESSMENT_TYPE assessment, IProvideWinSATAssessmentInfo** ppinfo) GetAssessmentInfo;
				public function HRESULT(IProvideWinSATResultsInfo *self, WINSAT_ASSESSMENT_STATE* state) get_AssessmentState;
				public function HRESULT(IProvideWinSATResultsInfo *self, VARIANT* fileTime) get_AssessmentDateTime;
				public function HRESULT(IProvideWinSATResultsInfo *self, float* level) get_SystemRating;
				public function HRESULT(IProvideWinSATResultsInfo *self, BSTR* description) get_RatingStateDesc;
			}
		}
		[CRepr]
		public struct IQueryRecentWinSATAssessment : IDispatch
		{
			public const new Guid IID = .(0xf8ad5d1f, 0x3b47, 0x4bdc, 0x93, 0x75, 0x7c, 0x6b, 0x1d, 0xa4, 0xec, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IQueryRecentWinSATAssessment *self, BSTR xPath, BSTR namespaces, IXMLDOMNodeList** ppDomNodeList) get_XML;
				public function HRESULT(IQueryRecentWinSATAssessment *self, IProvideWinSATResultsInfo** ppWinSATAssessmentInfo) get_Info;
			}
		}
		[CRepr]
		public struct IProvideWinSATVisuals : IUnknown
		{
			public const new Guid IID = .(0xa9f4ade0, 0x871a, 0x42a3, 0xb8, 0x13, 0x30, 0x78, 0xd2, 0x51, 0x62, 0xc9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IProvideWinSATVisuals *self, WINSAT_BITMAP_SIZE bitmapSize, WINSAT_ASSESSMENT_STATE state, float rating, HBITMAP* pBitmap) get_Bitmap;
			}
		}
		[CRepr]
		public struct IQueryAllWinSATAssessments : IDispatch
		{
			public const new Guid IID = .(0x0b89ed1d, 0x6398, 0x4fea, 0x87, 0xfc, 0x56, 0x7d, 0x8d, 0x19, 0x17, 0x6f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IQueryAllWinSATAssessments *self, BSTR xPath, BSTR namespaces, IXMLDOMNodeList** ppDomNodeList) get_AllXML;
			}
		}
		[CRepr]
		public struct IWinSATInitiateEvents : IUnknown
		{
			public const new Guid IID = .(0x262a1918, 0xba0d, 0x41d5, 0x92, 0xc2, 0xfa, 0xb4, 0x63, 0x3e, 0xe7, 0x4f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWinSATInitiateEvents *self, HRESULT hresult, PWSTR strDescription) WinSATComplete;
				public function HRESULT(IWinSATInitiateEvents *self, uint32 uCurrentTick, uint32 uTickTotal, PWSTR strCurrentState) WinSATUpdate;
			}
		}
		[CRepr]
		public struct IInitiateWinSATAssessment : IUnknown
		{
			public const new Guid IID = .(0xd983fc50, 0xf5bf, 0x49d5, 0xb5, 0xed, 0xcc, 0xcb, 0x18, 0xaa, 0x7f, 0xc1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInitiateWinSATAssessment *self, PWSTR cmdLine, IWinSATInitiateEvents* pCallbacks, HWND callerHwnd) InitiateAssessment;
				public function HRESULT(IInitiateWinSATAssessment *self, IWinSATInitiateEvents* pCallbacks, HWND callerHwnd) InitiateFormalAssessment;
				public function HRESULT(IInitiateWinSATAssessment *self) CancelAssessment;
			}
		}
		[CRepr]
		public struct IAccessibleWinSAT : IAccessible
		{
			public const new Guid IID = .(0x30e6018a, 0x94a8, 0x4ff8, 0xa6, 0x9a, 0x71, 0xb6, 0x74, 0x13, 0xf0, 0x7b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAccessible.VTable
			{
				public function HRESULT(IAccessibleWinSAT *self, PWSTR wsName, PWSTR wsValue, PWSTR wsDesc) SetAccessiblityData;
			}
		}
		[CRepr]
		public struct IQueryOEMWinSATCustomization : IUnknown
		{
			public const new Guid IID = .(0xbc9a6a9f, 0xad4e, 0x420e, 0x99, 0x53, 0xb3, 0x46, 0x71, 0xe9, 0xdf, 0x22);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IQueryOEMWinSATCustomization *self, WINSAT_OEM_DATA_TYPE* state) GetOEMPrePopulationInfo;
			}
		}
		
	}
}
