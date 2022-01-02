using System;

// namespace System.Com.ChannelCredentials
namespace Win32
{
	extension Win32
	{
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IChannelCredentials : IDispatch
		{
			public const new Guid IID = .(0x181b448c, 0xc17c, 0x4b17, 0xac, 0x6d, 0x06, 0x69, 0x9b, 0x93, 0x19, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWindowsCredential(BSTR domain, BSTR username, BSTR password, int32 impersonationLevel, BOOL allowNtlm) mut => VT.SetWindowsCredential(ref this, domain, username, password, impersonationLevel, allowNtlm);
			public HRESULT SetUserNameCredential(BSTR username, BSTR password) mut => VT.SetUserNameCredential(ref this, username, password);
			public HRESULT SetClientCertificateFromStore(BSTR storeLocation, BSTR storeName, BSTR findYype, VARIANT findValue) mut => VT.SetClientCertificateFromStore(ref this, storeLocation, storeName, findYype, findValue);
			public HRESULT SetClientCertificateFromStoreByName(BSTR subjectName, BSTR storeLocation, BSTR storeName) mut => VT.SetClientCertificateFromStoreByName(ref this, subjectName, storeLocation, storeName);
			public HRESULT SetClientCertificateFromFile(BSTR filename, BSTR password, BSTR keystorageFlags) mut => VT.SetClientCertificateFromFile(ref this, filename, password, keystorageFlags);
			public HRESULT SetDefaultServiceCertificateFromStore(BSTR storeLocation, BSTR storeName, BSTR findType, VARIANT findValue) mut => VT.SetDefaultServiceCertificateFromStore(ref this, storeLocation, storeName, findType, findValue);
			public HRESULT SetDefaultServiceCertificateFromStoreByName(BSTR subjectName, BSTR storeLocation, BSTR storeName) mut => VT.SetDefaultServiceCertificateFromStoreByName(ref this, subjectName, storeLocation, storeName);
			public HRESULT SetDefaultServiceCertificateFromFile(BSTR filename, BSTR password, BSTR keystorageFlags) mut => VT.SetDefaultServiceCertificateFromFile(ref this, filename, password, keystorageFlags);
			public HRESULT SetServiceCertificateAuthentication(BSTR storeLocation, BSTR revocationMode, BSTR certificateValidationMode) mut => VT.SetServiceCertificateAuthentication(ref this, storeLocation, revocationMode, certificateValidationMode);
			public HRESULT SetIssuedToken(BSTR localIssuerAddres, BSTR localIssuerBindingType, BSTR localIssuerBinding) mut => VT.SetIssuedToken(ref this, localIssuerAddres, localIssuerBindingType, localIssuerBinding);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR domain, BSTR username, BSTR password, int32 impersonationLevel, BOOL allowNtlm) SetWindowsCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR username, BSTR password) SetUserNameCredential;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR storeLocation, BSTR storeName, BSTR findYype, VARIANT findValue) SetClientCertificateFromStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetClientCertificateFromStoreByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR filename, BSTR password, BSTR keystorageFlags) SetClientCertificateFromFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR storeLocation, BSTR storeName, BSTR findType, VARIANT findValue) SetDefaultServiceCertificateFromStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetDefaultServiceCertificateFromStoreByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR filename, BSTR password, BSTR keystorageFlags) SetDefaultServiceCertificateFromFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR storeLocation, BSTR revocationMode, BSTR certificateValidationMode) SetServiceCertificateAuthentication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IChannelCredentials self, BSTR localIssuerAddres, BSTR localIssuerBindingType, BSTR localIssuerBinding) SetIssuedToken;
			}
		}
		
	}
}
