using System;

// namespace Media.Audio.Apo
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT APOERR_ALREADY_INITIALIZED = -2005073919;
		public const HRESULT APOERR_NOT_INITIALIZED = -2005073918;
		public const HRESULT APOERR_FORMAT_NOT_SUPPORTED = -2005073917;
		public const HRESULT APOERR_INVALID_APO_CLSID = -2005073916;
		public const HRESULT APOERR_BUFFERS_OVERLAP = -2005073915;
		public const HRESULT APOERR_ALREADY_UNLOCKED = -2005073914;
		public const HRESULT APOERR_NUM_CONNECTIONS_INVALID = -2005073913;
		public const HRESULT APOERR_INVALID_OUTPUT_MAXFRAMECOUNT = -2005073912;
		public const HRESULT APOERR_INVALID_CONNECTION_FORMAT = -2005073911;
		public const HRESULT APOERR_APO_LOCKED = -2005073910;
		public const HRESULT APOERR_INVALID_COEFFCOUNT = -2005073909;
		public const HRESULT APOERR_INVALID_COEFFICIENT = -2005073908;
		public const HRESULT APOERR_INVALID_CURVE_PARAM = -2005073907;
		public const HRESULT APOERR_INVALID_INPUTID = -2005073906;
		public const double AUDIO_MIN_FRAMERATE = 10;
		public const double AUDIO_MAX_FRAMERATE = 384000;
		public const uint32 AUDIO_MIN_CHANNELS = 1;
		public const uint32 AUDIO_MAX_CHANNELS = 4096;
		public const Guid SID_AudioProcessingObjectRTQueue = .(0x458c1a1f, 0x6899, 0x4c12, 0x99, 0xac, 0xe2, 0xe6, 0xac, 0x25, 0x31, 0x04);
		public const Guid SID_AudioProcessingObjectLoggingService = .(0x8b8008af, 0x09f9, 0x456e, 0xa1, 0x73, 0xbd, 0xb5, 0x84, 0x99, 0xbc, 0xe7);
		public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_TYPES = 2;
		public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_DATA = 4;
		public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_USER_DATA = 8;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum APO_BUFFER_FLAGS : int32
		{
			BUFFER_INVALID = 0,
			BUFFER_VALID = 1,
			BUFFER_SILENT = 2,
		}
		[AllowDuplicates]
		public enum APO_CONNECTION_BUFFER_TYPE : int32
		{
			APO_CONNECTION_BUFFER_TYPE_ALLOCATED = 0,
			APO_CONNECTION_BUFFER_TYPE_EXTERNAL = 1,
			APO_CONNECTION_BUFFER_TYPE_DEPENDANT = 2,
		}
		[AllowDuplicates]
		public enum APO_FLAG : int32
		{
			APO_FLAG_NONE = 0,
			APO_FLAG_INPLACE = 1,
			APO_FLAG_SAMPLESPERFRAME_MUST_MATCH = 2,
			APO_FLAG_FRAMESPERSECOND_MUST_MATCH = 4,
			APO_FLAG_BITSPERSAMPLE_MUST_MATCH = 8,
			APO_FLAG_MIXER = 16,
			APO_FLAG_DEFAULT = 14,
		}
		[AllowDuplicates]
		public enum AUDIO_FLOW_TYPE : int32
		{
			AUDIO_FLOW_PULL = 0,
			AUDIO_FLOW_PUSH = 1,
		}
		[AllowDuplicates]
		public enum EAudioConstriction : int32
		{
			eAudioConstrictionOff = 0,
			eAudioConstriction48_16 = 1,
			eAudioConstriction44_16 = 2,
			eAudioConstriction14_14 = 3,
			eAudioConstrictionMute = 4,
		}
		[AllowDuplicates]
		public enum AUDIO_SYSTEMEFFECT_STATE : int32
		{
			AUDIO_SYSTEMEFFECT_STATE_OFF = 0,
			AUDIO_SYSTEMEFFECT_STATE_ON = 1,
		}
		[AllowDuplicates]
		public enum APO_LOG_LEVEL : int32
		{
			APO_LOG_LEVEL_ALWAYS = 0,
			APO_LOG_LEVEL_CRITICAL = 1,
			APO_LOG_LEVEL_ERROR = 2,
			APO_LOG_LEVEL_WARNING = 3,
			APO_LOG_LEVEL_INFO = 4,
			APO_LOG_LEVEL_VERBOSE = 5,
		}
		[AllowDuplicates]
		public enum APO_NOTIFICATION_TYPE : int32
		{
			APO_NOTIFICATION_TYPE_NONE = 0,
			APO_NOTIFICATION_TYPE_ENDPOINT_VOLUME = 1,
			APO_NOTIFICATION_TYPE_ENDPOINT_PROPERTY_CHANGE = 2,
			APO_NOTIFICATION_TYPE_SYSTEM_EFFECTS_PROPERTY_CHANGE = 3,
		}
		
		// --- Function Pointers ---
		
		public function HRESULT FNAPONOTIFICATIONCALLBACK(APO_REG_PROPERTIES* pProperties, void* pvRefData);
		
		// --- Structs ---
		
		[CRepr]
		public struct UNCOMPRESSEDAUDIOFORMAT
		{
			public Guid guidFormatType;
			public uint32 dwSamplesPerFrame;
			public uint32 dwBytesPerSampleContainer;
			public uint32 dwValidBitsPerSample;
			public float fFramesPerSecond;
			public uint32 dwChannelMask;
		}
		[CRepr]
		public struct APO_CONNECTION_PROPERTY
		{
			public uint pBuffer;
			public uint32 u32ValidFrameCount;
			public APO_BUFFER_FLAGS u32BufferFlags;
			public uint32 u32Signature;
		}
		[CRepr]
		public struct APO_CONNECTION_PROPERTY_V2
		{
			public APO_CONNECTION_PROPERTY property;
			public uint64 u64QPCTime;
		}
		[CRepr]
		public struct APO_CONNECTION_DESCRIPTOR
		{
			public APO_CONNECTION_BUFFER_TYPE Type;
			public uint pBuffer;
			public uint32 u32MaxFrameCount;
			public IAudioMediaType pFormat;
			public uint32 u32Signature;
		}
		[CRepr]
		public struct APO_REG_PROPERTIES
		{
			public Guid clsid;
			public APO_FLAG Flags;
			public char16[256] szFriendlyName;
			public char16[256] szCopyrightInfo;
			public uint32 u32MajorVersion;
			public uint32 u32MinorVersion;
			public uint32 u32MinInputConnections;
			public uint32 u32MaxInputConnections;
			public uint32 u32MinOutputConnections;
			public uint32 u32MaxOutputConnections;
			public uint32 u32MaxInstances;
			public uint32 u32NumAPOInterfaces;
			public Guid[] iidAPOInterfaceList;
		}
		[CRepr]
		public struct APOInitBaseStruct
		{
			public uint32 cbSize;
			public Guid clsid;
		}
		[CRepr]
		public struct APOInitSystemEffects
		{
			public APOInitBaseStruct APOInit;
			public IPropertyStore pAPOEndpointProperties;
			public IPropertyStore pAPOSystemEffectsProperties;
			public void* pReserved;
			public IMMDeviceCollection pDeviceCollection;
		}
		[CRepr]
		public struct APOInitSystemEffects2
		{
			public APOInitBaseStruct APOInit;
			public IPropertyStore pAPOEndpointProperties;
			public IPropertyStore pAPOSystemEffectsProperties;
			public void* pReserved;
			public IMMDeviceCollection pDeviceCollection;
			public uint32 nSoftwareIoDeviceInCollection;
			public uint32 nSoftwareIoConnectorIndex;
			public Guid AudioProcessingMode;
			public BOOL InitializeForDiscoveryOnly;
		}
		[CRepr]
		public struct AudioFXExtensionParams
		{
			public LPARAM AddPageParam;
			public PWSTR pwstrEndpointID;
			public IPropertyStore pFxProperties;
		}
		[CRepr]
		public struct AUDIO_SYSTEMEFFECT
		{
			public Guid id;
			public BOOL canSetState;
			public AUDIO_SYSTEMEFFECT_STATE state;
		}
		[CRepr]
		public struct APOInitSystemEffects3
		{
			public APOInitBaseStruct APOInit;
			public IPropertyStore pAPOEndpointProperties;
			public IServiceProvider pServiceProvider;
			public IMMDeviceCollection pDeviceCollection;
			public uint32 nSoftwareIoDeviceInCollection;
			public uint32 nSoftwareIoConnectorIndex;
			public Guid AudioProcessingMode;
			public BOOL InitializeForDiscoveryOnly;
		}
		[CRepr]
		public struct AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION
		{
			public IMMDevice endpoint;
			public AUDIO_VOLUME_NOTIFICATION_DATA* volume;
		}
		[CRepr]
		public struct AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION
		{
			public IMMDevice endpoint;
			public IPropertyStore propertyStore;
			public PROPERTYKEY propertyKey;
		}
		[CRepr]
		public struct AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION
		{
			public IMMDevice endpoint;
			public Guid propertyStoreContext;
			public __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 propertyStoreType;
			public IPropertyStore propertyStore;
			public PROPERTYKEY propertyKey;
		}
		[CRepr]
		public struct APO_NOTIFICATION
		{
			public APO_NOTIFICATION_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION audioEndpointVolumeChange;
				public AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION audioEndpointPropertyChange;
				public AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION audioSystemEffectsPropertyChange;
			}
		}
		[CRepr]
		public struct AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR
		{
			public IMMDevice device;
		}
		[CRepr]
		public struct AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
		{
			public IMMDevice device;
		}
		[CRepr]
		public struct AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
		{
			public IMMDevice device;
			public Guid propertyStoreContext;
		}
		[CRepr]
		public struct APO_NOTIFICATION_DESCRIPTOR
		{
			public APO_NOTIFICATION_TYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR audioEndpointVolume;
				public AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR audioEndpointPropertyChange;
				public AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR audioSystemEffectsPropertyChange;
			}
		}
		
		// --- COM Interfaces ---
		
		public struct IAudioMediaType {}
		public struct IAudioProcessingObjectRT {}
		public struct IAudioProcessingObjectVBR {}
		public struct IAudioProcessingObjectConfiguration {}
		public struct IAudioProcessingObject {}
		public struct IAudioDeviceModulesClient {}
		public struct IAudioSystemEffects {}
		public struct IAudioSystemEffects2 {}
		public struct IAudioSystemEffectsCustomFormats {}
		public struct IApoAuxiliaryInputConfiguration {}
		public struct IApoAuxiliaryInputRT {}
		public struct IApoAcousticEchoCancellation {}
		public struct IAudioSystemEffects3 {}
		public struct IAudioProcessingObjectRTQueueService {}
		public struct IAudioProcessingObjectLoggingService {}
		public struct IAudioProcessingObjectNotifications {}
		
	}
}
