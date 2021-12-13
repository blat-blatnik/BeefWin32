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
			public IUnknown punkReserved;
			public Guid guidTransferSyntax;
		}
		
		// --- COM Interfaces ---
		
		public struct ICallFrame {}
		public struct ICallIndirect {}
		public struct ICallInterceptor {}
		public struct ICallFrameEvents {}
		public struct ICallUnmarshal {}
		public struct ICallFrameWalker {}
		public struct IInterfaceRelated {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptor(Guid* iidIntercepted, IUnknown punkOuter, Guid* iid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetInterceptorFromTypeInfo(Guid* iidIntercepted, IUnknown punkOuter, ITypeInfo typeInfo, Guid* iid, void** ppv);
		
	}
}
