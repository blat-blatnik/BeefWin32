using System;

// namespace Media.WindowsMediaFormat
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_INPUT_FRAME = 1;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_OUTPUT_FRAME = 2;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_USES_CURRENT_INPUT_FRAME = 4;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_USES_PREVIOUS_INPUT_FRAME = 8;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_MOTION = 1;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_ROTATION = 2;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_BLENDING = 4;
		public const uint32 WMT_VIDEOIMAGE_SAMPLE_ADV_BLENDING = 8;
		public const int32 WMT_VIDEOIMAGE_INTEGER_DENOMINATOR = 65536;
		public const uint32 WMT_VIDEOIMAGE_MAGIC_NUMBER = 491406834;
		public const uint32 WMT_VIDEOIMAGE_MAGIC_NUMBER_2 = 491406835;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_BOW_TIE = 11;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_CIRCLE = 12;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_CROSS_FADE = 13;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_DIAGONAL = 14;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_DIAMOND = 15;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_FADE_TO_COLOR = 16;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_FILLED_V = 17;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_FLIP = 18;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_INSET = 19;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_IRIS = 20;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_PAGE_ROLL = 21;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_RECTANGLE = 23;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_REVEAL = 24;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_SLIDE = 27;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_SPLIT = 29;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_STAR = 30;
		public const uint32 WMT_VIDEOIMAGE_TRANSITION_WHEEL = 31;
		public const uint32 WM_SampleExtension_ContentType_Size = 1;
		public const uint32 WM_SampleExtension_PixelAspectRatio_Size = 2;
		public const uint32 WM_SampleExtension_Timecode_Size = 14;
		public const uint32 WM_SampleExtension_SampleDuration_Size = 2;
		public const uint32 WM_SampleExtension_ChromaLocation_Size = 1;
		public const uint32 WM_SampleExtension_ColorSpaceInfo_Size = 3;
		public const uint32 WM_CT_REPEAT_FIRST_FIELD = 16;
		public const uint32 WM_CT_BOTTOM_FIELD_FIRST = 32;
		public const uint32 WM_CT_TOP_FIELD_FIRST = 64;
		public const uint32 WM_CT_INTERLACED = 128;
		public const uint32 WM_CL_INTERLACED420 = 0;
		public const uint32 WM_CL_PROGRESSIVE420 = 1;
		public const uint32 WM_MAX_VIDEO_STREAMS = 63;
		public const uint32 WM_MAX_STREAMS = 63;
		public const uint32 WMDRM_IMPORT_INIT_STRUCT_DEFINED = 1;
		public const uint32 DRM_OPL_TYPES = 1;
		public const uint32 g_dwWMSpecialAttributes = 20;
		public const String g_wszWMDuration = "Duration";
		public const String g_wszWMBitrate = "Bitrate";
		public const String g_wszWMSeekable = "Seekable";
		public const String g_wszWMStridable = "Stridable";
		public const String g_wszWMBroadcast = "Broadcast";
		public const String g_wszWMProtected = "Is_Protected";
		public const String g_wszWMTrusted = "Is_Trusted";
		public const String g_wszWMSignature_Name = "Signature_Name";
		public const String g_wszWMHasAudio = "HasAudio";
		public const String g_wszWMHasImage = "HasImage";
		public const String g_wszWMHasScript = "HasScript";
		public const String g_wszWMHasVideo = "HasVideo";
		public const String g_wszWMCurrentBitrate = "CurrentBitrate";
		public const String g_wszWMOptimalBitrate = "OptimalBitrate";
		public const String g_wszWMHasAttachedImages = "HasAttachedImages";
		public const String g_wszWMSkipBackward = "Can_Skip_Backward";
		public const String g_wszWMSkipForward = "Can_Skip_Forward";
		public const String g_wszWMNumberOfFrames = "NumberOfFrames";
		public const String g_wszWMFileSize = "FileSize";
		public const String g_wszWMHasArbitraryDataStream = "HasArbitraryDataStream";
		public const String g_wszWMHasFileTransferStream = "HasFileTransferStream";
		public const String g_wszWMContainerFormat = "WM/ContainerFormat";
		public const uint32 g_dwWMContentAttributes = 5;
		public const String g_wszWMTitle = "Title";
		public const String g_wszWMTitleSort = "TitleSort";
		public const String g_wszWMAuthor = "Author";
		public const String g_wszWMAuthorSort = "AuthorSort";
		public const String g_wszWMDescription = "Description";
		public const String g_wszWMRating = "Rating";
		public const String g_wszWMCopyright = "Copyright";
		public const String g_wszWMUse_DRM = "Use_DRM";
		public const String g_wszWMDRM_Flags = "DRM_Flags";
		public const String g_wszWMDRM_Level = "DRM_Level";
		public const String g_wszWMUse_Advanced_DRM = "Use_Advanced_DRM";
		public const String g_wszWMDRM_KeySeed = "DRM_KeySeed";
		public const String g_wszWMDRM_KeyID = "DRM_KeyID";
		public const String g_wszWMDRM_ContentID = "DRM_ContentID";
		public const String g_wszWMDRM_SourceID = "DRM_SourceID";
		public const String g_wszWMDRM_IndividualizedVersion = "DRM_IndividualizedVersion";
		public const String g_wszWMDRM_LicenseAcqURL = "DRM_LicenseAcqURL";
		public const String g_wszWMDRM_V1LicenseAcqURL = "DRM_V1LicenseAcqURL";
		public const String g_wszWMDRM_HeaderSignPrivKey = "DRM_HeaderSignPrivKey";
		public const String g_wszWMDRM_LASignaturePrivKey = "DRM_LASignaturePrivKey";
		public const String g_wszWMDRM_LASignatureCert = "DRM_LASignatureCert";
		public const String g_wszWMDRM_LASignatureLicSrvCert = "DRM_LASignatureLicSrvCert";
		public const String g_wszWMDRM_LASignatureRootCert = "DRM_LASignatureRootCert";
		public const String g_wszWMAlbumTitle = "WM/AlbumTitle";
		public const String g_wszWMAlbumTitleSort = "WM/AlbumTitleSort";
		public const String g_wszWMTrack = "WM/Track";
		public const String g_wszWMPromotionURL = "WM/PromotionURL";
		public const String g_wszWMAlbumCoverURL = "WM/AlbumCoverURL";
		public const String g_wszWMGenre = "WM/Genre";
		public const String g_wszWMYear = "WM/Year";
		public const String g_wszWMGenreID = "WM/GenreID";
		public const String g_wszWMMCDI = "WM/MCDI";
		public const String g_wszWMComposer = "WM/Composer";
		public const String g_wszWMComposerSort = "WM/ComposerSort";
		public const String g_wszWMLyrics = "WM/Lyrics";
		public const String g_wszWMTrackNumber = "WM/TrackNumber";
		public const String g_wszWMToolName = "WM/ToolName";
		public const String g_wszWMToolVersion = "WM/ToolVersion";
		public const String g_wszWMIsVBR = "IsVBR";
		public const String g_wszWMAlbumArtist = "WM/AlbumArtist";
		public const String g_wszWMAlbumArtistSort = "WM/AlbumArtistSort";
		public const String g_wszWMBannerImageType = "BannerImageType";
		public const String g_wszWMBannerImageData = "BannerImageData";
		public const String g_wszWMBannerImageURL = "BannerImageURL";
		public const String g_wszWMCopyrightURL = "CopyrightURL";
		public const String g_wszWMAspectRatioX = "AspectRatioX";
		public const String g_wszWMAspectRatioY = "AspectRatioY";
		public const String g_wszASFLeakyBucketPairs = "ASFLeakyBucketPairs";
		public const uint32 g_dwWMNSCAttributes = 5;
		public const String g_wszWMNSCName = "NSC_Name";
		public const String g_wszWMNSCAddress = "NSC_Address";
		public const String g_wszWMNSCPhone = "NSC_Phone";
		public const String g_wszWMNSCEmail = "NSC_Email";
		public const String g_wszWMNSCDescription = "NSC_Description";
		public const String g_wszWMWriter = "WM/Writer";
		public const String g_wszWMConductor = "WM/Conductor";
		public const String g_wszWMProducer = "WM/Producer";
		public const String g_wszWMDirector = "WM/Director";
		public const String g_wszWMContentGroupDescription = "WM/ContentGroupDescription";
		public const String g_wszWMSubTitle = "WM/SubTitle";
		public const String g_wszWMPartOfSet = "WM/PartOfSet";
		public const String g_wszWMProtectionType = "WM/ProtectionType";
		public const String g_wszWMVideoHeight = "WM/VideoHeight";
		public const String g_wszWMVideoWidth = "WM/VideoWidth";
		public const String g_wszWMVideoFrameRate = "WM/VideoFrameRate";
		public const String g_wszWMMediaClassPrimaryID = "WM/MediaClassPrimaryID";
		public const String g_wszWMMediaClassSecondaryID = "WM/MediaClassSecondaryID";
		public const String g_wszWMPeriod = "WM/Period";
		public const String g_wszWMCategory = "WM/Category";
		public const String g_wszWMPicture = "WM/Picture";
		public const String g_wszWMLyrics_Synchronised = "WM/Lyrics_Synchronised";
		public const String g_wszWMOriginalLyricist = "WM/OriginalLyricist";
		public const String g_wszWMOriginalArtist = "WM/OriginalArtist";
		public const String g_wszWMOriginalAlbumTitle = "WM/OriginalAlbumTitle";
		public const String g_wszWMOriginalReleaseYear = "WM/OriginalReleaseYear";
		public const String g_wszWMOriginalFilename = "WM/OriginalFilename";
		public const String g_wszWMPublisher = "WM/Publisher";
		public const String g_wszWMEncodedBy = "WM/EncodedBy";
		public const String g_wszWMEncodingSettings = "WM/EncodingSettings";
		public const String g_wszWMEncodingTime = "WM/EncodingTime";
		public const String g_wszWMAuthorURL = "WM/AuthorURL";
		public const String g_wszWMUserWebURL = "WM/UserWebURL";
		public const String g_wszWMAudioFileURL = "WM/AudioFileURL";
		public const String g_wszWMAudioSourceURL = "WM/AudioSourceURL";
		public const String g_wszWMLanguage = "WM/Language";
		public const String g_wszWMParentalRating = "WM/ParentalRating";
		public const String g_wszWMBeatsPerMinute = "WM/BeatsPerMinute";
		public const String g_wszWMInitialKey = "WM/InitialKey";
		public const String g_wszWMMood = "WM/Mood";
		public const String g_wszWMText = "WM/Text";
		public const String g_wszWMDVDID = "WM/DVDID";
		public const String g_wszWMWMContentID = "WM/WMContentID";
		public const String g_wszWMWMCollectionID = "WM/WMCollectionID";
		public const String g_wszWMWMCollectionGroupID = "WM/WMCollectionGroupID";
		public const String g_wszWMUniqueFileIdentifier = "WM/UniqueFileIdentifier";
		public const String g_wszWMModifiedBy = "WM/ModifiedBy";
		public const String g_wszWMRadioStationName = "WM/RadioStationName";
		public const String g_wszWMRadioStationOwner = "WM/RadioStationOwner";
		public const String g_wszWMPlaylistDelay = "WM/PlaylistDelay";
		public const String g_wszWMCodec = "WM/Codec";
		public const String g_wszWMDRM = "WM/DRM";
		public const String g_wszWMISRC = "WM/ISRC";
		public const String g_wszWMProvider = "WM/Provider";
		public const String g_wszWMProviderRating = "WM/ProviderRating";
		public const String g_wszWMProviderStyle = "WM/ProviderStyle";
		public const String g_wszWMContentDistributor = "WM/ContentDistributor";
		public const String g_wszWMSubscriptionContentID = "WM/SubscriptionContentID";
		public const String g_wszWMWMADRCPeakReference = "WM/WMADRCPeakReference";
		public const String g_wszWMWMADRCPeakTarget = "WM/WMADRCPeakTarget";
		public const String g_wszWMWMADRCAverageReference = "WM/WMADRCAverageReference";
		public const String g_wszWMWMADRCAverageTarget = "WM/WMADRCAverageTarget";
		public const String g_wszWMStreamTypeInfo = "WM/StreamTypeInfo";
		public const String g_wszWMPeakBitrate = "WM/PeakBitrate";
		public const String g_wszWMASFPacketCount = "WM/ASFPacketCount";
		public const String g_wszWMASFSecurityObjectsSize = "WM/ASFSecurityObjectsSize";
		public const String g_wszWMSharedUserRating = "WM/SharedUserRating";
		public const String g_wszWMSubTitleDescription = "WM/SubTitleDescription";
		public const String g_wszWMMediaCredits = "WM/MediaCredits";
		public const String g_wszWMParentalRatingReason = "WM/ParentalRatingReason";
		public const String g_wszWMOriginalReleaseTime = "WM/OriginalReleaseTime";
		public const String g_wszWMMediaStationCallSign = "WM/MediaStationCallSign";
		public const String g_wszWMMediaStationName = "WM/MediaStationName";
		public const String g_wszWMMediaNetworkAffiliation = "WM/MediaNetworkAffiliation";
		public const String g_wszWMMediaOriginalChannel = "WM/MediaOriginalChannel";
		public const String g_wszWMMediaOriginalBroadcastDateTime = "WM/MediaOriginalBroadcastDateTime";
		public const String g_wszWMMediaIsStereo = "WM/MediaIsStereo";
		public const String g_wszWMVideoClosedCaptioning = "WM/VideoClosedCaptioning";
		public const String g_wszWMMediaIsRepeat = "WM/MediaIsRepeat";
		public const String g_wszWMMediaIsLive = "WM/MediaIsLive";
		public const String g_wszWMMediaIsTape = "WM/MediaIsTape";
		public const String g_wszWMMediaIsDelay = "WM/MediaIsDelay";
		public const String g_wszWMMediaIsSubtitled = "WM/MediaIsSubtitled";
		public const String g_wszWMMediaIsPremiere = "WM/MediaIsPremiere";
		public const String g_wszWMMediaIsFinale = "WM/MediaIsFinale";
		public const String g_wszWMMediaIsSAP = "WM/MediaIsSAP";
		public const String g_wszWMProviderCopyright = "WM/ProviderCopyright";
		public const String g_wszWMISAN = "WM/ISAN";
		public const String g_wszWMADID = "WM/ADID";
		public const String g_wszWMWMShadowFileSourceFileType = "WM/WMShadowFileSourceFileType";
		public const String g_wszWMWMShadowFileSourceDRMType = "WM/WMShadowFileSourceDRMType";
		public const String g_wszWMWMCPDistributor = "WM/WMCPDistributor";
		public const String g_wszWMWMCPDistributorID = "WM/WMCPDistributorID";
		public const String g_wszWMSeasonNumber = "WM/SeasonNumber";
		public const String g_wszWMEpisodeNumber = "WM/EpisodeNumber";
		public const String g_wszEarlyDataDelivery = "EarlyDataDelivery";
		public const String g_wszJustInTimeDecode = "JustInTimeDecode";
		public const String g_wszSingleOutputBuffer = "SingleOutputBuffer";
		public const String g_wszSoftwareScaling = "SoftwareScaling";
		public const String g_wszDeliverOnReceive = "DeliverOnReceive";
		public const String g_wszScrambledAudio = "ScrambledAudio";
		public const String g_wszDedicatedDeliveryThread = "DedicatedDeliveryThread";
		public const String g_wszEnableDiscreteOutput = "EnableDiscreteOutput";
		public const String g_wszSpeakerConfig = "SpeakerConfig";
		public const String g_wszDynamicRangeControl = "DynamicRangeControl";
		public const String g_wszAllowInterlacedOutput = "AllowInterlacedOutput";
		public const String g_wszVideoSampleDurations = "VideoSampleDurations";
		public const String g_wszStreamLanguage = "StreamLanguage";
		public const String g_wszEnableWMAProSPDIFOutput = "EnableWMAProSPDIFOutput";
		public const String g_wszDeinterlaceMode = "DeinterlaceMode";
		public const String g_wszInitialPatternForInverseTelecine = "InitialPatternForInverseTelecine";
		public const String g_wszJPEGCompressionQuality = "JPEGCompressionQuality";
		public const String g_wszWatermarkCLSID = "WatermarkCLSID";
		public const String g_wszWatermarkConfig = "WatermarkConfig";
		public const String g_wszInterlacedCoding = "InterlacedCoding";
		public const String g_wszFixedFrameRate = "FixedFrameRate";
		public const String g_wszOriginalSourceFormatTag = "_SOURCEFORMATTAG";
		public const String g_wszOriginalWaveFormat = "_ORIGINALWAVEFORMAT";
		public const String g_wszEDL = "_EDL";
		public const String g_wszComplexity = "_COMPLEXITYEX";
		public const String g_wszDecoderComplexityRequested = "_DECODERCOMPLEXITYPROFILE";
		public const String g_wszReloadIndexOnSeek = "ReloadIndexOnSeek";
		public const String g_wszStreamNumIndexObjects = "StreamNumIndexObjects";
		public const String g_wszFailSeekOnError = "FailSeekOnError";
		public const String g_wszPermitSeeksBeyondEndOfStream = "PermitSeeksBeyondEndOfStream";
		public const String g_wszUsePacketAtSeekPoint = "UsePacketAtSeekPoint";
		public const String g_wszSourceBufferTime = "SourceBufferTime";
		public const String g_wszSourceMaxBytesAtOnce = "SourceMaxBytesAtOnce";
		public const String g_wszVBREnabled = "_VBRENABLED";
		public const String g_wszVBRQuality = "_VBRQUALITY";
		public const String g_wszVBRBitrateMax = "_RMAX";
		public const String g_wszVBRBufferWindowMax = "_BMAX";
		public const String g_wszVBRPeak = "VBR Peak";
		public const String g_wszBufferAverage = "Buffer Average";
		public const String g_wszComplexityMax = "_COMPLEXITYEXMAX";
		public const String g_wszComplexityOffline = "_COMPLEXITYEXOFFLINE";
		public const String g_wszComplexityLive = "_COMPLEXITYEXLIVE";
		public const String g_wszIsVBRSupported = "_ISVBRSUPPORTED";
		public const String g_wszNumPasses = "_PASSESUSED";
		public const String g_wszMusicSpeechClassMode = "MusicSpeechClassMode";
		public const String g_wszMusicClassMode = "MusicClassMode";
		public const String g_wszSpeechClassMode = "SpeechClassMode";
		public const String g_wszMixedClassMode = "MixedClassMode";
		public const String g_wszSpeechCaps = "SpeechFormatCap";
		public const String g_wszPeakValue = "PeakValue";
		public const String g_wszAverageLevel = "AverageLevel";
		public const String g_wszFold6To2Channels3 = "Fold6To2Channels3";
		public const String g_wszFoldToChannelsTemplate = "Fold%luTo%luChannels%lu";
		public const String g_wszDeviceConformanceTemplate = "DeviceConformanceTemplate";
		public const String g_wszEnableFrameInterpolation = "EnableFrameInterpolation";
		public const String g_wszNeedsPreviousSample = "NeedsPreviousSample";
		public const String g_wszWMIsCompilation = "WM/IsCompilation";
		public const Guid WMMEDIASUBTYPE_Base = .(0x00000000, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIATYPE_Video = .(0x73646976, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_RGB1 = .(0xe436eb78, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB4 = .(0xe436eb79, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB8 = .(0xe436eb7a, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB565 = .(0xe436eb7b, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB555 = .(0xe436eb7c, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB24 = .(0xe436eb7d, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_RGB32 = .(0xe436eb7e, 0x524f, 0x11ce, 0x9f, 0x53, 0x00, 0x20, 0xaf, 0x0b, 0xa7, 0x70);
		public const Guid WMMEDIASUBTYPE_I420 = .(0x30323449, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_IYUV = .(0x56555949, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_YV12 = .(0x32315659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_YUY2 = .(0x32595559, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_P422 = .(0x32323450, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_UYVY = .(0x59565955, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_YVYU = .(0x55595659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_YVU9 = .(0x39555659, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_VIDEOIMAGE = .(0x1d4a45f2, 0xe5f6, 0x4b44, 0x83, 0x88, 0xf0, 0xae, 0x5c, 0x0e, 0x0c, 0x37);
		public const Guid WMMEDIASUBTYPE_MP43 = .(0x3334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_MP4S = .(0x5334504d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_M4S2 = .(0x3253344d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMV1 = .(0x31564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMV2 = .(0x32564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_MSS1 = .(0x3153534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_MPEG2_VIDEO = .(0xe06d8026, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid WMMEDIATYPE_Audio = .(0x73647561, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_PCM = .(0x00000001, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_DRM = .(0x00000009, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMAudioV9 = .(0x00000162, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMAudio_Lossless = .(0x00000163, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_MSS2 = .(0x3253534d, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMSP1 = .(0x0000000a, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMSP2 = .(0x0000000b, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMV3 = .(0x33564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMVP = .(0x50564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WVP2 = .(0x32505657, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMVA = .(0x41564d57, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WVC1 = .(0x31435657, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMAudioV8 = .(0x00000161, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMAudioV7 = .(0x00000161, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WMAudioV2 = .(0x00000161, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_ACELPnet = .(0x00000130, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_MP3 = .(0x00000055, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIASUBTYPE_WebStream = .(0x776257d4, 0xc627, 0x41cb, 0x8f, 0x81, 0x7a, 0xc7, 0xff, 0x1c, 0x40, 0xcc);
		public const Guid WMMEDIATYPE_Script = .(0x73636d64, 0x0000, 0x0010, 0x80, 0x00, 0x00, 0xaa, 0x00, 0x38, 0x9b, 0x71);
		public const Guid WMMEDIATYPE_Image = .(0x34a50fd8, 0x8aa5, 0x4386, 0x81, 0xfe, 0xa0, 0xef, 0xe0, 0x48, 0x8e, 0x31);
		public const Guid WMMEDIATYPE_FileTransfer = .(0xd9e47579, 0x930e, 0x4427, 0xad, 0xfc, 0xad, 0x80, 0xf2, 0x90, 0xe4, 0x70);
		public const Guid WMMEDIATYPE_Text = .(0x9bba1ea7, 0x5ab2, 0x4829, 0xba, 0x57, 0x09, 0x40, 0x20, 0x9b, 0xcf, 0x3e);
		public const Guid WMFORMAT_VideoInfo = .(0x05589f80, 0xc356, 0x11ce, 0xbf, 0x01, 0x00, 0xaa, 0x00, 0x55, 0x59, 0x5a);
		public const Guid WMFORMAT_MPEG2Video = .(0xe06d80e3, 0xdb46, 0x11cf, 0xb4, 0xd1, 0x00, 0x80, 0x5f, 0x6c, 0xbb, 0xea);
		public const Guid WMFORMAT_WaveFormatEx = .(0x05589f81, 0xc356, 0x11ce, 0xbf, 0x01, 0x00, 0xaa, 0x00, 0x55, 0x59, 0x5a);
		public const Guid WMFORMAT_Script = .(0x5c8510f2, 0xdebe, 0x4ca7, 0xbb, 0xa5, 0xf0, 0x7a, 0x10, 0x4f, 0x8d, 0xff);
		public const Guid WMFORMAT_WebStream = .(0xda1e6b13, 0x8359, 0x4050, 0xb3, 0x98, 0x38, 0x8e, 0x96, 0x5b, 0xf0, 0x0c);
		public const Guid WMSCRIPTTYPE_TwoStrings = .(0x82f38a70, 0xc29f, 0x11d1, 0x97, 0xad, 0x00, 0xa0, 0xc9, 0x5e, 0xa8, 0x50);
		public const Guid WM_SampleExtensionGUID_OutputCleanPoint = .(0xf72a3c6f, 0x6eb4, 0x4ebc, 0xb1, 0x92, 0x09, 0xad, 0x97, 0x59, 0xe8, 0x28);
		public const Guid WM_SampleExtensionGUID_Timecode = .(0x399595ec, 0x8667, 0x4e2d, 0x8f, 0xdb, 0x98, 0x81, 0x4c, 0xe7, 0x6c, 0x1e);
		public const Guid WM_SampleExtensionGUID_ChromaLocation = .(0x4c5acca0, 0x9276, 0x4b2c, 0x9e, 0x4c, 0xa0, 0xed, 0xef, 0xdd, 0x21, 0x7e);
		public const Guid WM_SampleExtensionGUID_ColorSpaceInfo = .(0xf79ada56, 0x30eb, 0x4f2b, 0x9f, 0x7a, 0xf2, 0x4b, 0x13, 0x9a, 0x11, 0x57);
		public const Guid WM_SampleExtensionGUID_UserDataInfo = .(0x732bb4fa, 0x78be, 0x4549, 0x99, 0xbd, 0x02, 0xdb, 0x1a, 0x55, 0xb7, 0xa8);
		public const Guid WM_SampleExtensionGUID_FileName = .(0xe165ec0e, 0x19ed, 0x45d7, 0xb4, 0xa7, 0x25, 0xcb, 0xd1, 0xe2, 0x8e, 0x9b);
		public const Guid WM_SampleExtensionGUID_ContentType = .(0xd590dc20, 0x07bc, 0x436c, 0x9c, 0xf7, 0xf3, 0xbb, 0xfb, 0xf1, 0xa4, 0xdc);
		public const Guid WM_SampleExtensionGUID_PixelAspectRatio = .(0x1b1ee554, 0xf9ea, 0x4bc8, 0x82, 0x1a, 0x37, 0x6b, 0x74, 0xe4, 0xc4, 0xb8);
		public const Guid WM_SampleExtensionGUID_SampleDuration = .(0xc6bd9450, 0x867f, 0x4907, 0x83, 0xa3, 0xc7, 0x79, 0x21, 0xb7, 0x33, 0xad);
		public const Guid WM_SampleExtensionGUID_SampleProtectionSalt = .(0x5403deee, 0xb9ee, 0x438f, 0xaa, 0x83, 0x38, 0x04, 0x99, 0x7e, 0x56, 0x9d);
		public const Guid CLSID_WMMUTEX_Language = .(0xd6e22a00, 0x35da, 0x11d1, 0x90, 0x34, 0x00, 0xa0, 0xc9, 0x03, 0x49, 0xbe);
		public const Guid CLSID_WMMUTEX_Bitrate = .(0xd6e22a01, 0x35da, 0x11d1, 0x90, 0x34, 0x00, 0xa0, 0xc9, 0x03, 0x49, 0xbe);
		public const Guid CLSID_WMMUTEX_Presentation = .(0xd6e22a02, 0x35da, 0x11d1, 0x90, 0x34, 0x00, 0xa0, 0xc9, 0x03, 0x49, 0xbe);
		public const Guid CLSID_WMMUTEX_Unknown = .(0xd6e22a03, 0x35da, 0x11d1, 0x90, 0x34, 0x00, 0xa0, 0xc9, 0x03, 0x49, 0xbe);
		public const Guid CLSID_WMBandwidthSharing_Exclusive = .(0xaf6060aa, 0x5197, 0x11d2, 0xb6, 0xaf, 0x00, 0xc0, 0x4f, 0xd9, 0x08, 0xe9);
		public const Guid CLSID_WMBandwidthSharing_Partial = .(0xaf6060ab, 0x5197, 0x11d2, 0xb6, 0xaf, 0x00, 0xc0, 0x4f, 0xd9, 0x08, 0xe9);
		public const Guid WMT_DMOCATEGORY_AUDIO_WATERMARK = .(0x65221c5a, 0xfa75, 0x4b39, 0xb5, 0x0c, 0x06, 0xc3, 0x36, 0xb6, 0xa3, 0xef);
		public const Guid WMT_DMOCATEGORY_VIDEO_WATERMARK = .(0x187cc922, 0x8efc, 0x4404, 0x9d, 0xaf, 0x63, 0xf4, 0x83, 0x0d, 0xf1, 0xbc);
		public const Guid CLSID_ClientNetManager = .(0xcd12a3ce, 0x9c42, 0x11d2, 0xbe, 0xed, 0x00, 0x60, 0x08, 0x2f, 0x20, 0x54);
		
		// --- Enums ---
		
		public enum _AM_ASFWRITERCONFIG_PARAM : int32
		{
			AUTOINDEX = 1,
			MULTIPASS = 2,
			DONTCOMPRESS = 3,
		}
		public enum WEBSTREAM_SAMPLE_TYPE : int32
		{
			FILE = 1,
			RENDER = 2,
		}
		public enum WM_SF_TYPE : int32
		{
			CLEANPOINT = 1,
			DISCONTINUITY = 2,
			DATALOSS = 4,
		}
		public enum WM_SFEX_TYPE : int32
		{
			NOTASYNCPOINT = 2,
			DATALOSS = 4,
		}
		[AllowDuplicates]
		public enum WMT_STATUS : int32
		{
			ERROR = 0,
			OPENED = 1,
			BUFFERING_START = 2,
			BUFFERING_STOP = 3,
			EOF = 4,
			END_OF_FILE = 4,
			END_OF_SEGMENT = 5,
			END_OF_STREAMING = 6,
			LOCATING = 7,
			CONNECTING = 8,
			NO_RIGHTS = 9,
			MISSING_CODEC = 10,
			STARTED = 11,
			STOPPED = 12,
			CLOSED = 13,
			STRIDING = 14,
			TIMER = 15,
			INDEX_PROGRESS = 16,
			SAVEAS_START = 17,
			SAVEAS_STOP = 18,
			NEW_SOURCEFLAGS = 19,
			NEW_METADATA = 20,
			BACKUPRESTORE_BEGIN = 21,
			SOURCE_SWITCH = 22,
			ACQUIRE_LICENSE = 23,
			INDIVIDUALIZE = 24,
			NEEDS_INDIVIDUALIZATION = 25,
			NO_RIGHTS_EX = 26,
			BACKUPRESTORE_END = 27,
			BACKUPRESTORE_CONNECTING = 28,
			BACKUPRESTORE_DISCONNECTING = 29,
			ERROR_WITHURL = 30,
			RESTRICTED_LICENSE = 31,
			CLIENT_CONNECT = 32,
			CLIENT_DISCONNECT = 33,
			NATIVE_OUTPUT_PROPS_CHANGED = 34,
			RECONNECT_START = 35,
			RECONNECT_END = 36,
			CLIENT_CONNECT_EX = 37,
			CLIENT_DISCONNECT_EX = 38,
			SET_FEC_SPAN = 39,
			PREROLL_READY = 40,
			PREROLL_COMPLETE = 41,
			CLIENT_PROPERTIES = 42,
			LICENSEURL_SIGNATURE_STATE = 43,
			INIT_PLAYLIST_BURN = 44,
			TRANSCRYPTOR_INIT = 45,
			TRANSCRYPTOR_SEEKED = 46,
			TRANSCRYPTOR_READ = 47,
			TRANSCRYPTOR_CLOSED = 48,
			PROXIMITY_RESULT = 49,
			PROXIMITY_COMPLETED = 50,
			CONTENT_ENABLER = 51,
		}
		public enum WMT_STREAM_SELECTION : int32
		{
			OFF = 0,
			CLEANPOINT_ONLY = 1,
			ON = 2,
		}
		public enum WMT_IMAGE_TYPE : int32
		{
			NONE = 0,
			BITMAP = 1,
			JPEG = 2,
			GIF = 3,
		}
		public enum WMT_ATTR_DATATYPE : int32
		{
			DWORD = 0,
			STRING = 1,
			BINARY = 2,
			BOOL = 3,
			QWORD = 4,
			WORD = 5,
			GUID = 6,
		}
		public enum WMT_ATTR_IMAGETYPE : int32
		{
			BITMAP = 1,
			JPEG = 2,
			GIF = 3,
		}
		public enum WMT_VERSION : int32
		{
			_4_0 = 262144,
			_7_0 = 458752,
			_8_0 = 524288,
			_9_0 = 589824,
		}
		public enum WMT_STORAGE_FORMAT : int32
		{
			MP3 = 0,
			V1 = 1,
		}
		public enum WMT_DRMLA_TRUST : int32
		{
			UNTRUSTED = 0,
			TRUSTED = 1,
			TAMPERED = 2,
		}
		public enum WMT_TRANSPORT_TYPE : int32
		{
			Unreliable = 0,
			Reliable = 1,
		}
		public enum WMT_NET_PROTOCOL : int32
		{
			PROTOCOL_HTTP = 0,
		}
		public enum WMT_PLAY_MODE : int32
		{
			AUTOSELECT = 0,
			LOCAL = 1,
			DOWNLOAD = 2,
			STREAMING = 3,
		}
		public enum WMT_PROXY_SETTINGS : int32
		{
			NONE = 0,
			MANUAL = 1,
			AUTO = 2,
			BROWSER = 3,
			MAX = 4,
		}
		public enum WMT_CODEC_INFO_TYPE : int32
		{
			AUDIO = 0,
			VIDEO = 1,
			UNKNOWN = -1,
		}
		public enum WM_DM_INTERLACED_TYPE : int32
		{
			NOTINTERLACED = 0,
			DEINTERLACE_NORMAL = 1,
			DEINTERLACE_HALFSIZE = 2,
			DEINTERLACE_HALFSIZEDOUBLERATE = 3,
			DEINTERLACE_INVERSETELECINE = 4,
			DEINTERLACE_VERTICALHALFSIZEDOUBLERATE = 5,
		}
		public enum WM_DM_IT_FIRST_FRAME_COHERENCY : int32
		{
			DISABLE_COHERENT_MODE = 0,
			FIRST_FRAME_IN_CLIP_IS_AA_TOP = 1,
			FIRST_FRAME_IN_CLIP_IS_BB_TOP = 2,
			FIRST_FRAME_IN_CLIP_IS_BC_TOP = 3,
			FIRST_FRAME_IN_CLIP_IS_CD_TOP = 4,
			FIRST_FRAME_IN_CLIP_IS_DD_TOP = 5,
			FIRST_FRAME_IN_CLIP_IS_AA_BOTTOM = 6,
			FIRST_FRAME_IN_CLIP_IS_BB_BOTTOM = 7,
			FIRST_FRAME_IN_CLIP_IS_BC_BOTTOM = 8,
			FIRST_FRAME_IN_CLIP_IS_CD_BOTTOM = 9,
			FIRST_FRAME_IN_CLIP_IS_DD_BOTTOM = 10,
		}
		public enum WMT_OFFSET_FORMAT : int32
		{
			_100NS = 0,
			FRAME_NUMBERS = 1,
			PLAYLIST_OFFSET = 2,
			TIMECODE = 3,
			_100NS_APPROXIMATE = 4,
		}
		public enum WMT_INDEXER_TYPE : int32
		{
			PRESENTATION_TIME = 0,
			FRAME_NUMBERS = 1,
			TIMECODE = 2,
		}
		public enum WMT_INDEX_TYPE : int32
		{
			DATA_UNIT = 1,
			OBJECT = 2,
			CLEAN_POINT = 3,
		}
		public enum WMT_FILESINK_MODE : int32
		{
			SINGLE_BUFFERS = 1,
			FILESINK_DATA_UNITS = 2,
			FILESINK_UNBUFFERED = 4,
		}
		public enum WMT_MUSICSPEECH_CLASS_MODE : int32
		{
			MUSIC = 0,
			SPEECH = 1,
			MIXED = 2,
		}
		public enum WMT_WATERMARK_ENTRY_TYPE : int32
		{
			AUDIO = 1,
			VIDEO = 2,
		}
		public enum WM_PLAYBACK_DRC_LEVEL : int32
		{
			HIGH = 0,
			MEDIUM = 1,
			LOW = 2,
		}
		public enum WMT_TIMECODE_FRAMERATE : int32
		{
			_30 = 0,
			_30DROP = 1,
			_25 = 2,
			_24 = 3,
		}
		public enum WMT_CREDENTIAL_FLAGS : int32
		{
			SAVE = 1,
			DONT_CACHE = 2,
			CLEAR_TEXT = 4,
			PROXY = 8,
			ENCRYPT = 16,
		}
		public enum WM_AETYPE : int32
		{
			INCLUDE = 105,
			EXCLUDE = 101,
		}
		public enum WMT_RIGHTS : int32
		{
			PLAYBACK = 1,
			COPY_TO_NON_SDMI_DEVICE = 2,
			COPY_TO_CD = 8,
			COPY_TO_SDMI_DEVICE = 16,
			ONE_TIME = 32,
			SAVE_STREAM_PROTECTED = 64,
			COPY = 128,
			COLLABORATIVE_PLAY = 256,
			SDMI_TRIGGER = 65536,
			SDMI_NOMORECOPIES = 131072,
		}
		public enum NETSOURCE_URLCREDPOLICY_SETTINGS : int32
		{
			SILENTLOGONOK = 0,
			MUSTPROMPTUSER = 1,
			ANONYMOUSONLY = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct AM_WMT_EVENT_DATA
		{
			public HRESULT hrStatus;
			public void* pData;
		}
		[CRepr, Packed(2)]
		public struct WM_STREAM_PRIORITY_RECORD
		{
			public uint16 wStreamNumber;
			public BOOL fMandatory;
		}
		[CRepr]
		public struct WM_WRITER_STATISTICS
		{
			public uint64 qwSampleCount;
			public uint64 qwByteCount;
			public uint64 qwDroppedSampleCount;
			public uint64 qwDroppedByteCount;
			public uint32 dwCurrentBitrate;
			public uint32 dwAverageBitrate;
			public uint32 dwExpectedBitrate;
			public uint32 dwCurrentSampleRate;
			public uint32 dwAverageSampleRate;
			public uint32 dwExpectedSampleRate;
		}
		[CRepr]
		public struct WM_WRITER_STATISTICS_EX
		{
			public uint32 dwBitratePlusOverhead;
			public uint32 dwCurrentSampleDropRateInQueue;
			public uint32 dwCurrentSampleDropRateInCodec;
			public uint32 dwCurrentSampleDropRateInMultiplexer;
			public uint32 dwTotalSampleDropsInQueue;
			public uint32 dwTotalSampleDropsInCodec;
			public uint32 dwTotalSampleDropsInMultiplexer;
		}
		[CRepr]
		public struct WM_READER_STATISTICS
		{
			public uint32 cbSize;
			public uint32 dwBandwidth;
			public uint32 cPacketsReceived;
			public uint32 cPacketsRecovered;
			public uint32 cPacketsLost;
			public uint16 wQuality;
		}
		[CRepr]
		public struct WM_READER_CLIENTINFO
		{
			public uint32 cbSize;
			public PWSTR wszLang;
			public PWSTR wszBrowserUserAgent;
			public PWSTR wszBrowserWebPage;
			public uint64 qwReserved;
			public LPARAM* pReserved;
			public PWSTR wszHostExe;
			public uint64 qwHostVersion;
			public PWSTR wszPlayerUserAgent;
		}
		[CRepr]
		public struct WM_CLIENT_PROPERTIES
		{
			public uint32 dwIPAddress;
			public uint32 dwPort;
		}
		[CRepr]
		public struct WM_CLIENT_PROPERTIES_EX
		{
			public uint32 cbSize;
			public PWSTR pwszIPAddress;
			public PWSTR pwszPort;
			public PWSTR pwszDNSName;
		}
		[CRepr]
		public struct WM_PORT_NUMBER_RANGE
		{
			public uint16 wPortBegin;
			public uint16 wPortEnd;
		}
		[CRepr]
		public struct WMT_BUFFER_SEGMENT
		{
			public INSSBuffer* pBuffer;
			public uint32 cbOffset;
			public uint32 cbLength;
		}
		[CRepr]
		public struct WMT_PAYLOAD_FRAGMENT
		{
			public uint32 dwPayloadIndex;
			public WMT_BUFFER_SEGMENT segmentData;
		}
		[CRepr]
		public struct WMT_FILESINK_DATA_UNIT
		{
			public WMT_BUFFER_SEGMENT packetHeaderBuffer;
			public uint32 cPayloads;
			public WMT_BUFFER_SEGMENT* pPayloadHeaderBuffers;
			public uint32 cPayloadDataFragments;
			public WMT_PAYLOAD_FRAGMENT* pPayloadDataFragments;
		}
		[CRepr]
		public struct WMT_WEBSTREAM_FORMAT
		{
			public uint16 cbSize;
			public uint16 cbSampleHeaderFixedData;
			public uint16 wVersion;
			public uint16 wReserved;
		}
		[CRepr]
		public struct WMT_WEBSTREAM_SAMPLE_HEADER
		{
			public uint16 cbLength;
			public uint16 wPart;
			public uint16 cTotalParts;
			public uint16 wSampleType;
			public char16[0] wszURL;
		}
		[CRepr]
		public struct WM_ADDRESS_ACCESSENTRY
		{
			public uint32 dwIPAddress;
			public uint32 dwMask;
		}
		[CRepr, Packed(1)]
		public struct WM_PICTURE
		{
			public PWSTR pwszMIMEType;
			public uint8 bPictureType;
			public PWSTR pwszDescription;
			public uint32 dwDataLen;
			public uint8* pbData;
		}
		[CRepr, Packed(1)]
		public struct WM_SYNCHRONISED_LYRICS
		{
			public uint8 bTimeStampFormat;
			public uint8 bContentType;
			public PWSTR pwszContentDescriptor;
			public uint32 dwLyricsLen;
			public uint8* pbLyrics;
		}
		[CRepr, Packed(1)]
		public struct WM_USER_WEB_URL
		{
			public PWSTR pwszDescription;
			public PWSTR pwszURL;
		}
		[CRepr, Packed(1)]
		public struct WM_USER_TEXT
		{
			public PWSTR pwszDescription;
			public PWSTR pwszText;
		}
		[CRepr, Packed(1)]
		public struct WM_LEAKY_BUCKET_PAIR
		{
			public uint32 dwBitrate;
			public uint32 msBufferWindow;
		}
		[CRepr, Packed(1)]
		public struct WM_STREAM_TYPE_INFO
		{
			public Guid guidMajorType;
			public uint32 cbFormat;
		}
		[CRepr]
		public struct WMT_WATERMARK_ENTRY
		{
			public WMT_WATERMARK_ENTRY_TYPE wmetType;
			public Guid clsid;
			public uint32 cbDisplayName;
			public PWSTR pwszDisplayName;
		}
		[CRepr]
		public struct WMT_VIDEOIMAGE_SAMPLE
		{
			public uint32 dwMagic;
			public uint32 cbStruct;
			public uint32 dwControlFlags;
			public uint32 dwInputFlagsCur;
			public int32 lCurMotionXtoX;
			public int32 lCurMotionYtoX;
			public int32 lCurMotionXoffset;
			public int32 lCurMotionXtoY;
			public int32 lCurMotionYtoY;
			public int32 lCurMotionYoffset;
			public int32 lCurBlendCoef1;
			public int32 lCurBlendCoef2;
			public uint32 dwInputFlagsPrev;
			public int32 lPrevMotionXtoX;
			public int32 lPrevMotionYtoX;
			public int32 lPrevMotionXoffset;
			public int32 lPrevMotionXtoY;
			public int32 lPrevMotionYtoY;
			public int32 lPrevMotionYoffset;
			public int32 lPrevBlendCoef1;
			public int32 lPrevBlendCoef2;
		}
		[CRepr]
		public struct WMT_VIDEOIMAGE_SAMPLE2
		{
			public uint32 dwMagic;
			public uint32 dwStructSize;
			public uint32 dwControlFlags;
			public uint32 dwViewportWidth;
			public uint32 dwViewportHeight;
			public uint32 dwCurrImageWidth;
			public uint32 dwCurrImageHeight;
			public float fCurrRegionX0;
			public float fCurrRegionY0;
			public float fCurrRegionWidth;
			public float fCurrRegionHeight;
			public float fCurrBlendCoef;
			public uint32 dwPrevImageWidth;
			public uint32 dwPrevImageHeight;
			public float fPrevRegionX0;
			public float fPrevRegionY0;
			public float fPrevRegionWidth;
			public float fPrevRegionHeight;
			public float fPrevBlendCoef;
			public uint32 dwEffectType;
			public uint32 dwNumEffectParas;
			public float fEffectPara0;
			public float fEffectPara1;
			public float fEffectPara2;
			public float fEffectPara3;
			public float fEffectPara4;
			public BOOL bKeepPrevImage;
		}
		[CRepr]
		public struct WM_MEDIA_TYPE
		{
			public Guid majortype;
			public Guid subtype;
			public BOOL bFixedSizeSamples;
			public BOOL bTemporalCompression;
			public uint32 lSampleSize;
			public Guid formattype;
			public IUnknown* pUnk;
			public uint32 cbFormat;
			public uint8* pbFormat;
		}
		[CRepr]
		public struct WMVIDEOINFOHEADER
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public BITMAPINFOHEADER bmiHeader;
		}
		[CRepr]
		public struct WMVIDEOINFOHEADER2
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public uint32 dwInterlaceFlags;
			public uint32 dwCopyProtectFlags;
			public uint32 dwPictAspectRatioX;
			public uint32 dwPictAspectRatioY;
			public uint32 dwReserved1;
			public uint32 dwReserved2;
			public BITMAPINFOHEADER bmiHeader;
		}
		[CRepr]
		public struct WMMPEG2VIDEOINFO
		{
			public WMVIDEOINFOHEADER2 hdr;
			public uint32 dwStartTimeCode;
			public uint32 cbSequenceHeader;
			public uint32 dwProfile;
			public uint32 dwLevel;
			public uint32 dwFlags;
			public uint32[0] dwSequenceHeader;
		}
		[CRepr]
		public struct WMSCRIPTFORMAT
		{
			public Guid scriptType;
		}
		[CRepr]
		public struct WMT_COLORSPACEINFO_EXTENSION_DATA
		{
			public uint8 ucColorPrimaries;
			public uint8 ucColorTransferChar;
			public uint8 ucColorMatrixCoef;
		}
		[CRepr, Packed(2)]
		public struct WMT_TIMECODE_EXTENSION_DATA
		{
			public uint16 wRange;
			public uint32 dwTimecode;
			public uint32 dwUserbits;
			public uint32 dwAmFlags;
		}
		[CRepr]
		public struct DRM_VAL16
		{
			public uint8[16] val;
		}
		[CRepr]
		public struct WMDRM_IMPORT_INIT_STRUCT
		{
			public uint32 dwVersion;
			public uint32 cbEncryptedSessionKeyMessage;
			public uint8* pbEncryptedSessionKeyMessage;
			public uint32 cbEncryptedKeyMessage;
			public uint8* pbEncryptedKeyMessage;
		}
		[CRepr]
		public struct DRM_MINIMUM_OUTPUT_PROTECTION_LEVELS
		{
			public uint16 wCompressedDigitalVideo;
			public uint16 wUncompressedDigitalVideo;
			public uint16 wAnalogVideo;
			public uint16 wCompressedDigitalAudio;
			public uint16 wUncompressedDigitalAudio;
		}
		[CRepr]
		public struct DRM_OPL_OUTPUT_IDS
		{
			public uint16 cIds;
			public Guid* rgIds;
		}
		[CRepr]
		public struct DRM_OUTPUT_PROTECTION
		{
			public Guid guidId;
			public uint8 bConfigData;
		}
		[CRepr]
		public struct DRM_VIDEO_OUTPUT_PROTECTION_IDS
		{
			public uint16 cEntries;
			public DRM_OUTPUT_PROTECTION* rgVop;
		}
		[CRepr]
		public struct DRM_PLAY_OPL
		{
			public DRM_MINIMUM_OUTPUT_PROTECTION_LEVELS minOPL;
			public DRM_OPL_OUTPUT_IDS oplIdReserved;
			public DRM_VIDEO_OUTPUT_PROTECTION_IDS vopi;
		}
		[CRepr]
		public struct DRM_COPY_OPL
		{
			public uint16 wMinimumCopyLevel;
			public DRM_OPL_OUTPUT_IDS oplIdIncludes;
			public DRM_OPL_OUTPUT_IDS oplIdExcludes;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IAMWMBufferPass : IUnknown
		{
			public const new Guid IID = .(0x6dd816d7, 0xe740, 0x4123, 0x9e, 0x24, 0x24, 0x44, 0x41, 0x26, 0x44, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNotify(ref IAMWMBufferPassCallback pCallback) mut => VT.SetNotify(ref this, ref pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAMWMBufferPass self, ref IAMWMBufferPassCallback pCallback) SetNotify;
			}
		}
		[CRepr]
		public struct IAMWMBufferPassCallback : IUnknown
		{
			public const new Guid IID = .(0xb25b8372, 0xd2d2, 0x44b2, 0x86, 0x53, 0x1b, 0x8d, 0xae, 0x33, 0x24, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify(ref INSSBuffer3 pNSSBuffer3, ref IPin pPin, ref int64 prtStart, ref int64 prtEnd) mut => VT.Notify(ref this, ref pNSSBuffer3, ref pPin, ref prtStart, ref prtEnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAMWMBufferPassCallback self, ref INSSBuffer3 pNSSBuffer3, ref IPin pPin, ref int64 prtStart, ref int64 prtEnd) Notify;
			}
		}
		[CRepr]
		public struct INSSBuffer : IUnknown
		{
			public const new Guid IID = .(0xe1cd3524, 0x03d7, 0x11d2, 0x9e, 0xed, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLength(out uint32 pdwLength) mut => VT.GetLength(ref this, out pdwLength);
			public HRESULT SetLength(uint32 dwLength) mut => VT.SetLength(ref this, dwLength);
			public HRESULT GetMaxLength(out uint32 pdwLength) mut => VT.GetMaxLength(ref this, out pdwLength);
			public HRESULT GetBuffer(out uint8* ppdwBuffer) mut => VT.GetBuffer(ref this, out ppdwBuffer);
			public HRESULT GetBufferAndLength(out uint8* ppdwBuffer, out uint32 pdwLength) mut => VT.GetBufferAndLength(ref this, out ppdwBuffer, out pdwLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer self, out uint32 pdwLength) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer self, uint32 dwLength) SetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer self, out uint32 pdwLength) GetMaxLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer self, out uint8* ppdwBuffer) GetBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer self, out uint8* ppdwBuffer, out uint32 pdwLength) GetBufferAndLength;
			}
		}
		[CRepr]
		public struct INSSBuffer2 : INSSBuffer
		{
			public const new Guid IID = .(0x4f528693, 0x1035, 0x43fe, 0xb4, 0x28, 0x75, 0x75, 0x61, 0xad, 0x3a, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSampleProperties(uint32 cbProperties, out uint8 pbProperties) mut => VT.GetSampleProperties(ref this, cbProperties, out pbProperties);
			public HRESULT SetSampleProperties(uint32 cbProperties, ref uint8 pbProperties) mut => VT.SetSampleProperties(ref this, cbProperties, ref pbProperties);

			[CRepr]
			public struct VTable : INSSBuffer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer2 self, uint32 cbProperties, out uint8 pbProperties) GetSampleProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer2 self, uint32 cbProperties, ref uint8 pbProperties) SetSampleProperties;
			}
		}
		[CRepr]
		public struct INSSBuffer3 : INSSBuffer2
		{
			public const new Guid IID = .(0xc87ceaaf, 0x75be, 0x4bc4, 0x84, 0xeb, 0xac, 0x27, 0x98, 0x50, 0x76, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProperty(Guid guidBufferProperty, void* pvBufferProperty, uint32 dwBufferPropertySize) mut => VT.SetProperty(ref this, guidBufferProperty, pvBufferProperty, dwBufferPropertySize);
			public HRESULT GetProperty(Guid guidBufferProperty, void* pvBufferProperty, out uint32 pdwBufferPropertySize) mut => VT.GetProperty(ref this, guidBufferProperty, pvBufferProperty, out pdwBufferPropertySize);

			[CRepr]
			public struct VTable : INSSBuffer2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer3 self, Guid guidBufferProperty, void* pvBufferProperty, uint32 dwBufferPropertySize) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer3 self, Guid guidBufferProperty, void* pvBufferProperty, out uint32 pdwBufferPropertySize) GetProperty;
			}
		}
		[CRepr]
		public struct INSSBuffer4 : INSSBuffer3
		{
			public const new Guid IID = .(0xb6b8fd5a, 0x32e2, 0x49d4, 0xa9, 0x10, 0xc2, 0x6c, 0xc8, 0x54, 0x65, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyCount(out uint32 pcBufferProperties) mut => VT.GetPropertyCount(ref this, out pcBufferProperties);
			public HRESULT GetPropertyByIndex(uint32 dwBufferPropertyIndex, out Guid pguidBufferProperty, void* pvBufferProperty, out uint32 pdwBufferPropertySize) mut => VT.GetPropertyByIndex(ref this, dwBufferPropertyIndex, out pguidBufferProperty, pvBufferProperty, out pdwBufferPropertySize);

			[CRepr]
			public struct VTable : INSSBuffer3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer4 self, out uint32 pcBufferProperties) GetPropertyCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSSBuffer4 self, uint32 dwBufferPropertyIndex, out Guid pguidBufferProperty, void* pvBufferProperty, out uint32 pdwBufferPropertySize) GetPropertyByIndex;
			}
		}
		[CRepr]
		public struct IWMSBufferAllocator : IUnknown
		{
			public const new Guid IID = .(0x61103ca4, 0x2033, 0x11d2, 0x9e, 0xf1, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocateBuffer(uint32 dwMaxBufferSize, out INSSBuffer* ppBuffer) mut => VT.AllocateBuffer(ref this, dwMaxBufferSize, out ppBuffer);
			public HRESULT AllocatePageSizeBuffer(uint32 dwMaxBufferSize, out INSSBuffer* ppBuffer) mut => VT.AllocatePageSizeBuffer(ref this, dwMaxBufferSize, out ppBuffer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSBufferAllocator self, uint32 dwMaxBufferSize, out INSSBuffer* ppBuffer) AllocateBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSBufferAllocator self, uint32 dwMaxBufferSize, out INSSBuffer* ppBuffer) AllocatePageSizeBuffer;
			}
		}
		[CRepr]
		public struct IWMMediaProps : IUnknown
		{
			public const new Guid IID = .(0x96406bce, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguidType) mut => VT.ComGetType(ref this, out pguidType);
			public HRESULT GetMediaType(out WM_MEDIA_TYPE pType, out uint32 pcbType) mut => VT.GetMediaType(ref this, out pType, out pcbType);
			public HRESULT SetMediaType(ref WM_MEDIA_TYPE pType) mut => VT.SetMediaType(ref this, ref pType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMediaProps self, out Guid pguidType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMediaProps self, out WM_MEDIA_TYPE pType, out uint32 pcbType) GetMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMediaProps self, ref WM_MEDIA_TYPE pType) SetMediaType;
			}
		}
		[CRepr]
		public struct IWMVideoMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bcf, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxKeyFrameSpacing(out int64 pllTime) mut => VT.GetMaxKeyFrameSpacing(ref this, out pllTime);
			public HRESULT SetMaxKeyFrameSpacing(int64 llTime) mut => VT.SetMaxKeyFrameSpacing(ref this, llTime);
			public HRESULT GetQuality(out uint32 pdwQuality) mut => VT.GetQuality(ref this, out pdwQuality);
			public HRESULT SetQuality(uint32 dwQuality) mut => VT.SetQuality(ref this, dwQuality);

			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoMediaProps self, out int64 pllTime) GetMaxKeyFrameSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoMediaProps self, int64 llTime) SetMaxKeyFrameSpacing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoMediaProps self, out uint32 pdwQuality) GetQuality;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMVideoMediaProps self, uint32 dwQuality) SetQuality;
			}
		}
		[CRepr]
		public struct IWMWriter : IUnknown
		{
			public const new Guid IID = .(0x96406bd4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProfileByID(in Guid guidProfile) mut => VT.SetProfileByID(ref this, guidProfile);
			public HRESULT SetProfile(ref IWMProfile pProfile) mut => VT.SetProfile(ref this, ref pProfile);
			public HRESULT SetOutputFilename(PWSTR pwszFilename) mut => VT.SetOutputFilename(ref this, pwszFilename);
			public HRESULT GetInputCount(out uint32 pcInputs) mut => VT.GetInputCount(ref this, out pcInputs);
			public HRESULT GetInputProps(uint32 dwInputNum, out IWMInputMediaProps* ppInput) mut => VT.GetInputProps(ref this, dwInputNum, out ppInput);
			public HRESULT SetInputProps(uint32 dwInputNum, ref IWMInputMediaProps pInput) mut => VT.SetInputProps(ref this, dwInputNum, ref pInput);
			public HRESULT GetInputFormatCount(uint32 dwInputNumber, out uint32 pcFormats) mut => VT.GetInputFormatCount(ref this, dwInputNumber, out pcFormats);
			public HRESULT GetInputFormat(uint32 dwInputNumber, uint32 dwFormatNumber, out IWMInputMediaProps* pProps) mut => VT.GetInputFormat(ref this, dwInputNumber, dwFormatNumber, out pProps);
			public HRESULT BeginWriting() mut => VT.BeginWriting(ref this);
			public HRESULT EndWriting() mut => VT.EndWriting(ref this);
			public HRESULT AllocateSample(uint32 dwSampleSize, out INSSBuffer* ppSample) mut => VT.AllocateSample(ref this, dwSampleSize, out ppSample);
			public HRESULT WriteSample(uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, ref INSSBuffer pSample) mut => VT.WriteSample(ref this, dwInputNum, cnsSampleTime, dwFlags, ref pSample);
			public HRESULT Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, in Guid guidProfile) SetProfileByID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, ref IWMProfile pProfile) SetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, PWSTR pwszFilename) SetOutputFilename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, out uint32 pcInputs) GetInputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwInputNum, out IWMInputMediaProps* ppInput) GetInputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwInputNum, ref IWMInputMediaProps pInput) SetInputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwInputNumber, out uint32 pcFormats) GetInputFormatCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwInputNumber, uint32 dwFormatNumber, out IWMInputMediaProps* pProps) GetInputFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self) BeginWriting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self) EndWriting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwSampleSize, out INSSBuffer* ppSample) AllocateSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, ref INSSBuffer pSample) WriteSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriter self) Flush;
			}
		}
		[CRepr]
		public struct IWMDRMWriter : IUnknown
		{
			public const new Guid IID = .(0xd6ea5dd0, 0x12a0, 0x43f4, 0x90, 0xab, 0xa3, 0xfd, 0x45, 0x1e, 0x6a, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateKeySeed(char16* pwszKeySeed, out uint32 pcwchLength) mut => VT.GenerateKeySeed(ref this, pwszKeySeed, out pcwchLength);
			public HRESULT GenerateKeyID(char16* pwszKeyID, out uint32 pcwchLength) mut => VT.GenerateKeyID(ref this, pwszKeyID, out pcwchLength);
			public HRESULT GenerateSigningKeyPair(char16* pwszPrivKey, out uint32 pcwchPrivKeyLength, char16* pwszPubKey, out uint32 pcwchPubKeyLength) mut => VT.GenerateSigningKeyPair(ref this, pwszPrivKey, out pcwchPrivKeyLength, pwszPubKey, out pcwchPubKeyLength);
			public HRESULT SetDRMAttribute(uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetDRMAttribute(ref this, wStreamNum, pszName, Type, pValue, cbLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter self, char16* pwszKeySeed, out uint32 pcwchLength) GenerateKeySeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter self, char16* pwszKeyID, out uint32 pcwchLength) GenerateKeyID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter self, char16* pwszPrivKey, out uint32 pcwchPrivKeyLength, char16* pwszPubKey, out uint32 pcwchPubKeyLength) GenerateSigningKeyPair;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetDRMAttribute;
			}
		}
		[CRepr]
		public struct IWMDRMWriter2 : IWMDRMWriter
		{
			public const new Guid IID = .(0x38ee7a94, 0x40e2, 0x4e10, 0xaa, 0x3f, 0x33, 0xfd, 0x32, 0x10, 0xed, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWMDRMNetEncryption(BOOL fSamplesEncrypted, ref uint8 pbKeyID, uint32 cbKeyID) mut => VT.SetWMDRMNetEncryption(ref this, fSamplesEncrypted, ref pbKeyID, cbKeyID);

			[CRepr]
			public struct VTable : IWMDRMWriter.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter2 self, BOOL fSamplesEncrypted, ref uint8 pbKeyID, uint32 cbKeyID) SetWMDRMNetEncryption;
			}
		}
		[CRepr]
		public struct IWMDRMWriter3 : IWMDRMWriter2
		{
			public const new Guid IID = .(0xa7184082, 0xa4aa, 0x4dde, 0xac, 0x9c, 0xe7, 0x5d, 0xbd, 0x11, 0x17, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProtectStreamSamples(ref WMDRM_IMPORT_INIT_STRUCT pImportInitStruct) mut => VT.SetProtectStreamSamples(ref this, ref pImportInitStruct);

			[CRepr]
			public struct VTable : IWMDRMWriter2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMWriter3 self, ref WMDRM_IMPORT_INIT_STRUCT pImportInitStruct) SetProtectStreamSamples;
			}
		}
		[CRepr]
		public struct IWMInputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionName(char16* pwszName, out uint16 pcchName) mut => VT.GetConnectionName(ref this, pwszName, out pcchName);
			public HRESULT GetGroupName(char16* pwszName, out uint16 pcchName) mut => VT.GetGroupName(ref this, pwszName, out pcchName);

			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMInputMediaProps self, char16* pwszName, out uint16 pcchName) GetConnectionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMInputMediaProps self, char16* pwszName, out uint16 pcchName) GetGroupName;
			}
		}
		[CRepr]
		public struct IWMPropertyVault : IUnknown
		{
			public const new Guid IID = .(0x72995a79, 0x5090, 0x42a4, 0x9c, 0x8c, 0xd9, 0xd0, 0xb6, 0xd3, 0x4b, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyCount(ref uint32 pdwCount) mut => VT.GetPropertyCount(ref this, ref pdwCount);
			public HRESULT GetPropertyByName(PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetPropertyByName(ref this, pszName, out pType, pValue, out pdwSize);
			public HRESULT SetProperty(PWSTR pszName, WMT_ATTR_DATATYPE pType, ref uint8 pValue, uint32 dwSize) mut => VT.SetProperty(ref this, pszName, pType, ref pValue, dwSize);
			public HRESULT GetPropertyByIndex(uint32 dwIndex, char16* pszName, out uint32 pdwNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetPropertyByIndex(ref this, dwIndex, pszName, out pdwNameLen, out pType, pValue, out pdwSize);
			public HRESULT CopyPropertiesFrom(ref IWMPropertyVault pIWMPropertyVault) mut => VT.CopyPropertiesFrom(ref this, ref pIWMPropertyVault);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self, ref uint32 pdwCount) GetPropertyCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetPropertyByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self, PWSTR pszName, WMT_ATTR_DATATYPE pType, ref uint8 pValue, uint32 dwSize) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self, uint32 dwIndex, char16* pszName, out uint32 pdwNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetPropertyByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self, ref IWMPropertyVault pIWMPropertyVault) CopyPropertiesFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPropertyVault self) Clear;
			}
		}
		[CRepr]
		public struct IWMIStreamProps : IUnknown
		{
			public const new Guid IID = .(0x6816dad3, 0x2b4b, 0x4c8e, 0x81, 0x49, 0x87, 0x4c, 0x34, 0x83, 0xa7, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetProperty(ref this, pszName, out pType, pValue, out pdwSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIStreamProps self, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetProperty;
			}
		}
		[CRepr]
		public struct IWMReader : IUnknown
		{
			public const new Guid IID = .(0x96406bd6, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszURL, ref IWMReaderCallback pCallback, void* pvContext) mut => VT.Open(ref this, pwszURL, ref pCallback, pvContext);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT GetOutputCount(out uint32 pcOutputs) mut => VT.GetOutputCount(ref this, out pcOutputs);
			public HRESULT GetOutputProps(uint32 dwOutputNum, out IWMOutputMediaProps* ppOutput) mut => VT.GetOutputProps(ref this, dwOutputNum, out ppOutput);
			public HRESULT SetOutputProps(uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) mut => VT.SetOutputProps(ref this, dwOutputNum, ref pOutput);
			public HRESULT GetOutputFormatCount(uint32 dwOutputNumber, out uint32 pcFormats) mut => VT.GetOutputFormatCount(ref this, dwOutputNumber, out pcFormats);
			public HRESULT GetOutputFormat(uint32 dwOutputNumber, uint32 dwFormatNumber, out IWMOutputMediaProps* ppProps) mut => VT.GetOutputFormat(ref this, dwOutputNumber, dwFormatNumber, out ppProps);
			public HRESULT Start(uint64 cnsStart, uint64 cnsDuration, float fRate, void* pvContext) mut => VT.Start(ref this, cnsStart, cnsDuration, fRate, pvContext);
			public HRESULT Stop() mut => VT.Stop(ref this);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, PWSTR pwszURL, ref IWMReaderCallback pCallback, void* pvContext) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, out uint32 pcOutputs) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, uint32 dwOutputNum, out IWMOutputMediaProps* ppOutput) GetOutputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) SetOutputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, uint32 dwOutputNumber, out uint32 pcFormats) GetOutputFormatCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, uint32 dwOutputNumber, uint32 dwFormatNumber, out IWMOutputMediaProps* ppProps) GetOutputFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self, uint64 cnsStart, uint64 cnsDuration, float fRate, void* pvContext) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReader self) Resume;
			}
		}
		[CRepr]
		public struct IWMSyncReader : IUnknown
		{
			public const new Guid IID = .(0x9397f121, 0x7705, 0x4dc9, 0xb0, 0x49, 0x98, 0xb6, 0x98, 0x18, 0x84, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut => VT.Open(ref this, pwszFilename);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT SetRange(uint64 cnsStartTime, int64 cnsDuration) mut => VT.SetRange(ref this, cnsStartTime, cnsDuration);
			public HRESULT SetRangeByFrame(uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead) mut => VT.SetRangeByFrame(ref this, wStreamNum, qwFrameNumber, cFramesToRead);
			public HRESULT GetNextSample(uint16 wStreamNum, out INSSBuffer* ppSample, out uint64 pcnsSampleTime, out uint64 pcnsDuration, out uint32 pdwFlags, out uint32 pdwOutputNum, out uint16 pwStreamNum) mut => VT.GetNextSample(ref this, wStreamNum, out ppSample, out pcnsSampleTime, out pcnsDuration, out pdwFlags, out pdwOutputNum, out pwStreamNum);
			public HRESULT SetStreamsSelected(uint16 cStreamCount, ref uint16 pwStreamNumbers, ref WMT_STREAM_SELECTION pSelections) mut => VT.SetStreamsSelected(ref this, cStreamCount, ref pwStreamNumbers, ref pSelections);
			public HRESULT GetStreamSelected(uint16 wStreamNum, out WMT_STREAM_SELECTION pSelection) mut => VT.GetStreamSelected(ref this, wStreamNum, out pSelection);
			public HRESULT SetReadStreamSamples(uint16 wStreamNum, BOOL fCompressed) mut => VT.SetReadStreamSamples(ref this, wStreamNum, fCompressed);
			public HRESULT GetReadStreamSamples(uint16 wStreamNum, out BOOL pfCompressed) mut => VT.GetReadStreamSamples(ref this, wStreamNum, out pfCompressed);
			public HRESULT GetOutputSetting(uint32 dwOutputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetOutputSetting(ref this, dwOutputNum, pszName, out pType, pValue, out pcbLength);
			public HRESULT SetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetOutputSetting(ref this, dwOutputNum, pszName, Type, pValue, cbLength);
			public HRESULT GetOutputCount(out uint32 pcOutputs) mut => VT.GetOutputCount(ref this, out pcOutputs);
			public HRESULT GetOutputProps(uint32 dwOutputNum, out IWMOutputMediaProps* ppOutput) mut => VT.GetOutputProps(ref this, dwOutputNum, out ppOutput);
			public HRESULT SetOutputProps(uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) mut => VT.SetOutputProps(ref this, dwOutputNum, ref pOutput);
			public HRESULT GetOutputFormatCount(uint32 dwOutputNum, out uint32 pcFormats) mut => VT.GetOutputFormatCount(ref this, dwOutputNum, out pcFormats);
			public HRESULT GetOutputFormat(uint32 dwOutputNum, uint32 dwFormatNum, out IWMOutputMediaProps* ppProps) mut => VT.GetOutputFormat(ref this, dwOutputNum, dwFormatNum, out ppProps);
			public HRESULT GetOutputNumberForStream(uint16 wStreamNum, out uint32 pdwOutputNum) mut => VT.GetOutputNumberForStream(ref this, wStreamNum, out pdwOutputNum);
			public HRESULT GetStreamNumberForOutput(uint32 dwOutputNum, out uint16 pwStreamNum) mut => VT.GetStreamNumberForOutput(ref this, dwOutputNum, out pwStreamNum);
			public HRESULT GetMaxOutputSampleSize(uint32 dwOutput, out uint32 pcbMax) mut => VT.GetMaxOutputSampleSize(ref this, dwOutput, out pcbMax);
			public HRESULT GetMaxStreamSampleSize(uint16 wStream, out uint32 pcbMax) mut => VT.GetMaxStreamSampleSize(ref this, wStream, out pcbMax);
			public HRESULT OpenStream(ref IStream pStream) mut => VT.OpenStream(ref this, ref pStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, PWSTR pwszFilename) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint64 cnsStartTime, int64 cnsDuration) SetRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead) SetRangeByFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, out INSSBuffer* ppSample, out uint64 pcnsSampleTime, out uint64 pcnsDuration, out uint32 pdwFlags, out uint32 pdwOutputNum, out uint16 pwStreamNum) GetNextSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 cStreamCount, ref uint16 pwStreamNumbers, ref WMT_STREAM_SELECTION pSelections) SetStreamsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, out WMT_STREAM_SELECTION pSelection) GetStreamSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, BOOL fCompressed) SetReadStreamSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, out BOOL pfCompressed) GetReadStreamSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetOutputSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, out uint32 pcOutputs) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, out IWMOutputMediaProps* ppOutput) GetOutputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) SetOutputProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, out uint32 pcFormats) GetOutputFormatCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, uint32 dwFormatNum, out IWMOutputMediaProps* ppProps) GetOutputFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStreamNum, out uint32 pdwOutputNum) GetOutputNumberForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutputNum, out uint16 pwStreamNum) GetStreamNumberForOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint32 dwOutput, out uint32 pcbMax) GetMaxOutputSampleSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, uint16 wStream, out uint32 pcbMax) GetMaxStreamSampleSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader self, ref IStream pStream) OpenStream;
			}
		}
		[CRepr]
		public struct IWMSyncReader2 : IWMSyncReader
		{
			public const new Guid IID = .(0xfaed3d21, 0x1b6b, 0x4af7, 0x8c, 0xb6, 0x3e, 0x18, 0x9b, 0xbc, 0x18, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRangeByTimecode(uint16 wStreamNum, ref WMT_TIMECODE_EXTENSION_DATA pStart, ref WMT_TIMECODE_EXTENSION_DATA pEnd) mut => VT.SetRangeByTimecode(ref this, wStreamNum, ref pStart, ref pEnd);
			public HRESULT SetRangeByFrameEx(uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead, out uint64 pcnsStartTime) mut => VT.SetRangeByFrameEx(ref this, wStreamNum, qwFrameNumber, cFramesToRead, out pcnsStartTime);
			public HRESULT SetAllocateForOutput(uint32 dwOutputNum, ref IWMReaderAllocatorEx pAllocator) mut => VT.SetAllocateForOutput(ref this, dwOutputNum, ref pAllocator);
			public HRESULT GetAllocateForOutput(uint32 dwOutputNum, out IWMReaderAllocatorEx* ppAllocator) mut => VT.GetAllocateForOutput(ref this, dwOutputNum, out ppAllocator);
			public HRESULT SetAllocateForStream(uint16 wStreamNum, ref IWMReaderAllocatorEx pAllocator) mut => VT.SetAllocateForStream(ref this, wStreamNum, ref pAllocator);
			public HRESULT GetAllocateForStream(uint16 dwSreamNum, out IWMReaderAllocatorEx* ppAllocator) mut => VT.GetAllocateForStream(ref this, dwSreamNum, out ppAllocator);

			[CRepr]
			public struct VTable : IWMSyncReader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint16 wStreamNum, ref WMT_TIMECODE_EXTENSION_DATA pStart, ref WMT_TIMECODE_EXTENSION_DATA pEnd) SetRangeByTimecode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead, out uint64 pcnsStartTime) SetRangeByFrameEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint32 dwOutputNum, ref IWMReaderAllocatorEx pAllocator) SetAllocateForOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint32 dwOutputNum, out IWMReaderAllocatorEx* ppAllocator) GetAllocateForOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint16 wStreamNum, ref IWMReaderAllocatorEx pAllocator) SetAllocateForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSyncReader2 self, uint16 dwSreamNum, out IWMReaderAllocatorEx* ppAllocator) GetAllocateForStream;
			}
		}
		[CRepr]
		public struct IWMOutputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamGroupName(char16* pwszName, out uint16 pcchName) mut => VT.GetStreamGroupName(ref this, pwszName, out pcchName);
			public HRESULT GetConnectionName(char16* pwszName, out uint16 pcchName) mut => VT.GetConnectionName(ref this, pwszName, out pcchName);

			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMOutputMediaProps self, char16* pwszName, out uint16 pcchName) GetStreamGroupName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMOutputMediaProps self, char16* pwszName, out uint16 pcchName) GetConnectionName;
			}
		}
		[CRepr]
		public struct IWMStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc70, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatus(WMT_STATUS Status, HRESULT hr, WMT_ATTR_DATATYPE dwType, ref uint8 pValue, void* pvContext) mut => VT.OnStatus(ref this, Status, hr, dwType, ref pValue, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStatusCallback self, WMT_STATUS Status, HRESULT hr, WMT_ATTR_DATATYPE dwType, ref uint8 pValue, void* pvContext) OnStatus;
			}
		}
		[CRepr]
		public struct IWMReaderCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0x96406bd8, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSample(uint32 dwOutputNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) mut => VT.OnSample(ref this, dwOutputNum, cnsSampleTime, cnsSampleDuration, dwFlags, ref pSample, pvContext);

			[CRepr]
			public struct VTable : IWMStatusCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallback self, uint32 dwOutputNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) OnSample;
			}
		}
		[CRepr]
		public struct IWMCredentialCallback : IUnknown
		{
			public const new Guid IID = .(0x342e0eb7, 0xe651, 0x450c, 0x97, 0x5b, 0x2a, 0xce, 0x2c, 0x90, 0xc4, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireCredentials(PWSTR pwszRealm, PWSTR pwszSite, char16* pwszUser, uint32 cchUser, char16* pwszPassword, uint32 cchPassword, HRESULT hrStatus, out uint32 pdwFlags) mut => VT.AcquireCredentials(ref this, pwszRealm, pwszSite, pwszUser, cchUser, pwszPassword, cchPassword, hrStatus, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCredentialCallback self, PWSTR pwszRealm, PWSTR pwszSite, char16* pwszUser, uint32 cchUser, char16* pwszPassword, uint32 cchPassword, HRESULT hrStatus, out uint32 pdwFlags) AcquireCredentials;
			}
		}
		[CRepr]
		public struct IWMMetadataEditor : IUnknown
		{
			public const new Guid IID = .(0x96406bd9, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut => VT.Open(ref this, pwszFilename);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Flush() mut => VT.Flush(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMetadataEditor self, PWSTR pwszFilename) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMetadataEditor self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMetadataEditor self) Flush;
			}
		}
		[CRepr]
		public struct IWMMetadataEditor2 : IWMMetadataEditor
		{
			public const new Guid IID = .(0x203cffe3, 0x2e18, 0x4fdf, 0xb5, 0x9d, 0x6e, 0x71, 0x53, 0x05, 0x34, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenEx(PWSTR pwszFilename, uint32 dwDesiredAccess, uint32 dwShareMode) mut => VT.OpenEx(ref this, pwszFilename, dwDesiredAccess, dwShareMode);

			[CRepr]
			public struct VTable : IWMMetadataEditor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMetadataEditor2 self, PWSTR pwszFilename, uint32 dwDesiredAccess, uint32 dwShareMode) OpenEx;
			}
		}
		[CRepr]
		public struct IWMDRMEditor : IUnknown
		{
			public const new Guid IID = .(0xff130ebc, 0xa6c3, 0x42a6, 0xb4, 0x01, 0xc3, 0x38, 0x2c, 0x3e, 0x08, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDRMProperty(PWSTR pwstrName, out WMT_ATTR_DATATYPE pdwType, uint8* pValue, out uint16 pcbLength) mut => VT.GetDRMProperty(ref this, pwstrName, out pdwType, pValue, out pcbLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMEditor self, PWSTR pwstrName, out WMT_ATTR_DATATYPE pdwType, uint8* pValue, out uint16 pcbLength) GetDRMProperty;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo : IUnknown
		{
			public const new Guid IID = .(0x96406bda, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeCount(uint16 wStreamNum, out uint16 pcAttributes) mut => VT.GetAttributeCount(ref this, wStreamNum, out pcAttributes);
			public HRESULT GetAttributeByIndex(uint16 wIndex, out uint16 pwStreamNum, char16* pwszName, out uint16 pcchNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetAttributeByIndex(ref this, wIndex, out pwStreamNum, pwszName, out pcchNameLen, out pType, pValue, out pcbLength);
			public HRESULT GetAttributeByName(out uint16 pwStreamNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetAttributeByName(ref this, out pwStreamNum, pszName, out pType, pValue, out pcbLength);
			public HRESULT SetAttribute(uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetAttribute(ref this, wStreamNum, pszName, Type, pValue, cbLength);
			public HRESULT GetMarkerCount(out uint16 pcMarkers) mut => VT.GetMarkerCount(ref this, out pcMarkers);
			public HRESULT GetMarker(uint16 wIndex, char16* pwszMarkerName, out uint16 pcchMarkerNameLen, out uint64 pcnsMarkerTime) mut => VT.GetMarker(ref this, wIndex, pwszMarkerName, out pcchMarkerNameLen, out pcnsMarkerTime);
			public HRESULT AddMarker(PWSTR pwszMarkerName, uint64 cnsMarkerTime) mut => VT.AddMarker(ref this, pwszMarkerName, cnsMarkerTime);
			public HRESULT RemoveMarker(uint16 wIndex) mut => VT.RemoveMarker(ref this, wIndex);
			public HRESULT GetScriptCount(out uint16 pcScripts) mut => VT.GetScriptCount(ref this, out pcScripts);
			public HRESULT GetScript(uint16 wIndex, char16* pwszType, out uint16 pcchTypeLen, char16* pwszCommand, out uint16 pcchCommandLen, out uint64 pcnsScriptTime) mut => VT.GetScript(ref this, wIndex, pwszType, out pcchTypeLen, pwszCommand, out pcchCommandLen, out pcnsScriptTime);
			public HRESULT AddScript(PWSTR pwszType, PWSTR pwszCommand, uint64 cnsScriptTime) mut => VT.AddScript(ref this, pwszType, pwszCommand, cnsScriptTime);
			public HRESULT RemoveScript(uint16 wIndex) mut => VT.RemoveScript(ref this, wIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wStreamNum, out uint16 pcAttributes) GetAttributeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wIndex, out uint16 pwStreamNum, char16* pwszName, out uint16 pcchNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetAttributeByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, out uint16 pwStreamNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetAttributeByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, out uint16 pcMarkers) GetMarkerCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wIndex, char16* pwszMarkerName, out uint16 pcchMarkerNameLen, out uint64 pcnsMarkerTime) GetMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, PWSTR pwszMarkerName, uint64 cnsMarkerTime) AddMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wIndex) RemoveMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, out uint16 pcScripts) GetScriptCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wIndex, char16* pwszType, out uint16 pcchTypeLen, char16* pwszCommand, out uint16 pcchCommandLen, out uint64 pcnsScriptTime) GetScript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, PWSTR pwszType, PWSTR pwszCommand, uint64 cnsScriptTime) AddScript;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo self, uint16 wIndex) RemoveScript;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo2 : IWMHeaderInfo
		{
			public const new Guid IID = .(0x15cf9781, 0x454e, 0x482e, 0xb3, 0x93, 0x85, 0xfa, 0xe4, 0x87, 0xa8, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInfoCount(out uint32 pcCodecInfos) mut => VT.GetCodecInfoCount(ref this, out pcCodecInfos);
			public HRESULT GetCodecInfo(uint32 wIndex, out uint16 pcchName, char16* pwszName, out uint16 pcchDescription, char16* pwszDescription, out WMT_CODEC_INFO_TYPE pCodecType, out uint16 pcbCodecInfo, uint8* pbCodecInfo) mut => VT.GetCodecInfo(ref this, wIndex, out pcchName, pwszName, out pcchDescription, pwszDescription, out pCodecType, out pcbCodecInfo, pbCodecInfo);

			[CRepr]
			public struct VTable : IWMHeaderInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo2 self, out uint32 pcCodecInfos) GetCodecInfoCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo2 self, uint32 wIndex, out uint16 pcchName, char16* pwszName, out uint16 pcchDescription, char16* pwszDescription, out WMT_CODEC_INFO_TYPE pCodecType, out uint16 pcbCodecInfo, uint8* pbCodecInfo) GetCodecInfo;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo3 : IWMHeaderInfo2
		{
			public const new Guid IID = .(0x15cc68e3, 0x27cc, 0x4ecd, 0xb2, 0x22, 0x3f, 0x5d, 0x02, 0xd8, 0x0b, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeCountEx(uint16 wStreamNum, out uint16 pcAttributes) mut => VT.GetAttributeCountEx(ref this, wStreamNum, out pcAttributes);
			public HRESULT GetAttributeIndices(uint16 wStreamNum, PWSTR pwszName, ref uint16 pwLangIndex, uint16* pwIndices, out uint16 pwCount) mut => VT.GetAttributeIndices(ref this, wStreamNum, pwszName, ref pwLangIndex, pwIndices, out pwCount);
			public HRESULT GetAttributeByIndexEx(uint16 wStreamNum, uint16 wIndex, char16* pwszName, out uint16 pwNameLen, out WMT_ATTR_DATATYPE pType, out uint16 pwLangIndex, uint8* pValue, out uint32 pdwDataLength) mut => VT.GetAttributeByIndexEx(ref this, wStreamNum, wIndex, pwszName, out pwNameLen, out pType, out pwLangIndex, pValue, out pdwDataLength);
			public HRESULT ModifyAttribute(uint16 wStreamNum, uint16 wIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) mut => VT.ModifyAttribute(ref this, wStreamNum, wIndex, Type, wLangIndex, pValue, dwLength);
			public HRESULT AddAttribute(uint16 wStreamNum, PWSTR pszName, out uint16 pwIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) mut => VT.AddAttribute(ref this, wStreamNum, pszName, out pwIndex, Type, wLangIndex, pValue, dwLength);
			public HRESULT DeleteAttribute(uint16 wStreamNum, uint16 wIndex) mut => VT.DeleteAttribute(ref this, wStreamNum, wIndex);
			public HRESULT AddCodecInfo(PWSTR pwszName, PWSTR pwszDescription, WMT_CODEC_INFO_TYPE codecType, uint16 cbCodecInfo, uint8* pbCodecInfo) mut => VT.AddCodecInfo(ref this, pwszName, pwszDescription, codecType, cbCodecInfo, pbCodecInfo);

			[CRepr]
			public struct VTable : IWMHeaderInfo2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, out uint16 pcAttributes) GetAttributeCountEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, PWSTR pwszName, ref uint16 pwLangIndex, uint16* pwIndices, out uint16 pwCount) GetAttributeIndices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, uint16 wIndex, char16* pwszName, out uint16 pwNameLen, out WMT_ATTR_DATATYPE pType, out uint16 pwLangIndex, uint8* pValue, out uint32 pdwDataLength) GetAttributeByIndexEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, uint16 wIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) ModifyAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, PWSTR pszName, out uint16 pwIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) AddAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, uint16 wStreamNum, uint16 wIndex) DeleteAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMHeaderInfo3 self, PWSTR pwszName, PWSTR pwszDescription, WMT_CODEC_INFO_TYPE codecType, uint16 cbCodecInfo, uint8* pbCodecInfo) AddCodecInfo;
			}
		}
		[CRepr]
		public struct IWMProfileManager : IUnknown
		{
			public const new Guid IID = .(0xd16679f2, 0x6ca0, 0x472d, 0x8d, 0x31, 0x2f, 0x5d, 0x55, 0xae, 0xe1, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEmptyProfile(WMT_VERSION dwVersion, out IWMProfile* ppProfile) mut => VT.CreateEmptyProfile(ref this, dwVersion, out ppProfile);
			public HRESULT LoadProfileByID(in Guid guidProfile, out IWMProfile* ppProfile) mut => VT.LoadProfileByID(ref this, guidProfile, out ppProfile);
			public HRESULT LoadProfileByData(PWSTR pwszProfile, out IWMProfile* ppProfile) mut => VT.LoadProfileByData(ref this, pwszProfile, out ppProfile);
			public HRESULT SaveProfile(ref IWMProfile pIWMProfile, PWSTR pwszProfile, out uint32 pdwLength) mut => VT.SaveProfile(ref this, ref pIWMProfile, pwszProfile, out pdwLength);
			public HRESULT GetSystemProfileCount(out uint32 pcProfiles) mut => VT.GetSystemProfileCount(ref this, out pcProfiles);
			public HRESULT LoadSystemProfile(uint32 dwProfileIndex, out IWMProfile* ppProfile) mut => VT.LoadSystemProfile(ref this, dwProfileIndex, out ppProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, WMT_VERSION dwVersion, out IWMProfile* ppProfile) CreateEmptyProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, in Guid guidProfile, out IWMProfile* ppProfile) LoadProfileByID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, PWSTR pwszProfile, out IWMProfile* ppProfile) LoadProfileByData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, ref IWMProfile pIWMProfile, PWSTR pwszProfile, out uint32 pdwLength) SaveProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, out uint32 pcProfiles) GetSystemProfileCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager self, uint32 dwProfileIndex, out IWMProfile* ppProfile) LoadSystemProfile;
			}
		}
		[CRepr]
		public struct IWMProfileManager2 : IWMProfileManager
		{
			public const new Guid IID = .(0x7a924e51, 0x73c1, 0x494d, 0x80, 0x19, 0x23, 0xd3, 0x7e, 0xd9, 0xb8, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSystemProfileVersion(out WMT_VERSION pdwVersion) mut => VT.GetSystemProfileVersion(ref this, out pdwVersion);
			public HRESULT SetSystemProfileVersion(WMT_VERSION dwVersion) mut => VT.SetSystemProfileVersion(ref this, dwVersion);

			[CRepr]
			public struct VTable : IWMProfileManager.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager2 self, out WMT_VERSION pdwVersion) GetSystemProfileVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManager2 self, WMT_VERSION dwVersion) SetSystemProfileVersion;
			}
		}
		[CRepr]
		public struct IWMProfileManagerLanguage : IUnknown
		{
			public const new Guid IID = .(0xba4dcc78, 0x7ee0, 0x4ab8, 0xb2, 0x7a, 0xdb, 0xce, 0x8b, 0xc5, 0x14, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserLanguageID(out uint16 wLangID) mut => VT.GetUserLanguageID(ref this, out wLangID);
			public HRESULT SetUserLanguageID(uint16 wLangID) mut => VT.SetUserLanguageID(ref this, wLangID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManagerLanguage self, out uint16 wLangID) GetUserLanguageID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfileManagerLanguage self, uint16 wLangID) SetUserLanguageID;
			}
		}
		[CRepr]
		public struct IWMProfile : IUnknown
		{
			public const new Guid IID = .(0x96406bdb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersion(out WMT_VERSION pdwVersion) mut => VT.GetVersion(ref this, out pdwVersion);
			public HRESULT GetName(char16* pwszName, out uint32 pcchName) mut => VT.GetName(ref this, pwszName, out pcchName);
			public HRESULT SetName(PWSTR pwszName) mut => VT.SetName(ref this, pwszName);
			public HRESULT GetDescription(char16* pwszDescription, out uint32 pcchDescription) mut => VT.GetDescription(ref this, pwszDescription, out pcchDescription);
			public HRESULT SetDescription(PWSTR pwszDescription) mut => VT.SetDescription(ref this, pwszDescription);
			public HRESULT GetStreamCount(out uint32 pcStreams) mut => VT.GetStreamCount(ref this, out pcStreams);
			public HRESULT GetStream(uint32 dwStreamIndex, out IWMStreamConfig* ppConfig) mut => VT.GetStream(ref this, dwStreamIndex, out ppConfig);
			public HRESULT GetStreamByNumber(uint16 wStreamNum, out IWMStreamConfig* ppConfig) mut => VT.GetStreamByNumber(ref this, wStreamNum, out ppConfig);
			public HRESULT RemoveStream(ref IWMStreamConfig pConfig) mut => VT.RemoveStream(ref this, ref pConfig);
			public HRESULT RemoveStreamByNumber(uint16 wStreamNum) mut => VT.RemoveStreamByNumber(ref this, wStreamNum);
			public HRESULT AddStream(ref IWMStreamConfig pConfig) mut => VT.AddStream(ref this, ref pConfig);
			public HRESULT ReconfigStream(ref IWMStreamConfig pConfig) mut => VT.ReconfigStream(ref this, ref pConfig);
			public HRESULT CreateNewStream(in Guid guidStreamType, out IWMStreamConfig* ppConfig) mut => VT.CreateNewStream(ref this, guidStreamType, out ppConfig);
			public HRESULT GetMutualExclusionCount(out uint32 pcME) mut => VT.GetMutualExclusionCount(ref this, out pcME);
			public HRESULT GetMutualExclusion(uint32 dwMEIndex, out IWMMutualExclusion* ppME) mut => VT.GetMutualExclusion(ref this, dwMEIndex, out ppME);
			public HRESULT RemoveMutualExclusion(ref IWMMutualExclusion pME) mut => VT.RemoveMutualExclusion(ref this, ref pME);
			public HRESULT AddMutualExclusion(ref IWMMutualExclusion pME) mut => VT.AddMutualExclusion(ref this, ref pME);
			public HRESULT CreateNewMutualExclusion(out IWMMutualExclusion* ppME) mut => VT.CreateNewMutualExclusion(ref this, out ppME);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, out WMT_VERSION pdwVersion) GetVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, char16* pwszName, out uint32 pcchName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, PWSTR pwszName) SetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, char16* pwszDescription, out uint32 pcchDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, PWSTR pwszDescription) SetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, out uint32 pcStreams) GetStreamCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, uint32 dwStreamIndex, out IWMStreamConfig* ppConfig) GetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, uint16 wStreamNum, out IWMStreamConfig* ppConfig) GetStreamByNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, ref IWMStreamConfig pConfig) RemoveStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, uint16 wStreamNum) RemoveStreamByNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, ref IWMStreamConfig pConfig) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, ref IWMStreamConfig pConfig) ReconfigStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, in Guid guidStreamType, out IWMStreamConfig* ppConfig) CreateNewStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, out uint32 pcME) GetMutualExclusionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, uint32 dwMEIndex, out IWMMutualExclusion* ppME) GetMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, ref IWMMutualExclusion pME) RemoveMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, ref IWMMutualExclusion pME) AddMutualExclusion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile self, out IWMMutualExclusion* ppME) CreateNewMutualExclusion;
			}
		}
		[CRepr]
		public struct IWMProfile2 : IWMProfile
		{
			public const new Guid IID = .(0x07e72d33, 0xd94e, 0x4be7, 0x88, 0x43, 0x60, 0xae, 0x5f, 0xf7, 0xe5, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProfileID(out Guid pguidID) mut => VT.GetProfileID(ref this, out pguidID);

			[CRepr]
			public struct VTable : IWMProfile.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile2 self, out Guid pguidID) GetProfileID;
			}
		}
		[CRepr]
		public struct IWMProfile3 : IWMProfile2
		{
			public const new Guid IID = .(0x00ef96cc, 0xa461, 0x4546, 0x8b, 0xcd, 0xc9, 0xa2, 0x8f, 0x0e, 0x06, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStorageFormat(out WMT_STORAGE_FORMAT pnStorageFormat) mut => VT.GetStorageFormat(ref this, out pnStorageFormat);
			public HRESULT SetStorageFormat(WMT_STORAGE_FORMAT nStorageFormat) mut => VT.SetStorageFormat(ref this, nStorageFormat);
			public HRESULT GetBandwidthSharingCount(out uint32 pcBS) mut => VT.GetBandwidthSharingCount(ref this, out pcBS);
			public HRESULT GetBandwidthSharing(uint32 dwBSIndex, out IWMBandwidthSharing* ppBS) mut => VT.GetBandwidthSharing(ref this, dwBSIndex, out ppBS);
			public HRESULT RemoveBandwidthSharing(ref IWMBandwidthSharing pBS) mut => VT.RemoveBandwidthSharing(ref this, ref pBS);
			public HRESULT AddBandwidthSharing(ref IWMBandwidthSharing pBS) mut => VT.AddBandwidthSharing(ref this, ref pBS);
			public HRESULT CreateNewBandwidthSharing(out IWMBandwidthSharing* ppBS) mut => VT.CreateNewBandwidthSharing(ref this, out ppBS);
			public HRESULT GetStreamPrioritization(out IWMStreamPrioritization* ppSP) mut => VT.GetStreamPrioritization(ref this, out ppSP);
			public HRESULT SetStreamPrioritization(ref IWMStreamPrioritization pSP) mut => VT.SetStreamPrioritization(ref this, ref pSP);
			public HRESULT RemoveStreamPrioritization() mut => VT.RemoveStreamPrioritization(ref this);
			public HRESULT CreateNewStreamPrioritization(out IWMStreamPrioritization* ppSP) mut => VT.CreateNewStreamPrioritization(ref this, out ppSP);
			public HRESULT GetExpectedPacketCount(uint64 msDuration, out uint64 pcPackets) mut => VT.GetExpectedPacketCount(ref this, msDuration, out pcPackets);

			[CRepr]
			public struct VTable : IWMProfile2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, out WMT_STORAGE_FORMAT pnStorageFormat) GetStorageFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, WMT_STORAGE_FORMAT nStorageFormat) SetStorageFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, out uint32 pcBS) GetBandwidthSharingCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, uint32 dwBSIndex, out IWMBandwidthSharing* ppBS) GetBandwidthSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, ref IWMBandwidthSharing pBS) RemoveBandwidthSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, ref IWMBandwidthSharing pBS) AddBandwidthSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, out IWMBandwidthSharing* ppBS) CreateNewBandwidthSharing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, out IWMStreamPrioritization* ppSP) GetStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, ref IWMStreamPrioritization pSP) SetStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self) RemoveStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, out IWMStreamPrioritization* ppSP) CreateNewStreamPrioritization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProfile3 self, uint64 msDuration, out uint64 pcPackets) GetExpectedPacketCount;
			}
		}
		[CRepr]
		public struct IWMStreamConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bdc, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamType(out Guid pguidStreamType) mut => VT.GetStreamType(ref this, out pguidStreamType);
			public HRESULT GetStreamNumber(out uint16 pwStreamNum) mut => VT.GetStreamNumber(ref this, out pwStreamNum);
			public HRESULT SetStreamNumber(uint16 wStreamNum) mut => VT.SetStreamNumber(ref this, wStreamNum);
			public HRESULT GetStreamName(char16* pwszStreamName, out uint16 pcchStreamName) mut => VT.GetStreamName(ref this, pwszStreamName, out pcchStreamName);
			public HRESULT SetStreamName(PWSTR pwszStreamName) mut => VT.SetStreamName(ref this, pwszStreamName);
			public HRESULT GetConnectionName(char16* pwszInputName, out uint16 pcchInputName) mut => VT.GetConnectionName(ref this, pwszInputName, out pcchInputName);
			public HRESULT SetConnectionName(PWSTR pwszInputName) mut => VT.SetConnectionName(ref this, pwszInputName);
			public HRESULT GetBitrate(out uint32 pdwBitrate) mut => VT.GetBitrate(ref this, out pdwBitrate);
			public HRESULT SetBitrate(uint32 pdwBitrate) mut => VT.SetBitrate(ref this, pdwBitrate);
			public HRESULT GetBufferWindow(out uint32 pmsBufferWindow) mut => VT.GetBufferWindow(ref this, out pmsBufferWindow);
			public HRESULT SetBufferWindow(uint32 msBufferWindow) mut => VT.SetBufferWindow(ref this, msBufferWindow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, out Guid pguidStreamType) GetStreamType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, out uint16 pwStreamNum) GetStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, uint16 wStreamNum) SetStreamNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, char16* pwszStreamName, out uint16 pcchStreamName) GetStreamName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, PWSTR pwszStreamName) SetStreamName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, char16* pwszInputName, out uint16 pcchInputName) GetConnectionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, PWSTR pwszInputName) SetConnectionName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, out uint32 pdwBitrate) GetBitrate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, uint32 pdwBitrate) SetBitrate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, out uint32 pmsBufferWindow) GetBufferWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig self, uint32 msBufferWindow) SetBufferWindow;
			}
		}
		[CRepr]
		public struct IWMStreamConfig2 : IWMStreamConfig
		{
			public const new Guid IID = .(0x7688d8cb, 0xfc0d, 0x43bd, 0x94, 0x59, 0x5a, 0x8d, 0xec, 0x20, 0x0c, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransportType(out WMT_TRANSPORT_TYPE pnTransportType) mut => VT.GetTransportType(ref this, out pnTransportType);
			public HRESULT SetTransportType(WMT_TRANSPORT_TYPE nTransportType) mut => VT.SetTransportType(ref this, nTransportType);
			public HRESULT AddDataUnitExtension(Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) mut => VT.AddDataUnitExtension(ref this, guidExtensionSystemID, cbExtensionDataSize, pbExtensionSystemInfo, cbExtensionSystemInfo);
			public HRESULT GetDataUnitExtensionCount(out uint16 pcDataUnitExtensions) mut => VT.GetDataUnitExtensionCount(ref this, out pcDataUnitExtensions);
			public HRESULT GetDataUnitExtension(uint16 wDataUnitExtensionNumber, out Guid pguidExtensionSystemID, out uint16 pcbExtensionDataSize, uint8* pbExtensionSystemInfo, out uint32 pcbExtensionSystemInfo) mut => VT.GetDataUnitExtension(ref this, wDataUnitExtensionNumber, out pguidExtensionSystemID, out pcbExtensionDataSize, pbExtensionSystemInfo, out pcbExtensionSystemInfo);
			public HRESULT RemoveAllDataUnitExtensions() mut => VT.RemoveAllDataUnitExtensions(ref this);

			[CRepr]
			public struct VTable : IWMStreamConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self, out WMT_TRANSPORT_TYPE pnTransportType) GetTransportType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self, WMT_TRANSPORT_TYPE nTransportType) SetTransportType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self, Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) AddDataUnitExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self, out uint16 pcDataUnitExtensions) GetDataUnitExtensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self, uint16 wDataUnitExtensionNumber, out Guid pguidExtensionSystemID, out uint16 pcbExtensionDataSize, uint8* pbExtensionSystemInfo, out uint32 pcbExtensionSystemInfo) GetDataUnitExtension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig2 self) RemoveAllDataUnitExtensions;
			}
		}
		[CRepr]
		public struct IWMStreamConfig3 : IWMStreamConfig2
		{
			public const new Guid IID = .(0xcb164104, 0x3aa9, 0x45a7, 0x9a, 0xc9, 0x4d, 0xae, 0xe1, 0x31, 0xd6, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguage(char16* pwszLanguageString, out uint16 pcchLanguageStringLength) mut => VT.GetLanguage(ref this, pwszLanguageString, out pcchLanguageStringLength);
			public HRESULT SetLanguage(PWSTR pwszLanguageString) mut => VT.SetLanguage(ref this, pwszLanguageString);

			[CRepr]
			public struct VTable : IWMStreamConfig2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig3 self, char16* pwszLanguageString, out uint16 pcchLanguageStringLength) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamConfig3 self, PWSTR pwszLanguageString) SetLanguage;
			}
		}
		[CRepr]
		public struct IWMPacketSize : IUnknown
		{
			public const new Guid IID = .(0xcdfb97ab, 0x188f, 0x40b3, 0xb6, 0x43, 0x5b, 0x79, 0x03, 0x97, 0x5c, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxPacketSize(out uint32 pdwMaxPacketSize) mut => VT.GetMaxPacketSize(ref this, out pdwMaxPacketSize);
			public HRESULT SetMaxPacketSize(uint32 dwMaxPacketSize) mut => VT.SetMaxPacketSize(ref this, dwMaxPacketSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPacketSize self, out uint32 pdwMaxPacketSize) GetMaxPacketSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPacketSize self, uint32 dwMaxPacketSize) SetMaxPacketSize;
			}
		}
		[CRepr]
		public struct IWMPacketSize2 : IWMPacketSize
		{
			public const new Guid IID = .(0x8bfc2b9e, 0xb646, 0x4233, 0xa8, 0x77, 0x1c, 0x6a, 0x07, 0x96, 0x69, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMinPacketSize(out uint32 pdwMinPacketSize) mut => VT.GetMinPacketSize(ref this, out pdwMinPacketSize);
			public HRESULT SetMinPacketSize(uint32 dwMinPacketSize) mut => VT.SetMinPacketSize(ref this, dwMinPacketSize);

			[CRepr]
			public struct VTable : IWMPacketSize.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPacketSize2 self, out uint32 pdwMinPacketSize) GetMinPacketSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPacketSize2 self, uint32 dwMinPacketSize) SetMinPacketSize;
			}
		}
		[CRepr]
		public struct IWMStreamList : IUnknown
		{
			public const new Guid IID = .(0x96406bdd, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreams(uint16* pwStreamNumArray, out uint16 pcStreams) mut => VT.GetStreams(ref this, pwStreamNumArray, out pcStreams);
			public HRESULT AddStream(uint16 wStreamNum) mut => VT.AddStream(ref this, wStreamNum);
			public HRESULT RemoveStream(uint16 wStreamNum) mut => VT.RemoveStream(ref this, wStreamNum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamList self, uint16* pwStreamNumArray, out uint16 pcStreams) GetStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamList self, uint16 wStreamNum) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamList self, uint16 wStreamNum) RemoveStream;
			}
		}
		[CRepr]
		public struct IWMMutualExclusion : IWMStreamList
		{
			public const new Guid IID = .(0x96406bde, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguidType) mut => VT.ComGetType(ref this, out pguidType);
			public HRESULT SetType(in Guid guidType) mut => VT.SetType(ref this, guidType);

			[CRepr]
			public struct VTable : IWMStreamList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion self, out Guid pguidType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion self, in Guid guidType) SetType;
			}
		}
		[CRepr]
		public struct IWMMutualExclusion2 : IWMMutualExclusion
		{
			public const new Guid IID = .(0x0302b57d, 0x89d1, 0x4ba2, 0x85, 0xc9, 0x16, 0x6f, 0x2c, 0x53, 0xeb, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(char16* pwszName, out uint16 pcchName) mut => VT.GetName(ref this, pwszName, out pcchName);
			public HRESULT SetName(PWSTR pwszName) mut => VT.SetName(ref this, pwszName);
			public HRESULT GetRecordCount(out uint16 pwRecordCount) mut => VT.GetRecordCount(ref this, out pwRecordCount);
			public HRESULT AddRecord() mut => VT.AddRecord(ref this);
			public HRESULT RemoveRecord(uint16 wRecordNumber) mut => VT.RemoveRecord(ref this, wRecordNumber);
			public HRESULT GetRecordName(uint16 wRecordNumber, char16* pwszRecordName, out uint16 pcchRecordName) mut => VT.GetRecordName(ref this, wRecordNumber, pwszRecordName, out pcchRecordName);
			public HRESULT SetRecordName(uint16 wRecordNumber, PWSTR pwszRecordName) mut => VT.SetRecordName(ref this, wRecordNumber, pwszRecordName);
			public HRESULT GetStreamsForRecord(uint16 wRecordNumber, uint16* pwStreamNumArray, out uint16 pcStreams) mut => VT.GetStreamsForRecord(ref this, wRecordNumber, pwStreamNumArray, out pcStreams);
			public HRESULT AddStreamForRecord(uint16 wRecordNumber, uint16 wStreamNumber) mut => VT.AddStreamForRecord(ref this, wRecordNumber, wStreamNumber);
			public HRESULT RemoveStreamForRecord(uint16 wRecordNumber, uint16 wStreamNumber) mut => VT.RemoveStreamForRecord(ref this, wRecordNumber, wStreamNumber);

			[CRepr]
			public struct VTable : IWMMutualExclusion.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, char16* pwszName, out uint16 pcchName) GetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, PWSTR pwszName) SetName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, out uint16 pwRecordCount) GetRecordCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self) AddRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber) RemoveRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber, char16* pwszRecordName, out uint16 pcchRecordName) GetRecordName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber, PWSTR pwszRecordName) SetRecordName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber, uint16* pwStreamNumArray, out uint16 pcStreams) GetStreamsForRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber, uint16 wStreamNumber) AddStreamForRecord;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMMutualExclusion2 self, uint16 wRecordNumber, uint16 wStreamNumber) RemoveStreamForRecord;
			}
		}
		[CRepr]
		public struct IWMBandwidthSharing : IWMStreamList
		{
			public const new Guid IID = .(0xad694af1, 0xf8d9, 0x42f8, 0xbc, 0x47, 0x70, 0x31, 0x1b, 0x0c, 0x4f, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguidType) mut => VT.ComGetType(ref this, out pguidType);
			public HRESULT SetType(in Guid guidType) mut => VT.SetType(ref this, guidType);
			public HRESULT GetBandwidth(out uint32 pdwBitrate, out uint32 pmsBufferWindow) mut => VT.GetBandwidth(ref this, out pdwBitrate, out pmsBufferWindow);
			public HRESULT SetBandwidth(uint32 dwBitrate, uint32 msBufferWindow) mut => VT.SetBandwidth(ref this, dwBitrate, msBufferWindow);

			[CRepr]
			public struct VTable : IWMStreamList.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBandwidthSharing self, out Guid pguidType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBandwidthSharing self, in Guid guidType) SetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBandwidthSharing self, out uint32 pdwBitrate, out uint32 pmsBufferWindow) GetBandwidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBandwidthSharing self, uint32 dwBitrate, uint32 msBufferWindow) SetBandwidth;
			}
		}
		[CRepr]
		public struct IWMStreamPrioritization : IUnknown
		{
			public const new Guid IID = .(0x8c1c6090, 0xf9a8, 0x4748, 0x8e, 0xc3, 0xdd, 0x11, 0x08, 0xba, 0x1e, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPriorityRecords(WM_STREAM_PRIORITY_RECORD* pRecordArray, out uint16 pcRecords) mut => VT.GetPriorityRecords(ref this, pRecordArray, out pcRecords);
			public HRESULT SetPriorityRecords(ref WM_STREAM_PRIORITY_RECORD pRecordArray, uint16 cRecords) mut => VT.SetPriorityRecords(ref this, ref pRecordArray, cRecords);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamPrioritization self, WM_STREAM_PRIORITY_RECORD* pRecordArray, out uint16 pcRecords) GetPriorityRecords;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMStreamPrioritization self, ref WM_STREAM_PRIORITY_RECORD pRecordArray, uint16 cRecords) SetPriorityRecords;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406be3, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSinkCount(out uint32 pcSinks) mut => VT.GetSinkCount(ref this, out pcSinks);
			public HRESULT GetSink(uint32 dwSinkNum, out IWMWriterSink* ppSink) mut => VT.GetSink(ref this, dwSinkNum, out ppSink);
			public HRESULT AddSink(ref IWMWriterSink pSink) mut => VT.AddSink(ref this, ref pSink);
			public HRESULT RemoveSink(ref IWMWriterSink pSink) mut => VT.RemoveSink(ref this, ref pSink);
			public HRESULT WriteStreamSample(uint16 wStreamNum, uint64 cnsSampleTime, uint32 msSampleSendTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample) mut => VT.WriteStreamSample(ref this, wStreamNum, cnsSampleTime, msSampleSendTime, cnsSampleDuration, dwFlags, ref pSample);
			public HRESULT SetLiveSource(BOOL fIsLiveSource) mut => VT.SetLiveSource(ref this, fIsLiveSource);
			public HRESULT IsRealTime(out BOOL pfRealTime) mut => VT.IsRealTime(ref this, out pfRealTime);
			public HRESULT GetWriterTime(out uint64 pcnsCurrentTime) mut => VT.GetWriterTime(ref this, out pcnsCurrentTime);
			public HRESULT GetStatistics(uint16 wStreamNum, out WM_WRITER_STATISTICS pStats) mut => VT.GetStatistics(ref this, wStreamNum, out pStats);
			public HRESULT SetSyncTolerance(uint32 msWindow) mut => VT.SetSyncTolerance(ref this, msWindow);
			public HRESULT GetSyncTolerance(out uint32 pmsWindow) mut => VT.GetSyncTolerance(ref this, out pmsWindow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, out uint32 pcSinks) GetSinkCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, uint32 dwSinkNum, out IWMWriterSink* ppSink) GetSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, ref IWMWriterSink pSink) AddSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, ref IWMWriterSink pSink) RemoveSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, uint16 wStreamNum, uint64 cnsSampleTime, uint32 msSampleSendTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample) WriteStreamSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, BOOL fIsLiveSource) SetLiveSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, out BOOL pfRealTime) IsRealTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, out uint64 pcnsCurrentTime) GetWriterTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, uint16 wStreamNum, out WM_WRITER_STATISTICS pStats) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, uint32 msWindow) SetSyncTolerance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced self, out uint32 pmsWindow) GetSyncTolerance;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced2 : IWMWriterAdvanced
		{
			public const new Guid IID = .(0x962dc1ec, 0xc046, 0x4db8, 0x9c, 0xc7, 0x26, 0xce, 0xae, 0x50, 0x08, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputSetting(uint32 dwInputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetInputSetting(ref this, dwInputNum, pszName, out pType, pValue, out pcbLength);
			public HRESULT SetInputSetting(uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetInputSetting(ref this, dwInputNum, pszName, Type, pValue, cbLength);

			[CRepr]
			public struct VTable : IWMWriterAdvanced.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced2 self, uint32 dwInputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetInputSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced2 self, uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetInputSetting;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced3 : IWMWriterAdvanced2
		{
			public const new Guid IID = .(0x2cd6492d, 0x7c37, 0x4e76, 0x9d, 0x3b, 0x59, 0x26, 0x11, 0x83, 0xa2, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatisticsEx(uint16 wStreamNum, out WM_WRITER_STATISTICS_EX pStats) mut => VT.GetStatisticsEx(ref this, wStreamNum, out pStats);
			public HRESULT SetNonBlocking() mut => VT.SetNonBlocking(ref this);

			[CRepr]
			public struct VTable : IWMWriterAdvanced2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced3 self, uint16 wStreamNum, out WM_WRITER_STATISTICS_EX pStats) GetStatisticsEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterAdvanced3 self) SetNonBlocking;
			}
		}
		[CRepr]
		public struct IWMWriterPreprocess : IUnknown
		{
			public const new Guid IID = .(0xfc54a285, 0x38c4, 0x45b5, 0xaa, 0x23, 0x85, 0xb9, 0xf7, 0xcb, 0x42, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxPreprocessingPasses(uint32 dwInputNum, uint32 dwFlags, out uint32 pdwMaxNumPasses) mut => VT.GetMaxPreprocessingPasses(ref this, dwInputNum, dwFlags, out pdwMaxNumPasses);
			public HRESULT SetNumPreprocessingPasses(uint32 dwInputNum, uint32 dwFlags, uint32 dwNumPasses) mut => VT.SetNumPreprocessingPasses(ref this, dwInputNum, dwFlags, dwNumPasses);
			public HRESULT BeginPreprocessingPass(uint32 dwInputNum, uint32 dwFlags) mut => VT.BeginPreprocessingPass(ref this, dwInputNum, dwFlags);
			public HRESULT PreprocessSample(uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, ref INSSBuffer pSample) mut => VT.PreprocessSample(ref this, dwInputNum, cnsSampleTime, dwFlags, ref pSample);
			public HRESULT EndPreprocessingPass(uint32 dwInputNum, uint32 dwFlags) mut => VT.EndPreprocessingPass(ref this, dwInputNum, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPreprocess self, uint32 dwInputNum, uint32 dwFlags, out uint32 pdwMaxNumPasses) GetMaxPreprocessingPasses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPreprocess self, uint32 dwInputNum, uint32 dwFlags, uint32 dwNumPasses) SetNumPreprocessingPasses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPreprocess self, uint32 dwInputNum, uint32 dwFlags) BeginPreprocessingPass;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPreprocess self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, ref INSSBuffer pSample) PreprocessSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPreprocess self, uint32 dwInputNum, uint32 dwFlags) EndPreprocessingPass;
			}
		}
		[CRepr]
		public struct IWMWriterPostViewCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0xd9d6549d, 0xa193, 0x4f24, 0xb3, 0x08, 0x03, 0x12, 0x3d, 0x9b, 0x7f, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPostViewSample(uint16 wStreamNumber, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) mut => VT.OnPostViewSample(ref this, wStreamNumber, cnsSampleTime, cnsSampleDuration, dwFlags, ref pSample, pvContext);
			public HRESULT AllocateForPostView(uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) mut => VT.AllocateForPostView(ref this, wStreamNum, cbBuffer, out ppBuffer, pvContext);

			[CRepr]
			public struct VTable : IWMStatusCallback.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostViewCallback self, uint16 wStreamNumber, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) OnPostViewSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostViewCallback self, uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) AllocateForPostView;
			}
		}
		[CRepr]
		public struct IWMWriterPostView : IUnknown
		{
			public const new Guid IID = .(0x81e20ce4, 0x75ef, 0x491a, 0x80, 0x04, 0xfc, 0x53, 0xc4, 0x5b, 0xdc, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPostViewCallback(ref IWMWriterPostViewCallback pCallback, void* pvContext) mut => VT.SetPostViewCallback(ref this, ref pCallback, pvContext);
			public HRESULT SetReceivePostViewSamples(uint16 wStreamNum, BOOL fReceivePostViewSamples) mut => VT.SetReceivePostViewSamples(ref this, wStreamNum, fReceivePostViewSamples);
			public HRESULT GetReceivePostViewSamples(uint16 wStreamNum, out BOOL pfReceivePostViewSamples) mut => VT.GetReceivePostViewSamples(ref this, wStreamNum, out pfReceivePostViewSamples);
			public HRESULT GetPostViewProps(uint16 wStreamNumber, out IWMMediaProps* ppOutput) mut => VT.GetPostViewProps(ref this, wStreamNumber, out ppOutput);
			public HRESULT SetPostViewProps(uint16 wStreamNumber, ref IWMMediaProps pOutput) mut => VT.SetPostViewProps(ref this, wStreamNumber, ref pOutput);
			public HRESULT GetPostViewFormatCount(uint16 wStreamNumber, out uint32 pcFormats) mut => VT.GetPostViewFormatCount(ref this, wStreamNumber, out pcFormats);
			public HRESULT GetPostViewFormat(uint16 wStreamNumber, uint32 dwFormatNumber, out IWMMediaProps* ppProps) mut => VT.GetPostViewFormat(ref this, wStreamNumber, dwFormatNumber, out ppProps);
			public HRESULT SetAllocateForPostView(uint16 wStreamNumber, BOOL fAllocate) mut => VT.SetAllocateForPostView(ref this, wStreamNumber, fAllocate);
			public HRESULT GetAllocateForPostView(uint16 wStreamNumber, out BOOL pfAllocate) mut => VT.GetAllocateForPostView(ref this, wStreamNumber, out pfAllocate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, ref IWMWriterPostViewCallback pCallback, void* pvContext) SetPostViewCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNum, BOOL fReceivePostViewSamples) SetReceivePostViewSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNum, out BOOL pfReceivePostViewSamples) GetReceivePostViewSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, out IWMMediaProps* ppOutput) GetPostViewProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, ref IWMMediaProps pOutput) SetPostViewProps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, out uint32 pcFormats) GetPostViewFormatCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, uint32 dwFormatNumber, out IWMMediaProps* ppProps) GetPostViewFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, BOOL fAllocate) SetAllocateForPostView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPostView self, uint16 wStreamNumber, out BOOL pfAllocate) GetAllocateForPostView;
			}
		}
		[CRepr]
		public struct IWMWriterSink : IUnknown
		{
			public const new Guid IID = .(0x96406be4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnHeader(ref INSSBuffer pHeader) mut => VT.OnHeader(ref this, ref pHeader);
			public HRESULT IsRealTime(out BOOL pfRealTime) mut => VT.IsRealTime(ref this, out pfRealTime);
			public HRESULT AllocateDataUnit(uint32 cbDataUnit, out INSSBuffer* ppDataUnit) mut => VT.AllocateDataUnit(ref this, cbDataUnit, out ppDataUnit);
			public HRESULT OnDataUnit(ref INSSBuffer pDataUnit) mut => VT.OnDataUnit(ref this, ref pDataUnit);
			public HRESULT OnEndWriting() mut => VT.OnEndWriting(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterSink self, ref INSSBuffer pHeader) OnHeader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterSink self, out BOOL pfRealTime) IsRealTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterSink self, uint32 cbDataUnit, out INSSBuffer* ppDataUnit) AllocateDataUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterSink self, ref INSSBuffer pDataUnit) OnDataUnit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterSink self) OnEndWriting;
			}
		}
		[CRepr]
		public struct IWMRegisterCallback : IUnknown
		{
			public const new Guid IID = .(0xcf4b1f99, 0x4de2, 0x4e49, 0xa3, 0x63, 0x25, 0x27, 0x40, 0xd9, 0x9b, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(ref IWMStatusCallback pCallback, void* pvContext) mut => VT.Advise(ref this, ref pCallback, pvContext);
			public HRESULT Unadvise(ref IWMStatusCallback pCallback, void* pvContext) mut => VT.Unadvise(ref this, ref pCallback, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisterCallback self, ref IWMStatusCallback pCallback, void* pvContext) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisterCallback self, ref IWMStatusCallback pCallback, void* pvContext) Unadvise;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut => VT.Open(ref this, pwszFilename);

			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink self, PWSTR pwszFilename) Open;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink2 : IWMWriterFileSink
		{
			public const new Guid IID = .(0x14282ba7, 0x4aef, 0x4205, 0x8c, 0xe5, 0xc2, 0x29, 0x03, 0x5a, 0x05, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(uint64 cnsStartTime) mut => VT.Start(ref this, cnsStartTime);
			public HRESULT Stop(uint64 cnsStopTime) mut => VT.Stop(ref this, cnsStopTime);
			public HRESULT IsStopped(out BOOL pfStopped) mut => VT.IsStopped(ref this, out pfStopped);
			public HRESULT GetFileDuration(out uint64 pcnsDuration) mut => VT.GetFileDuration(ref this, out pcnsDuration);
			public HRESULT GetFileSize(out uint64 pcbFile) mut => VT.GetFileSize(ref this, out pcbFile);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT IsClosed(out BOOL pfClosed) mut => VT.IsClosed(ref this, out pfClosed);

			[CRepr]
			public struct VTable : IWMWriterFileSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, uint64 cnsStartTime) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, uint64 cnsStopTime) Stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, out BOOL pfStopped) IsStopped;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, out uint64 pcnsDuration) GetFileDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, out uint64 pcbFile) GetFileSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink2 self, out BOOL pfClosed) IsClosed;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink3 : IWMWriterFileSink2
		{
			public const new Guid IID = .(0x3fea4feb, 0x2945, 0x47a7, 0xa1, 0xdd, 0xc5, 0x3a, 0x8f, 0xc4, 0xc4, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAutoIndexing(BOOL fDoAutoIndexing) mut => VT.SetAutoIndexing(ref this, fDoAutoIndexing);
			public HRESULT GetAutoIndexing(out BOOL pfAutoIndexing) mut => VT.GetAutoIndexing(ref this, out pfAutoIndexing);
			public HRESULT SetControlStream(uint16 wStreamNumber, BOOL fShouldControlStartAndStop) mut => VT.SetControlStream(ref this, wStreamNumber, fShouldControlStartAndStop);
			public HRESULT GetMode(out uint32 pdwFileSinkMode) mut => VT.GetMode(ref this, out pdwFileSinkMode);
			public HRESULT OnDataUnitEx(ref WMT_FILESINK_DATA_UNIT pFileSinkDataUnit) mut => VT.OnDataUnitEx(ref this, ref pFileSinkDataUnit);
			public HRESULT SetUnbufferedIO(BOOL fUnbufferedIO, BOOL fRestrictMemUsage) mut => VT.SetUnbufferedIO(ref this, fUnbufferedIO, fRestrictMemUsage);
			public HRESULT GetUnbufferedIO(out BOOL pfUnbufferedIO) mut => VT.GetUnbufferedIO(ref this, out pfUnbufferedIO);
			public HRESULT CompleteOperations() mut => VT.CompleteOperations(ref this);

			[CRepr]
			public struct VTable : IWMWriterFileSink2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, BOOL fDoAutoIndexing) SetAutoIndexing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, out BOOL pfAutoIndexing) GetAutoIndexing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, uint16 wStreamNumber, BOOL fShouldControlStartAndStop) SetControlStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, out uint32 pdwFileSinkMode) GetMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, ref WMT_FILESINK_DATA_UNIT pFileSinkDataUnit) OnDataUnitEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, BOOL fUnbufferedIO, BOOL fRestrictMemUsage) SetUnbufferedIO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self, out BOOL pfUnbufferedIO) GetUnbufferedIO;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterFileSink3 self) CompleteOperations;
			}
		}
		[CRepr]
		public struct IWMWriterNetworkSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMaximumClients(uint32 dwMaxClients) mut => VT.SetMaximumClients(ref this, dwMaxClients);
			public HRESULT GetMaximumClients(out uint32 pdwMaxClients) mut => VT.GetMaximumClients(ref this, out pdwMaxClients);
			public HRESULT SetNetworkProtocol(WMT_NET_PROTOCOL protocol) mut => VT.SetNetworkProtocol(ref this, protocol);
			public HRESULT GetNetworkProtocol(out WMT_NET_PROTOCOL pProtocol) mut => VT.GetNetworkProtocol(ref this, out pProtocol);
			public HRESULT GetHostURL(PWSTR pwszURL, out uint32 pcchURL) mut => VT.GetHostURL(ref this, pwszURL, out pcchURL);
			public HRESULT Open(out uint32 pdwPortNum) mut => VT.Open(ref this, out pdwPortNum);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, uint32 dwMaxClients) SetMaximumClients;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, out uint32 pdwMaxClients) GetMaximumClients;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, WMT_NET_PROTOCOL protocol) SetNetworkProtocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, out WMT_NET_PROTOCOL pProtocol) GetNetworkProtocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, PWSTR pwszURL, out uint32 pcchURL) GetHostURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self, out uint32 pdwPortNum) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterNetworkSink self) Close;
			}
		}
		[CRepr]
		public struct IWMClientConnections : IUnknown
		{
			public const new Guid IID = .(0x73c66010, 0xa299, 0x41df, 0xb1, 0xf0, 0xcc, 0xf0, 0x3b, 0x09, 0xc1, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientCount(out uint32 pcClients) mut => VT.GetClientCount(ref this, out pcClients);
			public HRESULT GetClientProperties(uint32 dwClientNum, out WM_CLIENT_PROPERTIES pClientProperties) mut => VT.GetClientProperties(ref this, dwClientNum, out pClientProperties);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMClientConnections self, out uint32 pcClients) GetClientCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMClientConnections self, uint32 dwClientNum, out WM_CLIENT_PROPERTIES pClientProperties) GetClientProperties;
			}
		}
		[CRepr]
		public struct IWMClientConnections2 : IWMClientConnections
		{
			public const new Guid IID = .(0x4091571e, 0x4701, 0x4593, 0xbb, 0x3d, 0xd5, 0xf5, 0xf0, 0xc7, 0x42, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientInfo(uint32 dwClientNum, char16* pwszNetworkAddress, out uint32 pcchNetworkAddress, char16* pwszPort, out uint32 pcchPort, char16* pwszDNSName, out uint32 pcchDNSName) mut => VT.GetClientInfo(ref this, dwClientNum, pwszNetworkAddress, out pcchNetworkAddress, pwszPort, out pcchPort, pwszDNSName, out pcchDNSName);

			[CRepr]
			public struct VTable : IWMClientConnections.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMClientConnections2 self, uint32 dwClientNum, char16* pwszNetworkAddress, out uint32 pcchNetworkAddress, char16* pwszPort, out uint32 pcchPort, char16* pwszDNSName, out uint32 pcchDNSName) GetClientInfo;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406bea, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUserProvidedClock(BOOL fUserClock) mut => VT.SetUserProvidedClock(ref this, fUserClock);
			public HRESULT GetUserProvidedClock(out BOOL pfUserClock) mut => VT.GetUserProvidedClock(ref this, out pfUserClock);
			public HRESULT DeliverTime(uint64 cnsTime) mut => VT.DeliverTime(ref this, cnsTime);
			public HRESULT SetManualStreamSelection(BOOL fSelection) mut => VT.SetManualStreamSelection(ref this, fSelection);
			public HRESULT GetManualStreamSelection(out BOOL pfSelection) mut => VT.GetManualStreamSelection(ref this, out pfSelection);
			public HRESULT SetStreamsSelected(uint16 cStreamCount, ref uint16 pwStreamNumbers, ref WMT_STREAM_SELECTION pSelections) mut => VT.SetStreamsSelected(ref this, cStreamCount, ref pwStreamNumbers, ref pSelections);
			public HRESULT GetStreamSelected(uint16 wStreamNum, out WMT_STREAM_SELECTION pSelection) mut => VT.GetStreamSelected(ref this, wStreamNum, out pSelection);
			public HRESULT SetReceiveSelectionCallbacks(BOOL fGetCallbacks) mut => VT.SetReceiveSelectionCallbacks(ref this, fGetCallbacks);
			public HRESULT GetReceiveSelectionCallbacks(out BOOL pfGetCallbacks) mut => VT.GetReceiveSelectionCallbacks(ref this, out pfGetCallbacks);
			public HRESULT SetReceiveStreamSamples(uint16 wStreamNum, BOOL fReceiveStreamSamples) mut => VT.SetReceiveStreamSamples(ref this, wStreamNum, fReceiveStreamSamples);
			public HRESULT GetReceiveStreamSamples(uint16 wStreamNum, out BOOL pfReceiveStreamSamples) mut => VT.GetReceiveStreamSamples(ref this, wStreamNum, out pfReceiveStreamSamples);
			public HRESULT SetAllocateForOutput(uint32 dwOutputNum, BOOL fAllocate) mut => VT.SetAllocateForOutput(ref this, dwOutputNum, fAllocate);
			public HRESULT GetAllocateForOutput(uint32 dwOutputNum, out BOOL pfAllocate) mut => VT.GetAllocateForOutput(ref this, dwOutputNum, out pfAllocate);
			public HRESULT SetAllocateForStream(uint16 wStreamNum, BOOL fAllocate) mut => VT.SetAllocateForStream(ref this, wStreamNum, fAllocate);
			public HRESULT GetAllocateForStream(uint16 dwSreamNum, out BOOL pfAllocate) mut => VT.GetAllocateForStream(ref this, dwSreamNum, out pfAllocate);
			public HRESULT GetStatistics(out WM_READER_STATISTICS pStatistics) mut => VT.GetStatistics(ref this, out pStatistics);
			public HRESULT SetClientInfo(ref WM_READER_CLIENTINFO pClientInfo) mut => VT.SetClientInfo(ref this, ref pClientInfo);
			public HRESULT GetMaxOutputSampleSize(uint32 dwOutput, out uint32 pcbMax) mut => VT.GetMaxOutputSampleSize(ref this, dwOutput, out pcbMax);
			public HRESULT GetMaxStreamSampleSize(uint16 wStream, out uint32 pcbMax) mut => VT.GetMaxStreamSampleSize(ref this, wStream, out pcbMax);
			public HRESULT NotifyLateDelivery(uint64 cnsLateness) mut => VT.NotifyLateDelivery(ref this, cnsLateness);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, BOOL fUserClock) SetUserProvidedClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, out BOOL pfUserClock) GetUserProvidedClock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint64 cnsTime) DeliverTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, BOOL fSelection) SetManualStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, out BOOL pfSelection) GetManualStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 cStreamCount, ref uint16 pwStreamNumbers, ref WMT_STREAM_SELECTION pSelections) SetStreamsSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 wStreamNum, out WMT_STREAM_SELECTION pSelection) GetStreamSelected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, BOOL fGetCallbacks) SetReceiveSelectionCallbacks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, out BOOL pfGetCallbacks) GetReceiveSelectionCallbacks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 wStreamNum, BOOL fReceiveStreamSamples) SetReceiveStreamSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 wStreamNum, out BOOL pfReceiveStreamSamples) GetReceiveStreamSamples;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint32 dwOutputNum, BOOL fAllocate) SetAllocateForOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint32 dwOutputNum, out BOOL pfAllocate) GetAllocateForOutput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 wStreamNum, BOOL fAllocate) SetAllocateForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 dwSreamNum, out BOOL pfAllocate) GetAllocateForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, out WM_READER_STATISTICS pStatistics) GetStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, ref WM_READER_CLIENTINFO pClientInfo) SetClientInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint32 dwOutput, out uint32 pcbMax) GetMaxOutputSampleSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint16 wStream, out uint32 pcbMax) GetMaxStreamSampleSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced self, uint64 cnsLateness) NotifyLateDelivery;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced2 : IWMReaderAdvanced
		{
			public const new Guid IID = .(0xae14a945, 0xb90c, 0x4d0d, 0x91, 0x27, 0x80, 0xd6, 0x65, 0xf7, 0xd7, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPlayMode(WMT_PLAY_MODE Mode) mut => VT.SetPlayMode(ref this, Mode);
			public HRESULT GetPlayMode(out WMT_PLAY_MODE pMode) mut => VT.GetPlayMode(ref this, out pMode);
			public HRESULT GetBufferProgress(out uint32 pdwPercent, out uint64 pcnsBuffering) mut => VT.GetBufferProgress(ref this, out pdwPercent, out pcnsBuffering);
			public HRESULT GetDownloadProgress(out uint32 pdwPercent, out uint64 pqwBytesDownloaded, out uint64 pcnsDownload) mut => VT.GetDownloadProgress(ref this, out pdwPercent, out pqwBytesDownloaded, out pcnsDownload);
			public HRESULT GetSaveAsProgress(out uint32 pdwPercent) mut => VT.GetSaveAsProgress(ref this, out pdwPercent);
			public HRESULT SaveFileAs(PWSTR pwszFilename) mut => VT.SaveFileAs(ref this, pwszFilename);
			public HRESULT GetProtocolName(char16* pwszProtocol, out uint32 pcchProtocol) mut => VT.GetProtocolName(ref this, pwszProtocol, out pcchProtocol);
			public HRESULT StartAtMarker(uint16 wMarkerIndex, uint64 cnsDuration, float fRate, void* pvContext) mut => VT.StartAtMarker(ref this, wMarkerIndex, cnsDuration, fRate, pvContext);
			public HRESULT GetOutputSetting(uint32 dwOutputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetOutputSetting(ref this, dwOutputNum, pszName, out pType, pValue, out pcbLength);
			public HRESULT SetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetOutputSetting(ref this, dwOutputNum, pszName, Type, pValue, cbLength);
			public HRESULT Preroll(uint64 cnsStart, uint64 cnsDuration, float fRate) mut => VT.Preroll(ref this, cnsStart, cnsDuration, fRate);
			public HRESULT SetLogClientID(BOOL fLogClientID) mut => VT.SetLogClientID(ref this, fLogClientID);
			public HRESULT GetLogClientID(out BOOL pfLogClientID) mut => VT.GetLogClientID(ref this, out pfLogClientID);
			public HRESULT StopBuffering() mut => VT.StopBuffering(ref this);
			public HRESULT OpenStream(ref IStream pStream, ref IWMReaderCallback pCallback, void* pvContext) mut => VT.OpenStream(ref this, ref pStream, ref pCallback, pvContext);

			[CRepr]
			public struct VTable : IWMReaderAdvanced.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, WMT_PLAY_MODE Mode) SetPlayMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, out WMT_PLAY_MODE pMode) GetPlayMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, out uint32 pdwPercent, out uint64 pcnsBuffering) GetBufferProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, out uint32 pdwPercent, out uint64 pqwBytesDownloaded, out uint64 pcnsDownload) GetDownloadProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, out uint32 pdwPercent) GetSaveAsProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, PWSTR pwszFilename) SaveFileAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, char16* pwszProtocol, out uint32 pcchProtocol) GetProtocolName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, uint16 wMarkerIndex, uint64 cnsDuration, float fRate, void* pvContext) StartAtMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, uint32 dwOutputNum, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetOutputSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, uint64 cnsStart, uint64 cnsDuration, float fRate) Preroll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, BOOL fLogClientID) SetLogClientID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, out BOOL pfLogClientID) GetLogClientID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self) StopBuffering;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced2 self, ref IStream pStream, ref IWMReaderCallback pCallback, void* pvContext) OpenStream;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced3 : IWMReaderAdvanced2
		{
			public const new Guid IID = .(0x5dc0674b, 0xf04b, 0x4a4e, 0x9f, 0x2a, 0xb1, 0xaf, 0xde, 0x2c, 0x81, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopNetStreaming() mut => VT.StopNetStreaming(ref this);
			public HRESULT StartAtPosition(uint16 wStreamNum, void* pvOffsetStart, void* pvDuration, WMT_OFFSET_FORMAT dwOffsetFormat, float fRate, void* pvContext) mut => VT.StartAtPosition(ref this, wStreamNum, pvOffsetStart, pvDuration, dwOffsetFormat, fRate, pvContext);

			[CRepr]
			public struct VTable : IWMReaderAdvanced2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced3 self) StopNetStreaming;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced3 self, uint16 wStreamNum, void* pvOffsetStart, void* pvDuration, WMT_OFFSET_FORMAT dwOffsetFormat, float fRate, void* pvContext) StartAtPosition;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced4 : IWMReaderAdvanced3
		{
			public const new Guid IID = .(0x945a76a2, 0x12ae, 0x4d48, 0xbd, 0x3c, 0xcd, 0x1d, 0x90, 0x39, 0x9b, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguageCount(uint32 dwOutputNum, out uint16 pwLanguageCount) mut => VT.GetLanguageCount(ref this, dwOutputNum, out pwLanguageCount);
			public HRESULT GetLanguage(uint32 dwOutputNum, uint16 wLanguage, char16* pwszLanguageString, out uint16 pcchLanguageStringLength) mut => VT.GetLanguage(ref this, dwOutputNum, wLanguage, pwszLanguageString, out pcchLanguageStringLength);
			public HRESULT GetMaxSpeedFactor(out double pdblFactor) mut => VT.GetMaxSpeedFactor(ref this, out pdblFactor);
			public HRESULT IsUsingFastCache(out BOOL pfUsingFastCache) mut => VT.IsUsingFastCache(ref this, out pfUsingFastCache);
			public HRESULT AddLogParam(PWSTR wszNameSpace, PWSTR wszName, PWSTR wszValue) mut => VT.AddLogParam(ref this, wszNameSpace, wszName, wszValue);
			public HRESULT SendLogParams() mut => VT.SendLogParams(ref this);
			public HRESULT CanSaveFileAs(out BOOL pfCanSave) mut => VT.CanSaveFileAs(ref this, out pfCanSave);
			public HRESULT CancelSaveFileAs() mut => VT.CancelSaveFileAs(ref this);
			public HRESULT GetURL(char16* pwszURL, out uint32 pcchURL) mut => VT.GetURL(ref this, pwszURL, out pcchURL);

			[CRepr]
			public struct VTable : IWMReaderAdvanced3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, uint32 dwOutputNum, out uint16 pwLanguageCount) GetLanguageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, uint32 dwOutputNum, uint16 wLanguage, char16* pwszLanguageString, out uint16 pcchLanguageStringLength) GetLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, out double pdblFactor) GetMaxSpeedFactor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, out BOOL pfUsingFastCache) IsUsingFastCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, PWSTR wszNameSpace, PWSTR wszName, PWSTR wszValue) AddLogParam;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self) SendLogParams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, out BOOL pfCanSave) CanSaveFileAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self) CancelSaveFileAs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced4 self, char16* pwszURL, out uint32 pcchURL) GetURL;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced5 : IWMReaderAdvanced4
		{
			public const new Guid IID = .(0x24c44db0, 0x55d1, 0x49ae, 0xa5, 0xcc, 0xf1, 0x38, 0x15, 0xe3, 0x63, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPlayerHook(uint32 dwOutputNum, ref IWMPlayerHook pHook) mut => VT.SetPlayerHook(ref this, dwOutputNum, ref pHook);

			[CRepr]
			public struct VTable : IWMReaderAdvanced4.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced5 self, uint32 dwOutputNum, ref IWMPlayerHook pHook) SetPlayerHook;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced6 : IWMReaderAdvanced5
		{
			public const new Guid IID = .(0x18a2e7f8, 0x428f, 0x4acd, 0x8a, 0x00, 0xe6, 0x46, 0x39, 0xbc, 0x93, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProtectStreamSamples(uint8* pbCertificate, uint32 cbCertificate, uint32 dwCertificateType, uint32 dwFlags, uint8* pbInitializationVector, out uint32 pcbInitializationVector) mut => VT.SetProtectStreamSamples(ref this, pbCertificate, cbCertificate, dwCertificateType, dwFlags, pbInitializationVector, out pcbInitializationVector);

			[CRepr]
			public struct VTable : IWMReaderAdvanced5.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAdvanced6 self, uint8* pbCertificate, uint32 cbCertificate, uint32 dwCertificateType, uint32 dwFlags, uint8* pbInitializationVector, out uint32 pcbInitializationVector) SetProtectStreamSamples;
			}
		}
		[CRepr]
		public struct IWMPlayerHook : IUnknown
		{
			public const new Guid IID = .(0xe5b7ca9a, 0x0f1c, 0x4f66, 0x90, 0x02, 0x74, 0xec, 0x50, 0xd8, 0xb3, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreDecode() mut => VT.PreDecode(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPlayerHook self) PreDecode;
			}
		}
		[CRepr]
		public struct IWMReaderAllocatorEx : IUnknown
		{
			public const new Guid IID = .(0x9f762fa7, 0xa22e, 0x428d, 0x93, 0xc9, 0xac, 0x82, 0xf3, 0xaa, 0xfe, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocateForStreamEx(uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) mut => VT.AllocateForStreamEx(ref this, wStreamNum, cbBuffer, out ppBuffer, dwFlags, cnsSampleTime, cnsSampleDuration, pvContext);
			public HRESULT AllocateForOutputEx(uint32 dwOutputNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) mut => VT.AllocateForOutputEx(ref this, dwOutputNum, cbBuffer, out ppBuffer, dwFlags, cnsSampleTime, cnsSampleDuration, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAllocatorEx self, uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForStreamEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAllocatorEx self, uint32 dwOutputNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForOutputEx;
			}
		}
		[CRepr]
		public struct IWMReaderTypeNegotiation : IUnknown
		{
			public const new Guid IID = .(0xfdbe5592, 0x81a1, 0x41ea, 0x93, 0xbd, 0x73, 0x5c, 0xad, 0x1a, 0xdc, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TryOutputProps(uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) mut => VT.TryOutputProps(ref this, dwOutputNum, ref pOutput);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderTypeNegotiation self, uint32 dwOutputNum, ref IWMOutputMediaProps pOutput) TryOutputProps;
			}
		}
		[CRepr]
		public struct IWMReaderCallbackAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406beb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStreamSample(uint16 wStreamNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) mut => VT.OnStreamSample(ref this, wStreamNum, cnsSampleTime, cnsSampleDuration, dwFlags, ref pSample, pvContext);
			public HRESULT OnTime(uint64 cnsCurrentTime, void* pvContext) mut => VT.OnTime(ref this, cnsCurrentTime, pvContext);
			public HRESULT OnStreamSelection(uint16 wStreamCount, ref uint16 pStreamNumbers, ref WMT_STREAM_SELECTION pSelections, void* pvContext) mut => VT.OnStreamSelection(ref this, wStreamCount, ref pStreamNumbers, ref pSelections, pvContext);
			public HRESULT OnOutputPropsChanged(uint32 dwOutputNum, ref WM_MEDIA_TYPE pMediaType, void* pvContext) mut => VT.OnOutputPropsChanged(ref this, dwOutputNum, ref pMediaType, pvContext);
			public HRESULT AllocateForStream(uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) mut => VT.AllocateForStream(ref this, wStreamNum, cbBuffer, out ppBuffer, pvContext);
			public HRESULT AllocateForOutput(uint32 dwOutputNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) mut => VT.AllocateForOutput(ref this, dwOutputNum, cbBuffer, out ppBuffer, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint16 wStreamNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, ref INSSBuffer pSample, void* pvContext) OnStreamSample;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint64 cnsCurrentTime, void* pvContext) OnTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint16 wStreamCount, ref uint16 pStreamNumbers, ref WMT_STREAM_SELECTION pSelections, void* pvContext) OnStreamSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint32 dwOutputNum, ref WM_MEDIA_TYPE pMediaType, void* pvContext) OnOutputPropsChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint16 wStreamNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) AllocateForStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderCallbackAdvanced self, uint32 dwOutputNum, uint32 cbBuffer, out INSSBuffer* ppBuffer, void* pvContext) AllocateForOutput;
			}
		}
		[CRepr]
		public struct IWMDRMReader : IUnknown
		{
			public const new Guid IID = .(0xd2827540, 0x3ee7, 0x432c, 0xb1, 0x4c, 0xdc, 0x17, 0xf0, 0x85, 0xd3, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireLicense(uint32 dwFlags) mut => VT.AcquireLicense(ref this, dwFlags);
			public HRESULT CancelLicenseAcquisition() mut => VT.CancelLicenseAcquisition(ref this);
			public HRESULT Individualize(uint32 dwFlags) mut => VT.Individualize(ref this, dwFlags);
			public HRESULT CancelIndividualization() mut => VT.CancelIndividualization(ref this);
			public HRESULT MonitorLicenseAcquisition() mut => VT.MonitorLicenseAcquisition(ref this);
			public HRESULT CancelMonitorLicenseAcquisition() mut => VT.CancelMonitorLicenseAcquisition(ref this);
			public HRESULT SetDRMProperty(PWSTR pwstrName, WMT_ATTR_DATATYPE dwType, uint8* pValue, uint16 cbLength) mut => VT.SetDRMProperty(ref this, pwstrName, dwType, pValue, cbLength);
			public HRESULT GetDRMProperty(PWSTR pwstrName, out WMT_ATTR_DATATYPE pdwType, uint8* pValue, out uint16 pcbLength) mut => VT.GetDRMProperty(ref this, pwstrName, out pdwType, pValue, out pcbLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self, uint32 dwFlags) AcquireLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self) CancelLicenseAcquisition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self, uint32 dwFlags) Individualize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self) CancelIndividualization;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self) MonitorLicenseAcquisition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self) CancelMonitorLicenseAcquisition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self, PWSTR pwstrName, WMT_ATTR_DATATYPE dwType, uint8* pValue, uint16 cbLength) SetDRMProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader self, PWSTR pwstrName, out WMT_ATTR_DATATYPE pdwType, uint8* pValue, out uint16 pcbLength) GetDRMProperty;
			}
		}
		[CRepr]
		public struct IWMDRMReader2 : IWMDRMReader
		{
			public const new Guid IID = .(0xbefe7a75, 0x9f1d, 0x4075, 0xb9, 0xd9, 0xa3, 0xc3, 0x7b, 0xda, 0x49, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEvaluateOutputLevelLicenses(BOOL fEvaluate) mut => VT.SetEvaluateOutputLevelLicenses(ref this, fEvaluate);
			public HRESULT GetPlayOutputLevels(DRM_PLAY_OPL* pPlayOPL, out uint32 pcbLength, out uint32 pdwMinAppComplianceLevel) mut => VT.GetPlayOutputLevels(ref this, pPlayOPL, out pcbLength, out pdwMinAppComplianceLevel);
			public HRESULT GetCopyOutputLevels(DRM_COPY_OPL* pCopyOPL, out uint32 pcbLength, out uint32 pdwMinAppComplianceLevel) mut => VT.GetCopyOutputLevels(ref this, pCopyOPL, out pcbLength, out pdwMinAppComplianceLevel);
			public HRESULT TryNextLicense() mut => VT.TryNextLicense(ref this);

			[CRepr]
			public struct VTable : IWMDRMReader.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader2 self, BOOL fEvaluate) SetEvaluateOutputLevelLicenses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader2 self, DRM_PLAY_OPL* pPlayOPL, out uint32 pcbLength, out uint32 pdwMinAppComplianceLevel) GetPlayOutputLevels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader2 self, DRM_COPY_OPL* pCopyOPL, out uint32 pcbLength, out uint32 pdwMinAppComplianceLevel) GetCopyOutputLevels;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader2 self) TryNextLicense;
			}
		}
		[CRepr]
		public struct IWMDRMReader3 : IWMDRMReader2
		{
			public const new Guid IID = .(0xe08672de, 0xf1e7, 0x4ff4, 0xa0, 0xa3, 0xfc, 0x4b, 0x08, 0xe4, 0xca, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInclusionList(out Guid* ppGuids, out uint32 pcGuids) mut => VT.GetInclusionList(ref this, out ppGuids, out pcGuids);

			[CRepr]
			public struct VTable : IWMDRMReader2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMReader3 self, out Guid* ppGuids, out uint32 pcGuids) GetInclusionList;
			}
		}
		[CRepr]
		public struct IWMReaderPlaylistBurn : IUnknown
		{
			public const new Guid IID = .(0xf28c0300, 0x9baa, 0x4477, 0xa8, 0x46, 0x17, 0x44, 0xd9, 0xcb, 0xf5, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitPlaylistBurn(uint32 cFiles, ref PWSTR ppwszFilenames, ref IWMStatusCallback pCallback, void* pvContext) mut => VT.InitPlaylistBurn(ref this, cFiles, ref ppwszFilenames, ref pCallback, pvContext);
			public HRESULT GetInitResults(uint32 cFiles, out HRESULT phrStati) mut => VT.GetInitResults(ref this, cFiles, out phrStati);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT EndPlaylistBurn(HRESULT hrBurnResult) mut => VT.EndPlaylistBurn(ref this, hrBurnResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderPlaylistBurn self, uint32 cFiles, ref PWSTR ppwszFilenames, ref IWMStatusCallback pCallback, void* pvContext) InitPlaylistBurn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderPlaylistBurn self, uint32 cFiles, out HRESULT phrStati) GetInitResults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderPlaylistBurn self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderPlaylistBurn self, HRESULT hrBurnResult) EndPlaylistBurn;
			}
		}
		[CRepr]
		public struct IWMReaderNetworkConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bec, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBufferingTime(out uint64 pcnsBufferingTime) mut => VT.GetBufferingTime(ref this, out pcnsBufferingTime);
			public HRESULT SetBufferingTime(uint64 cnsBufferingTime) mut => VT.SetBufferingTime(ref this, cnsBufferingTime);
			public HRESULT GetUDPPortRanges(WM_PORT_NUMBER_RANGE* pRangeArray, out uint32 pcRanges) mut => VT.GetUDPPortRanges(ref this, pRangeArray, out pcRanges);
			public HRESULT SetUDPPortRanges(WM_PORT_NUMBER_RANGE* pRangeArray, uint32 cRanges) mut => VT.SetUDPPortRanges(ref this, pRangeArray, cRanges);
			public HRESULT GetProxySettings(PWSTR pwszProtocol, out WMT_PROXY_SETTINGS pProxySetting) mut => VT.GetProxySettings(ref this, pwszProtocol, out pProxySetting);
			public HRESULT SetProxySettings(PWSTR pwszProtocol, WMT_PROXY_SETTINGS ProxySetting) mut => VT.SetProxySettings(ref this, pwszProtocol, ProxySetting);
			public HRESULT GetProxyHostName(PWSTR pwszProtocol, char16* pwszHostName, out uint32 pcchHostName) mut => VT.GetProxyHostName(ref this, pwszProtocol, pwszHostName, out pcchHostName);
			public HRESULT SetProxyHostName(PWSTR pwszProtocol, PWSTR pwszHostName) mut => VT.SetProxyHostName(ref this, pwszProtocol, pwszHostName);
			public HRESULT GetProxyPort(PWSTR pwszProtocol, out uint32 pdwPort) mut => VT.GetProxyPort(ref this, pwszProtocol, out pdwPort);
			public HRESULT SetProxyPort(PWSTR pwszProtocol, uint32 dwPort) mut => VT.SetProxyPort(ref this, pwszProtocol, dwPort);
			public HRESULT GetProxyExceptionList(PWSTR pwszProtocol, char16* pwszExceptionList, out uint32 pcchExceptionList) mut => VT.GetProxyExceptionList(ref this, pwszProtocol, pwszExceptionList, out pcchExceptionList);
			public HRESULT SetProxyExceptionList(PWSTR pwszProtocol, PWSTR pwszExceptionList) mut => VT.SetProxyExceptionList(ref this, pwszProtocol, pwszExceptionList);
			public HRESULT GetProxyBypassForLocal(PWSTR pwszProtocol, out BOOL pfBypassForLocal) mut => VT.GetProxyBypassForLocal(ref this, pwszProtocol, out pfBypassForLocal);
			public HRESULT SetProxyBypassForLocal(PWSTR pwszProtocol, BOOL fBypassForLocal) mut => VT.SetProxyBypassForLocal(ref this, pwszProtocol, fBypassForLocal);
			public HRESULT GetForceRerunAutoProxyDetection(out BOOL pfForceRerunDetection) mut => VT.GetForceRerunAutoProxyDetection(ref this, out pfForceRerunDetection);
			public HRESULT SetForceRerunAutoProxyDetection(BOOL fForceRerunDetection) mut => VT.SetForceRerunAutoProxyDetection(ref this, fForceRerunDetection);
			public HRESULT GetEnableMulticast(out BOOL pfEnableMulticast) mut => VT.GetEnableMulticast(ref this, out pfEnableMulticast);
			public HRESULT SetEnableMulticast(BOOL fEnableMulticast) mut => VT.SetEnableMulticast(ref this, fEnableMulticast);
			public HRESULT GetEnableHTTP(out BOOL pfEnableHTTP) mut => VT.GetEnableHTTP(ref this, out pfEnableHTTP);
			public HRESULT SetEnableHTTP(BOOL fEnableHTTP) mut => VT.SetEnableHTTP(ref this, fEnableHTTP);
			public HRESULT GetEnableUDP(out BOOL pfEnableUDP) mut => VT.GetEnableUDP(ref this, out pfEnableUDP);
			public HRESULT SetEnableUDP(BOOL fEnableUDP) mut => VT.SetEnableUDP(ref this, fEnableUDP);
			public HRESULT GetEnableTCP(out BOOL pfEnableTCP) mut => VT.GetEnableTCP(ref this, out pfEnableTCP);
			public HRESULT SetEnableTCP(BOOL fEnableTCP) mut => VT.SetEnableTCP(ref this, fEnableTCP);
			public HRESULT ResetProtocolRollover() mut => VT.ResetProtocolRollover(ref this);
			public HRESULT GetConnectionBandwidth(out uint32 pdwConnectionBandwidth) mut => VT.GetConnectionBandwidth(ref this, out pdwConnectionBandwidth);
			public HRESULT SetConnectionBandwidth(uint32 dwConnectionBandwidth) mut => VT.SetConnectionBandwidth(ref this, dwConnectionBandwidth);
			public HRESULT GetNumProtocolsSupported(out uint32 pcProtocols) mut => VT.GetNumProtocolsSupported(ref this, out pcProtocols);
			public HRESULT GetSupportedProtocolName(uint32 dwProtocolNum, char16* pwszProtocolName, out uint32 pcchProtocolName) mut => VT.GetSupportedProtocolName(ref this, dwProtocolNum, pwszProtocolName, out pcchProtocolName);
			public HRESULT AddLoggingUrl(PWSTR pwszUrl) mut => VT.AddLoggingUrl(ref this, pwszUrl);
			public HRESULT GetLoggingUrl(uint32 dwIndex, char16* pwszUrl, out uint32 pcchUrl) mut => VT.GetLoggingUrl(ref this, dwIndex, pwszUrl, out pcchUrl);
			public HRESULT GetLoggingUrlCount(out uint32 pdwUrlCount) mut => VT.GetLoggingUrlCount(ref this, out pdwUrlCount);
			public HRESULT ResetLoggingUrlList() mut => VT.ResetLoggingUrlList(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out uint64 pcnsBufferingTime) GetBufferingTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, uint64 cnsBufferingTime) SetBufferingTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, WM_PORT_NUMBER_RANGE* pRangeArray, out uint32 pcRanges) GetUDPPortRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, WM_PORT_NUMBER_RANGE* pRangeArray, uint32 cRanges) SetUDPPortRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, out WMT_PROXY_SETTINGS pProxySetting) GetProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, WMT_PROXY_SETTINGS ProxySetting) SetProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, char16* pwszHostName, out uint32 pcchHostName) GetProxyHostName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, PWSTR pwszHostName) SetProxyHostName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, out uint32 pdwPort) GetProxyPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, uint32 dwPort) SetProxyPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, char16* pwszExceptionList, out uint32 pcchExceptionList) GetProxyExceptionList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, PWSTR pwszExceptionList) SetProxyExceptionList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, out BOOL pfBypassForLocal) GetProxyBypassForLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszProtocol, BOOL fBypassForLocal) SetProxyBypassForLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out BOOL pfForceRerunDetection) GetForceRerunAutoProxyDetection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, BOOL fForceRerunDetection) SetForceRerunAutoProxyDetection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out BOOL pfEnableMulticast) GetEnableMulticast;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, BOOL fEnableMulticast) SetEnableMulticast;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out BOOL pfEnableHTTP) GetEnableHTTP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, BOOL fEnableHTTP) SetEnableHTTP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out BOOL pfEnableUDP) GetEnableUDP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, BOOL fEnableUDP) SetEnableUDP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out BOOL pfEnableTCP) GetEnableTCP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, BOOL fEnableTCP) SetEnableTCP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self) ResetProtocolRollover;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out uint32 pdwConnectionBandwidth) GetConnectionBandwidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, uint32 dwConnectionBandwidth) SetConnectionBandwidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out uint32 pcProtocols) GetNumProtocolsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, uint32 dwProtocolNum, char16* pwszProtocolName, out uint32 pcchProtocolName) GetSupportedProtocolName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, PWSTR pwszUrl) AddLoggingUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, uint32 dwIndex, char16* pwszUrl, out uint32 pcchUrl) GetLoggingUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self, out uint32 pdwUrlCount) GetLoggingUrlCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig self) ResetLoggingUrlList;
			}
		}
		[CRepr]
		public struct IWMReaderNetworkConfig2 : IWMReaderNetworkConfig
		{
			public const new Guid IID = .(0xd979a853, 0x042b, 0x4050, 0x83, 0x87, 0xc9, 0x39, 0xdb, 0x22, 0x01, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnableContentCaching(out BOOL pfEnableContentCaching) mut => VT.GetEnableContentCaching(ref this, out pfEnableContentCaching);
			public HRESULT SetEnableContentCaching(BOOL fEnableContentCaching) mut => VT.SetEnableContentCaching(ref this, fEnableContentCaching);
			public HRESULT GetEnableFastCache(out BOOL pfEnableFastCache) mut => VT.GetEnableFastCache(ref this, out pfEnableFastCache);
			public HRESULT SetEnableFastCache(BOOL fEnableFastCache) mut => VT.SetEnableFastCache(ref this, fEnableFastCache);
			public HRESULT GetAcceleratedStreamingDuration(out uint64 pcnsAccelDuration) mut => VT.GetAcceleratedStreamingDuration(ref this, out pcnsAccelDuration);
			public HRESULT SetAcceleratedStreamingDuration(uint64 cnsAccelDuration) mut => VT.SetAcceleratedStreamingDuration(ref this, cnsAccelDuration);
			public HRESULT GetAutoReconnectLimit(out uint32 pdwAutoReconnectLimit) mut => VT.GetAutoReconnectLimit(ref this, out pdwAutoReconnectLimit);
			public HRESULT SetAutoReconnectLimit(uint32 dwAutoReconnectLimit) mut => VT.SetAutoReconnectLimit(ref this, dwAutoReconnectLimit);
			public HRESULT GetEnableResends(out BOOL pfEnableResends) mut => VT.GetEnableResends(ref this, out pfEnableResends);
			public HRESULT SetEnableResends(BOOL fEnableResends) mut => VT.SetEnableResends(ref this, fEnableResends);
			public HRESULT GetEnableThinning(out BOOL pfEnableThinning) mut => VT.GetEnableThinning(ref this, out pfEnableThinning);
			public HRESULT SetEnableThinning(BOOL fEnableThinning) mut => VT.SetEnableThinning(ref this, fEnableThinning);
			public HRESULT GetMaxNetPacketSize(out uint32 pdwMaxNetPacketSize) mut => VT.GetMaxNetPacketSize(ref this, out pdwMaxNetPacketSize);

			[CRepr]
			public struct VTable : IWMReaderNetworkConfig.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out BOOL pfEnableContentCaching) GetEnableContentCaching;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, BOOL fEnableContentCaching) SetEnableContentCaching;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out BOOL pfEnableFastCache) GetEnableFastCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, BOOL fEnableFastCache) SetEnableFastCache;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out uint64 pcnsAccelDuration) GetAcceleratedStreamingDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, uint64 cnsAccelDuration) SetAcceleratedStreamingDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out uint32 pdwAutoReconnectLimit) GetAutoReconnectLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, uint32 dwAutoReconnectLimit) SetAutoReconnectLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out BOOL pfEnableResends) GetEnableResends;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, BOOL fEnableResends) SetEnableResends;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out BOOL pfEnableThinning) GetEnableThinning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, BOOL fEnableThinning) SetEnableThinning;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderNetworkConfig2 self, out uint32 pdwMaxNetPacketSize) GetMaxNetPacketSize;
			}
		}
		[CRepr]
		public struct IWMReaderStreamClock : IUnknown
		{
			public const new Guid IID = .(0x96406bed, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTime(ref uint64 pcnsNow) mut => VT.GetTime(ref this, ref pcnsNow);
			public HRESULT SetTimer(uint64 cnsWhen, void* pvParam, out uint32 pdwTimerId) mut => VT.SetTimer(ref this, cnsWhen, pvParam, out pdwTimerId);
			public HRESULT KillTimer(uint32 dwTimerId) mut => VT.KillTimer(ref this, dwTimerId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderStreamClock self, ref uint64 pcnsNow) GetTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderStreamClock self, uint64 cnsWhen, void* pvParam, out uint32 pdwTimerId) SetTimer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderStreamClock self, uint32 dwTimerId) KillTimer;
			}
		}
		[CRepr]
		public struct IWMIndexer : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc71, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartIndexing(PWSTR pwszURL, ref IWMStatusCallback pCallback, void* pvContext) mut => VT.StartIndexing(ref this, pwszURL, ref pCallback, pvContext);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIndexer self, PWSTR pwszURL, ref IWMStatusCallback pCallback, void* pvContext) StartIndexing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIndexer self) Cancel;
			}
		}
		[CRepr]
		public struct IWMIndexer2 : IWMIndexer
		{
			public const new Guid IID = .(0xb70f1e42, 0x6255, 0x4df0, 0xa6, 0xb9, 0x02, 0xb2, 0x12, 0xd9, 0xe2, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Configure(uint16 wStreamNum, WMT_INDEXER_TYPE nIndexerType, void* pvInterval, void* pvIndexType) mut => VT.Configure(ref this, wStreamNum, nIndexerType, pvInterval, pvIndexType);

			[CRepr]
			public struct VTable : IWMIndexer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMIndexer2 self, uint16 wStreamNum, WMT_INDEXER_TYPE nIndexerType, void* pvInterval, void* pvIndexType) Configure;
			}
		}
		[CRepr]
		public struct IWMLicenseBackup : IUnknown
		{
			public const new Guid IID = .(0x05e5ac9f, 0x3fb6, 0x4508, 0xbb, 0x43, 0xa4, 0x06, 0x7b, 0xa1, 0xeb, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BackupLicenses(uint32 dwFlags, ref IWMStatusCallback pCallback) mut => VT.BackupLicenses(ref this, dwFlags, ref pCallback);
			public HRESULT CancelLicenseBackup() mut => VT.CancelLicenseBackup(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseBackup self, uint32 dwFlags, ref IWMStatusCallback pCallback) BackupLicenses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseBackup self) CancelLicenseBackup;
			}
		}
		[CRepr]
		public struct IWMLicenseRestore : IUnknown
		{
			public const new Guid IID = .(0xc70b6334, 0xa22e, 0x4efb, 0xa2, 0x45, 0x15, 0xe6, 0x5a, 0x00, 0x4a, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestoreLicenses(uint32 dwFlags, ref IWMStatusCallback pCallback) mut => VT.RestoreLicenses(ref this, dwFlags, ref pCallback);
			public HRESULT CancelLicenseRestore() mut => VT.CancelLicenseRestore(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseRestore self, uint32 dwFlags, ref IWMStatusCallback pCallback) RestoreLicenses;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseRestore self) CancelLicenseRestore;
			}
		}
		[CRepr]
		public struct IWMBackupRestoreProps : IUnknown
		{
			public const new Guid IID = .(0x3c8e0da6, 0x996f, 0x4ff3, 0xa1, 0xaf, 0x48, 0x38, 0xf9, 0x37, 0x7e, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropCount(out uint16 pcProps) mut => VT.GetPropCount(ref this, out pcProps);
			public HRESULT GetPropByIndex(uint16 wIndex, char16* pwszName, out uint16 pcchNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetPropByIndex(ref this, wIndex, pwszName, out pcchNameLen, out pType, pValue, out pcbLength);
			public HRESULT GetPropByName(PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) mut => VT.GetPropByName(ref this, pszName, out pType, pValue, out pcbLength);
			public HRESULT SetProp(PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut => VT.SetProp(ref this, pszName, Type, pValue, cbLength);
			public HRESULT RemoveProp(PWSTR pcwszName) mut => VT.RemoveProp(ref this, pcwszName);
			public HRESULT RemoveAllProps() mut => VT.RemoveAllProps(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self, out uint16 pcProps) GetPropCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self, uint16 wIndex, char16* pwszName, out uint16 pcchNameLen, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetPropByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint16 pcbLength) GetPropByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self, PWSTR pcwszName) RemoveProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMBackupRestoreProps self) RemoveAllProps;
			}
		}
		[CRepr]
		public struct IWMCodecInfo : IUnknown
		{
			public const new Guid IID = .(0xa970f41e, 0x34de, 0x4a98, 0xb3, 0xba, 0xe4, 0xb3, 0xca, 0x75, 0x28, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInfoCount(in Guid guidType, out uint32 pcCodecs) mut => VT.GetCodecInfoCount(ref this, guidType, out pcCodecs);
			public HRESULT GetCodecFormatCount(in Guid guidType, uint32 dwCodecIndex, out uint32 pcFormat) mut => VT.GetCodecFormatCount(ref this, guidType, dwCodecIndex, out pcFormat);
			public HRESULT GetCodecFormat(in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, out IWMStreamConfig* ppIStreamConfig) mut => VT.GetCodecFormat(ref this, guidType, dwCodecIndex, dwFormatIndex, out ppIStreamConfig);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo self, in Guid guidType, out uint32 pcCodecs) GetCodecInfoCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo self, in Guid guidType, uint32 dwCodecIndex, out uint32 pcFormat) GetCodecFormatCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo self, in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, out IWMStreamConfig* ppIStreamConfig) GetCodecFormat;
			}
		}
		[CRepr]
		public struct IWMCodecInfo2 : IWMCodecInfo
		{
			public const new Guid IID = .(0xaa65e273, 0xb686, 0x4056, 0x91, 0xec, 0xdd, 0x76, 0x8d, 0x4d, 0xf7, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecName(in Guid guidType, uint32 dwCodecIndex, char16* wszName, out uint32 pcchName) mut => VT.GetCodecName(ref this, guidType, dwCodecIndex, wszName, out pcchName);
			public HRESULT GetCodecFormatDesc(in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, out IWMStreamConfig* ppIStreamConfig, char16* wszDesc, out uint32 pcchDesc) mut => VT.GetCodecFormatDesc(ref this, guidType, dwCodecIndex, dwFormatIndex, out ppIStreamConfig, wszDesc, out pcchDesc);

			[CRepr]
			public struct VTable : IWMCodecInfo.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo2 self, in Guid guidType, uint32 dwCodecIndex, char16* wszName, out uint32 pcchName) GetCodecName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo2 self, in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, out IWMStreamConfig* ppIStreamConfig, char16* wszDesc, out uint32 pcchDesc) GetCodecFormatDesc;
			}
		}
		[CRepr]
		public struct IWMCodecInfo3 : IWMCodecInfo2
		{
			public const new Guid IID = .(0x7e51f487, 0x4d93, 0x4f98, 0x8a, 0xb4, 0x27, 0xd0, 0x56, 0x5a, 0xdc, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecFormatProp(in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetCodecFormatProp(ref this, guidType, dwCodecIndex, dwFormatIndex, pszName, out pType, pValue, out pdwSize);
			public HRESULT GetCodecProp(in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetCodecProp(ref this, guidType, dwCodecIndex, pszName, out pType, pValue, out pdwSize);
			public HRESULT SetCodecEnumerationSetting(in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint32 dwSize) mut => VT.SetCodecEnumerationSetting(ref this, guidType, dwCodecIndex, pszName, Type, pValue, dwSize);
			public HRESULT GetCodecEnumerationSetting(in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) mut => VT.GetCodecEnumerationSetting(ref this, guidType, dwCodecIndex, pszName, out pType, pValue, out pdwSize);

			[CRepr]
			public struct VTable : IWMCodecInfo2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo3 self, in Guid guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetCodecFormatProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo3 self, in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetCodecProp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo3 self, in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint32 dwSize) SetCodecEnumerationSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecInfo3 self, in Guid guidType, uint32 dwCodecIndex, PWSTR pszName, out WMT_ATTR_DATATYPE pType, uint8* pValue, out uint32 pdwSize) GetCodecEnumerationSetting;
			}
		}
		[CRepr]
		public struct IWMLanguageList : IUnknown
		{
			public const new Guid IID = .(0xdf683f00, 0x2d49, 0x4d8e, 0x92, 0xb7, 0xfb, 0x19, 0xf6, 0xa0, 0xdc, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguageCount(out uint16 pwCount) mut => VT.GetLanguageCount(ref this, out pwCount);
			public HRESULT GetLanguageDetails(uint16 wIndex, char16* pwszLanguageString, out uint16 pcchLanguageStringLength) mut => VT.GetLanguageDetails(ref this, wIndex, pwszLanguageString, out pcchLanguageStringLength);
			public HRESULT AddLanguageByRFC1766String(PWSTR pwszLanguageString, out uint16 pwIndex) mut => VT.AddLanguageByRFC1766String(ref this, pwszLanguageString, out pwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLanguageList self, out uint16 pwCount) GetLanguageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLanguageList self, uint16 wIndex, char16* pwszLanguageString, out uint16 pcchLanguageStringLength) GetLanguageDetails;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLanguageList self, PWSTR pwszLanguageString, out uint16 pwIndex) AddLanguageByRFC1766String;
			}
		}
		[CRepr]
		public struct IWMWriterPushSink : IWMWriterSink
		{
			public const new Guid IID = .(0xdc10e6a5, 0x072c, 0x467d, 0xbf, 0x57, 0x63, 0x30, 0xa9, 0xdd, 0xe1, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(PWSTR pwszURL, PWSTR pwszTemplateURL, BOOL fAutoDestroy) mut => VT.Connect(ref this, pwszURL, pwszTemplateURL, fAutoDestroy);
			public HRESULT Disconnect() mut => VT.Disconnect(ref this);
			public HRESULT EndSession() mut => VT.EndSession(ref this);

			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPushSink self, PWSTR pwszURL, PWSTR pwszTemplateURL, BOOL fAutoDestroy) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPushSink self) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWriterPushSink self) EndSession;
			}
		}
		[CRepr]
		public struct IWMDeviceRegistration : IUnknown
		{
			public const new Guid IID = .(0xf6211f03, 0x8d21, 0x4e94, 0x93, 0xe6, 0x85, 0x10, 0x80, 0x5f, 0x2d, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterDevice(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, out IWMRegisteredDevice* ppDevice) mut => VT.RegisterDevice(ref this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber, out ppDevice);
			public HRESULT UnregisterDevice(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber) mut => VT.UnregisterDevice(ref this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber);
			public HRESULT GetRegistrationStats(uint32 dwRegisterType, out uint32 pcRegisteredDevices) mut => VT.GetRegistrationStats(ref this, dwRegisterType, out pcRegisteredDevices);
			public HRESULT GetFirstRegisteredDevice(uint32 dwRegisterType, out IWMRegisteredDevice* ppDevice) mut => VT.GetFirstRegisteredDevice(ref this, dwRegisterType, out ppDevice);
			public HRESULT GetNextRegisteredDevice(out IWMRegisteredDevice* ppDevice) mut => VT.GetNextRegisteredDevice(ref this, out ppDevice);
			public HRESULT GetRegisteredDeviceByID(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, out IWMRegisteredDevice* ppDevice) mut => VT.GetRegisteredDeviceByID(ref this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber, out ppDevice);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, out IWMRegisteredDevice* ppDevice) RegisterDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber) UnregisterDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, uint32 dwRegisterType, out uint32 pcRegisteredDevices) GetRegistrationStats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, uint32 dwRegisterType, out IWMRegisteredDevice* ppDevice) GetFirstRegisteredDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, out IWMRegisteredDevice* ppDevice) GetNextRegisteredDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDeviceRegistration self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, out IWMRegisteredDevice* ppDevice) GetRegisteredDeviceByID;
			}
		}
		[CRepr]
		public struct IWMRegisteredDevice : IUnknown
		{
			public const new Guid IID = .(0xa4503bec, 0x5508, 0x4148, 0x97, 0xac, 0xbf, 0xa7, 0x57, 0x60, 0xa7, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceSerialNumber(out DRM_VAL16 pSerialNumber) mut => VT.GetDeviceSerialNumber(ref this, out pSerialNumber);
			public HRESULT GetDeviceCertificate(out INSSBuffer* ppCertificate) mut => VT.GetDeviceCertificate(ref this, out ppCertificate);
			public HRESULT GetDeviceType(out uint32 pdwType) mut => VT.GetDeviceType(ref this, out pdwType);
			public HRESULT GetAttributeCount(out uint32 pcAttributes) mut => VT.GetAttributeCount(ref this, out pcAttributes);
			public HRESULT GetAttributeByIndex(uint32 dwIndex, out BSTR pbstrName, out BSTR pbstrValue) mut => VT.GetAttributeByIndex(ref this, dwIndex, out pbstrName, out pbstrValue);
			public HRESULT GetAttributeByName(BSTR bstrName, out BSTR pbstrValue) mut => VT.GetAttributeByName(ref this, bstrName, out pbstrValue);
			public HRESULT SetAttributeByName(BSTR bstrName, BSTR bstrValue) mut => VT.SetAttributeByName(ref this, bstrName, bstrValue);
			public HRESULT Approve(BOOL fApprove) mut => VT.Approve(ref this, fApprove);
			public HRESULT IsValid(out BOOL pfValid) mut => VT.IsValid(ref this, out pfValid);
			public HRESULT IsApproved(out BOOL pfApproved) mut => VT.IsApproved(ref this, out pfApproved);
			public HRESULT IsWmdrmCompliant(out BOOL pfCompliant) mut => VT.IsWmdrmCompliant(ref this, out pfCompliant);
			public HRESULT IsOpened(out BOOL pfOpened) mut => VT.IsOpened(ref this, out pfOpened);
			public HRESULT Open() mut => VT.Open(ref this);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out DRM_VAL16 pSerialNumber) GetDeviceSerialNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out INSSBuffer* ppCertificate) GetDeviceCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out uint32 pdwType) GetDeviceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out uint32 pcAttributes) GetAttributeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, uint32 dwIndex, out BSTR pbstrName, out BSTR pbstrValue) GetAttributeByIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, BSTR bstrName, out BSTR pbstrValue) GetAttributeByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, BSTR bstrName, BSTR bstrValue) SetAttributeByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, BOOL fApprove) Approve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out BOOL pfValid) IsValid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out BOOL pfApproved) IsApproved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out BOOL pfCompliant) IsWmdrmCompliant;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self, out BOOL pfOpened) IsOpened;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMRegisteredDevice self) Close;
			}
		}
		[CRepr]
		public struct IWMProximityDetection : IUnknown
		{
			public const new Guid IID = .(0x6a9fd8ee, 0xb651, 0x4bf0, 0xb8, 0x49, 0x7d, 0x4e, 0xce, 0x79, 0xa2, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartDetection(uint8* pbRegistrationMsg, uint32 cbRegistrationMsg, uint8* pbLocalAddress, uint32 cbLocalAddress, uint32 dwExtraPortsAllowed, out INSSBuffer* ppRegistrationResponseMsg, ref IWMStatusCallback pCallback, void* pvContext) mut => VT.StartDetection(ref this, pbRegistrationMsg, cbRegistrationMsg, pbLocalAddress, cbLocalAddress, dwExtraPortsAllowed, out ppRegistrationResponseMsg, ref pCallback, pvContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMProximityDetection self, uint8* pbRegistrationMsg, uint32 cbRegistrationMsg, uint8* pbLocalAddress, uint32 cbLocalAddress, uint32 dwExtraPortsAllowed, out INSSBuffer* ppRegistrationResponseMsg, ref IWMStatusCallback pCallback, void* pvContext) StartDetection;
			}
		}
		[CRepr]
		public struct IWMDRMMessageParser : IUnknown
		{
			public const new Guid IID = .(0xa73a0072, 0x25a0, 0x4c99, 0xb4, 0xa5, 0xed, 0xe8, 0x10, 0x1a, 0x6c, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParseRegistrationReqMsg(uint8* pbRegistrationReqMsg, uint32 cbRegistrationReqMsg, out INSSBuffer* ppDeviceCert, out DRM_VAL16 pDeviceSerialNumber) mut => VT.ParseRegistrationReqMsg(ref this, pbRegistrationReqMsg, cbRegistrationReqMsg, out ppDeviceCert, out pDeviceSerialNumber);
			public HRESULT ParseLicenseRequestMsg(uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, out INSSBuffer* ppDeviceCert, out DRM_VAL16 pDeviceSerialNumber, out BSTR pbstrAction) mut => VT.ParseLicenseRequestMsg(ref this, pbLicenseRequestMsg, cbLicenseRequestMsg, out ppDeviceCert, out pDeviceSerialNumber, out pbstrAction);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMMessageParser self, uint8* pbRegistrationReqMsg, uint32 cbRegistrationReqMsg, out INSSBuffer* ppDeviceCert, out DRM_VAL16 pDeviceSerialNumber) ParseRegistrationReqMsg;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMMessageParser self, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, out INSSBuffer* ppDeviceCert, out DRM_VAL16 pDeviceSerialNumber, out BSTR pbstrAction) ParseLicenseRequestMsg;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptor : IUnknown
		{
			public const new Guid IID = .(0x69059850, 0x6e6f, 0x4bb2, 0x80, 0x6f, 0x71, 0x86, 0x3d, 0xdf, 0xc4, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrFileName, out uint8 pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, out INSSBuffer* ppLicenseResponseMsg, ref IWMStatusCallback pCallback, void* pvContext) mut => VT.Initialize(ref this, bstrFileName, out pbLicenseRequestMsg, cbLicenseRequestMsg, out ppLicenseResponseMsg, ref pCallback, pvContext);
			public HRESULT Seek(uint64 hnsTime) mut => VT.Seek(ref this, hnsTime);
			public HRESULT Read(ref uint8 pbData, ref uint32 pcbData) mut => VT.Read(ref this, ref pbData, ref pcbData);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor self, BSTR bstrFileName, out uint8 pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, out INSSBuffer* ppLicenseResponseMsg, ref IWMStatusCallback pCallback, void* pvContext) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor self, uint64 hnsTime) Seek;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor self, ref uint8 pbData, ref uint32 pcbData) Read;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor self) Close;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptor2 : IWMDRMTranscryptor
		{
			public const new Guid IID = .(0xe0da439f, 0xd331, 0x496a, 0xbe, 0xce, 0x18, 0xe5, 0xba, 0xc5, 0xdd, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SeekEx(uint64 cnsStartTime, uint64 cnsDuration, float flRate, BOOL fIncludeFileHeader) mut => VT.SeekEx(ref this, cnsStartTime, cnsDuration, flRate, fIncludeFileHeader);
			public HRESULT ZeroAdjustTimestamps(BOOL fEnable) mut => VT.ZeroAdjustTimestamps(ref this, fEnable);
			public HRESULT GetSeekStartTime(out uint64 pcnsTime) mut => VT.GetSeekStartTime(ref this, out pcnsTime);
			public HRESULT GetDuration(out uint64 pcnsDuration) mut => VT.GetDuration(ref this, out pcnsDuration);

			[CRepr]
			public struct VTable : IWMDRMTranscryptor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor2 self, uint64 cnsStartTime, uint64 cnsDuration, float flRate, BOOL fIncludeFileHeader) SeekEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor2 self, BOOL fEnable) ZeroAdjustTimestamps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor2 self, out uint64 pcnsTime) GetSeekStartTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptor2 self, out uint64 pcnsDuration) GetDuration;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptionManager : IUnknown
		{
			public const new Guid IID = .(0xb1a887b2, 0xa4f0, 0x407a, 0xb0, 0x2e, 0xef, 0xbd, 0x23, 0xbb, 0xec, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTranscryptor(out IWMDRMTranscryptor* ppTranscryptor) mut => VT.CreateTranscryptor(ref this, out ppTranscryptor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMDRMTranscryptionManager self, out IWMDRMTranscryptor* ppTranscryptor) CreateTranscryptor;
			}
		}
		[CRepr]
		public struct IWMWatermarkInfo : IUnknown
		{
			public const new Guid IID = .(0x6f497062, 0xf2e2, 0x4624, 0x8e, 0xa7, 0x9d, 0xd4, 0x0d, 0x81, 0xfc, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWatermarkEntryCount(WMT_WATERMARK_ENTRY_TYPE wmetType, out uint32 pdwCount) mut => VT.GetWatermarkEntryCount(ref this, wmetType, out pdwCount);
			public HRESULT GetWatermarkEntry(WMT_WATERMARK_ENTRY_TYPE wmetType, uint32 dwEntryNum, out WMT_WATERMARK_ENTRY pEntry) mut => VT.GetWatermarkEntry(ref this, wmetType, dwEntryNum, out pEntry);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWatermarkInfo self, WMT_WATERMARK_ENTRY_TYPE wmetType, out uint32 pdwCount) GetWatermarkEntryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMWatermarkInfo self, WMT_WATERMARK_ENTRY_TYPE wmetType, uint32 dwEntryNum, out WMT_WATERMARK_ENTRY pEntry) GetWatermarkEntry;
			}
		}
		[CRepr]
		public struct IWMReaderAccelerator : IUnknown
		{
			public const new Guid IID = .(0xbddc4d08, 0x944d, 0x4d52, 0xa6, 0x12, 0x46, 0xc3, 0xfd, 0xa0, 0x7d, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInterface(uint32 dwOutputNum, in Guid riid, void** ppvCodecInterface) mut => VT.GetCodecInterface(ref this, dwOutputNum, riid, ppvCodecInterface);
			public HRESULT Notify(uint32 dwOutputNum, ref WM_MEDIA_TYPE pSubtype) mut => VT.Notify(ref this, dwOutputNum, ref pSubtype);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAccelerator self, uint32 dwOutputNum, in Guid riid, void** ppvCodecInterface) GetCodecInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderAccelerator self, uint32 dwOutputNum, ref WM_MEDIA_TYPE pSubtype) Notify;
			}
		}
		[CRepr]
		public struct IWMReaderTimecode : IUnknown
		{
			public const new Guid IID = .(0xf369e2f0, 0xe081, 0x4fe6, 0x84, 0x50, 0xb8, 0x10, 0xb2, 0xf4, 0x10, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTimecodeRangeCount(uint16 wStreamNum, out uint16 pwRangeCount) mut => VT.GetTimecodeRangeCount(ref this, wStreamNum, out pwRangeCount);
			public HRESULT GetTimecodeRangeBounds(uint16 wStreamNum, uint16 wRangeNum, out uint32 pStartTimecode, out uint32 pEndTimecode) mut => VT.GetTimecodeRangeBounds(ref this, wStreamNum, wRangeNum, out pStartTimecode, out pEndTimecode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderTimecode self, uint16 wStreamNum, out uint16 pwRangeCount) GetTimecodeRangeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMReaderTimecode self, uint16 wStreamNum, uint16 wRangeNum, out uint32 pStartTimecode, out uint32 pEndTimecode) GetTimecodeRangeBounds;
			}
		}
		[CRepr]
		public struct IWMAddressAccess : IUnknown
		{
			public const new Guid IID = .(0xbb3c6389, 0x1633, 0x4e92, 0xaf, 0x14, 0x9f, 0x31, 0x73, 0xba, 0x39, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAccessEntryCount(WM_AETYPE aeType, out uint32 pcEntries) mut => VT.GetAccessEntryCount(ref this, aeType, out pcEntries);
			public HRESULT GetAccessEntry(WM_AETYPE aeType, uint32 dwEntryNum, out WM_ADDRESS_ACCESSENTRY pAddrAccessEntry) mut => VT.GetAccessEntry(ref this, aeType, dwEntryNum, out pAddrAccessEntry);
			public HRESULT AddAccessEntry(WM_AETYPE aeType, ref WM_ADDRESS_ACCESSENTRY pAddrAccessEntry) mut => VT.AddAccessEntry(ref this, aeType, ref pAddrAccessEntry);
			public HRESULT RemoveAccessEntry(WM_AETYPE aeType, uint32 dwEntryNum) mut => VT.RemoveAccessEntry(ref this, aeType, dwEntryNum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess self, WM_AETYPE aeType, out uint32 pcEntries) GetAccessEntryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess self, WM_AETYPE aeType, uint32 dwEntryNum, out WM_ADDRESS_ACCESSENTRY pAddrAccessEntry) GetAccessEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess self, WM_AETYPE aeType, ref WM_ADDRESS_ACCESSENTRY pAddrAccessEntry) AddAccessEntry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess self, WM_AETYPE aeType, uint32 dwEntryNum) RemoveAccessEntry;
			}
		}
		[CRepr]
		public struct IWMAddressAccess2 : IWMAddressAccess
		{
			public const new Guid IID = .(0x65a83fc2, 0x3e98, 0x4d4d, 0x81, 0xb5, 0x2a, 0x74, 0x28, 0x86, 0xb3, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAccessEntryEx(WM_AETYPE aeType, uint32 dwEntryNum, out BSTR pbstrAddress, out BSTR pbstrMask) mut => VT.GetAccessEntryEx(ref this, aeType, dwEntryNum, out pbstrAddress, out pbstrMask);
			public HRESULT AddAccessEntryEx(WM_AETYPE aeType, BSTR bstrAddress, BSTR bstrMask) mut => VT.AddAccessEntryEx(ref this, aeType, bstrAddress, bstrMask);

			[CRepr]
			public struct VTable : IWMAddressAccess.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess2 self, WM_AETYPE aeType, uint32 dwEntryNum, out BSTR pbstrAddress, out BSTR pbstrMask) GetAccessEntryEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAddressAccess2 self, WM_AETYPE aeType, BSTR bstrAddress, BSTR bstrMask) AddAccessEntryEx;
			}
		}
		[CRepr]
		public struct IWMImageInfo : IUnknown
		{
			public const new Guid IID = .(0x9f0aa3b6, 0x7267, 0x4d89, 0x88, 0xf2, 0xba, 0x91, 0x5a, 0xa5, 0xc4, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageCount(out uint32 pcImages) mut => VT.GetImageCount(ref this, out pcImages);
			public HRESULT GetImage(uint32 wIndex, out uint16 pcchMIMEType, char16* pwszMIMEType, out uint16 pcchDescription, char16* pwszDescription, out uint16 pImageType, out uint32 pcbImageData, uint8* pbImageData) mut => VT.GetImage(ref this, wIndex, out pcchMIMEType, pwszMIMEType, out pcchDescription, pwszDescription, out pImageType, out pcbImageData, pbImageData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMImageInfo self, out uint32 pcImages) GetImageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMImageInfo self, uint32 wIndex, out uint16 pcchMIMEType, char16* pwszMIMEType, out uint16 pcchDescription, char16* pwszDescription, out uint16 pImageType, out uint32 pcbImageData, uint8* pbImageData) GetImage;
			}
		}
		[CRepr]
		public struct IWMLicenseRevocationAgent : IUnknown
		{
			public const new Guid IID = .(0x6967f2c9, 0x4e26, 0x4b57, 0x88, 0x94, 0x79, 0x98, 0x80, 0xf7, 0xac, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLRBChallenge(ref uint8 pMachineID, uint32 dwMachineIDLength, ref uint8 pChallenge, uint32 dwChallengeLength, out uint8 pChallengeOutput, out uint32 pdwChallengeOutputLength) mut => VT.GetLRBChallenge(ref this, ref pMachineID, dwMachineIDLength, ref pChallenge, dwChallengeLength, out pChallengeOutput, out pdwChallengeOutputLength);
			public HRESULT ProcessLRB(ref uint8 pSignedLRB, uint32 dwSignedLRBLength, out uint8 pSignedACK, out uint32 pdwSignedACKLength) mut => VT.ProcessLRB(ref this, ref pSignedLRB, dwSignedLRBLength, out pSignedACK, out pdwSignedACKLength);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseRevocationAgent self, ref uint8 pMachineID, uint32 dwMachineIDLength, ref uint8 pChallenge, uint32 dwChallengeLength, out uint8 pChallengeOutput, out uint32 pdwChallengeOutputLength) GetLRBChallenge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMLicenseRevocationAgent self, ref uint8 pSignedLRB, uint32 dwSignedLRBLength, out uint8 pSignedACK, out uint32 pdwSignedACKLength) ProcessLRB;
			}
		}
		[CRepr]
		public struct IWMAuthorizer : IUnknown
		{
			public const new Guid IID = .(0xd9b67d36, 0xa9ad, 0x4eb4, 0xba, 0xef, 0xdb, 0x28, 0x4e, 0xf5, 0x50, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCertCount(out uint32 pcCerts) mut => VT.GetCertCount(ref this, out pcCerts);
			public HRESULT GetCert(uint32 dwIndex, out uint8* ppbCertData) mut => VT.GetCert(ref this, dwIndex, out ppbCertData);
			public HRESULT GetSharedData(uint32 dwCertIndex, in uint8 pbSharedData, ref uint8 pbCert, out uint8* ppbSharedData) mut => VT.GetSharedData(ref this, dwCertIndex, pbSharedData, ref pbCert, out ppbSharedData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAuthorizer self, out uint32 pcCerts) GetCertCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAuthorizer self, uint32 dwIndex, out uint8* ppbCertData) GetCert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMAuthorizer self, uint32 dwCertIndex, in uint8 pbSharedData, ref uint8 pbCert, out uint8* ppbSharedData) GetSharedData;
			}
		}
		[CRepr]
		public struct IWMSecureChannel : IWMAuthorizer
		{
			public const new Guid IID = .(0x2720598a, 0xd0f2, 0x4189, 0xbd, 0x10, 0x91, 0xc4, 0x6e, 0xf0, 0x93, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WMSC_AddCertificate(ref IWMAuthorizer pCert) mut => VT.WMSC_AddCertificate(ref this, ref pCert);
			public HRESULT WMSC_AddSignature(ref uint8 pbCertSig, uint32 cbCertSig) mut => VT.WMSC_AddSignature(ref this, ref pbCertSig, cbCertSig);
			public HRESULT WMSC_Connect(ref IWMSecureChannel pOtherSide) mut => VT.WMSC_Connect(ref this, ref pOtherSide);
			public HRESULT WMSC_IsConnected(out BOOL pfIsConnected) mut => VT.WMSC_IsConnected(ref this, out pfIsConnected);
			public HRESULT WMSC_Disconnect() mut => VT.WMSC_Disconnect(ref this);
			public HRESULT WMSC_GetValidCertificate(out uint8* ppbCertificate, out uint32 pdwSignature) mut => VT.WMSC_GetValidCertificate(ref this, out ppbCertificate, out pdwSignature);
			public HRESULT WMSC_Encrypt(ref uint8 pbData, uint32 cbData) mut => VT.WMSC_Encrypt(ref this, ref pbData, cbData);
			public HRESULT WMSC_Decrypt(ref uint8 pbData, uint32 cbData) mut => VT.WMSC_Decrypt(ref this, ref pbData, cbData);
			public HRESULT WMSC_Lock() mut => VT.WMSC_Lock(ref this);
			public HRESULT WMSC_Unlock() mut => VT.WMSC_Unlock(ref this);
			public HRESULT WMSC_SetSharedData(uint32 dwCertIndex, in uint8 pbSharedData) mut => VT.WMSC_SetSharedData(ref this, dwCertIndex, pbSharedData);

			[CRepr]
			public struct VTable : IWMAuthorizer.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, ref IWMAuthorizer pCert) WMSC_AddCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, ref uint8 pbCertSig, uint32 cbCertSig) WMSC_AddSignature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, ref IWMSecureChannel pOtherSide) WMSC_Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, out BOOL pfIsConnected) WMSC_IsConnected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self) WMSC_Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, out uint8* ppbCertificate, out uint32 pdwSignature) WMSC_GetValidCertificate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, ref uint8 pbData, uint32 cbData) WMSC_Encrypt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, ref uint8 pbData, uint32 cbData) WMSC_Decrypt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self) WMSC_Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self) WMSC_Unlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSecureChannel self, uint32 dwCertIndex, in uint8 pbSharedData) WMSC_SetSharedData;
			}
		}
		[CRepr]
		public struct IWMGetSecureChannel : IUnknown
		{
			public const new Guid IID = .(0x94bc0598, 0xc3d2, 0x11d3, 0xbe, 0xdf, 0x00, 0xc0, 0x4f, 0x61, 0x29, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPeerSecureChannelInterface(out IWMSecureChannel* ppPeer) mut => VT.GetPeerSecureChannelInterface(ref this, out ppPeer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMGetSecureChannel self, out IWMSecureChannel* ppPeer) GetPeerSecureChannelInterface;
			}
		}
		[CRepr]
		public struct INSNetSourceCreator : IUnknown
		{
			public const new Guid IID = .(0x0c0e4080, 0x9081, 0x11d2, 0xbe, 0xec, 0x00, 0x60, 0x08, 0x2f, 0x20, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut => VT.Initialize(ref this);
			public HRESULT CreateNetSource(PWSTR pszStreamName, ref IUnknown pMonitor, ref uint8 pData, ref IUnknown pUserContext, ref IUnknown pCallback, uint64 qwContext) mut => VT.CreateNetSource(ref this, pszStreamName, ref pMonitor, ref pData, ref pUserContext, ref pCallback, qwContext);
			public HRESULT GetNetSourceProperties(PWSTR pszStreamName, out IUnknown* ppPropertiesNode) mut => VT.GetNetSourceProperties(ref this, pszStreamName, out ppPropertiesNode);
			public HRESULT GetNetSourceSharedNamespace(out IUnknown* ppSharedNamespace) mut => VT.GetNetSourceSharedNamespace(ref this, out ppSharedNamespace);
			public HRESULT GetNetSourceAdminInterface(PWSTR pszStreamName, out VARIANT pVal) mut => VT.GetNetSourceAdminInterface(ref this, pszStreamName, out pVal);
			public HRESULT GetNumProtocolsSupported(out uint32 pcProtocols) mut => VT.GetNumProtocolsSupported(ref this, out pcProtocols);
			public HRESULT GetProtocolName(uint32 dwProtocolNum, PWSTR pwszProtocolName, out uint16 pcchProtocolName) mut => VT.GetProtocolName(ref this, dwProtocolNum, pwszProtocolName, out pcchProtocolName);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, PWSTR pszStreamName, ref IUnknown pMonitor, ref uint8 pData, ref IUnknown pUserContext, ref IUnknown pCallback, uint64 qwContext) CreateNetSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, PWSTR pszStreamName, out IUnknown* ppPropertiesNode) GetNetSourceProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, out IUnknown* ppSharedNamespace) GetNetSourceSharedNamespace;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, PWSTR pszStreamName, out VARIANT pVal) GetNetSourceAdminInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, out uint32 pcProtocols) GetNumProtocolsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self, uint32 dwProtocolNum, PWSTR pwszProtocolName, out uint16 pcchProtocolName) GetProtocolName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref INSNetSourceCreator self) Shutdown;
			}
		}
		[CRepr]
		public struct IWMPlayerTimestampHook : IUnknown
		{
			public const new Guid IID = .(0x28580dda, 0xd98e, 0x48d0, 0xb7, 0xae, 0x69, 0xe4, 0x73, 0xa0, 0x28, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapTimestamp(int64 rtIn, out int64 prtOut) mut => VT.MapTimestamp(ref this, rtIn, out prtOut);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPlayerTimestampHook self, int64 rtIn, out int64 prtOut) MapTimestamp;
			}
		}
		[CRepr]
		public struct IWMCodecAMVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0xd98ee251, 0x34e0, 0x4a2d, 0x93, 0x12, 0x9b, 0x4c, 0x78, 0x8d, 0x9f, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAcceleratorInterface(ref IAMVideoAccelerator pIAMVA) mut => VT.SetAcceleratorInterface(ref this, ref pIAMVA);
			public HRESULT NegotiateConnection(ref AM_MEDIA_TYPE pMediaType) mut => VT.NegotiateConnection(ref this, ref pMediaType);
			public HRESULT SetPlayerNotify(ref IWMPlayerTimestampHook pHook) mut => VT.SetPlayerNotify(ref this, ref pHook);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecAMVideoAccelerator self, ref IAMVideoAccelerator pIAMVA) SetAcceleratorInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecAMVideoAccelerator self, ref AM_MEDIA_TYPE pMediaType) NegotiateConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecAMVideoAccelerator self, ref IWMPlayerTimestampHook pHook) SetPlayerNotify;
			}
		}
		[CRepr]
		public struct IWMCodecVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0x990641b0, 0x739f, 0x4e94, 0xa8, 0x08, 0x98, 0x88, 0xda, 0x8f, 0x75, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NegotiateConnection(ref IAMVideoAccelerator pIAMVA, ref AM_MEDIA_TYPE pMediaType) mut => VT.NegotiateConnection(ref this, ref pIAMVA, ref pMediaType);
			public HRESULT SetPlayerNotify(ref IWMPlayerTimestampHook pHook) mut => VT.SetPlayerNotify(ref this, ref pHook);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecVideoAccelerator self, ref IAMVideoAccelerator pIAMVA, ref AM_MEDIA_TYPE pMediaType) NegotiateConnection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMCodecVideoAccelerator self, ref IWMPlayerTimestampHook pHook) SetPlayerNotify;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource : IUnknown
		{
			public const new Guid IID = .(0x8bb23e5f, 0xd127, 0x4afb, 0x8d, 0x02, 0xae, 0x5b, 0x66, 0xd5, 0x4c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IUnknown pSharedNamespace, ref IUnknown pNamespaceNode, ref INSNetSourceCreator pNetSourceCreator, BOOL fEmbeddedInServer) mut => VT.Initialize(ref this, ref pSharedNamespace, ref pNamespaceNode, ref pNetSourceCreator, fEmbeddedInServer);
			public HRESULT GetNetSourceCreator(out INSNetSourceCreator* ppNetSourceCreator) mut => VT.GetNetSourceCreator(ref this, out ppNetSourceCreator);
			public HRESULT SetCredentials(BSTR bstrRealm, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) mut => VT.SetCredentials(ref this, bstrRealm, bstrName, bstrPassword, fPersist, fConfirmedGood);
			public HRESULT GetCredentials(BSTR bstrRealm, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) mut => VT.GetCredentials(ref this, bstrRealm, out pbstrName, out pbstrPassword, out pfConfirmedGood);
			public HRESULT DeleteCredentials(BSTR bstrRealm) mut => VT.DeleteCredentials(ref this, bstrRealm);
			public HRESULT GetCredentialFlags(out uint32 lpdwFlags) mut => VT.GetCredentialFlags(ref this, out lpdwFlags);
			public HRESULT SetCredentialFlags(uint32 dwFlags) mut => VT.SetCredentialFlags(ref this, dwFlags);
			public HRESULT FindProxyForURL(BSTR bstrProtocol, BSTR bstrHost, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint32 pdwProxyContext) mut => VT.FindProxyForURL(ref this, bstrProtocol, bstrHost, out pfProxyEnabled, out pbstrProxyServer, out pdwProxyPort, out pdwProxyContext);
			public HRESULT RegisterProxyFailure(HRESULT hrParam, uint32 dwProxyContext) mut => VT.RegisterProxyFailure(ref this, hrParam, dwProxyContext);
			public HRESULT ShutdownProxyContext(uint32 dwProxyContext) mut => VT.ShutdownProxyContext(ref this, dwProxyContext);
			public HRESULT IsUsingIE(uint32 dwProxyContext, out BOOL pfIsUsingIE) mut => VT.IsUsingIE(ref this, dwProxyContext, out pfIsUsingIE);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, ref IUnknown pSharedNamespace, ref IUnknown pNamespaceNode, ref INSNetSourceCreator pNetSourceCreator, BOOL fEmbeddedInServer) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, out INSNetSourceCreator* ppNetSourceCreator) GetNetSourceCreator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, BSTR bstrRealm, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, BSTR bstrRealm, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) GetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, BSTR bstrRealm) DeleteCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, out uint32 lpdwFlags) GetCredentialFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, uint32 dwFlags) SetCredentialFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, BSTR bstrProtocol, BSTR bstrHost, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint32 pdwProxyContext) FindProxyForURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, HRESULT hrParam, uint32 dwProxyContext) RegisterProxyFailure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, uint32 dwProxyContext) ShutdownProxyContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource self, uint32 dwProxyContext, out BOOL pfIsUsingIE) IsUsingIE;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource2 : IUnknown
		{
			public const new Guid IID = .(0xe74d58c3, 0xcf77, 0x4b51, 0xaf, 0x17, 0x74, 0x46, 0x87, 0xc4, 0x3e, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) mut => VT.SetCredentialsEx(ref this, bstrRealm, bstrUrl, fProxy, bstrName, bstrPassword, fPersist, fConfirmedGood);
			public HRESULT GetCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, out NETSOURCE_URLCREDPOLICY_SETTINGS pdwUrlPolicy, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) mut => VT.GetCredentialsEx(ref this, bstrRealm, bstrUrl, fProxy, out pdwUrlPolicy, out pbstrName, out pbstrPassword, out pfConfirmedGood);
			public HRESULT DeleteCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy) mut => VT.DeleteCredentialsEx(ref this, bstrRealm, bstrUrl, fProxy);
			public HRESULT FindProxyForURLEx(BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint32 pdwProxyContext) mut => VT.FindProxyForURLEx(ref this, bstrProtocol, bstrHost, bstrUrl, out pfProxyEnabled, out pbstrProxyServer, out pdwProxyPort, out pdwProxyContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource2 self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentialsEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource2 self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, out NETSOURCE_URLCREDPOLICY_SETTINGS pdwUrlPolicy, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) GetCredentialsEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource2 self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy) DeleteCredentialsEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource2 self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint32 pdwProxyContext) FindProxyForURLEx;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource3 : IWMSInternalAdminNetSource2
		{
			public const new Guid IID = .(0x6b63d08e, 0x4590, 0x44af, 0x9e, 0xb3, 0x57, 0xff, 0x1e, 0x73, 0xbf, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetSourceCreator2(out IUnknown* ppNetSourceCreator) mut => VT.GetNetSourceCreator2(ref this, out ppNetSourceCreator);
			public HRESULT FindProxyForURLEx2(BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint64 pqwProxyContext) mut => VT.FindProxyForURLEx2(ref this, bstrProtocol, bstrHost, bstrUrl, out pfProxyEnabled, out pbstrProxyServer, out pdwProxyPort, out pqwProxyContext);
			public HRESULT RegisterProxyFailure2(HRESULT hrParam, uint64 qwProxyContext) mut => VT.RegisterProxyFailure2(ref this, hrParam, qwProxyContext);
			public HRESULT ShutdownProxyContext2(uint64 qwProxyContext) mut => VT.ShutdownProxyContext2(ref this, qwProxyContext);
			public HRESULT IsUsingIE2(uint64 qwProxyContext, out BOOL pfIsUsingIE) mut => VT.IsUsingIE2(ref this, qwProxyContext, out pfIsUsingIE);
			public HRESULT SetCredentialsEx2(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood, BOOL fClearTextAuthentication) mut => VT.SetCredentialsEx2(ref this, bstrRealm, bstrUrl, fProxy, bstrName, bstrPassword, fPersist, fConfirmedGood, fClearTextAuthentication);
			public HRESULT GetCredentialsEx2(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BOOL fClearTextAuthentication, out NETSOURCE_URLCREDPOLICY_SETTINGS pdwUrlPolicy, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) mut => VT.GetCredentialsEx2(ref this, bstrRealm, bstrUrl, fProxy, fClearTextAuthentication, out pdwUrlPolicy, out pbstrName, out pbstrPassword, out pfConfirmedGood);

			[CRepr]
			public struct VTable : IWMSInternalAdminNetSource2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, out IUnknown* ppNetSourceCreator) GetNetSourceCreator2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, out BOOL pfProxyEnabled, out BSTR pbstrProxyServer, out uint32 pdwProxyPort, out uint64 pqwProxyContext) FindProxyForURLEx2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, HRESULT hrParam, uint64 qwProxyContext) RegisterProxyFailure2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, uint64 qwProxyContext) ShutdownProxyContext2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, uint64 qwProxyContext, out BOOL pfIsUsingIE) IsUsingIE2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood, BOOL fClearTextAuthentication) SetCredentialsEx2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMSInternalAdminNetSource3 self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BOOL fClearTextAuthentication, out NETSOURCE_URLCREDPOLICY_SETTINGS pdwUrlPolicy, out BSTR pbstrName, out BSTR pbstrPassword, out BOOL pfConfirmedGood) GetCredentialsEx2;
			}
		}
		
		// --- Functions ---
		
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMIsContentProtected(PWSTR pwszFileName, out BOOL pfIsProtected);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriter(ref IUnknown pUnkCert, out IWMWriter* ppWriter);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateReader(ref IUnknown pUnkCert, uint32 dwRights, out IWMReader* ppReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateSyncReader(ref IUnknown pUnkCert, uint32 dwRights, out IWMSyncReader* ppSyncReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateEditor(out IWMMetadataEditor* ppEditor);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateIndexer(out IWMIndexer* ppIndexer);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateBackupRestorer(ref IUnknown pCallback, out IWMLicenseBackup* ppBackup);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateProfileManager(out IWMProfileManager* ppProfileManager);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterFileSink(out IWMWriterFileSink* ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterNetworkSink(out IWMWriterNetworkSink* ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterPushSink(out IWMWriterPushSink* ppSink);
	}
}
