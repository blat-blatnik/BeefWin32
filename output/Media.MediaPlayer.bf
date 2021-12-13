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
		
		public struct IWMPErrorItem {}
		public struct IWMPError {}
		public struct IWMPMedia {}
		public struct IWMPControls {}
		public struct IWMPSettings {}
		public struct IWMPClosedCaption {}
		public struct IWMPPlaylist {}
		public struct IWMPCdrom {}
		public struct IWMPCdromCollection {}
		public struct IWMPStringCollection {}
		public struct IWMPMediaCollection {}
		public struct IWMPPlaylistArray {}
		public struct IWMPPlaylistCollection {}
		public struct IWMPNetwork {}
		public struct IWMPCore {}
		public struct IWMPPlayer {}
		public struct IWMPPlayer2 {}
		public struct IWMPMedia2 {}
		public struct IWMPControls2 {}
		public struct IWMPDVD {}
		public struct IWMPCore2 {}
		public struct IWMPPlayer3 {}
		public struct IWMPErrorItem2 {}
		public struct IWMPRemoteMediaServices {}
		public struct IWMPSkinManager {}
		public struct IWMPMetadataPicture {}
		public struct IWMPMetadataText {}
		public struct IWMPMedia3 {}
		public struct IWMPSettings2 {}
		public struct IWMPControls3 {}
		public struct IWMPClosedCaption2 {}
		public struct IWMPPlayerApplication {}
		public struct IWMPCore3 {}
		public struct IWMPPlayer4 {}
		public struct IWMPPlayerServices {}
		public struct IWMPSyncDevice {}
		public struct IWMPSyncServices {}
		public struct IWMPPlayerServices2 {}
		public struct IWMPCdromRip {}
		public struct IWMPCdromBurn {}
		public struct IWMPQuery {}
		public struct IWMPMediaCollection2 {}
		public struct IWMPStringCollection2 {}
		public struct IWMPLibrary {}
		public struct IWMPLibraryServices {}
		public struct IWMPLibrarySharingServices {}
		public struct IWMPFolderMonitorServices {}
		public struct IWMPSyncDevice2 {}
		public struct IWMPSyncDevice3 {}
		public struct IWMPLibrary2 {}
		public struct IWMPEvents {}
		public struct IWMPEvents2 {}
		public struct IWMPEvents3 {}
		public struct IWMPEvents4 {}
		public struct _WMPOCXEvents {}
		public struct IWMPNodeRealEstate {}
		public struct IWMPNodeRealEstateHost {}
		public struct IWMPNodeWindowed {}
		public struct IWMPNodeWindowedHost {}
		public struct IWMPWindowMessageSink {}
		public struct IWMPNodeWindowless {}
		public struct IWMPNodeWindowlessHost {}
		public struct IWMPVideoRenderConfig {}
		public struct IWMPAudioRenderConfig {}
		public struct IWMPRenderConfig {}
		public struct IWMPServices {}
		public struct IWMPMediaPluginRegistrar {}
		public struct IWMPPlugin {}
		public struct IWMPPluginEnable {}
		public struct IWMPGraphCreation {}
		public struct IWMPConvert {}
		public struct IWMPTranscodePolicy {}
		public struct IWMPUserEventSink {}
		public struct IXFeedsManager {}
		public struct IXFeedsEnum {}
		public struct IXFeedFolder {}
		public struct IXFeedFolderEvents {}
		public struct IXFeed {}
		public struct IXFeed2 {}
		public struct IXFeedEvents {}
		public struct IXFeedItem {}
		public struct IXFeedItem2 {}
		public struct IXFeedEnclosure {}
		public struct IFeedsManager {}
		public struct IFeedsEnum {}
		public struct IFeedFolder {}
		public struct IFeedFolderEvents {}
		public struct IFeed {}
		public struct IFeed2 {}
		public struct IFeedEvents {}
		public struct IFeedItem {}
		public struct IFeedItem2 {}
		public struct IFeedEnclosure {}
		public struct IWMPEffects {}
		public struct IWMPEffects2 {}
		public struct IWMPPluginUI {}
		public struct IWMPContentContainer {}
		public struct IWMPContentContainerList {}
		public struct IWMPContentPartnerCallback {}
		public struct IWMPContentPartner {}
		public struct IWMPSubscriptionService {}
		public struct IWMPSubscriptionServiceCallback {}
		public struct IWMPSubscriptionService2 {}
		public struct IWMPDownloadItem {}
		public struct IWMPDownloadItem2 {}
		public struct IWMPDownloadCollection {}
		public struct IWMPDownloadManager {}
		
	}
}
