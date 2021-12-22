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
		
		[AllowDuplicates]
		public enum _AM_ASFWRITERCONFIG_PARAM : int32
		{
			AUTOINDEX = 1,
			MULTIPASS = 2,
			DONTCOMPRESS = 3,
		}
		[AllowDuplicates]
		public enum WEBSTREAM_SAMPLE_TYPE : int32
		{
			FILE = 1,
			RENDER = 2,
		}
		[AllowDuplicates]
		public enum WM_SF_TYPE : int32
		{
			CLEANPOINT = 1,
			DISCONTINUITY = 2,
			DATALOSS = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMT_STREAM_SELECTION : int32
		{
			OFF = 0,
			CLEANPOINT_ONLY = 1,
			ON = 2,
		}
		[AllowDuplicates]
		public enum WMT_IMAGE_TYPE : int32
		{
			NONE = 0,
			BITMAP = 1,
			JPEG = 2,
			GIF = 3,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMT_ATTR_IMAGETYPE : int32
		{
			BITMAP = 1,
			JPEG = 2,
			GIF = 3,
		}
		[AllowDuplicates]
		public enum WMT_VERSION : int32
		{
			_4_0 = 262144,
			_7_0 = 458752,
			_8_0 = 524288,
			_9_0 = 589824,
		}
		[AllowDuplicates]
		public enum WMT_STORAGE_FORMAT : int32
		{
			MP3 = 0,
			V1 = 1,
		}
		[AllowDuplicates]
		public enum WMT_DRMLA_TRUST : int32
		{
			UNTRUSTED = 0,
			TRUSTED = 1,
			TAMPERED = 2,
		}
		[AllowDuplicates]
		public enum WMT_TRANSPORT_TYPE : int32
		{
			Unreliable = 0,
			Reliable = 1,
		}
		[AllowDuplicates]
		public enum WMT_NET_PROTOCOL : int32
		{
			WMT_PROTOCOL_HTTP = 0,
		}
		[AllowDuplicates]
		public enum WMT_PLAY_MODE : int32
		{
			AUTOSELECT = 0,
			LOCAL = 1,
			DOWNLOAD = 2,
			STREAMING = 3,
		}
		[AllowDuplicates]
		public enum WMT_PROXY_SETTINGS : int32
		{
			NONE = 0,
			MANUAL = 1,
			AUTO = 2,
			BROWSER = 3,
			MAX = 4,
		}
		[AllowDuplicates]
		public enum WMT_CODEC_INFO_TYPE : int32
		{
			AUDIO = 0,
			VIDEO = 1,
			UNKNOWN = -1,
		}
		[AllowDuplicates]
		public enum WM_DM_INTERLACED_TYPE : int32
		{
			NOTINTERLACED = 0,
			DEINTERLACE_NORMAL = 1,
			DEINTERLACE_HALFSIZE = 2,
			DEINTERLACE_HALFSIZEDOUBLERATE = 3,
			DEINTERLACE_INVERSETELECINE = 4,
			DEINTERLACE_VERTICALHALFSIZEDOUBLERATE = 5,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMT_OFFSET_FORMAT : int32
		{
			_100NS = 0,
			FRAME_NUMBERS = 1,
			PLAYLIST_OFFSET = 2,
			TIMECODE = 3,
			_100NS_APPROXIMATE = 4,
		}
		[AllowDuplicates]
		public enum WMT_INDEXER_TYPE : int32
		{
			PRESENTATION_TIME = 0,
			FRAME_NUMBERS = 1,
			TIMECODE = 2,
		}
		[AllowDuplicates]
		public enum WMT_INDEX_TYPE : int32
		{
			DATA_UNIT = 1,
			OBJECT = 2,
			CLEAN_POINT = 3,
		}
		[AllowDuplicates]
		public enum WMT_FILESINK_MODE : int32
		{
			SINGLE_BUFFERS = 1,
			FILESINK_DATA_UNITS = 2,
			FILESINK_UNBUFFERED = 4,
		}
		[AllowDuplicates]
		public enum WMT_MUSICSPEECH_CLASS_MODE : int32
		{
			MUSIC = 0,
			SPEECH = 1,
			MIXED = 2,
		}
		[AllowDuplicates]
		public enum WMT_WATERMARK_ENTRY_TYPE : int32
		{
			AUDIO = 1,
			VIDEO = 2,
		}
		[AllowDuplicates]
		public enum WM_PLAYBACK_DRC_LEVEL : int32
		{
			HIGH = 0,
			MEDIUM = 1,
			LOW = 2,
		}
		[AllowDuplicates]
		public enum WMT_TIMECODE_FRAMERATE : int32
		{
			_30 = 0,
			_30DROP = 1,
			_25 = 2,
			_24 = 3,
		}
		[AllowDuplicates]
		public enum WMT_CREDENTIAL_FLAGS : int32
		{
			SAVE = 1,
			DONT_CACHE = 2,
			CLEAR_TEXT = 4,
			PROXY = 8,
			ENCRYPT = 16,
		}
		[AllowDuplicates]
		public enum WM_AETYPE : int32
		{
			INCLUDE = 105,
			EXCLUDE = 101,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[CRepr]
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
			public char16[] wszURL;
		}
		[CRepr]
		public struct WM_ADDRESS_ACCESSENTRY
		{
			public uint32 dwIPAddress;
			public uint32 dwMask;
		}
		[CRepr]
		public struct WM_PICTURE
		{
			public PWSTR pwszMIMEType;
			public uint8 bPictureType;
			public PWSTR pwszDescription;
			public uint32 dwDataLen;
			public uint8* pbData;
		}
		[CRepr]
		public struct WM_SYNCHRONISED_LYRICS
		{
			public uint8 bTimeStampFormat;
			public uint8 bContentType;
			public PWSTR pwszContentDescriptor;
			public uint32 dwLyricsLen;
			public uint8* pbLyrics;
		}
		[CRepr]
		public struct WM_USER_WEB_URL
		{
			public PWSTR pwszDescription;
			public PWSTR pwszURL;
		}
		[CRepr]
		public struct WM_USER_TEXT
		{
			public PWSTR pwszDescription;
			public PWSTR pwszText;
		}
		[CRepr]
		public struct WM_LEAKY_BUCKET_PAIR
		{
			public uint32 dwBitrate;
			public uint32 msBufferWindow;
		}
		[CRepr]
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
			public uint32[] dwSequenceHeader;
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
		[CRepr]
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
			
			public HRESULT SetNotify(IAMWMBufferPassCallback* pCallback) mut
			{
				return VT.SetNotify(&this, pCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAMWMBufferPass *self, IAMWMBufferPassCallback* pCallback) SetNotify;
			}
		}
		[CRepr]
		public struct IAMWMBufferPassCallback : IUnknown
		{
			public const new Guid IID = .(0xb25b8372, 0xd2d2, 0x44b2, 0x86, 0x53, 0x1b, 0x8d, 0xae, 0x33, 0x24, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify(INSSBuffer3* pNSSBuffer3, IPin* pPin, int64* prtStart, int64* prtEnd) mut
			{
				return VT.Notify(&this, pNSSBuffer3, pPin, prtStart, prtEnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAMWMBufferPassCallback *self, INSSBuffer3* pNSSBuffer3, IPin* pPin, int64* prtStart, int64* prtEnd) Notify;
			}
		}
		[CRepr]
		public struct INSSBuffer : IUnknown
		{
			public const new Guid IID = .(0xe1cd3524, 0x03d7, 0x11d2, 0x9e, 0xed, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLength(uint32* pdwLength) mut
			{
				return VT.GetLength(&this, pdwLength);
			}
			public HRESULT SetLength(uint32 dwLength) mut
			{
				return VT.SetLength(&this, dwLength);
			}
			public HRESULT GetMaxLength(uint32* pdwLength) mut
			{
				return VT.GetMaxLength(&this, pdwLength);
			}
			public HRESULT GetBuffer(uint8** ppdwBuffer) mut
			{
				return VT.GetBuffer(&this, ppdwBuffer);
			}
			public HRESULT GetBufferAndLength(uint8** ppdwBuffer, uint32* pdwLength) mut
			{
				return VT.GetBufferAndLength(&this, ppdwBuffer, pdwLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INSSBuffer *self, uint32* pdwLength) GetLength;
				public new function HRESULT(INSSBuffer *self, uint32 dwLength) SetLength;
				public new function HRESULT(INSSBuffer *self, uint32* pdwLength) GetMaxLength;
				public new function HRESULT(INSSBuffer *self, uint8** ppdwBuffer) GetBuffer;
				public new function HRESULT(INSSBuffer *self, uint8** ppdwBuffer, uint32* pdwLength) GetBufferAndLength;
			}
		}
		[CRepr]
		public struct INSSBuffer2 : INSSBuffer
		{
			public const new Guid IID = .(0x4f528693, 0x1035, 0x43fe, 0xb4, 0x28, 0x75, 0x75, 0x61, 0xad, 0x3a, 0x68);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSampleProperties(uint32 cbProperties, uint8* pbProperties) mut
			{
				return VT.GetSampleProperties(&this, cbProperties, pbProperties);
			}
			public HRESULT SetSampleProperties(uint32 cbProperties, uint8* pbProperties) mut
			{
				return VT.SetSampleProperties(&this, cbProperties, pbProperties);
			}
			[CRepr]
			public struct VTable : INSSBuffer.VTable
			{
				public new function HRESULT(INSSBuffer2 *self, uint32 cbProperties, uint8* pbProperties) GetSampleProperties;
				public new function HRESULT(INSSBuffer2 *self, uint32 cbProperties, uint8* pbProperties) SetSampleProperties;
			}
		}
		[CRepr]
		public struct INSSBuffer3 : INSSBuffer2
		{
			public const new Guid IID = .(0xc87ceaaf, 0x75be, 0x4bc4, 0x84, 0xeb, 0xac, 0x27, 0x98, 0x50, 0x76, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProperty(Guid guidBufferProperty, void* pvBufferProperty, uint32 dwBufferPropertySize) mut
			{
				return VT.SetProperty(&this, guidBufferProperty, pvBufferProperty, dwBufferPropertySize);
			}
			public HRESULT GetProperty(Guid guidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) mut
			{
				return VT.GetProperty(&this, guidBufferProperty, pvBufferProperty, pdwBufferPropertySize);
			}
			[CRepr]
			public struct VTable : INSSBuffer2.VTable
			{
				public new function HRESULT(INSSBuffer3 *self, Guid guidBufferProperty, void* pvBufferProperty, uint32 dwBufferPropertySize) SetProperty;
				public new function HRESULT(INSSBuffer3 *self, Guid guidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) GetProperty;
			}
		}
		[CRepr]
		public struct INSSBuffer4 : INSSBuffer3
		{
			public const new Guid IID = .(0xb6b8fd5a, 0x32e2, 0x49d4, 0xa9, 0x10, 0xc2, 0x6c, 0xc8, 0x54, 0x65, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyCount(uint32* pcBufferProperties) mut
			{
				return VT.GetPropertyCount(&this, pcBufferProperties);
			}
			public HRESULT GetPropertyByIndex(uint32 dwBufferPropertyIndex, Guid* pguidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) mut
			{
				return VT.GetPropertyByIndex(&this, dwBufferPropertyIndex, pguidBufferProperty, pvBufferProperty, pdwBufferPropertySize);
			}
			[CRepr]
			public struct VTable : INSSBuffer3.VTable
			{
				public new function HRESULT(INSSBuffer4 *self, uint32* pcBufferProperties) GetPropertyCount;
				public new function HRESULT(INSSBuffer4 *self, uint32 dwBufferPropertyIndex, Guid* pguidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) GetPropertyByIndex;
			}
		}
		[CRepr]
		public struct IWMSBufferAllocator : IUnknown
		{
			public const new Guid IID = .(0x61103ca4, 0x2033, 0x11d2, 0x9e, 0xf1, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocateBuffer(uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) mut
			{
				return VT.AllocateBuffer(&this, dwMaxBufferSize, ppBuffer);
			}
			public HRESULT AllocatePageSizeBuffer(uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) mut
			{
				return VT.AllocatePageSizeBuffer(&this, dwMaxBufferSize, ppBuffer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMSBufferAllocator *self, uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) AllocateBuffer;
				public new function HRESULT(IWMSBufferAllocator *self, uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) AllocatePageSizeBuffer;
			}
		}
		[CRepr]
		public struct IWMMediaProps : IUnknown
		{
			public const new Guid IID = .(0x96406bce, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguidType) mut
			{
				return VT.ComGetType(&this, pguidType);
			}
			public HRESULT GetMediaType(WM_MEDIA_TYPE* pType, uint32* pcbType) mut
			{
				return VT.GetMediaType(&this, pType, pcbType);
			}
			public HRESULT SetMediaType(WM_MEDIA_TYPE* pType) mut
			{
				return VT.SetMediaType(&this, pType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMMediaProps *self, Guid* pguidType) ComGetType;
				public new function HRESULT(IWMMediaProps *self, WM_MEDIA_TYPE* pType, uint32* pcbType) GetMediaType;
				public new function HRESULT(IWMMediaProps *self, WM_MEDIA_TYPE* pType) SetMediaType;
			}
		}
		[CRepr]
		public struct IWMVideoMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bcf, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxKeyFrameSpacing(int64* pllTime) mut
			{
				return VT.GetMaxKeyFrameSpacing(&this, pllTime);
			}
			public HRESULT SetMaxKeyFrameSpacing(int64 llTime) mut
			{
				return VT.SetMaxKeyFrameSpacing(&this, llTime);
			}
			public HRESULT GetQuality(uint32* pdwQuality) mut
			{
				return VT.GetQuality(&this, pdwQuality);
			}
			public HRESULT SetQuality(uint32 dwQuality) mut
			{
				return VT.SetQuality(&this, dwQuality);
			}
			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function HRESULT(IWMVideoMediaProps *self, int64* pllTime) GetMaxKeyFrameSpacing;
				public new function HRESULT(IWMVideoMediaProps *self, int64 llTime) SetMaxKeyFrameSpacing;
				public new function HRESULT(IWMVideoMediaProps *self, uint32* pdwQuality) GetQuality;
				public new function HRESULT(IWMVideoMediaProps *self, uint32 dwQuality) SetQuality;
			}
		}
		[CRepr]
		public struct IWMWriter : IUnknown
		{
			public const new Guid IID = .(0x96406bd4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProfileByID(Guid* guidProfile) mut
			{
				return VT.SetProfileByID(&this, guidProfile);
			}
			public HRESULT SetProfile(IWMProfile* pProfile) mut
			{
				return VT.SetProfile(&this, pProfile);
			}
			public HRESULT SetOutputFilename(PWSTR pwszFilename) mut
			{
				return VT.SetOutputFilename(&this, pwszFilename);
			}
			public HRESULT GetInputCount(uint32* pcInputs) mut
			{
				return VT.GetInputCount(&this, pcInputs);
			}
			public HRESULT GetInputProps(uint32 dwInputNum, IWMInputMediaProps** ppInput) mut
			{
				return VT.GetInputProps(&this, dwInputNum, ppInput);
			}
			public HRESULT SetInputProps(uint32 dwInputNum, IWMInputMediaProps* pInput) mut
			{
				return VT.SetInputProps(&this, dwInputNum, pInput);
			}
			public HRESULT GetInputFormatCount(uint32 dwInputNumber, uint32* pcFormats) mut
			{
				return VT.GetInputFormatCount(&this, dwInputNumber, pcFormats);
			}
			public HRESULT GetInputFormat(uint32 dwInputNumber, uint32 dwFormatNumber, IWMInputMediaProps** pProps) mut
			{
				return VT.GetInputFormat(&this, dwInputNumber, dwFormatNumber, pProps);
			}
			public HRESULT BeginWriting() mut
			{
				return VT.BeginWriting(&this);
			}
			public HRESULT EndWriting() mut
			{
				return VT.EndWriting(&this);
			}
			public HRESULT AllocateSample(uint32 dwSampleSize, INSSBuffer** ppSample) mut
			{
				return VT.AllocateSample(&this, dwSampleSize, ppSample);
			}
			public HRESULT WriteSample(uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) mut
			{
				return VT.WriteSample(&this, dwInputNum, cnsSampleTime, dwFlags, pSample);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWriter *self, Guid* guidProfile) SetProfileByID;
				public new function HRESULT(IWMWriter *self, IWMProfile* pProfile) SetProfile;
				public new function HRESULT(IWMWriter *self, PWSTR pwszFilename) SetOutputFilename;
				public new function HRESULT(IWMWriter *self, uint32* pcInputs) GetInputCount;
				public new function HRESULT(IWMWriter *self, uint32 dwInputNum, IWMInputMediaProps** ppInput) GetInputProps;
				public new function HRESULT(IWMWriter *self, uint32 dwInputNum, IWMInputMediaProps* pInput) SetInputProps;
				public new function HRESULT(IWMWriter *self, uint32 dwInputNumber, uint32* pcFormats) GetInputFormatCount;
				public new function HRESULT(IWMWriter *self, uint32 dwInputNumber, uint32 dwFormatNumber, IWMInputMediaProps** pProps) GetInputFormat;
				public new function HRESULT(IWMWriter *self) BeginWriting;
				public new function HRESULT(IWMWriter *self) EndWriting;
				public new function HRESULT(IWMWriter *self, uint32 dwSampleSize, INSSBuffer** ppSample) AllocateSample;
				public new function HRESULT(IWMWriter *self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) WriteSample;
				public new function HRESULT(IWMWriter *self) Flush;
			}
		}
		[CRepr]
		public struct IWMDRMWriter : IUnknown
		{
			public const new Guid IID = .(0xd6ea5dd0, 0x12a0, 0x43f4, 0x90, 0xab, 0xa3, 0xfd, 0x45, 0x1e, 0x6a, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GenerateKeySeed(char16* pwszKeySeed, uint32* pcwchLength) mut
			{
				return VT.GenerateKeySeed(&this, pwszKeySeed, pcwchLength);
			}
			public HRESULT GenerateKeyID(char16* pwszKeyID, uint32* pcwchLength) mut
			{
				return VT.GenerateKeyID(&this, pwszKeyID, pcwchLength);
			}
			public HRESULT GenerateSigningKeyPair(char16* pwszPrivKey, uint32* pcwchPrivKeyLength, char16* pwszPubKey, uint32* pcwchPubKeyLength) mut
			{
				return VT.GenerateSigningKeyPair(&this, pwszPrivKey, pcwchPrivKeyLength, pwszPubKey, pcwchPubKeyLength);
			}
			public HRESULT SetDRMAttribute(uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetDRMAttribute(&this, wStreamNum, pszName, Type, pValue, cbLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMWriter *self, char16* pwszKeySeed, uint32* pcwchLength) GenerateKeySeed;
				public new function HRESULT(IWMDRMWriter *self, char16* pwszKeyID, uint32* pcwchLength) GenerateKeyID;
				public new function HRESULT(IWMDRMWriter *self, char16* pwszPrivKey, uint32* pcwchPrivKeyLength, char16* pwszPubKey, uint32* pcwchPubKeyLength) GenerateSigningKeyPair;
				public new function HRESULT(IWMDRMWriter *self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetDRMAttribute;
			}
		}
		[CRepr]
		public struct IWMDRMWriter2 : IWMDRMWriter
		{
			public const new Guid IID = .(0x38ee7a94, 0x40e2, 0x4e10, 0xaa, 0x3f, 0x33, 0xfd, 0x32, 0x10, 0xed, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWMDRMNetEncryption(BOOL fSamplesEncrypted, uint8* pbKeyID, uint32 cbKeyID) mut
			{
				return VT.SetWMDRMNetEncryption(&this, fSamplesEncrypted, pbKeyID, cbKeyID);
			}
			[CRepr]
			public struct VTable : IWMDRMWriter.VTable
			{
				public new function HRESULT(IWMDRMWriter2 *self, BOOL fSamplesEncrypted, uint8* pbKeyID, uint32 cbKeyID) SetWMDRMNetEncryption;
			}
		}
		[CRepr]
		public struct IWMDRMWriter3 : IWMDRMWriter2
		{
			public const new Guid IID = .(0xa7184082, 0xa4aa, 0x4dde, 0xac, 0x9c, 0xe7, 0x5d, 0xbd, 0x11, 0x17, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProtectStreamSamples(WMDRM_IMPORT_INIT_STRUCT* pImportInitStruct) mut
			{
				return VT.SetProtectStreamSamples(&this, pImportInitStruct);
			}
			[CRepr]
			public struct VTable : IWMDRMWriter2.VTable
			{
				public new function HRESULT(IWMDRMWriter3 *self, WMDRM_IMPORT_INIT_STRUCT* pImportInitStruct) SetProtectStreamSamples;
			}
		}
		[CRepr]
		public struct IWMInputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConnectionName(char16* pwszName, uint16* pcchName) mut
			{
				return VT.GetConnectionName(&this, pwszName, pcchName);
			}
			public HRESULT GetGroupName(char16* pwszName, uint16* pcchName) mut
			{
				return VT.GetGroupName(&this, pwszName, pcchName);
			}
			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function HRESULT(IWMInputMediaProps *self, char16* pwszName, uint16* pcchName) GetConnectionName;
				public new function HRESULT(IWMInputMediaProps *self, char16* pwszName, uint16* pcchName) GetGroupName;
			}
		}
		[CRepr]
		public struct IWMPropertyVault : IUnknown
		{
			public const new Guid IID = .(0x72995a79, 0x5090, 0x42a4, 0x9c, 0x8c, 0xd9, 0xd0, 0xb6, 0xd3, 0x4b, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyCount(uint32* pdwCount) mut
			{
				return VT.GetPropertyCount(&this, pdwCount);
			}
			public HRESULT GetPropertyByName(PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetPropertyByName(&this, pszName, pType, pValue, pdwSize);
			}
			public HRESULT SetProperty(PWSTR pszName, WMT_ATTR_DATATYPE pType, uint8* pValue, uint32 dwSize) mut
			{
				return VT.SetProperty(&this, pszName, pType, pValue, dwSize);
			}
			public HRESULT GetPropertyByIndex(uint32 dwIndex, char16* pszName, uint32* pdwNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetPropertyByIndex(&this, dwIndex, pszName, pdwNameLen, pType, pValue, pdwSize);
			}
			public HRESULT CopyPropertiesFrom(IWMPropertyVault* pIWMPropertyVault) mut
			{
				return VT.CopyPropertiesFrom(&this, pIWMPropertyVault);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPropertyVault *self, uint32* pdwCount) GetPropertyCount;
				public new function HRESULT(IWMPropertyVault *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetPropertyByName;
				public new function HRESULT(IWMPropertyVault *self, PWSTR pszName, WMT_ATTR_DATATYPE pType, uint8* pValue, uint32 dwSize) SetProperty;
				public new function HRESULT(IWMPropertyVault *self, uint32 dwIndex, char16* pszName, uint32* pdwNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetPropertyByIndex;
				public new function HRESULT(IWMPropertyVault *self, IWMPropertyVault* pIWMPropertyVault) CopyPropertiesFrom;
				public new function HRESULT(IWMPropertyVault *self) Clear;
			}
		}
		[CRepr]
		public struct IWMIStreamProps : IUnknown
		{
			public const new Guid IID = .(0x6816dad3, 0x2b4b, 0x4c8e, 0x81, 0x49, 0x87, 0x4c, 0x34, 0x83, 0xa7, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetProperty(&this, pszName, pType, pValue, pdwSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMIStreamProps *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetProperty;
			}
		}
		[CRepr]
		public struct IWMReader : IUnknown
		{
			public const new Guid IID = .(0x96406bd6, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszURL, IWMReaderCallback* pCallback, void* pvContext) mut
			{
				return VT.Open(&this, pwszURL, pCallback, pvContext);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetOutputCount(uint32* pcOutputs) mut
			{
				return VT.GetOutputCount(&this, pcOutputs);
			}
			public HRESULT GetOutputProps(uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) mut
			{
				return VT.GetOutputProps(&this, dwOutputNum, ppOutput);
			}
			public HRESULT SetOutputProps(uint32 dwOutputNum, IWMOutputMediaProps* pOutput) mut
			{
				return VT.SetOutputProps(&this, dwOutputNum, pOutput);
			}
			public HRESULT GetOutputFormatCount(uint32 dwOutputNumber, uint32* pcFormats) mut
			{
				return VT.GetOutputFormatCount(&this, dwOutputNumber, pcFormats);
			}
			public HRESULT GetOutputFormat(uint32 dwOutputNumber, uint32 dwFormatNumber, IWMOutputMediaProps** ppProps) mut
			{
				return VT.GetOutputFormat(&this, dwOutputNumber, dwFormatNumber, ppProps);
			}
			public HRESULT Start(uint64 cnsStart, uint64 cnsDuration, float fRate, void* pvContext) mut
			{
				return VT.Start(&this, cnsStart, cnsDuration, fRate, pvContext);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReader *self, PWSTR pwszURL, IWMReaderCallback* pCallback, void* pvContext) Open;
				public new function HRESULT(IWMReader *self) Close;
				public new function HRESULT(IWMReader *self, uint32* pcOutputs) GetOutputCount;
				public new function HRESULT(IWMReader *self, uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) GetOutputProps;
				public new function HRESULT(IWMReader *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) SetOutputProps;
				public new function HRESULT(IWMReader *self, uint32 dwOutputNumber, uint32* pcFormats) GetOutputFormatCount;
				public new function HRESULT(IWMReader *self, uint32 dwOutputNumber, uint32 dwFormatNumber, IWMOutputMediaProps** ppProps) GetOutputFormat;
				public new function HRESULT(IWMReader *self, uint64 cnsStart, uint64 cnsDuration, float fRate, void* pvContext) Start;
				public new function HRESULT(IWMReader *self) Stop;
				public new function HRESULT(IWMReader *self) Pause;
				public new function HRESULT(IWMReader *self) Resume;
			}
		}
		[CRepr]
		public struct IWMSyncReader : IUnknown
		{
			public const new Guid IID = .(0x9397f121, 0x7705, 0x4dc9, 0xb0, 0x49, 0x98, 0xb6, 0x98, 0x18, 0x84, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut
			{
				return VT.Open(&this, pwszFilename);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT SetRange(uint64 cnsStartTime, int64 cnsDuration) mut
			{
				return VT.SetRange(&this, cnsStartTime, cnsDuration);
			}
			public HRESULT SetRangeByFrame(uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead) mut
			{
				return VT.SetRangeByFrame(&this, wStreamNum, qwFrameNumber, cFramesToRead);
			}
			public HRESULT GetNextSample(uint16 wStreamNum, INSSBuffer** ppSample, uint64* pcnsSampleTime, uint64* pcnsDuration, uint32* pdwFlags, uint32* pdwOutputNum, uint16* pwStreamNum) mut
			{
				return VT.GetNextSample(&this, wStreamNum, ppSample, pcnsSampleTime, pcnsDuration, pdwFlags, pdwOutputNum, pwStreamNum);
			}
			public HRESULT SetStreamsSelected(uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) mut
			{
				return VT.SetStreamsSelected(&this, cStreamCount, pwStreamNumbers, pSelections);
			}
			public HRESULT GetStreamSelected(uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) mut
			{
				return VT.GetStreamSelected(&this, wStreamNum, pSelection);
			}
			public HRESULT SetReadStreamSamples(uint16 wStreamNum, BOOL fCompressed) mut
			{
				return VT.SetReadStreamSamples(&this, wStreamNum, fCompressed);
			}
			public HRESULT GetReadStreamSamples(uint16 wStreamNum, BOOL* pfCompressed) mut
			{
				return VT.GetReadStreamSamples(&this, wStreamNum, pfCompressed);
			}
			public HRESULT GetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetOutputSetting(&this, dwOutputNum, pszName, pType, pValue, pcbLength);
			}
			public HRESULT SetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetOutputSetting(&this, dwOutputNum, pszName, Type, pValue, cbLength);
			}
			public HRESULT GetOutputCount(uint32* pcOutputs) mut
			{
				return VT.GetOutputCount(&this, pcOutputs);
			}
			public HRESULT GetOutputProps(uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) mut
			{
				return VT.GetOutputProps(&this, dwOutputNum, ppOutput);
			}
			public HRESULT SetOutputProps(uint32 dwOutputNum, IWMOutputMediaProps* pOutput) mut
			{
				return VT.SetOutputProps(&this, dwOutputNum, pOutput);
			}
			public HRESULT GetOutputFormatCount(uint32 dwOutputNum, uint32* pcFormats) mut
			{
				return VT.GetOutputFormatCount(&this, dwOutputNum, pcFormats);
			}
			public HRESULT GetOutputFormat(uint32 dwOutputNum, uint32 dwFormatNum, IWMOutputMediaProps** ppProps) mut
			{
				return VT.GetOutputFormat(&this, dwOutputNum, dwFormatNum, ppProps);
			}
			public HRESULT GetOutputNumberForStream(uint16 wStreamNum, uint32* pdwOutputNum) mut
			{
				return VT.GetOutputNumberForStream(&this, wStreamNum, pdwOutputNum);
			}
			public HRESULT GetStreamNumberForOutput(uint32 dwOutputNum, uint16* pwStreamNum) mut
			{
				return VT.GetStreamNumberForOutput(&this, dwOutputNum, pwStreamNum);
			}
			public HRESULT GetMaxOutputSampleSize(uint32 dwOutput, uint32* pcbMax) mut
			{
				return VT.GetMaxOutputSampleSize(&this, dwOutput, pcbMax);
			}
			public HRESULT GetMaxStreamSampleSize(uint16 wStream, uint32* pcbMax) mut
			{
				return VT.GetMaxStreamSampleSize(&this, wStream, pcbMax);
			}
			public HRESULT OpenStream(IStream* pStream) mut
			{
				return VT.OpenStream(&this, pStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMSyncReader *self, PWSTR pwszFilename) Open;
				public new function HRESULT(IWMSyncReader *self) Close;
				public new function HRESULT(IWMSyncReader *self, uint64 cnsStartTime, int64 cnsDuration) SetRange;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead) SetRangeByFrame;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, INSSBuffer** ppSample, uint64* pcnsSampleTime, uint64* pcnsDuration, uint32* pdwFlags, uint32* pdwOutputNum, uint16* pwStreamNum) GetNextSample;
				public new function HRESULT(IWMSyncReader *self, uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) SetStreamsSelected;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) GetStreamSelected;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, BOOL fCompressed) SetReadStreamSamples;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, BOOL* pfCompressed) GetReadStreamSamples;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetOutputSetting;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
				public new function HRESULT(IWMSyncReader *self, uint32* pcOutputs) GetOutputCount;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) GetOutputProps;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) SetOutputProps;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint32* pcFormats) GetOutputFormatCount;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint32 dwFormatNum, IWMOutputMediaProps** ppProps) GetOutputFormat;
				public new function HRESULT(IWMSyncReader *self, uint16 wStreamNum, uint32* pdwOutputNum) GetOutputNumberForStream;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint16* pwStreamNum) GetStreamNumberForOutput;
				public new function HRESULT(IWMSyncReader *self, uint32 dwOutput, uint32* pcbMax) GetMaxOutputSampleSize;
				public new function HRESULT(IWMSyncReader *self, uint16 wStream, uint32* pcbMax) GetMaxStreamSampleSize;
				public new function HRESULT(IWMSyncReader *self, IStream* pStream) OpenStream;
			}
		}
		[CRepr]
		public struct IWMSyncReader2 : IWMSyncReader
		{
			public const new Guid IID = .(0xfaed3d21, 0x1b6b, 0x4af7, 0x8c, 0xb6, 0x3e, 0x18, 0x9b, 0xbc, 0x18, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetRangeByTimecode(uint16 wStreamNum, WMT_TIMECODE_EXTENSION_DATA* pStart, WMT_TIMECODE_EXTENSION_DATA* pEnd) mut
			{
				return VT.SetRangeByTimecode(&this, wStreamNum, pStart, pEnd);
			}
			public HRESULT SetRangeByFrameEx(uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead, uint64* pcnsStartTime) mut
			{
				return VT.SetRangeByFrameEx(&this, wStreamNum, qwFrameNumber, cFramesToRead, pcnsStartTime);
			}
			public HRESULT SetAllocateForOutput(uint32 dwOutputNum, IWMReaderAllocatorEx* pAllocator) mut
			{
				return VT.SetAllocateForOutput(&this, dwOutputNum, pAllocator);
			}
			public HRESULT GetAllocateForOutput(uint32 dwOutputNum, IWMReaderAllocatorEx** ppAllocator) mut
			{
				return VT.GetAllocateForOutput(&this, dwOutputNum, ppAllocator);
			}
			public HRESULT SetAllocateForStream(uint16 wStreamNum, IWMReaderAllocatorEx* pAllocator) mut
			{
				return VT.SetAllocateForStream(&this, wStreamNum, pAllocator);
			}
			public HRESULT GetAllocateForStream(uint16 dwSreamNum, IWMReaderAllocatorEx** ppAllocator) mut
			{
				return VT.GetAllocateForStream(&this, dwSreamNum, ppAllocator);
			}
			[CRepr]
			public struct VTable : IWMSyncReader.VTable
			{
				public new function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, WMT_TIMECODE_EXTENSION_DATA* pStart, WMT_TIMECODE_EXTENSION_DATA* pEnd) SetRangeByTimecode;
				public new function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead, uint64* pcnsStartTime) SetRangeByFrameEx;
				public new function HRESULT(IWMSyncReader2 *self, uint32 dwOutputNum, IWMReaderAllocatorEx* pAllocator) SetAllocateForOutput;
				public new function HRESULT(IWMSyncReader2 *self, uint32 dwOutputNum, IWMReaderAllocatorEx** ppAllocator) GetAllocateForOutput;
				public new function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, IWMReaderAllocatorEx* pAllocator) SetAllocateForStream;
				public new function HRESULT(IWMSyncReader2 *self, uint16 dwSreamNum, IWMReaderAllocatorEx** ppAllocator) GetAllocateForStream;
			}
		}
		[CRepr]
		public struct IWMOutputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamGroupName(char16* pwszName, uint16* pcchName) mut
			{
				return VT.GetStreamGroupName(&this, pwszName, pcchName);
			}
			public HRESULT GetConnectionName(char16* pwszName, uint16* pcchName) mut
			{
				return VT.GetConnectionName(&this, pwszName, pcchName);
			}
			[CRepr]
			public struct VTable : IWMMediaProps.VTable
			{
				public new function HRESULT(IWMOutputMediaProps *self, char16* pwszName, uint16* pcchName) GetStreamGroupName;
				public new function HRESULT(IWMOutputMediaProps *self, char16* pwszName, uint16* pcchName) GetConnectionName;
			}
		}
		[CRepr]
		public struct IWMStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc70, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatus(WMT_STATUS Status, HRESULT hr, WMT_ATTR_DATATYPE dwType, uint8* pValue, void* pvContext) mut
			{
				return VT.OnStatus(&this, Status, hr, dwType, pValue, pvContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMStatusCallback *self, WMT_STATUS Status, HRESULT hr, WMT_ATTR_DATATYPE dwType, uint8* pValue, void* pvContext) OnStatus;
			}
		}
		[CRepr]
		public struct IWMReaderCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0x96406bd8, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSample(uint32 dwOutputNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) mut
			{
				return VT.OnSample(&this, dwOutputNum, cnsSampleTime, cnsSampleDuration, dwFlags, pSample, pvContext);
			}
			[CRepr]
			public struct VTable : IWMStatusCallback.VTable
			{
				public new function HRESULT(IWMReaderCallback *self, uint32 dwOutputNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnSample;
			}
		}
		[CRepr]
		public struct IWMCredentialCallback : IUnknown
		{
			public const new Guid IID = .(0x342e0eb7, 0xe651, 0x450c, 0x97, 0x5b, 0x2a, 0xce, 0x2c, 0x90, 0xc4, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireCredentials(PWSTR pwszRealm, PWSTR pwszSite, char16* pwszUser, uint32 cchUser, char16* pwszPassword, uint32 cchPassword, HRESULT hrStatus, uint32* pdwFlags) mut
			{
				return VT.AcquireCredentials(&this, pwszRealm, pwszSite, pwszUser, cchUser, pwszPassword, cchPassword, hrStatus, pdwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMCredentialCallback *self, PWSTR pwszRealm, PWSTR pwszSite, char16* pwszUser, uint32 cchUser, char16* pwszPassword, uint32 cchPassword, HRESULT hrStatus, uint32* pdwFlags) AcquireCredentials;
			}
		}
		[CRepr]
		public struct IWMMetadataEditor : IUnknown
		{
			public const new Guid IID = .(0x96406bd9, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut
			{
				return VT.Open(&this, pwszFilename);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMMetadataEditor *self, PWSTR pwszFilename) Open;
				public new function HRESULT(IWMMetadataEditor *self) Close;
				public new function HRESULT(IWMMetadataEditor *self) Flush;
			}
		}
		[CRepr]
		public struct IWMMetadataEditor2 : IWMMetadataEditor
		{
			public const new Guid IID = .(0x203cffe3, 0x2e18, 0x4fdf, 0xb5, 0x9d, 0x6e, 0x71, 0x53, 0x05, 0x34, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenEx(PWSTR pwszFilename, uint32 dwDesiredAccess, uint32 dwShareMode) mut
			{
				return VT.OpenEx(&this, pwszFilename, dwDesiredAccess, dwShareMode);
			}
			[CRepr]
			public struct VTable : IWMMetadataEditor.VTable
			{
				public new function HRESULT(IWMMetadataEditor2 *self, PWSTR pwszFilename, uint32 dwDesiredAccess, uint32 dwShareMode) OpenEx;
			}
		}
		[CRepr]
		public struct IWMDRMEditor : IUnknown
		{
			public const new Guid IID = .(0xff130ebc, 0xa6c3, 0x42a6, 0xb4, 0x01, 0xc3, 0x38, 0x2c, 0x3e, 0x08, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDRMProperty(PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetDRMProperty(&this, pwstrName, pdwType, pValue, pcbLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMEditor *self, PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) GetDRMProperty;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo : IUnknown
		{
			public const new Guid IID = .(0x96406bda, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeCount(uint16 wStreamNum, uint16* pcAttributes) mut
			{
				return VT.GetAttributeCount(&this, wStreamNum, pcAttributes);
			}
			public HRESULT GetAttributeByIndex(uint16 wIndex, uint16* pwStreamNum, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetAttributeByIndex(&this, wIndex, pwStreamNum, pwszName, pcchNameLen, pType, pValue, pcbLength);
			}
			public HRESULT GetAttributeByName(uint16* pwStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetAttributeByName(&this, pwStreamNum, pszName, pType, pValue, pcbLength);
			}
			public HRESULT SetAttribute(uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetAttribute(&this, wStreamNum, pszName, Type, pValue, cbLength);
			}
			public HRESULT GetMarkerCount(uint16* pcMarkers) mut
			{
				return VT.GetMarkerCount(&this, pcMarkers);
			}
			public HRESULT GetMarker(uint16 wIndex, char16* pwszMarkerName, uint16* pcchMarkerNameLen, uint64* pcnsMarkerTime) mut
			{
				return VT.GetMarker(&this, wIndex, pwszMarkerName, pcchMarkerNameLen, pcnsMarkerTime);
			}
			public HRESULT AddMarker(PWSTR pwszMarkerName, uint64 cnsMarkerTime) mut
			{
				return VT.AddMarker(&this, pwszMarkerName, cnsMarkerTime);
			}
			public HRESULT RemoveMarker(uint16 wIndex) mut
			{
				return VT.RemoveMarker(&this, wIndex);
			}
			public HRESULT GetScriptCount(uint16* pcScripts) mut
			{
				return VT.GetScriptCount(&this, pcScripts);
			}
			public HRESULT GetScript(uint16 wIndex, char16* pwszType, uint16* pcchTypeLen, char16* pwszCommand, uint16* pcchCommandLen, uint64* pcnsScriptTime) mut
			{
				return VT.GetScript(&this, wIndex, pwszType, pcchTypeLen, pwszCommand, pcchCommandLen, pcnsScriptTime);
			}
			public HRESULT AddScript(PWSTR pwszType, PWSTR pwszCommand, uint64 cnsScriptTime) mut
			{
				return VT.AddScript(&this, pwszType, pwszCommand, cnsScriptTime);
			}
			public HRESULT RemoveScript(uint16 wIndex) mut
			{
				return VT.RemoveScript(&this, wIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMHeaderInfo *self, uint16 wStreamNum, uint16* pcAttributes) GetAttributeCount;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wIndex, uint16* pwStreamNum, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetAttributeByIndex;
				public new function HRESULT(IWMHeaderInfo *self, uint16* pwStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetAttributeByName;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetAttribute;
				public new function HRESULT(IWMHeaderInfo *self, uint16* pcMarkers) GetMarkerCount;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wIndex, char16* pwszMarkerName, uint16* pcchMarkerNameLen, uint64* pcnsMarkerTime) GetMarker;
				public new function HRESULT(IWMHeaderInfo *self, PWSTR pwszMarkerName, uint64 cnsMarkerTime) AddMarker;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wIndex) RemoveMarker;
				public new function HRESULT(IWMHeaderInfo *self, uint16* pcScripts) GetScriptCount;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wIndex, char16* pwszType, uint16* pcchTypeLen, char16* pwszCommand, uint16* pcchCommandLen, uint64* pcnsScriptTime) GetScript;
				public new function HRESULT(IWMHeaderInfo *self, PWSTR pwszType, PWSTR pwszCommand, uint64 cnsScriptTime) AddScript;
				public new function HRESULT(IWMHeaderInfo *self, uint16 wIndex) RemoveScript;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo2 : IWMHeaderInfo
		{
			public const new Guid IID = .(0x15cf9781, 0x454e, 0x482e, 0xb3, 0x93, 0x85, 0xfa, 0xe4, 0x87, 0xa8, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInfoCount(uint32* pcCodecInfos) mut
			{
				return VT.GetCodecInfoCount(&this, pcCodecInfos);
			}
			public HRESULT GetCodecInfo(uint32 wIndex, uint16* pcchName, char16* pwszName, uint16* pcchDescription, char16* pwszDescription, WMT_CODEC_INFO_TYPE* pCodecType, uint16* pcbCodecInfo, uint8* pbCodecInfo) mut
			{
				return VT.GetCodecInfo(&this, wIndex, pcchName, pwszName, pcchDescription, pwszDescription, pCodecType, pcbCodecInfo, pbCodecInfo);
			}
			[CRepr]
			public struct VTable : IWMHeaderInfo.VTable
			{
				public new function HRESULT(IWMHeaderInfo2 *self, uint32* pcCodecInfos) GetCodecInfoCount;
				public new function HRESULT(IWMHeaderInfo2 *self, uint32 wIndex, uint16* pcchName, char16* pwszName, uint16* pcchDescription, char16* pwszDescription, WMT_CODEC_INFO_TYPE* pCodecType, uint16* pcbCodecInfo, uint8* pbCodecInfo) GetCodecInfo;
			}
		}
		[CRepr]
		public struct IWMHeaderInfo3 : IWMHeaderInfo2
		{
			public const new Guid IID = .(0x15cc68e3, 0x27cc, 0x4ecd, 0xb2, 0x22, 0x3f, 0x5d, 0x02, 0xd8, 0x0b, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeCountEx(uint16 wStreamNum, uint16* pcAttributes) mut
			{
				return VT.GetAttributeCountEx(&this, wStreamNum, pcAttributes);
			}
			public HRESULT GetAttributeIndices(uint16 wStreamNum, PWSTR pwszName, uint16* pwLangIndex, uint16* pwIndices, uint16* pwCount) mut
			{
				return VT.GetAttributeIndices(&this, wStreamNum, pwszName, pwLangIndex, pwIndices, pwCount);
			}
			public HRESULT GetAttributeByIndexEx(uint16 wStreamNum, uint16 wIndex, char16* pwszName, uint16* pwNameLen, WMT_ATTR_DATATYPE* pType, uint16* pwLangIndex, uint8* pValue, uint32* pdwDataLength) mut
			{
				return VT.GetAttributeByIndexEx(&this, wStreamNum, wIndex, pwszName, pwNameLen, pType, pwLangIndex, pValue, pdwDataLength);
			}
			public HRESULT ModifyAttribute(uint16 wStreamNum, uint16 wIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) mut
			{
				return VT.ModifyAttribute(&this, wStreamNum, wIndex, Type, wLangIndex, pValue, dwLength);
			}
			public HRESULT AddAttribute(uint16 wStreamNum, PWSTR pszName, uint16* pwIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) mut
			{
				return VT.AddAttribute(&this, wStreamNum, pszName, pwIndex, Type, wLangIndex, pValue, dwLength);
			}
			public HRESULT DeleteAttribute(uint16 wStreamNum, uint16 wIndex) mut
			{
				return VT.DeleteAttribute(&this, wStreamNum, wIndex);
			}
			public HRESULT AddCodecInfo(PWSTR pwszName, PWSTR pwszDescription, WMT_CODEC_INFO_TYPE codecType, uint16 cbCodecInfo, uint8* pbCodecInfo) mut
			{
				return VT.AddCodecInfo(&this, pwszName, pwszDescription, codecType, cbCodecInfo, pbCodecInfo);
			}
			[CRepr]
			public struct VTable : IWMHeaderInfo2.VTable
			{
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16* pcAttributes) GetAttributeCountEx;
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, PWSTR pwszName, uint16* pwLangIndex, uint16* pwIndices, uint16* pwCount) GetAttributeIndices;
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex, char16* pwszName, uint16* pwNameLen, WMT_ATTR_DATATYPE* pType, uint16* pwLangIndex, uint8* pValue, uint32* pdwDataLength) GetAttributeByIndexEx;
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) ModifyAttribute;
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, PWSTR pszName, uint16* pwIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) AddAttribute;
				public new function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex) DeleteAttribute;
				public new function HRESULT(IWMHeaderInfo3 *self, PWSTR pwszName, PWSTR pwszDescription, WMT_CODEC_INFO_TYPE codecType, uint16 cbCodecInfo, uint8* pbCodecInfo) AddCodecInfo;
			}
		}
		[CRepr]
		public struct IWMProfileManager : IUnknown
		{
			public const new Guid IID = .(0xd16679f2, 0x6ca0, 0x472d, 0x8d, 0x31, 0x2f, 0x5d, 0x55, 0xae, 0xe1, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEmptyProfile(WMT_VERSION dwVersion, IWMProfile** ppProfile) mut
			{
				return VT.CreateEmptyProfile(&this, dwVersion, ppProfile);
			}
			public HRESULT LoadProfileByID(Guid* guidProfile, IWMProfile** ppProfile) mut
			{
				return VT.LoadProfileByID(&this, guidProfile, ppProfile);
			}
			public HRESULT LoadProfileByData(PWSTR pwszProfile, IWMProfile** ppProfile) mut
			{
				return VT.LoadProfileByData(&this, pwszProfile, ppProfile);
			}
			public HRESULT SaveProfile(IWMProfile* pIWMProfile, PWSTR pwszProfile, uint32* pdwLength) mut
			{
				return VT.SaveProfile(&this, pIWMProfile, pwszProfile, pdwLength);
			}
			public HRESULT GetSystemProfileCount(uint32* pcProfiles) mut
			{
				return VT.GetSystemProfileCount(&this, pcProfiles);
			}
			public HRESULT LoadSystemProfile(uint32 dwProfileIndex, IWMProfile** ppProfile) mut
			{
				return VT.LoadSystemProfile(&this, dwProfileIndex, ppProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMProfileManager *self, WMT_VERSION dwVersion, IWMProfile** ppProfile) CreateEmptyProfile;
				public new function HRESULT(IWMProfileManager *self, Guid* guidProfile, IWMProfile** ppProfile) LoadProfileByID;
				public new function HRESULT(IWMProfileManager *self, PWSTR pwszProfile, IWMProfile** ppProfile) LoadProfileByData;
				public new function HRESULT(IWMProfileManager *self, IWMProfile* pIWMProfile, PWSTR pwszProfile, uint32* pdwLength) SaveProfile;
				public new function HRESULT(IWMProfileManager *self, uint32* pcProfiles) GetSystemProfileCount;
				public new function HRESULT(IWMProfileManager *self, uint32 dwProfileIndex, IWMProfile** ppProfile) LoadSystemProfile;
			}
		}
		[CRepr]
		public struct IWMProfileManager2 : IWMProfileManager
		{
			public const new Guid IID = .(0x7a924e51, 0x73c1, 0x494d, 0x80, 0x19, 0x23, 0xd3, 0x7e, 0xd9, 0xb8, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSystemProfileVersion(WMT_VERSION* pdwVersion) mut
			{
				return VT.GetSystemProfileVersion(&this, pdwVersion);
			}
			public HRESULT SetSystemProfileVersion(WMT_VERSION dwVersion) mut
			{
				return VT.SetSystemProfileVersion(&this, dwVersion);
			}
			[CRepr]
			public struct VTable : IWMProfileManager.VTable
			{
				public new function HRESULT(IWMProfileManager2 *self, WMT_VERSION* pdwVersion) GetSystemProfileVersion;
				public new function HRESULT(IWMProfileManager2 *self, WMT_VERSION dwVersion) SetSystemProfileVersion;
			}
		}
		[CRepr]
		public struct IWMProfileManagerLanguage : IUnknown
		{
			public const new Guid IID = .(0xba4dcc78, 0x7ee0, 0x4ab8, 0xb2, 0x7a, 0xdb, 0xce, 0x8b, 0xc5, 0x14, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserLanguageID(uint16* wLangID) mut
			{
				return VT.GetUserLanguageID(&this, wLangID);
			}
			public HRESULT SetUserLanguageID(uint16 wLangID) mut
			{
				return VT.SetUserLanguageID(&this, wLangID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMProfileManagerLanguage *self, uint16* wLangID) GetUserLanguageID;
				public new function HRESULT(IWMProfileManagerLanguage *self, uint16 wLangID) SetUserLanguageID;
			}
		}
		[CRepr]
		public struct IWMProfile : IUnknown
		{
			public const new Guid IID = .(0x96406bdb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetVersion(WMT_VERSION* pdwVersion) mut
			{
				return VT.GetVersion(&this, pdwVersion);
			}
			public HRESULT GetName(char16* pwszName, uint32* pcchName) mut
			{
				return VT.GetName(&this, pwszName, pcchName);
			}
			public HRESULT SetName(PWSTR pwszName) mut
			{
				return VT.SetName(&this, pwszName);
			}
			public HRESULT GetDescription(char16* pwszDescription, uint32* pcchDescription) mut
			{
				return VT.GetDescription(&this, pwszDescription, pcchDescription);
			}
			public HRESULT SetDescription(PWSTR pwszDescription) mut
			{
				return VT.SetDescription(&this, pwszDescription);
			}
			public HRESULT GetStreamCount(uint32* pcStreams) mut
			{
				return VT.GetStreamCount(&this, pcStreams);
			}
			public HRESULT GetStream(uint32 dwStreamIndex, IWMStreamConfig** ppConfig) mut
			{
				return VT.GetStream(&this, dwStreamIndex, ppConfig);
			}
			public HRESULT GetStreamByNumber(uint16 wStreamNum, IWMStreamConfig** ppConfig) mut
			{
				return VT.GetStreamByNumber(&this, wStreamNum, ppConfig);
			}
			public HRESULT RemoveStream(IWMStreamConfig* pConfig) mut
			{
				return VT.RemoveStream(&this, pConfig);
			}
			public HRESULT RemoveStreamByNumber(uint16 wStreamNum) mut
			{
				return VT.RemoveStreamByNumber(&this, wStreamNum);
			}
			public HRESULT AddStream(IWMStreamConfig* pConfig) mut
			{
				return VT.AddStream(&this, pConfig);
			}
			public HRESULT ReconfigStream(IWMStreamConfig* pConfig) mut
			{
				return VT.ReconfigStream(&this, pConfig);
			}
			public HRESULT CreateNewStream(Guid* guidStreamType, IWMStreamConfig** ppConfig) mut
			{
				return VT.CreateNewStream(&this, guidStreamType, ppConfig);
			}
			public HRESULT GetMutualExclusionCount(uint32* pcME) mut
			{
				return VT.GetMutualExclusionCount(&this, pcME);
			}
			public HRESULT GetMutualExclusion(uint32 dwMEIndex, IWMMutualExclusion** ppME) mut
			{
				return VT.GetMutualExclusion(&this, dwMEIndex, ppME);
			}
			public HRESULT RemoveMutualExclusion(IWMMutualExclusion* pME) mut
			{
				return VT.RemoveMutualExclusion(&this, pME);
			}
			public HRESULT AddMutualExclusion(IWMMutualExclusion* pME) mut
			{
				return VT.AddMutualExclusion(&this, pME);
			}
			public HRESULT CreateNewMutualExclusion(IWMMutualExclusion** ppME) mut
			{
				return VT.CreateNewMutualExclusion(&this, ppME);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMProfile *self, WMT_VERSION* pdwVersion) GetVersion;
				public new function HRESULT(IWMProfile *self, char16* pwszName, uint32* pcchName) GetName;
				public new function HRESULT(IWMProfile *self, PWSTR pwszName) SetName;
				public new function HRESULT(IWMProfile *self, char16* pwszDescription, uint32* pcchDescription) GetDescription;
				public new function HRESULT(IWMProfile *self, PWSTR pwszDescription) SetDescription;
				public new function HRESULT(IWMProfile *self, uint32* pcStreams) GetStreamCount;
				public new function HRESULT(IWMProfile *self, uint32 dwStreamIndex, IWMStreamConfig** ppConfig) GetStream;
				public new function HRESULT(IWMProfile *self, uint16 wStreamNum, IWMStreamConfig** ppConfig) GetStreamByNumber;
				public new function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) RemoveStream;
				public new function HRESULT(IWMProfile *self, uint16 wStreamNum) RemoveStreamByNumber;
				public new function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) AddStream;
				public new function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) ReconfigStream;
				public new function HRESULT(IWMProfile *self, Guid* guidStreamType, IWMStreamConfig** ppConfig) CreateNewStream;
				public new function HRESULT(IWMProfile *self, uint32* pcME) GetMutualExclusionCount;
				public new function HRESULT(IWMProfile *self, uint32 dwMEIndex, IWMMutualExclusion** ppME) GetMutualExclusion;
				public new function HRESULT(IWMProfile *self, IWMMutualExclusion* pME) RemoveMutualExclusion;
				public new function HRESULT(IWMProfile *self, IWMMutualExclusion* pME) AddMutualExclusion;
				public new function HRESULT(IWMProfile *self, IWMMutualExclusion** ppME) CreateNewMutualExclusion;
			}
		}
		[CRepr]
		public struct IWMProfile2 : IWMProfile
		{
			public const new Guid IID = .(0x07e72d33, 0xd94e, 0x4be7, 0x88, 0x43, 0x60, 0xae, 0x5f, 0xf7, 0xe5, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProfileID(Guid* pguidID) mut
			{
				return VT.GetProfileID(&this, pguidID);
			}
			[CRepr]
			public struct VTable : IWMProfile.VTable
			{
				public new function HRESULT(IWMProfile2 *self, Guid* pguidID) GetProfileID;
			}
		}
		[CRepr]
		public struct IWMProfile3 : IWMProfile2
		{
			public const new Guid IID = .(0x00ef96cc, 0xa461, 0x4546, 0x8b, 0xcd, 0xc9, 0xa2, 0x8f, 0x0e, 0x06, 0xf5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStorageFormat(WMT_STORAGE_FORMAT* pnStorageFormat) mut
			{
				return VT.GetStorageFormat(&this, pnStorageFormat);
			}
			public HRESULT SetStorageFormat(WMT_STORAGE_FORMAT nStorageFormat) mut
			{
				return VT.SetStorageFormat(&this, nStorageFormat);
			}
			public HRESULT GetBandwidthSharingCount(uint32* pcBS) mut
			{
				return VT.GetBandwidthSharingCount(&this, pcBS);
			}
			public HRESULT GetBandwidthSharing(uint32 dwBSIndex, IWMBandwidthSharing** ppBS) mut
			{
				return VT.GetBandwidthSharing(&this, dwBSIndex, ppBS);
			}
			public HRESULT RemoveBandwidthSharing(IWMBandwidthSharing* pBS) mut
			{
				return VT.RemoveBandwidthSharing(&this, pBS);
			}
			public HRESULT AddBandwidthSharing(IWMBandwidthSharing* pBS) mut
			{
				return VT.AddBandwidthSharing(&this, pBS);
			}
			public HRESULT CreateNewBandwidthSharing(IWMBandwidthSharing** ppBS) mut
			{
				return VT.CreateNewBandwidthSharing(&this, ppBS);
			}
			public HRESULT GetStreamPrioritization(IWMStreamPrioritization** ppSP) mut
			{
				return VT.GetStreamPrioritization(&this, ppSP);
			}
			public HRESULT SetStreamPrioritization(IWMStreamPrioritization* pSP) mut
			{
				return VT.SetStreamPrioritization(&this, pSP);
			}
			public HRESULT RemoveStreamPrioritization() mut
			{
				return VT.RemoveStreamPrioritization(&this);
			}
			public HRESULT CreateNewStreamPrioritization(IWMStreamPrioritization** ppSP) mut
			{
				return VT.CreateNewStreamPrioritization(&this, ppSP);
			}
			public HRESULT GetExpectedPacketCount(uint64 msDuration, uint64* pcPackets) mut
			{
				return VT.GetExpectedPacketCount(&this, msDuration, pcPackets);
			}
			[CRepr]
			public struct VTable : IWMProfile2.VTable
			{
				public new function HRESULT(IWMProfile3 *self, WMT_STORAGE_FORMAT* pnStorageFormat) GetStorageFormat;
				public new function HRESULT(IWMProfile3 *self, WMT_STORAGE_FORMAT nStorageFormat) SetStorageFormat;
				public new function HRESULT(IWMProfile3 *self, uint32* pcBS) GetBandwidthSharingCount;
				public new function HRESULT(IWMProfile3 *self, uint32 dwBSIndex, IWMBandwidthSharing** ppBS) GetBandwidthSharing;
				public new function HRESULT(IWMProfile3 *self, IWMBandwidthSharing* pBS) RemoveBandwidthSharing;
				public new function HRESULT(IWMProfile3 *self, IWMBandwidthSharing* pBS) AddBandwidthSharing;
				public new function HRESULT(IWMProfile3 *self, IWMBandwidthSharing** ppBS) CreateNewBandwidthSharing;
				public new function HRESULT(IWMProfile3 *self, IWMStreamPrioritization** ppSP) GetStreamPrioritization;
				public new function HRESULT(IWMProfile3 *self, IWMStreamPrioritization* pSP) SetStreamPrioritization;
				public new function HRESULT(IWMProfile3 *self) RemoveStreamPrioritization;
				public new function HRESULT(IWMProfile3 *self, IWMStreamPrioritization** ppSP) CreateNewStreamPrioritization;
				public new function HRESULT(IWMProfile3 *self, uint64 msDuration, uint64* pcPackets) GetExpectedPacketCount;
			}
		}
		[CRepr]
		public struct IWMStreamConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bdc, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamType(Guid* pguidStreamType) mut
			{
				return VT.GetStreamType(&this, pguidStreamType);
			}
			public HRESULT GetStreamNumber(uint16* pwStreamNum) mut
			{
				return VT.GetStreamNumber(&this, pwStreamNum);
			}
			public HRESULT SetStreamNumber(uint16 wStreamNum) mut
			{
				return VT.SetStreamNumber(&this, wStreamNum);
			}
			public HRESULT GetStreamName(char16* pwszStreamName, uint16* pcchStreamName) mut
			{
				return VT.GetStreamName(&this, pwszStreamName, pcchStreamName);
			}
			public HRESULT SetStreamName(PWSTR pwszStreamName) mut
			{
				return VT.SetStreamName(&this, pwszStreamName);
			}
			public HRESULT GetConnectionName(char16* pwszInputName, uint16* pcchInputName) mut
			{
				return VT.GetConnectionName(&this, pwszInputName, pcchInputName);
			}
			public HRESULT SetConnectionName(PWSTR pwszInputName) mut
			{
				return VT.SetConnectionName(&this, pwszInputName);
			}
			public HRESULT GetBitrate(uint32* pdwBitrate) mut
			{
				return VT.GetBitrate(&this, pdwBitrate);
			}
			public HRESULT SetBitrate(uint32 pdwBitrate) mut
			{
				return VT.SetBitrate(&this, pdwBitrate);
			}
			public HRESULT GetBufferWindow(uint32* pmsBufferWindow) mut
			{
				return VT.GetBufferWindow(&this, pmsBufferWindow);
			}
			public HRESULT SetBufferWindow(uint32 msBufferWindow) mut
			{
				return VT.SetBufferWindow(&this, msBufferWindow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMStreamConfig *self, Guid* pguidStreamType) GetStreamType;
				public new function HRESULT(IWMStreamConfig *self, uint16* pwStreamNum) GetStreamNumber;
				public new function HRESULT(IWMStreamConfig *self, uint16 wStreamNum) SetStreamNumber;
				public new function HRESULT(IWMStreamConfig *self, char16* pwszStreamName, uint16* pcchStreamName) GetStreamName;
				public new function HRESULT(IWMStreamConfig *self, PWSTR pwszStreamName) SetStreamName;
				public new function HRESULT(IWMStreamConfig *self, char16* pwszInputName, uint16* pcchInputName) GetConnectionName;
				public new function HRESULT(IWMStreamConfig *self, PWSTR pwszInputName) SetConnectionName;
				public new function HRESULT(IWMStreamConfig *self, uint32* pdwBitrate) GetBitrate;
				public new function HRESULT(IWMStreamConfig *self, uint32 pdwBitrate) SetBitrate;
				public new function HRESULT(IWMStreamConfig *self, uint32* pmsBufferWindow) GetBufferWindow;
				public new function HRESULT(IWMStreamConfig *self, uint32 msBufferWindow) SetBufferWindow;
			}
		}
		[CRepr]
		public struct IWMStreamConfig2 : IWMStreamConfig
		{
			public const new Guid IID = .(0x7688d8cb, 0xfc0d, 0x43bd, 0x94, 0x59, 0x5a, 0x8d, 0xec, 0x20, 0x0c, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransportType(WMT_TRANSPORT_TYPE* pnTransportType) mut
			{
				return VT.GetTransportType(&this, pnTransportType);
			}
			public HRESULT SetTransportType(WMT_TRANSPORT_TYPE nTransportType) mut
			{
				return VT.SetTransportType(&this, nTransportType);
			}
			public HRESULT AddDataUnitExtension(Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) mut
			{
				return VT.AddDataUnitExtension(&this, guidExtensionSystemID, cbExtensionDataSize, pbExtensionSystemInfo, cbExtensionSystemInfo);
			}
			public HRESULT GetDataUnitExtensionCount(uint16* pcDataUnitExtensions) mut
			{
				return VT.GetDataUnitExtensionCount(&this, pcDataUnitExtensions);
			}
			public HRESULT GetDataUnitExtension(uint16 wDataUnitExtensionNumber, Guid* pguidExtensionSystemID, uint16* pcbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32* pcbExtensionSystemInfo) mut
			{
				return VT.GetDataUnitExtension(&this, wDataUnitExtensionNumber, pguidExtensionSystemID, pcbExtensionDataSize, pbExtensionSystemInfo, pcbExtensionSystemInfo);
			}
			public HRESULT RemoveAllDataUnitExtensions() mut
			{
				return VT.RemoveAllDataUnitExtensions(&this);
			}
			[CRepr]
			public struct VTable : IWMStreamConfig.VTable
			{
				public new function HRESULT(IWMStreamConfig2 *self, WMT_TRANSPORT_TYPE* pnTransportType) GetTransportType;
				public new function HRESULT(IWMStreamConfig2 *self, WMT_TRANSPORT_TYPE nTransportType) SetTransportType;
				public new function HRESULT(IWMStreamConfig2 *self, Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) AddDataUnitExtension;
				public new function HRESULT(IWMStreamConfig2 *self, uint16* pcDataUnitExtensions) GetDataUnitExtensionCount;
				public new function HRESULT(IWMStreamConfig2 *self, uint16 wDataUnitExtensionNumber, Guid* pguidExtensionSystemID, uint16* pcbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32* pcbExtensionSystemInfo) GetDataUnitExtension;
				public new function HRESULT(IWMStreamConfig2 *self) RemoveAllDataUnitExtensions;
			}
		}
		[CRepr]
		public struct IWMStreamConfig3 : IWMStreamConfig2
		{
			public const new Guid IID = .(0xcb164104, 0x3aa9, 0x45a7, 0x9a, 0xc9, 0x4d, 0xae, 0xe1, 0x31, 0xd6, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguage(char16* pwszLanguageString, uint16* pcchLanguageStringLength) mut
			{
				return VT.GetLanguage(&this, pwszLanguageString, pcchLanguageStringLength);
			}
			public HRESULT SetLanguage(PWSTR pwszLanguageString) mut
			{
				return VT.SetLanguage(&this, pwszLanguageString);
			}
			[CRepr]
			public struct VTable : IWMStreamConfig2.VTable
			{
				public new function HRESULT(IWMStreamConfig3 *self, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguage;
				public new function HRESULT(IWMStreamConfig3 *self, PWSTR pwszLanguageString) SetLanguage;
			}
		}
		[CRepr]
		public struct IWMPacketSize : IUnknown
		{
			public const new Guid IID = .(0xcdfb97ab, 0x188f, 0x40b3, 0xb6, 0x43, 0x5b, 0x79, 0x03, 0x97, 0x5c, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxPacketSize(uint32* pdwMaxPacketSize) mut
			{
				return VT.GetMaxPacketSize(&this, pdwMaxPacketSize);
			}
			public HRESULT SetMaxPacketSize(uint32 dwMaxPacketSize) mut
			{
				return VT.SetMaxPacketSize(&this, dwMaxPacketSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPacketSize *self, uint32* pdwMaxPacketSize) GetMaxPacketSize;
				public new function HRESULT(IWMPacketSize *self, uint32 dwMaxPacketSize) SetMaxPacketSize;
			}
		}
		[CRepr]
		public struct IWMPacketSize2 : IWMPacketSize
		{
			public const new Guid IID = .(0x8bfc2b9e, 0xb646, 0x4233, 0xa8, 0x77, 0x1c, 0x6a, 0x07, 0x96, 0x69, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMinPacketSize(uint32* pdwMinPacketSize) mut
			{
				return VT.GetMinPacketSize(&this, pdwMinPacketSize);
			}
			public HRESULT SetMinPacketSize(uint32 dwMinPacketSize) mut
			{
				return VT.SetMinPacketSize(&this, dwMinPacketSize);
			}
			[CRepr]
			public struct VTable : IWMPacketSize.VTable
			{
				public new function HRESULT(IWMPacketSize2 *self, uint32* pdwMinPacketSize) GetMinPacketSize;
				public new function HRESULT(IWMPacketSize2 *self, uint32 dwMinPacketSize) SetMinPacketSize;
			}
		}
		[CRepr]
		public struct IWMStreamList : IUnknown
		{
			public const new Guid IID = .(0x96406bdd, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreams(uint16* pwStreamNumArray, uint16* pcStreams) mut
			{
				return VT.GetStreams(&this, pwStreamNumArray, pcStreams);
			}
			public HRESULT AddStream(uint16 wStreamNum) mut
			{
				return VT.AddStream(&this, wStreamNum);
			}
			public HRESULT RemoveStream(uint16 wStreamNum) mut
			{
				return VT.RemoveStream(&this, wStreamNum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMStreamList *self, uint16* pwStreamNumArray, uint16* pcStreams) GetStreams;
				public new function HRESULT(IWMStreamList *self, uint16 wStreamNum) AddStream;
				public new function HRESULT(IWMStreamList *self, uint16 wStreamNum) RemoveStream;
			}
		}
		[CRepr]
		public struct IWMMutualExclusion : IWMStreamList
		{
			public const new Guid IID = .(0x96406bde, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguidType) mut
			{
				return VT.ComGetType(&this, pguidType);
			}
			public HRESULT SetType(Guid* guidType) mut
			{
				return VT.SetType(&this, guidType);
			}
			[CRepr]
			public struct VTable : IWMStreamList.VTable
			{
				public new function HRESULT(IWMMutualExclusion *self, Guid* pguidType) ComGetType;
				public new function HRESULT(IWMMutualExclusion *self, Guid* guidType) SetType;
			}
		}
		[CRepr]
		public struct IWMMutualExclusion2 : IWMMutualExclusion
		{
			public const new Guid IID = .(0x0302b57d, 0x89d1, 0x4ba2, 0x85, 0xc9, 0x16, 0x6f, 0x2c, 0x53, 0xeb, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(char16* pwszName, uint16* pcchName) mut
			{
				return VT.GetName(&this, pwszName, pcchName);
			}
			public HRESULT SetName(PWSTR pwszName) mut
			{
				return VT.SetName(&this, pwszName);
			}
			public HRESULT GetRecordCount(uint16* pwRecordCount) mut
			{
				return VT.GetRecordCount(&this, pwRecordCount);
			}
			public HRESULT AddRecord() mut
			{
				return VT.AddRecord(&this);
			}
			public HRESULT RemoveRecord(uint16 wRecordNumber) mut
			{
				return VT.RemoveRecord(&this, wRecordNumber);
			}
			public HRESULT GetRecordName(uint16 wRecordNumber, char16* pwszRecordName, uint16* pcchRecordName) mut
			{
				return VT.GetRecordName(&this, wRecordNumber, pwszRecordName, pcchRecordName);
			}
			public HRESULT SetRecordName(uint16 wRecordNumber, PWSTR pwszRecordName) mut
			{
				return VT.SetRecordName(&this, wRecordNumber, pwszRecordName);
			}
			public HRESULT GetStreamsForRecord(uint16 wRecordNumber, uint16* pwStreamNumArray, uint16* pcStreams) mut
			{
				return VT.GetStreamsForRecord(&this, wRecordNumber, pwStreamNumArray, pcStreams);
			}
			public HRESULT AddStreamForRecord(uint16 wRecordNumber, uint16 wStreamNumber) mut
			{
				return VT.AddStreamForRecord(&this, wRecordNumber, wStreamNumber);
			}
			public HRESULT RemoveStreamForRecord(uint16 wRecordNumber, uint16 wStreamNumber) mut
			{
				return VT.RemoveStreamForRecord(&this, wRecordNumber, wStreamNumber);
			}
			[CRepr]
			public struct VTable : IWMMutualExclusion.VTable
			{
				public new function HRESULT(IWMMutualExclusion2 *self, char16* pwszName, uint16* pcchName) GetName;
				public new function HRESULT(IWMMutualExclusion2 *self, PWSTR pwszName) SetName;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16* pwRecordCount) GetRecordCount;
				public new function HRESULT(IWMMutualExclusion2 *self) AddRecord;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber) RemoveRecord;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, char16* pwszRecordName, uint16* pcchRecordName) GetRecordName;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, PWSTR pwszRecordName) SetRecordName;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16* pwStreamNumArray, uint16* pcStreams) GetStreamsForRecord;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16 wStreamNumber) AddStreamForRecord;
				public new function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16 wStreamNumber) RemoveStreamForRecord;
			}
		}
		[CRepr]
		public struct IWMBandwidthSharing : IWMStreamList
		{
			public const new Guid IID = .(0xad694af1, 0xf8d9, 0x42f8, 0xbc, 0x47, 0x70, 0x31, 0x1b, 0x0c, 0x4f, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguidType) mut
			{
				return VT.ComGetType(&this, pguidType);
			}
			public HRESULT SetType(Guid* guidType) mut
			{
				return VT.SetType(&this, guidType);
			}
			public HRESULT GetBandwidth(uint32* pdwBitrate, uint32* pmsBufferWindow) mut
			{
				return VT.GetBandwidth(&this, pdwBitrate, pmsBufferWindow);
			}
			public HRESULT SetBandwidth(uint32 dwBitrate, uint32 msBufferWindow) mut
			{
				return VT.SetBandwidth(&this, dwBitrate, msBufferWindow);
			}
			[CRepr]
			public struct VTable : IWMStreamList.VTable
			{
				public new function HRESULT(IWMBandwidthSharing *self, Guid* pguidType) ComGetType;
				public new function HRESULT(IWMBandwidthSharing *self, Guid* guidType) SetType;
				public new function HRESULT(IWMBandwidthSharing *self, uint32* pdwBitrate, uint32* pmsBufferWindow) GetBandwidth;
				public new function HRESULT(IWMBandwidthSharing *self, uint32 dwBitrate, uint32 msBufferWindow) SetBandwidth;
			}
		}
		[CRepr]
		public struct IWMStreamPrioritization : IUnknown
		{
			public const new Guid IID = .(0x8c1c6090, 0xf9a8, 0x4748, 0x8e, 0xc3, 0xdd, 0x11, 0x08, 0xba, 0x1e, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPriorityRecords(WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16* pcRecords) mut
			{
				return VT.GetPriorityRecords(&this, pRecordArray, pcRecords);
			}
			public HRESULT SetPriorityRecords(WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16 cRecords) mut
			{
				return VT.SetPriorityRecords(&this, pRecordArray, cRecords);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMStreamPrioritization *self, WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16* pcRecords) GetPriorityRecords;
				public new function HRESULT(IWMStreamPrioritization *self, WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16 cRecords) SetPriorityRecords;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406be3, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSinkCount(uint32* pcSinks) mut
			{
				return VT.GetSinkCount(&this, pcSinks);
			}
			public HRESULT GetSink(uint32 dwSinkNum, IWMWriterSink** ppSink) mut
			{
				return VT.GetSink(&this, dwSinkNum, ppSink);
			}
			public HRESULT AddSink(IWMWriterSink* pSink) mut
			{
				return VT.AddSink(&this, pSink);
			}
			public HRESULT RemoveSink(IWMWriterSink* pSink) mut
			{
				return VT.RemoveSink(&this, pSink);
			}
			public HRESULT WriteStreamSample(uint16 wStreamNum, uint64 cnsSampleTime, uint32 msSampleSendTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample) mut
			{
				return VT.WriteStreamSample(&this, wStreamNum, cnsSampleTime, msSampleSendTime, cnsSampleDuration, dwFlags, pSample);
			}
			public HRESULT SetLiveSource(BOOL fIsLiveSource) mut
			{
				return VT.SetLiveSource(&this, fIsLiveSource);
			}
			public HRESULT IsRealTime(BOOL* pfRealTime) mut
			{
				return VT.IsRealTime(&this, pfRealTime);
			}
			public HRESULT GetWriterTime(uint64* pcnsCurrentTime) mut
			{
				return VT.GetWriterTime(&this, pcnsCurrentTime);
			}
			public HRESULT GetStatistics(uint16 wStreamNum, WM_WRITER_STATISTICS* pStats) mut
			{
				return VT.GetStatistics(&this, wStreamNum, pStats);
			}
			public HRESULT SetSyncTolerance(uint32 msWindow) mut
			{
				return VT.SetSyncTolerance(&this, msWindow);
			}
			public HRESULT GetSyncTolerance(uint32* pmsWindow) mut
			{
				return VT.GetSyncTolerance(&this, pmsWindow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWriterAdvanced *self, uint32* pcSinks) GetSinkCount;
				public new function HRESULT(IWMWriterAdvanced *self, uint32 dwSinkNum, IWMWriterSink** ppSink) GetSink;
				public new function HRESULT(IWMWriterAdvanced *self, IWMWriterSink* pSink) AddSink;
				public new function HRESULT(IWMWriterAdvanced *self, IWMWriterSink* pSink) RemoveSink;
				public new function HRESULT(IWMWriterAdvanced *self, uint16 wStreamNum, uint64 cnsSampleTime, uint32 msSampleSendTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample) WriteStreamSample;
				public new function HRESULT(IWMWriterAdvanced *self, BOOL fIsLiveSource) SetLiveSource;
				public new function HRESULT(IWMWriterAdvanced *self, BOOL* pfRealTime) IsRealTime;
				public new function HRESULT(IWMWriterAdvanced *self, uint64* pcnsCurrentTime) GetWriterTime;
				public new function HRESULT(IWMWriterAdvanced *self, uint16 wStreamNum, WM_WRITER_STATISTICS* pStats) GetStatistics;
				public new function HRESULT(IWMWriterAdvanced *self, uint32 msWindow) SetSyncTolerance;
				public new function HRESULT(IWMWriterAdvanced *self, uint32* pmsWindow) GetSyncTolerance;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced2 : IWMWriterAdvanced
		{
			public const new Guid IID = .(0x962dc1ec, 0xc046, 0x4db8, 0x9c, 0xc7, 0x26, 0xce, 0xae, 0x50, 0x08, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputSetting(uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetInputSetting(&this, dwInputNum, pszName, pType, pValue, pcbLength);
			}
			public HRESULT SetInputSetting(uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetInputSetting(&this, dwInputNum, pszName, Type, pValue, cbLength);
			}
			[CRepr]
			public struct VTable : IWMWriterAdvanced.VTable
			{
				public new function HRESULT(IWMWriterAdvanced2 *self, uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetInputSetting;
				public new function HRESULT(IWMWriterAdvanced2 *self, uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetInputSetting;
			}
		}
		[CRepr]
		public struct IWMWriterAdvanced3 : IWMWriterAdvanced2
		{
			public const new Guid IID = .(0x2cd6492d, 0x7c37, 0x4e76, 0x9d, 0x3b, 0x59, 0x26, 0x11, 0x83, 0xa2, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatisticsEx(uint16 wStreamNum, WM_WRITER_STATISTICS_EX* pStats) mut
			{
				return VT.GetStatisticsEx(&this, wStreamNum, pStats);
			}
			public HRESULT SetNonBlocking() mut
			{
				return VT.SetNonBlocking(&this);
			}
			[CRepr]
			public struct VTable : IWMWriterAdvanced2.VTable
			{
				public new function HRESULT(IWMWriterAdvanced3 *self, uint16 wStreamNum, WM_WRITER_STATISTICS_EX* pStats) GetStatisticsEx;
				public new function HRESULT(IWMWriterAdvanced3 *self) SetNonBlocking;
			}
		}
		[CRepr]
		public struct IWMWriterPreprocess : IUnknown
		{
			public const new Guid IID = .(0xfc54a285, 0x38c4, 0x45b5, 0xaa, 0x23, 0x85, 0xb9, 0xf7, 0xcb, 0x42, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxPreprocessingPasses(uint32 dwInputNum, uint32 dwFlags, uint32* pdwMaxNumPasses) mut
			{
				return VT.GetMaxPreprocessingPasses(&this, dwInputNum, dwFlags, pdwMaxNumPasses);
			}
			public HRESULT SetNumPreprocessingPasses(uint32 dwInputNum, uint32 dwFlags, uint32 dwNumPasses) mut
			{
				return VT.SetNumPreprocessingPasses(&this, dwInputNum, dwFlags, dwNumPasses);
			}
			public HRESULT BeginPreprocessingPass(uint32 dwInputNum, uint32 dwFlags) mut
			{
				return VT.BeginPreprocessingPass(&this, dwInputNum, dwFlags);
			}
			public HRESULT PreprocessSample(uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) mut
			{
				return VT.PreprocessSample(&this, dwInputNum, cnsSampleTime, dwFlags, pSample);
			}
			public HRESULT EndPreprocessingPass(uint32 dwInputNum, uint32 dwFlags) mut
			{
				return VT.EndPreprocessingPass(&this, dwInputNum, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags, uint32* pdwMaxNumPasses) GetMaxPreprocessingPasses;
				public new function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags, uint32 dwNumPasses) SetNumPreprocessingPasses;
				public new function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags) BeginPreprocessingPass;
				public new function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) PreprocessSample;
				public new function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags) EndPreprocessingPass;
			}
		}
		[CRepr]
		public struct IWMWriterPostViewCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0xd9d6549d, 0xa193, 0x4f24, 0xb3, 0x08, 0x03, 0x12, 0x3d, 0x9b, 0x7f, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPostViewSample(uint16 wStreamNumber, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) mut
			{
				return VT.OnPostViewSample(&this, wStreamNumber, cnsSampleTime, cnsSampleDuration, dwFlags, pSample, pvContext);
			}
			public HRESULT AllocateForPostView(uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) mut
			{
				return VT.AllocateForPostView(&this, wStreamNum, cbBuffer, ppBuffer, pvContext);
			}
			[CRepr]
			public struct VTable : IWMStatusCallback.VTable
			{
				public new function HRESULT(IWMWriterPostViewCallback *self, uint16 wStreamNumber, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnPostViewSample;
				public new function HRESULT(IWMWriterPostViewCallback *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForPostView;
			}
		}
		[CRepr]
		public struct IWMWriterPostView : IUnknown
		{
			public const new Guid IID = .(0x81e20ce4, 0x75ef, 0x491a, 0x80, 0x04, 0xfc, 0x53, 0xc4, 0x5b, 0xdc, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPostViewCallback(IWMWriterPostViewCallback* pCallback, void* pvContext) mut
			{
				return VT.SetPostViewCallback(&this, pCallback, pvContext);
			}
			public HRESULT SetReceivePostViewSamples(uint16 wStreamNum, BOOL fReceivePostViewSamples) mut
			{
				return VT.SetReceivePostViewSamples(&this, wStreamNum, fReceivePostViewSamples);
			}
			public HRESULT GetReceivePostViewSamples(uint16 wStreamNum, BOOL* pfReceivePostViewSamples) mut
			{
				return VT.GetReceivePostViewSamples(&this, wStreamNum, pfReceivePostViewSamples);
			}
			public HRESULT GetPostViewProps(uint16 wStreamNumber, IWMMediaProps** ppOutput) mut
			{
				return VT.GetPostViewProps(&this, wStreamNumber, ppOutput);
			}
			public HRESULT SetPostViewProps(uint16 wStreamNumber, IWMMediaProps* pOutput) mut
			{
				return VT.SetPostViewProps(&this, wStreamNumber, pOutput);
			}
			public HRESULT GetPostViewFormatCount(uint16 wStreamNumber, uint32* pcFormats) mut
			{
				return VT.GetPostViewFormatCount(&this, wStreamNumber, pcFormats);
			}
			public HRESULT GetPostViewFormat(uint16 wStreamNumber, uint32 dwFormatNumber, IWMMediaProps** ppProps) mut
			{
				return VT.GetPostViewFormat(&this, wStreamNumber, dwFormatNumber, ppProps);
			}
			public HRESULT SetAllocateForPostView(uint16 wStreamNumber, BOOL fAllocate) mut
			{
				return VT.SetAllocateForPostView(&this, wStreamNumber, fAllocate);
			}
			public HRESULT GetAllocateForPostView(uint16 wStreamNumber, BOOL* pfAllocate) mut
			{
				return VT.GetAllocateForPostView(&this, wStreamNumber, pfAllocate);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWriterPostView *self, IWMWriterPostViewCallback* pCallback, void* pvContext) SetPostViewCallback;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNum, BOOL fReceivePostViewSamples) SetReceivePostViewSamples;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNum, BOOL* pfReceivePostViewSamples) GetReceivePostViewSamples;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, IWMMediaProps** ppOutput) GetPostViewProps;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, IWMMediaProps* pOutput) SetPostViewProps;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, uint32* pcFormats) GetPostViewFormatCount;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, uint32 dwFormatNumber, IWMMediaProps** ppProps) GetPostViewFormat;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, BOOL fAllocate) SetAllocateForPostView;
				public new function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, BOOL* pfAllocate) GetAllocateForPostView;
			}
		}
		[CRepr]
		public struct IWMWriterSink : IUnknown
		{
			public const new Guid IID = .(0x96406be4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnHeader(INSSBuffer* pHeader) mut
			{
				return VT.OnHeader(&this, pHeader);
			}
			public HRESULT IsRealTime(BOOL* pfRealTime) mut
			{
				return VT.IsRealTime(&this, pfRealTime);
			}
			public HRESULT AllocateDataUnit(uint32 cbDataUnit, INSSBuffer** ppDataUnit) mut
			{
				return VT.AllocateDataUnit(&this, cbDataUnit, ppDataUnit);
			}
			public HRESULT OnDataUnit(INSSBuffer* pDataUnit) mut
			{
				return VT.OnDataUnit(&this, pDataUnit);
			}
			public HRESULT OnEndWriting() mut
			{
				return VT.OnEndWriting(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWriterSink *self, INSSBuffer* pHeader) OnHeader;
				public new function HRESULT(IWMWriterSink *self, BOOL* pfRealTime) IsRealTime;
				public new function HRESULT(IWMWriterSink *self, uint32 cbDataUnit, INSSBuffer** ppDataUnit) AllocateDataUnit;
				public new function HRESULT(IWMWriterSink *self, INSSBuffer* pDataUnit) OnDataUnit;
				public new function HRESULT(IWMWriterSink *self) OnEndWriting;
			}
		}
		[CRepr]
		public struct IWMRegisterCallback : IUnknown
		{
			public const new Guid IID = .(0xcf4b1f99, 0x4de2, 0x4e49, 0xa3, 0x63, 0x25, 0x27, 0x40, 0xd9, 0x9b, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.Advise(&this, pCallback, pvContext);
			}
			public HRESULT Unadvise(IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.Unadvise(&this, pCallback, pvContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMRegisterCallback *self, IWMStatusCallback* pCallback, void* pvContext) Advise;
				public new function HRESULT(IWMRegisterCallback *self, IWMStatusCallback* pCallback, void* pvContext) Unadvise;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pwszFilename) mut
			{
				return VT.Open(&this, pwszFilename);
			}
			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function HRESULT(IWMWriterFileSink *self, PWSTR pwszFilename) Open;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink2 : IWMWriterFileSink
		{
			public const new Guid IID = .(0x14282ba7, 0x4aef, 0x4205, 0x8c, 0xe5, 0xc2, 0x29, 0x03, 0x5a, 0x05, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start(uint64 cnsStartTime) mut
			{
				return VT.Start(&this, cnsStartTime);
			}
			public HRESULT Stop(uint64 cnsStopTime) mut
			{
				return VT.Stop(&this, cnsStopTime);
			}
			public HRESULT IsStopped(BOOL* pfStopped) mut
			{
				return VT.IsStopped(&this, pfStopped);
			}
			public HRESULT GetFileDuration(uint64* pcnsDuration) mut
			{
				return VT.GetFileDuration(&this, pcnsDuration);
			}
			public HRESULT GetFileSize(uint64* pcbFile) mut
			{
				return VT.GetFileSize(&this, pcbFile);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT IsClosed(BOOL* pfClosed) mut
			{
				return VT.IsClosed(&this, pfClosed);
			}
			[CRepr]
			public struct VTable : IWMWriterFileSink.VTable
			{
				public new function HRESULT(IWMWriterFileSink2 *self, uint64 cnsStartTime) Start;
				public new function HRESULT(IWMWriterFileSink2 *self, uint64 cnsStopTime) Stop;
				public new function HRESULT(IWMWriterFileSink2 *self, BOOL* pfStopped) IsStopped;
				public new function HRESULT(IWMWriterFileSink2 *self, uint64* pcnsDuration) GetFileDuration;
				public new function HRESULT(IWMWriterFileSink2 *self, uint64* pcbFile) GetFileSize;
				public new function HRESULT(IWMWriterFileSink2 *self) Close;
				public new function HRESULT(IWMWriterFileSink2 *self, BOOL* pfClosed) IsClosed;
			}
		}
		[CRepr]
		public struct IWMWriterFileSink3 : IWMWriterFileSink2
		{
			public const new Guid IID = .(0x3fea4feb, 0x2945, 0x47a7, 0xa1, 0xdd, 0xc5, 0x3a, 0x8f, 0xc4, 0xc4, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAutoIndexing(BOOL fDoAutoIndexing) mut
			{
				return VT.SetAutoIndexing(&this, fDoAutoIndexing);
			}
			public HRESULT GetAutoIndexing(BOOL* pfAutoIndexing) mut
			{
				return VT.GetAutoIndexing(&this, pfAutoIndexing);
			}
			public HRESULT SetControlStream(uint16 wStreamNumber, BOOL fShouldControlStartAndStop) mut
			{
				return VT.SetControlStream(&this, wStreamNumber, fShouldControlStartAndStop);
			}
			public HRESULT GetMode(uint32* pdwFileSinkMode) mut
			{
				return VT.GetMode(&this, pdwFileSinkMode);
			}
			public HRESULT OnDataUnitEx(WMT_FILESINK_DATA_UNIT* pFileSinkDataUnit) mut
			{
				return VT.OnDataUnitEx(&this, pFileSinkDataUnit);
			}
			public HRESULT SetUnbufferedIO(BOOL fUnbufferedIO, BOOL fRestrictMemUsage) mut
			{
				return VT.SetUnbufferedIO(&this, fUnbufferedIO, fRestrictMemUsage);
			}
			public HRESULT GetUnbufferedIO(BOOL* pfUnbufferedIO) mut
			{
				return VT.GetUnbufferedIO(&this, pfUnbufferedIO);
			}
			public HRESULT CompleteOperations() mut
			{
				return VT.CompleteOperations(&this);
			}
			[CRepr]
			public struct VTable : IWMWriterFileSink2.VTable
			{
				public new function HRESULT(IWMWriterFileSink3 *self, BOOL fDoAutoIndexing) SetAutoIndexing;
				public new function HRESULT(IWMWriterFileSink3 *self, BOOL* pfAutoIndexing) GetAutoIndexing;
				public new function HRESULT(IWMWriterFileSink3 *self, uint16 wStreamNumber, BOOL fShouldControlStartAndStop) SetControlStream;
				public new function HRESULT(IWMWriterFileSink3 *self, uint32* pdwFileSinkMode) GetMode;
				public new function HRESULT(IWMWriterFileSink3 *self, WMT_FILESINK_DATA_UNIT* pFileSinkDataUnit) OnDataUnitEx;
				public new function HRESULT(IWMWriterFileSink3 *self, BOOL fUnbufferedIO, BOOL fRestrictMemUsage) SetUnbufferedIO;
				public new function HRESULT(IWMWriterFileSink3 *self, BOOL* pfUnbufferedIO) GetUnbufferedIO;
				public new function HRESULT(IWMWriterFileSink3 *self) CompleteOperations;
			}
		}
		[CRepr]
		public struct IWMWriterNetworkSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMaximumClients(uint32 dwMaxClients) mut
			{
				return VT.SetMaximumClients(&this, dwMaxClients);
			}
			public HRESULT GetMaximumClients(uint32* pdwMaxClients) mut
			{
				return VT.GetMaximumClients(&this, pdwMaxClients);
			}
			public HRESULT SetNetworkProtocol(WMT_NET_PROTOCOL protocol) mut
			{
				return VT.SetNetworkProtocol(&this, protocol);
			}
			public HRESULT GetNetworkProtocol(WMT_NET_PROTOCOL* pProtocol) mut
			{
				return VT.GetNetworkProtocol(&this, pProtocol);
			}
			public HRESULT GetHostURL(PWSTR pwszURL, uint32* pcchURL) mut
			{
				return VT.GetHostURL(&this, pwszURL, pcchURL);
			}
			public HRESULT Open(uint32* pdwPortNum) mut
			{
				return VT.Open(&this, pdwPortNum);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function HRESULT(IWMWriterNetworkSink *self, uint32 dwMaxClients) SetMaximumClients;
				public new function HRESULT(IWMWriterNetworkSink *self, uint32* pdwMaxClients) GetMaximumClients;
				public new function HRESULT(IWMWriterNetworkSink *self, WMT_NET_PROTOCOL protocol) SetNetworkProtocol;
				public new function HRESULT(IWMWriterNetworkSink *self, WMT_NET_PROTOCOL* pProtocol) GetNetworkProtocol;
				public new function HRESULT(IWMWriterNetworkSink *self, PWSTR pwszURL, uint32* pcchURL) GetHostURL;
				public new function HRESULT(IWMWriterNetworkSink *self, uint32* pdwPortNum) Open;
				public new function HRESULT(IWMWriterNetworkSink *self) Disconnect;
				public new function HRESULT(IWMWriterNetworkSink *self) Close;
			}
		}
		[CRepr]
		public struct IWMClientConnections : IUnknown
		{
			public const new Guid IID = .(0x73c66010, 0xa299, 0x41df, 0xb1, 0xf0, 0xcc, 0xf0, 0x3b, 0x09, 0xc1, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientCount(uint32* pcClients) mut
			{
				return VT.GetClientCount(&this, pcClients);
			}
			public HRESULT GetClientProperties(uint32 dwClientNum, WM_CLIENT_PROPERTIES* pClientProperties) mut
			{
				return VT.GetClientProperties(&this, dwClientNum, pClientProperties);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMClientConnections *self, uint32* pcClients) GetClientCount;
				public new function HRESULT(IWMClientConnections *self, uint32 dwClientNum, WM_CLIENT_PROPERTIES* pClientProperties) GetClientProperties;
			}
		}
		[CRepr]
		public struct IWMClientConnections2 : IWMClientConnections
		{
			public const new Guid IID = .(0x4091571e, 0x4701, 0x4593, 0xbb, 0x3d, 0xd5, 0xf5, 0xf0, 0xc7, 0x42, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientInfo(uint32 dwClientNum, char16* pwszNetworkAddress, uint32* pcchNetworkAddress, char16* pwszPort, uint32* pcchPort, char16* pwszDNSName, uint32* pcchDNSName) mut
			{
				return VT.GetClientInfo(&this, dwClientNum, pwszNetworkAddress, pcchNetworkAddress, pwszPort, pcchPort, pwszDNSName, pcchDNSName);
			}
			[CRepr]
			public struct VTable : IWMClientConnections.VTable
			{
				public new function HRESULT(IWMClientConnections2 *self, uint32 dwClientNum, char16* pwszNetworkAddress, uint32* pcchNetworkAddress, char16* pwszPort, uint32* pcchPort, char16* pwszDNSName, uint32* pcchDNSName) GetClientInfo;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406bea, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUserProvidedClock(BOOL fUserClock) mut
			{
				return VT.SetUserProvidedClock(&this, fUserClock);
			}
			public HRESULT GetUserProvidedClock(BOOL* pfUserClock) mut
			{
				return VT.GetUserProvidedClock(&this, pfUserClock);
			}
			public HRESULT DeliverTime(uint64 cnsTime) mut
			{
				return VT.DeliverTime(&this, cnsTime);
			}
			public HRESULT SetManualStreamSelection(BOOL fSelection) mut
			{
				return VT.SetManualStreamSelection(&this, fSelection);
			}
			public HRESULT GetManualStreamSelection(BOOL* pfSelection) mut
			{
				return VT.GetManualStreamSelection(&this, pfSelection);
			}
			public HRESULT SetStreamsSelected(uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) mut
			{
				return VT.SetStreamsSelected(&this, cStreamCount, pwStreamNumbers, pSelections);
			}
			public HRESULT GetStreamSelected(uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) mut
			{
				return VT.GetStreamSelected(&this, wStreamNum, pSelection);
			}
			public HRESULT SetReceiveSelectionCallbacks(BOOL fGetCallbacks) mut
			{
				return VT.SetReceiveSelectionCallbacks(&this, fGetCallbacks);
			}
			public HRESULT GetReceiveSelectionCallbacks(BOOL* pfGetCallbacks) mut
			{
				return VT.GetReceiveSelectionCallbacks(&this, pfGetCallbacks);
			}
			public HRESULT SetReceiveStreamSamples(uint16 wStreamNum, BOOL fReceiveStreamSamples) mut
			{
				return VT.SetReceiveStreamSamples(&this, wStreamNum, fReceiveStreamSamples);
			}
			public HRESULT GetReceiveStreamSamples(uint16 wStreamNum, BOOL* pfReceiveStreamSamples) mut
			{
				return VT.GetReceiveStreamSamples(&this, wStreamNum, pfReceiveStreamSamples);
			}
			public HRESULT SetAllocateForOutput(uint32 dwOutputNum, BOOL fAllocate) mut
			{
				return VT.SetAllocateForOutput(&this, dwOutputNum, fAllocate);
			}
			public HRESULT GetAllocateForOutput(uint32 dwOutputNum, BOOL* pfAllocate) mut
			{
				return VT.GetAllocateForOutput(&this, dwOutputNum, pfAllocate);
			}
			public HRESULT SetAllocateForStream(uint16 wStreamNum, BOOL fAllocate) mut
			{
				return VT.SetAllocateForStream(&this, wStreamNum, fAllocate);
			}
			public HRESULT GetAllocateForStream(uint16 dwSreamNum, BOOL* pfAllocate) mut
			{
				return VT.GetAllocateForStream(&this, dwSreamNum, pfAllocate);
			}
			public HRESULT GetStatistics(WM_READER_STATISTICS* pStatistics) mut
			{
				return VT.GetStatistics(&this, pStatistics);
			}
			public HRESULT SetClientInfo(WM_READER_CLIENTINFO* pClientInfo) mut
			{
				return VT.SetClientInfo(&this, pClientInfo);
			}
			public HRESULT GetMaxOutputSampleSize(uint32 dwOutput, uint32* pcbMax) mut
			{
				return VT.GetMaxOutputSampleSize(&this, dwOutput, pcbMax);
			}
			public HRESULT GetMaxStreamSampleSize(uint16 wStream, uint32* pcbMax) mut
			{
				return VT.GetMaxStreamSampleSize(&this, wStream, pcbMax);
			}
			public HRESULT NotifyLateDelivery(uint64 cnsLateness) mut
			{
				return VT.NotifyLateDelivery(&this, cnsLateness);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderAdvanced *self, BOOL fUserClock) SetUserProvidedClock;
				public new function HRESULT(IWMReaderAdvanced *self, BOOL* pfUserClock) GetUserProvidedClock;
				public new function HRESULT(IWMReaderAdvanced *self, uint64 cnsTime) DeliverTime;
				public new function HRESULT(IWMReaderAdvanced *self, BOOL fSelection) SetManualStreamSelection;
				public new function HRESULT(IWMReaderAdvanced *self, BOOL* pfSelection) GetManualStreamSelection;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) SetStreamsSelected;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) GetStreamSelected;
				public new function HRESULT(IWMReaderAdvanced *self, BOOL fGetCallbacks) SetReceiveSelectionCallbacks;
				public new function HRESULT(IWMReaderAdvanced *self, BOOL* pfGetCallbacks) GetReceiveSelectionCallbacks;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL fReceiveStreamSamples) SetReceiveStreamSamples;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL* pfReceiveStreamSamples) GetReceiveStreamSamples;
				public new function HRESULT(IWMReaderAdvanced *self, uint32 dwOutputNum, BOOL fAllocate) SetAllocateForOutput;
				public new function HRESULT(IWMReaderAdvanced *self, uint32 dwOutputNum, BOOL* pfAllocate) GetAllocateForOutput;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL fAllocate) SetAllocateForStream;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 dwSreamNum, BOOL* pfAllocate) GetAllocateForStream;
				public new function HRESULT(IWMReaderAdvanced *self, WM_READER_STATISTICS* pStatistics) GetStatistics;
				public new function HRESULT(IWMReaderAdvanced *self, WM_READER_CLIENTINFO* pClientInfo) SetClientInfo;
				public new function HRESULT(IWMReaderAdvanced *self, uint32 dwOutput, uint32* pcbMax) GetMaxOutputSampleSize;
				public new function HRESULT(IWMReaderAdvanced *self, uint16 wStream, uint32* pcbMax) GetMaxStreamSampleSize;
				public new function HRESULT(IWMReaderAdvanced *self, uint64 cnsLateness) NotifyLateDelivery;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced2 : IWMReaderAdvanced
		{
			public const new Guid IID = .(0xae14a945, 0xb90c, 0x4d0d, 0x91, 0x27, 0x80, 0xd6, 0x65, 0xf7, 0xd7, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPlayMode(WMT_PLAY_MODE Mode) mut
			{
				return VT.SetPlayMode(&this, Mode);
			}
			public HRESULT GetPlayMode(WMT_PLAY_MODE* pMode) mut
			{
				return VT.GetPlayMode(&this, pMode);
			}
			public HRESULT GetBufferProgress(uint32* pdwPercent, uint64* pcnsBuffering) mut
			{
				return VT.GetBufferProgress(&this, pdwPercent, pcnsBuffering);
			}
			public HRESULT GetDownloadProgress(uint32* pdwPercent, uint64* pqwBytesDownloaded, uint64* pcnsDownload) mut
			{
				return VT.GetDownloadProgress(&this, pdwPercent, pqwBytesDownloaded, pcnsDownload);
			}
			public HRESULT GetSaveAsProgress(uint32* pdwPercent) mut
			{
				return VT.GetSaveAsProgress(&this, pdwPercent);
			}
			public HRESULT SaveFileAs(PWSTR pwszFilename) mut
			{
				return VT.SaveFileAs(&this, pwszFilename);
			}
			public HRESULT GetProtocolName(char16* pwszProtocol, uint32* pcchProtocol) mut
			{
				return VT.GetProtocolName(&this, pwszProtocol, pcchProtocol);
			}
			public HRESULT StartAtMarker(uint16 wMarkerIndex, uint64 cnsDuration, float fRate, void* pvContext) mut
			{
				return VT.StartAtMarker(&this, wMarkerIndex, cnsDuration, fRate, pvContext);
			}
			public HRESULT GetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetOutputSetting(&this, dwOutputNum, pszName, pType, pValue, pcbLength);
			}
			public HRESULT SetOutputSetting(uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetOutputSetting(&this, dwOutputNum, pszName, Type, pValue, cbLength);
			}
			public HRESULT Preroll(uint64 cnsStart, uint64 cnsDuration, float fRate) mut
			{
				return VT.Preroll(&this, cnsStart, cnsDuration, fRate);
			}
			public HRESULT SetLogClientID(BOOL fLogClientID) mut
			{
				return VT.SetLogClientID(&this, fLogClientID);
			}
			public HRESULT GetLogClientID(BOOL* pfLogClientID) mut
			{
				return VT.GetLogClientID(&this, pfLogClientID);
			}
			public HRESULT StopBuffering() mut
			{
				return VT.StopBuffering(&this);
			}
			public HRESULT OpenStream(IStream* pStream, IWMReaderCallback* pCallback, void* pvContext) mut
			{
				return VT.OpenStream(&this, pStream, pCallback, pvContext);
			}
			[CRepr]
			public struct VTable : IWMReaderAdvanced.VTable
			{
				public new function HRESULT(IWMReaderAdvanced2 *self, WMT_PLAY_MODE Mode) SetPlayMode;
				public new function HRESULT(IWMReaderAdvanced2 *self, WMT_PLAY_MODE* pMode) GetPlayMode;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent, uint64* pcnsBuffering) GetBufferProgress;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent, uint64* pqwBytesDownloaded, uint64* pcnsDownload) GetDownloadProgress;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent) GetSaveAsProgress;
				public new function HRESULT(IWMReaderAdvanced2 *self, PWSTR pwszFilename) SaveFileAs;
				public new function HRESULT(IWMReaderAdvanced2 *self, char16* pwszProtocol, uint32* pcchProtocol) GetProtocolName;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint16 wMarkerIndex, uint64 cnsDuration, float fRate, void* pvContext) StartAtMarker;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetOutputSetting;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
				public new function HRESULT(IWMReaderAdvanced2 *self, uint64 cnsStart, uint64 cnsDuration, float fRate) Preroll;
				public new function HRESULT(IWMReaderAdvanced2 *self, BOOL fLogClientID) SetLogClientID;
				public new function HRESULT(IWMReaderAdvanced2 *self, BOOL* pfLogClientID) GetLogClientID;
				public new function HRESULT(IWMReaderAdvanced2 *self) StopBuffering;
				public new function HRESULT(IWMReaderAdvanced2 *self, IStream* pStream, IWMReaderCallback* pCallback, void* pvContext) OpenStream;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced3 : IWMReaderAdvanced2
		{
			public const new Guid IID = .(0x5dc0674b, 0xf04b, 0x4a4e, 0x9f, 0x2a, 0xb1, 0xaf, 0xde, 0x2c, 0x81, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StopNetStreaming() mut
			{
				return VT.StopNetStreaming(&this);
			}
			public HRESULT StartAtPosition(uint16 wStreamNum, void* pvOffsetStart, void* pvDuration, WMT_OFFSET_FORMAT dwOffsetFormat, float fRate, void* pvContext) mut
			{
				return VT.StartAtPosition(&this, wStreamNum, pvOffsetStart, pvDuration, dwOffsetFormat, fRate, pvContext);
			}
			[CRepr]
			public struct VTable : IWMReaderAdvanced2.VTable
			{
				public new function HRESULT(IWMReaderAdvanced3 *self) StopNetStreaming;
				public new function HRESULT(IWMReaderAdvanced3 *self, uint16 wStreamNum, void* pvOffsetStart, void* pvDuration, WMT_OFFSET_FORMAT dwOffsetFormat, float fRate, void* pvContext) StartAtPosition;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced4 : IWMReaderAdvanced3
		{
			public const new Guid IID = .(0x945a76a2, 0x12ae, 0x4d48, 0xbd, 0x3c, 0xcd, 0x1d, 0x90, 0x39, 0x9b, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguageCount(uint32 dwOutputNum, uint16* pwLanguageCount) mut
			{
				return VT.GetLanguageCount(&this, dwOutputNum, pwLanguageCount);
			}
			public HRESULT GetLanguage(uint32 dwOutputNum, uint16 wLanguage, char16* pwszLanguageString, uint16* pcchLanguageStringLength) mut
			{
				return VT.GetLanguage(&this, dwOutputNum, wLanguage, pwszLanguageString, pcchLanguageStringLength);
			}
			public HRESULT GetMaxSpeedFactor(double* pdblFactor) mut
			{
				return VT.GetMaxSpeedFactor(&this, pdblFactor);
			}
			public HRESULT IsUsingFastCache(BOOL* pfUsingFastCache) mut
			{
				return VT.IsUsingFastCache(&this, pfUsingFastCache);
			}
			public HRESULT AddLogParam(PWSTR wszNameSpace, PWSTR wszName, PWSTR wszValue) mut
			{
				return VT.AddLogParam(&this, wszNameSpace, wszName, wszValue);
			}
			public HRESULT SendLogParams() mut
			{
				return VT.SendLogParams(&this);
			}
			public HRESULT CanSaveFileAs(BOOL* pfCanSave) mut
			{
				return VT.CanSaveFileAs(&this, pfCanSave);
			}
			public HRESULT CancelSaveFileAs() mut
			{
				return VT.CancelSaveFileAs(&this);
			}
			public HRESULT GetURL(char16* pwszURL, uint32* pcchURL) mut
			{
				return VT.GetURL(&this, pwszURL, pcchURL);
			}
			[CRepr]
			public struct VTable : IWMReaderAdvanced3.VTable
			{
				public new function HRESULT(IWMReaderAdvanced4 *self, uint32 dwOutputNum, uint16* pwLanguageCount) GetLanguageCount;
				public new function HRESULT(IWMReaderAdvanced4 *self, uint32 dwOutputNum, uint16 wLanguage, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguage;
				public new function HRESULT(IWMReaderAdvanced4 *self, double* pdblFactor) GetMaxSpeedFactor;
				public new function HRESULT(IWMReaderAdvanced4 *self, BOOL* pfUsingFastCache) IsUsingFastCache;
				public new function HRESULT(IWMReaderAdvanced4 *self, PWSTR wszNameSpace, PWSTR wszName, PWSTR wszValue) AddLogParam;
				public new function HRESULT(IWMReaderAdvanced4 *self) SendLogParams;
				public new function HRESULT(IWMReaderAdvanced4 *self, BOOL* pfCanSave) CanSaveFileAs;
				public new function HRESULT(IWMReaderAdvanced4 *self) CancelSaveFileAs;
				public new function HRESULT(IWMReaderAdvanced4 *self, char16* pwszURL, uint32* pcchURL) GetURL;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced5 : IWMReaderAdvanced4
		{
			public const new Guid IID = .(0x24c44db0, 0x55d1, 0x49ae, 0xa5, 0xcc, 0xf1, 0x38, 0x15, 0xe3, 0x63, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetPlayerHook(uint32 dwOutputNum, IWMPlayerHook* pHook) mut
			{
				return VT.SetPlayerHook(&this, dwOutputNum, pHook);
			}
			[CRepr]
			public struct VTable : IWMReaderAdvanced4.VTable
			{
				public new function HRESULT(IWMReaderAdvanced5 *self, uint32 dwOutputNum, IWMPlayerHook* pHook) SetPlayerHook;
			}
		}
		[CRepr]
		public struct IWMReaderAdvanced6 : IWMReaderAdvanced5
		{
			public const new Guid IID = .(0x18a2e7f8, 0x428f, 0x4acd, 0x8a, 0x00, 0xe6, 0x46, 0x39, 0xbc, 0x93, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProtectStreamSamples(uint8* pbCertificate, uint32 cbCertificate, uint32 dwCertificateType, uint32 dwFlags, uint8* pbInitializationVector, uint32* pcbInitializationVector) mut
			{
				return VT.SetProtectStreamSamples(&this, pbCertificate, cbCertificate, dwCertificateType, dwFlags, pbInitializationVector, pcbInitializationVector);
			}
			[CRepr]
			public struct VTable : IWMReaderAdvanced5.VTable
			{
				public new function HRESULT(IWMReaderAdvanced6 *self, uint8* pbCertificate, uint32 cbCertificate, uint32 dwCertificateType, uint32 dwFlags, uint8* pbInitializationVector, uint32* pcbInitializationVector) SetProtectStreamSamples;
			}
		}
		[CRepr]
		public struct IWMPlayerHook : IUnknown
		{
			public const new Guid IID = .(0xe5b7ca9a, 0x0f1c, 0x4f66, 0x90, 0x02, 0x74, 0xec, 0x50, 0xd8, 0xb3, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PreDecode() mut
			{
				return VT.PreDecode(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPlayerHook *self) PreDecode;
			}
		}
		[CRepr]
		public struct IWMReaderAllocatorEx : IUnknown
		{
			public const new Guid IID = .(0x9f762fa7, 0xa22e, 0x428d, 0x93, 0xc9, 0xac, 0x82, 0xf3, 0xaa, 0xfe, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllocateForStreamEx(uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) mut
			{
				return VT.AllocateForStreamEx(&this, wStreamNum, cbBuffer, ppBuffer, dwFlags, cnsSampleTime, cnsSampleDuration, pvContext);
			}
			public HRESULT AllocateForOutputEx(uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) mut
			{
				return VT.AllocateForOutputEx(&this, dwOutputNum, cbBuffer, ppBuffer, dwFlags, cnsSampleTime, cnsSampleDuration, pvContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderAllocatorEx *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForStreamEx;
				public new function HRESULT(IWMReaderAllocatorEx *self, uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForOutputEx;
			}
		}
		[CRepr]
		public struct IWMReaderTypeNegotiation : IUnknown
		{
			public const new Guid IID = .(0xfdbe5592, 0x81a1, 0x41ea, 0x93, 0xbd, 0x73, 0x5c, 0xad, 0x1a, 0xdc, 0x05);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TryOutputProps(uint32 dwOutputNum, IWMOutputMediaProps* pOutput) mut
			{
				return VT.TryOutputProps(&this, dwOutputNum, pOutput);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderTypeNegotiation *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) TryOutputProps;
			}
		}
		[CRepr]
		public struct IWMReaderCallbackAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406beb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStreamSample(uint16 wStreamNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) mut
			{
				return VT.OnStreamSample(&this, wStreamNum, cnsSampleTime, cnsSampleDuration, dwFlags, pSample, pvContext);
			}
			public HRESULT OnTime(uint64 cnsCurrentTime, void* pvContext) mut
			{
				return VT.OnTime(&this, cnsCurrentTime, pvContext);
			}
			public HRESULT OnStreamSelection(uint16 wStreamCount, uint16* pStreamNumbers, WMT_STREAM_SELECTION* pSelections, void* pvContext) mut
			{
				return VT.OnStreamSelection(&this, wStreamCount, pStreamNumbers, pSelections, pvContext);
			}
			public HRESULT OnOutputPropsChanged(uint32 dwOutputNum, WM_MEDIA_TYPE* pMediaType, void* pvContext) mut
			{
				return VT.OnOutputPropsChanged(&this, dwOutputNum, pMediaType, pvContext);
			}
			public HRESULT AllocateForStream(uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) mut
			{
				return VT.AllocateForStream(&this, wStreamNum, cbBuffer, ppBuffer, pvContext);
			}
			public HRESULT AllocateForOutput(uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) mut
			{
				return VT.AllocateForOutput(&this, dwOutputNum, cbBuffer, ppBuffer, pvContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnStreamSample;
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint64 cnsCurrentTime, void* pvContext) OnTime;
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamCount, uint16* pStreamNumbers, WMT_STREAM_SELECTION* pSelections, void* pvContext) OnStreamSelection;
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint32 dwOutputNum, WM_MEDIA_TYPE* pMediaType, void* pvContext) OnOutputPropsChanged;
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForStream;
				public new function HRESULT(IWMReaderCallbackAdvanced *self, uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForOutput;
			}
		}
		[CRepr]
		public struct IWMDRMReader : IUnknown
		{
			public const new Guid IID = .(0xd2827540, 0x3ee7, 0x432c, 0xb1, 0x4c, 0xdc, 0x17, 0xf0, 0x85, 0xd3, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AcquireLicense(uint32 dwFlags) mut
			{
				return VT.AcquireLicense(&this, dwFlags);
			}
			public HRESULT CancelLicenseAcquisition() mut
			{
				return VT.CancelLicenseAcquisition(&this);
			}
			public HRESULT Individualize(uint32 dwFlags) mut
			{
				return VT.Individualize(&this, dwFlags);
			}
			public HRESULT CancelIndividualization() mut
			{
				return VT.CancelIndividualization(&this);
			}
			public HRESULT MonitorLicenseAcquisition() mut
			{
				return VT.MonitorLicenseAcquisition(&this);
			}
			public HRESULT CancelMonitorLicenseAcquisition() mut
			{
				return VT.CancelMonitorLicenseAcquisition(&this);
			}
			public HRESULT SetDRMProperty(PWSTR pwstrName, WMT_ATTR_DATATYPE dwType, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetDRMProperty(&this, pwstrName, dwType, pValue, cbLength);
			}
			public HRESULT GetDRMProperty(PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetDRMProperty(&this, pwstrName, pdwType, pValue, pcbLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMReader *self, uint32 dwFlags) AcquireLicense;
				public new function HRESULT(IWMDRMReader *self) CancelLicenseAcquisition;
				public new function HRESULT(IWMDRMReader *self, uint32 dwFlags) Individualize;
				public new function HRESULT(IWMDRMReader *self) CancelIndividualization;
				public new function HRESULT(IWMDRMReader *self) MonitorLicenseAcquisition;
				public new function HRESULT(IWMDRMReader *self) CancelMonitorLicenseAcquisition;
				public new function HRESULT(IWMDRMReader *self, PWSTR pwstrName, WMT_ATTR_DATATYPE dwType, uint8* pValue, uint16 cbLength) SetDRMProperty;
				public new function HRESULT(IWMDRMReader *self, PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) GetDRMProperty;
			}
		}
		[CRepr]
		public struct IWMDRMReader2 : IWMDRMReader
		{
			public const new Guid IID = .(0xbefe7a75, 0x9f1d, 0x4075, 0xb9, 0xd9, 0xa3, 0xc3, 0x7b, 0xda, 0x49, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEvaluateOutputLevelLicenses(BOOL fEvaluate) mut
			{
				return VT.SetEvaluateOutputLevelLicenses(&this, fEvaluate);
			}
			public HRESULT GetPlayOutputLevels(DRM_PLAY_OPL* pPlayOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) mut
			{
				return VT.GetPlayOutputLevels(&this, pPlayOPL, pcbLength, pdwMinAppComplianceLevel);
			}
			public HRESULT GetCopyOutputLevels(DRM_COPY_OPL* pCopyOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) mut
			{
				return VT.GetCopyOutputLevels(&this, pCopyOPL, pcbLength, pdwMinAppComplianceLevel);
			}
			public HRESULT TryNextLicense() mut
			{
				return VT.TryNextLicense(&this);
			}
			[CRepr]
			public struct VTable : IWMDRMReader.VTable
			{
				public new function HRESULT(IWMDRMReader2 *self, BOOL fEvaluate) SetEvaluateOutputLevelLicenses;
				public new function HRESULT(IWMDRMReader2 *self, DRM_PLAY_OPL* pPlayOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) GetPlayOutputLevels;
				public new function HRESULT(IWMDRMReader2 *self, DRM_COPY_OPL* pCopyOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) GetCopyOutputLevels;
				public new function HRESULT(IWMDRMReader2 *self) TryNextLicense;
			}
		}
		[CRepr]
		public struct IWMDRMReader3 : IWMDRMReader2
		{
			public const new Guid IID = .(0xe08672de, 0xf1e7, 0x4ff4, 0xa0, 0xa3, 0xfc, 0x4b, 0x08, 0xe4, 0xca, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInclusionList(Guid** ppGuids, uint32* pcGuids) mut
			{
				return VT.GetInclusionList(&this, ppGuids, pcGuids);
			}
			[CRepr]
			public struct VTable : IWMDRMReader2.VTable
			{
				public new function HRESULT(IWMDRMReader3 *self, Guid** ppGuids, uint32* pcGuids) GetInclusionList;
			}
		}
		[CRepr]
		public struct IWMReaderPlaylistBurn : IUnknown
		{
			public const new Guid IID = .(0xf28c0300, 0x9baa, 0x4477, 0xa8, 0x46, 0x17, 0x44, 0xd9, 0xcb, 0xf5, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitPlaylistBurn(uint32 cFiles, PWSTR* ppwszFilenames, IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.InitPlaylistBurn(&this, cFiles, ppwszFilenames, pCallback, pvContext);
			}
			public HRESULT GetInitResults(uint32 cFiles, HRESULT* phrStati) mut
			{
				return VT.GetInitResults(&this, cFiles, phrStati);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT EndPlaylistBurn(HRESULT hrBurnResult) mut
			{
				return VT.EndPlaylistBurn(&this, hrBurnResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderPlaylistBurn *self, uint32 cFiles, PWSTR* ppwszFilenames, IWMStatusCallback* pCallback, void* pvContext) InitPlaylistBurn;
				public new function HRESULT(IWMReaderPlaylistBurn *self, uint32 cFiles, HRESULT* phrStati) GetInitResults;
				public new function HRESULT(IWMReaderPlaylistBurn *self) Cancel;
				public new function HRESULT(IWMReaderPlaylistBurn *self, HRESULT hrBurnResult) EndPlaylistBurn;
			}
		}
		[CRepr]
		public struct IWMReaderNetworkConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bec, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBufferingTime(uint64* pcnsBufferingTime) mut
			{
				return VT.GetBufferingTime(&this, pcnsBufferingTime);
			}
			public HRESULT SetBufferingTime(uint64 cnsBufferingTime) mut
			{
				return VT.SetBufferingTime(&this, cnsBufferingTime);
			}
			public HRESULT GetUDPPortRanges(WM_PORT_NUMBER_RANGE* pRangeArray, uint32* pcRanges) mut
			{
				return VT.GetUDPPortRanges(&this, pRangeArray, pcRanges);
			}
			public HRESULT SetUDPPortRanges(WM_PORT_NUMBER_RANGE* pRangeArray, uint32 cRanges) mut
			{
				return VT.SetUDPPortRanges(&this, pRangeArray, cRanges);
			}
			public HRESULT GetProxySettings(PWSTR pwszProtocol, WMT_PROXY_SETTINGS* pProxySetting) mut
			{
				return VT.GetProxySettings(&this, pwszProtocol, pProxySetting);
			}
			public HRESULT SetProxySettings(PWSTR pwszProtocol, WMT_PROXY_SETTINGS ProxySetting) mut
			{
				return VT.SetProxySettings(&this, pwszProtocol, ProxySetting);
			}
			public HRESULT GetProxyHostName(PWSTR pwszProtocol, char16* pwszHostName, uint32* pcchHostName) mut
			{
				return VT.GetProxyHostName(&this, pwszProtocol, pwszHostName, pcchHostName);
			}
			public HRESULT SetProxyHostName(PWSTR pwszProtocol, PWSTR pwszHostName) mut
			{
				return VT.SetProxyHostName(&this, pwszProtocol, pwszHostName);
			}
			public HRESULT GetProxyPort(PWSTR pwszProtocol, uint32* pdwPort) mut
			{
				return VT.GetProxyPort(&this, pwszProtocol, pdwPort);
			}
			public HRESULT SetProxyPort(PWSTR pwszProtocol, uint32 dwPort) mut
			{
				return VT.SetProxyPort(&this, pwszProtocol, dwPort);
			}
			public HRESULT GetProxyExceptionList(PWSTR pwszProtocol, char16* pwszExceptionList, uint32* pcchExceptionList) mut
			{
				return VT.GetProxyExceptionList(&this, pwszProtocol, pwszExceptionList, pcchExceptionList);
			}
			public HRESULT SetProxyExceptionList(PWSTR pwszProtocol, PWSTR pwszExceptionList) mut
			{
				return VT.SetProxyExceptionList(&this, pwszProtocol, pwszExceptionList);
			}
			public HRESULT GetProxyBypassForLocal(PWSTR pwszProtocol, BOOL* pfBypassForLocal) mut
			{
				return VT.GetProxyBypassForLocal(&this, pwszProtocol, pfBypassForLocal);
			}
			public HRESULT SetProxyBypassForLocal(PWSTR pwszProtocol, BOOL fBypassForLocal) mut
			{
				return VT.SetProxyBypassForLocal(&this, pwszProtocol, fBypassForLocal);
			}
			public HRESULT GetForceRerunAutoProxyDetection(BOOL* pfForceRerunDetection) mut
			{
				return VT.GetForceRerunAutoProxyDetection(&this, pfForceRerunDetection);
			}
			public HRESULT SetForceRerunAutoProxyDetection(BOOL fForceRerunDetection) mut
			{
				return VT.SetForceRerunAutoProxyDetection(&this, fForceRerunDetection);
			}
			public HRESULT GetEnableMulticast(BOOL* pfEnableMulticast) mut
			{
				return VT.GetEnableMulticast(&this, pfEnableMulticast);
			}
			public HRESULT SetEnableMulticast(BOOL fEnableMulticast) mut
			{
				return VT.SetEnableMulticast(&this, fEnableMulticast);
			}
			public HRESULT GetEnableHTTP(BOOL* pfEnableHTTP) mut
			{
				return VT.GetEnableHTTP(&this, pfEnableHTTP);
			}
			public HRESULT SetEnableHTTP(BOOL fEnableHTTP) mut
			{
				return VT.SetEnableHTTP(&this, fEnableHTTP);
			}
			public HRESULT GetEnableUDP(BOOL* pfEnableUDP) mut
			{
				return VT.GetEnableUDP(&this, pfEnableUDP);
			}
			public HRESULT SetEnableUDP(BOOL fEnableUDP) mut
			{
				return VT.SetEnableUDP(&this, fEnableUDP);
			}
			public HRESULT GetEnableTCP(BOOL* pfEnableTCP) mut
			{
				return VT.GetEnableTCP(&this, pfEnableTCP);
			}
			public HRESULT SetEnableTCP(BOOL fEnableTCP) mut
			{
				return VT.SetEnableTCP(&this, fEnableTCP);
			}
			public HRESULT ResetProtocolRollover() mut
			{
				return VT.ResetProtocolRollover(&this);
			}
			public HRESULT GetConnectionBandwidth(uint32* pdwConnectionBandwidth) mut
			{
				return VT.GetConnectionBandwidth(&this, pdwConnectionBandwidth);
			}
			public HRESULT SetConnectionBandwidth(uint32 dwConnectionBandwidth) mut
			{
				return VT.SetConnectionBandwidth(&this, dwConnectionBandwidth);
			}
			public HRESULT GetNumProtocolsSupported(uint32* pcProtocols) mut
			{
				return VT.GetNumProtocolsSupported(&this, pcProtocols);
			}
			public HRESULT GetSupportedProtocolName(uint32 dwProtocolNum, char16* pwszProtocolName, uint32* pcchProtocolName) mut
			{
				return VT.GetSupportedProtocolName(&this, dwProtocolNum, pwszProtocolName, pcchProtocolName);
			}
			public HRESULT AddLoggingUrl(PWSTR pwszUrl) mut
			{
				return VT.AddLoggingUrl(&this, pwszUrl);
			}
			public HRESULT GetLoggingUrl(uint32 dwIndex, char16* pwszUrl, uint32* pcchUrl) mut
			{
				return VT.GetLoggingUrl(&this, dwIndex, pwszUrl, pcchUrl);
			}
			public HRESULT GetLoggingUrlCount(uint32* pdwUrlCount) mut
			{
				return VT.GetLoggingUrlCount(&this, pdwUrlCount);
			}
			public HRESULT ResetLoggingUrlList() mut
			{
				return VT.ResetLoggingUrlList(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderNetworkConfig *self, uint64* pcnsBufferingTime) GetBufferingTime;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint64 cnsBufferingTime) SetBufferingTime;
				public new function HRESULT(IWMReaderNetworkConfig *self, WM_PORT_NUMBER_RANGE* pRangeArray, uint32* pcRanges) GetUDPPortRanges;
				public new function HRESULT(IWMReaderNetworkConfig *self, WM_PORT_NUMBER_RANGE* pRangeArray, uint32 cRanges) SetUDPPortRanges;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, WMT_PROXY_SETTINGS* pProxySetting) GetProxySettings;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, WMT_PROXY_SETTINGS ProxySetting) SetProxySettings;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, char16* pwszHostName, uint32* pcchHostName) GetProxyHostName;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, PWSTR pwszHostName) SetProxyHostName;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, uint32* pdwPort) GetProxyPort;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, uint32 dwPort) SetProxyPort;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, char16* pwszExceptionList, uint32* pcchExceptionList) GetProxyExceptionList;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, PWSTR pwszExceptionList) SetProxyExceptionList;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, BOOL* pfBypassForLocal) GetProxyBypassForLocal;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, BOOL fBypassForLocal) SetProxyBypassForLocal;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfForceRerunDetection) GetForceRerunAutoProxyDetection;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL fForceRerunDetection) SetForceRerunAutoProxyDetection;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableMulticast) GetEnableMulticast;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableMulticast) SetEnableMulticast;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableHTTP) GetEnableHTTP;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableHTTP) SetEnableHTTP;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableUDP) GetEnableUDP;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableUDP) SetEnableUDP;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableTCP) GetEnableTCP;
				public new function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableTCP) SetEnableTCP;
				public new function HRESULT(IWMReaderNetworkConfig *self) ResetProtocolRollover;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32* pdwConnectionBandwidth) GetConnectionBandwidth;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32 dwConnectionBandwidth) SetConnectionBandwidth;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32* pcProtocols) GetNumProtocolsSupported;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32 dwProtocolNum, char16* pwszProtocolName, uint32* pcchProtocolName) GetSupportedProtocolName;
				public new function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszUrl) AddLoggingUrl;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32 dwIndex, char16* pwszUrl, uint32* pcchUrl) GetLoggingUrl;
				public new function HRESULT(IWMReaderNetworkConfig *self, uint32* pdwUrlCount) GetLoggingUrlCount;
				public new function HRESULT(IWMReaderNetworkConfig *self) ResetLoggingUrlList;
			}
		}
		[CRepr]
		public struct IWMReaderNetworkConfig2 : IWMReaderNetworkConfig
		{
			public const new Guid IID = .(0xd979a853, 0x042b, 0x4050, 0x83, 0x87, 0xc9, 0x39, 0xdb, 0x22, 0x01, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEnableContentCaching(BOOL* pfEnableContentCaching) mut
			{
				return VT.GetEnableContentCaching(&this, pfEnableContentCaching);
			}
			public HRESULT SetEnableContentCaching(BOOL fEnableContentCaching) mut
			{
				return VT.SetEnableContentCaching(&this, fEnableContentCaching);
			}
			public HRESULT GetEnableFastCache(BOOL* pfEnableFastCache) mut
			{
				return VT.GetEnableFastCache(&this, pfEnableFastCache);
			}
			public HRESULT SetEnableFastCache(BOOL fEnableFastCache) mut
			{
				return VT.SetEnableFastCache(&this, fEnableFastCache);
			}
			public HRESULT GetAcceleratedStreamingDuration(uint64* pcnsAccelDuration) mut
			{
				return VT.GetAcceleratedStreamingDuration(&this, pcnsAccelDuration);
			}
			public HRESULT SetAcceleratedStreamingDuration(uint64 cnsAccelDuration) mut
			{
				return VT.SetAcceleratedStreamingDuration(&this, cnsAccelDuration);
			}
			public HRESULT GetAutoReconnectLimit(uint32* pdwAutoReconnectLimit) mut
			{
				return VT.GetAutoReconnectLimit(&this, pdwAutoReconnectLimit);
			}
			public HRESULT SetAutoReconnectLimit(uint32 dwAutoReconnectLimit) mut
			{
				return VT.SetAutoReconnectLimit(&this, dwAutoReconnectLimit);
			}
			public HRESULT GetEnableResends(BOOL* pfEnableResends) mut
			{
				return VT.GetEnableResends(&this, pfEnableResends);
			}
			public HRESULT SetEnableResends(BOOL fEnableResends) mut
			{
				return VT.SetEnableResends(&this, fEnableResends);
			}
			public HRESULT GetEnableThinning(BOOL* pfEnableThinning) mut
			{
				return VT.GetEnableThinning(&this, pfEnableThinning);
			}
			public HRESULT SetEnableThinning(BOOL fEnableThinning) mut
			{
				return VT.SetEnableThinning(&this, fEnableThinning);
			}
			public HRESULT GetMaxNetPacketSize(uint32* pdwMaxNetPacketSize) mut
			{
				return VT.GetMaxNetPacketSize(&this, pdwMaxNetPacketSize);
			}
			[CRepr]
			public struct VTable : IWMReaderNetworkConfig.VTable
			{
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableContentCaching) GetEnableContentCaching;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableContentCaching) SetEnableContentCaching;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableFastCache) GetEnableFastCache;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableFastCache) SetEnableFastCache;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, uint64* pcnsAccelDuration) GetAcceleratedStreamingDuration;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, uint64 cnsAccelDuration) SetAcceleratedStreamingDuration;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, uint32* pdwAutoReconnectLimit) GetAutoReconnectLimit;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, uint32 dwAutoReconnectLimit) SetAutoReconnectLimit;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableResends) GetEnableResends;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableResends) SetEnableResends;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableThinning) GetEnableThinning;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableThinning) SetEnableThinning;
				public new function HRESULT(IWMReaderNetworkConfig2 *self, uint32* pdwMaxNetPacketSize) GetMaxNetPacketSize;
			}
		}
		[CRepr]
		public struct IWMReaderStreamClock : IUnknown
		{
			public const new Guid IID = .(0x96406bed, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTime(uint64* pcnsNow) mut
			{
				return VT.GetTime(&this, pcnsNow);
			}
			public HRESULT SetTimer(uint64 cnsWhen, void* pvParam, uint32* pdwTimerId) mut
			{
				return VT.SetTimer(&this, cnsWhen, pvParam, pdwTimerId);
			}
			public HRESULT KillTimer(uint32 dwTimerId) mut
			{
				return VT.KillTimer(&this, dwTimerId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderStreamClock *self, uint64* pcnsNow) GetTime;
				public new function HRESULT(IWMReaderStreamClock *self, uint64 cnsWhen, void* pvParam, uint32* pdwTimerId) SetTimer;
				public new function HRESULT(IWMReaderStreamClock *self, uint32 dwTimerId) KillTimer;
			}
		}
		[CRepr]
		public struct IWMIndexer : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc71, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartIndexing(PWSTR pwszURL, IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.StartIndexing(&this, pwszURL, pCallback, pvContext);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMIndexer *self, PWSTR pwszURL, IWMStatusCallback* pCallback, void* pvContext) StartIndexing;
				public new function HRESULT(IWMIndexer *self) Cancel;
			}
		}
		[CRepr]
		public struct IWMIndexer2 : IWMIndexer
		{
			public const new Guid IID = .(0xb70f1e42, 0x6255, 0x4df0, 0xa6, 0xb9, 0x02, 0xb2, 0x12, 0xd9, 0xe2, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Configure(uint16 wStreamNum, WMT_INDEXER_TYPE nIndexerType, void* pvInterval, void* pvIndexType) mut
			{
				return VT.Configure(&this, wStreamNum, nIndexerType, pvInterval, pvIndexType);
			}
			[CRepr]
			public struct VTable : IWMIndexer.VTable
			{
				public new function HRESULT(IWMIndexer2 *self, uint16 wStreamNum, WMT_INDEXER_TYPE nIndexerType, void* pvInterval, void* pvIndexType) Configure;
			}
		}
		[CRepr]
		public struct IWMLicenseBackup : IUnknown
		{
			public const new Guid IID = .(0x05e5ac9f, 0x3fb6, 0x4508, 0xbb, 0x43, 0xa4, 0x06, 0x7b, 0xa1, 0xeb, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BackupLicenses(uint32 dwFlags, IWMStatusCallback* pCallback) mut
			{
				return VT.BackupLicenses(&this, dwFlags, pCallback);
			}
			public HRESULT CancelLicenseBackup() mut
			{
				return VT.CancelLicenseBackup(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMLicenseBackup *self, uint32 dwFlags, IWMStatusCallback* pCallback) BackupLicenses;
				public new function HRESULT(IWMLicenseBackup *self) CancelLicenseBackup;
			}
		}
		[CRepr]
		public struct IWMLicenseRestore : IUnknown
		{
			public const new Guid IID = .(0xc70b6334, 0xa22e, 0x4efb, 0xa2, 0x45, 0x15, 0xe6, 0x5a, 0x00, 0x4a, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RestoreLicenses(uint32 dwFlags, IWMStatusCallback* pCallback) mut
			{
				return VT.RestoreLicenses(&this, dwFlags, pCallback);
			}
			public HRESULT CancelLicenseRestore() mut
			{
				return VT.CancelLicenseRestore(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMLicenseRestore *self, uint32 dwFlags, IWMStatusCallback* pCallback) RestoreLicenses;
				public new function HRESULT(IWMLicenseRestore *self) CancelLicenseRestore;
			}
		}
		[CRepr]
		public struct IWMBackupRestoreProps : IUnknown
		{
			public const new Guid IID = .(0x3c8e0da6, 0x996f, 0x4ff3, 0xa1, 0xaf, 0x48, 0x38, 0xf9, 0x37, 0x7e, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropCount(uint16* pcProps) mut
			{
				return VT.GetPropCount(&this, pcProps);
			}
			public HRESULT GetPropByIndex(uint16 wIndex, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetPropByIndex(&this, wIndex, pwszName, pcchNameLen, pType, pValue, pcbLength);
			}
			public HRESULT GetPropByName(PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) mut
			{
				return VT.GetPropByName(&this, pszName, pType, pValue, pcbLength);
			}
			public HRESULT SetProp(PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) mut
			{
				return VT.SetProp(&this, pszName, Type, pValue, cbLength);
			}
			public HRESULT RemoveProp(PWSTR pcwszName) mut
			{
				return VT.RemoveProp(&this, pcwszName);
			}
			public HRESULT RemoveAllProps() mut
			{
				return VT.RemoveAllProps(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMBackupRestoreProps *self, uint16* pcProps) GetPropCount;
				public new function HRESULT(IWMBackupRestoreProps *self, uint16 wIndex, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetPropByIndex;
				public new function HRESULT(IWMBackupRestoreProps *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetPropByName;
				public new function HRESULT(IWMBackupRestoreProps *self, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetProp;
				public new function HRESULT(IWMBackupRestoreProps *self, PWSTR pcwszName) RemoveProp;
				public new function HRESULT(IWMBackupRestoreProps *self) RemoveAllProps;
			}
		}
		[CRepr]
		public struct IWMCodecInfo : IUnknown
		{
			public const new Guid IID = .(0xa970f41e, 0x34de, 0x4a98, 0xb3, 0xba, 0xe4, 0xb3, 0xca, 0x75, 0x28, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInfoCount(Guid* guidType, uint32* pcCodecs) mut
			{
				return VT.GetCodecInfoCount(&this, guidType, pcCodecs);
			}
			public HRESULT GetCodecFormatCount(Guid* guidType, uint32 dwCodecIndex, uint32* pcFormat) mut
			{
				return VT.GetCodecFormatCount(&this, guidType, dwCodecIndex, pcFormat);
			}
			public HRESULT GetCodecFormat(Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig) mut
			{
				return VT.GetCodecFormat(&this, guidType, dwCodecIndex, dwFormatIndex, ppIStreamConfig);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32* pcCodecs) GetCodecInfoCount;
				public new function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32 dwCodecIndex, uint32* pcFormat) GetCodecFormatCount;
				public new function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig) GetCodecFormat;
			}
		}
		[CRepr]
		public struct IWMCodecInfo2 : IWMCodecInfo
		{
			public const new Guid IID = .(0xaa65e273, 0xb686, 0x4056, 0x91, 0xec, 0xdd, 0x76, 0x8d, 0x4d, 0xf7, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecName(Guid* guidType, uint32 dwCodecIndex, char16* wszName, uint32* pcchName) mut
			{
				return VT.GetCodecName(&this, guidType, dwCodecIndex, wszName, pcchName);
			}
			public HRESULT GetCodecFormatDesc(Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig, char16* wszDesc, uint32* pcchDesc) mut
			{
				return VT.GetCodecFormatDesc(&this, guidType, dwCodecIndex, dwFormatIndex, ppIStreamConfig, wszDesc, pcchDesc);
			}
			[CRepr]
			public struct VTable : IWMCodecInfo.VTable
			{
				public new function HRESULT(IWMCodecInfo2 *self, Guid* guidType, uint32 dwCodecIndex, char16* wszName, uint32* pcchName) GetCodecName;
				public new function HRESULT(IWMCodecInfo2 *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig, char16* wszDesc, uint32* pcchDesc) GetCodecFormatDesc;
			}
		}
		[CRepr]
		public struct IWMCodecInfo3 : IWMCodecInfo2
		{
			public const new Guid IID = .(0x7e51f487, 0x4d93, 0x4f98, 0x8a, 0xb4, 0x27, 0xd0, 0x56, 0x5a, 0xdc, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecFormatProp(Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetCodecFormatProp(&this, guidType, dwCodecIndex, dwFormatIndex, pszName, pType, pValue, pdwSize);
			}
			public HRESULT GetCodecProp(Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetCodecProp(&this, guidType, dwCodecIndex, pszName, pType, pValue, pdwSize);
			}
			public HRESULT SetCodecEnumerationSetting(Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint32 dwSize) mut
			{
				return VT.SetCodecEnumerationSetting(&this, guidType, dwCodecIndex, pszName, Type, pValue, dwSize);
			}
			public HRESULT GetCodecEnumerationSetting(Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) mut
			{
				return VT.GetCodecEnumerationSetting(&this, guidType, dwCodecIndex, pszName, pType, pValue, pdwSize);
			}
			[CRepr]
			public struct VTable : IWMCodecInfo2.VTable
			{
				public new function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecFormatProp;
				public new function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecProp;
				public new function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint32 dwSize) SetCodecEnumerationSetting;
				public new function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecEnumerationSetting;
			}
		}
		[CRepr]
		public struct IWMLanguageList : IUnknown
		{
			public const new Guid IID = .(0xdf683f00, 0x2d49, 0x4d8e, 0x92, 0xb7, 0xfb, 0x19, 0xf6, 0xa0, 0xdc, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLanguageCount(uint16* pwCount) mut
			{
				return VT.GetLanguageCount(&this, pwCount);
			}
			public HRESULT GetLanguageDetails(uint16 wIndex, char16* pwszLanguageString, uint16* pcchLanguageStringLength) mut
			{
				return VT.GetLanguageDetails(&this, wIndex, pwszLanguageString, pcchLanguageStringLength);
			}
			public HRESULT AddLanguageByRFC1766String(PWSTR pwszLanguageString, uint16* pwIndex) mut
			{
				return VT.AddLanguageByRFC1766String(&this, pwszLanguageString, pwIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMLanguageList *self, uint16* pwCount) GetLanguageCount;
				public new function HRESULT(IWMLanguageList *self, uint16 wIndex, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguageDetails;
				public new function HRESULT(IWMLanguageList *self, PWSTR pwszLanguageString, uint16* pwIndex) AddLanguageByRFC1766String;
			}
		}
		[CRepr]
		public struct IWMWriterPushSink : IWMWriterSink
		{
			public const new Guid IID = .(0xdc10e6a5, 0x072c, 0x467d, 0xbf, 0x57, 0x63, 0x30, 0xa9, 0xdd, 0xe1, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(PWSTR pwszURL, PWSTR pwszTemplateURL, BOOL fAutoDestroy) mut
			{
				return VT.Connect(&this, pwszURL, pwszTemplateURL, fAutoDestroy);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			public HRESULT EndSession() mut
			{
				return VT.EndSession(&this);
			}
			[CRepr]
			public struct VTable : IWMWriterSink.VTable
			{
				public new function HRESULT(IWMWriterPushSink *self, PWSTR pwszURL, PWSTR pwszTemplateURL, BOOL fAutoDestroy) Connect;
				public new function HRESULT(IWMWriterPushSink *self) Disconnect;
				public new function HRESULT(IWMWriterPushSink *self) EndSession;
			}
		}
		[CRepr]
		public struct IWMDeviceRegistration : IUnknown
		{
			public const new Guid IID = .(0xf6211f03, 0x8d21, 0x4e94, 0x93, 0xe6, 0x85, 0x10, 0x80, 0x5f, 0x2d, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterDevice(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) mut
			{
				return VT.RegisterDevice(&this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber, ppDevice);
			}
			public HRESULT UnregisterDevice(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber) mut
			{
				return VT.UnregisterDevice(&this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber);
			}
			public HRESULT GetRegistrationStats(uint32 dwRegisterType, uint32* pcRegisteredDevices) mut
			{
				return VT.GetRegistrationStats(&this, dwRegisterType, pcRegisteredDevices);
			}
			public HRESULT GetFirstRegisteredDevice(uint32 dwRegisterType, IWMRegisteredDevice** ppDevice) mut
			{
				return VT.GetFirstRegisteredDevice(&this, dwRegisterType, ppDevice);
			}
			public HRESULT GetNextRegisteredDevice(IWMRegisteredDevice** ppDevice) mut
			{
				return VT.GetNextRegisteredDevice(&this, ppDevice);
			}
			public HRESULT GetRegisteredDeviceByID(uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) mut
			{
				return VT.GetRegisteredDeviceByID(&this, dwRegisterType, pbCertificate, cbCertificate, SerialNumber, ppDevice);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) RegisterDevice;
				public new function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber) UnregisterDevice;
				public new function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint32* pcRegisteredDevices) GetRegistrationStats;
				public new function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, IWMRegisteredDevice** ppDevice) GetFirstRegisteredDevice;
				public new function HRESULT(IWMDeviceRegistration *self, IWMRegisteredDevice** ppDevice) GetNextRegisteredDevice;
				public new function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) GetRegisteredDeviceByID;
			}
		}
		[CRepr]
		public struct IWMRegisteredDevice : IUnknown
		{
			public const new Guid IID = .(0xa4503bec, 0x5508, 0x4148, 0x97, 0xac, 0xbf, 0xa7, 0x57, 0x60, 0xa7, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceSerialNumber(DRM_VAL16* pSerialNumber) mut
			{
				return VT.GetDeviceSerialNumber(&this, pSerialNumber);
			}
			public HRESULT GetDeviceCertificate(INSSBuffer** ppCertificate) mut
			{
				return VT.GetDeviceCertificate(&this, ppCertificate);
			}
			public HRESULT GetDeviceType(uint32* pdwType) mut
			{
				return VT.GetDeviceType(&this, pdwType);
			}
			public HRESULT GetAttributeCount(uint32* pcAttributes) mut
			{
				return VT.GetAttributeCount(&this, pcAttributes);
			}
			public HRESULT GetAttributeByIndex(uint32 dwIndex, BSTR* pbstrName, BSTR* pbstrValue) mut
			{
				return VT.GetAttributeByIndex(&this, dwIndex, pbstrName, pbstrValue);
			}
			public HRESULT GetAttributeByName(BSTR bstrName, BSTR* pbstrValue) mut
			{
				return VT.GetAttributeByName(&this, bstrName, pbstrValue);
			}
			public HRESULT SetAttributeByName(BSTR bstrName, BSTR bstrValue) mut
			{
				return VT.SetAttributeByName(&this, bstrName, bstrValue);
			}
			public HRESULT Approve(BOOL fApprove) mut
			{
				return VT.Approve(&this, fApprove);
			}
			public HRESULT IsValid(BOOL* pfValid) mut
			{
				return VT.IsValid(&this, pfValid);
			}
			public HRESULT IsApproved(BOOL* pfApproved) mut
			{
				return VT.IsApproved(&this, pfApproved);
			}
			public HRESULT IsWmdrmCompliant(BOOL* pfCompliant) mut
			{
				return VT.IsWmdrmCompliant(&this, pfCompliant);
			}
			public HRESULT IsOpened(BOOL* pfOpened) mut
			{
				return VT.IsOpened(&this, pfOpened);
			}
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMRegisteredDevice *self, DRM_VAL16* pSerialNumber) GetDeviceSerialNumber;
				public new function HRESULT(IWMRegisteredDevice *self, INSSBuffer** ppCertificate) GetDeviceCertificate;
				public new function HRESULT(IWMRegisteredDevice *self, uint32* pdwType) GetDeviceType;
				public new function HRESULT(IWMRegisteredDevice *self, uint32* pcAttributes) GetAttributeCount;
				public new function HRESULT(IWMRegisteredDevice *self, uint32 dwIndex, BSTR* pbstrName, BSTR* pbstrValue) GetAttributeByIndex;
				public new function HRESULT(IWMRegisteredDevice *self, BSTR bstrName, BSTR* pbstrValue) GetAttributeByName;
				public new function HRESULT(IWMRegisteredDevice *self, BSTR bstrName, BSTR bstrValue) SetAttributeByName;
				public new function HRESULT(IWMRegisteredDevice *self, BOOL fApprove) Approve;
				public new function HRESULT(IWMRegisteredDevice *self, BOOL* pfValid) IsValid;
				public new function HRESULT(IWMRegisteredDevice *self, BOOL* pfApproved) IsApproved;
				public new function HRESULT(IWMRegisteredDevice *self, BOOL* pfCompliant) IsWmdrmCompliant;
				public new function HRESULT(IWMRegisteredDevice *self, BOOL* pfOpened) IsOpened;
				public new function HRESULT(IWMRegisteredDevice *self) Open;
				public new function HRESULT(IWMRegisteredDevice *self) Close;
			}
		}
		[CRepr]
		public struct IWMProximityDetection : IUnknown
		{
			public const new Guid IID = .(0x6a9fd8ee, 0xb651, 0x4bf0, 0xb8, 0x49, 0x7d, 0x4e, 0xce, 0x79, 0xa2, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartDetection(uint8* pbRegistrationMsg, uint32 cbRegistrationMsg, uint8* pbLocalAddress, uint32 cbLocalAddress, uint32 dwExtraPortsAllowed, INSSBuffer** ppRegistrationResponseMsg, IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.StartDetection(&this, pbRegistrationMsg, cbRegistrationMsg, pbLocalAddress, cbLocalAddress, dwExtraPortsAllowed, ppRegistrationResponseMsg, pCallback, pvContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMProximityDetection *self, uint8* pbRegistrationMsg, uint32 cbRegistrationMsg, uint8* pbLocalAddress, uint32 cbLocalAddress, uint32 dwExtraPortsAllowed, INSSBuffer** ppRegistrationResponseMsg, IWMStatusCallback* pCallback, void* pvContext) StartDetection;
			}
		}
		[CRepr]
		public struct IWMDRMMessageParser : IUnknown
		{
			public const new Guid IID = .(0xa73a0072, 0x25a0, 0x4c99, 0xb4, 0xa5, 0xed, 0xe8, 0x10, 0x1a, 0x6c, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParseRegistrationReqMsg(uint8* pbRegistrationReqMsg, uint32 cbRegistrationReqMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber) mut
			{
				return VT.ParseRegistrationReqMsg(&this, pbRegistrationReqMsg, cbRegistrationReqMsg, ppDeviceCert, pDeviceSerialNumber);
			}
			public HRESULT ParseLicenseRequestMsg(uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber, BSTR* pbstrAction) mut
			{
				return VT.ParseLicenseRequestMsg(&this, pbLicenseRequestMsg, cbLicenseRequestMsg, ppDeviceCert, pDeviceSerialNumber, pbstrAction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMMessageParser *self, uint8* pbRegistrationReqMsg, uint32 cbRegistrationReqMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber) ParseRegistrationReqMsg;
				public new function HRESULT(IWMDRMMessageParser *self, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber, BSTR* pbstrAction) ParseLicenseRequestMsg;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptor : IUnknown
		{
			public const new Guid IID = .(0x69059850, 0x6e6f, 0x4bb2, 0x80, 0x6f, 0x71, 0x86, 0x3d, 0xdf, 0xc4, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(BSTR bstrFileName, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppLicenseResponseMsg, IWMStatusCallback* pCallback, void* pvContext) mut
			{
				return VT.Initialize(&this, bstrFileName, pbLicenseRequestMsg, cbLicenseRequestMsg, ppLicenseResponseMsg, pCallback, pvContext);
			}
			public HRESULT Seek(uint64 hnsTime) mut
			{
				return VT.Seek(&this, hnsTime);
			}
			public HRESULT Read(uint8* pbData, uint32* pcbData) mut
			{
				return VT.Read(&this, pbData, pcbData);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMTranscryptor *self, BSTR bstrFileName, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppLicenseResponseMsg, IWMStatusCallback* pCallback, void* pvContext) Initialize;
				public new function HRESULT(IWMDRMTranscryptor *self, uint64 hnsTime) Seek;
				public new function HRESULT(IWMDRMTranscryptor *self, uint8* pbData, uint32* pcbData) Read;
				public new function HRESULT(IWMDRMTranscryptor *self) Close;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptor2 : IWMDRMTranscryptor
		{
			public const new Guid IID = .(0xe0da439f, 0xd331, 0x496a, 0xbe, 0xce, 0x18, 0xe5, 0xba, 0xc5, 0xdd, 0x23);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SeekEx(uint64 cnsStartTime, uint64 cnsDuration, float flRate, BOOL fIncludeFileHeader) mut
			{
				return VT.SeekEx(&this, cnsStartTime, cnsDuration, flRate, fIncludeFileHeader);
			}
			public HRESULT ZeroAdjustTimestamps(BOOL fEnable) mut
			{
				return VT.ZeroAdjustTimestamps(&this, fEnable);
			}
			public HRESULT GetSeekStartTime(uint64* pcnsTime) mut
			{
				return VT.GetSeekStartTime(&this, pcnsTime);
			}
			public HRESULT GetDuration(uint64* pcnsDuration) mut
			{
				return VT.GetDuration(&this, pcnsDuration);
			}
			[CRepr]
			public struct VTable : IWMDRMTranscryptor.VTable
			{
				public new function HRESULT(IWMDRMTranscryptor2 *self, uint64 cnsStartTime, uint64 cnsDuration, float flRate, BOOL fIncludeFileHeader) SeekEx;
				public new function HRESULT(IWMDRMTranscryptor2 *self, BOOL fEnable) ZeroAdjustTimestamps;
				public new function HRESULT(IWMDRMTranscryptor2 *self, uint64* pcnsTime) GetSeekStartTime;
				public new function HRESULT(IWMDRMTranscryptor2 *self, uint64* pcnsDuration) GetDuration;
			}
		}
		[CRepr]
		public struct IWMDRMTranscryptionManager : IUnknown
		{
			public const new Guid IID = .(0xb1a887b2, 0xa4f0, 0x407a, 0xb0, 0x2e, 0xef, 0xbd, 0x23, 0xbb, 0xec, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTranscryptor(IWMDRMTranscryptor** ppTranscryptor) mut
			{
				return VT.CreateTranscryptor(&this, ppTranscryptor);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMDRMTranscryptionManager *self, IWMDRMTranscryptor** ppTranscryptor) CreateTranscryptor;
			}
		}
		[CRepr]
		public struct IWMWatermarkInfo : IUnknown
		{
			public const new Guid IID = .(0x6f497062, 0xf2e2, 0x4624, 0x8e, 0xa7, 0x9d, 0xd4, 0x0d, 0x81, 0xfc, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWatermarkEntryCount(WMT_WATERMARK_ENTRY_TYPE wmetType, uint32* pdwCount) mut
			{
				return VT.GetWatermarkEntryCount(&this, wmetType, pdwCount);
			}
			public HRESULT GetWatermarkEntry(WMT_WATERMARK_ENTRY_TYPE wmetType, uint32 dwEntryNum, WMT_WATERMARK_ENTRY* pEntry) mut
			{
				return VT.GetWatermarkEntry(&this, wmetType, dwEntryNum, pEntry);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMWatermarkInfo *self, WMT_WATERMARK_ENTRY_TYPE wmetType, uint32* pdwCount) GetWatermarkEntryCount;
				public new function HRESULT(IWMWatermarkInfo *self, WMT_WATERMARK_ENTRY_TYPE wmetType, uint32 dwEntryNum, WMT_WATERMARK_ENTRY* pEntry) GetWatermarkEntry;
			}
		}
		[CRepr]
		public struct IWMReaderAccelerator : IUnknown
		{
			public const new Guid IID = .(0xbddc4d08, 0x944d, 0x4d52, 0xa6, 0x12, 0x46, 0xc3, 0xfd, 0xa0, 0x7d, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodecInterface(uint32 dwOutputNum, Guid* riid, void** ppvCodecInterface) mut
			{
				return VT.GetCodecInterface(&this, dwOutputNum, riid, ppvCodecInterface);
			}
			public HRESULT Notify(uint32 dwOutputNum, WM_MEDIA_TYPE* pSubtype) mut
			{
				return VT.Notify(&this, dwOutputNum, pSubtype);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderAccelerator *self, uint32 dwOutputNum, Guid* riid, void** ppvCodecInterface) GetCodecInterface;
				public new function HRESULT(IWMReaderAccelerator *self, uint32 dwOutputNum, WM_MEDIA_TYPE* pSubtype) Notify;
			}
		}
		[CRepr]
		public struct IWMReaderTimecode : IUnknown
		{
			public const new Guid IID = .(0xf369e2f0, 0xe081, 0x4fe6, 0x84, 0x50, 0xb8, 0x10, 0xb2, 0xf4, 0x10, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTimecodeRangeCount(uint16 wStreamNum, uint16* pwRangeCount) mut
			{
				return VT.GetTimecodeRangeCount(&this, wStreamNum, pwRangeCount);
			}
			public HRESULT GetTimecodeRangeBounds(uint16 wStreamNum, uint16 wRangeNum, uint32* pStartTimecode, uint32* pEndTimecode) mut
			{
				return VT.GetTimecodeRangeBounds(&this, wStreamNum, wRangeNum, pStartTimecode, pEndTimecode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMReaderTimecode *self, uint16 wStreamNum, uint16* pwRangeCount) GetTimecodeRangeCount;
				public new function HRESULT(IWMReaderTimecode *self, uint16 wStreamNum, uint16 wRangeNum, uint32* pStartTimecode, uint32* pEndTimecode) GetTimecodeRangeBounds;
			}
		}
		[CRepr]
		public struct IWMAddressAccess : IUnknown
		{
			public const new Guid IID = .(0xbb3c6389, 0x1633, 0x4e92, 0xaf, 0x14, 0x9f, 0x31, 0x73, 0xba, 0x39, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAccessEntryCount(WM_AETYPE aeType, uint32* pcEntries) mut
			{
				return VT.GetAccessEntryCount(&this, aeType, pcEntries);
			}
			public HRESULT GetAccessEntry(WM_AETYPE aeType, uint32 dwEntryNum, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) mut
			{
				return VT.GetAccessEntry(&this, aeType, dwEntryNum, pAddrAccessEntry);
			}
			public HRESULT AddAccessEntry(WM_AETYPE aeType, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) mut
			{
				return VT.AddAccessEntry(&this, aeType, pAddrAccessEntry);
			}
			public HRESULT RemoveAccessEntry(WM_AETYPE aeType, uint32 dwEntryNum) mut
			{
				return VT.RemoveAccessEntry(&this, aeType, dwEntryNum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32* pcEntries) GetAccessEntryCount;
				public new function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32 dwEntryNum, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) GetAccessEntry;
				public new function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) AddAccessEntry;
				public new function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32 dwEntryNum) RemoveAccessEntry;
			}
		}
		[CRepr]
		public struct IWMAddressAccess2 : IWMAddressAccess
		{
			public const new Guid IID = .(0x65a83fc2, 0x3e98, 0x4d4d, 0x81, 0xb5, 0x2a, 0x74, 0x28, 0x86, 0xb3, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAccessEntryEx(WM_AETYPE aeType, uint32 dwEntryNum, BSTR* pbstrAddress, BSTR* pbstrMask) mut
			{
				return VT.GetAccessEntryEx(&this, aeType, dwEntryNum, pbstrAddress, pbstrMask);
			}
			public HRESULT AddAccessEntryEx(WM_AETYPE aeType, BSTR bstrAddress, BSTR bstrMask) mut
			{
				return VT.AddAccessEntryEx(&this, aeType, bstrAddress, bstrMask);
			}
			[CRepr]
			public struct VTable : IWMAddressAccess.VTable
			{
				public new function HRESULT(IWMAddressAccess2 *self, WM_AETYPE aeType, uint32 dwEntryNum, BSTR* pbstrAddress, BSTR* pbstrMask) GetAccessEntryEx;
				public new function HRESULT(IWMAddressAccess2 *self, WM_AETYPE aeType, BSTR bstrAddress, BSTR bstrMask) AddAccessEntryEx;
			}
		}
		[CRepr]
		public struct IWMImageInfo : IUnknown
		{
			public const new Guid IID = .(0x9f0aa3b6, 0x7267, 0x4d89, 0x88, 0xf2, 0xba, 0x91, 0x5a, 0xa5, 0xc4, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImageCount(uint32* pcImages) mut
			{
				return VT.GetImageCount(&this, pcImages);
			}
			public HRESULT GetImage(uint32 wIndex, uint16* pcchMIMEType, char16* pwszMIMEType, uint16* pcchDescription, char16* pwszDescription, uint16* pImageType, uint32* pcbImageData, uint8* pbImageData) mut
			{
				return VT.GetImage(&this, wIndex, pcchMIMEType, pwszMIMEType, pcchDescription, pwszDescription, pImageType, pcbImageData, pbImageData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMImageInfo *self, uint32* pcImages) GetImageCount;
				public new function HRESULT(IWMImageInfo *self, uint32 wIndex, uint16* pcchMIMEType, char16* pwszMIMEType, uint16* pcchDescription, char16* pwszDescription, uint16* pImageType, uint32* pcbImageData, uint8* pbImageData) GetImage;
			}
		}
		[CRepr]
		public struct IWMLicenseRevocationAgent : IUnknown
		{
			public const new Guid IID = .(0x6967f2c9, 0x4e26, 0x4b57, 0x88, 0x94, 0x79, 0x98, 0x80, 0xf7, 0xac, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLRBChallenge(uint8* pMachineID, uint32 dwMachineIDLength, uint8* pChallenge, uint32 dwChallengeLength, uint8* pChallengeOutput, uint32* pdwChallengeOutputLength) mut
			{
				return VT.GetLRBChallenge(&this, pMachineID, dwMachineIDLength, pChallenge, dwChallengeLength, pChallengeOutput, pdwChallengeOutputLength);
			}
			public HRESULT ProcessLRB(uint8* pSignedLRB, uint32 dwSignedLRBLength, uint8* pSignedACK, uint32* pdwSignedACKLength) mut
			{
				return VT.ProcessLRB(&this, pSignedLRB, dwSignedLRBLength, pSignedACK, pdwSignedACKLength);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMLicenseRevocationAgent *self, uint8* pMachineID, uint32 dwMachineIDLength, uint8* pChallenge, uint32 dwChallengeLength, uint8* pChallengeOutput, uint32* pdwChallengeOutputLength) GetLRBChallenge;
				public new function HRESULT(IWMLicenseRevocationAgent *self, uint8* pSignedLRB, uint32 dwSignedLRBLength, uint8* pSignedACK, uint32* pdwSignedACKLength) ProcessLRB;
			}
		}
		[CRepr]
		public struct IWMAuthorizer : IUnknown
		{
			public const new Guid IID = .(0xd9b67d36, 0xa9ad, 0x4eb4, 0xba, 0xef, 0xdb, 0x28, 0x4e, 0xf5, 0x50, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCertCount(uint32* pcCerts) mut
			{
				return VT.GetCertCount(&this, pcCerts);
			}
			public HRESULT GetCert(uint32 dwIndex, uint8** ppbCertData) mut
			{
				return VT.GetCert(&this, dwIndex, ppbCertData);
			}
			public HRESULT GetSharedData(uint32 dwCertIndex, uint8* pbSharedData, uint8* pbCert, uint8** ppbSharedData) mut
			{
				return VT.GetSharedData(&this, dwCertIndex, pbSharedData, pbCert, ppbSharedData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMAuthorizer *self, uint32* pcCerts) GetCertCount;
				public new function HRESULT(IWMAuthorizer *self, uint32 dwIndex, uint8** ppbCertData) GetCert;
				public new function HRESULT(IWMAuthorizer *self, uint32 dwCertIndex, uint8* pbSharedData, uint8* pbCert, uint8** ppbSharedData) GetSharedData;
			}
		}
		[CRepr]
		public struct IWMSecureChannel : IWMAuthorizer
		{
			public const new Guid IID = .(0x2720598a, 0xd0f2, 0x4189, 0xbd, 0x10, 0x91, 0xc4, 0x6e, 0xf0, 0x93, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WMSC_AddCertificate(IWMAuthorizer* pCert) mut
			{
				return VT.WMSC_AddCertificate(&this, pCert);
			}
			public HRESULT WMSC_AddSignature(uint8* pbCertSig, uint32 cbCertSig) mut
			{
				return VT.WMSC_AddSignature(&this, pbCertSig, cbCertSig);
			}
			public HRESULT WMSC_Connect(IWMSecureChannel* pOtherSide) mut
			{
				return VT.WMSC_Connect(&this, pOtherSide);
			}
			public HRESULT WMSC_IsConnected(BOOL* pfIsConnected) mut
			{
				return VT.WMSC_IsConnected(&this, pfIsConnected);
			}
			public HRESULT WMSC_Disconnect() mut
			{
				return VT.WMSC_Disconnect(&this);
			}
			public HRESULT WMSC_GetValidCertificate(uint8** ppbCertificate, uint32* pdwSignature) mut
			{
				return VT.WMSC_GetValidCertificate(&this, ppbCertificate, pdwSignature);
			}
			public HRESULT WMSC_Encrypt(uint8* pbData, uint32 cbData) mut
			{
				return VT.WMSC_Encrypt(&this, pbData, cbData);
			}
			public HRESULT WMSC_Decrypt(uint8* pbData, uint32 cbData) mut
			{
				return VT.WMSC_Decrypt(&this, pbData, cbData);
			}
			public HRESULT WMSC_Lock() mut
			{
				return VT.WMSC_Lock(&this);
			}
			public HRESULT WMSC_Unlock() mut
			{
				return VT.WMSC_Unlock(&this);
			}
			public HRESULT WMSC_SetSharedData(uint32 dwCertIndex, uint8* pbSharedData) mut
			{
				return VT.WMSC_SetSharedData(&this, dwCertIndex, pbSharedData);
			}
			[CRepr]
			public struct VTable : IWMAuthorizer.VTable
			{
				public new function HRESULT(IWMSecureChannel *self, IWMAuthorizer* pCert) WMSC_AddCertificate;
				public new function HRESULT(IWMSecureChannel *self, uint8* pbCertSig, uint32 cbCertSig) WMSC_AddSignature;
				public new function HRESULT(IWMSecureChannel *self, IWMSecureChannel* pOtherSide) WMSC_Connect;
				public new function HRESULT(IWMSecureChannel *self, BOOL* pfIsConnected) WMSC_IsConnected;
				public new function HRESULT(IWMSecureChannel *self) WMSC_Disconnect;
				public new function HRESULT(IWMSecureChannel *self, uint8** ppbCertificate, uint32* pdwSignature) WMSC_GetValidCertificate;
				public new function HRESULT(IWMSecureChannel *self, uint8* pbData, uint32 cbData) WMSC_Encrypt;
				public new function HRESULT(IWMSecureChannel *self, uint8* pbData, uint32 cbData) WMSC_Decrypt;
				public new function HRESULT(IWMSecureChannel *self) WMSC_Lock;
				public new function HRESULT(IWMSecureChannel *self) WMSC_Unlock;
				public new function HRESULT(IWMSecureChannel *self, uint32 dwCertIndex, uint8* pbSharedData) WMSC_SetSharedData;
			}
		}
		[CRepr]
		public struct IWMGetSecureChannel : IUnknown
		{
			public const new Guid IID = .(0x94bc0598, 0xc3d2, 0x11d3, 0xbe, 0xdf, 0x00, 0xc0, 0x4f, 0x61, 0x29, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPeerSecureChannelInterface(IWMSecureChannel** ppPeer) mut
			{
				return VT.GetPeerSecureChannelInterface(&this, ppPeer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMGetSecureChannel *self, IWMSecureChannel** ppPeer) GetPeerSecureChannelInterface;
			}
		}
		[CRepr]
		public struct INSNetSourceCreator : IUnknown
		{
			public const new Guid IID = .(0x0c0e4080, 0x9081, 0x11d2, 0xbe, 0xec, 0x00, 0x60, 0x08, 0x2f, 0x20, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			public HRESULT CreateNetSource(PWSTR pszStreamName, IUnknown* pMonitor, uint8* pData, IUnknown* pUserContext, IUnknown* pCallback, uint64 qwContext) mut
			{
				return VT.CreateNetSource(&this, pszStreamName, pMonitor, pData, pUserContext, pCallback, qwContext);
			}
			public HRESULT GetNetSourceProperties(PWSTR pszStreamName, IUnknown** ppPropertiesNode) mut
			{
				return VT.GetNetSourceProperties(&this, pszStreamName, ppPropertiesNode);
			}
			public HRESULT GetNetSourceSharedNamespace(IUnknown** ppSharedNamespace) mut
			{
				return VT.GetNetSourceSharedNamespace(&this, ppSharedNamespace);
			}
			public HRESULT GetNetSourceAdminInterface(PWSTR pszStreamName, VARIANT* pVal) mut
			{
				return VT.GetNetSourceAdminInterface(&this, pszStreamName, pVal);
			}
			public HRESULT GetNumProtocolsSupported(uint32* pcProtocols) mut
			{
				return VT.GetNumProtocolsSupported(&this, pcProtocols);
			}
			public HRESULT GetProtocolName(uint32 dwProtocolNum, PWSTR pwszProtocolName, uint16* pcchProtocolName) mut
			{
				return VT.GetProtocolName(&this, dwProtocolNum, pwszProtocolName, pcchProtocolName);
			}
			public HRESULT Shutdown() mut
			{
				return VT.Shutdown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INSNetSourceCreator *self) Initialize;
				public new function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, IUnknown* pMonitor, uint8* pData, IUnknown* pUserContext, IUnknown* pCallback, uint64 qwContext) CreateNetSource;
				public new function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, IUnknown** ppPropertiesNode) GetNetSourceProperties;
				public new function HRESULT(INSNetSourceCreator *self, IUnknown** ppSharedNamespace) GetNetSourceSharedNamespace;
				public new function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, VARIANT* pVal) GetNetSourceAdminInterface;
				public new function HRESULT(INSNetSourceCreator *self, uint32* pcProtocols) GetNumProtocolsSupported;
				public new function HRESULT(INSNetSourceCreator *self, uint32 dwProtocolNum, PWSTR pwszProtocolName, uint16* pcchProtocolName) GetProtocolName;
				public new function HRESULT(INSNetSourceCreator *self) Shutdown;
			}
		}
		[CRepr]
		public struct IWMPlayerTimestampHook : IUnknown
		{
			public const new Guid IID = .(0x28580dda, 0xd98e, 0x48d0, 0xb7, 0xae, 0x69, 0xe4, 0x73, 0xa0, 0x28, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MapTimestamp(int64 rtIn, int64* prtOut) mut
			{
				return VT.MapTimestamp(&this, rtIn, prtOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPlayerTimestampHook *self, int64 rtIn, int64* prtOut) MapTimestamp;
			}
		}
		[CRepr]
		public struct IWMCodecAMVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0xd98ee251, 0x34e0, 0x4a2d, 0x93, 0x12, 0x9b, 0x4c, 0x78, 0x8d, 0x9f, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAcceleratorInterface(IAMVideoAccelerator* pIAMVA) mut
			{
				return VT.SetAcceleratorInterface(&this, pIAMVA);
			}
			public HRESULT NegotiateConnection(AM_MEDIA_TYPE* pMediaType) mut
			{
				return VT.NegotiateConnection(&this, pMediaType);
			}
			public HRESULT SetPlayerNotify(IWMPlayerTimestampHook* pHook) mut
			{
				return VT.SetPlayerNotify(&this, pHook);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMCodecAMVideoAccelerator *self, IAMVideoAccelerator* pIAMVA) SetAcceleratorInterface;
				public new function HRESULT(IWMCodecAMVideoAccelerator *self, AM_MEDIA_TYPE* pMediaType) NegotiateConnection;
				public new function HRESULT(IWMCodecAMVideoAccelerator *self, IWMPlayerTimestampHook* pHook) SetPlayerNotify;
			}
		}
		[CRepr]
		public struct IWMCodecVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0x990641b0, 0x739f, 0x4e94, 0xa8, 0x08, 0x98, 0x88, 0xda, 0x8f, 0x75, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NegotiateConnection(IAMVideoAccelerator* pIAMVA, AM_MEDIA_TYPE* pMediaType) mut
			{
				return VT.NegotiateConnection(&this, pIAMVA, pMediaType);
			}
			public HRESULT SetPlayerNotify(IWMPlayerTimestampHook* pHook) mut
			{
				return VT.SetPlayerNotify(&this, pHook);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMCodecVideoAccelerator *self, IAMVideoAccelerator* pIAMVA, AM_MEDIA_TYPE* pMediaType) NegotiateConnection;
				public new function HRESULT(IWMCodecVideoAccelerator *self, IWMPlayerTimestampHook* pHook) SetPlayerNotify;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource : IUnknown
		{
			public const new Guid IID = .(0x8bb23e5f, 0xd127, 0x4afb, 0x8d, 0x02, 0xae, 0x5b, 0x66, 0xd5, 0x4c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IUnknown* pSharedNamespace, IUnknown* pNamespaceNode, INSNetSourceCreator* pNetSourceCreator, BOOL fEmbeddedInServer) mut
			{
				return VT.Initialize(&this, pSharedNamespace, pNamespaceNode, pNetSourceCreator, fEmbeddedInServer);
			}
			public HRESULT GetNetSourceCreator(INSNetSourceCreator** ppNetSourceCreator) mut
			{
				return VT.GetNetSourceCreator(&this, ppNetSourceCreator);
			}
			public HRESULT SetCredentials(BSTR bstrRealm, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) mut
			{
				return VT.SetCredentials(&this, bstrRealm, bstrName, bstrPassword, fPersist, fConfirmedGood);
			}
			public HRESULT GetCredentials(BSTR bstrRealm, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) mut
			{
				return VT.GetCredentials(&this, bstrRealm, pbstrName, pbstrPassword, pfConfirmedGood);
			}
			public HRESULT DeleteCredentials(BSTR bstrRealm) mut
			{
				return VT.DeleteCredentials(&this, bstrRealm);
			}
			public HRESULT GetCredentialFlags(uint32* lpdwFlags) mut
			{
				return VT.GetCredentialFlags(&this, lpdwFlags);
			}
			public HRESULT SetCredentialFlags(uint32 dwFlags) mut
			{
				return VT.SetCredentialFlags(&this, dwFlags);
			}
			public HRESULT FindProxyForURL(BSTR bstrProtocol, BSTR bstrHost, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) mut
			{
				return VT.FindProxyForURL(&this, bstrProtocol, bstrHost, pfProxyEnabled, pbstrProxyServer, pdwProxyPort, pdwProxyContext);
			}
			public HRESULT RegisterProxyFailure(HRESULT hrParam, uint32 dwProxyContext) mut
			{
				return VT.RegisterProxyFailure(&this, hrParam, dwProxyContext);
			}
			public HRESULT ShutdownProxyContext(uint32 dwProxyContext) mut
			{
				return VT.ShutdownProxyContext(&this, dwProxyContext);
			}
			public HRESULT IsUsingIE(uint32 dwProxyContext, BOOL* pfIsUsingIE) mut
			{
				return VT.IsUsingIE(&this, dwProxyContext, pfIsUsingIE);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMSInternalAdminNetSource *self, IUnknown* pSharedNamespace, IUnknown* pNamespaceNode, INSNetSourceCreator* pNetSourceCreator, BOOL fEmbeddedInServer) Initialize;
				public new function HRESULT(IWMSInternalAdminNetSource *self, INSNetSourceCreator** ppNetSourceCreator) GetNetSourceCreator;
				public new function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentials;
				public new function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentials;
				public new function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm) DeleteCredentials;
				public new function HRESULT(IWMSInternalAdminNetSource *self, uint32* lpdwFlags) GetCredentialFlags;
				public new function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwFlags) SetCredentialFlags;
				public new function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrProtocol, BSTR bstrHost, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) FindProxyForURL;
				public new function HRESULT(IWMSInternalAdminNetSource *self, HRESULT hrParam, uint32 dwProxyContext) RegisterProxyFailure;
				public new function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwProxyContext) ShutdownProxyContext;
				public new function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwProxyContext, BOOL* pfIsUsingIE) IsUsingIE;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource2 : IUnknown
		{
			public const new Guid IID = .(0xe74d58c3, 0xcf77, 0x4b51, 0xaf, 0x17, 0x74, 0x46, 0x87, 0xc4, 0x3e, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) mut
			{
				return VT.SetCredentialsEx(&this, bstrRealm, bstrUrl, fProxy, bstrName, bstrPassword, fPersist, fConfirmedGood);
			}
			public HRESULT GetCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) mut
			{
				return VT.GetCredentialsEx(&this, bstrRealm, bstrUrl, fProxy, pdwUrlPolicy, pbstrName, pbstrPassword, pfConfirmedGood);
			}
			public HRESULT DeleteCredentialsEx(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy) mut
			{
				return VT.DeleteCredentialsEx(&this, bstrRealm, bstrUrl, fProxy);
			}
			public HRESULT FindProxyForURLEx(BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) mut
			{
				return VT.FindProxyForURLEx(&this, bstrProtocol, bstrHost, bstrUrl, pfProxyEnabled, pbstrProxyServer, pdwProxyPort, pdwProxyContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentialsEx;
				public new function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentialsEx;
				public new function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy) DeleteCredentialsEx;
				public new function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) FindProxyForURLEx;
			}
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource3 : IWMSInternalAdminNetSource2
		{
			public const new Guid IID = .(0x6b63d08e, 0x4590, 0x44af, 0x9e, 0xb3, 0x57, 0xff, 0x1e, 0x73, 0xbf, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNetSourceCreator2(IUnknown** ppNetSourceCreator) mut
			{
				return VT.GetNetSourceCreator2(&this, ppNetSourceCreator);
			}
			public HRESULT FindProxyForURLEx2(BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint64* pqwProxyContext) mut
			{
				return VT.FindProxyForURLEx2(&this, bstrProtocol, bstrHost, bstrUrl, pfProxyEnabled, pbstrProxyServer, pdwProxyPort, pqwProxyContext);
			}
			public HRESULT RegisterProxyFailure2(HRESULT hrParam, uint64 qwProxyContext) mut
			{
				return VT.RegisterProxyFailure2(&this, hrParam, qwProxyContext);
			}
			public HRESULT ShutdownProxyContext2(uint64 qwProxyContext) mut
			{
				return VT.ShutdownProxyContext2(&this, qwProxyContext);
			}
			public HRESULT IsUsingIE2(uint64 qwProxyContext, BOOL* pfIsUsingIE) mut
			{
				return VT.IsUsingIE2(&this, qwProxyContext, pfIsUsingIE);
			}
			public HRESULT SetCredentialsEx2(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood, BOOL fClearTextAuthentication) mut
			{
				return VT.SetCredentialsEx2(&this, bstrRealm, bstrUrl, fProxy, bstrName, bstrPassword, fPersist, fConfirmedGood, fClearTextAuthentication);
			}
			public HRESULT GetCredentialsEx2(BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BOOL fClearTextAuthentication, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) mut
			{
				return VT.GetCredentialsEx2(&this, bstrRealm, bstrUrl, fProxy, fClearTextAuthentication, pdwUrlPolicy, pbstrName, pbstrPassword, pfConfirmedGood);
			}
			[CRepr]
			public struct VTable : IWMSInternalAdminNetSource2.VTable
			{
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, IUnknown** ppNetSourceCreator) GetNetSourceCreator2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint64* pqwProxyContext) FindProxyForURLEx2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, HRESULT hrParam, uint64 qwProxyContext) RegisterProxyFailure2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, uint64 qwProxyContext) ShutdownProxyContext2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, uint64 qwProxyContext, BOOL* pfIsUsingIE) IsUsingIE2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood, BOOL fClearTextAuthentication) SetCredentialsEx2;
				public new function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BOOL fClearTextAuthentication, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentialsEx2;
			}
		}
		
		// --- Functions ---
		
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMIsContentProtected(PWSTR pwszFileName, BOOL* pfIsProtected);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriter(IUnknown* pUnkCert, IWMWriter** ppWriter);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateReader(IUnknown* pUnkCert, uint32 dwRights, IWMReader** ppReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateSyncReader(IUnknown* pUnkCert, uint32 dwRights, IWMSyncReader** ppSyncReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateEditor(IWMMetadataEditor** ppEditor);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateIndexer(IWMIndexer** ppIndexer);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateBackupRestorer(IUnknown* pCallback, IWMLicenseBackup** ppBackup);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateProfileManager(IWMProfileManager** ppProfileManager);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterFileSink(IWMWriterFileSink** ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterNetworkSink(IWMWriterNetworkSink** ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterPushSink(IWMWriterPushSink** ppSink);
		
	}
}
