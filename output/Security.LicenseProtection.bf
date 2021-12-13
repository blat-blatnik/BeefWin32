using System;

// namespace Security.LicenseProtection
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum LicenseProtectionStatus : int32
		{
			Success = 0,
			LicenseKeyNotFound = 1,
			LicenseKeyUnprotected = 2,
			LicenseKeyCorrupted = 3,
			LicenseKeyAlreadyExists = 4,
		}
		
		// --- Functions ---
		
		[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterLicenseKeyWithExpiration(PWSTR licenseKey, uint32 validityInDays, LicenseProtectionStatus* status);
		[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ValidateLicenseKeyProtection(PWSTR licenseKey, FILETIME* notValidBefore, FILETIME* notValidAfter, LicenseProtectionStatus* status);
		
	}
}
