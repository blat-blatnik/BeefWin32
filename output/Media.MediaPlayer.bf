using System;

// namespace Media.MediaPlayer
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_XFeedsManager = .(0xfe6b11c3, 0xc72e, 0x4061, 0x86, 0xc6, 0x9d, 0x16, 0x31, 0x21, 0xf2, 0x29);
		public const uint32 WMPGC_FLAGS_ALLOW_PREROLL = 1;
		public const uint32 WMPGC_FLAGS_SUPPRESS_DIALOGS = 2;
		public const uint32 WMPGC_FLAGS_IGNORE_AV_SYNC = 4;
		public const uint32 WMPGC_FLAGS_DISABLE_PLUGINS = 8;
		public const uint32 WMPGC_FLAGS_USE_CUSTOM_GRAPH = 16;
		public const uint32 WMPUE_EC_USER = 33024;
		public const uint32 WMP_MDRT_FLAGS_UNREPORTED_DELETED_ITEMS = 1;
		public const uint32 WMP_MDRT_FLAGS_UNREPORTED_ADDED_ITEMS = 2;
		public const uint32 IOCTL_WMP_METADATA_ROUND_TRIP = 827346263;
		public const uint32 IOCTL_WMP_DEVICE_CAN_SYNC = 844123479;
		public const uint32 EFFECT_CANGOFULLSCREEN = 1;
		public const uint32 EFFECT_HASPROPERTYPAGE = 2;
		public const uint32 EFFECT_VARIABLEFREQSTEP = 4;
		public const uint32 EFFECT_WINDOWEDONLY = 8;
		public const uint32 EFFECT2_FULLSCREENEXCLUSIVE = 16;
		public const uint32 SA_BUFFER_SIZE = 1024;
		public const uint32 PLUGIN_TYPE_BACKGROUND = 1;
		public const uint32 PLUGIN_TYPE_SEPARATEWINDOW = 2;
		public const uint32 PLUGIN_TYPE_DISPLAYAREA = 3;
		public const uint32 PLUGIN_TYPE_SETTINGSAREA = 4;
		public const uint32 PLUGIN_TYPE_METADATAAREA = 5;
		public const uint32 PLUGIN_FLAGS_HASPROPERTYPAGE = 2147483648;
		public const uint32 PLUGIN_FLAGS_INSTALLAUTORUN = 1073741824;
		public const uint32 PLUGIN_FLAGS_LAUNCHPROPERTYPAGE = 536870912;
		public const uint32 PLUGIN_FLAGS_ACCEPTSMEDIA = 268435456;
		public const uint32 PLUGIN_FLAGS_ACCEPTSPLAYLISTS = 134217728;
		public const uint32 PLUGIN_FLAGS_HASPRESETS = 67108864;
		public const uint32 PLUGIN_FLAGS_HIDDEN = 33554432;
		public const uint32 SUBSCRIPTION_CAP_DEVICEAVAILABLE = 16;
		public const uint32 SUBSCRIPTION_CAP_BACKGROUNDPROCESSING = 8;
		public const uint32 SUBSCRIPTION_CAP_IS_CONTENTPARTNER = 64;
		public const uint32 SUBSCRIPTION_CAP_ALTLOGIN = 128;
		public const uint32 SUBSCRIPTION_CAP_ALLOWPLAY = 1;
		public const uint32 SUBSCRIPTION_CAP_ALLOWCDBURN = 2;
		public const uint32 SUBSCRIPTION_CAP_ALLOWPDATRANSFER = 4;
		public const uint32 SUBSCRIPTION_CAP_PREPAREFORSYNC = 32;
		public const uint32 SUBSCRIPTION_V1_CAPS = 15;
		public const uint32 SUBSCRIPTION_CAP_UILESSMODE_ALLOWPLAY = 256;
		public const uint32 DISPID_FEEDS_RootFolder = 4096;
		public const uint32 DISPID_FEEDS_IsSubscribed = 4097;
		public const uint32 DISPID_FEEDS_ExistsFeed = 4098;
		public const uint32 DISPID_FEEDS_GetFeed = 4099;
		public const uint32 DISPID_FEEDS_ExistsFolder = 4100;
		public const uint32 DISPID_FEEDS_GetFolder = 4101;
		public const uint32 DISPID_FEEDS_DeleteFeed = 4102;
		public const uint32 DISPID_FEEDS_DeleteFolder = 4103;
		public const uint32 DISPID_FEEDS_GetFeedByUrl = 4104;
		public const uint32 DISPID_FEEDS_BackgroundSync = 4105;
		public const uint32 DISPID_FEEDS_BackgroundSyncStatus = 4106;
		public const uint32 DISPID_FEEDS_DefaultInterval = 4107;
		public const uint32 DISPID_FEEDS_AsyncSyncAll = 4108;
		public const uint32 DISPID_FEEDS_Normalize = 4109;
		public const uint32 DISPID_FEEDS_ItemCountLimit = 4110;
		public const uint32 DISPID_FEEDSENUM_Count = 8192;
		public const uint32 DISPID_FEEDSENUM_Item = 8193;
		public const uint32 DISPID_FEEDFOLDER_Feeds = 12288;
		public const uint32 DISPID_FEEDFOLDER_Subfolders = 12289;
		public const uint32 DISPID_FEEDFOLDER_CreateFeed = 12290;
		public const uint32 DISPID_FEEDFOLDER_CreateSubfolder = 12291;
		public const uint32 DISPID_FEEDFOLDER_ExistsFeed = 12292;
		public const uint32 DISPID_FEEDFOLDER_GetFeed = 12293;
		public const uint32 DISPID_FEEDFOLDER_ExistsSubfolder = 12294;
		public const uint32 DISPID_FEEDFOLDER_GetSubfolder = 12295;
		public const uint32 DISPID_FEEDFOLDER_Delete = 12296;
		public const uint32 DISPID_FEEDFOLDER_Name = 12297;
		public const uint32 DISPID_FEEDFOLDER_Rename = 12298;
		public const uint32 DISPID_FEEDFOLDER_Path = 12299;
		public const uint32 DISPID_FEEDFOLDER_Move = 12300;
		public const uint32 DISPID_FEEDFOLDER_Parent = 12301;
		public const uint32 DISPID_FEEDFOLDER_IsRoot = 12302;
		public const uint32 DISPID_FEEDFOLDER_TotalUnreadItemCount = 12303;
		public const uint32 DISPID_FEEDFOLDER_TotalItemCount = 12304;
		public const uint32 DISPID_FEEDFOLDER_GetWatcher = 12305;
		public const uint32 DISPID_FEED_Xml = 16384;
		public const uint32 DISPID_FEED_Name = 16385;
		public const uint32 DISPID_FEED_Rename = 16386;
		public const uint32 DISPID_FEED_Url = 16387;
		public const uint32 DISPID_FEED_LocalId = 16388;
		public const uint32 DISPID_FEED_Path = 16389;
		public const uint32 DISPID_FEED_Move = 16390;
		public const uint32 DISPID_FEED_Parent = 16391;
		public const uint32 DISPID_FEED_LastWriteTime = 16392;
		public const uint32 DISPID_FEED_Delete = 16393;
		public const uint32 DISPID_FEED_Download = 16394;
		public const uint32 DISPID_FEED_AsyncDownload = 16395;
		public const uint32 DISPID_FEED_CancelAsyncDownload = 16396;
		public const uint32 DISPID_FEED_Interval = 16397;
		public const uint32 DISPID_FEED_SyncSetting = 16398;
		public const uint32 DISPID_FEED_LastDownloadTime = 16399;
		public const uint32 DISPID_FEED_LocalEnclosurePath = 16400;
		public const uint32 DISPID_FEED_Items = 16401;
		public const uint32 DISPID_FEED_GetItem = 16402;
		public const uint32 DISPID_FEED_Title = 16403;
		public const uint32 DISPID_FEED_Description = 16404;
		public const uint32 DISPID_FEED_Link = 16405;
		public const uint32 DISPID_FEED_Image = 16406;
		public const uint32 DISPID_FEED_LastBuildDate = 16407;
		public const uint32 DISPID_FEED_PubDate = 16408;
		public const uint32 DISPID_FEED_Ttl = 16409;
		public const uint32 DISPID_FEED_Language = 16410;
		public const uint32 DISPID_FEED_Copyright = 16411;
		public const uint32 DISPID_FEED_DownloadEnclosuresAutomatically = 16412;
		public const uint32 DISPID_FEED_DownloadStatus = 16413;
		public const uint32 DISPID_FEED_LastDownloadError = 16414;
		public const uint32 DISPID_FEED_Merge = 16415;
		public const uint32 DISPID_FEED_DownloadUrl = 16416;
		public const uint32 DISPID_FEED_IsList = 16417;
		public const uint32 DISPID_FEED_MarkAllItemsRead = 16418;
		public const uint32 DISPID_FEED_GetWatcher = 16419;
		public const uint32 DISPID_FEED_UnreadItemCount = 16420;
		public const uint32 DISPID_FEED_ItemCount = 16421;
		public const uint32 DISPID_FEED_MaxItemCount = 16422;
		public const uint32 DISPID_FEED_GetItemByEffectiveId = 16423;
		public const uint32 DISPID_FEED_LastItemDownloadTime = 16424;
		public const uint32 DISPID_FEED_Username = 16425;
		public const uint32 DISPID_FEED_Password = 16426;
		public const uint32 DISPID_FEED_SetCredentials = 16427;
		public const uint32 DISPID_FEED_ClearCredentials = 16428;
		public const uint32 DISPID_FEEDITEM_Xml = 20480;
		public const uint32 DISPID_FEEDITEM_Title = 20481;
		public const uint32 DISPID_FEEDITEM_Link = 20482;
		public const uint32 DISPID_FEEDITEM_Guid = 20483;
		public const uint32 DISPID_FEEDITEM_Description = 20484;
		public const uint32 DISPID_FEEDITEM_PubDate = 20485;
		public const uint32 DISPID_FEEDITEM_Comments = 20486;
		public const uint32 DISPID_FEEDITEM_Author = 20487;
		public const uint32 DISPID_FEEDITEM_Enclosure = 20488;
		public const uint32 DISPID_FEEDITEM_IsRead = 20489;
		public const uint32 DISPID_FEEDITEM_LocalId = 20490;
		public const uint32 DISPID_FEEDITEM_Parent = 20491;
		public const uint32 DISPID_FEEDITEM_Delete = 20492;
		public const uint32 DISPID_FEEDITEM_DownloadUrl = 20493;
		public const uint32 DISPID_FEEDITEM_LastDownloadTime = 20494;
		public const uint32 DISPID_FEEDITEM_Modified = 20495;
		public const uint32 DISPID_FEEDITEM_EffectiveId = 20496;
		public const uint32 DISPID_FEEDENCLOSURE_Url = 24576;
		public const uint32 DISPID_FEEDENCLOSURE_Type = 24577;
		public const uint32 DISPID_FEEDENCLOSURE_Length = 24578;
		public const uint32 DISPID_FEEDENCLOSURE_AsyncDownload = 24579;
		public const uint32 DISPID_FEEDENCLOSURE_CancelAsyncDownload = 24580;
		public const uint32 DISPID_FEEDENCLOSURE_DownloadStatus = 24581;
		public const uint32 DISPID_FEEDENCLOSURE_LastDownloadError = 24582;
		public const uint32 DISPID_FEEDENCLOSURE_LocalPath = 24583;
		public const uint32 DISPID_FEEDENCLOSURE_Parent = 24584;
		public const uint32 DISPID_FEEDENCLOSURE_DownloadUrl = 24585;
		public const uint32 DISPID_FEEDENCLOSURE_DownloadMimeType = 24586;
		public const uint32 DISPID_FEEDENCLOSURE_RemoveFile = 24587;
		public const uint32 DISPID_FEEDENCLOSURE_SetFile = 24588;
		public const uint32 DISPID_FEEDFOLDEREVENTS_Error = 28672;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderAdded = 28673;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderDeleted = 28674;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderRenamed = 28675;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderMovedFrom = 28676;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderMovedTo = 28677;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FolderItemCountChanged = 28678;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedAdded = 28679;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedDeleted = 28680;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedRenamed = 28681;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedUrlChanged = 28682;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedMovedFrom = 28683;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedMovedTo = 28684;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedDownloading = 28685;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedDownloadCompleted = 28686;
		public const uint32 DISPID_FEEDFOLDEREVENTS_FeedItemCountChanged = 28687;
		public const uint32 DISPID_FEEDEVENTS_Error = 32768;
		public const uint32 DISPID_FEEDEVENTS_FeedDeleted = 32769;
		public const uint32 DISPID_FEEDEVENTS_FeedRenamed = 32770;
		public const uint32 DISPID_FEEDEVENTS_FeedUrlChanged = 32771;
		public const uint32 DISPID_FEEDEVENTS_FeedMoved = 32772;
		public const uint32 DISPID_FEEDEVENTS_FeedDownloading = 32773;
		public const uint32 DISPID_FEEDEVENTS_FeedDownloadCompleted = 32774;
		public const uint32 DISPID_FEEDEVENTS_FeedItemCountChanged = 32775;
		public const uint32 DISPID_DELTA = 50;
		public const uint32 DISPID_WMPCORE_BASE = 0;
		public const uint32 DISPID_WMPCORE_URL = 1;
		public const uint32 DISPID_WMPCORE_OPENSTATE = 2;
		public const uint32 DISPID_WMPCORE_CLOSE = 3;
		public const uint32 DISPID_WMPCORE_CONTROLS = 4;
		public const uint32 DISPID_WMPCORE_SETTINGS = 5;
		public const uint32 DISPID_WMPCORE_CURRENTMEDIA = 6;
		public const uint32 DISPID_WMPCORE_NETWORK = 7;
		public const uint32 DISPID_WMPCORE_MEDIACOLLECTION = 8;
		public const uint32 DISPID_WMPCORE_PLAYLISTCOLLECTION = 9;
		public const uint32 DISPID_WMPCORE_PLAYSTATE = 10;
		public const uint32 DISPID_WMPCORE_VERSIONINFO = 11;
		public const uint32 DISPID_WMPCORE_LAUNCHURL = 12;
		public const uint32 DISPID_WMPCORE_CURRENTPLAYLIST = 13;
		public const uint32 DISPID_WMPCORE_CDROMCOLLECTION = 14;
		public const uint32 DISPID_WMPCORE_CLOSEDCAPTION = 15;
		public const uint32 DISPID_WMPCORE_ISONLINE = 16;
		public const uint32 DISPID_WMPCORE_ERROR = 17;
		public const uint32 DISPID_WMPCORE_STATUS = 18;
		public const uint32 DISPID_WMPCORE_LAST = 18;
		public const uint32 DISPID_WMPOCX_BASE = 18;
		public const uint32 DISPID_WMPOCX_ENABLED = 19;
		public const uint32 DISPID_WMPOCX_TRANSPARENTATSTART = 20;
		public const uint32 DISPID_WMPOCX_FULLSCREEN = 21;
		public const uint32 DISPID_WMPOCX_ENABLECONTEXTMENU = 22;
		public const uint32 DISPID_WMPOCX_UIMODE = 23;
		public const uint32 DISPID_WMPOCX_LAST = 23;
		public const uint32 DISPID_WMPOCX2_BASE = 23;
		public const uint32 DISPID_WMPOCX2_STRETCHTOFIT = 24;
		public const uint32 DISPID_WMPOCX2_WINDOWLESSVIDEO = 25;
		public const uint32 DISPID_WMPOCX4_ISREMOTE = 26;
		public const uint32 DISPID_WMPOCX4_PLAYERAPPLICATION = 27;
		public const uint32 DISPID_WMPOCX4_OPENPLAYER = 28;
		public const uint32 DISPID_WMPCORE2_BASE = 39;
		public const uint32 DISPID_WMPCORE2_DVD = 40;
		public const uint32 DISPID_WMPCORE3_NEWPLAYLIST = 41;
		public const uint32 DISPID_WMPCORE3_NEWMEDIA = 42;
		public const uint32 DISPID_WMPCONTROLS_PLAY = 51;
		public const uint32 DISPID_WMPCONTROLS_STOP = 52;
		public const uint32 DISPID_WMPCONTROLS_PAUSE = 53;
		public const uint32 DISPID_WMPCONTROLS_FASTFORWARD = 54;
		public const uint32 DISPID_WMPCONTROLS_FASTREVERSE = 55;
		public const uint32 DISPID_WMPCONTROLS_CURRENTPOSITION = 56;
		public const uint32 DISPID_WMPCONTROLS_CURRENTPOSITIONSTRING = 57;
		public const uint32 DISPID_WMPCONTROLS_NEXT = 58;
		public const uint32 DISPID_WMPCONTROLS_PREVIOUS = 59;
		public const uint32 DISPID_WMPCONTROLS_CURRENTITEM = 60;
		public const uint32 DISPID_WMPCONTROLS_CURRENTMARKER = 61;
		public const uint32 DISPID_WMPCONTROLS_ISAVAILABLE = 62;
		public const uint32 DISPID_WMPCONTROLS_PLAYITEM = 63;
		public const uint32 DISPID_WMPCONTROLS2_STEP = 64;
		public const uint32 DISPID_WMPCONTROLS3_AUDIOLANGUAGECOUNT = 65;
		public const uint32 DISPID_WMPCONTROLS3_GETAUDIOLANGUAGEID = 66;
		public const uint32 DISPID_WMPCONTROLS3_GETAUDIOLANGUAGEDESC = 67;
		public const uint32 DISPID_WMPCONTROLS3_CURRENTAUDIOLANGUAGE = 68;
		public const uint32 DISPID_WMPCONTROLS3_CURRENTAUDIOLANGUAGEINDEX = 69;
		public const uint32 DISPID_WMPCONTROLS3_GETLANGUAGENAME = 70;
		public const uint32 DISPID_WMPCONTROLS3_CURRENTPOSITIONTIMECODE = 71;
		public const uint32 DISPID_WMPCONTROLSFAKE_TIMECOMPRESSION = 72;
		public const uint32 DISPID_WMPSETTINGS_AUTOSTART = 101;
		public const uint32 DISPID_WMPSETTINGS_BALANCE = 102;
		public const uint32 DISPID_WMPSETTINGS_INVOKEURLS = 103;
		public const uint32 DISPID_WMPSETTINGS_MUTE = 104;
		public const uint32 DISPID_WMPSETTINGS_PLAYCOUNT = 105;
		public const uint32 DISPID_WMPSETTINGS_RATE = 106;
		public const uint32 DISPID_WMPSETTINGS_VOLUME = 107;
		public const uint32 DISPID_WMPSETTINGS_BASEURL = 108;
		public const uint32 DISPID_WMPSETTINGS_DEFAULTFRAME = 109;
		public const uint32 DISPID_WMPSETTINGS_GETMODE = 110;
		public const uint32 DISPID_WMPSETTINGS_SETMODE = 111;
		public const uint32 DISPID_WMPSETTINGS_ENABLEERRORDIALOGS = 112;
		public const uint32 DISPID_WMPSETTINGS_ISAVAILABLE = 113;
		public const uint32 DISPID_WMPSETTINGS2_DEFAULTAUDIOLANGUAGE = 114;
		public const uint32 DISPID_WMPSETTINGS2_LIBRARYACCESSRIGHTS = 115;
		public const uint32 DISPID_WMPSETTINGS2_REQUESTLIBRARYACCESSRIGHTS = 116;
		public const uint32 DISPID_WMPPLAYLIST_COUNT = 201;
		public const uint32 DISPID_WMPPLAYLIST_NAME = 202;
		public const uint32 DISPID_WMPPLAYLIST_GETITEMINFO = 203;
		public const uint32 DISPID_WMPPLAYLIST_SETITEMINFO = 204;
		public const uint32 DISPID_WMPPLAYLIST_CLEAR = 205;
		public const uint32 DISPID_WMPPLAYLIST_INSERTITEM = 206;
		public const uint32 DISPID_WMPPLAYLIST_APPENDITEM = 207;
		public const uint32 DISPID_WMPPLAYLIST_REMOVEITEM = 208;
		public const uint32 DISPID_WMPPLAYLIST_MOVEITEM = 209;
		public const uint32 DISPID_WMPPLAYLIST_ATTRIBUTECOUNT = 210;
		public const uint32 DISPID_WMPPLAYLIST_ATTRIBUTENAME = 211;
		public const uint32 DISPID_WMPPLAYLIST_ITEM = 212;
		public const uint32 DISPID_WMPPLAYLIST_ISIDENTICAL = 213;
		public const uint32 DISPID_WMPCDROM_DRIVESPECIFIER = 251;
		public const uint32 DISPID_WMPCDROM_PLAYLIST = 252;
		public const uint32 DISPID_WMPCDROM_EJECT = 253;
		public const uint32 DISPID_WMPCDROMCOLLECTION_COUNT = 301;
		public const uint32 DISPID_WMPCDROMCOLLECTION_ITEM = 302;
		public const uint32 DISPID_WMPCDROMCOLLECTION_GETBYDRIVESPECIFIER = 303;
		public const uint32 DISPID_WMPCDROMCOLLECTION_STARTMONITORINGCDROMS = 304;
		public const uint32 DISPID_WMPCDROMCOLLECTION_STOPMONITORINGCDROMS = 305;
		public const uint32 DISPID_WMPSTRINGCOLLECTION_COUNT = 401;
		public const uint32 DISPID_WMPSTRINGCOLLECTION_ITEM = 402;
		public const uint32 DISPID_WMPMEDIACOLLECTION_ADD = 452;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETALL = 453;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYNAME = 454;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYGENRE = 455;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYAUTHOR = 456;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYALBUM = 457;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYATTRIBUTE = 458;
		public const uint32 DISPID_WMPMEDIACOLLECTION_REMOVE = 459;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETATTRIBUTESTRINGCOLLECTION = 461;
		public const uint32 DISPID_WMPMEDIACOLLECTION_NEWQUERY = 462;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STARTMONITORING = 463;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STOPMONITORING = 464;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STARTCONTENTSCAN = 465;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STOPCONTENTSCAN = 466;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STARTSEARCH = 467;
		public const uint32 DISPID_WMPMEDIACOLLECTION_STOPSEARCH = 468;
		public const uint32 DISPID_WMPMEDIACOLLECTION_UPDATEMETADATA = 469;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETMEDIAATOM = 470;
		public const uint32 DISPID_WMPMEDIACOLLECTION_SETDELETED = 471;
		public const uint32 DISPID_WMPMEDIACOLLECTION_ISDELETED = 472;
		public const uint32 DISPID_WMPMEDIACOLLECTION_GETBYQUERYDESCRIPTION = 473;
		public const uint32 DISPID_WMPMEDIACOLLECTION_FREEZECOLLECTIONCHANGE = 474;
		public const uint32 DISPID_WMPMEDIACOLLECTION_UNFREEZECOLLECTIONCHANGE = 475;
		public const uint32 DISPID_WMPMEDIACOLLECTION_POSTCOLLECTIONCHANGE = 476;
		public const uint32 DISPID_WMPPLAYLISTARRAY_COUNT = 501;
		public const uint32 DISPID_WMPPLAYLISTARRAY_ITEM = 502;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_NEWPLAYLIST = 552;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_GETALL = 553;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_GETBYNAME = 554;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_GETBYQUERYDESCRIPTION = 555;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_REMOVE = 556;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_NEWQUERY = 557;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_STARTMONITORING = 558;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_STOPMONITORING = 559;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_SETDELETED = 560;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_ISDELETED = 561;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_IMPORTPLAYLIST = 562;
		public const uint32 DISPID_WMPMEDIA_SOURCEURL = 751;
		public const uint32 DISPID_WMPMEDIA_IMAGESOURCEWIDTH = 752;
		public const uint32 DISPID_WMPMEDIA_IMAGESOURCEHEIGHT = 753;
		public const uint32 DISPID_WMPMEDIA_MARKERCOUNT = 754;
		public const uint32 DISPID_WMPMEDIA_GETMARKERTIME = 755;
		public const uint32 DISPID_WMPMEDIA_GETMARKERNAME = 756;
		public const uint32 DISPID_WMPMEDIA_DURATION = 757;
		public const uint32 DISPID_WMPMEDIA_DURATIONSTRING = 758;
		public const uint32 DISPID_WMPMEDIA_ATTRIBUTECOUNT = 759;
		public const uint32 DISPID_WMPMEDIA_GETATTRIBUTENAME = 760;
		public const uint32 DISPID_WMPMEDIA_GETITEMINFO = 761;
		public const uint32 DISPID_WMPMEDIA_SETITEMINFO = 762;
		public const uint32 DISPID_WMPMEDIA_ISIDENTICAL = 763;
		public const uint32 DISPID_WMPMEDIA_NAME = 764;
		public const uint32 DISPID_WMPMEDIA_GETITEMINFOBYATOM = 765;
		public const uint32 DISPID_WMPMEDIA_ISMEMBEROF = 766;
		public const uint32 DISPID_WMPMEDIA_ISREADONLYITEM = 767;
		public const uint32 DISPID_WMPMEDIA2_ERROR = 768;
		public const uint32 DISPID_WMPMEDIA3_GETATTRIBUTECOUNTBYTYPE = 769;
		public const uint32 DISPID_WMPMEDIA3_GETITEMINFOBYTYPE = 770;
		public const uint32 DISPID_WMPNETWORK_BANDWIDTH = 801;
		public const uint32 DISPID_WMPNETWORK_RECOVEREDPACKETS = 802;
		public const uint32 DISPID_WMPNETWORK_SOURCEPROTOCOL = 803;
		public const uint32 DISPID_WMPNETWORK_RECEIVEDPACKETS = 804;
		public const uint32 DISPID_WMPNETWORK_LOSTPACKETS = 805;
		public const uint32 DISPID_WMPNETWORK_RECEPTIONQUALITY = 806;
		public const uint32 DISPID_WMPNETWORK_BUFFERINGCOUNT = 807;
		public const uint32 DISPID_WMPNETWORK_BUFFERINGPROGRESS = 808;
		public const uint32 DISPID_WMPNETWORK_BUFFERINGTIME = 809;
		public const uint32 DISPID_WMPNETWORK_FRAMERATE = 810;
		public const uint32 DISPID_WMPNETWORK_MAXBITRATE = 811;
		public const uint32 DISPID_WMPNETWORK_BITRATE = 812;
		public const uint32 DISPID_WMPNETWORK_GETPROXYSETTINGS = 813;
		public const uint32 DISPID_WMPNETWORK_SETPROXYSETTINGS = 814;
		public const uint32 DISPID_WMPNETWORK_GETPROXYNAME = 815;
		public const uint32 DISPID_WMPNETWORK_SETPROXYNAME = 816;
		public const uint32 DISPID_WMPNETWORK_GETPROXYPORT = 817;
		public const uint32 DISPID_WMPNETWORK_SETPROXYPORT = 818;
		public const uint32 DISPID_WMPNETWORK_GETPROXYEXCEPTIONLIST = 819;
		public const uint32 DISPID_WMPNETWORK_SETPROXYEXCEPTIONLIST = 820;
		public const uint32 DISPID_WMPNETWORK_GETPROXYBYPASSFORLOCAL = 821;
		public const uint32 DISPID_WMPNETWORK_SETPROXYBYPASSFORLOCAL = 822;
		public const uint32 DISPID_WMPNETWORK_MAXBANDWIDTH = 823;
		public const uint32 DISPID_WMPNETWORK_DOWNLOADPROGRESS = 824;
		public const uint32 DISPID_WMPNETWORK_ENCODEDFRAMERATE = 825;
		public const uint32 DISPID_WMPNETWORK_FRAMESSKIPPED = 826;
		public const uint32 DISPID_WMPERROR_CLEARERRORQUEUE = 851;
		public const uint32 DISPID_WMPERROR_ERRORCOUNT = 852;
		public const uint32 DISPID_WMPERROR_ITEM = 853;
		public const uint32 DISPID_WMPERROR_WEBHELP = 854;
		public const uint32 DISPID_WMPERRORITEM_ERRORCODE = 901;
		public const uint32 DISPID_WMPERRORITEM_ERRORDESCRIPTION = 902;
		public const uint32 DISPID_WMPERRORITEM_ERRORCONTEXT = 903;
		public const uint32 DISPID_WMPERRORITEM_REMEDY = 904;
		public const uint32 DISPID_WMPERRORITEM_CUSTOMURL = 905;
		public const uint32 DISPID_WMPERRORITEM2_CONDITION = 906;
		public const uint32 DISPID_WMPCLOSEDCAPTION_SAMISTYLE = 951;
		public const uint32 DISPID_WMPCLOSEDCAPTION_SAMILANG = 952;
		public const uint32 DISPID_WMPCLOSEDCAPTION_SAMIFILENAME = 953;
		public const uint32 DISPID_WMPCLOSEDCAPTION_CAPTIONINGID = 954;
		public const uint32 DISPID_WMPCLOSEDCAPTION2_GETLANGCOUNT = 955;
		public const uint32 DISPID_WMPCLOSEDCAPTION2_GETLANGNAME = 956;
		public const uint32 DISPID_WMPCLOSEDCAPTION2_GETLANGID = 957;
		public const uint32 DISPID_WMPCLOSEDCAPTION2_GETSTYLECOUNT = 958;
		public const uint32 DISPID_WMPCLOSEDCAPTION2_GETSTYLENAME = 959;
		public const uint32 DISPID_WMPDVD_ISAVAILABLE = 1001;
		public const uint32 DISPID_WMPDVD_DOMAIN = 1002;
		public const uint32 DISPID_WMPDVD_TOPMENU = 1003;
		public const uint32 DISPID_WMPDVD_TITLEMENU = 1004;
		public const uint32 DISPID_WMPDVD_BACK = 1005;
		public const uint32 DISPID_WMPDVD_RESUME = 1006;
		public const uint32 DISPID_WMPMETADATA_PICTURE_MIMETYPE = 1051;
		public const uint32 DISPID_WMPMETADATA_PICTURE_PICTURETYPE = 1052;
		public const uint32 DISPID_WMPMETADATA_PICTURE_DESCRIPTION = 1053;
		public const uint32 DISPID_WMPMETADATA_PICTURE_URL = 1054;
		public const uint32 DISPID_WMPMETADATA_TEXT_TEXT = 1055;
		public const uint32 DISPID_WMPMETADATA_TEXT_DESCRIPTION = 1056;
		public const uint32 DISPID_WMPPLAYERAPP_SWITCHTOPLAYERAPPLICATION = 1101;
		public const uint32 DISPID_WMPPLAYERAPP_SWITCHTOCONTROL = 1102;
		public const uint32 DISPID_WMPPLAYERAPP_PLAYERDOCKED = 1103;
		public const uint32 DISPID_WMPPLAYERAPP_HASDISPLAY = 1104;
		public const uint32 DISPID_WMPPLAYERAPP_REMOTESTATUS = 1105;
		public const uint32 DISPID_WMPDOWNLOADMANAGER_GETDOWNLOADCOLLECTION = 1151;
		public const uint32 DISPID_WMPDOWNLOADMANAGER_CREATEDOWNLOADCOLLECTION = 1152;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_ID = 1201;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_COUNT = 1202;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_ITEM = 1203;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_STARTDOWNLOAD = 1204;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_REMOVEITEM = 1205;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_CLEAR = 1206;
		public const uint32 DISPID_WMPDOWNLOADITEM_SOURCEURL = 1251;
		public const uint32 DISPID_WMPDOWNLOADITEM_SIZE = 1252;
		public const uint32 DISPID_WMPDOWNLOADITEM_TYPE = 1253;
		public const uint32 DISPID_WMPDOWNLOADITEM_PROGRESS = 1254;
		public const uint32 DISPID_WMPDOWNLOADITEM_DOWNLOADSTATE = 1255;
		public const uint32 DISPID_WMPDOWNLOADITEM_PAUSE = 1256;
		public const uint32 DISPID_WMPDOWNLOADITEM_RESUME = 1257;
		public const uint32 DISPID_WMPDOWNLOADITEM_CANCEL = 1258;
		public const uint32 DISPID_WMPDOWNLOADITEM2_GETITEMINFO = 1301;
		public const uint32 DISPID_WMPQUERY_ADDCONDITION = 1351;
		public const uint32 DISPID_WMPQUERY_BEGINNEXTGROUP = 1352;
		public const uint32 DISPID_WMPMEDIACOLLECTION2_CREATEQUERY = 1401;
		public const uint32 DISPID_WMPMEDIACOLLECTION2_GETPLAYLISTBYQUERY = 1402;
		public const uint32 DISPID_WMPMEDIACOLLECTION2_GETSTRINGCOLLBYQUERY = 1403;
		public const uint32 DISPID_WMPMEDIACOLLECTION2_GETBYATTRANDMEDIATYPE = 1404;
		public const uint32 DISPID_WMPSTRINGCOLLECTION2_ISIDENTICAL = 1451;
		public const uint32 DISPID_WMPSTRINGCOLLECTION2_GETITEMINFO = 1452;
		public const uint32 DISPID_WMPSTRINGCOLLECTION2_GETATTRCOUNTBYTYPE = 1453;
		public const uint32 DISPID_WMPSTRINGCOLLECTION2_GETITEMINFOBYTYPE = 1454;
		public const uint32 DISPID_WMPCORE_MIN = 1;
		public const uint32 DISPID_WMPCORE_MAX = 1454;
		public const uint32 WMPCOREEVENT_BASE = 5000;
		public const uint32 DISPID_WMPCOREEVENT_OPENSTATECHANGE = 5001;
		public const uint32 DISPID_WMPCOREEVENT_STATUSCHANGE = 5002;
		public const uint32 WMPCOREEVENT_CONTROL_BASE = 5100;
		public const uint32 DISPID_WMPCOREEVENT_PLAYSTATECHANGE = 5101;
		public const uint32 DISPID_WMPCOREEVENT_AUDIOLANGUAGECHANGE = 5102;
		public const uint32 WMPCOREEVENT_SEEK_BASE = 5200;
		public const uint32 DISPID_WMPCOREEVENT_ENDOFSTREAM = 5201;
		public const uint32 DISPID_WMPCOREEVENT_POSITIONCHANGE = 5202;
		public const uint32 DISPID_WMPCOREEVENT_MARKERHIT = 5203;
		public const uint32 DISPID_WMPCOREEVENT_DURATIONUNITCHANGE = 5204;
		public const uint32 WMPCOREEVENT_CONTENT_BASE = 5300;
		public const uint32 DISPID_WMPCOREEVENT_SCRIPTCOMMAND = 5301;
		public const uint32 WMPCOREEVENT_NETWORK_BASE = 5400;
		public const uint32 DISPID_WMPCOREEVENT_DISCONNECT = 5401;
		public const uint32 DISPID_WMPCOREEVENT_BUFFERING = 5402;
		public const uint32 DISPID_WMPCOREEVENT_NEWSTREAM = 5403;
		public const uint32 WMPCOREEVENT_ERROR_BASE = 5500;
		public const uint32 DISPID_WMPCOREEVENT_ERROR = 5501;
		public const uint32 WMPCOREEVENT_WARNING_BASE = 5600;
		public const uint32 DISPID_WMPCOREEVENT_WARNING = 5601;
		public const uint32 WMPCOREEVENT_CDROM_BASE = 5700;
		public const uint32 DISPID_WMPCOREEVENT_CDROMMEDIACHANGE = 5701;
		public const uint32 WMPCOREEVENT_PLAYLIST_BASE = 5800;
		public const uint32 DISPID_WMPCOREEVENT_PLAYLISTCHANGE = 5801;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACHANGE = 5802;
		public const uint32 DISPID_WMPCOREEVENT_CURRENTMEDIAITEMAVAILABLE = 5803;
		public const uint32 DISPID_WMPCOREEVENT_CURRENTPLAYLISTCHANGE = 5804;
		public const uint32 DISPID_WMPCOREEVENT_CURRENTPLAYLISTITEMAVAILABLE = 5805;
		public const uint32 DISPID_WMPCOREEVENT_CURRENTITEMCHANGE = 5806;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONCHANGE = 5807;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONATTRIBUTESTRINGADDED = 5808;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONATTRIBUTESTRINGREMOVED = 5809;
		public const uint32 DISPID_WMPCOREEVENT_PLAYLISTCOLLECTIONCHANGE = 5810;
		public const uint32 DISPID_WMPCOREEVENT_PLAYLISTCOLLECTIONPLAYLISTADDED = 5811;
		public const uint32 DISPID_WMPCOREEVENT_PLAYLISTCOLLECTIONPLAYLISTREMOVED = 5812;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONCONTENTSCANADDEDITEM = 5813;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONCONTENTSCANPROGRESS = 5814;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONSEARCHFOUNDITEM = 5815;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONSEARCHPROGRESS = 5816;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONSEARCHCOMPLETE = 5817;
		public const uint32 DISPID_WMPCOREEVENT_PLAYLISTCOLLECTIONPLAYLISTSETASDELETED = 5818;
		public const uint32 DISPID_WMPCOREEVENT_MODECHANGE = 5819;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONATTRIBUTESTRINGCHANGED = 5820;
		public const uint32 DISPID_WMPCOREEVENT_MEDIAERROR = 5821;
		public const uint32 DISPID_WMPCOREEVENT_DOMAINCHANGE = 5822;
		public const uint32 DISPID_WMPCOREEVENT_OPENPLAYLISTSWITCH = 5823;
		public const uint32 DISPID_WMPCOREEVENT_STRINGCOLLECTIONCHANGE = 5824;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONMEDIAADDED = 5825;
		public const uint32 DISPID_WMPCOREEVENT_MEDIACOLLECTIONMEDIAREMOVED = 5826;
		public const uint32 WMPOCXEVENT_BASE = 6500;
		public const uint32 DISPID_WMPOCXEVENT_SWITCHEDTOPLAYERAPPLICATION = 6501;
		public const uint32 DISPID_WMPOCXEVENT_SWITCHEDTOCONTROL = 6502;
		public const uint32 DISPID_WMPOCXEVENT_PLAYERDOCKEDSTATECHANGE = 6503;
		public const uint32 DISPID_WMPOCXEVENT_PLAYERRECONNECT = 6504;
		public const uint32 DISPID_WMPOCXEVENT_CLICK = 6505;
		public const uint32 DISPID_WMPOCXEVENT_DOUBLECLICK = 6506;
		public const uint32 DISPID_WMPOCXEVENT_KEYDOWN = 6507;
		public const uint32 DISPID_WMPOCXEVENT_KEYPRESS = 6508;
		public const uint32 DISPID_WMPOCXEVENT_KEYUP = 6509;
		public const uint32 DISPID_WMPOCXEVENT_MOUSEDOWN = 6510;
		public const uint32 DISPID_WMPOCXEVENT_MOUSEMOVE = 6511;
		public const uint32 DISPID_WMPOCXEVENT_MOUSEUP = 6512;
		public const uint32 DISPID_WMPOCXEVENT_DEVICECONNECT = 6513;
		public const uint32 DISPID_WMPOCXEVENT_DEVICEDISCONNECT = 6514;
		public const uint32 DISPID_WMPOCXEVENT_DEVICESTATUSCHANGE = 6515;
		public const uint32 DISPID_WMPOCXEVENT_DEVICESYNCSTATECHANGE = 6516;
		public const uint32 DISPID_WMPOCXEVENT_DEVICESYNCERROR = 6517;
		public const uint32 DISPID_WMPOCXEVENT_CREATEPARTNERSHIPCOMPLETE = 6518;
		public const uint32 DISPID_WMPOCXEVENT_CDROMRIPSTATECHANGE = 6519;
		public const uint32 DISPID_WMPOCXEVENT_CDROMRIPMEDIAERROR = 6520;
		public const uint32 DISPID_WMPOCXEVENT_CDROMBURNSTATECHANGE = 6521;
		public const uint32 DISPID_WMPOCXEVENT_CDROMBURNMEDIAERROR = 6522;
		public const uint32 DISPID_WMPOCXEVENT_CDROMBURNERROR = 6523;
		public const uint32 DISPID_WMPOCXEVENT_LIBRARYCONNECT = 6524;
		public const uint32 DISPID_WMPOCXEVENT_LIBRARYDISCONNECT = 6525;
		public const uint32 DISPID_WMPOCXEVENT_FOLDERSCANSTATECHANGE = 6526;
		public const uint32 DISPID_WMPOCXEVENT_DEVICEESTIMATION = 6527;
		public const uint32 DISPID_WMPCONTROLS_BASE = 50;
		public const uint32 DISPID_WMPSETTINGS_BASE = 100;
		public const uint32 DISPID_WMPPLAYLIST_BASE = 200;
		public const uint32 DISPID_WMPCDROM_BASE = 250;
		public const uint32 DISPID_WMPCDROMCOLLECTION_BASE = 300;
		public const uint32 DISPID_WMPSTRINGCOLLECTION_BASE = 400;
		public const uint32 DISPID_WMPMEDIACOLLECTION_BASE = 450;
		public const uint32 DISPID_WMPPLAYLISTARRAY_BASE = 500;
		public const uint32 DISPID_WMPPLAYLISTCOLLECTION_BASE = 550;
		public const uint32 DISPID_WMPMEDIA_BASE = 750;
		public const uint32 DISPID_WMPNETWORK_BASE = 800;
		public const uint32 DISPID_WMPERROR_BASE = 850;
		public const uint32 DISPID_WMPERRORITEM_BASE = 900;
		public const uint32 DISPID_WMPCLOSEDCAPTION_BASE = 950;
		public const uint32 DISPID_WMPDVD_BASE = 1000;
		public const uint32 DISPID_WMPMETADATA_BASE = 1050;
		public const uint32 DISPID_WMPPLAYERAPP_BASE = 1100;
		public const uint32 DISPID_WMPDOWNLOADMANAGER_BASE = 1150;
		public const uint32 DISPID_WMPDOWNLOADCOLLECTION_BASE = 1200;
		public const uint32 DISPID_WMPDOWNLOADITEM_BASE = 1250;
		public const uint32 DISPID_WMPDOWNLOADITEM2_BASE = 1300;
		public const uint32 DISPID_WMPQUERY_BASE = 1350;
		public const uint32 DISPID_WMPMEDIACOLLECTION2_BASE = 1400;
		public const uint32 DISPID_WMPSTRINGCOLLECTION2_BASE = 1450;
		public const Guid CLSID_WMPSkinManager = .(0xb2a7fd52, 0x301f, 0x4348, 0xb9, 0x3a, 0x63, 0x8c, 0x6d, 0xe4, 0x92, 0x29);
		public const Guid CLSID_WMPMediaPluginRegistrar = .(0x5569e7f5, 0x424b, 0x4b93, 0x89, 0xca, 0x79, 0xd1, 0x79, 0x24, 0x68, 0x9a);
		public const Guid WMP_PLUGINTYPE_DSP = .(0x6434baea, 0x4954, 0x498d, 0xab, 0xd5, 0x2b, 0x07, 0x12, 0x3e, 0x1f, 0x04);
		public const Guid WMP_PLUGINTYPE_DSP_OUTOFPROC = .(0xef29b174, 0xc347, 0x44cc, 0x9a, 0x4f, 0x23, 0x99, 0x11, 0x8f, 0xf3, 0x8c);
		public const Guid WMP_PLUGINTYPE_RENDERING = .(0xa8554541, 0x115d, 0x406a, 0xa4, 0xc7, 0x51, 0x11, 0x1c, 0x33, 0x01, 0x83);
		public const float kfltTimedLevelMaximumFrequency = 22050f;
		public const float kfltTimedLevelMinimumFrequency = 20f;
		public const String g_szContentPartnerInfo_LoginState = "LoginState";
		public const String g_szContentPartnerInfo_MediaPlayerAccountType = "MediaPlayerAccountType";
		public const String g_szContentPartnerInfo_AccountType = "AccountType";
		public const String g_szContentPartnerInfo_HasCachedCredentials = "HasCachedCredentials";
		public const String g_szContentPartnerInfo_LicenseRefreshAdvanceWarning = "LicenseRefreshAdvanceWarning";
		public const String g_szContentPartnerInfo_PurchasedTrackRequiresReDownload = "PurchasedTrackRequiresReDownload";
		public const String g_szContentPartnerInfo_MaximumTrackPurchasePerPurchase = "MaximumNumberOfTracksPerPurchase";
		public const String g_szContentPartnerInfo_AccountBalance = "AccountBalance";
		public const String g_szContentPartnerInfo_UserName = "UserName";
		public const String g_szMediaPlayerTask_Burn = "Burn";
		public const String g_szMediaPlayerTask_Browse = "Browse";
		public const String g_szMediaPlayerTask_Sync = "Sync";
		public const String g_szItemInfo_PopupURL = "Popup";
		public const String g_szItemInfo_AuthenticationSuccessURL = "AuthenticationSuccessURL";
		public const String g_szItemInfo_LoginFailureURL = "LoginFailureURL";
		public const String g_szItemInfo_HTMLViewURL = "HTMLViewURL";
		public const String g_szItemInfo_PopupCaption = "PopupCaption";
		public const String g_szItemInfo_ALTLoginURL = "ALTLoginURL";
		public const String g_szItemInfo_ALTLoginCaption = "ALTLoginCaption";
		public const String g_szItemInfo_ForgetPasswordURL = "ForgotPassword";
		public const String g_szItemInfo_CreateAccountURL = "CreateAccount";
		public const String g_szItemInfo_ArtistArtURL = "ArtistArt";
		public const String g_szItemInfo_AlbumArtURL = "AlbumArt";
		public const String g_szItemInfo_ListArtURL = "ListArt";
		public const String g_szItemInfo_GenreArtURL = "GenreArt";
		public const String g_szItemInfo_SubGenreArtURL = "SubGenreArt";
		public const String g_szItemInfo_RadioArtURL = "RadioArt";
		public const String g_szItemInfo_TreeListIconURL = "CPListIDIcon";
		public const String g_szItemInfo_ErrorDescription = "CPErrorDescription";
		public const String g_szItemInfo_ErrorURL = "CPErrorURL";
		public const String g_szItemInfo_ErrorURLLinkText = "CPErrorURLLinkText";
		public const String g_szUnknownLocation = "UnknownLocation";
		public const String g_szRootLocation = "RootLocation";
		public const String g_szFlyoutMenu = "FlyoutMenu";
		public const String g_szOnlineStore = "OnlineStore";
		public const String g_szVideoRecent = "VideoRecent";
		public const String g_szVideoRoot = "VideoRoot";
		public const String g_szCPListID = "CPListID";
		public const String g_szAllCPListIDs = "AllCPListIDs";
		public const String g_szCPTrackID = "CPTrackID";
		public const String g_szAllCPTrackIDs = "AllCPTrackIDs";
		public const String g_szCPArtistID = "CPArtistID";
		public const String g_szAllCPArtistIDs = "AllCPArtistIDs";
		public const String g_szCPAlbumID = "CPAlbumID";
		public const String g_szAllCPAlbumIDs = "AllCPAlbumIDs";
		public const String g_szCPGenreID = "CPGenreID";
		public const String g_szAllCPGenreIDs = "AllCPGenreIDs";
		public const String g_szCPAlbumSubGenreID = "CPAlbumSubGenreID";
		public const String g_szAllCPAlbumSubGenreIDs = "AllCPAlbumSubGenreIDs";
		public const String g_szReleaseDateYear = "ReleaseDateYear";
		public const String g_szAllReleaseDateYears = "AllReleaseDateYears";
		public const String g_szCPRadioID = "CPRadioID";
		public const String g_szAllCPRadioIDs = "AllCPRadioIDs";
		public const String g_szAuthor = "Author";
		public const String g_szAllAuthors = "AllAuthors";
		public const String g_szWMParentalRating = "WMParentalRating";
		public const String g_szAllWMParentalRatings = "AllWMParentalRatings";
		public const String g_szAllUserEffectiveRatingStarss = "AllUserEffectiveRatingStarss";
		public const String g_szUserEffectiveRatingStars = "UserEffectiveRatingStars";
		public const String g_szUserPlaylist = "UserPlaylist";
		public const String g_szViewMode_Report = "ViewModeReport";
		public const String g_szViewMode_Details = "ViewModeDetails";
		public const String g_szViewMode_Icon = "ViewModeIcon";
		public const String g_szViewMode_Tile = "ViewModeTile";
		public const String g_szViewMode_OrderedList = "ViewModeOrderedList";
		public const String g_szContentPrice_Unknown = "PriceUnknown";
		public const String g_szContentPrice_CannotBuy = "PriceCannotBuy";
		public const String g_szContentPrice_Free = "PriceFree";
		public const String g_szRefreshLicensePlay = "RefreshForPlay";
		public const String g_szRefreshLicenseBurn = "RefreshForBurn";
		public const String g_szRefreshLicenseSync = "RefreshForSync";
		public const String g_szVerifyPermissionSync = "VerifyPermissionSync";
		public const String g_szStationEvent_Started = "TrackStarted";
		public const String g_szStationEvent_Complete = "TrackComplete";
		public const String g_szStationEvent_Skipped = "TrackSkipped";
		public const Guid WMProfile_V40_DialUpMBR = .(0xfd7f47f1, 0x72a6, 0x45a4, 0x80, 0xf0, 0x3a, 0xec, 0xef, 0xc3, 0x2c, 0x07);
		public const Guid WMProfile_V40_IntranetMBR = .(0x82cd3321, 0xa94a, 0x4ffc, 0x9c, 0x2b, 0x09, 0x2c, 0x10, 0xca, 0x16, 0xe7);
		public const Guid WMProfile_V40_2856100MBR = .(0x5a1c2206, 0xdc5e, 0x4186, 0xbe, 0xb2, 0x4c, 0x5a, 0x99, 0x4b, 0x13, 0x2e);
		public const Guid WMProfile_V40_6VoiceAudio = .(0xd508978a, 0x11a0, 0x4d15, 0xb0, 0xda, 0xac, 0xdc, 0x99, 0xd4, 0xf8, 0x90);
		public const Guid WMProfile_V40_16AMRadio = .(0x0f4be81f, 0xd57d, 0x41e1, 0xb2, 0xe3, 0x2f, 0xad, 0x98, 0x6b, 0xfe, 0xc2);
		public const Guid WMProfile_V40_288FMRadioMono = .(0x7fa57fc8, 0x6ea4, 0x4645, 0x8a, 0xbf, 0xb6, 0xe5, 0xa8, 0xf8, 0x14, 0xa1);
		public const Guid WMProfile_V40_288FMRadioStereo = .(0x22fcf466, 0xaa40, 0x431f, 0xa2, 0x89, 0x06, 0xd0, 0xea, 0x1a, 0x1e, 0x40);
		public const Guid WMProfile_V40_56DialUpStereo = .(0xe8026f87, 0xe905, 0x4594, 0xa3, 0xc7, 0x00, 0xd0, 0x00, 0x41, 0xd1, 0xd9);
		public const Guid WMProfile_V40_64Audio = .(0x4820b3f7, 0xcbec, 0x41dc, 0x93, 0x91, 0x78, 0x59, 0x87, 0x14, 0xc8, 0xe5);
		public const Guid WMProfile_V40_96Audio = .(0x0efa0ee3, 0x9e64, 0x41e2, 0x83, 0x7f, 0x3c, 0x00, 0x38, 0xf3, 0x27, 0xba);
		public const Guid WMProfile_V40_128Audio = .(0x93ddbe12, 0x13dc, 0x4e32, 0xa3, 0x5e, 0x40, 0x37, 0x8e, 0x34, 0x27, 0x9a);
		public const Guid WMProfile_V40_288VideoVoice = .(0xbb2bc274, 0x0eb6, 0x4da9, 0xb5, 0x50, 0xec, 0xf7, 0xf2, 0xb9, 0x94, 0x8f);
		public const Guid WMProfile_V40_288VideoAudio = .(0xac617f2d, 0x6cbe, 0x4e84, 0x8e, 0x9a, 0xce, 0x15, 0x1a, 0x12, 0xa3, 0x54);
		public const Guid WMProfile_V40_288VideoWebServer = .(0xabf2f00d, 0xd555, 0x4815, 0x94, 0xce, 0x82, 0x75, 0xf3, 0xa7, 0x0b, 0xfe);
		public const Guid WMProfile_V40_56DialUpVideo = .(0xe21713bb, 0x652f, 0x4dab, 0x99, 0xde, 0x71, 0xe0, 0x44, 0x00, 0x27, 0x0f);
		public const Guid WMProfile_V40_56DialUpVideoWebServer = .(0xb756ff10, 0x520f, 0x4749, 0xa3, 0x99, 0xb7, 0x80, 0xe2, 0xfc, 0x92, 0x50);
		public const Guid WMProfile_V40_100Video = .(0x8f99ddd8, 0x6684, 0x456b, 0xa0, 0xa3, 0x33, 0xe1, 0x31, 0x68, 0x95, 0xf0);
		public const Guid WMProfile_V40_250Video = .(0x541841c3, 0x9339, 0x4f7b, 0x9a, 0x22, 0xb1, 0x15, 0x40, 0x89, 0x4e, 0x42);
		public const Guid WMProfile_V40_512Video = .(0x70440e6d, 0xc4ef, 0x4f84, 0x8c, 0xd0, 0xd5, 0xc2, 0x86, 0x86, 0xe7, 0x84);
		public const Guid WMProfile_V40_1MBVideo = .(0xb4482a4c, 0xcc17, 0x4b07, 0xa9, 0x4e, 0x98, 0x18, 0xd5, 0xe0, 0xf1, 0x3f);
		public const Guid WMProfile_V40_3MBVideo = .(0x55374ac0, 0x309b, 0x4396, 0xb8, 0x8f, 0xe6, 0xe2, 0x92, 0x11, 0x3f, 0x28);
		public const Guid WMProfile_V70_DialUpMBR = .(0x5b16e74b, 0x4068, 0x45b5, 0xb8, 0x0e, 0x7b, 0xf8, 0xc8, 0x0d, 0x2c, 0x2f);
		public const Guid WMProfile_V70_IntranetMBR = .(0x045880dc, 0x34b6, 0x4ca9, 0xa3, 0x26, 0x73, 0x55, 0x7e, 0xd1, 0x43, 0xf3);
		public const Guid WMProfile_V70_2856100MBR = .(0x07df7a25, 0x3fe2, 0x4a5b, 0x8b, 0x1e, 0x34, 0x8b, 0x07, 0x21, 0xca, 0x70);
		public const Guid WMProfile_V70_288VideoVoice = .(0xb952f38e, 0x7dbc, 0x4533, 0xa9, 0xca, 0xb0, 0x0b, 0x1c, 0x6e, 0x98, 0x00);
		public const Guid WMProfile_V70_288VideoAudio = .(0x58bba0ee, 0x896a, 0x4948, 0x99, 0x53, 0x85, 0xb7, 0x36, 0xf8, 0x39, 0x47);
		public const Guid WMProfile_V70_288VideoWebServer = .(0x70a32e2b, 0xe2df, 0x4ebd, 0x91, 0x05, 0xd9, 0xca, 0x19, 0x4a, 0x2d, 0x50);
		public const Guid WMProfile_V70_56VideoWebServer = .(0xdef99e40, 0x57bc, 0x4ab3, 0xb2, 0xd1, 0xb6, 0xe3, 0xca, 0xf6, 0x42, 0x57);
		public const Guid WMProfile_V70_64VideoISDN = .(0xc2b7a7e9, 0x7b8e, 0x4992, 0xa1, 0xa1, 0x06, 0x82, 0x17, 0xa3, 0xb3, 0x11);
		public const Guid WMProfile_V70_100Video = .(0xd9f3c932, 0x5ea9, 0x4c6d, 0x89, 0xb4, 0x26, 0x86, 0xe5, 0x15, 0x42, 0x6e);
		public const Guid WMProfile_V70_256Video = .(0xafe69b3a, 0x403f, 0x4a1b, 0x80, 0x07, 0x0e, 0x21, 0xcf, 0xb3, 0xdf, 0x84);
		public const Guid WMProfile_V70_384Video = .(0xf3d45fbb, 0x8782, 0x44df, 0x97, 0xc6, 0x86, 0x78, 0xe2, 0xf9, 0xb1, 0x3d);
		public const Guid WMProfile_V70_768Video = .(0x0326ebb6, 0xf76e, 0x4964, 0xb0, 0xdb, 0xe7, 0x29, 0x97, 0x8d, 0x35, 0xee);
		public const Guid WMProfile_V70_1500Video = .(0x0b89164a, 0x5490, 0x4686, 0x9e, 0x37, 0x5a, 0x80, 0x88, 0x4e, 0x51, 0x46);
		public const Guid WMProfile_V70_2000Video = .(0xaa980124, 0xbf10, 0x4e4f, 0x9a, 0xfd, 0x43, 0x29, 0xa7, 0x39, 0x5c, 0xff);
		public const Guid WMProfile_V70_700FilmContentVideo = .(0x7a747920, 0x2449, 0x4d76, 0x99, 0xcb, 0xfd, 0xb0, 0xc9, 0x04, 0x84, 0xd4);
		public const Guid WMProfile_V70_1500FilmContentVideo = .(0xf6a5f6df, 0xee3f, 0x434c, 0xa4, 0x33, 0x52, 0x3c, 0xe5, 0x5f, 0x51, 0x6b);
		public const Guid WMProfile_V70_6VoiceAudio = .(0xeaba9fbf, 0xb64f, 0x49b3, 0xaa, 0x0c, 0x73, 0xfb, 0xdd, 0x15, 0x0a, 0xd0);
		public const Guid WMProfile_V70_288FMRadioMono = .(0xc012a833, 0xa03b, 0x44a5, 0x96, 0xdc, 0xed, 0x95, 0xcc, 0x65, 0x58, 0x2d);
		public const Guid WMProfile_V70_288FMRadioStereo = .(0xe96d67c9, 0x1a39, 0x4dc4, 0xb9, 0x00, 0xb1, 0x18, 0x4d, 0xc8, 0x36, 0x20);
		public const Guid WMProfile_V70_56DialUpStereo = .(0x674ee767, 0x0949, 0x4fac, 0x87, 0x5e, 0xf4, 0xc9, 0xc2, 0x92, 0x01, 0x3b);
		public const Guid WMProfile_V70_64AudioISDN = .(0x91dea458, 0x9d60, 0x4212, 0x9c, 0x59, 0xd4, 0x09, 0x19, 0xc9, 0x39, 0xe4);
		public const Guid WMProfile_V70_64Audio = .(0xb29cffc6, 0xf131, 0x41db, 0xb5, 0xe8, 0x99, 0xd8, 0xb0, 0xb9, 0x45, 0xf4);
		public const Guid WMProfile_V70_96Audio = .(0xa9d4b819, 0x16cc, 0x4a59, 0x9f, 0x37, 0x69, 0x3d, 0xbb, 0x03, 0x02, 0xd6);
		public const Guid WMProfile_V70_128Audio = .(0xc64cf5da, 0xdf45, 0x40d3, 0x80, 0x27, 0xde, 0x69, 0x8d, 0x68, 0xdc, 0x66);
		public const Guid WMProfile_V70_225VideoPDA = .(0xf55ea573, 0x4c02, 0x42b5, 0x90, 0x26, 0xa8, 0x26, 0x0c, 0x43, 0x8a, 0x9f);
		public const Guid WMProfile_V70_150VideoPDA = .(0x0f472967, 0xe3c6, 0x4797, 0x96, 0x94, 0xf0, 0x30, 0x4c, 0x5e, 0x2f, 0x17);
		public const Guid WMProfile_V80_255VideoPDA = .(0xfeedbcdf, 0x3fac, 0x4c93, 0xac, 0x0d, 0x47, 0x94, 0x1e, 0xc7, 0x2c, 0x0b);
		public const Guid WMProfile_V80_150VideoPDA = .(0xaee16dfa, 0x2c14, 0x4a2f, 0xad, 0x3f, 0xa3, 0x03, 0x40, 0x31, 0x78, 0x4f);
		public const Guid WMProfile_V80_28856VideoMBR = .(0xd66920c4, 0xc21f, 0x4ec8, 0xa0, 0xb4, 0x95, 0xcf, 0x2b, 0xd5, 0x7f, 0xc4);
		public const Guid WMProfile_V80_100768VideoMBR = .(0x5bdb5a0e, 0x979e, 0x47d3, 0x95, 0x96, 0x73, 0xb3, 0x86, 0x39, 0x2a, 0x55);
		public const Guid WMProfile_V80_288100VideoMBR = .(0xd8722c69, 0x2419, 0x4b36, 0xb4, 0xe0, 0x6e, 0x17, 0xb6, 0x05, 0x64, 0xe5);
		public const Guid WMProfile_V80_288Video = .(0x3df678d9, 0x1352, 0x4186, 0xbb, 0xf8, 0x74, 0xf0, 0xc1, 0x9b, 0x6a, 0xe2);
		public const Guid WMProfile_V80_56Video = .(0x254e8a96, 0x2612, 0x405c, 0x80, 0x39, 0xf0, 0xbf, 0x72, 0x5c, 0xed, 0x7d);
		public const Guid WMProfile_V80_100Video = .(0xa2e300b4, 0xc2d4, 0x4fc0, 0xb5, 0xdd, 0xec, 0xbd, 0x94, 0x8d, 0xc0, 0xdf);
		public const Guid WMProfile_V80_256Video = .(0xbbc75500, 0x33d2, 0x4466, 0xb8, 0x6b, 0x12, 0x2b, 0x20, 0x1c, 0xc9, 0xae);
		public const Guid WMProfile_V80_384Video = .(0x29b00c2b, 0x09a9, 0x48bd, 0xad, 0x09, 0xcd, 0xae, 0x11, 0x7d, 0x1d, 0xa7);
		public const Guid WMProfile_V80_768Video = .(0x74d01102, 0xe71a, 0x4820, 0x8f, 0x0d, 0x13, 0xd2, 0xec, 0x1e, 0x48, 0x72);
		public const Guid WMProfile_V80_700NTSCVideo = .(0xc8c2985f, 0xe5d9, 0x4538, 0x9e, 0x23, 0x9b, 0x21, 0xbf, 0x78, 0xf7, 0x45);
		public const Guid WMProfile_V80_1400NTSCVideo = .(0x931d1bee, 0x617a, 0x4bcd, 0x99, 0x05, 0xcc, 0xd0, 0x78, 0x66, 0x83, 0xee);
		public const Guid WMProfile_V80_384PALVideo = .(0x9227c692, 0xae62, 0x4f72, 0xa7, 0xea, 0x73, 0x60, 0x62, 0xd0, 0xe2, 0x1e);
		public const Guid WMProfile_V80_700PALVideo = .(0xec298949, 0x639b, 0x45e2, 0x96, 0xfd, 0x4a, 0xb3, 0x2d, 0x59, 0x19, 0xc2);
		public const Guid WMProfile_V80_288MonoAudio = .(0x7ea3126d, 0xe1ba, 0x4716, 0x89, 0xaf, 0xf6, 0x5c, 0xee, 0x0c, 0x0c, 0x67);
		public const Guid WMProfile_V80_288StereoAudio = .(0x7e4cab5c, 0x35dc, 0x45bb, 0xa7, 0xc0, 0x19, 0xb2, 0x80, 0x70, 0xd0, 0xcc);
		public const Guid WMProfile_V80_32StereoAudio = .(0x60907f9f, 0xb352, 0x47e5, 0xb2, 0x10, 0x0e, 0xf1, 0xf4, 0x7e, 0x9f, 0x9d);
		public const Guid WMProfile_V80_48StereoAudio = .(0x5ee06be5, 0x492b, 0x480a, 0x8a, 0x8f, 0x12, 0xf3, 0x73, 0xec, 0xf9, 0xd4);
		public const Guid WMProfile_V80_64StereoAudio = .(0x09bb5bc4, 0x3176, 0x457f, 0x8d, 0xd6, 0x3c, 0xd9, 0x19, 0x12, 0x3e, 0x2d);
		public const Guid WMProfile_V80_96StereoAudio = .(0x1fc81930, 0x61f2, 0x436f, 0x9d, 0x33, 0x34, 0x9f, 0x2a, 0x1c, 0x0f, 0x10);
		public const Guid WMProfile_V80_128StereoAudio = .(0x407b9450, 0x8bdc, 0x4ee5, 0x88, 0xb8, 0x6f, 0x52, 0x7b, 0xd9, 0x41, 0xf2);
		public const Guid WMProfile_V80_288VideoOnly = .(0x8c45b4c7, 0x4aeb, 0x4f78, 0xa5, 0xec, 0x88, 0x42, 0x0b, 0x9d, 0xad, 0xef);
		public const Guid WMProfile_V80_56VideoOnly = .(0x6e2a6955, 0x81df, 0x4943, 0xba, 0x50, 0x68, 0xa9, 0x86, 0xa7, 0x08, 0xf6);
		public const Guid WMProfile_V80_FAIRVBRVideo = .(0x3510a862, 0x5850, 0x4886, 0x83, 0x5f, 0xd7, 0x8e, 0xc6, 0xa6, 0x40, 0x42);
		public const Guid WMProfile_V80_HIGHVBRVideo = .(0x0f10d9d3, 0x3b04, 0x4fb0, 0xa3, 0xd3, 0x88, 0xd4, 0xac, 0x85, 0x4a, 0xcc);
		public const Guid WMProfile_V80_BESTVBRVideo = .(0x048439ba, 0x309c, 0x440e, 0x9c, 0xb4, 0x3d, 0xcc, 0xa3, 0x75, 0x64, 0x23);
		
		// --- Enums ---
		
		public enum WMPOpenState : int32
		{
			Undefined = 0,
			PlaylistChanging = 1,
			PlaylistLocating = 2,
			PlaylistConnecting = 3,
			PlaylistLoading = 4,
			PlaylistOpening = 5,
			PlaylistOpenNoMedia = 6,
			PlaylistChanged = 7,
			MediaChanging = 8,
			MediaLocating = 9,
			MediaConnecting = 10,
			MediaLoading = 11,
			MediaOpening = 12,
			MediaOpen = 13,
			BeginCodecAcquisition = 14,
			EndCodecAcquisition = 15,
			BeginLicenseAcquisition = 16,
			EndLicenseAcquisition = 17,
			BeginIndividualization = 18,
			EndIndividualization = 19,
			MediaWaiting = 20,
			OpeningUnknownURL = 21,
		}
		public enum WMPPlayState : int32
		{
			Undefined = 0,
			Stopped = 1,
			Paused = 2,
			Playing = 3,
			ScanForward = 4,
			ScanReverse = 5,
			Buffering = 6,
			Waiting = 7,
			MediaEnded = 8,
			Transitioning = 9,
			Ready = 10,
			Reconnecting = 11,
			Last = 12,
		}
		public enum WMPPlaylistChangeEventType : int32
		{
			Unknown = 0,
			Clear = 1,
			InfoChange = 2,
			Move = 3,
			Delete = 4,
			Insert = 5,
			Append = 6,
			Private = 7,
			NameChange = 8,
			Morph = 9,
			Sort = 10,
			Last = 11,
		}
		public enum WMPSyncState : int32
		{
			Unknown = 0,
			Synchronizing = 1,
			Stopped = 2,
			Estimating = 3,
			Last = 4,
		}
		public enum WMPDeviceStatus : int32
		{
			Unknown = 0,
			PartnershipExists = 1,
			PartnershipDeclined = 2,
			PartnershipAnother = 3,
			ManualDevice = 4,
			NewDevice = 5,
			Last = 6,
		}
		public enum WMPRipState : int32
		{
			Unknown = 0,
			Ripping = 1,
			Stopped = 2,
		}
		public enum WMPBurnFormat : int32
		{
			AudioCD = 0,
			DataCD = 1,
		}
		public enum WMPBurnState : int32
		{
			Unknown = 0,
			Busy = 1,
			Ready = 2,
			WaitingForDisc = 3,
			RefreshStatusPending = 4,
			PreparingToBurn = 5,
			Burning = 6,
			Stopped = 7,
			Erasing = 8,
			Downloading = 9,
		}
		public enum WMPStringCollectionChangeEventType : int32
		{
			Unknown = 0,
			Insert = 1,
			Change = 2,
			Delete = 3,
			Clear = 4,
			BeginUpdates = 5,
			EndUpdates = 6,
		}
		public enum WMPLibraryType : int32
		{
			Unknown = 0,
			All = 1,
			Local = 2,
			Remote = 3,
			Disc = 4,
			PortableDevice = 5,
		}
		public enum WMPFolderScanState : int32
		{
			Unknown = 0,
			Scanning = 1,
			Updating = 2,
			Stopped = 3,
		}
		public enum WMPServices_StreamState : int32
		{
			Stop = 0,
			Pause = 1,
			Play = 2,
		}
		public enum WMPPlugin_Caps : int32
		{
			Caps_CannotConvertFormats = 1,
		}
		public enum FEEDS_BACKGROUNDSYNC_ACTION : int32
		{
			DISABLE = 0,
			ENABLE = 1,
			RUNNOW = 2,
		}
		public enum FEEDS_BACKGROUNDSYNC_STATUS : int32
		{
			DISABLED = 0,
			ENABLED = 1,
		}
		public enum FEEDS_EVENTS_SCOPE : int32
		{
			ALL = 0,
			SELF_ONLY = 1,
			SELF_AND_CHILDREN_ONLY = 2,
		}
		public enum FEEDS_EVENTS_MASK : int32
		{
			FOLDEREVENTS = 1,
			FEEDEVENTS = 2,
		}
		public enum FEEDS_XML_SORT_PROPERTY : int32
		{
			NONE = 0,
			PUBDATE = 1,
			DOWNLOADTIME = 2,
		}
		public enum FEEDS_XML_SORT_ORDER : int32
		{
			NONE = 0,
			ASCENDING = 1,
			DESCENDING = 2,
		}
		public enum FEEDS_XML_FILTER_FLAGS : int32
		{
			ALL = 0,
			UNREAD = 1,
			READ = 2,
		}
		public enum FEEDS_XML_INCLUDE_FLAGS : int32
		{
			NONE = 0,
			CF_EXTENSIONS = 1,
		}
		public enum FEEDS_DOWNLOAD_STATUS : int32
		{
			NONE = 0,
			PENDING = 1,
			DOWNLOADING = 2,
			DOWNLOADED = 3,
			DOWNLOAD_FAILED = 4,
		}
		public enum FEEDS_SYNC_SETTING : int32
		{
			DEFAULT = 0,
			INTERVAL = 1,
			MANUAL = 2,
			SUGGESTED = 3,
		}
		public enum FEEDS_DOWNLOAD_ERROR : int32
		{
			NONE = 0,
			DOWNLOAD_FAILED = 1,
			INVALID_FEED_FORMAT = 2,
			NORMALIZATION_FAILED = 3,
			PERSISTENCE_FAILED = 4,
			DOWNLOAD_BLOCKED = 5,
			CANCELED = 6,
			UNSUPPORTED_AUTH = 7,
			BACKGROUND_DOWNLOAD_DISABLED = 8,
			NOT_EXIST = 9,
			UNSUPPORTED_MSXML = 10,
			UNSUPPORTED_DTD = 11,
			DOWNLOAD_SIZE_LIMIT_EXCEEDED = 12,
			ACCESS_DENIED = 13,
			AUTH_FAILED = 14,
			INVALID_AUTH = 15,
		}
		public enum FEEDS_EVENTS_ITEM_COUNT_FLAGS : int32
		{
			READ_ITEM_COUNT_CHANGED = 1,
			UNREAD_ITEM_COUNT_CHANGED = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_ERROR_CODE : int32
		{
			ERRORBASE = -1073479168,
			INVALIDMSXMLPROPERTY = -1073479168,
			DOWNLOADSIZELIMITEXCEEDED = -1073479167,
		}
		public enum PlayerState : int32
		{
			stop_state = 0,
			pause_state = 1,
			play_state = 2,
		}
		public enum WMPPartnerNotification : int32
		{
			BackgroundProcessingBegin = 1,
			BackgroundProcessingEnd = 2,
			CatalogDownloadFailure = 3,
			CatalogDownloadComplete = 4,
		}
		public enum WMPCallbackNotification : int32
		{
			LoginStateChange = 1,
			AuthResult = 2,
			LicenseUpdated = 3,
			NewCatalogAvailable = 4,
			NewPluginAvailable = 5,
			DisableRadioSkipping = 6,
		}
		public enum WMPTaskType : int32
		{
			Browse = 1,
			Sync = 2,
			Burn = 3,
			Current = 4,
		}
		public enum WMPTransactionType : int32
		{
			NoTransaction = 0,
			Download = 1,
			Buy = 2,
		}
		public enum WMPTemplateSize : int32
		{
			Small = 0,
			Medium = 1,
			Large = 2,
		}
		public enum WMPStreamingType : int32
		{
			Unknown = 0,
			Music = 1,
			Video = 2,
			Radio = 3,
		}
		public enum WMPAccountType : int32
		{
			BuyOnly = 1,
			Subscription = 2,
			Janus = 3,
		}
		public enum WMPSubscriptionServiceEvent : int32
		{
			CurrentBegin = 1,
			CurrentEnd = 2,
			FullBegin = 3,
			FullEnd = 4,
		}
		public enum WMPSubscriptionDownloadState : int32
		{
			Downloading = 0,
			Paused = 1,
			Processing = 2,
			Completed = 3,
			Cancelled = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TimedLevel
		{
			public uint8[2048] frequency;
			public uint8[2048] waveform;
			public int32 state;
			public int64 timeStamp;
		}
		[CRepr]
		public struct WMPContextMenuInfo
		{
			public uint32 dwID;
			public BSTR bstrMenuText;
			public BSTR bstrHelpText;
		}
		[CRepr, Packed(1)]
		public struct WMP_WMDM_METADATA_ROUND_TRIP_PC2DEVICE
		{
			public uint32 dwChangesSinceTransactionID;
			public uint32 dwResultSetStartingIndex;
		}
		[CRepr, Packed(1)]
		public struct WMP_WMDM_METADATA_ROUND_TRIP_DEVICE2PC
		{
			public uint32 dwCurrentTransactionID;
			public uint32 dwReturnedObjectCount;
			public uint32 dwUnretrievedObjectCount;
			public uint32 dwDeletedObjectStartingOffset;
			public uint32 dwFlags;
			public char16[0] wsObjectPathnameList;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WindowsMediaPlayer = .(0x6bf52a52, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
		public const Guid CLSID_WMPLib = .(0x6bf52a50, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
		public const Guid CLSID_WMPRemoteMediaServices = .(0xdf333473, 0x2cf7, 0x4be2, 0x90, 0x7f, 0x9a, 0xad, 0x56, 0x61, 0x36, 0x4f);
		public const Guid CLSID_FeedsManager = .(0xfaeb54c4, 0xf66f, 0x4806, 0x83, 0xa0, 0x80, 0x52, 0x99, 0xf5, 0xe3, 0xad);
		public const Guid CLSID_FeedFolderWatcher = .(0x281001ed, 0x7765, 0x4cb0, 0x84, 0xaf, 0xe9, 0xb3, 0x87, 0xaf, 0x01, 0xff);
		public const Guid CLSID_FeedWatcher = .(0x18a6737b, 0xf433, 0x4687, 0x89, 0xbc, 0xa1, 0xb4, 0xdf, 0xb9, 0xf1, 0x23);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWMPErrorItem : IDispatch
		{
			public const new Guid IID = .(0x3614c646, 0x3b3b, 0x4de7, 0xa8, 0x1e, 0x93, 0x0e, 0x3f, 0x21, 0x27, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_errorCode(out int32 phr) mut => VT.get_errorCode(ref this, out phr);
			public HRESULT get_errorDescription(out BSTR pbstrDescription) mut => VT.get_errorDescription(ref this, out pbstrDescription);
			public HRESULT get_errorContext(out VARIANT pvarContext) mut => VT.get_errorContext(ref this, out pvarContext);
			public HRESULT get_remedy(out int32 plRemedy) mut => VT.get_remedy(ref this, out plRemedy);
			public HRESULT get_customUrl(out BSTR pbstrCustomUrl) mut => VT.get_customUrl(ref this, out pbstrCustomUrl);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem self, out int32 phr) get_errorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem self, out BSTR pbstrDescription) get_errorDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem self, out VARIANT pvarContext) get_errorContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem self, out int32 plRemedy) get_remedy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem self, out BSTR pbstrCustomUrl) get_customUrl;
			}
		}
		[CRepr]
		public struct IWMPError : IDispatch
		{
			public const new Guid IID = .(0xa12dcf7d, 0x14ab, 0x4c1b, 0xa8, 0xcd, 0x63, 0x90, 0x9f, 0x06, 0x02, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT clearErrorQueue() mut => VT.clearErrorQueue(ref this);
			public HRESULT get_errorCount(out int32 plNumErrors) mut => VT.get_errorCount(ref this, out plNumErrors);
			public HRESULT get_item(int32 dwIndex, out IWMPErrorItem* ppErrorItem) mut => VT.get_item(ref this, dwIndex, out ppErrorItem);
			public HRESULT webHelp() mut => VT.webHelp(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPError self) clearErrorQueue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPError self, out int32 plNumErrors) get_errorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPError self, int32 dwIndex, out IWMPErrorItem* ppErrorItem) get_item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPError self) webHelp;
			}
		}
		[CRepr]
		public struct IWMPMedia : IDispatch
		{
			public const new Guid IID = .(0x94d55e95, 0x3fac, 0x11d3, 0xb1, 0x55, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isIdentical(ref IWMPMedia pIWMPMedia, out int16 pvbool) mut => VT.get_isIdentical(ref this, ref pIWMPMedia, out pvbool);
			public HRESULT get_sourceURL(out BSTR pbstrSourceURL) mut => VT.get_sourceURL(ref this, out pbstrSourceURL);
			public HRESULT get_name(out BSTR pbstrName) mut => VT.get_name(ref this, out pbstrName);
			public HRESULT put_name(BSTR bstrName) mut => VT.put_name(ref this, bstrName);
			public HRESULT get_imageSourceWidth(out int32 pWidth) mut => VT.get_imageSourceWidth(ref this, out pWidth);
			public HRESULT get_imageSourceHeight(out int32 pHeight) mut => VT.get_imageSourceHeight(ref this, out pHeight);
			public HRESULT get_markerCount(out int32 pMarkerCount) mut => VT.get_markerCount(ref this, out pMarkerCount);
			public HRESULT getMarkerTime(int32 MarkerNum, out double pMarkerTime) mut => VT.getMarkerTime(ref this, MarkerNum, out pMarkerTime);
			public HRESULT getMarkerName(int32 MarkerNum, out BSTR pbstrMarkerName) mut => VT.getMarkerName(ref this, MarkerNum, out pbstrMarkerName);
			public HRESULT get_duration(out double pDuration) mut => VT.get_duration(ref this, out pDuration);
			public HRESULT get_durationString(out BSTR pbstrDuration) mut => VT.get_durationString(ref this, out pbstrDuration);
			public HRESULT get_attributeCount(out int32 plCount) mut => VT.get_attributeCount(ref this, out plCount);
			public HRESULT getAttributeName(int32 lIndex, out BSTR pbstrItemName) mut => VT.getAttributeName(ref this, lIndex, out pbstrItemName);
			public HRESULT getItemInfo(BSTR bstrItemName, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrItemName, out pbstrVal);
			public HRESULT setItemInfo(BSTR bstrItemName, BSTR bstrVal) mut => VT.setItemInfo(ref this, bstrItemName, bstrVal);
			public HRESULT getItemInfoByAtom(int32 lAtom, out BSTR pbstrVal) mut => VT.getItemInfoByAtom(ref this, lAtom, out pbstrVal);
			public HRESULT isMemberOf(ref IWMPPlaylist pPlaylist, out int16 pvarfIsMemberOf) mut => VT.isMemberOf(ref this, ref pPlaylist, out pvarfIsMemberOf);
			public HRESULT isReadOnlyItem(BSTR bstrItemName, out int16 pvarfIsReadOnly) mut => VT.isReadOnlyItem(ref this, bstrItemName, out pvarfIsReadOnly);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, ref IWMPMedia pIWMPMedia, out int16 pvbool) get_isIdentical;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out BSTR pbstrSourceURL) get_sourceURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out BSTR pbstrName) get_name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, BSTR bstrName) put_name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out int32 pWidth) get_imageSourceWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out int32 pHeight) get_imageSourceHeight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out int32 pMarkerCount) get_markerCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, int32 MarkerNum, out double pMarkerTime) getMarkerTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, int32 MarkerNum, out BSTR pbstrMarkerName) getMarkerName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out double pDuration) get_duration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out BSTR pbstrDuration) get_durationString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, out int32 plCount) get_attributeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, int32 lIndex, out BSTR pbstrItemName) getAttributeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, BSTR bstrItemName, out BSTR pbstrVal) getItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, int32 lAtom, out BSTR pbstrVal) getItemInfoByAtom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, ref IWMPPlaylist pPlaylist, out int16 pvarfIsMemberOf) isMemberOf;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia self, BSTR bstrItemName, out int16 pvarfIsReadOnly) isReadOnlyItem;
			}
		}
		[CRepr]
		public struct IWMPControls : IDispatch
		{
			public const new Guid IID = .(0x74c09e02, 0xf828, 0x11d2, 0xa7, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, out int16 pIsAvailable) mut => VT.get_isAvailable(ref this, bstrItem, out pIsAvailable);
			public HRESULT play() mut => VT.play(ref this);
			public HRESULT stop() mut => VT.stop(ref this);
			public HRESULT pause() mut => VT.pause(ref this);
			public HRESULT fastForward() mut => VT.fastForward(ref this);
			public HRESULT fastReverse() mut => VT.fastReverse(ref this);
			public HRESULT get_currentPosition(out double pdCurrentPosition) mut => VT.get_currentPosition(ref this, out pdCurrentPosition);
			public HRESULT put_currentPosition(double dCurrentPosition) mut => VT.put_currentPosition(ref this, dCurrentPosition);
			public HRESULT get_currentPositionString(out BSTR pbstrCurrentPosition) mut => VT.get_currentPositionString(ref this, out pbstrCurrentPosition);
			public HRESULT next() mut => VT.next(ref this);
			public HRESULT previous() mut => VT.previous(ref this);
			public HRESULT get_currentItem(out IWMPMedia* ppIWMPMedia) mut => VT.get_currentItem(ref this, out ppIWMPMedia);
			public HRESULT put_currentItem(ref IWMPMedia pIWMPMedia) mut => VT.put_currentItem(ref this, ref pIWMPMedia);
			public HRESULT get_currentMarker(out int32 plMarker) mut => VT.get_currentMarker(ref this, out plMarker);
			public HRESULT put_currentMarker(int32 lMarker) mut => VT.put_currentMarker(ref this, lMarker);
			public HRESULT playItem(ref IWMPMedia pIWMPMedia) mut => VT.playItem(ref this, ref pIWMPMedia);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, BSTR bstrItem, out int16 pIsAvailable) get_isAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) play;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) fastForward;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) fastReverse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, out double pdCurrentPosition) get_currentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, double dCurrentPosition) put_currentPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, out BSTR pbstrCurrentPosition) get_currentPositionString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self) previous;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, out IWMPMedia* ppIWMPMedia) get_currentItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, ref IWMPMedia pIWMPMedia) put_currentItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, out int32 plMarker) get_currentMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, int32 lMarker) put_currentMarker;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls self, ref IWMPMedia pIWMPMedia) playItem;
			}
		}
		[CRepr]
		public struct IWMPSettings : IDispatch
		{
			public const new Guid IID = .(0x9104d1ab, 0x80c9, 0x4fed, 0xab, 0xf0, 0x2e, 0x64, 0x17, 0xa6, 0xdf, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, out int16 pIsAvailable) mut => VT.get_isAvailable(ref this, bstrItem, out pIsAvailable);
			public HRESULT get_autoStart(out int16 pfAutoStart) mut => VT.get_autoStart(ref this, out pfAutoStart);
			public HRESULT put_autoStart(int16 fAutoStart) mut => VT.put_autoStart(ref this, fAutoStart);
			public HRESULT get_baseURL(out BSTR pbstrBaseURL) mut => VT.get_baseURL(ref this, out pbstrBaseURL);
			public HRESULT put_baseURL(BSTR bstrBaseURL) mut => VT.put_baseURL(ref this, bstrBaseURL);
			public HRESULT get_defaultFrame(out BSTR pbstrDefaultFrame) mut => VT.get_defaultFrame(ref this, out pbstrDefaultFrame);
			public HRESULT put_defaultFrame(BSTR bstrDefaultFrame) mut => VT.put_defaultFrame(ref this, bstrDefaultFrame);
			public HRESULT get_invokeURLs(out int16 pfInvokeURLs) mut => VT.get_invokeURLs(ref this, out pfInvokeURLs);
			public HRESULT put_invokeURLs(int16 fInvokeURLs) mut => VT.put_invokeURLs(ref this, fInvokeURLs);
			public HRESULT get_mute(out int16 pfMute) mut => VT.get_mute(ref this, out pfMute);
			public HRESULT put_mute(int16 fMute) mut => VT.put_mute(ref this, fMute);
			public HRESULT get_playCount(out int32 plCount) mut => VT.get_playCount(ref this, out plCount);
			public HRESULT put_playCount(int32 lCount) mut => VT.put_playCount(ref this, lCount);
			public HRESULT get_rate(out double pdRate) mut => VT.get_rate(ref this, out pdRate);
			public HRESULT put_rate(double dRate) mut => VT.put_rate(ref this, dRate);
			public HRESULT get_balance(out int32 plBalance) mut => VT.get_balance(ref this, out plBalance);
			public HRESULT put_balance(int32 lBalance) mut => VT.put_balance(ref this, lBalance);
			public HRESULT get_volume(out int32 plVolume) mut => VT.get_volume(ref this, out plVolume);
			public HRESULT put_volume(int32 lVolume) mut => VT.put_volume(ref this, lVolume);
			public HRESULT getMode(BSTR bstrMode, out int16 pvarfMode) mut => VT.getMode(ref this, bstrMode, out pvarfMode);
			public HRESULT setMode(BSTR bstrMode, int16 varfMode) mut => VT.setMode(ref this, bstrMode, varfMode);
			public HRESULT get_enableErrorDialogs(out int16 pfEnableErrorDialogs) mut => VT.get_enableErrorDialogs(ref this, out pfEnableErrorDialogs);
			public HRESULT put_enableErrorDialogs(int16 fEnableErrorDialogs) mut => VT.put_enableErrorDialogs(ref this, fEnableErrorDialogs);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, BSTR bstrItem, out int16 pIsAvailable) get_isAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int16 pfAutoStart) get_autoStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int16 fAutoStart) put_autoStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out BSTR pbstrBaseURL) get_baseURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, BSTR bstrBaseURL) put_baseURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out BSTR pbstrDefaultFrame) get_defaultFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, BSTR bstrDefaultFrame) put_defaultFrame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int16 pfInvokeURLs) get_invokeURLs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int16 fInvokeURLs) put_invokeURLs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int16 pfMute) get_mute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int16 fMute) put_mute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int32 plCount) get_playCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int32 lCount) put_playCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out double pdRate) get_rate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, double dRate) put_rate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int32 plBalance) get_balance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int32 lBalance) put_balance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int32 plVolume) get_volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int32 lVolume) put_volume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, BSTR bstrMode, out int16 pvarfMode) getMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, BSTR bstrMode, int16 varfMode) setMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, out int16 pfEnableErrorDialogs) get_enableErrorDialogs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings self, int16 fEnableErrorDialogs) put_enableErrorDialogs;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption : IDispatch
		{
			public const new Guid IID = .(0x4f2df574, 0xc588, 0x11d3, 0x9e, 0xd0, 0x00, 0xc0, 0x4f, 0xb6, 0xe9, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SAMIStyle(out BSTR pbstrSAMIStyle) mut => VT.get_SAMIStyle(ref this, out pbstrSAMIStyle);
			public HRESULT put_SAMIStyle(BSTR bstrSAMIStyle) mut => VT.put_SAMIStyle(ref this, bstrSAMIStyle);
			public HRESULT get_SAMILang(out BSTR pbstrSAMILang) mut => VT.get_SAMILang(ref this, out pbstrSAMILang);
			public HRESULT put_SAMILang(BSTR bstrSAMILang) mut => VT.put_SAMILang(ref this, bstrSAMILang);
			public HRESULT get_SAMIFileName(out BSTR pbstrSAMIFileName) mut => VT.get_SAMIFileName(ref this, out pbstrSAMIFileName);
			public HRESULT put_SAMIFileName(BSTR bstrSAMIFileName) mut => VT.put_SAMIFileName(ref this, bstrSAMIFileName);
			public HRESULT get_captioningId(out BSTR pbstrCaptioningID) mut => VT.get_captioningId(ref this, out pbstrCaptioningID);
			public HRESULT put_captioningId(BSTR bstrCaptioningID) mut => VT.put_captioningId(ref this, bstrCaptioningID);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, out BSTR pbstrSAMIStyle) get_SAMIStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, BSTR bstrSAMIStyle) put_SAMIStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, out BSTR pbstrSAMILang) get_SAMILang;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, BSTR bstrSAMILang) put_SAMILang;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, out BSTR pbstrSAMIFileName) get_SAMIFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, BSTR bstrSAMIFileName) put_SAMIFileName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, out BSTR pbstrCaptioningID) get_captioningId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption self, BSTR bstrCaptioningID) put_captioningId;
			}
		}
		[CRepr]
		public struct IWMPPlaylist : IDispatch
		{
			public const new Guid IID = .(0xd5f0f4f1, 0x130c, 0x11d3, 0xb1, 0x4e, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT get_name(out BSTR pbstrName) mut => VT.get_name(ref this, out pbstrName);
			public HRESULT put_name(BSTR bstrName) mut => VT.put_name(ref this, bstrName);
			public HRESULT get_attributeCount(out int32 plCount) mut => VT.get_attributeCount(ref this, out plCount);
			public HRESULT get_attributeName(int32 lIndex, out BSTR pbstrAttributeName) mut => VT.get_attributeName(ref this, lIndex, out pbstrAttributeName);
			public HRESULT get_item(int32 lIndex, out IWMPMedia* ppIWMPMedia) mut => VT.get_item(ref this, lIndex, out ppIWMPMedia);
			public HRESULT getItemInfo(BSTR bstrName, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrName, out pbstrVal);
			public HRESULT setItemInfo(BSTR bstrName, BSTR bstrValue) mut => VT.setItemInfo(ref this, bstrName, bstrValue);
			public HRESULT get_isIdentical(ref IWMPPlaylist pIWMPPlaylist, out int16 pvbool) mut => VT.get_isIdentical(ref this, ref pIWMPPlaylist, out pvbool);
			public HRESULT clear() mut => VT.clear(ref this);
			public HRESULT insertItem(int32 lIndex, ref IWMPMedia pIWMPMedia) mut => VT.insertItem(ref this, lIndex, ref pIWMPMedia);
			public HRESULT appendItem(ref IWMPMedia pIWMPMedia) mut => VT.appendItem(ref this, ref pIWMPMedia);
			public HRESULT removeItem(ref IWMPMedia pIWMPMedia) mut => VT.removeItem(ref this, ref pIWMPMedia);
			public HRESULT moveItem(int32 lIndexOld, int32 lIndexNew) mut => VT.moveItem(ref this, lIndexOld, lIndexNew);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, out BSTR pbstrName) get_name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, BSTR bstrName) put_name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, out int32 plCount) get_attributeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, int32 lIndex, out BSTR pbstrAttributeName) get_attributeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, int32 lIndex, out IWMPMedia* ppIWMPMedia) get_item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, BSTR bstrName, out BSTR pbstrVal) getItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, BSTR bstrName, BSTR bstrValue) setItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, ref IWMPPlaylist pIWMPPlaylist, out int16 pvbool) get_isIdentical;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self) clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, int32 lIndex, ref IWMPMedia pIWMPMedia) insertItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, ref IWMPMedia pIWMPMedia) appendItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, ref IWMPMedia pIWMPMedia) removeItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylist self, int32 lIndexOld, int32 lIndexNew) moveItem;
			}
		}
		[CRepr]
		public struct IWMPCdrom : IDispatch
		{
			public const new Guid IID = .(0xcfab6e98, 0x8730, 0x11d3, 0xb3, 0x88, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_driveSpecifier(out BSTR pbstrDrive) mut => VT.get_driveSpecifier(ref this, out pbstrDrive);
			public HRESULT get_playlist(out IWMPPlaylist* ppPlaylist) mut => VT.get_playlist(ref this, out ppPlaylist);
			public HRESULT eject() mut => VT.eject(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdrom self, out BSTR pbstrDrive) get_driveSpecifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdrom self, out IWMPPlaylist* ppPlaylist) get_playlist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdrom self) eject;
			}
		}
		[CRepr]
		public struct IWMPCdromCollection : IDispatch
		{
			public const new Guid IID = .(0xee4c8fe2, 0x34b2, 0x11d3, 0xa3, 0xbf, 0x00, 0x60, 0x97, 0xc9, 0xb3, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT item(int32 lIndex, out IWMPCdrom* ppItem) mut => VT.item(ref this, lIndex, out ppItem);
			public HRESULT getByDriveSpecifier(BSTR bstrDriveSpecifier, out IWMPCdrom* ppCdrom) mut => VT.getByDriveSpecifier(ref this, bstrDriveSpecifier, out ppCdrom);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromCollection self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromCollection self, int32 lIndex, out IWMPCdrom* ppItem) item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromCollection self, BSTR bstrDriveSpecifier, out IWMPCdrom* ppCdrom) getByDriveSpecifier;
			}
		}
		[CRepr]
		public struct IWMPStringCollection : IDispatch
		{
			public const new Guid IID = .(0x4a976298, 0x8c0d, 0x11d3, 0xb3, 0x89, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT item(int32 lIndex, out BSTR pbstrString) mut => VT.item(ref this, lIndex, out pbstrString);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection self, int32 lIndex, out BSTR pbstrString) item;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection : IDispatch
		{
			public const new Guid IID = .(0x8363bc22, 0xb4b4, 0x4b19, 0x98, 0x9d, 0x1c, 0xd7, 0x65, 0x74, 0x9d, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT add(BSTR bstrURL, out IWMPMedia* ppItem) mut => VT.add(ref this, bstrURL, out ppItem);
			public HRESULT getAll(out IWMPPlaylist* ppMediaItems) mut => VT.getAll(ref this, out ppMediaItems);
			public HRESULT getByName(BSTR bstrName, out IWMPPlaylist* ppMediaItems) mut => VT.getByName(ref this, bstrName, out ppMediaItems);
			public HRESULT getByGenre(BSTR bstrGenre, out IWMPPlaylist* ppMediaItems) mut => VT.getByGenre(ref this, bstrGenre, out ppMediaItems);
			public HRESULT getByAuthor(BSTR bstrAuthor, out IWMPPlaylist* ppMediaItems) mut => VT.getByAuthor(ref this, bstrAuthor, out ppMediaItems);
			public HRESULT getByAlbum(BSTR bstrAlbum, out IWMPPlaylist* ppMediaItems) mut => VT.getByAlbum(ref this, bstrAlbum, out ppMediaItems);
			public HRESULT getByAttribute(BSTR bstrAttribute, BSTR bstrValue, out IWMPPlaylist* ppMediaItems) mut => VT.getByAttribute(ref this, bstrAttribute, bstrValue, out ppMediaItems);
			public HRESULT remove(ref IWMPMedia pItem, int16 varfDeleteFile) mut => VT.remove(ref this, ref pItem, varfDeleteFile);
			public HRESULT getAttributeStringCollection(BSTR bstrAttribute, BSTR bstrMediaType, out IWMPStringCollection* ppStringCollection) mut => VT.getAttributeStringCollection(ref this, bstrAttribute, bstrMediaType, out ppStringCollection);
			public HRESULT getMediaAtom(BSTR bstrItemName, out int32 plAtom) mut => VT.getMediaAtom(ref this, bstrItemName, out plAtom);
			public HRESULT setDeleted(ref IWMPMedia pItem, int16 varfIsDeleted) mut => VT.setDeleted(ref this, ref pItem, varfIsDeleted);
			public HRESULT isDeleted(ref IWMPMedia pItem, out int16 pvarfIsDeleted) mut => VT.isDeleted(ref this, ref pItem, out pvarfIsDeleted);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrURL, out IWMPMedia* ppItem) add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, out IWMPPlaylist* ppMediaItems) getAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrName, out IWMPPlaylist* ppMediaItems) getByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrGenre, out IWMPPlaylist* ppMediaItems) getByGenre;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrAuthor, out IWMPPlaylist* ppMediaItems) getByAuthor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrAlbum, out IWMPPlaylist* ppMediaItems) getByAlbum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrAttribute, BSTR bstrValue, out IWMPPlaylist* ppMediaItems) getByAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, ref IWMPMedia pItem, int16 varfDeleteFile) remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrAttribute, BSTR bstrMediaType, out IWMPStringCollection* ppStringCollection) getAttributeStringCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, BSTR bstrItemName, out int32 plAtom) getMediaAtom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, ref IWMPMedia pItem, int16 varfIsDeleted) setDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection self, ref IWMPMedia pItem, out int16 pvarfIsDeleted) isDeleted;
			}
		}
		[CRepr]
		public struct IWMPPlaylistArray : IDispatch
		{
			public const new Guid IID = .(0x679409c0, 0x99f7, 0x11d3, 0x9f, 0xb7, 0x00, 0x10, 0x5a, 0xa6, 0x20, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT item(int32 lIndex, out IWMPPlaylist* ppItem) mut => VT.item(ref this, lIndex, out ppItem);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistArray self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistArray self, int32 lIndex, out IWMPPlaylist* ppItem) item;
			}
		}
		[CRepr]
		public struct IWMPPlaylistCollection : IDispatch
		{
			public const new Guid IID = .(0x10a13217, 0x23a7, 0x439b, 0xb1, 0xc0, 0xd8, 0x47, 0xc7, 0x9b, 0x77, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT newPlaylist(BSTR bstrName, out IWMPPlaylist* ppItem) mut => VT.newPlaylist(ref this, bstrName, out ppItem);
			public HRESULT getAll(out IWMPPlaylistArray* ppPlaylistArray) mut => VT.getAll(ref this, out ppPlaylistArray);
			public HRESULT getByName(BSTR bstrName, out IWMPPlaylistArray* ppPlaylistArray) mut => VT.getByName(ref this, bstrName, out ppPlaylistArray);
			public HRESULT remove(ref IWMPPlaylist pItem) mut => VT.remove(ref this, ref pItem);
			public HRESULT setDeleted(ref IWMPPlaylist pItem, int16 varfIsDeleted) mut => VT.setDeleted(ref this, ref pItem, varfIsDeleted);
			public HRESULT isDeleted(ref IWMPPlaylist pItem, out int16 pvarfIsDeleted) mut => VT.isDeleted(ref this, ref pItem, out pvarfIsDeleted);
			public HRESULT importPlaylist(ref IWMPPlaylist pItem, out IWMPPlaylist* ppImportedItem) mut => VT.importPlaylist(ref this, ref pItem, out ppImportedItem);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, BSTR bstrName, out IWMPPlaylist* ppItem) newPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, out IWMPPlaylistArray* ppPlaylistArray) getAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, BSTR bstrName, out IWMPPlaylistArray* ppPlaylistArray) getByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, ref IWMPPlaylist pItem) remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, ref IWMPPlaylist pItem, int16 varfIsDeleted) setDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, ref IWMPPlaylist pItem, out int16 pvarfIsDeleted) isDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlaylistCollection self, ref IWMPPlaylist pItem, out IWMPPlaylist* ppImportedItem) importPlaylist;
			}
		}
		[CRepr]
		public struct IWMPNetwork : IDispatch
		{
			public const new Guid IID = .(0xec21b779, 0xedef, 0x462d, 0xbb, 0xa4, 0xad, 0x9d, 0xde, 0x2b, 0x29, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_bandWidth(out int32 plBandwidth) mut => VT.get_bandWidth(ref this, out plBandwidth);
			public HRESULT get_recoveredPackets(out int32 plRecoveredPackets) mut => VT.get_recoveredPackets(ref this, out plRecoveredPackets);
			public HRESULT get_sourceProtocol(out BSTR pbstrSourceProtocol) mut => VT.get_sourceProtocol(ref this, out pbstrSourceProtocol);
			public HRESULT get_receivedPackets(out int32 plReceivedPackets) mut => VT.get_receivedPackets(ref this, out plReceivedPackets);
			public HRESULT get_lostPackets(out int32 plLostPackets) mut => VT.get_lostPackets(ref this, out plLostPackets);
			public HRESULT get_receptionQuality(out int32 plReceptionQuality) mut => VT.get_receptionQuality(ref this, out plReceptionQuality);
			public HRESULT get_bufferingCount(out int32 plBufferingCount) mut => VT.get_bufferingCount(ref this, out plBufferingCount);
			public HRESULT get_bufferingProgress(out int32 plBufferingProgress) mut => VT.get_bufferingProgress(ref this, out plBufferingProgress);
			public HRESULT get_bufferingTime(out int32 plBufferingTime) mut => VT.get_bufferingTime(ref this, out plBufferingTime);
			public HRESULT put_bufferingTime(int32 lBufferingTime) mut => VT.put_bufferingTime(ref this, lBufferingTime);
			public HRESULT get_frameRate(out int32 plFrameRate) mut => VT.get_frameRate(ref this, out plFrameRate);
			public HRESULT get_maxBitRate(out int32 plBitRate) mut => VT.get_maxBitRate(ref this, out plBitRate);
			public HRESULT get_bitRate(out int32 plBitRate) mut => VT.get_bitRate(ref this, out plBitRate);
			public HRESULT getProxySettings(BSTR bstrProtocol, out int32 plProxySetting) mut => VT.getProxySettings(ref this, bstrProtocol, out plProxySetting);
			public HRESULT setProxySettings(BSTR bstrProtocol, int32 lProxySetting) mut => VT.setProxySettings(ref this, bstrProtocol, lProxySetting);
			public HRESULT getProxyName(BSTR bstrProtocol, out BSTR pbstrProxyName) mut => VT.getProxyName(ref this, bstrProtocol, out pbstrProxyName);
			public HRESULT setProxyName(BSTR bstrProtocol, BSTR bstrProxyName) mut => VT.setProxyName(ref this, bstrProtocol, bstrProxyName);
			public HRESULT getProxyPort(BSTR bstrProtocol, out int32 lProxyPort) mut => VT.getProxyPort(ref this, bstrProtocol, out lProxyPort);
			public HRESULT setProxyPort(BSTR bstrProtocol, int32 lProxyPort) mut => VT.setProxyPort(ref this, bstrProtocol, lProxyPort);
			public HRESULT getProxyExceptionList(BSTR bstrProtocol, out BSTR pbstrExceptionList) mut => VT.getProxyExceptionList(ref this, bstrProtocol, out pbstrExceptionList);
			public HRESULT setProxyExceptionList(BSTR bstrProtocol, BSTR pbstrExceptionList) mut => VT.setProxyExceptionList(ref this, bstrProtocol, pbstrExceptionList);
			public HRESULT getProxyBypassForLocal(BSTR bstrProtocol, out int16 pfBypassForLocal) mut => VT.getProxyBypassForLocal(ref this, bstrProtocol, out pfBypassForLocal);
			public HRESULT setProxyBypassForLocal(BSTR bstrProtocol, int16 fBypassForLocal) mut => VT.setProxyBypassForLocal(ref this, bstrProtocol, fBypassForLocal);
			public HRESULT get_maxBandwidth(out int32 lMaxBandwidth) mut => VT.get_maxBandwidth(ref this, out lMaxBandwidth);
			public HRESULT put_maxBandwidth(int32 lMaxBandwidth) mut => VT.put_maxBandwidth(ref this, lMaxBandwidth);
			public HRESULT get_downloadProgress(out int32 plDownloadProgress) mut => VT.get_downloadProgress(ref this, out plDownloadProgress);
			public HRESULT get_encodedFrameRate(out int32 plFrameRate) mut => VT.get_encodedFrameRate(ref this, out plFrameRate);
			public HRESULT get_framesSkipped(out int32 plFrames) mut => VT.get_framesSkipped(ref this, out plFrames);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBandwidth) get_bandWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plRecoveredPackets) get_recoveredPackets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out BSTR pbstrSourceProtocol) get_sourceProtocol;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plReceivedPackets) get_receivedPackets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plLostPackets) get_lostPackets;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plReceptionQuality) get_receptionQuality;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBufferingCount) get_bufferingCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBufferingProgress) get_bufferingProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBufferingTime) get_bufferingTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, int32 lBufferingTime) put_bufferingTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plFrameRate) get_frameRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBitRate) get_maxBitRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plBitRate) get_bitRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, out int32 plProxySetting) getProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, int32 lProxySetting) setProxySettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, out BSTR pbstrProxyName) getProxyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, BSTR bstrProxyName) setProxyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, out int32 lProxyPort) getProxyPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, int32 lProxyPort) setProxyPort;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, out BSTR pbstrExceptionList) getProxyExceptionList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, BSTR pbstrExceptionList) setProxyExceptionList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, out int16 pfBypassForLocal) getProxyBypassForLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, BSTR bstrProtocol, int16 fBypassForLocal) setProxyBypassForLocal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 lMaxBandwidth) get_maxBandwidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, int32 lMaxBandwidth) put_maxBandwidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plDownloadProgress) get_downloadProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plFrameRate) get_encodedFrameRate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNetwork self, out int32 plFrames) get_framesSkipped;
			}
		}
		[CRepr]
		public struct IWMPCore : IDispatch
		{
			public const new Guid IID = .(0xd84cca99, 0xcce2, 0x11d2, 0x9e, 0xcc, 0x00, 0x00, 0xf8, 0x08, 0x59, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT close() mut => VT.close(ref this);
			public HRESULT get_URL(out BSTR pbstrURL) mut => VT.get_URL(ref this, out pbstrURL);
			public HRESULT put_URL(BSTR bstrURL) mut => VT.put_URL(ref this, bstrURL);
			public HRESULT get_openState(out WMPOpenState pwmpos) mut => VT.get_openState(ref this, out pwmpos);
			public HRESULT get_playState(out WMPPlayState pwmpps) mut => VT.get_playState(ref this, out pwmpps);
			public HRESULT get_controls(out IWMPControls* ppControl) mut => VT.get_controls(ref this, out ppControl);
			public HRESULT get_settings(out IWMPSettings* ppSettings) mut => VT.get_settings(ref this, out ppSettings);
			public HRESULT get_currentMedia(out IWMPMedia* ppMedia) mut => VT.get_currentMedia(ref this, out ppMedia);
			public HRESULT put_currentMedia(ref IWMPMedia pMedia) mut => VT.put_currentMedia(ref this, ref pMedia);
			public HRESULT get_mediaCollection(out IWMPMediaCollection* ppMediaCollection) mut => VT.get_mediaCollection(ref this, out ppMediaCollection);
			public HRESULT get_playlistCollection(out IWMPPlaylistCollection* ppPlaylistCollection) mut => VT.get_playlistCollection(ref this, out ppPlaylistCollection);
			public HRESULT get_versionInfo(out BSTR pbstrVersionInfo) mut => VT.get_versionInfo(ref this, out pbstrVersionInfo);
			public HRESULT launchURL(BSTR bstrURL) mut => VT.launchURL(ref this, bstrURL);
			public HRESULT get_network(out IWMPNetwork* ppQNI) mut => VT.get_network(ref this, out ppQNI);
			public HRESULT get_currentPlaylist(out IWMPPlaylist* ppPL) mut => VT.get_currentPlaylist(ref this, out ppPL);
			public HRESULT put_currentPlaylist(ref IWMPPlaylist pPL) mut => VT.put_currentPlaylist(ref this, ref pPL);
			public HRESULT get_cdromCollection(out IWMPCdromCollection* ppCdromCollection) mut => VT.get_cdromCollection(ref this, out ppCdromCollection);
			public HRESULT get_closedCaption(out IWMPClosedCaption* ppClosedCaption) mut => VT.get_closedCaption(ref this, out ppClosedCaption);
			public HRESULT get_isOnline(out int16 pfOnline) mut => VT.get_isOnline(ref this, out pfOnline);
			public HRESULT get_error(out IWMPError* ppError) mut => VT.get_error(ref this, out ppError);
			public HRESULT get_status(out BSTR pbstrStatus) mut => VT.get_status(ref this, out pbstrStatus);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self) close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out BSTR pbstrURL) get_URL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, BSTR bstrURL) put_URL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out WMPOpenState pwmpos) get_openState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out WMPPlayState pwmpps) get_playState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPControls* ppControl) get_controls;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPSettings* ppSettings) get_settings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPMedia* ppMedia) get_currentMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, ref IWMPMedia pMedia) put_currentMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPMediaCollection* ppMediaCollection) get_mediaCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPPlaylistCollection* ppPlaylistCollection) get_playlistCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out BSTR pbstrVersionInfo) get_versionInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, BSTR bstrURL) launchURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPNetwork* ppQNI) get_network;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPPlaylist* ppPL) get_currentPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, ref IWMPPlaylist pPL) put_currentPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPCdromCollection* ppCdromCollection) get_cdromCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPClosedCaption* ppClosedCaption) get_closedCaption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out int16 pfOnline) get_isOnline;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out IWMPError* ppError) get_error;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore self, out BSTR pbstrStatus) get_status;
			}
		}
		[CRepr]
		public struct IWMPPlayer : IWMPCore
		{
			public const new Guid IID = .(0x6bf52a4f, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(out int16 pbEnabled) mut => VT.get_enabled(ref this, out pbEnabled);
			public HRESULT put_enabled(int16 bEnabled) mut => VT.put_enabled(ref this, bEnabled);
			public HRESULT get_fullScreen(out int16 pbFullScreen) mut => VT.get_fullScreen(ref this, out pbFullScreen);
			public HRESULT put_fullScreen(int16 bFullScreen) mut => VT.put_fullScreen(ref this, bFullScreen);
			public HRESULT get_enableContextMenu(out int16 pbEnableContextMenu) mut => VT.get_enableContextMenu(ref this, out pbEnableContextMenu);
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut => VT.put_enableContextMenu(ref this, bEnableContextMenu);
			public HRESULT put_uiMode(BSTR bstrMode) mut => VT.put_uiMode(ref this, bstrMode);
			public HRESULT get_uiMode(out BSTR pbstrMode) mut => VT.get_uiMode(ref this, out pbstrMode);

			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, out int16 pbEnabled) get_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, int16 bEnabled) put_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, out int16 pbFullScreen) get_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, int16 bFullScreen) put_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, out int16 pbEnableContextMenu) get_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, BSTR bstrMode) put_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer self, out BSTR pbstrMode) get_uiMode;
			}
		}
		[CRepr]
		public struct IWMPPlayer2 : IWMPCore
		{
			public const new Guid IID = .(0x0e6b01d1, 0xd407, 0x4c85, 0xbf, 0x5f, 0x1c, 0x01, 0xf6, 0x15, 0x02, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(out int16 pbEnabled) mut => VT.get_enabled(ref this, out pbEnabled);
			public HRESULT put_enabled(int16 bEnabled) mut => VT.put_enabled(ref this, bEnabled);
			public HRESULT get_fullScreen(out int16 pbFullScreen) mut => VT.get_fullScreen(ref this, out pbFullScreen);
			public HRESULT put_fullScreen(int16 bFullScreen) mut => VT.put_fullScreen(ref this, bFullScreen);
			public HRESULT get_enableContextMenu(out int16 pbEnableContextMenu) mut => VT.get_enableContextMenu(ref this, out pbEnableContextMenu);
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut => VT.put_enableContextMenu(ref this, bEnableContextMenu);
			public HRESULT put_uiMode(BSTR bstrMode) mut => VT.put_uiMode(ref this, bstrMode);
			public HRESULT get_uiMode(out BSTR pbstrMode) mut => VT.get_uiMode(ref this, out pbstrMode);
			public HRESULT get_stretchToFit(out int16 pbEnabled) mut => VT.get_stretchToFit(ref this, out pbEnabled);
			public HRESULT put_stretchToFit(int16 bEnabled) mut => VT.put_stretchToFit(ref this, bEnabled);
			public HRESULT get_windowlessVideo(out int16 pbEnabled) mut => VT.get_windowlessVideo(ref this, out pbEnabled);
			public HRESULT put_windowlessVideo(int16 bEnabled) mut => VT.put_windowlessVideo(ref this, bEnabled);

			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out int16 pbEnabled) get_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, int16 bEnabled) put_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out int16 pbFullScreen) get_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, int16 bFullScreen) put_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out int16 pbEnableContextMenu) get_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, BSTR bstrMode) put_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out BSTR pbstrMode) get_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out int16 pbEnabled) get_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, int16 bEnabled) put_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, out int16 pbEnabled) get_windowlessVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer2 self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPMedia2 : IWMPMedia
		{
			public const new Guid IID = .(0xab7c88bb, 0x143e, 0x4ea4, 0xac, 0xc3, 0xe4, 0x35, 0x0b, 0x21, 0x06, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_error(out IWMPErrorItem* ppIWMPErrorItem) mut => VT.get_error(ref this, out ppIWMPErrorItem);

			[CRepr]
			public struct VTable : IWMPMedia.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia2 self, out IWMPErrorItem* ppIWMPErrorItem) get_error;
			}
		}
		[CRepr]
		public struct IWMPControls2 : IWMPControls
		{
			public const new Guid IID = .(0x6f030d25, 0x0890, 0x480f, 0x97, 0x75, 0x1f, 0x7e, 0x40, 0xab, 0x5b, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT step(int32 lStep) mut => VT.step(ref this, lStep);

			[CRepr]
			public struct VTable : IWMPControls.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls2 self, int32 lStep) step;
			}
		}
		[CRepr]
		public struct IWMPDVD : IDispatch
		{
			public const new Guid IID = .(0x8da61686, 0x4668, 0x4a5c, 0xae, 0x5d, 0x80, 0x31, 0x93, 0x29, 0x3d, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, out int16 pIsAvailable) mut => VT.get_isAvailable(ref this, bstrItem, out pIsAvailable);
			public HRESULT get_domain(out BSTR strDomain) mut => VT.get_domain(ref this, out strDomain);
			public HRESULT topMenu() mut => VT.topMenu(ref this);
			public HRESULT titleMenu() mut => VT.titleMenu(ref this);
			public HRESULT back() mut => VT.back(ref this);
			public HRESULT resume() mut => VT.resume(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self, BSTR bstrItem, out int16 pIsAvailable) get_isAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self, out BSTR strDomain) get_domain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self) topMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self) titleMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self) back;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDVD self) resume;
			}
		}
		[CRepr]
		public struct IWMPCore2 : IWMPCore
		{
			public const new Guid IID = .(0xbc17e5b7, 0x7561, 0x4c18, 0xbb, 0x90, 0x17, 0xd4, 0x85, 0x77, 0x56, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_dvd(out IWMPDVD* ppDVD) mut => VT.get_dvd(ref this, out ppDVD);

			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore2 self, out IWMPDVD* ppDVD) get_dvd;
			}
		}
		[CRepr]
		public struct IWMPPlayer3 : IWMPCore2
		{
			public const new Guid IID = .(0x54062b68, 0x052a, 0x4c25, 0xa3, 0x9f, 0x8b, 0x63, 0x34, 0x65, 0x11, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(out int16 pbEnabled) mut => VT.get_enabled(ref this, out pbEnabled);
			public HRESULT put_enabled(int16 bEnabled) mut => VT.put_enabled(ref this, bEnabled);
			public HRESULT get_fullScreen(out int16 pbFullScreen) mut => VT.get_fullScreen(ref this, out pbFullScreen);
			public HRESULT put_fullScreen(int16 bFullScreen) mut => VT.put_fullScreen(ref this, bFullScreen);
			public HRESULT get_enableContextMenu(out int16 pbEnableContextMenu) mut => VT.get_enableContextMenu(ref this, out pbEnableContextMenu);
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut => VT.put_enableContextMenu(ref this, bEnableContextMenu);
			public HRESULT put_uiMode(BSTR bstrMode) mut => VT.put_uiMode(ref this, bstrMode);
			public HRESULT get_uiMode(out BSTR pbstrMode) mut => VT.get_uiMode(ref this, out pbstrMode);
			public HRESULT get_stretchToFit(out int16 pbEnabled) mut => VT.get_stretchToFit(ref this, out pbEnabled);
			public HRESULT put_stretchToFit(int16 bEnabled) mut => VT.put_stretchToFit(ref this, bEnabled);
			public HRESULT get_windowlessVideo(out int16 pbEnabled) mut => VT.get_windowlessVideo(ref this, out pbEnabled);
			public HRESULT put_windowlessVideo(int16 bEnabled) mut => VT.put_windowlessVideo(ref this, bEnabled);

			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out int16 pbEnabled) get_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, int16 bEnabled) put_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out int16 pbFullScreen) get_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, int16 bFullScreen) put_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out int16 pbEnableContextMenu) get_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, BSTR bstrMode) put_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out BSTR pbstrMode) get_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out int16 pbEnabled) get_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, int16 bEnabled) put_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, out int16 pbEnabled) get_windowlessVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer3 self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPErrorItem2 : IWMPErrorItem
		{
			public const new Guid IID = .(0xf75ccec0, 0xc67c, 0x475c, 0x93, 0x1e, 0x87, 0x19, 0x87, 0x0b, 0xee, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_condition(out int32 plCondition) mut => VT.get_condition(ref this, out plCondition);

			[CRepr]
			public struct VTable : IWMPErrorItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPErrorItem2 self, out int32 plCondition) get_condition;
			}
		}
		[CRepr]
		public struct IWMPRemoteMediaServices : IUnknown
		{
			public const new Guid IID = .(0xcbb92747, 0x741f, 0x44fe, 0xab, 0x5b, 0xf1, 0xa4, 0x8f, 0x3b, 0x2a, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetServiceType(out BSTR pbstrType) mut => VT.GetServiceType(ref this, out pbstrType);
			public HRESULT GetApplicationName(out BSTR pbstrName) mut => VT.GetApplicationName(ref this, out pbstrName);
			public HRESULT GetScriptableObject(out BSTR pbstrName, out IDispatch* ppDispatch) mut => VT.GetScriptableObject(ref this, out pbstrName, out ppDispatch);
			public HRESULT GetCustomUIMode(out BSTR pbstrFile) mut => VT.GetCustomUIMode(ref this, out pbstrFile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRemoteMediaServices self, out BSTR pbstrType) GetServiceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRemoteMediaServices self, out BSTR pbstrName) GetApplicationName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRemoteMediaServices self, out BSTR pbstrName, out IDispatch* ppDispatch) GetScriptableObject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRemoteMediaServices self, out BSTR pbstrFile) GetCustomUIMode;
			}
		}
		[CRepr]
		public struct IWMPSkinManager : IUnknown
		{
			public const new Guid IID = .(0x076f2fa6, 0xed30, 0x448b, 0x8c, 0xc5, 0x3f, 0x3e, 0xf3, 0x52, 0x9c, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVisualStyle(BSTR bstrPath) mut => VT.SetVisualStyle(ref this, bstrPath);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSkinManager self, BSTR bstrPath) SetVisualStyle;
			}
		}
		[CRepr]
		public struct IWMPMetadataPicture : IDispatch
		{
			public const new Guid IID = .(0x5c29bbe0, 0xf87d, 0x4c45, 0xaa, 0x28, 0xa7, 0x0f, 0x02, 0x30, 0xff, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_mimeType(out BSTR pbstrMimeType) mut => VT.get_mimeType(ref this, out pbstrMimeType);
			public HRESULT get_pictureType(out BSTR pbstrPictureType) mut => VT.get_pictureType(ref this, out pbstrPictureType);
			public HRESULT get_description(out BSTR pbstrDescription) mut => VT.get_description(ref this, out pbstrDescription);
			public HRESULT get_URL(out BSTR pbstrURL) mut => VT.get_URL(ref this, out pbstrURL);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataPicture self, out BSTR pbstrMimeType) get_mimeType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataPicture self, out BSTR pbstrPictureType) get_pictureType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataPicture self, out BSTR pbstrDescription) get_description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataPicture self, out BSTR pbstrURL) get_URL;
			}
		}
		[CRepr]
		public struct IWMPMetadataText : IDispatch
		{
			public const new Guid IID = .(0x769a72db, 0x13d2, 0x45e2, 0x9c, 0x48, 0x53, 0xca, 0x9d, 0x5b, 0x74, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_description(out BSTR pbstrDescription) mut => VT.get_description(ref this, out pbstrDescription);
			public HRESULT get_text(out BSTR pbstrText) mut => VT.get_text(ref this, out pbstrText);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataText self, out BSTR pbstrDescription) get_description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMetadataText self, out BSTR pbstrText) get_text;
			}
		}
		[CRepr]
		public struct IWMPMedia3 : IWMPMedia2
		{
			public const new Guid IID = .(0xf118efc7, 0xf03a, 0x4fb4, 0x99, 0xc9, 0x1c, 0x02, 0xa5, 0xc1, 0x06, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getAttributeCountByType(BSTR bstrType, BSTR bstrLanguage, out int32 plCount) mut => VT.getAttributeCountByType(ref this, bstrType, bstrLanguage, out plCount);
			public HRESULT getItemInfoByType(BSTR bstrType, BSTR bstrLanguage, int32 lIndex, out VARIANT pvarValue) mut => VT.getItemInfoByType(ref this, bstrType, bstrLanguage, lIndex, out pvarValue);

			[CRepr]
			public struct VTable : IWMPMedia2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia3 self, BSTR bstrType, BSTR bstrLanguage, out int32 plCount) getAttributeCountByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMedia3 self, BSTR bstrType, BSTR bstrLanguage, int32 lIndex, out VARIANT pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPSettings2 : IWMPSettings
		{
			public const new Guid IID = .(0xfda937a4, 0xeece, 0x4da5, 0xa0, 0xb6, 0x39, 0xbf, 0x89, 0xad, 0xe2, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_defaultAudioLanguage(out int32 plLangID) mut => VT.get_defaultAudioLanguage(ref this, out plLangID);
			public HRESULT get_mediaAccessRights(out BSTR pbstrRights) mut => VT.get_mediaAccessRights(ref this, out pbstrRights);
			public HRESULT requestMediaAccessRights(BSTR bstrDesiredAccess, out int16 pvbAccepted) mut => VT.requestMediaAccessRights(ref this, bstrDesiredAccess, out pvbAccepted);

			[CRepr]
			public struct VTable : IWMPSettings.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings2 self, out int32 plLangID) get_defaultAudioLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings2 self, out BSTR pbstrRights) get_mediaAccessRights;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSettings2 self, BSTR bstrDesiredAccess, out int16 pvbAccepted) requestMediaAccessRights;
			}
		}
		[CRepr]
		public struct IWMPControls3 : IWMPControls2
		{
			public const new Guid IID = .(0xa1d1110e, 0xd545, 0x476a, 0x9a, 0x78, 0xac, 0x3e, 0x4c, 0xb1, 0xe6, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_audioLanguageCount(out int32 plCount) mut => VT.get_audioLanguageCount(ref this, out plCount);
			public HRESULT getAudioLanguageID(int32 lIndex, out int32 plLangID) mut => VT.getAudioLanguageID(ref this, lIndex, out plLangID);
			public HRESULT getAudioLanguageDescription(int32 lIndex, out BSTR pbstrLangDesc) mut => VT.getAudioLanguageDescription(ref this, lIndex, out pbstrLangDesc);
			public HRESULT get_currentAudioLanguage(out int32 plLangID) mut => VT.get_currentAudioLanguage(ref this, out plLangID);
			public HRESULT put_currentAudioLanguage(int32 lLangID) mut => VT.put_currentAudioLanguage(ref this, lLangID);
			public HRESULT get_currentAudioLanguageIndex(out int32 plIndex) mut => VT.get_currentAudioLanguageIndex(ref this, out plIndex);
			public HRESULT put_currentAudioLanguageIndex(int32 lIndex) mut => VT.put_currentAudioLanguageIndex(ref this, lIndex);
			public HRESULT getLanguageName(int32 lLangID, out BSTR pbstrLangName) mut => VT.getLanguageName(ref this, lLangID, out pbstrLangName);
			public HRESULT get_currentPositionTimecode(out BSTR bstrTimecode) mut => VT.get_currentPositionTimecode(ref this, out bstrTimecode);
			public HRESULT put_currentPositionTimecode(BSTR bstrTimecode) mut => VT.put_currentPositionTimecode(ref this, bstrTimecode);

			[CRepr]
			public struct VTable : IWMPControls2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, out int32 plCount) get_audioLanguageCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, int32 lIndex, out int32 plLangID) getAudioLanguageID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, int32 lIndex, out BSTR pbstrLangDesc) getAudioLanguageDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, out int32 plLangID) get_currentAudioLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, int32 lLangID) put_currentAudioLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, out int32 plIndex) get_currentAudioLanguageIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, int32 lIndex) put_currentAudioLanguageIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, int32 lLangID, out BSTR pbstrLangName) getLanguageName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, out BSTR bstrTimecode) get_currentPositionTimecode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPControls3 self, BSTR bstrTimecode) put_currentPositionTimecode;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption2 : IWMPClosedCaption
		{
			public const new Guid IID = .(0x350ba78b, 0x6bc8, 0x4113, 0xa5, 0xf5, 0x31, 0x20, 0x56, 0x93, 0x4e, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SAMILangCount(out int32 plCount) mut => VT.get_SAMILangCount(ref this, out plCount);
			public HRESULT getSAMILangName(int32 nIndex, out BSTR pbstrName) mut => VT.getSAMILangName(ref this, nIndex, out pbstrName);
			public HRESULT getSAMILangID(int32 nIndex, out int32 plLangID) mut => VT.getSAMILangID(ref this, nIndex, out plLangID);
			public HRESULT get_SAMIStyleCount(out int32 plCount) mut => VT.get_SAMIStyleCount(ref this, out plCount);
			public HRESULT getSAMIStyleName(int32 nIndex, out BSTR pbstrName) mut => VT.getSAMIStyleName(ref this, nIndex, out pbstrName);

			[CRepr]
			public struct VTable : IWMPClosedCaption.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption2 self, out int32 plCount) get_SAMILangCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption2 self, int32 nIndex, out BSTR pbstrName) getSAMILangName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption2 self, int32 nIndex, out int32 plLangID) getSAMILangID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption2 self, out int32 plCount) get_SAMIStyleCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPClosedCaption2 self, int32 nIndex, out BSTR pbstrName) getSAMIStyleName;
			}
		}
		[CRepr]
		public struct IWMPPlayerApplication : IDispatch
		{
			public const new Guid IID = .(0x40897764, 0xceab, 0x47be, 0xad, 0x4a, 0x8e, 0x28, 0x53, 0x7f, 0x9b, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT switchToPlayerApplication() mut => VT.switchToPlayerApplication(ref this);
			public HRESULT switchToControl() mut => VT.switchToControl(ref this);
			public HRESULT get_playerDocked(out int16 pbPlayerDocked) mut => VT.get_playerDocked(ref this, out pbPlayerDocked);
			public HRESULT get_hasDisplay(out int16 pbHasDisplay) mut => VT.get_hasDisplay(ref this, out pbHasDisplay);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerApplication self) switchToPlayerApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerApplication self) switchToControl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerApplication self, out int16 pbPlayerDocked) get_playerDocked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerApplication self, out int16 pbHasDisplay) get_hasDisplay;
			}
		}
		[CRepr]
		public struct IWMPCore3 : IWMPCore2
		{
			public const new Guid IID = .(0x7587c667, 0x628f, 0x499f, 0x88, 0xe7, 0x6a, 0x6f, 0x4e, 0x88, 0x84, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT newPlaylist(BSTR bstrName, BSTR bstrURL, out IWMPPlaylist* ppPlaylist) mut => VT.newPlaylist(ref this, bstrName, bstrURL, out ppPlaylist);
			public HRESULT newMedia(BSTR bstrURL, out IWMPMedia* ppMedia) mut => VT.newMedia(ref this, bstrURL, out ppMedia);

			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore3 self, BSTR bstrName, BSTR bstrURL, out IWMPPlaylist* ppPlaylist) newPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCore3 self, BSTR bstrURL, out IWMPMedia* ppMedia) newMedia;
			}
		}
		[CRepr]
		public struct IWMPPlayer4 : IWMPCore3
		{
			public const new Guid IID = .(0x6c497d62, 0x8919, 0x413c, 0x82, 0xdb, 0xe9, 0x35, 0xfb, 0x3e, 0xc5, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(out int16 pbEnabled) mut => VT.get_enabled(ref this, out pbEnabled);
			public HRESULT put_enabled(int16 bEnabled) mut => VT.put_enabled(ref this, bEnabled);
			public HRESULT get_fullScreen(out int16 pbFullScreen) mut => VT.get_fullScreen(ref this, out pbFullScreen);
			public HRESULT put_fullScreen(int16 bFullScreen) mut => VT.put_fullScreen(ref this, bFullScreen);
			public HRESULT get_enableContextMenu(out int16 pbEnableContextMenu) mut => VT.get_enableContextMenu(ref this, out pbEnableContextMenu);
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut => VT.put_enableContextMenu(ref this, bEnableContextMenu);
			public HRESULT put_uiMode(BSTR bstrMode) mut => VT.put_uiMode(ref this, bstrMode);
			public HRESULT get_uiMode(out BSTR pbstrMode) mut => VT.get_uiMode(ref this, out pbstrMode);
			public HRESULT get_stretchToFit(out int16 pbEnabled) mut => VT.get_stretchToFit(ref this, out pbEnabled);
			public HRESULT put_stretchToFit(int16 bEnabled) mut => VT.put_stretchToFit(ref this, bEnabled);
			public HRESULT get_windowlessVideo(out int16 pbEnabled) mut => VT.get_windowlessVideo(ref this, out pbEnabled);
			public HRESULT put_windowlessVideo(int16 bEnabled) mut => VT.put_windowlessVideo(ref this, bEnabled);
			public HRESULT get_isRemote(out int16 pvarfIsRemote) mut => VT.get_isRemote(ref this, out pvarfIsRemote);
			public HRESULT get_playerApplication(out IWMPPlayerApplication* ppIWMPPlayerApplication) mut => VT.get_playerApplication(ref this, out ppIWMPPlayerApplication);
			public HRESULT openPlayer(BSTR bstrURL) mut => VT.openPlayer(ref this, bstrURL);

			[CRepr]
			public struct VTable : IWMPCore3.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pbEnabled) get_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, int16 bEnabled) put_enabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pbFullScreen) get_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, int16 bFullScreen) put_fullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pbEnableContextMenu) get_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, BSTR bstrMode) put_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out BSTR pbstrMode) get_uiMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pbEnabled) get_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, int16 bEnabled) put_stretchToFit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pbEnabled) get_windowlessVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, int16 bEnabled) put_windowlessVideo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out int16 pvarfIsRemote) get_isRemote;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, out IWMPPlayerApplication* ppIWMPPlayerApplication) get_playerApplication;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayer4 self, BSTR bstrURL) openPlayer;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices : IUnknown
		{
			public const new Guid IID = .(0x1d01fbdb, 0xade2, 0x4c8d, 0x98, 0x42, 0xc1, 0x90, 0xb9, 0x5c, 0x33, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT activateUIPlugin(BSTR bstrPlugin) mut => VT.activateUIPlugin(ref this, bstrPlugin);
			public HRESULT setTaskPane(BSTR bstrTaskPane) mut => VT.setTaskPane(ref this, bstrTaskPane);
			public HRESULT setTaskPaneURL(BSTR bstrTaskPane, BSTR bstrURL, BSTR bstrFriendlyName) mut => VT.setTaskPaneURL(ref this, bstrTaskPane, bstrURL, bstrFriendlyName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerServices self, BSTR bstrPlugin) activateUIPlugin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerServices self, BSTR bstrTaskPane) setTaskPane;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerServices self, BSTR bstrTaskPane, BSTR bstrURL, BSTR bstrFriendlyName) setTaskPaneURL;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice : IUnknown
		{
			public const new Guid IID = .(0x82a2986c, 0x0293, 0x4fd0, 0xb2, 0x79, 0xb2, 0x1b, 0x86, 0xc0, 0x58, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_friendlyName(out BSTR pbstrName) mut => VT.get_friendlyName(ref this, out pbstrName);
			public HRESULT put_friendlyName(BSTR bstrName) mut => VT.put_friendlyName(ref this, bstrName);
			public HRESULT get_deviceName(out BSTR pbstrName) mut => VT.get_deviceName(ref this, out pbstrName);
			public HRESULT get_deviceId(out BSTR pbstrDeviceId) mut => VT.get_deviceId(ref this, out pbstrDeviceId);
			public HRESULT get_partnershipIndex(out int32 plIndex) mut => VT.get_partnershipIndex(ref this, out plIndex);
			public HRESULT get_connected(out int16 pvbConnected) mut => VT.get_connected(ref this, out pvbConnected);
			public HRESULT get_status(out WMPDeviceStatus pwmpds) mut => VT.get_status(ref this, out pwmpds);
			public HRESULT get_syncState(out WMPSyncState pwmpss) mut => VT.get_syncState(ref this, out pwmpss);
			public HRESULT get_progress(out int32 plProgress) mut => VT.get_progress(ref this, out plProgress);
			public HRESULT getItemInfo(BSTR bstrItemName, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrItemName, out pbstrVal);
			public HRESULT createPartnership(int16 vbShowUI) mut => VT.createPartnership(ref this, vbShowUI);
			public HRESULT deletePartnership() mut => VT.deletePartnership(ref this);
			public HRESULT start() mut => VT.start(ref this);
			public HRESULT stop() mut => VT.stop(ref this);
			public HRESULT showSettings() mut => VT.showSettings(ref this);
			public HRESULT isIdentical(ref IWMPSyncDevice pDevice, out int16 pvbool) mut => VT.isIdentical(ref this, ref pDevice, out pvbool);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out BSTR pbstrName) get_friendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, BSTR bstrName) put_friendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out BSTR pbstrName) get_deviceName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out BSTR pbstrDeviceId) get_deviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out int32 plIndex) get_partnershipIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out int16 pvbConnected) get_connected;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out WMPDeviceStatus pwmpds) get_status;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out WMPSyncState pwmpss) get_syncState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, out int32 plProgress) get_progress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, BSTR bstrItemName, out BSTR pbstrVal) getItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, int16 vbShowUI) createPartnership;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self) deletePartnership;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self) start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self) stop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self) showSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice self, ref IWMPSyncDevice pDevice, out int16 pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPSyncServices : IUnknown
		{
			public const new Guid IID = .(0x8b5050ff, 0xe0a4, 0x4808, 0xb3, 0xa8, 0x89, 0x3a, 0x9e, 0x1e, 0xd8, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_deviceCount(out int32 plCount) mut => VT.get_deviceCount(ref this, out plCount);
			public HRESULT getDevice(int32 lIndex, out IWMPSyncDevice* ppDevice) mut => VT.getDevice(ref this, lIndex, out ppDevice);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncServices self, out int32 plCount) get_deviceCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncServices self, int32 lIndex, out IWMPSyncDevice* ppDevice) getDevice;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices2 : IWMPPlayerServices
		{
			public const new Guid IID = .(0x1bb1592f, 0xf040, 0x418a, 0x9f, 0x71, 0x17, 0xc7, 0x51, 0x2b, 0x4d, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT setBackgroundProcessingPriority(BSTR bstrPriority) mut => VT.setBackgroundProcessingPriority(ref this, bstrPriority);

			[CRepr]
			public struct VTable : IWMPPlayerServices.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlayerServices2 self, BSTR bstrPriority) setBackgroundProcessingPriority;
			}
		}
		[CRepr]
		public struct IWMPCdromRip : IUnknown
		{
			public const new Guid IID = .(0x56e2294f, 0x69ed, 0x4629, 0xa8, 0x69, 0xae, 0xa7, 0x2c, 0x0d, 0xcc, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ripState(out WMPRipState pwmprs) mut => VT.get_ripState(ref this, out pwmprs);
			public HRESULT get_ripProgress(out int32 plProgress) mut => VT.get_ripProgress(ref this, out plProgress);
			public HRESULT startRip() mut => VT.startRip(ref this);
			public HRESULT stopRip() mut => VT.stopRip(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromRip self, out WMPRipState pwmprs) get_ripState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromRip self, out int32 plProgress) get_ripProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromRip self) startRip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromRip self) stopRip;
			}
		}
		[CRepr]
		public struct IWMPCdromBurn : IUnknown
		{
			public const new Guid IID = .(0xbd94dbeb, 0x417f, 0x4928, 0xaa, 0x06, 0x08, 0x7d, 0x56, 0xed, 0x9b, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isAvailable(BSTR bstrItem, out int16 pIsAvailable) mut => VT.isAvailable(ref this, bstrItem, out pIsAvailable);
			public HRESULT getItemInfo(BSTR bstrItem, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrItem, out pbstrVal);
			public HRESULT get_label(out BSTR pbstrLabel) mut => VT.get_label(ref this, out pbstrLabel);
			public HRESULT put_label(BSTR bstrLabel) mut => VT.put_label(ref this, bstrLabel);
			public HRESULT get_burnFormat(out WMPBurnFormat pwmpbf) mut => VT.get_burnFormat(ref this, out pwmpbf);
			public HRESULT put_burnFormat(WMPBurnFormat wmpbf) mut => VT.put_burnFormat(ref this, wmpbf);
			public HRESULT get_burnPlaylist(out IWMPPlaylist* ppPlaylist) mut => VT.get_burnPlaylist(ref this, out ppPlaylist);
			public HRESULT put_burnPlaylist(ref IWMPPlaylist pPlaylist) mut => VT.put_burnPlaylist(ref this, ref pPlaylist);
			public HRESULT refreshStatus() mut => VT.refreshStatus(ref this);
			public HRESULT get_burnState(out WMPBurnState pwmpbs) mut => VT.get_burnState(ref this, out pwmpbs);
			public HRESULT get_burnProgress(out int32 plProgress) mut => VT.get_burnProgress(ref this, out plProgress);
			public HRESULT startBurn() mut => VT.startBurn(ref this);
			public HRESULT stopBurn() mut => VT.stopBurn(ref this);
			public HRESULT erase() mut => VT.erase(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, BSTR bstrItem, out int16 pIsAvailable) isAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, BSTR bstrItem, out BSTR pbstrVal) getItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, out BSTR pbstrLabel) get_label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, BSTR bstrLabel) put_label;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, out WMPBurnFormat pwmpbf) get_burnFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, WMPBurnFormat wmpbf) put_burnFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, out IWMPPlaylist* ppPlaylist) get_burnPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, ref IWMPPlaylist pPlaylist) put_burnPlaylist;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self) refreshStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, out WMPBurnState pwmpbs) get_burnState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self, out int32 plProgress) get_burnProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self) startBurn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self) stopBurn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPCdromBurn self) erase;
			}
		}
		[CRepr]
		public struct IWMPQuery : IDispatch
		{
			public const new Guid IID = .(0xa00918f3, 0xa6b0, 0x4bfb, 0x91, 0x89, 0xfd, 0x83, 0x4c, 0x7b, 0xc5, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT addCondition(BSTR bstrAttribute, BSTR bstrOperator, BSTR bstrValue) mut => VT.addCondition(ref this, bstrAttribute, bstrOperator, bstrValue);
			public HRESULT beginNextGroup() mut => VT.beginNextGroup(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPQuery self, BSTR bstrAttribute, BSTR bstrOperator, BSTR bstrValue) addCondition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPQuery self) beginNextGroup;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection2 : IWMPMediaCollection
		{
			public const new Guid IID = .(0x8ba957f5, 0xfd8c, 0x4791, 0xb8, 0x2d, 0xf8, 0x40, 0x40, 0x1e, 0xe4, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT createQuery(out IWMPQuery* ppQuery) mut => VT.createQuery(ref this, out ppQuery);
			public HRESULT getPlaylistByQuery(ref IWMPQuery pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, out IWMPPlaylist* ppPlaylist) mut => VT.getPlaylistByQuery(ref this, ref pQuery, bstrMediaType, bstrSortAttribute, fSortAscending, out ppPlaylist);
			public HRESULT getStringCollectionByQuery(BSTR bstrAttribute, ref IWMPQuery pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, out IWMPStringCollection* ppStringCollection) mut => VT.getStringCollectionByQuery(ref this, bstrAttribute, ref pQuery, bstrMediaType, bstrSortAttribute, fSortAscending, out ppStringCollection);
			public HRESULT getByAttributeAndMediaType(BSTR bstrAttribute, BSTR bstrValue, BSTR bstrMediaType, out IWMPPlaylist* ppMediaItems) mut => VT.getByAttributeAndMediaType(ref this, bstrAttribute, bstrValue, bstrMediaType, out ppMediaItems);

			[CRepr]
			public struct VTable : IWMPMediaCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection2 self, out IWMPQuery* ppQuery) createQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection2 self, ref IWMPQuery pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, out IWMPPlaylist* ppPlaylist) getPlaylistByQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection2 self, BSTR bstrAttribute, ref IWMPQuery pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, out IWMPStringCollection* ppStringCollection) getStringCollectionByQuery;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaCollection2 self, BSTR bstrAttribute, BSTR bstrValue, BSTR bstrMediaType, out IWMPPlaylist* ppMediaItems) getByAttributeAndMediaType;
			}
		}
		[CRepr]
		public struct IWMPStringCollection2 : IWMPStringCollection
		{
			public const new Guid IID = .(0x46ad648d, 0x53f1, 0x4a74, 0x92, 0xe2, 0x2a, 0x1b, 0x68, 0xd6, 0x3f, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isIdentical(ref IWMPStringCollection2 pIWMPStringCollection2, out int16 pvbool) mut => VT.isIdentical(ref this, ref pIWMPStringCollection2, out pvbool);
			public HRESULT getItemInfo(int32 lCollectionIndex, BSTR bstrItemName, out BSTR pbstrValue) mut => VT.getItemInfo(ref this, lCollectionIndex, bstrItemName, out pbstrValue);
			public HRESULT getAttributeCountByType(int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, out int32 plCount) mut => VT.getAttributeCountByType(ref this, lCollectionIndex, bstrType, bstrLanguage, out plCount);
			public HRESULT getItemInfoByType(int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32 lAttributeIndex, out VARIANT pvarValue) mut => VT.getItemInfoByType(ref this, lCollectionIndex, bstrType, bstrLanguage, lAttributeIndex, out pvarValue);

			[CRepr]
			public struct VTable : IWMPStringCollection.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection2 self, ref IWMPStringCollection2 pIWMPStringCollection2, out int16 pvbool) isIdentical;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection2 self, int32 lCollectionIndex, BSTR bstrItemName, out BSTR pbstrValue) getItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection2 self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, out int32 plCount) getAttributeCountByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPStringCollection2 self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32 lAttributeIndex, out VARIANT pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPLibrary : IUnknown
		{
			public const new Guid IID = .(0x3df47861, 0x7df1, 0x4c1f, 0xa8, 0x1b, 0x4c, 0x26, 0xf0, 0xf7, 0xa7, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_name(out BSTR pbstrName) mut => VT.get_name(ref this, out pbstrName);
			public HRESULT get_type(out WMPLibraryType pwmplt) mut => VT.get_type(ref this, out pwmplt);
			public HRESULT get_mediaCollection(out IWMPMediaCollection* ppIWMPMediaCollection) mut => VT.get_mediaCollection(ref this, out ppIWMPMediaCollection);
			public HRESULT isIdentical(ref IWMPLibrary pIWMPLibrary, out int16 pvbool) mut => VT.isIdentical(ref this, ref pIWMPLibrary, out pvbool);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrary self, out BSTR pbstrName) get_name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrary self, out WMPLibraryType pwmplt) get_type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrary self, out IWMPMediaCollection* ppIWMPMediaCollection) get_mediaCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrary self, ref IWMPLibrary pIWMPLibrary, out int16 pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPLibraryServices : IUnknown
		{
			public const new Guid IID = .(0x39c2f8d5, 0x1cf2, 0x4d5e, 0xae, 0x09, 0xd7, 0x34, 0x92, 0xcf, 0x9e, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getCountByType(WMPLibraryType wmplt, out int32 plCount) mut => VT.getCountByType(ref this, wmplt, out plCount);
			public HRESULT getLibraryByType(WMPLibraryType wmplt, int32 lIndex, out IWMPLibrary* ppIWMPLibrary) mut => VT.getLibraryByType(ref this, wmplt, lIndex, out ppIWMPLibrary);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibraryServices self, WMPLibraryType wmplt, out int32 plCount) getCountByType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibraryServices self, WMPLibraryType wmplt, int32 lIndex, out IWMPLibrary* ppIWMPLibrary) getLibraryByType;
			}
		}
		[CRepr]
		public struct IWMPLibrarySharingServices : IUnknown
		{
			public const new Guid IID = .(0x82cba86b, 0x9f04, 0x474b, 0xa3, 0x65, 0xd6, 0xdd, 0x14, 0x66, 0xe5, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isLibraryShared(out int16 pvbShared) mut => VT.isLibraryShared(ref this, out pvbShared);
			public HRESULT isLibrarySharingEnabled(out int16 pvbEnabled) mut => VT.isLibrarySharingEnabled(ref this, out pvbEnabled);
			public HRESULT showLibrarySharing() mut => VT.showLibrarySharing(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrarySharingServices self, out int16 pvbShared) isLibraryShared;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrarySharingServices self, out int16 pvbEnabled) isLibrarySharingEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrarySharingServices self) showLibrarySharing;
			}
		}
		[CRepr]
		public struct IWMPFolderMonitorServices : IUnknown
		{
			public const new Guid IID = .(0x788c8743, 0xe57f, 0x439d, 0xa4, 0x68, 0x5b, 0xc7, 0x7f, 0x2e, 0x59, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT item(int32 lIndex, out BSTR pbstrFolder) mut => VT.item(ref this, lIndex, out pbstrFolder);
			public HRESULT add(BSTR bstrFolder) mut => VT.add(ref this, bstrFolder);
			public HRESULT remove(int32 lIndex) mut => VT.remove(ref this, lIndex);
			public HRESULT get_scanState(out WMPFolderScanState pwmpfss) mut => VT.get_scanState(ref this, out pwmpfss);
			public HRESULT get_currentFolder(out BSTR pbstrFolder) mut => VT.get_currentFolder(ref this, out pbstrFolder);
			public HRESULT get_scannedFilesCount(out int32 plCount) mut => VT.get_scannedFilesCount(ref this, out plCount);
			public HRESULT get_addedFilesCount(out int32 plCount) mut => VT.get_addedFilesCount(ref this, out plCount);
			public HRESULT get_updateProgress(out int32 plProgress) mut => VT.get_updateProgress(ref this, out plProgress);
			public HRESULT startScan() mut => VT.startScan(ref this);
			public HRESULT stopScan() mut => VT.stopScan(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, int32 lIndex, out BSTR pbstrFolder) item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, BSTR bstrFolder) add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, int32 lIndex) remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out WMPFolderScanState pwmpfss) get_scanState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out BSTR pbstrFolder) get_currentFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out int32 plCount) get_scannedFilesCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out int32 plCount) get_addedFilesCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self, out int32 plProgress) get_updateProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self) startScan;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPFolderMonitorServices self) stopScan;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice2 : IWMPSyncDevice
		{
			public const new Guid IID = .(0x88afb4b2, 0x140a, 0x44d2, 0x91, 0xe6, 0x45, 0x43, 0xda, 0x46, 0x7c, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT setItemInfo(BSTR bstrItemName, BSTR bstrVal) mut => VT.setItemInfo(ref this, bstrItemName, bstrVal);

			[CRepr]
			public struct VTable : IWMPSyncDevice.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice2 self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice3 : IWMPSyncDevice2
		{
			public const new Guid IID = .(0xb22c85f9, 0x263c, 0x4372, 0xa0, 0xda, 0xb5, 0x18, 0xdb, 0x9b, 0x40, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT estimateSyncSize(ref IWMPPlaylist pNonRulePlaylist, ref IWMPPlaylist pRulesPlaylist) mut => VT.estimateSyncSize(ref this, ref pNonRulePlaylist, ref pRulesPlaylist);
			public HRESULT cancelEstimation() mut => VT.cancelEstimation(ref this);

			[CRepr]
			public struct VTable : IWMPSyncDevice2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice3 self, ref IWMPPlaylist pNonRulePlaylist, ref IWMPPlaylist pRulesPlaylist) estimateSyncSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSyncDevice3 self) cancelEstimation;
			}
		}
		[CRepr]
		public struct IWMPLibrary2 : IWMPLibrary
		{
			public const new Guid IID = .(0xdd578a4e, 0x79b1, 0x426c, 0xbf, 0x8f, 0x3a, 0xdd, 0x90, 0x72, 0x50, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getItemInfo(BSTR bstrItemName, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrItemName, out pbstrVal);

			[CRepr]
			public struct VTable : IWMPLibrary.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPLibrary2 self, BSTR bstrItemName, out BSTR pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPEvents : IUnknown
		{
			public const new Guid IID = .(0x19a6627b, 0xda9e, 0x47c1, 0xbb, 0x23, 0x00, 0xb5, 0xe6, 0x68, 0x23, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OpenStateChange(int32 NewState) mut => VT.OpenStateChange(ref this, NewState);
			public void PlayStateChange(int32 NewState) mut => VT.PlayStateChange(ref this, NewState);
			public void AudioLanguageChange(int32 LangID) mut => VT.AudioLanguageChange(ref this, LangID);
			public void StatusChange() mut => VT.StatusChange(ref this);
			public void ScriptCommand(BSTR scType, BSTR Param) mut => VT.ScriptCommand(ref this, scType, Param);
			public void NewStream() mut => VT.NewStream(ref this);
			public void Disconnect(int32 Result) mut => VT.Disconnect(ref this, Result);
			public void Buffering(int16 Start) mut => VT.Buffering(ref this, Start);
			public void Error() mut => VT.Error(ref this);
			public void Warning(int32 WarningType, int32 Param, BSTR Description) mut => VT.Warning(ref this, WarningType, Param, Description);
			public void EndOfStream(int32 Result) mut => VT.EndOfStream(ref this, Result);
			public void PositionChange(double oldPosition, double newPosition) mut => VT.PositionChange(ref this, oldPosition, newPosition);
			public void MarkerHit(int32 MarkerNum) mut => VT.MarkerHit(ref this, MarkerNum);
			public void DurationUnitChange(int32 NewDurationUnit) mut => VT.DurationUnitChange(ref this, NewDurationUnit);
			public void CdromMediaChange(int32 CdromNum) mut => VT.CdromMediaChange(ref this, CdromNum);
			public void PlaylistChange(ref IDispatch Playlist, WMPPlaylistChangeEventType change) mut => VT.PlaylistChange(ref this, ref Playlist, change);
			public void CurrentPlaylistChange(WMPPlaylistChangeEventType change) mut => VT.CurrentPlaylistChange(ref this, change);
			public void CurrentPlaylistItemAvailable(BSTR bstrItemName) mut => VT.CurrentPlaylistItemAvailable(ref this, bstrItemName);
			public void MediaChange(ref IDispatch Item) mut => VT.MediaChange(ref this, ref Item);
			public void CurrentMediaItemAvailable(BSTR bstrItemName) mut => VT.CurrentMediaItemAvailable(ref this, bstrItemName);
			public void CurrentItemChange(ref IDispatch pdispMedia) mut => VT.CurrentItemChange(ref this, ref pdispMedia);
			public void MediaCollectionChange() mut => VT.MediaCollectionChange(ref this);
			public void MediaCollectionAttributeStringAdded(BSTR bstrAttribName, BSTR bstrAttribVal) mut => VT.MediaCollectionAttributeStringAdded(ref this, bstrAttribName, bstrAttribVal);
			public void MediaCollectionAttributeStringRemoved(BSTR bstrAttribName, BSTR bstrAttribVal) mut => VT.MediaCollectionAttributeStringRemoved(ref this, bstrAttribName, bstrAttribVal);
			public void MediaCollectionAttributeStringChanged(BSTR bstrAttribName, BSTR bstrOldAttribVal, BSTR bstrNewAttribVal) mut => VT.MediaCollectionAttributeStringChanged(ref this, bstrAttribName, bstrOldAttribVal, bstrNewAttribVal);
			public void PlaylistCollectionChange() mut => VT.PlaylistCollectionChange(ref this);
			public void PlaylistCollectionPlaylistAdded(BSTR bstrPlaylistName) mut => VT.PlaylistCollectionPlaylistAdded(ref this, bstrPlaylistName);
			public void PlaylistCollectionPlaylistRemoved(BSTR bstrPlaylistName) mut => VT.PlaylistCollectionPlaylistRemoved(ref this, bstrPlaylistName);
			public void PlaylistCollectionPlaylistSetAsDeleted(BSTR bstrPlaylistName, int16 varfIsDeleted) mut => VT.PlaylistCollectionPlaylistSetAsDeleted(ref this, bstrPlaylistName, varfIsDeleted);
			public void ModeChange(BSTR ModeName, int16 NewValue) mut => VT.ModeChange(ref this, ModeName, NewValue);
			public void MediaError(ref IDispatch pMediaObject) mut => VT.MediaError(ref this, ref pMediaObject);
			public void OpenPlaylistSwitch(ref IDispatch pItem) mut => VT.OpenPlaylistSwitch(ref this, ref pItem);
			public void DomainChange(BSTR strDomain) mut => VT.DomainChange(ref this, strDomain);
			public void SwitchedToPlayerApplication() mut => VT.SwitchedToPlayerApplication(ref this);
			public void SwitchedToControl() mut => VT.SwitchedToControl(ref this);
			public void PlayerDockedStateChange() mut => VT.PlayerDockedStateChange(ref this);
			public void PlayerReconnect() mut => VT.PlayerReconnect(ref this);
			public void Click(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut => VT.Click(ref this, nButton, nShiftState, fX, fY);
			public void DoubleClick(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut => VT.DoubleClick(ref this, nButton, nShiftState, fX, fY);
			public void KeyDown(int16 nKeyCode, int16 nShiftState) mut => VT.KeyDown(ref this, nKeyCode, nShiftState);
			public void KeyPress(int16 nKeyAscii) mut => VT.KeyPress(ref this, nKeyAscii);
			public void KeyUp(int16 nKeyCode, int16 nShiftState) mut => VT.KeyUp(ref this, nKeyCode, nShiftState);
			public void MouseDown(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut => VT.MouseDown(ref this, nButton, nShiftState, fX, fY);
			public void MouseMove(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut => VT.MouseMove(ref this, nButton, nShiftState, fX, fY);
			public void MouseUp(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut => VT.MouseUp(ref this, nButton, nShiftState, fX, fY);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 NewState) OpenStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 NewState) PlayStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 LangID) AudioLanguageChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) StatusChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR scType, BSTR Param) ScriptCommand;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) NewStream;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 Result) Disconnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 Start) Buffering;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) Error;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 WarningType, int32 Param, BSTR Description) Warning;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 Result) EndOfStream;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, double oldPosition, double newPosition) PositionChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 MarkerNum) MarkerHit;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 NewDurationUnit) DurationUnitChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int32 CdromNum) CdromMediaChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, ref IDispatch Playlist, WMPPlaylistChangeEventType change) PlaylistChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, WMPPlaylistChangeEventType change) CurrentPlaylistChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrItemName) CurrentPlaylistItemAvailable;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, ref IDispatch Item) MediaChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrItemName) CurrentMediaItemAvailable;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, ref IDispatch pdispMedia) CurrentItemChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) MediaCollectionChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringAdded;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringRemoved;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrAttribName, BSTR bstrOldAttribVal, BSTR bstrNewAttribVal) MediaCollectionAttributeStringChanged;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) PlaylistCollectionChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistAdded;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistRemoved;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR bstrPlaylistName, int16 varfIsDeleted) PlaylistCollectionPlaylistSetAsDeleted;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR ModeName, int16 NewValue) ModeChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, ref IDispatch pMediaObject) MediaError;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, ref IDispatch pItem) OpenPlaylistSwitch;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, BSTR strDomain) DomainChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) SwitchedToPlayerApplication;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) SwitchedToControl;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) PlayerDockedStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self) PlayerReconnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) Click;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) DoubleClick;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nKeyCode, int16 nShiftState) KeyDown;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nKeyAscii) KeyPress;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nKeyCode, int16 nShiftState) KeyUp;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseDown;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseMove;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseUp;
			}
		}
		[CRepr]
		public struct IWMPEvents2 : IWMPEvents
		{
			public const new Guid IID = .(0x1e7601fa, 0x47ea, 0x4107, 0x9e, 0xa9, 0x90, 0x04, 0xed, 0x96, 0x84, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DeviceConnect(ref IWMPSyncDevice pDevice) mut => VT.DeviceConnect(ref this, ref pDevice);
			public void DeviceDisconnect(ref IWMPSyncDevice pDevice) mut => VT.DeviceDisconnect(ref this, ref pDevice);
			public void DeviceStatusChange(ref IWMPSyncDevice pDevice, WMPDeviceStatus NewStatus) mut => VT.DeviceStatusChange(ref this, ref pDevice, NewStatus);
			public void DeviceSyncStateChange(ref IWMPSyncDevice pDevice, WMPSyncState NewState) mut => VT.DeviceSyncStateChange(ref this, ref pDevice, NewState);
			public void DeviceSyncError(ref IWMPSyncDevice pDevice, ref IDispatch pMedia) mut => VT.DeviceSyncError(ref this, ref pDevice, ref pMedia);
			public void CreatePartnershipComplete(ref IWMPSyncDevice pDevice, HRESULT hrResult) mut => VT.CreatePartnershipComplete(ref this, ref pDevice, hrResult);

			[CRepr]
			public struct VTable : IWMPEvents.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice) DeviceConnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice) DeviceDisconnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice, WMPDeviceStatus NewStatus) DeviceStatusChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice, WMPSyncState NewState) DeviceSyncStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice, ref IDispatch pMedia) DeviceSyncError;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents2 self, ref IWMPSyncDevice pDevice, HRESULT hrResult) CreatePartnershipComplete;
			}
		}
		[CRepr]
		public struct IWMPEvents3 : IWMPEvents2
		{
			public const new Guid IID = .(0x1f504270, 0xa66b, 0x4223, 0x8e, 0x96, 0x26, 0xa0, 0x6c, 0x63, 0xd6, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public void CdromRipStateChange(ref IWMPCdromRip pCdromRip, WMPRipState wmprs) mut => VT.CdromRipStateChange(ref this, ref pCdromRip, wmprs);
			public void CdromRipMediaError(ref IWMPCdromRip pCdromRip, ref IDispatch pMedia) mut => VT.CdromRipMediaError(ref this, ref pCdromRip, ref pMedia);
			public void CdromBurnStateChange(ref IWMPCdromBurn pCdromBurn, WMPBurnState wmpbs) mut => VT.CdromBurnStateChange(ref this, ref pCdromBurn, wmpbs);
			public void CdromBurnMediaError(ref IWMPCdromBurn pCdromBurn, ref IDispatch pMedia) mut => VT.CdromBurnMediaError(ref this, ref pCdromBurn, ref pMedia);
			public void CdromBurnError(ref IWMPCdromBurn pCdromBurn, HRESULT hrError) mut => VT.CdromBurnError(ref this, ref pCdromBurn, hrError);
			public void LibraryConnect(ref IWMPLibrary pLibrary) mut => VT.LibraryConnect(ref this, ref pLibrary);
			public void LibraryDisconnect(ref IWMPLibrary pLibrary) mut => VT.LibraryDisconnect(ref this, ref pLibrary);
			public void FolderScanStateChange(WMPFolderScanState wmpfss) mut => VT.FolderScanStateChange(ref this, wmpfss);
			public void StringCollectionChange(ref IDispatch pdispStringCollection, WMPStringCollectionChangeEventType change, int32 lCollectionIndex) mut => VT.StringCollectionChange(ref this, ref pdispStringCollection, change, lCollectionIndex);
			public void MediaCollectionMediaAdded(ref IDispatch pdispMedia) mut => VT.MediaCollectionMediaAdded(ref this, ref pdispMedia);
			public void MediaCollectionMediaRemoved(ref IDispatch pdispMedia) mut => VT.MediaCollectionMediaRemoved(ref this, ref pdispMedia);

			[CRepr]
			public struct VTable : IWMPEvents2.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPCdromRip pCdromRip, WMPRipState wmprs) CdromRipStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPCdromRip pCdromRip, ref IDispatch pMedia) CdromRipMediaError;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPCdromBurn pCdromBurn, WMPBurnState wmpbs) CdromBurnStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPCdromBurn pCdromBurn, ref IDispatch pMedia) CdromBurnMediaError;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPCdromBurn pCdromBurn, HRESULT hrError) CdromBurnError;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPLibrary pLibrary) LibraryConnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IWMPLibrary pLibrary) LibraryDisconnect;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, WMPFolderScanState wmpfss) FolderScanStateChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IDispatch pdispStringCollection, WMPStringCollectionChangeEventType change, int32 lCollectionIndex) StringCollectionChange;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IDispatch pdispMedia) MediaCollectionMediaAdded;
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents3 self, ref IDispatch pdispMedia) MediaCollectionMediaRemoved;
			}
		}
		[CRepr]
		public struct IWMPEvents4 : IWMPEvents3
		{
			public const new Guid IID = .(0x26dabcfa, 0x306b, 0x404d, 0x9a, 0x6f, 0x63, 0x0a, 0x84, 0x05, 0x04, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DeviceEstimation(ref IWMPSyncDevice pDevice, HRESULT hrResult, int64 qwEstimatedUsedSpace, int64 qwEstimatedSpace) mut => VT.DeviceEstimation(ref this, ref pDevice, hrResult, qwEstimatedUsedSpace, qwEstimatedSpace);

			[CRepr]
			public struct VTable : IWMPEvents3.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IWMPEvents4 self, ref IWMPSyncDevice pDevice, HRESULT hrResult, int64 qwEstimatedUsedSpace, int64 qwEstimatedSpace) DeviceEstimation;
			}
		}
		[CRepr]
		public struct _WMPOCXEvents : IDispatch
		{
			public const new Guid IID = .(0x6bf52a51, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable {}
		}
		[CRepr]
		public struct IWMPNodeRealEstate : IUnknown
		{
			public const new Guid IID = .(0x42751198, 0x5a50, 0x4460, 0xbc, 0xb4, 0x70, 0x9f, 0x8b, 0xdc, 0x8e, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDesiredSize(out SIZE pSize) mut => VT.GetDesiredSize(ref this, out pSize);
			public HRESULT SetRects(in RECT pSrc, in RECT pDest, in RECT pClip) mut => VT.SetRects(ref this, pSrc, pDest, pClip);
			public HRESULT GetRects(out RECT pSrc, out RECT pDest, out RECT pClip) mut => VT.GetRects(ref this, out pSrc, out pDest, out pClip);
			public HRESULT SetWindowless(BOOL fWindowless) mut => VT.SetWindowless(ref this, fWindowless);
			public HRESULT GetWindowless(out BOOL pfWindowless) mut => VT.GetWindowless(ref this, out pfWindowless);
			public HRESULT SetFullScreen(BOOL fFullScreen) mut => VT.SetFullScreen(ref this, fFullScreen);
			public HRESULT GetFullScreen(out BOOL pfFullScreen) mut => VT.GetFullScreen(ref this, out pfFullScreen);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, out SIZE pSize) GetDesiredSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, in RECT pSrc, in RECT pDest, in RECT pClip) SetRects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, out RECT pSrc, out RECT pDest, out RECT pClip) GetRects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, BOOL fWindowless) SetWindowless;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, out BOOL pfWindowless) GetWindowless;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, BOOL fFullScreen) SetFullScreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstate self, out BOOL pfFullScreen) GetFullScreen;
			}
		}
		[CRepr]
		public struct IWMPNodeRealEstateHost : IUnknown
		{
			public const new Guid IID = .(0x1491087d, 0x2c6b, 0x44c8, 0xb0, 0x19, 0xb3, 0xc9, 0x29, 0xd2, 0xad, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDesiredSizeChange(out SIZE pSize) mut => VT.OnDesiredSizeChange(ref this, out pSize);
			public HRESULT OnFullScreenTransition(BOOL fFullScreen) mut => VT.OnFullScreenTransition(ref this, fFullScreen);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstateHost self, out SIZE pSize) OnDesiredSizeChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeRealEstateHost self, BOOL fFullScreen) OnFullScreenTransition;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowed : IUnknown
		{
			public const new Guid IID = .(0x96740bfa, 0xc56a, 0x45d1, 0xa3, 0xa4, 0x76, 0x29, 0x14, 0xd4, 0xad, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOwnerWindow(int hwnd) mut => VT.SetOwnerWindow(ref this, hwnd);
			public HRESULT GetOwnerWindow(out int phwnd) mut => VT.GetOwnerWindow(ref this, out phwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeWindowed self, int hwnd) SetOwnerWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeWindowed self, out int phwnd) GetOwnerWindow;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowedHost : IUnknown
		{
			public const new Guid IID = .(0xa300415a, 0x54aa, 0x4081, 0xad, 0xbf, 0x3b, 0x13, 0x61, 0x0d, 0x89, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowMessageFromRenderer(uint32 uMsg, WPARAM wparam, LPARAM lparam, out LRESULT plRet, out BOOL pfHandled) mut => VT.OnWindowMessageFromRenderer(ref this, uMsg, wparam, lparam, out plRet, out pfHandled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeWindowedHost self, uint32 uMsg, WPARAM wparam, LPARAM lparam, out LRESULT plRet, out BOOL pfHandled) OnWindowMessageFromRenderer;
			}
		}
		[CRepr]
		public struct IWMPWindowMessageSink : IUnknown
		{
			public const new Guid IID = .(0x3a0daa30, 0x908d, 0x4789, 0xba, 0x87, 0xae, 0xd8, 0x79, 0xb5, 0xc4, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowMessage(uint32 uMsg, WPARAM wparam, LPARAM lparam, out LRESULT plRet, out BOOL pfHandled) mut => VT.OnWindowMessage(ref this, uMsg, wparam, lparam, out plRet, out pfHandled);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPWindowMessageSink self, uint32 uMsg, WPARAM wparam, LPARAM lparam, out LRESULT plRet, out BOOL pfHandled) OnWindowMessage;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowless : IWMPWindowMessageSink
		{
			public const new Guid IID = .(0x9b9199ad, 0x780c, 0x4eda, 0xb8, 0x16, 0x26, 0x1e, 0xba, 0x5d, 0x15, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDraw(int hdc, in RECT prcDraw) mut => VT.OnDraw(ref this, hdc, prcDraw);

			[CRepr]
			public struct VTable : IWMPWindowMessageSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeWindowless self, int hdc, in RECT prcDraw) OnDraw;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowlessHost : IUnknown
		{
			public const new Guid IID = .(0xbe7017c6, 0xce34, 0x4901, 0x81, 0x06, 0x77, 0x03, 0x81, 0xaa, 0x6e, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvalidateRect(in RECT prc, BOOL fErase) mut => VT.InvalidateRect(ref this, prc, fErase);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPNodeWindowlessHost self, in RECT prc, BOOL fErase) InvalidateRect;
			}
		}
		[CRepr]
		public struct IWMPVideoRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x6d6cf803, 0x1ec0, 0x4c8d, 0xb3, 0xca, 0xf1, 0x8e, 0x27, 0x28, 0x20, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_presenterActivate(ref IMFActivate pActivate) mut => VT.put_presenterActivate(ref this, ref pActivate);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPVideoRenderConfig self, ref IMFActivate pActivate) put_presenterActivate;
			}
		}
		[CRepr]
		public struct IWMPAudioRenderConfig : IUnknown
		{
			public const new Guid IID = .(0xe79c6349, 0x5997, 0x4ce4, 0x91, 0x7c, 0x22, 0xa3, 0x39, 0x1e, 0xc5, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_audioOutputDevice(out BSTR pbstrOutputDevice) mut => VT.get_audioOutputDevice(ref this, out pbstrOutputDevice);
			public HRESULT put_audioOutputDevice(BSTR bstrOutputDevice) mut => VT.put_audioOutputDevice(ref this, bstrOutputDevice);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPAudioRenderConfig self, out BSTR pbstrOutputDevice) get_audioOutputDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPAudioRenderConfig self, BSTR bstrOutputDevice) put_audioOutputDevice;
			}
		}
		[CRepr]
		public struct IWMPRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x959506c1, 0x0314, 0x4ec5, 0x9e, 0x61, 0x85, 0x28, 0xdb, 0x5e, 0x54, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_inProcOnly(BOOL fInProc) mut => VT.put_inProcOnly(ref this, fInProc);
			public HRESULT get_inProcOnly(out BOOL pfInProc) mut => VT.get_inProcOnly(ref this, out pfInProc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRenderConfig self, BOOL fInProc) put_inProcOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPRenderConfig self, out BOOL pfInProc) get_inProcOnly;
			}
		}
		[CRepr]
		public struct IWMPServices : IUnknown
		{
			public const new Guid IID = .(0xafb6b76b, 0x1e20, 0x4198, 0x83, 0xb3, 0x19, 0x1d, 0xb6, 0xe0, 0xb1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamTime(out int64 prt) mut => VT.GetStreamTime(ref this, out prt);
			public HRESULT GetStreamState(out WMPServices_StreamState pState) mut => VT.GetStreamState(ref this, out pState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPServices self, out int64 prt) GetStreamTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPServices self, out WMPServices_StreamState pState) GetStreamState;
			}
		}
		[CRepr]
		public struct IWMPMediaPluginRegistrar : IUnknown
		{
			public const new Guid IID = .(0x68e27045, 0x05bd, 0x40b2, 0x97, 0x20, 0x23, 0x08, 0x8c, 0x78, 0xe3, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WMPRegisterPlayerPlugin(PWSTR pwszFriendlyName, PWSTR pwszDescription, PWSTR pwszUninstallString, uint32 dwPriority, Guid guidPluginType, Guid clsid, uint32 cMediaTypes, void* pMediaTypes) mut => VT.WMPRegisterPlayerPlugin(ref this, pwszFriendlyName, pwszDescription, pwszUninstallString, dwPriority, guidPluginType, clsid, cMediaTypes, pMediaTypes);
			public HRESULT WMPUnRegisterPlayerPlugin(Guid guidPluginType, Guid clsid) mut => VT.WMPUnRegisterPlayerPlugin(ref this, guidPluginType, clsid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaPluginRegistrar self, PWSTR pwszFriendlyName, PWSTR pwszDescription, PWSTR pwszUninstallString, uint32 dwPriority, Guid guidPluginType, Guid clsid, uint32 cMediaTypes, void* pMediaTypes) WMPRegisterPlayerPlugin;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPMediaPluginRegistrar self, Guid guidPluginType, Guid clsid) WMPUnRegisterPlayerPlugin;
			}
		}
		[CRepr]
		public struct IWMPPlugin : IUnknown
		{
			public const new Guid IID = .(0xf1392a70, 0x024c, 0x42bb, 0xa9, 0x98, 0x73, 0xdf, 0xdf, 0xe7, 0xd5, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(uint dwPlaybackContext) mut => VT.Init(ref this, dwPlaybackContext);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);
			public HRESULT GetID(out Guid pGUID) mut => VT.GetID(ref this, out pGUID);
			public HRESULT GetCaps(out uint32 pdwFlags) mut => VT.GetCaps(ref this, out pdwFlags);
			public HRESULT AdviseWMPServices(ref IWMPServices pWMPServices) mut => VT.AdviseWMPServices(ref this, ref pWMPServices);
			public HRESULT UnAdviseWMPServices() mut => VT.UnAdviseWMPServices(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self, uint dwPlaybackContext) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self) Shutdown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self, out Guid pGUID) GetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self, out uint32 pdwFlags) GetCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self, ref IWMPServices pWMPServices) AdviseWMPServices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPlugin self) UnAdviseWMPServices;
			}
		}
		[CRepr]
		public struct IWMPPluginEnable : IUnknown
		{
			public const new Guid IID = .(0x5fca444c, 0x7ad1, 0x479d, 0xa4, 0xef, 0x40, 0x56, 0x6a, 0x53, 0x09, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEnable(BOOL fEnable) mut => VT.SetEnable(ref this, fEnable);
			public HRESULT GetEnable(out BOOL pfEnable) mut => VT.GetEnable(ref this, out pfEnable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginEnable self, BOOL fEnable) SetEnable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginEnable self, out BOOL pfEnable) GetEnable;
			}
		}
		[CRepr]
		public struct IWMPGraphCreation : IUnknown
		{
			public const new Guid IID = .(0xbfb377e5, 0xc594, 0x4369, 0xa9, 0x70, 0xde, 0x89, 0x6d, 0x5e, 0xce, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GraphCreationPreRender(ref IUnknown pFilterGraph, ref IUnknown pReserved) mut => VT.GraphCreationPreRender(ref this, ref pFilterGraph, ref pReserved);
			public HRESULT GraphCreationPostRender(ref IUnknown pFilterGraph) mut => VT.GraphCreationPostRender(ref this, ref pFilterGraph);
			public HRESULT GetGraphCreationFlags(out uint32 pdwFlags) mut => VT.GetGraphCreationFlags(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPGraphCreation self, ref IUnknown pFilterGraph, ref IUnknown pReserved) GraphCreationPreRender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPGraphCreation self, ref IUnknown pFilterGraph) GraphCreationPostRender;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPGraphCreation self, out uint32 pdwFlags) GetGraphCreationFlags;
			}
		}
		[CRepr]
		public struct IWMPConvert : IUnknown
		{
			public const new Guid IID = .(0xd683162f, 0x57d4, 0x4108, 0x83, 0x73, 0x4a, 0x96, 0x76, 0xd1, 0xc2, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConvertFile(BSTR bstrInputFile, BSTR bstrDestinationFolder, out BSTR pbstrOutputFile) mut => VT.ConvertFile(ref this, bstrInputFile, bstrDestinationFolder, out pbstrOutputFile);
			public HRESULT GetErrorURL(out BSTR pbstrURL) mut => VT.GetErrorURL(ref this, out pbstrURL);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPConvert self, BSTR bstrInputFile, BSTR bstrDestinationFolder, out BSTR pbstrOutputFile) ConvertFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPConvert self, out BSTR pbstrURL) GetErrorURL;
			}
		}
		[CRepr]
		public struct IWMPTranscodePolicy : IUnknown
		{
			public const new Guid IID = .(0xb64cbac3, 0x401c, 0x4327, 0xa3, 0xe8, 0xb9, 0xfe, 0xb3, 0xa8, 0xc2, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT allowTranscode(out int16 pvbAllow) mut => VT.allowTranscode(ref this, out pvbAllow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPTranscodePolicy self, out int16 pvbAllow) allowTranscode;
			}
		}
		[CRepr]
		public struct IWMPUserEventSink : IUnknown
		{
			public const new Guid IID = .(0xcfccfa72, 0xc343, 0x48c3, 0xa2, 0xde, 0xb7, 0xa4, 0x40, 0x2e, 0x39, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyUserEvent(int32 EventCode) mut => VT.NotifyUserEvent(ref this, EventCode);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPUserEventSink self, int32 EventCode) NotifyUserEvent;
			}
		}
		[CRepr]
		public struct IXFeedsManager : IUnknown
		{
			public const new Guid IID = .(0x5357e238, 0xfb12, 0x4aca, 0xa9, 0x30, 0xca, 0xb7, 0x83, 0x2b, 0x84, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RootFolder(in Guid riid, void** ppv) mut => VT.RootFolder(ref this, riid, ppv);
			public HRESULT IsSubscribed(PWSTR pszUrl, out BOOL pbSubscribed) mut => VT.IsSubscribed(ref this, pszUrl, out pbSubscribed);
			public HRESULT ExistsFeed(PWSTR pszPath, out BOOL pbFeedExists) mut => VT.ExistsFeed(ref this, pszPath, out pbFeedExists);
			public HRESULT GetFeed(PWSTR pszPath, in Guid riid, void** ppv) mut => VT.GetFeed(ref this, pszPath, riid, ppv);
			public HRESULT GetFeedByUrl(PWSTR pszUrl, in Guid riid, void** ppv) mut => VT.GetFeedByUrl(ref this, pszUrl, riid, ppv);
			public HRESULT ExistsFolder(PWSTR pszPath, out BOOL pbFolderExists) mut => VT.ExistsFolder(ref this, pszPath, out pbFolderExists);
			public HRESULT GetFolder(PWSTR pszPath, in Guid riid, void** ppv) mut => VT.GetFolder(ref this, pszPath, riid, ppv);
			public HRESULT DeleteFeed(PWSTR pszPath) mut => VT.DeleteFeed(ref this, pszPath);
			public HRESULT DeleteFolder(PWSTR pszPath) mut => VT.DeleteFolder(ref this, pszPath);
			public HRESULT BackgroundSync(FEEDS_BACKGROUNDSYNC_ACTION fbsa) mut => VT.BackgroundSync(ref this, fbsa);
			public HRESULT BackgroundSyncStatus(out FEEDS_BACKGROUNDSYNC_STATUS pfbss) mut => VT.BackgroundSyncStatus(ref this, out pfbss);
			public HRESULT DefaultInterval(out uint32 puiInterval) mut => VT.DefaultInterval(ref this, out puiInterval);
			public HRESULT SetDefaultInterval(uint32 uiInterval) mut => VT.SetDefaultInterval(ref this, uiInterval);
			public HRESULT AsyncSyncAll() mut => VT.AsyncSyncAll(ref this);
			public HRESULT Normalize(ref IStream pStreamIn, out IStream* ppStreamOut) mut => VT.Normalize(ref this, ref pStreamIn, out ppStreamOut);
			public HRESULT ItemCountLimit(out uint32 puiItemCountLimit) mut => VT.ItemCountLimit(ref this, out puiItemCountLimit);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, in Guid riid, void** ppv) RootFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszUrl, out BOOL pbSubscribed) IsSubscribed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath, out BOOL pbFeedExists) ExistsFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath, in Guid riid, void** ppv) GetFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszUrl, in Guid riid, void** ppv) GetFeedByUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath, out BOOL pbFolderExists) ExistsFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath, in Guid riid, void** ppv) GetFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath) DeleteFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, PWSTR pszPath) DeleteFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, FEEDS_BACKGROUNDSYNC_ACTION fbsa) BackgroundSync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, out FEEDS_BACKGROUNDSYNC_STATUS pfbss) BackgroundSyncStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, out uint32 puiInterval) DefaultInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, uint32 uiInterval) SetDefaultInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self) AsyncSyncAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, ref IStream pStreamIn, out IStream* ppStreamOut) Normalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsManager self, out uint32 puiItemCountLimit) ItemCountLimit;
			}
		}
		[CRepr]
		public struct IXFeedsEnum : IUnknown
		{
			public const new Guid IID = .(0xdc43a9d5, 0x5015, 0x4301, 0x8c, 0x96, 0xa4, 0x74, 0x34, 0xb4, 0xd6, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Count(out uint32 puiCount) mut => VT.Count(ref this, out puiCount);
			public HRESULT Item(uint32 uiIndex, in Guid riid, void** ppv) mut => VT.Item(ref this, uiIndex, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsEnum self, out uint32 puiCount) Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedsEnum self, uint32 uiIndex, in Guid riid, void** ppv) Item;
			}
		}
		[CRepr]
		public struct IXFeedFolder : IUnknown
		{
			public const new Guid IID = .(0x4c963678, 0x3a51, 0x4b88, 0x85, 0x31, 0x98, 0xb9, 0x0b, 0x65, 0x08, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Feeds(out IXFeedsEnum* ppfe) mut => VT.Feeds(ref this, out ppfe);
			public HRESULT Subfolders(out IXFeedsEnum* ppfe) mut => VT.Subfolders(ref this, out ppfe);
			public HRESULT CreateFeed(PWSTR pszName, PWSTR pszUrl, in Guid riid, void** ppv) mut => VT.CreateFeed(ref this, pszName, pszUrl, riid, ppv);
			public HRESULT CreateSubfolder(PWSTR pszName, in Guid riid, void** ppv) mut => VT.CreateSubfolder(ref this, pszName, riid, ppv);
			public HRESULT ExistsFeed(PWSTR pszName, ref BOOL pbFeedExists) mut => VT.ExistsFeed(ref this, pszName, ref pbFeedExists);
			public HRESULT ExistsSubfolder(PWSTR pszName, ref BOOL pbSubfolderExists) mut => VT.ExistsSubfolder(ref this, pszName, ref pbSubfolderExists);
			public HRESULT GetFeed(PWSTR pszName, in Guid riid, void** ppv) mut => VT.GetFeed(ref this, pszName, riid, ppv);
			public HRESULT GetSubfolder(PWSTR pszName, in Guid riid, void** ppv) mut => VT.GetSubfolder(ref this, pszName, riid, ppv);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Name(out PWSTR ppszName) mut => VT.Name(ref this, out ppszName);
			public HRESULT Rename(PWSTR pszName) mut => VT.Rename(ref this, pszName);
			public HRESULT Path(out PWSTR ppszPath) mut => VT.Path(ref this, out ppszPath);
			public HRESULT Move(PWSTR pszPath) mut => VT.Move(ref this, pszPath);
			public HRESULT Parent(in Guid riid, void** ppv) mut => VT.Parent(ref this, riid, ppv);
			public HRESULT IsRoot(out BOOL pbIsRootFeedFolder) mut => VT.IsRoot(ref this, out pbIsRootFeedFolder);
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, in Guid riid, void** ppv) mut => VT.GetWatcher(ref this, @scope, mask, riid, ppv);
			public HRESULT TotalUnreadItemCount(out uint32 puiTotalUnreadItemCount) mut => VT.TotalUnreadItemCount(ref this, out puiTotalUnreadItemCount);
			public HRESULT TotalItemCount(out uint32 puiTotalItemCount) mut => VT.TotalItemCount(ref this, out puiTotalItemCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out IXFeedsEnum* ppfe) Feeds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out IXFeedsEnum* ppfe) Subfolders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, PWSTR pszUrl, in Guid riid, void** ppv) CreateFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, in Guid riid, void** ppv) CreateSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, ref BOOL pbFeedExists) ExistsFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, ref BOOL pbSubfolderExists) ExistsSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, in Guid riid, void** ppv) GetFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName, in Guid riid, void** ppv) GetSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out PWSTR ppszName) Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszName) Rename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out PWSTR ppszPath) Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, PWSTR pszPath) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, in Guid riid, void** ppv) Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out BOOL pbIsRootFeedFolder) IsRoot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, in Guid riid, void** ppv) GetWatcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out uint32 puiTotalUnreadItemCount) TotalUnreadItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolder self, out uint32 puiTotalItemCount) TotalItemCount;
			}
		}
		[CRepr]
		public struct IXFeedFolderEvents : IUnknown
		{
			public const new Guid IID = .(0x7964b769, 0x234a, 0x4bb1, 0xa5, 0xf4, 0x90, 0x45, 0x4c, 0x8a, 0xd0, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut => VT.Error(ref this);
			public HRESULT FolderAdded(PWSTR pszPath) mut => VT.FolderAdded(ref this, pszPath);
			public HRESULT FolderDeleted(PWSTR pszPath) mut => VT.FolderDeleted(ref this, pszPath);
			public HRESULT FolderRenamed(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FolderRenamed(ref this, pszPath, pszOldPath);
			public HRESULT FolderMovedFrom(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FolderMovedFrom(ref this, pszPath, pszOldPath);
			public HRESULT FolderMovedTo(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FolderMovedTo(ref this, pszPath, pszOldPath);
			public HRESULT FolderItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut => VT.FolderItemCountChanged(ref this, pszPath, feicfFlags);
			public HRESULT FeedAdded(PWSTR pszPath) mut => VT.FeedAdded(ref this, pszPath);
			public HRESULT FeedDeleted(PWSTR pszPath) mut => VT.FeedDeleted(ref this, pszPath);
			public HRESULT FeedRenamed(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FeedRenamed(ref this, pszPath, pszOldPath);
			public HRESULT FeedUrlChanged(PWSTR pszPath) mut => VT.FeedUrlChanged(ref this, pszPath);
			public HRESULT FeedMovedFrom(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FeedMovedFrom(ref this, pszPath, pszOldPath);
			public HRESULT FeedMovedTo(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FeedMovedTo(ref this, pszPath, pszOldPath);
			public HRESULT FeedDownloading(PWSTR pszPath) mut => VT.FeedDownloading(ref this, pszPath);
			public HRESULT FeedDownloadCompleted(PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) mut => VT.FeedDownloadCompleted(ref this, pszPath, fde);
			public HRESULT FeedItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut => VT.FeedItemCountChanged(ref this, pszPath, feicfFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self) Error;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FolderAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FolderDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FolderRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, int32 feicfFlags) FolderItemCountChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FeedAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FeedDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FeedUrlChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath) FeedDownloading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedFolderEvents self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeed : IUnknown
		{
			public const new Guid IID = .(0xa44179a4, 0xe0f6, 0x403b, 0xaf, 0x8d, 0xd0, 0x80, 0xf4, 0x25, 0xa4, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(uint32 uiItemCount, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, out IStream* pps) mut => VT.Xml(ref this, uiItemCount, sortProperty, sortOrder, filterFlags, includeFlags, out pps);
			public HRESULT Name(out PWSTR ppszName) mut => VT.Name(ref this, out ppszName);
			public HRESULT Rename(PWSTR pszName) mut => VT.Rename(ref this, pszName);
			public HRESULT Url(out PWSTR ppszUrl) mut => VT.Url(ref this, out ppszUrl);
			public HRESULT SetUrl(PWSTR pszUrl) mut => VT.SetUrl(ref this, pszUrl);
			public HRESULT LocalId(out Guid pguid) mut => VT.LocalId(ref this, out pguid);
			public HRESULT Path(out PWSTR ppszPath) mut => VT.Path(ref this, out ppszPath);
			public HRESULT Move(PWSTR pszPath) mut => VT.Move(ref this, pszPath);
			public HRESULT Parent(in Guid riid, void** ppv) mut => VT.Parent(ref this, riid, ppv);
			public HRESULT LastWriteTime(out SYSTEMTIME pstLastWriteTime) mut => VT.LastWriteTime(ref this, out pstLastWriteTime);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Download() mut => VT.Download(ref this);
			public HRESULT AsyncDownload() mut => VT.AsyncDownload(ref this);
			public HRESULT CancelAsyncDownload() mut => VT.CancelAsyncDownload(ref this);
			public HRESULT SyncSetting(out FEEDS_SYNC_SETTING pfss) mut => VT.SyncSetting(ref this, out pfss);
			public HRESULT SetSyncSetting(FEEDS_SYNC_SETTING fss) mut => VT.SetSyncSetting(ref this, fss);
			public HRESULT Interval(out uint32 puiInterval) mut => VT.Interval(ref this, out puiInterval);
			public HRESULT SetInterval(uint32 uiInterval) mut => VT.SetInterval(ref this, uiInterval);
			public HRESULT LastDownloadTime(out SYSTEMTIME pstLastDownloadTime) mut => VT.LastDownloadTime(ref this, out pstLastDownloadTime);
			public HRESULT LocalEnclosurePath(out PWSTR ppszPath) mut => VT.LocalEnclosurePath(ref this, out ppszPath);
			public HRESULT Items(out IXFeedsEnum* ppfe) mut => VT.Items(ref this, out ppfe);
			public HRESULT GetItem(uint32 uiId, in Guid riid, void** ppv) mut => VT.GetItem(ref this, uiId, riid, ppv);
			public HRESULT MarkAllItemsRead() mut => VT.MarkAllItemsRead(ref this);
			public HRESULT MaxItemCount(out uint32 puiMaxItemCount) mut => VT.MaxItemCount(ref this, out puiMaxItemCount);
			public HRESULT SetMaxItemCount(uint32 uiMaxItemCount) mut => VT.SetMaxItemCount(ref this, uiMaxItemCount);
			public HRESULT DownloadEnclosuresAutomatically(out BOOL pbDownloadEnclosuresAutomatically) mut => VT.DownloadEnclosuresAutomatically(ref this, out pbDownloadEnclosuresAutomatically);
			public HRESULT SetDownloadEnclosuresAutomatically(BOOL bDownloadEnclosuresAutomatically) mut => VT.SetDownloadEnclosuresAutomatically(ref this, bDownloadEnclosuresAutomatically);
			public HRESULT DownloadStatus(out FEEDS_DOWNLOAD_STATUS pfds) mut => VT.DownloadStatus(ref this, out pfds);
			public HRESULT LastDownloadError(out FEEDS_DOWNLOAD_ERROR pfde) mut => VT.LastDownloadError(ref this, out pfde);
			public HRESULT Merge(ref IStream pStream, PWSTR pszUrl) mut => VT.Merge(ref this, ref pStream, pszUrl);
			public HRESULT DownloadUrl(out PWSTR ppszUrl) mut => VT.DownloadUrl(ref this, out ppszUrl);
			public HRESULT Title(out PWSTR ppszTitle) mut => VT.Title(ref this, out ppszTitle);
			public HRESULT Description(out PWSTR ppszDescription) mut => VT.Description(ref this, out ppszDescription);
			public HRESULT Link(out PWSTR ppszHomePage) mut => VT.Link(ref this, out ppszHomePage);
			public HRESULT Image(out PWSTR ppszImageUrl) mut => VT.Image(ref this, out ppszImageUrl);
			public HRESULT LastBuildDate(out SYSTEMTIME pstLastBuildDate) mut => VT.LastBuildDate(ref this, out pstLastBuildDate);
			public HRESULT PubDate(out SYSTEMTIME pstPubDate) mut => VT.PubDate(ref this, out pstPubDate);
			public HRESULT Ttl(out uint32 puiTtl) mut => VT.Ttl(ref this, out puiTtl);
			public HRESULT Language(out PWSTR ppszLanguage) mut => VT.Language(ref this, out ppszLanguage);
			public HRESULT Copyright(out PWSTR ppszCopyright) mut => VT.Copyright(ref this, out ppszCopyright);
			public HRESULT IsList(out BOOL pbIsList) mut => VT.IsList(ref this, out pbIsList);
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, in Guid riid, void** ppv) mut => VT.GetWatcher(ref this, @scope, mask, riid, ppv);
			public HRESULT UnreadItemCount(out uint32 puiUnreadItemCount) mut => VT.UnreadItemCount(ref this, out puiUnreadItemCount);
			public HRESULT ItemCount(out uint32 puiItemCount) mut => VT.ItemCount(ref this, out puiItemCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, uint32 uiItemCount, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, out IStream* pps) Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszName) Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, PWSTR pszName) Rename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszUrl) Url;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, PWSTR pszUrl) SetUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out Guid pguid) LocalId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszPath) Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, PWSTR pszPath) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, in Guid riid, void** ppv) Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out SYSTEMTIME pstLastWriteTime) LastWriteTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self) Download;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self) AsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self) CancelAsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out FEEDS_SYNC_SETTING pfss) SyncSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, FEEDS_SYNC_SETTING fss) SetSyncSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out uint32 puiInterval) Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, uint32 uiInterval) SetInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out SYSTEMTIME pstLastDownloadTime) LastDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszPath) LocalEnclosurePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out IXFeedsEnum* ppfe) Items;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, uint32 uiId, in Guid riid, void** ppv) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self) MarkAllItemsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out uint32 puiMaxItemCount) MaxItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, uint32 uiMaxItemCount) SetMaxItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out BOOL pbDownloadEnclosuresAutomatically) DownloadEnclosuresAutomatically;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, BOOL bDownloadEnclosuresAutomatically) SetDownloadEnclosuresAutomatically;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out FEEDS_DOWNLOAD_STATUS pfds) DownloadStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out FEEDS_DOWNLOAD_ERROR pfde) LastDownloadError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, ref IStream pStream, PWSTR pszUrl) Merge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszUrl) DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszTitle) Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszDescription) Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszHomePage) Link;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszImageUrl) Image;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out SYSTEMTIME pstLastBuildDate) LastBuildDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out SYSTEMTIME pstPubDate) PubDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out uint32 puiTtl) Ttl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszLanguage) Language;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out PWSTR ppszCopyright) Copyright;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out BOOL pbIsList) IsList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, in Guid riid, void** ppv) GetWatcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out uint32 puiUnreadItemCount) UnreadItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed self, out uint32 puiItemCount) ItemCount;
			}
		}
		[CRepr]
		public struct IXFeed2 : IXFeed
		{
			public const new Guid IID = .(0xce528e77, 0x3716, 0x4eb7, 0x95, 0x6d, 0xf5, 0xe3, 0x75, 0x02, 0xe1, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByEffectiveId(uint32 uiEffectiveId, in Guid riid, void** ppv) mut => VT.GetItemByEffectiveId(ref this, uiEffectiveId, riid, ppv);
			public HRESULT LastItemDownloadTime(out SYSTEMTIME pstLastItemDownloadTime) mut => VT.LastItemDownloadTime(ref this, out pstLastItemDownloadTime);
			public HRESULT Username(out PWSTR ppszUsername) mut => VT.Username(ref this, out ppszUsername);
			public HRESULT Password(out PWSTR ppszPassword) mut => VT.Password(ref this, out ppszPassword);
			public HRESULT SetCredentials(PWSTR pszUsername, PWSTR pszPassword) mut => VT.SetCredentials(ref this, pszUsername, pszPassword);
			public HRESULT ClearCredentials() mut => VT.ClearCredentials(ref this);

			[CRepr]
			public struct VTable : IXFeed.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self, uint32 uiEffectiveId, in Guid riid, void** ppv) GetItemByEffectiveId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self, out SYSTEMTIME pstLastItemDownloadTime) LastItemDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self, out PWSTR ppszUsername) Username;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self, out PWSTR ppszPassword) Password;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self, PWSTR pszUsername, PWSTR pszPassword) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeed2 self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IXFeedEvents : IUnknown
		{
			public const new Guid IID = .(0x1630852e, 0x1263, 0x465b, 0x98, 0xe5, 0xfe, 0x60, 0xff, 0xec, 0x4a, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut => VT.Error(ref this);
			public HRESULT FeedDeleted(PWSTR pszPath) mut => VT.FeedDeleted(ref this, pszPath);
			public HRESULT FeedRenamed(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FeedRenamed(ref this, pszPath, pszOldPath);
			public HRESULT FeedUrlChanged(PWSTR pszPath) mut => VT.FeedUrlChanged(ref this, pszPath);
			public HRESULT FeedMoved(PWSTR pszPath, PWSTR pszOldPath) mut => VT.FeedMoved(ref this, pszPath, pszOldPath);
			public HRESULT FeedDownloading(PWSTR pszPath) mut => VT.FeedDownloading(ref this, pszPath);
			public HRESULT FeedDownloadCompleted(PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) mut => VT.FeedDownloadCompleted(ref this, pszPath, fde);
			public HRESULT FeedItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut => VT.FeedItemCountChanged(ref this, pszPath, feicfFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self) Error;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath) FeedDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath) FeedUrlChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath, PWSTR pszOldPath) FeedMoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath) FeedDownloading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEvents self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeedItem : IUnknown
		{
			public const new Guid IID = .(0xe757b2f5, 0xe73e, 0x434e, 0xa1, 0xbf, 0x2b, 0xd7, 0xc3, 0xe6, 0x0f, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(FEEDS_XML_INCLUDE_FLAGS fxif, out IStream* pps) mut => VT.Xml(ref this, fxif, out pps);
			public HRESULT Title(out PWSTR ppszTitle) mut => VT.Title(ref this, out ppszTitle);
			public HRESULT Link(out PWSTR ppszUrl) mut => VT.Link(ref this, out ppszUrl);
			public HRESULT Guid(out PWSTR ppszGuid) mut => VT.Guid(ref this, out ppszGuid);
			public HRESULT Description(out PWSTR ppszDescription) mut => VT.Description(ref this, out ppszDescription);
			public HRESULT PubDate(out SYSTEMTIME pstPubDate) mut => VT.PubDate(ref this, out pstPubDate);
			public HRESULT Comments(out PWSTR ppszUrl) mut => VT.Comments(ref this, out ppszUrl);
			public HRESULT Author(out PWSTR ppszAuthor) mut => VT.Author(ref this, out ppszAuthor);
			public HRESULT Enclosure(in Guid riid, void** ppv) mut => VT.Enclosure(ref this, riid, ppv);
			public HRESULT IsRead(out BOOL pbIsRead) mut => VT.IsRead(ref this, out pbIsRead);
			public HRESULT SetIsRead(BOOL bIsRead) mut => VT.SetIsRead(ref this, bIsRead);
			public HRESULT LocalId(out uint32 puiId) mut => VT.LocalId(ref this, out puiId);
			public HRESULT Parent(in Guid riid, void** ppv) mut => VT.Parent(ref this, riid, ppv);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT DownloadUrl(out PWSTR ppszUrl) mut => VT.DownloadUrl(ref this, out ppszUrl);
			public HRESULT LastDownloadTime(out SYSTEMTIME pstLastDownloadTime) mut => VT.LastDownloadTime(ref this, out pstLastDownloadTime);
			public HRESULT Modified(out SYSTEMTIME pstModifiedTime) mut => VT.Modified(ref this, out pstModifiedTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, FEEDS_XML_INCLUDE_FLAGS fxif, out IStream* pps) Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszTitle) Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszUrl) Link;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszGuid) Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszDescription) Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out SYSTEMTIME pstPubDate) PubDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszUrl) Comments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszAuthor) Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, in Guid riid, void** ppv) Enclosure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out BOOL pbIsRead) IsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, BOOL bIsRead) SetIsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out uint32 puiId) LocalId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, in Guid riid, void** ppv) Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out PWSTR ppszUrl) DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out SYSTEMTIME pstLastDownloadTime) LastDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem self, out SYSTEMTIME pstModifiedTime) Modified;
			}
		}
		[CRepr]
		public struct IXFeedItem2 : IXFeedItem
		{
			public const new Guid IID = .(0x6cda2dc7, 0x9013, 0x4522, 0x99, 0x70, 0x2a, 0x9d, 0xd9, 0xea, 0xd5, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EffectiveId(out uint32 puiEffectiveId) mut => VT.EffectiveId(ref this, out puiEffectiveId);

			[CRepr]
			public struct VTable : IXFeedItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedItem2 self, out uint32 puiEffectiveId) EffectiveId;
			}
		}
		[CRepr]
		public struct IXFeedEnclosure : IUnknown
		{
			public const new Guid IID = .(0xbfbfb953, 0x644f, 0x4792, 0xb6, 0x9c, 0xdf, 0xac, 0xa4, 0xcb, 0xf8, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Url(out PWSTR ppszUrl) mut => VT.Url(ref this, out ppszUrl);
			public HRESULT Type(out PWSTR ppszMimeType) mut => VT.Type(ref this, out ppszMimeType);
			public HRESULT Length(out uint32 puiLength) mut => VT.Length(ref this, out puiLength);
			public HRESULT AsyncDownload() mut => VT.AsyncDownload(ref this);
			public HRESULT CancelAsyncDownload() mut => VT.CancelAsyncDownload(ref this);
			public HRESULT DownloadStatus(out FEEDS_DOWNLOAD_STATUS pfds) mut => VT.DownloadStatus(ref this, out pfds);
			public HRESULT LastDownloadError(out FEEDS_DOWNLOAD_ERROR pfde) mut => VT.LastDownloadError(ref this, out pfde);
			public HRESULT LocalPath(out PWSTR ppszPath) mut => VT.LocalPath(ref this, out ppszPath);
			public HRESULT Parent(in Guid riid, void** ppv) mut => VT.Parent(ref this, riid, ppv);
			public HRESULT DownloadUrl(out PWSTR ppszUrl) mut => VT.DownloadUrl(ref this, out ppszUrl);
			public HRESULT DownloadMimeType(out PWSTR ppszMimeType) mut => VT.DownloadMimeType(ref this, out ppszMimeType);
			public HRESULT RemoveFile() mut => VT.RemoveFile(ref this);
			public HRESULT SetFile(PWSTR pszDownloadUrl, PWSTR pszDownloadFilePath, PWSTR pszDownloadMimeType, PWSTR pszEnclosureFilename) mut => VT.SetFile(ref this, pszDownloadUrl, pszDownloadFilePath, pszDownloadMimeType, pszEnclosureFilename);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out PWSTR ppszUrl) Url;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out PWSTR ppszMimeType) Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out uint32 puiLength) Length;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self) AsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self) CancelAsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out FEEDS_DOWNLOAD_STATUS pfds) DownloadStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out FEEDS_DOWNLOAD_ERROR pfde) LastDownloadError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out PWSTR ppszPath) LocalPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, in Guid riid, void** ppv) Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out PWSTR ppszUrl) DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, out PWSTR ppszMimeType) DownloadMimeType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self) RemoveFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXFeedEnclosure self, PWSTR pszDownloadUrl, PWSTR pszDownloadFilePath, PWSTR pszDownloadMimeType, PWSTR pszEnclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IFeedsManager : IDispatch
		{
			public const new Guid IID = .(0xa74029cc, 0x1f1a, 0x4906, 0x88, 0xf0, 0x81, 0x06, 0x38, 0xd8, 0x65, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RootFolder(out IDispatch* disp) mut => VT.get_RootFolder(ref this, out disp);
			public HRESULT IsSubscribed(BSTR feedUrl, out int16 subscribed) mut => VT.IsSubscribed(ref this, feedUrl, out subscribed);
			public HRESULT ExistsFeed(BSTR feedPath, out int16 exists) mut => VT.ExistsFeed(ref this, feedPath, out exists);
			public HRESULT GetFeed(BSTR feedPath, out IDispatch* disp) mut => VT.GetFeed(ref this, feedPath, out disp);
			public HRESULT GetFeedByUrl(BSTR feedUrl, out IDispatch* disp) mut => VT.GetFeedByUrl(ref this, feedUrl, out disp);
			public HRESULT ExistsFolder(BSTR folderPath, out int16 exists) mut => VT.ExistsFolder(ref this, folderPath, out exists);
			public HRESULT GetFolder(BSTR folderPath, out IDispatch* disp) mut => VT.GetFolder(ref this, folderPath, out disp);
			public HRESULT DeleteFeed(BSTR feedPath) mut => VT.DeleteFeed(ref this, feedPath);
			public HRESULT DeleteFolder(BSTR folderPath) mut => VT.DeleteFolder(ref this, folderPath);
			public HRESULT BackgroundSync(FEEDS_BACKGROUNDSYNC_ACTION action) mut => VT.BackgroundSync(ref this, action);
			public HRESULT get_BackgroundSyncStatus(out FEEDS_BACKGROUNDSYNC_STATUS status) mut => VT.get_BackgroundSyncStatus(ref this, out status);
			public HRESULT get_DefaultInterval(out int32 minutes) mut => VT.get_DefaultInterval(ref this, out minutes);
			public HRESULT put_DefaultInterval(int32 minutes) mut => VT.put_DefaultInterval(ref this, minutes);
			public HRESULT AsyncSyncAll() mut => VT.AsyncSyncAll(ref this);
			public HRESULT Normalize(BSTR feedXmlIn, out BSTR feedXmlOut) mut => VT.Normalize(ref this, feedXmlIn, out feedXmlOut);
			public HRESULT get_ItemCountLimit(out int32 itemCountLimit) mut => VT.get_ItemCountLimit(ref this, out itemCountLimit);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, out IDispatch* disp) get_RootFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedUrl, out int16 subscribed) IsSubscribed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedPath, out int16 exists) ExistsFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedPath, out IDispatch* disp) GetFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedUrl, out IDispatch* disp) GetFeedByUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR folderPath, out int16 exists) ExistsFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR folderPath, out IDispatch* disp) GetFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedPath) DeleteFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR folderPath) DeleteFolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, FEEDS_BACKGROUNDSYNC_ACTION action) BackgroundSync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, out FEEDS_BACKGROUNDSYNC_STATUS status) get_BackgroundSyncStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, out int32 minutes) get_DefaultInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, int32 minutes) put_DefaultInterval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self) AsyncSyncAll;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, BSTR feedXmlIn, out BSTR feedXmlOut) Normalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsManager self, out int32 itemCountLimit) get_ItemCountLimit;
			}
		}
		[CRepr]
		public struct IFeedsEnum : IDispatch
		{
			public const new Guid IID = .(0xe3cd0028, 0x2eed, 0x4c60, 0x8f, 0xae, 0xa3, 0x22, 0x53, 0x09, 0xa8, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT Item(int32 index, out IDispatch* disp) mut => VT.Item(ref this, index, out disp);
			public HRESULT get__NewEnum(out IEnumVARIANT* enumVar) mut => VT.get__NewEnum(ref this, out enumVar);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsEnum self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsEnum self, int32 index, out IDispatch* disp) Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedsEnum self, out IEnumVARIANT* enumVar) get__NewEnum;
			}
		}
		[CRepr]
		public struct IFeedFolder : IDispatch
		{
			public const new Guid IID = .(0x81f04ad1, 0x4194, 0x4d7d, 0x86, 0xd6, 0x11, 0x81, 0x3c, 0xec, 0x16, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Feeds(out IDispatch* disp) mut => VT.get_Feeds(ref this, out disp);
			public HRESULT get_Subfolders(out IDispatch* disp) mut => VT.get_Subfolders(ref this, out disp);
			public HRESULT CreateFeed(BSTR feedName, BSTR feedUrl, out IDispatch* disp) mut => VT.CreateFeed(ref this, feedName, feedUrl, out disp);
			public HRESULT CreateSubfolder(BSTR folderName, out IDispatch* disp) mut => VT.CreateSubfolder(ref this, folderName, out disp);
			public HRESULT ExistsFeed(BSTR feedName, out int16 exists) mut => VT.ExistsFeed(ref this, feedName, out exists);
			public HRESULT GetFeed(BSTR feedName, out IDispatch* disp) mut => VT.GetFeed(ref this, feedName, out disp);
			public HRESULT ExistsSubfolder(BSTR folderName, out int16 exists) mut => VT.ExistsSubfolder(ref this, folderName, out exists);
			public HRESULT GetSubfolder(BSTR folderName, out IDispatch* disp) mut => VT.GetSubfolder(ref this, folderName, out disp);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT get_Name(out BSTR folderName) mut => VT.get_Name(ref this, out folderName);
			public HRESULT Rename(BSTR folderName) mut => VT.Rename(ref this, folderName);
			public HRESULT get_Path(out BSTR folderPath) mut => VT.get_Path(ref this, out folderPath);
			public HRESULT Move(BSTR newParentPath) mut => VT.Move(ref this, newParentPath);
			public HRESULT get_Parent(out IDispatch* disp) mut => VT.get_Parent(ref this, out disp);
			public HRESULT get_IsRoot(out int16 isRoot) mut => VT.get_IsRoot(ref this, out isRoot);
			public HRESULT get_TotalUnreadItemCount(out int32 count) mut => VT.get_TotalUnreadItemCount(ref this, out count);
			public HRESULT get_TotalItemCount(out int32 count) mut => VT.get_TotalItemCount(ref this, out count);
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, out IDispatch* disp) mut => VT.GetWatcher(ref this, @scope, mask, out disp);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out IDispatch* disp) get_Feeds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out IDispatch* disp) get_Subfolders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR feedName, BSTR feedUrl, out IDispatch* disp) CreateFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR folderName, out IDispatch* disp) CreateSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR feedName, out int16 exists) ExistsFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR feedName, out IDispatch* disp) GetFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR folderName, out int16 exists) ExistsSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR folderName, out IDispatch* disp) GetSubfolder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out BSTR folderName) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR folderName) Rename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out BSTR folderPath) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, BSTR newParentPath) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out IDispatch* disp) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out int16 isRoot) get_IsRoot;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out int32 count) get_TotalUnreadItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, out int32 count) get_TotalItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolder self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, out IDispatch* disp) GetWatcher;
			}
		}
		[CRepr]
		public struct IFeedFolderEvents : IDispatch
		{
			public const new Guid IID = .(0x20a59fa6, 0xa844, 0x4630, 0x9e, 0x98, 0x17, 0x5f, 0x70, 0xb4, 0xd5, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut => VT.Error(ref this);
			public HRESULT FolderAdded(BSTR path) mut => VT.FolderAdded(ref this, path);
			public HRESULT FolderDeleted(BSTR path) mut => VT.FolderDeleted(ref this, path);
			public HRESULT FolderRenamed(BSTR path, BSTR oldPath) mut => VT.FolderRenamed(ref this, path, oldPath);
			public HRESULT FolderMovedFrom(BSTR path, BSTR oldPath) mut => VT.FolderMovedFrom(ref this, path, oldPath);
			public HRESULT FolderMovedTo(BSTR path, BSTR oldPath) mut => VT.FolderMovedTo(ref this, path, oldPath);
			public HRESULT FolderItemCountChanged(BSTR path, int32 itemCountType) mut => VT.FolderItemCountChanged(ref this, path, itemCountType);
			public HRESULT FeedAdded(BSTR path) mut => VT.FeedAdded(ref this, path);
			public HRESULT FeedDeleted(BSTR path) mut => VT.FeedDeleted(ref this, path);
			public HRESULT FeedRenamed(BSTR path, BSTR oldPath) mut => VT.FeedRenamed(ref this, path, oldPath);
			public HRESULT FeedUrlChanged(BSTR path) mut => VT.FeedUrlChanged(ref this, path);
			public HRESULT FeedMovedFrom(BSTR path, BSTR oldPath) mut => VT.FeedMovedFrom(ref this, path, oldPath);
			public HRESULT FeedMovedTo(BSTR path, BSTR oldPath) mut => VT.FeedMovedTo(ref this, path, oldPath);
			public HRESULT FeedDownloading(BSTR path) mut => VT.FeedDownloading(ref this, path);
			public HRESULT FeedDownloadCompleted(BSTR path, FEEDS_DOWNLOAD_ERROR error) mut => VT.FeedDownloadCompleted(ref this, path, error);
			public HRESULT FeedItemCountChanged(BSTR path, int32 itemCountType) mut => VT.FeedItemCountChanged(ref this, path, itemCountType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self) Error;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FolderAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FolderDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FolderRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FolderMovedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FolderMovedTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, int32 itemCountType) FolderItemCountChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FeedAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FeedDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FeedRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FeedUrlChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FeedMovedFrom;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, BSTR oldPath) FeedMovedTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path) FeedDownloading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedFolderEvents self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeed : IDispatch
		{
			public const new Guid IID = .(0xf7f915d8, 0x2ede, 0x42bc, 0x98, 0xe7, 0xa5, 0xd0, 0x50, 0x63, 0xa7, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(int32 count, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, out BSTR xml) mut => VT.Xml(ref this, count, sortProperty, sortOrder, filterFlags, includeFlags, out xml);
			public HRESULT get_Name(out BSTR name) mut => VT.get_Name(ref this, out name);
			public HRESULT Rename(BSTR name) mut => VT.Rename(ref this, name);
			public HRESULT get_Url(out BSTR feedUrl) mut => VT.get_Url(ref this, out feedUrl);
			public HRESULT put_Url(BSTR feedUrl) mut => VT.put_Url(ref this, feedUrl);
			public HRESULT get_LocalId(out BSTR feedGuid) mut => VT.get_LocalId(ref this, out feedGuid);
			public HRESULT get_Path(out BSTR path) mut => VT.get_Path(ref this, out path);
			public HRESULT Move(BSTR newParentPath) mut => VT.Move(ref this, newParentPath);
			public HRESULT get_Parent(out IDispatch* disp) mut => VT.get_Parent(ref this, out disp);
			public HRESULT get_LastWriteTime(out double lastWrite) mut => VT.get_LastWriteTime(ref this, out lastWrite);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT Download() mut => VT.Download(ref this);
			public HRESULT AsyncDownload() mut => VT.AsyncDownload(ref this);
			public HRESULT CancelAsyncDownload() mut => VT.CancelAsyncDownload(ref this);
			public HRESULT get_SyncSetting(out FEEDS_SYNC_SETTING syncSetting) mut => VT.get_SyncSetting(ref this, out syncSetting);
			public HRESULT put_SyncSetting(FEEDS_SYNC_SETTING syncSetting) mut => VT.put_SyncSetting(ref this, syncSetting);
			public HRESULT get_Interval(out int32 minutes) mut => VT.get_Interval(ref this, out minutes);
			public HRESULT put_Interval(int32 minutes) mut => VT.put_Interval(ref this, minutes);
			public HRESULT get_LastDownloadTime(out double lastDownload) mut => VT.get_LastDownloadTime(ref this, out lastDownload);
			public HRESULT get_LocalEnclosurePath(out BSTR path) mut => VT.get_LocalEnclosurePath(ref this, out path);
			public HRESULT get_Items(out IDispatch* disp) mut => VT.get_Items(ref this, out disp);
			public HRESULT GetItem(int32 itemId, out IDispatch* disp) mut => VT.GetItem(ref this, itemId, out disp);
			public HRESULT get_Title(out BSTR title) mut => VT.get_Title(ref this, out title);
			public HRESULT get_Description(out BSTR description) mut => VT.get_Description(ref this, out description);
			public HRESULT get_Link(out BSTR homePage) mut => VT.get_Link(ref this, out homePage);
			public HRESULT get_Image(out BSTR imageUrl) mut => VT.get_Image(ref this, out imageUrl);
			public HRESULT get_LastBuildDate(out double lastBuildDate) mut => VT.get_LastBuildDate(ref this, out lastBuildDate);
			public HRESULT get_PubDate(out double lastPopulateDate) mut => VT.get_PubDate(ref this, out lastPopulateDate);
			public HRESULT get_Ttl(out int32 ttl) mut => VT.get_Ttl(ref this, out ttl);
			public HRESULT get_Language(out BSTR language) mut => VT.get_Language(ref this, out language);
			public HRESULT get_Copyright(out BSTR copyright) mut => VT.get_Copyright(ref this, out copyright);
			public HRESULT get_MaxItemCount(out int32 count) mut => VT.get_MaxItemCount(ref this, out count);
			public HRESULT put_MaxItemCount(int32 count) mut => VT.put_MaxItemCount(ref this, count);
			public HRESULT get_DownloadEnclosuresAutomatically(out int16 downloadEnclosuresAutomatically) mut => VT.get_DownloadEnclosuresAutomatically(ref this, out downloadEnclosuresAutomatically);
			public HRESULT put_DownloadEnclosuresAutomatically(int16 downloadEnclosuresAutomatically) mut => VT.put_DownloadEnclosuresAutomatically(ref this, downloadEnclosuresAutomatically);
			public HRESULT get_DownloadStatus(out FEEDS_DOWNLOAD_STATUS status) mut => VT.get_DownloadStatus(ref this, out status);
			public HRESULT get_LastDownloadError(out FEEDS_DOWNLOAD_ERROR error) mut => VT.get_LastDownloadError(ref this, out error);
			public HRESULT Merge(BSTR feedXml, BSTR feedUrl) mut => VT.Merge(ref this, feedXml, feedUrl);
			public HRESULT get_DownloadUrl(out BSTR feedUrl) mut => VT.get_DownloadUrl(ref this, out feedUrl);
			public HRESULT get_IsList(out int16 isList) mut => VT.get_IsList(ref this, out isList);
			public HRESULT MarkAllItemsRead() mut => VT.MarkAllItemsRead(ref this);
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, out IDispatch* disp) mut => VT.GetWatcher(ref this, @scope, mask, out disp);
			public HRESULT get_UnreadItemCount(out int32 count) mut => VT.get_UnreadItemCount(ref this, out count);
			public HRESULT get_ItemCount(out int32 count) mut => VT.get_ItemCount(ref this, out count);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, int32 count, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, out BSTR xml) Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR name) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, BSTR name) Rename;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR feedUrl) get_Url;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, BSTR feedUrl) put_Url;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR feedGuid) get_LocalId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR path) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, BSTR newParentPath) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out IDispatch* disp) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out double lastWrite) get_LastWriteTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self) Download;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self) AsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self) CancelAsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out FEEDS_SYNC_SETTING syncSetting) get_SyncSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, FEEDS_SYNC_SETTING syncSetting) put_SyncSetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int32 minutes) get_Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, int32 minutes) put_Interval;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out double lastDownload) get_LastDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR path) get_LocalEnclosurePath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out IDispatch* disp) get_Items;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, int32 itemId, out IDispatch* disp) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR title) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR homePage) get_Link;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR imageUrl) get_Image;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out double lastBuildDate) get_LastBuildDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out double lastPopulateDate) get_PubDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int32 ttl) get_Ttl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR language) get_Language;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR copyright) get_Copyright;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int32 count) get_MaxItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, int32 count) put_MaxItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int16 downloadEnclosuresAutomatically) get_DownloadEnclosuresAutomatically;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, int16 downloadEnclosuresAutomatically) put_DownloadEnclosuresAutomatically;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out FEEDS_DOWNLOAD_STATUS status) get_DownloadStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out FEEDS_DOWNLOAD_ERROR error) get_LastDownloadError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, BSTR feedXml, BSTR feedUrl) Merge;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out BSTR feedUrl) get_DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int16 isList) get_IsList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self) MarkAllItemsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, out IDispatch* disp) GetWatcher;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int32 count) get_UnreadItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed self, out int32 count) get_ItemCount;
			}
		}
		[CRepr]
		public struct IFeed2 : IFeed
		{
			public const new Guid IID = .(0x33f2ea09, 0x1398, 0x4ab9, 0xb6, 0xa4, 0xf9, 0x4b, 0x49, 0xd0, 0xa4, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByEffectiveId(int32 itemEffectiveId, out IDispatch* disp) mut => VT.GetItemByEffectiveId(ref this, itemEffectiveId, out disp);
			public HRESULT get_LastItemDownloadTime(out double lastItemDownloadTime) mut => VT.get_LastItemDownloadTime(ref this, out lastItemDownloadTime);
			public HRESULT get_Username(out BSTR username) mut => VT.get_Username(ref this, out username);
			public HRESULT get_Password(out BSTR password) mut => VT.get_Password(ref this, out password);
			public HRESULT SetCredentials(BSTR username, BSTR password) mut => VT.SetCredentials(ref this, username, password);
			public HRESULT ClearCredentials() mut => VT.ClearCredentials(ref this);

			[CRepr]
			public struct VTable : IFeed.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self, int32 itemEffectiveId, out IDispatch* disp) GetItemByEffectiveId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self, out double lastItemDownloadTime) get_LastItemDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self, out BSTR username) get_Username;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self, out BSTR password) get_Password;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self, BSTR username, BSTR password) SetCredentials;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeed2 self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IFeedEvents : IDispatch
		{
			public const new Guid IID = .(0xabf35c99, 0x0681, 0x47ea, 0x9a, 0x8c, 0x14, 0x36, 0xa3, 0x75, 0xa9, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut => VT.Error(ref this);
			public HRESULT FeedDeleted(BSTR path) mut => VT.FeedDeleted(ref this, path);
			public HRESULT FeedRenamed(BSTR path, BSTR oldPath) mut => VT.FeedRenamed(ref this, path, oldPath);
			public HRESULT FeedUrlChanged(BSTR path) mut => VT.FeedUrlChanged(ref this, path);
			public HRESULT FeedMoved(BSTR path, BSTR oldPath) mut => VT.FeedMoved(ref this, path, oldPath);
			public HRESULT FeedDownloading(BSTR path) mut => VT.FeedDownloading(ref this, path);
			public HRESULT FeedDownloadCompleted(BSTR path, FEEDS_DOWNLOAD_ERROR error) mut => VT.FeedDownloadCompleted(ref this, path, error);
			public HRESULT FeedItemCountChanged(BSTR path, int32 itemCountType) mut => VT.FeedItemCountChanged(ref this, path, itemCountType);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self) Error;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path) FeedDeleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path, BSTR oldPath) FeedRenamed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path) FeedUrlChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path, BSTR oldPath) FeedMoved;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path) FeedDownloading;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEvents self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeedItem : IDispatch
		{
			public const new Guid IID = .(0x0a1e6cad, 0x0a47, 0x4da2, 0xa1, 0x3d, 0x5b, 0xaa, 0xa5, 0xc8, 0xbd, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(FEEDS_XML_INCLUDE_FLAGS includeFlags, out BSTR xml) mut => VT.Xml(ref this, includeFlags, out xml);
			public HRESULT get_Title(out BSTR title) mut => VT.get_Title(ref this, out title);
			public HRESULT get_Link(out BSTR linkUrl) mut => VT.get_Link(ref this, out linkUrl);
			public HRESULT get_Guid(out BSTR itemGuid) mut => VT.get_Guid(ref this, out itemGuid);
			public HRESULT get_Description(out BSTR description) mut => VT.get_Description(ref this, out description);
			public HRESULT get_PubDate(out double pubDate) mut => VT.get_PubDate(ref this, out pubDate);
			public HRESULT get_Comments(out BSTR comments) mut => VT.get_Comments(ref this, out comments);
			public HRESULT get_Author(out BSTR author) mut => VT.get_Author(ref this, out author);
			public HRESULT get_Enclosure(out IDispatch* disp) mut => VT.get_Enclosure(ref this, out disp);
			public HRESULT get_IsRead(out int16 isRead) mut => VT.get_IsRead(ref this, out isRead);
			public HRESULT put_IsRead(int16 isRead) mut => VT.put_IsRead(ref this, isRead);
			public HRESULT get_LocalId(out int32 itemId) mut => VT.get_LocalId(ref this, out itemId);
			public HRESULT get_Parent(out IDispatch* disp) mut => VT.get_Parent(ref this, out disp);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT get_DownloadUrl(out BSTR itemUrl) mut => VT.get_DownloadUrl(ref this, out itemUrl);
			public HRESULT get_LastDownloadTime(out double lastDownload) mut => VT.get_LastDownloadTime(ref this, out lastDownload);
			public HRESULT get_Modified(out double modified) mut => VT.get_Modified(ref this, out modified);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, FEEDS_XML_INCLUDE_FLAGS includeFlags, out BSTR xml) Xml;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR title) get_Title;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR linkUrl) get_Link;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR itemGuid) get_Guid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR description) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out double pubDate) get_PubDate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR comments) get_Comments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR author) get_Author;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out IDispatch* disp) get_Enclosure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out int16 isRead) get_IsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, int16 isRead) put_IsRead;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out int32 itemId) get_LocalId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out IDispatch* disp) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out BSTR itemUrl) get_DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out double lastDownload) get_LastDownloadTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem self, out double modified) get_Modified;
			}
		}
		[CRepr]
		public struct IFeedItem2 : IFeedItem
		{
			public const new Guid IID = .(0x79ac9ef4, 0xf9c1, 0x4d2b, 0xa5, 0x0b, 0xa7, 0xff, 0xba, 0x4d, 0xcf, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EffectiveId(out int32 effectiveId) mut => VT.get_EffectiveId(ref this, out effectiveId);

			[CRepr]
			public struct VTable : IFeedItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedItem2 self, out int32 effectiveId) get_EffectiveId;
			}
		}
		[CRepr]
		public struct IFeedEnclosure : IDispatch
		{
			public const new Guid IID = .(0x361c26f7, 0x90a4, 0x4e67, 0xae, 0x09, 0x3a, 0x36, 0xa5, 0x46, 0x43, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Url(out BSTR enclosureUrl) mut => VT.get_Url(ref this, out enclosureUrl);
			public HRESULT get_Type(out BSTR mimeType) mut => VT.get_Type(ref this, out mimeType);
			public HRESULT get_Length(out int32 length) mut => VT.get_Length(ref this, out length);
			public HRESULT AsyncDownload() mut => VT.AsyncDownload(ref this);
			public HRESULT CancelAsyncDownload() mut => VT.CancelAsyncDownload(ref this);
			public HRESULT get_DownloadStatus(out FEEDS_DOWNLOAD_STATUS status) mut => VT.get_DownloadStatus(ref this, out status);
			public HRESULT get_LastDownloadError(out FEEDS_DOWNLOAD_ERROR error) mut => VT.get_LastDownloadError(ref this, out error);
			public HRESULT get_LocalPath(out BSTR localPath) mut => VT.get_LocalPath(ref this, out localPath);
			public HRESULT get_Parent(out IDispatch* disp) mut => VT.get_Parent(ref this, out disp);
			public HRESULT get_DownloadUrl(out BSTR enclosureUrl) mut => VT.get_DownloadUrl(ref this, out enclosureUrl);
			public HRESULT get_DownloadMimeType(out BSTR mimeType) mut => VT.get_DownloadMimeType(ref this, out mimeType);
			public HRESULT RemoveFile() mut => VT.RemoveFile(ref this);
			public HRESULT SetFile(BSTR downloadUrl, BSTR downloadFilePath, BSTR downloadMimeType, BSTR enclosureFilename) mut => VT.SetFile(ref this, downloadUrl, downloadFilePath, downloadMimeType, enclosureFilename);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out BSTR enclosureUrl) get_Url;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out BSTR mimeType) get_Type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out int32 length) get_Length;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self) AsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self) CancelAsyncDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out FEEDS_DOWNLOAD_STATUS status) get_DownloadStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out FEEDS_DOWNLOAD_ERROR error) get_LastDownloadError;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out BSTR localPath) get_LocalPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out IDispatch* disp) get_Parent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out BSTR enclosureUrl) get_DownloadUrl;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, out BSTR mimeType) get_DownloadMimeType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self) RemoveFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFeedEnclosure self, BSTR downloadUrl, BSTR downloadFilePath, BSTR downloadMimeType, BSTR enclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IWMPEffects : IUnknown
		{
			public const new Guid IID = .(0xd3984c13, 0xc3cb, 0x48e2, 0x8b, 0xe5, 0x51, 0x68, 0x34, 0x0b, 0x4f, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Render(out TimedLevel pLevels, HDC hdc, out RECT prc) mut => VT.Render(ref this, out pLevels, hdc, out prc);
			public HRESULT MediaInfo(int32 lChannelCount, int32 lSampleRate, BSTR bstrTitle) mut => VT.MediaInfo(ref this, lChannelCount, lSampleRate, bstrTitle);
			public HRESULT GetCapabilities(out uint32 pdwCapabilities) mut => VT.GetCapabilities(ref this, out pdwCapabilities);
			public HRESULT GetTitle(out BSTR bstrTitle) mut => VT.GetTitle(ref this, out bstrTitle);
			public HRESULT GetPresetTitle(int32 nPreset, out BSTR bstrPresetTitle) mut => VT.GetPresetTitle(ref this, nPreset, out bstrPresetTitle);
			public HRESULT GetPresetCount(out int32 pnPresetCount) mut => VT.GetPresetCount(ref this, out pnPresetCount);
			public HRESULT SetCurrentPreset(int32 nPreset) mut => VT.SetCurrentPreset(ref this, nPreset);
			public HRESULT GetCurrentPreset(out int32 pnPreset) mut => VT.GetCurrentPreset(ref this, out pnPreset);
			public HRESULT DisplayPropertyPage(HWND hwndOwner) mut => VT.DisplayPropertyPage(ref this, hwndOwner);
			public HRESULT GoFullscreen(BOOL fFullScreen) mut => VT.GoFullscreen(ref this, fFullScreen);
			public HRESULT RenderFullScreen(out TimedLevel pLevels) mut => VT.RenderFullScreen(ref this, out pLevels);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out TimedLevel pLevels, HDC hdc, out RECT prc) Render;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, int32 lChannelCount, int32 lSampleRate, BSTR bstrTitle) MediaInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out uint32 pdwCapabilities) GetCapabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out BSTR bstrTitle) GetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, int32 nPreset, out BSTR bstrPresetTitle) GetPresetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out int32 pnPresetCount) GetPresetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, int32 nPreset) SetCurrentPreset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out int32 pnPreset) GetCurrentPreset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, HWND hwndOwner) DisplayPropertyPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, BOOL fFullScreen) GoFullscreen;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects self, out TimedLevel pLevels) RenderFullScreen;
			}
		}
		[CRepr]
		public struct IWMPEffects2 : IWMPEffects
		{
			public const new Guid IID = .(0x695386ec, 0xaa3c, 0x4618, 0xa5, 0xe1, 0xdd, 0x9a, 0x8b, 0x98, 0x76, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCore(ref IWMPCore pPlayer) mut => VT.SetCore(ref this, ref pPlayer);
			public HRESULT Create(HWND hwndParent) mut => VT.Create(ref this, hwndParent);
			public HRESULT Destroy() mut => VT.Destroy(ref this);
			public HRESULT NotifyNewMedia(ref IWMPMedia pMedia) mut => VT.NotifyNewMedia(ref this, ref pMedia);
			public HRESULT OnWindowMessage(uint32 msg, WPARAM WParam, LPARAM LParam, out LRESULT plResultParam) mut => VT.OnWindowMessage(ref this, msg, WParam, LParam, out plResultParam);
			public HRESULT RenderWindowed(out TimedLevel pData, BOOL fRequiredRender) mut => VT.RenderWindowed(ref this, out pData, fRequiredRender);

			[CRepr]
			public struct VTable : IWMPEffects.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self, ref IWMPCore pPlayer) SetCore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self, HWND hwndParent) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self, ref IWMPMedia pMedia) NotifyNewMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self, uint32 msg, WPARAM WParam, LPARAM LParam, out LRESULT plResultParam) OnWindowMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPEffects2 self, out TimedLevel pData, BOOL fRequiredRender) RenderWindowed;
			}
		}
		[CRepr]
		public struct IWMPPluginUI : IUnknown
		{
			public const new Guid IID = .(0x4c5e8f9f, 0xad3e, 0x4bf9, 0x97, 0x53, 0xfc, 0xd3, 0x0d, 0x6d, 0x38, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCore(ref IWMPCore pCore) mut => VT.SetCore(ref this, ref pCore);
			public HRESULT Create(HWND hwndParent, out HWND phwndWindow) mut => VT.Create(ref this, hwndParent, out phwndWindow);
			public HRESULT Destroy() mut => VT.Destroy(ref this);
			public HRESULT DisplayPropertyPage(HWND hwndParent) mut => VT.DisplayPropertyPage(ref this, hwndParent);
			public HRESULT GetProperty(PWSTR pwszName, out VARIANT pvarProperty) mut => VT.GetProperty(ref this, pwszName, out pvarProperty);
			public HRESULT SetProperty(PWSTR pwszName, in VARIANT pvarProperty) mut => VT.SetProperty(ref this, pwszName, pvarProperty);
			public HRESULT TranslateAccelerator(out MSG lpmsg) mut => VT.TranslateAccelerator(ref this, out lpmsg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, ref IWMPCore pCore) SetCore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, HWND hwndParent, out HWND phwndWindow) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, HWND hwndParent) DisplayPropertyPage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, PWSTR pwszName, out VARIANT pvarProperty) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, PWSTR pwszName, in VARIANT pvarProperty) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPPluginUI self, out MSG lpmsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IWMPContentContainer : IUnknown
		{
			public const new Guid IID = .(0xad7f4d9c, 0x1a9f, 0x4ed2, 0x98, 0x15, 0xec, 0xc0, 0xb5, 0x8c, 0xb6, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetID(out uint32 pContentID) mut => VT.GetID(ref this, out pContentID);
			public HRESULT GetPrice(BSTR* pbstrPrice) mut => VT.GetPrice(ref this, pbstrPrice);
			public HRESULT ComGetType(BSTR* pbstrType) mut => VT.ComGetType(ref this, pbstrType);
			public HRESULT GetContentCount(out uint32 pcContent) mut => VT.GetContentCount(ref this, out pcContent);
			public HRESULT GetContentPrice(uint32 idxContent, BSTR* pbstrPrice) mut => VT.GetContentPrice(ref this, idxContent, pbstrPrice);
			public HRESULT GetContentID(uint32 idxContent, out uint32 pContentID) mut => VT.GetContentID(ref this, idxContent, out pContentID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, out uint32 pContentID) GetID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, BSTR* pbstrPrice) GetPrice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, BSTR* pbstrType) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, out uint32 pcContent) GetContentCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, uint32 idxContent, BSTR* pbstrPrice) GetContentPrice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainer self, uint32 idxContent, out uint32 pContentID) GetContentID;
			}
		}
		[CRepr]
		public struct IWMPContentContainerList : IUnknown
		{
			public const new Guid IID = .(0xa9937f78, 0x0802, 0x4af8, 0x8b, 0x8d, 0xe3, 0xf0, 0x45, 0xbc, 0x8a, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransactionType(out WMPTransactionType pwmptt) mut => VT.GetTransactionType(ref this, out pwmptt);
			public HRESULT GetContainerCount(out uint32 pcContainer) mut => VT.GetContainerCount(ref this, out pcContainer);
			public HRESULT GetContainer(uint32 idxContainer, IWMPContentContainer** ppContent) mut => VT.GetContainer(ref this, idxContainer, ppContent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainerList self, out WMPTransactionType pwmptt) GetTransactionType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainerList self, out uint32 pcContainer) GetContainerCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentContainerList self, uint32 idxContainer, IWMPContentContainer** ppContent) GetContainer;
			}
		}
		[CRepr]
		public struct IWMPContentPartnerCallback : IUnknown
		{
			public const new Guid IID = .(0x9e8f7da2, 0x0695, 0x403c, 0xb6, 0x97, 0xda, 0x10, 0xfa, 0xfa, 0xa6, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify(WMPCallbackNotification type, ref VARIANT pContext) mut => VT.Notify(ref this, type, ref pContext);
			public HRESULT BuyComplete(HRESULT hrResult, uint32 dwBuyCookie) mut => VT.BuyComplete(ref this, hrResult, dwBuyCookie);
			public HRESULT DownloadTrack(uint32 cookie, BSTR bstrTrackURL, uint32 dwServiceTrackID, BSTR bstrDownloadParams, HRESULT hrDownload) mut => VT.DownloadTrack(ref this, cookie, bstrTrackURL, dwServiceTrackID, bstrDownloadParams, hrDownload);
			public HRESULT GetCatalogVersion(out uint32 pdwVersion, out uint32 pdwSchemaVersion, out uint32 plcid) mut => VT.GetCatalogVersion(ref this, out pdwVersion, out pdwSchemaVersion, out plcid);
			public HRESULT UpdateDeviceComplete(BSTR bstrDeviceName) mut => VT.UpdateDeviceComplete(ref this, bstrDeviceName);
			public HRESULT ChangeView(BSTR bstrType, BSTR bstrID, BSTR bstrFilter) mut => VT.ChangeView(ref this, bstrType, bstrID, bstrFilter);
			public HRESULT AddListContents(uint32 dwListCookie, uint32 cItems, uint32* prgItems) mut => VT.AddListContents(ref this, dwListCookie, cItems, prgItems);
			public HRESULT ListContentsComplete(uint32 dwListCookie, HRESULT hrSuccess) mut => VT.ListContentsComplete(ref this, dwListCookie, hrSuccess);
			public HRESULT SendMessageComplete(BSTR bstrMsg, BSTR bstrParam, BSTR bstrResult) mut => VT.SendMessageComplete(ref this, bstrMsg, bstrParam, bstrResult);
			public HRESULT GetContentIDsInLibrary(out uint32 pcContentIDs, uint32** pprgIDs) mut => VT.GetContentIDsInLibrary(ref this, out pcContentIDs, pprgIDs);
			public HRESULT RefreshLicenseComplete(uint32 dwCookie, uint32 contentID, HRESULT hrRefresh) mut => VT.RefreshLicenseComplete(ref this, dwCookie, contentID, hrRefresh);
			public HRESULT ShowPopup(int32 lIndex, BSTR bstrParameters) mut => VT.ShowPopup(ref this, lIndex, bstrParameters);
			public HRESULT VerifyPermissionComplete(BSTR bstrPermission, ref VARIANT pContext, HRESULT hrPermission) mut => VT.VerifyPermissionComplete(ref this, bstrPermission, ref pContext, hrPermission);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, WMPCallbackNotification type, ref VARIANT pContext) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, HRESULT hrResult, uint32 dwBuyCookie) BuyComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, uint32 cookie, BSTR bstrTrackURL, uint32 dwServiceTrackID, BSTR bstrDownloadParams, HRESULT hrDownload) DownloadTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, out uint32 pdwVersion, out uint32 pdwSchemaVersion, out uint32 plcid) GetCatalogVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, BSTR bstrDeviceName) UpdateDeviceComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, BSTR bstrType, BSTR bstrID, BSTR bstrFilter) ChangeView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, uint32 dwListCookie, uint32 cItems, uint32* prgItems) AddListContents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, uint32 dwListCookie, HRESULT hrSuccess) ListContentsComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, BSTR bstrMsg, BSTR bstrParam, BSTR bstrResult) SendMessageComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, out uint32 pcContentIDs, uint32** pprgIDs) GetContentIDsInLibrary;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, uint32 dwCookie, uint32 contentID, HRESULT hrRefresh) RefreshLicenseComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, int32 lIndex, BSTR bstrParameters) ShowPopup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartnerCallback self, BSTR bstrPermission, ref VARIANT pContext, HRESULT hrPermission) VerifyPermissionComplete;
			}
		}
		[CRepr]
		public struct IWMPContentPartner : IUnknown
		{
			public const new Guid IID = .(0x55455073, 0x41b5, 0x4e75, 0x87, 0xb8, 0xf1, 0x3b, 0xdb, 0x29, 0x1d, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCallback(IWMPContentPartnerCallback* pCallback) mut => VT.SetCallback(ref this, pCallback);
			public HRESULT Notify(WMPPartnerNotification type, ref VARIANT pContext) mut => VT.Notify(ref this, type, ref pContext);
			public HRESULT GetItemInfo(BSTR bstrInfoName, ref VARIANT pContext, out VARIANT pData) mut => VT.GetItemInfo(ref this, bstrInfoName, ref pContext, out pData);
			public HRESULT GetContentPartnerInfo(BSTR bstrInfoName, out VARIANT pData) mut => VT.GetContentPartnerInfo(ref this, bstrInfoName, out pData);
			public HRESULT GetCommands(BSTR location, ref VARIANT pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* prgItemIDs, out uint32 pcItemIDs, WMPContextMenuInfo** pprgItems) mut => VT.GetCommands(ref this, location, ref pLocationContext, itemLocation, cItemIDs, prgItemIDs, out pcItemIDs, pprgItems);
			public HRESULT InvokeCommand(uint32 dwCommandID, BSTR location, ref VARIANT pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* rgItemIDs) mut => VT.InvokeCommand(ref this, dwCommandID, location, ref pLocationContext, itemLocation, cItemIDs, rgItemIDs);
			public HRESULT CanBuySilent(IWMPContentContainerList* pInfo, BSTR* pbstrTotalPrice, out int16 pSilentOK) mut => VT.CanBuySilent(ref this, pInfo, pbstrTotalPrice, out pSilentOK);
			public HRESULT Buy(IWMPContentContainerList* pInfo, uint32 cookie) mut => VT.Buy(ref this, pInfo, cookie);
			public HRESULT GetStreamingURL(WMPStreamingType st, ref VARIANT pStreamContext, BSTR* pbstrURL) mut => VT.GetStreamingURL(ref this, st, ref pStreamContext, pbstrURL);
			public HRESULT Download(IWMPContentContainerList* pInfo, uint32 cookie) mut => VT.Download(ref this, pInfo, cookie);
			public HRESULT DownloadTrackComplete(HRESULT hrResult, uint32 contentID, BSTR downloadTrackParam) mut => VT.DownloadTrackComplete(ref this, hrResult, contentID, downloadTrackParam);
			public HRESULT RefreshLicense(uint32 dwCookie, int16 fLocal, BSTR bstrURL, WMPStreamingType type, uint32 contentID, BSTR bstrRefreshReason, ref VARIANT pReasonContext) mut => VT.RefreshLicense(ref this, dwCookie, fLocal, bstrURL, type, contentID, bstrRefreshReason, ref pReasonContext);
			public HRESULT GetCatalogURL(uint32 dwCatalogVersion, uint32 dwCatalogSchemaVersion, uint32 catalogLCID, out uint32 pdwNewCatalogVersion, BSTR* pbstrCatalogURL, out VARIANT pExpirationDate) mut => VT.GetCatalogURL(ref this, dwCatalogVersion, dwCatalogSchemaVersion, catalogLCID, out pdwNewCatalogVersion, pbstrCatalogURL, out pExpirationDate);
			public HRESULT GetTemplate(WMPTaskType task, BSTR location, ref VARIANT pContext, BSTR clickLocation, ref VARIANT pClickContext, BSTR bstrFilter, BSTR bstrViewParams, BSTR* pbstrTemplateURL, out WMPTemplateSize pTemplateSize) mut => VT.GetTemplate(ref this, task, location, ref pContext, clickLocation, ref pClickContext, bstrFilter, bstrViewParams, pbstrTemplateURL, out pTemplateSize);
			public HRESULT UpdateDevice(BSTR bstrDeviceName) mut => VT.UpdateDevice(ref this, bstrDeviceName);
			public HRESULT GetListContents(BSTR location, ref VARIANT pContext, BSTR bstrListType, BSTR bstrParams, uint32 dwListCookie) mut => VT.GetListContents(ref this, location, ref pContext, bstrListType, bstrParams, dwListCookie);
			public HRESULT Login(BLOB userInfo, BLOB pwdInfo, int16 fUsedCachedCreds, int16 fOkToCache) mut => VT.Login(ref this, userInfo, pwdInfo, fUsedCachedCreds, fOkToCache);
			public HRESULT Authenticate(BLOB userInfo, BLOB pwdInfo) mut => VT.Authenticate(ref this, userInfo, pwdInfo);
			public HRESULT Logout() mut => VT.Logout(ref this);
			public HRESULT SendMessage(BSTR bstrMsg, BSTR bstrParam) mut => VT.SendMessage(ref this, bstrMsg, bstrParam);
			public HRESULT StationEvent(BSTR bstrStationEventType, uint32 StationId, uint32 PlaylistIndex, uint32 TrackID, BSTR TrackData, uint32 dwSecondsPlayed) mut => VT.StationEvent(ref this, bstrStationEventType, StationId, PlaylistIndex, TrackID, TrackData, dwSecondsPlayed);
			public HRESULT CompareContainerListPrices(IWMPContentContainerList* pListBase, IWMPContentContainerList* pListCompare, out int32 pResult) mut => VT.CompareContainerListPrices(ref this, pListBase, pListCompare, out pResult);
			public HRESULT VerifyPermission(BSTR bstrPermission, ref VARIANT pContext) mut => VT.VerifyPermission(ref this, bstrPermission, ref pContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, IWMPContentPartnerCallback* pCallback) SetCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, WMPPartnerNotification type, ref VARIANT pContext) Notify;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrInfoName, ref VARIANT pContext, out VARIANT pData) GetItemInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrInfoName, out VARIANT pData) GetContentPartnerInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR location, ref VARIANT pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* prgItemIDs, out uint32 pcItemIDs, WMPContextMenuInfo** pprgItems) GetCommands;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, uint32 dwCommandID, BSTR location, ref VARIANT pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* rgItemIDs) InvokeCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, IWMPContentContainerList* pInfo, BSTR* pbstrTotalPrice, out int16 pSilentOK) CanBuySilent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, IWMPContentContainerList* pInfo, uint32 cookie) Buy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, WMPStreamingType st, ref VARIANT pStreamContext, BSTR* pbstrURL) GetStreamingURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, IWMPContentContainerList* pInfo, uint32 cookie) Download;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, HRESULT hrResult, uint32 contentID, BSTR downloadTrackParam) DownloadTrackComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, uint32 dwCookie, int16 fLocal, BSTR bstrURL, WMPStreamingType type, uint32 contentID, BSTR bstrRefreshReason, ref VARIANT pReasonContext) RefreshLicense;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, uint32 dwCatalogVersion, uint32 dwCatalogSchemaVersion, uint32 catalogLCID, out uint32 pdwNewCatalogVersion, BSTR* pbstrCatalogURL, out VARIANT pExpirationDate) GetCatalogURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, WMPTaskType task, BSTR location, ref VARIANT pContext, BSTR clickLocation, ref VARIANT pClickContext, BSTR bstrFilter, BSTR bstrViewParams, BSTR* pbstrTemplateURL, out WMPTemplateSize pTemplateSize) GetTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrDeviceName) UpdateDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR location, ref VARIANT pContext, BSTR bstrListType, BSTR bstrParams, uint32 dwListCookie) GetListContents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BLOB userInfo, BLOB pwdInfo, int16 fUsedCachedCreds, int16 fOkToCache) Login;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BLOB userInfo, BLOB pwdInfo) Authenticate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self) Logout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrMsg, BSTR bstrParam) SendMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrStationEventType, uint32 StationId, uint32 PlaylistIndex, uint32 TrackID, BSTR TrackData, uint32 dwSecondsPlayed) StationEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, IWMPContentContainerList* pListBase, IWMPContentContainerList* pListCompare, out int32 pResult) CompareContainerListPrices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPContentPartner self, BSTR bstrPermission, ref VARIANT pContext) VerifyPermission;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService : IUnknown
		{
			public const new Guid IID = .(0x376055f8, 0x2a59, 0x4a73, 0x95, 0x01, 0xdc, 0xa5, 0x27, 0x3a, 0x7a, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT allowPlay(HWND hwnd, ref IWMPMedia pMedia, out BOOL pfAllowPlay) mut => VT.allowPlay(ref this, hwnd, ref pMedia, out pfAllowPlay);
			public HRESULT allowCDBurn(HWND hwnd, ref IWMPPlaylist pPlaylist, out BOOL pfAllowBurn) mut => VT.allowCDBurn(ref this, hwnd, ref pPlaylist, out pfAllowBurn);
			public HRESULT allowPDATransfer(HWND hwnd, ref IWMPPlaylist pPlaylist, out BOOL pfAllowTransfer) mut => VT.allowPDATransfer(ref this, hwnd, ref pPlaylist, out pfAllowTransfer);
			public HRESULT startBackgroundProcessing(HWND hwnd) mut => VT.startBackgroundProcessing(ref this, hwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService self, HWND hwnd, ref IWMPMedia pMedia, out BOOL pfAllowPlay) allowPlay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService self, HWND hwnd, ref IWMPPlaylist pPlaylist, out BOOL pfAllowBurn) allowCDBurn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService self, HWND hwnd, ref IWMPPlaylist pPlaylist, out BOOL pfAllowTransfer) allowPDATransfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService self, HWND hwnd) startBackgroundProcessing;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionServiceCallback : IUnknown
		{
			public const new Guid IID = .(0xdd01d127, 0x2dc2, 0x4c3a, 0x87, 0x6e, 0x63, 0x31, 0x20, 0x79, 0xf9, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT onComplete(HRESULT hrResult) mut => VT.onComplete(ref this, hrResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionServiceCallback self, HRESULT hrResult) onComplete;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService2 : IWMPSubscriptionService
		{
			public const new Guid IID = .(0xa94c120e, 0xd600, 0x4ec6, 0xb0, 0x5e, 0xec, 0x9d, 0x56, 0xd8, 0x4d, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT stopBackgroundProcessing() mut => VT.stopBackgroundProcessing(ref this);
			public HRESULT serviceEvent(WMPSubscriptionServiceEvent event) mut => VT.serviceEvent(ref this, event);
			public HRESULT deviceAvailable(BSTR bstrDeviceName, ref IWMPSubscriptionServiceCallback pCB) mut => VT.deviceAvailable(ref this, bstrDeviceName, ref pCB);
			public HRESULT prepareForSync(BSTR bstrFilename, BSTR bstrDeviceName, ref IWMPSubscriptionServiceCallback pCB) mut => VT.prepareForSync(ref this, bstrFilename, bstrDeviceName, ref pCB);

			[CRepr]
			public struct VTable : IWMPSubscriptionService.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService2 self) stopBackgroundProcessing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService2 self, WMPSubscriptionServiceEvent event) serviceEvent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService2 self, BSTR bstrDeviceName, ref IWMPSubscriptionServiceCallback pCB) deviceAvailable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPSubscriptionService2 self, BSTR bstrFilename, BSTR bstrDeviceName, ref IWMPSubscriptionServiceCallback pCB) prepareForSync;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem : IDispatch
		{
			public const new Guid IID = .(0xc9470e8e, 0x3f6b, 0x46a9, 0xa0, 0xa9, 0x45, 0x28, 0x15, 0xc3, 0x42, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_sourceURL(out BSTR pbstrURL) mut => VT.get_sourceURL(ref this, out pbstrURL);
			public HRESULT get_size(out int32 plSize) mut => VT.get_size(ref this, out plSize);
			public HRESULT get_type(out BSTR pbstrType) mut => VT.get_type(ref this, out pbstrType);
			public HRESULT get_progress(out int32 plProgress) mut => VT.get_progress(ref this, out plProgress);
			public HRESULT get_downloadState(out WMPSubscriptionDownloadState pwmpsdls) mut => VT.get_downloadState(ref this, out pwmpsdls);
			public HRESULT pause() mut => VT.pause(ref this);
			public HRESULT resume() mut => VT.resume(ref this);
			public HRESULT cancel() mut => VT.cancel(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self, out BSTR pbstrURL) get_sourceURL;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self, out int32 plSize) get_size;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self, out BSTR pbstrType) get_type;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self, out int32 plProgress) get_progress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self, out WMPSubscriptionDownloadState pwmpsdls) get_downloadState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self) pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self) resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem self) cancel;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem2 : IWMPDownloadItem
		{
			public const new Guid IID = .(0x9fbb3336, 0x6da3, 0x479d, 0xb8, 0xff, 0x67, 0xd4, 0x6e, 0x20, 0xa9, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getItemInfo(BSTR bstrItemName, out BSTR pbstrVal) mut => VT.getItemInfo(ref this, bstrItemName, out pbstrVal);

			[CRepr]
			public struct VTable : IWMPDownloadItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadItem2 self, BSTR bstrItemName, out BSTR pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPDownloadCollection : IDispatch
		{
			public const new Guid IID = .(0x0a319c7f, 0x85f9, 0x436c, 0xb8, 0x8e, 0x82, 0xfd, 0x88, 0x00, 0x0e, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_id(out int32 plId) mut => VT.get_id(ref this, out plId);
			public HRESULT get_count(out int32 plCount) mut => VT.get_count(ref this, out plCount);
			public HRESULT item(int32 lItem, out IWMPDownloadItem2* ppDownload) mut => VT.item(ref this, lItem, out ppDownload);
			public HRESULT startDownload(BSTR bstrSourceURL, BSTR bstrType, out IWMPDownloadItem2* ppDownload) mut => VT.startDownload(ref this, bstrSourceURL, bstrType, out ppDownload);
			public HRESULT removeItem(int32 lItem) mut => VT.removeItem(ref this, lItem);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self, out int32 plId) get_id;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self, out int32 plCount) get_count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self, int32 lItem, out IWMPDownloadItem2* ppDownload) item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self, BSTR bstrSourceURL, BSTR bstrType, out IWMPDownloadItem2* ppDownload) startDownload;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self, int32 lItem) removeItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadCollection self) Clear;
			}
		}
		[CRepr]
		public struct IWMPDownloadManager : IDispatch
		{
			public const new Guid IID = .(0xe15e9ad1, 0x8f20, 0x4cc4, 0x9e, 0xc7, 0x1a, 0x32, 0x8c, 0xa8, 0x6a, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getDownloadCollection(int32 lCollectionId, out IWMPDownloadCollection* ppCollection) mut => VT.getDownloadCollection(ref this, lCollectionId, out ppCollection);
			public HRESULT createDownloadCollection(out IWMPDownloadCollection* ppCollection) mut => VT.createDownloadCollection(ref this, out ppCollection);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadManager self, int32 lCollectionId, out IWMPDownloadCollection* ppCollection) getDownloadCollection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWMPDownloadManager self, out IWMPDownloadCollection* ppCollection) createDownloadCollection;
			}
		}
		
	}
}
