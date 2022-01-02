using System;

// namespace System.Com.Marshal
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum STDMSHLFLAGS : int32
		{
			SERVER = 1,
			HANDLER = 2,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IMarshal : IUnknown
		{
			public const new Guid IID = .(0x00000003, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUnmarshalClass(in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, out Guid pCid) mut => VT.GetUnmarshalClass(ref this, riid, pv, dwDestContext, pvDestContext, mshlflags, out pCid);
			public HRESULT GetMarshalSizeMax(in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, out uint32 pSize) mut => VT.GetMarshalSizeMax(ref this, riid, pv, dwDestContext, pvDestContext, mshlflags, out pSize);
			public HRESULT MarshalInterface(ref IStream pStm, in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags) mut => VT.MarshalInterface(ref this, ref pStm, riid, pv, dwDestContext, pvDestContext, mshlflags);
			public HRESULT UnmarshalInterface(ref IStream pStm, in Guid riid, void** ppv) mut => VT.UnmarshalInterface(ref this, ref pStm, riid, ppv);
			public HRESULT ReleaseMarshalData(ref IStream pStm) mut => VT.ReleaseMarshalData(ref this, ref pStm);
			public HRESULT DisconnectObject(uint32 dwReserved) mut => VT.DisconnectObject(ref this, dwReserved);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, out Guid pCid) GetUnmarshalClass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, out uint32 pSize) GetMarshalSizeMax;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, ref IStream pStm, in Guid riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags) MarshalInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, ref IStream pStm, in Guid riid, void** ppv) UnmarshalInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, ref IStream pStm) ReleaseMarshalData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshal self, uint32 dwReserved) DisconnectObject;
			}
		}
		[CRepr]
		public struct IMarshal2 : IMarshal
		{
			public const new Guid IID = .(0x000001cf, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMarshal.VTable {}
		}
		[CRepr]
		public struct IMarshalingStream : IStream
		{
			public const new Guid IID = .(0xd8f2f5e6, 0x6102, 0x4863, 0x9f, 0x26, 0x38, 0x9a, 0x46, 0x76, 0xef, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMarshalingContextAttribute(CO_MARSHALING_CONTEXT_ATTRIBUTES attribute, out uint pAttributeValue) mut => VT.GetMarshalingContextAttribute(ref this, attribute, out pAttributeValue);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMarshalingStream self, CO_MARSHALING_CONTEXT_ATTRIBUTES attribute, out uint pAttributeValue) GetMarshalingContextAttribute;
			}
		}
		
		// --- Functions ---
		
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BSTR_UserSize(ref uint32 param0, uint32 param1, ref BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserMarshal(ref uint32 param0, out uint8 param1, ref BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserUnmarshal(ref uint32 param0, uint8* param1, out BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BSTR_UserFree(ref uint32 param0, ref BSTR param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HWND_UserSize(ref uint32 param0, uint32 param1, ref HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserMarshal(ref uint32 param0, out uint8 param1, ref HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserUnmarshal(ref uint32 param0, uint8* param1, out HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HWND_UserFree(ref uint32 param0, ref HWND param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VARIANT_UserSize(ref uint32 param0, uint32 param1, ref VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserMarshal(ref uint32 param0, out uint8 param1, ref VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserUnmarshal(ref uint32 param0, uint8* param1, out VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void VARIANT_UserFree(ref uint32 param0, ref VARIANT param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BSTR_UserSize64(ref uint32 param0, uint32 param1, ref BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserMarshal64(ref uint32 param0, out uint8 param1, ref BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserUnmarshal64(ref uint32 param0, uint8* param1, out BSTR param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BSTR_UserFree64(ref uint32 param0, ref BSTR param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HWND_UserSize64(ref uint32 param0, uint32 param1, ref HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserMarshal64(ref uint32 param0, out uint8 param1, ref HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserUnmarshal64(ref uint32 param0, uint8* param1, out HWND param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HWND_UserFree64(ref uint32 param0, ref HWND param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VARIANT_UserSize64(ref uint32 param0, uint32 param1, ref VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserMarshal64(ref uint32 param0, out uint8 param1, ref VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserUnmarshal64(ref uint32 param0, uint8* param1, out VARIANT param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void VARIANT_UserFree64(ref uint32 param0, ref VARIANT param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CLIPFORMAT_UserSize(ref uint32 param0, uint32 param1, ref uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserMarshal(ref uint32 param0, out uint8 param1, ref uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserUnmarshal(ref uint32 param0, uint8* param1, out uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CLIPFORMAT_UserFree(ref uint32 param0, ref uint16 param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HBITMAP_UserSize(ref uint32 param0, uint32 param1, ref HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserMarshal(ref uint32 param0, out uint8 param1, ref HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserUnmarshal(ref uint32 param0, uint8* param1, out HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HBITMAP_UserFree(ref uint32 param0, ref HBITMAP param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HDC_UserSize(ref uint32 param0, uint32 param1, ref HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserMarshal(ref uint32 param0, out uint8 param1, ref HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserUnmarshal(ref uint32 param0, uint8* param1, out HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HDC_UserFree(ref uint32 param0, ref HDC param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HICON_UserSize(ref uint32 param0, uint32 param1, ref HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserMarshal(ref uint32 param0, out uint8 param1, ref HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserUnmarshal(ref uint32 param0, uint8* param1, out HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HICON_UserFree(ref uint32 param0, ref HICON param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SNB_UserSize(ref uint32 param0, uint32 param1, ref uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserMarshal(ref uint32 param0, out uint8 param1, ref uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserUnmarshal(ref uint32 param0, uint8* param1, out uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SNB_UserFree(ref uint32 param0, ref uint16** param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 STGMEDIUM_UserSize(ref uint32 param0, uint32 param1, ref STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserMarshal(ref uint32 param0, out uint8 param1, ref STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserUnmarshal(ref uint32 param0, uint8* param1, out STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void STGMEDIUM_UserFree(ref uint32 param0, ref STGMEDIUM param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CLIPFORMAT_UserSize64(ref uint32 param0, uint32 param1, ref uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserMarshal64(ref uint32 param0, out uint8 param1, ref uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserUnmarshal64(ref uint32 param0, uint8* param1, out uint16 param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CLIPFORMAT_UserFree64(ref uint32 param0, ref uint16 param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HBITMAP_UserSize64(ref uint32 param0, uint32 param1, ref HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserMarshal64(ref uint32 param0, out uint8 param1, ref HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserUnmarshal64(ref uint32 param0, uint8* param1, out HBITMAP param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HBITMAP_UserFree64(ref uint32 param0, ref HBITMAP param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HDC_UserSize64(ref uint32 param0, uint32 param1, ref HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserMarshal64(ref uint32 param0, out uint8 param1, ref HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserUnmarshal64(ref uint32 param0, uint8* param1, out HDC param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HDC_UserFree64(ref uint32 param0, ref HDC param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HICON_UserSize64(ref uint32 param0, uint32 param1, ref HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserMarshal64(ref uint32 param0, out uint8 param1, ref HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserUnmarshal64(ref uint32 param0, uint8* param1, out HICON param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HICON_UserFree64(ref uint32 param0, ref HICON param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SNB_UserSize64(ref uint32 param0, uint32 param1, ref uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserMarshal64(ref uint32 param0, out uint8 param1, ref uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserUnmarshal64(ref uint32 param0, uint8* param1, out uint16** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SNB_UserFree64(ref uint32 param0, ref uint16** param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 STGMEDIUM_UserSize64(ref uint32 param0, uint32 param1, ref STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserMarshal64(ref uint32 param0, out uint8 param1, ref STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserUnmarshal64(ref uint32 param0, uint8* param1, out STGMEDIUM param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void STGMEDIUM_UserFree64(ref uint32 param0, ref STGMEDIUM param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetMarshalSizeMax(out uint32 pulSize, in Guid riid, ref IUnknown pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalInterface(ref IStream pStm, in Guid riid, ref IUnknown pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoUnmarshalInterface(ref IStream pStm, in Guid riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalHresult(ref IStream pstm, HRESULT hresult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoUnmarshalHresult(ref IStream pstm, out HRESULT phresult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoReleaseMarshalData(ref IStream pStm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetStandardMarshal(in Guid riid, ref IUnknown pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, out IMarshal* ppMarshal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetStdMarshalEx(ref IUnknown pUnkOuter, uint32 smexflags, out IUnknown* ppUnkInner);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalInterThreadInterfaceInStream(in Guid riid, ref IUnknown pUnk, out IStream* ppStm);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LPSAFEARRAY_UserSize(ref uint32 param0, uint32 param1, ref SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserMarshal(ref uint32 param0, out uint8 param1, ref SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserUnmarshal(ref uint32 param0, uint8* param1, out SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LPSAFEARRAY_UserFree(ref uint32 param0, ref SAFEARRAY* param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LPSAFEARRAY_UserSize64(ref uint32 param0, uint32 param1, ref SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserMarshal64(ref uint32 param0, out uint8 param1, ref SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserUnmarshal64(ref uint32 param0, uint8* param1, out SAFEARRAY* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LPSAFEARRAY_UserFree64(ref uint32 param0, ref SAFEARRAY* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HACCEL_UserSize(ref uint32 param0, uint32 param1, ref HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserMarshal(ref uint32 param0, out uint8 param1, ref HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserUnmarshal(ref uint32 param0, uint8* param1, out HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HACCEL_UserFree(ref uint32 param0, ref HACCEL param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HGLOBAL_UserSize(ref uint32 param0, uint32 param1, ref int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserMarshal(ref uint32 param0, out uint8 param1, ref int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserUnmarshal(ref uint32 param0, uint8* param1, out int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HGLOBAL_UserFree(ref uint32 param0, ref int param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMENU_UserSize(ref uint32 param0, uint32 param1, ref HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserMarshal(ref uint32 param0, out uint8 param1, ref HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserUnmarshal(ref uint32 param0, uint8* param1, out HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMENU_UserFree(ref uint32 param0, ref HMENU param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HACCEL_UserSize64(ref uint32 param0, uint32 param1, ref HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserMarshal64(ref uint32 param0, out uint8 param1, ref HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserUnmarshal64(ref uint32 param0, uint8* param1, out HACCEL param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HACCEL_UserFree64(ref uint32 param0, ref HACCEL param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HGLOBAL_UserSize64(ref uint32 param0, uint32 param1, ref int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserMarshal64(ref uint32 param0, out uint8 param1, ref int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserUnmarshal64(ref uint32 param0, uint8* param1, out int param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HGLOBAL_UserFree64(ref uint32 param0, ref int param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMENU_UserSize64(ref uint32 param0, uint32 param1, ref HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserMarshal64(ref uint32 param0, out uint8 param1, ref HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserUnmarshal64(ref uint32 param0, uint8* param1, out HMENU param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMENU_UserFree64(ref uint32 param0, ref HMENU param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HPALETTE_UserSize(ref uint32 param0, uint32 param1, ref HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserMarshal(ref uint32 param0, out uint8 param1, ref HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserUnmarshal(ref uint32 param0, uint8* param1, out HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HPALETTE_UserFree(ref uint32 param0, ref HPALETTE param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HPALETTE_UserSize64(ref uint32 param0, uint32 param1, ref HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserMarshal64(ref uint32 param0, out uint8 param1, ref HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserUnmarshal64(ref uint32 param0, uint8* param1, out HPALETTE param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HPALETTE_UserFree64(ref uint32 param0, ref HPALETTE param1);
	}
}
