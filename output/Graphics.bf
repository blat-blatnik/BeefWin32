using System;

// namespace Graphics
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE : uint32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			CUBIC = 2,
			MULTI_SAMPLE_LINEAR = 3,
			ANISOTROPIC = 4,
			HIGH_QUALITY_CUBIC = 5,
			FORCE_DWORD = 4294967295,
		}
		
	}
}
