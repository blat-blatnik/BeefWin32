using System;

// namespace System.Com.CallObj
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CALLFRAME_COPY : int32
		{
			CALLFRAME_COPY_NESTED = 1,
			CALLFRAME_COPY_INDEPENDENT = 2,
		}
		[AllowDuplicates]
		public enum CALLFRAME_FREE : int32
		{
			CALLFRAME_FREE_NONE = 0,
			CALLFRAME_FREE_IN = 1,
			CALLFRAME_FREE_INOUT = 2,
			CALLFRAME_FREE_OUT = 4,
			CALLFRAME_FREE_TOP_INOUT = 8,
			CALLFRAME_FREE_TOP_OUT = 16,
			CALLFRAME_FREE_ALL = 31,
		}
		[AllowDuplicates]
		public enum CALLFRAME_NULL : int32
		{
			CALLFRAME_NULL_NONE = 0,
			CALLFRAME_NULL_INOUT = 2,
			CALLFRAME_NULL_OUT = 4,
			CALLFRAME_NULL_ALL = 6,
		}
		[AllowDuplicates]
		public enum CALLFRAME_WALK : int32
		{
			CALLFRAME_WALK_IN = 1,
			CALLFRAME_WALK_INOUT = 2,
			CALLFRAME_WALK_OUT = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CALLFRAMEINFO
		{
			public uint32 iMethod;
			public BOOL fHasInValues;
			public BOOL fHasInOutValues;
			public BOOL fHasOutValues;
			public BOOL fDerivesFromIDispatch;
			public int32 cInInterfacesMax;
			public int32 cInOutInterfacesMax;
			public int32 cOutInterfacesMax;
			public int32 cTopLevelInInterfaces;
			public Guid iid;
			public uint32 cMethod;
			public uint32 cParams;
		}
		[CRepr]
		public struct CALLFRAMEPARAMINFO
		{
			public BOOLEAN fIn;
			public BOOLEAN fOut;
			public uint32 stackOffset;
			public uint32 cbParam;
		}
		[CRepr]
		public struct CALLFRAME_MARSHALCONTEXT
		{
			public BOOLEAN fIn;
			public uint32 dwDestContext;
			public void* pvDestContext;
			public IUnknown* punkReserved;
			public Guid guidTransferSyntax;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ICallFrame : IUnknown
		{
			public const new Guid IID = .(0xd573b4b0, 0x894e, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallFrame *self, CALLFRAMEINFO* pInfo) GetInfo;
				public function HRESULT(ICallFrame *self, Guid* pIID, uint32* piMethod) GetIIDAndMethod;
				public function HRESULT(ICallFrame *self, PWSTR* pwszInterface, PWSTR* pwszMethod) GetNames;
				public function void*(ICallFrame *self) GetStackLocation;
				public function void(ICallFrame *self, void* pvStack) SetStackLocation;
				public function void(ICallFrame *self, HRESULT hr) SetReturnValue;
				public function HRESULT(ICallFrame *self) GetReturnValue;
				public function HRESULT(ICallFrame *self, uint32 iparam, CALLFRAMEPARAMINFO* pInfo) GetParamInfo;
				public function HRESULT(ICallFrame *self, uint32 iparam, VARIANT* pvar) SetParam;
				public function HRESULT(ICallFrame *self, uint32 iparam, VARIANT* pvar) GetParam;
				public function HRESULT(ICallFrame *self, CALLFRAME_COPY copyControl, ICallFrameWalker* pWalker, ICallFrame** ppFrame) Copy;
				public function HRESULT(ICallFrame *self, ICallFrame* pframeArgsDest, ICallFrameWalker* pWalkerDestFree, ICallFrameWalker* pWalkerCopy, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) Free;
				public function HRESULT(ICallFrame *self, uint32 iparam, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) FreeParam;
				public function HRESULT(ICallFrame *self, uint32 walkWhat, ICallFrameWalker* pWalker) WalkFrame;
				public function HRESULT(ICallFrame *self, CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, uint32* pcbBufferNeeded) GetMarshalSizeMax;
				public function HRESULT(ICallFrame *self, CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, void* pBuffer, uint32 cbBuffer, uint32* pcbBufferUsed, uint32* pdataRep, uint32* prpcFlags) Marshal;
				public function HRESULT(ICallFrame *self, void* pBuffer, uint32 cbBuffer, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled) Unmarshal;
				public function HRESULT(ICallFrame *self, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) ReleaseMarshalData;
				public function HRESULT(ICallFrame *self, void* pvReceiver) Invoke;
			}
		}
		[CRepr]
		public struct ICallIndirect : IUnknown
		{
			public const new Guid IID = .(0xd573b4b1, 0x894e, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallIndirect *self, HRESULT* phrReturn, uint32 iMethod, void* pvArgs, uint32* cbArgs) CallIndirect;
				public function HRESULT(ICallIndirect *self, uint32 iMethod, CALLFRAMEINFO* pInfo, PWSTR* pwszMethod) GetMethodInfo;
				public function HRESULT(ICallIndirect *self, uint32 iMethod, uint32* cbArgs) GetStackSize;
				public function HRESULT(ICallIndirect *self, Guid* piid, BOOL* pfDerivesFromIDispatch, uint32* pcMethod, PWSTR* pwszInterface) GetIID;
			}
		}
		[CRepr]
		public struct ICallInterceptor : ICallIndirect
		{
			public const new Guid IID = .(0x60c7ca75, 0x896d, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : ICallIndirect.VTable
			{
				public function HRESULT(ICallInterceptor *self, ICallFrameEvents* psink) RegisterSink;
				public function HRESULT(ICallInterceptor *self, ICallFrameEvents** ppsink) GetRegisteredSink;
			}
		}
		[CRepr]
		public struct ICallFrameEvents : IUnknown
		{
			public const new Guid IID = .(0xfd5e0843, 0xfc91, 0x11d0, 0x97, 0xd7, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallFrameEvents *self, ICallFrame* pFrame) OnCall;
			}
		}
		[CRepr]
		public struct ICallUnmarshal : IUnknown
		{
			public const new Guid IID = .(0x5333b003, 0x2e42, 0x11d2, 0xb8, 0x9d, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallUnmarshal *self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, BOOL fForceBufferCopy, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled, ICallFrame** ppFrame) Unmarshal;
				public function HRESULT(ICallUnmarshal *self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) ReleaseMarshalData;
			}
		}
		[CRepr]
		public struct ICallFrameWalker : IUnknown
		{
			public const new Guid IID = .(0x08b23919, 0x392d, 0x11d2, 0xb8, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(ICallFrameWalker *self, Guid* iid, void** ppvInterface, BOOL fIn, BOOL fOut) OnWalkInterface;
			}
		}
		[CRepr]
		public struct IInterfaceRelated : IUnknown
		{
			public const new Guid IID = .(0xd1fb5a79, 0x7706, 0x11d1, 0xad, 0xba, 0x00, 0xc0, 0x4f, 0xc2, 0xad, 0xc0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IInterfaceRelated *self, Guid* iid) SetIID;
				public function HRESULT(IInterfaceRelated *self, Guid* piid) GetIID;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptor(Guid* iidIntercepted, IUnknown* punkOuter, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptorFromTypeInfo(Guid* iidIntercepted, IUnknown* punkOuter, ITypeInfo* typeInfo, Guid* iid, void** ppv);
		
	}
}
