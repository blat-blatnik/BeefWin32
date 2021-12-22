using System;

// namespace Graphics.DirectComposition
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 COMPOSITIONOBJECT_READ = 1;
		public const int32 COMPOSITIONOBJECT_WRITE = 2;
		public const uint32 DCOMPOSITION_MAX_WAITFORCOMPOSITORCLOCK_OBJECTS = 32;
		public const uint32 COMPOSITION_STATS_MAX_TARGETS = 256;
		
		// --- Enums ---
		
		public enum DCOMPOSITION_BITMAP_INTERPOLATION_MODE : int32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_BORDER_MODE : int32
		{
			SOFT = 0,
			HARD = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_COMPOSITE_MODE : int32
		{
			SOURCE_OVER = 0,
			DESTINATION_INVERT = 1,
			MIN_BLEND = 2,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_BACKFACE_VISIBILITY : int32
		{
			VISIBLE = 0,
			HIDDEN = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_OPACITY_MODE : int32
		{
			LAYER = 0,
			MULTIPLY = 1,
			INHERIT = -1,
		}
		public enum DCOMPOSITION_DEPTH_MODE : int32
		{
			TREE = 0,
			SPATIAL = 1,
			SORTED = 3,
			INHERIT = -1,
		}
		public enum COMPOSITION_FRAME_ID_TYPE : int32
		{
			REATED = 0,
			ONFIRMED = 1,
			OMPLETED = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DCOMPOSITION_FRAME_STATISTICS
		{
			public LARGE_INTEGER lastFrameTime;
			public DXGI_RATIONAL currentCompositionRate;
			public LARGE_INTEGER currentTime;
			public LARGE_INTEGER timeFrequency;
			public LARGE_INTEGER nextEstimatedFrameTime;
		}
		[CRepr]
		public struct COMPOSITION_FRAME_STATS
		{
			public uint64 startTime;
			public uint64 targetTime;
			public uint64 framePeriod;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_ID
		{
			public LUID displayAdapterLuid;
			public LUID renderAdapterLuid;
			public uint32 vidPnSourceId;
			public uint32 vidPnTargetId;
			public uint32 uniqueId;
		}
		[CRepr]
		public struct COMPOSITION_STATS
		{
			public uint32 presentCount;
			public uint32 refreshCount;
			public uint32 virtualRefreshCount;
			public uint64 time;
		}
		[CRepr]
		public struct COMPOSITION_TARGET_STATS
		{
			public uint32 outstandingPresents;
			public uint64 presentTime;
			public uint64 vblankDuration;
			public COMPOSITION_STATS presentedStats;
			public COMPOSITION_STATS completedStats;
		}
		[CRepr]
		public struct DCompositionInkTrailPoint
		{
			public float x;
			public float y;
			public float radius;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDCompositionAnimation : IUnknown
		{
			public const new Guid IID = .(0xcbfd91d9, 0x51b2, 0x45e4, 0xb3, 0xde, 0xd1, 0x9c, 0xcf, 0xb8, 0x63, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT SetAbsoluteBeginTime(LARGE_INTEGER beginTime) mut
			{
				return VT.SetAbsoluteBeginTime(&this, beginTime);
			}
			public HRESULT AddCubic(double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) mut
			{
				return VT.AddCubic(&this, beginOffset, constantCoefficient, linearCoefficient, quadraticCoefficient, cubicCoefficient);
			}
			public HRESULT AddSinusoidal(double beginOffset, float bias, float amplitude, float frequency, float phase) mut
			{
				return VT.AddSinusoidal(&this, beginOffset, bias, amplitude, frequency, phase);
			}
			public HRESULT AddRepeat(double beginOffset, double durationToRepeat) mut
			{
				return VT.AddRepeat(&this, beginOffset, durationToRepeat);
			}
			public HRESULT End(double endOffset, float endValue) mut
			{
				return VT.End(&this, endOffset, endValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionAnimation *self) Reset;
				public new function HRESULT(IDCompositionAnimation *self, LARGE_INTEGER beginTime) SetAbsoluteBeginTime;
				public new function HRESULT(IDCompositionAnimation *self, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
				public new function HRESULT(IDCompositionAnimation *self, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
				public new function HRESULT(IDCompositionAnimation *self, double beginOffset, double durationToRepeat) AddRepeat;
				public new function HRESULT(IDCompositionAnimation *self, double endOffset, float endValue) End;
			}
		}
		[CRepr]
		public struct IDCompositionDevice : IUnknown
		{
			public const new Guid IID = .(0xc37ea93a, 0xe7aa, 0x450d, 0xb1, 0x6f, 0x97, 0x46, 0xcb, 0x04, 0x07, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			public HRESULT WaitForCommitCompletion() mut
			{
				return VT.WaitForCommitCompletion(&this);
			}
			public HRESULT GetFrameStatistics(DCOMPOSITION_FRAME_STATISTICS* statistics) mut
			{
				return VT.GetFrameStatistics(&this, statistics);
			}
			public HRESULT CreateTargetForHwnd(HWND hwnd, BOOL topmost, IDCompositionTarget** target) mut
			{
				return VT.CreateTargetForHwnd(&this, hwnd, topmost, target);
			}
			public HRESULT CreateVisual(IDCompositionVisual** visual) mut
			{
				return VT.CreateVisual(&this, visual);
			}
			public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) mut
			{
				return VT.CreateSurface(&this, width, height, pixelFormat, alphaMode, surface);
			}
			public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) mut
			{
				return VT.CreateVirtualSurface(&this, initialWidth, initialHeight, pixelFormat, alphaMode, virtualSurface);
			}
			public HRESULT CreateSurfaceFromHandle(HANDLE handle, IUnknown** surface) mut
			{
				return VT.CreateSurfaceFromHandle(&this, handle, surface);
			}
			public HRESULT CreateSurfaceFromHwnd(HWND hwnd, IUnknown** surface) mut
			{
				return VT.CreateSurfaceFromHwnd(&this, hwnd, surface);
			}
			public HRESULT CreateTranslateTransform(IDCompositionTranslateTransform** translateTransform) mut
			{
				return VT.CreateTranslateTransform(&this, translateTransform);
			}
			public HRESULT CreateScaleTransform(IDCompositionScaleTransform** scaleTransform) mut
			{
				return VT.CreateScaleTransform(&this, scaleTransform);
			}
			public HRESULT CreateRotateTransform(IDCompositionRotateTransform** rotateTransform) mut
			{
				return VT.CreateRotateTransform(&this, rotateTransform);
			}
			public HRESULT CreateSkewTransform(IDCompositionSkewTransform** skewTransform) mut
			{
				return VT.CreateSkewTransform(&this, skewTransform);
			}
			public HRESULT CreateMatrixTransform(IDCompositionMatrixTransform** matrixTransform) mut
			{
				return VT.CreateMatrixTransform(&this, matrixTransform);
			}
			public HRESULT CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) mut
			{
				return VT.CreateTransformGroup(&this, transforms, elements, transformGroup);
			}
			public HRESULT CreateTranslateTransform3D(IDCompositionTranslateTransform3D** translateTransform3D) mut
			{
				return VT.CreateTranslateTransform3D(&this, translateTransform3D);
			}
			public HRESULT CreateScaleTransform3D(IDCompositionScaleTransform3D** scaleTransform3D) mut
			{
				return VT.CreateScaleTransform3D(&this, scaleTransform3D);
			}
			public HRESULT CreateRotateTransform3D(IDCompositionRotateTransform3D** rotateTransform3D) mut
			{
				return VT.CreateRotateTransform3D(&this, rotateTransform3D);
			}
			public HRESULT CreateMatrixTransform3D(IDCompositionMatrixTransform3D** matrixTransform3D) mut
			{
				return VT.CreateMatrixTransform3D(&this, matrixTransform3D);
			}
			public HRESULT CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) mut
			{
				return VT.CreateTransform3DGroup(&this, transforms3D, elements, transform3DGroup);
			}
			public HRESULT CreateEffectGroup(IDCompositionEffectGroup** effectGroup) mut
			{
				return VT.CreateEffectGroup(&this, effectGroup);
			}
			public HRESULT CreateRectangleClip(IDCompositionRectangleClip** clip) mut
			{
				return VT.CreateRectangleClip(&this, clip);
			}
			public HRESULT CreateAnimation(IDCompositionAnimation** animation) mut
			{
				return VT.CreateAnimation(&this, animation);
			}
			public HRESULT CheckDeviceState(BOOL* pfValid) mut
			{
				return VT.CheckDeviceState(&this, pfValid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionDevice *self) Commit;
				public new function HRESULT(IDCompositionDevice *self) WaitForCommitCompletion;
				public new function HRESULT(IDCompositionDevice *self, DCOMPOSITION_FRAME_STATISTICS* statistics) GetFrameStatistics;
				public new function HRESULT(IDCompositionDevice *self, HWND hwnd, BOOL topmost, IDCompositionTarget** target) CreateTargetForHwnd;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionVisual** visual) CreateVisual;
				public new function HRESULT(IDCompositionDevice *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
				public new function HRESULT(IDCompositionDevice *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
				public new function HRESULT(IDCompositionDevice *self, HANDLE handle, IUnknown** surface) CreateSurfaceFromHandle;
				public new function HRESULT(IDCompositionDevice *self, HWND hwnd, IUnknown** surface) CreateSurfaceFromHwnd;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionTranslateTransform** translateTransform) CreateTranslateTransform;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionScaleTransform** scaleTransform) CreateScaleTransform;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionRotateTransform** rotateTransform) CreateRotateTransform;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionSkewTransform** skewTransform) CreateSkewTransform;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionMatrixTransform** matrixTransform) CreateMatrixTransform;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) CreateTransformGroup;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionTranslateTransform3D** translateTransform3D) CreateTranslateTransform3D;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionScaleTransform3D** scaleTransform3D) CreateScaleTransform3D;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionRotateTransform3D** rotateTransform3D) CreateRotateTransform3D;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionMatrixTransform3D** matrixTransform3D) CreateMatrixTransform3D;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) CreateTransform3DGroup;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionEffectGroup** effectGroup) CreateEffectGroup;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionRectangleClip** clip) CreateRectangleClip;
				public new function HRESULT(IDCompositionDevice *self, IDCompositionAnimation** animation) CreateAnimation;
				public new function HRESULT(IDCompositionDevice *self, BOOL* pfValid) CheckDeviceState;
			}
		}
		[CRepr]
		public struct IDCompositionTarget : IUnknown
		{
			public const new Guid IID = .(0xeacdd04c, 0x117e, 0x4e17, 0x88, 0xf4, 0xd1, 0xb1, 0x2b, 0x0e, 0x3d, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRoot(IDCompositionVisual* visual) mut
			{
				return VT.SetRoot(&this, visual);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionTarget *self, IDCompositionVisual* visual) SetRoot;
			}
		}
		[CRepr]
		public struct IDCompositionVisual : IUnknown
		{
			public const new Guid IID = .(0x4d93059d, 0x097b, 0x4651, 0x9a, 0x60, 0xf0, 0xf2, 0x51, 0x16, 0xe2, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOffsetX(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetX(&this, animation);
			}
			public HRESULT SetOffsetX(float offsetX) mut
			{
				return VT.SetOffsetX2(&this, offsetX);
			}
			public HRESULT SetOffsetY(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetY(&this, animation);
			}
			public HRESULT SetOffsetY(float offsetY) mut
			{
				return VT.SetOffsetY2(&this, offsetY);
			}
			public HRESULT SetTransform(IDCompositionTransform* transform) mut
			{
				return VT.SetTransform(&this, transform);
			}
			public HRESULT SetTransform(D2D_MATRIX_3X2_F* matrix) mut
			{
				return VT.SetTransform2(&this, matrix);
			}
			public HRESULT SetTransformParent(IDCompositionVisual* visual) mut
			{
				return VT.SetTransformParent(&this, visual);
			}
			public HRESULT SetEffect(IDCompositionEffect* effect) mut
			{
				return VT.SetEffect(&this, effect);
			}
			public HRESULT SetBitmapInterpolationMode(DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) mut
			{
				return VT.SetBitmapInterpolationMode(&this, interpolationMode);
			}
			public HRESULT SetBorderMode(DCOMPOSITION_BORDER_MODE borderMode) mut
			{
				return VT.SetBorderMode(&this, borderMode);
			}
			public HRESULT SetClip(IDCompositionClip* clip) mut
			{
				return VT.SetClip(&this, clip);
			}
			public HRESULT SetClip(D2D_RECT_F* rect) mut
			{
				return VT.SetClip2(&this, rect);
			}
			public HRESULT SetContent(IUnknown* content) mut
			{
				return VT.SetContent(&this, content);
			}
			public HRESULT AddVisual(IDCompositionVisual* visual, BOOL insertAbove, IDCompositionVisual* referenceVisual) mut
			{
				return VT.AddVisual(&this, visual, insertAbove, referenceVisual);
			}
			public HRESULT RemoveVisual(IDCompositionVisual* visual) mut
			{
				return VT.RemoveVisual(&this, visual);
			}
			public HRESULT RemoveAllVisuals() mut
			{
				return VT.RemoveAllVisuals(&this);
			}
			public HRESULT SetCompositeMode(DCOMPOSITION_COMPOSITE_MODE compositeMode) mut
			{
				return VT.SetCompositeMode(&this, compositeMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionVisual *self, IDCompositionAnimation* animation) SetOffsetX;
				public new function HRESULT(IDCompositionVisual *self, float offsetX) SetOffsetX2;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionAnimation* animation) SetOffsetY;
				public new function HRESULT(IDCompositionVisual *self, float offsetY) SetOffsetY2;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionTransform* transform) SetTransform;
				public new function HRESULT(IDCompositionVisual *self, D2D_MATRIX_3X2_F* matrix) SetTransform2;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual) SetTransformParent;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionEffect* effect) SetEffect;
				public new function HRESULT(IDCompositionVisual *self, DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) SetBitmapInterpolationMode;
				public new function HRESULT(IDCompositionVisual *self, DCOMPOSITION_BORDER_MODE borderMode) SetBorderMode;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionClip* clip) SetClip;
				public new function HRESULT(IDCompositionVisual *self, D2D_RECT_F* rect) SetClip2;
				public new function HRESULT(IDCompositionVisual *self, IUnknown* content) SetContent;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual, BOOL insertAbove, IDCompositionVisual* referenceVisual) AddVisual;
				public new function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual) RemoveVisual;
				public new function HRESULT(IDCompositionVisual *self) RemoveAllVisuals;
				public new function HRESULT(IDCompositionVisual *self, DCOMPOSITION_COMPOSITE_MODE compositeMode) SetCompositeMode;
			}
		}
		[CRepr]
		public struct IDCompositionEffect : IUnknown
		{
			public const new Guid IID = .(0xec81b08f, 0xbfcb, 0x4e8d, 0xb1, 0x93, 0xa9, 0x15, 0x58, 0x79, 0x99, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IDCompositionTransform3D : IDCompositionEffect
		{
			public const new Guid IID = .(0x71185722, 0x246b, 0x41f2, 0xaa, 0xd1, 0x04, 0x43, 0xf7, 0xf4, 0xbf, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDCompositionEffect.VTable
			{
			}
		}
		[CRepr]
		public struct IDCompositionTransform : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xfd55faa7, 0x37e0, 0x4c20, 0x95, 0xd2, 0x9b, 0xe4, 0x5b, 0xc3, 0x3f, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
			}
		}
		[CRepr]
		public struct IDCompositionTranslateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x06791122, 0xc6f0, 0x417d, 0x83, 0x23, 0x26, 0x9e, 0x98, 0x7f, 0x59, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOffsetX(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetX(&this, animation);
			}
			public HRESULT SetOffsetX(float offsetX) mut
			{
				return VT.SetOffsetX2(&this, offsetX);
			}
			public HRESULT SetOffsetY(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetY(&this, animation);
			}
			public HRESULT SetOffsetY(float offsetY) mut
			{
				return VT.SetOffsetY2(&this, offsetY);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function HRESULT(IDCompositionTranslateTransform *self, IDCompositionAnimation* animation) SetOffsetX;
				public new function HRESULT(IDCompositionTranslateTransform *self, float offsetX) SetOffsetX2;
				public new function HRESULT(IDCompositionTranslateTransform *self, IDCompositionAnimation* animation) SetOffsetY;
				public new function HRESULT(IDCompositionTranslateTransform *self, float offsetY) SetOffsetY2;
			}
		}
		[CRepr]
		public struct IDCompositionScaleTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x71fde914, 0x40ef, 0x45ef, 0xbd, 0x51, 0x68, 0xb0, 0x37, 0xc3, 0x39, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetScaleX(IDCompositionAnimation* animation) mut
			{
				return VT.SetScaleX(&this, animation);
			}
			public HRESULT SetScaleX(float scaleX) mut
			{
				return VT.SetScaleX2(&this, scaleX);
			}
			public HRESULT SetScaleY(IDCompositionAnimation* animation) mut
			{
				return VT.SetScaleY(&this, animation);
			}
			public HRESULT SetScaleY(float scaleY) mut
			{
				return VT.SetScaleY2(&this, scaleY);
			}
			public HRESULT SetCenterX(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterX(&this, animation);
			}
			public HRESULT SetCenterX(float centerX) mut
			{
				return VT.SetCenterX2(&this, centerX);
			}
			public HRESULT SetCenterY(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterY(&this, animation);
			}
			public HRESULT SetCenterY(float centerY) mut
			{
				return VT.SetCenterY2(&this, centerY);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetScaleX;
				public new function HRESULT(IDCompositionScaleTransform *self, float scaleX) SetScaleX2;
				public new function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetScaleY;
				public new function HRESULT(IDCompositionScaleTransform *self, float scaleY) SetScaleY2;
				public new function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetCenterX;
				public new function HRESULT(IDCompositionScaleTransform *self, float centerX) SetCenterX2;
				public new function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetCenterY;
				public new function HRESULT(IDCompositionScaleTransform *self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionRotateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x641ed83c, 0xae96, 0x46c5, 0x90, 0xdc, 0x32, 0x77, 0x4c, 0xc5, 0xc6, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAngle(IDCompositionAnimation* animation) mut
			{
				return VT.SetAngle(&this, animation);
			}
			public HRESULT SetAngle(float angle) mut
			{
				return VT.SetAngle2(&this, angle);
			}
			public HRESULT SetCenterX(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterX(&this, animation);
			}
			public HRESULT SetCenterX(float centerX) mut
			{
				return VT.SetCenterX2(&this, centerX);
			}
			public HRESULT SetCenterY(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterY(&this, animation);
			}
			public HRESULT SetCenterY(float centerY) mut
			{
				return VT.SetCenterY2(&this, centerY);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetAngle;
				public new function HRESULT(IDCompositionRotateTransform *self, float angle) SetAngle2;
				public new function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetCenterX;
				public new function HRESULT(IDCompositionRotateTransform *self, float centerX) SetCenterX2;
				public new function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetCenterY;
				public new function HRESULT(IDCompositionRotateTransform *self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionSkewTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0xe57aa735, 0xdcdb, 0x4c72, 0x9c, 0x61, 0x05, 0x91, 0xf5, 0x88, 0x89, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAngleX(IDCompositionAnimation* animation) mut
			{
				return VT.SetAngleX(&this, animation);
			}
			public HRESULT SetAngleX(float angleX) mut
			{
				return VT.SetAngleX2(&this, angleX);
			}
			public HRESULT SetAngleY(IDCompositionAnimation* animation) mut
			{
				return VT.SetAngleY(&this, animation);
			}
			public HRESULT SetAngleY(float angleY) mut
			{
				return VT.SetAngleY2(&this, angleY);
			}
			public HRESULT SetCenterX(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterX(&this, animation);
			}
			public HRESULT SetCenterX(float centerX) mut
			{
				return VT.SetCenterX2(&this, centerX);
			}
			public HRESULT SetCenterY(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterY(&this, animation);
			}
			public HRESULT SetCenterY(float centerY) mut
			{
				return VT.SetCenterY2(&this, centerY);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetAngleX;
				public new function HRESULT(IDCompositionSkewTransform *self, float angleX) SetAngleX2;
				public new function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetAngleY;
				public new function HRESULT(IDCompositionSkewTransform *self, float angleY) SetAngleY2;
				public new function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetCenterX;
				public new function HRESULT(IDCompositionSkewTransform *self, float centerX) SetCenterX2;
				public new function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetCenterY;
				public new function HRESULT(IDCompositionSkewTransform *self, float centerY) SetCenterY2;
			}
		}
		[CRepr]
		public struct IDCompositionMatrixTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x16cdff07, 0xc503, 0x419c, 0x83, 0xf2, 0x09, 0x65, 0xc7, 0xaf, 0x1f, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMatrix(D2D_MATRIX_3X2_F* matrix) mut
			{
				return VT.SetMatrix(&this, matrix);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, IDCompositionAnimation* animation) mut
			{
				return VT.SetMatrixElement(&this, row, column, animation);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut
			{
				return VT.SetMatrixElement2(&this, row, column, value);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform.VTable
			{
				public new function HRESULT(IDCompositionMatrixTransform *self, D2D_MATRIX_3X2_F* matrix) SetMatrix;
				public new function HRESULT(IDCompositionMatrixTransform *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
				public new function HRESULT(IDCompositionMatrixTransform *self, int32 row, int32 column, float value) SetMatrixElement2;
			}
		}
		[CRepr]
		public struct IDCompositionEffectGroup : IDCompositionEffect
		{
			public const new Guid IID = .(0xa7929a74, 0xe6b2, 0x4bd6, 0x8b, 0x95, 0x40, 0x40, 0x11, 0x9c, 0xa3, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOpacity(IDCompositionAnimation* animation) mut
			{
				return VT.SetOpacity(&this, animation);
			}
			public HRESULT SetOpacity(float opacity) mut
			{
				return VT.SetOpacity2(&this, opacity);
			}
			public HRESULT SetTransform3D(IDCompositionTransform3D* transform3D) mut
			{
				return VT.SetTransform3D(&this, transform3D);
			}
			[CRepr]
			public struct VTable : IDCompositionEffect.VTable
			{
				public new function HRESULT(IDCompositionEffectGroup *self, IDCompositionAnimation* animation) SetOpacity;
				public new function HRESULT(IDCompositionEffectGroup *self, float opacity) SetOpacity2;
				public new function HRESULT(IDCompositionEffectGroup *self, IDCompositionTransform3D* transform3D) SetTransform3D;
			}
		}
		[CRepr]
		public struct IDCompositionTranslateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x91636d4b, 0x9ba1, 0x4532, 0xaa, 0xf7, 0xe3, 0x34, 0x49, 0x94, 0xd7, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOffsetX(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetX(&this, animation);
			}
			public HRESULT SetOffsetX(float offsetX) mut
			{
				return VT.SetOffsetX2(&this, offsetX);
			}
			public HRESULT SetOffsetY(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetY(&this, animation);
			}
			public HRESULT SetOffsetY(float offsetY) mut
			{
				return VT.SetOffsetY2(&this, offsetY);
			}
			public HRESULT SetOffsetZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetZ(&this, animation);
			}
			public HRESULT SetOffsetZ(float offsetZ) mut
			{
				return VT.SetOffsetZ2(&this, offsetZ);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetX;
				public new function HRESULT(IDCompositionTranslateTransform3D *self, float offsetX) SetOffsetX2;
				public new function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetY;
				public new function HRESULT(IDCompositionTranslateTransform3D *self, float offsetY) SetOffsetY2;
				public new function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetZ;
				public new function HRESULT(IDCompositionTranslateTransform3D *self, float offsetZ) SetOffsetZ2;
			}
		}
		[CRepr]
		public struct IDCompositionScaleTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x2a9e9ead, 0x364b, 0x4b15, 0xa7, 0xc4, 0xa1, 0x99, 0x7f, 0x78, 0xb3, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetScaleX(IDCompositionAnimation* animation) mut
			{
				return VT.SetScaleX(&this, animation);
			}
			public HRESULT SetScaleX(float scaleX) mut
			{
				return VT.SetScaleX2(&this, scaleX);
			}
			public HRESULT SetScaleY(IDCompositionAnimation* animation) mut
			{
				return VT.SetScaleY(&this, animation);
			}
			public HRESULT SetScaleY(float scaleY) mut
			{
				return VT.SetScaleY2(&this, scaleY);
			}
			public HRESULT SetScaleZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetScaleZ(&this, animation);
			}
			public HRESULT SetScaleZ(float scaleZ) mut
			{
				return VT.SetScaleZ2(&this, scaleZ);
			}
			public HRESULT SetCenterX(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterX(&this, animation);
			}
			public HRESULT SetCenterX(float centerX) mut
			{
				return VT.SetCenterX2(&this, centerX);
			}
			public HRESULT SetCenterY(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterY(&this, animation);
			}
			public HRESULT SetCenterY(float centerY) mut
			{
				return VT.SetCenterY2(&this, centerY);
			}
			public HRESULT SetCenterZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterZ(&this, animation);
			}
			public HRESULT SetCenterZ(float centerZ) mut
			{
				return VT.SetCenterZ2(&this, centerZ);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleX;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float scaleX) SetScaleX2;
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleY;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float scaleY) SetScaleY2;
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleZ;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float scaleZ) SetScaleZ2;
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterX;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float centerX) SetCenterX2;
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterY;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float centerY) SetCenterY2;
				public new function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterZ;
				public new function HRESULT(IDCompositionScaleTransform3D *self, float centerZ) SetCenterZ2;
			}
		}
		[CRepr]
		public struct IDCompositionRotateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xd8f5b23f, 0xd429, 0x4a91, 0xb5, 0x5a, 0xd2, 0xf4, 0x5f, 0xd7, 0x5b, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAngle(IDCompositionAnimation* animation) mut
			{
				return VT.SetAngle(&this, animation);
			}
			public HRESULT SetAngle(float angle) mut
			{
				return VT.SetAngle2(&this, angle);
			}
			public HRESULT SetAxisX(IDCompositionAnimation* animation) mut
			{
				return VT.SetAxisX(&this, animation);
			}
			public HRESULT SetAxisX(float axisX) mut
			{
				return VT.SetAxisX2(&this, axisX);
			}
			public HRESULT SetAxisY(IDCompositionAnimation* animation) mut
			{
				return VT.SetAxisY(&this, animation);
			}
			public HRESULT SetAxisY(float axisY) mut
			{
				return VT.SetAxisY2(&this, axisY);
			}
			public HRESULT SetAxisZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetAxisZ(&this, animation);
			}
			public HRESULT SetAxisZ(float axisZ) mut
			{
				return VT.SetAxisZ2(&this, axisZ);
			}
			public HRESULT SetCenterX(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterX(&this, animation);
			}
			public HRESULT SetCenterX(float centerX) mut
			{
				return VT.SetCenterX2(&this, centerX);
			}
			public HRESULT SetCenterY(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterY(&this, animation);
			}
			public HRESULT SetCenterY(float centerY) mut
			{
				return VT.SetCenterY2(&this, centerY);
			}
			public HRESULT SetCenterZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetCenterZ(&this, animation);
			}
			public HRESULT SetCenterZ(float centerZ) mut
			{
				return VT.SetCenterZ2(&this, centerZ);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAngle;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float angle) SetAngle2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisX;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float axisX) SetAxisX2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisY;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float axisY) SetAxisY2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisZ;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float axisZ) SetAxisZ2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterX;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float centerX) SetCenterX2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterY;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float centerY) SetCenterY2;
				public new function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterZ;
				public new function HRESULT(IDCompositionRotateTransform3D *self, float centerZ) SetCenterZ2;
			}
		}
		[CRepr]
		public struct IDCompositionMatrixTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x4b3363f0, 0x643b, 0x41b7, 0xb6, 0xe0, 0xcc, 0xf2, 0x2d, 0x34, 0x46, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMatrix(D3DMATRIX* matrix) mut
			{
				return VT.SetMatrix(&this, matrix);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, IDCompositionAnimation* animation) mut
			{
				return VT.SetMatrixElement(&this, row, column, animation);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut
			{
				return VT.SetMatrixElement2(&this, row, column, value);
			}
			[CRepr]
			public struct VTable : IDCompositionTransform3D.VTable
			{
				public new function HRESULT(IDCompositionMatrixTransform3D *self, D3DMATRIX* matrix) SetMatrix;
				public new function HRESULT(IDCompositionMatrixTransform3D *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
				public new function HRESULT(IDCompositionMatrixTransform3D *self, int32 row, int32 column, float value) SetMatrixElement2;
			}
		}
		[CRepr]
		public struct IDCompositionClip : IUnknown
		{
			public const new Guid IID = .(0x64ac3703, 0x9d3f, 0x45ec, 0xa1, 0x09, 0x7c, 0xac, 0x0e, 0x7a, 0x13, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
			}
		}
		[CRepr]
		public struct IDCompositionRectangleClip : IDCompositionClip
		{
			public const new Guid IID = .(0x9842ad7d, 0xd9cf, 0x4908, 0xae, 0xd7, 0x48, 0xb5, 0x1d, 0xa5, 0xe7, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLeft(IDCompositionAnimation* animation) mut
			{
				return VT.SetLeft(&this, animation);
			}
			public HRESULT SetLeft(float left) mut
			{
				return VT.SetLeft2(&this, left);
			}
			public HRESULT SetTop(IDCompositionAnimation* animation) mut
			{
				return VT.SetTop(&this, animation);
			}
			public HRESULT SetTop(float top) mut
			{
				return VT.SetTop2(&this, top);
			}
			public HRESULT SetRight(IDCompositionAnimation* animation) mut
			{
				return VT.SetRight(&this, animation);
			}
			public HRESULT SetRight(float right) mut
			{
				return VT.SetRight2(&this, right);
			}
			public HRESULT SetBottom(IDCompositionAnimation* animation) mut
			{
				return VT.SetBottom(&this, animation);
			}
			public HRESULT SetBottom(float bottom) mut
			{
				return VT.SetBottom2(&this, bottom);
			}
			public HRESULT SetTopLeftRadiusX(IDCompositionAnimation* animation) mut
			{
				return VT.SetTopLeftRadiusX(&this, animation);
			}
			public HRESULT SetTopLeftRadiusX(float radius) mut
			{
				return VT.SetTopLeftRadiusX2(&this, radius);
			}
			public HRESULT SetTopLeftRadiusY(IDCompositionAnimation* animation) mut
			{
				return VT.SetTopLeftRadiusY(&this, animation);
			}
			public HRESULT SetTopLeftRadiusY(float radius) mut
			{
				return VT.SetTopLeftRadiusY2(&this, radius);
			}
			public HRESULT SetTopRightRadiusX(IDCompositionAnimation* animation) mut
			{
				return VT.SetTopRightRadiusX(&this, animation);
			}
			public HRESULT SetTopRightRadiusX(float radius) mut
			{
				return VT.SetTopRightRadiusX2(&this, radius);
			}
			public HRESULT SetTopRightRadiusY(IDCompositionAnimation* animation) mut
			{
				return VT.SetTopRightRadiusY(&this, animation);
			}
			public HRESULT SetTopRightRadiusY(float radius) mut
			{
				return VT.SetTopRightRadiusY2(&this, radius);
			}
			public HRESULT SetBottomLeftRadiusX(IDCompositionAnimation* animation) mut
			{
				return VT.SetBottomLeftRadiusX(&this, animation);
			}
			public HRESULT SetBottomLeftRadiusX(float radius) mut
			{
				return VT.SetBottomLeftRadiusX2(&this, radius);
			}
			public HRESULT SetBottomLeftRadiusY(IDCompositionAnimation* animation) mut
			{
				return VT.SetBottomLeftRadiusY(&this, animation);
			}
			public HRESULT SetBottomLeftRadiusY(float radius) mut
			{
				return VT.SetBottomLeftRadiusY2(&this, radius);
			}
			public HRESULT SetBottomRightRadiusX(IDCompositionAnimation* animation) mut
			{
				return VT.SetBottomRightRadiusX(&this, animation);
			}
			public HRESULT SetBottomRightRadiusX(float radius) mut
			{
				return VT.SetBottomRightRadiusX2(&this, radius);
			}
			public HRESULT SetBottomRightRadiusY(IDCompositionAnimation* animation) mut
			{
				return VT.SetBottomRightRadiusY(&this, animation);
			}
			public HRESULT SetBottomRightRadiusY(float radius) mut
			{
				return VT.SetBottomRightRadiusY2(&this, radius);
			}
			[CRepr]
			public struct VTable : IDCompositionClip.VTable
			{
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetLeft;
				public new function HRESULT(IDCompositionRectangleClip *self, float left) SetLeft2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTop;
				public new function HRESULT(IDCompositionRectangleClip *self, float top) SetTop2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetRight;
				public new function HRESULT(IDCompositionRectangleClip *self, float right) SetRight2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottom;
				public new function HRESULT(IDCompositionRectangleClip *self, float bottom) SetBottom2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopLeftRadiusX;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopLeftRadiusX2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopLeftRadiusY;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopLeftRadiusY2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopRightRadiusX;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopRightRadiusX2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopRightRadiusY;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopRightRadiusY2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomLeftRadiusX;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomLeftRadiusX2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomLeftRadiusY;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomLeftRadiusY2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomRightRadiusX;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomRightRadiusX2;
				public new function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomRightRadiusY;
				public new function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomRightRadiusY2;
			}
		}
		[CRepr]
		public struct IDCompositionSurface : IUnknown
		{
			public const new Guid IID = .(0xbb8a4953, 0x2c99, 0x4f5a, 0x96, 0xf5, 0x48, 0x19, 0x02, 0x7f, 0xa3, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginDraw(RECT* updateRect, Guid* iid, void** updateObject, POINT* updateOffset) mut
			{
				return VT.BeginDraw(&this, updateRect, iid, updateObject, updateOffset);
			}
			public HRESULT EndDraw() mut
			{
				return VT.EndDraw(&this);
			}
			public HRESULT SuspendDraw() mut
			{
				return VT.SuspendDraw(&this);
			}
			public HRESULT ResumeDraw() mut
			{
				return VT.ResumeDraw(&this);
			}
			public HRESULT Scroll(RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) mut
			{
				return VT.Scroll(&this, scrollRect, clipRect, offsetX, offsetY);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionSurface *self, RECT* updateRect, Guid* iid, void** updateObject, POINT* updateOffset) BeginDraw;
				public new function HRESULT(IDCompositionSurface *self) EndDraw;
				public new function HRESULT(IDCompositionSurface *self) SuspendDraw;
				public new function HRESULT(IDCompositionSurface *self) ResumeDraw;
				public new function HRESULT(IDCompositionSurface *self, RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) Scroll;
			}
		}
		[CRepr]
		public struct IDCompositionVirtualSurface : IDCompositionSurface
		{
			public const new Guid IID = .(0xae471c51, 0x5f53, 0x4a24, 0x8d, 0x3e, 0xd0, 0xc3, 0x9c, 0x30, 0xb3, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Resize(uint32 width, uint32 height) mut
			{
				return VT.Resize(&this, width, height);
			}
			public HRESULT Trim(RECT* rectangles, uint32 count) mut
			{
				return VT.Trim(&this, rectangles, count);
			}
			[CRepr]
			public struct VTable : IDCompositionSurface.VTable
			{
				public new function HRESULT(IDCompositionVirtualSurface *self, uint32 width, uint32 height) Resize;
				public new function HRESULT(IDCompositionVirtualSurface *self, RECT* rectangles, uint32 count) Trim;
			}
		}
		[CRepr]
		public struct IDCompositionDevice2 : IUnknown
		{
			public const new Guid IID = .(0x75f6468d, 0x1b8e, 0x447c, 0x9b, 0xc6, 0x75, 0xfe, 0xa8, 0x0b, 0x5b, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			public HRESULT WaitForCommitCompletion() mut
			{
				return VT.WaitForCommitCompletion(&this);
			}
			public HRESULT GetFrameStatistics(DCOMPOSITION_FRAME_STATISTICS* statistics) mut
			{
				return VT.GetFrameStatistics(&this, statistics);
			}
			public HRESULT CreateVisual(IDCompositionVisual2** visual) mut
			{
				return VT.CreateVisual(&this, visual);
			}
			public HRESULT CreateSurfaceFactory(IUnknown* renderingDevice, IDCompositionSurfaceFactory** surfaceFactory) mut
			{
				return VT.CreateSurfaceFactory(&this, renderingDevice, surfaceFactory);
			}
			public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) mut
			{
				return VT.CreateSurface(&this, width, height, pixelFormat, alphaMode, surface);
			}
			public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) mut
			{
				return VT.CreateVirtualSurface(&this, initialWidth, initialHeight, pixelFormat, alphaMode, virtualSurface);
			}
			public HRESULT CreateTranslateTransform(IDCompositionTranslateTransform** translateTransform) mut
			{
				return VT.CreateTranslateTransform(&this, translateTransform);
			}
			public HRESULT CreateScaleTransform(IDCompositionScaleTransform** scaleTransform) mut
			{
				return VT.CreateScaleTransform(&this, scaleTransform);
			}
			public HRESULT CreateRotateTransform(IDCompositionRotateTransform** rotateTransform) mut
			{
				return VT.CreateRotateTransform(&this, rotateTransform);
			}
			public HRESULT CreateSkewTransform(IDCompositionSkewTransform** skewTransform) mut
			{
				return VT.CreateSkewTransform(&this, skewTransform);
			}
			public HRESULT CreateMatrixTransform(IDCompositionMatrixTransform** matrixTransform) mut
			{
				return VT.CreateMatrixTransform(&this, matrixTransform);
			}
			public HRESULT CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) mut
			{
				return VT.CreateTransformGroup(&this, transforms, elements, transformGroup);
			}
			public HRESULT CreateTranslateTransform3D(IDCompositionTranslateTransform3D** translateTransform3D) mut
			{
				return VT.CreateTranslateTransform3D(&this, translateTransform3D);
			}
			public HRESULT CreateScaleTransform3D(IDCompositionScaleTransform3D** scaleTransform3D) mut
			{
				return VT.CreateScaleTransform3D(&this, scaleTransform3D);
			}
			public HRESULT CreateRotateTransform3D(IDCompositionRotateTransform3D** rotateTransform3D) mut
			{
				return VT.CreateRotateTransform3D(&this, rotateTransform3D);
			}
			public HRESULT CreateMatrixTransform3D(IDCompositionMatrixTransform3D** matrixTransform3D) mut
			{
				return VT.CreateMatrixTransform3D(&this, matrixTransform3D);
			}
			public HRESULT CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) mut
			{
				return VT.CreateTransform3DGroup(&this, transforms3D, elements, transform3DGroup);
			}
			public HRESULT CreateEffectGroup(IDCompositionEffectGroup** effectGroup) mut
			{
				return VT.CreateEffectGroup(&this, effectGroup);
			}
			public HRESULT CreateRectangleClip(IDCompositionRectangleClip** clip) mut
			{
				return VT.CreateRectangleClip(&this, clip);
			}
			public HRESULT CreateAnimation(IDCompositionAnimation** animation) mut
			{
				return VT.CreateAnimation(&this, animation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionDevice2 *self) Commit;
				public new function HRESULT(IDCompositionDevice2 *self) WaitForCommitCompletion;
				public new function HRESULT(IDCompositionDevice2 *self, DCOMPOSITION_FRAME_STATISTICS* statistics) GetFrameStatistics;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionVisual2** visual) CreateVisual;
				public new function HRESULT(IDCompositionDevice2 *self, IUnknown* renderingDevice, IDCompositionSurfaceFactory** surfaceFactory) CreateSurfaceFactory;
				public new function HRESULT(IDCompositionDevice2 *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
				public new function HRESULT(IDCompositionDevice2 *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionTranslateTransform** translateTransform) CreateTranslateTransform;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionScaleTransform** scaleTransform) CreateScaleTransform;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionRotateTransform** rotateTransform) CreateRotateTransform;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionSkewTransform** skewTransform) CreateSkewTransform;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionMatrixTransform** matrixTransform) CreateMatrixTransform;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) CreateTransformGroup;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionTranslateTransform3D** translateTransform3D) CreateTranslateTransform3D;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionScaleTransform3D** scaleTransform3D) CreateScaleTransform3D;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionRotateTransform3D** rotateTransform3D) CreateRotateTransform3D;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionMatrixTransform3D** matrixTransform3D) CreateMatrixTransform3D;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) CreateTransform3DGroup;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionEffectGroup** effectGroup) CreateEffectGroup;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionRectangleClip** clip) CreateRectangleClip;
				public new function HRESULT(IDCompositionDevice2 *self, IDCompositionAnimation** animation) CreateAnimation;
			}
		}
		[CRepr]
		public struct IDCompositionDesktopDevice : IDCompositionDevice2
		{
			public const new Guid IID = .(0x5f4633fe, 0x1e08, 0x4cb8, 0x8c, 0x75, 0xce, 0x24, 0x33, 0x3f, 0x56, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTargetForHwnd(HWND hwnd, BOOL topmost, IDCompositionTarget** target) mut
			{
				return VT.CreateTargetForHwnd(&this, hwnd, topmost, target);
			}
			public HRESULT CreateSurfaceFromHandle(HANDLE handle, IUnknown** surface) mut
			{
				return VT.CreateSurfaceFromHandle(&this, handle, surface);
			}
			public HRESULT CreateSurfaceFromHwnd(HWND hwnd, IUnknown** surface) mut
			{
				return VT.CreateSurfaceFromHwnd(&this, hwnd, surface);
			}
			[CRepr]
			public struct VTable : IDCompositionDevice2.VTable
			{
				public new function HRESULT(IDCompositionDesktopDevice *self, HWND hwnd, BOOL topmost, IDCompositionTarget** target) CreateTargetForHwnd;
				public new function HRESULT(IDCompositionDesktopDevice *self, HANDLE handle, IUnknown** surface) CreateSurfaceFromHandle;
				public new function HRESULT(IDCompositionDesktopDevice *self, HWND hwnd, IUnknown** surface) CreateSurfaceFromHwnd;
			}
		}
		[CRepr]
		public struct IDCompositionDeviceDebug : IUnknown
		{
			public const new Guid IID = .(0xa1a3c64a, 0x224f, 0x4a81, 0x97, 0x73, 0x4f, 0x03, 0xa8, 0x9d, 0x3c, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableDebugCounters() mut
			{
				return VT.EnableDebugCounters(&this);
			}
			public HRESULT DisableDebugCounters() mut
			{
				return VT.DisableDebugCounters(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionDeviceDebug *self) EnableDebugCounters;
				public new function HRESULT(IDCompositionDeviceDebug *self) DisableDebugCounters;
			}
		}
		[CRepr]
		public struct IDCompositionSurfaceFactory : IUnknown
		{
			public const new Guid IID = .(0xe334bc12, 0x3937, 0x4e02, 0x85, 0xeb, 0xfc, 0xf4, 0xeb, 0x30, 0xd2, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) mut
			{
				return VT.CreateSurface(&this, width, height, pixelFormat, alphaMode, surface);
			}
			public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) mut
			{
				return VT.CreateVirtualSurface(&this, initialWidth, initialHeight, pixelFormat, alphaMode, virtualSurface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionSurfaceFactory *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
				public new function HRESULT(IDCompositionSurfaceFactory *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
			}
		}
		[CRepr]
		public struct IDCompositionVisual2 : IDCompositionVisual
		{
			public const new Guid IID = .(0xe8de1639, 0x4331, 0x4b26, 0xbc, 0x5f, 0x6a, 0x32, 0x1d, 0x34, 0x7a, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOpacityMode(DCOMPOSITION_OPACITY_MODE mode) mut
			{
				return VT.SetOpacityMode(&this, mode);
			}
			public HRESULT SetBackFaceVisibility(DCOMPOSITION_BACKFACE_VISIBILITY visibility) mut
			{
				return VT.SetBackFaceVisibility(&this, visibility);
			}
			[CRepr]
			public struct VTable : IDCompositionVisual.VTable
			{
				public new function HRESULT(IDCompositionVisual2 *self, DCOMPOSITION_OPACITY_MODE mode) SetOpacityMode;
				public new function HRESULT(IDCompositionVisual2 *self, DCOMPOSITION_BACKFACE_VISIBILITY visibility) SetBackFaceVisibility;
			}
		}
		[CRepr]
		public struct IDCompositionVisualDebug : IDCompositionVisual2
		{
			public const new Guid IID = .(0xfed2b808, 0x5eb4, 0x43a0, 0xae, 0xa3, 0x35, 0xf6, 0x52, 0x80, 0xf9, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableHeatMap(D2D1_COLOR_F* color) mut
			{
				return VT.EnableHeatMap(&this, color);
			}
			public HRESULT DisableHeatMap() mut
			{
				return VT.DisableHeatMap(&this);
			}
			public HRESULT EnableRedrawRegions() mut
			{
				return VT.EnableRedrawRegions(&this);
			}
			public HRESULT DisableRedrawRegions() mut
			{
				return VT.DisableRedrawRegions(&this);
			}
			[CRepr]
			public struct VTable : IDCompositionVisual2.VTable
			{
				public new function HRESULT(IDCompositionVisualDebug *self, D2D1_COLOR_F* color) EnableHeatMap;
				public new function HRESULT(IDCompositionVisualDebug *self) DisableHeatMap;
				public new function HRESULT(IDCompositionVisualDebug *self) EnableRedrawRegions;
				public new function HRESULT(IDCompositionVisualDebug *self) DisableRedrawRegions;
			}
		}
		[CRepr]
		public struct IDCompositionVisual3 : IDCompositionVisualDebug
		{
			public const new Guid IID = .(0x2775f462, 0xb6c1, 0x4015, 0xb0, 0xbe, 0xb3, 0xe7, 0xd6, 0xa4, 0x97, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDepthMode(DCOMPOSITION_DEPTH_MODE mode) mut
			{
				return VT.SetDepthMode(&this, mode);
			}
			public HRESULT SetOffsetZ(IDCompositionAnimation* animation) mut
			{
				return VT.SetOffsetZ(&this, animation);
			}
			public HRESULT SetOffsetZ(float offsetZ) mut
			{
				return VT.SetOffsetZ2(&this, offsetZ);
			}
			public HRESULT SetOpacity(IDCompositionAnimation* animation) mut
			{
				return VT.SetOpacity(&this, animation);
			}
			public HRESULT SetOpacity(float opacity) mut
			{
				return VT.SetOpacity2(&this, opacity);
			}
			public HRESULT SetTransform(IDCompositionTransform3D* transform) mut
			{
				return VT.SetTransform(&this, transform);
			}
			public HRESULT SetTransform(D2D_MATRIX_4X4_F* matrix) mut
			{
				return VT.SetTransform2(&this, matrix);
			}
			public HRESULT SetVisible(BOOL visible) mut
			{
				return VT.SetVisible(&this, visible);
			}
			[CRepr]
			public struct VTable : IDCompositionVisualDebug.VTable
			{
				public new function HRESULT(IDCompositionVisual3 *self, DCOMPOSITION_DEPTH_MODE mode) SetDepthMode;
				public new function HRESULT(IDCompositionVisual3 *self, IDCompositionAnimation* animation) SetOffsetZ;
				public new function HRESULT(IDCompositionVisual3 *self, float offsetZ) SetOffsetZ2;
				public new function HRESULT(IDCompositionVisual3 *self, IDCompositionAnimation* animation) SetOpacity;
				public new function HRESULT(IDCompositionVisual3 *self, float opacity) SetOpacity2;
				public new function HRESULT(IDCompositionVisual3 *self, IDCompositionTransform3D* transform) SetTransform;
				public new function HRESULT(IDCompositionVisual3 *self, D2D_MATRIX_4X4_F* matrix) SetTransform2;
				public new function HRESULT(IDCompositionVisual3 *self, BOOL visible) SetVisible;
			}
		}
		[CRepr]
		public struct IDCompositionDevice3 : IDCompositionDevice2
		{
			public const new Guid IID = .(0x0987cb06, 0xf916, 0x48bf, 0x8d, 0x35, 0xce, 0x76, 0x41, 0x78, 0x1b, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateGaussianBlurEffect(IDCompositionGaussianBlurEffect** gaussianBlurEffect) mut
			{
				return VT.CreateGaussianBlurEffect(&this, gaussianBlurEffect);
			}
			public HRESULT CreateBrightnessEffect(IDCompositionBrightnessEffect** brightnessEffect) mut
			{
				return VT.CreateBrightnessEffect(&this, brightnessEffect);
			}
			public HRESULT CreateColorMatrixEffect(IDCompositionColorMatrixEffect** colorMatrixEffect) mut
			{
				return VT.CreateColorMatrixEffect(&this, colorMatrixEffect);
			}
			public HRESULT CreateShadowEffect(IDCompositionShadowEffect** shadowEffect) mut
			{
				return VT.CreateShadowEffect(&this, shadowEffect);
			}
			public HRESULT CreateHueRotationEffect(IDCompositionHueRotationEffect** hueRotationEffect) mut
			{
				return VT.CreateHueRotationEffect(&this, hueRotationEffect);
			}
			public HRESULT CreateSaturationEffect(IDCompositionSaturationEffect** saturationEffect) mut
			{
				return VT.CreateSaturationEffect(&this, saturationEffect);
			}
			public HRESULT CreateTurbulenceEffect(IDCompositionTurbulenceEffect** turbulenceEffect) mut
			{
				return VT.CreateTurbulenceEffect(&this, turbulenceEffect);
			}
			public HRESULT CreateLinearTransferEffect(IDCompositionLinearTransferEffect** linearTransferEffect) mut
			{
				return VT.CreateLinearTransferEffect(&this, linearTransferEffect);
			}
			public HRESULT CreateTableTransferEffect(IDCompositionTableTransferEffect** tableTransferEffect) mut
			{
				return VT.CreateTableTransferEffect(&this, tableTransferEffect);
			}
			public HRESULT CreateCompositeEffect(IDCompositionCompositeEffect** compositeEffect) mut
			{
				return VT.CreateCompositeEffect(&this, compositeEffect);
			}
			public HRESULT CreateBlendEffect(IDCompositionBlendEffect** blendEffect) mut
			{
				return VT.CreateBlendEffect(&this, blendEffect);
			}
			public HRESULT CreateArithmeticCompositeEffect(IDCompositionArithmeticCompositeEffect** arithmeticCompositeEffect) mut
			{
				return VT.CreateArithmeticCompositeEffect(&this, arithmeticCompositeEffect);
			}
			public HRESULT CreateAffineTransform2DEffect(IDCompositionAffineTransform2DEffect** affineTransform2dEffect) mut
			{
				return VT.CreateAffineTransform2DEffect(&this, affineTransform2dEffect);
			}
			[CRepr]
			public struct VTable : IDCompositionDevice2.VTable
			{
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionGaussianBlurEffect** gaussianBlurEffect) CreateGaussianBlurEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionBrightnessEffect** brightnessEffect) CreateBrightnessEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionColorMatrixEffect** colorMatrixEffect) CreateColorMatrixEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionShadowEffect** shadowEffect) CreateShadowEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionHueRotationEffect** hueRotationEffect) CreateHueRotationEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionSaturationEffect** saturationEffect) CreateSaturationEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionTurbulenceEffect** turbulenceEffect) CreateTurbulenceEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionLinearTransferEffect** linearTransferEffect) CreateLinearTransferEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionTableTransferEffect** tableTransferEffect) CreateTableTransferEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionCompositeEffect** compositeEffect) CreateCompositeEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionBlendEffect** blendEffect) CreateBlendEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionArithmeticCompositeEffect** arithmeticCompositeEffect) CreateArithmeticCompositeEffect;
				public new function HRESULT(IDCompositionDevice3 *self, IDCompositionAffineTransform2DEffect** affineTransform2dEffect) CreateAffineTransform2DEffect;
			}
		}
		[CRepr]
		public struct IDCompositionFilterEffect : IDCompositionEffect
		{
			public const new Guid IID = .(0x30c421d5, 0x8cb2, 0x4e9f, 0xb1, 0x33, 0x37, 0xbe, 0x27, 0x0d, 0x4a, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInput(uint32 index, IUnknown* input, uint32 flags) mut
			{
				return VT.SetInput(&this, index, input, flags);
			}
			[CRepr]
			public struct VTable : IDCompositionEffect.VTable
			{
				public new function HRESULT(IDCompositionFilterEffect *self, uint32 index, IUnknown* input, uint32 flags) SetInput;
			}
		}
		[CRepr]
		public struct IDCompositionGaussianBlurEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x45d4d0b7, 0x1bd4, 0x454e, 0x88, 0x94, 0x2b, 0xfa, 0x68, 0x44, 0x30, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStandardDeviation(IDCompositionAnimation* animation) mut
			{
				return VT.SetStandardDeviation(&this, animation);
			}
			public HRESULT SetStandardDeviation(float amount) mut
			{
				return VT.SetStandardDeviation2(&this, amount);
			}
			public HRESULT SetBorderMode(D2D1_BORDER_MODE mode) mut
			{
				return VT.SetBorderMode(&this, mode);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionGaussianBlurEffect *self, IDCompositionAnimation* animation) SetStandardDeviation;
				public new function HRESULT(IDCompositionGaussianBlurEffect *self, float amount) SetStandardDeviation2;
				public new function HRESULT(IDCompositionGaussianBlurEffect *self, D2D1_BORDER_MODE mode) SetBorderMode;
			}
		}
		[CRepr]
		public struct IDCompositionBrightnessEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6027496e, 0xcb3a, 0x49ab, 0x93, 0x4f, 0xd7, 0x98, 0xda, 0x4f, 0x7d, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWhitePoint(D2D_VECTOR_2F* whitePoint) mut
			{
				return VT.SetWhitePoint(&this, whitePoint);
			}
			public HRESULT SetBlackPoint(D2D_VECTOR_2F* blackPoint) mut
			{
				return VT.SetBlackPoint(&this, blackPoint);
			}
			public HRESULT SetWhitePointX(IDCompositionAnimation* animation) mut
			{
				return VT.SetWhitePointX(&this, animation);
			}
			public HRESULT SetWhitePointX(float whitePointX) mut
			{
				return VT.SetWhitePointX2(&this, whitePointX);
			}
			public HRESULT SetWhitePointY(IDCompositionAnimation* animation) mut
			{
				return VT.SetWhitePointY(&this, animation);
			}
			public HRESULT SetWhitePointY(float whitePointY) mut
			{
				return VT.SetWhitePointY2(&this, whitePointY);
			}
			public HRESULT SetBlackPointX(IDCompositionAnimation* animation) mut
			{
				return VT.SetBlackPointX(&this, animation);
			}
			public HRESULT SetBlackPointX(float blackPointX) mut
			{
				return VT.SetBlackPointX2(&this, blackPointX);
			}
			public HRESULT SetBlackPointY(IDCompositionAnimation* animation) mut
			{
				return VT.SetBlackPointY(&this, animation);
			}
			public HRESULT SetBlackPointY(float blackPointY) mut
			{
				return VT.SetBlackPointY2(&this, blackPointY);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionBrightnessEffect *self, D2D_VECTOR_2F* whitePoint) SetWhitePoint;
				public new function HRESULT(IDCompositionBrightnessEffect *self, D2D_VECTOR_2F* blackPoint) SetBlackPoint;
				public new function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetWhitePointX;
				public new function HRESULT(IDCompositionBrightnessEffect *self, float whitePointX) SetWhitePointX2;
				public new function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetWhitePointY;
				public new function HRESULT(IDCompositionBrightnessEffect *self, float whitePointY) SetWhitePointY2;
				public new function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetBlackPointX;
				public new function HRESULT(IDCompositionBrightnessEffect *self, float blackPointX) SetBlackPointX2;
				public new function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetBlackPointY;
				public new function HRESULT(IDCompositionBrightnessEffect *self, float blackPointY) SetBlackPointY2;
			}
		}
		[CRepr]
		public struct IDCompositionColorMatrixEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xc1170a22, 0x3ce2, 0x4966, 0x90, 0xd4, 0x55, 0x40, 0x8b, 0xfc, 0x84, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMatrix(D2D_MATRIX_5X4_F* matrix) mut
			{
				return VT.SetMatrix(&this, matrix);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, IDCompositionAnimation* animation) mut
			{
				return VT.SetMatrixElement(&this, row, column, animation);
			}
			public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut
			{
				return VT.SetMatrixElement2(&this, row, column, value);
			}
			public HRESULT SetAlphaMode(D2D1_COLORMATRIX_ALPHA_MODE mode) mut
			{
				return VT.SetAlphaMode(&this, mode);
			}
			public HRESULT SetClampOutput(BOOL clamp) mut
			{
				return VT.SetClampOutput(&this, clamp);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionColorMatrixEffect *self, D2D_MATRIX_5X4_F* matrix) SetMatrix;
				public new function HRESULT(IDCompositionColorMatrixEffect *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
				public new function HRESULT(IDCompositionColorMatrixEffect *self, int32 row, int32 column, float value) SetMatrixElement2;
				public new function HRESULT(IDCompositionColorMatrixEffect *self, D2D1_COLORMATRIX_ALPHA_MODE mode) SetAlphaMode;
				public new function HRESULT(IDCompositionColorMatrixEffect *self, BOOL clamp) SetClampOutput;
			}
		}
		[CRepr]
		public struct IDCompositionShadowEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4ad18ac0, 0xcfd2, 0x4c2f, 0xbb, 0x62, 0x96, 0xe5, 0x4f, 0xdb, 0x68, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStandardDeviation(IDCompositionAnimation* animation) mut
			{
				return VT.SetStandardDeviation(&this, animation);
			}
			public HRESULT SetStandardDeviation(float amount) mut
			{
				return VT.SetStandardDeviation2(&this, amount);
			}
			public HRESULT SetColor(D2D_VECTOR_4F* color) mut
			{
				return VT.SetColor(&this, color);
			}
			public HRESULT SetRed(IDCompositionAnimation* animation) mut
			{
				return VT.SetRed(&this, animation);
			}
			public HRESULT SetRed(float amount) mut
			{
				return VT.SetRed2(&this, amount);
			}
			public HRESULT SetGreen(IDCompositionAnimation* animation) mut
			{
				return VT.SetGreen(&this, animation);
			}
			public HRESULT SetGreen(float amount) mut
			{
				return VT.SetGreen2(&this, amount);
			}
			public HRESULT SetBlue(IDCompositionAnimation* animation) mut
			{
				return VT.SetBlue(&this, animation);
			}
			public HRESULT SetBlue(float amount) mut
			{
				return VT.SetBlue2(&this, amount);
			}
			public HRESULT SetAlpha(IDCompositionAnimation* animation) mut
			{
				return VT.SetAlpha(&this, animation);
			}
			public HRESULT SetAlpha(float amount) mut
			{
				return VT.SetAlpha2(&this, amount);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetStandardDeviation;
				public new function HRESULT(IDCompositionShadowEffect *self, float amount) SetStandardDeviation2;
				public new function HRESULT(IDCompositionShadowEffect *self, D2D_VECTOR_4F* color) SetColor;
				public new function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetRed;
				public new function HRESULT(IDCompositionShadowEffect *self, float amount) SetRed2;
				public new function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetGreen;
				public new function HRESULT(IDCompositionShadowEffect *self, float amount) SetGreen2;
				public new function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetBlue;
				public new function HRESULT(IDCompositionShadowEffect *self, float amount) SetBlue2;
				public new function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetAlpha;
				public new function HRESULT(IDCompositionShadowEffect *self, float amount) SetAlpha2;
			}
		}
		[CRepr]
		public struct IDCompositionHueRotationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6db9f920, 0x0770, 0x4781, 0xb0, 0xc6, 0x38, 0x19, 0x12, 0xf9, 0xd1, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAngle(IDCompositionAnimation* animation) mut
			{
				return VT.SetAngle(&this, animation);
			}
			public HRESULT SetAngle(float amountDegrees) mut
			{
				return VT.SetAngle2(&this, amountDegrees);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionHueRotationEffect *self, IDCompositionAnimation* animation) SetAngle;
				public new function HRESULT(IDCompositionHueRotationEffect *self, float amountDegrees) SetAngle2;
			}
		}
		[CRepr]
		public struct IDCompositionSaturationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa08debda, 0x3258, 0x4fa4, 0x9f, 0x16, 0x91, 0x74, 0xd3, 0xfe, 0x93, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSaturation(IDCompositionAnimation* animation) mut
			{
				return VT.SetSaturation(&this, animation);
			}
			public HRESULT SetSaturation(float ratio) mut
			{
				return VT.SetSaturation2(&this, ratio);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionSaturationEffect *self, IDCompositionAnimation* animation) SetSaturation;
				public new function HRESULT(IDCompositionSaturationEffect *self, float ratio) SetSaturation2;
			}
		}
		[CRepr]
		public struct IDCompositionTurbulenceEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa6a55bda, 0xc09c, 0x49f3, 0x91, 0x93, 0xa4, 0x19, 0x22, 0xc8, 0x97, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOffset(D2D_VECTOR_2F* offset) mut
			{
				return VT.SetOffset(&this, offset);
			}
			public HRESULT SetBaseFrequency(D2D_VECTOR_2F* frequency) mut
			{
				return VT.SetBaseFrequency(&this, frequency);
			}
			public HRESULT SetSize(D2D_VECTOR_2F* size) mut
			{
				return VT.SetSize(&this, size);
			}
			public HRESULT SetNumOctaves(uint32 numOctaves) mut
			{
				return VT.SetNumOctaves(&this, numOctaves);
			}
			public HRESULT SetSeed(uint32 seed) mut
			{
				return VT.SetSeed(&this, seed);
			}
			public HRESULT SetNoise(D2D1_TURBULENCE_NOISE noise) mut
			{
				return VT.SetNoise(&this, noise);
			}
			public HRESULT SetStitchable(BOOL stitchable) mut
			{
				return VT.SetStitchable(&this, stitchable);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* offset) SetOffset;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* frequency) SetBaseFrequency;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* size) SetSize;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, uint32 numOctaves) SetNumOctaves;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, uint32 seed) SetSeed;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, D2D1_TURBULENCE_NOISE noise) SetNoise;
				public new function HRESULT(IDCompositionTurbulenceEffect *self, BOOL stitchable) SetStitchable;
			}
		}
		[CRepr]
		public struct IDCompositionLinearTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4305ee5b, 0xc4a0, 0x4c88, 0x93, 0x85, 0x67, 0x12, 0x4e, 0x01, 0x76, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRedYIntercept(IDCompositionAnimation* animation) mut
			{
				return VT.SetRedYIntercept(&this, animation);
			}
			public HRESULT SetRedYIntercept(float redYIntercept) mut
			{
				return VT.SetRedYIntercept2(&this, redYIntercept);
			}
			public HRESULT SetRedSlope(IDCompositionAnimation* animation) mut
			{
				return VT.SetRedSlope(&this, animation);
			}
			public HRESULT SetRedSlope(float redSlope) mut
			{
				return VT.SetRedSlope2(&this, redSlope);
			}
			public HRESULT SetRedDisable(BOOL redDisable) mut
			{
				return VT.SetRedDisable(&this, redDisable);
			}
			public HRESULT SetGreenYIntercept(IDCompositionAnimation* animation) mut
			{
				return VT.SetGreenYIntercept(&this, animation);
			}
			public HRESULT SetGreenYIntercept(float greenYIntercept) mut
			{
				return VT.SetGreenYIntercept2(&this, greenYIntercept);
			}
			public HRESULT SetGreenSlope(IDCompositionAnimation* animation) mut
			{
				return VT.SetGreenSlope(&this, animation);
			}
			public HRESULT SetGreenSlope(float greenSlope) mut
			{
				return VT.SetGreenSlope2(&this, greenSlope);
			}
			public HRESULT SetGreenDisable(BOOL greenDisable) mut
			{
				return VT.SetGreenDisable(&this, greenDisable);
			}
			public HRESULT SetBlueYIntercept(IDCompositionAnimation* animation) mut
			{
				return VT.SetBlueYIntercept(&this, animation);
			}
			public HRESULT SetBlueYIntercept(float blueYIntercept) mut
			{
				return VT.SetBlueYIntercept2(&this, blueYIntercept);
			}
			public HRESULT SetBlueSlope(IDCompositionAnimation* animation) mut
			{
				return VT.SetBlueSlope(&this, animation);
			}
			public HRESULT SetBlueSlope(float blueSlope) mut
			{
				return VT.SetBlueSlope2(&this, blueSlope);
			}
			public HRESULT SetBlueDisable(BOOL blueDisable) mut
			{
				return VT.SetBlueDisable(&this, blueDisable);
			}
			public HRESULT SetAlphaYIntercept(IDCompositionAnimation* animation) mut
			{
				return VT.SetAlphaYIntercept(&this, animation);
			}
			public HRESULT SetAlphaYIntercept(float alphaYIntercept) mut
			{
				return VT.SetAlphaYIntercept2(&this, alphaYIntercept);
			}
			public HRESULT SetAlphaSlope(IDCompositionAnimation* animation) mut
			{
				return VT.SetAlphaSlope(&this, animation);
			}
			public HRESULT SetAlphaSlope(float alphaSlope) mut
			{
				return VT.SetAlphaSlope2(&this, alphaSlope);
			}
			public HRESULT SetAlphaDisable(BOOL alphaDisable) mut
			{
				return VT.SetAlphaDisable(&this, alphaDisable);
			}
			public HRESULT SetClampOutput(BOOL clampOutput) mut
			{
				return VT.SetClampOutput(&this, clampOutput);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetRedYIntercept;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float redYIntercept) SetRedYIntercept2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetRedSlope;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float redSlope) SetRedSlope2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, BOOL redDisable) SetRedDisable;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetGreenYIntercept;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float greenYIntercept) SetGreenYIntercept2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetGreenSlope;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float greenSlope) SetGreenSlope2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, BOOL greenDisable) SetGreenDisable;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetBlueYIntercept;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float blueYIntercept) SetBlueYIntercept2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetBlueSlope;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float blueSlope) SetBlueSlope2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, BOOL blueDisable) SetBlueDisable;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetAlphaYIntercept;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float alphaYIntercept) SetAlphaYIntercept2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetAlphaSlope;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, float alphaSlope) SetAlphaSlope2;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, BOOL alphaDisable) SetAlphaDisable;
				public new function HRESULT(IDCompositionLinearTransferEffect *self, BOOL clampOutput) SetClampOutput;
			}
		}
		[CRepr]
		public struct IDCompositionTableTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x9b7e82e2, 0x69c5, 0x4eb4, 0xa5, 0xf5, 0xa7, 0x03, 0x3f, 0x51, 0x32, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRedTable(float* tableValues, uint32 count) mut
			{
				return VT.SetRedTable(&this, tableValues, count);
			}
			public HRESULT SetGreenTable(float* tableValues, uint32 count) mut
			{
				return VT.SetGreenTable(&this, tableValues, count);
			}
			public HRESULT SetBlueTable(float* tableValues, uint32 count) mut
			{
				return VT.SetBlueTable(&this, tableValues, count);
			}
			public HRESULT SetAlphaTable(float* tableValues, uint32 count) mut
			{
				return VT.SetAlphaTable(&this, tableValues, count);
			}
			public HRESULT SetRedDisable(BOOL redDisable) mut
			{
				return VT.SetRedDisable(&this, redDisable);
			}
			public HRESULT SetGreenDisable(BOOL greenDisable) mut
			{
				return VT.SetGreenDisable(&this, greenDisable);
			}
			public HRESULT SetBlueDisable(BOOL blueDisable) mut
			{
				return VT.SetBlueDisable(&this, blueDisable);
			}
			public HRESULT SetAlphaDisable(BOOL alphaDisable) mut
			{
				return VT.SetAlphaDisable(&this, alphaDisable);
			}
			public HRESULT SetClampOutput(BOOL clampOutput) mut
			{
				return VT.SetClampOutput(&this, clampOutput);
			}
			public HRESULT SetRedTableValue(uint32 index, IDCompositionAnimation* animation) mut
			{
				return VT.SetRedTableValue(&this, index, animation);
			}
			public HRESULT SetRedTableValue(uint32 index, float value) mut
			{
				return VT.SetRedTableValue2(&this, index, value);
			}
			public HRESULT SetGreenTableValue(uint32 index, IDCompositionAnimation* animation) mut
			{
				return VT.SetGreenTableValue(&this, index, animation);
			}
			public HRESULT SetGreenTableValue(uint32 index, float value) mut
			{
				return VT.SetGreenTableValue2(&this, index, value);
			}
			public HRESULT SetBlueTableValue(uint32 index, IDCompositionAnimation* animation) mut
			{
				return VT.SetBlueTableValue(&this, index, animation);
			}
			public HRESULT SetBlueTableValue(uint32 index, float value) mut
			{
				return VT.SetBlueTableValue2(&this, index, value);
			}
			public HRESULT SetAlphaTableValue(uint32 index, IDCompositionAnimation* animation) mut
			{
				return VT.SetAlphaTableValue(&this, index, animation);
			}
			public HRESULT SetAlphaTableValue(uint32 index, float value) mut
			{
				return VT.SetAlphaTableValue2(&this, index, value);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetRedTable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetGreenTable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetBlueTable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetAlphaTable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, BOOL redDisable) SetRedDisable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, BOOL greenDisable) SetGreenDisable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, BOOL blueDisable) SetBlueDisable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, BOOL alphaDisable) SetAlphaDisable;
				public new function HRESULT(IDCompositionTableTransferEffect *self, BOOL clampOutput) SetClampOutput;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetRedTableValue;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetRedTableValue2;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetGreenTableValue;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetGreenTableValue2;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetBlueTableValue;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetBlueTableValue2;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetAlphaTableValue;
				public new function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetAlphaTableValue2;
			}
		}
		[CRepr]
		public struct IDCompositionCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x576616c0, 0xa231, 0x494d, 0xa3, 0x8d, 0x00, 0xfd, 0x5e, 0xc4, 0xdb, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMode(D2D1_COMPOSITE_MODE mode) mut
			{
				return VT.SetMode(&this, mode);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionCompositeEffect *self, D2D1_COMPOSITE_MODE mode) SetMode;
			}
		}
		[CRepr]
		public struct IDCompositionBlendEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x33ecdc0a, 0x578a, 0x4a11, 0x9c, 0x14, 0x0c, 0xb9, 0x05, 0x17, 0xf9, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMode(D2D1_BLEND_MODE mode) mut
			{
				return VT.SetMode(&this, mode);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionBlendEffect *self, D2D1_BLEND_MODE mode) SetMode;
			}
		}
		[CRepr]
		public struct IDCompositionArithmeticCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x3b67dfa8, 0xe3dd, 0x4e61, 0xb6, 0x40, 0x46, 0xc2, 0xf3, 0xd7, 0x39, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCoefficients(D2D_VECTOR_4F* coefficients) mut
			{
				return VT.SetCoefficients(&this, coefficients);
			}
			public HRESULT SetClampOutput(BOOL clampoutput) mut
			{
				return VT.SetClampOutput(&this, clampoutput);
			}
			public HRESULT SetCoefficient1(IDCompositionAnimation* animation) mut
			{
				return VT.SetCoefficient1(&this, animation);
			}
			public HRESULT SetCoefficient1(float Coeffcient1) mut
			{
				return VT.SetCoefficient12(&this, Coeffcient1);
			}
			public HRESULT SetCoefficient2(IDCompositionAnimation* animation) mut
			{
				return VT.SetCoefficient2(&this, animation);
			}
			public HRESULT SetCoefficient2(float Coefficient2) mut
			{
				return VT.SetCoefficient22(&this, Coefficient2);
			}
			public HRESULT SetCoefficient3(IDCompositionAnimation* animation) mut
			{
				return VT.SetCoefficient3(&this, animation);
			}
			public HRESULT SetCoefficient3(float Coefficient3) mut
			{
				return VT.SetCoefficient32(&this, Coefficient3);
			}
			public HRESULT SetCoefficient4(IDCompositionAnimation* animation) mut
			{
				return VT.SetCoefficient4(&this, animation);
			}
			public HRESULT SetCoefficient4(float Coefficient4) mut
			{
				return VT.SetCoefficient42(&this, Coefficient4);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, D2D_VECTOR_4F* coefficients) SetCoefficients;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, BOOL clampoutput) SetClampOutput;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient1;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coeffcient1) SetCoefficient12;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient2;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient2) SetCoefficient22;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient3;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient3) SetCoefficient32;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient4;
				public new function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient4) SetCoefficient42;
			}
		}
		[CRepr]
		public struct IDCompositionAffineTransform2DEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x0b74b9e8, 0xcdd6, 0x492f, 0xbb, 0xbc, 0x5e, 0xd3, 0x21, 0x57, 0x02, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInterpolationMode(D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) mut
			{
				return VT.SetInterpolationMode(&this, interpolationMode);
			}
			public HRESULT SetBorderMode(D2D1_BORDER_MODE borderMode) mut
			{
				return VT.SetBorderMode(&this, borderMode);
			}
			public HRESULT SetTransformMatrix(D2D_MATRIX_3X2_F* transformMatrix) mut
			{
				return VT.SetTransformMatrix(&this, transformMatrix);
			}
			public HRESULT SetTransformMatrixElement(int32 row, int32 column, IDCompositionAnimation* animation) mut
			{
				return VT.SetTransformMatrixElement(&this, row, column, animation);
			}
			public HRESULT SetTransformMatrixElement(int32 row, int32 column, float value) mut
			{
				return VT.SetTransformMatrixElement2(&this, row, column, value);
			}
			public HRESULT SetSharpness(IDCompositionAnimation* animation) mut
			{
				return VT.SetSharpness(&this, animation);
			}
			public HRESULT SetSharpness(float sharpness) mut
			{
				return VT.SetSharpness2(&this, sharpness);
			}
			[CRepr]
			public struct VTable : IDCompositionFilterEffect.VTable
			{
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D1_BORDER_MODE borderMode) SetBorderMode;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D_MATRIX_3X2_F* transformMatrix) SetTransformMatrix;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, int32 row, int32 column, IDCompositionAnimation* animation) SetTransformMatrixElement;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, int32 row, int32 column, float value) SetTransformMatrixElement2;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, IDCompositionAnimation* animation) SetSharpness;
				public new function HRESULT(IDCompositionAffineTransform2DEffect *self, float sharpness) SetSharpness2;
			}
		}
		[CRepr]
		public struct IDCompositionDelegatedInkTrail : IUnknown
		{
			public const new Guid IID = .(0xc2448e9b, 0x547d, 0x4057, 0x8c, 0xf5, 0x81, 0x44, 0xed, 0xe1, 0xc2, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTrailPoints(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, uint32* generationId) mut
			{
				return VT.AddTrailPoints(&this, inkPoints, inkPointsCount, generationId);
			}
			public HRESULT AddTrailPointsWithPrediction(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, uint32* generationId) mut
			{
				return VT.AddTrailPointsWithPrediction(&this, inkPoints, inkPointsCount, predictedInkPoints, predictedInkPointsCount, generationId);
			}
			public HRESULT RemoveTrailPoints(uint32 generationId) mut
			{
				return VT.RemoveTrailPoints(&this, generationId);
			}
			public HRESULT StartNewTrail(D2D1_COLOR_F* color) mut
			{
				return VT.StartNewTrail(&this, color);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionDelegatedInkTrail *self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, uint32* generationId) AddTrailPoints;
				public new function HRESULT(IDCompositionDelegatedInkTrail *self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, uint32* generationId) AddTrailPointsWithPrediction;
				public new function HRESULT(IDCompositionDelegatedInkTrail *self, uint32 generationId) RemoveTrailPoints;
				public new function HRESULT(IDCompositionDelegatedInkTrail *self, D2D1_COLOR_F* color) StartNewTrail;
			}
		}
		[CRepr]
		public struct IDCompositionInkTrailDevice : IUnknown
		{
			public const new Guid IID = .(0xdf0c7cec, 0xcdeb, 0x4d4a, 0xb9, 0x1c, 0x72, 0x1b, 0xf2, 0x2f, 0x4e, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateDelegatedInkTrail(IDCompositionDelegatedInkTrail** inkTrail) mut
			{
				return VT.CreateDelegatedInkTrail(&this, inkTrail);
			}
			public HRESULT CreateDelegatedInkTrailForSwapChain(IUnknown* swapChain, IDCompositionDelegatedInkTrail** inkTrail) mut
			{
				return VT.CreateDelegatedInkTrailForSwapChain(&this, swapChain, inkTrail);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDCompositionInkTrailDevice *self, IDCompositionDelegatedInkTrail** inkTrail) CreateDelegatedInkTrail;
				public new function HRESULT(IDCompositionInkTrailDevice *self, IUnknown* swapChain, IDCompositionDelegatedInkTrail** inkTrail) CreateDelegatedInkTrailForSwapChain;
			}
		}
		
		// --- Functions ---
		
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice(IDXGIDevice* dxgiDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice2(IUnknown* renderingDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateDevice3(IUnknown* renderingDevice, Guid* iid, void** dcompositionDevice);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionCreateSurfaceHandle(uint32 desiredAccess, SECURITY_ATTRIBUTES* securityAttributes, HANDLE* surfaceHandle);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionAttachMouseWheelToHwnd(IDCompositionVisual* visual, HWND hwnd, BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionAttachMouseDragToHwnd(IDCompositionVisual* visual, HWND hwnd, BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetFrameId(COMPOSITION_FRAME_ID_TYPE frameIdType, uint64* frameId);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetStatistics(uint64 frameId, COMPOSITION_FRAME_STATS* frameStats, uint32 targetIdCount, COMPOSITION_TARGET_ID* targetIds, uint32* actualTargetIdCount);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionGetTargetStatistics(uint64 frameId, COMPOSITION_TARGET_ID* targetId, COMPOSITION_TARGET_STATS* targetStats);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DCompositionBoostCompositorClock(BOOL enable);
		[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DCompositionWaitForCompositorClock(uint32 count, HANDLE* handles, uint32 timeoutInMs);
		
	}
}
