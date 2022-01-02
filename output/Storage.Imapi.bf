using System;

// namespace Storage.Imapi
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 IMAPI_SECTOR_SIZE = 2048;
		public const uint32 IMAPI2_DEFAULT_COMMAND_TIMEOUT = 10;
		public const uint32 DISPID_DDISCMASTER2EVENTS_DEVICEADDED = 256;
		public const uint32 DISPID_DDISCMASTER2EVENTS_DEVICEREMOVED = 257;
		public const uint32 DISPID_IDISCRECORDER2_EJECTMEDIA = 256;
		public const uint32 DISPID_IDISCRECORDER2_CLOSETRAY = 257;
		public const uint32 DISPID_IDISCRECORDER2_ACQUIREEXCLUSIVEACCESS = 258;
		public const uint32 DISPID_IDISCRECORDER2_RELEASEEXCLUSIVEACCESS = 259;
		public const uint32 DISPID_IDISCRECORDER2_DISABLEMCN = 260;
		public const uint32 DISPID_IDISCRECORDER2_ENABLEMCN = 261;
		public const uint32 DISPID_IDISCRECORDER2_INITIALIZEDISCRECORDER = 262;
		public const uint32 DISPID_IDISCRECORDER2_ACTIVEDISCRECORDER = 0;
		public const uint32 DISPID_IDISCRECORDER2_VENDORID = 513;
		public const uint32 DISPID_IDISCRECORDER2_PRODUCTID = 514;
		public const uint32 DISPID_IDISCRECORDER2_PRODUCTREVISION = 515;
		public const uint32 DISPID_IDISCRECORDER2_VOLUMENAME = 516;
		public const uint32 DISPID_IDISCRECORDER2_VOLUMEPATHNAMES = 517;
		public const uint32 DISPID_IDISCRECORDER2_DEVICECANLOADMEDIA = 518;
		public const uint32 DISPID_IDISCRECORDER2_LEGACYDEVICENUMBER = 519;
		public const uint32 DISPID_IDISCRECORDER2_SUPPORTEDFEATUREPAGES = 520;
		public const uint32 DISPID_IDISCRECORDER2_CURRENTFEATUREPAGES = 521;
		public const uint32 DISPID_IDISCRECORDER2_SUPPORTEDPROFILES = 522;
		public const uint32 DISPID_IDISCRECORDER2_CURRENTPROFILES = 523;
		public const uint32 DISPID_IDISCRECORDER2_SUPPORTEDMODEPAGES = 524;
		public const uint32 DISPID_IDISCRECORDER2_EXCLUSIVEACCESSOWNER = 525;
		public const uint32 DISPID_IWRITEENGINE2_WRITESECTION = 512;
		public const uint32 DISPID_IWRITEENGINE2_CANCELWRITE = 513;
		public const uint32 DISPID_IWRITEENGINE2_DISCRECORDER = 256;
		public const uint32 DISPID_IWRITEENGINE2_USESTREAMINGWRITE12 = 257;
		public const uint32 DISPID_IWRITEENGINE2_STARTINGSECTORSPERSECOND = 258;
		public const uint32 DISPID_IWRITEENGINE2_ENDINGSECTORSPERSECOND = 259;
		public const uint32 DISPID_IWRITEENGINE2_BYTESPERSECTOR = 260;
		public const uint32 DISPID_IWRITEENGINE2_WRITEINPROGRESS = 261;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_STARTLBA = 256;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_SECTORCOUNT = 257;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_LASTREADLBA = 258;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_LASTWRITTENLBA = 259;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_TOTALDEVICEBUFFER = 260;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_USEDDEVICEBUFFER = 261;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_TOTALSYSTEMBUFFER = 262;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_USEDSYSTEMBUFFER = 263;
		public const uint32 DISPID_IWRITEENGINE2EVENTARGS_FREESYSTEMBUFFER = 264;
		public const uint32 DISPID_DWRITEENGINE2EVENTS_UPDATE = 256;
		public const uint32 DISPID_IDISCFORMAT2_RECORDERSUPPORTED = 2048;
		public const uint32 DISPID_IDISCFORMAT2_MEDIASUPPORTED = 2049;
		public const uint32 DISPID_IDISCFORMAT2_MEDIAPHYSICALLYBLANK = 1792;
		public const uint32 DISPID_IDISCFORMAT2_MEDIAHEURISTICALLYBLANK = 1793;
		public const uint32 DISPID_IDISCFORMAT2_SUPPORTEDMEDIATYPES = 1794;
		public const uint32 DISPID_IDISCFORMAT2ERASE_RECORDER = 256;
		public const uint32 DISPID_IDISCFORMAT2ERASE_FULLERASE = 257;
		public const uint32 DISPID_IDISCFORMAT2ERASE_MEDIATYPE = 258;
		public const uint32 DISPID_IDISCFORMAT2ERASE_CLIENTNAME = 259;
		public const uint32 DISPID_IDISCFORMAT2ERASE_ERASEMEDIA = 513;
		public const uint32 DISPID_IDISCFORMAT2ERASEEVENTS_UPDATE = 512;
		public const uint32 DISPID_IDISCFORMAT2DATA_RECORDER = 256;
		public const uint32 DISPID_IDISCFORMAT2DATA_BUFFERUNDERRUNFREEDISABLED = 257;
		public const uint32 DISPID_IDISCFORMAT2DATA_POSTGAPALREADYINIMAGE = 260;
		public const uint32 DISPID_IDISCFORMAT2DATA_CURRENTMEDIASTATUS = 262;
		public const uint32 DISPID_IDISCFORMAT2DATA_WRITEPROTECTSTATUS = 263;
		public const uint32 DISPID_IDISCFORMAT2DATA_TOTALSECTORS = 264;
		public const uint32 DISPID_IDISCFORMAT2DATA_FREESECTORS = 265;
		public const uint32 DISPID_IDISCFORMAT2DATA_NEXTWRITABLEADDRESS = 266;
		public const uint32 DISPID_IDISCFORMAT2DATA_STARTSECTOROFPREVIOUSSESSION = 267;
		public const uint32 DISPID_IDISCFORMAT2DATA_LASTSECTOROFPREVIOUSSESSION = 268;
		public const uint32 DISPID_IDISCFORMAT2DATA_FORCEMEDIATOBECLOSED = 269;
		public const uint32 DISPID_IDISCFORMAT2DATA_DISABLEDVDCOMPATIBILITYMODE = 270;
		public const uint32 DISPID_IDISCFORMAT2DATA_CURRENTMEDIATYPE = 271;
		public const uint32 DISPID_IDISCFORMAT2DATA_CLIENTNAME = 272;
		public const uint32 DISPID_IDISCFORMAT2DATA_REQUESTEDWRITESPEED = 273;
		public const uint32 DISPID_IDISCFORMAT2DATA_REQUESTEDROTATIONTYPEISPURECAV = 274;
		public const uint32 DISPID_IDISCFORMAT2DATA_CURRENTWRITESPEED = 275;
		public const uint32 DISPID_IDISCFORMAT2DATA_CURRENTROTATIONTYPEISPURECAV = 276;
		public const uint32 DISPID_IDISCFORMAT2DATA_SUPPORTEDWRITESPEEDS = 277;
		public const uint32 DISPID_IDISCFORMAT2DATA_SUPPORTEDWRITESPEEDDESCRIPTORS = 278;
		public const uint32 DISPID_IDISCFORMAT2DATA_FORCEOVERWRITE = 279;
		public const uint32 DISPID_IDISCFORMAT2DATA_MUTLISESSIONINTERFACES = 280;
		public const uint32 DISPID_IDISCFORMAT2DATA_WRITE = 512;
		public const uint32 DISPID_IDISCFORMAT2DATA_CANCELWRITE = 513;
		public const uint32 DISPID_IDISCFORMAT2DATA_SETWRITESPEED = 514;
		public const uint32 DISPID_DDISCFORMAT2DATAEVENTS_UPDATE = 512;
		public const uint32 DISPID_IDISCFORMAT2DATAEVENTARGS_ELAPSEDTIME = 768;
		public const uint32 DISPID_IDISCFORMAT2DATAEVENTARGS_ESTIMATEDREMAININGTIME = 769;
		public const uint32 DISPID_IDISCFORMAT2DATAEVENTARGS_ESTIMATEDTOTALTIME = 770;
		public const uint32 DISPID_IDISCFORMAT2DATAEVENTARGS_CURRENTACTION = 771;
		public const uint32 DISPID_IDISCFORMAT2TAO_RECORDER = 256;
		public const uint32 DISPID_IDISCFORMAT2TAO_BUFFERUNDERRUNFREEDISABLED = 258;
		public const uint32 DISPID_IDISCFORMAT2TAO_NUMBEROFEXISTINGTRACKS = 259;
		public const uint32 DISPID_IDISCFORMAT2TAO_TOTALSECTORSONMEDIA = 260;
		public const uint32 DISPID_IDISCFORMAT2TAO_FREESECTORSONMEDIA = 261;
		public const uint32 DISPID_IDISCFORMAT2TAO_USEDSECTORSONMEDIA = 262;
		public const uint32 DISPID_IDISCFORMAT2TAO_DONOTFINALIZEMEDIA = 263;
		public const uint32 DISPID_IDISCFORMAT2TAO_EXPECTEDTABLEOFCONTENTS = 266;
		public const uint32 DISPID_IDISCFORMAT2TAO_CURRENTMEDIATYPE = 267;
		public const uint32 DISPID_IDISCFORMAT2TAO_CLIENTNAME = 270;
		public const uint32 DISPID_IDISCFORMAT2TAO_REQUESTEDWRITESPEED = 271;
		public const uint32 DISPID_IDISCFORMAT2TAO_REQUESTEDROTATIONTYPEISPURECAV = 272;
		public const uint32 DISPID_IDISCFORMAT2TAO_CURRENTWRITESPEED = 273;
		public const uint32 DISPID_IDISCFORMAT2TAO_CURRENTROTATIONTYPEISPURECAV = 274;
		public const uint32 DISPID_IDISCFORMAT2TAO_SUPPORTEDWRITESPEEDS = 275;
		public const uint32 DISPID_IDISCFORMAT2TAO_SUPPORTEDWRITESPEEDDESCRIPTORS = 276;
		public const uint32 DISPID_IDISCFORMAT2TAO_PREPAREMEDIA = 512;
		public const uint32 DISPID_IDISCFORMAT2TAO_ADDAUDIOTRACK = 513;
		public const uint32 DISPID_IDISCFORMAT2TAO_CANCELADDTRACK = 514;
		public const uint32 DISPID_IDISCFORMAT2TAO_FINISHMEDIA = 515;
		public const uint32 DISPID_IDISCFORMAT2TAO_SETWRITESPEED = 516;
		public const uint32 DISPID_DDISCFORMAT2TAOEVENTS_UPDATE = 512;
		public const uint32 DISPID_IDISCFORMAT2TAOEVENTARGS_CURRENTTRACKNUMBER = 768;
		public const uint32 DISPID_IDISCFORMAT2TAOEVENTARGS_CURRENTACTION = 769;
		public const uint32 DISPID_IDISCFORMAT2TAOEVENTARGS_ELAPSEDTIME = 770;
		public const uint32 DISPID_IDISCFORMAT2TAOEVENTARGS_ESTIMATEDREMAININGTIME = 771;
		public const uint32 DISPID_IDISCFORMAT2TAOEVENTARGS_ESTIMATEDTOTALTIME = 772;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_RECORDER = 256;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_BUFFERUNDERRUNFREEDISABLED = 258;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_STARTOFNEXTSESSION = 259;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_LASTPOSSIBLESTARTOFLEADOUT = 260;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_CURRENTMEDIATYPE = 261;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_SUPPORTEDDATASECTORTYPES = 264;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_REQUESTEDDATASECTORTYPE = 265;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_CLIENTNAME = 266;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_REQUESTEDWRITESPEED = 267;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_REQUESTEDROTATIONTYPEISPURECAV = 268;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_CURRENTWRITESPEED = 269;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_CURRENTROTATIONTYPEISPURECAV = 270;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_SUPPORTEDWRITESPEEDS = 271;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_SUPPORTEDWRITESPEEDDESCRIPTORS = 272;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_PREPAREMEDIA = 512;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_WRITEMEDIA = 513;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_WRITEMEDIAWITHVALIDATION = 514;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_CANCELWRITE = 515;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_RELEASEMEDIA = 516;
		public const uint32 DISPID_IDISCFORMAT2RAWCD_SETWRITESPEED = 517;
		public const uint32 DISPID_DDISCFORMAT2RAWCDEVENTS_UPDATE = 512;
		public const uint32 DISPID_IDISCFORMAT2RAWCDEVENTARGS_CURRENTTRACKNUMBER = 768;
		public const uint32 DISPID_IDISCFORMAT2RAWCDEVENTARGS_CURRENTACTION = 769;
		public const uint32 DISPID_IDISCFORMAT2RAWCDEVENTARGS_ELAPSEDTIME = 768;
		public const uint32 DISPID_IDISCFORMAT2RAWCDEVENTARGS_ESTIMATEDREMAININGTIME = 769;
		public const uint32 DISPID_IDISCFORMAT2RAWCDEVENTARGS_ESTIMATEDTOTALTIME = 770;
		public const uint32 IMAPI_SECTORS_PER_SECOND_AT_1X_CD = 75;
		public const uint32 IMAPI_SECTORS_PER_SECOND_AT_1X_DVD = 680;
		public const uint32 IMAPI_SECTORS_PER_SECOND_AT_1X_BD = 2195;
		public const uint32 IMAPI_SECTORS_PER_SECOND_AT_1X_HD_DVD = 4568;
		public const uint32 DISPID_IMULTISESSION_SUPPORTEDONCURRENTMEDIA = 256;
		public const uint32 DISPID_IMULTISESSION_INUSE = 257;
		public const uint32 DISPID_IMULTISESSION_IMPORTRECORDER = 258;
		public const uint32 DISPID_IMULTISESSION_FIRSTDATASESSION = 512;
		public const uint32 DISPID_IMULTISESSION_STARTSECTOROFPREVIOUSSESSION = 513;
		public const uint32 DISPID_IMULTISESSION_LASTSECTOROFPREVIOUSSESSION = 514;
		public const uint32 DISPID_IMULTISESSION_NEXTWRITABLEADDRESS = 515;
		public const uint32 DISPID_IMULTISESSION_FREESECTORS = 516;
		public const uint32 DISPID_IMULTISESSION_WRITEUNITSIZE = 517;
		public const uint32 DISPID_IMULTISESSION_LASTWRITTENADDRESS = 518;
		public const uint32 DISPID_IMULTISESSION_SECTORSONMEDIA = 519;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_CREATERESULTIMAGE = 512;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_ADDTRACK = 513;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_ADDSPECIALPREGAP = 514;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_ADDSUBCODERWGENERATOR = 515;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_RESULTINGIMAGETYPE = 256;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_STARTOFLEADOUT = 257;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_STARTOFLEADOUTLIMIT = 258;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_DISABLEGAPLESSAUDIO = 259;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_MEDIACATALOGNUMBER = 260;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_STARTINGTRACKNUMBER = 261;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_TRACKINFO = 262;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_NUMBEROFEXISTINGTRACKS = 263;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_USEDSECTORSONDISC = 264;
		public const uint32 DISPID_IRAWCDIMAGECREATOR_EXPECTEDTABLEOFCONTENTS = 265;
		public const uint32 DISPID_IRAWCDTRACKINFO_STARTINGLBA = 256;
		public const uint32 DISPID_IRAWCDTRACKINFO_SECTORCOUNT = 257;
		public const uint32 DISPID_IRAWCDTRACKINFO_TRACKNUMBER = 258;
		public const uint32 DISPID_IRAWCDTRACKINFO_SECTORTYPE = 259;
		public const uint32 DISPID_IRAWCDTRACKINFO_ISRC = 260;
		public const uint32 DISPID_IRAWCDTRACKINFO_DIGITALAUDIOCOPYSETTING = 261;
		public const uint32 DISPID_IRAWCDTRACKINFO_AUDIOHASPREEMPHASIS = 262;
		public const uint32 DISPID_IBLOCKRANGE_STARTLBA = 256;
		public const uint32 DISPID_IBLOCKRANGE_ENDLBA = 257;
		public const uint32 DISPID_IBLOCKRANGELIST_BLOCKRANGES = 256;
		public const uint32 IMAPILib2_MajorVersion = 1;
		public const uint32 IMAPILib2_MinorVersion = 0;
		public const uint32 IMAPI2FS_BOOT_ENTRY_COUNT_MAX = 32;
		public const uint32 DISPID_DFILESYSTEMIMAGEEVENTS_UPDATE = 256;
		public const uint32 DISPID_DFILESYSTEMIMAGEIMPORTEVENTS_UPDATEIMPORT = 257;
		public const uint32 IMAPI2FS_MajorVersion = 1;
		public const uint32 IMAPI2FS_MinorVersion = 0;
		public const uint32 MP_MSGCLASS_SYSTEM = 1;
		public const uint32 MP_MSGCLASS_REPLICATION = 2;
		public const uint32 MP_MSGCLASS_DELIVERY_REPORT = 3;
		public const uint32 MP_MSGCLASS_NONDELIVERY_REPORT = 4;
		public const uint32 MP_STATUS_SUCCESS = 0;
		public const uint32 MP_STATUS_RETRY = 1;
		public const uint32 MP_STATUS_ABORT_DELIVERY = 2;
		public const uint32 MP_STATUS_BAD_MAIL = 3;
		public const uint32 MP_STATUS_SUBMITTED = 4;
		public const uint32 MP_STATUS_CATEGORIZED = 5;
		public const uint32 MP_STATUS_ABANDON_DELIVERY = 6;
		public const uint32 RP_RECIP_FLAGS_RESERVED = 15;
		public const uint32 RP_DSN_NOTIFY_SUCCESS = 16777216;
		public const uint32 RP_DSN_NOTIFY_FAILURE = 33554432;
		public const uint32 RP_DSN_NOTIFY_DELAY = 67108864;
		public const uint32 RP_DSN_NOTIFY_NEVER = 134217728;
		public const uint32 RP_DSN_NOTIFY_MASK = 251658240;
		public const uint32 RP_HANDLED = 16;
		public const uint32 RP_GENERAL_FAILURE = 32;
		public const uint32 RP_DSN_HANDLED = 64;
		public const uint32 RP_DELIVERED = 272;
		public const uint32 RP_DSN_SENT_NDR = 1104;
		public const uint32 RP_FAILED = 2096;
		public const uint32 RP_UNRESOLVED = 4144;
		public const uint32 RP_ENPANDED = 8208;
		public const uint32 RP_EXPANDED = 8208;
		public const uint32 RP_DSN_SENT_DELAYED = 16384;
		public const uint32 RP_DSN_SENT_EXPANDED = 32832;
		public const uint32 RP_DSN_SENT_RELAYED = 65600;
		public const uint32 RP_DSN_SENT_DELIVERED = 131136;
		public const uint32 RP_REMOTE_MTA_NO_DSN = 524288;
		public const uint32 RP_ERROR_CONTEXT_STORE = 1048576;
		public const uint32 RP_ERROR_CONTEXT_CAT = 2097152;
		public const uint32 RP_ERROR_CONTEXT_MTA = 4194304;
		public const uint32 RP_VOLATILE_FLAGS_MASK = 4026531840;
		public const uint32 RP_DSN_NOTIFY_INVALID = 0;
		public const uint32 MPV_INBOUND_CUTOFF_EXCEEDED = 1;
		public const uint32 MPV_WRITE_CONTENT = 2;
		public const uint32 NMP_PROCESS_POST = 1;
		public const uint32 NMP_PROCESS_CONTROL = 2;
		public const uint32 NMP_PROCESS_MODERATOR = 4;
		public const Guid GUID_SMTP_SOURCE_TYPE = .(0xfb65c4dc, 0xe468, 0x11d1, 0xaa, 0x67, 0x00, 0xc0, 0x4f, 0xa3, 0x45, 0xf6);
		public const Guid GUID_SMTPSVC_SOURCE = .(0x1b3c0666, 0xe470, 0x11d1, 0xaa, 0x67, 0x00, 0xc0, 0x4f, 0xa3, 0x45, 0xf6);
		public const Guid CATID_SMTP_ON_INBOUND_COMMAND = .(0xf6628c8d, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_SERVER_RESPONSE = .(0xf6628c8e, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_SESSION_START = .(0xf6628c8f, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_MESSAGE_START = .(0xf6628c90, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_PER_RECIPIENT = .(0xf6628c91, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_BEFORE_DATA = .(0xf6628c92, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_ON_SESSION_END = .(0xf6628c93, 0x0d5e, 0x11d2, 0xaa, 0x68, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		public const Guid CATID_SMTP_STORE_DRIVER = .(0x59175850, 0xe533, 0x11d1, 0xaa, 0x67, 0x00, 0xc0, 0x4f, 0xa3, 0x45, 0xf6);
		public const Guid CATID_SMTP_TRANSPORT_SUBMISSION = .(0xff3caa23, 0x00b9, 0x11d2, 0x9d, 0xfb, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_TRANSPORT_PRECATEGORIZE = .(0xa3acfb0d, 0x83ff, 0x11d2, 0x9e, 0x14, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_TRANSPORT_CATEGORIZE = .(0x960252a3, 0x0a3a, 0x11d2, 0x9e, 0x00, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_TRANSPORT_POSTCATEGORIZE = .(0x76719654, 0x05a6, 0x11d2, 0x9d, 0xfd, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_TRANSPORT_ROUTER = .(0x283430c9, 0x1850, 0x11d2, 0x9e, 0x03, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_MSGTRACKLOG = .(0xc6df52aa, 0x7db0, 0x11d2, 0x94, 0xf4, 0x00, 0xc0, 0x4f, 0x79, 0xf1, 0xd6);
		public const Guid CATID_SMTP_DNSRESOLVERRECORDSINK = .(0xbd0b4366, 0x8e03, 0x11d2, 0x94, 0xf6, 0x00, 0xc0, 0x4f, 0x79, 0xf1, 0xd6);
		public const Guid CATID_SMTP_MAXMSGSIZE = .(0xebf159de, 0xa67e, 0x11d2, 0x94, 0xf7, 0x00, 0xc0, 0x4f, 0x79, 0xf1, 0xd6);
		public const Guid CATID_SMTP_LOG = .(0x93d0a538, 0x2c1e, 0x4b68, 0xa7, 0xc9, 0xd7, 0x3a, 0x8a, 0xa6, 0xee, 0x97);
		public const Guid CATID_SMTP_GET_AUX_DOMAIN_INFO_FLAGS = .(0x84ff368a, 0xfab3, 0x43d7, 0xbc, 0xdf, 0x69, 0x2c, 0x5b, 0x46, 0xe6, 0xb1);
		public const Guid CLSID_SmtpCat = .(0xb23c35b7, 0x9219, 0x11d2, 0x9e, 0x17, 0x00, 0xc0, 0x4f, 0xa3, 0x22, 0xba);
		public const Guid CATID_SMTP_DSN = .(0x22b55731, 0xf5f8, 0x4d23, 0xbd, 0x8f, 0x87, 0xb5, 0x23, 0x71, 0xa7, 0x3a);
		public const HRESULT IMAPI_S_PROPERTIESIGNORED = 262656;
		public const HRESULT IMAPI_S_BUFFER_TO_SMALL = 262657;
		public const HRESULT IMAPI_E_NOTOPENED = -2147220981;
		public const HRESULT IMAPI_E_NOTINITIALIZED = -2147220980;
		public const HRESULT IMAPI_E_USERABORT = -2147220979;
		public const HRESULT IMAPI_E_GENERIC = -2147220978;
		public const HRESULT IMAPI_E_MEDIUM_NOTPRESENT = -2147220977;
		public const HRESULT IMAPI_E_MEDIUM_INVALIDTYPE = -2147220976;
		public const HRESULT IMAPI_E_DEVICE_NOPROPERTIES = -2147220975;
		public const HRESULT IMAPI_E_DEVICE_NOTACCESSIBLE = -2147220974;
		public const HRESULT IMAPI_E_DEVICE_NOTPRESENT = -2147220973;
		public const HRESULT IMAPI_E_DEVICE_INVALIDTYPE = -2147220972;
		public const HRESULT IMAPI_E_INITIALIZE_WRITE = -2147220971;
		public const HRESULT IMAPI_E_INITIALIZE_ENDWRITE = -2147220970;
		public const HRESULT IMAPI_E_FILESYSTEM = -2147220969;
		public const HRESULT IMAPI_E_FILEACCESS = -2147220968;
		public const HRESULT IMAPI_E_DISCINFO = -2147220967;
		public const HRESULT IMAPI_E_TRACKNOTOPEN = -2147220966;
		public const HRESULT IMAPI_E_TRACKOPEN = -2147220965;
		public const HRESULT IMAPI_E_DISCFULL = -2147220964;
		public const HRESULT IMAPI_E_BADJOLIETNAME = -2147220963;
		public const HRESULT IMAPI_E_INVALIDIMAGE = -2147220962;
		public const HRESULT IMAPI_E_NOACTIVEFORMAT = -2147220961;
		public const HRESULT IMAPI_E_NOACTIVERECORDER = -2147220960;
		public const HRESULT IMAPI_E_WRONGFORMAT = -2147220959;
		public const HRESULT IMAPI_E_ALREADYOPEN = -2147220958;
		public const HRESULT IMAPI_E_WRONGDISC = -2147220957;
		public const HRESULT IMAPI_E_FILEEXISTS = -2147220956;
		public const HRESULT IMAPI_E_STASHINUSE = -2147220955;
		public const HRESULT IMAPI_E_DEVICE_STILL_IN_USE = -2147220954;
		public const HRESULT IMAPI_E_LOSS_OF_STREAMING = -2147220953;
		public const HRESULT IMAPI_E_COMPRESSEDSTASH = -2147220952;
		public const HRESULT IMAPI_E_ENCRYPTEDSTASH = -2147220951;
		public const HRESULT IMAPI_E_NOTENOUGHDISKFORSTASH = -2147220950;
		public const HRESULT IMAPI_E_REMOVABLESTASH = -2147220949;
		public const HRESULT IMAPI_E_CANNOT_WRITE_TO_MEDIA = -2147220948;
		public const HRESULT IMAPI_E_TRACK_NOT_BIG_ENOUGH = -2147220947;
		public const HRESULT IMAPI_E_BOOTIMAGE_AND_NONBLANK_DISC = -2147220946;
		
		// --- Enums ---
		
		public enum DISC_RECORDER_STATE_FLAGS : uint32
		{
			BURNING = 2,
			DOING_NOTHING = 0,
			OPENED = 1,
		}
		[AllowDuplicates]
		public enum IMAPI_MEDIA_PHYSICAL_TYPE : int32
		{
			UNKNOWN = 0,
			CDROM = 1,
			CDR = 2,
			CDRW = 3,
			DVDROM = 4,
			DVDRAM = 5,
			DVDPLUSR = 6,
			DVDPLUSRW = 7,
			DVDPLUSR_DUALLAYER = 8,
			DVDDASHR = 9,
			DVDDASHRW = 10,
			DVDDASHR_DUALLAYER = 11,
			DISK = 12,
			DVDPLUSRW_DUALLAYER = 13,
			HDDVDROM = 14,
			HDDVDR = 15,
			HDDVDRAM = 16,
			BDROM = 17,
			BDR = 18,
			BDRE = 19,
			MAX = 19,
		}
		public enum IMAPI_MEDIA_WRITE_PROTECT_STATE : int32
		{
			UNTIL_POWERDOWN = 1,
			BY_CARTRIDGE = 2,
			BY_MEDIA_SPECIFIC_REASON = 4,
			BY_SOFTWARE_WRITE_PROTECT = 8,
			BY_DISC_CONTROL_BLOCK = 16,
			READ_ONLY_MEDIA = 16384,
		}
		public enum IMAPI_READ_TRACK_ADDRESS_TYPE : int32
		{
			LBA = 0,
			TRACK = 1,
			SESSION = 2,
		}
		public enum IMAPI_MODE_PAGE_REQUEST_TYPE : int32
		{
			CURRENT_VALUES = 0,
			CHANGEABLE_VALUES = 1,
			DEFAULT_VALUES = 2,
			SAVED_VALUES = 3,
		}
		public enum IMAPI_MODE_PAGE_TYPE : int32
		{
			READ_WRITE_ERROR_RECOVERY = 1,
			MRW = 3,
			WRITE_PARAMETERS = 5,
			CACHING = 8,
			INFORMATIONAL_EXCEPTIONS = 28,
			TIMEOUT_AND_PROTECT = 29,
			POWER_CONDITION = 26,
			LEGACY_CAPABILITIES = 42,
		}
		public enum IMAPI_FEATURE_PAGE_TYPE : int32
		{
			PROFILE_LIST = 0,
			CORE = 1,
			MORPHING = 2,
			REMOVABLE_MEDIUM = 3,
			WRITE_PROTECT = 4,
			RANDOMLY_READABLE = 16,
			CD_MULTIREAD = 29,
			CD_READ = 30,
			DVD_READ = 31,
			RANDOMLY_WRITABLE = 32,
			INCREMENTAL_STREAMING_WRITABLE = 33,
			SECTOR_ERASABLE = 34,
			FORMATTABLE = 35,
			HARDWARE_DEFECT_MANAGEMENT = 36,
			WRITE_ONCE = 37,
			RESTRICTED_OVERWRITE = 38,
			CDRW_CAV_WRITE = 39,
			MRW = 40,
			ENHANCED_DEFECT_REPORTING = 41,
			DVD_PLUS_RW = 42,
			DVD_PLUS_R = 43,
			RIGID_RESTRICTED_OVERWRITE = 44,
			CD_TRACK_AT_ONCE = 45,
			CD_MASTERING = 46,
			DVD_DASH_WRITE = 47,
			DOUBLE_DENSITY_CD_READ = 48,
			DOUBLE_DENSITY_CD_R_WRITE = 49,
			DOUBLE_DENSITY_CD_RW_WRITE = 50,
			LAYER_JUMP_RECORDING = 51,
			CD_RW_MEDIA_WRITE_SUPPORT = 55,
			BD_PSEUDO_OVERWRITE = 56,
			DVD_PLUS_R_DUAL_LAYER = 59,
			BD_READ = 64,
			BD_WRITE = 65,
			HD_DVD_READ = 80,
			HD_DVD_WRITE = 81,
			POWER_MANAGEMENT = 256,
			SMART = 257,
			EMBEDDED_CHANGER = 258,
			CD_ANALOG_PLAY = 259,
			MICROCODE_UPDATE = 260,
			TIMEOUT = 261,
			DVD_CSS = 262,
			REAL_TIME_STREAMING = 263,
			LOGICAL_UNIT_SERIAL_NUMBER = 264,
			MEDIA_SERIAL_NUMBER = 265,
			DISC_CONTROL_BLOCKS = 266,
			DVD_CPRM = 267,
			FIRMWARE_INFORMATION = 268,
			AACS = 269,
			VCPS = 272,
		}
		public enum IMAPI_PROFILE_TYPE : int32
		{
			INVALID = 0,
			NON_REMOVABLE_DISK = 1,
			REMOVABLE_DISK = 2,
			MO_ERASABLE = 3,
			MO_WRITE_ONCE = 4,
			AS_MO = 5,
			CDROM = 8,
			CD_RECORDABLE = 9,
			CD_REWRITABLE = 10,
			DVDROM = 16,
			DVD_DASH_RECORDABLE = 17,
			DVD_RAM = 18,
			DVD_DASH_REWRITABLE = 19,
			DVD_DASH_RW_SEQUENTIAL = 20,
			DVD_DASH_R_DUAL_SEQUENTIAL = 21,
			DVD_DASH_R_DUAL_LAYER_JUMP = 22,
			DVD_PLUS_RW = 26,
			DVD_PLUS_R = 27,
			DDCDROM = 32,
			DDCD_RECORDABLE = 33,
			DDCD_REWRITABLE = 34,
			DVD_PLUS_RW_DUAL = 42,
			DVD_PLUS_R_DUAL = 43,
			BD_ROM = 64,
			BD_R_SEQUENTIAL = 65,
			BD_R_RANDOM_RECORDING = 66,
			BD_REWRITABLE = 67,
			HD_DVD_ROM = 80,
			HD_DVD_RECORDABLE = 81,
			HD_DVD_RAM = 82,
			NON_STANDARD = 65535,
		}
		public enum IMAPI_FORMAT2_DATA_WRITE_ACTION : int32
		{
			VALIDATING_MEDIA = 0,
			FORMATTING_MEDIA = 1,
			INITIALIZING_HARDWARE = 2,
			CALIBRATING_POWER = 3,
			WRITING_DATA = 4,
			FINALIZATION = 5,
			COMPLETED = 6,
			VERIFYING = 7,
		}
		[AllowDuplicates]
		public enum IMAPI_FORMAT2_DATA_MEDIA_STATE : int32
		{
			UNKNOWN = 0,
			INFORMATIONAL_MASK = 15,
			UNSUPPORTED_MASK = 64512,
			OVERWRITE_ONLY = 1,
			RANDOMLY_WRITABLE = 1,
			BLANK = 2,
			APPENDABLE = 4,
			FINAL_SESSION = 8,
			DAMAGED = 1024,
			ERASE_REQUIRED = 2048,
			NON_EMPTY_SESSION = 4096,
			WRITE_PROTECTED = 8192,
			FINALIZED = 16384,
			UNSUPPORTED_MEDIA = 32768,
		}
		public enum IMAPI_FORMAT2_TAO_WRITE_ACTION : int32
		{
			UNKNOWN = 0,
			PREPARING = 1,
			WRITING = 2,
			FINISHING = 3,
			VERIFYING = 4,
		}
		public enum IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE : int32
		{
			PQ_ONLY = 1,
			IS_COOKED = 2,
			IS_RAW = 3,
		}
		public enum IMAPI_FORMAT2_RAW_CD_WRITE_ACTION : int32
		{
			UNKNOWN = 0,
			PREPARING = 1,
			WRITING = 2,
			FINISHING = 3,
		}
		public enum IMAPI_CD_SECTOR_TYPE : int32
		{
			AUDIO = 0,
			MODE_ZERO = 1,
			MODE1 = 2,
			MODE2FORM0 = 3,
			MODE2FORM1 = 4,
			MODE2FORM2 = 5,
			MODE1RAW = 6,
			MODE2FORM0RAW = 7,
			MODE2FORM1RAW = 8,
			MODE2FORM2RAW = 9,
		}
		public enum IMAPI_CD_TRACK_DIGITAL_COPY_SETTING : int32
		{
			PERMITTED = 0,
			PROHIBITED = 1,
			SCMS = 2,
		}
		public enum IMAPI_BURN_VERIFICATION_LEVEL : int32
		{
			NONE = 0,
			QUICK = 1,
			FULL = 2,
		}
		public enum FsiItemType : int32
		{
			NotFound = 0,
			Directory = 1,
			File = 2,
		}
		public enum FsiFileSystems : int32
		{
			None = 0,
			ISO9660 = 1,
			Joliet = 2,
			UDF = 4,
			Unknown = 1073741824,
		}
		public enum EmulationType : int32
		{
			EmulationNone = 0,
			Emulation12MFloppy = 1,
			Emulation144MFloppy = 2,
			Emulation288MFloppy = 3,
			EmulationHardDisk = 4,
		}
		public enum PlatformId : int32
		{
			X86 = 0,
			PowerPC = 1,
			Mac = 2,
			EFI = 239,
		}
		public enum MEDIA_TYPES : int32
		{
			CDDA_CDROM = 1,
			CD_ROM_XA = 2,
			CD_I = 3,
			CD_EXTRA = 4,
			CD_OTHER = 5,
			SPECIAL = 6,
		}
		public enum MEDIA_FLAGS : int32
		{
			BLANK = 1,
			RW = 2,
			WRITABLE = 4,
			FORMAT_UNUSABLE_BY_IMAPI = 8,
		}
		public enum RECORDER_TYPES : int32
		{
			CDR = 1,
			CDRW = 2,
		}
		public enum IMMPID_MP_ENUM : int32
		{
			BEFORE__ = 4095,
			RECIPIENT_LIST = 4096,
			CONTENT_FILE_NAME = 4097,
			SENDER_ADDRESS_SMTP = 4098,
			SENDER_ADDRESS_X500 = 4099,
			SENDER_ADDRESS_X400 = 4100,
			SENDER_ADDRESS_LEGACY_EX_DN = 4101,
			DOMAIN_LIST = 4102,
			PICKUP_FILE_NAME = 4103,
			AUTHENTICATED_USER_NAME = 4104,
			CONNECTION_IP_ADDRESS = 4105,
			HELO_DOMAIN = 4106,
			EIGHTBIT_MIME_OPTION = 4107,
			CHUNKING_OPTION = 4108,
			BINARYMIME_OPTION = 4109,
			REMOTE_AUTHENTICATION_TYPE = 4110,
			ERROR_CODE = 4111,
			DSN_ENVID_VALUE = 4112,
			DSN_RET_VALUE = 4113,
			REMOTE_SERVER_DSN_CAPABLE = 4114,
			ARRIVAL_TIME = 4115,
			MESSAGE_STATUS = 4116,
			EXPIRE_DELAY = 4117,
			EXPIRE_NDR = 4118,
			LOCAL_EXPIRE_DELAY = 4119,
			LOCAL_EXPIRE_NDR = 4120,
			ARRIVAL_FILETIME = 4121,
			HR_CAT_STATUS = 4122,
			MSG_GUID = 4123,
			SUPERSEDES_MSG_GUID = 4124,
			SCANNED_FOR_CRLF_DOT_CRLF = 4125,
			FOUND_EMBEDDED_CRLF_DOT_CRLF = 4126,
			MSG_SIZE_HINT = 4127,
			RFC822_MSG_ID = 4128,
			RFC822_MSG_SUBJECT = 4129,
			RFC822_FROM_ADDRESS = 4130,
			RFC822_TO_ADDRESS = 4131,
			RFC822_CC_ADDRESS = 4132,
			RFC822_BCC_ADDRESS = 4133,
			CONNECTION_SERVER_IP_ADDRESS = 4134,
			SERVER_NAME = 4135,
			SERVER_VERSION = 4136,
			NUM_RECIPIENTS = 4137,
			X_PRIORITY = 4138,
			FROM_ADDRESS = 4139,
			SENDER_ADDRESS = 4140,
			DEFERRED_DELIVERY_FILETIME = 4141,
			SENDER_ADDRESS_OTHER = 4142,
			ORIGINAL_ARRIVAL_TIME = 4143,
			MSGCLASS = 4144,
			CONTENT_TYPE = 4145,
			ENCRYPTION_TYPE = 4146,
			CONNECTION_SERVER_PORT = 4147,
			CLIENT_AUTH_USER = 4148,
			CLIENT_AUTH_TYPE = 4149,
			CRC_GLOBAL = 4150,
			CRC_RECIPS = 4151,
			INBOUND_MAIL_FROM_AUTH = 4152,
			AFTER__ = 4153,
		}
		public enum IMMPID_RP_ENUM : int32
		{
			BEFORE__ = 8191,
			DSN_NOTIFY_SUCCESS = 8192,
			DSN_NOTIFY_INVALID = 8193,
			ADDRESS_TYPE = 8194,
			ADDRESS = 8195,
			ADDRESS_TYPE_SMTP = 8196,
			ERROR_CODE = 8197,
			ERROR_STRING = 8198,
			DSN_NOTIFY_VALUE = 8199,
			DSN_ORCPT_VALUE = 8200,
			ADDRESS_SMTP = 8201,
			ADDRESS_X400 = 8202,
			ADDRESS_X500 = 8203,
			LEGACY_EX_DN = 8204,
			RECIPIENT_FLAGS = 8205,
			SMTP_STATUS_STRING = 8206,
			DSN_PRE_CAT_ADDRESS = 8207,
			MDB_GUID = 8208,
			USER_GUID = 8209,
			DOMAIN = 8210,
			ADDRESS_OTHER = 8211,
			DISPLAY_NAME = 8212,
			AFTER__ = 8213,
		}
		public enum IMMPID_MPV_ENUM : int32
		{
			BEFORE__ = 12287,
			STORE_DRIVER_HANDLE = 12288,
			MESSAGE_CREATION_FLAGS = 12289,
			MESSAGE_OPEN_HANDLES = 12290,
			TOTAL_OPEN_HANDLES = 12291,
			TOTAL_OPEN_PROPERTY_STREAM_HANDLES = 12292,
			TOTAL_OPEN_CONTENT_HANDLES = 12293,
			AFTER__ = 12294,
		}
		public enum IMMPID_RPV_ENUM : int32
		{
			BEFORE__ = 16383,
			DONT_DELIVER = 16384,
			NO_NAME_COLLISIONS = 16385,
			AFTER__ = 16386,
		}
		public enum IMMPID_NMP_ENUM : int32
		{
			BEFORE__ = 24575,
			SECONDARY_GROUPS = 24576,
			SECONDARY_ARTNUM = 24577,
			PRIMARY_GROUP = 24578,
			PRIMARY_ARTID = 24579,
			POST_TOKEN = 24580,
			NEWSGROUP_LIST = 24581,
			HEADERS = 24582,
			NNTP_PROCESSING = 24583,
			NNTP_APPROVED_HEADER = 24584,
			AFTER__ = 24585,
		}
		public enum IMMPID_CPV_ENUM : int32
		{
			CPV_BEFORE__ = 32767,
			CP_START = 32768,
			CPV_AFTER__ = 32769,
		}
		
		// --- Function Pointers ---
		
		public function void MSGCALLRELEASE(uint32 ulCallerData, ref IMessage lpMessage);
		
		// --- Structs ---
		
		[CRepr]
		public struct _MSGSESS {}
		[CRepr]
		public struct SPropAttrArray
		{
			public uint32 cValues;
			public uint32[0] aPropAttr;
		}
		[CRepr]
		public struct IMMP_MPV_STORE_DRIVER_HANDLE
		{
			public Guid guidSignature;
		}
		[CRepr]
		public struct tagIMMPID_GUIDLIST_ITEM
		{
			public Guid* pguid;
			public uint32 dwStart;
			public uint32 dwLast;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MsftDiscMaster2 = .(0x2735412e, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftDiscRecorder2 = .(0x2735412d, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftWriteEngine2 = .(0x2735412c, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftDiscFormat2Erase = .(0x2735412b, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftDiscFormat2Data = .(0x2735412a, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftDiscFormat2TrackAtOnce = .(0x27354129, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftDiscFormat2RawCD = .(0x27354128, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftStreamZero = .(0x27354127, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftStreamPrng001 = .(0x27354126, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftStreamConcatenate = .(0x27354125, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftStreamInterleave = .(0x27354124, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftWriteSpeedDescriptor = .(0x27354123, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftMultisessionSequential = .(0x27354122, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
		public const Guid CLSID_MsftMultisessionRandomWrite = .(0xb507ca24, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
		public const Guid CLSID_MsftRawCDImageCreator = .(0x25983561, 0x9d65, 0x49ce, 0xb3, 0x35, 0x40, 0x63, 0x0d, 0x90, 0x12, 0x27);
		public const Guid CLSID_BootOptions = .(0x2c941fce, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_FsiStream = .(0x2c941fcd, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_FileSystemImageResult = .(0x2c941fcc, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_ProgressItem = .(0x2c941fcb, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_EnumProgressItems = .(0x2c941fca, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_ProgressItems = .(0x2c941fc9, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_FsiDirectoryItem = .(0x2c941fc8, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_FsiFileItem = .(0x2c941fc7, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_EnumFsiItems = .(0x2c941fc6, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_FsiNamedStreams = .(0xc6b6f8ed, 0x6d19, 0x44b4, 0xb5, 0x39, 0xb1, 0x59, 0xb7, 0x93, 0xa3, 0x2d);
		public const Guid CLSID_MsftFileSystemImage = .(0x2c941fc5, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
		public const Guid CLSID_MsftIsoImageManager = .(0xceee3b62, 0x8f56, 0x4056, 0x86, 0x9b, 0xef, 0x16, 0x91, 0x7e, 0x3e, 0xfc);
		public const Guid CLSID_BlockRange = .(0xb507ca27, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
		public const Guid CLSID_BlockRangeList = .(0xb507ca28, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
		public const Guid CLSID_MSDiscRecorderObj = .(0x520cca61, 0x51a5, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
		public const Guid CLSID_MSDiscMasterObj = .(0x520cca63, 0x51a5, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
		public const Guid CLSID_MSEnumDiscRecordersObj = .(0x8a03567a, 0x63cb, 0x4ba8, 0xba, 0xf6, 0x52, 0x11, 0x98, 0x16, 0xd1, 0xef);
		public const Guid CLSID_tagIMMPID_MP_STRUCT = .(0x13384cf0, 0xb3c4, 0x11d1, 0xaa, 0x92, 0x00, 0xaa, 0x00, 0x6b, 0xc8, 0x0b);
		public const Guid CLSID_tagIMMPID_RP_STRUCT = .(0x79e82048, 0xd320, 0x11d1, 0x9f, 0xf4, 0x00, 0xc0, 0x4f, 0xa3, 0x73, 0x48);
		public const Guid CLSID_tagIMMPID_MPV_STRUCT = .(0xcbe69706, 0xc9bd, 0x11d1, 0x9f, 0xf2, 0x00, 0xc0, 0x4f, 0xa3, 0x73, 0x48);
		public const Guid CLSID_tagIMMPID_RPV_STRUCT = .(0x79e82049, 0xd320, 0x11d1, 0x9f, 0xf4, 0x00, 0xc0, 0x4f, 0xa3, 0x73, 0x48);
		public const Guid CLSID_tagIMMPID_NMP_STRUCT = .(0x7433a9aa, 0x20e2, 0x11d2, 0x94, 0xd6, 0x00, 0xc0, 0x4f, 0xa3, 0x79, 0xf1);
		public const Guid CLSID_tagIMMPID_CPV_STRUCT = .(0xa2a76b2a, 0xe52d, 0x11d1, 0xaa, 0x64, 0x00, 0xc0, 0x4f, 0xa3, 0x5b, 0x82);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDiscMaster2 : IDispatch
		{
			public const new Guid IID = .(0x27354130, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IEnumVARIANT** ppunk) mut => VT.get__NewEnum(ref this, ppunk);
			public HRESULT get_Item(int32 index, BSTR* value) mut => VT.get_Item(ref this, index, value);
			public HRESULT get_Count(out int32 value) mut => VT.get_Count(ref this, out value);
			public HRESULT get_IsSupportedEnvironment(out int16 value) mut => VT.get_IsSupportedEnvironment(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster2 self, IEnumVARIANT** ppunk) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster2 self, int32 index, BSTR* value) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster2 self, out int32 value) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster2 self, out int16 value) get_IsSupportedEnvironment;
			}
		}
		[CRepr]
		public struct DDiscMaster2Events : IDispatch
		{
			public const new Guid IID = .(0x27354131, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyDeviceAdded(ref IDispatch object, BSTR uniqueId) mut => VT.NotifyDeviceAdded(ref this, ref object, uniqueId);
			public HRESULT NotifyDeviceRemoved(ref IDispatch object, BSTR uniqueId) mut => VT.NotifyDeviceRemoved(ref this, ref object, uniqueId);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscMaster2Events self, ref IDispatch object, BSTR uniqueId) NotifyDeviceAdded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscMaster2Events self, ref IDispatch object, BSTR uniqueId) NotifyDeviceRemoved;
			}
		}
		[CRepr]
		public struct IDiscRecorder2Ex : IUnknown
		{
			public const new Guid IID = .(0x27354132, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SendCommandNoData(uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout) mut => VT.SendCommandNoData(ref this, Cdb, CdbSize, SenseBuffer, Timeout);
			public HRESULT SendCommandSendDataToDevice(uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout, uint8* Buffer, uint32 BufferSize) mut => VT.SendCommandSendDataToDevice(ref this, Cdb, CdbSize, SenseBuffer, Timeout, Buffer, BufferSize);
			public HRESULT SendCommandGetDataFromDevice(uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout, uint8* Buffer, uint32 BufferSize, out uint32 BufferFetched) mut => VT.SendCommandGetDataFromDevice(ref this, Cdb, CdbSize, SenseBuffer, Timeout, Buffer, BufferSize, out BufferFetched);
			public HRESULT ReadDvdStructure(uint32 format, uint32 address, uint32 layer, uint32 agid, uint8** data, out uint32 count) mut => VT.ReadDvdStructure(ref this, format, address, layer, agid, data, out count);
			public HRESULT SendDvdStructure(uint32 format, uint8* data, uint32 count) mut => VT.SendDvdStructure(ref this, format, data, count);
			public HRESULT GetAdapterDescriptor(uint8** data, out uint32 byteSize) mut => VT.GetAdapterDescriptor(ref this, data, out byteSize);
			public HRESULT GetDeviceDescriptor(uint8** data, out uint32 byteSize) mut => VT.GetDeviceDescriptor(ref this, data, out byteSize);
			public HRESULT GetDiscInformation(uint8** discInformation, out uint32 byteSize) mut => VT.GetDiscInformation(ref this, discInformation, out byteSize);
			public HRESULT GetTrackInformation(uint32 address, IMAPI_READ_TRACK_ADDRESS_TYPE addressType, uint8** trackInformation, out uint32 byteSize) mut => VT.GetTrackInformation(ref this, address, addressType, trackInformation, out byteSize);
			public HRESULT GetFeaturePage(IMAPI_FEATURE_PAGE_TYPE requestedFeature, BOOLEAN currentFeatureOnly, uint8** featureData, out uint32 byteSize) mut => VT.GetFeaturePage(ref this, requestedFeature, currentFeatureOnly, featureData, out byteSize);
			public HRESULT GetModePage(IMAPI_MODE_PAGE_TYPE requestedModePage, IMAPI_MODE_PAGE_REQUEST_TYPE requestType, uint8** modePageData, out uint32 byteSize) mut => VT.GetModePage(ref this, requestedModePage, requestType, modePageData, out byteSize);
			public HRESULT SetModePage(IMAPI_MODE_PAGE_REQUEST_TYPE requestType, uint8* data, uint32 byteSize) mut => VT.SetModePage(ref this, requestType, data, byteSize);
			public HRESULT GetSupportedFeaturePages(BOOLEAN currentFeatureOnly, IMAPI_FEATURE_PAGE_TYPE** featureData, out uint32 byteSize) mut => VT.GetSupportedFeaturePages(ref this, currentFeatureOnly, featureData, out byteSize);
			public HRESULT GetSupportedProfiles(BOOLEAN currentOnly, IMAPI_PROFILE_TYPE** profileTypes, out uint32 validProfiles) mut => VT.GetSupportedProfiles(ref this, currentOnly, profileTypes, out validProfiles);
			public HRESULT GetSupportedModePages(IMAPI_MODE_PAGE_REQUEST_TYPE requestType, IMAPI_MODE_PAGE_TYPE** modePageTypes, out uint32 validPages) mut => VT.GetSupportedModePages(ref this, requestType, modePageTypes, out validPages);
			public HRESULT GetByteAlignmentMask(out uint32 value) mut => VT.GetByteAlignmentMask(ref this, out value);
			public HRESULT GetMaximumNonPageAlignedTransferSize(out uint32 value) mut => VT.GetMaximumNonPageAlignedTransferSize(ref this, out value);
			public HRESULT GetMaximumPageAlignedTransferSize(out uint32 value) mut => VT.GetMaximumPageAlignedTransferSize(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout) SendCommandNoData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout, uint8* Buffer, uint32 BufferSize) SendCommandSendDataToDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8* Cdb, uint32 CdbSize, uint8* SenseBuffer, uint32 Timeout, uint8* Buffer, uint32 BufferSize, out uint32 BufferFetched) SendCommandGetDataFromDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint32 format, uint32 address, uint32 layer, uint32 agid, uint8** data, out uint32 count) ReadDvdStructure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint32 format, uint8* data, uint32 count) SendDvdStructure;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8** data, out uint32 byteSize) GetAdapterDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8** data, out uint32 byteSize) GetDeviceDescriptor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint8** discInformation, out uint32 byteSize) GetDiscInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, uint32 address, IMAPI_READ_TRACK_ADDRESS_TYPE addressType, uint8** trackInformation, out uint32 byteSize) GetTrackInformation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, IMAPI_FEATURE_PAGE_TYPE requestedFeature, BOOLEAN currentFeatureOnly, uint8** featureData, out uint32 byteSize) GetFeaturePage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, IMAPI_MODE_PAGE_TYPE requestedModePage, IMAPI_MODE_PAGE_REQUEST_TYPE requestType, uint8** modePageData, out uint32 byteSize) GetModePage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, IMAPI_MODE_PAGE_REQUEST_TYPE requestType, uint8* data, uint32 byteSize) SetModePage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, BOOLEAN currentFeatureOnly, IMAPI_FEATURE_PAGE_TYPE** featureData, out uint32 byteSize) GetSupportedFeaturePages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, BOOLEAN currentOnly, IMAPI_PROFILE_TYPE** profileTypes, out uint32 validProfiles) GetSupportedProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, IMAPI_MODE_PAGE_REQUEST_TYPE requestType, IMAPI_MODE_PAGE_TYPE** modePageTypes, out uint32 validPages) GetSupportedModePages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, out uint32 value) GetByteAlignmentMask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, out uint32 value) GetMaximumNonPageAlignedTransferSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2Ex self, out uint32 value) GetMaximumPageAlignedTransferSize;
			}
		}
		[CRepr]
		public struct IDiscRecorder2 : IDispatch
		{
			public const new Guid IID = .(0x27354133, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EjectMedia() mut => VT.EjectMedia(ref this);
			public HRESULT CloseTray() mut => VT.CloseTray(ref this);
			public HRESULT AcquireExclusiveAccess(int16 force, BSTR __MIDL__IDiscRecorder20000) mut => VT.AcquireExclusiveAccess(ref this, force, __MIDL__IDiscRecorder20000);
			public HRESULT ReleaseExclusiveAccess() mut => VT.ReleaseExclusiveAccess(ref this);
			public HRESULT DisableMcn() mut => VT.DisableMcn(ref this);
			public HRESULT EnableMcn() mut => VT.EnableMcn(ref this);
			public HRESULT InitializeDiscRecorder(BSTR recorderUniqueId) mut => VT.InitializeDiscRecorder(ref this, recorderUniqueId);
			public HRESULT get_ActiveDiscRecorder(BSTR* value) mut => VT.get_ActiveDiscRecorder(ref this, value);
			public HRESULT get_VendorId(BSTR* value) mut => VT.get_VendorId(ref this, value);
			public HRESULT get_ProductId(BSTR* value) mut => VT.get_ProductId(ref this, value);
			public HRESULT get_ProductRevision(BSTR* value) mut => VT.get_ProductRevision(ref this, value);
			public HRESULT get_VolumeName(BSTR* value) mut => VT.get_VolumeName(ref this, value);
			public HRESULT get_VolumePathNames(SAFEARRAY** value) mut => VT.get_VolumePathNames(ref this, value);
			public HRESULT get_DeviceCanLoadMedia(out int16 value) mut => VT.get_DeviceCanLoadMedia(ref this, out value);
			public HRESULT get_LegacyDeviceNumber(out int32 legacyDeviceNumber) mut => VT.get_LegacyDeviceNumber(ref this, out legacyDeviceNumber);
			public HRESULT get_SupportedFeaturePages(SAFEARRAY** value) mut => VT.get_SupportedFeaturePages(ref this, value);
			public HRESULT get_CurrentFeaturePages(SAFEARRAY** value) mut => VT.get_CurrentFeaturePages(ref this, value);
			public HRESULT get_SupportedProfiles(SAFEARRAY** value) mut => VT.get_SupportedProfiles(ref this, value);
			public HRESULT get_CurrentProfiles(SAFEARRAY** value) mut => VT.get_CurrentProfiles(ref this, value);
			public HRESULT get_SupportedModePages(SAFEARRAY** value) mut => VT.get_SupportedModePages(ref this, value);
			public HRESULT get_ExclusiveAccessOwner(BSTR* value) mut => VT.get_ExclusiveAccessOwner(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self) EjectMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self) CloseTray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, int16 force, BSTR __MIDL__IDiscRecorder20000) AcquireExclusiveAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self) ReleaseExclusiveAccess;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self) DisableMcn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self) EnableMcn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR recorderUniqueId) InitializeDiscRecorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_ActiveDiscRecorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_VendorId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_ProductId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_ProductRevision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_VolumePathNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, out int16 value) get_DeviceCanLoadMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, out int32 legacyDeviceNumber) get_LegacyDeviceNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_SupportedFeaturePages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_CurrentFeaturePages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_SupportedProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_CurrentProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, SAFEARRAY** value) get_SupportedModePages;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder2 self, BSTR* value) get_ExclusiveAccessOwner;
			}
		}
		[CRepr]
		public struct IWriteEngine2 : IDispatch
		{
			public const new Guid IID = .(0x27354135, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WriteSection(ref IStream data, int32 startingBlockAddress, int32 numberOfBlocks) mut => VT.WriteSection(ref this, ref data, startingBlockAddress, numberOfBlocks);
			public HRESULT CancelWrite() mut => VT.CancelWrite(ref this);
			public HRESULT put_Recorder(ref IDiscRecorder2Ex value) mut => VT.put_Recorder(ref this, ref value);
			public HRESULT get_Recorder(IDiscRecorder2Ex** value) mut => VT.get_Recorder(ref this, value);
			public HRESULT put_UseStreamingWrite12(int16 value) mut => VT.put_UseStreamingWrite12(ref this, value);
			public HRESULT get_UseStreamingWrite12(out int16 value) mut => VT.get_UseStreamingWrite12(ref this, out value);
			public HRESULT put_StartingSectorsPerSecond(int32 value) mut => VT.put_StartingSectorsPerSecond(ref this, value);
			public HRESULT get_StartingSectorsPerSecond(out int32 value) mut => VT.get_StartingSectorsPerSecond(ref this, out value);
			public HRESULT put_EndingSectorsPerSecond(int32 value) mut => VT.put_EndingSectorsPerSecond(ref this, value);
			public HRESULT get_EndingSectorsPerSecond(out int32 value) mut => VT.get_EndingSectorsPerSecond(ref this, out value);
			public HRESULT put_BytesPerSector(int32 value) mut => VT.put_BytesPerSector(ref this, value);
			public HRESULT get_BytesPerSector(out int32 value) mut => VT.get_BytesPerSector(ref this, out value);
			public HRESULT get_WriteInProgress(out int16 value) mut => VT.get_WriteInProgress(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, ref IStream data, int32 startingBlockAddress, int32 numberOfBlocks) WriteSection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self) CancelWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, ref IDiscRecorder2Ex value) put_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, IDiscRecorder2Ex** value) get_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, int16 value) put_UseStreamingWrite12;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, out int16 value) get_UseStreamingWrite12;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, int32 value) put_StartingSectorsPerSecond;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, out int32 value) get_StartingSectorsPerSecond;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, int32 value) put_EndingSectorsPerSecond;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, out int32 value) get_EndingSectorsPerSecond;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, int32 value) put_BytesPerSector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, out int32 value) get_BytesPerSector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2 self, out int16 value) get_WriteInProgress;
			}
		}
		[CRepr]
		public struct IWriteEngine2EventArgs : IDispatch
		{
			public const new Guid IID = .(0x27354136, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StartLba(out int32 value) mut => VT.get_StartLba(ref this, out value);
			public HRESULT get_SectorCount(out int32 value) mut => VT.get_SectorCount(ref this, out value);
			public HRESULT get_LastReadLba(out int32 value) mut => VT.get_LastReadLba(ref this, out value);
			public HRESULT get_LastWrittenLba(out int32 value) mut => VT.get_LastWrittenLba(ref this, out value);
			public HRESULT get_TotalSystemBuffer(out int32 value) mut => VT.get_TotalSystemBuffer(ref this, out value);
			public HRESULT get_UsedSystemBuffer(out int32 value) mut => VT.get_UsedSystemBuffer(ref this, out value);
			public HRESULT get_FreeSystemBuffer(out int32 value) mut => VT.get_FreeSystemBuffer(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_StartLba;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_SectorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_LastReadLba;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_LastWrittenLba;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_TotalSystemBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_UsedSystemBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteEngine2EventArgs self, out int32 value) get_FreeSystemBuffer;
			}
		}
		[CRepr]
		public struct DWriteEngine2Events : IDispatch
		{
			public const new Guid IID = .(0x27354137, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, ref IDispatch progress) mut => VT.Update(ref this, ref object, ref progress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DWriteEngine2Events self, ref IDispatch object, ref IDispatch progress) Update;
			}
		}
		[CRepr]
		public struct IDiscFormat2 : IDispatch
		{
			public const new Guid IID = .(0x27354152, 0x8f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsRecorderSupported(ref IDiscRecorder2 recorder, out int16 value) mut => VT.IsRecorderSupported(ref this, ref recorder, out value);
			public HRESULT IsCurrentMediaSupported(ref IDiscRecorder2 recorder, out int16 value) mut => VT.IsCurrentMediaSupported(ref this, ref recorder, out value);
			public HRESULT get_MediaPhysicallyBlank(out int16 value) mut => VT.get_MediaPhysicallyBlank(ref this, out value);
			public HRESULT get_MediaHeuristicallyBlank(out int16 value) mut => VT.get_MediaHeuristicallyBlank(ref this, out value);
			public HRESULT get_SupportedMediaTypes(SAFEARRAY** value) mut => VT.get_SupportedMediaTypes(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2 self, ref IDiscRecorder2 recorder, out int16 value) IsRecorderSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2 self, ref IDiscRecorder2 recorder, out int16 value) IsCurrentMediaSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2 self, out int16 value) get_MediaPhysicallyBlank;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2 self, out int16 value) get_MediaHeuristicallyBlank;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2 self, SAFEARRAY** value) get_SupportedMediaTypes;
			}
		}
		[CRepr]
		public struct IDiscFormat2Erase : IDiscFormat2
		{
			public const new Guid IID = .(0x27354156, 0x8f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Recorder(ref IDiscRecorder2 value) mut => VT.put_Recorder(ref this, ref value);
			public HRESULT get_Recorder(IDiscRecorder2** value) mut => VT.get_Recorder(ref this, value);
			public HRESULT put_FullErase(int16 value) mut => VT.put_FullErase(ref this, value);
			public HRESULT get_FullErase(out int16 value) mut => VT.get_FullErase(ref this, out value);
			public HRESULT get_CurrentPhysicalMediaType(out IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.get_CurrentPhysicalMediaType(ref this, out value);
			public HRESULT put_ClientName(BSTR value) mut => VT.put_ClientName(ref this, value);
			public HRESULT get_ClientName(BSTR* value) mut => VT.get_ClientName(ref this, value);
			public HRESULT EraseMedia() mut => VT.EraseMedia(ref this);

			[CRepr]
			public struct VTable : IDiscFormat2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, ref IDiscRecorder2 value) put_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, IDiscRecorder2** value) get_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, int16 value) put_FullErase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, out int16 value) get_FullErase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, out IMAPI_MEDIA_PHYSICAL_TYPE value) get_CurrentPhysicalMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, BSTR value) put_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self, BSTR* value) get_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Erase self) EraseMedia;
			}
		}
		[CRepr]
		public struct DDiscFormat2EraseEvents : IDispatch
		{
			public const new Guid IID = .(0x2735413a, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, int32 elapsedSeconds, int32 estimatedTotalSeconds) mut => VT.Update(ref this, ref object, elapsedSeconds, estimatedTotalSeconds);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscFormat2EraseEvents self, ref IDispatch object, int32 elapsedSeconds, int32 estimatedTotalSeconds) Update;
			}
		}
		[CRepr]
		public struct IDiscFormat2Data : IDiscFormat2
		{
			public const new Guid IID = .(0x27354153, 0x9f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Recorder(ref IDiscRecorder2 value) mut => VT.put_Recorder(ref this, ref value);
			public HRESULT get_Recorder(IDiscRecorder2** value) mut => VT.get_Recorder(ref this, value);
			public HRESULT put_BufferUnderrunFreeDisabled(int16 value) mut => VT.put_BufferUnderrunFreeDisabled(ref this, value);
			public HRESULT get_BufferUnderrunFreeDisabled(out int16 value) mut => VT.get_BufferUnderrunFreeDisabled(ref this, out value);
			public HRESULT put_PostgapAlreadyInImage(int16 value) mut => VT.put_PostgapAlreadyInImage(ref this, value);
			public HRESULT get_PostgapAlreadyInImage(out int16 value) mut => VT.get_PostgapAlreadyInImage(ref this, out value);
			public HRESULT get_CurrentMediaStatus(out IMAPI_FORMAT2_DATA_MEDIA_STATE value) mut => VT.get_CurrentMediaStatus(ref this, out value);
			public HRESULT get_WriteProtectStatus(out IMAPI_MEDIA_WRITE_PROTECT_STATE value) mut => VT.get_WriteProtectStatus(ref this, out value);
			public HRESULT get_TotalSectorsOnMedia(out int32 value) mut => VT.get_TotalSectorsOnMedia(ref this, out value);
			public HRESULT get_FreeSectorsOnMedia(out int32 value) mut => VT.get_FreeSectorsOnMedia(ref this, out value);
			public HRESULT get_NextWritableAddress(out int32 value) mut => VT.get_NextWritableAddress(ref this, out value);
			public HRESULT get_StartAddressOfPreviousSession(out int32 value) mut => VT.get_StartAddressOfPreviousSession(ref this, out value);
			public HRESULT get_LastWrittenAddressOfPreviousSession(out int32 value) mut => VT.get_LastWrittenAddressOfPreviousSession(ref this, out value);
			public HRESULT put_ForceMediaToBeClosed(int16 value) mut => VT.put_ForceMediaToBeClosed(ref this, value);
			public HRESULT get_ForceMediaToBeClosed(out int16 value) mut => VT.get_ForceMediaToBeClosed(ref this, out value);
			public HRESULT put_DisableConsumerDvdCompatibilityMode(int16 value) mut => VT.put_DisableConsumerDvdCompatibilityMode(ref this, value);
			public HRESULT get_DisableConsumerDvdCompatibilityMode(out int16 value) mut => VT.get_DisableConsumerDvdCompatibilityMode(ref this, out value);
			public HRESULT get_CurrentPhysicalMediaType(out IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.get_CurrentPhysicalMediaType(ref this, out value);
			public HRESULT put_ClientName(BSTR value) mut => VT.put_ClientName(ref this, value);
			public HRESULT get_ClientName(BSTR* value) mut => VT.get_ClientName(ref this, value);
			public HRESULT get_RequestedWriteSpeed(out int32 value) mut => VT.get_RequestedWriteSpeed(ref this, out value);
			public HRESULT get_RequestedRotationTypeIsPureCAV(out int16 value) mut => VT.get_RequestedRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_CurrentWriteSpeed(out int32 value) mut => VT.get_CurrentWriteSpeed(ref this, out value);
			public HRESULT get_CurrentRotationTypeIsPureCAV(out int16 value) mut => VT.get_CurrentRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_SupportedWriteSpeeds(SAFEARRAY** supportedSpeeds) mut => VT.get_SupportedWriteSpeeds(ref this, supportedSpeeds);
			public HRESULT get_SupportedWriteSpeedDescriptors(SAFEARRAY** supportedSpeedDescriptors) mut => VT.get_SupportedWriteSpeedDescriptors(ref this, supportedSpeedDescriptors);
			public HRESULT put_ForceOverwrite(int16 value) mut => VT.put_ForceOverwrite(ref this, value);
			public HRESULT get_ForceOverwrite(out int16 value) mut => VT.get_ForceOverwrite(ref this, out value);
			public HRESULT get_MultisessionInterfaces(SAFEARRAY** value) mut => VT.get_MultisessionInterfaces(ref this, value);
			public HRESULT Write(ref IStream data) mut => VT.Write(ref this, ref data);
			public HRESULT CancelWrite() mut => VT.CancelWrite(ref this);
			public HRESULT SetWriteSpeed(int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) mut => VT.SetWriteSpeed(ref this, RequestedSectorsPerSecond, RotationTypeIsPureCAV);

			[CRepr]
			public struct VTable : IDiscFormat2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, ref IDiscRecorder2 value) put_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, IDiscRecorder2** value) get_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int16 value) put_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int16 value) put_PostgapAlreadyInImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_PostgapAlreadyInImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out IMAPI_FORMAT2_DATA_MEDIA_STATE value) get_CurrentMediaStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out IMAPI_MEDIA_WRITE_PROTECT_STATE value) get_WriteProtectStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_TotalSectorsOnMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_FreeSectorsOnMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_NextWritableAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_StartAddressOfPreviousSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_LastWrittenAddressOfPreviousSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int16 value) put_ForceMediaToBeClosed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_ForceMediaToBeClosed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int16 value) put_DisableConsumerDvdCompatibilityMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_DisableConsumerDvdCompatibilityMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out IMAPI_MEDIA_PHYSICAL_TYPE value) get_CurrentPhysicalMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, BSTR value) put_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, BSTR* value) get_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_RequestedWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_RequestedRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int32 value) get_CurrentWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_CurrentRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, SAFEARRAY** supportedSpeeds) get_SupportedWriteSpeeds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, SAFEARRAY** supportedSpeedDescriptors) get_SupportedWriteSpeedDescriptors;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int16 value) put_ForceOverwrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, out int16 value) get_ForceOverwrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, SAFEARRAY** value) get_MultisessionInterfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, ref IStream data) Write;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self) CancelWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2Data self, int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) SetWriteSpeed;
			}
		}
		[CRepr]
		public struct DDiscFormat2DataEvents : IDispatch
		{
			public const new Guid IID = .(0x2735413c, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, ref IDispatch progress) mut => VT.Update(ref this, ref object, ref progress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscFormat2DataEvents self, ref IDispatch object, ref IDispatch progress) Update;
			}
		}
		[CRepr]
		public struct IDiscFormat2DataEventArgs : IWriteEngine2EventArgs
		{
			public const new Guid IID = .(0x2735413d, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ElapsedTime(out int32 value) mut => VT.get_ElapsedTime(ref this, out value);
			public HRESULT get_RemainingTime(out int32 value) mut => VT.get_RemainingTime(ref this, out value);
			public HRESULT get_TotalTime(out int32 value) mut => VT.get_TotalTime(ref this, out value);
			public HRESULT get_CurrentAction(out IMAPI_FORMAT2_DATA_WRITE_ACTION value) mut => VT.get_CurrentAction(ref this, out value);

			[CRepr]
			public struct VTable : IWriteEngine2EventArgs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2DataEventArgs self, out int32 value) get_ElapsedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2DataEventArgs self, out int32 value) get_RemainingTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2DataEventArgs self, out int32 value) get_TotalTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2DataEventArgs self, out IMAPI_FORMAT2_DATA_WRITE_ACTION value) get_CurrentAction;
			}
		}
		[CRepr]
		public struct IDiscFormat2TrackAtOnce : IDiscFormat2
		{
			public const new Guid IID = .(0x27354154, 0x8f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareMedia() mut => VT.PrepareMedia(ref this);
			public HRESULT AddAudioTrack(ref IStream data) mut => VT.AddAudioTrack(ref this, ref data);
			public HRESULT CancelAddTrack() mut => VT.CancelAddTrack(ref this);
			public HRESULT ReleaseMedia() mut => VT.ReleaseMedia(ref this);
			public HRESULT SetWriteSpeed(int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) mut => VT.SetWriteSpeed(ref this, RequestedSectorsPerSecond, RotationTypeIsPureCAV);
			public HRESULT put_Recorder(ref IDiscRecorder2 value) mut => VT.put_Recorder(ref this, ref value);
			public HRESULT get_Recorder(IDiscRecorder2** value) mut => VT.get_Recorder(ref this, value);
			public HRESULT put_BufferUnderrunFreeDisabled(int16 value) mut => VT.put_BufferUnderrunFreeDisabled(ref this, value);
			public HRESULT get_BufferUnderrunFreeDisabled(out int16 value) mut => VT.get_BufferUnderrunFreeDisabled(ref this, out value);
			public HRESULT get_NumberOfExistingTracks(out int32 value) mut => VT.get_NumberOfExistingTracks(ref this, out value);
			public HRESULT get_TotalSectorsOnMedia(out int32 value) mut => VT.get_TotalSectorsOnMedia(ref this, out value);
			public HRESULT get_FreeSectorsOnMedia(out int32 value) mut => VT.get_FreeSectorsOnMedia(ref this, out value);
			public HRESULT get_UsedSectorsOnMedia(out int32 value) mut => VT.get_UsedSectorsOnMedia(ref this, out value);
			public HRESULT put_DoNotFinalizeMedia(int16 value) mut => VT.put_DoNotFinalizeMedia(ref this, value);
			public HRESULT get_DoNotFinalizeMedia(out int16 value) mut => VT.get_DoNotFinalizeMedia(ref this, out value);
			public HRESULT get_ExpectedTableOfContents(SAFEARRAY** value) mut => VT.get_ExpectedTableOfContents(ref this, value);
			public HRESULT get_CurrentPhysicalMediaType(out IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.get_CurrentPhysicalMediaType(ref this, out value);
			public HRESULT put_ClientName(BSTR value) mut => VT.put_ClientName(ref this, value);
			public HRESULT get_ClientName(BSTR* value) mut => VT.get_ClientName(ref this, value);
			public HRESULT get_RequestedWriteSpeed(out int32 value) mut => VT.get_RequestedWriteSpeed(ref this, out value);
			public HRESULT get_RequestedRotationTypeIsPureCAV(out int16 value) mut => VT.get_RequestedRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_CurrentWriteSpeed(out int32 value) mut => VT.get_CurrentWriteSpeed(ref this, out value);
			public HRESULT get_CurrentRotationTypeIsPureCAV(out int16 value) mut => VT.get_CurrentRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_SupportedWriteSpeeds(SAFEARRAY** supportedSpeeds) mut => VT.get_SupportedWriteSpeeds(ref this, supportedSpeeds);
			public HRESULT get_SupportedWriteSpeedDescriptors(SAFEARRAY** supportedSpeedDescriptors) mut => VT.get_SupportedWriteSpeedDescriptors(ref this, supportedSpeedDescriptors);

			[CRepr]
			public struct VTable : IDiscFormat2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self) PrepareMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, ref IStream data) AddAudioTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self) CancelAddTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self) ReleaseMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) SetWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, ref IDiscRecorder2 value) put_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, IDiscRecorder2** value) get_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, int16 value) put_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int16 value) get_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_NumberOfExistingTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_TotalSectorsOnMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_FreeSectorsOnMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_UsedSectorsOnMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, int16 value) put_DoNotFinalizeMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int16 value) get_DoNotFinalizeMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, SAFEARRAY** value) get_ExpectedTableOfContents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out IMAPI_MEDIA_PHYSICAL_TYPE value) get_CurrentPhysicalMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, BSTR value) put_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, BSTR* value) get_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_RequestedWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int16 value) get_RequestedRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int32 value) get_CurrentWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, out int16 value) get_CurrentRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, SAFEARRAY** supportedSpeeds) get_SupportedWriteSpeeds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnce self, SAFEARRAY** supportedSpeedDescriptors) get_SupportedWriteSpeedDescriptors;
			}
		}
		[CRepr]
		public struct DDiscFormat2TrackAtOnceEvents : IDispatch
		{
			public const new Guid IID = .(0x2735413f, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, ref IDispatch progress) mut => VT.Update(ref this, ref object, ref progress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscFormat2TrackAtOnceEvents self, ref IDispatch object, ref IDispatch progress) Update;
			}
		}
		[CRepr]
		public struct IDiscFormat2TrackAtOnceEventArgs : IWriteEngine2EventArgs
		{
			public const new Guid IID = .(0x27354140, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentTrackNumber(out int32 value) mut => VT.get_CurrentTrackNumber(ref this, out value);
			public HRESULT get_CurrentAction(out IMAPI_FORMAT2_TAO_WRITE_ACTION value) mut => VT.get_CurrentAction(ref this, out value);
			public HRESULT get_ElapsedTime(out int32 value) mut => VT.get_ElapsedTime(ref this, out value);
			public HRESULT get_RemainingTime(out int32 value) mut => VT.get_RemainingTime(ref this, out value);

			[CRepr]
			public struct VTable : IWriteEngine2EventArgs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnceEventArgs self, out int32 value) get_CurrentTrackNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnceEventArgs self, out IMAPI_FORMAT2_TAO_WRITE_ACTION value) get_CurrentAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnceEventArgs self, out int32 value) get_ElapsedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2TrackAtOnceEventArgs self, out int32 value) get_RemainingTime;
			}
		}
		[CRepr]
		public struct IDiscFormat2RawCD : IDiscFormat2
		{
			public const new Guid IID = .(0x27354155, 0x8f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrepareMedia() mut => VT.PrepareMedia(ref this);
			public HRESULT WriteMedia(ref IStream data) mut => VT.WriteMedia(ref this, ref data);
			public HRESULT WriteMedia2(ref IStream data, int32 streamLeadInSectors) mut => VT.WriteMedia2(ref this, ref data, streamLeadInSectors);
			public HRESULT CancelWrite() mut => VT.CancelWrite(ref this);
			public HRESULT ReleaseMedia() mut => VT.ReleaseMedia(ref this);
			public HRESULT SetWriteSpeed(int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) mut => VT.SetWriteSpeed(ref this, RequestedSectorsPerSecond, RotationTypeIsPureCAV);
			public HRESULT put_Recorder(ref IDiscRecorder2 value) mut => VT.put_Recorder(ref this, ref value);
			public HRESULT get_Recorder(IDiscRecorder2** value) mut => VT.get_Recorder(ref this, value);
			public HRESULT put_BufferUnderrunFreeDisabled(int16 value) mut => VT.put_BufferUnderrunFreeDisabled(ref this, value);
			public HRESULT get_BufferUnderrunFreeDisabled(out int16 value) mut => VT.get_BufferUnderrunFreeDisabled(ref this, out value);
			public HRESULT get_StartOfNextSession(out int32 value) mut => VT.get_StartOfNextSession(ref this, out value);
			public HRESULT get_LastPossibleStartOfLeadout(out int32 value) mut => VT.get_LastPossibleStartOfLeadout(ref this, out value);
			public HRESULT get_CurrentPhysicalMediaType(out IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.get_CurrentPhysicalMediaType(ref this, out value);
			public HRESULT get_SupportedSectorTypes(SAFEARRAY** value) mut => VT.get_SupportedSectorTypes(ref this, value);
			public HRESULT put_RequestedSectorType(IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) mut => VT.put_RequestedSectorType(ref this, value);
			public HRESULT get_RequestedSectorType(out IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) mut => VT.get_RequestedSectorType(ref this, out value);
			public HRESULT put_ClientName(BSTR value) mut => VT.put_ClientName(ref this, value);
			public HRESULT get_ClientName(BSTR* value) mut => VT.get_ClientName(ref this, value);
			public HRESULT get_RequestedWriteSpeed(out int32 value) mut => VT.get_RequestedWriteSpeed(ref this, out value);
			public HRESULT get_RequestedRotationTypeIsPureCAV(out int16 value) mut => VT.get_RequestedRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_CurrentWriteSpeed(out int32 value) mut => VT.get_CurrentWriteSpeed(ref this, out value);
			public HRESULT get_CurrentRotationTypeIsPureCAV(out int16 value) mut => VT.get_CurrentRotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_SupportedWriteSpeeds(SAFEARRAY** supportedSpeeds) mut => VT.get_SupportedWriteSpeeds(ref this, supportedSpeeds);
			public HRESULT get_SupportedWriteSpeedDescriptors(SAFEARRAY** supportedSpeedDescriptors) mut => VT.get_SupportedWriteSpeedDescriptors(ref this, supportedSpeedDescriptors);

			[CRepr]
			public struct VTable : IDiscFormat2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self) PrepareMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, ref IStream data) WriteMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, ref IStream data, int32 streamLeadInSectors) WriteMedia2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self) CancelWrite;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self) ReleaseMedia;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, int32 RequestedSectorsPerSecond, int16 RotationTypeIsPureCAV) SetWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, ref IDiscRecorder2 value) put_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, IDiscRecorder2** value) get_Recorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, int16 value) put_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int16 value) get_BufferUnderrunFreeDisabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int32 value) get_StartOfNextSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int32 value) get_LastPossibleStartOfLeadout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out IMAPI_MEDIA_PHYSICAL_TYPE value) get_CurrentPhysicalMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, SAFEARRAY** value) get_SupportedSectorTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) put_RequestedSectorType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) get_RequestedSectorType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, BSTR value) put_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, BSTR* value) get_ClientName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int32 value) get_RequestedWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int16 value) get_RequestedRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int32 value) get_CurrentWriteSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, out int16 value) get_CurrentRotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, SAFEARRAY** supportedSpeeds) get_SupportedWriteSpeeds;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCD self, SAFEARRAY** supportedSpeedDescriptors) get_SupportedWriteSpeedDescriptors;
			}
		}
		[CRepr]
		public struct DDiscFormat2RawCDEvents : IDispatch
		{
			public const new Guid IID = .(0x27354142, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, ref IDispatch progress) mut => VT.Update(ref this, ref object, ref progress);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DDiscFormat2RawCDEvents self, ref IDispatch object, ref IDispatch progress) Update;
			}
		}
		[CRepr]
		public struct IDiscFormat2RawCDEventArgs : IWriteEngine2EventArgs
		{
			public const new Guid IID = .(0x27354143, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentAction(out IMAPI_FORMAT2_RAW_CD_WRITE_ACTION value) mut => VT.get_CurrentAction(ref this, out value);
			public HRESULT get_ElapsedTime(out int32 value) mut => VT.get_ElapsedTime(ref this, out value);
			public HRESULT get_RemainingTime(out int32 value) mut => VT.get_RemainingTime(ref this, out value);

			[CRepr]
			public struct VTable : IWriteEngine2EventArgs.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCDEventArgs self, out IMAPI_FORMAT2_RAW_CD_WRITE_ACTION value) get_CurrentAction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCDEventArgs self, out int32 value) get_ElapsedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscFormat2RawCDEventArgs self, out int32 value) get_RemainingTime;
			}
		}
		[CRepr]
		public struct IBurnVerification : IUnknown
		{
			public const new Guid IID = .(0xd2ffd834, 0x958b, 0x426d, 0x84, 0x70, 0x2a, 0x13, 0x87, 0x9c, 0x6a, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_BurnVerificationLevel(IMAPI_BURN_VERIFICATION_LEVEL value) mut => VT.put_BurnVerificationLevel(ref this, value);
			public HRESULT get_BurnVerificationLevel(out IMAPI_BURN_VERIFICATION_LEVEL value) mut => VT.get_BurnVerificationLevel(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBurnVerification self, IMAPI_BURN_VERIFICATION_LEVEL value) put_BurnVerificationLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBurnVerification self, out IMAPI_BURN_VERIFICATION_LEVEL value) get_BurnVerificationLevel;
			}
		}
		[CRepr]
		public struct IWriteSpeedDescriptor : IDispatch
		{
			public const new Guid IID = .(0x27354144, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_MediaType(out IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.get_MediaType(ref this, out value);
			public HRESULT get_RotationTypeIsPureCAV(out int16 value) mut => VT.get_RotationTypeIsPureCAV(ref this, out value);
			public HRESULT get_WriteSpeed(out int32 value) mut => VT.get_WriteSpeed(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteSpeedDescriptor self, out IMAPI_MEDIA_PHYSICAL_TYPE value) get_MediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteSpeedDescriptor self, out int16 value) get_RotationTypeIsPureCAV;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWriteSpeedDescriptor self, out int32 value) get_WriteSpeed;
			}
		}
		[CRepr]
		public struct IMultisession : IDispatch
		{
			public const new Guid IID = .(0x27354150, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsSupportedOnCurrentMediaState(out int16 value) mut => VT.get_IsSupportedOnCurrentMediaState(ref this, out value);
			public HRESULT put_InUse(int16 value) mut => VT.put_InUse(ref this, value);
			public HRESULT get_InUse(out int16 value) mut => VT.get_InUse(ref this, out value);
			public HRESULT get_ImportRecorder(IDiscRecorder2** value) mut => VT.get_ImportRecorder(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisession self, out int16 value) get_IsSupportedOnCurrentMediaState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisession self, int16 value) put_InUse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisession self, out int16 value) get_InUse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisession self, IDiscRecorder2** value) get_ImportRecorder;
			}
		}
		[CRepr]
		public struct IMultisessionSequential : IMultisession
		{
			public const new Guid IID = .(0x27354151, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_IsFirstDataSession(out int16 value) mut => VT.get_IsFirstDataSession(ref this, out value);
			public HRESULT get_StartAddressOfPreviousSession(out int32 value) mut => VT.get_StartAddressOfPreviousSession(ref this, out value);
			public HRESULT get_LastWrittenAddressOfPreviousSession(out int32 value) mut => VT.get_LastWrittenAddressOfPreviousSession(ref this, out value);
			public HRESULT get_NextWritableAddress(out int32 value) mut => VT.get_NextWritableAddress(ref this, out value);
			public HRESULT get_FreeSectorsOnMedia(out int32 value) mut => VT.get_FreeSectorsOnMedia(ref this, out value);

			[CRepr]
			public struct VTable : IMultisession.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential self, out int16 value) get_IsFirstDataSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential self, out int32 value) get_StartAddressOfPreviousSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential self, out int32 value) get_LastWrittenAddressOfPreviousSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential self, out int32 value) get_NextWritableAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential self, out int32 value) get_FreeSectorsOnMedia;
			}
		}
		[CRepr]
		public struct IMultisessionSequential2 : IMultisessionSequential
		{
			public const new Guid IID = .(0xb507ca22, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WriteUnitSize(out int32 value) mut => VT.get_WriteUnitSize(ref this, out value);

			[CRepr]
			public struct VTable : IMultisessionSequential.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionSequential2 self, out int32 value) get_WriteUnitSize;
			}
		}
		[CRepr]
		public struct IMultisessionRandomWrite : IMultisession
		{
			public const new Guid IID = .(0xb507ca23, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_WriteUnitSize(out int32 value) mut => VT.get_WriteUnitSize(ref this, out value);
			public HRESULT get_LastWrittenAddress(out int32 value) mut => VT.get_LastWrittenAddress(ref this, out value);
			public HRESULT get_TotalSectorsOnMedia(out int32 value) mut => VT.get_TotalSectorsOnMedia(ref this, out value);

			[CRepr]
			public struct VTable : IMultisession.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionRandomWrite self, out int32 value) get_WriteUnitSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionRandomWrite self, out int32 value) get_LastWrittenAddress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultisessionRandomWrite self, out int32 value) get_TotalSectorsOnMedia;
			}
		}
		[CRepr]
		public struct IStreamPseudoRandomBased : IStream
		{
			public const new Guid IID = .(0x27354145, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT put_Seed(uint32 value) mut => VT.put_Seed(ref this, value);
			public HRESULT get_Seed(out uint32 value) mut => VT.get_Seed(ref this, out value);
			public HRESULT put_ExtendedSeed(uint32* values, uint32 eCount) mut => VT.put_ExtendedSeed(ref this, values, eCount);
			public HRESULT get_ExtendedSeed(uint32** values, out uint32 eCount) mut => VT.get_ExtendedSeed(ref this, values, out eCount);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamPseudoRandomBased self, uint32 value) put_Seed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamPseudoRandomBased self, out uint32 value) get_Seed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamPseudoRandomBased self, uint32* values, uint32 eCount) put_ExtendedSeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamPseudoRandomBased self, uint32** values, out uint32 eCount) get_ExtendedSeed;
			}
		}
		[CRepr]
		public struct IStreamConcatenate : IStream
		{
			public const new Guid IID = .(0x27354146, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ref IStream stream1, ref IStream stream2) mut => VT.Initialize(ref this, ref stream1, ref stream2);
			public HRESULT Initialize2(IStream** streams, uint32 streamCount) mut => VT.Initialize2(ref this, streams, streamCount);
			public HRESULT Append(ref IStream stream) mut => VT.Append(ref this, ref stream);
			public HRESULT Append2(IStream** streams, uint32 streamCount) mut => VT.Append2(ref this, streams, streamCount);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamConcatenate self, ref IStream stream1, ref IStream stream2) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamConcatenate self, IStream** streams, uint32 streamCount) Initialize2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamConcatenate self, ref IStream stream) Append;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamConcatenate self, IStream** streams, uint32 streamCount) Append2;
			}
		}
		[CRepr]
		public struct IStreamInterleave : IStream
		{
			public const new Guid IID = .(0x27354147, 0x7f64, 0x5b0f, 0x8f, 0x00, 0x5d, 0x77, 0xaf, 0xbe, 0x26, 0x1e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IStream** streams, uint32* interleaveSizes, uint32 streamCount) mut => VT.Initialize(ref this, streams, interleaveSizes, streamCount);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamInterleave self, IStream** streams, uint32* interleaveSizes, uint32 streamCount) Initialize;
			}
		}
		[CRepr]
		public struct IRawCDImageCreator : IDispatch
		{
			public const new Guid IID = .(0x25983550, 0x9d65, 0x49ce, 0xb3, 0x35, 0x40, 0x63, 0x0d, 0x90, 0x12, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateResultImage(out IStream* resultStream) mut => VT.CreateResultImage(ref this, out resultStream);
			public HRESULT AddTrack(IMAPI_CD_SECTOR_TYPE dataType, ref IStream data, out int32 trackIndex) mut => VT.AddTrack(ref this, dataType, ref data, out trackIndex);
			public HRESULT AddSpecialPregap(ref IStream data) mut => VT.AddSpecialPregap(ref this, ref data);
			public HRESULT AddSubcodeRWGenerator(ref IStream subcode) mut => VT.AddSubcodeRWGenerator(ref this, ref subcode);
			public HRESULT put_ResultingImageType(IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) mut => VT.put_ResultingImageType(ref this, value);
			public HRESULT get_ResultingImageType(out IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) mut => VT.get_ResultingImageType(ref this, out value);
			public HRESULT get_StartOfLeadout(out int32 value) mut => VT.get_StartOfLeadout(ref this, out value);
			public HRESULT put_StartOfLeadoutLimit(int32 value) mut => VT.put_StartOfLeadoutLimit(ref this, value);
			public HRESULT get_StartOfLeadoutLimit(out int32 value) mut => VT.get_StartOfLeadoutLimit(ref this, out value);
			public HRESULT put_DisableGaplessAudio(int16 value) mut => VT.put_DisableGaplessAudio(ref this, value);
			public HRESULT get_DisableGaplessAudio(out int16 value) mut => VT.get_DisableGaplessAudio(ref this, out value);
			public HRESULT put_MediaCatalogNumber(BSTR value) mut => VT.put_MediaCatalogNumber(ref this, value);
			public HRESULT get_MediaCatalogNumber(BSTR* value) mut => VT.get_MediaCatalogNumber(ref this, value);
			public HRESULT put_StartingTrackNumber(int32 value) mut => VT.put_StartingTrackNumber(ref this, value);
			public HRESULT get_StartingTrackNumber(out int32 value) mut => VT.get_StartingTrackNumber(ref this, out value);
			public HRESULT get_TrackInfo(int32 trackIndex, IRawCDImageTrackInfo** value) mut => VT.get_TrackInfo(ref this, trackIndex, value);
			public HRESULT get_NumberOfExistingTracks(out int32 value) mut => VT.get_NumberOfExistingTracks(ref this, out value);
			public HRESULT get_LastUsedUserSectorInImage(out int32 value) mut => VT.get_LastUsedUserSectorInImage(ref this, out value);
			public HRESULT get_ExpectedTableOfContents(SAFEARRAY** value) mut => VT.get_ExpectedTableOfContents(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out IStream* resultStream) CreateResultImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, IMAPI_CD_SECTOR_TYPE dataType, ref IStream data, out int32 trackIndex) AddTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, ref IStream data) AddSpecialPregap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, ref IStream subcode) AddSubcodeRWGenerator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) put_ResultingImageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out IMAPI_FORMAT2_RAW_CD_DATA_SECTOR_TYPE value) get_ResultingImageType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int32 value) get_StartOfLeadout;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, int32 value) put_StartOfLeadoutLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int32 value) get_StartOfLeadoutLimit;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, int16 value) put_DisableGaplessAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int16 value) get_DisableGaplessAudio;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, BSTR value) put_MediaCatalogNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, BSTR* value) get_MediaCatalogNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, int32 value) put_StartingTrackNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int32 value) get_StartingTrackNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, int32 trackIndex, IRawCDImageTrackInfo** value) get_TrackInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int32 value) get_NumberOfExistingTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, out int32 value) get_LastUsedUserSectorInImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageCreator self, SAFEARRAY** value) get_ExpectedTableOfContents;
			}
		}
		[CRepr]
		public struct IRawCDImageTrackInfo : IDispatch
		{
			public const new Guid IID = .(0x25983551, 0x9d65, 0x49ce, 0xb3, 0x35, 0x40, 0x63, 0x0d, 0x90, 0x12, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StartingLba(out int32 value) mut => VT.get_StartingLba(ref this, out value);
			public HRESULT get_SectorCount(out int32 value) mut => VT.get_SectorCount(ref this, out value);
			public HRESULT get_TrackNumber(out int32 value) mut => VT.get_TrackNumber(ref this, out value);
			public HRESULT get_SectorType(out IMAPI_CD_SECTOR_TYPE value) mut => VT.get_SectorType(ref this, out value);
			public HRESULT get_ISRC(BSTR* value) mut => VT.get_ISRC(ref this, value);
			public HRESULT put_ISRC(BSTR value) mut => VT.put_ISRC(ref this, value);
			public HRESULT get_DigitalAudioCopySetting(out IMAPI_CD_TRACK_DIGITAL_COPY_SETTING value) mut => VT.get_DigitalAudioCopySetting(ref this, out value);
			public HRESULT put_DigitalAudioCopySetting(IMAPI_CD_TRACK_DIGITAL_COPY_SETTING value) mut => VT.put_DigitalAudioCopySetting(ref this, value);
			public HRESULT get_AudioHasPreemphasis(out int16 value) mut => VT.get_AudioHasPreemphasis(ref this, out value);
			public HRESULT put_AudioHasPreemphasis(int16 value) mut => VT.put_AudioHasPreemphasis(ref this, value);
			public HRESULT get_TrackIndexes(SAFEARRAY** value) mut => VT.get_TrackIndexes(ref this, value);
			public HRESULT AddTrackIndex(int32 lbaOffset) mut => VT.AddTrackIndex(ref this, lbaOffset);
			public HRESULT ClearTrackIndex(int32 lbaOffset) mut => VT.ClearTrackIndex(ref this, lbaOffset);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out int32 value) get_StartingLba;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out int32 value) get_SectorCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out int32 value) get_TrackNumber;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out IMAPI_CD_SECTOR_TYPE value) get_SectorType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, BSTR* value) get_ISRC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, BSTR value) put_ISRC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out IMAPI_CD_TRACK_DIGITAL_COPY_SETTING value) get_DigitalAudioCopySetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, IMAPI_CD_TRACK_DIGITAL_COPY_SETTING value) put_DigitalAudioCopySetting;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, out int16 value) get_AudioHasPreemphasis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, int16 value) put_AudioHasPreemphasis;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, SAFEARRAY** value) get_TrackIndexes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, int32 lbaOffset) AddTrackIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRawCDImageTrackInfo self, int32 lbaOffset) ClearTrackIndex;
			}
		}
		[CRepr]
		public struct IBlockRange : IDispatch
		{
			public const new Guid IID = .(0xb507ca25, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_StartLba(out int32 value) mut => VT.get_StartLba(ref this, out value);
			public HRESULT get_EndLba(out int32 value) mut => VT.get_EndLba(ref this, out value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBlockRange self, out int32 value) get_StartLba;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBlockRange self, out int32 value) get_EndLba;
			}
		}
		[CRepr]
		public struct IBlockRangeList : IDispatch
		{
			public const new Guid IID = .(0xb507ca26, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BlockRanges(SAFEARRAY** value) mut => VT.get_BlockRanges(ref this, value);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBlockRangeList self, SAFEARRAY** value) get_BlockRanges;
			}
		}
		[CRepr]
		public struct IBootOptions : IDispatch
		{
			public const new Guid IID = .(0x2c941fd4, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BootImage(out IStream* pVal) mut => VT.get_BootImage(ref this, out pVal);
			public HRESULT get_Manufacturer(out BSTR pVal) mut => VT.get_Manufacturer(ref this, out pVal);
			public HRESULT put_Manufacturer(BSTR newVal) mut => VT.put_Manufacturer(ref this, newVal);
			public HRESULT get_PlatformId(out PlatformId pVal) mut => VT.get_PlatformId(ref this, out pVal);
			public HRESULT put_PlatformId(PlatformId newVal) mut => VT.put_PlatformId(ref this, newVal);
			public HRESULT get_Emulation(out EmulationType pVal) mut => VT.get_Emulation(ref this, out pVal);
			public HRESULT put_Emulation(EmulationType newVal) mut => VT.put_Emulation(ref this, newVal);
			public HRESULT get_ImageSize(out uint32 pVal) mut => VT.get_ImageSize(ref this, out pVal);
			public HRESULT AssignBootImage(ref IStream newVal) mut => VT.AssignBootImage(ref this, ref newVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, out IStream* pVal) get_BootImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, out BSTR pVal) get_Manufacturer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, BSTR newVal) put_Manufacturer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, out PlatformId pVal) get_PlatformId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, PlatformId newVal) put_PlatformId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, out EmulationType pVal) get_Emulation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, EmulationType newVal) put_Emulation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, out uint32 pVal) get_ImageSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IBootOptions self, ref IStream newVal) AssignBootImage;
			}
		}
		[CRepr]
		public struct IProgressItem : IDispatch
		{
			public const new Guid IID = .(0x2c941fd5, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Description(out BSTR desc) mut => VT.get_Description(ref this, out desc);
			public HRESULT get_FirstBlock(out uint32 block) mut => VT.get_FirstBlock(ref this, out block);
			public HRESULT get_LastBlock(out uint32 block) mut => VT.get_LastBlock(ref this, out block);
			public HRESULT get_BlockCount(out uint32 blocks) mut => VT.get_BlockCount(ref this, out blocks);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItem self, out BSTR desc) get_Description;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItem self, out uint32 block) get_FirstBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItem self, out uint32 block) get_LastBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItem self, out uint32 blocks) get_BlockCount;
			}
		}
		[CRepr]
		public struct IEnumProgressItems : IUnknown
		{
			public const new Guid IID = .(0x2c941fd6, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IProgressItem** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumProgressItems* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumProgressItems self, uint32 celt, IProgressItem** rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumProgressItems self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumProgressItems self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumProgressItems self, out IEnumProgressItems* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IProgressItems : IDispatch
		{
			public const new Guid IID = .(0x2c941fd7, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IEnumVARIANT* NewEnum) mut => VT.get__NewEnum(ref this, out NewEnum);
			public HRESULT get_Item(int32 Index, out IProgressItem* item) mut => VT.get_Item(ref this, Index, out item);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT ProgressItemFromBlock(uint32 block, out IProgressItem* item) mut => VT.ProgressItemFromBlock(ref this, block, out item);
			public HRESULT ProgressItemFromDescription(BSTR description, out IProgressItem* item) mut => VT.ProgressItemFromDescription(ref this, description, out item);
			public HRESULT get_EnumProgressItems(out IEnumProgressItems* NewEnum) mut => VT.get_EnumProgressItems(ref this, out NewEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, out IEnumVARIANT* NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, int32 Index, out IProgressItem* item) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, uint32 block, out IProgressItem* item) ProgressItemFromBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, BSTR description, out IProgressItem* item) ProgressItemFromDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressItems self, out IEnumProgressItems* NewEnum) get_EnumProgressItems;
			}
		}
		[CRepr]
		public struct IFileSystemImageResult : IDispatch
		{
			public const new Guid IID = .(0x2c941fd8, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ImageStream(out IStream* pVal) mut => VT.get_ImageStream(ref this, out pVal);
			public HRESULT get_ProgressItems(out IProgressItems* pVal) mut => VT.get_ProgressItems(ref this, out pVal);
			public HRESULT get_TotalBlocks(out int32 pVal) mut => VT.get_TotalBlocks(ref this, out pVal);
			public HRESULT get_BlockSize(out int32 pVal) mut => VT.get_BlockSize(ref this, out pVal);
			public HRESULT get_DiscId(out BSTR pVal) mut => VT.get_DiscId(ref this, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult self, out IStream* pVal) get_ImageStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult self, out IProgressItems* pVal) get_ProgressItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult self, out int32 pVal) get_TotalBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult self, out int32 pVal) get_BlockSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult self, out BSTR pVal) get_DiscId;
			}
		}
		[CRepr]
		public struct IFileSystemImageResult2 : IFileSystemImageResult
		{
			public const new Guid IID = .(0xb507ca29, 0x2204, 0x11dd, 0x96, 0x6a, 0x00, 0x1a, 0xa0, 0x1b, 0xbc, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ModifiedBlocks(IBlockRangeList** pVal) mut => VT.get_ModifiedBlocks(ref this, pVal);

			[CRepr]
			public struct VTable : IFileSystemImageResult.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImageResult2 self, IBlockRangeList** pVal) get_ModifiedBlocks;
			}
		}
		[CRepr]
		public struct IFsiItem : IDispatch
		{
			public const new Guid IID = .(0x2c941fd9, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
			public HRESULT get_FullPath(out BSTR pVal) mut => VT.get_FullPath(ref this, out pVal);
			public HRESULT get_CreationTime(out double pVal) mut => VT.get_CreationTime(ref this, out pVal);
			public HRESULT put_CreationTime(double newVal) mut => VT.put_CreationTime(ref this, newVal);
			public HRESULT get_LastAccessedTime(out double pVal) mut => VT.get_LastAccessedTime(ref this, out pVal);
			public HRESULT put_LastAccessedTime(double newVal) mut => VT.put_LastAccessedTime(ref this, newVal);
			public HRESULT get_LastModifiedTime(out double pVal) mut => VT.get_LastModifiedTime(ref this, out pVal);
			public HRESULT put_LastModifiedTime(double newVal) mut => VT.put_LastModifiedTime(ref this, newVal);
			public HRESULT get_IsHidden(out int16 pVal) mut => VT.get_IsHidden(ref this, out pVal);
			public HRESULT put_IsHidden(int16 newVal) mut => VT.put_IsHidden(ref this, newVal);
			public HRESULT FileSystemName(FsiFileSystems fileSystem, out BSTR pVal) mut => VT.FileSystemName(ref this, fileSystem, out pVal);
			public HRESULT FileSystemPath(FsiFileSystems fileSystem, out BSTR pVal) mut => VT.FileSystemPath(ref this, fileSystem, out pVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out BSTR pVal) get_Name;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out BSTR pVal) get_FullPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out double pVal) get_CreationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, double newVal) put_CreationTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out double pVal) get_LastAccessedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, double newVal) put_LastAccessedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out double pVal) get_LastModifiedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, double newVal) put_LastModifiedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, out int16 pVal) get_IsHidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, int16 newVal) put_IsHidden;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, FsiFileSystems fileSystem, out BSTR pVal) FileSystemName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiItem self, FsiFileSystems fileSystem, out BSTR pVal) FileSystemPath;
			}
		}
		[CRepr]
		public struct IEnumFsiItems : IUnknown
		{
			public const new Guid IID = .(0x2c941fda, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IFsiItem** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
			public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumFsiItems* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFsiItems self, uint32 celt, IFsiItem** rgelt, out uint32 pceltFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFsiItems self, uint32 celt) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFsiItems self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFsiItems self, out IEnumFsiItems* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IFsiFileItem : IFsiItem
		{
			public const new Guid IID = .(0x2c941fdb, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_DataSize(out int64 pVal) mut => VT.get_DataSize(ref this, out pVal);
			public HRESULT get_DataSize32BitLow(out int32 pVal) mut => VT.get_DataSize32BitLow(ref this, out pVal);
			public HRESULT get_DataSize32BitHigh(out int32 pVal) mut => VT.get_DataSize32BitHigh(ref this, out pVal);
			public HRESULT get_Data(out IStream* pVal) mut => VT.get_Data(ref this, out pVal);
			public HRESULT put_Data(ref IStream newVal) mut => VT.put_Data(ref this, ref newVal);

			[CRepr]
			public struct VTable : IFsiItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem self, out int64 pVal) get_DataSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem self, out int32 pVal) get_DataSize32BitLow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem self, out int32 pVal) get_DataSize32BitHigh;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem self, out IStream* pVal) get_Data;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem self, ref IStream newVal) put_Data;
			}
		}
		[CRepr]
		public struct IFsiFileItem2 : IFsiFileItem
		{
			public const new Guid IID = .(0x199d0c19, 0x11e1, 0x40eb, 0x8e, 0xc2, 0xc8, 0xc8, 0x22, 0xa0, 0x77, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_FsiNamedStreams(IFsiNamedStreams** streams) mut => VT.get_FsiNamedStreams(ref this, streams);
			public HRESULT get_IsNamedStream(out int16 pVal) mut => VT.get_IsNamedStream(ref this, out pVal);
			public HRESULT AddStream(BSTR name, ref IStream streamData) mut => VT.AddStream(ref this, name, ref streamData);
			public HRESULT RemoveStream(BSTR name) mut => VT.RemoveStream(ref this, name);
			public HRESULT get_IsRealTime(out int16 pVal) mut => VT.get_IsRealTime(ref this, out pVal);
			public HRESULT put_IsRealTime(int16 newVal) mut => VT.put_IsRealTime(ref this, newVal);

			[CRepr]
			public struct VTable : IFsiFileItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, IFsiNamedStreams** streams) get_FsiNamedStreams;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, out int16 pVal) get_IsNamedStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, BSTR name, ref IStream streamData) AddStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, BSTR name) RemoveStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, out int16 pVal) get_IsRealTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiFileItem2 self, int16 newVal) put_IsRealTime;
			}
		}
		[CRepr]
		public struct IFsiNamedStreams : IDispatch
		{
			public const new Guid IID = .(0xed79ba56, 0x5294, 0x4250, 0x8d, 0x46, 0xf9, 0xae, 0xce, 0xe2, 0x34, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(IEnumVARIANT** NewEnum) mut => VT.get__NewEnum(ref this, NewEnum);
			public HRESULT get_Item(int32 index, IFsiFileItem2** item) mut => VT.get_Item(ref this, index, item);
			public HRESULT get_Count(out int32 count) mut => VT.get_Count(ref this, out count);
			public HRESULT get_EnumNamedStreams(IEnumFsiItems** NewEnum) mut => VT.get_EnumNamedStreams(ref this, NewEnum);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiNamedStreams self, IEnumVARIANT** NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiNamedStreams self, int32 index, IFsiFileItem2** item) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiNamedStreams self, out int32 count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiNamedStreams self, IEnumFsiItems** NewEnum) get_EnumNamedStreams;
			}
		}
		[CRepr]
		public struct IFsiDirectoryItem : IFsiItem
		{
			public const new Guid IID = .(0x2c941fdc, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get__NewEnum(out IEnumVARIANT* NewEnum) mut => VT.get__NewEnum(ref this, out NewEnum);
			public HRESULT get_Item(BSTR path, out IFsiItem* item) mut => VT.get_Item(ref this, path, out item);
			public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
			public HRESULT get_EnumFsiItems(out IEnumFsiItems* NewEnum) mut => VT.get_EnumFsiItems(ref this, out NewEnum);
			public HRESULT AddDirectory(BSTR path) mut => VT.AddDirectory(ref this, path);
			public HRESULT AddFile(BSTR path, ref IStream fileData) mut => VT.AddFile(ref this, path, ref fileData);
			public HRESULT AddTree(BSTR sourceDirectory, int16 includeBaseDirectory) mut => VT.AddTree(ref this, sourceDirectory, includeBaseDirectory);
			public HRESULT Add(ref IFsiItem item) mut => VT.Add(ref this, ref item);
			public HRESULT Remove(BSTR path) mut => VT.Remove(ref this, path);
			public HRESULT RemoveTree(BSTR path) mut => VT.RemoveTree(ref this, path);

			[CRepr]
			public struct VTable : IFsiItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, out IEnumVARIANT* NewEnum) get__NewEnum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR path, out IFsiItem* item) get_Item;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, out int32 Count) get_Count;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, out IEnumFsiItems* NewEnum) get_EnumFsiItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR path) AddDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR path, ref IStream fileData) AddFile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR sourceDirectory, int16 includeBaseDirectory) AddTree;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, ref IFsiItem item) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR path) Remove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem self, BSTR path) RemoveTree;
			}
		}
		[CRepr]
		public struct IFsiDirectoryItem2 : IFsiDirectoryItem
		{
			public const new Guid IID = .(0xf7fb4b9b, 0x6d96, 0x4d7b, 0x91, 0x15, 0x20, 0x1b, 0x14, 0x48, 0x11, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTreeWithNamedStreams(BSTR sourceDirectory, int16 includeBaseDirectory) mut => VT.AddTreeWithNamedStreams(ref this, sourceDirectory, includeBaseDirectory);

			[CRepr]
			public struct VTable : IFsiDirectoryItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFsiDirectoryItem2 self, BSTR sourceDirectory, int16 includeBaseDirectory) AddTreeWithNamedStreams;
			}
		}
		[CRepr]
		public struct IFileSystemImage : IDispatch
		{
			public const new Guid IID = .(0x2c941fe1, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Root(IFsiDirectoryItem** pVal) mut => VT.get_Root(ref this, pVal);
			public HRESULT get_SessionStartBlock(out int32 pVal) mut => VT.get_SessionStartBlock(ref this, out pVal);
			public HRESULT put_SessionStartBlock(int32 newVal) mut => VT.put_SessionStartBlock(ref this, newVal);
			public HRESULT get_FreeMediaBlocks(out int32 pVal) mut => VT.get_FreeMediaBlocks(ref this, out pVal);
			public HRESULT put_FreeMediaBlocks(int32 newVal) mut => VT.put_FreeMediaBlocks(ref this, newVal);
			public HRESULT SetMaxMediaBlocksFromDevice(ref IDiscRecorder2 discRecorder) mut => VT.SetMaxMediaBlocksFromDevice(ref this, ref discRecorder);
			public HRESULT get_UsedBlocks(out int32 pVal) mut => VT.get_UsedBlocks(ref this, out pVal);
			public HRESULT get_VolumeName(BSTR* pVal) mut => VT.get_VolumeName(ref this, pVal);
			public HRESULT put_VolumeName(BSTR newVal) mut => VT.put_VolumeName(ref this, newVal);
			public HRESULT get_ImportedVolumeName(BSTR* pVal) mut => VT.get_ImportedVolumeName(ref this, pVal);
			public HRESULT get_BootImageOptions(IBootOptions** pVal) mut => VT.get_BootImageOptions(ref this, pVal);
			public HRESULT put_BootImageOptions(ref IBootOptions newVal) mut => VT.put_BootImageOptions(ref this, ref newVal);
			public HRESULT get_FileCount(out int32 pVal) mut => VT.get_FileCount(ref this, out pVal);
			public HRESULT get_DirectoryCount(out int32 pVal) mut => VT.get_DirectoryCount(ref this, out pVal);
			public HRESULT get_WorkingDirectory(BSTR* pVal) mut => VT.get_WorkingDirectory(ref this, pVal);
			public HRESULT put_WorkingDirectory(BSTR newVal) mut => VT.put_WorkingDirectory(ref this, newVal);
			public HRESULT get_ChangePoint(out int32 pVal) mut => VT.get_ChangePoint(ref this, out pVal);
			public HRESULT get_StrictFileSystemCompliance(out int16 pVal) mut => VT.get_StrictFileSystemCompliance(ref this, out pVal);
			public HRESULT put_StrictFileSystemCompliance(int16 newVal) mut => VT.put_StrictFileSystemCompliance(ref this, newVal);
			public HRESULT get_UseRestrictedCharacterSet(out int16 pVal) mut => VT.get_UseRestrictedCharacterSet(ref this, out pVal);
			public HRESULT put_UseRestrictedCharacterSet(int16 newVal) mut => VT.put_UseRestrictedCharacterSet(ref this, newVal);
			public HRESULT get_FileSystemsToCreate(out FsiFileSystems pVal) mut => VT.get_FileSystemsToCreate(ref this, out pVal);
			public HRESULT put_FileSystemsToCreate(FsiFileSystems newVal) mut => VT.put_FileSystemsToCreate(ref this, newVal);
			public HRESULT get_FileSystemsSupported(out FsiFileSystems pVal) mut => VT.get_FileSystemsSupported(ref this, out pVal);
			public HRESULT put_UDFRevision(int32 newVal) mut => VT.put_UDFRevision(ref this, newVal);
			public HRESULT get_UDFRevision(out int32 pVal) mut => VT.get_UDFRevision(ref this, out pVal);
			public HRESULT get_UDFRevisionsSupported(SAFEARRAY** pVal) mut => VT.get_UDFRevisionsSupported(ref this, pVal);
			public HRESULT ChooseImageDefaults(ref IDiscRecorder2 discRecorder) mut => VT.ChooseImageDefaults(ref this, ref discRecorder);
			public HRESULT ChooseImageDefaultsForMediaType(IMAPI_MEDIA_PHYSICAL_TYPE value) mut => VT.ChooseImageDefaultsForMediaType(ref this, value);
			public HRESULT put_ISO9660InterchangeLevel(int32 newVal) mut => VT.put_ISO9660InterchangeLevel(ref this, newVal);
			public HRESULT get_ISO9660InterchangeLevel(out int32 pVal) mut => VT.get_ISO9660InterchangeLevel(ref this, out pVal);
			public HRESULT get_ISO9660InterchangeLevelsSupported(SAFEARRAY** pVal) mut => VT.get_ISO9660InterchangeLevelsSupported(ref this, pVal);
			public HRESULT CreateResultImage(IFileSystemImageResult** resultStream) mut => VT.CreateResultImage(ref this, resultStream);
			public HRESULT Exists(BSTR fullPath, out FsiItemType itemType) mut => VT.Exists(ref this, fullPath, out itemType);
			public HRESULT CalculateDiscIdentifier(BSTR* discIdentifier) mut => VT.CalculateDiscIdentifier(ref this, discIdentifier);
			public HRESULT IdentifyFileSystemsOnDisc(ref IDiscRecorder2 discRecorder, out FsiFileSystems fileSystems) mut => VT.IdentifyFileSystemsOnDisc(ref this, ref discRecorder, out fileSystems);
			public HRESULT GetDefaultFileSystemForImport(FsiFileSystems fileSystems, out FsiFileSystems importDefault) mut => VT.GetDefaultFileSystemForImport(ref this, fileSystems, out importDefault);
			public HRESULT ImportFileSystem(out FsiFileSystems importedFileSystem) mut => VT.ImportFileSystem(ref this, out importedFileSystem);
			public HRESULT ImportSpecificFileSystem(FsiFileSystems fileSystemToUse) mut => VT.ImportSpecificFileSystem(ref this, fileSystemToUse);
			public HRESULT RollbackToChangePoint(int32 changePoint) mut => VT.RollbackToChangePoint(ref this, changePoint);
			public HRESULT LockInChangePoint() mut => VT.LockInChangePoint(ref this);
			public HRESULT CreateDirectoryItem(BSTR name, IFsiDirectoryItem** newItem) mut => VT.CreateDirectoryItem(ref this, name, newItem);
			public HRESULT CreateFileItem(BSTR name, IFsiFileItem** newItem) mut => VT.CreateFileItem(ref this, name, newItem);
			public HRESULT get_VolumeNameUDF(BSTR* pVal) mut => VT.get_VolumeNameUDF(ref this, pVal);
			public HRESULT get_VolumeNameJoliet(BSTR* pVal) mut => VT.get_VolumeNameJoliet(ref this, pVal);
			public HRESULT get_VolumeNameISO9660(BSTR* pVal) mut => VT.get_VolumeNameISO9660(ref this, pVal);
			public HRESULT get_StageFiles(out int16 pVal) mut => VT.get_StageFiles(ref this, out pVal);
			public HRESULT put_StageFiles(int16 newVal) mut => VT.put_StageFiles(ref this, newVal);
			public HRESULT get_MultisessionInterfaces(SAFEARRAY** pVal) mut => VT.get_MultisessionInterfaces(ref this, pVal);
			public HRESULT put_MultisessionInterfaces(ref SAFEARRAY newVal) mut => VT.put_MultisessionInterfaces(ref this, ref newVal);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, IFsiDirectoryItem** pVal) get_Root;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_SessionStartBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int32 newVal) put_SessionStartBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_FreeMediaBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int32 newVal) put_FreeMediaBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, ref IDiscRecorder2 discRecorder) SetMaxMediaBlocksFromDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_UsedBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR newVal) put_VolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_ImportedVolumeName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, IBootOptions** pVal) get_BootImageOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, ref IBootOptions newVal) put_BootImageOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_FileCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_DirectoryCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_WorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR newVal) put_WorkingDirectory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_ChangePoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int16 pVal) get_StrictFileSystemCompliance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int16 newVal) put_StrictFileSystemCompliance;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int16 pVal) get_UseRestrictedCharacterSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int16 newVal) put_UseRestrictedCharacterSet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out FsiFileSystems pVal) get_FileSystemsToCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, FsiFileSystems newVal) put_FileSystemsToCreate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out FsiFileSystems pVal) get_FileSystemsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int32 newVal) put_UDFRevision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_UDFRevision;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, SAFEARRAY** pVal) get_UDFRevisionsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, ref IDiscRecorder2 discRecorder) ChooseImageDefaults;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, IMAPI_MEDIA_PHYSICAL_TYPE value) ChooseImageDefaultsForMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int32 newVal) put_ISO9660InterchangeLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int32 pVal) get_ISO9660InterchangeLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, SAFEARRAY** pVal) get_ISO9660InterchangeLevelsSupported;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, IFileSystemImageResult** resultStream) CreateResultImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR fullPath, out FsiItemType itemType) Exists;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* discIdentifier) CalculateDiscIdentifier;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, ref IDiscRecorder2 discRecorder, out FsiFileSystems fileSystems) IdentifyFileSystemsOnDisc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, FsiFileSystems fileSystems, out FsiFileSystems importDefault) GetDefaultFileSystemForImport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out FsiFileSystems importedFileSystem) ImportFileSystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, FsiFileSystems fileSystemToUse) ImportSpecificFileSystem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int32 changePoint) RollbackToChangePoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self) LockInChangePoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR name, IFsiDirectoryItem** newItem) CreateDirectoryItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR name, IFsiFileItem** newItem) CreateFileItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_VolumeNameUDF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_VolumeNameJoliet;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, BSTR* pVal) get_VolumeNameISO9660;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, out int16 pVal) get_StageFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, int16 newVal) put_StageFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, SAFEARRAY** pVal) get_MultisessionInterfaces;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage self, ref SAFEARRAY newVal) put_MultisessionInterfaces;
			}
		}
		[CRepr]
		public struct IFileSystemImage2 : IFileSystemImage
		{
			public const new Guid IID = .(0xd7644b2c, 0x1537, 0x4767, 0xb6, 0x2f, 0xf1, 0x38, 0x7b, 0x02, 0xdd, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_BootImageOptionsArray(SAFEARRAY** pVal) mut => VT.get_BootImageOptionsArray(ref this, pVal);
			public HRESULT put_BootImageOptionsArray(ref SAFEARRAY newVal) mut => VT.put_BootImageOptionsArray(ref this, ref newVal);

			[CRepr]
			public struct VTable : IFileSystemImage.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage2 self, SAFEARRAY** pVal) get_BootImageOptionsArray;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage2 self, ref SAFEARRAY newVal) put_BootImageOptionsArray;
			}
		}
		[CRepr]
		public struct IFileSystemImage3 : IFileSystemImage2
		{
			public const new Guid IID = .(0x7cff842c, 0x7e97, 0x4807, 0x83, 0x04, 0x91, 0x0d, 0xd8, 0xf7, 0xc0, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CreateRedundantUdfMetadataFiles(out int16 pVal) mut => VT.get_CreateRedundantUdfMetadataFiles(ref this, out pVal);
			public HRESULT put_CreateRedundantUdfMetadataFiles(int16 newVal) mut => VT.put_CreateRedundantUdfMetadataFiles(ref this, newVal);
			public HRESULT ProbeSpecificFileSystem(FsiFileSystems fileSystemToProbe, out int16 isAppendable) mut => VT.ProbeSpecificFileSystem(ref this, fileSystemToProbe, out isAppendable);

			[CRepr]
			public struct VTable : IFileSystemImage2.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage3 self, out int16 pVal) get_CreateRedundantUdfMetadataFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage3 self, int16 newVal) put_CreateRedundantUdfMetadataFiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemImage3 self, FsiFileSystems fileSystemToProbe, out int16 isAppendable) ProbeSpecificFileSystem;
			}
		}
		[CRepr]
		public struct DFileSystemImageEvents : IDispatch
		{
			public const new Guid IID = .(0x2c941fdf, 0x975b, 0x59be, 0xa9, 0x60, 0x9a, 0x2a, 0x26, 0x28, 0x53, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(ref IDispatch object, BSTR currentFile, int32 copiedSectors, int32 totalSectors) mut => VT.Update(ref this, ref object, currentFile, copiedSectors, totalSectors);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DFileSystemImageEvents self, ref IDispatch object, BSTR currentFile, int32 copiedSectors, int32 totalSectors) Update;
			}
		}
		[CRepr]
		public struct DFileSystemImageImportEvents : IDispatch
		{
			public const new Guid IID = .(0xd25c30f9, 0x4087, 0x4366, 0x9e, 0x24, 0xe5, 0x5b, 0xe2, 0x86, 0x42, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateImport(ref IDispatch object, FsiFileSystems fileSystem, BSTR currentItem, int32 importedDirectoryItems, int32 totalDirectoryItems, int32 importedFileItems, int32 totalFileItems) mut => VT.UpdateImport(ref this, ref object, fileSystem, currentItem, importedDirectoryItems, totalDirectoryItems, importedFileItems, totalFileItems);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref DFileSystemImageImportEvents self, ref IDispatch object, FsiFileSystems fileSystem, BSTR currentItem, int32 importedDirectoryItems, int32 totalDirectoryItems, int32 importedFileItems, int32 totalFileItems) UpdateImport;
			}
		}
		[CRepr]
		public struct IIsoImageManager : IDispatch
		{
			public const new Guid IID = .(0x6ca38be5, 0xfbbb, 0x4800, 0x95, 0xa1, 0xa4, 0x38, 0x86, 0x5e, 0xb0, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pVal) mut => VT.get_Path(ref this, pVal);
			public HRESULT get_Stream(out IStream* data) mut => VT.get_Stream(ref this, out data);
			public HRESULT SetPath(BSTR Val) mut => VT.SetPath(ref this, Val);
			public HRESULT SetStream(ref IStream data) mut => VT.SetStream(ref this, ref data);
			public HRESULT Validate() mut => VT.Validate(ref this);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsoImageManager self, BSTR* pVal) get_Path;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsoImageManager self, out IStream* data) get_Stream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsoImageManager self, BSTR Val) SetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsoImageManager self, ref IStream data) SetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IIsoImageManager self) Validate;
			}
		}
		[CRepr]
		public struct IDiscRecorder : IUnknown
		{
			public const new Guid IID = .(0x85ac9776, 0xca88, 0x4cf2, 0x89, 0x4e, 0x09, 0x59, 0x8c, 0x07, 0x8a, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(uint8* pbyUniqueID, uint32 nulIDSize, uint32 nulDriveNumber) mut => VT.Init(ref this, pbyUniqueID, nulIDSize, nulDriveNumber);
			public HRESULT GetRecorderGUID(uint8* pbyUniqueID, uint32 ulBufferSize, out uint32 pulReturnSizeRequired) mut => VT.GetRecorderGUID(ref this, pbyUniqueID, ulBufferSize, out pulReturnSizeRequired);
			public HRESULT GetRecorderType(out RECORDER_TYPES fTypeCode) mut => VT.GetRecorderType(ref this, out fTypeCode);
			public HRESULT GetDisplayNames(BSTR* pbstrVendorID, BSTR* pbstrProductID, BSTR* pbstrRevision) mut => VT.GetDisplayNames(ref this, pbstrVendorID, pbstrProductID, pbstrRevision);
			public HRESULT GetBasePnPID(BSTR* pbstrBasePnPID) mut => VT.GetBasePnPID(ref this, pbstrBasePnPID);
			public HRESULT GetPath(BSTR* pbstrPath) mut => VT.GetPath(ref this, pbstrPath);
			public HRESULT GetRecorderProperties(IPropertyStorage** ppPropStg) mut => VT.GetRecorderProperties(ref this, ppPropStg);
			public HRESULT SetRecorderProperties(IPropertyStorage* pPropStg) mut => VT.SetRecorderProperties(ref this, pPropStg);
			public HRESULT GetRecorderState(out DISC_RECORDER_STATE_FLAGS pulDevStateFlags) mut => VT.GetRecorderState(ref this, out pulDevStateFlags);
			public HRESULT OpenExclusive() mut => VT.OpenExclusive(ref this);
			public HRESULT QueryMediaType(out MEDIA_TYPES fMediaType, out MEDIA_FLAGS fMediaFlags) mut => VT.QueryMediaType(ref this, out fMediaType, out fMediaFlags);
			public HRESULT QueryMediaInfo(out uint8 pbSessions, out uint8 pbLastTrack, out uint32 ulStartAddress, out uint32 ulNextWritable, out uint32 ulFreeBlocks) mut => VT.QueryMediaInfo(ref this, out pbSessions, out pbLastTrack, out ulStartAddress, out ulNextWritable, out ulFreeBlocks);
			public HRESULT Eject() mut => VT.Eject(ref this);
			public HRESULT Erase(uint8 bFullErase) mut => VT.Erase(ref this, bFullErase);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, uint8* pbyUniqueID, uint32 nulIDSize, uint32 nulDriveNumber) Init;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, uint8* pbyUniqueID, uint32 ulBufferSize, out uint32 pulReturnSizeRequired) GetRecorderGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, out RECORDER_TYPES fTypeCode) GetRecorderType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, BSTR* pbstrVendorID, BSTR* pbstrProductID, BSTR* pbstrRevision) GetDisplayNames;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, BSTR* pbstrBasePnPID) GetBasePnPID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, BSTR* pbstrPath) GetPath;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, IPropertyStorage** ppPropStg) GetRecorderProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, IPropertyStorage* pPropStg) SetRecorderProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, out DISC_RECORDER_STATE_FLAGS pulDevStateFlags) GetRecorderState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self) OpenExclusive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, out MEDIA_TYPES fMediaType, out MEDIA_FLAGS fMediaFlags) QueryMediaType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, out uint8 pbSessions, out uint8 pbLastTrack, out uint32 ulStartAddress, out uint32 ulNextWritable, out uint32 ulFreeBlocks) QueryMediaInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self) Eject;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self, uint8 bFullErase) Erase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscRecorder self) Close;
			}
		}
		[CRepr]
		public struct IEnumDiscRecorders : IUnknown
		{
			public const new Guid IID = .(0x9b1921e1, 0x54ac, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cRecorders, IDiscRecorder** ppRecorder, out uint32 pcFetched) mut => VT.Next(ref this, cRecorders, ppRecorder, out pcFetched);
			public HRESULT Skip(uint32 cRecorders) mut => VT.Skip(ref this, cRecorders);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumDiscRecorders** ppEnum) mut => VT.Clone(ref this, ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscRecorders self, uint32 cRecorders, IDiscRecorder** ppRecorder, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscRecorders self, uint32 cRecorders) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscRecorders self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscRecorders self, IEnumDiscRecorders** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IEnumDiscMasterFormats : IUnknown
		{
			public const new Guid IID = .(0xddf445e1, 0x54ba, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cFormats, Guid* lpiidFormatID, out uint32 pcFetched) mut => VT.Next(ref this, cFormats, lpiidFormatID, out pcFetched);
			public HRESULT Skip(uint32 cFormats) mut => VT.Skip(ref this, cFormats);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(IEnumDiscMasterFormats** ppEnum) mut => VT.Clone(ref this, ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscMasterFormats self, uint32 cFormats, Guid* lpiidFormatID, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscMasterFormats self, uint32 cFormats) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscMasterFormats self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumDiscMasterFormats self, IEnumDiscMasterFormats** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IRedbookDiscMaster : IUnknown
		{
			public const new Guid IID = .(0xe3bc42cd, 0x4e5c, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTotalAudioTracks(out int32 pnTracks) mut => VT.GetTotalAudioTracks(ref this, out pnTracks);
			public HRESULT GetTotalAudioBlocks(out int32 pnBlocks) mut => VT.GetTotalAudioBlocks(ref this, out pnBlocks);
			public HRESULT GetUsedAudioBlocks(out int32 pnBlocks) mut => VT.GetUsedAudioBlocks(ref this, out pnBlocks);
			public HRESULT GetAvailableAudioTrackBlocks(out int32 pnBlocks) mut => VT.GetAvailableAudioTrackBlocks(ref this, out pnBlocks);
			public HRESULT GetAudioBlockSize(out int32 pnBlockBytes) mut => VT.GetAudioBlockSize(ref this, out pnBlockBytes);
			public HRESULT CreateAudioTrack(int32 nBlocks) mut => VT.CreateAudioTrack(ref this, nBlocks);
			public HRESULT AddAudioTrackBlocks(uint8* pby, int32 cb) mut => VT.AddAudioTrackBlocks(ref this, pby, cb);
			public HRESULT CloseAudioTrack() mut => VT.CloseAudioTrack(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, out int32 pnTracks) GetTotalAudioTracks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, out int32 pnBlocks) GetTotalAudioBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, out int32 pnBlocks) GetUsedAudioBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, out int32 pnBlocks) GetAvailableAudioTrackBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, out int32 pnBlockBytes) GetAudioBlockSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, int32 nBlocks) CreateAudioTrack;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self, uint8* pby, int32 cb) AddAudioTrackBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRedbookDiscMaster self) CloseAudioTrack;
			}
		}
		[CRepr]
		public struct IJolietDiscMaster : IUnknown
		{
			public const new Guid IID = .(0xe3bc42ce, 0x4e5c, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTotalDataBlocks(out int32 pnBlocks) mut => VT.GetTotalDataBlocks(ref this, out pnBlocks);
			public HRESULT GetUsedDataBlocks(out int32 pnBlocks) mut => VT.GetUsedDataBlocks(ref this, out pnBlocks);
			public HRESULT GetDataBlockSize(out int32 pnBlockBytes) mut => VT.GetDataBlockSize(ref this, out pnBlockBytes);
			public HRESULT AddData(IStorage* pStorage, int32 lFileOverwrite) mut => VT.AddData(ref this, pStorage, lFileOverwrite);
			public HRESULT GetJolietProperties(IPropertyStorage** ppPropStg) mut => VT.GetJolietProperties(ref this, ppPropStg);
			public HRESULT SetJolietProperties(IPropertyStorage* pPropStg) mut => VT.SetJolietProperties(ref this, pPropStg);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, out int32 pnBlocks) GetTotalDataBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, out int32 pnBlocks) GetUsedDataBlocks;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, out int32 pnBlockBytes) GetDataBlockSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, IStorage* pStorage, int32 lFileOverwrite) AddData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, IPropertyStorage** ppPropStg) GetJolietProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IJolietDiscMaster self, IPropertyStorage* pPropStg) SetJolietProperties;
			}
		}
		[CRepr]
		public struct IDiscMasterProgressEvents : IUnknown
		{
			public const new Guid IID = .(0xec9e51c1, 0x4e5d, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryCancel(out uint8 pbCancel) mut => VT.QueryCancel(ref this, out pbCancel);
			public HRESULT NotifyPnPActivity() mut => VT.NotifyPnPActivity(ref this);
			public HRESULT NotifyAddProgress(int32 nCompletedSteps, int32 nTotalSteps) mut => VT.NotifyAddProgress(ref this, nCompletedSteps, nTotalSteps);
			public HRESULT NotifyBlockProgress(int32 nCompleted, int32 nTotal) mut => VT.NotifyBlockProgress(ref this, nCompleted, nTotal);
			public HRESULT NotifyTrackProgress(int32 nCurrentTrack, int32 nTotalTracks) mut => VT.NotifyTrackProgress(ref this, nCurrentTrack, nTotalTracks);
			public HRESULT NotifyPreparingBurn(int32 nEstimatedSeconds) mut => VT.NotifyPreparingBurn(ref this, nEstimatedSeconds);
			public HRESULT NotifyClosingDisc(int32 nEstimatedSeconds) mut => VT.NotifyClosingDisc(ref this, nEstimatedSeconds);
			public HRESULT NotifyBurnComplete(HRESULT status) mut => VT.NotifyBurnComplete(ref this, status);
			public HRESULT NotifyEraseComplete(HRESULT status) mut => VT.NotifyEraseComplete(ref this, status);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, out uint8 pbCancel) QueryCancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self) NotifyPnPActivity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, int32 nCompletedSteps, int32 nTotalSteps) NotifyAddProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, int32 nCompleted, int32 nTotal) NotifyBlockProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, int32 nCurrentTrack, int32 nTotalTracks) NotifyTrackProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, int32 nEstimatedSeconds) NotifyPreparingBurn;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, int32 nEstimatedSeconds) NotifyClosingDisc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, HRESULT status) NotifyBurnComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMasterProgressEvents self, HRESULT status) NotifyEraseComplete;
			}
		}
		[CRepr]
		public struct IDiscMaster : IUnknown
		{
			public const new Guid IID = .(0x520cca62, 0x51a5, 0x11d3, 0x91, 0x44, 0x00, 0x10, 0x4b, 0xa1, 0x1c, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open() mut => VT.Open(ref this);
			public HRESULT EnumDiscMasterFormats(IEnumDiscMasterFormats** ppEnum) mut => VT.EnumDiscMasterFormats(ref this, ppEnum);
			public HRESULT GetActiveDiscMasterFormat(out Guid lpiid) mut => VT.GetActiveDiscMasterFormat(ref this, out lpiid);
			public HRESULT SetActiveDiscMasterFormat(in Guid riid, void** ppUnk) mut => VT.SetActiveDiscMasterFormat(ref this, riid, ppUnk);
			public HRESULT EnumDiscRecorders(IEnumDiscRecorders** ppEnum) mut => VT.EnumDiscRecorders(ref this, ppEnum);
			public HRESULT GetActiveDiscRecorder(IDiscRecorder** ppRecorder) mut => VT.GetActiveDiscRecorder(ref this, ppRecorder);
			public HRESULT SetActiveDiscRecorder(IDiscRecorder* pRecorder) mut => VT.SetActiveDiscRecorder(ref this, pRecorder);
			public HRESULT ClearFormatContent() mut => VT.ClearFormatContent(ref this);
			public HRESULT ProgressAdvise(IDiscMasterProgressEvents* pEvents, out uint pvCookie) mut => VT.ProgressAdvise(ref this, pEvents, out pvCookie);
			public HRESULT ProgressUnadvise(uint vCookie) mut => VT.ProgressUnadvise(ref this, vCookie);
			public HRESULT RecordDisc(uint8 bSimulate, uint8 bEjectAfterBurn) mut => VT.RecordDisc(ref this, bSimulate, bEjectAfterBurn);
			public HRESULT Close() mut => VT.Close(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, IEnumDiscMasterFormats** ppEnum) EnumDiscMasterFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, out Guid lpiid) GetActiveDiscMasterFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, in Guid riid, void** ppUnk) SetActiveDiscMasterFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, IEnumDiscRecorders** ppEnum) EnumDiscRecorders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, IDiscRecorder** ppRecorder) GetActiveDiscRecorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, IDiscRecorder* pRecorder) SetActiveDiscRecorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self) ClearFormatContent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, IDiscMasterProgressEvents* pEvents, out uint pvCookie) ProgressAdvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, uint vCookie) ProgressUnadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self, uint8 bSimulate, uint8 bEjectAfterBurn) RecordDisc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDiscMaster self) Close;
			}
		}
		
		// --- Functions ---
		
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenIMsgSession(ref IMalloc lpMalloc, uint32 ulFlags, out _MSGSESS* lppMsgSess);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void CloseIMsgSession(out _MSGSESS lpMsgSess);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 OpenIMsgOnIStg(out _MSGSESS lpMsgSess, LPALLOCATEBUFFER lpAllocateBuffer, LPALLOCATEMORE lpAllocateMore, LPFREEBUFFER lpFreeBuffer, ref IMalloc lpMalloc, void* lpMapiSup, ref IStorage lpStg, out MSGCALLRELEASE lpfMsgCallRelease, uint32 ulCallerData, uint32 ulFlags, out IMessage* lppMsg);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAttribIMsgOnIStg(void* lpObject, out SPropTagArray lpPropTagArray, out SPropAttrArray* lppPropAttrArray);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetAttribIMsgOnIStg(void* lpObject, out SPropTagArray lpPropTags, out SPropAttrArray lpPropAttrs, out SPropProblemArray* lppPropProblems);
		[Import("mapi32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 MapStorageSCode(int32 StgSCode);
	}
}
