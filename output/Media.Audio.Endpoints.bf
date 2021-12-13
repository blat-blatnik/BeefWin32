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
		
		public struct IAudioEndpointFormatControl {}
		public struct IAudioEndpointOffloadStreamVolume {}
		public struct IAudioEndpointOffloadStreamMute {}
		public struct IAudioEndpointOffloadStreamMeter {}
		public struct IAudioEndpointLastBufferControl {}
		public struct IAudioLfxControl {}
		public struct IHardwareAudioEngineBase {}
		public struct IAudioEndpointVolumeCallback {}
		public struct IAudioEndpointVolume {}
		public struct IAudioEndpointVolumeEx {}
		public struct IAudioMeterInformation {}
		
	}
}
