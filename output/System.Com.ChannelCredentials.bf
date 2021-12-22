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
			
			public function HRESULT(IChannelCredentials *self, BSTR domain, BSTR username, BSTR password, int32 impersonationLevel, BOOL allowNtlm) SetWindowsCredential;
			public function HRESULT(IChannelCredentials *self, BSTR username, BSTR password) SetUserNameCredential;
			public function HRESULT(IChannelCredentials *self, BSTR storeLocation, BSTR storeName, BSTR findYype, VARIANT findValue) SetClientCertificateFromStore;
			public function HRESULT(IChannelCredentials *self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetClientCertificateFromStoreByName;
			public function HRESULT(IChannelCredentials *self, BSTR filename, BSTR password, BSTR keystorageFlags) SetClientCertificateFromFile;
			public function HRESULT(IChannelCredentials *self, BSTR storeLocation, BSTR storeName, BSTR findType, VARIANT findValue) SetDefaultServiceCertificateFromStore;
			public function HRESULT(IChannelCredentials *self, BSTR subjectName, BSTR storeLocation, BSTR storeName) SetDefaultServiceCertificateFromStoreByName;
			public function HRESULT(IChannelCredentials *self, BSTR filename, BSTR password, BSTR keystorageFlags) SetDefaultServiceCertificateFromFile;
			public function HRESULT(IChannelCredentials *self, BSTR storeLocation, BSTR revocationMode, BSTR certificateValidationMode) SetServiceCertificateAuthentication;
			public function HRESULT(IChannelCredentials *self, BSTR localIssuerAddres, BSTR localIssuerBindingType, BSTR localIssuerBinding) SetIssuedToken;
		}
		
	}
}
