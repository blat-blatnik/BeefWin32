using System;

// namespace Media.DirectShow.Xml
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_XMLGraphBuilder = .(0x1bb05961, 0x5fbf, 0x11d2, 0xa5, 0x21, 0x44, 0xdf, 0x07, 0xc1, 0x00, 0x00);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXMLGraphBuilder : IUnknown
		{
			public const new Guid IID = .(0x1bb05960, 0x5fbf, 0x11d2, 0xa5, 0x21, 0x44, 0xdf, 0x07, 0xc1, 0x00, 0x00);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, IXMLElement* pxml) BuildFromXML;
				public function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, BSTR* pbstrxml) SaveToXML;
				public function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, PWSTR wszFileName, PWSTR wszBaseURL) BuildFromXMLFile;
			}
		}
		
	}
}
