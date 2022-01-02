using System;

// namespace System.Js
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint64 JS_SOURCE_CONTEXT_NONE = 18446744073709551615uL;
		
		// --- Enums ---
		
		public enum JsRuntimeVersion : int32
		{
			Version10 = 0,
			Version11 = 1,
			VersionEdge = -1,
		}
		public enum JsErrorCode : uint32
		{
			NoError = 0,
			ErrorCategoryUsage = 65536,
			ErrorInvalidArgument = 65537,
			ErrorNullArgument = 65538,
			ErrorNoCurrentContext = 65539,
			ErrorInExceptionState = 65540,
			ErrorNotImplemented = 65541,
			ErrorWrongThread = 65542,
			ErrorRuntimeInUse = 65543,
			ErrorBadSerializedScript = 65544,
			ErrorInDisabledState = 65545,
			ErrorCannotDisableExecution = 65546,
			ErrorHeapEnumInProgress = 65547,
			ErrorArgumentNotObject = 65548,
			ErrorInProfileCallback = 65549,
			ErrorInThreadServiceCallback = 65550,
			ErrorCannotSerializeDebugScript = 65551,
			ErrorAlreadyDebuggingContext = 65552,
			ErrorAlreadyProfilingContext = 65553,
			ErrorIdleNotEnabled = 65554,
			ErrorCategoryEngine = 131072,
			ErrorOutOfMemory = 131073,
			ErrorCategoryScript = 196608,
			ErrorScriptException = 196609,
			ErrorScriptCompile = 196610,
			ErrorScriptTerminated = 196611,
			ErrorScriptEvalDisabled = 196612,
			ErrorCategoryFatal = 262144,
			ErrorFatal = 262145,
		}
		public enum JsRuntimeAttributes : int32
		{
			None = 0,
			DisableBackgroundWork = 1,
			AllowScriptInterrupt = 2,
			EnableIdleProcessing = 4,
			DisableNativeCodeGeneration = 8,
			DisableEval = 16,
		}
		public enum JsMemoryEventType : int32
		{
			Allocate = 0,
			Free = 1,
			Failure = 2,
		}
		public enum JsValueType : int32
		{
			Undefined = 0,
			Null = 1,
			Number = 2,
			String = 3,
			Boolean = 4,
			Object = 5,
			Function = 6,
			Error = 7,
			Array = 8,
		}
		
		// --- Function Pointers ---
		
		public function Boolean JsMemoryAllocationCallback(void* callbackState, JsMemoryEventType allocationEvent, uint allocationSize);
		public function void JsBeforeCollectCallback(void* callbackState);
		public function void JsBackgroundWorkItemCallback(void* callbackState);
		public function Boolean JsThreadServiceCallback(JsBackgroundWorkItemCallback callback, void* callbackState);
		public function void JsFinalizeCallback(void* data);
		public function void* JsNativeFunction(void* callee, Boolean isConstructCall, void** arguments, uint16 argumentCount, void* callbackState);
		
		// --- Functions ---
		
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateRuntime(JsRuntimeAttributes attributes, JsRuntimeVersion runtimeVersion, JsThreadServiceCallback threadService, void** runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCollectGarbage(void* runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDisposeRuntime(void* runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetRuntimeMemoryUsage(void* runtime, out uint memoryUsage);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetRuntimeMemoryLimit(void* runtime, out uint memoryLimit);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetRuntimeMemoryLimit(void* runtime, uint memoryLimit);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetRuntimeMemoryAllocationCallback(void* runtime, void* callbackState, JsMemoryAllocationCallback allocationCallback);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetRuntimeBeforeCollectCallback(void* runtime, void* callbackState, JsBeforeCollectCallback beforeCollectCallback);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsAddRef(void* @ref, uint32* count);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsRelease(void* @ref, uint32* count);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateContext(void* runtime, ref IDebugApplication64 debugApplication, void** newContext);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetCurrentContext(void** currentContext);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetCurrentContext(void* context);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetRuntime(void* context, void** runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsStartDebugging(ref IDebugApplication64 debugApplication);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsIdle(uint32* nextIdleTick);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsParseScript(PWSTR script, uint sourceContext, PWSTR sourceUrl, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsRunScript(PWSTR script, uint sourceContext, PWSTR sourceUrl, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSerializeScript(PWSTR script, uint8* buffer, out uint32 bufferSize);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsParseSerializedScript(PWSTR script, ref uint8 buffer, uint sourceContext, PWSTR sourceUrl, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsRunSerializedScript(PWSTR script, ref uint8 buffer, uint sourceContext, PWSTR sourceUrl, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetPropertyIdFromName(PWSTR name, void** propertyId);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetPropertyNameFromId(void* propertyId, out uint16* name);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetUndefinedValue(void** undefinedValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetNullValue(void** nullValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetTrueValue(void** trueValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetFalseValue(void** falseValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsBoolToBoolean(uint8 value, void** booleanValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsBooleanToBool(void* value, out Boolean boolValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsConvertValueToBoolean(void* value, void** booleanValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetValueType(void* value, out JsValueType type);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDoubleToNumber(double doubleValue, void** value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsIntToNumber(int32 intValue, void** value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsNumberToDouble(void* value, out double doubleValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsConvertValueToNumber(void* value, void** numberValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetStringLength(void* stringValue, out int32 length);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsPointerToString(char16* stringValue, uint stringLength, void** value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsStringToPointer(void* value, out uint16* stringValue, out uint stringLength);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsConvertValueToString(void* value, void** stringValue);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsVariantToValue(ref VARIANT variant, void** value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsValueToVariant(void* object, out VARIANT variant);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetGlobalObject(void** globalObject);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateObject(void** object);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateExternalObject(void* data, JsFinalizeCallback finalizeCallback, void** object);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsConvertValueToObject(void* value, void** object);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetPrototype(void* object, void** prototypeObject);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetPrototype(void* object, void* prototypeObject);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetExtensionAllowed(void* object, out Boolean value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsPreventExtension(void* object);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetProperty(void* object, void* propertyId, void** value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetOwnPropertyDescriptor(void* object, void* propertyId, void** propertyDescriptor);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetOwnPropertyNames(void* object, void** propertyNames);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetProperty(void* object, void* propertyId, void* value, uint8 useStrictRules);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsHasProperty(void* object, void* propertyId, out Boolean hasProperty);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDeleteProperty(void* object, void* propertyId, uint8 useStrictRules, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDefineProperty(void* object, void* propertyId, void* propertyDescriptor, out Boolean result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsHasIndexedProperty(void* object, void* index, out Boolean result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetIndexedProperty(void* object, void* index, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetIndexedProperty(void* object, void* index, void* value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDeleteIndexedProperty(void* object, void* index);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsEquals(void* object1, void* object2, out Boolean result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsStrictEquals(void* object1, void* object2, out Boolean result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsHasExternalData(void* object, out Boolean value);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetExternalData(void* object, void** externalData);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetExternalData(void* object, void* externalData);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateArray(uint32 length, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCallFunction(void* @function, void** arguments, uint16 argumentCount, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsConstructObject(void* @function, void** arguments, uint16 argumentCount, void** result);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateFunction(JsNativeFunction nativeFunction, void* callbackState, void** @function);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateRangeError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateReferenceError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateSyntaxError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateTypeError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsCreateURIError(void* message, void** error);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsHasException(out Boolean hasException);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsGetAndClearException(void** exception);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsSetException(void* exception);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsDisableRuntimeExecution(void* runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsEnableRuntimeExecution(void* runtime);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsIsRuntimeExecutionDisabled(void* runtime, out Boolean isDisabled);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsStartProfiling(ref IActiveScriptProfilerCallback callback, PROFILER_EVENT_MASK eventMask, uint32 context);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsStopProfiling(HRESULT reason);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsEnumerateHeap(out IActiveScriptProfilerHeapEnum* enumerator);
		[Import("chakra.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern JsErrorCode JsIsEnumeratingHeap(out Boolean isEnumeratingHeap);
	}
}
