using System;

// namespace System.TransactionServer
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0001 : int32
		{
			mtsInstallUsers = 1,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0002 : int32
		{
			mtsExportUsers = 1,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0003 : int32
		{
			mtsErrObjectErrors = -2146368511,
			mtsErrObjectInvalid = -2146368510,
			mtsErrKeyMissing = -2146368509,
			mtsErrAlreadyInstalled = -2146368508,
			mtsErrDownloadFailed = -2146368507,
			mtsErrPDFWriteFail = -2146368505,
			mtsErrPDFReadFail = -2146368504,
			mtsErrPDFVersion = -2146368503,
			mtsErrCoReqCompInstalled = -2146368496,
			mtsErrBadPath = -2146368502,
			mtsErrPackageExists = -2146368501,
			mtsErrRoleExists = -2146368500,
			mtsErrCantCopyFile = -2146368499,
			mtsErrNoTypeLib = -2146368498,
			mtsErrNoUser = -2146368497,
			mtsErrInvalidUserids = -2146368496,
			mtsErrNoRegistryCLSID = -2146368495,
			mtsErrBadRegistryProgID = -2146368494,
			mtsErrAuthenticationLevel = -2146368493,
			mtsErrUserPasswdNotValid = -2146368492,
			mtsErrNoRegistryRead = -2146368491,
			mtsErrNoRegistryWrite = -2146368490,
			mtsErrNoRegistryRepair = -2146368489,
			mtsErrCLSIDOrIIDMismatch = -2146368488,
			mtsErrRemoteInterface = -2146368487,
			mtsErrDllRegisterServer = -2146368486,
			mtsErrNoServerShare = -2146368485,
			mtsErrNoAccessToUNC = -2146368484,
			mtsErrDllLoadFailed = -2146368483,
			mtsErrBadRegistryLibID = -2146368482,
			mtsErrPackDirNotFound = -2146368481,
			mtsErrTreatAs = -2146368480,
			mtsErrBadForward = -2146368479,
			mtsErrBadIID = -2146368478,
			mtsErrRegistrarFailed = -2146368477,
			mtsErrCompFileDoesNotExist = -2146368476,
			mtsErrCompFileLoadDLLFail = -2146368475,
			mtsErrCompFileGetClassObj = -2146368474,
			mtsErrCompFileClassNotAvail = -2146368473,
			mtsErrCompFileBadTLB = -2146368472,
			mtsErrCompFileNotInstallable = -2146368471,
			mtsErrNotChangeable = -2146368470,
			mtsErrNotDeletable = -2146368469,
			mtsErrSession = -2146368468,
			mtsErrCompFileNoRegistrar = -2146368460,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Catalog = .(0x6eb22881, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_CatalogObject = .(0x6eb22882, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_CatalogCollection = .(0x6eb22883, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_ComponentUtil = .(0x6eb22884, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_PackageUtil = .(0x6eb22885, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_RemoteComponentUtil = .(0x6eb22886, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		public const Guid CLSID_RoleAssociationUtil = .(0x6eb22887, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICatalog : IDispatch
		{
			public const new Guid IID = .(0x6eb22870, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(ICatalog *self, BSTR bstrCollName, IDispatch** ppCatalogCollection) GetCollection;
				public function HRESULT(ICatalog *self, BSTR bstrConnectString, IDispatch** ppCatalogCollection) Connect;
				public function HRESULT(ICatalog *self, int32* retval) get_MajorVersion;
				public function HRESULT(ICatalog *self, int32* retval) get_MinorVersion;
			}
		}
		[CRepr]
		public struct IComponentUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22873, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IComponentUtil *self, BSTR bstrDLLFile, BSTR bstrTypelibFile, BSTR bstrProxyStubDLLFile) InstallComponent;
				public function HRESULT(IComponentUtil *self, BSTR bstrCLSID) ImportComponent;
				public function HRESULT(IComponentUtil *self, BSTR bstrProgID) ImportComponentByName;
				public function HRESULT(IComponentUtil *self, BSTR bstrDLLFile, BSTR bstrTypelibFile, SAFEARRAY** aCLSIDs) GetCLSIDs;
			}
		}
		[CRepr]
		public struct IPackageUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22874, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IPackageUtil *self, BSTR bstrPackageFile, BSTR bstrInstallPath, int32 lOptions) InstallPackage;
				public function HRESULT(IPackageUtil *self, BSTR bstrPackageID, BSTR bstrPackageFile, int32 lOptions) ExportPackage;
				public function HRESULT(IPackageUtil *self, BSTR bstrPackageID) ShutdownPackage;
			}
		}
		[CRepr]
		public struct IRemoteComponentUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22875, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRemoteComponentUtil *self, BSTR bstrServer, BSTR bstrPackageID, BSTR bstrCLSID) InstallRemoteComponent;
				public function HRESULT(IRemoteComponentUtil *self, BSTR bstrServer, BSTR bstrPackageName, BSTR bstrProgID) InstallRemoteComponentByName;
			}
		}
		[CRepr]
		public struct IRoleAssociationUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22876, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IRoleAssociationUtil *self, BSTR bstrRoleID) AssociateRole;
				public function HRESULT(IRoleAssociationUtil *self, BSTR bstrRoleName) AssociateRoleByName;
			}
		}
		
	}
}
