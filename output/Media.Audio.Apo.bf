namespace Win32.Media.Audio.Apo;

using System;
using Win32.Foundation;
using Win32.Media.Audio;
using Win32.System.Com;
using Win32.UI.Shell.PropertiesSystem;

static
{
	#region Constants
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
	public const PROPERTYKEY PKEY_FX_Association = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 0);
	public const PROPERTYKEY PKEY_FX_PreMixEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 1);
	public const PROPERTYKEY PKEY_FX_PostMixEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 2);
	public const PROPERTYKEY PKEY_FX_UserInterfaceClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 3);
	public const PROPERTYKEY PKEY_FX_FriendlyName = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 4);
	public const PROPERTYKEY PKEY_FX_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 5);
	public const PROPERTYKEY PKEY_FX_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 6);
	public const PROPERTYKEY PKEY_FX_EndpointEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 7);
	public const PROPERTYKEY PKEY_FX_KeywordDetector_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 8);
	public const PROPERTYKEY PKEY_FX_KeywordDetector_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 9);
	public const PROPERTYKEY PKEY_FX_KeywordDetector_EndpointEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 10);
	public const PROPERTYKEY PKEY_FX_Offload_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 11);
	public const PROPERTYKEY PKEY_FX_Offload_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 12);
	public const PROPERTYKEY PKEY_CompositeFX_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 13);
	public const PROPERTYKEY PKEY_CompositeFX_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 14);
	public const PROPERTYKEY PKEY_CompositeFX_EndpointEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 15);
	public const PROPERTYKEY PKEY_CompositeFX_KeywordDetector_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 16);
	public const PROPERTYKEY PKEY_CompositeFX_KeywordDetector_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 17);
	public const PROPERTYKEY PKEY_CompositeFX_KeywordDetector_EndpointEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 18);
	public const PROPERTYKEY PKEY_CompositeFX_Offload_StreamEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 19);
	public const PROPERTYKEY PKEY_CompositeFX_Offload_ModeEffectClsid = .(.(0xd04e05a6, 0x594b, 0x4fb6, 0xa8, 0x0d, 0x01, 0xaf, 0x5e, 0xed, 0x7d, 0x1d), 20);
	public const PROPERTYKEY PKEY_SFX_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 5);
	public const PROPERTYKEY PKEY_MFX_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 6);
	public const PROPERTYKEY PKEY_EFX_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 7);
	public const PROPERTYKEY PKEY_SFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 8);
	public const PROPERTYKEY PKEY_MFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 9);
	public const PROPERTYKEY PKEY_EFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 10);
	public const PROPERTYKEY PKEY_SFX_Offload_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 11);
	public const PROPERTYKEY PKEY_MFX_Offload_ProcessingModes_Supported_For_Streaming = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 12);
	public const PROPERTYKEY PKEY_APO_SWFallback_ProcessingModes = .(.(0xd3993a3f, 0x99c2, 0x4402, 0xb5, 0xec, 0xa9, 0x2a, 0x03, 0x67, 0x66, 0x4b), 13);
	public const Guid SID_AudioProcessingObjectRTQueue = .(0x458c1a1f, 0x6899, 0x4c12, 0x99, 0xac, 0xe2, 0xe6, 0xac, 0x25, 0x31, 0x04);
	public const Guid SID_AudioProcessingObjectLoggingService = .(0x8b8008af, 0x09f9, 0x456e, 0xa1, 0x73, 0xbd, 0xb5, 0x84, 0x99, 0xbc, 0xe7);
	public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_TYPES = 2;
	public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_DATA = 4;
	public const uint32 AUDIOMEDIATYPE_EQUAL_FORMAT_USER_DATA = 8;
	#endregion
	
	#region Enums
	public enum APO_BUFFER_FLAGS : int32
	{
		INVALID = 0,
		VALID = 1,
		SILENT = 2,
	}
	public enum APO_CONNECTION_BUFFER_TYPE : int32
	{
		ALLOCATED = 0,
		EXTERNAL = 1,
		DEPENDANT = 2,
	}
	public enum APO_FLAG : int32
	{
		NONE = 0,
		INPLACE = 1,
		SAMPLESPERFRAME_MUST_MATCH = 2,
		FRAMESPERSECOND_MUST_MATCH = 4,
		BITSPERSAMPLE_MUST_MATCH = 8,
		MIXER = 16,
		DEFAULT = 14,
	}
	public enum AUDIO_FLOW_TYPE : int32
	{
		PULL = 0,
		PUSH = 1,
	}
	public enum EAudioConstriction : int32
	{
		ConstrictionOff = 0,
		Constriction48_16 = 1,
		Constriction44_16 = 2,
		Constriction14_14 = 3,
		ConstrictionMute = 4,
	}
	public enum AUDIO_SYSTEMEFFECT_STATE : int32
	{
		OFF = 0,
		ON = 1,
	}
	public enum APO_LOG_LEVEL : int32
	{
		ALWAYS = 0,
		CRITICAL = 1,
		ERROR = 2,
		WARNING = 3,
		INFO = 4,
		VERBOSE = 5,
	}
	public enum APO_NOTIFICATION_TYPE : int32
	{
		NONE = 0,
		ENDPOINT_VOLUME = 1,
		ENDPOINT_PROPERTY_CHANGE = 2,
		SYSTEM_EFFECTS_PROPERTY_CHANGE = 3,
	}
	#endregion
	
	#region Function pointers
	public function HRESULT FNAPONOTIFICATIONCALLBACK(out APO_REG_PROPERTIES pProperties, void* pvRefData);
	#endregion
	
	#region Structs
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
		public IAudioMediaType* pFormat;
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
		public Guid[1] iidAPOInterfaceList_array;
		
		public Guid* iidAPOInterfaceList mut => &iidAPOInterfaceList_array[0];
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
		public IPropertyStore* pAPOEndpointProperties;
		public IPropertyStore* pAPOSystemEffectsProperties;
		public void* pReserved;
		public IMMDeviceCollection* pDeviceCollection;
	}
	[CRepr]
	public struct APOInitSystemEffects2
	{
		public APOInitBaseStruct APOInit;
		public IPropertyStore* pAPOEndpointProperties;
		public IPropertyStore* pAPOSystemEffectsProperties;
		public void* pReserved;
		public IMMDeviceCollection* pDeviceCollection;
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
		public IPropertyStore* pFxProperties;
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
		public IPropertyStore* pAPOEndpointProperties;
		public IServiceProvider* pServiceProvider;
		public IMMDeviceCollection* pDeviceCollection;
		public uint32 nSoftwareIoDeviceInCollection;
		public uint32 nSoftwareIoConnectorIndex;
		public Guid AudioProcessingMode;
		public BOOL InitializeForDiscoveryOnly;
	}
	[CRepr]
	public struct AUDIO_ENDPOINT_VOLUME_CHANGE_NOTIFICATION
	{
		public IMMDevice* endpoint;
		public AUDIO_VOLUME_NOTIFICATION_DATA* volume;
	}
	[CRepr]
	public struct AUDIO_ENDPOINT_PROPERTY_CHANGE_NOTIFICATION
	{
		public IMMDevice* endpoint;
		public IPropertyStore* propertyStore;
		public PROPERTYKEY propertyKey;
	}
	[CRepr]
	public struct AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_NOTIFICATION
	{
		public IMMDevice* endpoint;
		public Guid propertyStoreContext;
		public __MIDL___MIDL_itf_mmdeviceapi_0000_0008_0002 propertyStoreType;
		public IPropertyStore* propertyStore;
		public PROPERTYKEY propertyKey;
	}
	[CRepr]
	public struct APO_NOTIFICATION
	{
		public APO_NOTIFICATION_TYPE type;
		public using _Anonymous_e__Union Anonymous;
		
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
		public IMMDevice* device;
	}
	[CRepr]
	public struct AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
	{
		public IMMDevice* device;
	}
	[CRepr]
	public struct AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR
	{
		public IMMDevice* device;
		public Guid propertyStoreContext;
	}
	[CRepr]
	public struct APO_NOTIFICATION_DESCRIPTOR
	{
		public APO_NOTIFICATION_TYPE type;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public AUDIO_ENDPOINT_VOLUME_APO_NOTIFICATION_DESCRIPTOR audioEndpointVolume;
			public AUDIO_ENDPOINT_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR audioEndpointPropertyChange;
			public AUDIO_SYSTEMEFFECTS_PROPERTY_CHANGE_APO_NOTIFICATION_DESCRIPTOR audioSystemEffectsPropertyChange;
		}
	}
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IAudioMediaType : IUnknown
	{
		public const new Guid IID = .(0x4e997f73, 0xb71f, 0x4798, 0x87, 0x3b, 0xed, 0x7d, 0xfc, 0xf1, 0x5b, 0x4d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsCompressedFormat(out BOOL pfCompressed) mut => VT.IsCompressedFormat(ref this, out pfCompressed);
		public HRESULT IsEqual(ref IAudioMediaType pIAudioType, out uint32 pdwFlags) mut => VT.IsEqual(ref this, ref pIAudioType, out pdwFlags);
		public WAVEFORMATEX* GetAudioFormat() mut => VT.GetAudioFormat(ref this);
		public HRESULT GetUncompressedAudioFormat(out UNCOMPRESSEDAUDIOFORMAT pUncompressedAudioFormat) mut => VT.GetUncompressedAudioFormat(ref this, out pUncompressedAudioFormat);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMediaType self, out BOOL pfCompressed) IsCompressedFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMediaType self, ref IAudioMediaType pIAudioType, out uint32 pdwFlags) IsEqual;
			public new function [CallingConvention(.Stdcall)] WAVEFORMATEX*(ref IAudioMediaType self) GetAudioFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMediaType self, out UNCOMPRESSEDAUDIOFORMAT pUncompressedAudioFormat) GetUncompressedAudioFormat;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectRT : IUnknown
	{
		public const new Guid IID = .(0x9e1d6a6d, 0xddbc, 0x4e95, 0xa4, 0xc7, 0xad, 0x64, 0xba, 0x37, 0x84, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public void APOProcess(uint32 u32NumInputConnections, ref APO_CONNECTION_PROPERTY* ppInputConnections, uint32 u32NumOutputConnections, out APO_CONNECTION_PROPERTY* ppOutputConnections) mut => VT.APOProcess(ref this, u32NumInputConnections, ref ppInputConnections, u32NumOutputConnections, out ppOutputConnections);
		public uint32 CalcInputFrames(uint32 u32OutputFrameCount) mut => VT.CalcInputFrames(ref this, u32OutputFrameCount);
		public uint32 CalcOutputFrames(uint32 u32InputFrameCount) mut => VT.CalcOutputFrames(ref this, u32InputFrameCount);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IAudioProcessingObjectRT self, uint32 u32NumInputConnections, ref APO_CONNECTION_PROPERTY* ppInputConnections, uint32 u32NumOutputConnections, out APO_CONNECTION_PROPERTY* ppOutputConnections) APOProcess;
			public new function [CallingConvention(.Stdcall)] uint32(ref IAudioProcessingObjectRT self, uint32 u32OutputFrameCount) CalcInputFrames;
			public new function [CallingConvention(.Stdcall)] uint32(ref IAudioProcessingObjectRT self, uint32 u32InputFrameCount) CalcOutputFrames;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectVBR : IUnknown
	{
		public const new Guid IID = .(0x7ba1db8f, 0x78ad, 0x49cd, 0x95, 0x91, 0xf7, 0x9d, 0x80, 0xa1, 0x7c, 0x81);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CalcMaxInputFrames(uint32 u32MaxOutputFrameCount, out uint32 pu32InputFrameCount) mut => VT.CalcMaxInputFrames(ref this, u32MaxOutputFrameCount, out pu32InputFrameCount);
		public HRESULT CalcMaxOutputFrames(uint32 u32MaxInputFrameCount, out uint32 pu32OutputFrameCount) mut => VT.CalcMaxOutputFrames(ref this, u32MaxInputFrameCount, out pu32OutputFrameCount);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectVBR self, uint32 u32MaxOutputFrameCount, out uint32 pu32InputFrameCount) CalcMaxInputFrames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectVBR self, uint32 u32MaxInputFrameCount, out uint32 pu32OutputFrameCount) CalcMaxOutputFrames;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectConfiguration : IUnknown
	{
		public const new Guid IID = .(0x0e5ed805, 0xaba6, 0x49c3, 0x8f, 0x9a, 0x2b, 0x8c, 0x88, 0x9c, 0x4f, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT LockForProcess(uint32 u32NumInputConnections, ref APO_CONNECTION_DESCRIPTOR* ppInputConnections, uint32 u32NumOutputConnections, ref APO_CONNECTION_DESCRIPTOR* ppOutputConnections) mut => VT.LockForProcess(ref this, u32NumInputConnections, ref ppInputConnections, u32NumOutputConnections, ref ppOutputConnections);
		public HRESULT UnlockForProcess() mut => VT.UnlockForProcess(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectConfiguration self, uint32 u32NumInputConnections, ref APO_CONNECTION_DESCRIPTOR* ppInputConnections, uint32 u32NumOutputConnections, ref APO_CONNECTION_DESCRIPTOR* ppOutputConnections) LockForProcess;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectConfiguration self) UnlockForProcess;
		}
	}
	[CRepr]
	public struct IAudioProcessingObject : IUnknown
	{
		public const new Guid IID = .(0xfd7f2b29, 0x24d0, 0x4b5c, 0xb1, 0x77, 0x59, 0x2c, 0x39, 0xf9, 0xca, 0x10);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT GetLatency(out int64 pTime) mut => VT.GetLatency(ref this, out pTime);
		public HRESULT GetRegistrationProperties(out APO_REG_PROPERTIES* ppRegProps) mut => VT.GetRegistrationProperties(ref this, out ppRegProps);
		public HRESULT Initialize(uint32 cbDataSize, uint8* pbyData) mut => VT.Initialize(ref this, cbDataSize, pbyData);
		public HRESULT IsInputFormatSupported(ref IAudioMediaType pOppositeFormat, ref IAudioMediaType pRequestedInputFormat, out IAudioMediaType* ppSupportedInputFormat) mut => VT.IsInputFormatSupported(ref this, ref pOppositeFormat, ref pRequestedInputFormat, out ppSupportedInputFormat);
		public HRESULT IsOutputFormatSupported(ref IAudioMediaType pOppositeFormat, ref IAudioMediaType pRequestedOutputFormat, out IAudioMediaType* ppSupportedOutputFormat) mut => VT.IsOutputFormatSupported(ref this, ref pOppositeFormat, ref pRequestedOutputFormat, out ppSupportedOutputFormat);
		public HRESULT GetInputChannelCount(out uint32 pu32ChannelCount) mut => VT.GetInputChannelCount(ref this, out pu32ChannelCount);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, out int64 pTime) GetLatency;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, out APO_REG_PROPERTIES* ppRegProps) GetRegistrationProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, uint32 cbDataSize, uint8* pbyData) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, ref IAudioMediaType pOppositeFormat, ref IAudioMediaType pRequestedInputFormat, out IAudioMediaType* ppSupportedInputFormat) IsInputFormatSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, ref IAudioMediaType pOppositeFormat, ref IAudioMediaType pRequestedOutputFormat, out IAudioMediaType* ppSupportedOutputFormat) IsOutputFormatSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObject self, out uint32 pu32ChannelCount) GetInputChannelCount;
		}
	}
	[CRepr]
	public struct IAudioDeviceModulesClient : IUnknown
	{
		public const new Guid IID = .(0x98f37dac, 0xd0b6, 0x49f5, 0x89, 0x6a, 0xaa, 0x4d, 0x16, 0x9a, 0x4c, 0x48);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAudioDeviceModulesManager(ref IUnknown pAudioDeviceModulesManager) mut => VT.SetAudioDeviceModulesManager(ref this, ref pAudioDeviceModulesManager);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioDeviceModulesClient self, ref IUnknown pAudioDeviceModulesManager) SetAudioDeviceModulesManager;
		}
	}
	[CRepr]
	public struct IAudioSystemEffects : IUnknown
	{
		public const new Guid IID = .(0x5fa00f27, 0xadd6, 0x499a, 0x8a, 0x9d, 0x6b, 0x98, 0x52, 0x1f, 0xa7, 0x5b);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IAudioSystemEffects2 : IAudioSystemEffects
	{
		public const new Guid IID = .(0xbafe99d2, 0x7436, 0x44ce, 0x9e, 0x0e, 0x4d, 0x89, 0xaf, 0xbf, 0xff, 0x56);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEffectsList(Guid** ppEffectsIds, out uint32 pcEffects, HANDLE Event) mut => VT.GetEffectsList(ref this, ppEffectsIds, out pcEffects, Event);

		[CRepr]
		public struct VTable : IAudioSystemEffects.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffects2 self, Guid** ppEffectsIds, out uint32 pcEffects, HANDLE Event) GetEffectsList;
		}
	}
	[CRepr]
	public struct IAudioSystemEffectsCustomFormats : IUnknown
	{
		public const new Guid IID = .(0xb1176e34, 0xbb7f, 0x4f05, 0xbe, 0xbd, 0x1b, 0x18, 0xa5, 0x34, 0xe0, 0x97);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFormatCount(out uint32 pcFormats) mut => VT.GetFormatCount(ref this, out pcFormats);
		public HRESULT GetFormat(uint32 nFormat, out IAudioMediaType* ppFormat) mut => VT.GetFormat(ref this, nFormat, out ppFormat);
		public HRESULT GetFormatRepresentation(uint32 nFormat, out PWSTR ppwstrFormatRep) mut => VT.GetFormatRepresentation(ref this, nFormat, out ppwstrFormatRep);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsCustomFormats self, out uint32 pcFormats) GetFormatCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsCustomFormats self, uint32 nFormat, out IAudioMediaType* ppFormat) GetFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffectsCustomFormats self, uint32 nFormat, out PWSTR ppwstrFormatRep) GetFormatRepresentation;
		}
	}
	[CRepr]
	public struct IApoAuxiliaryInputConfiguration : IUnknown
	{
		public const new Guid IID = .(0x4ceb0aab, 0xfa19, 0x48ed, 0xa8, 0x57, 0x87, 0x77, 0x1a, 0xe1, 0xb7, 0x68);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddAuxiliaryInput(uint32 dwInputId, uint32 cbDataSize, uint8* pbyData, ref APO_CONNECTION_DESCRIPTOR pInputConnection) mut => VT.AddAuxiliaryInput(ref this, dwInputId, cbDataSize, pbyData, ref pInputConnection);
		public HRESULT RemoveAuxiliaryInput(uint32 dwInputId) mut => VT.RemoveAuxiliaryInput(ref this, dwInputId);
		public HRESULT IsInputFormatSupported(ref IAudioMediaType pRequestedInputFormat, out IAudioMediaType* ppSupportedInputFormat) mut => VT.IsInputFormatSupported(ref this, ref pRequestedInputFormat, out ppSupportedInputFormat);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApoAuxiliaryInputConfiguration self, uint32 dwInputId, uint32 cbDataSize, uint8* pbyData, ref APO_CONNECTION_DESCRIPTOR pInputConnection) AddAuxiliaryInput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApoAuxiliaryInputConfiguration self, uint32 dwInputId) RemoveAuxiliaryInput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApoAuxiliaryInputConfiguration self, ref IAudioMediaType pRequestedInputFormat, out IAudioMediaType* ppSupportedInputFormat) IsInputFormatSupported;
		}
	}
	[CRepr]
	public struct IApoAuxiliaryInputRT : IUnknown
	{
		public const new Guid IID = .(0xf851809c, 0xc177, 0x49a0, 0xb1, 0xb2, 0xb6, 0x6f, 0x01, 0x79, 0x43, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public void AcceptInput(uint32 dwInputId, in APO_CONNECTION_PROPERTY pInputConnection) mut => VT.AcceptInput(ref this, dwInputId, pInputConnection);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IApoAuxiliaryInputRT self, uint32 dwInputId, in APO_CONNECTION_PROPERTY pInputConnection) AcceptInput;
		}
	}
	[CRepr]
	public struct IApoAcousticEchoCancellation : IUnknown
	{
		public const new Guid IID = .(0x25385759, 0x3236, 0x4101, 0xa9, 0x43, 0x25, 0x69, 0x3d, 0xfb, 0x5d, 0x2d);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IUnknown.VTable {}
	}
	[CRepr]
	public struct IAudioSystemEffects3 : IAudioSystemEffects2
	{
		public const new Guid IID = .(0xc58b31cd, 0xfc6a, 0x4255, 0xbc, 0x1f, 0xad, 0x29, 0xbb, 0x0a, 0x4a, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetControllableSystemEffectsList(AUDIO_SYSTEMEFFECT** effects, out uint32 numEffects, HANDLE event) mut => VT.GetControllableSystemEffectsList(ref this, effects, out numEffects, event);
		public HRESULT SetAudioSystemEffectState(Guid effectId, AUDIO_SYSTEMEFFECT_STATE state) mut => VT.SetAudioSystemEffectState(ref this, effectId, state);

		[CRepr]
		public struct VTable : IAudioSystemEffects2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffects3 self, AUDIO_SYSTEMEFFECT** effects, out uint32 numEffects, HANDLE event) GetControllableSystemEffectsList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioSystemEffects3 self, Guid effectId, AUDIO_SYSTEMEFFECT_STATE state) SetAudioSystemEffectState;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectRTQueueService : IUnknown
	{
		public const new Guid IID = .(0xacd65e2f, 0x955b, 0x4b57, 0xb9, 0xbf, 0xac, 0x29, 0x7b, 0xb7, 0x52, 0xc9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRealTimeWorkQueue(out uint32 workQueueId) mut => VT.GetRealTimeWorkQueue(ref this, out workQueueId);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectRTQueueService self, out uint32 workQueueId) GetRealTimeWorkQueue;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectLoggingService : IUnknown
	{
		public const new Guid IID = .(0x698f0107, 0x1745, 0x4708, 0x95, 0xa5, 0xd8, 0x44, 0x78, 0xa6, 0x2a, 0x65);
		
		public new VTable* VT { get => (.)vt; }
		
		public void ApoLog(APO_LOG_LEVEL level, PWSTR format) mut => VT.ApoLog(ref this, level, format);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] void(ref IAudioProcessingObjectLoggingService self, APO_LOG_LEVEL level, PWSTR format) ApoLog;
		}
	}
	[CRepr]
	public struct IAudioProcessingObjectNotifications : IUnknown
	{
		public const new Guid IID = .(0x56b0c76f, 0x02fd, 0x4b21, 0xa5, 0x2e, 0x9f, 0x82, 0x19, 0xfc, 0x86, 0xe4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetApoNotificationRegistrationInfo(APO_NOTIFICATION_DESCRIPTOR** apoNotifications, out uint32 count) mut => VT.GetApoNotificationRegistrationInfo(ref this, apoNotifications, out count);
		public void HandleNotification(ref APO_NOTIFICATION apoNotification) mut => VT.HandleNotification(ref this, ref apoNotification);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioProcessingObjectNotifications self, APO_NOTIFICATION_DESCRIPTOR** apoNotifications, out uint32 count) GetApoNotificationRegistrationInfo;
			public new function [CallingConvention(.Stdcall)] void(ref IAudioProcessingObjectNotifications self, ref APO_NOTIFICATION apoNotification) HandleNotification;
		}
	}
	#endregion
	
}
