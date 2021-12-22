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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BuildFromXML(IGraphBuilder* pGraph, IXMLElement* pxml) mut
			{
				return VT.BuildFromXML(&this, pGraph, pxml);
			}
			public HRESULT SaveToXML(IGraphBuilder* pGraph, BSTR* pbstrxml) mut
			{
				return VT.SaveToXML(&this, pGraph, pbstrxml);
			}
			public HRESULT BuildFromXMLFile(IGraphBuilder* pGraph, PWSTR wszFileName, PWSTR wszBaseURL) mut
			{
				return VT.BuildFromXMLFile(&this, pGraph, wszFileName, wszBaseURL);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, IXMLElement* pxml) BuildFromXML;
				public new function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, BSTR* pbstrxml) SaveToXML;
				public new function HRESULT(IXMLGraphBuilder *self, IGraphBuilder* pGraph, PWSTR wszFileName, PWSTR wszBaseURL) BuildFromXMLFile;
			}
		}
		
	}
}
