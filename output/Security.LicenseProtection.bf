namespace Win32.Security.LicenseProtection;

using System;
using Win32.Foundation;

static
{
	#region Enums
	public enum LicenseProtectionStatus : int32
	{
		Success = 0,
		LicenseKeyNotFound = 1,
		LicenseKeyUnprotected = 2,
		LicenseKeyCorrupted = 3,
		LicenseKeyAlreadyExists = 4,
	}
	#endregion
	
	#region Functions
	[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterLicenseKeyWithExpiration(PWSTR licenseKey, uint32 validityInDays, out LicenseProtectionStatus status);
	[Import("licenseprotection.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ValidateLicenseKeyProtection(PWSTR licenseKey, out FILETIME notValidBefore, out FILETIME notValidAfter, out LicenseProtectionStatus status);
	#endregion
}
