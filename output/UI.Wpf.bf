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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIndex(uint32* puiIndex) mut
			{
				return VT.GetIndex(&this, puiIndex);
			}
			public HRESULT GetOptimalFormat(Guid* pFormat) mut
			{
				return VT.GetOptimalFormat(&this, pFormat);
			}
			public HRESULT GetNumberFormats(uint32* pulNumberFormats) mut
			{
				return VT.GetNumberFormats(&this, pulNumberFormats);
			}
			public HRESULT GetFormat(uint32 ulIndex, Guid* pFormat) mut
			{
				return VT.GetFormat(&this, ulIndex, pFormat);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32* puiIndex) GetIndex;
				public new function HRESULT(IMILBitmapEffectConnectorInfo *self, Guid* pFormat) GetOptimalFormat;
				public new function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32* pulNumberFormats) GetNumberFormats;
				public new function HRESULT(IMILBitmapEffectConnectorInfo *self, uint32 ulIndex, Guid* pFormat) GetFormat;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnectionsInfo : IUnknown
		{
			public const new Guid IID = .(0x476b538a, 0xc765, 0x4237, 0xba, 0x4a, 0xd6, 0xa8, 0x80, 0xff, 0x0c, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNumberInputs(uint32* puiNumInputs) mut
			{
				return VT.GetNumberInputs(&this, puiNumInputs);
			}
			public HRESULT GetNumberOutputs(uint32* puiNumOutputs) mut
			{
				return VT.GetNumberOutputs(&this, puiNumOutputs);
			}
			public HRESULT GetInputConnectorInfo(uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) mut
			{
				return VT.GetInputConnectorInfo(&this, uiIndex, ppConnectorInfo);
			}
			public HRESULT GetOutputConnectorInfo(uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) mut
			{
				return VT.GetOutputConnectorInfo(&this, uiIndex, ppConnectorInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32* puiNumInputs) GetNumberInputs;
				public new function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32* puiNumOutputs) GetNumberOutputs;
				public new function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) GetInputConnectorInfo;
				public new function HRESULT(IMILBitmapEffectConnectionsInfo *self, uint32 uiIndex, IMILBitmapEffectConnectorInfo** ppConnectorInfo) GetOutputConnectorInfo;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnections : IUnknown
		{
			public const new Guid IID = .(0xc2b5d861, 0x9b1a, 0x4374, 0x89, 0xb0, 0xde, 0xc4, 0x87, 0x4d, 0x6a, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputConnector(uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) mut
			{
				return VT.GetInputConnector(&this, uiIndex, ppConnector);
			}
			public HRESULT GetOutputConnector(uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) mut
			{
				return VT.GetOutputConnector(&this, uiIndex, ppConnector);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectConnections *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) GetInputConnector;
				public new function HRESULT(IMILBitmapEffectConnections *self, uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffect : IUnknown
		{
			public const new Guid IID = .(0x8a6ff321, 0xc944, 0x4a1b, 0x99, 0x44, 0x99, 0x54, 0xaf, 0x30, 0x12, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOutput(uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, IWICBitmapSource** ppBitmapSource) mut
			{
				return VT.GetOutput(&this, uiIndex, pContext, ppBitmapSource);
			}
			public HRESULT GetParentEffect(IMILBitmapEffectGroup** ppParentEffect) mut
			{
				return VT.GetParentEffect(&this, ppParentEffect);
			}
			public HRESULT SetInputSource(uint32 uiIndex, IWICBitmapSource* pBitmapSource) mut
			{
				return VT.SetInputSource(&this, uiIndex, pBitmapSource);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffect *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, IWICBitmapSource** ppBitmapSource) GetOutput;
				public new function HRESULT(IMILBitmapEffect *self, IMILBitmapEffectGroup** ppParentEffect) GetParentEffect;
				public new function HRESULT(IMILBitmapEffect *self, uint32 uiIndex, IWICBitmapSource* pBitmapSource) SetInputSource;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectImpl : IUnknown
		{
			public const new Guid IID = .(0xcc2468f2, 0x9936, 0x47be, 0xb4, 0xaf, 0x06, 0xb5, 0xdf, 0x5d, 0xbc, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsInPlaceModificationAllowed(IMILBitmapEffectOutputConnector* pOutputConnector, int16* pfModifyInPlace) mut
			{
				return VT.IsInPlaceModificationAllowed(&this, pOutputConnector, pfModifyInPlace);
			}
			public HRESULT SetParentEffect(IMILBitmapEffectGroup* pParentEffect) mut
			{
				return VT.SetParentEffect(&this, pParentEffect);
			}
			public HRESULT GetInputSource(uint32 uiIndex, IWICBitmapSource** ppBitmapSource) mut
			{
				return VT.GetInputSource(&this, uiIndex, ppBitmapSource);
			}
			public HRESULT GetInputSourceBounds(uint32 uiIndex, MilRectD* pRect) mut
			{
				return VT.GetInputSourceBounds(&this, uiIndex, pRect);
			}
			public HRESULT GetInputBitmapSource(uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) mut
			{
				return VT.GetInputBitmapSource(&this, uiIndex, pRenderContext, pfModifyInPlace, ppBitmapSource);
			}
			public HRESULT GetOutputBitmapSource(uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) mut
			{
				return VT.GetOutputBitmapSource(&this, uiIndex, pRenderContext, pfModifyInPlace, ppBitmapSource);
			}
			public HRESULT Initialize(IUnknown* pInner) mut
			{
				return VT.Initialize(&this, pInner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectImpl *self, IMILBitmapEffectOutputConnector* pOutputConnector, int16* pfModifyInPlace) IsInPlaceModificationAllowed;
				public new function HRESULT(IMILBitmapEffectImpl *self, IMILBitmapEffectGroup* pParentEffect) SetParentEffect;
				public new function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IWICBitmapSource** ppBitmapSource) GetInputSource;
				public new function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, MilRectD* pRect) GetInputSourceBounds;
				public new function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetInputBitmapSource;
				public new function HRESULT(IMILBitmapEffectImpl *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pRenderContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetOutputBitmapSource;
				public new function HRESULT(IMILBitmapEffectImpl *self, IUnknown* pInner) Initialize;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroup : IUnknown
		{
			public const new Guid IID = .(0x2f952360, 0x698a, 0x4ac6, 0x81, 0xa1, 0xbc, 0xfd, 0xf0, 0x8e, 0xb8, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInteriorInputConnector(uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) mut
			{
				return VT.GetInteriorInputConnector(&this, uiIndex, ppConnector);
			}
			public HRESULT GetInteriorOutputConnector(uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) mut
			{
				return VT.GetInteriorOutputConnector(&this, uiIndex, ppConnector);
			}
			public HRESULT Add(IMILBitmapEffect* pEffect) mut
			{
				return VT.Add(&this, pEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectGroup *self, uint32 uiIndex, IMILBitmapEffectOutputConnector** ppConnector) GetInteriorInputConnector;
				public new function HRESULT(IMILBitmapEffectGroup *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnector) GetInteriorOutputConnector;
				public new function HRESULT(IMILBitmapEffectGroup *self, IMILBitmapEffect* pEffect) Add;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectGroupImpl : IUnknown
		{
			public const new Guid IID = .(0x78fed518, 0x1cfc, 0x4807, 0x8b, 0x85, 0x6b, 0x6e, 0x51, 0x39, 0x8f, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Preprocess(IMILBitmapEffectRenderContext* pContext) mut
			{
				return VT.Preprocess(&this, pContext);
			}
			public HRESULT GetNumberChildren(uint32* puiNumberChildren) mut
			{
				return VT.GetNumberChildren(&this, puiNumberChildren);
			}
			public HRESULT GetChildren(IMILBitmapEffects** pChildren) mut
			{
				return VT.GetChildren(&this, pChildren);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectGroupImpl *self, IMILBitmapEffectRenderContext* pContext) Preprocess;
				public new function HRESULT(IMILBitmapEffectGroupImpl *self, uint32* puiNumberChildren) GetNumberChildren;
				public new function HRESULT(IMILBitmapEffectGroupImpl *self, IMILBitmapEffects** pChildren) GetChildren;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContext : IUnknown
		{
			public const new Guid IID = .(0x12a2ec7e, 0x2d33, 0x44b2, 0xb3, 0x34, 0x1a, 0xbb, 0x78, 0x46, 0xe3, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutputPixelFormat(Guid* format) mut
			{
				return VT.SetOutputPixelFormat(&this, format);
			}
			public HRESULT GetOutputPixelFormat(Guid* pFormat) mut
			{
				return VT.GetOutputPixelFormat(&this, pFormat);
			}
			public HRESULT SetUseSoftwareRenderer(int16 fSoftware) mut
			{
				return VT.SetUseSoftwareRenderer(&this, fSoftware);
			}
			public HRESULT SetInitialTransform(MILMatrixF* pMatrix) mut
			{
				return VT.SetInitialTransform(&this, pMatrix);
			}
			public HRESULT GetFinalTransform(MILMatrixF* pMatrix) mut
			{
				return VT.GetFinalTransform(&this, pMatrix);
			}
			public HRESULT SetOutputDPI(double dblDpiX, double dblDpiY) mut
			{
				return VT.SetOutputDPI(&this, dblDpiX, dblDpiY);
			}
			public HRESULT GetOutputDPI(double* pdblDpiX, double* pdblDpiY) mut
			{
				return VT.GetOutputDPI(&this, pdblDpiX, pdblDpiY);
			}
			public HRESULT SetRegionOfInterest(MilRectD* pRect) mut
			{
				return VT.SetRegionOfInterest(&this, pRect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectRenderContext *self, Guid* format) SetOutputPixelFormat;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, Guid* pFormat) GetOutputPixelFormat;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, int16 fSoftware) SetUseSoftwareRenderer;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, MILMatrixF* pMatrix) SetInitialTransform;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, MILMatrixF* pMatrix) GetFinalTransform;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, double dblDpiX, double dblDpiY) SetOutputDPI;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, double* pdblDpiX, double* pdblDpiY) GetOutputDPI;
				public new function HRESULT(IMILBitmapEffectRenderContext *self, MilRectD* pRect) SetRegionOfInterest;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectRenderContextImpl : IUnknown
		{
			public const new Guid IID = .(0x4d25accb, 0x797d, 0x4fd2, 0xb1, 0x28, 0xdf, 0xfe, 0xff, 0x84, 0xfc, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUseSoftwareRenderer(int16* pfSoftware) mut
			{
				return VT.GetUseSoftwareRenderer(&this, pfSoftware);
			}
			public HRESULT GetTransform(MILMatrixF* pMatrix) mut
			{
				return VT.GetTransform(&this, pMatrix);
			}
			public HRESULT UpdateTransform(MILMatrixF* pMatrix) mut
			{
				return VT.UpdateTransform(&this, pMatrix);
			}
			public HRESULT GetOutputBounds(MilRectD* pRect) mut
			{
				return VT.GetOutputBounds(&this, pRect);
			}
			public HRESULT UpdateOutputBounds(MilRectD* pRect) mut
			{
				return VT.UpdateOutputBounds(&this, pRect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectRenderContextImpl *self, int16* pfSoftware) GetUseSoftwareRenderer;
				public new function HRESULT(IMILBitmapEffectRenderContextImpl *self, MILMatrixF* pMatrix) GetTransform;
				public new function HRESULT(IMILBitmapEffectRenderContextImpl *self, MILMatrixF* pMatrix) UpdateTransform;
				public new function HRESULT(IMILBitmapEffectRenderContextImpl *self, MilRectD* pRect) GetOutputBounds;
				public new function HRESULT(IMILBitmapEffectRenderContextImpl *self, MilRectD* pRect) UpdateOutputBounds;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectFactory : IUnknown
		{
			public const new Guid IID = .(0x33a9df34, 0xa403, 0x4ec7, 0xb0, 0x7e, 0xbc, 0x06, 0x82, 0x37, 0x08, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEffect(Guid* pguidEffect, IMILBitmapEffect** ppEffect) mut
			{
				return VT.CreateEffect(&this, pguidEffect, ppEffect);
			}
			public HRESULT CreateContext(IMILBitmapEffectRenderContext** ppContext) mut
			{
				return VT.CreateContext(&this, ppContext);
			}
			public HRESULT CreateEffectOuter(IMILBitmapEffect** ppEffect) mut
			{
				return VT.CreateEffectOuter(&this, ppEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectFactory *self, Guid* pguidEffect, IMILBitmapEffect** ppEffect) CreateEffect;
				public new function HRESULT(IMILBitmapEffectFactory *self, IMILBitmapEffectRenderContext** ppContext) CreateContext;
				public new function HRESULT(IMILBitmapEffectFactory *self, IMILBitmapEffect** ppEffect) CreateEffectOuter;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitive : IUnknown
		{
			public const new Guid IID = .(0x67e31025, 0x3091, 0x4dfc, 0x98, 0xd6, 0xdd, 0x49, 0x45, 0x51, 0x46, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOutput(uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) mut
			{
				return VT.GetOutput(&this, uiIndex, pContext, pfModifyInPlace, ppBitmapSource);
			}
			public HRESULT TransformPoint(uint32 uiIndex, MilPoint2D* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext, int16* pfPointTransformed) mut
			{
				return VT.TransformPoint(&this, uiIndex, p, fForwardTransform, pContext, pfPointTransformed);
			}
			public HRESULT TransformRect(uint32 uiIndex, MilRectD* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext) mut
			{
				return VT.TransformRect(&this, uiIndex, p, fForwardTransform, pContext);
			}
			public HRESULT HasAffineTransform(uint32 uiIndex, int16* pfAffine) mut
			{
				return VT.HasAffineTransform(&this, uiIndex, pfAffine);
			}
			public HRESULT HasInverseTransform(uint32 uiIndex, int16* pfHasInverse) mut
			{
				return VT.HasInverseTransform(&this, uiIndex, pfHasInverse);
			}
			public HRESULT GetAffineMatrix(uint32 uiIndex, MilMatrix3x2D* pMatrix) mut
			{
				return VT.GetAffineMatrix(&this, uiIndex, pMatrix);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, IMILBitmapEffectRenderContext* pContext, int16* pfModifyInPlace, IWICBitmapSource** ppBitmapSource) GetOutput;
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilPoint2D* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext, int16* pfPointTransformed) TransformPoint;
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilRectD* p, int16 fForwardTransform, IMILBitmapEffectRenderContext* pContext) TransformRect;
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, int16* pfAffine) HasAffineTransform;
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, int16* pfHasInverse) HasInverseTransform;
				public new function HRESULT(IMILBitmapEffectPrimitive *self, uint32 uiIndex, MilMatrix3x2D* pMatrix) GetAffineMatrix;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectPrimitiveImpl : IUnknown
		{
			public const new Guid IID = .(0xce41e00b, 0xefa6, 0x44e7, 0xb0, 0x07, 0xdd, 0x04, 0x2e, 0x3a, 0xe1, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDirty(uint32 uiOutputIndex, int16* pfDirty) mut
			{
				return VT.IsDirty(&this, uiOutputIndex, pfDirty);
			}
			public HRESULT IsVolatile(uint32 uiOutputIndex, int16* pfVolatile) mut
			{
				return VT.IsVolatile(&this, uiOutputIndex, pfVolatile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectPrimitiveImpl *self, uint32 uiOutputIndex, int16* pfDirty) IsDirty;
				public new function HRESULT(IMILBitmapEffectPrimitiveImpl *self, uint32 uiOutputIndex, int16* pfVolatile) IsVolatile;
			}
		}
		[CRepr]
		public struct IMILBitmapEffects : IUnknown
		{
			public const new Guid IID = .(0x51ac3dce, 0x67c5, 0x448b, 0x91, 0x80, 0xad, 0x3e, 0xab, 0xdd, 0xd5, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT _NewEnum(IUnknown** ppiuReturn) mut
			{
				return VT._NewEnum(&this, ppiuReturn);
			}
			public HRESULT get_Parent(IMILBitmapEffectGroup** ppEffect) mut
			{
				return VT.get_Parent(&this, ppEffect);
			}
			public HRESULT Item(uint32 uindex, IMILBitmapEffect** ppEffect) mut
			{
				return VT.Item(&this, uindex, ppEffect);
			}
			public HRESULT get_Count(uint32* puiCount) mut
			{
				return VT.get_Count(&this, puiCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffects *self, IUnknown** ppiuReturn) _NewEnum;
				public new function HRESULT(IMILBitmapEffects *self, IMILBitmapEffectGroup** ppEffect) get_Parent;
				public new function HRESULT(IMILBitmapEffects *self, uint32 uindex, IMILBitmapEffect** ppEffect) Item;
				public new function HRESULT(IMILBitmapEffects *self, uint32* puiCount) get_Count;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectConnector : IMILBitmapEffectConnectorInfo
		{
			public const new Guid IID = .(0xf59567b3, 0x76c1, 0x4d47, 0xba, 0x1e, 0x79, 0xf9, 0x55, 0xe3, 0x50, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsConnected(int16* pfConnected) mut
			{
				return VT.IsConnected(&this, pfConnected);
			}
			public HRESULT GetBitmapEffect(IMILBitmapEffect** ppEffect) mut
			{
				return VT.GetBitmapEffect(&this, ppEffect);
			}
			[CRepr]
			public struct VTable : IMILBitmapEffectConnectorInfo.VTable
			{
				public new function HRESULT(IMILBitmapEffectConnector *self, int16* pfConnected) IsConnected;
				public new function HRESULT(IMILBitmapEffectConnector *self, IMILBitmapEffect** ppEffect) GetBitmapEffect;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0xa9b4ecaa, 0x7a3c, 0x45e7, 0x85, 0x73, 0xf4, 0xb8, 0x1b, 0x60, 0xdd, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConnectTo(IMILBitmapEffectOutputConnector* pConnector) mut
			{
				return VT.ConnectTo(&this, pConnector);
			}
			public HRESULT GetConnection(IMILBitmapEffectOutputConnector** ppConnector) mut
			{
				return VT.GetConnection(&this, ppConnector);
			}
			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public new function HRESULT(IMILBitmapEffectInputConnector *self, IMILBitmapEffectOutputConnector* pConnector) ConnectTo;
				public new function HRESULT(IMILBitmapEffectInputConnector *self, IMILBitmapEffectOutputConnector** ppConnector) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnector : IMILBitmapEffectConnector
		{
			public const new Guid IID = .(0x92957aad, 0x841b, 0x4866, 0x82, 0xec, 0x87, 0x52, 0x46, 0x8b, 0x07, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNumberConnections(uint32* puiNumberConnections) mut
			{
				return VT.GetNumberConnections(&this, puiNumberConnections);
			}
			public HRESULT GetConnection(uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnection) mut
			{
				return VT.GetConnection(&this, uiIndex, ppConnection);
			}
			[CRepr]
			public struct VTable : IMILBitmapEffectConnector.VTable
			{
				public new function HRESULT(IMILBitmapEffectOutputConnector *self, uint32* puiNumberConnections) GetNumberConnections;
				public new function HRESULT(IMILBitmapEffectOutputConnector *self, uint32 uiIndex, IMILBitmapEffectInputConnector** ppConnection) GetConnection;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectOutputConnectorImpl : IUnknown
		{
			public const new Guid IID = .(0x21fae777, 0x8b39, 0x4bfa, 0x9f, 0x2d, 0xf3, 0x94, 0x1e, 0xd3, 0x69, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBackLink(IMILBitmapEffectInputConnector* pConnection) mut
			{
				return VT.AddBackLink(&this, pConnection);
			}
			public HRESULT RemoveBackLink(IMILBitmapEffectInputConnector* pConnection) mut
			{
				return VT.RemoveBackLink(&this, pConnection);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectOutputConnectorImpl *self, IMILBitmapEffectInputConnector* pConnection) AddBackLink;
				public new function HRESULT(IMILBitmapEffectOutputConnectorImpl *self, IMILBitmapEffectInputConnector* pConnection) RemoveBackLink;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorInputConnector : IUnknown
		{
			public const new Guid IID = .(0x20287e9e, 0x86a2, 0x4e15, 0x95, 0x3d, 0xeb, 0x14, 0x38, 0xa5, 0xb8, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputConnector(IMILBitmapEffectInputConnector** pInputConnector) mut
			{
				return VT.GetInputConnector(&this, pInputConnector);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectInteriorInputConnector *self, IMILBitmapEffectInputConnector** pInputConnector) GetInputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectInteriorOutputConnector : IUnknown
		{
			public const new Guid IID = .(0x00bbb6dc, 0xacc9, 0x4bfc, 0xb3, 0x44, 0x8b, 0xee, 0x38, 0x3d, 0xfe, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOutputConnector(IMILBitmapEffectOutputConnector** pOutputConnector) mut
			{
				return VT.GetOutputConnector(&this, pOutputConnector);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectInteriorOutputConnector *self, IMILBitmapEffectOutputConnector** pOutputConnector) GetOutputConnector;
			}
		}
		[CRepr]
		public struct IMILBitmapEffectEvents : IUnknown
		{
			public const new Guid IID = .(0x2e880dd8, 0xf8ce, 0x457b, 0x81, 0x99, 0xd6, 0x0b, 0xb3, 0xd7, 0xef, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PropertyChange(IMILBitmapEffect* pEffect, BSTR bstrPropertyName) mut
			{
				return VT.PropertyChange(&this, pEffect, bstrPropertyName);
			}
			public HRESULT DirtyRegion(IMILBitmapEffect* pEffect, MilRectD* pRect) mut
			{
				return VT.DirtyRegion(&this, pEffect, pRect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMILBitmapEffectEvents *self, IMILBitmapEffect* pEffect, BSTR bstrPropertyName) PropertyChange;
				public new function HRESULT(IMILBitmapEffectEvents *self, IMILBitmapEffect* pEffect, MilRectD* pRect) DirtyRegion;
			}
		}
		
	}
}
