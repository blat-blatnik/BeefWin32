using System;

// namespace Devices.DeviceQuery
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum DEVPROP_OPERATOR : uint32
		{
			MODIFIER_NOT = 65536,
			MODIFIER_IGNORE_CASE = 131072,
			NONE = 0,
			EXISTS = 1,
			NOT_EXISTS = 65537,
			EQUALS = 2,
			NOT_EQUALS = 65538,
			GREATER_THAN = 3,
			LESS_THAN = 4,
			GREATER_THAN_EQUALS = 5,
			LESS_THAN_EQUALS = 6,
			EQUALS_IGNORE_CASE = 131074,
			NOT_EQUALS_IGNORE_CASE = 196610,
			BITWISE_AND = 7,
			BITWISE_OR = 8,
			BEGINS_WITH = 9,
			ENDS_WITH = 10,
			CONTAINS = 11,
			BEGINS_WITH_IGNORE_CASE = 131081,
			ENDS_WITH_IGNORE_CASE = 131082,
			CONTAINS_IGNORE_CASE = 131083,
			LIST_CONTAINS = 4096,
			LIST_ELEMENT_BEGINS_WITH = 8192,
			LIST_ELEMENT_ENDS_WITH = 12288,
			LIST_ELEMENT_CONTAINS = 16384,
			LIST_CONTAINS_IGNORE_CASE = 135168,
			LIST_ELEMENT_BEGINS_WITH_IGNORE_CASE = 139264,
			LIST_ELEMENT_ENDS_WITH_IGNORE_CASE = 143360,
			LIST_ELEMENT_CONTAINS_IGNORE_CASE = 147456,
			AND_OPEN = 1048576,
			AND_CLOSE = 2097152,
			OR_OPEN = 3145728,
			OR_CLOSE = 4194304,
			NOT_OPEN = 5242880,
			NOT_CLOSE = 6291456,
			ARRAY_CONTAINS = 268435456,
			MASK_EVAL = 4095,
			MASK_LIST = 61440,
			MASK_MODIFIER = 983040,
			MASK_NOT_LOGICAL = 4027580415,
			MASK_LOGICAL = 267386880,
			MASK_ARRAY = 4026531840,
		}
		public enum DEV_OBJECT_TYPE : int32
		{
			Unknown = 0,
			DeviceInterface = 1,
			DeviceContainer = 2,
			Device = 3,
			DeviceInterfaceClass = 4,
			AEP = 5,
			AEPContainer = 6,
			DeviceInstallerClass = 7,
			DeviceInterfaceDisplay = 8,
			DeviceContainerDisplay = 9,
			AEPService = 10,
			DevicePanel = 11,
		}
		public enum DEV_QUERY_FLAGS : int32
		{
			None = 0,
			UpdateResults = 1,
			AllProperties = 2,
			Localize = 4,
			AsyncClose = 8,
		}
		public enum DEV_QUERY_STATE : int32
		{
			Initialized = 0,
			EnumCompleted = 1,
			Aborted = 2,
			Closed = 3,
		}
		public enum DEV_QUERY_RESULT_ACTION : int32
		{
			StateChange = 0,
			Add = 1,
			Update = 2,
			Remove = 3,
		}
		
		// --- Function Pointers ---
		
		public function void PDEV_QUERY_RESULT_CALLBACK(ref HDEVQUERY__ hDevQuery, void* pContext, in DEV_QUERY_RESULT_ACTION_DATA pActionData);
		
		// --- Structs ---
		
		[CRepr]
		public struct DEVPROP_FILTER_EXPRESSION
		{
			public DEVPROP_OPERATOR Operator;
			public DEVPROPERTY Property;
		}
		[CRepr]
		public struct DEV_OBJECT
		{
			public DEV_OBJECT_TYPE ObjectType;
			public PWSTR pszObjectId;
			public uint32 cPropertyCount;
			public DEVPROPERTY* pProperties;
		}
		[CRepr]
		public struct DEV_QUERY_RESULT_ACTION_DATA
		{
			public DEV_QUERY_RESULT_ACTION Action;
			public _DEV_QUERY_RESULT_UPDATE_PAYLOAD Data;
			
			[CRepr, Union]
			public struct _DEV_QUERY_RESULT_UPDATE_PAYLOAD
			{
				public DEV_QUERY_STATE State;
				public DEV_OBJECT DeviceObject;
			}
		}
		[CRepr]
		public struct DEV_QUERY_PARAMETER
		{
			public DEVPROPKEY Key;
			public uint32 Type;
			public uint32 BufferSize;
			public void* Buffer;
		}
		[CRepr]
		public struct HDEVQUERY__
		{
			public int32 unused;
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQuery(DEV_OBJECT_TYPE ObjectType, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQueryEx(DEV_OBJECT_TYPE ObjectType, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, uint32 cExtendedParameterCount, DEV_QUERY_PARAMETER* pExtendedParameters, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQueryFromId(DEV_OBJECT_TYPE ObjectType, PWSTR pszObjectId, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQueryFromIdEx(DEV_OBJECT_TYPE ObjectType, PWSTR pszObjectId, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, uint32 cExtendedParameterCount, DEV_QUERY_PARAMETER* pExtendedParameters, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQueryFromIds(DEV_OBJECT_TYPE ObjectType, PWSTR pszzObjectIds, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevCreateObjectQueryFromIdsEx(DEV_OBJECT_TYPE ObjectType, PWSTR pszzObjectIds, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, uint32 cExtendedParameterCount, DEV_QUERY_PARAMETER* pExtendedParameters, PDEV_QUERY_RESULT_CALLBACK pCallback, void* pContext, out HDEVQUERY__* phDevQuery);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DevCloseObjectQuery(ref HDEVQUERY__ hDevQuery);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevGetObjects(DEV_OBJECT_TYPE ObjectType, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, out uint32 pcObjectCount, DEV_OBJECT** ppObjects);
		[Import("api-ms-win-devices-query-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevGetObjectsEx(DEV_OBJECT_TYPE ObjectType, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cFilterExpressionCount, DEVPROP_FILTER_EXPRESSION* pFilter, uint32 cExtendedParameterCount, DEV_QUERY_PARAMETER* pExtendedParameters, out uint32 pcObjectCount, DEV_OBJECT** ppObjects);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DevFreeObjects(uint32 cObjectCount, DEV_OBJECT* pObjects);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevGetObjectProperties(DEV_OBJECT_TYPE ObjectType, PWSTR pszObjectId, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, out uint32 pcPropertyCount, out DEVPROPERTY* ppProperties);
		[Import("api-ms-win-devices-query-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DevGetObjectPropertiesEx(DEV_OBJECT_TYPE ObjectType, PWSTR pszObjectId, uint32 QueryFlags, uint32 cRequestedProperties, DEVPROPCOMPKEY* pRequestedProperties, uint32 cExtendedParameterCount, DEV_QUERY_PARAMETER* pExtendedParameters, out uint32 pcPropertyCount, out DEVPROPERTY* ppProperties);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void DevFreeObjectProperties(uint32 cPropertyCount, DEVPROPERTY* pProperties);
		[Import("api-ms-win-devices-query-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern DEVPROPERTY* DevFindProperty(in DEVPROPKEY pKey, DEVPROPSTORE Store, PWSTR pszLocaleName, uint32 cProperties, DEVPROPERTY* pProperties);
	}
}
