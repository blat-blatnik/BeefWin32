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
		
		[AllowDuplicates]
		public enum DCOMPOSITION_BITMAP_INTERPOLATION_MODE : int32
		{
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_LINEAR = 1,
			DCOMPOSITION_BITMAP_INTERPOLATION_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_BORDER_MODE : int32
		{
			DCOMPOSITION_BORDER_MODE_SOFT = 0,
			DCOMPOSITION_BORDER_MODE_HARD = 1,
			DCOMPOSITION_BORDER_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_COMPOSITE_MODE : int32
		{
			DCOMPOSITION_COMPOSITE_MODE_SOURCE_OVER = 0,
			DCOMPOSITION_COMPOSITE_MODE_DESTINATION_INVERT = 1,
			DCOMPOSITION_COMPOSITE_MODE_MIN_BLEND = 2,
			DCOMPOSITION_COMPOSITE_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_BACKFACE_VISIBILITY : int32
		{
			DCOMPOSITION_BACKFACE_VISIBILITY_VISIBLE = 0,
			DCOMPOSITION_BACKFACE_VISIBILITY_HIDDEN = 1,
			DCOMPOSITION_BACKFACE_VISIBILITY_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_OPACITY_MODE : int32
		{
			DCOMPOSITION_OPACITY_MODE_LAYER = 0,
			DCOMPOSITION_OPACITY_MODE_MULTIPLY = 1,
			DCOMPOSITION_OPACITY_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum DCOMPOSITION_DEPTH_MODE : int32
		{
			DCOMPOSITION_DEPTH_MODE_TREE = 0,
			DCOMPOSITION_DEPTH_MODE_SPATIAL = 1,
			DCOMPOSITION_DEPTH_MODE_SORTED = 3,
			DCOMPOSITION_DEPTH_MODE_INHERIT = -1,
		}
		[AllowDuplicates]
		public enum COMPOSITION_FRAME_ID_TYPE : int32
		{
			COMPOSITION_FRAME_ID_CREATED = 0,
			COMPOSITION_FRAME_ID_CONFIRMED = 1,
			COMPOSITION_FRAME_ID_COMPLETED = 2,
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
			
			public function HRESULT(IDCompositionAnimation *self) Reset;
			public function HRESULT(IDCompositionAnimation *self, LARGE_INTEGER beginTime) SetAbsoluteBeginTime;
			public function HRESULT(IDCompositionAnimation *self, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
			public function HRESULT(IDCompositionAnimation *self, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
			public function HRESULT(IDCompositionAnimation *self, double beginOffset, double durationToRepeat) AddRepeat;
			public function HRESULT(IDCompositionAnimation *self, double endOffset, float endValue) End;
		}
		[CRepr]
		public struct IDCompositionDevice : IUnknown
		{
			public const new Guid IID = .(0xc37ea93a, 0xe7aa, 0x450d, 0xb1, 0x6f, 0x97, 0x46, 0xcb, 0x04, 0x07, 0xf3);
			
			public function HRESULT(IDCompositionDevice *self) Commit;
			public function HRESULT(IDCompositionDevice *self) WaitForCommitCompletion;
			public function HRESULT(IDCompositionDevice *self, DCOMPOSITION_FRAME_STATISTICS* statistics) GetFrameStatistics;
			public function HRESULT(IDCompositionDevice *self, HWND hwnd, BOOL topmost, IDCompositionTarget** target) CreateTargetForHwnd;
			public function HRESULT(IDCompositionDevice *self, IDCompositionVisual** visual) CreateVisual;
			public function HRESULT(IDCompositionDevice *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
			public function HRESULT(IDCompositionDevice *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
			public function HRESULT(IDCompositionDevice *self, HANDLE handle, IUnknown** surface) CreateSurfaceFromHandle;
			public function HRESULT(IDCompositionDevice *self, HWND hwnd, IUnknown** surface) CreateSurfaceFromHwnd;
			public function HRESULT(IDCompositionDevice *self, IDCompositionTranslateTransform** translateTransform) CreateTranslateTransform;
			public function HRESULT(IDCompositionDevice *self, IDCompositionScaleTransform** scaleTransform) CreateScaleTransform;
			public function HRESULT(IDCompositionDevice *self, IDCompositionRotateTransform** rotateTransform) CreateRotateTransform;
			public function HRESULT(IDCompositionDevice *self, IDCompositionSkewTransform** skewTransform) CreateSkewTransform;
			public function HRESULT(IDCompositionDevice *self, IDCompositionMatrixTransform** matrixTransform) CreateMatrixTransform;
			public function HRESULT(IDCompositionDevice *self, IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) CreateTransformGroup;
			public function HRESULT(IDCompositionDevice *self, IDCompositionTranslateTransform3D** translateTransform3D) CreateTranslateTransform3D;
			public function HRESULT(IDCompositionDevice *self, IDCompositionScaleTransform3D** scaleTransform3D) CreateScaleTransform3D;
			public function HRESULT(IDCompositionDevice *self, IDCompositionRotateTransform3D** rotateTransform3D) CreateRotateTransform3D;
			public function HRESULT(IDCompositionDevice *self, IDCompositionMatrixTransform3D** matrixTransform3D) CreateMatrixTransform3D;
			public function HRESULT(IDCompositionDevice *self, IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) CreateTransform3DGroup;
			public function HRESULT(IDCompositionDevice *self, IDCompositionEffectGroup** effectGroup) CreateEffectGroup;
			public function HRESULT(IDCompositionDevice *self, IDCompositionRectangleClip** clip) CreateRectangleClip;
			public function HRESULT(IDCompositionDevice *self, IDCompositionAnimation** animation) CreateAnimation;
			public function HRESULT(IDCompositionDevice *self, BOOL* pfValid) CheckDeviceState;
		}
		[CRepr]
		public struct IDCompositionTarget : IUnknown
		{
			public const new Guid IID = .(0xeacdd04c, 0x117e, 0x4e17, 0x88, 0xf4, 0xd1, 0xb1, 0x2b, 0x0e, 0x3d, 0x89);
			
			public function HRESULT(IDCompositionTarget *self, IDCompositionVisual* visual) SetRoot;
		}
		[CRepr]
		public struct IDCompositionVisual : IUnknown
		{
			public const new Guid IID = .(0x4d93059d, 0x097b, 0x4651, 0x9a, 0x60, 0xf0, 0xf2, 0x51, 0x16, 0xe2, 0xf3);
			
			public function HRESULT(IDCompositionVisual *self, IDCompositionAnimation* animation) SetOffsetX;
			public function HRESULT(IDCompositionVisual *self, float offsetX) SetOffsetX2;
			public function HRESULT(IDCompositionVisual *self, IDCompositionAnimation* animation) SetOffsetY;
			public function HRESULT(IDCompositionVisual *self, float offsetY) SetOffsetY2;
			public function HRESULT(IDCompositionVisual *self, IDCompositionTransform* transform) SetTransform;
			public function HRESULT(IDCompositionVisual *self, D2D_MATRIX_3X2_F* matrix) SetTransform2;
			public function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual) SetTransformParent;
			public function HRESULT(IDCompositionVisual *self, IDCompositionEffect* effect) SetEffect;
			public function HRESULT(IDCompositionVisual *self, DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) SetBitmapInterpolationMode;
			public function HRESULT(IDCompositionVisual *self, DCOMPOSITION_BORDER_MODE borderMode) SetBorderMode;
			public function HRESULT(IDCompositionVisual *self, IDCompositionClip* clip) SetClip;
			public function HRESULT(IDCompositionVisual *self, D2D_RECT_F* rect) SetClip2;
			public function HRESULT(IDCompositionVisual *self, IUnknown* content) SetContent;
			public function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual, BOOL insertAbove, IDCompositionVisual* referenceVisual) AddVisual;
			public function HRESULT(IDCompositionVisual *self, IDCompositionVisual* visual) RemoveVisual;
			public function HRESULT(IDCompositionVisual *self) RemoveAllVisuals;
			public function HRESULT(IDCompositionVisual *self, DCOMPOSITION_COMPOSITE_MODE compositeMode) SetCompositeMode;
		}
		[CRepr]
		public struct IDCompositionEffect : IUnknown
		{
			public const new Guid IID = .(0xec81b08f, 0xbfcb, 0x4e8d, 0xb1, 0x93, 0xa9, 0x15, 0x58, 0x79, 0x99, 0xe8);
			
		}
		[CRepr]
		public struct IDCompositionTransform3D : IDCompositionEffect
		{
			public const new Guid IID = .(0x71185722, 0x246b, 0x41f2, 0xaa, 0xd1, 0x04, 0x43, 0xf7, 0xf4, 0xbf, 0xc2);
			
		}
		[CRepr]
		public struct IDCompositionTransform : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xfd55faa7, 0x37e0, 0x4c20, 0x95, 0xd2, 0x9b, 0xe4, 0x5b, 0xc3, 0x3f, 0x55);
			
		}
		[CRepr]
		public struct IDCompositionTranslateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x06791122, 0xc6f0, 0x417d, 0x83, 0x23, 0x26, 0x9e, 0x98, 0x7f, 0x59, 0x54);
			
			public function HRESULT(IDCompositionTranslateTransform *self, IDCompositionAnimation* animation) SetOffsetX;
			public function HRESULT(IDCompositionTranslateTransform *self, float offsetX) SetOffsetX2;
			public function HRESULT(IDCompositionTranslateTransform *self, IDCompositionAnimation* animation) SetOffsetY;
			public function HRESULT(IDCompositionTranslateTransform *self, float offsetY) SetOffsetY2;
		}
		[CRepr]
		public struct IDCompositionScaleTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x71fde914, 0x40ef, 0x45ef, 0xbd, 0x51, 0x68, 0xb0, 0x37, 0xc3, 0x39, 0xf9);
			
			public function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetScaleX;
			public function HRESULT(IDCompositionScaleTransform *self, float scaleX) SetScaleX2;
			public function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetScaleY;
			public function HRESULT(IDCompositionScaleTransform *self, float scaleY) SetScaleY2;
			public function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetCenterX;
			public function HRESULT(IDCompositionScaleTransform *self, float centerX) SetCenterX2;
			public function HRESULT(IDCompositionScaleTransform *self, IDCompositionAnimation* animation) SetCenterY;
			public function HRESULT(IDCompositionScaleTransform *self, float centerY) SetCenterY2;
		}
		[CRepr]
		public struct IDCompositionRotateTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x641ed83c, 0xae96, 0x46c5, 0x90, 0xdc, 0x32, 0x77, 0x4c, 0xc5, 0xc6, 0xd5);
			
			public function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetAngle;
			public function HRESULT(IDCompositionRotateTransform *self, float angle) SetAngle2;
			public function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetCenterX;
			public function HRESULT(IDCompositionRotateTransform *self, float centerX) SetCenterX2;
			public function HRESULT(IDCompositionRotateTransform *self, IDCompositionAnimation* animation) SetCenterY;
			public function HRESULT(IDCompositionRotateTransform *self, float centerY) SetCenterY2;
		}
		[CRepr]
		public struct IDCompositionSkewTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0xe57aa735, 0xdcdb, 0x4c72, 0x9c, 0x61, 0x05, 0x91, 0xf5, 0x88, 0x89, 0xee);
			
			public function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetAngleX;
			public function HRESULT(IDCompositionSkewTransform *self, float angleX) SetAngleX2;
			public function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetAngleY;
			public function HRESULT(IDCompositionSkewTransform *self, float angleY) SetAngleY2;
			public function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetCenterX;
			public function HRESULT(IDCompositionSkewTransform *self, float centerX) SetCenterX2;
			public function HRESULT(IDCompositionSkewTransform *self, IDCompositionAnimation* animation) SetCenterY;
			public function HRESULT(IDCompositionSkewTransform *self, float centerY) SetCenterY2;
		}
		[CRepr]
		public struct IDCompositionMatrixTransform : IDCompositionTransform
		{
			public const new Guid IID = .(0x16cdff07, 0xc503, 0x419c, 0x83, 0xf2, 0x09, 0x65, 0xc7, 0xaf, 0x1f, 0xa6);
			
			public function HRESULT(IDCompositionMatrixTransform *self, D2D_MATRIX_3X2_F* matrix) SetMatrix;
			public function HRESULT(IDCompositionMatrixTransform *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
			public function HRESULT(IDCompositionMatrixTransform *self, int32 row, int32 column, float value) SetMatrixElement2;
		}
		[CRepr]
		public struct IDCompositionEffectGroup : IDCompositionEffect
		{
			public const new Guid IID = .(0xa7929a74, 0xe6b2, 0x4bd6, 0x8b, 0x95, 0x40, 0x40, 0x11, 0x9c, 0xa3, 0x4d);
			
			public function HRESULT(IDCompositionEffectGroup *self, IDCompositionAnimation* animation) SetOpacity;
			public function HRESULT(IDCompositionEffectGroup *self, float opacity) SetOpacity2;
			public function HRESULT(IDCompositionEffectGroup *self, IDCompositionTransform3D* transform3D) SetTransform3D;
		}
		[CRepr]
		public struct IDCompositionTranslateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x91636d4b, 0x9ba1, 0x4532, 0xaa, 0xf7, 0xe3, 0x34, 0x49, 0x94, 0xd7, 0x88);
			
			public function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetX;
			public function HRESULT(IDCompositionTranslateTransform3D *self, float offsetX) SetOffsetX2;
			public function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetY;
			public function HRESULT(IDCompositionTranslateTransform3D *self, float offsetY) SetOffsetY2;
			public function HRESULT(IDCompositionTranslateTransform3D *self, IDCompositionAnimation* animation) SetOffsetZ;
			public function HRESULT(IDCompositionTranslateTransform3D *self, float offsetZ) SetOffsetZ2;
		}
		[CRepr]
		public struct IDCompositionScaleTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x2a9e9ead, 0x364b, 0x4b15, 0xa7, 0xc4, 0xa1, 0x99, 0x7f, 0x78, 0xb3, 0x89);
			
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleX;
			public function HRESULT(IDCompositionScaleTransform3D *self, float scaleX) SetScaleX2;
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleY;
			public function HRESULT(IDCompositionScaleTransform3D *self, float scaleY) SetScaleY2;
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetScaleZ;
			public function HRESULT(IDCompositionScaleTransform3D *self, float scaleZ) SetScaleZ2;
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterX;
			public function HRESULT(IDCompositionScaleTransform3D *self, float centerX) SetCenterX2;
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterY;
			public function HRESULT(IDCompositionScaleTransform3D *self, float centerY) SetCenterY2;
			public function HRESULT(IDCompositionScaleTransform3D *self, IDCompositionAnimation* animation) SetCenterZ;
			public function HRESULT(IDCompositionScaleTransform3D *self, float centerZ) SetCenterZ2;
		}
		[CRepr]
		public struct IDCompositionRotateTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0xd8f5b23f, 0xd429, 0x4a91, 0xb5, 0x5a, 0xd2, 0xf4, 0x5f, 0xd7, 0x5b, 0x18);
			
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAngle;
			public function HRESULT(IDCompositionRotateTransform3D *self, float angle) SetAngle2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisX;
			public function HRESULT(IDCompositionRotateTransform3D *self, float axisX) SetAxisX2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisY;
			public function HRESULT(IDCompositionRotateTransform3D *self, float axisY) SetAxisY2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetAxisZ;
			public function HRESULT(IDCompositionRotateTransform3D *self, float axisZ) SetAxisZ2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterX;
			public function HRESULT(IDCompositionRotateTransform3D *self, float centerX) SetCenterX2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterY;
			public function HRESULT(IDCompositionRotateTransform3D *self, float centerY) SetCenterY2;
			public function HRESULT(IDCompositionRotateTransform3D *self, IDCompositionAnimation* animation) SetCenterZ;
			public function HRESULT(IDCompositionRotateTransform3D *self, float centerZ) SetCenterZ2;
		}
		[CRepr]
		public struct IDCompositionMatrixTransform3D : IDCompositionTransform3D
		{
			public const new Guid IID = .(0x4b3363f0, 0x643b, 0x41b7, 0xb6, 0xe0, 0xcc, 0xf2, 0x2d, 0x34, 0x46, 0x7c);
			
			public function HRESULT(IDCompositionMatrixTransform3D *self, D3DMATRIX* matrix) SetMatrix;
			public function HRESULT(IDCompositionMatrixTransform3D *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
			public function HRESULT(IDCompositionMatrixTransform3D *self, int32 row, int32 column, float value) SetMatrixElement2;
		}
		[CRepr]
		public struct IDCompositionClip : IUnknown
		{
			public const new Guid IID = .(0x64ac3703, 0x9d3f, 0x45ec, 0xa1, 0x09, 0x7c, 0xac, 0x0e, 0x7a, 0x13, 0xa7);
			
		}
		[CRepr]
		public struct IDCompositionRectangleClip : IDCompositionClip
		{
			public const new Guid IID = .(0x9842ad7d, 0xd9cf, 0x4908, 0xae, 0xd7, 0x48, 0xb5, 0x1d, 0xa5, 0xe7, 0xc2);
			
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetLeft;
			public function HRESULT(IDCompositionRectangleClip *self, float left) SetLeft2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTop;
			public function HRESULT(IDCompositionRectangleClip *self, float top) SetTop2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetRight;
			public function HRESULT(IDCompositionRectangleClip *self, float right) SetRight2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottom;
			public function HRESULT(IDCompositionRectangleClip *self, float bottom) SetBottom2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopLeftRadiusX;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopLeftRadiusX2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopLeftRadiusY;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopLeftRadiusY2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopRightRadiusX;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopRightRadiusX2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetTopRightRadiusY;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetTopRightRadiusY2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomLeftRadiusX;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomLeftRadiusX2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomLeftRadiusY;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomLeftRadiusY2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomRightRadiusX;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomRightRadiusX2;
			public function HRESULT(IDCompositionRectangleClip *self, IDCompositionAnimation* animation) SetBottomRightRadiusY;
			public function HRESULT(IDCompositionRectangleClip *self, float radius) SetBottomRightRadiusY2;
		}
		[CRepr]
		public struct IDCompositionSurface : IUnknown
		{
			public const new Guid IID = .(0xbb8a4953, 0x2c99, 0x4f5a, 0x96, 0xf5, 0x48, 0x19, 0x02, 0x7f, 0xa3, 0xac);
			
			public function HRESULT(IDCompositionSurface *self, RECT* updateRect, Guid* iid, void** updateObject, POINT* updateOffset) BeginDraw;
			public function HRESULT(IDCompositionSurface *self) EndDraw;
			public function HRESULT(IDCompositionSurface *self) SuspendDraw;
			public function HRESULT(IDCompositionSurface *self) ResumeDraw;
			public function HRESULT(IDCompositionSurface *self, RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) Scroll;
		}
		[CRepr]
		public struct IDCompositionVirtualSurface : IDCompositionSurface
		{
			public const new Guid IID = .(0xae471c51, 0x5f53, 0x4a24, 0x8d, 0x3e, 0xd0, 0xc3, 0x9c, 0x30, 0xb3, 0xf0);
			
			public function HRESULT(IDCompositionVirtualSurface *self, uint32 width, uint32 height) Resize;
			public function HRESULT(IDCompositionVirtualSurface *self, RECT* rectangles, uint32 count) Trim;
		}
		[CRepr]
		public struct IDCompositionDevice2 : IUnknown
		{
			public const new Guid IID = .(0x75f6468d, 0x1b8e, 0x447c, 0x9b, 0xc6, 0x75, 0xfe, 0xa8, 0x0b, 0x5b, 0x25);
			
			public function HRESULT(IDCompositionDevice2 *self) Commit;
			public function HRESULT(IDCompositionDevice2 *self) WaitForCommitCompletion;
			public function HRESULT(IDCompositionDevice2 *self, DCOMPOSITION_FRAME_STATISTICS* statistics) GetFrameStatistics;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionVisual2** visual) CreateVisual;
			public function HRESULT(IDCompositionDevice2 *self, IUnknown* renderingDevice, IDCompositionSurfaceFactory** surfaceFactory) CreateSurfaceFactory;
			public function HRESULT(IDCompositionDevice2 *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
			public function HRESULT(IDCompositionDevice2 *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionTranslateTransform** translateTransform) CreateTranslateTransform;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionScaleTransform** scaleTransform) CreateScaleTransform;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionRotateTransform** rotateTransform) CreateRotateTransform;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionSkewTransform** skewTransform) CreateSkewTransform;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionMatrixTransform** matrixTransform) CreateMatrixTransform;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionTransform** transforms, uint32 elements, IDCompositionTransform** transformGroup) CreateTransformGroup;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionTranslateTransform3D** translateTransform3D) CreateTranslateTransform3D;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionScaleTransform3D** scaleTransform3D) CreateScaleTransform3D;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionRotateTransform3D** rotateTransform3D) CreateRotateTransform3D;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionMatrixTransform3D** matrixTransform3D) CreateMatrixTransform3D;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionTransform3D** transforms3D, uint32 elements, IDCompositionTransform3D** transform3DGroup) CreateTransform3DGroup;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionEffectGroup** effectGroup) CreateEffectGroup;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionRectangleClip** clip) CreateRectangleClip;
			public function HRESULT(IDCompositionDevice2 *self, IDCompositionAnimation** animation) CreateAnimation;
		}
		[CRepr]
		public struct IDCompositionDesktopDevice : IDCompositionDevice2
		{
			public const new Guid IID = .(0x5f4633fe, 0x1e08, 0x4cb8, 0x8c, 0x75, 0xce, 0x24, 0x33, 0x3f, 0x56, 0x02);
			
			public function HRESULT(IDCompositionDesktopDevice *self, HWND hwnd, BOOL topmost, IDCompositionTarget** target) CreateTargetForHwnd;
			public function HRESULT(IDCompositionDesktopDevice *self, HANDLE handle, IUnknown** surface) CreateSurfaceFromHandle;
			public function HRESULT(IDCompositionDesktopDevice *self, HWND hwnd, IUnknown** surface) CreateSurfaceFromHwnd;
		}
		[CRepr]
		public struct IDCompositionDeviceDebug : IUnknown
		{
			public const new Guid IID = .(0xa1a3c64a, 0x224f, 0x4a81, 0x97, 0x73, 0x4f, 0x03, 0xa8, 0x9d, 0x3c, 0x6c);
			
			public function HRESULT(IDCompositionDeviceDebug *self) EnableDebugCounters;
			public function HRESULT(IDCompositionDeviceDebug *self) DisableDebugCounters;
		}
		[CRepr]
		public struct IDCompositionSurfaceFactory : IUnknown
		{
			public const new Guid IID = .(0xe334bc12, 0x3937, 0x4e02, 0x85, 0xeb, 0xfc, 0xf4, 0xeb, 0x30, 0xd2, 0xc8);
			
			public function HRESULT(IDCompositionSurfaceFactory *self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionSurface** surface) CreateSurface;
			public function HRESULT(IDCompositionSurfaceFactory *self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, IDCompositionVirtualSurface** virtualSurface) CreateVirtualSurface;
		}
		[CRepr]
		public struct IDCompositionVisual2 : IDCompositionVisual
		{
			public const new Guid IID = .(0xe8de1639, 0x4331, 0x4b26, 0xbc, 0x5f, 0x6a, 0x32, 0x1d, 0x34, 0x7a, 0x85);
			
			public function HRESULT(IDCompositionVisual2 *self, DCOMPOSITION_OPACITY_MODE mode) SetOpacityMode;
			public function HRESULT(IDCompositionVisual2 *self, DCOMPOSITION_BACKFACE_VISIBILITY visibility) SetBackFaceVisibility;
		}
		[CRepr]
		public struct IDCompositionVisualDebug : IDCompositionVisual2
		{
			public const new Guid IID = .(0xfed2b808, 0x5eb4, 0x43a0, 0xae, 0xa3, 0x35, 0xf6, 0x52, 0x80, 0xf9, 0x1b);
			
			public function HRESULT(IDCompositionVisualDebug *self, D2D1_COLOR_F* color) EnableHeatMap;
			public function HRESULT(IDCompositionVisualDebug *self) DisableHeatMap;
			public function HRESULT(IDCompositionVisualDebug *self) EnableRedrawRegions;
			public function HRESULT(IDCompositionVisualDebug *self) DisableRedrawRegions;
		}
		[CRepr]
		public struct IDCompositionVisual3 : IDCompositionVisualDebug
		{
			public const new Guid IID = .(0x2775f462, 0xb6c1, 0x4015, 0xb0, 0xbe, 0xb3, 0xe7, 0xd6, 0xa4, 0x97, 0x6d);
			
			public function HRESULT(IDCompositionVisual3 *self, DCOMPOSITION_DEPTH_MODE mode) SetDepthMode;
			public function HRESULT(IDCompositionVisual3 *self, IDCompositionAnimation* animation) SetOffsetZ;
			public function HRESULT(IDCompositionVisual3 *self, float offsetZ) SetOffsetZ2;
			public function HRESULT(IDCompositionVisual3 *self, IDCompositionAnimation* animation) SetOpacity;
			public function HRESULT(IDCompositionVisual3 *self, float opacity) SetOpacity2;
			public function HRESULT(IDCompositionVisual3 *self, IDCompositionTransform3D* transform) SetTransform;
			public function HRESULT(IDCompositionVisual3 *self, D2D_MATRIX_4X4_F* matrix) SetTransform2;
			public function HRESULT(IDCompositionVisual3 *self, BOOL visible) SetVisible;
		}
		[CRepr]
		public struct IDCompositionDevice3 : IDCompositionDevice2
		{
			public const new Guid IID = .(0x0987cb06, 0xf916, 0x48bf, 0x8d, 0x35, 0xce, 0x76, 0x41, 0x78, 0x1b, 0xd9);
			
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionGaussianBlurEffect** gaussianBlurEffect) CreateGaussianBlurEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionBrightnessEffect** brightnessEffect) CreateBrightnessEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionColorMatrixEffect** colorMatrixEffect) CreateColorMatrixEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionShadowEffect** shadowEffect) CreateShadowEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionHueRotationEffect** hueRotationEffect) CreateHueRotationEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionSaturationEffect** saturationEffect) CreateSaturationEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionTurbulenceEffect** turbulenceEffect) CreateTurbulenceEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionLinearTransferEffect** linearTransferEffect) CreateLinearTransferEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionTableTransferEffect** tableTransferEffect) CreateTableTransferEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionCompositeEffect** compositeEffect) CreateCompositeEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionBlendEffect** blendEffect) CreateBlendEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionArithmeticCompositeEffect** arithmeticCompositeEffect) CreateArithmeticCompositeEffect;
			public function HRESULT(IDCompositionDevice3 *self, IDCompositionAffineTransform2DEffect** affineTransform2dEffect) CreateAffineTransform2DEffect;
		}
		[CRepr]
		public struct IDCompositionFilterEffect : IDCompositionEffect
		{
			public const new Guid IID = .(0x30c421d5, 0x8cb2, 0x4e9f, 0xb1, 0x33, 0x37, 0xbe, 0x27, 0x0d, 0x4a, 0xc2);
			
			public function HRESULT(IDCompositionFilterEffect *self, uint32 index, IUnknown* input, uint32 flags) SetInput;
		}
		[CRepr]
		public struct IDCompositionGaussianBlurEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x45d4d0b7, 0x1bd4, 0x454e, 0x88, 0x94, 0x2b, 0xfa, 0x68, 0x44, 0x30, 0x33);
			
			public function HRESULT(IDCompositionGaussianBlurEffect *self, IDCompositionAnimation* animation) SetStandardDeviation;
			public function HRESULT(IDCompositionGaussianBlurEffect *self, float amount) SetStandardDeviation2;
			public function HRESULT(IDCompositionGaussianBlurEffect *self, D2D1_BORDER_MODE mode) SetBorderMode;
		}
		[CRepr]
		public struct IDCompositionBrightnessEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6027496e, 0xcb3a, 0x49ab, 0x93, 0x4f, 0xd7, 0x98, 0xda, 0x4f, 0x7d, 0xa6);
			
			public function HRESULT(IDCompositionBrightnessEffect *self, D2D_VECTOR_2F* whitePoint) SetWhitePoint;
			public function HRESULT(IDCompositionBrightnessEffect *self, D2D_VECTOR_2F* blackPoint) SetBlackPoint;
			public function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetWhitePointX;
			public function HRESULT(IDCompositionBrightnessEffect *self, float whitePointX) SetWhitePointX2;
			public function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetWhitePointY;
			public function HRESULT(IDCompositionBrightnessEffect *self, float whitePointY) SetWhitePointY2;
			public function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetBlackPointX;
			public function HRESULT(IDCompositionBrightnessEffect *self, float blackPointX) SetBlackPointX2;
			public function HRESULT(IDCompositionBrightnessEffect *self, IDCompositionAnimation* animation) SetBlackPointY;
			public function HRESULT(IDCompositionBrightnessEffect *self, float blackPointY) SetBlackPointY2;
		}
		[CRepr]
		public struct IDCompositionColorMatrixEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xc1170a22, 0x3ce2, 0x4966, 0x90, 0xd4, 0x55, 0x40, 0x8b, 0xfc, 0x84, 0xc4);
			
			public function HRESULT(IDCompositionColorMatrixEffect *self, D2D_MATRIX_5X4_F* matrix) SetMatrix;
			public function HRESULT(IDCompositionColorMatrixEffect *self, int32 row, int32 column, IDCompositionAnimation* animation) SetMatrixElement;
			public function HRESULT(IDCompositionColorMatrixEffect *self, int32 row, int32 column, float value) SetMatrixElement2;
			public function HRESULT(IDCompositionColorMatrixEffect *self, D2D1_COLORMATRIX_ALPHA_MODE mode) SetAlphaMode;
			public function HRESULT(IDCompositionColorMatrixEffect *self, BOOL clamp) SetClampOutput;
		}
		[CRepr]
		public struct IDCompositionShadowEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4ad18ac0, 0xcfd2, 0x4c2f, 0xbb, 0x62, 0x96, 0xe5, 0x4f, 0xdb, 0x68, 0x79);
			
			public function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetStandardDeviation;
			public function HRESULT(IDCompositionShadowEffect *self, float amount) SetStandardDeviation2;
			public function HRESULT(IDCompositionShadowEffect *self, D2D_VECTOR_4F* color) SetColor;
			public function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetRed;
			public function HRESULT(IDCompositionShadowEffect *self, float amount) SetRed2;
			public function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetGreen;
			public function HRESULT(IDCompositionShadowEffect *self, float amount) SetGreen2;
			public function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetBlue;
			public function HRESULT(IDCompositionShadowEffect *self, float amount) SetBlue2;
			public function HRESULT(IDCompositionShadowEffect *self, IDCompositionAnimation* animation) SetAlpha;
			public function HRESULT(IDCompositionShadowEffect *self, float amount) SetAlpha2;
		}
		[CRepr]
		public struct IDCompositionHueRotationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x6db9f920, 0x0770, 0x4781, 0xb0, 0xc6, 0x38, 0x19, 0x12, 0xf9, 0xd1, 0x67);
			
			public function HRESULT(IDCompositionHueRotationEffect *self, IDCompositionAnimation* animation) SetAngle;
			public function HRESULT(IDCompositionHueRotationEffect *self, float amountDegrees) SetAngle2;
		}
		[CRepr]
		public struct IDCompositionSaturationEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa08debda, 0x3258, 0x4fa4, 0x9f, 0x16, 0x91, 0x74, 0xd3, 0xfe, 0x93, 0xb1);
			
			public function HRESULT(IDCompositionSaturationEffect *self, IDCompositionAnimation* animation) SetSaturation;
			public function HRESULT(IDCompositionSaturationEffect *self, float ratio) SetSaturation2;
		}
		[CRepr]
		public struct IDCompositionTurbulenceEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0xa6a55bda, 0xc09c, 0x49f3, 0x91, 0x93, 0xa4, 0x19, 0x22, 0xc8, 0x97, 0x15);
			
			public function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* offset) SetOffset;
			public function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* frequency) SetBaseFrequency;
			public function HRESULT(IDCompositionTurbulenceEffect *self, D2D_VECTOR_2F* size) SetSize;
			public function HRESULT(IDCompositionTurbulenceEffect *self, uint32 numOctaves) SetNumOctaves;
			public function HRESULT(IDCompositionTurbulenceEffect *self, uint32 seed) SetSeed;
			public function HRESULT(IDCompositionTurbulenceEffect *self, D2D1_TURBULENCE_NOISE noise) SetNoise;
			public function HRESULT(IDCompositionTurbulenceEffect *self, BOOL stitchable) SetStitchable;
		}
		[CRepr]
		public struct IDCompositionLinearTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x4305ee5b, 0xc4a0, 0x4c88, 0x93, 0x85, 0x67, 0x12, 0x4e, 0x01, 0x76, 0x83);
			
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetRedYIntercept;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float redYIntercept) SetRedYIntercept2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetRedSlope;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float redSlope) SetRedSlope2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, BOOL redDisable) SetRedDisable;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetGreenYIntercept;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float greenYIntercept) SetGreenYIntercept2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetGreenSlope;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float greenSlope) SetGreenSlope2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, BOOL greenDisable) SetGreenDisable;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetBlueYIntercept;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float blueYIntercept) SetBlueYIntercept2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetBlueSlope;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float blueSlope) SetBlueSlope2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, BOOL blueDisable) SetBlueDisable;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetAlphaYIntercept;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float alphaYIntercept) SetAlphaYIntercept2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, IDCompositionAnimation* animation) SetAlphaSlope;
			public function HRESULT(IDCompositionLinearTransferEffect *self, float alphaSlope) SetAlphaSlope2;
			public function HRESULT(IDCompositionLinearTransferEffect *self, BOOL alphaDisable) SetAlphaDisable;
			public function HRESULT(IDCompositionLinearTransferEffect *self, BOOL clampOutput) SetClampOutput;
		}
		[CRepr]
		public struct IDCompositionTableTransferEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x9b7e82e2, 0x69c5, 0x4eb4, 0xa5, 0xf5, 0xa7, 0x03, 0x3f, 0x51, 0x32, 0xcd);
			
			public function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetRedTable;
			public function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetGreenTable;
			public function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetBlueTable;
			public function HRESULT(IDCompositionTableTransferEffect *self, float* tableValues, uint32 count) SetAlphaTable;
			public function HRESULT(IDCompositionTableTransferEffect *self, BOOL redDisable) SetRedDisable;
			public function HRESULT(IDCompositionTableTransferEffect *self, BOOL greenDisable) SetGreenDisable;
			public function HRESULT(IDCompositionTableTransferEffect *self, BOOL blueDisable) SetBlueDisable;
			public function HRESULT(IDCompositionTableTransferEffect *self, BOOL alphaDisable) SetAlphaDisable;
			public function HRESULT(IDCompositionTableTransferEffect *self, BOOL clampOutput) SetClampOutput;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetRedTableValue;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetRedTableValue2;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetGreenTableValue;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetGreenTableValue2;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetBlueTableValue;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetBlueTableValue2;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, IDCompositionAnimation* animation) SetAlphaTableValue;
			public function HRESULT(IDCompositionTableTransferEffect *self, uint32 index, float value) SetAlphaTableValue2;
		}
		[CRepr]
		public struct IDCompositionCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x576616c0, 0xa231, 0x494d, 0xa3, 0x8d, 0x00, 0xfd, 0x5e, 0xc4, 0xdb, 0x46);
			
			public function HRESULT(IDCompositionCompositeEffect *self, D2D1_COMPOSITE_MODE mode) SetMode;
		}
		[CRepr]
		public struct IDCompositionBlendEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x33ecdc0a, 0x578a, 0x4a11, 0x9c, 0x14, 0x0c, 0xb9, 0x05, 0x17, 0xf9, 0xc5);
			
			public function HRESULT(IDCompositionBlendEffect *self, D2D1_BLEND_MODE mode) SetMode;
		}
		[CRepr]
		public struct IDCompositionArithmeticCompositeEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x3b67dfa8, 0xe3dd, 0x4e61, 0xb6, 0x40, 0x46, 0xc2, 0xf3, 0xd7, 0x39, 0xdc);
			
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, D2D_VECTOR_4F* coefficients) SetCoefficients;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, BOOL clampoutput) SetClampOutput;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient1;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coeffcient1) SetCoefficient12;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient2;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient2) SetCoefficient22;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient3;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient3) SetCoefficient32;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, IDCompositionAnimation* animation) SetCoefficient4;
			public function HRESULT(IDCompositionArithmeticCompositeEffect *self, float Coefficient4) SetCoefficient42;
		}
		[CRepr]
		public struct IDCompositionAffineTransform2DEffect : IDCompositionFilterEffect
		{
			public const new Guid IID = .(0x0b74b9e8, 0xcdd6, 0x492f, 0xbb, 0xbc, 0x5e, 0xd3, 0x21, 0x57, 0x02, 0x6d);
			
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D1_BORDER_MODE borderMode) SetBorderMode;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, D2D_MATRIX_3X2_F* transformMatrix) SetTransformMatrix;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, int32 row, int32 column, IDCompositionAnimation* animation) SetTransformMatrixElement;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, int32 row, int32 column, float value) SetTransformMatrixElement2;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, IDCompositionAnimation* animation) SetSharpness;
			public function HRESULT(IDCompositionAffineTransform2DEffect *self, float sharpness) SetSharpness2;
		}
		[CRepr]
		public struct IDCompositionDelegatedInkTrail : IUnknown
		{
			public const new Guid IID = .(0xc2448e9b, 0x547d, 0x4057, 0x8c, 0xf5, 0x81, 0x44, 0xed, 0xe1, 0xc2, 0xda);
			
			public function HRESULT(IDCompositionDelegatedInkTrail *self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, uint32* generationId) AddTrailPoints;
			public function HRESULT(IDCompositionDelegatedInkTrail *self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, uint32* generationId) AddTrailPointsWithPrediction;
			public function HRESULT(IDCompositionDelegatedInkTrail *self, uint32 generationId) RemoveTrailPoints;
			public function HRESULT(IDCompositionDelegatedInkTrail *self, D2D1_COLOR_F* color) StartNewTrail;
		}
		[CRepr]
		public struct IDCompositionInkTrailDevice : IUnknown
		{
			public const new Guid IID = .(0xdf0c7cec, 0xcdeb, 0x4d4a, 0xb9, 0x1c, 0x72, 0x1b, 0xf2, 0x2f, 0x4e, 0x6c);
			
			public function HRESULT(IDCompositionInkTrailDevice *self, IDCompositionDelegatedInkTrail** inkTrail) CreateDelegatedInkTrail;
			public function HRESULT(IDCompositionInkTrailDevice *self, IUnknown* swapChain, IDCompositionDelegatedInkTrail** inkTrail) CreateDelegatedInkTrailForSwapChain;
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
