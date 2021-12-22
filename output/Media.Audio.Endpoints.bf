using System;

// namespace Media.Audio.Endpoints
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum EndpointConnectorType : int32
		{
			HostProcessConnector = 0,
			OffloadConnector = 1,
			LoopbackConnector = 2,
			KeywordDetectorConnector = 3,
			ConnectorCount = 4,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetToDefault(uint32 ResetFlags) mut
			{
				return VT.ResetToDefault(&this, ResetFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointFormatControl *self, uint32 ResetFlags) ResetToDefault;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamVolume : IUnknown
		{
			public const new Guid IID = .(0x64f1dd49, 0x71ca, 0x4281, 0x86, 0x72, 0x3a, 0x9e, 0xdd, 0xd1, 0xd0, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVolumeChannelCount(uint32* pu32ChannelCount) mut
			{
				return VT.GetVolumeChannelCount(&this, pu32ChannelCount);
			}
			public HRESULT SetChannelVolumes(uint32 u32ChannelCount, float* pf32Volumes, AUDIO_CURVE_TYPE u32CurveType, int64* pCurveDuration) mut
			{
				return VT.SetChannelVolumes(&this, u32ChannelCount, pf32Volumes, u32CurveType, pCurveDuration);
			}
			public HRESULT GetChannelVolumes(uint32 u32ChannelCount, float* pf32Volumes) mut
			{
				return VT.GetChannelVolumes(&this, u32ChannelCount, pf32Volumes);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32* pu32ChannelCount) GetVolumeChannelCount;
				public new function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32 u32ChannelCount, float* pf32Volumes, AUDIO_CURVE_TYPE u32CurveType, int64* pCurveDuration) SetChannelVolumes;
				public new function HRESULT(IAudioEndpointOffloadStreamVolume *self, uint32 u32ChannelCount, float* pf32Volumes) GetChannelVolumes;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamMute : IUnknown
		{
			public const new Guid IID = .(0xdfe21355, 0x5ec2, 0x40e0, 0x8d, 0x6b, 0x71, 0x0a, 0xc3, 0xc0, 0x02, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMute(uint8 bMuted) mut
			{
				return VT.SetMute(&this, bMuted);
			}
			public HRESULT GetMute(uint8* pbMuted) mut
			{
				return VT.GetMute(&this, pbMuted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointOffloadStreamMute *self, uint8 bMuted) SetMute;
				public new function HRESULT(IAudioEndpointOffloadStreamMute *self, uint8* pbMuted) GetMute;
			}
		}
		[CRepr]
		public struct IAudioEndpointOffloadStreamMeter : IUnknown
		{
			public const new Guid IID = .(0xe1546dce, 0x9dd1, 0x418b, 0x9a, 0xb2, 0x34, 0x8c, 0xed, 0x16, 0x1c, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMeterChannelCount(uint32* pu32ChannelCount) mut
			{
				return VT.GetMeterChannelCount(&this, pu32ChannelCount);
			}
			public HRESULT GetMeteringData(uint32 u32ChannelCount, float* pf32PeakValues) mut
			{
				return VT.GetMeteringData(&this, u32ChannelCount, pf32PeakValues);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointOffloadStreamMeter *self, uint32* pu32ChannelCount) GetMeterChannelCount;
				public new function HRESULT(IAudioEndpointOffloadStreamMeter *self, uint32 u32ChannelCount, float* pf32PeakValues) GetMeteringData;
			}
		}
		[CRepr]
		public struct IAudioEndpointLastBufferControl : IUnknown
		{
			public const new Guid IID = .(0xf8520dd3, 0x8f9d, 0x4437, 0x98, 0x61, 0x62, 0xf5, 0x84, 0xc3, 0x3d, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public BOOL IsLastBufferControlSupported() mut
			{
				return VT.IsLastBufferControlSupported(&this);
			}
			public void ReleaseOutputDataPointerForLastBuffer(APO_CONNECTION_PROPERTY* pConnectionProperty) mut
			{
				VT.ReleaseOutputDataPointerForLastBuffer(&this, pConnectionProperty);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function BOOL(IAudioEndpointLastBufferControl *self) IsLastBufferControlSupported;
				public new function void(IAudioEndpointLastBufferControl *self, APO_CONNECTION_PROPERTY* pConnectionProperty) ReleaseOutputDataPointerForLastBuffer;
			}
		}
		[CRepr]
		public struct IAudioLfxControl : IUnknown
		{
			public const new Guid IID = .(0x076a6922, 0xd802, 0x4f83, 0xba, 0xf6, 0x40, 0x9d, 0x9c, 0xa1, 0x1b, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLocalEffectsState(BOOL bEnabled) mut
			{
				return VT.SetLocalEffectsState(&this, bEnabled);
			}
			public HRESULT GetLocalEffectsState(BOOL* pbEnabled) mut
			{
				return VT.GetLocalEffectsState(&this, pbEnabled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioLfxControl *self, BOOL bEnabled) SetLocalEffectsState;
				public new function HRESULT(IAudioLfxControl *self, BOOL* pbEnabled) GetLocalEffectsState;
			}
		}
		[CRepr]
		public struct IHardwareAudioEngineBase : IUnknown
		{
			public const new Guid IID = .(0xeddce3e4, 0xf3c1, 0x453a, 0xb4, 0x61, 0x22, 0x35, 0x63, 0xcb, 0xd8, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableOffloadConnectorCount(PWSTR _pwstrDeviceId, uint32 _uConnectorId, uint32* _pAvailableConnectorInstanceCount) mut
			{
				return VT.GetAvailableOffloadConnectorCount(&this, _pwstrDeviceId, _uConnectorId, _pAvailableConnectorInstanceCount);
			}
			public HRESULT GetEngineFormat(IMMDevice* pDevice, BOOL _bRequestDeviceFormat, WAVEFORMATEX** _ppwfxFormat) mut
			{
				return VT.GetEngineFormat(&this, pDevice, _bRequestDeviceFormat, _ppwfxFormat);
			}
			public HRESULT SetEngineDeviceFormat(IMMDevice* pDevice, WAVEFORMATEX* _pwfxFormat) mut
			{
				return VT.SetEngineDeviceFormat(&this, pDevice, _pwfxFormat);
			}
			public HRESULT SetGfxState(IMMDevice* pDevice, BOOL _bEnable) mut
			{
				return VT.SetGfxState(&this, pDevice, _bEnable);
			}
			public HRESULT GetGfxState(IMMDevice* pDevice, BOOL* _pbEnable) mut
			{
				return VT.GetGfxState(&this, pDevice, _pbEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHardwareAudioEngineBase *self, PWSTR _pwstrDeviceId, uint32 _uConnectorId, uint32* _pAvailableConnectorInstanceCount) GetAvailableOffloadConnectorCount;
				public new function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL _bRequestDeviceFormat, WAVEFORMATEX** _ppwfxFormat) GetEngineFormat;
				public new function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, WAVEFORMATEX* _pwfxFormat) SetEngineDeviceFormat;
				public new function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL _bEnable) SetGfxState;
				public new function HRESULT(IHardwareAudioEngineBase *self, IMMDevice* pDevice, BOOL* _pbEnable) GetGfxState;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolumeCallback : IUnknown
		{
			public const new Guid IID = .(0x657804fa, 0xd6ad, 0x4496, 0x8a, 0x60, 0x35, 0x27, 0x52, 0xaf, 0x4f, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNotify(AUDIO_VOLUME_NOTIFICATION_DATA* pNotify) mut
			{
				return VT.OnNotify(&this, pNotify);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointVolumeCallback *self, AUDIO_VOLUME_NOTIFICATION_DATA* pNotify) OnNotify;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolume : IUnknown
		{
			public const new Guid IID = .(0x5cdf2c82, 0x841e, 0x4546, 0x97, 0x22, 0x0c, 0xf7, 0x40, 0x78, 0x22, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterControlChangeNotify(IAudioEndpointVolumeCallback* pNotify) mut
			{
				return VT.RegisterControlChangeNotify(&this, pNotify);
			}
			public HRESULT UnregisterControlChangeNotify(IAudioEndpointVolumeCallback* pNotify) mut
			{
				return VT.UnregisterControlChangeNotify(&this, pNotify);
			}
			public HRESULT GetChannelCount(uint32* pnChannelCount) mut
			{
				return VT.GetChannelCount(&this, pnChannelCount);
			}
			public HRESULT SetMasterVolumeLevel(float fLevelDB, Guid* pguidEventContext) mut
			{
				return VT.SetMasterVolumeLevel(&this, fLevelDB, pguidEventContext);
			}
			public HRESULT SetMasterVolumeLevelScalar(float fLevel, Guid* pguidEventContext) mut
			{
				return VT.SetMasterVolumeLevelScalar(&this, fLevel, pguidEventContext);
			}
			public HRESULT GetMasterVolumeLevel(float* pfLevelDB) mut
			{
				return VT.GetMasterVolumeLevel(&this, pfLevelDB);
			}
			public HRESULT GetMasterVolumeLevelScalar(float* pfLevel) mut
			{
				return VT.GetMasterVolumeLevelScalar(&this, pfLevel);
			}
			public HRESULT SetChannelVolumeLevel(uint32 nChannel, float fLevelDB, Guid* pguidEventContext) mut
			{
				return VT.SetChannelVolumeLevel(&this, nChannel, fLevelDB, pguidEventContext);
			}
			public HRESULT SetChannelVolumeLevelScalar(uint32 nChannel, float fLevel, Guid* pguidEventContext) mut
			{
				return VT.SetChannelVolumeLevelScalar(&this, nChannel, fLevel, pguidEventContext);
			}
			public HRESULT GetChannelVolumeLevel(uint32 nChannel, float* pfLevelDB) mut
			{
				return VT.GetChannelVolumeLevel(&this, nChannel, pfLevelDB);
			}
			public HRESULT GetChannelVolumeLevelScalar(uint32 nChannel, float* pfLevel) mut
			{
				return VT.GetChannelVolumeLevelScalar(&this, nChannel, pfLevel);
			}
			public HRESULT SetMute(BOOL bMute, Guid* pguidEventContext) mut
			{
				return VT.SetMute(&this, bMute, pguidEventContext);
			}
			public HRESULT GetMute(BOOL* pbMute) mut
			{
				return VT.GetMute(&this, pbMute);
			}
			public HRESULT GetVolumeStepInfo(uint32* pnStep, uint32* pnStepCount) mut
			{
				return VT.GetVolumeStepInfo(&this, pnStep, pnStepCount);
			}
			public HRESULT VolumeStepUp(Guid* pguidEventContext) mut
			{
				return VT.VolumeStepUp(&this, pguidEventContext);
			}
			public HRESULT VolumeStepDown(Guid* pguidEventContext) mut
			{
				return VT.VolumeStepDown(&this, pguidEventContext);
			}
			public HRESULT QueryHardwareSupport(uint32* pdwHardwareSupportMask) mut
			{
				return VT.QueryHardwareSupport(&this, pdwHardwareSupportMask);
			}
			public HRESULT GetVolumeRange(float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) mut
			{
				return VT.GetVolumeRange(&this, pflVolumeMindB, pflVolumeMaxdB, pflVolumeIncrementdB);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioEndpointVolume *self, IAudioEndpointVolumeCallback* pNotify) RegisterControlChangeNotify;
				public new function HRESULT(IAudioEndpointVolume *self, IAudioEndpointVolumeCallback* pNotify) UnregisterControlChangeNotify;
				public new function HRESULT(IAudioEndpointVolume *self, uint32* pnChannelCount) GetChannelCount;
				public new function HRESULT(IAudioEndpointVolume *self, float fLevelDB, Guid* pguidEventContext) SetMasterVolumeLevel;
				public new function HRESULT(IAudioEndpointVolume *self, float fLevel, Guid* pguidEventContext) SetMasterVolumeLevelScalar;
				public new function HRESULT(IAudioEndpointVolume *self, float* pfLevelDB) GetMasterVolumeLevel;
				public new function HRESULT(IAudioEndpointVolume *self, float* pfLevel) GetMasterVolumeLevelScalar;
				public new function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float fLevelDB, Guid* pguidEventContext) SetChannelVolumeLevel;
				public new function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float fLevel, Guid* pguidEventContext) SetChannelVolumeLevelScalar;
				public new function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float* pfLevelDB) GetChannelVolumeLevel;
				public new function HRESULT(IAudioEndpointVolume *self, uint32 nChannel, float* pfLevel) GetChannelVolumeLevelScalar;
				public new function HRESULT(IAudioEndpointVolume *self, BOOL bMute, Guid* pguidEventContext) SetMute;
				public new function HRESULT(IAudioEndpointVolume *self, BOOL* pbMute) GetMute;
				public new function HRESULT(IAudioEndpointVolume *self, uint32* pnStep, uint32* pnStepCount) GetVolumeStepInfo;
				public new function HRESULT(IAudioEndpointVolume *self, Guid* pguidEventContext) VolumeStepUp;
				public new function HRESULT(IAudioEndpointVolume *self, Guid* pguidEventContext) VolumeStepDown;
				public new function HRESULT(IAudioEndpointVolume *self, uint32* pdwHardwareSupportMask) QueryHardwareSupport;
				public new function HRESULT(IAudioEndpointVolume *self, float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) GetVolumeRange;
			}
		}
		[CRepr]
		public struct IAudioEndpointVolumeEx : IAudioEndpointVolume
		{
			public const new Guid IID = .(0x66e11784, 0xf695, 0x4f28, 0xa5, 0x05, 0xa7, 0x08, 0x00, 0x81, 0xa7, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVolumeRangeChannel(uint32 iChannel, float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) mut
			{
				return VT.GetVolumeRangeChannel(&this, iChannel, pflVolumeMindB, pflVolumeMaxdB, pflVolumeIncrementdB);
			}
			[CRepr]
			public struct VTable : IAudioEndpointVolume.VTable
			{
				public new function HRESULT(IAudioEndpointVolumeEx *self, uint32 iChannel, float* pflVolumeMindB, float* pflVolumeMaxdB, float* pflVolumeIncrementdB) GetVolumeRangeChannel;
			}
		}
		[CRepr]
		public struct IAudioMeterInformation : IUnknown
		{
			public const new Guid IID = .(0xc02216f6, 0x8c67, 0x4b5b, 0x9d, 0x00, 0xd0, 0x08, 0xe7, 0x3e, 0x00, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPeakValue(float* pfPeak) mut
			{
				return VT.GetPeakValue(&this, pfPeak);
			}
			public HRESULT GetMeteringChannelCount(uint32* pnChannelCount) mut
			{
				return VT.GetMeteringChannelCount(&this, pnChannelCount);
			}
			public HRESULT GetChannelsPeakValues(uint32 u32ChannelCount, float* afPeakValues) mut
			{
				return VT.GetChannelsPeakValues(&this, u32ChannelCount, afPeakValues);
			}
			public HRESULT QueryHardwareSupport(uint32* pdwHardwareSupportMask) mut
			{
				return VT.QueryHardwareSupport(&this, pdwHardwareSupportMask);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAudioMeterInformation *self, float* pfPeak) GetPeakValue;
				public new function HRESULT(IAudioMeterInformation *self, uint32* pnChannelCount) GetMeteringChannelCount;
				public new function HRESULT(IAudioMeterInformation *self, uint32 u32ChannelCount, float* afPeakValues) GetChannelsPeakValues;
				public new function HRESULT(IAudioMeterInformation *self, uint32* pdwHardwareSupportMask) QueryHardwareSupport;
			}
		}
		
	}
}
