using System;

// namespace Security.ConfigurationSnapin
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid cNodetypeSceTemplateServices = .(0x24a7f717, 0x1f0c, 0x11d1, 0xaf, 0xfb, 0x00, 0xc0, 0x4f, 0xb9, 0x84, 0xf9);
		public const Guid cNodetypeSceAnalysisServices = .(0x678050c7, 0x1ff8, 0x11d1, 0xaf, 0xfb, 0x00, 0xc0, 0x4f, 0xb9, 0x84, 0xf9);
		public const Guid cNodetypeSceEventLog = .(0x2ce06698, 0x4bf3, 0x11d1, 0x8c, 0x30, 0x00, 0xc0, 0x4f, 0xb9, 0x84, 0xf9);
		public const int32 SCESTATUS_SUCCESS = 0;
		public const int32 SCESTATUS_INVALID_PARAMETER = 1;
		public const int32 SCESTATUS_RECORD_NOT_FOUND = 2;
		public const int32 SCESTATUS_INVALID_DATA = 3;
		public const int32 SCESTATUS_OBJECT_EXIST = 4;
		public const int32 SCESTATUS_BUFFER_TOO_SMALL = 5;
		public const int32 SCESTATUS_PROFILE_NOT_FOUND = 6;
		public const int32 SCESTATUS_BAD_FORMAT = 7;
		public const int32 SCESTATUS_NOT_ENOUGH_RESOURCE = 8;
		public const int32 SCESTATUS_ACCESS_DENIED = 9;
		public const int32 SCESTATUS_CANT_DELETE = 10;
		public const int32 SCESTATUS_PREFIX_OVERFLOW = 11;
		public const int32 SCESTATUS_OTHER_ERROR = 12;
		public const int32 SCESTATUS_ALREADY_RUNNING = 13;
		public const int32 SCESTATUS_SERVICE_NOT_SUPPORT = 14;
		public const int32 SCESTATUS_MOD_NOT_FOUND = 15;
		public const int32 SCESTATUS_EXCEPTION_IN_SERVER = 16;
		public const int32 SCESTATUS_NO_TEMPLATE_GIVEN = 17;
		public const int32 SCESTATUS_NO_MAPPING = 18;
		public const int32 SCESTATUS_TRUST_FAIL = 19;
		public const int32 SCESVC_ENUMERATION_MAX = 100;
		
		// --- Enums ---
		
		public enum SCE_LOG_ERR_LEVEL : uint32
		{
			ALWAYS = 0,
			ERROR = 1,
			DETAIL = 2,
			DEBUG = 3,
		}
		public enum SCESVC_INFO_TYPE : int32
		{
			ConfigurationInfo = 0,
			MergedPolicyInfo = 1,
			AnalysisInfo = 2,
			InternalUse = 3,
		}
		
		// --- Function Pointers ---
		
		public function uint32 PFSCE_QUERY_INFO(void* sceHandle, SCESVC_INFO_TYPE sceType, out int8 lpPrefix, BOOL bExact, void** ppvInfo, out uint32 psceEnumHandle);
		public function uint32 PFSCE_SET_INFO(void* sceHandle, SCESVC_INFO_TYPE sceType, out int8 lpPrefix, BOOL bExact, void* pvInfo);
		public function uint32 PFSCE_FREE_INFO(void* pvServiceInfo);
		public function uint32 PFSCE_LOG_INFO(SCE_LOG_ERR_LEVEL ErrLevel, uint32 Win32rc, out int8 pErrFmt);
		public function uint32 PF_ConfigAnalyzeService(out SCESVC_CALLBACK_INFO pSceCbInfo);
		public function uint32 PF_UpdateService(out SCESVC_CALLBACK_INFO pSceCbInfo, out SCESVC_CONFIGURATION_INFO ServiceInfo);
		
		// --- Structs ---
		
		[CRepr]
		public struct SCESVC_CONFIGURATION_LINE
		{
			public int8* Key;
			public int8* Value;
			public uint32 ValueLen;
		}
		[CRepr]
		public struct SCESVC_CONFIGURATION_INFO
		{
			public uint32 Count;
			public SCESVC_CONFIGURATION_LINE* Lines;
		}
		[CRepr]
		public struct SCESVC_ANALYSIS_LINE
		{
			public int8* Key;
			public uint8* Value;
			public uint32 ValueLen;
		}
		[CRepr]
		public struct SCESVC_ANALYSIS_INFO
		{
			public uint32 Count;
			public SCESVC_ANALYSIS_LINE* Lines;
		}
		[CRepr]
		public struct SCESVC_CALLBACK_INFO
		{
			public void* sceHandle;
			public PFSCE_QUERY_INFO pfQueryInfo;
			public PFSCE_SET_INFO pfSetInfo;
			public PFSCE_FREE_INFO pfFreeInfo;
			public PFSCE_LOG_INFO pfLogInfo;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISceSvcAttachmentPersistInfo : IUnknown
		{
			public const new Guid IID = .(0x6d90e0d0, 0x200d, 0x11d1, 0xaf, 0xfb, 0x00, 0xc0, 0x4f, 0xb9, 0x84, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Save(out int8 lpTemplateName, void** scesvcHandle, void** ppvData, out BOOL pbOverwriteAll) mut => VT.Save(ref this, out lpTemplateName, scesvcHandle, ppvData, out pbOverwriteAll);
			public HRESULT IsDirty(out int8 lpTemplateName) mut => VT.IsDirty(ref this, out lpTemplateName);
			public HRESULT FreeBuffer(void* pvData) mut => VT.FreeBuffer(ref this, pvData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentPersistInfo self, out int8 lpTemplateName, void** scesvcHandle, void** ppvData, out BOOL pbOverwriteAll) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentPersistInfo self, out int8 lpTemplateName) IsDirty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentPersistInfo self, void* pvData) FreeBuffer;
			}
		}
		[CRepr]
		public struct ISceSvcAttachmentData : IUnknown
		{
			public const new Guid IID = .(0x17c35fde, 0x200d, 0x11d1, 0xaf, 0xfb, 0x00, 0xc0, 0x4f, 0xb9, 0x84, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetData(void* scesvcHandle, SCESVC_INFO_TYPE sceType, void** ppvData, out uint32 psceEnumHandle) mut => VT.GetData(ref this, scesvcHandle, sceType, ppvData, out psceEnumHandle);
			public HRESULT Initialize(out int8 lpServiceName, out int8 lpTemplateName, ref ISceSvcAttachmentPersistInfo lpSceSvcPersistInfo, void** pscesvcHandle) mut => VT.Initialize(ref this, out lpServiceName, out lpTemplateName, ref lpSceSvcPersistInfo, pscesvcHandle);
			public HRESULT FreeBuffer(void* pvData) mut => VT.FreeBuffer(ref this, pvData);
			public HRESULT CloseHandle(void* scesvcHandle) mut => VT.CloseHandle(ref this, scesvcHandle);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentData self, void* scesvcHandle, SCESVC_INFO_TYPE sceType, void** ppvData, out uint32 psceEnumHandle) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentData self, out int8 lpServiceName, out int8 lpTemplateName, ref ISceSvcAttachmentPersistInfo lpSceSvcPersistInfo, void** pscesvcHandle) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentData self, void* pvData) FreeBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISceSvcAttachmentData self, void* scesvcHandle) CloseHandle;
			}
		}
		
	}
}
