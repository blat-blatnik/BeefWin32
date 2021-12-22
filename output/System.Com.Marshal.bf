using System;

// namespace System.Com.Marshal
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
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
			
			public HRESULT GetUnmarshalClass(Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, Guid* pCid) mut
			{
				return VT.GetUnmarshalClass(&this, riid, pv, dwDestContext, pvDestContext, mshlflags, pCid);
			}
			public HRESULT GetMarshalSizeMax(Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, uint32* pSize) mut
			{
				return VT.GetMarshalSizeMax(&this, riid, pv, dwDestContext, pvDestContext, mshlflags, pSize);
			}
			public HRESULT MarshalInterface(IStream* pStm, Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags) mut
			{
				return VT.MarshalInterface(&this, pStm, riid, pv, dwDestContext, pvDestContext, mshlflags);
			}
			public HRESULT UnmarshalInterface(IStream* pStm, Guid* riid, void** ppv) mut
			{
				return VT.UnmarshalInterface(&this, pStm, riid, ppv);
			}
			public HRESULT ReleaseMarshalData(IStream* pStm) mut
			{
				return VT.ReleaseMarshalData(&this, pStm);
			}
			public HRESULT DisconnectObject(uint32 dwReserved) mut
			{
				return VT.DisconnectObject(&this, dwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMarshal *self, Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, Guid* pCid) GetUnmarshalClass;
				public new function HRESULT(IMarshal *self, Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, uint32* pSize) GetMarshalSizeMax;
				public new function HRESULT(IMarshal *self, IStream* pStm, Guid* riid, void* pv, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags) MarshalInterface;
				public new function HRESULT(IMarshal *self, IStream* pStm, Guid* riid, void** ppv) UnmarshalInterface;
				public new function HRESULT(IMarshal *self, IStream* pStm) ReleaseMarshalData;
				public new function HRESULT(IMarshal *self, uint32 dwReserved) DisconnectObject;
			}
		}
		[CRepr]
		public struct IMarshal2 : IMarshal
		{
			public const new Guid IID = .(0x000001cf, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IMarshal.VTable
			{
			}
		}
		[CRepr]
		public struct IMarshalingStream : IStream
		{
			public const new Guid IID = .(0xd8f2f5e6, 0x6102, 0x4863, 0x9f, 0x26, 0x38, 0x9a, 0x46, 0x76, 0xef, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMarshalingContextAttribute(CO_MARSHALING_CONTEXT_ATTRIBUTES attribute, uint* pAttributeValue) mut
			{
				return VT.GetMarshalingContextAttribute(&this, attribute, pAttributeValue);
			}
			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function HRESULT(IMarshalingStream *self, CO_MARSHALING_CONTEXT_ATTRIBUTES attribute, uint* pAttributeValue) GetMarshalingContextAttribute;
			}
		}
		
		// --- Functions ---
		
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BSTR_UserSize(uint32* param0, uint32 param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserMarshal(uint32* param0, uint8* param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserUnmarshal(uint32* param0, uint8* param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BSTR_UserFree(uint32* param0, BSTR* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HWND_UserSize(uint32* param0, uint32 param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserMarshal(uint32* param0, uint8* param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserUnmarshal(uint32* param0, uint8* param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HWND_UserFree(uint32* param0, HWND* param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VARIANT_UserSize(uint32* param0, uint32 param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserMarshal(uint32* param0, uint8* param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserUnmarshal(uint32* param0, uint8* param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void VARIANT_UserFree(uint32* param0, VARIANT* param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 BSTR_UserSize64(uint32* param0, uint32 param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserMarshal64(uint32* param0, uint8* param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* BSTR_UserUnmarshal64(uint32* param0, uint8* param1, BSTR* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void BSTR_UserFree64(uint32* param0, BSTR* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HWND_UserSize64(uint32* param0, uint32 param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserMarshal64(uint32* param0, uint8* param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HWND_UserUnmarshal64(uint32* param0, uint8* param1, HWND* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HWND_UserFree64(uint32* param0, HWND* param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 VARIANT_UserSize64(uint32* param0, uint32 param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserMarshal64(uint32* param0, uint8* param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* VARIANT_UserUnmarshal64(uint32* param0, uint8* param1, VARIANT* param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void VARIANT_UserFree64(uint32* param0, VARIANT* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CLIPFORMAT_UserSize(uint32* param0, uint32 param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserMarshal(uint32* param0, uint8* param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserUnmarshal(uint32* param0, uint8* param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CLIPFORMAT_UserFree(uint32* param0, uint16* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HBITMAP_UserSize(uint32* param0, uint32 param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserMarshal(uint32* param0, uint8* param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserUnmarshal(uint32* param0, uint8* param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HBITMAP_UserFree(uint32* param0, HBITMAP* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HDC_UserSize(uint32* param0, uint32 param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserMarshal(uint32* param0, uint8* param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserUnmarshal(uint32* param0, uint8* param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HDC_UserFree(uint32* param0, HDC* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HICON_UserSize(uint32* param0, uint32 param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserMarshal(uint32* param0, uint8* param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserUnmarshal(uint32* param0, uint8* param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HICON_UserFree(uint32* param0, HICON* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SNB_UserSize(uint32* param0, uint32 param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserMarshal(uint32* param0, uint8* param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserUnmarshal(uint32* param0, uint8* param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SNB_UserFree(uint32* param0, uint16*** param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 STGMEDIUM_UserSize(uint32* param0, uint32 param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserMarshal(uint32* param0, uint8* param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserUnmarshal(uint32* param0, uint8* param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void STGMEDIUM_UserFree(uint32* param0, STGMEDIUM* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CLIPFORMAT_UserSize64(uint32* param0, uint32 param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserMarshal64(uint32* param0, uint8* param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* CLIPFORMAT_UserUnmarshal64(uint32* param0, uint8* param1, uint16* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void CLIPFORMAT_UserFree64(uint32* param0, uint16* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HBITMAP_UserSize64(uint32* param0, uint32 param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserMarshal64(uint32* param0, uint8* param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HBITMAP_UserUnmarshal64(uint32* param0, uint8* param1, HBITMAP* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HBITMAP_UserFree64(uint32* param0, HBITMAP* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HDC_UserSize64(uint32* param0, uint32 param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserMarshal64(uint32* param0, uint8* param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HDC_UserUnmarshal64(uint32* param0, uint8* param1, HDC* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HDC_UserFree64(uint32* param0, HDC* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HICON_UserSize64(uint32* param0, uint32 param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserMarshal64(uint32* param0, uint8* param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HICON_UserUnmarshal64(uint32* param0, uint8* param1, HICON* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HICON_UserFree64(uint32* param0, HICON* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SNB_UserSize64(uint32* param0, uint32 param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserMarshal64(uint32* param0, uint8* param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* SNB_UserUnmarshal64(uint32* param0, uint8* param1, uint16*** param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SNB_UserFree64(uint32* param0, uint16*** param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 STGMEDIUM_UserSize64(uint32* param0, uint32 param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserMarshal64(uint32* param0, uint8* param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* STGMEDIUM_UserUnmarshal64(uint32* param0, uint8* param1, STGMEDIUM* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void STGMEDIUM_UserFree64(uint32* param0, STGMEDIUM* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetMarshalSizeMax(uint32* pulSize, Guid* riid, IUnknown* pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalInterface(IStream* pStm, Guid* riid, IUnknown* pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoUnmarshalInterface(IStream* pStm, Guid* riid, void** ppv);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalHresult(IStream* pstm, HRESULT hresult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoUnmarshalHresult(IStream* pstm, HRESULT* phresult);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoReleaseMarshalData(IStream* pStm);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetStandardMarshal(Guid* riid, IUnknown* pUnk, uint32 dwDestContext, void* pvDestContext, uint32 mshlflags, IMarshal** ppMarshal);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoGetStdMarshalEx(IUnknown* pUnkOuter, uint32 smexflags, IUnknown** ppUnkInner);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoMarshalInterThreadInterfaceInStream(Guid* riid, IUnknown* pUnk, IStream** ppStm);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LPSAFEARRAY_UserSize(uint32* param0, uint32 param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserMarshal(uint32* param0, uint8* param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserUnmarshal(uint32* param0, uint8* param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LPSAFEARRAY_UserFree(uint32* param0, SAFEARRAY** param1);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LPSAFEARRAY_UserSize64(uint32* param0, uint32 param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserMarshal64(uint32* param0, uint8* param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* LPSAFEARRAY_UserUnmarshal64(uint32* param0, uint8* param1, SAFEARRAY** param2);
		[Import("oleaut32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void LPSAFEARRAY_UserFree64(uint32* param0, SAFEARRAY** param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HACCEL_UserSize(uint32* param0, uint32 param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserMarshal(uint32* param0, uint8* param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserUnmarshal(uint32* param0, uint8* param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HACCEL_UserFree(uint32* param0, HACCEL* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HGLOBAL_UserSize(uint32* param0, uint32 param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserMarshal(uint32* param0, uint8* param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserUnmarshal(uint32* param0, uint8* param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HGLOBAL_UserFree(uint32* param0, int* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMENU_UserSize(uint32* param0, uint32 param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserMarshal(uint32* param0, uint8* param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserUnmarshal(uint32* param0, uint8* param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMENU_UserFree(uint32* param0, HMENU* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HACCEL_UserSize64(uint32* param0, uint32 param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserMarshal64(uint32* param0, uint8* param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HACCEL_UserUnmarshal64(uint32* param0, uint8* param1, HACCEL* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HACCEL_UserFree64(uint32* param0, HACCEL* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HGLOBAL_UserSize64(uint32* param0, uint32 param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserMarshal64(uint32* param0, uint8* param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HGLOBAL_UserUnmarshal64(uint32* param0, uint8* param1, int* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HGLOBAL_UserFree64(uint32* param0, int* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMENU_UserSize64(uint32* param0, uint32 param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserMarshal64(uint32* param0, uint8* param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMENU_UserUnmarshal64(uint32* param0, uint8* param1, HMENU* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMENU_UserFree64(uint32* param0, HMENU* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HPALETTE_UserSize(uint32* param0, uint32 param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserMarshal(uint32* param0, uint8* param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserUnmarshal(uint32* param0, uint8* param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HPALETTE_UserFree(uint32* param0, HPALETTE* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HPALETTE_UserSize64(uint32* param0, uint32 param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserMarshal64(uint32* param0, uint8* param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HPALETTE_UserUnmarshal64(uint32* param0, uint8* param1, HPALETTE* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HPALETTE_UserFree64(uint32* param0, HPALETTE* param1);
		
	}
}
