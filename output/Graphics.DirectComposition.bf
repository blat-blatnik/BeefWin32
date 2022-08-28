namespace Win32.Graphics.DirectComposition;

using System;
using Win32.Foundation;
using Win32.Graphics;
using Win32.Graphics.Direct2D.Common;
using Win32.Graphics.Direct3D;
using Win32.Graphics.Dxgi;
using Win32.Graphics.Dxgi.Common;
using Win32.Security;
using Win32.System.Com;

static
{
	#region Constants
	public const int32 COMPOSITIONOBJECT_READ = 1;
	public const int32 COMPOSITIONOBJECT_WRITE = 2;
	public const uint32 DCOMPOSITION_MAX_WAITFORCOMPOSITORCLOCK_OBJECTS = 32;
	public const uint32 COMPOSITION_STATS_MAX_TARGETS = 256;
	#endregion
	
	#region Enums
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
		CREATED = 0,
		CONFIRMED = 1,
		COMPLETED = 2,
	}
	#endregion
	
	#region Structs
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
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IDCompositionAnimation : IUnknown
	{
		public const new Guid IID = .(0xcbfd91d9, 0x51b2, 0x45e4, 0xb3, 0xde, 0xd1, 0x9c, 0xcf, 0xb8, 0x63, 0xc5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT SetAbsoluteBeginTime(LARGE_INTEGER beginTime) mut => VT.SetAbsoluteBeginTime(ref this, beginTime);
		public HRESULT AddCubic(double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) mut => VT.AddCubic(ref this, beginOffset, constantCoefficient, linearCoefficient, quadraticCoefficient, cubicCoefficient);
		public HRESULT AddSinusoidal(double beginOffset, float bias, float amplitude, float frequency, float phase) mut => VT.AddSinusoidal(ref this, beginOffset, bias, amplitude, frequency, phase);
		public HRESULT AddRepeat(double beginOffset, double durationToRepeat) mut => VT.AddRepeat(ref this, beginOffset, durationToRepeat);
		public HRESULT End(double endOffset, float endValue) mut => VT.End(ref this, endOffset, endValue);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self, LARGE_INTEGER beginTime) SetAbsoluteBeginTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self, double beginOffset, double durationToRepeat) AddRepeat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAnimation self, double endOffset, float endValue) End;
		}
	}
	[CRepr]
	public struct IDCompositionDevice : IUnknown
	{
		public const new Guid IID = .(0xc37ea93a, 0xe7aa, 0x450d, 0xb1, 0x6f, 0x97, 0x46, 0xcb, 0x04, 0x07, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Commit() mut => VT.Commit(ref this);
		public HRESULT WaitForCommitCompletion() mut => VT.WaitForCommitCompletion(ref this);
		public HRESULT GetFrameStatistics(out DCOMPOSITION_FRAME_STATISTICS statistics) mut => VT.GetFrameStatistics(ref this, out statistics);
		public HRESULT CreateTargetForHwnd(HWND hwnd, BOOL topmost, out IDCompositionTarget* target) mut => VT.CreateTargetForHwnd(ref this, hwnd, topmost, out target);
		public HRESULT CreateVisual(out IDCompositionVisual* visual) mut => VT.CreateVisual(ref this, out visual);
		public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
		public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);
		public HRESULT CreateSurfaceFromHandle(HANDLE handle, out IUnknown* surface) mut => VT.CreateSurfaceFromHandle(ref this, handle, out surface);
		public HRESULT CreateSurfaceFromHwnd(HWND hwnd, out IUnknown* surface) mut => VT.CreateSurfaceFromHwnd(ref this, hwnd, out surface);
		public HRESULT CreateTranslateTransform(out IDCompositionTranslateTransform* translateTransform) mut => VT.CreateTranslateTransform(ref this, out translateTransform);
		public HRESULT CreateScaleTransform(out IDCompositionScaleTransform* scaleTransform) mut => VT.CreateScaleTransform(ref this, out scaleTransform);
		public HRESULT CreateRotateTransform(out IDCompositionRotateTransform* rotateTransform) mut => VT.CreateRotateTransform(ref this, out rotateTransform);
		public HRESULT CreateSkewTransform(out IDCompositionSkewTransform* skewTransform) mut => VT.CreateSkewTransform(ref this, out skewTransform);
		public HRESULT CreateMatrixTransform(out IDCompositionMatrixTransform* matrixTransform) mut => VT.CreateMatrixTransform(ref this, out matrixTransform);
		public HRESULT CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) mut => VT.CreateTransformGroup(ref this, transforms, elements, out transformGroup);
		public HRESULT CreateTranslateTransform3D(out IDCompositionTranslateTransform3D* translateTransform3D) mut => VT.CreateTranslateTransform3D(ref this, out translateTransform3D);
		public HRESULT CreateScaleTransform3D(out IDCompositionScaleTransform3D* scaleTransform3D) mut => VT.CreateScaleTransform3D(ref this, out scaleTransform3D);
		public HRESULT CreateRotateTransform3D(out IDCompositionRotateTransform3D* rotateTransform3D) mut => VT.CreateRotateTransform3D(ref this, out rotateTransform3D);
		public HRESULT CreateMatrixTransform3D(out IDCompositionMatrixTransform3D* matrixTransform3D) mut => VT.CreateMatrixTransform3D(ref this, out matrixTransform3D);
		public HRESULT CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) mut => VT.CreateTransform3DGroup(ref this, transforms3D, elements, out transform3DGroup);
		public HRESULT CreateEffectGroup(out IDCompositionEffectGroup* effectGroup) mut => VT.CreateEffectGroup(ref this, out effectGroup);
		public HRESULT CreateRectangleClip(out IDCompositionRectangleClip* clip) mut => VT.CreateRectangleClip(ref this, out clip);
		public HRESULT CreateAnimation(out IDCompositionAnimation* animation) mut => VT.CreateAnimation(ref this, out animation);
		public HRESULT CheckDeviceState(out BOOL pfValid) mut => VT.CheckDeviceState(ref this, out pfValid);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self) Commit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self) WaitForCommitCompletion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out DCOMPOSITION_FRAME_STATISTICS statistics) GetFrameStatistics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, HWND hwnd, BOOL topmost, out IDCompositionTarget* target) CreateTargetForHwnd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionVisual* visual) CreateVisual;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, HANDLE handle, out IUnknown* surface) CreateSurfaceFromHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, HWND hwnd, out IUnknown* surface) CreateSurfaceFromHwnd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionTranslateTransform* translateTransform) CreateTranslateTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionScaleTransform* scaleTransform) CreateScaleTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionRotateTransform* rotateTransform) CreateRotateTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionSkewTransform* skewTransform) CreateSkewTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionMatrixTransform* matrixTransform) CreateMatrixTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) CreateTransformGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionTranslateTransform3D* translateTransform3D) CreateTranslateTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionScaleTransform3D* scaleTransform3D) CreateScaleTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionRotateTransform3D* rotateTransform3D) CreateRotateTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionMatrixTransform3D* matrixTransform3D) CreateMatrixTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) CreateTransform3DGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionEffectGroup* effectGroup) CreateEffectGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionRectangleClip* clip) CreateRectangleClip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out IDCompositionAnimation* animation) CreateAnimation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice self, out BOOL pfValid) CheckDeviceState;
		}
	}
	[CRepr]
	public struct IDCompositionTarget : IUnknown
	{
		public const new Guid IID = .(0xeacdd04c, 0x117e, 0x4e17, 0x88, 0xf4, 0xd1, 0xb1, 0x2b, 0x0e, 0x3d, 0x89);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetRoot(IDCompositionVisual* visual) mut => VT.SetRoot(ref this, visual);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTarget self, IDCompositionVisual* visual) SetRoot;
		}
	}
	[CRepr]
	public struct IDCompositionVisual : IUnknown
	{
		public const new Guid IID = .(0x4d93059d, 0x097b, 0x4651, 0x9a, 0x60, 0xf0, 0xf2, 0x51, 0x16, 0xe2, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
		public HRESULT SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
		public HRESULT SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
		public HRESULT SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);
		public HRESULT SetTransform(IDCompositionTransform* transform) mut => VT.SetTransform(ref this, transform);
		public HRESULT SetTransform(in D2D_MATRIX_3X2_F matrix) mut => VT.SetTransform2(ref this, matrix);
		public HRESULT SetTransformParent(IDCompositionVisual* visual) mut => VT.SetTransformParent(ref this, visual);
		public HRESULT SetEffect(IDCompositionEffect* effect) mut => VT.SetEffect(ref this, effect);
		public HRESULT SetBitmapInterpolationMode(DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) mut => VT.SetBitmapInterpolationMode(ref this, interpolationMode);
		public HRESULT SetBorderMode(DCOMPOSITION_BORDER_MODE borderMode) mut => VT.SetBorderMode(ref this, borderMode);
		public HRESULT SetClip(IDCompositionClip* clip) mut => VT.SetClip(ref this, clip);
		public HRESULT SetClip(in D2D_RECT_F rect) mut => VT.SetClip2(ref this, rect);
		public HRESULT SetContent(IUnknown* content) mut => VT.SetContent(ref this, content);
		public HRESULT AddVisual(ref IDCompositionVisual visual, BOOL insertAbove, IDCompositionVisual* referenceVisual) mut => VT.AddVisual(ref this, ref visual, insertAbove, referenceVisual);
		public HRESULT RemoveVisual(ref IDCompositionVisual visual) mut => VT.RemoveVisual(ref this, ref visual);
		public HRESULT RemoveAllVisuals() mut => VT.RemoveAllVisuals(ref this);
		public HRESULT SetCompositeMode(DCOMPOSITION_COMPOSITE_MODE compositeMode) mut => VT.SetCompositeMode(ref this, compositeMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, ref IDCompositionAnimation animation) SetOffsetX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, float offsetX) SetOffsetX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, ref IDCompositionAnimation animation) SetOffsetY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, float offsetY) SetOffsetY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, IDCompositionTransform* transform) SetTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, in D2D_MATRIX_3X2_F matrix) SetTransform2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, IDCompositionVisual* visual) SetTransformParent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, IDCompositionEffect* effect) SetEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode) SetBitmapInterpolationMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, DCOMPOSITION_BORDER_MODE borderMode) SetBorderMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, IDCompositionClip* clip) SetClip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, in D2D_RECT_F rect) SetClip2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, IUnknown* content) SetContent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, ref IDCompositionVisual visual, BOOL insertAbove, IDCompositionVisual* referenceVisual) AddVisual;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, ref IDCompositionVisual visual) RemoveVisual;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self) RemoveAllVisuals;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual self, DCOMPOSITION_COMPOSITE_MODE compositeMode) SetCompositeMode;
		}
	}
	[CRepr]
	public struct IDCompositionEffect : IUnknown
	{
		public const new Guid IID = .(0xec81b08f, 0xbfcb, 0x4e8d, 0xb1, 0x93, 0xa9, 0x15, 0x58, 0x79, 0x99, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IDCompositionTransform3D : IDCompositionEffect
	{
		public const new Guid IID = .(0x71185722, 0x246b, 0x41f2, 0xaa, 0xd1, 0x04, 0x43, 0xf7, 0xf4, 0xbf, 0xc2);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDCompositionEffect.VTable {}
	}
	[CRepr]
	public struct IDCompositionTransform : IDCompositionTransform3D
	{
		public const new Guid IID = .(0xfd55faa7, 0x37e0, 0x4c20, 0x95, 0xd2, 0x9b, 0xe4, 0x5b, 0xc3, 0x3f, 0x55);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDCompositionTransform3D.VTable {}
	}
	[CRepr]
	public struct IDCompositionTranslateTransform : IDCompositionTransform
	{
		public const new Guid IID = .(0x06791122, 0xc6f0, 0x417d, 0x83, 0x23, 0x26, 0x9e, 0x98, 0x7f, 0x59, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
		public HRESULT SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
		public HRESULT SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
		public HRESULT SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);

		[CRepr]
		public struct VTable : IDCompositionTransform.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform self, ref IDCompositionAnimation animation) SetOffsetX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform self, float offsetX) SetOffsetX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform self, ref IDCompositionAnimation animation) SetOffsetY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform self, float offsetY) SetOffsetY2;
		}
	}
	[CRepr]
	public struct IDCompositionScaleTransform : IDCompositionTransform
	{
		public const new Guid IID = .(0x71fde914, 0x40ef, 0x45ef, 0xbd, 0x51, 0x68, 0xb0, 0x37, 0xc3, 0x39, 0xf9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetScaleX(ref IDCompositionAnimation animation) mut => VT.SetScaleX(ref this, ref animation);
		public HRESULT SetScaleX(float scaleX) mut => VT.SetScaleX2(ref this, scaleX);
		public HRESULT SetScaleY(ref IDCompositionAnimation animation) mut => VT.SetScaleY(ref this, ref animation);
		public HRESULT SetScaleY(float scaleY) mut => VT.SetScaleY2(ref this, scaleY);
		public HRESULT SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
		public HRESULT SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
		public HRESULT SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
		public HRESULT SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

		[CRepr]
		public struct VTable : IDCompositionTransform.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetScaleX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, float scaleX) SetScaleX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetScaleY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, float scaleY) SetScaleY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetCenterX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, float centerX) SetCenterX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, ref IDCompositionAnimation animation) SetCenterY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform self, float centerY) SetCenterY2;
		}
	}
	[CRepr]
	public struct IDCompositionRotateTransform : IDCompositionTransform
	{
		public const new Guid IID = .(0x641ed83c, 0xae96, 0x46c5, 0x90, 0xdc, 0x32, 0x77, 0x4c, 0xc5, 0xc6, 0xd5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
		public HRESULT SetAngle(float angle) mut => VT.SetAngle2(ref this, angle);
		public HRESULT SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
		public HRESULT SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
		public HRESULT SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
		public HRESULT SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

		[CRepr]
		public struct VTable : IDCompositionTransform.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetAngle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, float angle) SetAngle2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetCenterX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, float centerX) SetCenterX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, ref IDCompositionAnimation animation) SetCenterY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform self, float centerY) SetCenterY2;
		}
	}
	[CRepr]
	public struct IDCompositionSkewTransform : IDCompositionTransform
	{
		public const new Guid IID = .(0xe57aa735, 0xdcdb, 0x4c72, 0x9c, 0x61, 0x05, 0x91, 0xf5, 0x88, 0x89, 0xee);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAngleX(ref IDCompositionAnimation animation) mut => VT.SetAngleX(ref this, ref animation);
		public HRESULT SetAngleX(float angleX) mut => VT.SetAngleX2(ref this, angleX);
		public HRESULT SetAngleY(ref IDCompositionAnimation animation) mut => VT.SetAngleY(ref this, ref animation);
		public HRESULT SetAngleY(float angleY) mut => VT.SetAngleY2(ref this, angleY);
		public HRESULT SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
		public HRESULT SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
		public HRESULT SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
		public HRESULT SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);

		[CRepr]
		public struct VTable : IDCompositionTransform.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetAngleX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, float angleX) SetAngleX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetAngleY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, float angleY) SetAngleY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetCenterX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, float centerX) SetCenterX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, ref IDCompositionAnimation animation) SetCenterY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSkewTransform self, float centerY) SetCenterY2;
		}
	}
	[CRepr]
	public struct IDCompositionMatrixTransform : IDCompositionTransform
	{
		public const new Guid IID = .(0x16cdff07, 0xc503, 0x419c, 0x83, 0xf2, 0x09, 0x65, 0xc7, 0xaf, 0x1f, 0xa6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMatrix(in D2D_MATRIX_3X2_F matrix) mut => VT.SetMatrix(ref this, matrix);
		public HRESULT SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
		public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);

		[CRepr]
		public struct VTable : IDCompositionTransform.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform self, in D2D_MATRIX_3X2_F matrix) SetMatrix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform self, int32 row, int32 column, float value) SetMatrixElement2;
		}
	}
	[CRepr]
	public struct IDCompositionEffectGroup : IDCompositionEffect
	{
		public const new Guid IID = .(0xa7929a74, 0xe6b2, 0x4bd6, 0x8b, 0x95, 0x40, 0x40, 0x11, 0x9c, 0xa3, 0x4d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOpacity(ref IDCompositionAnimation animation) mut => VT.SetOpacity(ref this, ref animation);
		public HRESULT SetOpacity(float opacity) mut => VT.SetOpacity2(ref this, opacity);
		public HRESULT SetTransform3D(IDCompositionTransform3D* transform3D) mut => VT.SetTransform3D(ref this, transform3D);

		[CRepr]
		public struct VTable : IDCompositionEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionEffectGroup self, ref IDCompositionAnimation animation) SetOpacity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionEffectGroup self, float opacity) SetOpacity2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionEffectGroup self, IDCompositionTransform3D* transform3D) SetTransform3D;
		}
	}
	[CRepr]
	public struct IDCompositionTranslateTransform3D : IDCompositionTransform3D
	{
		public const new Guid IID = .(0x91636d4b, 0x9ba1, 0x4532, 0xaa, 0xf7, 0xe3, 0x34, 0x49, 0x94, 0xd7, 0x88);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOffsetX(ref IDCompositionAnimation animation) mut => VT.SetOffsetX(ref this, ref animation);
		public HRESULT SetOffsetX(float offsetX) mut => VT.SetOffsetX2(ref this, offsetX);
		public HRESULT SetOffsetY(ref IDCompositionAnimation animation) mut => VT.SetOffsetY(ref this, ref animation);
		public HRESULT SetOffsetY(float offsetY) mut => VT.SetOffsetY2(ref this, offsetY);
		public HRESULT SetOffsetZ(ref IDCompositionAnimation animation) mut => VT.SetOffsetZ(ref this, ref animation);
		public HRESULT SetOffsetZ(float offsetZ) mut => VT.SetOffsetZ2(ref this, offsetZ);

		[CRepr]
		public struct VTable : IDCompositionTransform3D.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, float offsetX) SetOffsetX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, float offsetY) SetOffsetY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, ref IDCompositionAnimation animation) SetOffsetZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTranslateTransform3D self, float offsetZ) SetOffsetZ2;
		}
	}
	[CRepr]
	public struct IDCompositionScaleTransform3D : IDCompositionTransform3D
	{
		public const new Guid IID = .(0x2a9e9ead, 0x364b, 0x4b15, 0xa7, 0xc4, 0xa1, 0x99, 0x7f, 0x78, 0xb3, 0x89);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetScaleX(ref IDCompositionAnimation animation) mut => VT.SetScaleX(ref this, ref animation);
		public HRESULT SetScaleX(float scaleX) mut => VT.SetScaleX2(ref this, scaleX);
		public HRESULT SetScaleY(ref IDCompositionAnimation animation) mut => VT.SetScaleY(ref this, ref animation);
		public HRESULT SetScaleY(float scaleY) mut => VT.SetScaleY2(ref this, scaleY);
		public HRESULT SetScaleZ(ref IDCompositionAnimation animation) mut => VT.SetScaleZ(ref this, ref animation);
		public HRESULT SetScaleZ(float scaleZ) mut => VT.SetScaleZ2(ref this, scaleZ);
		public HRESULT SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
		public HRESULT SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
		public HRESULT SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
		public HRESULT SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);
		public HRESULT SetCenterZ(ref IDCompositionAnimation animation) mut => VT.SetCenterZ(ref this, ref animation);
		public HRESULT SetCenterZ(float centerZ) mut => VT.SetCenterZ2(ref this, centerZ);

		[CRepr]
		public struct VTable : IDCompositionTransform3D.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float scaleX) SetScaleX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float scaleY) SetScaleY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetScaleZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float scaleZ) SetScaleZ2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float centerX) SetCenterX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float centerY) SetCenterY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, ref IDCompositionAnimation animation) SetCenterZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionScaleTransform3D self, float centerZ) SetCenterZ2;
		}
	}
	[CRepr]
	public struct IDCompositionRotateTransform3D : IDCompositionTransform3D
	{
		public const new Guid IID = .(0xd8f5b23f, 0xd429, 0x4a91, 0xb5, 0x5a, 0xd2, 0xf4, 0x5f, 0xd7, 0x5b, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
		public HRESULT SetAngle(float angle) mut => VT.SetAngle2(ref this, angle);
		public HRESULT SetAxisX(ref IDCompositionAnimation animation) mut => VT.SetAxisX(ref this, ref animation);
		public HRESULT SetAxisX(float axisX) mut => VT.SetAxisX2(ref this, axisX);
		public HRESULT SetAxisY(ref IDCompositionAnimation animation) mut => VT.SetAxisY(ref this, ref animation);
		public HRESULT SetAxisY(float axisY) mut => VT.SetAxisY2(ref this, axisY);
		public HRESULT SetAxisZ(ref IDCompositionAnimation animation) mut => VT.SetAxisZ(ref this, ref animation);
		public HRESULT SetAxisZ(float axisZ) mut => VT.SetAxisZ2(ref this, axisZ);
		public HRESULT SetCenterX(ref IDCompositionAnimation animation) mut => VT.SetCenterX(ref this, ref animation);
		public HRESULT SetCenterX(float centerX) mut => VT.SetCenterX2(ref this, centerX);
		public HRESULT SetCenterY(ref IDCompositionAnimation animation) mut => VT.SetCenterY(ref this, ref animation);
		public HRESULT SetCenterY(float centerY) mut => VT.SetCenterY2(ref this, centerY);
		public HRESULT SetCenterZ(ref IDCompositionAnimation animation) mut => VT.SetCenterZ(ref this, ref animation);
		public HRESULT SetCenterZ(float centerZ) mut => VT.SetCenterZ2(ref this, centerZ);

		[CRepr]
		public struct VTable : IDCompositionTransform3D.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAngle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float angle) SetAngle2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float axisX) SetAxisX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float axisY) SetAxisY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetAxisZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float axisZ) SetAxisZ2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float centerX) SetCenterX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float centerY) SetCenterY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, ref IDCompositionAnimation animation) SetCenterZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRotateTransform3D self, float centerZ) SetCenterZ2;
		}
	}
	[CRepr]
	public struct IDCompositionMatrixTransform3D : IDCompositionTransform3D
	{
		public const new Guid IID = .(0x4b3363f0, 0x643b, 0x41b7, 0xb6, 0xe0, 0xcc, 0xf2, 0x2d, 0x34, 0x46, 0x7c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMatrix(in D3DMATRIX matrix) mut => VT.SetMatrix(ref this, matrix);
		public HRESULT SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
		public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);

		[CRepr]
		public struct VTable : IDCompositionTransform3D.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform3D self, in D3DMATRIX matrix) SetMatrix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform3D self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionMatrixTransform3D self, int32 row, int32 column, float value) SetMatrixElement2;
		}
	}
	[CRepr]
	public struct IDCompositionClip : IUnknown
	{
		public const new Guid IID = .(0x64ac3703, 0x9d3f, 0x45ec, 0xa1, 0x09, 0x7c, 0xac, 0x0e, 0x7a, 0x13, 0xa7);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IDCompositionRectangleClip : IDCompositionClip
	{
		public const new Guid IID = .(0x9842ad7d, 0xd9cf, 0x4908, 0xae, 0xd7, 0x48, 0xb5, 0x1d, 0xa5, 0xe7, 0xc2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetLeft(ref IDCompositionAnimation animation) mut => VT.SetLeft(ref this, ref animation);
		public HRESULT SetLeft(float left) mut => VT.SetLeft2(ref this, left);
		public HRESULT SetTop(ref IDCompositionAnimation animation) mut => VT.SetTop(ref this, ref animation);
		public HRESULT SetTop(float top) mut => VT.SetTop2(ref this, top);
		public HRESULT SetRight(ref IDCompositionAnimation animation) mut => VT.SetRight(ref this, ref animation);
		public HRESULT SetRight(float right) mut => VT.SetRight2(ref this, right);
		public HRESULT SetBottom(ref IDCompositionAnimation animation) mut => VT.SetBottom(ref this, ref animation);
		public HRESULT SetBottom(float bottom) mut => VT.SetBottom2(ref this, bottom);
		public HRESULT SetTopLeftRadiusX(ref IDCompositionAnimation animation) mut => VT.SetTopLeftRadiusX(ref this, ref animation);
		public HRESULT SetTopLeftRadiusX(float radius) mut => VT.SetTopLeftRadiusX2(ref this, radius);
		public HRESULT SetTopLeftRadiusY(ref IDCompositionAnimation animation) mut => VT.SetTopLeftRadiusY(ref this, ref animation);
		public HRESULT SetTopLeftRadiusY(float radius) mut => VT.SetTopLeftRadiusY2(ref this, radius);
		public HRESULT SetTopRightRadiusX(ref IDCompositionAnimation animation) mut => VT.SetTopRightRadiusX(ref this, ref animation);
		public HRESULT SetTopRightRadiusX(float radius) mut => VT.SetTopRightRadiusX2(ref this, radius);
		public HRESULT SetTopRightRadiusY(ref IDCompositionAnimation animation) mut => VT.SetTopRightRadiusY(ref this, ref animation);
		public HRESULT SetTopRightRadiusY(float radius) mut => VT.SetTopRightRadiusY2(ref this, radius);
		public HRESULT SetBottomLeftRadiusX(ref IDCompositionAnimation animation) mut => VT.SetBottomLeftRadiusX(ref this, ref animation);
		public HRESULT SetBottomLeftRadiusX(float radius) mut => VT.SetBottomLeftRadiusX2(ref this, radius);
		public HRESULT SetBottomLeftRadiusY(ref IDCompositionAnimation animation) mut => VT.SetBottomLeftRadiusY(ref this, ref animation);
		public HRESULT SetBottomLeftRadiusY(float radius) mut => VT.SetBottomLeftRadiusY2(ref this, radius);
		public HRESULT SetBottomRightRadiusX(ref IDCompositionAnimation animation) mut => VT.SetBottomRightRadiusX(ref this, ref animation);
		public HRESULT SetBottomRightRadiusX(float radius) mut => VT.SetBottomRightRadiusX2(ref this, radius);
		public HRESULT SetBottomRightRadiusY(ref IDCompositionAnimation animation) mut => VT.SetBottomRightRadiusY(ref this, ref animation);
		public HRESULT SetBottomRightRadiusY(float radius) mut => VT.SetBottomRightRadiusY2(ref this, radius);

		[CRepr]
		public struct VTable : IDCompositionClip.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetLeft;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float left) SetLeft2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float top) SetTop2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetRight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float right) SetRight2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottom;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float bottom) SetBottom2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopLeftRadiusX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetTopLeftRadiusX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopLeftRadiusY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetTopLeftRadiusY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopRightRadiusX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetTopRightRadiusX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetTopRightRadiusY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetTopRightRadiusY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomLeftRadiusX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetBottomLeftRadiusX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomLeftRadiusY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetBottomLeftRadiusY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomRightRadiusX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetBottomRightRadiusX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, ref IDCompositionAnimation animation) SetBottomRightRadiusY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionRectangleClip self, float radius) SetBottomRightRadiusY2;
		}
	}
	[CRepr]
	public struct IDCompositionSurface : IUnknown
	{
		public const new Guid IID = .(0xbb8a4953, 0x2c99, 0x4f5a, 0x96, 0xf5, 0x48, 0x19, 0x02, 0x7f, 0xa3, 0xac);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BeginDraw(RECT* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) mut => VT.BeginDraw(ref this, updateRect, iid, updateObject, out updateOffset);
		public HRESULT EndDraw() mut => VT.EndDraw(ref this);
		public HRESULT SuspendDraw() mut => VT.SuspendDraw(ref this);
		public HRESULT ResumeDraw() mut => VT.ResumeDraw(ref this);
		public HRESULT Scroll(RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) mut => VT.Scroll(ref this, scrollRect, clipRect, offsetX, offsetY);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurface self, RECT* updateRect, in Guid iid, void** updateObject, out POINT updateOffset) BeginDraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurface self) EndDraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurface self) SuspendDraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurface self) ResumeDraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurface self, RECT* scrollRect, RECT* clipRect, int32 offsetX, int32 offsetY) Scroll;
		}
	}
	[CRepr]
	public struct IDCompositionVirtualSurface : IDCompositionSurface
	{
		public const new Guid IID = .(0xae471c51, 0x5f53, 0x4a24, 0x8d, 0x3e, 0xd0, 0xc3, 0x9c, 0x30, 0xb3, 0xf0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Resize(uint32 width, uint32 height) mut => VT.Resize(ref this, width, height);
		public HRESULT Trim(RECT* rectangles, uint32 count) mut => VT.Trim(ref this, rectangles, count);

		[CRepr]
		public struct VTable : IDCompositionSurface.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVirtualSurface self, uint32 width, uint32 height) Resize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVirtualSurface self, RECT* rectangles, uint32 count) Trim;
		}
	}
	[CRepr]
	public struct IDCompositionDevice2 : IUnknown
	{
		public const new Guid IID = .(0x75f6468d, 0x1b8e, 0x447c, 0x9b, 0xc6, 0x75, 0xfe, 0xa8, 0x0b, 0x5b, 0x25);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Commit() mut => VT.Commit(ref this);
		public HRESULT WaitForCommitCompletion() mut => VT.WaitForCommitCompletion(ref this);
		public HRESULT GetFrameStatistics(out DCOMPOSITION_FRAME_STATISTICS statistics) mut => VT.GetFrameStatistics(ref this, out statistics);
		public HRESULT CreateVisual(out IDCompositionVisual2* visual) mut => VT.CreateVisual(ref this, out visual);
		public HRESULT CreateSurfaceFactory(ref IUnknown renderingDevice, out IDCompositionSurfaceFactory* surfaceFactory) mut => VT.CreateSurfaceFactory(ref this, ref renderingDevice, out surfaceFactory);
		public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
		public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);
		public HRESULT CreateTranslateTransform(out IDCompositionTranslateTransform* translateTransform) mut => VT.CreateTranslateTransform(ref this, out translateTransform);
		public HRESULT CreateScaleTransform(out IDCompositionScaleTransform* scaleTransform) mut => VT.CreateScaleTransform(ref this, out scaleTransform);
		public HRESULT CreateRotateTransform(out IDCompositionRotateTransform* rotateTransform) mut => VT.CreateRotateTransform(ref this, out rotateTransform);
		public HRESULT CreateSkewTransform(out IDCompositionSkewTransform* skewTransform) mut => VT.CreateSkewTransform(ref this, out skewTransform);
		public HRESULT CreateMatrixTransform(out IDCompositionMatrixTransform* matrixTransform) mut => VT.CreateMatrixTransform(ref this, out matrixTransform);
		public HRESULT CreateTransformGroup(IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) mut => VT.CreateTransformGroup(ref this, transforms, elements, out transformGroup);
		public HRESULT CreateTranslateTransform3D(out IDCompositionTranslateTransform3D* translateTransform3D) mut => VT.CreateTranslateTransform3D(ref this, out translateTransform3D);
		public HRESULT CreateScaleTransform3D(out IDCompositionScaleTransform3D* scaleTransform3D) mut => VT.CreateScaleTransform3D(ref this, out scaleTransform3D);
		public HRESULT CreateRotateTransform3D(out IDCompositionRotateTransform3D* rotateTransform3D) mut => VT.CreateRotateTransform3D(ref this, out rotateTransform3D);
		public HRESULT CreateMatrixTransform3D(out IDCompositionMatrixTransform3D* matrixTransform3D) mut => VT.CreateMatrixTransform3D(ref this, out matrixTransform3D);
		public HRESULT CreateTransform3DGroup(IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) mut => VT.CreateTransform3DGroup(ref this, transforms3D, elements, out transform3DGroup);
		public HRESULT CreateEffectGroup(out IDCompositionEffectGroup* effectGroup) mut => VT.CreateEffectGroup(ref this, out effectGroup);
		public HRESULT CreateRectangleClip(out IDCompositionRectangleClip* clip) mut => VT.CreateRectangleClip(ref this, out clip);
		public HRESULT CreateAnimation(out IDCompositionAnimation* animation) mut => VT.CreateAnimation(ref this, out animation);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self) Commit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self) WaitForCommitCompletion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out DCOMPOSITION_FRAME_STATISTICS statistics) GetFrameStatistics;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionVisual2* visual) CreateVisual;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, ref IUnknown renderingDevice, out IDCompositionSurfaceFactory* surfaceFactory) CreateSurfaceFactory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionTranslateTransform* translateTransform) CreateTranslateTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionScaleTransform* scaleTransform) CreateScaleTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionRotateTransform* rotateTransform) CreateRotateTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionSkewTransform* skewTransform) CreateSkewTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionMatrixTransform* matrixTransform) CreateMatrixTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, IDCompositionTransform** transforms, uint32 elements, out IDCompositionTransform* transformGroup) CreateTransformGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionTranslateTransform3D* translateTransform3D) CreateTranslateTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionScaleTransform3D* scaleTransform3D) CreateScaleTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionRotateTransform3D* rotateTransform3D) CreateRotateTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionMatrixTransform3D* matrixTransform3D) CreateMatrixTransform3D;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, IDCompositionTransform3D** transforms3D, uint32 elements, out IDCompositionTransform3D* transform3DGroup) CreateTransform3DGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionEffectGroup* effectGroup) CreateEffectGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionRectangleClip* clip) CreateRectangleClip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice2 self, out IDCompositionAnimation* animation) CreateAnimation;
		}
	}
	[CRepr]
	public struct IDCompositionDesktopDevice : IDCompositionDevice2
	{
		public const new Guid IID = .(0x5f4633fe, 0x1e08, 0x4cb8, 0x8c, 0x75, 0xce, 0x24, 0x33, 0x3f, 0x56, 0x02);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateTargetForHwnd(HWND hwnd, BOOL topmost, out IDCompositionTarget* target) mut => VT.CreateTargetForHwnd(ref this, hwnd, topmost, out target);
		public HRESULT CreateSurfaceFromHandle(HANDLE handle, out IUnknown* surface) mut => VT.CreateSurfaceFromHandle(ref this, handle, out surface);
		public HRESULT CreateSurfaceFromHwnd(HWND hwnd, out IUnknown* surface) mut => VT.CreateSurfaceFromHwnd(ref this, hwnd, out surface);

		[CRepr]
		public struct VTable : IDCompositionDevice2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDesktopDevice self, HWND hwnd, BOOL topmost, out IDCompositionTarget* target) CreateTargetForHwnd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDesktopDevice self, HANDLE handle, out IUnknown* surface) CreateSurfaceFromHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDesktopDevice self, HWND hwnd, out IUnknown* surface) CreateSurfaceFromHwnd;
		}
	}
	[CRepr]
	public struct IDCompositionDeviceDebug : IUnknown
	{
		public const new Guid IID = .(0xa1a3c64a, 0x224f, 0x4a81, 0x97, 0x73, 0x4f, 0x03, 0xa8, 0x9d, 0x3c, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnableDebugCounters() mut => VT.EnableDebugCounters(ref this);
		public HRESULT DisableDebugCounters() mut => VT.DisableDebugCounters(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDeviceDebug self) EnableDebugCounters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDeviceDebug self) DisableDebugCounters;
		}
	}
	[CRepr]
	public struct IDCompositionSurfaceFactory : IUnknown
	{
		public const new Guid IID = .(0xe334bc12, 0x3937, 0x4e02, 0x85, 0xeb, 0xfc, 0xf4, 0xeb, 0x30, 0xd2, 0xc8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateSurface(uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) mut => VT.CreateSurface(ref this, width, height, pixelFormat, alphaMode, out surface);
		public HRESULT CreateVirtualSurface(uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) mut => VT.CreateVirtualSurface(ref this, initialWidth, initialHeight, pixelFormat, alphaMode, out virtualSurface);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurfaceFactory self, uint32 width, uint32 height, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionSurface* surface) CreateSurface;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSurfaceFactory self, uint32 initialWidth, uint32 initialHeight, DXGI_FORMAT pixelFormat, DXGI_ALPHA_MODE alphaMode, out IDCompositionVirtualSurface* virtualSurface) CreateVirtualSurface;
		}
	}
	[CRepr]
	public struct IDCompositionVisual2 : IDCompositionVisual
	{
		public const new Guid IID = .(0xe8de1639, 0x4331, 0x4b26, 0xbc, 0x5f, 0x6a, 0x32, 0x1d, 0x34, 0x7a, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOpacityMode(DCOMPOSITION_OPACITY_MODE mode) mut => VT.SetOpacityMode(ref this, mode);
		public HRESULT SetBackFaceVisibility(DCOMPOSITION_BACKFACE_VISIBILITY visibility) mut => VT.SetBackFaceVisibility(ref this, visibility);

		[CRepr]
		public struct VTable : IDCompositionVisual.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual2 self, DCOMPOSITION_OPACITY_MODE mode) SetOpacityMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual2 self, DCOMPOSITION_BACKFACE_VISIBILITY visibility) SetBackFaceVisibility;
		}
	}
	[CRepr]
	public struct IDCompositionVisualDebug : IDCompositionVisual2
	{
		public const new Guid IID = .(0xfed2b808, 0x5eb4, 0x43a0, 0xae, 0xa3, 0x35, 0xf6, 0x52, 0x80, 0xf9, 0x1b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnableHeatMap(in D2D1_COLOR_F color) mut => VT.EnableHeatMap(ref this, color);
		public HRESULT DisableHeatMap() mut => VT.DisableHeatMap(ref this);
		public HRESULT EnableRedrawRegions() mut => VT.EnableRedrawRegions(ref this);
		public HRESULT DisableRedrawRegions() mut => VT.DisableRedrawRegions(ref this);

		[CRepr]
		public struct VTable : IDCompositionVisual2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisualDebug self, in D2D1_COLOR_F color) EnableHeatMap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisualDebug self) DisableHeatMap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisualDebug self) EnableRedrawRegions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisualDebug self) DisableRedrawRegions;
		}
	}
	[CRepr]
	public struct IDCompositionVisual3 : IDCompositionVisualDebug
	{
		public const new Guid IID = .(0x2775f462, 0xb6c1, 0x4015, 0xb0, 0xbe, 0xb3, 0xe7, 0xd6, 0xa4, 0x97, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetDepthMode(DCOMPOSITION_DEPTH_MODE mode) mut => VT.SetDepthMode(ref this, mode);
		public HRESULT SetOffsetZ(ref IDCompositionAnimation animation) mut => VT.SetOffsetZ(ref this, ref animation);
		public HRESULT SetOffsetZ(float offsetZ) mut => VT.SetOffsetZ2(ref this, offsetZ);
		public HRESULT SetOpacity(ref IDCompositionAnimation animation) mut => VT.SetOpacity(ref this, ref animation);
		public HRESULT SetOpacity(float opacity) mut => VT.SetOpacity2(ref this, opacity);
		public HRESULT SetTransform(IDCompositionTransform3D* transform) mut => VT.SetTransform(ref this, transform);
		public HRESULT SetTransform(in D2D_MATRIX_4X4_F matrix) mut => VT.SetTransform2(ref this, matrix);
		public HRESULT SetVisible(BOOL visible) mut => VT.SetVisible(ref this, visible);

		[CRepr]
		public struct VTable : IDCompositionVisualDebug.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, DCOMPOSITION_DEPTH_MODE mode) SetDepthMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, ref IDCompositionAnimation animation) SetOffsetZ;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, float offsetZ) SetOffsetZ2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, ref IDCompositionAnimation animation) SetOpacity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, float opacity) SetOpacity2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, IDCompositionTransform3D* transform) SetTransform;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, in D2D_MATRIX_4X4_F matrix) SetTransform2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionVisual3 self, BOOL visible) SetVisible;
		}
	}
	[CRepr]
	public struct IDCompositionDevice3 : IDCompositionDevice2
	{
		public const new Guid IID = .(0x0987cb06, 0xf916, 0x48bf, 0x8d, 0x35, 0xce, 0x76, 0x41, 0x78, 0x1b, 0xd9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateGaussianBlurEffect(out IDCompositionGaussianBlurEffect* gaussianBlurEffect) mut => VT.CreateGaussianBlurEffect(ref this, out gaussianBlurEffect);
		public HRESULT CreateBrightnessEffect(out IDCompositionBrightnessEffect* brightnessEffect) mut => VT.CreateBrightnessEffect(ref this, out brightnessEffect);
		public HRESULT CreateColorMatrixEffect(out IDCompositionColorMatrixEffect* colorMatrixEffect) mut => VT.CreateColorMatrixEffect(ref this, out colorMatrixEffect);
		public HRESULT CreateShadowEffect(out IDCompositionShadowEffect* shadowEffect) mut => VT.CreateShadowEffect(ref this, out shadowEffect);
		public HRESULT CreateHueRotationEffect(out IDCompositionHueRotationEffect* hueRotationEffect) mut => VT.CreateHueRotationEffect(ref this, out hueRotationEffect);
		public HRESULT CreateSaturationEffect(out IDCompositionSaturationEffect* saturationEffect) mut => VT.CreateSaturationEffect(ref this, out saturationEffect);
		public HRESULT CreateTurbulenceEffect(out IDCompositionTurbulenceEffect* turbulenceEffect) mut => VT.CreateTurbulenceEffect(ref this, out turbulenceEffect);
		public HRESULT CreateLinearTransferEffect(out IDCompositionLinearTransferEffect* linearTransferEffect) mut => VT.CreateLinearTransferEffect(ref this, out linearTransferEffect);
		public HRESULT CreateTableTransferEffect(out IDCompositionTableTransferEffect* tableTransferEffect) mut => VT.CreateTableTransferEffect(ref this, out tableTransferEffect);
		public HRESULT CreateCompositeEffect(out IDCompositionCompositeEffect* compositeEffect) mut => VT.CreateCompositeEffect(ref this, out compositeEffect);
		public HRESULT CreateBlendEffect(out IDCompositionBlendEffect* blendEffect) mut => VT.CreateBlendEffect(ref this, out blendEffect);
		public HRESULT CreateArithmeticCompositeEffect(out IDCompositionArithmeticCompositeEffect* arithmeticCompositeEffect) mut => VT.CreateArithmeticCompositeEffect(ref this, out arithmeticCompositeEffect);
		public HRESULT CreateAffineTransform2DEffect(out IDCompositionAffineTransform2DEffect* affineTransform2dEffect) mut => VT.CreateAffineTransform2DEffect(ref this, out affineTransform2dEffect);

		[CRepr]
		public struct VTable : IDCompositionDevice2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionGaussianBlurEffect* gaussianBlurEffect) CreateGaussianBlurEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionBrightnessEffect* brightnessEffect) CreateBrightnessEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionColorMatrixEffect* colorMatrixEffect) CreateColorMatrixEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionShadowEffect* shadowEffect) CreateShadowEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionHueRotationEffect* hueRotationEffect) CreateHueRotationEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionSaturationEffect* saturationEffect) CreateSaturationEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionTurbulenceEffect* turbulenceEffect) CreateTurbulenceEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionLinearTransferEffect* linearTransferEffect) CreateLinearTransferEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionTableTransferEffect* tableTransferEffect) CreateTableTransferEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionCompositeEffect* compositeEffect) CreateCompositeEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionBlendEffect* blendEffect) CreateBlendEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionArithmeticCompositeEffect* arithmeticCompositeEffect) CreateArithmeticCompositeEffect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDevice3 self, out IDCompositionAffineTransform2DEffect* affineTransform2dEffect) CreateAffineTransform2DEffect;
		}
	}
	[CRepr]
	public struct IDCompositionFilterEffect : IDCompositionEffect
	{
		public const new Guid IID = .(0x30c421d5, 0x8cb2, 0x4e9f, 0xb1, 0x33, 0x37, 0xbe, 0x27, 0x0d, 0x4a, 0xc2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetInput(uint32 index, IUnknown* input, uint32 flags) mut => VT.SetInput(ref this, index, input, flags);

		[CRepr]
		public struct VTable : IDCompositionEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionFilterEffect self, uint32 index, IUnknown* input, uint32 flags) SetInput;
		}
	}
	[CRepr]
	public struct IDCompositionGaussianBlurEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x45d4d0b7, 0x1bd4, 0x454e, 0x88, 0x94, 0x2b, 0xfa, 0x68, 0x44, 0x30, 0x33);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetStandardDeviation(ref IDCompositionAnimation animation) mut => VT.SetStandardDeviation(ref this, ref animation);
		public HRESULT SetStandardDeviation(float amount) mut => VT.SetStandardDeviation2(ref this, amount);
		public HRESULT SetBorderMode(D2D1_BORDER_MODE mode) mut => VT.SetBorderMode(ref this, mode);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionGaussianBlurEffect self, ref IDCompositionAnimation animation) SetStandardDeviation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionGaussianBlurEffect self, float amount) SetStandardDeviation2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionGaussianBlurEffect self, D2D1_BORDER_MODE mode) SetBorderMode;
		}
	}
	[CRepr]
	public struct IDCompositionBrightnessEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x6027496e, 0xcb3a, 0x49ab, 0x93, 0x4f, 0xd7, 0x98, 0xda, 0x4f, 0x7d, 0xa6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetWhitePoint(in D2D_VECTOR_2F whitePoint) mut => VT.SetWhitePoint(ref this, whitePoint);
		public HRESULT SetBlackPoint(in D2D_VECTOR_2F blackPoint) mut => VT.SetBlackPoint(ref this, blackPoint);
		public HRESULT SetWhitePointX(ref IDCompositionAnimation animation) mut => VT.SetWhitePointX(ref this, ref animation);
		public HRESULT SetWhitePointX(float whitePointX) mut => VT.SetWhitePointX2(ref this, whitePointX);
		public HRESULT SetWhitePointY(ref IDCompositionAnimation animation) mut => VT.SetWhitePointY(ref this, ref animation);
		public HRESULT SetWhitePointY(float whitePointY) mut => VT.SetWhitePointY2(ref this, whitePointY);
		public HRESULT SetBlackPointX(ref IDCompositionAnimation animation) mut => VT.SetBlackPointX(ref this, ref animation);
		public HRESULT SetBlackPointX(float blackPointX) mut => VT.SetBlackPointX2(ref this, blackPointX);
		public HRESULT SetBlackPointY(ref IDCompositionAnimation animation) mut => VT.SetBlackPointY(ref this, ref animation);
		public HRESULT SetBlackPointY(float blackPointY) mut => VT.SetBlackPointY2(ref this, blackPointY);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, in D2D_VECTOR_2F whitePoint) SetWhitePoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, in D2D_VECTOR_2F blackPoint) SetBlackPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetWhitePointX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, float whitePointX) SetWhitePointX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetWhitePointY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, float whitePointY) SetWhitePointY2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetBlackPointX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, float blackPointX) SetBlackPointX2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, ref IDCompositionAnimation animation) SetBlackPointY;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBrightnessEffect self, float blackPointY) SetBlackPointY2;
		}
	}
	[CRepr]
	public struct IDCompositionColorMatrixEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0xc1170a22, 0x3ce2, 0x4966, 0x90, 0xd4, 0x55, 0x40, 0x8b, 0xfc, 0x84, 0xc4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMatrix(in D2D_MATRIX_5X4_F matrix) mut => VT.SetMatrix(ref this, matrix);
		public HRESULT SetMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetMatrixElement(ref this, row, column, ref animation);
		public HRESULT SetMatrixElement(int32 row, int32 column, float value) mut => VT.SetMatrixElement2(ref this, row, column, value);
		public HRESULT SetAlphaMode(D2D1_COLORMATRIX_ALPHA_MODE mode) mut => VT.SetAlphaMode(ref this, mode);
		public HRESULT SetClampOutput(BOOL clamp) mut => VT.SetClampOutput(ref this, clamp);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionColorMatrixEffect self, in D2D_MATRIX_5X4_F matrix) SetMatrix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionColorMatrixEffect self, int32 row, int32 column, ref IDCompositionAnimation animation) SetMatrixElement;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionColorMatrixEffect self, int32 row, int32 column, float value) SetMatrixElement2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionColorMatrixEffect self, D2D1_COLORMATRIX_ALPHA_MODE mode) SetAlphaMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionColorMatrixEffect self, BOOL clamp) SetClampOutput;
		}
	}
	[CRepr]
	public struct IDCompositionShadowEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x4ad18ac0, 0xcfd2, 0x4c2f, 0xbb, 0x62, 0x96, 0xe5, 0x4f, 0xdb, 0x68, 0x79);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetStandardDeviation(ref IDCompositionAnimation animation) mut => VT.SetStandardDeviation(ref this, ref animation);
		public HRESULT SetStandardDeviation(float amount) mut => VT.SetStandardDeviation2(ref this, amount);
		public HRESULT SetColor(in D2D_VECTOR_4F color) mut => VT.SetColor(ref this, color);
		public HRESULT SetRed(ref IDCompositionAnimation animation) mut => VT.SetRed(ref this, ref animation);
		public HRESULT SetRed(float amount) mut => VT.SetRed2(ref this, amount);
		public HRESULT SetGreen(ref IDCompositionAnimation animation) mut => VT.SetGreen(ref this, ref animation);
		public HRESULT SetGreen(float amount) mut => VT.SetGreen2(ref this, amount);
		public HRESULT SetBlue(ref IDCompositionAnimation animation) mut => VT.SetBlue(ref this, ref animation);
		public HRESULT SetBlue(float amount) mut => VT.SetBlue2(ref this, amount);
		public HRESULT SetAlpha(ref IDCompositionAnimation animation) mut => VT.SetAlpha(ref this, ref animation);
		public HRESULT SetAlpha(float amount) mut => VT.SetAlpha2(ref this, amount);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetStandardDeviation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, float amount) SetStandardDeviation2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, in D2D_VECTOR_4F color) SetColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetRed;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, float amount) SetRed2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetGreen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, float amount) SetGreen2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetBlue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, float amount) SetBlue2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, ref IDCompositionAnimation animation) SetAlpha;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionShadowEffect self, float amount) SetAlpha2;
		}
	}
	[CRepr]
	public struct IDCompositionHueRotationEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x6db9f920, 0x0770, 0x4781, 0xb0, 0xc6, 0x38, 0x19, 0x12, 0xf9, 0xd1, 0x67);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAngle(ref IDCompositionAnimation animation) mut => VT.SetAngle(ref this, ref animation);
		public HRESULT SetAngle(float amountDegrees) mut => VT.SetAngle2(ref this, amountDegrees);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionHueRotationEffect self, ref IDCompositionAnimation animation) SetAngle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionHueRotationEffect self, float amountDegrees) SetAngle2;
		}
	}
	[CRepr]
	public struct IDCompositionSaturationEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0xa08debda, 0x3258, 0x4fa4, 0x9f, 0x16, 0x91, 0x74, 0xd3, 0xfe, 0x93, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSaturation(ref IDCompositionAnimation animation) mut => VT.SetSaturation(ref this, ref animation);
		public HRESULT SetSaturation(float ratio) mut => VT.SetSaturation2(ref this, ratio);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSaturationEffect self, ref IDCompositionAnimation animation) SetSaturation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionSaturationEffect self, float ratio) SetSaturation2;
		}
	}
	[CRepr]
	public struct IDCompositionTurbulenceEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0xa6a55bda, 0xc09c, 0x49f3, 0x91, 0x93, 0xa4, 0x19, 0x22, 0xc8, 0x97, 0x15);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOffset(in D2D_VECTOR_2F offset) mut => VT.SetOffset(ref this, offset);
		public HRESULT SetBaseFrequency(in D2D_VECTOR_2F frequency) mut => VT.SetBaseFrequency(ref this, frequency);
		public HRESULT SetSize(in D2D_VECTOR_2F size) mut => VT.SetSize(ref this, size);
		public HRESULT SetNumOctaves(uint32 numOctaves) mut => VT.SetNumOctaves(ref this, numOctaves);
		public HRESULT SetSeed(uint32 seed) mut => VT.SetSeed(ref this, seed);
		public HRESULT SetNoise(D2D1_TURBULENCE_NOISE noise) mut => VT.SetNoise(ref this, noise);
		public HRESULT SetStitchable(BOOL stitchable) mut => VT.SetStitchable(ref this, stitchable);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, in D2D_VECTOR_2F offset) SetOffset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, in D2D_VECTOR_2F frequency) SetBaseFrequency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, in D2D_VECTOR_2F size) SetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, uint32 numOctaves) SetNumOctaves;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, uint32 seed) SetSeed;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, D2D1_TURBULENCE_NOISE noise) SetNoise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTurbulenceEffect self, BOOL stitchable) SetStitchable;
		}
	}
	[CRepr]
	public struct IDCompositionLinearTransferEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x4305ee5b, 0xc4a0, 0x4c88, 0x93, 0x85, 0x67, 0x12, 0x4e, 0x01, 0x76, 0x83);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetRedYIntercept(ref IDCompositionAnimation animation) mut => VT.SetRedYIntercept(ref this, ref animation);
		public HRESULT SetRedYIntercept(float redYIntercept) mut => VT.SetRedYIntercept2(ref this, redYIntercept);
		public HRESULT SetRedSlope(ref IDCompositionAnimation animation) mut => VT.SetRedSlope(ref this, ref animation);
		public HRESULT SetRedSlope(float redSlope) mut => VT.SetRedSlope2(ref this, redSlope);
		public HRESULT SetRedDisable(BOOL redDisable) mut => VT.SetRedDisable(ref this, redDisable);
		public HRESULT SetGreenYIntercept(ref IDCompositionAnimation animation) mut => VT.SetGreenYIntercept(ref this, ref animation);
		public HRESULT SetGreenYIntercept(float greenYIntercept) mut => VT.SetGreenYIntercept2(ref this, greenYIntercept);
		public HRESULT SetGreenSlope(ref IDCompositionAnimation animation) mut => VT.SetGreenSlope(ref this, ref animation);
		public HRESULT SetGreenSlope(float greenSlope) mut => VT.SetGreenSlope2(ref this, greenSlope);
		public HRESULT SetGreenDisable(BOOL greenDisable) mut => VT.SetGreenDisable(ref this, greenDisable);
		public HRESULT SetBlueYIntercept(ref IDCompositionAnimation animation) mut => VT.SetBlueYIntercept(ref this, ref animation);
		public HRESULT SetBlueYIntercept(float blueYIntercept) mut => VT.SetBlueYIntercept2(ref this, blueYIntercept);
		public HRESULT SetBlueSlope(ref IDCompositionAnimation animation) mut => VT.SetBlueSlope(ref this, ref animation);
		public HRESULT SetBlueSlope(float blueSlope) mut => VT.SetBlueSlope2(ref this, blueSlope);
		public HRESULT SetBlueDisable(BOOL blueDisable) mut => VT.SetBlueDisable(ref this, blueDisable);
		public HRESULT SetAlphaYIntercept(ref IDCompositionAnimation animation) mut => VT.SetAlphaYIntercept(ref this, ref animation);
		public HRESULT SetAlphaYIntercept(float alphaYIntercept) mut => VT.SetAlphaYIntercept2(ref this, alphaYIntercept);
		public HRESULT SetAlphaSlope(ref IDCompositionAnimation animation) mut => VT.SetAlphaSlope(ref this, ref animation);
		public HRESULT SetAlphaSlope(float alphaSlope) mut => VT.SetAlphaSlope2(ref this, alphaSlope);
		public HRESULT SetAlphaDisable(BOOL alphaDisable) mut => VT.SetAlphaDisable(ref this, alphaDisable);
		public HRESULT SetClampOutput(BOOL clampOutput) mut => VT.SetClampOutput(ref this, clampOutput);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetRedYIntercept;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float redYIntercept) SetRedYIntercept2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetRedSlope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float redSlope) SetRedSlope2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, BOOL redDisable) SetRedDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetGreenYIntercept;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float greenYIntercept) SetGreenYIntercept2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetGreenSlope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float greenSlope) SetGreenSlope2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, BOOL greenDisable) SetGreenDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetBlueYIntercept;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float blueYIntercept) SetBlueYIntercept2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetBlueSlope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float blueSlope) SetBlueSlope2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, BOOL blueDisable) SetBlueDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetAlphaYIntercept;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float alphaYIntercept) SetAlphaYIntercept2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, ref IDCompositionAnimation animation) SetAlphaSlope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, float alphaSlope) SetAlphaSlope2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, BOOL alphaDisable) SetAlphaDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionLinearTransferEffect self, BOOL clampOutput) SetClampOutput;
		}
	}
	[CRepr]
	public struct IDCompositionTableTransferEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x9b7e82e2, 0x69c5, 0x4eb4, 0xa5, 0xf5, 0xa7, 0x03, 0x3f, 0x51, 0x32, 0xcd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetRedTable(float* tableValues, uint32 count) mut => VT.SetRedTable(ref this, tableValues, count);
		public HRESULT SetGreenTable(float* tableValues, uint32 count) mut => VT.SetGreenTable(ref this, tableValues, count);
		public HRESULT SetBlueTable(float* tableValues, uint32 count) mut => VT.SetBlueTable(ref this, tableValues, count);
		public HRESULT SetAlphaTable(float* tableValues, uint32 count) mut => VT.SetAlphaTable(ref this, tableValues, count);
		public HRESULT SetRedDisable(BOOL redDisable) mut => VT.SetRedDisable(ref this, redDisable);
		public HRESULT SetGreenDisable(BOOL greenDisable) mut => VT.SetGreenDisable(ref this, greenDisable);
		public HRESULT SetBlueDisable(BOOL blueDisable) mut => VT.SetBlueDisable(ref this, blueDisable);
		public HRESULT SetAlphaDisable(BOOL alphaDisable) mut => VT.SetAlphaDisable(ref this, alphaDisable);
		public HRESULT SetClampOutput(BOOL clampOutput) mut => VT.SetClampOutput(ref this, clampOutput);
		public HRESULT SetRedTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetRedTableValue(ref this, index, ref animation);
		public HRESULT SetRedTableValue(uint32 index, float value) mut => VT.SetRedTableValue2(ref this, index, value);
		public HRESULT SetGreenTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetGreenTableValue(ref this, index, ref animation);
		public HRESULT SetGreenTableValue(uint32 index, float value) mut => VT.SetGreenTableValue2(ref this, index, value);
		public HRESULT SetBlueTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetBlueTableValue(ref this, index, ref animation);
		public HRESULT SetBlueTableValue(uint32 index, float value) mut => VT.SetBlueTableValue2(ref this, index, value);
		public HRESULT SetAlphaTableValue(uint32 index, ref IDCompositionAnimation animation) mut => VT.SetAlphaTableValue(ref this, index, ref animation);
		public HRESULT SetAlphaTableValue(uint32 index, float value) mut => VT.SetAlphaTableValue2(ref this, index, value);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetRedTable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetGreenTable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetBlueTable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, float* tableValues, uint32 count) SetAlphaTable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, BOOL redDisable) SetRedDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, BOOL greenDisable) SetGreenDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, BOOL blueDisable) SetBlueDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, BOOL alphaDisable) SetAlphaDisable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, BOOL clampOutput) SetClampOutput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetRedTableValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetRedTableValue2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetGreenTableValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetGreenTableValue2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetBlueTableValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetBlueTableValue2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, ref IDCompositionAnimation animation) SetAlphaTableValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionTableTransferEffect self, uint32 index, float value) SetAlphaTableValue2;
		}
	}
	[CRepr]
	public struct IDCompositionCompositeEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x576616c0, 0xa231, 0x494d, 0xa3, 0x8d, 0x00, 0xfd, 0x5e, 0xc4, 0xdb, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMode(D2D1_COMPOSITE_MODE mode) mut => VT.SetMode(ref this, mode);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionCompositeEffect self, D2D1_COMPOSITE_MODE mode) SetMode;
		}
	}
	[CRepr]
	public struct IDCompositionBlendEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x33ecdc0a, 0x578a, 0x4a11, 0x9c, 0x14, 0x0c, 0xb9, 0x05, 0x17, 0xf9, 0xc5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMode(D2D1_BLEND_MODE mode) mut => VT.SetMode(ref this, mode);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionBlendEffect self, D2D1_BLEND_MODE mode) SetMode;
		}
	}
	[CRepr]
	public struct IDCompositionArithmeticCompositeEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x3b67dfa8, 0xe3dd, 0x4e61, 0xb6, 0x40, 0x46, 0xc2, 0xf3, 0xd7, 0x39, 0xdc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCoefficients(in D2D_VECTOR_4F coefficients) mut => VT.SetCoefficients(ref this, coefficients);
		public HRESULT SetClampOutput(BOOL clampoutput) mut => VT.SetClampOutput(ref this, clampoutput);
		public HRESULT SetCoefficient1(ref IDCompositionAnimation animation) mut => VT.SetCoefficient1(ref this, ref animation);
		public HRESULT SetCoefficient1(float Coeffcient1) mut => VT.SetCoefficient12(ref this, Coeffcient1);
		public HRESULT SetCoefficient2(ref IDCompositionAnimation animation) mut => VT.SetCoefficient2(ref this, ref animation);
		public HRESULT SetCoefficient2(float Coefficient2) mut => VT.SetCoefficient22(ref this, Coefficient2);
		public HRESULT SetCoefficient3(ref IDCompositionAnimation animation) mut => VT.SetCoefficient3(ref this, ref animation);
		public HRESULT SetCoefficient3(float Coefficient3) mut => VT.SetCoefficient32(ref this, Coefficient3);
		public HRESULT SetCoefficient4(ref IDCompositionAnimation animation) mut => VT.SetCoefficient4(ref this, ref animation);
		public HRESULT SetCoefficient4(float Coefficient4) mut => VT.SetCoefficient42(ref this, Coefficient4);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, in D2D_VECTOR_4F coefficients) SetCoefficients;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, BOOL clampoutput) SetClampOutput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient1;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, float Coeffcient1) SetCoefficient12;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, float Coefficient2) SetCoefficient22;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient3;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, float Coefficient3) SetCoefficient32;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, ref IDCompositionAnimation animation) SetCoefficient4;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionArithmeticCompositeEffect self, float Coefficient4) SetCoefficient42;
		}
	}
	[CRepr]
	public struct IDCompositionAffineTransform2DEffect : IDCompositionFilterEffect
	{
		public const new Guid IID = .(0x0b74b9e8, 0xcdd6, 0x492f, 0xbb, 0xbc, 0x5e, 0xd3, 0x21, 0x57, 0x02, 0x6d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetInterpolationMode(D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) mut => VT.SetInterpolationMode(ref this, interpolationMode);
		public HRESULT SetBorderMode(D2D1_BORDER_MODE borderMode) mut => VT.SetBorderMode(ref this, borderMode);
		public HRESULT SetTransformMatrix(in D2D_MATRIX_3X2_F transformMatrix) mut => VT.SetTransformMatrix(ref this, transformMatrix);
		public HRESULT SetTransformMatrixElement(int32 row, int32 column, ref IDCompositionAnimation animation) mut => VT.SetTransformMatrixElement(ref this, row, column, ref animation);
		public HRESULT SetTransformMatrixElement(int32 row, int32 column, float value) mut => VT.SetTransformMatrixElement2(ref this, row, column, value);
		public HRESULT SetSharpness(ref IDCompositionAnimation animation) mut => VT.SetSharpness(ref this, ref animation);
		public HRESULT SetSharpness(float sharpness) mut => VT.SetSharpness2(ref this, sharpness);

		[CRepr]
		public struct VTable : IDCompositionFilterEffect.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE interpolationMode) SetInterpolationMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, D2D1_BORDER_MODE borderMode) SetBorderMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, in D2D_MATRIX_3X2_F transformMatrix) SetTransformMatrix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, int32 row, int32 column, ref IDCompositionAnimation animation) SetTransformMatrixElement;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, int32 row, int32 column, float value) SetTransformMatrixElement2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, ref IDCompositionAnimation animation) SetSharpness;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionAffineTransform2DEffect self, float sharpness) SetSharpness2;
		}
	}
	[CRepr]
	public struct IDCompositionDelegatedInkTrail : IUnknown
	{
		public const new Guid IID = .(0xc2448e9b, 0x547d, 0x4057, 0x8c, 0xf5, 0x81, 0x44, 0xed, 0xe1, 0xc2, 0xda);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddTrailPoints(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, out uint32 generationId) mut => VT.AddTrailPoints(ref this, inkPoints, inkPointsCount, out generationId);
		public HRESULT AddTrailPointsWithPrediction(DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, out uint32 generationId) mut => VT.AddTrailPointsWithPrediction(ref this, inkPoints, inkPointsCount, predictedInkPoints, predictedInkPointsCount, out generationId);
		public HRESULT RemoveTrailPoints(uint32 generationId) mut => VT.RemoveTrailPoints(ref this, generationId);
		public HRESULT StartNewTrail(in D2D1_COLOR_F color) mut => VT.StartNewTrail(ref this, color);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDelegatedInkTrail self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, out uint32 generationId) AddTrailPoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDelegatedInkTrail self, DCompositionInkTrailPoint* inkPoints, uint32 inkPointsCount, DCompositionInkTrailPoint* predictedInkPoints, uint32 predictedInkPointsCount, out uint32 generationId) AddTrailPointsWithPrediction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDelegatedInkTrail self, uint32 generationId) RemoveTrailPoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionDelegatedInkTrail self, in D2D1_COLOR_F color) StartNewTrail;
		}
	}
	[CRepr]
	public struct IDCompositionInkTrailDevice : IUnknown
	{
		public const new Guid IID = .(0xdf0c7cec, 0xcdeb, 0x4d4a, 0xb9, 0x1c, 0x72, 0x1b, 0xf2, 0x2f, 0x4e, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateDelegatedInkTrail(out IDCompositionDelegatedInkTrail* inkTrail) mut => VT.CreateDelegatedInkTrail(ref this, out inkTrail);
		public HRESULT CreateDelegatedInkTrailForSwapChain(ref IUnknown swapChain, out IDCompositionDelegatedInkTrail* inkTrail) mut => VT.CreateDelegatedInkTrailForSwapChain(ref this, ref swapChain, out inkTrail);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionInkTrailDevice self, out IDCompositionDelegatedInkTrail* inkTrail) CreateDelegatedInkTrail;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDCompositionInkTrailDevice self, ref IUnknown swapChain, out IDCompositionDelegatedInkTrail* inkTrail) CreateDelegatedInkTrailForSwapChain;
		}
	}
	#endregion
	
	#region Functions
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionCreateDevice(IDXGIDevice* dxgiDevice, in Guid iid, void** dcompositionDevice);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionCreateDevice2(IUnknown* renderingDevice, in Guid iid, void** dcompositionDevice);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionCreateDevice3(IUnknown* renderingDevice, in Guid iid, void** dcompositionDevice);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionCreateSurfaceHandle(uint32 desiredAccess, SECURITY_ATTRIBUTES* securityAttributes, out HANDLE surfaceHandle);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionAttachMouseWheelToHwnd(ref IDCompositionVisual visual, HWND hwnd, BOOL enable);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionAttachMouseDragToHwnd(ref IDCompositionVisual visual, HWND hwnd, BOOL enable);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionGetFrameId(COMPOSITION_FRAME_ID_TYPE frameIdType, out uint64 frameId);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionGetStatistics(uint64 frameId, out COMPOSITION_FRAME_STATS frameStats, uint32 targetIdCount, COMPOSITION_TARGET_ID* targetIds, uint32* actualTargetIdCount);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionGetTargetStatistics(uint64 frameId, in COMPOSITION_TARGET_ID targetId, out COMPOSITION_TARGET_STATS targetStats);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT DCompositionBoostCompositorClock(BOOL enable);
	[Import("dcomp.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DCompositionWaitForCompositorClock(uint32 count, HANDLE* handles, uint32 timeoutInMs);
	#endregion
}
