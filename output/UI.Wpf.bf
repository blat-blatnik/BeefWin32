using System;

// namespace UI.Wpf
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MILBITMAPEFFECT_SDK_VERSION = 16777216;
		public const Guid CLSID_MILBitmapEffectGroup = .(0xac9c1a9a, 0x7e18, 0x4f64, 0xac, 0x7e, 0x47, 0xcf, 0x7f, 0x05, 0x1e, 0x95);
		public const Guid CLSID_MILBitmapEffectBlur = .(0xa924df87, 0x225d, 0x4373, 0x8f, 0x5b, 0xb9, 0x0e, 0xc8, 0x5a, 0xe3, 0xde);
		public const Guid CLSID_MILBitmapEffectDropShadow = .(0x459a3fbe, 0xd8ac, 0x4692, 0x87, 0x4b, 0x7a, 0x26, 0x57, 0x15, 0xaa, 0x16);
		public const Guid CLSID_MILBitmapEffectOuterGlow = .(0xe2161bdd, 0x7eb6, 0x4725, 0x9c, 0x0b, 0x8a, 0x2a, 0x1b, 0x4f, 0x06, 0x67);
		public const Guid CLSID_MILBitmapEffectBevel = .(0xfd361dbe, 0x6c9b, 0x4de0, 0x82, 0x90, 0xf6, 0x40, 0x0c, 0x27, 0x37, 0xed);
		public const Guid CLSID_MILBitmapEffectEmboss = .(0xcd299846, 0x824f, 0x47ec, 0xa0, 0x07, 0x12, 0xaa, 0x76, 0x7f, 0x28, 0x16);
		
		// --- Structs ---
		
		[CRepr]
		public struct MilRectD
		{
			public double left;
			public double top;
			public double right;
			public double bottom;
		}
		[CRepr]
		public struct MilPoint2D
		{
			public double X;
			public double Y;
		}
		[CRepr]
		public struct MILMatrixF
		{
			public double _11;
			public double _12;
			public double _13;
			public double _14;
			public double _21;
			public double _22;
			public double _23;
			public double _24;
			public double _31;
			public double _32;
			public double _33;
			public double _34;
			public double _41;
			public double _42;
			public double _43;
			public double _44;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMILBitmapEffectConnectorInfo : IUnknown
		{
			public const new Guid IID = .(0xf66d2e4b, 0xb46b, 0x42fc, 0x85, 0x9e, 0x3d, 0xa0, 0xec, 0xdb, 0x3c, 0x43);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32* puiIndex) GetIndex;
				public function HRESULT(IMILBitmapEffectConnectorInfo *self, Guid* pFormat) GetOptimalFormat;
				public function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32* pulNumberFormats) GetNumberFormats;
				public function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32 ulIndex, Guid* pFormat) GetFormat;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnectionsInfo : IUnknown
		{
			public const new Guid IID = .(0x476b538a, 0xc765, 0x4237, 0xba, 0x4a, 0xd6, 0xa8, 0x80, 0xff, 0x0c, 0xfc);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32* puiNumInputs) GetNumberInputs;
				public function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32* puiNumOutputs) GetNumberOutputs;
				public function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) GetInputConnectorInfo;
				public function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) GetOutputConnectorInfo;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnections : IUnknown
		{
			public const new Guid IID = .(0xc2b5d861, 0x9b1a, 0x4374, 0x89, 0xb0, 0xde, 0xc4, 0x87, 0x4d, 0x6a, 0x81);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectConnections *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) GetInputConnector;
				public function HRESULT(IMILBitmapEffectConnections *self, uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffect : IUnknown
		{
			public const new Guid IID = .(0x8a6ff321, 0xc944, 0x4a1b, 0x99, 0x44, 0x99, 0x54, 0xaf, 0x30, 0x12, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffect *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, IWICBitmapSource** ppBitmapSource) GetOutput;
				public function HRESULT(IMILBitmapEffect *self, IMILBitmapEffectGroup** ppParentEffect) GetParentEffect;
				public function HRESULT(IMILBitmapEffect *self, uint32 uiIndex, IWICBitmapSource* pBitmapSource) SetInputSource;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectImpl : IUnknown
		{
			public const new Guid IID = .(0xcc2468f2, 0x9936, 0x47be, 0xb4, 0xaf, 0x06, 0xb5, 0xdf, 0x5d, 0xbc, 0xbb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectImpl *self, IMILBitmapEffectOutputConnector* pOutputConnector, int16* pfModifyInPlace) IsInPlaceModificationAllowed;
				public function HRESULT(IMILBitmapEffectImpl *self, IMILBitmapEffectGroup* pParentEffect) SetParentEffect;
				public function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IWICBitmapSource** ppBitmapSource) GetInputSource;
				public function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, MilRectD* pRect) GetInputSourceBounds;
				public function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetInputBitmapSource;
				public function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetOutputBitmapSource;
				public function HRESULT(IMILBitmapEffectImpl *self, IUnknown* pInner) Initialize;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroup : IUnknown
		{
			public const new Guid IID = .(0x2f952360, 0x698a, 0x4ac6, 0x81, 0xa1, 0xbc, 0xfd, 0xf0, 0x8e, 0xb8, 0xe8);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectGroup *self, uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) GetInteriorInputConnector;
				public function HRESULT(IMILBitmapEffectGroup *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) GetInteriorOutputConnector;
				public function HRESULT(IMILBitmapEffectGroup *self, IMILBitmapEffect* pEffect) Add;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroupImpl : IUnknown
		{
			public const new Guid IID = .(0x78fed518, 0x1cfc, 0x4807, 0x8b, 0x85, 0x6b, 0x6e, 0x51, 0x39, 0x8f, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectGroupImpl *self, IMILBitmapEffectRenderContext* pContext) Preprocess;
				public function HRESULT(IMILBitmapEffectGroupImpl *self, uint32* puiNumberChildren) GetNumberChildren;
				public function HRESULT(IMILBitmapEffectGroupImpl *self, IMILBitmapEffects** pChildren) GetChildren;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContext : IUnknown
		{
			public const new Guid IID = .(0x12a2ec7e, 0x2d33, 0x44b2, 0xb3, 0x34, 0x1a, 0xbb, 0x78, 0x46, 0xe3, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectRenderContext *self, Guid* format) SetOutputPixelFormat;
				public function HRESULT(IMILBitmapEffectRenderContext *self, Guid* pFormat) GetOutputPixelFormat;
				public function HRESULT(IMILBitmapEffectRenderContext *self, int16 fSoftware) SetUseSoftwareRenderer;
				public function HRESULT(IMILBitmapEffectRenderContext *self, MILMatrixF* pMatrix) SetInitialTransform;
				public function HRESULT(IMILBitmapEffectRenderContext *self, MILMatrixF* pMatrix) GetFinalTransform;
				public function HRESULT(IMILBitmapEffectRenderContext *self, double dblDpiX, double dblDpiY) SetOutputDPI;
				public function HRESULT(IMILBitmapEffectRenderContext *self, double* pdblDpiX, double* pdblDpiY) GetOutputDPI;
				public function HRESULT(IMILBitmapEffectRenderContext *self, MilRectD* pRect) SetRegionOfInterest;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContextImpl : IUnknown
		{
			public const new Guid IID = .(0x4d25accb, 0x797d, 0x4fd2, 0xb1, 0x28, 0xdf, 0xfe, 0xff, 0x84, 0xfc, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectRenderContextImpl *self, int16* pfSoftware) GetUseSoftwareRenderer;
				public function HRESULT(IMILBitmapEffectRenderContextImpl *self, MILMatrixF* pMatrix) GetTransform;
				public function HRESULT(IMILBitmapEffectRenderContextImpl *self, MILMatrixF* pMatrix) UpdateTransform;
				public function HRESULT(IMILBitmapEffectRenderContextImpl *self, MilRectD* pRect) GetOutputBounds;
				public function HRESULT(IMILBitmapEffectRenderContextImpl *self, MilRectD* pRect) UpdateOutputBounds;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectFactory : IUnknown
		{
			public const new Guid IID = .(0x33a9df34, 0xa403, 0x4ec7, 0xb0, 0x7e, 0xbc, 0x06, 0x82, 0x37, 0x08, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectFactory *self, Guid* pguidEffect, IMILBitmapEffect** ppEffect) CreateEffect;
				public function HRESULT(IMILBitmapEffectFactory *self, IMILBitmapEffectRenderContext** ppContext) CreateContext;
				public function HRESULT(IMILBitmapEffectFactory *self, IMILBitmapEffect** ppEffect) CreateEffectOuter;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitive : IUnknown
		{
			public const new Guid IID = .(0x67e31025, 0x3091, 0x4dfc, 0x98, 0xd6, 0xdd, 0x49, 0x45, 0x51, 0x46, 0x1d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetOutput;
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilPoint2D* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext, int16* pfPointTransformed) TransformPoint;
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilRectD* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext) TransformRect;
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, int16* pfAffine) HasAffineTransform;
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, int16* pfHasInverse) HasInverseTransform;
				public function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilMatrix3x2D* pMatrix) GetAffineMatrix;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitiveImpl : IUnknown
		{
			public const new Guid IID = .(0xce41e00b, 0xefa6, 0x44e7, 0xb0, 0x07, 0xdd, 0x04, 0x2e, 0x3a, 0xe1, 0x26);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectPrimitiveImpl *self, uint32 uiOutputIndex, int16* pfDirty) IsDirty;
				public function HRESULT(IMILBitmapEffectPrimitiveImpl *self, uint32 uiOutputIndex, int16* pfVolatile) IsVolatile;
			}
		}
		[CRepr]
		public struct IMILBitmapEffects : IUnknown
		{
			public const new Guid IID = .(0x51ac3dce, 0x67c5, 0x448b, 0x91, 0x80, 0xad, 0x3e, 0xab, 0xdd, 0xd5, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffects *self, IUnknown** ppiuReturn) _NewEnum;
				public function HRESULT(IMILBitmapEffects *self, IMILBitmapEffectGroup** ppEffect) get_Parent;
				public function HRESULT(IMILBitmapEffects *self, uint32 uindex, IMILBitmapEffect** ppEffect) Item;
				public function HRESULT(IMILBitmapEffects *self, uint32* puiCount) get_Count;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnector : IMILBitmapEffectConnectorInfo
		{
			public const new Guid IID = .(0xf59567b3, 0x76c1, 0x4d47, 0xba, 0x1e, 0x79, 0xf9, 0x55, 0xe3, 0x50, 0xef);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMILBitmapEffectConnectorInfo.VTable
			{
				public function HRESULT(IMILBitmapEffectConnector *self, int16* pfConnected) IsConnected;
				public function HRESULT(IMILBitmapEffectConnector *self, IMILBitmapEffect** ppEffect) GetBitmapEffect;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0xa9b4ecaa, 0x7a3c, 0x45e7, 0x85, 0x73, 0xf4, 0xb8, 0x1b, 0x60, 0xdd, 0x6c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public function HRESULT(IMILBitmapEffectInputConnector *self, IMILBitmapEffectOutputConnector* pConnector) ConnectTo;
				public function HRESULT(IMILBitmapEffectInputConnector *self, IMILBitmapEffectOutputConnector** ppConnector) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0x92957aad, 0x841b, 0x4866, 0x82, 0xec, 0x87, 0x52, 0x46, 0x8b, 0x07, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public function HRESULT(IMILBitmapEffectOutputConnector *self, uint32* puiNumberConnections) GetNumberConnections;
				public function HRESULT(IMILBitmapEffectOutputConnector *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnectorImpl : IUnknown
		{
			public const new Guid IID = .(0x21fae777, 0x8b39, 0x4bfa, 0x9f, 0x2d, 0xf3, 0x94, 0x1e, 0xd3, 0x69, 0x13);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectOutputConnectorImpl *self, IMILBitmapEffectInputConnector* pConnection) AddBackLink;
				public function HRESULT(IMILBitmapEffectOutputConnectorImpl *self, IMILBitmapEffectInputConnector* pConnection) RemoveBackLink;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorInputConnector : IUnknown
		{
			public const new Guid IID = .(0x20287e9e, 0x86a2, 0x4e15, 0x95, 0x3d, 0xeb, 0x14, 0x38, 0xa5, 0xb8, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectInteriorInputConnector *self, IMILBitmapEffectInputConnector** pInputConnector) GetInputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorOutputConnector : IUnknown
		{
			public const new Guid IID = .(0x00bbb6dc, 0xacc9, 0x4bfc, 0xb3, 0x44, 0x8b, 0xee, 0x38, 0x3d, 0xfe, 0xfa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectInteriorOutputConnector *self, IMILBitmapEffectOutputConnector** pOutputConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectEvents : IUnknown
		{
			public const new Guid IID = .(0x2e880dd8, 0xf8ce, 0x457b, 0x81, 0x99, 0xd6, 0x0b, 0xb3, 0xd7, 0xef, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IMILBitmapEffectEvents *self, IMILBitmapEffect* pEffect, BSTR bstrPropertyName) PropertyChange;
				public function HRESULT(IMILBitmapEffectEvents *self, IMILBitmapEffect* pEffect, MilRectD* pRect) DirtyRegion;
			}
		}
		
	}
}
