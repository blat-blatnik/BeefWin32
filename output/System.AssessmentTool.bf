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
		
		public struct IProvideWinSATAssessmentInfo {}
		public struct IProvideWinSATResultsInfo {}
		public struct IQueryRecentWinSATAssessment {}
		public struct IProvideWinSATVisuals {}
		public struct IQueryAllWinSATAssessments {}
		public struct IWinSATInitiateEvents {}
		public struct IInitiateWinSATAssessment {}
		public struct IAccessibleWinSAT {}
		public struct IQueryOEMWinSATCustomization {}
		
	}
}
