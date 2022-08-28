namespace Win32.Media.Audio.Endpoints;

using System;
using Win32.Foundation;
using Win32.Media.Audio;
using Win32.Media.Audio.Apo;
using Win32.Media.KernelStreaming;
using Win32.System.Com;
using Win32.UI.Shell.PropertiesSystem;

static
{
	#region Constants
	public const PROPERTYKEY DEVPKEY_AudioEndpointPlugin_FactoryCLSID = .(.(0x12d83bd7, 0xcf12, 0x46be, 0x85, 0x40, 0x81, 0x27, 0x10, 0xd3, 0x02, 0x1c), 1);
	public const PROPERTYKEY DEVPKEY_AudioEndpointPlugin_DataFlow = .(.(0x12d83bd7, 0xcf12, 0x46be, 0x85, 0x40, 0x81, 0x27, 0x10, 0xd3, 0x02, 0x1c), 2);
	public const PROPERTYKEY DEVPKEY_AudioEndpointPlugin_PnPInterface = .(.(0x12d83bd7, 0xcf12, 0x46be, 0x85, 0x40, 0x81, 0x27, 0x10, 0xd3, 0x02, 0x1c), 3);
	public const PROPERTYKEY DEVPKEY_AudioEndpointPlugin2_FactoryCLSID = .(.(0x12d83bd7, 0xcf12, 0x46be, 0x85, 0x40, 0x81, 0x27, 0x10, 0xd3, 0x02, 0x1c), 4);
	#endregion
	
	#region Enums
	public enum EndpointConnectorType : int32
	{
		HostProcessConnector = 0,
		OffloadConnector = 1,
		LoopbackConnector = 2,
		KeywordDetectorConnector = 3,
		ConnectorCount = 4,
	}
	#endregion
	
	#region Structs
	[CRepr]
	public struct AUDIO_ENDPOINT_SHARED_CREATE_PARAMS
	{
		public uint32 u32Size;
		public uint32 u32TSSessionId;
		public EndpointConnectorType targetEndpointConnectorType;
		public WAVEFORMATEX wfxDeviceFormat;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_DEVINTERFACE_AUDIOENDPOINTPLUGIN = .(0x9f2f7b66, 0x65ac, 0x4fa6, 0x8a, 0xe4, 0x12, 0x3c, 0x78, 0xb8, 0x93, 0x13);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IAudioEndpointFormatControl : IUnknown
	{
		public const new Guid IID = .(0x784cfd40, 0x9f89, 0x456e, 0xa1, 0xa6, 0x87, 0x3b, 0x00, 0x6a, 0x66, 0x4e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ResetToDefault(uint32 ResetFlags) mut => VT.ResetToDefault(ref this, ResetFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointFormatControl self, uint32 ResetFlags) ResetToDefault;
		}
	}
	[CRepr]
	public struct IAudioEndpointOffloadStreamVolume : IUnknown
	{
		public const new Guid IID = .(0x64f1dd49, 0x71ca, 0x4281, 0x86, 0x72, 0x3a, 0x9e, 0xdd, 0xd1, 0xd0, 0xb6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetVolumeChannelCount(out uint32 pu32ChannelCount) mut => VT.GetVolumeChannelCount(ref this, out pu32ChannelCount);
		public HRESULT SetChannelVolumes(uint32 u32ChannelCount, ref float pf32Volumes, AUDIO_CURVE_TYPE u32CurveType, ref int64 pCurveDuration) mut => VT.SetChannelVolumes(ref this, u32ChannelCount, ref pf32Volumes, u32CurveType, ref pCurveDuration);
		public HRESULT GetChannelVolumes(uint32 u32ChannelCount, out float pf32Volumes) mut => VT.GetChannelVolumes(ref this, u32ChannelCount, out pf32Volumes);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamVolume self, out uint32 pu32ChannelCount) GetVolumeChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamVolume self, uint32 u32ChannelCount, ref float pf32Volumes, AUDIO_CURVE_TYPE u32CurveType, ref int64 pCurveDuration) SetChannelVolumes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamVolume self, uint32 u32ChannelCount, out float pf32Volumes) GetChannelVolumes;
		}
	}
	[CRepr]
	public struct IAudioEndpointOffloadStreamMute : IUnknown
	{
		public const new Guid IID = .(0xdfe21355, 0x5ec2, 0x40e0, 0x8d, 0x6b, 0x71, 0x0a, 0xc3, 0xc0, 0x02, 0x49);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMute(uint8 bMuted) mut => VT.SetMute(ref this, bMuted);
		public HRESULT GetMute(out uint8 pbMuted) mut => VT.GetMute(ref this, out pbMuted);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamMute self, uint8 bMuted) SetMute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamMute self, out uint8 pbMuted) GetMute;
		}
	}
	[CRepr]
	public struct IAudioEndpointOffloadStreamMeter : IUnknown
	{
		public const new Guid IID = .(0xe1546dce, 0x9dd1, 0x418b, 0x9a, 0xb2, 0x34, 0x8c, 0xed, 0x16, 0x1c, 0x86);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMeterChannelCount(out uint32 pu32ChannelCount) mut => VT.GetMeterChannelCount(ref this, out pu32ChannelCount);
		public HRESULT GetMeteringData(uint32 u32ChannelCount, out float pf32PeakValues) mut => VT.GetMeteringData(ref this, u32ChannelCount, out pf32PeakValues);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamMeter self, out uint32 pu32ChannelCount) GetMeterChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointOffloadStreamMeter self, uint32 u32ChannelCount, out float pf32PeakValues) GetMeteringData;
		}
	}
	[CRepr]
	public struct IAudioEndpointLastBufferControl : IUnknown
	{
		public const new Guid IID = .(0xf8520dd3, 0x8f9d, 0x4437, 0x98, 0x61, 0x62, 0xf5, 0x84, 0xc3, 0x3d, 0xd6);
		
		public new VTable* VT { get => (.)vt; }
		
		public BOOL IsLastBufferControlSupported() mut => VT.IsLastBufferControlSupported(ref this);
		public void ReleaseOutputDataPointerForLastBuffer(in APO_CONNECTION_PROPERTY pConnectionProperty) mut => VT.ReleaseOutputDataPointerForLastBuffer(ref this, pConnectionProperty);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] BOOL(ref IAudioEndpointLastBufferControl self) IsLastBufferControlSupported;
			public new function [CallingConvention(.Stdcall)] void(ref IAudioEndpointLastBufferControl self, in APO_CONNECTION_PROPERTY pConnectionProperty) ReleaseOutputDataPointerForLastBuffer;
		}
	}
	[CRepr]
	public struct IAudioLfxControl : IUnknown
	{
		public const new Guid IID = .(0x076a6922, 0xd802, 0x4f83, 0xba, 0xf6, 0x40, 0x9d, 0x9c, 0xa1, 0x1b, 0xfe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetLocalEffectsState(BOOL bEnabled) mut => VT.SetLocalEffectsState(ref this, bEnabled);
		public HRESULT GetLocalEffectsState(out BOOL pbEnabled) mut => VT.GetLocalEffectsState(ref this, out pbEnabled);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioLfxControl self, BOOL bEnabled) SetLocalEffectsState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioLfxControl self, out BOOL pbEnabled) GetLocalEffectsState;
		}
	}
	[CRepr]
	public struct IHardwareAudioEngineBase : IUnknown
	{
		public const new Guid IID = .(0xeddce3e4, 0xf3c1, 0x453a, 0xb4, 0x61, 0x22, 0x35, 0x63, 0xcb, 0xd8, 0x86);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAvailableOffloadConnectorCount(PWSTR _pwstrDeviceId, uint32 _uConnectorId, out uint32 _pAvailableConnectorInstanceCount) mut => VT.GetAvailableOffloadConnectorCount(ref this, _pwstrDeviceId, _uConnectorId, out _pAvailableConnectorInstanceCount);
		public HRESULT GetEngineFormat(ref IMMDevice pDevice, BOOL _bRequestDeviceFormat, out WAVEFORMATEX* _ppwfxFormat) mut => VT.GetEngineFormat(ref this, ref pDevice, _bRequestDeviceFormat, out _ppwfxFormat);
		public HRESULT SetEngineDeviceFormat(ref IMMDevice pDevice, out WAVEFORMATEX _pwfxFormat) mut => VT.SetEngineDeviceFormat(ref this, ref pDevice, out _pwfxFormat);
		public HRESULT SetGfxState(ref IMMDevice pDevice, BOOL _bEnable) mut => VT.SetGfxState(ref this, ref pDevice, _bEnable);
		public HRESULT GetGfxState(ref IMMDevice pDevice, out BOOL _pbEnable) mut => VT.GetGfxState(ref this, ref pDevice, out _pbEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHardwareAudioEngineBase self, PWSTR _pwstrDeviceId, uint32 _uConnectorId, out uint32 _pAvailableConnectorInstanceCount) GetAvailableOffloadConnectorCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHardwareAudioEngineBase self, ref IMMDevice pDevice, BOOL _bRequestDeviceFormat, out WAVEFORMATEX* _ppwfxFormat) GetEngineFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHardwareAudioEngineBase self, ref IMMDevice pDevice, out WAVEFORMATEX _pwfxFormat) SetEngineDeviceFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHardwareAudioEngineBase self, ref IMMDevice pDevice, BOOL _bEnable) SetGfxState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHardwareAudioEngineBase self, ref IMMDevice pDevice, out BOOL _pbEnable) GetGfxState;
		}
	}
	[CRepr]
	public struct IAudioEndpointVolumeCallback : IUnknown
	{
		public const new Guid IID = .(0x657804fa, 0xd6ad, 0x4496, 0x8a, 0x60, 0x35, 0x27, 0x52, 0xaf, 0x4f, 0x89);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnNotify(out AUDIO_VOLUME_NOTIFICATION_DATA pNotify) mut => VT.OnNotify(ref this, out pNotify);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolumeCallback self, out AUDIO_VOLUME_NOTIFICATION_DATA pNotify) OnNotify;
		}
	}
	[CRepr]
	public struct IAudioEndpointVolume : IUnknown
	{
		public const new Guid IID = .(0x5cdf2c82, 0x841e, 0x4546, 0x97, 0x22, 0x0c, 0xf7, 0x40, 0x78, 0x22, 0x9a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterControlChangeNotify(ref IAudioEndpointVolumeCallback pNotify) mut => VT.RegisterControlChangeNotify(ref this, ref pNotify);
		public HRESULT UnregisterControlChangeNotify(ref IAudioEndpointVolumeCallback pNotify) mut => VT.UnregisterControlChangeNotify(ref this, ref pNotify);
		public HRESULT GetChannelCount(out uint32 pnChannelCount) mut => VT.GetChannelCount(ref this, out pnChannelCount);
		public HRESULT SetMasterVolumeLevel(float fLevelDB, in Guid pguidEventContext) mut => VT.SetMasterVolumeLevel(ref this, fLevelDB, pguidEventContext);
		public HRESULT SetMasterVolumeLevelScalar(float fLevel, in Guid pguidEventContext) mut => VT.SetMasterVolumeLevelScalar(ref this, fLevel, pguidEventContext);
		public HRESULT GetMasterVolumeLevel(out float pfLevelDB) mut => VT.GetMasterVolumeLevel(ref this, out pfLevelDB);
		public HRESULT GetMasterVolumeLevelScalar(out float pfLevel) mut => VT.GetMasterVolumeLevelScalar(ref this, out pfLevel);
		public HRESULT SetChannelVolumeLevel(uint32 nChannel, float fLevelDB, in Guid pguidEventContext) mut => VT.SetChannelVolumeLevel(ref this, nChannel, fLevelDB, pguidEventContext);
		public HRESULT SetChannelVolumeLevelScalar(uint32 nChannel, float fLevel, in Guid pguidEventContext) mut => VT.SetChannelVolumeLevelScalar(ref this, nChannel, fLevel, pguidEventContext);
		public HRESULT GetChannelVolumeLevel(uint32 nChannel, out float pfLevelDB) mut => VT.GetChannelVolumeLevel(ref this, nChannel, out pfLevelDB);
		public HRESULT GetChannelVolumeLevelScalar(uint32 nChannel, out float pfLevel) mut => VT.GetChannelVolumeLevelScalar(ref this, nChannel, out pfLevel);
		public HRESULT SetMute(BOOL bMute, in Guid pguidEventContext) mut => VT.SetMute(ref this, bMute, pguidEventContext);
		public HRESULT GetMute(out BOOL pbMute) mut => VT.GetMute(ref this, out pbMute);
		public HRESULT GetVolumeStepInfo(out uint32 pnStep, out uint32 pnStepCount) mut => VT.GetVolumeStepInfo(ref this, out pnStep, out pnStepCount);
		public HRESULT VolumeStepUp(in Guid pguidEventContext) mut => VT.VolumeStepUp(ref this, pguidEventContext);
		public HRESULT VolumeStepDown(in Guid pguidEventContext) mut => VT.VolumeStepDown(ref this, pguidEventContext);
		public HRESULT QueryHardwareSupport(out uint32 pdwHardwareSupportMask) mut => VT.QueryHardwareSupport(ref this, out pdwHardwareSupportMask);
		public HRESULT GetVolumeRange(out float pflVolumeMindB, out float pflVolumeMaxdB, out float pflVolumeIncrementdB) mut => VT.GetVolumeRange(ref this, out pflVolumeMindB, out pflVolumeMaxdB, out pflVolumeIncrementdB);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, ref IAudioEndpointVolumeCallback pNotify) RegisterControlChangeNotify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, ref IAudioEndpointVolumeCallback pNotify) UnregisterControlChangeNotify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out uint32 pnChannelCount) GetChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, float fLevelDB, in Guid pguidEventContext) SetMasterVolumeLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, float fLevel, in Guid pguidEventContext) SetMasterVolumeLevelScalar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out float pfLevelDB) GetMasterVolumeLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out float pfLevel) GetMasterVolumeLevelScalar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, uint32 nChannel, float fLevelDB, in Guid pguidEventContext) SetChannelVolumeLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, uint32 nChannel, float fLevel, in Guid pguidEventContext) SetChannelVolumeLevelScalar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, uint32 nChannel, out float pfLevelDB) GetChannelVolumeLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, uint32 nChannel, out float pfLevel) GetChannelVolumeLevelScalar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, BOOL bMute, in Guid pguidEventContext) SetMute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out BOOL pbMute) GetMute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out uint32 pnStep, out uint32 pnStepCount) GetVolumeStepInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, in Guid pguidEventContext) VolumeStepUp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, in Guid pguidEventContext) VolumeStepDown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out uint32 pdwHardwareSupportMask) QueryHardwareSupport;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolume self, out float pflVolumeMindB, out float pflVolumeMaxdB, out float pflVolumeIncrementdB) GetVolumeRange;
		}
	}
	[CRepr]
	public struct IAudioEndpointVolumeEx : IAudioEndpointVolume
	{
		public const new Guid IID = .(0x66e11784, 0xf695, 0x4f28, 0xa5, 0x05, 0xa7, 0x08, 0x00, 0x81, 0xa7, 0x8f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetVolumeRangeChannel(uint32 iChannel, out float pflVolumeMindB, out float pflVolumeMaxdB, out float pflVolumeIncrementdB) mut => VT.GetVolumeRangeChannel(ref this, iChannel, out pflVolumeMindB, out pflVolumeMaxdB, out pflVolumeIncrementdB);

		[CRepr]
		public struct VTable : IAudioEndpointVolume.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioEndpointVolumeEx self, uint32 iChannel, out float pflVolumeMindB, out float pflVolumeMaxdB, out float pflVolumeIncrementdB) GetVolumeRangeChannel;
		}
	}
	[CRepr]
	public struct IAudioMeterInformation : IUnknown
	{
		public const new Guid IID = .(0xc02216f6, 0x8c67, 0x4b5b, 0x9d, 0x00, 0xd0, 0x08, 0xe7, 0x3e, 0x00, 0x64);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPeakValue(out float pfPeak) mut => VT.GetPeakValue(ref this, out pfPeak);
		public HRESULT GetMeteringChannelCount(out uint32 pnChannelCount) mut => VT.GetMeteringChannelCount(ref this, out pnChannelCount);
		public HRESULT GetChannelsPeakValues(uint32 u32ChannelCount, float* afPeakValues) mut => VT.GetChannelsPeakValues(ref this, u32ChannelCount, afPeakValues);
		public HRESULT QueryHardwareSupport(out uint32 pdwHardwareSupportMask) mut => VT.QueryHardwareSupport(ref this, out pdwHardwareSupportMask);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMeterInformation self, out float pfPeak) GetPeakValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMeterInformation self, out uint32 pnChannelCount) GetMeteringChannelCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMeterInformation self, uint32 u32ChannelCount, float* afPeakValues) GetChannelsPeakValues;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAudioMeterInformation self, out uint32 pdwHardwareSupportMask) QueryHardwareSupport;
		}
	}
	#endregion
	
}
