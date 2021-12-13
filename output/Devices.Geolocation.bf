using System;

// namespace Devices.Geolocation
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 GNSS_DRIVER_VERSION_1 = 1;
		public const uint32 GNSS_DRIVER_VERSION_2 = 2;
		public const uint32 GNSS_DRIVER_VERSION_3 = 3;
		public const uint32 GNSS_DRIVER_VERSION_4 = 4;
		public const uint32 GNSS_DRIVER_VERSION_5 = 5;
		public const uint32 GNSS_DRIVER_VERSION_6 = 6;
		public const uint32 IOCTL_GNSS_SEND_PLATFORM_CAPABILITY = 2228228;
		public const uint32 IOCTL_GNSS_GET_DEVICE_CAPABILITY = 2228232;
		public const uint32 IOCTL_GNSS_SEND_DRIVERCOMMAND = 2228236;
		public const uint32 IOCTL_GNSS_START_FIXSESSION = 2228288;
		public const uint32 IOCTL_GNSS_MODIFY_FIXSESSION = 2228292;
		public const uint32 IOCTL_GNSS_STOP_FIXSESSION = 2228296;
		public const uint32 IOCTL_GNSS_GET_FIXDATA = 2228300;
		public const uint32 IOCTL_GNSS_INJECT_AGNSS = 2228352;
		public const uint32 IOCTL_GNSS_LISTEN_AGNSS = 2228416;
		public const uint32 IOCTL_GNSS_LISTEN_ERROR = 2228420;
		public const uint32 IOCTL_GNSS_LISTEN_NI = 2228480;
		public const uint32 IOCTL_GNSS_SET_SUPL_HSLP = 2228484;
		public const uint32 IOCTL_GNSS_CONFIG_SUPL_CERT = 2228488;
		public const uint32 IOCTL_GNSS_RESPOND_NI = 2228492;
		public const uint32 IOCTL_GNSS_EXECUTE_CWTEST = 2228496;
		public const uint32 IOCTL_GNSS_EXECUTE_SELFTEST = 2228500;
		public const uint32 IOCTL_GNSS_GET_CHIPSETINFO = 2228504;
		public const uint32 IOCTL_GNSS_LISTEN_NMEA = 2228508;
		public const uint32 IOCTL_GNSS_SET_V2UPL_CONFIG = 2228512;
		public const uint32 IOCTL_GNSS_CREATE_GEOFENCE = 2228544;
		public const uint32 IOCTL_GNSS_DELETE_GEOFENCE = 2228548;
		public const uint32 IOCTL_GNSS_LISTEN_GEOFENCE_ALERT = 2228552;
		public const uint32 IOCTL_GNSS_LISTEN_GEOFENCES_TRACKINGSTATUS = 2228556;
		public const uint32 IOCTL_GNSS_LISTEN_DRIVER_REQUEST = 2228608;
		public const uint32 IOCTL_GNSS_START_BREADCRUMBING = 2228672;
		public const uint32 IOCTL_GNSS_STOP_BREADCRUMBING = 2228676;
		public const uint32 IOCTL_GNSS_LISTEN_BREADCRUMBING_ALERT = 2228680;
		public const uint32 IOCTL_GNSS_POP_BREADCRUMBS = 2228684;
		public const uint32 GNSS_AGNSSFORMAT_XTRA1 = 1;
		public const uint32 GNSS_AGNSSFORMAT_XTRA2 = 2;
		public const uint32 GNSS_AGNSSFORMAT_LTO = 4;
		public const uint32 GNSS_AGNSSFORMAT_XTRA3 = 8;
		public const uint32 GNSS_AGNSSFORMAT_XTRA3_1 = 16;
		public const uint32 GNSS_AGNSSFORMAT_XTRA3_2 = 32;
		public const uint32 GNSS_AGNSSFORMAT_XTRA_INT = 64;
		public const uint32 MAX_SERVER_URL_NAME = 260;
		public const uint32 MIN_GEOFENCES_REQUIRED = 100;
		public const uint32 BREADCRUMBING_UNSUPPORTED = 0;
		public const uint32 BREADCRUMBING_VERSION_1 = 1;
		public const uint32 MIN_BREADCRUMBS_SUPPORTED = 120;
		public const uint32 GNSS_SATELLITE_ANY = 0;
		public const uint32 GNSS_SATELLITE_GPS = 1;
		public const uint32 GNSS_SATELLITE_GLONASS = 2;
		public const uint32 GNSS_SATELLITE_BEIDOU = 4;
		public const uint32 GNSS_SATELLITE_GALILEO = 8;
		public const uint32 GNSS_OPERMODE_ANY = 0;
		public const uint32 GNSS_OPERMODE_MSA = 1;
		public const uint32 GNSS_OPERMODE_MSB = 2;
		public const uint32 GNSS_OPERMODE_MSS = 4;
		public const uint32 GNSS_OPERMODE_CELLID = 8;
		public const uint32 GNSS_OPERMODE_AFLT = 16;
		public const uint32 GNSS_OPERMODE_OTDOA = 32;
		public const uint32 GNSS_NMEALOGGING_NONE = 0;
		public const uint32 GNSS_NMEALOGGING_ALL = 255;
		public const uint32 GNSS_FIXDETAIL_BASIC = 1;
		public const uint32 GNSS_FIXDETAIL_ACCURACY = 2;
		public const uint32 GNSS_FIXDETAIL_SATELLITE = 4;
		public const uint32 GNSS_MAXSATELLITE = 64;
		public const uint32 GNSS_GEOFENCESUPPORT_SUPPORTED = 1;
		public const uint32 GNSS_GEOFENCESUPPORT_CIRCLE = 2;
		public const uint32 LOCATION_API_VERSION = 1;
		public const Guid GUID_DEVINTERFACE_GNSS = .(0x3336e5e4, 0x018a, 0x4669, 0x84, 0xc5, 0xbd, 0x05, 0xf3, 0xbd, 0x36, 0x8b);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum LOCATION_REPORT_STATUS : int32
		{
			REPORT_NOT_SUPPORTED = 0,
			REPORT_ERROR = 1,
			REPORT_ACCESS_DENIED = 2,
			REPORT_INITIALIZING = 3,
			REPORT_RUNNING = 4,
		}
		[AllowDuplicates]
		public enum GNSS_DRIVERCOMMAND_TYPE : int32
		{
			GNSS_SetLocationServiceEnabled = 1,
			GNSS_SetLocationNIRequestAllowed = 2,
			GNSS_ForceSatelliteSystem = 3,
			GNSS_ForceOperationMode = 4,
			GNSS_ResetEngine = 9,
			GNSS_ClearAgnssData = 10,
			GNSS_SetSuplVersion = 12,
			GNSS_SetNMEALogging = 13,
			GNSS_SetUplServerAccessInterval = 14,
			GNSS_SetNiTimeoutInterval = 15,
			GNSS_ResetGeofencesTracking = 16,
			GNSS_SetSuplVersion2 = 17,
			GNSS_CustomCommand = 256,
		}
		[AllowDuplicates]
		public enum GNSS_FIXSESSIONTYPE : int32
		{
			GNSS_FixSession_SingleShot = 1,
			GNSS_FixSession_DistanceTracking = 2,
			GNSS_FixSession_ContinuousTracking = 3,
			GNSS_FixSession_LKG = 4,
		}
		[AllowDuplicates]
		public enum GNSS_GEOREGIONTYPE : int32
		{
			GNSS_GeoRegion_Circle = 1,
		}
		[AllowDuplicates]
		public enum GNSS_GEOFENCE_STATE : int32
		{
			GNSS_GeofenceState_Unknown = 0,
			GNSS_GeofenceState_Entered = 1,
			GNSS_GeofenceState_Exited = 2,
		}
		[AllowDuplicates]
		public enum GNSS_EVENT_TYPE : int32
		{
			GNSS_Event_FixAvailable = 1,
			GNSS_Event_RequireAgnss = 2,
			GNSS_Event_Error = 3,
			GNSS_Event_NiRequest = 12,
			GNSS_Event_NmeaData = 13,
			GNSS_Event_GeofenceAlertData = 14,
			GNSS_Event_GeofencesTrackingStatus = 15,
			GNSS_Event_DriverRequest = 16,
			GNSS_Event_BreadcrumbAlertEvent = 17,
			GNSS_Event_FixAvailable_2 = 18,
			GNSS_Event_Custom = 32768,
		}
		[AllowDuplicates]
		public enum GNSS_AGNSS_REQUEST_TYPE : int32
		{
			GNSS_AGNSS_TimeInjection = 1,
			GNSS_AGNSS_PositionInjection = 2,
			GNSS_AGNSS_BlobInjection = 3,
		}
		[AllowDuplicates]
		public enum GNSS_NI_PLANE_TYPE : int32
		{
			GNSS_NI_SUPL = 1,
			GNSS_NI_CP = 2,
			GNSS_NI_V2UPL = 3,
		}
		[AllowDuplicates]
		public enum GNSS_NI_REQUEST_TYPE : int32
		{
			GNSS_NI_Request_SingleShot = 1,
			GNSS_NI_Request_AreaTrigger = 2,
		}
		[AllowDuplicates]
		public enum GNSS_NI_NOTIFICATION_TYPE : int32
		{
			GNSS_NI_NoNotifyNoVerify = 1,
			GNSS_NI_NotifyOnly = 2,
			GNSS_NI_NotifyVerifyDefaultAllow = 3,
			GNSS_NI_NotifyVerifyDefaultNotAllow = 4,
			GNSS_NI_PrivacyOverride = 5,
		}
		[AllowDuplicates]
		public enum GNSS_DRIVER_REQUEST : int32
		{
			SUPL_CONFIG_DATA = 1,
		}
		[AllowDuplicates]
		public enum GNSS_SUPL_CERT_ACTION : int32
		{
			GNSS_Supl_Cert_Inject = 1,
			GNSS_Supl_Cert_Delete = 2,
			GNSS_Supl_Cert_Purge = 3,
		}
		[AllowDuplicates]
		public enum GNSS_NI_USER_RESPONSE : int32
		{
			GNSS_Ni_UserResponseAccept = 1,
			GNSS_Ni_UserResponseDeny = 2,
			GNSS_Ni_UserResponseTimeout = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct GNSS_SUPL_VERSION
		{
			public uint32 MajorVersion;
			public uint32 MinorVersion;
		}
		[CRepr]
		public struct GNSS_SUPL_VERSION_2
		{
			public uint32 MajorVersion;
			public uint32 MinorVersion;
			public uint32 ServiceIndicator;
		}
		[CRepr]
		public struct GNSS_DEVICE_CAPABILITY
		{
			public uint32 Size;
			public uint32 Version;
			public BOOL SupportMultipleFixSessions;
			public BOOL SupportMultipleAppSessions;
			public BOOL RequireAGnssInjection;
			public uint32 AgnssFormatSupported;
			public uint32 AgnssFormatPreferred;
			public BOOL SupportDistanceTracking;
			public BOOL SupportContinuousTracking;
			public uint32 Reserved1;
			public BOOL Reserved2;
			public BOOL Reserved3;
			public BOOL Reserved4;
			public BOOL Reserved5;
			public uint32 GeofencingSupport;
			public BOOL Reserved6;
			public BOOL Reserved7;
			public BOOL SupportCpLocation;
			public BOOL SupportUplV2;
			public BOOL SupportSuplV1;
			public BOOL SupportSuplV2;
			public GNSS_SUPL_VERSION SupportedSuplVersion;
			public uint32 MaxGeofencesSupported;
			public BOOL SupportMultipleSuplRootCert;
			public uint32 GnssBreadCrumbPayloadVersion;
			public uint32 MaxGnssBreadCrumbFixes;
			public uint8[496] Unused;
		}
		[CRepr]
		public struct GNSS_PLATFORM_CAPABILITY
		{
			public uint32 Size;
			public uint32 Version;
			public BOOL SupportAgnssInjection;
			public uint32 AgnssFormatSupported;
			public uint8[516] Unused;
		}
		[CRepr]
		public struct GNSS_DRIVERCOMMAND_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_DRIVERCOMMAND_TYPE CommandType;
			public uint32 Reserved;
			public uint32 CommandDataSize;
			public uint8[512] Unused;
			public uint8[] CommandData;
		}
		[CRepr]
		public struct GNSS_SINGLESHOT_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 ResponseTime;
		}
		[CRepr]
		public struct GNSS_DISTANCETRACKING_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 MovementThreshold;
		}
		[CRepr]
		public struct GNSS_CONTINUOUSTRACKING_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 PreferredInterval;
		}
		[CRepr]
		public struct GNSS_LKGFIX_PARAM
		{
			public uint32 Size;
			public uint32 Version;
		}
		[CRepr]
		public struct GNSS_FIXSESSION_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 FixSessionID;
			public GNSS_FIXSESSIONTYPE SessionType;
			public uint32 HorizontalAccuracy;
			public uint32 HorizontalConfidence;
			public uint32[9] Reserved;
			public uint32 FixLevelOfDetails;
			public _Anonymous_e__Union Anonymous;
			public uint8[256] Unused;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_SINGLESHOT_PARAM SingleShotParam;
				public GNSS_DISTANCETRACKING_PARAM DistanceParam;
				public GNSS_CONTINUOUSTRACKING_PARAM ContinuousParam;
				public GNSS_LKGFIX_PARAM LkgFixParam;
				public uint8[268] UnusedParam;
			}
		}
		[CRepr]
		public struct GNSS_STOPFIXSESSION_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 FixSessionID;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_FIXDATA_BASIC
		{
			public uint32 Size;
			public uint32 Version;
			public double Latitude;
			public double Longitude;
			public double Altitude;
			public double Speed;
			public double Heading;
		}
		[CRepr]
		public struct GNSS_FIXDATA_BASIC_2
		{
			public uint32 Size;
			public uint32 Version;
			public double Latitude;
			public double Longitude;
			public double Altitude;
			public double Speed;
			public double Heading;
			public double AltitudeEllipsoid;
		}
		[CRepr]
		public struct GNSS_FIXDATA_ACCURACY
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 HorizontalAccuracy;
			public uint32 HorizontalErrorMajorAxis;
			public uint32 HorizontalErrorMinorAxis;
			public uint32 HorizontalErrorAngle;
			public uint32 HeadingAccuracy;
			public uint32 AltitudeAccuracy;
			public uint32 SpeedAccuracy;
			public uint32 HorizontalConfidence;
			public uint32 HeadingConfidence;
			public uint32 AltitudeConfidence;
			public uint32 SpeedConfidence;
			public float PositionDilutionOfPrecision;
			public float HorizontalDilutionOfPrecision;
			public float VerticalDilutionOfPrecision;
		}
		[CRepr]
		public struct GNSS_FIXDATA_ACCURACY_2
		{
			public uint32 Size;
			public uint32 Version;
			public double HorizontalAccuracy;
			public double HorizontalErrorMajorAxis;
			public double HorizontalErrorMinorAxis;
			public double HorizontalErrorAngle;
			public double HeadingAccuracy;
			public double AltitudeAccuracy;
			public double SpeedAccuracy;
			public uint32 HorizontalConfidence;
			public uint32 HeadingConfidence;
			public uint32 AltitudeConfidence;
			public uint32 SpeedConfidence;
			public double PositionDilutionOfPrecision;
			public double HorizontalDilutionOfPrecision;
			public double VerticalDilutionOfPrecision;
			public double GeometricDilutionOfPrecision;
			public double TimeDilutionOfPrecision;
		}
		[CRepr]
		public struct GNSS_SATELLITEINFO
		{
			public uint32 SatelliteId;
			public BOOL UsedInPositiong;
			public double Elevation;
			public double Azimuth;
			public double SignalToNoiseRatio;
		}
		[CRepr]
		public struct GNSS_FIXDATA_SATELLITE
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 SatelliteCount;
			public GNSS_SATELLITEINFO[64] SatelliteArray;
		}
		[CRepr]
		public struct GNSS_FIXDATA
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 FixSessionID;
			public FILETIME FixTimeStamp;
			public BOOL IsFinalFix;
			public NTSTATUS FixStatus;
			public uint32 FixLevelOfDetails;
			public GNSS_FIXDATA_BASIC BasicData;
			public GNSS_FIXDATA_ACCURACY AccuracyData;
			public GNSS_FIXDATA_SATELLITE SatelliteData;
		}
		[CRepr]
		public struct GNSS_FIXDATA_2
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 FixSessionID;
			public FILETIME FixTimeStamp;
			public BOOL IsFinalFix;
			public NTSTATUS FixStatus;
			public uint32 FixLevelOfDetails;
			public GNSS_FIXDATA_BASIC_2 BasicData;
			public GNSS_FIXDATA_ACCURACY_2 AccuracyData;
			public GNSS_FIXDATA_SATELLITE SatelliteData;
		}
		[CRepr]
		public struct GNSS_BREADCRUMBING_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 MaximumHorizontalUncertainty;
			public uint32 MinDistanceBetweenFixes;
			public uint32 MaximumErrorTimeoutMs;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_BREADCRUMBING_ALERT_DATA
		{
			public uint32 Size;
			public uint32 Version;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_BREADCRUMB_V1
		{
			public FILETIME FixTimeStamp;
			public double Latitude;
			public double Longitude;
			public uint32 HorizontalAccuracy;
			public uint16 Speed;
			public uint16 SpeedAccuracy;
			public int16 Altitude;
			public uint16 AltitudeAccuracy;
			public int16 Heading;
			public uint8 HeadingAccuracy;
			public uint8 FixSuccess;
		}
		[CRepr]
		public struct GNSS_BREADCRUMB_LIST
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 NumCrumbs;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_BREADCRUMB_V1[50] v1;
			}
		}
		[CRepr]
		public struct GNSS_GEOREGION_CIRCLE
		{
			public double Latitude;
			public double Longitude;
			public double RadiusInMeters;
		}
		[CRepr]
		public struct GNSS_GEOREGION
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_GEOREGIONTYPE GeoRegionType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_GEOREGION_CIRCLE Circle;
				public uint8[512] Unused;
			}
		}
		[CRepr]
		public struct GNSS_GEOFENCE_CREATE_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 AlertTypes;
			public GNSS_GEOFENCE_STATE InitialState;
			public GNSS_GEOREGION Boundary;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_GEOFENCE_CREATE_RESPONSE
		{
			public uint32 Size;
			public uint32 Version;
			public NTSTATUS CreationStatus;
			public uint32 GeofenceID;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_GEOFENCE_DELETE_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 GeofenceID;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_GEOFENCE_ALERT_DATA
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 GeofenceID;
			public GNSS_GEOFENCE_STATE GeofenceState;
			public GNSS_FIXDATA_BASIC FixBasicData;
			public GNSS_FIXDATA_ACCURACY FixAccuracyData;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_GEOFENCES_TRACKINGSTATUS_DATA
		{
			public uint32 Size;
			public uint32 Version;
			public NTSTATUS Status;
			public FILETIME StatusTimeStamp;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_ERRORINFO
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 ErrorCode;
			public BOOL IsRecoverable;
			public char16[256] ErrorDescription;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_NMEA_DATA
		{
			public uint32 Size;
			public uint32 Version;
			public CHAR[256] NmeaSentences;
		}
		[CRepr]
		public struct GNSS_AGNSS_REQUEST_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_AGNSS_REQUEST_TYPE RequestType;
			public uint32 BlobFormat;
		}
		[CRepr]
		public struct GNSS_SUPL_NI_INFO
		{
			public uint32 Size;
			public uint32 Version;
			public char16[260] RequestorId;
			public char16[260] ClientName;
			public CHAR[260] SuplNiUrl;
		}
		[CRepr]
		public struct GNSS_CP_NI_INFO
		{
			public uint32 Size;
			public uint32 Version;
			public char16[260] RequestorId;
			public char16[260] NotificationText;
		}
		[CRepr]
		public struct GNSS_V2UPL_NI_INFO
		{
			public uint32 Size;
			public uint32 Version;
			public char16[260] RequestorId;
		}
		[CRepr]
		public struct GNSS_NI_REQUEST_PARAM
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 RequestId;
			public GNSS_NI_REQUEST_TYPE RequestType;
			public GNSS_NI_NOTIFICATION_TYPE NotificationType;
			public GNSS_NI_PLANE_TYPE RequestPlaneType;
			public _Anonymous_e__Union Anonymous;
			public uint32 ResponseTimeInSec;
			public BOOL EmergencyLocation;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_SUPL_NI_INFO SuplNiInfo;
				public GNSS_CP_NI_INFO CpNiInfo;
				public GNSS_V2UPL_NI_INFO V2UplNiInfo;
			}
		}
		[CRepr]
		public struct GNSS_DRIVER_REQUEST_DATA
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_DRIVER_REQUEST Request;
			public uint32 RequestFlag;
		}
		[CRepr]
		public struct GNSS_EVENT
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_EVENT_TYPE EventType;
			public uint32 EventDataSize;
			public uint8[512] Unused;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_FIXDATA FixData;
				public GNSS_AGNSS_REQUEST_PARAM AgnssRequest;
				public GNSS_NI_REQUEST_PARAM NiRequest;
				public GNSS_ERRORINFO ErrorInformation;
				public GNSS_NMEA_DATA NmeaData;
				public GNSS_GEOFENCE_ALERT_DATA GeofenceAlertData;
				public GNSS_BREADCRUMBING_ALERT_DATA BreadcrumbAlertData;
				public GNSS_GEOFENCES_TRACKINGSTATUS_DATA GeofencesTrackingStatus;
				public GNSS_DRIVER_REQUEST_DATA DriverRequestData;
				public uint8[] CustomData;
			}
		}
		[CRepr]
		public struct GNSS_EVENT_2
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_EVENT_TYPE EventType;
			public uint32 EventDataSize;
			public uint8[512] Unused;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_FIXDATA FixData;
				public GNSS_FIXDATA_2 FixData2;
				public GNSS_AGNSS_REQUEST_PARAM AgnssRequest;
				public GNSS_NI_REQUEST_PARAM NiRequest;
				public GNSS_ERRORINFO ErrorInformation;
				public GNSS_NMEA_DATA NmeaData;
				public GNSS_GEOFENCE_ALERT_DATA GeofenceAlertData;
				public GNSS_BREADCRUMBING_ALERT_DATA BreadcrumbAlertData;
				public GNSS_GEOFENCES_TRACKINGSTATUS_DATA GeofencesTrackingStatus;
				public GNSS_DRIVER_REQUEST_DATA DriverRequestData;
				public uint8[] CustomData;
			}
		}
		[CRepr]
		public struct GNSS_AGNSS_INJECTTIME
		{
			public uint32 Size;
			public uint32 Version;
			public FILETIME UtcTime;
			public uint32 TimeUncertainty;
		}
		[CRepr]
		public struct GNSS_AGNSS_INJECTPOSITION
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 Age;
			public GNSS_FIXDATA_BASIC BasicData;
			public GNSS_FIXDATA_ACCURACY AccuracyData;
		}
		[CRepr]
		public struct GNSS_AGNSS_INJECTBLOB
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 BlobOui;
			public uint32 BlobVersion;
			public uint32 AgnssFormat;
			public uint32 BlobSize;
			public uint8[] BlobData;
		}
		[CRepr]
		public struct GNSS_AGNSS_INJECT
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_AGNSS_REQUEST_TYPE InjectionType;
			public NTSTATUS InjectionStatus;
			public uint32 InjectionDataSize;
			public uint8[512] Unused;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public GNSS_AGNSS_INJECTTIME Time;
				public GNSS_AGNSS_INJECTPOSITION Position;
				public GNSS_AGNSS_INJECTBLOB BlobData;
			}
		}
		[CRepr]
		public struct GNSS_SUPL_HSLP_CONFIG
		{
			public uint32 Size;
			public uint32 Version;
			public CHAR[260] SuplHslp;
			public CHAR[260] SuplHslpFromImsi;
			public uint32 Reserved;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_SUPL_CERT_CONFIG
		{
			public uint32 Size;
			public uint32 Version;
			public GNSS_SUPL_CERT_ACTION CertAction;
			public CHAR[260] SuplCertName;
			public uint32 CertSize;
			public uint8[512] Unused;
			public uint8[] CertData;
		}
		[CRepr]
		public struct GNSS_V2UPL_CONFIG
		{
			public uint32 Size;
			public uint32 Version;
			public CHAR[260] MPC;
			public CHAR[260] PDE;
			public uint8 ApplicationTypeIndicator_MR;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_NI_RESPONSE
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 RequestId;
			public GNSS_NI_USER_RESPONSE UserResponse;
		}
		[CRepr]
		public struct GNSS_CWTESTDATA
		{
			public uint32 Size;
			public uint32 Version;
			public NTSTATUS TestResultStatus;
			public double SignalToNoiseRatio;
			public double Frequency;
			public uint8[512] Unused;
		}
		[CRepr]
		public struct GNSS_SELFTESTCONFIG
		{
			public uint32 Size;
			public uint32 Version;
			public uint32 TestType;
			public uint8[512] Unused;
			public uint32 InBufLen;
			public uint8[] InBuffer;
		}
		[CRepr]
		public struct GNSS_SELFTESTRESULT
		{
			public uint32 Size;
			public uint32 Version;
			public NTSTATUS TestResultStatus;
			public uint32 Result;
			public uint32 PinFailedBitMask;
			public uint8[512] Unused;
			public uint32 OutBufLen;
			public uint8[] OutBuffer;
		}
		[CRepr]
		public struct GNSS_CHIPSETINFO
		{
			public uint32 Size;
			public uint32 Version;
			public char16[25] ManufacturerID;
			public char16[25] HardwareID;
			public char16[20] FirmwareVersion;
			public uint8[512] Unused;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Location = .(0xe5b8e079, 0xee6d, 0x4e33, 0xa4, 0x38, 0xc8, 0x7f, 0x2e, 0x95, 0x92, 0x54);
		public const Guid CLSID_DefaultLocation = .(0x8b7fbfe0, 0x5cd7, 0x494a, 0xaf, 0x8c, 0x28, 0x3a, 0x65, 0x70, 0x75, 0x06);
		public const Guid CLSID_LatLongReport = .(0xed81c073, 0x1f84, 0x4ca8, 0xa1, 0x61, 0x18, 0x3c, 0x77, 0x6b, 0xc6, 0x51);
		public const Guid CLSID_CivicAddressReport = .(0xd39e7bdd, 0x7d05, 0x46b8, 0x87, 0x21, 0x80, 0xcf, 0x03, 0x5f, 0x57, 0xd7);
		public const Guid CLSID_LatLongReportFactory = .(0x9dcc3cc8, 0x8609, 0x4863, 0xba, 0xd4, 0x03, 0x60, 0x1f, 0x4c, 0x65, 0xe8);
		public const Guid CLSID_CivicAddressReportFactory = .(0x2a11f42c, 0x3e81, 0x4ad4, 0x9c, 0xbe, 0x45, 0x57, 0x9d, 0x89, 0x67, 0x1a);
		public const Guid CLSID_DispLatLongReport = .(0x7a7c3277, 0x8f84, 0x4636, 0x95, 0xb2, 0xeb, 0xb5, 0x50, 0x7f, 0xf7, 0x7e);
		public const Guid CLSID_DispCivicAddressReport = .(0x4c596aec, 0x8544, 0x4082, 0xba, 0x9f, 0xeb, 0x0a, 0x7d, 0x8e, 0x65, 0xc6);
		
		// --- COM Interfaces ---
		
		public struct ILocationReport {}
		public struct ILatLongReport {}
		public struct ICivicAddressReport {}
		public struct ILocation {}
		public struct ILocationPower {}
		public struct IDefaultLocation {}
		public struct ILocationEvents {}
		public struct IDispLatLongReport {}
		public struct IDispCivicAddressReport {}
		public struct ILocationReportFactory {}
		public struct ILatLongReportFactory {}
		public struct ICivicAddressReportFactory {}
		public struct _ILatLongReportFactoryEvents {}
		public struct _ICivicAddressReportFactoryEvents {}
		
	}
}
