using System;

// namespace System.WinRT
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MAX_ERROR_MESSAGE_CHARS = 512;
		public const String CastingSourceInfo_Property_PreferredSourceUriScheme = "PreferredSourceUriScheme";
		public const String CastingSourceInfo_Property_CastingTypes = "CastingTypes";
		public const String CastingSourceInfo_Property_ProtectedMedia = "ProtectedMedia";
		
		// --- Typedefs ---
		
		public typealias HSTRING = int;
		public typealias HSTRING_BUFFER = int;
		public typealias ROPARAMIIDHANDLE = int;
		public typealias APARTMENT_SHUTDOWN_REGISTRATION_COOKIE = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum ACTIVATIONTYPE : int32
		{
			ACTIVATIONTYPE_UNCATEGORIZED = 0,
			ACTIVATIONTYPE_FROM_MONIKER = 1,
			ACTIVATIONTYPE_FROM_DATA = 2,
			ACTIVATIONTYPE_FROM_STORAGE = 4,
			ACTIVATIONTYPE_FROM_STREAM = 8,
			ACTIVATIONTYPE_FROM_FILE = 16,
		}
		[AllowDuplicates]
		public enum AgileReferenceOptions : int32
		{
			AGILEREFERENCE_DEFAULT = 0,
			AGILEREFERENCE_DELAYEDMARSHAL = 1,
		}
		[AllowDuplicates]
		public enum TrustLevel : int32
		{
			BaseTrust = 0,
			PartialTrust = 1,
			FullTrust = 2,
		}
		[AllowDuplicates]
		public enum DISPATCHERQUEUE_THREAD_APARTMENTTYPE : int32
		{
			DQTAT_COM_NONE = 0,
			DQTAT_COM_ASTA = 1,
			DQTAT_COM_STA = 2,
		}
		[AllowDuplicates]
		public enum DISPATCHERQUEUE_THREAD_TYPE : int32
		{
			DQTYPE_THREAD_DEDICATED = 1,
			DQTYPE_THREAD_CURRENT = 2,
		}
		[AllowDuplicates]
		public enum CASTING_CONNECTION_ERROR_STATUS : int32
		{
			CASTING_CONNECTION_ERROR_STATUS_SUCCEEDED = 0,
			CASTING_CONNECTION_ERROR_STATUS_DEVICE_DID_NOT_RESPOND = 1,
			CASTING_CONNECTION_ERROR_STATUS_DEVICE_ERROR = 2,
			CASTING_CONNECTION_ERROR_STATUS_DEVICE_LOCKED = 3,
			CASTING_CONNECTION_ERROR_STATUS_PROTECTED_PLAYBACK_FAILED = 4,
			CASTING_CONNECTION_ERROR_STATUS_INVALID_CASTING_SOURCE = 5,
			CASTING_CONNECTION_ERROR_STATUS_UNKNOWN = 6,
		}
		[AllowDuplicates]
		public enum CASTING_CONNECTION_STATE : int32
		{
			CASTING_CONNECTION_STATE_DISCONNECTED = 0,
			CASTING_CONNECTION_STATE_CONNECTED = 1,
			CASTING_CONNECTION_STATE_RENDERING = 2,
			CASTING_CONNECTION_STATE_DISCONNECTING = 3,
			CASTING_CONNECTION_STATE_CONNECTING = 4,
		}
		[AllowDuplicates]
		public enum RO_INIT_TYPE : int32
		{
			RO_INIT_SINGLETHREADED = 0,
			RO_INIT_MULTITHREADED = 1,
		}
		[AllowDuplicates]
		public enum RO_ERROR_REPORTING_FLAGS : uint32
		{
			RO_ERROR_REPORTING_NONE = 0,
			RO_ERROR_REPORTING_SUPPRESSEXCEPTIONS = 1,
			RO_ERROR_REPORTING_FORCEEXCEPTIONS = 2,
			RO_ERROR_REPORTING_USESETERRORINFO = 4,
			RO_ERROR_REPORTING_SUPPRESSSETERRORINFO = 8,
		}
		[AllowDuplicates]
		public enum BSOS_OPTIONS : int32
		{
			BSOS_DEFAULT = 0,
			BSOS_PREFERDESTINATIONSTREAM = 1,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT PINSPECT_HSTRING_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		public function HRESULT PINSPECT_HSTRING_CALLBACK2(void* context, uint64 readAddress, uint32 length, uint8* buffer);
		public function HRESULT PINSPECT_MEMORY_CALLBACK(void* context, uint readAddress, uint32 length, uint8* buffer);
		
		// --- Structs ---
		
		[CRepr]
		public struct EventRegistrationToken
		{
			public int64 value;
		}
		[CRepr]
		public struct ServerInformation
		{
			public uint32 dwServerPid;
			public uint32 dwServerTid;
			public uint64 ui64ServerAddress;
		}
		[CRepr]
		public struct HSTRING_HEADER
		{
			public _Reserved_e__Union Reserved;
			
			[CRepr, Union]
			public struct _Reserved_e__Union
			{
				public void* Reserved1;
				public CHAR[24] Reserved2;
			}
		}
		[CRepr]
		public struct DispatcherQueueOptions
		{
			public uint32 dwSize;
			public DISPATCHERQUEUE_THREAD_TYPE threadType;
			public DISPATCHERQUEUE_THREAD_APARTMENTTYPE apartmentType;
		}
		[CRepr]
		public struct _RO_REGISTRATION_COOKIE
		{
		}
		
		// --- COM Interfaces ---
		
		public struct IAgileReference {}
		public struct IApartmentShutdown {}
		public struct ISpatialInteractionManagerInterop {}
		public struct IHolographicSpaceInterop {}
		public struct IInspectable {}
		public struct IAccountsSettingsPaneInterop {}
		public struct IAppServiceConnectionExtendedExecution {}
		public struct ICorrelationVectorSource {}
		public struct ICastingEventHandler {}
		public struct ICastingController {}
		public struct ICastingSourceInfo {}
		public struct IDragDropManagerInterop {}
		public struct IInputPaneInterop {}
		public struct IPlayToManagerInterop {}
		public struct ICorrelationVectorInformation {}
		public struct IUIViewSettingsInterop {}
		public struct IUserActivityInterop {}
		public struct IUserActivitySourceHostInterop {}
		public struct IUserActivityRequestManagerInterop {}
		public struct IUserConsentVerifierInterop {}
		public struct IWebAuthenticationCoreManagerInterop {}
		public struct IRestrictedErrorInfo {}
		public struct ILanguageExceptionErrorInfo {}
		public struct ILanguageExceptionTransform {}
		public struct ILanguageExceptionStackBackTrace {}
		public struct ILanguageExceptionErrorInfo2 {}
		public struct IActivationFactory {}
		public struct IBufferByteAccess {}
		public struct IRoSimpleMetaDataBuilder {}
		public struct IRoMetaDataLocator {}
		public struct IMemoryBufferByteAccess {}
		public struct IWeakReference {}
		public struct IWeakReferenceSource {}
		public struct ISystemMediaTransportControlsInterop {}
		public struct IShareWindowCommandEventArgsInterop {}
		public struct IShareWindowCommandSourceInterop {}
		public struct IMessageDispatcher {}
		
		// --- Functions ---
		
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CoDecodeProxy(uint32 dwClientPid, uint64 ui64ProxyAddress, ServerInformation* pServerInformation);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetAgileReference(AgileReferenceOptions options, Guid* riid, IUnknown pUnk, IAgileReference* ppAgileReference);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize(uint32* param0, uint32 param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree(uint32* param0, HSTRING* param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HSTRING_UserSize64(uint32* param0, uint32 param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserMarshal64(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HSTRING_UserUnmarshal64(uint32* param0, uint8* param1, HSTRING* param2);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void HSTRING_UserFree64(uint32* param0, HSTRING* param1);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCreateString(char16* sourceString, uint32 length, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCreateStringReference(PWSTR sourceString, uint32 length, HSTRING_HEADER* hstringHeader, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDeleteString(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDuplicateString(HSTRING string, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WindowsGetStringLen(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR WindowsGetStringRawBuffer(HSTRING string, uint32* length);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WindowsIsStringEmpty(HSTRING string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsStringHasEmbeddedNull(HSTRING string, BOOL* hasEmbedNull);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsCompareStringOrdinal(HSTRING string1, HSTRING string2, int32* result);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsSubstring(HSTRING string, uint32 startIndex, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsSubstringWithSpecifiedLength(HSTRING string, uint32 startIndex, uint32 length, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsConcatString(HSTRING string1, HSTRING string2, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsReplaceString(HSTRING string, HSTRING stringReplaced, HSTRING stringReplaceWith, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsTrimStringStart(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsTrimStringEnd(HSTRING string, HSTRING trimString, HSTRING* newString);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsPreallocateStringBuffer(uint32 length, uint16** charBuffer, HSTRING_BUFFER* bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsPromoteStringBuffer(HSTRING_BUFFER bufferHandle, HSTRING* string);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsDeleteStringBuffer(HSTRING_BUFFER bufferHandle);
		[Import("api-ms-win-core-winrt-string-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsInspectString(uint targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK callback, void* context, uint32* length, uint* targetStringAddress);
		[Import("api-ms-win-core-winrt-string-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WindowsInspectString2(uint64 targetHString, uint16 machine, PINSPECT_HSTRING_CALLBACK2 callback, void* context, uint32* length, uint64* targetStringAddress);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInitialize(RO_INIT_TYPE initType);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoUninitialize();
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoActivateInstance(HSTRING activatableClassId, IInspectable* instance);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoRegisterActivationFactories(HSTRING* activatableClassIds, int* activationFactoryCallbacks, uint32 count, int* cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoRevokeActivationFactories(int cookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetActivationFactory(HSTRING activatableClassId, Guid* iid, void** factory);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoRegisterForApartmentShutdown(IApartmentShutdown callbackObject, uint64* apartmentIdentifier, APARTMENT_SHUTDOWN_REGISTRATION_COOKIE* regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoUnregisterForApartmentShutdown(APARTMENT_SHUTDOWN_REGISTRATION_COOKIE regCookie);
		[Import("api-ms-win-core-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetApartmentIdentifier(uint64* apartmentIdentifier);
		[Import("api-ms-win-core-winrt-robuffer-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetBufferMarshaler(IMarshal* bufferMarshaler);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetErrorReportingFlags(uint32* pflags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoSetErrorReportingFlags(uint32 flags);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoResolveRestrictedErrorInfoReference(PWSTR reference, IRestrictedErrorInfo* ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetRestrictedErrorInfo(IRestrictedErrorInfo pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetRestrictedErrorInfo(IRestrictedErrorInfo* ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateErrorW(HRESULT error, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateError(HRESULT error, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoTransformErrorW(HRESULT oldError, HRESULT newError, uint32 cchMax, char16* message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoTransformError(HRESULT oldError, HRESULT newError, HSTRING message);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoCaptureErrorContext(HRESULT hr);
		[Import("api-ms-win-core-winrt-error-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFailFastWithErrorContext(HRESULT hrError);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RoOriginateLanguageException(HRESULT error, HSTRING message, IUnknown languageException);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoClearError();
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoReportUnhandledError(IRestrictedErrorInfo pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInspectThreadErrorInfo(uint targetTebAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, uint* targetErrorInfoAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoInspectCapturedStackBackTrace(uint targetErrorInfoAddress, uint16 machine, PINSPECT_MEMORY_CALLBACK readMemoryCallback, void* context, uint32* frameCount, uint* targetBackTraceAddress);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetMatchingRestrictedErrorInfo(HRESULT hrIn, IRestrictedErrorInfo* ppRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoReportFailedDelegate(IUnknown punkDelegate, IRestrictedErrorInfo pRestrictedErrorInfo);
		[Import("api-ms-win-core-winrt-error-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsErrorPropagationEnabled();
		[Import("rometadata.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MetaDataGetDispenser(Guid* rclsid, Guid* riid, void** ppv);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetParameterizedTypeInstanceIID(uint32 nameElementCount, PWSTR* nameElements, IRoMetaDataLocator metaDataLocator, Guid* iid, ROPARAMIIDHANDLE* pExtra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void RoFreeParameterizedTypeExtra(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-roparameterizediid-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR RoParameterizedTypeExtraGetTypeSignature(ROPARAMIIDHANDLE extra);
		[Import("api-ms-win-core-winrt-registration-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RoGetServerActivatableClasses(HSTRING serverName, HSTRING** activatableClassIds, uint32* count);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRandomAccessStreamOnFile(PWSTR filePath, uint32 accessMode, Guid* riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateRandomAccessStreamOverStream(IStream stream, BSOS_OPTIONS options, Guid* riid, void** ppv);
		[Import("api-ms-win-shcore-stream-winrt-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateStreamOverRandomAccessStream(IUnknown randomAccessStream, Guid* riid, void** ppv);
		
	}
}
