using System;

// namespace System.TransactionServer
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0001 : int32
		{
			mtsInstallUsers = 1,
		}
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0002 : int32
		{
			mtsExportUsers = 1,
		}
		[AllowDuplicates]
		public enum __MIDL___MIDL_itf_mtxadmin_0107_0003 : int32
		{
			ObjectErrors = -2146368511,
			ObjectInvalid = -2146368510,
			KeyMissing = -2146368509,
			AlreadyInstalled = -2146368508,
			DownloadFailed = -2146368507,
			PDFWriteFail = -2146368505,
			PDFReadFail = -2146368504,
			PDFVersion = -2146368503,
			CoReqCompInstalled = -2146368496,
			BadPath = -2146368502,
			PackageExists = -2146368501,
			RoleExists = -2146368500,
			CantCopyFile = -2146368499,
			NoTypeLib = -2146368498,
			NoUser = -2146368497,
			InvalidUserids = -2146368496,
			NoRegistryCLSID = -2146368495,
			BadRegistryProgID = -2146368494,
			AuthenticationLevel = -2146368493,
			UserPasswdNotValid = -2146368492,
			NoRegistryRead = -2146368491,
			NoRegistryWrite = -2146368490,
			NoRegistryRepair = -2146368489,
			CLSIDOrIIDMismatch = -2146368488,
			RemoteInterface = -2146368487,
			DllRegisterServer = -2146368486,
			NoServerShare = -2146368485,
			NoAccessToUNC = -2146368484,
			DllLoadFailed = -2146368483,
			BadRegistryLibID = -2146368482,
			PackDirNotFound = -2146368481,
			TreatAs = -2146368480,
			BadForward = -2146368479,
			BadIID = -2146368478,
			RegistrarFailed = -2146368477,
			CompFileDoesNotExist = -2146368476,
			CompFileLoadDLLFail = -2146368475,
			CompFileGetClassObj = -2146368474,
			CompFileClassNotAvail = -2146368473,
			CompFileBadTLB = -2146368472,
			CompFileNotInstallable = -2146368471,
			NotChangeable = -2146368470,
			NotDeletable = -2146368469,
			Session = -2146368468,
			CompFileNoRegistrar = -2146368460,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCollection(BSTR bstrCollName, out IDispatch* ppCatalogCollection) mut => VT.GetCollection(ref this, bstrCollName, out ppCatalogCollection);
			public HRESULT Connect(BSTR bstrConnectString, out IDispatch* ppCatalogCollection) mut => VT.Connect(ref this, bstrConnectString, out ppCatalogCollection);
			public HRESULT get_MajorVersion(out int32 retval) mut => VT.get_MajorVersion(ref this, out retval);
			public HRESULT get_MinorVersion(out int32 retval) mut => VT.get_MinorVersion(ref this, out retval);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalog self, BSTR bstrCollName, out IDispatch* ppCatalogCollection) GetCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalog self, BSTR bstrConnectString, out IDispatch* ppCatalogCollection) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalog self, out int32 retval) get_MajorVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICatalog self, out int32 retval) get_MinorVersion;
			}
		}
		[CRepr]
		public struct IComponentUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22873, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallComponent(BSTR bstrDLLFile, BSTR bstrTypelibFile, BSTR bstrProxyStubDLLFile) mut => VT.InstallComponent(ref this, bstrDLLFile, bstrTypelibFile, bstrProxyStubDLLFile);
			public HRESULT ImportComponent(BSTR bstrCLSID) mut => VT.ImportComponent(ref this, bstrCLSID);
			public HRESULT ImportComponentByName(BSTR bstrProgID) mut => VT.ImportComponentByName(ref this, bstrProgID);
			public HRESULT GetCLSIDs(BSTR bstrDLLFile, BSTR bstrTypelibFile, out SAFEARRAY* aCLSIDs) mut => VT.GetCLSIDs(ref this, bstrDLLFile, bstrTypelibFile, out aCLSIDs);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentUtil self, BSTR bstrDLLFile, BSTR bstrTypelibFile, BSTR bstrProxyStubDLLFile) InstallComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentUtil self, BSTR bstrCLSID) ImportComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentUtil self, BSTR bstrProgID) ImportComponentByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IComponentUtil self, BSTR bstrDLLFile, BSTR bstrTypelibFile, out SAFEARRAY* aCLSIDs) GetCLSIDs;
			}
		}
		[CRepr]
		public struct IPackageUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22874, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallPackage(BSTR bstrPackageFile, BSTR bstrInstallPath, int32 lOptions) mut => VT.InstallPackage(ref this, bstrPackageFile, bstrInstallPath, lOptions);
			public HRESULT ExportPackage(BSTR bstrPackageID, BSTR bstrPackageFile, int32 lOptions) mut => VT.ExportPackage(ref this, bstrPackageID, bstrPackageFile, lOptions);
			public HRESULT ShutdownPackage(BSTR bstrPackageID) mut => VT.ShutdownPackage(ref this, bstrPackageID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageUtil self, BSTR bstrPackageFile, BSTR bstrInstallPath, int32 lOptions) InstallPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageUtil self, BSTR bstrPackageID, BSTR bstrPackageFile, int32 lOptions) ExportPackage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageUtil self, BSTR bstrPackageID) ShutdownPackage;
			}
		}
		[CRepr]
		public struct IRemoteComponentUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22875, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallRemoteComponent(BSTR bstrServer, BSTR bstrPackageID, BSTR bstrCLSID) mut => VT.InstallRemoteComponent(ref this, bstrServer, bstrPackageID, bstrCLSID);
			public HRESULT InstallRemoteComponentByName(BSTR bstrServer, BSTR bstrPackageName, BSTR bstrProgID) mut => VT.InstallRemoteComponentByName(ref this, bstrServer, bstrPackageName, bstrProgID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteComponentUtil self, BSTR bstrServer, BSTR bstrPackageID, BSTR bstrCLSID) InstallRemoteComponent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteComponentUtil self, BSTR bstrServer, BSTR bstrPackageName, BSTR bstrProgID) InstallRemoteComponentByName;
			}
		}
		[CRepr]
		public struct IRoleAssociationUtil : IDispatch
		{
			public const new Guid IID = .(0x6eb22876, 0x8a19, 0x11d0, 0x81, 0xb6, 0x00, 0xa0, 0xc9, 0x23, 0x1c, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssociateRole(BSTR bstrRoleID) mut => VT.AssociateRole(ref this, bstrRoleID);
			public HRESULT AssociateRoleByName(BSTR bstrRoleName) mut => VT.AssociateRoleByName(ref this, bstrRoleName);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRoleAssociationUtil self, BSTR bstrRoleID) AssociateRole;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRoleAssociationUtil self, BSTR bstrRoleName) AssociateRoleByName;
			}
		}
		
	}
}
