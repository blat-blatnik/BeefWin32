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
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMPSyncState : int32
		{
			Unknown = 0,
			Synchronizing = 1,
			Stopped = 2,
			Estimating = 3,
			Last = 4,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMPRipState : int32
		{
			Unknown = 0,
			Ripping = 1,
			Stopped = 2,
		}
		[AllowDuplicates]
		public enum WMPBurnFormat : int32
		{
			AudioCD = 0,
			DataCD = 1,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
		[AllowDuplicates]
		public enum WMPLibraryType : int32
		{
			Unknown = 0,
			All = 1,
			Local = 2,
			Remote = 3,
			Disc = 4,
			PortableDevice = 5,
		}
		[AllowDuplicates]
		public enum WMPFolderScanState : int32
		{
			Unknown = 0,
			Scanning = 1,
			Updating = 2,
			Stopped = 3,
		}
		[AllowDuplicates]
		public enum WMPServices_StreamState : int32
		{
			Stop = 0,
			Pause = 1,
			Play = 2,
		}
		[AllowDuplicates]
		public enum WMPPlugin_Caps : int32
		{
			WMPPlugin_Caps_CannotConvertFormats = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_BACKGROUNDSYNC_ACTION : int32
		{
			DISABLE = 0,
			ENABLE = 1,
			RUNNOW = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_BACKGROUNDSYNC_STATUS : int32
		{
			DISABLED = 0,
			ENABLED = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_EVENTS_SCOPE : int32
		{
			ALL = 0,
			SELF_ONLY = 1,
			SELF_AND_CHILDREN_ONLY = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_EVENTS_MASK : int32
		{
			OLDEREVENTS = 1,
			EEDEVENTS = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_SORT_PROPERTY : int32
		{
			NONE = 0,
			PUBDATE = 1,
			DOWNLOADTIME = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_SORT_ORDER : int32
		{
			NONE = 0,
			ASCENDING = 1,
			DESCENDING = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_FILTER_FLAGS : int32
		{
			ALL = 0,
			UNREAD = 1,
			READ = 2,
		}
		[AllowDuplicates]
		public enum FEEDS_XML_INCLUDE_FLAGS : int32
		{
			NONE = 0,
			CF_EXTENSIONS = 1,
		}
		[AllowDuplicates]
		public enum FEEDS_DOWNLOAD_STATUS : int32
		{
			NONE = 0,
			PENDING = 1,
			DOWNLOADING = 2,
			DOWNLOADED = 3,
			DOWNLOAD_FAILED = 4,
		}
		[AllowDuplicates]
		public enum FEEDS_SYNC_SETTING : int32
		{
			DEFAULT = 0,
			INTERVAL = 1,
			MANUAL = 2,
			SUGGESTED = 3,
		}
		[AllowDuplicates]
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
		[AllowDuplicates]
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
			BackgroundProcessingBegin = 1,
			BackgroundProcessingEnd = 2,
			CatalogDownloadFailure = 3,
			CatalogDownloadComplete = 4,
		}
		[AllowDuplicates]
		public enum WMPCallbackNotification : int32
		{
			LoginStateChange = 1,
			AuthResult = 2,
			LicenseUpdated = 3,
			NewCatalogAvailable = 4,
			NewPluginAvailable = 5,
			DisableRadioSkipping = 6,
		}
		[AllowDuplicates]
		public enum WMPTaskType : int32
		{
			Browse = 1,
			Sync = 2,
			Burn = 3,
			Current = 4,
		}
		[AllowDuplicates]
		public enum WMPTransactionType : int32
		{
			NoTransaction = 0,
			Download = 1,
			Buy = 2,
		}
		[AllowDuplicates]
		public enum WMPTemplateSize : int32
		{
			Small = 0,
			Medium = 1,
			Large = 2,
		}
		[AllowDuplicates]
		public enum WMPStreamingType : int32
		{
			Unknown = 0,
			Music = 1,
			Video = 2,
			Radio = 3,
		}
		[AllowDuplicates]
		public enum WMPAccountType : int32
		{
			BuyOnly = 1,
			Subscription = 2,
			Janus = 3,
		}
		[AllowDuplicates]
		public enum WMPSubscriptionServiceEvent : int32
		{
			CurrentBegin = 1,
			CurrentEnd = 2,
			FullBegin = 3,
			FullEnd = 4,
		}
		[AllowDuplicates]
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_errorCode(int32* phr) mut
			{
				return VT.get_errorCode(&this, phr);
			}
			public HRESULT get_errorDescription(BSTR* pbstrDescription) mut
			{
				return VT.get_errorDescription(&this, pbstrDescription);
			}
			public HRESULT get_errorContext(VARIANT* pvarContext) mut
			{
				return VT.get_errorContext(&this, pvarContext);
			}
			public HRESULT get_remedy(int32* plRemedy) mut
			{
				return VT.get_remedy(&this, plRemedy);
			}
			public HRESULT get_customUrl(BSTR* pbstrCustomUrl) mut
			{
				return VT.get_customUrl(&this, pbstrCustomUrl);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPErrorItem *self, int32* phr) get_errorCode;
				public new function HRESULT(IWMPErrorItem *self, BSTR* pbstrDescription) get_errorDescription;
				public new function HRESULT(IWMPErrorItem *self, VARIANT* pvarContext) get_errorContext;
				public new function HRESULT(IWMPErrorItem *self, int32* plRemedy) get_remedy;
				public new function HRESULT(IWMPErrorItem *self, BSTR* pbstrCustomUrl) get_customUrl;
			}
		}
		[CRepr]
		public struct IWMPError : IDispatch
		{
			public const new Guid IID = .(0xa12dcf7d, 0x14ab, 0x4c1b, 0xa8, 0xcd, 0x63, 0x90, 0x9f, 0x06, 0x02, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT clearErrorQueue() mut
			{
				return VT.clearErrorQueue(&this);
			}
			public HRESULT get_errorCount(int32* plNumErrors) mut
			{
				return VT.get_errorCount(&this, plNumErrors);
			}
			public HRESULT get_item(int32 dwIndex, IWMPErrorItem** ppErrorItem) mut
			{
				return VT.get_item(&this, dwIndex, ppErrorItem);
			}
			public HRESULT webHelp() mut
			{
				return VT.webHelp(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPError *self) clearErrorQueue;
				public new function HRESULT(IWMPError *self, int32* plNumErrors) get_errorCount;
				public new function HRESULT(IWMPError *self, int32 dwIndex, IWMPErrorItem** ppErrorItem) get_item;
				public new function HRESULT(IWMPError *self) webHelp;
			}
		}
		[CRepr]
		public struct IWMPMedia : IDispatch
		{
			public const new Guid IID = .(0x94d55e95, 0x3fac, 0x11d3, 0xb1, 0x55, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isIdentical(IWMPMedia* pIWMPMedia, int16* pvbool) mut
			{
				return VT.get_isIdentical(&this, pIWMPMedia, pvbool);
			}
			public HRESULT get_sourceURL(BSTR* pbstrSourceURL) mut
			{
				return VT.get_sourceURL(&this, pbstrSourceURL);
			}
			public HRESULT get_name(BSTR* pbstrName) mut
			{
				return VT.get_name(&this, pbstrName);
			}
			public HRESULT put_name(BSTR bstrName) mut
			{
				return VT.put_name(&this, bstrName);
			}
			public HRESULT get_imageSourceWidth(int32* pWidth) mut
			{
				return VT.get_imageSourceWidth(&this, pWidth);
			}
			public HRESULT get_imageSourceHeight(int32* pHeight) mut
			{
				return VT.get_imageSourceHeight(&this, pHeight);
			}
			public HRESULT get_markerCount(int32* pMarkerCount) mut
			{
				return VT.get_markerCount(&this, pMarkerCount);
			}
			public HRESULT getMarkerTime(int32 MarkerNum, double* pMarkerTime) mut
			{
				return VT.getMarkerTime(&this, MarkerNum, pMarkerTime);
			}
			public HRESULT getMarkerName(int32 MarkerNum, BSTR* pbstrMarkerName) mut
			{
				return VT.getMarkerName(&this, MarkerNum, pbstrMarkerName);
			}
			public HRESULT get_duration(double* pDuration) mut
			{
				return VT.get_duration(&this, pDuration);
			}
			public HRESULT get_durationString(BSTR* pbstrDuration) mut
			{
				return VT.get_durationString(&this, pbstrDuration);
			}
			public HRESULT get_attributeCount(int32* plCount) mut
			{
				return VT.get_attributeCount(&this, plCount);
			}
			public HRESULT getAttributeName(int32 lIndex, BSTR* pbstrItemName) mut
			{
				return VT.getAttributeName(&this, lIndex, pbstrItemName);
			}
			public HRESULT getItemInfo(BSTR bstrItemName, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrItemName, pbstrVal);
			}
			public HRESULT setItemInfo(BSTR bstrItemName, BSTR bstrVal) mut
			{
				return VT.setItemInfo(&this, bstrItemName, bstrVal);
			}
			public HRESULT getItemInfoByAtom(int32 lAtom, BSTR* pbstrVal) mut
			{
				return VT.getItemInfoByAtom(&this, lAtom, pbstrVal);
			}
			public HRESULT isMemberOf(IWMPPlaylist* pPlaylist, int16* pvarfIsMemberOf) mut
			{
				return VT.isMemberOf(&this, pPlaylist, pvarfIsMemberOf);
			}
			public HRESULT isReadOnlyItem(BSTR bstrItemName, int16* pvarfIsReadOnly) mut
			{
				return VT.isReadOnlyItem(&this, bstrItemName, pvarfIsReadOnly);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPMedia *self, IWMPMedia* pIWMPMedia, int16* pvbool) get_isIdentical;
				public new function HRESULT(IWMPMedia *self, BSTR* pbstrSourceURL) get_sourceURL;
				public new function HRESULT(IWMPMedia *self, BSTR* pbstrName) get_name;
				public new function HRESULT(IWMPMedia *self, BSTR bstrName) put_name;
				public new function HRESULT(IWMPMedia *self, int32* pWidth) get_imageSourceWidth;
				public new function HRESULT(IWMPMedia *self, int32* pHeight) get_imageSourceHeight;
				public new function HRESULT(IWMPMedia *self, int32* pMarkerCount) get_markerCount;
				public new function HRESULT(IWMPMedia *self, int32 MarkerNum, double* pMarkerTime) getMarkerTime;
				public new function HRESULT(IWMPMedia *self, int32 MarkerNum, BSTR* pbstrMarkerName) getMarkerName;
				public new function HRESULT(IWMPMedia *self, double* pDuration) get_duration;
				public new function HRESULT(IWMPMedia *self, BSTR* pbstrDuration) get_durationString;
				public new function HRESULT(IWMPMedia *self, int32* plCount) get_attributeCount;
				public new function HRESULT(IWMPMedia *self, int32 lIndex, BSTR* pbstrItemName) getAttributeName;
				public new function HRESULT(IWMPMedia *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
				public new function HRESULT(IWMPMedia *self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
				public new function HRESULT(IWMPMedia *self, int32 lAtom, BSTR* pbstrVal) getItemInfoByAtom;
				public new function HRESULT(IWMPMedia *self, IWMPPlaylist* pPlaylist, int16* pvarfIsMemberOf) isMemberOf;
				public new function HRESULT(IWMPMedia *self, BSTR bstrItemName, int16* pvarfIsReadOnly) isReadOnlyItem;
			}
		}
		[CRepr]
		public struct IWMPControls : IDispatch
		{
			public const new Guid IID = .(0x74c09e02, 0xf828, 0x11d2, 0xa7, 0x4b, 0x00, 0xa0, 0xc9, 0x05, 0xf3, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, int16* pIsAvailable) mut
			{
				return VT.get_isAvailable(&this, bstrItem, pIsAvailable);
			}
			public HRESULT play() mut
			{
				return VT.play(&this);
			}
			public HRESULT stop() mut
			{
				return VT.stop(&this);
			}
			public HRESULT pause() mut
			{
				return VT.pause(&this);
			}
			public HRESULT fastForward() mut
			{
				return VT.fastForward(&this);
			}
			public HRESULT fastReverse() mut
			{
				return VT.fastReverse(&this);
			}
			public HRESULT get_currentPosition(double* pdCurrentPosition) mut
			{
				return VT.get_currentPosition(&this, pdCurrentPosition);
			}
			public HRESULT put_currentPosition(double dCurrentPosition) mut
			{
				return VT.put_currentPosition(&this, dCurrentPosition);
			}
			public HRESULT get_currentPositionString(BSTR* pbstrCurrentPosition) mut
			{
				return VT.get_currentPositionString(&this, pbstrCurrentPosition);
			}
			public HRESULT next() mut
			{
				return VT.next(&this);
			}
			public HRESULT previous() mut
			{
				return VT.previous(&this);
			}
			public HRESULT get_currentItem(IWMPMedia** ppIWMPMedia) mut
			{
				return VT.get_currentItem(&this, ppIWMPMedia);
			}
			public HRESULT put_currentItem(IWMPMedia* pIWMPMedia) mut
			{
				return VT.put_currentItem(&this, pIWMPMedia);
			}
			public HRESULT get_currentMarker(int32* plMarker) mut
			{
				return VT.get_currentMarker(&this, plMarker);
			}
			public HRESULT put_currentMarker(int32 lMarker) mut
			{
				return VT.put_currentMarker(&this, lMarker);
			}
			public HRESULT playItem(IWMPMedia* pIWMPMedia) mut
			{
				return VT.playItem(&this, pIWMPMedia);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPControls *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public new function HRESULT(IWMPControls *self) play;
				public new function HRESULT(IWMPControls *self) stop;
				public new function HRESULT(IWMPControls *self) pause;
				public new function HRESULT(IWMPControls *self) fastForward;
				public new function HRESULT(IWMPControls *self) fastReverse;
				public new function HRESULT(IWMPControls *self, double* pdCurrentPosition) get_currentPosition;
				public new function HRESULT(IWMPControls *self, double dCurrentPosition) put_currentPosition;
				public new function HRESULT(IWMPControls *self, BSTR* pbstrCurrentPosition) get_currentPositionString;
				public new function HRESULT(IWMPControls *self) next;
				public new function HRESULT(IWMPControls *self) previous;
				public new function HRESULT(IWMPControls *self, IWMPMedia** ppIWMPMedia) get_currentItem;
				public new function HRESULT(IWMPControls *self, IWMPMedia* pIWMPMedia) put_currentItem;
				public new function HRESULT(IWMPControls *self, int32* plMarker) get_currentMarker;
				public new function HRESULT(IWMPControls *self, int32 lMarker) put_currentMarker;
				public new function HRESULT(IWMPControls *self, IWMPMedia* pIWMPMedia) playItem;
			}
		}
		[CRepr]
		public struct IWMPSettings : IDispatch
		{
			public const new Guid IID = .(0x9104d1ab, 0x80c9, 0x4fed, 0xab, 0xf0, 0x2e, 0x64, 0x17, 0xa6, 0xdf, 0x14);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, int16* pIsAvailable) mut
			{
				return VT.get_isAvailable(&this, bstrItem, pIsAvailable);
			}
			public HRESULT get_autoStart(int16* pfAutoStart) mut
			{
				return VT.get_autoStart(&this, pfAutoStart);
			}
			public HRESULT put_autoStart(int16 fAutoStart) mut
			{
				return VT.put_autoStart(&this, fAutoStart);
			}
			public HRESULT get_baseURL(BSTR* pbstrBaseURL) mut
			{
				return VT.get_baseURL(&this, pbstrBaseURL);
			}
			public HRESULT put_baseURL(BSTR bstrBaseURL) mut
			{
				return VT.put_baseURL(&this, bstrBaseURL);
			}
			public HRESULT get_defaultFrame(BSTR* pbstrDefaultFrame) mut
			{
				return VT.get_defaultFrame(&this, pbstrDefaultFrame);
			}
			public HRESULT put_defaultFrame(BSTR bstrDefaultFrame) mut
			{
				return VT.put_defaultFrame(&this, bstrDefaultFrame);
			}
			public HRESULT get_invokeURLs(int16* pfInvokeURLs) mut
			{
				return VT.get_invokeURLs(&this, pfInvokeURLs);
			}
			public HRESULT put_invokeURLs(int16 fInvokeURLs) mut
			{
				return VT.put_invokeURLs(&this, fInvokeURLs);
			}
			public HRESULT get_mute(int16* pfMute) mut
			{
				return VT.get_mute(&this, pfMute);
			}
			public HRESULT put_mute(int16 fMute) mut
			{
				return VT.put_mute(&this, fMute);
			}
			public HRESULT get_playCount(int32* plCount) mut
			{
				return VT.get_playCount(&this, plCount);
			}
			public HRESULT put_playCount(int32 lCount) mut
			{
				return VT.put_playCount(&this, lCount);
			}
			public HRESULT get_rate(double* pdRate) mut
			{
				return VT.get_rate(&this, pdRate);
			}
			public HRESULT put_rate(double dRate) mut
			{
				return VT.put_rate(&this, dRate);
			}
			public HRESULT get_balance(int32* plBalance) mut
			{
				return VT.get_balance(&this, plBalance);
			}
			public HRESULT put_balance(int32 lBalance) mut
			{
				return VT.put_balance(&this, lBalance);
			}
			public HRESULT get_volume(int32* plVolume) mut
			{
				return VT.get_volume(&this, plVolume);
			}
			public HRESULT put_volume(int32 lVolume) mut
			{
				return VT.put_volume(&this, lVolume);
			}
			public HRESULT getMode(BSTR bstrMode, int16* pvarfMode) mut
			{
				return VT.getMode(&this, bstrMode, pvarfMode);
			}
			public HRESULT setMode(BSTR bstrMode, int16 varfMode) mut
			{
				return VT.setMode(&this, bstrMode, varfMode);
			}
			public HRESULT get_enableErrorDialogs(int16* pfEnableErrorDialogs) mut
			{
				return VT.get_enableErrorDialogs(&this, pfEnableErrorDialogs);
			}
			public HRESULT put_enableErrorDialogs(int16 fEnableErrorDialogs) mut
			{
				return VT.put_enableErrorDialogs(&this, fEnableErrorDialogs);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPSettings *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public new function HRESULT(IWMPSettings *self, int16* pfAutoStart) get_autoStart;
				public new function HRESULT(IWMPSettings *self, int16 fAutoStart) put_autoStart;
				public new function HRESULT(IWMPSettings *self, BSTR* pbstrBaseURL) get_baseURL;
				public new function HRESULT(IWMPSettings *self, BSTR bstrBaseURL) put_baseURL;
				public new function HRESULT(IWMPSettings *self, BSTR* pbstrDefaultFrame) get_defaultFrame;
				public new function HRESULT(IWMPSettings *self, BSTR bstrDefaultFrame) put_defaultFrame;
				public new function HRESULT(IWMPSettings *self, int16* pfInvokeURLs) get_invokeURLs;
				public new function HRESULT(IWMPSettings *self, int16 fInvokeURLs) put_invokeURLs;
				public new function HRESULT(IWMPSettings *self, int16* pfMute) get_mute;
				public new function HRESULT(IWMPSettings *self, int16 fMute) put_mute;
				public new function HRESULT(IWMPSettings *self, int32* plCount) get_playCount;
				public new function HRESULT(IWMPSettings *self, int32 lCount) put_playCount;
				public new function HRESULT(IWMPSettings *self, double* pdRate) get_rate;
				public new function HRESULT(IWMPSettings *self, double dRate) put_rate;
				public new function HRESULT(IWMPSettings *self, int32* plBalance) get_balance;
				public new function HRESULT(IWMPSettings *self, int32 lBalance) put_balance;
				public new function HRESULT(IWMPSettings *self, int32* plVolume) get_volume;
				public new function HRESULT(IWMPSettings *self, int32 lVolume) put_volume;
				public new function HRESULT(IWMPSettings *self, BSTR bstrMode, int16* pvarfMode) getMode;
				public new function HRESULT(IWMPSettings *self, BSTR bstrMode, int16 varfMode) setMode;
				public new function HRESULT(IWMPSettings *self, int16* pfEnableErrorDialogs) get_enableErrorDialogs;
				public new function HRESULT(IWMPSettings *self, int16 fEnableErrorDialogs) put_enableErrorDialogs;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption : IDispatch
		{
			public const new Guid IID = .(0x4f2df574, 0xc588, 0x11d3, 0x9e, 0xd0, 0x00, 0xc0, 0x4f, 0xb6, 0xe9, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SAMIStyle(BSTR* pbstrSAMIStyle) mut
			{
				return VT.get_SAMIStyle(&this, pbstrSAMIStyle);
			}
			public HRESULT put_SAMIStyle(BSTR bstrSAMIStyle) mut
			{
				return VT.put_SAMIStyle(&this, bstrSAMIStyle);
			}
			public HRESULT get_SAMILang(BSTR* pbstrSAMILang) mut
			{
				return VT.get_SAMILang(&this, pbstrSAMILang);
			}
			public HRESULT put_SAMILang(BSTR bstrSAMILang) mut
			{
				return VT.put_SAMILang(&this, bstrSAMILang);
			}
			public HRESULT get_SAMIFileName(BSTR* pbstrSAMIFileName) mut
			{
				return VT.get_SAMIFileName(&this, pbstrSAMIFileName);
			}
			public HRESULT put_SAMIFileName(BSTR bstrSAMIFileName) mut
			{
				return VT.put_SAMIFileName(&this, bstrSAMIFileName);
			}
			public HRESULT get_captioningId(BSTR* pbstrCaptioningID) mut
			{
				return VT.get_captioningId(&this, pbstrCaptioningID);
			}
			public HRESULT put_captioningId(BSTR bstrCaptioningID) mut
			{
				return VT.put_captioningId(&this, bstrCaptioningID);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMIStyle) get_SAMIStyle;
				public new function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMIStyle) put_SAMIStyle;
				public new function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMILang) get_SAMILang;
				public new function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMILang) put_SAMILang;
				public new function HRESULT(IWMPClosedCaption *self, BSTR* pbstrSAMIFileName) get_SAMIFileName;
				public new function HRESULT(IWMPClosedCaption *self, BSTR bstrSAMIFileName) put_SAMIFileName;
				public new function HRESULT(IWMPClosedCaption *self, BSTR* pbstrCaptioningID) get_captioningId;
				public new function HRESULT(IWMPClosedCaption *self, BSTR bstrCaptioningID) put_captioningId;
			}
		}
		[CRepr]
		public struct IWMPPlaylist : IDispatch
		{
			public const new Guid IID = .(0xd5f0f4f1, 0x130c, 0x11d3, 0xb1, 0x4e, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT get_name(BSTR* pbstrName) mut
			{
				return VT.get_name(&this, pbstrName);
			}
			public HRESULT put_name(BSTR bstrName) mut
			{
				return VT.put_name(&this, bstrName);
			}
			public HRESULT get_attributeCount(int32* plCount) mut
			{
				return VT.get_attributeCount(&this, plCount);
			}
			public HRESULT get_attributeName(int32 lIndex, BSTR* pbstrAttributeName) mut
			{
				return VT.get_attributeName(&this, lIndex, pbstrAttributeName);
			}
			public HRESULT get_item(int32 lIndex, IWMPMedia** ppIWMPMedia) mut
			{
				return VT.get_item(&this, lIndex, ppIWMPMedia);
			}
			public HRESULT getItemInfo(BSTR bstrName, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrName, pbstrVal);
			}
			public HRESULT setItemInfo(BSTR bstrName, BSTR bstrValue) mut
			{
				return VT.setItemInfo(&this, bstrName, bstrValue);
			}
			public HRESULT get_isIdentical(IWMPPlaylist* pIWMPPlaylist, int16* pvbool) mut
			{
				return VT.get_isIdentical(&this, pIWMPPlaylist, pvbool);
			}
			public HRESULT clear() mut
			{
				return VT.clear(&this);
			}
			public HRESULT insertItem(int32 lIndex, IWMPMedia* pIWMPMedia) mut
			{
				return VT.insertItem(&this, lIndex, pIWMPMedia);
			}
			public HRESULT appendItem(IWMPMedia* pIWMPMedia) mut
			{
				return VT.appendItem(&this, pIWMPMedia);
			}
			public HRESULT removeItem(IWMPMedia* pIWMPMedia) mut
			{
				return VT.removeItem(&this, pIWMPMedia);
			}
			public HRESULT moveItem(int32 lIndexOld, int32 lIndexNew) mut
			{
				return VT.moveItem(&this, lIndexOld, lIndexNew);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPPlaylist *self, int32* plCount) get_count;
				public new function HRESULT(IWMPPlaylist *self, BSTR* pbstrName) get_name;
				public new function HRESULT(IWMPPlaylist *self, BSTR bstrName) put_name;
				public new function HRESULT(IWMPPlaylist *self, int32* plCount) get_attributeCount;
				public new function HRESULT(IWMPPlaylist *self, int32 lIndex, BSTR* pbstrAttributeName) get_attributeName;
				public new function HRESULT(IWMPPlaylist *self, int32 lIndex, IWMPMedia** ppIWMPMedia) get_item;
				public new function HRESULT(IWMPPlaylist *self, BSTR bstrName, BSTR* pbstrVal) getItemInfo;
				public new function HRESULT(IWMPPlaylist *self, BSTR bstrName, BSTR bstrValue) setItemInfo;
				public new function HRESULT(IWMPPlaylist *self, IWMPPlaylist* pIWMPPlaylist, int16* pvbool) get_isIdentical;
				public new function HRESULT(IWMPPlaylist *self) clear;
				public new function HRESULT(IWMPPlaylist *self, int32 lIndex, IWMPMedia* pIWMPMedia) insertItem;
				public new function HRESULT(IWMPPlaylist *self, IWMPMedia* pIWMPMedia) appendItem;
				public new function HRESULT(IWMPPlaylist *self, IWMPMedia* pIWMPMedia) removeItem;
				public new function HRESULT(IWMPPlaylist *self, int32 lIndexOld, int32 lIndexNew) moveItem;
			}
		}
		[CRepr]
		public struct IWMPCdrom : IDispatch
		{
			public const new Guid IID = .(0xcfab6e98, 0x8730, 0x11d3, 0xb3, 0x88, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_driveSpecifier(BSTR* pbstrDrive) mut
			{
				return VT.get_driveSpecifier(&this, pbstrDrive);
			}
			public HRESULT get_playlist(IWMPPlaylist** ppPlaylist) mut
			{
				return VT.get_playlist(&this, ppPlaylist);
			}
			public HRESULT eject() mut
			{
				return VT.eject(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPCdrom *self, BSTR* pbstrDrive) get_driveSpecifier;
				public new function HRESULT(IWMPCdrom *self, IWMPPlaylist** ppPlaylist) get_playlist;
				public new function HRESULT(IWMPCdrom *self) eject;
			}
		}
		[CRepr]
		public struct IWMPCdromCollection : IDispatch
		{
			public const new Guid IID = .(0xee4c8fe2, 0x34b2, 0x11d3, 0xa3, 0xbf, 0x00, 0x60, 0x97, 0xc9, 0xb3, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT item(int32 lIndex, IWMPCdrom** ppItem) mut
			{
				return VT.item(&this, lIndex, ppItem);
			}
			public HRESULT getByDriveSpecifier(BSTR bstrDriveSpecifier, IWMPCdrom** ppCdrom) mut
			{
				return VT.getByDriveSpecifier(&this, bstrDriveSpecifier, ppCdrom);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPCdromCollection *self, int32* plCount) get_count;
				public new function HRESULT(IWMPCdromCollection *self, int32 lIndex, IWMPCdrom** ppItem) item;
				public new function HRESULT(IWMPCdromCollection *self, BSTR bstrDriveSpecifier, IWMPCdrom** ppCdrom) getByDriveSpecifier;
			}
		}
		[CRepr]
		public struct IWMPStringCollection : IDispatch
		{
			public const new Guid IID = .(0x4a976298, 0x8c0d, 0x11d3, 0xb3, 0x89, 0x00, 0xc0, 0x4f, 0x68, 0x57, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT item(int32 lIndex, BSTR* pbstrString) mut
			{
				return VT.item(&this, lIndex, pbstrString);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPStringCollection *self, int32* plCount) get_count;
				public new function HRESULT(IWMPStringCollection *self, int32 lIndex, BSTR* pbstrString) item;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection : IDispatch
		{
			public const new Guid IID = .(0x8363bc22, 0xb4b4, 0x4b19, 0x98, 0x9d, 0x1c, 0xd7, 0x65, 0x74, 0x9d, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT add(BSTR bstrURL, IWMPMedia** ppItem) mut
			{
				return VT.add(&this, bstrURL, ppItem);
			}
			public HRESULT getAll(IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getAll(&this, ppMediaItems);
			}
			public HRESULT getByName(BSTR bstrName, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByName(&this, bstrName, ppMediaItems);
			}
			public HRESULT getByGenre(BSTR bstrGenre, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByGenre(&this, bstrGenre, ppMediaItems);
			}
			public HRESULT getByAuthor(BSTR bstrAuthor, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByAuthor(&this, bstrAuthor, ppMediaItems);
			}
			public HRESULT getByAlbum(BSTR bstrAlbum, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByAlbum(&this, bstrAlbum, ppMediaItems);
			}
			public HRESULT getByAttribute(BSTR bstrAttribute, BSTR bstrValue, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByAttribute(&this, bstrAttribute, bstrValue, ppMediaItems);
			}
			public HRESULT remove(IWMPMedia* pItem, int16 varfDeleteFile) mut
			{
				return VT.remove(&this, pItem, varfDeleteFile);
			}
			public HRESULT getAttributeStringCollection(BSTR bstrAttribute, BSTR bstrMediaType, IWMPStringCollection** ppStringCollection) mut
			{
				return VT.getAttributeStringCollection(&this, bstrAttribute, bstrMediaType, ppStringCollection);
			}
			public HRESULT getMediaAtom(BSTR bstrItemName, int32* plAtom) mut
			{
				return VT.getMediaAtom(&this, bstrItemName, plAtom);
			}
			public HRESULT setDeleted(IWMPMedia* pItem, int16 varfIsDeleted) mut
			{
				return VT.setDeleted(&this, pItem, varfIsDeleted);
			}
			public HRESULT isDeleted(IWMPMedia* pItem, int16* pvarfIsDeleted) mut
			{
				return VT.isDeleted(&this, pItem, pvarfIsDeleted);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrURL, IWMPMedia** ppItem) add;
				public new function HRESULT(IWMPMediaCollection *self, IWMPPlaylist** ppMediaItems) getAll;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrName, IWMPPlaylist** ppMediaItems) getByName;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrGenre, IWMPPlaylist** ppMediaItems) getByGenre;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrAuthor, IWMPPlaylist** ppMediaItems) getByAuthor;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrAlbum, IWMPPlaylist** ppMediaItems) getByAlbum;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrAttribute, BSTR bstrValue, IWMPPlaylist** ppMediaItems) getByAttribute;
				public new function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16 varfDeleteFile) remove;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrAttribute, BSTR bstrMediaType, IWMPStringCollection** ppStringCollection) getAttributeStringCollection;
				public new function HRESULT(IWMPMediaCollection *self, BSTR bstrItemName, int32* plAtom) getMediaAtom;
				public new function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16 varfIsDeleted) setDeleted;
				public new function HRESULT(IWMPMediaCollection *self, IWMPMedia* pItem, int16* pvarfIsDeleted) isDeleted;
			}
		}
		[CRepr]
		public struct IWMPPlaylistArray : IDispatch
		{
			public const new Guid IID = .(0x679409c0, 0x99f7, 0x11d3, 0x9f, 0xb7, 0x00, 0x10, 0x5a, 0xa6, 0x20, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT item(int32 lIndex, IWMPPlaylist** ppItem) mut
			{
				return VT.item(&this, lIndex, ppItem);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPPlaylistArray *self, int32* plCount) get_count;
				public new function HRESULT(IWMPPlaylistArray *self, int32 lIndex, IWMPPlaylist** ppItem) item;
			}
		}
		[CRepr]
		public struct IWMPPlaylistCollection : IDispatch
		{
			public const new Guid IID = .(0x10a13217, 0x23a7, 0x439b, 0xb1, 0xc0, 0xd8, 0x47, 0xc7, 0x9b, 0x77, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT newPlaylist(BSTR bstrName, IWMPPlaylist** ppItem) mut
			{
				return VT.newPlaylist(&this, bstrName, ppItem);
			}
			public HRESULT getAll(IWMPPlaylistArray** ppPlaylistArray) mut
			{
				return VT.getAll(&this, ppPlaylistArray);
			}
			public HRESULT getByName(BSTR bstrName, IWMPPlaylistArray** ppPlaylistArray) mut
			{
				return VT.getByName(&this, bstrName, ppPlaylistArray);
			}
			public HRESULT remove(IWMPPlaylist* pItem) mut
			{
				return VT.remove(&this, pItem);
			}
			public HRESULT setDeleted(IWMPPlaylist* pItem, int16 varfIsDeleted) mut
			{
				return VT.setDeleted(&this, pItem, varfIsDeleted);
			}
			public HRESULT isDeleted(IWMPPlaylist* pItem, int16* pvarfIsDeleted) mut
			{
				return VT.isDeleted(&this, pItem, pvarfIsDeleted);
			}
			public HRESULT importPlaylist(IWMPPlaylist* pItem, IWMPPlaylist** ppImportedItem) mut
			{
				return VT.importPlaylist(&this, pItem, ppImportedItem);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPPlaylistCollection *self, BSTR bstrName, IWMPPlaylist** ppItem) newPlaylist;
				public new function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylistArray** ppPlaylistArray) getAll;
				public new function HRESULT(IWMPPlaylistCollection *self, BSTR bstrName, IWMPPlaylistArray** ppPlaylistArray) getByName;
				public new function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem) remove;
				public new function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, int16 varfIsDeleted) setDeleted;
				public new function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, int16* pvarfIsDeleted) isDeleted;
				public new function HRESULT(IWMPPlaylistCollection *self, IWMPPlaylist* pItem, IWMPPlaylist** ppImportedItem) importPlaylist;
			}
		}
		[CRepr]
		public struct IWMPNetwork : IDispatch
		{
			public const new Guid IID = .(0xec21b779, 0xedef, 0x462d, 0xbb, 0xa4, 0xad, 0x9d, 0xde, 0x2b, 0x29, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_bandWidth(int32* plBandwidth) mut
			{
				return VT.get_bandWidth(&this, plBandwidth);
			}
			public HRESULT get_recoveredPackets(int32* plRecoveredPackets) mut
			{
				return VT.get_recoveredPackets(&this, plRecoveredPackets);
			}
			public HRESULT get_sourceProtocol(BSTR* pbstrSourceProtocol) mut
			{
				return VT.get_sourceProtocol(&this, pbstrSourceProtocol);
			}
			public HRESULT get_receivedPackets(int32* plReceivedPackets) mut
			{
				return VT.get_receivedPackets(&this, plReceivedPackets);
			}
			public HRESULT get_lostPackets(int32* plLostPackets) mut
			{
				return VT.get_lostPackets(&this, plLostPackets);
			}
			public HRESULT get_receptionQuality(int32* plReceptionQuality) mut
			{
				return VT.get_receptionQuality(&this, plReceptionQuality);
			}
			public HRESULT get_bufferingCount(int32* plBufferingCount) mut
			{
				return VT.get_bufferingCount(&this, plBufferingCount);
			}
			public HRESULT get_bufferingProgress(int32* plBufferingProgress) mut
			{
				return VT.get_bufferingProgress(&this, plBufferingProgress);
			}
			public HRESULT get_bufferingTime(int32* plBufferingTime) mut
			{
				return VT.get_bufferingTime(&this, plBufferingTime);
			}
			public HRESULT put_bufferingTime(int32 lBufferingTime) mut
			{
				return VT.put_bufferingTime(&this, lBufferingTime);
			}
			public HRESULT get_frameRate(int32* plFrameRate) mut
			{
				return VT.get_frameRate(&this, plFrameRate);
			}
			public HRESULT get_maxBitRate(int32* plBitRate) mut
			{
				return VT.get_maxBitRate(&this, plBitRate);
			}
			public HRESULT get_bitRate(int32* plBitRate) mut
			{
				return VT.get_bitRate(&this, plBitRate);
			}
			public HRESULT getProxySettings(BSTR bstrProtocol, int32* plProxySetting) mut
			{
				return VT.getProxySettings(&this, bstrProtocol, plProxySetting);
			}
			public HRESULT setProxySettings(BSTR bstrProtocol, int32 lProxySetting) mut
			{
				return VT.setProxySettings(&this, bstrProtocol, lProxySetting);
			}
			public HRESULT getProxyName(BSTR bstrProtocol, BSTR* pbstrProxyName) mut
			{
				return VT.getProxyName(&this, bstrProtocol, pbstrProxyName);
			}
			public HRESULT setProxyName(BSTR bstrProtocol, BSTR bstrProxyName) mut
			{
				return VT.setProxyName(&this, bstrProtocol, bstrProxyName);
			}
			public HRESULT getProxyPort(BSTR bstrProtocol, int32* lProxyPort) mut
			{
				return VT.getProxyPort(&this, bstrProtocol, lProxyPort);
			}
			public HRESULT setProxyPort(BSTR bstrProtocol, int32 lProxyPort) mut
			{
				return VT.setProxyPort(&this, bstrProtocol, lProxyPort);
			}
			public HRESULT getProxyExceptionList(BSTR bstrProtocol, BSTR* pbstrExceptionList) mut
			{
				return VT.getProxyExceptionList(&this, bstrProtocol, pbstrExceptionList);
			}
			public HRESULT setProxyExceptionList(BSTR bstrProtocol, BSTR pbstrExceptionList) mut
			{
				return VT.setProxyExceptionList(&this, bstrProtocol, pbstrExceptionList);
			}
			public HRESULT getProxyBypassForLocal(BSTR bstrProtocol, int16* pfBypassForLocal) mut
			{
				return VT.getProxyBypassForLocal(&this, bstrProtocol, pfBypassForLocal);
			}
			public HRESULT setProxyBypassForLocal(BSTR bstrProtocol, int16 fBypassForLocal) mut
			{
				return VT.setProxyBypassForLocal(&this, bstrProtocol, fBypassForLocal);
			}
			public HRESULT get_maxBandwidth(int32* lMaxBandwidth) mut
			{
				return VT.get_maxBandwidth(&this, lMaxBandwidth);
			}
			public HRESULT put_maxBandwidth(int32 lMaxBandwidth) mut
			{
				return VT.put_maxBandwidth(&this, lMaxBandwidth);
			}
			public HRESULT get_downloadProgress(int32* plDownloadProgress) mut
			{
				return VT.get_downloadProgress(&this, plDownloadProgress);
			}
			public HRESULT get_encodedFrameRate(int32* plFrameRate) mut
			{
				return VT.get_encodedFrameRate(&this, plFrameRate);
			}
			public HRESULT get_framesSkipped(int32* plFrames) mut
			{
				return VT.get_framesSkipped(&this, plFrames);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPNetwork *self, int32* plBandwidth) get_bandWidth;
				public new function HRESULT(IWMPNetwork *self, int32* plRecoveredPackets) get_recoveredPackets;
				public new function HRESULT(IWMPNetwork *self, BSTR* pbstrSourceProtocol) get_sourceProtocol;
				public new function HRESULT(IWMPNetwork *self, int32* plReceivedPackets) get_receivedPackets;
				public new function HRESULT(IWMPNetwork *self, int32* plLostPackets) get_lostPackets;
				public new function HRESULT(IWMPNetwork *self, int32* plReceptionQuality) get_receptionQuality;
				public new function HRESULT(IWMPNetwork *self, int32* plBufferingCount) get_bufferingCount;
				public new function HRESULT(IWMPNetwork *self, int32* plBufferingProgress) get_bufferingProgress;
				public new function HRESULT(IWMPNetwork *self, int32* plBufferingTime) get_bufferingTime;
				public new function HRESULT(IWMPNetwork *self, int32 lBufferingTime) put_bufferingTime;
				public new function HRESULT(IWMPNetwork *self, int32* plFrameRate) get_frameRate;
				public new function HRESULT(IWMPNetwork *self, int32* plBitRate) get_maxBitRate;
				public new function HRESULT(IWMPNetwork *self, int32* plBitRate) get_bitRate;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32* plProxySetting) getProxySettings;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32 lProxySetting) setProxySettings;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR* pbstrProxyName) getProxyName;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR bstrProxyName) setProxyName;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32* lProxyPort) getProxyPort;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int32 lProxyPort) setProxyPort;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR* pbstrExceptionList) getProxyExceptionList;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, BSTR pbstrExceptionList) setProxyExceptionList;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int16* pfBypassForLocal) getProxyBypassForLocal;
				public new function HRESULT(IWMPNetwork *self, BSTR bstrProtocol, int16 fBypassForLocal) setProxyBypassForLocal;
				public new function HRESULT(IWMPNetwork *self, int32* lMaxBandwidth) get_maxBandwidth;
				public new function HRESULT(IWMPNetwork *self, int32 lMaxBandwidth) put_maxBandwidth;
				public new function HRESULT(IWMPNetwork *self, int32* plDownloadProgress) get_downloadProgress;
				public new function HRESULT(IWMPNetwork *self, int32* plFrameRate) get_encodedFrameRate;
				public new function HRESULT(IWMPNetwork *self, int32* plFrames) get_framesSkipped;
			}
		}
		[CRepr]
		public struct IWMPCore : IDispatch
		{
			public const new Guid IID = .(0xd84cca99, 0xcce2, 0x11d2, 0x9e, 0xcc, 0x00, 0x00, 0xf8, 0x08, 0x59, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT close() mut
			{
				return VT.close(&this);
			}
			public HRESULT get_URL(BSTR* pbstrURL) mut
			{
				return VT.get_URL(&this, pbstrURL);
			}
			public HRESULT put_URL(BSTR bstrURL) mut
			{
				return VT.put_URL(&this, bstrURL);
			}
			public HRESULT get_openState(WMPOpenState* pwmpos) mut
			{
				return VT.get_openState(&this, pwmpos);
			}
			public HRESULT get_playState(WMPPlayState* pwmpps) mut
			{
				return VT.get_playState(&this, pwmpps);
			}
			public HRESULT get_controls(IWMPControls** ppControl) mut
			{
				return VT.get_controls(&this, ppControl);
			}
			public HRESULT get_settings(IWMPSettings** ppSettings) mut
			{
				return VT.get_settings(&this, ppSettings);
			}
			public HRESULT get_currentMedia(IWMPMedia** ppMedia) mut
			{
				return VT.get_currentMedia(&this, ppMedia);
			}
			public HRESULT put_currentMedia(IWMPMedia* pMedia) mut
			{
				return VT.put_currentMedia(&this, pMedia);
			}
			public HRESULT get_mediaCollection(IWMPMediaCollection** ppMediaCollection) mut
			{
				return VT.get_mediaCollection(&this, ppMediaCollection);
			}
			public HRESULT get_playlistCollection(IWMPPlaylistCollection** ppPlaylistCollection) mut
			{
				return VT.get_playlistCollection(&this, ppPlaylistCollection);
			}
			public HRESULT get_versionInfo(BSTR* pbstrVersionInfo) mut
			{
				return VT.get_versionInfo(&this, pbstrVersionInfo);
			}
			public HRESULT launchURL(BSTR bstrURL) mut
			{
				return VT.launchURL(&this, bstrURL);
			}
			public HRESULT get_network(IWMPNetwork** ppQNI) mut
			{
				return VT.get_network(&this, ppQNI);
			}
			public HRESULT get_currentPlaylist(IWMPPlaylist** ppPL) mut
			{
				return VT.get_currentPlaylist(&this, ppPL);
			}
			public HRESULT put_currentPlaylist(IWMPPlaylist* pPL) mut
			{
				return VT.put_currentPlaylist(&this, pPL);
			}
			public HRESULT get_cdromCollection(IWMPCdromCollection** ppCdromCollection) mut
			{
				return VT.get_cdromCollection(&this, ppCdromCollection);
			}
			public HRESULT get_closedCaption(IWMPClosedCaption** ppClosedCaption) mut
			{
				return VT.get_closedCaption(&this, ppClosedCaption);
			}
			public HRESULT get_isOnline(int16* pfOnline) mut
			{
				return VT.get_isOnline(&this, pfOnline);
			}
			public HRESULT get_error(IWMPError** ppError) mut
			{
				return VT.get_error(&this, ppError);
			}
			public HRESULT get_status(BSTR* pbstrStatus) mut
			{
				return VT.get_status(&this, pbstrStatus);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPCore *self) close;
				public new function HRESULT(IWMPCore *self, BSTR* pbstrURL) get_URL;
				public new function HRESULT(IWMPCore *self, BSTR bstrURL) put_URL;
				public new function HRESULT(IWMPCore *self, WMPOpenState* pwmpos) get_openState;
				public new function HRESULT(IWMPCore *self, WMPPlayState* pwmpps) get_playState;
				public new function HRESULT(IWMPCore *self, IWMPControls** ppControl) get_controls;
				public new function HRESULT(IWMPCore *self, IWMPSettings** ppSettings) get_settings;
				public new function HRESULT(IWMPCore *self, IWMPMedia** ppMedia) get_currentMedia;
				public new function HRESULT(IWMPCore *self, IWMPMedia* pMedia) put_currentMedia;
				public new function HRESULT(IWMPCore *self, IWMPMediaCollection** ppMediaCollection) get_mediaCollection;
				public new function HRESULT(IWMPCore *self, IWMPPlaylistCollection** ppPlaylistCollection) get_playlistCollection;
				public new function HRESULT(IWMPCore *self, BSTR* pbstrVersionInfo) get_versionInfo;
				public new function HRESULT(IWMPCore *self, BSTR bstrURL) launchURL;
				public new function HRESULT(IWMPCore *self, IWMPNetwork** ppQNI) get_network;
				public new function HRESULT(IWMPCore *self, IWMPPlaylist** ppPL) get_currentPlaylist;
				public new function HRESULT(IWMPCore *self, IWMPPlaylist* pPL) put_currentPlaylist;
				public new function HRESULT(IWMPCore *self, IWMPCdromCollection** ppCdromCollection) get_cdromCollection;
				public new function HRESULT(IWMPCore *self, IWMPClosedCaption** ppClosedCaption) get_closedCaption;
				public new function HRESULT(IWMPCore *self, int16* pfOnline) get_isOnline;
				public new function HRESULT(IWMPCore *self, IWMPError** ppError) get_error;
				public new function HRESULT(IWMPCore *self, BSTR* pbstrStatus) get_status;
			}
		}
		[CRepr]
		public struct IWMPPlayer : IWMPCore
		{
			public const new Guid IID = .(0x6bf52a4f, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(int16* pbEnabled) mut
			{
				return VT.get_enabled(&this, pbEnabled);
			}
			public HRESULT put_enabled(int16 bEnabled) mut
			{
				return VT.put_enabled(&this, bEnabled);
			}
			public HRESULT get_fullScreen(int16* pbFullScreen) mut
			{
				return VT.get_fullScreen(&this, pbFullScreen);
			}
			public HRESULT put_fullScreen(int16 bFullScreen) mut
			{
				return VT.put_fullScreen(&this, bFullScreen);
			}
			public HRESULT get_enableContextMenu(int16* pbEnableContextMenu) mut
			{
				return VT.get_enableContextMenu(&this, pbEnableContextMenu);
			}
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut
			{
				return VT.put_enableContextMenu(&this, bEnableContextMenu);
			}
			public HRESULT put_uiMode(BSTR bstrMode) mut
			{
				return VT.put_uiMode(&this, bstrMode);
			}
			public HRESULT get_uiMode(BSTR* pbstrMode) mut
			{
				return VT.get_uiMode(&this, pbstrMode);
			}
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function HRESULT(IWMPPlayer *self, int16* pbEnabled) get_enabled;
				public new function HRESULT(IWMPPlayer *self, int16 bEnabled) put_enabled;
				public new function HRESULT(IWMPPlayer *self, int16* pbFullScreen) get_fullScreen;
				public new function HRESULT(IWMPPlayer *self, int16 bFullScreen) put_fullScreen;
				public new function HRESULT(IWMPPlayer *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public new function HRESULT(IWMPPlayer *self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function HRESULT(IWMPPlayer *self, BSTR bstrMode) put_uiMode;
				public new function HRESULT(IWMPPlayer *self, BSTR* pbstrMode) get_uiMode;
			}
		}
		[CRepr]
		public struct IWMPPlayer2 : IWMPCore
		{
			public const new Guid IID = .(0x0e6b01d1, 0xd407, 0x4c85, 0xbf, 0x5f, 0x1c, 0x01, 0xf6, 0x15, 0x02, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(int16* pbEnabled) mut
			{
				return VT.get_enabled(&this, pbEnabled);
			}
			public HRESULT put_enabled(int16 bEnabled) mut
			{
				return VT.put_enabled(&this, bEnabled);
			}
			public HRESULT get_fullScreen(int16* pbFullScreen) mut
			{
				return VT.get_fullScreen(&this, pbFullScreen);
			}
			public HRESULT put_fullScreen(int16 bFullScreen) mut
			{
				return VT.put_fullScreen(&this, bFullScreen);
			}
			public HRESULT get_enableContextMenu(int16* pbEnableContextMenu) mut
			{
				return VT.get_enableContextMenu(&this, pbEnableContextMenu);
			}
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut
			{
				return VT.put_enableContextMenu(&this, bEnableContextMenu);
			}
			public HRESULT put_uiMode(BSTR bstrMode) mut
			{
				return VT.put_uiMode(&this, bstrMode);
			}
			public HRESULT get_uiMode(BSTR* pbstrMode) mut
			{
				return VT.get_uiMode(&this, pbstrMode);
			}
			public HRESULT get_stretchToFit(int16* pbEnabled) mut
			{
				return VT.get_stretchToFit(&this, pbEnabled);
			}
			public HRESULT put_stretchToFit(int16 bEnabled) mut
			{
				return VT.put_stretchToFit(&this, bEnabled);
			}
			public HRESULT get_windowlessVideo(int16* pbEnabled) mut
			{
				return VT.get_windowlessVideo(&this, pbEnabled);
			}
			public HRESULT put_windowlessVideo(int16 bEnabled) mut
			{
				return VT.put_windowlessVideo(&this, bEnabled);
			}
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_enabled;
				public new function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_enabled;
				public new function HRESULT(IWMPPlayer2 *self, int16* pbFullScreen) get_fullScreen;
				public new function HRESULT(IWMPPlayer2 *self, int16 bFullScreen) put_fullScreen;
				public new function HRESULT(IWMPPlayer2 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public new function HRESULT(IWMPPlayer2 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function HRESULT(IWMPPlayer2 *self, BSTR bstrMode) put_uiMode;
				public new function HRESULT(IWMPPlayer2 *self, BSTR* pbstrMode) get_uiMode;
				public new function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_stretchToFit;
				public new function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_stretchToFit;
				public new function HRESULT(IWMPPlayer2 *self, int16* pbEnabled) get_windowlessVideo;
				public new function HRESULT(IWMPPlayer2 *self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPMedia2 : IWMPMedia
		{
			public const new Guid IID = .(0xab7c88bb, 0x143e, 0x4ea4, 0xac, 0xc3, 0xe4, 0x35, 0x0b, 0x21, 0x06, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_error(IWMPErrorItem** ppIWMPErrorItem) mut
			{
				return VT.get_error(&this, ppIWMPErrorItem);
			}
			[CRepr]
			public struct VTable : IWMPMedia.VTable
			{
				public new function HRESULT(IWMPMedia2 *self, IWMPErrorItem** ppIWMPErrorItem) get_error;
			}
		}
		[CRepr]
		public struct IWMPControls2 : IWMPControls
		{
			public const new Guid IID = .(0x6f030d25, 0x0890, 0x480f, 0x97, 0x75, 0x1f, 0x7e, 0x40, 0xab, 0x5b, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT step(int32 lStep) mut
			{
				return VT.step(&this, lStep);
			}
			[CRepr]
			public struct VTable : IWMPControls.VTable
			{
				public new function HRESULT(IWMPControls2 *self, int32 lStep) step;
			}
		}
		[CRepr]
		public struct IWMPDVD : IDispatch
		{
			public const new Guid IID = .(0x8da61686, 0x4668, 0x4a5c, 0xae, 0x5d, 0x80, 0x31, 0x93, 0x29, 0x3d, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_isAvailable(BSTR bstrItem, int16* pIsAvailable) mut
			{
				return VT.get_isAvailable(&this, bstrItem, pIsAvailable);
			}
			public HRESULT get_domain(BSTR* strDomain) mut
			{
				return VT.get_domain(&this, strDomain);
			}
			public HRESULT topMenu() mut
			{
				return VT.topMenu(&this);
			}
			public HRESULT titleMenu() mut
			{
				return VT.titleMenu(&this);
			}
			public HRESULT back() mut
			{
				return VT.back(&this);
			}
			public HRESULT resume() mut
			{
				return VT.resume(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPDVD *self, BSTR bstrItem, int16* pIsAvailable) get_isAvailable;
				public new function HRESULT(IWMPDVD *self, BSTR* strDomain) get_domain;
				public new function HRESULT(IWMPDVD *self) topMenu;
				public new function HRESULT(IWMPDVD *self) titleMenu;
				public new function HRESULT(IWMPDVD *self) back;
				public new function HRESULT(IWMPDVD *self) resume;
			}
		}
		[CRepr]
		public struct IWMPCore2 : IWMPCore
		{
			public const new Guid IID = .(0xbc17e5b7, 0x7561, 0x4c18, 0xbb, 0x90, 0x17, 0xd4, 0x85, 0x77, 0x56, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_dvd(IWMPDVD** ppDVD) mut
			{
				return VT.get_dvd(&this, ppDVD);
			}
			[CRepr]
			public struct VTable : IWMPCore.VTable
			{
				public new function HRESULT(IWMPCore2 *self, IWMPDVD** ppDVD) get_dvd;
			}
		}
		[CRepr]
		public struct IWMPPlayer3 : IWMPCore2
		{
			public const new Guid IID = .(0x54062b68, 0x052a, 0x4c25, 0xa3, 0x9f, 0x8b, 0x63, 0x34, 0x65, 0x11, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(int16* pbEnabled) mut
			{
				return VT.get_enabled(&this, pbEnabled);
			}
			public HRESULT put_enabled(int16 bEnabled) mut
			{
				return VT.put_enabled(&this, bEnabled);
			}
			public HRESULT get_fullScreen(int16* pbFullScreen) mut
			{
				return VT.get_fullScreen(&this, pbFullScreen);
			}
			public HRESULT put_fullScreen(int16 bFullScreen) mut
			{
				return VT.put_fullScreen(&this, bFullScreen);
			}
			public HRESULT get_enableContextMenu(int16* pbEnableContextMenu) mut
			{
				return VT.get_enableContextMenu(&this, pbEnableContextMenu);
			}
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut
			{
				return VT.put_enableContextMenu(&this, bEnableContextMenu);
			}
			public HRESULT put_uiMode(BSTR bstrMode) mut
			{
				return VT.put_uiMode(&this, bstrMode);
			}
			public HRESULT get_uiMode(BSTR* pbstrMode) mut
			{
				return VT.get_uiMode(&this, pbstrMode);
			}
			public HRESULT get_stretchToFit(int16* pbEnabled) mut
			{
				return VT.get_stretchToFit(&this, pbEnabled);
			}
			public HRESULT put_stretchToFit(int16 bEnabled) mut
			{
				return VT.put_stretchToFit(&this, bEnabled);
			}
			public HRESULT get_windowlessVideo(int16* pbEnabled) mut
			{
				return VT.get_windowlessVideo(&this, pbEnabled);
			}
			public HRESULT put_windowlessVideo(int16 bEnabled) mut
			{
				return VT.put_windowlessVideo(&this, bEnabled);
			}
			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public new function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_enabled;
				public new function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_enabled;
				public new function HRESULT(IWMPPlayer3 *self, int16* pbFullScreen) get_fullScreen;
				public new function HRESULT(IWMPPlayer3 *self, int16 bFullScreen) put_fullScreen;
				public new function HRESULT(IWMPPlayer3 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public new function HRESULT(IWMPPlayer3 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function HRESULT(IWMPPlayer3 *self, BSTR bstrMode) put_uiMode;
				public new function HRESULT(IWMPPlayer3 *self, BSTR* pbstrMode) get_uiMode;
				public new function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_stretchToFit;
				public new function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_stretchToFit;
				public new function HRESULT(IWMPPlayer3 *self, int16* pbEnabled) get_windowlessVideo;
				public new function HRESULT(IWMPPlayer3 *self, int16 bEnabled) put_windowlessVideo;
			}
		}
		[CRepr]
		public struct IWMPErrorItem2 : IWMPErrorItem
		{
			public const new Guid IID = .(0xf75ccec0, 0xc67c, 0x475c, 0x93, 0x1e, 0x87, 0x19, 0x87, 0x0b, 0xee, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_condition(int32* plCondition) mut
			{
				return VT.get_condition(&this, plCondition);
			}
			[CRepr]
			public struct VTable : IWMPErrorItem.VTable
			{
				public new function HRESULT(IWMPErrorItem2 *self, int32* plCondition) get_condition;
			}
		}
		[CRepr]
		public struct IWMPRemoteMediaServices : IUnknown
		{
			public const new Guid IID = .(0xcbb92747, 0x741f, 0x44fe, 0xab, 0x5b, 0xf1, 0xa4, 0x8f, 0x3b, 0x2a, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetServiceType(BSTR* pbstrType) mut
			{
				return VT.GetServiceType(&this, pbstrType);
			}
			public HRESULT GetApplicationName(BSTR* pbstrName) mut
			{
				return VT.GetApplicationName(&this, pbstrName);
			}
			public HRESULT GetScriptableObject(BSTR* pbstrName, IDispatch** ppDispatch) mut
			{
				return VT.GetScriptableObject(&this, pbstrName, ppDispatch);
			}
			public HRESULT GetCustomUIMode(BSTR* pbstrFile) mut
			{
				return VT.GetCustomUIMode(&this, pbstrFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrType) GetServiceType;
				public new function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrName) GetApplicationName;
				public new function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrName, IDispatch** ppDispatch) GetScriptableObject;
				public new function HRESULT(IWMPRemoteMediaServices *self, BSTR* pbstrFile) GetCustomUIMode;
			}
		}
		[CRepr]
		public struct IWMPSkinManager : IUnknown
		{
			public const new Guid IID = .(0x076f2fa6, 0xed30, 0x448b, 0x8c, 0xc5, 0x3f, 0x3e, 0xf3, 0x52, 0x9c, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetVisualStyle(BSTR bstrPath) mut
			{
				return VT.SetVisualStyle(&this, bstrPath);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPSkinManager *self, BSTR bstrPath) SetVisualStyle;
			}
		}
		[CRepr]
		public struct IWMPMetadataPicture : IDispatch
		{
			public const new Guid IID = .(0x5c29bbe0, 0xf87d, 0x4c45, 0xaa, 0x28, 0xa7, 0x0f, 0x02, 0x30, 0xff, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_mimeType(BSTR* pbstrMimeType) mut
			{
				return VT.get_mimeType(&this, pbstrMimeType);
			}
			public HRESULT get_pictureType(BSTR* pbstrPictureType) mut
			{
				return VT.get_pictureType(&this, pbstrPictureType);
			}
			public HRESULT get_description(BSTR* pbstrDescription) mut
			{
				return VT.get_description(&this, pbstrDescription);
			}
			public HRESULT get_URL(BSTR* pbstrURL) mut
			{
				return VT.get_URL(&this, pbstrURL);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrMimeType) get_mimeType;
				public new function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrPictureType) get_pictureType;
				public new function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrDescription) get_description;
				public new function HRESULT(IWMPMetadataPicture *self, BSTR* pbstrURL) get_URL;
			}
		}
		[CRepr]
		public struct IWMPMetadataText : IDispatch
		{
			public const new Guid IID = .(0x769a72db, 0x13d2, 0x45e2, 0x9c, 0x48, 0x53, 0xca, 0x9d, 0x5b, 0x74, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_description(BSTR* pbstrDescription) mut
			{
				return VT.get_description(&this, pbstrDescription);
			}
			public HRESULT get_text(BSTR* pbstrText) mut
			{
				return VT.get_text(&this, pbstrText);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPMetadataText *self, BSTR* pbstrDescription) get_description;
				public new function HRESULT(IWMPMetadataText *self, BSTR* pbstrText) get_text;
			}
		}
		[CRepr]
		public struct IWMPMedia3 : IWMPMedia2
		{
			public const new Guid IID = .(0xf118efc7, 0xf03a, 0x4fb4, 0x99, 0xc9, 0x1c, 0x02, 0xa5, 0xc1, 0x06, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getAttributeCountByType(BSTR bstrType, BSTR bstrLanguage, int32* plCount) mut
			{
				return VT.getAttributeCountByType(&this, bstrType, bstrLanguage, plCount);
			}
			public HRESULT getItemInfoByType(BSTR bstrType, BSTR bstrLanguage, int32 lIndex, VARIANT* pvarValue) mut
			{
				return VT.getItemInfoByType(&this, bstrType, bstrLanguage, lIndex, pvarValue);
			}
			[CRepr]
			public struct VTable : IWMPMedia2.VTable
			{
				public new function HRESULT(IWMPMedia3 *self, BSTR bstrType, BSTR bstrLanguage, int32* plCount) getAttributeCountByType;
				public new function HRESULT(IWMPMedia3 *self, BSTR bstrType, BSTR bstrLanguage, int32 lIndex, VARIANT* pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPSettings2 : IWMPSettings
		{
			public const new Guid IID = .(0xfda937a4, 0xeece, 0x4da5, 0xa0, 0xb6, 0x39, 0xbf, 0x89, 0xad, 0xe2, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_defaultAudioLanguage(int32* plLangID) mut
			{
				return VT.get_defaultAudioLanguage(&this, plLangID);
			}
			public HRESULT get_mediaAccessRights(BSTR* pbstrRights) mut
			{
				return VT.get_mediaAccessRights(&this, pbstrRights);
			}
			public HRESULT requestMediaAccessRights(BSTR bstrDesiredAccess, int16* pvbAccepted) mut
			{
				return VT.requestMediaAccessRights(&this, bstrDesiredAccess, pvbAccepted);
			}
			[CRepr]
			public struct VTable : IWMPSettings.VTable
			{
				public new function HRESULT(IWMPSettings2 *self, int32* plLangID) get_defaultAudioLanguage;
				public new function HRESULT(IWMPSettings2 *self, BSTR* pbstrRights) get_mediaAccessRights;
				public new function HRESULT(IWMPSettings2 *self, BSTR bstrDesiredAccess, int16* pvbAccepted) requestMediaAccessRights;
			}
		}
		[CRepr]
		public struct IWMPControls3 : IWMPControls2
		{
			public const new Guid IID = .(0xa1d1110e, 0xd545, 0x476a, 0x9a, 0x78, 0xac, 0x3e, 0x4c, 0xb1, 0xe6, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_audioLanguageCount(int32* plCount) mut
			{
				return VT.get_audioLanguageCount(&this, plCount);
			}
			public HRESULT getAudioLanguageID(int32 lIndex, int32* plLangID) mut
			{
				return VT.getAudioLanguageID(&this, lIndex, plLangID);
			}
			public HRESULT getAudioLanguageDescription(int32 lIndex, BSTR* pbstrLangDesc) mut
			{
				return VT.getAudioLanguageDescription(&this, lIndex, pbstrLangDesc);
			}
			public HRESULT get_currentAudioLanguage(int32* plLangID) mut
			{
				return VT.get_currentAudioLanguage(&this, plLangID);
			}
			public HRESULT put_currentAudioLanguage(int32 lLangID) mut
			{
				return VT.put_currentAudioLanguage(&this, lLangID);
			}
			public HRESULT get_currentAudioLanguageIndex(int32* plIndex) mut
			{
				return VT.get_currentAudioLanguageIndex(&this, plIndex);
			}
			public HRESULT put_currentAudioLanguageIndex(int32 lIndex) mut
			{
				return VT.put_currentAudioLanguageIndex(&this, lIndex);
			}
			public HRESULT getLanguageName(int32 lLangID, BSTR* pbstrLangName) mut
			{
				return VT.getLanguageName(&this, lLangID, pbstrLangName);
			}
			public HRESULT get_currentPositionTimecode(BSTR* bstrTimecode) mut
			{
				return VT.get_currentPositionTimecode(&this, bstrTimecode);
			}
			public HRESULT put_currentPositionTimecode(BSTR bstrTimecode) mut
			{
				return VT.put_currentPositionTimecode(&this, bstrTimecode);
			}
			[CRepr]
			public struct VTable : IWMPControls2.VTable
			{
				public new function HRESULT(IWMPControls3 *self, int32* plCount) get_audioLanguageCount;
				public new function HRESULT(IWMPControls3 *self, int32 lIndex, int32* plLangID) getAudioLanguageID;
				public new function HRESULT(IWMPControls3 *self, int32 lIndex, BSTR* pbstrLangDesc) getAudioLanguageDescription;
				public new function HRESULT(IWMPControls3 *self, int32* plLangID) get_currentAudioLanguage;
				public new function HRESULT(IWMPControls3 *self, int32 lLangID) put_currentAudioLanguage;
				public new function HRESULT(IWMPControls3 *self, int32* plIndex) get_currentAudioLanguageIndex;
				public new function HRESULT(IWMPControls3 *self, int32 lIndex) put_currentAudioLanguageIndex;
				public new function HRESULT(IWMPControls3 *self, int32 lLangID, BSTR* pbstrLangName) getLanguageName;
				public new function HRESULT(IWMPControls3 *self, BSTR* bstrTimecode) get_currentPositionTimecode;
				public new function HRESULT(IWMPControls3 *self, BSTR bstrTimecode) put_currentPositionTimecode;
			}
		}
		[CRepr]
		public struct IWMPClosedCaption2 : IWMPClosedCaption
		{
			public const new Guid IID = .(0x350ba78b, 0x6bc8, 0x4113, 0xa5, 0xf5, 0x31, 0x20, 0x56, 0x93, 0x4e, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_SAMILangCount(int32* plCount) mut
			{
				return VT.get_SAMILangCount(&this, plCount);
			}
			public HRESULT getSAMILangName(int32 nIndex, BSTR* pbstrName) mut
			{
				return VT.getSAMILangName(&this, nIndex, pbstrName);
			}
			public HRESULT getSAMILangID(int32 nIndex, int32* plLangID) mut
			{
				return VT.getSAMILangID(&this, nIndex, plLangID);
			}
			public HRESULT get_SAMIStyleCount(int32* plCount) mut
			{
				return VT.get_SAMIStyleCount(&this, plCount);
			}
			public HRESULT getSAMIStyleName(int32 nIndex, BSTR* pbstrName) mut
			{
				return VT.getSAMIStyleName(&this, nIndex, pbstrName);
			}
			[CRepr]
			public struct VTable : IWMPClosedCaption.VTable
			{
				public new function HRESULT(IWMPClosedCaption2 *self, int32* plCount) get_SAMILangCount;
				public new function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, BSTR* pbstrName) getSAMILangName;
				public new function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, int32* plLangID) getSAMILangID;
				public new function HRESULT(IWMPClosedCaption2 *self, int32* plCount) get_SAMIStyleCount;
				public new function HRESULT(IWMPClosedCaption2 *self, int32 nIndex, BSTR* pbstrName) getSAMIStyleName;
			}
		}
		[CRepr]
		public struct IWMPPlayerApplication : IDispatch
		{
			public const new Guid IID = .(0x40897764, 0xceab, 0x47be, 0xad, 0x4a, 0x8e, 0x28, 0x53, 0x7f, 0x9b, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT switchToPlayerApplication() mut
			{
				return VT.switchToPlayerApplication(&this);
			}
			public HRESULT switchToControl() mut
			{
				return VT.switchToControl(&this);
			}
			public HRESULT get_playerDocked(int16* pbPlayerDocked) mut
			{
				return VT.get_playerDocked(&this, pbPlayerDocked);
			}
			public HRESULT get_hasDisplay(int16* pbHasDisplay) mut
			{
				return VT.get_hasDisplay(&this, pbHasDisplay);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPPlayerApplication *self) switchToPlayerApplication;
				public new function HRESULT(IWMPPlayerApplication *self) switchToControl;
				public new function HRESULT(IWMPPlayerApplication *self, int16* pbPlayerDocked) get_playerDocked;
				public new function HRESULT(IWMPPlayerApplication *self, int16* pbHasDisplay) get_hasDisplay;
			}
		}
		[CRepr]
		public struct IWMPCore3 : IWMPCore2
		{
			public const new Guid IID = .(0x7587c667, 0x628f, 0x499f, 0x88, 0xe7, 0x6a, 0x6f, 0x4e, 0x88, 0x84, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT newPlaylist(BSTR bstrName, BSTR bstrURL, IWMPPlaylist** ppPlaylist) mut
			{
				return VT.newPlaylist(&this, bstrName, bstrURL, ppPlaylist);
			}
			public HRESULT newMedia(BSTR bstrURL, IWMPMedia** ppMedia) mut
			{
				return VT.newMedia(&this, bstrURL, ppMedia);
			}
			[CRepr]
			public struct VTable : IWMPCore2.VTable
			{
				public new function HRESULT(IWMPCore3 *self, BSTR bstrName, BSTR bstrURL, IWMPPlaylist** ppPlaylist) newPlaylist;
				public new function HRESULT(IWMPCore3 *self, BSTR bstrURL, IWMPMedia** ppMedia) newMedia;
			}
		}
		[CRepr]
		public struct IWMPPlayer4 : IWMPCore3
		{
			public const new Guid IID = .(0x6c497d62, 0x8919, 0x413c, 0x82, 0xdb, 0xe9, 0x35, 0xfb, 0x3e, 0xc5, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_enabled(int16* pbEnabled) mut
			{
				return VT.get_enabled(&this, pbEnabled);
			}
			public HRESULT put_enabled(int16 bEnabled) mut
			{
				return VT.put_enabled(&this, bEnabled);
			}
			public HRESULT get_fullScreen(int16* pbFullScreen) mut
			{
				return VT.get_fullScreen(&this, pbFullScreen);
			}
			public HRESULT put_fullScreen(int16 bFullScreen) mut
			{
				return VT.put_fullScreen(&this, bFullScreen);
			}
			public HRESULT get_enableContextMenu(int16* pbEnableContextMenu) mut
			{
				return VT.get_enableContextMenu(&this, pbEnableContextMenu);
			}
			public HRESULT put_enableContextMenu(int16 bEnableContextMenu) mut
			{
				return VT.put_enableContextMenu(&this, bEnableContextMenu);
			}
			public HRESULT put_uiMode(BSTR bstrMode) mut
			{
				return VT.put_uiMode(&this, bstrMode);
			}
			public HRESULT get_uiMode(BSTR* pbstrMode) mut
			{
				return VT.get_uiMode(&this, pbstrMode);
			}
			public HRESULT get_stretchToFit(int16* pbEnabled) mut
			{
				return VT.get_stretchToFit(&this, pbEnabled);
			}
			public HRESULT put_stretchToFit(int16 bEnabled) mut
			{
				return VT.put_stretchToFit(&this, bEnabled);
			}
			public HRESULT get_windowlessVideo(int16* pbEnabled) mut
			{
				return VT.get_windowlessVideo(&this, pbEnabled);
			}
			public HRESULT put_windowlessVideo(int16 bEnabled) mut
			{
				return VT.put_windowlessVideo(&this, bEnabled);
			}
			public HRESULT get_isRemote(int16* pvarfIsRemote) mut
			{
				return VT.get_isRemote(&this, pvarfIsRemote);
			}
			public HRESULT get_playerApplication(IWMPPlayerApplication** ppIWMPPlayerApplication) mut
			{
				return VT.get_playerApplication(&this, ppIWMPPlayerApplication);
			}
			public HRESULT openPlayer(BSTR bstrURL) mut
			{
				return VT.openPlayer(&this, bstrURL);
			}
			[CRepr]
			public struct VTable : IWMPCore3.VTable
			{
				public new function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_enabled;
				public new function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_enabled;
				public new function HRESULT(IWMPPlayer4 *self, int16* pbFullScreen) get_fullScreen;
				public new function HRESULT(IWMPPlayer4 *self, int16 bFullScreen) put_fullScreen;
				public new function HRESULT(IWMPPlayer4 *self, int16* pbEnableContextMenu) get_enableContextMenu;
				public new function HRESULT(IWMPPlayer4 *self, int16 bEnableContextMenu) put_enableContextMenu;
				public new function HRESULT(IWMPPlayer4 *self, BSTR bstrMode) put_uiMode;
				public new function HRESULT(IWMPPlayer4 *self, BSTR* pbstrMode) get_uiMode;
				public new function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_stretchToFit;
				public new function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_stretchToFit;
				public new function HRESULT(IWMPPlayer4 *self, int16* pbEnabled) get_windowlessVideo;
				public new function HRESULT(IWMPPlayer4 *self, int16 bEnabled) put_windowlessVideo;
				public new function HRESULT(IWMPPlayer4 *self, int16* pvarfIsRemote) get_isRemote;
				public new function HRESULT(IWMPPlayer4 *self, IWMPPlayerApplication** ppIWMPPlayerApplication) get_playerApplication;
				public new function HRESULT(IWMPPlayer4 *self, BSTR bstrURL) openPlayer;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices : IUnknown
		{
			public const new Guid IID = .(0x1d01fbdb, 0xade2, 0x4c8d, 0x98, 0x42, 0xc1, 0x90, 0xb9, 0x5c, 0x33, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT activateUIPlugin(BSTR bstrPlugin) mut
			{
				return VT.activateUIPlugin(&this, bstrPlugin);
			}
			public HRESULT setTaskPane(BSTR bstrTaskPane) mut
			{
				return VT.setTaskPane(&this, bstrTaskPane);
			}
			public HRESULT setTaskPaneURL(BSTR bstrTaskPane, BSTR bstrURL, BSTR bstrFriendlyName) mut
			{
				return VT.setTaskPaneURL(&this, bstrTaskPane, bstrURL, bstrFriendlyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPPlayerServices *self, BSTR bstrPlugin) activateUIPlugin;
				public new function HRESULT(IWMPPlayerServices *self, BSTR bstrTaskPane) setTaskPane;
				public new function HRESULT(IWMPPlayerServices *self, BSTR bstrTaskPane, BSTR bstrURL, BSTR bstrFriendlyName) setTaskPaneURL;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice : IUnknown
		{
			public const new Guid IID = .(0x82a2986c, 0x0293, 0x4fd0, 0xb2, 0x79, 0xb2, 0x1b, 0x86, 0xc0, 0x58, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_friendlyName(BSTR* pbstrName) mut
			{
				return VT.get_friendlyName(&this, pbstrName);
			}
			public HRESULT put_friendlyName(BSTR bstrName) mut
			{
				return VT.put_friendlyName(&this, bstrName);
			}
			public HRESULT get_deviceName(BSTR* pbstrName) mut
			{
				return VT.get_deviceName(&this, pbstrName);
			}
			public HRESULT get_deviceId(BSTR* pbstrDeviceId) mut
			{
				return VT.get_deviceId(&this, pbstrDeviceId);
			}
			public HRESULT get_partnershipIndex(int32* plIndex) mut
			{
				return VT.get_partnershipIndex(&this, plIndex);
			}
			public HRESULT get_connected(int16* pvbConnected) mut
			{
				return VT.get_connected(&this, pvbConnected);
			}
			public HRESULT get_status(WMPDeviceStatus* pwmpds) mut
			{
				return VT.get_status(&this, pwmpds);
			}
			public HRESULT get_syncState(WMPSyncState* pwmpss) mut
			{
				return VT.get_syncState(&this, pwmpss);
			}
			public HRESULT get_progress(int32* plProgress) mut
			{
				return VT.get_progress(&this, plProgress);
			}
			public HRESULT getItemInfo(BSTR bstrItemName, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrItemName, pbstrVal);
			}
			public HRESULT createPartnership(int16 vbShowUI) mut
			{
				return VT.createPartnership(&this, vbShowUI);
			}
			public HRESULT deletePartnership() mut
			{
				return VT.deletePartnership(&this);
			}
			public HRESULT start() mut
			{
				return VT.start(&this);
			}
			public HRESULT stop() mut
			{
				return VT.stop(&this);
			}
			public HRESULT showSettings() mut
			{
				return VT.showSettings(&this);
			}
			public HRESULT isIdentical(IWMPSyncDevice* pDevice, int16* pvbool) mut
			{
				return VT.isIdentical(&this, pDevice, pvbool);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPSyncDevice *self, BSTR* pbstrName) get_friendlyName;
				public new function HRESULT(IWMPSyncDevice *self, BSTR bstrName) put_friendlyName;
				public new function HRESULT(IWMPSyncDevice *self, BSTR* pbstrName) get_deviceName;
				public new function HRESULT(IWMPSyncDevice *self, BSTR* pbstrDeviceId) get_deviceId;
				public new function HRESULT(IWMPSyncDevice *self, int32* plIndex) get_partnershipIndex;
				public new function HRESULT(IWMPSyncDevice *self, int16* pvbConnected) get_connected;
				public new function HRESULT(IWMPSyncDevice *self, WMPDeviceStatus* pwmpds) get_status;
				public new function HRESULT(IWMPSyncDevice *self, WMPSyncState* pwmpss) get_syncState;
				public new function HRESULT(IWMPSyncDevice *self, int32* plProgress) get_progress;
				public new function HRESULT(IWMPSyncDevice *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
				public new function HRESULT(IWMPSyncDevice *self, int16 vbShowUI) createPartnership;
				public new function HRESULT(IWMPSyncDevice *self) deletePartnership;
				public new function HRESULT(IWMPSyncDevice *self) start;
				public new function HRESULT(IWMPSyncDevice *self) stop;
				public new function HRESULT(IWMPSyncDevice *self) showSettings;
				public new function HRESULT(IWMPSyncDevice *self, IWMPSyncDevice* pDevice, int16* pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPSyncServices : IUnknown
		{
			public const new Guid IID = .(0x8b5050ff, 0xe0a4, 0x4808, 0xb3, 0xa8, 0x89, 0x3a, 0x9e, 0x1e, 0xd8, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_deviceCount(int32* plCount) mut
			{
				return VT.get_deviceCount(&this, plCount);
			}
			public HRESULT getDevice(int32 lIndex, IWMPSyncDevice** ppDevice) mut
			{
				return VT.getDevice(&this, lIndex, ppDevice);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPSyncServices *self, int32* plCount) get_deviceCount;
				public new function HRESULT(IWMPSyncServices *self, int32 lIndex, IWMPSyncDevice** ppDevice) getDevice;
			}
		}
		[CRepr]
		public struct IWMPPlayerServices2 : IWMPPlayerServices
		{
			public const new Guid IID = .(0x1bb1592f, 0xf040, 0x418a, 0x9f, 0x71, 0x17, 0xc7, 0x51, 0x2b, 0x4d, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT setBackgroundProcessingPriority(BSTR bstrPriority) mut
			{
				return VT.setBackgroundProcessingPriority(&this, bstrPriority);
			}
			[CRepr]
			public struct VTable : IWMPPlayerServices.VTable
			{
				public new function HRESULT(IWMPPlayerServices2 *self, BSTR bstrPriority) setBackgroundProcessingPriority;
			}
		}
		[CRepr]
		public struct IWMPCdromRip : IUnknown
		{
			public const new Guid IID = .(0x56e2294f, 0x69ed, 0x4629, 0xa8, 0x69, 0xae, 0xa7, 0x2c, 0x0d, 0xcc, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ripState(WMPRipState* pwmprs) mut
			{
				return VT.get_ripState(&this, pwmprs);
			}
			public HRESULT get_ripProgress(int32* plProgress) mut
			{
				return VT.get_ripProgress(&this, plProgress);
			}
			public HRESULT startRip() mut
			{
				return VT.startRip(&this);
			}
			public HRESULT stopRip() mut
			{
				return VT.stopRip(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPCdromRip *self, WMPRipState* pwmprs) get_ripState;
				public new function HRESULT(IWMPCdromRip *self, int32* plProgress) get_ripProgress;
				public new function HRESULT(IWMPCdromRip *self) startRip;
				public new function HRESULT(IWMPCdromRip *self) stopRip;
			}
		}
		[CRepr]
		public struct IWMPCdromBurn : IUnknown
		{
			public const new Guid IID = .(0xbd94dbeb, 0x417f, 0x4928, 0xaa, 0x06, 0x08, 0x7d, 0x56, 0xed, 0x9b, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isAvailable(BSTR bstrItem, int16* pIsAvailable) mut
			{
				return VT.isAvailable(&this, bstrItem, pIsAvailable);
			}
			public HRESULT getItemInfo(BSTR bstrItem, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrItem, pbstrVal);
			}
			public HRESULT get_label(BSTR* pbstrLabel) mut
			{
				return VT.get_label(&this, pbstrLabel);
			}
			public HRESULT put_label(BSTR bstrLabel) mut
			{
				return VT.put_label(&this, bstrLabel);
			}
			public HRESULT get_burnFormat(WMPBurnFormat* pwmpbf) mut
			{
				return VT.get_burnFormat(&this, pwmpbf);
			}
			public HRESULT put_burnFormat(WMPBurnFormat wmpbf) mut
			{
				return VT.put_burnFormat(&this, wmpbf);
			}
			public HRESULT get_burnPlaylist(IWMPPlaylist** ppPlaylist) mut
			{
				return VT.get_burnPlaylist(&this, ppPlaylist);
			}
			public HRESULT put_burnPlaylist(IWMPPlaylist* pPlaylist) mut
			{
				return VT.put_burnPlaylist(&this, pPlaylist);
			}
			public HRESULT refreshStatus() mut
			{
				return VT.refreshStatus(&this);
			}
			public HRESULT get_burnState(WMPBurnState* pwmpbs) mut
			{
				return VT.get_burnState(&this, pwmpbs);
			}
			public HRESULT get_burnProgress(int32* plProgress) mut
			{
				return VT.get_burnProgress(&this, plProgress);
			}
			public HRESULT startBurn() mut
			{
				return VT.startBurn(&this);
			}
			public HRESULT stopBurn() mut
			{
				return VT.stopBurn(&this);
			}
			public HRESULT erase() mut
			{
				return VT.erase(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPCdromBurn *self, BSTR bstrItem, int16* pIsAvailable) isAvailable;
				public new function HRESULT(IWMPCdromBurn *self, BSTR bstrItem, BSTR* pbstrVal) getItemInfo;
				public new function HRESULT(IWMPCdromBurn *self, BSTR* pbstrLabel) get_label;
				public new function HRESULT(IWMPCdromBurn *self, BSTR bstrLabel) put_label;
				public new function HRESULT(IWMPCdromBurn *self, WMPBurnFormat* pwmpbf) get_burnFormat;
				public new function HRESULT(IWMPCdromBurn *self, WMPBurnFormat wmpbf) put_burnFormat;
				public new function HRESULT(IWMPCdromBurn *self, IWMPPlaylist** ppPlaylist) get_burnPlaylist;
				public new function HRESULT(IWMPCdromBurn *self, IWMPPlaylist* pPlaylist) put_burnPlaylist;
				public new function HRESULT(IWMPCdromBurn *self) refreshStatus;
				public new function HRESULT(IWMPCdromBurn *self, WMPBurnState* pwmpbs) get_burnState;
				public new function HRESULT(IWMPCdromBurn *self, int32* plProgress) get_burnProgress;
				public new function HRESULT(IWMPCdromBurn *self) startBurn;
				public new function HRESULT(IWMPCdromBurn *self) stopBurn;
				public new function HRESULT(IWMPCdromBurn *self) erase;
			}
		}
		[CRepr]
		public struct IWMPQuery : IDispatch
		{
			public const new Guid IID = .(0xa00918f3, 0xa6b0, 0x4bfb, 0x91, 0x89, 0xfd, 0x83, 0x4c, 0x7b, 0xc5, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT addCondition(BSTR bstrAttribute, BSTR bstrOperator, BSTR bstrValue) mut
			{
				return VT.addCondition(&this, bstrAttribute, bstrOperator, bstrValue);
			}
			public HRESULT beginNextGroup() mut
			{
				return VT.beginNextGroup(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPQuery *self, BSTR bstrAttribute, BSTR bstrOperator, BSTR bstrValue) addCondition;
				public new function HRESULT(IWMPQuery *self) beginNextGroup;
			}
		}
		[CRepr]
		public struct IWMPMediaCollection2 : IWMPMediaCollection
		{
			public const new Guid IID = .(0x8ba957f5, 0xfd8c, 0x4791, 0xb8, 0x2d, 0xf8, 0x40, 0x40, 0x1e, 0xe4, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT createQuery(IWMPQuery** ppQuery) mut
			{
				return VT.createQuery(&this, ppQuery);
			}
			public HRESULT getPlaylistByQuery(IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPPlaylist** ppPlaylist) mut
			{
				return VT.getPlaylistByQuery(&this, pQuery, bstrMediaType, bstrSortAttribute, fSortAscending, ppPlaylist);
			}
			public HRESULT getStringCollectionByQuery(BSTR bstrAttribute, IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPStringCollection** ppStringCollection) mut
			{
				return VT.getStringCollectionByQuery(&this, bstrAttribute, pQuery, bstrMediaType, bstrSortAttribute, fSortAscending, ppStringCollection);
			}
			public HRESULT getByAttributeAndMediaType(BSTR bstrAttribute, BSTR bstrValue, BSTR bstrMediaType, IWMPPlaylist** ppMediaItems) mut
			{
				return VT.getByAttributeAndMediaType(&this, bstrAttribute, bstrValue, bstrMediaType, ppMediaItems);
			}
			[CRepr]
			public struct VTable : IWMPMediaCollection.VTable
			{
				public new function HRESULT(IWMPMediaCollection2 *self, IWMPQuery** ppQuery) createQuery;
				public new function HRESULT(IWMPMediaCollection2 *self, IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPPlaylist** ppPlaylist) getPlaylistByQuery;
				public new function HRESULT(IWMPMediaCollection2 *self, BSTR bstrAttribute, IWMPQuery* pQuery, BSTR bstrMediaType, BSTR bstrSortAttribute, int16 fSortAscending, IWMPStringCollection** ppStringCollection) getStringCollectionByQuery;
				public new function HRESULT(IWMPMediaCollection2 *self, BSTR bstrAttribute, BSTR bstrValue, BSTR bstrMediaType, IWMPPlaylist** ppMediaItems) getByAttributeAndMediaType;
			}
		}
		[CRepr]
		public struct IWMPStringCollection2 : IWMPStringCollection
		{
			public const new Guid IID = .(0x46ad648d, 0x53f1, 0x4a74, 0x92, 0xe2, 0x2a, 0x1b, 0x68, 0xd6, 0x3f, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isIdentical(IWMPStringCollection2* pIWMPStringCollection2, int16* pvbool) mut
			{
				return VT.isIdentical(&this, pIWMPStringCollection2, pvbool);
			}
			public HRESULT getItemInfo(int32 lCollectionIndex, BSTR bstrItemName, BSTR* pbstrValue) mut
			{
				return VT.getItemInfo(&this, lCollectionIndex, bstrItemName, pbstrValue);
			}
			public HRESULT getAttributeCountByType(int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32* plCount) mut
			{
				return VT.getAttributeCountByType(&this, lCollectionIndex, bstrType, bstrLanguage, plCount);
			}
			public HRESULT getItemInfoByType(int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32 lAttributeIndex, VARIANT* pvarValue) mut
			{
				return VT.getItemInfoByType(&this, lCollectionIndex, bstrType, bstrLanguage, lAttributeIndex, pvarValue);
			}
			[CRepr]
			public struct VTable : IWMPStringCollection.VTable
			{
				public new function HRESULT(IWMPStringCollection2 *self, IWMPStringCollection2* pIWMPStringCollection2, int16* pvbool) isIdentical;
				public new function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrItemName, BSTR* pbstrValue) getItemInfo;
				public new function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32* plCount) getAttributeCountByType;
				public new function HRESULT(IWMPStringCollection2 *self, int32 lCollectionIndex, BSTR bstrType, BSTR bstrLanguage, int32 lAttributeIndex, VARIANT* pvarValue) getItemInfoByType;
			}
		}
		[CRepr]
		public struct IWMPLibrary : IUnknown
		{
			public const new Guid IID = .(0x3df47861, 0x7df1, 0x4c1f, 0xa8, 0x1b, 0x4c, 0x26, 0xf0, 0xf7, 0xa7, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_name(BSTR* pbstrName) mut
			{
				return VT.get_name(&this, pbstrName);
			}
			public HRESULT get_type(WMPLibraryType* pwmplt) mut
			{
				return VT.get_type(&this, pwmplt);
			}
			public HRESULT get_mediaCollection(IWMPMediaCollection** ppIWMPMediaCollection) mut
			{
				return VT.get_mediaCollection(&this, ppIWMPMediaCollection);
			}
			public HRESULT isIdentical(IWMPLibrary* pIWMPLibrary, int16* pvbool) mut
			{
				return VT.isIdentical(&this, pIWMPLibrary, pvbool);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPLibrary *self, BSTR* pbstrName) get_name;
				public new function HRESULT(IWMPLibrary *self, WMPLibraryType* pwmplt) get_type;
				public new function HRESULT(IWMPLibrary *self, IWMPMediaCollection** ppIWMPMediaCollection) get_mediaCollection;
				public new function HRESULT(IWMPLibrary *self, IWMPLibrary* pIWMPLibrary, int16* pvbool) isIdentical;
			}
		}
		[CRepr]
		public struct IWMPLibraryServices : IUnknown
		{
			public const new Guid IID = .(0x39c2f8d5, 0x1cf2, 0x4d5e, 0xae, 0x09, 0xd7, 0x34, 0x92, 0xcf, 0x9e, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getCountByType(WMPLibraryType wmplt, int32* plCount) mut
			{
				return VT.getCountByType(&this, wmplt, plCount);
			}
			public HRESULT getLibraryByType(WMPLibraryType wmplt, int32 lIndex, IWMPLibrary** ppIWMPLibrary) mut
			{
				return VT.getLibraryByType(&this, wmplt, lIndex, ppIWMPLibrary);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPLibraryServices *self, WMPLibraryType wmplt, int32* plCount) getCountByType;
				public new function HRESULT(IWMPLibraryServices *self, WMPLibraryType wmplt, int32 lIndex, IWMPLibrary** ppIWMPLibrary) getLibraryByType;
			}
		}
		[CRepr]
		public struct IWMPLibrarySharingServices : IUnknown
		{
			public const new Guid IID = .(0x82cba86b, 0x9f04, 0x474b, 0xa3, 0x65, 0xd6, 0xdd, 0x14, 0x66, 0xe5, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT isLibraryShared(int16* pvbShared) mut
			{
				return VT.isLibraryShared(&this, pvbShared);
			}
			public HRESULT isLibrarySharingEnabled(int16* pvbEnabled) mut
			{
				return VT.isLibrarySharingEnabled(&this, pvbEnabled);
			}
			public HRESULT showLibrarySharing() mut
			{
				return VT.showLibrarySharing(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPLibrarySharingServices *self, int16* pvbShared) isLibraryShared;
				public new function HRESULT(IWMPLibrarySharingServices *self, int16* pvbEnabled) isLibrarySharingEnabled;
				public new function HRESULT(IWMPLibrarySharingServices *self) showLibrarySharing;
			}
		}
		[CRepr]
		public struct IWMPFolderMonitorServices : IUnknown
		{
			public const new Guid IID = .(0x788c8743, 0xe57f, 0x439d, 0xa4, 0x68, 0x5b, 0xc7, 0x7f, 0x2e, 0x59, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT item(int32 lIndex, BSTR* pbstrFolder) mut
			{
				return VT.item(&this, lIndex, pbstrFolder);
			}
			public HRESULT add(BSTR bstrFolder) mut
			{
				return VT.add(&this, bstrFolder);
			}
			public HRESULT remove(int32 lIndex) mut
			{
				return VT.remove(&this, lIndex);
			}
			public HRESULT get_scanState(WMPFolderScanState* pwmpfss) mut
			{
				return VT.get_scanState(&this, pwmpfss);
			}
			public HRESULT get_currentFolder(BSTR* pbstrFolder) mut
			{
				return VT.get_currentFolder(&this, pbstrFolder);
			}
			public HRESULT get_scannedFilesCount(int32* plCount) mut
			{
				return VT.get_scannedFilesCount(&this, plCount);
			}
			public HRESULT get_addedFilesCount(int32* plCount) mut
			{
				return VT.get_addedFilesCount(&this, plCount);
			}
			public HRESULT get_updateProgress(int32* plProgress) mut
			{
				return VT.get_updateProgress(&this, plProgress);
			}
			public HRESULT startScan() mut
			{
				return VT.startScan(&this);
			}
			public HRESULT stopScan() mut
			{
				return VT.stopScan(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_count;
				public new function HRESULT(IWMPFolderMonitorServices *self, int32 lIndex, BSTR* pbstrFolder) item;
				public new function HRESULT(IWMPFolderMonitorServices *self, BSTR bstrFolder) add;
				public new function HRESULT(IWMPFolderMonitorServices *self, int32 lIndex) remove;
				public new function HRESULT(IWMPFolderMonitorServices *self, WMPFolderScanState* pwmpfss) get_scanState;
				public new function HRESULT(IWMPFolderMonitorServices *self, BSTR* pbstrFolder) get_currentFolder;
				public new function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_scannedFilesCount;
				public new function HRESULT(IWMPFolderMonitorServices *self, int32* plCount) get_addedFilesCount;
				public new function HRESULT(IWMPFolderMonitorServices *self, int32* plProgress) get_updateProgress;
				public new function HRESULT(IWMPFolderMonitorServices *self) startScan;
				public new function HRESULT(IWMPFolderMonitorServices *self) stopScan;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice2 : IWMPSyncDevice
		{
			public const new Guid IID = .(0x88afb4b2, 0x140a, 0x44d2, 0x91, 0xe6, 0x45, 0x43, 0xda, 0x46, 0x7c, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT setItemInfo(BSTR bstrItemName, BSTR bstrVal) mut
			{
				return VT.setItemInfo(&this, bstrItemName, bstrVal);
			}
			[CRepr]
			public struct VTable : IWMPSyncDevice.VTable
			{
				public new function HRESULT(IWMPSyncDevice2 *self, BSTR bstrItemName, BSTR bstrVal) setItemInfo;
			}
		}
		[CRepr]
		public struct IWMPSyncDevice3 : IWMPSyncDevice2
		{
			public const new Guid IID = .(0xb22c85f9, 0x263c, 0x4372, 0xa0, 0xda, 0xb5, 0x18, 0xdb, 0x9b, 0x40, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT estimateSyncSize(IWMPPlaylist* pNonRulePlaylist, IWMPPlaylist* pRulesPlaylist) mut
			{
				return VT.estimateSyncSize(&this, pNonRulePlaylist, pRulesPlaylist);
			}
			public HRESULT cancelEstimation() mut
			{
				return VT.cancelEstimation(&this);
			}
			[CRepr]
			public struct VTable : IWMPSyncDevice2.VTable
			{
				public new function HRESULT(IWMPSyncDevice3 *self, IWMPPlaylist* pNonRulePlaylist, IWMPPlaylist* pRulesPlaylist) estimateSyncSize;
				public new function HRESULT(IWMPSyncDevice3 *self) cancelEstimation;
			}
		}
		[CRepr]
		public struct IWMPLibrary2 : IWMPLibrary
		{
			public const new Guid IID = .(0xdd578a4e, 0x79b1, 0x426c, 0xbf, 0x8f, 0x3a, 0xdd, 0x90, 0x72, 0x50, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getItemInfo(BSTR bstrItemName, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrItemName, pbstrVal);
			}
			[CRepr]
			public struct VTable : IWMPLibrary.VTable
			{
				public new function HRESULT(IWMPLibrary2 *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPEvents : IUnknown
		{
			public const new Guid IID = .(0x19a6627b, 0xda9e, 0x47c1, 0xbb, 0x23, 0x00, 0xb5, 0xe6, 0x68, 0x23, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public void OpenStateChange(int32 NewState) mut
			{
				VT.OpenStateChange(&this, NewState);
			}
			public void PlayStateChange(int32 NewState) mut
			{
				VT.PlayStateChange(&this, NewState);
			}
			public void AudioLanguageChange(int32 LangID) mut
			{
				VT.AudioLanguageChange(&this, LangID);
			}
			public void StatusChange() mut
			{
				VT.StatusChange(&this);
			}
			public void ScriptCommand(BSTR scType, BSTR Param) mut
			{
				VT.ScriptCommand(&this, scType, Param);
			}
			public void NewStream() mut
			{
				VT.NewStream(&this);
			}
			public void Disconnect(int32 Result) mut
			{
				VT.Disconnect(&this, Result);
			}
			public void Buffering(int16 Start) mut
			{
				VT.Buffering(&this, Start);
			}
			public void Error() mut
			{
				VT.Error(&this);
			}
			public void Warning(int32 WarningType, int32 Param, BSTR Description) mut
			{
				VT.Warning(&this, WarningType, Param, Description);
			}
			public void EndOfStream(int32 Result) mut
			{
				VT.EndOfStream(&this, Result);
			}
			public void PositionChange(double oldPosition, double newPosition) mut
			{
				VT.PositionChange(&this, oldPosition, newPosition);
			}
			public void MarkerHit(int32 MarkerNum) mut
			{
				VT.MarkerHit(&this, MarkerNum);
			}
			public void DurationUnitChange(int32 NewDurationUnit) mut
			{
				VT.DurationUnitChange(&this, NewDurationUnit);
			}
			public void CdromMediaChange(int32 CdromNum) mut
			{
				VT.CdromMediaChange(&this, CdromNum);
			}
			public void PlaylistChange(IDispatch* Playlist, WMPPlaylistChangeEventType change) mut
			{
				VT.PlaylistChange(&this, Playlist, change);
			}
			public void CurrentPlaylistChange(WMPPlaylistChangeEventType change) mut
			{
				VT.CurrentPlaylistChange(&this, change);
			}
			public void CurrentPlaylistItemAvailable(BSTR bstrItemName) mut
			{
				VT.CurrentPlaylistItemAvailable(&this, bstrItemName);
			}
			public void MediaChange(IDispatch* Item) mut
			{
				VT.MediaChange(&this, Item);
			}
			public void CurrentMediaItemAvailable(BSTR bstrItemName) mut
			{
				VT.CurrentMediaItemAvailable(&this, bstrItemName);
			}
			public void CurrentItemChange(IDispatch* pdispMedia) mut
			{
				VT.CurrentItemChange(&this, pdispMedia);
			}
			public void MediaCollectionChange() mut
			{
				VT.MediaCollectionChange(&this);
			}
			public void MediaCollectionAttributeStringAdded(BSTR bstrAttribName, BSTR bstrAttribVal) mut
			{
				VT.MediaCollectionAttributeStringAdded(&this, bstrAttribName, bstrAttribVal);
			}
			public void MediaCollectionAttributeStringRemoved(BSTR bstrAttribName, BSTR bstrAttribVal) mut
			{
				VT.MediaCollectionAttributeStringRemoved(&this, bstrAttribName, bstrAttribVal);
			}
			public void MediaCollectionAttributeStringChanged(BSTR bstrAttribName, BSTR bstrOldAttribVal, BSTR bstrNewAttribVal) mut
			{
				VT.MediaCollectionAttributeStringChanged(&this, bstrAttribName, bstrOldAttribVal, bstrNewAttribVal);
			}
			public void PlaylistCollectionChange() mut
			{
				VT.PlaylistCollectionChange(&this);
			}
			public void PlaylistCollectionPlaylistAdded(BSTR bstrPlaylistName) mut
			{
				VT.PlaylistCollectionPlaylistAdded(&this, bstrPlaylistName);
			}
			public void PlaylistCollectionPlaylistRemoved(BSTR bstrPlaylistName) mut
			{
				VT.PlaylistCollectionPlaylistRemoved(&this, bstrPlaylistName);
			}
			public void PlaylistCollectionPlaylistSetAsDeleted(BSTR bstrPlaylistName, int16 varfIsDeleted) mut
			{
				VT.PlaylistCollectionPlaylistSetAsDeleted(&this, bstrPlaylistName, varfIsDeleted);
			}
			public void ModeChange(BSTR ModeName, int16 NewValue) mut
			{
				VT.ModeChange(&this, ModeName, NewValue);
			}
			public void MediaError(IDispatch* pMediaObject) mut
			{
				VT.MediaError(&this, pMediaObject);
			}
			public void OpenPlaylistSwitch(IDispatch* pItem) mut
			{
				VT.OpenPlaylistSwitch(&this, pItem);
			}
			public void DomainChange(BSTR strDomain) mut
			{
				VT.DomainChange(&this, strDomain);
			}
			public void SwitchedToPlayerApplication() mut
			{
				VT.SwitchedToPlayerApplication(&this);
			}
			public void SwitchedToControl() mut
			{
				VT.SwitchedToControl(&this);
			}
			public void PlayerDockedStateChange() mut
			{
				VT.PlayerDockedStateChange(&this);
			}
			public void PlayerReconnect() mut
			{
				VT.PlayerReconnect(&this);
			}
			public void Click(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut
			{
				VT.Click(&this, nButton, nShiftState, fX, fY);
			}
			public void DoubleClick(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut
			{
				VT.DoubleClick(&this, nButton, nShiftState, fX, fY);
			}
			public void KeyDown(int16 nKeyCode, int16 nShiftState) mut
			{
				VT.KeyDown(&this, nKeyCode, nShiftState);
			}
			public void KeyPress(int16 nKeyAscii) mut
			{
				VT.KeyPress(&this, nKeyAscii);
			}
			public void KeyUp(int16 nKeyCode, int16 nShiftState) mut
			{
				VT.KeyUp(&this, nKeyCode, nShiftState);
			}
			public void MouseDown(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut
			{
				VT.MouseDown(&this, nButton, nShiftState, fX, fY);
			}
			public void MouseMove(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut
			{
				VT.MouseMove(&this, nButton, nShiftState, fX, fY);
			}
			public void MouseUp(int16 nButton, int16 nShiftState, int32 fX, int32 fY) mut
			{
				VT.MouseUp(&this, nButton, nShiftState, fX, fY);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function void(IWMPEvents *self, int32 NewState) OpenStateChange;
				public new function void(IWMPEvents *self, int32 NewState) PlayStateChange;
				public new function void(IWMPEvents *self, int32 LangID) AudioLanguageChange;
				public new function void(IWMPEvents *self) StatusChange;
				public new function void(IWMPEvents *self, BSTR scType, BSTR Param) ScriptCommand;
				public new function void(IWMPEvents *self) NewStream;
				public new function void(IWMPEvents *self, int32 Result) Disconnect;
				public new function void(IWMPEvents *self, int16 Start) Buffering;
				public new function void(IWMPEvents *self) Error;
				public new function void(IWMPEvents *self, int32 WarningType, int32 Param, BSTR Description) Warning;
				public new function void(IWMPEvents *self, int32 Result) EndOfStream;
				public new function void(IWMPEvents *self, double oldPosition, double newPosition) PositionChange;
				public new function void(IWMPEvents *self, int32 MarkerNum) MarkerHit;
				public new function void(IWMPEvents *self, int32 NewDurationUnit) DurationUnitChange;
				public new function void(IWMPEvents *self, int32 CdromNum) CdromMediaChange;
				public new function void(IWMPEvents *self, IDispatch* Playlist, WMPPlaylistChangeEventType change) PlaylistChange;
				public new function void(IWMPEvents *self, WMPPlaylistChangeEventType change) CurrentPlaylistChange;
				public new function void(IWMPEvents *self, BSTR bstrItemName) CurrentPlaylistItemAvailable;
				public new function void(IWMPEvents *self, IDispatch* Item) MediaChange;
				public new function void(IWMPEvents *self, BSTR bstrItemName) CurrentMediaItemAvailable;
				public new function void(IWMPEvents *self, IDispatch* pdispMedia) CurrentItemChange;
				public new function void(IWMPEvents *self) MediaCollectionChange;
				public new function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringAdded;
				public new function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrAttribVal) MediaCollectionAttributeStringRemoved;
				public new function void(IWMPEvents *self, BSTR bstrAttribName, BSTR bstrOldAttribVal, BSTR bstrNewAttribVal) MediaCollectionAttributeStringChanged;
				public new function void(IWMPEvents *self) PlaylistCollectionChange;
				public new function void(IWMPEvents *self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistAdded;
				public new function void(IWMPEvents *self, BSTR bstrPlaylistName) PlaylistCollectionPlaylistRemoved;
				public new function void(IWMPEvents *self, BSTR bstrPlaylistName, int16 varfIsDeleted) PlaylistCollectionPlaylistSetAsDeleted;
				public new function void(IWMPEvents *self, BSTR ModeName, int16 NewValue) ModeChange;
				public new function void(IWMPEvents *self, IDispatch* pMediaObject) MediaError;
				public new function void(IWMPEvents *self, IDispatch* pItem) OpenPlaylistSwitch;
				public new function void(IWMPEvents *self, BSTR strDomain) DomainChange;
				public new function void(IWMPEvents *self) SwitchedToPlayerApplication;
				public new function void(IWMPEvents *self) SwitchedToControl;
				public new function void(IWMPEvents *self) PlayerDockedStateChange;
				public new function void(IWMPEvents *self) PlayerReconnect;
				public new function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) Click;
				public new function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) DoubleClick;
				public new function void(IWMPEvents *self, int16 nKeyCode, int16 nShiftState) KeyDown;
				public new function void(IWMPEvents *self, int16 nKeyAscii) KeyPress;
				public new function void(IWMPEvents *self, int16 nKeyCode, int16 nShiftState) KeyUp;
				public new function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseDown;
				public new function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseMove;
				public new function void(IWMPEvents *self, int16 nButton, int16 nShiftState, int32 fX, int32 fY) MouseUp;
			}
		}
		[CRepr]
		public struct IWMPEvents2 : IWMPEvents
		{
			public const new Guid IID = .(0x1e7601fa, 0x47ea, 0x4107, 0x9e, 0xa9, 0x90, 0x04, 0xed, 0x96, 0x84, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DeviceConnect(IWMPSyncDevice* pDevice) mut
			{
				VT.DeviceConnect(&this, pDevice);
			}
			public void DeviceDisconnect(IWMPSyncDevice* pDevice) mut
			{
				VT.DeviceDisconnect(&this, pDevice);
			}
			public void DeviceStatusChange(IWMPSyncDevice* pDevice, WMPDeviceStatus NewStatus) mut
			{
				VT.DeviceStatusChange(&this, pDevice, NewStatus);
			}
			public void DeviceSyncStateChange(IWMPSyncDevice* pDevice, WMPSyncState NewState) mut
			{
				VT.DeviceSyncStateChange(&this, pDevice, NewState);
			}
			public void DeviceSyncError(IWMPSyncDevice* pDevice, IDispatch* pMedia) mut
			{
				VT.DeviceSyncError(&this, pDevice, pMedia);
			}
			public void CreatePartnershipComplete(IWMPSyncDevice* pDevice, HRESULT hrResult) mut
			{
				VT.CreatePartnershipComplete(&this, pDevice, hrResult);
			}
			[CRepr]
			public struct VTable : IWMPEvents.VTable
			{
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice) DeviceConnect;
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice) DeviceDisconnect;
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, WMPDeviceStatus NewStatus) DeviceStatusChange;
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, WMPSyncState NewState) DeviceSyncStateChange;
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, IDispatch* pMedia) DeviceSyncError;
				public new function void(IWMPEvents2 *self, IWMPSyncDevice* pDevice, HRESULT hrResult) CreatePartnershipComplete;
			}
		}
		[CRepr]
		public struct IWMPEvents3 : IWMPEvents2
		{
			public const new Guid IID = .(0x1f504270, 0xa66b, 0x4223, 0x8e, 0x96, 0x26, 0xa0, 0x6c, 0x63, 0xd6, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public void CdromRipStateChange(IWMPCdromRip* pCdromRip, WMPRipState wmprs) mut
			{
				VT.CdromRipStateChange(&this, pCdromRip, wmprs);
			}
			public void CdromRipMediaError(IWMPCdromRip* pCdromRip, IDispatch* pMedia) mut
			{
				VT.CdromRipMediaError(&this, pCdromRip, pMedia);
			}
			public void CdromBurnStateChange(IWMPCdromBurn* pCdromBurn, WMPBurnState wmpbs) mut
			{
				VT.CdromBurnStateChange(&this, pCdromBurn, wmpbs);
			}
			public void CdromBurnMediaError(IWMPCdromBurn* pCdromBurn, IDispatch* pMedia) mut
			{
				VT.CdromBurnMediaError(&this, pCdromBurn, pMedia);
			}
			public void CdromBurnError(IWMPCdromBurn* pCdromBurn, HRESULT hrError) mut
			{
				VT.CdromBurnError(&this, pCdromBurn, hrError);
			}
			public void LibraryConnect(IWMPLibrary* pLibrary) mut
			{
				VT.LibraryConnect(&this, pLibrary);
			}
			public void LibraryDisconnect(IWMPLibrary* pLibrary) mut
			{
				VT.LibraryDisconnect(&this, pLibrary);
			}
			public void FolderScanStateChange(WMPFolderScanState wmpfss) mut
			{
				VT.FolderScanStateChange(&this, wmpfss);
			}
			public void StringCollectionChange(IDispatch* pdispStringCollection, WMPStringCollectionChangeEventType change, int32 lCollectionIndex) mut
			{
				VT.StringCollectionChange(&this, pdispStringCollection, change, lCollectionIndex);
			}
			public void MediaCollectionMediaAdded(IDispatch* pdispMedia) mut
			{
				VT.MediaCollectionMediaAdded(&this, pdispMedia);
			}
			public void MediaCollectionMediaRemoved(IDispatch* pdispMedia) mut
			{
				VT.MediaCollectionMediaRemoved(&this, pdispMedia);
			}
			[CRepr]
			public struct VTable : IWMPEvents2.VTable
			{
				public new function void(IWMPEvents3 *self, IWMPCdromRip* pCdromRip, WMPRipState wmprs) CdromRipStateChange;
				public new function void(IWMPEvents3 *self, IWMPCdromRip* pCdromRip, IDispatch* pMedia) CdromRipMediaError;
				public new function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, WMPBurnState wmpbs) CdromBurnStateChange;
				public new function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, IDispatch* pMedia) CdromBurnMediaError;
				public new function void(IWMPEvents3 *self, IWMPCdromBurn* pCdromBurn, HRESULT hrError) CdromBurnError;
				public new function void(IWMPEvents3 *self, IWMPLibrary* pLibrary) LibraryConnect;
				public new function void(IWMPEvents3 *self, IWMPLibrary* pLibrary) LibraryDisconnect;
				public new function void(IWMPEvents3 *self, WMPFolderScanState wmpfss) FolderScanStateChange;
				public new function void(IWMPEvents3 *self, IDispatch* pdispStringCollection, WMPStringCollectionChangeEventType change, int32 lCollectionIndex) StringCollectionChange;
				public new function void(IWMPEvents3 *self, IDispatch* pdispMedia) MediaCollectionMediaAdded;
				public new function void(IWMPEvents3 *self, IDispatch* pdispMedia) MediaCollectionMediaRemoved;
			}
		}
		[CRepr]
		public struct IWMPEvents4 : IWMPEvents3
		{
			public const new Guid IID = .(0x26dabcfa, 0x306b, 0x404d, 0x9a, 0x6f, 0x63, 0x0a, 0x84, 0x05, 0x04, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public void DeviceEstimation(IWMPSyncDevice* pDevice, HRESULT hrResult, int64 qwEstimatedUsedSpace, int64 qwEstimatedSpace) mut
			{
				VT.DeviceEstimation(&this, pDevice, hrResult, qwEstimatedUsedSpace, qwEstimatedSpace);
			}
			[CRepr]
			public struct VTable : IWMPEvents3.VTable
			{
				public new function void(IWMPEvents4 *self, IWMPSyncDevice* pDevice, HRESULT hrResult, int64 qwEstimatedUsedSpace, int64 qwEstimatedSpace) DeviceEstimation;
			}
		}
		[CRepr]
		public struct _WMPOCXEvents : IDispatch
		{
			public const new Guid IID = .(0x6bf52a51, 0x394a, 0x11d3, 0xb1, 0x53, 0x00, 0xc0, 0x4f, 0x79, 0xfa, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IWMPNodeRealEstate : IUnknown
		{
			public const new Guid IID = .(0x42751198, 0x5a50, 0x4460, 0xbc, 0xb4, 0x70, 0x9f, 0x8b, 0xdc, 0x8e, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDesiredSize(SIZE* pSize) mut
			{
				return VT.GetDesiredSize(&this, pSize);
			}
			public HRESULT SetRects(RECT* pSrc, RECT* pDest, RECT* pClip) mut
			{
				return VT.SetRects(&this, pSrc, pDest, pClip);
			}
			public HRESULT GetRects(RECT* pSrc, RECT* pDest, RECT* pClip) mut
			{
				return VT.GetRects(&this, pSrc, pDest, pClip);
			}
			public HRESULT SetWindowless(BOOL fWindowless) mut
			{
				return VT.SetWindowless(&this, fWindowless);
			}
			public HRESULT GetWindowless(BOOL* pfWindowless) mut
			{
				return VT.GetWindowless(&this, pfWindowless);
			}
			public HRESULT SetFullScreen(BOOL fFullScreen) mut
			{
				return VT.SetFullScreen(&this, fFullScreen);
			}
			public HRESULT GetFullScreen(BOOL* pfFullScreen) mut
			{
				return VT.GetFullScreen(&this, pfFullScreen);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPNodeRealEstate *self, SIZE* pSize) GetDesiredSize;
				public new function HRESULT(IWMPNodeRealEstate *self, RECT* pSrc, RECT* pDest, RECT* pClip) SetRects;
				public new function HRESULT(IWMPNodeRealEstate *self, RECT* pSrc, RECT* pDest, RECT* pClip) GetRects;
				public new function HRESULT(IWMPNodeRealEstate *self, BOOL fWindowless) SetWindowless;
				public new function HRESULT(IWMPNodeRealEstate *self, BOOL* pfWindowless) GetWindowless;
				public new function HRESULT(IWMPNodeRealEstate *self, BOOL fFullScreen) SetFullScreen;
				public new function HRESULT(IWMPNodeRealEstate *self, BOOL* pfFullScreen) GetFullScreen;
			}
		}
		[CRepr]
		public struct IWMPNodeRealEstateHost : IUnknown
		{
			public const new Guid IID = .(0x1491087d, 0x2c6b, 0x44c8, 0xb0, 0x19, 0xb3, 0xc9, 0x29, 0xd2, 0xad, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDesiredSizeChange(SIZE* pSize) mut
			{
				return VT.OnDesiredSizeChange(&this, pSize);
			}
			public HRESULT OnFullScreenTransition(BOOL fFullScreen) mut
			{
				return VT.OnFullScreenTransition(&this, fFullScreen);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPNodeRealEstateHost *self, SIZE* pSize) OnDesiredSizeChange;
				public new function HRESULT(IWMPNodeRealEstateHost *self, BOOL fFullScreen) OnFullScreenTransition;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowed : IUnknown
		{
			public const new Guid IID = .(0x96740bfa, 0xc56a, 0x45d1, 0xa3, 0xa4, 0x76, 0x29, 0x14, 0xd4, 0xad, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOwnerWindow(int hwnd) mut
			{
				return VT.SetOwnerWindow(&this, hwnd);
			}
			public HRESULT GetOwnerWindow(int* phwnd) mut
			{
				return VT.GetOwnerWindow(&this, phwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPNodeWindowed *self, int hwnd) SetOwnerWindow;
				public new function HRESULT(IWMPNodeWindowed *self, int* phwnd) GetOwnerWindow;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowedHost : IUnknown
		{
			public const new Guid IID = .(0xa300415a, 0x54aa, 0x4081, 0xad, 0xbf, 0x3b, 0x13, 0x61, 0x0d, 0x89, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowMessageFromRenderer(uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) mut
			{
				return VT.OnWindowMessageFromRenderer(&this, uMsg, wparam, lparam, plRet, pfHandled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPNodeWindowedHost *self, uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) OnWindowMessageFromRenderer;
			}
		}
		[CRepr]
		public struct IWMPWindowMessageSink : IUnknown
		{
			public const new Guid IID = .(0x3a0daa30, 0x908d, 0x4789, 0xba, 0x87, 0xae, 0xd8, 0x79, 0xb5, 0xc4, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowMessage(uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) mut
			{
				return VT.OnWindowMessage(&this, uMsg, wparam, lparam, plRet, pfHandled);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPWindowMessageSink *self, uint32 uMsg, WPARAM wparam, LPARAM lparam, LRESULT* plRet, BOOL* pfHandled) OnWindowMessage;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowless : IWMPWindowMessageSink
		{
			public const new Guid IID = .(0x9b9199ad, 0x780c, 0x4eda, 0xb8, 0x16, 0x26, 0x1e, 0xba, 0x5d, 0x15, 0x75);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDraw(int hdc, RECT* prcDraw) mut
			{
				return VT.OnDraw(&this, hdc, prcDraw);
			}
			[CRepr]
			public struct VTable : IWMPWindowMessageSink.VTable
			{
				public new function HRESULT(IWMPNodeWindowless *self, int hdc, RECT* prcDraw) OnDraw;
			}
		}
		[CRepr]
		public struct IWMPNodeWindowlessHost : IUnknown
		{
			public const new Guid IID = .(0xbe7017c6, 0xce34, 0x4901, 0x81, 0x06, 0x77, 0x03, 0x81, 0xaa, 0x6e, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvalidateRect(RECT* prc, BOOL fErase) mut
			{
				return VT.InvalidateRect(&this, prc, fErase);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPNodeWindowlessHost *self, RECT* prc, BOOL fErase) InvalidateRect;
			}
		}
		[CRepr]
		public struct IWMPVideoRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x6d6cf803, 0x1ec0, 0x4c8d, 0xb3, 0xca, 0xf1, 0x8e, 0x27, 0x28, 0x20, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_presenterActivate(IMFActivate* pActivate) mut
			{
				return VT.put_presenterActivate(&this, pActivate);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPVideoRenderConfig *self, IMFActivate* pActivate) put_presenterActivate;
			}
		}
		[CRepr]
		public struct IWMPAudioRenderConfig : IUnknown
		{
			public const new Guid IID = .(0xe79c6349, 0x5997, 0x4ce4, 0x91, 0x7c, 0x22, 0xa3, 0x39, 0x1e, 0xc5, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_audioOutputDevice(BSTR* pbstrOutputDevice) mut
			{
				return VT.get_audioOutputDevice(&this, pbstrOutputDevice);
			}
			public HRESULT put_audioOutputDevice(BSTR bstrOutputDevice) mut
			{
				return VT.put_audioOutputDevice(&this, bstrOutputDevice);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPAudioRenderConfig *self, BSTR* pbstrOutputDevice) get_audioOutputDevice;
				public new function HRESULT(IWMPAudioRenderConfig *self, BSTR bstrOutputDevice) put_audioOutputDevice;
			}
		}
		[CRepr]
		public struct IWMPRenderConfig : IUnknown
		{
			public const new Guid IID = .(0x959506c1, 0x0314, 0x4ec5, 0x9e, 0x61, 0x85, 0x28, 0xdb, 0x5e, 0x54, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_inProcOnly(BOOL fInProc) mut
			{
				return VT.put_inProcOnly(&this, fInProc);
			}
			public HRESULT get_inProcOnly(BOOL* pfInProc) mut
			{
				return VT.get_inProcOnly(&this, pfInProc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPRenderConfig *self, BOOL fInProc) put_inProcOnly;
				public new function HRESULT(IWMPRenderConfig *self, BOOL* pfInProc) get_inProcOnly;
			}
		}
		[CRepr]
		public struct IWMPServices : IUnknown
		{
			public const new Guid IID = .(0xafb6b76b, 0x1e20, 0x4198, 0x83, 0xb3, 0x19, 0x1d, 0xb6, 0xe0, 0xb1, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStreamTime(int64* prt) mut
			{
				return VT.GetStreamTime(&this, prt);
			}
			public HRESULT GetStreamState(WMPServices_StreamState* pState) mut
			{
				return VT.GetStreamState(&this, pState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPServices *self, int64* prt) GetStreamTime;
				public new function HRESULT(IWMPServices *self, WMPServices_StreamState* pState) GetStreamState;
			}
		}
		[CRepr]
		public struct IWMPMediaPluginRegistrar : IUnknown
		{
			public const new Guid IID = .(0x68e27045, 0x05bd, 0x40b2, 0x97, 0x20, 0x23, 0x08, 0x8c, 0x78, 0xe3, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WMPRegisterPlayerPlugin(PWSTR pwszFriendlyName, PWSTR pwszDescription, PWSTR pwszUninstallString, uint32 dwPriority, Guid guidPluginType, Guid clsid, uint32 cMediaTypes, void* pMediaTypes) mut
			{
				return VT.WMPRegisterPlayerPlugin(&this, pwszFriendlyName, pwszDescription, pwszUninstallString, dwPriority, guidPluginType, clsid, cMediaTypes, pMediaTypes);
			}
			public HRESULT WMPUnRegisterPlayerPlugin(Guid guidPluginType, Guid clsid) mut
			{
				return VT.WMPUnRegisterPlayerPlugin(&this, guidPluginType, clsid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPMediaPluginRegistrar *self, PWSTR pwszFriendlyName, PWSTR pwszDescription, PWSTR pwszUninstallString, uint32 dwPriority, Guid guidPluginType, Guid clsid, uint32 cMediaTypes, void* pMediaTypes) WMPRegisterPlayerPlugin;
				public new function HRESULT(IWMPMediaPluginRegistrar *self, Guid guidPluginType, Guid clsid) WMPUnRegisterPlayerPlugin;
			}
		}
		[CRepr]
		public struct IWMPPlugin : IUnknown
		{
			public const new Guid IID = .(0xf1392a70, 0x024c, 0x42bb, 0xa9, 0x98, 0x73, 0xdf, 0xdf, 0xe7, 0xd5, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(uint dwPlaybackContext) mut
			{
				return VT.Init(&this, dwPlaybackContext);
			}
			public HRESULT Shutdown() mut
			{
				return VT.Shutdown(&this);
			}
			public HRESULT GetID(Guid* pGUID) mut
			{
				return VT.GetID(&this, pGUID);
			}
			public HRESULT GetCaps(uint32* pdwFlags) mut
			{
				return VT.GetCaps(&this, pdwFlags);
			}
			public HRESULT AdviseWMPServices(IWMPServices* pWMPServices) mut
			{
				return VT.AdviseWMPServices(&this, pWMPServices);
			}
			public HRESULT UnAdviseWMPServices() mut
			{
				return VT.UnAdviseWMPServices(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPPlugin *self, uint dwPlaybackContext) Init;
				public new function HRESULT(IWMPPlugin *self) Shutdown;
				public new function HRESULT(IWMPPlugin *self, Guid* pGUID) GetID;
				public new function HRESULT(IWMPPlugin *self, uint32* pdwFlags) GetCaps;
				public new function HRESULT(IWMPPlugin *self, IWMPServices* pWMPServices) AdviseWMPServices;
				public new function HRESULT(IWMPPlugin *self) UnAdviseWMPServices;
			}
		}
		[CRepr]
		public struct IWMPPluginEnable : IUnknown
		{
			public const new Guid IID = .(0x5fca444c, 0x7ad1, 0x479d, 0xa4, 0xef, 0x40, 0x56, 0x6a, 0x53, 0x09, 0xd6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEnable(BOOL fEnable) mut
			{
				return VT.SetEnable(&this, fEnable);
			}
			public HRESULT GetEnable(BOOL* pfEnable) mut
			{
				return VT.GetEnable(&this, pfEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPPluginEnable *self, BOOL fEnable) SetEnable;
				public new function HRESULT(IWMPPluginEnable *self, BOOL* pfEnable) GetEnable;
			}
		}
		[CRepr]
		public struct IWMPGraphCreation : IUnknown
		{
			public const new Guid IID = .(0xbfb377e5, 0xc594, 0x4369, 0xa9, 0x70, 0xde, 0x89, 0x6d, 0x5e, 0xce, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GraphCreationPreRender(IUnknown* pFilterGraph, IUnknown* pReserved) mut
			{
				return VT.GraphCreationPreRender(&this, pFilterGraph, pReserved);
			}
			public HRESULT GraphCreationPostRender(IUnknown* pFilterGraph) mut
			{
				return VT.GraphCreationPostRender(&this, pFilterGraph);
			}
			public HRESULT GetGraphCreationFlags(uint32* pdwFlags) mut
			{
				return VT.GetGraphCreationFlags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPGraphCreation *self, IUnknown* pFilterGraph, IUnknown* pReserved) GraphCreationPreRender;
				public new function HRESULT(IWMPGraphCreation *self, IUnknown* pFilterGraph) GraphCreationPostRender;
				public new function HRESULT(IWMPGraphCreation *self, uint32* pdwFlags) GetGraphCreationFlags;
			}
		}
		[CRepr]
		public struct IWMPConvert : IUnknown
		{
			public const new Guid IID = .(0xd683162f, 0x57d4, 0x4108, 0x83, 0x73, 0x4a, 0x96, 0x76, 0xd1, 0xc2, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ConvertFile(BSTR bstrInputFile, BSTR bstrDestinationFolder, BSTR* pbstrOutputFile) mut
			{
				return VT.ConvertFile(&this, bstrInputFile, bstrDestinationFolder, pbstrOutputFile);
			}
			public HRESULT GetErrorURL(BSTR* pbstrURL) mut
			{
				return VT.GetErrorURL(&this, pbstrURL);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPConvert *self, BSTR bstrInputFile, BSTR bstrDestinationFolder, BSTR* pbstrOutputFile) ConvertFile;
				public new function HRESULT(IWMPConvert *self, BSTR* pbstrURL) GetErrorURL;
			}
		}
		[CRepr]
		public struct IWMPTranscodePolicy : IUnknown
		{
			public const new Guid IID = .(0xb64cbac3, 0x401c, 0x4327, 0xa3, 0xe8, 0xb9, 0xfe, 0xb3, 0xa8, 0xc2, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT allowTranscode(int16* pvbAllow) mut
			{
				return VT.allowTranscode(&this, pvbAllow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPTranscodePolicy *self, int16* pvbAllow) allowTranscode;
			}
		}
		[CRepr]
		public struct IWMPUserEventSink : IUnknown
		{
			public const new Guid IID = .(0xcfccfa72, 0xc343, 0x48c3, 0xa2, 0xde, 0xb7, 0xa4, 0x40, 0x2e, 0x39, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyUserEvent(int32 EventCode) mut
			{
				return VT.NotifyUserEvent(&this, EventCode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPUserEventSink *self, int32 EventCode) NotifyUserEvent;
			}
		}
		[CRepr]
		public struct IXFeedsManager : IUnknown
		{
			public const new Guid IID = .(0x5357e238, 0xfb12, 0x4aca, 0xa9, 0x30, 0xca, 0xb7, 0x83, 0x2b, 0x84, 0xbf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RootFolder(Guid* riid, void** ppv) mut
			{
				return VT.RootFolder(&this, riid, ppv);
			}
			public HRESULT IsSubscribed(PWSTR pszUrl, BOOL* pbSubscribed) mut
			{
				return VT.IsSubscribed(&this, pszUrl, pbSubscribed);
			}
			public HRESULT ExistsFeed(PWSTR pszPath, BOOL* pbFeedExists) mut
			{
				return VT.ExistsFeed(&this, pszPath, pbFeedExists);
			}
			public HRESULT GetFeed(PWSTR pszPath, Guid* riid, void** ppv) mut
			{
				return VT.GetFeed(&this, pszPath, riid, ppv);
			}
			public HRESULT GetFeedByUrl(PWSTR pszUrl, Guid* riid, void** ppv) mut
			{
				return VT.GetFeedByUrl(&this, pszUrl, riid, ppv);
			}
			public HRESULT ExistsFolder(PWSTR pszPath, BOOL* pbFolderExists) mut
			{
				return VT.ExistsFolder(&this, pszPath, pbFolderExists);
			}
			public HRESULT GetFolder(PWSTR pszPath, Guid* riid, void** ppv) mut
			{
				return VT.GetFolder(&this, pszPath, riid, ppv);
			}
			public HRESULT DeleteFeed(PWSTR pszPath) mut
			{
				return VT.DeleteFeed(&this, pszPath);
			}
			public HRESULT DeleteFolder(PWSTR pszPath) mut
			{
				return VT.DeleteFolder(&this, pszPath);
			}
			public HRESULT BackgroundSync(FEEDS_BACKGROUNDSYNC_ACTION fbsa) mut
			{
				return VT.BackgroundSync(&this, fbsa);
			}
			public HRESULT BackgroundSyncStatus(FEEDS_BACKGROUNDSYNC_STATUS* pfbss) mut
			{
				return VT.BackgroundSyncStatus(&this, pfbss);
			}
			public HRESULT DefaultInterval(uint32* puiInterval) mut
			{
				return VT.DefaultInterval(&this, puiInterval);
			}
			public HRESULT SetDefaultInterval(uint32 uiInterval) mut
			{
				return VT.SetDefaultInterval(&this, uiInterval);
			}
			public HRESULT AsyncSyncAll() mut
			{
				return VT.AsyncSyncAll(&this);
			}
			public HRESULT Normalize(IStream* pStreamIn, IStream** ppStreamOut) mut
			{
				return VT.Normalize(&this, pStreamIn, ppStreamOut);
			}
			public HRESULT ItemCountLimit(uint32* puiItemCountLimit) mut
			{
				return VT.ItemCountLimit(&this, puiItemCountLimit);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedsManager *self, Guid* riid, void** ppv) RootFolder;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszUrl, BOOL* pbSubscribed) IsSubscribed;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath, BOOL* pbFeedExists) ExistsFeed;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath, Guid* riid, void** ppv) GetFeed;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszUrl, Guid* riid, void** ppv) GetFeedByUrl;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath, BOOL* pbFolderExists) ExistsFolder;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath, Guid* riid, void** ppv) GetFolder;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath) DeleteFeed;
				public new function HRESULT(IXFeedsManager *self, PWSTR pszPath) DeleteFolder;
				public new function HRESULT(IXFeedsManager *self, FEEDS_BACKGROUNDSYNC_ACTION fbsa) BackgroundSync;
				public new function HRESULT(IXFeedsManager *self, FEEDS_BACKGROUNDSYNC_STATUS* pfbss) BackgroundSyncStatus;
				public new function HRESULT(IXFeedsManager *self, uint32* puiInterval) DefaultInterval;
				public new function HRESULT(IXFeedsManager *self, uint32 uiInterval) SetDefaultInterval;
				public new function HRESULT(IXFeedsManager *self) AsyncSyncAll;
				public new function HRESULT(IXFeedsManager *self, IStream* pStreamIn, IStream** ppStreamOut) Normalize;
				public new function HRESULT(IXFeedsManager *self, uint32* puiItemCountLimit) ItemCountLimit;
			}
		}
		[CRepr]
		public struct IXFeedsEnum : IUnknown
		{
			public const new Guid IID = .(0xdc43a9d5, 0x5015, 0x4301, 0x8c, 0x96, 0xa4, 0x74, 0x34, 0xb4, 0xd6, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Count(uint32* puiCount) mut
			{
				return VT.Count(&this, puiCount);
			}
			public HRESULT Item(uint32 uiIndex, Guid* riid, void** ppv) mut
			{
				return VT.Item(&this, uiIndex, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedsEnum *self, uint32* puiCount) Count;
				public new function HRESULT(IXFeedsEnum *self, uint32 uiIndex, Guid* riid, void** ppv) Item;
			}
		}
		[CRepr]
		public struct IXFeedFolder : IUnknown
		{
			public const new Guid IID = .(0x4c963678, 0x3a51, 0x4b88, 0x85, 0x31, 0x98, 0xb9, 0x0b, 0x65, 0x08, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Feeds(IXFeedsEnum** ppfe) mut
			{
				return VT.Feeds(&this, ppfe);
			}
			public HRESULT Subfolders(IXFeedsEnum** ppfe) mut
			{
				return VT.Subfolders(&this, ppfe);
			}
			public HRESULT CreateFeed(PWSTR pszName, PWSTR pszUrl, Guid* riid, void** ppv) mut
			{
				return VT.CreateFeed(&this, pszName, pszUrl, riid, ppv);
			}
			public HRESULT CreateSubfolder(PWSTR pszName, Guid* riid, void** ppv) mut
			{
				return VT.CreateSubfolder(&this, pszName, riid, ppv);
			}
			public HRESULT ExistsFeed(PWSTR pszName, BOOL* pbFeedExists) mut
			{
				return VT.ExistsFeed(&this, pszName, pbFeedExists);
			}
			public HRESULT ExistsSubfolder(PWSTR pszName, BOOL* pbSubfolderExists) mut
			{
				return VT.ExistsSubfolder(&this, pszName, pbSubfolderExists);
			}
			public HRESULT GetFeed(PWSTR pszName, Guid* riid, void** ppv) mut
			{
				return VT.GetFeed(&this, pszName, riid, ppv);
			}
			public HRESULT GetSubfolder(PWSTR pszName, Guid* riid, void** ppv) mut
			{
				return VT.GetSubfolder(&this, pszName, riid, ppv);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Name(PWSTR* ppszName) mut
			{
				return VT.Name(&this, ppszName);
			}
			public HRESULT Rename(PWSTR pszName) mut
			{
				return VT.Rename(&this, pszName);
			}
			public HRESULT Path(PWSTR* ppszPath) mut
			{
				return VT.Path(&this, ppszPath);
			}
			public HRESULT Move(PWSTR pszPath) mut
			{
				return VT.Move(&this, pszPath);
			}
			public HRESULT Parent(Guid* riid, void** ppv) mut
			{
				return VT.Parent(&this, riid, ppv);
			}
			public HRESULT IsRoot(BOOL* pbIsRootFeedFolder) mut
			{
				return VT.IsRoot(&this, pbIsRootFeedFolder);
			}
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) mut
			{
				return VT.GetWatcher(&this, @scope, mask, riid, ppv);
			}
			public HRESULT TotalUnreadItemCount(uint32* puiTotalUnreadItemCount) mut
			{
				return VT.TotalUnreadItemCount(&this, puiTotalUnreadItemCount);
			}
			public HRESULT TotalItemCount(uint32* puiTotalItemCount) mut
			{
				return VT.TotalItemCount(&this, puiTotalItemCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedFolder *self, IXFeedsEnum** ppfe) Feeds;
				public new function HRESULT(IXFeedFolder *self, IXFeedsEnum** ppfe) Subfolders;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, PWSTR pszUrl, Guid* riid, void** ppv) CreateFeed;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) CreateSubfolder;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, BOOL* pbFeedExists) ExistsFeed;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, BOOL* pbSubfolderExists) ExistsSubfolder;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) GetFeed;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName, Guid* riid, void** ppv) GetSubfolder;
				public new function HRESULT(IXFeedFolder *self) Delete;
				public new function HRESULT(IXFeedFolder *self, PWSTR* ppszName) Name;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszName) Rename;
				public new function HRESULT(IXFeedFolder *self, PWSTR* ppszPath) Path;
				public new function HRESULT(IXFeedFolder *self, PWSTR pszPath) Move;
				public new function HRESULT(IXFeedFolder *self, Guid* riid, void** ppv) Parent;
				public new function HRESULT(IXFeedFolder *self, BOOL* pbIsRootFeedFolder) IsRoot;
				public new function HRESULT(IXFeedFolder *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) GetWatcher;
				public new function HRESULT(IXFeedFolder *self, uint32* puiTotalUnreadItemCount) TotalUnreadItemCount;
				public new function HRESULT(IXFeedFolder *self, uint32* puiTotalItemCount) TotalItemCount;
			}
		}
		[CRepr]
		public struct IXFeedFolderEvents : IUnknown
		{
			public const new Guid IID = .(0x7964b769, 0x234a, 0x4bb1, 0xa5, 0xf4, 0x90, 0x45, 0x4c, 0x8a, 0xd0, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut
			{
				return VT.Error(&this);
			}
			public HRESULT FolderAdded(PWSTR pszPath) mut
			{
				return VT.FolderAdded(&this, pszPath);
			}
			public HRESULT FolderDeleted(PWSTR pszPath) mut
			{
				return VT.FolderDeleted(&this, pszPath);
			}
			public HRESULT FolderRenamed(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FolderRenamed(&this, pszPath, pszOldPath);
			}
			public HRESULT FolderMovedFrom(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FolderMovedFrom(&this, pszPath, pszOldPath);
			}
			public HRESULT FolderMovedTo(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FolderMovedTo(&this, pszPath, pszOldPath);
			}
			public HRESULT FolderItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut
			{
				return VT.FolderItemCountChanged(&this, pszPath, feicfFlags);
			}
			public HRESULT FeedAdded(PWSTR pszPath) mut
			{
				return VT.FeedAdded(&this, pszPath);
			}
			public HRESULT FeedDeleted(PWSTR pszPath) mut
			{
				return VT.FeedDeleted(&this, pszPath);
			}
			public HRESULT FeedRenamed(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FeedRenamed(&this, pszPath, pszOldPath);
			}
			public HRESULT FeedUrlChanged(PWSTR pszPath) mut
			{
				return VT.FeedUrlChanged(&this, pszPath);
			}
			public HRESULT FeedMovedFrom(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FeedMovedFrom(&this, pszPath, pszOldPath);
			}
			public HRESULT FeedMovedTo(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FeedMovedTo(&this, pszPath, pszOldPath);
			}
			public HRESULT FeedDownloading(PWSTR pszPath) mut
			{
				return VT.FeedDownloading(&this, pszPath);
			}
			public HRESULT FeedDownloadCompleted(PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) mut
			{
				return VT.FeedDownloadCompleted(&this, pszPath, fde);
			}
			public HRESULT FeedItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut
			{
				return VT.FeedItemCountChanged(&this, pszPath, feicfFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedFolderEvents *self) Error;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FolderAdded;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FolderDeleted;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderRenamed;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedFrom;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FolderMovedTo;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, int32 feicfFlags) FolderItemCountChanged;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedAdded;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedDeleted;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedUrlChanged;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedFrom;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMovedTo;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath) FeedDownloading;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public new function HRESULT(IXFeedFolderEvents *self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeed : IUnknown
		{
			public const new Guid IID = .(0xa44179a4, 0xe0f6, 0x403b, 0xaf, 0x8d, 0xd0, 0x80, 0xf4, 0x25, 0xa4, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(uint32 uiItemCount, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, IStream** pps) mut
			{
				return VT.Xml(&this, uiItemCount, sortProperty, sortOrder, filterFlags, includeFlags, pps);
			}
			public HRESULT Name(PWSTR* ppszName) mut
			{
				return VT.Name(&this, ppszName);
			}
			public HRESULT Rename(PWSTR pszName) mut
			{
				return VT.Rename(&this, pszName);
			}
			public HRESULT Url(PWSTR* ppszUrl) mut
			{
				return VT.Url(&this, ppszUrl);
			}
			public HRESULT SetUrl(PWSTR pszUrl) mut
			{
				return VT.SetUrl(&this, pszUrl);
			}
			public HRESULT LocalId(Guid* pguid) mut
			{
				return VT.LocalId(&this, pguid);
			}
			public HRESULT Path(PWSTR* ppszPath) mut
			{
				return VT.Path(&this, ppszPath);
			}
			public HRESULT Move(PWSTR pszPath) mut
			{
				return VT.Move(&this, pszPath);
			}
			public HRESULT Parent(Guid* riid, void** ppv) mut
			{
				return VT.Parent(&this, riid, ppv);
			}
			public HRESULT LastWriteTime(SYSTEMTIME* pstLastWriteTime) mut
			{
				return VT.LastWriteTime(&this, pstLastWriteTime);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Download() mut
			{
				return VT.Download(&this);
			}
			public HRESULT AsyncDownload() mut
			{
				return VT.AsyncDownload(&this);
			}
			public HRESULT CancelAsyncDownload() mut
			{
				return VT.CancelAsyncDownload(&this);
			}
			public HRESULT SyncSetting(FEEDS_SYNC_SETTING* pfss) mut
			{
				return VT.SyncSetting(&this, pfss);
			}
			public HRESULT SetSyncSetting(FEEDS_SYNC_SETTING fss) mut
			{
				return VT.SetSyncSetting(&this, fss);
			}
			public HRESULT Interval(uint32* puiInterval) mut
			{
				return VT.Interval(&this, puiInterval);
			}
			public HRESULT SetInterval(uint32 uiInterval) mut
			{
				return VT.SetInterval(&this, uiInterval);
			}
			public HRESULT LastDownloadTime(SYSTEMTIME* pstLastDownloadTime) mut
			{
				return VT.LastDownloadTime(&this, pstLastDownloadTime);
			}
			public HRESULT LocalEnclosurePath(PWSTR* ppszPath) mut
			{
				return VT.LocalEnclosurePath(&this, ppszPath);
			}
			public HRESULT Items(IXFeedsEnum** ppfe) mut
			{
				return VT.Items(&this, ppfe);
			}
			public HRESULT GetItem(uint32 uiId, Guid* riid, void** ppv) mut
			{
				return VT.GetItem(&this, uiId, riid, ppv);
			}
			public HRESULT MarkAllItemsRead() mut
			{
				return VT.MarkAllItemsRead(&this);
			}
			public HRESULT MaxItemCount(uint32* puiMaxItemCount) mut
			{
				return VT.MaxItemCount(&this, puiMaxItemCount);
			}
			public HRESULT SetMaxItemCount(uint32 uiMaxItemCount) mut
			{
				return VT.SetMaxItemCount(&this, uiMaxItemCount);
			}
			public HRESULT DownloadEnclosuresAutomatically(BOOL* pbDownloadEnclosuresAutomatically) mut
			{
				return VT.DownloadEnclosuresAutomatically(&this, pbDownloadEnclosuresAutomatically);
			}
			public HRESULT SetDownloadEnclosuresAutomatically(BOOL bDownloadEnclosuresAutomatically) mut
			{
				return VT.SetDownloadEnclosuresAutomatically(&this, bDownloadEnclosuresAutomatically);
			}
			public HRESULT DownloadStatus(FEEDS_DOWNLOAD_STATUS* pfds) mut
			{
				return VT.DownloadStatus(&this, pfds);
			}
			public HRESULT LastDownloadError(FEEDS_DOWNLOAD_ERROR* pfde) mut
			{
				return VT.LastDownloadError(&this, pfde);
			}
			public HRESULT Merge(IStream* pStream, PWSTR pszUrl) mut
			{
				return VT.Merge(&this, pStream, pszUrl);
			}
			public HRESULT DownloadUrl(PWSTR* ppszUrl) mut
			{
				return VT.DownloadUrl(&this, ppszUrl);
			}
			public HRESULT Title(PWSTR* ppszTitle) mut
			{
				return VT.Title(&this, ppszTitle);
			}
			public HRESULT Description(PWSTR* ppszDescription) mut
			{
				return VT.Description(&this, ppszDescription);
			}
			public HRESULT Link(PWSTR* ppszHomePage) mut
			{
				return VT.Link(&this, ppszHomePage);
			}
			public HRESULT Image(PWSTR* ppszImageUrl) mut
			{
				return VT.Image(&this, ppszImageUrl);
			}
			public HRESULT LastBuildDate(SYSTEMTIME* pstLastBuildDate) mut
			{
				return VT.LastBuildDate(&this, pstLastBuildDate);
			}
			public HRESULT PubDate(SYSTEMTIME* pstPubDate) mut
			{
				return VT.PubDate(&this, pstPubDate);
			}
			public HRESULT Ttl(uint32* puiTtl) mut
			{
				return VT.Ttl(&this, puiTtl);
			}
			public HRESULT Language(PWSTR* ppszLanguage) mut
			{
				return VT.Language(&this, ppszLanguage);
			}
			public HRESULT Copyright(PWSTR* ppszCopyright) mut
			{
				return VT.Copyright(&this, ppszCopyright);
			}
			public HRESULT IsList(BOOL* pbIsList) mut
			{
				return VT.IsList(&this, pbIsList);
			}
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) mut
			{
				return VT.GetWatcher(&this, @scope, mask, riid, ppv);
			}
			public HRESULT UnreadItemCount(uint32* puiUnreadItemCount) mut
			{
				return VT.UnreadItemCount(&this, puiUnreadItemCount);
			}
			public HRESULT ItemCount(uint32* puiItemCount) mut
			{
				return VT.ItemCount(&this, puiItemCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeed *self, uint32 uiItemCount, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, IStream** pps) Xml;
				public new function HRESULT(IXFeed *self, PWSTR* ppszName) Name;
				public new function HRESULT(IXFeed *self, PWSTR pszName) Rename;
				public new function HRESULT(IXFeed *self, PWSTR* ppszUrl) Url;
				public new function HRESULT(IXFeed *self, PWSTR pszUrl) SetUrl;
				public new function HRESULT(IXFeed *self, Guid* pguid) LocalId;
				public new function HRESULT(IXFeed *self, PWSTR* ppszPath) Path;
				public new function HRESULT(IXFeed *self, PWSTR pszPath) Move;
				public new function HRESULT(IXFeed *self, Guid* riid, void** ppv) Parent;
				public new function HRESULT(IXFeed *self, SYSTEMTIME* pstLastWriteTime) LastWriteTime;
				public new function HRESULT(IXFeed *self) Delete;
				public new function HRESULT(IXFeed *self) Download;
				public new function HRESULT(IXFeed *self) AsyncDownload;
				public new function HRESULT(IXFeed *self) CancelAsyncDownload;
				public new function HRESULT(IXFeed *self, FEEDS_SYNC_SETTING* pfss) SyncSetting;
				public new function HRESULT(IXFeed *self, FEEDS_SYNC_SETTING fss) SetSyncSetting;
				public new function HRESULT(IXFeed *self, uint32* puiInterval) Interval;
				public new function HRESULT(IXFeed *self, uint32 uiInterval) SetInterval;
				public new function HRESULT(IXFeed *self, SYSTEMTIME* pstLastDownloadTime) LastDownloadTime;
				public new function HRESULT(IXFeed *self, PWSTR* ppszPath) LocalEnclosurePath;
				public new function HRESULT(IXFeed *self, IXFeedsEnum** ppfe) Items;
				public new function HRESULT(IXFeed *self, uint32 uiId, Guid* riid, void** ppv) GetItem;
				public new function HRESULT(IXFeed *self) MarkAllItemsRead;
				public new function HRESULT(IXFeed *self, uint32* puiMaxItemCount) MaxItemCount;
				public new function HRESULT(IXFeed *self, uint32 uiMaxItemCount) SetMaxItemCount;
				public new function HRESULT(IXFeed *self, BOOL* pbDownloadEnclosuresAutomatically) DownloadEnclosuresAutomatically;
				public new function HRESULT(IXFeed *self, BOOL bDownloadEnclosuresAutomatically) SetDownloadEnclosuresAutomatically;
				public new function HRESULT(IXFeed *self, FEEDS_DOWNLOAD_STATUS* pfds) DownloadStatus;
				public new function HRESULT(IXFeed *self, FEEDS_DOWNLOAD_ERROR* pfde) LastDownloadError;
				public new function HRESULT(IXFeed *self, IStream* pStream, PWSTR pszUrl) Merge;
				public new function HRESULT(IXFeed *self, PWSTR* ppszUrl) DownloadUrl;
				public new function HRESULT(IXFeed *self, PWSTR* ppszTitle) Title;
				public new function HRESULT(IXFeed *self, PWSTR* ppszDescription) Description;
				public new function HRESULT(IXFeed *self, PWSTR* ppszHomePage) Link;
				public new function HRESULT(IXFeed *self, PWSTR* ppszImageUrl) Image;
				public new function HRESULT(IXFeed *self, SYSTEMTIME* pstLastBuildDate) LastBuildDate;
				public new function HRESULT(IXFeed *self, SYSTEMTIME* pstPubDate) PubDate;
				public new function HRESULT(IXFeed *self, uint32* puiTtl) Ttl;
				public new function HRESULT(IXFeed *self, PWSTR* ppszLanguage) Language;
				public new function HRESULT(IXFeed *self, PWSTR* ppszCopyright) Copyright;
				public new function HRESULT(IXFeed *self, BOOL* pbIsList) IsList;
				public new function HRESULT(IXFeed *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, Guid* riid, void** ppv) GetWatcher;
				public new function HRESULT(IXFeed *self, uint32* puiUnreadItemCount) UnreadItemCount;
				public new function HRESULT(IXFeed *self, uint32* puiItemCount) ItemCount;
			}
		}
		[CRepr]
		public struct IXFeed2 : IXFeed
		{
			public const new Guid IID = .(0xce528e77, 0x3716, 0x4eb7, 0x95, 0x6d, 0xf5, 0xe3, 0x75, 0x02, 0xe1, 0x2a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByEffectiveId(uint32 uiEffectiveId, Guid* riid, void** ppv) mut
			{
				return VT.GetItemByEffectiveId(&this, uiEffectiveId, riid, ppv);
			}
			public HRESULT LastItemDownloadTime(SYSTEMTIME* pstLastItemDownloadTime) mut
			{
				return VT.LastItemDownloadTime(&this, pstLastItemDownloadTime);
			}
			public HRESULT Username(PWSTR* ppszUsername) mut
			{
				return VT.Username(&this, ppszUsername);
			}
			public HRESULT Password(PWSTR* ppszPassword) mut
			{
				return VT.Password(&this, ppszPassword);
			}
			public HRESULT SetCredentials(PWSTR pszUsername, PWSTR pszPassword) mut
			{
				return VT.SetCredentials(&this, pszUsername, pszPassword);
			}
			public HRESULT ClearCredentials() mut
			{
				return VT.ClearCredentials(&this);
			}
			[CRepr]
			public struct VTable : IXFeed.VTable
			{
				public new function HRESULT(IXFeed2 *self, uint32 uiEffectiveId, Guid* riid, void** ppv) GetItemByEffectiveId;
				public new function HRESULT(IXFeed2 *self, SYSTEMTIME* pstLastItemDownloadTime) LastItemDownloadTime;
				public new function HRESULT(IXFeed2 *self, PWSTR* ppszUsername) Username;
				public new function HRESULT(IXFeed2 *self, PWSTR* ppszPassword) Password;
				public new function HRESULT(IXFeed2 *self, PWSTR pszUsername, PWSTR pszPassword) SetCredentials;
				public new function HRESULT(IXFeed2 *self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IXFeedEvents : IUnknown
		{
			public const new Guid IID = .(0x1630852e, 0x1263, 0x465b, 0x98, 0xe5, 0xfe, 0x60, 0xff, 0xec, 0x4a, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut
			{
				return VT.Error(&this);
			}
			public HRESULT FeedDeleted(PWSTR pszPath) mut
			{
				return VT.FeedDeleted(&this, pszPath);
			}
			public HRESULT FeedRenamed(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FeedRenamed(&this, pszPath, pszOldPath);
			}
			public HRESULT FeedUrlChanged(PWSTR pszPath) mut
			{
				return VT.FeedUrlChanged(&this, pszPath);
			}
			public HRESULT FeedMoved(PWSTR pszPath, PWSTR pszOldPath) mut
			{
				return VT.FeedMoved(&this, pszPath, pszOldPath);
			}
			public HRESULT FeedDownloading(PWSTR pszPath) mut
			{
				return VT.FeedDownloading(&this, pszPath);
			}
			public HRESULT FeedDownloadCompleted(PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) mut
			{
				return VT.FeedDownloadCompleted(&this, pszPath, fde);
			}
			public HRESULT FeedItemCountChanged(PWSTR pszPath, int32 feicfFlags) mut
			{
				return VT.FeedItemCountChanged(&this, pszPath, feicfFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedEvents *self) Error;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedDeleted;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedRenamed;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedUrlChanged;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath, PWSTR pszOldPath) FeedMoved;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath) FeedDownloading;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath, FEEDS_DOWNLOAD_ERROR fde) FeedDownloadCompleted;
				public new function HRESULT(IXFeedEvents *self, PWSTR pszPath, int32 feicfFlags) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IXFeedItem : IUnknown
		{
			public const new Guid IID = .(0xe757b2f5, 0xe73e, 0x434e, 0xa1, 0xbf, 0x2b, 0xd7, 0xc3, 0xe6, 0x0f, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(FEEDS_XML_INCLUDE_FLAGS fxif, IStream** pps) mut
			{
				return VT.Xml(&this, fxif, pps);
			}
			public HRESULT Title(PWSTR* ppszTitle) mut
			{
				return VT.Title(&this, ppszTitle);
			}
			public HRESULT Link(PWSTR* ppszUrl) mut
			{
				return VT.Link(&this, ppszUrl);
			}
			public HRESULT Guid(PWSTR* ppszGuid) mut
			{
				return VT.Guid(&this, ppszGuid);
			}
			public HRESULT Description(PWSTR* ppszDescription) mut
			{
				return VT.Description(&this, ppszDescription);
			}
			public HRESULT PubDate(SYSTEMTIME* pstPubDate) mut
			{
				return VT.PubDate(&this, pstPubDate);
			}
			public HRESULT Comments(PWSTR* ppszUrl) mut
			{
				return VT.Comments(&this, ppszUrl);
			}
			public HRESULT Author(PWSTR* ppszAuthor) mut
			{
				return VT.Author(&this, ppszAuthor);
			}
			public HRESULT Enclosure(Guid* riid, void** ppv) mut
			{
				return VT.Enclosure(&this, riid, ppv);
			}
			public HRESULT IsRead(BOOL* pbIsRead) mut
			{
				return VT.IsRead(&this, pbIsRead);
			}
			public HRESULT SetIsRead(BOOL bIsRead) mut
			{
				return VT.SetIsRead(&this, bIsRead);
			}
			public HRESULT LocalId(uint32* puiId) mut
			{
				return VT.LocalId(&this, puiId);
			}
			public HRESULT Parent(Guid* riid, void** ppv) mut
			{
				return VT.Parent(&this, riid, ppv);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT DownloadUrl(PWSTR* ppszUrl) mut
			{
				return VT.DownloadUrl(&this, ppszUrl);
			}
			public HRESULT LastDownloadTime(SYSTEMTIME* pstLastDownloadTime) mut
			{
				return VT.LastDownloadTime(&this, pstLastDownloadTime);
			}
			public HRESULT Modified(SYSTEMTIME* pstModifiedTime) mut
			{
				return VT.Modified(&this, pstModifiedTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedItem *self, FEEDS_XML_INCLUDE_FLAGS fxif, IStream** pps) Xml;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszTitle) Title;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) Link;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszGuid) Guid;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszDescription) Description;
				public new function HRESULT(IXFeedItem *self, SYSTEMTIME* pstPubDate) PubDate;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) Comments;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszAuthor) Author;
				public new function HRESULT(IXFeedItem *self, Guid* riid, void** ppv) Enclosure;
				public new function HRESULT(IXFeedItem *self, BOOL* pbIsRead) IsRead;
				public new function HRESULT(IXFeedItem *self, BOOL bIsRead) SetIsRead;
				public new function HRESULT(IXFeedItem *self, uint32* puiId) LocalId;
				public new function HRESULT(IXFeedItem *self, Guid* riid, void** ppv) Parent;
				public new function HRESULT(IXFeedItem *self) Delete;
				public new function HRESULT(IXFeedItem *self, PWSTR* ppszUrl) DownloadUrl;
				public new function HRESULT(IXFeedItem *self, SYSTEMTIME* pstLastDownloadTime) LastDownloadTime;
				public new function HRESULT(IXFeedItem *self, SYSTEMTIME* pstModifiedTime) Modified;
			}
		}
		[CRepr]
		public struct IXFeedItem2 : IXFeedItem
		{
			public const new Guid IID = .(0x6cda2dc7, 0x9013, 0x4522, 0x99, 0x70, 0x2a, 0x9d, 0xd9, 0xea, 0xd5, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EffectiveId(uint32* puiEffectiveId) mut
			{
				return VT.EffectiveId(&this, puiEffectiveId);
			}
			[CRepr]
			public struct VTable : IXFeedItem.VTable
			{
				public new function HRESULT(IXFeedItem2 *self, uint32* puiEffectiveId) EffectiveId;
			}
		}
		[CRepr]
		public struct IXFeedEnclosure : IUnknown
		{
			public const new Guid IID = .(0xbfbfb953, 0x644f, 0x4792, 0xb6, 0x9c, 0xdf, 0xac, 0xa4, 0xcb, 0xf8, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Url(PWSTR* ppszUrl) mut
			{
				return VT.Url(&this, ppszUrl);
			}
			public HRESULT Type(PWSTR* ppszMimeType) mut
			{
				return VT.Type(&this, ppszMimeType);
			}
			public HRESULT Length(uint32* puiLength) mut
			{
				return VT.Length(&this, puiLength);
			}
			public HRESULT AsyncDownload() mut
			{
				return VT.AsyncDownload(&this);
			}
			public HRESULT CancelAsyncDownload() mut
			{
				return VT.CancelAsyncDownload(&this);
			}
			public HRESULT DownloadStatus(FEEDS_DOWNLOAD_STATUS* pfds) mut
			{
				return VT.DownloadStatus(&this, pfds);
			}
			public HRESULT LastDownloadError(FEEDS_DOWNLOAD_ERROR* pfde) mut
			{
				return VT.LastDownloadError(&this, pfde);
			}
			public HRESULT LocalPath(PWSTR* ppszPath) mut
			{
				return VT.LocalPath(&this, ppszPath);
			}
			public HRESULT Parent(Guid* riid, void** ppv) mut
			{
				return VT.Parent(&this, riid, ppv);
			}
			public HRESULT DownloadUrl(PWSTR* ppszUrl) mut
			{
				return VT.DownloadUrl(&this, ppszUrl);
			}
			public HRESULT DownloadMimeType(PWSTR* ppszMimeType) mut
			{
				return VT.DownloadMimeType(&this, ppszMimeType);
			}
			public HRESULT RemoveFile() mut
			{
				return VT.RemoveFile(&this);
			}
			public HRESULT SetFile(PWSTR pszDownloadUrl, PWSTR pszDownloadFilePath, PWSTR pszDownloadMimeType, PWSTR pszEnclosureFilename) mut
			{
				return VT.SetFile(&this, pszDownloadUrl, pszDownloadFilePath, pszDownloadMimeType, pszEnclosureFilename);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXFeedEnclosure *self, PWSTR* ppszUrl) Url;
				public new function HRESULT(IXFeedEnclosure *self, PWSTR* ppszMimeType) Type;
				public new function HRESULT(IXFeedEnclosure *self, uint32* puiLength) Length;
				public new function HRESULT(IXFeedEnclosure *self) AsyncDownload;
				public new function HRESULT(IXFeedEnclosure *self) CancelAsyncDownload;
				public new function HRESULT(IXFeedEnclosure *self, FEEDS_DOWNLOAD_STATUS* pfds) DownloadStatus;
				public new function HRESULT(IXFeedEnclosure *self, FEEDS_DOWNLOAD_ERROR* pfde) LastDownloadError;
				public new function HRESULT(IXFeedEnclosure *self, PWSTR* ppszPath) LocalPath;
				public new function HRESULT(IXFeedEnclosure *self, Guid* riid, void** ppv) Parent;
				public new function HRESULT(IXFeedEnclosure *self, PWSTR* ppszUrl) DownloadUrl;
				public new function HRESULT(IXFeedEnclosure *self, PWSTR* ppszMimeType) DownloadMimeType;
				public new function HRESULT(IXFeedEnclosure *self) RemoveFile;
				public new function HRESULT(IXFeedEnclosure *self, PWSTR pszDownloadUrl, PWSTR pszDownloadFilePath, PWSTR pszDownloadMimeType, PWSTR pszEnclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IFeedsManager : IDispatch
		{
			public const new Guid IID = .(0xa74029cc, 0x1f1a, 0x4906, 0x88, 0xf0, 0x81, 0x06, 0x38, 0xd8, 0x65, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_RootFolder(IDispatch** disp) mut
			{
				return VT.get_RootFolder(&this, disp);
			}
			public HRESULT IsSubscribed(BSTR feedUrl, int16* subscribed) mut
			{
				return VT.IsSubscribed(&this, feedUrl, subscribed);
			}
			public HRESULT ExistsFeed(BSTR feedPath, int16* exists) mut
			{
				return VT.ExistsFeed(&this, feedPath, exists);
			}
			public HRESULT GetFeed(BSTR feedPath, IDispatch** disp) mut
			{
				return VT.GetFeed(&this, feedPath, disp);
			}
			public HRESULT GetFeedByUrl(BSTR feedUrl, IDispatch** disp) mut
			{
				return VT.GetFeedByUrl(&this, feedUrl, disp);
			}
			public HRESULT ExistsFolder(BSTR folderPath, int16* exists) mut
			{
				return VT.ExistsFolder(&this, folderPath, exists);
			}
			public HRESULT GetFolder(BSTR folderPath, IDispatch** disp) mut
			{
				return VT.GetFolder(&this, folderPath, disp);
			}
			public HRESULT DeleteFeed(BSTR feedPath) mut
			{
				return VT.DeleteFeed(&this, feedPath);
			}
			public HRESULT DeleteFolder(BSTR folderPath) mut
			{
				return VT.DeleteFolder(&this, folderPath);
			}
			public HRESULT BackgroundSync(FEEDS_BACKGROUNDSYNC_ACTION action) mut
			{
				return VT.BackgroundSync(&this, action);
			}
			public HRESULT get_BackgroundSyncStatus(FEEDS_BACKGROUNDSYNC_STATUS* status) mut
			{
				return VT.get_BackgroundSyncStatus(&this, status);
			}
			public HRESULT get_DefaultInterval(int32* minutes) mut
			{
				return VT.get_DefaultInterval(&this, minutes);
			}
			public HRESULT put_DefaultInterval(int32 minutes) mut
			{
				return VT.put_DefaultInterval(&this, minutes);
			}
			public HRESULT AsyncSyncAll() mut
			{
				return VT.AsyncSyncAll(&this);
			}
			public HRESULT Normalize(BSTR feedXmlIn, BSTR* feedXmlOut) mut
			{
				return VT.Normalize(&this, feedXmlIn, feedXmlOut);
			}
			public HRESULT get_ItemCountLimit(int32* itemCountLimit) mut
			{
				return VT.get_ItemCountLimit(&this, itemCountLimit);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedsManager *self, IDispatch** disp) get_RootFolder;
				public new function HRESULT(IFeedsManager *self, BSTR feedUrl, int16* subscribed) IsSubscribed;
				public new function HRESULT(IFeedsManager *self, BSTR feedPath, int16* exists) ExistsFeed;
				public new function HRESULT(IFeedsManager *self, BSTR feedPath, IDispatch** disp) GetFeed;
				public new function HRESULT(IFeedsManager *self, BSTR feedUrl, IDispatch** disp) GetFeedByUrl;
				public new function HRESULT(IFeedsManager *self, BSTR folderPath, int16* exists) ExistsFolder;
				public new function HRESULT(IFeedsManager *self, BSTR folderPath, IDispatch** disp) GetFolder;
				public new function HRESULT(IFeedsManager *self, BSTR feedPath) DeleteFeed;
				public new function HRESULT(IFeedsManager *self, BSTR folderPath) DeleteFolder;
				public new function HRESULT(IFeedsManager *self, FEEDS_BACKGROUNDSYNC_ACTION action) BackgroundSync;
				public new function HRESULT(IFeedsManager *self, FEEDS_BACKGROUNDSYNC_STATUS* status) get_BackgroundSyncStatus;
				public new function HRESULT(IFeedsManager *self, int32* minutes) get_DefaultInterval;
				public new function HRESULT(IFeedsManager *self, int32 minutes) put_DefaultInterval;
				public new function HRESULT(IFeedsManager *self) AsyncSyncAll;
				public new function HRESULT(IFeedsManager *self, BSTR feedXmlIn, BSTR* feedXmlOut) Normalize;
				public new function HRESULT(IFeedsManager *self, int32* itemCountLimit) get_ItemCountLimit;
			}
		}
		[CRepr]
		public struct IFeedsEnum : IDispatch
		{
			public const new Guid IID = .(0xe3cd0028, 0x2eed, 0x4c60, 0x8f, 0xae, 0xa3, 0x22, 0x53, 0x09, 0xa8, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* count) mut
			{
				return VT.get_Count(&this, count);
			}
			public HRESULT Item(int32 index, IDispatch** disp) mut
			{
				return VT.Item(&this, index, disp);
			}
			public HRESULT get__NewEnum(IEnumVARIANT** enumVar) mut
			{
				return VT.get__NewEnum(&this, enumVar);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedsEnum *self, int32* count) get_Count;
				public new function HRESULT(IFeedsEnum *self, int32 index, IDispatch** disp) Item;
				public new function HRESULT(IFeedsEnum *self, IEnumVARIANT** enumVar) get__NewEnum;
			}
		}
		[CRepr]
		public struct IFeedFolder : IDispatch
		{
			public const new Guid IID = .(0x81f04ad1, 0x4194, 0x4d7d, 0x86, 0xd6, 0x11, 0x81, 0x3c, 0xec, 0x16, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Feeds(IDispatch** disp) mut
			{
				return VT.get_Feeds(&this, disp);
			}
			public HRESULT get_Subfolders(IDispatch** disp) mut
			{
				return VT.get_Subfolders(&this, disp);
			}
			public HRESULT CreateFeed(BSTR feedName, BSTR feedUrl, IDispatch** disp) mut
			{
				return VT.CreateFeed(&this, feedName, feedUrl, disp);
			}
			public HRESULT CreateSubfolder(BSTR folderName, IDispatch** disp) mut
			{
				return VT.CreateSubfolder(&this, folderName, disp);
			}
			public HRESULT ExistsFeed(BSTR feedName, int16* exists) mut
			{
				return VT.ExistsFeed(&this, feedName, exists);
			}
			public HRESULT GetFeed(BSTR feedName, IDispatch** disp) mut
			{
				return VT.GetFeed(&this, feedName, disp);
			}
			public HRESULT ExistsSubfolder(BSTR folderName, int16* exists) mut
			{
				return VT.ExistsSubfolder(&this, folderName, exists);
			}
			public HRESULT GetSubfolder(BSTR folderName, IDispatch** disp) mut
			{
				return VT.GetSubfolder(&this, folderName, disp);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT get_Name(BSTR* folderName) mut
			{
				return VT.get_Name(&this, folderName);
			}
			public HRESULT Rename(BSTR folderName) mut
			{
				return VT.Rename(&this, folderName);
			}
			public HRESULT get_Path(BSTR* folderPath) mut
			{
				return VT.get_Path(&this, folderPath);
			}
			public HRESULT Move(BSTR newParentPath) mut
			{
				return VT.Move(&this, newParentPath);
			}
			public HRESULT get_Parent(IDispatch** disp) mut
			{
				return VT.get_Parent(&this, disp);
			}
			public HRESULT get_IsRoot(int16* isRoot) mut
			{
				return VT.get_IsRoot(&this, isRoot);
			}
			public HRESULT get_TotalUnreadItemCount(int32* count) mut
			{
				return VT.get_TotalUnreadItemCount(&this, count);
			}
			public HRESULT get_TotalItemCount(int32* count) mut
			{
				return VT.get_TotalItemCount(&this, count);
			}
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) mut
			{
				return VT.GetWatcher(&this, @scope, mask, disp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedFolder *self, IDispatch** disp) get_Feeds;
				public new function HRESULT(IFeedFolder *self, IDispatch** disp) get_Subfolders;
				public new function HRESULT(IFeedFolder *self, BSTR feedName, BSTR feedUrl, IDispatch** disp) CreateFeed;
				public new function HRESULT(IFeedFolder *self, BSTR folderName, IDispatch** disp) CreateSubfolder;
				public new function HRESULT(IFeedFolder *self, BSTR feedName, int16* exists) ExistsFeed;
				public new function HRESULT(IFeedFolder *self, BSTR feedName, IDispatch** disp) GetFeed;
				public new function HRESULT(IFeedFolder *self, BSTR folderName, int16* exists) ExistsSubfolder;
				public new function HRESULT(IFeedFolder *self, BSTR folderName, IDispatch** disp) GetSubfolder;
				public new function HRESULT(IFeedFolder *self) Delete;
				public new function HRESULT(IFeedFolder *self, BSTR* folderName) get_Name;
				public new function HRESULT(IFeedFolder *self, BSTR folderName) Rename;
				public new function HRESULT(IFeedFolder *self, BSTR* folderPath) get_Path;
				public new function HRESULT(IFeedFolder *self, BSTR newParentPath) Move;
				public new function HRESULT(IFeedFolder *self, IDispatch** disp) get_Parent;
				public new function HRESULT(IFeedFolder *self, int16* isRoot) get_IsRoot;
				public new function HRESULT(IFeedFolder *self, int32* count) get_TotalUnreadItemCount;
				public new function HRESULT(IFeedFolder *self, int32* count) get_TotalItemCount;
				public new function HRESULT(IFeedFolder *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) GetWatcher;
			}
		}
		[CRepr]
		public struct IFeedFolderEvents : IDispatch
		{
			public const new Guid IID = .(0x20a59fa6, 0xa844, 0x4630, 0x9e, 0x98, 0x17, 0x5f, 0x70, 0xb4, 0xd5, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut
			{
				return VT.Error(&this);
			}
			public HRESULT FolderAdded(BSTR path) mut
			{
				return VT.FolderAdded(&this, path);
			}
			public HRESULT FolderDeleted(BSTR path) mut
			{
				return VT.FolderDeleted(&this, path);
			}
			public HRESULT FolderRenamed(BSTR path, BSTR oldPath) mut
			{
				return VT.FolderRenamed(&this, path, oldPath);
			}
			public HRESULT FolderMovedFrom(BSTR path, BSTR oldPath) mut
			{
				return VT.FolderMovedFrom(&this, path, oldPath);
			}
			public HRESULT FolderMovedTo(BSTR path, BSTR oldPath) mut
			{
				return VT.FolderMovedTo(&this, path, oldPath);
			}
			public HRESULT FolderItemCountChanged(BSTR path, int32 itemCountType) mut
			{
				return VT.FolderItemCountChanged(&this, path, itemCountType);
			}
			public HRESULT FeedAdded(BSTR path) mut
			{
				return VT.FeedAdded(&this, path);
			}
			public HRESULT FeedDeleted(BSTR path) mut
			{
				return VT.FeedDeleted(&this, path);
			}
			public HRESULT FeedRenamed(BSTR path, BSTR oldPath) mut
			{
				return VT.FeedRenamed(&this, path, oldPath);
			}
			public HRESULT FeedUrlChanged(BSTR path) mut
			{
				return VT.FeedUrlChanged(&this, path);
			}
			public HRESULT FeedMovedFrom(BSTR path, BSTR oldPath) mut
			{
				return VT.FeedMovedFrom(&this, path, oldPath);
			}
			public HRESULT FeedMovedTo(BSTR path, BSTR oldPath) mut
			{
				return VT.FeedMovedTo(&this, path, oldPath);
			}
			public HRESULT FeedDownloading(BSTR path) mut
			{
				return VT.FeedDownloading(&this, path);
			}
			public HRESULT FeedDownloadCompleted(BSTR path, FEEDS_DOWNLOAD_ERROR error) mut
			{
				return VT.FeedDownloadCompleted(&this, path, error);
			}
			public HRESULT FeedItemCountChanged(BSTR path, int32 itemCountType) mut
			{
				return VT.FeedItemCountChanged(&this, path, itemCountType);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedFolderEvents *self) Error;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FolderAdded;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FolderDeleted;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderRenamed;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderMovedFrom;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FolderMovedTo;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, int32 itemCountType) FolderItemCountChanged;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FeedAdded;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FeedDeleted;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedRenamed;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FeedUrlChanged;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedMovedFrom;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, BSTR oldPath) FeedMovedTo;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path) FeedDownloading;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public new function HRESULT(IFeedFolderEvents *self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeed : IDispatch
		{
			public const new Guid IID = .(0xf7f915d8, 0x2ede, 0x42bc, 0x98, 0xe7, 0xa5, 0xd0, 0x50, 0x63, 0xa7, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(int32 count, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) mut
			{
				return VT.Xml(&this, count, sortProperty, sortOrder, filterFlags, includeFlags, xml);
			}
			public HRESULT get_Name(BSTR* name) mut
			{
				return VT.get_Name(&this, name);
			}
			public HRESULT Rename(BSTR name) mut
			{
				return VT.Rename(&this, name);
			}
			public HRESULT get_Url(BSTR* feedUrl) mut
			{
				return VT.get_Url(&this, feedUrl);
			}
			public HRESULT put_Url(BSTR feedUrl) mut
			{
				return VT.put_Url(&this, feedUrl);
			}
			public HRESULT get_LocalId(BSTR* feedGuid) mut
			{
				return VT.get_LocalId(&this, feedGuid);
			}
			public HRESULT get_Path(BSTR* path) mut
			{
				return VT.get_Path(&this, path);
			}
			public HRESULT Move(BSTR newParentPath) mut
			{
				return VT.Move(&this, newParentPath);
			}
			public HRESULT get_Parent(IDispatch** disp) mut
			{
				return VT.get_Parent(&this, disp);
			}
			public HRESULT get_LastWriteTime(double* lastWrite) mut
			{
				return VT.get_LastWriteTime(&this, lastWrite);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT Download() mut
			{
				return VT.Download(&this);
			}
			public HRESULT AsyncDownload() mut
			{
				return VT.AsyncDownload(&this);
			}
			public HRESULT CancelAsyncDownload() mut
			{
				return VT.CancelAsyncDownload(&this);
			}
			public HRESULT get_SyncSetting(FEEDS_SYNC_SETTING* syncSetting) mut
			{
				return VT.get_SyncSetting(&this, syncSetting);
			}
			public HRESULT put_SyncSetting(FEEDS_SYNC_SETTING syncSetting) mut
			{
				return VT.put_SyncSetting(&this, syncSetting);
			}
			public HRESULT get_Interval(int32* minutes) mut
			{
				return VT.get_Interval(&this, minutes);
			}
			public HRESULT put_Interval(int32 minutes) mut
			{
				return VT.put_Interval(&this, minutes);
			}
			public HRESULT get_LastDownloadTime(double* lastDownload) mut
			{
				return VT.get_LastDownloadTime(&this, lastDownload);
			}
			public HRESULT get_LocalEnclosurePath(BSTR* path) mut
			{
				return VT.get_LocalEnclosurePath(&this, path);
			}
			public HRESULT get_Items(IDispatch** disp) mut
			{
				return VT.get_Items(&this, disp);
			}
			public HRESULT GetItem(int32 itemId, IDispatch** disp) mut
			{
				return VT.GetItem(&this, itemId, disp);
			}
			public HRESULT get_Title(BSTR* title) mut
			{
				return VT.get_Title(&this, title);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT get_Link(BSTR* homePage) mut
			{
				return VT.get_Link(&this, homePage);
			}
			public HRESULT get_Image(BSTR* imageUrl) mut
			{
				return VT.get_Image(&this, imageUrl);
			}
			public HRESULT get_LastBuildDate(double* lastBuildDate) mut
			{
				return VT.get_LastBuildDate(&this, lastBuildDate);
			}
			public HRESULT get_PubDate(double* lastPopulateDate) mut
			{
				return VT.get_PubDate(&this, lastPopulateDate);
			}
			public HRESULT get_Ttl(int32* ttl) mut
			{
				return VT.get_Ttl(&this, ttl);
			}
			public HRESULT get_Language(BSTR* language) mut
			{
				return VT.get_Language(&this, language);
			}
			public HRESULT get_Copyright(BSTR* copyright) mut
			{
				return VT.get_Copyright(&this, copyright);
			}
			public HRESULT get_MaxItemCount(int32* count) mut
			{
				return VT.get_MaxItemCount(&this, count);
			}
			public HRESULT put_MaxItemCount(int32 count) mut
			{
				return VT.put_MaxItemCount(&this, count);
			}
			public HRESULT get_DownloadEnclosuresAutomatically(int16* downloadEnclosuresAutomatically) mut
			{
				return VT.get_DownloadEnclosuresAutomatically(&this, downloadEnclosuresAutomatically);
			}
			public HRESULT put_DownloadEnclosuresAutomatically(int16 downloadEnclosuresAutomatically) mut
			{
				return VT.put_DownloadEnclosuresAutomatically(&this, downloadEnclosuresAutomatically);
			}
			public HRESULT get_DownloadStatus(FEEDS_DOWNLOAD_STATUS* status) mut
			{
				return VT.get_DownloadStatus(&this, status);
			}
			public HRESULT get_LastDownloadError(FEEDS_DOWNLOAD_ERROR* error) mut
			{
				return VT.get_LastDownloadError(&this, error);
			}
			public HRESULT Merge(BSTR feedXml, BSTR feedUrl) mut
			{
				return VT.Merge(&this, feedXml, feedUrl);
			}
			public HRESULT get_DownloadUrl(BSTR* feedUrl) mut
			{
				return VT.get_DownloadUrl(&this, feedUrl);
			}
			public HRESULT get_IsList(int16* isList) mut
			{
				return VT.get_IsList(&this, isList);
			}
			public HRESULT MarkAllItemsRead() mut
			{
				return VT.MarkAllItemsRead(&this);
			}
			public HRESULT GetWatcher(FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) mut
			{
				return VT.GetWatcher(&this, @scope, mask, disp);
			}
			public HRESULT get_UnreadItemCount(int32* count) mut
			{
				return VT.get_UnreadItemCount(&this, count);
			}
			public HRESULT get_ItemCount(int32* count) mut
			{
				return VT.get_ItemCount(&this, count);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeed *self, int32 count, FEEDS_XML_SORT_PROPERTY sortProperty, FEEDS_XML_SORT_ORDER sortOrder, FEEDS_XML_FILTER_FLAGS filterFlags, FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) Xml;
				public new function HRESULT(IFeed *self, BSTR* name) get_Name;
				public new function HRESULT(IFeed *self, BSTR name) Rename;
				public new function HRESULT(IFeed *self, BSTR* feedUrl) get_Url;
				public new function HRESULT(IFeed *self, BSTR feedUrl) put_Url;
				public new function HRESULT(IFeed *self, BSTR* feedGuid) get_LocalId;
				public new function HRESULT(IFeed *self, BSTR* path) get_Path;
				public new function HRESULT(IFeed *self, BSTR newParentPath) Move;
				public new function HRESULT(IFeed *self, IDispatch** disp) get_Parent;
				public new function HRESULT(IFeed *self, double* lastWrite) get_LastWriteTime;
				public new function HRESULT(IFeed *self) Delete;
				public new function HRESULT(IFeed *self) Download;
				public new function HRESULT(IFeed *self) AsyncDownload;
				public new function HRESULT(IFeed *self) CancelAsyncDownload;
				public new function HRESULT(IFeed *self, FEEDS_SYNC_SETTING* syncSetting) get_SyncSetting;
				public new function HRESULT(IFeed *self, FEEDS_SYNC_SETTING syncSetting) put_SyncSetting;
				public new function HRESULT(IFeed *self, int32* minutes) get_Interval;
				public new function HRESULT(IFeed *self, int32 minutes) put_Interval;
				public new function HRESULT(IFeed *self, double* lastDownload) get_LastDownloadTime;
				public new function HRESULT(IFeed *self, BSTR* path) get_LocalEnclosurePath;
				public new function HRESULT(IFeed *self, IDispatch** disp) get_Items;
				public new function HRESULT(IFeed *self, int32 itemId, IDispatch** disp) GetItem;
				public new function HRESULT(IFeed *self, BSTR* title) get_Title;
				public new function HRESULT(IFeed *self, BSTR* description) get_Description;
				public new function HRESULT(IFeed *self, BSTR* homePage) get_Link;
				public new function HRESULT(IFeed *self, BSTR* imageUrl) get_Image;
				public new function HRESULT(IFeed *self, double* lastBuildDate) get_LastBuildDate;
				public new function HRESULT(IFeed *self, double* lastPopulateDate) get_PubDate;
				public new function HRESULT(IFeed *self, int32* ttl) get_Ttl;
				public new function HRESULT(IFeed *self, BSTR* language) get_Language;
				public new function HRESULT(IFeed *self, BSTR* copyright) get_Copyright;
				public new function HRESULT(IFeed *self, int32* count) get_MaxItemCount;
				public new function HRESULT(IFeed *self, int32 count) put_MaxItemCount;
				public new function HRESULT(IFeed *self, int16* downloadEnclosuresAutomatically) get_DownloadEnclosuresAutomatically;
				public new function HRESULT(IFeed *self, int16 downloadEnclosuresAutomatically) put_DownloadEnclosuresAutomatically;
				public new function HRESULT(IFeed *self, FEEDS_DOWNLOAD_STATUS* status) get_DownloadStatus;
				public new function HRESULT(IFeed *self, FEEDS_DOWNLOAD_ERROR* error) get_LastDownloadError;
				public new function HRESULT(IFeed *self, BSTR feedXml, BSTR feedUrl) Merge;
				public new function HRESULT(IFeed *self, BSTR* feedUrl) get_DownloadUrl;
				public new function HRESULT(IFeed *self, int16* isList) get_IsList;
				public new function HRESULT(IFeed *self) MarkAllItemsRead;
				public new function HRESULT(IFeed *self, FEEDS_EVENTS_SCOPE @scope, FEEDS_EVENTS_MASK mask, IDispatch** disp) GetWatcher;
				public new function HRESULT(IFeed *self, int32* count) get_UnreadItemCount;
				public new function HRESULT(IFeed *self, int32* count) get_ItemCount;
			}
		}
		[CRepr]
		public struct IFeed2 : IFeed
		{
			public const new Guid IID = .(0x33f2ea09, 0x1398, 0x4ab9, 0xb6, 0xa4, 0xf9, 0x4b, 0x49, 0xd0, 0xa4, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemByEffectiveId(int32 itemEffectiveId, IDispatch** disp) mut
			{
				return VT.GetItemByEffectiveId(&this, itemEffectiveId, disp);
			}
			public HRESULT get_LastItemDownloadTime(double* lastItemDownloadTime) mut
			{
				return VT.get_LastItemDownloadTime(&this, lastItemDownloadTime);
			}
			public HRESULT get_Username(BSTR* username) mut
			{
				return VT.get_Username(&this, username);
			}
			public HRESULT get_Password(BSTR* password) mut
			{
				return VT.get_Password(&this, password);
			}
			public HRESULT SetCredentials(BSTR username, BSTR password) mut
			{
				return VT.SetCredentials(&this, username, password);
			}
			public HRESULT ClearCredentials() mut
			{
				return VT.ClearCredentials(&this);
			}
			[CRepr]
			public struct VTable : IFeed.VTable
			{
				public new function HRESULT(IFeed2 *self, int32 itemEffectiveId, IDispatch** disp) GetItemByEffectiveId;
				public new function HRESULT(IFeed2 *self, double* lastItemDownloadTime) get_LastItemDownloadTime;
				public new function HRESULT(IFeed2 *self, BSTR* username) get_Username;
				public new function HRESULT(IFeed2 *self, BSTR* password) get_Password;
				public new function HRESULT(IFeed2 *self, BSTR username, BSTR password) SetCredentials;
				public new function HRESULT(IFeed2 *self) ClearCredentials;
			}
		}
		[CRepr]
		public struct IFeedEvents : IDispatch
		{
			public const new Guid IID = .(0xabf35c99, 0x0681, 0x47ea, 0x9a, 0x8c, 0x14, 0x36, 0xa3, 0x75, 0xa9, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Error() mut
			{
				return VT.Error(&this);
			}
			public HRESULT FeedDeleted(BSTR path) mut
			{
				return VT.FeedDeleted(&this, path);
			}
			public HRESULT FeedRenamed(BSTR path, BSTR oldPath) mut
			{
				return VT.FeedRenamed(&this, path, oldPath);
			}
			public HRESULT FeedUrlChanged(BSTR path) mut
			{
				return VT.FeedUrlChanged(&this, path);
			}
			public HRESULT FeedMoved(BSTR path, BSTR oldPath) mut
			{
				return VT.FeedMoved(&this, path, oldPath);
			}
			public HRESULT FeedDownloading(BSTR path) mut
			{
				return VT.FeedDownloading(&this, path);
			}
			public HRESULT FeedDownloadCompleted(BSTR path, FEEDS_DOWNLOAD_ERROR error) mut
			{
				return VT.FeedDownloadCompleted(&this, path, error);
			}
			public HRESULT FeedItemCountChanged(BSTR path, int32 itemCountType) mut
			{
				return VT.FeedItemCountChanged(&this, path, itemCountType);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedEvents *self) Error;
				public new function HRESULT(IFeedEvents *self, BSTR path) FeedDeleted;
				public new function HRESULT(IFeedEvents *self, BSTR path, BSTR oldPath) FeedRenamed;
				public new function HRESULT(IFeedEvents *self, BSTR path) FeedUrlChanged;
				public new function HRESULT(IFeedEvents *self, BSTR path, BSTR oldPath) FeedMoved;
				public new function HRESULT(IFeedEvents *self, BSTR path) FeedDownloading;
				public new function HRESULT(IFeedEvents *self, BSTR path, FEEDS_DOWNLOAD_ERROR error) FeedDownloadCompleted;
				public new function HRESULT(IFeedEvents *self, BSTR path, int32 itemCountType) FeedItemCountChanged;
			}
		}
		[CRepr]
		public struct IFeedItem : IDispatch
		{
			public const new Guid IID = .(0x0a1e6cad, 0x0a47, 0x4da2, 0xa1, 0x3d, 0x5b, 0xaa, 0xa5, 0xc8, 0xbd, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Xml(FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) mut
			{
				return VT.Xml(&this, includeFlags, xml);
			}
			public HRESULT get_Title(BSTR* title) mut
			{
				return VT.get_Title(&this, title);
			}
			public HRESULT get_Link(BSTR* linkUrl) mut
			{
				return VT.get_Link(&this, linkUrl);
			}
			public HRESULT get_Guid(BSTR* itemGuid) mut
			{
				return VT.get_Guid(&this, itemGuid);
			}
			public HRESULT get_Description(BSTR* description) mut
			{
				return VT.get_Description(&this, description);
			}
			public HRESULT get_PubDate(double* pubDate) mut
			{
				return VT.get_PubDate(&this, pubDate);
			}
			public HRESULT get_Comments(BSTR* comments) mut
			{
				return VT.get_Comments(&this, comments);
			}
			public HRESULT get_Author(BSTR* author) mut
			{
				return VT.get_Author(&this, author);
			}
			public HRESULT get_Enclosure(IDispatch** disp) mut
			{
				return VT.get_Enclosure(&this, disp);
			}
			public HRESULT get_IsRead(int16* isRead) mut
			{
				return VT.get_IsRead(&this, isRead);
			}
			public HRESULT put_IsRead(int16 isRead) mut
			{
				return VT.put_IsRead(&this, isRead);
			}
			public HRESULT get_LocalId(int32* itemId) mut
			{
				return VT.get_LocalId(&this, itemId);
			}
			public HRESULT get_Parent(IDispatch** disp) mut
			{
				return VT.get_Parent(&this, disp);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT get_DownloadUrl(BSTR* itemUrl) mut
			{
				return VT.get_DownloadUrl(&this, itemUrl);
			}
			public HRESULT get_LastDownloadTime(double* lastDownload) mut
			{
				return VT.get_LastDownloadTime(&this, lastDownload);
			}
			public HRESULT get_Modified(double* modified) mut
			{
				return VT.get_Modified(&this, modified);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedItem *self, FEEDS_XML_INCLUDE_FLAGS includeFlags, BSTR* xml) Xml;
				public new function HRESULT(IFeedItem *self, BSTR* title) get_Title;
				public new function HRESULT(IFeedItem *self, BSTR* linkUrl) get_Link;
				public new function HRESULT(IFeedItem *self, BSTR* itemGuid) get_Guid;
				public new function HRESULT(IFeedItem *self, BSTR* description) get_Description;
				public new function HRESULT(IFeedItem *self, double* pubDate) get_PubDate;
				public new function HRESULT(IFeedItem *self, BSTR* comments) get_Comments;
				public new function HRESULT(IFeedItem *self, BSTR* author) get_Author;
				public new function HRESULT(IFeedItem *self, IDispatch** disp) get_Enclosure;
				public new function HRESULT(IFeedItem *self, int16* isRead) get_IsRead;
				public new function HRESULT(IFeedItem *self, int16 isRead) put_IsRead;
				public new function HRESULT(IFeedItem *self, int32* itemId) get_LocalId;
				public new function HRESULT(IFeedItem *self, IDispatch** disp) get_Parent;
				public new function HRESULT(IFeedItem *self) Delete;
				public new function HRESULT(IFeedItem *self, BSTR* itemUrl) get_DownloadUrl;
				public new function HRESULT(IFeedItem *self, double* lastDownload) get_LastDownloadTime;
				public new function HRESULT(IFeedItem *self, double* modified) get_Modified;
			}
		}
		[CRepr]
		public struct IFeedItem2 : IFeedItem
		{
			public const new Guid IID = .(0x79ac9ef4, 0xf9c1, 0x4d2b, 0xa5, 0x0b, 0xa7, 0xff, 0xba, 0x4d, 0xcf, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EffectiveId(int32* effectiveId) mut
			{
				return VT.get_EffectiveId(&this, effectiveId);
			}
			[CRepr]
			public struct VTable : IFeedItem.VTable
			{
				public new function HRESULT(IFeedItem2 *self, int32* effectiveId) get_EffectiveId;
			}
		}
		[CRepr]
		public struct IFeedEnclosure : IDispatch
		{
			public const new Guid IID = .(0x361c26f7, 0x90a4, 0x4e67, 0xae, 0x09, 0x3a, 0x36, 0xa5, 0x46, 0x43, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Url(BSTR* enclosureUrl) mut
			{
				return VT.get_Url(&this, enclosureUrl);
			}
			public HRESULT get_Type(BSTR* mimeType) mut
			{
				return VT.get_Type(&this, mimeType);
			}
			public HRESULT get_Length(int32* length) mut
			{
				return VT.get_Length(&this, length);
			}
			public HRESULT AsyncDownload() mut
			{
				return VT.AsyncDownload(&this);
			}
			public HRESULT CancelAsyncDownload() mut
			{
				return VT.CancelAsyncDownload(&this);
			}
			public HRESULT get_DownloadStatus(FEEDS_DOWNLOAD_STATUS* status) mut
			{
				return VT.get_DownloadStatus(&this, status);
			}
			public HRESULT get_LastDownloadError(FEEDS_DOWNLOAD_ERROR* error) mut
			{
				return VT.get_LastDownloadError(&this, error);
			}
			public HRESULT get_LocalPath(BSTR* localPath) mut
			{
				return VT.get_LocalPath(&this, localPath);
			}
			public HRESULT get_Parent(IDispatch** disp) mut
			{
				return VT.get_Parent(&this, disp);
			}
			public HRESULT get_DownloadUrl(BSTR* enclosureUrl) mut
			{
				return VT.get_DownloadUrl(&this, enclosureUrl);
			}
			public HRESULT get_DownloadMimeType(BSTR* mimeType) mut
			{
				return VT.get_DownloadMimeType(&this, mimeType);
			}
			public HRESULT RemoveFile() mut
			{
				return VT.RemoveFile(&this);
			}
			public HRESULT SetFile(BSTR downloadUrl, BSTR downloadFilePath, BSTR downloadMimeType, BSTR enclosureFilename) mut
			{
				return VT.SetFile(&this, downloadUrl, downloadFilePath, downloadMimeType, enclosureFilename);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFeedEnclosure *self, BSTR* enclosureUrl) get_Url;
				public new function HRESULT(IFeedEnclosure *self, BSTR* mimeType) get_Type;
				public new function HRESULT(IFeedEnclosure *self, int32* length) get_Length;
				public new function HRESULT(IFeedEnclosure *self) AsyncDownload;
				public new function HRESULT(IFeedEnclosure *self) CancelAsyncDownload;
				public new function HRESULT(IFeedEnclosure *self, FEEDS_DOWNLOAD_STATUS* status) get_DownloadStatus;
				public new function HRESULT(IFeedEnclosure *self, FEEDS_DOWNLOAD_ERROR* error) get_LastDownloadError;
				public new function HRESULT(IFeedEnclosure *self, BSTR* localPath) get_LocalPath;
				public new function HRESULT(IFeedEnclosure *self, IDispatch** disp) get_Parent;
				public new function HRESULT(IFeedEnclosure *self, BSTR* enclosureUrl) get_DownloadUrl;
				public new function HRESULT(IFeedEnclosure *self, BSTR* mimeType) get_DownloadMimeType;
				public new function HRESULT(IFeedEnclosure *self) RemoveFile;
				public new function HRESULT(IFeedEnclosure *self, BSTR downloadUrl, BSTR downloadFilePath, BSTR downloadMimeType, BSTR enclosureFilename) SetFile;
			}
		}
		[CRepr]
		public struct IWMPEffects : IUnknown
		{
			public const new Guid IID = .(0xd3984c13, 0xc3cb, 0x48e2, 0x8b, 0xe5, 0x51, 0x68, 0x34, 0x0b, 0x4f, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Render(TimedLevel* pLevels, HDC hdc, RECT* prc) mut
			{
				return VT.Render(&this, pLevels, hdc, prc);
			}
			public HRESULT MediaInfo(int32 lChannelCount, int32 lSampleRate, BSTR bstrTitle) mut
			{
				return VT.MediaInfo(&this, lChannelCount, lSampleRate, bstrTitle);
			}
			public HRESULT GetCapabilities(uint32* pdwCapabilities) mut
			{
				return VT.GetCapabilities(&this, pdwCapabilities);
			}
			public HRESULT GetTitle(BSTR* bstrTitle) mut
			{
				return VT.GetTitle(&this, bstrTitle);
			}
			public HRESULT GetPresetTitle(int32 nPreset, BSTR* bstrPresetTitle) mut
			{
				return VT.GetPresetTitle(&this, nPreset, bstrPresetTitle);
			}
			public HRESULT GetPresetCount(int32* pnPresetCount) mut
			{
				return VT.GetPresetCount(&this, pnPresetCount);
			}
			public HRESULT SetCurrentPreset(int32 nPreset) mut
			{
				return VT.SetCurrentPreset(&this, nPreset);
			}
			public HRESULT GetCurrentPreset(int32* pnPreset) mut
			{
				return VT.GetCurrentPreset(&this, pnPreset);
			}
			public HRESULT DisplayPropertyPage(HWND hwndOwner) mut
			{
				return VT.DisplayPropertyPage(&this, hwndOwner);
			}
			public HRESULT GoFullscreen(BOOL fFullScreen) mut
			{
				return VT.GoFullscreen(&this, fFullScreen);
			}
			public HRESULT RenderFullScreen(TimedLevel* pLevels) mut
			{
				return VT.RenderFullScreen(&this, pLevels);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPEffects *self, TimedLevel* pLevels, HDC hdc, RECT* prc) Render;
				public new function HRESULT(IWMPEffects *self, int32 lChannelCount, int32 lSampleRate, BSTR bstrTitle) MediaInfo;
				public new function HRESULT(IWMPEffects *self, uint32* pdwCapabilities) GetCapabilities;
				public new function HRESULT(IWMPEffects *self, BSTR* bstrTitle) GetTitle;
				public new function HRESULT(IWMPEffects *self, int32 nPreset, BSTR* bstrPresetTitle) GetPresetTitle;
				public new function HRESULT(IWMPEffects *self, int32* pnPresetCount) GetPresetCount;
				public new function HRESULT(IWMPEffects *self, int32 nPreset) SetCurrentPreset;
				public new function HRESULT(IWMPEffects *self, int32* pnPreset) GetCurrentPreset;
				public new function HRESULT(IWMPEffects *self, HWND hwndOwner) DisplayPropertyPage;
				public new function HRESULT(IWMPEffects *self, BOOL fFullScreen) GoFullscreen;
				public new function HRESULT(IWMPEffects *self, TimedLevel* pLevels) RenderFullScreen;
			}
		}
		[CRepr]
		public struct IWMPEffects2 : IWMPEffects
		{
			public const new Guid IID = .(0x695386ec, 0xaa3c, 0x4618, 0xa5, 0xe1, 0xdd, 0x9a, 0x8b, 0x98, 0x76, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCore(IWMPCore* pPlayer) mut
			{
				return VT.SetCore(&this, pPlayer);
			}
			public HRESULT Create(HWND hwndParent) mut
			{
				return VT.Create(&this, hwndParent);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT NotifyNewMedia(IWMPMedia* pMedia) mut
			{
				return VT.NotifyNewMedia(&this, pMedia);
			}
			public HRESULT OnWindowMessage(uint32 msg, WPARAM WParam, LPARAM LParam, LRESULT* plResultParam) mut
			{
				return VT.OnWindowMessage(&this, msg, WParam, LParam, plResultParam);
			}
			public HRESULT RenderWindowed(TimedLevel* pData, BOOL fRequiredRender) mut
			{
				return VT.RenderWindowed(&this, pData, fRequiredRender);
			}
			[CRepr]
			public struct VTable : IWMPEffects.VTable
			{
				public new function HRESULT(IWMPEffects2 *self, IWMPCore* pPlayer) SetCore;
				public new function HRESULT(IWMPEffects2 *self, HWND hwndParent) Create;
				public new function HRESULT(IWMPEffects2 *self) Destroy;
				public new function HRESULT(IWMPEffects2 *self, IWMPMedia* pMedia) NotifyNewMedia;
				public new function HRESULT(IWMPEffects2 *self, uint32 msg, WPARAM WParam, LPARAM LParam, LRESULT* plResultParam) OnWindowMessage;
				public new function HRESULT(IWMPEffects2 *self, TimedLevel* pData, BOOL fRequiredRender) RenderWindowed;
			}
		}
		[CRepr]
		public struct IWMPPluginUI : IUnknown
		{
			public const new Guid IID = .(0x4c5e8f9f, 0xad3e, 0x4bf9, 0x97, 0x53, 0xfc, 0xd3, 0x0d, 0x6d, 0x38, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCore(IWMPCore* pCore) mut
			{
				return VT.SetCore(&this, pCore);
			}
			public HRESULT Create(HWND hwndParent, HWND* phwndWindow) mut
			{
				return VT.Create(&this, hwndParent, phwndWindow);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT DisplayPropertyPage(HWND hwndParent) mut
			{
				return VT.DisplayPropertyPage(&this, hwndParent);
			}
			public HRESULT GetProperty(PWSTR pwszName, VARIANT* pvarProperty) mut
			{
				return VT.GetProperty(&this, pwszName, pvarProperty);
			}
			public HRESULT SetProperty(PWSTR pwszName, VARIANT* pvarProperty) mut
			{
				return VT.SetProperty(&this, pwszName, pvarProperty);
			}
			public HRESULT TranslateAccelerator(MSG* lpmsg) mut
			{
				return VT.TranslateAccelerator(&this, lpmsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPPluginUI *self, IWMPCore* pCore) SetCore;
				public new function HRESULT(IWMPPluginUI *self, HWND hwndParent, HWND* phwndWindow) Create;
				public new function HRESULT(IWMPPluginUI *self) Destroy;
				public new function HRESULT(IWMPPluginUI *self, HWND hwndParent) DisplayPropertyPage;
				public new function HRESULT(IWMPPluginUI *self, PWSTR pwszName, VARIANT* pvarProperty) GetProperty;
				public new function HRESULT(IWMPPluginUI *self, PWSTR pwszName, VARIANT* pvarProperty) SetProperty;
				public new function HRESULT(IWMPPluginUI *self, MSG* lpmsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IWMPContentContainer : IUnknown
		{
			public const new Guid IID = .(0xad7f4d9c, 0x1a9f, 0x4ed2, 0x98, 0x15, 0xec, 0xc0, 0xb5, 0x8c, 0xb6, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetID(uint32* pContentID) mut
			{
				return VT.GetID(&this, pContentID);
			}
			public HRESULT GetPrice(BSTR* pbstrPrice) mut
			{
				return VT.GetPrice(&this, pbstrPrice);
			}
			public HRESULT ComGetType(BSTR* pbstrType) mut
			{
				return VT.ComGetType(&this, pbstrType);
			}
			public HRESULT GetContentCount(uint32* pcContent) mut
			{
				return VT.GetContentCount(&this, pcContent);
			}
			public HRESULT GetContentPrice(uint32 idxContent, BSTR* pbstrPrice) mut
			{
				return VT.GetContentPrice(&this, idxContent, pbstrPrice);
			}
			public HRESULT GetContentID(uint32 idxContent, uint32* pContentID) mut
			{
				return VT.GetContentID(&this, idxContent, pContentID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPContentContainer *self, uint32* pContentID) GetID;
				public new function HRESULT(IWMPContentContainer *self, BSTR* pbstrPrice) GetPrice;
				public new function HRESULT(IWMPContentContainer *self, BSTR* pbstrType) ComGetType;
				public new function HRESULT(IWMPContentContainer *self, uint32* pcContent) GetContentCount;
				public new function HRESULT(IWMPContentContainer *self, uint32 idxContent, BSTR* pbstrPrice) GetContentPrice;
				public new function HRESULT(IWMPContentContainer *self, uint32 idxContent, uint32* pContentID) GetContentID;
			}
		}
		[CRepr]
		public struct IWMPContentContainerList : IUnknown
		{
			public const new Guid IID = .(0xa9937f78, 0x0802, 0x4af8, 0x8b, 0x8d, 0xe3, 0xf0, 0x45, 0xbc, 0x8a, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTransactionType(WMPTransactionType* pwmptt) mut
			{
				return VT.GetTransactionType(&this, pwmptt);
			}
			public HRESULT GetContainerCount(uint32* pcContainer) mut
			{
				return VT.GetContainerCount(&this, pcContainer);
			}
			public HRESULT GetContainer(uint32 idxContainer, IWMPContentContainer** ppContent) mut
			{
				return VT.GetContainer(&this, idxContainer, ppContent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPContentContainerList *self, WMPTransactionType* pwmptt) GetTransactionType;
				public new function HRESULT(IWMPContentContainerList *self, uint32* pcContainer) GetContainerCount;
				public new function HRESULT(IWMPContentContainerList *self, uint32 idxContainer, IWMPContentContainer** ppContent) GetContainer;
			}
		}
		[CRepr]
		public struct IWMPContentPartnerCallback : IUnknown
		{
			public const new Guid IID = .(0x9e8f7da2, 0x0695, 0x403c, 0xb6, 0x97, 0xda, 0x10, 0xfa, 0xfa, 0xa6, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify(WMPCallbackNotification type, VARIANT* pContext) mut
			{
				return VT.Notify(&this, type, pContext);
			}
			public HRESULT BuyComplete(HRESULT hrResult, uint32 dwBuyCookie) mut
			{
				return VT.BuyComplete(&this, hrResult, dwBuyCookie);
			}
			public HRESULT DownloadTrack(uint32 cookie, BSTR bstrTrackURL, uint32 dwServiceTrackID, BSTR bstrDownloadParams, HRESULT hrDownload) mut
			{
				return VT.DownloadTrack(&this, cookie, bstrTrackURL, dwServiceTrackID, bstrDownloadParams, hrDownload);
			}
			public HRESULT GetCatalogVersion(uint32* pdwVersion, uint32* pdwSchemaVersion, uint32* plcid) mut
			{
				return VT.GetCatalogVersion(&this, pdwVersion, pdwSchemaVersion, plcid);
			}
			public HRESULT UpdateDeviceComplete(BSTR bstrDeviceName) mut
			{
				return VT.UpdateDeviceComplete(&this, bstrDeviceName);
			}
			public HRESULT ChangeView(BSTR bstrType, BSTR bstrID, BSTR bstrFilter) mut
			{
				return VT.ChangeView(&this, bstrType, bstrID, bstrFilter);
			}
			public HRESULT AddListContents(uint32 dwListCookie, uint32 cItems, uint32* prgItems) mut
			{
				return VT.AddListContents(&this, dwListCookie, cItems, prgItems);
			}
			public HRESULT ListContentsComplete(uint32 dwListCookie, HRESULT hrSuccess) mut
			{
				return VT.ListContentsComplete(&this, dwListCookie, hrSuccess);
			}
			public HRESULT SendMessageComplete(BSTR bstrMsg, BSTR bstrParam, BSTR bstrResult) mut
			{
				return VT.SendMessageComplete(&this, bstrMsg, bstrParam, bstrResult);
			}
			public HRESULT GetContentIDsInLibrary(uint32* pcContentIDs, uint32** pprgIDs) mut
			{
				return VT.GetContentIDsInLibrary(&this, pcContentIDs, pprgIDs);
			}
			public HRESULT RefreshLicenseComplete(uint32 dwCookie, uint32 contentID, HRESULT hrRefresh) mut
			{
				return VT.RefreshLicenseComplete(&this, dwCookie, contentID, hrRefresh);
			}
			public HRESULT ShowPopup(int32 lIndex, BSTR bstrParameters) mut
			{
				return VT.ShowPopup(&this, lIndex, bstrParameters);
			}
			public HRESULT VerifyPermissionComplete(BSTR bstrPermission, VARIANT* pContext, HRESULT hrPermission) mut
			{
				return VT.VerifyPermissionComplete(&this, bstrPermission, pContext, hrPermission);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPContentPartnerCallback *self, WMPCallbackNotification type, VARIANT* pContext) Notify;
				public new function HRESULT(IWMPContentPartnerCallback *self, HRESULT hrResult, uint32 dwBuyCookie) BuyComplete;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32 cookie, BSTR bstrTrackURL, uint32 dwServiceTrackID, BSTR bstrDownloadParams, HRESULT hrDownload) DownloadTrack;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32* pdwVersion, uint32* pdwSchemaVersion, uint32* plcid) GetCatalogVersion;
				public new function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrDeviceName) UpdateDeviceComplete;
				public new function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrType, BSTR bstrID, BSTR bstrFilter) ChangeView;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32 dwListCookie, uint32 cItems, uint32* prgItems) AddListContents;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32 dwListCookie, HRESULT hrSuccess) ListContentsComplete;
				public new function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrMsg, BSTR bstrParam, BSTR bstrResult) SendMessageComplete;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32* pcContentIDs, uint32** pprgIDs) GetContentIDsInLibrary;
				public new function HRESULT(IWMPContentPartnerCallback *self, uint32 dwCookie, uint32 contentID, HRESULT hrRefresh) RefreshLicenseComplete;
				public new function HRESULT(IWMPContentPartnerCallback *self, int32 lIndex, BSTR bstrParameters) ShowPopup;
				public new function HRESULT(IWMPContentPartnerCallback *self, BSTR bstrPermission, VARIANT* pContext, HRESULT hrPermission) VerifyPermissionComplete;
			}
		}
		[CRepr]
		public struct IWMPContentPartner : IUnknown
		{
			public const new Guid IID = .(0x55455073, 0x41b5, 0x4e75, 0x87, 0xb8, 0xf1, 0x3b, 0xdb, 0x29, 0x1d, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCallback(IWMPContentPartnerCallback* pCallback) mut
			{
				return VT.SetCallback(&this, pCallback);
			}
			public HRESULT Notify(WMPPartnerNotification type, VARIANT* pContext) mut
			{
				return VT.Notify(&this, type, pContext);
			}
			public HRESULT GetItemInfo(BSTR bstrInfoName, VARIANT* pContext, VARIANT* pData) mut
			{
				return VT.GetItemInfo(&this, bstrInfoName, pContext, pData);
			}
			public HRESULT GetContentPartnerInfo(BSTR bstrInfoName, VARIANT* pData) mut
			{
				return VT.GetContentPartnerInfo(&this, bstrInfoName, pData);
			}
			public HRESULT GetCommands(BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* prgItemIDs, uint32* pcItemIDs, WMPContextMenuInfo** pprgItems) mut
			{
				return VT.GetCommands(&this, location, pLocationContext, itemLocation, cItemIDs, prgItemIDs, pcItemIDs, pprgItems);
			}
			public HRESULT InvokeCommand(uint32 dwCommandID, BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* rgItemIDs) mut
			{
				return VT.InvokeCommand(&this, dwCommandID, location, pLocationContext, itemLocation, cItemIDs, rgItemIDs);
			}
			public HRESULT CanBuySilent(IWMPContentContainerList* pInfo, BSTR* pbstrTotalPrice, int16* pSilentOK) mut
			{
				return VT.CanBuySilent(&this, pInfo, pbstrTotalPrice, pSilentOK);
			}
			public HRESULT Buy(IWMPContentContainerList* pInfo, uint32 cookie) mut
			{
				return VT.Buy(&this, pInfo, cookie);
			}
			public HRESULT GetStreamingURL(WMPStreamingType st, VARIANT* pStreamContext, BSTR* pbstrURL) mut
			{
				return VT.GetStreamingURL(&this, st, pStreamContext, pbstrURL);
			}
			public HRESULT Download(IWMPContentContainerList* pInfo, uint32 cookie) mut
			{
				return VT.Download(&this, pInfo, cookie);
			}
			public HRESULT DownloadTrackComplete(HRESULT hrResult, uint32 contentID, BSTR downloadTrackParam) mut
			{
				return VT.DownloadTrackComplete(&this, hrResult, contentID, downloadTrackParam);
			}
			public HRESULT RefreshLicense(uint32 dwCookie, int16 fLocal, BSTR bstrURL, WMPStreamingType type, uint32 contentID, BSTR bstrRefreshReason, VARIANT* pReasonContext) mut
			{
				return VT.RefreshLicense(&this, dwCookie, fLocal, bstrURL, type, contentID, bstrRefreshReason, pReasonContext);
			}
			public HRESULT GetCatalogURL(uint32 dwCatalogVersion, uint32 dwCatalogSchemaVersion, uint32 catalogLCID, uint32* pdwNewCatalogVersion, BSTR* pbstrCatalogURL, VARIANT* pExpirationDate) mut
			{
				return VT.GetCatalogURL(&this, dwCatalogVersion, dwCatalogSchemaVersion, catalogLCID, pdwNewCatalogVersion, pbstrCatalogURL, pExpirationDate);
			}
			public HRESULT GetTemplate(WMPTaskType task, BSTR location, VARIANT* pContext, BSTR clickLocation, VARIANT* pClickContext, BSTR bstrFilter, BSTR bstrViewParams, BSTR* pbstrTemplateURL, WMPTemplateSize* pTemplateSize) mut
			{
				return VT.GetTemplate(&this, task, location, pContext, clickLocation, pClickContext, bstrFilter, bstrViewParams, pbstrTemplateURL, pTemplateSize);
			}
			public HRESULT UpdateDevice(BSTR bstrDeviceName) mut
			{
				return VT.UpdateDevice(&this, bstrDeviceName);
			}
			public HRESULT GetListContents(BSTR location, VARIANT* pContext, BSTR bstrListType, BSTR bstrParams, uint32 dwListCookie) mut
			{
				return VT.GetListContents(&this, location, pContext, bstrListType, bstrParams, dwListCookie);
			}
			public HRESULT Login(BLOB userInfo, BLOB pwdInfo, int16 fUsedCachedCreds, int16 fOkToCache) mut
			{
				return VT.Login(&this, userInfo, pwdInfo, fUsedCachedCreds, fOkToCache);
			}
			public HRESULT Authenticate(BLOB userInfo, BLOB pwdInfo) mut
			{
				return VT.Authenticate(&this, userInfo, pwdInfo);
			}
			public HRESULT Logout() mut
			{
				return VT.Logout(&this);
			}
			public HRESULT SendMessage(BSTR bstrMsg, BSTR bstrParam) mut
			{
				return VT.SendMessage(&this, bstrMsg, bstrParam);
			}
			public HRESULT StationEvent(BSTR bstrStationEventType, uint32 StationId, uint32 PlaylistIndex, uint32 TrackID, BSTR TrackData, uint32 dwSecondsPlayed) mut
			{
				return VT.StationEvent(&this, bstrStationEventType, StationId, PlaylistIndex, TrackID, TrackData, dwSecondsPlayed);
			}
			public HRESULT CompareContainerListPrices(IWMPContentContainerList* pListBase, IWMPContentContainerList* pListCompare, int32* pResult) mut
			{
				return VT.CompareContainerListPrices(&this, pListBase, pListCompare, pResult);
			}
			public HRESULT VerifyPermission(BSTR bstrPermission, VARIANT* pContext) mut
			{
				return VT.VerifyPermission(&this, bstrPermission, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPContentPartner *self, IWMPContentPartnerCallback* pCallback) SetCallback;
				public new function HRESULT(IWMPContentPartner *self, WMPPartnerNotification type, VARIANT* pContext) Notify;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrInfoName, VARIANT* pContext, VARIANT* pData) GetItemInfo;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrInfoName, VARIANT* pData) GetContentPartnerInfo;
				public new function HRESULT(IWMPContentPartner *self, BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* prgItemIDs, uint32* pcItemIDs, WMPContextMenuInfo** pprgItems) GetCommands;
				public new function HRESULT(IWMPContentPartner *self, uint32 dwCommandID, BSTR location, VARIANT* pLocationContext, BSTR itemLocation, uint32 cItemIDs, uint32* rgItemIDs) InvokeCommand;
				public new function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, BSTR* pbstrTotalPrice, int16* pSilentOK) CanBuySilent;
				public new function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, uint32 cookie) Buy;
				public new function HRESULT(IWMPContentPartner *self, WMPStreamingType st, VARIANT* pStreamContext, BSTR* pbstrURL) GetStreamingURL;
				public new function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pInfo, uint32 cookie) Download;
				public new function HRESULT(IWMPContentPartner *self, HRESULT hrResult, uint32 contentID, BSTR downloadTrackParam) DownloadTrackComplete;
				public new function HRESULT(IWMPContentPartner *self, uint32 dwCookie, int16 fLocal, BSTR bstrURL, WMPStreamingType type, uint32 contentID, BSTR bstrRefreshReason, VARIANT* pReasonContext) RefreshLicense;
				public new function HRESULT(IWMPContentPartner *self, uint32 dwCatalogVersion, uint32 dwCatalogSchemaVersion, uint32 catalogLCID, uint32* pdwNewCatalogVersion, BSTR* pbstrCatalogURL, VARIANT* pExpirationDate) GetCatalogURL;
				public new function HRESULT(IWMPContentPartner *self, WMPTaskType task, BSTR location, VARIANT* pContext, BSTR clickLocation, VARIANT* pClickContext, BSTR bstrFilter, BSTR bstrViewParams, BSTR* pbstrTemplateURL, WMPTemplateSize* pTemplateSize) GetTemplate;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrDeviceName) UpdateDevice;
				public new function HRESULT(IWMPContentPartner *self, BSTR location, VARIANT* pContext, BSTR bstrListType, BSTR bstrParams, uint32 dwListCookie) GetListContents;
				public new function HRESULT(IWMPContentPartner *self, BLOB userInfo, BLOB pwdInfo, int16 fUsedCachedCreds, int16 fOkToCache) Login;
				public new function HRESULT(IWMPContentPartner *self, BLOB userInfo, BLOB pwdInfo) Authenticate;
				public new function HRESULT(IWMPContentPartner *self) Logout;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrMsg, BSTR bstrParam) SendMessage;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrStationEventType, uint32 StationId, uint32 PlaylistIndex, uint32 TrackID, BSTR TrackData, uint32 dwSecondsPlayed) StationEvent;
				public new function HRESULT(IWMPContentPartner *self, IWMPContentContainerList* pListBase, IWMPContentContainerList* pListCompare, int32* pResult) CompareContainerListPrices;
				public new function HRESULT(IWMPContentPartner *self, BSTR bstrPermission, VARIANT* pContext) VerifyPermission;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService : IUnknown
		{
			public const new Guid IID = .(0x376055f8, 0x2a59, 0x4a73, 0x95, 0x01, 0xdc, 0xa5, 0x27, 0x3a, 0x7a, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT allowPlay(HWND hwnd, IWMPMedia* pMedia, BOOL* pfAllowPlay) mut
			{
				return VT.allowPlay(&this, hwnd, pMedia, pfAllowPlay);
			}
			public HRESULT allowCDBurn(HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowBurn) mut
			{
				return VT.allowCDBurn(&this, hwnd, pPlaylist, pfAllowBurn);
			}
			public HRESULT allowPDATransfer(HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowTransfer) mut
			{
				return VT.allowPDATransfer(&this, hwnd, pPlaylist, pfAllowTransfer);
			}
			public HRESULT startBackgroundProcessing(HWND hwnd) mut
			{
				return VT.startBackgroundProcessing(&this, hwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPMedia* pMedia, BOOL* pfAllowPlay) allowPlay;
				public new function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowBurn) allowCDBurn;
				public new function HRESULT(IWMPSubscriptionService *self, HWND hwnd, IWMPPlaylist* pPlaylist, BOOL* pfAllowTransfer) allowPDATransfer;
				public new function HRESULT(IWMPSubscriptionService *self, HWND hwnd) startBackgroundProcessing;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionServiceCallback : IUnknown
		{
			public const new Guid IID = .(0xdd01d127, 0x2dc2, 0x4c3a, 0x87, 0x6e, 0x63, 0x31, 0x20, 0x79, 0xf9, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT onComplete(HRESULT hrResult) mut
			{
				return VT.onComplete(&this, hrResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWMPSubscriptionServiceCallback *self, HRESULT hrResult) onComplete;
			}
		}
		[CRepr]
		public struct IWMPSubscriptionService2 : IWMPSubscriptionService
		{
			public const new Guid IID = .(0xa94c120e, 0xd600, 0x4ec6, 0xb0, 0x5e, 0xec, 0x9d, 0x56, 0xd8, 0x4d, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT stopBackgroundProcessing() mut
			{
				return VT.stopBackgroundProcessing(&this);
			}
			public HRESULT serviceEvent(WMPSubscriptionServiceEvent event) mut
			{
				return VT.serviceEvent(&this, event);
			}
			public HRESULT deviceAvailable(BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) mut
			{
				return VT.deviceAvailable(&this, bstrDeviceName, pCB);
			}
			public HRESULT prepareForSync(BSTR bstrFilename, BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) mut
			{
				return VT.prepareForSync(&this, bstrFilename, bstrDeviceName, pCB);
			}
			[CRepr]
			public struct VTable : IWMPSubscriptionService.VTable
			{
				public new function HRESULT(IWMPSubscriptionService2 *self) stopBackgroundProcessing;
				public new function HRESULT(IWMPSubscriptionService2 *self, WMPSubscriptionServiceEvent event) serviceEvent;
				public new function HRESULT(IWMPSubscriptionService2 *self, BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) deviceAvailable;
				public new function HRESULT(IWMPSubscriptionService2 *self, BSTR bstrFilename, BSTR bstrDeviceName, IWMPSubscriptionServiceCallback* pCB) prepareForSync;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem : IDispatch
		{
			public const new Guid IID = .(0xc9470e8e, 0x3f6b, 0x46a9, 0xa0, 0xa9, 0x45, 0x28, 0x15, 0xc3, 0x42, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_sourceURL(BSTR* pbstrURL) mut
			{
				return VT.get_sourceURL(&this, pbstrURL);
			}
			public HRESULT get_size(int32* plSize) mut
			{
				return VT.get_size(&this, plSize);
			}
			public HRESULT get_type(BSTR* pbstrType) mut
			{
				return VT.get_type(&this, pbstrType);
			}
			public HRESULT get_progress(int32* plProgress) mut
			{
				return VT.get_progress(&this, plProgress);
			}
			public HRESULT get_downloadState(WMPSubscriptionDownloadState* pwmpsdls) mut
			{
				return VT.get_downloadState(&this, pwmpsdls);
			}
			public HRESULT pause() mut
			{
				return VT.pause(&this);
			}
			public HRESULT resume() mut
			{
				return VT.resume(&this);
			}
			public HRESULT cancel() mut
			{
				return VT.cancel(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPDownloadItem *self, BSTR* pbstrURL) get_sourceURL;
				public new function HRESULT(IWMPDownloadItem *self, int32* plSize) get_size;
				public new function HRESULT(IWMPDownloadItem *self, BSTR* pbstrType) get_type;
				public new function HRESULT(IWMPDownloadItem *self, int32* plProgress) get_progress;
				public new function HRESULT(IWMPDownloadItem *self, WMPSubscriptionDownloadState* pwmpsdls) get_downloadState;
				public new function HRESULT(IWMPDownloadItem *self) pause;
				public new function HRESULT(IWMPDownloadItem *self) resume;
				public new function HRESULT(IWMPDownloadItem *self) cancel;
			}
		}
		[CRepr]
		public struct IWMPDownloadItem2 : IWMPDownloadItem
		{
			public const new Guid IID = .(0x9fbb3336, 0x6da3, 0x479d, 0xb8, 0xff, 0x67, 0xd4, 0x6e, 0x20, 0xa9, 0x87);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getItemInfo(BSTR bstrItemName, BSTR* pbstrVal) mut
			{
				return VT.getItemInfo(&this, bstrItemName, pbstrVal);
			}
			[CRepr]
			public struct VTable : IWMPDownloadItem.VTable
			{
				public new function HRESULT(IWMPDownloadItem2 *self, BSTR bstrItemName, BSTR* pbstrVal) getItemInfo;
			}
		}
		[CRepr]
		public struct IWMPDownloadCollection : IDispatch
		{
			public const new Guid IID = .(0x0a319c7f, 0x85f9, 0x436c, 0xb8, 0x8e, 0x82, 0xfd, 0x88, 0x00, 0x0e, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_id(int32* plId) mut
			{
				return VT.get_id(&this, plId);
			}
			public HRESULT get_count(int32* plCount) mut
			{
				return VT.get_count(&this, plCount);
			}
			public HRESULT item(int32 lItem, IWMPDownloadItem2** ppDownload) mut
			{
				return VT.item(&this, lItem, ppDownload);
			}
			public HRESULT startDownload(BSTR bstrSourceURL, BSTR bstrType, IWMPDownloadItem2** ppDownload) mut
			{
				return VT.startDownload(&this, bstrSourceURL, bstrType, ppDownload);
			}
			public HRESULT removeItem(int32 lItem) mut
			{
				return VT.removeItem(&this, lItem);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPDownloadCollection *self, int32* plId) get_id;
				public new function HRESULT(IWMPDownloadCollection *self, int32* plCount) get_count;
				public new function HRESULT(IWMPDownloadCollection *self, int32 lItem, IWMPDownloadItem2** ppDownload) item;
				public new function HRESULT(IWMPDownloadCollection *self, BSTR bstrSourceURL, BSTR bstrType, IWMPDownloadItem2** ppDownload) startDownload;
				public new function HRESULT(IWMPDownloadCollection *self, int32 lItem) removeItem;
				public new function HRESULT(IWMPDownloadCollection *self) Clear;
			}
		}
		[CRepr]
		public struct IWMPDownloadManager : IDispatch
		{
			public const new Guid IID = .(0xe15e9ad1, 0x8f20, 0x4cc4, 0x9e, 0xc7, 0x1a, 0x32, 0x8c, 0xa8, 0x6a, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT getDownloadCollection(int32 lCollectionId, IWMPDownloadCollection** ppCollection) mut
			{
				return VT.getDownloadCollection(&this, lCollectionId, ppCollection);
			}
			public HRESULT createDownloadCollection(IWMPDownloadCollection** ppCollection) mut
			{
				return VT.createDownloadCollection(&this, ppCollection);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWMPDownloadManager *self, int32 lCollectionId, IWMPDownloadCollection** ppCollection) getDownloadCollection;
				public new function HRESULT(IWMPDownloadManager *self, IWMPDownloadCollection** ppCollection) createDownloadCollection;
			}
		}
		
	}
}
