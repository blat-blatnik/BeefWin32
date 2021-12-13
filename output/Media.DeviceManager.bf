using System;

// namespace Media.DeviceManager
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 IOCTL_MTP_CUSTOM_COMMAND = 827348045;
		public const uint32 MTP_NEXTPHASE_READ_DATA = 1;
		public const uint32 MTP_NEXTPHASE_WRITE_DATA = 2;
		public const uint32 MTP_NEXTPHASE_NO_DATA = 3;
		public const uint32 RSA_KEY_LEN = 64;
		public const uint32 SAC_SESSION_KEYLEN = 8;
		public const uint32 SAC_PROTOCOL_WMDM = 1;
		public const uint32 SAC_PROTOCOL_V1 = 2;
		public const uint32 SAC_CERT_X509 = 1;
		public const uint32 SAC_CERT_V1 = 2;
		public const Guid WMDM_DEVICE_PROTOCOL_MTP = .(0x979e54e5, 0x0afc, 0x4604, 0x8d, 0x93, 0xdc, 0x79, 0x8a, 0x4b, 0xcf, 0x45);
		public const Guid WMDM_DEVICE_PROTOCOL_RAPI = .(0x2a11ed91, 0x8c8f, 0x41e4, 0x82, 0xd1, 0x83, 0x86, 0xe0, 0x03, 0x56, 0x1c);
		public const Guid WMDM_DEVICE_PROTOCOL_MSC = .(0xa4d2c26c, 0xa881, 0x44bb, 0xbd, 0x5d, 0x1f, 0x70, 0x3c, 0x71, 0xf7, 0xa9);
		public const Guid WMDM_SERVICE_PROVIDER_VENDOR_MICROSOFT = .(0x7de8686d, 0x78ee, 0x43ea, 0xa4, 0x96, 0xc6, 0x25, 0xac, 0x91, 0xcc, 0x5d);
		public const uint32 WMDMID_LENGTH = 128;
		public const uint32 WMDM_MAC_LENGTH = 8;
		public const int32 WMDM_S_NOT_ALL_PROPERTIES_APPLIED = 282625;
		public const int32 WMDM_S_NOT_ALL_PROPERTIES_RETRIEVED = 282626;
		public const int32 WMDM_E_BUSY = -2147201024;
		public const int32 WMDM_E_INTERFACEDEAD = -2147201023;
		public const int32 WMDM_E_INVALIDTYPE = -2147201022;
		public const int32 WMDM_E_PROCESSFAILED = -2147201021;
		public const int32 WMDM_E_NOTSUPPORTED = -2147201020;
		public const int32 WMDM_E_NOTCERTIFIED = -2147201019;
		public const int32 WMDM_E_NORIGHTS = -2147201018;
		public const int32 WMDM_E_CALL_OUT_OF_SEQUENCE = -2147201017;
		public const int32 WMDM_E_BUFFERTOOSMALL = -2147201016;
		public const int32 WMDM_E_MOREDATA = -2147201015;
		public const int32 WMDM_E_MAC_CHECK_FAILED = -2147201014;
		public const int32 WMDM_E_USER_CANCELLED = -2147201013;
		public const int32 WMDM_E_SDMI_TRIGGER = -2147201012;
		public const int32 WMDM_E_SDMI_NOMORECOPIES = -2147201011;
		public const int32 WMDM_E_REVOKED = -2147201010;
		public const int32 WMDM_E_LICENSE_NOTEXIST = -2147201009;
		public const int32 WMDM_E_INCORRECT_APPSEC = -2147201008;
		public const int32 WMDM_E_INCORRECT_RIGHTS = -2147201007;
		public const int32 WMDM_E_LICENSE_EXPIRED = -2147201006;
		public const int32 WMDM_E_CANTOPEN_PMSN_SERVICE_PIPE = -2147201005;
		public const int32 WMDM_E_TOO_MANY_SESSIONS = -2147201005;
		public const uint32 WMDM_WMDM_REVOKED = 1;
		public const uint32 WMDM_APP_REVOKED = 2;
		public const uint32 WMDM_SP_REVOKED = 4;
		public const uint32 WMDM_SCP_REVOKED = 8;
		public const uint32 WMDM_GET_FORMAT_SUPPORT_AUDIO = 1;
		public const uint32 WMDM_GET_FORMAT_SUPPORT_VIDEO = 2;
		public const uint32 WMDM_GET_FORMAT_SUPPORT_FILE = 4;
		public const uint32 WMDM_RIGHTS_PLAYBACKCOUNT = 1;
		public const uint32 WMDM_RIGHTS_EXPIRATIONDATE = 2;
		public const uint32 WMDM_RIGHTS_GROUPID = 4;
		public const uint32 WMDM_RIGHTS_FREESERIALIDS = 8;
		public const uint32 WMDM_RIGHTS_NAMEDSERIALIDS = 16;
		public const uint32 WMDM_DEVICE_TYPE_PLAYBACK = 1;
		public const uint32 WMDM_DEVICE_TYPE_RECORD = 2;
		public const uint32 WMDM_DEVICE_TYPE_DECODE = 4;
		public const uint32 WMDM_DEVICE_TYPE_ENCODE = 8;
		public const uint32 WMDM_DEVICE_TYPE_STORAGE = 16;
		public const uint32 WMDM_DEVICE_TYPE_VIRTUAL = 32;
		public const uint32 WMDM_DEVICE_TYPE_SDMI = 64;
		public const uint32 WMDM_DEVICE_TYPE_NONSDMI = 128;
		public const uint32 WMDM_DEVICE_TYPE_NONREENTRANT = 256;
		public const uint32 WMDM_DEVICE_TYPE_FILELISTRESYNC = 512;
		public const uint32 WMDM_DEVICE_TYPE_VIEW_PREF_METADATAVIEW = 1024;
		public const uint32 WMDM_POWER_CAP_BATTERY = 1;
		public const uint32 WMDM_POWER_CAP_EXTERNAL = 2;
		public const uint32 WMDM_POWER_IS_BATTERY = 4;
		public const uint32 WMDM_POWER_IS_EXTERNAL = 8;
		public const uint32 WMDM_POWER_PERCENT_AVAILABLE = 16;
		public const uint32 WMDM_STATUS_READY = 1;
		public const uint32 WMDM_STATUS_BUSY = 2;
		public const uint32 WMDM_STATUS_DEVICE_NOTPRESENT = 4;
		public const uint32 WMDM_STATUS_DEVICECONTROL_PLAYING = 8;
		public const uint32 WMDM_STATUS_DEVICECONTROL_RECORDING = 16;
		public const uint32 WMDM_STATUS_DEVICECONTROL_PAUSED = 32;
		public const uint32 WMDM_STATUS_DEVICECONTROL_REMOTE = 64;
		public const uint32 WMDM_STATUS_DEVICECONTROL_STREAM = 128;
		public const uint32 WMDM_STATUS_STORAGE_NOTPRESENT = 256;
		public const uint32 WMDM_STATUS_STORAGE_INITIALIZING = 512;
		public const uint32 WMDM_STATUS_STORAGE_BROKEN = 1024;
		public const uint32 WMDM_STATUS_STORAGE_NOTSUPPORTED = 2048;
		public const uint32 WMDM_STATUS_STORAGE_UNFORMATTED = 4096;
		public const uint32 WMDM_STATUS_STORAGECONTROL_INSERTING = 8192;
		public const uint32 WMDM_STATUS_STORAGECONTROL_DELETING = 16384;
		public const uint32 WMDM_STATUS_STORAGECONTROL_APPENDING = 32768;
		public const uint32 WMDM_STATUS_STORAGECONTROL_MOVING = 65536;
		public const uint32 WMDM_STATUS_STORAGECONTROL_READING = 131072;
		public const uint32 WMDM_DEVICECAP_CANPLAY = 1;
		public const uint32 WMDM_DEVICECAP_CANSTREAMPLAY = 2;
		public const uint32 WMDM_DEVICECAP_CANRECORD = 4;
		public const uint32 WMDM_DEVICECAP_CANSTREAMRECORD = 8;
		public const uint32 WMDM_DEVICECAP_CANPAUSE = 16;
		public const uint32 WMDM_DEVICECAP_CANRESUME = 32;
		public const uint32 WMDM_DEVICECAP_CANSTOP = 64;
		public const uint32 WMDM_DEVICECAP_CANSEEK = 128;
		public const uint32 WMDM_DEVICECAP_HASSECURECLOCK = 256;
		public const uint32 WMDM_SEEK_REMOTECONTROL = 1;
		public const uint32 WMDM_SEEK_STREAMINGAUDIO = 2;
		public const uint32 WMDM_STORAGE_ATTR_FILESYSTEM = 1;
		public const uint32 WMDM_STORAGE_ATTR_REMOVABLE = 2;
		public const uint32 WMDM_STORAGE_ATTR_NONREMOVABLE = 4;
		public const uint32 WMDM_FILE_ATTR_FOLDER = 8;
		public const uint32 WMDM_FILE_ATTR_LINK = 16;
		public const uint32 WMDM_FILE_ATTR_FILE = 32;
		public const uint32 WMDM_FILE_ATTR_VIDEO = 64;
		public const uint32 WMDM_STORAGE_ATTR_CANEDITMETADATA = 128;
		public const uint32 WMDM_STORAGE_ATTR_FOLDERS = 256;
		public const uint32 WMDM_FILE_ATTR_AUDIO = 4096;
		public const uint32 WMDM_FILE_ATTR_DATA = 8192;
		public const uint32 WMDM_FILE_ATTR_CANPLAY = 16384;
		public const uint32 WMDM_FILE_ATTR_CANDELETE = 32768;
		public const uint32 WMDM_FILE_ATTR_CANMOVE = 65536;
		public const uint32 WMDM_FILE_ATTR_CANRENAME = 131072;
		public const uint32 WMDM_FILE_ATTR_CANREAD = 262144;
		public const uint32 WMDM_FILE_ATTR_MUSIC = 524288;
		public const uint32 WMDM_FILE_CREATE_OVERWRITE = 1048576;
		public const uint32 WMDM_FILE_ATTR_AUDIOBOOK = 2097152;
		public const uint32 WMDM_FILE_ATTR_HIDDEN = 4194304;
		public const uint32 WMDM_FILE_ATTR_SYSTEM = 8388608;
		public const uint32 WMDM_FILE_ATTR_READONLY = 16777216;
		public const uint32 WMDM_STORAGE_ATTR_HAS_FOLDERS = 33554432;
		public const uint32 WMDM_STORAGE_ATTR_HAS_FILES = 67108864;
		public const uint32 WMDM_STORAGE_IS_DEFAULT = 134217728;
		public const uint32 WMDM_STORAGE_CONTAINS_DEFAULT = 268435456;
		public const uint32 WMDM_STORAGE_ATTR_VIRTUAL = 536870912;
		public const uint32 WMDM_STORAGECAP_FOLDERSINROOT = 1;
		public const uint32 WMDM_STORAGECAP_FILESINROOT = 2;
		public const uint32 WMDM_STORAGECAP_FOLDERSINFOLDERS = 4;
		public const uint32 WMDM_STORAGECAP_FILESINFOLDERS = 8;
		public const uint32 WMDM_STORAGECAP_FOLDERLIMITEXISTS = 16;
		public const uint32 WMDM_STORAGECAP_FILELIMITEXISTS = 32;
		public const uint32 WMDM_STORAGECAP_NOT_INITIALIZABLE = 64;
		public const uint32 WMDM_MODE_BLOCK = 1;
		public const uint32 WMDM_MODE_THREAD = 2;
		public const uint32 WMDM_CONTENT_FILE = 4;
		public const uint32 WMDM_CONTENT_FOLDER = 8;
		public const uint32 WMDM_CONTENT_OPERATIONINTERFACE = 16;
		public const uint32 WMDM_MODE_QUERY = 32;
		public const uint32 WMDM_MODE_PROGRESS = 64;
		public const uint32 WMDM_MODE_TRANSFER_PROTECTED = 128;
		public const uint32 WMDM_MODE_TRANSFER_UNPROTECTED = 256;
		public const uint32 WMDM_STORAGECONTROL_INSERTBEFORE = 512;
		public const uint32 WMDM_STORAGECONTROL_INSERTAFTER = 1024;
		public const uint32 WMDM_STORAGECONTROL_INSERTINTO = 2048;
		public const uint32 WMDM_MODE_RECURSIVE = 4096;
		public const uint32 WMDM_RIGHTS_PLAY_ON_PC = 1;
		public const uint32 WMDM_RIGHTS_COPY_TO_NON_SDMI_DEVICE = 2;
		public const uint32 WMDM_RIGHTS_COPY_TO_CD = 8;
		public const uint32 WMDM_RIGHTS_COPY_TO_SDMI_DEVICE = 16;
		public const uint32 WMDM_SEEK_BEGIN = 1;
		public const uint32 WMDM_SEEK_CURRENT = 2;
		public const uint32 WMDM_SEEK_END = 8;
		public const uint32 DO_NOT_VIRTUALIZE_STORAGES_AS_DEVICES = 1;
		public const uint32 ALLOW_OUTOFBAND_NOTIFICATION = 2;
		public const uint32 MDSP_READ = 1;
		public const uint32 MDSP_WRITE = 2;
		public const uint32 MDSP_SEEK_BOF = 1;
		public const uint32 MDSP_SEEK_CUR = 2;
		public const uint32 MDSP_SEEK_EOF = 4;
		public const int32 WMDM_SCP_EXAMINE_EXTENSION = 1;
		public const int32 WMDM_SCP_EXAMINE_DATA = 2;
		public const int32 WMDM_SCP_DECIDE_DATA = 8;
		public const int32 WMDM_SCP_PROTECTED_OUTPUT = 16;
		public const int32 WMDM_SCP_UNPROTECTED_OUTPUT = 32;
		public const int32 WMDM_SCP_RIGHTS_DATA = 64;
		public const int32 WMDM_SCP_TRANSFER_OBJECTDATA = 32;
		public const int32 WMDM_SCP_NO_MORE_CHANGES = 64;
		public const int32 WMDM_SCP_DRMINFO_NOT_DRMPROTECTED = 0;
		public const int32 WMDM_SCP_DRMINFO_V1HEADER = 1;
		public const int32 WMDM_SCP_DRMINFO_V2HEADER = 2;
		public const Guid SCP_EVENTID_ACQSECURECLOCK = .(0x86248cc9, 0x4a59, 0x43e2, 0x91, 0x46, 0x48, 0xa7, 0xf3, 0xf4, 0x14, 0x0c);
		public const Guid SCP_EVENTID_NEEDTOINDIV = .(0x87a507c7, 0xb469, 0x4386, 0xb9, 0x76, 0xd5, 0xd1, 0xce, 0x53, 0x8a, 0x6f);
		public const Guid SCP_EVENTID_DRMINFO = .(0x213dd287, 0x41d2, 0x432b, 0x9e, 0x3f, 0x3b, 0x4f, 0x7b, 0x35, 0x81, 0xdd);
		public const Guid SCP_PARAMID_DRMVERSION = .(0x41d0155d, 0x7cc7, 0x4217, 0xad, 0xa9, 0x00, 0x50, 0x74, 0x62, 0x4d, 0xa4);
		public const uint32 SAC_MAC_LEN = 8;
		public const uint32 WMDM_LOG_SEV_INFO = 1;
		public const uint32 WMDM_LOG_SEV_WARN = 2;
		public const uint32 WMDM_LOG_SEV_ERROR = 4;
		public const uint32 WMDM_LOG_NOTIMESTAMP = 16;
		public const String g_wszWMDMFileName = "WMDM/FileName";
		public const String g_wszWMDMFormatCode = "WMDM/FormatCode";
		public const String g_wszWMDMLastModifiedDate = "WMDM/LastModifiedDate";
		public const String g_wszWMDMFileCreationDate = "WMDM/FileCreationDate";
		public const String g_wszWMDMFileSize = "WMDM/FileSize";
		public const String g_wszWMDMFileAttributes = "WMDM/FileAttributes";
		public const String g_wszAudioWAVECodec = "WMDM/AudioWAVECodec";
		public const String g_wszVideoFourCCCodec = "WMDM/VideoFourCCCodec";
		public const String g_wszWMDMTitle = "WMDM/Title";
		public const String g_wszWMDMAuthor = "WMDM/Author";
		public const String g_wszWMDMDescription = "WMDM/Description";
		public const String g_wszWMDMIsProtected = "WMDM/IsProtected";
		public const String g_wszWMDMAlbumTitle = "WMDM/AlbumTitle";
		public const String g_wszWMDMAlbumArtist = "WMDM/AlbumArtist";
		public const String g_wszWMDMTrack = "WMDM/Track";
		public const String g_wszWMDMGenre = "WMDM/Genre";
		public const String g_wszWMDMTrackMood = "WMDM/TrackMood";
		public const String g_wszWMDMAlbumCoverFormat = "WMDM/AlbumCoverFormat";
		public const String g_wszWMDMAlbumCoverSize = "WMDM/AlbumCoverSize";
		public const String g_wszWMDMAlbumCoverHeight = "WMDM/AlbumCoverHeight";
		public const String g_wszWMDMAlbumCoverWidth = "WMDM/AlbumCoverWidth";
		public const String g_wszWMDMAlbumCoverDuration = "WMDM/AlbumCoverDuration";
		public const String g_wszWMDMAlbumCoverData = "WMDM/AlbumCoverData";
		public const String g_wszWMDMYear = "WMDM/Year";
		public const String g_wszWMDMComposer = "WMDM/Composer";
		public const String g_wszWMDMCodec = "WMDM/Codec";
		public const String g_wszWMDMDRMId = "WMDM/DRMId";
		public const String g_wszWMDMBitrate = "WMDM/Bitrate";
		public const String g_wszWMDMBitRateType = "WMDM/BitRateType";
		public const String g_wszWMDMSampleRate = "WMDM/SampleRate";
		public const String g_wszWMDMNumChannels = "WMDM/NumChannels";
		public const String g_wszWMDMBlockAlignment = "WMDM/BlockAlignment";
		public const String g_wszWMDMAudioBitDepth = "WMDM/AudioBitDepth";
		public const String g_wszWMDMTotalBitrate = "WMDM/TotalBitrate";
		public const String g_wszWMDMVideoBitrate = "WMDM/VideoBitrate";
		public const String g_wszWMDMFrameRate = "WMDM/FrameRate";
		public const String g_wszWMDMScanType = "WMDM/ScanType";
		public const String g_wszWMDMKeyFrameDistance = "WMDM/KeyFrameDistance";
		public const String g_wszWMDMBufferSize = "WMDM/BufferSize";
		public const String g_wszWMDMQualitySetting = "WMDM/QualitySetting";
		public const String g_wszWMDMEncodingProfile = "WMDM/EncodingProfile";
		public const String g_wszWMDMDuration = "WMDM/Duration";
		public const String g_wszWMDMAlbumArt = "WMDM/AlbumArt";
		public const String g_wszWMDMBuyNow = "WMDM/BuyNow";
		public const String g_wszWMDMNonConsumable = "WMDM/NonConsumable";
		public const String g_wszWMDMediaClassPrimaryID = "WMDM/MediaClassPrimaryID";
		public const String g_wszWMDMMediaClassSecondaryID = "WMDM/MediaClassSecondaryID";
		public const String g_wszWMDMUserEffectiveRating = "WMDM/UserEffectiveRating";
		public const String g_wszWMDMUserRating = "WMDM/UserRating";
		public const String g_wszWMDMUserRatingOnDevice = "WMDM/UserRatingOnDevice";
		public const String g_wszWMDMPlayCount = "WMDM/PlayCount";
		public const String g_wszWMDMDevicePlayCount = "WMDM/DevicePlayCount";
		public const String g_wszWMDMAuthorDate = "WMDM/AuthorDate";
		public const String g_wszWMDMUserLastPlayTime = "WMDM/UserLastPlayTime";
		public const String g_wszWMDMSubTitle = "WMDM/SubTitle";
		public const String g_wszWMDMSubTitleDescription = "WMDM/SubTitleDescription";
		public const String g_wszWMDMMediaCredits = "WMDM/MediaCredits";
		public const String g_wszWMDMMediaStationName = "WMDM/MediaStationName";
		public const String g_wszWMDMMediaOriginalChannel = "WMDM/MediaOriginalChannel";
		public const String g_wszWMDMMediaOriginalBroadcastDateTime = "WMDM/MediaOriginalBroadcastDateTime";
		public const String g_wszWMDMProviderCopyright = "WMDM/ProviderCopyright";
		public const String g_wszWMDMSyncID = "WMDM/SyncID";
		public const String g_wszWMDMPersistentUniqueID = "WMDM/PersistentUniqueID";
		public const String g_wszWMDMWidth = "WMDM/Width";
		public const String g_wszWMDMHeight = "WMDM/Height";
		public const String g_wszWMDMSyncTime = "WMDM/SyncTime";
		public const String g_wszWMDMParentalRating = "WMDM/ParentalRating";
		public const String g_wszWMDMMetaGenre = "WMDM/MetaGenre";
		public const String g_wszWMDMIsRepeat = "WMDM/IsRepeat";
		public const String g_wszWMDMSupportedDeviceProperties = "WMDM/SupportedDeviceProperties";
		public const String g_wszWMDMDeviceFriendlyName = "WMDM/DeviceFriendlyName";
		public const String g_wszWMDMFormatsSupported = "WMDM/FormatsSupported";
		public const String g_wszWMDMFormatsSupportedAreOrdered = "WMDM/FormatsSupportedAreOrdered";
		public const String g_wszWMDMSyncRelationshipID = "WMDM/SyncRelationshipID";
		public const String g_wszWMDMDeviceModelName = "WMDM/DeviceModelName";
		public const String g_wszWMDMDeviceFirmwareVersion = "WMDM/DeviceFirmwareVersion";
		public const String g_wszWMDMDeviceVendorExtension = "WMDM/DeviceVendorExtension";
		public const String g_wszWMDMDeviceProtocol = "WMDM/DeviceProtocol";
		public const String g_wszWMDMDeviceServiceProviderVendor = "WMDM/DeviceServiceProviderVendor";
		public const String g_wszWMDMDeviceRevocationInfo = "WMDM/DeviceRevocationInfo";
		public const String g_wszWMDMCollectionID = "WMDM/CollectionID";
		public const String g_wszWMDMOwner = "WMDM/Owner";
		public const String g_wszWMDMEditor = "WMDM/Editor";
		public const String g_wszWMDMWebmaster = "WMDM/Webmaster";
		public const String g_wszWMDMSourceURL = "WMDM/SourceURL";
		public const String g_wszWMDMDestinationURL = "WMDM/DestinationURL";
		public const String g_wszWMDMCategory = "WMDM/Category";
		public const String g_wszWMDMTimeBookmark = "WMDM/TimeBookmark";
		public const String g_wszWMDMObjectBookmark = "WMDM/ObjectBookmark";
		public const String g_wszWMDMByteBookmark = "WMDM/ByteBookmark";
		public const String g_wszWMDMDataOffset = "WMDM/DataOffset";
		public const String g_wszWMDMDataLength = "WMDM/DataLength";
		public const String g_wszWMDMDataUnits = "WMDM/DataUnits";
		public const String g_wszWMDMTimeToLive = "WMDM/TimeToLive";
		public const String g_wszWMDMMediaGuid = "WMDM/MediaGuid";
		public const String g_wszWPDPassthroughPropertyValues = "WPD/PassthroughPropertyValues";
		public const Guid EVENT_WMDM_CONTENT_TRANSFER = .(0x339c9bf4, 0xbcfe, 0x4ed8, 0x94, 0xdf, 0xea, 0xf8, 0xc2, 0x6a, 0xb6, 0x1b);
		public const uint32 MTP_COMMAND_MAX_PARAMS = 5;
		public const uint32 MTP_RESPONSE_MAX_PARAMS = 5;
		public const uint16 MTP_RESPONSE_OK = 8193;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WMDM_TAG_DATATYPE : int32
		{
			WMDM_TYPE_DWORD = 0,
			WMDM_TYPE_STRING = 1,
			WMDM_TYPE_BINARY = 2,
			WMDM_TYPE_BOOL = 3,
			WMDM_TYPE_QWORD = 4,
			WMDM_TYPE_WORD = 5,
			WMDM_TYPE_GUID = 6,
			WMDM_TYPE_DATE = 7,
		}
		[AllowDuplicates]
		public enum WMDM_SESSION_TYPE : int32
		{
			WMDM_SESSION_NONE = 0,
			WMDM_SESSION_TRANSFER_TO_DEVICE = 1,
			WMDM_SESSION_TRANSFER_FROM_DEVICE = 16,
			WMDM_SESSION_DELETE = 256,
			WMDM_SESSION_CUSTOM = 4096,
		}
		[AllowDuplicates]
		public enum WMDM_STORAGE_ENUM_MODE : int32
		{
			ENUM_MODE_RAW = 0,
			ENUM_MODE_USE_DEVICE_PREF = 1,
			ENUM_MODE_METADATA_VIEWS = 2,
		}
		[AllowDuplicates]
		public enum WMDM_FORMATCODE : int32
		{
			WMDM_FORMATCODE_NOTUSED = 0,
			WMDM_FORMATCODE_ALLIMAGES = -1,
			WMDM_FORMATCODE_UNDEFINED = 12288,
			WMDM_FORMATCODE_ASSOCIATION = 12289,
			WMDM_FORMATCODE_SCRIPT = 12290,
			WMDM_FORMATCODE_EXECUTABLE = 12291,
			WMDM_FORMATCODE_TEXT = 12292,
			WMDM_FORMATCODE_HTML = 12293,
			WMDM_FORMATCODE_DPOF = 12294,
			WMDM_FORMATCODE_AIFF = 12295,
			WMDM_FORMATCODE_WAVE = 12296,
			WMDM_FORMATCODE_MP3 = 12297,
			WMDM_FORMATCODE_AVI = 12298,
			WMDM_FORMATCODE_MPEG = 12299,
			WMDM_FORMATCODE_ASF = 12300,
			WMDM_FORMATCODE_RESERVED_FIRST = 12301,
			WMDM_FORMATCODE_RESERVED_LAST = 14335,
			WMDM_FORMATCODE_IMAGE_UNDEFINED = 14336,
			WMDM_FORMATCODE_IMAGE_EXIF = 14337,
			WMDM_FORMATCODE_IMAGE_TIFFEP = 14338,
			WMDM_FORMATCODE_IMAGE_FLASHPIX = 14339,
			WMDM_FORMATCODE_IMAGE_BMP = 14340,
			WMDM_FORMATCODE_IMAGE_CIFF = 14341,
			WMDM_FORMATCODE_IMAGE_GIF = 14343,
			WMDM_FORMATCODE_IMAGE_JFIF = 14344,
			WMDM_FORMATCODE_IMAGE_PCD = 14345,
			WMDM_FORMATCODE_IMAGE_PICT = 14346,
			WMDM_FORMATCODE_IMAGE_PNG = 14347,
			WMDM_FORMATCODE_IMAGE_TIFF = 14349,
			WMDM_FORMATCODE_IMAGE_TIFFIT = 14350,
			WMDM_FORMATCODE_IMAGE_JP2 = 14351,
			WMDM_FORMATCODE_IMAGE_JPX = 14352,
			WMDM_FORMATCODE_IMAGE_RESERVED_FIRST = 14353,
			WMDM_FORMATCODE_IMAGE_RESERVED_LAST = 16383,
			WMDM_FORMATCODE_UNDEFINEDFIRMWARE = 47106,
			WMDM_FORMATCODE_WBMP = 47107,
			WMDM_FORMATCODE_JPEGXR = 47108,
			WMDM_FORMATCODE_WINDOWSIMAGEFORMAT = 47233,
			WMDM_FORMATCODE_UNDEFINEDAUDIO = 47360,
			WMDM_FORMATCODE_WMA = 47361,
			WMDM_FORMATCODE_OGG = 47362,
			WMDM_FORMATCODE_AAC = 47363,
			WMDM_FORMATCODE_AUDIBLE = 47364,
			WMDM_FORMATCODE_FLAC = 47366,
			WMDM_FORMATCODE_QCELP = 47367,
			WMDM_FORMATCODE_AMR = 47368,
			WMDM_FORMATCODE_UNDEFINEDVIDEO = 47488,
			WMDM_FORMATCODE_WMV = 47489,
			WMDM_FORMATCODE_MP4 = 47490,
			WMDM_FORMATCODE_MP2 = 47491,
			WMDM_FORMATCODE_3GP = 47492,
			WMDM_FORMATCODE_3G2 = 47493,
			WMDM_FORMATCODE_AVCHD = 47494,
			WMDM_FORMATCODE_ATSCTS = 47495,
			WMDM_FORMATCODE_DVBTS = 47496,
			WMDM_FORMATCODE_MKV = 47497,
			WMDM_FORMATCODE_MKA = 47498,
			WMDM_FORMATCODE_MK3D = 47499,
			WMDM_FORMATCODE_UNDEFINEDCOLLECTION = 47616,
			WMDM_FORMATCODE_ABSTRACTMULTIMEDIAALBUM = 47617,
			WMDM_FORMATCODE_ABSTRACTIMAGEALBUM = 47618,
			WMDM_FORMATCODE_ABSTRACTAUDIOALBUM = 47619,
			WMDM_FORMATCODE_ABSTRACTVIDEOALBUM = 47620,
			WMDM_FORMATCODE_ABSTRACTAUDIOVIDEOPLAYLIST = 47621,
			WMDM_FORMATCODE_ABSTRACTCONTACTGROUP = 47622,
			WMDM_FORMATCODE_ABSTRACTMESSAGEFOLDER = 47623,
			WMDM_FORMATCODE_ABSTRACTCHAPTEREDPRODUCTION = 47624,
			WMDM_FORMATCODE_MEDIA_CAST = 47627,
			WMDM_FORMATCODE_WPLPLAYLIST = 47632,
			WMDM_FORMATCODE_M3UPLAYLIST = 47633,
			WMDM_FORMATCODE_MPLPLAYLIST = 47634,
			WMDM_FORMATCODE_ASXPLAYLIST = 47635,
			WMDM_FORMATCODE_PLSPLAYLIST = 47636,
			WMDM_FORMATCODE_UNDEFINEDDOCUMENT = 47744,
			WMDM_FORMATCODE_ABSTRACTDOCUMENT = 47745,
			WMDM_FORMATCODE_XMLDOCUMENT = 47746,
			WMDM_FORMATCODE_MICROSOFTWORDDOCUMENT = 47747,
			WMDM_FORMATCODE_MHTCOMPILEDHTMLDOCUMENT = 47748,
			WMDM_FORMATCODE_MICROSOFTEXCELSPREADSHEET = 47749,
			WMDM_FORMATCODE_MICROSOFTPOWERPOINTDOCUMENT = 47750,
			WMDM_FORMATCODE_UNDEFINEDMESSAGE = 47872,
			WMDM_FORMATCODE_ABSTRACTMESSAGE = 47873,
			WMDM_FORMATCODE_UNDEFINEDCONTACT = 48000,
			WMDM_FORMATCODE_ABSTRACTCONTACT = 48001,
			WMDM_FORMATCODE_VCARD2 = 48002,
			WMDM_FORMATCODE_VCARD3 = 48003,
			WMDM_FORMATCODE_UNDEFINEDCALENDARITEM = 48640,
			WMDM_FORMATCODE_ABSTRACTCALENDARITEM = 48641,
			WMDM_FORMATCODE_VCALENDAR1 = 48642,
			WMDM_FORMATCODE_VCALENDAR2 = 48643,
			WMDM_FORMATCODE_UNDEFINEDWINDOWSEXECUTABLE = 48768,
			WMDM_FORMATCODE_M4A = 1297101889,
			WMDM_FORMATCODE_3GPA = 860311617,
			WMDM_FORMATCODE_3G2A = 860303937,
			WMDM_FORMATCODE_SECTION = 48770,
		}
		[AllowDuplicates]
		public enum WMDM_ENUM_PROP_VALID_VALUES_FORM : int32
		{
			WMDM_ENUM_PROP_VALID_VALUES_ANY = 0,
			WMDM_ENUM_PROP_VALID_VALUES_RANGE = 1,
			WMDM_ENUM_PROP_VALID_VALUES_ENUM = 2,
		}
		[AllowDuplicates]
		public enum WMDM_FIND_SCOPE : int32
		{
			WMDM_FIND_SCOPE_GLOBAL = 0,
			WMDM_FIND_SCOPE_IMMEDIATE_CHILDREN = 1,
		}
		[AllowDuplicates]
		public enum WMDMMessage : int32
		{
			WMDM_MSG_DEVICE_ARRIVAL = 0,
			WMDM_MSG_DEVICE_REMOVAL = 1,
			WMDM_MSG_MEDIA_ARRIVAL = 2,
			WMDM_MSG_MEDIA_REMOVAL = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct __MACINFO
		{
			public BOOL fUsed;
			public uint8[36] abMacState;
		}
		[CRepr]
		public struct _WAVEFORMATEX
		{
			public uint16 wFormatTag;
			public uint16 nChannels;
			public uint32 nSamplesPerSec;
			public uint32 nAvgBytesPerSec;
			public uint16 nBlockAlign;
			public uint16 wBitsPerSample;
			public uint16 cbSize;
		}
		[CRepr]
		public struct _BITMAPINFOHEADER
		{
			public uint32 biSize;
			public int32 biWidth;
			public int32 biHeight;
			public uint16 biPlanes;
			public uint16 biBitCount;
			public uint32 biCompression;
			public uint32 biSizeImage;
			public int32 biXPelsPerMeter;
			public int32 biYPelsPerMeter;
			public uint32 biClrUsed;
			public uint32 biClrImportant;
		}
		[CRepr]
		public struct _VIDEOINFOHEADER
		{
			public RECT rcSource;
			public RECT rcTarget;
			public uint32 dwBitRate;
			public uint32 dwBitErrorRate;
			public int64 AvgTimePerFrame;
			public _BITMAPINFOHEADER bmiHeader;
		}
		[CRepr]
		public struct WMFILECAPABILITIES
		{
			public PWSTR pwszMimeType;
			public uint32 dwReserved;
		}
		[CRepr]
		public struct OPAQUECOMMAND
		{
			public Guid guidCommand;
			public uint32 dwDataLen;
			public uint8* pData;
			public uint8[20] abMAC;
		}
		[CRepr]
		public struct WMDMID
		{
			public uint32 cbSize;
			public uint32 dwVendorID;
			public uint8[128] pID;
			public uint32 SerialNumberLength;
		}
		[CRepr]
		public struct WMDMDATETIME
		{
			public uint16 wYear;
			public uint16 wMonth;
			public uint16 wDay;
			public uint16 wHour;
			public uint16 wMinute;
			public uint16 wSecond;
		}
		[CRepr]
		public struct WMDMRIGHTS
		{
			public uint32 cbSize;
			public uint32 dwContentType;
			public uint32 fuFlags;
			public uint32 fuRights;
			public uint32 dwAppSec;
			public uint32 dwPlaybackCount;
			public WMDMDATETIME ExpirationDate;
		}
		[CRepr]
		public struct WMDMMetadataView
		{
			public PWSTR pwszViewName;
			public uint32 nDepth;
			public uint16** ppwszTags;
		}
		[CRepr]
		public struct WMDM_PROP_VALUES_RANGE
		{
			public PROPVARIANT rangeMin;
			public PROPVARIANT rangeMax;
			public PROPVARIANT rangeStep;
		}
		[CRepr]
		public struct WMDM_PROP_VALUES_ENUM
		{
			public uint32 cEnumValues;
			public PROPVARIANT* pValues;
		}
		[CRepr]
		public struct WMDM_PROP_DESC
		{
			public PWSTR pwszPropName;
			public WMDM_ENUM_PROP_VALID_VALUES_FORM ValidValuesForm;
			public _ValidValues_e__Union ValidValues;
			
			[CRepr, Union]
			public struct _ValidValues_e__Union
			{
				public WMDM_PROP_VALUES_RANGE ValidValuesRange;
				public WMDM_PROP_VALUES_ENUM EnumeratedValidValues;
			}
		}
		[CRepr]
		public struct WMDM_PROP_CONFIG
		{
			public uint32 nPreference;
			public uint32 nPropDesc;
			public WMDM_PROP_DESC* pPropDesc;
		}
		[CRepr]
		public struct WMDM_FORMAT_CAPABILITY
		{
			public uint32 nPropConfig;
			public WMDM_PROP_CONFIG* pConfigs;
		}
		[CRepr, Union]
		public struct WMDMDetermineMaxPropStringLen
		{
			public char16[27] sz001;
			public char16[31] sz002;
			public char16[14] sz003;
			public char16[16] sz004;
			public char16[22] sz005;
			public char16[14] sz006;
			public char16[20] sz007;
			public char16[20] sz008;
			public char16[22] sz009;
			public char16[11] sz010;
			public char16[12] sz011;
			public char16[17] sz012;
			public char16[17] sz013;
			public char16[16] sz014;
			public char16[17] sz015;
			public char16[11] sz016;
			public char16[11] sz017;
			public char16[15] sz018;
			public char16[22] sz019;
			public char16[20] sz020;
			public char16[22] sz021;
			public char16[21] sz022;
			public char16[24] sz023;
			public char16[20] sz024;
			public char16[10] sz025;
			public char16[14] sz026;
			public char16[11] sz027;
			public char16[11] sz028;
			public char16[13] sz029;
			public char16[17] sz030;
			public char16[16] sz031;
			public char16[17] sz032;
			public char16[20] sz033;
			public char16[19] sz034;
			public char16[18] sz035;
			public char16[18] sz036;
			public char16[15] sz037;
			public char16[14] sz041;
			public char16[22] sz043;
			public char16[16] sz044;
			public char16[20] sz045;
			public char16[14] sz046;
			public char16[14] sz047;
			public char16[12] sz048;
			public char16[25] sz049;
			public char16[26] sz050;
			public char16[25] sz051;
			public char16[16] sz052;
			public char16[24] sz053;
			public char16[15] sz054;
			public char16[21] sz055;
			public char16[16] sz056;
			public char16[22] sz057;
			public char16[14] sz058;
			public char16[25] sz059;
			public char16[18] sz060;
			public char16[22] sz061;
			public char16[26] sz062;
			public char16[36] sz063;
			public char16[23] sz064;
			public char16[12] sz065;
			public char16[24] sz066;
			public char16[11] sz067;
			public char16[12] sz068;
			public char16[14] sz069;
			public char16[20] sz070;
			public char16[15] sz071;
			public char16[14] sz072;
			public char16[31] sz073;
			public char16[24] sz074;
			public char16[22] sz075;
			public char16[24] sz076;
			public char16[21] sz077;
			public char16[27] sz078;
			public char16[27] sz079;
			public char16[20] sz080;
			public char16[33] sz081;
			public char16[21] sz082;
			public char16[32] sz083;
			public char16[26] sz084;
			public char16[18] sz085;
			public char16[30] sz086;
		}
		[CRepr]
		public struct MTP_COMMAND_DATA_IN
		{
			public uint16 OpCode;
			public uint32 NumParams;
			public uint32[5] Params;
			public uint32 NextPhase;
			public uint32 CommandWriteDataSize;
			public uint8[] CommandWriteData;
		}
		[CRepr]
		public struct MTP_COMMAND_DATA_OUT
		{
			public uint16 ResponseCode;
			public uint32 NumParams;
			public uint32[5] Params;
			public uint32 CommandReadDataSize;
			public uint8[] CommandReadData;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MediaDevMgrClassFactory = .(0x50040c1d, 0xbdbf, 0x4924, 0xb8, 0x73, 0xf1, 0x4d, 0x6c, 0x5b, 0xfd, 0x66);
		public const Guid CLSID_MediaDevMgr = .(0x25baad81, 0x3560, 0x11d3, 0x84, 0x71, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMDevice = .(0x807b3cdf, 0x357a, 0x11d3, 0x84, 0x71, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMStorage = .(0x807b3ce0, 0x357a, 0x11d3, 0x84, 0x71, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMStorageGlobal = .(0x807b3ce1, 0x357a, 0x11d3, 0x84, 0x71, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMDeviceEnum = .(0x430e35af, 0x3971, 0x11d3, 0x84, 0x74, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMStorageEnum = .(0xeb401a3b, 0x3af7, 0x11d3, 0x84, 0x74, 0x00, 0xc0, 0x4f, 0x79, 0xdb, 0xc0);
		public const Guid CLSID_WMDMLogger = .(0x110a3202, 0x5a79, 0x11d3, 0x8d, 0x78, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		// --- COM Interfaces ---
		
		public struct IWMDMMetaData {}
		public struct IWMDeviceManager {}
		public struct IWMDeviceManager2 {}
		public struct IWMDeviceManager3 {}
		public struct IWMDMStorageGlobals {}
		public struct IWMDMStorage {}
		public struct IWMDMStorage2 {}
		public struct IWMDMStorage3 {}
		public struct IWMDMStorage4 {}
		public struct IWMDMOperation {}
		public struct IWMDMOperation2 {}
		public struct IWMDMOperation3 {}
		public struct IWMDMProgress {}
		public struct IWMDMProgress2 {}
		public struct IWMDMProgress3 {}
		public struct IWMDMDevice {}
		public struct IWMDMDevice2 {}
		public struct IWMDMDevice3 {}
		public struct IWMDMDeviceSession {}
		public struct IWMDMEnumDevice {}
		public struct IWMDMDeviceControl {}
		public struct IWMDMEnumStorage {}
		public struct IWMDMStorageControl {}
		public struct IWMDMStorageControl2 {}
		public struct IWMDMStorageControl3 {}
		public struct IWMDMObjectInfo {}
		public struct IWMDMRevoked {}
		public struct IWMDMNotification {}
		public struct IMDServiceProvider {}
		public struct IMDServiceProvider2 {}
		public struct IMDServiceProvider3 {}
		public struct IMDSPEnumDevice {}
		public struct IMDSPDevice {}
		public struct IMDSPDevice2 {}
		public struct IMDSPDevice3 {}
		public struct IMDSPDeviceControl {}
		public struct IMDSPEnumStorage {}
		public struct IMDSPStorage {}
		public struct IMDSPStorage2 {}
		public struct IMDSPStorage3 {}
		public struct IMDSPStorage4 {}
		public struct IMDSPStorageGlobals {}
		public struct IMDSPObjectInfo {}
		public struct IMDSPObject {}
		public struct IMDSPObject2 {}
		public struct IMDSPDirectTransfer {}
		public struct IMDSPRevoked {}
		public struct ISCPSecureAuthenticate {}
		public struct ISCPSecureAuthenticate2 {}
		public struct ISCPSecureQuery {}
		public struct ISCPSecureQuery2 {}
		public struct ISCPSecureExchange {}
		public struct ISCPSecureExchange2 {}
		public struct ISCPSecureExchange3 {}
		public struct ISCPSession {}
		public struct ISCPSecureQuery3 {}
		public struct IComponentAuthenticate {}
		public struct IWMDMLogger {}
		
	}
}
