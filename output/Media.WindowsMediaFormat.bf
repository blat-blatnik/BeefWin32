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
			AM_CONFIGASFWRITER_PARAM_AUTOINDEX = 1,
			AM_CONFIGASFWRITER_PARAM_MULTIPASS = 2,
			AM_CONFIGASFWRITER_PARAM_DONTCOMPRESS = 3,
		}
		[AllowDuplicates]
		public enum WEBSTREAM_SAMPLE_TYPE : int32
		{
			WEBSTREAM_SAMPLE_TYPE_FILE = 1,
			WEBSTREAM_SAMPLE_TYPE_RENDER = 2,
		}
		[AllowDuplicates]
		public enum WM_SF_TYPE : int32
		{
			WM_SF_CLEANPOINT = 1,
			WM_SF_DISCONTINUITY = 2,
			WM_SF_DATALOSS = 4,
		}
		[AllowDuplicates]
		public enum WM_SFEX_TYPE : int32
		{
			WM_SFEX_NOTASYNCPOINT = 2,
			WM_SFEX_DATALOSS = 4,
		}
		[AllowDuplicates]
		public enum WMT_STATUS : int32
		{
			WMT_ERROR = 0,
			WMT_OPENED = 1,
			WMT_BUFFERING_START = 2,
			WMT_BUFFERING_STOP = 3,
			WMT_EOF = 4,
			WMT_END_OF_FILE = 4,
			WMT_END_OF_SEGMENT = 5,
			WMT_END_OF_STREAMING = 6,
			WMT_LOCATING = 7,
			WMT_CONNECTING = 8,
			WMT_NO_RIGHTS = 9,
			WMT_MISSING_CODEC = 10,
			WMT_STARTED = 11,
			WMT_STOPPED = 12,
			WMT_CLOSED = 13,
			WMT_STRIDING = 14,
			WMT_TIMER = 15,
			WMT_INDEX_PROGRESS = 16,
			WMT_SAVEAS_START = 17,
			WMT_SAVEAS_STOP = 18,
			WMT_NEW_SOURCEFLAGS = 19,
			WMT_NEW_METADATA = 20,
			WMT_BACKUPRESTORE_BEGIN = 21,
			WMT_SOURCE_SWITCH = 22,
			WMT_ACQUIRE_LICENSE = 23,
			WMT_INDIVIDUALIZE = 24,
			WMT_NEEDS_INDIVIDUALIZATION = 25,
			WMT_NO_RIGHTS_EX = 26,
			WMT_BACKUPRESTORE_END = 27,
			WMT_BACKUPRESTORE_CONNECTING = 28,
			WMT_BACKUPRESTORE_DISCONNECTING = 29,
			WMT_ERROR_WITHURL = 30,
			WMT_RESTRICTED_LICENSE = 31,
			WMT_CLIENT_CONNECT = 32,
			WMT_CLIENT_DISCONNECT = 33,
			WMT_NATIVE_OUTPUT_PROPS_CHANGED = 34,
			WMT_RECONNECT_START = 35,
			WMT_RECONNECT_END = 36,
			WMT_CLIENT_CONNECT_EX = 37,
			WMT_CLIENT_DISCONNECT_EX = 38,
			WMT_SET_FEC_SPAN = 39,
			WMT_PREROLL_READY = 40,
			WMT_PREROLL_COMPLETE = 41,
			WMT_CLIENT_PROPERTIES = 42,
			WMT_LICENSEURL_SIGNATURE_STATE = 43,
			WMT_INIT_PLAYLIST_BURN = 44,
			WMT_TRANSCRYPTOR_INIT = 45,
			WMT_TRANSCRYPTOR_SEEKED = 46,
			WMT_TRANSCRYPTOR_READ = 47,
			WMT_TRANSCRYPTOR_CLOSED = 48,
			WMT_PROXIMITY_RESULT = 49,
			WMT_PROXIMITY_COMPLETED = 50,
			WMT_CONTENT_ENABLER = 51,
		}
		[AllowDuplicates]
		public enum WMT_STREAM_SELECTION : int32
		{
			WMT_OFF = 0,
			WMT_CLEANPOINT_ONLY = 1,
			WMT_ON = 2,
		}
		[AllowDuplicates]
		public enum WMT_IMAGE_TYPE : int32
		{
			WMT_IT_NONE = 0,
			WMT_IT_BITMAP = 1,
			WMT_IT_JPEG = 2,
			WMT_IT_GIF = 3,
		}
		[AllowDuplicates]
		public enum WMT_ATTR_DATATYPE : int32
		{
			WMT_TYPE_DWORD = 0,
			WMT_TYPE_STRING = 1,
			WMT_TYPE_BINARY = 2,
			WMT_TYPE_BOOL = 3,
			WMT_TYPE_QWORD = 4,
			WMT_TYPE_WORD = 5,
			WMT_TYPE_GUID = 6,
		}
		[AllowDuplicates]
		public enum WMT_ATTR_IMAGETYPE : int32
		{
			WMT_IMAGETYPE_BITMAP = 1,
			WMT_IMAGETYPE_JPEG = 2,
			WMT_IMAGETYPE_GIF = 3,
		}
		[AllowDuplicates]
		public enum WMT_VERSION : int32
		{
			WMT_VER_4_0 = 262144,
			WMT_VER_7_0 = 458752,
			WMT_VER_8_0 = 524288,
			WMT_VER_9_0 = 589824,
		}
		[AllowDuplicates]
		public enum WMT_STORAGE_FORMAT : int32
		{
			WMT_Storage_Format_MP3 = 0,
			WMT_Storage_Format_V1 = 1,
		}
		[AllowDuplicates]
		public enum WMT_DRMLA_TRUST : int32
		{
			WMT_DRMLA_UNTRUSTED = 0,
			WMT_DRMLA_TRUSTED = 1,
			WMT_DRMLA_TAMPERED = 2,
		}
		[AllowDuplicates]
		public enum WMT_TRANSPORT_TYPE : int32
		{
			WMT_Transport_Type_Unreliable = 0,
			WMT_Transport_Type_Reliable = 1,
		}
		[AllowDuplicates]
		public enum WMT_NET_PROTOCOL : int32
		{
			WMT_PROTOCOL_HTTP = 0,
		}
		[AllowDuplicates]
		public enum WMT_PLAY_MODE : int32
		{
			WMT_PLAY_MODE_AUTOSELECT = 0,
			WMT_PLAY_MODE_LOCAL = 1,
			WMT_PLAY_MODE_DOWNLOAD = 2,
			WMT_PLAY_MODE_STREAMING = 3,
		}
		[AllowDuplicates]
		public enum WMT_PROXY_SETTINGS : int32
		{
			WMT_PROXY_SETTING_NONE = 0,
			WMT_PROXY_SETTING_MANUAL = 1,
			WMT_PROXY_SETTING_AUTO = 2,
			WMT_PROXY_SETTING_BROWSER = 3,
			WMT_PROXY_SETTING_MAX = 4,
		}
		[AllowDuplicates]
		public enum WMT_CODEC_INFO_TYPE : int32
		{
			WMT_CODECINFO_AUDIO = 0,
			WMT_CODECINFO_VIDEO = 1,
			WMT_CODECINFO_UNKNOWN = -1,
		}
		[AllowDuplicates]
		public enum WM_DM_INTERLACED_TYPE : int32
		{
			WM_DM_NOTINTERLACED = 0,
			WM_DM_DEINTERLACE_NORMAL = 1,
			WM_DM_DEINTERLACE_HALFSIZE = 2,
			WM_DM_DEINTERLACE_HALFSIZEDOUBLERATE = 3,
			WM_DM_DEINTERLACE_INVERSETELECINE = 4,
			WM_DM_DEINTERLACE_VERTICALHALFSIZEDOUBLERATE = 5,
		}
		[AllowDuplicates]
		public enum WM_DM_IT_FIRST_FRAME_COHERENCY : int32
		{
			WM_DM_IT_DISABLE_COHERENT_MODE = 0,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_AA_TOP = 1,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BB_TOP = 2,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BC_TOP = 3,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_CD_TOP = 4,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_DD_TOP = 5,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_AA_BOTTOM = 6,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BB_BOTTOM = 7,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_BC_BOTTOM = 8,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_CD_BOTTOM = 9,
			WM_DM_IT_FIRST_FRAME_IN_CLIP_IS_DD_BOTTOM = 10,
		}
		[AllowDuplicates]
		public enum WMT_OFFSET_FORMAT : int32
		{
			WMT_OFFSET_FORMAT_100NS = 0,
			WMT_OFFSET_FORMAT_FRAME_NUMBERS = 1,
			WMT_OFFSET_FORMAT_PLAYLIST_OFFSET = 2,
			WMT_OFFSET_FORMAT_TIMECODE = 3,
			WMT_OFFSET_FORMAT_100NS_APPROXIMATE = 4,
		}
		[AllowDuplicates]
		public enum WMT_INDEXER_TYPE : int32
		{
			WMT_IT_PRESENTATION_TIME = 0,
			WMT_IT_FRAME_NUMBERS = 1,
			WMT_IT_TIMECODE = 2,
		}
		[AllowDuplicates]
		public enum WMT_INDEX_TYPE : int32
		{
			WMT_IT_NEAREST_DATA_UNIT = 1,
			WMT_IT_NEAREST_OBJECT = 2,
			WMT_IT_NEAREST_CLEAN_POINT = 3,
		}
		[AllowDuplicates]
		public enum WMT_FILESINK_MODE : int32
		{
			WMT_FM_SINGLE_BUFFERS = 1,
			WMT_FM_FILESINK_DATA_UNITS = 2,
			WMT_FM_FILESINK_UNBUFFERED = 4,
		}
		[AllowDuplicates]
		public enum WMT_MUSICSPEECH_CLASS_MODE : int32
		{
			WMT_MS_CLASS_MUSIC = 0,
			WMT_MS_CLASS_SPEECH = 1,
			WMT_MS_CLASS_MIXED = 2,
		}
		[AllowDuplicates]
		public enum WMT_WATERMARK_ENTRY_TYPE : int32
		{
			WMT_WMETYPE_AUDIO = 1,
			WMT_WMETYPE_VIDEO = 2,
		}
		[AllowDuplicates]
		public enum WM_PLAYBACK_DRC_LEVEL : int32
		{
			WM_PLAYBACK_DRC_HIGH = 0,
			WM_PLAYBACK_DRC_MEDIUM = 1,
			WM_PLAYBACK_DRC_LOW = 2,
		}
		[AllowDuplicates]
		public enum WMT_TIMECODE_FRAMERATE : int32
		{
			WMT_TIMECODE_FRAMERATE_30 = 0,
			WMT_TIMECODE_FRAMERATE_30DROP = 1,
			WMT_TIMECODE_FRAMERATE_25 = 2,
			WMT_TIMECODE_FRAMERATE_24 = 3,
		}
		[AllowDuplicates]
		public enum WMT_CREDENTIAL_FLAGS : int32
		{
			WMT_CREDENTIAL_SAVE = 1,
			WMT_CREDENTIAL_DONT_CACHE = 2,
			WMT_CREDENTIAL_CLEAR_TEXT = 4,
			WMT_CREDENTIAL_PROXY = 8,
			WMT_CREDENTIAL_ENCRYPT = 16,
		}
		[AllowDuplicates]
		public enum WM_AETYPE : int32
		{
			WM_AETYPE_INCLUDE = 105,
			WM_AETYPE_EXCLUDE = 101,
		}
		[AllowDuplicates]
		public enum WMT_RIGHTS : int32
		{
			WMT_RIGHT_PLAYBACK = 1,
			WMT_RIGHT_COPY_TO_NON_SDMI_DEVICE = 2,
			WMT_RIGHT_COPY_TO_CD = 8,
			WMT_RIGHT_COPY_TO_SDMI_DEVICE = 16,
			WMT_RIGHT_ONE_TIME = 32,
			WMT_RIGHT_SAVE_STREAM_PROTECTED = 64,
			WMT_RIGHT_COPY = 128,
			WMT_RIGHT_COLLABORATIVE_PLAY = 256,
			WMT_RIGHT_SDMI_TRIGGER = 65536,
			WMT_RIGHT_SDMI_NOMORECOPIES = 131072,
		}
		[AllowDuplicates]
		public enum NETSOURCE_URLCREDPOLICY_SETTINGS : int32
		{
			NETSOURCE_URLCREDPOLICY_SETTING_SILENTLOGONOK = 0,
			NETSOURCE_URLCREDPOLICY_SETTING_MUSTPROMPTUSER = 1,
			NETSOURCE_URLCREDPOLICY_SETTING_ANONYMOUSONLY = 2,
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
			public INSSBuffer pBuffer;
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
			public IUnknown pUnk;
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
		
		public struct IAMWMBufferPass {}
		public struct IAMWMBufferPassCallback {}
		public struct INSSBuffer {}
		public struct INSSBuffer2 {}
		public struct INSSBuffer3 {}
		public struct INSSBuffer4 {}
		public struct IWMSBufferAllocator {}
		public struct IWMMediaProps {}
		public struct IWMVideoMediaProps {}
		public struct IWMWriter {}
		public struct IWMDRMWriter {}
		public struct IWMDRMWriter2 {}
		public struct IWMDRMWriter3 {}
		public struct IWMInputMediaProps {}
		public struct IWMPropertyVault {}
		public struct IWMIStreamProps {}
		public struct IWMReader {}
		public struct IWMSyncReader {}
		public struct IWMSyncReader2 {}
		public struct IWMOutputMediaProps {}
		public struct IWMStatusCallback {}
		public struct IWMReaderCallback {}
		public struct IWMCredentialCallback {}
		public struct IWMMetadataEditor {}
		public struct IWMMetadataEditor2 {}
		public struct IWMDRMEditor {}
		public struct IWMHeaderInfo {}
		public struct IWMHeaderInfo2 {}
		public struct IWMHeaderInfo3 {}
		public struct IWMProfileManager {}
		public struct IWMProfileManager2 {}
		public struct IWMProfileManagerLanguage {}
		public struct IWMProfile {}
		public struct IWMProfile2 {}
		public struct IWMProfile3 {}
		public struct IWMStreamConfig {}
		public struct IWMStreamConfig2 {}
		public struct IWMStreamConfig3 {}
		public struct IWMPacketSize {}
		public struct IWMPacketSize2 {}
		public struct IWMStreamList {}
		public struct IWMMutualExclusion {}
		public struct IWMMutualExclusion2 {}
		public struct IWMBandwidthSharing {}
		public struct IWMStreamPrioritization {}
		public struct IWMWriterAdvanced {}
		public struct IWMWriterAdvanced2 {}
		public struct IWMWriterAdvanced3 {}
		public struct IWMWriterPreprocess {}
		public struct IWMWriterPostViewCallback {}
		public struct IWMWriterPostView {}
		public struct IWMWriterSink {}
		public struct IWMRegisterCallback {}
		public struct IWMWriterFileSink {}
		public struct IWMWriterFileSink2 {}
		public struct IWMWriterFileSink3 {}
		public struct IWMWriterNetworkSink {}
		public struct IWMClientConnections {}
		public struct IWMClientConnections2 {}
		public struct IWMReaderAdvanced {}
		public struct IWMReaderAdvanced2 {}
		public struct IWMReaderAdvanced3 {}
		public struct IWMReaderAdvanced4 {}
		public struct IWMReaderAdvanced5 {}
		public struct IWMReaderAdvanced6 {}
		public struct IWMPlayerHook {}
		public struct IWMReaderAllocatorEx {}
		public struct IWMReaderTypeNegotiation {}
		public struct IWMReaderCallbackAdvanced {}
		public struct IWMDRMReader {}
		public struct IWMDRMReader2 {}
		public struct IWMDRMReader3 {}
		public struct IWMReaderPlaylistBurn {}
		public struct IWMReaderNetworkConfig {}
		public struct IWMReaderNetworkConfig2 {}
		public struct IWMReaderStreamClock {}
		public struct IWMIndexer {}
		public struct IWMIndexer2 {}
		public struct IWMLicenseBackup {}
		public struct IWMLicenseRestore {}
		public struct IWMBackupRestoreProps {}
		public struct IWMCodecInfo {}
		public struct IWMCodecInfo2 {}
		public struct IWMCodecInfo3 {}
		public struct IWMLanguageList {}
		public struct IWMWriterPushSink {}
		public struct IWMDeviceRegistration {}
		public struct IWMRegisteredDevice {}
		public struct IWMProximityDetection {}
		public struct IWMDRMMessageParser {}
		public struct IWMDRMTranscryptor {}
		public struct IWMDRMTranscryptor2 {}
		public struct IWMDRMTranscryptionManager {}
		public struct IWMWatermarkInfo {}
		public struct IWMReaderAccelerator {}
		public struct IWMReaderTimecode {}
		public struct IWMAddressAccess {}
		public struct IWMAddressAccess2 {}
		public struct IWMImageInfo {}
		public struct IWMLicenseRevocationAgent {}
		public struct IWMAuthorizer {}
		public struct IWMSecureChannel {}
		public struct IWMGetSecureChannel {}
		public struct INSNetSourceCreator {}
		public struct IWMPlayerTimestampHook {}
		public struct IWMCodecAMVideoAccelerator {}
		public struct IWMCodecVideoAccelerator {}
		public struct IWMSInternalAdminNetSource {}
		public struct IWMSInternalAdminNetSource2 {}
		public struct IWMSInternalAdminNetSource3 {}
		
		// --- Functions ---
		
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMIsContentProtected(PWSTR pwszFileName, BOOL* pfIsProtected);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriter(IUnknown pUnkCert, IWMWriter* ppWriter);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateReader(IUnknown pUnkCert, uint32 dwRights, IWMReader* ppReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateSyncReader(IUnknown pUnkCert, uint32 dwRights, IWMSyncReader* ppSyncReader);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateEditor(IWMMetadataEditor* ppEditor);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateIndexer(IWMIndexer* ppIndexer);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateBackupRestorer(IUnknown pCallback, IWMLicenseBackup* ppBackup);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateProfileManager(IWMProfileManager* ppProfileManager);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterFileSink(IWMWriterFileSink* ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterNetworkSink(IWMWriterNetworkSink* ppSink);
		[Import("wmvcore.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WMCreateWriterPushSink(IWMWriterPushSink* ppSink);
		
	}
}
