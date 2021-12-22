using System;

// namespace Media.Audio.Endpoints
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum EndpointConnectorType : int32
		{
			eHostProcessConnector = 0,
			eOffloadConnector = 1,
			eLoopbackConnector = 2,
			eKeywordDetectorConnector = 3,
			eConnectorCount = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct AUDIO_ENDPOINT_SHARED_CREATE_PARAMS
		{
			public uint32 u32Size;
			public uint32 u32TSSessionId;
			public EndpointConnectorType targetEndpointConnectorType;
			public WAVEFORMATEX wfxDeviceFormat;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_DEVINTERFACE_AUDIOENDPOINTPLUGIN = .(0x9f2f7b66, 0x65ac, 0x4fa6, 0x8a, 0xe4, 0x12, 0x3c, 0x78, 0xb8, 0x93, 0x13);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAudioEndpointFormatControl : IUnknown
		{
			public const new Guid IID = .(0x784cfd40, 0x9f89, 0x456e, 0xa1, 0xa6, 0x87, 0x3b, 0x00, 0x6a, 0x66, 0x4e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointFormatControl *self, uint32 ResetFlags) ResetToDefault;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamVolume : IUnknown
		{
			public const new Guid IID = .(0x64f1dd49, 0x71ca, 0x4281, 0x86, 0x72, 0x3a, 0x9e, 0xdd, 0xd1, 0xd0, 0xb6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32* pu32ChannelCount) GetVolumeChannelCount;
				public function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32 u32ChannelCount, float* pf32Volumes, AUDIO_CURVE_TYPE u32CurveType, int64* pCurveDuration) SetChannelVolumes;
				public function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32 u32ChannelCount, float* pf32Volumes) GetChannelVolumes;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamMute : IUnknown
		{
			public const new Guid IID = .(0xdfe21355, 0x5ec2, 0x40e0, 0x8d, 0x6b, 0x71, 0x0a, 0xc3, 0xc0, 0x02, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointOffloadStreamMute *self, uint8 bMuted) SetMute;
				public function HRESULT(IAudioEndpointOffloadStreamMute *self, uint8* pbMuted) GetMute;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamMeter : IUnknown
		{
			public const new Guid IID = .(0xe1546dce, 0x9dd1, 0x418b, 0x9a, 0xb2, 0x34, 0x8c, 0xed, 0x16, 0x1c, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointOffloadStreamMeter *self, uint32* pu32ChannelCount) GetMeterChannelCount;
				public function HRESULT(IAudioEndpointOffloadStreamMeter *self, uint32 u32ChannelCount, float* pf32PeakValues) GetMeteringData;
			}
		}
		[CRepr]
		public struct IAudioEndpointLastBufferControl : IUnknown
		{
			public const new Guid IID = .(0xf8520dd3, 0x8f9d, 0x4437, 0x98, 0x61, 0x62, 0xf5, 0x84, 0xc3, 0x3d, 0xd6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function BOOL(IAudioEndpointLastBufferControl *self) IsLastBufferControlSupported;
				public function void(IAudioEndpointLastBufferControl *self, APO_CONNECTION_PROPERTY* pConnectionProperty) ReleaseOutputDataPointerForLastBuffer;
			}
		}
		[CRepr]
		public struct IAudioLfxControl : IUnknown
		{
			public const new Guid IID = .(0x076a6922, 0xd802, 0x4f83, 0xba, 0xf6, 0x40, 0x9d, 0x9c, 0xa1, 0x1b, 0xfe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioLfxControl *self, BOOL bEnabled) SetLocalEffectsState;
				public function HRESULT(IAudioLfxControl *self, BOOL* pbEnabled) GetLocalEffectsState;
			}
		}
		[CRepr]
		public struct IHardwareAudioEngineBase : IUnknown
		{
			public const new Guid IID = .(0xeddce3e4, 0xf3c1, 0x453a, 0xb4, 0x61, 0x22, 0x35, 0x63, 0xcb, 0xd8, 0x86);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IHardwareAudioEngineBase *self, PWSTR _pwstrDeviceId, uint32 _uConnectorId, uint32* _pAvailableConnectorInstanceCount) GetAvailableOffloadConnectorCount;
				public function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL _bRequestDeviceFormat, WAVEFORMATEX** _ppwfxFormat) GetEngineFormat;
				public function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, WAVEFORMATEX* _pwfxFormat) SetEngineDeviceFormat;
				public function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL _bEnable) SetGfxState;
				public function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL* _pbEnable) GetGfxState;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolumeCallback : IUnknown
		{
			public const new Guid IID = .(0x657804fa, 0xd6ad, 0x4496, 0x8a, 0x60, 0x35, 0x27, 0x52, 0xaf, 0x4f, 0x89);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointVolumeCallback *self, AUDIO_VOLUME_NOTIFICATION_DATA* pNotify) OnNotify;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolume : IUnknown
		{
			public const new Guid IID = .(0x5cdf2c82, 0x841e, 0x4546, 0x97, 0x22, 0x0c, 0xf7, 0x40, 0x78, 0x22, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioEndpointVolume *self, IAudioEndpointVolumeCallback* pNotify) RegisterControlChangeNotify;
				public function HRESULT(IAudioEndpointVolume *self, IAudioEndpointVolumeCallback* pNotify) UnregisterControlChangeNotify;
				public function HRESULT(IAudioEndpointVolume *self, uint32* pnChannelCount) GetChannelCount;
				public function HRESULT(IAudioEndpointVolume *self, float fLevelDB, Guid* pguidEventContext) SetMasterVolumeLevel;
				public function HRESULT(IAudioEndpointVolume *self, float fLevel, Guid* pguidEventContext) SetMasterVolumeLevelScalar;
				public function HRESULT(IAudioEndpointVolume *self, float* pfLevelDB) GetMasterVolumeLevel;
				public function HRESULT(IAudioEndpointVolume *self, float* pfLevel) GetMasterVolumeLevelScalar;
				public function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float fLevelDB, Guid* pguidEventContext) SetChannelVolumeLevel;
				public function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float fLevel, Guid* pguidEventContext) SetChannelVolumeLevelScalar;
				public function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float* pfLevelDB) GetChannelVolumeLevel;
				public function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float* pfLevel) GetChannelVolumeLevelScalar;
				public function HRESULT(IAudioEndpointVolume *self, BOOL bMute, Guid* pguidEventContext) SetMute;
				public function HRESULT(IAudioEndpointVolume *self, BOOL* pbMute) GetMute;
				public function HRESULT(IAudioEndpointVolume *self, uint32* pnStep, uint32* pnStepCount) GetVolumeStepInfo;
				public function HRESULT(IAudioEndpointVolume *self, Guid* pguidEventContext) VolumeStepUp;
				public function HRESULT(IAudioEndpointVolume *self, Guid* pguidEventContext) VolumeStepDown;
				public function HRESULT(IAudioEndpointVolume *self, uint32* pdwHardwareSupportMask) QueryHardwareSupport;
				public function HRESULT(IAudioEndpointVolume *self, float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) GetVolumeRange;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolumeEx : IAudioEndpointVolume
		{
			public const new Guid IID = .(0x66e11784, 0xf695, 0x4f28, 0xa5, 0x05, 0xa7, 0x08, 0x00, 0x81, 0xa7, 0x8f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IAudioEndpointVolume.VTable
			{
				public function HRESULT(IAudioEndpointVolumeEx *self, uint32 iChannel, float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) GetVolumeRangeChannel;
			}
		}
		[CRepr]
		public struct IAudioMeterInformation : IUnknown
		{
			public const new Guid IID = .(0xc02216f6, 0x8c67, 0x4b5b, 0x9d, 0x00, 0xd0, 0x08, 0xe7, 0x3e, 0x00, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IAudioMeterInformation *self, float* pfPeak) GetPeakValue;
				public function HRESULT(IAudioMeterInformation *self, uint32* pnChannelCount) GetMeteringChannelCount;
				public function HRESULT(IAudioMeterInformation *self, uint32 u32ChannelCount, float* afPeakValues) GetChannelsPeakValues;
				public function HRESULT(IAudioMeterInformation *self, uint32* pdwHardwareSupportMask) QueryHardwareSupport;
			}
		}
		
	}
}
