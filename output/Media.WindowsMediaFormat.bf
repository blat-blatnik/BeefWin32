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
			
			public function HRESULT(IAMWMBufferPass *self, IAMWMBufferPassCallback* pCallback) SetNotify;
		}
		[CRepr]
		public struct IAMWMBufferPassCallback : IUnknown
		{
			public const new Guid IID = .(0xb25b8372, 0xd2d2, 0x44b2, 0x86, 0x53, 0x1b, 0x8d, 0xae, 0x33, 0x24, 0x89);
			
			public function HRESULT(IAMWMBufferPassCallback *self, INSSBuffer3* pNSSBuffer3, IPin* pPin, int64* prtStart, int64* prtEnd) Notify;
		}
		[CRepr]
		public struct INSSBuffer : IUnknown
		{
			public const new Guid IID = .(0xe1cd3524, 0x03d7, 0x11d2, 0x9e, 0xed, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public function HRESULT(INSSBuffer *self, uint32* pdwLength) GetLength;
			public function HRESULT(INSSBuffer *self, uint32 dwLength) SetLength;
			public function HRESULT(INSSBuffer *self, uint32* pdwLength) GetMaxLength;
			public function HRESULT(INSSBuffer *self, uint8** ppdwBuffer) GetBuffer;
			public function HRESULT(INSSBuffer *self, uint8** ppdwBuffer, uint32* pdwLength) GetBufferAndLength;
		}
		[CRepr]
		public struct INSSBuffer2 : INSSBuffer
		{
			public const new Guid IID = .(0x4f528693, 0x1035, 0x43fe, 0xb4, 0x28, 0x75, 0x75, 0x61, 0xad, 0x3a, 0x68);
			
			public function HRESULT(INSSBuffer2 *self, uint32 cbProperties, uint8* pbProperties) GetSampleProperties;
			public function HRESULT(INSSBuffer2 *self, uint32 cbProperties, uint8* pbProperties) SetSampleProperties;
		}
		[CRepr]
		public struct INSSBuffer3 : INSSBuffer2
		{
			public const new Guid IID = .(0xc87ceaaf, 0x75be, 0x4bc4, 0x84, 0xeb, 0xac, 0x27, 0x98, 0x50, 0x76, 0x72);
			
			public function HRESULT(INSSBuffer3 *self, Guid guidBufferProperty, void* pvBufferProperty, uint32 dwBufferPropertySize) SetProperty;
			public function HRESULT(INSSBuffer3 *self, Guid guidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) GetProperty;
		}
		[CRepr]
		public struct INSSBuffer4 : INSSBuffer3
		{
			public const new Guid IID = .(0xb6b8fd5a, 0x32e2, 0x49d4, 0xa9, 0x10, 0xc2, 0x6c, 0xc8, 0x54, 0x65, 0xed);
			
			public function HRESULT(INSSBuffer4 *self, uint32* pcBufferProperties) GetPropertyCount;
			public function HRESULT(INSSBuffer4 *self, uint32 dwBufferPropertyIndex, Guid* pguidBufferProperty, void* pvBufferProperty, uint32* pdwBufferPropertySize) GetPropertyByIndex;
		}
		[CRepr]
		public struct IWMSBufferAllocator : IUnknown
		{
			public const new Guid IID = .(0x61103ca4, 0x2033, 0x11d2, 0x9e, 0xf1, 0x00, 0x60, 0x97, 0xd2, 0xd7, 0xcf);
			
			public function HRESULT(IWMSBufferAllocator *self, uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) AllocateBuffer;
			public function HRESULT(IWMSBufferAllocator *self, uint32 dwMaxBufferSize, INSSBuffer** ppBuffer) AllocatePageSizeBuffer;
		}
		[CRepr]
		public struct IWMMediaProps : IUnknown
		{
			public const new Guid IID = .(0x96406bce, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMMediaProps *self, Guid* pguidType) GetType;
			public function HRESULT(IWMMediaProps *self, WM_MEDIA_TYPE* pType, uint32* pcbType) GetMediaType;
			public function HRESULT(IWMMediaProps *self, WM_MEDIA_TYPE* pType) SetMediaType;
		}
		[CRepr]
		public struct IWMVideoMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bcf, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMVideoMediaProps *self, int64* pllTime) GetMaxKeyFrameSpacing;
			public function HRESULT(IWMVideoMediaProps *self, int64 llTime) SetMaxKeyFrameSpacing;
			public function HRESULT(IWMVideoMediaProps *self, uint32* pdwQuality) GetQuality;
			public function HRESULT(IWMVideoMediaProps *self, uint32 dwQuality) SetQuality;
		}
		[CRepr]
		public struct IWMWriter : IUnknown
		{
			public const new Guid IID = .(0x96406bd4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMWriter *self, Guid* guidProfile) SetProfileByID;
			public function HRESULT(IWMWriter *self, IWMProfile* pProfile) SetProfile;
			public function HRESULT(IWMWriter *self, PWSTR pwszFilename) SetOutputFilename;
			public function HRESULT(IWMWriter *self, uint32* pcInputs) GetInputCount;
			public function HRESULT(IWMWriter *self, uint32 dwInputNum, IWMInputMediaProps** ppInput) GetInputProps;
			public function HRESULT(IWMWriter *self, uint32 dwInputNum, IWMInputMediaProps* pInput) SetInputProps;
			public function HRESULT(IWMWriter *self, uint32 dwInputNumber, uint32* pcFormats) GetInputFormatCount;
			public function HRESULT(IWMWriter *self, uint32 dwInputNumber, uint32 dwFormatNumber, IWMInputMediaProps** pProps) GetInputFormat;
			public function HRESULT(IWMWriter *self) BeginWriting;
			public function HRESULT(IWMWriter *self) EndWriting;
			public function HRESULT(IWMWriter *self, uint32 dwSampleSize, INSSBuffer** ppSample) AllocateSample;
			public function HRESULT(IWMWriter *self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) WriteSample;
			public function HRESULT(IWMWriter *self) Flush;
		}
		[CRepr]
		public struct IWMDRMWriter : IUnknown
		{
			public const new Guid IID = .(0xd6ea5dd0, 0x12a0, 0x43f4, 0x90, 0xab, 0xa3, 0xfd, 0x45, 0x1e, 0x6a, 0x07);
			
			public function HRESULT(IWMDRMWriter *self, char16* pwszKeySeed, uint32* pcwchLength) GenerateKeySeed;
			public function HRESULT(IWMDRMWriter *self, char16* pwszKeyID, uint32* pcwchLength) GenerateKeyID;
			public function HRESULT(IWMDRMWriter *self, char16* pwszPrivKey, uint32* pcwchPrivKeyLength, char16* pwszPubKey, uint32* pcwchPubKeyLength) GenerateSigningKeyPair;
			public function HRESULT(IWMDRMWriter *self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetDRMAttribute;
		}
		[CRepr]
		public struct IWMDRMWriter2 : IWMDRMWriter
		{
			public const new Guid IID = .(0x38ee7a94, 0x40e2, 0x4e10, 0xaa, 0x3f, 0x33, 0xfd, 0x32, 0x10, 0xed, 0x5b);
			
			public function HRESULT(IWMDRMWriter2 *self, BOOL fSamplesEncrypted, uint8* pbKeyID, uint32 cbKeyID) SetWMDRMNetEncryption;
		}
		[CRepr]
		public struct IWMDRMWriter3 : IWMDRMWriter2
		{
			public const new Guid IID = .(0xa7184082, 0xa4aa, 0x4dde, 0xac, 0x9c, 0xe7, 0x5d, 0xbd, 0x11, 0x17, 0xce);
			
			public function HRESULT(IWMDRMWriter3 *self, WMDRM_IMPORT_INIT_STRUCT* pImportInitStruct) SetProtectStreamSamples;
		}
		[CRepr]
		public struct IWMInputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMInputMediaProps *self, char16* pwszName, uint16* pcchName) GetConnectionName;
			public function HRESULT(IWMInputMediaProps *self, char16* pwszName, uint16* pcchName) GetGroupName;
		}
		[CRepr]
		public struct IWMPropertyVault : IUnknown
		{
			public const new Guid IID = .(0x72995a79, 0x5090, 0x42a4, 0x9c, 0x8c, 0xd9, 0xd0, 0xb6, 0xd3, 0x4b, 0xe5);
			
			public function HRESULT(IWMPropertyVault *self, uint32* pdwCount) GetPropertyCount;
			public function HRESULT(IWMPropertyVault *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetPropertyByName;
			public function HRESULT(IWMPropertyVault *self, PWSTR pszName, WMT_ATTR_DATATYPE pType, uint8* pValue, uint32 dwSize) SetProperty;
			public function HRESULT(IWMPropertyVault *self, uint32 dwIndex, char16* pszName, uint32* pdwNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetPropertyByIndex;
			public function HRESULT(IWMPropertyVault *self, IWMPropertyVault* pIWMPropertyVault) CopyPropertiesFrom;
			public function HRESULT(IWMPropertyVault *self) Clear;
		}
		[CRepr]
		public struct IWMIStreamProps : IUnknown
		{
			public const new Guid IID = .(0x6816dad3, 0x2b4b, 0x4c8e, 0x81, 0x49, 0x87, 0x4c, 0x34, 0x83, 0xa7, 0x53);
			
			public function HRESULT(IWMIStreamProps *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetProperty;
		}
		[CRepr]
		public struct IWMReader : IUnknown
		{
			public const new Guid IID = .(0x96406bd6, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReader *self, PWSTR pwszURL, IWMReaderCallback* pCallback, void* pvContext) Open;
			public function HRESULT(IWMReader *self) Close;
			public function HRESULT(IWMReader *self, uint32* pcOutputs) GetOutputCount;
			public function HRESULT(IWMReader *self, uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) GetOutputProps;
			public function HRESULT(IWMReader *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) SetOutputProps;
			public function HRESULT(IWMReader *self, uint32 dwOutputNumber, uint32* pcFormats) GetOutputFormatCount;
			public function HRESULT(IWMReader *self, uint32 dwOutputNumber, uint32 dwFormatNumber, IWMOutputMediaProps** ppProps) GetOutputFormat;
			public function HRESULT(IWMReader *self, uint64 cnsStart, uint64 cnsDuration, float fRate, void* pvContext) Start;
			public function HRESULT(IWMReader *self) Stop;
			public function HRESULT(IWMReader *self) Pause;
			public function HRESULT(IWMReader *self) Resume;
		}
		[CRepr]
		public struct IWMSyncReader : IUnknown
		{
			public const new Guid IID = .(0x9397f121, 0x7705, 0x4dc9, 0xb0, 0x49, 0x98, 0xb6, 0x98, 0x18, 0x84, 0x14);
			
			public function HRESULT(IWMSyncReader *self, PWSTR pwszFilename) Open;
			public function HRESULT(IWMSyncReader *self) Close;
			public function HRESULT(IWMSyncReader *self, uint64 cnsStartTime, int64 cnsDuration) SetRange;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead) SetRangeByFrame;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, INSSBuffer** ppSample, uint64* pcnsSampleTime, uint64* pcnsDuration, uint32* pdwFlags, uint32* pdwOutputNum, uint16* pwStreamNum) GetNextSample;
			public function HRESULT(IWMSyncReader *self, uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) SetStreamsSelected;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) GetStreamSelected;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, BOOL fCompressed) SetReadStreamSamples;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, BOOL* pfCompressed) GetReadStreamSamples;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetOutputSetting;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
			public function HRESULT(IWMSyncReader *self, uint32* pcOutputs) GetOutputCount;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, IWMOutputMediaProps** ppOutput) GetOutputProps;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) SetOutputProps;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint32* pcFormats) GetOutputFormatCount;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint32 dwFormatNum, IWMOutputMediaProps** ppProps) GetOutputFormat;
			public function HRESULT(IWMSyncReader *self, uint16 wStreamNum, uint32* pdwOutputNum) GetOutputNumberForStream;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutputNum, uint16* pwStreamNum) GetStreamNumberForOutput;
			public function HRESULT(IWMSyncReader *self, uint32 dwOutput, uint32* pcbMax) GetMaxOutputSampleSize;
			public function HRESULT(IWMSyncReader *self, uint16 wStream, uint32* pcbMax) GetMaxStreamSampleSize;
			public function HRESULT(IWMSyncReader *self, IStream* pStream) OpenStream;
		}
		[CRepr]
		public struct IWMSyncReader2 : IWMSyncReader
		{
			public const new Guid IID = .(0xfaed3d21, 0x1b6b, 0x4af7, 0x8c, 0xb6, 0x3e, 0x18, 0x9b, 0xbc, 0x18, 0x7b);
			
			public function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, WMT_TIMECODE_EXTENSION_DATA* pStart, WMT_TIMECODE_EXTENSION_DATA* pEnd) SetRangeByTimecode;
			public function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, uint64 qwFrameNumber, int64 cFramesToRead, uint64* pcnsStartTime) SetRangeByFrameEx;
			public function HRESULT(IWMSyncReader2 *self, uint32 dwOutputNum, IWMReaderAllocatorEx* pAllocator) SetAllocateForOutput;
			public function HRESULT(IWMSyncReader2 *self, uint32 dwOutputNum, IWMReaderAllocatorEx** ppAllocator) GetAllocateForOutput;
			public function HRESULT(IWMSyncReader2 *self, uint16 wStreamNum, IWMReaderAllocatorEx* pAllocator) SetAllocateForStream;
			public function HRESULT(IWMSyncReader2 *self, uint16 dwSreamNum, IWMReaderAllocatorEx** ppAllocator) GetAllocateForStream;
		}
		[CRepr]
		public struct IWMOutputMediaProps : IWMMediaProps
		{
			public const new Guid IID = .(0x96406bd7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMOutputMediaProps *self, char16* pwszName, uint16* pcchName) GetStreamGroupName;
			public function HRESULT(IWMOutputMediaProps *self, char16* pwszName, uint16* pcchName) GetConnectionName;
		}
		[CRepr]
		public struct IWMStatusCallback : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc70, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public function HRESULT(IWMStatusCallback *self, WMT_STATUS Status, HRESULT hr, WMT_ATTR_DATATYPE dwType, uint8* pValue, void* pvContext) OnStatus;
		}
		[CRepr]
		public struct IWMReaderCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0x96406bd8, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReaderCallback *self, uint32 dwOutputNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnSample;
		}
		[CRepr]
		public struct IWMCredentialCallback : IUnknown
		{
			public const new Guid IID = .(0x342e0eb7, 0xe651, 0x450c, 0x97, 0x5b, 0x2a, 0xce, 0x2c, 0x90, 0xc4, 0x8e);
			
			public function HRESULT(IWMCredentialCallback *self, PWSTR pwszRealm, PWSTR pwszSite, char16* pwszUser, uint32 cchUser, char16* pwszPassword, uint32 cchPassword, HRESULT hrStatus, uint32* pdwFlags) AcquireCredentials;
		}
		[CRepr]
		public struct IWMMetadataEditor : IUnknown
		{
			public const new Guid IID = .(0x96406bd9, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMMetadataEditor *self, PWSTR pwszFilename) Open;
			public function HRESULT(IWMMetadataEditor *self) Close;
			public function HRESULT(IWMMetadataEditor *self) Flush;
		}
		[CRepr]
		public struct IWMMetadataEditor2 : IWMMetadataEditor
		{
			public const new Guid IID = .(0x203cffe3, 0x2e18, 0x4fdf, 0xb5, 0x9d, 0x6e, 0x71, 0x53, 0x05, 0x34, 0xcf);
			
			public function HRESULT(IWMMetadataEditor2 *self, PWSTR pwszFilename, uint32 dwDesiredAccess, uint32 dwShareMode) OpenEx;
		}
		[CRepr]
		public struct IWMDRMEditor : IUnknown
		{
			public const new Guid IID = .(0xff130ebc, 0xa6c3, 0x42a6, 0xb4, 0x01, 0xc3, 0x38, 0x2c, 0x3e, 0x08, 0xb3);
			
			public function HRESULT(IWMDRMEditor *self, PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) GetDRMProperty;
		}
		[CRepr]
		public struct IWMHeaderInfo : IUnknown
		{
			public const new Guid IID = .(0x96406bda, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMHeaderInfo *self, uint16 wStreamNum, uint16* pcAttributes) GetAttributeCount;
			public function HRESULT(IWMHeaderInfo *self, uint16 wIndex, uint16* pwStreamNum, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetAttributeByIndex;
			public function HRESULT(IWMHeaderInfo *self, uint16* pwStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetAttributeByName;
			public function HRESULT(IWMHeaderInfo *self, uint16 wStreamNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetAttribute;
			public function HRESULT(IWMHeaderInfo *self, uint16* pcMarkers) GetMarkerCount;
			public function HRESULT(IWMHeaderInfo *self, uint16 wIndex, char16* pwszMarkerName, uint16* pcchMarkerNameLen, uint64* pcnsMarkerTime) GetMarker;
			public function HRESULT(IWMHeaderInfo *self, PWSTR pwszMarkerName, uint64 cnsMarkerTime) AddMarker;
			public function HRESULT(IWMHeaderInfo *self, uint16 wIndex) RemoveMarker;
			public function HRESULT(IWMHeaderInfo *self, uint16* pcScripts) GetScriptCount;
			public function HRESULT(IWMHeaderInfo *self, uint16 wIndex, char16* pwszType, uint16* pcchTypeLen, char16* pwszCommand, uint16* pcchCommandLen, uint64* pcnsScriptTime) GetScript;
			public function HRESULT(IWMHeaderInfo *self, PWSTR pwszType, PWSTR pwszCommand, uint64 cnsScriptTime) AddScript;
			public function HRESULT(IWMHeaderInfo *self, uint16 wIndex) RemoveScript;
		}
		[CRepr]
		public struct IWMHeaderInfo2 : IWMHeaderInfo
		{
			public const new Guid IID = .(0x15cf9781, 0x454e, 0x482e, 0xb3, 0x93, 0x85, 0xfa, 0xe4, 0x87, 0xa8, 0x10);
			
			public function HRESULT(IWMHeaderInfo2 *self, uint32* pcCodecInfos) GetCodecInfoCount;
			public function HRESULT(IWMHeaderInfo2 *self, uint32 wIndex, uint16* pcchName, char16* pwszName, uint16* pcchDescription, char16* pwszDescription, WMT_CODEC_INFO_TYPE* pCodecType, uint16* pcbCodecInfo, uint8* pbCodecInfo) GetCodecInfo;
		}
		[CRepr]
		public struct IWMHeaderInfo3 : IWMHeaderInfo2
		{
			public const new Guid IID = .(0x15cc68e3, 0x27cc, 0x4ecd, 0xb2, 0x22, 0x3f, 0x5d, 0x02, 0xd8, 0x0b, 0xd5);
			
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16* pcAttributes) GetAttributeCountEx;
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, PWSTR pwszName, uint16* pwLangIndex, uint16* pwIndices, uint16* pwCount) GetAttributeIndices;
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex, char16* pwszName, uint16* pwNameLen, WMT_ATTR_DATATYPE* pType, uint16* pwLangIndex, uint8* pValue, uint32* pdwDataLength) GetAttributeByIndexEx;
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) ModifyAttribute;
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, PWSTR pszName, uint16* pwIndex, WMT_ATTR_DATATYPE Type, uint16 wLangIndex, uint8* pValue, uint32 dwLength) AddAttribute;
			public function HRESULT(IWMHeaderInfo3 *self, uint16 wStreamNum, uint16 wIndex) DeleteAttribute;
			public function HRESULT(IWMHeaderInfo3 *self, PWSTR pwszName, PWSTR pwszDescription, WMT_CODEC_INFO_TYPE codecType, uint16 cbCodecInfo, uint8* pbCodecInfo) AddCodecInfo;
		}
		[CRepr]
		public struct IWMProfileManager : IUnknown
		{
			public const new Guid IID = .(0xd16679f2, 0x6ca0, 0x472d, 0x8d, 0x31, 0x2f, 0x5d, 0x55, 0xae, 0xe1, 0x55);
			
			public function HRESULT(IWMProfileManager *self, WMT_VERSION dwVersion, IWMProfile** ppProfile) CreateEmptyProfile;
			public function HRESULT(IWMProfileManager *self, Guid* guidProfile, IWMProfile** ppProfile) LoadProfileByID;
			public function HRESULT(IWMProfileManager *self, PWSTR pwszProfile, IWMProfile** ppProfile) LoadProfileByData;
			public function HRESULT(IWMProfileManager *self, IWMProfile* pIWMProfile, PWSTR pwszProfile, uint32* pdwLength) SaveProfile;
			public function HRESULT(IWMProfileManager *self, uint32* pcProfiles) GetSystemProfileCount;
			public function HRESULT(IWMProfileManager *self, uint32 dwProfileIndex, IWMProfile** ppProfile) LoadSystemProfile;
		}
		[CRepr]
		public struct IWMProfileManager2 : IWMProfileManager
		{
			public const new Guid IID = .(0x7a924e51, 0x73c1, 0x494d, 0x80, 0x19, 0x23, 0xd3, 0x7e, 0xd9, 0xb8, 0x9a);
			
			public function HRESULT(IWMProfileManager2 *self, WMT_VERSION* pdwVersion) GetSystemProfileVersion;
			public function HRESULT(IWMProfileManager2 *self, WMT_VERSION dwVersion) SetSystemProfileVersion;
		}
		[CRepr]
		public struct IWMProfileManagerLanguage : IUnknown
		{
			public const new Guid IID = .(0xba4dcc78, 0x7ee0, 0x4ab8, 0xb2, 0x7a, 0xdb, 0xce, 0x8b, 0xc5, 0x14, 0x54);
			
			public function HRESULT(IWMProfileManagerLanguage *self, uint16* wLangID) GetUserLanguageID;
			public function HRESULT(IWMProfileManagerLanguage *self, uint16 wLangID) SetUserLanguageID;
		}
		[CRepr]
		public struct IWMProfile : IUnknown
		{
			public const new Guid IID = .(0x96406bdb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMProfile *self, WMT_VERSION* pdwVersion) GetVersion;
			public function HRESULT(IWMProfile *self, char16* pwszName, uint32* pcchName) GetName;
			public function HRESULT(IWMProfile *self, PWSTR pwszName) SetName;
			public function HRESULT(IWMProfile *self, char16* pwszDescription, uint32* pcchDescription) GetDescription;
			public function HRESULT(IWMProfile *self, PWSTR pwszDescription) SetDescription;
			public function HRESULT(IWMProfile *self, uint32* pcStreams) GetStreamCount;
			public function HRESULT(IWMProfile *self, uint32 dwStreamIndex, IWMStreamConfig** ppConfig) GetStream;
			public function HRESULT(IWMProfile *self, uint16 wStreamNum, IWMStreamConfig** ppConfig) GetStreamByNumber;
			public function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) RemoveStream;
			public function HRESULT(IWMProfile *self, uint16 wStreamNum) RemoveStreamByNumber;
			public function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) AddStream;
			public function HRESULT(IWMProfile *self, IWMStreamConfig* pConfig) ReconfigStream;
			public function HRESULT(IWMProfile *self, Guid* guidStreamType, IWMStreamConfig** ppConfig) CreateNewStream;
			public function HRESULT(IWMProfile *self, uint32* pcME) GetMutualExclusionCount;
			public function HRESULT(IWMProfile *self, uint32 dwMEIndex, IWMMutualExclusion** ppME) GetMutualExclusion;
			public function HRESULT(IWMProfile *self, IWMMutualExclusion* pME) RemoveMutualExclusion;
			public function HRESULT(IWMProfile *self, IWMMutualExclusion* pME) AddMutualExclusion;
			public function HRESULT(IWMProfile *self, IWMMutualExclusion** ppME) CreateNewMutualExclusion;
		}
		[CRepr]
		public struct IWMProfile2 : IWMProfile
		{
			public const new Guid IID = .(0x07e72d33, 0xd94e, 0x4be7, 0x88, 0x43, 0x60, 0xae, 0x5f, 0xf7, 0xe5, 0xf5);
			
			public function HRESULT(IWMProfile2 *self, Guid* pguidID) GetProfileID;
		}
		[CRepr]
		public struct IWMProfile3 : IWMProfile2
		{
			public const new Guid IID = .(0x00ef96cc, 0xa461, 0x4546, 0x8b, 0xcd, 0xc9, 0xa2, 0x8f, 0x0e, 0x06, 0xf5);
			
			public function HRESULT(IWMProfile3 *self, WMT_STORAGE_FORMAT* pnStorageFormat) GetStorageFormat;
			public function HRESULT(IWMProfile3 *self, WMT_STORAGE_FORMAT nStorageFormat) SetStorageFormat;
			public function HRESULT(IWMProfile3 *self, uint32* pcBS) GetBandwidthSharingCount;
			public function HRESULT(IWMProfile3 *self, uint32 dwBSIndex, IWMBandwidthSharing** ppBS) GetBandwidthSharing;
			public function HRESULT(IWMProfile3 *self, IWMBandwidthSharing* pBS) RemoveBandwidthSharing;
			public function HRESULT(IWMProfile3 *self, IWMBandwidthSharing* pBS) AddBandwidthSharing;
			public function HRESULT(IWMProfile3 *self, IWMBandwidthSharing** ppBS) CreateNewBandwidthSharing;
			public function HRESULT(IWMProfile3 *self, IWMStreamPrioritization** ppSP) GetStreamPrioritization;
			public function HRESULT(IWMProfile3 *self, IWMStreamPrioritization* pSP) SetStreamPrioritization;
			public function HRESULT(IWMProfile3 *self) RemoveStreamPrioritization;
			public function HRESULT(IWMProfile3 *self, IWMStreamPrioritization** ppSP) CreateNewStreamPrioritization;
			public function HRESULT(IWMProfile3 *self, uint64 msDuration, uint64* pcPackets) GetExpectedPacketCount;
		}
		[CRepr]
		public struct IWMStreamConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bdc, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMStreamConfig *self, Guid* pguidStreamType) GetStreamType;
			public function HRESULT(IWMStreamConfig *self, uint16* pwStreamNum) GetStreamNumber;
			public function HRESULT(IWMStreamConfig *self, uint16 wStreamNum) SetStreamNumber;
			public function HRESULT(IWMStreamConfig *self, char16* pwszStreamName, uint16* pcchStreamName) GetStreamName;
			public function HRESULT(IWMStreamConfig *self, PWSTR pwszStreamName) SetStreamName;
			public function HRESULT(IWMStreamConfig *self, char16* pwszInputName, uint16* pcchInputName) GetConnectionName;
			public function HRESULT(IWMStreamConfig *self, PWSTR pwszInputName) SetConnectionName;
			public function HRESULT(IWMStreamConfig *self, uint32* pdwBitrate) GetBitrate;
			public function HRESULT(IWMStreamConfig *self, uint32 pdwBitrate) SetBitrate;
			public function HRESULT(IWMStreamConfig *self, uint32* pmsBufferWindow) GetBufferWindow;
			public function HRESULT(IWMStreamConfig *self, uint32 msBufferWindow) SetBufferWindow;
		}
		[CRepr]
		public struct IWMStreamConfig2 : IWMStreamConfig
		{
			public const new Guid IID = .(0x7688d8cb, 0xfc0d, 0x43bd, 0x94, 0x59, 0x5a, 0x8d, 0xec, 0x20, 0x0c, 0xfa);
			
			public function HRESULT(IWMStreamConfig2 *self, WMT_TRANSPORT_TYPE* pnTransportType) GetTransportType;
			public function HRESULT(IWMStreamConfig2 *self, WMT_TRANSPORT_TYPE nTransportType) SetTransportType;
			public function HRESULT(IWMStreamConfig2 *self, Guid guidExtensionSystemID, uint16 cbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32 cbExtensionSystemInfo) AddDataUnitExtension;
			public function HRESULT(IWMStreamConfig2 *self, uint16* pcDataUnitExtensions) GetDataUnitExtensionCount;
			public function HRESULT(IWMStreamConfig2 *self, uint16 wDataUnitExtensionNumber, Guid* pguidExtensionSystemID, uint16* pcbExtensionDataSize, uint8* pbExtensionSystemInfo, uint32* pcbExtensionSystemInfo) GetDataUnitExtension;
			public function HRESULT(IWMStreamConfig2 *self) RemoveAllDataUnitExtensions;
		}
		[CRepr]
		public struct IWMStreamConfig3 : IWMStreamConfig2
		{
			public const new Guid IID = .(0xcb164104, 0x3aa9, 0x45a7, 0x9a, 0xc9, 0x4d, 0xae, 0xe1, 0x31, 0xd6, 0xe1);
			
			public function HRESULT(IWMStreamConfig3 *self, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguage;
			public function HRESULT(IWMStreamConfig3 *self, PWSTR pwszLanguageString) SetLanguage;
		}
		[CRepr]
		public struct IWMPacketSize : IUnknown
		{
			public const new Guid IID = .(0xcdfb97ab, 0x188f, 0x40b3, 0xb6, 0x43, 0x5b, 0x79, 0x03, 0x97, 0x5c, 0x59);
			
			public function HRESULT(IWMPacketSize *self, uint32* pdwMaxPacketSize) GetMaxPacketSize;
			public function HRESULT(IWMPacketSize *self, uint32 dwMaxPacketSize) SetMaxPacketSize;
		}
		[CRepr]
		public struct IWMPacketSize2 : IWMPacketSize
		{
			public const new Guid IID = .(0x8bfc2b9e, 0xb646, 0x4233, 0xa8, 0x77, 0x1c, 0x6a, 0x07, 0x96, 0x69, 0xdc);
			
			public function HRESULT(IWMPacketSize2 *self, uint32* pdwMinPacketSize) GetMinPacketSize;
			public function HRESULT(IWMPacketSize2 *self, uint32 dwMinPacketSize) SetMinPacketSize;
		}
		[CRepr]
		public struct IWMStreamList : IUnknown
		{
			public const new Guid IID = .(0x96406bdd, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMStreamList *self, uint16* pwStreamNumArray, uint16* pcStreams) GetStreams;
			public function HRESULT(IWMStreamList *self, uint16 wStreamNum) AddStream;
			public function HRESULT(IWMStreamList *self, uint16 wStreamNum) RemoveStream;
		}
		[CRepr]
		public struct IWMMutualExclusion : IWMStreamList
		{
			public const new Guid IID = .(0x96406bde, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMMutualExclusion *self, Guid* pguidType) GetType;
			public function HRESULT(IWMMutualExclusion *self, Guid* guidType) SetType;
		}
		[CRepr]
		public struct IWMMutualExclusion2 : IWMMutualExclusion
		{
			public const new Guid IID = .(0x0302b57d, 0x89d1, 0x4ba2, 0x85, 0xc9, 0x16, 0x6f, 0x2c, 0x53, 0xeb, 0x91);
			
			public function HRESULT(IWMMutualExclusion2 *self, char16* pwszName, uint16* pcchName) GetName;
			public function HRESULT(IWMMutualExclusion2 *self, PWSTR pwszName) SetName;
			public function HRESULT(IWMMutualExclusion2 *self, uint16* pwRecordCount) GetRecordCount;
			public function HRESULT(IWMMutualExclusion2 *self) AddRecord;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber) RemoveRecord;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, char16* pwszRecordName, uint16* pcchRecordName) GetRecordName;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, PWSTR pwszRecordName) SetRecordName;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16* pwStreamNumArray, uint16* pcStreams) GetStreamsForRecord;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16 wStreamNumber) AddStreamForRecord;
			public function HRESULT(IWMMutualExclusion2 *self, uint16 wRecordNumber, uint16 wStreamNumber) RemoveStreamForRecord;
		}
		[CRepr]
		public struct IWMBandwidthSharing : IWMStreamList
		{
			public const new Guid IID = .(0xad694af1, 0xf8d9, 0x42f8, 0xbc, 0x47, 0x70, 0x31, 0x1b, 0x0c, 0x4f, 0x9e);
			
			public function HRESULT(IWMBandwidthSharing *self, Guid* pguidType) GetType;
			public function HRESULT(IWMBandwidthSharing *self, Guid* guidType) SetType;
			public function HRESULT(IWMBandwidthSharing *self, uint32* pdwBitrate, uint32* pmsBufferWindow) GetBandwidth;
			public function HRESULT(IWMBandwidthSharing *self, uint32 dwBitrate, uint32 msBufferWindow) SetBandwidth;
		}
		[CRepr]
		public struct IWMStreamPrioritization : IUnknown
		{
			public const new Guid IID = .(0x8c1c6090, 0xf9a8, 0x4748, 0x8e, 0xc3, 0xdd, 0x11, 0x08, 0xba, 0x1e, 0x77);
			
			public function HRESULT(IWMStreamPrioritization *self, WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16* pcRecords) GetPriorityRecords;
			public function HRESULT(IWMStreamPrioritization *self, WM_STREAM_PRIORITY_RECORD* pRecordArray, uint16 cRecords) SetPriorityRecords;
		}
		[CRepr]
		public struct IWMWriterAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406be3, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMWriterAdvanced *self, uint32* pcSinks) GetSinkCount;
			public function HRESULT(IWMWriterAdvanced *self, uint32 dwSinkNum, IWMWriterSink** ppSink) GetSink;
			public function HRESULT(IWMWriterAdvanced *self, IWMWriterSink* pSink) AddSink;
			public function HRESULT(IWMWriterAdvanced *self, IWMWriterSink* pSink) RemoveSink;
			public function HRESULT(IWMWriterAdvanced *self, uint16 wStreamNum, uint64 cnsSampleTime, uint32 msSampleSendTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample) WriteStreamSample;
			public function HRESULT(IWMWriterAdvanced *self, BOOL fIsLiveSource) SetLiveSource;
			public function HRESULT(IWMWriterAdvanced *self, BOOL* pfRealTime) IsRealTime;
			public function HRESULT(IWMWriterAdvanced *self, uint64* pcnsCurrentTime) GetWriterTime;
			public function HRESULT(IWMWriterAdvanced *self, uint16 wStreamNum, WM_WRITER_STATISTICS* pStats) GetStatistics;
			public function HRESULT(IWMWriterAdvanced *self, uint32 msWindow) SetSyncTolerance;
			public function HRESULT(IWMWriterAdvanced *self, uint32* pmsWindow) GetSyncTolerance;
		}
		[CRepr]
		public struct IWMWriterAdvanced2 : IWMWriterAdvanced
		{
			public const new Guid IID = .(0x962dc1ec, 0xc046, 0x4db8, 0x9c, 0xc7, 0x26, 0xce, 0xae, 0x50, 0x08, 0x17);
			
			public function HRESULT(IWMWriterAdvanced2 *self, uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetInputSetting;
			public function HRESULT(IWMWriterAdvanced2 *self, uint32 dwInputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetInputSetting;
		}
		[CRepr]
		public struct IWMWriterAdvanced3 : IWMWriterAdvanced2
		{
			public const new Guid IID = .(0x2cd6492d, 0x7c37, 0x4e76, 0x9d, 0x3b, 0x59, 0x26, 0x11, 0x83, 0xa2, 0x2e);
			
			public function HRESULT(IWMWriterAdvanced3 *self, uint16 wStreamNum, WM_WRITER_STATISTICS_EX* pStats) GetStatisticsEx;
			public function HRESULT(IWMWriterAdvanced3 *self) SetNonBlocking;
		}
		[CRepr]
		public struct IWMWriterPreprocess : IUnknown
		{
			public const new Guid IID = .(0xfc54a285, 0x38c4, 0x45b5, 0xaa, 0x23, 0x85, 0xb9, 0xf7, 0xcb, 0x42, 0x4b);
			
			public function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags, uint32* pdwMaxNumPasses) GetMaxPreprocessingPasses;
			public function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags, uint32 dwNumPasses) SetNumPreprocessingPasses;
			public function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags) BeginPreprocessingPass;
			public function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint64 cnsSampleTime, uint32 dwFlags, INSSBuffer* pSample) PreprocessSample;
			public function HRESULT(IWMWriterPreprocess *self, uint32 dwInputNum, uint32 dwFlags) EndPreprocessingPass;
		}
		[CRepr]
		public struct IWMWriterPostViewCallback : IWMStatusCallback
		{
			public const new Guid IID = .(0xd9d6549d, 0xa193, 0x4f24, 0xb3, 0x08, 0x03, 0x12, 0x3d, 0x9b, 0x7f, 0x8d);
			
			public function HRESULT(IWMWriterPostViewCallback *self, uint16 wStreamNumber, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnPostViewSample;
			public function HRESULT(IWMWriterPostViewCallback *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForPostView;
		}
		[CRepr]
		public struct IWMWriterPostView : IUnknown
		{
			public const new Guid IID = .(0x81e20ce4, 0x75ef, 0x491a, 0x80, 0x04, 0xfc, 0x53, 0xc4, 0x5b, 0xdc, 0x3e);
			
			public function HRESULT(IWMWriterPostView *self, IWMWriterPostViewCallback* pCallback, void* pvContext) SetPostViewCallback;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNum, BOOL fReceivePostViewSamples) SetReceivePostViewSamples;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNum, BOOL* pfReceivePostViewSamples) GetReceivePostViewSamples;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, IWMMediaProps** ppOutput) GetPostViewProps;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, IWMMediaProps* pOutput) SetPostViewProps;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, uint32* pcFormats) GetPostViewFormatCount;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, uint32 dwFormatNumber, IWMMediaProps** ppProps) GetPostViewFormat;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, BOOL fAllocate) SetAllocateForPostView;
			public function HRESULT(IWMWriterPostView *self, uint16 wStreamNumber, BOOL* pfAllocate) GetAllocateForPostView;
		}
		[CRepr]
		public struct IWMWriterSink : IUnknown
		{
			public const new Guid IID = .(0x96406be4, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMWriterSink *self, INSSBuffer* pHeader) OnHeader;
			public function HRESULT(IWMWriterSink *self, BOOL* pfRealTime) IsRealTime;
			public function HRESULT(IWMWriterSink *self, uint32 cbDataUnit, INSSBuffer** ppDataUnit) AllocateDataUnit;
			public function HRESULT(IWMWriterSink *self, INSSBuffer* pDataUnit) OnDataUnit;
			public function HRESULT(IWMWriterSink *self) OnEndWriting;
		}
		[CRepr]
		public struct IWMRegisterCallback : IUnknown
		{
			public const new Guid IID = .(0xcf4b1f99, 0x4de2, 0x4e49, 0xa3, 0x63, 0x25, 0x27, 0x40, 0xd9, 0x9b, 0xc1);
			
			public function HRESULT(IWMRegisterCallback *self, IWMStatusCallback* pCallback, void* pvContext) Advise;
			public function HRESULT(IWMRegisterCallback *self, IWMStatusCallback* pCallback, void* pvContext) Unadvise;
		}
		[CRepr]
		public struct IWMWriterFileSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be5, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMWriterFileSink *self, PWSTR pwszFilename) Open;
		}
		[CRepr]
		public struct IWMWriterFileSink2 : IWMWriterFileSink
		{
			public const new Guid IID = .(0x14282ba7, 0x4aef, 0x4205, 0x8c, 0xe5, 0xc2, 0x29, 0x03, 0x5a, 0x05, 0xbc);
			
			public function HRESULT(IWMWriterFileSink2 *self, uint64 cnsStartTime) Start;
			public function HRESULT(IWMWriterFileSink2 *self, uint64 cnsStopTime) Stop;
			public function HRESULT(IWMWriterFileSink2 *self, BOOL* pfStopped) IsStopped;
			public function HRESULT(IWMWriterFileSink2 *self, uint64* pcnsDuration) GetFileDuration;
			public function HRESULT(IWMWriterFileSink2 *self, uint64* pcbFile) GetFileSize;
			public function HRESULT(IWMWriterFileSink2 *self) Close;
			public function HRESULT(IWMWriterFileSink2 *self, BOOL* pfClosed) IsClosed;
		}
		[CRepr]
		public struct IWMWriterFileSink3 : IWMWriterFileSink2
		{
			public const new Guid IID = .(0x3fea4feb, 0x2945, 0x47a7, 0xa1, 0xdd, 0xc5, 0x3a, 0x8f, 0xc4, 0xc4, 0x5c);
			
			public function HRESULT(IWMWriterFileSink3 *self, BOOL fDoAutoIndexing) SetAutoIndexing;
			public function HRESULT(IWMWriterFileSink3 *self, BOOL* pfAutoIndexing) GetAutoIndexing;
			public function HRESULT(IWMWriterFileSink3 *self, uint16 wStreamNumber, BOOL fShouldControlStartAndStop) SetControlStream;
			public function HRESULT(IWMWriterFileSink3 *self, uint32* pdwFileSinkMode) GetMode;
			public function HRESULT(IWMWriterFileSink3 *self, WMT_FILESINK_DATA_UNIT* pFileSinkDataUnit) OnDataUnitEx;
			public function HRESULT(IWMWriterFileSink3 *self, BOOL fUnbufferedIO, BOOL fRestrictMemUsage) SetUnbufferedIO;
			public function HRESULT(IWMWriterFileSink3 *self, BOOL* pfUnbufferedIO) GetUnbufferedIO;
			public function HRESULT(IWMWriterFileSink3 *self) CompleteOperations;
		}
		[CRepr]
		public struct IWMWriterNetworkSink : IWMWriterSink
		{
			public const new Guid IID = .(0x96406be7, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMWriterNetworkSink *self, uint32 dwMaxClients) SetMaximumClients;
			public function HRESULT(IWMWriterNetworkSink *self, uint32* pdwMaxClients) GetMaximumClients;
			public function HRESULT(IWMWriterNetworkSink *self, WMT_NET_PROTOCOL protocol) SetNetworkProtocol;
			public function HRESULT(IWMWriterNetworkSink *self, WMT_NET_PROTOCOL* pProtocol) GetNetworkProtocol;
			public function HRESULT(IWMWriterNetworkSink *self, PWSTR pwszURL, uint32* pcchURL) GetHostURL;
			public function HRESULT(IWMWriterNetworkSink *self, uint32* pdwPortNum) Open;
			public function HRESULT(IWMWriterNetworkSink *self) Disconnect;
			public function HRESULT(IWMWriterNetworkSink *self) Close;
		}
		[CRepr]
		public struct IWMClientConnections : IUnknown
		{
			public const new Guid IID = .(0x73c66010, 0xa299, 0x41df, 0xb1, 0xf0, 0xcc, 0xf0, 0x3b, 0x09, 0xc1, 0xc6);
			
			public function HRESULT(IWMClientConnections *self, uint32* pcClients) GetClientCount;
			public function HRESULT(IWMClientConnections *self, uint32 dwClientNum, WM_CLIENT_PROPERTIES* pClientProperties) GetClientProperties;
		}
		[CRepr]
		public struct IWMClientConnections2 : IWMClientConnections
		{
			public const new Guid IID = .(0x4091571e, 0x4701, 0x4593, 0xbb, 0x3d, 0xd5, 0xf5, 0xf0, 0xc7, 0x42, 0x46);
			
			public function HRESULT(IWMClientConnections2 *self, uint32 dwClientNum, char16* pwszNetworkAddress, uint32* pcchNetworkAddress, char16* pwszPort, uint32* pcchPort, char16* pwszDNSName, uint32* pcchDNSName) GetClientInfo;
		}
		[CRepr]
		public struct IWMReaderAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406bea, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReaderAdvanced *self, BOOL fUserClock) SetUserProvidedClock;
			public function HRESULT(IWMReaderAdvanced *self, BOOL* pfUserClock) GetUserProvidedClock;
			public function HRESULT(IWMReaderAdvanced *self, uint64 cnsTime) DeliverTime;
			public function HRESULT(IWMReaderAdvanced *self, BOOL fSelection) SetManualStreamSelection;
			public function HRESULT(IWMReaderAdvanced *self, BOOL* pfSelection) GetManualStreamSelection;
			public function HRESULT(IWMReaderAdvanced *self, uint16 cStreamCount, uint16* pwStreamNumbers, WMT_STREAM_SELECTION* pSelections) SetStreamsSelected;
			public function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, WMT_STREAM_SELECTION* pSelection) GetStreamSelected;
			public function HRESULT(IWMReaderAdvanced *self, BOOL fGetCallbacks) SetReceiveSelectionCallbacks;
			public function HRESULT(IWMReaderAdvanced *self, BOOL* pfGetCallbacks) GetReceiveSelectionCallbacks;
			public function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL fReceiveStreamSamples) SetReceiveStreamSamples;
			public function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL* pfReceiveStreamSamples) GetReceiveStreamSamples;
			public function HRESULT(IWMReaderAdvanced *self, uint32 dwOutputNum, BOOL fAllocate) SetAllocateForOutput;
			public function HRESULT(IWMReaderAdvanced *self, uint32 dwOutputNum, BOOL* pfAllocate) GetAllocateForOutput;
			public function HRESULT(IWMReaderAdvanced *self, uint16 wStreamNum, BOOL fAllocate) SetAllocateForStream;
			public function HRESULT(IWMReaderAdvanced *self, uint16 dwSreamNum, BOOL* pfAllocate) GetAllocateForStream;
			public function HRESULT(IWMReaderAdvanced *self, WM_READER_STATISTICS* pStatistics) GetStatistics;
			public function HRESULT(IWMReaderAdvanced *self, WM_READER_CLIENTINFO* pClientInfo) SetClientInfo;
			public function HRESULT(IWMReaderAdvanced *self, uint32 dwOutput, uint32* pcbMax) GetMaxOutputSampleSize;
			public function HRESULT(IWMReaderAdvanced *self, uint16 wStream, uint32* pcbMax) GetMaxStreamSampleSize;
			public function HRESULT(IWMReaderAdvanced *self, uint64 cnsLateness) NotifyLateDelivery;
		}
		[CRepr]
		public struct IWMReaderAdvanced2 : IWMReaderAdvanced
		{
			public const new Guid IID = .(0xae14a945, 0xb90c, 0x4d0d, 0x91, 0x27, 0x80, 0xd6, 0x65, 0xf7, 0xd7, 0x3e);
			
			public function HRESULT(IWMReaderAdvanced2 *self, WMT_PLAY_MODE Mode) SetPlayMode;
			public function HRESULT(IWMReaderAdvanced2 *self, WMT_PLAY_MODE* pMode) GetPlayMode;
			public function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent, uint64* pcnsBuffering) GetBufferProgress;
			public function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent, uint64* pqwBytesDownloaded, uint64* pcnsDownload) GetDownloadProgress;
			public function HRESULT(IWMReaderAdvanced2 *self, uint32* pdwPercent) GetSaveAsProgress;
			public function HRESULT(IWMReaderAdvanced2 *self, PWSTR pwszFilename) SaveFileAs;
			public function HRESULT(IWMReaderAdvanced2 *self, char16* pwszProtocol, uint32* pcchProtocol) GetProtocolName;
			public function HRESULT(IWMReaderAdvanced2 *self, uint16 wMarkerIndex, uint64 cnsDuration, float fRate, void* pvContext) StartAtMarker;
			public function HRESULT(IWMReaderAdvanced2 *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetOutputSetting;
			public function HRESULT(IWMReaderAdvanced2 *self, uint32 dwOutputNum, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetOutputSetting;
			public function HRESULT(IWMReaderAdvanced2 *self, uint64 cnsStart, uint64 cnsDuration, float fRate) Preroll;
			public function HRESULT(IWMReaderAdvanced2 *self, BOOL fLogClientID) SetLogClientID;
			public function HRESULT(IWMReaderAdvanced2 *self, BOOL* pfLogClientID) GetLogClientID;
			public function HRESULT(IWMReaderAdvanced2 *self) StopBuffering;
			public function HRESULT(IWMReaderAdvanced2 *self, IStream* pStream, IWMReaderCallback* pCallback, void* pvContext) OpenStream;
		}
		[CRepr]
		public struct IWMReaderAdvanced3 : IWMReaderAdvanced2
		{
			public const new Guid IID = .(0x5dc0674b, 0xf04b, 0x4a4e, 0x9f, 0x2a, 0xb1, 0xaf, 0xde, 0x2c, 0x81, 0x00);
			
			public function HRESULT(IWMReaderAdvanced3 *self) StopNetStreaming;
			public function HRESULT(IWMReaderAdvanced3 *self, uint16 wStreamNum, void* pvOffsetStart, void* pvDuration, WMT_OFFSET_FORMAT dwOffsetFormat, float fRate, void* pvContext) StartAtPosition;
		}
		[CRepr]
		public struct IWMReaderAdvanced4 : IWMReaderAdvanced3
		{
			public const new Guid IID = .(0x945a76a2, 0x12ae, 0x4d48, 0xbd, 0x3c, 0xcd, 0x1d, 0x90, 0x39, 0x9b, 0x85);
			
			public function HRESULT(IWMReaderAdvanced4 *self, uint32 dwOutputNum, uint16* pwLanguageCount) GetLanguageCount;
			public function HRESULT(IWMReaderAdvanced4 *self, uint32 dwOutputNum, uint16 wLanguage, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguage;
			public function HRESULT(IWMReaderAdvanced4 *self, double* pdblFactor) GetMaxSpeedFactor;
			public function HRESULT(IWMReaderAdvanced4 *self, BOOL* pfUsingFastCache) IsUsingFastCache;
			public function HRESULT(IWMReaderAdvanced4 *self, PWSTR wszNameSpace, PWSTR wszName, PWSTR wszValue) AddLogParam;
			public function HRESULT(IWMReaderAdvanced4 *self) SendLogParams;
			public function HRESULT(IWMReaderAdvanced4 *self, BOOL* pfCanSave) CanSaveFileAs;
			public function HRESULT(IWMReaderAdvanced4 *self) CancelSaveFileAs;
			public function HRESULT(IWMReaderAdvanced4 *self, char16* pwszURL, uint32* pcchURL) GetURL;
		}
		[CRepr]
		public struct IWMReaderAdvanced5 : IWMReaderAdvanced4
		{
			public const new Guid IID = .(0x24c44db0, 0x55d1, 0x49ae, 0xa5, 0xcc, 0xf1, 0x38, 0x15, 0xe3, 0x63, 0x63);
			
			public function HRESULT(IWMReaderAdvanced5 *self, uint32 dwOutputNum, IWMPlayerHook* pHook) SetPlayerHook;
		}
		[CRepr]
		public struct IWMReaderAdvanced6 : IWMReaderAdvanced5
		{
			public const new Guid IID = .(0x18a2e7f8, 0x428f, 0x4acd, 0x8a, 0x00, 0xe6, 0x46, 0x39, 0xbc, 0x93, 0xde);
			
			public function HRESULT(IWMReaderAdvanced6 *self, uint8* pbCertificate, uint32 cbCertificate, uint32 dwCertificateType, uint32 dwFlags, uint8* pbInitializationVector, uint32* pcbInitializationVector) SetProtectStreamSamples;
		}
		[CRepr]
		public struct IWMPlayerHook : IUnknown
		{
			public const new Guid IID = .(0xe5b7ca9a, 0x0f1c, 0x4f66, 0x90, 0x02, 0x74, 0xec, 0x50, 0xd8, 0xb3, 0x04);
			
			public function HRESULT(IWMPlayerHook *self) PreDecode;
		}
		[CRepr]
		public struct IWMReaderAllocatorEx : IUnknown
		{
			public const new Guid IID = .(0x9f762fa7, 0xa22e, 0x428d, 0x93, 0xc9, 0xac, 0x82, 0xf3, 0xaa, 0xfe, 0x5a);
			
			public function HRESULT(IWMReaderAllocatorEx *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForStreamEx;
			public function HRESULT(IWMReaderAllocatorEx *self, uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, uint32 dwFlags, uint64 cnsSampleTime, uint64 cnsSampleDuration, void* pvContext) AllocateForOutputEx;
		}
		[CRepr]
		public struct IWMReaderTypeNegotiation : IUnknown
		{
			public const new Guid IID = .(0xfdbe5592, 0x81a1, 0x41ea, 0x93, 0xbd, 0x73, 0x5c, 0xad, 0x1a, 0xdc, 0x05);
			
			public function HRESULT(IWMReaderTypeNegotiation *self, uint32 dwOutputNum, IWMOutputMediaProps* pOutput) TryOutputProps;
		}
		[CRepr]
		public struct IWMReaderCallbackAdvanced : IUnknown
		{
			public const new Guid IID = .(0x96406beb, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamNum, uint64 cnsSampleTime, uint64 cnsSampleDuration, uint32 dwFlags, INSSBuffer* pSample, void* pvContext) OnStreamSample;
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint64 cnsCurrentTime, void* pvContext) OnTime;
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamCount, uint16* pStreamNumbers, WMT_STREAM_SELECTION* pSelections, void* pvContext) OnStreamSelection;
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint32 dwOutputNum, WM_MEDIA_TYPE* pMediaType, void* pvContext) OnOutputPropsChanged;
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint16 wStreamNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForStream;
			public function HRESULT(IWMReaderCallbackAdvanced *self, uint32 dwOutputNum, uint32 cbBuffer, INSSBuffer** ppBuffer, void* pvContext) AllocateForOutput;
		}
		[CRepr]
		public struct IWMDRMReader : IUnknown
		{
			public const new Guid IID = .(0xd2827540, 0x3ee7, 0x432c, 0xb1, 0x4c, 0xdc, 0x17, 0xf0, 0x85, 0xd3, 0xb3);
			
			public function HRESULT(IWMDRMReader *self, uint32 dwFlags) AcquireLicense;
			public function HRESULT(IWMDRMReader *self) CancelLicenseAcquisition;
			public function HRESULT(IWMDRMReader *self, uint32 dwFlags) Individualize;
			public function HRESULT(IWMDRMReader *self) CancelIndividualization;
			public function HRESULT(IWMDRMReader *self) MonitorLicenseAcquisition;
			public function HRESULT(IWMDRMReader *self) CancelMonitorLicenseAcquisition;
			public function HRESULT(IWMDRMReader *self, PWSTR pwstrName, WMT_ATTR_DATATYPE dwType, uint8* pValue, uint16 cbLength) SetDRMProperty;
			public function HRESULT(IWMDRMReader *self, PWSTR pwstrName, WMT_ATTR_DATATYPE* pdwType, uint8* pValue, uint16* pcbLength) GetDRMProperty;
		}
		[CRepr]
		public struct IWMDRMReader2 : IWMDRMReader
		{
			public const new Guid IID = .(0xbefe7a75, 0x9f1d, 0x4075, 0xb9, 0xd9, 0xa3, 0xc3, 0x7b, 0xda, 0x49, 0xa0);
			
			public function HRESULT(IWMDRMReader2 *self, BOOL fEvaluate) SetEvaluateOutputLevelLicenses;
			public function HRESULT(IWMDRMReader2 *self, DRM_PLAY_OPL* pPlayOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) GetPlayOutputLevels;
			public function HRESULT(IWMDRMReader2 *self, DRM_COPY_OPL* pCopyOPL, uint32* pcbLength, uint32* pdwMinAppComplianceLevel) GetCopyOutputLevels;
			public function HRESULT(IWMDRMReader2 *self) TryNextLicense;
		}
		[CRepr]
		public struct IWMDRMReader3 : IWMDRMReader2
		{
			public const new Guid IID = .(0xe08672de, 0xf1e7, 0x4ff4, 0xa0, 0xa3, 0xfc, 0x4b, 0x08, 0xe4, 0xca, 0xf8);
			
			public function HRESULT(IWMDRMReader3 *self, Guid** ppGuids, uint32* pcGuids) GetInclusionList;
		}
		[CRepr]
		public struct IWMReaderPlaylistBurn : IUnknown
		{
			public const new Guid IID = .(0xf28c0300, 0x9baa, 0x4477, 0xa8, 0x46, 0x17, 0x44, 0xd9, 0xcb, 0xf5, 0x33);
			
			public function HRESULT(IWMReaderPlaylistBurn *self, uint32 cFiles, PWSTR* ppwszFilenames, IWMStatusCallback* pCallback, void* pvContext) InitPlaylistBurn;
			public function HRESULT(IWMReaderPlaylistBurn *self, uint32 cFiles, HRESULT* phrStati) GetInitResults;
			public function HRESULT(IWMReaderPlaylistBurn *self) Cancel;
			public function HRESULT(IWMReaderPlaylistBurn *self, HRESULT hrBurnResult) EndPlaylistBurn;
		}
		[CRepr]
		public struct IWMReaderNetworkConfig : IUnknown
		{
			public const new Guid IID = .(0x96406bec, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReaderNetworkConfig *self, uint64* pcnsBufferingTime) GetBufferingTime;
			public function HRESULT(IWMReaderNetworkConfig *self, uint64 cnsBufferingTime) SetBufferingTime;
			public function HRESULT(IWMReaderNetworkConfig *self, WM_PORT_NUMBER_RANGE* pRangeArray, uint32* pcRanges) GetUDPPortRanges;
			public function HRESULT(IWMReaderNetworkConfig *self, WM_PORT_NUMBER_RANGE* pRangeArray, uint32 cRanges) SetUDPPortRanges;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, WMT_PROXY_SETTINGS* pProxySetting) GetProxySettings;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, WMT_PROXY_SETTINGS ProxySetting) SetProxySettings;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, char16* pwszHostName, uint32* pcchHostName) GetProxyHostName;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, PWSTR pwszHostName) SetProxyHostName;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, uint32* pdwPort) GetProxyPort;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, uint32 dwPort) SetProxyPort;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, char16* pwszExceptionList, uint32* pcchExceptionList) GetProxyExceptionList;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, PWSTR pwszExceptionList) SetProxyExceptionList;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, BOOL* pfBypassForLocal) GetProxyBypassForLocal;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszProtocol, BOOL fBypassForLocal) SetProxyBypassForLocal;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfForceRerunDetection) GetForceRerunAutoProxyDetection;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL fForceRerunDetection) SetForceRerunAutoProxyDetection;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableMulticast) GetEnableMulticast;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableMulticast) SetEnableMulticast;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableHTTP) GetEnableHTTP;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableHTTP) SetEnableHTTP;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableUDP) GetEnableUDP;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableUDP) SetEnableUDP;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL* pfEnableTCP) GetEnableTCP;
			public function HRESULT(IWMReaderNetworkConfig *self, BOOL fEnableTCP) SetEnableTCP;
			public function HRESULT(IWMReaderNetworkConfig *self) ResetProtocolRollover;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32* pdwConnectionBandwidth) GetConnectionBandwidth;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32 dwConnectionBandwidth) SetConnectionBandwidth;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32* pcProtocols) GetNumProtocolsSupported;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32 dwProtocolNum, char16* pwszProtocolName, uint32* pcchProtocolName) GetSupportedProtocolName;
			public function HRESULT(IWMReaderNetworkConfig *self, PWSTR pwszUrl) AddLoggingUrl;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32 dwIndex, char16* pwszUrl, uint32* pcchUrl) GetLoggingUrl;
			public function HRESULT(IWMReaderNetworkConfig *self, uint32* pdwUrlCount) GetLoggingUrlCount;
			public function HRESULT(IWMReaderNetworkConfig *self) ResetLoggingUrlList;
		}
		[CRepr]
		public struct IWMReaderNetworkConfig2 : IWMReaderNetworkConfig
		{
			public const new Guid IID = .(0xd979a853, 0x042b, 0x4050, 0x83, 0x87, 0xc9, 0x39, 0xdb, 0x22, 0x01, 0x3f);
			
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableContentCaching) GetEnableContentCaching;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableContentCaching) SetEnableContentCaching;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableFastCache) GetEnableFastCache;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableFastCache) SetEnableFastCache;
			public function HRESULT(IWMReaderNetworkConfig2 *self, uint64* pcnsAccelDuration) GetAcceleratedStreamingDuration;
			public function HRESULT(IWMReaderNetworkConfig2 *self, uint64 cnsAccelDuration) SetAcceleratedStreamingDuration;
			public function HRESULT(IWMReaderNetworkConfig2 *self, uint32* pdwAutoReconnectLimit) GetAutoReconnectLimit;
			public function HRESULT(IWMReaderNetworkConfig2 *self, uint32 dwAutoReconnectLimit) SetAutoReconnectLimit;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableResends) GetEnableResends;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableResends) SetEnableResends;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL* pfEnableThinning) GetEnableThinning;
			public function HRESULT(IWMReaderNetworkConfig2 *self, BOOL fEnableThinning) SetEnableThinning;
			public function HRESULT(IWMReaderNetworkConfig2 *self, uint32* pdwMaxNetPacketSize) GetMaxNetPacketSize;
		}
		[CRepr]
		public struct IWMReaderStreamClock : IUnknown
		{
			public const new Guid IID = .(0x96406bed, 0x2b2b, 0x11d3, 0xb3, 0x6b, 0x00, 0xc0, 0x4f, 0x61, 0x08, 0xff);
			
			public function HRESULT(IWMReaderStreamClock *self, uint64* pcnsNow) GetTime;
			public function HRESULT(IWMReaderStreamClock *self, uint64 cnsWhen, void* pvParam, uint32* pdwTimerId) SetTimer;
			public function HRESULT(IWMReaderStreamClock *self, uint32 dwTimerId) KillTimer;
		}
		[CRepr]
		public struct IWMIndexer : IUnknown
		{
			public const new Guid IID = .(0x6d7cdc71, 0x9888, 0x11d3, 0x8e, 0xdc, 0x00, 0xc0, 0x4f, 0x61, 0x09, 0xcf);
			
			public function HRESULT(IWMIndexer *self, PWSTR pwszURL, IWMStatusCallback* pCallback, void* pvContext) StartIndexing;
			public function HRESULT(IWMIndexer *self) Cancel;
		}
		[CRepr]
		public struct IWMIndexer2 : IWMIndexer
		{
			public const new Guid IID = .(0xb70f1e42, 0x6255, 0x4df0, 0xa6, 0xb9, 0x02, 0xb2, 0x12, 0xd9, 0xe2, 0xbb);
			
			public function HRESULT(IWMIndexer2 *self, uint16 wStreamNum, WMT_INDEXER_TYPE nIndexerType, void* pvInterval, void* pvIndexType) Configure;
		}
		[CRepr]
		public struct IWMLicenseBackup : IUnknown
		{
			public const new Guid IID = .(0x05e5ac9f, 0x3fb6, 0x4508, 0xbb, 0x43, 0xa4, 0x06, 0x7b, 0xa1, 0xeb, 0xe8);
			
			public function HRESULT(IWMLicenseBackup *self, uint32 dwFlags, IWMStatusCallback* pCallback) BackupLicenses;
			public function HRESULT(IWMLicenseBackup *self) CancelLicenseBackup;
		}
		[CRepr]
		public struct IWMLicenseRestore : IUnknown
		{
			public const new Guid IID = .(0xc70b6334, 0xa22e, 0x4efb, 0xa2, 0x45, 0x15, 0xe6, 0x5a, 0x00, 0x4a, 0x13);
			
			public function HRESULT(IWMLicenseRestore *self, uint32 dwFlags, IWMStatusCallback* pCallback) RestoreLicenses;
			public function HRESULT(IWMLicenseRestore *self) CancelLicenseRestore;
		}
		[CRepr]
		public struct IWMBackupRestoreProps : IUnknown
		{
			public const new Guid IID = .(0x3c8e0da6, 0x996f, 0x4ff3, 0xa1, 0xaf, 0x48, 0x38, 0xf9, 0x37, 0x7e, 0x2e);
			
			public function HRESULT(IWMBackupRestoreProps *self, uint16* pcProps) GetPropCount;
			public function HRESULT(IWMBackupRestoreProps *self, uint16 wIndex, char16* pwszName, uint16* pcchNameLen, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetPropByIndex;
			public function HRESULT(IWMBackupRestoreProps *self, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint16* pcbLength) GetPropByName;
			public function HRESULT(IWMBackupRestoreProps *self, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint16 cbLength) SetProp;
			public function HRESULT(IWMBackupRestoreProps *self, PWSTR pcwszName) RemoveProp;
			public function HRESULT(IWMBackupRestoreProps *self) RemoveAllProps;
		}
		[CRepr]
		public struct IWMCodecInfo : IUnknown
		{
			public const new Guid IID = .(0xa970f41e, 0x34de, 0x4a98, 0xb3, 0xba, 0xe4, 0xb3, 0xca, 0x75, 0x28, 0xf0);
			
			public function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32* pcCodecs) GetCodecInfoCount;
			public function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32 dwCodecIndex, uint32* pcFormat) GetCodecFormatCount;
			public function HRESULT(IWMCodecInfo *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig) GetCodecFormat;
		}
		[CRepr]
		public struct IWMCodecInfo2 : IWMCodecInfo
		{
			public const new Guid IID = .(0xaa65e273, 0xb686, 0x4056, 0x91, 0xec, 0xdd, 0x76, 0x8d, 0x4d, 0xf7, 0x10);
			
			public function HRESULT(IWMCodecInfo2 *self, Guid* guidType, uint32 dwCodecIndex, char16* wszName, uint32* pcchName) GetCodecName;
			public function HRESULT(IWMCodecInfo2 *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, IWMStreamConfig** ppIStreamConfig, char16* wszDesc, uint32* pcchDesc) GetCodecFormatDesc;
		}
		[CRepr]
		public struct IWMCodecInfo3 : IWMCodecInfo2
		{
			public const new Guid IID = .(0x7e51f487, 0x4d93, 0x4f98, 0x8a, 0xb4, 0x27, 0xd0, 0x56, 0x5a, 0xdc, 0x51);
			
			public function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, uint32 dwFormatIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecFormatProp;
			public function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecProp;
			public function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE Type, uint8* pValue, uint32 dwSize) SetCodecEnumerationSetting;
			public function HRESULT(IWMCodecInfo3 *self, Guid* guidType, uint32 dwCodecIndex, PWSTR pszName, WMT_ATTR_DATATYPE* pType, uint8* pValue, uint32* pdwSize) GetCodecEnumerationSetting;
		}
		[CRepr]
		public struct IWMLanguageList : IUnknown
		{
			public const new Guid IID = .(0xdf683f00, 0x2d49, 0x4d8e, 0x92, 0xb7, 0xfb, 0x19, 0xf6, 0xa0, 0xdc, 0x57);
			
			public function HRESULT(IWMLanguageList *self, uint16* pwCount) GetLanguageCount;
			public function HRESULT(IWMLanguageList *self, uint16 wIndex, char16* pwszLanguageString, uint16* pcchLanguageStringLength) GetLanguageDetails;
			public function HRESULT(IWMLanguageList *self, PWSTR pwszLanguageString, uint16* pwIndex) AddLanguageByRFC1766String;
		}
		[CRepr]
		public struct IWMWriterPushSink : IWMWriterSink
		{
			public const new Guid IID = .(0xdc10e6a5, 0x072c, 0x467d, 0xbf, 0x57, 0x63, 0x30, 0xa9, 0xdd, 0xe1, 0x2a);
			
			public function HRESULT(IWMWriterPushSink *self, PWSTR pwszURL, PWSTR pwszTemplateURL, BOOL fAutoDestroy) Connect;
			public function HRESULT(IWMWriterPushSink *self) Disconnect;
			public function HRESULT(IWMWriterPushSink *self) EndSession;
		}
		[CRepr]
		public struct IWMDeviceRegistration : IUnknown
		{
			public const new Guid IID = .(0xf6211f03, 0x8d21, 0x4e94, 0x93, 0xe6, 0x85, 0x10, 0x80, 0x5f, 0x2d, 0x99);
			
			public function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) RegisterDevice;
			public function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber) UnregisterDevice;
			public function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint32* pcRegisteredDevices) GetRegistrationStats;
			public function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, IWMRegisteredDevice** ppDevice) GetFirstRegisteredDevice;
			public function HRESULT(IWMDeviceRegistration *self, IWMRegisteredDevice** ppDevice) GetNextRegisteredDevice;
			public function HRESULT(IWMDeviceRegistration *self, uint32 dwRegisterType, uint8* pbCertificate, uint32 cbCertificate, DRM_VAL16 SerialNumber, IWMRegisteredDevice** ppDevice) GetRegisteredDeviceByID;
		}
		[CRepr]
		public struct IWMRegisteredDevice : IUnknown
		{
			public const new Guid IID = .(0xa4503bec, 0x5508, 0x4148, 0x97, 0xac, 0xbf, 0xa7, 0x57, 0x60, 0xa7, 0x0d);
			
			public function HRESULT(IWMRegisteredDevice *self, DRM_VAL16* pSerialNumber) GetDeviceSerialNumber;
			public function HRESULT(IWMRegisteredDevice *self, INSSBuffer** ppCertificate) GetDeviceCertificate;
			public function HRESULT(IWMRegisteredDevice *self, uint32* pdwType) GetDeviceType;
			public function HRESULT(IWMRegisteredDevice *self, uint32* pcAttributes) GetAttributeCount;
			public function HRESULT(IWMRegisteredDevice *self, uint32 dwIndex, BSTR* pbstrName, BSTR* pbstrValue) GetAttributeByIndex;
			public function HRESULT(IWMRegisteredDevice *self, BSTR bstrName, BSTR* pbstrValue) GetAttributeByName;
			public function HRESULT(IWMRegisteredDevice *self, BSTR bstrName, BSTR bstrValue) SetAttributeByName;
			public function HRESULT(IWMRegisteredDevice *self, BOOL fApprove) Approve;
			public function HRESULT(IWMRegisteredDevice *self, BOOL* pfValid) IsValid;
			public function HRESULT(IWMRegisteredDevice *self, BOOL* pfApproved) IsApproved;
			public function HRESULT(IWMRegisteredDevice *self, BOOL* pfCompliant) IsWmdrmCompliant;
			public function HRESULT(IWMRegisteredDevice *self, BOOL* pfOpened) IsOpened;
			public function HRESULT(IWMRegisteredDevice *self) Open;
			public function HRESULT(IWMRegisteredDevice *self) Close;
		}
		[CRepr]
		public struct IWMProximityDetection : IUnknown
		{
			public const new Guid IID = .(0x6a9fd8ee, 0xb651, 0x4bf0, 0xb8, 0x49, 0x7d, 0x4e, 0xce, 0x79, 0xa2, 0xb1);
			
			public function HRESULT(IWMProximityDetection *self, uint8* pbRegistrationMsg, uint32 cbRegistrationMsg, uint8* pbLocalAddress, uint32 cbLocalAddress, uint32 dwExtraPortsAllowed, INSSBuffer** ppRegistrationResponseMsg, IWMStatusCallback* pCallback, void* pvContext) StartDetection;
		}
		[CRepr]
		public struct IWMDRMMessageParser : IUnknown
		{
			public const new Guid IID = .(0xa73a0072, 0x25a0, 0x4c99, 0xb4, 0xa5, 0xed, 0xe8, 0x10, 0x1a, 0x6c, 0x39);
			
			public function HRESULT(IWMDRMMessageParser *self, uint8* pbRegistrationReqMsg, uint32 cbRegistrationReqMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber) ParseRegistrationReqMsg;
			public function HRESULT(IWMDRMMessageParser *self, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppDeviceCert, DRM_VAL16* pDeviceSerialNumber, BSTR* pbstrAction) ParseLicenseRequestMsg;
		}
		[CRepr]
		public struct IWMDRMTranscryptor : IUnknown
		{
			public const new Guid IID = .(0x69059850, 0x6e6f, 0x4bb2, 0x80, 0x6f, 0x71, 0x86, 0x3d, 0xdf, 0xc4, 0x71);
			
			public function HRESULT(IWMDRMTranscryptor *self, BSTR bstrFileName, uint8* pbLicenseRequestMsg, uint32 cbLicenseRequestMsg, INSSBuffer** ppLicenseResponseMsg, IWMStatusCallback* pCallback, void* pvContext) Initialize;
			public function HRESULT(IWMDRMTranscryptor *self, uint64 hnsTime) Seek;
			public function HRESULT(IWMDRMTranscryptor *self, uint8* pbData, uint32* pcbData) Read;
			public function HRESULT(IWMDRMTranscryptor *self) Close;
		}
		[CRepr]
		public struct IWMDRMTranscryptor2 : IWMDRMTranscryptor
		{
			public const new Guid IID = .(0xe0da439f, 0xd331, 0x496a, 0xbe, 0xce, 0x18, 0xe5, 0xba, 0xc5, 0xdd, 0x23);
			
			public function HRESULT(IWMDRMTranscryptor2 *self, uint64 cnsStartTime, uint64 cnsDuration, float flRate, BOOL fIncludeFileHeader) SeekEx;
			public function HRESULT(IWMDRMTranscryptor2 *self, BOOL fEnable) ZeroAdjustTimestamps;
			public function HRESULT(IWMDRMTranscryptor2 *self, uint64* pcnsTime) GetSeekStartTime;
			public function HRESULT(IWMDRMTranscryptor2 *self, uint64* pcnsDuration) GetDuration;
		}
		[CRepr]
		public struct IWMDRMTranscryptionManager : IUnknown
		{
			public const new Guid IID = .(0xb1a887b2, 0xa4f0, 0x407a, 0xb0, 0x2e, 0xef, 0xbd, 0x23, 0xbb, 0xec, 0xdf);
			
			public function HRESULT(IWMDRMTranscryptionManager *self, IWMDRMTranscryptor** ppTranscryptor) CreateTranscryptor;
		}
		[CRepr]
		public struct IWMWatermarkInfo : IUnknown
		{
			public const new Guid IID = .(0x6f497062, 0xf2e2, 0x4624, 0x8e, 0xa7, 0x9d, 0xd4, 0x0d, 0x81, 0xfc, 0x8d);
			
			public function HRESULT(IWMWatermarkInfo *self, WMT_WATERMARK_ENTRY_TYPE wmetType, uint32* pdwCount) GetWatermarkEntryCount;
			public function HRESULT(IWMWatermarkInfo *self, WMT_WATERMARK_ENTRY_TYPE wmetType, uint32 dwEntryNum, WMT_WATERMARK_ENTRY* pEntry) GetWatermarkEntry;
		}
		[CRepr]
		public struct IWMReaderAccelerator : IUnknown
		{
			public const new Guid IID = .(0xbddc4d08, 0x944d, 0x4d52, 0xa6, 0x12, 0x46, 0xc3, 0xfd, 0xa0, 0x7d, 0xd4);
			
			public function HRESULT(IWMReaderAccelerator *self, uint32 dwOutputNum, Guid* riid, void** ppvCodecInterface) GetCodecInterface;
			public function HRESULT(IWMReaderAccelerator *self, uint32 dwOutputNum, WM_MEDIA_TYPE* pSubtype) Notify;
		}
		[CRepr]
		public struct IWMReaderTimecode : IUnknown
		{
			public const new Guid IID = .(0xf369e2f0, 0xe081, 0x4fe6, 0x84, 0x50, 0xb8, 0x10, 0xb2, 0xf4, 0x10, 0xd1);
			
			public function HRESULT(IWMReaderTimecode *self, uint16 wStreamNum, uint16* pwRangeCount) GetTimecodeRangeCount;
			public function HRESULT(IWMReaderTimecode *self, uint16 wStreamNum, uint16 wRangeNum, uint32* pStartTimecode, uint32* pEndTimecode) GetTimecodeRangeBounds;
		}
		[CRepr]
		public struct IWMAddressAccess : IUnknown
		{
			public const new Guid IID = .(0xbb3c6389, 0x1633, 0x4e92, 0xaf, 0x14, 0x9f, 0x31, 0x73, 0xba, 0x39, 0xd0);
			
			public function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32* pcEntries) GetAccessEntryCount;
			public function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32 dwEntryNum, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) GetAccessEntry;
			public function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, WM_ADDRESS_ACCESSENTRY* pAddrAccessEntry) AddAccessEntry;
			public function HRESULT(IWMAddressAccess *self, WM_AETYPE aeType, uint32 dwEntryNum) RemoveAccessEntry;
		}
		[CRepr]
		public struct IWMAddressAccess2 : IWMAddressAccess
		{
			public const new Guid IID = .(0x65a83fc2, 0x3e98, 0x4d4d, 0x81, 0xb5, 0x2a, 0x74, 0x28, 0x86, 0xb3, 0x3d);
			
			public function HRESULT(IWMAddressAccess2 *self, WM_AETYPE aeType, uint32 dwEntryNum, BSTR* pbstrAddress, BSTR* pbstrMask) GetAccessEntryEx;
			public function HRESULT(IWMAddressAccess2 *self, WM_AETYPE aeType, BSTR bstrAddress, BSTR bstrMask) AddAccessEntryEx;
		}
		[CRepr]
		public struct IWMImageInfo : IUnknown
		{
			public const new Guid IID = .(0x9f0aa3b6, 0x7267, 0x4d89, 0x88, 0xf2, 0xba, 0x91, 0x5a, 0xa5, 0xc4, 0xc6);
			
			public function HRESULT(IWMImageInfo *self, uint32* pcImages) GetImageCount;
			public function HRESULT(IWMImageInfo *self, uint32 wIndex, uint16* pcchMIMEType, char16* pwszMIMEType, uint16* pcchDescription, char16* pwszDescription, uint16* pImageType, uint32* pcbImageData, uint8* pbImageData) GetImage;
		}
		[CRepr]
		public struct IWMLicenseRevocationAgent : IUnknown
		{
			public const new Guid IID = .(0x6967f2c9, 0x4e26, 0x4b57, 0x88, 0x94, 0x79, 0x98, 0x80, 0xf7, 0xac, 0x7b);
			
			public function HRESULT(IWMLicenseRevocationAgent *self, uint8* pMachineID, uint32 dwMachineIDLength, uint8* pChallenge, uint32 dwChallengeLength, uint8* pChallengeOutput, uint32* pdwChallengeOutputLength) GetLRBChallenge;
			public function HRESULT(IWMLicenseRevocationAgent *self, uint8* pSignedLRB, uint32 dwSignedLRBLength, uint8* pSignedACK, uint32* pdwSignedACKLength) ProcessLRB;
		}
		[CRepr]
		public struct IWMAuthorizer : IUnknown
		{
			public const new Guid IID = .(0xd9b67d36, 0xa9ad, 0x4eb4, 0xba, 0xef, 0xdb, 0x28, 0x4e, 0xf5, 0x50, 0x4c);
			
			public function HRESULT(IWMAuthorizer *self, uint32* pcCerts) GetCertCount;
			public function HRESULT(IWMAuthorizer *self, uint32 dwIndex, uint8** ppbCertData) GetCert;
			public function HRESULT(IWMAuthorizer *self, uint32 dwCertIndex, uint8* pbSharedData, uint8* pbCert, uint8** ppbSharedData) GetSharedData;
		}
		[CRepr]
		public struct IWMSecureChannel : IWMAuthorizer
		{
			public const new Guid IID = .(0x2720598a, 0xd0f2, 0x4189, 0xbd, 0x10, 0x91, 0xc4, 0x6e, 0xf0, 0x93, 0x6f);
			
			public function HRESULT(IWMSecureChannel *self, IWMAuthorizer* pCert) WMSC_AddCertificate;
			public function HRESULT(IWMSecureChannel *self, uint8* pbCertSig, uint32 cbCertSig) WMSC_AddSignature;
			public function HRESULT(IWMSecureChannel *self, IWMSecureChannel* pOtherSide) WMSC_Connect;
			public function HRESULT(IWMSecureChannel *self, BOOL* pfIsConnected) WMSC_IsConnected;
			public function HRESULT(IWMSecureChannel *self) WMSC_Disconnect;
			public function HRESULT(IWMSecureChannel *self, uint8** ppbCertificate, uint32* pdwSignature) WMSC_GetValidCertificate;
			public function HRESULT(IWMSecureChannel *self, uint8* pbData, uint32 cbData) WMSC_Encrypt;
			public function HRESULT(IWMSecureChannel *self, uint8* pbData, uint32 cbData) WMSC_Decrypt;
			public function HRESULT(IWMSecureChannel *self) WMSC_Lock;
			public function HRESULT(IWMSecureChannel *self) WMSC_Unlock;
			public function HRESULT(IWMSecureChannel *self, uint32 dwCertIndex, uint8* pbSharedData) WMSC_SetSharedData;
		}
		[CRepr]
		public struct IWMGetSecureChannel : IUnknown
		{
			public const new Guid IID = .(0x94bc0598, 0xc3d2, 0x11d3, 0xbe, 0xdf, 0x00, 0xc0, 0x4f, 0x61, 0x29, 0x86);
			
			public function HRESULT(IWMGetSecureChannel *self, IWMSecureChannel** ppPeer) GetPeerSecureChannelInterface;
		}
		[CRepr]
		public struct INSNetSourceCreator : IUnknown
		{
			public const new Guid IID = .(0x0c0e4080, 0x9081, 0x11d2, 0xbe, 0xec, 0x00, 0x60, 0x08, 0x2f, 0x20, 0x54);
			
			public function HRESULT(INSNetSourceCreator *self) Initialize;
			public function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, IUnknown* pMonitor, uint8* pData, IUnknown* pUserContext, IUnknown* pCallback, uint64 qwContext) CreateNetSource;
			public function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, IUnknown** ppPropertiesNode) GetNetSourceProperties;
			public function HRESULT(INSNetSourceCreator *self, IUnknown** ppSharedNamespace) GetNetSourceSharedNamespace;
			public function HRESULT(INSNetSourceCreator *self, PWSTR pszStreamName, VARIANT* pVal) GetNetSourceAdminInterface;
			public function HRESULT(INSNetSourceCreator *self, uint32* pcProtocols) GetNumProtocolsSupported;
			public function HRESULT(INSNetSourceCreator *self, uint32 dwProtocolNum, PWSTR pwszProtocolName, uint16* pcchProtocolName) GetProtocolName;
			public function HRESULT(INSNetSourceCreator *self) Shutdown;
		}
		[CRepr]
		public struct IWMPlayerTimestampHook : IUnknown
		{
			public const new Guid IID = .(0x28580dda, 0xd98e, 0x48d0, 0xb7, 0xae, 0x69, 0xe4, 0x73, 0xa0, 0x28, 0x25);
			
			public function HRESULT(IWMPlayerTimestampHook *self, int64 rtIn, int64* prtOut) MapTimestamp;
		}
		[CRepr]
		public struct IWMCodecAMVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0xd98ee251, 0x34e0, 0x4a2d, 0x93, 0x12, 0x9b, 0x4c, 0x78, 0x8d, 0x9f, 0xa1);
			
			public function HRESULT(IWMCodecAMVideoAccelerator *self, IAMVideoAccelerator* pIAMVA) SetAcceleratorInterface;
			public function HRESULT(IWMCodecAMVideoAccelerator *self, AM_MEDIA_TYPE* pMediaType) NegotiateConnection;
			public function HRESULT(IWMCodecAMVideoAccelerator *self, IWMPlayerTimestampHook* pHook) SetPlayerNotify;
		}
		[CRepr]
		public struct IWMCodecVideoAccelerator : IUnknown
		{
			public const new Guid IID = .(0x990641b0, 0x739f, 0x4e94, 0xa8, 0x08, 0x98, 0x88, 0xda, 0x8f, 0x75, 0xaf);
			
			public function HRESULT(IWMCodecVideoAccelerator *self, IAMVideoAccelerator* pIAMVA, AM_MEDIA_TYPE* pMediaType) NegotiateConnection;
			public function HRESULT(IWMCodecVideoAccelerator *self, IWMPlayerTimestampHook* pHook) SetPlayerNotify;
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource : IUnknown
		{
			public const new Guid IID = .(0x8bb23e5f, 0xd127, 0x4afb, 0x8d, 0x02, 0xae, 0x5b, 0x66, 0xd5, 0x4c, 0x78);
			
			public function HRESULT(IWMSInternalAdminNetSource *self, IUnknown* pSharedNamespace, IUnknown* pNamespaceNode, INSNetSourceCreator* pNetSourceCreator, BOOL fEmbeddedInServer) Initialize;
			public function HRESULT(IWMSInternalAdminNetSource *self, INSNetSourceCreator** ppNetSourceCreator) GetNetSourceCreator;
			public function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentials;
			public function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentials;
			public function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrRealm) DeleteCredentials;
			public function HRESULT(IWMSInternalAdminNetSource *self, uint32* lpdwFlags) GetCredentialFlags;
			public function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwFlags) SetCredentialFlags;
			public function HRESULT(IWMSInternalAdminNetSource *self, BSTR bstrProtocol, BSTR bstrHost, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) FindProxyForURL;
			public function HRESULT(IWMSInternalAdminNetSource *self, HRESULT hrParam, uint32 dwProxyContext) RegisterProxyFailure;
			public function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwProxyContext) ShutdownProxyContext;
			public function HRESULT(IWMSInternalAdminNetSource *self, uint32 dwProxyContext, BOOL* pfIsUsingIE) IsUsingIE;
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource2 : IUnknown
		{
			public const new Guid IID = .(0xe74d58c3, 0xcf77, 0x4b51, 0xaf, 0x17, 0x74, 0x46, 0x87, 0xc4, 0x3e, 0xae);
			
			public function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood) SetCredentialsEx;
			public function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentialsEx;
			public function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy) DeleteCredentialsEx;
			public function HRESULT(IWMSInternalAdminNetSource2 *self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint32* pdwProxyContext) FindProxyForURLEx;
		}
		[CRepr]
		public struct IWMSInternalAdminNetSource3 : IWMSInternalAdminNetSource2
		{
			public const new Guid IID = .(0x6b63d08e, 0x4590, 0x44af, 0x9e, 0xb3, 0x57, 0xff, 0x1e, 0x73, 0xbf, 0x80);
			
			public function HRESULT(IWMSInternalAdminNetSource3 *self, IUnknown** ppNetSourceCreator) GetNetSourceCreator2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrProtocol, BSTR bstrHost, BSTR bstrUrl, BOOL* pfProxyEnabled, BSTR* pbstrProxyServer, uint32* pdwProxyPort, uint64* pqwProxyContext) FindProxyForURLEx2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, HRESULT hrParam, uint64 qwProxyContext) RegisterProxyFailure2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, uint64 qwProxyContext) ShutdownProxyContext2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, uint64 qwProxyContext, BOOL* pfIsUsingIE) IsUsingIE2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BSTR bstrName, BSTR bstrPassword, BOOL fPersist, BOOL fConfirmedGood, BOOL fClearTextAuthentication) SetCredentialsEx2;
			public function HRESULT(IWMSInternalAdminNetSource3 *self, BSTR bstrRealm, BSTR bstrUrl, BOOL fProxy, BOOL fClearTextAuthentication, NETSOURCE_URLCREDPOLICY_SETTINGS* pdwUrlPolicy, BSTR* pbstrName, BSTR* pbstrPassword, BOOL* pfConfirmedGood) GetCredentialsEx2;
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
