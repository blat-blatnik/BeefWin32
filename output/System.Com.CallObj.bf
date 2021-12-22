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
			NESTED = 1,
			INDEPENDENT = 2,
		}
		[AllowDuplicates]
		public enum CALLFRAME_FREE : int32
		{
			NONE = 0,
			IN = 1,
			INOUT = 2,
			OUT = 4,
			TOP_INOUT = 8,
			TOP_OUT = 16,
			ALL = 31,
		}
		[AllowDuplicates]
		public enum CALLFRAME_NULL : int32
		{
			NONE = 0,
			INOUT = 2,
			OUT = 4,
			ALL = 6,
		}
		[AllowDuplicates]
		public enum CALLFRAME_WALK : int32
		{
			IN = 1,
			INOUT = 2,
			OUT = 4,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfo(CALLFRAMEINFO* pInfo) mut
			{
				return VT.GetInfo(&this, pInfo);
			}
			public HRESULT GetIIDAndMethod(Guid* pIID, uint32* piMethod) mut
			{
				return VT.GetIIDAndMethod(&this, pIID, piMethod);
			}
			public HRESULT GetNames(PWSTR* pwszInterface, PWSTR* pwszMethod) mut
			{
				return VT.GetNames(&this, pwszInterface, pwszMethod);
			}
			public void* GetStackLocation() mut
			{
				return VT.GetStackLocation(&this);
			}
			public void SetStackLocation(void* pvStack) mut
			{
				VT.SetStackLocation(&this, pvStack);
			}
			public void SetReturnValue(HRESULT hr) mut
			{
				VT.SetReturnValue(&this, hr);
			}
			public HRESULT GetReturnValue() mut
			{
				return VT.GetReturnValue(&this);
			}
			public HRESULT GetParamInfo(uint32 iparam, CALLFRAMEPARAMINFO* pInfo) mut
			{
				return VT.GetParamInfo(&this, iparam, pInfo);
			}
			public HRESULT SetParam(uint32 iparam, VARIANT* pvar) mut
			{
				return VT.SetParam(&this, iparam, pvar);
			}
			public HRESULT GetParam(uint32 iparam, VARIANT* pvar) mut
			{
				return VT.GetParam(&this, iparam, pvar);
			}
			public HRESULT Copy(CALLFRAME_COPY copyControl, ICallFrameWalker* pWalker, ICallFrame** ppFrame) mut
			{
				return VT.Copy(&this, copyControl, pWalker, ppFrame);
			}
			public HRESULT Free(ICallFrame* pframeArgsDest, ICallFrameWalker* pWalkerDestFree, ICallFrameWalker* pWalkerCopy, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) mut
			{
				return VT.Free(&this, pframeArgsDest, pWalkerDestFree, pWalkerCopy, freeFlags, pWalkerFree, nullFlags);
			}
			public HRESULT FreeParam(uint32 iparam, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) mut
			{
				return VT.FreeParam(&this, iparam, freeFlags, pWalkerFree, nullFlags);
			}
			public HRESULT WalkFrame(uint32 walkWhat, ICallFrameWalker* pWalker) mut
			{
				return VT.WalkFrame(&this, walkWhat, pWalker);
			}
			public HRESULT GetMarshalSizeMax(CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, uint32* pcbBufferNeeded) mut
			{
				return VT.GetMarshalSizeMax(&this, pmshlContext, mshlflags, pcbBufferNeeded);
			}
			public HRESULT Marshal(CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, void* pBuffer, uint32 cbBuffer, uint32* pcbBufferUsed, uint32* pdataRep, uint32* prpcFlags) mut
			{
				return VT.Marshal(&this, pmshlContext, mshlflags, pBuffer, cbBuffer, pcbBufferUsed, pdataRep, prpcFlags);
			}
			public HRESULT Unmarshal(void* pBuffer, uint32 cbBuffer, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled) mut
			{
				return VT.Unmarshal(&this, pBuffer, cbBuffer, dataRep, pcontext, pcbUnmarshalled);
			}
			public HRESULT ReleaseMarshalData(void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) mut
			{
				return VT.ReleaseMarshalData(&this, pBuffer, cbBuffer, ibFirstRelease, dataRep, pcontext);
			}
			public HRESULT Invoke(void* pvReceiver) mut
			{
				return VT.Invoke(&this, pvReceiver);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallFrame *self, CALLFRAMEINFO* pInfo) GetInfo;
				public new function HRESULT(ICallFrame *self, Guid* pIID, uint32* piMethod) GetIIDAndMethod;
				public new function HRESULT(ICallFrame *self, PWSTR* pwszInterface, PWSTR* pwszMethod) GetNames;
				public new function void*(ICallFrame *self) GetStackLocation;
				public new function void(ICallFrame *self, void* pvStack) SetStackLocation;
				public new function void(ICallFrame *self, HRESULT hr) SetReturnValue;
				public new function HRESULT(ICallFrame *self) GetReturnValue;
				public new function HRESULT(ICallFrame *self, uint32 iparam, CALLFRAMEPARAMINFO* pInfo) GetParamInfo;
				public new function HRESULT(ICallFrame *self, uint32 iparam, VARIANT* pvar) SetParam;
				public new function HRESULT(ICallFrame *self, uint32 iparam, VARIANT* pvar) GetParam;
				public new function HRESULT(ICallFrame *self, CALLFRAME_COPY copyControl, ICallFrameWalker* pWalker, ICallFrame** ppFrame) Copy;
				public new function HRESULT(ICallFrame *self, ICallFrame* pframeArgsDest, ICallFrameWalker* pWalkerDestFree, ICallFrameWalker* pWalkerCopy, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) Free;
				public new function HRESULT(ICallFrame *self, uint32 iparam, uint32 freeFlags, ICallFrameWalker* pWalkerFree, uint32 nullFlags) FreeParam;
				public new function HRESULT(ICallFrame *self, uint32 walkWhat, ICallFrameWalker* pWalker) WalkFrame;
				public new function HRESULT(ICallFrame *self, CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, uint32* pcbBufferNeeded) GetMarshalSizeMax;
				public new function HRESULT(ICallFrame *self, CALLFRAME_MARSHALCONTEXT* pmshlContext, MSHLFLAGS mshlflags, void* pBuffer, uint32 cbBuffer, uint32* pcbBufferUsed, uint32* pdataRep, uint32* prpcFlags) Marshal;
				public new function HRESULT(ICallFrame *self, void* pBuffer, uint32 cbBuffer, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled) Unmarshal;
				public new function HRESULT(ICallFrame *self, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) ReleaseMarshalData;
				public new function HRESULT(ICallFrame *self, void* pvReceiver) Invoke;
			}
		}
		[CRepr]
		public struct ICallIndirect : IUnknown
		{
			public const new Guid IID = .(0xd573b4b1, 0x894e, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CallIndirect(HRESULT* phrReturn, uint32 iMethod, void* pvArgs, uint32* cbArgs) mut
			{
				return VT.CallIndirect(&this, phrReturn, iMethod, pvArgs, cbArgs);
			}
			public HRESULT GetMethodInfo(uint32 iMethod, CALLFRAMEINFO* pInfo, PWSTR* pwszMethod) mut
			{
				return VT.GetMethodInfo(&this, iMethod, pInfo, pwszMethod);
			}
			public HRESULT GetStackSize(uint32 iMethod, uint32* cbArgs) mut
			{
				return VT.GetStackSize(&this, iMethod, cbArgs);
			}
			public HRESULT GetIID(Guid* piid, BOOL* pfDerivesFromIDispatch, uint32* pcMethod, PWSTR* pwszInterface) mut
			{
				return VT.GetIID(&this, piid, pfDerivesFromIDispatch, pcMethod, pwszInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallIndirect *self, HRESULT* phrReturn, uint32 iMethod, void* pvArgs, uint32* cbArgs) CallIndirect;
				public new function HRESULT(ICallIndirect *self, uint32 iMethod, CALLFRAMEINFO* pInfo, PWSTR* pwszMethod) GetMethodInfo;
				public new function HRESULT(ICallIndirect *self, uint32 iMethod, uint32* cbArgs) GetStackSize;
				public new function HRESULT(ICallIndirect *self, Guid* piid, BOOL* pfDerivesFromIDispatch, uint32* pcMethod, PWSTR* pwszInterface) GetIID;
			}
		}
		[CRepr]
		public struct ICallInterceptor : ICallIndirect
		{
			public const new Guid IID = .(0x60c7ca75, 0x896d, 0x11d2, 0xb8, 0xb6, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterSink(ICallFrameEvents* psink) mut
			{
				return VT.RegisterSink(&this, psink);
			}
			public HRESULT GetRegisteredSink(ICallFrameEvents** ppsink) mut
			{
				return VT.GetRegisteredSink(&this, ppsink);
			}
			[CRepr]
			public struct VTable : ICallIndirect.VTable
			{
				public new function HRESULT(ICallInterceptor *self, ICallFrameEvents* psink) RegisterSink;
				public new function HRESULT(ICallInterceptor *self, ICallFrameEvents** ppsink) GetRegisteredSink;
			}
		}
		[CRepr]
		public struct ICallFrameEvents : IUnknown
		{
			public const new Guid IID = .(0xfd5e0843, 0xfc91, 0x11d0, 0x97, 0xd7, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCall(ICallFrame* pFrame) mut
			{
				return VT.OnCall(&this, pFrame);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallFrameEvents *self, ICallFrame* pFrame) OnCall;
			}
		}
		[CRepr]
		public struct ICallUnmarshal : IUnknown
		{
			public const new Guid IID = .(0x5333b003, 0x2e42, 0x11d2, 0xb8, 0x9d, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Unmarshal(uint32 iMethod, void* pBuffer, uint32 cbBuffer, BOOL fForceBufferCopy, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled, ICallFrame** ppFrame) mut
			{
				return VT.Unmarshal(&this, iMethod, pBuffer, cbBuffer, fForceBufferCopy, dataRep, pcontext, pcbUnmarshalled, ppFrame);
			}
			public HRESULT ReleaseMarshalData(uint32 iMethod, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) mut
			{
				return VT.ReleaseMarshalData(&this, iMethod, pBuffer, cbBuffer, ibFirstRelease, dataRep, pcontext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallUnmarshal *self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, BOOL fForceBufferCopy, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext, uint32* pcbUnmarshalled, ICallFrame** ppFrame) Unmarshal;
				public new function HRESULT(ICallUnmarshal *self, uint32 iMethod, void* pBuffer, uint32 cbBuffer, uint32 ibFirstRelease, uint32 dataRep, CALLFRAME_MARSHALCONTEXT* pcontext) ReleaseMarshalData;
			}
		}
		[CRepr]
		public struct ICallFrameWalker : IUnknown
		{
			public const new Guid IID = .(0x08b23919, 0x392d, 0x11d2, 0xb8, 0xa4, 0x00, 0xc0, 0x4f, 0xb9, 0x61, 0x8a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWalkInterface(Guid* iid, void** ppvInterface, BOOL fIn, BOOL fOut) mut
			{
				return VT.OnWalkInterface(&this, iid, ppvInterface, fIn, fOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICallFrameWalker *self, Guid* iid, void** ppvInterface, BOOL fIn, BOOL fOut) OnWalkInterface;
			}
		}
		[CRepr]
		public struct IInterfaceRelated : IUnknown
		{
			public const new Guid IID = .(0xd1fb5a79, 0x7706, 0x11d1, 0xad, 0xba, 0x00, 0xc0, 0x4f, 0xc2, 0xad, 0xc0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIID(Guid* iid) mut
			{
				return VT.SetIID(&this, iid);
			}
			public HRESULT GetIID(Guid* piid) mut
			{
				return VT.GetIID(&this, piid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInterfaceRelated *self, Guid* iid) SetIID;
				public new function HRESULT(IInterfaceRelated *self, Guid* piid) GetIID;
			}
		}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptor(Guid* iidIntercepted, IUnknown* punkOuter, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptorFromTypeInfo(Guid* iidIntercepted, IUnknown* punkOuter, ITypeInfo* typeInfo, Guid* iid, void** ppv);
		
	}
}
