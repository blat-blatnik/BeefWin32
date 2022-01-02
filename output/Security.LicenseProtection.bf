using System;

// namespace Security.LicenseProtection
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
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
		public static extern HRESULT RegisterLicenseKeyWithExpiration(PWSTR licenseKey, uint32 validityInDays, out LicenseProtectionStatus status);
		[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ValidateLicenseKeyProtection(PWSTR licenseKey, out FILETIME notValidBefore, out FILETIME notValidAfter, out LicenseProtectionStatus status);
	}
}
