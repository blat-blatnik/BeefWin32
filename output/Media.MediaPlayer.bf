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
		
		[AllowDuplicates]
		public enum WMPOpenState : int32
		{
			wmposUndefined = 0,
			wmposPlaylistChanging = 1,
			wmposPlaylistLocating = 2,
			wmposPlaylistConnecting = 3,
			wmposPlaylistLoading = 4,
			wmposPlaylistOpening = 5,
			wmposPlaylistOpenNoMedia = 6,
			wmposPlaylistChanged = 7,
			wmposMediaChanging = 8,
			wmposMediaLocating = 9,
			wmposMediaConnecting = 10,
			wmposMediaLoading = 11,
			wmposMediaOpening = 12,
			wmposMediaOpen = 13,
			wmposBeginCodecAcquisition = 14,
			wmposEndCodecAcquisition = 15,
			wmposBeginLicenseAcquisition = 16,
			wmposEndLicenseAcquisition = 17,
			wmposBeginIndividualization = 18,
			wmposEndIndividualization = 19,
			wmposMediaWaiting = 20,
			wmposOpeningUnknownURL = 21,
		}
		[AllowDuplicates]
		public enum WMPPlayState : int32
		{
			wmppsUndefined = 0,
			wmppsStopped = 1,
			wmppsPaused = 2,
			wmppsPlaying = 3,
			wmppsScanForward = 4,
			wmppsScanReverse = 5,
			wmppsBuffering = 6,
			wmppsWaiting = 7,
			wmppsMediaEnded = 8,
			wmppsTransitioning = 9,
			wmppsReady = 10,
			wmppsReconnecting = 11,
			wmppsLast = 12,
		}
		[AllowDuplicates]
		public enum WMPPlaylistChangeEventType : int32
		{
			wmplcUnknown = 0,
			wmplcClear = 1,
			wmplcInfoChange = 2,
			wmplcMove = 3,
			wmplcDelete = 4,
			wmplcInsert = 5,
			wmplcAppend = 6,
			wmplcPrivate = 7,
			wmplcNameChange = 8,
			wmplcMorph = 9,
			wmplcSort = 10,
			wmplcLast = 11,
		}
		[AllowDuplicates]
		public enum WMPSyncState : int32
		{
			wmpssUnknown = 0,
			wmpssSynchronizing = 1,
			wmpssStopped = 2,
			wmpssEstimating = 3,
			wmpssLast = 4,
		}
		[AllowDuplicates]
		public enum WMPDeviceStatus : int32
		{
			wmpdsUnknown = 0,
			wmpdsPartnershipExists = 1,
			wmpdsPartnershipDeclined = 2,
			wmpdsPartnershipAnother = 3,
			wmpdsManualDevice = 4,
			wmpdsNewDevice = 5,
			wmpdsLast = 6,
		}
		[AllowDuplicates]
		public enum WMPRipState : int32
		{
			wmprsUnknown = 0,
			wmprsRipping = 1,
			wmprsStopped = 2,
		}
		[AllowDuplicates]
		public enum WMPBurnFormat : int32
		{
			wmpbfAudioCD = 0,
			wmpbfDataCD = 1,
		}
		[AllowDuplicates]
		public enum WMPBurnState : int32
		{
			wmpbsUnknown = 0,
			wmpbsBusy = 1,
			wmpbsReady = 2,
			wmpbsWaitingForDisc = 3,
			wmpbsRefreshStatusPending = 4,
			wmpbsPreparingToBurn = 5,
			wmpbsBurning = 6,
			wmpbsStopped = 7,
			wmpbsErasing = 8,
			wmpbsDownloading = 9,
		}
		[AllowDuplicates]
		public enum WMPStringCollectionChangeEventType : int32
		{
			wmpsccetUnknown = 0,
			wmpsccetInsert = 1,
			wmpsccetChange = 2,
			wmpsccetDelete = 3,
			wmpsccetClear = 4,
			wmpsccetBeginUpdates = 5,
			wmpsccetEndUpdates = 6,
		}
		[AllowDuplicates]
		public enum WMPLibraryType : int32
		{
			wmpltUnknown = 0,
			wmpltAll = 1,
			wmpltLocal = 2,
			wmpltRemote = 3,
			wmpltDisc = 4,
			wmpltPortableDevice = 5,
		}
		[AllowDuplicates]
		public enum WMPFolderScanState : int32
		{
			wmpfssUnknown = 0,
			wmpfssScanning = 1,
			wmpfssUpdating = 2,
			wmpfssStopped = 3,
		}
		[AllowDuplicates]
		public enum WMPServices_StreamState : int32
		{
			WMPServices_StreamState_Stop = 0,
			WMPServices_StreamState_Pause = 1,
			WMPServices_StreamState_Play = 2,
		}
		[AllowDuplicates]
		public enum WMPPlugin_Caps : int32
		{
			WMPPlugin_Caps_CannotConvertFormats = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_BACKGROUNDSYNC_ACTION : int32
		{
			FBSA_DISABLE = 0,
			FBSA_ENABLE = 1,
			FBSA_RUNNOW = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_BACKGROUNDSYNC_STATUS : int32
		{
			FBSS_DISABLED = 0,
			FBSS_ENABLED = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_EVENTS_SCOPE : int32
		{
			FES_ALL = 0,
			FES_SELF_ONLY = 1,
			FES_SELF_AND_CHILDREN_ONLY = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_EVENTS_MASK : int32
		{
			FEM_FOLDEREVENTS = 1,
			FEM_FEEDEVENTS = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_SORT_PROPERTY : int32
		{
			FXSP_NONE = 0,
			FXSP_PUBDATE = 1,
			FXSP_DOWNLOADTIME = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_SORT_ORDER : int32
		{
			FXSO_NONE = 0,
			FXSO_ASCENDING = 1,
			FXSO_DESCENDING = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_FILTER_FLAGS : int32
		{
			FXFF_ALL = 0,
			FXFF_UNREAD = 1,
			FXFF_READ = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_INCLUDE_FLAGS : int32
		{
			FXIF_NONE = 0,
			FXIF_CF_EXTENSIONS = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_DOWNLOAD_STATUS : int32
		{
			FDS_NONE = 0,
			FDS_PENDING = 1,
			FDS_DOWNLOADING = 2,
			FDS_DOWNLOADED = 3,
			FDS_DOWNLOAD_FAILED = 4,
		}
		[AllowDuplicates]
		public enum FEEDS_SYNC_SETTING : int32
		{
			FSS_DEFAULT = 0,
			FSS_INTERVAL = 1,
			FSS_MANUAL = 2,
			FSS_SUGGESTED = 3,
		}
		[AllowDuplicates]
		public enum FEEDS_DOWNLOAD_ERROR : int32
		{
			FDE_NONE = 0,
			FDE_DOWNLOAD_FAILED = 1,
			FDE_INVALID_FEED_FORMAT = 2,
			FDE_NORMALIZATION_FAILED = 3,
			FDE_PERSISTENCE_FAILED = 4,
			FDE_DOWNLOAD_BLOCKED = 5,
			FDE_CANCELED = 6,
			FDE_UNSUPPORTED_AUTH = 7,
			FDE_BACKGROUND_DOWNLOAD_DISABLED = 8,
			FDE_NOT_EXIST = 9,
			FDE_UNSUPPORTED_MSXML = 10,
			FDE_UNSUPPORTED_DTD = 11,
			FDE_DOWNLOAD_SIZE_LIMIT_EXCEEDED = 12,
			FDE_ACCESS_DENIED = 13,
			FDE_AUTH_FAILED = 14,
			FDE_INVALID_AUTH = 15,
		}
		[AllowDuplicates]
		public enum FEEDS_EVENTS_ITEM_COUNT_FLAGS : int32
		{
			FEICF_READ_ITEM_COUNT_CHANGED = 1,
			FEICF_UNREAD_ITEM_COUNT_CHANGED = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_ERROR_CODE : int32
		{
			FEC_E_ERRORBASE = -1073479168,
			FEC_E_INVALIDMSXMLPROPERTY = -1073479168,
			FEC_E_DOWNLOADSIZELIMITEXCEEDED = -1073479167,
		}
		[AllowDuplicates]
		public enum PlayerState : int32
		{
			stop_state = 0,
			pause_state = 1,
			play_state = 2,
		}
		[AllowDuplicates]
		public enum WMPPartnerNotification : int32
		{
			wmpsnBackgroundProcessingBegin = 1,
			wmpsnBackgroundProcessingEnd = 2,
			wmpsnCatalogDownloadFailure = 3,
			wmpsnCatalogDownloadComplete = 4,
		}
		[AllowDuplicates]
		public enum WMPCallbackNotification : int32
		{
			wmpcnLoginStateChange = 1,
			wmpcnAuthResult = 2,
			wmpcnLicenseUpdated = 3,
			wmpcnNewCatalogAvailable = 4,
			wmpcnNewPluginAvailable = 5,
			wmpcnDisableRadioSkipping = 6,
		}
		[AllowDuplicates]
		public enum WMPTaskType : int32
		{
			wmpttBrowse = 1,
			wmpttSync = 2,
			wmpttBurn = 3,
			wmpttCurrent = 4,
		}
		[AllowDuplicates]
		public enum WMPTransactionType : int32
		{
			wmpttNoTransaction = 0,
			wmpttDownload = 1,
			wmpttBuy = 2,
		}
		[AllowDuplicates]
		public enum WMPTemplateSize : int32
		{
			wmptsSmall = 0,
			wmptsMedium = 1,
			wmptsLarge = 2,
		}
		[AllowDuplicates]
		public enum WMPStreamingType : int32
		{
			wmpstUnknown = 0,
			wmpstMusic = 1,
			wmpstVideo = 2,
			wmpstRadio = 3,
		}
		[AllowDuplicates]
		public enum WMPAccountType : int32
		{
			wmpatBuyOnly = 1,
			wmpatSubscription = 2,
			wmpatJanus = 3,
		}
		[AllowDuplicates]
		public enum WMPSubscriptionServiceEvent : int32
		{
			wmpsseCurrentBegin = 1,
			wmpsseCurrentEnd = 2,
			wmpsseFullBegin = 3,
			wmpsseFullEnd = 4,
		}
		[AllowDuplicates]
		public enum WMPSubscriptionDownloadState : int32
		{
			wmpsdlsDownloading = 0,
			wmpsdlsPaused = 1,
			wmpsdlsProcessing = 2,
			wmpsdlsCompleted = 3,
			wmpsdlsCancelled = 4,
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
		[CRepr]
		public struct WMP_WMDM_METADATA_ROUND_TRIP_PC2DEVICE
		{
			public uint32 dwChangesSinceTransactionID;
			public uint32 dwResultSetStartingIndex;
		}
		[CRepr]
		public struct WMP_WMDM_METADATA_ROUND_TRIP_DEVICE2PC
		{
			public uint32 dwCurrentTransactionID;
			public uint32 dwReturnedObjectCount;
			public uint32 dwUnretrievedObjectCount;
			public uint32 dwDeletedObjectStartingOffset;
			public uint32 dwFlags;
			public char16[] wsObjectPathnameList;
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
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPErrorItem *self, int32* phr) get_errorCode;
				public function HRESULT(IWMPErrorItem *self, BSTR* pbstrDescription) get_errorDescription;
				public function HRESULT(IWMPErrorItem *self, VARIANT* pvarContext) get_errorContext;
				public function HRESULT(IWMPErrorItem *self, int32* plRemedy) get_remedy;
				public function HRESULT(IWMPErrorItem *self, BSTR* pbstrCustomUrl) get_customUrl;
			}
		}
		[CRepr]
		public struct IWMPError : IDispatch
		{
			public const new Guid IID = .(0xa12dcf7d, 0x14ab, 0x4c1b, 0xa8, 0xcd, 0x63, 0x90, 0x9f, 0x06, 0x02, 0x5b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPError *self) clearErrorQueue;
				public function HRESULT(IWMPError *self, int32* plNumErrors) get_errorCount;
				public function HRESULT(IWMPError *self, int32 dwIndex, IWMPErrorItem** ppErrorItem) get_item;
				public function HRESULT(IWMPError *self) webHelp;
			}
		}
		[CRepr]
		public struct IWMPMedia : IDispatch
		{
			public const new Guid IID = .(0x94d55e95, 0x3fac, 0x11d3, 0xb1, 0x55, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPMedia *self, IWMPMedia* pIWMPMedia, int16* pvbool) get_isIdentical;
				public function HRESULT(IWMPMedia *self, BSTR* pbstrSourceURL) get_sourceURL;
				public function HRESULT(IWMPMedia *self, BSTR* pbstrName) get_name;
				public function HRESULT(IWMPMedia *self, BSTR bstrName) put_name;
				public function HRESULT(IWMPMedia *self, int32* pWidth) get_imageSourceWidth;
				public function HRESULT(IWMPMedia *self, int32* pHeight) get_imageSourceHeight;
				public function HRESULT(IWMPMedia *self, int32* pMarkerCount) get_markerCount;
				public function HRESULT(IWMPMedia *self, int32 MarkerNum, double* pMarkerTime) getMarkerTime;
				public function HRESULT(IWMPMedia *self, int32 MarkerNum, BSTR* pbstrMarkerName) getMarkerName;
				public function HRESULT(IWMPMedia *self, double* pDuration) get_duration;
				public function HRESULT(IWMPMedia *self, BSTR* pbstrDuration) get_durationString;
				public function HRESULT(IWMPMedia *self, int32* plCount) get_attributeCount;
				public function HRESULT(IWMPMedia *self, int32 lIndex, BSTR* pbstrItemName) getAttributeName;
				public function HRESULT(IWMPMedia *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
				public function HRESULT(IWMPMedia *self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
				public function HRESULT(IWMPMedia *self, int32 lAtom, BSTR* pbstrVal) getItemInfoByAtom;
				public function HRESULT(IWMPMedia *self, IWMPPlaylist* pPlaylist, int16* pvarfIsMemberOf) isMemberOf;
				public function HRESULT(IWMPMedia *self, BSTR bstrItemName, int16* pvarfIsReadOnly) isReadOnlyItem;
			}
		}
		[CRepr]
		public struct IWMPControls : IDispatch
		{
			public const new Guid IID = .(0x74c09e02, 0xf828, 0x11d2, 0xa7, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x6e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPControls *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public function HRESULT(IWMPControls *self) play;
				public function HRESULT(IWMPControls *self) stop;
				public function HRESULT(IWMPControls *self) pause;
				public function HRESULT(IWMPControls *self) fastForward;
				public function HRESULT(IWMPControls *self) fastReverse;
				public function HRESULT(IWMPControls *self, double* pdCurrentPosition) get_currentPosition;
				public function HRESULT(IWMPControls *self, double dCurrentPosition) put_currentPosition;
				public function HRESULT(IWMPControls *self, BSTR* pbstrCurrentPosition) get_currentPositionString;
				public function HRESULT(IWMPControls *self) next;
				public function HRESULT(IWMPControls *self) previous;
				public function HRESULT(IWMPControls *self, IWMPMedia** ppIWMPMedia) get_currentItem;
				public function HRESULT(IWMPControls *self, IWMPMedia* pIWMPMedia) put_currentItem;
				public function HRESULT(IWMPControls *self, int32* plMarker) get_currentMarker;
				public function HRESULT(IWMPControls *self, int32 lMarker) put_currentMarker;
				public function HRESULT(IWMPControls *self, IWMPMedia* pIWMPMedia) playItem;
			}
		}
		[CRepr]
		public struct IWMPSettings : IDispatch
		{
			public const new Guid IID = .(0x9104d1ab, 0x80c9, 0x4fed, 0xab, 0xf0, 0x2e, 0x64, 0x17, 0xa6, 0xdf, 0x14);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPSettings *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public function HRESULT(IWMPSettings *self, int16* pfAutoStart) get_autoStart;
				public function HRESULT(IWMPSettings *self, int16 fAutoStart) put_autoStart;
				public function HRESULT(IWMPSettings *self, BSTR* pbstrBaseURL) get_baseURL;
				public function HRESULT(IWMPSettings *self, BSTR bstrBaseURL) put_baseURL;
				public function HRESULT(IWMPSettings *self, BSTR* pbstrDefaultFrame) get_defaultFrame;
				public function HRESULT(IWMPSettings *self, BSTR bstrDefaultFrame) put_defaultFrame;
				public function HRESULT(IWMPSettings *self, int16* pfInvokeURLs) get_invokeURLs;
				public function HRESULT(IWMPSettings *self, int16 fInvokeURLs) put_invokeURLs;
				public function HRESULT(IWMPSettings *self, int16* pfMute) get_mute;
				public function HRESULT(IWMPSettings *self, int16 fMute) put_mute;
				public function HRESULT(IWMPSettings *self, int32* plCount) get_playCount;
				public function HRESULT(IWMPSettings *self, int32 lCount) put_playCount;
				public function HRESULT(IWMPSettings *self, double* pdRate) get_rate;
				public function HRESULT(IWMPSettings *self, double dRate) put_rate;
				public function HRESULT(IWMPSettings *self, int32* plBalance) get_balance;
				public function HRESULT(IWMPSettings *self, int32 lBalance) put_balance;
				public function HRESULT(IWMPSettings *self, int32* plVolume) get_volume;
				public function HRESULT(IWMPSettings *self, int32 lVolume) put_volume;
				public function HRESULT(IWMPSettings *self, BSTR bstrMode, int16* pvarfMode) getMode;
				public function HRESULT(IWMPSettings *self, BSTR bstrMode, int16 varfMode) setMode;
				public function HRESULT(IWMPSettings *self, int16* pfEnableErrorDialogs) get_enableErrorDialogs;
				public function HRESULT(IWMPSettings *self, int16 fEnableErrorDialogs) put_enableErrorDialogs;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption : IDispatch
		{
			public const new Guid IID = .(0x4f2df574, 0xc588, 0x11d3, 0x9e, 0xd0, 0x00, 0xc0, 0x4f, 0xb6, 0xe9, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMIStyle) get_SAMIStyle;
				public function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMIStyle) put_SAMIStyle;
				public function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMILang) get_SAMILang;
				public function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMILang) put_SAMILang;
				public function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMIFileName) get_SAMIFileName;
				public function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMIFileName) put_SAMIFileName;
				public function HRESULT(IWMPClosedCaption *self, BSTR* pbstrCaptioningID) get_captioningId;
				public function HRESULT(IWMPClosedCaption *self, BSTR bstrCaptioningID) put_captioningId;
			}
		}
		[CRepr]
		public struct IWMPPlaylist : IDispatch
		{
			public const new Guid IID = .(0xd5f0f4f1, 0x130c, 0x11d3, 0xb1, 0x4e, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPPlaylist *self, int32* plCount) get_count;
				public function HRESULT(IWMPPlaylist *self, BSTR* pbstrName) get_name;
				public function HRESULT(IWMPPlaylist *self, BSTR bstrName) put_name;
				public function HRESULT(IWMPPlaylist *self, int32* plCount) get_attributeCount;
				public function HRESULT(IWMPPlaylist *self, int32 lIndex, BSTR* pbstrAttributeName) get_attributeName;
				public function HRESULT(IWMPPlaylist *self, int32 lIndex, IWMPMedia** ppIWMPMedia) get_item;
				public function HRESULT(IWMPPlaylist *self, BSTR bstrName, BSTR* pbstrVal) getItemInfo;
				public function HRESULT(IWMPPlaylist *self, BSTR bstrName, BSTR bstrValue) setItemInfo;
				public function HRESULT(IWMPPlaylist *self, IWMPPlaylist* pIWMPPlaylist, int16* pvbool) get_isIdentical;
				public function HRESULT(IWMPPlaylist *self) clear;
				public function HRESULT(IWMPPlaylist *self, int32 lIndex, IWMPMedia* pIWMPMedia) insertItem;
				public function HRESULT(IWMPPlaylist *self, IWMPMedia* pIWMPMedia) appendItem;
				public function HRESULT(IWMPPlaylist *self, IWMPMedia* pIWMPMedia) removeItem;
				public function HRESULT(IWMPPlaylist *self, int32 lIndexOld, int32 lIndexNew) moveItem;
			}
		}
		[CRepr]
		public struct IWMPCdrom : IDispatch
		{
			public const new Guid IID = .(0xcfab6e98, 0x8730, 0x11d3, 0xb3, 0x88, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPCdrom *self, BSTR* pbstrDrive) get_driveSpecifier;
				public function HRESULT(IWMPCdrom *self, IWMPPlaylist** ppPlaylist) get_playlist;
				public function HRESULT(IWMPCdrom *self) eject;
			}
		}
		[CRepr]
		public struct IWMPCdromCollection : IDispatch
		{
			public const new Guid IID = .(0xee4c8fe2, 0x34b2, 0x11d3, 0xa3, 0xbf, 0x00, 0x60, 0x97, 0xc9, 0xb3, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPCdromCollection *self, int32* plCount) get_count;
				public function HRESULT(IWMPCdromCollection *self, int32 lIndex, IWMPCdrom** ppItem) item;
				public function HRESULT(IWMPCdromCollection *self, BSTR bstrDriveSpecifier, IWMPCdrom** ppCdrom) getByDriveSpecifier;
			}
		}
		[CRepr]
		public struct IWMPStringCollection : IDispatch
		{
			public const new Guid IID = .(0x4a976298, 0x8c0d, 0x11d3, 0xb3, 0x89, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPStringCollection *self, int32* plCount) get_count;
				public function HRESULT(IWMPStringCollection *self, int32 lIndex, BSTR* pbstrString) item;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection : IDispatch
		{
			public const new Guid IID = .(0x8363bc22, 0xb4b4, 0x4b19, 0x98, 0x9d, 0x1c, 0xd7, 0x65, 0x74, 0x9d, 0xd1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrURL, IWMPMedia** ppItem) add;
				public function HRESULT(IWMPMediaCollection *self, IWMPPlaylist** ppMediaItems) getAll;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrName, IWMPPlaylist** ppMediaItems) getByName;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrGenre, IWMPPlaylist** ppMediaItems) getByGenre;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrAuthor, IWMPPlaylist** ppMediaItems) getByAuthor;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrAlbum, IWMPPlaylist** ppMediaItems) getByAlbum;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrAttribute, BSTR bstrValue, IWMPPlaylist** ppMediaItems) getByAttribute;
				public function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16 varfDeleteFile) remove;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrAttribute, BSTR bstrMediaType, IWMPStringCollection** ppStringCollection) getAttributeStringCollection;
				public function HRESULT(IWMPMediaCollection *self, BSTR bstrItemName, int32* plAtom) getMediaAtom;
				public function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16 varfIsDeleted) setDeleted;
				public function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16* pvarfIsDeleted) isDeleted;
			}
		}
		[CRepr]
		public struct IWMPPlaylistArray : IDispatch
		{
			public const new Guid IID = .(0x679409c0, 0x99f7, 0x11d3, 0x9f, 0xb7, 0x00, 0x10, 0x5a, 0xa6, 0x20, 0xbb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPPlaylistArray *self, int32* plCount) get_count;
				public function HRESULT(IWMPPlaylistArray *self, int32 lIndex, IWMPPlaylist** ppItem) item;
			}
		}
		[CRepr]
		public struct IWMPPlaylistCollection : IDispatch
		{
			public const new Guid IID = .(0x10a13217, 0x23a7, 0x439b, 0xb1, 0xc0, 0xd8, 0x47, 0xc7, 0x9b, 0x77, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPPlaylistCollection *self, BSTR bstrName, IWMPPlaylist** ppItem) newPlaylist;
				public function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylistArray** ppPlaylistArray) getAll;
				public function HRESULT(IWMPPlaylistCollection *self, BSTR bstrName, IWMPPlaylistArray** ppPlaylistArray) getByName;
				public function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem) remove;
				public function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, int16 varfIsDeleted) setDeleted;
				public function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, int16* pvarfIsDeleted) isDeleted;
				public function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, IWMPPlaylist** ppImportedItem) importPlaylist;
			}
		}
		[CRepr]
		public struct IWMPNetwork : IDispatch
		{
			public const new Guid IID = .(0xec21b779, 0xedef, 0x462d, 0xbb, 0xa4, 0xad, 0x9d, 0xde, 0x2b, 0x29, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPNetwork *self, int32* plBandwidth) get_bandWidth;
				public function HRESULT(IWMPNetwork *self, int32* plRecoveredPackets) get_recoveredPackets;
				public function HRESULT(IWMPNetwork *self, BSTR* pbstrSourceProtocol) get_sourceProtocol;
				public function HRESULT(IWMPNetwork *self, int32* plReceivedPackets) get_receivedPackets;
				public function HRESULT(IWMPNetwork *self, int32* plLostPackets) get_lostPackets;
				public function HRESULT(IWMPNetwork *self, int32* plReceptionQuality) get_receptionQuality;
				public function HRESULT(IWMPNetwork *self, int32* plBufferingCount) get_bufferingCount;
				public function HRESULT(IWMPNetwork *self, int32* plBufferingProgress) get_bufferingProgress;
				public function HRESULT(IWMPNetwork *self, int32* plBufferingTime) get_bufferingTime;
				public function HRESULT(IWMPNetwork *self, int32 lBufferingTime) put_bufferingTime;
				public function HRESULT(IWMPNetwork *self, int32* plFrameRate) get_frameRate;
				public function HRESULT(IWMPNetwork *self, int32* plBitRate) get_maxBitRate;
				public function HRESULT(IWMPNetwork *self, int32* plBitRate) get_bitRate;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32* plProxySetting) getProxySettings;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32 lProxySetting) setProxySettings;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR* pbstrProxyName) getProxyName;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR bstrProxyName) setProxyName;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32* lProxyPort) getProxyPort;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32 lProxyPort) setProxyPort;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR* pbstrExceptionList) getProxyExceptionList;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR pbstrExceptionList) setProxyExceptionList;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int16* pfBypassForLocal) getProxyBypassForLocal;
				public function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int16 fBypassForLocal) setProxyBypassForLocal;
				public function HRESULT(IWMPNetwork *self, int32* lMaxBandwidth) get_maxBandwidth;
				public function HRESULT(IWMPNetwork *self, int32 lMaxBandwidth) put_maxBandwidth;
				public function HRESULT(IWMPNetwork *self, int32* plDownloadProgress) get_downloadProgress;
				public function HRESULT(IWMPNetwork *self, int32* plFrameRate) get_encodedFrameRate;
				public function HRESULT(IWMPNetwork *self, int32* plFrames) get_framesSkipped;
			}
		}
		[CRepr]
		public struct IWMPCore : IDispatch
		{
			public const new Guid IID = .(0xd84cca99, 0xcce2, 0x11d2, 0x9e, 0xcc, 0x00, 0x00, 0xf8, 0x08, 0x59, 0x81);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPCore *self) close;
				public function HRESULT(IWMPCore *self, BSTR* pbstrURL) get_URL;
				public function HRESULT(IWMPCore *self, BSTR bstrURL) put_URL;
				public function HRESULT(IWMPCore *self, WMPOpenState* pwmpos) get_openState;
				public function HRESULT(IWMPCore *self, WMPPlayState* pwmpps) get_playState;
				public function HRESULT(IWMPCore *self, IWMPControls** ppControl) get_controls;
				public function HRESULT(IWMPCore *self, IWMPSettings** ppSettings) get_settings;
				public function HRESULT(IWMPCore *self, IWMPMedia** ppMedia) get_currentMedia;
				public function HRESULT(IWMPCore *self, IWMPMedia* pMedia) put_currentMedia;
				public function HRESULT(IWMPCore *self, IWMPMediaCollection** ppMediaCollection) get_mediaCollection;
				public function HRESULT(IWMPCore *self, IWMPPlaylistCollection** ppPlaylistCollection) get_playlistCollection;
				public function HRESULT(IWMPCore *self, BSTR* pbstrVersionInfo) get_versionInfo;
				public function HRESULT(IWMPCore *self, BSTR bstrURL) launchURL;
				public function HRESULT(IWMPCore *self, IWMPNetwork** ppQNI) get_network;
				public function HRESULT(IWMPCore *self, IWMPPlaylist** ppPL) get_currentPlaylist;
				public function HRESULT(IWMPCore *self, IWMPPlaylist* pPL) put_currentPlaylist;
				public function HRESULT(IWMPCore *self, IWMPCdromCollection** ppCdromCollection) get_cdromCollection;
				public function HRESULT(IWMPCore *self, IWMPClosedCaption** ppClosedCaption) get_closedCaption;
				public function HRESULT(IWMPCore *self, int16* pfOnline) get_isOnline;
				public function HRESULT(IWMPCore *self, IWMPError** ppError) get_error;
				public function HRESULT(IWMPCore *self, BSTR* pbstrStatus) get_status;
			}
		}
		[CRepr]
		public struct IWMPPlayer : IWMPCore
		{
			public const new Guid IID = .(0x6bf52a4f, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public function HRESULT(IWMPPlayer *self, int16* pbEnabled) get_enabled;
				public function HRESULT(IWMPPlayer *self, int16 bEnabled) put_enabled;
				public function HRESULT(IWMPPlayer *self, int16* pbFullScreen) get_fullScreen;
				public function HRESULT(IWMPPlayer *self, int16 bFullScreen) put_fullScreen;
				public function HRESULT(IWMPPlayer *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public function HRESULT(IWMPPlayer *self, int16 bEnableContextMenu) put_enableContextMenu;
				public function HRESULT(IWMPPlayer *self, BSTR bstrMode) put_uiMode;
				public function HRESULT(IWMPPlayer *self, BSTR* pbstrMode) get_uiMode;
			}
		}
		[CRepr]
		public struct IWMPPlayer2 : IWMPCore
		{
			public const new Guid IID = .(0x0e6b01d1, 0xd407, 0x4c85, 0xbf, 0x5f, 0x1c, 0x01, 0xf6, 0x15, 0x02, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_enabled;
				public function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_enabled;
				public function HRESULT(IWMPPlayer2 *self, int16* pbFullScreen) get_fullScreen;
				public function HRESULT(IWMPPlayer2 *self, int16 bFullScreen) put_fullScreen;
				public function HRESULT(IWMPPlayer2 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public function HRESULT(IWMPPlayer2 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public function HRESULT(IWMPPlayer2 *self, BSTR bstrMode) put_uiMode;
				public function HRESULT(IWMPPlayer2 *self, BSTR* pbstrMode) get_uiMode;
				public function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_stretchToFit;
				public function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_stretchToFit;
				public function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_windowlessVideo;
				public function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPMedia2 : IWMPMedia
		{
			public const new Guid IID = .(0xab7c88bb, 0x143e, 0x4ea4, 0xac, 0xc3, 0xe4, 0x35, 0x0b, 0x21, 0x06, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPMedia.VTable
			{
				public function HRESULT(IWMPMedia2 *self, IWMPErrorItem** ppIWMPErrorItem) get_error;
			}
		}
		[CRepr]
		public struct IWMPControls2 : IWMPControls
		{
			public const new Guid IID = .(0x6f030d25, 0x0890, 0x480f, 0x97, 0x75, 0x1f, 0x7e, 0x40, 0xab, 0x5b, 0x8e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPControls.VTable
			{
				public function HRESULT(IWMPControls2 *self, int32 lStep) step;
			}
		}
		[CRepr]
		public struct IWMPDVD : IDispatch
		{
			public const new Guid IID = .(0x8da61686, 0x4668, 0x4a5c, 0xae, 0x5d, 0x80, 0x31, 0x93, 0x29, 0x3d, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPDVD *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public function HRESULT(IWMPDVD *self, BSTR* strDomain) get_domain;
				public function HRESULT(IWMPDVD *self) topMenu;
				public function HRESULT(IWMPDVD *self) titleMenu;
				public function HRESULT(IWMPDVD *self) back;
				public function HRESULT(IWMPDVD *self) resume;
			}
		}
		[CRepr]
		public struct IWMPCore2 : IWMPCore
		{
			public const new Guid IID = .(0xbc17e5b7, 0x7561, 0x4c18, 0xbb, 0x90, 0x17, 0xd4, 0x85, 0x77, 0x56, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public function HRESULT(IWMPCore2 *self, IWMPDVD** ppDVD) get_dvd;
			}
		}
		[CRepr]
		public struct IWMPPlayer3 : IWMPCore2
		{
			public const new Guid IID = .(0x54062b68, 0x052a, 0x4c25, 0xa3, 0x9f, 0x8b, 0x63, 0x34, 0x65, 0x11, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_enabled;
				public function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_enabled;
				public function HRESULT(IWMPPlayer3 *self, int16* pbFullScreen) get_fullScreen;
				public function HRESULT(IWMPPlayer3 *self, int16 bFullScreen) put_fullScreen;
				public function HRESULT(IWMPPlayer3 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public function HRESULT(IWMPPlayer3 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public function HRESULT(IWMPPlayer3 *self, BSTR bstrMode) put_uiMode;
				public function HRESULT(IWMPPlayer3 *self, BSTR* pbstrMode) get_uiMode;
				public function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_stretchToFit;
				public function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_stretchToFit;
				public function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_windowlessVideo;
				public function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPErrorItem2 : IWMPErrorItem
		{
			public const new Guid IID = .(0xf75ccec0, 0xc67c, 0x475c, 0x93, 0x1e, 0x87, 0x19, 0x87, 0x0b, 0xee, 0x7d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPErrorItem.VTable
			{
				public function HRESULT(IWMPErrorItem2 *self, int32* plCondition) get_condition;
			}
		}
		[CRepr]
		public struct IWMPRemoteMediaServices : IUnknown
		{
			public const new Guid IID = .(0xcbb92747, 0x741f, 0x44fe, 0xab, 0x5b, 0xf1, 0xa4, 0x8f, 0x3b, 0x2a, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrType) GetServiceType;
				public function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrName) GetApplicationName;
				public function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrName, IDispatch** ppDispatch) GetScriptableObject;
				public function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrFile) GetCustomUIMode;
			}
		}
		[CRepr]
		public struct IWMPSkinManager : IUnknown
		{
			public const new Guid IID = .(0x076f2fa6, 0xed30, 0x448b, 0x8c, 0xc5, 0x3f, 0x3e, 0xf3, 0x52, 0x9c, 0x7a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPSkinManager *self, BSTR bstrPath) SetVisualStyle;
			}
		}
		[CRepr]
		public struct IWMPMetadataPicture : IDispatch
		{
			public const new Guid IID = .(0x5c29bbe0, 0xf87d, 0x4c45, 0xaa, 0x28, 0xa7, 0x0f, 0x02, 0x30, 0xff, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrMimeType) get_mimeType;
				public function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrPictureType) get_pictureType;
				public function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrDescription) get_description;
				public function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrURL) get_URL;
			}
		}
		[CRepr]
		public struct IWMPMetadataText : IDispatch
		{
			public const new Guid IID = .(0x769a72db, 0x13d2, 0x45e2, 0x9c, 0x48, 0x53, 0xca, 0x9d, 0x5b, 0x74, 0x50);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPMetadataText *self, BSTR* pbstrDescription) get_description;
				public function HRESULT(IWMPMetadataText *self, BSTR* pbstrText) get_text;
			}
		}
		[CRepr]
		public struct IWMPMedia3 : IWMPMedia2
		{
			public const new Guid IID = .(0xf118efc7, 0xf03a, 0x4fb4, 0x99, 0xc9, 0x1c, 0x02, 0xa5, 0xc1, 0x06, 0x5b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPMedia2.VTable
			{
				public function HRESULT(IWMPMedia3 *self, BSTR bstrType, BSTR bstrLanguage, int32* plCount) getAttributeCountByType;
				public function HRESULT(IWMPMedia3 *self, BSTR bstrType, BSTR bstrLanguage, int32 lIndex, VARIANT* pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPSettings2 : IWMPSettings
		{
			public const new Guid IID = .(0xfda937a4, 0xeece, 0x4da5, 0xa0, 0xb6, 0x39, 0xbf, 0x89, 0xad, 0xe2, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPSettings.VTable
			{
				public function HRESULT(IWMPSettings2 *self, int32* plLangID) get_defaultAudioLanguage;
				public function HRESULT(IWMPSettings2 *self, BSTR* pbstrRights) get_mediaAccessRights;
				public function HRESULT(IWMPSettings2 *self, BSTR bstrDesiredAccess, int16* pvbAccepted) requestMediaAccessRights;
			}
		}
		[CRepr]
		public struct IWMPControls3 : IWMPControls2
		{
			public const new Guid IID = .(0xa1d1110e, 0xd545, 0x476a, 0x9a, 0x78, 0xac, 0x3e, 0x4c, 0xb1, 0xe6, 0xbd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPControls2.VTable
			{
				public function HRESULT(IWMPControls3 *self, int32* plCount) get_audioLanguageCount;
				public function HRESULT(IWMPControls3 *self, int32 lIndex, int32* plLangID) getAudioLanguageID;
				public function HRESULT(IWMPControls3 *self, int32 lIndex, BSTR* pbstrLangDesc) getAudioLanguageDescription;
				public function HRESULT(IWMPControls3 *self, int32* plLangID) get_currentAudioLanguage;
				public function HRESULT(IWMPControls3 *self, int32 lLangID) put_currentAudioLanguage;
				public function HRESULT(IWMPControls3 *self, int32* plIndex) get_currentAudioLanguageIndex;
				public function HRESULT(IWMPControls3 *self, int32 lIndex) put_currentAudioLanguageIndex;
				public function HRESULT(IWMPControls3 *self, int32 lLangID, BSTR* pbstrLangName) getLanguageName;
				public function HRESULT(IWMPControls3 *self, BSTR* bstrTimecode) get_currentPositionTimecode;
				public function HRESULT(IWMPControls3 *self, BSTR bstrTimecode) put_currentPositionTimecode;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption2 : IWMPClosedCaption
		{
			public const new Guid IID = .(0x350ba78b, 0x6bc8, 0x4113, 0xa5, 0xf5, 0x31, 0x20, 0x56, 0x93, 0x4e, 0xb6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPClosedCaption.VTable
			{
				public function HRESULT(IWMPClosedCaption2 *self, int32* plCount) get_SAMILangCount;
				public function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, BSTR* pbstrName) getSAMILangName;
				public function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, int32* plLangID) getSAMILangID;
				public function HRESULT(IWMPClosedCaption2 *self, int32* plCount) get_SAMIStyleCount;
				public function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, BSTR* pbstrName) getSAMIStyleName;
			}
		}
		[CRepr]
		public struct IWMPPlayerApplication : IDispatch
		{
			public const new Guid IID = .(0x40897764, 0xceab, 0x47be, 0xad, 0x4a, 0x8e, 0x28, 0x53, 0x7f, 0x9b, 0xbf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPPlayerApplication *self) switchToPlayerApplication;
				public function HRESULT(IWMPPlayerApplication *self) switchToControl;
				public function HRESULT(IWMPPlayerApplication *self, int16* pbPlayerDocked) get_playerDocked;
				public function HRESULT(IWMPPlayerApplication *self, int16* pbHasDisplay) get_hasDisplay;
			}
		}
		[CRepr]
		public struct IWMPCore3 : IWMPCore2
		{
			public const new Guid IID = .(0x7587c667, 0x628f, 0x499f, 0x88, 0xe7, 0x6a, 0x6f, 0x4e, 0x88, 0x84, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public function HRESULT(IWMPCore3 *self, BSTR bstrName, BSTR bstrURL, IWMPPlaylist** ppPlaylist) newPlaylist;
				public function HRESULT(IWMPCore3 *self, BSTR bstrURL, IWMPMedia** ppMedia) newMedia;
			}
		}
		[CRepr]
		public struct IWMPPlayer4 : IWMPCore3
		{
			public const new Guid IID = .(0x6c497d62, 0x8919, 0x413c, 0x82, 0xdb, 0xe9, 0x35, 0xfb, 0x3e, 0xc5, 0x84);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPCore3.VTable
			{
				public function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_enabled;
				public function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_enabled;
				public function HRESULT(IWMPPlayer4 *self, int16* pbFullScreen) get_fullScreen;
				public function HRESULT(IWMPPlayer4 *self, int16 bFullScreen) put_fullScreen;
				public function HRESULT(IWMPPlayer4 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public function HRESULT(IWMPPlayer4 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public function HRESULT(IWMPPlayer4 *self, BSTR bstrMode) put_uiMode;
				public function HRESULT(IWMPPlayer4 *self, BSTR* pbstrMode) get_uiMode;
				public function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_stretchToFit;
				public function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_stretchToFit;
				public function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_windowlessVideo;
				public function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_windowlessVideo;
				public function HRESULT(IWMPPlayer4 *self, int16* pvarfIsRemote) get_isRemote;
				public function HRESULT(IWMPPlayer4 *self, IWMPPlayerApplication** ppIWMPPlayerApplication) get_playerApplication;
				public function HRESULT(IWMPPlayer4 *self, BSTR bstrURL) openPlayer;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices : IUnknown
		{
			public const new Guid IID = .(0x1d01fbdb, 0xade2, 0x4c8d, 0x98, 0x42, 0xc1, 0x90, 0xb9, 0x5c, 0x33, 0x06);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPPlayerServices *self, BSTR bstrPlugin) activateUIPlugin;
				public function HRESULT(IWMPPlayerServices *self, BSTR bstrTaskPane) setTaskPane;
				public function HRESULT(IWMPPlayerServices *self, BSTR bstrTaskPane, BSTR bstrURL, BSTR bstrFriendlyName) setTaskPaneURL;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice : IUnknown
		{
			public const new Guid IID = .(0x82a2986c, 0x0293, 0x4fd0, 0xb2, 0x79, 0xb2, 0x1b, 0x86, 0xc0, 0x58, 0xbe);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPSyncDevice *self, BSTR* pbstrName) get_friendlyName;
				public function HRESULT(IWMPSyncDevice *self, BSTR bstrName) put_friendlyName;
				public function HRESULT(IWMPSyncDevice *self, BSTR* pbstrName) get_deviceName;
				public function HRESULT(IWMPSyncDevice *self, BSTR* pbstrDeviceId) get_deviceId;
				public function HRESULT(IWMPSyncDevice *self, int32* plIndex) get_partnershipIndex;
				public function HRESULT(IWMPSyncDevice *self, int16* pvbConnected) get_connected;
				public function HRESULT(IWMPSyncDevice *self, WMPDeviceStatus* pwmpds) get_status;
				public function HRESULT(IWMPSyncDevice *self, WMPSyncState* pwmpss) get_syncState;
				public function HRESULT(IWMPSyncDevice *self, int32* plProgress) get_progress;
				public function HRESULT(IWMPSyncDevice *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
				public function HRESULT(IWMPSyncDevice *self, int16 vbShowUI) createPartnership;
				public function HRESULT(IWMPSyncDevice *self) deletePartnership;
				public function HRESULT(IWMPSyncDevice *self) start;
				public function HRESULT(IWMPSyncDevice *self) stop;
				public function HRESULT(IWMPSyncDevice *self) showSettings;
				public function HRESULT(IWMPSyncDevice *self, IWMPSyncDevice* pDevice, int16* pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPSyncServices : IUnknown
		{
			public const new Guid IID = .(0x8b5050ff, 0xe0a4, 0x4808, 0xb3, 0xa8, 0x89, 0x3a, 0x9e, 0x1e, 0xd8, 0x94);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPSyncServices *self, int32* plCount) get_deviceCount;
				public function HRESULT(IWMPSyncServices *self, int32 lIndex, IWMPSyncDevice** ppDevice) getDevice;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices2 : IWMPPlayerServices
		{
			public const new Guid IID = .(0x1bb1592f, 0xf040, 0x418a, 0x9f, 0x71, 0x17, 0xc7, 0x51, 0x2b, 0x4d, 0x70);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPPlayerServices.VTable
			{
				public function HRESULT(IWMPPlayerServices2 *self, BSTR bstrPriority) setBackgroundProcessingPriority;
			}
		}
		[CRepr]
		public struct IWMPCdromRip : IUnknown
		{
			public const new Guid IID = .(0x56e2294f, 0x69ed, 0x4629, 0xa8, 0x69, 0xae, 0xa7, 0x2c, 0x0d, 0xcc, 0x2c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPCdromRip *self, WMPRipState* pwmprs) get_ripState;
				public function HRESULT(IWMPCdromRip *self, int32* plProgress) get_ripProgress;
				public function HRESULT(IWMPCdromRip *self) startRip;
				public function HRESULT(IWMPCdromRip *self) stopRip;
			}
		}
		[CRepr]
		public struct IWMPCdromBurn : IUnknown
		{
			public const new Guid IID = .(0xbd94dbeb, 0x417f, 0x4928, 0xaa, 0x06, 0x08, 0x7d, 0x56, 0xed, 0x9b, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPCdromBurn *self, BSTR bstrItem, int16* pIsAvailable) isAvailable;
				public function HRESULT(IWMPCdromBurn *self, BSTR bstrItem, BSTR* pbstrVal) getItemInfo;
				public function HRESULT(IWMPCdromBurn *self, BSTR* pbstrLabel) get_label;
				public function HRESULT(IWMPCdromBurn *self, BSTR bstrLabel) put_label;
				public function HRESULT(IWMPCdromBurn *self, WMPBurnFormat* pwmpbf) get_burnFormat;
				public function HRESULT(IWMPCdromBurn *self, WMPBurnFormat wmpbf) put_burnFormat;
				public function HRESULT(IWMPCdromBurn *self, IWMPPlaylist** ppPlaylist) get_burnPlaylist;
				public function HRESULT(IWMPCdromBurn *self, IWMPPlaylist* pPlaylist) put_burnPlaylist;
				public function HRESULT(IWMPCdromBurn *self) refreshStatus;
				public function HRESULT(IWMPCdromBurn *self, WMPBurnState* pwmpbs) get_burnState;
				public function HRESULT(IWMPCdromBurn *self, int32* plProgress) get_burnProgress;
				public function HRESULT(IWMPCdromBurn *self) startBurn;
				public function HRESULT(IWMPCdromBurn *self) stopBurn;
				public function HRESULT(IWMPCdromBurn *self) erase;
			}
		}
		[CRepr]
		public struct IWMPQuery : IDispatch
		{
			public const new Guid IID = .(0xa00918f3, 0xa6b0, 0x4bfb, 0x91, 0x89, 0xfd, 0x83, 0x4c, 0x7b, 0xc5, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPQuery *self, BSTR bstrAttribute, BSTR bstrOperator, BSTR bstrValue) addCondition;
				public function HRESULT(IWMPQuery *self) beginNextGroup;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection2 : IWMPMediaCollection
		{
			public const new Guid IID = .(0x8ba957f5, 0xfd8c, 0x4791, 0xb8, 0x2d, 0xf8, 0x40, 0x40, 0x1e, 0xe4, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPMediaCollection.VTable
			{
				public function HRESULT(IWMPMediaCollection2 *self, IWMPQuery** ppQuery) createQuery;
				public function HRESULT(IWMPMediaCollection2 *self, IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPPlaylist** ppPlaylist) getPlaylistByQuery;
				public function HRESULT(IWMPMediaCollection2 *self, BSTR bstrAttribute, IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPStringCollection** ppStringCollection) getStringCollectionByQuery;
				public function HRESULT(IWMPMediaCollection2 *self, BSTR bstrAttribute, BSTR bstrValue, BSTR bstrMediaType, IWMPPlaylist** ppMediaItems) getByAttributeAndMediaType;
			}
		}
		[CRepr]
		public struct IWMPStringCollection2 : IWMPStringCollection
		{
			public const new Guid IID = .(0x46ad648d, 0x53f1, 0x4a74, 0x92, 0xe2, 0x2a, 0x1b, 0x68, 0xd6, 0x3f, 0xd4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPStringCollection.VTable
			{
				public function HRESULT(IWMPStringCollection2 *self, IWMPStringCollection2* pIWMPStringCollection2, int16* pvbool) isIdentical;
				public function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrItemName, BSTR* pbstrValue) getItemInfo;
				public function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32* plCount) getAttributeCountByType;
				public function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32 lAttributeIndex, VARIANT* pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPLibrary : IUnknown
		{
			public const new Guid IID = .(0x3df47861, 0x7df1, 0x4c1f, 0xa8, 0x1b, 0x4c, 0x26, 0xf0, 0xf7, 0xa7, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPLibrary *self, BSTR* pbstrName) get_name;
				public function HRESULT(IWMPLibrary *self, WMPLibraryType* pwmplt) get_type;
				public function HRESULT(IWMPLibrary *self, IWMPMediaCollection** ppIWMPMediaCollection) get_mediaCollection;
				public function HRESULT(IWMPLibrary *self, IWMPLibrary* pIWMPLibrary, int16* pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPLibraryServices : IUnknown
		{
			public const new Guid IID = .(0x39c2f8d5, 0x1cf2, 0x4d5e, 0xae, 0x09, 0xd7, 0x34, 0x92, 0xcf, 0x9e, 0xaa);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPLibraryServices *self, WMPLibraryType wmplt, int32* plCount) getCountByType;
				public function HRESULT(IWMPLibraryServices *self, WMPLibraryType wmplt, int32 lIndex, IWMPLibrary** ppIWMPLibrary) getLibraryByType;
			}
		}
		[CRepr]
		public struct IWMPLibrarySharingServices : IUnknown
		{
			public const new Guid IID = .(0x82cba86b, 0x9f04, 0x474b, 0xa3, 0x65, 0xd6, 0xdd, 0x14, 0x66, 0xe5, 0x41);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPLibrarySharingServices *self, int16* pvbShared) isLibraryShared;
				public function HRESULT(IWMPLibrarySharingServices *self, int16* pvbEnabled) isLibrarySharingEnabled;
				public function HRESULT(IWMPLibrarySharingServices *self) showLibrarySharing;
			}
		}
		[CRepr]
		public struct IWMPFolderMonitorServices : IUnknown
		{
			public const new Guid IID = .(0x788c8743, 0xe57f, 0x439d, 0xa4, 0x68, 0x5b, 0xc7, 0x7f, 0x2e, 0x59, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_count;
				public function HRESULT(IWMPFolderMonitorServices *self, int32 lIndex, BSTR* pbstrFolder) item;
				public function HRESULT(IWMPFolderMonitorServices *self, BSTR bstrFolder) add;
				public function HRESULT(IWMPFolderMonitorServices *self, int32 lIndex) remove;
				public function HRESULT(IWMPFolderMonitorServices *self, WMPFolderScanState* pwmpfss) get_scanState;
				public function HRESULT(IWMPFolderMonitorServices *self, BSTR* pbstrFolder) get_currentFolder;
				public function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_scannedFilesCount;
				public function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_addedFilesCount;
				public function HRESULT(IWMPFolderMonitorServices *self, int32* plProgress) get_updateProgress;
				public function HRESULT(IWMPFolderMonitorServices *self) startScan;
				public function HRESULT(IWMPFolderMonitorServices *self) stopScan;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice2 : IWMPSyncDevice
		{
			public const new Guid IID = .(0x88afb4b2, 0x140a, 0x44d2, 0x91, 0xe6, 0x45, 0x43, 0xda, 0x46, 0x7c, 0xd1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPSyncDevice.VTable
			{
				public function HRESULT(IWMPSyncDevice2 *self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice3 : IWMPSyncDevice2
		{
			public const new Guid IID = .(0xb22c85f9, 0x263c, 0x4372, 0xa0, 0xda, 0xb5, 0x18, 0xdb, 0x9b, 0x40, 0x98);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPSyncDevice2.VTable
			{
				public function HRESULT(IWMPSyncDevice3 *self, IWMPPlaylist* pNonRulePlaylist, IWMPPlaylist* pRulesPlaylist) estimateSyncSize;
				public function HRESULT(IWMPSyncDevice3 *self) cancelEstimation;
			}
		}
		[CRepr]
		public struct IWMPLibrary2 : IWMPLibrary
		{
			public const new Guid IID = .(0xdd578a4e, 0x79b1, 0x426c, 0xbf, 0x8f, 0x3a, 0xdd, 0x90, 0x72, 0x50, 0x0b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPLibrary.VTable
			{
				public function HRESULT(IWMPLibrary2 *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPEvents : IUnknown
		{
			public const new Guid IID = .(0x19a6627b, 0xda9e, 0x47c1, 0xbb, 0x23, 0x00, 0xb5, 0xe6, 0x68, 0x23, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function void(IWMPEvents *self, int32 NewState) OpenStateChange;
				public function void(IWMPEvents *self, int32 NewState) PlayStateChange;
				public function void(IWMPEvents *self, int32 LangID) AudioLanguageChange;
				public function void(IWMPEvents *self) StatusChange;
				public function void(IWMPEvents *self, BSTR scType, BSTR Param) ScriptCommand;
				public function void(IWMPEvents *self) NewStream;
				public function void(IWMPEvents *self, int32 Result) Disconnect;
				public function void(IWMPEvents *self, int16 Start) Buffering;
				public function void(IWMPEvents *self) Error;
				public function void(IWMPEvents *self, int32 WarningType, int32 Param, BSTR Description) Warning;
				public function void(IWMPEvents *self, int32 Result) EndOfStream;
				public function void(IWMPEvents *self, double oldPosition, double newPosition) PositionChange;
				public function void(IWMPEvents *self, int32 MarkerNum) MarkerHit;
				public function void(IWMPEvents *self, int32 NewDurationUnit) DurationUnitChange;
				public function void(IWMPEvents *self, int32 CdromNum) CdromMediaChange;
				public function void(IWMPEvents *self, IDispatch* Playlist, WMPPlaylistChangeEventType change) PlaylistChange;
				public function void(IWMPEvents *self, WMPPlaylistChangeEventType change) CurrentPlaylistChange;
				public function void(IWMPEvents *self, BSTR bstrItemName) CurrentPlaylistItemAvailable;
				public function void(IWMPEvents *self, IDispatch* Item) MediaChange;
				public function void(IWMPEvents *self, BSTR bstrItemName) CurrentMediaItemAvailable;
				public function void(IWMPEvents *self, IDispatch* pdispMedia) CurrentItemChange;
				public function void(IWMPEvents *self) MediaCollectionChange;
				public function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringAdded;
				public function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringRemoved;
				public function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrOldAttribVal, BSTR bstrNewAttribVal) MediaCollectionAttributeStringChanged;
				public function void(IWMPEvents *self) PlaylistCollectionChange;
				public function void(IWMPEvents *self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistAdded;
				public function void(IWMPEvents *self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistRemoved;
				public function void(IWMPEvents *self, BSTR bstrPlaylistName, int16 varfIsDeleted) PlaylistCollectionPlaylistSetAsDeleted;
				public function void(IWMPEvents *self, BSTR ModeName, int16 NewValue) ModeChange;
				public function void(IWMPEvents *self, IDispatch* pMediaObject) MediaError;
				public function void(IWMPEvents *self, IDispatch* pItem) OpenPlaylistSwitch;
				public function void(IWMPEvents *self, BSTR strDomain) DomainChange;
				public function void(IWMPEvents *self) SwitchedToPlayerApplication;
				public function void(IWMPEvents *self) SwitchedToControl;
				public function void(IWMPEvents *self) PlayerDockedStateChange;
				public function void(IWMPEvents *self) PlayerReconnect;
				public function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) Click;
				public function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) DoubleClick;
				public function void(IWMPEvents *self, int16 nKeyCode, int16 nShiftState) KeyDown;
				public function void(IWMPEvents *self, int16 nKeyAscii) KeyPress;
				public function void(IWMPEvents *self, int16 nKeyCode, int16 nShiftState) KeyUp;
				public function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseDown;
				public function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseMove;
				public function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseUp;
			}
		}
		[CRepr]
		public struct IWMPEvents2 : IWMPEvents
		{
			public const new Guid IID = .(0x1e7601fa, 0x47ea, 0x4107, 0x9e, 0xa9, 0x90, 0x04, 0xed, 0x96, 0x84, 0xff);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPEvents.VTable
			{
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice) DeviceConnect;
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice) DeviceDisconnect;
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, WMPDeviceStatus NewStatus) DeviceStatusChange;
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, WMPSyncState NewState) DeviceSyncStateChange;
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, IDispatch* pMedia) DeviceSyncError;
				public function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, HRESULT hrResult) CreatePartnershipComplete;
			}
		}
		[CRepr]
		public struct IWMPEvents3 : IWMPEvents2
		{
			public const new Guid IID = .(0x1f504270, 0xa66b, 0x4223, 0x8e, 0x96, 0x26, 0xa0, 0x6c, 0x63, 0xd6, 0x9f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPEvents2.VTable
			{
				public function void(IWMPEvents3 *self, IWMPCdromRip* pCdromRip, WMPRipState wmprs) CdromRipStateChange;
				public function void(IWMPEvents3 *self, IWMPCdromRip* pCdromRip, IDispatch* pMedia) CdromRipMediaError;
				public function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, WMPBurnState wmpbs) CdromBurnStateChange;
				public function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, IDispatch* pMedia) CdromBurnMediaError;
				public function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, HRESULT hrError) CdromBurnError;
				public function void(IWMPEvents3 *self, IWMPLibrary* pLibrary) LibraryConnect;
				public function void(IWMPEvents3 *self, IWMPLibrary* pLibrary) LibraryDisconnect;
				public function void(IWMPEvents3 *self, WMPFolderScanState wmpfss) FolderScanStateChange;
				public function void(IWMPEvents3 *self, IDispatch* pdispStringCollection, WMPStringCollectionChangeEventType change, int32 lCollectionIndex) StringCollectionChange;
				public function void(IWMPEvents3 *self, IDispatch* pdispMedia) MediaCollectionMediaAdded;
				public function void(IWMPEvents3 *self, IDispatch* pdispMedia) MediaCollectionMediaRemoved;
			}
		}
		[CRepr]
		public struct IWMPEvents4 : IWMPEvents3
		{
			public const new Guid IID = .(0x26dabcfa, 0x306b, 0x404d, 0x9a, 0x6f, 0x63, 0x0a, 0x84, 0x05, 0x04, 0x8d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPEvents3.VTable
			{
				public function void(IWMPEvents4 *self, IWMPSyncDevice* pDevice, HRESULT hrResult, int64 qwEstimatedUsedSpace, int64 qwEstimatedSpace) DeviceEstimation;
			}
		}
		[CRepr]
		public struct _WMPOCXEvents : IDispatch
		{
			public const new Guid IID = .(0x6bf52a51, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IWMPNodeRealEstate : IUnknown
		{
			public const new Guid IID = .(0x42751198, 0x5a50, 0x4460, 0xbc, 0xb4, 0x70, 0x9f, 0x8b, 0xdc, 0x8e, 0x59);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPNodeRealEstate *self, SIZE* pSize) GetDesiredSize;
				public function HRESULT(IWMPNodeRealEstate *self, RECT* pSrc, RECT* pDest, RECT* pClip) SetRects;
				public function HRESULT(IWMPNodeRealEstate *self, RECT* pSrc, RECT* pDest, RECT* pClip) GetRects;
				public function HRESULT(IWMPNodeRealEstate *self, BOOL fWindowless) SetWindowless;
				public function HRESULT(IWMPNodeRealEstate *self, BOOL* pfWindowless) GetWindowless;
				public function HRESULT(IWMPNodeRealEstate *self, BOOL fFullScreen) SetFullScreen;
				public function HRESULT(IWMPNodeRealEstate *self, BOOL* pfFullScreen) GetFullScreen;
			}
		}
		[CRepr]
		public struct IWMPNodeRealEstateHost : IUnknown
		{
			public const new Guid IID = .(0x1491087d, 0x2c6b, 0x44c8, 0xb0, 0x19, 0xb3, 0xc9, 0x29, 0xd2, 0xad, 0xa9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPNodeRealEstateHost *self, SIZE* pSize) OnDesiredSizeChange;
				public function HRESULT(IWMPNodeRealEstateHost *self, BOOL fFullScreen) OnFullScreenTransition;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowed : IUnknown
		{
			public const new Guid IID = .(0x96740bfa, 0xc56a, 0x45d1, 0xa3, 0xa4, 0x76, 0x29, 0x14, 0xd4, 0xad, 0xe9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPNodeWindowed *self, int hwnd) SetOwnerWindow;
				public function HRESULT(IWMPNodeWindowed *self, int* phwnd) GetOwnerWindow;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowedHost : IUnknown
		{
			public const new Guid IID = .(0xa300415a, 0x54aa, 0x4081, 0xad, 0xbf, 0x3b, 0x13, 0x61, 0x0d, 0x89, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPNodeWindowedHost *self, uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) OnWindowMessageFromRenderer;
			}
		}
		[CRepr]
		public struct IWMPWindowMessageSink : IUnknown
		{
			public const new Guid IID = .(0x3a0daa30, 0x908d, 0x4789, 0xba, 0x87, 0xae, 0xd8, 0x79, 0xb5, 0xc4, 0x9b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPWindowMessageSink *self, uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) OnWindowMessage;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowless : IWMPWindowMessageSink
		{
			public const new Guid IID = .(0x9b9199ad, 0x780c, 0x4eda, 0xb8, 0x16, 0x26, 0x1e, 0xba, 0x5d, 0x15, 0x75);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPWindowMessageSink.VTable
			{
				public function HRESULT(IWMPNodeWindowless *self, int hdc, RECT* prcDraw) OnDraw;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowlessHost : IUnknown
		{
			public const new Guid IID = .(0xbe7017c6, 0xce34, 0x4901, 0x81, 0x06, 0x77, 0x03, 0x81, 0xaa, 0x6e, 0x3e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPNodeWindowlessHost *self, RECT* prc, BOOL fErase) InvalidateRect;
			}
		}
		[CRepr]
		public struct IWMPVideoRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x6d6cf803, 0x1ec0, 0x4c8d, 0xb3, 0xca, 0xf1, 0x8e, 0x27, 0x28, 0x20, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPVideoRenderConfig *self, IMFActivate* pActivate) put_presenterActivate;
			}
		}
		[CRepr]
		public struct IWMPAudioRenderConfig : IUnknown
		{
			public const new Guid IID = .(0xe79c6349, 0x5997, 0x4ce4, 0x91, 0x7c, 0x22, 0xa3, 0x39, 0x1e, 0xc5, 0x64);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPAudioRenderConfig *self, BSTR* pbstrOutputDevice) get_audioOutputDevice;
				public function HRESULT(IWMPAudioRenderConfig *self, BSTR bstrOutputDevice) put_audioOutputDevice;
			}
		}
		[CRepr]
		public struct IWMPRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x959506c1, 0x0314, 0x4ec5, 0x9e, 0x61, 0x85, 0x28, 0xdb, 0x5e, 0x54, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPRenderConfig *self, BOOL fInProc) put_inProcOnly;
				public function HRESULT(IWMPRenderConfig *self, BOOL* pfInProc) get_inProcOnly;
			}
		}
		[CRepr]
		public struct IWMPServices : IUnknown
		{
			public const new Guid IID = .(0xafb6b76b, 0x1e20, 0x4198, 0x83, 0xb3, 0x19, 0x1d, 0xb6, 0xe0, 0xb1, 0x49);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPServices *self, int64* prt) GetStreamTime;
				public function HRESULT(IWMPServices *self, WMPServices_StreamState* pState) GetStreamState;
			}
		}
		[CRepr]
		public struct IWMPMediaPluginRegistrar : IUnknown
		{
			public const new Guid IID = .(0x68e27045, 0x05bd, 0x40b2, 0x97, 0x20, 0x23, 0x08, 0x8c, 0x78, 0xe3, 0x90);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPMediaPluginRegistrar *self, PWSTR pwszFriendlyName, PWSTR pwszDescription, PWSTR pwszUninstallString, uint32 dwPriority, Guid guidPluginType, Guid clsid, uint32 cMediaTypes, void* pMediaTypes) WMPRegisterPlayerPlugin;
				public function HRESULT(IWMPMediaPluginRegistrar *self, Guid guidPluginType, Guid clsid) WMPUnRegisterPlayerPlugin;
			}
		}
		[CRepr]
		public struct IWMPPlugin : IUnknown
		{
			public const new Guid IID = .(0xf1392a70, 0x024c, 0x42bb, 0xa9, 0x98, 0x73, 0xdf, 0xdf, 0xe7, 0xd5, 0xa7);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPPlugin *self, uint dwPlaybackContext) Init;
				public function HRESULT(IWMPPlugin *self) Shutdown;
				public function HRESULT(IWMPPlugin *self, Guid* pGUID) GetID;
				public function HRESULT(IWMPPlugin *self, uint32* pdwFlags) GetCaps;
				public function HRESULT(IWMPPlugin *self, IWMPServices* pWMPServices) AdviseWMPServices;
				public function HRESULT(IWMPPlugin *self) UnAdviseWMPServices;
			}
		}
		[CRepr]
		public struct IWMPPluginEnable : IUnknown
		{
			public const new Guid IID = .(0x5fca444c, 0x7ad1, 0x479d, 0xa4, 0xef, 0x40, 0x56, 0x6a, 0x53, 0x09, 0xd6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPPluginEnable *self, BOOL fEnable) SetEnable;
				public function HRESULT(IWMPPluginEnable *self, BOOL* pfEnable) GetEnable;
			}
		}
		[CRepr]
		public struct IWMPGraphCreation : IUnknown
		{
			public const new Guid IID = .(0xbfb377e5, 0xc594, 0x4369, 0xa9, 0x70, 0xde, 0x89, 0x6d, 0x5e, 0xce, 0x74);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPGraphCreation *self, IUnknown* pFilterGraph, IUnknown* pReserved) GraphCreationPreRender;
				public function HRESULT(IWMPGraphCreation *self, IUnknown* pFilterGraph) GraphCreationPostRender;
				public function HRESULT(IWMPGraphCreation *self, uint32* pdwFlags) GetGraphCreationFlags;
			}
		}
		[CRepr]
		public struct IWMPConvert : IUnknown
		{
			public const new Guid IID = .(0xd683162f, 0x57d4, 0x4108, 0x83, 0x73, 0x4a, 0x96, 0x76, 0xd1, 0xc2, 0xe9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPConvert *self, BSTR bstrInputFile, BSTR bstrDestinationFolder, BSTR* pbstrOutputFile) ConvertFile;
				public function HRESULT(IWMPConvert *self, BSTR* pbstrURL) GetErrorURL;
			}
		}
		[CRepr]
		public struct IWMPTranscodePolicy : IUnknown
		{
			public const new Guid IID = .(0xb64cbac3, 0x401c, 0x4327, 0xa3, 0xe8, 0xb9, 0xfe, 0xb3, 0xa8, 0xc2, 0x5c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPTranscodePolicy *self, int16* pvbAllow) allowTranscode;
			}
		}
		[CRepr]
		public struct IWMPUserEventSink : IUnknown
		{
			public const new Guid IID = .(0xcfccfa72, 0xc343, 0x48c3, 0xa2, 0xde, 0xb7, 0xa4, 0x40, 0x2e, 0x39, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPUserEventSink *self, int32 EventCode) NotifyUserEvent;
			}
		}
		[CRepr]
		public struct IXFeedsManager : IUnknown
		{
			public const new Guid IID = .(0x5357e238, 0xfb12, 0x4aca, 0xa9, 0x30, 0xca, 0xb7, 0x83, 0x2b, 0x84, 0xbf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedsManager *self, Guid* riid, void** ppv) RootFolder;
				public function HRESULT(IXFeedsManager *self, PWSTR pszUrl, BOOL* pbSubscribed) IsSubscribed;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath, BOOL* pbFeedExists) ExistsFeed;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath, Guid* riid, void** ppv) GetFeed;
				public function HRESULT(IXFeedsManager *self, PWSTR pszUrl, Guid* riid, void** ppv) GetFeedByUrl;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath, BOOL* pbFolderExists) ExistsFolder;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath, Guid* riid, void** ppv) GetFolder;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath) DeleteFeed;
				public function HRESULT(IXFeedsManager *self, PWSTR pszPath) DeleteFolder;
				public function HRESULT(IXFeedsManager *self, FEEDS_BACKGROUNDSYNC_ACTION fbsa) BackgroundSync;
				public function HRESULT(IXFeedsManager *self, FEEDS_BACKGROUNDSYNC_STATUS* pfbss) BackgroundSyncStatus;
				public function HRESULT(IXFeedsManager *self, uint32* puiInterval) DefaultInterval;
				public function HRESULT(IXFeedsManager *self, uint32 uiInterval) SetDefaultInterval;
				public function HRESULT(IXFeedsManager *self) AsyncSyncAll;
				public function HRESULT(IXFeedsManager *self, IStream* pStreamIn, IStream** ppStreamOut) Normalize;
				public function HRESULT(IXFeedsManager *self, uint32* puiItemCountLimit) ItemCountLimit;
			}
		}
		[CRepr]
		public struct IXFeedsEnum : IUnknown
		{
			public const new Guid IID = .(0xdc43a9d5, 0x5015, 0x4301, 0x8c, 0x96, 0xa4, 0x74, 0x34, 0xb4, 0xd6, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedsEnum *self, uint32* puiCount) Count;
				public function HRESULT(IXFeedsEnum *self, uint32 uiIndex, Guid* riid, void** ppv) Item;
			}
		}
		[CRepr]
		public struct IXFeedFolder : IUnknown
		{
			public const new Guid IID = .(0x4c963678, 0x3a51, 0x4b88, 0x85, 0x31, 0x98, 0xb9, 0x0b, 0x65, 0x08, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedFolder *self, IXFeedsEnum** ppfe) Feeds;
				public function HRESULT(IXFeedFolder *self, IXFeedsEnum** ppfe) Subfolders;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, PWSTR pszUrl, Guid* riid, void** ppv) CreateFeed;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) CreateSubfolder;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, BOOL* pbFeedExists) ExistsFeed;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, BOOL* pbSubfolderExists) ExistsSubfolder;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) GetFeed;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) GetSubfolder;
				public function HRESULT(IXFeedFolder *self) Delete;
				public function HRESULT(IXFeedFolder *self, PWSTR* ppszName) Name;
				public function HRESULT(IXFeedFolder *self, PWSTR pszName) Rename;
				public function HRESULT(IXFeedFolder *self, PWSTR* ppszPath) Path;
				public function HRESULT(IXFeedFolder *self, PWSTR pszPath) Move;
				public function HRESULT(IXFeedFolder *self, Guid* riid, void** ppv) Parent;
				public function HRESULT(IXFeedFolder *self, BOOL* pbIsRootFeedFolder) IsRoot;
				public function HRESULT(IXFeedFolder *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) GetWatcher;
				public function HRESULT(IXFeedFolder *self, uint32* puiTotalUnreadItemCount) TotalUnreadItemCount;
				public function HRESULT(IXFeedFolder *self, uint32* puiTotalItemCount) TotalItemCount;
			}
		}
		[CRepr]
		public struct IXFeedFolderEvents : IUnknown
		{
			public const new Guid IID = .(0x7964b769, 0x234a, 0x4bb1, 0xa5, 0xf4, 0x90, 0x45, 0x4c, 0x8a, 0xd0, 0x7e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedFolderEvents *self) Error;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FolderAdded;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FolderDeleted;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderRenamed;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedFrom;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedTo;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, int32 feicfFlags) FolderItemCountChanged;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedAdded;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedDeleted;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedUrlChanged;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedFrom;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedTo;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedDownloading;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeed : IUnknown
		{
			public const new Guid IID = .(0xa44179a4, 0xe0f6, 0x403b, 0xaf, 0x8d, 0xd0, 0x80, 0xf4, 0x25, 0xa4, 0x51);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeed *self, uint32 uiItemCount, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, IStream** pps) Xml;
				public function HRESULT(IXFeed *self, PWSTR* ppszName) Name;
				public function HRESULT(IXFeed *self, PWSTR pszName) Rename;
				public function HRESULT(IXFeed *self, PWSTR* ppszUrl) Url;
				public function HRESULT(IXFeed *self, PWSTR pszUrl) SetUrl;
				public function HRESULT(IXFeed *self, Guid* pguid) LocalId;
				public function HRESULT(IXFeed *self, PWSTR* ppszPath) Path;
				public function HRESULT(IXFeed *self, PWSTR pszPath) Move;
				public function HRESULT(IXFeed *self, Guid* riid, void** ppv) Parent;
				public function HRESULT(IXFeed *self, SYSTEMTIME* pstLastWriteTime) LastWriteTime;
				public function HRESULT(IXFeed *self) Delete;
				public function HRESULT(IXFeed *self) Download;
				public function HRESULT(IXFeed *self) AsyncDownload;
				public function HRESULT(IXFeed *self) CancelAsyncDownload;
				public function HRESULT(IXFeed *self, FEEDS_SYNC_SETTING* pfss) SyncSetting;
				public function HRESULT(IXFeed *self, FEEDS_SYNC_SETTING fss) SetSyncSetting;
				public function HRESULT(IXFeed *self, uint32* puiInterval) Interval;
				public function HRESULT(IXFeed *self, uint32 uiInterval) SetInterval;
				public function HRESULT(IXFeed *self, SYSTEMTIME* pstLastDownloadTime) LastDownloadTime;
				public function HRESULT(IXFeed *self, PWSTR* ppszPath) LocalEnclosurePath;
				public function HRESULT(IXFeed *self, IXFeedsEnum** ppfe) Items;
				public function HRESULT(IXFeed *self, uint32 uiId, Guid* riid, void** ppv) GetItem;
				public function HRESULT(IXFeed *self) MarkAllItemsRead;
				public function HRESULT(IXFeed *self, uint32* puiMaxItemCount) MaxItemCount;
				public function HRESULT(IXFeed *self, uint32 uiMaxItemCount) SetMaxItemCount;
				public function HRESULT(IXFeed *self, BOOL* pbDownloadEnclosuresAutomatically) DownloadEnclosuresAutomatically;
				public function HRESULT(IXFeed *self, BOOL bDownloadEnclosuresAutomatically) SetDownloadEnclosuresAutomatically;
				public function HRESULT(IXFeed *self, FEEDS_DOWNLOAD_STATUS* pfds) DownloadStatus;
				public function HRESULT(IXFeed *self, FEEDS_DOWNLOAD_ERROR* pfde) LastDownloadError;
				public function HRESULT(IXFeed *self, IStream* pStream, PWSTR pszUrl) Merge;
				public function HRESULT(IXFeed *self, PWSTR* ppszUrl) DownloadUrl;
				public function HRESULT(IXFeed *self, PWSTR* ppszTitle) Title;
				public function HRESULT(IXFeed *self, PWSTR* ppszDescription) Description;
				public function HRESULT(IXFeed *self, PWSTR* ppszHomePage) Link;
				public function HRESULT(IXFeed *self, PWSTR* ppszImageUrl) Image;
				public function HRESULT(IXFeed *self, SYSTEMTIME* pstLastBuildDate) LastBuildDate;
				public function HRESULT(IXFeed *self, SYSTEMTIME* pstPubDate) PubDate;
				public function HRESULT(IXFeed *self, uint32* puiTtl) Ttl;
				public function HRESULT(IXFeed *self, PWSTR* ppszLanguage) Language;
				public function HRESULT(IXFeed *self, PWSTR* ppszCopyright) Copyright;
				public function HRESULT(IXFeed *self, BOOL* pbIsList) IsList;
				public function HRESULT(IXFeed *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) GetWatcher;
				public function HRESULT(IXFeed *self, uint32* puiUnreadItemCount) UnreadItemCount;
				public function HRESULT(IXFeed *self, uint32* puiItemCount) ItemCount;
			}
		}
		[CRepr]
		public struct IXFeed2 : IXFeed
		{
			public const new Guid IID = .(0xce528e77, 0x3716, 0x4eb7, 0x95, 0x6d, 0xf5, 0xe3, 0x75, 0x02, 0xe1, 0x2a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXFeed.VTable
			{
				public function HRESULT(IXFeed2 *self, uint32 uiEffectiveId, Guid* riid, void** ppv) GetItemByEffectiveId;
				public function HRESULT(IXFeed2 *self, SYSTEMTIME* pstLastItemDownloadTime) LastItemDownloadTime;
				public function HRESULT(IXFeed2 *self, PWSTR* ppszUsername) Username;
				public function HRESULT(IXFeed2 *self, PWSTR* ppszPassword) Password;
				public function HRESULT(IXFeed2 *self, PWSTR pszUsername, PWSTR pszPassword) SetCredentials;
				public function HRESULT(IXFeed2 *self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IXFeedEvents : IUnknown
		{
			public const new Guid IID = .(0x1630852e, 0x1263, 0x465b, 0x98, 0xe5, 0xfe, 0x60, 0xff, 0xec, 0x4a, 0xc2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedEvents *self) Error;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedDeleted;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedUrlChanged;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMoved;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedDownloading;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public function HRESULT(IXFeedEvents *self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeedItem : IUnknown
		{
			public const new Guid IID = .(0xe757b2f5, 0xe73e, 0x434e, 0xa1, 0xbf, 0x2b, 0xd7, 0xc3, 0xe6, 0x0f, 0xcb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedItem *self, FEEDS_XML_INCLUDE_FLAGS fxif, IStream** pps) Xml;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszTitle) Title;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) Link;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszGuid) Guid;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszDescription) Description;
				public function HRESULT(IXFeedItem *self, SYSTEMTIME* pstPubDate) PubDate;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) Comments;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszAuthor) Author;
				public function HRESULT(IXFeedItem *self, Guid* riid, void** ppv) Enclosure;
				public function HRESULT(IXFeedItem *self, BOOL* pbIsRead) IsRead;
				public function HRESULT(IXFeedItem *self, BOOL bIsRead) SetIsRead;
				public function HRESULT(IXFeedItem *self, uint32* puiId) LocalId;
				public function HRESULT(IXFeedItem *self, Guid* riid, void** ppv) Parent;
				public function HRESULT(IXFeedItem *self) Delete;
				public function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) DownloadUrl;
				public function HRESULT(IXFeedItem *self, SYSTEMTIME* pstLastDownloadTime) LastDownloadTime;
				public function HRESULT(IXFeedItem *self, SYSTEMTIME* pstModifiedTime) Modified;
			}
		}
		[CRepr]
		public struct IXFeedItem2 : IXFeedItem
		{
			public const new Guid IID = .(0x6cda2dc7, 0x9013, 0x4522, 0x99, 0x70, 0x2a, 0x9d, 0xd9, 0xea, 0xd5, 0xa3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IXFeedItem.VTable
			{
				public function HRESULT(IXFeedItem2 *self, uint32* puiEffectiveId) EffectiveId;
			}
		}
		[CRepr]
		public struct IXFeedEnclosure : IUnknown
		{
			public const new Guid IID = .(0xbfbfb953, 0x644f, 0x4792, 0xb6, 0x9c, 0xdf, 0xac, 0xa4, 0xcb, 0xf8, 0x9a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXFeedEnclosure *self, PWSTR* ppszUrl) Url;
				public function HRESULT(IXFeedEnclosure *self, PWSTR* ppszMimeType) Type;
				public function HRESULT(IXFeedEnclosure *self, uint32* puiLength) Length;
				public function HRESULT(IXFeedEnclosure *self) AsyncDownload;
				public function HRESULT(IXFeedEnclosure *self) CancelAsyncDownload;
				public function HRESULT(IXFeedEnclosure *self, FEEDS_DOWNLOAD_STATUS* pfds) DownloadStatus;
				public function HRESULT(IXFeedEnclosure *self, FEEDS_DOWNLOAD_ERROR* pfde) LastDownloadError;
				public function HRESULT(IXFeedEnclosure *self, PWSTR* ppszPath) LocalPath;
				public function HRESULT(IXFeedEnclosure *self, Guid* riid, void** ppv) Parent;
				public function HRESULT(IXFeedEnclosure *self, PWSTR* ppszUrl) DownloadUrl;
				public function HRESULT(IXFeedEnclosure *self, PWSTR* ppszMimeType) DownloadMimeType;
				public function HRESULT(IXFeedEnclosure *self) RemoveFile;
				public function HRESULT(IXFeedEnclosure *self, PWSTR pszDownloadUrl, PWSTR pszDownloadFilePath, PWSTR pszDownloadMimeType, PWSTR pszEnclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IFeedsManager : IDispatch
		{
			public const new Guid IID = .(0xa74029cc, 0x1f1a, 0x4906, 0x88, 0xf0, 0x81, 0x06, 0x38, 0xd8, 0x65, 0x91);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedsManager *self, IDispatch** disp) get_RootFolder;
				public function HRESULT(IFeedsManager *self, BSTR feedUrl, int16* subscribed) IsSubscribed;
				public function HRESULT(IFeedsManager *self, BSTR feedPath, int16* exists) ExistsFeed;
				public function HRESULT(IFeedsManager *self, BSTR feedPath, IDispatch** disp) GetFeed;
				public function HRESULT(IFeedsManager *self, BSTR feedUrl, IDispatch** disp) GetFeedByUrl;
				public function HRESULT(IFeedsManager *self, BSTR folderPath, int16* exists) ExistsFolder;
				public function HRESULT(IFeedsManager *self, BSTR folderPath, IDispatch** disp) GetFolder;
				public function HRESULT(IFeedsManager *self, BSTR feedPath) DeleteFeed;
				public function HRESULT(IFeedsManager *self, BSTR folderPath) DeleteFolder;
				public function HRESULT(IFeedsManager *self, FEEDS_BACKGROUNDSYNC_ACTION action) BackgroundSync;
				public function HRESULT(IFeedsManager *self, FEEDS_BACKGROUNDSYNC_STATUS* status) get_BackgroundSyncStatus;
				public function HRESULT(IFeedsManager *self, int32* minutes) get_DefaultInterval;
				public function HRESULT(IFeedsManager *self, int32 minutes) put_DefaultInterval;
				public function HRESULT(IFeedsManager *self) AsyncSyncAll;
				public function HRESULT(IFeedsManager *self, BSTR feedXmlIn, BSTR* feedXmlOut) Normalize;
				public function HRESULT(IFeedsManager *self, int32* itemCountLimit) get_ItemCountLimit;
			}
		}
		[CRepr]
		public struct IFeedsEnum : IDispatch
		{
			public const new Guid IID = .(0xe3cd0028, 0x2eed, 0x4c60, 0x8f, 0xae, 0xa3, 0x22, 0x53, 0x09, 0xa8, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedsEnum *self, int32* count) get_Count;
				public function HRESULT(IFeedsEnum *self, int32 index, IDispatch** disp) Item;
				public function HRESULT(IFeedsEnum *self, IEnumVARIANT** enumVar) get__NewEnum;
			}
		}
		[CRepr]
		public struct IFeedFolder : IDispatch
		{
			public const new Guid IID = .(0x81f04ad1, 0x4194, 0x4d7d, 0x86, 0xd6, 0x11, 0x81, 0x3c, 0xec, 0x16, 0x3c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedFolder *self, IDispatch** disp) get_Feeds;
				public function HRESULT(IFeedFolder *self, IDispatch** disp) get_Subfolders;
				public function HRESULT(IFeedFolder *self, BSTR feedName, BSTR feedUrl, IDispatch** disp) CreateFeed;
				public function HRESULT(IFeedFolder *self, BSTR folderName, IDispatch** disp) CreateSubfolder;
				public function HRESULT(IFeedFolder *self, BSTR feedName, int16* exists) ExistsFeed;
				public function HRESULT(IFeedFolder *self, BSTR feedName, IDispatch** disp) GetFeed;
				public function HRESULT(IFeedFolder *self, BSTR folderName, int16* exists) ExistsSubfolder;
				public function HRESULT(IFeedFolder *self, BSTR folderName, IDispatch** disp) GetSubfolder;
				public function HRESULT(IFeedFolder *self) Delete;
				public function HRESULT(IFeedFolder *self, BSTR* folderName) get_Name;
				public function HRESULT(IFeedFolder *self, BSTR folderName) Rename;
				public function HRESULT(IFeedFolder *self, BSTR* folderPath) get_Path;
				public function HRESULT(IFeedFolder *self, BSTR newParentPath) Move;
				public function HRESULT(IFeedFolder *self, IDispatch** disp) get_Parent;
				public function HRESULT(IFeedFolder *self, int16* isRoot) get_IsRoot;
				public function HRESULT(IFeedFolder *self, int32* count) get_TotalUnreadItemCount;
				public function HRESULT(IFeedFolder *self, int32* count) get_TotalItemCount;
				public function HRESULT(IFeedFolder *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) GetWatcher;
			}
		}
		[CRepr]
		public struct IFeedFolderEvents : IDispatch
		{
			public const new Guid IID = .(0x20a59fa6, 0xa844, 0x4630, 0x9e, 0x98, 0x17, 0x5f, 0x70, 0xb4, 0xd5, 0x5b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedFolderEvents *self) Error;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FolderAdded;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FolderDeleted;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderRenamed;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderMovedFrom;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderMovedTo;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, int32 itemCountType) FolderItemCountChanged;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FeedAdded;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FeedDeleted;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedRenamed;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FeedUrlChanged;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedMovedFrom;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedMovedTo;
				public function HRESULT(IFeedFolderEvents *self, BSTR path) FeedDownloading;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public function HRESULT(IFeedFolderEvents *self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeed : IDispatch
		{
			public const new Guid IID = .(0xf7f915d8, 0x2ede, 0x42bc, 0x98, 0xe7, 0xa5, 0xd0, 0x50, 0x63, 0xa7, 0x57);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeed *self, int32 count, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) Xml;
				public function HRESULT(IFeed *self, BSTR* name) get_Name;
				public function HRESULT(IFeed *self, BSTR name) Rename;
				public function HRESULT(IFeed *self, BSTR* feedUrl) get_Url;
				public function HRESULT(IFeed *self, BSTR feedUrl) put_Url;
				public function HRESULT(IFeed *self, BSTR* feedGuid) get_LocalId;
				public function HRESULT(IFeed *self, BSTR* path) get_Path;
				public function HRESULT(IFeed *self, BSTR newParentPath) Move;
				public function HRESULT(IFeed *self, IDispatch** disp) get_Parent;
				public function HRESULT(IFeed *self, double* lastWrite) get_LastWriteTime;
				public function HRESULT(IFeed *self) Delete;
				public function HRESULT(IFeed *self) Download;
				public function HRESULT(IFeed *self) AsyncDownload;
				public function HRESULT(IFeed *self) CancelAsyncDownload;
				public function HRESULT(IFeed *self, FEEDS_SYNC_SETTING* syncSetting) get_SyncSetting;
				public function HRESULT(IFeed *self, FEEDS_SYNC_SETTING syncSetting) put_SyncSetting;
				public function HRESULT(IFeed *self, int32* minutes) get_Interval;
				public function HRESULT(IFeed *self, int32 minutes) put_Interval;
				public function HRESULT(IFeed *self, double* lastDownload) get_LastDownloadTime;
				public function HRESULT(IFeed *self, BSTR* path) get_LocalEnclosurePath;
				public function HRESULT(IFeed *self, IDispatch** disp) get_Items;
				public function HRESULT(IFeed *self, int32 itemId, IDispatch** disp) GetItem;
				public function HRESULT(IFeed *self, BSTR* title) get_Title;
				public function HRESULT(IFeed *self, BSTR* description) get_Description;
				public function HRESULT(IFeed *self, BSTR* homePage) get_Link;
				public function HRESULT(IFeed *self, BSTR* imageUrl) get_Image;
				public function HRESULT(IFeed *self, double* lastBuildDate) get_LastBuildDate;
				public function HRESULT(IFeed *self, double* lastPopulateDate) get_PubDate;
				public function HRESULT(IFeed *self, int32* ttl) get_Ttl;
				public function HRESULT(IFeed *self, BSTR* language) get_Language;
				public function HRESULT(IFeed *self, BSTR* copyright) get_Copyright;
				public function HRESULT(IFeed *self, int32* count) get_MaxItemCount;
				public function HRESULT(IFeed *self, int32 count) put_MaxItemCount;
				public function HRESULT(IFeed *self, int16* downloadEnclosuresAutomatically) get_DownloadEnclosuresAutomatically;
				public function HRESULT(IFeed *self, int16 downloadEnclosuresAutomatically) put_DownloadEnclosuresAutomatically;
				public function HRESULT(IFeed *self, FEEDS_DOWNLOAD_STATUS* status) get_DownloadStatus;
				public function HRESULT(IFeed *self, FEEDS_DOWNLOAD_ERROR* error) get_LastDownloadError;
				public function HRESULT(IFeed *self, BSTR feedXml, BSTR feedUrl) Merge;
				public function HRESULT(IFeed *self, BSTR* feedUrl) get_DownloadUrl;
				public function HRESULT(IFeed *self, int16* isList) get_IsList;
				public function HRESULT(IFeed *self) MarkAllItemsRead;
				public function HRESULT(IFeed *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) GetWatcher;
				public function HRESULT(IFeed *self, int32* count) get_UnreadItemCount;
				public function HRESULT(IFeed *self, int32* count) get_ItemCount;
			}
		}
		[CRepr]
		public struct IFeed2 : IFeed
		{
			public const new Guid IID = .(0x33f2ea09, 0x1398, 0x4ab9, 0xb6, 0xa4, 0xf9, 0x4b, 0x49, 0xd0, 0xa4, 0x2e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFeed.VTable
			{
				public function HRESULT(IFeed2 *self, int32 itemEffectiveId, IDispatch** disp) GetItemByEffectiveId;
				public function HRESULT(IFeed2 *self, double* lastItemDownloadTime) get_LastItemDownloadTime;
				public function HRESULT(IFeed2 *self, BSTR* username) get_Username;
				public function HRESULT(IFeed2 *self, BSTR* password) get_Password;
				public function HRESULT(IFeed2 *self, BSTR username, BSTR password) SetCredentials;
				public function HRESULT(IFeed2 *self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IFeedEvents : IDispatch
		{
			public const new Guid IID = .(0xabf35c99, 0x0681, 0x47ea, 0x9a, 0x8c, 0x14, 0x36, 0xa3, 0x75, 0xa9, 0x9e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedEvents *self) Error;
				public function HRESULT(IFeedEvents *self, BSTR path) FeedDeleted;
				public function HRESULT(IFeedEvents *self, BSTR path, BSTR oldPath) FeedRenamed;
				public function HRESULT(IFeedEvents *self, BSTR path) FeedUrlChanged;
				public function HRESULT(IFeedEvents *self, BSTR path, BSTR oldPath) FeedMoved;
				public function HRESULT(IFeedEvents *self, BSTR path) FeedDownloading;
				public function HRESULT(IFeedEvents *self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public function HRESULT(IFeedEvents *self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeedItem : IDispatch
		{
			public const new Guid IID = .(0x0a1e6cad, 0x0a47, 0x4da2, 0xa1, 0x3d, 0x5b, 0xaa, 0xa5, 0xc8, 0xbd, 0x4f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedItem *self, FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) Xml;
				public function HRESULT(IFeedItem *self, BSTR* title) get_Title;
				public function HRESULT(IFeedItem *self, BSTR* linkUrl) get_Link;
				public function HRESULT(IFeedItem *self, BSTR* itemGuid) get_Guid;
				public function HRESULT(IFeedItem *self, BSTR* description) get_Description;
				public function HRESULT(IFeedItem *self, double* pubDate) get_PubDate;
				public function HRESULT(IFeedItem *self, BSTR* comments) get_Comments;
				public function HRESULT(IFeedItem *self, BSTR* author) get_Author;
				public function HRESULT(IFeedItem *self, IDispatch** disp) get_Enclosure;
				public function HRESULT(IFeedItem *self, int16* isRead) get_IsRead;
				public function HRESULT(IFeedItem *self, int16 isRead) put_IsRead;
				public function HRESULT(IFeedItem *self, int32* itemId) get_LocalId;
				public function HRESULT(IFeedItem *self, IDispatch** disp) get_Parent;
				public function HRESULT(IFeedItem *self) Delete;
				public function HRESULT(IFeedItem *self, BSTR* itemUrl) get_DownloadUrl;
				public function HRESULT(IFeedItem *self, double* lastDownload) get_LastDownloadTime;
				public function HRESULT(IFeedItem *self, double* modified) get_Modified;
			}
		}
		[CRepr]
		public struct IFeedItem2 : IFeedItem
		{
			public const new Guid IID = .(0x79ac9ef4, 0xf9c1, 0x4d2b, 0xa5, 0x0b, 0xa7, 0xff, 0xba, 0x4d, 0xcf, 0x37);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IFeedItem.VTable
			{
				public function HRESULT(IFeedItem2 *self, int32* effectiveId) get_EffectiveId;
			}
		}
		[CRepr]
		public struct IFeedEnclosure : IDispatch
		{
			public const new Guid IID = .(0x361c26f7, 0x90a4, 0x4e67, 0xae, 0x09, 0x3a, 0x36, 0xa5, 0x46, 0x43, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IFeedEnclosure *self, BSTR* enclosureUrl) get_Url;
				public function HRESULT(IFeedEnclosure *self, BSTR* mimeType) get_Type;
				public function HRESULT(IFeedEnclosure *self, int32* length) get_Length;
				public function HRESULT(IFeedEnclosure *self) AsyncDownload;
				public function HRESULT(IFeedEnclosure *self) CancelAsyncDownload;
				public function HRESULT(IFeedEnclosure *self, FEEDS_DOWNLOAD_STATUS* status) get_DownloadStatus;
				public function HRESULT(IFeedEnclosure *self, FEEDS_DOWNLOAD_ERROR* error) get_LastDownloadError;
				public function HRESULT(IFeedEnclosure *self, BSTR* localPath) get_LocalPath;
				public function HRESULT(IFeedEnclosure *self, IDispatch** disp) get_Parent;
				public function HRESULT(IFeedEnclosure *self, BSTR* enclosureUrl) get_DownloadUrl;
				public function HRESULT(IFeedEnclosure *self, BSTR* mimeType) get_DownloadMimeType;
				public function HRESULT(IFeedEnclosure *self) RemoveFile;
				public function HRESULT(IFeedEnclosure *self, BSTR downloadUrl, BSTR downloadFilePath, BSTR downloadMimeType, BSTR enclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IWMPEffects : IUnknown
		{
			public const new Guid IID = .(0xd3984c13, 0xc3cb, 0x48e2, 0x8b, 0xe5, 0x51, 0x68, 0x34, 0x0b, 0x4f, 0x35);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPEffects *self, TimedLevel* pLevels, HDC hdc, RECT* prc) Render;
				public function HRESULT(IWMPEffects *self, int32 lChannelCount, int32 lSampleRate, BSTR bstrTitle) MediaInfo;
				public function HRESULT(IWMPEffects *self, uint32* pdwCapabilities) GetCapabilities;
				public function HRESULT(IWMPEffects *self, BSTR* bstrTitle) GetTitle;
				public function HRESULT(IWMPEffects *self, int32 nPreset, BSTR* bstrPresetTitle) GetPresetTitle;
				public function HRESULT(IWMPEffects *self, int32* pnPresetCount) GetPresetCount;
				public function HRESULT(IWMPEffects *self, int32 nPreset) SetCurrentPreset;
				public function HRESULT(IWMPEffects *self, int32* pnPreset) GetCurrentPreset;
				public function HRESULT(IWMPEffects *self, HWND hwndOwner) DisplayPropertyPage;
				public function HRESULT(IWMPEffects *self, BOOL fFullScreen) GoFullscreen;
				public function HRESULT(IWMPEffects *self, TimedLevel* pLevels) RenderFullScreen;
			}
		}
		[CRepr]
		public struct IWMPEffects2 : IWMPEffects
		{
			public const new Guid IID = .(0x695386ec, 0xaa3c, 0x4618, 0xa5, 0xe1, 0xdd, 0x9a, 0x8b, 0x98, 0x76, 0x32);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPEffects.VTable
			{
				public function HRESULT(IWMPEffects2 *self, IWMPCore* pPlayer) SetCore;
				public function HRESULT(IWMPEffects2 *self, HWND hwndParent) Create;
				public function HRESULT(IWMPEffects2 *self) Destroy;
				public function HRESULT(IWMPEffects2 *self, IWMPMedia* pMedia) NotifyNewMedia;
				public function HRESULT(IWMPEffects2 *self, uint32 msg, WPARAM WParam, LPARAM LParam, LRESULT* plResultParam) OnWindowMessage;
				public function HRESULT(IWMPEffects2 *self, TimedLevel* pData, BOOL fRequiredRender) RenderWindowed;
			}
		}
		[CRepr]
		public struct IWMPPluginUI : IUnknown
		{
			public const new Guid IID = .(0x4c5e8f9f, 0xad3e, 0x4bf9, 0x97, 0x53, 0xfc, 0xd3, 0x0d, 0x6d, 0x38, 0xdd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPPluginUI *self, IWMPCore* pCore) SetCore;
				public function HRESULT(IWMPPluginUI *self, HWND hwndParent, HWND* phwndWindow) Create;
				public function HRESULT(IWMPPluginUI *self) Destroy;
				public function HRESULT(IWMPPluginUI *self, HWND hwndParent) DisplayPropertyPage;
				public function HRESULT(IWMPPluginUI *self, PWSTR pwszName, VARIANT* pvarProperty) GetProperty;
				public function HRESULT(IWMPPluginUI *self, PWSTR pwszName, VARIANT* pvarProperty) SetProperty;
				public function HRESULT(IWMPPluginUI *self, MSG* lpmsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IWMPContentContainer : IUnknown
		{
			public const new Guid IID = .(0xad7f4d9c, 0x1a9f, 0x4ed2, 0x98, 0x15, 0xec, 0xc0, 0xb5, 0x8c, 0xb6, 0x16);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPContentContainer *self, uint32* pContentID) GetID;
				public function HRESULT(IWMPContentContainer *self, BSTR* pbstrPrice) GetPrice;
				public function HRESULT(IWMPContentContainer *self, BSTR* pbstrType) GetType;
				public function HRESULT(IWMPContentContainer *self, uint32* pcContent) GetContentCount;
				public function HRESULT(IWMPContentContainer *self, uint32 idxContent, BSTR* pbstrPrice) GetContentPrice;
				public function HRESULT(IWMPContentContainer *self, uint32 idxContent, uint32* pContentID) GetContentID;
			}
		}
		[CRepr]
		public struct IWMPContentContainerList : IUnknown
		{
			public const new Guid IID = .(0xa9937f78, 0x0802, 0x4af8, 0x8b, 0x8d, 0xe3, 0xf0, 0x45, 0xbc, 0x8a, 0xb5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPContentContainerList *self, WMPTransactionType* pwmptt) GetTransactionType;
				public function HRESULT(IWMPContentContainerList *self, uint32* pcContainer) GetContainerCount;
				public function HRESULT(IWMPContentContainerList *self, uint32 idxContainer, IWMPContentContainer** ppContent) GetContainer;
			}
		}
		[CRepr]
		public struct IWMPContentPartnerCallback : IUnknown
		{
			public const new Guid IID = .(0x9e8f7da2, 0x0695, 0x403c, 0xb6, 0x97, 0xda, 0x10, 0xfa, 0xfa, 0xa6, 0x76);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPContentPartnerCallback *self, WMPCallbackNotification type, VARIANT* pContext) Notify;
				public function HRESULT(IWMPContentPartnerCallback *self, HRESULT hrResult, uint32 dwBuyCookie) BuyComplete;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32 cookie, BSTR bstrTrackURL, uint32 dwServiceTrackID, BSTR bstrDownloadParams, HRESULT hrDownload) DownloadTrack;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32* pdwVersion, uint32* pdwSchemaVersion, uint32* plcid) GetCatalogVersion;
				public function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrDeviceName) UpdateDeviceComplete;
				public function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrType, BSTR bstrID, BSTR bstrFilter) ChangeView;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32 dwListCookie, uint32 cItems, uint32* prgItems) AddListContents;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32 dwListCookie, HRESULT hrSuccess) ListContentsComplete;
				public function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrMsg, BSTR bstrParam, BSTR bstrResult) SendMessageComplete;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32* pcContentIDs, uint32** pprgIDs) GetContentIDsInLibrary;
				public function HRESULT(IWMPContentPartnerCallback *self, uint32 dwCookie, uint32 contentID, HRESULT hrRefresh) RefreshLicenseComplete;
				public function HRESULT(IWMPContentPartnerCallback *self, int32 lIndex, BSTR bstrParameters) ShowPopup;
				public function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrPermission, VARIANT* pContext, HRESULT hrPermission) VerifyPermissionComplete;
			}
		}
		[CRepr]
		public struct IWMPContentPartner : IUnknown
		{
			public const new Guid IID = .(0x55455073, 0x41b5, 0x4e75, 0x87, 0xb8, 0xf1, 0x3b, 0xdb, 0x29, 0x1d, 0x08);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPContentPartner *self, IWMPContentPartnerCallback* pCallback) SetCallback;
				public function HRESULT(IWMPContentPartner *self, WMPPartnerNotification type, VARIANT* pContext) Notify;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrInfoName, VARIANT* pContext, VARIANT* pData) GetItemInfo;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrInfoName, VARIANT* pData) GetContentPartnerInfo;
				public function HRESULT(IWMPContentPartner *self, BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* prgItemIDs, uint32* pcItemIDs, WMPContextMenuInfo** pprgItems) GetCommands;
				public function HRESULT(IWMPContentPartner *self, uint32 dwCommandID, BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* rgItemIDs) InvokeCommand;
				public function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, BSTR* pbstrTotalPrice, int16* pSilentOK) CanBuySilent;
				public function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, uint32 cookie) Buy;
				public function HRESULT(IWMPContentPartner *self, WMPStreamingType st, VARIANT* pStreamContext, BSTR* pbstrURL) GetStreamingURL;
				public function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, uint32 cookie) Download;
				public function HRESULT(IWMPContentPartner *self, HRESULT hrResult, uint32 contentID, BSTR downloadTrackParam) DownloadTrackComplete;
				public function HRESULT(IWMPContentPartner *self, uint32 dwCookie, int16 fLocal, BSTR bstrURL, WMPStreamingType type, uint32 contentID, BSTR bstrRefreshReason, VARIANT* pReasonContext) RefreshLicense;
				public function HRESULT(IWMPContentPartner *self, uint32 dwCatalogVersion, uint32 dwCatalogSchemaVersion, uint32 catalogLCID, uint32* pdwNewCatalogVersion, BSTR* pbstrCatalogURL, VARIANT* pExpirationDate) GetCatalogURL;
				public function HRESULT(IWMPContentPartner *self, WMPTaskType task, BSTR location, VARIANT* pContext, BSTR clickLocation, VARIANT* pClickContext, BSTR bstrFilter, BSTR bstrViewParams, BSTR* pbstrTemplateURL, WMPTemplateSize* pTemplateSize) GetTemplate;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrDeviceName) UpdateDevice;
				public function HRESULT(IWMPContentPartner *self, BSTR location, VARIANT* pContext, BSTR bstrListType, BSTR bstrParams, uint32 dwListCookie) GetListContents;
				public function HRESULT(IWMPContentPartner *self, BLOB userInfo, BLOB pwdInfo, int16 fUsedCachedCreds, int16 fOkToCache) Login;
				public function HRESULT(IWMPContentPartner *self, BLOB userInfo, BLOB pwdInfo) Authenticate;
				public function HRESULT(IWMPContentPartner *self) Logout;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrMsg, BSTR bstrParam) SendMessage;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrStationEventType, uint32 StationId, uint32 PlaylistIndex, uint32 TrackID, BSTR TrackData, uint32 dwSecondsPlayed) StationEvent;
				public function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pListBase, IWMPContentContainerList* pListCompare, int32* pResult) CompareContainerListPrices;
				public function HRESULT(IWMPContentPartner *self, BSTR bstrPermission, VARIANT* pContext) VerifyPermission;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService : IUnknown
		{
			public const new Guid IID = .(0x376055f8, 0x2a59, 0x4a73, 0x95, 0x01, 0xdc, 0xa5, 0x27, 0x3a, 0x7a, 0x10);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPMedia* pMedia, BOOL* pfAllowPlay) allowPlay;
				public function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowBurn) allowCDBurn;
				public function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowTransfer) allowPDATransfer;
				public function HRESULT(IWMPSubscriptionService *self, HWND hwnd) startBackgroundProcessing;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionServiceCallback : IUnknown
		{
			public const new Guid IID = .(0xdd01d127, 0x2dc2, 0x4c3a, 0x87, 0x6e, 0x63, 0x31, 0x20, 0x79, 0xf9, 0xb0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IWMPSubscriptionServiceCallback *self, HRESULT hrResult) onComplete;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService2 : IWMPSubscriptionService
		{
			public const new Guid IID = .(0xa94c120e, 0xd600, 0x4ec6, 0xb0, 0x5e, 0xec, 0x9d, 0x56, 0xd8, 0x4d, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPSubscriptionService.VTable
			{
				public function HRESULT(IWMPSubscriptionService2 *self) stopBackgroundProcessing;
				public function HRESULT(IWMPSubscriptionService2 *self, WMPSubscriptionServiceEvent event) serviceEvent;
				public function HRESULT(IWMPSubscriptionService2 *self, BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) deviceAvailable;
				public function HRESULT(IWMPSubscriptionService2 *self, BSTR bstrFilename, BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) prepareForSync;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem : IDispatch
		{
			public const new Guid IID = .(0xc9470e8e, 0x3f6b, 0x46a9, 0xa0, 0xa9, 0x45, 0x28, 0x15, 0xc3, 0x42, 0x97);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPDownloadItem *self, BSTR* pbstrURL) get_sourceURL;
				public function HRESULT(IWMPDownloadItem *self, int32* plSize) get_size;
				public function HRESULT(IWMPDownloadItem *self, BSTR* pbstrType) get_type;
				public function HRESULT(IWMPDownloadItem *self, int32* plProgress) get_progress;
				public function HRESULT(IWMPDownloadItem *self, WMPSubscriptionDownloadState* pwmpsdls) get_downloadState;
				public function HRESULT(IWMPDownloadItem *self) pause;
				public function HRESULT(IWMPDownloadItem *self) resume;
				public function HRESULT(IWMPDownloadItem *self) cancel;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem2 : IWMPDownloadItem
		{
			public const new Guid IID = .(0x9fbb3336, 0x6da3, 0x479d, 0xb8, 0xff, 0x67, 0xd4, 0x6e, 0x20, 0xa9, 0x87);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IWMPDownloadItem.VTable
			{
				public function HRESULT(IWMPDownloadItem2 *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPDownloadCollection : IDispatch
		{
			public const new Guid IID = .(0x0a319c7f, 0x85f9, 0x436c, 0xb8, 0x8e, 0x82, 0xfd, 0x88, 0x00, 0x0e, 0x1c);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPDownloadCollection *self, int32* plId) get_id;
				public function HRESULT(IWMPDownloadCollection *self, int32* plCount) get_count;
				public function HRESULT(IWMPDownloadCollection *self, int32 lItem, IWMPDownloadItem2** ppDownload) item;
				public function HRESULT(IWMPDownloadCollection *self, BSTR bstrSourceURL, BSTR bstrType, IWMPDownloadItem2** ppDownload) startDownload;
				public function HRESULT(IWMPDownloadCollection *self, int32 lItem) removeItem;
				public function HRESULT(IWMPDownloadCollection *self) Clear;
			}
		}
		[CRepr]
		public struct IWMPDownloadManager : IDispatch
		{
			public const new Guid IID = .(0xe15e9ad1, 0x8f20, 0x4cc4, 0x9e, 0xc7, 0x1a, 0x32, 0x8c, 0xa8, 0x6a, 0x0d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public function HRESULT(IWMPDownloadManager *self, int32 lCollectionId, IWMPDownloadCollection** ppCollection) getDownloadCollection;
				public function HRESULT(IWMPDownloadManager *self, IWMPDownloadCollection** ppCollection) createDownloadCollection;
			}
		}
		
	}
}
