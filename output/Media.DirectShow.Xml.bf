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
			
			public HRESULT BuildFromXML(ref IGraphBuilder pGraph, ref IXMLElement pxml) mut => VT.BuildFromXML(ref this, ref pGraph, ref pxml);
			public HRESULT SaveToXML(ref IGraphBuilder pGraph, out BSTR pbstrxml) mut => VT.SaveToXML(ref this, ref pGraph, out pbstrxml);
			public HRESULT BuildFromXMLFile(ref IGraphBuilder pGraph, PWSTR wszFileName, PWSTR wszBaseURL) mut => VT.BuildFromXMLFile(ref this, ref pGraph, wszFileName, wszBaseURL);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXMLGraphBuilder self, ref IGraphBuilder pGraph, ref IXMLElement pxml) BuildFromXML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXMLGraphBuilder self, ref IGraphBuilder pGraph, out BSTR pbstrxml) SaveToXML;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXMLGraphBuilder self, ref IGraphBuilder pGraph, PWSTR wszFileName, PWSTR wszBaseURL) BuildFromXMLFile;
			}
		}
		
	}
}
